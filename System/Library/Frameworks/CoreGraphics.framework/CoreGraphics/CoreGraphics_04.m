const char **initialize_skipping_conditional_var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = *(a2 + 132);
    *(a1 + 16) = *(a2 + 148);
    *a1 = v11;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 20) = *(a4 + 88);
  if (a3 && (*(a3 + 39) & 2) != 0)
  {
    result = 0;
  }

  else
  {
    result = *(a4 + 8);
    if (!result)
    {
      if (!*a4)
      {
        _CGHandleAssert("RIPGetDepthForEncoding", 113, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "enc != NULL", "NULL encoding", a6, a7, a8, v15);
      }

      result = CGBlt_depth(*a4);
    }
  }

  *(a1 + 32) = result;
  *(a1 + 40) = vmovn_s64(*(a4 + 16));
  *(a1 + 48) = *(a4 + 32);
  *(a1 + 64) = *(a4 + 48);
  *(a1 + 72) = *(a4 + 56);
  *(a1 + 88) = *(a4 + 64);
  *(a1 + 80) = *(a4 + 52);
  *(a1 + 96) = vextq_s8(*(a4 + 72), *(a4 + 72), 8uLL);
  if (a3)
  {
    v13 = *(a3 + 24);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a4 + 96);
  *(a1 + 112) = v13;
  *(a1 + 116) = v14;
  *(a1 + 120) = a4;
  return result;
}

float64_t ripc_InitializeImage(uint64_t a1, int32x2_t *a2, double *a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, double *a8, double a9, double a10, double a11)
{
  *(a1 + 16) = a3;
  *(a1 + 42) = 0;
  if (a7)
  {
    v11 = *(a3 + 14);
    if (v11 == a5 && (v12 = *(a3 + 15), v12 == a6))
    {
      _D0 = a6;
      v14 = (HIDWORD(*a2->i8) + HIDWORD(*a2));
      v15 = *a2->i8;
      *a1 = *a2->i8;
      a11 = v14 - (*(a7 + 40) + *(a7 + 24) * a6);
      _Q4 = *(a7 + 8);
      __asm { FMLA            D1, D0, V4.D[1] }

      *(a7 + 32) = _D1 - v15;
      *(a7 + 40) = a11;
      v22 = vnegq_f64(_Q4);
      *(a7 + 8) = v22;
      *(a1 + 24) = a7;
      *(a1 + 48) = 0;
      if (a4 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = -1;
      }

      *(a1 + 40) = v23;
    }

    else
    {
      a11 = *a7;
      v24 = *(a7 + 8);
      v26 = *(a7 + 16);
      v25 = *(a7 + 24);
      if (a4 == 1)
      {
        *(a1 + 40) = 0;
      }

      else
      {
        *(a1 + 40) = -1;
        v27 = *(a3 + 10);
        if (v27 != a5)
        {
          v28 = a5 / v27;
          a11 = a11 * v28;
          v24 = v24 * v28;
        }

        v29 = *(a3 + 11);
        if (v29 != a6)
        {
          v30 = a6 / v29;
          v26 = v26 * v30;
          v25 = v25 * v30;
        }
      }

      v31 = *(a3 + 13);
      v32 = *(a3 + 12);
      v33 = v11;
      LODWORD(v12) = *(a3 + 15);
      v34 = v12;
      v35 = *(a7 + 32) + a11 * v32 + v26 * v31;
      v36 = *(a7 + 40) + v24 * v32 + v25 * v31;
      v37 = v35 + a11 * v11;
      v38 = v36 + v24 * v11;
      if (v37 > v35)
      {
        v39 = v35 + a11 * v11;
      }

      else
      {
        v39 = v35;
      }

      if (v37 < v35)
      {
        v39 = v35;
        v35 = v35 + a11 * v11;
      }

      if (v38 > v36)
      {
        v40 = v36 + v24 * v11;
      }

      else
      {
        v40 = v36;
      }

      if (v38 < v36)
      {
        v40 = v36;
        v36 = v36 + v24 * v11;
      }

      v41 = v37 + v26 * v34;
      v42 = v38 + v25 * v34;
      if (v41 > v39)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      if (v41 < v35)
      {
        v35 = v41;
      }

      else
      {
        v39 = v43;
      }

      if (v42 > v40)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      if (v42 >= v36)
      {
        v45 = v44;
      }

      else
      {
        v45 = v40;
      }

      if (v42 >= v36)
      {
        v46 = v36;
      }

      else
      {
        v46 = v42;
      }

      v47 = v41 - a11 * v33;
      v48 = v42 - v24 * v33;
      if (v47 >= v35)
      {
        if (v47 > v39)
        {
          v39 = v47;
        }
      }

      else
      {
        v35 = v47;
      }

      if (v48 >= v46)
      {
        if (v48 > v45)
        {
          v45 = v42 - v24 * v33;
        }
      }

      else
      {
        v46 = v42 - v24 * v33;
      }

      v49 = v35 + v39 - v35;
      v50 = v35 + 0.00390625;
      if (v35 + 0.00390625 <= 1073741820.0)
      {
        v52 = vcvtmd_s64_f64(v50);
        if (v50 >= -1073741820.0)
        {
          v51 = v52;
        }

        else
        {
          v51 = -1073741823;
        }
      }

      else
      {
        v51 = 0x3FFFFFFF;
      }

      v53 = v45 - v46;
      *a1 = v51;
      v54 = v49 + -0.00390625;
      if (v54 <= 1073741820.0)
      {
        v56 = vcvtpd_s64_f64(v54);
        if (v54 >= -1073741820.0)
        {
          v55 = v56;
        }

        else
        {
          v55 = -1073741823;
        }
      }

      else
      {
        v55 = 0x3FFFFFFF;
      }

      *(a1 + 8) = v55 - v51;
      v57 = v46 + v53;
      v58 = v46 + 0.00390625;
      if (v58 <= 1073741820.0)
      {
        v60 = vcvtmd_s64_f64(v58);
        if (v58 >= -1073741820.0)
        {
          v59 = v60;
        }

        else
        {
          v59 = -1073741823;
        }
      }

      else
      {
        v59 = 0x3FFFFFFF;
      }

      v61 = -v24;
      *(a1 + 4) = v59;
      v62 = v57 + -0.00390625;
      if (v57 + -0.00390625 <= 1073741820.0)
      {
        if (v62 >= -1073741820.0)
        {
          v63 = vcvtpd_s64_f64(v62);
        }

        else
        {
          v63 = -1073741823;
        }
      }

      else
      {
        v63 = 0x3FFFFFFF;
      }

      *(a1 + 12) = v63 - v59;
      *a7 = a11;
      *(a7 + 8) = v61;
      *(a7 + 16) = -v26;
      *(a7 + 24) = v25;
      v22.f64[0] = v47 - v51;
      _D1 = v63 - v48;
      *(a7 + 32) = v22.f64[0];
      *(a7 + 40) = _D1;
      *(a1 + 24) = a7;
      *(a1 + 48) = 0;
    }
  }

  else
  {
    _D1 = a3[6];
    *&v22.f64[0] = vadd_s32(*&_D1, *a2);
    *a1 = v22.f64[0];
    LODWORD(v12) = *(a3 + 15);
    *(a1 + 8) = *(a3 + 14);
    *(a1 + 12) = v12;
    *(a1 + 48) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = a8;
  if (a8)
  {
    v64 = *(a3 + 12);
    v65 = v12 + *(a3 + 13);
    LODWORD(a11) = *(a3 + 10);
    LODWORD(_D1) = *(a3 + 11);
    v66 = *&_D1;
    v67 = a8[1];
    v68 = v67 + a8[3];
    v69 = v65 - v67 * v66;
    v70 = v65 - v68 * v66;
    v71 = *&a11;
    v72 = -(v64 - *a8 * v71);
    v73 = -(v64 - (*a8 + a8[2]) * v71);
    v74 = v69 - v70;
    *a8 = v72;
    a8[1] = v70;
    v22.f64[0] = v73 - v72;
    a8[2] = v73 - v72;
    a8[3] = v74;
  }

  return v22.f64[0];
}

void ripc_ReleaseRIPImageData(void *value)
{
  if (RIPShouldCacheImages_predicate != -1)
  {
    dispatch_once(&RIPShouldCacheImages_predicate, &__block_literal_global_13807);
  }

  if (RIPShouldCacheImages_should_cache != 1)
  {
    goto LABEL_7;
  }

  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  if (cache_release_value(*(get_cache_image_cache + 64), value))
  {
LABEL_7:

    RIPImageDataRelease(value);
  }
}

void CGSImageDataHandleRelease(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = malloc_default_purgeable_zone();
    }

    else
    {
      v2 = malloc_default_zone();
    }

    malloc_zone_free(v2, *(a1 + 16));

    free(a1);
  }
}

void CGSImageDataUnlock(uint64_t *a1)
{
  if (a1)
  {
    CGSImageDataHandleRelease(a1[9]);
    v2 = a1[14];
    if (v2)
    {
      CGAccessSessionRelease(v2);
    }

    v3 = a1[16];
    if (v3)
    {
      CGDataProviderRelease(v3);
    }

    v4 = a1[15];
    if (v4)
    {
      CGImageBlockSetRelease(*v4);
      free(v4);
    }

    v5 = a1[13];
    if (v5)
    {
      CGColorSpaceRelease(v5);
    }

    free(a1);
  }
}

CFStringRef CGDataProviderCreateDebugString(uint64_t a1, __CFString *a2)
{
  if (data_provider_debug_info_enabled_predicate != -1)
  {
    dispatch_once(&data_provider_debug_info_enabled_predicate, &__block_literal_global_42);
  }

  if (data_provider_debug_info_enabled_enabled != 1)
  {
    return 0;
  }

  return data_provider_copy_debug_string(a1, a2);
}

char *subImageProviderCopyImageBlockSet(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, const __CFDictionary *a7)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  v65 = CGRectStandardize(*&a2);
  v71 = *(a1 + 160);
  v65.origin.x = v71.origin.x + v65.origin.x;
  v65.origin.y = v65.origin.y + v71.origin.y;
  v66 = CGRectIntersection(v65, v71);
  y = v66.origin.y;
  x = v66.origin.x;
  height = v66.size.height;
  width = v66.size.width;
  v9 = *(a1 + 48);
  v10 = MEMORY[0x1E695E480];
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"kCGImageBlockFormatRequest");
    if (Value && CFEqual(Value, @"kCGImageBlockFormatBGRx8"))
    {
      v9 = 4;
    }

    v12 = CFDictionaryGetValue(a7, @"kCGImageBlockBaseAddressAlignmentRequest");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberCFIndexType, valuePtr);
    }

    v13 = *v10;
    MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, a7);
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v15 = MutableCopy;
  v63 = 0;
  v16 = CFNumberCreate(v13, kCFNumberLongType, &v63);
  CFDictionarySetValue(v15, @"kCGImageBlockTileRequest", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 152), v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (!v17)
  {
    v17 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 152), a7);
    if (!v17)
    {
      return 0;
    }
  }

  v19 = *(v17 + 120);
  v20 = MEMORY[0x1EEE9AC00](8 * v19, v18);
  v23 = (&v58 - v22);
  if (v21 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v24 = (&v58 - v22);
  }

  else
  {
    v24 = 0;
  }

  if (v21 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v24 = malloc_type_malloc(v20, 0x5886F8B0uLL);
  }

  if (v19)
  {
    v58 = &v58;
    v25 = 0;
    v26 = 0;
    do
    {
      if (*(v17 + 120) > v25)
      {
        v27 = *(v17 + 8 * v25 + 128);
        if (v27)
        {
          v29 = *(v27 + 8);
          v28 = *(v27 + 16);
          v30 = *(v27 + 24);
          v31 = *(a1 + 160);
          v32 = *(a1 + 168);
          v72.size.width = *(a1 + 176);
          v72.size.height = *(a1 + 184);
          v67.origin.x = v29;
          v67.origin.y = v28;
          v67.size.width = v30;
          v67.size.height = *(v27 + 32);
          v72.origin.x = v31;
          v72.origin.y = v32;
          v68 = CGRectIntersection(v67, v72);
          v39 = v68.size.width;
          v40 = v68.origin.x == INFINITY || v68.origin.y == INFINITY;
          if (!v40 && *v27)
          {
            v41 = *(v27 + 40);
            if (v41 >= v9 * v30)
            {
              v42 = v68.size.height;
              v43 = *v27 + v41 * (v68.origin.y - v28) + v9 * (v68.origin.x - v29);
              if (valuePtr[0] && v43 % valuePtr[0])
              {
                if (v26)
                {
                  v55 = v24;
                  do
                  {
                    v56 = *v55;
                    if (*v55)
                    {
                      v57 = v56[9];
                      if (v57)
                      {
                        v57(v56[7], *v55);
                      }

                      free(v56);
                    }

                    ++v55;
                    --v26;
                  }

                  while (v26);
                }

                goto LABEL_51;
              }

              v44 = v68.origin.x - v31;
              v45 = v68.origin.y - v32;
              v46 = CGImageBlockCreate(v43, v41, 0, 0, v68.origin.x - v31, v68.origin.y - v32, v68.size.width, v68.size.height);
              if (v46)
              {
                v47 = v46;
                if (v26)
                {
                  v69.origin.y = y;
                  v69.origin.x = x;
                  v69.size.height = height;
                  v69.size.width = width;
                  v73.origin.x = v44;
                  v73.origin.y = v45;
                  v73.size.width = v39;
                  v73.size.height = v42;
                  v70 = CGRectUnion(v69, v73);
                  y = v70.origin.y;
                  x = v70.origin.x;
                  v39 = v70.size.width;
                  v42 = v70.size.height;
                }

                else
                {
                  y = v45;
                  x = v44;
                }

                v24[v26++] = v47;
                height = v42;
                width = v39;
              }
            }

            else
            {
              CGPostError("CGImageProviderCopyImageBlockSet: invalid bytes/row.\nCGImageProviderCopyImageBlockSet(<CGImageProvider %p>):\n\t<CGImageBlockSet %p> (count = %ld) [%ld]:\n\t\t<CGImageBlock %p> (size = %ld x %ld, pixel-size = %ld, data = %p, bytes-per-row = %ld)", v41, v33, v34, v35, v36, v37, v38, *(a1 + 152));
            }
          }
        }
      }

      ++v25;
    }

    while (v19 != v25);
    if (!v26)
    {
      goto LABEL_51;
    }

    v48 = *(a1 + 152);
    if (v48)
    {
      v49 = *(v48 + 36);
    }

    else
    {
      v49 = 0;
    }

    v50 = CGImageBlockSetCreateWithBitmapInfo(v48, 0, v49, 0, 0, v26, v24, v17, *(a1 + 176), *(a1 + 184), x, y, width, height, subImageBlockSetCallbacks);
    if (!v50)
    {
      v51 = v24;
      do
      {
        v52 = *v51;
        if (*v51)
        {
          v53 = v52[9];
          if (v53)
          {
            v53(v52[7], *v51);
          }

          free(v52);
        }

        ++v51;
        --v26;
      }

      while (v26);
      goto LABEL_51;
    }
  }

  else
  {
LABEL_51:
    CGImageBlockSetRelease(v17);
    v50 = 0;
  }

  if (v24 != v23)
  {
    free(v24);
  }

  return v50;
}

uint64_t CGAccessSessionGetBytes(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v8);
  }

  v10 = *(*a1 + 20);
  if (v10 > 1)
  {
    if (v10 == 3)
    {
LABEL_11:

      return get_chunks_sequential(a1, a3, 0, 1, a2, 0);
    }

    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10)
  {
    if (v10 != 1)
    {
      return 0;
    }

    goto LABEL_11;
  }

  return get_chunks_direct(a1, a3, 0, 1, a2, 0);
}

__n128 CGDataProviderCreateDirectWithInternalCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    CGPostError("%s: Invalid size = %lld", a2, a3, a4, a5, a6, a7, a8, "CGDataProviderCreateDirectWithInternalCallbacks");
    if (!a3)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return result;
  }

  if (a2 >= 1 && *a3 == 1)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 40))
      {
        return result;
      }
    }

    else if (!*(a3 + 24))
    {
      return result;
    }

    provider = create_provider(a1, 0, a3, a4, a5, a6, a7, a8);
    if (provider)
    {
      *(provider + 32) = a2;
      *(provider + 80) = *(a3 + 8);
      v13 = *(a3 + 32);
      *(provider + 96) = *(a3 + 24);
      *(provider + 72) = v13;
      *(provider + 128) = *(a3 + 40);
      result = *(a3 + 56);
      *(provider + 160) = result;
    }
  }

  return result;
}

uint64_t CGDataProviderLock(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v2 != CGDataProviderGetTypeID_id)
  {
    return 0xFFFFFFFFLL;
  }

  CFRetain(a1);
  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = *(a1 + 24);

    return v3(v4);
  }

  else if (*(a1 + 80))
  {
    return 0;
  }

  else
  {

    return pthread_mutex_lock((a1 + 184));
  }
}

uint64_t imageProvider_retain_data(uint64_t result)
{
  if (!*(result + 8))
  {
    v1 = result;
    if (*(result + 80))
    {
      v2 = 0;
    }

    else
    {
      if (get_provider_options_predicate != -1)
      {
        dispatch_once(&get_provider_options_predicate, &__block_literal_global_21791);
      }

      v2 = get_provider_options_options_singleton;
    }

    result = CGImageProviderCopyImageBlockSetWithOptions(*v1, v2);
    v1[1] = result;
    if (!result)
    {
      result = CGImageProviderCopyImageBlockSetWithOptions(*v1, 0);
      v1[1] = result;
    }
  }

  return result;
}

uint64_t CGDataProviderCreateWithImageProvider(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 48);
  v5 = v4 * v3;
  v6 = malloc_type_malloc(0x58uLL, 0x1020040737FDA6EuLL);
  CGDataProviderCreateDirectWithInternalCallbacks(v6, v5 * v2, &imageProvider_callbacks, v7, v8, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    *(v12 + 260) = *(a1 + 130);
    CFRetain(a1);
    *v6 = a1;
    v6[1] = 0.0;
    v6[2] = 0.0;
    v6[3] = 0.0;
    v6[4] = v3;
    v6[5] = v2;
    *(v6 + 6) = v4;
    *(v6 + 7) = v5;
    *(v6 + 8) = v5 * v2;
    *(v6 + 80) = 1;
    *(v13 + 280) = CGDataProviderCreateDebugString(v13, *(a1 + 144));
    *(v6 + 9) = v13;
  }

  else
  {
    free(v6);
  }

  return v13;
}

void *CGAccessSessionCreate(CGDataProvider *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10E00404CFD562DuLL);
  if (v2)
  {
    v3 = pthread_self();
    if (get_session_key_pred != -1)
    {
      dispatch_once(&get_session_key_pred, &__block_literal_global_20945);
    }

    pthread_setspecific(get_session_key_session_key, v3);
    v4 = CGDataProviderRetain(a1);
    CGDataProviderLock(v4);
    CGDataProviderRetainData(a1);
    *v2 = a1;
    v2[1] = CGDataProviderRetainBytePtr(a1);
    CGAccessSessionRewind(v2);
  }

  return v2;
}

uint64_t CGDataProviderRetainData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 128))
    {
      pthread_mutex_lock((result + 184));
      CFRetain(v1);
      if (!atomic_fetch_add_explicit((v1 + 256), 1u, memory_order_relaxed))
      {
        (*(v1 + 128))(*(v1 + 24));
      }

      return pthread_mutex_unlock((v1 + 184));
    }
  }

  return result;
}

uint64_t CGAccessSessionRewind(uint64_t result)
{
  if (result)
  {
    v1 = result;
    check_same_thread();
    result = 0;
    v2 = *(*v1 + 20);
    if (v2 > 1)
    {
      if (v2 == 3)
      {
LABEL_9:
        CGDataProviderRewind(*v1);
        return 1;
      }

      if (v2 != 2)
      {
        return result;
      }
    }

    else if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      goto LABEL_9;
    }

    v1[2] = 0;
    return 1;
  }

  return result;
}

void check_same_thread()
{
  if (get_session_key_pred != -1)
  {
    dispatch_once(&get_session_key_pred, &__block_literal_global_20945);
  }

  v0 = pthread_getspecific(get_session_key_session_key);
  if (v0 != pthread_self())
  {
    CGPostError("CGAccessSession cannot be shared between threads.Session created on thread %p used by %p", v1, v2, v3, v4, v5, v6, v7, v0);
  }
}

uint64_t get_chunks_direct(void *a1, int64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  check_same_thread();
  v16 = *a1;
  if (!*(*a1 + 96) && !v16[14] && !v16[10])
  {
    _CGHandleAssert("get_chunks_direct", 173, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGAccessSession.c", "CGDataProviderCanGetBytesAtPosition(provider)", "data provider provides no callback to read data at a position", v13, v14, v15, v24);
  }

  v17 = v16[4];
  if (v17 == -1)
  {
    _CGHandleAssert("get_chunks_direct", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGAccessSession.c", "provider_size != (-1UL)", "invalid provider size", v13, v14, v15, v24);
  }

  v18 = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v25 = a1[2];
    if ((v25 & 0x8000000000000000) == 0)
    {
      if (a4)
      {
        v18 = 0;
        v19 = a1[2];
        v20 = a2;
        do
        {
          if (v19 + v20 > v17)
          {
            v20 = v17 - v19;
            if ((v17 - v19) < 1)
            {
              break;
            }
          }

          if (v20 >= a2)
          {
            v20 = a2;
          }

          v21 = a1[1];
          if (v21)
          {
            memmove(a5, (v21 + v19), v20);
            BytesAtPositionInternal = v20;
          }

          else
          {
            BytesAtPositionInternal = CGDataProviderDirectGetBytesAtPositionInternal(v16, a5, v19, v20, v12, v13, v14, v15);
            if (!BytesAtPositionInternal)
            {
              return v18;
            }
          }

          v18 += BytesAtPositionInternal;
          v19 = v20 + a3 + a1[2];
          a1[2] = v19;
          if (v19 < 0 || v19 > v17)
          {
            a1[2] = v17;
            if (v18 + v25 > v17)
            {
              return v17 - v25;
            }

            return v18;
          }

          a5 += a2 + a6;
          --a4;
        }

        while (a4);
      }
    }
  }

  return v18;
}

size_t CGDataProviderDirectGetBytesAtPositionInternal(void *a1, char *a2, int64_t a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    _CGHandleAssert("CGDataProviderDirectGetBytesAtPositionInternal", 689, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "pos >= 0", "position (%lld) may not be negative", a6, a7, a8, a3);
  }

  v9 = a4;
  if (a4)
  {
    if (!a1 || (v11 = a1[4], v11 == -1))
    {
      _CGHandleAssert("CGDataProviderDirectGetBytesAtPositionInternal", 693, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "size != (-1)", "size overflow", a6, a7, a8, v30);
    }

    v13 = CGDataProviderRetainBytePtr(a1);
    if (v13)
    {
      if (v11 > a3)
      {
        if (!__CFADD__(a3, v9) && v9 + a3 <= v11 || (v9 = v11 - a3, v11 != a3))
        {
          v17 = a1[10];
          v18 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with getBytePtr callback";
          if (v17 == getCFDataBytePointer)
          {
            v18 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with CFData";
          }

          if (v17 == data_get_byte_pointer)
          {
            v19 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with data";
          }

          else
          {
            v19 = v18;
          }

          qword_1ED4E0528 = v19;
          memcpy(a2, (v13 + a3), v9);
          qword_1ED4E0528 = 0;
        }

        goto LABEL_40;
      }
    }

    else if (a1[12] || a1[14])
    {
      v20 = a1[4];
      if (v20 == -1)
      {
        _CGHandleAssert("provider_get_bytes_at_position", 642, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider->size != (off_t)(-1)", "provider size too large", v14, v15, v16, v30);
      }

      v21 = v20 - a3;
      if (v20 > a3)
      {
        v22 = !__CFADD__(a3, v9) && (v9 + a3) <= v20;
        v23 = !v22;
        v24 = v23 ? v21 : v9;
        if (v24 >= 1)
        {
          v25 = 0;
          do
          {
            v9 = v25;
            if (!v24)
            {
              break;
            }

            v26 = a1[12];
            if (!v26)
            {
              v26 = a1[14];
              if (!v26)
              {
                break;
              }
            }

            v27 = v26(a1[3], &a2[v9], v9 + a3, v24);
            v28 = v27 >= v24 ? v24 : v27;
            v24 -= v28;
            v25 = v28 + v9;
          }

          while (v27);
          goto LABEL_40;
        }
      }
    }

    v9 = 0;
LABEL_40:
    CGDataProviderReleaseBytePtr(a1);
  }

  return v9;
}

uint64_t imageProvider_getBytesAtPosition(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("imageProvider_getBytesAtPosition", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderImageProvider.c", "imageProvider != NULL", "provider missing", a6, a7, a8, v43);
  }

  v8 = a2;
  if (a2)
  {
    v9 = a4;
    if (a4)
    {
      ERROR_CGBlt_copyBytes_BufferIsNotReadable();
      ERROR_CGBlt_copyBytes_BufferIsNotBigEnough();
      if ((a3 & 0x8000000000000000) == 0)
      {
        v17 = a1;
        if (*(a1 + 64) > a3)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v19 = *(v18 + 120);
            if (v19)
            {
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v54 = &v8[v9];
              v23 = *(a1 + 56);
              v24 = a3 / v23;
              v52 = v23;
              v53 = &v8[v9 - 1];
              v25 = a3 % v23;
              v49 = *(a1 + 48);
              v51 = &v8[v9];
LABEL_9:
              if (*(v18 + 120) > v21)
              {
                v26 = *(v18 + 8 * v21 + 128);
                if (v26)
                {
                  v27 = v26[2];
                  v28 = v26[3];
                  v29 = v26[4];
                  v30 = v24 - v27;
                  v31 = v24 >= v27 && v24 < v27 + v29;
                  v32 = v49 * v26[1];
                  v33 = !v31 || v25 < v32;
                  v34 = v49 * v28;
                  if (!v33 && v25 < v32 + v34)
                  {
                    v47 = v32 + v34;
                    v48 = v49 * v28;
                    v50 = v19;
                    v45 = *v26;
                    v46 = v27 + v29;
                    v55 = *(v26 + 5);
                    if (v29 > 0.0 && (v36 = v28 * v49 + (v29 + -1.0) * v55, v36))
                    {
                      v44 = v36;
                      v57 = 0;
                      DebugString = CGDataProviderGetDebugString(*(v17 + 72));
                      if (DebugString)
                      {
                        asprintf(&v57, "CGDataProviderForImageProvider: image provider: %p block set count: %zu block: %p block index %zu block data: %p block bpr: %zu block size: %zu\n%s\n", *a1, v50, v26, v21, v45, v55, v44, DebugString);
                        qword_1ED4E0528 = v57;
                        ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
                        ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
                        qword_1ED4E0528 = 0;
                        free(v57);
                      }

                      else
                      {
                        ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
                        ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
                      }
                    }

                    else
                    {
                      CGLog(2, "%s - block size = 0", v11, v12, v13, v14, v15, v16, "imageProvider_getBytesAtPosition");
                    }

                    v38 = &v45[v55 * v30 - v32];
                    do
                    {
                      v39 = v48 + v32 - v25;
                      if (v39 >= v9)
                      {
                        v39 = v9;
                      }

                      if (v8 > v53)
                      {
                        v8 = v53;
                      }

                      if (&v8[v39] <= v54)
                      {
                        v40 = v39;
                      }

                      else
                      {
                        v40 = v51 - v8;
                      }

                      memcpy(v8, &v38[v25], v40);
                      v8 += v40;
                      v9 -= v40;
                      v20 += v40;
                      v22 += v40;
                      v25 += v40;
                      if (v25 != v52 || (v25 = 0, ++v24, v52 > v47))
                      {
                        v17 = a1;
                        v19 = v50;
                        goto LABEL_21;
                      }

                      v17 = a1;
                      v19 = v50;
                      if (v32)
                      {
                        break;
                      }

                      v38 += v55;
                    }

                    while (v9 && v24 < v46);
                  }
                }
              }

              while (1)
              {
LABEL_21:
                if (++v21 >= v19 || !v9)
                {
                  if (!v9 || !v22)
                  {
                    return v20;
                  }

                  v21 = 0;
                  v22 = 0;
                }

                v18 = *(v17 + 8);
                if (v18)
                {
                  goto LABEL_9;
                }
              }
            }
          }

          else
          {
            bzero(v8, v9);
          }
        }
      }
    }
  }

  else
  {
    CGPostError("%s: cannot write to a NULL buffer", 0, a3, a4, a5, a6, a7, a8, "imageProvider_getBytesAtPosition");
  }

  return 0;
}

void CGAccessSessionRelease(uint64_t *a1)
{
  if (a1)
  {
    CGAccessSessionRewind(a1);
    v2 = *a1;
    CGDataProviderReleaseBytePtr(*a1);
    CGDataProviderReleaseData(v2);
    CGDataProviderUnlock(v2);
    CGDataProviderRelease(v2);

    free(a1);
  }
}

uint64_t CGDataProviderReleaseData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 128))
    {
      pthread_mutex_lock((result + 184));
      if (atomic_fetch_add_explicit((v1 + 256), 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        v2 = *(v1 + 136);
        if (v2)
        {
          v2(*(v1 + 24));
        }
      }

      CFRelease(v1);

      return pthread_mutex_unlock((v1 + 184));
    }
  }

  return result;
}

void imageProvider_release_data(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CGImageBlockSetRelease(v2);
    *(a1 + 8) = 0;
  }
}

uint64_t CGDataProviderUnlock(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v2 == CGDataProviderGetTypeID_id)
    {
      v3 = *(a1 + 152);
      if (v3)
      {
        v4 = v3(*(a1 + 24));
      }

      else
      {
        if (*(a1 + 80))
        {
          v5 = 0;
          goto LABEL_11;
        }

        v4 = pthread_mutex_unlock((a1 + 184));
      }

      v5 = v4;
LABEL_11:
      CFRelease(a1);
      return v5;
    }
  }

  return 0xFFFFFFFFLL;
}

