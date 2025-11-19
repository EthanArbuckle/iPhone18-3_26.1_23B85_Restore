uint64_t CGGStateSetContentToneMappingInfo(uint64_t a1, int a2, CFTypeRef cf2)
{
  v3 = cf2;
  v6 = *(a1 + 120);
  if (*(v6 + 56) != a2 || ((result = *(v6 + 64)) == 0 ? (v8 = cf2 == 0) : (v8 = 0), !v8 && (result ? (v9 = cf2 == 0) : (v9 = 1), v9 || (result = CFEqual(result, cf2), !result))))
  {
    maybeCopyRenderingState(a1);
    v11 = *(a1 + 120);
    *(v11 + 56) = a2;
    if (v3)
    {
      v3 = CFRetain(v3);
      v11 = *(a1 + 120);
    }

    v12 = *(v11 + 64);
    if (v12)
    {
      CFRelease(v12);
      v11 = *(a1 + 120);
    }

    *(v11 + 64) = v3;
    v10.n128_u32[0] = *(v11 + 48);
    result = calculate_tone_mapping_info_hash(*(v11 + 56), v3, v10);
    *(*(a1 + 120) + 72) = result;
  }

  return result;
}

void CGGStateSetRenderingIntent(uint64_t a1, int a2)
{
  if (a2 != (*(*(a1 + 120) + 4) << 12) >> 28)
  {
    v2 = a2;
    maybeCopyRenderingState(a1);
    *(*(a1 + 120) + 4) = *(*(a1 + 120) + 4) & 0xFFF0FFFF | ((v2 & 0xF) << 16);
  }
}

void CGGStateSetTextDrawingMode(uint64_t a1, int a2)
{
  if (*(*(a1 + 136) + 1) != a2)
  {
    v2 = a2;
    maybe_copy_text_state(a1);
    *(*(a1 + 136) + 1) = v2;
  }
}

void draw_glyph_bitmaps(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, __n128 a5, uint64_t a6, uint64_t a7, __int16 *a8, uint64_t a9, uint64_t a10)
{
  v69 = a1;
  v70 = a3;
  v77 = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1EEE9AC00](8 * a10, a5);
  v19 = &v53 - v18;
  if (v17 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v20 = &v53 - v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = v16;
  if (v17 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000102)
  {
    v20 = malloc_type_malloc(v15, 0xB622E253uLL);
  }

  v75 = 0;
  v76 = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  if (v20)
  {
    v67 = v19;
    v66 = a2;
    v68 = &v53;
    v22 = MEMORY[0x1EEE9AC00](4 * a10, 0);
    v25 = &v53 - v24;
    if (v23 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v26 = &v53 - v24;
    }

    else
    {
      v26 = 0;
    }

    if (v23 - 0x3FFFFFFFFFFFFFFFLL >= 0xC000000000000102)
    {
      v26 = malloc_type_malloc(v22, 0x9D2B6113uLL);
    }

    if (v26)
    {
      v64 = v25;
      v27 = v70;
      v28 = *(v70 + 136);
      v29 = *(v28 + 16);
      v30 = *(a7 + 32);
      v31 = vmulq_n_f64(*a7, v29);
      v32 = vmulq_n_f64(*(a7 + 16), v29);
      v71 = v31;
      v72 = v32;
      v73 = v30;
      v33 = *(v28 + 88);
      v63 = v21;
      QuantizationLevelWithStyle = CGFontGetQuantizationLevelWithStyle(&v71, v21, v33);
      CGFontGetGlyphIdentifiers(a8, a7, a9, a10, &QuantizationLevelWithStyle, v26, v20, &v75);
      v34 = *(*(v27 + 136) + 8);
      v35 = a4[6];
      v36 = a4[7];
      v37 = a4[8];
      v38 = a4[9];
      v39 = v75.i32[0];
      v40 = v75.i32[1];
      v41 = v76;
      v42 = HIDWORD(v76);
      v43 = v76;
      v44 = SHIDWORD(v76);
      v78.origin.x = v35;
      v78.origin.y = v36;
      v78.size.width = v37;
      v78.size.height = v38;
      v92.origin.x = v75.i32[0];
      v92.origin.y = v75.i32[1];
      v92.size.width = v76;
      v92.size.height = SHIDWORD(v76);
      v45 = CGRectIntersectsRect(v78, v92);
      v65 = v20;
      if (v45)
      {
        goto LABEL_21;
      }

      v58 = v36;
      v59 = v35;
      v53 = a4;
      get_glyph_bounding_box(v34, &v71);
      v80 = CGRectIntegral(v79);
      x = v80.origin.x;
      y = v80.origin.y;
      width = v80.size.width;
      height = v80.size.height;
      v47 = v41 | v42;
      v48 = (v41 | v42) >> 31;
      v49 = v39;
      v50 = v40;
      if (v47 < 0)
      {
        v81.origin.x = v39;
        v81.origin.y = v40;
        v81.size.width = v43;
        v81.size.height = v42;
        *&v49 = CGRectStandardize(v81);
        v82.origin.x = v39;
        v82.origin.y = v40;
        v82.size.width = v43;
        v82.size.height = v42;
        v83 = CGRectStandardize(v82);
        v50 = v83.origin.y;
      }

      v84.origin.x = x;
      v84.origin.y = y;
      v84.size.width = width;
      v84.size.height = height;
      v85 = CGRectOffset(v84, v49, v50);
      v57 = v85.origin.x;
      v56 = v85.origin.y;
      v55 = v85.size.width;
      v54 = v85.size.height;
      if (v48)
      {
        v86.origin.x = v39;
        v86.origin.y = v40;
        v86.size.width = v43;
        v86.size.height = v42;
        v87 = CGRectStandardize(v86);
        v51 = v87.origin.x + v87.size.width;
        v87.origin.x = v39;
        v87.origin.y = v40;
        v87.size.width = v43;
        v87.size.height = v42;
        v88 = CGRectStandardize(v87);
        v40 = v88.origin.y;
        v44 = v88.size.height;
      }

      else
      {
        v51 = v39 + v43;
      }

      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      v93 = CGRectOffset(v89, v51, v40 + v44);
      v90.origin.x = v57;
      v90.origin.y = v56;
      v90.size.width = v55;
      v90.size.height = v54;
      v91 = CGRectUnion(v90, v93);
      v94.origin.x = v59;
      v94.origin.y = v58;
      v94.size.width = v37;
      v94.size.height = v38;
      if (CGRectIntersectsRect(v91, v94))
      {
LABEL_21:
        CGGlyphBuilderCreate();
      }

      if (v26 != v64)
      {
        free(v26);
      }

      v52 = v67;
      v20 = v65;
    }

    else
    {
      v52 = v67;
    }

    if (v20 != v52)
    {
      free(v20);
    }
  }
}

