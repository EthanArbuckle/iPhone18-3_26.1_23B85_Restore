BOOL CGPDFArrayGetStream(CGPDFArrayRef array, size_t index, CGPDFStreamRef *value)
{
  valuea = 0;
  Object = CGPDFArrayGetObject(array, index, &valuea);
  if (Object)
  {
    if (valuea && *(valuea + 2) == 9)
    {
      if (value)
      {
        *value = *(valuea + 4);
      }

      LOBYTE(Object) = 1;
    }

    else
    {
      LOBYTE(Object) = 0;
    }
  }

  return Object;
}

uint64_t get_array(CGPDFDictionary *a1, const char *a2, void *a3, uint64_t a4, uint64_t *a5, __n128 a6)
{
  v7 = a4;
  v21[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1EEE9AC00](8 * a4, a6);
  v14 = v21 - v13;
  if (v12 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v15 = v21 - v13;
  }

  else
  {
    v15 = 0;
  }

  if (v12 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v15 = malloc_type_malloc(v11, 0x4D825C63uLL);
  }

  if (CGPDFDictionaryGetNumbers(a1, a2, v15, v7))
  {
    if (v7)
    {
      v16 = v15;
      do
      {
        v17 = *v16++;
        *a3++ = v17;
        --v7;
      }

      while (v7);
    }

LABEL_14:
    v19 = 1;
    goto LABEL_15;
  }

  if (a5)
  {
    for (; v7; --v7)
    {
      v18 = *a5++;
      *a3++ = v18;
    }

    goto LABEL_14;
  }

  v19 = 0;
LABEL_15:
  if (v15 != v14)
  {
    free(v15);
  }

  return v19;
}

CFDataRef CGPDFStreamCopyData(CGPDFStreamRef stream, CGPDFDataFormat *format)
{
  v2 = (MEMORY[0x1EEE9AC00])(stream);
  v15 = *MEMORY[0x1E69E9840];
  FilterChain = CGPDFStreamCreateFilterChain(v2, v3);
  if (!FilterChain)
  {
    return 0;
  }

  v5 = FilterChain;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    do
    {
      v12 = CGPDFSourceRead(v5, bytes, 0x1000uLL, v6, v7, v8, v9, v10);
      CFDataAppendBytes(Mutable, bytes, v12);
    }

    while (v12 > 0xFFF);
    CFRelease(v5);
  }

  return Mutable;
}

void sub_183F48318(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    pdf_error("Exception in CGPDFStreamCopyData");
    CFRelease(v2);
    objc_end_catch();
    JUMPOUT(0x183F482D0);
  }

  _Unwind_Resume(exception_object);
}

void sub_183F48360(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x183F48348);
}

void CGPDFSourceFinalize(uint64_t a1)
{
  if (*(a1 + 209) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v2(*(a1 + 80));
    }
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    if (*(a1 + 152) == 1)
    {
      free(v4);
    }

    *(a1 + 144) = 0;
  }

  v5 = *(a1 + 88);

  free(v5);
}

uint64_t CGImageGetUpscaledComponentType(CGImage *a1)
{
  result = CGImageGetComponentType(a1);
  if (result > 6 || ((1 << result) & 0x49) == 0)
  {
    return result;
  }

  if (!a1)
  {
    LOBYTE(v6) = 0;
    goto LABEL_16;
  }

  v6 = *(a1 + 7);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (v6 > 0xF)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0xFE) != 0)
  {
    return 1;
  }

  if (((1 << v6) & 0xF800) != 0)
  {
    return 2;
  }

  if (((1 << v6) & 0x600) == 0)
  {
LABEL_13:
    if (v6 - 33 > 0xFFFFFFFFFFFFFFDFLL)
    {
      return 4;
    }

LABEL_16:
    _CGHandleAssert("CGImageGetUpscaledComponentType", 3643, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bits_per_component > 0 && bits_per_component < 33", "bpc %zu", v3, v4, v5, v6);
  }

  if ((BitmapInfo & 0xF0000) != 0x40000)
  {
    return 2;
  }

  return 5;
}

void fstream_release(z_streamp strm)
{
  if (strm)
  {
    if (strm->state)
    {
      inflateEnd(strm);
    }

    v2 = *&strm[1].avail_in;
    if (v2)
    {
      avail_in = strm->avail_in;
      if (!avail_in)
      {
        goto LABEL_9;
      }

      v4 = avail_in - 1;
      do
      {
        CGPDFSourceUngetc(*&strm[1].avail_in, strm->next_in[v4--]);
      }

      while (v4 != -1);
      v2 = *&strm[1].avail_in;
      if (v2)
      {
LABEL_9:
        CFRelease(v2);
      }
    }

    free(strm[1].total_in);

    free(strm);
  }
}

CGColorSpaceRef CGColorSpaceCreateICCBased(size_t nComponents, const CGFloat *range, CGDataProviderRef profile, CGColorSpaceRef alternate)
{
  v4 = 0;
  if (nComponents <= 4)
  {
    v5 = nComponents;
    if (((1 << nComponents) & 0x1A) != 0)
    {
      if (alternate && (CGColorSpaceGetType(alternate) == 9 || *(*(alternate + 3) + 48) != v5))
      {
        return 0;
      }

      v9 = CGDataProviderCopyData(profile);
      v4 = CGColorSpaceCreateWithICCData(v9);
      if (v9)
      {
        CFRelease(v9);
      }

      if (!v4 || (v17 = *(v4 + 3), *(v17 + 48) != v5))
      {
LABEL_23:
        CGColorSpaceRelease(v4);
        if (alternate)
        {
          CFRetain(alternate);
          return alternate;
        }

        return 0;
      }

      if (range)
      {
        v18 = CGColorSpaceICCGetRange(v4, v10, v11, v12, v13, v14, v15, v16);
        while (*range == *v18)
        {
          ++v18;
          ++range;
          if (!--v5)
          {
            v17 = *(v4 + 3);
            goto LABEL_15;
          }
        }

        goto LABEL_23;
      }

LABEL_15:
      v19 = *(v17 + 24);
      if ((v19 - 10) >= 2 && v19 != 6)
      {
        _CGHandleAssert("CGColorSpaceICCSetAlternate", 594, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased || s->state->type == kCGColorSpaceProfileSets || s->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not ICC. type = %d", v14, v15, v16, *(v17 + 24));
      }

      CGColorSpaceRelease(*(*(v17 + 96) + 48));
      if (alternate)
      {
        CFRetain(alternate);
      }

      *(*(*(v4 + 3) + 96) + 48) = alternate;
    }
  }

  return v4;
}

double sub_183F486E8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_183F4872C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_183F4872C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1843903A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_183F3FEF4();
  sub_1843901D8();
  v5 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v6 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v7 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v8 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v9 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1843901D8();
  v10 = v14;
  __swift_destroy_boxed_opaque_existential_0(v12);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  return result;
}

_DWORD *RGBAf16_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v9 = *(*a1 + 64);
  _S10 = *v9;
  v10 = v9[1];
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    if (_S10 <= a6)
    {
      _S0 = a6;
    }

    else
    {
      _S0 = _S10;
    }

    if (v10 < a6)
    {
      _S0 = v10;
    }

    if (a5)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      _S10 = _S0 * *a5;
      _S1 = _S10;
      _S2 = _S10;
      goto LABEL_19;
    }

    if (v13 == 4)
    {
      v17 = a5[4];
      _S10 = _S0 * ((v10 - *a5) - v17);
      _S1 = _S0 * ((v10 - a5[1]) - v17);
      v16 = (v10 - a5[2]) - v17;
    }

    else
    {
      _S1 = _S10;
      _S2 = _S10;
      if (v13 != 3)
      {
LABEL_19:
        *a2 = xmmword_18439CD70;
        a2[6] = 0;
        *(a2 + 2) = 1;
        __asm { FCVT            H3, S10 }

        *(a2 + 24) = _H3;
        if (_S0 >= v10)
        {
          v23 = 0;
        }

        else
        {
          v23 = (a2 + 12);
        }

        *(a2 + 4) = a2 + 12;
        *(a2 + 5) = v23;
        __asm { FCVT            H1, S1 }

        *(a2 + 25) = _H1;
        __asm { FCVT            H1, S2 }

        *(a2 + 26) = _H1;
        __asm { FCVT            H0, S0 }

        *(a2 + 27) = _H0;
        return a2;
      }

      _S10 = _S0 * *a5;
      _S1 = _S0 * a5[1];
      v16 = a5[2];
    }

    _S2 = _S0 * v16;
    goto LABEL_19;
  }

  return a2;
}

