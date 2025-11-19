int8x8_t CMYK64_DAM(int8x8_t *a1, _WORD *a2, unint64_t a3, int a4, int a5)
{
  v5.i32[0] = a3;
  v5.i32[1] = vshr_n_u32(vdup_n_s32(a3), 0x10uLL).i32[1];
  v5.i32[2] = WORD2(a3);
  v5.i32[3] = HIWORD(a3);
  v6 = vmulq_s32(v5, vmovl_u16(vdup_n_s16(~a5)));
  v7.i64[0] = 0x100000001;
  v7.i64[1] = 0x100000001;
  v5.i32[2] = HIDWORD(a3);
  v5.i32[0] = a3;
  result = vrev16_s8(vmovn_s32(vsubq_s32(v5, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v6, v6, 0x10uLL), v7), 0x10uLL))));
  *a1 = result;
  *a2 = bswap32(a4 - ((~a5 * a4 + ((~a5 * a4) >> 16) + 1) >> 16)) >> 16;
  return result;
}

int8x8_t CMYK64_DAMplusDAM(int8x8_t *a1, _WORD *a2, unint64_t a3, int a4, unsigned int a5, unint64_t a6, int a7, unsigned int a8)
{
  v8.i16[0] = a5;
  v8.i16[1] = a8;
  v8.i16[2] = a5;
  v9.i64[0] = __PAIR64__(a8, a5);
  v8.i16[3] = a8;
  v10.i32[0] = a6;
  v10.i32[1] = WORD1(a3);
  v10.i32[2] = WORD2(a6);
  v10.i32[3] = HIWORD(a3);
  v9.i64[1] = __PAIR64__(a8, a5);
  v11 = vmulq_s32(v10, vrev64q_s32(v9));
  v10.i32[0] = a3;
  v10.i32[1] = WORD1(a6);
  v10.i32[2] = HIDWORD(a3);
  v10.i32[3] = HIWORD(a6);
  v12 = vmlal_u16(v11, vmovn_s32(v10), v8);
  result = vrev16_s8(vsubhn_s32(vshrq_n_u32(v12, 0x10uLL), vmvnq_s8(v12)));
  *a1 = result;
  *a2 = bswap32(a5 * a4 + a8 * a7 + ((a5 * a4 + a8 * a7) >> 16) + 1);
  return result;
}

int8x8_t CMYK64_DAplusDAM(int8x8_t *a1, _WORD *a2, unint64_t a3, int a4, unint64_t a5, int a6, unsigned int a7)
{
  v7.i32[0] = a5;
  v7.i32[1] = WORD1(a5);
  v7.i32[2] = HIDWORD(a5);
  v7.i32[3] = HIWORD(a5);
  v8 = vmull_u16(vmovn_s32(v7), vdup_n_s16(a7));
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  v10 = vaddq_s32(vsraq_n_u32(v8, v8, 0x10uLL), v9);
  v9.i32[0] = a3;
  v9.i32[1] = WORD1(a3);
  result = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(*v9.i8, vshlq_u64(vdupq_n_s64(a3), xmmword_18439CB80)), v10, 0x10uLL)));
  *a1 = result;
  *a2 = bswap32(a4 + ((a7 * a6 + ((a7 * a6) >> 16) + 1) >> 16)) >> 16;
  return result;
}

int *CMYK64_DAplusdDA(int *result, _WORD *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a4 - (WORD1(a3) + WORD1(a5)) + a6;
  v7 = a4 + a6 - (WORD2(a3) + WORD2(a5));
  v8 = a4 - (HIWORD(a3) + HIWORD(a5)) + a6;
  if (v6 >= 0xFFFF)
  {
    LOWORD(v6) = -1;
  }

  if (v7 >= 0xFFFF)
  {
    LOWORD(v7) = -1;
  }

  if (v8 >= 0xFFFF)
  {
    LOWORD(v8) = -1;
  }

  if ((a4 + a6) >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  else
  {
    v9 = a4 + a6;
  }

  *result = (v9 - v6) | ((v9 - v6) << 16);
  result[1] = (v9 - v7) | ((v9 - v8) << 16);
  *a2 = bswap32(v9) >> 16;
  return result;
}

_WORD *CMYK64_DplusdDA(_WORD *result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a4 - WORD1(a3) + (~a2 >> 16);
  if (v4 >= 0xFFFF)
  {
    v4 = 0xFFFF;
  }

  v5 = (HIDWORD(a2) | 0xFFFF0000) - a4 + WORD2(a3);
  if (v5 <= -65536)
  {
    v5 = -65536;
  }

  v6 = (HIWORD(a2) | 0xFFFF0000) - a4 + HIWORD(a3);
  if (v6 <= -65536)
  {
    v6 = -65536;
  }

  v7 = bswap32(~v4) >> 16;
  *result = v7;
  result[1] = v7;
  result[2] = bswap32(v5) >> 16;
  result[3] = bswap32(v6) >> 16;
  return result;
}

unsigned int *CMYK64_DApluslDA(unsigned int *result, _WORD *a2, unint64_t a3, int a4, unint64_t a5, int a6)
{
  v6 = a5 + a3;
  v7 = WORD1(a5) + WORD1(a3);
  v8 = WORD2(a5) + WORD2(a3);
  v9 = HIWORD(a5) + HIWORD(a3);
  v10 = a6 + a4;
  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  if (v7 >= 0xFFFF)
  {
    v7 = 0xFFFF;
  }

  if (v8 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  if (v9 >= 0xFFFF)
  {
    v9 = 0xFFFF;
  }

  if (v10 >= 0xFFFF)
  {
    v10 = 0xFFFF;
  }

  *result = v6 | (v7 << 16);
  result[1] = v8 | (v9 << 16);
  *a2 = bswap32(v10) >> 16;
  return result;
}

_WORD *CMYK64_DpluslD(_WORD *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    v3 = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    v4 = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    v5 = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    v6 = 0xFFFF;
  }

  *result = bswap32(v3) >> 16;
  result[1] = bswap32(v4) >> 16;
  result[2] = bswap32(v5) >> 16;
  result[3] = bswap32(v6) >> 16;
  return result;
}

uint64_t CMYK64_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(v49, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v32, v49) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *a3;
  *(&v32 + 1) = __PAIR64__(*v6, *a3);
  if (v18 == 269501444)
  {
    if (!v43 && (~DWORD1(v33) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v33) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        CMYK64_mark(a1, v17);
        return 1;
      }
    }

    *&v32 = cmyk64_sample_CMYK64;
    goto LABEL_38;
  }

  v19 = SAMPLEINDEX(v18, v10, v11, v12, v13, v14, v15, v16);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 > 0xB)
  {
    goto LABEL_28;
  }

  if (v19 > 6)
  {
    switch(v19)
    {
      case 7:
        v20 = 0;
        v21 = 32;
        break;
      case 9:
        v20 = 0;
        v21 = 40;
        break;
      case 8:
        v20 = 0;
        v21 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v19 == 2)
  {
    if (!*(a2 + 12))
    {
      v20 = 0;
      v21 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v21 = 255;
    v20 = 1;
    goto LABEL_29;
  }

  if (v19 != 5)
  {
    if (v19 == 6)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v20 = 0;
  v21 = 24;
LABEL_29:
  *&v32 = *&CMYK16_image_sample[2 * v19 + 2];
  if (v32)
  {
    v22 = 269501476;
    goto LABEL_37;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8 || (*&v32 = *&CMYK8_image_sample[2 * v19 + 2], !v32))
  {
    *&v32 = *&CMYKF_image_sample[2 * v19 + 2];
    if (v32)
    {
      v22 = 538985509;
      v23 = 20;
      goto LABEL_36;
    }

    return 0xFFFFFFFFLL;
  }

  v22 = 134759444;
  v23 = 8;
LABEL_36:
  LODWORD(v33) = v23;
LABEL_37:
  DWORD2(v32) = v22;
  if ((v20 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v33) & 7) != 3 || a2[2] != 5 && a2[2] || v19 > 0xB)
  {
    goto LABEL_38;
  }

  HIDWORD(v25) = v21;
  LODWORD(v25) = v21;
  v24 = v25 >> 3;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      DWORD2(v32) = *a3;
      v26 = CMYK64_image_mark_RGB24;
      goto LABEL_67;
    }

    if (v24 == 4)
    {
      DWORD2(v32) = *a3;
      v26 = CMYK64_image_mark_rgb32;
      goto LABEL_67;
    }

    if (v24 != 5)
    {
      goto LABEL_38;
    }

    DWORD2(v32) = *a3;
    v27 = CMYK64_image_mark_rgb32;
LABEL_65:
    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_68:
    cmyk64_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  switch(v24)
  {
    case 0:
      DWORD2(v32) = *a3;
      v26 = CMYK64_image_mark_RGB32;
      goto LABEL_67;
    case 1:
      DWORD2(v32) = *a3;
      v27 = CMYK64_image_mark_RGB32;
      goto LABEL_65;
    case 2:
      DWORD2(v32) = *a3;
      v26 = CMYK64_image_mark_W8;
LABEL_67:
      v28 = v26;
      v29 = a2;
      v30 = v8;
      v31 = 0;
      goto LABEL_68;
  }

LABEL_38:
  CMYK64_image_mark(a2, &v32, v8, v17);
  return 1;
}

uint64_t CMYK64_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v257 = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 96);
  v6 = *(v3 + 48);
  v7 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v3;
  v10 = *(v3 + 4);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = *(v3 + 8);
  if (v11 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 136);
  if ((*v3 & 0xFF0000) != 0x50000 && v12)
  {
    v13 = *(v3 + 128);
    if ((v13 | 8) == 8)
    {
      if ((*v3 & 0xFF00) == 0x400)
      {
        CMYK64_mark_constmask(v3, v7);
      }

      else
      {
        CMYK64_mark_pixelmask(v3, v7);
      }
    }

    else
    {
      v18 = *(v3 + 112);
      v19 = *(v3 + 116);
      v20 = (v18 + 15) & 0xFFFFFFF0;
      v21 = v20 * v19;
      if (v21 <= 4096)
      {
        v24 = v256;
      }

      else
      {
        v22 = v3;
        v23 = malloc_type_malloc(v21, 0x97CEE3C3uLL);
        if (!v23)
        {
          return 1;
        }

        v24 = v23;
        v9 = v22;
        v12 = *(v22 + 136);
        v13 = *(v22 + 128);
      }

      v35 = v18;
      v36 = v9;
      CGSConvertBitsToMask(v12, *(v9 + 124), v24, v20, v35, v19, v13);
      v37 = v36[7];
      v252 = v36[6];
      v253 = v37;
      v38 = v36[9];
      v254 = v36[8];
      v255 = v38;
      v39 = v36[3];
      v248 = v36[2];
      v249 = v39;
      v40 = v36[5];
      v250 = v36[4];
      v251 = v40;
      v41 = v36[1];
      *v246 = *v36;
      v247 = v41;
      HIDWORD(v253) = v20;
      *(&v254 + 1) = v24;
      if (BYTE1(v246[0]) << 8 == 1024)
      {
        CMYK64_mark_constmask(v246, v7);
      }

      else
      {
        CMYK64_mark_pixelmask(v246, v7);
      }

      if (v24 != v256)
      {
        v42 = v24;
        goto LABEL_335;
      }
    }

    return 1;
  }

  if ((*v3 & 0xFF00) != 0x400)
  {
    CMYK64_mark_pixelshape(v3, v7, v4);
    return 1;
  }

  v256[0] = *(v3 + 4);
  v246[0] = v11;
  v14 = *(v3 + 88);
  v244 = *v14;
  v243 = v14[1];
  v242 = v14[2];
  v241 = v14[3];
  v15 = (__rev16(v242) << 32) | (__rev16(v241) << 48);
  v16 = (__PAIR64__(__rev16(v243), bswap32(v244)) >> 16);
  if (v5)
  {
    v17 = bswap32(*v5) >> 16;
  }

  else
  {
    v17 = 0xFFFF;
  }

  v227 = v16;
  v25 = v15 | v16;
  v26 = *(v3 + 28) >> 3;
  v27 = *(v3 + 12);
  v28 = *(v3 + 16);
  if (v6)
  {
    v236 = *(v3 + 32) >> 1;
    v235 = v6 + 2 * v236 * v28 + 2 * v27;
    v233 = 1;
  }

  else
  {
    v235 = 0;
    v236 = 0;
    v233 = 0;
  }

  v29 = ~v17;
  v30 = (*(v3 + 40) + 8 * v28 * v26 + 8 * v27);
  v234 = v30;
  v228 = v3;
  v229 = v7;
  v232 = *(v3 + 28) >> 3;
  if (v12)
  {
    shape_enum_clip_alloc(v2, v3, v12, 1, 1, 1, *(v3 + 104), *(v3 + 108), v10, v11);
    v31 = v235;
    v240 = v236;
    v237 = v32;
    if (v32)
    {
      goto LABEL_36;
    }

    return 1;
  }

  v237 = 0;
  if (v6)
  {
    v33 = v10;
  }

  else
  {
    v33 = 0;
  }

  v31 = v235;
  v240 = v236 - v33;
  v34 = v10;
  while (2)
  {
    v238 = v10;
    v239 = v26 - v34;
    switch(v7)
    {
      case 0:
        v44 = v239 + v10;
        v45 = v246[0] - 1;
        v46 = &v30[(v44 * v45) & (v44 >> 63)];
        v47 = v246[0];
        if (v44 < 0)
        {
          v44 = -v44;
        }

        CGBlt_fillBytes(8 * v10, v246[0], 0, v46, 8 * v44);
        if (v6)
        {
          v48 = v240 + v10;
          v31 += 2 * ((v48 * v45) & (v48 >> 63));
          if (v48 < 0)
          {
            v48 = -v48;
          }

          v240 = v48;
          CGBlt_fillBytes(2 * v10, v47, 0, v31, 2 * v48);
        }

        goto LABEL_349;
      case 1:
        v118 = v239 + v10;
        if (v118 < 0)
        {
          v30 += v118 * (v246[0] - 1);
          v118 = -v118;
        }

        v119 = *(v228 + 88);
        v120 = v246[0];
        if (v119)
        {
          CGSFillDRAM64(v30, 8 * v118, 8 * v10, v246[0], v119, 8, 8, 1, 0, 0);
        }

        else
        {
          CGBlt_fillBytes(8 * v10, v246[0], 0, v30, 8 * v118);
        }

        v30 = v234;
        if (v6)
        {
          v218 = *(v228 + 96);
          if (!v218)
          {
            v218 = &PIXELALPHAPLANARCONSTANT_18034;
          }

          v219 = v240 + v10;
          v31 += 2 * ((v219 * (v120 - 1)) & (v219 >> 63));
          if (v219 < 0)
          {
            v219 = -v219;
          }

          v240 = v219;
          CGBlt_fillBytes(2 * v10, v120, *v218, v31, 2 * v219);
        }

        goto LABEL_350;
      case 2:
        v95 = v10 >> 2;
        v96 = 8 * v233;
        v97 = 2 * v233;
        if (v6)
        {
          v98 = v246[0];
          v230 = v95 + 1;
          v231 = v10 & 3;
          do
          {
            if (v10 < 4)
            {
              v103 = v10;
            }

            else
            {
              v99 = (v31 + 4);
              v100 = v230;
              do
              {
                CMYK64_DAplusDAM(v30, v99 - 2, v25, v17, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*(v99 - 2)) >> 16, ~v17);
                CMYK64_DAplusDAM(v30 + 1, v99 - 1, v25, v17, ((bswap32(v30[1].u16[2]) >> 16) << 32) | ((bswap32(v30[1].u16[3]) >> 16) << 48) | bswap32(v30[1].u16[1]) & 0xFFFF0000 | (bswap32(v30[1].u16[0]) >> 16), bswap32(*(v99 - 1)) >> 16, ~v17);
                CMYK64_DAplusDAM(v30 + 2, v99, v25, v17, ((bswap32(v30[2].u16[2]) >> 16) << 32) | ((bswap32(v30[2].u16[3]) >> 16) << 48) | bswap32(v30[2].u16[1]) & 0xFFFF0000 | (bswap32(v30[2].u16[0]) >> 16), bswap32(*v99) >> 16, ~v17);
                v102 = v30[3].u16[0];
                v101 = v30 + 3;
                CMYK64_DAplusDAM(v101, v99 + 1, v25, v17, ((bswap32(v101->u16[2]) >> 16) << 32) | ((bswap32(v101->u16[3]) >> 16) << 48) | bswap32(v101->u16[1]) & 0xFFFF0000 | (bswap32(v102) >> 16), bswap32(v99[1]) >> 16, ~v17);
                v30 = v101 + 1;
                --v100;
                v99 = (v99 + v96);
              }

              while (v100 > 1);
              v31 = (v99 - 2);
              v103 = v231;
            }

            if (v103 >= 1)
            {
              v104 = v103 + 1;
              do
              {
                CMYK64_DAplusDAM(v30, v31, v25, v17, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*v31) >> 16, ~v17);
                ++v30;
                v31 += v97;
                --v104;
              }

              while (v104 > 1);
            }

            v30 += v239;
            v31 += 2 * v240;
            --v98;
            LODWORD(v10) = v238;
          }

          while (v98);
          v246[0] = 0;
          v26 = v232;
          v29 = ~v17;
          v30 = v234;
          v7 = v229;
          goto LABEL_350;
        }

        v188 = vdupq_n_s32(~v17);
        v189.i32[0] = v227;
        v189.i32[1] = HIWORD(v227);
        v190 = vmovn_hight_s64(v189, vshlq_u64(vdupq_n_s64(v25), xmmword_18439CB80));
        v191 = v246[0];
        v192 = v95 + 1;
        v193.i64[0] = 0x100000001;
        v193.i64[1] = 0x100000001;
        do
        {
          if (v10 < 4)
          {
            v206 = v10;
          }

          else
          {
            v194 = v192;
            do
            {
              v195 = bswap32(v30->u16[1] | (v30->u16[0] << 16));
              v196.i32[0] = v195;
              v196.i32[1] = HIWORD(v195);
              v196.i32[2] = bswap32(v30->u16[2]) >> 16;
              v196.i32[3] = bswap32(v30->u16[3]) >> 16;
              v197 = vmulq_s32(v196, v188);
              v198 = bswap32(v30[1].u16[1] | (v30[1].u16[0] << 16));
              v199.i32[0] = v198;
              v199.i32[1] = HIWORD(v198);
              v199.i32[2] = bswap32(v30[1].u16[2]) >> 16;
              v199.i32[3] = bswap32(v30[1].u16[3]) >> 16;
              v200 = vmulq_s32(v199, v188);
              *v30 = vrev16_s8(vmovn_s32(vsraq_n_u32(v190, vaddq_s32(vsraq_n_u32(v197, v197, 0x10uLL), v193), 0x10uLL)));
              v30[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(v190, vaddq_s32(vsraq_n_u32(v200, v200, 0x10uLL), v193), 0x10uLL)));
              v201 = bswap32(v30[2].u16[1] | (v30[2].u16[0] << 16));
              v197.i32[0] = v201;
              v197.i32[1] = HIWORD(v201);
              v197.i32[2] = bswap32(v30[2].u16[2]) >> 16;
              v197.i32[3] = bswap32(v30[2].u16[3]) >> 16;
              v202 = vmulq_s32(v197, v188);
              v203 = vsraq_n_u32(v190, vaddq_s32(vsraq_n_u32(v202, v202, 0x10uLL), v193), 0x10uLL);
              v204 = bswap32(v30[3].u16[1] | (v30[3].u16[0] << 16));
              v202.i32[0] = v204;
              v202.i32[1] = HIWORD(v204);
              v202.i32[2] = bswap32(v30[3].u16[2]) >> 16;
              v202.i32[3] = bswap32(v30[3].u16[3]) >> 16;
              v205 = vmulq_s32(v202, v188);
              v30[2] = vrev16_s8(vmovn_s32(v203));
              v30[3] = vrev16_s8(vmovn_s32(vsraq_n_u32(v190, vaddq_s32(vsraq_n_u32(v205, v205, 0x10uLL), v193), 0x10uLL)));
              v30 += 4;
              --v194;
              v31 += v96;
            }

            while (v194 > 1);
            v206 = v10 & 3;
          }

          if (v206 >= 1)
          {
            v207 = v206 + 1;
            do
            {
              v208 = bswap32(v30->u16[1] | (v30->u16[0] << 16));
              v209.i32[0] = v208;
              v209.i32[1] = HIWORD(v208);
              v209.i64[1] = __PAIR64__(bswap32(v30->u16[3]) >> 16, bswap32(v30->u16[2]) >> 16);
              v210 = vmulq_s32(v209, v188);
              *v30++ = vrev16_s8(vmovn_s32(vsraq_n_u32(v190, vaddq_s32(vsraq_n_u32(v210, v210, 0x10uLL), v193), 0x10uLL)));
              v31 += v97;
              --v207;
            }

            while (v207 > 1);
          }

          v30 += v239;
          v31 += 2 * v240;
          --v191;
        }

        while (v191);
        goto LABEL_346;
      case 3:
        v111 = __rev16(v17);
        v112 = v246[0];
        do
        {
          v113 = v10;
          do
          {
            v114 = bswap32(*v31) >> 16;
            if (v114 == 0xFFFF)
            {
              v30->i16[0] = v244;
              v30->i16[1] = v243;
              v30->i16[2] = v242;
              v30->i16[3] = v241;
              *v31 = v111;
            }

            else if (v114)
            {
              CMYK64_DAM(v30, v31, v25, v17, v114);
            }

            else
            {
              *v30 = 0;
              *v31 = 0;
            }

            ++v30;
            v31 += 2 * v233;
            --v113;
          }

          while (v113);
          v30 += v239;
          v31 += 2 * v240;
          --v112;
        }

        while (v112);
        goto LABEL_257;
      case 4:
        v72 = __rev16(v17);
        v73 = v246[0];
        do
        {
          v74 = v10;
          do
          {
            v75 = bswap32(~*v31) >> 16;
            if (v75 == 0xFFFF)
            {
              v30->i16[0] = v244;
              v30->i16[1] = v243;
              v30->i16[2] = v242;
              v30->i16[3] = v241;
              *v31 = v72;
            }

            else if (v75)
            {
              CMYK64_DAM(v30, v31, v25, v17, v75);
            }

            else
            {
              *v30 = 0;
              *v31 = 0;
            }

            ++v30;
            v31 += 2 * v233;
            --v74;
          }

          while (v74);
          v30 += v239;
          v31 += 2 * v240;
          --v73;
        }

        while (v73);
        goto LABEL_257;
      case 5:
        v133 = v246[0];
        do
        {
          v134 = v10;
          do
          {
            v135 = bswap32(*v31) >> 16;
            CMYK64_DAMplusDAM(v30, v31, v25, v17, v135, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v135, ~v17);
            ++v30;
            v31 += 2 * v233;
            --v134;
          }

          while (v134);
          v30 += v239;
          v31 += 2 * v240;
          --v133;
          LODWORD(v10) = v238;
        }

        while (v133);
        goto LABEL_281;
      case 6:
        v148 = __rev16(v17);
        v149 = v246[0];
        do
        {
          v150 = v10;
          do
          {
            v151 = bswap32(*v31);
            if (HIWORD(v151) != 0xFFFF)
            {
              if (~HIWORD(v151) == 0xFFFF)
              {
                v30->i16[0] = v244;
                v30->i16[1] = v243;
                v30->i16[2] = v242;
                v30->i16[3] = v241;
                *v31 = v148;
              }

              else
              {
                CMYK64_DAplusDAM(v30, v31, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), HIWORD(v151), v25, v17, ~HIWORD(v151));
              }
            }

            ++v30;
            v31 += 2 * v233;
            --v150;
          }

          while (v150);
          v30 += v239;
          v31 += 2 * v240;
          --v149;
        }

        while (v149);
LABEL_257:
        v246[0] = 0;
        v7 = v229;
        goto LABEL_347;
      case 7:
        v115 = 2 * v233;
        if (!v6)
        {
          v211 = vdupq_n_s32(v29);
          v212 = v246[0];
          v213.i64[0] = 0x100000001;
          v213.i64[1] = 0x100000001;
          do
          {
            v214 = v10;
            do
            {
              v215 = bswap32(v30->u16[1] | (v30->u16[0] << 16));
              v216.i32[0] = v215;
              v216.i32[1] = vshr_n_u32(vdup_n_s32(v215), 0x10uLL).i32[1];
              v216.i32[2] = bswap32(v30->u16[2]) >> 16;
              v216.i32[3] = bswap32(v30->u16[3]) >> 16;
              v217 = vmulq_s32(v216, v211);
              v216.i32[0] = v215;
              *v30++ = vrev16_s8(vmovn_s32(vsubq_s32(v216, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v217, v217, 0x10uLL), v213), 0x10uLL))));
              v31 += v115;
              --v214;
            }

            while (v214);
            v30 += v239;
            v31 += 2 * v240;
            --v212;
          }

          while (v212);
          goto LABEL_369;
        }

        v67 = v7;
        v116 = v246[0];
        do
        {
          v117 = v238;
          do
          {
            CMYK64_DAM(v30, v31, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*v31) >> 16, v17);
            ++v30;
            v31 += v115;
            --v117;
          }

          while (v117);
          v30 += v239;
          v31 += 2 * v240;
          --v116;
        }

        while (v116);
LABEL_187:
        v246[0] = 0;
        v7 = v67;
        goto LABEL_348;
      case 8:
        v161 = 2 * v233;
        if (v6)
        {
          v162 = v246[0];
          do
          {
            v163 = v10;
            do
            {
              CMYK64_DAM(v30, v31, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*v31) >> 16, ~v17);
              ++v30;
              v31 += v161;
              --v163;
            }

            while (v163);
            v30 += v239;
            v31 += 2 * v240;
            --v162;
            LODWORD(v10) = v238;
          }

          while (v162);
LABEL_281:
          v246[0] = 0;
          v7 = v229;
          goto LABEL_348;
        }

        v220 = vdupq_n_s32(v17);
        v221 = v246[0];
        v222.i64[0] = 0x100000001;
        v222.i64[1] = 0x100000001;
        do
        {
          v223 = v10;
          do
          {
            v224 = bswap32(v30->u16[1] | (v30->u16[0] << 16));
            v225.i32[0] = v224;
            v225.i32[1] = vshr_n_u32(vdup_n_s32(v224), 0x10uLL).i32[1];
            v225.i32[2] = bswap32(v30->u16[2]) >> 16;
            v225.i32[3] = bswap32(v30->u16[3]) >> 16;
            v226 = vmulq_s32(v225, v220);
            v225.i32[0] = v224;
            *v30++ = vrev16_s8(vmovn_s32(vsubq_s32(v225, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v226, v226, 0x10uLL), v222), 0x10uLL))));
            v31 += v161;
            --v223;
          }

          while (v223);
          v30 += v239;
          v31 += 2 * v240;
          --v221;
        }

        while (v221);
LABEL_369:
        v246[0] = 0;
        goto LABEL_349;
      case 9:
        v67 = v7;
        v80 = v246[0];
        do
        {
          v81 = v238;
          do
          {
            v82 = bswap32(*v31) >> 16;
            CMYK64_DAMplusDAM(v30, v31, v25, v17, v82 ^ 0xFFFF, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v82, v17);
            ++v30;
            v31 += 2 * v233;
            --v81;
          }

          while (v81);
          v30 += v239;
          v31 += 2 * v240;
          --v80;
        }

        while (v80);
        goto LABEL_187;
      case 10:
        v158 = v246[0];
        do
        {
          v159 = v10;
          do
          {
            v160 = bswap32(*v31) >> 16;
            CMYK64_DAMplusDAM(v30, v31, v25, v17, v160 ^ 0xFFFF, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v160, ~v17);
            ++v30;
            v31 += 2 * v233;
            --v159;
          }

          while (v159);
          v30 += v239;
          v31 += 2 * v240;
          --v158;
          LODWORD(v10) = v238;
        }

        while (v158);
        goto LABEL_281;
      case 11:
        v67 = v7;
        v68 = v246[0];
        v69 = 2 * v233;
        if (v6)
        {
          do
          {
            v70 = v238;
            do
            {
              CMYK64_DAplusdDA(v30, v31, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*v31) >> 16, v25, v17);
              ++v30;
              v31 += v69;
              --v70;
            }

            while (v70);
            v30 += v239;
            v31 += 2 * v240;
            --v68;
          }

          while (v68);
        }

        else
        {
          do
          {
            v71 = v238;
            do
            {
              CMYK64_DplusdDA(v30, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v25, v17);
              ++v30;
              v31 += v69;
              --v71;
            }

            while (v71);
            v30 += v239;
            v31 += 2 * v240;
            --v68;
          }

          while (v68);
        }

        goto LABEL_187;
      case 12:
        v67 = v7;
        v76 = v246[0];
        v77 = 2 * v233;
        if (v6)
        {
          do
          {
            v78 = v238;
            do
            {
              CMYK64_DApluslDA(v30, v31, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), bswap32(*v31) >> 16, v25, v17);
              ++v30;
              v31 += v77;
              --v78;
            }

            while (v78);
            v30 += v239;
            v31 += 2 * v240;
            --v76;
          }

          while (v76);
        }

        else
        {
          do
          {
            v79 = v238;
            do
            {
              CMYK64_DpluslD(v30, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v25);
              ++v30;
              v31 += v77;
              --v79;
            }

            while (v79);
            v30 += v239;
            v31 += 2 * v240;
            --v76;
          }

          while (v76);
        }

        goto LABEL_187;
      case 13:
        if (!v17)
        {
          goto LABEL_349;
        }

        v142 = __rev16(v17);
        v143 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v144 = __rev16(*v31);
            goto LABEL_242;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v142;
LABEL_246:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v143;
            LODWORD(v10) = v238;
            if (!v143)
            {
              goto LABEL_346;
            }
          }
        }

        v144 = 0xFFFF;
LABEL_242:
        v145 = PDAmultiplyPDA_11872(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v144, v25, v17);
        v147 = bswap32(v145);
        v30->i16[0] = HIWORD(v147);
        v30->i16[1] = v147;
        v30->i16[2] = bswap32(HIDWORD(v145)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v145));
        if (v6)
        {
          *v31 = bswap32(v146) >> 16;
        }

        goto LABEL_246;
      case 14:
        if (!v17)
        {
          goto LABEL_349;
        }

        v61 = __rev16(v17);
        v62 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v63 = __rev16(*v31);
            goto LABEL_81;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v61;
LABEL_85:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v62;
            LODWORD(v10) = v238;
            if (!v62)
            {
              goto LABEL_346;
            }
          }
        }

        v63 = 0xFFFF;
LABEL_81:
        v64 = PDAscreenPDA_11873(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v63, v25, v17);
        v66 = bswap32(v64);
        v30->i16[0] = HIWORD(v66);
        v30->i16[1] = v66;
        v30->i16[2] = bswap32(HIDWORD(v64)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v64));
        if (v6)
        {
          *v31 = bswap32(v65) >> 16;
        }

        goto LABEL_85;
      case 15:
        if (!v17)
        {
          goto LABEL_349;
        }

        v105 = __rev16(v17);
        v106 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v107 = __rev16(*v31);
            goto LABEL_165;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v105;
