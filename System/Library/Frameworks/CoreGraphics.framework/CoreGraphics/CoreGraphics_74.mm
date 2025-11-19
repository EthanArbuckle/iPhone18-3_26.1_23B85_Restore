void *text_layout_reset(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      text_chunk_release(v2[1]);
      v2 = *v2;
    }

    while (v2);
    result = *v1;
    if (*v1)
    {
      do
      {
        v3 = *result;
        free(result);
        result = v3;
      }

      while (v3);
    }
  }

  *v1 = 0;
  return result;
}

void text_chunk_release(void **a1)
{
  if (a1)
  {
    free(a1[14]);
    free(a1[15]);
    free(a1[16]);
    free(a1[17]);

    free(a1);
  }
}

void CGPDFTextLayoutAppendString(uint64_t *a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (a1)
  {
    v7 = text_chunk_create(a1, a2);
    if (v7)
    {
      v8 = v7;
      if (*(v7 + 17) == 1)
      {
        text_chunk_append_cids(v7, a2, a3);
        if (!a4)
        {
          return;
        }
      }

      else
      {
        text_chunk_append_simple(v7, a2, a3);
        if (!a4)
        {
          return;
        }
      }

      v9 = v8[6];
      if (*(v8 + 16) == 1)
      {
        v10 = v9 * v8[7] * v8[3];
        v11 = 0.0;
      }

      else
      {
        v11 = v9 * v8[4];
        v10 = 0.0;
      }

      *a4 = v10;
      a4[1] = v11;
    }
  }
}

void *text_chunk_create(uint64_t *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B00400ECABDDFuLL);
  __CFSetLastAllocationEventName();
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = *(a2 + 48);
  *(v4 + 5) = v5;
  v6 = *(a2 + 56);
  *(v4 + 6) = v6;
  if (!v5 || v6 == 0.0)
  {
    text_chunk_release(v4);
    return 0;
  }

  else
  {
    *(v4 + 7) = *(a2 + 16) / 100.0;
    CMap = CGPDFFontGetCMap(v5);
    if (CMap)
    {
      v8 = *(*(CMap + 16) + 24) == 0;
    }

    else
    {
      v8 = 1;
    }

    *(v4 + 16) = v8;
    *(v4 + 17) = CMap != 0;
    v9 = *(v4 + 6);
    v10 = *(a2 + 120);
    v11 = *(a2 + 136);
    v12 = vaddq_f64(*(a2 + 152), vmlaq_f64(vmulq_n_f64(v11, *(a2 + 32)), 0, v10));
    *(v4 + 4) = vmlaq_n_f64(vmulq_f64(v11, 0), v10, v9 * *(v4 + 7));
    *(v4 + 5) = vmlaq_f64(vmulq_n_f64(v11, v9), 0, v10);
    *(v4 + 6) = v12;
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    v13 = *a1;
    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    *v14 = v13;
    v14[1] = v4;
    *a1 = v14;
  }

  return v4;
}

void text_chunk_append_cids(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*(a3 + 24))
    {
      decrypt_string(a3);
    }

    v6 = *(a3 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = text_chunk_require_size(a1, a1[1] + v6);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7, v8);
    if (v6 == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = &v57 - v9;
    }

    v58 = &v57 - v9;
    v59 = v10;
    if (v6 + 1 >= 0x66)
    {
      v11 = malloc_type_malloc(v6, 0xAAE14913uLL);
    }

    v12 = (a1[15] + 2 * a1[1]);
    CMap = CGPDFFontGetCMap(a1[5]);
    if (a3)
    {
      if (*(a3 + 24))
      {
        decrypt_string(a3);
      }

      v15 = (a3 + 80);
    }

    else
    {
      v15 = 0;
    }

    CIDsForText = CGPDFCMapGetCIDsForText(CMap, v15, v6, v12, v11, v14);
    v17 = a1[1];
    v18 = a1[16];
    v19 = a1[17];
    v20 = (v18 + 16 * v17);
    v21 = (v19 + 8 * v17);
    *&v22 = a1[3];
    v63 = v22;
    *&v22 = a1[4];
    v62 = v22;
    v23 = CGPDFFontGetCMap(*(a2 + 48));
    v60 = a1;
    v57 = CIDsForText;
    if (v23 && *(*(v23 + 16) + 24))
    {
      v24 = *(a2 + 48);
      v64 = 0uLL;
      v25 = (v24 + 7);
      if (!v24)
      {
        v25 = &CGAffineTransformIdentity;
      }

      a = v25->a;
      v27 = *(a2 + 56);
      v28 = *a2;
      v29 = *(a2 + 8);
      Advances = CGPDFFontGetAdvances(v24);
      if (CIDsForText)
      {
        v31 = Advances;
        v32 = v28 / v27;
        v61 = vdupq_lane_s64(COERCE__INT64(-a), 0);
        v33 = v11;
        v34 = v29 / v27;
        v35 = v62;
        do
        {
          v62 = v35;
          v37 = *v12++;
          v36 = v37;
          if (v19)
          {
            *v21 = a * CGPDFAdvancesGetHorizontalAdvance(v31, v36);
          }

          VerticalAdvance = CGPDFAdvancesGetVerticalAdvance(v31, v36, &v64);
          v35 = v62;
          if (v18)
          {
            *&v39.f64[0] = v63;
            *&v39.f64[1] = v62;
            *v20 = vmlaq_f64(v39, v64, v61);
          }

          *&v35 = *&v35 + v32 + a * VerticalAdvance;
          if (v11 && *v33)
          {
            *&v35 = v34 + *&v35;
          }

          ++v33;
          ++v20;
          ++v21;
          --CIDsForText;
        }

        while (CIDsForText);
      }

      else
      {
        *&v35 = v62;
      }

      v56 = v60;
      v60[3] = v63;
      v56[4] = v35;
    }

    else
    {
      v40 = *(a2 + 48);
      v41 = (v40 + 7);
      if (!v40)
      {
        v41 = &CGAffineTransformIdentity;
      }

      v42 = v41->a;
      v43 = *(a2 + 56);
      v44 = *a2;
      v45 = *(a2 + 8);
      v46 = CGPDFFontGetAdvances(v40);
      if (CIDsForText)
      {
        v47 = v46;
        v48 = CIDsForText;
        v49 = v44 / v43;
        v50 = &v20->f64[1];
        v51 = v11;
        v52 = v45 / v43;
        v53 = v62;
        v54 = v63;
        do
        {
          if (v18)
          {
            *(v50 - 1) = v54;
            *v50 = v53;
          }

          v63 = v54;
          v55 = v42 * CGPDFAdvancesGetHorizontalAdvance(v47, *v12);
          if (v19)
          {
            *v21 = v55;
          }

          *(&v54 + 1) = *(&v63 + 1);
          *&v54 = *&v63 + v49 + v55;
          if (v11 && *v51)
          {
            *&v54 = v52 + *&v54;
          }

          v53 = v62;
          ++v51;
          ++v21;
          ++v12;
          v50 += 2;
          --v48;
        }

        while (v48);
      }

      else
      {
        v53 = v62;
        *&v54 = v63;
      }

      v56 = v60;
      v60[3] = v54;
      v56[4] = v53;
    }

    v56[1] += v57;
    if (v11 != v58)
    {
      free(v11);
    }
  }
}

void text_chunk_append_simple(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (text_chunk_require_size(a1, *(a1 + 8)))
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_10;
    }

LABEL_23:
    abort();
  }

  if (*(a3 + 24))
  {
    decrypt_string(a3);
  }

  v6 = *(a3 + 72);
  if ((text_chunk_require_size(a1, *(a1 + 8) + v6) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*(a3 + 24))
  {
    decrypt_string(a3);
  }

  v7 = (a3 + 80);
LABEL_10:
  memmove((*(a1 + 112) + *(a1 + 8)), v7, v6);
  v8 = *(a1 + 8);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v13 = *(a2 + 48);
  v14 = (v13 + 7);
  if (!v13)
  {
    v14 = &CGAffineTransformIdentity;
  }

  a = v14->a;
  v16 = *(a2 + 56);
  v17 = *a2;
  v18 = *(a2 + 8);
  Advances = CGPDFFontGetAdvances(v13);
  if (v6)
  {
    v20 = Advances;
    v21 = (v10 + 8 * v8);
    v22 = v17 / v16;
    v23 = (v9 + 16 * v8 + 8);
    v24 = v6;
    v25 = v18 / v16;
    do
    {
      if (v9)
      {
        *(v23 - 1) = v12;
        *v23 = v11;
      }

      v26 = *v7;
      v27 = a * CGPDFAdvancesGetHorizontalAdvance(v20, *v7);
      if (v10)
      {
        *v21 = v27;
        v26 = *v7;
      }

      v28 = v12 + v22 + v27;
      if (v26 == 32)
      {
        v12 = v25 + v28;
      }

      else
      {
        v12 = v28;
      }

      ++v21;
      ++v7;
      v23 += 2;
      --v24;
    }

    while (v24);
  }

  *(a1 + 24) = v12;
  *(a1 + 32) = v11;
  *(a1 + 8) += v6;
}

uint64_t text_chunk_require_size(uint64_t a1, unint64_t a2)
{
  if (*a1 >= a2)
  {
    return 1;
  }

  v3 = a2 + 20;
  result = malloc_type_realloc(*(a1 + 112), a2 + 20, 0x100004077774924uLL);
  if (result)
  {
    *(a1 + 112) = result;
    result = malloc_type_realloc(*(a1 + 120), 2 * v3, 0x1000040BDFB0063uLL);
    if (result)
    {
      *(a1 + 120) = result;
      result = malloc_type_realloc(*(a1 + 128), 16 * v3, 0x1000040451B5BE8uLL);
      if (result)
      {
        *(a1 + 128) = result;
        result = malloc_type_realloc(*(a1 + 136), 8 * v3, 0x100004000313F17uLL);
        if (result)
        {
          *(a1 + 136) = result;
          *a1 = v3;
          return 1;
        }
      }
    }
  }

  return result;
}

void CGPDFTextLayoutAppendStrings(uint64_t *a1, uint64_t a2, CGPDFArray *a3, double *a4)
{
  if (a1)
  {
    v7 = text_chunk_create(a1, a2);
    if (v7)
    {
      v8 = v7;
      if (a3)
      {
        v9 = *(a3 + 3) - *(a3 + 2);
        if (v9)
        {
          v10 = 0;
          v11 = v9 >> 3;
          v16 = 0;
          value = 0.0;
          do
          {
            if (CGPDFArrayGetString(a3, v10, &v16))
            {
              if (*(v8 + 17) == 1)
              {
                text_chunk_append_cids(v8, a2, v16);
              }

              else
              {
                text_chunk_append_simple(v8, a2, v16);
              }
            }

            else if (CGPDFArrayGetNumber(a3, v10, &value))
            {
              v12 = value / 1000.0;
              if (*(v8 + 16) == 1)
              {
                *(v8 + 24) = *(v8 + 24) - v12;
              }

              else
              {
                *(v8 + 32) = *(v8 + 32) - v12;
              }
            }

            ++v10;
          }

          while (v11 != v10);
        }
      }

      if (a4)
      {
        v13 = *(v8 + 48);
        if (*(v8 + 16) == 1)
        {
          v14 = v13 * *(v8 + 56) * *(v8 + 24);
          v15 = 0.0;
        }

        else
        {
          v15 = v13 * *(v8 + 32);
          v14 = 0.0;
        }

        *a4 = v14;
        a4[1] = v15;
      }
    }
  }
}

void *CGPDFTextLayoutDrawGlyphs(void *result, void (*a2)(uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, char *, char *, void, uint64_t), uint64_t a3, __n128 a4)
{
  if (result && a2)
  {
    v5 = result;
    v6 = *result;
    if (*result)
    {
      v8 = 0;
      do
      {
        v9 = v6;
        v6 = *v6;
        *v9 = v8;
        v8 = v9;
      }

      while (v6);
      *result = v9;
      do
      {
        v10 = v9[1];
        if (*(v10 + 17) == 1)
        {
          cid_draw(v10, a2, a3, a4);
        }

        else
        {
          simple_draw(v10, a2, a3, a4);
        }

        v9 = *v9;
      }

      while (v9);
    }

    return text_layout_reset(v5);
  }

  return result;
}

void cid_draw(uint64_t a1, void (*a2)(uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, char *, char *, void, uint64_t), uint64_t a3, __n128 a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](2 * *(a1 + 8), a4);
  v10 = &v24 - v9;
  if (v8 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = &v24 - v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000066)
  {
    v11 = malloc_type_malloc(v7, 0x7C89C14uLL);
  }

  CIDToGlyphMap = CGPDFFontGetCIDToGlyphMap(*(a1 + 40));
  if (CIDToGlyphMap)
  {
    CGFontIndexMapGetValues(CIDToGlyphMap, *(a1 + 120), *(a1 + 8), v11);
    v13 = *(a1 + 40);
    v14 = *(a1 + 128);
    v15 = *(a1 + 136);
    v16 = *(a1 + 120);
    v17 = *(a1 + 8);
    v18 = *(a1 + 80);
    v24 = *(a1 + 64);
    v25 = v18;
    v19 = *(a1 + 96);
LABEL_10:
    v26 = v19;
    a2(a3, v13, &v24, v14, v15, v11, v16, 0, v17);
    goto LABEL_11;
  }

  Font = CGPDFFontGetFont(*(a1 + 40));
  GlyphsForCIDs = CGFontGetGlyphsForCIDs(Font, *(a1 + 120), *(a1 + 8), v11);
  v13 = *(a1 + 40);
  v14 = *(a1 + 128);
  v15 = *(a1 + 136);
  v16 = *(a1 + 120);
  v17 = *(a1 + 8);
  if (GlyphsForCIDs)
  {
    v22 = *(a1 + 80);
    v24 = *(a1 + 64);
    v25 = v22;
    v19 = *(a1 + 96);
    goto LABEL_10;
  }

  v23 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v23;
  v26 = *(a1 + 96);
  a2(a3, v13, &v24, v14, v15, v16, v16, 0, v17);
LABEL_11:
  if (v11 != v10)
  {
    free(v11);
  }
}

void simple_draw(uint64_t a1, void (*a2)(uint64_t, uint64_t, _OWORD *, uint64_t, uint64_t, char *, void, uint64_t, uint64_t), uint64_t a3, __n128 a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1EEE9AC00](2 * *(a1 + 8), a4);
  v10 = v22 - v9;
  if (v8 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = v22 - v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 - 0x7FFFFFFFFFFFFFFFLL >= 0x8000000000000066)
  {
    v11 = malloc_type_malloc(v7, 0xCC57DB92uLL);
  }

  Encoding = CGPDFFontGetEncoding(*(a1 + 40));
  GlyphVector = CGPDFEncodingGetGlyphVector(Encoding);
  v14 = *(a1 + 8);
  if (GlyphVector)
  {
    if (v14)
    {
      v15 = 0;
      v16 = *(a1 + 112);
      do
      {
        *&v11[2 * v15] = *(GlyphVector + *(v16 + v15));
        ++v15;
      }

      while (v14 != v15);
    }
  }

  else if (v14)
  {
    bzero(v11, 2 * v14);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  v20 = *(a1 + 112);
  v21 = *(a1 + 80);
  v22[0] = *(a1 + 64);
  v22[1] = v21;
  v22[2] = *(a1 + 96);
  a2(a3, v17, v22, v18, v19, v11, 0, v20, v14);
  if (v11 != v10)
  {
    free(v11);
  }
}