unint64_t CGFontGetQuantizationLevelWithStyle(uint64_t a1, int a2, unint64_t a3)
{
  v5 = CGFontRenderingStyleStandardize(a2);
  if ((v5 & 4) == 0)
  {
    v6 = 1;
LABEL_5:
    v7 = v6;
    return v6 | (v7 << 32);
  }

  if ((v5 & 8) == 0)
  {
    v6 = 128;
    goto LABEL_5;
  }

  if (v5 > 0xFFF)
  {
    v7 = HIDWORD(a3);
    LODWORD(v6) = a3;
    return v6 | (v7 << 32);
  }

  if (CGFontGetQuantizationLevel_once != -1)
  {
    dispatch_once_f(&CGFontGetQuantizationLevel_once, 0, defaults_setup_21642);
  }

  v6 = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = QX;
  if (QX < 1)
  {
    goto LABEL_5;
  }

  v10 = QY;
  v7 = 0;
  if (QY >= 1)
  {
    if (*(a1 + 8) == 0.0 && *(a1 + 16) == 0.0)
    {
      v11 = *a1;
      v12 = *(a1 + 24);
      if ((*a1 == v12 || v11 == -v12) && ((v13 = v11 - 6, v11 == v11) ? (v14 = v13 > 0x12) : (v14 = 1), !v14))
      {
        v6 = scale_level[v13];
      }

      else
      {
        v15 = vcvtpd_s64_f64(1.0 / (fabs(v11) * 0.03));
        if (QX >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = QX;
        }

        if (v15 < 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        v18 = vcvtpd_s64_f64(1.0 / (fabs(v12) * 0.12));
        if (QY >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = QY;
        }

        v20 = v19 << 32;
        v14 = v18 < 1;
        v21 = 0x100000000;
        if (!v14)
        {
          v21 = v20;
        }

        v6 = v21 | v17;
      }

      v7 = HIDWORD(v6);
    }

    else
    {
      v22 = *(a1 + 16);
      *&v23.a = *a1;
      *&v23.c = v22;
      *&v23.tx = *(a1 + 32);
      CGAffineTransformInvert(&v24, &v23);
      if (v9 < 2)
      {
        LODWORD(v6) = 1;
      }

      else
      {
        LODWORD(v6) = 1;
        while ((v24.d * 0.0 + v24.b * (1.0 / v6)) * (v24.d * 0.0 + v24.b * (1.0 / v6)) + (v24.c * 0.0 + v24.a * (1.0 / v6)) * (v24.c * 0.0 + v24.a * (1.0 / v6)) >= 0.0009)
        {
          LODWORD(v6) = v6 + 1;
          if (v9 == v6)
          {
            LODWORD(v6) = v9;
            break;
          }
        }
      }

      v7 = 1;
      if (v10 >= 2)
      {
        while ((v24.d * (1.0 / v7) + v24.b * 0.0) * (v24.d * (1.0 / v7) + v24.b * 0.0) + (v24.c * (1.0 / v7) + v24.a * 0.0) * (v24.c * (1.0 / v7) + v24.a * 0.0) >= 0.0144)
        {
          v7 = (v7 + 1);
          if (v10 == v7)
          {
            v7 = v10;
            return v6 | (v7 << 32);
          }
        }
      }
    }
  }

  return v6 | (v7 << 32);
}

uint64_t ripc_GetRenderingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v430 = *MEMORY[0x1E69E9840];
  result = *(a1 + 48);
  if (!result)
  {
    return result;
  }

  v9 = *(v4 + 72);
  (*(*result + 88))(result, v4 + 40);
  v10 = *(a3 + 112);
  v11 = *(*(a3 + 120) + 40);
  if (v10)
  {
    v12 = *(v10 + 4);
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v11)
  {
    v13 = *(v11 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (*(v9 + 1) == v13 && *v9 == v12)
  {
    goto LABEL_425;
  }

LABEL_11:
  v406 = 0uLL;
  if (v11)
  {
    v14 = *(v11 + 16);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_16:
    v15 = 0;
    if (a2)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_13:
  v15 = *(v10 + 4);
  if (a2)
  {
LABEL_14:
    v16 = *(a2 + 4);
    goto LABEL_20;
  }

LABEL_17:
  v17 = *(v4 + 8);
  if (v17)
  {
    v16 = *(v17 + 96);
  }

  else
  {
    v16 = 3;
  }

LABEL_20:
  v393 = v16;
  cf = a2;
  v9 = *(v4 + 72);
  if (!v9)
  {
    v9 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10E004069811642uLL);
    *(v9 + 3) = v9 + 24;
    *(v9 + 4) = v9 + 24;
    *v9 = ~v15;
    *(v9 + 1) = ~v14;
    RIPLayerInitialize((v9 + 48), v18, v19, v20, v21, v22, v23, v24);
    *(v9 + 19) |= 0x80u;
    *(v4 + 72) = v9;
  }

  v396 = a3;
  v408 = 0u;
  v409 = 0u;
  v407 = 0u;
  v405 = 0uLL;
  v25 = (*(**(v4 + 48) + 72))(*(v4 + 48), &v405);
  v29 = (v9 + 24);
  v30 = *(v9 + 4);
  v402 = v4;
  if (v30 == (v9 + 24))
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_84;
    }

    v389 = v11;
    v394 = a4;
    v31 = 0;
    __src = 0;
    v36 = 0.0;
    v35 = 0.0;
    v33 = 0.0;
    v32 = 0.0;
LABEL_79:
    if (v10)
    {
      v34 = *(v10 + 120);
    }

    else
    {
      v34 = 0;
    }

LABEL_86:
    if (*(v9 + 10) >= 0x11u)
    {
      v62 = *(v9 + 3);
      RIPClipStateRemoveEntry(v9, v62);
      if (v31 == v62)
      {
        v31 = 0;
      }
    }

    v63 = malloc_type_malloc(4 * v34 + 104, 0x1020040C07062A1uLL);
    v38 = v63;
    *v63 = v63;
    *(v63 + 1) = v63;
    *(v63 + 4) = v14;
    *(v63 + 5) = v15;
    *(v63 + 24) = v405;
    *(v63 + 24) = v34;
    v58 = __src;
    if (__src)
    {
      *(v63 + 7) = v32;
      *(v63 + 8) = v33;
      *(v63 + 9) = v35;
      *(v63 + 10) = v36;
      if (v34)
      {
        memcpy(v63 + 100, __src, 4 * v34);
      }

      if (!v31)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v10)
      {
        v68 = (v10 + 16);
        p_y = (v10 + 24);
        p_size = (v10 + 32);
        p_height = (v10 + 40);
      }

      else
      {
        v68 = &CGRectInfinite;
        p_height = &CGRectInfinite.size.height;
        p_y = &CGRectInfinite.origin.y;
        p_size = &CGRectInfinite.size;
      }

      v72 = *p_height;
      v73 = *p_y;
      v74 = p_size->width;
      *(v63 + 7) = *&v68->origin.x;
      *(v63 + 8) = v73;
      *(v63 + 9) = v74;
      *(v63 + 10) = v72;
      ripc_GetClipStackData(v10, v34, v63 + 25, v34);
      if (!v31)
      {
        goto LABEL_100;
      }
    }

    v75 = v31[11];
    if (v75)
    {
      if (v75 == -1)
      {
LABEL_100:
        v38[11] = 0;
        v28 = v405;
LABEL_103:
        *(v38 + 5) = v28;
        v76 = *(v9 + 4);
        v77 = *v38;
        *(v9 + 4) = v38;
        *v38 = v29;
        *v76 = v77;
        *(v77 + 8) = v76;
        ++*(v9 + 10);
        a2 = cf;
        v78 = cf[81];
        v80 = *(v38 + 7);
        v79 = *(v38 + 8);
        v81 = *(v38 + 9);
        if (v80 == -8.98846567e307 && v79 == -8.98846567e307 && v81 == 1.79769313e308 && *(v38 + 10) == 1.79769313e308)
        {
          v385 = 0;
          v82 = v4;
          v83 = &v405;
          *(&v409 + 1) = &v405;
          v28.n128_u64[0] = *(v82 + 40);
        }

        else
        {
          v28.n128_u64[0] = *(v4 + 40);
          v84 = v28.n128_f64[0] * v80;
          v85 = v84 + v28.n128_f64[0] * v81;
          v86 = -4194303.0;
          if (v84 < -4194303.0)
          {
            v84 = -4194303.0;
          }

          if (v85 > 4194303.0)
          {
            v85 = 4194303.0;
          }

          if (v84 >= v85)
          {
            goto LABEL_133;
          }

          v87 = v28.n128_f64[0] * v79;
          if (v87 >= -4194303.0)
          {
            v86 = v87;
          }

          v88 = v87 + v28.n128_f64[0] * *(v38 + 10) <= 4194303.0 ? v87 + v28.n128_f64[0] * *(v38 + 10) : 4194303.0;
          if (v86 >= v88)
          {
            goto LABEL_133;
          }

          v89 = llround(v84 * 256.0);
          v90 = llround(v86 * 256.0);
          v91 = llround(v85 * 256.0);
          v92 = llround(v88 * 256.0);
          if ((v405.n128_u32[0] << 8) > v89)
          {
            v89 = v405.n128_u32[0] << 8;
          }

          if ((v405.n128_u32[1] << 8) > v90)
          {
            v90 = v405.n128_u32[1] << 8;
          }

          v93 = ((v405.n128_u32[2] + v405.n128_u32[0]) << 8) >= v91 ? v91 : (v405.n128_u32[2] + v405.n128_u32[0]) << 8;
          v94 = ((v405.n128_u32[1] + v405.n128_u32[3]) << 8) >= v92 ? v92 : (v405.n128_u32[1] + v405.n128_u32[3]) << 8;
          if (v89 >= v93 || v90 >= v94)
          {
LABEL_133:
            v96 = v38[11];
            if (v96)
            {
              (*(*v96 + 24))(v96);
            }

            v38[11] = 0;
            v38[5] = 0;
            v38[6] = 0;
LABEL_136:
            a4 = v394;
LABEL_416:
            if (v58 && v58 != __dst)
            {
              free(v58);
            }

            *(v9 + 1) = *(v38 + 4);
            *v9 = *(v38 + 5);
            v352 = v38[11];
            *(v9 + 1) = v352;
            if (v352)
            {
              if (v352 == -1)
              {
                *(v9 + 1) = 0;
                *(v9 + 2) = 0;
              }

              else
              {
                *(v9 + 2) = v38 + 5;
              }
            }

            else
            {
              RIPLayerReplace((v9 + 48), (v38 + 5), 0, 0, 0, 0, v26, v27, v28);
              *(v9 + 1) = v9 + 48;
              *(v9 + 2) = v38 + 5;
              v4 = v402;
            }

            a3 = v396;
LABEL_425:
            v353 = *(v9 + 1);
            *a4 = v353;
            if (v353)
            {
              v354 = *(v9 + 2);
              v355 = v354[1];
              if (v355 < 1 || HIDWORD(v354[1]) < 1)
              {
                return 0;
              }

              v357.i64[0] = *v354;
              *(a4 + 8) = *v354;
              *(a4 + 16) = v355;
              v357.i64[1] = v355;
            }

            else
            {
              result = (*(**(v4 + 48) + 72))(*(v4 + 48), a4 + 8);
              if (!result)
              {
                return result;
              }

              v357 = *(a4 + 8);
            }

            v358 = *(v4 + 80);
            v359 = *(*(a3 + 120) + 16);
            if (!v359)
            {
              if (v358)
              {
                if (*v358)
                {
                  v404 = v357;
                  (*(*v358 + 24))(*(v4 + 80));
                  v357 = v404;
                }

                v358 = 0;
                *(v4 + 80) = 0;
              }

              goto LABEL_454;
            }

            v360 = *(v359 + 16);
            v361 = *(a2 + 40);
            *&__s2.a = *(a2 + 24);
            *&__s2.c = v361;
            v362 = *(a2 + 56);
            *&__s2.tx = v362;
            v362.n128_u64[0] = *(v4 + 40);
            if (v362.n128_f64[0] != 1.0)
            {
              *&__s2.a = vmulq_n_f64(*&__s2.a, v362.n128_f64[0]);
              *&__s2.c = vmulq_n_f64(*&__s2.c, v362.n128_f64[0]);
              *&__s2.tx = vmulq_n_f64(*&__s2.tx, v362.n128_f64[0]);
            }

            v403 = v357;
            if (v358)
            {
              if (*(v358 + 16) == v359 && *(v358 + 24) == v360)
              {
                if ((*(v358 + 12) & 1) == 0)
                {
                  goto LABEL_447;
                }

                *__srca = v362;
                v363 = memcmp((v358 + 32), &__s2, 0x30uLL);
                v362 = *__srca;
                if (!v363)
                {
                  goto LABEL_447;
                }
              }

              if (*v358)
              {
                (*(*v358 + 24))(v358, v362);
                v362.n128_u64[0] = *(v4 + 40);
              }

              *(v4 + 80) = 0;
            }

            v364 = rips_Create(v362, &_rips_class, v359);
            v358 = v364;
            if (!v364)
            {
              goto LABEL_449;
            }

            *(v4 + 80) = v364;
            *(v364 + 16) = v359;
            *(v364 + 24) = v360;
            v365 = *&__s2.c;
            v362 = *&__s2.tx;
            *(v364 + 32) = *&__s2.a;
            *(v364 + 48) = v365;
            *(v364 + 64) = v362;
LABEL_447:
            if ((*(*v358 + 40))(v358, a4 + 24, v362))
            {
              v357 = vaddq_s32(*(a4 + 24), v403);
LABEL_454:
              *(a4 + 24) = v357;
              *(a4 + 40) = v358;
              ripc_InitializeColorTransform(v4);
              if (a2)
              {
                v366 = *(v4 + 48);
                if (v366)
                {
                  *(v366 + 52) = *(a2 + 4);
                }
              }

              return 1;
            }

LABEL_449:
            v357 = v403;
            goto LABEL_454;
          }

          v97 = ((v93 + 255) >> 8) - (v89 >> 8);
          v98 = ((v94 + 255) >> 8) - (v90 >> 8);
          v99 = ((((v93 + 255) & 0xFFFF00) - v93) << 8) | (v89 << 24) | v90 | ((((v94 + 255) & 0xFF00) - v94) << 16);
          v100 = v89 >> 8;
          v101 = v90 >> 8;
          if (!cf[81])
          {
            v99 = 0;
          }

          v385 = v99;
          v406.n128_u64[0] = __PAIR64__(v101, v100);
          v406.n128_u64[1] = __PAIR64__(v98, v97);
          v83 = &v406;
          *(&v409 + 1) = &v406;
          v82 = v402;
        }

        v408 = *(v82 + 24);
        *(&v407 + 1) = v28.n128_u64[0];
        if (v34 >= 1)
        {
          v102 = 0;
          v103 = v31 + 100;
          v104 = v38 + 100;
          v105 = (v10 + 128);
          v384 = v78;
          do
          {
            if (v31 && v102 < *(v31 + 24))
            {
              if (*(v103 + 4 * v102) == *&v104[4 * v102] || v10 == 0)
              {
                goto LABEL_223;
              }
            }

            else if (!v10)
            {
              goto LABEL_223;
            }

            if (*(v10 + 120) <= v102)
            {
              goto LABEL_223;
            }

            v107 = v105;
            if (*(v10 + 112) != 3)
            {
              v107 = (*(v10 + 128) + 8 * v102);
            }

            v108 = *v107;
            if (!*v107)
            {
              goto LABEL_223;
            }

            v28.n128_u64[0] = 1.0;
            if (*(v108 + 8) == 2)
            {
              v28.n128_u64[0] = *(v108 + 32);
            }

            *&v407 = v28.n128_u64[0];
            if (v78)
            {
              v109 = *(v108 + 10);
            }

            else
            {
              v109 = 0;
            }

            LOBYTE(v409) = v109 & 1;
            v110 = *(v108 + 8);
            v111 = v110;
            if (v111 > 2)
            {
              if (v111 != 3)
              {
                if (v111 != 4 || v110 != 4)
                {
                  goto LABEL_223;
                }

                v114 = *(v108 + 24);
                if (!v114)
                {
                  goto LABEL_223;
                }

                Path = CGTextClippingCreatePath(v114);
                v116 = *(v402 + 56);
                if (!v116)
                {
                  v116 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                  *v116 = RIPRenderCreate_ripr_class;
                  v116[2] = 1;
                  *(v116 + 2) = 0;
                  *(v402 + 56) = v116;
                }

                RIPRenderPath(v116, &v407, Path, 0);
                if (Path)
                {
                  CFRelease(Path);
                }

                v122 = 0;
                v123 = v402;
LABEL_215:
                v157 = RIPRenderCoverage(*(v123 + 56), 0, *(&v409 + 1), v122, v117, v118, v119, v120, v121);
                if (v157)
                {
                  v164 = v157;
                  v165 = v38[11];
                  if (v165)
                  {
                    RIPLayerIntersect(v157, v165, v158, v159, v160, v161, v162, v163);
                  }
                }

                else
                {
                  v164 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v393, v161, v162, v163);
                }

                ripr_Finish(*(v402 + 56));
LABEL_220:
                v166 = v38[11];
                if (v166)
                {
                  (*(*v166 + 24))(v166);
                }

                goto LABEL_222;
              }

              if (v110 != 3)
              {
                goto LABEL_223;
              }

              v128 = *(v108 + 24);
              if (!v128)
              {
                goto LABEL_223;
              }

              v129 = *(v128 + 56);
              if (v129)
              {
                v413 = 0;
                v414 = 0;
                image = v129;
                if (ripc_GetImageSize(v129, &v414, &v413))
                {
                  width = v414;
                  v411 = v413;
                  v412 = v414;
                  height = v413;
                  v424 = 0u;
                  v425 = 0u;
                  v423 = 0u;
                  v130 = *(v128 + 8);
                  v131 = *(v128 + 40);
                  v424 = *(v128 + 24);
                  v425 = v131;
                  v132 = *(v402 + 40);
                  v423 = v130;
                  if (v132 != 1.0)
                  {
                    v423 = vmulq_n_f64(v423, v132);
                    v424 = vmulq_n_f64(v424, v132);
                    v425 = vmulq_n_f64(v425, v132);
                  }

                  v133 = *(v128 + 64);
                  v134 = *(v128 + 72);
                  v135 = *(v128 + 80);
                  v136 = *(v128 + 88);
                  if (v135 < 0.0 || v136 < 0.0)
                  {
                    *&v133 = CGRectStandardize(*&v133);
                  }

                  v137 = vmlaq_n_f64(vmulq_f64(v424, 0), v423, v135);
                  v138 = vmlaq_f64(vmulq_n_f64(v424, v136), 0, v423);
                  v139 = vmlaq_n_f64(vmulq_n_f64(v424, v134), v423, v133);
                  v423 = v137;
                  v424 = v138;
                  v425 = vaddq_f64(v425, v139);
                  v416 = 0uLL;
                  v415 = 0uLL;
                  v410[0] = 0;
                  v410[1] = 0;
                  ImageTransformation = ripc_GetImageTransformation(image, v83, width, height, 0, v423.f64, &v416, &v415, v410);
                  if (ImageTransformation)
                  {
                    RenderingIntent = CGImageGetRenderingIntent(image);
                    if (!RenderingIntent)
                    {
                      v141 = *(*(v396 + 120) + 4);
                      v142 = v141 << 12;
                      if (((v141 >> 20) & 0xF) != 0)
                      {
                        v143 = v141 << 8;
                      }

                      else
                      {
                        v143 = v141 << 12;
                      }

                      if (!(v143 >> 28))
                      {
                        v143 = v142;
                      }

                      RenderingIntent = v143 >> 28;
                    }

                    v375 = RenderingIntent;
                    if (ImageTransformation < 4)
                    {
                      v374 = 1;
                      goto LABEL_226;
                    }

                    ShouldInterpolate = CGImageGetShouldInterpolate(image);
                    ImageInterpolation = ripc_GetImageInterpolation(cf, *(*(v396 + 120) + 4), ShouldInterpolate);
                    v374 = ImageInterpolation;
                    if (ImageInterpolation >= 3)
                    {
                      v172 = ImageInterpolation;
                      if ((ImageTransformation & 2) != 0)
                      {
                        v173 = 0;
                      }

                      else
                      {
                        v173 = &v416;
                      }

                      if (ripc_GetImageInterpolationSize(v423.f64, &v412, &v411, v173))
                      {
                        v171 = v172;
                      }

                      else
                      {
                        v171 = 1;
                      }
                    }

                    else
                    {
LABEL_226:
                      v171 = 1;
                    }

                    v174 = CGBitmapContextCreateWithData(0, width, height, 8uLL, 0, 0, 7u, 0, 0);
                    CGContextErase(v174, v175, v176, v177, v178, v179, v180, v181);
                    Delegate = CGContextGetDelegate(v174, v182, v183, v184, v185, v186, v187, v188);
                    if (Delegate)
                    {
                      Delegate = *(Delegate + 288);
                    }

                    if ((ImageTransformation & 2) != 0)
                    {
                      v190 = 0;
                    }

                    else
                    {
                      v190 = &v416;
                    }

                    v195 = ripc_AcquireRIPImageData(Delegate, image, v412, v411, v190, 0, v171, v375);
                    if (v174)
                    {
                      CFRelease(v174);
                    }

                    if (v195)
                    {
                      if (cf[81] == 1 && (*(*(v396 + 120) + 7) & 1) != 0)
                      {
                        v196 = *(v402 + 108) | 0xFF00;
                      }

                      else
                      {
                        v196 = *(v402 + 108);
                      }

                      *(v402 + 108) = v196;
                      *(v402 + 108) = v196 & 0xFF00 | cf[82];
                      *(v402 + 112) = (*(*(v396 + 120) + 4) << 12) >> 28;
                      imagea = v195;
                      if (*(v195 + 4) && !*(v195 + 11))
                      {
                        v197 = RIPGetDepthForLayerFormat(1u, v191, v192, v193, v194, v65, v26, v27);
                      }

                      else
                      {
                        v197 = 0;
                      }

                      v198 = RIPLayerCreate(RIPLayer_ripl_class, v410, 0, v197, *(cf + 1), v65, v26, v27);
                      if (v198)
                      {
                        v164 = v198;
                        *&v420 = 0;
                        memset(&__s2, 0, sizeof(__s2));
                        *(v402 + 104) = 1;
                        if (ImageTransformation >= 4)
                        {
                          v201 = &v423;
                        }

                        else
                        {
                          v201 = 0;
                        }

                        *(v402 + 152) = 0x3FF0000000000000;
                        ripc_InitializeImage(&__s2, &v415, imagea, v374, width, height, v201, 0, 0.0, v199, v200);
                        RIPLayerBltImage(v164, 0, v410, &__s2, v402 + 104, v202, v203, v204);
                        if (v197)
                        {
                          RIPLayerCoverage(v164, v205, v206, v207, v208, v209, v210, v211);
                        }

                        ripc_ReleaseRIPImageData(imagea);
                        v218 = v38[11];
                        if (v218)
                        {
                          RIPLayerIntersect(v164, v218, v212, v213, v214, v215, v216, v217);
                          goto LABEL_220;
                        }

LABEL_222:
                        v38[11] = v164;
                        v167 = *(*v164 + 72);
                        v168 = v164;
                        v83 = (v38 + 5);
                        v167(v168, v38 + 5);
                        *(&v409 + 1) = v38 + 5;
                        v103 = v31 + 100;
                        v104 = v38 + 100;
                        goto LABEL_223;
                      }

                      ripc_ReleaseRIPImageData(imagea);
                    }
                  }
                }
              }

              v164 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v393, v65, v26, v27);
              goto LABEL_220;
            }

            if (!v110)
            {
              memset(&__s2, 0, 32);
              if (*(v108 + 8))
              {
                v124 = &CGRectNull;
                v125 = &CGRectNull.size.height;
                v126 = &CGRectNull.origin.y;
                v127 = &CGRectNull.size;
              }

              else
              {
                v124 = (v108 + 24);
                v126 = (v108 + 32);
                v127 = (v108 + 40);
                v125 = (v108 + 48);
              }

              v123 = v402;
              v151 = *v125;
              v152 = *v126;
              v153 = v127->width;
              __s2.a = v124->origin.x;
              __s2.b = v152;
              __s2.c = v153;
              __s2.d = v151;
              v154 = *(v402 + 56);
              if (!v154)
              {
                v154 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                *v154 = RIPRenderCreate_ripr_class;
                v154[2] = 1;
                *(v154 + 2) = 0;
                *(v402 + 56) = v154;
              }

              RIPRenderRectangles(v154, &v407, &CGAffineTransformIdentity.a, &__s2.a, 1, 0);
              v122 = 0;
              goto LABEL_215;
            }

            if (v111 == 2)
            {
              if (v110 == 2)
              {
                v112 = *(v108 + 24);
              }

              else
              {
                v112 = 0;
              }

              v421 = 0u;
              v422 = 0u;
              v420 = 0u;
              memset(&__s2, 0, sizeof(__s2));
              if (*(v108 + 9) << 8 == 512 && (v144 = *(v108 + 16)) != 0)
              {
                v145 = *(v144 + 8);
                v146 = *(v144 + 40);
                *&__s2.c = *(v144 + 24);
                *&__s2.tx = v146;
                *&__s2.a = v145;
                *&v420 = *(v144 + 56);
                v147 = *(v144 + 64);
                DWORD2(v420) = v147;
                HIDWORD(v420) = v147 >> 8;
                *&v421 = *(v144 + 72);
                v148 = *(v144 + 80);
                if (v148)
                {
                  v422 = *(v148 + 8);
                  v148 += 24;
                }

                *(&v421 + 1) = v148;
                if (v78)
                {
                  v149 = *(v144 + 67);
                }

                else
                {
                  v149 = 0;
                }

                LOBYTE(v409) = v149 & 1;
                *&v407 = *(v144 + 88);
                p_s2 = &__s2;
              }

              else
              {
                p_s2 = 0;
              }

              v155 = *(v402 + 56);
              if (!v155)
              {
                v156 = v112;
                v155 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                v112 = v156;
                *v155 = RIPRenderCreate_ripr_class;
                v155[2] = 1;
                *(v155 + 2) = 0;
                *(v402 + 56) = v155;
              }

              RIPRenderPath(v155, &v407, v112, p_s2);
              v122 = *(v108 + 9) << 8 == 256;
              v123 = v402;
              v78 = v384;
              goto LABEL_215;
            }

LABEL_223:
            ++v102;
            ++v105;
          }

          while (v34 != v102);
        }

        if (v385)
        {
          v219 = v38[11];
          a2 = cf;
          v58 = __src;
          a4 = v394;
          v220 = v389;
          if (v219)
          {
            v221 = *(v38 + 10);
            if (v221 <= v406.n128_i32[0] || (v222 = *(v38 + 11), v222 <= v406.n128_i32[1]) || *(v38 + 12) + v221 >= (v406.n128_u32[2] + v406.n128_u32[0]) || *(v38 + 13) + v222 >= (v406.n128_u32[3] + v406.n128_u32[1]))
            {
              v226 = RIPLayerClip(v219, &v406, v385, v393, v64, v385, v26, v27);
              if (!v226)
              {
                v226 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v393, v223, v224, v225);
              }

              v227 = v38[11];
              if (v226 != v227 && v227)
              {
                (*(*v227 + 24))(v227);
              }

LABEL_270:
              v38[11] = v226;
              (*(*v226 + 72))(v226, v38 + 5);
              goto LABEL_285;
            }

            goto LABEL_285;
          }

          v38[11] = RIPLayerCreateWithData(&v406, 0, 0, 0, 0, v385, 0, v393);
        }

        else
        {
          a2 = cf;
          v58 = __src;
          a4 = v394;
          v220 = v389;
          if (v83 != &v406)
          {
            goto LABEL_285;
          }

          v228 = v38[11];
          if (v228)
          {
            v229 = *(v38 + 10);
            if (v229 < v406.n128_i32[0] || (v230 = *(v38 + 11), v230 < v406.n128_i32[1]) || *(v38 + 12) + v229 > (v406.n128_u32[2] + v406.n128_u32[0]) || *(v38 + 13) + v230 > (v406.n128_u32[3] + v406.n128_u32[1]))
            {
              v226 = RIPLayerClip(v228, &v406, 0, v393, v64, v385, v26, v27);
              if (!v226)
              {
                v226 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v393, v231, v232, v233);
              }

              v234 = v38[11];
              if (v226 != v234 && v234)
              {
                (*(*v234 + 24))(v234);
              }

              goto LABEL_270;
            }

LABEL_285:
            if (!v220 || *(v38 + 12) < 1 || *(v38 + 13) < 1)
            {
LABEL_412:
              v351 = v38[11];
              v4 = v402;
              if (v351)
              {
                *(v351 + 28) |= 0x80u;
              }

              else if (*(&v409 + 1) == &v405)
              {
                v38[11] = -1;
              }

              goto LABEL_416;
            }

            v235 = a4;
            LODWORD(v412) = 1065353216;
            v236 = *(&v409 + 1);
            v416 = 0u;
            v417 = 0u;
            v415 = 0uLL;
            LODWORD(v410[0]) = 0;
            v237 = v402;
            v66.f64[0] = *(v402 + 40);
            v67.f64[0] = 1.0;
            v238 = vdupq_lane_s64(vmvnq_s8(vceqq_f64(v66, v67)).i64[0], 0);
            v239 = vbslq_s8(v238, vmulq_n_f64(*(v220 + 56), v66.f64[0]), *(v220 + 56));
            v240 = vbslq_s8(v238, vmulq_n_f64(*(v220 + 40), v66.f64[0]), *(v220 + 40));
            v241 = vbslq_s8(v238, vmulq_n_f64(*(v220 + 24), v66.f64[0]), *(v220 + 24));
            v433 = *(v220 + 72);
            v387 = v241;
            v388 = v240;
            *&__s2.a = v241;
            *&__s2.c = v240;
            v392 = v239;
            *&__s2.tx = v239;
            v434 = CGRectApplyAffineTransform(v433, &__s2);
            x = v434.origin.x;
            y = v434.origin.y;
            v244 = v434.size.width;
            v245 = v434.size.height;
            v246 = *(v220 + 104);
            v395 = v246;
            if (v246)
            {
              Components = CGColorGetComponents(v246);
              if ((v246 & 0x8000000000000000) != 0)
              {
                ColorSpace = CGTaggedColorGetColorSpace(v246, v247, v248, v249, v250, v251, v252, v253);
              }

              else
              {
                ColorSpace = *(v246 + 24);
              }

              if (ColorSpace)
              {
                v257 = *(*(ColorSpace + 3) + 48);
                if (v257)
                {
                  v258 = &__s2;
                  do
                  {
                    v259 = *Components++;
                    v260 = v259;
                    *&v258->a = v260;
                    v258 = (v258 + 4);
                    --v257;
                  }

                  while (v257);
                }
              }

              DeviceGray = CGColorSpaceCreateDeviceGray();
              v256 = color_transform_create(DeviceGray, 0);
              CGColorSpaceRelease(DeviceGray);
              if ((v246 & 0x8000000000000000) != 0)
              {
                v269 = CGTaggedColorGetColorSpace(v246, v262, v263, v264, v265, v266, v267, v268);
              }

              else
              {
                v269 = *(v246 + 24);
              }

              v237 = v402;
              CGColorTransformConvertColorFloatComponents(v256, v269, 0, &__s2, v410, 1);
            }

            else
            {
              v256 = 0;
              LODWORD(v410[0]) = 0;
            }

            v270 = v38 + 5;
            v390 = v220;
            v271 = *(v220 + 112);
            if (!v271 || *(v271 + 72) == evaluate_identity)
            {
              v271 = 0;
              LODWORD(v412) = v410[0];
              v386 = 1;
            }

            else
            {
              function_evaluate_float(v271, v410, &v412, v434.origin);
              v386 = 0;
            }

            v439.origin.x = *v236;
            v439.origin.y = v236[1];
            v439.size.width = v236[2];
            v439.size.height = v236[3];
            v435.origin.x = x;
            v435.origin.y = y;
            v435.size.width = v244;
            v435.size.height = v245;
            *v28.n128_u64 = CGRectIntersection(v435, v439);
            *&v416.f64[0] = v28.n128_u64[0];
            v416.f64[1] = v436.origin.y;
            v417.f64[0] = v436.size.width;
            v417.f64[1] = v436.size.height;
            v277 = v28.n128_f64[0] == INFINITY || v436.origin.y == INFINITY;
            if (v277 || v436.size.width == 0.0 || v436.size.height == 0.0)
            {
              if (!v256)
              {
                a4 = v235;
                v58 = __src;
                goto LABEL_405;
              }

              cfb = v256;
              v278 = 0;
              a4 = v235;
              v58 = __src;
              CFRelease(cfb);
LABEL_402:
              if (v278)
              {
                v348 = v38[11];
                if (!v348)
                {
LABEL_410:
                  v38[11] = v278;
                  (*(*v278 + 72))(v278, v270);
LABEL_411:
                  *(&v409 + 1) = v270;
                  goto LABEL_412;
                }

                RIPLayerIntersect(v278, v348, v279, v280, v281, v276, v26, v27);
                goto LABEL_407;
              }

LABEL_405:
              v349 = *&v412;
              if (*&v412 >= 0.0039062)
              {
                v28.n128_u32[0] = 1065287680;
                if (*&v412 >= 0.99609)
                {
                  goto LABEL_411;
                }

                v370 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
                *v370 = &ripc_class;
                v370[1] = 0;
                v370[2] = 0;
                v370[3] = 0x3F80000000000000;
                *(v370 + 39) = 1065353216;
                *(v402 + 152) = v349;
                v278 = v38[11];
                if (v278)
                {
                  v371 = 7;
                }

                else
                {
                  v278 = RIPLayerCreate(RIPLayer_ripl_class, *(&v409 + 1), 0, 0, v393, v367, v368, v369);
                  v371 = 1;
                }

                *(v402 + 104) = v371;
                RIPLayerBltShape(v278, 0, 0, 0, v370, 0, v402 + 104, v369);
                free(v370);
                v350 = v38[11];
                v58 = __src;
                if (v278 == v350)
                {
                  goto LABEL_411;
                }

                goto LABEL_408;
              }

              v278 = RIPLayerCreate(RIPLayer_ripl_class, 0, 0, 0, v393, v276, v26, v27);
LABEL_407:
              v350 = v38[11];
LABEL_408:
              if (v350)
              {
                (*(*v350 + 24))(v350);
              }

              goto LABEL_410;
            }

            v282 = v28.n128_f64[0] + v436.size.width;
            if (v28.n128_f64[0] <= 1073741820.0)
            {
              v284 = vcvtmd_s64_f64(v28.n128_f64[0] + 0.0);
              if (v28.n128_f64[0] >= -1073741820.0)
              {
                v283 = v284;
              }

              else
              {
                v283 = -1073741823;
              }
            }

            else
            {
              v283 = 0x3FFFFFFF;
            }

            LODWORD(v415) = v283;
            if (v282 <= 1073741820.0)
            {
              v286 = vcvtpd_s64_f64(v282);
              if (v282 >= -1073741820.0)
              {
                v285 = v286;
              }

              else
              {
                v285 = -1073741823;
              }
            }

            else
            {
              v285 = 0x3FFFFFFF;
            }

            DWORD2(v415) = v285 - v283;
            v287 = v436.origin.y + v436.size.height;
            if (v436.origin.y <= 1073741820.0)
            {
              v289 = vcvtmd_s64_f64(v436.origin.y + 0.0);
              if (v436.origin.y >= -1073741820.0)
              {
                v288 = v289;
              }

              else
              {
                v288 = -1073741823;
              }
            }

            else
            {
              v288 = 0x3FFFFFFF;
            }

            DWORD1(v415) = v288;
            widtha = v271;
            if (v287 <= 1073741820.0)
            {
              v290 = v38 + 5;
              if (v287 >= -1073741820.0)
              {
                v291 = vcvtpd_s64_f64(v287);
              }

              else
              {
                v291 = -1073741823;
              }
            }

            else
            {
              v290 = v38 + 5;
              v291 = 0x3FFFFFFF;
            }

            HIDWORD(v415) = v291 - v288;
            v292 = *&v412;
            if (*&v412 < 0.0039062)
            {
              v293 = &v415;
            }

            else
            {
              v293 = v236;
            }

            if (v256)
            {
              v294 = RIPGetDepthForLayerFormat(1u, v272, v273, v274, v275, v276, v26, v27);
            }

            else
            {
              v294 = 0;
            }

            v295 = *(v237 + 8);
            cfa = v256;
            if (v295)
            {
              v296 = *(v295 + 96);
            }

            else
            {
              v296 = 3;
            }

            a4 = v235;
            v297 = RIPLayerCreate(RIPLayer_ripl_class, v293, 16, v294, v296, v276, v26, v27);
            v278 = v297;
            v58 = __src;
            v270 = v290;
            if (!v297)
            {
LABEL_400:
              if (cfa)
              {
                CFRelease(cfa);
              }

              goto LABEL_402;
            }

            memset(&v428[16], 0, 96);
            v429 = 0u;
            *v428 = 0u;
            v425 = 0u;
            v426 = 0u;
            v423 = 0u;
            v424 = 0u;
            *&v428[24] = *(v402 + 120);
            *&v428[40] = *(v402 + 136);
            *&v428[56] = *(v402 + 152);
            *&v428[72] = *(v402 + 168);
            *&v428[8] = *(v402 + 104);
            v424.f64[0] = *(v402 + 16);
            v425.f64[1] = *(v402 + 40);
            v426 = *(v402 + 48);
            memset(v427, 0, sizeof(v427));
            *&v427[0] = *(v402 + 64);
            *(v402 + 56) = 0u;
            *(v427 + 8) = *(v402 + 72);
            *(v402 + 72) = 0u;
            DWORD2(v429) = *(v402 + 216);
            *(v402 + 216) = 1;
            *(v402 + 40) = 0x3FF0000000000000;
            *(v402 + 48) = v297;
            if (v292 >= 0.0039062 && *(v297 + 20) != *(&v415 + 1))
            {
              v298 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
              v300 = v298;
              v298[1] = 0;
              v298[2] = 0;
              *v298 = &ripc_class;
              *(v298 + 6) = 0;
              v301 = 1.0;
              if (cfa)
              {
                v302 = v292;
              }

              else
              {
                v302 = 1.0;
              }

              if (!cfa)
              {
                v301 = v292;
              }

              *(v298 + 7) = v302;
              *(v298 + 39) = v301;
              *(v402 + 104) = 1;
              *(v402 + 152) = 0x3FF0000000000000;
              RIPLayerBltShape(v278, 0, 0, 0, v298, 0, v402 + 104, v299);
              v303 = v300;
              v270 = v290;
              free(v303);
            }

            CGRenderingStateCreateCopy(a2);
            v305 = v304;
            *(v304 + 24) = CGAffineTransformIdentity;
            Copy = CGGStateCreateCopy(v396);
            CGGStateResetClip(Copy);
            if (*(*(Copy + 15) + 8) != 1.0)
            {
              maybeCopyRenderingState(Copy);
              *(*(Copy + 15) + 8) = 0x3FF0000000000000;
            }

            CGGStateSetStyle(Copy, 0);
            CGGStateSetSoftMask(Copy, 0);
            *(Copy + 24) = CGAffineTransformIdentity;
            CGGStateSetCompositeOperation(Copy, 1);
            if (cfa)
            {
              *(v402 + 16) = cfa;
              v314.i64[0] = v415;
              v314.i64[1] = SDWORD1(v415);
              v315 = vcvtq_f64_s64(v314);
              v314.i64[0] = SDWORD2(v415);
              v314.i64[1] = SHIDWORD(v415);
              v416 = v315;
              v417 = vcvtq_f64_s64(v314);
              v377 = v417;
              heighta = v315;
              if (v395)
              {
                if ((v395 & 0x8000000000000000) != 0)
                {
                  v316 = CGTaggedColorGetColorSpace(v395, v307, v308, v309, v310, v311, v312, v313);
                }

                else
                {
                  v316 = *(v395 + 24);
                }
              }

              else
              {
                v316 = 0;
              }

              if (CGColorTransformConvertRequired(cfa, v316, 0))
              {
                Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v395)
                {
                  if ((v395 & 0x8000000000000000) != 0)
                  {
                    v326 = Mutable;
                    v327 = CGTaggedColorGetColorSpace(v395, v318, v319, v320, v321, v322, v323, v324);
                    Mutable = v326;
                    v328 = v327;
                  }

                  else
                  {
                    v328 = *(v395 + 24);
                  }

                  if (Mutable && v328)
                  {
                    v329 = Mutable;
                    CFDictionarySetValue(Mutable, @"kCGContextColorSpace", v328);
                    Mutable = v329;
                  }
                }

                if (*v402 && (v330 = *(*v402 + 192)) != 0)
                {
                  v331 = Mutable;
                  v332 = v330(heighta, heighta.n128_f64[1], v377, v377.n128_f64[1]);
                  Mutable = v331;
                  v317 = v332;
                }

                else
                {
                  v317 = 0;
                }

                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                CGGStateSetFillColor(Copy, v395);
                v333 = v317;
                if (v317)
                {
                  goto LABEL_381;
                }
              }

              else
              {
                CGGStateSetFillColor(Copy, v395);
              }

              v317 = 0;
              v333 = *v402;
              if (*v402)
              {
LABEL_381:
                v334 = v333[8];
                if (v334)
                {
                  v334();
                }
              }
            }

            else
            {
              v317 = 0;
              *(v402 + 16) = *(v402 + 200);
            }

            CGGStateSetFillColor(Copy, 0);
            CGGStateSetStrokeColor(Copy, 0);
            CGGStateSetCompositeOperation(Copy, 2);
            *(v305 + 24) = v387;
            *(v305 + 40) = v388;
            *(v305 + 56) = v392;
            *(Copy + 24) = v387;
            *(Copy + 40) = v388;
            *(Copy + 56) = v392;
            if (v317)
            {
              CGSoftMaskDelegateDrawSoftMask(v317, v305, Copy, v390, v335, v336, v337, v338);
              *(Copy + 24) = CGAffineTransformIdentity;
              *(v305 + 24) = CGAffineTransformIdentity;
              CGGStateSetCompositeOperation(Copy, 1);
              v339 = v317[25];
              if (v339)
              {
                v339(v317, v305, Copy);
              }
            }

            else
            {
              CGSoftMaskDelegateDrawSoftMask(*v402, v305, Copy, v390, v335, v336, v337, v338);
              *(Copy + 24) = CGAffineTransformIdentity;
              *(v305 + 24) = CGAffineTransformIdentity;
            }

            CGGStateRelease(Copy);
            if (atomic_fetch_add_explicit(v305, 0xFFFFFFFF, memory_order_relaxed) == 1)
            {
              free(v305);
            }

            ripc_ContextRestore(v402, &v423);
            *(v402 + 216) = DWORD2(v429);
            if (cfa)
            {
              RIPLayerCoverage(v278, v340, v279, v280, v281, v276, v26, v27);
            }

            if ((v386 & 1) == 0)
            {
              v341 = 0;
              LODWORD(v413) = 0;
              do
              {
                v28.n128_f32[0] = v341 / 255.0;
                *&v414 = v28.n128_f32[0];
                function_evaluate_float(widtha, &v414, &v413, v28);
                if (*&v413 >= 0.0)
                {
                  if (*&v413 <= 1.0)
                  {
                    v28.n128_f64[0] = (*&v413 * 255.0) + 0.5;
                    v347 = v28.n128_f64[0];
                  }

                  else
                  {
                    LOBYTE(v347) = -1;
                  }
                }

                else
                {
                  LOBYTE(v347) = 0;
                }

                *(&__s2.a + v341++) = v347;
              }

              while (v341 != 256);
              RIPLayerTransfer(v278, &v415, &__s2, v342, v343, v344, v345, v346);
            }

            goto LABEL_400;
          }
        }

        v28 = v406;
        *(v38 + 5) = v406;
        goto LABEL_285;
      }

      (*(*v75 + 16))(v31[11]);
    }

    v38[11] = v75;
    v28 = *(v31 + 5);
    v405 = v28;
    goto LABEL_103;
  }

  v391 = v25;
  v389 = v11;
  v394 = a4;
  __src = 0;
  v31 = 0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = -1;
  v35 = 0.0;
  v36 = 0.0;
LABEL_24:
  v37 = v34;