uint64_t RGBAf16_mark_inner(uint64_t *a1, uint64_t a2, __n128 a3, __n128 _Q1, __n128 a5, float16x4_t _D3, float32x4_t _Q4, float32x4_t _Q5, int8x16_t _Q6, float32x4_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v736 = *MEMORY[0x1E69E9840];
  v21 = *a2;
  v22 = *(a2 + 96);
  v23 = *(a2 + 48);
  v24 = *(*(*a1 + 56) + 16 * *a2 + 8 * (v22 == 0) + 4 * (v23 == 0));
  if (v24 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = a2;
  v27 = *(a2 + 4);
  v28 = v27 - 1;
  if (v27 < 1)
  {
    return 0;
  }

  v29 = *(a2 + 8);
  v30 = (v29 - 1);
  if (v29 < 1)
  {
    return 0;
  }

  v31 = *(a2 + 136);
  if ((v21 & 0xFF0000) != 0x50000 && v31)
  {
    v32 = *(a2 + 128);
    if ((v32 | 8) == 8)
    {
      if ((*a2 & 0xFF00) == 0x400)
      {
        RGBAf16_mark_constmask(a2, v24, v31, a12, a3.n128_f64[0], _Q1, a5, *&_D3, *_Q4.i64, *_Q5.i64, *_Q6.i64, a10, a13, a14, a15, a16);
      }

      else
      {
        RGBAf16_mark_pixelmask(*a1, a2, v24, a3, _Q1, a5, _D3, _Q4, _Q5, _Q6, a10, a12, a13, a14, a15, a16);
      }
    }

    else
    {
      v60 = *a2 & 0xFF00;
      if ((v24 - 1) <= 1 && v60 == 1024 && v32 == 16)
      {
        if (v23)
        {
          v61 = *(a2 + 152);
          if (v61 && *(a2 + 144) == 2.0)
          {
            v734 = 0u;
            memset(v735, 0, sizeof(v735));
            v732 = 0u;
            v733 = 0u;
            RGBAf16_pattern(a1, &v732, 8u, *v61, *(v61 + 8), *(v61 + 16));
            RGBAf16_mark_const_deep_mask_BGColorARGB(v26, v24, v735, v78, v79, v80, v81, v82, v83, v84, v73, v74, v75, v76, v77);
          }

          else
          {
            RGBAf16_mark_const_deep_mask_ARGB(a2, v24, v31, a12, a13, a14, a15, a16);
          }
        }

        else
        {
          RGBAf16_mark_const_deep_mask_XRGB(a2, v24, v31, a12, a13, a14, a15, a16);
        }
      }

      else if ((v24 - 1) > 1 || v60 == 1024 || v32 != 16)
      {
        RGBAf16_mark_bits(*a1, a3);
      }

      else
      {
        RGBAf16_mark_deep_pixel(a2, v24, a3.n128_f64[0], _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, *_Q4.i64, *_Q5.i64, *_Q6.i64, a10, v31, a12, a13, a14, a15, a16);
      }
    }

    return 1;
  }

  v690 = *(*(*a1 + 56) + 16 * *a2 + 8 * (v22 == 0) + 4 * (v23 == 0));
  if ((*a2 & 0xFF00) != 0x400)
  {
    v724 = *(a2 + 4);
    v728 = v29;
    v45 = *(a2 + 88);
    v46 = *(a2 + 28) >> 3;
    v47 = *(a2 + 40) + 8 * v46 * *(a2 + 16) + 8 * *(a2 + 12);
    v48 = *(a2 + 104);
    v49 = *(a2 + 108);
    v50 = *(a2 + 56);
    v51 = *(a2 + 60);
    v52 = *(a2 + 76) >> 3;
    if ((v21 & 0xFF00) == 0x100)
    {
      v45 += 8 * v52 * v51 + 8 * v50;
      if (v52 == v46)
      {
        v53 = (v47 - v45) >> 3;
        if (v53 < 1)
        {
          a12 = 1;
          v693 = *(a2 + 28) >> 3;
        }

        else if (v53 <= v27)
        {
          v47 += 8 * v28;
          a12 = 0xFFFFFFFFLL;
          v693 = *(a2 + 28) >> 3;
          v45 += 8 * v28;
        }

        else
        {
          v54 = v46 * v30;
          v55 = v45 + 8 * v46 * v30;
          v56 = v55 + 8 * v27 - 8;
          v57 = v47 + 8 * v54;
          v58 = v47 > v56;
          if (v47 > v56)
          {
            v59 = *(a2 + 28) >> 3;
          }

          else
          {
            v45 = v55;
            v47 = v57;
            v59 = -v46;
          }

          v693 = v59;
          if (!v58)
          {
            v46 = -v46;
          }

          a12 = 1;
        }
      }

      else
      {
        a12 = 1;
        v693 = *(a2 + 76) >> 3;
      }

      v684 = *(a2 + 60);
      v685 = *(a2 + 56);
      v62 = v22 != 0;
      if (v31)
      {
        LODWORD(v691) = 0;
        v718 = 0;
        v714 = 0;
        v63 = -1;
        v716 = v693;
        goto LABEL_50;
      }

      LODWORD(v691) = 0;
      v689 = a12;
      v70 = a12 * v27;
      v63 = -1;
      v52 = v693;
    }

    else
    {
      LODWORD(v693) = *(a2 + 64);
      v691 = *(a2 + 68);
      v714 = v45 + 8 * v52 * v691;
      v62 = v22 != 0;
      if (v31)
      {
        v716 = *(a2 + 76) >> 3;
        v684 = *(a2 + 60);
        v685 = *(a2 + 56);
        LODWORD(a12) = 1;
        v718 = *(a2 + 88);
        v63 = v718;
LABEL_50:
        v689 = a12;
        shape_enum_clip_alloc(a1, a2, v31, a12, v46, 1, v48, v49, v27, v29);
        v72 = v71;
        if (!v71)
        {
          return 1;
        }

        while (2)
        {
          a1 = shape_enum_clip_next(v72, &v727 + 1, &v727, &v724, &v728);
          if (!a1)
          {
            v465 = v72;
            goto LABEL_1018;
          }

          v692 = v72;
          if (v714)
          {
            v69 = v47 + 8 * v46 * v727 + 8 * SHIDWORD(v727);
            LODWORD(v27) = v724;
            v70 = v45 + 8 * v716 * ((v727 + *(v26 + 60)) % v691);
            v68 = v70 + 8 * ((HIDWORD(v727) + *(v26 + 56)) % v693);
            v63 = v70 + 8 * v693;
            v718 = v68;
            LODWORD(v70) = v724;
            v684 = (v727 + *(v26 + 60)) % v691;
            v685 = (HIDWORD(v727) + *(v26 + 56)) % v693;
          }

          else
          {
            LODWORD(v27) = v724;
            LODWORD(v70) = v724 * v689;
            v69 = v47 + 8 * v46 * v727 + 8 * HIDWORD(v727) * v689;
            v68 = v45 + 8 * v727 * v693 + 8 * HIDWORD(v727) * v689;
            v716 = v693 - v724 * v689;
          }

          v70 = v70;
LABEL_56:
          v712 = v46 - v70;
          v709 = v27;
          switch(v690)
          {
            case 0:
              v85 = v69 - 8 * v27 + 8;
              v86 = v712 + v27;
              if (v689 < 0)
              {
                v86 = v712 - v27;
              }

              else
              {
                v85 = v69;
              }

              v87 = (v85 + 8 * ((v86 * (v728 - 1)) & (v86 >> 63)));
              if (v86 < 0)
              {
                v86 = -v86;
              }

              CGBlt_fillBytes(8 * v27, v728, 0, v87, 8 * v86);
              goto LABEL_671;
            case 1:
              v303 = *(v26 + 1);
              v688 = v47;
              if (v303 == 2)
              {
                if (v27 >= 4 && (8 * v693) <= 0x40)
                {
                  a3.n128_u32[0] = 8 * v693;
                  v466 = vcnt_s8(a3.n128_u64[0]);
                  v466.i16[0] = vaddlv_u8(v466);
                  if (v466.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v69, 8 * (v27 + v712), 8 * v27, v728, v45, 8 * v716, 8 * v693, v691, 8 * v685, v684);
                    goto LABEL_671;
                  }
                }

LABEL_684:
                v687 = v45;
                v467 = v728;
                if (use_vImage_fp16_compositing(void)::predicate != -1)
                {
                  dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
                }

                if (use_vImage_fp16_compositing(void)::status == 1)
                {
                  LODWORD(v720) = 66051;
                  *&v732 = v69;
                  *(&v732 + 1) = v467;
                  *&v733 = v27;
                  *(&v733 + 1) = 8 * (v712 + v27);
                  v729 = v68;
                  v730.i64[0] = v467;
                  v730.i64[1] = v27;
                  v731 = 8 * (v716 + v27);
                  vImageCGCompositePixelShape_ARGB16F();
                  goto LABEL_669;
                }

                v468 = 8 * v689;
                if (v23 && !v62)
                {
                  v469 = v27 + 1;
                  v470 = v63;
                  v471 = v718;
                  v72 = v692;
                  do
                  {
                    v472 = v469;
                    do
                    {
                      *v69 = *v68;
                      *(v69 + 4) = *(v68 + 4);
                      *(v69 + 6) = COERCE_UNSIGNED_INT(1.0);
                      v473 = v68 + 8 * v689;
                      if (v473 >= v470)
                      {
                        v474 = -v693;
                      }

                      else
                      {
                        v474 = 0;
                      }

                      v68 = v473 + 8 * v474;
                      v69 += v468;
                      --v472;
                    }

                    while (v472 > 1);
                    v69 += 8 * v712;
                    v475 = v471 + 8 * v716;
                    if (v475 >= v714)
                    {
                      v476 = -(v716 * v691);
                    }

                    else
                    {
                      v476 = 0;
                    }

                    v477 = v475 + 8 * v476;
                    v478 = v470 + 8 * v476 + 8 * v716;
                    if (v714)
                    {
                      v470 = v478;
                      v471 = v477;
                      v68 = v477;
                    }

                    else
                    {
                      v68 += 8 * v716;
                    }

                    _VF = __OFSUB__(v467--, 1);
                  }

                  while (!((v467 < 0) ^ _VF | (v467 == 0)));
                }

                else
                {
                  v489 = v27 + 1;
                  v490 = v63;
                  v491 = v718;
                  v72 = v692;
                  do
                  {
                    v492 = v489;
                    do
                    {
                      *v69 = *v68;
                      v493 = v68 + 8 * v689;
                      if (v493 >= v490)
                      {
                        v494 = -v716;
                      }

                      else
                      {
                        v494 = 0;
                      }

                      v68 = v493 + 8 * v494;
                      v69 += v468;
                      --v492;
                    }

                    while (v492 > 1);
                    v69 += 8 * v712;
                    v495 = v491 + 8 * v716;
                    if (v495 >= v714)
                    {
                      v496 = -(v716 * v691);
                    }

                    else
                    {
                      v496 = 0;
                    }

                    v497 = v495 + 8 * v496;
                    v498 = v490 + 8 * v496 + 8 * v716;
                    if (v714)
                    {
                      v490 = v498;
                      v491 = v497;
                      v68 = v497;
                    }

                    else
                    {
                      v68 += 8 * v716;
                    }

                    _VF = __OFSUB__(v467--, 1);
                  }

                  while (!((v467 < 0) ^ _VF | (v467 == 0)));
                }

                v47 = v688;
                goto LABEL_672;
              }

              if (v303 != 1)
              {
                goto LABEL_684;
              }

              v304 = v728;
              v305 = v728;
              if (use_vImage_fp16_compositing(void)::predicate != -1)
              {
                v710 = v728;
                dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
                v304 = v710;
              }

              if (v689 & 0x80000000) == 0 && (use_vImage_fp16_compositing(void)::status)
              {
                LODWORD(v720) = 66051;
                *&v732 = v69;
                *(&v732 + 1) = v305;
                *&v733 = v27;
                *(&v733 + 1) = 8 * (v712 + v27);
                v729 = v68;
                v730.i64[0] = v305;
                v730.i64[1] = v27;
                v731 = 8 * (v716 + v27);
                vImageCGCompositePixelShape_ARGB16F();
                goto LABEL_670;
              }

              if (v23 && !v62)
              {
                v479 = v27 + 1;
                v480 = v63;
                v481 = v718;
                v47 = v688;
                v72 = v692;
                do
                {
                  v482 = v479;
                  do
                  {
                    *v69 = *v68;
                    *(v69 + 4) = *(v68 + 4);
                    *(v69 + 6) = COERCE_UNSIGNED_INT(1.0);
                    v483 = v68 + 8 * v689;
                    if (v483 >= v480)
                    {
                      v484 = -v693;
                    }

                    else
                    {
                      v484 = 0;
                    }

                    v68 = v483 + 8 * v484;
                    v69 += 8 * v689;
                    --v482;
                  }

                  while (v482 > 1);
                  v69 += 8 * v712;
                  v485 = v481 + 8 * v716;
                  if (v485 >= v714)
                  {
                    v486 = -(v716 * v691);
                  }

                  else
                  {
                    v486 = 0;
                  }

                  v487 = v485 + 8 * v486;
                  v488 = v480 + 8 * v486 + 8 * v716;
                  if (v714)
                  {
                    v480 = v488;
                    v481 = v487;
                    v68 = v487;
                  }

                  else
                  {
                    v68 += 8 * v716;
                  }

                  _VF = __OFSUB__(v304--, 1);
                }

                while (!((v304 < 0) ^ _VF | (v304 == 0)));
                goto LABEL_672;
              }

              if (v689 < 0)
              {
                v499 = v716 - v27;
                v501 = 8 * v27 - 8;
                v68 -= v501;
                v500 = v712 - v27;
                v69 -= v501;
              }

              else
              {
                v499 = v716 + v27;
                v500 = v712 + v27;
              }

              if (v499 >= 0)
              {
                LODWORD(v502) = v499;
              }

              else
              {
                v502 = -v499;
              }

              v503 = (v68 + 8 * ((v499 * (v305 - 1)) & (v499 >> 63)));
              v504 = (v500 * (v305 - 1)) & (v500 >> 63);
              if (v500 < 0)
              {
                v500 = -v500;
              }

              CGBlt_copyBytes(8 * v27, v304, v503, (v69 + 8 * v504), 8 * v502, 8 * v500);
LABEL_670:
              v47 = v688;
LABEL_671:
              v72 = v692;
LABEL_672:
              if (!v72)
              {
                return 1;
              }

              v727 = 0;
              continue;
            case 2:
              v252 = v728;
              while (1)
              {
                v253 = v27;
                do
                {
                  if (*(v68 + 6) >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                  {
                    v259 = *v68;
                  }

                  else
                  {
                    __asm { FCMP            H2, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_286;
                    }

                    __asm { FCVT            S2, H2 }

                    _Q4.i32[0] = *v68;
                    v256.i64[0] = vcvtq_f32_f16(*_Q4.f32).u64[0];
                    _H5 = *(v68 + 4);
                    __asm { FCVT            S5, H5 }

                    v256.i64[1] = __PAIR64__(LODWORD(_S2), _S5);
                    _Q4 = vmlaq_n_f32(v256, vcvtq_f32_f16(*v69), 1.0 - _S2);
                    v259 = vcvt_f16_f32(_Q4);
                  }

                  *v69 = v259;
LABEL_286:
                  v260 = v68 + 8 * v689;
                  if (v260 >= v63)
                  {
                    v261 = -v693;
                  }

                  else
                  {
                    v261 = 0;
                  }

                  v68 = v260 + 8 * v261;
                  v69 += 8 * v689;
                  --v253;
                }

                while (v253);
                v69 += 8 * v712;
                v262 = v718;
                v263 = v718 + 8 * v716;
                if (v263 >= v714)
                {
                  v264 = -(v716 * v691);
                }

                else
                {
                  v264 = 0;
                }

                v265 = v263 + 8 * v264;
                v266 = v63 + 8 * v264 + 8 * v716;
                if (v714)
                {
                  v63 = v266;
                  v262 = v265;
                }

                v718 = v262;
                if (v714)
                {
                  v68 = v265;
                }

                else
                {
                  v68 += 8 * v716;
                }

                if (!--v252)
                {
                  goto LABEL_644;
                }
              }

            case 3:
              v277 = v728;
              do
              {
                v278 = v27;
                do
                {
                  __asm { FCMP            H1, #0 }

                  if (!_ZF & _CF)
                  {
                    v280 = *v68;
                    if (_H1 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                    {
                      *v69 = v280;
                      *(v69 + 2) = *(v68 + 2);
                      _H1 = COERCE_UNSIGNED_INT(1.0);
                      if (v62)
                      {
                        _H1 = *(v68 + 6);
                      }
                    }

                    else
                    {
                      *v69 = _H1 * v280;
                      *(v69 + 2) = _H1 * *(v68 + 2);
                      *(v69 + 4) = _H1 * *(v68 + 4);
                      _S2 = 1.0;
                      if (v62)
                      {
                        _H2 = *(v68 + 6);
                        __asm { FCVT            S2, H2 }
                      }

                      __asm { FCVT            S1, H1 }

                      _S1 = _S2 * _S1;
                      __asm { FCVT            H1, S1 }
                    }

                    *(v69 + 6) = _H1;
                  }

                  else
                  {
                    *v69 = 0;
                  }

                  v286 = v68 + 8 * v689;
                  if (v286 >= v63)
                  {
                    v287 = -v693;
                  }

                  else
                  {
                    v287 = 0;
                  }

                  v68 = v286 + 8 * v287;
                  v69 += 8 * v689;
                  --v278;
                }

                while (v278);
                v69 += 8 * v712;
                v288 = v718;
                v289 = v718 + 8 * v716;
                if (v289 >= v714)
                {
                  v290 = -(v716 * v691);
                }

                else
                {
                  v290 = 0;
                }

                v291 = v289 + 8 * v290;
                v292 = v63 + 8 * v290 + 8 * v716;
                if (v714)
                {
                  v63 = v292;
                  v288 = v291;
                }

                v718 = v288;
                if (v714)
                {
                  v68 = v291;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v277;
              }

              while (v277);
              goto LABEL_644;
            case 4:
              v181 = v728;
              do
              {
                v182 = v27;
                do
                {
                  _H1 = *(v69 + 6);
                  __asm { FCVT            S1, H1 }

                  v185 = 1.0 - _S1;
                  if (v185 <= 0.0)
                  {
                    *v69 = 0;
                  }

                  else
                  {
                    _H2 = *v68;
                    if (v185 >= 1.0)
                    {
                      *v69 = _H2;
                      *(v69 + 2) = *(v68 + 2);
                      _H1 = COERCE_UNSIGNED_INT(1.0);
                      if (v62)
                      {
                        _H1 = *(v68 + 6);
                      }
                    }

                    else
                    {
                      __asm { FCVT            S2, H2 }

                      _S2 = v185 * _S2;
                      __asm { FCVT            H2, S2 }

                      *v69 = LOWORD(_S2);
                      LOWORD(_S2) = *(v68 + 2);
                      __asm { FCVT            S2, H2 }

                      _S2 = v185 * _S2;
                      __asm { FCVT            H2, S2 }

                      *(v69 + 2) = LOWORD(_S2);
                      LOWORD(_S2) = *(v68 + 4);
                      __asm { FCVT            S2, H2 }

                      _S2 = v185 * _S2;
                      __asm { FCVT            H2, S2 }

                      *(v69 + 4) = LOWORD(_S2);
                      _S2 = 1.0;
                      if (v62)
                      {
                        _H2 = *(v68 + 6);
                        __asm { FCVT            S2, H2 }
                      }

                      _S1 = v185 * _S2;
                      __asm { FCVT            H1, S1 }
                    }

                    *(v69 + 6) = _H1;
                  }

                  v197 = v68 + 8 * v689;
                  if (v197 >= v63)
                  {
                    v198 = -v693;
                  }

                  else
                  {
                    v198 = 0;
                  }

                  v68 = v197 + 8 * v198;
                  v69 += 8 * v689;
                  --v182;
                }

                while (v182);
                v69 += 8 * v712;
                v199 = v718;
                v200 = v718 + 8 * v716;
                if (v200 >= v714)
                {
                  v201 = -(v716 * v691);
                }

                else
                {
                  v201 = 0;
                }

                v202 = v200 + 8 * v201;
                v203 = v63 + 8 * v201 + 8 * v716;
                if (v714)
                {
                  v63 = v203;
                  v199 = v202;
                }

                v718 = v199;
                if (v714)
                {
                  v68 = v202;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v181;
              }

              while (v181);
              goto LABEL_644;
            case 5:
              v325 = v728;
              do
              {
                v326 = v27;
                do
                {
                  v327 = vcvtq_f32_f16(*v68);
                  v328 = vcvtq_f32_f16(*v69);
                  *v69 = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v328, 1.0 - v327.f32[3]), v327, v328, 3));
                  v329 = v68 + 8 * v689;
                  if (v329 >= v63)
                  {
                    v330 = -v693;
                  }

                  else
                  {
                    v330 = 0;
                  }

                  v68 = v329 + 8 * v330;
                  v69 += 8 * v689;
                  --v326;
                }

                while (v326);
                v69 += 8 * v712;
                v331 = v718;
                v332 = v718 + 8 * v716;
                if (v332 >= v714)
                {
                  v333 = -(v716 * v691);
                }

                else
                {
                  v333 = 0;
                }

                v334 = v332 + 8 * v333;
                v335 = v63 + 8 * v333 + 8 * v716;
                if (v714)
                {
                  v63 = v335;
                  v331 = v334;
                }

                v718 = v331;
                if (v714)
                {
                  v68 = v334;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v325;
              }

              while (v325);
              goto LABEL_644;
            case 6:
              v356 = v728;
              while (1)
              {
                v357 = v27;
                do
                {
                  _H1 = *(v69 + 6);
                  __asm { FCVT            S1, H1 }

                  v360 = 1.0 - _S1;
                  if ((1.0 - _S1) >= 1.0)
                  {
                    *v69 = *v68;
                    *(v69 + 4) = *(v68 + 4);
                    _H1 = COERCE_UNSIGNED_INT(1.0);
                    if (v62)
                    {
                      _H1 = *(v68 + 6);
                    }
                  }

                  else
                  {
                    if (v360 <= 0.0)
                    {
                      goto LABEL_498;
                    }

                    _H3 = *v69;
                    __asm { FCVT            S3, H3 }

                    _H4 = *v68;
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v360);
                    __asm { FCVT            H3, S3 }

                    *v69 = LOWORD(_S3);
                    LOWORD(_S3) = *(v69 + 2);
                    __asm { FCVT            S3, H3 }

                    LOWORD(_S4) = *(v68 + 2);
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v360);
                    __asm { FCVT            H3, S3 }

                    *(v69 + 2) = LOWORD(_S3);
                    LOWORD(_S3) = *(v69 + 4);
                    __asm { FCVT            S3, H3 }

                    LOWORD(_S4) = *(v68 + 4);
                    __asm { FCVT            S4, H4 }

                    _S3 = _S3 + (_S4 * v360);
                    __asm { FCVT            H3, S3 }

                    *(v69 + 4) = LOWORD(_S3);
                    _S3 = 1.0;
                    if (v62)
                    {
                      _H3 = *(v68 + 6);
                      __asm { FCVT            S3, H3 }
                    }

                    _S1 = _S1 + (_S3 * v360);
                    __asm { FCVT            H1, S1 }
                  }

                  *(v69 + 6) = _H1;
LABEL_498:
                  v376 = v68 + 8 * v689;
                  if (v376 >= v63)
                  {
                    v377 = -v693;
                  }

                  else
                  {
                    v377 = 0;
                  }

                  v68 = v376 + 8 * v377;
                  v69 += 8 * v689;
                  --v357;
                }

                while (v357);
                v69 += 8 * v712;
                v378 = v718;
                v379 = v718 + 8 * v716;
                if (v379 >= v714)
                {
                  v380 = -(v716 * v691);
                }

                else
                {
                  v380 = 0;
                }

                v381 = v379 + 8 * v380;
                v382 = v63 + 8 * v380 + 8 * v716;
                if (v714)
                {
                  v63 = v382;
                  v378 = v381;
                }

                v718 = v378;
                if (v714)
                {
                  v68 = v381;
                }

                else
                {
                  v68 += 8 * v716;
                }

                if (!--v356)
                {
                  goto LABEL_644;
                }
              }

            case 7:
              v293 = v728;
              do
              {
                v294 = v27;
                do
                {
                  __asm { FCMP            H1, #0 }

                  if (!_ZF & _CF)
                  {
                    if (_H1 < COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                    {
                      *v69 = vmul_n_f16(*v69, _H1);
                    }
                  }

                  else
                  {
                    *v69 = 0;
                  }

                  v296 = v68 + 8 * v689;
                  if (v296 >= v63)
                  {
                    v297 = -v693;
                  }

                  else
                  {
                    v297 = 0;
                  }

                  v68 = v296 + 8 * v297;
                  v69 += 8 * v689;
                  --v294;
                }

                while (v294);
                v69 += 8 * v712;
                v298 = v718;
                v299 = v718 + 8 * v716;
                if (v299 >= v714)
                {
                  v300 = -(v716 * v691);
                }

                else
                {
                  v300 = 0;
                }

                v301 = v299 + 8 * v300;
                v302 = v63 + 8 * v300 + 8 * v716;
                if (v714)
                {
                  v63 = v302;
                  v298 = v301;
                }

                v718 = v298;
                if (v714)
                {
                  v68 = v301;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v293;
              }

              while (v293);
              goto LABEL_644;
            case 8:
              v404 = v728;
              do
              {
                v405 = v27;
                do
                {
                  _H1 = *(v68 + 6);
                  __asm { FCVT            S1, H1 }

                  v408 = 1.0 - _S1;
                  if (v408 <= 0.0)
                  {
                    *v69 = 0;
                  }

                  else if (v408 < 1.0)
                  {
                    *v69 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v69), v408));
                  }

                  v409 = v68 + 8 * v689;
                  if (v409 >= v63)
                  {
                    v410 = -v693;
                  }

                  else
                  {
                    v410 = 0;
                  }

                  v68 = v409 + 8 * v410;
                  v69 += 8 * v689;
                  --v405;
                }

                while (v405);
                v69 += 8 * v712;
                v411 = v718;
                v412 = v718 + 8 * v716;
                if (v412 >= v714)
                {
                  v413 = -(v716 * v691);
                }

                else
                {
                  v413 = 0;
                }

                v414 = v412 + 8 * v413;
                v415 = v63 + 8 * v413 + 8 * v716;
                if (v714)
                {
                  v63 = v415;
                  v411 = v414;
                }

                v718 = v411;
                if (v714)
                {
                  v68 = v414;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v404;
              }

              while (v404);
              goto LABEL_644;
            case 9:
              v221 = v728;
              do
              {
                v222 = v27;
                do
                {
                  v223 = vcvtq_f32_f16(*v69);
                  v224 = vcvtq_f32_f16(*v68);
                  *v69 = vcvt_f16_f32(vmlaq_n_f32(vmulq_laneq_f32(v223, v224, 3), v224, 1.0 - v223.f32[3]));
                  v225 = v68 + 8 * v689;
                  if (v225 >= v63)
                  {
                    v226 = -v693;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  v68 = v225 + 8 * v226;
                  v69 += 8 * v689;
                  --v222;
                }

                while (v222);
                v69 += 8 * v712;
                v227 = v718;
                v228 = v718 + 8 * v716;
                if (v228 >= v714)
                {
                  v229 = -(v716 * v691);
                }

                else
                {
                  v229 = 0;
                }

                v230 = v228 + 8 * v229;
                v231 = v63 + 8 * v229 + 8 * v716;
                if (v714)
                {
                  v63 = v231;
                  v227 = v230;
                }

                v718 = v227;
                if (v714)
                {
                  v68 = v230;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v221;
              }

              while (v221);
              goto LABEL_644;
            case 10:
              v393 = v728;
              do
              {
                v394 = v27;
                do
                {
                  v395 = vcvtq_f32_f16(*v69);
                  v396 = vcvtq_f32_f16(*v68);
                  *v69 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v395, 1.0 - v396.f32[3]), v396, 1.0 - v395.f32[3]));
                  v397 = v68 + 8 * v689;
                  if (v397 >= v63)
                  {
                    v398 = -v693;
                  }

                  else
                  {
                    v398 = 0;
                  }

                  v68 = v397 + 8 * v398;
                  v69 += 8 * v689;
                  --v394;
                }

                while (v394);
                v69 += 8 * v712;
                v399 = v718;
                v400 = v718 + 8 * v716;
                if (v400 >= v714)
                {
                  v401 = -(v716 * v691);
                }

                else
                {
                  v401 = 0;
                }

                v402 = v400 + 8 * v401;
                v403 = v63 + 8 * v401 + 8 * v716;
                if (v714)
                {
                  v63 = v403;
                  v399 = v402;
                }

                v718 = v399;
                if (v714)
                {
                  v68 = v402;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v393;
              }

              while (v393);
              goto LABEL_644;
            case 11:
              v139 = v728;
              do
              {
                v140 = v27;
                do
                {
                  _S0 = 1.0;
                  _S1 = 1.0;
                  if (v23)
                  {
                    _H1 = *(v69 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  if (v62)
                  {
                    _H0 = *(v68 + 6);
                    __asm { FCVT            S0, H0 }
                  }

                  _S3 = 1.0;
                  _S4 = 1.0;
                  if (v23)
                  {
                    _H2 = *(v69 + 6);
                    __asm { FCVT            S4, H2 }
                  }

                  if (v62)
                  {
                    _H2 = *(v68 + 6);
                    __asm { FCVT            S3, H2 }
                  }

                  _S0 = _S1 + _S0;
                  _S1 = 1.0;
                  if (_S0 > 1.0)
                  {
                    _S0 = 1.0;
                  }

                  _S2 = 1.0;
                  if (v23)
                  {
                    _H2 = *(v69 + 6);
                    __asm { FCVT            S2, H2 }
                  }

                  if (v62)
                  {
                    _H1 = *(v68 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  _H5 = *v69;
                  __asm { FCVT            S5, H5 }

                  v156 = _S4 - _S5;
                  LOWORD(_S5) = *v68;
                  __asm { FCVT            S5, H5 }

                  v158 = v156 + (_S3 - _S5);
                  _H5 = *(v69 + 2);
                  _H4 = *(v68 + 2);
                  _S3 = _S0 - v158;
                  __asm { FCVT            H3, S3 }

                  *v69 = LOWORD(_S3);
                  _S3 = 1.0;
                  _S6 = 1.0;
                  if (v23)
                  {
                    _H6 = *(v69 + 6);
                    __asm { FCVT            S6, H6 }
                  }

                  if (v62)
                  {
                    _H3 = *(v68 + 6);
                    __asm { FCVT            S3, H3 }
                  }

                  __asm
                  {
                    FCVT            S5, H5
                    FCVT            S4, H4
                  }

                  v168 = (_S2 - _S5) + (_S1 - _S4);
                  _H2 = *(v69 + 4);
                  __asm { FCVT            S2, H2 }

                  LOWORD(_S4) = *(v68 + 4);
                  __asm { FCVT            S4, H4 }

                  _S1 = _S0 - v168;
                  __asm { FCVT            H1, S1 }

                  *(v69 + 2) = LOWORD(_S1);
                  __asm { FCVT            H1, S0 }

                  *(v69 + 6) = LOWORD(_S1);
                  _S0 = _S0 - ((_S6 - _S2) + (_S3 - _S4));
                  __asm { FCVT            H0, S0 }

                  *(v69 + 4) = LOWORD(_S0);
                  v174 = v68 + 8 * v689;
                  if (v174 >= v63)
                  {
                    v175 = -v693;
                  }

                  else
                  {
                    v175 = 0;
                  }

                  v68 = v174 + 8 * v175;
                  v69 += 8 * v689;
                  --v140;
                }

                while (v140);
                v69 += 8 * v712;
                v176 = v718;
                v177 = v718 + 8 * v716;
                if (v177 >= v714)
                {
                  v178 = -(v716 * v691);
                }

                else
                {
                  v178 = 0;
                }

                v179 = v177 + 8 * v178;
                v180 = v63 + 8 * v178 + 8 * v716;
                if (v714)
                {
                  v63 = v180;
                  v176 = v179;
                }

                v718 = v176;
                if (v714)
                {
                  v68 = v179;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v139;
              }

              while (v139);
              goto LABEL_644;
            case 12:
              v204 = v728;
              do
              {
                v205 = v27;
                do
                {
                  v206 = *(v69 + 2);
                  v207 = *(v68 + 2);
                  *v69 = *v69 + *v68;
                  *(v69 + 2) = v206 + v207;
                  _S1 = 1.0;
                  if (v62)
                  {
                    _H1 = *(v68 + 6);
                    __asm { FCVT            S1, H1 }
                  }

                  _H2 = *(v69 + 6);
                  __asm { FCVT            S2, H2 }

                  _S1 = _S1 + _S2;
                  if (_S1 > 1.0)
                  {
                    _S1 = 1.0;
                  }

                  *(v69 + 4) = *(v69 + 4) + *(v68 + 4);
                  __asm { FCVT            H1, S1 }

                  *(v69 + 6) = _H1;
                  v214 = v68 + 8 * v689;
                  if (v214 >= v63)
                  {
                    v215 = -v693;
                  }

                  else
                  {
                    v215 = 0;
                  }

                  v68 = v214 + 8 * v215;
                  v69 += 8 * v689;
                  --v205;
                }

                while (v205);
                v69 += 8 * v712;
                v216 = v718;
                v217 = v718 + 8 * v716;
                if (v217 >= v714)
                {
                  v218 = -(v716 * v691);
                }

                else
                {
                  v218 = 0;
                }

                v219 = v217 + 8 * v218;
                v220 = v63 + 8 * v218 + 8 * v716;
                if (v714)
                {
                  v63 = v220;
                  v216 = v219;
                }

                v718 = v216;
                if (v714)
                {
                  v68 = v219;
                }

                else
                {
                  v68 += 8 * v716;
                }

                --v204;
              }

              while (v204);
              goto LABEL_644;
            case 13:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v346 = v728;
              while (1)
              {
                v703 = v346;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_475;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_473;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_473:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAmultiplyPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_474;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_474:
                  *(v69 + 6) = _D3.i16[0];
LABEL_475:
                  v349 = v68 + 8 * v689;
                  if (v349 >= v63)
                  {
                    v350 = -v693;
                  }

                  else
                  {
                    v350 = 0;
                  }

                  v68 = v349 + 8 * v350;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v351 = v718;
                v352 = v718 + 8 * v716;
                v353 = -(v716 * v691);
                if (v352 < v714)
                {
                  v353 = 0;
                }

                v354 = v352 + 8 * v353;
                v355 = v63 + 8 * v353 + 8 * v716;
                if (v714)
                {
                  v63 = v355;
                  v351 = v354;
                }

                v718 = v351;
                if (v714)
                {
                  v68 = v354;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v346 = v703 - 1;
                LODWORD(v27) = v709;
                if (v703 == 1)
                {
LABEL_668:
                  v728 = 0;
                  v26 = a2;
                  v46 = v686;
LABEL_669:
                  v45 = v687;
                  goto LABEL_670;
                }
              }

            case 14:
              v108 = v728;
              while (1)
              {
                v109 = v27;
                do
                {
                  _S2 = 1.0;
                  _S1 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H1, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_122;
                    }

                    __asm { FCVT            S1, H1 }
                  }

                  if (!v23)
                  {
                    goto LABEL_120;
                  }

                  __asm { FCMP            H2, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S2, H2 }

LABEL_120:
                    _H3 = *v69;
                    _H4 = *(v69 + 2);
                    _H5 = *(v69 + 4);
                    _H6 = *v68;
                    _H7 = *(v68 + 2);
                    _H16 = *(v68 + 4);
                    __asm
                    {
                      FCVT            S3, H3
                      FCVT            S4, H4
                      FCVT            S5, H5
                      FCVT            S6, H6
                      FCVT            S7, H7
                      FCVT            S16, H16
                    }

                    _S3 = _S3 + (_S6 * (1.0 - _S3));
                    _S4 = _S4 + (_S7 * (1.0 - _S4));
                    _S5 = _S5 + (_S16 * (1.0 - _S5));
                    _S1 = (_S1 + _S2) - (_S2 * _S1);
                    __asm
                    {
                      FCVT            H2, S3
                      FCVT            H3, S4
                      FCVT            H4, S5
                    }

                    *v69 = _H2;
                    *(v69 + 2) = LOWORD(_S3);
                    __asm { FCVT            H1, S1 }

                    *(v69 + 4) = LOWORD(_S4);
                    goto LABEL_121;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H1, S1 }

LABEL_121:
                  *(v69 + 6) = _H1;
LABEL_122:
                  v132 = v68 + 8 * v689;
                  if (v132 >= v63)
                  {
                    v133 = -v693;
                  }

                  else
                  {
                    v133 = 0;
                  }

                  v68 = v132 + 8 * v133;
                  v69 += 8 * v689;
                  --v109;
                }

                while (v109);
                v69 += 8 * v712;
                v134 = v718;
                v135 = v718 + 8 * v716;
                if (v135 >= v714)
                {
                  v136 = -(v716 * v691);
                }

                else
                {
                  v136 = 0;
                }

                v137 = v135 + 8 * v136;
                v138 = v63 + 8 * v136 + 8 * v716;
                if (v714)
                {
                  v63 = v138;
                  v134 = v137;
                }

                v718 = v134;
                if (v714)
                {
                  v68 = v137;
                }

                else
                {
                  v68 += 8 * v716;
                }

                if (!--v108)
                {
                  goto LABEL_644;
                }
              }

            case 15:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v267 = v728;
              while (1)
              {
                v699 = v267;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_311;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_309;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_309:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAoverlayPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_310;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_310:
                  *(v69 + 6) = _D3.i16[0];
LABEL_311:
                  v270 = v68 + 8 * v689;
                  if (v270 >= v63)
                  {
                    v271 = -v693;
                  }

                  else
                  {
                    v271 = 0;
                  }

                  v68 = v270 + 8 * v271;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v272 = v718;
                v273 = v718 + 8 * v716;
                v274 = -(v716 * v691);
                if (v273 < v714)
                {
                  v274 = 0;
                }

                v275 = v273 + 8 * v274;
                v276 = v63 + 8 * v274 + 8 * v716;
                if (v714)
                {
                  v63 = v276;
                  v272 = v275;
                }

                v718 = v272;
                if (v714)
                {
                  v68 = v275;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v267 = v699 - 1;
                LODWORD(v27) = v709;
                if (v699 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 16:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v98 = v728;
              while (1)
              {
                v696 = v98;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_98;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_96;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_96:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAdarkenPDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_97;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_97:
                  *(v69 + 6) = _D3.i16[0];
LABEL_98:
                  v101 = v68 + 8 * v689;
                  if (v101 >= v63)
                  {
                    v102 = -v693;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v68 = v101 + 8 * v102;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v103 = v718;
                v104 = v718 + 8 * v716;
                v105 = -(v716 * v691);
                if (v104 < v714)
                {
                  v105 = 0;
                }

                v106 = v104 + 8 * v105;
                v107 = v63 + 8 * v105 + 8 * v716;
                if (v714)
                {
                  v63 = v107;
                  v103 = v106;
                }

                v718 = v103;
                if (v714)
                {
                  v68 = v106;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v98 = v696 - 1;
                LODWORD(v27) = v709;
                if (v696 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 17:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v306 = v728;
              while (1)
              {
                v700 = v306;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_387;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_385;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_385:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAlightenPDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_386;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_386:
                  *(v69 + 6) = _D3.i16[0];
LABEL_387:
                  v309 = v68 + 8 * v689;
                  if (v309 >= v63)
                  {
                    v310 = -v693;
                  }

                  else
                  {
                    v310 = 0;
                  }

                  v68 = v309 + 8 * v310;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v311 = v718;
                v312 = v718 + 8 * v716;
                v313 = -(v716 * v691);
                if (v312 < v714)
                {
                  v313 = 0;
                }

                v314 = v312 + 8 * v313;
                v315 = v63 + 8 * v313 + 8 * v716;
                if (v714)
                {
                  v63 = v315;
                  v311 = v314;
                }

                v718 = v311;
                if (v714)
                {
                  v68 = v314;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v306 = v700 - 1;
                LODWORD(v27) = v709;
                if (v700 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 18:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v383 = v728;
              while (1)
              {
                v704 = v383;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_523;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_521;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_521:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAcolordodgePDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_522;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_522:
                  *(v69 + 6) = _D3.i16[0];
LABEL_523:
                  v386 = v68 + 8 * v689;
                  if (v386 >= v63)
                  {
                    v387 = -v693;
                  }

                  else
                  {
                    v387 = 0;
                  }

                  v68 = v386 + 8 * v387;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v388 = v718;
                v389 = v718 + 8 * v716;
                v390 = -(v716 * v691);
                if (v389 < v714)
                {
                  v390 = 0;
                }

                v391 = v389 + 8 * v390;
                v392 = v63 + 8 * v390 + 8 * v716;
                if (v714)
                {
                  v63 = v392;
                  v388 = v391;
                }

                v718 = v388;
                if (v714)
                {
                  v68 = v391;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v383 = v704 - 1;
                LODWORD(v27) = v709;
                if (v704 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 19:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v426 = v728;
              while (1)
              {
                v706 = v426;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_607;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_605;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_605:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAcolorburnPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_606;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_606:
                  *(v69 + 6) = _D3.i16[0];
LABEL_607:
                  v429 = v68 + 8 * v689;
                  if (v429 >= v63)
                  {
                    v430 = -v693;
                  }

                  else
                  {
                    v430 = 0;
                  }

                  v68 = v429 + 8 * v430;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v431 = v718;
                v432 = v718 + 8 * v716;
                v433 = -(v716 * v691);
                if (v432 < v714)
                {
                  v433 = 0;
                }

                v434 = v432 + 8 * v433;
                v435 = v63 + 8 * v433 + 8 * v716;
                if (v714)
                {
                  v63 = v435;
                  v431 = v434;
                }

                v718 = v431;
                if (v714)
                {
                  v68 = v434;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v426 = v706 - 1;
                LODWORD(v27) = v709;
                if (v706 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 20:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v316 = v728;
              while (1)
              {
                v701 = v316;
                do
                {
                  _Q4.i32[0] = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_411;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_409;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_409:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAsoftlightPDA(a3, _Q1.n128_u64[0], a5, _D3, *_Q4.i64, *_Q5.i64, *_Q6.i8, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_410;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_410:
                  *(v69 + 6) = _D3.i16[0];
LABEL_411:
                  v318 = v68 + 8 * v689;
                  if (v318 >= v63)
                  {
                    v319 = -v693;
                  }

                  else
                  {
                    v319 = 0;
                  }

                  v68 = v318 + 8 * v319;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v320 = v718;
                v321 = v718 + 8 * v716;
                v322 = -(v716 * v691);
                if (v321 < v714)
                {
                  v322 = 0;
                }

                v323 = v321 + 8 * v322;
                v324 = v63 + 8 * v322 + 8 * v716;
                if (v714)
                {
                  v63 = v324;
                  v320 = v323;
                }

                v718 = v320;
                if (v714)
                {
                  v68 = v323;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v316 = v701 - 1;
                LODWORD(v27) = v709;
                if (v701 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 21:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v336 = v728;
              while (1)
              {
                v702 = v336;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_451;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_449;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_449:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAhardlightPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_450;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_450:
                  *(v69 + 6) = _D3.i16[0];
LABEL_451:
                  v339 = v68 + 8 * v689;
                  if (v339 >= v63)
                  {
                    v340 = -v693;
                  }

                  else
                  {
                    v340 = 0;
                  }

                  v68 = v339 + 8 * v340;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v341 = v718;
                v342 = v718 + 8 * v716;
                v343 = -(v716 * v691);
                if (v342 < v714)
                {
                  v343 = 0;
                }

                v344 = v342 + 8 * v343;
                v345 = v63 + 8 * v343 + 8 * v716;
                if (v714)
                {
                  v63 = v345;
                  v341 = v344;
                }

                v718 = v341;
                if (v714)
                {
                  v68 = v344;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v336 = v702 - 1;
                LODWORD(v27) = v709;
                if (v702 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 22:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v416 = v728;
              while (1)
              {
                v705 = v416;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_583;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_581;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_581:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAdifferencePDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_582;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_582:
                  *(v69 + 6) = _D3.i16[0];
LABEL_583:
                  v419 = v68 + 8 * v689;
                  if (v419 >= v63)
                  {
                    v420 = -v693;
                  }

                  else
                  {
                    v420 = 0;
                  }

                  v68 = v419 + 8 * v420;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v421 = v718;
                v422 = v718 + 8 * v716;
                v423 = -(v716 * v691);
                if (v422 < v714)
                {
                  v423 = 0;
                }

                v424 = v422 + 8 * v423;
                v425 = v63 + 8 * v423 + 8 * v716;
                if (v714)
                {
                  v63 = v425;
                  v421 = v424;
                }

                v718 = v421;
                if (v714)
                {
                  v68 = v424;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v416 = v705 - 1;
                LODWORD(v27) = v709;
                if (v705 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 23:
              v436 = v728;
              while (1)
              {
                v437 = v27;
                do
                {
                  _S3 = 1.0;
                  _S2 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H2, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_631;
                    }

                    __asm { FCVT            S2, H2 }
                  }

                  if (!v23)
                  {
                    goto LABEL_629;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S3, H3 }

LABEL_629:
                    _H4 = *v69;
                    _Q5.i32[0] = *(v69 + 2);
                    _Q6.i16[0] = *v68;
                    a10.i32[0] = *(v68 + 2);
                    __asm
                    {
                      FCVT            S4, H4
                      FCVT            S6, H6
                    }

                    _S4 = (_S4 + *_Q6.i32) + ((_S4 * *_Q6.i32) * -2.0);
                    _S2 = (_S3 + _S2) - (_S3 * _S2);
                    __asm { FCVT            H3, S4 }

                    v446 = vcvtq_f32_f16(*_Q5.f32).u64[0];
                    _Q5.i64[0] = vcvtq_f32_f16(*a10.f32).u64[0];
                    *_Q6.i8 = vmla_f32(vadd_f32(v446, *_Q5.f32), 0xC0000000C0000000, vmul_f32(v446, *_Q5.f32));
                    *v69 = _H3;
                    *(v69 + 2) = vcvt_f16_f32(_Q6).u32[0];
                    goto LABEL_630;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
LABEL_630:
                  __asm { FCVT            H2, S2 }

                  *(v69 + 6) = _H2;
LABEL_631:
                  v448 = v68 + 8 * v689;
                  if (v448 >= v63)
                  {
                    v449 = -v693;
                  }

                  else
                  {
                    v449 = 0;
                  }

                  v68 = v448 + 8 * v449;
                  v69 += 8 * v689;
                  --v437;
                }

                while (v437);
                v69 += 8 * v712;
                v450 = v718;
                v451 = v718 + 8 * v716;
                if (v451 >= v714)
                {
                  v452 = -(v716 * v691);
                }

                else
                {
                  v452 = 0;
                }

                v453 = v451 + 8 * v452;
                v454 = v63 + 8 * v452 + 8 * v716;
                if (v714)
                {
                  v63 = v454;
                  v450 = v453;
                }

                v718 = v450;
                if (v714)
                {
                  v68 = v453;
                }

                else
                {
                  v68 += 8 * v716;
                }

                if (!--v436)
                {
LABEL_644:
                  v728 = 0;
                  goto LABEL_671;
                }
              }

            case 24:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v242 = v728;
              while (1)
              {
                v698 = v242;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_266;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_264;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_264:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAhuePDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_265;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_265:
                  *(v69 + 6) = _D3.i16[0];
LABEL_266:
                  v245 = v68 + 8 * v689;
                  if (v245 >= v63)
                  {
                    v246 = -v693;
                  }

                  else
                  {
                    v246 = 0;
                  }

                  v68 = v245 + 8 * v246;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v247 = v718;
                v248 = v718 + 8 * v716;
                v249 = -(v716 * v691);
                if (v248 < v714)
                {
                  v249 = 0;
                }

                v250 = v248 + 8 * v249;
                v251 = v63 + 8 * v249 + 8 * v716;
                if (v714)
                {
                  v63 = v251;
                  v247 = v250;
                }

                v718 = v247;
                if (v714)
                {
                  v68 = v250;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v242 = v698 - 1;
                LODWORD(v27) = v709;
                if (v698 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 25:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v232 = v728;
              while (1)
              {
                v697 = v232;
                do
                {
                  _S4 = 1.0;
                  _Q5.i32[0] = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_242;
                    }

                    __asm { FCVT            S5, H0 }
                  }

                  _D3.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_240;
                  }

                  __asm { FCMP            H3, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S4, H3 }

LABEL_240:
                    a3.n128_u16[0] = *v69;
                    _Q1.n128_u16[0] = *(v69 + 2);
                    a5.n128_u16[0] = *(v69 + 4);
                    *v69 = PDAsaturationPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_241;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S5 }

LABEL_241:
                  *(v69 + 6) = _D3.i16[0];
LABEL_242:
                  v235 = v68 + 8 * v689;
                  if (v235 >= v63)
                  {
                    v236 = -v693;
                  }

                  else
                  {
                    v236 = 0;
                  }

                  v68 = v235 + 8 * v236;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v237 = v718;
                v238 = v718 + 8 * v716;
                v239 = -(v716 * v691);
                if (v238 < v714)
                {
                  v239 = 0;
                }

                v240 = v238 + 8 * v239;
                v241 = v63 + 8 * v239 + 8 * v716;
                if (v714)
                {
                  v63 = v241;
                  v237 = v240;
                }

                v718 = v237;
                if (v714)
                {
                  v68 = v240;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v232 = v697 - 1;
                LODWORD(v27) = v709;
                if (v697 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 26:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v455 = v728;
              while (1)
              {
                v707 = v455;
                do
                {
                  _Q5.i32[0] = 1.0;
                  _S4 = 1.0;
                  if (v62)
                  {
                    __asm { FCMP            H0, #0 }

                    if (_NF ^ _VF | _ZF)
                    {
                      goto LABEL_656;
                    }

                    __asm { FCVT            S4, H0 }
                  }

                  _Q6.i16[0] = *(v69 + 6);
                  if (!v23)
                  {
                    goto LABEL_654;
                  }

                  __asm { FCMP            H6, #0 }

                  if (!_ZF & _CF)
                  {
                    __asm { FCVT            S5, H6 }

LABEL_654:
                    a3.n128_u16[0] = *v68;
                    _Q1.n128_u16[0] = *(v68 + 2);
                    a5.n128_u16[0] = *(v68 + 4);
                    _D3.i16[0] = *(v68 + 6);
                    a10.i16[0] = *v69;
                    *v69 = PDAluminosityPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v69, *(v69 + 2), HIWORD(*(v69 + 2)), _Q5.f32[0]);
                    *(v69 + 2) = _Q1.n128_u16[0];
                    *(v69 + 4) = a5.n128_u16[0];
                    goto LABEL_655;
                  }

                  *v69 = *v68;
                  *(v69 + 4) = *(v68 + 4);
                  __asm { FCVT            H3, S4 }

LABEL_655:
                  *(v69 + 6) = _D3.i16[0];
LABEL_656:
                  v458 = v68 + 8 * v689;
                  if (v458 >= v63)
                  {
                    v459 = -v693;
                  }

                  else
                  {
                    v459 = 0;
                  }

                  v68 = v458 + 8 * v459;
                  v69 += 8 * v689;
                  LODWORD(v27) = v27 - 1;
                }

                while (v27);
                v69 += 8 * v712;
                v460 = v718;
                v461 = v718 + 8 * v716;
                v462 = -(v716 * v691);
                if (v461 < v714)
                {
                  v462 = 0;
                }

                v463 = v461 + 8 * v462;
                v464 = v63 + 8 * v462 + 8 * v716;
                if (v714)
                {
                  v63 = v464;
                  v460 = v463;
                }

                v718 = v460;
                if (v714)
                {
                  v68 = v463;
                }

                else
                {
                  v68 += 8 * v716;
                }

                v455 = v707 - 1;
                LODWORD(v27) = v709;
                if (v707 == 1)
                {
                  goto LABEL_668;
                }
              }

            case 27:
              v687 = v45;
              v688 = v47;
              v686 = v46;
              v88 = v728;
              break;
            default:
              goto LABEL_671;
          }

          break;
        }

LABEL_64:
        v695 = v88;
        while (1)
        {
          _S4 = 1.0;
          _Q5.i32[0] = 1.0;
          if (!v62)
          {
            goto LABEL_68;
          }

          __asm { FCMP            H0, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            break;
          }

LABEL_74:
          v91 = v68 + 8 * v689;
          if (v91 >= v63)
          {
            v92 = -v693;
          }

          else
          {
            v92 = 0;
          }

          v68 = v91 + 8 * v92;
          v69 += 8 * v689;
          LODWORD(v27) = v27 - 1;
          if (!v27)
          {
            v69 += 8 * v712;
            v93 = v718;
            v94 = v718 + 8 * v716;
            v95 = -(v716 * v691);
            if (v94 < v714)
            {
              v95 = 0;
            }

            v96 = v94 + 8 * v95;
            v97 = v63 + 8 * v95 + 8 * v716;
            if (v714)
            {
              v63 = v97;
              v93 = v96;
            }

            v718 = v93;
            if (v714)
            {
              v68 = v96;
            }

            else
            {
              v68 += 8 * v716;
            }

            v88 = v695 - 1;
            LODWORD(v27) = v709;
            if (v695 == 1)
            {
              goto LABEL_668;
            }

            goto LABEL_64;
          }
        }

        __asm { FCVT            S5, H0 }

LABEL_68:
        _D3.i16[0] = *(v69 + 6);
        if (v23)
        {
          __asm { FCMP            H3, #0 }

          if (!(!_ZF & _CF))
          {
            *v69 = *v68;
            *(v69 + 4) = *(v68 + 4);
            __asm { FCVT            H3, S5 }

LABEL_73:
            *(v69 + 6) = _D3.i16[0];
            goto LABEL_74;
          }

          __asm { FCVT            S4, H3 }
        }

        a3.n128_u16[0] = *v69;
        _Q1.n128_u16[0] = *(v69 + 2);
        a5.n128_u16[0] = *(v69 + 4);
        *v69 = PDAluminosityPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, v48, v49, *v68, HIWORD(*v68), *(v68 + 4), _Q5.f32[0]);
        *(v69 + 2) = _Q1.n128_u16[0];
        *(v69 + 4) = a5.n128_u16[0];
        goto LABEL_73;
      }

      if (v45)
      {
        v692 = 0;
        v66 = v50 % v693;
        v716 = *(a2 + 76) >> 3;
        v67 = v45 + 8 * v52 * (v51 % v691);
        v68 = v67 + 8 * v66;
        v63 = v67 + 8 * v693;
        v689 = 1;
        v718 = v68;
        v69 = *(a2 + 40) + 8 * v46 * *(a2 + 16) + 8 * *(a2 + 12);
        v70 = v27;
        v684 = v51 % v691;
        v685 = v66;
        goto LABEL_56;
      }

      v684 = *(a2 + 60);
      v685 = *(a2 + 56);
      v63 = 0;
      v689 = 1;
      v70 = v27;
    }

    v714 = 0;
    v692 = 0;
    v718 = 0;
    v716 = v52 - v70;
    v68 = v45;
    v69 = v47;
    goto LABEL_56;
  }

  LODWORD(v727) = *(a2 + 8);
  HIDWORD(v727) = v27;
  v33 = *(a2 + 88);
  _D18.i32[0] = *v33;
  LOWORD(_S19) = *(v33 + 4);
  LOWORD(_S9) = *(v33 + 6);
  __asm { FCVT            S20, H9 }

  a3.n128_f32[0] = 1.0 - _S20;
  v708 = a3.n128_u64[0];
  v711 = _S9;
  v39 = *(a2 + 12);
  v694 = *(a2 + 28);
  v40 = v694 >> 3;
  v41 = *(a2 + 40) + 8 * (v694 >> 3) * *(a2 + 16);
  v42 = v41 + 8 * v39;
  v715 = _S19;
  v717 = _D18;
  v713 = _S20;
  if (v31)
  {
    shape_enum_clip_alloc(a1, a2, v31, 1, 1, 1, *(a2 + 104), *(a2 + 108), v27, v29);
    v44 = v43;
    if (!v43)
    {
      return 1;
    }

    goto LABEL_1015;
  }

  v64 = v27;
  v44 = 0;
  v65 = (v41 + 8 * v39);
LABEL_746:
  v505 = v40 - v64;
  switch(v24)
  {
    case 0:
      v506 = v727;
      v507 = 8 * v64;
      v508 = v694 & 0xFFFFFFF8;
      goto LABEL_1028;
    case 1:
      v600 = *(v26 + 88);
      if (v600)
      {
        CGSFillDRAM64(v65, v694 & 0xFFFFFFF8, 8 * v64, v727, v600, 8, 8, 1, 0, 0);
        if (!v44)
        {
          return 1;
        }

        goto LABEL_1014;
      }

      v506 = v727;
      v508 = v694 & 0xFFFFFFF8;
      v507 = 8 * v64;
LABEL_1028:
      CGBlt_fillBytes(v507, v506, 0, v65, v508);
      if (v44)
      {
        goto LABEL_1014;
      }

      return 1;
    case 2:
      v589 = v727;
      v724 = _D18.i32[0];
      v725 = _S19;
      v726 = _S9;
      if (use_vImage_fp16_compositing(void)::predicate != -1)
      {
        dispatch_once(&use_vImage_fp16_compositing(void)::predicate, &__block_literal_global_21944);
        _S20 = v713;
        LOWORD(_S19) = v715;
        _D18 = v717;
      }

      if (use_vImage_fp16_compositing(void)::status == 1)
      {
        v728 = 66051;
        *&v732 = v65;
        *(&v732 + 1) = v589;
        *&v733 = v64;
        *(&v733 + 1) = v694 & 0xFFFFFFFFFFFFFFF8;
        v729 = &v724;
        v730 = vdupq_n_s64(1uLL);
        v731 = 8;
        v720 = v44;
        v721 = v589;
        v722 = v64;
        v723 = v64;
        vImageCGCompositeConstShape_ARGB16F();
        v26 = a2;
      }

      else
      {
        v677.i64[0] = vcvtq_f32_f16(_D18).u64[0];
        v675 = vdupq_lane_s32(v708, 0);
        __asm { FCVT            S2, H19 }

        v677.i64[1] = __PAIR64__(LODWORD(_S20), _S2);
        v26 = a2;
        do
        {
          if (v64 >= 1)
          {
            v678 = v64 + 1;
            do
            {
              *v65 = vcvt_f16_f32(vmlaq_f32(v677, v675, vcvtq_f32_f16(*v65)));
              ++v65;
              --v678;
            }

            while (v678 > 1);
          }

          v65 += v505;
          _VF = __OFSUB__(v589--, 1);
        }

        while (!((v589 < 0) ^ _VF | (v589 == 0)));
      }

      goto LABEL_1012;
    case 3:
      v594 = v727;
      v595.i32[0] = _D18.i32[0];
      v595.i16[2] = _S19;
      v595.i16[3] = _S9;
      do
      {
        v596 = v64;
        do
        {
          __asm { FCMP            H3, #0 }

          if (!_ZF & _CF)
          {
            if (_H3 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v65->i32[0] = _D18.i32[0];
              v65->i16[2] = _S19;
              v65->i16[3] = _S9;
            }

            else
            {
              *v65 = vmul_n_f16(v595, _H3);
            }
          }

          else
          {
            *v65 = 0;
          }

          ++v65;
          --v596;
        }

        while (v596);
        v65 += v505;
        --v594;
      }

      while (v594);
      goto LABEL_998;
    case 4:
      v564.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S2, H19 }

      v563 = v727;
      v564.i64[1] = __PAIR64__(LODWORD(_S20), _S2);
      do
      {
        v565 = v64;
        do
        {
          _H3 = v65->i16[3];
          __asm { FCVT            S3, H3 }

          v568 = 1.0 - _S3;
          if (v568 <= 0.0)
          {
            *v65 = 0;
          }

          else if (v568 >= 1.0)
          {
            v65->i32[0] = _D18.i32[0];
            v65->i16[2] = _S19;
            v65->i16[3] = _S9;
          }

          else
          {
            *v65 = vcvt_f16_f32(vmulq_n_f32(v564, v568));
          }

          ++v65;
          --v565;
        }

        while (v565);
        v65 += v505;
        --v563;
      }

      while (v563);
      goto LABEL_998;
    case 5:
      v610.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v609 = v727;
      v610.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v611 = v64;
        do
        {
          v612 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_laneq_f32(vmulq_n_f32(v612, *v708.i32), v610, v612, 3));
          --v611;
        }

        while (v611);
        v65 += v505;
        --v609;
      }

      while (v609);
      goto LABEL_998;
    case 6:
      __asm { FCVT            S0, H18; jumptable 0000000183F4B300 case 6 }

      _H1 = _D18.i16[1];
      __asm
      {
        FCVT            S2, H1
        FCVT            S3, H19
      }

      v625 = v727;
      while (1)
      {
        v626 = v64;
        do
        {
          _H5 = v65->i16[3];
          __asm { FCVT            S5, H5 }

          v629 = 1.0 - _S5;
          if ((1.0 - _S5) >= 1.0)
          {
            v65->i32[0] = _D18.i32[0];
            _H5 = _S9;
            v65->i16[2] = _S19;
          }

          else
          {
            if (v629 <= 0.0)
            {
              goto LABEL_938;
            }

            _H7 = v65->i16[0];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S0 * v629);
            __asm { FCVT            H7, S7 }

            v65->i16[0] = LOWORD(_S7);
            LOWORD(_S7) = v65->i16[1];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S2 * v629);
            __asm { FCVT            H7, S7 }

            v65->i16[1] = LOWORD(_S7);
            LOWORD(_S7) = v65->i16[2];
            __asm { FCVT            S7, H7 }

            _S7 = _S7 + (_S3 * v629);
            __asm { FCVT            H7, S7 }

            v65->i16[2] = LOWORD(_S7);
            _S5 = _S5 + (_S20 * v629);
            __asm { FCVT            H5, S5 }
          }

          v65->i16[3] = _H5;
LABEL_938:
          ++v65;
          --v626;
        }

        while (v626);
        v65 += v505;
        if (!--v625)
        {
LABEL_998:
          LODWORD(v727) = 0;
          if (!v44)
          {
            return 1;
          }

LABEL_1014:
          v719 = 0;
LABEL_1015:
          a1 = shape_enum_clip_next(v44, &v719 + 1, &v719, &v727 + 1, &v727);
          if (a1)
          {
            v65 = (v42 + 8 * v40 * v719 + 8 * SHIDWORD(v719));
            v64 = HIDWORD(v727);
            _S19 = v715;
            _D18 = v717;
            _S9 = v711;
            _S20 = v713;
            goto LABEL_746;
          }

          v465 = v44;
LABEL_1018:
          free(v465);
          return 1;
        }
      }

    case 7:
      v598 = v727;
      do
      {
        v599 = v64;
        do
        {
          *v65 = vmul_n_f16(*v65, *&_S9);
          ++v65;
          --v599;
        }

        while (v599);
        v65 += v505;
        --v598;
      }

      while (v598);
      goto LABEL_998;
    case 8:
      v648 = v727;
      do
      {
        v649 = v64;
        do
        {
          *v65 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v65), *v708.i32));
          ++v65;
          --v649;
        }

        while (v649);
        v65 += v505;
        --v648;
      }

      while (v648);
      goto LABEL_998;
    case 9:
      v578.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v577 = v727;
      v578.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v579 = v64;
        do
        {
          v580 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v580, _S20), v578, 1.0 - v580.f32[3]));
          --v579;
        }

        while (v579);
        v65 += v505;
        --v577;
      }

      while (v577);
      goto LABEL_998;
    case 10:
      v645.i64[0] = vcvtq_f32_f16(_D18).u64[0];
      __asm { FCVT            S1, H19 }

      v644 = v727;
      v645.i64[1] = __PAIR64__(LODWORD(_S20), _S1);
      do
      {
        v646 = v64;
        do
        {
          v647 = vcvtq_f32_f16(*v65);
          *v65++ = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v647, *v708.i32), v645, 1.0 - v647.f32[3]));
          --v646;
        }

        while (v646);
        v65 += v505;
        --v644;
      }

      while (v644);
      goto LABEL_998;
    case 11:
      __asm { FCVT            S0, H18; jumptable 0000000183F4B300 case 11 }

      v537 = _S20 - _S0;
      _H1 = _D18.i16[1];
      __asm { FCVT            S1, H1 }

      v540 = _S20 - _S1;
      __asm { FCVT            S2, H19 }

      v542 = _S20 - _S2;
      v543 = v727;
      do
      {
        v544 = v64;
        do
        {
          _S4 = 1.0;
          _S5 = 1.0;
          if (v23)
          {
            _H3 = v65->i16[3];
            __asm { FCVT            S5, H3 }
          }

          _S3 = _S5 + _S20;
          if ((_S5 + _S20) > 1.0)
          {
            _S3 = 1.0;
          }

          if (v23)
          {
            _H4 = v65->i16[3];
            __asm { FCVT            S4, H4 }
          }

          _H6 = v65->i16[0];
          __asm { FCVT            S6, H6 }

          v552 = v537 + (_S5 - _S6);
          _H5 = v65->i16[1];
          _S6 = _S3 - v552;
          __asm { FCVT            H6, S6 }

          v65->i16[0] = LOWORD(_S6);
          if (v23)
          {
            _H6 = v65->i16[3];
            __asm { FCVT            S6, H6 }
          }

          else
          {
            _S6 = 1.0;
          }

          __asm { FCVT            S5, H5 }

          v558 = v540 + (_S4 - _S5);
          LOWORD(_S5) = v65->i16[2];
          __asm { FCVT            S5, H5 }

          _S4 = _S3 - v558;
          __asm { FCVT            H4, S4 }

          v65->i16[1] = LOWORD(_S4);
          __asm { FCVT            H4, S3 }

          v65->i16[3] = LOWORD(_S4);
          _S3 = _S3 - (v542 + (_S6 - _S5));
          __asm { FCVT            H3, S3 }

          v65->i16[2] = LOWORD(_S3);
          ++v65;
          --v544;
        }

        while (v544);
        v65 += v505;
        --v543;
      }

      while (v543);
      goto LABEL_998;
    case 12:
      v569 = v727;
      do
      {
        v570 = v64;
        do
        {
          v571 = *&v65->i16[1];
          *v65->i16 = *_D18.i16 + *v65->i16;
          *&v65->i16[1] = *&_D18.i16[1] + v571;
          _H2 = v65->i16[3];
          __asm { FCVT            S2, H2 }

          _S2 = _S20 + _S2;
          if (_S2 > 1.0)
          {
            _S2 = 1.0;
          }

          *&v65->i16[2] = *&_S19 + *&v65->i16[2];
          __asm { FCVT            H2, S2 }

          v65->i16[3] = _H2;
          ++v65;
          --v570;
        }

        while (v570);
        v65 += v505;
        --v569;
      }

      while (v569);
      goto LABEL_998;
    case 13:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 13 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v617 = _D18.i16[1];
      v618 = v727;
      while (1)
      {
        v619 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v617;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_928;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAmultiplyPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v617, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_928:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v619;
        }

        while (v619);
        v65 += v505;
        if (!--v618)
        {
          goto LABEL_1011;
        }
      }

    case 14:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 14 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      __asm { FCVT            S0, H18 }

      _H1 = _D18.i16[1];
      __asm
      {
        FCVT            S2, H1
        FCVT            S3, H19
      }

      v522 = v727;
      while (1)
      {
        v523 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H5, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i32[0] = _D18.i32[0];
              v65->i16[2] = _S19;
              v65->i16[3] = _H9;
              goto LABEL_781;
            }

            __asm { FCVT            S5, H5 }
          }

          else
          {
            _S5 = 1.0;
          }

          _H6 = v65->i16[0];
          _H7 = v65->i16[1];
          _H16 = v65->i16[2];
          __asm
          {
            FCVT            S6, H6
            FCVT            S7, H7
            FCVT            S16, H16
          }

          _S6 = _S6 + (_S0 * (1.0 - _S6));
          _S7 = _S7 + (_S2 * (1.0 - _S7));
          _S16 = _S16 + (_S3 * (1.0 - _S16));
          _S5 = (_S5 + _S20) - (_S5 * _S20);
          __asm
          {
            FCVT            H6, S6
            FCVT            H7, S7
            FCVT            H16, S16
          }

          v65->i16[0] = LOWORD(_S6);
          v65->i16[1] = LOWORD(_S7);
          __asm { FCVT            H5, S5 }

          v65->i16[2] = LOWORD(_S16);
          v65->i16[3] = LOWORD(_S5);
LABEL_781:
          ++v65;
          --v523;
        }

        while (v523);
        v65 += v505;
        if (!--v522)
        {
          goto LABEL_998;
        }
      }

    case 15:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 15 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v590 = _D18.i16[1];
      v591 = v727;
      while (1)
      {
        v592 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v590;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_857;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAoverlayPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v590, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_857:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v592;
        }

        while (v592);
        v65 += v505;
        if (!--v591)
        {
          goto LABEL_1011;
        }
      }

    case 16:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 16 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v513 = _D18.i16[1];
      v514 = v727;
      while (1)
      {
        v515 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v513;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_769;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v679) = _S9;
          LOWORD(v679) = _S19;
          a3.n128_u16[0] = PDAdarkenPDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v679, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_769:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v515;
        }

        while (v515);
        v65 += v505;
        if (!--v514)
        {
          goto LABEL_1011;
        }
      }

    case 17:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 17 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v601 = _D18.i16[1];
      v602 = v727;
      while (1)
      {
        v603 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v601;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_887;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v680) = _S9;
          LOWORD(v680) = _S19;
          a3.n128_u16[0] = PDAlightenPDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v680, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_887:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v603;
        }

        while (v603);
        v65 += v505;
        if (!--v602)
        {
          goto LABEL_1011;
        }
      }

    case 18:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 18 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v639 = _D18.i16[1];
      v640 = v727;
      while (1)
      {
        v641 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v639;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_950;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAcolordodgePDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v639, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_950:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v641;
        }

        while (v641);
        v65 += v505;
        if (!--v640)
        {
          goto LABEL_1011;
        }
      }

    case 19:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 19 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v654 = _D18.i16[1];
      v655 = v727;
      do
      {
        v656 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v654;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_984;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAcolorburnPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v654, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_984:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v656;
        }

        while (v656);
        v65 += v505;
        --v655;
      }

      while (v655);
LABEL_1011:
      LODWORD(v727) = 0;
LABEL_1012:
      LODWORD(v24) = v690;
LABEL_1013:
      if (v44)
      {
        goto LABEL_1014;
      }

      return 1;
    case 20:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 20 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v605 = _D18.i16[1];
      v606 = v727;
      while (1)
      {
        v607 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v605;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_899;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _Q4.i32[0] = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAsoftlightPDA(a3, _Q1.n128_u64[0], a5, _D3, *_Q4.i64, *_Q5.i64, *_Q6.i8, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v605, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_899:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v607;
        }

        while (v607);
        v65 += v505;
        if (!--v606)
        {
          goto LABEL_1011;
        }
      }

    case 21:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 21 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v613 = _D18.i16[1];
      v614 = v727;
      while (1)
      {
        v615 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v613;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_916;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAhardlightPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v613, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_916:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v615;
        }

        while (v615);
        v65 += v505;
        if (!--v614)
        {
          goto LABEL_1011;
        }
      }

    case 22:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 22 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v650 = _D18.i16[1];
      v651 = v727;
      while (1)
      {
        v652 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v650;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_972;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          HIWORD(v681) = _S9;
          LOWORD(v681) = _S19;
          a3.n128_u16[0] = PDAdifferencePDA(a3, _Q1.n128_f64[0], a5.n128_f64[0], *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v681, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_972:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v652;
        }

        while (v652);
        v65 += v505;
        if (!--v651)
        {
          goto LABEL_1011;
        }
      }

    case 23:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 23 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v659 = v727;
      v660 = vdup_lane_s16(_D18, 1);
      __asm { FCVT            S1, H18 }

      v660.i16[1] = _S19;
      v662 = vcvtq_f32_f16(v660).u64[0];
      while (1)
      {
        v663 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H5, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i32[0] = _D18.i32[0];
              _H5 = _H9;
              v65->i16[2] = _S19;
              goto LABEL_996;
            }

            __asm { FCVT            S5, H5 }
          }

          else
          {
            _S5 = 1.0;
          }

          _H6 = v65->i16[0];
          a10.i32[0] = *(v65->i32 + 2);
          __asm { FCVT            S6, H6 }

          _S6 = (_S6 + _S1) + ((_S6 * _S1) * -2.0);
          _S5 = (_S5 + _S20) - (_S5 * _S20);
          __asm { FCVT            H6, S6 }

          v670 = vcvtq_f32_f16(*a10.f32).u64[0];
          *v18.f32 = vmla_f32(vadd_f32(v670, v662), 0xC0000000C0000000, vmul_f32(v670, v662));
          *a10.f32 = vcvt_f16_f32(v18);
          v65->i16[0] = LOWORD(_S6);
          __asm { FCVT            H5, S5 }

          *(v65->i32 + 2) = a10.i32[0];
LABEL_996:
          v65->i16[3] = _H5;
          ++v65;
          --v663;
        }

        while (v663);
        v65 += v505;
        if (!--v659)
        {
          goto LABEL_998;
        }
      }

    case 24:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 24 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v585 = _D18.i16[1];
      v586 = v727;
      while (1)
      {
        v587 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v585;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_841;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAhuePDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v585, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_841:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v587;
        }

        while (v587);
        v65 += v505;
        if (!--v586)
        {
          goto LABEL_1011;
        }
      }

    case 25:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 25 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v581 = _D18.i16[1];
      v582 = v727;
      while (1)
      {
        v583 = v64;
        do
        {
          _D3.i16[0] = v65->i16[3];
          if (v23)
          {
            __asm { FCMP            H3, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v581;
              _D3.i32[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_829;
            }

            __asm { FCVT            S4, H3 }
          }

          else
          {
            _S4 = 1.0;
          }

          a3.n128_u16[0] = v65->i16[0];
          _Q1.n128_u16[0] = v65->u16[1];
          a5.n128_u16[0] = v65->u16[2];
          a3.n128_u16[0] = PDAsaturationPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v581, _S19, _S20);
          _S9 = v711;
          _S20 = v713;
          LOWORD(_S19) = v715;
          _D18.i16[0] = v717.i16[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_829:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v583;
        }

        while (v583);
        v65 += v505;
        if (!--v582)
        {
          goto LABEL_1011;
        }
      }

    case 26:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 26 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      LOWORD(v16) = _D18.i16[1];
      v672 = v727;
      while (1)
      {
        v673 = v64;
        do
        {
          if (v23)
          {
            __asm { FCMP            H0, #0 }

            if (!(!_ZF & _CF))
            {
              v65->i16[0] = _D18.i16[0];
              v65->i16[1] = v16;
              _D3.i16[0] = _S9;
              v65->i16[2] = _S19;
              goto LABEL_1009;
            }

            __asm { FCVT            S1, H0 }
          }

          else
          {
            _Q1.n128_u32[0] = 1.0;
          }

          v682 = _Q1.n128_f32[0];
          a3.n128_u32[0] = _D18.i32[0];
          _Q1.n128_u32[0] = v16;
          a5.n128_u32[0] = _S19;
          _D3.i32[0] = _S9;
          a3.n128_u16[0] = PDAluminosityPDA(a3, _Q1, a5, *&_D3, _S20, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, v65->i16[0], *(v65->i32 + 2), HIWORD(*(v65->i32 + 2)), v682);
          _S9 = v711;
          _S20 = v713;
          _S19 = v715;
          _D18.i32[0] = v717.i32[0];
          v65->i16[0] = a3.n128_u16[0];
          v65->i16[1] = _Q1.n128_u16[0];
          v65->i16[2] = a5.n128_u16[0];
LABEL_1009:
          v65->i16[3] = _D3.i16[0];
          ++v65;
          --v673;
        }

        while (v673);
        v65 += v505;
        if (!--v672)
        {
          goto LABEL_1011;
        }
      }

    case 27:
      __asm { FCMP            H9, #0; jumptable 0000000183F4B300 case 27 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_1013;
      }

      v509 = _D18.i16[1];
      v510 = v727;
      break;
    default:
      goto LABEL_1013;
  }

LABEL_750:
  v511 = v64;
  while (1)
  {
    _D3.i16[0] = v65->i16[3];
    if (!v23)
    {
      break;
    }

    __asm { FCMP            H3, #0 }

    if (!_ZF & _CF)
    {
      __asm { FCVT            S4, H3 }

LABEL_756:
      a3.n128_u16[0] = v65->i16[0];
      _Q1.n128_u16[0] = v65->u16[1];
      a5.n128_u16[0] = v65->u16[2];
      a3.n128_u16[0] = PDAluminosityPDA(a3, _Q1, a5, *&_D3, _S4, *_Q5.i64, *_Q6.i64, *a10.i64, a1, a2, v31, a12, a13, a14, a15, a16, _D18.i16[0], v509, _S19, _S20);
      _S9 = v711;
      _S20 = v713;
      LOWORD(_S19) = v715;
      _D18.i16[0] = v717.i16[0];
      v65->i16[0] = a3.n128_u16[0];
      v65->i16[1] = _Q1.n128_u16[0];
      v65->i16[2] = a5.n128_u16[0];
      goto LABEL_757;
    }

    v65->i16[0] = _D18.i16[0];
    v65->i16[1] = v509;
    _D3.i32[0] = _S9;
    v65->i16[2] = _S19;
LABEL_757:
    v65->i16[3] = _D3.i16[0];
    ++v65;
    if (!--v511)
    {
      v65 += v505;
      if (!--v510)
      {
        goto LABEL_1011;
      }

      goto LABEL_750;
    }
  }

  _S4 = 1.0;
  goto LABEL_756;
}

uint64_t img_interpolate_stage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8)
{
  v10 = a2;
  v100 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *a1 = a2;
  if (*(a2 + 8))
  {
    *(a1 + 8) = img_interpolate_extent;
  }

  *(a1 + 16) = img_interpolate_read;
  *(a1 + 24) = img_interpolate_end;
  *(a1 + 48) = a5;
  *(a1 + 52) = a6;
  v12 = *(a2 + 36);
  *(a1 + 32) = 2;
  *(a1 + 36) = v12;
  v13 = *(a2 + 40);
  *(a1 + 40) = v13;
  if (a4 == 3)
  {
    if (v12 == 1)
    {
      v14 = 4 * (*(a3 + 16) == 0);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 4;
  }

  v15 = v13;
  if (v13 == 32)
  {
    v16 = v14 | 2;
  }

  else if (a7 == 5 || v13 != 16)
  {
    v17 = v13 == 16 && a7 == 5;
    if (v17)
    {
      v16 = v14 | 8;
    }

    else
    {
      v16 = v14;
    }
  }

  else
  {
    v16 = v14 | 1;
  }

  v18 = *(a2 + 48);
  v19.i64[0] = v18;
  v19.i64[1] = __PAIR64__(a6, a5);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v19))))
  {
    return v10;
  }

  v20 = v18;
  v21 = HIDWORD(v18);
  if (v18 == __PAIR64__(a6, a5))
  {
    return v10;
  }

  if ((v16 & 0xA) != 0)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if ((v16 & 4) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = -1;
  }

  v24 = ((__PAIR64__(a6, v16 & 4) - 1) >> 32);
  v25 = ((__PAIR64__(v21, v16 & 4) - 1) >> 32);
  v26 = v24 / v25;
  v27 = v21;
  if (v24 / v25 != 0.0)
  {
    if (COERCE_UNSIGNED_INT64(fabs(v24 / v25)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = 4;
      goto LABEL_32;
    }

    if (v26 <= 1.0)
    {
      v35 = v24 / v25;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = 1.0 / v35 + 1.0;
    if ((v16 & 4) == 0)
    {
      v36 = 4.0 / v35;
    }

    v27 = vcvtpd_s64_f64(v36);
    if (v27 >= 0x10000)
    {
      return v10;
    }
  }

  v28 = (v27 + 3) & 0xFFFFFFFC;
  if (v28 < 1)
  {
    return v10;
  }

LABEL_32:
  if ((v16 & 0xA) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  if (v20 == v21 && a5 == a6)
  {
    v95 = a8;
    v97 = 0;
    v30 = 0;
    v31 = v26;
    goto LABEL_51;
  }

  v32 = (v23 + a5);
  v33 = (v20 + v23);
  v31 = v32 / v33;
  v34 = v20;
  if (v32 / v33 == 0.0)
  {
    goto LABEL_39;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v32 / v33)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v31 <= 1.0)
    {
      v60 = v32 / v33;
    }

    else
    {
      v60 = 1.0;
    }

    v61 = 1.0 / v60 + 1.0;
    if ((v16 & 4) == 0)
    {
      v61 = 4.0 / v60;
    }

    v34 = vcvtpd_s64_f64(v61);
    if (v34 >= 0x10000)
    {
      return v10;
    }

LABEL_39:
    v97 = (v34 + 3) & 0xFFFFFFFC;
    if (v97 < 1)
    {
      return v10;
    }

    goto LABEL_50;
  }

  v97 = 4;
LABEL_50:
  v95 = a8;
  v30 = ((v97 << v29) + 8) * a5;
LABEL_51:
  v94 = v30;
  v93 = (((v28 << v29) + 8) * a6);
  v98 = v28;
  v37 = malloc_type_calloc(1uLL, v93 + v30 + 160, 0x10A00404EC14D9CuLL);
  v38 = v98;
  if (v37)
  {
    v37[19] = a6;
    v37[20] = v22;
    if ((v16 & 9) != 0)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    v40 = 4;
    v37[18] = a5;
    if ((v16 & 2) != 0)
    {
      v39 = 4;
    }

    v37[24] = v39;
    v37[25] = v20;
    v37[26] = v21;
    if ((v16 & 2) == 0)
    {
      if ((v16 & 8) != 0)
      {
        v40 = 5;
      }

      else if (v16)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }
    }

    v37[21] = v40;
    v37[29] = v95;
    v41 = v97;
    if (v98 > v97)
    {
      v41 = v98;
    }

    v42 = 8 * v41 + 32;
    v96 = v37;
    if (v42 < 0x401)
    {
      v91 = v20;
      v44 = v99;
      v45 = v21;
LABEL_69:
      v46 = ((v37 + 143) & 0xFFFFFFFFFFFFFFF0);
      *v37 = v46;
      v37[23] = v38;
      v17 = v22 == 4;
      v47 = v44;
      if (v17)
      {
        v48 = resample_filter_linear_float;
        if ((v16 & 4) == 0)
        {
          v48 = resample_filter_float;
        }

        v48((v37 + 143) & 0xFFFFFFFFFFFFFFF0, v38, a6, v44, v45, 0.0, v26);
        resample_filter_float_normalize(v46, v98, a6, v21);
      }

      else
      {
        v49 = resample_filter_linear;
        if ((v16 & 4) == 0)
        {
          v49 = resample_filter;
        }

        v49((v37 + 143) & 0xFFFFFFFFFFFFFFF0, v38, a6, v44, v45, 0.0, v26);
        resample_filter_normalize(v46, v98, a6, v21);
      }

      v50 = v96;
      if (v94)
      {
        v51 = (v46 + v93);
        *(v96 + 1) = v46 + v93;
        v96[22] = v97;
        v52 = v96[25];
        if (v96[20] == 4)
        {
          v53 = resample_filter_linear_float;
          if ((v16 & 4) == 0)
          {
            v53 = resample_filter_float;
          }

          v53(v51, v97, a5, v47, v52, 0.0, v31);
          resample_filter_float_normalize(v51, v97, a5, v91);
        }

        else
        {
          v54 = resample_filter_linear;
          if ((v16 & 4) == 0)
          {
            v54 = resample_filter;
          }

          v54(v51, v97, a5, v47, v52, 0.0, v31);
          resample_filter_normalize(v51, v97, a5, v91);
        }

        v50 = v96;
      }

      else
      {
        *(v96 + 1) = v46;
        v96[22] = v98;
      }

      if (v47 != v99)
      {
        free(v47);
        v50 = v96;
      }

      v55 = *(a1 + 44);
      if (v55 > 3)
      {
        if (v55 != 4)
        {
          if (v55 != 8)
          {
            if (v55 != 9)
            {
LABEL_110:
              v56 = 0;
              v58 = 0;
              v59 = 0;
              *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
              v57 = 1;
LABEL_111:
              v62 = v12;
              if ((v12 - 256) < 0xFFFFFFFFFFFFFF01)
              {
LABEL_112:
                resample_destroy(v50);
                return 0;
              }

              v64 = *(v50 + 96);
              if (v64 != 4)
              {
                if (v64 != 2)
                {
                  if (v64 != 1 || !v12)
                  {
                    goto LABEL_112;
                  }

                  if (v56)
                  {
                    if (v12 == 1)
                    {
                      goto LABEL_112;
                    }

                    if (v12 == 4)
                    {
                      *(v50 + 16) = resample_byte_v_3cpp_ap;
                      *(v50 + 112) = 65539;
                      v65 = resample_byte_h_3cpp_ap;
                    }

                    else
                    {
                      *(v50 + 16) = resample_byte_v_Ncpp_ap;
                      *(v50 + 112) = v12 - 1;
                      *(v50 + 114) = 1;
                      if (v12 == 5)
                      {
                        v65 = resample_byte_h_4cpp_ap;
                      }

                      else if (v12 == 2)
                      {
                        v65 = resample_byte_h_1cpp_ap;
                      }

                      else
                      {
                        v65 = resample_byte_h_Ncpp_ap;
                      }
                    }

LABEL_198:
                    *(v50 + 24) = v65;
                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                    {
                      dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                      v50 = v96;
                    }

                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result != 1)
                    {
                      if ((v56 & 1) == 0)
                      {
                        if (*(v50 + 72) * v12 >= 0x10)
                        {
                          v80 = v12 == 1 ? 1 : v57;
                          v81 = resample_byte_v_Ncpp_armv7;
                          if (v80)
                          {
                            goto LABEL_210;
                          }

                          v82 = v58 ^ 1;
                          v81 = resample_byte_v_3cpp_af_armv7;
                          if (v12 != 4)
                          {
                            v82 = 1;
                          }

                          if ((v82 & 1) == 0)
                          {
LABEL_210:
                            *(v50 + 16) = v81;
                            *(v50 + 120) = 1;
                          }
                        }

                        if (*(v50 + 88) >= 4u)
                        {
                          v83 = resample_byte_h_3cpp_armv7;
                          if (v12 != 3)
                          {
                            if (v12 != 4)
                            {
                              goto LABEL_229;
                            }

                            v83 = resample_byte_h_4cpp_armv7;
                          }

                          *(v50 + 24) = v83;
                          *(v50 + 120) = 1;
                        }
                      }

LABEL_229:
                      v84 = *(v50 + 92);
                      v85 = (v84 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      if (v85 - v84 >= 2)
                      {
                        v86 = (v84 + 3) & 0xFFFFFFFC;
                      }

                      else
                      {
                        v86 = v85 | 2;
                      }

                      v87 = (4 * v12 * *(v50 + 72) + 15) & 0xFFFFFFFFFFFFFFF0;
                      v88 = *(v50 + 56);
                      v89 = v50;
                      if (v88)
                      {
                        v90 = malloc_type_realloc(v88, (v87 | 8) * v86, 0xA4EE092CuLL);
                      }

                      else
                      {
                        v90 = malloc_type_malloc((v87 | 8) * v86, 0xE2D5C0EEuLL);
                      }

                      *(v89 + 56) = v90;
                      v50 = v89;
                      if (v90)
                      {
                        *(v89 + 64) = &v90[v87 * v86];
                        *(v89 + 52) = v87;
                        *(v89 + 40) = v86;
                        *(v89 + 32) = 0;
                        *(v89 + 44) = 0;
                        *(v89 + 108) = v62 | (v59 << 8);
                        *(a1 + 88) = v89;
                        *(a1 + 96) = a7;
                        return a1;
                      }

                      goto LABEL_112;
                    }

                    goto LABEL_227;
                  }

                  v72 = v57 ^ 1;
                  if (v12 == 1)
                  {
                    v72 = 0;
                  }

                  if ((v72 & 1) == 0)
                  {
                    v73 = resample_byte_v_Ncpp;
                    goto LABEL_147;
                  }

                  if (v58)
                  {
                    v75 = resample_byte_v_3cpp_af;
                    if (v12 != 4)
                    {
                      v73 = resample_byte_v_Ncpp_af;
                      goto LABEL_147;
                    }
                  }

                  else
                  {
                    v75 = resample_byte_v_3cpp_al;
                    if (v12 != 4)
                    {
                      v73 = resample_byte_v_Ncpp_al;
LABEL_147:
                      *(v50 + 16) = v73;
                      *(v50 + 112) = v12;
                      if (v12 != 4)
                      {
                        if (v12 == 3)
                        {
                          v65 = resample_byte_h_3cpp;
                        }

                        else if (v12 == 1)
                        {
                          v65 = resample_byte_h_1cpp;
                        }

                        else
                        {
                          v65 = resample_byte_h_Ncpp;
                        }

                        goto LABEL_198;
                      }

LABEL_176:
                      v65 = resample_byte_h_4cpp;
                      goto LABEL_198;
                    }
                  }

                  *(v50 + 16) = v75;
                  *(v50 + 112) = v12;
                  goto LABEL_176;
                }

                v66 = *(v50 + 84);
                if (v66 == 5)
                {
                  v69 = resample_float16_select(v50, v12, v59);
                  goto LABEL_228;
                }

                if (v66 != 2)
                {
                  goto LABEL_229;
                }

                if (!v12)
                {
                  goto LABEL_112;
                }

                if (v56)
                {
                  if (v12 == 1)
                  {
                    goto LABEL_112;
                  }

                  if (v12 == 4)
                  {
                    *(v50 + 16) = resample_word_v_3cpp_ap;
                    *(v50 + 112) = 131078;
                    v67 = resample_word_h_3cpp_ap;
                  }

                  else
                  {
                    *(v50 + 16) = resample_word_v_Ncpp_ap;
                    *(v50 + 112) = 2 * v12 - 2;
                    *(v50 + 114) = 2;
                    if (v12 == 5)
                    {
                      v67 = resample_word_h_4cpp_ap;
                    }

                    else if (v12 == 2)
                    {
                      v67 = resample_word_h_1cpp_ap;
                    }

                    else
                    {
                      v67 = resample_word_h_Ncpp_ap;
                    }
                  }

LABEL_224:
                  *(v50 + 24) = v67;
                  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                  {
                    dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                    v50 = v96;
                  }

                  if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result != 1)
                  {
                    goto LABEL_229;
                  }

LABEL_227:
                  v69 = resample_select_template(v50, v12, v59);
LABEL_228:
                  v50 = v96;
                  if (!v69)
                  {
                    goto LABEL_112;
                  }

                  goto LABEL_229;
                }

                v76 = v57 ^ 1;
                if (v12 == 1)
                {
                  v76 = 0;
                }

                if ((v76 & 1) == 0)
                {
                  v77 = resample_word_v_Ncpp;
                  goto LABEL_161;
                }

                if (v58)
                {
                  v78 = resample_word_v_3cpp_af;
                  if (v12 != 4)
                  {
                    v77 = resample_word_v_Ncpp_af;
                    goto LABEL_161;
                  }
                }

                else
                {
                  v78 = resample_word_v_3cpp_al;
                  if (v12 != 4)
                  {
                    v77 = resample_word_v_Ncpp_al;
LABEL_161:
                    *(v50 + 16) = v77;
                    *(v50 + 112) = 2 * v12;
                    *(v50 + 114) = 0;
                    if (v12 != 4)
                    {
                      if (v12 == 3)
                      {
                        v67 = resample_word_h_3cpp;
                      }

                      else if (v12 == 1)
                      {
                        v67 = resample_word_h_1cpp;
                      }

                      else
                      {
                        v67 = resample_word_h_Ncpp;
                      }

                      goto LABEL_224;
                    }

LABEL_218:
                    v67 = resample_word_h_4cpp;
                    goto LABEL_224;
                  }
                }

                *(v50 + 16) = v78;
                *(v50 + 112) = 2 * v12;
                *(v50 + 114) = 0;
                goto LABEL_218;
              }

              if (!v12)
              {
                goto LABEL_112;
              }

              if (v56)
              {
                if (v12 == 1)
                {
                  goto LABEL_112;
                }

                if (v12 == 4)
                {
                  *(v50 + 16) = resample_float_v_3cpp_ap;
                  *(v50 + 112) = 262156;
                  v68 = resample_float_h_3cpp_ap;
                }

                else
                {
                  *(v50 + 16) = resample_float_v_Ncpp_ap;
                  *(v50 + 112) = 4 * v12 - 4;
                  *(v50 + 114) = 4;
                  if (v12 == 5)
                  {
                    v68 = resample_float_h_4cpp_ap;
                  }

                  else if (v12 == 2)
                  {
                    v68 = resample_float_h_1cpp_ap;
                  }

                  else
                  {
                    v68 = resample_float_h_Ncpp_ap;
                  }
                }

                goto LABEL_192;
              }

              v70 = v57 ^ 1;
              if (v12 == 1)
              {
                v70 = 0;
              }

              if ((v70 & 1) == 0)
              {
                v71 = resample_float_v_Ncpp;
                goto LABEL_139;
              }

              if (v58)
              {
                v74 = resample_float_v_3cpp_af;
                if (v12 != 4)
                {
                  v71 = resample_float_v_Ncpp_af;
                  goto LABEL_139;
                }
              }

              else
              {
                v74 = resample_float_v_3cpp_al;
                if (v12 != 4)
                {
                  v71 = resample_float_v_Ncpp_al;
LABEL_139:
                  *(v50 + 16) = v71;
                  *(v50 + 112) = 4 * v12;
                  *(v50 + 114) = 0;
                  if (v12 != 4)
                  {
                    if (v12 == 3)
                    {
                      v68 = resample_float_h_3cpp;
                    }

                    else if (v12 == 1)
                    {
                      v68 = resample_float_h_1cpp;
                    }

                    else
                    {
                      v68 = resample_float_h_Ncpp;
                    }

LABEL_192:
                    *(v50 + 24) = v68;
                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken != -1)
                    {
                      dispatch_once(&CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::onceToken, &__block_literal_global_3_13902);
                      v50 = v96;
                    }

                    if (CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result == 1)
                    {
                      v79 = resample_select_template(v50, v12, v59);
                      v50 = v96;
                      if (!v79)
                      {
                        goto LABEL_112;
                      }
                    }

                    goto LABEL_229;
                  }

LABEL_173:
                  v68 = resample_float_h_4cpp;
                  goto LABEL_192;
                }
              }

              *(v50 + 16) = v74;
              *(v50 + 112) = 4 * v12;
              *(v50 + 114) = 0;
              goto LABEL_173;
            }

            *(a1 + 44) = 8;
          }

          v57 = 0;
          v58 = 0;
          *(a1 + 56) = v15 / 8 * v12++ * *(v10 + 48);
          *(a1 + 60) = *(v10 + 48) * (v15 / 8);
          v59 = 3;
          v56 = 1;
          goto LABEL_111;
        }

        *(a1 + 44) = 2;
      }

      else
      {
        if (v55 == 1)
        {
LABEL_94:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          ++v12;
          *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
          v59 = 2;
          goto LABEL_111;
        }

        if (v55 != 2)
        {
          if (v55 == 3)
          {
            *(a1 + 44) = 1;
            goto LABEL_94;
          }

          goto LABEL_110;
        }
      }

      v56 = 0;
      v57 = 0;
      ++v12;
      *(a1 + 56) = v15 / 8 * v12 * *(v10 + 48);
      v58 = 1;
      v59 = 1;
      goto LABEL_111;
    }

    v43 = malloc_type_calloc(1uLL, v42, 0xED2B9C87uLL);
    if (v43)
    {
      v44 = v43;
      v91 = v20;
      v37 = v96;
      v22 = v96[20];
      v45 = v96[26];
      v38 = v98;
      goto LABEL_69;
    }

    free(v96);
  }

  return v10;
}

void resample_filter(uint64_t a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 != 0.0 && (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fmin(a7, 1.0);
    v15 = __sincos_stret(v14 * 1.57079633);
    if (v7)
    {
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v46 = vnegq_f64(v16);
      v47 = 1.0 / a7;
      do
      {
        v17 = vcvtmd_s64_f64(a6);
        v18 = v14 * (v17 - a6);
        v19 = ((v18 + 2.0) / v14);
        v20 = v18 - v19 * v14;
        if (v20 > -2.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = v14 + v20;
        }

        v22 = ((2.0 - v21) / v14);
        v23 = v20 <= -2.0;
        if (v21 + v22 * v14 < 2.0)
        {
          ++v22;
        }

        if (v22 >= a2)
        {
          v24 = a2;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          v28 = __sincos_stret(v21 * 1.57079633);
          *v26.i64 = v28.__cosval;
          sinval = v28.__sinval;
          v29 = 0.0;
          v30 = v24;
          v31 = a4;
          do
          {
            v32 = 1.0;
            if (fabs(v21) >= v14 * 0.5)
            {
              v32 = sinval * sinval * *v26.i64 / (v21 * v21 * 1.57079633 * 1.57079633);
            }

            *v31++ = v32;
            v29 = v29 + v32;
            v21 = v14 + v21;
            v33 = v15.__sinval * *v26.i64;
            *v26.i64 = *v26.i64 * v15.__cosval - sinval * v15.__sinval;
            sinval = v33 + sinval * v15.__cosval;
            --v30;
          }

          while (v30);
          *a1 = v17 - v19 + v23;
          *(a1 + 4) = v24;
          v34 = a4;
          v35 = v24;
          v36 = (a1 + 8);
          v37 = 16384.0 / v29;
          v27.i64[0] = 0.5;
          do
          {
            v38 = *v34++;
            *v26.i64 = v37 * v38;
            v39 = (v37 * v38 + *vbslq_s8(v46, v27, v26).i64);
            *v36++ = v39;
            v30 += v39;
            --v35;
          }

          while (v35);
          if (v30 != 0x4000)
          {
            resample_kernel_normalize((a1 + 8), v24, 0x4000 - v30);
          }
        }

        else
        {
          *a1 = (v17 - v19 + v23);
          v36 = (a1 + 8);
        }

        if ((a2 - v24) >= 1)
        {
          bzero(v36, 2 * (~v24 + a2) + 2);
        }

        a6 = v47 + a6;
        a1 += 2 * a2 + 8;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    if (a5 >= a2)
    {
      LODWORD(v40) = a2;
    }

    else
    {
      LODWORD(v40) = a5;
    }

    if (v40 >= 0x4000)
    {
      v40 = 0x4000;
    }

    else
    {
      v40 = v40;
    }

    if (a7 == 0.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = 1;
    }

    if (0x4000 % v41 >= a2)
    {
      v42 = a2;
    }

    else
    {
      v42 = 0x4000 % v41;
    }

    if (v41 >= v42)
    {
      v43 = (v41 - v42) >> 1;
    }

    else
    {
      v43 = 0;
    }

    __pattern4 = (0x4000 / v41) | ((0x4000 / v41) << 16);
    v49 = __pattern4 + 65537;
    if (a3)
    {
      v48 = 2 * (a2 - v41);
      v44 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 4) = v41;
        v45 = a1 + 8;
        memset_pattern4((a1 + 8), &__pattern4, 2 * v41);
        if (a2 > v41)
        {
          bzero((v45 + 2 * v41), v48);
        }

        if (v42)
        {
          memset_pattern4((v45 + 2 * v43), &v49, 2 * v42);
        }

        a1 += v44;
        --v7;
      }

      while (v7);
    }
  }
}

__int16 *resample_kernel_normalize(__int16 *result, int a2, int a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = result;
    v6 = result;
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v4 < v8;
      if (v4 == v8)
      {
        ++v3;
      }

      if (v9)
      {
        result = v5;
        v4 = v7;
        v3 = 1;
      }

      v5 = v6;
      --a2;
    }

    while (a2);
    if (v3)
    {
      if (a3 / v3)
      {
        v10 = v3;
        v11 = result;
        do
        {
          *v11++ += a3 / v3;
          --v10;
        }

        while (v10);
        a3 %= v3;
      }

      result[v3 >> 1] += a3;
    }
  }

  return result;
}