uint64_t blt_bitmap_copy_XXXX32(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  do
  {
    v11 = a7 + 4 * a10 * a8;
    v12 = result;
    v13 = a9;
    if (result > 1)
    {
      do
      {
        v14 = *(v11 + 4 * v13);
        if (v13 + 1 < a5)
        {
          v15 = v13 + 1;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(v11 + 4 * v15);
        *a3 = v14;
        a3[1] = v16;
        a3 += 2;
        if (v15 + 1 < a5)
        {
          v13 = v15 + 1;
        }

        else
        {
          v13 = 0;
        }

        v17 = v12 > 3;
        v12 -= 2;
      }

      while (v17);
    }

    if (v12 >= 1)
    {
      *a3++ = *(v11 + 4 * v13);
    }

    a3 += a4 - result;
    if (a10 + 1 < a6)
    {
      ++a10;
    }

    else
    {
      a10 = 0;
    }

    v17 = a2-- <= 1;
  }

  while (!v17);
  return result;
}

uint64_t blt_bitmap_blend_XXXA32(uint64_t result, uint64_t a2, uint32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a4 - result;
  do
  {
    v12 = a7 + 4 * a10 * a8;
    v13 = a9;
    v14 = result;
    if (result > 1)
    {
      do
      {
        v15 = *(v12 + 4 * v13);
        if (v13 + 1 < a5)
        {
          v16 = v13 + 1;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v12 + 4 * v16);
        if ((v17 & v15) == 0xFF)
        {
          a3->i32[0] = v15;
          a3->i32[1] = v17;
        }

        else if (v17 | v15)
        {
          v18.i16[0] = a3->u8[0];
          v18.i16[1] = BYTE2(a3->u32[0]);
          v18.i16[2] = BYTE4(*a3);
          v18.i16[3] = BYTE6(*a3);
          v19.i32[0] = v15;
          v19.i32[1] = *(v12 + 4 * v16);
          v20 = veor_s8(v19, 0xFF000000FFLL);
          v21 = vmul_s32((*&vshr_n_u32(*a3, 8uLL) & 0xFFFF00FFFFFF00FFLL), v20);
          v22 = vmul_s32(v18, v20);
          *a3 = vadd_s32((*&vshr_n_u32(vadd_s32(vadd_s32(v22, 0x1000100010001), (*&vshr_n_u32(v22, 8uLL) & 0xFFFF00FFFFFF00FFLL)), 8uLL) & 0xFFFF00FFFFFF00FFLL), vadd_s32(__PAIR64__(v17, v15), (*&vadd_s32(vadd_s32(v21, 0x1000100010001), (*&vshr_n_u32(v21, 8uLL) & 0xFFFF00FFFFFF00FFLL)) & 0xFF00FF00FF00FF00)));
        }

        ++a3;
        if (v16 + 1 < a5)
        {
          v13 = v16 + 1;
        }

        else
        {
          v13 = 0;
        }

        v23 = v14 > 3;
        v14 -= 2;
      }

      while (v23);
    }

    if (v14 >= 1)
    {
      v24 = *(v12 + 4 * v13);
      if (v24)
      {
        if (v24 != 255)
        {
          v25 = ~v24;
          v24 += ((((a3->i32[0] & 0xFF00FF) * v25 + 65537 + ((((a3->i32[0] & 0xFF00FFu) * v25) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((a3->i32[0] >> 8) & 0xFF00FF) * v25 + 65537 + (((((a3->i32[0] >> 8) & 0xFF00FF) * v25) >> 8) & 0xFF00FF)) & 0xFF00FF00);
        }

        a3->i32[0] = v24;
      }

      a3 = (a3 + 4);
    }

    a3 = (a3 + 4 * v11);
    if (a10 + 1 < a6)
    {
      ++a10;
    }

    else
    {
      a10 = 0;
    }

    v23 = a2-- <= 1;
  }

  while (!v23);
  return result;
}

uint64_t blt_bitmap_blend_AXXX32(uint64_t result, uint64_t a2, uint32x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  do
  {
    v11 = a7 + 4 * a10 * a8;
    v12 = a9;
    v13 = result;
    if (result > 1)
    {
      do
      {
        v14 = *(v11 + 4 * v12);
        if (v12 + 1 < a5)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = 0;
        }

        v16 = *(v11 + 4 * v15);
        v17 = vshr_n_u32(__PAIR64__(v16, v14), 0x18uLL);
        if ((v17.i32[1] & v17.i32[0]) == 255)
        {
          a3->i32[0] = v14;
          a3->i32[1] = v16;
        }

        else if (v17)
        {
          v18 = veor_s8(v17, 0xFF000000FFLL);
          v19.i16[0] = a3->u8[0];
          v19.i16[1] = BYTE2(a3->u32[0]);
          v19.i16[2] = BYTE4(*a3);
          v19.i16[3] = BYTE6(*a3);
          v20 = vmul_s32((*&vshr_n_u32(*a3, 8uLL) & 0xFFFF00FFFFFF00FFLL), v18);
          v21 = vmul_s32(v19, v18);
          *a3 = vadd_s32((*&vshr_n_u32(vadd_s32(vadd_s32(v21, 0x1000100010001), (*&vshr_n_u32(v21, 8uLL) & 0xFFFF00FFFFFF00FFLL)), 8uLL) & 0xFFFF00FFFFFF00FFLL), vadd_s32(__PAIR64__(v16, v14), (*&vadd_s32(vadd_s32(v20, 0x1000100010001), (*&vshr_n_u32(v20, 8uLL) & 0xFFFF00FFFFFF00FFLL)) & 0xFF00FF00FF00FF00)));
        }

        ++a3;
        if (v15 + 1 < a5)
        {
          v12 = v15 + 1;
        }

        else
        {
          v12 = 0;
        }

        v22 = v13 > 3;
        v13 -= 2;
      }

      while (v22);
    }

    if (v13 >= 1)
    {
      v23 = *(v11 + 4 * v12);
      v24 = HIBYTE(v23);
      if (HIBYTE(v23) != 255)
      {
        if (!v24)
        {
LABEL_18:
          a3 = (a3 + 4);
          goto LABEL_19;
        }

        v23 += ((((a3->i32[0] & 0xFF00FF) * (v24 ^ 0xFF) + 65537 + ((((a3->i32[0] & 0xFF00FF) * (v24 ^ 0xFF)) >> 8) & 0xFF00FF)) >> 8) & 0xFF00FF) + ((((a3->i32[0] >> 8) & 0xFF00FF) * (v24 ^ 0xFF) + 65537 + (((((a3->i32[0] >> 8) & 0xFF00FF) * (v24 ^ 0xFF)) >> 8) & 0xFF00FF)) & 0xFF00FF00);
      }

      a3->i32[0] = v23;
      goto LABEL_18;
    }

LABEL_19:
    a3 = (a3 + 4 * (a4 - result));
    if (a10 + 1 < a6)
    {
      ++a10;
    }

    else
    {
      a10 = 0;
    }

    v22 = a2-- <= 1;
  }

  while (!v22);
  return result;
}

uint64_t CGContextGetVectorCapabilities(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    return *(v1 + 4);
  }

  else
  {
    return 3;
  }
}

uint64_t CGContextSetVectorCapabilities(uint64_t result, unsigned int a2)
{
  v2 = (a2 | ~(-1 << -__clz(a2))) & 3;
  if (a2 < 2)
  {
    v2 = a2;
  }

  if (*(result + 24) == 4)
  {
    v3 = *(result + 32);
    if (v3)
    {
      *(v3 + 96) = v2;
    }
  }

  v4 = *(result + 112);
  if (v4)
  {
    v5 = v2 | ~(-1 << -__clz(v2));
    if (v2 >= 2)
    {
      LOBYTE(v2) = v5;
    }

    *(v4 + 4) = v2 & 3;
  }

  return result;
}

float64x2_t *CG::Cubic::length(float64x2_t *this, int a2)
{
  __asm { FMOV            V2.2D, #3.0 }

  v11 = this[3];
  v12 = vaddq_f64(vmulq_f64(vsubq_f64(this[1], *this), _Q2), vsubq_f64(*this, v11));
  v13 = vaddq_f64(vsubq_f64(v11, *this), vmulq_f64(vsubq_f64(this[2], v11), _Q2));
  v14 = vmulq_f64(v12, v12);
  v15 = vmulq_f64(v13, v13);
  if (vaddvq_f64(vbslq_s8(vcgtq_f64(v15, v14), v15, v14)) >= 4.0)
  {
    v18[14] = v5;
    v18[15] = v4;
    v18[20] = v2;
    v18[21] = v3;
    if (a2 <= 500)
    {
      CG::Cubic::split(v17, 0.5, this);
      CG::Cubic::length(v17, a2 + 1);
      return CG::Cubic::length(v18, a2 + 1);
    }
  }

  return this;
}

float64x2_t *CG::Cubic::index(float64x2_t *this, double a2)
{
  if (a2 > 0.0)
  {
    v3 = this;
    this = CG::Cubic::length(this, 0);
    if (v4 > a2)
    {
      v5 = 1.0;
      v6 = 0.0;
      do
      {
        CG::Cubic::split(v8, (v5 + v6) * 0.5, v3);
        this = CG::Cubic::length(v8, 0);
        if (v7 <= a2)
        {
          v6 = (v5 + v6) * 0.5;
        }

        else
        {
          v5 = (v5 + v6) * 0.5;
        }
      }

      while (v5 - v6 > 0.0001);
    }
  }

  return this;
}

void CGPathOutputFiltering::~CGPathOutputFiltering(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
  }

  *this = 0;
}

uint64_t *CGPathRandomAccessSubpath::append_sections_to_path(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v12 = result;
  v13 = (result[1] - *result) >> 4;
  v14 = a2 % v13;
  while (1)
  {
    v15 = *v12;
    v16 = (v12[1] - *v12) >> 4;
    if (v16 <= v14)
    {
      break;
    }

    v17 = v15 + 16 * v14;
    if (*(v17 + 8) == 1)
    {
      v18 = v12[3];
      if (*v17 >= ((v12[4] - v18) >> 4))
      {
        break;
      }

      result = (*(a7 + 16))(a7, v18 + 16 * *v17);
    }

    else
    {
      if (a5)
      {
        if (v14 == a2 && (a4 & 1) != 0)
        {
          goto LABEL_15;
        }

        v19 = *v17;
      }

      else
      {
        v20 = v14 + 1;
        if (a4 && v20 % v13 == a3)
        {
          goto LABEL_15;
        }

        v19 = *(v15 + 16 * (v20 % v16));
      }

      v21 = v12[3];
      if (v19 >= (v12[4] - v21) >> 4)
      {
        break;
      }

      result = (*(a6 + 16))(a6, *(v21 + 16 * v19), *(v21 + 16 * v19 + 8));
    }

LABEL_15:
    v14 = (v14 + 1) % v13;
    if (v14 == a3)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 __Block_byref_object_copy__14062(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u64[1] = a2[2].n128_u64[1];
  result = a2[3];
  a1[3] = result;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__14063(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    operator delete(v1);
  }
}

__n128 __Block_byref_object_copy__3(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__9(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

__n128 CGPathRandomAccess::state_at_point(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[12] = *MEMORY[0x1E69E9840];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 4);
  v6 = a5 % v5;
  if (v5 <= (a5 % v5) || (v7 = (a5 + 1) % v5, v5 <= v7))
  {
LABEL_33:
    __break(1u);
  }

  v8 = 0;
  v9 = a3 + 48 * v6;
  *(a1 + 16) = -1;
  v10 = a3 + 48 * v7 + 24;
  v11 = 16;
  result.n128_u64[0] = 1.0;
  do
  {
    v13 = *(v9 + v11);
    if (v13 != -1)
    {
      v14 = *(v9 + v11 + 8);
      v15 = v10;
      for (i = 32; i; i -= 16)
      {
        if (v13 == *(v15 - 1))
        {
          if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3) <= v13)
          {
            goto LABEL_33;
          }

          v17 = *v15;
          if (v14 == *v15)
          {
            break;
          }

          if (vabdd_f64(v14, v17) <= 1.0)
          {
            v21 = &v26[2 * v8];
            *v21 = v13;
            *(v21 + 8) = v17 > v14;
            *(v21 + 2) = v14;
          }

          else
          {
            v18 = ((*(*a2 + 56 * v13 + 8) - *(*a2 + 56 * v13)) >> 4);
            if (v18 - v17 <= 1.0 && v14 < 1.0)
            {
              v21 = &v26[2 * v8];
              *v21 = v13;
              *(v21 + 8) = 0;
              *(v21 + 2) = v14 + v18;
            }

            else
            {
              if (v18 - v14 > 1.0 || v17 >= 1.0)
              {
                goto LABEL_23;
              }

              v21 = &v26[2 * v8];
              *v21 = v13;
              *(v21 + 8) = 1;
              *(v21 + 2) = v14;
              v17 = v17 + v18;
            }
          }

          *(v21 + 3) = v17;
          ++v8;
        }

LABEL_23:
        v15 += 2;
      }
    }

    v11 += 16;
  }

  while (v11 != 48);
  if (v8)
  {
    v22 = v26;
    if (v8 != 1)
    {
      v23 = 32 * v8;
      v24 = v27;
      v25 = v23 - 32;
      do
      {
        if (vabdd_f64(v24[1].n128_f64[0], v24[1].n128_f64[1]) < vabdd_f64(v22[1].n128_f64[0], v22[1].n128_f64[1]))
        {
          v22 = v24;
        }

        v24 += 2;
        v25 -= 32;
      }

      while (v25);
    }

    *(a1 + 16) = v22->n128_u64[0];
    *(a1 + 8) = v22->n128_u8[8];
    result = v22[1];
    *(a1 + 24) = result;
  }

  return result;
}

uint64_t create_gradient(CGColorSpace *a1, double *a2, double *a3, size_t a4, const __CFDictionary *a5, float a6)
{
  Instance = 0;
  if (!a1)
  {
    return Instance;
  }

  v7 = a2;
  if (!a2 || !a4)
  {
    return Instance;
  }

  if (!validate_gradient_color_space(a1, "CGGradientCreateWithColorComponents"))
  {
    return 0;
  }

  if (a3)
  {
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = -INFINITY;
    v23 = a3;
    v24 = a4;
    do
    {
      v25 = v22;
      v22 = *v23;
      if (*v23 == 0.0)
      {
        v19 = 1;
      }

      else if (v22 == 1.0)
      {
        v20 = 1;
      }

      else if (v22 < 0.0 || v22 > 1.0)
      {
        return 0;
      }

      v21 &= v25 <= v22;
      ++v23;
      --v24;
    }

    while (v24);
    v51 = ((v20 & 1) == 0) + a4 + ((v19 & 1) == 0);
    goto LABEL_22;
  }

  if (a4 == 1)
  {
    return 0;
  }

  v21 = 1;
  v20 = 1;
  v19 = 1;
  v51 = a4;
LABEL_22:
  v28 = *(*(a1 + 3) + 48);
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  v49 = v28;
  v29 = v28 + 2;
  Instance = CGTypeCreateInstance(CGGradientGetTypeID_gradient_type_id, 48, v13, v14, v15, v16, v17, v18);
  *(Instance + 16) = atomic_fetch_add_explicit(create_gradient_identifier, 1u, memory_order_relaxed) + 1;
  CFRetain(a1);
  *(Instance + 24) = a1;
  *(Instance + 48) = v51;
  v30 = 1.0;
  if (a6 >= 1.0 || a6 <= 0.0)
  {
    v30 = a6;
  }

  if (a6 < 0.0)
  {
    v30 = 0.0;
  }

  *(Instance + 56) = v30;
  if (a5)
  {
    *(Instance + 20) = CFDictionaryGetValue(a5, @"kCGGradientInterpolatesPremultiplied") == *MEMORY[0x1E695E4D0];
  }

  Mutable = CFDataCreateMutable(0, 8 * v51 * v29);
  *(Instance + 40) = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (a3)
  {
    v52 = v20;
    v34 = v29;
    v35 = 0;
    v45 = v34;
    v46 = v49 + 1;
    v36 = &MutableBytePtr[8 * v34];
    v48 = v19;
    v47 = MutableBytePtr;
    v44 = v36;
    if (v19)
    {
      v37 = MutableBytePtr;
    }

    else
    {
      v37 = v36;
    }

    v38 = 8 * v49;
    v39 = 8 * v49 + 16;
    v50 = (8 * v49) ^ 0xFFFFFFFFFFFFFFF8;
    v40 = v38 + 8;
    do
    {
      *v37 = a3[v35];
      CGColorSpaceAdjustColor(a1, v7, v37 + 1);
      ++v35;
      v37 += v39;
      v7 = (v7 + v40);
    }

    while (a4 != v35);
    if ((v21 & 1) == 0)
    {
      if (v48)
      {
        v41 = 0;
      }

      else
      {
        v41 = v45;
      }

      mergesort(&v47[8 * v41], a4, 8 * v45, is_smaller_stop);
    }

    if ((v48 & 1) == 0)
    {
      memcpy(v47 + 8, v44 + 8, 8 * v46);
      *v47 = 0;
    }

    if ((v52 & 1) == 0)
    {
      memcpy(v37 + 8, &v37[v50], 8 * v46);
      *v37 = 0x3FF0000000000000;
    }
  }

  else
  {
    v42 = 0;
    v43 = (MutableBytePtr + 8);
    do
    {
      *(v43 - 1) = v42 / (a4 - 1);
      CGColorSpaceAdjustColor(a1, v7, v43);
      ++v42;
      v43 += v49 + 2;
      v7 += v49 + 1;
    }

    while (a4 != v42);
  }

  return Instance;
}

BOOL validate_gradient_color_space(CGColorSpace *a1, char a2)
{
  v10 = CGColorSpaceGetModel(a1) - 3;
  if (v10 <= 3)
  {
    CGPostError(off_1E6E31528[v10], v3, v4, v5, v6, v7, v8, v9, a2);
  }

  return v10 > 3;
}

uint64_t is_smaller_stop(double *a1, double *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t CGGradientCreateWithContentHeadroom(CGColorSpace *a1, double *a2, double *a3, size_t a4, float a5)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB || !CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    return 0;
  }

  return create_gradient(a1, a2, a3, a4, 0, a5);
}

CGGradientRef CGGradientRetain(CGGradientRef gradient)
{
  if (gradient)
  {
    CFRetain(gradient);
  }

  return gradient;
}

void CGGradientRelease(CGGradientRef gradient)
{
  if (gradient)
  {
    CFRelease(gradient);
  }
}

uint64_t CGGradientGetColorSpace(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

float CGGradientGetContentHeadroom(_DWORD *a1)
{
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
    {
      dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
    }

    if (v3 == CGGradientGetTypeID_gradient_type_id)
    {
      return *(a1 + 14);
    }
  }

  return v1;
}

CFTypeID CGGradientGetTypeID(void)
{
  if (kCGGradientInterpolatesPremultiplied_block_invoke_once[0] != -1)
  {
    dispatch_once(kCGGradientInterpolatesPremultiplied_block_invoke_once, &__block_literal_global_18_14085);
  }

  return CGGradientGetTypeID_gradient_type_id;
}

void *gradient_evaluate_premul(void *result, double *a2, double *a3)
{
  v3 = result[2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = *a2;
    v6 = result[1];
    v7 = result[3];
    v8 = v6 + 1;
    v9 = (v7 + 8 * (v6 + 1));
    v10 = *v9;
    v11 = 0.0;
    v12 = 0;
    if (*a2 <= *v9)
    {
      v15 = 0.0;
LABEL_9:
      v16 = (v5 - v15) / (v10 - v15);
      v17 = v7 + 8 * v12 * v8;
      v18 = *(v17 + 8 * v6);
      v19 = v9[v6];
      v20 = v16 * v19 + (1.0 - v16) * v18;
      if (v20 != 0.0)
      {
        v11 = 1.0 / v20;
      }

      v21 = v6 - 1;
      if (v21)
      {
        v22 = (v17 + 8);
        v23 = v9 + 1;
        do
        {
          v24 = *v22++;
          v25 = (1.0 - v16) * v24;
          v26 = *v23++;
          *a3++ = v11 * (v19 * (v16 * v26) + v25 * v18);
          --v21;
        }

        while (v21);
      }

      *a3 = v20;
    }

    else
    {
      v13 = (v7 + 16 * v6 + 16);
      v14 = v6 + 1;
      while (v4 != v12)
      {
        v15 = v10;
        v10 = *v13;
        ++v12;
        v14 += v8;
        v13 += v6 + 1;
        if (v5 <= v10)
        {
          v9 = (v7 + 8 * v14);
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t CGGradientGetLocationCount(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t CGGradientPrint(uint64_t a1, FILE *a2)
{
  if (a2)
  {
    fprintf(a2, "gradient identifier = %u\n", *(a1 + 16));
    fprintf(a2, "content headroom = %g\n", *(a1 + 56));
  }

  else
  {
    printf("gradient identifier = %u\n", *(a1 + 16));
    printf("content headroom = %g\n", *(a1 + 56));
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(*(v4 + 24) + 48);
  }

  else
  {
    v5 = 0;
  }

  result = CFDataGetBytePtr(*(a1 + 40));
  if (*(a1 + 48))
  {
    v7 = result;
    v8 = 0;
    do
    {
      if (a2)
      {
        fprintf(a2, "%zu: %g -> (", v8, *v7);
      }

      else
      {
        printf("%zu: %g -> (", v8, *v7);
      }

      ++v7;
      v9 = v5 + 1;
      if (v5 != -1)
      {
        do
        {
          if (a2)
          {
            fprintf(a2, " %g", *v7);
          }

          else
          {
            printf(" %g", *v7);
          }

          ++v7;
          --v9;
        }

        while (v9);
      }

      if (a2)
      {
        result = fwrite(")\n", 2uLL, 1uLL, a2);
      }

      else
      {
        result = puts(")");
      }

      ++v8;
    }

    while (v8 < *(a1 + 48));
  }

  return result;
}

const UInt8 *CGGradientApply(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, const UInt8 *, double))
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(*(v6 + 24) + 48) + 2;
  }

  else
  {
    v7 = 2;
  }

  result = CFDataGetBytePtr(*(a1 + 40));
  if (*(a1 + 48))
  {
    v9 = 0;
    v10 = result + 8;
    v11 = 8 * v7;
    do
    {
      result = a3(a2, v10, *(v10 - 1));
      ++v9;
      v10 += v11;
    }

    while (v9 < *(a1 + 48));
  }

  return result;
}

const UInt8 *CGGradientApplyWithBlock(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(*(v4 + 24) + 48) + 2;
  }

  else
  {
    v5 = 2;
  }

  result = CFDataGetBytePtr(*(a1 + 40));
  if (*(a1 + 48))
  {
    v7 = 0;
    v8 = result + 8;
    v9 = 8 * v5;
    do
    {
      result = (*(a2 + 16))(a2, v8, *(v8 - 1));
      ++v7;
      v8 += v9;
    }

    while (v7 < *(a1 + 48));
  }

  return result;
}

uint64_t error(int a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = MEMORY[0x1E69E9848];
  v4 = *MEMORY[0x1E69E9848];
  if (a1 < 0)
  {
    fwrite("Error: ", 7uLL, 1uLL, v4);
  }

  else
  {
    fprintf(v4, "Error (%d): ", a1);
  }

  vfprintf(*v3, a2, va);
  fputc(10, *v3);
  return fflush(*v3);
}

uint64_t assembleClusterGaps(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 96) - *(a2 + 96);
  v7 = *(a2 + 144);
  v8 = *(a3 + 144);
  v9 = v8 < 0.0;
  v10 = v6 + v8;
  if (v8 > 0.0)
  {
    v11 = v6 + v8;
  }

  else
  {
    v11 = *(a3 + 96) - *(a2 + 96);
  }

  if (v8 <= 0.0)
  {
    v8 = -v8;
  }

  if (v9)
  {
    v6 = v10;
  }

  if (v7 >= 0.0)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  if (v7 >= 0.0)
  {
    v13 = *(a2 + 144);
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a2 + 160);
  v15 = *(v14 + 72);
  if (v15 == 0.0)
  {
    v16 = -1;
    v17 = 0.0;
    v18 = 0.0;
  }

  else
  {
    v21 = *(v14 + 64);
    v22 = *(a3 + 160);
    v23 = *(v22 + 64);
    v24 = *(v22 + 72);
    v25 = 0.0;
    if (v15 == v24 && [v21 isSameFontAs:{*(v22 + 64), v6}])
    {
      [v21 kernBetweenUnicode:*(a2 + 72) andUnicode:*(a3 + 72)];
      v25 = v26;
    }

    [v21 kernBetweenUnicode:*(a2 + 72) andUnicode:32];
    v28 = v27;
    [v23 kernBetweenUnicode:32 andUnicode:*(a3 + 72)];
    v30 = v24 / v15 * v29;
    [v21 spaceWidth];
    v32 = v31;
    [v23 spaceWidth];
    v34 = (v32 + v33) * 0.5;
    v35 = 0.277832031 / v34;
    if (v34 <= 0.0)
    {
      v35 = 1.0;
    }

    v17 = (v28 + v30) * v35 + 0.277832031;
    v16 = *(a3 + 176);
    if (v12 > v13 * 0.5 || !*(a2 + 72) || *(a2 + 72) != *(a3 + 72) || ((v44 = v13 + v25 * v15, v18 = 0.0, v44 > 0.0) ? (v45 = v12 > v44 * 0.5) : (v45 = 1), v45))
    {
      v18 = (v12 / v15 - (v13 / v15 + (v25 + v28 + v30) * 0.5)) * v35;
    }
  }

  v36 = (a4 + 16);
  *(*a4 + 8 * a1) = v18;
  if (a1)
  {
    if (*v36 > v17 || (v36 = (a4 + 24), *(a4 + 24) < v17))
    {
      *v36 = v17;
    }
  }

  else
  {
    *(a4 + 16) = v17;
    *(a4 + 24) = v17;
    v37 = *(a4 + 8);
    *v37 = 0u;
    v37[1] = 0u;
    v38 = *(a4 + 8);
    *(v38 + 32) = 0u;
    *(v38 + 48) = 0u;
  }

  if (v16 <= 2)
  {
    v39 = *(a4 + 8) + 32 * v16;
    v41 = (v39 + 8);
    v40 = *v39;
    if (*v39)
    {
      if (*v41 > v18 || (v41 = (v39 + 16), *(v39 + 16) < v18))
      {
        *v41 = v18;
      }

      v42 = v18 + *(v39 + 24) * v40;
      v43 = v40 + 1;
      v18 = v42 / v43;
    }

    else
    {
      *(v39 + 8) = v18;
      *(v39 + 16) = v18;
      v43 = 1;
    }

    *(v39 + 24) = v18;
    *v39 = v43;
  }

  return 1;
}

BOOL isCharacterOverlay(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96) - *(a1 + 96);
  v5 = *(a1 + 144);
  v6 = *(a2 + 144);
  if (v5 >= 0.0)
  {
    if (v6 < 0.0)
    {
      v4 = v4 + v6;
    }
  }

  else if (v6 <= 0.0)
  {
    v5 = -v6;
  }

  else
  {
    v4 = v4 + v6;
    v5 = *(a2 + 144);
  }

  result = 0;
  if (v4 <= v5 * 0.5 && *(a1 + 72) && *(a1 + 72) == *(a2 + 72))
  {
    v8 = *(a1 + 160);
    v9 = *(v8 + 72);
    v10 = *(a2 + 160);
    v11 = 0.0;
    if (v9 == *(v10 + 72))
    {
      v12 = *(v8 + 64);
      if ([v12 isSameFontAs:*(v10 + 64)])
      {
        [v12 kernBetweenUnicode:*(a1 + 72) andUnicode:*(a2 + 72)];
        v11 = v13;
      }
    }

    v14 = v5 + v11 * v9;
    return v4 <= v14 * 0.5 && v14 > 0.0;
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBColor::formatText(PBPageLayoutPkg::PBColor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBColor::writeTo(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    return MEMORY[0x1EEE30B30](a2, v2, 1);
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBColor::readFrom(PBPageLayoutPkg::PBColor *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if (!PB::Reader::skip(a2))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void PBPageLayoutPkg::PBColor::~PBColor(void ***this)
{
  *this = &unk_1EF23E7E8;
  std::unique_ptr<PB::Data>::reset[abi:fe200100](this + 1, 0);
  PB::Base::~Base(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23E7E8;
  std::unique_ptr<PB::Data>::reset[abi:fe200100](this + 1, 0);

  PB::Base::~Base(this);
}

uint64_t create_rgb_bitmap(double *a1, int a2, int a3)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v64 = 0;
  v65 = 0;
  CGSScanconverterGetBoundingBox(a1, &v65 + 1, &v65, &v64 + 1, &v64);
  v7 = v64;
  v8 = HIDWORD(v64);
  if ((HIDWORD(v64) - 1) > 0x3FFFFFFB || v64 < 1)
  {
    return 0;
  }

  v10 = (2 * HIDWORD(v64) + 3) & 0x7FFFFFFC;
  if (0x7FFFFFFF / v10 <= v64)
  {
    return 0;
  }

  v57 = a3;
  v59 = &v55;
  v11 = MEMORY[0x1EEE9AC00](v10 * v64, v6);
  v13 = &v55 - v12;
  v58 = &v55 - v12;
  if (v11 >= 0x259)
  {
    v13 = malloc_type_malloc(v11, 0x28EDDCD8uLL);
  }

  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v66 = 0;
  v67[0] = 0;
  v14 = delta_create(a1, v67 + 1, v67, &v66);
  if (v14)
  {
    v56 = v13;
    v15 = v66;
    v17 = v67[0];
    v16 = HIDWORD(v67[0]);
    if (CGSScanConvolveAndIntegrateRGB_onceToken != -1)
    {
      v54 = v14;
      dispatch_once(&CGSScanConvolveAndIntegrateRGB_onceToken, &__block_literal_global_3041);
      v14 = v54;
    }

    if (v16 >= 1)
    {
      v18 = 0;
      v19 = &v56[(v17 - 1) * v10];
      v20 = CGSScanConvolveAndIntegrateRGB_redKernel;
      v21 = CGSScanConvolveAndIntegrateRGB_greenKernel;
      v22 = CGSScanConvolveAndIntegrateRGB_blueKernel;
      v23 = v15;
      do
      {
        if (v17 >= 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = &v19[2 * v18];
          v29 = &v14[4 * v18];
          do
          {
            for (i = 0; i != 19; ++i)
            {
              v31 = v29[i];
              v27 += v31 * *(v20 + i * 2);
              v26 += *(v21 + i * 2) * v31;
              v25 += *(v22 + i * 2) * v31;
            }

            v32 = (v27 + 7168) >> 14;
            v33 = (v26 + 7168) >> 14;
            v34 = (v25 + 7168) >> 14;
            if (v32 < -70 || v33 < -70 || v34 < -70)
            {
              v32 = -v32;
              v33 = -v33;
              v34 = -v34;
            }

            if (v32 >= 255)
            {
              v32 = 255;
            }

            v38 = v32 & ~(v32 >> 31);
            if (v33 >= 255)
            {
              v33 = 255;
            }

            v39 = v33 & ~(v33 >> 31);
            if (v34 >= 255)
            {
              v34 = 255;
            }

            *v28 = (4 * v39) & 0x3E0 | ((v34 & ~(v34 >> 31)) >> 3) | (v38 << 7) & 0x7C00;
            v29 = (v29 + v23);
            v28 -= v10;
            ++v24;
          }

          while (v24 != v17);
        }

        ++v18;
      }

      while (v18 != v16);
    }

    free(v14);
    v13 = v56;
  }

  CGGlyphGetTrimRegion(v13, v8, v7, (2 * v8 + 3) & 0x7FFFFFFC, &v63, &v62, &v61, &v60);
  v40 = v61;
  v41 = v8 - (v61 + v60);
  v42 = v63;
  v43 = v63 + v62;
  v44 = v7 - (v63 + v62);
  v45 = 2 * v41;
  v46 = (2 * v41 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v47 = CGGlyphBitmapCreate(a2, v57, HIDWORD(v65) + v61, v7 - v63 + v65, v41, v44, v46, 0);
  v48 = v47;
  if (!v47)
  {
    v50 = v13;
    if (v13 == v58)
    {
      return v48;
    }

    goto LABEL_44;
  }

  v49 = v7 == v43;
  v50 = v13;
  if (!v49)
  {
    v51 = &v13[2 * v40 + v42 * v10];
    v52 = (v47 + 10);
    do
    {
      memcpy(v52, v51, v45);
      v51 += v10;
      v52 += v46;
      --v44;
    }

    while (v44);
  }

  if (default_glyph_bitmap_debugging == 1)
  {
    CGGlyphBitmapWriteToFile(v48);
  }

  if (v50 != v58)
  {
LABEL_44:
    free(v50);
  }

  return v48;
}

uint64_t create_gray_bitmap(double *a1, int a2, int a3)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  CGSScanconverterGetBoundingBox(a1, &v48 + 1, &v48, &v47 + 1, &v47);
  v7 = v47;
  v8 = HIDWORD(v47);
  if ((HIDWORD(v47) - 1) > 0x3FFFFFFB || v47 < 1)
  {
    return 0;
  }

  v10 = (2 * HIDWORD(v47) + 3) & 0x7FFFFFFC;
  if (0x7FFFFFFF / v10 <= v47)
  {
    return 0;
  }

  v40 = a3;
  v42 = v39;
  v11 = MEMORY[0x1EEE9AC00](v10 * v47, v6);
  v13 = &v39[-v12];
  v41 = &v39[-v12];
  if (v11 >= 0x259)
  {
    v13 = malloc_type_malloc(v11, 0x7B04232DuLL);
  }

  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v49 = 0;
  v50[0] = 0;
  v14 = delta_create(a1, v50 + 1, v50, &v49);
  if (v14)
  {
    v15 = HIDWORD(v50[0]);
    if (SHIDWORD(v50[0]) >= 1)
    {
      v16 = 0;
      v17 = v50[0];
      v18 = v49;
      do
      {
        if (v17 >= 1)
        {
          v19 = 0;
          v20 = 0;
          v21 = &v13[2 * v16 + (v17 - 1) * v10];
          v22 = &v14[4 * v16];
          do
          {
            for (i = 0; i != 19; ++i)
            {
              v20 += v22[i] * mKernel[i];
            }

            v24 = (v20 + 7168) >> 14;
            if (v24 < -70)
            {
              v24 = -v24;
            }

            if (v24 >= 255)
            {
              v24 = 255;
            }

            *v21 = (4 * (v24 & ~(v24 >> 31) & 0xF8)) & 0x83E0 | ((((v24 & ~(v24 >> 31) & 0xF8u) >> 3) & 0x1F) << 10) | ((v24 & ~(v24 >> 31)) >> 3);
            v22 = (v22 + v18);
            v21 = (v21 - v10);
            ++v19;
          }

          while (v19 != v17);
        }

        ++v16;
      }

      while (v16 != v15);
    }

    free(v14);
  }

  CGGlyphGetTrimRegion(v13, v8, v7, (2 * v8 + 3) & 0x7FFFFFFC, &v46, &v45, &v44, &v43);
  v25 = v44;
  v26 = v8 - (v44 + v43);
  v27 = v46;
  v28 = v46 + v45;
  v29 = v7 - (v46 + v45);
  v30 = 2 * v26;
  v31 = (2 * v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v32 = CGGlyphBitmapCreate(a2, v40, HIDWORD(v48) + v44, v7 - v46 + v48, v26, v29, v31, 0);
  v33 = v32;
  if (!v32)
  {
    v35 = v13;
    if (v13 == v41)
    {
      return v33;
    }

    goto LABEL_29;
  }

  v34 = v7 == v28;
  v35 = v13;
  if (!v34)
  {
    v36 = &v13[2 * v25 + v27 * v10];
    v37 = (v32 + 10);
    do
    {
      memcpy(v37, v36, v30);
      v36 += v10;
      v37 += v31;
      --v29;
    }

    while (v29);
  }

  if (default_glyph_bitmap_debugging == 1)
  {
    CGGlyphBitmapWriteToFile(v33);
  }

  if (v35 != v41)
  {
LABEL_29:
    free(v35);
  }

  return v33;
}

void scan_converter_iterate(uint64_t a1, int a2, uint64_t a3, float64x2_t a4, double a5, __n128 a6, int64x2_t a7, float64x2_t a8, __n128 a9)
{
  v9 = a1;
  if (a2 <= 2)
  {
    if (!a2)
    {
      v11 = *a3;
      *(a1 + 24) = *a3;
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 40) = vminnmq_f64(*(a1 + 40), v11);
      *(a1 + 56) = vmaxnmq_f64(*(a1 + 56), v11);
      return;
    }

    if (a2 == 1)
    {
      a4.f64[0] = *a3;
      v10 = *(a3 + 8);
LABEL_8:

      CGSScanconverterAddLineToPoint(a1, a4, v10);
      return;
    }

    goto LABEL_43;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      a4.f64[0] = *(a1 + 24);
      v10 = *(a1 + 32);
      goto LABEL_8;
    }

LABEL_43:
    abort();
  }

  a6.n128_u64[0] = *a3;
  a7.i64[0] = *(a3 + 8);
  a8.f64[0] = *(a3 + 16);
  a9.n128_u64[0] = *(a3 + 24);
  v13 = *(a3 + 32);
  v12 = *(a3 + 40);
  v14 = *(a1 + 8);
  if (vabdd_f64(*a3, a8.f64[0]) + vabdd_f64(*a7.i64, a9.n128_f64[0]) >= 0.0001)
  {
    v15 = *(a1 + 16);
  }

  else
  {
    v15 = *(a1 + 16);
    v16 = vabdd_f64(v14, a6.n128_f64[0]) + vabdd_f64(v15, *a7.i64);
    v17 = vabdd_f64(a8.f64[0], v13) + vabdd_f64(a9.n128_f64[0], v12);
    if (v17 + v16 < 0.0002)
    {
      return;
    }

    if (v17 < 0.0001 || v16 < 0.0001)
    {
      a4.f64[0] = *(a3 + 32);
      v10 = *(a3 + 40);
      goto LABEL_8;
    }
  }

  v18 = a6.n128_f64[0] * (a6.n128_f64[0] - a8.f64[0]) + a8.f64[0] * (a8.f64[0] - v14) + v13 * (v14 - a6.n128_f64[0]);
  if (v18 >= 0.0)
  {
    v19 = v13 - v14 + (a6.n128_f64[0] - a8.f64[0]) * 3.0;
    v20 = a8.f64[0] + v14 + a6.n128_f64[0] * -2.0;
    if (v19 == 0.0)
    {
      if (v20 == 0.0)
      {
        v22 = 0.0;
        v21 = 0.0;
      }

      else
      {
        v21 = (v15 - *a7.i64) * 0.5 / v20;
        v22 = 2.0;
      }
    }

    else if (v20 != 0.0 || (v22 = 0.0, v21 = 0.0, v18 != 0.0))
    {
      v23 = 1.0;
      if (v20 < 0.0)
      {
        v23 = -1.0;
      }

      v24 = -(v20 + v23 * sqrt(v18));
      v25 = v24 / v19;
      v26 = (*a7.i64 - v15) / v24;
      if (v25 >= v26)
      {
        v21 = v26;
      }

      else
      {
        v21 = v25;
      }

      if (v25 <= v26)
      {
        v22 = v26;
      }

      else
      {
        v22 = v25;
      }
    }

    v27 = 2.0;
    if (v21 < 1.0e-10)
    {
      v21 = v22;
    }

    else
    {
      v27 = v22;
    }

    if (v21 >= 1.0e-10 && v21 <= 1.0)
    {
      if (1.0 - v27 >= 1.0e-10)
      {
        v41 = 1.0 - v21;
        v42 = (v27 - v21) / (1.0 - v21);
        v43 = a8.f64[0] + v14 + a6.n128_f64[0] * -2.0;
        v44 = v14 + (v43 * v21 + (a6.n128_f64[0] - v14) * 2.0) * v21;
        v45 = a9.n128_f64[0] + v15 + *a7.i64 * -2.0;
        v46 = v15 + (v45 * v21 + (*a7.i64 - v15) * 2.0) * v21;
        v47 = v14 + (v21 * ((v13 + (a8.f64[0] - a6.n128_f64[0]) * -3.0 - v14) * v21 + v43 * 3.0) + (a6.n128_f64[0] - v14) * 3.0) * v21;
        v48 = v15 + (v21 * ((v12 + (a9.n128_f64[0] - *a7.i64) * -3.0 - v15) * v21 + v45 * 3.0) + (*a7.i64 - v15) * 3.0) * v21;
        v70 = v13 + ((a6.n128_f64[0] + v13 + a8.f64[0] * -2.0) * v41 + (v13 - a8.f64[0]) * -2.0) * v41;
        v49 = v12 + ((*a7.i64 + v12 + a9.n128_f64[0] * -2.0) * v41 + (v12 - a9.n128_f64[0]) * -2.0) * v41;
        v50 = v13 - (v13 - a8.f64[0]) * (1.0 - v21);
        v51 = v12 - (v12 - a9.n128_f64[0]) * (1.0 - v21);
        a6.n128_f64[0] = v14 + (a6.n128_f64[0] - v14) * v21;
        *a7.i64 = v15 + (*a7.i64 - v15) * v21;
        a8.f64[0] = v44;
        a9.n128_f64[0] = v46;
        approximateMonotonicCube(a1, 0, v14, v15, a6, a7, a8, a9, v47, v48);
        v52 = v13 - v50;
        v53.n128_f64[0] = v47 + (v70 - v47) * v42;
        *v54.i64 = v48 + (v49 - v48) * v42;
        v55 = v50 + v47 + v70 * -2.0;
        v56.f64[0] = v47 + (v42 * v55 + (v70 - v47) * 2.0) * v42;
        v57 = v51 + v48 + v49 * -2.0;
        v58.n128_f64[0] = v48 + (v42 * v57 + (v49 - v48) * 2.0) * v42;
        v59 = v47 + (v42 * (v42 * (v13 + (v50 - v70) * -3.0 - v47) + v55 * 3.0) + (v70 - v47) * 3.0) * v42;
        v60 = v48 + (v42 * (v42 * (v12 + (v51 - v49) * -3.0 - v48) + v57 * 3.0) + (v49 - v48) * 3.0) * v42;
        v61 = 1.0 - v42;
        v62 = v13 + ((1.0 - v42) * (v13 + v50 * -2.0 + v70) + (v13 - v50) * -2.0) * (1.0 - v42);
        v63 = v12 + ((1.0 - v42) * (v12 + v51 * -2.0 + v49) + (v12 - v51) * -2.0) * (1.0 - v42);
        v64 = v13 - v52 * v61;
        v65 = v12 - (v12 - v51) * v61;
        v66 = v47;
        v67 = v48;
        v68 = v59;
        v69 = v60;
        approximateMonotonicCube(v9, 0, v66, v67, v53, v54, v56, v58, v59, v60);
        a1 = v9;
        v14 = v68;
        v15 = v69;
        a6.n128_f64[0] = v62;
        *a7.i64 = v63;
        a8.f64[0] = v64;
        a9.n128_f64[0] = v65;
      }

      else
      {
        v28 = v14 + (a6.n128_f64[0] - v14) * v21;
        v29 = v15 + (*a7.i64 - v15) * v21;
        v30 = a8.f64[0] + v14 + a6.n128_f64[0] * -2.0;
        v31 = v14 + (v30 * v21 + (a6.n128_f64[0] - v14) * 2.0) * v21;
        v32 = a9.n128_f64[0] + v15 + *a7.i64 * -2.0;
        v33 = v15 + (v32 * v21 + (*a7.i64 - v15) * 2.0) * v21;
        v34 = v14 + (v21 * ((v13 + (a8.f64[0] - a6.n128_f64[0]) * -3.0 - v14) * v21 + v30 * 3.0) + (a6.n128_f64[0] - v14) * 3.0) * v21;
        v35 = v15 + (v21 * ((v12 + (a9.n128_f64[0] - *a7.i64) * -3.0 - v15) * v21 + v32 * 3.0) + (*a7.i64 - v15) * 3.0) * v21;
        v36 = 1.0 - v21;
        v37 = v13 + ((a6.n128_f64[0] + v13 + a8.f64[0] * -2.0) * v36 + (v13 - a8.f64[0]) * -2.0) * v36;
        v38 = v12 + ((*a7.i64 + v12 + a9.n128_f64[0] * -2.0) * v36 + (v12 - a9.n128_f64[0]) * -2.0) * v36;
        v39 = v13 - (v13 - a8.f64[0]) * v36;
        v40 = v12 - (v12 - a9.n128_f64[0]) * v36;
        a6.n128_f64[0] = v28;
        *a7.i64 = v29;
        a8.f64[0] = v31;
        a9.n128_f64[0] = v33;
        approximateMonotonicCube(a1, 0, v14, v15, a6, a7, a8, a9, v34, v35);
        a1 = v9;
        v14 = v34;
        v15 = v35;
        a6.n128_f64[0] = v37;
        *a7.i64 = v38;
        a8.f64[0] = v39;
        a9.n128_f64[0] = v40;
      }
    }
  }

  approximateMonotonicCube(a1, 0, v14, v15, a6, a7, a8, a9, v13, v12);
  *(v9 + 8) = v13;
  *(v9 + 16) = v12;
}

int64x2_t scan_converter_begin(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  result = vdupq_n_s64(0xC7EFFFFFE0000000);
  *(a1 + 56) = result;
  return result;
}

uint64_t ripc_DrawImageApplyingToneMapping(uint64_t a1, uint64_t a2, uint64_t a3, CGImage *a4, int a5, const void *a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  ColorSpace = ripc_GetColorSpace(a1);
  if (!ColorSpace)
  {
    return 1000;
  }

  v21 = ColorSpace;
  v22 = 0;
  if ((a5 - 3) >= 3)
  {
    v23 = *(*(a3 + 120) + 48);
    v24 = ripc_GetColorSpace(a1);
    CGColorSpaceSanitizeHeadroom(v24, v23);
    if (v32 == 0.0)
    {
      CGPostError("CGContextDrawImageApplyingToneMapping: EDR Target headroom unspecified", v25, v26, v27, v28, v29, v30, v31, v59);
    }

    v33 = *(*(a3 + 120) + 48);
    v34 = ripc_GetColorSpace(a1);
    CGColorSpaceSanitizeHeadroom(v34, v33);
    v60 = v35;
    HeadroomInfo = CGImageGetHeadroomInfo(a4, 0);
    __asm { FMOV            V2.2S, #1.0 }

    v22 = vbic_s8(vbsl_s8(vand_s8(vcgtz_f32(__PAIR64__(LODWORD(HeadroomInfo), v60)), vcgt_f32(_D2, __PAIR64__(LODWORD(HeadroomInfo), v60))), _D2, __PAIR64__(LODWORD(HeadroomInfo), v60)), vcltz_f32(__PAIR64__(LODWORD(HeadroomInfo), v60)));
  }

  v61 = v22;
  v45 = CGImageGetColorSpace(a4);
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v46 = CGImageDefaultReferenceWhite_media_white;
  v47 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v48 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v48 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v46, kCFNumberFloatType, &valuePtr);
      v47 = valuePtr;
    }
  }

  v62 = v47;
  if (a6)
  {
    v49 = CFGetTypeID(a6);
    if (v49 == CFDictionaryGetTypeID())
    {
      if (a5 == 2)
      {
        v50 = @"kCGRWTMSourceReferenceWhite";
      }

      else
      {
        v50 = @"kCGHDRMediaReferenceWhite";
      }

      Value = CFDictionaryGetValue(a6, v50);
      if (Value)
      {
        v52 = Value;
        v53 = CFGetTypeID(Value);
        if (v53 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v52, kCFNumberFloatType, &v62);
          v47 = v62;
        }
      }
    }
  }

  OptionsForToneMapping = CGColorConversionInfoCreateOptionsForToneMapping(a5, v21, v45, a6, 0, *v61.i32, *&v61.i32[1], v47, v42, v43, v44);
  CopyWithResolvedOptions = CGImageCreateCopyWithResolvedOptions(a4, OptionsForToneMapping);
  v56 = CopyWithResolvedOptions;
  if (OptionsForToneMapping && CopyWithResolvedOptions)
  {
    v57 = ripc_DrawImage(a1, a2, a3, CopyWithResolvedOptions, a7, a8, a9, a10);
  }

  else
  {
    if (!OptionsForToneMapping)
    {
      v57 = ripc_DrawImage(a1, a2, a3, a4, a7, a8, a9, a10);
      if (!v56)
      {
        return v57;
      }

      goto LABEL_26;
    }

    v57 = 1000;
  }

  CFRelease(OptionsForToneMapping);
  if (v56)
  {
LABEL_26:
    CFRelease(v56);
  }

  return v57;
}

CFDictionaryRef __get_flattening_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGColorTransformFlattenImage";
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  get_flattening_options_options = result;
  return result;
}

uint64_t ripc_DrawLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a1)
  {
    v15 = *(a1 + 288);
    if (a4)
    {
LABEL_3:
      v16 = *(a4 + 80) != ripc_DrawImage;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = 1;
LABEL_6:
  v17 = *(v15 + 48);
  Cache = CGColorTransformGetCache(*(v15 + 16));
  if (Cache)
  {
    v19 = Cache[2];
  }

  else
  {
    v19 = 0;
  }

  Image = RIPLayerCreateImage(v17, v19, v16);
  if (!Image)
  {
    return 1000;
  }

  v21 = Image;
  if (a4)
  {
    v22 = *(a4 + 80);
    if (v22)
    {
      v22(a4, a2, a3, Image, a5, a6, a7, a8);
    }
  }

  CFRelease(v21);
  return 0;
}

uint64_t ripc_GetLayer(uint64_t a1, uint64_t a2, int a3, CFDictionaryRef theDict, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (a1)
  {
    v14 = *(a1 + 288);
  }

  else
  {
    v14 = 0;
  }

  space = 0;
  v52 = 0;
  v53 = 0;
  *v54 = *(v14 + 24);
  if (theDict)
  {
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    CGCFDictionaryGetCFTypeRef(theDict, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &space);
    if (space && !CGColorSpaceSupportsOutput(space))
    {
      space = 0;
    }

    CGCFDictionaryGetSize(theDict, @"kCGContextResolution", v54);
  }

  v15 = *(v14 + 88);
  if (v15)
  {
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
    v17 = v16[4];
    if (v17)
    {
      v18 = *(v17 + 32);
    }

    else
    {
      v18 = 0;
    }

    v19 = (v16 + 1);
  }

  else
  {
    v19 = (v14 + 16);
    v20 = *(v14 + 48);
    if (v20)
    {
      v18 = *(v20 + 32);
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = *v19;
  if (space)
  {
    Model = CGColorSpaceGetModel(space);
    v29 = RIPLayerDepthForModel(Model, *v18, v23, v24, v25, v26, v27, v28);
    if (v29)
    {
      goto LABEL_24;
    }
  }

  Cache = CGColorTransformGetCache(v21);
  if (Cache)
  {
    Cache = *(Cache + 2);
  }

  space = Cache;
  v29 = v18;
  if (v18)
  {
LABEL_24:
    result = color_transform_create(space, theDict);
    if (result)
    {
      v32 = result;
      v33 = *(v14 + 40);
      v56.origin.x = a5;
      v56.origin.y = a6;
      v56.size.width = a7;
      v56.size.height = a8;
      v57 = CGRectStandardize(v56);
      if (v33 != 1.0)
      {
        v57.origin.x = v33 * v57.origin.x;
        v57.origin.y = v33 * v57.origin.y;
        v57.size.width = v33 * v57.size.width;
        v57.size.height = v33 * v57.size.height;
      }

      v37 = v57.size.width + v57.origin.x;
      if (v57.origin.x <= 1073741820.0)
      {
        v39 = vcvtmd_s64_f64(v57.origin.x + 0.0);
        if (v57.origin.x >= -1073741820.0)
        {
          v38 = v39;
        }

        else
        {
          v38 = -1073741823;
        }
      }

      else
      {
        v38 = 0x3FFFFFFF;
      }

      LODWORD(v52) = v38;
      if (v37 <= 1073741820.0)
      {
        v41 = vcvtpd_s64_f64(v37);
        if (v37 >= -1073741820.0)
        {
          v40 = v41;
        }

        else
        {
          v40 = -1073741823;
        }
      }

      else
      {
        v40 = 0x3FFFFFFF;
      }

      LODWORD(v53) = v40 - v38;
      v42 = v57.size.height + v57.origin.y;
      if (v57.origin.y <= 1073741820.0)
      {
        v44 = vcvtmd_s64_f64(v57.origin.y + 0.0);
        if (v57.origin.y >= -1073741820.0)
        {
          v43 = v44;
        }

        else
        {
          v43 = -1073741823;
        }
      }

      else
      {
        v43 = 0x3FFFFFFF;
      }

      HIDWORD(v52) = v43;
      if (v42 <= 1073741820.0)
      {
        v45 = vcvtpd_s64_f64(v42);
        if (v42 < -1073741820.0)
        {
          v45 = -1073741823;
        }
      }

      else
      {
        v45 = 0x3FFFFFFF;
      }

      HIDWORD(v53) = v45 - v43;
      if (a2)
      {
        v46 = *(a2 + 4);
      }

      else
      {
        v46 = 3;
      }

      v47 = RIPLayerCreate(RIPLayer_ripl_class, &v52, 17, v29, v46, v34, v35, v36);
      if (v47)
      {
        v48 = v47;
        v49 = *(v14 + 216);
        v50 = ripc_Initialize();
        *(v50 + 6) = v48;
        *(v50 + 2) = v32;
        *(v50 + 24) = *v54;
        *(v50 + 5) = v33;
        *(v50 + 54) = v49;
        if (a2)
        {
          v51 = *(v50 + 1);
          if (v51)
          {
            *(v51 + 96) = *(a2 + 4);
          }
        }

        return *v50;
      }

      else
      {
        CFRelease(v32);
        return 0;
      }
    }
  }

  else
  {
    result = CGColorSpaceGetModel(Cache);
    __break(1u);
  }

  return result;
}

uint64_t ripc_DrawImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v12 = *(a1 + 288);
  }

  else
  {
    v12 = 0;
  }

  v230 = 0u;
  v231 = 0u;
  v229 = 0u;
  if (ripc_GetRenderingState(v12, a2, a3, &v229))
  {
    v15 = *(a3 + 40);
    v16 = *(a3 + 24);
    v17 = *(a3 + 56);
    v13.n128_u64[0] = v12[5];
    v14.n128_u64[0] = 1.0;
    if (v13.n128_f64[0] != 1.0)
    {
      v15 = vmulq_n_f64(v15, v13.n128_f64[0]);
      v16 = vmulq_n_f64(v16, v13.n128_f64[0]);
      v17 = vmulq_n_f64(v17, v13.n128_f64[0]);
    }

    v208 = v17;
    v209 = v15;
    v18 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v207 = v16;
    if (!a6)
    {
      v216 = v16;
      v217 = v15;
      v218 = v17;
      v13.n128_u64[0] = CGRectApplyInverseAffineTransform(v216.n128_f64, COERCE__N64(SDWORD2(v230)), SHIDWORD(v230), v231, SDWORD1(v231)).n64_u64[0];
      v15 = v209;
      v21 = v13.n128_f64[0];
      v20 = v14.n128_f64[0];
      v19 = v17.n128_f64[0];
      v18 = v22;
    }

    if (*v12 && (v23 = *(*v12 + 248)) != 0)
    {
      v24 = v23(v13, v14, v17);
      if (v24)
      {
        v211 = *(v24 + 40) == 7;
      }

      else
      {
        v211 = 0;
      }

      v15 = v209;
      if (a7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v211 = 0;
      if (a7)
      {
LABEL_17:
        v25 = 0uLL;
        v26 = (a4 + 16);
        v27 = (a6 + 16);
        v205 = vmulq_f64(v15, 0);
        while (1)
        {
          v227 = v25;
          v228 = v25;
          v226 = v25;
          v224 = 0;
          v225 = 0;
          v220 = 0;
          v221 = 0;
          v219 = 0;
          v217 = v25;
          v218 = v25;
          v215 = v25;
          v216 = v25;
          v214 = v25;
          v28 = *a5;
          if (!*a5 || *v26 == 0.0 || v26[1] == 0.0)
          {
            goto LABEL_33;
          }

          EPSRep = CGImageGetEPSRep(*a5);
          if (EPSRep)
          {
            v28 = EPSRep[3];
          }

          alternate_image = create_alternate_image(v28, v211);
          v31 = alternate_image;
          v32 = alternate_image ? alternate_image : v28;
          if (ripc_GetImageSize(v32, &v225, &v224))
          {
            v33 = v225;
            v222 = v224;
            v223 = v225;
            v206 = v224;
            height = v18;
            width = v19;
            y = v20;
            x = v21;
            if (!a6)
            {
              goto LABEL_36;
            }

            if (*v27 != 0.0)
            {
              v39 = v27[1];
              if (v39 != 0.0)
              {
                break;
              }
            }
          }

          v25 = 0uLL;
          if (v31)
          {
            goto LABEL_31;
          }

LABEL_33:
          ++a5;
          v26 += 4;
          v27 += 4;
          if (!--a7)
          {
            return 0;
          }
        }

        v40 = *(v27 - 2);
        v41 = *(v27 - 1);
        v38 = *v27;
        v232 = CGRectStandardize(*(&v39 - 3));
        x = v232.origin.x;
        y = v232.origin.y;
        width = v232.size.width;
        height = v232.size.height;
LABEL_36:
        v198 = v21;
        v199 = v20;
        v200 = v19;
        v202 = v18;
        v204 = a6;
        v233 = CGRectStandardize(*(v26 - 2));
        v42 = v233.origin.x;
        v43 = v233.origin.y;
        v44 = v233.size.width;
        v45 = v233.size.height;
        v237.origin.x = x;
        v237.origin.y = y;
        v237.size.width = width;
        v237.size.height = height;
        v46 = CGRectEqualToRect(v233, v237);
        if (v46 || (v234.origin.x = v42, v234.origin.y = v43, v234.size.width = v44, v234.size.height = v45, v238.origin.x = x, v238.origin.y = y, v238.size.width = width, v238.size.height = height, CGRectContainsRect(v234, v238)))
        {
          v213[0] = 0;
          v213[1] = 0;
          v212[0] = 0;
          v212[1] = 0;
          if (v44 < 0.0 || v45 < 0.0)
          {
            v235.origin.x = v42;
            v235.origin.y = v43;
            v235.size.width = v44;
            v235.size.height = v45;
            *&v47 = CGRectStandardize(v235);
          }

          else
          {
            v47 = v42;
            v48 = v43;
            v49 = v44;
            v50 = v45;
          }

          v226 = vmlaq_n_f64(v205, v207, v49);
          v227 = vmlaq_f64(vmulq_n_f64(v209, v50), 0, v207);
          v228 = vaddq_f64(v208, vmlaq_n_f64(vmulq_n_f64(v209, v48), v207, v47));
          if (v46)
          {
            v51 = 0;
          }

          else
          {
            v214.f64[0] = (x - v42) * (1.0 / v44);
            v214.f64[1] = (y - v43) * (1.0 / v45);
            v215.f64[0] = 1.0 / v44 * (width + x - v42) - v214.f64[0];
            v215.f64[1] = 1.0 / v45 * (height + y - v43) - v214.f64[1];
            v51 = &v214;
          }

          v19 = v200;
          v18 = v202;
          v21 = v198;
          v20 = v199;
          v203 = v51;
          ImageTransformation = ripc_GetImageTransformation(v32, &v230 + 2, v33, v206, v51, v226.f64, v213, v212, &v220);
          if (!ImageTransformation)
          {
            goto LABEL_79;
          }

          v53 = ImageTransformation;
          v196 = v33;
          if (ImageTransformation >= 4)
          {
            ShouldInterpolate = CGImageGetShouldInterpolate(v32);
            ImageInterpolation = ripc_GetImageInterpolation(a2, *(*(a3 + 120) + 4), ShouldInterpolate);
            v201 = ImageInterpolation;
            if (ImageInterpolation >= 3)
            {
              LODWORD(v54) = ImageInterpolation;
              if ((v53 & 2) != 0)
              {
                v65 = 0;
              }

              else
              {
                v65 = v213;
              }

              if (ripc_GetImageInterpolationSize(v226.f64, &v223, &v222, v65))
              {
                v54 = v54;
              }

              else
              {
                v54 = 1;
              }
            }

            else
            {
              v54 = 1;
            }
          }

          else
          {
            v54 = 1;
            v201 = 1;
          }

          RenderingIntent = CGImageGetRenderingIntent(v32);
          if (!RenderingIntent)
          {
            v67 = *(*(a3 + 120) + 4);
            v68 = v67 << 12;
            if (((v67 >> 20) & 0xF) != 0)
            {
              v69 = v67 << 8;
            }

            else
            {
              v69 = v67 << 12;
            }

            if (!(v69 >> 28))
            {
              v69 = v68;
            }

            RenderingIntent = (v69 >> 28);
          }

          v70 = (v53 & 2) != 0 ? 0 : v213;
          v71 = ripc_AcquireRIPImageData(v12, v32, v223, v222, v70, 0, v54, RenderingIntent);
          if (!v71)
          {
LABEL_79:
            if (v31)
            {
              CFRelease(v31);
            }

            a6 = v204;
            goto LABEL_32;
          }

          v75 = v71;
          if (v53 >= 4)
          {
            v76 = &v226;
          }

          else
          {
            v76 = 0;
          }

          ripc_InitializeImage(&v216, v212, v71, v201, v196, v206, v76, v203, v72, v73, v74);
          goto LABEL_76;
        }

        v55 = v42 + floor((x - v42) / v44) * v44;
        v56 = v43 + floor((y - v43) / v45) * v45;
        _D31 = ceil((width + x - v55) / v44);
        v58 = ceil((height + y - v56) / v45);
        v25 = 0uLL;
        if (_D31 <= 0.0 && v58 <= 0.0)
        {
          goto LABEL_255;
        }

        if (v44 < 0.0 || v45 < 0.0)
        {
          v236.origin.x = v55;
          v236.origin.y = v56;
          v236.size.width = v44;
          v236.size.height = v45;
          v192 = v58;
          v194 = _D31;
          *&v59 = CGRectStandardize(v236);
          v58 = v192;
          _D31 = v194;
          v25 = 0uLL;
        }

        else
        {
          v59 = v55;
          v60 = v56;
          v61 = v44;
          v62 = v45;
        }

        _Q4 = vmlaq_n_f64(v205, v207, v61);
        v80 = vmlaq_f64(vmulq_n_f64(v209, v62), v25, v207);
        v81 = vaddq_f64(v208, vmlaq_n_f64(vmulq_n_f64(v209, v60), v207, v59));
        v226 = _Q4;
        v227 = v80;
        v228 = v81;
        v82 = 1.0 / (v44 * _D31);
        v83 = 1.0 / (v45 * v58);
        v84 = (x - v55) * v82;
        v85 = (y - v56) * v83;
        v214.f64[0] = v84;
        v214.f64[1] = v85;
        v86 = (height + y - v56) * v83;
        v87 = (width + x - v55) * v82 - v84;
        v88 = v86 - v85;
        v215.f64[0] = v87;
        v215.f64[1] = v88;
        v89 = v81.f64[0] + _Q4.f64[0] * _D31;
        __asm { FMLA            D18, D31, V4.D[1] }

        v95 = v89 > v81.f64[0] ? v81.f64[0] + _Q4.f64[0] * _D31 : v81.f64[0];
        if (v89 >= v81.f64[0])
        {
          v96 = v81.f64[0];
        }

        else
        {
          v95 = v81.f64[0];
          v96 = v81.f64[0] + _Q4.f64[0] * _D31;
        }

        v97 = _D18 > v81.f64[1] ? _D18 : v81.f64[1];
        if (_D18 >= v81.f64[1])
        {
          v98 = v81.f64[1];
        }

        else
        {
          v97 = v81.f64[1];
          v98 = _D18;
        }

        v99 = v89 + v80.f64[0] * v58;
        v100 = _D18 + v80.f64[1] * v58;
        v101 = v99 > v95 ? v99 : v95;
        v102 = v99 >= v96 ? v101 : v95;
        v103 = v99 >= v96 ? v96 : v99;
        v104 = v100 > v97 ? v100 : v97;
        if (v100 >= v98)
        {
          v105 = v98;
        }

        else
        {
          v104 = v97;
          v105 = v100;
        }

        v106 = v99 - _Q4.f64[0] * _D31;
        if (v106 >= v103)
        {
          if (v106 > v102)
          {
            v102 = v99 - _Q4.f64[0] * _D31;
          }
        }

        else
        {
          v103 = v99 - _Q4.f64[0] * _D31;
        }

        v107 = v100 - _Q4.f64[1] * _D31;
        v108 = v107 > v104 ? v107 : v104;
        if (v107 >= v105)
        {
          v109 = v105;
        }

        else
        {
          v108 = v104;
          v109 = v107;
        }

        v110 = v103 >= SDWORD2(v230) ? v103 : SDWORD2(v230);
        v111 = v102 <= v231 + SDWORD2(v230) ? v102 : v231 + SDWORD2(v230);
        if (v110 >= v111)
        {
          goto LABEL_255;
        }

        v112 = SHIDWORD(v230);
        if (v109 >= SHIDWORD(v230))
        {
          v112 = v109;
        }

        v113 = v108 <= SDWORD1(v231) + SHIDWORD(v230) ? v108 : SDWORD1(v231) + SHIDWORD(v230);
        if (v112 >= v113)
        {
LABEL_255:
          a6 = v204;
          v19 = v200;
          v18 = v202;
          v21 = v198;
          v20 = v199;
          if (!v31)
          {
            goto LABEL_33;
          }

LABEL_31:
          CFRelease(v31);
LABEL_32:
          v25 = 0uLL;
          goto LABEL_33;
        }

        v114 = v103 + 0.00390625;
        if (v103 + 0.00390625 <= 1073741820.0)
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

        v116 = v103 + v102 - v103 + -0.00390625;
        if (v116 <= 1073741820.0)
        {
          if (v116 >= -1073741820.0)
          {
            v117 = vcvtpd_s64_f64(v116);
          }

          else
          {
            v117 = -1073741823;
          }
        }

        else
        {
          v117 = 0x3FFFFFFF;
        }

        v118 = v109 + 0.00390625;
        if (v109 + 0.00390625 <= 1073741820.0)
        {
          v120 = vcvtmd_s64_f64(v118);
          if (v118 >= -1073741820.0)
          {
            v119 = v120;
          }

          else
          {
            v119 = -1073741823;
          }
        }

        else
        {
          v119 = 0x3FFFFFFF;
        }

        v121 = v109 + v108 - v109 + -0.00390625;
        if (v121 <= 1073741820.0)
        {
          v122 = vcvtpd_s64_f64(v121);
          if (v121 < -1073741820.0)
          {
            v122 = -1073741823;
          }
        }

        else
        {
          v122 = 0x3FFFFFFF;
        }

        v123 = v33;
        v124 = v206;
        v125 = v117 - v115;
        v126 = _D31 * v33;
        if (v126 == (v117 - v115))
        {
          v128 = v58;
          v127 = v58 * v124;
          v129 = fabs(_Q4.f64[1]);
          v130 = v58 * v124 == (v122 - v119) && v129 <= 0.00390625;
          v131 = vabdd_f64(_Q4.f64[0], v123);
          v132 = fabs(v80.f64[0]);
          v134 = v130 && v131 <= 0.00390625 && v132 <= 0.00390625;
          v135 = vabdd_f64(v80.f64[1], v124);
          if (v134 && v135 <= 0.00390625)
          {
            v137 = 1;
            v58 = v128;
LABEL_169:
            v138 = 1.0 / v123;
            v139 = 1.0 / v124;
            v140 = v138 * _Q4.f64[0];
            _Q4.f64[0] = v138 * _Q4.f64[1];
            v226.f64[0] = v140;
            v226.f64[1] = v138 * _Q4.f64[1];
            v141 = v139 * v80.f64[0];
            v142 = v139 * v80.f64[1];
            v227.f64[0] = v139 * v80.f64[0];
            v227.f64[1] = v139 * v80.f64[1];
            v143 = v126 * v84;
            v144 = v127 * v85;
            v80.f64[0] = v126 * v87;
            v145 = v127 * v88;
            v81.f64[0] = v81.f64[0] + v140 * v143 + v141 * v144;
            v146 = v81.f64[1] + v138 * _Q4.f64[1] * v143 + v139 * v80.f64[1] * v144;
            v147 = v81.f64[0] + v140 * v80.f64[0];
            v148 = v146 + v138 * _Q4.f64[1] * v80.f64[0];
            if (v147 > v81.f64[0])
            {
              v149 = v81.f64[0] + v140 * v80.f64[0];
            }

            else
            {
              v149 = v81.f64[0];
            }

            if (v147 >= v81.f64[0])
            {
              v150 = v81.f64[0];
            }

            else
            {
              v149 = v81.f64[0];
              v150 = v81.f64[0] + v140 * v80.f64[0];
            }

            if (v148 > v146)
            {
              v151 = v146 + _Q4.f64[0] * v80.f64[0];
            }

            else
            {
              v151 = v146;
            }

            if (v148 >= v146)
            {
              v152 = v151;
            }

            else
            {
              v152 = v146;
            }

            if (v148 >= v146)
            {
              v153 = v146;
            }

            else
            {
              v153 = v146 + _Q4.f64[0] * v80.f64[0];
            }

            v154 = v147 + v141 * v145;
            v155 = v148 + v142 * v145;
            if (v154 > v149)
            {
              v156 = v154;
            }

            else
            {
              v156 = v149;
            }

            if (v154 >= v150)
            {
              v157 = v150;
            }

            else
            {
              v156 = v149;
              v157 = v154;
            }

            if (v155 > v152)
            {
              v158 = v148 + v142 * v145;
            }

            else
            {
              v158 = v152;
            }

            if (v155 >= v153)
            {
              v159 = v153;
            }

            else
            {
              v158 = v152;
              v159 = v155;
            }

            v160 = v154 - v140 * v80.f64[0];
            if (v160 >= v157)
            {
              if (v160 > v156)
              {
                v156 = v154 - v140 * v80.f64[0];
              }
            }

            else
            {
              v157 = v154 - v140 * v80.f64[0];
            }

            v161 = v155 - _Q4.f64[0] * v80.f64[0];
            if (v161 > v158)
            {
              v162 = v161;
            }

            else
            {
              v162 = v158;
            }

            if (v161 >= v159)
            {
              v163 = v159;
            }

            else
            {
              v162 = v158;
              v163 = v161;
            }

            if (v110 >= v157)
            {
              v164 = v110;
            }

            else
            {
              v164 = v157;
            }

            if (v111 <= v156)
            {
              v165 = v111;
            }

            else
            {
              v165 = v156;
            }

            if (v164 < v165)
            {
              if (v112 >= v163)
              {
                v166 = v112;
              }

              else
              {
                v166 = v163;
              }

              if (v113 <= v162)
              {
                v162 = v113;
              }

              if (v166 < v162)
              {
                v167 = v164 + 0.00390625;
                if (v164 + 0.00390625 <= 1073741820.0)
                {
                  v168 = vcvtmd_s64_f64(v167);
                  if (v167 < -1073741820.0)
                  {
                    v168 = -1073741823;
                  }
                }

                else
                {
                  v168 = 0x3FFFFFFF;
                }

                LODWORD(v220) = v168;
                v169 = v164 + v165 - v164 + -0.00390625;
                v191 = v122 - v119;
                if (v169 <= 1073741820.0)
                {
                  v170 = vcvtpd_s64_f64(v169);
                  if (v169 < -1073741820.0)
                  {
                    v170 = -1073741823;
                  }
                }

                else
                {
                  v170 = 0x3FFFFFFF;
                }

                LODWORD(v221) = v170 - v168;
                v171 = v166 + 0.00390625;
                if (v166 + 0.00390625 <= 1073741820.0)
                {
                  v172 = vcvtmd_s64_f64(v171);
                  if (v171 < -1073741820.0)
                  {
                    v172 = -1073741823;
                  }
                }

                else
                {
                  v172 = 0x3FFFFFFF;
                }

                HIDWORD(v220) = v172;
                v173 = v166 + v162 - v166 + -0.00390625;
                if (v173 <= 1073741820.0)
                {
                  if (v173 >= -1073741820.0)
                  {
                    v174 = vcvtpd_s64_f64(v173);
                  }

                  else
                  {
                    v174 = -1073741823;
                  }
                }

                else
                {
                  v174 = 0x3FFFFFFF;
                }

                v193 = v119;
                v195 = v115;
                v175 = v58;
                v176 = _D31;
                HIDWORD(v221) = v174 - v172;
                v190 = v137;
                v197 = v33;
                if (v137)
                {
                  v177 = 1;
                  v189 = 1;
                }

                else
                {
                  v178 = CGImageGetShouldInterpolate(v32);
                  v179 = ripc_GetImageInterpolation(a2, *(*(a3 + 120) + 4), v178);
                  v189 = v179;
                  if (v179 >= 3)
                  {
                    LODWORD(v177) = v179;
                    if (ripc_GetImageInterpolationSize(v226.f64, &v223, &v222, 0))
                    {
                      v177 = v177;
                    }

                    else
                    {
                      v177 = 0;
                    }
                  }

                  else
                  {
                    v177 = 0;
                  }
                }

                v180 = CGImageGetRenderingIntent(v32);
                if (!v180)
                {
                  v181 = *(*(a3 + 120) + 4);
                  v182 = v181 << 12;
                  if (((v181 >> 20) & 0xF) != 0)
                  {
                    v183 = v181 << 8;
                  }

                  else
                  {
                    v183 = v181 << 12;
                  }

                  if (!(v183 >> 28))
                  {
                    v183 = v182;
                  }

                  v180 = (v183 >> 28);
                }

                v184 = ripc_AcquireRIPImageData(v12, v32, v223, v222, 0, *(v12[6] + 32), v177, v180);
                v25 = 0uLL;
                if (v184)
                {
                  v75 = v184;
                  v186.n128_u64[0] = __PAIR64__(v193, v195);
                  v186.n128_u64[1] = __PAIR64__(v191, v125);
                  if (v190)
                  {
                    v187 = 0;
                  }

                  else
                  {
                    v187 = &v226;
                  }

                  ripc_InitializeImageTile(&v216, v184, v189, v197, v206, v187, v214.f64, v186, v176, v175, v185);
                  v19 = v200;
                  v18 = v202;
                  v21 = v198;
                  v20 = v199;
LABEL_76:
                  a6 = v204;
                  if (v31)
                  {
                    CFRelease(v31);
                  }

                  ripc_RenderImage(v12, a2, a3, &v229, &v220, &v216, v77, v78);
                  ripc_ReleaseRIPImageData(v75);
                  goto LABEL_32;
                }
              }
            }

            goto LABEL_255;
          }

          v58 = v128;
        }

        else
        {
          v127 = v58 * v124;
        }

        v137 = 0;
        goto LABEL_169;
      }
    }
  }

  return 0;
}

double ripc_InitializeImageTile(__n128 *a1, unint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, double *a7, __n128 a8, double a9, double a10, float64x2_t a11)
{
  a1[1].n128_u64[0] = a2;
  a1[2].n128_u16[5] = -1;
  *a1 = a8;
  if (!a6)
  {
    a1[3].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
    a1[2].n128_u16[4] = 0;
    goto LABEL_18;
  }

  v11 = *(a2 + 40);
  if (v11 == a4)
  {
    v12 = *(a2 + 44);
    if (v12 == a5)
    {
      _D4 = a5 * a10;
      a11.f64[0] = (a8.n128_u32[3] + a8.n128_u32[1]) - (*(a6 + 40) + *(a6 + 24) * _D4);
      _Q6 = *(a6 + 8);
      __asm { FMLA            D5, D4, V6.D[1] }

      *(a6 + 32) = _D5 - a8.n128_i32[0];
      *(a6 + 40) = a11.f64[0];
      a8 = vnegq_f64(_Q6);
      *(a6 + 8) = a8;
      a1[1].n128_u64[1] = a6;
      a1[3].n128_u64[0] = 0;
      if (a3 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = -1;
      }

      a1[2].n128_u16[4] = v20;
      goto LABEL_18;
    }

    a11 = *a6;
    v22 = *(a6 + 16);
    v21 = *(a6 + 24);
    if (a3 == 1)
    {
      goto LABEL_12;
    }

    a1[2].n128_u16[4] = -1;
  }

  else
  {
    a11 = *a6;
    v22 = *(a6 + 16);
    v21 = *(a6 + 24);
    if (a3 == 1)
    {
LABEL_12:
      a1[2].n128_u16[4] = 0;
      goto LABEL_15;
    }

    a1[2].n128_u16[4] = -1;
    a11 = vmulq_n_f64(a11, a4 / v11);
    v12 = *(a2 + 44);
  }

  if (v12 != a5)
  {
    v25 = a5 / v12;
    v24 = v22 * v25;
    v23 = v21 * v25;
    goto LABEL_17;
  }

LABEL_15:
  v23 = v21;
  v24 = v22;
LABEL_17:
  v26 = (a8.n128_u32[3] + a8.n128_u32[1]);
  v27 = a8.n128_u32[0];
  v28 = a5 * a10;
  v29 = *(a6 + 40);
  *(a6 + 32) = *(a6 + 32) + v22 * v28 - v27;
  *(a6 + 40) = v26 - (v29 + v21 * v28);
  *a6 = a11.f64[0];
  *(a6 + 8) = -a11.f64[1];
  a8.n128_f64[0] = -v24;
  *(a6 + 16) = -v24;
  *(a6 + 24) = v23;
  a1[1].n128_u64[1] = a6;
  a1[3].n128_u64[0] = 0;
LABEL_18:
  a1[2].n128_u64[0] = a7;
  if (a7)
  {
    LODWORD(a11.f64[0]) = *(a2 + 40);
    a8.n128_u32[0] = *(a2 + 44);
    v30 = a8.n128_u64[0] * a10;
    v31 = a7[1];
    v32 = v30 - (v31 + a7[3]) * v30;
    v33 = v30 - v31 * v30;
    v34 = *&a11.f64[0] * a9;
    v35 = *a7 + a7[2];
    v36 = *a7 * v34;
    a8.n128_f64[0] = v33 - v32;
    *a7 = v36;
    a7[1] = v32;
    a7[2] = v35 * v34 - v36;
    a7[3] = a8.n128_f64[0];
  }

  return a8.n128_f64[0];
}

void ripc_DrawLines(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = *(a1 + 288);
  }

  else
  {
    v9 = 0;
  }

  memset(v27, 0, sizeof(v27));
  v25 = 0;
  if (ripc_GetRenderingState(v9, a2, a3, v27))
  {
    v10 = *(*(a3 + 144) + 8);
    v24 = *(v9 + 24);
    v11 = *(v9 + 40);
    v23[0] = v10;
    v23[1] = v11;
    if (*(a2 + 81) == 1)
    {
      v12 = *(*(a3 + 120) + 7) & 1;
    }

    else
    {
      v12 = 0;
    }

    LOBYTE(v25) = v12;
    v26 = &v27[1] + 8;
    memset(v22, 0, sizeof(v22));
    ripc_GetRenderStroke(a3, v22, (a3 + 24));
    v17 = *(v9 + 64);
    if (!v17)
    {
      v17 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
      *v17 = RIPRenderCreate_ripr_class;
      v17[2] = 1;
      *(v17 + 2) = 0;
      *(v9 + 64) = v17;
    }

    if (a5 && a4 && *v17)
    {
      v18 = ripr_Acquire(v17, v23);
      if (v18)
      {
        v29 = 0;
        memset(v28, 0, sizeof(v28));
        ripr_stroke_acquire(v18, v28, v22, 0.0, v19, v20, v21);
      }
    }

    ripc_Render(v9, a2, a3, v27, 1uLL, v13, v14, v15, v16);
  }
}

uint64_t ripc_GetColorTransform(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
  }

  else
  {
    v1 = 0;
  }

  ripc_InitializeColorTransform(v1);
  return *(v1 + 120);
}

CFDataRef CGCMSUtilsGetICCProfileData(CGColorSpaceRef space, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((CGCMSUtilsGetICCProfileData_warned & 1) == 0)
  {
    CGCMSUtilsGetICCProfileData_warned = 1;
  }

  return CGColorSpaceCopyICCData(space);
}

float64x2_t *CG::Quadratic::length(float64x2_t *this, int a2)
{
  v3 = this[1].f64[0];
  if (this->f64[0] != v3 || this->f64[1] != this[1].f64[1])
  {
    v4 = this[2].f64[0];
    if (v3 == v4)
    {
      v6 = this[1].f64[1];
      v5 = this[2].f64[1];
      if (v6 == v5)
      {
        return this;
      }
    }

    else
    {
      v5 = this[2].f64[1];
      v6 = this[1].f64[1];
    }

    if (a2 <= 32 && (v5 - v6 + this->f64[1] - v6) * (v5 - v6 + this->f64[1] - v6) + (this->f64[0] - v3 + v4 - v3) * (this->f64[0] - v3 + v4 - v3) >= 4.0)
    {
      v7 = this[1];
      __asm { FMOV            V3.2D, #0.5 }

      v13 = vaddq_f64(*this, vmulq_f64(vsubq_f64(v7, *this), _Q3));
      v14 = this[2];
      v15 = vaddq_f64(v7, vmulq_f64(vsubq_f64(v14, v7), _Q3));
      v18[0] = *this;
      v18[1] = v13;
      v16 = vsubq_f64(v13, v18[0]);
      v19 = vaddq_f64(v13, vmulq_f64(vsubq_f64(v15, v13), _Q3));
      v20 = vaddq_f64(v16, v16);
      v21 = vsubq_f64(vsubq_f64(v19, v13), v16);
      v22[0] = v19;
      v22[1] = v15;
      v22[2] = v14;
      v17 = vsubq_f64(v15, v19);
      v22[3] = vaddq_f64(v17, v17);
      v22[4] = vsubq_f64(vsubq_f64(v14, v15), v17);
      CG::Quadratic::length(v18, a2 + 1);
      return CG::Quadratic::length(v22, a2 + 1);
    }
  }

  return this;
}

float64x2_t *CG::Quadratic::index(float64x2_t *this, double a2)
{
  if (a2 > 0.0)
  {
    v3 = this;
    this = CG::Quadratic::length(this, 0);
    if (v4 > a2)
    {
      v15 = *v3;
      v16 = v3[1];
      v13 = v3[2];
      v14 = vsubq_f64(v16, *v3);
      v12 = vsubq_f64(v13, v16);
      v5 = 1.0;
      v6 = 0.0;
      do
      {
        v7 = (v5 + v6) * 0.5;
        v8 = vaddq_f64(v16, vmulq_n_f64(v12, v7));
        v17 = v15;
        v18 = vaddq_f64(v15, vmulq_n_f64(v14, v7));
        v19 = vaddq_f64(v18, vmulq_n_f64(vsubq_f64(v8, v18), v7));
        v9 = vsubq_f64(v18, v15);
        v20 = vaddq_f64(v9, v9);
        v21 = vsubq_f64(vsubq_f64(v19, v18), v9);
        v22 = v19;
        v23 = v8;
        v10 = vsubq_f64(v8, v19);
        v24 = v13;
        v25 = vaddq_f64(v10, v10);
        v26 = vsubq_f64(vsubq_f64(v13, v8), v10);
        this = CG::Quadratic::length(&v17, 0);
        if (v11 <= a2)
        {
          v6 = (v5 + v6) * 0.5;
        }

        else
        {
          v5 = (v5 + v6) * 0.5;
        }
      }

      while (v5 - v6 > 0.0001);
    }
  }

  return this;
}

void cmap_cid_set_release(void **a1)
{
  if (a1)
  {
    free(a1[3]);

    free(a1);
  }
}

char *add_range(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 16);
  if (v6 == *(a1 + 8))
  {
    v7 = 2 * v6 + 8;
    result = malloc_type_realloc(*(a1 + 24), 12 * v7, 0x1000040CBA68D63uLL);
    if (!result)
    {
      return result;
    }

    *(a1 + 24) = result;
    *(a1 + 8) = v7;
    v6 = *(a1 + 16);
  }

  else
  {
    result = *(a1 + 24);
  }

  *(a1 + 16) = v6 + 1;
  v9 = &result[12 * v6];
  *v9 = a2;
  *(v9 + 2) = a3;
  return result;
}

uint64_t cmap_cid_set_normalize(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    qsort(*(result + 24), *(result + 16), 0xCuLL, compare_ranges);
    result = contains_overlaps(v1);
    if (result)
    {
      v2 = *v1;
      if (v2 > 4 || ((1 << v2) & 0x16) == 0)
      {
        v5 = 0;
      }

      else
      {
        v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401AE633E8uLL);
        v5 = v4;
        if (v4)
        {
          *v4 = v2;
          v4[32] = 0;
        }
      }

      v6 = *(v1 + 2);
      if (v6)
      {
        v7 = 0;
        v8 = -12;
        do
        {
          add_nonoverlapping_range(v5, (*(v1 + 3) + 12 * v6 + v8), 0);
          ++v7;
          v6 = *(v1 + 2);
          v8 -= 12;
        }

        while (v7 < v6);
      }

      free(*(v1 + 3));
      v9 = *v5;
      v10 = *(v5 + 1);
      *(v1 + 4) = *(v5 + 4);
      *v1 = v9;
      *(v1 + 1) = v10;
      *(v5 + 3) = 0;
      cmap_cid_set_release(v5);
      result = contains_overlaps(v1);
      if (result)
      {
        _CGHandleAssert("remove_overlaps", 203, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/CMaps/cmap-cid-set.c", "!contains_overlaps(set)", "set %p contains overlaps", v11, v12, v13, v1);
      }
    }

    v1[32] = 0;
  }

  return result;
}