LABEL_25:
  v38 = v30;
  while (1)
  {
    v30 = v38[1];
    if (v38[3] != v405.n128_u64[0] || v38[4] != v405.n128_u64[1])
    {
LABEL_35:
      RIPClipStateRemoveEntry(v9, v38);
      goto LABEL_36;
    }

    if (*(v38 + 5) != v15)
    {
      v34 = v37 & ~(v37 >> 31);
      if (v37 < 0 && v10)
      {
        v34 = *(v10 + 120);
      }

      v41 = *(v38 + 24);
      if (v41 > v34)
      {
        RIPClipStateRemoveEntry(v9, v38);
        v37 = v34;
        if (v30 == v29)
        {
          goto LABEL_67;
        }

        goto LABEL_25;
      }

      if (!__src)
      {
        if (v10)
        {
          v42 = (v10 + 32);
          v43 = (v10 + 24);
          v44 = (v10 + 16);
          v45 = (v10 + 40);
        }

        else
        {
          v44 = &CGRectInfinite;
          v45 = &CGRectInfinite.size.height;
          v43 = &CGRectInfinite.origin.y;
          v42 = &CGRectInfinite.size;
        }

        v36 = *v45;
        v32 = v44->origin.x;
        v33 = *v43;
        v35 = v42->width;
        __src = ripc_GetClipStackData(v10, v34, __dst, 0x20uLL);
        v41 = *(v38 + 24);
      }

      v46 = v41;
      v47 = v41;
      while (v47 >= 1)
      {
        v48 = *(v38 + v47 + 24);
        v49 = &__src[v47--];
        if (v48 != *(v49 - 1))
        {
          goto LABEL_54;
        }
      }

      v50 = *(v38 + 7);
      v51 = *(v38 + 8);
      v52 = *(v38 + 9);
      v53 = *(v38 + 10);
      v431.origin.x = v50;
      v431.origin.y = v51;
      v431.size.width = v52;
      v431.size.height = v53;
      v437.origin.x = v32;
      v437.origin.y = v33;
      v437.size.width = v35;
      v437.size.height = v36;
      if (CGRectContainsRect(v431, v437))
      {
        v54 = *(v38 + 4);
        if (v46 == v34 && v54 == v14)
        {
          v432.origin.x = v50;
          v432.origin.y = v51;
          v432.size.width = v52;
          v432.size.height = v53;
          v438.origin.x = v32;
          v438.origin.y = v33;
          v438.size.width = v35;
          v438.size.height = v36;
          v55 = CGRectEqualToRect(v432, v438);
          v54 = v14;
          if (v55)
          {
            *(v38 + 4) = v14;
            *(v38 + 5) = v15;
            v372 = *v38;
            if (*v38 != v29)
            {
              v373 = v38[1];
              *(v372 + 8) = v373;
              *v373 = v372;
LABEL_70:
              v38[1] = v38;
              v57 = *(v9 + 4);
              *(v9 + 4) = v38;
              *v38 = v29;
              *v57 = v38;
              v38[1] = v57;
            }

LABEL_71:
            a2 = cf;
            v58 = __src;
            v4 = v402;
            goto LABEL_136;
          }
        }

        if (!v54 && (!v31 || *(v31 + 24) < v46))
        {
          v31 = v38;
        }

        v4 = v402;
        if (v30 == v29)
        {
          goto LABEL_77;
        }
      }

      else
      {
LABEL_54:
        RIPClipStateRemoveEntry(v9, v38);
        if (v30 == v29)
        {
LABEL_67:
          v4 = v402;
          goto LABEL_77;
        }
      }

      goto LABEL_24;
    }

    v40 = *(v38 + 4);
    if (v40 == v14)
    {
      v56 = *v38;
      if (*v38 != v29)
      {
        *(v56 + 8) = v30;
        *v30 = v56;
        goto LABEL_70;
      }

      goto LABEL_71;
    }

    if (!v40)
    {
      break;
    }

    if (v14)
    {
      goto LABEL_35;
    }

LABEL_36:
    v38 = v30;
    if (v30 == v29)
    {
      v34 = v37;
      goto LABEL_67;
    }
  }

  v32 = *(v38 + 7);
  v33 = *(v38 + 8);
  v35 = *(v38 + 9);
  v36 = *(v38 + 10);
  v59 = *(v38 + 24);
  v34 = v59;
  if (v59 >= 33)
  {
    v60 = 4 * v59;
    v61 = malloc_type_malloc(v60, 0x100004052888210uLL);
    v4 = v402;
    goto LABEL_76;
  }

  v4 = v402;
  if (v59)
  {
    v60 = 4 * v59;
    v61 = __dst;
LABEL_76:
    __src = v61;
    memcpy(v61, v38 + 100, v60);
    v31 = v38;
LABEL_77:
    if (v391)
    {
      if (v34 < 0)
      {
        goto LABEL_79;
      }

      goto LABEL_86;
    }

    if (__src && __src != __dst)
    {
      free(__src);
    }
  }

  else if (v391)
  {
    v34 = 0;
    __src = __dst;
    v31 = v38;
    goto LABEL_86;
  }

LABEL_84:
  result = 0;
  *v9 = v15;
  *(v9 + 1) = v14;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  return result;
}

_DWORD *ripc_GetClipStackData(void *a1, unint64_t a2, _DWORD *a3, unint64_t a4)
{
  if (a2)
  {
    if (a2 > a4)
    {
      a3 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
    }

    v6 = 0;
    v7 = a1 + 16;
    do
    {
      if (a1 && a1[15] > v6)
      {
        v8 = v7;
        if (a1[14] != 3)
        {
          v8 = (a1[16] + 8 * v6);
        }

        v9 = *v8;
        if (v9)
        {
          LODWORD(v9) = *(v9 + 4);
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      a3[v6++] = v9;
      ++v7;
    }

    while (a2 != v6);
  }

  return a3;
}

void CGGStateSetFontDilation(uint64_t a1, double a2, double a3)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 1.0;
  }

  if (a3 <= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *(a1 + 136);
  if (*(v5 + 72) != v3 || *(v5 + 80) != v4)
  {
    maybe_copy_text_state(a1);
    v8 = *(a1 + 136);
    *(v8 + 72) = v3;
    *(v8 + 80) = v4;
  }
}

uint64_t ripc_DrawGlyphs(uint64_t a1, _BYTE *a2, uint64_t a3, double *a4, __int16 *a5, uint64_t a6, unint64_t a7)
{
  if (ripc_DrawGlyphs_once != -1)
  {
    dispatch_once_f(&ripc_DrawGlyphs_once, 0, get_defaults);
  }

  v14 = *(a3 + 136);
  v15 = *v14;
  v16 = v15 >> 8;
  if ((v16 & 0xFFFFFFFB) != 3)
  {
    if (a1)
    {
      a1 = *(a1 + 288);
    }

    v17 = *(a3 + 24);
    v18 = *(a1 + 40);
    if (v18 == 1.0)
    {
      v19 = *(a3 + 32);
      v20 = *(a3 + 48);
      v21 = *(a3 + 64);
    }

    else
    {
      v17 = v18 * v17;
      v19 = vmulq_n_f64(*(a3 + 32), v18);
      v20 = vmulq_n_f64(*(a3 + 48), v18);
      v21 = v18 * *(a3 + 64);
    }

    *v80 = v17;
    *&v80[8] = v19;
    *&v80[24] = v20;
    *&v80[40] = v21;
    v22 = a4[4];
    v23 = a4[5];
    v24 = *v80;
    v25 = *&v80[16];
    v26 = vmlaq_n_f64(vmulq_n_f64(*&v80[16], a4[3]), *v80, a4[2]);
    *v80 = vmlaq_n_f64(vmulq_n_f64(*&v80[16], a4[1]), *v80, *a4);
    *&v80[16] = v26;
    v75 = vaddq_f64(*&v80[32], vmlaq_n_f64(vmulq_n_f64(v25, v23), v24, v22));
    *&v80[32] = v75;
    v78 = v26;
    v79 = *v80;
    v76 = v26.f64[1];
    v77 = *&v80[8];
    if ((v16 & 0xFFFFFFFB) != 0 || (should_use_glyph_bitmaps & 1) == 0)
    {
      if (v16 >= 7)
      {
        goto LABEL_68;
      }

      goto LABEL_28;
    }

    v27 = v14[2];
    v28 = v27 * (fabs(*v80) + fabs(*&v80[8]));
    v29 = v27 * (fabs(v26.f64[0]) + fabs(v26.f64[1]));
    if (v28 > 1024.0 || v29 > 1024.0)
    {
LABEL_28:
      v33 = v15 >> 8;
      if ((0x77u >> SBYTE1(v15)))
      {
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v83 = 0;
        v34 = a2;
        if (ripc_GetRenderingState(a1, a2, a3, &v85))
        {
          v71 = 0x66u >> v33;
          v35 = *(a3 + 136);
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);
          v69 = vmulq_n_f64(v78, v37);
          v70 = vmulq_n_f64(*v80, v37);
          v94 = v70;
          v95 = v69;
          *v96 = *&v80[32];
          get_glyph_bounding_box(v36, &v94);
          v73 = v39;
          v74 = v38;
          rect = v40;
          v42 = v41;
          font_info = get_font_info(v36);
          if (font_info)
          {
            v44 = font_info[2];
          }

          else
          {
            v44 = 0.0;
          }

          v45 = 1.0 / v44;
          v94 = vmulq_n_f64(v70, v45);
          v95 = vmulq_n_f64(v69, v45);
          v84 = &v86 + 8;
          v81[0] = *(*(a3 + 144) + 8);
          v82 = *(a1 + 24);
          v81[1] = 0x3FF0000000000000;
          if (a2[81] == 1)
          {
            v46 = *(*(a3 + 120) + 7) & 1;
          }

          else
          {
            v46 = 0;
          }

          LOBYTE(v83) = v46;
          if (v71)
          {
            ripc_GetRenderStroke(a3, &v88, (a3 + 24));
          }

          if (a7)
          {
            v47 = 0x5Du >> v33;
            v48 = SDWORD1(v87);
            v49 = v87;
            v50 = SHIDWORD(v86);
            v51 = SDWORD2(v86);
            if ((0x5Du >> v33))
            {
              v52 = 2;
            }

            else
            {
              v52 = 0;
            }

            v53 = v52 & 0xFFFFFFFFFFFFFFFELL | v71 & 1;
            v54 = (a6 + 8);
            do
            {
              v55 = *(v54 - 1);
              v56 = v75.f64[0] + *v54 * v78.f64[0] + v79 * v55;
              v57 = v75.f64[1] + *v54 * v76 + v77 * v55;
              v97.origin.y = v73;
              v97.origin.x = v74;
              v97.size.width = rect;
              v97.size.height = v42;
              v99 = CGRectOffset(v97, v56, v57);
              v98.origin.x = v51;
              v98.origin.y = v50;
              v98.size.width = v49;
              v98.size.height = v48;
              if (CGRectIntersectsRect(v98, v99))
              {
                v96[0] = v56;
                v96[1] = v57;
                GlyphPath = CGFontCreateGlyphPath(v36, &v94);
                if (GlyphPath)
                {
                  v59 = GlyphPath;
                  if (v47)
                  {
                    v60 = *(a1 + 56);
                    if (!v60)
                    {
                      v60 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                      *v60 = RIPRenderCreate_ripr_class;
                      v60[2] = 1;
                      *(v60 + 2) = 0;
                      *(a1 + 56) = v60;
                    }

                    RIPRenderPath(v60, v81, v59, 0);
                  }

                  if (v71)
                  {
                    v61 = *(a1 + 64);
                    if (!v61)
                    {
                      v61 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
                      *v61 = RIPRenderCreate_ripr_class;
                      v61[2] = 1;
                      *(v61 + 2) = 0;
                      *(a1 + 64) = v61;
                    }

                    RIPRenderPath(v61, v81, v59, &v88);
                  }

                  CFRelease(v59);
                  ripc_Render(a1, v34, a3, &v85, v53, v62, v63, v64, v65);
                }
              }

              ++a5;
              v54 += 2;
              --a7;
            }

            while (a7);
          }
        }

        return 0;
      }

LABEL_68:
      abort();
    }

    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
    if (ripc_GetRenderingState(a1, a2, a3, &v88))
    {
      if (a2[81] == 1 && a2[83] == 1)
      {
        if (a2[84])
        {
          v31 = 3;
        }

        else
        {
          v31 = 1;
        }

        if (a2[85] == 1)
        {
          if (a2[86])
          {
            v32 = 12;
          }

          else
          {
            v32 = 4;
          }

          v31 |= v32;
        }
      }

      else
      {
        v31 = 0;
      }

      v67 = CGGStateGetFontRenderingStyle(a3) & (v31 | 0x3DF0);
      if ((v67 & 2) != 0 && ((*(*(a1 + 48) + 29) & 1) == 0 || *(&v90 + 1) && should_enable_lcd_styles != 1 || *(*(a3 + 120) + 4) >= 768))
      {
        v67 = v67 & 0xFDFDFDFD;
      }

      if ((v67 & 1) != 0 && a7 >= 2 && (**(a3 + 136) & 0x80) != 0)
      {
        draw_glyph_bitmap_run_with_compositing(a1, v68, a2, a3, &v88, v67, v80, a5, a6, a7);
      }

      else
      {
        draw_glyph_bitmaps(a1, a2, a3, &v88, v68, v67, v80, a5, a6, a7);
      }
    }
  }

  return 0;
}

void CGGStateSetShouldDrawBitmapRuns(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 0x80) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 128;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFF7F | v4;
  }
}

__n128 RIPLayerReplace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  if (a1 && *a1)
  {
    v11 = a5;
    v13 = a3;
    if (a2)
    {
      v14 = *(a2 + 8);
      if (v14 < 0 || (v15 = *(a2 + 12), v15 < 0))
      {
        v14 = 0;
        v15 = 0;
      }

      result.n128_u64[0] = *a2;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      result = 0uLL;
    }

    v19 = result;
    if (*(a1 + 72))
    {
      v16 = *(a1 + 32);
      if (v16 == RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8))
      {
        v17 = *(a1 + 72);
        if (v17)
        {
          if (v17 != &the_empty_shape)
          {
            free(v17);
          }
        }
      }
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      if ((*(a1 + 28) & 2) == 0)
      {
        free(v18);
      }
    }

    result = v19;
    *(a1 + 12) = v19.n128_u64[0];
    *(a1 + 20) = v14;
    *(a1 + 24) = v15;
    *(a1 + 48) = v13;
    *(a1 + 56) = a4;
    *(a1 + 64) = v11;
    *(a1 + 72) = a6;
  }

  return result;
}

void CGGlyphBuilderCreate()
{
  if (CGGlyphBuilderCreate::once != -1)
  {
    dispatch_once_f(&CGGlyphBuilderCreate::once, 0, defaults_setup);
  }

  operator new();
}

int32x2_t CGFontGetGlyphIdentifiers(__int16 *a1, double *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, int32x2_t *a8)
{
  if (a4)
  {
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    v14 = *a5;
    v15 = a5[1];
    v16 = (a3 + 8);
    v17 = (a7 + 4);
    v18 = (a6 + 2);
    v19 = 0x8000000080000000;
    v20 = 0x8000000080000000;
    do
    {
      v21 = *(v16 - 1);
      v22 = v12 + v10 * *v16 + v8 * v21 + 0.001;
      v23 = v13 + *v16 * v11 + v9 * v21 + 0.001;
      v24 = floor(v22);
      v25 = floor(v23);
      v26 = *a1++;
      *(v18 - 1) = v26;
      *v18 = ((v22 - v24) * v14);
      v18[1] = ((v23 - v25) * v15);
      if (v24 <= 2147483650.0)
      {
        if (v24 >= -2147483650.0)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0x80000000;
        }
      }

      else
      {
        v27 = 0x7FFFFFFF;
      }

      *(v17 - 1) = v27;
      if (v25 <= 2147483650.0)
      {
        if (v25 >= -2147483650.0)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0x80000000;
        }
      }

      else
      {
        v28 = 0x7FFFFFFF;
      }

      *v17 = v28;
      v17 += 2;
      v19 = vmin_s32(__PAIR64__(v28, v27), v19);
      v20 = vmax_s32(__PAIR64__(v28, v27), v20);
      v16 += 2;
      v18 += 4;
      --a4;
    }

    while (a4);
  }

  else
  {
    v19 = 0x8000000080000000;
    v20 = 0x8000000080000000;
  }

  result = vsub_s32(v20, v19);
  *a8 = v19;
  a8[1] = result;
  return result;
}

BOOL CGRectIntersectsRect(CGRect rect1, CGRect rect2)
{
  x = rect1.origin.x;
  if (rect1.origin.x == INFINITY || rect1.origin.y == INFINITY)
  {
    return 0;
  }

  y = rect2.origin.y;
  v5 = rect2.origin.x;
  if (rect2.origin.x == INFINITY || rect2.origin.y == INFINITY)
  {
    return 0;
  }

  height = rect2.size.height;
  width = rect2.size.width;
  v10 = rect1.size.height;
  v11 = rect1.size.width;
  v12 = rect1.origin.y;
  if (rect1.size.width < 0.0 || rect1.size.height < 0.0)
  {
    v13 = CGRectStandardize(rect1);
    x = v13.origin.x;
    v12 = v13.origin.y;
    v11 = v13.size.width;
    v10 = v13.size.height;
  }

  if (width < 0.0 || height < 0.0)
  {
    v14.origin.x = v5;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectStandardize(v14);
    v5 = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  if (x >= v5)
  {
    if (x > v5 && v5 + width <= x)
    {
      return 0;
    }
  }

  else if (x + v11 <= v5)
  {
    return 0;
  }

  if (v12 >= y)
  {
    return v12 <= y || y + height > v12;
  }

  return v12 + v10 > y;
}

void render_glyphs(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __n128 a9)
{
  v9 = a8;
  v45[1] = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1EEE9AC00](8 * a8, a9);
  v20 = v45 - v19;
  if (v18 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v21 = v45 - v19;
  }

  else
  {
    v21 = 0;
  }

  if (v18 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000402)
  {
    v21 = malloc_type_malloc(v17, 0x13609545uLL);
  }

  if (v21)
  {
    v22 = v9 > 0x666666666666665;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v45[0] = a4;
    v23 = malloc_type_malloc(40 * v9 + 40, 0x10000400A747E1EuLL);
    *v23 = 0;
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v9;
    v23[4] = 0;
    CGGlyphBuilderLockBitmaps(a2, a6, v9, v21, v24, v25, v26, v27);
    if (v9)
    {
      v32 = (a7 + 4);
      v33 = v21;
      do
      {
        v34 = *v33;
        if (*v33)
        {
          v35 = v34[5];
          if (v35)
          {
            v36 = v34[6];
            if (v36)
            {
              v37 = v34[3] + *(v32 - 1);
              v38 = v34[4] + *v32;
              v39 = (v38 - v36);
              v40 = *(a5 + 24);
              v41 = *(a5 + 28);
              v42 = v40 >= v37 + v35 || *(a5 + 32) + v40 <= v37;
              v43 = !v42 && v41 < v38;
              if (v43 && *(a5 + 36) + v41 > v39)
              {
                RIPGlyphListAppendBitmap(v23, v37, v39, v34, v28, v29, v30, v31);
              }
            }
          }
        }

        v32 += 2;
        ++v33;
        --v9;
      }

      while (v9);
    }

    render_glyph_list(a1, v23, a3, v45[0], a5);
    CGGlyphBuilderUnlockBitmaps(a2);
    if (v21 != v20)
    {
      free(v21);
    }

    free(v23);
  }
}

uint64_t CGFontRenderingStyleStandardize(int a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 115;
  }

  else
  {
    v1 = 3457;
  }

  v2 = v1 & a1;
  v3 = v1 & a1 | 4;
  v4 = (v1 | 0x100C) & a1;
  if ((a1 & 8) == 0)
  {
    v4 = v3;
  }

  if ((a1 & 4) == 0)
  {
    v4 = v2;
  }

  if ((a1 & 1) == 0)
  {
    v4 = 0;
  }

  return v4 | a1 & 0x200u;
}