void resample_filter_normalize(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  v5 = a3;
  v6 = a1;
  v7 = 2 * a2 + 8;
  v8 = a3;
  v9 = a1;
  do
  {
    v10 = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      break;
    }

    v11 = 0;
    --v8;
    v12 = v10;
    v13 = v9[1] + v10;
    *v9 = 0;
    v9[1] = v13;
    v14 = v9 + 2;
    v15 = ~v10;
    v16 = (v9 + 2);
    do
    {
      v17 = *v16++;
      v11 += v17;
      v18 = __CFADD__(v10++, 1);
    }

    while (!v18);
    *(v9 + v15 + 5) += v11;
    if (v13)
    {
      v19 = -1 * v12;
      do
      {
        v20 = v14 + 1;
        *v14 = v14[v19];
        ++v14;
        --v13;
      }

      while (v13);
    }

    else
    {
      v20 = v9 + 2;
    }

    bzero(v20, 2 * v15 + 2);
    v9 = (v9 + v7);
  }

  while (v8);
  v21 = (v6 + v7 * (v5 - 1));
  v22 = v5;
  do
  {
    v23 = v21[1];
    v24 = *v21 - a4 + v23;
    if (v24 < 1)
    {
      break;
    }

    v25 = 0;
    --v22;
    v21[1] = a4 - *v21;
    v26 = v21 + v23 + 3;
    do
    {
      v25 += *v26;
      *v26-- = 0;
      --v24;
    }

    while (v24);
    *v26 += v25;
    v21 = (v21 - v7);
  }

  while (v22);
  do
  {
    v27 = v6[1];
    if (v27)
    {
      v28 = v6 + 2;
      v29 = 2 * v27 + 6;
      v30 = -v27;
      while (!*(v6 + v29))
      {
        v29 -= 2;
        ++v30;
        if (!--v27)
        {
          goto LABEL_34;
        }
      }

      v31 = 0;
      v32 = 8;
      while (!*(v6 + v32))
      {
        ++v31;
        v32 += 2;
        if (v27 == v31)
        {
          v31 = v27;
          break;
        }
      }

      if (v31)
      {
        v27 -= v31;
        if (v27)
        {
          v33 = v31 + v30;
          do
          {
            v34 = v28 + 1;
            *v28 = v28[v31];
            ++v28;
            v18 = __CFADD__(v33++, 1);
          }

          while (!v18);
        }

        else
        {
          v34 = v6 + 2;
        }

        *v6 += v31;
        bzero(v34, 2 * (v31 - 1) + 2);
      }
    }

LABEL_34:
    v6[1] = v27;
    v6 = (v6 + v7);
    --v5;
  }

  while (v5);
}

