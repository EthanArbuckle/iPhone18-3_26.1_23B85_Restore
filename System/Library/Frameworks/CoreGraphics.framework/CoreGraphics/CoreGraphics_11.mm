void CGContextSetShadowWithColor(CGContextRef c, CGSize offset, CGFloat blur, CGColorRef color)
{
  v29[0] = 0;
  v29[1] = 0x4046800000000000;
  v29[3] = 0x3FE5555555555555;
  v29[6] = 0x3FF0000000000000;
  if (color && ((height = offset.height, width = offset.width, (color & 0x8000000000000000) == 0) ? (Alpha = *(color + *(color + 7) + 8)) : (Alpha = CGTaggedColorGetAlpha(color, color, v4, v5, v6, v7, v8, v9)), Alpha != 0.0))
  {
    if ((*&width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&height & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      *&v29[2] = atan2(height, width) * 180.0 / 3.14159265 + 180.0;
      v29[4] = sqrt(height * height + width * width);
      *&v29[5] = blur;
      ShadowWithColor = CGStyleCreateShadowWithColor(v29, color, v16, v17, v18, v19, v20, v21);
      CGContextSetStyle(c, ShadowWithColor, v23, v24, v25, v26, v27, v28);
      if (ShadowWithColor)
      {
        CFRelease(ShadowWithColor);
      }
    }
  }

  else
  {

    CGContextSetStyle(c, 0, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t __CGStyleGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGStyleGetTypeID_class);
  CGStyleGetTypeID_style_type_id = result;
  return result;
}

uint64_t RIPLayerSymmetricConvolve(uint64_t result, uint64_t a2, double *a3, unsigned int a4)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (*result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  v7 = *(result + 32);
  if (!v7 || v7 != *(a2 + 32))
  {
    return 0;
  }

  v62 = 0uLL;
  v8 = *v7;
  v9 = (*v7 >> 8) & 0xF;
  if (v9 != 3 && v9 != 0)
  {
    return 0;
  }

  v11 = HIWORD(v8) & 0x3F;
  if (v11 != 32 && v11 != 8)
  {
    return 0;
  }

  v16 = *(result + 12);
  v15 = *(result + 16);
  v17 = *(a2 + 12);
  v63.i64[0] = __PAIR64__(v15, v16);
  v18 = 2 * a4;
  v57 = v17.i64[0];
  v53 = vextq_s8(v17, v17, 8uLL);
  v63.u64[1] = vadd_s32(*v53.i8, vdup_n_s32(2 * a4));
  if ((CGSBoundsIntersection((result + 12), v63.i32, &v62) & 1) == 0)
  {
    return 0;
  }

  v25 = v62.i64[0];
  v26.i64[0] = v57;
  v26.i64[1] = v63.i64[1];
  v27 = vdupq_laneq_s64(vsubq_s32(v62, v26), 1);
  v28 = vsubq_s32(vaddq_s32(v62, v26), v63);
  v29 = vaddq_s32(v27, v53);
  *&v30 = v28.i64[0];
  *(&v30 + 1) = v29.i64[0];
  v61 = v30;
  *&v30 = vcgtz_s32(*v29.i8);
  if ((v30 & DWORD1(v30) & 1) == 0)
  {
    return 0;
  }

  v31 = *(v5 + 56);
  if (v31)
  {
    v32 = v62.i32[3];
  }

  else
  {
    v54 = v28;
    v58 = v29;
    result = ripl_CreateMask(v5, 1, v19, v20, v21, v22, v23, v24);
    if (!result)
    {
      return result;
    }

    v31 = *(v5 + 56);
    v8 = *v7;
    v16 = *(v5 + 12);
    v15 = *(v5 + 16);
    v25 = v62.i64[0];
    v32 = v62.i32[3];
    v28 = v54;
    v29 = v58;
  }

  v33 = v29.u32[1];
  v34 = v8 >> 25;
  v35 = v25 - v16;
  v36 = *(v5 + 24) + v15 - (HIDWORD(v25) + v32);
  v37 = *(v5 + 48);
  v38 = *(a2 + 56);
  if (*(a2 + 72))
  {
    if (!v38)
    {
      v55 = v28;
      v59 = v29;
      __b = *(v5 + 48);
      v39 = v36;
      v40 = v31;
      result = ripl_CreateMask(a2, 0, v19, v20, v21, v22, v23, v24);
      if (!result)
      {
        return result;
      }

      v38 = *(a2 + 56);
      v31 = v40;
      v36 = v39;
      v37 = __b;
      v28 = v55;
      v29 = v59;
    }
  }

  else if (!v38 || *(a2 + 64))
  {
    v56 = v36;
    v60 = v35;
    v41 = (v35 + a4) * v34;
    v42 = v31;
    v43 = v31 + v41;
    v44 = v18 + 3;
    if (v29.i32[1] < (v18 + 3))
    {
      v44 = v29.u32[1];
    }

    if (v29.i32[1] >= 0)
    {
      v33 = v44;
    }

    __ba = (v43 + v37 * (v36 + a4));
    CGBlt_fillBytes(v29.i32[0], v33, -1, __ba, v37);
    v46 = *(a2 + 64);
    if (v46 && (v47 = ripl_Containment(&v61, (a2 + 12), v46)) != 0)
    {
      v48 = __ba;
      CGSCombineMask(0, 0, __ba, *(v5 + 48), SDWORD2(v61), v33, v47);
      v49 = v37;
      v31 = v42;
      v35 = v60;
      v36 = v56;
    }

    else
    {
      v49 = v37;
      v31 = v42;
      v35 = v60;
      v36 = v56;
      v48 = __ba;
    }

    goto LABEL_42;
  }

  v49 = *(a2 + 48);
  v45 = vaddq_s32(v29, v28);
  v48 = v38 + (*(a2 + 16) + *(a2 + 24) - v45.n128_u32[1]) * v49 + (v28.i32[0] - *(a2 + 12)) * v34;
LABEL_42:
  v50 = (v31 + (v37 * v36) + v34 * v35);
  result = symmetric_convolve(DWORD2(v61), v33, v50, *(v5 + 48), v48, v49, a3, a4, v45, v34);
  if (result)
  {
    if (v33 != HIDWORD(v61))
    {
      CGBlt_copyBytes(v62.i32[2], v18 | 1, v50 + (*(v5 + 48) * (v18 + 2)), v50 + (*(v5 + 48) * (HIDWORD(v61) - 1)), *(v5 + 48), *(v5 + 48));
      CGBlt_copyBytes(v62.i32[2], HIDWORD(v61) - v33, v50 + *(v5 + 48) * (v18 | 1u), v50 + *(v5 + 48) * (v18 | 1) + *(v5 + 48), 0, *(v5 + 48));
    }

    return 1;
  }

  return result;
}

float RIPColorCreateWithColor(int a1, double *a2, uint64_t a3, double a4)
{
  v8 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = &ripc_class;
  *(v8 + 6) = a1;
  if (a3)
  {
    v9 = (v8 + 28);
    do
    {
      v10 = *a2++;
      v11 = v10;
      *v9++ = v11;
      --a3;
    }

    while (a3);
  }

  result = a4;
  *(v8 + 39) = result;
  return result;
}

void style_finalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void rips_s_release(_DWORD *a1)
{
  v2 = a1[2] - 1;
  a1[2] = v2;
  if (!v2)
  {
    v4 = *(a1 + 11);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 10);
    if (v5)
    {
      CGGStateRelease(v5);
    }

    free(a1);
  }
}

uint64_t __CGPDFStreamGetTypeID_block_invoke()
{
  result = pdf_register_cftype(&CGPDFStreamGetTypeID_class);
  CGPDFStreamGetTypeID_id = result;
  return result;
}

uint64_t pdf_page_get_xinfo(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 88));
  if (!*(a1 + 64))
  {
    v2 = 1;
    v3 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    __CFSetLastAllocationEventName();
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    os_unfair_lock_lock((a1 + 32));
    v4 = *(a1 + 24);
    os_unfair_lock_unlock((a1 + 32));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __CheckPageForSpecialBlends_block_invoke;
    v7[3] = &unk_1E6E31550;
    v7[4] = &v8;
    CGPDFResourcesIterateCategory(v4, "ExtGState", v7);
    if ((v9[3] & 1) == 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __CheckPageForSpecialBlends_block_invoke_2;
      v6[3] = &unk_1E6E315A0;
      v6[4] = &v8;
      CGPDFResourcesIterateCategory(v4, "XObject", v6);
      v2 = *(v9 + 24);
    }

    _Block_object_dispose(&v8, 8);
    *v3 = v2 & 1;
    *(a1 + 64) = v3;
  }

  os_unfair_lock_unlock((a1 + 88));
  return *(a1 + 64);
}

uint64_t CGImageHasAlpha(uint64_t result)
{
  if (result)
  {
    return (*(result + 39) >> 2) & 1;
  }

  return result;
}

uint64_t CGFontGetVariationAxes(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 416))(*(result + 112));
  }

  return result;
}

CGFontRef CGFontCreateCopyWithVariations(CGFontRef font, CFDictionaryRef variations)
{
  v2 = font;
  if (font)
  {
    if (variations && CFDictionaryGetCount(variations) && ((count = 0, v33 = 0, (v4 = (*(*(v2 + 2) + 216))(*(v2 + 14), &count)) != 0) ? (v5 = count == 0) : (v5 = 1), !v5))
    {
      Float = malloc_type_calloc(count, 0x10uLL, 0x1000040F7F8B94BuLL);
      v15 = Float;
      if (count)
      {
        v16 = 0;
        v17 = (Float + 8);
        v18 = (v4 + 8);
        do
        {
          v19 = *(v18 - 2);
          *(v17 - 2) = v19;
          v20 = copy_name_for_identifier(v2, v19);
          Float = CGCFDictionaryGetFloat(variations, v20, &v33);
          if (Float)
          {
            v21 = &v33;
          }

          else
          {
            v21 = v18;
          }

          *v17 = *v21;
          if (v20)
          {
            CFRelease(v20);
          }

          ++v16;
          v17 += 2;
          v18 += 2;
        }

        while (v16 < count);
      }

      v22 = CGFontCreate(Float, v8, v9, v10, v11, v12, v13, v14);
      VTable = CGFontGetVTable(v22, v23, v24, v25, v26, v27, v28, v29);
      v31 = (*(VTable + 48))(*(v2 + 14), v15, count);
      *(v22 + 14) = v31;
      if (v31)
      {
        free(v15);
        return v22;
      }

      else
      {
        CFRelease(v22);
        free(v15);
        return 0;
      }
    }

    else
    {
      CFRetain(v2);
    }
  }

  return v2;
}

void *CGFontGetHMetrics(void *result)
{
  if (result)
  {
    v1 = result;
    result = atomic_load_explicit(result + 6, memory_order_acquire);
    if (!result)
    {
      result = get_font_info(v1);
      if (result)
      {
        v2 = result;
        result = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
        v4 = 0;
        *result = *(v2 + 12);
        v3 = *(v2 + 8);
        *(result + 2) = *(v2 + 5);
        *(result + 3) = v3;
        atomic_compare_exchange_strong(v1 + 6, &v4, result);
        if (v4)
        {
          free(result);
          return v4;
        }
      }
    }
  }

  return result;
}

int CGFontGetCapHeight(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[6];
  }

  return font_info;
}

CFURLRef CGFontCopyURL(const __CFURL *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = (*(*(a1 + 2) + 232))(*(a1 + 14));
    if (v2)
    {
      v3 = v2;
      v4 = (*(*(v1 + 2) + 168))(*(v1 + 14));
      v5 = CGFontCopyVariations(v1);
      v1 = CGFontURLCreate(v3, v4, v5);
      CFRelease(v3);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void append_variations(__CFString *a1, CFDictionaryRef theDict)
{
  v16 = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  v6 = MEMORY[0x1EEE9AC00](8 * Count, v5);
  if (v7 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v10 = (v14 - v8);
  }

  else
  {
    v10 = 0;
  }

  v14[0] = v14 - v8;
  v14[1] = v9;
  if (v7 - 0x1FFFFFFFFFFFFFFFLL >= 0xE00000000000000ELL)
  {
    v10 = malloc_type_malloc(v6, 0x330FAF09uLL);
  }

  valuePtr = 0.0;
  CFDictionaryGetKeysAndValues(theDict, v10, 0);
  qsort(v10, Count, 8uLL, compare_keys);
  if (Count)
  {
    v11 = v10;
    do
    {
      v12 = *v11++;
      Value = CFDictionaryGetValue(theDict, v12);
      CFStringAppend(a1, @";var:");
      append_escaped_string(a1, v12);
      CFStringAppend(a1, @"=");
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      CFStringAppendFormat(a1, 0, @"%g", valuePtr);
      --Count;
    }

    while (Count);
  }

  if (v10 != v14[0])
  {
    free(v10);
  }
}

uint64_t CGFontGetVariations(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 216))(*(result + 112));
  }

  return result;
}

float calculate_headroom(uint64_t a1, int *a2)
{
  valuePtr = 0.0;
  cf = 0;
  if (calculate_headroom_predicate != -1)
  {
    dispatch_once(&calculate_headroom_predicate, &__block_literal_global_371_5164);
  }

  if (calculate_headroom_f(a1, 0, &cf))
  {
    goto LABEL_4;
  }

  if (!cf)
  {
LABEL_11:
    v17 = 0;
    v12 = calculate_image_stats(a1, &v17);
    v13 = *(&v17 + 1);
    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v13 = 0.0;
      v14 = 0;
    }

    valuePtr = v13;
    *a2 = v14;
    return valuePtr;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
LABEL_4:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(cf, @"kCGContentHeadroom");
  if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr) != 1)
  {
    CGLog(2, "Failure to get headroom from CGImageComputeImageStatistics", v6, v7, v8, v9, v10, v11, v16);
    *a2 = 0;
    goto LABEL_4;
  }

  *a2 = 2;
  if (cf)
  {
    CFRelease(cf);
  }

  return valuePtr;
}

_DWORD *decode_create(uint64_t a1, unsigned int a2, int a3, uint64_t a4, int a5, __n128 a6)
{
  v79 = a4;
  v6 = 0;
  v80 = *MEMORY[0x1E69E9840];
  if ((a1 - 256) < 0xFFFFFF01)
  {
    return v6;
  }

  if (a2 - 256 < 0xFFFFFF01)
  {
    return v6;
  }

  v6 = 0;
  if (a3 < a2 || a3 >= 0x10000)
  {
    return v6;
  }

  LODWORD(v9) = a5;
  v10 = a1;
  if ((a5 & 0x400000) != 0)
  {
    v11 = a1 - 1;
  }

  else
  {
    v11 = -1;
  }

  if ((a5 & 0x200000) != 0)
  {
    v11 = 0;
  }

  if ((a5 & 0x400) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  if ((a5 & 0x87) == 0 || a2 != 32 && (a5 & 0x80) != 0 || a2 != 16 && (a5 & 4) != 0)
  {
    return 0;
  }

  if (a5)
  {
    v74 = a5 & 0x81;
    v14 = 8;
    if (a2 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = a2;
    }

    v73 = v15;
    v78 = ((1 << v15) + 3) & 0x1FFFC;
  }

  else
  {
    if ((a5 & 2) != 0)
    {
      v78 = 0;
      v74 = a5 & 0x82;
      v14 = 16;
      if (a2 >= 0x10)
      {
        v17 = 16;
      }

      else
      {
        v17 = a2;
      }

      v73 = v17;
      v16 = 65535.0;
      goto LABEL_32;
    }

    v73 = 0;
    v74 = a5 & 0x87;
    v14 = 0;
    v78 = 0;
  }

  v16 = 255.0;
LABEL_32:
  LODWORD(v75) = a1 - 1;
  v18 = a5 & 0x400;
  LODWORD(v77) = v18;
  v72 = v14;
  if (v79)
  {
    MEMORY[0x1EEE9AC00](a1, a6);
    v20 = &v71[-v19];
    bzero(&v71[-v19], v21);
    v22 = v77;
    v23 = 0;
    v24 = 0;
    if (a2 >= v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = a2;
    }

    v26 = (&_decode_range + 2 * v25);
    v27 = (v79 + 4);
    v28 = -1;
    v29 = v10;
    while (1)
    {
      v30 = (v79 + 8 * v23);
      v31 = *v30;
      v32 = v30[1];
      if (v22)
      {
        if (v23 != v12)
        {
          break;
        }
      }

      v35 = v32 - v31;
      if (v31 == 0.0 && v35 == 1.0)
      {
        v28 = 2 * ((v28 + 1) > 1);
        v39 = *v26;
      }

      else
      {
        if (v31 != 1.0 || v35 != -1.0)
        {
          break;
        }

        if (v28 == 1 || v28 == -1)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        v39 = v26[1];
      }

      *&v20[8 * v23] = v39;
LABEL_69:
      if (++v23 == v10)
      {
        goto LABEL_72;
      }
    }

    *&v20[8 * v23] = 0;
    v33 = 0;
    if (v23)
    {
      v34 = v27;
      while (v12 == v33 || !*&v20[8 * v33] || *(v34 - 1) != v31 || *v34 != v32)
      {
        ++v33;
        v34 += 2;
        if (v23 == v33)
        {
          LODWORD(v33) = v23;
          break;
        }
      }

      v33 = v33;
    }

    if (v33 == v23)
    {
      ++v24;
    }

    v28 = 2;
    goto LABEL_69;
  }

  v20 = 0;
  v24 = v18 != 0;
  v28 = v18 >> 9;
  v29 = a1;
LABEL_72:
  v40 = malloc_type_malloc(8 * v29 + v24 * (v78 + 20) + 40, 0x10C00405BF71875uLL);
  v6 = v40;
  v41 = v74;
  *v40 = v28;
  v40[1] = v41;
  v40[3] = v10;
  v40[4] = a2;
  v40[5] = a3;
  if (v9 & 0x200)
  {
    v40[7] = 4;
    v42 = v75;
  }

  else
  {
    v42 = v75;
    if (v9 & 0x100)
    {
      v40[7] = 2;
    }

    else
    {
      v40[7] = 0;
    }
  }

  v43 = v77;
  v40[6] = (v9 >> 20) & 1;
  if (v9 & 0x400000)
  {
    v44 = v42;
  }

  else
  {
    v44 = -1;
  }

  if (v9 & 0x200000)
  {
    v44 = 0;
  }

  v40[2] = v44;
  v45 = (v40 + 10);
  *(v40 + 4) = v40 + 10;
  if (v20)
  {
    v46 = v43 != 0;
    if (v10 >= 1)
    {
      v47 = 0;
      v77 = (v79 + 4);
      v48 = -1;
      v49 = &v45[8 * v29];
      v75 = v73;
      v76 = v9;
      do
      {
        ++v48;
        v50 = *&v20[8 * v47];
        *&v45[8 * v47] = v50;
        if (!v50)
        {
          v51 = (v79 + 8 * v47);
          v52 = *v51;
          v53 = v51[1];
          v54 = v47 == v12 || v46;
          if (v54 | ((v9 & 4) >> 2))
          {
            v55 = 1.0;
          }

          else
          {
            v55 = v16;
          }

          if (v47)
          {
            v56 = 0;
            v57 = v77;
            while (v12 == v56 || *(v57 - 1) != v52 || *v57 != v53)
            {
              ++v56;
              v57 += 2;
              if (v47 == v56)
              {
                LODWORD(v56) = v48;
                goto LABEL_101;
              }
            }

            v58 = *&v20[8 * v56];
            *&v20[8 * v47] = v58;
            *&v45[8 * v47] = v58;
          }

          else
          {
            LODWORD(v56) = 0;
          }

LABEL_101:
          if (v47 == v56)
          {
            v59 = v78;
            v60 = v29;
            v61 = v45;
            v9 = v46;
            DECODE_RANGE(v49, v75, v78, v52, v53, v55);
            v46 = v9;
            LOBYTE(v9) = v76;
            v45 = v61;
            v29 = v60;
            *&v20[8 * v47] = v49;
            *&v45[8 * v47] = v49;
            v49 += v59 + 20;
          }
        }

        ++v47;
      }

      while (v47 != v29);
    }
  }

  else
  {
    if ((v9 & 0x480) == 0x400)
    {
      v62 = &v45[8 * v29];
      DECODE_RANGE(v62, v73, v78, 0.0, ~(-1 << v73), 1.0);
      v45 = (v6 + 10);
    }

    else
    {
      v63 = v72;
      if (a2 < v72)
      {
        v63 = a2;
      }

      v62 = *(&_decode_range + 2 * v63);
    }

    if (v10 >= 1)
    {
      v64 = (v29 + 1) & 0x1FE;
      v65 = vdupq_n_s64(v29 - 1);
      v66 = xmmword_18439C670;
      v67 = (v6 + 12);
      v68 = vdupq_n_s64(2uLL);
      do
      {
        v69 = vmovn_s64(vcgeq_u64(v65, v66));
        if (v69.i8[0])
        {
          *(v67 - 1) = v62;
        }

        if (v69.i8[4])
        {
          *v67 = v62;
        }

        v66 = vaddq_s64(v66, v68);
        v67 += 2;
        v64 -= 2;
      }

      while (v64);
    }

    if (v12 != -1)
    {
      v70 = v72;
      if (a2 < v72)
      {
        v70 = a2;
      }

      *&v45[8 * v12] = *(&_decode_range + 2 * v70);
    }
  }

  return v6;
}

uint64_t img_data_depth(_DWORD *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    v9 = a1[10];
    if (v9 != 32)
    {
      if (v9 == 16)
      {
        if (a2 != 5)
        {
          if (a2 != 2)
          {
            _CGHandleAssert("img_data_depth", 4554, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "0", "Bad image component type for 16-bit pipeline: %d", a6, a7, a8, a2);
          }

          goto LABEL_22;
        }

        goto LABEL_28;
      }

      if (v9 == 8)
      {
        if (a2 != 1)
        {
          _CGHandleAssert("img_data_depth", 4521, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "0", "Bad image component type for 8-bit pipeline: %d", a6, a7, a8, a2);
        }

        goto LABEL_10;
      }

      return 0;
    }

    if (a2 != 4)
    {
      _CGHandleAssert("img_data_depth", 4574, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "0", "Bad image component type for 32-bit pipeline: %d", a6, a7, a8, a2);
    }

LABEL_35:
    v14 = a1[9];
    switch(v14)
    {
      case 4:
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1EC0;
        return *v11;
      case 3:
        v15 = a1[11];
        if ((v15 - 5) < 2)
        {
          goto LABEL_44;
        }

        if (v15 == 1)
        {
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1EA0;
          return *v11;
        }

        if (!v15)
        {
LABEL_44:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1E90;
          return *v11;
        }

        break;
      case 1:
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1EB0;
        return *v11;
    }

    return 0;
  }

  v8 = 0;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 != 5)
      {
        return v8;
      }

LABEL_28:
      v13 = a1[9];
      switch(v13)
      {
        case 4:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1F08;
          return *v11;
        case 3:
          v17 = a1[11];
          switch(v17)
          {
            case 5:
              goto LABEL_63;
            case 1:
              if (img_globals_once != -1)
              {
                dispatch_once(&img_globals_once, &__block_literal_global_12116);
              }

              v11 = &qword_1ED4E1EF8;
              return *v11;
            case 0:
LABEL_63:
              if (img_globals_once != -1)
              {
                dispatch_once(&img_globals_once, &__block_literal_global_12116);
              }

              v11 = &qword_1ED4E1EE8;
              return *v11;
          }

          break;
        case 1:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1ED8;
          return *v11;
      }

      return 0;
    }

    goto LABEL_35;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return v8;
    }

LABEL_22:
    v12 = a1[9];
    switch(v12)
    {
      case 4:
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1E80;
        return *v11;
      case 3:
        v18 = a1[11];
        if ((v18 - 5) < 2)
        {
          goto LABEL_69;
        }

        if (v18 == 1)
        {
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1E70;
          return *v11;
        }

        if (!v18)
        {
LABEL_69:
          if (img_globals_once != -1)
          {
            dispatch_once(&img_globals_once, &__block_literal_global_12116);
          }

          v11 = &qword_1ED4E1E60;
          return *v11;
        }

        break;
      case 1:
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1E50;
        return *v11;
    }

    return 0;
  }

LABEL_10:
  v10 = a1[9];
  if (v10 == 4)
  {
    if (img_globals_once != -1)
    {
      dispatch_once(&img_globals_once, &__block_literal_global_12116);
    }

    v11 = &qword_1ED4E1E38;
    return *v11;
  }

  if (v10 != 3)
  {
    if (v10 == 1)
    {
      if (a1[11] == 1)
      {
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1F18;
      }

      else
      {
        if (img_globals_once != -1)
        {
          dispatch_once(&img_globals_once, &__block_literal_global_12116);
        }

        v11 = &qword_1ED4E1DF8;
      }

      return *v11;
    }

    return 0;
  }

  v8 = 0;
  v16 = a1[11];
  if (v16 > 4)
  {
    if ((v16 - 5) > 1)
    {
      return v8;
    }

LABEL_83:
    if (img_globals_once != -1)
    {
      dispatch_once(&img_globals_once, &__block_literal_global_12116);
    }

    v11 = &qword_1ED4E1E10;
    return *v11;
  }

  switch(v16)
  {
    case 0:
      goto LABEL_83;
    case 1:
      if (img_globals_once != -1)
      {
        dispatch_once(&img_globals_once, &__block_literal_global_12116);
      }

      v11 = &qword_1ED4E1E18;
      return *v11;
    case 2:
      if (img_globals_once != -1)
      {
        dispatch_once(&img_globals_once, &__block_literal_global_12116);
      }

      v11 = &qword_1ED4E1E28;
      return *v11;
  }

  return v8;
}