char *ripc_RenderImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(a2 + 81) == 1 && (*(*(a3 + 120) + 7) & 1) != 0)
  {
    *(a1 + 108) = *(a1 + 108) | 0xFF00;
    v14 = -256;
  }

  else
  {
    v14 = 0;
    *(a1 + 108) = *(a1 + 108);
  }

  *(a1 + 108) = v14 | *(a2 + 82);
  v15 = *(a3 + 120);
  *(a1 + 112) = (*(v15 + 4) << 12) >> 28;
  v16 = *(a6 + 16);
  if (*(v16 + 32))
  {
    *(a1 + 104) = (*(v15 + 4) << 16) >> 24;
    v17 = *(v15 + 8);
    *(a1 + 152) = v17;
    v18 = a4[5];
    if (v18 && (v18[12] & 0x40) != 0)
    {
      v44 = *(*v18 + 72);

      return v44();
    }

    else
    {
      v19 = *(a1 + 48);
      v20 = *a4;

      return RIPLayerBltImage(v19, v20, a5, a6, a1 + 104, a6, a7, a8);
    }
  }

  else
  {
    v52 = xmmword_1845629B8;
    v53 = unk_1845629C8;
    v54 = xmmword_1845629D8;
    v48 = xmmword_184562978;
    v49 = unk_184562988;
    v50 = xmmword_184562998;
    v51 = unk_1845629A8;
    v46 = RIPLayerObjectInitializer;
    v47 = unk_184562968;
    v45 = 0;
    v22 = *(a2 + 4);
    if (*a4 || *(v16 + 96) || *(a6 + 24) || *(a6 + 48) || *(a6 + 32) || *(a6 + 8) != *(v16 + 56) || *(a6 + 12) != *(v16 + 60))
    {
      result = RIPLayerCreate(RIPLayer_ripl_class, a5, 0, 0, *(a2 + 4), a6, a7, a8);
      if (!result)
      {
        return result;
      }

      v28 = result;
      *(a1 + 104) = 1;
      *(a1 + 152) = 0x3FF0000000000000;
      RIPLayerBltImage(result, 0, a5, a6, a1 + 104, v30, v31, v32);
    }

    else
    {
      v23 = RIPLayerInitialize(&v46, a2, a3, a4, a5, a6, a7, a8);
      v27 = *(a6 + 16);
      if (v23)
      {
        v28 = &v46;
        RIPLayerReplace(&v46, a6, *(v27 + 64), *(v27 + 72), 0, 0, v24, v25, v26);
        HIDWORD(v47) |= 2u;
      }

      else
      {
        result = RIPLayerCreateWithData(a6, 2, 0, *(v27 + 64), *(v27 + 72), 0, 0, v22);
        v28 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    Color = ripc_GetColor(a1, a2, a3, 2, a5, &v45, (a1 + 152), v29);
    if (Color)
    {
      v35 = Color;
      *(a1 + 104) = (*(*(a3 + 120) + 4) << 16) >> 24;
      v36 = a4[5];
      if (v36 && (v36[12] & 0x10) != 0)
      {
        (*(*v36 + 56))(v36, *(a1 + 48), *a4, a5, v28, v35, &v45, a1 + 104);
      }

      else
      {
        RIPLayerBltShape(*(a1 + 48), *a4, a5, v28, v35, &v45, a1 + 104, v34);
      }

      RIPObjectRelease(v35, v37, v38, v39, v40, v41, v42, v43);
    }

    return (*(*v28 + 24))(v28);
  }
}

uint64_t RIPLayerBltImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v86 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = a4;
  }

  if (a2 && !*(a2 + 72))
  {
    if (*(a2 + 64))
    {
      v54 = (a2 + 12);
      if (v12 == (v10 + 12) || !ripl_IsContained(v12, v54))
      {
        if ((ripl_CreateMask(v10, 0, a3, a4, a5, a6, a7, a8) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else if (!*(a2 + 56) && ripl_IsEnclosed(v12, (a2 + 12)))
    {
      v10 = 0;
    }
  }

  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    *&v81 = 0;
    v79 = 0uLL;
    v80 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v13 = &v67;
    v67 = 0uLL;
    v68 = 0uLL;
  }

  v57 = 0uLL;
  v58 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  result = (*(*a1 + 32))(a1, 32, v12);
  if (result)
  {
    if (!*result || !*(*result + 40))
    {
      goto LABEL_30;
    }

    v22 = *(*(a4 + 16) + 32);
    if (!v22)
    {
      v22 = RIPGetDepthForLayerFormat(0, v15, v16, v17, v18, v19, v20, v21);
    }

    if ((*(a1 + 56) || ripl_CreateMask(a1, 1, v16, v17, v18, v19, v20, v21)) && (*v13 = *a5, ripl_BltOpDestination(v13, v12, a1), v23 = *(a4 + 16), v24 = *a4, v25 = *(a4 + 4), v26 = *(a4 + 8), v27 = *(a4 + 12), *(v13 + 1) = 1, *(v13 + 14) = *v12 - v24, *(v13 + 15) = v27 + v25 - (v12[1] + v12[3]), *(v13 + 16) = v26, v28 = *(v23 + 112), *(v13 + 17) = v27, *(v13 + 18) = v28, v29 = *(v23 + 72), v30 = *(v23 + 80), *(v13 + 19) = *(v23 + 64), *(v13 + 20) = v30, v31 = *(v23 + 88), *(v13 + 11) = v29, *(v13 + 12) = v31, ripl_BltOpMask(v13, v12, v10), CGBlt_initialize(v13)))
    {
      *&v57 = *(*(a4 + 16) + 56);
      v32 = *(a4 + 40) | (*(a5 + 4) << 8) | (HIBYTE(*(a5 + 4)) << 16);
      LODWORD(v55) = *v22;
      DWORD1(v55) = v32;
      v33 = *(a5 + 48);
      v34 = 0.0;
      if (v33 >= 0.0)
      {
        v34 = 1.0;
        if (v33 <= 1.0)
        {
          v34 = v33;
        }
      }

      *(&v55 + 2) = v34;
      v35 = *(a4 + 24);
      if (v35)
      {
        v65 = vcvt_hight_f32_f64(vcvt_f32_f64(*v35), v35[1]);
        v66 = vcvt_f32_f64(v35[2]);
        v35 = &v65;
      }

      *(&v56 + 1) = v35;
      v36 = *(a4 + 48);
      if (v36)
      {
        v37 = *(a1 + 24);
        v38 = v37 + *(a1 + 16);
        v39 = *(a1 + 12);
        _D2 = v37;
        v41 = *v36;
        v60 = v41;
        _Q3 = *(v36 + 2);
        v61 = vneg_f32(vcvt_f32_f64(_Q3));
        v43 = *(v36 + 3);
        __asm { FMLA            D5, D2, V3.D[1] }

        *_Q3.f64 = v43;
        v49 = _D5 - v38;
        v62 = LODWORD(_Q3.f64[0]);
        v63 = v49;
        v50 = v39 - (*(v36 + 5) + v43 * v37);
        v64 = v50;
        v36 = &v60;
      }

      *&v56 = v36;
      if (*(a4 + 42))
      {
        *(v13 + 1) = 2;
      }

      v51 = *(a4 + 32);
      if (v51)
      {
        v59 = vcvt_hight_f32_f64(vcvt_f32_f64(*v51), vaddq_f64(*v51, v51[1]));
        v51 = &v59;
      }

      v52 = *(a4 + 16);
      v53 = *(v52 + 96);
      *(&v57 + 1) = v51;
      *&v58 = v53;
      *(&v58 + 1) = *(v52 + 120);
      if (!(*(*a1 + 40))(a1, v13, &v55))
      {
        v12 = 0;
      }
    }

    else
    {
LABEL_30:
      v12 = 0;
    }

    (*(*a1 + 48))(a1, v12);
    return v12 != 0;
  }

  return result;
}

BOOL CGColorTransformConvertRequired(_BOOL8 result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v6 == CGColorTransformGetTypeID_type_id)
    {
      if (CGColorSpaceGetType(a2) - 7 >= 3)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __create_resolved_source_space_block_invoke;
        v10[3] = &__block_descriptor_tmp_36_17670;
        v10[4] = v5;
        ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v10);
        Cache = CGColorTransformGetCache(v5);
        ConversionType = CGColorTransformCacheGetConversionType(Cache, ResolvedColorSpace, a3);
        CGColorSpaceRelease(ResolvedColorSpace);
        return ConversionType != 3;
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

char *RIPLayerCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2)
  {
    v12 = *(a2 + 8);
    if ((v12 & 0x80000000) != 0)
    {
      return 0;
    }

    v13 = *(a2 + 12);
    if ((v13 & 0x80000000) != 0)
    {
      return 0;
    }

    v14 = *a2;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v42 = v14;
  if (!a4)
  {
    v9 = RIPGetDepthForLayerFormat(0, a2, a3, 0, a5, a6, a7, a8);
  }

  if (v9 != RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8))
  {
    if (v12 <= 0x7FFFFE)
    {
      v15 = ((*v9 >> 25) * v12 + 3) & 0x7FFFFFFC;
      v16 = (*v9 >> 2) & 3;
      v17 = ((((HIWORD(*v9) & 0x3F) + 7) >> 3) * v12 + 3) & 0xFFFFFFC;
      v18 = v17 + v15;
      if (v16 != 1)
      {
        v17 = 0;
        v18 = ((*v9 >> 25) * v12 + 3) & 0x7FFFFFFC;
      }

      if (v16 == 2)
      {
        v17 = ((*v9 >> 25) * v12 + 3) & 0x7FFFFFFC;
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      v20 = (v10 & 1) != 0 ? v17 : 0;
      v21 = (v10 & 1) != 0 ? v19 : ((*v9 >> 25) * v12 + 3) & 0x7FFFFFFC;
      v22 = v21 * v13;
      v23 = v22 > 0x7FFFFFFB ? 0xFFFFFFFFLL : (v22 + 19) & 0xFFFFFFF0;
      if ((v23 & 0x80000000) == 0)
      {
        v24 = malloc_type_calloc(1uLL, v23, 0xBA0718BDuLL);
        if (v24)
        {
          v41 = v8;
          if (v20)
          {
            v25 = (*v9 >> 2) & 3;
            v26 = &v24[v15 * v13];
            if (v25 != 1)
            {
              v26 = 0;
            }

            v27 = v25 == 2;
            v28 = v24;
            if (v27)
            {
              v29 = v24;
            }

            else
            {
              v29 = v26;
            }
          }

          else
          {
            v28 = v24;
            v29 = 0;
          }

          v40 = v28;
          v33 = initialize_deep_mask(v9) | v10 & 0x3C;
          if (v9[4])
          {
            v31 = v33 | 0x200;
          }

          else
          {
            v31 = v33;
          }

          v39 = v20;
          goto LABEL_44;
        }
      }
    }

    return 0;
  }

  v41 = v8;
  v15 = 0;
  v40 = 0;
  v31 = v10 & 0x3C;
  if (v13 | v12)
  {
    v32 = 12;
  }

  else
  {
    v32 = 0;
  }

  v39 = v32;
  if (v13 | v12)
  {
    v29 = &the_empty_shape;
  }

  else
  {
    v29 = 0;
  }

LABEL_44:
  if ((v31 & 0x10) != 0)
  {
    v34 = 296;
  }

  else
  {
    v34 = 0;
  }

  v35 = (*(a1 + 8))(a1);
  v36 = malloc_type_calloc(1uLL, v34 + v35, 0x29D5F13FuLL);
  v30 = v36;
  *v36 = a1;
  *(v36 + 2) = 1;
  *(v36 + 12) = v42;
  *(v36 + 5) = v12;
  *(v36 + 6) = v13;
  *(v36 + 7) = v31;
  v37 = &v36[v35];
  if ((v31 & 0x10) == 0)
  {
    v37 = 0;
  }

  *(v36 + 4) = v9;
  *(v36 + 5) = v37;
  *(v36 + 12) = v15;
  *(v36 + 13) = v41;
  *(v36 + 7) = v40;
  *(v36 + 16) = v39;
  *(v36 + 9) = v29;
  pthread_mutex_init((v36 + 80), 0);
  return v30;
}

void CGContextSetStyle(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetStyle(*(a1 + 96), a2);
      return;
    }

    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  handle_invalid_context("CGContextSetStyle", v8, a3, a4, a5, a6, a7, a8);
}

uint64_t CGPixelComponentGetBitsPerComponent(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 - 1;
  if ((a1 - 1) >= 9 || ((0x1DFu >> v9) & 1) == 0)
  {
    _CGHandleAssert("CGPixelComponentGetBitsPerComponent", 38, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "", "Unimplemented", a6, a7, a8, v8);
  }

  return qword_1844E0DA0[v9];
}

uint64_t _blt_image_initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 1) << 8;
  v7 = 4 * (v6 == 512);
  v8 = *(a2 + 32);
  *(a3 + 256) = v8;
  v9 = *(a2 + 24);
  if (v9)
  {
    v10.i32[0] = *v9;
    v11 = vcvtq_f64_f32(*(v9 + 4));
    v10.i32[1] = *(v9 + 12);
    v12 = vcvtq_f64_f32(v10);
    v13 = vmuld_lane_f64(-v11.f64[0], v11, 1) + v12.f64[0] * v12.f64[1];
    if (v13 == 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = 1.0 / v13;
    v15 = (*(a1 + 4) - 1);
    v16 = *(a1 + 8) - 1;
    v17 = vsub_s32(*(a1 + 12), *(a1 + 56));
    v18.i64[0] = v17.i32[0];
    v18.i64[1] = v17.i32[1];
    v19 = vaddq_f64(vcvtq_f64_f32(*(v9 + 16)), vcvtq_f64_s64(v18));
    v20 = vmulq_n_f64(v11, v14);
    v21 = vmulq_n_f64(v12, v14);
    v22.f64[0] = v21.f64[0];
    v22.f64[1] = vnegq_f64(v20).f64[1];
    v23.f64[1] = v21.f64[1];
    v23.f64[0] = -v20.f64[0];
    v24 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, HIDWORD(*(a1 + 12)) + 0.5), v23, *(a1 + 12) + 0.5), vmlaq_f64(vmulq_f64(vextq_s8(v19, v19, 8uLL), vnegq_f64(v21)), v19, v20));
    v25 = vcvtq_n_s64_f64(v24, 0x20uLL);
    *(a3 + 96) = vextq_s8(v25, v25, 8uLL);
    *(a3 + 22) = 8224;
    v26 = vcvtq_s64_f64(vmulq_f64(vzip1q_s64(v20, v21), xmmword_18439CED0));
    v27 = v26.i64[1];
    *(a3 + 136) = v26.i64[1];
    v28 = v26.i64[0];
    *(a3 + 120) = v26.i64[0];
    if (!(v26.i32[2] | v26.i32[0]))
    {
      v7 |= 0x20u;
    }

    if (v26.i64[1] >= 0)
    {
      v29 = v26.u64[1];
    }

    else
    {
      v29 = -v26.i64[1];
    }

    if (v26.i64[0] >= 0)
    {
      v30 = v26.i64[0];
    }

    else
    {
      v30 = -v26.i64[0];
    }

    v31 = v29 + v30;
    v32 = *(a2 + 36);
    v33 = v7 | 0x200;
    if (v29 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v29;
    }

    if (v26.i64[0])
    {
      v29 = v34;
    }

    if (!v26.i64[1])
    {
      v29 = v30;
    }

    if (!(v29 >> 34))
    {
      v7 |= 0x2000u;
    }

    if (v32 >= 0x7FFFFFFF)
    {
      v35 = 0x7FFFFFFFLL;
    }

    else
    {
      v35 = v32;
    }

    v36 = v35 << 32;
    if (v32 == 1)
    {
      v7 = v33;
      v37 = 0x100000000;
    }

    else
    {
      v37 = v36;
    }

    if (v31 >= v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v31;
    }

    if (v38)
    {
      if (v38 < 0x3FFFFFFFFFFFFFFFLL)
      {
        *(a3 + 216) = v38;
        *(a3 + 232) = 0x3FFFFFFFFFFFFFFFLL / v38;
        v39 = v38 >> 1;
        if (v39 <= 0x80000000)
        {
          v39 = 0x80000000;
        }
      }

      else
      {
        *(a3 + 216) = 0x3FFFFFFFFFFFFFFFLL;
        *(a3 + 232) = 1;
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *(a3 + 216) = 0;
      *(a3 + 232) = 0;
      v39 = 0x100000000;
    }

    v58 = v16;
    *(a3 + 224) = v39;
    *(a3 + 56) = v37;
    v51 = v39;
    v59 = v37;
    v60 = *(a2 + 40);
    if (v60)
    {
      v61 = v60[1];
      v62 = v60[3];
      if (v61 < -2147483650.0)
      {
        v61 = -2147483650.0;
      }

      if (v62 > 2147483650.0)
      {
        v62 = 2147483650.0;
      }

      v63 = vcvtd_n_s64_f64(v61, 0x20uLL);
      v59 = vcvtd_n_s64_f64(v62, 0x20uLL);
      if ((v7 & 4) == 0)
      {
        if (v63 < -16777216)
        {
          v63 = 0;
        }

        if ((v37 | 0x1000000) < v59)
        {
          v59 = v37;
        }
      }

      v51 = v63 + v39;
    }

    v64 = vmlaq_n_f64(v24, v23, v15);
    *(a3 + 72) = v51;
    v65 = v59 - v39;
    *(a3 + 88) = v59 - v39;
    v57 = vcvtq_s64_f64(vmulq_f64(vzip2q_s64(v20, v21), xmmword_18439CED0));
    *(a3 + 112) = v57.i64[1];
    *(a3 + 128) = v57.i64[0];
    if (!(v57.i32[2] | v57.i32[0]))
    {
      v7 |= 0x10u;
    }

    if (v57.i64[1] >= 0)
    {
      v66 = v57.u64[1];
    }

    else
    {
      v66 = -v57.i64[1];
    }

    if (v57.i64[0] >= 0)
    {
      v67 = v57.i64[0];
    }

    else
    {
      v67 = -v57.i64[0];
    }

    v68 = v66 + v67;
    v69 = *(a2 + 32);
    v70 = v7 | 0x100;
    if (v66 >= v67)
    {
      v71 = v67;
    }

    else
    {
      v71 = v66;
    }

    if (v57.i64[0])
    {
      v72 = v71;
    }

    else
    {
      v72 = v66;
    }

    if (!v57.i64[1])
    {
      v72 = v67;
    }

    if (!(v72 >> 34))
    {
      v7 |= 0x1000u;
    }

    if (v69 >= 0x7FFFFFFF)
    {
      v73 = 0x7FFFFFFFLL;
    }

    else
    {
      v73 = v69;
    }

    v74 = v73 << 32;
    if (v69 == 1)
    {
      v7 = v70;
      v75 = 0x100000000;
    }

    else
    {
      v75 = v74;
    }

    if (v68 >= v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = v68;
    }

    if (v76)
    {
      if (v76 < 0x3FFFFFFFFFFFFFFFLL)
      {
        *(a3 + 192) = v76;
        *(a3 + 208) = 0x3FFFFFFFFFFFFFFFLL / v76;
        v77 = v76 >> 1;
        if (v77 <= 0x80000000)
        {
          v77 = 0x80000000;
        }
      }

      else
      {
        *(a3 + 192) = 0x3FFFFFFFFFFFFFFFLL;
        *(a3 + 208) = 1;
        v77 = 0x1FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *(a3 + 192) = 0;
      *(a3 + 208) = 0;
      v77 = 0x100000000;
    }

    v78 = vmlaq_n_f64(v64, v22, v58);
    *(a3 + 200) = v77;
    *(a3 + 48) = v75;
    v52 = v77;
    v79 = v75;
    if (v60)
    {
      v80 = *v60;
      v81 = v60[2];
      if (v80 < -2147483650.0)
      {
        v80 = -2147483650.0;
      }

      if (v81 > 2147483650.0)
      {
        v81 = 2147483650.0;
      }

      v82 = vcvtd_n_s64_f64(v80, 0x20uLL);
      v83 = vcvtd_n_s64_f64(v81, 0x20uLL);
      if (v82 >= -16777216)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0;
      }

      if ((v75 | 0x1000000) >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v75;
      }

      if ((v7 & 4) != 0)
      {
        v79 = v83;
      }

      else
      {
        v82 = v84;
        v79 = v85;
      }

      v52 = v82 + v77;
    }

    v46 = vcvtq_n_s64_f64(v78, 0x20uLL);
    *(a3 + 64) = v52;
    *(a3 + 80) = v79 - v77;
    v86 = vmovn_s64(vceqzq_s64(vorrq_s8(v26, v57)));
    v87 = v86.i8[4] | v86.i8[0];
    v40.i64[0] = v75;
    v40.i64[1] = v37;
    v55.i64[0] = v79 - v77;
    v55.i64[1] = v65;
    if (v87)
    {
      if (v57.i64[1] == 0x100000000)
      {
        v88 = 66;
      }

      else
      {
        v88 = 2;
      }

      v89 = v7 | v88;
      if (((v25.i32[2] & 0xF0000000) - 1342177280) >> 29 >= 3)
      {
        v90 = v89;
      }

      else
      {
        v90 = v89 & 0xFFFFEFFF;
      }

      if ((~v7 & 0x1010) != 0)
      {
        v7 = v89;
      }

      else
      {
        v7 = v90;
      }

      if (v27 == 0x100000000)
      {
        v7 |= 0x80u;
      }

      if ((~v7 & 0x2020) == 0 && ((v25.i32[0] & 0xF0000000) - 1342177280) >> 29 < 3)
      {
        v7 &= ~0x2000u;
      }
    }
  }

  else
  {
    v40 = vshll_n_s32(vmin_u32(v8, 0x8000000080000000), 0x20uLL);
    *&v41.f64[0] = 0x8000000080000000;
    *&v41.f64[1] = 0x8000000080000000;
    v42 = vnegq_f64(v41);
    v43 = vorrq_s8(vshll_n_s32(*(a1 + 56), 0x20uLL), v42);
    v25 = vextq_s8(v43, v43, 8uLL);
    *(a3 + 96) = v43;
    *(a3 + 22) = 8224;
    v44 = vdupq_n_s64(0xFFFFFFFF80000000);
    v45 = vaddq_s64(vshll_n_s32(vadd_s32(*(a1 + 4), *(a1 + 56)), 0x20uLL), v44);
    v46 = vextq_s8(v45, v45, 8uLL);
    *(a3 + 128) = 0;
    *(a3 + 136) = 0x100000000;
    *(a3 + 112) = 0x100000000;
    *(a3 + 120) = 0;
    v7 |= 0xF2u;
    *(a3 + 208) = xmmword_18439CEE0;
    *(a3 + 224) = xmmword_18439CEF0;
    *(a3 + 192) = xmmword_18439CF00;
    *(a3 + 48) = v40;
    v47 = *(a2 + 40);
    if (v47)
    {
      v48 = vcvtq_f64_f32(*v47);
      v49 = vdupq_n_s64(0xC1DFFFFFFFC00000);
      v50 = vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v49, v48), v49, v48), 0x20uLL);
      v51 = v50.i64[1] + 0x80000000;
      if (v6 == 512)
      {
        v28 = 0;
        a4 = 0;
        v39 = 0x80000000;
        v52 = v50.i64[0] + 0x80000000;
        *(a3 + 64) = v50.i64[0] + 0x80000000;
        *(a3 + 72) = v51;
        v53 = vcvtq_f64_f32(v47[1]);
        v54 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
        v55 = vaddq_s64(vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v53, v54), v54, v53), 0x20uLL), vdupq_n_s64(0xFFFFFFFF80000000));
        *(a3 + 80) = v55;
      }

      else
      {
        v28 = 0;
        a4 = 0;
        v91.i64[0] = -16777216;
        v91.i64[1] = -16777216;
        v92 = vcgtq_s64(v91, v50);
        v39 = 0x80000000;
        v50.i64[0] += 0x80000000;
        v50.i64[1] += 0x80000000;
        *&v93.f64[0] = 0x8000000080000000;
        *&v93.f64[1] = 0x8000000080000000;
        v94 = vbslq_s8(v92, vnegq_f64(v93), v50);
        v95 = vcvtq_f64_f32(v47[1]);
        v96 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
        v97 = vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v95, v96), v96, v95), 0x20uLL);
        v55 = vaddq_s64(vbslq_s8(vcgtq_s64(v97, vorrq_s8(v40, vdupq_n_s64(0x1000000uLL))), v40, v97), vdupq_n_s64(0xFFFFFFFF80000000));
        v51 = v94.i64[1];
        *(a3 + 64) = v94;
        *(a3 + 80) = v55;
        v52 = v94.i64[0];
      }

      v57 = xmmword_18439CF10;
      v27 = 0x100000000;
    }

    else
    {
      v28 = 0;
      a4 = 0;
      v55 = vaddq_s64(v40, v44);
      *(a3 + 64) = v42;
      *(a3 + 80) = v55;
      v27 = 0x100000000;
      v57 = xmmword_18439CF10;
      v51 = 0x80000000;
      v52 = 0x80000000;
      v39 = 0x80000000;
    }

    v77 = 0x80000000;
  }

  if (*(a2 + 6) << 16)
  {
    v98 = 0;
  }

  else
  {
    v98 = 0x3FFFFFFF;
  }

  *(a3 + 188) = v98;
  if ((v7 & 2) != 0)
  {
    v99 = vaddvq_s64(v57);
    v100 = v27 + v28;
    v101 = (v27 + v28) >> 1;
    v102 = v99 >> 1 >= 0 ? v25.i64[1] - (v99 >> 1) : v46.i64[1] + (v99 >> 1);
    v103 = v99 >> 1 >= 0 ? v46.i64[1] + (v99 >> 1) : v25.i64[1] - (v99 >> 1);
    v104 = v46.i64[0] + (v100 >> 1);
    v105 = v25.i64[0] - (v100 >> 1);
    v106 = v101 >= 0 ? v25.i64[0] - (v100 >> 1) : v46.i64[0] + (v100 >> 1);
    v107 = v77 + (v77 >> 8);
    v108 = v39 + (v39 >> 8);
    v109 = v52 - v107;
    v110 = v55.i64[0] + v107;
    v111 = v51 - v108;
    v112 = v102 >= v109 && v103 <= v110;
    if (v112 && v106 >= v111)
    {
      if (v101 >= 0)
      {
        v114 = v104;
      }

      else
      {
        v114 = v105;
      }

      v7 |= v114 <= (v55.i64[1] + v108);
    }
  }

  if ((v7 & 4) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_148;
    }

    v115 = vmovn_s64(vcgtzq_s64(vbslq_s8(vcgtq_s64(v46, v25), v25, v46)));
    if ((v115.i32[1] & v115.i32[0] & 1) == 0)
    {
      goto LABEL_148;
    }

    v116 = vmovn_s64(vcgtq_s64(vextq_s8(v40, v40, 8uLL), vbslq_s8(vcgtq_s64(v25, v46), v25, v46)));
    if ((v116.i32[1] & v116.i32[0] & 1) == 0)
    {
      goto LABEL_148;
    }

    v7 &= ~4u;
  }

  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
LABEL_148:
  *(a3 + 20) = v7 | 0x20200000;
  v117 = *(a2 + 8);
  *(a3 + 184) = v117;
  v118 = 0.0;
  if (v117 < 0.0 || (v118 = 1.0, v117 > 1.0))
  {
    *(a3 + 184) = v118;
  }

  v119 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  if (a4 && *(a2 + 4))
  {
    v119 = qword_1E6E33190[v7 >> 12];
  }

  *(a3 + 176) = v119;
  v120 = *(a2 + 48);
  if (!v120 || (result = v120(*(a2 + 56), 0, a1 + 88, a1 + 76, a1 + 96, a1 + 80), result != -1))
  {
    *(a3 + 24) = *(a1 + 76);
    *(a3 + 32) = *(a1 + 88);
    return 1;
  }

  return result;
}

void *CGColorTransformConvertNeedsCMS(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v6 == CGColorTransformGetTypeID_type_id)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __create_resolved_source_space_block_invoke;
      v11[3] = &__block_descriptor_tmp_36_17670;
      v11[4] = v5;
      ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v11);
      Cache = CGColorTransformGetCache(v5);
      ConversionType = CGColorTransformCacheGetConversionType(Cache, ResolvedColorSpace, a3);
      CGColorSpaceRelease(ResolvedColorSpace);
      if (ConversionType)
      {
        v10 = (ConversionType & 0xFFFFFFFD) == 1;
      }

      else
      {
        v10 = 1;
      }

      return !v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGImageAlphaInfo CGImageGetAlphaInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8) & 0x1F;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

const CGFloat *__cdecl CGImageGetDecode(const CGFloat *image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return *(v1 + 20);
    }

    else
    {
      return 0;
    }
  }

  return image;
}

CGBitmapInfo CGImageGetBitmapInfo(CGImageRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      LODWORD(image) = *(v1 + 8);
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

int8x16_t img_stream_stage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 16) = img_raw_read;
  *(a1 + 24) = img_decode_end;
  v3 = 48;
  if ((*(a2 + 28) - 3) >= 3)
  {
    v3 = 0;
  }

  v4 = 8;
  v5 = *(a2 + v3);
  if ((*(a2 + 28) - 3) < 3)
  {
    v4 = 56;
  }

  *(a1 + 48) = v5;
  *(a1 + 52) = *(a2 + v4);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(*(v6 + 24) + 48);
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 120);
  v9 = **(a2 + 112);
  *(a1 + 36) = v7;
  *(a1 + 40) = HIWORD(v9) & 0x3F;
  *(a1 + 44) = *(a2 + 24);
  v10 = *(a2 + 128);
  *(a1 + 120) = v5;
  *(a1 + 128) = v7;
  result = vextq_s8(*(a2 + 136), *(a2 + 136), 8uLL);
  *(a1 + 136) = result;
  *(a1 + 152) = v8;
  *(a1 + 184) = a3;
  *(a1 + 96) = v10;
  *(a1 + 104) = ((v9 >> 22) * v5 + 7) >> 3;
  return result;
}

void *get_access_session(uint64_t a1)
{
  if (*(a1 + 96))
  {
    return 0;
  }

  result = *(a1 + 184);
  if (!result)
  {
    result = CGAccessSessionCreate(*(a1 + 144));
    if (result)
    {
      v3 = result[1];
      *(a1 + 184) = result;
      *(a1 + 192) = v3;
      *(a1 + 88) = 0;
    }
  }

  return result;
}

unint64_t provider_for_destination_get_bytes_at_position_inner(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v151 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_at_position_inner", 573, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "pos >= 0", "position = %lld", a6, a7, a8, a3);
  }

  v11 = *(a1 + 728);
  v12 = *(a1 + 736);
  v135 = *(a1 + 752);
  v136 = *(a1 + 744);
  memcpy(__dst, (a1 + 32), 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst, v13, v14, v15, v16, v17, v18, v19);
  memcpy(__dst, (a1 + 360), 0x130uLL);
  v28 = CGBitmapPixelInfoGetBitsPerPixel(__dst, v21, v22, v23, v24, v25, v26, v27);
  __dst[1] = 0;
  *&__dst[3] = 0u;
  __dst[0] = v11;
  __dst[2] = 1;
  v29 = *(a1 + 720);
  LODWORD(__dst[4]) = v29;
  memcpy(&__dst[5], (a1 + 32), 0x130uLL);
  if (*(a1 + 72))
  {
    __dst[10] = &__dst[11];
  }

  __src[0] = 0u;
  __src[1] = 1uLL;
  *&__src[2] = v29;
  memcpy(&__src[2] + 8, (a1 + 360), 0x130uLL);
  if (*(a1 + 400))
  {
    *&__src[5] = &__src[5] + 8;
  }

  if (*(a1 + 8) >= 8 * a4 / v28)
  {
    v32 = 8 * a4 / v28;
  }

  else
  {
    v32 = *(a1 + 8);
  }

  v36 = destination_position_to_source_position(v28, *(a1 + 664), *(a1 + 672), BitsPerPixel, *(a1 + 336), a3, v30, v31);
  if ((v36 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 456, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "src_pos >= 0", "source position (%lld) may not be negative", v33, v34, v35, v36);
  }

  if (!*(a1 + 696) && !*(a1 + 688) && !*(a1 + 712))
  {
    v11 = a2;
    __dst[0] = a2;
  }

  v37 = *a1;
  v45 = byte_count_to_byte_count(v28, *(a1 + 664), *(a1 + 672), *(a1 + 680), BitsPerPixel, *(a1 + 336), a4, v35);
  if (v45 > v12)
  {
    CGPostError("%s: bytes_to_read %zd > interim_buffer_size %zd", v38, v39, v40, v41, v42, v43, v44, "provider_for_destination_get_bytes_with_work_buffer");
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 474, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "bytes_to_read <= interim_buffer_size", "read size (%lu) exceeds interim space to store the data (%lu)", v131, v132, v133, v45);
  }

  if (v36)
  {
    v46 = *(a1 + 336);
    if (v46)
    {
      if (v36 / v46 == *(a1 + 16) - 1)
      {
        v45 = (v32 * BitsPerPixel + 7) >> 3;
      }
    }
  }

  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v37, *(a1 + 724), v11, v36, v45, v42, v43, v44);
  v52 = BytesAtPositionInternal;
  if (BytesAtPositionInternal > v45)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "bytes_read <= bytes_to_read", "read size (%lu) exceeds space to store the data (%lu)", v48, v49, v50, BytesAtPositionInternal);
  }

  v53 = 8 * BytesAtPositionInternal / BitsPerPixel;
  if (v32 < v53)
  {
    v53 = v32;
  }

  if (v45 == BytesAtPositionInternal)
  {
    v54 = v32;
  }

  else
  {
    v54 = v53;
  }

  if (!v54)
  {
    goto LABEL_230;
  }

  *(&__src[0] + 1) = v54;
  __dst[1] = v54;
  if (*(a1 + 725) != 1)
  {
    goto LABEL_225;
  }

  v55 = *(a1 + 32);
  v56 = *(a1 + 56);
  v57 = __dst[0];
  if (v56 == 9)
  {
    v58 = 3;
    goto LABEL_31;
  }

  if (v56 == 8)
  {
    v58 = 1;
LABEL_31:
    v59 = v56 - 1;
    v56 = v58;
LABEL_32:
    v60 = qword_1844E0DE8[v59];
    goto LABEL_33;
  }

  v59 = v56 - 1;
  if ((v56 - 1) <= 8)
  {
    goto LABEL_32;
  }

  v60 = 0;