uint64_t contains_overlaps(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = *(a1 + 24);
    v4 = v1 - 1;
    v5 = (v3 + 16);
    v6 = 1;
    while (1)
    {
      v7 = v2 + 1;
      v8 = v2 + 1 < v1;
      if (v2 + 1 < v1)
      {
        break;
      }

LABEL_8:
      --v4;
      v5 += 3;
      v6 = v8;
      v2 = v7;
      if (v7 == v1)
      {
        goto LABEL_9;
      }
    }

    v9 = (v3 + 12 * v2);
    v10 = v5;
    v11 = v4;
    while (v9[1] < *(v10 - 1) || *v9 > *v10)
    {
      v10 += 3;
      if (!--v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6 & 1;
}

char *add_nonoverlapping_range(char *result, unsigned int *a2, unint64_t a3)
{
  v4 = result;
  v5 = *(result + 2);
  if (v5 <= a3)
  {
LABEL_6:
    v12 = *a2;
    v13 = a2[2];

    return add_range(result, v12, v13);
  }

  else
  {
    v6 = a3;
    v7 = *(result + 3);
    v8 = a2[1];
    v9 = (v7 + 12 * a3 + 4);
    while (1)
    {
      v10 = *(v9 - 1);
      if (v8 >= v10)
      {
        v11 = *a2;
        if (v11 <= *v9)
        {
          break;
        }
      }

      ++v6;
      v9 += 3;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    v19 = 0;
    v18 = 0;
    if (v11 < v10)
    {
      v14 = *(a2 + 4);
      v18 = v11 | ((v10 - 1) << 32);
      v19 = v14;
      result = add_nonoverlapping_range(result, &v18, v6 + 1);
      v7 = *(v4 + 3);
      v8 = a2[1];
    }

    v15 = *(v7 + 12 * v6 + 4);
    if (v8 > v15)
    {
      v16 = v15 + 1;
      v17 = v16 | (v8 << 32);
      LODWORD(v16) = (v16 + *(a2 + 4) - *a2);
      v18 = v17;
      v19 = v16;
      return add_nonoverlapping_range(v4, &v18, v6 + 1);
    }
  }

  return result;
}

uint64_t compare_ranges(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t cmap_cid_set_find_matching_range(uint64_t result, int a2, uint64_t a3)
{
  __key = a2;
  if (result)
  {
    v4 = result;
    cmap_cid_set_normalize(result);
    result = bsearch(&__key, *(v4 + 24), *(v4 + 16), 0xCuLL, compare_code_with_range);
    if (result)
    {
      v5 = *result;
      *(a3 + 8) = *(result + 8);
      *a3 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t compare_code_with_range(_DWORD *a1, _DWORD *a2)
{
  if (*a1 >= *a2)
  {
    return *a1 > a2[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t cmap_cid_set_create_with_stream(__CFReadStream *a1)
{
  buffer[0] = 0;
  v2 = 0;
  if (!CFReadStreamRead(a1, buffer, 1))
  {
    return v2;
  }

  v3 = buffer[0];
  if (!buffer[0])
  {
    return v2;
  }

  if (buffer[0] > 4u || ((1 << buffer[0]) & 0x16) == 0)
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200401AE633E8uLL);
  v2 = v5;
  if (!v5)
  {
    return v2;
  }

  *v5 = v3;
  v5[32] = 0;
  *buffer = 0;
  v6 = CFReadStreamRead(a1, buffer, 4);
  v7 = bswap32(*buffer);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 8) = v8;
  v9 = malloc_type_malloc(4 * (v8 + 2 * v8), 0x1000040CBA68D63uLL);
  *(v2 + 24) = v9;
  if (!v9)
  {
    free(v2);
    return 0;
  }

  if (v8)
  {
    if ((v3 - 1) >= 2 && v3 != 4)
    {
      abort();
    }

    do
    {
      if (v3 == 2)
      {
        *buffer = 0;
        v13 = CFReadStreamRead(a1, buffer, 2);
        v14 = bswap32(*buffer) >> 16;
        if (v13)
        {
          v10 = v14;
        }

        else
        {
          v10 = 0;
        }

        *buffer = 0;
        v11 = CFReadStreamRead(a1, buffer, 2);
        v12 = bswap32(*buffer) >> 16;
      }

      else if (v3 == 1)
      {
        buffer[0] = 0;
        if (CFReadStreamRead(a1, buffer, 1))
        {
          v10 = buffer[0];
        }

        else
        {
          v10 = 0;
        }

        buffer[0] = 0;
        v11 = CFReadStreamRead(a1, buffer, 1);
        v12 = buffer[0];
      }

      else
      {
        *buffer = 0;
        v15 = CFReadStreamRead(a1, buffer, 4);
        v16 = bswap32(*buffer);
        if (v15)
        {
          v10 = v16;
        }

        else
        {
          v10 = 0;
        }

        *buffer = 0;
        v11 = CFReadStreamRead(a1, buffer, 4);
        v12 = bswap32(*buffer);
      }

      if (v11)
      {
        v17 = v12;
      }

      else
      {
        v17 = 0;
      }

      *buffer = 0;
      v18 = CFReadStreamRead(a1, buffer, 2);
      v19 = bswap32(*buffer) >> 16;
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      add_range(v2, v10 | (v17 << 32), v20);
      *(v2 + 32) = 1;
      --v8;
    }

    while (v8);
  }

  *(v2 + 32) = 0;
  return v2;
}

uint64_t CGPDFTaggedNodeEqualToPDFTaggedNode(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 88);
    v6 = v5 ? CFArrayGetCount(v5) : 0;
    v7 = *(a2 + 88);
    v8 = v7 ? CFArrayGetCount(v7) : 0;
    Name = CGPDFTaggedNodeTypeGetName(*(a1 + 16));
    v10 = CGPDFTaggedNodeTypeGetName(*(a2 + 16));
    TextRange = CGPDFTaggedNodeGetTextRange(a1);
    v13 = v12;
    v15 = CGPDFTaggedNodeGetTextRange(a2);
    result = 0;
    if (v6 == v8 && Name == v10)
    {
      result = 0;
      if (TextRange == v15 && v13 == v14)
      {
        if (v6)
        {
          v16 = 0;
          v17 = v6 - 1;
          do
          {
            ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(a1, v16);
            v19 = CGPDFTaggedNodeGetChildAtIndex(a2, v16);
            result = CGPDFTaggedNodeEqualToPDFTaggedNode(ChildAtIndex, v19);
            if (!result)
            {
              break;
            }
          }

          while (v17 != v16++);
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetTextRange(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 96))
    {
      if (!*(result + 184))
      {
        result = GetTextRangeForTaggedNode(result);
        *(v1 + 192) = result;
        *(v1 + 200) = v2;
        *(v1 + 184) = 1;
        return result;
      }

      return *(result + 192);
    }

    if (*(result + 184))
    {
      return *(result + 192);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __CGPDFTaggedNodeGetTextRange_block_invoke;
    v11[3] = &__block_descriptor_40_e12_B24__0_v8Q16l;
    v11[4] = result;
    CGPDFTaggedNodeEnumerateChildren(result, v11);
    result = *(v1 + 192);
    if (!(result + *(v1 + 200)))
    {
      v3 = v1;
      while (1)
      {
        v4 = v3[10];
        if (!v4)
        {
          break;
        }

        v5 = *(v4 + 88);
        if (v5)
        {
          v6.length = CFArrayGetCount(*(v4 + 88));
        }

        else
        {
          v6.length = 0;
        }

        v6.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v6, v3);
        v3 = v4;
        if (FirstIndexOfValue >= 1)
        {
          ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(v4, FirstIndexOfValue - 1);
          TextRange = CGPDFTaggedNodeGetTextRange(ChildAtIndex);
          goto LABEL_17;
        }
      }

      TextRange = 0;
      v10 = 0;
LABEL_17:
      result = TextRange + v10;
      *(v1 + 192) = result;
    }

    *(v1 + 184) = 1;
    *(v1 + 208) = 0;
  }

  return result;
}

const void *CGPDFTaggedNodeGetChildAtIndex(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 88);
  if (!v3 || CFArrayGetCount(v3) <= a2)
  {
    return 0;
  }

  v5 = *(a1 + 88);

  return CFArrayGetValueAtIndex(v5, a2);
}

uint64_t GetTextRangeForTaggedNode(uint64_t a1)
{
  v1 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = __Block_byref_object_copy__60;
  v19 = __Block_byref_object_dispose__61;
  v20 = "";
  v21 = 0;
  v22 = 0;
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = v2 == 700 || v2 == 1;
    if (v3 && (CGPDFNodeGetTextRange(*(a1 + 96)), v4 >= 1))
    {
      v5 = v16[6];
      v6 = v16[7];
      TextRange = CGPDFNodeGetTextRange(*(v1 + 96));
      v1 = TextRange;
      v9 = v8;
      if (v6 >= 1)
      {
        if (v8 < 1)
        {
          v9 = v6;
          v1 = v5;
        }

        else
        {
          v10 = v6 + v5 - TextRange;
          if (v8 > v10)
          {
            v10 = v8;
          }

          v11 = v8 - v5 + TextRange;
          if (v6 > v11)
          {
            v11 = v6;
          }

          if (v5 < TextRange)
          {
            v9 = v11;
          }

          else
          {
            v9 = v10;
          }

          if (v5 < TextRange)
          {
            v1 = v5;
          }
        }
      }

      v12 = v16;
      v16[6] = v1;
      v12[7] = v9;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___ZL25GetTextRangeForTaggedNodeP15CGPDFTaggedNode_block_invoke;
      v14[3] = &unk_1E6E31640;
      v14[4] = &v15;
      CGPDFTaggedNodeEnumerateChildren(v1, v14);
      v1 = v16[6];
    }
  }

  _Block_object_dispose(&v15, 8);
  return v1;
}

void sub_18422050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGPDFTaggedNodeGetTextRange_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  v5 = *(v3 + 200);
  TextRange = CGPDFTaggedNodeGetTextRange(a2);
  if (v5 >= 1)
  {
    if (v7 < 1)
    {
      v7 = v5;
LABEL_8:
      TextRange = v4;
      goto LABEL_11;
    }

    if (v4 < TextRange)
    {
      if (v5 <= v7 - v4 + TextRange)
      {
        v7 = v7 - v4 + TextRange;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_8;
    }

    if (v7 <= v5 + v4 - TextRange)
    {
      v7 = v5 + v4 - TextRange;
    }
  }

LABEL_11:
  v8 = *(a1 + 32);
  *(v8 + 192) = TextRange;
  *(v8 + 200) = v7;
  return 1;
}

void CGPDFTaggedNodeEnumerateChildren(uint64_t a1, void *a2)
{
  v11 = a2;
  if (a1)
  {
    if (v11)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        Count = CFArrayGetCount(v3);
        if (Count)
        {
          v5 = 0;
          v6 = Count - 1;
          do
          {
            ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(a1, v5);
            v8 = v11[2](v11, ChildAtIndex, v5);
            if (v6 == v5++)
            {
              v10 = 0;
            }

            else
            {
              v10 = v8;
            }
          }

          while ((v10 & 1) != 0);
        }
      }
    }
  }
}

__n128 __Block_byref_object_copy__60(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZL25GetTextRangeForTaggedNodeP15CGPDFTaggedNode_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  TextRangeForTaggedNode = GetTextRangeForTaggedNode(a2);
  if (v5 >= 1)
  {
    if (v7 < 1)
    {
      v7 = v5;
LABEL_8:
      TextRangeForTaggedNode = v4;
      goto LABEL_11;
    }

    if (v4 < TextRangeForTaggedNode)
    {
      if (v5 <= v7 - v4 + TextRangeForTaggedNode)
      {
        v7 = v7 - v4 + TextRangeForTaggedNode;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_8;
    }

    if (v7 <= v5 + v4 - TextRangeForTaggedNode)
    {
      v7 = v5 + v4 - TextRangeForTaggedNode;
    }
  }

LABEL_11:
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 48) = TextRangeForTaggedNode;
  *(v8 + 56) = v7;
  return 1;
}

CFIndex CGPDFTaggedNodeGetChildCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t CGPDFTaggedNodeGetType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CGPDFTaggedNodeConvertStringRangeToTextRange(const PageLayout *a1, CFRange a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = &v11;
  if (*(a1 + 40) == 1)
  {
    return -1;
  }

  location = a2.location;
  result = *(a1 + 23);
  a2.location = *(a1 + 24);
  if (result != a2.location)
  {
    v6 = *(a2.location - 8);
    v7 = a2.length + location;
    v8 = -1;
    if ((location & 0x8000000000000000) == 0 && location < v6)
    {
      v8 = PageLayout::convertStringRangeIndexToTextRangeIndex(result, a2.location, location);
    }

    v9 = v8;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = PageLayout::convertStringRangeIndexToTextRangeIndex(*(a1 + 23), *(a1 + 24), v7);
      if (v7 < v6 && [*(a1 + 7) characterAtIndex:{v7, v10}] == 10)
      {
        ++v9;
      }
    }

    *&v14 = v8;
    *(&v14 + 1) = v9 - v8;
    std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](&v10, &v14);
    if (v11 == v12)
    {
      v2 = -1;
      if (!v12)
      {
        return v2;
      }
    }

    else
    {
      v2 = *v11;
    }

    v12 = v11;
    operator delete(v11);
    return v2;
  }

  __break(1u);
  return result;
}

void sub_184220850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGPDFTaggedNodePrint(uint64_t result)
{
  if (result)
  {
    return CGPDFTaggedNodePrintTabbed(result, 0);
  }

  return result;
}

uint64_t CGPDFTaggedNodePrintTabbed(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 88);
  if (!v4)
  {
    Count = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = a2;
    do
    {
      printf("    ");
      --v6;
    }

    while (v6);
    goto LABEL_8;
  }

  Count = CFArrayGetCount(v4);
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_8:
  Name = CGPDFTaggedNodeTypeGetName(*(v3 + 16));
  TextRange = CGPDFTaggedNodeGetTextRange(v3);
  v10 = v9;
  *&v11 = CGPDFTaggedNodeGetBounds(v3).n128_u64[0];
  if (*(v3 + 104))
  {
    v15 = "F";
  }

  else
  {
    v15 = "T";
  }

  result = printf("CGPDFTaggedNodeRef: %p, type: <%s>, page %d, child count: %zu, text range: [%d, %d], bounds: (%.2f, %.2f), [%.2f, %.2f] fromML: [%s]\n", v3, Name, *(v3 + 176), Count, TextRange, v10, v11, v12, v13, v14, v15);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(v3, i);
      v18 = ChildAtIndex;
      if (ChildAtIndex)
      {
        v19 = ChildAtIndex[4];
        if (v19 == 700 || v19 == 1)
        {
          if (a2 != -1)
          {
            v21 = a2 + 1;
            do
            {
              printf("    ");
              --v21;
            }

            while (v21);
          }

          v22 = CGPDFTaggedNodeTypeGetName(v19);
          result = printf("Leaf-node type: %s.\n", v22);
          continue;
        }
      }

      else
      {
        v19 = 0;
      }

      if (a2)
      {
        v23 = a2;
        do
        {
          printf("    ");
          --v23;
        }

        while (v23);
      }

      v24 = CGPDFTaggedNodeTypeGetName(v19);
      printf("Tagged node type: %s.\n", v24);
      result = CGPDFTaggedNodePrintTabbed(v18, a2 + 1);
    }
  }

  return result;
}