void *img_blocks_create(uint64_t a1, CGFloat *a2, int *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v7 = a2 + 1;
  v8 = (a1 + 16);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v7 = (a1 + 24);
  }

  v46 = *v7;
  v47 = *v8;
  if (a3)
  {
    v51.origin.x = *a3;
    v51.origin.y = a3[1];
    v51.size.width = a3[2];
    v51.size.height = a3[3];
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v49.size.width = *v8;
    v49.size.height = *v7;
    CGRectIntersection(v49, v51);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else if (!a4)
  {
    goto LABEL_13;
  }

  if (img_blocks_options_predicate != -1)
  {
    dispatch_once(&img_blocks_options_predicate, &__block_literal_global_64_12058);
  }

  if (img_blocks_options_options_singleton)
  {
    v9 = CGImageProviderCopyImageBlockSetWithOptions(a1, img_blocks_options_options_singleton);
    if (v9)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  v9 = CGImageProviderCopyImageBlockSetWithOptions(a1, 0);
  v4 = 0;
  if (v9)
  {
LABEL_14:
    v10 = v9;
    v11 = *(v9 + 120);
    if (!v11)
    {
      CGImageBlockSetRelease(v9);
      v25 = "%s: Assertion failed - empty image block set ";
      goto LABEL_46;
    }

    v12 = malloc_type_malloc(32 * v11 + 96, 0x10F00408077F5F0uLL);
    if (!v12)
    {
      CGImageBlockSetRelease(v10);
      v25 = "%s: Cannot allocate memory";
      goto LABEL_46;
    }

    v16 = v12;
    *v12 = v10;
    v12[1] = v4;
    v12[4] = *(v10 + 72);
    if (a2)
    {
      v17 = *(v10 + 16);
    }

    else
    {
      v17.f64[0] = v47;
      v17.f64[1] = v46;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v17)));
    *&v30 = v29.i32[0];
    *(&v30 + 1) = v29.i32[1];
    *(v12 + 1) = v30;
    v31 = &v12[2 * v11 + 12];
    v12[8] = 0;
    v12[9] = v12 + 12;
    v12[10] = v31;
    v12[11] = v31 + 8 * v11;
    v48 = vcvtpd_s64_f64(*(v10 + 48));
    while (1)
    {
      if (*(v10 + 120) > v26 && (v32 = *(v10 + 8 * v26 + 128)) != 0)
      {
        v33 = *v32;
        *(v16[10] + 8 * v27) = *v32;
        if (v33)
        {
          v34 = (v16[9] + 16 * v27);
          v50 = CGRectIntegral(*(v32 + 8));
          *v34 = v50.origin.x | (v50.origin.y << 32);
          v34[1] = v50.size.width | (v50.size.height << 32);
          v35 = v16[9];
          v36 = &v35[v27];
          v37 = *(v36 + 2);
          if ((v37 & 0x80000000) != 0 || (*(v36 + 3) & 0x80000000) != 0)
          {
            v39 = a1;
            v40 = v10;
            v41 = v26;
            v42 = v32;
            v43 = "Invalid size";
          }

          else
          {
            v38 = *(v32 + 40);
            *(v16[11] + 8 * v27) = v38;
            if (v38 >= v16[4] * v37)
            {
              if (v37 >= v48)
              {
                ++v28;
              }

              if (v27)
              {
                v16[7] = CGSBoundsUnion(v16[7], v16[8], *v36, *(v36 + 1));
                v16[8] = v44;
              }

              else
              {
                *(v16 + 7) = *v35;
              }

              ++v27;
              goto LABEL_31;
            }

            v39 = a1;
            v40 = v10;
            v41 = v26;
            v42 = v32;
            v43 = "Invalid bytes-per-row";
          }
        }

        else
        {
          v39 = a1;
          v40 = v10;
          v41 = v26;
          v42 = v32;
          v43 = "Null data pointer";
        }
      }

      else
      {
        v39 = a1;
        v40 = v10;
        v41 = v26;
        v42 = 0;
        v43 = "Null block";
      }

      img_blocks_error(v39, v40, v41, v42, v43, v13, v14, v15);
LABEL_31:
      if (v11 == ++v26)
      {
        v16[5] = v27;
        v16[6] = v28;
        if (v27 && *(v16 + 16) >= 1 && *(v16 + 17) > 0)
        {
          return v16;
        }

        CGImageBlockSetRelease(v10);
        free(v16);
        v25 = "%s: Assertion failed - image block set contains no usable blocks";
LABEL_46:
        CGPostError(v25, v18, v19, v20, v21, v22, v23, v24, "img_blocks_create");
        return 0;
      }
    }
  }

  return v4;
}