LABEL_169:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v106;
            LODWORD(v10) = v238;
            if (!v106)
            {
              goto LABEL_346;
            }
          }
        }

        v107 = 0xFFFF;
LABEL_165:
        v108 = PDAoverlayPDA_11874(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v107, v25, v17);
        v110 = bswap32(v108);
        v30->i16[0] = HIWORD(v110);
        v30->i16[1] = v110;
        v30->i16[2] = bswap32(HIDWORD(v108)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v108));
        if (v6)
        {
          *v31 = bswap32(v109) >> 16;
        }

        goto LABEL_169;
      case 16:
        if (!v17)
        {
          goto LABEL_349;
        }

        v55 = __rev16(v17);
        v56 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v57 = __rev16(*v31);
            goto LABEL_68;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v55;
LABEL_72:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v56;
            LODWORD(v10) = v238;
            if (!v56)
            {
              goto LABEL_346;
            }
          }
        }

        v57 = 0xFFFF;
LABEL_68:
        v58 = PDAdarkenPDA_11876(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v57, v25, v17);
        v60 = bswap32(v58);
        v30->i16[0] = HIWORD(v60);
        v30->i16[1] = v60;
        v30->i16[2] = bswap32(HIDWORD(v58)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v58));
        if (v6)
        {
          *v31 = bswap32(v59) >> 16;
        }

        goto LABEL_72;
      case 17:
        if (!v17)
        {
          goto LABEL_349;
        }

        v121 = __rev16(v17);
        v122 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v123 = __rev16(*v31);
            goto LABEL_198;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v121;
LABEL_202:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v122;
            LODWORD(v10) = v238;
            if (!v122)
            {
              goto LABEL_346;
            }
          }
        }

        v123 = 0xFFFF;
LABEL_198:
        v124 = PDAlightenPDA_11875(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v123, v25, v17);
        v126 = bswap32(v124);
        v30->i16[0] = HIWORD(v126);
        v30->i16[1] = v126;
        v30->i16[2] = bswap32(HIDWORD(v124)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v124));
        if (v6)
        {
          *v31 = bswap32(v125) >> 16;
        }

        goto LABEL_202;
      case 18:
        if (!v17)
        {
          goto LABEL_349;
        }

        v152 = __rev16(v17);
        v153 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v154 = __rev16(*v31);
            goto LABEL_264;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v152;
LABEL_268:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v153;
            LODWORD(v10) = v238;
            if (!v153)
            {
              goto LABEL_346;
            }
          }
        }

        v154 = 0xFFFF;
LABEL_264:
        v155 = PDAcolordodgePDA_11877(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v154, v25, v17);
        v157 = bswap32(v155);
        v30->i16[0] = HIWORD(v157);
        v30->i16[1] = v157;
        v30->i16[2] = bswap32(HIDWORD(v155)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v155));
        if (v6)
        {
          *v31 = bswap32(v156) >> 16;
        }

        goto LABEL_268;
      case 19:
        if (!v17)
        {
          goto LABEL_349;
        }

        v170 = __rev16(v17);
        v171 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v172 = __rev16(*v31);
            goto LABEL_301;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v170;
LABEL_305:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v171;
            LODWORD(v10) = v238;
            if (!v171)
            {
              goto LABEL_346;
            }
          }
        }

        v172 = 0xFFFF;
LABEL_301:
        v173 = PDAcolorburnPDA_11878(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v172, v25, v17);
        v175 = bswap32(v173);
        v30->i16[0] = HIWORD(v175);
        v30->i16[1] = v175;
        v30->i16[2] = bswap32(HIDWORD(v173)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v173));
        if (v6)
        {
          *v31 = bswap32(v174) >> 16;
        }

        goto LABEL_305;
      case 20:
        if (!v17)
        {
          goto LABEL_349;
        }

        v127 = __rev16(v17);
        v128 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v129 = __rev16(*v31);
            goto LABEL_211;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v127;
LABEL_215:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v128;
            LODWORD(v10) = v238;
            if (!v128)
            {
              goto LABEL_346;
            }
          }
        }

        v129 = 0xFFFF;
LABEL_211:
        v130 = PDAsoftlightPDA_11880(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v129, v25, v17);
        v132 = bswap32(v130);
        v30->i16[0] = HIWORD(v132);
        v30->i16[1] = v132;
        v30->i16[2] = bswap32(HIDWORD(v130)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v130));
        if (v6)
        {
          *v31 = bswap32(v131) >> 16;
        }

        goto LABEL_215;
      case 21:
        if (!v17)
        {
          goto LABEL_349;
        }

        v136 = __rev16(v17);
        v137 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v138 = __rev16(*v31);
            goto LABEL_229;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v136;
LABEL_233:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v137;
            LODWORD(v10) = v238;
            if (!v137)
            {
              goto LABEL_346;
            }
          }
        }

        v138 = 0xFFFF;
LABEL_229:
        v139 = PDAhardlightPDA_11879(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v138, v25, v17);
        v141 = bswap32(v139);
        v30->i16[0] = HIWORD(v141);
        v30->i16[1] = v141;
        v30->i16[2] = bswap32(HIDWORD(v139)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v139));
        if (v6)
        {
          *v31 = bswap32(v140) >> 16;
        }

        goto LABEL_233;
      case 22:
        if (!v17)
        {
          goto LABEL_349;
        }

        v164 = __rev16(v17);
        v165 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v166 = __rev16(*v31);
            goto LABEL_288;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v164;
LABEL_292:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v165;
            LODWORD(v10) = v238;
            if (!v165)
            {
              goto LABEL_346;
            }
          }
        }

        v166 = 0xFFFF;
LABEL_288:
        v167 = PDAdifferencePDA_11881(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v166, v25, v17);
        v169 = bswap32(v167);
        v30->i16[0] = HIWORD(v169);
        v30->i16[1] = v169;
        v30->i16[2] = bswap32(HIDWORD(v167)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v167));
        if (v6)
        {
          *v31 = bswap32(v168) >> 16;
        }

        goto LABEL_292;
      case 23:
        if (!v17)
        {
          goto LABEL_349;
        }

        v176 = __rev16(v17);
        v177 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v178 = __rev16(*v31);
            goto LABEL_314;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v176;
LABEL_318:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v177;
            LODWORD(v10) = v238;
            if (!v177)
            {
              goto LABEL_346;
            }
          }
        }

        v178 = 0xFFFF;
LABEL_314:
        v179 = PDAexclusionPDA_11882(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v178, v25, v17);
        v181 = bswap32(v179);
        v30->i16[0] = HIWORD(v181);
        v30->i16[1] = v181;
        v30->i16[2] = bswap32(HIDWORD(v179)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v179));
        if (v6)
        {
          *v31 = bswap32(v180) >> 16;
        }

        goto LABEL_318;
      case 24:
        if (!v17)
        {
          goto LABEL_349;
        }

        v89 = __rev16(v17);
        v90 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v91 = __rev16(*v31);
            goto LABEL_140;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v89;
LABEL_144:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v90;
            LODWORD(v10) = v238;
            if (!v90)
            {
              goto LABEL_346;
            }
          }
        }

        v91 = 0xFFFF;
LABEL_140:
        v92 = PDAhuePDA_11883(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v91, v25, v17);
        v94 = bswap32(v92);
        v30->i16[0] = HIWORD(v94);
        v30->i16[1] = v94;
        v30->i16[2] = bswap32(HIDWORD(v92)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v92));
        if (v6)
        {
          *v31 = bswap32(v93) >> 16;
        }

        goto LABEL_144;
      case 25:
        if (!v17)
        {
          goto LABEL_349;
        }

        v83 = __rev16(v17);
        v84 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v85 = __rev16(*v31);
            goto LABEL_127;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v83;
LABEL_131:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v84;
            LODWORD(v10) = v238;
            if (!v84)
            {
              goto LABEL_346;
            }
          }
        }

        v85 = 0xFFFF;
LABEL_127:
        v86 = PDAsaturationPDA_11884(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v85, v25, v17);
        v88 = bswap32(v86);
        v30->i16[0] = HIWORD(v88);
        v30->i16[1] = v88;
        v30->i16[2] = bswap32(HIDWORD(v86)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v86));
        if (v6)
        {
          *v31 = bswap32(v87) >> 16;
        }

        goto LABEL_131;
      case 26:
        if (!v17)
        {
          goto LABEL_349;
        }

        v182 = __rev16(v17);
        v183 = v246[0];
        while (v6)
        {
          if (*v31)
          {
            v184 = __rev16(*v31);
            goto LABEL_327;
          }

          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v182;
LABEL_331:
          ++v30;
          v31 += 2 * v233;
          LODWORD(v10) = v10 - 1;
          if (!v10)
          {
            v30 += v239;
            v31 += 2 * v240;
            --v183;
            LODWORD(v10) = v238;
            if (!v183)
            {
              goto LABEL_346;
            }
          }
        }

        v184 = 0xFFFF;
LABEL_327:
        v185 = PDAluminosityPDA_11885(v25, v17, ((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v184);
        v187 = bswap32(v185);
        v30->i16[0] = HIWORD(v187);
        v30->i16[1] = v187;
        v30->i16[2] = bswap32(HIDWORD(v185)) >> 16;
        v30->i16[3] = __rev16(HIWORD(v185));
        if (v6)
        {
          *v31 = bswap32(v186) >> 16;
        }

        goto LABEL_331;
      case 27:
        if (!v17)
        {
          goto LABEL_349;
        }

        v49 = __rev16(v17);
        v50 = v246[0];
        break;
      default:
        goto LABEL_349;
    }

    while (1)
    {
      if (v6)
      {
        if (!*v31)
        {
          v30->i16[0] = v244;
          v30->i16[1] = v243;
          v30->i16[2] = v242;
          v30->i16[3] = v241;
          *v31 = v49;
          goto LABEL_59;
        }

        v51 = __rev16(*v31);
      }

      else
      {
        v51 = 0xFFFF;
      }

      v52 = PDAluminosityPDA_11885(((bswap32(v30->u16[2]) >> 16) << 32) | ((bswap32(v30->u16[3]) >> 16) << 48) | bswap32(v30->u16[1]) & 0xFFFF0000 | (bswap32(v30->u16[0]) >> 16), v51, v25, v17);
      v54 = bswap32(v52);
      v30->i16[0] = HIWORD(v54);
      v30->i16[1] = v54;
      v30->i16[2] = bswap32(HIDWORD(v52)) >> 16;
      v30->i16[3] = __rev16(HIWORD(v52));
      if (v6)
      {
        *v31 = bswap32(v53) >> 16;
      }

LABEL_59:
      ++v30;
      v31 += 2 * v233;
      LODWORD(v10) = v10 - 1;
      if (!v10)
      {
        v30 += v239;
        v31 += 2 * v240;
        --v50;
        LODWORD(v10) = v238;
        if (!v50)
        {
          break;
        }
      }
    }

LABEL_346:
    v246[0] = 0;
LABEL_347:
    v26 = v232;
LABEL_348:
    v29 = ~v17;
LABEL_349:
    v30 = v234;
LABEL_350:
    if (!v237)
    {
      return 1;
    }

    v245 = 0;
LABEL_36:
    if (shape_enum_clip_next(v237, &v245 + 1, &v245, v256, v246))
    {
      v30 += v26 * v245 + SHIDWORD(v245);
      v34 = v256[0];
      if (v6)
      {
        v31 = (v235 + 2 * v236 * v245 + 2 * SHIDWORD(v245));
      }

      v43 = v240;
      if (v6)
      {
        v43 = v236 - v256[0];
      }

      v240 = v43;
      LODWORD(v10) = v256[0];
      continue;
    }

    break;
  }

  v42 = v237;
LABEL_335:
  free(v42);
  return 1;
}

uint64_t CMYK64_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v142 = *(a2 + 5) - a5;
  }

  else
  {
    v142 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v141 = *a2;
  v140 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v137 = *(a2 + 11);
  v14 = *(a2 + 7) + v137 * a4;
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = 2 * (v8 != 0);
  v156 = result;
  v154 = v9;
  v155 = v6;
  v153 = v10;
  v138 = v13;
  v139 = v12;
  if (*(result + 176))
  {
    v136 = *(a2 + 13);
    v135 = *(a2 + 15);
    v134 = ~(-1 << v13);
    v133 = v13 - 4;
    v18 = (v16 - 4);
    v19 = 32 - v10;
    v20 = v9 ^ 0xFFFFu;
    v131 = a5;
    v132 = -v12;
    v21 = vdupq_n_s32(v20);
    v130 = v11 + 16 * a3 + 8;
    v22.i64[1] = -48;
    v23 = BLEND8_21892;
    v146 = v21;
    v144 = 32 - v10;
    while (1)
    {
      if (((v135 - v14) | (v14 - v136)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v14 & v134) >> v133) & 0xF;
        v25 = (v24 - 7) >= 9 ? v132 : v12;
        v26 = weights_21890[v24] & 0xF;
      }

      v157 = *(result + 32) + (v14 >> v13) * v12;
      v151 = a6;
      v149 = v14;
      if (v141 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v130;
        v28 = v131;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v157 + v29;
          if (v18 >= v157 + v29)
          {
            v32 = (v157 + v29);
          }

          else
          {
            v32 = v18;
          }

          if (v32 < v15)
          {
            v32 = v15;
          }

          v33 = *v32;
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v45 = (v31 + v25);
            if (v18 < v31 + v25)
            {
              v45 = v18;
            }

            if (v45 < v15)
            {
              v45 = v15;
            }

            v46 = v23[v26];
            v43 = v33 - ((v46 & v33) >> v26);
            v44 = (v46 & *v45) >> v26;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v10) | (v33 >> v19);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | v6 | ((v47 | v6) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          v22.i64[0] = __PAIR64__(v51, v52);
          v53 = vzip1q_s32(v22, v22);
          v53.i32[2] = v52;
          v54.i64[0] = __PAIR64__(v49, v48);
          v54.i64[1] = __PAIR64__(v52, v50);
          v22 = vsubq_s32(v53, v54);
          if (v9 != 0xFFFF)
          {
            v55 = vmulq_s32(v22, v21);
            v22 = vsubq_s32(v22, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v55, 0x10uLL), vmvnq_s8(v55)), 0x10uLL));
            v51 -= (v51 * v20 + ((v51 * v20) >> 16) + 1) >> 16;
          }

          *v7 = vrev16_s8(vmovn_s32(v22));
          if (v8)
          {
            *v8 = bswap32(v51) >> 16;
          }

          v27 += 2;
          ++v7;
          v8 = (v8 + v17);
          if (!--v28)
          {
            goto LABEL_106;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v18 < v35)
        {
          v35 = v18;
        }

        if (v35 < v15)
        {
          v35 = v15;
        }

        v36 = *v35;
        if (v26)
        {
          v37 = (v31 + v25);
          if (v18 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v18;
          }

          if (v38 < v15)
          {
            v38 = v15;
          }

          v39 = *v38;
          v40 = (v37 + (v30 >> 4));
          if (v18 < v40)
          {
            v40 = v18;
          }

          if (v40 < v15)
          {
            v40 = v15;
          }

          v41 = v23[v26];
          v33 = v33 - ((v41 & v33) >> v26) + ((v41 & v39) >> v26);
          v36 = v36 - ((v41 & v36) >> v26) + ((v41 & *v40) >> v26);
        }

        v42 = v23[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_106:
      v12 = v139;
      v7 += v140;
      LOBYTE(v13) = v138;
      v14 = v149 + v137;
      v8 += v142;
      a6 = v151 - 1;
      if (v151 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_106;
    }

    v56 = v130;
    v57 = v131;
    v58 = *(result + 32) + (v14 >> v13) * v12;
    v148 = v25;
    while (1)
    {
      v59 = *(v56 - 1);
      v60 = *v56;
      v61 = v58 + v59;
      if (v18 >= v58 + v59)
      {
        v62 = (v58 + v59);
      }

      else
      {
        v62 = v18;
      }

      if (v62 < v15)
      {
        v62 = v15;
      }

      v63 = *v62;
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        break;
      }

      if (v26)
      {
        v75 = (v61 + v25);
        if (v18 < v61 + v25)
        {
          v75 = v18;
        }

        if (v75 < v15)
        {
          v75 = v15;
        }

        v76 = v23[v26];
        v73 = v63 - ((v76 & v63) >> v26);
        v74 = (v76 & *v75) >> v26;
        goto LABEL_88;
      }

LABEL_89:
      v77 = (v63 << v10) | (v63 >> v19);
      v78 = HIBYTE(v77) | (HIBYTE(v77) << 8);
      v79 = BYTE2(v77) | (BYTE2(v77) << 8);
      v80 = BYTE1(v77) | (BYTE1(v77) << 8);
      v81 = v77 | v6 | ((v77 | v6) << 8);
      if (v78 <= v79)
      {
        v82 = v79;
      }

      else
      {
        v82 = v78;
      }

      if (v80 > v82)
      {
        v82 = v80;
      }

      v22.i64[0] = __PAIR64__(v81, v82);
      v83 = vzip1q_s32(v22, v22);
      v83.i32[2] = v82;
      v84.i64[0] = __PAIR64__(v79, v78);
      v84.i64[1] = __PAIR64__(v82, v80);
      v22 = vsubq_s32(v83, v84);
      if (v9 != 0xFFFF)
      {
        v85 = vmulq_s32(v22, v21);
        v22 = vsubq_s32(v22, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v85, 0x10uLL), vmvnq_s8(v85)), 0x10uLL));
        v81 -= (v81 * v20 + ((v81 * v20) >> 16) + 1) >> 16;
      }

      v86 = (v22.u16[4] << 32) | (v22.u32[3] << 48) | v22.u16[0] | (v22.u16[2] << 16);
      if (v8)
      {
        if (v81)
        {
          if (v81 == 0xFFFF)
          {
            *v7 = vrev16_s8(vmovn_s32(v22));
            *v8 = -1;
          }

          else
          {
            v90 = v23;
            v91 = v17;
            v92 = v20;
            CMYK64_DAplusDAM(v7, v8, v86, v81, ((bswap32(v7->u16[2]) >> 16) << 32) | ((bswap32(v7->u16[3]) >> 16) << 48) | bswap32(v7->u16[1]) & 0xFFFF0000 | (bswap32(v7->u16[0]) >> 16), bswap32(*v8) >> 16, ~v81);
            result = v156;
            v58 = v157;
            v23 = v90;
            v25 = v148;
            v21 = v146;
            v19 = v144;
            v20 = v92;
            v17 = v91;
            LOBYTE(v10) = v153;
            v9 = v154;
            v6 = v155;
          }
        }
      }

      else if (v81)
      {
        if (v81 != 0xFFFF)
        {
          v87.i32[0] = bswap32(v7->u16[1] | (v7->u16[0] << 16));
          v87.i32[1] = HIWORD(v87.i32[0]);
          v87.i64[1] = __PAIR64__(bswap32(v7->u16[3]) >> 16, bswap32(v7->u16[2]) >> 16);
          v88 = vmull_u16(vmovn_s32(v87), vdup_n_s16(~v81));
          v22.i32[0] = v22.u16[0] | (v22.u16[2] << 16);
          v89.i64[0] = 0x100000001;
          v89.i64[1] = 0x100000001;
          v22 = vsraq_n_u32(vmovn_hight_s64(*v22.i8, vshlq_u64(vdupq_n_s64(v86), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v88, v88, 0x10uLL), v89), 0x10uLL);
        }

        *v7 = vrev16_s8(vmovn_s32(v22));
      }

      v56 += 2;
      ++v7;
      v8 = (v8 + v17);
      if (!--v57)
      {
        goto LABEL_106;
      }
    }

    v65 = (v61 + (v60 >> 4));
    if (v18 < v65)
    {
      v65 = v18;
    }

    if (v65 < v15)
    {
      v65 = v15;
    }

    v66 = *v65;
    if (v26)
    {
      v67 = (v61 + v25);
      if (v18 >= v67)
      {
        v68 = v67;
      }

      else
      {
        v68 = v18;
      }

      if (v68 < v15)
      {
        v68 = v15;
      }

      v69 = *v68;
      v70 = (v67 + (v60 >> 4));
      if (v18 < v70)
      {
        v70 = v18;
      }

      if (v70 < v15)
      {
        v70 = v15;
      }

      v71 = v23[v26];
      v63 = v63 - ((v71 & v63) >> v26) + ((v71 & v69) >> v26);
      v66 = v66 - ((v71 & v66) >> v26) + ((v71 & *v70) >> v26);
    }

    v72 = v23[*v56 & 0xF];
    v73 = v63 - ((v72 & v63) >> v64);
    v74 = (v72 & v66) >> v64;
LABEL_88:
    v63 = v73 + v74;
    goto LABEL_89;
  }

  v147 = (v11 + 16 * a3);
  v93 = v16 - 4;
  v94 = 32 - v10;
  v95 = v9 ^ 0xFFFF;
  v96 = vdupq_n_s32(v9 ^ 0xFFFFu);
  v97.i64[1] = -48;
  v145 = a5;
  v158 = v96;
  do
  {
    v98 = *(result + 32);
    v99 = &v98[(v14 >> v13) * v12];
    v152 = a6;
    v150 = v14;
    if (v141 == 1)
    {
      if (a5 >= 1)
      {
        v101 = v145;
        v100 = v147;
        do
        {
          v102 = *v100;
          v100 += 2;
          v103 = &v99[v102];
          if (v93 < &v99[v102])
          {
            v103 = v93;
          }

          if (v103 < v98)
          {
            v103 = v98;
          }

          v104 = (*v103 << v10) | (*v103 >> v94);
          v105 = HIBYTE(v104) | (HIBYTE(v104) << 8);
          v106 = BYTE2(v104) | (BYTE2(v104) << 8);
          v107 = BYTE1(v104) | (BYTE1(v104) << 8);
          v108 = v104 | v6 | ((v104 | v6) << 8);
          if (v105 <= v106)
          {
            v109 = v106;
          }

          else
          {
            v109 = v105;
          }

          if (v107 > v109)
          {
            v109 = v107;
          }

          v97.i64[0] = __PAIR64__(v108, v109);
          v110 = vzip1q_s32(v97, v97);
          v110.i32[2] = v109;
          v111.i64[0] = __PAIR64__(v106, v105);
          v111.i64[1] = __PAIR64__(v109, v107);
          v97 = vsubq_s32(v110, v111);
          if (v9 != 0xFFFF)
          {
            v112 = vmulq_s32(v97, v96);
            v97 = vsubq_s32(v97, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v112, 0x10uLL), vmvnq_s8(v112)), 0x10uLL));
            v108 -= (v108 * v95 + ((v108 * v95) >> 16) + 1) >> 16;
          }

          *v7 = vrev16_s8(vmovn_s32(v97));
          if (v8)
          {
            *v8 = bswap32(v108) >> 16;
          }

          ++v7;
          v8 = (v8 + v17);
          --v101;
        }

        while (v101);
      }
    }

    else
    {
      v114 = v145;
      v113 = v147;
      if (a5 >= 1)
      {
        do
        {
          v115 = *v113;
          v113 += 2;
          v116 = &v99[v115];
          if (v93 < &v99[v115])
          {
            v116 = v93;
          }

          if (v116 < *(result + 32))
          {
            v116 = *(result + 32);
          }

          v117 = (*v116 << v10) | (*v116 >> v94);
          v118 = HIBYTE(v117) | (HIBYTE(v117) << 8);
          v119 = BYTE2(v117) | (BYTE2(v117) << 8);
          v120 = BYTE1(v117) | (BYTE1(v117) << 8);
          v121 = v117 | v6 | ((v117 | v6) << 8);
          if (v118 <= v119)
          {
            v122 = v119;
          }

          else
          {
            v122 = v118;
          }

          if (v120 > v122)
          {
            v122 = v120;
          }

          v97.i64[0] = __PAIR64__(v121, v122);
          v123 = vzip1q_s32(v97, v97);
          v123.i32[2] = v122;
          v124.i64[0] = __PAIR64__(v119, v118);
          v124.i64[1] = __PAIR64__(v122, v120);
          v97 = vsubq_s32(v123, v124);
          if (v9 != 0xFFFF)
          {
            v125 = vmulq_s32(v97, v96);
            v97 = vsubq_s32(v97, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v125, 0x10uLL), vmvnq_s8(v125)), 0x10uLL));
            v121 -= (v121 * v95 + ((v121 * v95) >> 16) + 1) >> 16;
          }

          v126 = (v97.u16[4] << 32) | (v97.u32[3] << 48) | v97.u16[0] | (v97.u16[2] << 16);
          if (v8)
          {
            if (v121)
            {
              if (v121 == 0xFFFF)
              {
                *v7 = vrev16_s8(vmovn_s32(v97));
                *v8 = -1;
              }

              else
              {
                CMYK64_DAplusDAM(v7, v8, v126, v121, ((bswap32(v7->u16[2]) >> 16) << 32) | ((bswap32(v7->u16[3]) >> 16) << 48) | bswap32(v7->u16[1]) & 0xFFFF0000 | (bswap32(v7->u16[0]) >> 16), bswap32(*v8) >> 16, ~v121);
                v96 = v158;
                LOBYTE(v10) = v153;
                v9 = v154;
                v6 = v155;
                result = v156;
              }
            }
          }

          else if (v121)
          {
            if (v121 != 0xFFFF)
            {
              v127.i32[0] = bswap32(v7->u16[1] | (v7->u16[0] << 16));
              v127.i32[1] = HIWORD(v127.i32[0]);
              v127.i64[1] = __PAIR64__(bswap32(v7->u16[3]) >> 16, bswap32(v7->u16[2]) >> 16);
              v128 = vmull_u16(vmovn_s32(v127), vdup_n_s16(~v121));
              v97.i32[0] = v97.u16[0] | (v97.u16[2] << 16);
              v129.i64[0] = 0x100000001;
              v129.i64[1] = 0x100000001;
              v97 = vsraq_n_u32(vmovn_hight_s64(*v97.i8, vshlq_u64(vdupq_n_s64(v126), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v128, v128, 0x10uLL), v129), 0x10uLL);
            }

            *v7 = vrev16_s8(vmovn_s32(v97));
          }

          ++v7;
          v8 = (v8 + v17);
          --v114;
        }

        while (v114);
      }
    }

    v12 = v139;
    v7 += v140;
    LOBYTE(v13) = v138;
    v14 = v150 + v137;
    v8 += v142;
    a6 = v152 - 1;
  }

  while (v152 != 1);
  return result;
}

uint64_t CMYK64_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(result + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v144 = *(a2 + 5) - a5;
  }

  else
  {
    v144 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v143 = *a2;
  v142 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v139 = *(a2 + 11);
  v14 = *(a2 + 7) + v139 * a4;
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = 2 * (v8 != 0);
  v158 = result;
  v156 = v9;
  v157 = v6;
  v155 = v10;
  v140 = v13;
  v141 = v12;
  if (*(result + 176))
  {
    v138 = *(a2 + 13);
    v137 = *(a2 + 15);
    v136 = ~(-1 << v13);
    v135 = v13 - 4;
    v18 = (v16 - 4);
    v19 = 32 - v10;
    v20 = v9 ^ 0xFFFFu;
    v133 = a5;
    v134 = -v12;
    v21 = vdupq_n_s32(v20);
    v132 = v11 + 16 * a3 + 8;
    v22.i64[1] = -48;
    v23 = BLEND8_21892;
    v148 = v21;
    v146 = 32 - v10;
    while (1)
    {
      if (((v137 - v14) | (v14 - v138)) < 0)
      {
        v26 = 0;
        v25 = 0;
      }

      else
      {
        v24 = ((v14 & v136) >> v135) & 0xF;
        v25 = (v24 - 7) >= 9 ? v134 : v12;
        v26 = weights_21890[v24] & 0xF;
      }

      v159 = *(result + 32) + (v14 >> v13) * v12;
      v153 = a6;
      v151 = v14;
      if (v143 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v27 = v132;
        v28 = v133;
        while (1)
        {
          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v159 + v29;
          if (v18 >= v159 + v29)
          {
            v32 = (v159 + v29);
          }

          else
          {
            v32 = v18;
          }

          if (v32 < v15)
          {
            v32 = v15;
          }

          v33 = bswap32(*v32);
          v34 = v30 & 0xF;
          if ((v30 & 0xF) != 0)
          {
            break;
          }

          if (v26)
          {
            v45 = (v31 + v25);
            if (v18 < v31 + v25)
            {
              v45 = v18;
            }

            if (v45 < v15)
            {
              v45 = v15;
            }

            v46 = v23[v26];
            v43 = v33 - ((v46 & v33) >> v26);
            v44 = (bswap32(*v45) & v46) >> v26;
            goto LABEL_46;
          }

LABEL_47:
          v47 = (v33 << v10) | (v33 >> v19);
          v48 = HIBYTE(v47) | (HIBYTE(v47) << 8);
          v49 = BYTE2(v47) | (BYTE2(v47) << 8);
          v50 = BYTE1(v47) | (BYTE1(v47) << 8);
          v51 = v47 | v6 | ((v47 | v6) << 8);
          if (v48 <= v49)
          {
            v52 = v49;
          }

          else
          {
            v52 = v48;
          }

          if (v50 > v52)
          {
            v52 = v50;
          }

          v22.i64[0] = __PAIR64__(v51, v52);
          v53 = vzip1q_s32(v22, v22);
          v53.i32[2] = v52;
          v54.i64[0] = __PAIR64__(v49, v48);
          v54.i64[1] = __PAIR64__(v52, v50);
          v22 = vsubq_s32(v53, v54);
          if (v9 != 0xFFFF)
          {
            v55 = vmulq_s32(v22, v21);
            v22 = vsubq_s32(v22, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v55, 0x10uLL), vmvnq_s8(v55)), 0x10uLL));
            v51 -= (v51 * v20 + ((v51 * v20) >> 16) + 1) >> 16;
          }

          *v7 = vrev16_s8(vmovn_s32(v22));
          if (v8)
          {
            *v8 = bswap32(v51) >> 16;
          }

          v27 += 2;
          ++v7;
          v8 = (v8 + v17);
          if (!--v28)
          {
            goto LABEL_106;
          }
        }

        v35 = (v31 + (v30 >> 4));
        if (v18 < v35)
        {
          v35 = v18;
        }

        if (v35 < v15)
        {
          v35 = v15;
        }

        v36 = bswap32(*v35);
        if (v26)
        {
          v37 = (v31 + v25);
          if (v18 >= v37)
          {
            v38 = v37;
          }

          else
          {
            v38 = v18;
          }

          if (v38 < v15)
          {
            v38 = v15;
          }

          v39 = bswap32(*v38);
          v40 = (v37 + (v30 >> 4));
          if (v18 < v40)
          {
            v40 = v18;
          }

          if (v40 < v15)
          {
            v40 = v15;
          }

          v41 = v23[v26];
          v33 = v33 - ((v41 & v33) >> v26) + ((v41 & v39) >> v26);
          v36 = v36 - ((v41 & v36) >> v26) + ((bswap32(*v40) & v41) >> v26);
        }

        v42 = v23[*v27 & 0xF];
        v43 = v33 - ((v42 & v33) >> v34);
        v44 = (v42 & v36) >> v34;
LABEL_46:
        v33 = v43 + v44;
        goto LABEL_47;
      }