__n128 CGPDFTaggedNodeGetBounds(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      return *(a1 + 48);
    }

    else
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x5012000000;
      v10 = __Block_byref_object_copy__14308;
      v11 = __Block_byref_object_dispose__14309;
      v12 = "";
      v13 = CGRectNull;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __CGPDFTaggedNodeGetBounds_block_invoke;
      v6[3] = &unk_1E6E31640;
      v6[4] = &v7;
      CGPDFTaggedNodeEnumerateChildren(a1, v6);
      *(a1 + 40) = 1;
      v3 = v8;
      v4 = *(v8 + 4);
      *(a1 + 48) = *(v8 + 3);
      *(a1 + 64) = v4;
      v5 = *(v3 + 3);
      _Block_object_dispose(&v7, 8);
      return v5;
    }
  }

  else
  {
    return 0;
  }
}

void sub_184220B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14308(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t __CGPDFTaggedNodeGetBounds_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v13.origin.x = CGPDFTaggedNodeGetBounds(a2);
  v13.origin.y = v8;
  v13.size.width = v9;
  v13.size.height = v10;
  v12.origin.x = v4;
  v12.origin.y = v5;
  v12.size.width = v6;
  v12.size.height = v7;
  *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(v12, v13);
  return 1;
}

CFTypeRef CGPDFTaggedNodeRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGPDFTaggedNodeRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef CGPDFTaggedNodeGetTypeName(CFStringRef result)
{
  if (result)
  {
    Name = CGPDFTaggedNodeTypeGetName(result->data);

    return CFStringCreateWithCString(0, Name, 0x8000100u);
  }

  return result;
}