uint64_t img_blocks_extent(void *a1, int *a2)
{
  if (a1[23])
  {
    return 0;
  }

  v11[4] = v2;
  v11[5] = v3;
  v7 = a1[19];
  v11[0] = 0;
  v11[1] = 0;
  if (v7)
  {
    if (a2)
    {
      v8 = CGSBoundsIntersection(a2, v7, v11);
      a2 = v11;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      a2 = v7;
    }
  }

  v9 = img_blocks_create(a1[18], 0, a2, 0);
  if (v9)
  {
    v10 = v9;
    result = 0;
    a1[23] = v10;
    a1[11] = 0;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t img_decode_read(uint64_t a1, int a2, uint64_t a3, int16x4_t **a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = 0;
  v146 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0)
  {
    v11 = a3;
    v12 = (a3 - 1);
    if (a3 >= 1)
    {
      v16 = *(a1 + 96);
      v18 = *(a1 + 144);
      v17 = *(a1 + 152);
      v138 = *(a1 + 160);
      if (v16 == -1)
      {
        v26 = *(a1 + 128);
        v27 = *(a1 + 40);
        if (v27 >= 0)
        {
          v28 = *(a1 + 40);
        }

        else
        {
          v28 = v27 + 7;
        }

        v29 = *(a1 + 184);
        if (!v29)
        {
          v30 = img_blocks_create(v18, 0, v17, 0);
          if (!v30)
          {
            return 0xFFFFFFFFLL;
          }

          v29 = v30;
          *(a1 + 184) = v30;
          *(a1 + 88) = 0;
        }

        v31 = v11 + a2;
        v32 = *(v29 + 15);
        v33 = *(v29 + 17) + v32;
        if (v32 >= v11 + a2 || v33 <= a2)
        {
          return 0;
        }

        v44 = v33 >= v31;
        v45 = v33 - v31;
        if (!v44)
        {
          v11 = v45 + v11;
          if (v11 < 1)
          {
            return 0;
          }
        }

        *(a1 + 88) = a2;
        v142 = 0;
        v143 = a2;
        v144 = *(a1 + 120);
        v145 = v11;
        v46 = v29[5];
        if (v46 >= 1)
        {
          v47 = v26;
          v48 = 0;
          v49 = 0;
          v50 = *(v29 + 8);
          v135 = v28 >> 3;
          v136 = v50;
          v137 = (v28 >> 3) * v47;
          v134 = (v28 >> 3) + v137;
          v51 = v46 & 0x7FFFFFFF;
          do
          {
            v140 = 0;
            v141 = 0;
            v139 = 0uLL;
            v139 = *(v29[9] + v48);
            if (CGSBoundsIntersection(&v142, &v139, &v140))
            {
              v54 = SHIDWORD(v140) - v143;
              v55 = a4[1];
              v56 = *a4 + v54 * *a5;
              if (v55)
              {
                v57 = v140;
                v58 = v140 - v142;
                if (v55 == *a4)
                {
                  v60 = &v56[v134 * v58];
                  v59 = v60;
                }

                else
                {
                  v59 = &v56[v137 * v58];
                  v60 = (v55 + a5[1] * v54 + v58 * v135);
                }
              }

              else
              {
                v60 = 0;
                v57 = v140;
                v59 = &v56[v137 * (v140 - v142)];
              }

              v61 = *(v29[10] + 8 * v49);
              if (v61)
              {
                v62 = *(v29[11] + 8 * v49);
                decode_data(v138, v141, SHIDWORD(v141), (v61 + v62 * (SHIDWORD(v140) - SDWORD1(v139)) + (v57 - v139) * v136), v62, v59, *a5, v60, v52, v53, a5[1]);
              }

              else
              {
                CGBlt_fillBytes(*a5, HIDWORD(v141), 0, v59, *a5);
                if (v60 && v60 != v59)
                {
                  CGBlt_fillBytes(a5[1], HIDWORD(v141), 0, v60, a5[1]);
                }
              }
            }

            ++v49;
            v48 += 16;
          }

          while (v51 != v49);
        }
      }

      else
      {
        if (!v16)
        {
          if (v16)
          {
            _CGHandleAssert("img_decode_read_with_data_provider", 1202, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "stage->param[IMG_DECODE_NDATA] == 0", "param = %ld", a6, a7, a8, 0);
          }

          image_pointer = get_image_pointer(a1);
          if (image_pointer)
          {
            v22 = *(a1 + 120);
            v23 = *(a1 + 136);
            v24 = *(a1 + 160);
            *(a1 + 88) = a2;
            v25 = v23 * a2;
            if (v25 == v25)
            {
              decode_data(v24, v22, v11, (image_pointer + v25), v23, *a4, *a5, a4[1], v20, v21, a5[1]);
LABEL_86:
              v100 = *(a1 + 88) + v11;
LABEL_134:
              *(a1 + 88) = v100;
              return v11;
            }
          }

          else
          {
            v78 = *(a1 + 136);
            v79 = *(a1 + 104);
            v137 = *(a1 + 88);
            v138 = *(a1 + 160);
            access_session = get_access_session(a1);
            v82 = (v79 + 15) & 0x7FFFFFF0;
            if (v78 - v82 < 64 || v78 <= v82)
            {
              v82 = v78;
            }

            if (v79 < 1)
            {
              v82 = v78;
            }

            v84 = *a5;
            v85 = v84 * v11;
            if (v85 != v85)
            {
              return 0;
            }

            v86 = v84 * v12;
            if (v86 != v86)
            {
              return 0;
            }

            v87 = *a4 + v85;
            v88 = v86 / v82;
            if (v86 / v82 < v11)
            {
              v89 = *(a1 + 64);
              LODWORD(v12) = v88;
              if (v88 < v89)
              {
                if (v89 >= v11)
                {
                  LODWORD(v12) = v11;
                }

                else
                {
                  LODWORD(v12) = *(a1 + 64);
                }

                v82 = *(a1 + 56);
                v90 = v82 * v12;
                if (v90 != v90)
                {
                  return 0;
                }

                v87 = (*(a1 + 72) + v90);
              }
            }

            v91 = v12 * v82;
            if (v91 == v91)
            {
              v92 = v82;
              v93 = &v87[-v91];
              v94 = v137;
              if (v137 > a2)
              {
                v94 = 0;
                *(a1 + 88) = 0;
              }

              if (v94 < a2)
              {
                *(a1 + 88) = a2;
              }

              ChunksAtPosition = CGAccessSessionGetChunksAtPosition(access_session, v78 * a2, v92, v78 - v92, v12, &v87[-v91], 0, v81);
              v98 = ChunksAtPosition / v78;
              if (ChunksAtPosition % v78 < v79)
              {
                v99 = ChunksAtPosition / v78;
              }

              else
              {
                v99 = v98 + 1;
              }

              if (v79 >= 1)
              {
                v11 = v99;
              }

              else
              {
                v11 = v98;
              }

              if (v138)
              {
                decode_data(v138, *(a1 + 120), v11, v93, v92, *a4, *a5, a4[1], v96, v97, a5[1]);
              }

              else
              {
                v122 = *a5;
                if (v122 >= v92)
                {
                  v123 = v92;
                }

                else
                {
                  v123 = *a5;
                }

                if (v11)
                {
                  v124 = v11;
                  v125 = *a4;
                  do
                  {
                    memmove(v125, v93, v123);
                    v125 = (v125 + v122);
                    v93 += v92;
                    --v124;
                  }

                  while (v124);
                }
              }

              goto LABEL_86;
            }
          }

          return 0;
        }

        v35 = *(a1 + 120);
        v36 = *(a1 + 136);
        if (v17)
        {
          v37 = *(a1 + 128);
          v133 = *(a1 + 40);
          if (v133 >= 0)
          {
            v38 = v133;
          }

          else
          {
            v38 = v133 + 7;
          }

          v39 = a3 + a2;
          v40 = v17[1];
          v41 = v17[3] + v40;
          *(a1 + 88) = a2;
          v42 = v41 <= a2 || v39 <= v40;
          v135 = v38;
          v136 = v37;
          if (v42)
          {
            v40 = 0;
            v39 = 0;
            v43 = 0;
            v134 = 0;
          }

          else
          {
            if (v41 < v39)
            {
              v39 = v41;
            }

            v101 = a2 - v40;
            v103 = v40 - a2;
            v102 = v40 <= a2;
            if (v40 > a2)
            {
              v43 = 0;
            }

            else
            {
              v40 = a2;
              v43 = v101;
            }

            if (v102)
            {
              v104 = 0;
            }

            else
            {
              v104 = v103;
            }

            v134 = v104;
          }

          v137 = v39 - v40;
          if (v39 - v40 == a3 && v17[2] == v35)
          {
            goto LABEL_101;
          }

          CGBlt_fillBytes(*a5, a3, 0, *a4, *a5);
          v105 = a4[1];
          if (v105)
          {
            CGBlt_fillBytes(a5[1], v11, 0, v105, a5[1]);
          }

          if (v137 >= 1)
          {
LABEL_101:
            MEMORY[0x1EEE9AC00](result, a9);
            v107 = &v132[-v106];
            bzero(&v132[-v106], v108);
            v111 = &v107[v16];
            if (v16 >= 1)
            {
              v112 = v16 & 0x7FFFFFFF;
              v113 = &v107[v16];
              v114 = v107;
              do
              {
                v116 = *v18++;
                v115 = v116;
                LODWORD(v116) = *v36++;
                *v113 = v115 + v116 * v43;
                v113 += 2;
                *v114++ = v116;
                --v112;
              }

              while (v112);
            }

            v117 = v135 >> 3;
            v118 = a4[1];
            v119 = *a4 + *a5 * v134;
            if (v118)
            {
              if (v118 == *a4)
              {
                v120 = (v119 + (v117 + v117 * v136) * *v17);
                v121 = v120;
              }

              else
              {
                v120 = (v119 + v117 * v136 * *v17);
                v121 = (v118 + a5[1] * v134 + *v17 * v117);
              }
            }

            else
            {
              v121 = 0;
              v120 = (v119 + v117 * v136 * *v17);
            }

            if (v16 == 2 && v121 && (*(a1 + 44) & 0xFFFFFFFE) == 8)
            {
              if (v133 >= 16 && (v126 = *(a1 + 112)) != 0)
              {
                v127 = v107 + 2;
                CGBlt_swapBytes(v17[2] * v117, v137, *(v111 + 1), v121, v107[1], a5[1], v126);
              }

              else
              {
                v128 = v107[1];
                v129 = a5[1];
                v127 = v107 + 2;
                if (v128 == v129)
                {
                  memcpy(v121, *(v111 + 1), v128 * v137);
                }

                else
                {
                  CGBlt_copyBytes(v17[2] * v117, v137, *(v111 + 1), v121, v128, v129);
                }
              }

              v111 = v127;
            }

            decode_data(v138, v17[2], v137, *v111, *v107, v120, *a5, v121, v109, v110, a5[1]);
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](0, a9);
          v64 = &v132[-v63];
          bzero(&v132[-v63], v65);
          v68 = &v64[v16];
          *(a1 + 88) = a2;
          if (v16 >= 1)
          {
            v69 = v16 & 0x7FFFFFFF;
            v70 = &v64[v16];
            v71 = v64;
            do
            {
              v73 = *v18++;
              v72 = v73;
              LODWORD(v73) = *v36++;
              *v70 = v72 + v73 * a2;
              v70 += 2;
              *v71++ = v73;
              --v69;
            }

            while (v69);
            if (v16 == 2)
            {
              v74 = a4[1];
              if (v74)
              {
                if ((*(a1 + 44) & 0xFFFFFFFE) == 8)
                {
                  v75 = *(a1 + 40);
                  if (v75 >= 9 && (v76 = *(a1 + 112)) != 0)
                  {
                    v77 = v64 + 2;
                    CGBlt_swapBytes((v75 >> 3) * v35, v11, *(v68 + 1), v74, v64[1], a5[1], v76);
                  }

                  else
                  {
                    v130 = v64[1];
                    v131 = a5[1];
                    v77 = v64 + 2;
                    if (v130 == v131)
                    {
                      memcpy(a4[1], *(v68 + 1), v130 * v11);
                    }

                    else
                    {
                      CGBlt_copyBytes(v75 / 8 * v35, v11, *&v64[v16 + 2], v74, v130, v131);
                    }
                  }

                  v68 = v77;
                }
              }
            }
          }

          decode_data(v138, v35, v11, *v68, *v64, *a4, *a5, a4[1], v66, v67, a5[1]);
        }
      }

      v100 = *(a1 + 88) + v11;
      goto LABEL_134;
    }
  }

  return result;
}

void decode_data(int *a1, uint64_t a2, int a3, char *__src, int a5, int16x4_t *__dst, int a7, int16x4_t *a8, double a9, uint8x8_t a10, int a11)
{
  if (!a1)
  {
    return;
  }

  v12 = a2;
  if (a2 < 1)
  {
    return;
  }

  v13 = a3;
  if (a3 < 1)
  {
    return;
  }

  v14 = __src;
  if (!__src || !__dst)
  {
    return;
  }

  v15 = a8;
  v18 = a1;
  v19 = a1[1];
  if (v19 > 127)
  {
    if (v19 != 128)
    {
      if (v19 != 129)
      {
        if (v19 != 130)
        {
          return;
        }

        v22 = a8 == __dst ? -1 : a1[2];
        v85 = a1[4];
        v86 = a1[5];
        if (((v86 | v85) & 0x1F) != 0)
        {
          return;
        }

        v87 = a1[3];
        v88 = v86 - v85 * v87;
        if (v86 < v85 * v87)
        {
          return;
        }

        v693 = a7;
        v89 = a1[7];
        if (!a1[6])
        {
          v88 = 0;
        }

        v90 = v88 + v85 * (v87 - 1);
        v91 = v88 + v85;
        if (v22)
        {
          v91 = v88;
        }

        else
        {
          v90 = v88;
        }

        if (v22 >= 0)
        {
          v92 = v87 - 1;
        }

        else
        {
          v92 = a1[3];
        }

        v93 = v22 >= 0 && v22 == 0;
        v684 = v93;
        if (v22 >= 0)
        {
          v94 = v91;
        }

        else
        {
          v94 = v88;
        }

        if (v22 >= 0)
        {
          v95 = v90;
        }

        else
        {
          v95 = v88;
        }

        if (v89 == 2)
        {
          v680 = (v86 * a2) >> 3;
          v96 = malloc_type_malloc((v86 * a2) >> 3, 0x9823A0F6uLL);
          v18 = a1;
          LODWORD(v12) = a2;
          v97 = v96;
        }

        else
        {
          v680 = 0;
          v97 = 0;
        }

        v236 = v15;
        v237 = v86 >> 5;
        v238 = v94 >> 5;
        v239 = (v92 * v12);
        v699 = v95 >> 5;
        v240 = v693;
        v241 = 4 * v237;
        v242 = v684;
        v703 = v97;
        v670 = v22;
        while (1)
        {
          if (v89 == 4)
          {
            v243 = 0;
            v244 = v14 + 4 * v238;
            v245 = *(v18 + 4);
            v246 = __dst;
            v247 = v239;
            v248 = (v245 + 8 * v242);
            do
            {
              LOWORD(v249) = 0;
              v250 = *v248;
              v251 = v243 + 1;
              v252 = *v250 + (*&v244[4 * v243] * v250[1]);
              if (v243 + 1 < v92)
              {
                v253 = v243 + 1;
              }

              else
              {
                v253 = 0;
              }

              if (v252 >= 0.0)
              {
                if (v252 <= 0.99998)
                {
                  v249 = (v252 * 65535.0);
                }

                else
                {
                  LOWORD(v249) = -1;
                }
              }

              v246->i16[v243] = v249;
              v254 = v251 < v92;
              if (v251 >= v92)
              {
                v255 = v237;
              }

              else
              {
                v255 = 0;
              }

              v244 += 4 * v255;
              v248 = (v245 + 8 * v242 + 8 * v253);
              if (v254)
              {
                v256 = 0;
              }

              else
              {
                v256 = v92;
              }

              v243 = v253;
              v246 = (v246 + 2 * v256);
              --v247;
            }

            while (v247);
            if (v22 < 0 || !v236)
            {
              goto LABEL_367;
            }

            v257 = v14 + v699;
            v258 = *(v245 + 8 * v22);
            v259 = *v258;
            v260 = v258[1];
            v261 = v236;
            v262 = v12;
            do
            {
              v263 = v259 + (*v257 * v260);
              if (v263 >= 0.0)
              {
                if (v263 <= 0.99998)
                {
                  v264 = (v263 * 65535.0);
                }

                else
                {
                  LOWORD(v264) = -1;
                }
              }

              else
              {
                LOWORD(v264) = 0;
              }

              *v261 = v264;
              v261 = (v261 + 2);
              v257 = (v257 + v241);
              --v262;
            }

            while (v262);
          }

          else
          {
            v265 = v14;
            if (v97)
            {
              v266 = v89;
              v267 = v89;
              v268 = v239;
              v269 = __dst;
              v270 = v236;
              v265 = decode_swap(v266, v703, v14, v680);
              v239 = v268;
              v89 = v267;
              v22 = v670;
              v238 = v94 >> 5;
              v97 = v703;
              v18 = a1;
              LODWORD(v12) = a2;
              v236 = v270;
              __dst = v269;
              v242 = v684;
              v240 = v693;
            }

            v271 = 0;
            v272 = v265 + 4 * v238;
            v273 = *(v18 + 4);
            v274 = __dst;
            v275 = (v273 + 8 * v242);
            v276 = v239;
            do
            {
              LOWORD(v277) = 0;
              v278 = *v275;
              v279 = v271 + 1;
              v280 = *v278 + (COERCE_FLOAT(bswap32(*&v272[4 * v271])) * v278[1]);
              if (v271 + 1 < v92)
              {
                v281 = v271 + 1;
              }

              else
              {
                v281 = 0;
              }

              if (v280 >= 0.0)
              {
                if (v280 <= 0.99998)
                {
                  v277 = (v280 * 65535.0);
                }

                else
                {
                  LOWORD(v277) = -1;
                }
              }

              v274->i16[v271] = v277;
              v282 = v279 < v92;
              if (v279 >= v92)
              {
                v283 = v237;
              }

              else
              {
                v283 = 0;
              }

              v272 += 4 * v283;
              v275 = (v273 + 8 * v242 + 8 * v281);
              if (v282)
              {
                v284 = 0;
              }

              else
              {
                v284 = v92;
              }

              v271 = v281;
              v274 = (v274 + 2 * v284);
              --v276;
            }

            while (v276);
            if (v22 < 0 || !v236)
            {
              goto LABEL_367;
            }

            v285 = v265 + v699;
            v286 = *(v273 + 8 * v22);
            v287 = *v286;
            v288 = v286[1];
            v289 = v236;
            v290 = v12;
            do
            {
              v291 = v287 + (COERCE_FLOAT(bswap32(*v285)) * v288);
              if (v291 >= 0.0)
              {
                if (v291 <= 0.99998)
                {
                  v292 = (v291 * 65535.0);
                }

                else
                {
                  LOWORD(v292) = -1;
                }
              }

              else
              {
                LOWORD(v292) = 0;
              }

              *v289 = v292;
              v289 = (v289 + 2);
              v285 = (v285 + v241);
              --v290;
            }

            while (v290);
          }

          v236 = (v236 + a11);
LABEL_367:
          v14 = (v14 + a5);
          __dst = (__dst + v240);
          if (!--v13)
          {
            if (v97)
            {
              v169 = v703;
              goto LABEL_428;
            }

            return;
          }
        }
      }

      if (a8 == __dst)
      {
        v28 = -1;
      }

      else
      {
        v28 = a1[2];
      }

      v102 = a1[4];
      v103 = a1[5];
      if (((v103 | v102) & 0x1F) != 0)
      {
        return;
      }

      v104 = a1[3];
      v105 = v103 - v102 * v104;
      if (v103 < v102 * v104)
      {
        return;
      }

      if (!a1[6])
      {
        v105 = 0;
      }

      v106 = v105 + v102 * (v104 - 1);
      v107 = v105 + v102;
      if (v28)
      {
        v107 = v105;
      }

      else
      {
        v106 = v105;
      }

      if (v28 >= 0)
      {
        v108 = v104 - 1;
      }

      else
      {
        v108 = a1[3];
      }

      v109 = v28 >= 0 && v28 == 0;
      if (v28 >= 0)
      {
        v110 = v107;
      }

      else
      {
        v110 = v105;
      }

      if (v28 >= 0)
      {
        v111 = v106;
      }

      else
      {
        v111 = v105;
      }

      v665 = a1[7];
      v689 = v109;
      if (a1[7] == 2)
      {
        v685 = (v103 * a2) >> 3;
        v112 = malloc_type_malloc((v103 * a2) >> 3, 0xF213E6FCuLL);
        v109 = v689;
        v18 = a1;
        LODWORD(v12) = a2;
        v45 = v112;
      }

      else
      {
        v685 = 0;
        v45 = 0;
      }

      v293 = v15;
      v294 = v103 >> 5;
      v295 = v110 >> 5;
      v296 = v108 * v12;
      v700 = v111 >> 5;
      v297 = a5;
      v298 = a7;
      v299 = 4 * v294;
      v300 = v665;
      v696 = v45;
      v682 = v28;
      v671 = v295;
      v678 = v298;
      while (1)
      {
        if (v300 == 4)
        {
          v301 = 0;
          v302 = v14 + 4 * v295;
          v303 = *(v18 + 4) + 8 * v109;
          v304 = __dst;
          v305 = v296;
          v306 = v303;
          do
          {
            LOBYTE(v307) = 0;
            v308 = *v306;
            v309 = v301 + 1;
            v310 = *v308 + (*&v302[4 * v301] * v308[1]);
            if (v301 + 1 < v108)
            {
              v311 = v301 + 1;
            }

            else
            {
              v311 = 0;
            }

            if (v310 >= 0.0)
            {
              if (v310 <= 0.99608)
              {
                v307 = (v310 * 255.0);
              }

              else
              {
                LOBYTE(v307) = -1;
              }
            }

            v304->i8[v301] = v307;
            v312 = v309 < v108;
            if (v309 >= v108)
            {
              v313 = v294;
            }

            else
            {
              v313 = 0;
            }

            v302 += 4 * v313;
            v306 = (v303 + 8 * v311);
            if (v312)
            {
              v314 = 0;
            }

            else
            {
              v314 = v108;
            }

            v301 = v311;
            v304 = (v304 + v314);
            --v305;
          }

          while (v305);
          if (v28 < 0 || !v293)
          {
            goto LABEL_425;
          }

          v315 = v14 + v700;
          v316 = *(*(v18 + 4) + 8 * v28);
          v317 = *v316;
          v318 = v316[1];
          v319 = v293;
          v320 = v12;
          do
          {
            v321 = v317 + (*v315 * v318);
            if (v321 >= 0.0)
            {
              if (v321 <= 0.99608)
              {
                v322 = (v321 * 255.0);
              }

              else
              {
                LOBYTE(v322) = -1;
              }
            }

            else
            {
              LOBYTE(v322) = 0;
            }

            *v319 = v322;
            v319 = (v319 + 1);
            v315 = (v315 + v299);
            --v320;
          }

          while (v320);
        }

        else
        {
          v323 = v14;
          if (v45)
          {
            v324 = v300;
            v325 = __dst;
            v326 = v293;
            v327 = v300;
            v328 = v297;
            v323 = decode_swap(v324, v45, v14, v685);
            v297 = v328;
            v300 = v327;
            v28 = v682;
            v109 = v689;
            v45 = v696;
            v18 = a1;
            LODWORD(v12) = a2;
            v293 = v326;
            __dst = v325;
            v295 = v671;
            v298 = v678;
          }

          v329 = 0;
          v330 = v323 + 4 * v295;
          v331 = *(v18 + 4) + 8 * v109;
          v332 = __dst;
          v333 = v331;
          v334 = v296;
          do
          {
            LOBYTE(v335) = 0;
            v336 = *v333;
            v337 = v329 + 1;
            v338 = *v336 + (COERCE_FLOAT(bswap32(*&v330[4 * v329])) * v336[1]);
            if (v329 + 1 < v108)
            {
              v339 = v329 + 1;
            }

            else
            {
              v339 = 0;
            }

            if (v338 >= 0.0)
            {
              if (v338 <= 0.99608)
              {
                v335 = (v338 * 255.0);
              }

              else
              {
                LOBYTE(v335) = -1;
              }
            }

            v332->i8[v329] = v335;
            v340 = v337 < v108;
            if (v337 >= v108)
            {
              v341 = v294;
            }

            else
            {
              v341 = 0;
            }

            v330 += 4 * v341;
            v333 = (v331 + 8 * v339);
            if (v340)
            {
              v342 = 0;
            }

            else
            {
              v342 = v108;
            }

            v329 = v339;
            v332 = (v332 + v342);
            --v334;
          }

          while (v334);
          if (v28 < 0 || !v293)
          {
            goto LABEL_425;
          }

          v343 = v323 + v700;
          v344 = *(*(v18 + 4) + 8 * v28);
          v345 = *v344;
          v346 = v344[1];
          v347 = v293;
          v348 = v12;
          do
          {
            v349 = v345 + (COERCE_FLOAT(bswap32(*v343)) * v346);
            if (v349 >= 0.0)
            {
              if (v349 <= 0.99608)
              {
                v350 = (v349 * 255.0);
              }

              else
              {
                LOBYTE(v350) = -1;
              }
            }

            else
            {
              LOBYTE(v350) = 0;
            }

            *v347 = v350;
            v347 = (v347 + 1);
            v343 = (v343 + v299);
            --v348;
          }

          while (v348);
        }

        v293 = (v293 + a11);
LABEL_425:
        v14 = (v14 + v297);
        __dst = (__dst + v298);
        if (!--v13)
        {
          goto LABEL_426;
        }
      }
    }

    if (a8 == __dst)
    {
      v25 = -1;
    }

    else
    {
      v25 = a1[2];
    }

    v33 = a1[4];
    v34 = a1[5];
    if (((v34 | v33) & 0x1F) != 0)
    {
      return;
    }

    v35 = a1[3];
    v36 = v34 - v33 * v35;
    if (v34 < v33 * v35)
    {
      return;
    }

    v692 = a7;
    v37 = a1[7];
    if (!a1[6])
    {
      v36 = 0;
    }

    v38 = v36 + v33 * (v35 - 1);
    v39 = v36 + v33;
    if (v25)
    {
      v39 = v36;
    }

    else
    {
      v38 = v36;
    }

    if (v25 >= 0)
    {
      v40 = v35 - 1;
    }

    else
    {
      v40 = a1[3];
    }

    v41 = v25 >= 0 && v25 == 0;
    if (v25 >= 0)
    {
      v42 = v39;
    }

    else
    {
      v42 = v36;
    }

    if (v25 >= 0)
    {
      v43 = v38;
    }

    else
    {
      v43 = v36;
    }

    v688 = v41;
    if (v37 == 2)
    {
      v683 = (v34 * a2) >> 3;
      v44 = malloc_type_malloc((v34 * a2) >> 3, 0xB9792C85uLL);
      v41 = v688;
      v18 = a1;
      LODWORD(v12) = a2;
      v45 = v44;
    }

    else
    {
      v683 = 0;
      v45 = 0;
    }

    v193 = v34 >> 5;
    v194 = v42 >> 5;
    v195 = (v40 * v12);
    v698 = v43 >> 5;
    v196 = a5;
    v197 = v692;
    v198 = 4 * v193;
    v696 = v45;
    v677 = v197;
    v681 = v194;
    v669 = v25;
    while (1)
    {
      if (v37 == 4)
      {
        v199 = 0;
        v200 = v14 + 4 * v194;
        v201 = *(v18 + 4);
        v202 = __dst;
        v203 = v195;
        v204 = v201 + 8 * v41;
        do
        {
          v205 = v199 + 1;
          *&v202->i32[v199] = **v204 + (*&v200[4 * v199] * *(*v204 + 4));
          if (v199 + 1 < v40)
          {
            ++v199;
          }

          else
          {
            v199 = 0;
          }

          if (v205 >= v40)
          {
            v206 = v193;
          }

          else
          {
            v206 = 0;
          }

          v200 += 4 * v206;
          v204 = v201 + 8 * v41 + 8 * v199;
          if (v205 >= v40)
          {
            v207 = v40;
          }

          else
          {
            v207 = 0;
          }

          v202 = (v202 + 4 * v207);
          --v203;
        }

        while (v203);
        if (v25 < 0 || !v15)
        {
          goto LABEL_310;
        }

        v208 = v14 + v698;
        v209 = *(v201 + 8 * v25);
        v210 = *v209;
        v211 = v209[1];
        v212 = v15;
        v213 = v12;
        do
        {
          *v212++ = v210 + (*v208 * v211);
          v208 = (v208 + v198);
          --v213;
        }

        while (v213);
      }

      else
      {
        v214 = v14;
        if (v45)
        {
          v215 = v37;
          v216 = __dst;
          v217 = v15;
          v218 = v37;
          v219 = v195;
          v220 = v196;
          v214 = decode_swap(v215, v45, v14, v683);
          v196 = v220;
          v195 = v219;
          v37 = v218;
          v25 = v669;
          v41 = v688;
          v45 = v696;
          v18 = a1;
          LODWORD(v12) = a2;
          v15 = v217;
          __dst = v216;
          v197 = v677;
          v194 = v681;
        }

        v221 = 0;
        v222 = v214 + 4 * v194;
        v223 = *(v18 + 4);
        v224 = __dst;
        v225 = v223 + 8 * v41;
        v226 = v195;
        do
        {
          v227 = v221 + 1;
          *&v224->i32[v221] = **v225 + (COERCE_FLOAT(bswap32(*&v222[4 * v221])) * *(*v225 + 4));
          if (v221 + 1 < v40)
          {
            ++v221;
          }

          else
          {
            v221 = 0;
          }

          if (v227 >= v40)
          {
            v228 = v193;
          }

          else
          {
            v228 = 0;
          }

          v222 += 4 * v228;
          v225 = v223 + 8 * v41 + 8 * v221;
          if (v227 >= v40)
          {
            v229 = v40;
          }

          else
          {
            v229 = 0;
          }

          v224 = (v224 + 4 * v229);
          --v226;
        }

        while (v226);
        if (v25 < 0 || !v15)
        {
          goto LABEL_310;
        }

        v230 = v214 + v698;
        v231 = *(v223 + 8 * v25);
        v232 = *v231;
        v233 = v231[1];
        v234 = v15;
        v235 = v12;
        do
        {
          *v234++ = v232 + (COERCE_FLOAT(bswap32(*v230)) * v233);
          v230 = (v230 + v198);
          --v235;
        }

        while (v235);
      }

      v15 = (v15 + a11);
LABEL_310:
      v14 = (v14 + v196);
      __dst = (__dst + v197);
      if (!--v13)
      {
LABEL_426:
        if (v45)
        {
          v169 = v696;
LABEL_428:

          free(v169);
        }

        return;
      }
    }
  }

  v20 = a8;
  if (v19 == 1)
  {
    v23 = a1[3];
    if (v15 == __dst)
    {
      LODWORD(v24) = -1;
    }

    else
    {
      LODWORD(v24) = a1[2];
    }

    v29 = a1[4];
    v30 = a1[5];
    v31 = v30 - v29 * v23;
    if (v31 < 0)
    {
      return;
    }

    if (!a1[6])
    {
      v31 = 0;
    }

    v679 = v31;
    if ((v24 & 0x80000000) != 0)
    {
      v662 = 0;
      v655 = 0;
      v32 = a1[3];
    }

    else
    {
      v32 = v23 - 1;
      if (v24)
      {
        v662 = 0;
        v655 = v31 + v29 * v32;
      }

      else
      {
        v655 = v31;
        v662 = 1;
        v679 = v31 + v29;
      }
    }

    v666 = v32;
    v661 = a1[7];
    if (v661)
    {
      v668 = (v30 * a2 + 7) >> 3;
      v676 = a5;
      if (v29 < 8 || ((v30 | v29) & 7) != 0)
      {
        v179 = a3;
        v180 = 0;
      }

      else
      {
        v179 = a3;
        if ((v32 & 0xFFFFFFFD) == 1 || v32 == 4)
        {
          v180 = v32;
        }

        else
        {
          v180 = 0;
        }
      }

      v181 = malloc_type_malloc(v668, 0x8489A67FuLL);
      v654 = v30;
      v691 = v30 >> 3;
      v659 = v29 >> 3;
      v687 = v679 >> 3;
      v182 = v15;
      if (v24 >= 0 && v15 == 0)
      {
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v24 = v24;
      }

      v657 = v655 >> 3;
      v695 = a7;
      v184 = a7;
      do
      {
        v185 = v14;
        if (v181)
        {
          v185 = decode_swap(v661, v181, v14, v668);
        }

        switch(v180)
        {
          case 4:
            v190 = *a1;
            v191 = *(a1 + 4);
            if ((v24 & 0x80000000) != 0)
            {
              decode_byte_8bpc_4(a2, 1, v691, v659, v185, v676, __dst, v695, v190, v191, v687);
            }

            else
            {
              decode_byte_8bpc_4a(a2, 1, v691, v659, v185, v676, __dst, v695, v182, a11, v190, v191, v687, v657);
            }

            break;
          case 3:
            v188 = *a1;
            v189 = *(a1 + 4);
            if ((v24 & 0x80000000) != 0)
            {
              decode_byte_8bpc_3(a2, 1, v691, v659, v185, v676, __dst, v695, v188, v189, v687);
            }

            else
            {
              decode_byte_8bpc_3a(a2, 1, v691, v659, v185, v676, __dst, v695, v182, a11, v188, v189, v687, v657);
            }

            break;
          case 1:
            v186 = *a1;
            v187 = *(a1 + 4);
            if ((v24 & 0x80000000) != 0)
            {
              decode_byte_8bpc_1(a2, 1, v691, v185, v676, __dst, v695, v186, v187, v687);
            }

            else
            {
              decode_byte_8bpc_1a(a2, 1, v691, v185, v676, __dst, v695, v182, a11, v186, v187, v687, v657);
            }

            break;
          default:
            decode_byte_nbpc_N(a2, v29, v654, v185, v679, __dst, v666, (*(a1 + 4) + 8 * v662), v666);
            if ((v24 & 0x80000000) == 0)
            {
              decode_byte_nbpc_1(a2, v29, v654, v185, v655, v182, *(*(a1 + 4) + 8 * v24));
            }

            break;
        }

        v14 = (v14 + v676);
        __dst = (__dst + v184);
        if (v24 >= 0)
        {
          v182 = (v182 + a11);
        }

        --v179;
      }

      while (v179);
      if (v181)
      {
        v169 = v181;
        goto LABEL_428;
      }

      return;
    }

    if ((v24 & 0x80000000) == 0 || v30 != v29 * v23)
    {
      goto LABEL_448;
    }

    v192 = *a1;
    if (*a1 >= 2)
    {
      if (v192 == 2 && (v29 & 7) == 0)
      {
        v427 = v29 >> 3;
        goto LABEL_538;
      }
    }

    else
    {
      if (v29 <= 7)
      {
        switch(v29)
        {
          case 1:
            v514 = &decode_byte_1bpc__LUT;
            if (v192 == 1)
            {
              v514 = &unk_184424EBC;
            }

            v515 = __dst + 4;
            do
            {
              v516 = v515;
              v517 = v14;
              v518 = v23 * a2;
              do
              {
                v519 = v517->u8[0];
                v517 = (v517 + 1);
                v520 = v514[v519 & 0xF];
                *(v516 - 1) = *(v514 + ((v519 >> 2) & 0x3C));
                if (v518 < 5)
                {
                  break;
                }

                *v516 = v520;
                v516 += 2;
                _CF = v518 >= 8;
                v518 -= 8;
              }

              while (v518 != 0 && _CF);
              v14 = (v14 + a5);
              v515 += a7;
              --v13;
            }

            while (v13);
            return;
          case 2:
            v521 = &decode_byte_2bpc__LUT;
            if (v192 == 1)
            {
              v521 = &unk_184424F1C;
            }

            do
            {
              v522 = 0;
              v523 = v23 * a2 + 4;
              do
              {
                __dst->i32[v522] = v521[v14->u8[v522] >> 4] | (v521[v14->i8[v522] & 0xF] << 16);
                ++v522;
                v523 -= 4;
              }

              while (v523 > 4);
              v14 = (v14 + a5);
              __dst = (__dst + a7);
              --v13;
            }

            while (v13);
            return;
          case 4:
            v407 = &decode_byte_4bpc__LUT;
            if (v192 == 1)
            {
              v407 = &unk_184424F4C;
            }

            do
            {
              v408 = 0;
              v409 = v23 * a2 + 2;
              do
              {
                __dst->i16[v408] = v407[v14->u8[v408] >> 4] | (v407[v14->i8[v408] & 0xF] << 8);
                ++v408;
                v409 -= 2;
              }

              while (v409 > 2);
              v14 = (v14 + a5);
              __dst = (__dst + a7);
              --v13;
            }

            while (v13);
            return;
        }

        goto LABEL_448;
      }

      if (v29 <= 23)
      {
        if (v29 == 8)
        {

          decode_byte_8bpc(a2, a3, __src, a5, __dst, a7, v192, v23, a9, a10);
          return;
        }

        if (v29 == 16)
        {

          decode_byte_16bpc(a2, a3, __src, a5, __dst, a7, v192, v23);
          return;
        }

        goto LABEL_448;
      }

      if (v29 == 24 || v29 == 32)
      {
        v427 = v29 >> 3;
LABEL_538:
        v708 = a1[3];
        v428 = *(a1 + 4);

        decode_byte_8bpc_N(a2, v13, v427, __src, a5, __dst, a7, v428, v708);
        return;
      }
    }

LABEL_448:
    if (v24 >= 0 && v15 == 0)
    {
      v364 = -1;
    }

    else
    {
      v364 = v24;
    }

    v365 = a1;
    if (v29 >= 8 && ((v30 | v29) & 7) == 0)
    {
      switch(v32)
      {
        case 4:
          v509 = v30 >> 3;
          v510 = v29 >> 3;
          v511 = *a1;
          v512 = *(a1 + 4);
          v513 = v679 >> 3;
          if (v364 < 0)
          {
            decode_byte_8bpc_4(a2, v13, v509, v510, v14, a5, __dst, a7, v511, v512, v513);
          }

          else
          {
            decode_byte_8bpc_4a(a2, v13, v509, v510, v14, a5, __dst, a7, v15, a11, v511, v512, v513, v655 >> 3);
          }

          return;
        case 3:
          v504 = v30 >> 3;
          v505 = v29 >> 3;
          v506 = *a1;
          v507 = *(a1 + 4);
          v508 = v679 >> 3;
          if (v364 < 0)
          {
            decode_byte_8bpc_3(a2, v13, v504, v505, v14, a5, __dst, a7, v506, v507, v508);
          }

          else
          {
            decode_byte_8bpc_3a(a2, v13, v504, v505, v14, a5, __dst, a7, v15, a11, v506, v507, v508, v655 >> 3);
          }

          return;
        case 1:
          v403 = v30 >> 3;
          v404 = *a1;
          v405 = *(a1 + 4);
          v406 = v679 >> 3;
          if (v364 < 0)
          {
            decode_byte_8bpc_1(a2, v13, v403, __src, a5, __dst, a7, v404, v405, v406);
          }

          else
          {
            decode_byte_8bpc_1a(a2, v13, v403, __src, a5, __dst, a7, v15, a11, v404, v405, v406, v655 >> 3);
          }

          return;
      }
    }

    v706 = a5;
    v701 = a7;
    do
    {
      v366 = v13;
      v367 = v29;
      v368 = v30;
      v369 = v29;
      v370 = v12;
      v371 = v30;
      v372 = v365;
      decode_byte_nbpc_N(v12, v367, v368, v14, v679, __dst, v32, (*(v365 + 4) + 8 * v662), v32);
      if ((v364 & 0x80000000) == 0)
      {
        decode_byte_nbpc_1(v370, v369, v371, v14, v655, v15, *(*(v372 + 4) + 8 * v364));
      }

      v14 = (v14 + v706);
      __dst = (__dst + v701);
      if (v364 >= 0)
      {
        v15 = (v15 + a11);
      }

      --v13;
      v12 = v370;
      v365 = v372;
      v29 = v369;
      v30 = v371;
      v32 = v666;
    }

    while (v366 != 1);
    return;
  }

  if (v19 != 2)
  {
    if (v19 == 4)
    {
      v21 = a8 == __dst ? -1 : a1[2];
      v46 = a1[4];
      v47 = a1[5];
      if (((v47 | v46) & 0xF) == 0 && !a1[7])
      {
        v48 = a1[3];
        v49 = v47 - v46 * v48;
        if (v47 >= v46 * v48)
        {
          if (!a1[6])
          {
            v49 = 0;
          }

          v50 = v49 + v46 * (v48 - 1);
          v51 = v49 + v46;
          v52 = v21 == 0;
          if (v21)
          {
            v53 = v49;
          }

          else
          {
            v53 = v51;
          }

          if (!v21)
          {
            v50 = v49;
          }

          if (v21 >= 0)
          {
            v54 = v48 - 1;
          }

          else
          {
            v54 = a1[3];
          }

          if (v21 >= 0)
          {
            v55 = v53;
          }

          else
          {
            v52 = 0;
            v55 = v49;
          }

          if (v21 >= 0)
          {
            v56 = v50;
          }

          else
          {
            v56 = v49;
          }

          v57 = v47 >> 4;
          v58 = a7 >> 1;
          if (a7 >> 1 >= a2)
          {
            v58 = a2;
          }

          v59 = v55 >> 4;
          v60 = *(a1 + 4);
          v61 = v56 >> 4;
          do
          {
            v62 = 0;
            v63 = __dst;
            v64 = v54 * v58;
            v65 = v60 + 8 * v52;
            v66 = v14 + 2 * v59;
            do
            {
              _H0 = *&v66[2 * v62];
              v68 = v62 + 1;
              __asm { FCVT            S0, H0 }

              _S0 = **v65 + (_S0 * *(*v65 + 4));
              __asm { FCVT            H0, S0 }

              v63->i16[v62] = LOWORD(_S0);
              if (v62 + 1 < v54)
              {
                ++v62;
              }

              else
              {
                v62 = 0;
              }

              if (v68 >= v54)
              {
                v74 = v57;
              }

              else
              {
                v74 = 0;
              }

              v66 += 2 * v74;
              v65 = v60 + 8 * v52 + 8 * v62;
              if (v68 >= v54)
              {
                v75 = v54;
              }

              else
              {
                v75 = 0;
              }

              v63 = (v63 + 2 * v75);
              --v64;
            }

            while (v64);
            if ((v21 & 0x80000000) == 0 && v15)
            {
              v76 = v14 + v61;
              v77 = *(v60 + 8 * v21);
              v78 = *v77;
              v79 = v77[1];
              v80 = v15;
              v81 = v58;
              do
              {
                _H2 = *v76;
                __asm { FCVT            S2, H2 }

                _S2 = v78 + (_S2 * v79);
                __asm { FCVT            H2, S2 }

                *v80 = LOWORD(_S2);
                v80 = (v80 + 2);
                v76 += v57;
                --v81;
              }

              while (v81);
              v15 = (v15 + a11);
            }

            v14 = (v14 + a5);
            __dst = (__dst + a7);
            --v13;
          }

          while (v13);
        }
      }
    }

    return;
  }

  v26 = a1[3];
  if (a8 == __dst)
  {
    v27 = -1;
  }

  else
  {
    v27 = a1[2];
  }

  v99 = a1[4];
  v98 = a1[5];
  v697 = v27;
  v664 = v98;
  if (v98 == v99 * v26)
  {
    v100 = 0;
  }

  else
  {
    if (v98 <= v99 * v26)
    {
      return;
    }

    if (a1[6])
    {
      v100 = v98 - v99 * v26;
    }

    else
    {
      v100 = 0;
    }

    v20 = v15;
    v98 = a1[5];
  }

  v674 = a5;
  if (v27 < 0)
  {
    v694 = 0;
    v101 = 0;
  }

  else
  {
    --v26;
    if (v27)
    {
      v694 = 0;
      v101 = v100 + v99 * v26;
    }

    else
    {
      v101 = v100;
      v694 = 1;
      v100 += v99;
    }
  }

  v660 = a1[7];
  if (v660)
  {
    if ((v98 & 7) == 0 && v99 == 16 && v660 == 2)
    {
      switch(v26)
      {
        case 4:
          v373 = v98 >> 3;
          v374 = *a1;
          v375 = v100 >> 3;
          if (v27 < 0)
          {
            v417 = v674 - (v373 * a2);
            v418 = a7 - 8 * a2;
            v419 = a3;
            if (v374)
            {
              if (v374 == 2)
              {
                v550 = *(a1 + 4);
                v551 = *v550;
                v552 = v550[1];
                v553 = v550[2];
                v554 = v550[3];
                v555 = v373;
                v557.i32[0] = v551[2];
                v556.i32[0] = v551[3];
                v556.i32[1] = v552[3];
                v556.i32[2] = v553[3];
                v556.i32[3] = v554[3];
                v557.i32[1] = v552[2];
                v557.i32[2] = v553[2];
                v557.i32[3] = v554[2];
                v558.i32[0] = v551[4];
                v558.i32[1] = v552[4];
                v558.i32[2] = v553[4];
                v558.i32[3] = v554[4];
                v559 = vnegq_s32(v558);
                v560.i64[0] = 0xFFFF0000FFFFLL;
                v560.i64[1] = 0xFFFF0000FFFFLL;
                do
                {
                  v561 = a2 + 1;
                  do
                  {
                    v562 = v14 + v555;
                    *__dst++ = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v557, v556, vmovl_u16(*(v14 + v375))), v559), 0), v560));
                    --v561;
                    v14 = (v14 + v555);
                  }

                  while (v561 > 1);
                  v14 = &v562[v417];
                  __dst = (__dst + v418);
                  _VF = __OFSUB__(v419--, 1);
                }

                while (!((v419 < 0) ^ _VF | (v419 == 0)));
              }

              else if (v374 == 1)
              {
                v420 = v373;
                do
                {
                  v421 = a2 + 1;
                  do
                  {
                    v422 = v14 + v420;
                    *__dst++ = vmvn_s8(*(v14 + v375));
                    --v421;
                    v14 = (v14 + v420);
                  }

                  while (v421 > 1);
                  v14 = &v422[v417];
                  __dst = (__dst + v418);
                  _VF = __OFSUB__(v419--, 1);
                }

                while (!((v419 < 0) ^ _VF | (v419 == 0)));
              }
            }

            else
            {
              v603 = v373;
              do
              {
                v604 = a2 + 1;
                do
                {
                  v605 = v14 + v603;
                  *__dst++ = *(v14 + v375);
                  --v604;
                  v14 = (v14 + v603);
                }

                while (v604 > 1);
                v14 = &v605[v417];
                __dst = (__dst + v418);
                _VF = __OFSUB__(v419--, 1);
              }

              while (!((v419 < 0) ^ _VF | (v419 == 0)));
            }
          }

          else
          {
            v376 = v101 >> 3;
            v377 = v674 - (v373 * a2);
            v378 = a7 - 8 * a2;
            v379 = a11 - 2 * a2;
            v380 = a3;
            if (v374)
            {
              if (v374 == 2)
              {
                v463 = *(a1 + 4);
                v464 = *(v463 + 8 * (v375 > v376));
                v465 = 8;
                v466 = 16;
                if (v375 > v376)
                {
                  v465 = 16;
                }

                v467 = *(v463 + v465);
                v468 = 24;
                if (v375 > v376)
                {
                  v466 = 24;
                }

                v469 = *(v463 + v466);
                if (v375 > v376)
                {
                  v468 = 32;
                }

                v470 = *(v463 + v468);
                v471 = *(v463 + 32 * (v376 > v375));
                v473 = v471[2];
                v472 = v471[3];
                v474 = v471[4];
                v476.i32[0] = v464[2];
                v475.i32[0] = v464[3];
                v475.i32[1] = v467[3];
                v475.i32[2] = v469[3];
                v475.i32[3] = v470[3];
                v476.i32[1] = v467[2];
                v476.i32[2] = v469[2];
                v476.i32[3] = v470[2];
                v477.i32[0] = v464[4];
                v477.i32[1] = v467[4];
                v477.i32[2] = v469[4];
                v477.i32[3] = v470[4];
                v478 = vnegq_s32(v477);
                v479.i64[0] = 0xFFFF0000FFFFLL;
                v479.i64[1] = 0xFFFF0000FFFFLL;
                do
                {
                  v480 = v12 + 1;
                  do
                  {
                    v481 = v14 + v373;
                    v482 = (v473 + v472 * *(v14->u16 + v376)) >> v474;
                    v483 = v482 & ~(v482 >> 31);
                    if (v483 >= 0xFFFF)
                    {
                      LOWORD(v483) = -1;
                    }

                    v484 = *(v14 + v375);
                    *v15 = v483;
                    v15 = (v15 + 2);
                    *__dst++ = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v476, v475, vmovl_u16(v484)), v478), 0), v479));
                    --v480;
                    v14 = (v14 + v373);
                  }

                  while (v480 > 1);
                  v14 = &v481[v377];
                  v15 = (v15 + v379);
                  __dst = (__dst + v378);
                  _VF = __OFSUB__(v380--, 1);
                }

                while (!((v380 < 0) ^ _VF | (v380 == 0)));
              }

              else if (v374 == 1)
              {
                do
                {
                  v381 = a2 + 1;
                  do
                  {
                    v382 = *(v14 + v375);
                    *v15 = ~*(v14->i16 + v376);
                    v15 = (v15 + 2);
                    v14 = (v14 + v373);
                    *__dst++ = vmvn_s8(v382);
                    --v381;
                  }

                  while (v381 > 1);
                  v14 = (v14 + v377);
                  v15 = (v15 + v379);
                  __dst = (__dst + v378);
                  _VF = __OFSUB__(v380--, 1);
                }

                while (!((v380 < 0) ^ _VF | (v380 == 0)));
              }
            }

            else
            {
              do
              {
                v500 = a2 + 1;
                do
                {
                  v501 = *(v14 + v375);
                  *v15 = *(v14->i16 + v376);
                  v15 = (v15 + 2);
                  v14 = (v14 + v373);
                  *__dst++ = v501;
                  --v500;
                }

                while (v500 > 1);
                v14 = (v14 + v377);
                v15 = (v15 + v379);
                __dst = (__dst + v378);
                _VF = __OFSUB__(v380--, 1);
              }

              while (!((v380 < 0) ^ _VF | (v380 == 0)));
            }
          }

          return;
        case 3:
          v352 = v98 >> 3;
          v353 = *a1;
          v354 = v100 >> 3;
          if (v27 < 0)
          {
            v410 = v674 - (v352 * a2);
            v411 = a7 - 6 * a2;
            v412 = v13;
            if (v353)
            {
              if (v353 == 2)
              {
                v524 = *(a1 + 4);
                v526 = *v524;
                v525 = v524[1];
                v527 = v524[2];
                v528 = v354;
                v529 = v352;
                v531 = v526[2];
                v530 = v526[3];
                v533 = v525[2];
                v532 = v525[3];
                v535 = v527[2];
                v534 = v527[3];
                v536 = v526[4];
                v537 = v525[4];
                v538 = v527[4];
                v539 = v12 + 1;
                do
                {
                  v540 = v539;
                  do
                  {
                    v541 = *(v14->u16 + v528);
                    v542 = *(&v14->u16[1] + v528);
                    v543 = *(&v14->u16[2] + v528);
                    v14 = (v14 + v529);
                    v544 = ((v531 + v530 * v541) >> v536) & ~((v531 + v530 * v541) >> v536 >> 31);
                    v545 = ((v533 + v532 * v542) >> v537) & ~((v533 + v532 * v542) >> v537 >> 31);
                    v546 = ((v535 + v534 * v543) >> v538) & ~((v535 + v534 * v543) >> v538 >> 31);
                    if (v544 >= 0xFFFF)
                    {
                      LOWORD(v544) = -1;
                    }

                    if (v545 >= 0xFFFF)
                    {
                      LOWORD(v545) = -1;
                    }

                    if (v546 >= 0xFFFF)
                    {
                      LOWORD(v546) = -1;
                    }

                    __dst->i16[0] = v544;
                    __dst->i16[1] = v545;
                    __dst->i16[2] = v546;
                    __dst = (__dst + 6);
                    --v540;
                  }

                  while (v540 > 1);
                  v14 = (v14 + v410);
                  __dst = (__dst + v411);
                  _VF = __OFSUB__(v412--, 1);
                }

                while (!((v412 < 0) ^ _VF | (v412 == 0)));
              }

              else if (v353 == 1)
              {
                v413 = v354;
                do
                {
                  v414 = a2 + 1;
                  do
                  {
                    v415 = *(&v14->i16[1] + v413);
                    v416 = *(&v14->i16[2] + v413);
                    __dst->i16[0] = ~*(v14->i16 + v413);
                    __dst->i16[1] = ~v415;
                    __dst->i16[2] = ~v416;
                    v14 = (v14 + v352);
                    __dst = (__dst + 6);
                    --v414;
                  }

                  while (v414 > 1);
                  v14 = (v14 + v410);
                  __dst = (__dst + v411);
                  _VF = __OFSUB__(v412--, 1);
                }

                while (!((v412 < 0) ^ _VF | (v412 == 0)));
              }
            }

            else
            {
              v547 = v354;
              do
              {
                v548 = a2 + 1;
                do
                {
                  v549 = *(&v14->i16[2] + v547);
                  __dst->i32[0] = *(v14->i32 + v547);
                  __dst->i16[2] = v549;
                  v14 = (v14 + v352);
                  __dst = (__dst + 6);
                  --v548;
                }

                while (v548 > 1);
                v14 = (v14 + v410);
                __dst = (__dst + v411);
                _VF = __OFSUB__(v412--, 1);
              }

              while (!((v412 < 0) ^ _VF | (v412 == 0)));
            }
          }

          else
          {
            v355 = v101 >> 3;
            v356 = v674 - (v352 * a2);
            v357 = a7 - 6 * a2;
            v358 = a11 - 2 * a2;
            if (v353)
            {
              if (v353 == 2)
              {
                v429 = *(a1 + 4);
                v430 = *(v429 + 8 * (v354 > v355));
                v431 = 8;
                v432 = 16;
                if (v354 > v355)
                {
                  v431 = 16;
                }

                v433 = a2;
                v434 = *(v429 + v431);
                v435 = 24;
                if (v354 > v355)
                {
                  v432 = 24;
                }

                v436 = *(v429 + v432);
                if (v355 <= v354)
                {
                  v435 = 0;
                }

                v437 = *(v429 + v435);
                v439 = v437[2];
                v438 = v437[3];
                v441 = v430[2];
                v440 = v430[3];
                v442 = v434[2];
                v443 = v434[3];
                v445 = v436[2];
                v444 = v436[3];
                v446 = v437[4];
                v447 = v430[4];
                v448 = v434[4];
                v449 = v358;
                v450 = v436[4];
                do
                {
                  v451 = v433 + 1;
                  do
                  {
                    v452 = *(v14->u16 + v355);
                    v453 = *(v14->u16 + v354);
                    v454 = *(&v14->u16[1] + v354);
                    v455 = *(&v14->u16[2] + v354);
                    v14 = (v14 + v352);
                    v456 = ((v439 + v438 * v452) >> v446) & ~((v439 + v438 * v452) >> v446 >> 31);
                    v457 = ((v441 + v440 * v453) >> v447) & ~((v441 + v440 * v453) >> v447 >> 31);
                    v458 = ((v442 + v443 * v454) >> v448) & ~((v442 + v443 * v454) >> v448 >> 31);
                    v459 = ((v445 + v444 * v455) >> v450) & ~((v445 + v444 * v455) >> v450 >> 31);
                    if (v456 >= 0xFFFF)
                    {
                      LOWORD(v456) = -1;
                    }

                    if (v457 >= 0xFFFF)
                    {
                      LOWORD(v457) = -1;
                    }

                    if (v458 >= 0xFFFF)
                    {
                      LOWORD(v458) = -1;
                    }

                    if (v459 >= 0xFFFF)
                    {
                      LOWORD(v459) = -1;
                    }

                    *v15 = v456;
                    v15 = (v15 + 2);
                    __dst->i16[0] = v457;
                    __dst->i16[1] = v458;
                    __dst->i16[2] = v459;
                    __dst = (__dst + 6);
                    --v451;
                  }

                  while (v451 > 1);
                  v14 = (v14 + v356);
                  v15 = (v15 + v449);
                  __dst = (__dst + v357);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }

              else if (v353 == 1)
              {
                do
                {
                  v359 = v12 + 1;
                  do
                  {
                    v360 = *(v14->i16 + v354);
                    v361 = *(&v14->i16[1] + v354);
                    v362 = *(&v14->i16[2] + v354);
                    *v15 = ~*(v14->i16 + v355);
                    v15 = (v15 + 2);
                    __dst->i16[0] = ~v360;
                    __dst->i16[1] = ~v361;
                    __dst->i16[2] = ~v362;
                    v14 = (v14 + v352);
                    __dst = (__dst + 6);
                    --v359;
                  }

                  while (v359 > 1);
                  v14 = (v14 + v356);
                  v15 = (v15 + v358);
                  __dst = (__dst + v357);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }
            }

            else
            {
              do
              {
                v460 = a2 + 1;
                do
                {
                  v461 = *(v14->i32 + v354);
                  v462 = *(&v14->i16[2] + v354);
                  *v15 = *(v14->i16 + v355);
                  v15 = (v15 + 2);
                  __dst->i32[0] = v461;
                  __dst->i16[2] = v462;
                  v14 = (v14 + v352);
                  __dst = (__dst + 6);
                  --v460;
                }

                while (v460 > 1);
                v14 = (v14 + v356);
                v15 = (v15 + v358);
                __dst = (__dst + v357);
                _VF = __OFSUB__(v13--, 1);
              }

              while (!((v13 < 0) ^ _VF | (v13 == 0)));
            }
          }

          return;
        case 1:
          v113 = v98 >> 3;
          v114 = *a1;
          v115 = v100 >> 3;
          if (v27 < 0)
          {
            v423 = v674 - (v113 * a2);
            v424 = a7 - 2 * a2;
            v425 = a3;
            if (v114)
            {
              if (v114 == 2)
              {
                v563 = **(a1 + 4);
                v564 = v113;
                v566 = v563[2];
                v565 = v563[3];
                v567 = v563[4];
                do
                {
                  v568 = v12 + 1;
                  do
                  {
                    v569 = *(v14->u16 + v115);
                    v14 = (v14 + v564);
                    v570 = ((v566 + v565 * v569) >> v567) & ~((v566 + v565 * v569) >> v567 >> 31);
                    if (v570 >= 0xFFFF)
                    {
                      LOWORD(v570) = -1;
                    }

                    __dst->i16[0] = v570;
                    __dst = (__dst + 2);
                    --v568;
                  }

                  while (v568 > 1);
                  v14 = (v14 + v423);
                  __dst = (__dst + v424);
                  _VF = __OFSUB__(v425--, 1);
                }

                while (!((v425 < 0) ^ _VF | (v425 == 0)));
              }

              else if (v114 == 1)
              {
                do
                {
                  v426 = v12 + 1;
                  do
                  {
                    __dst->i16[0] = ~*(v14->i16 + v115);
                    __dst = (__dst + 2);
                    v14 = (v14 + v113);
                    --v426;
                  }

                  while (v426 > 1);
                  v14 = (v14 + v423);
                  __dst = (__dst + v424);
                  _VF = __OFSUB__(v425--, 1);
                }

                while (!((v425 < 0) ^ _VF | (v425 == 0)));
              }
            }

            else
            {
              do
              {
                v606 = v12 + 1;
                do
                {
                  __dst->i16[0] = *(v14->i16 + v115);
                  __dst = (__dst + 2);
                  v14 = (v14 + v113);
                  --v606;
                }

                while (v606 > 1);
                v14 = (v14 + v423);
                __dst = (__dst + v424);
                _VF = __OFSUB__(v425--, 1);
              }

              while (!((v425 < 0) ^ _VF | (v425 == 0)));
            }
          }

          else
          {
            v116 = v101 >> 3;
            v117 = v674 - (v113 * a2);
            v118 = a7 - (2 * a2);
            v119 = a11 - 2 * a2;
            v120 = a3;
            if (v114)
            {
              if (v114 == 2)
              {
                v485 = *(a1 + 4);
                v486 = *(v485 + 8 * (v115 > v116));
                v487 = *(v485 + 8 * (v116 > v115));
                v489 = v487[2];
                v488 = v487[3];
                v491 = v486[2];
                v490 = v486[3];
                v492 = v487[4];
                v493 = v486[4];
                v494 = v12 + 1;
                do
                {
                  v495 = v494;
                  do
                  {
                    v496 = *(v14->u16 + v116);
                    v497 = *(v14->u16 + v115);
                    v14 = (v14 + v113);
                    v498 = ((v489 + v488 * v496) >> v492) & ~((v489 + v488 * v496) >> v492 >> 31);
                    v499 = ((v491 + v490 * v497) >> v493) & ~((v491 + v490 * v497) >> v493 >> 31);
                    if (v498 >= 0xFFFF)
                    {
                      LOWORD(v498) = -1;
                    }

                    if (v499 >= 0xFFFF)
                    {
                      LOWORD(v499) = -1;
                    }

                    *v15 = v498;
                    v15 = (v15 + 2);
                    __dst->i16[0] = v499;
                    __dst = (__dst + 2);
                    --v495;
                  }

                  while (v495 > 1);
                  v14 = (v14 + v117);
                  v15 = (v15 + v119);
                  __dst = (__dst + v118);
                  _VF = __OFSUB__(v120--, 1);
                }

                while (!((v120 < 0) ^ _VF | (v120 == 0)));
              }

              else if (v114 == 1)
              {
                do
                {
                  v121 = a2 + 1;
                  do
                  {
                    v122 = *(v14->i16 + v115);
                    *v15 = ~*(v14->i16 + v116);
                    v15 = (v15 + 2);
                    __dst->i16[0] = ~v122;
                    __dst = (__dst + 2);
                    v14 = (v14 + v113);
                    --v121;
                  }

                  while (v121 > 1);
                  v14 = (v14 + v117);
                  v15 = (v15 + v119);
                  __dst = (__dst + v118);
                  _VF = __OFSUB__(v120--, 1);
                }

                while (!((v120 < 0) ^ _VF | (v120 == 0)));
              }
            }

            else
            {
              do
              {
                v502 = a2 + 1;
                do
                {
                  v503 = *(v14->i16 + v115);
                  *v15 = *(v14->i16 + v116);
                  v15 = (v15 + 2);
                  __dst->i16[0] = v503;
                  __dst = (__dst + 2);
                  v14 = (v14 + v113);
                  --v502;
                }

                while (v502 > 1);
                v14 = (v14 + v117);
                v15 = (v15 + v119);
                __dst = (__dst + v118);
                _VF = __OFSUB__(v120--, 1);
              }

              while (!((v120 < 0) ^ _VF | (v120 == 0)));
            }
          }

          return;
      }
    }

    v123 = v98 * a2 + 7;
    v658 = v123 >> 3;
    v124 = malloc_type_malloc(v123 >> 3, 0xCA374E03uLL);
    v98 = v664;
    v18 = a1;
    LODWORD(v12) = a2;
    v20 = v15;
    v663 = v124;
  }

  else
  {
    v663 = 0;
    v658 = 0;
    if (v99 == 16 && (v98 & 7) == 0)
    {
      switch(v26)
      {
        case 4:
          v394 = v98 >> 3;
          v395 = *a1;
          if (v27 < 0)
          {
            decode_word_16bpc_4(a2, v13, v394, __src, v674, __dst, a7, v395, *(a1 + 4), v100 >> 3);
          }

          else
          {
            v396 = v100 >> 3;
            v397 = v101 >> 3;
            v398 = v674 - (v394 * a2);
            v399 = a7 - 8 * a2;
            v400 = a11 - 2 * a2;
            if (v395)
            {
              if (v395 == 2)
              {
                v611 = *(a1 + 4);
                v612 = *(v611 + 8 * (v396 > v397));
                v613 = 8;
                v614 = 16;
                if (v396 > v397)
                {
                  v613 = 16;
                }

                v615 = *(v611 + v613);
                v616 = 24;
                if (v396 > v397)
                {
                  v614 = 24;
                }

                v617 = *(v611 + v614);
                if (v396 > v397)
                {
                  v616 = 32;
                }

                v618 = *(v611 + v616);
                v619 = *(v611 + 32 * (v397 > v396));
                v620 = v394;
                v622 = v619[2];
                v621 = v619[3];
                v623 = v619[4];
                v625.i32[0] = v612[2];
                v624.i32[0] = v612[3];
                v624.i32[1] = v615[3];
                v624.i32[2] = v617[3];
                v624.i32[3] = v618[3];
                v625.i32[1] = v615[2];
                v625.i32[2] = v617[2];
                v625.i32[3] = v618[2];
                v626.i32[0] = v612[4];
                v626.i32[1] = v615[4];
                v626.i32[2] = v617[4];
                v626.i32[3] = v618[4];
                v627 = vnegq_s32(v626);
                v628.i64[0] = 0xFFFF0000FFFFLL;
                v628.i64[1] = 0xFFFF0000FFFFLL;
                do
                {
                  v629 = v12 + 1;
                  do
                  {
                    v630 = bswap32(*(v14->u16 + v397)) >> 16;
                    v631 = v14 + v620;
                    v632 = ((v622 + v621 * v630) >> v623) & ~((v622 + v621 * v630) >> v623 >> 31);
                    if (v632 >= 0xFFFF)
                    {
                      LOWORD(v632) = -1;
                    }

                    v633 = *(v14 + v396);
                    *v15 = v632;
                    v15 = (v15 + 2);
                    *__dst++ = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v625, v624, vmovl_u16(vrev16_s8(v633))), v627), 0), v628));
                    --v629;
                    v14 = (v14 + v620);
                  }

                  while (v629 > 1);
                  v14 = &v631[v398];
                  v15 = (v15 + v400);
                  __dst = (__dst + v399);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }

              else if (v395 == 1)
              {
                do
                {
                  v401 = a2 + 1;
                  do
                  {
                    v402 = *(v14 + v396);
                    *v15 = bswap32(~*(v14->u16 + v397)) >> 16;
                    v15 = (v15 + 2);
                    v14 = (v14 + v394);
                    *__dst++ = vrev16_s8(vmvn_s8(v402));
                    --v401;
                  }

                  while (v401 > 1);
                  v14 = (v14 + v398);
                  v15 = (v15 + v400);
                  __dst = (__dst + v399);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }
            }

            else
            {
              do
              {
                v650 = a2 + 1;
                do
                {
                  v651 = *(v14 + v396);
                  *v15 = bswap32(*(v14->u16 + v397)) >> 16;
                  v15 = (v15 + 2);
                  v14 = (v14 + v394);
                  *__dst++ = vrev16_s8(v651);
                  --v650;
                }

                while (v650 > 1);
                v14 = (v14 + v398);
                v15 = (v15 + v400);
                __dst = (__dst + v399);
                _VF = __OFSUB__(v13--, 1);
              }

              while (!((v13 < 0) ^ _VF | (v13 == 0)));
            }
          }

          return;
        case 3:
          v383 = v98 >> 3;
          v384 = *a1;
          if (v27 < 0)
          {
            decode_word_16bpc_3(a2, v13, v383, __src, v674, __dst, a7, v384, *(a1 + 4), v100 >> 3);
          }

          else
          {
            v385 = v100 >> 3;
            v386 = v101 >> 3;
            v387 = v674 - (v383 * a2);
            v388 = a7 - 6 * a2;
            v389 = a11 - 2 * a2;
            if (v384)
            {
              if (v384 == 2)
              {
                v571 = *(a1 + 4);
                v572 = *(v571 + 8 * (v385 > v386));
                v573 = 8;
                v574 = 16;
                if (v385 > v386)
                {
                  v573 = 16;
                }

                v575 = a2;
                v576 = *(v571 + v573);
                v577 = 24;
                if (v385 > v386)
                {
                  v574 = 24;
                }

                v578 = *(v571 + v574);
                if (v386 <= v385)
                {
                  v577 = 0;
                }

                v579 = *(v571 + v577);
                v581 = v579[2];
                v580 = v579[3];
                v582 = v383;
                v584 = v572[2];
                v583 = v572[3];
                v585 = v576[2];
                v586 = v576[3];
                v588 = v578[2];
                v587 = v578[3];
                v589 = v579[4];
                v590 = v572[4];
                v591 = v576[4];
                v592 = v389;
                v593 = v578[4];
                do
                {
                  v594 = v575 + 1;
                  do
                  {
                    v595 = bswap32(*(v14->u16 + v386));
                    v596 = bswap32(*(v14->u16 + v385));
                    v597 = bswap32(*(&v14->u16[1] + v385));
                    v598 = bswap32(*(&v14->u16[2] + v385));
                    v14 = (v14 + v582);
                    v599 = ((v581 + v580 * HIWORD(v595)) >> v589) & ~((v581 + v580 * HIWORD(v595)) >> v589 >> 31);
                    v600 = ((v584 + v583 * HIWORD(v596)) >> v590) & ~((v584 + v583 * HIWORD(v596)) >> v590 >> 31);
                    v601 = ((v585 + v586 * HIWORD(v597)) >> v591) & ~((v585 + v586 * HIWORD(v597)) >> v591 >> 31);
                    v602 = ((v588 + v587 * HIWORD(v598)) >> v593) & ~((v588 + v587 * HIWORD(v598)) >> v593 >> 31);
                    if (v599 >= 0xFFFF)
                    {
                      LOWORD(v599) = -1;
                    }

                    if (v600 >= 0xFFFF)
                    {
                      LOWORD(v600) = -1;
                    }

                    if (v601 >= 0xFFFF)
                    {
                      LOWORD(v601) = -1;
                    }

                    if (v602 >= 0xFFFF)
                    {
                      LOWORD(v602) = -1;
                    }

                    *v15 = v599;
                    v15 = (v15 + 2);
                    __dst->i16[0] = v600;
                    __dst->i16[1] = v601;
                    __dst->i16[2] = v602;
                    __dst = (__dst + 6);
                    --v594;
                  }

                  while (v594 > 1);
                  v14 = (v14 + v387);
                  v15 = (v15 + v592);
                  __dst = (__dst + v388);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }

              else if (v384 == 1)
              {
                do
                {
                  v390 = v12 + 1;
                  do
                  {
                    v391 = *(v14->u16 + v385);
                    v392 = *(&v14->u16[1] + v385);
                    v393 = *(&v14->u16[2] + v385);
                    *v15 = bswap32(~*(v14->u16 + v386)) >> 16;
                    v15 = (v15 + 2);
                    __dst->i16[0] = bswap32(~v391) >> 16;
                    __dst->i16[1] = bswap32(~v392) >> 16;
                    __dst->i16[2] = bswap32(~v393) >> 16;
                    v14 = (v14 + v383);
                    __dst = (__dst + 6);
                    --v390;
                  }

                  while (v390 > 1);
                  v14 = (v14 + v387);
                  v15 = (v15 + v389);
                  __dst = (__dst + v388);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }
            }

            else
            {
              do
              {
                v607 = v12 + 1;
                do
                {
                  v608 = bswap32(*(v14->u16 + v385)) >> 16;
                  v609 = bswap32(*(&v14->u16[1] + v385));
                  v610 = bswap32(*(&v14->u16[2] + v385));
                  *v15 = bswap32(*(v14->u16 + v386)) >> 16;
                  v15 = (v15 + 2);
                  __dst->i16[0] = v608;
                  __dst->i16[1] = HIWORD(v609);
                  __dst->i16[2] = HIWORD(v610);
                  v14 = (v14 + v383);
                  __dst = (__dst + 6);
                  --v607;
                }

                while (v607 > 1);
                v14 = (v14 + v387);
                v15 = (v15 + v389);
                __dst = (__dst + v388);
                _VF = __OFSUB__(v13--, 1);
              }

              while (!((v13 < 0) ^ _VF | (v13 == 0)));
            }
          }

          return;
        case 1:
          v170 = v98 >> 3;
          v171 = *a1;
          if (v27 < 0)
          {
            decode_word_16bpc_1(a2, v13, v170, __src, v674, __dst, a7, v171, *(a1 + 4), v100 >> 3);
          }

          else
          {
            v172 = v100 >> 3;
            v173 = v101 >> 3;
            v174 = v674 - (v170 * a2);
            v175 = a7 - (2 * a2);
            v176 = a11 - 2 * a2;
            if (v171)
            {
              if (v171 == 2)
              {
                v634 = *(a1 + 4);
                v635 = *(v634 + 8 * (v172 > v173));
                v636 = *(v634 + 8 * (v173 > v172));
                v637 = v170;
                v639 = v636[2];
                v638 = v636[3];
                v641 = v635[2];
                v640 = v635[3];
                v642 = v636[4];
                v643 = v635[4];
                v644 = v12 + 1;
                do
                {
                  v645 = v644;
                  do
                  {
                    v646 = bswap32(*(v14->u16 + v173));
                    v647 = bswap32(*(v14->u16 + v172));
                    v14 = (v14 + v637);
                    v648 = ((v639 + v638 * HIWORD(v646)) >> v642) & ~((v639 + v638 * HIWORD(v646)) >> v642 >> 31);
                    v649 = ((v641 + v640 * HIWORD(v647)) >> v643) & ~((v641 + v640 * HIWORD(v647)) >> v643 >> 31);
                    if (v648 >= 0xFFFF)
                    {
                      LOWORD(v648) = -1;
                    }

                    if (v649 >= 0xFFFF)
                    {
                      LOWORD(v649) = -1;
                    }

                    *v15 = v648;
                    v15 = (v15 + 2);
                    __dst->i16[0] = v649;
                    __dst = (__dst + 2);
                    --v645;
                  }

                  while (v645 > 1);
                  v14 = (v14 + v174);
                  v15 = (v15 + v176);
                  __dst = (__dst + v175);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }

              else if (v171 == 1)
              {
                do
                {
                  v177 = a2 + 1;
                  do
                  {
                    v178 = *(v14->u16 + v172);
                    *v15 = bswap32(~*(v14->u16 + v173)) >> 16;
                    v15 = (v15 + 2);
                    __dst->i16[0] = bswap32(~v178) >> 16;
                    __dst = (__dst + 2);
                    v14 = (v14 + v170);
                    --v177;
                  }

                  while (v177 > 1);
                  v14 = (v14 + v174);
                  v15 = (v15 + v176);
                  __dst = (__dst + v175);
                  _VF = __OFSUB__(v13--, 1);
                }

                while (!((v13 < 0) ^ _VF | (v13 == 0)));
              }
            }

            else
            {
              do
              {
                v652 = a2 + 1;
                do
                {
                  v653 = bswap32(*(v14->u16 + v172));
                  *v15 = bswap32(*(v14->u16 + v173)) >> 16;
                  v15 = (v15 + 2);
                  __dst->i16[0] = HIWORD(v653);
                  __dst = (__dst + 2);
                  v14 = (v14 + v170);
                  --v652;
                }

                while (v652 > 1);
                v14 = (v14 + v174);
                v15 = (v15 + v176);
                __dst = (__dst + v175);
                _VF = __OFSUB__(v13--, 1);
              }

              while (!((v13 < 0) ^ _VF | (v13 == 0)));
            }
          }

          return;
      }

      v658 = 0;
      v663 = 0;
    }
  }

  if (v99 >= 16)
  {
    v125 = 16;
  }

  else
  {
    v125 = v99;
  }

  v126 = ~(-1 << v125);
  v690 = v26 * v12;
  v686 = v100 >> 3;
  v127 = v26 * v99 - v98;
  v656 = v101 >> 3;
  v667 = a7;
  v128 = v663;
  do
  {
    v702 = v13;
    v129 = v14;
    if (v128)
    {
      v130 = v14;
      v131 = v14;
      v132 = __dst;
      v133 = v20;
      v129 = decode_swap(v660, v128, v130, v658);
      v128 = v663;
      v98 = v664;
      v18 = a1;
      v20 = v133;
      __dst = v132;
      v14 = v131;
    }

    v134 = 0;
    v135 = *(v18 + 4);
    v136 = v129 + v686;
    v137 = v129->u8[v686];
    v138 = __dst;
    v139 = (v135 + 8 * v694);
    v140 = v690;
    v141 = 8 - (v100 & 7);
    do
    {
      v142 = *v139;
      v143 = v141 - v125;
      if (v141 - v125 < 0)
      {
        LODWORD(v144) = -v141 >> 3;
        v145 = -v141 & 0x7FFFFFF8;
        if (v141 >= -7)
        {
          v144 = 0;
        }

        else
        {
          v144 = v144;
        }

        v136 += v144;
        if (v141 >= -7)
        {
          v145 = 0;
        }

        v141 += v145;
        do
        {
          v146 = *++v136;
          v141 += 8;
          v137 = v146 | (v137 << 8);
        }

        while (v141 - v125 < 0);
        v143 = v141 - v125;
      }

      v147 = v134 + 1;
      v148 = (v137 >> v143) & v126;
      if (v134 + 1 >= v26)
      {
        v147 = 0;
      }

      v149 = ((v142[2] + v148 * v142[3]) >> v142[4]) & ~((v142[2] + v148 * v142[3]) >> v142[4] >> 31);
      if (v134 + 1 >= v26)
      {
        v150 = v127;
      }

      else
      {
        v150 = 0;
      }

      if (v134 + 1 >= v26)
      {
        v151 = v26;
      }

      else
      {
        v151 = 0;
      }

      if (v149 >= 0xFFFF)
      {
        LOWORD(v149) = -1;
      }

      v138->i16[v134] = v149;
      v141 += v150 - v99;
      v138 = (v138 + 2 * v151);
      v139 = (v135 + 8 * v694 + 8 * v147);
      v134 = v147;
      --v140;
    }

    while (v140);
    v152 = a2;
    if ((v697 & 0x80000000) == 0 && v20)
    {
      v153 = *(v135 + 8 * v697);
      v154 = v153[2];
      v155 = v153[3];
      v156 = v153[4];
      v157 = &v20[-1] + 6;
      v158 = v129 + v656;
      v159 = v129->u8[v656];
      v160 = 8 - (v101 & 7);
      do
      {
        v161 = v160 - v125;
        if (v160 - v125 < 0)
        {
          v162 = -v160 >> 3;
          v163 = -v160 & 0x7FFFFFF8;
          v164 = v160 < -7;
          if (v160 >= -7)
          {
            v163 = 0;
          }

          v160 += v163;
          if (v164)
          {
            v165 = v162;
          }

          else
          {
            v165 = 0;
          }

          v158 += v165;
          do
          {
            v166 = *++v158;
            v160 += 8;
            v159 = v166 | (v159 << 8);
          }

          while (v160 - v125 < 0);
          v161 = v160 - v125;
        }

        v160 -= v98;
        v167 = (v154 + ((v159 >> v161) & v126) * v155) >> v156;
        v168 = v167 & ~(v167 >> 31);
        if (v168 >= 0xFFFF)
        {
          LOWORD(v168) = -1;
        }

        *(v157 + 1) = v168;
        v157 += 2;
        --v152;
      }

      while (v152);
      v20 = (v20 + a11);
    }

    v14 = (v14 + v674);
    __dst = (__dst + v667);
    --v13;
  }

  while (v702 != 1);
  if (v128)
  {
    v169 = v663;
    goto LABEL_428;
  }
}