LABEL_106:
      v12 = v141;
      v7 += v142;
      LOBYTE(v13) = v140;
      v14 = v151 + v139;
      v8 += v144;
      a6 = v153 - 1;
      if (v153 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_106;
    }

    v56 = v132;
    v57 = v133;
    v58 = *(result + 32) + (v14 >> v13) * v12;
    v150 = v25;
    while (1)
    {
      v59 = *(v56 - 1);
      v60 = *v56;
      v61 = v58 + v59;
      if (v18 >= v58 + v59)
      {
        v62 = (v58 + v59);
      }

      else
      {
        v62 = v18;
      }

      if (v62 < v15)
      {
        v62 = v15;
      }

      v63 = bswap32(*v62);
      v64 = v60 & 0xF;
      if ((v60 & 0xF) != 0)
      {
        break;
      }

      if (v26)
      {
        v75 = (v61 + v25);
        if (v18 < v61 + v25)
        {
          v75 = v18;
        }

        if (v75 < v15)
        {
          v75 = v15;
        }

        v76 = v23[v26];
        v73 = v63 - ((v76 & v63) >> v26);
        v74 = (bswap32(*v75) & v76) >> v26;
        goto LABEL_88;
      }

LABEL_89:
      v77 = (v63 << v10) | (v63 >> v19);
      v78 = HIBYTE(v77) | (HIBYTE(v77) << 8);
      v79 = BYTE2(v77) | (BYTE2(v77) << 8);
      v80 = BYTE1(v77) | (BYTE1(v77) << 8);
      v81 = v77 | v6 | ((v77 | v6) << 8);
      if (v78 <= v79)
      {
        v82 = v79;
      }

      else
      {
        v82 = v78;
      }

      if (v80 > v82)
      {
        v82 = v80;
      }

      v22.i64[0] = __PAIR64__(v81, v82);
      v83 = vzip1q_s32(v22, v22);
      v83.i32[2] = v82;
      v84.i64[0] = __PAIR64__(v79, v78);
      v84.i64[1] = __PAIR64__(v82, v80);
      v22 = vsubq_s32(v83, v84);
      if (v9 != 0xFFFF)
      {
        v85 = vmulq_s32(v22, v21);
        v22 = vsubq_s32(v22, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v85, 0x10uLL), vmvnq_s8(v85)), 0x10uLL));
        v81 -= (v81 * v20 + ((v81 * v20) >> 16) + 1) >> 16;
      }

      v86 = (v22.u16[4] << 32) | (v22.u32[3] << 48) | v22.u16[0] | (v22.u16[2] << 16);
      if (v8)
      {
        if (v81)
        {
          if (v81 == 0xFFFF)
          {
            *v7 = vrev16_s8(vmovn_s32(v22));
            *v8 = -1;
          }

          else
          {
            v90 = v23;
            v91 = v17;
            v92 = v20;
            CMYK64_DAplusDAM(v7, v8, v86, v81, ((bswap32(v7->u16[2]) >> 16) << 32) | ((bswap32(v7->u16[3]) >> 16) << 48) | bswap32(v7->u16[1]) & 0xFFFF0000 | (bswap32(v7->u16[0]) >> 16), bswap32(*v8) >> 16, ~v81);
            result = v158;
            v58 = v159;
            v23 = v90;
            v25 = v150;
            v21 = v148;
            v19 = v146;
            v20 = v92;
            v17 = v91;
            LOBYTE(v10) = v155;
            v9 = v156;
            v6 = v157;
          }
        }
      }

      else if (v81)
      {
        if (v81 != 0xFFFF)
        {
          v87.i32[0] = bswap32(v7->u16[1] | (v7->u16[0] << 16));
          v87.i32[1] = HIWORD(v87.i32[0]);
          v87.i64[1] = __PAIR64__(bswap32(v7->u16[3]) >> 16, bswap32(v7->u16[2]) >> 16);
          v88 = vmull_u16(vmovn_s32(v87), vdup_n_s16(~v81));
          v22.i32[0] = v22.u16[0] | (v22.u16[2] << 16);
          v89.i64[0] = 0x100000001;
          v89.i64[1] = 0x100000001;
          v22 = vsraq_n_u32(vmovn_hight_s64(*v22.i8, vshlq_u64(vdupq_n_s64(v86), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v88, v88, 0x10uLL), v89), 0x10uLL);
        }

        *v7 = vrev16_s8(vmovn_s32(v22));
      }

      v56 += 2;
      ++v7;
      v8 = (v8 + v17);
      if (!--v57)
      {
        goto LABEL_106;
      }
    }

    v65 = (v61 + (v60 >> 4));
    if (v18 < v65)
    {
      v65 = v18;
    }

    if (v65 < v15)
    {
      v65 = v15;
    }

    v66 = bswap32(*v65);
    if (v26)
    {
      v67 = (v61 + v25);
      if (v18 >= v67)
      {
        v68 = v67;
      }

      else
      {
        v68 = v18;
      }

      if (v68 < v15)
      {
        v68 = v15;
      }

      v69 = bswap32(*v68);
      v70 = (v67 + (v60 >> 4));
      if (v18 < v70)
      {
        v70 = v18;
      }

      if (v70 < v15)
      {
        v70 = v15;
      }

      v71 = v23[v26];
      v63 = v63 - ((v71 & v63) >> v26) + ((v71 & v69) >> v26);
      v66 = v66 - ((v71 & v66) >> v26) + ((bswap32(*v70) & v71) >> v26);
    }

    v72 = v23[*v56 & 0xF];
    v73 = v63 - ((v72 & v63) >> v64);
    v74 = (v72 & v66) >> v64;
LABEL_88:
    v63 = v73 + v74;
    goto LABEL_89;
  }

  v149 = (v11 + 16 * a3);
  v93 = (v16 - 4);
  v94 = 32 - v10;
  v95 = v9 ^ 0xFFFF;
  v96 = vdupq_n_s32(v9 ^ 0xFFFFu);
  v97.i64[1] = -48;
  v147 = a5;
  v160 = v96;
  do
  {
    v98 = *(result + 32);
    v99 = v98 + (v14 >> v13) * v12;
    v154 = a6;
    v152 = v14;
    if (v143 == 1)
    {
      if (a5 >= 1)
      {
        v101 = v147;
        v100 = v149;
        do
        {
          v102 = *v100;
          v100 += 2;
          v103 = &v99[v102];
          if (v93 < &v99[v102])
          {
            v103 = v93;
          }

          if (v103 < v98)
          {
            v103 = v98;
          }

          v104 = bswap32(*v103);
          v105 = (v104 << v10) | (v104 >> v94);
          v106 = HIBYTE(v105) | (HIBYTE(v105) << 8);
          v107 = BYTE2(v105) | (BYTE2(v105) << 8);
          v108 = BYTE1(v105) | (BYTE1(v105) << 8);
          v109 = v105 | v6 | ((v105 | v6) << 8);
          if (v106 <= v107)
          {
            v110 = v107;
          }

          else
          {
            v110 = v106;
          }

          if (v108 > v110)
          {
            v110 = v108;
          }

          v97.i64[0] = __PAIR64__(v109, v110);
          v111 = vzip1q_s32(v97, v97);
          v111.i32[2] = v110;
          v112.i64[0] = __PAIR64__(v107, v106);
          v112.i64[1] = __PAIR64__(v110, v108);
          v97 = vsubq_s32(v111, v112);
          if (v9 != 0xFFFF)
          {
            v113 = vmulq_s32(v97, v96);
            v97 = vsubq_s32(v97, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v113, 0x10uLL), vmvnq_s8(v113)), 0x10uLL));
            v109 -= (v109 * v95 + ((v109 * v95) >> 16) + 1) >> 16;
          }

          *v7 = vrev16_s8(vmovn_s32(v97));
          if (v8)
          {
            *v8 = bswap32(v109) >> 16;
          }

          ++v7;
          v8 = (v8 + v17);
          --v101;
        }

        while (v101);
      }
    }

    else
    {
      v115 = v147;
      v114 = v149;
      if (a5 >= 1)
      {
        do
        {
          v116 = *v114;
          v114 += 2;
          v117 = &v99[v116];
          if (v93 < &v99[v116])
          {
            v117 = v93;
          }

          if (v117 < *(result + 32))
          {
            v117 = *(result + 32);
          }

          v118 = bswap32(*v117);
          v119 = (v118 << v10) | (v118 >> v94);
          v120 = HIBYTE(v119) | (HIBYTE(v119) << 8);
          v121 = BYTE2(v119) | (BYTE2(v119) << 8);
          v122 = BYTE1(v119) | (BYTE1(v119) << 8);
          v123 = v119 | v6 | ((v119 | v6) << 8);
          if (v120 <= v121)
          {
            v124 = v121;
          }

          else
          {
            v124 = v120;
          }

          if (v122 > v124)
          {
            v124 = v122;
          }

          v97.i64[0] = __PAIR64__(v123, v124);
          v125 = vzip1q_s32(v97, v97);
          v125.i32[2] = v124;
          v126.i64[0] = __PAIR64__(v121, v120);
          v126.i64[1] = __PAIR64__(v124, v122);
          v97 = vsubq_s32(v125, v126);
          if (v9 != 0xFFFF)
          {
            v127 = vmulq_s32(v97, v96);
            v97 = vsubq_s32(v97, vshrq_n_u32(vsubq_s32(vshrq_n_u32(v127, 0x10uLL), vmvnq_s8(v127)), 0x10uLL));
            v123 -= (v123 * v95 + ((v123 * v95) >> 16) + 1) >> 16;
          }

          v128 = (v97.u16[4] << 32) | (v97.u32[3] << 48) | v97.u16[0] | (v97.u16[2] << 16);
          if (v8)
          {
            if (v123)
            {
              if (v123 == 0xFFFF)
              {
                *v7 = vrev16_s8(vmovn_s32(v97));
                *v8 = -1;
              }

              else
              {
                CMYK64_DAplusDAM(v7, v8, v128, v123, ((bswap32(v7->u16[2]) >> 16) << 32) | ((bswap32(v7->u16[3]) >> 16) << 48) | bswap32(v7->u16[1]) & 0xFFFF0000 | (bswap32(v7->u16[0]) >> 16), bswap32(*v8) >> 16, ~v123);
                v96 = v160;
                LOBYTE(v10) = v155;
                v9 = v156;
                v6 = v157;
                result = v158;
              }
            }
          }

          else if (v123)
          {
            if (v123 != 0xFFFF)
            {
              v129.i32[0] = bswap32(v7->u16[1] | (v7->u16[0] << 16));
              v129.i32[1] = HIWORD(v129.i32[0]);
              v129.i64[1] = __PAIR64__(bswap32(v7->u16[3]) >> 16, bswap32(v7->u16[2]) >> 16);
              v130 = vmull_u16(vmovn_s32(v129), vdup_n_s16(~v123));
              v97.i32[0] = v97.u16[0] | (v97.u16[2] << 16);
              v131.i64[0] = 0x100000001;
              v131.i64[1] = 0x100000001;
              v97 = vsraq_n_u32(vmovn_hight_s64(*v97.i8, vshlq_u64(vdupq_n_s64(v128), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v130, v130, 0x10uLL), v131), 0x10uLL);
            }

            *v7 = vrev16_s8(vmovn_s32(v97));
          }

          ++v7;
          v8 = (v8 + v17);
          --v115;
        }

        while (v115);
      }
    }

    v12 = v141;
    v7 += v142;
    LOBYTE(v13) = v140;
    v14 = v152 + v139;
    v8 += v144;
    a6 = v154 - 1;
  }

  while (v154 != 1);
  return result;
}

uint64_t CMYK64_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v170 = *(a2 + 5) - a5;
  }

  else
  {
    v170 = 0;
  }

  v8 = *(a2 + 4);
  v169 = *a2;
  v168 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v165 = *(a2 + 11);
  v12 = *(a2 + 7) + v165 * a4;
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v15 = 2 * (v7 != 0);
  v180 = result;
  v179 = v8;
  v166 = v11;
  v167 = v10;
  if (*(result + 176))
  {
    v162 = *(a2 + 13);
    v161 = *(a2 + 15);
    v159 = ~(-1 << v11);
    v158 = v11 - 4;
    v157 = -v10;
    v16 = v14 - 3;
    v17 = v8 ^ 0xFFFFu;
    v160 = -2 - (0xFFFF * v17 + ((0xFFFF * v17) >> 16));
    v18 = vdup_n_s32(v17);
    v19 = a5;
    v20 = BLEND8_21892;
    v155 = v9 + 16 * a3 + 8;
    v156 = v19;
    v21 = xmmword_18439CC00;
    v172 = 2 * (v7 != 0);
    while (1)
    {
      if (((v161 - v12) | (v12 - v162)) < 0)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v22 = ((v12 & v159) >> v158) & 0xF;
        v23 = (v22 - 7) >= 9 ? v157 : v10;
        v24 = weights_21890[v22] & 0xF;
      }

      v25 = *(result + 32) + (v12 >> v11) * v10;
      v177 = a6;
      v175 = v12;
      if (v169 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v26 = v155;
        v27 = v156;
        while (1)
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v25 + v28;
          if (v16 >= v25 + v28)
          {
            v31 = (v25 + v28);
          }

          else
          {
            v31 = v16;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = v29 & 0xF;
          if ((v29 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v44 = (v30 + v23);
            if (v16 < v30 + v23)
            {
              v44 = v16;
            }

            if (v44 < v13)
            {
              v44 = v13;
            }

            v45 = v20[v24];
            v42 = v32 - ((v45 & v32) >> v24);
            v43 = (((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8)) & v45) >> v24;
            goto LABEL_43;
          }

LABEL_44:
          v46 = HIBYTE(v32) | (HIBYTE(v32) << 8);
          v47 = BYTE2(v32) | (BYTE2(v32) << 8);
          v48 = BYTE1(v32) | (BYTE1(v32) << 8);
          if (v46 <= v47)
          {
            v49 = BYTE2(v32) | (BYTE2(v32) << 8);
          }

          else
          {
            v49 = HIBYTE(v32) | (HIBYTE(v32) << 8);
          }

          if (v48 <= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v48;
          }

          v51 = v50 - v46;
          v52 = v50 - v47;
          v53 = v50 - v48;
          v54 = v50 ^ 0xFFFF;
          if (v8 == 0xFFFF)
          {
            v55 = (v54 << 48) | (v53 << 32);
            v56 = 0xFFFF;
          }

          else
          {
            v57 = vmul_s32(__PAIR64__(v53, v54), v18);
            v51 -= (v51 * v17 + ((v51 * v17) >> 16) + 1) >> 16;
            v52 -= (v52 * v17 + ((v52 * v17) >> 16) + 1) >> 16;
            v58 = vand_s8(vsub_s32(__PAIR64__(v53, v54), vshr_n_u32(vsub_s32(vshr_n_u32(v57, 0x10uLL), vmvn_s8(v57)), 0x10uLL)), 0xFFFF0000FFFFLL);
            v59.i64[0] = v58.u32[0];
            v59.i64[1] = v58.u32[1];
            v60 = vshlq_u64(v59, v21);
            v55 = vorrq_s8(v60, vdupq_laneq_s64(v60, 1)).u64[0];
            v56 = HIWORD(v160);
          }

          v6->i16[0] = bswap32(v55 | v51) >> 16;
          v6->i16[1] = bswap32(v55 | (v52 << 16));
          v6->i16[2] = bswap32(HIDWORD(v55)) >> 16;
          v6->i16[3] = __rev16(HIWORD(v55));
          if (v7)
          {
            *v7 = __rev16(v56);
          }

          v26 += 2;
          ++v6;
          v7 = (v7 + v15);
          if (!--v27)
          {
            goto LABEL_107;
          }
        }

        v34 = (v30 + (v29 >> 4));
        if (v16 < v34)
        {
          v34 = v16;
        }

        if (v34 < v13)
        {
          v34 = v13;
        }

        v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
        if (v24)
        {
          v36 = (v30 + v23);
          if (v16 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v16;
          }

          if (v37 < v13)
          {
            v37 = v13;
          }

          v38 = (*v37 << 24) | (v37[1] << 16) | (v37[2] << 8);
          v39 = &v36[v29 >> 4];
          if (v16 < v39)
          {
            v39 = v16;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = v20[v24];
          v32 = v32 - ((v40 & v32) >> v24) + ((v40 & v38) >> v24);
          v35 = v35 - ((v40 & v35) >> v24) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & v40) >> v24);
        }

        v41 = v20[*v26 & 0xF];
        v42 = v32 - ((v41 & v32) >> v33);
        v43 = (v41 & v35) >> v33;
LABEL_43:
        v32 = v42 + v43;
        goto LABEL_44;
      }

LABEL_107:
      v10 = v167;
      v6 += v168;
      LOBYTE(v11) = v166;
      v12 = v175 + v165;
      v7 += v170;
      a6 = v177 - 1;
      if (v177 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_107;
    }

    v62 = v155;
    v61 = v156;
    v63 = HIWORD(v160);
    v174 = v23;
    while (1)
    {
      v64 = *(v62 - 1);
      v65 = *v62;
      v66 = v25 + v64;
      if (v16 >= v25 + v64)
      {
        v67 = (v25 + v64);
      }

      else
      {
        v67 = v16;
      }

      if (v67 < v13)
      {
        v67 = v13;
      }

      v68 = (*v67 << 24) | (v67[1] << 16) | (v67[2] << 8);
      v69 = v65 & 0xF;
      if ((v65 & 0xF) != 0)
      {
        break;
      }

      if (v24)
      {
        v80 = (v66 + v23);
        if (v16 < v66 + v23)
        {
          v80 = v16;
        }

        if (v80 < v13)
        {
          v80 = v13;
        }

        v81 = v20[v24];
        v78 = v68 - ((v81 & v68) >> v24);
        v79 = (((*v80 << 24) | (v80[1] << 16) | (v80[2] << 8)) & v81) >> v24;
        goto LABEL_87;
      }

LABEL_88:
      v82 = HIBYTE(v68) | (HIBYTE(v68) << 8);
      v83 = BYTE2(v68) | (BYTE2(v68) << 8);
      v84 = BYTE1(v68) | (BYTE1(v68) << 8);
      if (v82 <= v83)
      {
        v85 = BYTE2(v68) | (BYTE2(v68) << 8);
      }

      else
      {
        v85 = HIBYTE(v68) | (HIBYTE(v68) << 8);
      }

      if (v84 <= v85)
      {
        v86 = v85;
      }

      else
      {
        v86 = v84;
      }

      v87 = v86 - v82;
      v88 = v86 - v83;
      v89 = v86 - v84;
      v90 = v86 ^ 0xFFFF;
      if (v8 == 0xFFFF)
      {
        v91 = (v90 << 48) | (v89 << 32);
        v92 = 0xFFFF;
      }

      else
      {
        v93 = vmul_s32(__PAIR64__(v89, v90), v18);
        v87 -= (v87 * v17 + ((v87 * v17) >> 16) + 1) >> 16;
        v88 -= (v88 * v17 + ((v88 * v17) >> 16) + 1) >> 16;
        v94 = vand_s8(vsub_s32(__PAIR64__(v89, v90), vshr_n_u32(vsub_s32(vshr_n_u32(v93, 0x10uLL), vmvn_s8(v93)), 0x10uLL)), 0xFFFF0000FFFFLL);
        v95.i64[0] = v94.u32[0];
        v95.i64[1] = v94.u32[1];
        v96 = vshlq_u64(v95, v21);
        v91 = vorrq_s8(v96, vdupq_laneq_s64(v96, 1)).u64[0];
        v92 = v63;
      }

      v97 = v91 | (v88 << 16);
      v98 = v97 | v87;
      if (v7)
      {
        if (v92)
        {
          if (v92 == 0xFFFF)
          {
            v6->i16[0] = bswap32(v98) >> 16;
            v6->i16[1] = bswap32(v97);
            v6->i16[2] = bswap32(HIDWORD(v91)) >> 16;
            v6->i16[3] = __rev16(HIWORD(v91));
            *v7 = -1;
          }

          else
          {
            v99 = v20;
            v100 = v17;
            CMYK64_DAplusDAM(v6, v7, v98, v92, ((bswap32(v6->u16[2]) >> 16) << 32) | ((bswap32(v6->u16[3]) >> 16) << 48) | bswap32(v6->u16[1]) & 0xFFFF0000 | (bswap32(v6->u16[0]) >> 16), bswap32(*v7) >> 16, v92 ^ 0xFFFF);
            v63 = HIWORD(v160);
            v21 = xmmword_18439CC00;
            v17 = v100;
            v20 = v99;
            v15 = v172;
            v23 = v174;
            v8 = v179;
            result = v180;
          }
        }
      }

      else if (v92)
      {
        if (v92 == 0xFFFF)
        {
          v6->i16[0] = bswap32(v98) >> 16;
          v6->i16[1] = bswap32(v97);
          v6->i16[2] = bswap32(HIDWORD(v91)) >> 16;
          v6->i16[3] = __rev16(HIWORD(v91));
        }

        else
        {
          v101.i32[0] = bswap32(v6->u16[1] | (v6->u16[0] << 16));
          v101.i32[1] = HIWORD(v101.i32[0]);
          v101.i64[1] = __PAIR64__(bswap32(v6->u16[3]) >> 16, bswap32(v6->u16[2]) >> 16);
          v102 = vmull_u16(vmovn_s32(v101), vdup_n_s16(~v92));
          v103.i32[0] = v97 | v87;
          v103.i32[1] = WORD1(v98);
          v104.i64[0] = 0x100000001;
          v104.i64[1] = 0x100000001;
          *v6 = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v103, vshlq_u64(vdupq_n_s64(v98), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v102, v102, 0x10uLL), v104), 0x10uLL)));
        }
      }

      v62 += 2;
      ++v6;
      v7 = (v7 + v15);
      if (!--v61)
      {
        goto LABEL_107;
      }
    }

    v70 = (v66 + (v65 >> 4));
    if (v16 < v70)
    {
      v70 = v16;
    }

    if (v70 < v13)
    {
      v70 = v13;
    }

    v71 = (*v70 << 24) | (v70[1] << 16) | (v70[2] << 8);
    if (v24)
    {
      v72 = (v66 + v23);
      if (v16 >= v72)
      {
        v73 = v72;
      }

      else
      {
        v73 = v16;
      }

      if (v73 < v13)
      {
        v73 = v13;
      }

      v74 = (*v73 << 24) | (v73[1] << 16) | (v73[2] << 8);
      v75 = &v72[v65 >> 4];
      if (v16 < v75)
      {
        v75 = v16;
      }

      if (v75 < v13)
      {
        v75 = v13;
      }

      v76 = v20[v24];
      v68 = v68 - ((v76 & v68) >> v24) + ((v76 & v74) >> v24);
      v71 = v71 - ((v76 & v71) >> v24) + ((((*v75 << 24) | (v75[1] << 16) | (v75[2] << 8)) & v76) >> v24);
    }

    v77 = v20[*v62 & 0xF];
    v78 = v68 - ((v77 & v68) >> v69);
    v79 = (v77 & v71) >> v69;
LABEL_87:
    v68 = v78 + v79;
    goto LABEL_88;
  }

  v164 = (v9 + 16 * a3);
  v105 = v14 - 3;
  v106 = v8 ^ 0xFFFF;
  v173 = -2 - (0xFFFF * v106 + ((0xFFFF * v106) >> 16));
  v107 = vdup_n_s32(v8 ^ 0xFFFFu);
  v163 = a5;
  v108 = xmmword_18439CC00;
  do
  {
    v109 = *(result + 32);
    v110 = &v109[(v12 >> v11) * v10];
    v178 = a6;
    v176 = v12;
    if (v169 == 1)
    {
      if (a5 >= 1)
      {
        v112 = v163;
        v111 = v164;
        do
        {
          v113 = *v111;
          v111 += 2;
          v114 = &v110[v113];
          if (v105 < &v110[v113])
          {
            v114 = v105;
          }

          if (v114 < v109)
          {
            v114 = v109;
          }

          v115 = *v114 | (*v114 << 8);
          v116 = v114[1] | (v114[1] << 8);
          v117 = v114[2] | (v114[2] << 8);
          if (v115 <= v116)
          {
            v118 = v114[1] | (v114[1] << 8);
          }

          else
          {
            v118 = *v114 | (*v114 << 8);
          }

          if (v117 <= v118)
          {
            v119 = v118;
          }

          else
          {
            v119 = v117;
          }

          v120 = v119 - v115;
          v121 = v119 - v116;
          v122 = v119 - v117;
          v123 = v119 ^ 0xFFFF;
          if (v8 == 0xFFFF)
          {
            v124 = (v123 << 48) | (v122 << 32);
            v125 = 0xFFFF;
          }

          else
          {
            v126 = vmul_s32(__PAIR64__(v122, v123), v107);
            v120 -= (v120 * v106 + ((v120 * v106) >> 16) + 1) >> 16;
            v121 -= (v121 * v106 + ((v121 * v106) >> 16) + 1) >> 16;
            v127 = vand_s8(vsub_s32(__PAIR64__(v122, v123), vshr_n_u32(vsub_s32(vshr_n_u32(v126, 0x10uLL), vmvn_s8(v126)), 0x10uLL)), 0xFFFF0000FFFFLL);
            v128.i64[0] = v127.u32[0];
            v128.i64[1] = v127.u32[1];
            v129 = vshlq_u64(v128, v108);
            v124 = vorrq_s8(v129, vdupq_laneq_s64(v129, 1)).u64[0];
            v125 = HIWORD(v173);
          }

          v6->i16[0] = bswap32(v124 | v120) >> 16;
          v6->i16[1] = bswap32(v124 | (v121 << 16));
          v6->i16[2] = bswap32(HIDWORD(v124)) >> 16;
          v6->i16[3] = __rev16(HIWORD(v124));
          if (v7)
          {
            *v7 = __rev16(v125);
          }

          ++v6;
          v7 = (v7 + v15);
          --v112;
        }

        while (v112);
      }
    }

    else
    {
      v130 = v163;
      v131 = v164;
      if (a5 >= 1)
      {
        do
        {
          v132 = *v131;
          v131 += 2;
          v133 = &v110[v132];
          if (v105 < &v110[v132])
          {
            v133 = v105;
          }

          if (v133 < *(result + 32))
          {
            v133 = *(result + 32);
          }

          v134 = *v133 | (*v133 << 8);
          v135 = v133[1] | (v133[1] << 8);
          v136 = v133[2] | (v133[2] << 8);
          if (v134 <= v135)
          {
            v137 = v133[1] | (v133[1] << 8);
          }

          else
          {
            v137 = *v133 | (*v133 << 8);
          }

          if (v136 <= v137)
          {
            v138 = v137;
          }

          else
          {
            v138 = v136;
          }

          v139 = v138 - v134;
          v140 = v138 - v135;
          v141 = v138 - v136;
          v142 = v138 ^ 0xFFFF;
          if (v8 == 0xFFFF)
          {
            v143 = (v142 << 48) | (v141 << 32);
            v144 = 0xFFFF;
          }

          else
          {
            v145 = vmul_s32(__PAIR64__(v141, v142), v107);
            v139 -= (v139 * v106 + ((v139 * v106) >> 16) + 1) >> 16;
            v140 -= (v140 * v106 + ((v140 * v106) >> 16) + 1) >> 16;
            v146 = vand_s8(vsub_s32(__PAIR64__(v141, v142), vshr_n_u32(vsub_s32(vshr_n_u32(v145, 0x10uLL), vmvn_s8(v145)), 0x10uLL)), 0xFFFF0000FFFFLL);
            v147.i64[0] = v146.u32[0];
            v147.i64[1] = v146.u32[1];
            v148 = vshlq_u64(v147, v108);
            v143 = vorrq_s8(v148, vdupq_laneq_s64(v148, 1)).u64[0];
            v144 = HIWORD(v173);
          }

          v149 = v143 | (v140 << 16);
          v150 = v149 | v139;
          if (v7)
          {
            if (v144)
            {
              if (v144 == 0xFFFF)
              {
                v6->i16[0] = bswap32(v150) >> 16;
                v6->i16[1] = bswap32(v149);
                v6->i16[2] = bswap32(HIDWORD(v143)) >> 16;
                v6->i16[3] = __rev16(HIWORD(v143));
                *v7 = -1;
              }

              else
              {
                CMYK64_DAplusDAM(v6, v7, v150, v144, ((bswap32(v6->u16[2]) >> 16) << 32) | ((bswap32(v6->u16[3]) >> 16) << 48) | bswap32(v6->u16[1]) & 0xFFFF0000 | (bswap32(v6->u16[0]) >> 16), bswap32(*v7) >> 16, v144 ^ 0xFFFF);
                v108 = xmmword_18439CC00;
                v8 = v179;
                result = v180;
              }
            }
          }

          else if (v144)
          {
            if (v144 == 0xFFFF)
            {
              v6->i16[0] = bswap32(v150) >> 16;
              v6->i16[1] = bswap32(v149);
              v6->i16[2] = bswap32(HIDWORD(v143)) >> 16;
              v6->i16[3] = __rev16(HIWORD(v143));
            }

            else
            {
              v151.i32[0] = bswap32(v6->u16[1] | (v6->u16[0] << 16));
              v151.i32[1] = HIWORD(v151.i32[0]);
              v151.i64[1] = __PAIR64__(bswap32(v6->u16[3]) >> 16, bswap32(v6->u16[2]) >> 16);
              v152 = vmull_u16(vmovn_s32(v151), vdup_n_s16(~v144));
              v153.i32[0] = v149 | v139;
              v153.i32[1] = WORD1(v150);
              v154.i64[0] = 0x100000001;
              v154.i64[1] = 0x100000001;
              *v6 = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v153, vshlq_u64(vdupq_n_s64(v150), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v152, v152, 0x10uLL), v154), 0x10uLL)));
            }
          }

          ++v6;
          v7 = (v7 + v15);
          --v130;
        }

        while (v130);
      }
    }

    v10 = v167;
    v6 += v168;
    LOBYTE(v11) = v166;
    v12 = v176 + v165;
    v7 += v170;
    a6 = v178 - 1;
  }

  while (v178 != 1);
  return result;
}