uint64_t CGGlyphBuilderLockBitmaps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v12 = *(a1 + 88);
  if (v12)
  {
    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    os_unfair_lock_lock((v12 + 4));
    if (!*(v12 + 32))
    {
      *(v12 + 32) = CFDictionaryCreateMutable(0, 0, &get_strike_strike_key_callbacks, 0);
    }

    v82 = 0u;
    v83 = 0u;
    memset(&key, 0, sizeof(key));
    CGFontStrikeKeyInit(&key, v13, (a1 + 32), v14, v15, v16);
    Value = CFDictionaryGetValue(*(v12 + 32), &key);
    if (!Value)
    {
      Value = malloc_type_calloc(1uLL, 0x870uLL, 0x10800401BCBC891uLL);
      __CFSetLastAllocationEventName();
      Value->_os_unfair_lock_opaque = 1;
      CGFontStrikeKeyInit(&Value[2], v13, (a1 + 32), v14, v15, v16);
      *&Value[22]._os_unfair_lock_opaque = 0;
      *&Value[24]._os_unfair_lock_opaque = 0;
      Value[26]._os_unfair_lock_opaque = 0;
      v18 = *(v12 + 40);
      v19 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v19)
      {
        *v19 = Value;
        v19[1] = v18;
        v18 = v19;
      }

      *(v12 + 40) = v18;
      CFDictionarySetValue(*(v12 + 32), &Value[2], Value);
      v9 = a3;
    }

    atomic_fetch_add_explicit(Value, 1u, memory_order_relaxed);
    v20 = *(v12 + 24);
    *(v12 + 24) = v20 + 1;
    Value[1]._os_unfair_lock_opaque = v20;
    os_unfair_lock_unlock((v12 + 4));
    *(a1 + 96) = Value;
    os_unfair_lock_lock(Value + 26);
    if (!v9)
    {
      os_unfair_lock_unlock(Value + 26);
      return 1;
    }

    v21 = 0;
    v22 = 1;
    do
    {
      *(a4 + 8 * v21) = 0;
      v23 = (a2 + 4 * v21);
      v24 = *v23;
      v25 = *(&Value[28]._os_unfair_lock_opaque + ((v24 >> 5) & 0x7F8));
      if (v25 && (v26 = *(v25 + 8 * *v23)) != 0)
      {
        while (1)
        {
          v27 = *v26;
          if (*v26)
          {
            if (*(v27 + 4) == v24 && *(v27 + 6) == *(v23 + 2) && *(v27 + 7) == *(v23 + 3))
            {
              break;
            }
          }

          v26 = v26[1];
          if (!v26)
          {
            goto LABEL_17;
          }
        }

        *(a4 + 8 * v21) = v27;
      }

      else
      {
LABEL_17:
        v22 = 0;
      }

      ++v21;
    }

    while (v21 != v9);
    os_unfair_lock_unlock(Value + 26);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    if (!a3)
    {
      goto LABEL_98;
    }
  }

  v28 = 0;
  v80 = a2;
  do
  {
    if (*(a4 + 8 * v28))
    {
      goto LABEL_97;
    }

    v29 = (a2 + 4 * v28);
    v30 = *(a1 + 112);
    if (!*&v30 || ((v31 = *v29, v32 = *(v29 + 2), v33 = *(v29 + 3), v34 = (v31 << 16) | (v32 << 8) | v33, v35 = vcnt_s8(v30), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL) ? (v34 >= *&v30 ? (v36 = v34 % v30.i32[0]) : (v36 = (v31 << 16) | (v32 << 8) | v33)) : (v36 = v34 & (*&v30 + 0xFFFFFFFFLL)), (v37 = *(*(a1 + 104) + 8 * v36)) == 0 || (v38 = *v37) == 0))
    {
LABEL_44:
      v40 = *a1;
      if (!*a1)
      {
        goto LABEL_118;
      }

      v41 = *(a1 + 8);
      v42 = *(a1 + 80);
      v43 = *v29;
      v44 = CFGetTypeID(*a1);
      if (_block_invoke_once_3400 != -1)
      {
        dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      }

      if (v44 != CGFontGetTypeID_font_type_id)
      {
        goto LABEL_118;
      }

      font_info = get_font_info(v40);
      if (font_info)
      {
        if (font_info[104])
        {
          v41 = v41 & 0xFFFFFFFE;
        }

        else
        {
          v41 = v41;
        }
      }

      v46 = (*(*(v40 + 16) + 400))(*(v40 + 112), v41, a1 + 32, v42, v43);
      if (v46)
      {
LABEL_70:
        v58 = *(a1 + 96);
        v59 = *v29;
        if (v58)
        {
          os_unfair_lock_lock((v58 + 104));
          v60 = *(v58 + 112 + 8 * BYTE1(v59));
          if (!v60)
          {
            v60 = malloc_type_calloc(0x100uLL, 8uLL, 0x2004093837F09uLL);
            *(v58 + 112 + 8 * BYTE1(v59)) = v60;
          }

          v61 = v60[v59];
          atomic_fetch_add_explicit(v46, 1u, memory_order_relaxed);
          v62 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
          if (v62)
          {
            *v62 = v46;
            v62[1] = v61;
            v61 = v62;
          }

          v9 = a3;
          v60[v59] = v61;
          *(v58 + 88) = vaddq_s64(*(v58 + 88), vdupq_n_s64((v46[8] * v46[6]) + 48));
          os_unfair_lock_unlock((v58 + 104));
          v59 = *v29;
        }

        v63 = (v59 >> 8) & 0xFF00 | (v59 << 16) | (v59 >> 24);
        v64 = *(a1 + 112);
        if (!*&v64)
        {
          goto LABEL_93;
        }

        v65 = vcnt_s8(v64);
        v65.i16[0] = vaddlv_u8(v65);
        if (v65.u32[0] > 1uLL)
        {
          v66 = (v59 >> 8) & 0xFF00 | (v59 << 16) | (v59 >> 24);
          if (v63 >= *&v64)
          {
            v66 = ((v59 >> 8) & 0xFF00 | (v59 << 16) | (v59 >> 24)) % v64.i32[0];
          }
        }

        else
        {
          v66 = v63 & (*&v64 + 0xFFFFFFFFLL);
        }

        v67 = *(*(a1 + 104) + 8 * v66);
        if (!v67 || (v38 = *v67) == 0)
        {
LABEL_93:
          operator new();
        }

        while (1)
        {
          v68 = v38[1];
          if (v68 == v63)
          {
            if (*(v38 + 8) == v59 && __PAIR64__(*(v38 + 19), *(v38 + 18)) == __PAIR64__(v59 >> 24, BYTE2(v59)))
            {
              a2 = v80;
              goto LABEL_96;
            }
          }

          else
          {
            if (v65.u32[0] > 1uLL)
            {
              if (v68 >= *&v64)
              {
                v68 %= *&v64;
              }
            }

            else
            {
              v68 &= *&v64 - 1;
            }

            if (v68 != v66)
            {
              goto LABEL_93;
            }
          }

          v38 = *v38;
          if (!v38)
          {
            goto LABEL_93;
          }
        }
      }

      v47 = get_font_info(v40);
      if (!v47)
      {
        goto LABEL_65;
      }

      v48 = v47[2];
      if (!v48)
      {
        goto LABEL_65;
      }

      memset(&key, 0, sizeof(key));
      v49 = *(v40 + 104);
      if (v49 < 0)
      {
        v49 = (*(*(v40 + 16) + 144))(*(v40 + 112));
        *(v40 + 104) = v49;
      }

      if (v49 || (*(a1 + 40) != 0.0 || *(a1 + 48) != 0.0) && (*(a1 + 32) != 0.0 || *(a1 + 56) != 0.0))
      {
        v50 = 1.0 / v48;
        v51 = *(a1 + 32);
        v52 = *(a1 + 48);
        *&key.a = vmlaq_n_f64(vmulq_f64(v52, 0), v51, v50);
        *&key.c = vmlaq_f64(vmulq_n_f64(v52, v50), 0, v51);
        key.tx = BYTE2(v43) / v42;
        key.ty = BYTE3(v43) / SHIDWORD(v42);
        GlyphPath = CGFontCreateGlyphPath(v40, &key);
        goto LABEL_66;
      }

      v54 = *(a1 + 32);
      v55 = *(a1 + 48);
      *&key.tx = *(a1 + 64);
      v77 = (2 * v42);
      v78 = (2 * HIDWORD(v42));
      *&key.a = vmulq_n_f64(v54, v77);
      *&key.c = vmulq_n_f64(v55, v78);
      v56 = (*(*(v40 + 16) + 408))(*(v40 + 112), &key, v43);
      if (v56)
      {
        key.b = 0.0;
        key.c = 0.0;
        key.a = 1.0 / v77;
        key.d = 1.0 / v78;
        key.tx = (2 * (BYTE2(v43) & 0x7Fu)) / v77;
        key.ty = (2 * (BYTE3(v43) & 0x7Fu)) / v78;
        v57 = v56;
        GlyphPath = CGPathCreateMutableCopyByTransformingPath(v56, &key);
        CFRelease(v57);
      }

      else
      {
LABEL_65:
        GlyphPath = 0;
      }

LABEL_66:
      v46 = CGGlyphBitmapCreateWithPathAndDilation(GlyphPath, v43, v40, v41, (a1 + 32));
      if (v46)
      {
        if (!GlyphPath)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v46 = CGGlyphBitmapCreate(v43, v41, 0, 0, 0, 0, 0, 0);
        if (!GlyphPath)
        {
LABEL_69:
          if (v46)
          {
            goto LABEL_70;
          }

LABEL_118:
          _CGHandleAssert("create_missing_bitmaps", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGGlyphBuilder.cc", "bitmap != nullptr", "bitmap missing", a6, a7, a8, v76);
        }
      }

      CFRelease(GlyphPath);
      goto LABEL_69;
    }

    while (1)
    {
      v39 = v38[1];
      if (v39 == v34)
      {
        break;
      }

      if (v35.u32[0] > 1uLL)
      {
        if (v39 >= *&v30)
        {
          v39 %= *&v30;
        }
      }

      else
      {
        v39 &= *&v30 - 1;
      }

      if (v39 != v36)
      {
        goto LABEL_44;
      }

LABEL_43:
      v38 = *v38;
      if (!v38)
      {
        goto LABEL_44;
      }
    }

    if (*(v38 + 8) != v31 || __PAIR64__(*(v38 + 19), *(v38 + 18)) != __PAIR64__(v33, v32))
    {
      goto LABEL_43;
    }

LABEL_96:
    *(a4 + 8 * v28) = v38[3];
LABEL_97:
    ++v28;
  }

  while (v28 != v9);
LABEL_98:
  if ((print_statistics & 1) == 0)
  {
    return 1;
  }

  v69 = MEMORY[0x1E69E9848];
  v70 = *MEMORY[0x1E69E9848];
  if (*a1)
  {
    v71 = (*(*(*a1 + 16) + 152))(*(*a1 + 112));
  }

  else
  {
    v71 = 0;
  }

  fprintf(v70, "%s: %s (%g, %g, %g, %g; %g, %g)\n", "note_glyph_build", v71, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  v72 = "s";
  if (*(a1 + 128) == 1)
  {
    v72 = "";
  }

  fprintf(*v69, "  building %lu bitmap%s...\n", *(a1 + 128), v72);
  v73 = 1;
  fwrite("    ", 4uLL, 1uLL, *v69);
  if (*a1)
  {
    v73 = (*(*(*a1 + 16) + 296))(*(*a1 + 112)) + 1;
  }

  result = std::vector<char>::vector[abi:fe200100](&key, v73);
  v75 = *(a1 + 120);
  if (!v75)
  {
LABEL_115:
    fputc(10, *v69);
    if (*&key.a)
    {
      key.b = key.a;
      operator delete(*&key.a);
    }

    return 1;
  }

  while (*&key.b != *&key.a)
  {
    if (*a1 && (result = (*(*(*a1 + 16) + 304))(*(*a1 + 112), *(v75 + 8)), result))
    {
      if (*&key.b == *&key.a)
      {
        break;
      }

      result = fprintf(*v69, "%s(%d,%d) ");
    }

    else
    {
      result = fprintf(*v69, "%hu(%d,%d) ");
    }

    v75 = *v75;
    if (!v75)
    {
      goto LABEL_115;
    }
  }

  __break(1u);
  return result;
}

double CGFontStrikeKeyInit(uint64_t a1, uint64_t a2, _OWORD *a3, int a4, double a5, double a6)
{
  if (a2)
  {
    v6 = *(a2 + 24);
    if (!v6)
    {
      atomic_compare_exchange_strong_explicit((a2 + 24), &v6, ~atomic_fetch_add_explicit(get_identifier_identifier, 1u, memory_order_relaxed), memory_order_relaxed, memory_order_relaxed);
      v6 = *(a2 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  v8 = a3[1];
  v7 = a3[2];
  *(a1 + 8) = *a3;
  *(a1 + 24) = v8;
  v9 = *(a1 + 32);
  *&v8 = *(a1 + 24) + (*(a1 + 8) + *(a1 + 16)) * 10000.0;
  *(a1 + 40) = v7;
  *(a1 + 4) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  result = (a5 + a6) * 1000.0;
  *(a1 + 72) = result + (a4 << 8) + (v6 << 12) + ((*&v8 + v9) << 20);
  return result;
}

uint64_t strike_key_equal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a2)
  {
    return 1;
  }

  v8 = 0;
  if (a1 && a2)
  {
    if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *a1 != *a2 || *(a1 + 4) != *(a2 + 4))
    {
      return 0;
    }

    v8 = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
    {
      v9 = *(a1 + 72);
      if (v9 != *(a2 + 72))
      {
        _CGHandleAssert("CGFontStrikeKeyEqual", 72, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontStrike.c", "key1->hash == key2->hash", "hash 0x%zx 0x%zx", a6, a7, a8, v9);
      }

      return 1;
    }
  }

  return v8;
}

uint64_t *RIPGlyphListAppendBitmap(uint64_t *result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result[2];
  if (v8 >= result[3])
  {
    _CGHandleAssert("RIPGlyphListAppendBitmap", 66, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPGlyphList.c", "gl->n < gl->max", "number of glyphs (%lu) out of bounds [0, %lu]", a6, a7, a8, v8);
  }

  v10 = result;
  v11 = *(a4 + 20);
  v12 = a2 | (a3 << 32);
  if (v8)
  {
    result = CGSBoundsUnion(*result, result[1], v12, *(a4 + 20));
    *v10 = result;
    v10[1] = v13;
  }

  else
  {
    *result = v12;
    result[1] = v11;
  }

  v14 = *(a4 + 20);
  v15 = *(v10 + 9);
  if (*(v10 + 8) > v14)
  {
    v14 = *(v10 + 8);
  }

  *(v10 + 8) = v14;
  v16 = *(a4 + 24);
  if (v15 > v16)
  {
    v16 = v15;
  }

  *(v10 + 9) = v16;
  v17 = &v10[5 * v8];
  v10[2] = v8 + 1;
  v17[5] = v12;
  v17[6] = v11;
  v17[8] = a4 + 40;
  *(v17 + 15) = *(a4 + 28);
  *(v17 + 14) = *(a4 + 32);
  *(v17 + 18) = *(a4 + 36);
  return result;
}

uint64_t render_glyph_list(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2[2])
  {
    v9 = result;
    v33[0] = 0;
    v33[1] = 0;
    v10 = a5[5];
    if (v10)
    {
      if ((*(v10 + 12) & 0x10) != 0)
      {
        v11 = a5[5];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = 3;
    if (!v11)
    {
      v12 = 1;
    }

    v13 = *&a5[v12];
    v34 = *a2;
    v35 = v13;
    v36 = 0;
    v37 = 0;
    result = CGSBoundsIntersection(&v35, &v34, v33);
    if (result)
    {
      *(v9 + 104) = (*(*(a4 + 120) + 4) << 16) >> 24;
      *(v9 + 108) = *(a3 + 82);
      *(v9 + 112) = (*(*(a4 + 120) + 4) << 12) >> 28;
      v15 = *(*(a4 + 136) + 40);
      *(v9 + 168) = v15;
      result = ripc_GetColor(v9, a3, a4, 2, v33, &v37, (v9 + 152), v14);
      if (result)
      {
        v17 = result;
        Color = ripc_GetColor(v9, a3, a4, 8, v33, &v36, (v9 + 160), v16);
        if (v11)
        {
          (*(*v11 + 64))(v11, *(v9 + 48), *a5, v33, a2, v17, &v37, Color, &v36, v9 + 104);
        }

        else
        {
          RIPLayerBltGlyph(*(v9 + 48), *a5, v33, a2, v17, &v37, Color, v9 + 104);
        }

        RIPObjectRelease(v17, v19, v20, v21, v22, v23, v24, v25);
        return RIPObjectRelease(Color, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  return result;
}

uint64_t CGSBoundsIntersection(int *a1, int *a2, _DWORD *a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v4 = a1[2];
    if (v4 < 1)
    {
      return 0;
    }

    v5 = a2[2];
    if (v5 < 0)
    {
      return 0;
    }

    v6 = a1[3];
    if (v6 < 1)
    {
      return 0;
    }

    v7 = a2[3];
    if (v7 < 0)
    {
      return 0;
    }

    v8 = *a1 + v4;
    v9 = *a2 + v5;
    if (*a1 <= *a2)
    {
      v10 = *a2;
    }

    else
    {
      v10 = *a1;
    }

    if (v8 < v9)
    {
      v9 = v8;
    }

    v11 = v9 - v10;
    if (v11 < 1)
    {
      return 0;
    }

    else
    {
      if (a3)
      {
        *a3 = v10;
        a3[2] = v11;
      }

      v12 = a1[1];
      v13 = a2[1];
      v14 = v12 + v6;
      v15 = v13 + v7;
      if (v12 <= v13)
      {
        v16 = a2[1];
      }

      else
      {
        v16 = a1[1];
      }

      if (v14 >= v15)
      {
        v14 = v15;
      }

      v17 = v14 - v16;
      v3 = v14 > v16;
      if (a3 && v17 >= 1)
      {
        a3[1] = v16;
        a3[3] = v17;
        return 1;
      }
    }
  }

  return v3;
}

char *ripc_GetColor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, double *a7, uint64_t a8)
{
  v9 = a6;
  v12 = a2;
  v13 = *&a1;
  v214 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    FillColor = CGGStateGetFillColor(a3);
    if (FillColor)
    {
      v23 = FillColor;
      v14 = *(*&v13 + 176);
      if ((FillColor & 0x8000000000000000) == 0)
      {
LABEL_10:
        Alpha = *(v23 + 8 * *(v23 + 56) + 64);
        goto LABEL_11;
      }

LABEL_7:
      Alpha = CGTaggedColorGetAlpha(v23, v16, v17, v18, v19, v20, v21, v22);
LABEL_11:
      v26 = Alpha * *(*(a3 + 120) + 8);
      goto LABEL_12;
    }

LABEL_17:
    v14 = 0;
    *a7 = *(*(a3 + 120) + 8) * 0.0;
    return v14;
  }

  if (a4)
  {
    StrokeColor = CGGStateGetStrokeColor(a3);
    if (StrokeColor)
    {
      v23 = StrokeColor;
      v14 = *(*&v13 + 184);
      if ((StrokeColor & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if ((a4 & 8) == 0)
  {
    return 0;
  }

  v87 = *(a3 + 136);
  v23 = *(v87 + 64);
  if (!v23)
  {
    v14 = 0;
    *a7 = 0.0;
    return v14;
  }

  v14 = *(a1 + 192);
  if (v23 < 0)
  {
    v26 = CGTaggedColorGetAlpha(*(v87 + 64), a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v26 = *(v23 + 8 * *(v23 + 56) + 64);
  }

LABEL_12:
  *a7 = v26;
  v27 = 0.0;
  if (v26 < 0.0 || (v27 = 1.0, v26 > 1.0))
  {
    *a7 = v27;
    v26 = v27;
  }

  if (v23 < 0)
  {
    v28 = v23;
  }

  else
  {
    v28 = *(v23 + 16);
  }

  if (*(v14 + 1) == v23 && *(v14 + 4) == v28 && *(v14 + 20) == *(*(a3 + 120) + 72))
  {
    goto LABEL_85;
  }

  v199 = v12;
  if (v23 < 1 || (v29 = *(v23 + 32)) == 0)
  {
    Cache = CGColorTransformGetCache(*(*&v13 + 120));
    v198 = v9;
    if (Cache)
    {
      v82 = Cache[2];
      if (v82)
      {
        v83 = *(*(v82 + 24) + 48);
        if (v83 >> 61)
        {
          v84 = v13;
          MEMORY[0x1EEE9AC00](Cache, v81);
          v85 = v184;
          v86 = 0;
LABEL_76:
          if (RIPColorConvertColorComponents(*(*&v84 + 120), v86, v23, a3))
          {
            if (v83)
            {
              v90 = (v14 + 28);
              v91 = v86;
              do
              {
                v92 = *v91++;
                v93 = v92;
                *v90++ = v93;
                --v83;
              }

              while (v83);
            }

            *(v14 + 6) = *(*&v84 + 128);
            *(v14 + 1) = v23;
            *(v14 + 4) = v28;
            v94 = *(*(a3 + 120) + 72);
          }

          else
          {
            v94 = 0;
            *(v14 + 3) = 0;
            *(v14 + 1) = 0;
            *(v14 + 4) = 0;
          }

          *(v14 + 20) = v94;
          if (v86 != v85)
          {
            free(v86);
          }

          *(v14 + 39) = 1065353216;
          v13 = v84;
          v9 = v198;
          v12 = v199;
LABEL_85:
          if ((*(*(*&v13 + 48) + 29) & 2) != 0)
          {
            v95 = *(a3 + 120);
            v96 = *(v95 + 24);
            v97 = *(v95 + 32);
            v98 = *(*&v13 + 40);
            v99 = v98 == 1.0;
            v100 = *(v12 + 24) * v98;
            v101 = *(v12 + 32) * v98;
            v102 = *(v12 + 40) * v98;
            v103 = *(v12 + 48) * v98;
            v104 = *(v12 + 56) * v98;
            v105 = *(v12 + 64) * v98;
            if (v99)
            {
              v100 = *(v12 + 24);
              v106 = *(v12 + 32);
            }

            else
            {
              v106 = v101;
            }

            if (v99)
            {
              v107 = *(v12 + 40);
            }

            else
            {
              v107 = v102;
            }

            if (v99)
            {
              v108 = *(v12 + 48);
            }

            else
            {
              v108 = v103;
            }

            if (v99)
            {
              v109 = *(v12 + 56);
            }

            else
            {
              v109 = v104;
            }

            if (v99)
            {
              v110 = *(v12 + 64);
            }

            else
            {
              v110 = v105;
            }

            v111 = v97 * v107 + v100 * v96 + v109;
            if (v111 <= 1073741820.0)
            {
              v113 = vcvtmd_s64_f64(v111);
              if (v111 >= -1073741820.0)
              {
                v112 = v113;
              }

              else
              {
                v112 = -1073741823;
              }
            }

            else
            {
              v112 = 0x3FFFFFFF;
            }

            *v9 = v112;
            v114 = v97 * v108 + v106 * v96 + v110;
            if (v114 <= 1073741820.0)
            {
              if (v114 >= -1073741820.0)
              {
                v115 = vcvtmd_s64_f64(v114);
              }

              else
              {
                v115 = -1073741823;
              }
            }

            else
            {
              v115 = 0x3FFFFFFF;
            }

            v9[1] = v115;
          }

          else
          {
            *v9 = 0;
          }

          return v14;
        }

        Cache = (8 * v83);
      }

      else
      {
        v83 = 0;
        Cache = 0;
      }
    }

    else
    {
      v83 = 0;
    }

    v84 = v13;
    v88 = MEMORY[0x1EEE9AC00](Cache, v81);
    v85 = (&v185 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v83 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v86 = (&v185 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    }

    else
    {
      v86 = 0;
    }

    if (v83 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
    {
      v86 = malloc_type_malloc(v88, 0xC3800545uLL);
    }

    goto LABEL_76;
  }

  PatternBaseColor = CGColorGetPatternBaseColor(v23);
  if (v26 < 0.0 || v26 > 1.0)
  {
    _CGHandleAssert("ripc_GetPattern", 689, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPColor.c", "alpha >= 0 && alpha <= 1", "alpha (%f) must be [0,1]", v30, v31, v32, SLOBYTE(v26));
  }

  v205 = 0u;
  v206 = 0u;
  v204 = 0u;
  *v9 = 0;
  v36 = *(v12 + 40);
  v207 = *(v12 + 24);
  v208 = v36;
  v209 = *(v12 + 56);
  v37 = *(*&v13 + 40);
  if (v37 != 1.0)
  {
    v207 = vmulq_n_f64(v207, v37);
    v208 = vmulq_n_f64(v208, v37);
    v209 = vmulq_n_f64(v209, v37);
  }

  v38 = 0;
  v39 = v12;
  if (*(v12 + 82))
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  if (*(v39 + 81) == 1)
  {
    v38 = (*(*(a3 + 120) + 4) >> 8) & 0x10000;
  }

  v210 = 0;
  v211 = 0;
  v41 = *(v29 + 40);
  v42 = *(v29 + 24);
  *&v34 = *(v29 + 56);
  *&v33 = *(v29 + 64);
  v191 = v41;
  v192 = v42;
  v43 = vmlaq_n_f64(vmulq_laneq_f64(v208, v42, 1), v207, v42.f64[0]);
  v44 = vmlaq_n_f64(vmulq_laneq_f64(v208, v41, 1), v207, v41.f64[0]);
  v194 = v44;
  v195 = v43;
  v201 = v43;
  v202 = v44;
  v189 = v34;
  v190 = v33;
  v203 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v208, *&v33), v207, *&v34), 0);
  v45 = *(v29 + 104);
  v46 = *(v29 + 112);
  v44.f64[0] = *(v29 + 120);
  v41.f64[0] = *(v29 + 128);
  *&v212.a = v43;
  *&v212.c = v202;
  *&v212.tx = v203;
  v47 = v45;
  v48 = v46;
  v196 = v41;
  v197 = v44;
  v215 = CGRectApplyAffineTransform(*(&v41 - 24), &v212);
  x = v215.origin.x;
  y = v215.origin.y;
  width = v215.size.width;
  height = v215.size.height;
  v55 = *(v29 + 20);
  if (v55 == 1)
  {
    v56 = a3;
LABEL_37:
    v57 = v9;
LABEL_38:
    v58 = v13;
    v59 = 0;
    goto LABEL_39;
  }

  v14 = 0;
  if (v215.origin.x == INFINITY)
  {
    return v14;
  }

  if (v215.origin.y == INFINITY)
  {
    return v14;
  }

  v14 = 0;
  if (v215.size.width == 0.0 || v215.size.height == 0.0)
  {
    return v14;
  }

  v56 = a3;
  if (v55)
  {
    goto LABEL_37;
  }

  v57 = v9;
  if (*(v29 + 184) != 1)
  {
    goto LABEL_38;
  }

  v58 = v13;
  v59 = *(v29 + 80);
LABEL_39:
  v60 = v40 | vcvtpd_s64_f64(v26 * 255.0);
  v61 = &v201;
  if (!v59)
  {
    v61 = &v207;
  }

  v62 = v61[1];
  v204 = *v61;
  v205 = v62;
  v206 = v61[2];
  if (RIPGetCacheState_predicate != -1)
  {
    v171 = v59;
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    v59 = v171;
  }

  v63 = v199;
  v188 = v60 | v38;
  if (*(RIPGetCacheState_cache_state + 33) == 1 && (v64 = v59, v65 = CGColorGetPatternBaseColor(v23), v59 = v64, !v65))
  {
    v117 = *(v23 + 32);
    v66 = v58;
    if (v117)
    {
      if (!*(v117 + 20) && *(v117 + 184) == 1 && (v118 = *(v117 + 80)) != 0)
      {
        v119 = (v118 + 232);
        v120 = 2;
      }

      else
      {
        v119 = (v117 + 88);
        v120 = 1;
      }

      v67 = v57;
      v121 = *v119;
    }

    else
    {
      v121 = 0;
      v120 = 1;
      v67 = v57;
    }

    v68 = v56;
    *&v212.a = MEMORY[0x1E69E9820];
    *&v212.b = 0x40000000;
    *&v212.c = __lookup_pattern_entry_block_invoke;
    *&v212.d = &__block_descriptor_tmp_20642;
    *&v212.tx = &v204;
    v212.ty = v66;
    v213 = v188;
    Entry = RIPDataGetEntry(*&v66, v121, v120, &v212);
    v59 = v64;
    if (Entry)
    {
      v123 = Entry;
      if (!v64)
      {
        v124 = *(Entry + 18);
        v125 = *(Entry + 19);
        v216.origin.x = x;
        v216.origin.y = y;
        v216.size.width = width;
        v216.size.height = height;
        *&v223.origin.x = Entry[16];
        *&v223.origin.y = Entry[17];
        v223.size.width = v124;
        v223.size.height = v125;
        if (!CGRectEqualToRect(v216, v223))
        {
          *v184 = v124;
          *&v184[1] = v125;
          _CGHandleAssert("ripc_GetPattern", 729, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPColor.c", "CGRectEqualToRect(bbox, p->bounds)", "bbox{o:{%f,%f}, s:{%f,%f}} != bounds{o:{%f,%f}, s:{%f,%f}}", v126, v127, v128, SLOBYTE(x));
        }
      }

      get_pattern_phase(v207.f64, v67, *(*(v68 + 120) + 24), *(*(v68 + 120) + 32), x, y);
      v14 = v123[20];
      if (v14)
      {
        (*(*v14 + 16))(v14);
      }

      return v14;
    }
  }

  else
  {
    v66 = v58;
    v67 = v57;
    v68 = v56;
  }

  if (v45 == INFINITY || v46 == INFINITY || v197.f64[0] == 0.0 || v196.f64[0] == 0.0 || *(v29 + 136) != v197.f64[0] || *(v29 + 144) != v196.f64[0] || width * height > (*(*(*&v66 + 48) + 24) * *(*(*&v66 + 48) + 20)))
  {
    goto LABEL_60;
  }

  v69 = vabsq_f64(vmulq_n_f64(v195, v197.f64[0]));
  v70 = vabsq_f64(vmulq_n_f64(v194, v196.f64[0]));
  __asm { FMOV            V1.2D, #1.0 }

  if (vcvtd_n_s64_f64(v70.f64[0], 8uLL) || vcvtd_n_s64_f64(v69.f64[1], 8uLL))
  {
    v75 = vcvtd_n_s64_f64(v70.f64[1], 8uLL);
    if (vcvtd_n_s64_f64(v69.f64[0], 8uLL))
    {
      _ZF = 0;
    }

    else
    {
      _ZF = v75 == 0;
    }

    if (_ZF)
    {
      v70.f64[1] = v69.f64[1];
      v69 = v70;
    }

    else
    {
      v69 = vaddq_f64(v69, v70);
      v77 = vmovn_s64(vcgtq_f64(v69, _Q1));
      if (vorr_s8(v77, vdup_lane_s32(v77, 1)).u8[0])
      {
LABEL_60:
        v78 = *&v66;
        v79 = v63;
        return create_pattern_tile_pattern(v78, v79, v68, v23, a5, &v207, v49, v50, v26);
      }
    }
  }

  else
  {
    v69.f64[1] = v70.f64[1];
  }

  v129 = vbslq_s8(vcgtq_f64(v69, _Q1), vrndaq_f64(v69), _Q1);
  v211 = vmovn_s64(vcvtq_s64_f64(v129));
  v130 = v211.i32[1];
  v131 = v211.i32[0];
  v132 = v211.i32[0] <= 1 && v211.i32[1] < 2;
  if (!v132 && !*(v29 + 152))
  {
    v159 = vcvtd_n_s64_f64(v129.f64[1] - v69.f64[1], 8uLL);
    if (vcvtd_n_s64_f64(vsubq_f64(v129, v69).f64[0], 8uLL) || v159 != 0)
    {
      v78 = *&v66;
      v79 = v199;
      return create_pattern_tile_pattern(v78, v79, v68, v23, a5, &v207, v49, v50, v26);
    }
  }

  v186 = v59;
  v187 = v66;
  v201 = vmulq_n_f64(v195, vdivq_f64(v129, v69).f64[0]);
  v202 = vmulq_n_f64(v194, v129.f64[1] / v69.f64[1]);
  *&v212.a = v201;
  *&v212.c = v202;
  *&v212.tx = v203;
  v217.origin.x = v45;
  v217.origin.y = v46;
  v217.size.height = v196.f64[0];
  v217.size.width = v197.f64[0];
  v218 = CGRectApplyAffineTransform(v217, &v212);
  v133 = v218.origin.x;
  v134 = v218.origin.y;
  v195.f64[0] = v218.size.width;
  v194.f64[0] = v218.size.height;
  v135 = vcvtmd_s64_f64(v218.origin.x);
  v197.f64[0] = floor(v218.origin.x);
  v210 = __PAIR64__(vcvtmd_s64_f64(v218.origin.y), v135);
  LODWORD(v196.f64[0]) = HIDWORD(v210);
  v136 = floor(v218.origin.y);
  *&v212.a = v192;
  *&v212.c = v191;
  *&v212.tx = v189;
  *&v212.ty = v190;
  v200[0] = v201;
  v200[1] = v202;
  v200[2] = v203;
  __CGAffineTransformInverseConcat(&v201, &v212, v200);
  v140 = v136;
  v141 = v197.f64[0];
  v203.f64[0] = v203.f64[0] - (v133 - v197.f64[0]);
  v203.f64[1] = v203.f64[1] - (v134 - v136);
  if (((v26 >= 1.0) & *(v29 + 186)) != 0)
  {
    v142 = 32;
  }

  else
  {
    v142 = 33;
  }

  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
    v140 = v136;
    v141 = v197.f64[0];
  }

  v143 = v130;
  if ((*(RIPGetCacheState_cache_state + 33) & (PatternBaseColor == 0)) != 0)
  {
    v144 = v142 | 4;
  }

  else
  {
    v144 = v142;
  }

  v145 = *(*(*&v187 + 48) + 32);
  v146 = v135;
  v147 = v131 | v130;
  if ((v131 | v130) < 0)
  {
    v148 = v144;
    v149 = v131;
    v150 = v143;
    v192.f64[0] = v140;
    if (COERCE_DOUBLE(CGRectStandardize(*&v141)) != v146)
    {
      return 0;
    }

    v219.origin.x = v197.f64[0];
    v219.origin.y = v192.f64[0];
    v219.size.width = v131;
    v219.size.height = v143;
    v220 = CGRectStandardize(v219);
    if (v220.origin.y != SLODWORD(v196.f64[0]))
    {
      return 0;
    }

    v221.origin.x = v197.f64[0];
    v221.origin.y = v192.f64[0];
    v221.size.width = v131;
    v221.size.height = v143;
    v222 = CGRectStandardize(v221);
    if (v222.size.width != v131)
    {
      return 0;
    }

    v151 = v147 >> 31;
    v152 = v143;
    v66 = v187;
    v141 = v197.f64[0];
    v140 = v192.f64[0];
    v144 = v148;
    if (v151)
    {
      v153 = v131;
      v154 = v143;
      *(&v152 - 3) = CGRectStandardize(*&v141);
      v144 = v148;
      v140 = v192.f64[0];
      v141 = v197.f64[0];
    }
  }

  else
  {
    v14 = 0;
    if (v141 != v146 || v140 != SLODWORD(v196.f64[0]))
    {
      return v14;
    }

    v152 = v130;
    v66 = v187;
  }

  if (v152 != v143)
  {
    return 0;
  }

  v155 = *(*&v66 + 8);
  v156 = v140;
  v157 = v141;
  if (v155)
  {
    v158 = *(v155 + 96);
  }

  else
  {
    v158 = 3;
  }

  v63 = v199;
  v161 = RIPLayerCreate(RIPLayer_ripl_class, &v210, v144 | 8u, v145, v158, v137, v138, v139);
  if (!v161)
  {
    goto LABEL_60;
  }

  v14 = v161;
  build_tile(v161, *&v66, v199, v68, v23, &CGSizeZero.width, &v201, v157, v156, v195.f64[0], v194.f64[0], v26);
  *(v14 + 3) = 0;
  *(v14 + 4) = 0;
  get_pattern_phase(v207.f64, v67, *(*(v68 + 120) + 24), *(*(v68 + 120) + 32), x, y);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 33) == 1 && !PatternBaseColor && ((*(v14 + 12) * *(v14 + 6)) & 0x80000000) == 0)
  {
    if (v186)
    {
      v169 = *(v186 + 232);
      if (v169)
      {
        v170 = 2;
        goto LABEL_187;
      }

      v172 = v186;
      v173 = RIPDataCreate(v186, v162, v163, v164, v165, v166, v167, v168);
      v174 = 0;
      atomic_compare_exchange_strong_explicit((v186 + 232), &v174, v173, memory_order_relaxed, memory_order_relaxed);
      v169 = *(v172 + 232);
      v170 = 2;
    }

    else
    {
      v169 = *(v29 + 88);
      if (v169)
      {
        v170 = 1;
LABEL_187:
        v176 = RIPCacheEntryCreate(v170, v169);
        v176[8] = v145;
        *(v176 + 18) = v188;
        v177 = v187;
        v178 = *(*&v187 + 148);
        *(v176 + 76) = *(*&v187 + 132);
        *(v176 + 23) = v178;
        v179 = v205;
        *(v176 + 6) = v204;
        *(v176 + 7) = v179;
        (*(*v14 + 16))(v14);
        v176[20] = v14;
        *(v176 + 16) = x;
        *(v176 + 17) = y;
        *(v176 + 18) = width;
        *(v176 + 19) = height;
        RIPLockCacheState();
        v180 = v169[3];
        v181 = *v176;
        v169[3] = v176;
        *v176 = v169 + 2;
        *v180 = v181;
        *(v181 + 8) = v180;
        ++v169[5];
        ripc_AddEntry(*(*&v177 + 208), v176);
        if (v169[5] <= 0x20uLL)
        {
          RIPUnlockCacheState();
        }

        else
        {
          v182 = v169[2];
          RIPCacheEntryRemove(v182);
          v182[1] = 0;
          RIPUnlockCacheState();
          do
          {
            v183 = v182[1];
            RIPCacheEntryRelease(v182);
            v182 = v183;
          }

          while (v183);
        }

        return v14;
      }

      v173 = RIPDataCreate(v29, v162, v163, v164, v165, v166, v167, v168);
      v175 = 0;
      atomic_compare_exchange_strong_explicit((v29 + 88), &v175, v173, memory_order_relaxed, memory_order_relaxed);
      v169 = *(v29 + 88);
      v170 = 1;
    }

    if (v169 != v173)
    {
      CFRelease(v173);
    }

    if (v169)
    {
      goto LABEL_187;
    }
  }

  return v14;
}

uint64_t RIPLayerBltGlyph(_DWORD *a1, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t a5, int32x2_t *a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v221 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v20 = 0;
    goto LABEL_27;
  }

  if (!*(a2 + 64))
  {
    if (*(a2 + 56))
    {
      v20 = 0;
      goto LABEL_16;
    }

    IsEnclosed = ripl_IsEnclosed(a4, (a2 + 12));
    goto LABEL_14;
  }

  v16 = *(a2 + 72);
  if (!v16)
  {
    IsEnclosed = ripl_IsContained(a4, (a2 + 12));
LABEL_14:
    v20 = 0;
    if (IsEnclosed)
    {
      v14 = 0;
    }

    goto LABEL_16;
  }

  v17 = *(a4 + 3);
  v18 = *(a2 + 24) + *(a2 + 16) - (*(a4 + 1) + v17);
  v19 = shape_enclose_with_bounds(v16, *a4 - *(a2 + 12), v18, *(a4 + 2) + *a4 - *(a2 + 12), v18 + v17);
  v20 = v19;
  if (v19)
  {
    if (v19 == &the_empty_shape)
    {
      return 0;
    }

    if (v19[v19[1]] == 0x7FFFFFFF)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_16:
  v22 = *(a4 + 9) * *(a4 + 8);
  v77 = v22 >> 31 == 0;
  v23 = v22 + 15;
  v25 = v77 && v23 >= 0;
  if (v14 && (v25 & 1) == 0)
  {
    if (v20)
    {
LABEL_25:
      free(v20);
    }

    return 0;
  }

LABEL_27:
  v220 = 0;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  if (a3)
  {
    v27 = a3;
  }

  else
  {
    v27 = a4;
  }

  v28 = *(a1 + 5);
  if (!v28)
  {
    v214 = 0uLL;
    v215 = 0uLL;
    v212 = 0uLL;
    v213 = 0uLL;
    v210 = 0uLL;
    v211 = 0uLL;
    v208 = 0uLL;
    v209 = 0uLL;
    v206 = 0uLL;
    v207 = 0uLL;
    v204 = 0uLL;
    v205 = 0uLL;
    v202 = 0uLL;
    v203 = 0uLL;
    v28 = &v202;
    *&v216 = 0;
  }

  *v198 = 0uLL;
  memset(v199, 0, 24);
  v196 = 0uLL;
  *__b = 0uLL;
  result = (*(*a1 + 32))(a1, 32, v27);
  if (result)
  {
    v193 = 0;
    v194 = 0;
    v195 = 0;
    if (!*result)
    {
      goto LABEL_65;
    }

    v191 = *result;
    if (!*(*result + 32))
    {
      goto LABEL_65;
    }

    v186 = result;
    if (!*(a1 + 7) && !ripl_CreateMask(a1, 1, v29, v30, v31, v32, v33, v34))
    {
      goto LABEL_65;
    }

    *(v28 + 18) = *(a8 + 64);
    *v28 = *a8;
    v36.n128_f64[0] = ripl_BltOpDestination(v28, v27, a1);
    v171 = v14;
    if (a5)
    {
      v37 = *a5;
      if (*a5 != &ripc_class)
      {
        if (v37)
        {
          v188 = a7;
          while (v37 != RIPLayer_ripl_class)
          {
            if (!*v37)
            {
              goto LABEL_65;
            }

            v37 = (*v37)(v36);
            v38 = 0;
            v39 = 0;
            v35 = 1;
            if (!v37)
            {
              goto LABEL_66;
            }
          }

          v49 = (*(*a5 + 32))(a5, 16, a5 + 12, v35, v36);
          a7 = v188;
          if (v49)
          {
            if (*(*v49 + 8) == *(v191 + 8) && (*(a5 + 56) || ripl_CreateMask(a5, 0, v50, v51, v52, v53, v54, v55)))
            {
              v61 = ripl_BltOpSourceLayer(v28, v27, a1, a6, a5);
              v165 = 0;
              v66 = 0;
              v162 = 0;
              if (!v188)
              {
                goto LABEL_96;
              }

LABEL_84:
              if (*a7 != &ripc_class)
              {
LABEL_96:
                v161 = v66;
                *(v28 + 2) = 1;
                v70 = v27[1];
                v185 = *v27;
                v71 = v27[3];
                v183 = *(v28 + 4);
                v184 = *(v28 + 3);
                v168 = *(v28 + 15);
                v169 = *(v28 + 14);
                LODWORD(v199[0]) = a1[7] & 0x100;
                v198[1] = 0;
                *(v199 + 12) = 4;
                *(v199 + 4) = a4[4];
                v166 = a4[2];
                if (v166)
                {
                  v182 = v27;
                  v159 = a5;
                  v160 = a1;
                  v72 = 0;
                  v38 = 0;
                  v180 = v71 + v70;
                  v73 = a4 + 5;
                  v167 = v61 << 8;
                  v163 = v28;
                  v164 = v20;
                  v74 = v165;
                  v75 = a4[2];
                  v170 = a4 + 5;
                  while (1)
                  {
                    v192 = 0uLL;
                    v76 = v198[1];
                    if (v198[1])
                    {
                      v77 = DWORD1(v199[0]) == 0;
                    }

                    else
                    {
                      v77 = 0;
                    }

                    if (v77)
                    {
                      free(v198[1]);
                      v76 = 0;
                      v198[1] = 0;
                    }

                    v78 = &v73[5 * v72];
                    if (!v14)
                    {
                      v90 = HIDWORD(*(v78 + 1));
                      v91 = *v78;
                      v92 = *(v78 + 1) + v90;
                      *&v93 = 0;
                      *(&v93 + 1) = *(v78 + 1);
                      v94 = DWORD2(v93);
                      goto LABEL_206;
                    }

                    if (CGSBoundsIntersection((v14 + 12), &v73[5 * v72], &v192))
                    {
                      v80 = *(v78 + 5);
                      v81 = HIDWORD(v199[0]);
                      v82 = (HIDWORD(v199[0]) - 1);
                      if (v80 != 8 && (v80 < 8 || LODWORD(v199[0]) == 0))
                      {
                        v173 = v38;
                        v196 = *v78;
                        v84 = *(v78 + 2);
                        v85 = (v84 + v82) & -HIDWORD(v199[0]);
                        __b[0] = (v85 | 0x800000000);
                        LODWORD(v198[0]) = *(v78 + 8);
                        __b[1] = v76;
                        v177 = HIDWORD(v199[0]) - 1;
                        if (v76 && (v86 = *(v78 + 3), v86 * v85 <= LODWORD(v199[1])))
                        {
                          v87 = v74;
                          v88 = HIDWORD(v199[0]);
                        }

                        else
                        {
                          v87 = v74;
                          v88 = HIDWORD(v199[0]);
                          if (DWORD1(v199[0]))
                          {
                            v89 = DWORD2(v199[0]) * ((DWORD1(v199[0]) + v82) & -HIDWORD(v199[0]));
                          }

                          else
                          {
                            v89 = *(v78 + 3) * v85;
                          }

                          LODWORD(v199[1]) = v89;
                          free(v76);
                          v95 = malloc_type_malloc((LODWORD(v199[1]) + v88), 0x83D80E65uLL);
                          v198[1] = v95;
                          __b[1] = v95;
                          if (!v95)
                          {
                            v74 = v87;
                            v38 = v173;
                            goto LABEL_210;
                          }

                          v76 = v95;
                          v85 = __b[0];
                          v84 = *(v78 + 2);
                          v86 = *(v78 + 3);
                          v80 = *(v78 + 5);
                        }

                        CGSConvertBitsToMask(*(v78 + 3), *(v78 + 4), v76, v85, v84, v86, v80);
                        v78 = &v196;
                        v81 = v88;
                        v74 = v87;
                        v38 = v173;
                        v82 = v177;
                      }

                      v96 = *(v14 + 64);
                      if (v96)
                      {
                        v97 = v20;
                        if (v20 || (v97 = *(v14 + 72)) != 0)
                        {
                          v175 = v81;
                          v178 = v82;
                          *v200 = 0;
                          v201 = 0;
                          shape_enum_clip_alloc(v82, v79, v97, 1, 1, 0, v192 - *(v14 + 12), *(v14 + 24) + *(v14 + 16) - (DWORD1(v192) + HIDWORD(v192)), SDWORD2(v192), SHIDWORD(v192));
                          if (v98)
                          {
                            v99 = v98;
                            v174 = v38;
                            v100 = *(v78 + 1);
                            v101 = *v78;
                            v102 = *(v78 + 3);
                            v103 = DWORD1(v192);
                            v104 = v192;
                            v105 = HIDWORD(v192);
                            v106 = shape_enum_clip_next(v98, &v201 + 1, &v201, &v200[1], v200);
                            if (v106)
                            {
                              v107 = v106;
                              if (*v200 == __PAIR64__(DWORD2(v192), HIDWORD(v192)))
                              {
                                free(v99);
                                v28 = v163;
                                v20 = v164;
                                v14 = v171;
                                v38 = v174;
                                v74 = v165;
                                v75 = v166;
                                if ((v107 & 0x80000000) == 0)
                                {
                                  goto LABEL_204;
                                }

                                goto LABEL_198;
                              }

                              v190 = v104 - v101;
                              v187 = v102 + v100 - (v103 + v105);
                              if (v78 == &v196)
                              {
                                LODWORD(v198[0]) = 0;
                                v28 = v163;
                                v20 = v164;
                                v14 = v171;
                                v38 = v174;
                                v74 = v165;
                                v75 = v166;
                                do
                                {
                                  if (v107 <= 0)
                                  {
                                    CGBlt_fillBytes(v200[1], v200[0], 0, __b[1] + SHIDWORD(v201) + v190 + ((v201 + v187) * LODWORD(__b[0])), __b[0]);
                                  }

                                  v107 = shape_enum_clip_next(v99, &v201 + 1, &v201, &v200[1], v200);
                                }

                                while (v107);
                                v78 = &v196;
                                goto LABEL_191;
                              }

                              v121 = *(v78 + 5);
                              v122 = v121 >> 3;
                              v123 = (((v121 >> 1) & 0x1FFFFFFF) + v178) & -v175;
                              v196 = v192;
                              v124 = (v123 - 1 + (v121 >> 3) * DWORD2(v192)) & -v123;
                              __b[0] = __PAIR64__(v121, v124);
                              LODWORD(v198[0]) = 0;
                              __b[1] = v198[1];
                              if (v198[1] && (HIDWORD(v192) * v124) <= LODWORD(v199[1]) || (!DWORD1(v199[0]) ? (v125 = HIDWORD(v192) * v124) : (v125 = DWORD2(v199[0]) * ((v123 - 1 + DWORD1(v199[0]) * v122) & -v123)), LODWORD(v199[1]) = v125, free(v198[1]), v198[1] = malloc_type_malloc((LODWORD(v199[1]) + v123), 0xABE24308uLL), (__b[1] = v198[1]) != 0))
                              {
                                v176 = 0;
                                v179 = 0;
                                v148 = 0;
                                v149 = 0;
                                v150 = 0;
                                do
                                {
                                  v151 = v201;
                                  v152 = __b[1] + (LODWORD(__b[0]) * v201);
                                  v153 = HIDWORD(v201);
                                  v154 = HIDWORD(v201) * v122;
                                  if (v107 < 1)
                                  {
                                    CGBlt_fillBytes(v200[1] * v122, v200[0], 0, &v152[v154], __b[0]);
                                  }

                                  else
                                  {
                                    v148 = v200[1];
                                    v149 = v200[0];
                                    CGBlt_copyBytes(v200[1] * v122, v200[0], (*(v78 + 3) + (*(v78 + 4) * (v201 + v187)) + (HIDWORD(v201) + v190) * v122), &v152[v154], *(v78 + 4), __b[0]);
                                    ++v150;
                                    v176 = v151;
                                    v179 = v153;
                                  }

                                  v107 = shape_enum_clip_next(v99, &v201 + 1, &v201, &v200[1], v200);
                                }

                                while (v107);
                                v28 = v163;
                                v38 = v174;
                                if (v150 == 1)
                                {
                                  LODWORD(v192) = v192 + v179;
                                  DWORD1(v192) = DWORD1(v192) - (v149 + v176) + HIDWORD(v192);
                                  *(&v192 + 1) = __PAIR64__(v149, v148);
                                }

                                else
                                {
                                  v78 = &v196;
                                }

                                v20 = v164;
                                v14 = v171;
                                v74 = v165;
                                v75 = v166;
LABEL_191:
                                v73 = v170;
                                free(v99);
                                goto LABEL_205;
                              }
                            }

                            free(v99);
                            v28 = v163;
                            v20 = v164;
                            v14 = v171;
                            v38 = v174;
LABEL_197:
                            v74 = v165;
                            v75 = v166;
                          }

LABEL_198:
                          v73 = v170;
                          goto LABEL_210;
                        }

                        v127 = *(v14 + 12);
                        v126 = *(v14 + 16);
                        if (v192 <= v127)
                        {
                          v128 = DWORD2(v192);
                          v129 = *(v14 + 20);
                        }

                        else
                        {
                          v128 = DWORD2(v192);
                          v129 = *(v14 + 20);
                          if (SDWORD1(v192) > v126 && DWORD2(v192) + v192 < v129 + v127 && HIDWORD(v192) + DWORD1(v192) < *(v14 + 24) + v126)
                          {
                            goto LABEL_204;
                          }
                        }

                        v131 = v96 & 0xFF000000;
                        if (v192 != v127)
                        {
                          v131 = 0;
                        }

                        v132 = *(v14 + 64);
                        if (DWORD1(v192) != v126)
                        {
                          v132 = 0;
                        }

                        if (v128 + v192 == v129 + v127)
                        {
                          v133 = *(v14 + 64) & 0xFF00;
                        }

                        else
                        {
                          v133 = 0;
                        }

                        v134 = v96 & 0xFF0000;
                        if (HIDWORD(v192) + DWORD1(v192) == *(v14 + 24) + v126)
                        {
                          v135 = v134;
                        }

                        else
                        {
                          v135 = 0;
                        }

                        v136 = v132 | v131 | v133;
                        v137 = v192 - *v78;
                        v138 = *(v78 + 1) - (HIDWORD(v192) + DWORD1(v192)) + *(v78 + 3);
                        if (v78 == &v196)
                        {
                          v196 = v192;
                          LODWORD(v198[0]) = 0;
                          v147 = CGSCombineMask(__b[1] + v137 + (LODWORD(__b[0]) * v138), __b[0], __b[1], __b[0], v128, SHIDWORD(v192), v136 | v135);
LABEL_201:
                          if (v147)
                          {
                            v78 = &v196;
                          }

                          v14 = v171;
                          v75 = v166;
LABEL_204:
                          v73 = v170;
LABEL_205:
                          v94 = DWORD2(v192);
                          v90 = HIDWORD(v192);
                          v91 = v192;
                          v92 = DWORD1(v192) + HIDWORD(v192);
                          LODWORD(v93) = v192 - *v78;
                          DWORD1(v93) = HIDWORD(*(v78 + 1)) - (DWORD1(v192) + HIDWORD(v192)) + *(v78 + 1);
                          *(&v93 + 1) = *(v78 + 1);
LABEL_206:
                          *(v28 + 1) = v94;
                          *(v28 + 2) = v90;
                          *(v28 + 104) = v93;
                          v157 = v91 - v185;
                          *(v28 + 17) = *(v78 + 3);
                          *(v28 + 124) = *(v78 + 2);
                          *(v28 + 30) = *(v78 + 8);
                          *(v28 + 3) = v157 + v184;
                          *(v28 + 4) = v180 - v92 + v183;
                          if (v74 || (*v28 = *v28 & 0xFFFF00FF | v167, *(v28 + 14) = v157 + v169, *(v28 + 15) = v180 - v92 + v168, CGBlt_initialize(v28)))
                          {
                            if ((*(v191 + 32))(v186, v28))
                            {
                              v38 = v182;
                            }
                          }

                          goto LABEL_210;
                        }

                        v139 = *(v78 + 5);
                        v140 = v139 >> 3;
                        v141 = (((v139 >> 1) & 0x1FFFFFFF) + v82) & -v81;
                        v196 = v192;
                        v142 = (v141 - 1 + (v139 >> 3) * v128) & -v141;
                        __b[0] = __PAIR64__(v139, v142);
                        LODWORD(v198[0]) = 0;
                        v143 = v198[1];
                        __b[1] = v198[1];
                        if (v198[1] && v142 * HIDWORD(v192) <= LODWORD(v199[1]) || (!DWORD1(v199[0]) ? (v144 = v142 * HIDWORD(v192)) : (v144 = DWORD2(v199[0]) * ((v141 - 1 + DWORD1(v199[0]) * v140) & -v141)), LODWORD(v199[1]) = v144, free(v198[1]), v143 = malloc_type_malloc((LODWORD(v199[1]) + v141), 0x7E06998CuLL), v198[1] = v143, (__b[1] = v143) != 0))
                        {
                          v155 = *(v78 + 4);
                          v156 = *(v78 + 3) + (v155 * v138);
                          if (v140 == 1)
                          {
                            v147 = CGSCombineMask((v156 + v137), v155, v143, __b[0], SDWORD2(v192), SHIDWORD(v192), v136 | v135);
                          }

                          else
                          {
                            v147 = CGSCombineDeepMask((v156 + v140 * v137), v155, v143, __b[0], SDWORD2(v192), SHIDWORD(v192), v136 | v135);
                          }

                          v20 = v164;
                          v74 = v165;
                          goto LABEL_201;
                        }

LABEL_196:
                        v20 = v164;
                        v14 = v171;
                        goto LABEL_197;
                      }

                      v108 = *(v14 + 56);
                      if (!v108)
                      {
                        goto LABEL_204;
                      }

                      v109 = *(v14 + 16);
                      v110 = v14;
                      v111 = v192 - *(v14 + 12);
                      v112 = *(v110 + 24) + v109 - (HIDWORD(v192) + DWORD1(v192));
                      v113 = v192 - *v78;
                      v114 = *(v78 + 1) - (HIDWORD(v192) + DWORD1(v192)) + *(v78 + 3);
                      if (v78 == &v196)
                      {
                        v196 = v192;
                        LODWORD(v198[0]) = 0;
                        v130 = CGSCombineMaskToMask(__b[1] + v113 + (LODWORD(__b[0]) * v114), __b[0], v108 + v111 + (*(v110 + 48) * v112), *(v110 + 48), __b[1], __b[0], SDWORD2(v192), SHIDWORD(v192));
                      }

                      else
                      {
                        v115 = *(v78 + 5);
                        v116 = v115 >> 3;
                        v117 = (((v115 >> 1) & 0x1FFFFFFF) + v82) & -v81;
                        v196 = v192;
                        v118 = (v117 - 1 + DWORD2(v192) * (v115 >> 3)) & -v117;
                        __b[0] = __PAIR64__(v115, v118);
                        LODWORD(v198[0]) = 0;
                        v119 = v198[1];
                        __b[1] = v198[1];
                        if (!v198[1] || (v118 * HIDWORD(v192)) > LODWORD(v199[1]))
                        {
                          v120 = DWORD1(v199[0]) ? DWORD2(v199[0]) * ((v117 - 1 + DWORD1(v199[0]) * v116) & -v117) : v118 * HIDWORD(v192);
                          LODWORD(v199[1]) = v120;
                          free(v198[1]);
                          v119 = malloc_type_malloc((LODWORD(v199[1]) + v117), 0x57F53348uLL);
                          v198[1] = v119;
                          __b[1] = v119;
                          if (!v119)
                          {
                            goto LABEL_196;
                          }
                        }

                        v145 = *(v78 + 4);
                        v146 = *(v78 + 3) + (v145 * v114);
                        if (v116 == 1)
                        {
                          v130 = CGSCombineMaskToMask(v146 + v113, v145, *(v171 + 56) + (*(v171 + 48) * v112) + v111, *(v171 + 48), v119, __b[0], SDWORD2(v192), SHIDWORD(v192));
                        }

                        else
                        {
                          v130 = CGSCombineDeepMaskToDeepMask(v146 + v116 * v113, v145, *(v171 + 56) + (*(v171 + 48) * v112) + v111, *(v171 + 48), v119, __b[0], SDWORD2(v192), SHIDWORD(v192));
                        }

                        v20 = v164;
                        v74 = v165;
                      }

                      v73 = v170;
                      v14 = v171;
                      v75 = v166;
                      if (!v130)
                      {
                        goto LABEL_205;
                      }

                      if ((v130 & 0x80000000) == 0)
                      {
                        v78 = &v196;
                        goto LABEL_205;
                      }
                    }

LABEL_210:
                    if (++v72 == v75)
                    {
                      v158 = v198[1];
                      a5 = v159;
                      a1 = v160;
                      goto LABEL_213;
                    }
                  }
                }

                v158 = 0;
                v38 = 0;
LABEL_213:
                free(v158);
                v39 = v162;
                LOBYTE(v35) = v161;
                goto LABEL_66;
              }

              v67 = *(a7 + 24);
              if (v67 == 2)
              {
                v68 = 4;
              }

              else if (v67 == 1)
              {
                v68 = 3;
              }

              else
              {
                if (v67)
                {
                  LODWORD(v193) = 0;
                  goto LABEL_95;
                }

                v68 = 1;
              }

              LODWORD(v193) = v68;
LABEL_95:
              v194 = a7 + 28;
              v69 = *(a8 + 56) * *(a7 + 156);
              *&v195 = v69;
              *(v28 + 19) = &v193;
              goto LABEL_96;
            }

            LOBYTE(v35) = 0;
            goto LABEL_64;
          }
        }

LABEL_65:
        v38 = 0;
        v39 = 0;
        LOBYTE(v35) = 1;
        goto LABEL_66;
      }

      v41 = *(v191 + 24);
      if (!v41)
      {
        goto LABEL_65;
      }

      v46 = *(a8 + 48);
      v47 = *(a5 + 16);
      v42 = *(a5 + 156) * v46;
      v172 = *(a5 + 8);
      if (v172 && v47 == *(v28 + 43) && v172 == *(v28 + 20) && v47 == *(v28 + 42) && v42 == *(v28 + 44))
      {
        v45 = v28 + 184;
        goto LABEL_77;
      }

      v181 = v27;
      v40 = a5 + 28;
      v48 = *(a5 + 24);
      v35 = 1;
      v43 = v186;
      if (v48)
      {
        if (v48 == 2)
        {
          v189 = *(a5 + 16);
          v35 = 4;
        }

        else
        {
          if (v48 != 1)
          {
LABEL_64:
            v38 = 0;
            v39 = 0;
            goto LABEL_66;
          }

          v189 = *(a5 + 16);
          v35 = 3;
        }
      }

      else
      {
        v189 = *(a5 + 16);
      }
    }

    else
    {
      v40 = 0;
      v41 = *(v191 + 24);
      if (!v41)
      {
        LOBYTE(v35) = 1;
        v38 = 0;
        v39 = 0;
LABEL_66:
        *(v28 + 19) = 0;
        if (v20)
        {
          v56 = v39;
          v57 = v35;
          free(v20);
          LOBYTE(v35) = v57;
          v39 = v56;
        }

        if (v39 && v39 != v28 + 184)
        {
          v58 = v35;
          free(v39);
          LOBYTE(v35) = v58;
        }

        if ((v35 & 1) == 0)
        {
          (*(*a5 + 48))(a5, 0);
        }

        (*(*a1 + 48))(a1, v38);
        return v38 != 0;
      }

      v181 = v27;
      v189 = 0;
      v35 = 0;
      v42 = *(a8 + 48);
      v172 = 0;
      v43 = v186;
    }

    v44 = v41(v43, v28 + 184, 64, v35, v40, *(a8 + 4), v42);
    v45 = v44;
    if (v44 == (v28 + 184))
    {
      if ((*v44 & 0xFFF00000) == 0x400000)
      {
        *(v28 + 20) = v172;
        *(v28 + 42) = v189;
        *(v28 + 43) = v189;
        *(v28 + 44) = v42;
      }

      else
      {
        *(v28 + 20) = 0;
        *(v28 + 21) = 0;
      }
    }

    v27 = v181;
LABEL_77:
    v59 = a6;
    v60 = v45;
    v61 = ripl_BltOpSourcePattern(v28, a1, v59, v45);
    v162 = v60;
    v165 = !v14 && (*v60 & 0xFFF00000) == 0x400000 && (v62 = *a4, v63 = a1[3], v63 <= *a4) && (v64 = a1[4], v64 <= SHIDWORD(v62)) && (v65 = a4[1], v62 + v65 <= a1[5] + v63) && HIDWORD(v62) + HIDWORD(v65) <= a1[6] + v64;
    v66 = 1;
    if (!a7)
    {
      goto LABEL_96;
    }

    goto LABEL_84;
  }

  return result;
}

double ripl_BltOpDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 4) = *(a2 + 8);
  result = *(a3 + 20);
  *(a1 + 20) = result;
  *(a1 + 12) = *a2 - *(a3 + 12);
  *(a1 + 16) = *(a3 + 24) + *(a3 + 16) - (*(a2 + 4) + *(a2 + 12));
  v4 = *(a3 + 56);
  v5 = *(a3 + 64);
  v6 = *(a3 + 52);
  *(a1 + 28) = *(a3 + 48);
  *(a1 + 32) = v5;
  v7 = *(a3 + 72);
  *(a1 + 40) = v4;
  *(a1 + 48) = v7;
  *(a1 + 132) = v6;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateWithPropertyList(CFPropertyListRef plist)
{
  if (!plist)
  {
    return 0;
  }

  v2 = CFGetTypeID(plist);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(plist, kCFNumberSInt32Type, &valuePtr);
    return CGColorSpaceCreateWithID(valuePtr);
  }

  v5 = CFGetTypeID(plist);
  if (v5 == CFStringGetTypeID())
  {
    if (CFEqual(plist, @"kCGColorSpaceDeviceGray"))
    {
      v6 = @"kCGColorSpaceGenericGrayGamma2_2";
    }

    else if (CFEqual(plist, @"kCGColorSpaceDeviceRGB"))
    {
      v6 = @"kCGColorSpaceSRGB";
    }

    else if (CFEqual(plist, @"kCGColorSpaceDeviceCMYK"))
    {
      v6 = @"kCGColorSpaceGenericCMYK";
    }

    else
    {
      v6 = plist;
    }

    return CGColorSpaceCreateWithName(v6);
  }

  v7 = CFGetTypeID(plist);
  if (v7 != CFDataGetTypeID())
  {
    v9 = CFGetTypeID(plist);
    if (v9 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(plist, @"kCGColorSpaceExtendedRange") == 1)
      {
        Value = CFDictionaryGetValue(plist, @"kCGColorSpaceICCData");
        if (Value)
        {
          Indexed = CGColorSpaceCreateWithPropertyList(Value);
          if (CFDictionaryGetValue(plist, @"kCGColorSpaceExtendedRange") == *MEMORY[0x1E695E4D0])
          {
            Extended = CGColorSpaceCreateExtended(Indexed);
            CGColorSpaceRelease(Indexed);
            return Extended;
          }

          return Indexed;
        }
      }

      else
      {
        v12 = CFDictionaryGetValue(plist, @"kCGLastIndexKey");
        Indexed = v12;
        if (!v12)
        {
          return Indexed;
        }

        v13 = CFGetTypeID(v12);
        if (v13 == CFNumberGetTypeID())
        {
          v25 = 0;
          if (CFNumberGetValue(Indexed, kCFNumberSInt8Type, &v25) == 1)
          {
            v14 = CFDictionaryGetValue(plist, @"kCGIndexedBaseColorSpaceKey");
            if (v14)
            {
              v15 = v14;
              v16 = CFDictionaryGetValue(plist, @"kCGIndexedColorTableKey");
              if (v16)
              {
                v17 = v16;
                v18 = CFGetTypeID(v16);
                if (v18 == CFDataGetTypeID())
                {
                  Length = CFDataGetLength(v17);
                  v20 = CGColorSpaceCreateWithPropertyList(v15);
                  v21 = v25;
                  if (!v20)
                  {
                    BytePtr = CFDataGetBytePtr(v17);
                    return CGColorSpaceCreateIndexed(0, v21, BytePtr);
                  }

                  v22 = v20;
                  if (Length >= *(*(v20 + 3) + 48) + *(*(v20 + 3) + 48) * v25)
                  {
                    v24 = CFDataGetBytePtr(v17);
                    Indexed = CGColorSpaceCreateIndexed(v22, v21, v24);
                    CFRelease(v22);
                    return Indexed;
                  }

                  CFRelease(v20);
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return CGColorSpaceCreateWithICCData(plist);
}

unint64_t CGSBoundsUnion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 < 1 || SHIDWORD(a4) < 1;
  if (a2 < 1 || a2 <= 0)
  {
    v11 = !v5;
    if (v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = a3;
    }

    if (v11)
    {
      v10 = HIDWORD(a3);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (a1 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = a1;
    }

    if (SHIDWORD(a1) >= SHIDWORD(a3))
    {
      v7 = HIDWORD(a3);
    }

    else
    {
      v7 = HIDWORD(a1);
    }

    v8 = !v5;
    if (v5)
    {
      v9 = a1;
    }

    else
    {
      v9 = v6;
    }

    if (v8)
    {
      v10 = v7;
    }

    else
    {
      v10 = HIDWORD(a1);
    }
  }

  return v9 | (v10 << 32);
}

BOOL ripl_IsEnclosed(_DWORD *a1, _DWORD *a2)
{
  result = 0;
  if (*a1 >= *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 >= v3 && a1[2] + *a1 <= a2[2] + *a2 && a1[3] + v2 <= a2[3] + v3)
    {
      return 1;
    }
  }

  return result;
}

void std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*a1);
    std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v2);
    }

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void CG::DisplayListEntryStateDrawing::~DisplayListEntryStateDrawing(CG::DisplayListEntryStateDrawing *this)
{
  *this = &unk_1EF23F810;
  v1 = *(this + 14);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F810;
  v1 = *(this + 14);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceFont *,std::shared_ptr<CG::DisplayListResourceFont>::__shared_ptr_default_delete<CG::DisplayListResourceFont,CG::DisplayListResourceFont>,std::allocator<CG::DisplayListResourceFont>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void CG::DisplayListResourceFont::~DisplayListResourceFont(CG::DisplayListResourceFont *this)
{
  *this = &unk_1EF23F610;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F610;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CG::DisplayListResourceColor::~DisplayListResourceColor(CG::DisplayListResourceColor *this)
{
  *this = &unk_1EF239A90;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF239A90;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void CG::DisplayListResourceClip::~DisplayListResourceClip(void **this)
{
  *this = &unk_1EF23F528;
  CGClipStackRelease(this[2]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F528;
  CGClipStackRelease(this[2]);
}

uint64_t CGColorSpaceExtendedGray()
{
  if (CGColorSpaceExtendedGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedGray_predicate, &__block_literal_global_285_6553);
  }

  v0 = CGColorSpaceExtendedGray_space;
  if (CGColorSpaceExtendedGray_space)
  {
    CFRetain(CGColorSpaceExtendedGray_space);
  }

  return v0;
}

void __CGColorSpaceExtendedGray_block_invoke()
{
  CGColorSpaceExtendedGray_space = create_singleton(color_space_state_create_extended_gray);
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceGenericGrayGamma2_2");
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
  CGColorSpaceSetProperty(CGColorSpaceExtendedGray_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedGray_space);
  v0 = CGColorSpaceExtendedGray_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearGray");
}

char *color_space_state_create_extended_gray()
{
  if (color_space_state_create_extended_gray_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_gray_cglibrarypredicate, &__block_literal_global_272);
  }

  v0 = color_space_state_create_extended_gray_f;
  if (color_space_state_create_extended_gray_cglibrarypredicate_273 != -1)
  {
    dispatch_once(&color_space_state_create_extended_gray_cglibrarypredicate_273, &__block_literal_global_276);
  }

  v1 = v0(color_space_state_create_extended_gray_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedGray";
    *(icc_with_profile + 5) = 2;
    *(*(icc_with_profile + 12) + 40) = @"Generic Gray Gamma 2.2 Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_extended_gray_block_invoke())()
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

  color_space_state_create_extended_gray_f = v1;
  return result;
}

uint64_t *__color_space_state_create_extended_gray_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericGrayGamma22Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_gray_s = v1;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceGray_block_invoke()
{
  result = create_singleton(color_space_state_create_device_gray);
  CGColorSpaceCreateDeviceGray_space = result;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceGray(void)
{
  if (CGColorSpaceCreateDeviceGray_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceGray_predicate, &__block_literal_global_6529);
  }

  v0 = CGColorSpaceCreateDeviceGray_space;
  if (CGColorSpaceCreateDeviceGray_space)
  {
    CFRetain(CGColorSpaceCreateDeviceGray_space);
  }

  return v0;
}

double color_space_state_create_device_gray()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0xD9AA5AE6uLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 256;
    *(v0 + 14) = &device_gray_vtable;
    *(v0 + 8) = 0;
    *(v0 + 3) = 0;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceGray";
    *(v0 + 5) = &xmmword_1844DF970;
    *(v0 + 6) = 1;
    result = 3.05765335e180;
    *(v0 + 4) = xmmword_18439CA30;
  }

  return result;
}

double get_size_from_dict(const __CFDictionary *a1, double *a2)
{
  result = get_number_from_dict(a1, @"Width", a2);
  if (v5)
  {

    return get_number_from_dict(a1, @"Height", a2 + 1);
  }

  return result;
}

CFURLRef CGFontURLCreate(CFStringRef filePath, const __CFString *a2, const __CFDictionary *a3)
{
  v3 = 0;
  if (filePath)
  {
    if (a2)
    {
      v6 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
      v3 = v6;
      if (v6)
      {
        v7 = CFURLGetString(v6);
        MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
        CFRelease(v3);
        if (MutableCopy)
        {
          if (!CFStringHasPrefix(MutableCopy, @"file://"))
          {
            CFStringInsert(MutableCopy, 0, @"file://");
          }

          CFStringAppend(MutableCopy, @"#postscript-name=");
          if (append_escaped_string(MutableCopy, a2))
          {
            if (a3)
            {
              append_variations(MutableCopy, a3);
            }

            v3 = CFURLCreateWithString(0, MutableCopy, 0);
          }

          else
          {
            v3 = 0;
          }

          CFRelease(MutableCopy);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t append_escaped_string(__CFString *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  v8.location = 0;
  v8.length = Length;
  if (CFStringFindWithOptions(theString, @";", v8, 0, 0))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
    v9.location = 0;
    v9.length = Length;
    CFStringFindAndReplace(MutableCopy, @";", @"/", v9, 0);
    v6 = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, 0, 0x8000100u);
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = CFURLCreateStringByAddingPercentEscapes(0, theString, 0, 0, 0x8000100u);
    if (v6)
    {
LABEL_6:
      CFStringAppend(a1, v6);
      CFRelease(v6);
      return 1;
    }
  }

  return 0;
}

double get_point_from_dict(const __CFDictionary *a1, double *a2)
{
  result = get_number_from_dict(a1, @"X", a2);
  if (v5)
  {

    return get_number_from_dict(a1, @"Y", a2 + 1);
  }

  return result;
}

BOOL CGRectMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGRect *rect)
{
  if (!dict)
  {
    return 0;
  }

  if (!rect)
  {
    return 0;
  }

  get_point_from_dict(dict, &rect->origin.x);
  if (!v4)
  {
    return 0;
  }

  get_size_from_dict(dict, &rect->size.width);
  return result;
}

double get_number_from_dict(const __CFDictionary *a1, const void *a2, double *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v6 = Value;
    valuePtr = 0.0;
    if (CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr))
    {
      result = valuePtr;
      *a3 = valuePtr;
    }

    else
    {
      v7 = 0.0;
      if (CFNumberGetValue(v6, kCFNumberFloatType, &v7))
      {
        result = v7;
        *a3 = v7;
      }
    }
  }

  return result;
}

char *CGFontDBCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x60uLL, 0x1020040D7707FD8uLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init((v0 + 32), 0);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *v1 = Mutable;
    if (!Mutable || (v3 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0 || (CFArrayAppendValue(*v1, v3), v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(v1 + 1) = v4) == 0) || (v5 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(v1 + 2) = v5) == 0) || (v6 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(v1 + 3) = v6) == 0))
    {
      CGFontDBRelease(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t CGFontDBGetLocal()
{
  if (CGFontDBGetLocal_once != -1)
  {
    dispatch_once_f(&CGFontDBGetLocal_once, 0, create_local_db);
  }

  return local_db;
}

char *create_local_db()
{
  result = CGFontDBCreate();
  local_db = result;
  return result;
}

_DWORD *A8_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, float a4)
{
  v5 = *(*a1 + 64);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    v6 = v5[1];
    if (v6 >= a4)
    {
      v6 = a4;
      if (*v5 > a4)
      {
        v6 = *v5;
      }
    }

    v7 = ((v6 * v5[2]) + v5[3]);
    *a2 = xmmword_18439CE60;
    a2[6] = 0;
    *(a2 + 2) = 1;
    a2[12] = v7 | (v7 << 8) | ((v7 | (v7 << 8)) << 16);
    if (v7 >= 255)
    {
      v8 = 0;
    }

    else
    {
      v8 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v8;
  }

  return a2;
}

uint64_t ripl_BltOpSourcePattern(uint64_t a1, _DWORD *a2, int32x2_t *a3, uint64_t a4)
{
  if ((*a4 & 0xFFF00000) == 0x300000)
  {
    v4 = *(a4 + 4);
    v5 = *(a4 + 12);
    v6 = *(a4 + 16);
    if (a3)
    {
      v4 = vadd_s32(*a3, v4);
    }

    v7 = 3;
    *(a1 + 1) = 3;
    v8 = a2[4];
    v9 = *(a1 + 16);
    v10 = a2[6];
    *(a1 + 56) = a2[3] - v4.i32[0] + *(a1 + 12);
    v11 = v4.i32[1] + v6 - (v8 + v10) + v9;
  }

  else
  {
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 4;
    *(a1 + 1) = 4;
    *(a1 + 56) = 0;
  }

  *(a1 + 60) = v11;
  *(a1 + 64) = v5;
  *(a1 + 68) = v6;
  *(a1 + 72) = 0;
  *(a1 + 76) = *(a4 + 20);
  *(a1 + 88) = *(a4 + 32);
  return v7;
}

uint64_t A8_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v198 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 96);
  v7 = *(v3 + 48);
  v8 = *(v2 + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v3;
  v11 = *(v3 + 4);
  v12 = (v11 - 1);
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v3 + 8);
  v14 = (v13 - 1);
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v15)
  {
    v17 = *v3 & 0xFF00;
    if (v17 == 1024)
    {
      v197[0] = *(v3 + 4);
      v187[0] = v13;
      v18 = *(v3 + 28);
      v19 = **(v3 + 88);
      v20 = *(v3 + 12);
      v21 = *(v3 + 40) + *(v3 + 16) * v18;
      v22 = v21 + v20;
      if (!v15)
      {
        v24 = 0;
        v44 = (v21 + v20);
        goto LABEL_45;
      }

      shape_enum_clip_alloc(v2, v3, v15, 1, 1, 1, *(v3 + 104), *(v3 + 108), v11, v13);
      v24 = v23;
      if (!v23)
      {
        return 1;
      }

      while (shape_enum_clip_next(v24, &v186 + 1, &v186, v197, v187))
      {
        v44 = (v22 + v186 * v18 + SHIDWORD(v186));
        LODWORD(v11) = v197[0];
LABEL_45:
        v53 = v18 - v11;
        switch(v8)
        {
          case 0:
            v68 = v187[0];
            v79 = (v187[0] - 1) * v18;
            if (v18 < 0)
            {
              v65 = -v18;
            }

            else
            {
              v79 = 0;
              v65 = v18;
            }

            v44 += v79;
            v69 = v11;
            v66 = 0;
            goto LABEL_79;
          case 1:
            goto LABEL_73;
          case 2:
            goto LABEL_47;
          case 3:
            do
            {
              v61 = v197[0];
              do
              {
                v62 = *v44;
                if (*v44)
                {
                  LOBYTE(v63) = v19;
                  if (v62 != 255)
                  {
                    v63 = v19 - (((v62 ^ 0xFF) * v19 + (((v62 ^ 0xFF) * v19) >> 8) + 1) >> 8);
                  }
                }

                else
                {
                  LOBYTE(v63) = *v44;
                }

                *v44++ = v63;
                --v61;
              }

              while (v61);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 4:
            do
            {
              v73 = v197[0];
              do
              {
                v74 = *v44;
                if (v74 == 0xFF)
                {
                  LOBYTE(v75) = 0;
                }

                else
                {
                  LOBYTE(v75) = v19;
                  if (~v74 != 255)
                  {
                    v75 = v19 - ((v74 * v19 + ((v74 * v19) >> 8) + 1) >> 8);
                  }
                }

                *v44++ = v75;
                --v73;
              }

              while (v73);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 5:
            do
            {
              v80 = v197[0];
              do
              {
                *v44 = ((v19 + ~v19) * *v44 + (((v19 + ~v19) * *v44) >> 8) + 1) >> 8;
                ++v44;
                --v80;
              }

              while (v80);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 6:
            do
            {
              v81 = v197[0];
              do
              {
                v82 = *v44;
                if (v82 != 0xFF)
                {
                  LOBYTE(v83) = v19;
                  if (~v82 != 255)
                  {
                    v83 = v82 + ((~v82 * v19 + ((~v82 * v19) >> 8) + 1) >> 8);
                  }

                  *v44 = v83;
                }

                ++v44;
                --v81;
              }

              while (v81);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 7:
            do
            {
              v78 = v197[0];
              do
              {
                *v44 -= (*v44 * ~v19 + ((*v44 * ~v19) >> 8) + 1) >> 8;
                ++v44;
                --v78;
              }

              while (v78);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 8:
            do
            {
              v64 = v197[0];
              do
              {
                *v44 -= (*v44 * v19 + ((*v44 * v19) >> 8) + 1) >> 8;
                ++v44;
                --v64;
              }

              while (v64);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 9:
            do
            {
              v60 = v197[0];
              do
              {
                *v44 = ((*v44 + (*v44 ^ 0xFF)) * v19 + (((*v44 + (*v44 ^ 0xFF)) * v19) >> 8) + 1) >> 8;
                ++v44;
                --v60;
              }

              while (v60);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 10:
            do
            {
              v84 = v197[0];
              do
              {
                *v44 = ((*v44 ^ 0xFF) * v19 + *v44 * ~v19 + (((*v44 ^ 0xFF) * v19 + *v44 * ~v19) >> 8) + 1) >> 8;
                ++v44;
                --v84;
              }

              while (v84);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 11:
            do
            {
              v71 = v197[0];
              do
              {
                v72 = *v44 + v19;
                if (v72 >= 0xFF)
                {
                  LOBYTE(v72) = -1;
                }

                *v44++ = v72;
                --v71;
              }

              while (v71);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 12:
            do
            {
              v76 = v197[0];
              do
              {
                v77 = *v44 + v19;
                if (v77 >= 0xFF)
                {
                  LOBYTE(v77) = -1;
                }

                *v44++ = v77;
                --v76;
              }

              while (v76);
              v44 += v53;
              --v187[0];
            }

            while (v187[0]);
            break;
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
            if (*(v10 + 96))
            {
LABEL_47:
              v54 = vdup_n_s16(v19);
              v55 = vdup_n_s16(~v19);
              do
              {
                v56 = v197[0];
                if (v197[0] >= 4)
                {
                  v57 = (v197[0] >> 2) + 1;
                  do
                  {
                    v5.i32[0] = *v44;
                    v58 = vmull_u16(v55, *&vmovl_u8(v5));
                    v5 = vuzp1_s8(vsra_n_u16(v54, vadd_s16(vmovn_s32(vsraq_n_u32(v58, v58, 8uLL)), 0x1000100010001), 8uLL), v54);
                    *v44 = v5.i32[0];
                    v44 += 4;
                    --v57;
                  }

                  while (v57 > 1);
                  v56 = v197[0] & 3;
                }

                if (v56 >= 1)
                {
                  v59 = v56 + 1;
                  do
                  {
                    *v44 = v19 + ((*v44 * ~v19 + ((*v44 * ~v19) >> 8) + 1) >> 8);
                    ++v44;
                    --v59;
                  }

                  while (v59 > 1);
                }

                v44 += v53;
                --v187[0];
              }

              while (v187[0]);
            }

            else
            {
LABEL_73:
              if (v18 < 0)
              {
                v44 += (v187[0] - 1) * v18;
                v65 = -v18;
              }

              else
              {
                v65 = v18;
              }

              v66 = 0;
              v67 = *(v10 + 88);
              if (v67)
              {
                v66 = *v67;
              }

              v68 = v187[0];
              v69 = v11;
LABEL_79:
              CGBlt_fillBytes(v69, v68, v66, v44, v65);
            }

            break;
          default:
            break;
        }

        if (!v24)
        {
          return 1;
        }

        v186 = 0;
      }

LABEL_84:
      v70 = v24;
LABEL_400:
      free(v70);
      return 1;
    }

    v197[0] = *(v3 + 4);
    v187[0] = v13;
    v25 = *(v3 + 28);
    v26 = *(v3 + 88);
    v27 = (*(v3 + 40) + *(v3 + 16) * v25 + *(v3 + 12));
    v28 = *(v3 + 56);
    v29 = *(v3 + 60);
    v30 = *(v3 + 76);
    if (v17 != 256)
    {
      v36 = *(v3 + 64);
      v182 = *(v3 + 68);
      v34 = v26 + v182 * v30;
      v180 = v6 != 0;
      if (v15)
      {
        v178 = *(v3 + 60);
        v179 = *(v3 + 56);
        v181 = *(v3 + 40) + *(v3 + 16) * v25 + *(v3 + 12);
        v33 = 1;
        v35 = *(v3 + 88);
        v31 = v35;
        goto LABEL_29;
      }

      v51 = v25 - v11;
      if (v26)
      {
        v185 = 0;
        v178 = v29 % v182;
        v179 = v28 % v36;
        v183 = *(v3 + 88);
        v52 = v26 + v30 * (v29 % v182);
        v31 = (v52 + v28 % v36);
        v26 = v52 + v36;
        v33 = 1;
        v181 = *(v3 + 40) + *(v3 + 16) * v25 + *(v3 + 12);
        v35 = v31;
        goto LABEL_129;
      }

      v178 = *(v3 + 60);
      v179 = *(v3 + 56);
      v31 = 0;
      v33 = 1;
      v50 = v11;
LABEL_43:
      v185 = 0;
      v34 = 0;
      v35 = 0;
      v30 -= v50;
      v183 = v31;
      v181 = v27;
      goto LABEL_129;
    }

    v31 = (v26 + v30 * v29 + v28);
    if (v30 == v25 && v27 - v31 >= 1)
    {
      if (v27 - v31 <= v11)
      {
        v27 += v12;
        v31 += v12;
        v33 = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      v32 = &v31[v30 * v14];
      if (v27 <= &v32[v11 - 1])
      {
        v27 += v25 * v14;
        v25 = -v25;
        v30 = -v30;
        v33 = 1;
        v31 = v32;
        goto LABEL_21;
      }
    }

    v33 = 1;
LABEL_21:
    v180 = v6 != 0;
    v178 = *(v3 + 60);
    v179 = *(v3 + 56);
    if (v15)
    {
      v181 = v27;
      v182 = 0;
      v34 = 0;
      v35 = 0;
      v26 = -1;
      v36 = v30;
LABEL_29:
      v42 = v33;
      v184 = v25;
      shape_enum_clip_alloc(v27, v3, v15, v33, v25, 1, *(v3 + 104), *(v3 + 108), v11, v13);
      if (!v43)
      {
        return 1;
      }

      while (2)
      {
        v185 = v43;
        if (!shape_enum_clip_next(v43, &v186 + 1, &v186, v197, v187))
        {
          v70 = v185;
          goto LABEL_400;
        }

        v183 = v31;
        if (v34)
        {
          v25 = v184;
          v27 = (v181 + v184 * v186 + SHIDWORD(v186));
          LODWORD(v11) = v197[0];
          v91 = &v31[v30 * ((v186 + *(v10 + 60)) % v182)];
          v31 = &v91[(HIDWORD(v186) + *(v10 + 56)) % v36];
          v26 = &v91[v36];
          v35 = v31;
          v92 = v197[0];
          v178 = (v186 + *(v10 + 60)) % v182;
          v179 = (HIDWORD(v186) + *(v10 + 56)) % v36;
          v33 = v42;
        }

        else
        {
          LODWORD(v11) = v197[0];
          v33 = v42;
          v92 = v197[0] * v42;
          v25 = v184;
          v27 = (v181 + v184 * v186 + SHIDWORD(v186) * v42);
          v31 += v186 * v36 + SHIDWORD(v186) * v42;
          v30 = v36 - v197[0] * v42;
        }

        v51 = v25 - v92;
LABEL_129:
        v184 = v25;
        switch(v8)
        {
          case 0:
            v149 = v51 - v11;
            v150 = v51 + v11;
            v42 = v33;
            if (v33 >= 0)
            {
              v151 = v27;
            }

            else
            {
              v151 = &v27[-v11 + 1];
            }

            if (v33 < 0)
            {
              v150 = v149;
            }

            if (v150 >= 0)
            {
              LODWORD(v152) = v150;
            }

            else
            {
              v152 = -v150;
            }

            CGBlt_fillBytes(v11, v187[0], 0, &v151[(v150 * (v187[0] - 1)) & (v150 >> 63)], v152);
            goto LABEL_150;
          case 1:
            goto LABEL_158;
          case 2:
            goto LABEL_131;
          case 3:
            do
            {
              v137 = v197[0];
              do
              {
                v138 = *v27;
                if (*v27)
                {
                  if (v138 == 255)
                  {
                    LOBYTE(v138) = *v31;
                  }

                  else
                  {
                    v138 = *v31 - ((*v31 * (v138 ^ 0xFF) + ((*v31 * (v138 ^ 0xFF)) >> 8) + 1) >> 8);
                  }
                }

                *v27 = v138;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v139 = -v36;
                }

                else
                {
                  v139 = 0;
                }

                v31 += v33 + v139;
                --v137;
              }

              while (v137);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v140 = -(v30 * v182);
              }

              else
              {
                v140 = 0;
              }

              v141 = &v35[v30 + v140];
              v142 = v26 + v30 + v140;
              if (v34)
              {
                v31 = v141;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v141;
                v26 = v142;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 4:
            do
            {
              v118 = v197[0];
              do
              {
                v119 = *v27;
                if (v119 == 0xFF)
                {
                  LOBYTE(v120) = 0;
                }

                else if (~v119 == 255)
                {
                  LOBYTE(v120) = *v31;
                }

                else
                {
                  v120 = *v31 - ((*v31 * v119 + ((*v31 * v119) >> 8) + 1) >> 8);
                }

                *v27 = v120;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v121 = -v36;
                }

                else
                {
                  v121 = 0;
                }

                v31 += v33 + v121;
                --v118;
              }

              while (v118);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v122 = -(v30 * v182);
              }

              else
              {
                v122 = 0;
              }

              v123 = &v35[v30 + v122];
              v124 = v26 + v30 + v122;
              if (v34)
              {
                v31 = v123;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v123;
                v26 = v124;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 5:
            do
            {
              v153 = v197[0];
              do
              {
                *v27 = (((*v31 ^ 0xFF) + *v31) * *v27 + ((((*v31 ^ 0xFF) + *v31) * *v27) >> 8) + 1) >> 8;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v154 = -v36;
                }

                else
                {
                  v154 = 0;
                }

                v31 += v33 + v154;
                --v153;
              }

              while (v153);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v155 = -(v30 * v182);
              }

              else
              {
                v155 = 0;
              }

              v156 = &v35[v30 + v155];
              v157 = v26 + v30 + v155;
              if (v34)
              {
                v31 = v156;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v156;
                v26 = v157;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 6:
            do
            {
              v158 = v197[0];
              do
              {
                v159 = *v27;
                if (v159 != 0xFF)
                {
                  if (~v159 == 255)
                  {
                    LOBYTE(v160) = *v31;
                  }

                  else
                  {
                    v160 = v159 + ((*v31 * ~v159 + ((*v31 * ~v159) >> 8) + 1) >> 8);
                  }

                  *v27 = v160;
                }

                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v161 = -v36;
                }

                else
                {
                  v161 = 0;
                }

                v31 += v33 + v161;
                --v158;
              }

              while (v158);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v162 = -(v30 * v182);
              }

              else
              {
                v162 = 0;
              }

              v163 = &v35[v30 + v162];
              v164 = v26 + v30 + v162;
              if (v34)
              {
                v31 = v163;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v163;
                v26 = v164;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 7:
            while (1)
            {
              v143 = v197[0];
              do
              {
                v144 = *v31;
                if (*v31)
                {
                  if (v144 == 255)
                  {
                    goto LABEL_306;
                  }

                  v144 = *v27 - ((*v27 * (v144 ^ 0xFF) + ((*v27 * (v144 ^ 0xFF)) >> 8) + 1) >> 8);
                }

                *v27 = v144;
LABEL_306:
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v145 = -v36;
                }

                else
                {
                  v145 = 0;
                }

                v31 += v33 + v145;
                --v143;
              }

              while (v143);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v146 = -(v30 * v182);
              }

              else
              {
                v146 = 0;
              }

              v147 = &v35[v30 + v146];
              v148 = v26 + v30 + v146;
              if (v34)
              {
                v31 = v147;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v147;
                v26 = v148;
              }

              if (!--v187[0])
              {
                goto LABEL_149;
              }
            }

          case 8:
            break;
          case 9:
            do
            {
              v131 = v197[0];
              do
              {
                v132 = *v27 + (*v27 ^ 0xFF);
                *v27 = (v132 * *v31 + ((v132 * *v31) >> 8) + 1) >> 8;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v133 = -v36;
                }

                else
                {
                  v133 = 0;
                }

                v31 += v33 + v133;
                --v131;
              }

              while (v131);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v134 = -(v30 * v182);
              }

              else
              {
                v134 = 0;
              }

              v135 = &v35[v30 + v134];
              v136 = v26 + v30 + v134;
              if (v34)
              {
                v31 = v135;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v135;
                v26 = v136;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 10:
            do
            {
              v165 = v197[0];
              do
              {
                *v27 = ((*v27 ^ 0xFF) * *v31 + *v27 * (*v31 ^ 0xFF) + (((*v27 ^ 0xFF) * *v31 + *v27 * (*v31 ^ 0xFFu)) >> 8) + 1) >> 8;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v166 = -v36;
                }

                else
                {
                  v166 = 0;
                }

                v31 += v33 + v166;
                --v165;
              }

              while (v165);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v167 = -(v30 * v182);
              }

              else
              {
                v167 = 0;
              }

              v168 = &v35[v30 + v167];
              v169 = v26 + v30 + v167;
              if (v34)
              {
                v31 = v168;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v168;
                v26 = v169;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 11:
            do
            {
              v112 = v197[0];
              do
              {
                v113 = *v31 + *v27;
                if (v113 >= 0xFF)
                {
                  LOBYTE(v113) = -1;
                }

                *v27 = v113;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v114 = -v36;
                }

                else
                {
                  v114 = 0;
                }

                v31 += v33 + v114;
                --v112;
              }

              while (v112);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v115 = -(v30 * v182);
              }

              else
              {
                v115 = 0;
              }

              v116 = &v35[v30 + v115];
              v117 = v26 + v30 + v115;
              if (v34)
              {
                v31 = v116;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v116;
                v26 = v117;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 12:
            do
            {
              v125 = v197[0];
              do
              {
                v126 = *v31 + *v27;
                if (v126 >= 0xFF)
                {
                  LOBYTE(v126) = -1;
                }

                *v27 = v126;
                v27 += v33;
                if (&v31[v33] >= v26)
                {
                  v127 = -v36;
                }

                else
                {
                  v127 = 0;
                }

                v31 += v33 + v127;
                --v125;
              }

              while (v125);
              v27 += v51;
              if (&v35[v30] >= v34)
              {
                v128 = -(v30 * v182);
              }

              else
              {
                v128 = 0;
              }

              v129 = &v35[v30 + v128];
              v130 = v26 + v30 + v128;
              if (v34)
              {
                v31 = v129;
              }

              else
              {
                v31 += v30;
              }

              if (v34)
              {
                v35 = v129;
                v26 = v130;
              }

              --v187[0];
            }

            while (v187[0]);
            goto LABEL_149;
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
            if (v180)
            {
              do
              {
LABEL_131:
                v85 = v197[0];
                do
                {
                  v86 = *v31;
                  if (*v31)
                  {
                    if (v86 != 255)
                    {
                      v86 += (*v27 * (v86 ^ 0xFF) + ((*v27 * (v86 ^ 0xFFu)) >> 8) + 1) >> 8;
                    }

                    *v27 = v86;
                  }

                  v27 += v33;
                  if (&v31[v33] >= v26)
                  {
                    v87 = -v36;
                  }

                  else
                  {
                    v87 = 0;
                  }

                  v31 += v33 + v87;
                  --v85;
                }

                while (v85);
                v27 += v51;
                if (&v35[v30] >= v34)
                {
                  v88 = -(v30 * v182);
                }

                else
                {
                  v88 = 0;
                }

                v89 = &v35[v30 + v88];
                v90 = v26 + v30 + v88;
                if (v34)
                {
                  v31 = v89;
                }

                else
                {
                  v31 += v30;
                }

                if (v34)
                {
                  v35 = v89;
                  v26 = v90;
                }

                --v187[0];
              }

              while (v187[0]);
            }

            else
            {
LABEL_158:
              v93 = *(v10 + 1);
              if (v93 == 2)
              {
                if (v11 >= 32 && v36 <= 0x40)
                {
                  v4.i32[0] = v36;
                  v96 = vcnt_s8(v4);
                  v96.i16[0] = vaddlv_u8(v96);
                  if (v96.i32[0] <= 1u)
                  {
                    v42 = v33;
                    v31 = v183;
                    CGSFillDRAM64(v27, v11 + v51, v11, v187[0], v183, v30, v36, v182, v179, v178);
                    goto LABEL_151;
                  }
                }

LABEL_167:
                if (v7 == 0 || v180)
                {
                  do
                  {
                    v97 = v197[0];
                    do
                    {
                      *v27 = *v31;
                      v27 += v33;
                      if (&v31[v33] >= v26)
                      {
                        v98 = -v36;
                      }

                      else
                      {
                        v98 = 0;
                      }

                      v31 += v33 + v98;
                      --v97;
                    }

                    while (v97);
                    v27 += v51;
                    if (&v35[v30] >= v34)
                    {
                      v99 = -(v30 * v182);
                    }

                    else
                    {
                      v99 = 0;
                    }

                    v100 = &v35[v30 + v99];
                    v101 = v26 + v30 + v99;
                    if (v34)
                    {
                      v31 = v100;
                    }

                    else
                    {
                      v31 += v30;
                    }

                    if (v34)
                    {
                      v35 = v100;
                      v26 = v101;
                    }

                    --v187[0];
                  }

                  while (v187[0]);
                }

                else
                {
                  do
                  {
                    v102 = v197[0];
                    do
                    {
                      *v27 = *v31;
                      v27 += v33;
                      if (&v31[v33] >= v26)
                      {
                        v103 = -v36;
                      }

                      else
                      {
                        v103 = 0;
                      }

                      v31 += v33 + v103;
                      --v102;
                    }

                    while (v102);
                    v27 += v51;
                    if (&v35[v30] >= v34)
                    {
                      v104 = -(v30 * v182);
                    }

                    else
                    {
                      v104 = 0;
                    }

                    v105 = &v35[v30 + v104];
                    v106 = v26 + v30 + v104;
                    if (v34)
                    {
                      v31 = v105;
                    }

                    else
                    {
                      v31 += v30;
                    }

                    if (v34)
                    {
                      v35 = v105;
                      v26 = v106;
                    }

                    --v187[0];
                  }

                  while (v187[0]);
                }

                goto LABEL_149;
              }

              if (v93 != 1)
              {
                goto LABEL_167;
              }

              if (v7 == 0 || v180)
              {
                v42 = v33;
                if ((v33 & 0x80000000) != 0)
                {
                  v94 = v30 - v11;
                  v31 += -v11 + 1;
                  v95 = v51 - v11;
                  v27 += -v11 + 1;
                }

                else
                {
                  v94 = v30 + v11;
                  v95 = v51 + v11;
                }

                if (v94 >= 0)
                {
                  v30 = v94;
                }

                else
                {
                  v30 = -v94;
                }

                if (v95 >= 0)
                {
                  LODWORD(v177) = v95;
                }

                else
                {
                  v177 = -v95;
                }

                CGBlt_copyBytes(v11, v187[0], &v31[(v94 * (v187[0] - 1)) & (v94 >> 63)], &v27[(v95 * (v187[0] - 1)) & (v95 >> 63)], v30, v177);
                goto LABEL_150;
              }

              do
              {
                v107 = v197[0];
                do
                {
                  *v27 = *v31;
                  v27 += v33;
                  if (&v31[v33] >= v26)
                  {
                    v108 = -v36;
                  }

                  else
                  {
                    v108 = 0;
                  }

                  v31 += v33 + v108;
                  --v107;
                }

                while (v107);
                v27 += v51;
                if (&v35[v30] >= v34)
                {
                  v109 = -(v30 * v182);
                }

                else
                {
                  v109 = 0;
                }

                v110 = &v35[v30 + v109];
                v111 = v26 + v30 + v109;
                if (v34)
                {
                  v31 = v110;
                }

                else
                {
                  v31 += v30;
                }

                if (v34)
                {
                  v35 = v110;
                  v26 = v111;
                }

                --v187[0];
              }

              while (v187[0]);
            }

LABEL_149:
            v42 = v33;
LABEL_150:
            v31 = v183;
LABEL_151:
            v43 = v185;
            if (!v185)
            {
              return 1;
            }

            v186 = 0;
            continue;
          default:
            goto LABEL_149;
        }

        break;
      }

LABEL_379:
      v170 = v197[0];
      while (1)
      {
        v171 = *v31;
        if (v171 == 0xFF)
        {
          break;
        }

        if (~v171 != 255)
        {
          v172 = *v27 - ((*v27 * v171 + ((*v27 * v171) >> 8) + 1) >> 8);
LABEL_384:
          *v27 = v172;
        }

        v27 += v33;
        if (&v31[v33] >= v26)
        {
          v173 = -v36;
        }

        else
        {
          v173 = 0;
        }

        v31 += v33 + v173;
        if (!--v170)
        {
          v27 += v51;
          if (&v35[v30] >= v34)
          {
            v174 = -(v30 * v182);
          }

          else
          {
            v174 = 0;
          }

          v175 = &v35[v30 + v174];
          v176 = v26 + v30 + v174;
          if (v34)
          {
            v31 = v175;
          }

          else
          {
            v31 += v30;
          }

          if (v34)
          {
            v35 = v175;
            v26 = v176;
          }

          if (!--v187[0])
          {
            goto LABEL_149;
          }

          goto LABEL_379;
        }
      }

      LOBYTE(v172) = 0;
      goto LABEL_384;
    }

    v182 = 0;
    v50 = v33 * v11;
    v51 = v25 - v50;
    v26 = -1;
    v36 = v30;
    goto LABEL_43;
  }

  v16 = *(v3 + 128);
  if ((v16 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      A8_mark_constmask(v3, v8);
    }

    else
    {
      A8_mark_pixelmask(v3, v8);
    }

    return 1;
  }

  v37 = *(v3 + 112);
  v38 = *(v3 + 116);
  v39 = (v37 + 15) & 0xFFFFFFF0;
  v40 = v39 * v38;
  if (v40 <= 4096)
  {
    v24 = v197;
LABEL_33:
    CGSConvertBitsToMask(v15, *(v10 + 124), v24, v39, v37, v38, v16);
    v45 = *(v10 + 112);
    v193 = *(v10 + 96);
    v194 = v45;
    v46 = *(v10 + 144);
    v195 = *(v10 + 128);
    v196 = v46;
    v47 = *(v10 + 48);
    v189 = *(v10 + 32);
    v190 = v47;
    v48 = *(v10 + 80);
    v191 = *(v10 + 64);
    v192 = v48;
    v49 = *(v10 + 16);
    *v187 = *v10;
    v188 = v49;
    HIDWORD(v194) = (v37 + 15) & 0xFFFFFFF0;
    *(&v195 + 1) = v24;
    if (BYTE1(v187[0]) << 8 == 1024)
    {
      A8_mark_constmask(v187, v8);
    }

    else
    {
      A8_mark_pixelmask(v187, v8);
    }

    if (v24 == v197)
    {
      return 1;
    }

    goto LABEL_84;
  }

  v41 = malloc_type_malloc(v40, 0x100004077774924uLL);
  if (v41)
  {
    v24 = v41;
    v15 = *(v10 + 136);
    v16 = *(v10 + 128);
    goto LABEL_33;
  }

  return 1;
}

uint64_t A8_mark_constmask(uint64_t result, int a2)
{
  v3 = result;
  v5 = *(result + 4);
  v4 = *(result + 8);
  v6 = *(result + 28);
  v7 = *(result + 40);
  v8 = *(result + 136);
  v9 = **(result + 88);
  if (A8_cacheColor && *(A8_cacheColor + 16) == v9)
  {
    v10 = (A8_cacheColor + 8);
  }

  else
  {
    pthread_mutex_lock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
    v11 = 0;
    v12 = A8_cacheColor;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_9;
      }

      v13 = v11;
      v11 = v12;
      if (*(v12 + 16) == v9)
      {
        break;
      }

      v12 = *v12;
      if (!*v11)
      {
        if (A8_cacheColorCount > 6)
        {
          *v13 = 0;
        }

        else
        {
LABEL_9:
          v14 = A8_cacheColorBase;
          if (A8_cacheColorBase)
          {
            v15 = A8_cacheColorCount;
          }

          else
          {
            v14 = malloc_type_calloc(1uLL, 0x7A8uLL, 0x1020040071ED649uLL);
            v15 = 0;
            A8_cacheColorBase = v14;
          }

          v11 = &v14[24 * v15];
          *(v11 + 1) = &v14[256 * v15 + 168];
          A8_cacheColorCount = v15 + 1;
        }

        *v11 = A8_cacheColor;
        A8_cacheColor = v11;
        result = pthread_mutex_unlock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
        v16 = 0;
        v17 = xmmword_18439CF30;
        v18 = xmmword_18439CF40;
        v19 = xmmword_18439CC10;
        v20 = xmmword_18439CB90;
        v22 = *(v11 + 1);
        v10 = v11 + 8;
        v21 = v22;
        v23.i64[0] = 0xFF000000FFLL;
        v23.i64[1] = 0xFF000000FFLL;
        v10[8] = v9;
        v24 = vdupq_n_s32(v9);
        v25.i64[0] = 0x1000000010;
        v25.i64[1] = 0x1000000010;
        v26 = vdupq_n_s8(v9);
        do
        {
          v27 = vmulq_s32(veorq_s8(v20, v23), v24);
          v28 = vmulq_s32(veorq_s8(v19, v23), v24);
          v29 = vmulq_s32(veorq_s8(v18, v23), v24);
          v30 = vmulq_s32(veorq_s8(v17, v23), v24);
          *v27.i8 = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v27, v27, 8uLL)), 0x1000100010001), 8uLL);
          v27.u64[1] = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v28, v28, 8uLL)), 0x1000100010001), 8uLL);
          *v29.i8 = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v29, v29, 8uLL)), 0x1000100010001), 8uLL);
          v29.u64[1] = vshr_n_u16(vadd_s16(vmovn_s32(vsraq_n_u32(v30, v30, 8uLL)), 0x1000100010001), 8uLL);
          *(v21 + v16) = vsubq_s8(v26, vuzp1q_s8(v27, v29));
          v16 += 16;
          v20 = vaddq_s32(v20, v25);
          v19 = vaddq_s32(v19, v25);
          v18 = vaddq_s32(v18, v25);
          v17 = vaddq_s32(v17, v25);
        }

        while (v16 != 256);
        goto LABEL_19;
      }
    }

    if (v13)
    {
      *v13 = *v12;
      *v12 = A8_cacheColor;
      A8_cacheColor = v12;
    }

    result = pthread_mutex_unlock(&A8_colorlookup(int,void const*,void const*)::A8_cacheColorMutex);
    v10 = v11 + 8;
  }

LABEL_19:
  if (v8)
  {
    v31 = *v10;
    v32 = *(*v10 + 255);
    v33 = (v7 + *(v3 + 16) * v6 + *(v3 + 12));
    v34 = *(v3 + 124);
    v35 = v8 + *(v3 + 108) * v34 + *(v3 + 104);
    v36 = v34 - v5;
    v37 = v6 - v5;
    switch(a2)
    {
      case 0:
        do
        {
          v62 = v5;
          do
          {
            v63 = *v35;
            if (*v35)
            {
              if (v63 == 255)
              {
                LOBYTE(v64) = 0;
              }

              else
              {
                v64 = *v33 - ((*v33 * v63 + ((*v33 * v63) >> 8) + 1) >> 8);
              }

              *v33 = v64;
            }

            ++v35;
            ++v33;
            --v62;
          }

          while (v62);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 1:
        goto LABEL_104;
      case 2:
        goto LABEL_22;
      case 3:
        do
        {
          v59 = v5;
          do
          {
            v60 = *v35;
            if (*v35)
            {
              if (v60 == 255)
              {
                LOBYTE(v61) = *(v31 + *v33);
              }

              else
              {
                v61 = *(v31 + ((*v33 * v60 + ((*v33 * v60) >> 8) + 1) >> 8)) + ((*v33 * (v60 ^ 0xFF) + ((*v33 * (v60 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v33 = v61;
            }

            ++v35;
            ++v33;
            --v59;
          }

          while (v59);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 4:
        do
        {
          v53 = v5;
          do
          {
            v54 = *v35;
            if (*v35)
            {
              if (v54 == 255)
              {
                LOBYTE(v55) = *(v31 + ~*v33);
              }

              else
              {
                v55 = *(v31 + (((*v33 ^ 0xFF) * v54 + (((*v33 ^ 0xFFu) * v54) >> 8) + 1) >> 8)) + ((*v33 * (v54 ^ 0xFF) + ((*v33 * (v54 ^ 0xFFu)) >> 8) + 1) >> 8);
              }

              *v33 = v55;
            }

            ++v35;
            ++v33;
            --v53;
          }

          while (v53);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 5:
        do
        {
          v65 = v5;
          do
          {
            if (*v35)
            {
              v66 = *(v31 + *v35);
              *v33 = (((v66 ^ 0xFF) + v66) * *v33 + ((((v66 ^ 0xFF) + v66) * *v33) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v65;
          }

          while (v65);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 6:
        do
        {
          v98 = v5;
          do
          {
            v99 = *v35;
            if (*v35)
            {
              v100 = *v33;
              if (v100 != 0xFF)
              {
                if (~v100 == 255)
                {
                  LOBYTE(v99) = *(v31 + v99);
                }

                else
                {
                  LODWORD(v99) = v100 + ((*(v31 + v99) * ~v100 + ((*(v31 + v99) * ~v100) >> 8) + 1) >> 8);
                }

                *v33 = v99;
              }
            }

            ++v35;
            ++v33;
            --v98;
          }

          while (v98);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 7:
        do
        {
          v94 = v5;
          do
          {
            v95 = *v35;
            if (*v35)
            {
              v96 = *v33;
              if (v95 == 255)
              {
                v97 = v96 * (v32 ^ 0xFF);
              }

              else
              {
                v97 = v96 * (v95 - ((v95 * v32 + ((v95 * v32) >> 8) + 1) >> 8));
              }

              *v33 = v96 - ((v97 + (v97 >> 8) + 1) >> 8);
            }

            ++v35;
            ++v33;
            --v94;
          }

          while (v94);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 8:
        do
        {
          v69 = v5;
          do
          {
            v70 = *v35;
            if (*v35)
            {
              v71 = *v33;
              if (v70 == 255)
              {
                v72 = v71 * v32;
              }

              else
              {
                v72 = ((v70 * v32 + ((v70 * v32) >> 8) + 1) >> 8) * v71;
              }

              *v33 = v71 - ((v72 + (v72 >> 8) + 1) >> 8);
            }

            ++v35;
            ++v33;
            --v69;
          }

          while (v69);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 9:
        do
        {
          v56 = v5;
          do
          {
            v57 = *v35;
            if (*v35)
            {
              v58 = *(v31 + v57);
              *v33 = ((*v33 ^ 0xFF) * v58 + (v58 + ~v57) * *v33 + (((*v33 ^ 0xFF) * v58 + (v58 + ~v57) * *v33) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v56;
          }

          while (v56);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 10:
        do
        {
          v67 = v5;
          do
          {
            if (*v35)
            {
              v68 = *(v31 + *v35);
              *v33 = ((*v33 ^ 0xFF) * v68 + *v33 * (v68 ^ 0xFF) + (((*v33 ^ 0xFF) * v68 + *v33 * (v68 ^ 0xFFu)) >> 8) + 1) >> 8;
            }

            ++v35;
            ++v33;
            --v67;
          }

          while (v67);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 11:
        do
        {
          v90 = v5;
          do
          {
            if (*v35)
            {
              v91 = *v33 + *(v31 + *v35);
              if (v91 >= 0xFF)
              {
                LOBYTE(v91) = -1;
              }

              *v33 = v91;
            }

            ++v35;
            ++v33;
            --v90;
          }

          while (v90);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 12:
        do
        {
          v92 = v5;
          do
          {
            if (*v35)
            {
              v93 = *v33 + *(v31 + *v35);
              if (v93 >= 0xFF)
              {
                LOBYTE(v93) = -1;
              }

              *v33 = v93;
            }

            ++v35;
            ++v33;
            --v92;
          }

          while (v92);
          v35 += v36;
          v33 += v37;
          --v4;
        }

        while (v4);
        return result;
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
        if (*(v3 + 96))
        {
LABEL_22:
          v38 = -1;
          v39 = v35 & 3;
          if ((v35 & 3) != 0)
          {
            v5 += v39;
            v38 = -1 << (8 * v39);
            v40 = v35 & 3;
            v35 &= 0xFFFFFFFFFFFFFFFCLL;
            v33 -= v40;
          }

          v41 = (v5 + v35) & 3;
          if (((v5 + v35) & 3) != 0)
          {
            v42 = 4 - v41;
            v39 += v42;
            v41 = 0xFFFFFFFF >> (8 * v42);
            v43 = v5 >= 4 ? -1 : v41;
            v38 &= v43;
            if (v5 < 4)
            {
              v41 = 0;
            }
          }

          v44 = v36 - v39;
          v45 = ~v32;
          result = 255;
          v46 = v37 - v39;
          while (1)
          {
            v47 = *v35 & v38;
            v48 = v41;
            v49 = v5 >> 2;
            if (!v47)
            {
              goto LABEL_34;
            }

LABEL_32:
            if (v47 == -1)
            {
              break;
            }

            while (1)
            {
              if (v47)
              {
                *v33 = *(v31 + v47) + ((*v33 * ~*(v31 + v47) + ((*v33 * ~*(v31 + v47)) >> 8) + 1) >> 8);
              }

              if ((v47 & 0xFF00) != 0)
              {
                v33[1] = *(v31 + BYTE1(v47)) + ((v33[1] * ~*(v31 + BYTE1(v47)) + ((v33[1] * ~*(v31 + BYTE1(v47))) >> 8) + 1) >> 8);
              }

              if ((v47 & 0xFF0000) != 0)
              {
                v33[2] = *(v31 + BYTE2(v47)) + ((v33[2] * ~*(v31 + BYTE2(v47)) + ((v33[2] * ~*(v31 + BYTE2(v47))) >> 8) + 1) >> 8);
              }

              if (HIBYTE(v47))
              {
                v51 = *(v31 + (v47 >> 24));
                v50 = v33[3] * (v51 ^ 0xFF);
                goto LABEL_47;
              }

LABEL_34:
              while (1)
              {
                v52 = v49;
                v33 += 4;
                --v49;
                v35 += 4;
                if (v52 < 2)
                {
                  break;
                }

                v47 = *v35;
                if (*v35)
                {
                  goto LABEL_32;
                }
              }

              if (!v48)
              {
                break;
              }

              v48 = 0;
              v47 = *v35 & v41;
            }

            v35 += v44;
            v33 += v46;
            if (!--v4)
            {
              return result;
            }
          }

          *v33 = v32 + ((*v33 * v45 + ((*v33 * v45) >> 8) + 1) >> 8);
          v33[1] = v32 + ((v33[1] * v45 + ((v33[1] * v45) >> 8) + 1) >> 8);
          v33[2] = v32 + ((v33[2] * v45 + ((v33[2] * v45) >> 8) + 1) >> 8);
          v50 = v33[3] * v45;
          LOBYTE(v51) = v32;
LABEL_47:
          v33[3] = v51 + ((v50 + (v50 >> 8) + 1) >> 8);
          goto LABEL_34;
        }

LABEL_104:
        v73 = -1;
        v74 = v35 & 3;
        if ((v35 & 3) != 0)
        {
          v5 += v74;
          v73 = -1 << (8 * v74);
          v75 = v35 & 3;
          v35 &= 0xFFFFFFFFFFFFFFFCLL;
          v33 -= v75;
        }

        v76 = (v5 + v35) & 3;
        if (((v5 + v35) & 3) != 0)
        {
          v77 = 4 - v76;
          v74 += v77;
          v78 = 0xFFFFFFFF >> (8 * v77);
          if (v5 >= 4)
          {
            v76 = v78;
          }

          else
          {
            v76 = 0;
          }

          if (v5 >= 4)
          {
            v78 = -1;
          }

          v73 &= v78;
        }

        v79 = v36 - v74;
        v80 = v37 - v74;
        v81 = vdup_n_s16(v32);
        v82 = vuzp1_s8(v81, v81).u32[0];
        break;
      default:
        return result;
    }

    do
    {
      v83 = *v35 & v73;
      v84 = v5 >> 2;
      result = v76;
      if (!v83)
      {
        goto LABEL_117;
      }

LABEL_115:
      if (v83 == -1)
      {
        *v33 = v82;
        goto LABEL_117;
      }

      while (1)
      {
        if (v83)
        {
          LOBYTE(v86) = v32;
          if (v83 != 255)
          {
            v86 = *(v31 + v83) + (((v83 ^ 0xFF) * *v33 + (((v83 ^ 0xFF) * *v33) >> 8) + 1) >> 8);
          }

          *v33 = v86;
        }

        if (BYTE1(v83))
        {
          LOBYTE(v87) = v32;
          if (BYTE1(v83) != 255)
          {
            v87 = *(v31 + BYTE1(v83)) + (((BYTE1(v83) ^ 0xFF) * v33[1] + (((BYTE1(v83) ^ 0xFF) * v33[1]) >> 8) + 1) >> 8);
          }

          v33[1] = v87;
        }

        if (BYTE2(v83))
        {
          LOBYTE(v88) = v32;
          if (BYTE2(v83) != 255)
          {
            v88 = *(v31 + BYTE2(v83)) + (((BYTE2(v83) ^ 0xFF) * v33[2] + (((BYTE2(v83) ^ 0xFF) * v33[2]) >> 8) + 1) >> 8);
          }

          v33[2] = v88;
        }

        v89 = v83 >> 24;
        if (v89 == 255)
        {
          v33[3] = v32;
        }

        else if (HIBYTE(v83))
        {
          v33[3] = *(v31 + v89) + (((v89 ^ 0xFF) * v33[3] + (((v89 ^ 0xFF) * v33[3]) >> 8) + 1) >> 8);
        }

LABEL_117:
        while (1)
        {
          v85 = v84;
          v33 += 4;
          --v84;
          v35 += 4;
          if (v85 < 2)
          {
            break;
          }

          v83 = *v35;
          if (*v35)
          {
            goto LABEL_115;
          }
        }

        if (!result)
        {
          break;
        }

        result = 0;
        v83 = *v35 & v76;
      }

      v35 += v79;
      v33 += v80;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t RIPObjectRelease(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    if (!*result)
    {
      _CGHandleAssert("RIPObjectRelease", 19, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPClass.c", "RIPObjectValid(object)", "Release of invalid RIP object %p", a6, a7, a8, result);
    }

    v9 = *(*result + 24);
    if (v9)
    {

      return v9();
    }
  }

  return result;
}

void CGGlyphBuilderUnlockBitmaps(void *a1)
{
  for (i = a1[15]; i; i = *i)
  {
    v3 = i[3];
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v3);
    }
  }

  if (a1[16])
  {
    v4 = a1[15];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    a1[15] = 0;
    v6 = a1[14];
    if (v6)
    {
      for (j = 0; j != v6; ++j)
      {
        *(a1[13] + 8 * j) = 0;
      }
    }

    a1[16] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    v9 = a1[11];
    if (v9)
    {
      os_unfair_lock_lock((v9 + 4));
      os_unfair_lock_lock((v8 + 104));
      v10 = *(v8 + 96);
      os_unfair_lock_unlock((v8 + 104));
      CGFontStrikeRelease(v8);
      os_unfair_lock_unlock((v9 + 4));
      if (v10)
      {
        if (atomic_fetch_add_explicit((v9 + 16), v10, memory_order_relaxed) + v10 > *(v9 + 8))
        {
          os_unfair_lock_lock((v9 + 4));
          v12 = (v9 + 40);
          v11 = *(v9 + 40);
          if (v11)
          {
            v13 = 0;
            do
            {
              v13 += CGFontStrikeGetSize(*v11);
              v11 = v11[1];
            }

            while (v11);
          }

          else
          {
            v13 = 0;
          }

          if (v13 >= *(v9 + 8))
          {
            if (!*v12)
            {
              goto LABEL_31;
            }

            v14 = 0;
            v15 = *v12;
            do
            {
              ++v14;
              v15 = *(v15 + 8);
            }

            while (v15);
            v16 = list_sort_1(*v12, v14);
            *(v9 + 40) = v16;
            if (v16)
            {
              v17 = v16;
              v18 = 0;
              v19 = 7 * *(v9 + 8) / 0xAuLL;
              while (1)
              {
                Size = CGFontStrikeGetSize(*v17);
                v13 = Size + v18;
                if (Size + v18 > v19)
                {
                  break;
                }

                v21 = *v12;
                v22 = *(v21 + 8);
                v12 = (v21 + 8);
                v17 = v22;
                v18 += Size;
                if (!v22)
                {
                  goto LABEL_39;
                }
              }

              v23 = v17;
              do
              {
                v24 = *v23;
                if (*v23)
                {
                  v25 = (*v23 + 8);
                }

                else
                {
                  v25 = 0;
                }

                CFDictionaryRemoveValue(*(v9 + 32), v25);
                CGFontStrikeRelease(v24);
                v23 = v23[1];
              }

              while (v23);
              do
              {
                v26 = v17[1];
                free(v17);
                v17 = v26;
              }

              while (v26);
              *v12 = 0;
              v13 = v18;
            }

            else
            {
LABEL_31:
              v13 = 0;
            }
          }

LABEL_39:
          *(v9 + 16) = v13;
          os_unfair_lock_unlock((v9 + 4));
        }
      }
    }

    a1[12] = 0;
  }
}

void CGFontStrikeRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    for (i = 0; i != 256; ++i)
    {
      v3 = a1[i + 14];
      if (v3)
      {
        for (j = 0; j != 256; ++j)
        {
          v5 = v3[j];
          if (v5)
          {
            do
            {
              v6 = *v5;
              if (*v5 && atomic_fetch_add_explicit(v6, 0xFFFFFFFF, memory_order_relaxed) == 1)
              {
                free(v6);
              }

              v5 = *(v5 + 8);
            }

            while (v5);
            v7 = v3[j];
            if (v7)
            {
              do
              {
                v8 = v7[1];
                free(v7);
                v7 = v8;
              }

              while (v8);
            }
          }
        }

        free(v3);
      }
    }

    free(a1);
  }
}

CFTypeRef *CGGlyphBuilderRelease(CFTypeRef *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      v3 = CFGetTypeID(*result);
      if (_block_invoke_once_3400 != -1)
      {
        dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
      }

      if (v3 == CGFontGetTypeID_font_type_id)
      {
        CFRelease(v2);
      }
    }

    v4 = v1[15];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = v1[13];
    v1[13] = 0;
    if (v6)
    {
      operator delete(v6);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

uint64_t CGGStackRestore(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  if (v9 == a1 || (v10 = v9[1], v10 == a1))
  {
    CGPostError("%s: CG GState restored too many times", a2, a3, a4, a5, a6, a7, a8, "CGGStackRestore");
  }

  else
  {
    v11 = *v9;
    *(v11 + 8) = v10;
    *v10 = v11;
    *v9 = v9;
    v9[1] = v9;
    CGGStateRelease(v9);
  }

  return a1[1];
}

void CGContextResetState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStackReset(*(a1 + 104));
      v9 = *(a1 + 104);
      v10 = *(v9 + 8);
      if (v10 == v9)
      {
        v11 = CGGStateCreate();
        v12 = *(v9 + 8);
        *(v9 + 8) = v11;
        *v11 = v9;
        *v12 = v11;
        *(v11 + 1) = v12;
        v10 = *(v9 + 8);
      }

      *(a1 + 96) = v10;
      CGRenderingStateReset(*(a1 + 112));
      *(a1 + 120) = CGAffineTransformIdentity;
      v13 = *(a1 + 168);
      if (v13)
      {
        CFRelease(v13);
      }

      *(a1 + 168) = 0;
      return;
    }

    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  handle_invalid_context("CGContextResetState", v14, a3, a4, a5, a6, a7, a8);
}

void dl_Finalize(char *a1)
{
  *(a1 + 2) = &unk_1EF23F3D0;
  v4 = (a1 + 688);
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](&v4);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 84));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 81));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 78));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 75));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 72));
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table((a1 + 528));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 64));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 61));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 58));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 55));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 52));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 49));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 46));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 43));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 40));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 37));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 34));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(a1 + 31));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }

  v3 = *(a1 + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

void std::__shared_weak_count::__release_shared[abi:fe200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<TextLine>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<TextLine>>::clear[abi:fe200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
    }
  }

  a1[1] = v2;
}