uint64_t decode_byte_8bpc_1a(uint64_t result, int a2, int a3, uint64_t a4, int a5, _BYTE *a6, int a7, _BYTE *a8, int a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v13 = a5 - (a3 * result);
  v14 = a7 - result;
  v15 = a9 - result;
  if (a10)
  {
    if (a10 == 2)
    {
      v19 = *(a11 + 8 * (a12 > a13)) + 20;
      v20 = *(a11 + 8 * (a13 > a12)) + 20;
      v21 = a3;
      v22 = result + 1;
      do
      {
        v23 = v22;
        do
        {
          result = *(v20 + *(a4 + a13));
          v24 = *(v19 + *(a4 + a12));
          *a8++ = result;
          *a6++ = v24;
          a4 += v21;
          --v23;
        }

        while (v23 > 1);
        a4 += v13;
        a6 += v14;
        a8 += v15;
        v18 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v18 | (a2 == 0)));
    }

    else if (a10 == 1)
    {
      do
      {
        v16 = result + 1;
        do
        {
          v17 = *(a4 + a12);
          *a8++ = ~*(a4 + a13);
          *a6++ = ~v17;
          a4 += a3;
          --v16;
        }

        while (v16 > 1);
        a4 += v13;
        a6 += v14;
        a8 += v15;
        v18 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v18 | (a2 == 0)));
    }
  }

  else
  {
    do
    {
      v25 = result + 1;
      do
      {
        v26 = *(a4 + a12);
        *a8++ = *(a4 + a13);
        *a6++ = v26;
        a4 += a3;
        --v25;
      }

      while (v25 > 1);
      a4 += v13;
      a6 += v14;
      a8 += v15;
      v18 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v18 | (a2 == 0)));
  }

  return result;
}