uint64_t CGPDFTaggedNodeIsImage(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 105);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

double CGPDFTaggedNodeGetBoundsForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return INFINITY;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    TextRange = CGPDFNodeGetTextRange(*(a1 + 96));
    while (*v6 != 517)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        v8 = 0;
        return CGPDFLayoutGetBoundsForTextRange(v8, TextRange + a2, a3);
      }
    }

    v8 = *(v6 + 104);
    return CGPDFLayoutGetBoundsForTextRange(v8, TextRange + a2, a3);
  }

  else
  {
    v10 = CGPDFTaggedNodeGetTextRange(a1);
    v9 = INFINITY;
    if (a2 + a3 <= v11)
    {
      v12 = v10 + a2;
      if (v12 != -1)
      {
        if (a3)
        {
          v13 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
          v16.location = v12;
          v16.length = a3;
          PageLayout::GetBoundsForTextRange((v13 + 16), v16);
          v9 = v14;
          if (v13)
          {
            CFRelease(v13);
          }
        }
      }
    }
  }

  return v9;
}

double CGPDFTaggedNodeGetBoundsForStringRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 96))
  {
    PageStringRangeFromStringRange = CGPDFTaggedNodeGetPageStringRangeFromStringRange(a1, a2, a3);
    v8 = v7;
    v9 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
    v13.location = PageStringRangeFromStringRange;
    v13.length = v8;
    v11 = CGPDFTaggedNodeConvertStringRangeToTextRange((v9 + 16), v13);
    if (v11 == -1)
    {
      v4 = INFINITY;
      if (!v9)
      {
        return v4;
      }
    }

    else
    {
      v14.length = v10;
      v14.location = v11;
      PageLayout::GetBoundsForTextRange((v9 + 16), v14);
      v4 = v12;
      if (!v9)
      {
        return v4;
      }
    }

    CFRelease(v9);
    return v4;
  }

  return INFINITY;
}