LABEL_33:
  v61 = *(a1 + 60);
  v62 = v60 + *(a1 + 48);
  if (v55 <= 3)
  {
    if (v55 == 1)
    {
      switch(v62)
      {
        case 5:
          v96 = 0;
          v97 = vdupq_n_s64(v54 - 1);
          v98 = (__dst[0] + 4 * (v56 == 5) + 40);
          do
          {
            v99 = vdupq_n_s64(v96);
            v100 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v100, *v97.i8), *v97.i8).u8[0])
            {
              *(v98 - 40) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v100, *&v97), *&v97).i8[1])
            {
              *(v98 - 35) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C760)))), *&v97).i8[2])
            {
              *(v98 - 30) = -1;
              *(v98 - 25) = -1;
            }

            v101 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C750)));
            if (vuzp1_s8(*&v97, vuzp1_s16(v101, *&v97)).i32[1])
            {
              *(v98 - 20) = -1;
            }

            if (vuzp1_s8(*&v97, vuzp1_s16(v101, *&v97)).i8[5])
            {
              *(v98 - 15) = -1;
            }

            if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C740))))).i8[6])
            {
              *(v98 - 10) = -1;
              *(v98 - 5) = -1;
            }

            v102 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C730)));
            if (vuzp1_s8(vuzp1_s16(v102, *v97.i8), *v97.i8).u8[0])
            {
              *v98 = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v102, *&v97), *&v97).i8[1])
            {
              v98[5] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C720)))), *&v97).i8[2])
            {
              v98[10] = -1;
              v98[15] = -1;
            }

            v103 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C710)));
            if (vuzp1_s8(*&v97, vuzp1_s16(v103, *&v97)).i32[1])
            {
              v98[20] = -1;
            }

            if (vuzp1_s8(*&v97, vuzp1_s16(v103, *&v97)).i8[5])
            {
              v98[25] = -1;
            }

            if (vuzp1_s8(*&v97, vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_18439C700))))).i8[6])
            {
              v98[30] = -1;
              v98[35] = -1;
            }

            v96 += 16;
            v98 += 80;
          }

          while (((v54 + 15) & 0xFFFFFFFFFFFFFFF0) != v96);
          break;
        case 4:
          v89 = (v61 & 0xFFFFBFFF) == 0 && v56 == 5;
          *src = __dst[0];
          *&src[8] = 1;
          v90 = v61 == 0x2000 && v56 == 6;
          *&src[16] = v54;
          *&src[24] = 4 * v54;
          if (v90)
          {
            v89 = 1;
          }

          *dest = __dst[0];
          *&dest[8] = 1;
          *&dest[16] = v54;
          *&dest[24] = 4 * v54;
          if (v89)
          {
            v91 = 1;
          }

          else
          {
            v91 = 8;
          }

          vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, src, dest, v91, 0x10u);
          break;
        case 2:
          v75 = 0;
          v76 = vdupq_n_s64(v54 - 1);
          if (v56 == 5)
          {
            v57 = __dst[0] + 1;
          }

          v77 = (v57 + 16);
          do
          {
            v78 = vdupq_n_s64(v75);
            v79 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v79, *v76.i8), *v76.i8).u8[0])
            {
              *(v77 - 16) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v79, *&v76), *&v76).i8[1])
            {
              *(v77 - 14) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C760)))), *&v76).i8[2])
            {
              *(v77 - 12) = -1;
              *(v77 - 10) = -1;
            }

            v80 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C750)));
            if (vuzp1_s8(*&v76, vuzp1_s16(v80, *&v76)).i32[1])
            {
              *(v77 - 8) = -1;
            }

            if (vuzp1_s8(*&v76, vuzp1_s16(v80, *&v76)).i8[5])
            {
              *(v77 - 6) = -1;
            }

            if (vuzp1_s8(*&v76, vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C740))))).i8[6])
            {
              *(v77 - 4) = -1;
              *(v77 - 2) = -1;
            }

            v81 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C730)));
            if (vuzp1_s8(vuzp1_s16(v81, *v76.i8), *v76.i8).u8[0])
            {
              *v77 = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v81, *&v76), *&v76).i8[1])
            {
              v77[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C720)))), *&v76).i8[2])
            {
              v77[4] = -1;
              v77[6] = -1;
            }

            v82 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C710)));
            if (vuzp1_s8(*&v76, vuzp1_s16(v82, *&v76)).i32[1])
            {
              v77[8] = -1;
            }

            if (vuzp1_s8(*&v76, vuzp1_s16(v82, *&v76)).i8[5])
            {
              v77[10] = -1;
            }

            if (vuzp1_s8(*&v76, vuzp1_s16(*&v76, vmovn_s64(vcgeq_u64(v76, vorrq_s8(v78, xmmword_18439C700))))).i8[6])
            {
              v77[12] = -1;
              v77[14] = -1;
            }

            v75 += 16;
            v77 += 32;
          }

          while (((v54 + 15) & 0xFFFFFFFFFFFFFFF0) != v75);
          break;
        default:
          _CGHandleAssert("overwrite_alpha_8bit", 146, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented", v48, v49, v50, v134);
      }

      goto LABEL_225;
    }

    if (v55 == 2)
    {
      if (v62 != 5)
      {
        if (v62 != 4)
        {
          if (v62 != 2)
          {
            _CGHandleAssert("overwrite_alpha_16bitInteger", 215, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented", v48, v49, v50, v134);
          }

          v63 = 0;
          v64 = vdupq_n_s64(v54 - 1);
          v65 = (__dst[0] + 2 * (v56 == 5) + 16);
          do
          {
            v66 = vdupq_n_s64(v63);
            v67 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v67, *v64.i8), *v64.i8).u8[0])
            {
              *(v65 - 8) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v67, *&v64), *&v64).i8[1])
            {
              *(v65 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_18439C760)))), *&v64).i8[2])
            {
              *(v65 - 4) = -1;
              *(v65 - 2) = -1;
            }

            v68 = vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_18439C750)));
            if (vuzp1_s8(*&v64, vuzp1_s16(v68, *&v64)).i32[1])
            {
              *v65 = -1;
            }

            if (vuzp1_s8(*&v64, vuzp1_s16(v68, *&v64)).i8[5])
            {
              v65[2] = -1;
            }

            if (vuzp1_s8(*&v64, vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, vorrq_s8(v66, xmmword_18439C740))))).i8[6])
            {
              v65[4] = -1;
              v65[6] = -1;
            }

            v63 += 8;
            v65 += 16;
          }

          while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v63);
          goto LABEL_225;
        }

        *&backgroundColor = -1;
        *permuteMap = 50462976;
        *src = __dst[0];
        *&src[8] = 1;
        *&src[16] = v54;
        *&src[24] = 4 * v54;
        *dest = __dst[0];
        *&dest[8] = 1;
        if (v56 == 5)
        {
          v94 = 1;
        }

        else
        {
          v94 = 8;
        }

        *&dest[16] = v54;
        *&dest[24] = 4 * v54;
LABEL_155:
        vImagePermuteChannelsWithMaskedInsert_ARGB16U(src, dest, permuteMap, v94, &backgroundColor, 0x10u);
        goto LABEL_225;
      }

      v109 = 0;
      v110 = vdupq_n_s64(v54 - 1);
      v111 = (__dst[0] + 8 * (v56 == 5) + 40);
      do
      {
        v112 = vdupq_n_s64(v109);
        v113 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v113, *v110.i8), *v110.i8).u8[0])
        {
          *(v111 - 20) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(v113, *&v110), *&v110).i8[1])
        {
          *(v111 - 15) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18439C760)))), *&v110).i8[2])
        {
          *(v111 - 10) = -1;
          *(v111 - 5) = -1;
        }

        v114 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18439C750)));
        if (vuzp1_s8(*&v110, vuzp1_s16(v114, *&v110)).i32[1])
        {
          *v111 = -1;
        }

        if (vuzp1_s8(*&v110, vuzp1_s16(v114, *&v110)).i8[5])
        {
          v111[5] = -1;
        }

        if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v112, xmmword_18439C740))))).i8[6])
        {
          v111[10] = -1;
          v111[15] = -1;
        }

        v109 += 8;
        v111 += 40;
      }

      while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v109);
      goto LABEL_225;
    }

LABEL_241:
    _CGHandleAssert("overwrite_alpha", 409, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented", v48, v49, v50, v134);
  }

  if (v55 == 4)
  {
    switch(v62)
    {
      case 5:
        v104 = 0;
        v51.i32[0] = 1132462080;
        if (v61 != 0x4000)
        {
          *v51.i32 = 1.0;
        }

        v105 = vdupq_n_s64(v54 - 1);
        v106 = (__dst[0] + 16 * (v56 == 5) + 40);
        do
        {
          v107 = vdupq_n_s64(v104);
          v108 = vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18439C670)));
          if (vuzp1_s16(v108, v51).u8[0])
          {
            *(v106 - 10) = v51.i32[0];
          }

          if (vuzp1_s16(v108, v51).i8[2])
          {
            *(v106 - 5) = v51.i32[0];
          }

          if (vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v105, vorrq_s8(v107, xmmword_18439C760)))).i32[1])
          {
            *v106 = v51.i32[0];
            v106[5] = v51.i32[0];
          }

          v104 += 4;
          v106 += 20;
        }

        while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v104);
        break;
      case 4:
        v92 = 256.0;
        *src = __dst[0];
        *&src[8] = 1;
        if (v61 != 0x4000)
        {
          v92 = 1.0;
        }

        *&src[16] = v54;
        *&src[24] = 4 * v54;
        *dest = __dst[0];
        *&dest[8] = 1;
        *&dest[16] = v54;
        *&dest[24] = 4 * v54;
        if (v56 == 5)
        {
          v93 = 1;
        }

        else
        {
          v93 = 8;
        }

        vImageOverwriteChannelsWithScalar_ARGBFFFF(v92, src, dest, v93, 0x10u);
        break;
      case 2:
        v83 = 0;
        v51.i32[0] = 1132462080;
        if (v61 != 0x4000)
        {
          *v51.i32 = 1.0;
        }

        v84 = vdupq_n_s64(v54 - 1);
        v85 = (__dst[0] + 4 * (v56 == 5) + 16);
        do
        {
          v86 = vdupq_n_s64(v83);
          v87 = vmovn_s64(vcgeq_u64(v84, vorrq_s8(v86, xmmword_18439C670)));
          if (vuzp1_s16(v87, v51).u8[0])
          {
            *(v85 - 4) = v51.i32[0];
          }

          if (vuzp1_s16(v87, v51).i8[2])
          {
            *(v85 - 2) = v51.i32[0];
          }

          if (vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v84, vorrq_s8(v86, xmmword_18439C760)))).i32[1])
          {
            *v85 = v51.i32[0];
            v85[2] = v51.i32[0];
          }

          v83 += 4;
          v85 += 8;
        }

        while (((v54 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v83);
        break;
      default:
        _CGHandleAssert("overwrite_alpha_32bitFloat", 385, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented", v48, v49, v50, v134);
    }

    goto LABEL_225;
  }

  if (v55 != 5)
  {
    goto LABEL_241;
  }

  switch(v62)
  {
    case 5:
      v115 = 0;
      v51.i16[0] = 23552;
      if (v61 != 12288)
      {
        v51.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      v116 = vdupq_n_s64(v54 - 1);
      v117 = (__dst[0] + 8 * (v56 == 5) + 40);
      do
      {
        v118 = vdupq_n_s64(v115);
        v119 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v119, v51), v51).u8[0])
        {
          *(v117 - 20) = v51.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v119, v51), *&v51).i8[1])
        {
          *(v117 - 15) = v51.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18439C760)))), *&v51).i8[2])
        {
          *(v117 - 10) = v51.i16[0];
          *(v117 - 5) = v51.i16[0];
        }

        v120 = vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18439C750)));
        if (vuzp1_s8(*&v51, vuzp1_s16(v120, v51)).i32[1])
        {
          *v117 = v51.i16[0];
        }

        if (vuzp1_s8(*&v51, vuzp1_s16(v120, v51)).i8[5])
        {
          v117[5] = v51.i16[0];
        }

        if (vuzp1_s8(*&v51, vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v116, vorrq_s8(v118, xmmword_18439C740))))).i8[6])
        {
          v117[10] = v51.i16[0];
          v117[15] = v51.i16[0];
        }

        v115 += 8;
        v117 += 40;
      }

      while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v115);
      break;
    case 4:
      *&backgroundColor = -1;
      v95 = 23552;
      if (v61 != 12288)
      {
        v95 = COERCE_UNSIGNED_INT(1.0);
      }

      LOWORD(backgroundColor) = v95;
      WORD3(backgroundColor) = v95;
      *permuteMap = 50462976;
      *src = __dst[0];
      *&src[8] = 1;
      *&src[16] = v54;
      *&src[24] = 4 * v54;
      *dest = __dst[0];
      *&dest[8] = 1;
      *&dest[16] = v54;
      *&dest[24] = 4 * v54;
      if (v56 == 5)
      {
        v94 = 1;
      }

      else
      {
        v94 = 8;
      }

      goto LABEL_155;
    case 2:
      v69 = 0;
      v51.i16[0] = 23552;
      if (v61 != 12288)
      {
        v51.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      v70 = vdupq_n_s64(v54 - 1);
      v71 = (__dst[0] + 2 * (v56 == 5) + 16);
      do
      {
        v72 = vdupq_n_s64(v69);
        v73 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v73, v51), v51).u8[0])
        {
          *(v71 - 8) = v51.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v73, v51), *&v51).i8[1])
        {
          *(v71 - 6) = v51.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_18439C760)))), *&v51).i8[2])
        {
          *(v71 - 4) = v51.i16[0];
          *(v71 - 2) = v51.i16[0];
        }

        v74 = vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_18439C750)));
        if (vuzp1_s8(*&v51, vuzp1_s16(v74, v51)).i32[1])
        {
          *v71 = v51.i16[0];
        }

        if (vuzp1_s8(*&v51, vuzp1_s16(v74, v51)).i8[5])
        {
          v71[2] = v51.i16[0];
        }

        if (vuzp1_s8(*&v51, vuzp1_s16(v51, vmovn_s64(vcgeq_u64(v70, vorrq_s8(v72, xmmword_18439C740))))).i8[6])
        {
          v71[4] = v51.i16[0];
          v71[6] = v51.i16[0];
        }

        v69 += 8;
        v71 += 16;
      }

      while (((v54 + 7) & 0xFFFFFFFFFFFFFFF8) != v69);
      break;
    default:
      _CGHandleAssert("overwrite_alpha_16bitFloat", 302, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented", v48, v49, v50, v134);
  }

LABEL_225:
  *&__src[0] = a2;
  v121 = *(a1 + 688);
  if (v121)
  {
    v122 = *(a1 + 792);
    v148 = *(a1 + 776);
    v123 = *(a1 + 704);
    v124 = *(a1 + 760);
    v125 = *(a1 + 768);
    v149 = v122;
    v150 = *(a1 + 808);
    v126 = *(a1 + 24);
    v127 = *(a1 + 720);
    v128 = *(a1 + 696);
    *&backgroundColor = v123;
    *(&backgroundColor + 1) = v136;
    v145 = v135;
    v146 = v124;
    v147 = v125;
    memcpy(src, __dst, sizeof(src));
    memcpy(dest, __src, sizeof(dest));
    if ((CGColorTransformConvertUsingCMSConverter(v121, v126, v127, v128, &backgroundColor, src, dest) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v129 = *(a1 + 712);
    if (v129)
    {
      memcpy(src, __dst, sizeof(src));
      memcpy(dest, __src, sizeof(dest));
      if (!vImageConverterConvert(v129, src, dest, v136))
      {
        return 0;
      }
    }
  }

LABEL_230:
  if (v45 == v52)
  {
    result = a4;
  }

  else
  {
    result = (v54 * v28 + 7) >> 3;
  }

  if (a5)
  {
    *(a1 + 352) += v52;
    *(a1 + 680) += result;
  }

  return result;
}

unint64_t byte_count_to_byte_count(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    _CGHandleAssert("byte_count_to_byte_count", 23, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationUtils.c", "input_bytes_per_row != 0", "0 rowBytes", a6, a7, a8, v8);
  }

  if (a7)
  {
    if (a6)
    {
      if (a7 >= a2)
      {
        v9 = a7 / a2;
      }

      else
      {
        v9 = 0;
      }

      v10 = a7 - v9 * a2;
      v11 = a3 - a4 % a2;
      if (a3 <= a4 % a2)
      {
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v12 = (8 * v11 / a1 * a5 + 7) >> 3;
      }

      if (v10 < v11)
      {
        v12 = 0;
        v11 = 0;
      }

      return v10 + v9 * a6 + v12 - v11;
    }

    else if (a5 != a1)
    {
      return (8 * a5 * a7 / a1 + 7) >> 3;
    }
  }

  return a7;
}

uint64_t img_raw_read(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v10 = a3;
    if (a3 >= 1)
    {
      v14 = *(a1 + 96);
      v15 = *(a1 + 144);
      v16 = *(a1 + 152);
      if (v14 == -1)
      {
        v26 = *(a1 + 184);
        if (!v26)
        {
          v27 = img_blocks_create(*(a1 + 144), 0, *(a1 + 152), 0);
          if (!v27)
          {
            return 0xFFFFFFFFLL;
          }

          v26 = v27;
          *(a1 + 184) = v27;
          *(a1 + 88) = 0;
        }

        v28 = v10 + a2;
        v29 = *(v26 + 15);
        v30 = *(v26 + 17) + v29;
        if (v29 >= (v10 + a2) || v30 <= a2)
        {
          return 0;
        }

        v45 = v30 >= v28;
        v32 = v30 - v28;
        if (!v45)
        {
          v10 = v32 + v10;
          if (v10 < 1)
          {
            return 0;
          }
        }

        *(a1 + 88) = a2;
        v138 = 0;
        v139 = a2;
        v140 = *(a1 + 120);
        v141 = v10;
        if (*(v26 + 10) >= 1)
        {
          v33 = 0;
          for (i = 0; i < *(v26 + 10); ++i)
          {
            v136 = 0;
            *v137 = 0;
            v135 = 0uLL;
            v135 = *(v26[9] + v33);
            if (CGSBoundsIntersection(&v138, &v135, &v136))
            {
              v35 = SHIDWORD(v136) - v139;
              v36 = *a5;
              v37 = v35 * v36;
              if (v35 * v36 != v35 * v36)
              {
                return 0;
              }

              if ((v37 & 0x80000000) != 0)
              {
                return 0;
              }

              v38 = v26[4];
              if (v38 != v38)
              {
                return 0;
              }

              v39 = v38 * (v136 - v138);
              if ((v39 - 0x80000000) < 0xFFFFFFFF00000000)
              {
                return 0;
              }

              v40 = v38 * v137[0];
              if (v40 != v40)
              {
                return 0;
              }

              v41 = *(v26[10] + 8 * i);
              v42 = *a4 + v37;
              if (v41)
              {
                v43 = *(v26[11] + 8 * i);
                v44 = v43 * (SHIDWORD(v136) - SDWORD1(v135));
                v45 = v44 == v44 && (v43 - 0x80000000) >= 0xFFFFFFFF00000000;
                if (!v45)
                {
                  return 0;
                }

                if ((v44 & 0x80000000) != 0)
                {
                  return 0;
                }

                v46 = v38 * (v136 - v135);
                if (v46 != v46 || (v46 & 0x80000000) != 0)
                {
                  return 0;
                }

                v47 = v41 + v44;
                v48 = *(a1 + 112);
                if (v48)
                {
                  CGBlt_swapBytes(v40, v137[1], (v47 + v46), (v42 + v39), v43, v36, v48);
                }

                else if (v26[6] == v26[5] && v43 == v36)
                {
                  if (v43 * v137[1] != v43 * v137[1])
                  {
                    return 0;
                  }

                  memcpy((v42 + v39), (v47 + v46), v43 * v137[1]);
                }

                else
                {
                  CGBlt_copyBytes(v40, v137[1], (v47 + v46), (v42 + v39), v43, v36);
                }
              }

              else
              {
                CGBlt_fillBytes(v40, v137[1], 0, (v42 + v39), *a5);
              }
            }

            v33 += 16;
          }
        }

LABEL_185:
        v104 = *(a1 + 88) + v10;
        goto LABEL_186;
      }

      if (!v14)
      {
        if (v14)
        {
          _CGHandleAssert("img_raw_read_with_data_provider", 504, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "stage->param[IMG_DECODE_NDATA] == 0", "param = %ld", a6, a7, a8, *(a1 + 96));
        }

        image_pointer = get_image_pointer(a1);
        if (image_pointer)
        {
          v18 = *(a1 + 104);
          v19 = *(a1 + 136);
          v20 = *a5;
          if (*a5 >= v19)
          {
            v21 = *(a1 + 136);
          }

          else
          {
            v21 = *a5;
          }

          if (v21 >= v18)
          {
            v22 = *(a1 + 104);
          }

          else
          {
            v22 = v21;
          }

          if (v18 <= 0)
          {
            v23 = v21;
          }

          else
          {
            v23 = v22;
          }

          *(a1 + 88) = a2;
          v24 = v19 * a2;
          if (v24 == v24 && (v24 & 0x80000000) == 0 && v19 >= 1)
          {
            v25 = *(a1 + 112);
            if (v25)
            {
              CGBlt_swapBytes(v23, v10, (image_pointer + v24), *a4, v19, v20, v25);
LABEL_140:
              v82 = v10;
LABEL_141:
              v104 = *(a1 + 88) + v82;
LABEL_186:
              *(a1 + 88) = v104;
              return v10;
            }

            if (v20 != v19)
            {
              CGBlt_copyBytes(v23, v10, (image_pointer + v24), *a4, v19, v20);
              goto LABEL_140;
            }

            v103 = v19 * v10;
            if (!HIDWORD(v103))
            {
              memcpy(*a4, (image_pointer + v24), v103);
              goto LABEL_140;
            }
          }

          return 0;
        }

        access_session = get_access_session(a1);
        v72 = *(a1 + 104);
        v73 = *(a1 + 136);
        v74 = *a5;
        if (*a5 >= v73)
        {
          v75 = *(a1 + 136);
        }

        else
        {
          v75 = *a5;
        }

        if (v75 >= v72)
        {
          v76 = *(a1 + 104);
        }

        else
        {
          v76 = v75;
        }

        if (v72 > 0)
        {
          v75 = v76;
        }

        v77 = *(a1 + 88);
        if (v77 <= a2)
        {
          if (v77 >= a2)
          {
LABEL_98:
            if (v74 == v73)
            {
              v79 = v73;
            }

            else
            {
              v79 = v75;
            }

            ChunksAtPosition = CGAccessSessionGetChunksAtPosition(access_session, v73 * a2, v79, v73 - v79, v10, *a4, v74 - v79, v71);
            v10 = (ChunksAtPosition / v73);
            if (v72 >= 1)
            {
              if (ChunksAtPosition - v10 * v73 < (v72 & 0x7FFFFFFF))
              {
                v10 = v10;
              }

              else
              {
                v10 = (v10 + 1);
              }
            }

            v81 = *(a1 + 112);
            if (v81)
            {
              CGBlt_swapBytes(v79, v10, *a4, *a4, *a5, *a5, v81);
            }

            v82 = v10;
            goto LABEL_141;
          }
        }

        else
        {
          v77 = 0;
        }

        if (v77 >= a2)
        {
          v78 = 0;
        }

        else
        {
          v78 = a2;
        }

        *(a1 + 88) = v78;
        goto LABEL_98;
      }

      if (v16)
      {
        v49 = *(a1 + 136);
        v131 = *(a1 + 144);
        v132 = *(a1 + 128);
        v50 = *(a1 + 40);
        if (v50 >= 0)
        {
          v51 = *(a1 + 40);
        }

        else
        {
          v51 = v50 + 7;
        }

        v52 = a3 + a2;
        v53 = v16[1];
        v54 = v16[3] + v53;
        *(a1 + 88) = a2;
        if (v54 <= a2 || v52 <= v53)
        {
          v53 = 0;
          v52 = 0;
          v133 = 0;
          v56 = 0;
        }

        else
        {
          if (v54 < v52)
          {
            v52 = v54;
          }

          v83 = a2 - v53;
          v84 = v53 - a2;
          v85 = v53 <= a2;
          if (v53 <= a2)
          {
            v53 = a2;
            v84 = 0;
          }

          v133 = v84;
          if (v85)
          {
            v56 = v83;
          }

          else
          {
            v56 = 0;
          }
        }

        v86 = v14 == 2 && *(a4 + 8) && (*(a1 + 44) & 0xFFFFFFFE) == 8;
        v87 = (v52 - v53);
        if (v87 != a3 || *(a1 + 120) != v16[2])
        {
          v88 = v56;
          v89 = (v52 - v53);
          if (v86)
          {
            CGBlt_fillBytes(a5[1], a3, 0, *(a4 + 8), a5[1]);
          }

          CGBlt_fillBytes(*a5, v10, 0, *a4, *a5);
          v87 = v89;
          v56 = v88;
        }

        v90 = v51 >> 3;
        v91 = *(a1 + 112);
        if (v86)
        {
          v92 = v49[1];
          v93 = v56 * v92;
          if (v93 != v93)
          {
            return 0;
          }

          if ((v93 & 0x80000000) != 0)
          {
            return 0;
          }

          v94 = a5[1];
          v95 = v133 * v94;
          if (v95 != v95)
          {
            return 0;
          }

          if ((v95 & 0x80000000) != 0)
          {
            return 0;
          }

          v96 = *v16 * v90;
          if (v96 != v96)
          {
            return 0;
          }

          if ((v96 & 0x80000000) != 0)
          {
            return 0;
          }

          v97 = v16[2] * v90;
          if (v97 != v97)
          {
            return 0;
          }

          v98 = v131[1];
          v99 = *(a4 + 8) + v95;
          if (v50 >= 16 && v91)
          {
            v100 = v87;
            v101 = v56;
            v102 = v51 >> 3;
            CGBlt_swapBytes(v97, v87, (v98 + v93), (v99 + v96), v92, v94, *(a1 + 112));
          }

          else
          {
            if ((v92 & 0x80000000) == 0 && v92 == v94)
            {
              v107 = v92 * v87;
              if (v107 != v107)
              {
                return 0;
              }

              v108 = v56;
              v109 = v87;
              memcpy((v99 + v96), (v98 + v93), v107);
              v87 = v109;
              v56 = v108;
              v90 = v51 >> 3;
              goto LABEL_165;
            }

            v100 = v87;
            v101 = v56;
            v102 = v51 >> 3;
            CGBlt_copyBytes(v97, v87, (v98 + v93), (v99 + v96), v92, v94);
          }

          v90 = v102;
          v56 = v101;
          v87 = v100;
        }

LABEL_165:
        if (v87 < 1)
        {
          goto LABEL_185;
        }

        if (*a4 == *(a4 + 8))
        {
          v122 = v132 + 1;
        }

        else
        {
          v122 = v132;
        }

        v110 = *v49;
        v123 = v56 * v110;
        if (v123 != v123)
        {
          return 0;
        }

        if ((v123 & 0x80000000) != 0)
        {
          return 0;
        }

        v114 = *a5;
        v124 = v133 * *a5;
        if (v124 != v124)
        {
          return 0;
        }

        if ((v124 & 0x80000000) != 0)
        {
          return 0;
        }

        v125 = v122;
        v126 = v122 * *v16;
        if (v126 != v126)
        {
          return 0;
        }

        v127 = v126 * v90;
        if (v127 != v127)
        {
          return 0;
        }

        if ((v127 & 0x80000000) != 0)
        {
          return 0;
        }

        v128 = v125 * v16[2];
        if (v128 != v128)
        {
          return 0;
        }

        v116 = v128 * v90;
        if (v128 * v90 != v128 * v90)
        {
          return 0;
        }

        v129 = *v131;
        v130 = *a4 + v124;
        if (v91)
        {
          v115 = (v129 + v123);
          v113 = (v130 + v127);
          LOWORD(v112) = v91;
          goto LABEL_155;
        }

        if (v110 == v114)
        {
          if (v110 < 1)
          {
            goto LABEL_185;
          }

          v117 = v110 * v87;
          if (v110 * v87 != v110 * v87)
          {
            return 0;
          }

          v118 = (v130 + v127);
          v119 = (v129 + v123);
          goto LABEL_160;
        }

        v121 = (v129 + v123);
        v120 = (v130 + v127);
        goto LABEL_162;
      }

      v57 = *(a1 + 104);
      v58 = *(a1 + 136);
      v59 = *v58;
      if (*v58 >= *a5)
      {
        v59 = *a5;
      }

      if (v59 >= v57)
      {
        v60 = *(a1 + 104);
      }

      else
      {
        v60 = v59;
      }

      if (v57 <= 0)
      {
        v61 = v59;
      }

      else
      {
        v61 = v60;
      }

      *(a1 + 88) = a2;
      if (v14 == 2)
      {
        v63 = *(a4 + 8);
        if (v63)
        {
          if ((*(a1 + 44) & 0xFFFFFFFE) == 8)
          {
            v64 = v58[1];
            v65 = v64 * a2;
            if (v65 != v64 * a2)
            {
              return 0;
            }

            v66 = *(a1 + 40);
            v67 = *(a1 + 120) * (v66 / 8);
            if (v67 != v67)
            {
              return 0;
            }

            if (v66 >= 9)
            {
              v68 = *(a1 + 112);
              if (v68)
              {
                v69 = v15;
                CGBlt_swapBytes(v67, a3, (v15[1] + v65), v63, v64, a5[1], v68);
LABEL_151:
                v15 = v69;
                goto LABEL_152;
              }
            }

            v105 = a5[1];
            if (v64 != v105)
            {
              v69 = v15;
              CGBlt_copyBytes(v67, a3, (v15[1] + v65), v63, v64, v105);
              goto LABEL_151;
            }

            if (v64 >= 1)
            {
              v106 = v64 * a3;
              if (v106 != v106)
              {
                return 0;
              }

              v69 = v15;
              memcpy(*(a4 + 8), (v15[1] + v65), v106);
              goto LABEL_151;
            }
          }
        }
      }

LABEL_152:
      v110 = *v58;
      v111 = v110 * a2;
      if (v111 != v110 * a2)
      {
        return 0;
      }

      v112 = *(a1 + 112);
      if (v112)
      {
        v113 = *a4;
        v114 = *a5;
        v115 = (*v15 + v111);
        v116 = v61;
        LODWORD(v87) = v10;
LABEL_155:
        CGBlt_swapBytes(v116, v87, v115, v113, v110, v114, v112);
        goto LABEL_185;
      }

      v114 = *a5;
      if (v110 == *a5)
      {
        if (v110 < 1)
        {
          goto LABEL_185;
        }

        v117 = v110 * v10;
        if (v117 != v117)
        {
          return 0;
        }

        v118 = *a4;
        v119 = (*v15 + v111);
LABEL_160:
        memcpy(v118, v119, v117);
        goto LABEL_185;
      }

      v120 = *a4;
      v121 = (*v15 + v111);
      v116 = v61;
      LODWORD(v87) = v10;
LABEL_162:
      CGBlt_copyBytes(v116, v87, v121, v120, v110, v114);
      goto LABEL_185;
    }
  }

  return result;
}