void CG::DisplayListEntryGlyphs::~DisplayListEntryGlyphs(void **this)
{
  *this = &unk_1EF23ACC8;
  free(this[29]);
  free(this[30]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23ACC8;
  free(this[29]);
  free(this[30]);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntry const*,std::shared_ptr<CG::DisplayListEntry const>::__shared_ptr_default_delete<CG::DisplayListEntry const,CG::DisplayListEntry const>,std::allocator<CG::DisplayListEntry>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateFill *,std::shared_ptr<CG::DisplayListEntryStateFill const>::__shared_ptr_default_delete<CG::DisplayListEntryStateFill const,CG::DisplayListEntryStateFill>,std::allocator<CG::DisplayListEntryStateFill>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListEntryStateDrawing *,std::shared_ptr<CG::DisplayListEntryStateDrawing const>::__shared_ptr_default_delete<CG::DisplayListEntryStateDrawing const,CG::DisplayListEntryStateDrawing>,std::allocator<CG::DisplayListEntryStateDrawing>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListResourceColorSpace::~DisplayListResourceColorSpace(CGColorSpaceRef *this)
{
  *this = &unk_1EF23F580;
  CGColorSpaceRelease(this[2]);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23F580;
  CGColorSpaceRelease(this[2]);
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColorSpace *,std::shared_ptr<CG::DisplayListResourceColorSpace>::__shared_ptr_default_delete<CG::DisplayListResourceColorSpace,CG::DisplayListResourceColorSpace>,std::allocator<CG::DisplayListResourceColorSpace>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceColor *,std::shared_ptr<CG::DisplayListResourceColor>::__shared_ptr_default_delete<CG::DisplayListResourceColor,CG::DisplayListResourceColor>,std::allocator<CG::DisplayListResourceColor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CG::DisplayListResourceClip *,std::shared_ptr<CG::DisplayListResourceClip>::__shared_ptr_default_delete<CG::DisplayListResourceClip,CG::DisplayListResourceClip>,std::allocator<CG::DisplayListResourceClip>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CG::DisplayListShape::~DisplayListShape(CG::DisplayListShape *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 == &the_empty_shape;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  if (*this)
  {
    free(*this);
  }

  std::mutex::~mutex((this + 56));
}

BOOL CGImageGetHeadroom(CGImage *a1, float *a2)
{
  v5 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v5);
  if (a2)
  {
    *a2 = HeadroomInfo;
  }

  return v5 == 1;
}

uint64_t CGImageTextureDataCreate(uint64_t a1, const void *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2 && a4)
  {
    if (_block_invoke_once_9015 != -1)
    {
      dispatch_once(&_block_invoke_once_9015, &__block_literal_global_33);
    }

    Instance = CGTypeCreateInstance(CGImageTextureDataGetTypeID_texture_data_type_id, 128, a3, a4, a5, a6, a7, a8);
    v8 = Instance;
    if (Instance)
    {
      *(Instance + 24) = a3;
      *(Instance + 16) = CFRetain(a2);
      v13 = a4[1];
      *(v8 + 32) = *a4;
      *(v8 + 48) = v13;
      v26 = 0;
      valuePtr = 0;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 136) = 0;
      Value = CFDictionaryGetValue(a2, @"width");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
        *(v8 + 72) = valuePtr;
      }

      v15 = CFDictionaryGetValue(a2, @"height");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberLongType, &valuePtr);
        *(v8 + 80) = valuePtr;
      }

      v16 = CFDictionaryGetValue(a2, @"rowBytes");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberLongType, &valuePtr);
        *(v8 + 88) = valuePtr;
      }

      v17 = CFDictionaryGetValue(a2, @"mipmapLevelCount");
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberLongType, &valuePtr);
        *(v8 + 120) = valuePtr;
      }

      v18 = CFDictionaryGetValue(a2, @"faceCount");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberLongType, &valuePtr);
        *(v8 + 128) = valuePtr;
      }

      v19 = CFDictionaryGetValue(a2, @"colorSpace");
      if (v19)
      {
        *(v8 + 96) = CFRetain(v19);
      }

      v20 = CFDictionaryGetValue(a2, @"pixelFormatMetal");
      if (v20)
      {
        CFNumberGetValue(v20, kCFNumberSInt64Type, &v26);
        *(v8 + 104) = v26;
      }

      v21 = CFDictionaryGetValue(a2, @"pixelFormatGL");
      if (v21)
      {
        CFNumberGetValue(v21, kCFNumberSInt64Type, &v26);
        *(v8 + 112) = v26;
      }

      v22 = CFDictionaryGetValue(a2, @"isCompressed");
      v23 = MEMORY[0x1E695E4D0];
      if (v22)
      {
        *(v8 + 136) = v22 == *MEMORY[0x1E695E4D0];
      }

      v24 = CFDictionaryGetValue(a2, @"supportsTiledLayout");
      if (v24)
      {
        *(v8 + 137) = v24 == *v23;
      }
    }
  }

  return v8;
}