void sub_184220EA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeGetPageStringRangeFromStringRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 96))
  {
    return 0;
  }

  v7 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
  TextRange = CGPDFTaggedNodeGetTextRange(a1);
  v10 = v9;
  v14.location = TextRange;
  v14.length = v10;
  v11 = CGPDFTaggedNodeConvertTextRangeToStringRange((v7 + 16), v14);
  if (a2 + a3 > v12)
  {
    v3 = -1;
  }

  else
  {
    v3 = v11 + a2;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

void sub_184220F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeConvertTextRangeToStringRange(const PageLayout *a1, CFRange a2)
{
  v9 = a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v5[0] = &v9;
  v5[1] = 1;
  v4 = &v6;
  PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(a1, v5, &v4);
  if (v6 != v7)
  {
    v2 = *v6;
LABEL_4:
    v7 = v6;
    operator delete(v6);
    return v2;
  }

  v2 = -1;
  if (v6)
  {
    goto LABEL_4;
  }

  return v2;
}

void sub_184221004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGPDFTaggedNodeIsFromTaggedStructure(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 104);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL CGPDFTaggedNodeHasColSpanAttribute(_BOOL8 result)
{
  if (result)
  {
    return *(result + 120) >= 0;
  }

  return result;
}

BOOL CGPDFTaggedNodeHasRowSpanAttribute(_BOOL8 result)
{
  if (result)
  {
    return *(result + 112) >= 0;
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetRowSpan(uint64_t a1)
{
  if (!a1)
  {
    return -3;
  }

  if (*(a1 + 112) < 0)
  {
    return 1;
  }

  return *(a1 + 112);
}

uint64_t CGPDFTaggedNodeGetColSpan(uint64_t a1)
{
  if (!a1)
  {
    return -3;
  }

  if (*(a1 + 120) < 0)
  {
    return 1;
  }

  return *(a1 + 120);
}

uint64_t CGPDFTaggedNodeGetAltText(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetActualText(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetTitleText(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetLanguageText(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetTextDecorationType(uint64_t result)
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

__CFString *CGPDFTaggedNodeCreateString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 96))
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    AppendNodeString(a1, Mutable);
    Length = CFStringGetLength(Mutable);
    v4 = Length - 1;
    if (Length >= 1 && CFStringHasSuffix(Mutable, @" "))
    {
      v9.location = v4;
      v9.length = 1;
      CFStringDelete(Mutable, v9);
    }
  }

  else
  {
    v5 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
    v8[2] = v5;
    CGPDFTaggedNodeCacheStringRanges(a1);
    v6 = (*(a1 + 224) - *(a1 + 216)) >> 4;
    v8[0] = *(a1 + 216);
    v8[1] = v6;
    Mutable = PageLayout::CreateStringForStringRanges(v5 + 16, v8);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return Mutable;
}

void sub_1842211C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void AppendNodeString(uint64_t a1, __CFString *a2)
{
  if (!a1)
  {
    v3 = 0;
LABEL_9:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL16AppendNodeStringP15CGPDFTaggedNodeP10__CFString_block_invoke;
    v9[3] = &__block_descriptor_40_e12_B24__0_v8Q16l;
    v9[4] = a2;
    CGPDFTaggedNodeEnumerateChildren(a1, v9);
    if (v3 == 200)
    {
      CFStringAppend(a2, @"\n");
    }

    return;
  }

  v3 = *(a1 + 16);
  if (v3 != 1)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    v10[0] = CGPDFNodeGetTextRange(*(a1 + 96));
    v10[1] = v5;
    while (*v4 != 517)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        v6 = 0;
        goto LABEL_12;
      }
    }

    v6 = *(v4 + 104);
LABEL_12:
    StringForRanges = CGPDFLayoutCreateStringForRanges(v6, v10, 1);
    if (StringForRanges)
    {
      v8 = StringForRanges;
      CFStringAppend(a2, StringForRanges);
      CFStringAppend(a2, @" ");
      CFRelease(v8);
    }
  }
}

void CGPDFTaggedNodeCacheStringRanges(uint64_t a1)
{
  if (*(a1 + 208))
  {
    return;
  }

  v2 = a1 + 216;
  *(a1 + 224) = *(a1 + 216);
  *(a1 + 208) = 1;
  TextRange = CGPDFTaggedNodeGetTextRange(a1);
  if (TextRange == -1)
  {
    return;
  }

  v5 = v4;
  if (!v4)
  {
    return;
  }

  v6 = TextRange;
  v7 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
  v8 = v7;
  v23[0] = v2;
  v23[1] = v7;
  if ((v7[7] & 1) == 0)
  {
    v19 = v7[25];
    v20 = (v7[26] - v19) >> 3;
    if (v20 <= v6)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
    }

    if (v20 <= v5 + v6)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
    }

    v21 = *(v19 + 8 * v6);
    v22 = *(v19 + 8 * (v5 + v6)) - v21;
    *&v25 = v21;
    *(&v25 + 1) = v22;
    std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](v23, &v25);
LABEL_27:
    CFRelease(v8);
    return;
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v5 >= 1)
  {
    v10 = v5 + v6;
    v12 = v8[16];
    v11 = v8[17];
    while (1)
    {
      if (v6 >= (v11 - v12) >> 3)
      {
        goto LABEL_29;
      }

      if (*(v12 + 8 * v6))
      {
        break;
      }

LABEL_19:
      if (++v6 >= v10)
      {
        goto LABEL_20;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = v8[25];
      if (v6 >= (v8[26] - v14) >> 3)
      {
        std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
      }

      v15 = v8[43];
      v16 = v8[44];
      if (v15 == v16)
      {
        v18 = v8[43];
      }

      else
      {
        v17 = *(v14 + 8 * v6) + v13;
        v18 = v8[43];
        while (*v18 != v17)
        {
          if (++v18 == v16)
          {
            v18 = v8[44];
            break;
          }
        }
      }

      [v9 addIndex:v18 - v15];
      v12 = v8[16];
      v11 = v8[17];
      if (v6 >= (v11 - v12) >> 3)
      {
        break;
      }

      if (++v13 >= *(v12 + 8 * v6))
      {
        goto LABEL_19;
      }
    }

LABEL_29:
    std::vector<unsigned long>::__throw_out_of_range[abi:fe200100]();
  }

LABEL_20:
  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x4012000000;
  v27 = __Block_byref_object_copy__60;
  v28 = __Block_byref_object_dispose__61;
  v29 = "";
  v30 = xmmword_18439C770;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__14spanI7CFRangeLm18446744073709551615EEENS1_20back_insert_iteratorINS1_6vectorIS3_NS1_9allocatorIS3_EEEEEEEEvOT_OT0__block_invoke;
  v24[3] = &unk_1E6E317D0;
  v24[4] = &v25;
  v24[5] = v8 + 2;
  v24[6] = v23;
  [v9 enumerateRangesUsingBlock:v24];
  if (*(*(&v25 + 1) + 48) != -1)
  {
    std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](v23, (*(&v25 + 1) + 48));
  }

  _Block_object_dispose(&v25, 8);

  if (v8)
  {
    goto LABEL_27;
  }
}

uint64_t *___ZNK10PageLayout31ConvertTextRangesToStringRangesIRNSt3__14spanI7CFRangeLm18446744073709551615EEENS1_20back_insert_iteratorINS1_6vectorIS3_NS1_9allocatorIS3_EEEEEEEEvOT_OT0__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 40);
  v7 = a2 + a3;
  result = [*(v6 + 56) length];
  if (v7 < result)
  {
    result = [*(v6 + 56) characterAtIndex:v7];
    if (result == 10)
    {
      ++v3;
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 48);
  if (v10 != -1)
  {
    v11 = *(v9 + 56);
    if (v11 + v10 == a2)
    {
      *(v9 + 56) = v11 + v3;
      return result;
    }

    result = std::back_insert_iterator<std::vector<CFRange>>::operator=[abi:fe200100](*(a1 + 48), (v9 + 48));
    v9 = *(*(a1 + 32) + 8);
  }

  *(v9 + 48) = a2;
  *(v9 + 56) = v3;
  return result;
}

__CFString *CGPDFTaggedNodeCreateStringForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    while (*v6 != 517)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        TextRange = CGPDFTaggedNodeGetTextRange(a1);
        v8 = 0;
LABEL_6:
        v9 = 0;
        goto LABEL_19;
      }
    }

    v8 = *(v6 + 104);
    TextRange = CGPDFTaggedNodeGetTextRange(a1);
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 48);
LABEL_19:
    v15 = TextRange + a2;
    v16 = TextRange + a2 + a3;
    if (v16 >= v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = (TextRange + a2 + a3);
    }

    if (v15 < 0 || v15 >= v9)
    {
      v19 = v16 > 0 && v15 < 1;
      v15 = 0;
      if (v19)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = &v17[-v15];
    }

    __p = v15;
    v25 = v18;
    return CGPDFLayoutCreateStringForRanges(v8, &__p, 1);
  }

  else
  {
    v10 = 0;
    v11 = CGPDFTaggedNodeGetTextRange(a1) + a2;
    if (a2 + a3 <= v12)
    {
      v13 = a3;
    }

    else
    {
      v11 = -1;
      v13 = 0;
    }

    v28[0] = v11;
    v28[1] = v13;
    if (v11 != -1 && v13)
    {
      v14 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
      v26 = 0;
      v27 = v14;
      __p = 0;
      v25 = 0;
      v22 = v28;
      v23 = 1;
      p_p = &__p;
      PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(v14 + 16, &v22, &p_p);
      v22 = __p;
      v23 = (v25 - __p) >> 4;
      v10 = PageLayout::CreateStringForStringRanges(v14 + 16, &v22);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return v10;
}

void sub_1842218D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(&a16);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeCreateStringForStringRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 96) && CGPDFTaggedNodeGetPageStringRangeFromStringRange(a1, a2, a3) != -1 && v5)
  {
    CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
    std::vector<CFRange>::__init_with_size[abi:fe200100]<CFRange const*,CFRange const*>();
  }

  return 0;
}

void sub_1842219F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *CGPDFTaggedNodeCreateAttributedString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 96))
  {
    Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
    AppendNodeAttributedString(a1, Mutable);
    Length = CFAttributedStringGetLength(Mutable);
    v4 = Length - 1;
    if (Length >= 1)
    {
      String = CFAttributedStringGetString(Mutable);
      if (CFStringHasSuffix(String, @" "))
      {
        v16.location = v4;
        v16.length = 1;
        CFAttributedStringReplaceString(Mutable, v16, &stru_1EF244DC0);
      }
    }

    MutableCopy = _updateAttributedStringAttributes(Mutable);
  }

  else
  {
    v7 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
    v15[3] = v7;
    CGPDFTaggedNodeCacheStringRanges(a1);
    v8 = (*(a1 + 224) - *(a1 + 216)) >> 4;
    v15[0] = *(a1 + 216);
    v15[1] = v8;
    AttributedStringForStringRanges = PageLayout::CreateAttributedStringForStringRanges(v7 + 16, v15);
    v15[2] = AttributedStringForStringRanges;
    v10 = CFAttributedStringGetLength(AttributedStringForStringRanges);
    MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], v10, AttributedStringForStringRanges);
    StringRange = CGPDFTaggedNodeGetStringRange(a1);
    if (v11 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    CGPDFTaggedNodeApplyTextDecorationType(MutableCopy, a1, StringRange, v13);
    if (AttributedStringForStringRanges)
    {
      CFRelease(AttributedStringForStringRanges);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return MutableCopy;
}

void sub_184221BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFAttributedString const*>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va1);
  _Unwind_Resume(a1);
}

void AppendNodeAttributedString(uint64_t a1, const __CFAttributedString *a2)
{
  if (!a1)
  {
    v3 = 0;
LABEL_9:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL26AppendNodeAttributedStringP15CGPDFTaggedNodeP20__CFAttributedString_block_invoke;
    v9[3] = &__block_descriptor_40_e12_B24__0_v8Q16l;
    v9[4] = a2;
    CGPDFTaggedNodeEnumerateChildren(a1, v9);
    if (v3 == 200)
    {
      v11.location = CFAttributedStringGetLength(a2);
      v11.length = 0;
      CFAttributedStringReplaceString(a2, v11, @"\n");
    }

    return;
  }

  v3 = *(a1 + 16);
  if (v3 != 1)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    v10[0] = CGPDFNodeGetTextRange(*(a1 + 96));
    v10[1] = v5;
    while (*v4 != 517)
    {
      v4 = *(v4 + 8);
      if (!v4)
      {
        v6 = 0;
        goto LABEL_12;
      }
    }

    v6 = *(v4 + 104);
LABEL_12:
    AttributedStringForRanges = CGPDFLayoutCreateAttributedStringForRanges(v6, v10, 1);
    if (AttributedStringForRanges)
    {
      v8 = AttributedStringForRanges;
      v12.location = CFAttributedStringGetLength(a2);
      v12.length = 0;
      CFAttributedStringReplaceAttributedString(a2, v12, v8);
      v13.location = CFAttributedStringGetLength(a2);
      v13.length = 0;
      CFAttributedStringReplaceString(a2, v13, @" ");
      CFRelease(v8);
    }
  }
}

id _updateAttributedStringAttributes(NSAttributedString *a1)
{
  v1 = a1;
  v2 = [(NSAttributedString *)v1 mutableCopy];
  v3 = [v2 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZL33_updateAttributedStringAttributesP18NSAttributedString_block_invoke;
  v6[3] = &unk_1E6E31748;
  v4 = v2;
  v7 = v4;
  [v4 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];

  return v4;
}

uint64_t CGPDFTaggedNodeGetStringRange(uint64_t a1)
{
  if (!a1 || *(a1 + 96))
  {
    return -1;
  }

  v12[0] = CGPDFTaggedNodeGetTextRange(a1);
  v12[1] = v4;
  v5 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
  v10 = 0;
  v11 = v5;
  v8 = 0;
  v9 = 0;
  v7[0] = v12;
  v7[1] = 1;
  v6 = &v8;
  PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(v5 + 16, v7, &v6);
  if (v8 == v9)
  {
    v2 = -1;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *v8;
  }

  v9 = v8;
  operator delete(v8);
LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

void sub_184221EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(&a16);
  _Unwind_Resume(a1);
}

void CGPDFTaggedNodeApplyTextDecorationType(void *a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  if (a2)
  {
    v8 = *(a2 + 160);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__12;
  v10 = a1;
  v29 = v10;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  if ([v9 isEqualToString:@"Underline"])
  {
    v11 = @"Underline";
  }

  else
  {
    if (![v9 isEqualToString:@"LineThrough"])
    {
      goto LABEL_9;
    }

    v11 = @"Strikethrough";
  }

  v12 = v19[5];
  v19[5] = v11;

LABEL_9:
  if (v19[5])
  {
    v30.location = CGPDFTaggedNodeGetStringRange(a2);
    v31.location = a3;
    v31.length = a4;
    v13 = NSIntersectionRange(v30, v31);
    v14 = v25[5];
    v15 = v19[5];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v14 addAttribute:v15 value:v16 range:{v13.location - a3, v13.length}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CGPDFTaggedNodeApplyTextDecorationType_block_invoke;
  v17[3] = &unk_1E6E31668;
  v17[6] = a3;
  v17[7] = a4;
  v17[4] = &v18;
  v17[5] = &v24;
  v17[8] = v10;
  v17[9] = a3;
  v17[10] = a4;
  CGPDFTaggedNodeEnumerateChildren(a2, v17);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void sub_18422214C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFAttributedString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __CGPDFTaggedNodeApplyTextDecorationType_block_invoke(NSRange *a1, uint64_t a2)
{
  v6.location = CGPDFTaggedNodeGetStringRange(a2);
  NSIntersectionRange(v6, a1[3]);
  if (*(*(a1[2].location + 8) + 40))
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (*(a2 + 16) - 200) <= 0xCE)
  {
    [*(*(a1[2].length + 8) + 40) removeAttribute:? range:?];
  }

  CGPDFTaggedNodeApplyTextDecorationType(a1[4].location, a2, a1[4].length, a1[5].location);
  return 1;
}

void ___ZL33_updateAttributedStringAttributesP18NSAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 mutableCopy];
  v9 = [v7 objectForKey:kCGPDFTextStyleFont];
  v30 = [v7 objectForKey:kCGPDFTextStyleFontSize];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v9 length] != 8 || !v30)
  {
LABEL_13:

    goto LABEL_14;
  }

  v11 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_13;
  }

  v12 = [v30 length];

  v13 = v12 == 8;
  v14 = &unk_1EA860000;
  if (v13)
  {
    v32 = 0;
    [v9 getBytes:&v32 length:8];
    Font = CGPDFFontGetFont(v32);
    if (Font)
    {
      v16 = (*(*(Font + 16) + 160))(*(Font + 112));
      if (v16)
      {
        FontDescriptor = CGPDFFontGetFontDescriptor(v32);
        if (FontDescriptor)
        {
          v18 = *(FontDescriptor + 40);
        }

        else
        {
          v18 = 0;
        }

        v31 = 0.0;
        [v30 getBytes:&v31 length:8];
        CTFont = PageLayout::CreateCTFont(v16, v18, v31);
        if (CTFont)
        {
          v38 = 0;
          v39 = &v38;
          v40 = 0x2020000000;
          v27 = getkCTFontAttributeNameSymbolLoc(void)::ptr;
          v41 = getkCTFontAttributeNameSymbolLoc(void)::ptr;
          if (!getkCTFontAttributeNameSymbolLoc(void)::ptr)
          {
            v33 = MEMORY[0x1E69E9820];
            v34 = 3221225472;
            v35 = ___ZL32getkCTFontAttributeNameSymbolLocv_block_invoke_14331;
            v36 = &unk_1E6E33138;
            v37 = &v38;
            v28 = CoreTextLibrary();
            v29 = dlsym(v28, "kCTFontAttributeName");
            *(v37[1] + 24) = v29;
            getkCTFontAttributeNameSymbolLoc(void)::ptr = *(v37[1] + 24);
            v27 = v39[3];
          }

          _Block_object_dispose(&v38, 8);
          if (!v27)
          {
            goto LABEL_31;
          }

          [v8 setObject:CTFont forKey:*v27];

          v14 = &unk_1EA860000;
        }

        [v8 removeObjectForKey:v14[362]];
        [v8 removeObjectForKey:kCGPDFTextStyleFontSize];
      }
    }
  }

LABEL_14:
  v19 = [v7 objectForKey:kCGPDFTextStyleBaseLineOffset];
  if (!v19)
  {
    goto LABEL_22;
  }

  v20 = objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_22;
  }

  v21 = [v19 length];

  if (v21 != 8)
  {
LABEL_22:
    [*(a1 + 32) setAttributes:v8 range:{a3, a4}];

    return;
  }

  v32 = 0;
  [v19 getBytes:&v32 length:8];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:*&v32];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v23 = getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr;
  v41 = getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr;
  if (!getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = ___ZL42getkCTBaselineOffsetAttributeNameSymbolLocv_block_invoke_14336;
    v36 = &unk_1E6E33138;
    v37 = &v38;
    v24 = CoreTextLibrary();
    v25 = dlsym(v24, "kCTBaselineOffsetAttributeName");
    *(v37[1] + 24) = v25;
    getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr = *(v37[1] + 24);
    v23 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (v23)
  {
    [v8 setObject:v22 forKey:*v23];

    [v8 removeObjectForKey:kCGPDFTextStyleBaseLineOffset];
    goto LABEL_22;
  }

LABEL_31:
  dlerror();
  abort_report_np();
  __break(1u);
}

void sub_1842226BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL32getkCTFontAttributeNameSymbolLocv_block_invoke_14331(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontAttributeNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreTextLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL19CoreTextLibraryCorePPc_block_invoke_14339;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E31768;
    v5 = 0;
    CoreTextLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreTextLibraryCore(char **)::frameworkLibrary;
    if (CoreTextLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return CoreTextLibraryCore(char **)::frameworkLibrary;
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6E33158;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = CoreTextLibraryCore_frameworkLibrary;
    if (CoreTextLibraryCore_frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return CoreTextLibraryCore_frameworkLibrary;
}

void *___ZL42getkCTBaselineOffsetAttributeNameSymbolLocv_block_invoke_14336(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTBaselineOffsetAttributeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTBaselineOffsetAttributeNameSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19CoreTextLibraryCorePPc_block_invoke_14339()
{
  result = _sl_dlopen();
  CoreTextLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t CGPDFTaggedNodeCreateAttributedStringForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    while (*v6 != 517)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        TextRange = CGPDFTaggedNodeGetTextRange(a1);
        v8 = 0;
LABEL_6:
        v9 = 0;
        goto LABEL_21;
      }
    }

    v8 = *(v6 + 104);
    TextRange = CGPDFTaggedNodeGetTextRange(a1);
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 48);
LABEL_21:
    v16 = TextRange + a2;
    v17 = TextRange + a2 + a3;
    if (v17 >= v9)
    {
      v18 = v9;
    }

    else
    {
      v18 = (TextRange + a2 + a3);
    }

    if (v16 < 0 || v16 >= v9)
    {
      v20 = v17 > 0 && v16 < 1;
      v16 = 0;
      if (v20)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = &v18[-v16];
    }

    __p = v16;
    v27 = v19;
    AttributedStringForRanges = CGPDFLayoutCreateAttributedStringForRanges(v8, &__p, 1);
    AttributedStringForStringRanges = _updateAttributedStringAttributes(AttributedStringForRanges);
  }

  else
  {
    v11 = CGPDFTaggedNodeGetTextRange(a1);
    AttributedStringForStringRanges = 0;
    if (a2 + a3 > v12)
    {
      v13 = -1;
    }

    else
    {
      v13 = v11 + a2;
    }

    if (a2 + a3 <= v12)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0;
    }

    v30[0] = v13;
    v30[1] = v14;
    if ((v13 + 1) >= 2)
    {
      v15 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
      v28 = 0;
      v29 = v15;
      __p = 0;
      v27 = 0;
      v24 = v30;
      v25 = 1;
      p_p = &__p;
      PageLayout::ConvertTextRangesToStringRanges<std::span<CFRange,18446744073709551615ul>,std::back_insert_iterator<std::vector<CFRange>>>(v15 + 16, &v24, &p_p);
      v24 = __p;
      v25 = (v27 - __p) >> 4;
      AttributedStringForStringRanges = PageLayout::CreateAttributedStringForStringRanges(v15 + 16, &v24);
      if (__p)
      {
        v27 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }
  }

  return AttributedStringForStringRanges;
}

void sub_184222B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(&a16);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeCreateAttributedStringForStringRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 96) && CGPDFTaggedNodeGetPageStringRangeFromStringRange(a1, a2, a3) != -1)
  {
    CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
    std::vector<CFRange>::__init_with_size[abi:fe200100]<CFRange const*,CFRange const*>();
  }

  return 0;
}

void sub_184222CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CGPDFTaggedNodeCreateLineRanges(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      while (*v2 != 517)
      {
        v2 = *(v2 + 8);
        if (!v2)
        {
          v3 = 0;
          goto LABEL_10;
        }
      }

      v3 = *(v2 + 104);
LABEL_10:
      TextRange = CGPDFTaggedNodeGetTextRange(a1);
      v7 = v6;
      objc_alloc_init(MEMORY[0x1E695DF70]);
      v9 = 0;
      CGPDFLayoutGetLineRangesForTextRange(v3, TextRange, v7, 0, &v9);
      if (v9 >= 1)
      {
        std::vector<CFRange>::vector[abi:fe200100](&v8, v9);
      }
    }

    else
    {
      CGPDFTaggedNodeGetTextRange(a1);

      CGPDFTaggedNodeCreateLineRangesForTextRange(a1, 0, v4);
    }
  }
}

void sub_184222E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<CFRange>::vector[abi:fe200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<CFRange>::__vallocate[abi:fe200100](a1, a2);
}