size_t CGDataProviderGetBytesAtPositionInternal(uint64_t a1, int a2, char *a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a3;
  if (a2)
  {

    return CGDataProviderDirectGetBytesAtPositionInternal(a1, a3, a4, a5, a5, a6, a7, a8);
  }

  else
  {
    if (a5 < 1 || (*(a1 + 261) & 1) != 0)
    {
      return 0;
    }

    v12 = 0;
    while (1)
    {
      v13 = (*(a1 + 40))(*(a1 + 24), v9, v8);
      if (!v13)
      {
        break;
      }

      if (v13 >= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = v13;
      }

      v12 += v14;
      v9 += v14;
      v8 -= v14;
      if (!v8)
      {
        return v12;
      }
    }

    *(a1 + 261) = 1;
    return v12;
  }
}

CFDataRef CGColorSpaceCopyICCData(CGColorSpaceRef space)
{
  if (!space)
  {
    return 0;
  }

  v9 = CFGetTypeID(space);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v9 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(space + 3);
  v12 = *(v11 + 24);
  if (v12 <= 5)
  {
    switch(v12)
    {
      case 3:
        CGColorSpaceGetCalibratedGrayData(space, v6, v7, v8, v17);
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalGray(v17);
        if (CGCMSUtilsCreateDataForCalGray_cglibrarypredicate != -1)
        {
          dispatch_once(&CGCMSUtilsCreateDataForCalGray_cglibrarypredicate, &__block_literal_global_147);
        }

        v14 = (CGCMSUtilsCreateDataForCalGray_f)(ProfileForCalGray, 0);
        goto LABEL_28;
      case 4:
        CGColorSpaceGetCalibratedRGBData(space, v6, v7, v8, v17);
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalRGB(v17);
        if (CGCMSUtilsCreateDataForCalRGB_cglibrarypredicate[0] != -1)
        {
          dispatch_once(CGCMSUtilsCreateDataForCalRGB_cglibrarypredicate, &__block_literal_global_134);
        }

        v14 = (CGCMSUtilsCreateDataForCalRGB_f)(ProfileForCalGray, 0);
        goto LABEL_28;
      case 5:
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalLab(*(v11 + 96), *(v11 + 96) + 24);
        if (CGCMSUtilsCreateDataForCalLab_cglibrarypredicate[0] != -1)
        {
          dispatch_once(CGCMSUtilsCreateDataForCalLab_cglibrarypredicate, &__block_literal_global_156);
        }

        v14 = (CGCMSUtilsCreateDataForCalLab_f)(ProfileForCalGray, 0);
LABEL_28:
        v10 = v14;
        if (ProfileForCalGray)
        {
          CFRelease(ProfileForCalGray);
        }

        break;
    }

    return v10;
  }

  if ((v12 - 10) >= 2 && v12 != 6)
  {
    return v10;
  }

  return CGColorSpaceICCCopyData(space, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t CGImageProviderCopyIOSurface(uint64_t a1)
{
  if (a1 && ((v1 = *(a1 + 64), v1 == 3) || v1 == 2) && (v2 = *(a1 + 80)) != 0)
  {
    return v2(*(a1 + 56));
  }

  else
  {
    return 0;
  }
}

void vm_allocator_deallocate(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (MEMORY[0x1865F0110](*MEMORY[0x1E69E9A60], -*MEMORY[0x1E69E9AC8] & a1, a2))
    {
      CGPostError("%s: vm_deallocate failed: status %d.", v2, v3, v4, v5, v6, v7, v8, "release_copied_data");
    }
  }

  else
  {

    free(a1);
  }
}

uint64_t dlRecorder_DrawRects(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v8 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawRects");
    return 1000;
  }

  v11 = a4;
  v14 = CG::DisplayListRecorder::currentDisplayList(v8);
  if (!v14)
  {
    return 1000;
  }

  v15 = v14;
  if (v14[5] == INFINITY || v14[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v15[7] != 0.0 && v15[8] != 0.0)
  {
    v18 = *(a3 + 40);
    v43 = *(a3 + 24);
    v44 = v18;
    v45 = *(a3 + 56);
    if (*(v15 + 73) != 1)
    {
      goto LABEL_29;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (a5)
    {
      if (a6)
      {
        v19 = *a5;
        v20 = a5[1];
        v21 = a5[2];
        v22 = a5[3];
        if (a6 >= 2)
        {
          v23 = a6 - 1;
          v24 = a5 + 7;
          do
          {
            *&v19 = CGRectUnion(*&v19, *(v24 - 3));
            v24 += 4;
            --v23;
          }

          while (v23);
        }
      }
    }

    v25 = *(a3 + 40);
    *&v41.a = *(a3 + 24);
    *&v41.c = v25;
    *&v41.tx = *(a3 + 56);
    v42 = CGRectApplyAffineTransform(*&v19, &v41);
    if (v11 >= 2)
    {
      v42.origin.x = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v42, a3);
      v42.origin.y = v26;
      v42.size.width = v27;
      v42.size.height = v28;
    }

    v42.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v42.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
    v42.origin.y = v29;
    v42.size.width = v30;
    v42.size.height = v31;
    if (v42.origin.x == INFINITY || v29 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v30 != 0.0 && v31 != 0.0)
    {
LABEL_29:
      EntryDrawingState = CG::DisplayList::getEntryDrawingState((v15 + 2), a3, a2);
      v34 = EntryDrawingState[1];
      if (v34)
      {
        v35 = *(v34 + 8);
        v36 = v35 & 0x1000;
        v46 = v36;
        v37 = EntryDrawingState[2];
        if (v37)
        {
          v36 = (*(v37 + 8) | v35) & 0x1000;
          v46 = v36;
        }

        v38 = EntryDrawingState[3];
        if (v38)
        {
          v46 = v36 | *(v38 + 8) & 0x3400;
        }

        v47 = 0;
        v48 = 0;
        CG::DisplayListRecorder::getPathColorResourcesAndUpdateFlags((v15 + 2), a3, v11, &v48, &v47, &v46);
        v39 = *(a3 + 120);
        if (*(v39 + 8) >= 1.0)
        {
          v40 = v46;
        }

        else
        {
          v40 = v46 | 0x1000;
        }

        if ((v40 & 0x1000) == 0 && (((*(v39 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
        {
          v40 = v46 | 0x1000;
        }

        if ((v40 & 0x3000) != 0)
        {
          *(v15 + 20) |= v40 & 0x3000;
        }

        if (*(v15 + 74) == 1)
        {
          if ((v40 & 0x400) != 0)
          {
            CG::DisplayList::getEntryPatternState((v15 + 2), a3, a2);
          }

          if ((v40 & 0x100) != 0)
          {
            CG::DisplayList::getEntryFillState((v15 + 2), v48);
          }

          if ((v40 & 0x200) != 0)
          {
            CG::DisplayList::getEntryStrokeState((v15 + 2), a3);
          }

          operator new();
        }

        return 0;
      }

      return 1000;
    }
  }

  return result;
}

CGRect *CG::DisplayListEntryRects::setRects(CG::DisplayListEntryRects *this, const CGRect *a2, uint64_t a3)
{
  result = *(this + 17);
  if (result != a2)
  {
    free(result);
    *(this + 17) = 0;
    result = malloc_type_malloc(32 * a3, 0x1000040E0EAB150uLL);
    *(this + 17) = result;
    if (result)
    {
      result = memcpy(result, a2, 32 * a3);
    }
  }

  *(this + 18) = a3;
  return result;
}

unsigned int *CG::DisplayListEntryRects::_hash(uint64_t a1, unsigned int *a2)
{
  XXH64_update(a2, (a1 + 80), 4uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  v4 = *(a1 + 136);
  if (v4)
  {
    XXH64_update(a2, v4, 32 * *(a1 + 144));
  }

  return CG::DisplayListEntry::_hash(a1, a2);
}

void CGGStateSetInterpolationQuality(uint64_t a1, int a2)
{
  if (*(*(a1 + 120) + 4) != a2)
  {
    v2 = a2;
    maybeCopyRenderingState(a1);
    *(*(a1 + 120) + 4) = v2;
  }
}

CFDictionaryRef CGRectCreateDictionaryRepresentation(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"X", x);
  add_number_to_dict(Mutable, @"Y", y);
  add_number_to_dict(Mutable, @"Width", width);
  add_number_to_dict(Mutable, @"Height", height);
  return Mutable;
}

BOOL CGSizeMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGSize *size)
{
  if (!dict || !size)
  {
    return 0;
  }

  get_size_from_dict(dict, &size->width);
  return result;
}

CFDictionaryRef CGSizeCreateDictionaryRepresentation(CGSize size)
{
  height = size.height;
  width = size.width;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"Width", width);
  add_number_to_dict(Mutable, @"Height", height);
  return Mutable;
}

void add_number_to_dict(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void _CGHandleAssert(const char *a1, int a2, const char *a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  os_unfair_lock_lock(&_CGHandleAssert_assert_lock);
  v14 = snprintf(_CGHandleAssert_assertStr, 0x800uLL, "CoreGraphics assert(%s) failed in %s:\n\t", a4, a1);
  v15 = v14;
  if (v14 >= 0x800)
  {
    v16 = 2048;
  }

  else
  {
    v16 = v14;
  }

  v17 = vsnprintf(&_CGHandleAssert_assertStr[v16], 2048 - v16, a5, &a9);
  if (v15 <= 0x7FF && !v17)
  {
    _CGHandleAssert_assertStr[v16] = 0;
  }

  CGPostError("%s", v18, v19, v20, v21, v22, v23, v24, _CGHandleAssert_assertStr);
  qword_1ED4E0528 = _CGHandleAssert_assertStr;
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, a3, a2, a4);
}

const void *CGImageProviderGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 120)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CGCFDictionaryGetMD5Digest(const __CFDictionary *a1, unsigned __int8 a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *md = 0;
  v9 = 0;
  v4 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v4);
  context[0] = v4;
  context[1] = a2;
  CFDictionaryApplyFunction(a1, md5_creator, context);
  if (v4)
  {
    CC_MD5_Final(md, v4);
    v5 = *md;
  }

  else
  {
    v5 = 0;
  }

  free(v4);
  return v5;
}

void md5_creator(const __CFString *propertyList, const __CFString *a2, uint64_t a3)
{
  if ((*(a3 + 8) & 1) == 0)
  {
    object_md5_creator(*a3, propertyList);
  }

  v5 = *a3;

  object_md5_creator(v5, a2);
}

void object_md5_creator(CC_MD5_CTX *a1, const __CFString *propertyList)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!propertyList)
  {
    goto LABEL_50;
  }

  v4 = CFGetTypeID(propertyList);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 == CGColorSpaceGetTypeID_type_id)
  {
    length = propertyList->length;
    if (length)
    {
      v6 = (length + 64);
    }

    else
    {
      v6 = 0;
    }

    data[0] = *v6;
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  v7 = CFGetTypeID(propertyList);
  if (object_md5_creator_cglibrarypredicate != -1)
  {
    dispatch_once(&object_md5_creator_cglibrarypredicate, &__block_literal_global_262);
  }

  if (v7 != object_md5_creator_f())
  {
    v11 = CFGetTypeID(propertyList);
    if (v11 == CFURLGetTypeID())
    {
      v12 = CFURLCopyAbsoluteURL(propertyList);
      if (v12)
      {
        v19 = v12;
        v20 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
        if (v20)
        {
          v21 = v20;
          CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
          if (CStringPtr)
          {
            if (a1)
            {
              v23 = CStringPtr;
              v24 = strlen(CStringPtr);
              md5_update(a1, v23, v24);
            }

            CFRelease(v21);
LABEL_53:

            CFRelease(v19);
            return;
          }

          CFRelease(v21);
        }

        CFRelease(v19);
      }

      CGLog(3, "md5_creator failed for CFURL %p", v13, v14, v15, v16, v17, v18, propertyList);
      return;
    }

    v25 = CFGetTypeID(propertyList);
    if (v25 == CFStringGetTypeID())
    {
      v26 = CFStringGetCStringPtr(propertyList, 0x8000100u);
      if (!v26)
      {
        bzero(data, 0x401uLL);
        v35 = CFStringGetLength(propertyList);
        if (!CFStringGetCString(propertyList, data, 1024, 0x600u))
        {
          v62.location = 0;
          v62.length = v35;
          CFStringGetBytes(propertyList, v62, 0x600u, 0x3Fu, 0, data, 1024, 0);
        }

        v36 = strlen(data);
        if (v36)
        {
          if (a1)
          {
            md5_update(a1, data, v36);
          }
        }

        else
        {
          CGLog(3, "md5_creator failed for CFString %p", v37, v38, v39, v40, v41, v42, propertyList);
        }

        return;
      }

      if (!a1)
      {
        return;
      }

      v27 = v26;
      v28 = strlen(v26);
      v29 = a1;
      v30 = v27;
LABEL_32:

      md5_update(v29, v30, v28);
      return;
    }

    v31 = CFGetTypeID(propertyList);
    if (v31 == CFDataGetTypeID())
    {
      v32 = CFDataGetLength(propertyList);
      BytePtr = CFDataGetBytePtr(propertyList);
      if (!a1)
      {
        return;
      }

      v30 = BytePtr;
      v29 = a1;
      v28 = v32;
      goto LABEL_32;
    }

    v34 = CFGetTypeID(propertyList);
    if (v34 == CFBooleanGetTypeID())
    {
      LODWORD(data[0]) = *MEMORY[0x1E695E4D0] == propertyList;
      if (!a1)
      {
        return;
      }

      v9 = a1;
      v10 = 4;
LABEL_17:
      CC_MD5_Update(v9, data, v10);
      return;
    }

    v43 = CFGetTypeID(propertyList);
    if (v43 == CFNumberGetTypeID())
    {
      *&data[0] = 0;
      if (CFNumberGetValue(propertyList, kCFNumberDoubleType, data) != 1)
      {
        CGLog(3, "md5_creator failed for CFNumber %p", v44, v45, v46, v47, v48, v49, propertyList);
        return;
      }

      if (a1)
      {
        v9 = a1;
        v10 = 8;
        goto LABEL_17;
      }

      return;
    }

LABEL_50:
    v50 = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!v50)
    {
      CGLog(3, "md5_creator failed for %p object", v51, v52, v53, v54, v55, v56, propertyList);
      return;
    }

    v19 = v50;
    v57 = CFDataGetLength(v50);
    v58 = CFDataGetBytePtr(v19);
    if (a1)
    {
      md5_update(a1, v58, v57);
    }

    goto LABEL_53;
  }

  if (object_md5_creator_cglibrarypredicate_3 != -1)
  {
    dispatch_once(&object_md5_creator_cglibrarypredicate_3, &__block_literal_global_6);
  }

  *&data[0] = object_md5_creator_f_2(propertyList);
  *(&data[0] + 1) = v8;
  if (a1)
  {
LABEL_16:
    v9 = a1;
    v10 = 16;
    goto LABEL_17;
  }
}

void cg_options_to_colorsync_options(__CFDictionary *a1, const __CFDictionary *a2)
{
  v177 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return;
  }

  TypeID = CFBooleanGetTypeID();
  ValueWithType = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFTable", TypeID);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFTable", ValueWithType, 0);
  v6 = CFNumberGetTypeID();
  v7 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFTableSize", v6);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFTableSize", v7, kCFNumberSInt32Type);
  v8 = CFBooleanGetTypeID();
  v9 = CGCFDictionaryGetValueWithType(a2, @"kCGPQInvEOTFTable", v8);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQInvEOTFTable", v9, 0);
  v10 = CFDictionaryContainsKey(a2, @"kCGHLGEOTFTable");
  v11 = CFBooleanGetTypeID();
  if (v10 == 1)
  {
    v12 = @"kCGHLGEOTFTable";
  }

  else
  {
    v12 = @"kCGHLGInvOETFTable";
  }

  v13 = CGCFDictionaryGetValueWithType(a2, v12, v11);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFTable", v13, 0);
  v14 = CFDictionaryContainsKey(a2, @"kCGHLGEOTFTableSize");
  v15 = CFNumberGetTypeID();
  if (v14)
  {
    v16 = @"kCGHLGEOTFTableSize";
  }

  else
  {
    v16 = @"kCGHLGInvOETFTableSize";
  }

  v17 = CGCFDictionaryGetValueWithType(a2, v16, v15);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFTableSize", v17, kCFNumberSInt32Type);
  v18 = CFBooleanGetTypeID();
  v19 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOETFTable", v18);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOETFTable", v19, 0);
  v20 = CFNumberGetTypeID();
  v21 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOOTFGainScale", v20);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOOTFGainScale", v21, kCFNumberFloatType);
  v22 = CFNumberGetTypeID();
  v23 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFOpticalScale", v22);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFOpticalScale", v23, kCFNumberFloatType);
  v24 = CFNumberGetTypeID();
  v25 = CGCFDictionaryGetValueWithType(a2, @"kCGPQInvEOTFOpticalScale", v24);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQInvEOTFOpticalScale", v25, kCFNumberFloatType);
  v26 = CFNumberGetTypeID();
  v27 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGInvOETFOpticalScale", v26);
  if (!v27)
  {
    v28 = CFNumberGetTypeID();
    v27 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGEOTFOpticalScale", v28);
  }

  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFOpticalScale", v27, kCFNumberFloatType);
  v29 = CFNumberGetTypeID();
  v30 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOETFOpticalScale", v29);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOETFOpticalScale", v30, kCFNumberFloatType);
  v31 = CFNumberGetTypeID();
  v32 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSurroundLuminance", v31);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSurroundLuminance", v32, kCFNumberFloatType);
  Value = CFDictionaryGetValue(a2, @"kCGHLGLuminanceCoefficients");
  v34 = Value;
  if (Value)
  {
    v35 = CFGetTypeID(Value);
    if (v35 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v34) > 3)
      {
        v43 = 0;
        Mutable = 0;
        *keys = 0u;
        v176 = 0u;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v43);
          if (!ValueAtIndex)
          {
            break;
          }

          v52 = ValueAtIndex;
          v53 = CFGetTypeID(ValueAtIndex);
          if (v53 != CFNumberGetTypeID())
          {
            break;
          }

          LODWORD(valuePtr[0]) = 0;
          if (!CFNumberGetValue(v52, kCFNumberFloatType, valuePtr))
          {
            CFNumberGetType(v52);
            CGLog(2, "kCGHLGLuminanceCoefficients has incorrect value type at index %ld type = %s instead of kCFNumberFloatType - rounding errors may occur", v54, v55, v56, v57, v58, v59, v43);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              if (!Mutable)
              {
                goto LABEL_33;
              }
            }

            keys[v43] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          }

          if (++v43 == 4)
          {
            if (Mutable)
            {
              for (i = 0; i != 4; ++i)
              {
                v61 = keys[i];
                if (!v61)
                {
                  v61 = CFArrayGetValueAtIndex(v34, i);
                }

                CFArraySetValueAtIndex(Mutable, i, v61);
              }

              v34 = CFAutorelease(Mutable);
            }

            goto LABEL_33;
          }
        }

        CGLog(2, "kCGHLGLuminanceCoefficients has a non number value at index %ld - coefficients ignored", v46, v47, v48, v49, v50, v51, v43);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

LABEL_33:
        for (j = 0; j != 4; ++j)
        {
          v63 = keys[j];
          if (v63)
          {
            CFRelease(v63);
          }
        }

        goto LABEL_37;
      }

      v42 = "Array count for kCGHLGLuminanceCoefficients is less than 4 - ignored";
    }

    else
    {
      v42 = "Value for kCGHLGLuminanceCoefficients is not a CFArray - ignored";
    }

    CGLog(2, v42, v36, v37, v38, v39, v40, v41, v171);
    v34 = 0;
  }

LABEL_37:
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGLuminanceCoefficients", v34, 0);
  v64 = CFDictionaryGetValue(a2, @"kCGUseHLGReferenceLuminance");
  sanitize_and_set_options(a1, @"com.apple.cmm.kColorSyncUseHLGReferenceLuminance", v64, 0);
  v65 = CFBooleanGetTypeID();
  v66 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSkipOOTF", v65);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipHLGOOTF", v66, 0);
  v67 = CFBooleanGetTypeID();
  v68 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSkipInvOOTF", v67);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipInvHLGOOTF", v68, 0);
  v69 = CFBooleanGetTypeID();
  v70 = CGCFDictionaryGetValueWithType(a2, @"kCGPQSkipPQEETF", v69);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipPQEETF", v70, 0);
  v71 = CFNumberGetTypeID();
  v72 = CGCFDictionaryGetValueWithType(a2, @"kCGPQMasteringDisplayWhite", v71);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQMasteringDisplayWhite", v72, kCFNumberFloatType);
  v73 = CFNumberGetTypeID();
  v74 = CGCFDictionaryGetValueWithType(a2, @"kCGPQMasteringDisplayBlack", v73);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQMasteringDisplayBlack", v74, kCFNumberFloatType);
  v75 = CFNumberGetTypeID();
  v76 = CGCFDictionaryGetValueWithType(a2, @"kCGTargetDisplayWhite", v75);
  sanitize_and_set_options(a1, @"com.apple.cmm.TargetDisplayWhite", v76, kCFNumberFloatType);
  v77 = CFNumberGetTypeID();
  v78 = CGCFDictionaryGetValueWithType(a2, @"kCGTargetDisplayBlack", v77);
  sanitize_and_set_options(a1, @"com.apple.cmm.TargetDisplayBlack", v78, kCFNumberFloatType);
  v79 = CFBooleanGetTypeID();
  v80 = CGCFDictionaryGetValueWithType(a2, @"kCGSkipToneMappingForBT2100", v79);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipToneMappingForBT2100", v80, 0);
  v81 = CFBooleanGetTypeID();
  v82 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyToneMappingForBT2100", v81);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyToneMappingForBT2100", v82, 0);
  v83 = CFBooleanGetTypeID();
  v84 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEETF3DLut", v83);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEETF3DLut", v84, 0);
  v85 = CFNumberGetTypeID();
  v86 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEETF3DLutGridPoints", v85);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEETF3DLutGridPoints", v86, 0);
  v87 = CFBooleanGetTypeID();
  v88 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSceneMapping3DLut", v87);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSceneMapping3DLut", v88, 0);
  v89 = CFNumberGetTypeID();
  v90 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSceneMapping3DLutGridPoints", v89);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSceneMapping3DLutGridPoints", v90, kCFNumberSInt32Type);
  v91 = CFNumberGetTypeID();
  v92 = CGCFDictionaryGetValueWithType(a2, @"kCGColorConversionTRCSize", v91);
  sanitize_and_set_options(a1, @"com.apple.cmm.TRCSize", v92, kCFNumberSInt32Type);
  v93 = CFBooleanGetTypeID();
  v94 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyYCCGammaScaling", v93);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyYCCGammaScaling", v94, kCFNumberFloatType);
  v95 = CFBooleanGetTypeID();
  v96 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyLuminanceScaling", v95);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyLuminanceScaling", v96, kCFNumberFloatType);
  v97 = CFBooleanGetTypeID();
  v98 = CGCFDictionaryGetValueWithType(a2, @"kCGUseBT1886ForCoreVideoGamma", v97);
  sanitize_and_set_options(a1, @"com.apple.ColorSync.BT1886ForCoreVideoGamma", v98, 0);
  v99 = CFNumberGetTypeID();
  v100 = CGCFDictionaryGetValueWithType(a2, @"kCGHDRMediaReferenceWhite", v99);
  sanitize_and_set_options(a1, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite", v100, kCFNumberFloatType);
  v101 = CFBooleanGetTypeID();
  v102 = CGCFDictionaryGetValueWithType(a2, @"kCGUseLegacyHDREcosystem", v101);
  sanitize_and_set_options(a1, @"com.apple.cmm.UseLegacyHDREcosystem", v102, 0);
  v103 = CFBooleanGetTypeID();
  v104 = CGCFDictionaryGetValueWithType(a2, @"kCGSkipBoostToHDR", v103);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipBoostToHDR", v104, 0);
  v105 = CFBooleanGetTypeID();
  v106 = CGCFDictionaryGetValueWithType(a2, @"kCGUse100nitsHLGOOTF", v105);
  sanitize_and_set_options(a1, @"com.apple.cmm.Use100nitsHLGOOTF", v106, 0);
  v107 = CFDictionaryGetValue(a2, @"kCGApplyReferenceWhiteToneMapping");
  v108 = CFDictionaryGetValue(a2, @"kCGApplyFlexTRC");
  v109 = CFDictionaryGetValue(a2, @"kCGApplyFlexLumaScaling");
  if (v107)
  {
    ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveReferenceWhiteToneMappingOptions(v107);
    if (!ResolveReferenceWhiteToneMappingOptions)
    {
      return;
    }

    v111 = ResolveReferenceWhiteToneMappingOptions;
    colorsync_reference_white_tone_mapping_options = create_colorsync_reference_white_tone_mapping_options(ResolveReferenceWhiteToneMappingOptions);
    if (!colorsync_reference_white_tone_mapping_options)
    {
      goto LABEL_108;
    }

LABEL_40:
    v113 = colorsync_reference_white_tone_mapping_options;
LABEL_41:
    CFDictionarySetValue(a1, @"com.apple.cmm.ApplyToneMaping", v113);
    v114 = v113;
LABEL_42:
    CFRelease(v114);
LABEL_108:
    CFRelease(v111);
    return;
  }

  if (v109)
  {
    ResolveFlexLumaOptions = CGColorTransformCreateResolveFlexLumaOptions(v109);
    if (!ResolveFlexLumaOptions)
    {
      return;
    }

    v111 = ResolveFlexLumaOptions;
    v116 = CFGetTypeID(ResolveFlexLumaOptions);
    if (v116 != CFDictionaryGetTypeID())
    {
      goto LABEL_108;
    }

    v117 = CFDictionaryGetValue(v111, @"kCGApplyFlexLumaScaling");
    if (!v117)
    {
      goto LABEL_108;
    }

    v118 = v117;
    v119 = CFGetTypeID(v117);
    if (v119 != CFDictionaryGetTypeID())
    {
      goto LABEL_108;
    }

    *keys = 0u;
    v176 = 0u;
    memset(valuePtr, 0, sizeof(valuePtr));
    v120 = CFDictionaryGetValue(v118, @"kCGFlexGTCTargetHeadroom");
    v121 = v120;
    if (v120)
    {
      v122 = CFGetTypeID(v120);
      if (v122 == CFNumberGetTypeID())
      {
        v123 = valuePtr + 1;
        v124 = &keys[1];
        v125 = CFGetTypeID(v121);
        v126 = CFNumberGetTypeID();
        v127 = 0;
        if (v125 == v126)
        {
          LODWORD(v173) = 0;
          CFNumberGetValue(v121, kCFNumberFloatType, &v173);
          v127 = v173;
        }

        keys[0] = @"com.apple.cmm.FlexGTCTargetHeadroom";
        LODWORD(v173) = v127;
        *&valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, &v173);
        v121 = 1;
        goto LABEL_74;
      }

      v121 = 0;
    }

    v124 = keys;
    v123 = valuePtr;
LABEL_74:
    v143 = CFDictionaryGetValue(v118, @"kCGContentEDRStrength");
    if (v143)
    {
      v144 = v143;
      v145 = CFGetTypeID(v143);
      if (v145 == CFNumberGetTypeID())
      {
        v146 = CFGetTypeID(v144);
        v147 = CFNumberGetTypeID();
        v148 = 0;
        if (v146 == v147)
        {
          LODWORD(v173) = 0;
          CFNumberGetValue(v144, kCFNumberFloatType, &v173);
          v148 = v173;
        }

        *v124 = @"com.apple.cmm.ContentEDRStrength";
        LODWORD(v173) = v148;
        *v123 = CFNumberCreate(0, kCFNumberFloatType, &v173);
        ++v121;
      }
    }

    v149 = CFDictionaryGetValue(v118, @"kCGContentAverageLightLevel");
    if (v149)
    {
      v150 = v149;
      v151 = CFGetTypeID(v149);
      if (v151 == CFNumberGetTypeID())
      {
        v152 = CFGetTypeID(v150);
        v153 = 0.0;
        if (v152 == CFNumberGetTypeID())
        {
          LODWORD(v173) = 0;
          CFNumberGetValue(v150, kCFNumberFloatType, &v173);
          v153 = *&v173;
        }

        if (CGImageDefaultReferenceWhite_once != -1)
        {
          dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
        }

        v154 = CGImageDefaultReferenceWhite_media_white;
        v155 = 0.0;
        if (CGImageDefaultReferenceWhite_media_white)
        {
          v156 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
          if (v156 == CFNumberGetTypeID())
          {
            LODWORD(v173) = 0;
            CFNumberGetValue(v154, kCFNumberFloatType, &v173);
            v155 = *&v173;
          }
        }

        keys[v121] = @"com.apple.cmm.ContentAverageLightLevelNits";
        LODWORD(v173) = vcvtas_u32_f32(v153 / v155);
        *(valuePtr + v121++) = CFNumberCreate(0, kCFNumberSInt32Type, &v173);
      }
    }

    v157 = CFDictionaryGetValue(v118, @"kCGContentAverageLightLevelNits");
    if (v157)
    {
      v158 = v157;
      v159 = CFGetTypeID(v157);
      if (v159 == CFNumberGetTypeID())
      {
        v160 = CFGetTypeID(v158);
        if (v160 == CFNumberGetTypeID())
        {
          LODWORD(v173) = 0;
          CFNumberGetValue(v158, kCFNumberIntType, &v173);
          v161 = v173;
        }

        else
        {
          v161 = 0;
        }

        keys[v121] = @"com.apple.cmm.ContentAverageLightLevelNits";
        LODWORD(v173) = v161;
        *(valuePtr + v121++) = CFNumberCreate(0, kCFNumberSInt32Type, &v173);
      }
    }

    v162 = CFDictionaryGetValue(v118, @"kCGConstrainedDynamicRange");
    if (v162 && (v163 = v162, v164 = CFGetTypeID(v162), v164 == CFNumberGetTypeID()))
    {
      v165 = CFGetTypeID(v163);
      v166 = CFNumberGetTypeID();
      v167 = 0;
      if (v165 == v166)
      {
        LODWORD(v173) = 0;
        CFNumberGetValue(v163, kCFNumberFloatType, &v173);
        v167 = v173;
      }

      keys[v121] = @"com.apple.cmm.ConstrainedDynamicRange";
      LODWORD(v173) = v167;
      *(valuePtr + v121++) = CFNumberCreate(0, kCFNumberFloatType, &v173);
    }

    else if (!v121)
    {
      goto LABEL_108;
    }

    v168 = CFDictionaryCreate(0, keys, valuePtr, v121, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v169 = 0;
    do
    {
      v170 = *(valuePtr + v169);
      if (v170)
      {
        CFRelease(v170);
      }

      ++v169;
    }

    while (v121 != v169);
    values = v168;
    v173 = @"com.apple.cmm.ApplyFlexLumaScaling";
    v113 = CFDictionaryCreate(0, &v173, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v168)
    {
      CFRelease(v168);
    }

    if (!v113)
    {
      goto LABEL_108;
    }

    goto LABEL_41;
  }

  if (v108)
  {
    ResolveFlexTRCOptions = CGColorTransformCreateResolveFlexTRCOptions(v108);
    if (!ResolveFlexTRCOptions)
    {
      return;
    }

    v111 = ResolveFlexTRCOptions;
    v129 = CFGetTypeID(ResolveFlexTRCOptions);
    if (v129 != CFDictionaryGetTypeID())
    {
      goto LABEL_108;
    }

    v130 = CFDictionaryGetValue(v111, @"kCGApplyFlexTRC");
    if (!v130)
    {
      goto LABEL_108;
    }

    v131 = v130;
    v132 = CFGetTypeID(v130);
    if (v132 != CFDictionaryGetTypeID())
    {
      goto LABEL_108;
    }

    v133 = CFDictionaryGetValue(v131, @"kCGFlexGTCTargetHeadroom");
    if (!v133)
    {
      goto LABEL_108;
    }

    v134 = v133;
    v135 = CFGetTypeID(v133);
    if (v135 != CFNumberGetTypeID())
    {
      goto LABEL_108;
    }

    v136 = CFGetTypeID(v134);
    v137 = CFNumberGetTypeID();
    v138 = 0;
    if (v136 == v137)
    {
      LODWORD(v173) = 0;
      CFNumberGetValue(v134, kCFNumberFloatType, &v173);
      v138 = v173;
    }

    keys[0] = @"com.apple.cmm.FlexGTCTargetHeadroom";
    LODWORD(v173) = v138;
    *&valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, &v173);
    v139 = CFDictionaryCreate(0, keys, valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*&valuePtr[0])
    {
      CFRelease(*&valuePtr[0]);
    }

    values = v139;
    v173 = @"com.apple.cmm.ApplyFlexTRC";
    v140 = CFDictionaryCreate(0, &v173, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v139)
    {
      CFRelease(v139);
    }

    if (!v140)
    {
      goto LABEL_108;
    }

    CFDictionarySetValue(a1, @"com.apple.cmm.ApplyToneMaping", v140);
    v114 = v140;
    goto LABEL_42;
  }

  v141 = CFDictionaryGetValue(a2, @"kCGImageExtendedRangeToneMappingInfo");
  if (v141)
  {
    ResolveExtendedRangeToneMappingOptions = CGColorTransformCreateResolveExtendedRangeToneMappingOptions(v141);
    if (ResolveExtendedRangeToneMappingOptions)
    {
      v111 = ResolveExtendedRangeToneMappingOptions;
      colorsync_reference_white_tone_mapping_options = create_colorsync_extended_range_tone_mapping_options(ResolveExtendedRangeToneMappingOptions);
      if (!colorsync_reference_white_tone_mapping_options)
      {
        goto LABEL_108;
      }

      goto LABEL_40;
    }
  }
}