uint64_t img_data_lock_depth(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v89 = *MEMORY[0x1E69E9840];
  v84 = a5;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0uLL;
  v9 = *(a1 + 16);
  v10 = v9 == a2;
  if (v9 == a2)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 1.0;
    v14 = *(a1 + 40);
  }

  else
  {
    v15 = a2 / v9;
    v16 = *(a1 + 40);
    if (v9 == v16)
    {
      v11 = 0;
      v12 = a2;
      v14 = a2;
    }

    else
    {
      v17 = *(a1 + 32);
      v18 = vcvtmd_s64_f64(v17 * v15 + 0.00390625);
      v11 = v18 & ~(v18 >> 31);
      v19 = vcvtpd_s64_f64((v17 + v16) * v15 + -0.00390625);
      if (v19 > a2)
      {
        v19 = a2;
      }

      v20 = v19 - v11;
      if (v19 <= v11)
      {
        goto LABEL_64;
      }

      v12 = v20;
      v15 = v20 / v16;
      v14 = v20;
    }

    *(&v70 + 1) = &v85;
    v13 = v15;
  }

  v21 = *(a1 + 24);
  if (v21 == a3)
  {
    v22 = *(a1 + 36);
    v23 = *(a1 + 44);
    v24 = v23;
    v25 = a4 + v23;
    v26 = 1.0;
  }

  else
  {
    v27 = a3 / v21;
    v28 = *(a1 + 44);
    if (v21 == v28)
    {
      v22 = 0;
      v25 = a4 + a3;
      v23 = a3;
    }

    else
    {
      v29 = v28;
      v30 = *(a1 + 36);
      v31 = vcvtmd_s64_f64(v30 * v27 + 0.00390625);
      v22 = v31 & ~(v31 >> 31);
      v32 = vcvtpd_s64_f64((v30 + v29) * v27 + -0.00390625);
      if (v32 > a3)
      {
        v32 = a3;
      }

      v23 = v32 - v22;
      if (v32 <= v22)
      {
        goto LABEL_64;
      }

      v25 = v23;
      v33 = vcvtpd_s64_f64((v29 + a4) * v27 + -0.00390625);
      if (a4)
      {
        v25 = v33;
      }

      v27 = v23 / v29;
    }

    v10 = 0;
    *(&v70 + 1) = &v85;
    v26 = v27;
    v24 = v23;
  }

  v74 = 0u;
  v75 = 0u;
  v83 = 0;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  *v76 = 0u;
  if (v12 >= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = v12;
  }

  if (v25 >= a3)
  {
    v35 = a3;
  }

  else
  {
    v35 = v25;
  }

  v73[1] = v34;
  LODWORD(v74) = v35;
  v36 = *a5;
  v37 = (((v34 * (v36 >> 22)) >> 3) + 31) & 0x3FFFFFFFFFFFFFE0;
  DWORD1(v75) = (((v34 * (v36 >> 22)) >> 3) + 31) & 0xFFFFFFE0;
  v66 = v11;
  v64 = v22;
  v68 = v10;
  v67 = v23;
  if (!*(a1 + 64) && v34 == v14 && v35 == v24)
  {
    v38 = a6;
    v39 = 0;
    v40 = 1;
  }

  else
  {
    v38 = a6;
    v41 = v36 & 0xC;
    v42 = v41 == 8;
    v43 = (((v34 * (((BYTE2(v36) & 0x3F) + 7) & 0x78)) >> 3) + 3) & 0x3FFFFFFFFFFFFFFCLL;
    if (v41 == 8)
    {
      v44 = v37;
    }

    else
    {
      v44 = v43;
    }

    if (v42)
    {
      v39 = 0;
    }

    else
    {
      v39 = v43;
    }

    DWORD2(v75) = v44;
    v40 = v44 == 0;
  }

  if (v21 == a3)
  {
    v45 = 0;
  }

  else
  {
    v45 = "CGSImageData HeightMismatch";
  }

  if (v9 == a2)
  {
    v46 = v45;
  }

  else
  {
    v46 = "CGSImageData WidthMismatch";
  }

  if (*(a1 + 8) == a5)
  {
    v48 = v46;
  }

  else
  {
    v48 = "CGSImageData DepthMismatch";
  }

  image_data_handle = create_image_data_handle(v39 + v37, v35, 31, a7, v48, a6, a7, a8);
  if (!image_data_handle)
  {
LABEL_64:
    CGSImageDataUnlock(v8);
    return 0;
  }

  v50 = image_data_handle[2];
  v76[0] = v50;
  v51 = v14;
  if (v40)
  {
    v50 = 0;
    v52 = a5;
    v53 = v68;
  }

  else
  {
    v52 = a5;
    v53 = v68;
    if (v39)
    {
      v50 += v37 * v35;
    }
  }

  v54 = image_data_handle;
  v55 = *(v8 + 40);
  *(&v78 + 4) = *(v8 + 48);
  v79 = *(v8 + 56);
  v76[1] = v50;
  v73[0] = 257;
  HIDWORD(v74) = v51;
  LODWORD(v75) = v67;
  *(&v77 + 1) = __PAIR64__(v67, v51);
  if (v38 == 1)
  {
    v56 = 65280;
  }

  else
  {
    v56 = 0xFFFF;
  }

  LODWORD(v69) = **(v8 + 8);
  *(&v69 + 4) = v56 | 0x3F80000000000000;
  v71 = v55;
  *&v72 = *(v8 + 80);
  *(&v72 + 1) = v8;
  if (!v53)
  {
    v88 = 0;
    v86 = 0;
    v85 = v13;
    v87 = v26;
  }

  if (!(*(v52 + 5))(&v84, v73, &v69))
  {
    free(v76[0]);
    goto LABEL_64;
  }

  CGSImageDataHandleRelease(*(v8 + 72));
  *(v8 + 72) = 0;
  v57 = *(v8 + 112);
  if (v57)
  {
    CGAccessSessionRelease(v57);
  }

  *(v8 + 112) = 0;
  v58 = *(v8 + 120);
  if (v58)
  {
    CGImageBlockSetRelease(*v58);
    free(v58);
  }

  *(v8 + 120) = 0;
  v60 = v76[0];
  v59 = v76[1];
  v61 = v84;
  *v8 = *(*(v84 + 1) + 8 * (v76[1] != 0));
  *(v8 + 8) = v61;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 40) = v34;
  *(v8 + 44) = v35;
  *(v8 + 32) = v66;
  *(v8 + 36) = v64 - v35 + v67;
  *(v8 + 56) = v60;
  *(v8 + 64) = v59;
  *(v8 + 48) = *(&v75 + 4);
  *(v8 + 72) = v54;
  *(v8 + 80) = 0;
  return v8;
}

uint64_t A8_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v47, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) >= 1 && *(a2 + 2) >= 1)
  {
    if (_blt_image_initialize(a2, a3, &v37, v47) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v18 = *v6;
    v19 = *a3;
    v38 = v19;
    v39 = v18;
    if (v19 == 34082816)
    {
      if (!v44 && (~v40 & 0xC3) == 0)
      {
        v17.n128_u32[0] = *(a3 + 8);
        if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
        {
          if ((v40 & 4) != 0)
          {
            v17.n128_u64[0] = *(a3 + 32);
            *(a2 + 8) = v17.n128_u64[0];
          }

          A8_mark_inner(*(*a1 + 56), v17);
          return 1;
        }
      }

      v37 = A8_sample_A8_inner;
      goto LABEL_15;
    }

    v22 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
    if (!v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v22 <= 0xB)
    {
      if (v22 > 6)
      {
        switch(v22)
        {
          case 7u:
            LOBYTE(v24) = 0;
            v25 = 32;
            break;
          case 9u:
            LOBYTE(v24) = 0;
            v25 = 40;
            break;
          case 8u:
            LOBYTE(v24) = 0;
            v25 = 8;
            goto LABEL_44;
          default:
            goto LABEL_43;
        }

        goto LABEL_44;
      }

      if (v22 != 2)
      {
        if (v22 != 5)
        {
          if (v22 == 6)
          {
            LOBYTE(v24) = 0;
            v25 = 0;
            goto LABEL_44;
          }

          goto LABEL_43;
        }

        LOBYTE(v24) = 0;
        v25 = 24;
LABEL_44:
        v37 = A8_image_sample[v22 + 1];
        if (!v37)
        {
          return 0xFFFFFFFFLL;
        }

        v38 = 34082816;
        if ((v24 & 1) != 0 || (v40 & 7) != 3 || (v8 - 1) > 1 || a2[2] != 5 && a2[2] || v22 > 0xB)
        {
          goto LABEL_15;
        }

        HIDWORD(v30) = v25;
        LODWORD(v30) = v25;
        v29 = v30 >> 3;
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            if (v8 != 1 || (v40 & 0x70) != 0x70 || v44)
            {
              v38 = *a3;
              v31 = A8_image_mark_RGB24;
              goto LABEL_91;
            }

            goto LABEL_79;
          }

          if (v29 == 4)
          {
            v38 = *a3;
            v31 = A8_image_mark_rgb32;
            goto LABEL_91;
          }

          if (v29 != 5)
          {
LABEL_15:
            if ((*a3 & 0xC) != 8)
            {
LABEL_36:
              A8_image_mark(a2, &v37, v8, v17);
              return 1;
            }

            v20 = (*a3 >> 22) / (HIWORD(*a3) & 0x3Fu);
            if (v20 == 2)
            {
              v21 = 1;
              goto LABEL_29;
            }

            if (v20 == 4)
            {
              v21 = 2;
LABEL_29:
              if ((*a3 & 0x30) == 0x10)
              {
                v26 = 64;
              }

              else
              {
                v26 = 128;
              }

              v27 = v20 - 1;
              if ((*a3 & 0xC0) == v26)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v45 = v21;
              v46 = v28;
              goto LABEL_36;
            }

            return 0xFFFFFFFFLL;
          }

          v38 = *a3;
          v32 = A8_image_mark_rgb32;
        }

        else
        {
          if (!v29)
          {
            if (v8 == 1 && (v40 & 0x70) == 0x70 && !v44 && (!*(a2 + 12) || *(a3 + 8) == 1.0))
            {
              A8_mark_image_RGBA32(a2, a3, v41 >> SBYTE2(v40), v42 >> SHIBYTE(v40), v43 >> SHIBYTE(v40));
              return 1;
            }

            v38 = *a3;
            v31 = A8_image_mark_RGB32;
            goto LABEL_91;
          }

          if (v29 != 1)
          {
            if (v29 == 2)
            {
              if (v8 != 1 || (v40 & 0x70) != 0x70 || v44)
              {
                v38 = *a3;
                v31 = A8_image_mark_W8;
LABEL_91:
                v33 = v31;
                v34 = a2;
                v35 = v8;
                v36 = 0;
                goto LABEL_92;
              }

LABEL_79:
              A8_mark_image_OPAQUE(a2, v23, *(a3 + 8));
              return 1;
            }

            goto LABEL_15;
          }

          if (v8 == 1 && (v40 & 0x70) == 0x70 && !v44 && (!*(a2 + 12) || *(a3 + 8) == 1.0))
          {
            A8_mark_image_ARGB32(a2, a3, v41 >> SBYTE2(v40), v42 >> SHIBYTE(v40), v43 >> SHIBYTE(v40));
            return 1;
          }

          v38 = *a3;
          v32 = A8_image_mark_RGB32;
        }

        v33 = v32;
        v34 = a2;
        v35 = v8;
        v36 = 8;
LABEL_92:
        A8_image_mark_image(v34, &v37, v35, v36, v33);
        return 1;
      }

      v24 = *(a2 + 12);
      if (!v24)
      {
        v25 = 16;
        goto LABEL_44;
      }
    }

LABEL_43:
    v25 = 255;
    LOBYTE(v24) = 1;
    goto LABEL_44;
  }

  return 0;
}

uint64_t A8_sample_ALPHA8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v103 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 176);
    v6 = *(result + 64);
    v7 = *(result + 72);
    v9 = *(result + 112);
    v8 = *(result + 120);
    v11 = *(result + 48);
    v10 = *(result + 56);
    v12 = v11 == 0;
    if (v11)
    {
      v100 = *(result + 112);
      if (v9 > v11)
      {
        v100 = v9 % v11;
      }
    }

    else
    {
      v100 = 0;
    }

    v97 = *(result + 80);
    v98 = *(result + 88);
    if (v10)
    {
      if (v8 <= v10)
      {
        v99 = *(result + 120);
      }

      else
      {
        v99 = v8 % v10;
      }
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v11 = 0;
    v5 = 0;
    v10 = 0;
    v6 = *(result + 64);
    v7 = *(result + 72);
    v97 = *(result + 80);
    v98 = *(result + 88);
    v12 = 1;
    v9 = *(result + 112);
    v8 = *(result + 120);
  }

  v96 = *(result + 188);
  v13 = *(result + 152) - 1;
  v14 = *(result + 144) - 1;
  v101 = *(result + 248);
  v102 = *(result + 252);
  v15 = (v4 + ((*(result + 256) - 1) << v101) + ((*(result + 260) - 1) * v103));
  v16 = -v7;
  while (1)
  {
LABEL_13:
    if (a3 >= v7)
    {
      if (a3 <= v98)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v98;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_53;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v27 = v24 | v96;
        v28 = v22 - 0x1000000;
        v25 = a3 - (v22 - 0x1000000);
        v26 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v7 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_53;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v27 = v20 | v96;
      v28 = v18 + 0x1000000;
      v25 = a3 - (v18 + 0x1000000);
      v26 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v6 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v96;
      }

      v32 = v30 + 0x1000000;
      v33 = a2 - (v30 + 0x1000000);
      v34 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v9;
    a3 += v8;
    ++v13;
    *++v14 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v33 = 0;
    v34 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_37;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v97;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_53;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v96;
  }

  v32 = v36 - 0x1000000;
  v33 = a2 - (v36 - 0x1000000);
  v34 = 28;