const void *___Z18CGPreferencesCheckI31CGResamplingAllowTemplateMethodENT_10ResultTypeEv_block_invoke()
{
  result = get_BOOLean_property("CGResamplingAllowTemplateMethod", copy_preference_value, &CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result);
  if ((result & 1) == 0)
  {
    CGPreferencesCheck<CGResamplingAllowTemplateMethod>(void)::result = 1;
  }

  return result;
}

BOOL resample_select_template(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && (*(a1 + 116) & 1) != 0)
  {
    if (a3 == 3)
    {
      if (!a2)
      {
        return a1 != 0;
      }

      --a2;
    }

    if ((a2 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      v3 = *(a1 + 84);
      v4 = -1;
      if (v3 <= 2)
      {
        if (!v3)
        {
          return a1 != 0;
        }

        if (v3 == 2)
        {
          v4 = 1;
        }

        if (v3 == 1)
        {
          v4 = 0;
        }
      }

      else if (v3 > 4)
      {
        if (v3 == 5)
        {
          v4 = 2;
        }

        else if (v3 == 6)
        {
          return a1 != 0;
        }
      }

      else
      {
        if (v3 == 3)
        {
          return a1 != 0;
        }

        v4 = 3;
      }

      v5 = *(&kHorizontalFunctionList[20 * v4 - 1] + 5 * a3 + a2);
      if (v5)
      {
        *(a1 + 24) = v5;
      }

      v6 = *(&kVerticalFunctionList[20 * v4 - 1] + 5 * a3 + a2);
      if (v6)
      {
        *(a1 + 16) = v6;
      }
    }
  }

  return a1 != 0;
}