uint64_t CGImageTextureDataGetOffsetWithBlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a5)
    {
      v6 = result;
      v7 = *(result + 40);
      if (v7)
      {
        v8 = a2;
        v9 = *(result + 72);
        v10 = *(result + 80);
        v11 = *(result + 88);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        v12 = v7(*(result + 24), a2, a3, &v17, &v16, &v15, a4);
        if (v12)
        {
          v13 = v12;
          ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
          if (v15)
          {
            ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
            v14 = v15;
          }

          else
          {
            v14 = 0;
          }

          (*(a5 + 16))(a5, v9 >> v8, v10 >> v8, v11 >> v8, v13, v17, v16, v14);
        }

        return (*(v6 + 48))(*(v6 + 24));
      }
    }
  }

  return result;
}

uint64_t get_average_light_level_nits(CGImage *a1, char a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace || CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    valuePtr = 0;
    cf = 0;
    if (evaluate_average_nits_predicate != -1)
    {
      dispatch_once(&evaluate_average_nits_predicate, &__block_literal_global_382);
    }

    if (!evaluate_average_nits_f(a1, 0, &cf))
    {
      if (!cf)
      {
LABEL_16:
        v23 = 0;
        v15 = calculate_image_stats(a1, &v23);
        v16 = v23;
        if (!v15)
        {
          v16 = 0;
        }

        valuePtr = v16;
LABEL_19:
        LOWORD(v6) = valuePtr;
        return v6;
      }

      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(cf, @"kCGContentBrightness");
        if (CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr) == 1)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_19;
        }

        CGLog(2, "Failiure to get avergae nits from CGImageComputeImageStatistics", v9, v10, v11, v12, v13, v14, v22);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_16;
  }

  v5 = *(a1 + 26);
  if (!v5)
  {
    v17 = *(a1 + 28);
    if (v17)
    {
      Property = CGPropertiesGetProperty(v17, @"kCGImageContentAverageLightLevelNits");
      if (Property)
      {
        v19 = Property;
        v20 = CFGetTypeID(Property);
        if (v20 == CFNumberGetTypeID())
        {
          LODWORD(cf) = 0;
          CFNumberGetValue(v19, kCFNumberIntType, &cf);
          LOWORD(v6) = cf;
          return v6;
        }
      }
    }

LABEL_24:
    LOWORD(v6) = 0;
    return v6;
  }

  return *(v5 + 136);
}