void CMYK64_image_mark_W8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v7 = *(a2 + 4);
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v29 = *(a2 + 5) - a5;
  }

  else
  {
    v29 = 0;
  }

  v28 = *a2;
  v27 = *(a2 + 3) - a5;
  if (v7 == 0xFFFF)
  {
    v10 = 0xFEFE000000000000;
  }

  else
  {
    v10 = (65278 - ((65278 * (v7 ^ 0xFFFF) + ((65278 * (v7 ^ 0xFFFFu)) >> 16) + 1) >> 16)) << 48;
  }

  if (v7 == 0xFFFF)
  {
    v11 = -1;
  }

  else
  {
    v11 = (-2 - (0xFFFF * (v7 ^ 0xFFFF) + ((0xFFFF * (v7 ^ 0xFFFFu)) >> 16))) >> 16;
  }

  v12 = __rev16(HIWORD(v10));
  v13 = bswap32(v11) >> 16;
  v31 = vmovn_hight_s64(0, vshlq_u64(vdupq_n_s64(v10), xmmword_18439CB80));
  v32 = vdupq_n_s32(~v11);
  v14 = 2 * (v9 != 0);
  if (*(a1 + 176))
  {
    do
    {
      if (v28 == 1)
      {
        v15 = a5;
        if (a5 >= 1)
        {
          do
          {
            v8->i32[0] = 0;
            v8->i16[2] = 0;
            v8->i16[3] = v12;
            if (v9)
            {
              *v9 = v13;
            }

            ++v8;
            v9 = (v9 + v14);
            --v15;
          }

          while (v15);
        }
      }

      else
      {
        v16 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v9)
            {
              if (v11)
              {
                if (v11 == 0xFFFF)
                {
                  v8->i32[0] = 0;
                  v8->i16[2] = 0;
                  v8->i16[3] = v12;
                  *v9 = -1;
                }

                else
                {
                  CMYK64_DAplusDAM(v8, v9, v10, v11, ((bswap32(v8->u16[2]) >> 16) << 32) | ((bswap32(v8->u16[3]) >> 16) << 48) | bswap32(v8->u16[1]) & 0xFFFF0000 | (bswap32(v8->u16[0]) >> 16), bswap32(*v9) >> 16, ~v11);
                }
              }
            }

            else if (v11)
            {
              if (v11 == 0xFFFF)
              {
                v8->i32[0] = 0;
                v8->i16[2] = 0;
                v8->i16[3] = v12;
              }

              else
              {
                v17 = bswap32(v8->u16[1] | (v8->u16[0] << 16));
                v18.i32[0] = v17;
                v18.i32[1] = HIWORD(v17);
                v18.i64[1] = __PAIR64__(bswap32(v8->u16[3]) >> 16, bswap32(v8->u16[2]) >> 16);
                v19 = vmulq_s32(v18, v32);
                v20.i64[0] = 0x100000001;
                v20.i64[1] = 0x100000001;
                *v8 = vrev16_s8(vmovn_s32(vsraq_n_u32(v31, vaddq_s32(vsraq_n_u32(v19, v19, 0x10uLL), v20), 0x10uLL)));
              }
            }

            ++v8;
            v9 = (v9 + v14);
            --v16;
          }

          while (v16);
        }
      }

      v8 += v27;
      v9 += v29;
      --a6;
    }

    while (a6);
  }

  else
  {
    do
    {
      if (v28 == 1)
      {
        v21 = a5;
        if (a5 >= 1)
        {
          do
          {
            v8->i32[0] = 0;
            v8->i16[2] = 0;
            v8->i16[3] = v12;
            if (v9)
            {
              *v9 = v13;
            }

            ++v8;
            v9 = (v9 + v14);
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v22 = a5;
        if (a5 >= 1)
        {
          do
          {
            if (v9)
            {
              if (v11)
              {
                if (v11 == 0xFFFF)
                {
                  v8->i32[0] = 0;
                  v8->i16[2] = 0;
                  v8->i16[3] = v12;
                  *v9 = -1;
                }

                else
                {
                  CMYK64_DAplusDAM(v8, v9, v10, v11, ((bswap32(v8->u16[2]) >> 16) << 32) | ((bswap32(v8->u16[3]) >> 16) << 48) | bswap32(v8->u16[1]) & 0xFFFF0000 | (bswap32(v8->u16[0]) >> 16), bswap32(*v9) >> 16, ~v11);
                }
              }
            }

            else if (v11)
            {
              if (v11 == 0xFFFF)
              {
                v8->i32[0] = 0;
                v8->i16[2] = 0;
                v8->i16[3] = v12;
              }

              else
              {
                v23 = bswap32(v8->u16[1] | (v8->u16[0] << 16));
                v24.i32[0] = v23;
                v24.i32[1] = HIWORD(v23);
                v24.i64[1] = __PAIR64__(bswap32(v8->u16[3]) >> 16, bswap32(v8->u16[2]) >> 16);
                v25 = vmulq_s32(v24, v32);
                v26.i64[0] = 0x100000001;
                v26.i64[1] = 0x100000001;
                *v8 = vrev16_s8(vmovn_s32(vsraq_n_u32(v31, vaddq_s32(vsraq_n_u32(v25, v25, 0x10uLL), v26), 0x10uLL)));
              }
            }

            ++v8;
            v9 = (v9 + v14);
            --v22;
          }

          while (v22);
        }
      }

      v8 += v27;
      v9 += v29;
      --a6;
    }

    while (a6);
  }
}

void CMYK64_mark_pixelshape(uint64_t a1, int a2, int8x8_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 4);
  v720[0] = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v719 = *(a1 + 8);
  v8 = *(a1 + 48);
  v9 = *(a1 + 96);
  v10 = *(a1 + 16);
  v11 = *(a1 + 28) >> 3;
  if (v8)
  {
    v635 = *(a1 + 32) >> 1;
    v636 = v8 + 2 * v635 * v10 + 2 * v7;
    v12 = -1;
  }

  else
  {
    v635 = 0;
    v636 = 0;
    v12 = 0;
  }

  v13 = *(a1 + 88);
  v14 = *(a1 + 136);
  v634 = *(a1 + 40) + 8 * v11 * v10 + 8 * v7;
  v16 = *(a1 + 56);
  v15 = *(a1 + 60);
  v664 = *(a1 + 76) >> 3;
  if ((v4 & 0xFF00) == 0x100)
  {
    if (v9)
    {
      v665 = *(a1 + 80) >> 1;
      v9 += 2 * v665 * v15 + 2 * v16;
      v17 = -1;
    }

    else
    {
      v665 = 0;
      v17 = 0;
    }

    v633 = v13 + 8 * v664 * v15 + 8 * v16;
    if (v664 == v11)
    {
      v18 = (v634 - v633) >> 3;
      if (v18 >= 1)
      {
        if (v18 <= v5)
        {
          v633 += 8 * (v5 - 1);
          v634 += 8 * (v5 - 1);
          v636 += 2 * (v12 & (v5 - 1));
          v637 = -1;
          v664 = *(a1 + 28) >> 3;
          v9 += 2 * (v17 & (v5 - 1));
          goto LABEL_15;
        }

        v19 = v6 - 1;
        v20 = v11 * (v6 - 1);
        if (v634 <= v633 + 8 * v20 + 8 * v5 - 8)
        {
          v634 += 8 * v20;
          v11 = -v11;
          v33 = v636 + 2 * v635 * v19;
          v635 = -v635;
          v636 = v33;
          v9 += 2 * v665 * v19;
          v12 &= 1u;
          v665 = -v665;
          v17 &= 1u;
          v637 = 1;
          v633 += 8 * v20;
          v664 = v11;
          goto LABEL_15;
        }
      }
    }

    v12 &= 1u;
    v17 &= 1u;
    v637 = 1;
LABEL_15:
    v662 = 0;
    v21 = 0;
    v13 = -1;
    v638 = v665;
    v639 = v664;
    goto LABEL_18;
  }

  v639 = *(a1 + 64);
  v638 = *(a1 + 68);
  if (v9)
  {
    v665 = *(a1 + 80) >> 1;
    v17 = 1;
  }

  else
  {
    v665 = 0;
    v17 = 0;
  }

  v662 = v13 + 8 * v664 * *(a1 + 68);
  v12 &= 1u;
  v637 = 1;
  v21 = *(a1 + 88);
  v633 = v21;
LABEL_18:
  v689 = v12;
  v715 = v17;
  v632 = a2;
  v630 = v9;
  v631 = v11;
  if (!v14)
  {
    v27 = v637 * v5;
    v663 = v635 - v12 * v5;
    if (v662)
    {
      v28 = v15 % v638;
      v29 = v633 + 8 * v664 * (v15 % v638);
      v21 = (v29 + 8 * (v16 % v639));
      v13 = v29 + 8 * v639;
      v640 = 0;
      if (v17)
      {
        v30 = &v9[2 * v665 * v28 + 2 * (v16 % v639)];
      }

      else
      {
        v30 = v9;
      }

      if (v17)
      {
        v25 = &v9[2 * v665 * v28 + 2 * (v16 % v639)];
      }

      else
      {
        v25 = v9;
      }

      v716 = (v29 + 8 * (v16 % v639));
      v26 = v636;
      v717 = v634;
      v627 = v16 % v639;
      v628 = v15 % v638;
    }

    else
    {
      v627 = *(a1 + 56);
      v628 = *(a1 + 60);
      v640 = 0;
      v664 -= v27;
      v665 -= v17 * v5;
      v30 = v9;
      v25 = v9;
      v716 = v633;
      v26 = v636;
      v717 = v634;
    }

    v31 = v637;
    v32 = v5;
    goto LABEL_34;
  }

  v687 = v21;
  v22 = v13;
  v627 = *(a1 + 56);
  v628 = *(a1 + 60);
  shape_enum_clip_alloc(a1, v5, v14, v637, v11, 1, *(a1 + 104), *(a1 + 108), v5, v6);
  v24 = v23;
  v688 = v9;
  v25 = v9;
  v26 = v636;
  v663 = v635;
  if (v23)
  {
    while (2)
    {
      if (!shape_enum_clip_next(v24, &v718 + 1, &v718, v720, &v719))
      {

        free(v24);
        return;
      }

      v640 = v24;
      if (v662)
      {
        v717 = (v634 + 8 * v11 * v718 + 8 * SHIDWORD(v718));
        v540 = (v718 + *(a1 + 60)) % v638;
        v628 = (v718 + *(a1 + 60)) % v638;
        v27 = v720[0];
        v32 = v720[0];
        v541 = (HIDWORD(v718) + *(a1 + 56)) % v639;
        v542 = v633 + 8 * v664 * v540;
        v21 = (v542 + 8 * v541);
        v13 = v542 + 8 * v639;
        v31 = v637;
        v12 = v689;
        if (v689)
        {
          v26 = (v636 + 2 * v635 * v718 + 2 * SHIDWORD(v718));
        }

        v543 = v663;
        if (v689)
        {
          v543 = v635 - v720[0];
        }

        v663 = v543;
        v17 = v715;
        if (v715)
        {
          v30 = v630 + 2 * v665 * v540 + 2 * v541;
          v25 = v30;
          v716 = (v542 + 8 * v541);
          v627 = (HIDWORD(v718) + *(a1 + 56)) % v639;
        }

        else
        {
          v716 = (v542 + 8 * v541);
          v627 = (HIDWORD(v718) + *(a1 + 56)) % v639;
          v30 = v688;
        }
      }

      else
      {
        v31 = v637;
        v544 = HIDWORD(v718) * v637;
        v32 = v720[0];
        v545 = v720[0] * v637;
        v717 = (v634 + 8 * v11 * v718 + 8 * HIDWORD(v718) * v637);
        v27 = v720[0] * v637;
        v716 = (v633 + 8 * v718 * v639 + 8 * HIDWORD(v718) * v637);
        v664 = v639 - v720[0] * v637;
        v12 = v689;
        if (v689)
        {
          v26 = (v636 + 2 * v635 * v718 + 2 * v544);
        }

        v546 = v663;
        if (v689)
        {
          v546 = v635 - v545;
        }

        v663 = v546;
        v547 = v630 + 2 * v718 * v638 + 2 * v544;
        v548 = v638 - v545;
        v17 = v715;
        if (v715)
        {
          v25 = v547;
        }

        v549 = v665;
        if (v715)
        {
          v549 = v548;
        }

        v665 = v549;
        v13 = v22;
        v21 = v687;
        v30 = v688;
      }

LABEL_34:
      v687 = v21;
      v688 = v30;
      v660 = v32;
      v661 = v11 - v27;
      switch(a2)
      {
        case 0:
          v22 = v13;
          v34 = v31;
          v35 = v661 - v32;
          v36 = &v717[-v32 + 1];
          if (v31 >= 0)
          {
            v36 = v717;
            v35 = v661 + v32;
          }

          v37 = v719;
          v38 = (v36 + 8 * ((v35 * (v719 - 1)) & (v35 >> 63)));
          if (v35 < 0)
          {
            v35 = -v35;
          }

          v39 = v12;
          CGBlt_fillBytes(8 * v32, v719, 0, v38, 8 * v35);
          if (v39)
          {
            v40 = v663 - v32;
            v41 = &v26[-2 * v32 + 2];
            if (v34 >= 0)
            {
              v41 = v26;
              v40 = v663 + v32;
            }

            v42 = (v40 * (v37 - 1)) & (v40 >> 63);
            if (v40 < 0)
            {
              v40 = -v40;
            }

            v663 = v40;
            v26 = (v41 + 2 * v42);
            CGBlt_fillBytes(2 * v32, v37, 0, v26, 2 * v40);
          }

          v24 = v640;
          goto LABEL_737;
        case 1:
          v259 = *(a1 + 1);
          if (v259 == 2)
          {
            if (v32 < 4 || (8 * v639) > 0x40 || (a3.i32[0] = 8 * v639, v600 = vcnt_s8(a3), v600.i16[0] = vaddlv_u8(v600), v600.i32[0] > 1u))
            {
LABEL_851:
              if (v12)
              {
                if (v17)
                {
                  v602 = v719;
                  v603 = 2 * v12;
                  do
                  {
                    v604 = v32;
                    do
                    {
                      *v717 = *v716;
                      *v26 = *v25;
                      v605 = &v716[v637];
                      if (v605 >= v13)
                      {
                        v606 = -v639;
                      }

                      else
                      {
                        v606 = 0;
                      }

                      v25 += 2 * v17 + 2 * v606;
                      v26 += v603;
                      v716 = &v605[4 * v606];
                      v717 += v637;
                      --v604;
                    }

                    while (v604);
                    if (v662)
                    {
                      v607 = &v21[v664];
                      if (v607 >= v662)
                      {
                        v608 = -(v665 * v638);
                      }

                      else
                      {
                        v608 = 0;
                      }

                      v30 += 2 * v665 + 2 * v608;
                      if (v607 >= v662)
                      {
                        v609 = -(v664 * v638);
                      }

                      else
                      {
                        v609 = 0;
                      }

                      v21 = &v607[4 * v609];
                      v13 += 8 * v609 + 8 * v664;
                      v25 = v30;
                      v716 = v21;
                    }

                    else
                    {
                      v716 += v664;
                      v25 += 2 * v665;
                    }

                    v717 += v661;
                    v26 += 2 * v663;
                    --v602;
                  }

                  while (v602);
                }

                else
                {
                  v617 = v719;
                  do
                  {
                    v618 = v32;
                    do
                    {
                      *v717 = *v716;
                      *v26 = -1;
                      v619 = &v716[v637];
                      if (v619 >= v13)
                      {
                        v620 = -v639;
                      }

                      else
                      {
                        v620 = 0;
                      }

                      v25 += 2 * v620;
                      v26 += 2 * v12;
                      v716 = &v619[4 * v620];
                      v717 += v637;
                      --v618;
                    }

                    while (v618);
                    if (v662)
                    {
                      v621 = &v21[v664];
                      if (v621 >= v662)
                      {
                        v622 = -(v665 * v638);
                      }

                      else
                      {
                        v622 = 0;
                      }

                      v30 += 2 * v665 + 2 * v622;
                      if (v621 >= v662)
                      {
                        v623 = -(v664 * v638);
                      }

                      else
                      {
                        v623 = 0;
                      }

                      v21 = &v621[4 * v623];
                      v13 += 8 * v623 + 8 * v664;
                      v25 = v30;
                      v716 = v21;
                    }

                    else
                    {
                      v716 += v664;
                      v25 += 2 * v665;
                    }

                    v717 += v661;
                    v26 += 2 * v663;
                    --v617;
                  }

                  while (v617);
                }
              }

              else
              {
                v610 = v719;
                do
                {
                  v611 = v32;
                  do
                  {
                    *v717 = *v716;
                    v612 = &v716[v637];
                    if (v612 >= v13)
                    {
                      v613 = -v639;
                    }

                    else
                    {
                      v613 = 0;
                    }

                    v25 += 2 * v17 + 2 * v613;
                    v716 = &v612[4 * v613];
                    v717 += v637;
                    --v611;
                  }

                  while (v611);
                  if (v662)
                  {
                    v614 = &v21[v664];
                    if (v614 >= v662)
                    {
                      v615 = -(v665 * v638);
                    }

                    else
                    {
                      v615 = 0;
                    }

                    v30 += 2 * v665 + 2 * v615;
                    if (v614 >= v662)
                    {
                      v616 = -(v664 * v638);
                    }

                    else
                    {
                      v616 = 0;
                    }

                    v21 = &v614[4 * v616];
                    v13 += 8 * v616 + 8 * v664;
                    v25 = v30;
                    v716 = v21;
                  }

                  else
                  {
                    v716 += v664;
                    v25 += 2 * v665;
                  }

                  v717 += v661;
                  v26 += 2 * v663;
                  --v610;
                }

                while (v610);
              }

              goto LABEL_903;
            }

            v22 = v13;
            v601 = v719;
            CGSFillDRAM64(v717, 8 * (v32 + v661), 8 * v32, v719, v633, 8 * v664, 8 * v639, v638, 8 * v627, v628);
            v24 = v640;
            if (v689)
            {
              if (v715)
              {
                CGSFillDRAM64(v26, 2 * (v32 + v663), 2 * v32, v601, v630, 2 * v665, 2 * v639, v638, 2 * v627, v628);
              }

              else
              {
                CGBlt_fillBytes(2 * v32, v601, -1, v26, 2 * (v32 + v663));
              }
            }
          }

          else
          {
            if (v259 != 1)
            {
              goto LABEL_851;
            }

            v22 = v13;
            v260 = v664 - v32;
            v261 = 8 * v32 - 8;
            v262 = (v716 - v261);
            v263 = v661 - v32;
            v264 = (v717 - v261);
            if (v637 >= 0)
            {
              v262 = v716;
              v264 = v717;
              v260 = v664 + v32;
              v263 = v661 + v32;
            }

            v265 = v719;
            v266 = v719 - 1;
            v267 = &v262[(v260 * v266) & (v260 >> 63)];
            if (v260 >= 0)
            {
              v268 = v260;
            }

            else
            {
              v268 = -v260;
            }

            if (v263 >= 0)
            {
              LODWORD(v269) = v263;
            }

            else
            {
              v269 = -v263;
            }

            v664 = v268;
            CGBlt_copyBytes(8 * v32, v719, v267, &v264[(v263 * v266) & (v263 >> 63)], 8 * v268, 8 * v269);
            if (v689)
            {
              v270 = 2 * v32;
              if (v715)
              {
                v271 = v665 - v32;
                v272 = 2 * v32 - 2;
                v273 = &v25[-v272];
                v274 = v663 - v32;
                v275 = &v26[-v272];
                if (v637 >= 0)
                {
                  v273 = v25;
                  v275 = v26;
                  v271 = v665 + v32;
                  v274 = v663 + v32;
                }

                v276 = &v273[2 * ((v271 * v266) & (v271 >> 63))];
                if (v271 >= 0)
                {
                  v277 = v271;
                }

                else
                {
                  v277 = -v271;
                }

                if (v274 >= 0)
                {
                  v278 = v274;
                }

                else
                {
                  v278 = -v274;
                }

                v665 = v277;
                v663 = v278;
                v26 = &v275[2 * ((v274 * v266) & (v274 >> 63))];
                CGBlt_copyBytes(v270, v265, v276, v26, 2 * v277, 2 * v278);
                v25 = v276;
              }

              else
              {
                v624 = v663 - v32;
                v625 = &v26[-2 * v32 + 2];
                if (v637 >= 0)
                {
                  v625 = v26;
                  v624 = v663 + v32;
                }

                v626 = (v624 * v266) & (v624 >> 63);
                if (v624 < 0)
                {
                  v624 = -v624;
                }

                v663 = v624;
                v26 = (v625 + 2 * v626);
                CGBlt_fillBytes(v270, v265, -1, v26, 2 * v624);
              }

LABEL_736:
              v24 = v640;
            }

            else
            {
              v24 = v640;
            }
          }

LABEL_737:
          if (!v24)
          {
            return;
          }

          v718 = 0;
          continue;
        case 2:
          v195 = v31;
          v196 = 8 * v31;
          if (v12)
          {
            v197 = v17;
            v198 = v719;
            v199 = 2 * v12;
            v699 = v17;
            do
            {
              v674 = v198;
              v200 = v32;
              do
              {
                v201 = *v25;
                v202 = __rev16(v201);
                if (v202)
                {
                  if (v202 == 0xFFFF)
                  {
                    *v717 = *v716;
                    *v26 = v201;
                  }

                  else
                  {
                    v203 = v13;
                    CMYK64_DAplusDAM(v717, v26, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v202, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), bswap32(*v26) >> 16, v202 ^ 0xFFFF);
                    v197 = v699;
                    v13 = v203;
                  }
                }

                v204 = &v716[v195];
                if (v204 >= v13)
                {
                  v205 = -v639;
                }

                else
                {
                  v205 = 0;
                }

                v25 += 2 * v197 + 2 * v205;
                v26 += v199;
                v716 = &v204[4 * v205];
                v717 = (v717 + v196);
                --v200;
              }

              while (v200);
              if (v662)
              {
                v206 = &v687[v664];
                v207 = -(v665 * v638);
                if (v206 < v662)
                {
                  v207 = 0;
                }

                v208 = v688 + 2 * v665 + 2 * v207;
                v209 = -(v664 * v638);
                if (v206 < v662)
                {
                  v209 = 0;
                }

                v13 += 8 * v209 + 8 * v664;
                v687 = &v206[4 * v209];
                v688 += 2 * v665 + 2 * v207;
                v25 = v208;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              v198 = v674 - 1;
            }

            while (v674 != 1);
            goto LABEL_735;
          }

          v550 = v719;
          v551.i64[0] = 0x100000001;
          v551.i64[1] = 0x100000001;
          do
          {
            v552 = v32;
            do
            {
              v553 = bswap32(*v25) >> 16;
              if (v553)
              {
                if (v553 == 0xFFFF)
                {
                  *v717 = *v716;
                }

                else
                {
                  v554 = ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16);
                  v555.i32[0] = bswap32(v717->u16[1] | (v717->u16[0] << 16));
                  v555.i32[1] = HIWORD(v555.i32[0]);
                  v555.i64[1] = __PAIR64__(bswap32(v717->u16[3]) >> 16, bswap32(v717->u16[2]) >> 16);
                  v556 = vmull_u16(vmovn_s32(v555), vdup_n_s16(~v553));
                  v557.i32[0] = v554;
                  v557.i32[1] = WORD1(v554);
                  *v717 = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v557, vshlq_u64(vdupq_n_s64(v554), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v556, v556, 0x10uLL), v551), 0x10uLL)));
                }
              }

              v558 = &v716[v195];
              if (v558 >= v13)
              {
                v559 = -v639;
              }

              else
              {
                v559 = 0;
              }

              v25 += 2 * v17 + 2 * v559;
              v716 = &v558[4 * v559];
              v717 = (v717 + v196);
              --v552;
            }

            while (v552);
            if (v662)
            {
              v560 = &v21[v664];
              if (v560 >= v662)
              {
                v561 = -(v665 * v638);
              }

              else
              {
                v561 = 0;
              }

              v30 += 2 * v665 + 2 * v561;
              if (v560 >= v662)
              {
                v562 = -(v664 * v638);
              }

              else
              {
                v562 = 0;
              }

              v21 = &v560[4 * v562];
              v13 += 8 * v562 + 8 * v664;
              v25 = v30;
              v716 = v21;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            --v550;
          }

          while (v550);
          goto LABEL_903;
        case 3:
          v229 = v31;
          v230 = 2 * v12;
          v231 = 8 * v31;
          if (!v17)
          {
            v563 = v719;
            v564.i64[0] = 0x100000001;
            v564.i64[1] = 0x100000001;
            do
            {
              v565 = v32;
              do
              {
                v566 = bswap32(*v26) >> 16;
                if (v566 == 0xFFFF)
                {
                  *v717 = *v716;
                }

                else if (v566)
                {
                  v567 = bswap32(v716->u16[1] | (v716->u16[0] << 16));
                  v568.i32[0] = v567;
                  v568.i32[1] = vshr_n_u32(vdup_n_s32(v567), 0x10uLL).i32[1];
                  v568.i64[1] = __PAIR64__(bswap32(v716->u16[3]) >> 16, bswap32(v716->u16[2]) >> 16);
                  v569 = vmulq_s32(v568, vmovl_u16(vdup_n_s16(~v566)));
                  v568.i32[0] = v567;
                  *v717 = vrev16_s8(vmovn_s32(vsubq_s32(v568, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v569, v569, 0x10uLL), v564), 0x10uLL))));
                }

                else
                {
                  *v717 = 0;
                }

                v570 = &v716[v229];
                if (v570 >= v13)
                {
                  v571 = -v639;
                }

                else
                {
                  v571 = 0;
                }

                v25 += 2 * v571;
                v716 = &v570[4 * v571];
                v26 += v230;
                v717 = (v717 + v231);
                --v565;
              }

              while (v565);
              if (v662)
              {
                v572 = &v687[v664];
                if (v572 >= v662)
                {
                  v573 = -(v665 * v638);
                }

                else
                {
                  v573 = 0;
                }

                v574 = v688 + 2 * v665 + 2 * v573;
                if (v572 >= v662)
                {
                  v575 = -(v664 * v638);
                }

                else
                {
                  v575 = 0;
                }

                v13 += 8 * v575 + 8 * v664;
                v687 = &v572[4 * v575];
                v688 += 2 * v665 + 2 * v573;
                v25 = v574;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              --v563;
            }

            while (v563);
            goto LABEL_904;
          }

          v232 = v17;
          v233 = v719;
          v701 = 2 * v12;
          do
          {
            v234 = v660;
            do
            {
              v235 = bswap32(*v26) >> 16;
              if (v235 == 0xFFFF)
              {
                *v717 = *v716;
                *v26 = *v25;
              }

              else if (v235)
              {
                v236 = v13;
                v237 = v231;
                CMYK64_DAM(v717, v26, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), bswap32(*v25) >> 16, v235);
                v231 = v237;
                v230 = v701;
                v13 = v236;
              }

              else
              {
                *v717 = 0;
                *v26 = 0;
              }

              v238 = &v716[v229];
              if (v238 >= v13)
              {
                v239 = -v639;
              }

              else
              {
                v239 = 0;
              }

              v25 += 2 * v232 + 2 * v239;
              v26 += v230;
              v716 = &v238[4 * v239];
              v717 = (v717 + v231);
              --v234;
            }

            while (v234);
            if (v662)
            {
              v240 = &v687[v664];
              v241 = -(v665 * v638);
              if (v240 < v662)
              {
                v241 = 0;
              }

              v242 = v688 + 2 * v665 + 2 * v241;
              v243 = -(v664 * v638);
              if (v240 < v662)
              {
                v243 = 0;
              }

              v13 += 8 * v243 + 8 * v664;
              v687 = &v240[4 * v243];
              v688 += 2 * v665 + 2 * v241;
              v25 = v242;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            --v233;
          }

          while (v233);
          goto LABEL_735;
        case 4:
          v112 = v31;
          v113 = v17;
          v114 = v719;
          v115 = 2 * v12;
          v116 = 8 * v31;
          do
          {
            v670 = v114;
            v117 = v660;
            v694 = v13;
            do
            {
              v118 = bswap32(~*v26) >> 16;
              if (v118 == 0xFFFF)
              {
                if (v715)
                {
                  v119 = bswap32(*v25) >> 16;
                }

                else
                {
                  v119 = 0xFFFF;
                }

                *v26 = __rev16(v119);
              }

              else if (v118)
              {
                if (v715)
                {
                  v120 = bswap32(*v25) >> 16;
                }

                else
                {
                  v120 = 0xFFFF;
                }

                CMYK64_DAM(v717, v26, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v120, v118);
                v13 = v694;
              }

              else
              {
                *v717 = 0;
                *v26 = 0;
              }

              v121 = &v716[v112];
              if (v121 >= v13)
              {
                v122 = -v639;
              }

              else
              {
                v122 = 0;
              }

              v25 += 2 * v113 + 2 * v122;
              v26 += v115;
              v716 = &v121[4 * v122];
              v717 = (v717 + v116);
              --v117;
            }

            while (v117);
            if (v662)
            {
              v123 = &v687[v664];
              v124 = -(v665 * v638);
              if (v123 < v662)
              {
                v124 = 0;
              }

              v125 = v688 + 2 * v665 + 2 * v124;
              v126 = -(v664 * v638);
              if (v123 < v662)
              {
                v126 = 0;
              }

              v13 += 8 * v126 + 8 * v664;
              v687 = &v123[4 * v126];
              v688 += 2 * v665 + 2 * v124;
              v25 = v125;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v114 = v670 - 1;
          }

          while (v670 != 1);
          goto LABEL_735;
        case 5:
          v317 = v31;
          v318 = v17;
          v319 = v719;
          v320 = 2 * v12;
          v321 = 8 * v31;
          do
          {
            v651 = v319;
            do
            {
              v322 = bswap32(*v25) >> 16;
              v323 = v13;
              v324 = v26;
              v325 = bswap32(*v26) >> 16;
              v326 = v26;
              v327 = v321;
              CMYK64_DAMplusDAM(v717, v324, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v322, v325, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v325, v322 ^ 0xFFFF);
              v321 = v327;
              v13 = v323;
              v328 = &v716[v317];
              if (v328 >= v323)
              {
                v329 = -v639;
              }

              else
              {
                v329 = 0;
              }

              v25 += 2 * v318 + 2 * v329;
              v26 = &v326[v320];
              v716 = &v328[4 * v329];
              v717 = (v717 + v321);
              --v32;
            }

            while (v32);
            if (v662)
            {
              v330 = &v687[v664];
              v331 = -(v665 * v638);
              if (v330 < v662)
              {
                v331 = 0;
              }

              v332 = v688 + 2 * v665 + 2 * v331;
              v333 = -(v664 * v638);
              if (v330 < v662)
              {
                v333 = 0;
              }

              v13 = v323 + 8 * v333 + 8 * v664;
              v687 = &v330[4 * v333];
              v688 += 2 * v665 + 2 * v331;
              v25 = v332;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v32 = v660;
            v717 += v661;
            v26 += 2 * v663;
            v319 = v651 - 1;
          }

          while (v651 != 1);
          goto LABEL_735;
        case 6:
          v372 = v31;
          v373 = v17;
          v374 = v719;
          v375 = 2 * v12;
          v376 = 8 * v31;
          v707 = v31;
          do
          {
            v680 = v374;
            v377 = v32;
            do
            {
              v378 = bswap32(*v26);
              if (HIWORD(v378) != 0xFFFF)
              {
                if (~HIWORD(v378) == 0xFFFF)
                {
                  *v717 = *v716;
                  if (v17)
                  {
                    v379 = bswap32(*v25) >> 16;
                  }

                  else
                  {
                    v379 = 0xFFFF;
                  }

                  *v26 = __rev16(v379);
                }

                else
                {
                  v380 = v13;
                  if (v17)
                  {
                    v381 = bswap32(*v25) >> 16;
                  }

                  else
                  {
                    v381 = 0xFFFF;
                  }

                  CMYK64_DAplusDAM(v717, v26, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), HIWORD(v378), ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v381, ~HIWORD(v378));
                  v372 = v707;
                  v17 = v715;
                  v13 = v380;
                }
              }

              v382 = &v716[v372];
              if (v382 >= v13)
              {
                v383 = -v639;
              }

              else
              {
                v383 = 0;
              }

              v25 += 2 * v373 + 2 * v383;
              v26 += v375;
              v716 = &v382[4 * v383];
              v717 = (v717 + v376);
              --v377;
            }

            while (v377);
            if (v662)
            {
              v384 = &v687[v664];
              v385 = -(v665 * v638);
              if (v384 < v662)
              {
                v385 = 0;
              }

              v386 = v688 + 2 * v665 + 2 * v385;
              v387 = -(v664 * v638);
              if (v384 < v662)
              {
                v387 = 0;
              }

              v388 = &v384[4 * v387];
              v13 += 8 * v387 + 8 * v664;
              v25 = (v688 + 2 * v665 + 2 * v385);
              v716 = v388;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
              v388 = v687;
              v386 = v688;
            }

            v687 = v388;
            v688 = v386;
            v717 += v661;
            v26 += 2 * v663;
            v374 = v680 - 1;
          }

          while (v680 != 1);
          goto LABEL_735;
        case 7:
          v244 = v31;
          if (v12)
          {
            v245 = v17;
            v702 = v719;
            v246 = 2 * v12;
            v247 = 8 * v31;
            do
            {
              v248 = v32;
              do
              {
                v249 = bswap32(*v25) >> 16;
                if (v249 != 0xFFFF)
                {
                  if (v249)
                  {
                    v250 = v13;
                    v251 = v244;
                    v252 = v247;
                    CMYK64_DAM(v717, v26, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), bswap32(*v26) >> 16, v249);
                    v247 = v252;
                    v244 = v251;
                    v13 = v250;
                  }

                  else
                  {
                    *v717 = 0;
                    *v26 = 0;
                  }
                }

                v253 = &v716[v244];
                if (v253 >= v13)
                {
                  v254 = -v639;
                }

                else
                {
                  v254 = 0;
                }

                v25 += 2 * v245 + 2 * v254;
                v26 += v246;
                v716 = &v253[4 * v254];
                v717 = (v717 + v247);
                --v248;
              }

              while (v248);
              if (v662)
              {
                v255 = &v687[v664];
                v256 = -(v665 * v638);
                if (v255 < v662)
                {
                  v256 = 0;
                }

                v257 = v688 + 2 * v665 + 2 * v256;
                v258 = -(v664 * v638);
                if (v255 < v662)
                {
                  v258 = 0;
                }

                v13 += 8 * v258 + 8 * v664;
                v687 = &v255[4 * v258];
                v688 += 2 * v665 + 2 * v256;
                v25 = v257;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              --v702;
            }

            while (v702);
            goto LABEL_735;
          }

          v576 = v719;
          v577.i64[0] = 0x100000001;
          v577.i64[1] = 0x100000001;
          do
          {
            v578 = v32;
            do
            {
              v579 = bswap32(*v25) >> 16;
              if (v579 != 0xFFFF)
              {
                if (v579)
                {
                  v580 = bswap32(v717->u16[1] | (v717->u16[0] << 16));
                  v581.i32[0] = v580;
                  v581.i32[1] = vshr_n_u32(vdup_n_s32(v580), 0x10uLL).i32[1];
                  v581.i64[1] = __PAIR64__(bswap32(v717->u16[3]) >> 16, bswap32(v717->u16[2]) >> 16);
                  v582 = vmulq_s32(v581, vmovl_u16(vdup_n_s16(~v579)));
                  v581.i32[0] = v580;
                  *v717 = vrev16_s8(vmovn_s32(vsubq_s32(v581, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v582, v582, 0x10uLL), v577), 0x10uLL))));
                }

                else
                {
                  *v717 = 0;
                }
              }

              v583 = &v716[v244];
              if (v583 >= v13)
              {
                v584 = -v639;
              }

              else
              {
                v584 = 0;
              }

              v25 += 2 * v17 + 2 * v584;
              v716 = &v583[4 * v584];
              v717 += v244;
              --v578;
            }

            while (v578);
            if (v662)
            {
              v585 = &v21[v664];
              if (v585 >= v662)
              {
                v586 = -(v665 * v638);
              }

              else
              {
                v586 = 0;
              }

              v30 += 2 * v665 + 2 * v586;
              if (v585 >= v662)
              {
                v587 = -(v664 * v638);
              }

              else
              {
                v587 = 0;
              }

              v21 = &v585[4 * v587];
              v13 += 8 * v587 + 8 * v664;
              v25 = v30;
              v716 = v21;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            --v576;
          }

          while (v576);
          goto LABEL_903;
        case 8:
          v428 = v31;
          if (v12)
          {
            v429 = v17;
            v710 = v719;
            v430 = 2 * v12;
            v431 = 8 * v31;
            do
            {
              v432 = v32;
              do
              {
                v433 = bswap32(~*v25) >> 16;
                if (v433 != 0xFFFF)
                {
                  if (v433)
                  {
                    v434 = v13;
                    v435 = v428;
                    v436 = v431;
                    CMYK64_DAM(v717, v26, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), bswap32(*v26) >> 16, v433);
                    v431 = v436;
                    v428 = v435;
                    v13 = v434;
                  }

                  else
                  {
                    *v717 = 0;
                    *v26 = 0;
                  }
                }

                v437 = &v716[v428];
                if (v437 >= v13)
                {
                  v438 = -v639;
                }

                else
                {
                  v438 = 0;
                }

                v25 += 2 * v429 + 2 * v438;
                v26 += v430;
                v716 = &v437[4 * v438];
                v717 = (v717 + v431);
                --v432;
              }

              while (v432);
              if (v662)
              {
                v439 = &v687[v664];
                v440 = -(v665 * v638);
                if (v439 < v662)
                {
                  v440 = 0;
                }

                v441 = v688 + 2 * v665 + 2 * v440;
                v442 = -(v664 * v638);
                if (v439 < v662)
                {
                  v442 = 0;
                }

                v13 += 8 * v442 + 8 * v664;
                v687 = &v439[4 * v442];
                v688 += 2 * v665 + 2 * v440;
                v25 = v441;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              --v710;
            }

            while (v710);
            goto LABEL_735;
          }

          v588 = v719;
          v589.i64[0] = 0x100000001;
          v589.i64[1] = 0x100000001;
          do
          {
            v590 = v32;
            do
            {
              v591 = bswap32(~*v25) >> 16;
              if (v591 != 0xFFFF)
              {
                if (v591)
                {
                  v592 = bswap32(v717->u16[1] | (v717->u16[0] << 16));
                  v593.i32[0] = v592;
                  v593.i32[1] = vshr_n_u32(vdup_n_s32(v592), 0x10uLL).i32[1];
                  v593.i64[1] = __PAIR64__(bswap32(v717->u16[3]) >> 16, bswap32(v717->u16[2]) >> 16);
                  v594 = vmulq_s32(v593, vmovl_u16(vdup_n_s16(~v591)));
                  v593.i32[0] = v592;
                  *v717 = vrev16_s8(vmovn_s32(vsubq_s32(v593, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v594, v594, 0x10uLL), v589), 0x10uLL))));
                }

                else
                {
                  *v717 = 0;
                }
              }

              v595 = &v716[v428];
              if (v595 >= v13)
              {
                v596 = -v639;
              }

              else
              {
                v596 = 0;
              }

              v25 += 2 * v17 + 2 * v596;
              v716 = &v595[4 * v596];
              v717 += v428;
              --v590;
            }

            while (v590);
            if (v662)
            {
              v597 = &v21[v664];
              if (v597 >= v662)
              {
                v598 = -(v665 * v638);
              }

              else
              {
                v598 = 0;
              }

              v30 += 2 * v665 + 2 * v598;
              if (v597 >= v662)
              {
                v599 = -(v664 * v638);
              }

              else
              {
                v599 = 0;
              }

              v21 = &v597[4 * v599];
              v13 += 8 * v599 + 8 * v664;
              v25 = v30;
              v716 = v21;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            --v588;
          }

          while (v588);