void sub_184222EF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CGPDFTaggedNodeCreateLineRangesForTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    while (*v6 != 517)
    {
      v6 = *(v6 + 8);
      if (!v6)
      {
        TextRange = CGPDFTaggedNodeGetTextRange(a1);
        v8 = 0;
LABEL_6:
        v9 = 0;
        goto LABEL_26;
      }
    }

    v8 = *(v6 + 104);
    TextRange = CGPDFTaggedNodeGetTextRange(a1);
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 48);
LABEL_26:
    v30 = TextRange + a2;
    if (v30 + a3 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30 + a3;
    }

    if (v30 < 0 || v30 >= v9)
    {
      v33 = v30 + a3 > 0 && v30 < 1;
      v30 = 0;
      if (v33)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = v31 - v30;
    }

    objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0;
    CGPDFLayoutGetLineRangesForTextRange(v8, v30, v32, 0, &v37);
    if (v37 >= 1)
    {
      std::vector<CFRange>::vector[abi:fe200100](&v36, v37);
    }

    return;
  }

  v10 = CGPDFTaggedNodeGetTextRange(a1);
  if (a2 + a3 <= v11)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  if (a2 + a3 > v11)
  {
    return;
  }

  v13 = v10 + a2;
  if (v10 + a2 == -1)
  {
    return;
  }

  v14 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
  v36 = v14;
  v15 = CGPDFTaggedNodeGetTextRange(a1);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = v14[10];
  v17 = v14[11];
  LineIndex = PageLayout::getLineIndex(v18, v17, v13);
  if (LineIndex >= (v17 - v18) >> 4)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v20 = LineIndex;
  v21 = *(v18 + 2 * LineIndex);
  v23 = *v21;
  v22 = v21[1];
  v24 = v12 + v13;
  if (v24 > v22 + v23)
  {
    v25 = 16 * LineIndex + 16;
    v26 = -1;
    while (1)
    {
      if (v20 != v26)
      {
        if ((v17 - v18) >> 4 > v20)
        {
          v27 = v22;
        }

        else
        {
          v23 = -1;
          v27 = 0;
        }

        v28 = [MEMORY[0x1E696B098] valueWithRange:{v23 - v15, v27, v36}];
        [v16 addObject:v28];

        v18 = v14[10];
        v17 = v14[11];
        v26 = v20;
      }

      if (++v20 >= (v17 - v18) >> 4)
      {
        goto LABEL_50;
      }

      v29 = *(v18 + v25);
      v23 = *v29;
      v22 = v29[1];
      v25 += 16;
      if (v24 <= v22 + v23)
      {
        goto LABEL_41;
      }
    }
  }

  v26 = -1;
LABEL_41:
  if (v26 == v20)
  {
    if (!v14)
    {
      return;
    }
  }

  else
  {
    if ((v17 - v18) >> 4 > v20)
    {
      v34 = v22;
    }

    else
    {
      v23 = -1;
      v34 = 0;
    }

    v35 = [MEMORY[0x1E696B098] valueWithRange:{v23 - v15, v34, v36}];
    [v16 addObject:v35];
  }

  CFRelease(v14);
}

void CGPDFTaggedNodeCreateLineStringRanges(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 96))
    {

      objc_opt_new();
    }

    else
    {
      CGPDFTaggedNodeGetStringRange(a1);

      CGPDFTaggedNodeCreateLineStringRangesForStringRange(a1, 0, v2);
    }
  }
}

void CGPDFTaggedNodeCreateLineStringRangesForStringRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (!*(a1 + 96))
    {
      PageStringRangeFromStringRange = CGPDFTaggedNodeGetPageStringRangeFromStringRange(a1, a2, a3);
      if (PageStringRangeFromStringRange != -1)
      {
        v6 = PageStringRangeFromStringRange;
        v7 = v5;
        v8 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
        v34[2] = v8;
        v35.location = v6;
        v35.length = v7;
        v10 = CGPDFTaggedNodeConvertStringRangeToTextRange((v8 + 2), v35);
        if (v10 == -1)
        {
          if (!v8)
          {
            return;
          }
        }

        else
        {
          v11 = v9;
          v34[0] = CGPDFTaggedNodeGetStringRange(a1);
          v34[1] = v12;
          v32 = -1;
          v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v31[0] = &v32;
          v31[1] = v8 + 2;
          v31[2] = &v33;
          v31[3] = v34;
          v13 = v8[10];
          v14 = v8[11];
          LineIndex = PageLayout::getLineIndex(v13, v14, v10);
          if (LineIndex >= (v14 - v13) >> 4)
          {
LABEL_20:
            __break(1u);
            return;
          }

          v16 = LineIndex;
          v17 = v11 + v10;
          if (v17 > *(*(v13 + 2 * LineIndex) + 8) + **(v13 + 2 * LineIndex))
          {
            v18 = 16 * LineIndex + 16;
            do
            {
              CGPDFTaggedNodeCreateLineStringRangesForStringRange::$_0::operator()<CFRange>(v31, v16++);
              v19 = v8[10];
              if (v16 >= (v8[11] - v19) >> 4)
              {
                goto LABEL_20;
              }

              v20 = *(*(v19 + v18) + 8) + **(v19 + v18);
              v18 += 16;
            }

            while (v17 > v20);
          }

          CGPDFTaggedNodeCreateLineStringRangesForStringRange::$_0::operator()<CFRange>(v31, v16);
          if ([v33 count])
          {
            v21 = [v33 lastObject];
            v22 = [v21 rangeValue];
            v24 = v23;

            String = CGPDFTaggedNodeCreateString(a1);
            v31[0] = String;
            Length = CFStringGetLength(String);
            v27 = v33;
            v28 = [v33 count];
            v29 = v22 + v24;
            if (Length < v22 + v24)
            {
              v29 = Length;
            }

            v30 = [MEMORY[0x1E696B098] valueWithRange:{v22, v29 - v22}];
            [v27 replaceObjectAtIndex:v28 - 1 withObject:v30];

            if (String)
            {
              CFRelease(String);
            }
          }
        }

        CFRelease(v8);
      }
    }
  }
}

void sub_18422353C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, id);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va1);
  _Unwind_Resume(a1);
}

void CGPDFTaggedNodeCreateLineStringRangesForStringRange::$_0::operator()<CFRange>(uint64_t a1, unint64_t a2)
{
  if (**a1 != a2)
  {
    **a1 = a2;
    v3 = *(a1 + 8);
    v4 = *(v3 + 8);
    if (a2 >= (*(v3 + 9) - v4) >> 4)
    {
      v5.length = 0;
      v5.location = -1;
    }

    else
    {
      v5 = **(v4 + 16 * a2);
    }

    v6 = CGPDFTaggedNodeConvertTextRangeToStringRange(v3, v5);
    v8 = *(a1 + 24);
    v9 = *v8;
    v10 = v8[1] + *v8;
    if (v6 + v7 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6 + v7;
    }

    v12 = v11 - v9;
    v13 = v6 <= v9 && v9 < v6 + v7;
    if (v13)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }

    if (!v13)
    {
      v12 = 0;
    }

    v15 = v11 - v6;
    v16 = v9 <= v6 && v6 < v10;
    if (v16)
    {
      v17 = v6;
    }

    else
    {
      v17 = v14;
    }

    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = v12;
    }

    v19 = **(a1 + 16);
    v20 = [MEMORY[0x1E696B098] valueWithRange:{v17 - v9, v18}];
    [v19 addObject:?];
  }
}

uint64_t CGPDFTaggedNodeIsImageFigure(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 104) == 1)
    {
      v1 = *(a1 + 105);
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 && *v2 == 257)
      {
        v1 = 1;
      }

      else
      {
        v5 = 0;
        v6 = &v5;
        v7 = 0x2020000000;
        v8 = 0;
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = __CGPDFTaggedNodeIsImageFigure_block_invoke;
        v4[3] = &unk_1E6E31640;
        v4[4] = &v5;
        CGPDFTaggedNodeEnumerateChildren(a1, v4);
        v1 = *(v6 + 24);
        _Block_object_dispose(&v5, 8);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_184223794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CGPDFTaggedNodeRemoveAllChildren(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(a1, i);
        if (ChildAtIndex)
        {
          CFRelease(ChildAtIndex);
        }
      }
    }

    v7 = *(a1 + 88);

    CFArrayRemoveAllValues(v7);
  }
}

uint64_t CGPDFTaggedNodeGetParent(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t CGPDFTaggedNodeGetNodeContainingTextRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  TextRange = CGPDFTaggedNodeGetTextRange(a1);
  v8 = 0;
  if (a2 >= TextRange && a2 < TextRange + v7 && a2 + a3 > TextRange && a2 + a3 <= TextRange + v7)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __CGPDFTaggedNodeGetNodeContainingTextRange_block_invoke;
    v10[3] = &unk_1E6E316B0;
    v10[5] = a2;
    v10[6] = a3;
    v10[4] = &v11;
    CGPDFTaggedNodeEnumerateChildren(a1, v10);
    v8 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  return v8;
}

void sub_184223980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGPDFTaggedNodeGetNodeContainingTextRange_block_invoke(void *a1, uint64_t a2)
{
  NodeContainingTextRange = CGPDFTaggedNodeGetNodeContainingTextRange(a2, a1[5], a1[6]);
  if (NodeContainingTextRange)
  {
    *(*(a1[4] + 8) + 24) = NodeContainingTextRange;
  }

  return 1;
}

uint64_t CGPDFTaggedNodeGetNodeContainingPoint(uint64_t a1, int a2, char a3, double a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v10 = a1;
  v11 = a6 >= 0.0 ? a6 : 0.0;
  v12 = a5 - v11 * 0.5;
  *&v26.origin.x = CGPDFTaggedNodeGetBounds(a1).n128_u64[0];
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  v25.origin.x = a4 - v11 * 0.5;
  v25.origin.y = v12;
  v25.size.width = v11;
  v25.size.height = v11;
  if (!CGRectIntersectsRect(v25, v26))
  {
    return 0;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = v10;
  if (a2 && *(v10 + 16) != a2)
  {
    v10 = 0;
  }

  if ((a3 & 1) == 0 && v10 && *(v10 + 16) == 700)
  {
    v10 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __CGPDFTaggedNodeGetNodeContainingPoint_block_invoke;
  v18[3] = &unk_1E6E316D8;
  v19 = a2;
  *&v18[5] = a4;
  *&v18[6] = a5;
  *&v18[7] = v11;
  v20 = a3;
  v18[4] = &v21;
  CGPDFTaggedNodeEnumerateChildren(v10, v18);
  v16 = v22[3];
  _Block_object_dispose(&v21, 8);
  return v16;
}

void sub_184223B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGPDFTaggedNodeGetNodeContainingPoint_block_invoke(uint64_t a1, uint64_t a2)
{
  NodeContainingPoint = CGPDFTaggedNodeGetNodeContainingPoint(a2, *(a1 + 64), *(a1 + 68), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  if (NodeContainingPoint)
  {
    *(*(*(a1 + 32) + 8) + 24) = NodeContainingPoint;
  }

  return 1;
}

uint64_t CGPDFTaggedNodeGetListStyle(uint64_t ChildTaggedNodeOfType)
{
  if (!ChildTaggedNodeOfType)
  {
    return 0;
  }

  v1 = *(ChildTaggedNodeOfType + 16);
  if (v1 == 301)
  {
LABEL_8:
    ChildTaggedNodeOfType = GetChildTaggedNodeOfType(ChildTaggedNodeOfType, 302);
    if (!ChildTaggedNodeOfType)
    {
      return 0;
    }
  }

  else if (v1 != 302)
  {
    while (1)
    {
      ChildTaggedNodeOfType = *(ChildTaggedNodeOfType + 80);
      if (!ChildTaggedNodeOfType)
      {
        return 0;
      }

      if (*(ChildTaggedNodeOfType + 16) == 301)
      {
        goto LABEL_8;
      }
    }
  }

  String = CGPDFTaggedNodeCreateString(ChildTaggedNodeOfType);
  if (!String)
  {
    return 0;
  }

  v3 = String;
  if (CFStringHasPrefix(String, @"•") || CFStringHasPrefix(v3, @"·") || CFStringHasPrefix(v3, @"․") || CFStringHasPrefix(v3, @"∙") || CFStringHasPrefix(v3, @"◘") || CFStringHasPrefix(v3, @"◦") || CFStringHasPrefix(v3, @"∘"))
  {
    v4 = 257;
  }

  else
  {
    IntValue = CFStringGetIntValue(v3);
    v4 = 0;
    if (IntValue != 0x80000000 && IntValue && IntValue != 0x7FFFFFFF)
    {
      v4 = 513;
    }
  }

  CFRelease(v3);
  return v4;
}

uint64_t GetChildTaggedNodeOfType(uint64_t a1, int a2)
{
  v2 = a1;
  if (a1 && *(a1 + 16) != a2)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZL24GetChildTaggedNodeOfTypeP15CGPDFTaggedNode19CGPDFTaggedNodeType_block_invoke;
    v4[3] = &unk_1E6E31788;
    v4[4] = &v6;
    v5 = a2;
    CGPDFTaggedNodeEnumerateChildren(a1, v4);
    v2 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  return v2;
}

void sub_184223DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeGetTableRowCount(uint64_t result)
{
  if (result)
  {
    while (*(result + 16) != 400)
    {
      result = *(result + 80);
      if (!result)
      {
        return result;
      }
    }

    v1 = 0;
    GetTaggedNodeCountForType(result, 401, &v1);
    return v1;
  }

  return result;
}

void GetTaggedNodeCountForType(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 16) == a2)
    {
      ++*a3;
    }

    else
    {
      v7 = v3;
      v8 = v4;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = ___ZL25GetTaggedNodeCountForTypeP15CGPDFTaggedNode19CGPDFTaggedNodeTypePm_block_invoke;
      v5[3] = &__block_descriptor_44_e12_B24__0_v8Q16l;
      v6 = a2;
      v5[4] = a3;
      CGPDFTaggedNodeEnumerateChildren(a1, v5);
    }
  }
}

uint64_t CGPDFTaggedNodeGetTableColumnCount(uint64_t result)
{
  if (result)
  {
    while (*(result + 16) != 400)
    {
      result = *(result + 80);
      if (!result)
      {
        return result;
      }
    }

    v1 = 0;
    GetColumnCount(result, &v1);
    return v1;
  }

  return result;
}

void GetColumnCount(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 401)
    {
      v6 = 0;
      GetTaggedNodeCountForType(a1, 403, &v6);
      v5 = 0;
      GetTaggedNodeCountForType(a1, 402, &v5);
      if ((v5 + v6) > *a2)
      {
        *a2 = v5 + v6;
      }
    }

    else
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = ___ZL14GetColumnCountP15CGPDFTaggedNodePm_block_invoke;
      v4[3] = &__block_descriptor_40_e12_B24__0_v8Q16l;
      v4[4] = a2;
      CGPDFTaggedNodeEnumerateChildren(a1, v4);
    }
  }
}

uint64_t CGPDFTaggedNodeGetTableCellRowSpan(uint64_t a1)
{
  if (!a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = &CPRangeNull;
    while (1)
    {
      if (*v2 == 1538)
      {
        v4 = *(v2 + 104);
        if (v4)
        {
          if (*v4 == 2)
          {
            break;
          }
        }
      }

      v2 = *(v2 + 8);
      if (!v2)
      {
        return *v3;
      }
    }

    v3 = (v4 + 2);
    return *v3;
  }

  if ((*(a1 + 16) - 401) > 5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *(a1 + 80);
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  while (*(v5 + 16) != 400)
  {
    v5 = *(v5 + 80);
    if (!v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CGPDFTaggedNodeGetTableCellRowSpan_block_invoke;
  v9[3] = &unk_1E6E31700;
  v9[4] = &v10;
  v9[5] = a1;
  CGPDFTaggedNodeEnumerateChildren(v5, v9);
  v8 = 0;
  CountRowElements(a1, 0, &v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t CountRowElements(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    if (v4 == 400)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL16CountRowElementsP15CGPDFTaggedNodeS0_Pm_block_invoke;
  v7[3] = &unk_1E6E316B0;
  v7[4] = &v8;
  v7[5] = a2;
  v7[6] = a3;
  CGPDFTaggedNodeEnumerateChildren(a1, v7);
  v5 = *(v9 + 24);
  if (v4 == 401 && (v5 & 1) == 0)
  {
    ++*a3;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_184224300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CGPDFTaggedNodeGetTableCellColumnSpan(uint64_t a1)
{
  if (!a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v1 = a1;
  v2 = *(a1 + 96);
  if (!v2)
  {
    v6 = *(a1 + 16);
    if ((v6 - 401) <= 5)
    {
      v7 = *(a1 + 80);
      if (v7)
      {
        while (*(v7 + 16) != 400)
        {
          v7 = *(v7 + 80);
          if (!v7)
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        if ((v6 - 401) <= 5 && ((1 << (v6 + 111)) & 0x39) != 0)
        {
          v10 = 0;
          ChildTaggedNodeOfType = GetChildTaggedNodeOfType(a1, 401);
          if (!ChildTaggedNodeOfType)
          {
            ChildTaggedNodeOfType = v1;
          }

          CountColumnElements(ChildTaggedNodeOfType, 0, &v10);
          return 0;
        }

        v9 = *(a1 + 80);
        if (v9)
        {
          a1 = *(a1 + 80);
          while (*(a1 + 16) != 401)
          {
            a1 = *(a1 + 80);
            if (!a1)
            {
              a1 = v1;
              if (v6 != 404)
              {
                a1 = *(v1 + 80);
                while (*(a1 + 16) != 404)
                {
                  a1 = *(a1 + 80);
                  if (!a1)
                  {
                    a1 = v1;
                    if (v6 != 405)
                    {
                      a1 = *(v1 + 80);
                      while (*(a1 + 16) != 405)
                      {
                        a1 = *(a1 + 80);
                        if (!a1)
                        {
                          a1 = v1;
                          if (v6 != 406)
                          {
                            result = 0x7FFFFFFFFFFFFFFFLL;
                            while (*(v9 + 16) != 406)
                            {
                              v9 = *(v9 + 80);
                              if (!v9)
                              {
                                return result;
                              }
                            }

                            a1 = v9;
                          }

                          goto LABEL_41;
                        }
                      }
                    }

                    goto LABEL_41;
                  }
                }
              }

              goto LABEL_41;
            }
          }

          goto LABEL_41;
        }

        if ((*(a1 + 16) & 0x196) == 0x194 || v6 == 406)
        {
LABEL_41:
          v10 = 0;
          CountColumnElements(a1, v1, &v10);
          if (v10)
          {
            return v10 - 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = &CPRangeNull;
  while (1)
  {
    if (*v2 == 1538)
    {
      v4 = *(v2 + 104);
      if (v4)
      {
        if (*v4 == 2)
        {
          break;
        }
      }
    }

    v2 = *(v2 + 8);
    if (!v2)
    {
      return *v3;
    }
  }

  v3 = (v4 + 6);
  return *v3;
}

uint64_t CountColumnElements(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3 == 400)
    {
      v4 = 0;
      return v4 & 1;
    }

    v5 = v3 == 403;
    if ((v3 & 0xFFFFFFFE) == 0x192)
    {
      ++*a3;
    }
  }

  else
  {
    v5 = 0;
  }

  v4 = a1 == a2;
  if (a1 != a2 && !v5)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL19CountColumnElementsP15CGPDFTaggedNodeS0_Pm_block_invoke;
    v7[3] = &unk_1E6E316B0;
    v7[4] = &v8;
    v7[5] = a2;
    v7[6] = a3;
    CGPDFTaggedNodeEnumerateChildren(a1, v7);
    v4 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v4 & 1;
}

uint64_t CGPDFTaggedNodeGetParagraphLinks(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t CGPDFTaggedNodeCreate(uint64_t a1)
{
  if (CGPDFTaggedNodeGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFTaggedNodeGetTypeID(void)::onceToken, &__block_literal_global_14371);
  }

  cftype = pdf_create_cftype();
  v3 = cftype;
  if (cftype)
  {
    *(cftype + 16) = 0;
    *(cftype + 40) = 0;
    *(cftype + 105) = 0;
    *(cftype + 48) = 0u;
    *(cftype + 64) = 0u;
    *(cftype + 80) = 0;
    *(cftype + 88) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(v3 + 96) = 0;
    *(v3 + 104) = 1;
    *(v3 + 216) = 0;
    *(v3 + 224) = 0;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
    *(v3 + 169) = 0u;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
    *(v3 + 232) = 0;
    *(v3 + 240) = a1;
  }

  return v3;
}

uint64_t ___ZL24CGPDFTaggedNodeGetTypeIDv_block_invoke()
{
  result = pdf_register_cftype(&CGPDFTaggedNodeGetTypeID(void)::CGPDFTaggedNodeType);
  CGPDFTaggedNodeGetTypeID(void)::typeID = result;
  return result;
}

void CGPDFTaggedNodeFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex(a1, i);
        if (ChildAtIndex)
        {
          CFRelease(ChildAtIndex);
        }
      }
    }

    CFRelease(*(a1 + 88));
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    CGPDFNodeRelease(v7);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 216);
  if (v14)
  {
    *(a1 + 224) = v14;

    operator delete(v14);
  }
}

uint64_t CGPDFTaggedNodeCreateCopyWithStringRange(uint64_t a1, CFIndex a2, CFIndex a3)
{
  v6 = CGPDFPageCopyPageLayoutWithCTLD(*(a1 + 240), 1);
  v23[7] = v6;
  v24.location = a2;
  v24.length = a3;
  v8 = CGPDFTaggedNodeConvertStringRangeToTextRange((v6 + 16), v24);
  v9 = v7;
  v10 = *(a1 + 192);
  if (v10 <= v8 && v8 + v7 <= *(a1 + 200) + v10)
  {
    if (CGPDFTaggedNodeGetTypeID(void)::onceToken != -1)
    {
      dispatch_once(&CGPDFTaggedNodeGetTypeID(void)::onceToken, &__block_literal_global_14371);
    }

    cftype = pdf_create_cftype();
    v12 = cftype;
    if (cftype)
    {
      *(cftype + 16) = *(a1 + 16);
      *(cftype + 40) = 1;
      v25.location = v8;
      v25.length = v9;
      PageLayout::GetBoundsForTextRange((v6 + 16), v25);
      *(v12 + 48) = v14;
      *(v12 + 56) = v15;
      *(v12 + 64) = v16;
      *(v12 + 72) = v17;
      *(v12 + 105) = *(a1 + 105);
      *(v12 + 80) = *(a1 + 80);
      *(v12 + 88) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __CGPDFTaggedNodeCreateCopyWithStringRange_block_invoke;
      v23[3] = &__block_descriptor_56_e12_B24__0_v8Q16l;
      v23[4] = a2;
      v23[5] = a3;
      v23[6] = v12;
      CGPDFTaggedNodeEnumerateChildren(a1, v23);
      *(v12 + 96) = *(a1 + 96);
      *(v12 + 104) = *(a1 + 104);
      CGPDFTaggedNodeSetAltText(v12, *(a1 + 128));
      CGPDFTaggedNodeSetActualText(v12, *(a1 + 136));
      CGPDFTaggedNodeSetTitleText(v12, *(a1 + 144));
      CGPDFTaggedNodeSetLanguageText(v12, *(a1 + 152));
      CGPDFTaggedNodeSetTextDecorationType(v12, *(a1 + 160));
      v18 = *(a1 + 168);
      if (v18)
      {
        Count = CFArrayGetCount(v18);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), i);
            CGPDFTaggedNodeAddURL(v12, ValueAtIndex);
          }
        }
      }

      else
      {
        *(v12 + 168) = 0;
      }

      *(v12 + 176) = *(a1 + 176);
      *(v12 + 184) = 1;
      *(v12 + 192) = v8;
      *(v12 + 200) = v9;
      *(v12 + 208) = 0;
      *(v12 + 224) = 0;
      *(v12 + 232) = 0;
      *(v12 + 216) = 0;
      *(v12 + 240) = *(a1 + 240);
    }
  }

  else
  {
    pdf_error("New text range needs to be within the original node's text range.");
    v12 = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v12;
}

void sub_184224AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  applesauce::CF::ObjectRef<CGPDFPageLayout *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t __CGPDFTaggedNodeCreateCopyWithStringRange_block_invoke(void *a1, void *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  StringRange = CGPDFTaggedNodeGetStringRange(a2);
  if (v4 <= StringRange && StringRange + v7 <= v5 + v4)
  {
    CGPDFTaggedNodeAddTaggedNode(a1[6], a2);
  }

  return 1;
}

void CGPDFTaggedNodeSetAltText(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 128) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CGPDFTaggedNodeSetActualText(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 136);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 136) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CGPDFTaggedNodeSetTitleText(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 144);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 144) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CGPDFTaggedNodeSetLanguageText(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 152);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 152) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CGPDFTaggedNodeSetTextDecorationType(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      CFRelease(v4);
    }

    *(a1 + 160) = cf;
    if (cf)
    {

      CFRetain(cf);
    }
  }
}