void __CGFontGetVTable_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  string = 0;
  if (copy_string_property("CGFontLibrary", copy_local_domain_value, &string))
  {
    v0 = string == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    verbose = 1;
    if (CFStringGetFileSystemRepresentation(string, buffer, 1025))
    {
      library = load_library(buffer);
      CFRelease(string);
      if (library)
      {
        goto LABEL_11;
      }
    }

    else
    {
      CFRelease(string);
    }
  }

  v2 = load_library("CGXType");
  if (v2)
  {
    library = v2;
LABEL_11:
    CGFontGetVTable_vtable = (library)();
    if (CGFontGetVTable_vtable)
    {
      return;
    }
  }

  CGPostError("No available font implementation.", v3, v4, v5, v6, v7, v8, v9, v10);
}

void *CGFontCreateWithPathAndName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v10 = CGFontCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v10;
  if (v10)
  {
    VTable = CGFontGetVTable(v10, v11, v12, v13, v14, v15, v16, v17);
    v20 = (*(VTable + 72))(a1, a2);
    v18[14] = v20;
    if (!v20)
    {
      CFRelease(v18);
      return 0;
    }
  }

  return v18;
}

uint64_t copy_string_property(const char *a1, const void *(*a2)(const char *), const __CFString **a3)
{
  result = a2(a1);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFStringGetTypeID())
    {
      if (a3)
      {
        *a3 = v5;
      }

      return 1;
    }

    else
    {
      CFRelease(v5);
      return 0;
    }
  }

  return result;
}