const void *CGCFDictionaryGetValueWithType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    if (CFGetTypeID(result) == a3)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sanitize_and_set_options(__CFDictionary *a1, const void *a2, const void *a3, CFNumberType a4)
{
  if (a3 && !CFDictionaryContainsKey(a1, a2))
  {
    if (a4)
    {
      if (a4 != kCFNumberSInt32Type && a4 != kCFNumberFloatType)
      {
        _CGHandleAssert("sanitize_and_set_options", 1430, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransform.c", "type == kCFNumberFloatType || type == kCFNumberSInt32Type || type == (CFNumberType)0", "Unexpected number type to verify", v8, v9, v10, v33);
      }

      v11 = CFGetTypeID(a3);
      if (v11 != CFNumberGetTypeID())
      {
        CGLog(2, "Value for %@ is not a number - ignored", v12, v13, v14, v15, v16, v17, a2);
        return;
      }

      valuePtr = 0;
      Value = CFNumberGetValue(a3, a4, &valuePtr);
      if (a4 == kCFNumberSInt32Type && valuePtr < 0)
      {
        CGLog(2, "Value for %@ is negative - ignored", v19, v20, v21, v22, v23, v24, a2);
        return;
      }

      if (!Value)
      {
        CFNumberGetType(a3);
        CGLog(2, "%@ has unsupported value type = %s instead of %s - errors may occur", v25, v26, v27, v28, v29, v30, a2);
        v31 = CFNumberCreate(0, a4, &valuePtr);
        v32 = v31;
        if (a1 && a2 && v31)
        {
          CFDictionarySetValue(a1, a2, v31);
        }

        else if (!v31)
        {
          return;
        }

        CFRelease(v32);
        return;
      }

      if (a1)
      {
        if (a2)
        {
          CFDictionarySetValue(a1, a2, a3);
        }
      }
    }

    else if (a1 && a2)
    {

      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

uint64_t colorspace_from_ICC_data_data_key_hash(__int128 *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  return MEMORY[0x1865EEA10](&v2, 16);
}

CFTypeID CGColorGetTypeID(void)
{
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  return CGColorGetTypeID_color_type_id;
}

uint64_t (*__copy_icc_profile_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  copy_icc_profile_description_f = v1;
  return result;
}

uint64_t cs_hash(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = veor_s8(v1[8], *&vextq_s8(*v1[8].i8, *v1[8].i8, 8uLL));
      return (v2.i32[0] ^ v2.i32[1]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGColorTransformConvertColor(void *a1, unint64_t a2, uint64_t a3)
{
  v69[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  v7 = 0;
  if (!a2 || v6 != CGColorTransformGetTypeID_type_id)
  {
    return v7;
  }

  Cache = CGColorTransformGetCache(a1);
  if (Cache && (v10 = Cache[2]) != 0)
  {
    v68[0] = Cache[2];
    v11 = *(*(v10 + 3) + 48);
  }

  else
  {
    v68[0] = 0;
    v11 = 0;
  }

  v12 = MEMORY[0x1EEE9AC00](8 * (v11 + 1), v9);
  v15 = (v68 - v14);
  if (v13 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v16 = (v68 - v14);
  }

  else
  {
    v16 = 0;
  }

  if (v13 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v16 = malloc_type_malloc(v12, 0x71B97807uLL);
  }

  v17 = CGColorTransformGetCache(a1);
  if (v17)
  {
    v18 = v17[2];
  }

  else
  {
    v18 = 0;
  }

  v68[1] = v68;
  ContentHeadroom = CGColorGetContentHeadroom(a2);
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(v18, 0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(a2, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    ColorSpace = *(a2 + 24);
  }

  Attributes = CGColorTransformGetAttributes(a1);
  v30 = Attributes;
  if (!Attributes)
  {
    v33 = 0;
    goto LABEL_34;
  }

  v31 = CFGetTypeID(Attributes);
  if (v31 != CFDictionaryGetTypeID())
  {
LABEL_32:
    v33 = 0;
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(v30, @"kCGColorConversionInfoOptions");
  v33 = Value;
  if (Value)
  {
    v34 = CFGetTypeID(Value);
    if (v34 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(v33, @"kCGApplyReferenceWhiteToneMapping"))
      {
        v35 = @"kCGApplyReferenceWhiteToneMapping";
        LODWORD(v30) = 2;
LABEL_31:
        v33 = CFDictionaryGetValue(v33, v35);
        goto LABEL_34;
      }

      if (CFDictionaryContainsKey(v33, @"kCGApplyFlexLumaScaling"))
      {
        v35 = @"kCGApplyFlexLumaScaling";
        LODWORD(v30) = 1;
        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  LODWORD(v30) = 0;
LABEL_34:
  v36 = CGToneMappingConstrainedHeadroomRequested(v30, v33);
  if (ContentHeadroom > 1.0 && HeadroomInfo > 0.0 && (ContentHeadroom > HeadroomInfo) | v36 & 1)
  {
    v69[0] = 0;
    v44 = CGColorConversionInfoCreateForToneMapping(ColorSpace, v18, v30, v33, v69, ContentHeadroom, HeadroomInfo);
    if (v69[0])
    {
      v45 = CFErrorCopyDescription(v69[0]);
      CGLog(2, "convert_color_components failed: %@", v46, v47, v48, v49, v50, v51, v45);
      CFRelease(v45);
      CFRelease(v69[0]);
      v59 = 0;
    }

    else
    {
      Components = CGColorGetComponents(a2);
      v59 = CGColorConversionInfoConvertColorComponents(v44, Components, v16);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    if ((v59 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v60 = CGTaggedColorGetColorSpace(a2, v37, v38, v39, v40, v41, v42, v43);
    }

    else
    {
      v60 = *(a2 + 24);
    }

    v61 = CGColorGetComponents(a2);
    if ((CGColorTransformConvertColorComponents(a1, v60, a3, v61, v16) & 1) == 0)
    {
LABEL_57:
      if (v16 != v15)
      {
        free(v16);
      }

      return 0;
    }
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    Alpha = CGTaggedColorGetAlpha(a2, v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    Alpha = *(a2 + 8 * *(a2 + 56) + 64);
  }

  v16[v11] = Alpha;
  v63 = CGColorTransformGetCache(a1);
  if (v63)
  {
    v63 = *(v63 + 2);
  }

  if (CGColorSpaceSupportsHDR(v63))
  {
    v64 = CGColorGetContentHeadroom(a2);
    v65 = CGColorCreateWithContentHeadroom(v68[0], v64, *v16, v16[1], v16[2], v16[3]);
  }

  else
  {
    v65 = CGColorCreate(v68[0], v16);
  }

  v7 = v65;
  if (v16 != v15)
  {
    free(v16);
  }

  return v7;
}

BOOL CGConditionalVarWait(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CGHandleAssert("CGConditionalVarWait", 43, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Utilities/CGConditionalVar.c", "cvar != NULL", "Conditional variable is NULL", a6, a7, a8, v10);
  }

  if (pthread_mutex_lock(a1))
  {
    return 0;
  }

  while ((*(a1 + 112) & 1) == 0)
  {
    if (pthread_cond_wait((a1 + 64), a1))
    {
      return 0;
    }
  }

  return pthread_mutex_unlock(a1) == 0;
}

void cache_entry_release(char *a1)
{
  if (a1)
  {
    for (i = 24; i != 64; i += 8)
    {
      v3 = *&a1[i];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    free(a1);
  }
}

void converter_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      CFRelease(v4);
    }

    CGColorSyncTransformCacheRelease(*(a1 + 88));
    v5 = *(a1 + 96);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 216);
    if (v7)
    {

      free(v7);
    }
  }
}

void __CGColorSpaceCreateDisplayP3_block_invoke()
{
  CGColorSpaceCreateDisplayP3_space = create_singleton(color_space_state_create_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedDisplayP3");
  v0 = CGColorSpaceCreateDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
}

char *color_space_state_create_display_p3()
{
  if (color_space_state_create_display_p3_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_display_p3_cglibrarypredicate, &__block_literal_global_32_1743);
  }

  v0 = color_space_state_create_display_p3_f;
  if (color_space_state_create_display_p3_cglibrarypredicate_33 != -1)
  {
    dispatch_once(&color_space_state_create_display_p3_cglibrarypredicate_33, &__block_literal_global_36);
  }

  v1 = v0(color_space_state_create_display_p3_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3";
    *(icc_with_profile + 5) = 7;
    *(*(icc_with_profile + 12) + 40) = @"Display P3";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_display_p3_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_display_p3_f = v1;
  return result;
}

uint64_t *__color_space_state_create_display_p3_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDisplayP3Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_display_p3_s = v1;
  return result;
}

CGColorSpaceRef __create_resolved_device_space_block_invoke()
{
  create_resolved_device_space_gray = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  create_resolved_device_space_sRGB = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  create_resolved_device_space_cmyk = result;
  return result;
}

uint64_t CGColorSpaceLinearSRGB()
{
  if (CGColorSpaceLinearSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceLinearSRGB_predicate, &__block_literal_global_279);
  }

  v0 = CGColorSpaceLinearSRGB_space;
  if (CGColorSpaceLinearSRGB_space)
  {
    CFRetain(CGColorSpaceLinearSRGB_space);
  }

  return v0;
}

CFTypeRef CGCMSUtilsCreateLinearSRGBProfile()
{
  if (CGCMSUtilsCreateLinearSRGBProfile_once != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearSRGBProfile_once, &__block_literal_global_159);
  }

  result = CGCMSUtilsCreateLinearSRGBProfile_linear_profile;
  if (CGCMSUtilsCreateLinearSRGBProfile_linear_profile)
  {

    return CFRetain(result);
  }

  return result;
}

char *color_space_state_create_linear_srgb()
{
  LinearSRGBProfile = CGCMSUtilsCreateLinearSRGBProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearSRGBProfile, 0, v1, v2, v3, v4, v5, v6);
  if (LinearSRGBProfile)
  {
    CFRelease(LinearSRGBProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceLinearSRGB";
    *(icc_with_profile + 5) = 17;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1 Linear";
  }

  return icc_with_profile;
}

void __CGColorSpaceLinearSRGB_block_invoke()
{
  CGColorSpaceLinearSRGB_space = create_singleton(color_space_state_create_linear_srgb);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearSRGB");
  v0 = CGColorSpaceLinearSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

void __CGCMSUtilsCreateLinearSRGBProfile_block_invoke()
{
  v68 = *MEMORY[0x1E69E9840];
  if (_block_invoke_cglibrarypredicate != -1)
  {
    dispatch_once(&_block_invoke_cglibrarypredicate, &__block_literal_global_162);
  }

  v0 = _block_invoke_f;
  if (_block_invoke_cglibrarypredicate_164 != -1)
  {
    dispatch_once(&_block_invoke_cglibrarypredicate_164, &__block_literal_global_167);
  }

  v1 = v0(_block_invoke_s);
  if (v1)
  {
    v2 = v1;
    v33 = 0x3FE47AE147AE147BLL;
    v32 = 0x3FD51EB851EB851FLL;
    v31 = 0x3FD3333333333333;
    v30 = 0x3FE3333333333333;
    v29 = 0x3FC3333333333333;
    v28 = 0x3FAEB851EB851EB8;
    v27 = 0x3FD40346DC5D6388;
    v26 = 0x3FD50E5604189375;
    keys[10] = xmmword_1E6E062A8;
    keys[11] = *off_1E6E062B8;
    v67 = @"createImmutableCopy";
    keys[6] = xmmword_1E6E06268;
    keys[7] = *&off_1E6E06278;
    keys[8] = xmmword_1E6E06288;
    keys[9] = *&off_1E6E06298;
    keys[2] = xmmword_1E6E06228;
    keys[3] = *&off_1E6E06238;
    keys[4] = xmmword_1E6E06248;
    keys[5] = *&off_1E6E06258;
    keys[0] = xmmword_1E6E06208;
    keys[1] = *&off_1E6E06218;
    valuePtr = 0;
    v23 = 0;
    v24 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v64 = 0u;
    v65 = 0u;
    *values = 0u;
    v63 = 0u;
    values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    values[1] = CFNumberCreate(0, kCFNumberDoubleType, &v24);
    *&v63 = CFNumberCreate(0, kCFNumberDoubleType, &v23);
    *(&v63 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v22);
    *&v64 = CFNumberCreate(0, kCFNumberDoubleType, &v21);
    *(&v64 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v20);
    *&v65 = CFNumberCreate(0, kCFNumberDoubleType, &v19);
    *(&v65 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v18);
    v3 = CFArrayCreate(0, values, 8, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 8; ++i)
    {
      v5 = values[i];
      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (_block_invoke_cglibrarypredicate_209 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_209, &__block_literal_global_212);
    }

    v6 = _block_invoke_f_208(v2, @"rXYZ");
    if (_block_invoke_cglibrarypredicate_215 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_215, &__block_literal_global_218);
    }

    v7 = _block_invoke_f_214(v2, @"gXYZ");
    if (_block_invoke_cglibrarypredicate_220 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_220, &__block_literal_global_223);
    }

    v8 = _block_invoke_f_219(v2, @"bXYZ");
    v60 = 0u;
    v61 = 0u;
    v59[0] = CFNumberCreate(0, kCFNumberSInt16Type, &_block_invoke_iccDate);
    v59[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A2);
    v59[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A4);
    v59[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A6);
    v59[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A8);
    v59[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4AA);
    v9 = CFArrayCreate(*MEMORY[0x1E695E480], v59, 6, MEMORY[0x1E695E9C0]);
    for (j = 0; j != 6; ++j)
    {
      v11 = v59[j];
      if (v11)
      {
        CFRelease(v11);
      }
    }

    *bytes = 1885563235;
    LODWORD(v35) = 16779265;
    v12 = CFDataCreate(0, bytes, 12);
    *bytes = @"displayRGB";
    v35 = @"4.0";
    v36 = @"sRGB IEC61966-2.1 Linear";
    v37 = v3;
    v38 = v3;
    v39 = v3;
    v40 = v9;
    v41 = CFNumberCreate(0, kCFNumberDoubleType, &v33);
    v42 = CFNumberCreate(0, kCFNumberDoubleType, &v32);
    v43 = CFNumberCreate(0, kCFNumberDoubleType, &v31);
    v44 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
    v45 = CFNumberCreate(0, kCFNumberDoubleType, &v29);
    v46 = CFNumberCreate(0, kCFNumberDoubleType, &v28);
    v47 = CFNumberCreate(0, kCFNumberDoubleType, &v27);
    v13 = CFNumberCreate(0, kCFNumberDoubleType, &v26);
    v14 = *MEMORY[0x1E695E4D0];
    v48 = v13;
    v49 = v14;
    v50 = v14;
    v51 = v14;
    v52 = v14;
    v53 = v14;
    v54 = v6;
    v55 = v7;
    v56 = v8;
    v57 = v12;
    v58 = v14;
    v15 = CFDictionaryCreate(0, keys, bytes, 25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (_block_invoke_cglibrarypredicate_231 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_231, &__block_literal_global_234);
    }

    CGCMSUtilsCreateLinearSRGBProfile_linear_profile = _block_invoke_f_230(v15);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    for (k = 56; k != 120; k += 8)
    {
      v17 = *&bytes[k];
      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v2);
  }
}

uint64_t *__CGCMSUtilsCreateLinearSRGBProfile_block_invoke_3()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  _block_invoke_s = v1;
  return result;
}

uint64_t CGColorSpaceExtendedLinearSRGB()
{
  if (CGColorSpaceExtendedLinearSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedLinearSRGB_predicate, &__block_literal_global_282_6556);
  }

  v0 = CGColorSpaceExtendedLinearSRGB_space;
  if (CGColorSpaceExtendedLinearSRGB_space)
  {
    CFRetain(CGColorSpaceExtendedLinearSRGB_space);
  }

  return v0;
}

void __CGColorSpaceExtendedLinearSRGB_block_invoke()
{
  CGColorSpaceExtendedLinearSRGB_space = create_singleton(color_space_state_create_extended_linear_srgb);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceExtendedLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedLinearSRGB_space);
  v0 = CGColorSpaceExtendedLinearSRGB_space;
  v1 = CGColorSpaceExtendedLinearSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", v1);
}

char *color_space_state_create_extended_linear_srgb()
{
  LinearSRGBProfile = CGCMSUtilsCreateLinearSRGBProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearSRGBProfile, 1, v1, v2, v3, v4, v5, v6);
  if (LinearSRGBProfile)
  {
    CFRelease(LinearSRGBProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedLinearSRGB";
    *(icc_with_profile + 5) = 18;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1 Linear";
  }

  return icc_with_profile;
}

void *CGFontGetGlyphAdvancesForStyle(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    font_info = get_font_info(result);
    if (font_info)
    {
      if (font_info[104])
      {
        a3 = a3 & 0xFFFFFFFE;
      }

      else
      {
        a3 = a3;
      }
    }

    v13 = *(v11[2] + 312);
    v14 = v11[14];

    return v13(v14, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t get_glyph_advances(uint64_t a1, float64x2_t *a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, __n128 a7)
{
  result = 0;
  if (a1)
  {
    v9 = a6;
    if (a6)
    {
      v10 = a5;
      v11 = a4;
      if (a4 || !a5)
      {
        if (a5)
        {
          if (a3)
          {
            get_glyph_ideal_advances(a1, a4, a5, a6, a7);
            if (a2)
            {
              v17 = vdupq_lane_s64(COERCE__INT64(FPFontGetUnitsPerEm()), 0);
              v18 = vdivq_f64(*a2, v17);
              v19 = vdivq_f64(a2[1], v17);
              v20 = v9;
              v21 = v10;
              do
              {
                *v20 = vmlaq_n_f64(vmulq_n_f64(v19, v20[1]), v18, *v20);
                v20 += 2;
                --v21;
              }

              while (v21);
            }

            if ((a3 & 4) == 0)
            {
              do
              {
                *v9 = vrndaq_f64(*v9);
                ++v9;
                --v10;
              }

              while (v10);
            }
          }

          else
          {
            v14 = (a6 + 8);
            do
            {
              v11 += 2;
              FPFontGetGlyphDeviceAdvance();
              *(v14 - 1) = v15;
              *v14 = v16;
              v14 += 2;
              --v10;
            }

            while (v10);
          }
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void get_glyph_ideal_advances(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v38[64] = *MEMORY[0x1E69E9840];
  v34[1] = *(a1 + 8);
  v7 = (a1 + 16);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v36 = a4;
  if (!explicit)
  {
    v9 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
    explicit = v9;
    v10 = 0;
    *v9 = 0x7FFF;
    atomic_compare_exchange_strong(v7, &v10, v9);
    if (v10)
    {
      CGFontIndexMapRelease(v9);
      explicit = v10;
    }

    a4 = v36;
  }

  v11 = 0;
  v12 = 0;
  v35 = 10 * a3;
  v13 = explicit + 4;
  v14 = (a4 + 8);
  v15 = &v37;
  v16 = v38;
  do
  {
    v17 = *(a2 + 2 * v11);
    if (v17 == 0xFFFF)
    {
      v18 = 0;
      goto LABEL_20;
    }

    v18 = *(a2 + 2 * v11);
    if (explicit != -1)
    {
      if (!explicit)
      {
        v18 = -1;
LABEL_20:
        a5.n128_f64[0] = v18;
        *(v14 - 1) = v18;
        *v14 = 0.0;
        goto LABEL_21;
      }

      v19 = atomic_load((v13 + ((v17 >> 7) & 0x1F8)));
      if (v19)
      {
        v18 = *(v19 + 2 * (v17 & 0x3FF));
      }

      else
      {
        v18 = *explicit;
      }
    }

    if (v18 != 0x7FFF)
    {
      v18 = v18;
      goto LABEL_20;
    }

    if (a3 >= 0x41 && !v12)
    {
      v20 = v13;
      v21 = malloc_type_malloc(v35, 0x100004000313F17uLL);
      v13 = v20;
      v16 = v21;
      v15 = &v21[a3];
    }

    v16[v12] = v11;
    *(v15 + v12++) = v17;
LABEL_21:
    ++v11;
    v14 += 2;
  }

  while (a3 != v11);
  if (v12)
  {
    v22 = MEMORY[0x1EEE9AC00](8 * v12, a5);
    v25 = v34 - v24;
    if (v23 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v26 = v34 - v24;
    }

    else
    {
      v26 = 0;
    }

    if (v23 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000042)
    {
      v26 = malloc_type_malloc(v22, 0x4D13887CuLL);
    }

    FPFontGetGlyphIdealAdvanceWidths();
    v27 = 0;
    v28 = v36;
    do
    {
      v29 = v16[v27];
      v30 = *&v26[8 * v27];
      if (v30 != 32767.0 && v30 >= -32768.0 && v30 <= 32767.0)
      {
        v32 = v30;
        if (v30 == v32)
        {
          CGFontIndexMapAddIndex(explicit, *(a2 + 2 * v29), v30);
          v28 = v36;
          v30 = v32;
        }
      }

      v33 = v28 + 16 * v29;
      *v33 = v30;
      *(v33 + 8) = 0;
      ++v27;
    }

    while (v12 != v27);
    if (v26 != v25)
    {
      free(v26);
    }

    if (v16 != v38)
    {
      free(v16);
    }
  }
}

unsigned __int16 *CGFontIndexMapAddIndex(unsigned __int16 *result, unsigned int a2, unsigned __int16 a3)
{
  if (result + 1 >= 2)
  {
    v4 = a2;
    v5 = result;
    v6 = a2 >> 10;
    v7 = (result + 4);
    result = atomic_load_explicit(&result[4 * v6 + 4], memory_order_acquire);
    if (!result)
    {
      result = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
      v8 = 0;
      v9 = *v5;
      do
      {
        atomic_store(v9, &result[v8++]);
      }

      while (v8 != 1024);
      v10 = 0;
      atomic_compare_exchange_strong(&v7[8 * v6], &v10, result);
      if (v10)
      {
        free(result);
        result = v10;
      }
    }

    result[v4 & 0x3FF] = a3;
  }

  return result;
}

uint64_t CGGradientCreateWithColorsAndOptions(CGColorSpace *a1, uint64_t a2, double *a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v14 = "CGGradientCreateWithColors: non-NULL CFArrayRef with colors is required";
LABEL_8:
    CGPostError(v14, a2, a3, a4, a5, a6, a7, a8, v57);
    return 0;
  }

  v10 = a2;
  v11 = a1;
  if (!validate_gradient_color_space(a1, "CGGradientCreateWithColors"))
  {
    return 0;
  }

  Count = CFArrayGetCount(v10);
  if (!Count)
  {
    v14 = "CGGradientCreateWithColors: CFArrayRef with colors cannot be empty";
    goto LABEL_8;
  }

  v13 = Count;
  if (v11)
  {
    CFRetain(v11);
    goto LABEL_12;
  }

  v11 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericRGB");
  if (!v11)
  {
    return 0;
  }

LABEL_12:
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  v17 = 0;
  v18 = 0;
  v19 = CGColorGetTypeID_color_type_id;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v18);
      if (!ValueAtIndex)
      {
        goto LABEL_51;
      }

      v21 = ValueAtIndex;
      if (CFGetTypeID(ValueAtIndex) != v19)
      {
        goto LABEL_51;
      }

      v29 = (v21 & 0x8000000000000000) != 0 ? CGTaggedColorGetColorSpace(v21, v22, v23, v24, v25, v26, v27, v28) : *(v21 + 24);
      if (((CFEqual(v29, v11) != 0) & ~v17) == 0)
      {
        break;
      }

      v17 = 0;
      if (++v18 == v13)
      {
        v31 = 0;
        goto LABEL_33;
      }
    }

    if (!CGColorSpaceSupportsOutput(v11))
    {
      CGColorSpaceGetType(v11);
      Type = CGColorSpaceGetType(v29);
      if (Type > 0xB)
      {
        v56 = "Unknown";
      }

      else
      {
        v56 = off_1E6E34408[Type];
      }

      CGPostError("CGGradientCreateWithColors: unsupported color conversion from %s type to %s type", v49, v50, v51, v52, v53, v54, v55, v56);
LABEL_51:
      CGColorSpaceRelease(v11);
      return 0;
    }

    ++v18;
    v17 = 1;
  }

  while (v18 != v13);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v31 = Mutable;
  for (i = 0; i != v13; ++i)
  {
    v34 = CFArrayGetValueAtIndex(v10, i);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v11, kCGRenderingIntentDefault, v34, 0);
    CFArraySetValueAtIndex(v31, i, CopyByMatchingToColorSpace);
    if (CopyByMatchingToColorSpace)
    {
      CFRelease(CopyByMatchingToColorSpace);
    }
  }

  v10 = v31;
LABEL_33:
  v36 = *(*(v11 + 3) + 48) + 1;
  v37 = MEMORY[0x1EEE9AC00](8 * v36 * v13, v30);
  if (v38 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v41 = (&v57 - v39);
  }

  else
  {
    v41 = 0;
  }

  v58 = (&v57 - v39);
  v59 = v40;
  if (v38 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v41 = malloc_type_malloc(v37, 0x97B521CAuLL);
  }

  v42 = 0;
  v43 = 8 * v36;
  ContentHeadroom = 0.0;
  v57 = v41;
  do
  {
    v45 = CFArrayGetValueAtIndex(v10, v42);
    if (ContentHeadroom <= CGColorGetContentHeadroom(v45))
    {
      ContentHeadroom = CGColorGetContentHeadroom(v45);
    }

    Components = CGColorGetComponents(v45);
    memmove(v41, Components, v43);
    ++v42;
    v41 = (v41 + v43);
  }

  while (v13 != v42);
  v47 = v57;
  gradient = create_gradient(v11, v57, a3, v13, a4, ContentHeadroom);
  CGColorSpaceRelease(v11);
  if (v47 != v58)
  {
    free(v47);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return gradient;
}

uint64_t __CGColorSpaceCreateGenericRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_rgb);
  CGColorSpaceCreateGenericRGB_space = result;
  return result;
}

char *color_space_state_create_generic_rgb()
{
  if (color_space_state_create_generic_rgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_cglibrarypredicate, &__block_literal_global_10_1731);
  }

  v0 = color_space_state_create_generic_rgb_f;
  if (color_space_state_create_generic_rgb_cglibrarypredicate_11 != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_cglibrarypredicate_11, &__block_literal_global_14);
  }

  v1 = v0(color_space_state_create_generic_rgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericRGB";
    *(*(icc_with_profile + 12) + 40) = @"Generic RGB Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_rgb_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_rgb_f = v1;
  return result;
}

uint64_t *__color_space_state_create_generic_rgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_rgb_s = v1;
  return result;
}

void CGPathAddArc(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, BOOL clockwise)
{
  if (path)
  {
    v13 = clockwise;
    v20 = path;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v21 = CFGetTypeID(path), path = CGPathGetTypeID(), v21 == path))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, clockwise, v8, v9, v10, v11, v12, v31);
      }

      {
        if (fabs(startAngle) > 6283.18531 || fabs(endAngle) > 6283.18531)
        {
          CGPostError("%s: invalid value for start or end angle.", v22, v23, v24, v25, v26, v27, v28, "CGPathAddArc");
        }

        else
        {
          v29.x = x;
          v29.y = y;
          CG::Path::add_arc((v20 + 16), &v29, radius, startAngle, endAngle, v13, m, v25, v26, v27, v28);
        }
      }
    }
  }
}