LABEL_903:
          v687 = v21;
          v688 = v30;
LABEL_904:
          v22 = v13;
          v719 = 0;
          goto LABEL_736;
        case 9:
          v140 = v31;
          v141 = v17;
          v142 = v719;
          v143 = 2 * v12;
          v144 = 8 * v31;
          v145 = -v639;
          do
          {
            v645 = v142;
            v146 = v32;
            do
            {
              v696 = v146;
              v147 = bswap32(*v26) >> 16;
              v148 = v13;
              v149 = v145;
              v150 = bswap32(*v25) >> 16;
              CMYK64_DAMplusDAM(v717, v26, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v150, v147 ^ 0xFFFF, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v147, v150);
              v145 = v149;
              v13 = v148;
              v151 = &v716[v140];
              if (v151 >= v148)
              {
                v152 = v149;
              }

              else
              {
                v152 = 0;
              }

              v25 += 2 * v141 + 2 * v152;
              v26 += v143;
              v716 = &v151[4 * v152];
              v717 = (v717 + v144);
              v146 = v696 - 1;
            }

            while (v696 != 1);
            if (v662)
            {
              v153 = &v687[v664];
              v154 = -(v665 * v638);
              if (v153 < v662)
              {
                v154 = 0;
              }

              v155 = v688 + 2 * v665 + 2 * v154;
              v156 = -(v664 * v638);
              if (v153 < v662)
              {
                v156 = 0;
              }

              v13 = v148 + 8 * v156 + 8 * v664;
              v687 = &v153[4 * v156];
              v688 += 2 * v665 + 2 * v154;
              v25 = v155;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v32 = v660;
            v717 += v661;
            v26 += 2 * v663;
            v142 = v645 - 1;
          }

          while (v645 != 1);
          goto LABEL_735;
        case 10:
          v408 = v31;
          v409 = v17;
          v410 = v719;
          v411 = 2 * v12;
          v412 = 8 * v31;
          v413 = -v639;
          do
          {
            v655 = v410;
            v414 = v32;
            do
            {
              v709 = v414;
              v415 = v26;
              v416 = bswap32(*v26) >> 16;
              v417 = bswap32(*v25) >> 16;
              v418 = v13;
              v419 = v413;
              v420 = v26;
              v421 = v412;
              CMYK64_DAMplusDAM(v717, v420, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v417, v416 ^ 0xFFFF, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v416, v417 ^ 0xFFFF);
              v413 = v419;
              v412 = v421;
              v13 = v418;
              v422 = &v716[v408];
              if (v422 >= v418)
              {
                v423 = v419;
              }

              else
              {
                v423 = 0;
              }

              v25 += 2 * v409 + 2 * v423;
              v26 = &v415[v411];
              v716 = &v422[4 * v423];
              v717 = (v717 + v412);
              v414 = v709 - 1;
            }

            while (v709 != 1);
            if (v662)
            {
              v424 = &v687[v664];
              v425 = -(v665 * v638);
              if (v424 < v662)
              {
                v425 = 0;
              }

              v426 = v688 + 2 * v665 + 2 * v425;
              v427 = -(v664 * v638);
              if (v424 < v662)
              {
                v427 = 0;
              }

              v13 = v418 + 8 * v427 + 8 * v664;
              v687 = &v424[4 * v427];
              v688 += 2 * v665 + 2 * v425;
              v25 = v426;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v32 = v660;
            v717 += v661;
            v26 += 2 * v663;
            v410 = v655 - 1;
          }

          while (v655 != 1);
          goto LABEL_735;
        case 11:
          v693 = v31;
          v669 = 8 * v31;
          v100 = v17;
          if (v12)
          {
            v101 = v719;
            v102 = 2 * v12;
            do
            {
              v644 = v101;
              v103 = v32;
              do
              {
                v104 = v13;
                if (v17)
                {
                  v105 = bswap32(*v25) >> 16;
                }

                else
                {
                  v105 = 0xFFFF;
                }

                CMYK64_DAplusdDA(v717, v26, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), bswap32(*v26) >> 16, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v105);
                v17 = v715;
                v106 = &v716[v693];
                v13 = v104;
                if (v106 >= v104)
                {
                  v107 = -v639;
                }

                else
                {
                  v107 = 0;
                }

                v25 += 2 * v100 + 2 * v107;
                v26 += v102;
                v716 = &v106[4 * v107];
                v717 = (v717 + v669);
                --v103;
              }

              while (v103);
              if (v662)
              {
                v108 = &v687[v664];
                v109 = -(v665 * v638);
                if (v108 < v662)
                {
                  v109 = 0;
                }

                v110 = v688 + 2 * v665 + 2 * v109;
                v111 = -(v664 * v638);
                if (v108 < v662)
                {
                  v111 = 0;
                }

                v13 = v104 + 8 * v111 + 8 * v664;
                v687 = &v108[4 * v111];
                v688 += 2 * v665 + 2 * v109;
                v25 = v110;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              v101 = v644 - 1;
            }

            while (v644 != 1);
          }

          else
          {
            v518 = v719;
            do
            {
              v519 = v32;
              v520 = v13;
              do
              {
                if (v17)
                {
                  v521 = bswap32(*v25) >> 16;
                }

                else
                {
                  v521 = 0xFFFF;
                }

                CMYK64_DplusdDA(v717, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v521);
                v17 = v715;
                v522 = &v716[v693];
                if (v522 >= v520)
                {
                  v523 = -v639;
                }

                else
                {
                  v523 = 0;
                }

                v25 += 2 * v100 + 2 * v523;
                v716 = &v522[4 * v523];
                v717 = (v717 + v669);
                --v519;
              }

              while (v519);
              v13 = v520;
              if (v662)
              {
                v524 = &v687[v664];
                v525 = -(v665 * v638);
                if (v524 < v662)
                {
                  v525 = 0;
                }

                v526 = v688 + 2 * v665 + 2 * v525;
                v527 = -(v664 * v638);
                if (v524 < v662)
                {
                  v527 = 0;
                }

                v13 = v520 + 8 * v527 + 8 * v664;
                v687 = &v524[4 * v527];
                v688 += 2 * v665 + 2 * v525;
                v25 = v526;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              --v518;
            }

            while (v518);
          }

          goto LABEL_735;
        case 12:
          if (v12)
          {
            v695 = v31;
            v127 = v17;
            v128 = v719;
            v129 = 2 * v12;
            v130 = 8 * v31;
            do
            {
              v671 = v128;
              v131 = v32;
              do
              {
                v132 = v13;
                if (v17)
                {
                  v133 = bswap32(*v25) >> 16;
                }

                else
                {
                  v133 = 0xFFFF;
                }

                CMYK64_DApluslDA(v717, v26, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), bswap32(*v26) >> 16, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v133);
                v17 = v715;
                v134 = &v716[v695];
                v13 = v132;
                if (v134 >= v132)
                {
                  v135 = -v639;
                }

                else
                {
                  v135 = 0;
                }

                v25 += 2 * v127 + 2 * v135;
                v26 += v129;
                v716 = &v134[4 * v135];
                v717 = (v717 + v130);
                --v131;
              }

              while (v131);
              if (v662)
              {
                v136 = &v687[v664];
                v137 = -(v665 * v638);
                if (v136 < v662)
                {
                  v137 = 0;
                }

                v138 = v688 + 2 * v665 + 2 * v137;
                v139 = -(v664 * v638);
                if (v136 < v662)
                {
                  v139 = 0;
                }

                v13 = v132 + 8 * v139 + 8 * v664;
                v687 = &v136[4 * v139];
                v688 += 2 * v665 + 2 * v137;
                v25 = v138;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              v128 = v671 - 1;
            }

            while (v671 != 1);
          }

          else
          {
            v528 = v31;
            v529 = v17;
            v530 = v719;
            v531 = 8 * v31;
            do
            {
              v686 = v530;
              v532 = v32;
              do
              {
                v533 = v13;
                CMYK64_DpluslD(v717, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16));
                v13 = v533;
                v534 = &v716[v528];
                if (v534 >= v533)
                {
                  v535 = -v639;
                }

                else
                {
                  v535 = 0;
                }

                v25 += 2 * v529 + 2 * v535;
                v716 = &v534[4 * v535];
                v717 = (v717 + v531);
                --v532;
              }

              while (v532);
              if (v662)
              {
                v536 = &v687[v664];
                v537 = -(v665 * v638);
                if (v536 < v662)
                {
                  v537 = 0;
                }

                v538 = v688 + 2 * v665 + 2 * v537;
                v539 = -(v664 * v638);
                if (v536 < v662)
                {
                  v539 = 0;
                }

                v13 = v533 + 8 * v539 + 8 * v664;
                v687 = &v536[4 * v539];
                v688 += 2 * v665 + 2 * v537;
                v25 = v538;
                v716 = v687;
              }

              else
              {
                v716 += v664;
                v25 += 2 * v665;
              }

              v717 += v661;
              v26 += 2 * v663;
              v530 = v686 - 1;
            }

            while (v686 != 1);
          }

          goto LABEL_735;
        case 13:
          v679 = v31;
          v353 = v17;
          v354 = v719;
          v355 = 2 * v12;
          v356 = 8 * v31;
          while (1)
          {
            v653 = v354;
            v357 = v660;
            v706 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_489;
                }

                LODWORD(v358) = __rev16(*v25);
                if (!v12)
                {
LABEL_482:
                  v359 = v25;
                  v360 = 0xFFFF;
                  goto LABEL_483;
                }
              }

              else
              {
                LODWORD(v358) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_482;
                }
              }

              if (*v26)
              {
                v359 = v25;
                v360 = __rev16(*v26);
LABEL_483:
                v361 = v717 + 6;
                v362 = PDAmultiplyPDA_11872(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v360, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v358);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v358) = v363;
                  v364 = bswap32(v362);
                  v717->i16[0] = HIWORD(v364);
                  v717->i16[1] = v364;
                  v717->i16[2] = bswap32(HIDWORD(v362)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v362));
                  v361 = v26;
                }

                else
                {
                  v365 = bswap32(v362);
                  v717->i16[0] = HIWORD(v365);
                  v717->i16[1] = v365;
                  v717->i16[2] = bswap32(HIDWORD(v362)) >> 16;
                  v358 = HIWORD(v362);
                }

                v13 = v706;
                v17 = v715;
                v25 = v359;
                goto LABEL_488;
              }

              *v717 = *v716;
              v361 = v26;
LABEL_488:
              *v361 = bswap32(v358) >> 16;
LABEL_489:
              v717 = (v717 + v356);
              v366 = &v716[v679];
              if (v366 >= v13)
              {
                v367 = -v639;
              }

              else
              {
                v367 = 0;
              }

              v25 += 2 * v353 + 2 * v367;
              v716 = &v366[4 * v367];
              v26 += v355;
              --v357;
            }

            while (v357);
            if (v662)
            {
              v368 = &v687[v664];
              v369 = -(v665 * v638);
              if (v368 < v662)
              {
                v369 = 0;
              }

              v370 = v688 + 2 * v665 + 2 * v369;
              v371 = -(v664 * v638);
              if (v368 < v662)
              {
                v371 = 0;
              }

              v13 += 8 * v371 + 8 * v664;
              v687 = &v368[4 * v371];
              v688 += 2 * v665 + 2 * v369;
              v25 = v370;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v354 = v653 - 1;
            if (v653 == 1)
            {
              goto LABEL_735;
            }
          }

        case 14:
          v668 = v31;
          v81 = v17;
          v82 = v719;
          v83 = 2 * v12;
          v84 = 8 * v31;
          while (1)
          {
            v643 = v82;
            v85 = v660;
            v692 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_117;
                }

                LODWORD(v86) = __rev16(*v25);
                if (!v12)
                {
LABEL_110:
                  v87 = v25;
                  v88 = 0xFFFF;
                  goto LABEL_111;
                }
              }

              else
              {
                LODWORD(v86) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_110;
                }
              }

              if (*v26)
              {
                v87 = v25;
                v88 = __rev16(*v26);
LABEL_111:
                v89 = v717 + 6;
                v90 = PDAscreenPDA_11873(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v88, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v86);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v86) = v91;
                  v92 = bswap32(v90);
                  v717->i16[0] = HIWORD(v92);
                  v717->i16[1] = v92;
                  v717->i16[2] = bswap32(HIDWORD(v90)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v90));
                  v89 = v26;
                }

                else
                {
                  v86 = HIWORD(v90);
                  v93 = bswap32(v90);
                  v717->i16[0] = HIWORD(v93);
                  v717->i16[1] = v93;
                  v717->i16[2] = bswap32(HIDWORD(v90)) >> 16;
                }

                v13 = v692;
                v17 = v715;
                v25 = v87;
                goto LABEL_116;
              }

              *v717 = *v716;
              v89 = v26;
LABEL_116:
              *v89 = bswap32(v86) >> 16;
LABEL_117:
              v717 = (v717 + v84);
              v94 = &v716[v668];
              if (v94 >= v13)
              {
                v95 = -v639;
              }

              else
              {
                v95 = 0;
              }

              v25 += 2 * v81 + 2 * v95;
              v716 = &v94[4 * v95];
              v26 += v83;
              --v85;
            }

            while (v85);
            if (v662)
            {
              v96 = &v687[v664];
              v97 = -(v665 * v638);
              if (v96 < v662)
              {
                v97 = 0;
              }

              v98 = v688 + 2 * v665 + 2 * v97;
              v99 = -(v664 * v638);
              if (v96 < v662)
              {
                v99 = 0;
              }

              v13 += 8 * v99 + 8 * v664;
              v687 = &v96[4 * v99];
              v688 += 2 * v665 + 2 * v97;
              v25 = v98;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v82 = v643 - 1;
            if (v643 == 1)
            {
              goto LABEL_735;
            }
          }

        case 15:
          v675 = v31;
          v210 = v17;
          v211 = v719;
          v212 = 2 * v12;
          v213 = 8 * v31;
          while (1)
          {
            v648 = v211;
            v214 = v660;
            v700 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_300;
                }

                LODWORD(v215) = __rev16(*v25);
                if (!v12)
                {
LABEL_293:
                  v216 = v25;
                  v217 = 0xFFFF;
                  goto LABEL_294;
                }
              }

              else
              {
                LODWORD(v215) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_293;
                }
              }

              if (*v26)
              {
                v216 = v25;
                v217 = __rev16(*v26);
LABEL_294:
                v218 = v717 + 6;
                v219 = PDAoverlayPDA_11874(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v217, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v215);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v215) = v220;
                  v221 = bswap32(v219);
                  v717->i16[0] = HIWORD(v221);
                  v717->i16[1] = v221;
                  v717->i16[2] = bswap32(HIDWORD(v219)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v219));
                  v218 = v26;
                }

                else
                {
                  v215 = HIWORD(v219);
                  v222 = bswap32(v219);
                  v717->i16[0] = HIWORD(v222);
                  v717->i16[1] = v222;
                  v717->i16[2] = bswap32(HIDWORD(v219)) >> 16;
                }

                v13 = v700;
                v17 = v715;
                v25 = v216;
                goto LABEL_299;
              }

              *v717 = *v716;
              v218 = v26;
LABEL_299:
              *v218 = bswap32(v215) >> 16;
LABEL_300:
              v717 = (v717 + v213);
              v223 = &v716[v675];
              if (v223 >= v13)
              {
                v224 = -v639;
              }

              else
              {
                v224 = 0;
              }

              v25 += 2 * v210 + 2 * v224;
              v716 = &v223[4 * v224];
              v26 += v212;
              --v214;
            }

            while (v214);
            if (v662)
            {
              v225 = &v687[v664];
              v226 = -(v665 * v638);
              if (v225 < v662)
              {
                v226 = 0;
              }

              v227 = v688 + 2 * v665 + 2 * v226;
              v228 = -(v664 * v638);
              if (v225 < v662)
              {
                v228 = 0;
              }

              v13 += 8 * v228 + 8 * v664;
              v687 = &v225[4 * v228];
              v688 += 2 * v665 + 2 * v226;
              v25 = v227;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v211 = v648 - 1;
            if (v648 == 1)
            {
              goto LABEL_735;
            }
          }

        case 16:
          v667 = v31;
          v62 = v17;
          v63 = v719;
          v64 = 2 * v12;
          v65 = 8 * v31;
          while (1)
          {
            v642 = v63;
            v66 = v660;
            v691 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_89;
                }

                LODWORD(v67) = __rev16(*v25);
                if (!v12)
                {
LABEL_82:
                  v68 = v25;
                  v69 = 0xFFFF;
                  goto LABEL_83;
                }
              }

              else
              {
                LODWORD(v67) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_82;
                }
              }

              if (*v26)
              {
                v68 = v25;
                v69 = __rev16(*v26);
LABEL_83:
                v70 = v717 + 6;
                v71 = PDAdarkenPDA_11876(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v69, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v67);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v67) = v72;
                  v73 = bswap32(v71);
                  v717->i16[0] = HIWORD(v73);
                  v717->i16[1] = v73;
                  v717->i16[2] = bswap32(HIDWORD(v71)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v71));
                  v70 = v26;
                }

                else
                {
                  v67 = HIWORD(v71);
                  v74 = bswap32(v71);
                  v717->i16[0] = HIWORD(v74);
                  v717->i16[1] = v74;
                  v717->i16[2] = bswap32(HIDWORD(v71)) >> 16;
                }

                v13 = v691;
                v17 = v715;
                v25 = v68;
                goto LABEL_88;
              }

              *v717 = *v716;
              v70 = v26;
LABEL_88:
              *v70 = bswap32(v67) >> 16;
LABEL_89:
              v717 = (v717 + v65);
              v75 = &v716[v667];
              if (v75 >= v13)
              {
                v76 = -v639;
              }

              else
              {
                v76 = 0;
              }

              v25 += 2 * v62 + 2 * v76;
              v716 = &v75[4 * v76];
              v26 += v64;
              --v66;
            }

            while (v66);
            if (v662)
            {
              v77 = &v687[v664];
              v78 = -(v665 * v638);
              if (v77 < v662)
              {
                v78 = 0;
              }

              v79 = v688 + 2 * v665 + 2 * v78;
              v80 = -(v664 * v638);
              if (v77 < v662)
              {
                v80 = 0;
              }

              v13 += 8 * v80 + 8 * v664;
              v687 = &v77[4 * v80];
              v688 += 2 * v665 + 2 * v78;
              v25 = v79;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v63 = v642 - 1;
            if (v642 == 1)
            {
              goto LABEL_735;
            }
          }

        case 17:
          v676 = v31;
          v279 = v17;
          v280 = v719;
          v281 = 2 * v12;
          v282 = 8 * v31;
          while (1)
          {
            v649 = v280;
            v283 = v660;
            v703 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_390;
                }

                LODWORD(v284) = __rev16(*v25);
                if (!v12)
                {
LABEL_383:
                  v285 = v25;
                  v286 = 0xFFFF;
                  goto LABEL_384;
                }
              }

              else
              {
                LODWORD(v284) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_383;
                }
              }

              if (*v26)
              {
                v285 = v25;
                v286 = __rev16(*v26);
LABEL_384:
                v287 = v717 + 6;
                v288 = PDAlightenPDA_11875(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v286, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v284);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v284) = v289;
                  v290 = bswap32(v288);
                  v717->i16[0] = HIWORD(v290);
                  v717->i16[1] = v290;
                  v717->i16[2] = bswap32(HIDWORD(v288)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v288));
                  v287 = v26;
                }

                else
                {
                  v291 = bswap32(v288);
                  v717->i16[0] = HIWORD(v291);
                  v717->i16[1] = v291;
                  v717->i16[2] = bswap32(HIDWORD(v288)) >> 16;
                  v284 = HIWORD(v288);
                }

                v13 = v703;
                v17 = v715;
                v25 = v285;
                goto LABEL_389;
              }

              *v717 = *v716;
              v287 = v26;
LABEL_389:
              *v287 = bswap32(v284) >> 16;
LABEL_390:
              v717 = (v717 + v282);
              v292 = &v716[v676];
              if (v292 >= v13)
              {
                v293 = -v639;
              }

              else
              {
                v293 = 0;
              }

              v25 += 2 * v279 + 2 * v293;
              v716 = &v292[4 * v293];
              v26 += v281;
              --v283;
            }

            while (v283);
            if (v662)
            {
              v294 = &v687[v664];
              v295 = -(v665 * v638);
              if (v294 < v662)
              {
                v295 = 0;
              }

              v296 = v688 + 2 * v665 + 2 * v295;
              v297 = -(v664 * v638);
              if (v294 < v662)
              {
                v297 = 0;
              }

              v13 += 8 * v297 + 8 * v664;
              v687 = &v294[4 * v297];
              v688 += 2 * v665 + 2 * v295;
              v25 = v296;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v280 = v649 - 1;
            if (v649 == 1)
            {
              goto LABEL_735;
            }
          }

        case 18:
          v681 = v31;
          v389 = v17;
          v390 = v719;
          v391 = 2 * v12;
          v392 = 8 * v31;
          while (1)
          {
            v654 = v390;
            v393 = v660;
            v708 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_542;
                }

                LODWORD(v394) = __rev16(*v25);
                if (!v12)
                {
LABEL_535:
                  v395 = v25;
                  v396 = 0xFFFF;
                  goto LABEL_536;
                }
              }

              else
              {
                LODWORD(v394) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_535;
                }
              }

              if (*v26)
              {
                v395 = v25;
                v396 = __rev16(*v26);
LABEL_536:
                v397 = v717 + 6;
                v398 = PDAcolordodgePDA_11877(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v396, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v394);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v394) = v399;
                  v400 = bswap32(v398);
                  v717->i16[0] = HIWORD(v400);
                  v717->i16[1] = v400;
                  v717->i16[2] = bswap32(HIDWORD(v398)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v398));
                  v397 = v26;
                }

                else
                {
                  v394 = HIWORD(v398);
                  v401 = bswap32(v398);
                  v717->i16[0] = HIWORD(v401);
                  v717->i16[1] = v401;
                  v717->i16[2] = bswap32(HIDWORD(v398)) >> 16;
                }

                v13 = v708;
                v17 = v715;
                v25 = v395;
                goto LABEL_541;
              }

              *v717 = *v716;
              v397 = v26;
LABEL_541:
              *v397 = bswap32(v394) >> 16;