char *load_library(uint64_t a1)
{
  Function = CGLibraryLoadFunction(a1, "cg_font_library_link_symbol");
  if (Function && verbose == 1)
  {
  }

  return Function;
}

uint64_t CGFontGetVTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGFontGetVTable_predicate != -1)
  {
    dispatch_once(&CGFontGetVTable_predicate, &__block_literal_global_22164);
  }

  result = CGFontGetVTable_vtable;
  if (!CGFontGetVTable_vtable)
  {
    _CGHandleAssert("CGFontGetVTable", 85, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontVTable.c", "vtable != NULL", "missing vtable", a6, a7, a8, vars0);
  }

  return result;
}

CFStringRef copy_local_domain_value(const char *a1)
{
  if (copy_local_domain_value(char const*)::once != -1)
  {
    dispatch_once_f(&copy_local_domain_value(char const*)::once, 0, load_allow_debugging_defaults);
  }

  if (allow_debugging_defaults != 1)
  {
    return 0;
  }

  v2 = getenv(a1);
  if (!v2)
  {
    if (a1)
    {
      v4 = CFStringCreateWithCString(0, a1, 0x600u);
      if (v4)
      {
        v5 = v4;
        v6 = *MEMORY[0x1E695E8B8];
        v7 = *MEMORY[0x1E695E898];
        v8 = CFPreferencesCopyValue(v4, *MEMORY[0x1E695E8A8], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
        if (!v8)
        {
          v8 = CFPreferencesCopyValue(v5, *MEMORY[0x1E695E890], v6, v7);
          if (!v8)
          {
            v8 = CFPreferencesCopyValue(v5, @"com.apple.CoreGraphics", v6, v7);
          }
        }

        v9 = v8;
        CFRelease(v5);
        return v9;
      }
    }

    return 0;
  }

  return CFStringCreateWithCString(0, v2, 0x600u);
}

void load_allow_debugging_defaults(void *a1)
{
  v1 = getenv("CGAllowDebuggingDefaults");
  if (v1)
  {
    v3 = 0;
    allow_debugging_defaults = sscanf(v1, "%i", &v3) > 0;
  }

  else
  {
    v2 = CFPreferencesCopyValue(@"CGAllowDebuggingDefaults", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if ((get_BOOL(v2, &allow_debugging_defaults) & 1) == 0)
    {
      allow_debugging_defaults = 0;
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t get_BOOL(uint64_t result, BOOL *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      if (a2)
      {
        v5 = CFBooleanGetValue(v3) == 0;
        goto LABEL_5;
      }

      return 1;
    }

    if (v4 == CFStringGetTypeID())
    {
      if (CFStringCompare(v3, @"Yes", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"True", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"1", 1uLL) == kCFCompareEqualTo)
      {
        result = 1;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      }

      if (CFStringCompare(v3, @"No", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"False", 1uLL) == kCFCompareEqualTo || CFStringCompare(v3, @"0", 1uLL) == kCFCompareEqualTo)
      {
        if (!a2)
        {
          return 1;
        }

        LOBYTE(result) = 0;
        goto LABEL_20;
      }
    }

    if (v4 != CFNumberGetTypeID())
    {
      return 0;
    }

    valuePtr = 0;
    result = CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    if (result)
    {
      if (a2)
      {
        v5 = valuePtr == 0;
LABEL_5:
        LOBYTE(result) = !v5;
LABEL_20:
        *a2 = result;
      }

      return 1;
    }
  }

  return result;
}

char *CGLibraryLoadFunction(uint64_t a1, char *__s1)
{
  result = 0;
  if (a1 && __s1)
  {
    v5 = &links;
    v6 = 6;
    while (strcmp(__s1, *v5))
    {
      v5 += 2;
      if (!--v6)
      {
        return 0;
      }
    }

    return v5[1];
  }

  return result;
}