LABEL_37:
  if (v27 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v12)
  {
    v38 = (v10 & ((v28 % v10) >> 63)) + v28 % v10;
    v39 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    if (v38 >= v10)
    {
      v40 = v10;
    }

    else
    {
      v40 = 0;
    }

    v28 = v38 - v40;
    if (v39 >= v11)
    {
      v41 = v11;
    }

    else
    {
      v41 = 0;
    }

    v32 = v39 - v41;
    v25 += v28;
    v33 += v32;
  }

  if (v4)
  {
    v42 = v4 + SHIDWORD(v28) * v103 + (v32 >> 32 << v101);
    v43 = (v42 + v102);
    if (v15 < v42 + v102)
    {
      v43 = v15;
    }

    if (v43 < *(result + 40))
    {
      v43 = *(result + 40);
    }

    v44 = *v43;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = 0;
    v44 = 255;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  v45 = *(v5 + (v34 | v26));
  while (2)
  {
    v57 = v45 & 0xF;
    v58 = v45 >> 8;
    v59 = HIBYTE(v45) & 3;
    switch(v57)
    {
      case 1:
        LODWORD(v88) = SBYTE1(v45);
        if (!v12)
        {
          v89 = v25 + (v58 << 32);
          v90 = v10 & (v89 >> 63);
          if (v90 + v89 >= v10)
          {
            v91 = v10;
          }

          else
          {
            v91 = 0;
          }

          v88 = (v90 + (v58 << 32) - v91) >> 32;
        }

        v92 = 255;
        if (v4)
        {
          v93 = (v42 + v88 * v103 + v102);
          if (v15 < v93)
          {
            v93 = v15;
          }

          if (v93 < *(result + 40))
          {
            v93 = *(result + 40);
          }

          v92 = *v93;
        }

        v44 = v44 - ((interpolate_8888_21865[v59] & v44) >> (v59 + 1)) + ((interpolate_8888_21865[v59] & v92) >> (v59 + 1));
        break;
      case 2:
        v82 = SBYTE2(v45);
        if (!v12)
        {
          v83 = v33 + (SBYTE2(v45) << 32);
          v84 = v11 & (v83 >> 63);
          if (v84 + v83 >= v11)
          {
            v85 = v11;
          }

          else
          {
            v85 = 0;
          }

          v82 = (v84 + ((HIWORD(v45) << 56) >> 24) - v85) >> 32;
        }

        v86 = 255;
        if (v4)
        {
          v87 = v42 + (v82 << v101);
          if (v15 < v87)
          {
            v87 = v15;
          }

          if (v87 < *(result + 40))
          {
            v87 = *(result + 40);
          }

          v86 = *(v87 + v102);
        }

        v44 = v44 - ((interpolate_8888_21865[(v45 >> 28) & 3] & v44) >> (((v45 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v45 >> 28) & 3] & v86) >> (((v45 >> 28) & 3) + 1));
        break;
      case 3:
        v94 = HIBYTE(v45) & 3;
        v95 = v7;
        LODWORD(v60) = SBYTE1(v45);
        v61 = SBYTE2(v45);
        if (!v12)
        {
          v62 = v58 << 56;
          v63 = HIWORD(v45) << 56;
          v64 = v25 + (SBYTE1(v45) << 32);
          v65 = v33 + (v63 >> 24);
          v66 = v10 & (v64 >> 63);
          v67 = v11 & (v65 >> 63);
          v68 = v67 + v65;
          if (v66 + v64 >= v10)
          {
            v69 = v10;
          }

          else
          {
            v69 = 0;
          }

          if (v68 >= v11)
          {
            v70 = v11;
          }

          else
          {
            v70 = 0;
          }

          v60 = (v66 + (v62 >> 24) - v69) >> 32;
          v61 = (v67 + (v63 >> 24) - v70) >> 32;
        }

        v71 = 255;
        v72 = 255;
        v73 = 255;
        if (v4)
        {
          v74 = v61 << v101;
          v75 = (v42 + v102 + (v61 << v101));
          v76 = *(result + 40);
          if (v15 < v75)
          {
            v75 = v15;
          }

          if (v75 < v76)
          {
            v75 = *(result + 40);
          }

          v71 = *v75;
          v77 = v42 + v60 * v103 + v102;
          if (v15 >= v77)
          {
            v78 = (v42 + v60 * v103 + v102);
          }

          else
          {
            v78 = v15;
          }

          if (v78 < v76)
          {
            v78 = *(result + 40);
          }

          v72 = *v78;
          v79 = (v77 + v74);
          if (v15 < v79)
          {
            v79 = v15;
          }

          if (v79 < v76)
          {
            v79 = *(result + 40);
          }

          v73 = *v79;
        }

        v80 = interpolate_8888_21865[v94];
        v81 = (v45 >> 28) & 3;
        v44 = v44 - ((v80 & v44) >> (v94 + 1)) + ((v80 & v72) >> (v94 + 1)) - (((v44 - ((v80 & v44) >> (v94 + 1)) + ((v80 & v72) >> (v94 + 1))) & interpolate_8888_21865[v81]) >> (v81 + 1)) + (((v71 - ((v80 & v71) >> (v94 + 1)) + ((v80 & v73) >> (v94 + 1))) & interpolate_8888_21865[v81]) >> (v81 + 1));
        v7 = v95;
        break;
    }

LABEL_57:
    *(v13 + 1) = v44;
    *(v14 + 1) = v27 >> 22;
    if (a4 == 1)
    {
      return result;
    }

    v46 = 0;
    a2 += v9;
    v47 = v97 - a2;
    a3 += v8;
    v48 = v98 - a3;
LABEL_59:
    if ((((a2 - v6) | v47 | (v16 + a3) | v48) & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        v49 = HIDWORD(a3);
        v50 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        v44 = 255;
        if (v5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = (v10 & ((v25 + v99) >> 63)) + v25 + v99;
        v53 = (v11 & ((v33 + v100) >> 63)) + v33 + v100;
        if (v52 >= v10)
        {
          v54 = v10;
        }

        else
        {
          v54 = 0;
        }

        v25 = v52 - v54;
        if (v53 >= v11)
        {
          v55 = v11;
        }

        else
        {
          v55 = 0;
        }

        v33 = v53 - v55;
        v49 = HIDWORD(v25);
        v50 = v33;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v42 = v4 + v49 * v103 + (v50 >> 32 << v101);
        v51 = (v42 + v102);
        if (v15 < v42 + v102)
        {
          v51 = v15;
        }

        if (v51 < *(result + 40))
        {
          v51 = *(result + 40);
        }

        v44 = *v51;
        if (v5)
        {
LABEL_76:
          v45 = *(v5 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v45 & 0xF) != 0)
          {
            v14 += v46 + 1;
            v13 += v46 + 1;
            a4 += ~v46;
            v27 = -1;
            continue;
          }
        }
      }

      *(v13 + v46 + 2) = v44;
      v56 = v14 + v46++;
      a2 += v9;
      *(v56 + 2) = -1;
      v47 -= v9;
      a3 += v8;
      v48 -= v8;
      if (a4 - 1 == v46)
      {
        return result;
      }

      goto LABEL_59;
    }

    break;
  }

  v14 += v46 + 1;
  v13 += v46 + 1;
  a4 += ~v46;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t ripc_GetImageInterpolationSize(double *a1, int64_t *a2, unint64_t *a3, int *a4)
{
  v4 = a1[1] * a1[1] + *a1 * *a1;
  v5 = a1[3] * a1[3] + a1[2] * a1[2];
  if (v4 >= 0.99 || (v6 = *a2, v7 = sqrt(v4), v8 = *a2, v9 = vcvtpd_s64_f64(v7 * v8 + -0.00390625), *a2 == v9))
  {
    result = 0;
  }

  else
  {
    *a2 = v9;
    if (a4)
    {
      v11 = a4[2];
      if (v6 == v11)
      {
        v12 = 0;
      }

      else
      {
        v13 = v9 / v8;
        v14 = vcvtpd_s64_f64(v13 * (*a4 + v11));
        v15 = vcvtmd_s64_f64(v13 * *a4);
        if (v9 >= v14)
        {
          LODWORD(v9) = v14;
        }

        v12 = v15 & ~(v15 >> 31);
        LODWORD(v9) = v9 - v12;
      }

      *a4 = v12;
      a4[2] = v9;
    }

    result = 1;
  }

  if (v5 < 0.99)
  {
    v16 = *a3;
    v17 = sqrt(v5);
    v18 = *a3;
    v19 = vcvtpd_s64_f64(v17 * v18 + -0.00390625);
    if (*a3 != v19)
    {
      *a3 = v19;
      if (a4)
      {
        v20 = a4[3];
        if (v16 == v20)
        {
          v21 = 0;
        }

        else
        {
          v22 = v19 / v18;
          v23 = a4[1];
          v24 = vcvtpd_s64_f64(v22 * (v23 + v20));
          v25 = vcvtmd_s64_f64(v22 * v23);
          if (v19 >= v24)
          {
            v19 = v24;
          }

          v21 = v25 & ~(v25 >> 31);
          v19 -= v21;
        }

        a4[1] = v21;
        a4[3] = v19;
      }

      return 1;
    }
  }

  return result;
}

uint64_t ripc_GetImageInterpolation(uint64_t a1, int a2, int a3)
{
  if (a2 << 24)
  {
    v3 = a2;
    v4 = *(a1 + 76);
    if (v4)
    {
      v5 = 0x304020100uLL >> (8 * v4);
      if (v4 >= 5)
      {
        LOBYTE(v5) = 0;
      }

      if (v5 < (0x304020100uLL >> (8 * a2)) && a2 < 5)
      {
        v3 = *(a1 + 76);
      }
    }

    v9 = *(a1 + 72);
    v10 = 0x304020100uLL >> (8 * v3);
    if (v3 >= 5)
    {
      LOBYTE(v10) = 0;
    }

    if (v10 >= (0x304020100uLL >> (8 * v9)) || v9 >= 5)
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 72);
    }

    if (v9)
    {
      return v12;
    }

    else
    {
      return v3;
    }
  }

  else if (a3)
  {
    v7 = *(a1 + 76);
    if (v7)
    {
      return v7;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return *(a1 + 72);
  }
}

uint64_t A8_sample_A8_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v105 = *(result + 112);
    if (v5 > v6)
    {
      v105 = v5 % v6;
    }
  }

  else
  {
    v105 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 120);
  v10 = *(result + 32);
  if (v7)
  {
    v104 = *(result + 120);
    if (v9 > v7)
    {
      v104 = v9 % v7;
    }
  }

  else
  {
    v104 = 0;
  }

  v100 = *(result + 80);
  v101 = *(result + 64);
  v102 = *(result + 88);
  v103 = *(result + 72);
  v11 = *(result + 152) - 1;
  v12 = *(result + 144) - 1;
  v99 = *(result + 188);
  v13 = v10 + *(result + 256) + ((*(result + 260) - 1) * v4) - 1;
  while (1)
  {
LABEL_10:
    if (a3 >= v103)
    {
      if (a3 <= v102)
      {
        v22 = 0;
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v102;
        v20 = v19 - a3 + (v18 >> 1);
        if (v20 < 1)
        {
          goto LABEL_50;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v24 = v99 | v21;
        v25 = v19 - 0x1000000;
        v22 = a3 - (v19 - 0x1000000);
        v23 = 448;
      }
    }

    else
    {
      v14 = *(result + 216);
      v15 = v103 - *(result + 224);
      v16 = a3 - v15 + (v14 >> 1);
      if (v16 < 1)
      {
        goto LABEL_50;
      }

      if (v16 >= v14)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v16) >> 32;
      }

      v24 = v99 | v17;
      v25 = v15 + 0x1000000;
      v22 = a3 - (v15 + 0x1000000);
      v23 = 512;
    }

    if (a2 >= v101)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v101 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v99;
      }

      v29 = v27 + 0x1000000;
      v30 = a2 - (v27 + 0x1000000);
      v31 = 32;
      goto LABEL_34;
    }

LABEL_50:
    --a4;
    a2 += v5;
    a3 += v9;
    ++v11;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v100)
  {
    v30 = 0;
    v31 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_34;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v100;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_50;
  }

  if (v34 < v32)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v99;
  }

  v29 = v33 - 0x1000000;
  v30 = a2 - (v33 - 0x1000000);
  v31 = 28;
LABEL_34:
  if (v24 < 0x400000)
  {
    goto LABEL_50;
  }

  if (v6)
  {
    v35 = (v7 & ((v25 % v7) >> 63)) + v25 % v7;
    v36 = (v6 & ((v29 % v6) >> 63)) + v29 % v6;
    if (v35 >= v7)
    {
      v37 = v7;
    }

    else
    {
      v37 = 0;
    }

    v25 = v35 - v37;
    if (v36 >= v6)
    {
      v38 = v6;
    }

    else
    {
      v38 = 0;
    }

    v29 = v36 - v38;
    v22 += v25;
    v30 += v29;
  }

  v39 = v10 + SHIDWORD(v25) * v4;
  v40 = v39 + (v29 >> 32);
  v41 = *(result + 32);
  if (v13 >= v40)
  {
    v42 = (v39 + (v29 >> 32));
  }

  else
  {
    v42 = v13;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (v8)
  {
    v44 = *(v8 + (v31 | v23));
LABEL_76:
    v60 = v44 & 0xF;
    v61 = v44 >> 8;
    v62 = HIBYTE(v44) & 3;
    switch(v60)
    {
      case 1:
        LODWORD(v91) = SBYTE1(v44);
        if (v6)
        {
          v92 = v61 << 56;
          v93 = v22 + (v61 << 32);
          v94 = v7 & (v93 >> 63);
          if (v94 + v93 >= v7)
          {
            v95 = v7;
          }

          else
          {
            v95 = 0;
          }

          v91 = (v94 + (v92 >> 24) - v95) >> 32;
        }

        v96 = (v40 + v91 * v4);
        if (v13 < v96)
        {
          v96 = v13;
        }

        if (v96 < v41)
        {
          v96 = v41;
        }

        v97 = interpolate_8888_21865[v62];
        v84 = v43 - ((v97 & v43) >> (v62 + 1));
        v85 = (v97 & *v96) >> (v62 + 1);
LABEL_121:
        LOBYTE(v43) = v84 + v85;
        break;
      case 2:
        v86 = SBYTE2(v44);
        if (v6)
        {
          v87 = v30 + (SBYTE2(v44) << 32);
          v88 = v6 & (v87 >> 63);
          if (v88 + v87 >= v6)
          {
            v89 = v6;
          }

          else
          {
            v89 = 0;
          }

          v86 = (v88 + ((HIWORD(v44) << 56) >> 24) - v89) >> 32;
        }

        v90 = (v40 + v86);
        if (v13 < v90)
        {
          v90 = v13;
        }

        if (v90 < v41)
        {
          v90 = v41;
        }

        v43 = v43 - ((interpolate_8888_21865[(v44 >> 28) & 3] & v43) >> (((v44 >> 28) & 3) + 1)) + ((interpolate_8888_21865[(v44 >> 28) & 3] & *v90) >> (((v44 >> 28) & 3) + 1));
        break;
      case 3:
        v98 = HIBYTE(v44) & 3;
        LODWORD(v63) = SBYTE1(v44);
        v64 = SBYTE2(v44);
        if (v6)
        {
          v65 = v61 << 56;
          v66 = v22 + (v65 >> 24);
          v67 = v30 + (SBYTE2(v44) << 32);
          v68 = v7 & (v66 >> 63);
          v69 = v6 & (v67 >> 63);
          v70 = v69 + v67;
          if (v68 + v66 >= v7)
          {
            v71 = v7;
          }

          else
          {
            v71 = 0;
          }

          if (v70 >= v6)
          {
            v72 = v6;
          }

          else
          {
            v72 = 0;
          }

          v63 = (v68 + (v65 >> 24) - v71) >> 32;
          v64 = (v69 + ((HIWORD(v44) << 56) >> 24) - v72) >> 32;
        }

        v73 = (v40 + v64);
        if (v13 < v40 + v64)
        {
          v73 = v13;
        }

        if (v73 < v41)
        {
          v73 = v41;
        }

        v74 = *v73;
        v75 = v40 + v63 * v4;
        if (v13 >= v75)
        {
          v76 = (v40 + v63 * v4);
        }

        else
        {
          v76 = v13;
        }

        if (v76 < v41)
        {
          v76 = v41;
        }

        v77 = *v76;
        v78 = (v75 + v64);
        if (v13 < v78)
        {
          v78 = v13;
        }

        if (v78 < v41)
        {
          v78 = v41;
        }

        v79 = interpolate_8888_21865[v98];
        v80 = v43 - ((v79 & v43) >> (v98 + 1)) + ((v79 & v77) >> (v98 + 1));
        v81 = v74 - ((v79 & v74) >> (v98 + 1)) + ((v79 & *v78) >> (v98 + 1));
        v82 = (v44 >> 28) & 3;
        v83 = interpolate_8888_21865[v82];
        LOBYTE(v82) = v82 + 1;
        v84 = v80 - ((v80 & v83) >> v82);
        v85 = (v81 & v83) >> v82;
        goto LABEL_121;
    }
  }

  *(v11 + 1) = v43;
  *(v12 + 1) = v24 >> 22;
  if (a4 != 1)
  {
    v45 = 0;
    a2 += v5;
    v46 = v100 - a2;
    a3 += v9;
    v47 = v102 - a3;
    v48 = --a4;
    while (1)
    {
      v49 = v12 + v45 + 1;
      v50 = v11 + v45 + 1;
      if ((v47 | v46 | (a3 - v103) | (a2 - v101)) < 0)
      {
        break;
      }

      if (v6)
      {
        v51 = (v7 & ((v22 + v104) >> 63)) + v22 + v104;
        v52 = (v6 & ((v30 + v105) >> 63)) + v30 + v105;
        if (v51 >= v7)
        {
          v53 = v7;
        }

        else
        {
          v53 = 0;
        }

        v22 = v51 - v53;
        if (v52 >= v6)
        {
          v54 = v6;
        }

        else
        {
          v54 = 0;
        }

        v30 = v52 - v54;
        v55 = HIDWORD(v22);
        v56 = v52 - v54;
      }

      else
      {
        v55 = HIDWORD(a3);
        v56 = a2;
      }

      v57 = v10 + v55 * v4;
      v40 = v57 + (v56 >> 32);
      v41 = *(result + 32);
      if (v13 >= v40)
      {
        v58 = (v57 + (v56 >> 32));
      }

      else
      {
        v58 = v13;
      }

      if (v58 < v41)
      {
        v58 = *(result + 32);
      }

      v43 = *v58;
      if (v8)
      {
        v44 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v44 & 0xF) != 0)
        {
          v24 = -1;
          v12 = v49;
          v11 = v50;
          goto LABEL_76;
        }
      }

      --a4;
      *(v11 + v45 + 2) = v43;
      v59 = v12 + v45++;
      *(v59 + 2) = -1;
      a2 += v5;
      v46 -= v5;
      a3 += v9;
      v47 -= v9;
      if (v48 == v45)
      {
        return result;
      }
    }

    v12 += v45 + 1;
    v11 += v45 + 1;
    if (a4)
    {
      goto LABEL_10;
    }
  }

  return result;
}

double CGStyleGetDrawBoundingBoxWithMatrix(uint64_t a1, _OWORD *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v9 = a3;
  v10 = a3 == INFINITY || a4 == INFINITY;
  if (!v10 && a5 != 0.0 && a6 != 0.0)
  {
    if (a3 == -8.98846567e307 && a4 == -8.98846567e307 && a5 == 1.79769313e308 && a6 == 1.79769313e308)
    {
      return -8.98846567e307;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      if (get_expansion(a1, &v20))
      {
        v13 = v20;
        v14 = v21;
        v15 = a2[1];
        *&v19.a = *a2;
        *&v19.c = v15;
        *&v19.tx = a2[2];
        v16 = 0;
        *&v15 = 0;
        v22 = CGRectApplyAffineTransform(*(&v13 - 2), &v19);
        v17 = -fabs(v22.size.width);
        v18 = -fabs(v22.size.height);
        v22.origin.x = v9;
        v22.origin.y = a4;
        v22.size.width = a5;
        v22.size.height = a6;
        v23 = CGRectInset(v22, v17, v18);
        *&v9 = CGRectIntegral(v23);
      }
    }
  }

  return v9;
}

uint64_t get_expansion(uint64_t a1, double *a2)
{
  v4 = *(a1 + 20);
  if (v4 == 3)
  {
    v7 = *(a1 + 40);
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v7 = *(a1 + 56);
LABEL_9:
    v8 = fabs(v7);
    v9 = v8;
    goto LABEL_13;
  }

  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = 0.0;
  if (v5 <= 89.9)
  {
    if (v5 >= 0.1)
    {
      v11 = *(a1 + 64);
      v6 = v11 / tan(v5 * 3.14159265 / 180.0);
    }

    else
    {
      v6 = 1.79769313e308;
    }
  }

  v12 = fabs(*(a1 + 72));
  v13 = __sincos_stret((*(a1 + 48) + -180.0) * 3.14159265 / 180.0);
  v8 = v12 + fabs(v6 * v13.__cosval);
  v9 = v12 + fabs(v6 * v13.__sinval);
LABEL_13:
  *a2 = v8;
  a2[1] = v9;
  return 1;
}

void sub_183F24700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CG::DisplayList::getEntryPatternState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(a1 + 840);
  v5 = a1 + 656;
  v6 = *(a1 + 656);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = a1 + 656;
  do
  {
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = CG::CompareEntryStatePattern::operator()(v8, a2, a3);
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }

    else
    {
      v10 = CG::CompareEntryStatePattern::operator()(v8, a2, a3);
    }

    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v7 = v6;
      v11 = 0;
    }

    v6 = *(v6 + v11);
  }

  while (v6);
  if (v5 == v7)
  {
    goto LABEL_14;
  }

  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CG::CompareEntryStatePattern::operator()(v12, a2, a3))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      goto LABEL_14;
    }

    v15 = *(v7 + 32);
    v17 = *(v7 + 40);
    v16 = v17 == 0;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (CG::CompareEntryStatePattern::operator()(v12, a2, a3))
    {
      goto LABEL_14;
    }

    v15 = *(v7 + 32);
    v16 = 1;
    v17 = 0;
  }

  v18 = *(a3 + 40);
  __s1[0] = *(a3 + 24);
  __s1[1] = v18;
  __s1[2] = *(a3 + 56);
  v26[0] = *(v15 + 8);
  v26[1] = *(v15 + 24);
  v26[2] = *(v15 + 40);
  v19 = memcmp(__s1, v26, 0x30uLL);
  if (v19 < 0)
  {
LABEL_21:
    v20 = 1;
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_25:
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    goto LABEL_26;
  }

  if (v19)
  {
    goto LABEL_24;
  }

  v21 = *(a2 + 120);
  v22 = *(v21 + 24);
  v23 = *(v15 + 56);
  if (v22 < v23)
  {
    goto LABEL_21;
  }

  if (v22 > v23)
  {
    goto LABEL_24;
  }

  v24 = *(v21 + 32);
  v25 = *(v15 + 64);
  if (v24 < v25)
  {
    goto LABEL_21;
  }

  if (v24 > v25)
  {
LABEL_24:
    v20 = 0;
    if (v16)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v20 = *(*(a2 + 144) + 16) < *(v15 + 72);
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v13)
  {
    if (!v20)
    {
      return *(v7 + 32);
    }

LABEL_14:
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  if (v20)
  {
    goto LABEL_14;
  }

  return *(v7 + 32);
}