uint64_t CGColorSpaceCreateDisplayP3_PQ()
{
  if (CGColorSpaceCreateDisplayP3_PQ_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_PQ_predicate, &__block_literal_global_203);
  }

  v0 = CGColorSpaceCreateDisplayP3_PQ_space;
  if (CGColorSpaceCreateDisplayP3_PQ_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_PQ_space);
  }

  return v0;
}

uint64_t img_interpolate_read(void *a1, unsigned int a2, unsigned int a3, uint64_t *a4, int *a5)
{
  v5 = a5;
  v7 = a1;
  v127 = 0;
  v129 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v117 = 0;
  v143 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a1[11];
  v131 = 0;
  v132 = 0uLL;
  v133 = 0uLL;
  v135 = 0;
  v13 = a4[1];
  v124 = *a4;
  v14 = (a1 + 7);
  v109 = (a1 + 7);
  v110 = a1 + 15;
  v120 = a3;
  v15 = *a5;
  v118 = v11;
  while (1)
  {
    v16 = *v14;
    LODWORD(v136) = *v14;
    v123 = v13;
    if (v13)
    {
      v17 = v120;
      v18 = v13 + v5[1] * v120;
      v19 = v110;
      if (v124 == v13)
      {
        v19 = v14;
      }

      v20 = *v19;
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v17 = v120;
    }

    HIDWORD(v136) = v20;
    if (v17 >= 2 && !*v118 && *(v118 + 16) == img_raw_read)
    {
      v21 = v15;
      if (*(v118 + 44) == *(v7 + 11))
      {
        v105 = img_raw_access(v118, &v136);
        v21 = *v5;
        if (v105)
        {
          LODWORD(v136) = *v5;
          if (v18)
          {
            HIDWORD(v136) = v5[1];
          }

          v117 = 1;
          v16 = v21;
        }

        else
        {
          v117 = 0;
          v16 = v136;
        }
      }
    }

    else
    {
      v21 = v15;
    }

    v22 = v124 + v15 * v120;
    v23 = v120 - 1;
    v24 = v21 * (v120 - 1) / v16;
    if (v24 < v120)
    {
      v25 = *(v7 + 16);
      if (v24 >= v25)
      {
        v23 = v24;
      }

      else
      {
        if (v120 >= v25)
        {
          v23 = *(v7 + 16);
        }

        else
        {
          v23 = v120;
        }

        v16 = *(v7 + 14);
        v22 = v7[9] + v16 * v23;
        LODWORD(v136) = v16;
        if (v123)
        {
          if (v123 == v124)
          {
            HIDWORD(v136) = v16;
            v18 = v22;
          }

          else
          {
            HIDWORD(v136) = *(v7 + 15);
            v18 = v7[10] + SHIDWORD(v136) * v23;
          }
        }
      }
    }

    v26 = resample_range(v12, 3, a2, v120, &v131);
    if (v26 < 0)
    {
      return a3 - v120;
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = v18 - SHIDWORD(v136) * v27;
    if (!v18)
    {
      v28 = 0;
    }

    v121 = v28;
    v122 = v22 - v16 * v27;
    v119 = v120 + a2;
    v115 = a2;
    v114 = a2 + 1;
    v5 = a5;
    v29 = v118;
    v30 = v26;
    v116 = a2;
    while (1)
    {
      if (v30 < 1)
      {
        v126 = 0;
        v34 = 0;
        if (!v12)
        {
          goto LABEL_165;
        }
      }

      else
      {
        *&v132 = v122;
        *(&v132 + 1) = v121;
        *&v133 = v122;
        *(&v133 + 1) = v121;
        v134 = v136;
        v135 = v136;
        v126 = v27;
        if (v117)
        {
          v31 = img_raw_data(v29, v131, v27, &v132, &v134);
        }

        else
        {
          v31 = (*(v29 + 16))(v29, v131);
        }

        if (v31 <= 0)
        {
          goto LABEL_163;
        }

        v34 = v31;
        v35 = *(v29 + 44);
        v36 = *(v7 + 11);
        if (v35 == v36)
        {
          v133 = v132;
          v135 = v134;
          v9 = *(&v132 + 1);
          v127 = *(&v132 + 1);
          v10 = v132;
          v8 = v132;
          v129 = v132;
          if (!v12)
          {
            goto LABEL_165;
          }
        }

        else
        {
          v37 = *(v29 + 40);
          if (v37 == 16)
          {
            v38 = 2;
          }

          else
          {
            v38 = 1;
          }

          if (v37 == 32)
          {
            v39 = 4;
          }

          else
          {
            v39 = v38;
          }

          if (*(v7 + 24) == 5)
          {
            v40 = 5;
          }

          else
          {
            v40 = v39;
          }

          img_alpha(*(v29 + 48), v31, *(v29 + 36), v35, &v132, &v134, v36, &v133, v32, v33, &v135, v40);
          v9 = v121;
          v10 = v122;
          v127 = v121;
          v129 = v122;
          v8 = v122;
          if (!v12)
          {
LABEL_165:
            v106 = a3;
            v107 = a3;
            return v106 - v107;
          }
        }
      }

      if (!*(v12 + 24))
      {
        goto LABEL_163;
      }

      if (!*(v12 + 16))
      {
        goto LABEL_163;
      }

      v41 = v131;
      v139 = v124;
      if (!v124)
      {
        goto LABEL_163;
      }

      v141 = 0;
      if (v34)
      {
        v141 = v10;
        if (!v10)
        {
          goto LABEL_163;
        }
      }

      v125 = v30;
      v140 = v123;
      v142 = v9;
      v42 = v119 >= *(v12 + 76) ? *(v12 + 76) : v119;
      if (v42 <= a2)
      {
        v55 = 0;
      }

      else
      {
        v137 = -1;
        v138 = -1;
        if (v34 && *(v12 + 120) == 1)
        {
          v43 = *(v12 + 112);
          v44 = *(v12 + 88);
          v45 = *(v12 + 80);
          if (((4 * v43) & 0xC) != 0)
          {
            v46 = 16 - ((4 * v43) & 0xCu);
          }

          else
          {
            v46 = 0;
          }

          v47 = (v135 * (v34 - 1)) + v8;
          v48 = *(v12 + 100);
          v49 = v47 + (v48 - 1) * v43;
          v50 = (v49 + 4095) & 0xFFFFFFFFFFFFF000;
          if (v49 + (v46 + 4 * v43) > v50)
          {
            v51 = *(v12 + 72);
            while (--v51 >= 1)
            {
              v52 = (*(v12 + 8) + ((v45 * v44) + 8) * (v51 & 0x7FFFFFFF));
              v53 = *v52;
              if ((v47 + *v52 * v43 + v46 + ((v52[1] + 3) & 0xFFFFFFFFFFFFFFFCLL) * v43) > v50)
              {
                v137 = v47 + v53 * v43;
              }

              v54 = v53 + v44;
              if ((v54 & 0x80000000) != 0 || v54 < v48)
              {
                goto LABEL_71;
              }
            }

            v137 = v50 - (v46 + v44 * v43);
          }

LABEL_71:
          if (v9)
          {
            v56 = *(v12 + 114);
            v57 = ((4 * v56) & 0xC) != 0 ? 16 - ((4 * v56) & 0xCu) : 0;
            v58 = (HIDWORD(v135) * (v34 - 1)) + v9;
            v59 = v58 + (v48 - 1) * v56;
            v60 = (v59 + 4095) & 0xFFFFFFFFFFFFF000;
            if (v59 + 4 * *(v12 + 114) + v57 > v60)
            {
              v61 = *(v12 + 72);
              v62 = (v45 * v44) + 8;
              while (--v61 >= 1)
              {
                v63 = (*(v12 + 8) + v62 * (v61 & 0x7FFFFFFF));
                v64 = *v63;
                if ((v58 + *v63 * v56 + v57 + ((v63[1] + 3) & 0xFFFFFFFFFFFFFFFCLL) * v56) > v60)
                {
                  v138 = v58 + v64 * v56;
                }

                v65 = v64 + v44;
                if ((v65 & 0x80000000) != 0 || v65 < v48)
                {
                  goto LABEL_84;
                }
              }

              v138 = v60 - (v57 + v44 * v56);
            }
          }
        }

LABEL_84:
        v66 = v34 + v131;
        if (v34 + v131 >= 0 && v66 >= *(v12 + 104))
        {
          v66 = *(v12 + 104);
        }

        if (v66 < v131)
        {
          v41 = v66;
        }

        v128 = v41;
        v67 = *(v12 + 92);
        v68 = (*v12 + ((*(v12 + 80) * v67) + 8) * v115);
        v69 = *v68;
        v70 = v68[1];
        v71 = v114;
        if (v42 > v114)
        {
          v71 = v42;
        }

        v112 = v71;
        while (1)
        {
          v72 = *(v12 + 48);
          v73 = v69 - v72;
          if (v69 == v72)
          {
            v74 = *(v12 + 44);
          }

          else
          {
            if (v73 >= 1 && (v75 = *(v12 + 44), v76 = v75 >= v73, v74 = v75 - v73, v74 != 0 && v76))
            {
              v77 = *(v12 + 36) + v73;
              if (v77 >= *(v12 + 40))
              {
                v78 = *(v12 + 40);
              }

              else
              {
                v78 = 0;
              }

              *(v12 + 36) = v77 - v78;
            }

            else
            {
              v74 = 0;
              *(v12 + 32) = 0;
            }

            *(v12 + 44) = v74;
            *(v12 + 48) = v69;
          }

          if ((v70 - v74) >= 1)
          {
            v79 = v69 + v74;
            v80 = v69 + v74 - v128;
            v81 = (v69 + v74) < v128 || v66 <= v79;
            if (v81)
            {
              goto LABEL_144;
            }

            v141 = v129 + v135 * v80;
            if (v142)
            {
              v142 = v127 + SHIDWORD(v135) * v80;
            }

            v82 = *(v12 + 40);
            v83 = (v82 - v74) & 0xFFFFFFFE;
            v84 = v66 - v79;
            if (v84 >= v83)
            {
              v85 = v83;
            }

            else
            {
              v85 = v84;
            }

            v86 = *(v12 + 32);
            v87 = *(v12 + 64);
            if (v85 >= 1)
            {
              v88 = *(v12 + 52);
              v89 = *(v12 + 56);
              v90 = 8 * v85;
              v91 = *(v12 + 64);
              v92 = v69;
              do
              {
                *v91 = v89 + v88 * v86;
                if (v86 + 1 < v82)
                {
                  ++v86;
                }

                else
                {
                  v86 = 0;
                }

                if (v74 == v82)
                {
                  v93 = *(v12 + 36);
                  if (v93 + 1 < v82)
                  {
                    v94 = v93 + 1;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  *(v12 + 36) = v94;
                  *(v12 + 48) = ++v92;
                  v74 = v82;
                }

                else
                {
                  ++v74;
                }

                ++v91;
                v90 -= 8;
              }

              while (v90);
            }

            *(v12 + 32) = v86;
            *(v12 + 44) = v74;
            v95 = &v137;
            if (!*(v12 + 120))
            {
              v95 = 0;
            }

            (*(v12 + 24))(*(v12 + 8), *(v12 + 88), *(v12 + 108), *(v12 + 72), v87, &v141, &v135, v85, v95);
            v141 += v135 * v85;
            if (v142)
            {
              v142 += SHIDWORD(v135) * v85;
            }
          }

          if (v70 - *(v12 + 44) > 0)
          {
            goto LABEL_144;
          }

          v96 = *(v12 + 64);
          if (v70 >= 1)
          {
            v97 = *(v12 + 48);
            v98 = *(v12 + 52);
            v99 = *(v12 + 40);
            v100 = *(v12 + 36);
            v101 = *(v12 + 56) + v100 * v98;
            v102 = v70;
            v103 = *(v12 + 64);
            do
            {
              *v103 = v101;
              if (v69 >= v97)
              {
                if (++v100 >= v99)
                {
                  v100 = 0;
                  v101 = *(v12 + 56);
                }

                else
                {
                  v101 += v98;
                }
              }

              ++v69;
              ++v103;
              --v102;
            }

            while (v102);
          }

          (*(v12 + 16))(v68, v67, *(v12 + 108), *(v12 + 72), &v139, v96);
          v139 += *a5;
          if (v140)
          {
            v140 += a5[1];
          }

          if (++a2 >= v42)
          {
            break;
          }

          v104 = v68 + (*(v12 + 80) * v67);
          v69 = *(v104 + 2);
          v70 = *(v104 + 3);
          v68 = (v104 + 8);
          if (v69 >= v66 && v70 + v69 > (*(v12 + 44) + *(v12 + 48)))
          {
            goto LABEL_144;
          }
        }

        a2 = v112;
LABEL_144:
        v55 = a2 - v116;
        a2 = v116;
        v10 = v129;
        v5 = a5;
        v8 = v129;
        v9 = v127;
        v7 = a1;
        v29 = v118;
      }

      if (v55 < 0 || !(v55 | v34))
      {
LABEL_163:
        v106 = a3;
        v107 = v120;
        return v106 - v107;
      }

      v131 += v34;
      if (v55)
      {
        break;
      }

      v30 = v125 - v34;
      if (v125 - v34 >= v126)
      {
        v27 = v126;
      }

      else
      {
        v27 = v30;
      }
    }

    v13 = v123;
    if (v123)
    {
      v13 = v123 + v5[1] * v55;
    }

    v15 = *v5;
    v124 += *v5 * v55;
    a2 += v55;
    v81 = v120 <= v55;
    v120 -= v55;
    v14 = v109;
    if (v81)
    {
      return a3;
    }
  }
}

uint64_t img_raw_access(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 96);
  if (v4 == -1)
  {
    result = *(a1 + 184);
    if (result)
    {
      if (v3)
      {
        return 0;
      }
    }

    else
    {
      result = img_blocks_create(*(a1 + 144), 0, *(a1 + 152), 0);
      if (!result)
      {
        return result;
      }

      *(a1 + 184) = result;
      *(a1 + 88) = 0;
      if (v3)
      {
        return 0;
      }
    }

    return *(result + 40) == *(result + 48);
  }

  if (v4)
  {
    return !v3 && !*(a1 + 152);
  }

  if (get_image_pointer(a1) && !v3)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = 0;
  v7 = *(a1 + 56);
  if (v7 >= *a2 && v7 - *a2 <= 64)
  {
    *a2 = v7;
    return 0;
  }

  return result;
}

char *color_space_state_create_p3_PQ()
{
  if (color_space_state_create_p3_PQ_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_p3_PQ_cglibrarypredicate, &__block_literal_global_59);
  }

  v0 = color_space_state_create_p3_PQ_f;
  if (color_space_state_create_p3_PQ_cglibrarypredicate_60 != -1)
  {
    dispatch_once(&color_space_state_create_p3_PQ_cglibrarypredicate_60, &__block_literal_global_63_1761);
  }

  v1 = v0(color_space_state_create_p3_PQ_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3_PQ";
    *(icc_with_profile + 5) = 11;
    *(*(icc_with_profile + 12) + 40) = @"Display P3; SMPTE ST 2084 PQ EOTF";
    icc_with_profile[16] = 1;
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

void CGContextStrokeEllipseInRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      height = rect.size.height;
      width = rect.size.width;
      y = rect.origin.y;
      x = rect.origin.x;
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        v19 = *(c + 21);
        if (v19)
        {
          CFRelease(v19);
          *(c + 21) = 0;
        }

        v21.origin.x = x;
        v21.origin.y = y;
        v21.size.width = width;
        v21.size.height = height;
        CGContextAddEllipseInRect(c, v21);

        CGContextDrawPath(c, kCGPathStroke);
      }

      return;
    }

    v18 = c;
  }

  else
  {
    v18 = 0;
  }

  handle_invalid_context("CGContextStrokeEllipseInRect", v18, v2, v3, v4, v5, v6, v7);
}