void CGPDFTaggedNodeAddURL(uint64_t a1, void *value)
{
  if (a1 && value)
  {
    Mutable = *(a1 + 168);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      *(a1 + 168) = Mutable;
    }

    CFArrayAppendValue(Mutable, value);
  }
}

void CGPDFTaggedNodeAddTaggedNode(uint64_t a1, void *cf)
{
  if (a1)
  {
    if (cf)
    {
      v2 = *(a1 + 88);
      if (v2)
      {
        cf[10] = a1;
        v3 = CFRetain(cf);

        CFArrayAppendValue(v2, v3);
      }
    }
  }
}

uint64_t ___ZL27CGPDFTaggedContextGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGPDFTaggedContextGetTypeID(void)::id = result;
  return result;
}

uint64_t CGPDFTaggedContextFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *v1;
    v3 = *(*v1 + 24);
    if (!v3 || (StructureElement::~StructureElement(v3), MEMORY[0x1865EE610](), (v2 = *v1) != 0))
    {
      v4 = *(v2 + 248);
      if (v4)
      {
        operator delete(v4);
      }

      v5 = *(v2 + 224);
      if (v5)
      {
        v6 = *(v2 + 232);
        v7 = *(v2 + 224);
        if (v6 != v5)
        {
          do
          {
            v6 = std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v6 - 40);
          }

          while (v6 != v5);
          v7 = *(v2 + 224);
        }

        *(v2 + 232) = v5;
        operator delete(v7);
      }

      v8 = *(v2 + 200);
      if (v8)
      {
        v9 = *(v2 + 208);
        v10 = *(v2 + 200);
        if (v9 != v8)
        {
          do
          {
            v9 -= 3;
            v21 = v9;
            std::vector<std::tuple<StructureElement *,unsigned long,applesauce::CF::ObjectRef<CGPDFDictionary *>>>::__destroy_vector::operator()[abi:fe200100](&v21);
          }

          while (v9 != v8);
          v10 = *(v2 + 200);
        }

        *(v2 + 208) = v8;
        operator delete(v10);
      }

      std::__tree<unsigned long>::destroy(*(v2 + 184));
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(v2 + 160));
      v11 = *(v2 + 128);
      if (v11)
      {
        v12 = *(v2 + 136);
        v13 = *(v2 + 128);
        if (v12 != v11)
        {
          do
          {
            v14 = v12 - 24;
            std::__tree<unsigned long>::destroy(*(v12 - 16));
            v12 = v14;
          }

          while (v14 != v11);
          v13 = *(v2 + 128);
        }

        *(v2 + 136) = v11;
        operator delete(v13);
      }

      v15 = *(v2 + 104);
      if (v15)
      {
        v16 = *(v2 + 112);
        v17 = *(v2 + 104);
        if (v16 != v15)
        {
          v18 = *(v2 + 112);
          do
          {
            v20 = *(v18 - 24);
            v18 -= 24;
            v19 = v20;
            if (v20)
            {
              *(v16 - 16) = v19;
              operator delete(v19);
            }

            v16 = v18;
          }

          while (v18 != v15);
          v17 = *(v2 + 104);
        }

        *(v2 + 112) = v15;
        operator delete(v17);
      }

      std::mutex::~mutex((v2 + 32));
      MEMORY[0x1865EE610](v2, 0x1030C402EF8FC53);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void CGPDFTaggedContextAddNode(uint64_t a1, int64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = HIDWORD(a2) - 1;
      v5 = *v3;
      v6 = *(*v3 + 128);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 136) - v6) >> 3) <= v4)
      {
        __break(1u);
        goto LABEL_34;
      }

      if ((*(v5 + 97) & 1) == 0)
      {
        v7 = v6 + 24 * v4;
        v10 = *(v7 + 8);
        v9 = (v7 + 8);
        v8 = v10;
        if (v10)
        {
          v12 = v9;
          v13 = v8;
          do
          {
            if (v13[4] >= a2)
            {
              v12 = v13;
            }

            v13 = v13[v13[4] < a2];
          }

          while (v13);
          if (v12 != v9 && v12[4] <= a2)
          {
            while (1)
            {
              while (1)
              {
                v14 = v8[4];
                if (v14 <= a2)
                {
                  break;
                }

                v8 = *v8;
                if (!v8)
                {
                  goto LABEL_17;
                }
              }

              if (v14 >= a2)
              {
                break;
              }

              v8 = v8[1];
              if (!v8)
              {
LABEL_17:
                std::__throw_out_of_range[abi:fe200100]("map::at:  key not found");
              }
            }

            v15 = v8[5];
            ++*(a3 + 40);
            v17 = v15[15];
            v16 = v15[16];
            if (v17 < v16)
            {
              *v17 = a3;
              v18 = v17 + 8;
LABEL_31:
              v15[15] = v18;
              return;
            }

            v19 = v15[14];
            v20 = v17 - v19;
            v21 = (v17 - v19) >> 3;
            v22 = v21 + 1;
            if (!((v21 + 1) >> 61))
            {
              v23 = v16 - v19;
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

              if (v24)
              {
                if (!(v24 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:fe200100]();
              }

              v25 = (v17 - v19) >> 3;
              v26 = (8 * v21);
              v27 = (8 * v21 - 8 * v25);
              *v26 = a3;
              v18 = v26 + 1;
              memcpy(v27, v19, v20);
              v15[14] = v27;
              v15[15] = v18;
              v15[16] = 0;
              if (v19)
              {
                operator delete(v19);
              }

              goto LABEL_31;
            }

LABEL_34:
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }
        }
      }
    }
  }
}

uint64_t CGPDFTaggedPagePropertiesCreate(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2 || !CGPDFDocumentIsTaggedPDF(*(a1 + 16)))
  {
    return 0;
  }

  v3 = CGPDFDocumentCopyTaggedContext(v2);
  v4 = v3;
  if (*(*v3[2] + 97) == 1)
  {
    CFRelease(v3);
    return 0;
  }

  if (CGPDFTaggedPagePropertiesGetTypeID(void)::onceToken != -1)
  {
    dispatch_once(&CGPDFTaggedPagePropertiesGetTypeID(void)::onceToken, &__block_literal_global_70_14440);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = v4;
  *(Instance + 24) = *(*(a1 + 40) + 8);
  pthread_mutex_init((Instance + 32), 0);
  *(Instance + 96) = 0;
  return Instance;
}

uint64_t ___ZL34CGPDFTaggedPagePropertiesGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGPDFTaggedPagePropertiesGetTypeID(void)::id = result;
  return result;
}

void CGPDFTaggedPagePropertiesFinalize(char *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  pthread_mutex_destroy((a1 + 32));
  v3 = *(a1 + 12);
  if (v3)
  {

    CFRelease(v3);
  }
}

void CGPDFTaggedPagePropertiesRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CGPDFTaggedPagePropertiesGetStructureTree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      pthread_mutex_lock((result + 32));
      if (!*(v1 + 96))
      {
        v2 = *(v1 + 24);
        v3 = *(*(v1 + 16) + 16);
        Page = CGPDFDocumentGetPage(*(*v3 + 16), v2);
        TaggedParser::AddPage(v3, Page);
        v5 = *v3;
        if (*(*v3 + 24))
        {
          std::mutex::lock((v5 + 32));
          v6 = BuildStructureTree(v2, 0, *(*v3 + 24));
          std::mutex::unlock((v5 + 32));
        }

        else
        {
          v6 = 0;
        }

        *(v1 + 96) = v6;
      }

      pthread_mutex_unlock((v1 + 32));
      return *(v1 + 96);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGPDFTaggedpagePropertiesGetStructureElementID(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 16);
      v4 = *(result + 24);
      v6 = (*v3 + 128);
      v5 = *v6;
      if (0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3) <= v4 - 1)
      {
        __break(1u);
        return result;
      }

      v8[0] = a2 | (v4 << 32);
      v8[1] = v8;
      v7 = std::__tree<std::__value_type<long long,StructureElement *>,std::__map_value_compare<long long,std::__value_type<long long,StructureElement *>,std::less<long long>,true>,std::allocator<std::__value_type<long long,StructureElement *>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(v5 + 24 * (v4 - 1), v8[0])[5];
      if (v7)
      {
        return *v7;
      }
    }
  }

  return -1;
}

uint64_t CGPDFTaggedNodeGetObjectReference(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CGAddPreferredDynamicRangeOptions(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (!a1 || CFDictionaryContainsKey(a1, @"kCGTargetDynamicRange") != 1 && CFDictionaryContainsKey(a1, @"kCGPreferredDynamicRange") != 1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"kCGPreferredDynamicRange");
  if (!Value)
  {
    Value = CFDictionaryGetValue(a1, @"kCGTargetDynamicRange");
  }

  return add_known_preferred_dynamic_range(Value, a2);
}

uint64_t add_known_preferred_dynamic_range(const void *a1, __CFDictionary *a2)
{
  if (!a1)
  {
    return 1;
  }

  if (CFEqual(a1, @"kCGDynamicRangeHigh") == 1)
  {
    v4 = 1.0;
    v5 = 0.0;
  }

  else if (CFEqual(a1, @"kCGDynamicRangeConstrained") == 1)
  {
    v4 = 0.0;
    v5 = 1.0;
  }

  else
  {
    v7 = CFEqual(a1, @"kCGDynamicRangeStandard");
    v5 = 0.0;
    v4 = 0.0;
    if (v7 != 1)
    {
      return 0;
    }
  }

  valuePtr = v4;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (result)
  {
    v8 = result;
    CFDictionarySetValue(a2, @"kCGContentEDRStrength", result);
    CFRelease(v8);
    v11 = v5;
    result = CFNumberCreate(0, kCFNumberFloatType, &v11);
    if (result)
    {
      v9 = result;
      CFDictionarySetValue(a2, @"kCGConstrainedDynamicRange", result);
      CFRelease(v9);
      return 1;
    }
  }

  return result;
}

uint64_t CGEvaluateConstrainedHeadroom(uint64_t a1, uint64_t a2, const void *a3, float a4, float a5)
{
  if (CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate, &__block_literal_global_2067);
  }

  MutableCopy = CGCFDictionaryCreateMutableCopy(CGReferenceWhiteToneMappingGetDefaultOptionDetails_details);
  merge_dictionaries(a3, MutableCopy);
  CGAddPreferredDynamicRangeOptions(a3, MutableCopy);
  valuePtr = a4;
  v11 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v12 = CFAutorelease(v11);
  CFDictionarySetValue(MutableCopy, @"kCGRWTMEDRHeadroom", v12);
  v13 = source_reference_white_from_dictionary(MutableCopy);
  CGCFDictionarySetFloat(MutableCopy, @"kCGRWTMSourcePeak", (v13 * a5));
  ColorSyncToneMappingDetails = CGReferenceWhiteToneMappingCreateColorSyncToneMappingDetails(MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (CGEvaluateConstrainedHeadroom_cglibrarypredicate != -1)
  {
    dispatch_once(&CGEvaluateConstrainedHeadroom_cglibrarypredicate, &__block_literal_global_14527);
  }

  v15 = CGEvaluateConstrainedHeadroom_f(ColorSyncToneMappingDetails, a1, a2);
  if (ColorSyncToneMappingDetails)
  {
    CFRelease(ColorSyncToneMappingDetails);
  }

  return v15;
}

void merge_dictionaries(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (v4 == TypeID)
      {

        CFDictionaryApplyFunction(a1, dict_merger, a2);
      }
    }
  }
}

float source_reference_white_from_dictionary(CFTypeRef cf)
{
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v2 = CGImageDefaultReferenceWhite_media_white;
  v3 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v4 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v2, kCFNumberFloatType, &valuePtr);
      v3 = valuePtr;
    }
  }

  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"kCGRWTMSourceReferenceWhite");
      if (Value)
      {
        v7 = Value;
        v8 = CFGetTypeID(Value);
        if (v8 == CFNumberGetTypeID())
        {
          v10 = 0.0;
          if (CFNumberGetValue(v7, kCFNumberFloatType, &v10) == 1)
          {
            return v10;
          }
        }
      }
    }
  }

  return v3;
}

void dict_merger(const void *a1, const void *a2, __CFDictionary *a3)
{
  if (!CFEqual(a1, @"kCGTargetDynamicRange") && !CFEqual(a1, @"kCGPreferredDynamicRange"))
  {

    CFDictionarySetValue(a3, a1, a2);
  }
}

uint64_t CGEvaluateConstrainedHeadroomForPreferredDynamicRange(const void *a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  if (CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate != -1)
  {
    dispatch_once(&CGReferenceWhiteToneMappingGetDefaultOptionDetails_predicate, &__block_literal_global_2067);
  }

  MutableCopy = CGCFDictionaryCreateMutableCopy(CGReferenceWhiteToneMappingGetDefaultOptionDetails_details);
  merge_dictionaries(a7, MutableCopy);
  add_known_preferred_dynamic_range(a1, MutableCopy);
  valuePtr = a2;
  v14 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v15 = CFAutorelease(v14);
  CFDictionarySetValue(MutableCopy, @"kCGRWTMEDRHeadroom", v15);
  v16 = source_reference_white_from_dictionary(MutableCopy);
  CGCFDictionarySetFloat(MutableCopy, @"kCGRWTMSourcePeak", (v16 * a3));
  ColorSyncToneMappingDetails = CGReferenceWhiteToneMappingCreateColorSyncToneMappingDetails(MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (CGEvaluateConstrainedHeadroomForPreferredDynamicRange_cglibrarypredicate != -1)
  {
    dispatch_once(&CGEvaluateConstrainedHeadroomForPreferredDynamicRange_cglibrarypredicate, &__block_literal_global_56);
  }

  v18 = CGEvaluateConstrainedHeadroomForPreferredDynamicRange_f(ColorSyncToneMappingDetails, a5, a6);
  if (ColorSyncToneMappingDetails)
  {
    CFRelease(ColorSyncToneMappingDetails);
  }

  return v18;
}

__CFString *CGToneMappingMethodName(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E6E318A8[a1];
  }
}

uint64_t CGToneMappingMethodFromName(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFStringGetTypeID() && CFEqual(v1, @"kCGToneMappingDefault") != 1)
    {
      result = CFEqual(v1, @"kCGToneMappingImageSpecificLumaScaling");
      if (result != 1)
      {
        if (CFEqual(v1, @"CGToneMappingReferenceWhiteBased") == 1)
        {
          return 2;
        }

        else if (CFEqual(v1, @"kCGToneMappingITURecommended") == 1)
        {
          return 3;
        }

        else if (CFEqual(v1, @"kCGToneMappingEXRGamma") == 1)
        {
          return 4;
        }

        else if (CFEqual(v1, @"kCGToneMappingNone") == 1)
        {
          return 5;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFDictionary *CGContentToneMappingInfoCreateDictionary(unsigned int a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    v6 = a1 > 5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CFDictionarySetValue(Mutable, @"kCGToneMappingMethod", off_1E6E318A8[a1 & 7]);
    if (a2)
    {
      CFDictionarySetValue(v5, @"kCGToneMappingMethodOptions", a2);
    }
  }

  return v5;
}

const __CFDictionary *CGContentToneMappingInfoCreateFromDictionary(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetValue(result, @"kCGToneMappingMethod");
    if (result)
    {
      v2 = CGToneMappingMethodFromName(result);
      Value = CFDictionaryGetValue(v1, @"kCGToneMappingMethodOptions");
      if (Value)
      {
        CFRetain(Value);
      }

      return v2;
    }
  }

  return result;
}

uint64_t CGToneMappingConstrainedHeadroomRequested(unsigned int a1, CFTypeRef cf)
{
  result = 0;
  if (a1 <= 2 && cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryContainsKey(cf, @"kCGTargetDynamicRange");
      if (result != 1)
      {
        result = CFDictionaryContainsKey(cf, @"kCGPreferredDynamicRange");
        if (result != 1)
        {
          return CFDictionaryContainsKey(cf, @"kCGConstrainedDynamicRange") == 1;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDictionaryRef CGToneMappingCreateOptionsForDrawingImage(CGColorSpace *a1, CGImage *a2, unsigned int a3, void *a4, float a5)
{
  HeadroomInfo = CGImageGetHeadroomInfo(a2, 0);
  if (HeadroomInfo >= 1.0 || HeadroomInfo <= 0.0)
  {
    v12 = HeadroomInfo;
  }

  else
  {
    v12 = 1.0;
  }

  if (HeadroomInfo >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  if (a5 <= 0.0)
  {
    return 0;
  }

  v14 = CGToneMappingConstrainedHeadroomRequested(a3, a4);
  v22 = 0;
  if (v13 > 1.0 && (v13 > a5) | v14 & 1)
  {
    if (a1)
    {
      if (a5 < 1.0)
      {
        CGPostError("%s: Cannot create tone mapping options. target headroom %f < 1.0", v15, v16, v17, v18, v19, v20, v21, "CGToneMappingCreateOptionsForDrawingImage");
        return 0;
      }

      if (v13 < 1.0)
      {
        CGPostError("%s: Cannot create tone mapping options. source headroom %f < 1.0", v15, v16, v17, v18, v19, v20, v21, "CGToneMappingCreateOptionsForDrawingImage");
        return 0;
      }

      keys = 0;
      ColorSpace = CGImageGetColorSpace(a2);
      if (CGImageDefaultReferenceWhite_once != -1)
      {
        dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
      }

      v29 = CGImageDefaultReferenceWhite_media_white;
      v30 = 0.0;
      if (CGImageDefaultReferenceWhite_media_white)
      {
        v31 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
        if (v31 == CFNumberGetTypeID())
        {
          LODWORD(values) = 0;
          CFNumberGetValue(v29, kCFNumberFloatType, &values);
          v30 = *&values;
        }
      }

      if (!CGCreateResolvedToneMappingSettingForMethod(a3, a1, ColorSpace, a4, 0, &keys, v26, v27, a5, v13, v30))
      {
        CGPostError("%s: Cannot create tone mapping settings. CGCreateResolvedToneMappingSettingForMethod failed", v32, v33, v34, v35, v36, v37, v38, "CGToneMappingCreateOptionsForDrawingImage");
        return 0;
      }

      if (!keys)
      {
        return 0;
      }

      v40 = keys;
      values = @"kCGColorConversionInfoOptions";
      v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], &values, &v40, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v25 = keys;
    }

    else
    {
      v23 = CGCreatePayloadForToneMapping(a3, a4);
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      values = v23;
      keys = @"kCGColorConversionInfoPayload";
      v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v25 = v24;
    }

    CFRelease(v25);
  }

  return v22;
}

void std::shared_mutex::~shared_mutex[abi:fe200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

void pdf_reader::pdf_reader(CGPDFSource *)::{lambda(pdf_xref *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 176) = 1;
  }

  pdf_xref_release(a1);
}

uint64_t convert_version(char *a1, int *a2, int *a3)
{
  v12 = 0;
  v6 = strtol_l(a1, &v12, 10, 0);
  v7 = v12;
  if (v12 == a1)
  {
    return 0;
  }

  if (*v12 != 46 || v6 >> 31 != 0)
  {
    return 0;
  }

  *a2 = v6;
  v9 = v7 + 1;
  v10 = strtol_l(v7 + 1, &v12, 10, 0);
  if (v12 == v9 || (*v12 | 0x20) != 0x20 || v10 >> 31)
  {
    return 0;
  }

  *a3 = v10;
  return 1;
}

uint64_t pdf_reader_get_linearized_page_ranges(uint64_t result, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (result)
  {
    if (a2 && (v5 = result, *(result + 16) >= a2))
    {
      if (a3)
      {
        if (a4)
        {
          *a3 = 0;
          *a4 = 0;
          v8 = *(*(result + 64) + 48);
          if (a2 - 1 < (*(*(result + 64) + 56) - v8) >> 6)
          {
            v9 = v8 + ((a2 - 1) << 6);
            if (a2 == 1)
            {
              v10 = 1;
            }

            else
            {
              v10 = ((*(v9 + 32) - *(v9 + 24)) >> 3) + 1;
            }

            result = malloc_type_malloc(16 * v10, 0x1000040451B5BE8uLL);
            v11 = *(v9 + 4);
            *result = *(v9 + 48);
            *(result + 8) = v11;
            if (a2 == 1)
            {
LABEL_23:
              *a3 = result;
              *a4 = v10;
              return 1;
            }

            v12 = *(v5 + 64);
            v13 = *(v12 + 48);
            if (*(v12 + 56) != v13)
            {
              v14 = (result + 16);
              v15 = *(v9 + 24);
              v16 = *(v9 + 32);
              if (v15 != v16)
              {
                v17 = *(v13 + 48);
                v18 = *(v13 + 4);
                v19 = *(*(v5 + 72) + 32);
                v20 = (*(*(v5 + 72) + 40) - v19) >> 4;
                v21 = v17 + v18;
                while (1)
                {
                  v22 = *v15;
                  if (v20 <= v22)
                  {
                    break;
                  }

                  v23 = (v19 + 16 * v22);
                  v24 = *(v23 + 1);
                  v25 = *v23;
                  if (v17 <= v24 && v24 + v25 <= v21)
                  {
                    *v14 = v24;
                    v14[1] = v25;
                    v14 += 2;
                  }

                  v15 += 2;
                  if (v15 == v16)
                  {
                    goto LABEL_22;
                  }
                }

                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "shared object index is out of range");
                v28 = MEMORY[0x1E69E5280];
                v29 = off_1E6E04888;
                v30 = MEMORY[0x1E69E55B8] + 16;
LABEL_30:
                exception->__vftable = v30;
                __cxa_throw(exception, v29, v28);
              }

LABEL_22:
              v10 = (v14 - result) >> 4;
              goto LABEL_23;
            }
          }

          __break(1u);
          return result;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "NULL 'range_count' parameter");
      }

      else
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "NULL 'shared_resource_ranges' parameter");
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "page_number is out of range");
    }

    v28 = MEMORY[0x1E69E5298];
    v29 = off_1E6E04890;
    v30 = MEMORY[0x1E69E55C8] + 16;
    goto LABEL_30;
  }

  return result;
}

void sub_184226478(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  v13 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v13 + 16))(v13);
    pdf_error("%s caught exception: %s");
  }

  else
  {
    pdf_error("%s caught an unknown exception");
  }

  __cxa_end_catch();
  JUMPOUT(0x184226384);
}

uint64_t pdf_reader_get_linearized_page_dict(uint64_t *a1, unint64_t a2)
{
  result = *a1;
  v3 = *(result + 32);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 16) < a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "page_number is out of range");
    exception->__vftable = (MEMORY[0x1E69E55C8] + 16);
    __cxa_throw(exception, off_1E6E04890, MEMORY[0x1E69E5298]);
  }

  v4 = *(*(v3 + 64) + 48);
  if (a2 - 1 < (*(*(v3 + 64) + 56) - v4) >> 6)
  {
    v5 = *(v4 + ((a2 - 1) << 6) + 56);
    if (v5)
    {
      v6 = pdf_xref_resolve(result, v5, 0);
      if (v6)
      {
        if (*(v6 + 2) == 8)
        {
          v7 = *(v6 + 4);
          value = 0;
          if (CGPDFDictionaryGetName(v7, "Type", &value) && !strcmp(value, "Page"))
          {
            return v7;
          }
        }
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_184226624(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    (*(*v11 + 16))(v11);
    pdf_error("%s caught exception: %s");
  }

  else
  {
    pdf_error("%s caught an unknown exception");
  }

  __cxa_end_catch();
  JUMPOUT(0x1842265B0);
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:fe200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

CGPDFDictionaryRef get_pages_dictionary(uint64_t a1)
{
  dict = 0;
  value = 0;
  trailer = pdf_xref_get_trailer(a1);
  if (CGPDFDictionaryGetDictionary(trailer, "Root", &value))
  {
    v2 = value;
  }

  else
  {
    v2 = 0;
  }

  if (!CGPDFDictionaryGetDictionary(v2, "Pages", &dict))
  {
    return 0;
  }

  v3 = is_page_tree_node(dict);
  result = dict;
  if (v3)
  {
    return result;
  }

  if (!CGPDFDictionaryGetDictionary(dict, "Parent", &dict))
  {
    return 0;
  }

  if (is_page_tree_node(dict))
  {
    return dict;
  }

  return 0;
}