void sub_183F24A98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStatePattern const>,CG::CompareEntryStatePattern,std::allocator<std::shared_ptr<CG::DisplayListEntryStatePattern const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStatePattern const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
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
    v15 = CG::CompareEntryStatePattern::operator()(v11, v13);
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *a5;
    v21 = a5[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = CG::CompareEntryStatePattern::operator()(v18, v20);
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = CG::CompareEntryStatePattern::operator()(v18, v20);
      if (!v19)
      {
LABEL_19:
        if (!v22)
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
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v24[4];
        v36 = v24[5];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = CG::CompareEntryStatePattern::operator()(v33, v35);
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = CG::CompareEntryStatePattern::operator()(v33, v35);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
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
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = CG::CompareEntryStatePattern::operator()(v11, v13);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *a5;
  v30 = a5[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = CG::CompareEntryStatePattern::operator()(v27, v29);
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = CG::CompareEntryStatePattern::operator()(v27, v29);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStatePattern const>,CG::CompareEntryStatePattern,std::allocator<std::shared_ptr<CG::DisplayListEntryStatePattern const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStatePattern const>>(a1, a3, a5);
}

uint64_t rips_s_BltGlyph(uint64_t a1, _DWORD *a2, uint64_t a3, int *a4, uint64_t *a5, uint64_t a6, int32x2_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = *MEMORY[0x1E69E9840];
  v16 = *(a10 + 48);
  v27[2] = *(a10 + 32);
  v28 = v16;
  v29 = *(a10 + 64);
  v17 = *(a10 + 16);
  v27[0] = *a10;
  v27[1] = v17;
  v18 = *(a1 + 12);
  if ((v18 & 0x20) == 0)
  {
    if ((v18 & 0x1000) == 0)
    {

      return RIPLayerBltGlyph(a2, a3, a4, a5, a6, a7, a8, a10);
    }

    return 1;
  }

  v26[0] = 0;
  v26[1] = 0;
  if (a4)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  v22 = RIPLayerCreate(RIPLayer_ripl_class, v21, 0, 0, a2[13], a6, a7, a8);
  LODWORD(v27[0]) = 2;
  *&v28 = 0x3FF0000000000000;
  RIPLayerBltGlyph(v22, 0, a4, a5, 0, 0, 0, v27);
  rips_s_BltShapeShadow(a1, a2, a3, v22, a6, a7, a10, v23);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (a3 && !CGSBoundsIntersection((a3 + 12), v21, v26) || (*(a1 + 13) & 0x10) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v24 = v26;
  }

  else
  {
    v24 = a4;
  }

  return RIPLayerBltGlyph(a2, a3, v24, a5, a6, a7, a8, a10);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStatePattern *,std::shared_ptr<CG::DisplayListEntryStatePattern const>::__shared_ptr_default_delete<CG::DisplayListEntryStatePattern const,CG::DisplayListEntryStatePattern>,std::allocator<CG::DisplayListEntryStatePattern>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceStyle *,std::shared_ptr<CG::DisplayListResourceStyle>::__shared_ptr_default_delete<CG::DisplayListResourceStyle,CG::DisplayListResourceStyle>,std::allocator<CG::DisplayListResourceStyle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceStyle::~DisplayListResourceStyle(CG::DisplayListResourceStyle *this)
{
  *this = &unk_1EF239B50;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239B50;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t SAMPLEINDEX(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 >> 22;
  v9 = HIWORD(a1) & 0x3F;
  v10 = (a1 >> 8) & 0xF;
  v11 = (a1 >> 4) & 3;
  v12 = (a1 >> 2) & 3;
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        return 0;
      }

      if (v8 == 8 && v9 == 8)
      {
        if (v12 < 2)
        {
          return 2;
        }

        return 0;
      }

      if (v8 != 16)
      {
        if (v8 != 32 || v9 != 32 || v12 > 1)
        {
          return 0;
        }

        v18 = v11 == 2;
        v19 = 20;
        goto LABEL_117;
      }

      if ((a1 & 1) == 0)
      {
        if (v9 == 8)
        {
          if (v12 != 2)
          {
            _CGHandleAssert("SAMPLEINDEX", 126, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/SAMPLEINDEX.c", "alpha == MESHED_ALPHA", "meshed alpha expected here (%u)", a6, a7, a8, v12);
          }

          return 32;
        }

        if (v9 != 16 || v12 > 1)
        {
          return 0;
        }

        v18 = v11 == 2;
        v19 = 12;
LABEL_117:
        if (v18)
        {
          return (v19 + 1);
        }

        else
        {
          return v19;
        }
      }

      if (v9 != 16)
      {
        return 0;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          return 0;
        }

        if (v11 != 2)
        {
          v20 = 111;
          goto LABEL_52;
        }

        return 28;
      }

      if (v11 == 2)
      {
        return 28;
      }

      v20 = 118;
    }

    else
    {
      if (v8 == 8 && (a1 & 0xF000) == 0x1000 && v9 == 8)
      {
        return 1;
      }

      if (v8 != 16 || (a1 & 1) == 0)
      {
        return 0;
      }

      v20 = 191;
    }

LABEL_52:
    _CGHandleAssert("SAMPLEINDEX", v20, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/SAMPLEINDEX.c", "", "Unimplemented", a6, a7, a8, v22);
  }

  if (v10 == 4)
  {
    if (v8 == 32 && v9 == 8)
    {
      if (((a1 >> 4) & 3) > 1)
      {
        if (v11 == 3)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v12 < 2)
        {
          return 11;
        }

        return 0;
      }

      if (v12 < 2)
      {
        return 10;
      }

      return 0;
    }

    if (v8 != 64 || v9 != 16)
    {
      if (v11 == 1 || v8 != 128 || v9 != 32 || v12 > 1)
      {
        return 0;
      }

      v18 = v11 == 2;
      v19 = 26;
      goto LABEL_117;
    }

    if ((a1 & 1) == 0)
    {
      if (v11 == 1 || v12 > 1)
      {
        return 0;
      }

      v18 = v11 == 2;
      v19 = 18;
      goto LABEL_117;
    }

    if (v11 == 2)
    {
      return 31;
    }

    v20 = 166;
    goto LABEL_52;
  }

  if (v10 != 3)
  {
    return 0;
  }

  v14 = a1 >> 6;
  if ((HIWORD(a1) & 0x3F) > 9u)
  {
    if (v9 == 10)
    {
      return 33;
    }

    if (v9 == 16)
    {
      if ((a1 & 1) == 0)
      {
        if (v11 == 1)
        {
          return 0;
        }

        if (v8 != 48 || v12)
        {
          if (v14 != 2 || v8 != 64 || v12 != 2)
          {
            return 0;
          }

          v18 = v11 == 2;
          v19 = 16;
        }

        else
        {
          v18 = v11 == 2;
          v19 = 14;
        }

        goto LABEL_117;
      }

      if (v11)
      {
        if (v8 == 48 && !v12)
        {
          return 29;
        }

        v20 = 79;
        if (v14 == 2 && v8 == 64 && v12 == 2)
        {
          return 30;
        }
      }

      else
      {
        v20 = 72;
      }

      goto LABEL_52;
    }

    goto LABEL_65;
  }

  if (v9 != 5)
  {
    if (v9 == 8)
    {
      if (((a1 >> 4) & 3) > 1)
      {
        if (v11 == 3)
        {
          return 0;
        }
      }

      else if (v11)
      {
        if (v8 != 32 || v12 != 2)
        {
          return 0;
        }

        if (v14 == 2)
        {
          v15 = 7;
        }

        else
        {
          v15 = 0;
        }

        v16 = v14 == 1;
        v17 = 9;
LABEL_104:
        if (v16)
        {
          return v17;
        }

        else
        {
          return v15;
        }
      }

      if (v8 == 24)
      {
        return 5;
      }

      if (v8 != 32 || v12 != 2)
      {
        return 0;
      }

      if (v14 == 2)
      {
        v15 = 6;
      }

      else
      {
        v15 = 0;
      }

      v16 = v14 == 1;
      v17 = 8;
      goto LABEL_104;
    }

LABEL_65:
    if (v9 != 32 || v11 == 1)
    {
      return 0;
    }

    if (v8 != 96 || v12)
    {
      if (v14 != 2 || v8 != 128 || v12 != 2)
      {
        return 0;
      }

      v18 = v11 == 2;
      v19 = 24;
    }

    else
    {
      v18 = v11 == 2;
      v19 = 22;
    }

    goto LABEL_117;
  }

  v13 = 0;
  if (v8 == 16 && v14 == 1)
  {
    if (v11 == 1)
    {
      if (v12 < 2)
      {
        return 4;
      }
    }

    else if (!v11 && v12 < 2)
    {
      return 3;
    }

    return 0;
  }

  return v13;
}

uint64_t CGContextDelegateDrawImage(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 80);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

BOOL CGImageGetShouldInterpolate(CGImageRef image)
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
      LOBYTE(image) = *(v1 + 39) & 1;
    }

    else
    {
      LOBYTE(image) = 0;
    }
  }

  return image;
}

uint64_t CG::DisplayListRecorder::DrawImage(CFArrayRef *a1, uint64_t a2, uint64_t a3, CGImageRef a4, double a5, double a6, double a7, double a8)
{
  v156 = 0;
  v157 = 0;
  v155 = 0;
  v15 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v15)
  {
    goto LABEL_78;
  }

  v16 = a7;
  v17 = a8;
  if (a7 < 0.0 || a8 < 0.0)
  {
    v21 = a6;
    v20 = a5;
    *(&v16 - 2) = CGRectStandardize(*(&v16 - 2));
  }

  else
  {
    v19 = a6;
    v18 = a5;
  }

  v22 = *(a3 + 24);
  v23 = *(a3 + 40);
  v144 = vmlaq_n_f64(vmulq_f64(v23, 0), v22, v16);
  v142 = vmlaq_f64(vmulq_n_f64(v23, v17), 0, v22);
  v146 = vaddq_f64(*(a3 + 56), vmlaq_n_f64(vmulq_n_f64(v23, v19), v22, v18));
  if (v15[73] == 1)
  {
    *&v152.a = v144;
    *&v152.c = v142;
    *&v152.tx = v146;
    v158.origin.x = 0.0;
    v158.origin.y = 0.0;
    v158.size.width = 1.0;
    v158.size.height = 1.0;
    v159 = CGRectApplyAffineTransform(v158, &v152);
    v153.x = v159.origin.x;
    v153.y = v159.origin.y;
    *&v154 = v159.size.width;
    *(&v154 + 1) = *&v159.size.height;
    v11 = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v153.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
    v153.x = v11;
    v153.y = v24;
    *&v154 = v25;
    *(&v154 + 1) = v26;
    if (v11 == INFINITY || v24 == INFINITY)
    {
LABEL_96:
      v28 = 0;
      goto LABEL_97;
    }

    v9 = v25;
    v28 = 0;
    if (v25 == 0.0)
    {
      goto LABEL_97;
    }

    v8 = v26;
    if (v26 == 0.0)
    {
      goto LABEL_97;
    }

    v10 = v24;
  }

  EntryDrawingState = CG::DisplayList::getEntryDrawingState((v15 + 16), a3, a2);
  v30 = EntryDrawingState[1];
  if (!v30)
  {
    goto LABEL_78;
  }

  v31 = *(v30 + 8);
  v32 = EntryDrawingState[2];
  if (v32)
  {
    v31 |= *(v32 + 8);
  }

  v33 = v31 & 0x1000;
  v34 = EntryDrawingState[3];
  if (v34)
  {
    v33 |= *(v34 + 8) & 0x3400;
  }

  if ((v15[73] & 1) == 0 && !CG::DisplayList::getClipRecordingToFrame((v15 + 16)))
  {
    goto LABEL_73;
  }

  if (v15[77] == 1)
  {
    DataProviderInternal = CGImageGetDataProviderInternal(a4, 0);
    if (DataProviderInternal)
    {
      v36 = *(DataProviderInternal + 10);
      if (v36 != getCFDataBytePointer && v36 != data_get_byte_pointer)
      {
        v37 = CGDataProviderCopyData(DataProviderInternal);
        *&v152.a = v37;
        if (v37)
        {
          v38 = CGDataProviderCreateWithCFData(v37);
          v151 = v38;
          if (v38)
          {
            v39 = v38;
            if (a4)
            {
              width = *(a4 + 5);
              heighta = *(a4 + 6);
              bitsPerComponent = *(a4 + 7);
              bitsPerPixel = *(a4 + 8);
              bytesPerRow = *(a4 + 9);
            }

            else
            {
              bitsPerPixel = 0;
              heighta = 0;
              width = 0;
              bitsPerComponent = 0;
              bytesPerRow = 0;
            }

            spacea = CGImageGetColorSpace(a4);
            v40 = CGImageGetBitmapInfo(a4);
            decode = CGImageGetDecode(a4);
            shouldInterpolate = CGImageGetShouldInterpolate(a4);
            intent = CGImageGetRenderingIntent(a4);
            v44 = CGImageCreate(width, heighta, bitsPerComponent, bitsPerPixel, bytesPerRow, spacea, v40, v39, decode, shouldInterpolate, intent);
            v156 = v44;
            v150 = 0;
            applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(&v150);
            CGImageCopyHeadroomFromOriginal(v44, a4, v45, v46, v47, v48, v49, v50);
            v150 = 0;
            if (a4 && *(a4 + 22))
            {
              Mask = CGImageGetMask(a4);
              if (Mask)
              {
                v52 = Mask;
                v53 = CGImageGetDataProviderInternal(Mask, 0);
                if (v53)
                {
                  v54 = *(v53 + 10);
                  if (v54 != getCFDataBytePointer && v54 != data_get_byte_pointer)
                  {
                    v55 = CGDataProviderCopyData(v53);
                    v149 = v55;
                    if (v55)
                    {
                      v148 = CGDataProviderCreateWithCFData(v55);
                      heightc = *(v52 + 5);
                      widthc = *(v52 + 6);
                      bitsPerPixelb = *(v52 + 7);
                      bitsPerComponentb = *(v52 + 8);
                      bytesPerRowb = *(v52 + 9);
                      spaceb = CGImageGetColorSpace(v52);
                      bitmapInfo = CGImageGetBitmapInfo(v52);
                      v56 = CGImageGetDecode(v52);
                      v57 = CGImageGetShouldInterpolate(v52);
                      RenderingIntent = CGImageGetRenderingIntent(v52);
                      v59 = CGImageCreate(heightc, widthc, bitsPerPixelb, bitsPerComponentb, bytesPerRowb, spaceb, bitmapInfo, v148, v56, v57, RenderingIntent);
                      v60 = v150;
                      v150 = v59;
                      v147 = v60;
                      applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(&v147);
                      applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(&v148);
                    }

                    applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&v149);
                  }
                }
              }

              if (v150)
              {
                v44 = CGImageCreateWithMaskAndMatte(v44, v150, 0);
                v155 = v44;
                v149 = 0;
                applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(&v149);
              }
            }

            if (v44)
            {
              a4 = v44;
            }

            applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(&v150);
          }

          applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(&v151);
        }

        applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&v152);
      }
    }
  }

  if (!CG::DisplayList::getClipRecordingToFrame((v15 + 16)))
  {
    goto LABEL_73;
  }

  if (a4)
  {
    v61 = vcvtq_f64_u64(*(a4 + 40));
  }

  else
  {
    v61 = 0uLL;
  }

  heightb = v61;
  v166.origin.x = v11;
  v166.origin.y = v10;
  v166.size.width = v9;
  v166.size.height = v8;
  v160 = CGRectIntersection(*(v15 + 40), v166);
  x = v160.origin.x;
  v28 = 0;
  if (v160.origin.x != INFINITY)
  {
    v70 = heightb;
    if (v160.origin.y != INFINITY)
    {
      v28 = 0;
      if (v160.size.width != 0.0 && v160.size.height != 0.0)
      {
        y = v160.origin.y;
        bitsPerComponenta = v160.origin;
        v72 = vdivq_f64(v144, vdupq_lane_s64(heightb.i64[0], 0));
        v73 = vdivq_f64(v142, vdupq_laneq_s64(heightb, 1));
        v74 = vmulq_f64(v72, vextq_s8(v73, v73, 8uLL));
        v75 = vsubq_f64(v74, vextq_s8(v74, v74, 8uLL));
        widtha = v160.size.width;
        space = v160.size.height;
        if (v75.f64[0] == 0.0)
        {
          bitsPerPixelc = x;
          *bytesPerRowc = v73;
          *bitmapInfoa = v72;
          CGPostError("%s: singular matrix.", v62, v63, v64, v65, v66, v67, v68, "AffineTransformInvert");
          v76 = *bitmapInfoa;
          v160.size.height = space;
          v77 = *bytesPerRowc;
          x = bitsPerPixelc;
          v160.size.width = widtha;
          v70 = heightb;
          v78 = v146;
        }

        else
        {
          v79 = vzip2q_s64(v73, v72);
          v80 = vzip1q_s64(v73, v72);
          v76 = vdivq_f64(v79, v75);
          v77 = vdivq_f64(v80, vextq_s8(v75, v75, 8uLL));
          v78 = vmlsq_lane_f64(vmulq_n_f64(v77, -v146.f64[1]), v76, v146.f64[0], 0);
        }

        v81 = vaddq_f64(v78, vmlaq_n_f64(vmulq_laneq_f64(v77, bitsPerComponenta, 1), v76, x));
        v82 = vmulq_n_f64(v76, v160.size.width);
        v83 = vmulq_n_f64(v77, v160.size.height);
        v84 = vaddq_f64(v82, v83);
        v85 = vmaxnmq_f64(vminnmq_f64(vminnmq_f64(vminnmq_f64(v82, 0), v83), v84), vnegq_f64(v81));
        v86 = vaddq_f64(v81, v85);
        v87 = v86.f64[1];
        v88 = vmaxnmq_f64(vminnmq_f64(vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(vmaxnmq_f64(v82, 0), v83), v84), v85), vsubq_f64(v70, v86)), 0);
        v89 = v88.f64[1];
        v82.f64[0] = fmin(v88.f64[0], v88.f64[1]);
        v90 = v82.f64[0] < 0.0;
        v91 = v70.f64[1];
        bytesPerRowa = v86.f64[0];
        bitsPerPixela = v88.f64[0];
        if (v82.f64[0] >= 0.0)
        {
          v94 = v88.f64[1];
          if (v88.f64[0] < v70.f64[0])
          {
            goto LABEL_66;
          }
        }

        else
        {
          v92 = v86.f64[1];
          v93 = v88.f64[1];
          v161 = CGRectStandardize(*v86.f64);
          if (v161.size.width < *heightb.i64)
          {
            v86.f64[0] = bytesPerRowa;
            v88.f64[0] = bitsPerPixela;
            goto LABEL_64;
          }

          v162.origin.x = bytesPerRowa;
          v162.origin.y = v87;
          v162.size.width = bitsPerPixela;
          v162.size.height = v89;
          *v86.f64 = CGRectStandardize(v162);
          v86.f64[0] = bytesPerRowa;
          v88.f64[0] = bitsPerPixela;
        }

        if (v94 >= v91)
        {
          goto LABEL_73;
        }

LABEL_64:
        if (v90)
        {
          v95 = v87;
          v96 = bitsPerPixela;
          v97 = v89;
          *v86.f64 = CGRectStandardize(*v86.f64);
          v88.f64[0] = bitsPerPixela;
          v86.f64[0] = bytesPerRowa;
          goto LABEL_67;
        }

LABEL_66:
        v163.origin.y = v87;
        v163.size.height = v89;
LABEL_67:
        v98 = v91 - (v163.origin.y + v163.size.height);
        v99 = v89;
        v100 = CGImageCreateWithImageInRect(a4, *v86.f64);
        v101 = v157;
        v157 = v100;
        if (v101)
        {
          CFRelease(v101);
        }

        if (v100)
        {
          v103 = bitsPerPixela;
          *&v102 = widtha;
          *(&v102 + 1) = space;
          *widthb = v102;
          *&v102 = bytesPerRowa;
          v104 = v87;
          v105 = v89;
          v164 = CGRectIntegral(*(&v103 - 2));
          v106 = v164.origin.x;
          v107 = v164.origin.y;
          v108 = v164.size.width;
          v109 = v164.size.height;
          if (v164.size.width < 0.0 || v164.size.height < 0.0)
          {
            CGRectStandardize(v164);
            v165.origin.x = v106;
            v165.origin.y = v107;
            v165.size.width = v108;
            v165.size.height = v109;
            CGRectStandardize(v165);
          }

          v153 = bitsPerComponenta;
          v154 = *widthb;
LABEL_74:
          v110 = CG::DisplayList::imageResourceForImage((v15 + 16), v100);
          v111 = v110;
          if (v110)
          {
            if ((*(v110 + 48) & 0x20) != 0)
            {
              FillColor = CGGStateGetFillColor(a3);
              v114 = CG::DisplayList::colorResourceForColor((v15 + 16), FillColor);
              v112 = v114;
              if (v114)
              {
                v115 = v33 | *(v114 + 8) & 0x3400;
                if (*(*(a3 + 120) + 8) >= 1.0)
                {
                  LOWORD(v33) = v115 | 0x100;
                }

                else
                {
                  LOWORD(v33) = v115 | 0x1100;
                }
              }
            }

            else
            {
              v112 = 0;
              if (*(*(a3 + 120) + 8) >= 1.0)
              {
                v33 |= *(v110 + 8) & 0x1000;
              }

              else
              {
                LOWORD(v33) = v33 | 0x1000;
              }
            }

            if ((v33 & 0x1000) == 0 && (((*(*(a3 + 120) + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
            {
              LOWORD(v33) = v33 | 0x1000;
            }

            if ((v33 & 0x3000) != 0)
            {
              *(v15 + 20) |= v33 & 0x3000;
            }

            if (v15[74] == 1)
            {
              if ((v33 & 0x400) != 0)
              {
                CG::DisplayList::getEntryPatternState((v15 + 16), a3, a2);
              }

              if ((v33 & 0x100) != 0 && (*(v111 + 48) & 0x20) != 0)
              {
                CG::DisplayList::getEntryFillState((v15 + 16), v112);
              }

              operator new();
            }

            goto LABEL_96;
          }

LABEL_78:
          v28 = 1000;
          goto LABEL_97;
        }

LABEL_73:
        v100 = a4;
        goto LABEL_74;
      }
    }
  }

LABEL_97:
  if (v155)
  {
    CFRelease(v155);
  }

  if (v156)
  {
    CFRelease(v156);
  }

  if (v157)
  {
    CFRelease(v157);
  }

  return v28;
}

void sub_183F25EC8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<CGImage *>::~ObjectRef((v1 - 160));
  applesauce::CF::ObjectRef<CGImage *>::~ObjectRef((v1 - 152));
  applesauce::CF::ObjectRef<CGImage *>::~ObjectRef((v1 - 144));
  _Unwind_Resume(a1);
}

uint64_t dlRecorder_DrawImage(uint64_t a1, uint64_t a2, uint64_t a3, CGImage *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (a1 && (v13 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawImage(v13, a2, a3, a4, a9, a10, a11, a12);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawImage");
    return 1000;
  }
}

uint64_t CG::DisplayList::imageResourceForImage(CG::DisplayList *this, CGImage *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 93);
  v3 = this + 352;
  v4 = *(this + 44);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 352;
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

BOOL CG::DisplayList::getClipRecordingToFrame(CG::DisplayList *this)
{
  if (*(this + 56) != 1)
  {
    return 0;
  }

  return *(this + 3) != -8.98846567e307 || *(this + 4) != -8.98846567e307 || *(this + 5) != 1.79769313e308 || *(this + 6) != 1.79769313e308;
}

void sub_183F26334(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void CGGStateSetImageRenderingIntent(uint64_t a1, int a2)
{
  if (a2 != (*(*(a1 + 120) + 4) << 8) >> 28)
  {
    v2 = a2;
    maybeCopyRenderingState(a1);
    *(*(a1 + 120) + 4) = *(*(a1 + 120) + 4) & 0xFF0FFFFF | ((v2 & 0xF) << 20);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceImage *,std::shared_ptr<CG::DisplayListResourceImage>::__shared_ptr_default_delete<CG::DisplayListResourceImage,CG::DisplayListResourceImage>,std::allocator<CG::DisplayListResourceImage>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceImage::~DisplayListResourceImage(CG::DisplayListResourceImage *this)
{
  *this = &unk_1EF239AC0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239AC0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

unsigned int *CG::DisplayListEntryImage::_hash(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      __src = *(v5 + 24);
      XXH64_update(a2, &__src, 4uLL);
    }
  }

  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 4uLL);
  XXH64_update(a2, (a1 + 148), 4uLL);

  return CG::DisplayListEntry::_hash(a1, a2);
}

unint64_t CGSFillDRAM64(unint64_t result, int a2, unsigned int a3, int a4, uint64_t a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a3 >= 1 && a4 >= 1)
  {
    v10 = a10;
    v11 = a7 - 1;
    if (a10 < 0)
    {
      v10 = a10 % a8 + a8;
    }

    if (v10 > a8)
    {
      v10 %= a8;
    }

    v12 = v11 & a9;
    v13 = a2 - a3;
    if (a3 < 0x40 || (a7 & 3) != 0)
    {
      v93 = a7 | a3;
      do
      {
        v94 = a5 + v10 * a6;
        if ((((result | v93) | (v94 + v12)) & 3) != 0)
        {
          if (((result | v93) | (v94 + v12)))
          {
            v99 = a3;
            v100 = v11 & a9;
            do
            {
              v101 = *(v94 + v100);
              v100 = (v100 + 1) & v11;
              *result++ = v101;
              --v99;
            }

            while (v99);
          }

          else if (a3 >= 2)
          {
            v95 = a3 >> 1;
            v96 = v11 & a9;
            do
            {
              v97 = *(v94 + v96);
              v96 = (v96 + 2) & v11;
              *result = v97;
              result += 2;
              --v95;
            }

            while (v95);
          }
        }

        else
        {
          if (a3 >= 0x10)
          {
            v102 = a3 >> 4;
            v98 = v11 & a9;
            do
            {
              v103 = *(v94 + v98);
              v104 = (v98 + 4) & v11;
              v105 = *(v94 + v104);
              v106 = (v104 + 4) & v11;
              *result = v103;
              *(result + 4) = v105;
              v107 = *(v94 + v106);
              v108 = (v106 + 4) & v11;
              v109 = *(v94 + v108);
              v98 = (v108 + 4) & v11;
              *(result + 8) = v107;
              *(result + 12) = v109;
              result += 16;
              --v102;
            }

            while (v102);
          }

          else
          {
            v98 = v11 & a9;
          }

          if (((a3 >> 2) & 3) != 0)
          {
            v110 = (a3 >> 2) & 3;
            do
            {
              v111 = *(v94 + v98);
              v98 = (v98 + 4) & v11;
              *result = v111;
              result += 4;
              --v110;
            }

            while (v110);
          }
        }

        v112 = v10 + 1;
        result += v13;
        if (v112 >= a8)
        {
          v113 = a8;
        }

        else
        {
          v113 = 0;
        }

        v10 = v112 - v113;
        v92 = __OFSUB__(a4--, 1);
      }

      while (!((a4 < 0) ^ v92 | (a4 == 0)));
    }

    else
    {
      v14 = a3;
      v15 = v11;
      v115 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v116 = v12;
      v114 = a3 + 64;
      do
      {
        v16 = a5 + v10 * a6;
        v17 = v115 & (v116 - result);
        v18 = *(v16 + v17);
        v19 = *(v16 + ((v17 + 4) & v15));
        v20 = *(v16 + ((v17 + 8) & v15));
        v21 = *(v16 + ((v17 + 12) & v15));
        v22 = *(v16 + ((v17 + 16) & v15));
        v23 = *(v16 + ((v17 + 20) & v15));
        v24 = *(v16 + ((v17 + 24) & v15));
        v25 = *(v16 + ((v17 + 28) & v15));
        v26 = *(v16 + ((v17 + 32) & v15));
        v27 = *(v16 + ((v17 + 36) & v15));
        v28 = *(v16 + ((v17 + 40) & v15));
        v29 = *(v16 + ((v17 + 44) & v15));
        v30 = *(v16 + ((v17 + 48) & v15));
        v31 = *(v16 + ((v17 + 52) & v15));
        v32 = *(v16 + ((v17 + 56) & v15));
        v33 = *(v16 + ((v17 + 60) & v15));
        v34 = (v116 - result) & 3;
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            HIDWORD(v53) = v30;
            LODWORD(v53) = v30;
            v52 = v53 >> 16;
            HIDWORD(v53) = v31;
            LODWORD(v53) = v31;
            v54 = v53 >> 16;
            HIDWORD(v53) = v32;
            LODWORD(v53) = v32;
            v55 = v53 >> 16;
            HIDWORD(v53) = v33;
            LODWORD(v53) = v33;
            v56 = v53 >> 16;
            HIDWORD(v53) = v18;
            LODWORD(v53) = v18;
            v57 = v53 >> 16;
            HIDWORD(v53) = v19;
            LODWORD(v53) = v19;
            v58 = v53 >> 16;
            HIDWORD(v53) = v20;
            LODWORD(v53) = v20;
            v59 = v53 >> 16;
            HIDWORD(v53) = v21;
            LODWORD(v53) = v21;
            v60 = v53 >> 16;
            HIDWORD(v53) = v22;
            LODWORD(v53) = v22;
            v61 = v53 >> 16;
            HIDWORD(v53) = v23;
            LODWORD(v53) = v23;
            v62 = v53 >> 16;
            HIDWORD(v53) = v24;
            LODWORD(v53) = v24;
            v63 = v53 >> 16;
            HIDWORD(v53) = v25;
            LODWORD(v53) = v25;
            v64 = v53 >> 16;
            HIDWORD(v53) = v26;
            LODWORD(v53) = v26;
            v65 = v53 >> 16;
            HIDWORD(v53) = v27;
            LODWORD(v53) = v27;
            v66 = v53 >> 16;
            HIDWORD(v53) = v28;
            LODWORD(v53) = v28;
            v67 = v53 >> 16;
            HIDWORD(v53) = v29;
            LODWORD(v53) = v29;
            v29 = v52 & 0xFFFF8000 | HIWORD(v29) & 0x7FFF;
            v28 = (v53 >> 16) & 0xFFFF8000 | v67 & 0x7FFF;
            v27 = v67 & 0xFFFF8000 | v66 & 0x7FFF;
            v26 = v66 & 0xFFFF8000 | v65 & 0x7FFF;
            v25 = v65 & 0xFFFF8000 | v64 & 0x7FFF;
            v24 = v64 & 0xFFFF8000 | v63 & 0x7FFF;
            v23 = v63 & 0xFFFF8000 | v62 & 0x7FFF;
            v22 = v62 & 0xFFFF8000 | v61 & 0x7FFF;
            v21 = v61 & 0xFFFF8000 | v60 & 0x7FFF;
            v20 = v60 & 0xFFFF8000 | v59 & 0x7FFF;
            v19 = v59 & 0xFFFF8000 | v58 & 0x7FFF;
            v18 = v58 & 0xFFFF8000 | v57 & 0x7FFF;
            v33 = v57 & 0xFFFF8000 | v56 & 0x7FFF;
            v32 = v56 & 0xFFFF8000 | v55 & 0x7FFF;
            v31 = v55 & 0xFFFF8000 | v54 & 0x7FFF;
            v30 = v54 & 0xFFFF8000 | v52 & 0x7FFF;
          }

          else
          {
            HIDWORD(v69) = v30;
            LODWORD(v69) = v30;
            v68 = v69 >> 24;
            HIDWORD(v69) = v31;
            LODWORD(v69) = v31;
            v70 = v69 >> 24;
            HIDWORD(v69) = v32;
            LODWORD(v69) = v32;
            v71 = v69 >> 24;
            HIDWORD(v69) = v33;
            LODWORD(v69) = v33;
            v72 = v69 >> 24;
            HIDWORD(v69) = v18;
            LODWORD(v69) = v18;
            v73 = v69 >> 24;
            HIDWORD(v69) = v19;
            LODWORD(v69) = v19;
            v74 = v69 >> 24;
            HIDWORD(v69) = v20;
            LODWORD(v69) = v20;
            v75 = v69 >> 24;
            HIDWORD(v69) = v21;
            LODWORD(v69) = v21;
            v76 = v69 >> 24;
            HIDWORD(v69) = v22;
            LODWORD(v69) = v22;
            v77 = v69 >> 24;
            HIDWORD(v69) = v23;
            LODWORD(v69) = v23;
            v78 = v69 >> 24;
            HIDWORD(v69) = v24;
            LODWORD(v69) = v24;
            v79 = v69 >> 24;
            HIDWORD(v69) = v25;
            LODWORD(v69) = v25;
            v80 = v69 >> 24;
            HIDWORD(v69) = v26;
            LODWORD(v69) = v26;
            v81 = v69 >> 24;
            HIDWORD(v69) = v27;
            LODWORD(v69) = v27;
            v82 = v69 >> 24;
            HIDWORD(v69) = v28;
            LODWORD(v69) = v28;
            v83 = v69 >> 24;
            HIDWORD(v69) = v29;
            LODWORD(v69) = v29;
            v29 = v68 & 0xFFFFFF80 | HIBYTE(v29) & 0x7F;
            v28 = (v69 >> 24) & 0xFFFFFF80 | v83 & 0x7F;
            v27 = v83 & 0xFFFFFF80 | v82 & 0x7F;
            v26 = v82 & 0xFFFFFF80 | v81 & 0x7F;
            v25 = v81 & 0xFFFFFF80 | v80 & 0x7F;
            v24 = v80 & 0xFFFFFF80 | v79 & 0x7F;
            v23 = v79 & 0xFFFFFF80 | v78 & 0x7F;
            v22 = v78 & 0xFFFFFF80 | v77 & 0x7F;
            v21 = v77 & 0xFFFFFF80 | v76 & 0x7F;
            v20 = v76 & 0xFFFFFF80 | v75 & 0x7F;
            v19 = v75 & 0xFFFFFF80 | v74 & 0x7F;
            v18 = v74 & 0xFFFFFF80 | v73 & 0x7F;
            v33 = v73 & 0xFFFFFF80 | v72 & 0x7F;
            v32 = v72 & 0xFFFFFF80 | v71 & 0x7F;
            v31 = v71 & 0xFFFFFF80 | v70 & 0x7F;
            v30 = v70 & 0xFFFFFF80 | v68 & 0x7F;
          }
        }

        else if (v34)
        {
          HIDWORD(v36) = v30;
          LODWORD(v36) = v30;
          v35 = v36 >> 8;
          HIDWORD(v36) = v31;
          LODWORD(v36) = v31;
          v37 = v36 >> 8;
          HIDWORD(v36) = v32;
          LODWORD(v36) = v32;
          v38 = v36 >> 8;
          HIDWORD(v36) = v33;
          LODWORD(v36) = v33;
          v39 = v36 >> 8;
          HIDWORD(v36) = v18;
          LODWORD(v36) = v18;
          v40 = v36 >> 8;
          HIDWORD(v36) = v19;
          LODWORD(v36) = v19;
          v41 = v36 >> 8;
          HIDWORD(v36) = v20;
          LODWORD(v36) = v20;
          v42 = v36 >> 8;
          HIDWORD(v36) = v21;
          LODWORD(v36) = v21;
          v43 = v36 >> 8;
          HIDWORD(v36) = v22;
          LODWORD(v36) = v22;
          v44 = v36 >> 8;
          HIDWORD(v36) = v23;
          LODWORD(v36) = v23;
          v45 = v36 >> 8;
          HIDWORD(v36) = v24;
          LODWORD(v36) = v24;
          v46 = v36 >> 8;
          HIDWORD(v36) = v25;
          LODWORD(v36) = v25;
          v47 = v36 >> 8;
          HIDWORD(v36) = v26;
          LODWORD(v36) = v26;
          v48 = v36 >> 8;
          HIDWORD(v36) = v27;
          LODWORD(v36) = v27;
          v49 = v36 >> 8;
          HIDWORD(v36) = v28;
          LODWORD(v36) = v28;
          v50 = v36 >> 8;
          HIDWORD(v36) = v29;
          LODWORD(v36) = v29;
          v51 = v36 >> 8;
          v29 = v35 & 0xFF800000 | v51 & 0x7FFFFF;
          v28 = v51 & 0xFF800000 | v50 & 0x7FFFFF;
          v27 = v50 & 0xFF800000 | v49 & 0x7FFFFF;
          v26 = v49 & 0xFF800000 | v48 & 0x7FFFFF;
          v25 = v48 & 0xFF800000 | v47 & 0x7FFFFF;
          v24 = v47 & 0xFF800000 | v46 & 0x7FFFFF;
          v23 = v46 & 0xFF800000 | v45 & 0x7FFFFF;
          v22 = v45 & 0xFF800000 | v44 & 0x7FFFFF;
          v21 = v44 & 0xFF800000 | v43 & 0x7FFFFF;
          v20 = v43 & 0xFF800000 | v42 & 0x7FFFFF;
          v19 = v42 & 0xFF800000 | v41 & 0x7FFFFF;
          v18 = v41 & 0xFF800000 | v40 & 0x7FFFFF;
          v33 = v40 & 0xFF800000 | v39 & 0x7FFFFF;
          v32 = v39 & 0xFF800000 | v38 & 0x7FFFFF;
          v31 = v38 & 0xFF800000 | v37 & 0x7FFFFF;
          v30 = v37 & 0xFF800000 | v35 & 0x7FFFFF;
        }

        v84 = (result & 0xFFFFFFFFFFFFFFC0);
        switch(result & 0x3F)
        {
          case 1uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 1) = BYTE2(v18);
            goto LABEL_33;
          case 2uLL:
LABEL_33:
            *((result & 0xFFFFFFFFFFFFFFC0) + 2) = v18;
            goto LABEL_46;
          case 3uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 3) = v18;
            goto LABEL_46;
          case 4uLL:
LABEL_46:
            *((result & 0xFFFFFFFFFFFFFFC0) + 4) = v19;
            *((result & 0xFFFFFFFFFFFFFFC0) + 8) = v20;
            goto LABEL_47;
          case 5uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 5) = BYTE2(v19);
            goto LABEL_44;
          case 6uLL:
LABEL_44:
            *((result & 0xFFFFFFFFFFFFFFC0) + 6) = v19;
            goto LABEL_61;
          case 7uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 7) = v19;
            goto LABEL_61;
          case 8uLL:
LABEL_61:
            *((result & 0xFFFFFFFFFFFFFFC0) + 8) = v20;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xC) = v21;
            goto LABEL_62;
          case 9uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 9) = BYTE2(v20);
            goto LABEL_42;
          case 0xAuLL:
LABEL_42:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xA) = v20;
            goto LABEL_47;
          case 0xBuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xB) = v20;
            goto LABEL_47;
          case 0xCuLL:
LABEL_47:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xC) = v21;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x10) = v22;
            goto LABEL_48;
          case 0xDuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xD) = BYTE2(v21);
            goto LABEL_36;
          case 0xEuLL:
LABEL_36:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xE) = v21;
            goto LABEL_62;
          case 0xFuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0xF) = v21;
            goto LABEL_62;
          case 0x10uLL:
LABEL_62:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x10) = v22;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x14) = v23;
            goto LABEL_63;
          case 0x11uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x11) = BYTE2(v22);
            goto LABEL_23;
          case 0x12uLL:
LABEL_23:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x12) = v22;
            goto LABEL_48;
          case 0x13uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x13) = v22;
            goto LABEL_48;
          case 0x14uLL:
LABEL_48:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x14) = v23;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x18) = v24;
            goto LABEL_49;
          case 0x15uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x15) = BYTE2(v23);
            goto LABEL_54;
          case 0x16uLL:
LABEL_54:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x16) = v23;
            goto LABEL_63;
          case 0x17uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x17) = v23;
            goto LABEL_63;
          case 0x18uLL:
LABEL_63:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x18) = v24;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1C) = v25;
            goto LABEL_64;
          case 0x19uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x19) = BYTE2(v24);
            goto LABEL_26;
          case 0x1AuLL:
LABEL_26:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1A) = v24;
            goto LABEL_49;
          case 0x1BuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1B) = v24;
            goto LABEL_49;
          case 0x1CuLL:
LABEL_49:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1C) = v25;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x20) = v26;
            goto LABEL_50;
          case 0x1DuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1D) = BYTE2(v25);
            goto LABEL_21;
          case 0x1EuLL:
LABEL_21:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1E) = v25;
            goto LABEL_64;
          case 0x1FuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x1F) = v25;
            goto LABEL_64;
          case 0x20uLL:
LABEL_64:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x20) = v26;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x24) = v27;
            goto LABEL_65;
          case 0x21uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x21) = BYTE2(v26);
            goto LABEL_59;
          case 0x22uLL:
LABEL_59:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x22) = v26;
            goto LABEL_50;
          case 0x23uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x23) = v26;
            goto LABEL_50;
          case 0x24uLL:
LABEL_50:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x24) = v27;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x28) = v28;
            goto LABEL_51;
          case 0x25uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x25) = BYTE2(v27);
            goto LABEL_71;
          case 0x26uLL:
LABEL_71:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x26) = v27;
            goto LABEL_65;
          case 0x27uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x27) = v27;
            goto LABEL_65;
          case 0x28uLL:
LABEL_65:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x28) = v28;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2C) = v29;
            goto LABEL_66;
          case 0x29uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x29) = BYTE2(v28);
            goto LABEL_56;
          case 0x2AuLL:
LABEL_56:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2A) = v28;
            goto LABEL_51;
          case 0x2BuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2B) = v28;
            goto LABEL_51;
          case 0x2CuLL:
LABEL_51:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2C) = v29;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x30) = v30;
            goto LABEL_52;
          case 0x2DuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2D) = BYTE2(v29);
            goto LABEL_28;
          case 0x2EuLL:
LABEL_28:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2E) = v29;
            goto LABEL_66;
          case 0x2FuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x2F) = v29;
            goto LABEL_66;
          case 0x30uLL:
LABEL_66:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x30) = v30;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x34) = v31;
            goto LABEL_67;
          case 0x31uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x31) = BYTE2(v30);
            goto LABEL_147;
          case 0x32uLL:
LABEL_147:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x32) = v30;
            goto LABEL_52;
          case 0x33uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x33) = v30;
            goto LABEL_52;
          case 0x34uLL:
LABEL_52:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x34) = v31;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x38) = v32;
            v85 = v14;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3C) = v33;
            break;
          case 0x35uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x35) = BYTE2(v31);
            goto LABEL_140;
          case 0x36uLL:
LABEL_140:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x36) = v31;
LABEL_67:
            v85 = v14;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x38) = v32;
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3C) = v33;
            break;
          case 0x37uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x37) = v31;
            goto LABEL_69;
          case 0x38uLL:
LABEL_69:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x38) = v32;
            goto LABEL_74;
          case 0x39uLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x39) = BYTE2(v32);
            goto LABEL_73;
          case 0x3AuLL:
LABEL_73:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3A) = v32;
            goto LABEL_74;
          case 0x3BuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3B) = v32;
            goto LABEL_74;
          case 0x3CuLL:
LABEL_74:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3C) = v33;
            goto LABEL_75;
          case 0x3DuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3D) = BYTE2(v33);
            goto LABEL_40;
          case 0x3EuLL:
LABEL_40:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3E) = v33;
            goto LABEL_75;
          case 0x3FuLL:
            *((result & 0xFFFFFFFFFFFFFFC0) + 0x3F) = v33;
LABEL_75:
            v85 = v14;
            break;
          default:
            v84 -= 16;
            v85 = v114;
            break;
        }

        v86 = v85 + (result | 0xFFFFFFFFFFFFFFC0);
        v87 = v84 + 16;
        if (v86 >= 0x40)
        {
          v88 = v86 >> 6;
          do
          {
            *v87 = v18;
            v87[1] = v19;
            v87[2] = v20;
            v87[3] = v21;
            v87[4] = v22;
            v87[5] = v23;
            v87[6] = v24;
            v87[7] = v25;
            v87[8] = v26;
            v87[9] = v27;
            v87[10] = v28;
            v87[11] = v29;
            v87[12] = v30;
            v87[13] = v31;
            v87[14] = v32;
            v87[15] = v33;
            v87 += 16;
            --v88;
          }

          while (v88);
          v84 = v87 - 16;
        }

        v89 = v86 & 0x3F;
        switch(v89)
        {
          case 1uLL:
            *v87 = HIBYTE(v18);
            break;
          case 2uLL:
            goto LABEL_106;
          case 3uLL:
            *(v84 + 66) = BYTE1(v18);
LABEL_106:
            *v87 = HIWORD(v18);
            break;
          case 4uLL:
            goto LABEL_117;
          case 5uLL:
            *(v84 + 68) = HIBYTE(v19);
            goto LABEL_117;
          case 6uLL:
            goto LABEL_108;
          case 7uLL:
            *(v84 + 70) = BYTE1(v19);
LABEL_108:
            *(v84 + 34) = HIWORD(v19);
LABEL_117:
            *v87 = v18;
            break;
          case 8uLL:
            goto LABEL_98;
          case 9uLL:
            *(v84 + 72) = HIBYTE(v20);
            goto LABEL_98;
          case 0xAuLL:
            goto LABEL_95;
          case 0xBuLL:
            *(v84 + 74) = BYTE1(v20);
LABEL_95:
            *(v84 + 36) = HIWORD(v20);
LABEL_98:
            *v87 = v18;
            v84[17] = v19;
            break;
          case 0xCuLL:
            goto LABEL_120;
          case 0xDuLL:
            *(v84 + 76) = HIBYTE(v21);
            goto LABEL_120;
          case 0xEuLL:
            goto LABEL_102;
          case 0xFuLL:
            *(v84 + 78) = BYTE1(v21);
LABEL_102:
            *(v84 + 38) = HIWORD(v21);
LABEL_120:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            break;
          case 0x10uLL:
            goto LABEL_128;
          case 0x11uLL:
            *(v84 + 80) = HIBYTE(v22);
            goto LABEL_128;
          case 0x12uLL:
            goto LABEL_127;
          case 0x13uLL:
            *(v84 + 82) = BYTE1(v22);
LABEL_127:
            *(v84 + 40) = HIWORD(v22);
LABEL_128:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            break;
          case 0x14uLL:
            goto LABEL_135;
          case 0x15uLL:
            *(v84 + 84) = HIBYTE(v23);
            goto LABEL_135;
          case 0x16uLL:
            goto LABEL_134;
          case 0x17uLL:
            *(v84 + 86) = BYTE1(v23);
LABEL_134:
            *(v84 + 42) = HIWORD(v23);
LABEL_135:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            break;
          case 0x18uLL:
            goto LABEL_100;
          case 0x19uLL:
            *(v84 + 88) = HIBYTE(v24);
            goto LABEL_100;
          case 0x1AuLL:
            goto LABEL_91;
          case 0x1BuLL:
            *(v84 + 90) = BYTE1(v24);
LABEL_91:
            *(v84 + 44) = HIWORD(v24);
LABEL_100:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            break;
          case 0x1CuLL:
            goto LABEL_138;
          case 0x1DuLL:
            *(v84 + 92) = HIBYTE(v25);
            goto LABEL_138;
          case 0x1EuLL:
            goto LABEL_110;
          case 0x1FuLL:
            *(v84 + 94) = BYTE1(v25);
LABEL_110:
            *(v84 + 46) = HIWORD(v25);
LABEL_138:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            break;
          case 0x20uLL:
            goto LABEL_93;
          case 0x21uLL:
            *(v84 + 96) = HIBYTE(v26);
            goto LABEL_93;
          case 0x22uLL:
            goto LABEL_89;
          case 0x23uLL:
            *(v84 + 98) = BYTE1(v26);
LABEL_89:
            *(v84 + 48) = HIWORD(v26);
LABEL_93:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            break;
          case 0x24uLL:
            goto LABEL_125;
          case 0x25uLL:
            *(v84 + 100) = HIBYTE(v27);
            goto LABEL_125;
          case 0x26uLL:
            goto LABEL_124;
          case 0x27uLL:
            *(v84 + 102) = BYTE1(v27);
LABEL_124:
            *(v84 + 50) = HIWORD(v27);
LABEL_125:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            break;
          case 0x28uLL:
            goto LABEL_113;
          case 0x29uLL:
            *(v84 + 104) = HIBYTE(v28);
            goto LABEL_113;
          case 0x2AuLL:
            goto LABEL_83;
          case 0x2BuLL:
            *(v84 + 106) = BYTE1(v28);
LABEL_83:
            *(v84 + 52) = HIWORD(v28);
LABEL_113:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            break;
          case 0x2CuLL:
            goto LABEL_122;
          case 0x2DuLL:
            *(v84 + 108) = HIBYTE(v29);
            goto LABEL_122;
          case 0x2EuLL:
            goto LABEL_87;
          case 0x2FuLL:
            *(v84 + 110) = BYTE1(v29);
LABEL_87:
            *(v84 + 54) = HIWORD(v29);
LABEL_122:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            v84[26] = v28;
            break;
          case 0x30uLL:
            goto LABEL_150;
          case 0x31uLL:
            *(v84 + 112) = HIBYTE(v30);
            goto LABEL_150;
          case 0x32uLL:
            goto LABEL_149;
          case 0x33uLL:
            *(v84 + 114) = BYTE1(v30);
LABEL_149:
            *(v84 + 56) = HIWORD(v30);
LABEL_150:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            v84[26] = v28;
            v84[27] = v29;
            break;
          case 0x34uLL:
            goto LABEL_143;
          case 0x35uLL:
            *(v84 + 116) = HIBYTE(v31);
            goto LABEL_143;
          case 0x36uLL:
            goto LABEL_142;
          case 0x37uLL:
            *(v84 + 118) = BYTE1(v31);
LABEL_142:
            *(v84 + 58) = HIWORD(v31);
LABEL_143:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            v84[26] = v28;
            v84[27] = v29;
            v84[28] = v30;
            break;
          case 0x38uLL:
            goto LABEL_132;
          case 0x39uLL:
            *(v84 + 120) = HIBYTE(v32);
            goto LABEL_132;
          case 0x3AuLL:
            goto LABEL_131;
          case 0x3BuLL:
            *(v84 + 122) = BYTE1(v32);
LABEL_131:
            *(v84 + 60) = HIWORD(v32);
LABEL_132:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            v84[26] = v28;
            v84[27] = v29;
            v84[28] = v30;
            v84[29] = v31;
            break;
          case 0x3CuLL:
            goto LABEL_115;
          case 0x3DuLL:
            *(v84 + 124) = HIBYTE(v33);
            goto LABEL_115;
          case 0x3EuLL:
            goto LABEL_104;
          case 0x3FuLL:
            *(v84 + 126) = BYTE1(v33);
LABEL_104:
            *(v84 + 62) = HIWORD(v33);
LABEL_115:
            *v87 = v18;
            v84[17] = v19;
            v84[18] = v20;
            v84[19] = v21;
            v84[20] = v22;
            v84[21] = v23;
            v84[22] = v24;
            v84[23] = v25;
            v84[24] = v26;
            v84[25] = v27;
            v84[26] = v28;
            v84[27] = v29;
            v84[28] = v30;
            v84[29] = v31;
            v84[30] = v32;
            break;
          default:
            break;
        }

        v90 = v10 + 1;
        result = v87 + v89 + v13;
        if (v90 >= a8)
        {
          v91 = a8;
        }

        else
        {
          v91 = 0;
        }

        v10 = v90 - v91;
        v92 = __OFSUB__(a4--, 1);
      }

      while (!((a4 < 0) ^ v92 | (a4 == 0)));
    }
  }

  return result;
}

uint64_t rip_auto_context_draw_image(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, CGImage *a8)
{
  if (!a1)
  {
    v14 = 120;
    pthread_mutex_lock(0x78);
    goto LABEL_6;
  }

  v13 = *(a1 + 288);
  v14 = v13 + 120;
  pthread_mutex_lock((v13 + 120));
  if (!v13)
  {
LABEL_6:
    rip_adaptive_bitmap_context_update_content_info_from_image(0, a8);
    goto LABEL_7;
  }

  v15 = *(v13 + 88);
  if (!v15)
  {
    v15 = *(v13 + 80);
    rip_adaptive_bitmap_context_update_content_info_from_image(v13, a8);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_7:
    v23 = 0;
    goto LABEL_15;
  }

  rip_adaptive_bitmap_context_update_content_info_from_image(v13, a8);
LABEL_9:
  v24 = *(v15 + 40);
  if (v24)
  {
    v25 = *(v24 + 80);
    if (v25)
    {
      v23 = v25(a2, a3, a4, a5);
    }

    else
    {
      v23 = 1006;
    }
  }

  else
  {
    v23 = 0;
  }

  *(v13 + 105) |= rip_auto_context_contains_transparency(v13, v16, v17, v18, v19, v20, v21, v22);
LABEL_15:
  pthread_mutex_unlock(v14);
  return v23;
}