uint64_t resample_range(uint64_t a1, int a2, unsigned int a3, int a4, int *a5)
{
  if (a1)
  {
    v5 = 92;
    if (a2 == 1)
    {
      v5 = 88;
    }

    v6 = 76;
    if (a2 == 1)
    {
      v6 = 72;
    }

    v7 = *(a1 + 8 * (a2 == 1));
    v8 = *(a1 + v6);
    v9 = *(a1 + v5);
    v10 = a4 + a3;
    if (a4 + a3 >= v8)
    {
      v10 = v8;
    }

    if (v10 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 80) * v9 + 8;
    v13 = *(v12 * v11 + v7);
    v14 = *(v7 + v12 * ((__PAIR64__(v10, a3) - v10) >> 32) + 4) + *(v7 + v12 * ((__PAIR64__(v10, a3) - v10) >> 32));
    if (a2 == 3 && *(a1 + 56))
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 44) + v15;
      v17 = v13 >= 0 && v13 >= v15;
      v18 = v17;
      v19 = v16 <= v14 ? v14 : v16;
      if (v18 && v13 < v16)
      {
        v13 = v16;
        v14 = v19;
      }
    }

    if (a5)
    {
      *a5 = v13;
    }

    return (v14 - v13);
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t CG::DisplayList::getEntryStrokeState(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 832);
  v3 = a1 + 632;
  v4 = *(a1 + 632);
  if (!v4)
  {
    goto LABEL_36;
  }

  v5 = a1 + 632;
  do
  {
    v6 = *(v4 + 40);
    v33[0] = *(v4 + 32);
    v33[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = CG::CompareEntryStateStroke::operator()(v33, a2);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v7 = CG::CompareEntryStateStroke::operator()(v33, a2);
    }

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v5 = v4;
      v8 = 0;
    }

    v4 = *(v4 + v8);
  }

  while (v4);
  if (v3 == v5)
  {
LABEL_36:
    operator new();
  }

  v9 = *(v5 + 40);
  v32[0] = *(v5 + 32);
  v32[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CG::CompareEntryStateStroke::operator()(v32, a2))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
      goto LABEL_36;
    }
  }

  else if (CG::CompareEntryStateStroke::operator()(v32, a2))
  {
    goto LABEL_36;
  }

  v11 = *(v5 + 32);
  v10 = *(v5 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  StrokeColor = CGGStateGetStrokeColor(a2);
  v13 = *(v11 + 8);
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = CGColorCompare(StrokeColor, v14);
  if (v15 == -1)
  {
    goto LABEL_31;
  }

  if (v15 == 1)
  {
    goto LABEL_28;
  }

  v16 = *(a2 + 128);
  v17 = *(v11 + 40);
  v18 = v17 ? *(v17 + 16) : 0;
  v19 = CGDashCompare(*(v16 + 32), v18);
  if (v19 == -1)
  {
    goto LABEL_31;
  }

  if (v19 == 1)
  {
    goto LABEL_28;
  }

  v21 = *(v16 + 8);
  v22 = *(v11 + 16);
  if (v21 < v22)
  {
LABEL_31:
    v20 = 1;
    if (!v10)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v21 > v22)
  {
    goto LABEL_28;
  }

  v24 = *(v16 + 24);
  v25 = *(v11 + 24);
  if (v24 < v25)
  {
    goto LABEL_31;
  }

  if (v24 > v25)
  {
    goto LABEL_28;
  }

  v26 = *(v16 + 16);
  v27 = *(v11 + 32);
  if (v26 < v27)
  {
    goto LABEL_31;
  }

  if (v26 > v27)
  {
    goto LABEL_28;
  }

  v28 = *(v16 + 2);
  v29 = (v28 << 8);
  v30 = *(v11 + 48);
  if (v29 < (v30 << 8))
  {
    goto LABEL_31;
  }

  if (v29 > (v30 << 8))
  {
    goto LABEL_28;
  }

  v31 = v28 >> 8;
  if (v31 < v30 >> 8)
  {
    goto LABEL_31;
  }

  if (v31 > v30 >> 8)
  {
LABEL_28:
    v20 = 0;
    if (!v10)
    {
      goto LABEL_33;
    }

LABEL_32:
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    goto LABEL_33;
  }

  v20 = (*(v16 + 1) ^ 1) & *(v11 + 50);
  if (v10)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v9);
  }

  if (v20)
  {
    goto LABEL_36;
  }

  return *(v5 + 32);
}