LABEL_542:
              v717 = (v717 + v392);
              v402 = &v716[v681];
              if (v402 >= v13)
              {
                v403 = -v639;
              }

              else
              {
                v403 = 0;
              }

              v25 += 2 * v389 + 2 * v403;
              v716 = &v402[4 * v403];
              v26 += v391;
              --v393;
            }

            while (v393);
            if (v662)
            {
              v404 = &v687[v664];
              v405 = -(v665 * v638);
              if (v404 < v662)
              {
                v405 = 0;
              }

              v406 = v688 + 2 * v665 + 2 * v405;
              v407 = -(v664 * v638);
              if (v404 < v662)
              {
                v407 = 0;
              }

              v13 += 8 * v407 + 8 * v664;
              v687 = &v404[4 * v407];
              v688 += 2 * v665 + 2 * v405;
              v25 = v406;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v390 = v654 - 1;
            if (v654 == 1)
            {
              goto LABEL_735;
            }
          }

        case 19:
          v683 = v31;
          v462 = v17;
          v463 = v719;
          v464 = 2 * v12;
          v465 = 8 * v31;
          while (1)
          {
            v657 = v463;
            v466 = v660;
            v712 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_633;
                }

                LODWORD(v467) = __rev16(*v25);
                if (!v12)
                {
LABEL_626:
                  v468 = v25;
                  v469 = 0xFFFF;
                  goto LABEL_627;
                }
              }

              else
              {
                LODWORD(v467) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_626;
                }
              }

              if (*v26)
              {
                v468 = v25;
                v469 = __rev16(*v26);
LABEL_627:
                v470 = v717 + 6;
                v471 = PDAcolorburnPDA_11878(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v469, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v467);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v467) = v472;
                  v473 = bswap32(v471);
                  v717->i16[0] = HIWORD(v473);
                  v717->i16[1] = v473;
                  v717->i16[2] = bswap32(HIDWORD(v471)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v471));
                  v470 = v26;
                }

                else
                {
                  v474 = bswap32(v471);
                  v717->i16[0] = HIWORD(v474);
                  v717->i16[1] = v474;
                  v717->i16[2] = bswap32(HIDWORD(v471)) >> 16;
                  v467 = HIWORD(v471);
                }

                v13 = v712;
                v17 = v715;
                v25 = v468;
                goto LABEL_632;
              }

              *v717 = *v716;
              v470 = v26;
LABEL_632:
              *v470 = bswap32(v467) >> 16;
LABEL_633:
              v717 = (v717 + v465);
              v475 = &v716[v683];
              if (v475 >= v13)
              {
                v476 = -v639;
              }

              else
              {
                v476 = 0;
              }

              v25 += 2 * v462 + 2 * v476;
              v716 = &v475[4 * v476];
              v26 += v464;
              --v466;
            }

            while (v466);
            if (v662)
            {
              v477 = &v687[v664];
              v478 = -(v665 * v638);
              if (v477 < v662)
              {
                v478 = 0;
              }

              v479 = v688 + 2 * v665 + 2 * v478;
              v480 = -(v664 * v638);
              if (v477 < v662)
              {
                v480 = 0;
              }

              v13 += 8 * v480 + 8 * v664;
              v687 = &v477[4 * v480];
              v688 += 2 * v665 + 2 * v478;
              v25 = v479;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v463 = v657 - 1;
            if (v657 == 1)
            {
              goto LABEL_735;
            }
          }

        case 20:
          v677 = v31;
          v298 = v17;
          v299 = v719;
          v300 = 2 * v12;
          v301 = 8 * v31;
          while (1)
          {
            v650 = v299;
            v302 = v660;
            v704 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_418;
                }

                LODWORD(v303) = __rev16(*v25);
                if (!v12)
                {
LABEL_411:
                  v304 = v25;
                  v305 = 0xFFFF;
                  goto LABEL_412;
                }
              }

              else
              {
                LODWORD(v303) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_411;
                }
              }

              if (*v26)
              {
                v304 = v25;
                v305 = __rev16(*v26);
LABEL_412:
                v306 = v717 + 6;
                v307 = PDAsoftlightPDA_11880(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v305, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v303);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v303) = v308;
                  v309 = bswap32(v307);
                  v717->i16[0] = HIWORD(v309);
                  v717->i16[1] = v309;
                  v717->i16[2] = bswap32(HIDWORD(v307)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v307));
                  v306 = v26;
                }

                else
                {
                  v310 = bswap32(v307);
                  v717->i16[0] = HIWORD(v310);
                  v717->i16[1] = v310;
                  v717->i16[2] = bswap32(HIDWORD(v307)) >> 16;
                  v303 = HIWORD(v307);
                }

                v13 = v704;
                v17 = v715;
                v25 = v304;
                goto LABEL_417;
              }

              *v717 = *v716;
              v306 = v26;
LABEL_417:
              *v306 = bswap32(v303) >> 16;
LABEL_418:
              v717 = (v717 + v301);
              v311 = &v716[v677];
              if (v311 >= v13)
              {
                v312 = -v639;
              }

              else
              {
                v312 = 0;
              }

              v25 += 2 * v298 + 2 * v312;
              v716 = &v311[4 * v312];
              v26 += v300;
              --v302;
            }

            while (v302);
            if (v662)
            {
              v313 = &v687[v664];
              v314 = -(v665 * v638);
              if (v313 < v662)
              {
                v314 = 0;
              }

              v315 = v688 + 2 * v665 + 2 * v314;
              v316 = -(v664 * v638);
              if (v313 < v662)
              {
                v316 = 0;
              }

              v13 += 8 * v316 + 8 * v664;
              v687 = &v313[4 * v316];
              v688 += 2 * v665 + 2 * v314;
              v25 = v315;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v299 = v650 - 1;
            if (v650 == 1)
            {
              goto LABEL_735;
            }
          }

        case 21:
          v678 = v31;
          v334 = v17;
          v335 = v719;
          v336 = 2 * v12;
          v337 = 8 * v31;
          while (1)
          {
            v652 = v335;
            v338 = v660;
            v705 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_461;
                }

                LODWORD(v339) = __rev16(*v25);
                if (!v12)
                {
LABEL_454:
                  v340 = v25;
                  v341 = 0xFFFF;
                  goto LABEL_455;
                }
              }

              else
              {
                LODWORD(v339) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_454;
                }
              }

              if (*v26)
              {
                v340 = v25;
                v341 = __rev16(*v26);
LABEL_455:
                v342 = v717 + 6;
                v343 = PDAhardlightPDA_11879(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v341, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v339);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v339) = v344;
                  v345 = bswap32(v343);
                  v717->i16[0] = HIWORD(v345);
                  v717->i16[1] = v345;
                  v717->i16[2] = bswap32(HIDWORD(v343)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v343));
                  v342 = v26;
                }

                else
                {
                  v346 = bswap32(v343);
                  v717->i16[0] = HIWORD(v346);
                  v717->i16[1] = v346;
                  v717->i16[2] = bswap32(HIDWORD(v343)) >> 16;
                  v339 = HIWORD(v343);
                }

                v13 = v705;
                v17 = v715;
                v25 = v340;
                goto LABEL_460;
              }

              *v717 = *v716;
              v342 = v26;
LABEL_460:
              *v342 = bswap32(v339) >> 16;
LABEL_461:
              v717 = (v717 + v337);
              v347 = &v716[v678];
              if (v347 >= v13)
              {
                v348 = -v639;
              }

              else
              {
                v348 = 0;
              }

              v25 += 2 * v334 + 2 * v348;
              v716 = &v347[4 * v348];
              v26 += v336;
              --v338;
            }

            while (v338);
            if (v662)
            {
              v349 = &v687[v664];
              v350 = -(v665 * v638);
              if (v349 < v662)
              {
                v350 = 0;
              }

              v351 = v688 + 2 * v665 + 2 * v350;
              v352 = -(v664 * v638);
              if (v349 < v662)
              {
                v352 = 0;
              }

              v13 += 8 * v352 + 8 * v664;
              v687 = &v349[4 * v352];
              v688 += 2 * v665 + 2 * v350;
              v25 = v351;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v335 = v652 - 1;
            if (v652 == 1)
            {
              goto LABEL_735;
            }
          }

        case 22:
          v682 = v31;
          v443 = v17;
          v444 = v719;
          v445 = 2 * v12;
          v446 = 8 * v31;
          while (1)
          {
            v656 = v444;
            v447 = v660;
            v711 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_605;
                }

                LODWORD(v448) = __rev16(*v25);
                if (!v12)
                {
LABEL_598:
                  v449 = v25;
                  v450 = 0xFFFF;
                  goto LABEL_599;
                }
              }

              else
              {
                LODWORD(v448) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_598;
                }
              }

              if (*v26)
              {
                v449 = v25;
                v450 = __rev16(*v26);
LABEL_599:
                v451 = v717 + 6;
                v452 = PDAdifferencePDA_11881(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v450, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v448);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v448) = v453;
                  v454 = bswap32(v452);
                  v717->i16[0] = HIWORD(v454);
                  v717->i16[1] = v454;
                  v717->i16[2] = bswap32(HIDWORD(v452)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v452));
                  v451 = v26;
                }

                else
                {
                  v448 = HIWORD(v452);
                  v455 = bswap32(v452);
                  v717->i16[0] = HIWORD(v455);
                  v717->i16[1] = v455;
                  v717->i16[2] = bswap32(HIDWORD(v452)) >> 16;
                }

                v13 = v711;
                v17 = v715;
                v25 = v449;
                goto LABEL_604;
              }

              *v717 = *v716;
              v451 = v26;
LABEL_604:
              *v451 = bswap32(v448) >> 16;
LABEL_605:
              v717 = (v717 + v446);
              v456 = &v716[v682];
              if (v456 >= v13)
              {
                v457 = -v639;
              }

              else
              {
                v457 = 0;
              }

              v25 += 2 * v443 + 2 * v457;
              v716 = &v456[4 * v457];
              v26 += v445;
              --v447;
            }

            while (v447);
            if (v662)
            {
              v458 = &v687[v664];
              v459 = -(v665 * v638);
              if (v458 < v662)
              {
                v459 = 0;
              }

              v460 = v688 + 2 * v665 + 2 * v459;
              v461 = -(v664 * v638);
              if (v458 < v662)
              {
                v461 = 0;
              }

              v13 += 8 * v461 + 8 * v664;
              v687 = &v458[4 * v461];
              v688 += 2 * v665 + 2 * v459;
              v25 = v460;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v444 = v656 - 1;
            if (v656 == 1)
            {
              goto LABEL_735;
            }
          }

        case 23:
          v684 = v31;
          v481 = v17;
          v482 = v719;
          v483 = 2 * v12;
          v484 = 8 * v31;
          while (1)
          {
            v658 = v482;
            v485 = v660;
            v713 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_661;
                }

                LODWORD(v486) = __rev16(*v25);
                if (!v12)
                {
LABEL_654:
                  v487 = v25;
                  v488 = 0xFFFF;
                  goto LABEL_655;
                }
              }

              else
              {
                LODWORD(v486) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_654;
                }
              }

              if (*v26)
              {
                v487 = v25;
                v488 = __rev16(*v26);
LABEL_655:
                v489 = v717 + 6;
                v490 = PDAexclusionPDA_11882(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v488, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v486);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v486) = v491;
                  v492 = bswap32(v490);
                  v717->i16[0] = HIWORD(v492);
                  v717->i16[1] = v492;
                  v717->i16[2] = bswap32(HIDWORD(v490)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v490));
                  v489 = v26;
                }

                else
                {
                  v486 = HIWORD(v490);
                  v493 = bswap32(v490);
                  v717->i16[0] = HIWORD(v493);
                  v717->i16[1] = v493;
                  v717->i16[2] = bswap32(HIDWORD(v490)) >> 16;
                }

                v13 = v713;
                v17 = v715;
                v25 = v487;
                goto LABEL_660;
              }

              *v717 = *v716;
              v489 = v26;
LABEL_660:
              *v489 = bswap32(v486) >> 16;
LABEL_661:
              v717 = (v717 + v484);
              v494 = &v716[v684];
              if (v494 >= v13)
              {
                v495 = -v639;
              }

              else
              {
                v495 = 0;
              }

              v25 += 2 * v481 + 2 * v495;
              v716 = &v494[4 * v495];
              v26 += v483;
              --v485;
            }

            while (v485);
            if (v662)
            {
              v496 = &v687[v664];
              v497 = -(v665 * v638);
              if (v496 < v662)
              {
                v497 = 0;
              }

              v498 = v688 + 2 * v665 + 2 * v497;
              v499 = -(v664 * v638);
              if (v496 < v662)
              {
                v499 = 0;
              }

              v13 += 8 * v499 + 8 * v664;
              v687 = &v496[4 * v499];
              v688 += 2 * v665 + 2 * v497;
              v25 = v498;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v482 = v658 - 1;
            if (v658 == 1)
            {
              goto LABEL_735;
            }
          }

        case 24:
          v673 = v31;
          v176 = v17;
          v177 = v719;
          v178 = 2 * v12;
          v179 = 8 * v31;
          while (1)
          {
            v647 = v177;
            v180 = v660;
            v698 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_252;
                }

                LODWORD(v181) = __rev16(*v25);
                if (!v12)
                {
LABEL_245:
                  v182 = v25;
                  v183 = 0xFFFF;
                  goto LABEL_246;
                }
              }

              else
              {
                LODWORD(v181) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_245;
                }
              }

              if (*v26)
              {
                v182 = v25;
                v183 = __rev16(*v26);
LABEL_246:
                v184 = v717 + 6;
                v185 = PDAhuePDA_11883(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v183, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v181);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v181) = v186;
                  v187 = bswap32(v185);
                  v717->i16[0] = HIWORD(v187);
                  v717->i16[1] = v187;
                  v717->i16[2] = bswap32(HIDWORD(v185)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v185));
                  v184 = v26;
                }

                else
                {
                  v181 = HIWORD(v185);
                  v188 = bswap32(v185);
                  v717->i16[0] = HIWORD(v188);
                  v717->i16[1] = v188;
                  v717->i16[2] = bswap32(HIDWORD(v185)) >> 16;
                }

                v13 = v698;
                v17 = v715;
                v25 = v182;
                goto LABEL_251;
              }

              *v717 = *v716;
              v184 = v26;
LABEL_251:
              *v184 = bswap32(v181) >> 16;
LABEL_252:
              v717 = (v717 + v179);
              v189 = &v716[v673];
              if (v189 >= v13)
              {
                v190 = -v639;
              }

              else
              {
                v190 = 0;
              }

              v25 += 2 * v176 + 2 * v190;
              v716 = &v189[4 * v190];
              v26 += v178;
              --v180;
            }

            while (v180);
            if (v662)
            {
              v191 = &v687[v664];
              v192 = -(v665 * v638);
              if (v191 < v662)
              {
                v192 = 0;
              }

              v193 = v688 + 2 * v665 + 2 * v192;
              v194 = -(v664 * v638);
              if (v191 < v662)
              {
                v194 = 0;
              }

              v13 += 8 * v194 + 8 * v664;
              v687 = &v191[4 * v194];
              v688 += 2 * v665 + 2 * v192;
              v25 = v193;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v177 = v647 - 1;
            if (v647 == 1)
            {
              goto LABEL_735;
            }
          }

        case 25:
          v672 = v31;
          v157 = v17;
          v158 = v719;
          v159 = 2 * v12;
          v160 = 8 * v31;
          while (1)
          {
            v646 = v158;
            v161 = v660;
            v697 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_224;
                }

                LODWORD(v162) = __rev16(*v25);
                if (!v12)
                {
LABEL_217:
                  v163 = v25;
                  v164 = 0xFFFF;
                  goto LABEL_218;
                }
              }

              else
              {
                LODWORD(v162) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_217;
                }
              }

              if (*v26)
              {
                v163 = v25;
                v164 = __rev16(*v26);
LABEL_218:
                v165 = v717 + 6;
                v166 = PDAsaturationPDA_11884(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v164, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v162);
                v12 = v689;
                if (v689)
                {
                  LODWORD(v162) = v167;
                  v168 = bswap32(v166);
                  v717->i16[0] = HIWORD(v168);
                  v717->i16[1] = v168;
                  v717->i16[2] = bswap32(HIDWORD(v166)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v166));
                  v165 = v26;
                }

                else
                {
                  v169 = bswap32(v166);
                  v717->i16[0] = HIWORD(v169);
                  v717->i16[1] = v169;
                  v717->i16[2] = bswap32(HIDWORD(v166)) >> 16;
                  v162 = HIWORD(v166);
                }

                v13 = v697;
                v17 = v715;
                v25 = v163;
                goto LABEL_223;
              }

              *v717 = *v716;
              v165 = v26;
LABEL_223:
              *v165 = bswap32(v162) >> 16;
LABEL_224:
              v717 = (v717 + v160);
              v170 = &v716[v672];
              if (v170 >= v13)
              {
                v171 = -v639;
              }

              else
              {
                v171 = 0;
              }

              v25 += 2 * v157 + 2 * v171;
              v716 = &v170[4 * v171];
              v26 += v159;
              --v161;
            }

            while (v161);
            if (v662)
            {
              v172 = &v687[v664];
              v173 = -(v665 * v638);
              if (v172 < v662)
              {
                v173 = 0;
              }

              v174 = v688 + 2 * v665 + 2 * v173;
              v175 = -(v664 * v638);
              if (v172 < v662)
              {
                v175 = 0;
              }

              v13 += 8 * v175 + 8 * v664;
              v687 = &v172[4 * v175];
              v688 += 2 * v665 + 2 * v173;
              v25 = v174;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v158 = v646 - 1;
            if (v646 == 1)
            {
              goto LABEL_735;
            }
          }

        case 26:
          v685 = v31;
          v500 = v17;
          v501 = v719;
          v502 = 2 * v12;
          v503 = 8 * v31;
          while (1)
          {
            v659 = v501;
            v504 = v660;
            v714 = v13;
            do
            {
              if (v17)
              {
                if (!*v25)
                {
                  goto LABEL_690;
                }

                LODWORD(v505) = __rev16(*v25);
                if (!v12)
                {
LABEL_683:
                  v506 = v25;
                  v507 = 0xFFFF;
                  goto LABEL_684;
                }
              }

              else
              {
                LODWORD(v505) = 0xFFFF;
                if (!v12)
                {
                  goto LABEL_683;
                }
              }

              if (*v26)
              {
                v506 = v25;
                v507 = __rev16(*v26);
LABEL_684:
                v508 = v717 + 6;
                v509 = PDAluminosityPDA_11885(((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v505, ((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v507);
                v12 = v689;
                if (v689)
                {
                  v510 = bswap32(v509);
                  v717->i16[0] = HIWORD(v510);
                  v717->i16[1] = v510;
                  v717->i16[2] = bswap32(HIDWORD(v509)) >> 16;
                  v717->i16[3] = __rev16(HIWORD(v509));
                  v508 = v26;
                }

                else
                {
                  v505 = HIWORD(v509);
                  v511 = bswap32(v509);
                  v717->i16[0] = HIWORD(v511);
                  v717->i16[1] = v511;
                  v717->i16[2] = bswap32(HIDWORD(v509)) >> 16;
                }

                v13 = v714;
                v17 = v715;
                v25 = v506;
                goto LABEL_689;
              }

              *v717 = *v716;
              v508 = v26;
LABEL_689:
              *v508 = bswap32(v505) >> 16;
LABEL_690:
              v717 = (v717 + v503);
              v512 = &v716[v685];
              if (v512 >= v13)
              {
                v513 = -v639;
              }

              else
              {
                v513 = 0;
              }

              v25 += 2 * v500 + 2 * v513;
              v716 = &v512[4 * v513];
              v26 += v502;
              --v504;
            }

            while (v504);
            if (v662)
            {
              v514 = &v687[v664];
              v515 = -(v665 * v638);
              if (v514 < v662)
              {
                v515 = 0;
              }

              v516 = v688 + 2 * v665 + 2 * v515;
              v517 = -(v664 * v638);
              if (v514 < v662)
              {
                v517 = 0;
              }

              v13 += 8 * v517 + 8 * v664;
              v687 = &v514[4 * v517];
              v688 += 2 * v665 + 2 * v515;
              v25 = v516;
              v716 = v687;
            }

            else
            {
              v716 += v664;
              v25 += 2 * v665;
            }

            v717 += v661;
            v26 += 2 * v663;
            v501 = v659 - 1;
            if (v659 == 1)
            {
              goto LABEL_735;
            }
          }

        case 27:
          v666 = v31;
          v43 = v17;
          v44 = v719;
          v45 = 2 * v12;
          v46 = 8 * v31;
          break;
        default:
          v22 = v13;
          goto LABEL_736;
      }

      break;
    }

LABEL_47:
    v641 = v44;
    v47 = v660;
    v690 = v13;
    while (v17)
    {
      if (*v25)
      {
        LODWORD(v48) = __rev16(*v25);
        if (v12)
        {
          goto LABEL_51;
        }

LABEL_54:
        v49 = v25;
        v50 = 0xFFFF;
LABEL_55:
        v51 = v717 + 6;
        v52 = PDAluminosityPDA_11885(((bswap32(v717->u16[2]) >> 16) << 32) | ((bswap32(v717->u16[3]) >> 16) << 48) | bswap32(v717->u16[1]) & 0xFFFF0000 | (bswap32(v717->u16[0]) >> 16), v50, ((bswap32(v716->u16[2]) >> 16) << 32) | ((bswap32(v716->u16[3]) >> 16) << 48) | bswap32(v716->u16[1]) & 0xFFFF0000 | (bswap32(v716->u16[0]) >> 16), v48);
        v12 = v689;
        if (v689)
        {
          LODWORD(v48) = v53;
          v54 = bswap32(v52);
          v717->i16[0] = HIWORD(v54);
          v717->i16[1] = v54;
          v717->i16[2] = bswap32(HIDWORD(v52)) >> 16;
          v717->i16[3] = __rev16(HIWORD(v52));
          v51 = v26;
        }

        else
        {
          v55 = bswap32(v52);
          v717->i16[0] = HIWORD(v55);
          v717->i16[1] = v55;
          v717->i16[2] = bswap32(HIDWORD(v52)) >> 16;
          v48 = HIWORD(v52);
        }

        v13 = v690;
        v17 = v715;
        v25 = v49;
        goto LABEL_60;
      }

LABEL_61:
      v717 = (v717 + v46);
      v56 = &v716[v666];
      if (v56 >= v13)
      {
        v57 = -v639;
      }

      else
      {
        v57 = 0;
      }

      v25 += 2 * v43 + 2 * v57;
      v716 = &v56[4 * v57];
      v26 += v45;
      if (!--v47)
      {
        if (v662)
        {
          v58 = &v687[v664];
          v59 = -(v665 * v638);
          if (v58 < v662)
          {
            v59 = 0;
          }

          v60 = v688 + 2 * v665 + 2 * v59;
          v61 = -(v664 * v638);
          if (v58 < v662)
          {
            v61 = 0;
          }

          v13 += 8 * v61 + 8 * v664;
          v687 = &v58[4 * v61];
          v688 += 2 * v665 + 2 * v59;
          v25 = v60;
          v716 = v687;
        }

        else
        {
          v716 += v664;
          v25 += 2 * v665;
        }

        v717 += v661;
        v26 += 2 * v663;
        v44 = v641 - 1;
        if (v641 == 1)
        {
LABEL_735:
          v22 = v13;
          v719 = 0;
          a2 = v632;
          v11 = v631;
          goto LABEL_736;
        }

        goto LABEL_47;
      }
    }

    LODWORD(v48) = 0xFFFF;
    if (!v12)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (*v26)
    {
      v49 = v25;
      v50 = __rev16(*v26);
      goto LABEL_55;
    }

    *v717 = *v716;
    v51 = v26;
LABEL_60:
    *v51 = bswap32(v48) >> 16;
    goto LABEL_61;
  }
}

void CMYK64_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v5 = *(a1 + 88);
  v4 = *(a1 + 96);
  v6 = bswap32(v5[3]) >> 16;
  v7 = ((bswap32(v5[2]) >> 16) << 32) | (v6 << 48);
  v8 = (__PAIR64__(bswap32(v5[1]) >> 16, bswap32(*v5)) >> 16);
  if (v4)
  {
    v9 = bswap32(*v4) >> 16;
  }

  else
  {
    v9 = 0xFFFF;
  }

  v509 = *(a1 + 4);
  v505 = *(a1 + 8);
  v10 = *(a1 + 136);
  v11 = v7 | v8;
  v493 = *(a1 + 28);
  v498 = *(a1 + 40);
  pthread_mutex_lock(&CMYK64_cacheColorLock);
  v12 = CMYK64_cacheColor;
  if (CMYK64_cacheColor && *(CMYK64_cacheColor + 16) == v11 && *(CMYK64_cacheColor + 24) == v9)
  {
    pthread_mutex_unlock(&CMYK64_cacheColorLock);
    v13 = v12 + 8;
    v14 = v505;
    v15 = a2;
  }

  else
  {
    v501 = v10;
    v16 = 0;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v17 = v12;
      v18 = v16;
      if (*(v12 + 16) == v11 && *(v12 + 24) == v9)
      {
        break;
      }

      v12 = *v12;
      v16 = v17;
      if (!*v17)
      {
        if (CMYK64_cacheColorCount > 6)
        {
          *v18 = 0;
          v21 = *(v17 + 8);
        }

        else
        {
LABEL_14:
          v19 = CMYK64_cacheColorBase;
          if (CMYK64_cacheColorBase)
          {
            v20 = CMYK64_cacheColorCount;
          }

          else
          {
            v19 = malloc_type_calloc(1uLL, 0x70E0uLL, 0x102004053D502F9uLL);
            v20 = 0;
            CMYK64_cacheColorBase = v19;
          }

          v17 = v19 + 32 * v20;
          v21 = v19 + 4096 * v20 + 224;
          *(v17 + 8) = v21;
          CMYK64_cacheColorCount = v20 + 1;
        }

        *v17 = CMYK64_cacheColor;
        CMYK64_cacheColor = v17;
        *(v17 + 16) = v11;
        *(v17 + 24) = v9;
        *(v17 + 26) = 0;
        *(v17 + 30) = 0;
        v22 = vdupq_n_s32(v8);
        v23 = vdupq_n_s32(WORD1(v8));
        v24 = vdupq_n_s32(WORD2(v7));
        v25 = vdupq_n_s32(v6);
        v26 = vdupq_n_s32(v9);
        v27 = vdupq_n_s32(v8);
        v28 = vdupq_n_s32(HIDWORD(v7));
        v29 = vdupq_n_s16(v9);
        v30 = v21 + 64;
        v31 = 256;
        v32 = xmmword_18439CC10;
        v33.i64[0] = 0xFFFF0000FFFFLL;
        v33.i64[1] = 0xFFFF0000FFFFLL;
        v34.i64[0] = 0x100000001;
        v34.i64[1] = 0x100000001;
        v35 = xmmword_18439CB90;
        v36.i64[0] = 0x800000008;
        v36.i64[1] = 0x800000008;
        v37 = vdupq_n_s32(0x101u);
        do
        {
          v38 = veorq_s8(vmulq_s32(v32, v37), v33);
          v39 = veorq_s8(vmulq_s32(v35, v37), v33);
          v40 = vmulq_s32(v39, v22);
          v41 = vmulq_s32(v38, v22);
          v42 = vmulq_s32(v38, v23);
          v43 = vmulq_s32(v39, v23);
          v44 = vmulq_s32(v38, v24);
          v45 = vmulq_s32(v39, v24);
          v46 = vmulq_s32(v39, v25);
          v47 = vmulq_s32(v38, v25);
          v48 = vmulq_s32(v39, v26);
          v49 = vmulq_s32(v38, v26);
          v50 = vaddq_s32(vsraq_n_u32(v40, v40, 0x10uLL), v34);
          v51 = vaddq_s32(vsraq_n_u32(v41, v41, 0x10uLL), v34);
          v52 = vaddq_s32(vsraq_n_u32(v42, v42, 0x10uLL), v34);
          v53 = vaddq_s32(vsraq_n_u32(v43, v43, 0x10uLL), v34);
          v54 = vaddq_s32(vsraq_n_u32(v44, v44, 0x10uLL), v34);
          v55 = vaddq_s32(vsraq_n_u32(v45, v45, 0x10uLL), v34);
          v56 = vsubq_s32(v25, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v46, v46, 0x10uLL), v34), 0x10uLL));
          v57 = vsubq_s32(v25, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v47, v47, 0x10uLL), v34), 0x10uLL));
          v58.i64[0] = v57.u32[2];
          v58.i64[1] = v57.u32[3];
          v59 = v58;
          v58.i64[0] = v57.u32[0];
          v58.i64[1] = v57.u32[1];
          v60 = v58;
          v58.i64[0] = v56.u32[2];
          v58.i64[1] = v56.u32[3];
          v61 = v58;
          v58.i64[0] = v56.u32[0];
          v58.i64[1] = v56.u32[1];
          _Q29 = vandq_s8(vsubq_s32(v28, vshrq_n_u32(v55, 0x10uLL)), v33);
          _Q28 = vandq_s8(vsubq_s32(v28, vshrq_n_u32(v54, 0x10uLL)), v33);
          v64 = vshll_n_s32(*_Q29.i8, 0x20uLL);
          __asm { SHLL2           V29.2D, V29.4S, #0x20 ; ' ' }

          v69 = vshll_n_s32(*_Q28.i8, 0x20uLL);
          __asm { SHLL2           V28.2D, V28.4S, #0x20 ; ' ' }

          v70 = vorrq_s8(vshlq_n_s64(v59, 0x30uLL), _Q28);
          v71 = vorrq_s8(vshlq_n_s64(v60, 0x30uLL), v69);
          v72 = vorrq_s8(vshlq_n_s64(v61, 0x30uLL), _Q29);
          v73 = vorrq_s8(vshlq_n_s64(v58, 0x30uLL), v64);
          v74 = vshlq_n_s32(vsubq_s32(v23, vshrq_n_u32(v53, 0x10uLL)), 0x10uLL);
          v75 = vshlq_n_s32(vsubq_s32(v23, vshrq_n_u32(v52, 0x10uLL)), 0x10uLL);
          v58.i64[0] = v75.u32[2];
          v58.i64[1] = v75.u32[3];
          v76 = v58;
          v58.i64[0] = v75.u32[0];
          v58.i64[1] = v75.u32[1];
          v77 = v58;
          v58.i64[0] = v74.u32[2];
          v58.i64[1] = v74.u32[3];
          v78 = v58;
          v58.i64[0] = v74.u32[0];
          v58.i64[1] = v74.u32[1];
          v79 = v58;
          v80 = vandq_s8(vsubq_s32(v27, vshrq_n_u32(v51, 0x10uLL)), v33);
          v81 = vandq_s8(vsubq_s32(v27, vshrq_n_u32(v50, 0x10uLL)), v33);
          v58.i64[0] = v81.u32[0];
          v58.i64[1] = v81.u32[1];
          v82 = v58;
          v58.i64[0] = v81.u32[2];
          v58.i64[1] = v81.u32[3];
          v83 = v58;
          v58.i64[0] = v80.u32[0];
          v58.i64[1] = v80.u32[1];
          v84 = v58;
          v58.i64[0] = v80.u32[2];
          v58.i64[1] = v80.u32[3];
          v85 = vorrq_s8(v70, vorrq_s8(v76, v58));
          v86 = vorrq_s8(v71, vorrq_s8(v77, v84));
          v87 = vorrq_s8(v72, vorrq_s8(v78, v83));
          v88 = vorrq_s8(v73, vorrq_s8(v79, v82));
          *(v30 - 64) = v88.i64[0];
          *(v30 - 32) = v87.i64[0];
          *v30 = v86.i64[0];
          *(v30 + 32) = v85.i64[0];
          v89 = vsubq_s16(v29, vaddhn_high_s32(vaddhn_s32(vsraq_n_u32(v48, v48, 0x10uLL), v34), vsraq_n_u32(v49, v49, 0x10uLL), v34));
          *(v30 - 56) = v89.i16[0];
          *(v30 - 48) = v88.i64[1];
          *(v30 - 16) = v87.i64[1];
          *(v30 + 16) = v86.i64[1];
          *(v30 + 48) = v85.i64[1];
          *(v30 - 40) = v89.i16[1];
          *(v30 - 24) = v89.i16[2];
          *(v30 - 8) = v89.i16[3];
          *(v30 + 8) = v89.i16[4];
          *(v30 + 24) = v89.i16[5];
          *(v30 + 40) = v89.i16[6];
          *(v30 + 56) = v89.i16[7];
          v35 = vaddq_s32(v35, v36);
          v30 += 128;
          v32 = vaddq_s32(v32, v36);
          v31 -= 8;
        }

        while (v31);
        v13 = v17 + 8;
        pthread_mutex_unlock(&CMYK64_cacheColorLock);
        goto LABEL_25;
      }
    }

    if (v16)
    {
      *v16 = *v12;
      *v12 = CMYK64_cacheColor;
      CMYK64_cacheColor = v12;
    }

    pthread_mutex_unlock(&CMYK64_cacheColorLock);
    v13 = v12 + 8;