void CG::Path::add_arc(CG::Path *this, float64x2_t *a2, float64_t a3, double a4, double a5, int a6, CGAffineTransform *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((*this - 10) <= 0xFFFFFFF6)
  {
    v12 = a5 + -6.28318531;
    if (a4 == 0.0 && a5 >= 6.28318531 && v12 < 0.000001 && a6 != 0)
    {
      v17.origin = vsubq_f64(*a2, vdupq_lane_s64(*&a3, 0));
      v17.size.width = a3 + a3;
      v17.size.height = a3 + a3;
      v14 = 1;
LABEL_16:
      CG::Path::append_ellipse(this, &v17, 0, v14, a7);
      return;
    }

    if (a4 == 0.0 && fabs(v12) < 0.000001 && a6 == 0)
    {
      v17.origin = vsubq_f64(*a2, vdupq_lane_s64(*&a3, 0));
      v17.size.width = a3 + a3;
      v17.size.height = a3 + a3;
      v14 = 0;
      goto LABEL_16;
    }
  }

  if (a6)
  {
    if (a4 < a5)
    {
      a4 = a4 + ceil((a4 - a5) / -6.28318531) * 6.28318531;
      if (a4 < a5)
      {
        _CGHandleAssert("add_arc", 35, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path-subpath-arc.cc", "start >= end", "clockwise: start angle %f not less than end angle %f", a9, a10, a11, SLOBYTE(a4));
      }
    }
  }

  else if (a5 < a4)
  {
    a5 = a5 + ceil((a5 - a4) / -6.28318531) * 6.28318531;
    if (a5 < a4)
    {
      _CGHandleAssert("add_arc", 41, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path-subpath-arc.cc", "end >= start", "widdershins: end angle %f not less than start angle %f", a9, a10, a11, SLOBYTE(a5));
    }
  }

  v16 = a5 - a4;

  CG::Path::add_arc_relative(this, a2, a3, a4, v16, a7, 0);
}

void CG::Path::add_arc_relative(CG::Path *this, float64x2_t *a2, float64_t a3, double a4, double a5, float64x2_t *a6, int a7)
{
  v9 = a5;
  v13 = *this;
  if (*this || (v14 = fabs(a5), v14 > 7.85398163))
  {
    v15 = fabs(a5);
    v17 = __sincos_stret(a4);
    v18 = v17.__cosval * a3;
    v19 = v17.__sinval * a3;
    v20.n128_f64[0] = v17.__cosval * a3 + a2->f64[0];
    v20.n128_f64[1] = v17.__sinval * a3 + a2->f64[1];
    v21 = (v13 - 10) >= 0xFFFFFFF7 && a7 == 0;
    v52 = v20;
    if (v21)
    {
      CG::Path::add_line_to_point(this, a6, v16, v20);
    }

    else
    {
      CG::Path::move_to_point(this, a6, v16, v20);
    }

    v23 = 1.57079633;
    if (v15 >= 1.57079633)
    {
      v58 = dbl_18439CF50[v9 >= 0.0];
      v57 = dbl_18439CF60[v9 >= 0.0];
      v54 = v9;
      v55 = -v57;
      v28 = v9;
      v26 = a4;
      v27 = v52;
      do
      {
        v29 = v23;
        if (v54 < 0.0)
        {
          v25 = v19;
        }

        else
        {
          v25 = -v19;
        }

        if (v54 < 0.0)
        {
          v24 = -v18;
        }

        else
        {
          v24 = v18;
        }

        v30.f64[0] = v27.x + v55 * v19;
        v30.f64[1] = v27.y + v57 * v18;
        v31 = v24 + a2->f64[1];
        v61.x = v25 + a2->f64[0];
        v61.y = v31;
        v60.x = v61.x + v57 * v24;
        v60.y = v31 + v55 * v25;
        CG::Path::add_curve_to_point(this, &v60, &v61, a6, v22, v30);
        v23 = v29;
        v26 = v58 + v26;
        v9 = v28 - v58;
        v27 = v61;
        v15 = vabdd_f64(v28, v58);
        v28 = v28 - v58;
        v18 = v25;
        v19 = v24;
      }

      while (v15 >= v23);
    }

    else
    {
      v24 = v17.__sinval * a3;
      v25 = v17.__cosval * a3;
      v26 = a4;
      v27 = v52;
    }

    if (v15 > 0.00000001)
    {
      v32 = v26;
      v53 = v27;
      v33 = __sincos_stret(v9 * 0.5);
      v34 = (1.0 - v33.__cosval) * 4.0 / (v33.__sinval * 3.0);
      v35 = __sincos_stret(v9 + v32);
      v36.f64[0] = v53.x - v34 * v24;
      v36.f64[1] = v53.y + v34 * v25;
      v37 = v35.__sinval * a3 + a2->f64[1];
      v61.x = v35.__cosval * a3 + a2->f64[0];
      v61.y = v37;
      v60.x = v61.x + v34 * (v35.__sinval * a3);
      v60.y = v37 - v34 * (v35.__cosval * a3);
      CG::Path::add_curve_to_point(this, &v60, &v61, a6, v38, v36);
    }
  }

  else
  {
    v39 = v14;
    if (v14 >= 1.57079633)
    {
      v39 = v14;
      do
      {
        v39 = v39 + -1.57079633;
      }

      while (v39 >= 1.57079633);
    }

    v40 = v39 * 0.25;
    v41.f64[0] = 0.0;
    v41.f64[1] = a3;
    v56 = v41;
    v59 = *a2;
    v42 = __sincos_stret(a4);
    v43 = vmlaq_n_f64(vmulq_n_f64(v56, v42.__sinval), *&a3, v42.__cosval);
    v44 = vmlsq_lane_f64(vmulq_n_f64(v56, v42.__cosval), *&a3, v42.__sinval, 0);
    v45 = vaddq_f64(v59, vmlaq_f64(vmulq_f64(v56, 0), 0, *&a3));
    v46 = vdup_n_s32(v9 < 0.0);
    v47.i64[0] = v46.u32[0];
    v47.i64[1] = v46.u32[1];
    v48 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v47, 0x3FuLL)), vnegq_f64(v44), v44);
    *this = 6;
    *(this + 7) = v14;
    if (a6)
    {
      v49 = a6[1];
      v45 = vaddq_f64(a6[2], vmlaq_n_f64(vmulq_laneq_f64(v49, v45, 1), *a6, v45.f64[0]));
      v43 = vmlaq_n_f64(vmulq_laneq_f64(v49, v43, 1), *a6, v43.f64[0]);
      v48 = vmlaq_n_f64(vmulq_laneq_f64(v49, v48, 1), *a6, v48.f64[0]);
    }

    *(this + 8) = v43;
    *(this + 24) = v48;
    *(this + 40) = v45;
    *(this + 8) = cos(v9);
    *(this + 9) = sin(v14);
    *(this + 10) = tan(v40) * 1.33333333;
  }
}

void CGContextSetFlatness(CGContextRef c, CGFloat flatness)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (flatness >= 0.0)
    {
      v9 = *(c + 12);
      if (*(*(v9 + 144) + 8) != flatness)
      {
        maybe_copy_device_state(*(c + 12));
        *(*(v9 + 144) + 8) = flatness;
      }
    }

    else
    {
      CGPostError("%s: invalid flatness: %g", c, v2, v3, v4, v5, v6, v7, "CGContextSetFlatness");
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFlatness", c, v2, v3, v4, v5, v6, v7);
  }
}

unint64_t CGBitmapAllocateData(unint64_t a1)
{
  if (a1 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v2 = (a1 + *MEMORY[0x1E69E9AC8] + 48) & -*MEMORY[0x1E69E9AC8];
  v3 = mmap(0, v2, 3, 4098, 872415232, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  result = (v3 + 48) & 0xFFFFFFFFFFFFFFE0;
  *(result - 16) = v2;
  *(result - 8) = result - v4;
  return result;
}

void CGContextClearRect(CGContextRef c, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(c);
  CGContextSetCompositeOperation(c, 0, v7, v8, v9, v10, v11, v12);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextFillRect(c, v14);

  CGContextRestoreGState(c);
}

void CGContextSetCompositeOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = 0;

    goto LABEL_9;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v10 = a1;

LABEL_9:
    handle_invalid_context("CGContextSetCompositeOperation", v10, a3, a4, a5, a6, a7, a8);
    return;
  }

  if (a2 >= 0x1C)
  {
    CGPostError("%s: invalid composite operation %d", a2, a3, a4, a5, a6, a7, a8, "CGContextSetCompositeOperation");
  }

  else
  {
    v9 = *(a1 + 96);

    CGGStateSetCompositeOperation(v9, a2);
  }
}

void CGContextFillRects(CGContextRef c, const CGRect *rects, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v11 = *(c + 21);
      if (v11)
      {
        CFRelease(v11);
        *(c + 21) = 0;
      }

      if (rects)
      {
        if (count)
        {
          v12 = *(c + 5);
          if (v12)
          {
            v13 = *(v12 + 64);
            if (!v13 || v13() == 1006)
            {
              CGContextAddRects(c, rects, count);

              CGContextDrawPath(c, kCGPathFill);
            }
          }
        }
      }

      return;
    }

    v14 = c;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextFillRects", v14, count, v3, v4, v5, v6, v7);
}

uint64_t ripc_DrawRects(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double *a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(a1 + 288);
  }

  else
  {
    v10 = 0;
  }

  result = 1000;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v12 = 0;
      v13 = 4;
    }

    else
    {
      v12 = 0;
      v13 = 2;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v12 = 1;
        v13 = 1;
        break;
      case 3:
        v12 = 0;
        v13 = 3;
        break;
      case 4:
        v12 = 0;
        v13 = 5;
        break;
      default:
        return result;
    }
  }

  memset(v27, 0, sizeof(v27));
  v25 = 0;
  result = ripc_GetRenderingState(v10, a2, a3, v27);
  if (result)
  {
    v17.n128_u64[0] = *(*(a3 + 144) + 8);
    v24 = *(v10 + 24);
    v18 = *(v10 + 40);
    v23[0] = v17.n128_u64[0];
    v23[1] = v18;
    if (*(a2 + 81) == 1)
    {
      v19 = *(*(a3 + 120) + 7) & 1;
    }

    else
    {
      v19 = 0;
    }

    LOBYTE(v25) = v19;
    v26 = &v27[1] + 8;
    if ((v12 & 1) == 0)
    {
      v20 = *(v10 + 56);
      if (!v20)
      {
        v20 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v20 = RIPRenderCreate_ripr_class;
        v20[2] = 1;
        *(v20 + 2) = 0;
        *(v10 + 56) = v20;
      }

      RIPRenderRectangles(v20, v23, (a3 + 24), a5, a6, 0);
    }

    if (v13)
    {
      memset(v22, 0, sizeof(v22));
      ripc_GetRenderStroke(a3, v22, (a3 + 24));
      v21 = *(v10 + 64);
      if (!v21)
      {
        v21 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v21 = RIPRenderCreate_ripr_class;
        v21[2] = 1;
        *(v21 + 2) = 0;
        *(v10 + 64) = v21;
      }

      RIPRenderRectangles(v21, v23, (a3 + 24), a5, a6, v22);
    }

    ripc_Render(v10, a2, a3, v27, v13, v14, v15, v16, v17);
    return 0;
  }

  return result;
}

void *RIPRenderRectangles(void *result, uint64_t a2, double *a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = a5;
    if (a5)
    {
      if (a4 && a2 && *result)
      {
        v10 = *a3;
        v9 = a3[1];
        v11 = a3[2];
        v12 = a3[3];
        v13 = v12 == 0.0 && *a3 == 0.0;
        if (v13)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          v15 = v11 == 0.0 && v9 == 0.0;
          v14 = v15;
        }

        v16 = a3[4];
        v17 = a3[5];
        if (!a6 && a5 == 1 && v15 && !result[2])
        {
          v30 = *(a2 + 8);
          v31 = v16 * v30;
          v32 = v17 * v30;
          v33 = *a4;
          v34 = a4[1];
          if (v14)
          {
            v35 = v10 * v30;
            v36 = v12 * v30;
            v37 = v31 + v10 * v30 * v33;
            v38 = v32 + v36 * v34;
            v39 = a4[2];
            v40 = a4[3];
          }

          else
          {
            v35 = v11 * v30;
            v36 = v9 * v30;
            v37 = v31 + v11 * v30 * v34;
            v38 = v32 + v36 * v33;
            v40 = a4[2];
            v39 = a4[3];
          }

          v47 = v37 + v35 * v39;
          v48 = v38 + v36 * v40;
          if (v37 <= v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = v37;
          }

          if (v37 > v47)
          {
            v37 = v47;
          }

          if (v37 < -4194303.0)
          {
            v37 = -4194303.0;
          }

          v50.f64[0] = v37 * 256.0 + 0.5;
          if (v49 <= 4194303.0)
          {
            v51 = v49;
          }

          else
          {
            v51 = 4194303.0;
          }

          v52.f64[0] = v51 * 256.0 + 0.5;
          if (v50.f64[0] < v52.f64[0])
          {
            if (v38 <= v48)
            {
              v53 = v38;
            }

            else
            {
              v53 = v38 + v36 * v40;
            }

            if (v38 > v48)
            {
              v48 = v38;
            }

            if (v53 >= -4194303.0)
            {
              v54 = v53;
            }

            else
            {
              v54 = -4194303.0;
            }

            v55 = v54 * 256.0 + 0.5;
            if (v48 > 4194303.0)
            {
              v48 = 4194303.0;
            }

            v56 = v48 * 256.0 + 0.5;
            if (v55 < v56)
            {
              v50.f64[1] = v55;
              v57 = vmovn_s64(vcvtq_s64_f64(v50));
              v52.f64[1] = v56;
              v58 = vmovn_s64(vcvtq_s64_f64(v52));
              v59 = *(a2 + 40);
              if (v59)
              {
                v57 = vmax_s32(vshl_n_s32(*v59, 8uLL), v57);
                v58 = vmin_s32(vshl_n_s32(vadd_s32(v59[1], *v59), 8uLL), v58);
              }

              v60 = *&vadd_s32(v58, 0xFF000000FFLL) & 0xFFFFFF00FFFFFF00;
              if (*(a2 + 32))
              {
                v61 = -1;
              }

              else
              {
                v61 = 0;
              }

              v62 = vdup_n_s32(v61);
              v63 = vbsl_s8(v62, v57, (*&v57 & 0xFFFFFF00FFFFFF00));
              v64 = vbsl_s8(v62, v58, v60);
              v65 = vcgt_s32(v64, v63);
              if (v65.i32[0] & v65.i32[1])
              {
                result[21] = v63;
                result[22] = v64;
                result[2] = result + 21;
              }
            }
          }
        }

        else
        {
          result = ripr_Acquire(result, a2);
          if (result)
          {
            v83 = v17;
            v84 = v16;
            if (a6)
            {
              v86 = 0;
              memset(v85, 0, sizeof(v85));
              ripr_stroke_acquire(result, v85, a6, 0.0, v18, v19, v20);
            }

            v22 = result[3];
            if (v14)
            {
              v23 = a4 + 2;
              do
              {
                v24 = v16 + v10 * *(v23 - 2);
                v25 = v17 + v12 * *(v23 - 1);
                v26 = *v23;
                v27 = v23[1];
                v23 += 4;
                v28 = v24 + v10 * v26;
                v29 = v25 + v12 * v27;
                *&v24 = v24;
                *&v25 = v25;
                *&v28 = v28;
                *&v29 = v29;
                result = aa_rectat(v22, *&v24, *&v25, *&v28, *&v29, v21);
                --v6;
              }

              while (v6);
            }

            else if (v13)
            {
              v41 = a4 + 2;
              do
              {
                v42 = v17 + v9 * *(v41 - 2);
                v43 = v16 + v11 * *(v41 - 1);
                v44 = *v41;
                v45 = v41[1];
                v41 += 4;
                v21.f64[0] = v42 + v9 * v44;
                v46 = v43 + v11 * v45;
                *&v43 = v43;
                *&v44 = v42;
                *&v42 = v46;
                *&v46 = v21.f64[0];
                result = aa_rectat(v22, *&v43, *&v44, *&v42, *&v46, v21);
                --v6;
              }

              while (v6);
            }

            else
            {
              v66 = a4 + 2;
              do
              {
                v67 = *(v66 - 2);
                v68 = *(v66 - 1);
                v69 = v84 + v11 * v68 + v10 * v67;
                v70 = v83 + v12 * v68 + v9 * v67;
                v71 = *v66;
                v72 = v66[1];
                v66 += 4;
                *&v67 = v69;
                *&v68 = v70;
                v73 = aa_moveto(v22, *&v67, *&v68);
                v74 = v69 + v10 * v71;
                v75 = v70 + v9 * v71;
                *&v73 = v74;
                v76 = v75;
                aa_lineto(v22, *&v73, v76);
                v77 = v74 + v11 * v72;
                v78 = v75 + v12 * v72;
                v79.f32[0] = v77;
                v80 = v78;
                aa_lineto(v22, v79, v80);
                v81 = v77 + -v10 * v71;
                *&v81 = v81;
                v82 = v78 + -v9 * v71;
                aa_lineto(v22, *&v81, v82);
                result = aa_close(v22);
                --v6;
              }

              while (v6);
            }
          }
        }
      }
    }
  }

  return result;
}

void CGBlt_fillBytes(int a1, unsigned int a2, int a3, char *__b, int a5)
{
  __pattern4 = a3;
  if (a1 >= 1 && a2 >= 1)
  {
    v5 = __b;
    if (a1 == 2)
    {
      if (a2)
      {
        *__b = HIWORD(a3);
        v5 = &__b[a5];
      }

      if (a2 >= 2)
      {
        v7 = a2 >> 1;
        do
        {
          *v5 = HIWORD(a3);
          *&v5[a5] = HIWORD(a3);
          v5 += a5 + a5;
          --v7;
        }

        while (v7);
      }
    }

    else if (a1 == 1)
    {
      if (a2)
      {
        *__b = HIBYTE(a3);
        v5 = &__b[a5];
      }

      if (a2 >= 2)
      {
        v6 = a2 >> 1;
        do
        {
          *v5 = HIBYTE(a3);
          v5[a5] = HIBYTE(a3);
          v5 += a5 + a5;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v8 = a1 == a5;
      v9 = (a1 & 3) == 0;
      v10 = !v9 || !v8;
      if (v9 && v8)
      {
        v11 = a2;
      }

      else
      {
        v11 = 1;
      }

      v12 = (v11 * a1);
      if (v10)
      {
        v13 = a2;
      }

      else
      {
        v13 = 1;
      }

      v14 = a5;
      if (a3)
      {
        do
        {
          memset_pattern4(v5, &__pattern4, v12);
          v5 += v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          bzero(v5, v12);
          v5 += v14;
          --v13;
        }

        while (v13);
      }
    }
  }
}

void CGContextFillRect(CGContextRef c, CGRect rect)
{
  v7 = rect;
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    CGContextFillRects(c, &v7, 1uLL);
  }
}

CFHashCode color_hash(CFHashCode result)
{
  v1 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    result = *(result + 48);
    if (!result)
    {
      v2 = CFHash(*(v1 + 24));
      v3 = *(v1 + 56);
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          v2 ^= i + (*(v1 + 72 + 8 * i) * 4294967300.0);
        }
      }

      result = v2 ^ *(v1 + 64);
      *(v1 + 48) = result;
    }
  }

  return result;
}