const void *__should_allow_as_output_space_block_invoke()
{
  v1 = 0;
  result = get_BOOLean_property("ShouldAllowHDROutputSpaces", copy_local_domain_value, &v1);
  if (result)
  {
    should_allow_as_output_space_should_allow = v1;
  }

  return result;
}

void sub_183F4EC00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CG::DisplayList::dashResourceForDash(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(a1 + 728);
  v3 = a1 + 304;
  v4 = *(a1 + 304);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = a1 + 304;
  do
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 40);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = CGDashCompare(*(v6 + 16), a2) == -1;
      std::__shared_weak_count::__release_shared[abi:fe200100](v7);
    }

    else
    {
      v8 = CGDashCompare(*(v6 + 16), a2) == -1;
    }

    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v5 = v4;
      v9 = 0;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v3 == v5)
  {
LABEL_16:
    operator new();
  }

  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CGDashCompare(*(v10 + 16), a2) == -1)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v11);
      goto LABEL_16;
    }
  }

  else if (CGDashCompare(*(v10 + 16), a2) == -1)
  {
    goto LABEL_16;
  }

  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = CGDashCompare(a2, *(v13 + 16));
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CGDashCompare(a2, *(v13 + 16));
  if (v11)
  {
LABEL_20:
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

LABEL_21:
  if (v15 == -1)
  {
    goto LABEL_16;
  }

  return *(v5 + 32);
}

uint64_t CGColorSpaceCreateDisplayP3_HLG()
{
  if (CGColorSpaceCreateDisplayP3_HLG_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_HLG_predicate, &__block_literal_global_206);
  }

  v0 = CGColorSpaceCreateDisplayP3_HLG_space;
  if (CGColorSpaceCreateDisplayP3_HLG_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_HLG_space);
  }

  return v0;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
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
    v15 = CG::CompareEntryStateStroke::operator()(v11, v13);
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
      v22 = CG::CompareEntryStateStroke::operator()(v18, v20);
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = CG::CompareEntryStateStroke::operator()(v18, v20);
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
          v37 = CG::CompareEntryStateStroke::operator()(v33, v35);
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = CG::CompareEntryStateStroke::operator()(v33, v35);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if ((v37 & 1) == 0)
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

  v15 = CG::CompareEntryStateStroke::operator()(v11, v13);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if ((v15 & 1) == 0)
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
    v31 = CG::CompareEntryStateStroke::operator()(v27, v29);
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = CG::CompareEntryStateStroke::operator()(v27, v29);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if ((v31 & 1) == 0)
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

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(a1, a3, a5);
}

char *color_space_state_create_p3_HLG()
{
  if (color_space_state_create_p3_HLG_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_p3_HLG_cglibrarypredicate, &__block_literal_global_70);
  }

  v0 = color_space_state_create_p3_HLG_f;
  if (color_space_state_create_p3_HLG_cglibrarypredicate_71 != -1)
  {
    dispatch_once(&color_space_state_create_p3_HLG_cglibrarypredicate_71, &__block_literal_global_74);
  }

  v1 = v0(color_space_state_create_p3_HLG_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3_HLG";
    *(icc_with_profile + 5) = 12;
    *(*(icc_with_profile + 12) + 40) = @"Display P3; ARIB STD-B67 HLG";
    icc_with_profile[17] = 1;
    if (should_allow_as_output_space_predicate != -1)
    {
      dispatch_once(&should_allow_as_output_space_predicate, &__block_literal_global_304_1763);
    }

    if ((should_allow_as_output_space_should_allow & 1) == 0)
    {
      icc_with_profile[10] = 0;
    }
  }

  return icc_with_profile;
}

Swift::Void __swiftcall CGMutablePathRef.move(to:transform:)(CGPoint to, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathMoveToPoint(v2, &v4, to.x, to.y);
}

void CGPathAddArcToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x1, CGFloat y1, CGFloat x2, CGFloat y2, CGFloat radius)
{
  if (path)
  {
    v19 = path;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v20 = CFGetTypeID(path), path = CGPathGetTypeID(), v20 == path))
    {
      if ((*&x1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&x2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError(path, m, v7, v8, v9, v10, v11, v12, v33);
      }

      {
        v29 = *(v19 + 4);
        v28 = (v19 + 16);
        if ((v29 - 10) > 0xFFFFFFF6)
        {
          v31.x = x1;
          v31.y = y1;
          v30.x = x2;
          v30.y = y2;
          CG::Path::add_arc_to_point(v28, &v31, &v30, radius, m, v24, v25, v26, v27);
        }

        else
        {
          CGPostError("%s: no current point.", v21, v22, v23, v24, v25, v26, v27, "CGPathAddArcToPoint");
        }
      }
    }
  }
}

void CGMutablePathRef.addArc(tangent1End:tangent2End:radius:transform:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = a1[1];
  *&v8.a = *a1;
  *&v8.c = v7;
  *&v8.tx = a1[2];
  CGPathAddArcToPoint(v6, &v8, a2, a3, a4, a5, a6);
}

void CG::Path::add_arc_to_point(CG::Path *this, const CGPoint *a2, const CGPoint *a3, double a4, CGAffineTransform *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *&v21 = *&CG::Path::current_point(this, a2, a3, a5, a6, a7, a8, a9);
  v22 = v21;
  v24 = v23;
  if (a5)
  {
    v25 = *&a5->c;
    v53 = *&a5->a;
    v54 = v25;
    v55 = *&a5->tx;
    v22 = CGPointApplyInverseAffineTransform(&v53.x, v14, v15, v16, v17, v18, v19, v20, v21, v24);
    v24 = v26;
  }

  v27 = a2->x - v22;
  v28 = a2->y - v24;
  v47 = a3->x - v22;
  v46 = a3->y - v24;
  v49 = v28;
  __x = v27;
  if (v27 != 0.0 || (v29 = 0.0, v30 = 0.0, v28 != 0.0))
  {
    v29 = atan2(v28, v27);
    v30 = a4;
  }

  v31 = __sincos_stret(v29);
  v32.f64[0] = v31.__cosval;
  v32.f64[1] = -v31.__sinval;
  v33 = vmlaq_n_f64(vmulq_n_f64(v31, v46), v32, v47);
  v48 = vmlaq_n_f64(vmulq_n_f64(v31, v49), v32, __x);
  v50 = vaddq_f64(v48, 0);
  __xa = v33;
  *&v33.f64[0] = vmovn_s64(vceqq_f64(v48, v33));
  v34 = 0.0;
  v35 = 0.0;
  if ((LODWORD(v33.f64[0]) & HIDWORD(v33.f64[0]) & 1) == 0)
  {
    v36 = vsubq_f64(vaddq_f64(__xa, 0), v50);
    v35 = 3.14159265 - fabs(atan2(v36.f64[1], v36.f64[0]));
  }

  v41 = sin(v35 * 0.5);
  if (v41 == 0.0)
  {
    v42 = v50.f64[1];
    v43 = v50.f64[0];
    v44 = 0.0;
    v30 = 0.0;
    v45 = v48;
  }

  else
  {
    v43 = v50.f64[0] - v30 * fabs(cos(v35 * 0.5) / v41);
    v45 = v48;
    if (vmovn_s64(vcgtq_f64(__xa, v48)).i32[1])
    {
      v44 = 1.57079633 - v35;
      v34 = -1.57079633;
      v42 = v30;
    }

    else
    {
      v42 = -v30;
      v44 = v35 + -1.57079633;
      v34 = 1.57079633;
    }
  }

  v53.x = v22 + v42 * -v31.__sinval + v31.__cosval * v43 + 0.0;
  v53.y = v24 + v42 * v31.__cosval + v31.__sinval * v43 + 0.0;
  CG::Path::add_arc(this, &v53, v30, v29 + v34, v29 + v44, vmovn_s64(vmvnq_s8(vcgtq_f64(__xa, v45))).i32[1] & 1, a5, v37, v38, v39, v40);
}

Swift::Void __swiftcall CGMutablePathRef.addLine(to:transform:)(CGPoint to, CGAffineTransform *transform)
{
  v3 = *&transform->c;
  *&v4.a = *&transform->a;
  *&v4.c = v3;
  *&v4.tx = *&transform->tx;
  CGPathAddLineToPoint(v2, &v4, to.x, to.y);
}

uint64_t CGContextDelegateOperation(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 168);
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

void CGGStateSetLineJoin(uint64_t a1, int a2)
{
  if (*(*(a1 + 128) + 3) != a2)
  {
    v2 = a2;
    maybe_copy_stroke_state(a1);
    *(*(a1 + 128) + 3) = v2;
  }
}

void CGContextSetLineJoin(CGContextRef c, CGLineJoin join)
{
  if (!c)
  {
    v8 = 0;
LABEL_7:
    handle_invalid_context("CGContextSetLineJoin", v8, v2, v3, v4, v5, v6, v7);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v8 = c;
    goto LABEL_7;
  }

  if (join >= (kCGLineJoinBevel|kCGLineJoinRound))
  {
    join = kCGLineJoinMiter;
  }

  CGGStateSetLineJoin(*(c + 12), join);
}

atomic_uint *CGClipCreateWithMask(atomic_uint *result, char a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(0x38uLL, 0x1062040581A6B82uLL);
    if (result)
    {
      *result = 1;
      result[1] = atomic_fetch_add_explicit(CGClipCreate_identifier, 1u, memory_order_relaxed) + 1;
      *(result + 4) = 3;
      *(result + 2) = 0;
      *(result + 10) = a2;
      atomic_fetch_add_explicit(v3, 1u, memory_order_relaxed);
      *(result + 3) = v3;
    }
  }

  return result;
}

void CGClipMaskRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[7];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t CG::CompareEntryStateStroke::operator()(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a1 + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  StrokeColor = CGGStateGetStrokeColor(a2);
  v7 = CGColorCompare(v5, StrokeColor);
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    v8 = *a1;
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a2 + 128);
    v12 = CGDashCompare(v10, *(v11 + 32));
    if (v12 != -1)
    {
      if (v12 == 1)
      {
        goto LABEL_11;
      }

      v14 = *(v8 + 16);
      v15 = *(v11 + 8);
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          goto LABEL_11;
        }

        v17 = *(v8 + 24);
        v18 = *(v11 + 24);
        if (v17 >= v18)
        {
          if (v17 > v18)
          {
            goto LABEL_11;
          }

          v19 = *(v8 + 32);
          v20 = *(v11 + 16);
          if (v19 >= v20)
          {
            if (v19 > v20)
            {
              goto LABEL_11;
            }

            v21 = *(v8 + 48);
            v22 = *(v11 + 2);
            v23 = (v22 << 8);
            if (v23 <= (v21 << 8))
            {
              if (v23 < (v21 << 8))
              {
                goto LABEL_11;
              }

              v24 = v22 >> 8;
              if (v24 <= v21 >> 8)
              {
                if (v24 >= v21 >> 8)
                {
                  v13 = *(v11 + 1) & (*(v8 + 50) ^ 1);
                  return v13 & 1;
                }

                goto LABEL_11;
              }
            }
          }
        }
      }
    }

LABEL_13:
    v13 = 1;
    return v13 & 1;
  }

LABEL_11:
  v13 = 0;
  return v13 & 1;
}

uint64_t CG::CompareEntryStateStroke::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    goto LABEL_2;
  }

  if (v2 > v3)
  {
LABEL_4:
    v4 = 0;
    return v4 & 1;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6 >= v7)
  {
    if (v6 > v7)
    {
      goto LABEL_4;
    }

    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    if (v8 >= v9)
    {
      if (v8 > v9)
      {
        goto LABEL_4;
      }

      v10 = *(a1 + 24);
      v11 = *(a2 + 24);
      if (v10 >= v11)
      {
        if (v10 > v11)
        {
          goto LABEL_4;
        }

        v12 = *(a1 + 32);
        v13 = *(a2 + 32);
        if (v12 >= v13)
        {
          if (v12 > v13)
          {
            goto LABEL_4;
          }

          v14 = *(a1 + 48);
          v15 = *(a2 + 48);
          if (v14 >= v15)
          {
            if (v14 > v15)
            {
              goto LABEL_4;
            }

            v16 = v14 >> 8;
            if (v16 >= v15 >> 8)
            {
              if (v16 <= v15 >> 8)
              {
                v4 = (*(a1 + 50) ^ 1) & *(a2 + 50);
                return v4 & 1;
              }

              goto LABEL_4;
            }
          }
        }
      }
    }
  }

LABEL_2:
  v4 = 1;
  return v4 & 1;
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateStroke const>,CG::CompareEntryStateStroke,std::allocator<std::shared_ptr<CG::DisplayListEntryStateStroke const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateStroke const>>(uint64_t a1, void *a2, uint64_t *a3)
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
      v12 = CG::CompareEntryStateStroke::operator()(v8, v10);
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
          v17 = CG::CompareEntryStateStroke::operator()(v13, v15);
          std::__shared_weak_count::__release_shared[abi:fe200100](v16);
          if (!v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          std::__shared_weak_count::__release_shared[abi:fe200100](v14);
          goto LABEL_15;
        }

        v17 = CG::CompareEntryStateStroke::operator()(v13, v15);
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

    v12 = CG::CompareEntryStateStroke::operator()(v8, v10);
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

CFStringRef CGColorSpaceGetName(CFStringRef space)
{
  if (space)
  {
    return *(space->length + 80);
  }

  return space;
}

BOOL CGColorSpaceUsesExtendedRange(CGColorSpaceRef space)
{
  if (space)
  {
    v2 = CFGetTypeID(space);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {
      v3 = *(*(space + 3) + 13);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t CGColorSpaceCreateGenericRGBLinear()
{
  if (CGColorSpaceCreateGenericRGBLinear_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericRGBLinear_predicate, &__block_literal_global_224);
  }

  v0 = CGColorSpaceCreateGenericRGBLinear_space;
  if (CGColorSpaceCreateGenericRGBLinear_space)
  {
    CFRetain(CGColorSpaceCreateGenericRGBLinear_space);
  }

  return v0;
}

void CGBlt_swapBytes(int a1, unsigned int a2, void *a3, void *a4, int a5, int a6, __int16 a7)
{
  if (a1 >= 1 && a2 >= 1)
  {
    if ((a7 & 0xF000) == 0x2000)
    {
      *permuteMap = 66051;
      src.data = a3;
      src.height = a2;
      src.width = a1 >> 2;
      src.rowBytes = a5;
      dest.data = a4;
      dest.height = a2;
      dest.width = src.width;
      dest.rowBytes = a6;
      vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0);
    }

    else if ((a7 & 0xF000) == 0x1000)
    {
      src.data = a3;
      src.height = a2;
      src.width = a1 >> 1;
      src.rowBytes = a5;
      dest.data = a4;
      dest.height = a2;
      dest.width = src.width;
      dest.rowBytes = a6;
      vImageByteSwap_Planar16U(&src, &dest, 0);
    }

    else if (a3 != a4)
    {

      CGBlt_copyBytes(a1, a2, a3, a4, a5, a6);
    }
  }
}

uint64_t __CGColorSpaceCreateGenericRGBLinear_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_rgb_linear);
  CGColorSpaceCreateGenericRGBLinear_space = result;
  return result;
}

uint64_t ripl_retain(uint64_t a1)
{
  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 8);
  if (v2 != -1)
  {
    *(a1 + 8) = v2 + 1;
  }

  return pthread_mutex_unlock((a1 + 80));
}