LABEL_25:
    v14 = v505;
    v15 = a2;
    v10 = v501;
  }

  v90 = *v13;
  v496 = *(*v13 + 4080);
  v91 = *(*v13 + 4088);
  v92 = *(a1 + 12);
  v93 = *(a1 + 16);
  if (v3)
  {
    v94 = *(a1 + 32) >> 1;
    v95 = (v3 + 2 * v94 * v93 + 2 * v92);
    v96 = 1;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v95 = 0;
    v94 = 0;
    v96 = 0;
    if (!v10)
    {
      return;
    }
  }

  v97 = v94 - v509;
  if (v3)
  {
    v98 = v94 - v509;
  }

  else
  {
    v98 = v94;
  }

  v99 = (v498 + 8 * (v493 >> 3) * v93 + 8 * v92);
  v100 = *(a1 + 124);
  v101 = v10 + *(a1 + 108) * v100 + *(a1 + 104);
  v502 = v100 - v509;
  v506 = (v493 >> 3) - v509;
  v513 = v90;
  switch(v15)
  {
    case 0:
      if (v3)
      {
        v102 = 2 * v96;
        do
        {
          v103 = v509;
          do
          {
            v104 = *v101;
            if (*v101)
            {
              if (v104 == 255)
              {
                *v99 = 0;
                *v95 = 0;
              }

              else
              {
                CMYK64_DAM(v99, v95, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, v104 ^ 0xFF | ((v104 ^ 0xFF) << 8));
              }
            }

            ++v101;
            ++v99;
            v95 = (v95 + v102);
            --v103;
          }

          while (v103);
          v101 += v502;
          v99 += v506;
          v95 += v98;
          --v14;
        }

        while (v14);
      }

      else
      {
        v370.i64[0] = 0x100000001;
        v370.i64[1] = 0x100000001;
        do
        {
          v371 = v509;
          do
          {
            v372 = *v101;
            if (*v101)
            {
              if (v372 == 255)
              {
                *v99 = 0;
              }

              else
              {
                v373 = bswap32(v99->u16[1] | (v99->u16[0] << 16));
                v374.i32[0] = v373;
                v374.i32[1] = vshr_n_u32(vdup_n_s32(v373), 0x10uLL).i32[1];
                v374.i64[1] = __PAIR64__(bswap32(v99->u16[3]) >> 16, bswap32(v99->u16[2]) >> 16);
                v375 = vmulq_s32(v374, vdupq_n_s32((v372 ^ 0xFF | ((v372 ^ 0xFF) << 8)) ^ 0xFFFFu));
                v374.i32[0] = v373;
                *v99 = vrev16_s8(vmovn_s32(vsubq_s32(v374, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v375, v375, 0x10uLL), v370), 0x10uLL))));
              }
            }

            ++v101;
            ++v99;
            --v371;
          }

          while (v371);
          v101 += v502;
          v99 += v506;
          --v14;
        }

        while (v14);
      }

      return;
    case 1:
      v218 = v101 & 3;
      if (v3)
      {
        v219 = v218 + v509;
        v220 = &v99[-(v101 & 3)];
        v221 = &v95[-(v101 & 3)];
        if ((v101 & 3) != 0)
        {
          v222 = v101 & 0xFC;
        }

        else
        {
          v222 = v101;
        }

        if ((v101 & 3) != 0)
        {
          v223 = -1 << (8 * v218);
        }

        else
        {
          v223 = -1;
        }

        if ((v101 & 3) != 0)
        {
          v101 &= 0xFFFFFFFFFFFFFFFCLL;
          v95 = v221;
          v99 = v220;
        }

        else
        {
          v219 = v509;
        }

        if (((v219 + v222) & 3) != 0)
        {
          v224 = 4 - ((v219 + v222) & 3);
          v218 += v224;
          v225 = 0xFFFFFFFF >> (8 * v224);
          if (v219 >= 4)
          {
            v226 = 0xFFFFFFFF >> (8 * v224);
          }

          else
          {
            v226 = 0;
          }

          v499 = v226;
          if (v219 >= 4)
          {
            v225 = -1;
          }

          v494 = v225 & v223;
        }

        else
        {
          v494 = v223;
          v499 = 0;
        }

        v504 = v502 - v218;
        v492 = v219 >> 2;
        v410 = HIDWORD(v496);
        v411 = HIWORD(v496);
        v412 = bswap32(v496);
        v413 = HIWORD(v412);
        v497 = v506 - v218;
        v414 = v412;
        v415 = bswap32(v410) >> 16;
        v416 = __rev16(v411);
        v417 = __rev16(v91);
        v491 = v97 - v218;
        do
        {
          v508 = v14;
          v418 = v492;
          v419 = *v101 & v494;
          v511 = v499;
          if (!v419)
          {
            goto LABEL_508;
          }

LABEL_506:
          if (v419 == -1)
          {
            v99->i16[0] = v413;
            v99->i16[1] = v414;
            v99->i16[2] = v415;
            v99->i16[3] = v416;
            *v95 = v417;
            v99[1].i16[0] = v413;
            v99[1].i16[1] = v414;
            v99[1].i16[2] = v415;
            v99[1].i16[3] = v416;
            v95[1] = v417;
            v99[2].i16[0] = v413;
            v99[2].i16[1] = v414;
            v99[2].i16[2] = v415;
            v99[2].i16[3] = v416;
            v95[2] = v417;
            v99[3].i16[0] = v413;
            v99[3].i16[1] = v414;
            v99[3].i16[2] = v415;
            v99[3].i16[3] = v416;
            v95[3] = v417;
            goto LABEL_508;
          }

          while (1)
          {
            if (v419)
            {
              if (v419 == 255)
              {
                v99->i16[0] = v413;
                v99->i16[1] = v414;
                v99->i16[2] = v415;
                v99->i16[3] = v416;
                *v95 = v417;
              }

              else
              {
                CMYK64_DAplusDAM(v99, v95, *(v513 + 16 * v419), *(v513 + 16 * v419 + 8), ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, (v419 | (v419 << 8)) ^ 0xFFFF);
              }
            }

            if (BYTE1(v419))
            {
              if (BYTE1(v419) == 255)
              {
                v99[1].i16[0] = v413;
                v99[1].i16[1] = v414;
                v99[1].i16[2] = v415;
                v99[1].i16[3] = v416;
                v95[1] = v417;
              }

              else
              {
                CMYK64_DAplusDAM(v99 + 1, v95 + 1, *(v513 + 16 * BYTE1(v419)), *(v513 + 16 * BYTE1(v419) + 8), ((bswap32(v99[1].u16[2]) >> 16) << 32) | ((bswap32(v99[1].u16[3]) >> 16) << 48) | bswap32(v99[1].u16[1]) & 0xFFFF0000 | (bswap32(v99[1].u16[0]) >> 16), bswap32(v95[1]) >> 16, (BYTE1(v419) | (BYTE1(v419) << 8)) ^ 0xFFFF);
              }
            }

            if (BYTE2(v419))
            {
              if (BYTE2(v419) == 255)
              {
                v99[2].i16[0] = v413;
                v99[2].i16[1] = v414;
                v99[2].i16[2] = v415;
                v99[2].i16[3] = v416;
                v95[2] = v417;
              }

              else
              {
                CMYK64_DAplusDAM(v99 + 2, v95 + 2, *(v513 + 16 * BYTE2(v419)), *(v513 + 16 * BYTE2(v419) + 8), ((bswap32(v99[2].u16[2]) >> 16) << 32) | ((bswap32(v99[2].u16[3]) >> 16) << 48) | bswap32(v99[2].u16[1]) & 0xFFFF0000 | (bswap32(v99[2].u16[0]) >> 16), bswap32(v95[2]) >> 16, (BYTE2(v419) | (BYTE2(v419) << 8)) ^ 0xFFFF);
              }
            }

            v421 = HIBYTE(v419);
            if (HIBYTE(v419) == 255)
            {
              v99[3].i16[0] = v413;
              v99[3].i16[1] = v414;
              v99[3].i16[2] = v415;
              v99[3].i16[3] = v416;
              v95[3] = v417;
            }

            else if (v421)
            {
              CMYK64_DAplusDAM(v99 + 3, v95 + 3, *(v513 + 16 * v421), *(v513 + 16 * v421 + 8), ((bswap32(v99[3].u16[2]) >> 16) << 32) | ((bswap32(v99[3].u16[3]) >> 16) << 48) | bswap32(v99[3].u16[1]) & 0xFFFF0000 | (bswap32(v99[3].u16[0]) >> 16), bswap32(v95[3]) >> 16, (v421 | (v421 << 8)) ^ 0xFFFF);
            }

LABEL_508:
            while (1)
            {
              v420 = v418;
              v99 += 4;
              v95 += 4;
              --v418;
              v101 += 4;
              if (v420 < 2)
              {
                break;
              }

              v419 = *v101;
              if (*v101)
              {
                goto LABEL_506;
              }
            }

            if (!v511)
            {
              break;
            }

            v511 = 0;
            v419 = *v101 & v499;
          }

          v101 += v504;
          v99 += v497;
          v95 += v491;
          v14 = v508 - 1;
        }

        while (v508 != 1);
      }

      else
      {
        v376 = v218 + v509;
        v377 = -1 << (8 * v218);
        if ((v101 & 3) != 0)
        {
          v378 = v101 & 0xFC;
        }

        else
        {
          v378 = v101;
        }

        if ((v101 & 3) != 0)
        {
          v379 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v377 = -1;
          v379 = v101;
        }

        if ((v101 & 3) != 0)
        {
          v380 = &v99[-(v101 & 3)];
        }

        else
        {
          v380 = v99;
        }

        if ((v101 & 3) == 0)
        {
          v376 = v509;
        }

        if (((v376 + v378) & 3) != 0)
        {
          v381 = 4 - ((v376 + v378) & 3);
          v218 += v381;
          v382 = 0xFFFFFFFF >> (8 * v381);
          if (v376 >= 4)
          {
            v383 = v382;
          }

          else
          {
            v383 = 0;
          }

          if (v376 >= 4)
          {
            v382 = -1;
          }

          v377 &= v382;
        }

        else
        {
          v383 = 0;
        }

        v461 = v376 >> 2;
        v462 = bswap32(v496);
        v463 = v502 - v218;
        v464 = bswap32(HIDWORD(v496)) >> 16;
        v465 = __rev16(HIWORD(v496));
        v466.i64[0] = 0x100000001;
        v466.i64[1] = 0x100000001;
        v467 = v506 - v218;
        do
        {
          v468 = *v379 & v377;
          v469 = v461;
          v470 = v383;
          if (!v468)
          {
            goto LABEL_557;
          }

LABEL_555:
          if (v468 == -1)
          {
            v380->i16[0] = HIWORD(v462);
            v380->i16[1] = v462;
            v380->i16[2] = v464;
            v380->i16[3] = v465;
            v380[1].i16[0] = HIWORD(v462);
            v380[1].i16[1] = v462;
            v380[1].i16[2] = v464;
            v380[1].i16[3] = v465;
            v380[2].i16[0] = HIWORD(v462);
            v380[2].i16[1] = v462;
            v380[2].i16[2] = v464;
            v380[2].i16[3] = v465;
LABEL_575:
            v380[3].i16[0] = HIWORD(v462);
            v380[3].i16[1] = v462;
            v380[3].i16[2] = v464;
            v380[3].i16[3] = v465;
            goto LABEL_557;
          }

          while (1)
          {
            if (v468)
            {
              if (v468 == 255)
              {
                v380->i16[0] = HIWORD(v462);
                v380->i16[1] = v462;
                v380->i16[2] = v464;
                v380->i16[3] = v465;
              }

              else
              {
                v472 = *(v90 + 16 * v468);
                v473.i32[0] = bswap32(v380->u16[1] | (v380->u16[0] << 16));
                v473.i32[1] = HIWORD(v473.i32[0]);
                v473.i64[1] = __PAIR64__(bswap32(v380->u16[3]) >> 16, bswap32(v380->u16[2]) >> 16);
                v474 = vmull_u16(vmovn_s32(v473), vdup_n_s16(~(v468 | (v468 << 8))));
                v475.i32[0] = v472;
                v475.i32[1] = WORD1(v472);
                *v380 = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v475, vshlq_u64(vdupq_n_s64(v472), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v474, v474, 0x10uLL), v466), 0x10uLL)));
              }
            }

            if (BYTE1(v468))
            {
              if (BYTE1(v468) == 255)
              {
                v380[1].i16[0] = HIWORD(v462);
                v380[1].i16[1] = v462;
                v380[1].i16[2] = v464;
                v380[1].i16[3] = v465;
              }

              else
              {
                v476 = *(v90 + 16 * BYTE1(v468));
                v477.i32[0] = bswap32(v380[1].u16[1] | (v380[1].u16[0] << 16));
                v477.i32[1] = HIWORD(v477.i32[0]);
                v477.i64[1] = __PAIR64__(bswap32(v380[1].u16[3]) >> 16, bswap32(v380[1].u16[2]) >> 16);
                v478 = vmull_u16(vmovn_s32(v477), vdup_n_s16(~(BYTE1(v468) | (BYTE1(v468) << 8))));
                v479.i32[0] = v476;
                v479.i32[1] = WORD1(v476);
                v380[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v479, vshlq_u64(vdupq_n_s64(v476), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v478, v478, 0x10uLL), v466), 0x10uLL)));
              }
            }

            if (BYTE2(v468))
            {
              if (BYTE2(v468) == 255)
              {
                v380[2].i16[0] = HIWORD(v462);
                v380[2].i16[1] = v462;
                v380[2].i16[2] = v464;
                v380[2].i16[3] = v465;
              }

              else
              {
                v480 = *(v90 + 16 * BYTE2(v468));
                v481.i32[0] = bswap32(v380[2].u16[1] | (v380[2].u16[0] << 16));
                v481.i32[1] = HIWORD(v481.i32[0]);
                v481.i64[1] = __PAIR64__(bswap32(v380[2].u16[3]) >> 16, bswap32(v380[2].u16[2]) >> 16);
                v482 = vmull_u16(vmovn_s32(v481), vdup_n_s16(~(BYTE2(v468) | (BYTE2(v468) << 8))));
                v483.i32[0] = v480;
                v483.i32[1] = WORD1(v480);
                v380[2] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v483, vshlq_u64(vdupq_n_s64(v480), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v482, v482, 0x10uLL), v466), 0x10uLL)));
              }
            }

            v484 = HIBYTE(v468);
            if (v484 == 255)
            {
              goto LABEL_575;
            }

            if (v484)
            {
              v485 = v484 | (v484 << 8);
              v486 = *(v90 + 16 * v484);
              v487 = bswap32(v380[3].u16[1] | (v380[3].u16[0] << 16));
              v488.i32[0] = v487;
              v488.i32[1] = HIWORD(v487);
              v488.i64[1] = __PAIR64__(bswap32(v380[3].u16[3]) >> 16, bswap32(v380[3].u16[2]) >> 16);
              v489 = vmulq_s32(v488, vdupq_n_s32(v485 ^ 0xFFFFu));
              v490.i32[0] = v486;
              v490.i32[1] = WORD1(v486);
              v380[3] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v490, vshlq_u64(vdupq_n_s64(v486), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v489, v489, 0x10uLL), v466), 0x10uLL)));
            }

LABEL_557:
            while (1)
            {
              v471 = v469;
              v380 += 4;
              --v469;
              ++v379;
              if (v471 < 2)
              {
                break;
              }

              v468 = *v379;
              if (*v379)
              {
                goto LABEL_555;
              }
            }

            if (!v470)
            {
              break;
            }

            v470 = 0;
            v468 = *v379 & v383;
          }

          v379 = (v379 + v463);
          v380 += v467;
          --v14;
        }

        while (v14);
      }

      return;
    case 2:
      v180 = v101 & 3;
      if (v3)
      {
        v181 = v180 + v509;
        v182 = &v99[-(v101 & 3)];
        v183 = &v95[-(v101 & 3)];
        if ((v101 & 3) != 0)
        {
          v184 = v101 & 0xFC;
        }

        else
        {
          v184 = v101;
        }

        if ((v101 & 3) != 0)
        {
          v185 = -1 << (8 * v180);
        }

        else
        {
          v185 = -1;
        }

        if ((v101 & 3) != 0)
        {
          v101 &= 0xFFFFFFFFFFFFFFFCLL;
          v95 = v183;
          v99 = v182;
        }

        else
        {
          v181 = v509;
        }

        if (((v181 + v184) & 3) != 0)
        {
          v186 = 4 - ((v181 + v184) & 3);
          v180 += v186;
          v187 = 0xFFFFFFFF >> (8 * v186);
          if (v181 >= 4)
          {
            v188 = 0xFFFFFFFF >> (8 * v186);
          }

          else
          {
            v188 = 0;
          }

          if (v181 >= 4)
          {
            v187 = -1;
          }

          v510 = v187 & v185;
        }

        else
        {
          v510 = v185;
          v188 = 0;
        }

        v503 = v502 - v180;
        v507 = v506 - v180;
        v500 = v181 >> 2;
        v495 = v97 - v180;
        while (1)
        {
          v395 = *v101 & v510;
          v396 = v500;
          v397 = v188;
          if (!v395)
          {
            goto LABEL_487;
          }

LABEL_485:
          if (v395 == -1)
          {
            break;
          }

          while (1)
          {
            if (v395)
            {
              v406 = v513 + 16 * v395;
              CMYK64_DAplusDAM(v99, v95, *v406, *(v406 + 8), ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, *(v406 + 8) ^ 0xFFFF);
            }

            if ((v395 & 0xFF00) != 0)
            {
              v407 = v513 + 16 * BYTE1(v395);
              CMYK64_DAplusDAM(v99 + 1, v95 + 1, *v407, *(v407 + 8), ((bswap32(v99[1].u16[2]) >> 16) << 32) | ((bswap32(v99[1].u16[3]) >> 16) << 48) | bswap32(v99[1].u16[1]) & 0xFFFF0000 | (bswap32(v99[1].u16[0]) >> 16), bswap32(v95[1]) >> 16, *(v407 + 8) ^ 0xFFFF);
            }

            if ((v395 & 0xFF0000) != 0)
            {
              v408 = v513 + 16 * BYTE2(v395);
              CMYK64_DAplusDAM(v99 + 2, v95 + 2, *v408, *(v408 + 8), ((bswap32(v99[2].u16[2]) >> 16) << 32) | ((bswap32(v99[2].u16[3]) >> 16) << 48) | bswap32(v99[2].u16[1]) & 0xFFFF0000 | (bswap32(v99[2].u16[0]) >> 16), bswap32(v95[2]) >> 16, *(v408 + 8) ^ 0xFFFF);
            }

            if (HIBYTE(v395))
            {
              v409 = v513 + 16 * HIBYTE(v395);
              v403 = *v409;
              v404 = *(v409 + 8);
              v398 = v99 + 3;
              v399 = v95 + 3;
              v400 = bswap32(v95[3]) >> 16;
              v401 = ((bswap32(v99[3].u16[2]) >> 16) << 32) | ((bswap32(v99[3].u16[3]) >> 16) << 48) | bswap32(v99[3].u16[1]) & 0xFFFF0000 | (bswap32(v99[3].u16[0]) >> 16);
              v402 = v404 ^ 0xFFFF;
              goto LABEL_500;
            }

LABEL_487:
            while (1)
            {
              v405 = v396;
              v99 += 4;
              v95 += 4;
              --v396;
              v101 += 4;
              if (v405 < 2)
              {
                break;
              }

              v395 = *v101;
              if (*v101)
              {
                goto LABEL_485;
              }
            }

            if (!v397)
            {
              break;
            }

            v397 = 0;
            v395 = *v101 & v188;
          }

          v101 += v503;
          v99 += v507;
          v95 += v495;
          if (!--v14)
          {
            return;
          }
        }

        CMYK64_DAplusDAM(v99, v95, v496, v91, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, ~v91);
        CMYK64_DAplusDAM(v99 + 1, v95 + 1, v496, v91, ((bswap32(v99[1].u16[2]) >> 16) << 32) | ((bswap32(v99[1].u16[3]) >> 16) << 48) | bswap32(v99[1].u16[1]) & 0xFFFF0000 | (bswap32(v99[1].u16[0]) >> 16), bswap32(v95[1]) >> 16, ~v91);
        CMYK64_DAplusDAM(v99 + 2, v95 + 2, v496, v91, ((bswap32(v99[2].u16[2]) >> 16) << 32) | ((bswap32(v99[2].u16[3]) >> 16) << 48) | bswap32(v99[2].u16[1]) & 0xFFFF0000 | (bswap32(v99[2].u16[0]) >> 16), bswap32(v95[2]) >> 16, ~v91);
        v398 = v99 + 3;
        v399 = v95 + 3;
        v400 = bswap32(v95[3]) >> 16;
        v401 = ((bswap32(v99[3].u16[2]) >> 16) << 32) | ((bswap32(v99[3].u16[3]) >> 16) << 48) | bswap32(v99[3].u16[1]) & 0xFFFF0000 | (bswap32(v99[3].u16[0]) >> 16);
        v402 = ~v91;
        v403 = v496;
        v404 = v91;
LABEL_500:
        CMYK64_DAplusDAM(v398, v399, v403, v404, v401, v400, v402);
        goto LABEL_487;
      }

      v348 = -1 << (8 * v180);
      if ((v101 & 3) != 0)
      {
        v349 = v101 & 0xFC;
      }

      else
      {
        v349 = v101;
      }

      if ((v101 & 3) != 0)
      {
        v350 = (v101 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v348 = -1;
        v350 = v101;
      }

      if ((v101 & 3) != 0)
      {
        v351 = &v99[-(v101 & 3)];
      }

      else
      {
        v351 = v99;
      }

      if ((v101 & 3) != 0)
      {
        v352 = v180 + v509;
      }

      else
      {
        v352 = v509;
      }

      if (((v352 + v349) & 3) != 0)
      {
        v353 = 4 - ((v352 + v349) & 3);
        v180 += v353;
        v354 = 0xFFFFFFFF >> (8 * v353);
        if (v352 >= 4)
        {
          v355 = -1;
        }

        else
        {
          v355 = 0xFFFFFFFF >> (8 * v353);
        }

        v348 &= v355;
        if (v352 < 4)
        {
          v354 = 0;
        }
      }

      else
      {
        v354 = 0;
      }

      v422 = v502 - v180;
      v423 = v506 - v180;
      v424 = v352 >> 2;
      v425 = vdupq_n_s32(~v91);
      v426.i32[0] = v496;
      v426.i32[1] = WORD1(v496);
      v427 = vmovn_hight_s64(v426, vshlq_u64(vdupq_n_s64(v496), xmmword_18439CB80));
      v428.i64[0] = 0x100000001;
      v428.i64[1] = 0x100000001;
      do
      {
        v429 = *v350 & v348;
        v430 = v354;
        v431 = v424;
        if (!v429)
        {
          goto LABEL_536;
        }

LABEL_534:
        if (v429 == -1)
        {
          v432 = bswap32(v351->u16[1] | (v351->u16[0] << 16));
          v433.i32[0] = v432;
          v433.i32[1] = HIWORD(v432);
          v433.i32[2] = bswap32(v351->u16[2]) >> 16;
          v433.i32[3] = bswap32(v351->u16[3]) >> 16;
          v434 = vmulq_s32(v433, v425);
          v435 = vsraq_n_u32(v427, vaddq_s32(vsraq_n_u32(v434, v434, 0x10uLL), v428), 0x10uLL);
          v436 = bswap32(v351[1].u16[1] | (v351[1].u16[0] << 16));
          v434.i32[0] = v436;
          v434.i32[1] = HIWORD(v436);
          v434.i32[2] = bswap32(v351[1].u16[2]) >> 16;
          v434.i32[3] = bswap32(v351[1].u16[3]) >> 16;
          v437 = vmulq_s32(v434, v425);
          *v351 = vrev16_s8(vmovn_s32(v435));
          v351[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(v427, vaddq_s32(vsraq_n_u32(v437, v437, 0x10uLL), v428), 0x10uLL)));
          v438 = bswap32(v351[2].u16[1] | (v351[2].u16[0] << 16));
          v437.i32[0] = v438;
          v437.i32[1] = HIWORD(v438);
          v437.i32[2] = bswap32(v351[2].u16[2]) >> 16;
          v437.i32[3] = bswap32(v351[2].u16[3]) >> 16;
          v439 = vmulq_s32(v437, v425);
          v440 = bswap32(v351[3].u16[1] | (v351[3].u16[0] << 16));
          v435.i32[0] = v440;
          v435.i32[1] = HIWORD(v440);
          v435.i64[1] = __PAIR64__(bswap32(v351[3].u16[3]) >> 16, bswap32(v351[3].u16[2]) >> 16);
          v351[2] = vrev16_s8(vmovn_s32(vsraq_n_u32(v427, vaddq_s32(vsraq_n_u32(v439, v439, 0x10uLL), v428), 0x10uLL)));
          v441 = vmulq_s32(v435, v425);
          v442 = vaddq_s32(vsraq_n_u32(v441, v441, 0x10uLL), v428);
          v443 = v427;
LABEL_549:
          v351[3] = vrev16_s8(vmovn_s32(vsraq_n_u32(v443, v442, 0x10uLL)));
          goto LABEL_536;
        }

        while (1)
        {
          if (v429)
          {
            v445 = v90 + 16 * v429;
            v446.i32[0] = bswap32(v351->u16[1] | (v351->u16[0] << 16));
            v446.i32[1] = HIWORD(v446.i32[0]);
            v446.i64[1] = __PAIR64__(bswap32(v351->u16[3]) >> 16, bswap32(v351->u16[2]) >> 16);
            v447 = vmull_u16(vmovn_s32(v446), vdup_n_s16(~*(v445 + 8)));
            v448.i32[0] = *v445;
            v448.i32[1] = v448.u16[1];
            *v351 = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v448, vshlq_u64(vdupq_n_s64(*v445), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v447, v447, 0x10uLL), v428), 0x10uLL)));
          }

          if ((v429 & 0xFF00) != 0)
          {
            v449 = v90 + 16 * BYTE1(v429);
            v450.i32[0] = bswap32(v351[1].u16[1] | (v351[1].u16[0] << 16));
            v450.i32[1] = HIWORD(v450.i32[0]);
            v450.i64[1] = __PAIR64__(bswap32(v351[1].u16[3]) >> 16, bswap32(v351[1].u16[2]) >> 16);
            v451 = vmull_u16(vmovn_s32(v450), vdup_n_s16(~*(v449 + 8)));
            v452.i32[0] = *v449;
            v452.i32[1] = v452.u16[1];
            v351[1] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v452, vshlq_u64(vdupq_n_s64(*v449), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v451, v451, 0x10uLL), v428), 0x10uLL)));
          }

          if ((v429 & 0xFF0000) != 0)
          {
            v453 = v90 + 16 * BYTE2(v429);
            v454.i32[0] = bswap32(v351[2].u16[1] | (v351[2].u16[0] << 16));
            v454.i32[1] = HIWORD(v454.i32[0]);
            v454.i64[1] = __PAIR64__(bswap32(v351[2].u16[3]) >> 16, bswap32(v351[2].u16[2]) >> 16);
            v455 = vmull_u16(vmovn_s32(v454), vdup_n_s16(~*(v453 + 8)));
            v456.i32[0] = *v453;
            v456.i32[1] = v456.u16[1];
            v351[2] = vrev16_s8(vmovn_s32(vsraq_n_u32(vmovn_hight_s64(v456, vshlq_u64(vdupq_n_s64(*v453), xmmword_18439CB80)), vaddq_s32(vsraq_n_u32(v455, v455, 0x10uLL), v428), 0x10uLL)));
          }

          v457 = HIBYTE(v429);
          if (v457)
          {
            v458 = v90 + 16 * v457;
            v459.i32[0] = bswap32(v351[3].u16[1] | (v351[3].u16[0] << 16));
            v459.i32[1] = HIWORD(v459.i32[0]);
            v459.i64[1] = __PAIR64__(bswap32(v351[3].u16[3]) >> 16, bswap32(v351[3].u16[2]) >> 16);
            v460 = vmull_u16(vmovn_s32(v459), vdup_n_s16(~*(v458 + 8)));
            v442 = vaddq_s32(vsraq_n_u32(v460, v460, 0x10uLL), v428);
            v460.i32[0] = *v458;
            v460.i32[1] = v460.u16[1];
            v443 = vmovn_hight_s64(*v460.i8, vshlq_u64(vdupq_n_s64(*v458), xmmword_18439CB80));
            goto LABEL_549;
          }