_DWORD *argb32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15092(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8;
    *(a2 + 2) = 1;
    if (HIBYTE(v8) == 255)
    {
      v9 = 0;
    }

    else
    {
      v9 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

uint64_t argb32_mark(uint64_t *a1, uint64_t a2, __n128 a3, double a4, double a5, int16x8_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a2;
  v13 = *a1;
  if (*(a2 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v14 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v14 = 0;
  }

  v15 = *v12;
  v16 = *(v12 + 96);
  v627 = *(v12 + 48);
  v17 = *(*(v13 + 56) + 16 * *v12 + 8 * (v16 == 0) + 4 * (v627 == 0));
  if (v17 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v19 = *(v12 + 4);
  v20 = v19 - 1;
  if (v19 < 1)
  {
    return 0;
  }

  v21 = *(v12 + 8);
  if (v21 < 1)
  {
    return 0;
  }

  if (v17 >= 24)
  {
    if (*v13 == 134755208)
    {
      v17 = (v17 + 4);
    }

    else
    {
      v17 = v17;
    }
  }

  v22 = *(v12 + 136);
  if ((v15 & 0xFF0000) != 0x50000 && v22)
  {
    v23 = *(v12 + 128);
    if ((v23 | 8) == 8)
    {
      if ((*v12 & 0xFF00) == 0x400)
      {
        if (v17 == 1)
        {
          argb32_mark_constcolormask(v12, a3.n128_f64[0], a4, a5, a6);
        }

        else
        {
          argb32_mark_constmask(v12, v17);
        }
      }

      else if ((v14 & 1) != 0 && ((1 << v17) & 0xFFFFFE) != 0)
      {
        argb32_mark_pixelmask_template(v12, v17);
      }

      else
      {
        argb32_mark_pixelmask(v12, v17);
      }
    }

    else
    {
      v42 = v17 - 1;
      if ((*v12 & 0xFF00) == 0x400 && v23 == 16 && v42 <= 1)
      {
        argb32_mark_constdeep(v13, v12, v22, a8, a9, a10, a11, a12);
      }

      else if (v23 != 16 || (*v12 & 0xFF00) == 0x400 || v42 > 1)
      {
        argb32_mark_bits(v12, a3);
      }

      else
      {
        argb32_mark_pixeldeep(v13, v12, v22, a8, a9, a10, a11, a12);
      }
    }

    return 1;
  }

  v607 = v12;
  v616 = v17;
  if (BYTE1(v15) == 1)
  {
    if ((v14 & 1) != 0 && ((1 << v17) & 0xFFFFFE) != 0)
    {
      argb32_mark_pixelshape_template(v12, v17);
      return 1;
    }

LABEL_29:
    v629 = *(v12 + 8);
    v630[0] = v19;
    v31 = *(v12 + 88);
    v32 = *(v12 + 28) >> 2;
    v33 = *(v12 + 40) + 4 * v32 * *(v12 + 16) + 4 * *(v12 + 12);
    v34 = *(v12 + 56);
    v35 = *(v12 + 60);
    v36 = *(v12 + 76) >> 2;
    if ((v15 & 0xFF00) != 0x100)
    {
      v41 = *(v12 + 64);
      v609 = *(v12 + 68);
      v620 = v31 + 4 * v36 * v609;
      v43 = v16 != 0;
      if (v22)
      {
        v623 = *(v12 + 76) >> 2;
        v605 = *(v12 + 60);
        v606 = *(v12 + 56);
        v40 = 1;
        v625 = *(v12 + 88);
        v44 = v625;
        goto LABEL_60;
      }

      v621 = v32 - v19;
      if (v31)
      {
        v615 = 0;
        v623 = *(v12 + 76) >> 2;
        v46 = v31 + 4 * v36 * (v35 % v609);
        v606 = v34 % v41;
        v47 = v46 + 4 * (v34 % v41);
        v44 = v46 + 4 * v41;
        v608 = 1;
        v625 = v47;
        v48 = (*(v12 + 40) + 4 * v32 * *(v12 + 16) + 4 * *(v12 + 12));
        v605 = v35 % v609;
        v38 = v627;
        goto LABEL_64;
      }

      v605 = *(v12 + 60);
      v606 = *(v12 + 56);
      v44 = 0;
      v608 = 1;
      v49 = v19;
      v38 = v627;
      goto LABEL_63;
    }

    v31 += 4 * v36 * v35 + 4 * v34;
    if (v36 == v32)
    {
      v37 = (v33 - v31) >> 2;
      v38 = v627;
      if (v37 >= 1)
      {
        if (v37 <= v19)
        {
          v33 += 4 * v20;
          v40 = -1;
          v41 = *(v12 + 28) >> 2;
          v31 += 4 * v20;
          goto LABEL_58;
        }

        v39 = v32 * (v21 - 1);
        if (v33 <= v31 + 4 * v39 + 4 * v19 - 4)
        {
          v33 += 4 * v39;
          v41 = -v32;
          v40 = 1;
          v31 += 4 * v39;
          v32 = -v32;
          goto LABEL_58;
        }
      }

      v40 = 1;
      v41 = *(v12 + 28) >> 2;
    }

    else
    {
      v40 = 1;
      v41 = *(v12 + 76) >> 2;
      v38 = v627;
    }

LABEL_58:
    v605 = *(v12 + 60);
    v606 = *(v12 + 56);
    v43 = v16 != 0;
    if (v22)
    {
      v609 = 0;
      v625 = 0;
      v620 = 0;
      v44 = -1;
      v623 = v41;
LABEL_60:
      v608 = v40;
      shape_enum_clip_alloc(a1, a2, v22, v40, v32, 1, *(v12 + 104), *(v12 + 108), v19, v21);
      v51 = v50;
      if (!v50)
      {
        return 1;
      }

      goto LABEL_766;
    }

    v608 = v40;
    v609 = 0;
    v49 = v40 * v19;
    v621 = v32 - v49;
    v44 = -1;
    v36 = v41;
LABEL_63:
    v615 = 0;
    v620 = 0;
    v623 = v36 - v49;
    v625 = 0;
    v47 = v31;
    v48 = v33;
LABEL_64:
    while (2)
    {
      v617 = v19;
      switch(v17)
      {
        case 0:
          v52 = v48 - 4 * v19 + 4;
          v53 = v621 + v19;
          if (v608 < 0)
          {
            v53 = v621 - v19;
          }

          else
          {
            v52 = v48;
          }

          v54 = (v52 + 4 * ((v53 * (v629 - 1)) & (v53 >> 63)));
          if (v53 < 0)
          {
            v53 = -v53;
          }

          CGBlt_fillBytes(4 * v19, v629, 0, v54, 4 * v53);
          goto LABEL_764;
        case 1:
          if (BYTE1(*v12) == 2)
          {
            if (v19 >= 8 && (4 * v41) <= 0x40)
            {
              a3.n128_u32[0] = 4 * v41;
              v420 = vcnt_s8(a3.n128_u64[0]);
              v420.i16[0] = vaddlv_u8(v420);
              if (v420.i32[0] <= 1u)
              {
                CGSFillDRAM64(v48, 4 * (v19 + v621), 4 * v19, v629, v31, 4 * v623, 4 * v41, v609, 4 * v606, v605);
                goto LABEL_764;
              }
            }
          }

          else if (BYTE1(*v12) == 1)
          {
            if (v38 == 0 || v43)
            {
              if (v608 < 0)
              {
                v197 = v623 - v19;
                v445 = 4 * v19 - 4;
                v47 -= v445;
                v198 = v621 - v19;
                v48 = (v48 - v445);
              }

              else
              {
                v197 = v623 + v19;
                v198 = v621 + v19;
              }

              v446 = (v47 + 4 * ((v197 * (v629 - 1)) & (v197 >> 63)));
              if (v197 >= 0)
              {
                v447 = v197;
              }

              else
              {
                v447 = -v197;
              }

              if (v198 >= 0)
              {
                LODWORD(v448) = v198;
              }

              else
              {
                v448 = -v198;
              }

              v623 = v447;
              CGBlt_copyBytes(4 * v19, v629, v446, v48 + 4 * ((v198 * (v629 - 1)) & (v198 >> 63)), 4 * v447, 4 * v448);
            }

            else
            {
              do
              {
                v429 = v630[0];
                do
                {
                  v48->i32[0] = *v47 | 0xFF000000;
                  v430 = v47 + 4 * v608;
                  if (v430 >= v44)
                  {
                    v431 = -v41;
                  }

                  else
                  {
                    v431 = 0;
                  }

                  v47 = v430 + 4 * v431;
                  v48 = (v48 + 4 * v608);
                  --v429;
                }

                while (v429);
                v48 = (v48 + 4 * v621);
                v432 = v625;
                v433 = v625 + 4 * v623;
                if (v433 >= v620)
                {
                  v434 = -(v623 * v609);
                }

                else
                {
                  v434 = 0;
                }

                v435 = v433 + 4 * v434;
                v436 = v44 + 4 * v434 + 4 * v623;
                if (v620)
                {
                  v44 = v436;
                  v432 = v435;
                }

                v625 = v432;
                if (v620)
                {
                  v47 = v435;
                }

                else
                {
                  v47 += 4 * v623;
                }

                --v629;
              }

              while (v629);
            }

            goto LABEL_764;
          }

          if ((*v12 & 0xFF00) == 0x200)
          {
            blt_bitmap_copy_XXXX32(v19, v629, v48, v621 + v19, v41, v609, v31, v623, v606, v605);
          }

          else if (v38 == 0 || v43)
          {
            do
            {
              v421 = v630[0];
              do
              {
                v48->i32[0] = *v47;
                v422 = v47 + 4 * v608;
                if (v422 >= v44)
                {
                  v423 = -v41;
                }

                else
                {
                  v423 = 0;
                }

                v47 = v422 + 4 * v423;
                v48 = (v48 + 4 * v608);
                --v421;
              }

              while (v421);
              v48 = (v48 + 4 * v621);
              v424 = v625;
              v425 = v625 + 4 * v623;
              if (v425 >= v620)
              {
                v426 = -(v623 * v609);
              }

              else
              {
                v426 = 0;
              }

              v427 = v425 + 4 * v426;
              v428 = v44 + 4 * v426 + 4 * v623;
              if (v620)
              {
                v44 = v428;
                v424 = v427;
              }

              v625 = v424;
              if (v620)
              {
                v47 = v427;
              }

              else
              {
                v47 += 4 * v623;
              }

              --v629;
            }

            while (v629);
          }

          else
          {
            do
            {
              v437 = v630[0];
              do
              {
                v48->i32[0] = *v47 | 0xFF000000;
                v438 = v47 + 4 * v608;
                if (v438 >= v44)
                {
                  v439 = -v41;
                }

                else
                {
                  v439 = 0;
                }

                v47 = v438 + 4 * v439;
                v48 = (v48 + 4 * v608);
                --v437;
              }

              while (v437);
              v48 = (v48 + 4 * v621);
              v440 = v625;
              v441 = v625 + 4 * v623;
              if (v441 >= v620)
              {
                v442 = -(v623 * v609);
              }

              else
              {
                v442 = 0;
              }

              v443 = v441 + 4 * v442;
              v444 = v44 + 4 * v442 + 4 * v623;
              if (v620)
              {
                v44 = v444;
                v440 = v443;
              }

              v625 = v440;
              if (v620)
              {
                v47 = v443;
              }

              else
              {
                v47 += 4 * v623;
              }

              --v629;
            }

            while (v629);
          }

          goto LABEL_764;
        case 2:
          if (*(v12 + 1) << 8 != 512)
          {
            v611 = v31;
            v612 = v32;
            v613 = v33;
            v610 = v41;
            do
            {
              v407 = v630[0];
              do
              {
                v408 = *v47;
                v409 = HIBYTE(*v47);
                if (v409)
                {
                  if (v409 == 255)
                  {
                    v48->i32[0] = v408;
                  }

                  else
                  {
                    DplusDM_15070(v48, v408, v48->i32[0], ~v408 >> 24);
                  }
                }

                v410 = v47 + 4 * v608;
                if (v410 >= v44)
                {
                  v411 = -v41;
                }

                else
                {
                  v411 = 0;
                }

                v47 = v410 + 4 * v411;
                v48 = (v48 + 4 * v608);
                --v407;
              }

              while (v407);
              v48 = (v48 + 4 * v621);
              v412 = v625;
              v413 = v625 + 4 * v623;
              if (v413 >= v620)
              {
                v414 = -(v623 * v609);
              }

              else
              {
                v414 = 0;
              }

              v415 = v413 + 4 * v414;
              v416 = v44 + 4 * v414 + 4 * v623;
              if (v620)
              {
                v44 = v416;
                v412 = v415;
              }

              v625 = v412;
              if (v620)
              {
                v47 = v415;
              }

              else
              {
                v47 += 4 * v623;
              }

              --v629;
            }

            while (v629);
            goto LABEL_762;
          }

          blt_bitmap_blend_AXXX32(v19, v629, v48, v621 + v19, v41, v609, v31, v623, v606, v605);
          goto LABEL_764;
        case 3:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          do
          {
            v177 = v630[0];
            do
            {
              v178 = HIBYTE(v48->i32[0]);
              if (v178 == 255)
              {
                v179 = *v47 & 0xFF000000;
                if (!v43)
                {
                  v179 = -16777216;
                }

                v48->i32[0] = v179 & 0xFF000000 | *v47 & 0xFFFFFF;
              }

              else if (v178)
              {
                v180 = HIBYTE(*v47);
                if (!v43)
                {
                  LOBYTE(v180) = -1;
                }

                DAM(v48, *v47, v180, v178);
              }

              else
              {
                v48->i32[0] = 0;
              }

              v181 = v47 + 4 * v608;
              if (v181 >= v44)
              {
                v182 = -v41;
              }

              else
              {
                v182 = 0;
              }

              v47 = v181 + 4 * v182;
              v48 = (v48 + 4 * v608);
              --v177;
            }

            while (v177);
            v48 = (v48 + 4 * v621);
            v183 = v625;
            v184 = v625 + 4 * v623;
            v185 = -(v623 * v609);
            if (v184 < v620)
            {
              v185 = 0;
            }

            v186 = v184 + 4 * v185;
            v187 = v44 + 4 * v185 + 4 * v623;
            if (v620)
            {
              v44 = v187;
              v183 = v186;
            }

            v625 = v183;
            if (v620)
            {
              v47 = v186;
            }

            else
            {
              v47 += 4 * v623;
            }

            --v629;
          }

          while (v629);
          goto LABEL_762;
        case 4:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          do
          {
            v105 = v630[0];
            do
            {
              v106 = v48->i8[3];
              if (~v106 == 255)
              {
                v107 = *v47 & 0xFF000000;
                if (!v43)
                {
                  v107 = -16777216;
                }

                v48->i32[0] = v107 & 0xFF000000 | *v47 & 0xFFFFFF;
              }

              else if (v106 == -1)
              {
                v48->i32[0] = 0;
              }

              else
              {
                v108 = ~v106;
                v109 = HIBYTE(*v47);
                if (!v43)
                {
                  LOBYTE(v109) = -1;
                }

                DAM(v48, *v47, v109, v108);
              }

              v110 = v47 + 4 * v608;
              if (v110 >= v44)
              {
                v111 = -v41;
              }

              else
              {
                v111 = 0;
              }

              v47 = v110 + 4 * v111;
              v48 = (v48 + 4 * v608);
              --v105;
            }

            while (v105);
            v48 = (v48 + 4 * v621);
            v112 = v625;
            v113 = v625 + 4 * v623;
            v114 = -(v623 * v609);
            if (v113 < v620)
            {
              v114 = 0;
            }

            v115 = v113 + 4 * v114;
            v116 = v44 + 4 * v114 + 4 * v623;
            if (v620)
            {
              v44 = v116;
              v112 = v115;
            }

            v625 = v112;
            if (v620)
            {
              v47 = v115;
            }

            else
            {
              v47 += 4 * v623;
            }

            --v629;
          }

          while (v629);
          goto LABEL_762;
        case 5:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          v238 = -v41;
          v239 = v629;
          do
          {
            v240 = v19;
            do
            {
              DMplusDM_15069(v48, *v47, HIBYTE(v48->i32[0]), v48->i32[0], ~*v47 >> 24);
              v241 = v47 + 4 * v608;
              if (v241 >= v44)
              {
                v242 = v238;
              }

              else
              {
                v242 = 0;
              }

              v47 = v241 + 4 * v242;
              v48 = (v48 + 4 * v608);
              --v240;
            }

            while (v240);
            v48 = (v48 + 4 * v621);
            v243 = v625;
            v244 = v625 + 4 * v623;
            v245 = -(v623 * v609);
            if (v244 < v620)
            {
              v245 = 0;
            }

            v246 = v244 + 4 * v245;
            v247 = v44 + 4 * v245 + 4 * v623;
            if (v620)
            {
              v44 = v247;
              v243 = v246;
            }

            v625 = v243;
            if (v620)
            {
              v47 = v246;
            }

            else
            {
              v47 += 4 * v623;
            }

            v629 = --v239;
            LODWORD(v19) = v617;
          }

          while (v239);
          goto LABEL_762;
        case 6:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          do
          {
            v274 = v630[0];
            do
            {
              if (~HIBYTE(v48->i32[0]))
              {
                if (~HIBYTE(v48->i32[0]) == 255)
                {
                  v275 = *v47 & 0xFF000000;
                  if (!v43)
                  {
                    v275 = -16777216;
                  }

                  v48->i32[0] = v275 & 0xFF000000 | *v47 & 0xFFFFFF;
                }

                else
                {
                  v276 = HIBYTE(*v47);
                  if (!v43)
                  {
                    LOBYTE(v276) = -1;
                  }

                  DplusDAM(v48, v48->i32[0], *v47, v276, ~HIBYTE(v48->i32[0]));
                }
              }

              v277 = v47 + 4 * v608;
              if (v277 >= v44)
              {
                v278 = -v41;
              }

              else
              {
                v278 = 0;
              }

              v47 = v277 + 4 * v278;
              v48 = (v48 + 4 * v608);
              --v274;
            }

            while (v274);
            v48 = (v48 + 4 * v621);
            v279 = v625;
            v280 = v625 + 4 * v623;
            v281 = -(v623 * v609);
            if (v280 < v620)
            {
              v281 = 0;
            }

            v282 = v280 + 4 * v281;
            v283 = v44 + 4 * v281 + 4 * v623;
            if (v620)
            {
              v44 = v283;
              v279 = v282;
            }

            v625 = v279;
            if (v620)
            {
              v47 = v282;
            }

            else
            {
              v47 += 4 * v623;
            }

            --v629;
          }

          while (v629);
          goto LABEL_762;
        case 7:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v188 = v630[0];
            do
            {
              v189 = HIBYTE(*v47);
              if (v189)
              {
                if (v189 == 255)
                {
                  goto LABEL_328;
                }

                v189 = PDM_15068(v48->i32[0], v189);
              }

              v48->i32[0] = v189;
LABEL_328:
              v190 = v47 + 4 * v608;
              if (v190 >= v44)
              {
                v191 = -v41;
              }

              else
              {
                v191 = 0;
              }

              v47 = v190 + 4 * v191;
              v48 = (v48 + 4 * v608);
              --v188;
            }

            while (v188);
            v48 = (v48 + 4 * v621);
            v192 = v625;
            v193 = v625 + 4 * v623;
            if (v193 >= v620)
            {
              v194 = -(v623 * v609);
            }

            else
            {
              v194 = 0;
            }

            v195 = v193 + 4 * v194;
            v196 = v44 + 4 * v194 + 4 * v623;
            if (v620)
            {
              v44 = v196;
              v192 = v195;
            }

            v625 = v192;
            if (v620)
            {
              v47 = v195;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_762;
            }
          }

        case 8:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          do
          {
            v307 = v630[0];
            do
            {
              v308 = *(v47 + 3) ^ 0xFF;
              if (v308)
              {
                if (v308 == 255)
                {
                  goto LABEL_556;
                }

                v308 = PDM_15068(v48->i32[0], v308);
              }

              v48->i32[0] = v308;
LABEL_556:
              v309 = v47 + 4 * v608;
              if (v309 >= v44)
              {
                v310 = -v41;
              }

              else
              {
                v310 = 0;
              }

              v47 = v309 + 4 * v310;
              v48 = (v48 + 4 * v608);
              --v307;
            }

            while (v307);
            v48 = (v48 + 4 * v621);
            v311 = v625;
            v312 = v625 + 4 * v623;
            if (v312 >= v620)
            {
              v313 = -(v623 * v609);
            }

            else
            {
              v313 = 0;
            }

            v314 = v312 + 4 * v313;
            v315 = v44 + 4 * v313 + 4 * v623;
            if (v620)
            {
              v44 = v315;
              v311 = v314;
            }

            v625 = v311;
            if (v620)
            {
              v47 = v314;
            }

            else
            {
              v47 += 4 * v623;
            }

            --v629;
          }

          while (v629);
LABEL_762:
          v12 = v607;
LABEL_763:
          LODWORD(v17) = v616;
          v32 = v612;
          v33 = v613;
          v41 = v610;
          v31 = v611;
LABEL_764:
          v51 = v615;
          if (!v615)
          {
            return 1;
          }

          v628 = 0;
LABEL_766:
          if (!shape_enum_clip_next(v51, &v628 + 1, &v628, v630, &v629))
          {
            v419 = v51;
            goto LABEL_1103;
          }

          v615 = v51;
          if (v620)
          {
            v48 = (v33 + 4 * v32 * v628 + 4 * SHIDWORD(v628));
            LODWORD(v19) = v630[0];
            v417 = v31 + 4 * v623 * ((v628 + *(v12 + 60)) % v609);
            v606 = (HIDWORD(v628) + *(v12 + 56)) % v41;
            v47 = v417 + 4 * v606;
            v44 = v417 + 4 * v41;
            v625 = v47;
            v418 = v630[0];
            v605 = (v628 + *(v12 + 60)) % v609;
          }

          else
          {
            LODWORD(v19) = v630[0];
            v418 = v630[0] * v608;
            v48 = (v33 + 4 * v32 * v628 + 4 * HIDWORD(v628) * v608);
            v47 = v31 + 4 * v628 * v41 + 4 * HIDWORD(v628) * v608;
            v623 = v41 - v630[0] * v608;
          }

          v38 = v627;
          v621 = v32 - v418;
          continue;
        case 9:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          v128 = -v41;
          v129 = v629;
          do
          {
            v130 = v19;
            do
            {
              DMplusDM_15069(v48, *v47, ~v48->i32[0] >> 24, v48->i32[0], HIBYTE(*v47));
              v131 = v47 + 4 * v608;
              if (v131 >= v44)
              {
                v132 = v128;
              }

              else
              {
                v132 = 0;
              }

              v47 = v131 + 4 * v132;
              v48 = (v48 + 4 * v608);
              --v130;
            }

            while (v130);
            v48 = (v48 + 4 * v621);
            v133 = v625;
            v134 = v625 + 4 * v623;
            v135 = -(v623 * v609);
            if (v134 < v620)
            {
              v135 = 0;
            }

            v136 = v134 + 4 * v135;
            v137 = v44 + 4 * v135 + 4 * v623;
            if (v620)
            {
              v44 = v137;
              v133 = v136;
            }

            v625 = v133;
            if (v620)
            {
              v47 = v136;
            }

            else
            {
              v47 += 4 * v623;
            }

            v629 = --v129;
            LODWORD(v19) = v617;
          }

          while (v129);
          goto LABEL_762;
        case 10:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          v297 = -v41;
          v298 = v629;
          do
          {
            v299 = v19;
            do
            {
              DMplusDM_15069(v48, *v47, ~v48->i32[0] >> 24, v48->i32[0], ~*v47 >> 24);
              v300 = v47 + 4 * v608;
              if (v300 >= v44)
              {
                v301 = v297;
              }

              else
              {
                v301 = 0;
              }

              v47 = v300 + 4 * v301;
              v48 = (v48 + 4 * v608);
              --v299;
            }

            while (v299);
            v48 = (v48 + 4 * v621);
            v302 = v625;
            v303 = v625 + 4 * v623;
            v304 = -(v623 * v609);
            if (v303 < v620)
            {
              v304 = 0;
            }

            v305 = v303 + 4 * v304;
            v306 = v44 + 4 * v304 + 4 * v623;
            if (v620)
            {
              v44 = v306;
              v302 = v305;
            }

            v625 = v302;
            if (v620)
            {
              v47 = v305;
            }

            else
            {
              v47 += 4 * v623;
            }

            v629 = --v298;
            LODWORD(v19) = v617;
          }

          while (v298);
          goto LABEL_762;
        case 11:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          v94 = v629;
          do
          {
            v614 = v94;
            v95 = v19;
            do
            {
              v96 = HIBYTE(v48->i32[0]);
              if (!v627)
              {
                LOBYTE(v96) = -1;
              }

              v97 = HIBYTE(*v47);
              if (!v43)
              {
                LOBYTE(v97) = -1;
              }

              DAplusdDA_15071(v48, v48->i32[0], v96, *v47, v97);
              v98 = v47 + 4 * v608;
              if (v98 >= v44)
              {
                v99 = -v41;
              }

              else
              {
                v99 = 0;
              }

              v47 = v98 + 4 * v99;
              v48 = (v48 + 4 * v608);
              --v95;
            }

            while (v95);
            v48 = (v48 + 4 * v621);
            v100 = v625;
            v101 = v625 + 4 * v623;
            v102 = -(v623 * v609);
            if (v101 < v620)
            {
              v102 = 0;
            }

            v103 = v101 + 4 * v102;
            v104 = v44 + 4 * v102 + 4 * v623;
            if (v620)
            {
              v44 = v104;
              v100 = v103;
            }

            v625 = v100;
            if (v620)
            {
              v47 = v103;
            }

            else
            {
              v47 += 4 * v623;
            }

            v94 = v614 - 1;
            v629 = v614 - 1;
            LODWORD(v19) = v617;
          }

          while (v614 != 1);
          goto LABEL_762;
        case 12:
          do
          {
            v117 = v630[0];
            do
            {
              v119 = *v47 >> 8;
              v120 = v119 & 0xFF0000;
              if (!v43)
              {
                v120 = 16711680;
              }

              v118 = (v48->i32[0] >> 8) & 0xFF00FF;
              v48->i32[0] = ((v118 + v119 + v120) << 8) & 0xFF00FF00 | ((*v47 & 0xFF00FF) + (v48->i32[0] & 0xFF00FF)) & 0xFF00FF | (15 * ((v118 + v119 + v120) & 0x1000100 | (((*v47 & 0xFF00FF) + (v48->i32[0] & 0xFF00FFu)) >> 8) & 0x10001)) | (240 * ((v118 + v119 + v120) & 0x1000100 | (((*v47 & 0xFF00FF) + (v48->i32[0] & 0xFF00FFu)) >> 8) & 0x10001));
              v121 = v47 + 4 * v608;
              if (v121 >= v44)
              {
                v122 = -v41;
              }

              else
              {
                v122 = 0;
              }

              v47 = v121 + 4 * v122;
              v48 = (v48 + 4 * v608);
              --v117;
            }

            while (v117);
            v48 = (v48 + 4 * v621);
            v123 = v625;
            v124 = v625 + 4 * v623;
            if (v124 >= v620)
            {
              v125 = -(v623 * v609);
            }

            else
            {
              v125 = 0;
            }

            v126 = v124 + 4 * v125;
            v127 = v44 + 4 * v125 + 4 * v623;
            if (v620)
            {
              v44 = v127;
              v123 = v126;
            }

            v625 = v123;
            if (v620)
            {
              v47 = v126;
            }

            else
            {
              v47 += 4 * v623;
            }

            --v629;
          }

          while (v629);
          goto LABEL_764;
        case 13:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v261 = v630[0];
            do
            {
              if (!v43)
              {
                v262 = 255;
LABEL_468:
                v263 = v48->i32[0];
                if (v38)
                {
                  v264 = HIBYTE(v263);
                  v265 = *v47;
                  if (!HIBYTE(v263))
                  {
                    v266 = v265 & 0xFFFFFF | (v262 << 24);
LABEL_473:
                    v48->i32[0] = v266;
                    goto LABEL_474;
                  }
                }

                else
                {
                  v265 = *v47;
                  v264 = 255;
                }

                v266 = PDAmultiplyPDA_15072(v263, v264, v265, v262);
                v38 = v627;
                goto LABEL_473;
              }

              v262 = HIBYTE(*v47);
              if (v262)
              {
                goto LABEL_468;
              }

LABEL_474:
              v267 = v47 + 4 * v608;
              if (v267 >= v44)
              {
                v268 = -v41;
              }

              else
              {
                v268 = 0;
              }

              v47 = v267 + 4 * v268;
              v48 = (v48 + 4 * v608);
              --v261;
            }

            while (v261);
            v48 = (v48 + 4 * v621);
            v269 = v625;
            v270 = v625 + 4 * v623;
            v271 = -(v623 * v609);
            if (v270 < v620)
            {
              v271 = 0;
            }

            v272 = v270 + 4 * v271;
            v273 = v44 + 4 * v271 + 4 * v623;
            if (v620)
            {
              v44 = v273;
              v269 = v272;
            }

            v625 = v269;
            if (v620)
            {
              v47 = v272;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 14:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v81 = v630[0];
            do
            {
              if (!v43)
              {
                v82 = 255;
LABEL_127:
                v83 = v48->i32[0];
                if (v38)
                {
                  v84 = HIBYTE(v83);
                  v85 = *v47;
                  if (!HIBYTE(v83))
                  {
                    v86 = v85 & 0xFFFFFF | (v82 << 24);
LABEL_132:
                    v48->i32[0] = v86;
                    goto LABEL_133;
                  }
                }

                else
                {
                  v85 = *v47;
                  v84 = 255;
                }

                v86 = PDAscreenPDA_15073(v83, v84, v85, v82);
                v38 = v627;
                goto LABEL_132;
              }

              v82 = HIBYTE(*v47);
              if (v82)
              {
                goto LABEL_127;
              }

LABEL_133:
              v87 = v47 + 4 * v608;
              if (v87 >= v44)
              {
                v88 = -v41;
              }

              else
              {
                v88 = 0;
              }

              v47 = v87 + 4 * v88;
              v48 = (v48 + 4 * v608);
              --v81;
            }

            while (v81);
            v48 = (v48 + 4 * v621);
            v89 = v625;
            v90 = v625 + 4 * v623;
            v91 = -(v623 * v609);
            if (v90 < v620)
            {
              v91 = 0;
            }

            v92 = v90 + 4 * v91;
            v93 = v44 + 4 * v91 + 4 * v623;
            if (v620)
            {
              v44 = v93;
              v89 = v92;
            }

            v625 = v89;
            if (v620)
            {
              v47 = v92;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 15:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v164 = v630[0];
            do
            {
              if (!v43)
              {
                v165 = 255;
LABEL_279:
                v166 = v48->i32[0];
                if (v38)
                {
                  v167 = HIBYTE(v166);
                  v168 = *v47;
                  if (!HIBYTE(v166))
                  {
                    v169 = v168 & 0xFFFFFF | (v165 << 24);
LABEL_284:
                    v48->i32[0] = v169;
                    goto LABEL_285;
                  }
                }

                else
                {
                  v168 = *v47;
                  v167 = 255;
                }

                v169 = PDAoverlayPDA_15074(v166, v167, v168, v165);
                v38 = v627;
                goto LABEL_284;
              }

              v165 = HIBYTE(*v47);
              if (v165)
              {
                goto LABEL_279;
              }

LABEL_285:
              v170 = v47 + 4 * v608;
              if (v170 >= v44)
              {
                v171 = -v41;
              }

              else
              {
                v171 = 0;
              }

              v47 = v170 + 4 * v171;
              v48 = (v48 + 4 * v608);
              --v164;
            }

            while (v164);
            v48 = (v48 + 4 * v621);
            v172 = v625;
            v173 = v625 + 4 * v623;
            v174 = -(v623 * v609);
            if (v173 < v620)
            {
              v174 = 0;
            }

            v175 = v173 + 4 * v174;
            v176 = v44 + 4 * v174 + 4 * v623;
            if (v620)
            {
              v44 = v176;
              v172 = v175;
            }

            v625 = v172;
            if (v620)
            {
              v47 = v175;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 16:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v68 = v630[0];
            do
            {
              if (!v43)
              {
                v69 = 255;
LABEL_102:
                v70 = v48->i32[0];
                if (v38)
                {
                  v71 = HIBYTE(v70);
                  v72 = *v47;
                  if (!HIBYTE(v70))
                  {
                    v73 = v72 & 0xFFFFFF | (v69 << 24);
LABEL_107:
                    v48->i32[0] = v73;
                    goto LABEL_108;
                  }
                }

                else
                {
                  v72 = *v47;
                  v71 = 255;
                }

                v73 = PDAdarkenPDA_15076(v70, v71, v72, v69);
                v38 = v627;
                goto LABEL_107;
              }

              v69 = HIBYTE(*v47);
              if (v69)
              {
                goto LABEL_102;
              }

LABEL_108:
              v74 = v47 + 4 * v608;
              if (v74 >= v44)
              {
                v75 = -v41;
              }

              else
              {
                v75 = 0;
              }

              v47 = v74 + 4 * v75;
              v48 = (v48 + 4 * v608);
              --v68;
            }

            while (v68);
            v48 = (v48 + 4 * v621);
            v76 = v625;
            v77 = v625 + 4 * v623;
            v78 = -(v623 * v609);
            if (v77 < v620)
            {
              v78 = 0;
            }

            v79 = v77 + 4 * v78;
            v80 = v44 + 4 * v78 + 4 * v623;
            if (v620)
            {
              v44 = v80;
              v76 = v79;
            }

            v625 = v76;
            if (v620)
            {
              v47 = v79;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 17:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v212 = v630[0];
            do
            {
              if (!v43)
              {
                v213 = 255;
LABEL_378:
                v214 = v48->i32[0];
                if (v38)
                {
                  v215 = HIBYTE(v214);
                  v216 = *v47;
                  if (!HIBYTE(v214))
                  {
                    v217 = v216 & 0xFFFFFF | (v213 << 24);
LABEL_383:
                    v48->i32[0] = v217;
                    goto LABEL_384;
                  }
                }

                else
                {
                  v216 = *v47;
                  v215 = 255;
                }

                v217 = PDAlightenPDA_15075(v214, v215, v216, v213);
                v38 = v627;
                goto LABEL_383;
              }

              v213 = HIBYTE(*v47);
              if (v213)
              {
                goto LABEL_378;
              }

LABEL_384:
              v218 = v47 + 4 * v608;
              if (v218 >= v44)
              {
                v219 = -v41;
              }

              else
              {
                v219 = 0;
              }

              v47 = v218 + 4 * v219;
              v48 = (v48 + 4 * v608);
              --v212;
            }

            while (v212);
            v48 = (v48 + 4 * v621);
            v220 = v625;
            v221 = v625 + 4 * v623;
            v222 = -(v623 * v609);
            if (v221 < v620)
            {
              v222 = 0;
            }

            v223 = v221 + 4 * v222;
            v224 = v44 + 4 * v222 + 4 * v623;
            if (v620)
            {
              v44 = v224;
              v220 = v223;
            }

            v625 = v220;
            if (v620)
            {
              v47 = v223;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 18:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v284 = v630[0];
            do
            {
              if (!v43)
              {
                v285 = 255;
LABEL_516:
                v286 = v48->i32[0];
                if (v38)
                {
                  v287 = HIBYTE(v286);
                  v288 = *v47;
                  if (!HIBYTE(v286))
                  {
                    v289 = v288 & 0xFFFFFF | (v285 << 24);
LABEL_521:
                    v48->i32[0] = v289;
                    goto LABEL_522;
                  }
                }

                else
                {
                  v288 = *v47;
                  v287 = 255;
                }

                v289 = PDAcolordodgePDA_15077(v286, v287, v288, v285);
                v38 = v627;
                goto LABEL_521;
              }

              v285 = HIBYTE(*v47);
              if (v285)
              {
                goto LABEL_516;
              }

LABEL_522:
              v290 = v47 + 4 * v608;
              if (v290 >= v44)
              {
                v291 = -v41;
              }

              else
              {
                v291 = 0;
              }

              v47 = v290 + 4 * v291;
              v48 = (v48 + 4 * v608);
              --v284;
            }

            while (v284);
            v48 = (v48 + 4 * v621);
            v292 = v625;
            v293 = v625 + 4 * v623;
            v294 = -(v623 * v609);
            if (v293 < v620)
            {
              v294 = 0;
            }

            v295 = v293 + 4 * v294;
            v296 = v44 + 4 * v294 + 4 * v623;
            if (v620)
            {
              v44 = v296;
              v292 = v295;
            }

            v625 = v292;
            if (v620)
            {
              v47 = v295;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 19:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v342 = v630[0];
            do
            {
              if (!v43)
              {
                v343 = 255;
LABEL_625:
                v344 = v48->i32[0];
                if (v38)
                {
                  v345 = HIBYTE(v344);
                  v346 = *v47;
                  if (!HIBYTE(v344))
                  {
                    v347 = v346 & 0xFFFFFF | (v343 << 24);
LABEL_630:
                    v48->i32[0] = v347;
                    goto LABEL_631;
                  }
                }

                else
                {
                  v346 = *v47;
                  v345 = 255;
                }

                v347 = PDAcolorburnPDA_15078(v344, v345, v346, v343);
                v38 = v627;
                goto LABEL_630;
              }

              v343 = HIBYTE(*v47);
              if (v343)
              {
                goto LABEL_625;
              }

LABEL_631:
              v348 = v47 + 4 * v608;
              if (v348 >= v44)
              {
                v349 = -v41;
              }

              else
              {
                v349 = 0;
              }

              v47 = v348 + 4 * v349;
              v48 = (v48 + 4 * v608);
              --v342;
            }

            while (v342);
            v48 = (v48 + 4 * v621);
            v350 = v625;
            v351 = v625 + 4 * v623;
            v352 = -(v623 * v609);
            if (v351 < v620)
            {
              v352 = 0;
            }

            v353 = v351 + 4 * v352;
            v354 = v44 + 4 * v352 + 4 * v623;
            if (v620)
            {
              v44 = v354;
              v350 = v353;
            }

            v625 = v350;
            if (v620)
            {
              v47 = v353;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 20:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v225 = v630[0];
            do
            {
              if (!v43)
              {
                v226 = 255;
LABEL_403:
                v227 = v48->i32[0];
                if (v38)
                {
                  v228 = HIBYTE(v227);
                  v229 = *v47;
                  if (!HIBYTE(v227))
                  {
                    v230 = v229 & 0xFFFFFF | (v226 << 24);
LABEL_408:
                    v48->i32[0] = v230;
                    goto LABEL_409;
                  }
                }

                else
                {
                  v229 = *v47;
                  v228 = 255;
                }

                v230 = PDAsoftlightPDA_15080(v227, v228, v229, v226);
                v38 = v627;
                goto LABEL_408;
              }

              v226 = HIBYTE(*v47);
              if (v226)
              {
                goto LABEL_403;
              }

LABEL_409:
              v231 = v47 + 4 * v608;
              if (v231 >= v44)
              {
                v232 = -v41;
              }

              else
              {
                v232 = 0;
              }

              v47 = v231 + 4 * v232;
              v48 = (v48 + 4 * v608);
              --v225;
            }

            while (v225);
            v48 = (v48 + 4 * v621);
            v233 = v625;
            v234 = v625 + 4 * v623;
            v235 = -(v623 * v609);
            if (v234 < v620)
            {
              v235 = 0;
            }

            v236 = v234 + 4 * v235;
            v237 = v44 + 4 * v235 + 4 * v623;
            if (v620)
            {
              v44 = v237;
              v233 = v236;
            }

            v625 = v233;
            if (v620)
            {
              v47 = v236;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 21:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v248 = v630[0];
            do
            {
              if (!v43)
              {
                v249 = 255;
LABEL_443:
                v250 = v48->i32[0];
                if (v38)
                {
                  v251 = HIBYTE(v250);
                  v252 = *v47;
                  if (!HIBYTE(v250))
                  {
                    v253 = v252 & 0xFFFFFF | (v249 << 24);
LABEL_448:
                    v48->i32[0] = v253;
                    goto LABEL_449;
                  }
                }

                else
                {
                  v252 = *v47;
                  v251 = 255;
                }

                v253 = PDAhardlightPDA_15079(v250, v251, v252, v249);
                v38 = v627;
                goto LABEL_448;
              }

              v249 = HIBYTE(*v47);
              if (v249)
              {
                goto LABEL_443;
              }

LABEL_449:
              v254 = v47 + 4 * v608;
              if (v254 >= v44)
              {
                v255 = -v41;
              }

              else
              {
                v255 = 0;
              }

              v47 = v254 + 4 * v255;
              v48 = (v48 + 4 * v608);
              --v248;
            }

            while (v248);
            v48 = (v48 + 4 * v621);
            v256 = v625;
            v257 = v625 + 4 * v623;
            v258 = -(v623 * v609);
            if (v257 < v620)
            {
              v258 = 0;
            }

            v259 = v257 + 4 * v258;
            v260 = v44 + 4 * v258 + 4 * v623;
            if (v620)
            {
              v44 = v260;
              v256 = v259;
            }

            v625 = v256;
            if (v620)
            {
              v47 = v259;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 22:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v329 = v630[0];
            do
            {
              if (!v43)
              {
                v330 = 255;
LABEL_600:
                v331 = v48->i32[0];
                if (v38)
                {
                  v332 = HIBYTE(v331);
                  v333 = *v47;
                  if (!HIBYTE(v331))
                  {
                    v334 = v333 & 0xFFFFFF | (v330 << 24);
LABEL_605:
                    v48->i32[0] = v334;
                    goto LABEL_606;
                  }
                }

                else
                {
                  v333 = *v47;
                  v332 = 255;
                }

                v334 = PDAdifferencePDA_15081(v331, v332, v333, v330);
                v38 = v627;
                goto LABEL_605;
              }

              v330 = HIBYTE(*v47);
              if (v330)
              {
                goto LABEL_600;
              }

LABEL_606:
              v335 = v47 + 4 * v608;
              if (v335 >= v44)
              {
                v336 = -v41;
              }

              else
              {
                v336 = 0;
              }

              v47 = v335 + 4 * v336;
              v48 = (v48 + 4 * v608);
              --v329;
            }

            while (v329);
            v48 = (v48 + 4 * v621);
            v337 = v625;
            v338 = v625 + 4 * v623;
            v339 = -(v623 * v609);
            if (v338 < v620)
            {
              v339 = 0;
            }

            v340 = v338 + 4 * v339;
            v341 = v44 + 4 * v339 + 4 * v623;
            if (v620)
            {
              v44 = v341;
              v337 = v340;
            }

            v625 = v337;
            if (v620)
            {
              v47 = v340;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 23:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v355 = v630[0];
            do
            {
              if (!v43)
              {
                v356 = 255;
LABEL_650:
                v357 = v48->i32[0];
                if (v38)
                {
                  v358 = HIBYTE(v357);
                  v359 = *v47;
                  if (!HIBYTE(v357))
                  {
                    v360 = v359 & 0xFFFFFF | (v356 << 24);
LABEL_655:
                    v48->i32[0] = v360;
                    goto LABEL_656;
                  }
                }

                else
                {
                  v359 = *v47;
                  v358 = 255;
                }

                v360 = PDAexclusionPDA_15082(v357, v358, v359, v356);
                v38 = v627;
                goto LABEL_655;
              }

              v356 = HIBYTE(*v47);
              if (v356)
              {
                goto LABEL_650;
              }

LABEL_656:
              v361 = v47 + 4 * v608;
              if (v361 >= v44)
              {
                v362 = -v41;
              }

              else
              {
                v362 = 0;
              }

              v47 = v361 + 4 * v362;
              v48 = (v48 + 4 * v608);
              --v355;
            }

            while (v355);
            v48 = (v48 + 4 * v621);
            v363 = v625;
            v364 = v625 + 4 * v623;
            v365 = -(v623 * v609);
            if (v364 < v620)
            {
              v365 = 0;
            }

            v366 = v364 + 4 * v365;
            v367 = v44 + 4 * v365 + 4 * v623;
            if (v620)
            {
              v44 = v367;
              v363 = v366;
            }

            v625 = v363;
            if (v620)
            {
              v47 = v366;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 24:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v151 = v630[0];
            do
            {
              if (!v43)
              {
                v152 = 255;
LABEL_252:
                v153 = v48->i32[0];
                if (v38)
                {
                  v154 = HIBYTE(v153);
                  v155 = *v47;
                  if (!HIBYTE(v153))
                  {
                    v156 = v155 & 0xFFFFFF | (v152 << 24);
LABEL_257:
                    v48->i32[0] = v156;
                    goto LABEL_258;
                  }
                }

                else
                {
                  v155 = *v47;
                  v154 = 255;
                }

                v156 = PDAhuePDA_15083(v153, v154, v155, v152);
                v38 = v627;
                goto LABEL_257;
              }

              v152 = HIBYTE(*v47);
              if (v152)
              {
                goto LABEL_252;
              }

LABEL_258:
              v157 = v47 + 4 * v608;
              if (v157 >= v44)
              {
                v158 = -v41;
              }

              else
              {
                v158 = 0;
              }

              v47 = v157 + 4 * v158;
              v48 = (v48 + 4 * v608);
              --v151;
            }

            while (v151);
            v48 = (v48 + 4 * v621);
            v159 = v625;
            v160 = v625 + 4 * v623;
            v161 = -(v623 * v609);
            if (v160 < v620)
            {
              v161 = 0;
            }

            v162 = v160 + 4 * v161;
            v163 = v44 + 4 * v161 + 4 * v623;
            if (v620)
            {
              v44 = v163;
              v159 = v162;
            }

            v625 = v159;
            if (v620)
            {
              v47 = v162;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 25:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v138 = v630[0];
            do
            {
              if (!v43)
              {
                v139 = 255;
LABEL_227:
                v140 = v48->i32[0];
                if (v38)
                {
                  v141 = HIBYTE(v140);
                  v142 = *v47;
                  if (!HIBYTE(v140))
                  {
                    v143 = v142 & 0xFFFFFF | (v139 << 24);
LABEL_232:
                    v48->i32[0] = v143;
                    goto LABEL_233;
                  }
                }

                else
                {
                  v142 = *v47;
                  v141 = 255;
                }

                v143 = PDAsaturationPDA_15084(v140, v141, v142, v139);
                v38 = v627;
                goto LABEL_232;
              }

              v139 = HIBYTE(*v47);
              if (v139)
              {
                goto LABEL_227;
              }

LABEL_233:
              v144 = v47 + 4 * v608;
              if (v144 >= v44)
              {
                v145 = -v41;
              }

              else
              {
                v145 = 0;
              }

              v47 = v144 + 4 * v145;
              v48 = (v48 + 4 * v608);
              --v138;
            }

            while (v138);
            v48 = (v48 + 4 * v621);
            v146 = v625;
            v147 = v625 + 4 * v623;
            v148 = -(v623 * v609);
            if (v147 < v620)
            {
              v148 = 0;
            }

            v149 = v147 + 4 * v148;
            v150 = v44 + 4 * v148 + 4 * v623;
            if (v620)
            {
              v44 = v150;
              v146 = v149;
            }

            v625 = v146;
            if (v620)
            {
              v47 = v149;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 26:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v394 = v630[0];
            do
            {
              if (v43)
              {
                v395 = HIBYTE(*v47);
                if (!v395)
                {
                  goto LABEL_730;
                }

                if (!v38)
                {
LABEL_727:
                  v398 = *v47;
                  v396 = v48->i32[0];
                  v397 = 255;
LABEL_728:
                  v399 = PDAluminosityPDA_15085(v398, v395, v396, v397);
                  v38 = v627;
                  goto LABEL_729;
                }
              }

              else
              {
                v395 = 255;
                if (!v38)
                {
                  goto LABEL_727;
                }
              }

              v396 = v48->i32[0];
              v397 = HIBYTE(v48->i32[0]);
              v398 = *v47;
              if (v397)
              {
                goto LABEL_728;
              }

              v399 = v398 & 0xFFFFFF | (v395 << 24);
LABEL_729:
              v48->i32[0] = v399;
LABEL_730:
              v400 = v47 + 4 * v608;
              if (v400 >= v44)
              {
                v401 = -v41;
              }

              else
              {
                v401 = 0;
              }

              v47 = v400 + 4 * v401;
              v48 = (v48 + 4 * v608);
              --v394;
            }

            while (v394);
            v48 = (v48 + 4 * v621);
            v402 = v625;
            v403 = v625 + 4 * v623;
            v404 = -(v623 * v609);
            if (v403 < v620)
            {
              v404 = 0;
            }

            v405 = v403 + 4 * v404;
            v406 = v44 + 4 * v404 + 4 * v623;
            if (v620)
            {
              v44 = v406;
              v402 = v405;
            }

            v625 = v402;
            if (v620)
            {
              v47 = v405;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 27:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v55 = v630[0];
            do
            {
              if (!v43)
              {
                v56 = 255;
LABEL_77:
                v57 = v48->i32[0];
                if (v38)
                {
                  v58 = HIBYTE(v57);
                  v59 = *v47;
                  if (!HIBYTE(v57))
                  {
                    v60 = v59 & 0xFFFFFF | (v56 << 24);
LABEL_82:
                    v48->i32[0] = v60;
                    goto LABEL_83;
                  }
                }

                else
                {
                  v59 = *v47;
                  v58 = 255;
                }

                v60 = PDAluminosityPDA_15085(v57, v58, v59, v56);
                v38 = v627;
                goto LABEL_82;
              }

              v56 = HIBYTE(*v47);
              if (v56)
              {
                goto LABEL_77;
              }

LABEL_83:
              v61 = v47 + 4 * v608;
              if (v61 >= v44)
              {
                v62 = -v41;
              }

              else
              {
                v62 = 0;
              }

              v47 = v61 + 4 * v62;
              v48 = (v48 + 4 * v608);
              --v55;
            }

            while (v55);
            v48 = (v48 + 4 * v621);
            v63 = v625;
            v64 = v625 + 4 * v623;
            v65 = -(v623 * v609);
            if (v64 < v620)
            {
              v65 = 0;
            }

            v66 = v64 + 4 * v65;
            v67 = v44 + 4 * v65 + 4 * v623;
            if (v620)
            {
              v44 = v67;
              v63 = v66;
            }

            v625 = v63;
            if (v620)
            {
              v47 = v66;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 28:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v368 = v630[0];
            do
            {
              if (!v43)
              {
                v369 = 255;
LABEL_675:
                v370 = v48->i32[0];
                if (v38)
                {
                  v371 = HIBYTE(v370);
                  v372 = *v47;
                  if (!HIBYTE(v370))
                  {
                    v373 = v372 & 0xFFFFFF | (v369 << 24);
LABEL_680:
                    v48->i32[0] = v373;
                    goto LABEL_681;
                  }
                }

                else
                {
                  v372 = *v47;
                  v371 = 255;
                }

                v373 = PDAtranspose_huePDA_15086(v370, v371, v372, v369);
                v38 = v627;
                goto LABEL_680;
              }

              v369 = HIBYTE(*v47);
              if (v369)
              {
                goto LABEL_675;
              }

LABEL_681:
              v374 = v47 + 4 * v608;
              if (v374 >= v44)
              {
                v375 = -v41;
              }

              else
              {
                v375 = 0;
              }

              v47 = v374 + 4 * v375;
              v48 = (v48 + 4 * v608);
              --v368;
            }

            while (v368);
            v48 = (v48 + 4 * v621);
            v376 = v625;
            v377 = v625 + 4 * v623;
            v378 = -(v623 * v609);
            if (v377 < v620)
            {
              v378 = 0;
            }

            v379 = v377 + 4 * v378;
            v380 = v44 + 4 * v378 + 4 * v623;
            if (v620)
            {
              v44 = v380;
              v376 = v379;
            }

            v625 = v376;
            if (v620)
            {
              v47 = v379;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 29:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v381 = v630[0];
            do
            {
              if (!v43)
              {
                v382 = 255;
LABEL_700:
                v383 = v48->i32[0];
                if (v38)
                {
                  v384 = HIBYTE(v383);
                  v385 = *v47;
                  if (!HIBYTE(v383))
                  {
                    v386 = v385 & 0xFFFFFF | (v382 << 24);
LABEL_705:
                    v48->i32[0] = v386;
                    goto LABEL_706;
                  }
                }

                else
                {
                  v385 = *v47;
                  v384 = 255;
                }

                v386 = PDAtranspose_saturationPDA_15087(v383, v384, v385, v382);
                v38 = v627;
                goto LABEL_705;
              }

              v382 = HIBYTE(*v47);
              if (v382)
              {
                goto LABEL_700;
              }

LABEL_706:
              v387 = v47 + 4 * v608;
              if (v387 >= v44)
              {
                v388 = -v41;
              }

              else
              {
                v388 = 0;
              }

              v47 = v387 + 4 * v388;
              v48 = (v48 + 4 * v608);
              --v381;
            }

            while (v381);
            v48 = (v48 + 4 * v621);
            v389 = v625;
            v390 = v625 + 4 * v623;
            v391 = -(v623 * v609);
            if (v390 < v620)
            {
              v391 = 0;
            }

            v392 = v390 + 4 * v391;
            v393 = v44 + 4 * v391 + 4 * v623;
            if (v620)
            {
              v44 = v393;
              v389 = v392;
            }

            v625 = v389;
            if (v620)
            {
              v47 = v392;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 30:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          while (1)
          {
            v316 = v630[0];
            do
            {
              if (v43)
              {
                v317 = HIBYTE(*v47);
                if (!v317)
                {
                  goto LABEL_581;
                }

                if (!v38)
                {
LABEL_578:
                  v320 = *v47;
                  v318 = v48->i32[0];
                  v319 = 255;
LABEL_579:
                  v321 = PDAtranspose_luminosityPDA_15088(v320, v317, v318, v319);
                  v38 = v627;
                  goto LABEL_580;
                }
              }

              else
              {
                v317 = 255;
                if (!v38)
                {
                  goto LABEL_578;
                }
              }

              v318 = v48->i32[0];
              v319 = HIBYTE(v48->i32[0]);
              v320 = *v47;
              if (v319)
              {
                goto LABEL_579;
              }

              v321 = v320 & 0xFFFFFF | (v317 << 24);
LABEL_580:
              v48->i32[0] = v321;
LABEL_581:
              v322 = v47 + 4 * v608;
              if (v322 >= v44)
              {
                v323 = -v41;
              }

              else
              {
                v323 = 0;
              }

              v47 = v322 + 4 * v323;
              v48 = (v48 + 4 * v608);
              --v316;
            }

            while (v316);
            v48 = (v48 + 4 * v621);
            v324 = v625;
            v325 = v625 + 4 * v623;
            v326 = -(v623 * v609);
            if (v325 < v620)
            {
              v326 = 0;
            }

            v327 = v325 + 4 * v326;
            v328 = v44 + 4 * v326 + 4 * v623;
            if (v620)
            {
              v44 = v328;
              v324 = v327;
            }

            v625 = v324;
            if (v620)
            {
              v47 = v327;
            }

            else
            {
              v47 += 4 * v623;
            }

            if (!--v629)
            {
              goto LABEL_763;
            }
          }

        case 31:
          v611 = v31;
          v612 = v32;
          v613 = v33;
          v610 = v41;
          break;
        default:
          goto LABEL_764;
      }

      break;
    }

LABEL_348:
    v199 = v630[0];
    while (1)
    {
      if (v43)
      {
        v200 = HIBYTE(*v47);
        if (!v200)
        {
          goto LABEL_359;
        }
      }

      else
      {
        v200 = 255;
      }

      v201 = v48->i32[0];
      if (!v38)
      {
        break;
      }

      v202 = HIBYTE(v201);
      v203 = *v47;
      if (HIBYTE(v201))
      {
        goto LABEL_357;
      }

      v204 = v203 & 0xFFFFFF | (v200 << 24);
LABEL_358:
      v48->i32[0] = v204;
LABEL_359:
      v205 = v47 + 4 * v608;
      if (v205 >= v44)
      {
        v206 = -v41;
      }

      else
      {
        v206 = 0;
      }

      v47 = v205 + 4 * v206;
      v48 = (v48 + 4 * v608);
      if (!--v199)
      {
        v48 = (v48 + 4 * v621);
        v207 = v625;
        v208 = v625 + 4 * v623;
        v209 = -(v623 * v609);
        if (v208 < v620)
        {
          v209 = 0;
        }

        v210 = v208 + 4 * v209;
        v211 = v44 + 4 * v209 + 4 * v623;
        if (v620)
        {
          v44 = v211;
          v207 = v210;
        }

        v625 = v207;
        if (v620)
        {
          v47 = v210;
        }

        else
        {
          v47 += 4 * v623;
        }

        if (!--v629)
        {
          goto LABEL_763;
        }

        goto LABEL_348;
      }
    }

    v203 = *v47;
    v202 = 255;
LABEL_357:
    v204 = PDAtranspose_luminosityPDA_15088(v201, v202, v203, v200);
    v38 = v627;
    goto LABEL_358;
  }

  if (BYTE1(v15) != 4)
  {
    goto LABEL_29;
  }

  v629 = *(v12 + 8);
  v630[0] = v19;
  v24 = **(v12 + 88);
  v25 = *(v12 + 12);
  v619 = *(v12 + 28);
  v26 = v619 >> 2;
  v27 = *(v12 + 40) + 4 * (v619 >> 2) * *(v12 + 16);
  v28 = v27 + 4 * v25;
  if (v22)
  {
    shape_enum_clip_alloc(a1, a2, v22, 1, 1, 1, *(v12 + 104), *(v12 + 108), v19, v21);
    v30 = v29;
    if (v29)
    {
      goto LABEL_1100;
    }

    return 1;
  }

  v624 = 0;
  v45 = v27 + 4 * v25;
  while (2)
  {
    v626 = v26 - v19;
    v618 = v19;
    switch(v17)
    {
      case 0:
        v449 = v629;
        v450 = 4 * v19;
        v451 = v619 & 0xFFFFFFFC;
        v452 = 0;
        goto LABEL_950;
      case 1:
        v452 = 0;
        v519 = *(v12 + 88);
        if (v519)
        {
          v452 = *v519;
        }

        v450 = 4 * v19;
        v449 = v629;
        v451 = v619 & 0xFFFFFFFC;
LABEL_950:
        CGBlt_fillBytes(v450, v449, v452, v45, v451);
        goto LABEL_1098;
      case 2:
        v502 = v19 & 3;
        v503 = v629;
        v504 = (v19 >> 2) + 1;
        do
        {
          if (v19 < 4)
          {
            v508 = v19;
          }

          else
          {
            v505 = v504;
            do
            {
              DplusDM_15070(v45, v24, *v45, ~HIBYTE(v24));
              DplusDM_15070((v45 + 4), v24, *(v45 + 4), ~HIBYTE(v24));
              DplusDM_15070((v45 + 8), v24, *(v45 + 8), ~HIBYTE(v24));
              v507 = *(v45 + 12);
              v506 = (v45 + 12);
              DplusDM_15070(v506, v24, v507, ~HIBYTE(v24));
              v45 = (v506 + 1);
              --v505;
            }

            while (v505 > 1);
            v508 = v502;
          }

          if (v508 < 1)
          {
            v510 = v45;
          }

          else
          {
            v509 = v508 + 1;
            v510 = v45;
            do
            {
              v511 = *v510++;
              DplusDM_15070(v45, v24, v511, ~HIBYTE(v24));
              --v509;
              v45 = v510;
            }

            while (v509 > 1);
          }

          v45 = &v510[v626];
          v629 = --v503;
          v12 = v607;
          LODWORD(v19) = v618;
        }

        while (v503);
        goto LABEL_1098;
      case 3:
        do
        {
          v456 = v630[0];
          do
          {
            v457 = HIBYTE(*v45);
            if (v457)
            {
              v458 = v24;
              if (v457 != 255)
              {
                v458 = PDM_15068(v24, v457);
              }
            }

            else
            {
              v458 = 0;
            }

            *v45 = v458;
            v45 += 4;
            --v456;
          }

          while (v456);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 4:
        do
        {
          v453 = v630[0];
          do
          {
            v454 = *(v45 + 3) ^ 0xFF;
            if (v454)
            {
              v455 = v24;
              if (v454 != 255)
              {
                v455 = PDM_15068(v24, v454);
              }
            }

            else
            {
              v455 = 0;
            }

            *v45 = v455;
            v45 += 4;
            --v453;
          }

          while (v453);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 5:
        v538 = v629;
        do
        {
          v539 = v19;
          v540 = v45;
          do
          {
            v541 = *v540++;
            DMplusDM_15069(v45, v24, HIBYTE(v541), v541, ~HIBYTE(v24));
            v45 = v540;
            --v539;
          }

          while (v539);
          v45 = &v540[v626];
          v629 = --v538;
          LODWORD(v19) = v618;
        }

        while (v538);
        goto LABEL_1098;
      case 6:
        do
        {
          v554 = v630[0];
          do
          {
            if (~HIBYTE(*v45))
            {
              if (~HIBYTE(*v45) == 255)
              {
                *v45 = v24;
              }

              else
              {
                DplusDM_15070(v45, *v45, v24, ~HIBYTE(*v45));
              }
            }

            v45 += 4;
            --v554;
          }

          while (v554);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 7:
        do
        {
          v518 = v630[0];
          do
          {
            *v45 = PDM_15068(*v45, HIBYTE(v24));
            v45 += 4;
            --v518;
          }

          while (v518);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 8:
        do
        {
          v459 = v630[0];
          do
          {
            *v45 = PDM_15068(*v45, ~HIBYTE(v24));
            v45 += 4;
            --v459;
          }

          while (v459);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 9:
        v486 = v629;
        do
        {
          v487 = v19;
          v488 = v45;
          do
          {
            v489 = *v488++;
            DMplusDM_15069(v45, v24, ~v489 >> 24, v489, HIBYTE(v24));
            v45 = v488;
            --v487;
          }

          while (v487);
          v45 = &v488[v626];
          v629 = --v486;
          LODWORD(v19) = v618;
        }

        while (v486);
        goto LABEL_1098;
      case 10:
        v561 = v629;
        do
        {
          v562 = v19;
          v563 = v45;
          do
          {
            v564 = *v563++;
            DMplusDM_15069(v45, v24, ~v564 >> 24, v564, ~HIBYTE(v24));
            v45 = v563;
            --v562;
          }

          while (v562);
          v45 = &v563[v626];
          v629 = --v561;
          LODWORD(v19) = v618;
        }

        while (v561);
        goto LABEL_1098;
      case 11:
        v478 = v629;
        v622 = v28;
        do
        {
          v479 = v19;
          v480 = v45;
          do
          {
            v482 = *v480++;
            v481 = v482;
            v483 = HIBYTE(v482);
            if (!v627)
            {
              LOBYTE(v483) = -1;
            }

            DAplusdDA_15071(v45, v481, v483, v24, HIBYTE(v24));
            v45 = v480;
            --v479;
          }

          while (v479);
          v45 = &v480[v626];
          v629 = --v478;
          v28 = v622;
          LODWORD(v19) = v618;
        }

        while (v478);
        goto LABEL_1098;
      case 12:
        do
        {
          v485 = v630[0];
          do
          {
            v484 = (v24 >> 8) & 0xFF00FF;
            *v45 = ((((*v45 >> 8) & 0xFF00FF) + v484) << 8) & 0xFF00FF00 | ((*v45 & 0xFF00FF) + (v24 & 0xFF00FF)) & 0xFF00FF | (15 * ((((*v45 >> 8) & 0xFF00FF) + v484) & 0x1000100 | (((*v45 & 0xFF00FF) + (v24 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * ((((*v45 >> 8) & 0xFF00FF) + v484) & 0x1000100 | (((*v45 & 0xFF00FF) + (v24 & 0xFF00FF)) >> 8) & 0x10001));
            v45 += 4;
            --v485;
          }

          while (v485);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
        goto LABEL_1098;
      case 13:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v548 = v630[0];
          v549 = v627;
          do
          {
            v550 = *v45;
            if (!v549)
            {
              v551 = 255;
LABEL_1002:
              v553 = PDAmultiplyPDA_15072(v550, v551, v24, HIBYTE(v24));
              v549 = v627;
              v552 = v553;
              goto LABEL_1003;
            }

            v551 = HIBYTE(v550);
            v552 = v24;
            if (HIBYTE(v550))
            {
              goto LABEL_1002;
            }

LABEL_1003:
            *v45 = v552;
            v45 += 4;
            --v548;
          }

          while (v548);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 14:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v472 = v630[0];
          v473 = v627;
          do
          {
            v474 = *v45;
            if (!v473)
            {
              v475 = 255;
LABEL_880:
              v477 = PDAscreenPDA_15073(v474, v475, v24, HIBYTE(v24));
              v473 = v627;
              v476 = v477;
              goto LABEL_881;
            }

            v475 = HIBYTE(v474);
            v476 = v24;
            if (HIBYTE(v474))
            {
              goto LABEL_880;
            }

LABEL_881:
            *v45 = v476;
            v45 += 4;
            --v472;
          }

          while (v472);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 15:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v512 = v630[0];
          v513 = v627;
          do
          {
            v514 = *v45;
            if (!v513)
            {
              v515 = 255;
LABEL_939:
              v517 = PDAoverlayPDA_15074(v514, v515, v24, HIBYTE(v24));
              v513 = v627;
              v516 = v517;
              goto LABEL_940;
            }

            v515 = HIBYTE(v514);
            v516 = v24;
            if (HIBYTE(v514))
            {
              goto LABEL_939;
            }

LABEL_940:
            *v45 = v516;
            v45 += 4;
            --v512;
          }

          while (v512);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 16:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v466 = v630[0];
          v467 = v627;
          do
          {
            v468 = *v45;
            if (!v467)
            {
              v469 = 255;
LABEL_870:
              v471 = PDAdarkenPDA_15076(v468, v469, v24, HIBYTE(v24));
              v467 = v627;
              v470 = v471;
              goto LABEL_871;
            }

            v469 = HIBYTE(v468);
            v470 = v24;
            if (HIBYTE(v468))
            {
              goto LABEL_870;
            }

LABEL_871:
            *v45 = v470;
            v45 += 4;
            --v466;
          }

          while (v466);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 17:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v526 = v630[0];
          v527 = v627;
          do
          {
            v528 = *v45;
            if (!v527)
            {
              v529 = 255;
LABEL_967:
              v531 = PDAlightenPDA_15075(v528, v529, v24, HIBYTE(v24));
              v527 = v627;
              v530 = v531;
              goto LABEL_968;
            }

            v529 = HIBYTE(v528);
            v530 = v24;
            if (HIBYTE(v528))
            {
              goto LABEL_967;
            }

LABEL_968:
            *v45 = v530;
            v45 += 4;
            --v526;
          }

          while (v526);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 18:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v555 = v630[0];
          v556 = v627;
          do
          {
            v557 = *v45;
            if (!v556)
            {
              v558 = 255;
LABEL_1020:
              v560 = PDAcolordodgePDA_15077(v557, v558, v24, HIBYTE(v24));
              v556 = v627;
              v559 = v560;
              goto LABEL_1021;
            }

            v558 = HIBYTE(v557);
            v559 = v24;
            if (HIBYTE(v557))
            {
              goto LABEL_1020;
            }

LABEL_1021:
            *v45 = v559;
            v45 += 4;
            --v555;
          }

          while (v555);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 19:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v576 = v630[0];
          v577 = v627;
          do
          {
            v578 = *v45;
            if (!v577)
            {
              v579 = 255;
LABEL_1055:
              v581 = PDAcolorburnPDA_15078(v578, v579, v24, HIBYTE(v24));
              v577 = v627;
              v580 = v581;
              goto LABEL_1056;
            }

            v579 = HIBYTE(v578);
            v580 = v24;
            if (HIBYTE(v578))
            {
              goto LABEL_1055;
            }

LABEL_1056:
            *v45 = v580;
            v45 += 4;
            --v576;
          }

          while (v576);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 20:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v532 = v630[0];
          v533 = v627;
          do
          {
            v534 = *v45;
            if (!v533)
            {
              v535 = 255;
LABEL_977:
              v537 = PDAsoftlightPDA_15080(v534, v535, v24, HIBYTE(v24));
              v533 = v627;
              v536 = v537;
              goto LABEL_978;
            }

            v535 = HIBYTE(v534);
            v536 = v24;
            if (HIBYTE(v534))
            {
              goto LABEL_977;
            }

LABEL_978:
            *v45 = v536;
            v45 += 4;
            --v532;
          }

          while (v532);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 21:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v542 = v630[0];
          v543 = v627;
          do
          {
            v544 = *v45;
            if (!v543)
            {
              v545 = 255;
LABEL_992:
              v547 = PDAhardlightPDA_15079(v544, v545, v24, HIBYTE(v24));
              v543 = v627;
              v546 = v547;
              goto LABEL_993;
            }

            v545 = HIBYTE(v544);
            v546 = v24;
            if (HIBYTE(v544))
            {
              goto LABEL_992;
            }

LABEL_993:
            *v45 = v546;
            v45 += 4;
            --v542;
          }

          while (v542);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 22:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v570 = v630[0];
          v571 = v627;
          do
          {
            v572 = *v45;
            if (!v571)
            {
              v573 = 255;
LABEL_1045:
              v575 = PDAdifferencePDA_15081(v572, v573, v24, HIBYTE(v24));
              v571 = v627;
              v574 = v575;
              goto LABEL_1046;
            }

            v573 = HIBYTE(v572);
            v574 = v24;
            if (HIBYTE(v572))
            {
              goto LABEL_1045;
            }

LABEL_1046:
            *v45 = v574;
            v45 += 4;
            --v570;
          }

          while (v570);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 23:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v582 = v630[0];
          v583 = v627;
          do
          {
            v584 = *v45;
            if (!v583)
            {
              v585 = 255;
LABEL_1065:
              v587 = PDAexclusionPDA_15082(v584, v585, v24, HIBYTE(v24));
              v583 = v627;
              v586 = v587;
              goto LABEL_1066;
            }

            v585 = HIBYTE(v584);
            v586 = v24;
            if (HIBYTE(v584))
            {
              goto LABEL_1065;
            }

LABEL_1066:
            *v45 = v586;
            v45 += 4;
            --v582;
          }

          while (v582);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 24:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v496 = v630[0];
          v497 = v627;
          do
          {
            v498 = *v45;
            if (!v497)
            {
              v499 = 255;
LABEL_916:
              v501 = PDAhuePDA_15083(v498, v499, v24, HIBYTE(v24));
              v497 = v627;
              v500 = v501;
              goto LABEL_917;
            }

            v499 = HIBYTE(v498);
            v500 = v24;
            if (HIBYTE(v498))
            {
              goto LABEL_916;
            }

LABEL_917:
            *v45 = v500;
            v45 += 4;
            --v496;
          }

          while (v496);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 25:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v490 = v630[0];
          v491 = v627;
          do
          {
            v492 = *v45;
            if (!v491)
            {
              v493 = 255;
LABEL_906:
              v495 = PDAsaturationPDA_15084(v492, v493, v24, HIBYTE(v24));
              v491 = v627;
              v494 = v495;
              goto LABEL_907;
            }

            v493 = HIBYTE(v492);
            v494 = v24;
            if (HIBYTE(v492))
            {
              goto LABEL_906;
            }

LABEL_907:
            *v45 = v494;
            v45 += 4;
            --v490;
          }

          while (v490);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 26:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v600 = v630[0];
          v601 = v627;
          do
          {
            v602 = *v45;
            if (!v601)
            {
              v603 = 255;
LABEL_1095:
              v604 = PDAluminosityPDA_15085(v24, HIBYTE(v24), v602, v603);
              v601 = v627;
              goto LABEL_1096;
            }

            v603 = HIBYTE(v602);
            v604 = v24;
            if (HIBYTE(v602))
            {
              goto LABEL_1095;
            }

LABEL_1096:
            *v45 = v604;
            v45 += 4;
            --v600;
          }

          while (v600);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 27:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v460 = v630[0];
          v461 = v627;
          do
          {
            v462 = *v45;
            if (!v461)
            {
              v463 = 255;
LABEL_860:
              v465 = PDAluminosityPDA_15085(v462, v463, v24, HIBYTE(v24));
              v461 = v627;
              v464 = v465;
              goto LABEL_861;
            }

            v463 = HIBYTE(v462);
            v464 = v24;
            if (HIBYTE(v462))
            {
              goto LABEL_860;
            }

LABEL_861:
            *v45 = v464;
            v45 += 4;
            --v460;
          }

          while (v460);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 28:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v588 = v630[0];
          v589 = v627;
          do
          {
            v590 = *v45;
            if (!v589)
            {
              v591 = 255;
LABEL_1075:
              v593 = PDAtranspose_huePDA_15086(v590, v591, v24, HIBYTE(v24));
              v589 = v627;
              v592 = v593;
              goto LABEL_1076;
            }

            v591 = HIBYTE(v590);
            v592 = v24;
            if (HIBYTE(v590))
            {
              goto LABEL_1075;
            }

LABEL_1076:
            *v45 = v592;
            v45 += 4;
            --v588;
          }

          while (v588);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 29:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        do
        {
          v594 = v630[0];
          v595 = v627;
          do
          {
            v596 = *v45;
            if (!v595)
            {
              v597 = 255;
LABEL_1085:
              v599 = PDAtranspose_saturationPDA_15087(v596, v597, v24, HIBYTE(v24));
              v595 = v627;
              v598 = v599;
              goto LABEL_1086;
            }

            v597 = HIBYTE(v596);
            v598 = v24;
            if (HIBYTE(v596))
            {
              goto LABEL_1085;
            }

LABEL_1086:
            *v45 = v598;
            v45 += 4;
            --v594;
          }

          while (v594);
          v45 += 4 * v626;
          --v629;
        }

        while (v629);
LABEL_1098:
        LODWORD(v17) = v616;
        v30 = v624;
        if (!v624)
        {
          return 1;
        }

        v628 = 0;
LABEL_1100:
        if (shape_enum_clip_next(v30, &v628 + 1, &v628, v630, &v629))
        {
          v624 = v30;
          v45 = v28 + 4 * v26 * v628 + 4 * SHIDWORD(v628);
          LODWORD(v19) = v630[0];
          continue;
        }

        v419 = v30;
LABEL_1103:
        free(v419);
        return 1;
      case 30:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v565 = v630[0];
          v566 = v627;
          do
          {
            v567 = *v45;
            if (!v566)
            {
              v568 = 255;
LABEL_1035:
              v569 = PDAtranspose_luminosityPDA_15088(v24, HIBYTE(v24), v567, v568);
              v566 = v627;
              goto LABEL_1036;
            }

            v568 = HIBYTE(v567);
            v569 = v24;
            if (HIBYTE(v567))
            {
              goto LABEL_1035;
            }

LABEL_1036:
            *v45 = v569;
            v45 += 4;
            --v565;
          }

          while (v565);
          v45 += 4 * v626;
          if (!--v629)
          {
            goto LABEL_1098;
          }
        }

      case 31:
        if (!HIBYTE(v24))
        {
          goto LABEL_1098;
        }

        break;
      default:
        goto LABEL_1098;
    }

    break;
  }

LABEL_952:
  v520 = v630[0];
  v521 = v627;
  while (1)
  {
    v522 = *v45;
    if (v521)
    {
      v523 = HIBYTE(v522);
      v524 = v24;
      if (!HIBYTE(v522))
      {
        goto LABEL_958;
      }
    }

    else
    {
      v523 = 255;
    }

    v525 = PDAtranspose_luminosityPDA_15088(v522, v523, v24, HIBYTE(v24));
    v521 = v627;
    v524 = v525;
LABEL_958:
    *v45 = v524;
    v45 += 4;
    if (!--v520)
    {
      v45 += 4 * v626;
      if (!--v629)
      {
        goto LABEL_1098;
      }

      goto LABEL_952;
    }
  }
}