int16x4_t *resample_horizontal<unsigned char,int,4,false>(int16x4_t *result, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int16x4_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t *a14, int *a15, int a16)
{
  if (a12 >= 1 && a16 >= 1)
  {
    v17 = 0;
    v18 = *a14;
    v19 = *a15;
    v20 = v19 >> 2;
    v21 = a12;
    v22 = 2 * a2 + 8;
    v23 = result + v22 * a12;
    if (v19 >> 2 >= *&v23[-v22 + 4] + *&v23[-v22])
    {
      v20 = *&v23[-v22 + 4] + *&v23[-v22];
    }

    v24 = a12 - 1;
    v25 = a2 > 3;
    LODWORD(v26) = (4 * (a2 & 3)) | 0x10;
    if ((a2 & 3) != 0)
    {
      v26 = v26;
    }

    else
    {
      v26 = 32;
    }

    if ((a2 & 3) != 0)
    {
      v25 = 0;
    }

    v27 = ((v26 - 1) & 0xFFFFFFFFFFFFFFF0) + 16 * ((a2 >> 2) - v25);
    v28 = a16;
    v31 = a2 != a2 || a12 < 2 || a12 == 1;
    v32.i64[0] = 0x200000002000;
    v32.i64[1] = 0x200000002000;
    v33.i64[0] = 0xFF000000FFLL;
    v33.i64[1] = 0xFF000000FFLL;
    do
    {
      v34 = *(a13 + 8 * v17);
      v35 = 0;
      if (v31)
      {
        v36 = result;
      }

      else
      {
        v36 = result;
        while (1)
        {
          v37 = (v18 + 4 * v36->i32[0]);
          v38 = (v37 + v27);
          if (v37->u64 + v27 > 4 * v20 + v18)
          {
            break;
          }

          if (v37 >= v38)
          {
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
          }

          else
          {
            v39 = v36 + 1;
            v40 = v36->i32[1];
            v41 = &v38[-1];
            v42 = 0uLL;
            v43 = 0uLL;
            v44 = 0uLL;
            v45 = 0uLL;
            while (v37 < v41)
            {
              v46 = *v39++;
              *&a10 = v46;
              v47 = *v37++;
              v48 = vmovl_high_u8(v47);
              v16 = vmovl_u8(*v47.i8);
              v42 = vmlal_lane_s16(v42, *v16.i8, a10, 0);
              v43 = vmlal_high_lane_s16(v43, v16, a10, 1);
              v44 = vmlal_lane_s16(v44, *v48.i8, a10, 2);
              v45 = vmlal_high_lane_s16(v45, v48, a10, 3);
              v40 -= 4;
            }

            if (v40 >= 1)
            {
              a10 = *v39;
              v49 = vmovl_high_u8(*v37);
              v16 = vmovl_u8(*v37->i8);
              v42 = vmlal_lane_s16(v42, *v16.i8, *v39, 0);
              v43 = vmlal_high_lane_s16(v43, v16, *v39, 1);
              v44 = vmlal_lane_s16(v44, *v49.i8, *v39, 2);
              v45 = vmlal_high_lane_s16(v45, v49, *v39, 3);
            }
          }

          *v34++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v43, v45), vaddq_s32(v42, v44)), v32), 0xEuLL), v33), 0);
          ++v35;
          v36 = (v36 + v22);
          if (v35 == v24)
          {
            v35 = v21 - 1;
            break;
          }
        }
      }

      if (v35 < v21)
      {
        do
        {
          v50 = v36->i32[1];
          v51 = v36->i32[0];
          if (v51 >= v20)
          {
            v52 = v20;
          }

          else
          {
            v52 = v36->i32[0];
          }

          v53 = v20 - v52;
          if (v50 >= v53)
          {
            v50 = v53;
          }

          if (v50 < 1)
          {
            v57 = 0uLL;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
          }

          else
          {
            v54 = (v18 + 4 * v51);
            v55 = &v54[-1] + 4 * v50;
            v56 = &v36[1];
            v57 = 0uLL;
            if (v54 >= v55)
            {
              v59 = 0uLL;
              v60 = 0uLL;
              v61 = 0uLL;
              goto LABEL_60;
            }

            v58 = v50;
            v59 = 0uLL;
            v60 = 0uLL;
            v61 = 0uLL;
            do
            {
              v62 = v58;
              if ((v23 - v56) < 8)
              {
                if (v58)
                {
                  if (v58 == 1)
                  {
                    a10.i16[0] = *v56;
                  }

                  else
                  {
                    if (v58 == 2)
                    {
                      v65 = 0;
                    }

                    else
                    {
                      if (v50)
                      {
                        v66 = 0;
                      }

                      else
                      {
                        v66 = v56[3];
                      }

                      v65.i32[0] = v56[2];
                      v65.i32[1] = v66;
                    }

                    v16.i16[0] = *v56;
                    v16.i16[2] = v56[1];
                    a10 = vuzp1_s16(*v16.i8, v65);
                  }
                }

                else
                {
                  *&a10 = 0.0;
                }
              }

              else
              {
                a10 = *v56;
              }

              v56 += 4;
              v63 = *v54++;
              v64 = vmovl_high_u8(v63);
              v16 = vmovl_u8(*v63.i8);
              v57 = vmlal_lane_s16(v57, *v16.i8, a10, 0);
              v59 = vmlal_high_lane_s16(v59, v16, a10, 1);
              v60 = vmlal_lane_s16(v60, *v64.i8, a10, 2);
              v61 = vmlal_high_lane_s16(v61, v64, a10, 3);
              v58 = v62 - 4;
            }

            while (v54 < v55);
            if (v62 >= 5)
            {
              v50 = v62 - 4;
LABEL_60:
              v67 = v50;
              while (2)
              {
                if ((v23 - v56) >= 8)
                {
                  a10 = *v56;
                  goto LABEL_63;
                }

                if (v67 == 1)
                {
                  v70 = *v56;
                  v56 += 4;
                  v71 = 0;
                  a10 = v70;
                  v16.i32[0] = v54->i32[0];
                  v16.i64[0] = vmovl_u8(*v16.i8).u64[0];
                  goto LABEL_70;
                }

                if (v67 == 2)
                {
                  v72 = 0;
                }

                else
                {
                  if (v50)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v56[3];
                  }

                  v72.i32[0] = v56[2];
                  v72.i32[1] = v73;
                }

                v16.i16[0] = *v56;
                v16.i16[2] = v56[1];
                a10 = vuzp1_s16(*v16.i8, v72);
LABEL_63:
                v56 += 4;
                if (v67 < 4)
                {
                  if (v67 >= 2)
                  {
                    if (v67 == 2)
                    {
                      v74 = 0;
                    }

                    else
                    {
                      v16.i32[0] = v54->i32[2];
                      v75 = vmovl_u8(*v16.i8);
                      HIDWORD(v74) = 0;
                      LOBYTE(v74) = v75.i8[0];
                      BYTE1(v74) = v75.i8[2];
                      BYTE2(v74) = v75.i8[4];
                      BYTE3(v74) = v75.i8[6];
                    }

                    v16.i64[0] = v54->i64[0];
                    v16.i64[1] = v74;
                  }

                  else
                  {
                    v16.i32[0] = v54->i32[0];
                    v16.i64[0] = vmovl_u8(*v16.i8).u64[0];
                    if (v67 == 1)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      LOBYTE(v71) = v54->i8[4];
                      BYTE2(v71) = v54->i8[5];
                      BYTE4(v71) = v54->i8[6];
                      BYTE6(v71) = v54->i8[7];
                    }

LABEL_70:
                    v16.i64[1] = 0;
                    v16.i8[1] = v16.i8[2];
                    v16.i8[2] = v16.i8[4];
                    v16.i8[3] = v16.i8[6];
                    v16.i8[4] = v71;
                    v16.i8[5] = BYTE2(v71);
                    v16.i8[6] = BYTE4(v71);
                    v16.i8[7] = BYTE6(v71);
                  }
                }

                else
                {
                  v16 = *v54;
                }

                ++v54;
                v68 = vmovl_high_u8(v16);
                v16 = vmovl_u8(*v16.i8);
                v57 = vmlal_lane_s16(v57, *v16.i8, a10, 0);
                v59 = vmlal_high_lane_s16(v59, v16, a10, 1);
                v60 = vmlal_lane_s16(v60, *v68.i8, a10, 2);
                v61 = vmlal_high_lane_s16(v61, v68, a10, 3);
                v69 = __OFSUB__(v67, 4);
                v67 -= 4;
                if ((v67 < 0) ^ v69 | (v67 == 0))
                {
                  break;
                }

                continue;
              }
            }
          }

          *v34++ = vmaxq_s32(vminq_s32(vshrq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(v59, v61), vaddq_s32(v57, v60)), v32), 0xEuLL), v33), 0);
          ++v35;
          v36 = (v36 + v22);
        }

        while (v35 != v21);
      }

      v18 += v19;
      ++v17;
    }

    while (v17 != v28);
  }

  return result;
}

uint64_t resample_vertical<int,unsigned char,4,(AlphaStyle)1>(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint8x8_t **a5, uint64_t a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 2;
    v12.i64[0] = 0x200000002000;
    v12.i64[1] = 0x200000002000;
    do
    {
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = v8;
      if (v7 >= 2)
      {
        result = a6 + 8;
        v16 = 2;
        v15 = v8;
        do
        {
          v17 = (*(result - 8) + 16 * v10);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*result + 16 * v10);
          v21 = *v15;
          v15 += 2;
          v22 = vdup_n_s16(v21);
          v23 = vmlal_s16(v13, vmovn_s32(v18), v22);
          *v18.i8 = vdup_n_s16(HIWORD(v21));
          v14 = vmlal_s16(vmlal_s16(v14, vmovn_s32(v19), v22), vmovn_s32(v20[1]), *v18.i8);
          v13 = vmlal_s16(v23, vmovn_s32(*v20), *v18.i8);
          v16 += 2;
          result += 16;
        }

        while (v16 <= v7);
      }

      if (v7)
      {
        v24 = (*(a6 - 8 + 8 * v7) + 16 * v10);
        v25 = vld1_dup_s16(v15);
        v14 = vmlal_s16(v14, vmovn_s32(v24[1]), v25);
        v13 = vmlal_s16(v13, vmovn_s32(*v24), v25);
      }

      v26 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vshrq_n_s32(vaddq_s32(v13, v12), 0xEuLL)), vshrq_n_s32(vaddq_s32(v14, v12), 0xEuLL)));
      v27 = vmax_u8(vuzp1_s8(v26, *v12.i8), vuzp2_s8(v26, *v12.i8));
      v27.i16[0] = vmax_u8(vuzp1_s8(v27, *v12.i8), vuzp2_s8(v27, *v12.i8)).u16[0];
      v28.i32[0] = v27.u8[0];
      v28.i32[1] = v27.u8[1];
      *v6++ = vmax_u8(v26, vand_s8(v28, 0xFF000000FFLL));
      v11 += 2;
      v10 += 2;
    }

    while (v11 <= a4);
    LODWORD(v9) = a4 & 0x7FFFFFFE;
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 < a4)
  {
    v9 = v9;
    v29.i64[0] = 0x200000002000;
    v29.i64[1] = 0x200000002000;
    do
    {
      v30 = 0uLL;
      v31 = v8;
      if (v7 >= 2)
      {
        v32 = (a6 + 8);
        result = 2;
        v31 = v8;
        do
        {
          v33 = *v31;
          v31 += 2;
          v30 = vmlal_s16(vmlal_s16(v30, vmovn_s32(*(*(v32 - 1) + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(v33)), vmovn_s32(*(*v32 + 16 * (v9 & 0x3FFFFFFF))), vdup_n_s16(HIWORD(v33)));
          result += 2;
          v32 += 2;
        }

        while (result <= v7);
      }

      if (v7)
      {
        v34 = vld1_dup_s16(v31);
        v30 = vmlal_s16(v30, vmovn_s32(*(*(a6 - 8 + 8 * v7) + 16 * (v9 & 0x3FFFFFFF))), v34);
      }

      v35 = vshrq_n_s32(vaddq_s32(v30, v29), 0xEuLL);
      *v35.i8 = vqmovn_s32(v35);
      *v35.i8 = vqmovun_s16(v35);
      v36 = v35.u8[3];
      v37 = v35.u8[2];
      v35.i8[0] = vmaxv_u8(*v35.i8);
      v35.i16[1] = v35.u8[1];
      v35.i16[2] = v37;
      v35.i16[3] = v36;
      v6->i32[0] = vmovn_s16(v35).u32[0];
      v6 = (v6 + 4);
      ++v9;
    }

    while (v9 != a4);
  }

  return result;
}

char *color_space_state_create_generic_rgb_linear()
{
  if (color_space_state_create_generic_rgb_linear_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_linear_cglibrarypredicate, &__block_literal_global_227_6592);
  }

  generic_rgb_linear_f = color_space_state_create_generic_rgb_linear_f(14);
  if (color_space_state_create_icc_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_icc_cglibrarypredicate, &__block_literal_global_20_7564);
  }

  icc_with_profile = 0;
  if (!color_space_state_create_icc_f(generic_rgb_linear_f, 0, 0))
  {
LABEL_15:
    if (!generic_rgb_linear_f)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (color_space_state_create_icc_cglibrarypredicate_23 != -1)
  {
    dispatch_once(&color_space_state_create_icc_cglibrarypredicate_23, &__block_literal_global_26);
  }

  icc_f_22 = color_space_state_create_icc_f_22(generic_rgb_linear_f);
  if (icc_f_22)
  {
    v9 = icc_f_22;
    ProfileSet = CGCMSUtilsCreateProfileSet(0, generic_rgb_linear_f, @"ColorSyncTransformDeviceToPCS", 0, 0, 0);
    v11 = CGCMSUtilsCreateProfileSet(0, v9, @"ColorSyncTransformPCSToPCS", 0, 0, 0);
    v12 = color_space_state_create_with_profile_sets(ProfileSet, v11);
    icc_with_profile = v12;
    if (v12)
    {
      *(v12 + 14) = 1;
    }

    CFRelease(v9);
    if (ProfileSet)
    {
      CFRelease(ProfileSet);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_15;
  }

  icc_with_profile = color_space_state_create_icc_with_profile(generic_rgb_linear_f, 0, v3, v4, v5, v6, v7, v8);
  if (generic_rgb_linear_f)
  {
LABEL_16:
    CFRelease(generic_rgb_linear_f);
  }

LABEL_17:
  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericRGBLinear";
    *(*(icc_with_profile + 12) + 40) = @"Generic RGB Linear Profile";
  }

  return icc_with_profile;
}

void *RIPLayerIntersect(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v9 = result;
    if (*a2 && result != 0)
    {
      if (*result)
      {
        v11 = result[4];
        if (v11 == a2[4])
        {
          result = RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8);
          if (v11 == result)
          {

            return ripl_Combine(v9, a2, 0);
          }
        }
      }
    }
  }

  return result;
}

void img_interpolate_end(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(v2 + 24))();
  }

  v3 = a1[11];
  if (v3)
  {

    resample_destroy(v3);
  }
}

uint64_t __CGColorSpaceCreateAdobeRGB1998_block_invoke()
{
  result = create_singleton(color_space_state_create_adobe_rgb_1998);
  CGColorSpaceCreateAdobeRGB1998_space = result;
  return result;
}

char *color_space_state_create_adobe_rgb_1998()
{
  if (color_space_state_create_adobe_rgb_1998_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_adobe_rgb_1998_cglibrarypredicate, &__block_literal_global_103);
  }

  v0 = color_space_state_create_adobe_rgb_1998_f;
  if (color_space_state_create_adobe_rgb_1998_cglibrarypredicate_104 != -1)
  {
    dispatch_once(&color_space_state_create_adobe_rgb_1998_cglibrarypredicate_104, &__block_literal_global_107);
  }

  v1 = v0(color_space_state_create_adobe_rgb_1998_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceAdobeRGB1998";
    *(icc_with_profile + 5) = 14;
    *(*(icc_with_profile + 12) + 40) = @"Adobe RGB (1998)";
  }

  return icc_with_profile;
}

uint64_t CGColorSpaceCreateAdobeRGB1998()
{
  if (CGColorSpaceCreateAdobeRGB1998_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateAdobeRGB1998_predicate, &__block_literal_global_215);
  }

  v0 = CGColorSpaceCreateAdobeRGB1998_space;
  if (CGColorSpaceCreateAdobeRGB1998_space)
  {
    CFRetain(CGColorSpaceCreateAdobeRGB1998_space);
  }

  return v0;
}

uint64_t CGContextGetDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    return *(a1 + 40);
  }

  handle_invalid_context("CGContextGetDelegate", a1, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t CGImageGetNumberOfComponents(uint64_t image)
{
  if (image)
  {
    v1 = image;
    if ((*(image + 39) & 2) != 0)
    {
      return 1;
    }

    else
    {
      ColorSpace = CGImageGetColorSpace(image);
      if (ColorSpace)
      {
        v3 = *(*(ColorSpace + 3) + 48);
      }

      else
      {
        v3 = 0;
      }

      if (CGImageGetAlphaInfo(v1))
      {
        return v3 + 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return image;
}

uint64_t (*__color_space_state_create_adobe_rgb_1998_block_invoke())()
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

  color_space_state_create_adobe_rgb_1998_f = v1;
  return result;
}

uint64_t *__color_space_state_create_adobe_rgb_1998_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncAdobeRGB1998Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_adobe_rgb_1998_s = v1;
  return result;
}

void resample_destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t CGColorSpaceCreateITUR_709()
{
  if (CGColorSpaceCreateITUR_709_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateITUR_709_predicate, &__block_literal_global_240_6583);
  }

  v0 = CGColorSpaceCreateITUR_709_space;
  if (CGColorSpaceCreateITUR_709_space)
  {
    CFRetain(CGColorSpaceCreateITUR_709_space);
  }

  return v0;
}

void resample_filter_linear(uint64_t a1, unsigned int a2, int a3, double *a4, unsigned int a5, double a6, double a7)
{
  v7 = a3;
  if (a7 == 0.0 || (*&a7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (a5 >= a2)
    {
      LODWORD(v38) = a2;
    }

    else
    {
      LODWORD(v38) = a5;
    }

    if (v38 >= 0x4000)
    {
      v38 = 0x4000;
    }

    else
    {
      v38 = v38;
    }

    if (a7 == 0.0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 1;
    }

    if (0x4000 % v39 >= a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = 0x4000 % v39;
    }

    if (v39 >= v40)
    {
      v41 = (v39 - v40) >> 1;
    }

    else
    {
      v41 = 0;
    }

    __pattern4 = (0x4000 / v39) | ((0x4000 / v39) << 16);
    v45 = __pattern4 + 65537;
    if (a3)
    {
      v44 = 2 * (a2 - v39);
      v42 = 4 * a2 + 8;
      do
      {
        *a1 = 0;
        *(a1 + 4) = v39;
        v43 = a1 + 8;
        memset_pattern4((a1 + 8), &__pattern4, 2 * v39);
        if (a2 > v39)
        {
          bzero((v43 + 2 * v39), v44);
        }

        if (v40)
        {
          memset_pattern4((v43 + 2 * v41), &v45, 2 * v40);
        }

        a1 += v42;
        --v7;
      }

      while (v7);
    }

    return;
  }

  v12 = 1.0 / a7;
  v13 = 1.0 / a7 * 0.5;
  if (a7 <= 1.0)
  {
    if (!a3)
    {
      return;
    }

    v25 = v13 + a6;
    v26 = 2 * a2 + 8;
    while (1)
    {
      v27 = (floor(v25 - v13) - (v25 - v13) + 1.0) * a7;
      v28 = vcvtmd_s64_f64(v25 - v13);
      if (a2)
      {
        if (v27 <= 1.0)
        {
          break;
        }
      }

      if (a2 && v27 > 1.0)
      {
        v29 = 0;
        v30 = 1.0;
        v31 = a4;
        goto LABEL_35;
      }

      v34 = 0;
      v29 = 0;
      *a1 = v28;
      *(a1 + 4) = 0;
      v36 = (a1 + 8);
      v35 = (a1 + 8);
LABEL_41:
      resample_kernel_normalize(v35, v29, 0x4000 - v34);
LABEL_42:
      if ((a2 - v29) >= 1)
      {
        bzero(v36, 2 * (~v29 + a2) + 2);
      }

      v25 = v12 + v25;
      a1 += v26;
      if (!--v7)
      {
        return;
      }
    }

    v29 = 0;
    v30 = 1.0;
    v31 = a4;
    do
    {
      *v31++ = v27;
      v30 = v30 - v27;
      v32 = ++v29 >= a2 || v30 < a7;
      v27 = a7;
    }

    while (!v32);
    if (v29 < a2 && v30 < a7)
    {
LABEL_35:
      *v31 = v30;
      ++v29;
    }

    v33 = 0;
    v34 = 0;
    *a1 = v28;
    *(a1 + 4) = v29;
    v35 = (a1 + 8);
    v36 = (a1 + 8);
    do
    {
      v37 = a4[v33] * 16384.0 + 0.5;
      *v36++ = v37;
      v34 += v37;
      ++v33;
    }

    while (v29 != v33);
    if (v34 == 0x4000)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a3)
  {
    v14 = v13 + a6;
    v15 = a2 - 2;
    v16 = 2 * a2 + 8;
    v17 = 2 * (a2 - 2);
    do
    {
      v18 = vcvtmd_s64_f64(v14);
      v19 = v14 - floor(v14);
      v20 = v19 < 0.5;
      if (v19 >= 0.5)
      {
        v21 = -0.5;
      }

      else
      {
        v21 = 0.5;
      }

      v22 = v19 + v21;
      *(a1 + 8) = ((1.0 - v22) * 16384.0 + 0.5);
      v23 = v20;
      *(a1 + 10) = (v22 * 16384.0 + 0.5);
      *a1 = v18 - v23;
      *(a1 + 4) = 2;
      if (v15 >= 1)
      {
        bzero((a1 + 12), v17);
      }

      v14 = v12 + v14;
      a1 += v16;
      --v7;
    }

    while (v7);
  }
}