LABEL_536:
          while (1)
          {
            v444 = v431;
            v351 += 4;
            --v431;
            ++v350;
            if (v444 < 2)
            {
              break;
            }

            v429 = *v350;
            if (*v350)
            {
              goto LABEL_534;
            }
          }

          if (!v430)
          {
            break;
          }

          v430 = 0;
          v429 = *v350 & v354;
        }

        v350 = (v350 + v422);
        v351 += v423;
        --v14;
      }

      while (v14);
      return;
    case 3:
      v200 = 2 * v96;
      do
      {
        v201 = v509;
        do
        {
          v202 = *v101;
          if (*v101)
          {
            if (v202 == 255)
            {
              v203 = (v90 + 16 * *v95);
              v204 = *v203;
              LODWORD(v203) = *(v203 + 4);
              v205 = HIDWORD(v204);
              v206 = HIWORD(v204);
              LODWORD(v204) = bswap32(v204);
              v99->i16[0] = WORD1(v204);
              v99->i16[1] = v204;
              v99->i16[2] = bswap32(v205) >> 16;
              v99->i16[3] = __rev16(v206);
              *v95 = bswap32(v203) >> 16;
            }

            else
            {
              v207 = v202 | (v202 << 8);
              v208 = bswap32(*v95) >> 16;
              v209 = v90 + 16 * ((v208 * v207 + ((v208 * v207) >> 16) + 1) >> 24);
              CMYK64_DAplusDAM(v99, v95, *v209, *(v209 + 8), ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v208, v207 ^ 0xFFFF);
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v200);
          --v201;
        }

        while (v201);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 4:
      v141 = 2 * v96;
      do
      {
        v142 = v509;
        do
        {
          v143 = *v101;
          if (*v101)
          {
            if (v143 == 255)
            {
              v144 = (v90 + 16 * ~*v95);
              v145 = *v144;
              LODWORD(v144) = *(v144 + 4);
              v146 = HIDWORD(v145);
              v147 = HIWORD(v145);
              LODWORD(v145) = bswap32(v145);
              v99->i16[0] = WORD1(v145);
              v99->i16[1] = v145;
              v99->i16[2] = bswap32(v146) >> 16;
              v99->i16[3] = __rev16(v147);
              *v95 = bswap32(v144) >> 16;
            }

            else
            {
              v148 = v143 | (v143 << 8);
              v149 = bswap32(*v95) >> 16;
              v150 = v90 + 16 * (((v149 ^ 0xFFFF) * v148 + (((v149 ^ 0xFFFF) * v148) >> 16) + 1) >> 24);
              CMYK64_DAplusDAM(v99, v95, *v150, *(v150 + 8), ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v149, v148 ^ 0xFFFF);
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v141);
          --v142;
        }

        while (v142);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 5:
      v249 = 2 * v96;
      do
      {
        v250 = v509;
        do
        {
          if (*v101)
          {
            v251 = v90 + 16 * *v101;
            v252 = bswap32(*v95) >> 16;
            CMYK64_DAMplusDAM(v99, v95, *v251, *(v251 + 8), v252, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v252, *(v251 + 8) ^ 0xFFFF);
          }

          ++v101;
          ++v99;
          v95 = (v95 + v249);
          --v250;
        }

        while (v250);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 6:
      v275 = 2 * v96;
      do
      {
        v276 = v509;
        do
        {
          if (*v101)
          {
            v277 = bswap32(*v95);
            if (HIWORD(v277) != 0xFFFF)
            {
              v278 = v90 + 16 * *v101;
              if (~HIWORD(v277) == 0xFFFF)
              {
                v279 = *v278;
                v280 = *(v278 + 8);
                v281 = HIDWORD(v279);
                v282 = HIWORD(v279);
                LODWORD(v279) = bswap32(v279);
                v99->i16[0] = WORD1(v279);
                v99->i16[1] = v279;
                v99->i16[2] = bswap32(v281) >> 16;
                v99->i16[3] = __rev16(v282);
                *v95 = bswap32(v280) >> 16;
              }

              else
              {
                CMYK64_DAplusDAM(v99, v95, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), HIWORD(v277), *v278, *(v278 + 8), ~HIWORD(v277));
              }
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v275);
          --v276;
        }

        while (v276);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 7:
      if (v3)
      {
        v210 = 2 * v96;
        do
        {
          v211 = v509;
          do
          {
            v212 = *v101;
            if (*v101)
            {
              v213 = bswap32(*v95) >> 16;
              v214 = ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16);
              if (v212 == 255)
              {
                v215 = v99;
                v216 = v95;
                v217 = v91;
              }

              else
              {
                v217 = (~(v212 | (v212 << 8)) + (((v212 | (v212 << 8)) * v91 + (((v212 | (v212 << 8)) * v91) >> 16) + 1) >> 16));
                v215 = v99;
                v216 = v95;
              }

              CMYK64_DAM(v215, v216, v214, v213, v217);
            }

            ++v101;
            ++v99;
            v95 = (v95 + v210);
            --v211;
          }

          while (v211);
          v101 += v502;
          v99 += v506;
          v95 += v98;
          --v14;
        }

        while (v14);
      }

      else
      {
        v356 = vdupq_n_s32(v91 ^ 0xFFFF);
        v357.i64[0] = 0x100000001;
        v357.i64[1] = 0x100000001;
        do
        {
          v358 = v509;
          do
          {
            v359 = *v101;
            if (*v101)
            {
              if (v359 == 255)
              {
                v360 = bswap32(v99->u16[1] | (v99->u16[0] << 16));
                v361 = v360;
                v362 = 0;
                v365.i32[1] = vshr_n_u32(vdup_n_s32(v360), 0x10uLL).i32[1];
                v365.i32[2] = bswap32(v99->u16[2]) >> 16;
                v365.i32[3] = bswap32(v99->u16[3]) >> 16;
                v363 = vmulq_s32(v365, v356);
                v364 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(v363, v363, 0x10uLL), v357), 0x10uLL);
                v365.i32[0] = v360;
              }

              else
              {
                v366 = bswap32(v99->u16[1] | (v99->u16[0] << 16));
                v367 = v366;
                v368 = 0;
                v365.i32[1] = vshr_n_u32(vdup_n_s32(v366), 0x10uLL).i32[1];
                v365.i64[1] = __PAIR64__(bswap32(v99->u16[3]) >> 16, bswap32(v99->u16[2]) >> 16);
                v369 = vmulq_s32(v365, vmovl_u16(vdup_n_s16((v359 | (v359 << 8)) - (((v359 | (v359 << 8)) * v91 + (((v359 | (v359 << 8)) * v91) >> 16) + 1) >> 16))));
                v364 = vshrq_n_u32(vaddq_s32(vsraq_n_u32(v369, v369, 0x10uLL), v357), 0x10uLL);
                v365.i32[0] = v366;
              }

              *v99 = vrev16_s8(vmovn_s32(vsubq_s32(v365, v364)));
            }

            ++v101;
            ++v99;
            --v358;
          }

          while (v358);
          v101 += v502;
          v99 += v506;
          --v14;
        }

        while (v14);
      }

      return;
    case 8:
      v298 = 257 * v91;
      if (v3)
      {
        v299 = ~v91;
        v300 = 2 * v96;
        do
        {
          v301 = v509;
          do
          {
            v302 = *v101;
            if (*v101)
            {
              v303 = bswap32(*v95) >> 16;
              if (v302 == 255)
              {
                v304 = ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16);
                v305 = v299;
              }

              else
              {
                v305 = ~(v298 * v302 + ((v298 * v302) >> 16) + 1) >> 16;
                v304 = ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16);
              }

              CMYK64_DAM(v99, v95, v304, v303, v305);
            }

            ++v101;
            ++v99;
            v95 = (v95 + v300);
            --v301;
          }

          while (v301);
          v101 += v502;
          v99 += v506;
          v95 += v98;
          --v14;
        }

        while (v14);
      }

      else
      {
        v384 = vdupq_n_s32(v91);
        v385.i64[0] = 0x100000001;
        v385.i64[1] = 0x100000001;
        do
        {
          v386 = v509;
          do
          {
            v387 = *v101;
            if (*v101)
            {
              if (v387 == 255)
              {
                v388 = bswap32(v99->u16[1] | (v99->u16[0] << 16));
                v389.i32[0] = v388;
                v389.i32[1] = vshr_n_u32(vdup_n_s32(v388), 0x10uLL).i32[1];
                v389.i32[2] = bswap32(v99->u16[2]) >> 16;
                v389.i32[3] = bswap32(v99->u16[3]) >> 16;
                v390 = vmulq_s32(v389, v384);
                v389.i32[0] = v388;
                v391 = vsubq_s32(v389, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v390, v390, 0x10uLL), v385), 0x10uLL));
              }

              else
              {
                v392 = bswap32(v99->u16[1] | (v99->u16[0] << 16));
                v393.i32[0] = v392;
                v393.i32[1] = vshr_n_u32(vdup_n_s32(v392), 0x10uLL).i32[1];
                v393.i64[1] = __PAIR64__(bswap32(v99->u16[3]) >> 16, bswap32(v99->u16[2]) >> 16);
                v394 = vmulq_s32(v393, vdupq_n_s32((v298 * v387 + ((v298 * v387) >> 16) + 1) >> 16));
                v393.i32[0] = v392;
                v391 = vsubq_s32(v393, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v394, v394, 0x10uLL), v385), 0x10uLL));
              }

              *v99 = vrev16_s8(vmovn_s32(v391));
            }

            ++v101;
            ++v99;
            --v386;
          }

          while (v386);
          v101 += v502;
          v99 += v506;
          --v14;
        }

        while (v14);
      }

      return;
    case 9:
      v154 = 2 * v96;
      do
      {
        v155 = v509;
        do
        {
          if (*v101)
          {
            v156 = bswap32(*v95) >> 16;
            v157 = v90 + 16 * *v101;
            CMYK64_DAMplusDAM(v99, v95, *v157, *(v157 + 8), v156 ^ 0xFFFF, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v156, (*(v157 + 8) + ~(*v101 | (*v101 << 8))));
          }

          ++v101;
          ++v99;
          v95 = (v95 + v154);
          --v155;
        }

        while (v155);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 10:
      v294 = 2 * v96;
      do
      {
        v295 = v509;
        do
        {
          if (*v101)
          {
            v296 = bswap32(*v95) >> 16;
            v297 = v90 + 16 * *v101;
            CMYK64_DAMplusDAM(v99, v95, *v297, *(v297 + 8), v296 ^ 0xFFFF, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v296, *(v297 + 8) ^ 0xFFFF);
          }

          ++v101;
          ++v99;
          v95 = (v95 + v294);
          --v295;
        }

        while (v295);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        --v14;
      }

      while (v14);
      return;
    case 11:
      if (v3)
      {
        v138 = 2 * v96;
        do
        {
          v139 = v509;
          do
          {
            if (*v101)
            {
              CMYK64_DAplusdDA(v99, v95, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, *(v90 + 16 * *v101), *(v90 + 16 * *v101 + 8));
            }

            ++v101;
            ++v99;
            v95 = (v95 + v138);
            --v139;
          }

          while (v139);
          v101 += v502;
          v99 += v506;
          v95 += v98;
          --v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v140 = v509;
          do
          {
            if (*v101)
            {
              CMYK64_DplusdDA(v99, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), *(v90 + 16 * *v101), *(v90 + 16 * *v101 + 8));
            }

            ++v101;
            ++v99;
            --v140;
          }

          while (v140);
          v101 += v502;
          v99 += v506;
          --v14;
        }

        while (v14);
      }

      return;
    case 12:
      if (v3)
      {
        v151 = 2 * v96;
        do
        {
          v152 = v509;
          do
          {
            if (*v101)
            {
              CMYK64_DApluslDA(v99, v95, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), bswap32(*v95) >> 16, *(v90 + 16 * *v101), *(v90 + 16 * *v101 + 8));
            }

            ++v101;
            ++v99;
            v95 = (v95 + v151);
            --v152;
          }

          while (v152);
          v101 += v502;
          v99 += v506;
          v95 += v98;
          --v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v153 = v509;
          do
          {
            if (*v101)
            {
              CMYK64_DpluslD(v99, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), *(v90 + 16 * *v101));
            }

            ++v101;
            ++v99;
            --v153;
          }

          while (v153);
          v101 += v502;
          v99 += v506;
          --v14;
        }

        while (v14);
      }

      return;
    case 13:
      v264 = 2 * v96;
      while (1)
      {
        v265 = v509;
        do
        {
          if (*v101)
          {
            v266 = v90 + 16 * *v101;
            LODWORD(v267) = *(v266 + 8);
            if (*(v266 + 8))
            {
              v268 = *v266;
              if (v3)
              {
                if (*v95)
                {
                  v269 = __rev16(*v95);
                  goto LABEL_301;
                }

LABEL_303:
                v273 = bswap32(v268);
                v99->i16[0] = HIWORD(v273);
                v99->i16[1] = v273;
                v99->i16[2] = bswap32(HIDWORD(v268)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v268));
                v270 = v95;
              }

              else
              {
                v269 = 0xFFFF;
LABEL_301:
                v270 = v99 + 3;
                v271 = PDAmultiplyPDA_11872(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v269, v268, v267);
                v268 = v271;
                if (v3)
                {
                  LODWORD(v267) = v272;
                  goto LABEL_303;
                }

                v267 = HIWORD(v271);
                v274 = bswap32(v271);
                v99->i16[0] = HIWORD(v274);
                v99->i16[1] = v274;
                v99->i16[2] = bswap32(HIDWORD(v271)) >> 16;
              }

              *v270 = bswap32(v267) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v264);
          --v265;
        }

        while (v265);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 14:
      v127 = 2 * v96;
      while (1)
      {
        v128 = v509;
        do
        {
          if (*v101)
          {
            v129 = v90 + 16 * *v101;
            LODWORD(v130) = *(v129 + 8);
            if (*(v129 + 8))
            {
              v131 = *v129;
              if (v3)
              {
                if (*v95)
                {
                  v132 = __rev16(*v95);
                  goto LABEL_84;
                }

LABEL_86:
                v136 = bswap32(v131);
                v99->i16[0] = HIWORD(v136);
                v99->i16[1] = v136;
                v99->i16[2] = bswap32(HIDWORD(v131)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v131));
                v133 = v95;
              }

              else
              {
                v132 = 0xFFFF;
LABEL_84:
                v133 = v99 + 3;
                v134 = PDAscreenPDA_11873(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v132, v131, v130);
                v131 = v134;
                if (v3)
                {
                  LODWORD(v130) = v135;
                  goto LABEL_86;
                }

                v130 = HIWORD(v134);
                v137 = bswap32(v134);
                v99->i16[0] = HIWORD(v137);
                v99->i16[1] = v137;
                v99->i16[2] = bswap32(HIDWORD(v134)) >> 16;
              }

              *v133 = bswap32(v130) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v127);
          --v128;
        }

        while (v128);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 15:
      v189 = 2 * v96;
      while (1)
      {
        v190 = v509;
        do
        {
          if (*v101)
          {
            v191 = v90 + 16 * *v101;
            LODWORD(v192) = *(v191 + 8);
            if (*(v191 + 8))
            {
              v193 = *v191;
              if (v3)
              {
                if (*v95)
                {
                  v194 = __rev16(*v95);
                  goto LABEL_193;
                }

LABEL_195:
                v198 = bswap32(v193);
                v99->i16[0] = HIWORD(v198);
                v99->i16[1] = v198;
                v99->i16[2] = bswap32(HIDWORD(v193)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v193));
                v195 = v95;
              }

              else
              {
                v194 = 0xFFFF;
LABEL_193:
                v195 = v99 + 3;
                v196 = PDAoverlayPDA_11874(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v194, v193, v192);
                v193 = v196;
                if (v3)
                {
                  LODWORD(v192) = v197;
                  goto LABEL_195;
                }

                v192 = HIWORD(v196);
                v199 = bswap32(v196);
                v99->i16[0] = HIWORD(v199);
                v99->i16[1] = v199;
                v99->i16[2] = bswap32(HIDWORD(v196)) >> 16;
              }

              *v195 = bswap32(v192) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v189);
          --v190;
        }

        while (v190);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 16:
      v116 = 2 * v96;
      while (1)
      {
        v117 = v509;
        do
        {
          if (*v101)
          {
            v118 = v90 + 16 * *v101;
            LODWORD(v119) = *(v118 + 8);
            if (*(v118 + 8))
            {
              v120 = *v118;
              if (v3)
              {
                if (*v95)
                {
                  v121 = __rev16(*v95);
                  goto LABEL_68;
                }

LABEL_70:
                v125 = bswap32(v120);
                v99->i16[0] = HIWORD(v125);
                v99->i16[1] = v125;
                v99->i16[2] = bswap32(HIDWORD(v120)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v120));
                v122 = v95;
              }

              else
              {
                v121 = 0xFFFF;
LABEL_68:
                v122 = v99 + 3;
                v123 = PDAdarkenPDA_11876(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v121, v120, v119);
                v120 = v123;
                if (v3)
                {
                  LODWORD(v119) = v124;
                  goto LABEL_70;
                }

                v119 = HIWORD(v123);
                v126 = bswap32(v123);
                v99->i16[0] = HIWORD(v126);
                v99->i16[1] = v126;
                v99->i16[2] = bswap32(HIDWORD(v123)) >> 16;
              }

              *v122 = bswap32(v119) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v116);
          --v117;
        }

        while (v117);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 17:
      v227 = 2 * v96;
      while (1)
      {
        v228 = v509;
        do
        {
          if (*v101)
          {
            v229 = v90 + 16 * *v101;
            LODWORD(v230) = *(v229 + 8);
            if (*(v229 + 8))
            {
              v231 = *v229;
              if (v3)
              {
                if (*v95)
                {
                  v232 = __rev16(*v95);
                  goto LABEL_246;
                }

LABEL_248:
                v236 = bswap32(v231);
                v99->i16[0] = HIWORD(v236);
                v99->i16[1] = v236;
                v99->i16[2] = bswap32(HIDWORD(v231)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v231));
                v233 = v95;
              }

              else
              {
                v232 = 0xFFFF;
LABEL_246:
                v233 = v99 + 3;
                v234 = PDAlightenPDA_11875(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v232, v231, v230);
                v231 = v234;
                if (v3)
                {
                  LODWORD(v230) = v235;
                  goto LABEL_248;
                }

                v230 = HIWORD(v234);
                v237 = bswap32(v234);
                v99->i16[0] = HIWORD(v237);
                v99->i16[1] = v237;
                v99->i16[2] = bswap32(HIDWORD(v234)) >> 16;
              }

              *v233 = bswap32(v230) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v227);
          --v228;
        }

        while (v228);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 18:
      v283 = 2 * v96;
      while (1)
      {
        v284 = v509;
        do
        {
          if (*v101)
          {
            v285 = v90 + 16 * *v101;
            LODWORD(v286) = *(v285 + 8);
            if (*(v285 + 8))
            {
              v287 = *v285;
              if (v3)
              {
                if (*v95)
                {
                  v288 = __rev16(*v95);
                  goto LABEL_327;
                }

LABEL_329:
                v292 = bswap32(v287);
                v99->i16[0] = HIWORD(v292);
                v99->i16[1] = v292;
                v99->i16[2] = bswap32(HIDWORD(v287)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v287));
                v289 = v95;
              }

              else
              {
                v288 = 0xFFFF;
LABEL_327:
                v289 = v99 + 3;
                v290 = PDAcolordodgePDA_11877(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v288, v287, v286);
                v287 = v290;
                if (v3)
                {
                  LODWORD(v286) = v291;
                  goto LABEL_329;
                }

                v286 = HIWORD(v290);
                v293 = bswap32(v290);
                v99->i16[0] = HIWORD(v293);
                v99->i16[1] = v293;
                v99->i16[2] = bswap32(HIDWORD(v290)) >> 16;
              }

              *v289 = bswap32(v286) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v283);
          --v284;
        }

        while (v284);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 19:
      v317 = 2 * v96;
      while (1)
      {
        v318 = v509;
        do
        {
          if (*v101)
          {
            v319 = v90 + 16 * *v101;
            LODWORD(v320) = *(v319 + 8);
            if (*(v319 + 8))
            {
              v321 = *v319;
              if (v3)
              {
                if (*v95)
                {
                  v322 = __rev16(*v95);
                  goto LABEL_377;
                }

LABEL_379:
                v326 = bswap32(v321);
                v99->i16[0] = HIWORD(v326);
                v99->i16[1] = v326;
                v99->i16[2] = bswap32(HIDWORD(v321)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v321));
                v323 = v95;
              }

              else
              {
                v322 = 0xFFFF;
LABEL_377:
                v323 = v99 + 3;
                v324 = PDAcolorburnPDA_11878(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v322, v321, v320);
                v321 = v324;
                if (v3)
                {
                  LODWORD(v320) = v325;
                  goto LABEL_379;
                }

                v320 = HIWORD(v324);
                v327 = bswap32(v324);
                v99->i16[0] = HIWORD(v327);
                v99->i16[1] = v327;
                v99->i16[2] = bswap32(HIDWORD(v324)) >> 16;
              }

              *v323 = bswap32(v320) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v317);
          --v318;
        }

        while (v318);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 20:
      v238 = 2 * v96;
      while (1)
      {
        v239 = v509;
        do
        {
          if (*v101)
          {
            v240 = v90 + 16 * *v101;
            LODWORD(v241) = *(v240 + 8);
            if (*(v240 + 8))
            {
              v242 = *v240;
              if (v3)
              {
                if (*v95)
                {
                  v243 = __rev16(*v95);
                  goto LABEL_262;
                }

LABEL_264:
                v247 = bswap32(v242);
                v99->i16[0] = HIWORD(v247);
                v99->i16[1] = v247;
                v99->i16[2] = bswap32(HIDWORD(v242)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v242));
                v244 = v95;
              }

              else
              {
                v243 = 0xFFFF;
LABEL_262:
                v244 = v99 + 3;
                v245 = PDAsoftlightPDA_11880(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v243, v242, v241);
                v242 = v245;
                if (v3)
                {
                  LODWORD(v241) = v246;
                  goto LABEL_264;
                }

                v241 = HIWORD(v245);
                v248 = bswap32(v245);
                v99->i16[0] = HIWORD(v248);
                v99->i16[1] = v248;
                v99->i16[2] = bswap32(HIDWORD(v245)) >> 16;
              }

              *v244 = bswap32(v241) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v238);
          --v239;
        }

        while (v239);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 21:
      v253 = 2 * v96;
      while (1)
      {
        v254 = v509;
        do
        {
          if (*v101)
          {
            v255 = v90 + 16 * *v101;
            LODWORD(v256) = *(v255 + 8);
            if (*(v255 + 8))
            {
              v257 = *v255;
              if (v3)
              {
                if (*v95)
                {
                  v258 = __rev16(*v95);
                  goto LABEL_285;
                }

LABEL_287:
                v262 = bswap32(v257);
                v99->i16[0] = HIWORD(v262);
                v99->i16[1] = v262;
                v99->i16[2] = bswap32(HIDWORD(v257)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v257));
                v259 = v95;
              }

              else
              {
                v258 = 0xFFFF;
LABEL_285:
                v259 = v99 + 3;
                v260 = PDAhardlightPDA_11879(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v258, v257, v256);
                v257 = v260;
                if (v3)
                {
                  LODWORD(v256) = v261;
                  goto LABEL_287;
                }

                v256 = HIWORD(v260);
                v263 = bswap32(v260);
                v99->i16[0] = HIWORD(v263);
                v99->i16[1] = v263;
                v99->i16[2] = bswap32(HIDWORD(v260)) >> 16;
              }

              *v259 = bswap32(v256) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v253);
          --v254;
        }

        while (v254);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 22:
      v306 = 2 * v96;
      while (1)
      {
        v307 = v509;
        do
        {
          if (*v101)
          {
            v308 = v90 + 16 * *v101;
            LODWORD(v309) = *(v308 + 8);
            if (*(v308 + 8))
            {
              v310 = *v308;
              if (v3)
              {
                if (*v95)
                {
                  v311 = __rev16(*v95);
                  goto LABEL_361;
                }

LABEL_363:
                v315 = bswap32(v310);
                v99->i16[0] = HIWORD(v315);
                v99->i16[1] = v315;
                v99->i16[2] = bswap32(HIDWORD(v310)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v310));
                v312 = v95;
              }

              else
              {
                v311 = 0xFFFF;
LABEL_361:
                v312 = v99 + 3;
                v313 = PDAdifferencePDA_11881(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v311, v310, v309);
                v310 = v313;
                if (v3)
                {
                  LODWORD(v309) = v314;
                  goto LABEL_363;
                }

                v309 = HIWORD(v313);
                v316 = bswap32(v313);
                v99->i16[0] = HIWORD(v316);
                v99->i16[1] = v316;
                v99->i16[2] = bswap32(HIDWORD(v313)) >> 16;
              }

              *v312 = bswap32(v309) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v306);
          --v307;
        }

        while (v307);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 23:
      v328 = 2 * v96;
      while (1)
      {
        v329 = v509;
        do
        {
          if (*v101)
          {
            v330 = v90 + 16 * *v101;
            LODWORD(v331) = *(v330 + 8);
            if (*(v330 + 8))
            {
              v332 = *v330;
              if (v3)
              {
                if (*v95)
                {
                  v333 = __rev16(*v95);
                  goto LABEL_393;
                }

LABEL_395:
                v337 = bswap32(v332);
                v99->i16[0] = HIWORD(v337);
                v99->i16[1] = v337;
                v99->i16[2] = bswap32(HIDWORD(v332)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v332));
                v334 = v95;
              }

              else
              {
                v333 = 0xFFFF;
LABEL_393:
                v334 = v99 + 3;
                v335 = PDAexclusionPDA_11882(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v333, v332, v331);
                v332 = v335;
                if (v3)
                {
                  LODWORD(v331) = v336;
                  goto LABEL_395;
                }

                v331 = HIWORD(v335);
                v338 = bswap32(v335);
                v99->i16[0] = HIWORD(v338);
                v99->i16[1] = v338;
                v99->i16[2] = bswap32(HIDWORD(v335)) >> 16;
              }

              *v334 = bswap32(v331) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v328);
          --v329;
        }

        while (v329);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 24:
      v169 = 2 * v96;
      while (1)
      {
        v170 = v509;
        do
        {
          if (*v101)
          {
            v171 = v90 + 16 * *v101;
            LODWORD(v172) = *(v171 + 8);
            if (*(v171 + 8))
            {
              v173 = *v171;
              if (v3)
              {
                if (*v95)
                {
                  v174 = __rev16(*v95);
                  goto LABEL_160;
                }

LABEL_162:
                v178 = bswap32(v173);
                v99->i16[0] = HIWORD(v178);
                v99->i16[1] = v178;
                v99->i16[2] = bswap32(HIDWORD(v173)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v173));
                v175 = v95;
              }

              else
              {
                v174 = 0xFFFF;
LABEL_160:
                v175 = v99 + 3;
                v176 = PDAhuePDA_11883(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v174, v173, v172);
                v173 = v176;
                if (v3)
                {
                  LODWORD(v172) = v177;
                  goto LABEL_162;
                }

                v172 = HIWORD(v176);
                v179 = bswap32(v176);
                v99->i16[0] = HIWORD(v179);
                v99->i16[1] = v179;
                v99->i16[2] = bswap32(HIDWORD(v176)) >> 16;
              }

              *v175 = bswap32(v172) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v169);
          --v170;
        }

        while (v170);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 25:
      v158 = 2 * v96;
      while (1)
      {
        v159 = v509;
        do
        {
          if (*v101)
          {
            v160 = v90 + 16 * *v101;
            LODWORD(v161) = *(v160 + 8);
            if (*(v160 + 8))
            {
              v162 = *v160;
              if (v3)
              {
                if (*v95)
                {
                  v163 = __rev16(*v95);
                  goto LABEL_144;
                }

LABEL_146:
                v167 = bswap32(v162);
                v99->i16[0] = HIWORD(v167);
                v99->i16[1] = v167;
                v99->i16[2] = bswap32(HIDWORD(v162)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v162));
                v164 = v95;
              }

              else
              {
                v163 = 0xFFFF;
LABEL_144:
                v164 = v99 + 3;
                v165 = PDAsaturationPDA_11884(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v163, v162, v161);
                v162 = v165;
                if (v3)
                {
                  LODWORD(v161) = v166;
                  goto LABEL_146;
                }

                v161 = HIWORD(v165);
                v168 = bswap32(v165);
                v99->i16[0] = HIWORD(v168);
                v99->i16[1] = v168;
                v99->i16[2] = bswap32(HIDWORD(v165)) >> 16;
              }

              *v164 = bswap32(v161) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v158);
          --v159;
        }

        while (v159);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 26:
      v339 = 2 * v96;
      while (1)
      {
        v340 = v509;
        do
        {
          if (*v101)
          {
            v341 = v90 + 16 * *v101;
            LODWORD(v342) = *(v341 + 8);
            if (*(v341 + 8))
            {
              v343 = *v341;
              if (v3)
              {
                if (*v95)
                {
                  v344 = __rev16(*v95);
                  goto LABEL_409;
                }

                goto LABEL_410;
              }

              v344 = 0xFFFF;
LABEL_409:
              v345 = v99 + 3;
              v343 = PDAluminosityPDA_11885(v343, v342, ((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v344);
              if (v3)
              {
LABEL_410:
                v346 = bswap32(v343);
                v99->i16[0] = HIWORD(v346);
                v99->i16[1] = v346;
                v99->i16[2] = bswap32(HIDWORD(v343)) >> 16;
                v99->i16[3] = __rev16(HIWORD(v343));
                v345 = v95;
              }

              else
              {
                v342 = HIWORD(v343);
                v347 = bswap32(v343);
                v99->i16[0] = HIWORD(v347);
                v99->i16[1] = v347;
                v99->i16[2] = bswap32(HIDWORD(v343)) >> 16;
              }

              *v345 = bswap32(v342) >> 16;
            }
          }

          ++v101;
          ++v99;
          v95 = (v95 + v339);
          --v340;
        }

        while (v340);
        v101 += v502;
        v99 += v506;
        v95 += v98;
        if (!--v14)
        {
          return;
        }
      }

    case 27:
      v105 = 2 * v96;
      break;
    default:
      return;
  }

LABEL_45:
  v106 = v509;
  while (1)
  {
    if (!*v101)
    {
      goto LABEL_57;
    }

    v107 = v90 + 16 * *v101;
    LODWORD(v108) = *(v107 + 8);
    if (!*(v107 + 8))
    {
      goto LABEL_57;
    }

    v109 = *v107;
    if (v3)
    {
      if (!*v95)
      {
        goto LABEL_54;
      }

      v110 = __rev16(*v95);
    }

    else
    {
      v110 = 0xFFFF;
    }

    v111 = v99 + 3;
    v112 = PDAluminosityPDA_11885(((bswap32(v99->u16[2]) >> 16) << 32) | ((bswap32(v99->u16[3]) >> 16) << 48) | bswap32(v99->u16[1]) & 0xFFFF0000 | (bswap32(v99->u16[0]) >> 16), v110, v109, v108);
    v109 = v112;
    if (!v3)
    {
      v108 = HIWORD(v112);
      v115 = bswap32(v112);
      v99->i16[0] = HIWORD(v115);
      v99->i16[1] = v115;
      v99->i16[2] = bswap32(HIDWORD(v112)) >> 16;
      goto LABEL_56;
    }

    LODWORD(v108) = v113;
LABEL_54:
    v114 = bswap32(v109);
    v99->i16[0] = HIWORD(v114);
    v99->i16[1] = v114;
    v99->i16[2] = bswap32(HIDWORD(v109)) >> 16;
    v99->i16[3] = __rev16(HIWORD(v109));
    v111 = v95;
LABEL_56:
    *v111 = bswap32(v108) >> 16;
LABEL_57:
    ++v101;
    ++v99;
    v95 = (v95 + v105);
    if (!--v106)
    {
      v101 += v502;
      v99 += v506;
      v95 += v98;
      if (!--v14)
      {
        return;
      }

      goto LABEL_45;
    }
  }
}