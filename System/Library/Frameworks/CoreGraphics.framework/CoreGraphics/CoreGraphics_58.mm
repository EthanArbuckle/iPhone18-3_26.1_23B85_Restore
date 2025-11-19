uint64_t RGBAF_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v39, 0, 512);
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

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v39) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v34 = v19;
  v35 = v18;
  if (v19 == 538981257)
  {
    if (!v38 && (~v37 & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((v37 & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        RGBAF_mark_inner(*(*a1 + 56), v17);
        return 1;
      }
    }

    v33 = RGBAf_sample_RGBAF_inner;
    goto LABEL_38;
  }

  v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
  if (!v20)
  {
    return 0xFFFFFFFFLL;
  }

  if (v20 > 0xB)
  {
    goto LABEL_28;
  }

  if (v20 > 6)
  {
    switch(v20)
    {
      case 7:
        v21 = 0;
        v22 = 32;
        break;
      case 9:
        v21 = 0;
        v22 = 40;
        break;
      case 8:
        v21 = 0;
        v22 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 == 2)
  {
    if (!*(a2 + 12))
    {
      v21 = 0;
      v22 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v22 = 255;
    v21 = 1;
    goto LABEL_29;
  }

  if (v20 != 5)
  {
    if (v20 == 6)
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = 0;
  v22 = 24;
LABEL_29:
  v23 = RGBF_image_sample;
  v33 = *&RGBF_image_sample[2 * v20 + 2];
  if (v33)
  {
    goto LABEL_37;
  }

  if ((HIWORD(*a3) & 0x3Fu) > 8)
  {
    if ((*a3 & 0x3F0000u) >> 16 > 0x10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_34;
  }

  v23 = RGB8_image_sample;
  v33 = *&RGB8_image_sample[2 * v20 + 2];
  if (!v33)
  {
LABEL_34:
    v23 = RGB16_image_sample;
    v33 = *&RGB16_image_sample[2 * v20 + 2];
    if (v33)
    {
      v24 = 8;
      goto LABEL_36;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 4;
LABEL_36:
  v36 = v24;
LABEL_37:
  v34 = *v23;
  if ((v21 & 1) != 0 || (v8 - 1) > 1 || (v37 & 7) != 3 || a2[2] != 5 && a2[2] || v20 > 0xB)
  {
    goto LABEL_38;
  }

  HIDWORD(v26) = v22;
  LODWORD(v26) = v22;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v34 = *a3;
      v27 = RGBAF_image_mark_RGB24;
      goto LABEL_67;
    }

    if (v25 == 4)
    {
      v34 = *a3;
      v27 = RGBAF_image_mark_rgb32;
      goto LABEL_67;
    }

    if (v25 != 5)
    {
      goto LABEL_38;
    }

    v34 = *a3;
    v28 = RGBAF_image_mark_rgb32;
LABEL_65:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_68:
    RGBAF_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      v34 = *a3;
      v27 = RGBAF_image_mark_RGB32;
      goto LABEL_67;
    case 1:
      v34 = *a3;
      v28 = RGBAF_image_mark_RGB32;
      goto LABEL_65;
    case 2:
      v34 = *a3;
      v27 = RGBAF_image_mark_W8;
LABEL_67:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_68;
  }

LABEL_38:
  RGBAF_image_mark(a2, &v33, v8, v17);
  return 1;
}

void RGBAF_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(uint64_t, _DWORD *))
{
  v50[0] = a3;
  v50[1] = a4;
  v50[2] = *(a2 + 184);
  v8 = *(a1 + 28) >> 4;
  v52 = v8;
  v9 = *(a2 + 120);
  v10 = *(a2 + 20);
  v11 = HIBYTE(v10);
  v12 = BYTE2(v10);
  if (v9)
  {
    v13 = *(a2 + 24);
    v14 = (a2 + 104);
    v15 = (a2 + 72);
    v16 = (a2 + 88);
    v17 = v11;
  }

  else
  {
    v13 = *(a2 + 8) >> 25;
    v14 = (a2 + 96);
    v15 = (a2 + 64);
    v16 = (a2 + 80);
    v9 = *(a2 + 112);
    v17 = v12;
  }

  v18 = *v16;
  v19 = *v15;
  v20 = *v14;
  v21 = v17;
  v55 = v17;
  v53 = v20;
  v63 = v13;
  v49 = v18;
  v61 = v18;
  v59 = v19;
  v57 = v9;
  v22 = *(a2 + 128);
  if (v22)
  {
    v23 = *(a2 + 8) >> 25;
    v24 = (a2 + 96);
    v25 = (a2 + 64);
    v26 = (a2 + 80);
    v11 = v12;
  }

  else
  {
    v23 = *(a2 + 24);
    v24 = (a2 + 104);
    v25 = (a2 + 72);
    v26 = (a2 + 88);
    v22 = *(a2 + 136);
  }

  v27 = *v26;
  v28 = *v25;
  v29 = *v24;
  v56 = v11;
  v54 = v29;
  v64 = v23;
  v62 = v27;
  v60 = v28;
  v58 = v22;
  v30 = *(a1 + 4);
  if ((v30 & 0x80000000) == 0)
  {
    v31 = malloc_type_malloc(16 * v30, 0x6F81DBAuLL);
    v65 = v31;
    if (v31)
    {
      if (*(a2 + 176))
      {
        if (v30)
        {
          v33 = v31 + 1;
          v34 = v49 - v20;
          do
          {
            if (((v20 - v19) | v34) < 0)
            {
              v38 = 0;
            }

            else
            {
              v35 = ((v20 & ~(-1 << v21)) >> (v21 - 4)) & 0xF;
              v36 = weights_21890[v35];
              if (v35 - 7 >= 9)
              {
                v37 = -v13;
              }

              else
              {
                v37 = v13;
              }

              v38 = v36 & 0xF | (16 * v37);
            }

            *(v33 - 1) = v13 * (v20 >> v21);
            *v33 = v38;
            v33 += 2;
            v20 += v9;
            v34 -= v9;
            --v30;
          }

          while (v30);
        }
      }

      else if (v30)
      {
        v39 = v31 + 1;
        do
        {
          *(v39 - 1) = v13 * (v20 >> v21);
          *v39 = 0;
          v39 += 2;
          v20 += v9;
          --v30;
        }

        while (v30);
      }

      v40 = v31;
      v41 = *(a1 + 4);
      v42 = *(a1 + 8);
      v66 = v42;
      v67 = v41;
      v43 = *(a1 + 136);
      if (v43)
      {
        v44 = *(a1 + 104);
        v68[0] = *(a1 + 108);
        v68[1] = v44;
        shape_enum_clip_alloc(v31, v32, v43, 1, 1, 1, v44, v68[0], v41, v42);
        v46 = v45;
        if (v45)
        {
          goto LABEL_27;
        }
      }

      v47 = 0;
      v48 = 0;
      v46 = 0;
      *v68 = 0;
      while (1)
      {
        v51 = *(a1 + 40) + 16 * v8 * (*(a1 + 16) + v48) + 16 * (v47 + *(a1 + 12));
        a5(a2, v50);
        if (!v46)
        {
          break;
        }

LABEL_27:
        if (!shape_enum_clip_next(v46, &v68[1], v68, &v67, &v66))
        {
          free(v46);
          break;
        }

        v48 = v68[0];
        v47 = v68[1];
        v8 = v52;
      }

      free(v40);
    }
  }
}

void RGBAF_image_mark(uint64_t a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v386 = a3;
  v397 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v8 = *(a1 + 28);
  v9 = *(a1 + 40);
  v396 = *(a1 + 48);
  a4.n128_u32[0] = *(a2 + 184);
  v392 = a4;
  v10 = *(a1 + 136);
  v393 = v9;
  v394 = v10;
  v11 = *(a2 + 104);
  v389 = *(a2 + 96);
  v391 = v11;
  v13 = *(a1 + 12);
  v12 = *(a1 + 16);
  v395 = *(a1 + 8);
  v14 = *(a2 + 16);
  v15 = (v14 + 18) * v5;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xB6B380D1uLL);
    v17 = v18;
    v20 = v18;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v17 = &v380 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
  }

  v383 = v20;
  v21 = v8 >> 4;
  v22 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v22 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v24 = 16 * v5;
  }

  else
  {
    v24 = 0;
  }

  v25 = v23 + v24;
  *(a2 + 144) = v22;
  *(a2 + 152) = v23 + v24;
  *(a2 + 160) = v23;
  v26 = &v393[16 * v21 * v12 + 16 * v13];
  v381 = v8 >> 4;
  v382 = v4;
  v390 = v21 - v4;
  v27 = *(a1 + 104);
  v28 = *(a1 + 108);
  v29 = *(a1 + 2);
  if (v29 == 6 || v29 == 1)
  {
    v30 = v389;
    if (!v394)
    {
      goto LABEL_433;
    }

    v31 = 0;
    v32 = 0;
    v33 = *(a1 + 124);
    v34 = v394 + v33 * v28 + v27;
    v35 = v382;
    v387 = v33 - v382;
    v36 = v386;
  }

  else
  {
    v30 = v389;
    if (v394)
    {
      shape_enum_clip_alloc(v18, v19, v394, 1, 1, 1, v27, v28, v4, v395);
      if (!v37)
      {
        goto LABEL_433;
      }

      v31 = v37;
      v38 = ((v14 * v5 + 15) & 0xFFFFFFF0);
      if (!v14)
      {
        v38 = 16 * v5;
      }

      v39 = v25 + v38;
      v32 = 0;
      v35 = v382;
      v387 = -v382;
      v34 = (v39 + 16);
      v36 = v386;
      while (1)
      {
LABEL_436:
        v373 = *(v34 - 4);
        v374 = v373 - v32;
        if (v373 > v32)
        {
          v395 -= v374;
          if (v395 < 1)
          {
            goto LABEL_432;
          }

          v30 += *(a2 + 128) * v374;
          v391 += *(a2 + 136) * v374;
          v26 += v381 * v374;
          v32 = v373;
        }

        else
        {
          if (v32 < *(v34 - 3) + v373)
          {
            goto LABEL_18;
          }

          if (!shape_enum_clip_scan(v31, v34 - 4))
          {
LABEL_432:
            free(v31);
            goto LABEL_433;
          }
        }
      }
    }

    v387 = 0;
    v31 = 0;
    v34 = 0;
    v32 = 0;
    v36 = v386;
    v35 = v382;
  }

LABEL_18:
  LODWORD(v394) = v32;
  v385 = (v4 - 1);
  v384 = -v35;
  v388 = v36;
  v40 = v31;
  v41 = v391;
  while (2)
  {
    v393 = v40;
    v42 = (*a2)(a2, v30, v41, v4);
    v55 = *(a2 + 160);
    v56 = *(a2 + 144);
    v57 = *(a2 + 8);
    if (v57 == *(a2 + 12))
    {
      v58 = v392.n128_f32[0];
      if (v392.n128_f32[0] < 1.0)
      {
        v59 = v4;
        v60 = *(a2 + 144);
        do
        {
          if (*v60)
          {
            *v55 = vmulq_n_f32(*v55, v58);
          }

          ++v60;
          ++v55;
          --v59;
        }

        while (v59);
        v55 += v384;
        v56 += v385 + v384 + 1;
      }
    }

    else
    {
      v61 = *(a2 + 152);
      v62 = HIWORD(v57) & 0x3F;
      v50 = v392.n128_u64[0];
      if (v62 == 16)
      {
        v64 = 0;
        v65 = &v55->f32[2];
        if (v392.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v56[v64])
            {
              v67 = *(v61 + 8 * v64);
              *(v65 - 2) = *&_blt_float[v67 + 256] + *&_blt_float[BYTE1(v67) + 512];
              *(v65 - 1) = *&_blt_float[BYTE2(v67) + 256] + *&_blt_float[BYTE3(v67) | 0x200];
              *v65 = *&_blt_float[BYTE4(v67) + 256] + *&_blt_float[BYTE5(v67) + 512];
              v65[1] = *&_blt_float[BYTE6(v67) + 256] + *&_blt_float[HIBYTE(v67) + 512];
            }

            ++v64;
            v65 += 4;
          }

          while (v4 != v64);
        }

        else
        {
          do
          {
            if (v56[v64])
            {
              v66 = *(v61 + 8 * v64);
              *(v65 - 2) = v50.f32[0] * (*&_blt_float[v66 + 256] + *&_blt_float[BYTE1(v66) + 512]);
              *(v65 - 1) = v50.f32[0] * (*&_blt_float[BYTE2(v66) + 256] + *&_blt_float[BYTE3(v66) | 0x200]);
              *v65 = v50.f32[0] * (*&_blt_float[BYTE4(v66) + 256] + *&_blt_float[BYTE5(v66) + 512]);
              v65[1] = v50.f32[0] * (*&_blt_float[BYTE6(v66) + 256] + *&_blt_float[HIBYTE(v66) + 512]);
            }

            ++v64;
            v65 += 4;
          }

          while (v4 != v64);
        }
      }

      else if (v62 == 32)
      {
        v63 = 0;
        if (v392.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v56[v63])
            {
              v55[v63] = *(v61 + 16 * v63);
            }

            ++v63;
          }

          while (v4 != v63);
        }

        else
        {
          do
          {
            if (v56[v63])
            {
              v55[v63] = vmulq_n_f32(*(v61 + 16 * v63), v50.f32[0]);
            }

            ++v63;
          }

          while (v4 != v63);
        }
      }

      else
      {
        v68 = 0;
        if (v392.n128_f32[0] >= 1.0)
        {
          v71 = &v55->i32[2];
          do
          {
            if (v56[v68])
            {
              v72 = *(v61 + 4 * v68);
              *(v71 - 2) = *(_blt_float + ((v72 >> 22) & 0x3FC));
              *(v71 - 1) = _blt_float[BYTE2(v72)];
              *v71 = _blt_float[BYTE1(v72)];
              v71[1] = _blt_float[v72];
            }

            ++v68;
            v71 += 4;
          }

          while (v4 != v68);
        }

        else
        {
          do
          {
            if (v56[v68])
            {
              v69 = *(v61 + 4 * v68);
              v70.i32[0] = *(_blt_float + ((v69 >> 22) & 0x3FC));
              v70.i32[1] = _blt_float[BYTE2(v69)];
              v70.i32[2] = _blt_float[BYTE1(v69)];
              v70.i32[3] = _blt_float[v69];
              v55[v68] = vmulq_n_f32(v70, v50.f32[0]);
            }

            ++v68;
          }

          while (v4 != v68);
        }
      }
    }

    switch(v36)
    {
      case 0u:
        v73 = v4;
        v74 = v34;
        v31 = v393;
        do
        {
          v75 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v75 = (*v74 * v75 + ((*v74 * v75) >> 8) + 1) >> 8;
            }

            if (v75)
            {
              if (v75 == 255)
              {
                v26->i64[0] = 0;
                v26->i64[1] = 0;
              }

              else
              {
                *v26 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v26), (v75 * -0.0039216) + 1.0));
              }
            }
          }

          ++v56;
          v74 += v34 != 0;
          ++v26;
          --v73;
        }

        while (v73);
        v34 = &v74[v387];
        goto LABEL_345;
      case 1u:
        v210 = *v56;
        v211 = v56 + 1;
        v212 = v26 - 1;
        v213 = v4;
        if (v34)
        {
          v178 = v395;
          do
          {
            if (v210)
            {
              v214 = ((*v34 * v210 + ((*v34 * v210) >> 8) + 1) >> 8);
              if (v214)
              {
                if (v214 == 255)
                {
                  v215 = *v55;
                }

                else
                {
                  v215 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v212[1]), 1.0 - (v214 * 0.0039216)), *v55, v214 * 0.0039216);
                }

                v212[1] = vrev32q_s8(v215);
              }
            }

            v216 = *v211++;
            v210 = v216;
            ++v55;
            ++v34;
            ++v212;
            --v213;
          }

          while (v213);
          v34 += v387;
        }

        else
        {
          v178 = v395;
          do
          {
            if (v210)
            {
              if (v210 == 255)
              {
                v371 = *v55;
              }

              else
              {
                v371 = vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(v212[1]), 1.0 - (v210 * 0.0039216)), *v55, v210 * 0.0039216);
              }

              v212[1] = vrev32q_s8(v371);
            }

            v372 = *v211++;
            v210 = v372;
            ++v55;
            ++v212;
            --v213;
          }

          while (v213);
          v34 = 0;
        }

        v26 = &v212[v390 + 1];
        goto LABEL_405;
      case 2u:
        v174 = *v56;
        if (v34)
        {
          v175 = 0;
          v176 = &v55->f32[2];
          v177 = 0xFFFFFFFFFFFFFFFLL;
          v178 = v395;
          v31 = v393;
          while (1)
          {
            if (!v174)
            {
              goto LABEL_188;
            }

            v179 = ((v34[v175] * v174 + ((v34[v175] * v174) >> 8) + 1) >> 8);
            if (!v179)
            {
              goto LABEL_188;
            }

            if (v179 == 255)
            {
              v180 = v176[1];
              if (v180 >= 1.0)
              {
                v181 = *(v176 - 2);
                goto LABEL_187;
              }

              if (v180 > 0.0)
              {
                v181 = vmlaq_n_f32(*(v176 - 2), vrev32q_s8(v26[v175]), 1.0 - v180);
LABEL_187:
                v26[v175] = vrev32q_s8(v181);
              }
            }

            else
            {
              v182 = v179 * 0.0039216;
              v183 = v182 * v176[1];
              if (v183 > 0.0)
              {
                *&v184 = v182 * *v176;
                *v185.f32 = vmul_n_f32(*(v176 - 2), v182);
                v185.i64[1] = __PAIR64__(LODWORD(v183), v184);
                v181 = vmlaq_n_f32(v185, vrev32q_s8(v26[v175]), 1.0 - v183);
                goto LABEL_187;
              }
            }

LABEL_188:
            v174 = v56[++v175];
            v176 += 4;
            ++v177;
            if (v4 == v175)
            {
              v186 = &v26[v177];
              v34 += v175 + v387;
              goto LABEL_421;
            }
          }
        }

        v186 = v26 - 1;
        v361 = &v55->f32[2];
        v362 = v56 + 1;
        v363 = v4;
        v178 = v395;
        v31 = v393;
        do
        {
          if (!v174)
          {
            goto LABEL_419;
          }

          if (v174 == 255)
          {
            v364 = v361[1];
            if (v364 >= 1.0)
            {
              v365 = *(v361 - 2);
            }

            else
            {
              if (v364 <= 0.0)
              {
                goto LABEL_419;
              }

              v365 = vmlaq_n_f32(*(v361 - 2), vrev32q_s8(v186[1]), 1.0 - v364);
            }
          }

          else
          {
            v366 = v174 * 0.0039216;
            v367 = v366 * v361[1];
            if (v367 <= 0.0)
            {
              goto LABEL_419;
            }

            *&v368 = v366 * *v361;
            *v369.f32 = vmul_n_f32(*(v361 - 2), v366);
            v369.i64[1] = __PAIR64__(LODWORD(v367), v368);
            v365 = vmlaq_n_f32(v369, vrev32q_s8(v186[1]), 1.0 - v367);
          }

          v186[1] = vrev32q_s8(v365);
LABEL_419:
          v370 = *v362++;
          v174 = v370;
          ++v186;
          v361 += 4;
          --v363;
        }

        while (v363);
        v34 = 0;
LABEL_421:
        v26 = &v186[v390 + 1];
LABEL_406:
        v360 = v178 - 1;
        if (v360)
        {
          v395 = v360;
          v40 = 0;
          LODWORD(v394) = v394 + 1;
          v30 += *(a2 + 128);
          v41 += *(a2 + 136);
          if (v31)
          {
            v391 = v41;
            v35 = v382;
            v32 = v394;
            goto LABEL_436;
          }

          continue;
        }

        if (v31)
        {
          goto LABEL_432;
        }

LABEL_433:
        if (v383)
        {
          free(v383);
        }

        return;
      case 3u:
        v201 = v4;
        v105 = v34;
        do
        {
          v202 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v202 = (*v105 * v202 + ((*v105 * v202) >> 8) + 1) >> 8;
            }

            if (v202)
            {
              if (v202 == 255)
              {
                v203 = vmulq_n_f32(*v55, COERCE_FLOAT(bswap32(v26->u32[3])));
              }

              else
              {
                v204 = vrev32q_s8(*v26);
                v203 = vmlaq_n_f32(vmulq_n_f32(v204, 1.0 - (v202 * 0.0039216)), *v55, vmuls_lane_f32(v202 * 0.0039216, v204, 3));
              }

              *v26 = vrev32q_s8(v203);
            }
          }

          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          --v201;
        }

        while (v201);
        goto LABEL_389;
      case 4u:
        v128 = v4;
        v105 = v34;
        do
        {
          v129 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v129 = (*v105 * v129 + ((*v105 * v129) >> 8) + 1) >> 8;
            }

            if (v129)
            {
              if (v129 == 255)
              {
                v130 = vmulq_n_f32(*v55, 1.0 - COERCE_FLOAT(bswap32(v26->u32[3])));
              }

              else
              {
                v131 = vrev32q_s8(*v26);
                v130 = vmlaq_n_f32(vmulq_n_f32(v131, 1.0 - (v129 * 0.0039216)), *v55, (v129 * 0.0039216) * (1.0 - v131.f32[3]));
              }

              *v26 = vrev32q_s8(v130);
            }
          }

          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          --v128;
        }

        while (v128);
        goto LABEL_389;
      case 5u:
        v242 = v4;
        v105 = v34;
        while (1)
        {
          v243 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_269;
            }

            v244 = *v105 * v243 + ((*v105 * v243) >> 8) + 1;
            if (v244 >= 0x100)
            {
              break;
            }
          }

LABEL_270:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v242)
          {
            goto LABEL_389;
          }
        }

        v243 = v244 >> 8;
LABEL_269:
        v245 = vmulq_n_f32(*v55, v243 * 0.0039216);
        v246 = vrev32q_s8(*v26);
        *v26 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v246, 1.0 - v245.f32[3]), v245, v246, 3));
        goto LABEL_270;
      case 6u:
        v275 = &v55->f32[3];
        v276 = v4;
        v120 = v34;
        v31 = v393;
        while (1)
        {
          v277 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v278 = *v120 * v277 + ((*v120 * v277) >> 8) + 1;
              if (v278 < 0x100)
              {
                goto LABEL_310;
              }

              v277 = v278 >> 8;
            }

            v279 = COERCE_FLOAT(bswap32(v26->u32[3]));
            v280 = 1.0 - v279;
            if ((1.0 - v279) >= 1.0)
            {
              v285 = v277 * 0.0039216;
              v282 = bswap32(COERCE_UNSIGNED_INT(v285 * *(v275 - 1)));
              v283 = bswap32(COERCE_UNSIGNED_INT(v285 * *v275));
              v284 = vmul_n_f32(*(v275 - 3), v285);
              goto LABEL_309;
            }

            if (v280 > 0.0)
            {
              v281 = (v277 * 0.0039216) * v280;
              v282 = bswap32(COERCE_UNSIGNED_INT(COERCE_FLOAT(bswap32(v26->u32[2])) + (*(v275 - 1) * v281)));
              v283 = bswap32(COERCE_UNSIGNED_INT(v279 + (*v275 * v281)));
              v284 = vmla_n_f32(vrev32_s8(*v26->i8), *(v275 - 3), v281);
LABEL_309:
              *v26->i8 = vrev32_s8(v284);
              v26->i32[2] = v282;
              v26->i32[3] = v283;
            }
          }

LABEL_310:
          ++v56;
          v120 += v34 != 0;
          ++v26;
          v275 += 4;
          if (!--v276)
          {
            goto LABEL_344;
          }
        }

      case 7u:
        v205 = &v55->f32[3];
        v206 = v4;
        v120 = v34;
        v31 = v393;
        do
        {
          v207 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v207 = (*v120 * v207 + ((*v120 * v207) >> 8) + 1) >> 8;
            }

            if (v207)
            {
              if (v207 == 255)
              {
                v208 = vmulq_n_f32(vrev32q_s8(*v26), *v205);
              }

              else
              {
                v209 = vrev32q_s8(*v26);
                v208 = vmlaq_n_f32(vmulq_n_f32(v209, 1.0 - (v207 * 0.0039216)), v209, (v207 * 0.0039216) * *v205);
              }

              *v26 = vrev32q_s8(v208);
            }
          }

          ++v56;
          v120 += v34 != 0;
          ++v26;
          v205 += 4;
          --v206;
        }

        while (v206);
        goto LABEL_344;
      case 8u:
        v305 = &v55->f32[3];
        v306 = v4;
        v120 = v34;
        v31 = v393;
        do
        {
          v307 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v307 = (*v120 * v307 + ((*v120 * v307) >> 8) + 1) >> 8;
            }

            if (v307)
            {
              if (v307 == 255)
              {
                v308 = vmulq_n_f32(vrev32q_s8(*v26), 1.0 - *v305);
              }

              else
              {
                v309 = vrev32q_s8(*v26);
                v308 = vmlaq_n_f32(vmulq_n_f32(v309, 1.0 - (v307 * 0.0039216)), v309, (v307 * 0.0039216) * (1.0 - *v305));
              }

              *v26 = vrev32q_s8(v308);
            }
          }

          ++v56;
          v120 += v34 != 0;
          ++v26;
          v305 += 4;
          --v306;
        }

        while (v306);
        goto LABEL_344;
      case 9u:
        v141 = v4;
        v105 = v34;
        while (1)
        {
          v142 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_145;
            }

            v143 = *v105 * v142 + ((*v105 * v142) >> 8) + 1;
            if (v143 >= 0x100)
            {
              break;
            }
          }

LABEL_146:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v141)
          {
            goto LABEL_389;
          }
        }

        v142 = v143 >> 8;
LABEL_145:
        v144 = v142 * 0.0039216;
        v145 = 1.0 - v144;
        v146 = vmulq_n_f32(*v55, v144);
        v147 = vrev32q_s8(*v26);
        *v26 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v147, v145 + v146.f32[3]), v146, 1.0 - v147.f32[3]));
        goto LABEL_146;
      case 0xAu:
        v300 = v4;
        v105 = v34;
        while (1)
        {
          v301 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_331;
            }

            v302 = *v105 * v301 + ((*v105 * v301) >> 8) + 1;
            if (v302 >= 0x100)
            {
              break;
            }
          }

LABEL_332:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v300)
          {
            goto LABEL_389;
          }
        }

        v301 = v302 >> 8;
LABEL_331:
        v303 = vmulq_n_f32(*v55, v301 * 0.0039216);
        v304 = vrev32q_s8(*v26);
        *v26 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v304, 1.0 - v303.f32[3]), v303, 1.0 - v304.f32[3]));
        goto LABEL_332;
      case 0xBu:
        v118 = &v55->f32[3];
        v119 = v4;
        v120 = v34;
        v31 = v393;
        while (1)
        {
          v121 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_111;
            }

            v122 = *v120 * v121 + ((*v120 * v121) >> 8) + 1;
            if (v122 >= 0x100)
            {
              break;
            }
          }

LABEL_117:
          ++v56;
          v120 += v34 != 0;
          ++v26;
          v118 += 4;
          if (!--v119)
          {
            goto LABEL_344;
          }
        }

        v121 = v122 >> 8;
LABEL_111:
        v123 = v121 * 0.0039216;
        v50.f32[0] = v123 * *v118;
        v124 = COERCE_FLOAT(bswap32(v26->u32[2]));
        v52.i32[0] = bswap32(v26->u32[3]);
        if (!v396)
        {
          v52.f32[0] = 1.0;
        }

        v125 = (v50.f32[0] - (v123 * *(v118 - 1))) + (v52.f32[0] - v124);
        if ((v50.f32[0] + v52.f32[0]) <= 1.0)
        {
          *&v51 = v50.f32[0] + v52.f32[0];
        }

        else
        {
          *&v51 = 1.0;
        }

        v52 = vsub_f32(vdup_lane_s32(v52, 0), vrev32_s8(*v26->i8));
        v126 = vadd_f32(vsub_f32(vdup_lane_s32(v50, 0), vmul_n_f32(*(v118 - 3), v123)), v52);
        v50 = vdup_lane_s32(*&v51, 0);
        *v127.i8 = vsub_f32(v50, v126);
        v127.i64[1] = __PAIR64__(LODWORD(v51), *&v51 - v125);
        *v26 = vrev32q_s8(v127);
        goto LABEL_117;
      case 0xCu:
        v132 = &v55->f32[3];
        v133 = v4;
        v120 = v34;
        v31 = v393;
        while (1)
        {
          v134 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_135;
            }

            v135 = *v120 * v134 + ((*v120 * v134) >> 8) + 1;
            if (v135 >= 0x100)
            {
              break;
            }
          }

LABEL_138:
          ++v56;
          v120 += v34 != 0;
          ++v26;
          v132 += 4;
          if (!--v133)
          {
LABEL_344:
            v34 = &v120[v387];
LABEL_345:
            v26 += v390;
            v178 = v395;
            goto LABEL_406;
          }
        }

        v134 = v135 >> 8;
LABEL_135:
        v136 = v134 * 0.0039216;
        v137 = v136 * *(v132 - 1);
        v138 = (v136 * *v132) + COERCE_FLOAT(bswap32(v26->u32[3]));
        *v139.i8 = vadd_f32(vmul_n_f32(*(v132 - 3), v136), vrev32_s8(*v26->i8));
        v140 = v137 + COERCE_FLOAT(bswap32(v26->u32[2]));
        if (v138 > 1.0)
        {
          v138 = 1.0;
        }

        v139.i64[1] = __PAIR64__(LODWORD(v138), LODWORD(v140));
        *v26 = vrev32q_s8(v139);
        goto LABEL_138;
      case 0xDu:
        v391 = v41;
        v389 = v30;
        v261 = v4;
        v77 = v34;
        while (1)
        {
          v262 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v263 = *v77 * v262 + ((*v77 * v262) >> 8) + 1;
              if (v263 < 0x100)
              {
                goto LABEL_298;
              }

              v262 = v263 >> 8;
            }

            v264 = *v55;
            v265 = vmulq_n_f32(*v55, v262 * 0.0039216);
            if (*&v265.i32[3] > 0.0)
            {
              v266 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v266;
              if (v396)
              {
                v267 = v266;
                if (v266 <= 0.0)
                {
                  v268 = bswap32(v265.u32[2]);
                  v269 = bswap32(v265.u32[3]);
                  v270 = vrev32_s8(*v265.i8);
LABEL_297:
                  *v26->i8 = v270;
                  v26->i32[2] = v268;
                  v26->i32[3] = v269;
                  goto LABEL_298;
                }
              }

              else
              {
                v267 = 1.0;
              }

              v271 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v264.i32[0] = v271.i32[1];
              *&v272 = vextq_s8(v265, v265, 4uLL).u64[0];
              *v273.i32 = PDAmultiplyPDA(*v271.i32, *v264.i64, *&v50, v51, v267, *v265.i64, v272, v54, *v265.i32, COERCE_DOUBLE(__PAIR64__(v265.u32[3], HIDWORD(v272))), *&v265.i32[3]);
              v268 = bswap32(v50.u32[0]);
              v269 = bswap32(LODWORD(v51));
              v273.i32[1] = v274;
              v270 = vrev32_s8(v273);
              goto LABEL_297;
            }
          }

LABEL_298:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v261)
          {
            goto LABEL_403;
          }
        }

      case 0xEu:
        v104 = v4;
        v105 = v34;
        while (1)
        {
          v106 = *v56;
          if (*v56)
          {
            if (!v34)
            {
              goto LABEL_99;
            }

            v107 = *v105 * v106 + ((*v105 * v106) >> 8) + 1;
            if (v107 >= 0x100)
            {
              break;
            }
          }

LABEL_104:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v104)
          {
            goto LABEL_389;
          }
        }

        v106 = v107 >> 8;
LABEL_99:
        v108 = vmulq_n_f32(*v55, v106 * 0.0039216);
        if (v108.f32[3] > 0.0)
        {
          v109 = 1.0;
          if (!v396 || (v109 = COERCE_FLOAT(bswap32(v26->u32[3])), v109 > 0.0))
          {
            LODWORD(v110) = bswap32(v26->u32[2]);
            *v111.f32 = vrev32_s8(*v26->i8);
            __asm { FMOV            V6.2S, #1.0 }

            *v117.f32 = vsub_f32(_D6, *v111.f32);
            v117.i64[1] = __PAIR64__(-v109, 1.0 - v110);
            v111.i64[1] = __PAIR64__(v108.f32[3] + v109, LODWORD(v110));
            v108 = vmlaq_f32(v111, v108, v117);
          }

          *v26 = vrev32q_s8(v108);
        }

        goto LABEL_104;
      case 0xFu:
        v391 = v41;
        v389 = v30;
        v187 = v4;
        v77 = v34;
        while (1)
        {
          v188 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v189 = *v77 * v188 + ((*v77 * v188) >> 8) + 1;
              if (v189 < 0x100)
              {
                goto LABEL_202;
              }

              v188 = v189 >> 8;
            }

            v190 = *v55;
            v191 = vmulq_n_f32(*v55, v188 * 0.0039216);
            if (*&v191.i32[3] > 0.0)
            {
              v192 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v192;
              if (v396)
              {
                v193 = v192;
                if (v192 <= 0.0)
                {
                  v194 = bswap32(v191.u32[2]);
                  v195 = bswap32(v191.u32[3]);
                  v196 = vrev32_s8(*v191.i8);
LABEL_201:
                  *v26->i8 = v196;
                  v26->i32[2] = v194;
                  v26->i32[3] = v195;
                  goto LABEL_202;
                }
              }

              else
              {
                v193 = 1.0;
              }

              v197 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v190.i32[0] = v197.i32[1];
              *&v198 = vextq_s8(v191, v191, 4uLL).u64[0];
              *v199.i32 = PDAoverlayPDA(*v197.i32, *v190.i64, *&v50, v51, v193, *v191.i64, v198, v54, *v191.i32, COERCE_DOUBLE(__PAIR64__(v191.u32[3], HIDWORD(v198))), *&v191.i32[3]);
              v194 = bswap32(v50.u32[0]);
              v195 = bswap32(LODWORD(v51));
              v199.i32[1] = v200;
              v196 = vrev32_s8(v199);
              goto LABEL_201;
            }
          }

LABEL_202:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v187)
          {
            goto LABEL_403;
          }
        }

      case 0x10u:
        v391 = v41;
        v389 = v30;
        v90 = v4;
        v77 = v34;
        while (1)
        {
          v91 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v92 = *v77 * v91 + ((*v77 * v91) >> 8) + 1;
              if (v92 < 0x100)
              {
                goto LABEL_92;
              }

              v91 = v92 >> 8;
            }

            v93 = *v55;
            v94 = vmulq_n_f32(*v55, v91 * 0.0039216);
            if (*&v94.i32[3] > 0.0)
            {
              v95 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v95;
              if (v396)
              {
                v96 = v95;
                if (v95 <= 0.0)
                {
                  v97 = bswap32(v94.u32[2]);
                  v98 = bswap32(v94.u32[3]);
                  v99 = vrev32_s8(*v94.i8);
LABEL_91:
                  *v26->i8 = v99;
                  v26->i32[2] = v97;
                  v26->i32[3] = v98;
                  goto LABEL_92;
                }
              }

              else
              {
                v96 = 1.0;
              }

              v100 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v93.i32[0] = v100.i32[1];
              *&v101 = vextq_s8(v94, v94, 4uLL).u64[0];
              *v102.i32 = PDAdarkenPDA(*v100.i32, *v93.i64, *&v50, v51, v96, *v94.i64, v101, v54, *v94.i32, COERCE_DOUBLE(__PAIR64__(v94.u32[3], HIDWORD(v101))), *&v94.i32[3]);
              v97 = bswap32(v50.u32[0]);
              v98 = bswap32(LODWORD(v51));
              v102.i32[1] = v103;
              v99 = vrev32_s8(v102);
              goto LABEL_91;
            }
          }

LABEL_92:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v90)
          {
            goto LABEL_403;
          }
        }

      case 0x11u:
        v391 = v41;
        v389 = v30;
        v217 = v4;
        v77 = v34;
        while (1)
        {
          v218 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v219 = *v77 * v218 + ((*v77 * v218) >> 8) + 1;
              if (v219 < 0x100)
              {
                goto LABEL_248;
              }

              v218 = v219 >> 8;
            }

            v220 = *v55;
            v221 = vmulq_n_f32(*v55, v218 * 0.0039216);
            if (*&v221.i32[3] > 0.0)
            {
              v222 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v222;
              if (v396)
              {
                v223 = v222;
                if (v222 <= 0.0)
                {
                  v224 = bswap32(v221.u32[2]);
                  v225 = bswap32(v221.u32[3]);
                  v226 = vrev32_s8(*v221.i8);
LABEL_247:
                  *v26->i8 = v226;
                  v26->i32[2] = v224;
                  v26->i32[3] = v225;
                  goto LABEL_248;
                }
              }

              else
              {
                v223 = 1.0;
              }

              v227 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v220.i32[0] = v227.i32[1];
              *&v228 = vextq_s8(v221, v221, 4uLL).u64[0];
              *v229.i32 = PDAlightenPDA(*v227.i32, *v220.i64, *&v50, v51, v223, *v221.i64, v228, v54, *v221.i32, COERCE_DOUBLE(__PAIR64__(v221.u32[3], HIDWORD(v228))), *&v221.i32[3]);
              v224 = bswap32(v50.u32[0]);
              v225 = bswap32(LODWORD(v51));
              v229.i32[1] = v230;
              v226 = vrev32_s8(v229);
              goto LABEL_247;
            }
          }

LABEL_248:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v217)
          {
            goto LABEL_403;
          }
        }

      case 0x12u:
        v391 = v41;
        v389 = v30;
        v286 = v4;
        v77 = v34;
        while (1)
        {
          v287 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v288 = *v77 * v287 + ((*v77 * v287) >> 8) + 1;
              if (v288 < 0x100)
              {
                goto LABEL_324;
              }

              v287 = v288 >> 8;
            }

            v289 = *v55;
            v290 = vmulq_n_f32(*v55, v287 * 0.0039216);
            if (*&v290.i32[3] > 0.0)
            {
              v291 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v291;
              if (v396)
              {
                v292 = v291;
                if (v291 <= 0.0)
                {
                  v293 = bswap32(v290.u32[2]);
                  v294 = bswap32(v290.u32[3]);
                  v295 = vrev32_s8(*v290.i8);
LABEL_323:
                  *v26->i8 = v295;
                  v26->i32[2] = v293;
                  v26->i32[3] = v294;
                  goto LABEL_324;
                }
              }

              else
              {
                v292 = 1.0;
              }

              v296 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v289.i32[0] = v296.i32[1];
              *&v297 = vextq_s8(v290, v290, 4uLL).u64[0];
              *v298.i32 = PDAcolordodgePDA(*v296.i32, *v289.i64, *&v50, v51, v292, *v290.i64, v297, v54, *v290.i32, COERCE_DOUBLE(__PAIR64__(v290.u32[3], HIDWORD(v297))), *&v290.i32[3]);
              v293 = bswap32(v50.u32[0]);
              v294 = bswap32(LODWORD(v51));
              v298.i32[1] = v299;
              v295 = vrev32_s8(v298);
              goto LABEL_323;
            }
          }

LABEL_324:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v286)
          {
            goto LABEL_403;
          }
        }

      case 0x13u:
        v391 = v41;
        v389 = v30;
        v327 = v4;
        v77 = v34;
        while (1)
        {
          v328 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v329 = *v77 * v328 + ((*v77 * v328) >> 8) + 1;
              if (v329 < 0x100)
              {
                goto LABEL_374;
              }

              v328 = v329 >> 8;
            }

            v330 = *v55;
            v331 = vmulq_n_f32(*v55, v328 * 0.0039216);
            if (*&v331.i32[3] > 0.0)
            {
              v332 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v332;
              if (v396)
              {
                v333 = v332;
                if (v332 <= 0.0)
                {
                  v334 = bswap32(v331.u32[2]);
                  v335 = bswap32(v331.u32[3]);
                  v336 = vrev32_s8(*v331.i8);
LABEL_373:
                  *v26->i8 = v336;
                  v26->i32[2] = v334;
                  v26->i32[3] = v335;
                  goto LABEL_374;
                }
              }

              else
              {
                v333 = 1.0;
              }

              v337 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v330.i32[0] = v337.i32[1];
              *&v338 = vextq_s8(v331, v331, 4uLL).u64[0];
              *v339.i32 = PDAcolorburnPDA(*v337.i32, *v330.i64, *&v50, v51, v333, *v331.i64, v338, v54, *v331.i32, COERCE_DOUBLE(__PAIR64__(v331.u32[3], HIDWORD(v338))), *&v331.i32[3]);
              v334 = bswap32(v50.u32[0]);
              v335 = bswap32(LODWORD(v51));
              v339.i32[1] = v340;
              v336 = vrev32_s8(v339);
              goto LABEL_373;
            }
          }

LABEL_374:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v327)
          {
            goto LABEL_403;
          }
        }

      case 0x14u:
        v391 = v41;
        v389 = v30;
        v231 = v4;
        v77 = v34;
        while (1)
        {
          v232 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v233 = *v77 * v232 + ((*v77 * v232) >> 8) + 1;
              if (v233 < 0x100)
              {
                goto LABEL_262;
              }

              v232 = v233 >> 8;
            }

            v234 = vmulq_n_f32(*v55, v232 * 0.0039216);
            if (*&v234.i32[3] > 0.0)
            {
              v235 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v235;
              if (v396)
              {
                v52.f32[0] = v235;
                if (v235 <= 0.0)
                {
                  v236 = bswap32(v234.u32[2]);
                  v237 = bswap32(v234.u32[3]);
                  v238 = vrev32_s8(*v234.i8);
LABEL_261:
                  *v26->i8 = v238;
                  v26->i32[2] = v236;
                  v26->i32[3] = v237;
                  goto LABEL_262;
                }
              }

              else
              {
                v52.i32[0] = 1.0;
              }

              v239 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              DWORD2(v379) = v234.i32[3];
              *&v379 = vextq_s8(v234, v234, 4uLL).u64[0];
              *v240.i32 = PDAsoftlightPDA(*v239.i32, *&v239.i32[1], *&v50, *&v51, *&v52, *v234.i64, *&v379, v54, v42, v43, v44, v45, v46, v47, v48, v49, *v234.i32, v379, *(&v379 + 4), *&v234.i32[3]);
              v236 = bswap32(v50.u32[0]);
              v237 = bswap32(LODWORD(v51));
              v240.i32[1] = v241;
              v238 = vrev32_s8(v240);
              goto LABEL_261;
            }
          }

LABEL_262:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v231)
          {
            goto LABEL_403;
          }
        }

      case 0x15u:
        v391 = v41;
        v389 = v30;
        v247 = v4;
        v77 = v34;
        while (1)
        {
          v248 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v249 = *v77 * v248 + ((*v77 * v248) >> 8) + 1;
              if (v249 < 0x100)
              {
                goto LABEL_284;
              }

              v248 = v249 >> 8;
            }

            v250 = *v55;
            v251 = vmulq_n_f32(*v55, v248 * 0.0039216);
            if (*&v251.i32[3] > 0.0)
            {
              v252 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v252;
              if (v396)
              {
                v253 = v252;
                if (v252 <= 0.0)
                {
                  v254 = bswap32(v251.u32[2]);
                  v255 = bswap32(v251.u32[3]);
                  v256 = vrev32_s8(*v251.i8);
LABEL_283:
                  *v26->i8 = v256;
                  v26->i32[2] = v254;
                  v26->i32[3] = v255;
                  goto LABEL_284;
                }
              }

              else
              {
                v253 = 1.0;
              }

              v257 = vrev32_s8(*v26->i8);
              v50.i32[0] = bswap32(v26->u32[2]);
              v250.i32[0] = v257.i32[1];
              *&v258 = vextq_s8(v251, v251, 4uLL).u64[0];
              *v259.i32 = PDAhardlightPDA(*v257.i32, *v250.i64, *&v50, v51, v253, *v251.i64, v258, v54, *v251.i32, COERCE_DOUBLE(__PAIR64__(v251.u32[3], HIDWORD(v258))), *&v251.i32[3]);
              v254 = bswap32(v50.u32[0]);
              v255 = bswap32(LODWORD(v51));
              v259.i32[1] = v260;
              v256 = vrev32_s8(v259);
              goto LABEL_283;
            }
          }

LABEL_284:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v247)
          {
            goto LABEL_403;
          }
        }

      case 0x16u:
        v310 = v4;
        v105 = v34;
        while (1)
        {
          v311 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v312 = *v105 * v311 + ((*v105 * v311) >> 8) + 1;
              if (v312 < 0x100)
              {
                goto LABEL_360;
              }

              v311 = v312 >> 8;
            }

            v313 = vmulq_n_f32(*v55, v311 * 0.0039216);
            if (v313.f32[3] > 0.0)
            {
              if (v396)
              {
                v314 = COERCE_FLOAT(bswap32(v26->u32[3]));
                if (v314 <= 0.0)
                {
                  v315 = bswap32(v313.u32[2]);
                  v316 = bswap32(v313.u32[3]);
                  v317 = vrev32_s8(*v313.f32);
LABEL_359:
                  *v26->i8 = v317;
                  v26->i32[2] = v315;
                  v26->i32[3] = v316;
                  goto LABEL_360;
                }
              }

              else
              {
                v314 = 1.0;
              }

              v318 = COERCE_FLOAT(bswap32(v26->u32[2]));
              v319 = vrev32_s8(*v26->i8);
              v320 = vadd_f32(*v313.f32, v319);
              v321 = vmul_laneq_f32(v319, v313, 3);
              v322 = vmul_n_f32(*v313.f32, v314);
              v323 = vsub_f32(v320, v321);
              v324 = vsub_f32(v321, v322);
              v325 = vadd_f32(vsub_f32(v323, v322), vbsl_s8(vcltz_f32(v324), vneg_f32(v324), v324));
              v313.f32[0] = vmuls_lane_f32(v314, v313, 2);
              v326 = (v313.f32[3] * v318) - v313.f32[0];
              v313.f32[0] = ((v313.f32[2] + v318) - (v313.f32[3] * v318)) - v313.f32[0];
              if (v326 < 0.0)
              {
                v326 = -v326;
              }

              v315 = bswap32(COERCE_UNSIGNED_INT(v313.f32[0] + v326));
              v316 = bswap32(COERCE_UNSIGNED_INT((v314 + v313.f32[3]) - (v314 * v313.f32[3])));
              v317 = vrev32_s8(v325);
              goto LABEL_359;
            }
          }

LABEL_360:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v310)
          {
            goto LABEL_389;
          }
        }

      case 0x17u:
        v341 = v4;
        v105 = v34;
        while (1)
        {
          v342 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v343 = *v105 * v342 + ((*v105 * v342) >> 8) + 1;
              if (v343 < 0x100)
              {
                goto LABEL_388;
              }

              v342 = v343 >> 8;
            }

            v344 = vmulq_n_f32(*v55, v342 * 0.0039216);
            if (v344.f32[3] > 0.0)
            {
              if (v396)
              {
                LODWORD(v345) = bswap32(v26->u32[3]);
                if (v345 <= 0.0)
                {
                  goto LABEL_387;
                }
              }

              else
              {
                v345 = 1.0;
              }

              LODWORD(v346) = bswap32(v26->u32[2]);
              *v347.f32 = vrev32_s8(*v26->i8);
              *v348.f32 = vmul_f32(*v344.f32, vneg_f32(*v347.f32));
              *&v349 = -v345;
              v347.i64[1] = __PAIR64__(LODWORD(v345), LODWORD(v346));
              v350.i64[0] = 0x4000000040000000;
              v350.i32[2] = 0x40000000;
              v350.i32[3] = v344.i32[3];
              v348.i64[1] = __PAIR64__(v349, COERCE_UNSIGNED_INT(vmuls_lane_f32(-v346, v344, 2)));
              v344 = vmlaq_f32(vaddq_f32(v344, v347), v350, v348);
LABEL_387:
              *v26 = vrev32q_s8(v344);
            }
          }

LABEL_388:
          ++v56;
          ++v55;
          v105 += v34 != 0;
          ++v26;
          if (!--v341)
          {
LABEL_389:
            v34 = &v105[v387];
            v26 += v390;
            goto LABEL_404;
          }
        }

      case 0x18u:
        v391 = v41;
        v389 = v30;
        v161 = v4;
        v77 = v34;
        while (1)
        {
          v162 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v163 = *v77 * v162 + ((*v77 * v162) >> 8) + 1;
              if (v163 < 0x100)
              {
                goto LABEL_174;
              }

              v162 = v163 >> 8;
            }

            v164 = vmulq_n_f32(*v55, v162 * 0.0039216);
            if (*&v164.i32[3] > 0.0)
            {
              v165 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v165;
              if (v396)
              {
                v166 = v165;
                if (v165 <= 0.0)
                {
                  v167 = bswap32(v164.u32[2]);
                  v168 = bswap32(v164.u32[3]);
                  v169 = vrev32_s8(*v164.i8);
LABEL_173:
                  *v26->i8 = v169;
                  v26->i32[2] = v167;
                  v26->i32[3] = v168;
                  goto LABEL_174;
                }
              }

              else
              {
                v166 = 1.0;
              }

              v170 = vrev32_s8(*v26->i8);
              *&v378 = vextq_s8(v164, v164, 4uLL).u64[0];
              *v171.i32 = PDAhuePDA(*v170.i32, *&v170.i32[1], COERCE_FLOAT(bswap32(v26->u32[2])), v51, v166, *v164.i64, v378, v54, *v164.i32, *&v378, *(&v378 + 1), *&v164.i32[3], *&v164.i32[3]);
              v167 = bswap32(v172);
              v168 = bswap32(LODWORD(v51));
              v171.i32[1] = v173;
              v169 = vrev32_s8(v171);
              goto LABEL_173;
            }
          }

LABEL_174:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v161)
          {
            goto LABEL_403;
          }
        }

      case 0x19u:
        v391 = v41;
        v389 = v30;
        v148 = v4;
        v77 = v34;
        while (1)
        {
          v149 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v150 = *v77 * v149 + ((*v77 * v149) >> 8) + 1;
              if (v150 < 0x100)
              {
                goto LABEL_160;
              }

              v149 = v150 >> 8;
            }

            v151 = vmulq_n_f32(*v55, v149 * 0.0039216);
            if (*&v151.i32[3] > 0.0)
            {
              v152 = COERCE_FLOAT(bswap32(v26->u32[3]));
              *&v51 = v152;
              if (v396)
              {
                v153 = v152;
                if (v152 <= 0.0)
                {
                  v154 = bswap32(v151.u32[2]);
                  v155 = bswap32(v151.u32[3]);
                  v156 = vrev32_s8(*v151.i8);
LABEL_159:
                  *v26->i8 = v156;
                  v26->i32[2] = v154;
                  v26->i32[3] = v155;
                  goto LABEL_160;
                }
              }

              else
              {
                v153 = 1.0;
              }

              v157 = vrev32_s8(*v26->i8);
              *&v377 = vextq_s8(v151, v151, 4uLL).u64[0];
              *v158.i32 = PDAsaturationPDA(*v157.i32, *&v157.i32[1], COERCE_FLOAT(bswap32(v26->u32[2])), v51, v153, *v151.i64, v377, v54, *v151.i32, *&v377, *(&v377 + 1), *&v151.i32[3], *&v151.i32[3]);
              v154 = bswap32(v159);
              v155 = bswap32(LODWORD(v51));
              v158.i32[1] = v160;
              v156 = vrev32_s8(v158);
              goto LABEL_159;
            }
          }

LABEL_160:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v148)
          {
            goto LABEL_403;
          }
        }

      case 0x1Au:
        v391 = v41;
        v389 = v30;
        v351 = v4;
        v77 = v34;
        while (1)
        {
          v352 = *v56;
          if (*v56)
          {
            if (v34)
            {
              v353 = *v77 * v352 + ((*v77 * v352) >> 8) + 1;
              if (v353 < 0x100)
              {
                goto LABEL_402;
              }

              v352 = v353 >> 8;
            }

            v354 = vmulq_n_f32(*v55, v352 * 0.0039216);
            LODWORD(v51) = v354.i32[3];
            if (v354.f32[3] > 0.0)
            {
              v355 = COERCE_FLOAT(bswap32(v26->u32[3]));
              if (v396)
              {
                *&v53 = v355;
                if (v355 <= 0.0)
                {
                  v356 = bswap32(v354.u32[2]);
                  v357 = bswap32(v354.u32[3]);
LABEL_401:
                  *v26->i8 = vrev32_s8(*v354.f32);
                  v26->i32[2] = v356;
                  v26->i32[3] = v357;
                  goto LABEL_402;
                }
              }

              else
              {
                LODWORD(v53) = 1.0;
              }

              v375 = COERCE_DOUBLE(vrev32_s8(*v26->i8));
              v354.f32[0] = PDAluminosityPDA(v354.f32[0], v354.f32[1], v354.f32[2], v51, v354.f32[3], v53, v375, v54, *&v375, *(&v375 + 1), COERCE_FLOAT(bswap32(v26->u32[2])), v355, *&v53);
              v356 = bswap32(v358);
              v357 = bswap32(LODWORD(v51));
              v354.i32[1] = v359;
              goto LABEL_401;
            }
          }

LABEL_402:
          ++v56;
          ++v55;
          v77 += v34 != 0;
          ++v26;
          if (!--v351)
          {
            goto LABEL_403;
          }
        }

      case 0x1Bu:
        v391 = v41;
        v389 = v30;
        v76 = v4;
        v77 = v34;
        break;
      default:
        goto LABEL_404;
    }

    break;
  }

  while (1)
  {
    v78 = *v56;
    if (*v56)
    {
      if (v34)
      {
        v79 = *v77 * v78 + ((*v77 * v78) >> 8) + 1;
        if (v79 < 0x100)
        {
          goto LABEL_78;
        }

        v78 = v79 >> 8;
      }

      v80 = vmulq_n_f32(*v55, v78 * 0.0039216);
      if (*&v80.i32[3] > 0.0)
      {
        v81 = COERCE_FLOAT(bswap32(v26->u32[3]));
        *&v51 = v81;
        if (v396)
        {
          v82 = v81;
          if (v81 <= 0.0)
          {
            v83 = bswap32(v80.u32[2]);
            v84 = bswap32(v80.u32[3]);
            v85 = vrev32_s8(*v80.i8);
LABEL_77:
            *v26->i8 = v85;
            v26->i32[2] = v83;
            v26->i32[3] = v84;
            goto LABEL_78;
          }
        }

        else
        {
          v82 = 1.0;
        }

        v86 = vrev32_s8(*v26->i8);
        *&v376 = vextq_s8(v80, v80, 4uLL).u64[0];
        *v87.i32 = PDAluminosityPDA(*v86.i32, *&v86.i32[1], COERCE_FLOAT(bswap32(v26->u32[2])), v51, v82, *v80.i64, v376, v54, *v80.i32, *&v376, *(&v376 + 1), *&v80.i32[3], *&v80.i32[3]);
        v83 = bswap32(v88);
        v84 = bswap32(LODWORD(v51));
        v87.i32[1] = v89;
        v85 = vrev32_s8(v87);
        goto LABEL_77;
      }
    }

LABEL_78:
    ++v56;
    ++v55;
    v77 += v34 != 0;
    ++v26;
    if (!--v76)
    {
LABEL_403:
      v34 = &v77[v387];
      v30 = v389;
      v26 += v390;
      v36 = v386;
      v41 = v391;
LABEL_404:
      v178 = v395;
LABEL_405:
      v31 = v393;
      goto LABEL_406;
    }
  }
}

__int32 *RGBAF_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, float32x4_t a7, float32x4_t a8)
{
  a7.i32[0] = a2[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v11 = 0;
  }

  else
  {
    v11 = 255;
  }

  v12 = *(a2 + 2);
  v13 = *(a2 + 3) - a5;
  v15 = *(a2 + 15);
  v14 = *(a2 + 16);
  v16 = *(a2 + 7);
  v17 = *(a2 + 9);
  v18 = *(a2 + 5) + v17 * a4;
  v19 = (v10 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3));
  if (*(a1 + 176))
  {
    v83 = *(a2 + 13);
    v84 = *(a2 + 11);
    v20 = 32 - v9;
    a8.i32[0] = 1.0;
    v21 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
    v82 = v14 + 16 * a3 + 8;
    while (1)
    {
      result = v84;
      if (((v83 - v18) | (v18 - v84)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v18 & ~(-1 << v16)) >> (v16 - 4)) & 0xF;
        result = -v15;
        if (v23 - 7 >= 9)
        {
          v24 = -v15;
        }

        else
        {
          v24 = v15;
        }

        v25 = weights_21890[v23] & 0xF;
      }

      v26 = v10 + (v18 >> v16) * v15;
      if (v8 == 1)
      {
        if (a5 >= 1)
        {
          v27 = v82;
          v28 = a5;
          do
          {
            v30 = *(v27 - 1);
            v29 = *v27;
            v31 = &v26[v30];
            if (v19 >= &v26[v30])
            {
              v32 = &v26[v30];
            }

            else
            {
              v32 = v19;
            }

            if (v10 > v32)
            {
              v32 = v10;
            }

            v33 = *v32;
            if ((v29 & 0xF) != 0)
            {
              v34 = &v31[v29 >> 4];
              if (v19 < v34)
              {
                v34 = v19;
              }

              if (v10 > v34)
              {
                v34 = v10;
              }

              v35 = *v34;
              if (v25)
              {
                v36 = &v31[v24];
                if (v19 >= v36)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = v19;
                }

                if (v10 > v37)
                {
                  v37 = v10;
                }

                v38 = *v37;
                v39 = (v36 + (v29 >> 4));
                if (v19 < v39)
                {
                  v39 = v19;
                }

                if (v10 > v39)
                {
                  v39 = v10;
                }

                v40 = BLEND8_21892[v25];
                v33 = v33 - ((v40 & v33) >> v25) + ((v40 & v38) >> v25);
                v35 = v35 - ((v40 & v35) >> v25) + ((v40 & *v39) >> v25);
              }

              v33 = v33 - ((BLEND8_21892[*v27 & 0xF] & v33) >> (*v27 & 0xF)) + ((BLEND8_21892[*v27 & 0xF] & v35) >> (*v27 & 0xF));
            }

            else if (v25)
            {
              v41 = &v31[v24];
              if (v19 < &v31[v24])
              {
                v41 = v19;
              }

              if (v10 > v41)
              {
                v41 = v10;
              }

              v33 = v33 - ((BLEND8_21892[v25] & v33) >> v25) + ((BLEND8_21892[v25] & *v41) >> v25);
            }

            v27 += 2;
            v42 = __ROL4__(v33, v9);
            v43 = HIBYTE(v42);
            v44 = &_blt_float[BYTE2(v42)];
            v45 = &_blt_float[BYTE1(v42)];
            result = &_blt_float[((v33 << v9) | (v33 >> v20)) | v11];
            v46.i32[0] = _blt_float[v43];
            v46.i32[1] = *v44;
            v46.i32[2] = *v45;
            v46.i32[3] = *result;
            *v12++ = vrev32q_s8(vbslq_s8(v21, vmulq_n_f32(v46, a7.f32[0]), v46));
            --v28;
          }

          while (v28);
        }

        goto LABEL_80;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_80:
      v12 += v13;
      v18 += v17;
      if (!--a6)
      {
        return result;
      }
    }

    v47 = v82;
    v48 = a5;
    while (1)
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      v51 = &v26[v49];
      if (v19 >= &v26[v49])
      {
        v52 = &v26[v49];
      }

      else
      {
        v52 = v19;
      }

      if (v10 > v52)
      {
        v52 = v10;
      }

      v53 = *v52;
      if ((v50 & 0xF) != 0)
      {
        v54 = &v51[v50 >> 4];
        if (v19 < v54)
        {
          v54 = v19;
        }

        if (v10 > v54)
        {
          v54 = v10;
        }

        v55 = *v54;
        if (v25)
        {
          if (v19 >= &v51[v24])
          {
            v56 = &v51[v24];
          }

          else
          {
            v56 = v19;
          }

          if (v10 > v56)
          {
            v56 = v10;
          }

          v57 = *v56;
          v58 = &v51[v24 + (v50 >> 4)];
          if (v19 < v58)
          {
            v58 = v19;
          }

          if (v10 > v58)
          {
            v58 = v10;
          }

          v59 = BLEND8_21892[v25];
          v53 = v53 - ((v59 & v53) >> v25) + ((v59 & v57) >> v25);
          v55 = v55 - ((v59 & v55) >> v25) + ((v59 & *v58) >> v25);
        }

        v53 = v53 - ((BLEND8_21892[*v47 & 0xF] & v53) >> (*v47 & 0xF)) + ((BLEND8_21892[*v47 & 0xF] & v55) >> (*v47 & 0xF));
      }

      else if (v25)
      {
        v60 = &v51[v24];
        if (v19 < &v51[v24])
        {
          v60 = v19;
        }

        if (v10 > v60)
        {
          v60 = v10;
        }

        v53 = v53 - ((BLEND8_21892[v25] & v53) >> v25) + ((BLEND8_21892[v25] & *v60) >> v25);
      }

      v61 = __ROL4__(v53, v9);
      v62 = HIBYTE(v61);
      v63 = &_blt_float[BYTE2(v61)];
      v64 = &_blt_float[BYTE1(v61)];
      result = &_blt_float[((v53 << v9) | (v53 >> v20)) | v11];
      v65.i32[0] = _blt_float[v62];
      v65.i32[1] = *v63;
      v65.i32[2] = *v64;
      v65.i32[3] = *result;
      v66 = vbslq_s8(v21, vmulq_n_f32(v65, a7.f32[0]), v65);
      if (v66.f32[3] >= 1.0)
      {
        goto LABEL_78;
      }

      if (v66.f32[3] > 0.0)
      {
        break;
      }

LABEL_79:
      v47 += 2;
      ++v12;
      if (!--v48)
      {
        goto LABEL_80;
      }
    }

    v66 = vmlaq_n_f32(v66, vrev32q_s8(*v12), 1.0 - v66.f32[3]);
LABEL_78:
    *v12 = vrev32q_s8(v66);
    goto LABEL_79;
  }

  result = (v14 + 16 * a3);
  a8.i32[0] = 1.0;
  v67 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
  do
  {
    v68 = v10 + (v18 >> v16) * v15;
    if (v8 != 1)
    {
      v75 = (v14 + 16 * a3);
      v76 = a5;
      if (a5 < 1)
      {
        goto LABEL_102;
      }

      while (1)
      {
        v77 = *v75;
        v75 += 2;
        v78 = &v68[v77];
        if (v19 < &v68[v77])
        {
          v78 = v19;
        }

        if (v10 > v78)
        {
          v78 = v10;
        }

        v79 = __ROL4__(*v78, v9);
        v80.i32[0] = _blt_float[HIBYTE(v79)];
        v80.i32[1] = _blt_float[BYTE2(v79)];
        v80.i32[2] = _blt_float[BYTE1(v79)];
        v80.i32[3] = _blt_float[v79 | v11];
        v81 = vbslq_s8(v67, vmulq_n_f32(v80, a7.f32[0]), v80);
        if (v81.f32[3] >= 1.0)
        {
          goto LABEL_100;
        }

        if (v81.f32[3] > 0.0)
        {
          break;
        }

LABEL_101:
        ++v12;
        if (!--v76)
        {
          goto LABEL_102;
        }
      }

      v81 = vmlaq_n_f32(v81, vrev32q_s8(*v12), 1.0 - v81.f32[3]);
LABEL_100:
      *v12 = vrev32q_s8(v81);
      goto LABEL_101;
    }

    if (a5 >= 1)
    {
      v69 = (v14 + 16 * a3);
      v70 = a5;
      do
      {
        v71 = *v69;
        v69 += 2;
        v72 = &v68[v71];
        if (v19 < &v68[v71])
        {
          v72 = v19;
        }

        if (v10 > v72)
        {
          v72 = v10;
        }

        v73 = __ROL4__(*v72, v9);
        v74.i32[0] = _blt_float[HIBYTE(v73)];
        v74.i32[1] = _blt_float[BYTE2(v73)];
        v74.i32[2] = _blt_float[BYTE1(v73)];
        v74.i32[3] = _blt_float[v73 | v11];
        *v12++ = vrev32q_s8(vbslq_s8(v67, vmulq_n_f32(v74, a7.f32[0]), v74));
        --v70;
      }

      while (v70);
    }

LABEL_102:
    v12 += v13;
    v18 += v17;
    --a6;
  }

  while (a6);
  return result;
}

__int32 *RGBAF_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, float32x4_t a7, float32x4_t a8)
{
  a7.i32[0] = a2[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v11 = 0;
  }

  else
  {
    v11 = 255;
  }

  v12 = *(a2 + 2);
  v13 = *(a2 + 3) - a5;
  v15 = *(a2 + 15);
  v14 = *(a2 + 16);
  v16 = *(a2 + 7);
  v17 = *(a2 + 9);
  v18 = *(a2 + 5) + v17 * a4;
  v19 = (v10 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3));
  if (*(a1 + 176))
  {
    v83 = *(a2 + 13);
    v84 = *(a2 + 11);
    v20 = 32 - v9;
    a8.i32[0] = 1.0;
    v21 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
    v82 = v14 + 16 * a3 + 8;
    while (1)
    {
      result = v84;
      if (((v83 - v18) | (v18 - v84)) < 0)
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v23 = ((v18 & ~(-1 << v16)) >> (v16 - 4)) & 0xF;
        result = -v15;
        if (v23 - 7 >= 9)
        {
          v24 = -v15;
        }

        else
        {
          v24 = v15;
        }

        v25 = weights_21890[v23] & 0xF;
      }

      v26 = v10 + (v18 >> v16) * v15;
      if (v8 == 1)
      {
        if (a5 >= 1)
        {
          v27 = v82;
          v28 = a5;
          do
          {
            v30 = *(v27 - 1);
            v29 = *v27;
            v31 = &v26[v30];
            if (v19 >= &v26[v30])
            {
              v32 = &v26[v30];
            }

            else
            {
              v32 = v19;
            }

            if (v10 > v32)
            {
              v32 = v10;
            }

            v33 = bswap32(*v32);
            if ((v29 & 0xF) != 0)
            {
              v34 = &v31[v29 >> 4];
              if (v19 < v34)
              {
                v34 = v19;
              }

              if (v10 > v34)
              {
                v34 = v10;
              }

              v35 = bswap32(*v34);
              if (v25)
              {
                v36 = &v31[v24];
                if (v19 >= v36)
                {
                  v37 = v36;
                }

                else
                {
                  v37 = v19;
                }

                if (v10 > v37)
                {
                  v37 = v10;
                }

                v38 = bswap32(*v37);
                v39 = (v36 + (v29 >> 4));
                if (v19 < v39)
                {
                  v39 = v19;
                }

                if (v10 > v39)
                {
                  v39 = v10;
                }

                v40 = BLEND8_21892[v25];
                v33 = v33 - ((v40 & v33) >> v25) + ((v40 & v38) >> v25);
                v35 = v35 - ((v40 & v35) >> v25) + ((bswap32(*v39) & v40) >> v25);
              }

              v33 = v33 - ((BLEND8_21892[*v27 & 0xF] & v33) >> (*v27 & 0xF)) + ((BLEND8_21892[*v27 & 0xF] & v35) >> (*v27 & 0xF));
            }

            else if (v25)
            {
              v41 = &v31[v24];
              if (v19 < &v31[v24])
              {
                v41 = v19;
              }

              if (v10 > v41)
              {
                v41 = v10;
              }

              v33 = v33 - ((BLEND8_21892[v25] & v33) >> v25) + ((bswap32(*v41) & BLEND8_21892[v25]) >> v25);
            }

            v27 += 2;
            v42 = __ROL4__(v33, v9);
            v43 = HIBYTE(v42);
            v44 = &_blt_float[BYTE2(v42)];
            v45 = &_blt_float[BYTE1(v42)];
            result = &_blt_float[((v33 << v9) | (v33 >> v20)) | v11];
            v46.i32[0] = _blt_float[v43];
            v46.i32[1] = *v44;
            v46.i32[2] = *v45;
            v46.i32[3] = *result;
            *v12++ = vrev32q_s8(vbslq_s8(v21, vmulq_n_f32(v46, a7.f32[0]), v46));
            --v28;
          }

          while (v28);
        }

        goto LABEL_80;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_80:
      v12 += v13;
      v18 += v17;
      if (!--a6)
      {
        return result;
      }
    }

    v47 = v82;
    v48 = a5;
    while (1)
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      v51 = &v26[v49];
      if (v19 >= &v26[v49])
      {
        v52 = &v26[v49];
      }

      else
      {
        v52 = v19;
      }

      if (v10 > v52)
      {
        v52 = v10;
      }

      v53 = bswap32(*v52);
      if ((v50 & 0xF) != 0)
      {
        v54 = &v51[v50 >> 4];
        if (v19 < v54)
        {
          v54 = v19;
        }

        if (v10 > v54)
        {
          v54 = v10;
        }

        v55 = bswap32(*v54);
        if (v25)
        {
          if (v19 >= &v51[v24])
          {
            v56 = &v51[v24];
          }

          else
          {
            v56 = v19;
          }

          if (v10 > v56)
          {
            v56 = v10;
          }

          v57 = bswap32(*v56);
          v58 = &v51[v24 + (v50 >> 4)];
          if (v19 < v58)
          {
            v58 = v19;
          }

          if (v10 > v58)
          {
            v58 = v10;
          }

          v59 = BLEND8_21892[v25];
          v53 = v53 - ((v59 & v53) >> v25) + ((v59 & v57) >> v25);
          v55 = v55 - ((v59 & v55) >> v25) + ((bswap32(*v58) & v59) >> v25);
        }

        v53 = v53 - ((BLEND8_21892[*v47 & 0xF] & v53) >> (*v47 & 0xF)) + ((BLEND8_21892[*v47 & 0xF] & v55) >> (*v47 & 0xF));
      }

      else if (v25)
      {
        v60 = &v51[v24];
        if (v19 < &v51[v24])
        {
          v60 = v19;
        }

        if (v10 > v60)
        {
          v60 = v10;
        }

        v53 = v53 - ((BLEND8_21892[v25] & v53) >> v25) + ((bswap32(*v60) & BLEND8_21892[v25]) >> v25);
      }

      v61 = __ROL4__(v53, v9);
      v62 = HIBYTE(v61);
      v63 = &_blt_float[BYTE2(v61)];
      v64 = &_blt_float[BYTE1(v61)];
      result = &_blt_float[((v53 << v9) | (v53 >> v20)) | v11];
      v65.i32[0] = _blt_float[v62];
      v65.i32[1] = *v63;
      v65.i32[2] = *v64;
      v65.i32[3] = *result;
      v66 = vbslq_s8(v21, vmulq_n_f32(v65, a7.f32[0]), v65);
      if (v66.f32[3] >= 1.0)
      {
        goto LABEL_78;
      }

      if (v66.f32[3] > 0.0)
      {
        break;
      }

LABEL_79:
      v47 += 2;
      ++v12;
      if (!--v48)
      {
        goto LABEL_80;
      }
    }

    v66 = vmlaq_n_f32(v66, vrev32q_s8(*v12), 1.0 - v66.f32[3]);
LABEL_78:
    *v12 = vrev32q_s8(v66);
    goto LABEL_79;
  }

  result = (v14 + 16 * a3);
  a8.i32[0] = 1.0;
  v67 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
  do
  {
    v68 = v10 + (v18 >> v16) * v15;
    if (v8 != 1)
    {
      v75 = (v14 + 16 * a3);
      v76 = a5;
      if (a5 < 1)
      {
        goto LABEL_102;
      }

      while (1)
      {
        v77 = *v75;
        v75 += 2;
        v78 = &v68[v77];
        if (v19 < &v68[v77])
        {
          v78 = v19;
        }

        if (v10 > v78)
        {
          v78 = v10;
        }

        v79 = __ROL4__(bswap32(*v78), v9);
        v80.i32[0] = _blt_float[HIBYTE(v79)];
        v80.i32[1] = _blt_float[BYTE2(v79)];
        v80.i32[2] = _blt_float[BYTE1(v79)];
        v80.i32[3] = _blt_float[v79 | v11];
        v81 = vbslq_s8(v67, vmulq_n_f32(v80, a7.f32[0]), v80);
        if (v81.f32[3] >= 1.0)
        {
          goto LABEL_100;
        }

        if (v81.f32[3] > 0.0)
        {
          break;
        }

LABEL_101:
        ++v12;
        if (!--v76)
        {
          goto LABEL_102;
        }
      }

      v81 = vmlaq_n_f32(v81, vrev32q_s8(*v12), 1.0 - v81.f32[3]);
LABEL_100:
      *v12 = vrev32q_s8(v81);
      goto LABEL_101;
    }

    if (a5 >= 1)
    {
      v69 = (v14 + 16 * a3);
      v70 = a5;
      do
      {
        v71 = *v69;
        v69 += 2;
        v72 = &v68[v71];
        if (v19 < &v68[v71])
        {
          v72 = v19;
        }

        if (v10 > v72)
        {
          v72 = v10;
        }

        v73 = __ROL4__(bswap32(*v72), v9);
        v74.i32[0] = _blt_float[HIBYTE(v73)];
        v74.i32[1] = _blt_float[BYTE2(v73)];
        v74.i32[2] = _blt_float[BYTE1(v73)];
        v74.i32[3] = _blt_float[v73 | v11];
        *v12++ = vrev32q_s8(vbslq_s8(v67, vmulq_n_f32(v74, a7.f32[0]), v74));
        --v70;
      }

      while (v70);
    }

LABEL_102:
    v12 += v13;
    v18 += v17;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t RGBAF_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, float32x4_t a7, float32x4_t a8)
{
  a7.i32[0] = a2[2];
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v14 = *(a2 + 9);
  v15 = *(a2 + 5) + v14 * a4;
  v16 = *(a1 + 32);
  v17 = &v16[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  if (*(a1 + 176))
  {
    v18 = *(a2 + 11);
    result = *(a2 + 13);
    v76 = v11 + 16 * a3 + 8;
    a8.i32[0] = 1.0;
    v20 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
    __asm { FMOV            V3.4S, #1.0 }

    while (1)
    {
      if (((result - v15) | (v15 - v18)) < 0)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = ((v15 & ~(-1 << v13)) >> (v13 - 4)) & 0xF;
        if (v26 - 7 >= 9)
        {
          v27 = -v12;
        }

        else
        {
          v27 = v12;
        }

        v28 = weights_21890[v26] & 0xF;
      }

      v29 = &v16[(v15 >> v13) * v12];
      if (v8 == 1)
      {
        if (a5 >= 1)
        {
          v30 = v76;
          v31 = a5;
          do
          {
            v32 = *v30;
            v33 = &v29[*(v30 - 1)];
            if (v17 >= v33)
            {
              v34 = &v29[*(v30 - 1)];
            }

            else
            {
              v34 = v17;
            }

            if (v16 > v34)
            {
              v34 = v16;
            }

            v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
            if ((v32 & 0xF) != 0)
            {
              v36 = (v33 + (v32 >> 4));
              if (v17 < v36)
              {
                v36 = v17;
              }

              if (v16 > v36)
              {
                v36 = v16;
              }

              v37 = (*v36 << 24) | (v36[1] << 16) | (v36[2] << 8);
              if (v28)
              {
                v38 = (v33 + v27);
                if (v17 >= v38)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = v17;
                }

                if (v16 > v39)
                {
                  v39 = v16;
                }

                v40 = (*v39 << 24) | (v39[1] << 16) | (v39[2] << 8);
                v41 = &v38[v32 >> 4];
                if (v17 < v41)
                {
                  v41 = v17;
                }

                if (v16 > v41)
                {
                  v41 = v16;
                }

                v42 = BLEND8_21892[v28];
                v35 = v35 - ((v42 & v35) >> v28) + ((v42 & v40) >> v28);
                v37 = v37 - ((v42 & v37) >> v28) + ((((*v41 << 24) | (v41[1] << 16) | (v41[2] << 8)) & v42) >> v28);
              }

              v35 = v35 - ((BLEND8_21892[*v30 & 0xF] & v35) >> (*v30 & 0xF)) + ((BLEND8_21892[*v30 & 0xF] & v37) >> (*v30 & 0xF));
            }

            else if (v28)
            {
              v43 = (v33 + v27);
              if (v17 < v43)
              {
                v43 = v17;
              }

              if (v16 > v43)
              {
                v43 = v16;
              }

              v35 = v35 - ((BLEND8_21892[v28] & v35) >> v28) + ((((*v43 << 24) | (v43[1] << 16) | (v43[2] << 8)) & BLEND8_21892[v28]) >> v28);
            }

            v30 += 2;
            v44.i32[3] = HIDWORD(_Q3);
            v44.i32[0] = _blt_float[HIBYTE(v35)];
            v44.i32[1] = _blt_float[BYTE2(v35)];
            v44.i32[2] = _blt_float[BYTE1(v35)];
            *v9++ = vrev32q_s8(vbslq_s8(v20, vmulq_n_f32(v44, a7.f32[0]), v44));
            --v31;
          }

          while (v31);
        }

        goto LABEL_77;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_77:
      v9 += v10;
      v15 += v14;
      if (!--a6)
      {
        return result;
      }
    }

    v45 = v76;
    v46 = a5;
    while (1)
    {
      v47 = *v45;
      v48 = &v29[*(v45 - 1)];
      if (v17 >= v48)
      {
        v49 = &v29[*(v45 - 1)];
      }

      else
      {
        v49 = v17;
      }

      if (v16 > v49)
      {
        v49 = v16;
      }

      v50 = (*v49 << 24) | (v49[1] << 16) | (v49[2] << 8);
      if ((v47 & 0xF) != 0)
      {
        v51 = (v48 + (v47 >> 4));
        if (v17 < v51)
        {
          v51 = v17;
        }

        if (v16 > v51)
        {
          v51 = v16;
        }

        v52 = (*v51 << 24) | (v51[1] << 16) | (v51[2] << 8);
        if (v28)
        {
          v53 = (v48 + v27);
          if (v17 >= v53)
          {
            v54 = v53;
          }

          else
          {
            v54 = v17;
          }

          if (v16 > v54)
          {
            v54 = v16;
          }

          v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
          v56 = &v53[v47 >> 4];
          if (v17 < v56)
          {
            v56 = v17;
          }

          if (v16 > v56)
          {
            v56 = v16;
          }

          v57 = BLEND8_21892[v28];
          v50 = v50 - ((v57 & v50) >> v28) + ((v57 & v55) >> v28);
          v52 = v52 - ((v57 & v52) >> v28) + ((((*v56 << 24) | (v56[1] << 16) | (v56[2] << 8)) & v57) >> v28);
        }

        v50 = v50 - ((BLEND8_21892[*v45 & 0xF] & v50) >> (*v45 & 0xF)) + ((BLEND8_21892[*v45 & 0xF] & v52) >> (*v45 & 0xF));
      }

      else if (v28)
      {
        v58 = (v48 + v27);
        if (v17 < v58)
        {
          v58 = v17;
        }

        if (v16 > v58)
        {
          v58 = v16;
        }

        v50 = v50 - ((BLEND8_21892[v28] & v50) >> v28) + ((((*v58 << 24) | (v58[1] << 16) | (v58[2] << 8)) & BLEND8_21892[v28]) >> v28);
      }

      v59.i32[3] = HIDWORD(_Q3);
      v59.i32[0] = _blt_float[HIBYTE(v50)];
      v59.i32[1] = _blt_float[BYTE2(v50)];
      v59.i32[2] = _blt_float[BYTE1(v50)];
      v60 = vbslq_s8(v20, vmulq_n_f32(v59, a7.f32[0]), v59);
      if (v60.f32[3] >= 1.0)
      {
        goto LABEL_75;
      }

      if (v60.f32[3] > 0.0)
      {
        break;
      }

LABEL_76:
      v45 += 2;
      ++v9;
      if (!--v46)
      {
        goto LABEL_77;
      }
    }

    v60 = vmlaq_n_f32(v60, vrev32q_s8(*v9), 1.0 - v60.f32[3]);
LABEL_75:
    *v9 = vrev32q_s8(v60);
    goto LABEL_76;
  }

  v61 = (v11 + 16 * a3);
  result = a5;
  a8.i32[0] = 1.0;
  v62 = vdupq_lane_s32(*&vcgtq_f32(a8, a7), 0);
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v64 = &v16[(v15 >> v13) * v12];
    if (v8 != 1)
    {
      v70 = v61;
      v71 = a5;
      if (a5 < 1)
      {
        goto LABEL_99;
      }

      while (1)
      {
        v72 = *v70;
        v70 += 2;
        v73 = &v64[v72];
        if (v17 < &v64[v72])
        {
          v73 = v17;
        }

        if (v16 > v73)
        {
          v73 = v16;
        }

        v74.i32[3] = HIDWORD(_Q3);
        v74.i32[0] = _blt_float[*v73];
        v74.i32[1] = _blt_float[v73[1]];
        v74.i32[2] = _blt_float[v73[2]];
        v75 = vbslq_s8(v62, vmulq_n_f32(v74, a7.f32[0]), v74);
        if (v75.f32[3] >= 1.0)
        {
          goto LABEL_97;
        }

        if (v75.f32[3] > 0.0)
        {
          break;
        }

LABEL_98:
        ++v9;
        if (!--v71)
        {
          goto LABEL_99;
        }
      }

      v75 = vmlaq_n_f32(v75, vrev32q_s8(*v9), 1.0 - v75.f32[3]);
LABEL_97:
      *v9 = vrev32q_s8(v75);
      goto LABEL_98;
    }

    if (a5 >= 1)
    {
      v65 = v61;
      v66 = a5;
      do
      {
        v67 = *v65;
        v65 += 2;
        v68 = &v64[v67];
        if (v17 < &v64[v67])
        {
          v68 = v17;
        }

        if (v16 > v68)
        {
          v68 = v16;
        }

        v69.i32[3] = HIDWORD(_Q3);
        v69.i32[0] = _blt_float[*v68];
        v69.i32[1] = _blt_float[v68[1]];
        v69.i32[2] = _blt_float[v68[2]];
        *v9++ = vrev32q_s8(vbslq_s8(v62, vmulq_n_f32(v69, a7.f32[0]), v69));
        --v66;
      }

      while (v66);
    }

LABEL_99:
    v9 += v10;
    v15 += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t RGBAF_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, int32x4_t _Q2, double a10, double a11, int8x16_t a12)
{
  v12 = *(a2 + 2);
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = *(a2 + 3) - a5;
  v17 = *(a2 + 15);
  v16 = *(a2 + 16);
  v18 = *(a2 + 7);
  v19 = *(a2 + 9);
  v20 = *(a2 + 5) + v19 * a4;
  v21 = *(a1 + 32);
  v22 = &v21[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  if (*(a1 + 176))
  {
    v23 = *(a2 + 11);
    result = *(a2 + 13);
    v25 = v16 + 16 * a3 + 8;
    __asm { FMOV            V2.2S, #1.0 }

    v30 = vcltz_s32(vshl_n_s32(vdup_n_s32(v12 < 1.0), 0x1FuLL));
    while (1)
    {
      if (((result - v20) | (v20 - v23)) < 0)
      {
        v33 = 0;
        v32 = 0;
      }

      else
      {
        v31 = ((v20 & ~(-1 << v18)) >> (v18 - 4)) & 0xF;
        if (v31 - 7 >= 9)
        {
          v32 = -v17;
        }

        else
        {
          v32 = v17;
        }

        v33 = weights_21890[v31] & 0xF;
      }

      v34 = &v21[(v20 >> v18) * v17];
      if (LODWORD(v13) == 1)
      {
        if (a5 >= 1)
        {
          v35 = v25;
          v36 = a5;
          do
          {
            v37 = *v35;
            v38 = &v34[*(v35 - 1)];
            if (v22 >= v38)
            {
              v39 = &v34[*(v35 - 1)];
            }

            else
            {
              v39 = v22;
            }

            if (v21 > v39)
            {
              v39 = v21;
            }

            v40 = *v39;
            if ((v37 & 0xF) != 0)
            {
              v41 = (v38 + (v37 >> 4));
              if (v22 < v41)
              {
                v41 = v22;
              }

              if (v21 > v41)
              {
                v41 = v21;
              }

              v42 = *v41;
              if (v33)
              {
                v43 = (v38 + v32);
                if (v22 >= v43)
                {
                  v44 = v43;
                }

                else
                {
                  v44 = v22;
                }

                if (v21 > v44)
                {
                  v44 = v21;
                }

                v45 = *v44;
                v46 = &v43[v37 >> 4];
                if (v22 < v46)
                {
                  v46 = v22;
                }

                if (v21 > v46)
                {
                  v46 = v21;
                }

                v47 = BLEND8_21892[v33];
                v40 = v40 - ((v47 & v40) >> v33) + ((v47 & v45) >> v33);
                v42 = v42 - ((v47 & v42) >> v33) + ((v47 & *v46) >> v33);
              }

              v40 = v40 - ((BLEND8_21892[*v35 & 0xF] & v40) >> (*v35 & 0xF)) + ((BLEND8_21892[*v35 & 0xF] & v42) >> (*v35 & 0xF));
            }

            else if (v33)
            {
              v48 = (v38 + v32);
              if (v22 < v48)
              {
                v48 = v22;
              }

              if (v21 > v48)
              {
                v48 = v21;
              }

              v40 = v40 - ((BLEND8_21892[v33] & v40) >> v33) + ((BLEND8_21892[v33] & *v48) >> v33);
            }

            v35 += 2;
            v49 = _Q2;
            v49.i32[0] = _blt_float[v40];
            *v49.i8 = vrev32_s8(vbsl_s8(v30, vmul_n_f32(*v49.i8, v12), *v49.i8));
            a12 = vzip1q_s32(v49, v49);
            a12.i32[2] = v49.i32[0];
            *v14++ = a12;
            --v36;
          }

          while (v36);
        }

        goto LABEL_78;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_78:
      v14 += v15;
      v20 += v19;
      if (!--a6)
      {
        return result;
      }
    }

    v50 = v25;
    v51 = a5;
    while (1)
    {
      v52 = *v50;
      v53 = &v34[*(v50 - 1)];
      if (v22 >= v53)
      {
        v54 = &v34[*(v50 - 1)];
      }

      else
      {
        v54 = v22;
      }

      if (v21 > v54)
      {
        v54 = v21;
      }

      v55 = *v54;
      if ((v52 & 0xF) != 0)
      {
        v56 = (v53 + (v52 >> 4));
        if (v22 < v56)
        {
          v56 = v22;
        }

        if (v21 > v56)
        {
          v56 = v21;
        }

        v57 = *v56;
        if (v33)
        {
          v58 = (v53 + v32);
          if (v22 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v22;
          }

          if (v21 > v59)
          {
            v59 = v21;
          }

          v60 = *v59;
          v61 = &v58[v52 >> 4];
          if (v22 < v61)
          {
            v61 = v22;
          }

          if (v21 > v61)
          {
            v61 = v21;
          }

          v62 = BLEND8_21892[v33];
          v55 = v55 - ((v62 & v55) >> v33) + ((v62 & v60) >> v33);
          v57 = v57 - ((v62 & v57) >> v33) + ((v62 & *v61) >> v33);
        }

        v55 = v55 - ((BLEND8_21892[*v50 & 0xF] & v55) >> (*v50 & 0xF)) + ((BLEND8_21892[*v50 & 0xF] & v57) >> (*v50 & 0xF));
      }

      else if (v33)
      {
        v63 = (v53 + v32);
        if (v22 < v63)
        {
          v63 = v22;
        }

        if (v21 > v63)
        {
          v63 = v21;
        }

        v55 = v55 - ((BLEND8_21892[v33] & v55) >> v33) + ((BLEND8_21892[v33] & *v63) >> v33);
      }

      v64 = _Q2;
      v64.i32[0] = _blt_float[v55];
      *v64.i8 = vbsl_s8(v30, vmul_n_f32(*v64.i8, v12), *v64.i8);
      if (*&v64.i32[1] >= 1.0)
      {
        break;
      }

      if (*&v64.i32[1] > 0.0)
      {
        v65 = vzip1q_s32(v64, v64);
        v65.i32[2] = v64.i32[0];
        a12 = vrev32q_s8(*v14);
        v66 = vrev32q_s8(vmlaq_n_f32(v65, a12, 1.0 - *&v64.i32[1]));
LABEL_76:
        *v14 = v66;
      }

      v50 += 2;
      ++v14;
      if (!--v51)
      {
        goto LABEL_78;
      }
    }

    *a12.i8 = vrev32_s8(*v64.i8);
    v66 = vzip1q_s32(a12, a12);
    v66.i32[2] = a12.i32[0];
    goto LABEL_76;
  }

  v67 = (v16 + 16 * a3);
  result = a5;
  __asm { FMOV            V2.2S, #1.0 }

  v68 = vcltz_s32(vshl_n_s32(vdup_n_s32(v12 < 1.0), 0x1FuLL));
  do
  {
    v69 = &v21[(v20 >> v18) * v17];
    if (LODWORD(v13) != 1)
    {
      v75 = v67;
      v76 = a5;
      if (a5 < 1)
      {
        goto LABEL_101;
      }

      while (1)
      {
        v77 = *v75;
        v75 += 2;
        v78 = &v69[v77];
        if (v22 < &v69[v77])
        {
          v78 = v22;
        }

        if (v21 > v78)
        {
          v78 = v21;
        }

        v79 = _Q2;
        v79.i32[0] = _blt_float[*v78];
        *v79.i8 = vbsl_s8(v68, vmul_n_f32(*v79.i8, v12), *v79.i8);
        if (*&v79.i32[1] >= 1.0)
        {
          break;
        }

        if (*&v79.i32[1] > 0.0)
        {
          v80 = vzip1q_s32(v79, v79);
          v80.i32[2] = v79.i32[0];
          a12 = vrev32q_s8(*v14);
          v81 = vrev32q_s8(vmlaq_n_f32(v80, a12, 1.0 - *&v79.i32[1]));
LABEL_99:
          *v14 = v81;
        }

        ++v14;
        if (!--v76)
        {
          goto LABEL_101;
        }
      }

      *a12.i8 = vrev32_s8(*v79.i8);
      v81 = vzip1q_s32(a12, a12);
      v81.i32[2] = a12.i32[0];
      goto LABEL_99;
    }

    if (a5 >= 1)
    {
      v70 = v67;
      v71 = a5;
      do
      {
        v72 = *v70;
        v70 += 2;
        v73 = &v69[v72];
        if (v22 < &v69[v72])
        {
          v73 = v22;
        }

        if (v21 > v73)
        {
          v73 = v21;
        }

        v74 = _Q2;
        v74.i32[0] = _blt_float[*v73];
        *v74.i8 = vrev32_s8(vbsl_s8(v68, vmul_n_f32(*v74.i8, v12), *v74.i8));
        a12 = vzip1q_s32(v74, v74);
        a12.i32[2] = v74.i32[0];
        *v14++ = a12;
        --v71;
      }

      while (v71);
    }

LABEL_101:
    v14 += v15;
    v20 += v19;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t RGBAF_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v20[482] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v8 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v9 = *(*(*v2 + 56) + 16 * *v3 + 8 * v8 + 4 * (*(v3 + 6) == 0));
  if (v9 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, &v13, v18) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) != 0x3000000)
  {
    if (v13)
    {
      goto LABEL_22;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(v5 + 16))
  {
    v12 = RGBAf_shade_radial_RGB;
  }

  else if (*(v5 + 24))
  {
    v12 = RGBAf_shade_conic_RGB;
  }

  else if (v16 < 2)
  {
    v12 = RGBAf_shade_axial_RGB;
  }

  else
  {
    v12 = RGBAf_shade_custom_RGB;
  }

  v13 = v12;
LABEL_22:
  v14 = *v7;
  v15 = v14;
  RGBAF_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

uint16x4_t *CGSConvertBitsToMask(uint16x4_t *result, int a2, _BYTE *a3, int a4, int a5, int a6, int a7)
{
  if (a7 > 15)
  {
    if (a7 == 16)
    {
      v20.i64[0] = 0x1000000010;
      v20.i64[1] = 0x1000000010;
      do
      {
        if (a5 >= 4)
        {
          v21 = a5 >> 2;
          do
          {
            v22 = *result++;
            v23 = vand_s8(vshr_n_u16(v22, 2uLL), 0xF800F800F800F8);
            *a3 = vuzp1_s8(vshr_n_u16(vmovn_s32(vmull_u16(vmovn_s32(vaddw_u16(v20, v23)), v23)), 8uLL), 0xF800F800F800F8).u32[0];
            a3 += 4;
            --v21;
          }

          while (v21);
        }

        if ((a5 & 3) != 0)
        {
          v24 = a5 & 3;
          do
          {
            v25 = result->u16[0];
            result = (result + 2);
            *a3++ = ((((v25 >> 2) & 0xF8) + 16) * ((v25 >> 2) & 0xF8)) >> 8;
            --v24;
          }

          while (v24);
        }

        result = (result + a2 - (2 * a5));
        a3 += a4 - a5;
        --a6;
      }

      while (a6);
    }

    else if (a7 == 32)
    {
      do
      {
        if (a5 >= 4)
        {
          v10 = a5 >> 2;
          do
          {
            v11 = *result->i8;
            result += 2;
            v12 = vmovn_s32(v11);
            *a3 = vuzp1_s8(v12, v12).u32[0];
            a3 += 4;
            --v10;
          }

          while (v10);
        }

        if ((a5 & 3) != 0)
        {
          v13 = a5 & 3;
          do
          {
            v14 = result->i32[0];
            result = (result + 4);
            *a3++ = v14;
            --v13;
          }

          while (v13);
        }

        result = (result + a2 - (4 * a5));
        a3 += a4 - a5;
        --a6;
      }

      while (a6);
    }
  }

  else if (a7 == 1)
  {
    v15 = a5 + 3;
    do
    {
      if (v15 >= 8)
      {
        v16 = v15 >> 3;
        do
        {
          v17 = result->u8[0];
          result = (result + 1);
          v18 = _LUT[v17 & 0xF];
          *a3 = *(_LUT + ((v17 >> 2) & 0x3C));
          *(a3 + 1) = v18;
          a3 += 8;
          --v16;
        }

        while (v16);
      }

      if ((v15 & 4) != 0)
      {
        v19 = result->u8[0];
        result = (result + 1);
        *a3 = *(_LUT + ((v19 >> 2) & 0x3C));
        a3 += 4;
      }

      result = (result + a2 - (((v15 & 0xFFFFFFFC) + 7) >> 3));
      a3 += a4 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
      --a6;
    }

    while (a6);
  }

  else if (a7 == 4)
  {
    do
    {
      if (a5 >= 2)
      {
        v7 = a5 >> 1;
        do
        {
          v8 = result->u8[0];
          result = (result + 1);
          a3[1] = v8 & 0xF | (16 * v8);
          *a3 = v8 & 0xF0 | (v8 >> 4);
          a3 += 2;
          --v7;
        }

        while (v7);
      }

      if (a5)
      {
        v9 = result->u8[0];
        result = (result + 1);
        *a3++ = v9 & 0xF0 | (v9 >> 4);
      }

      result = (result + a2 - ((a5 + 1) >> 1));
      a3 += a4 - a5;
      --a6;
    }

    while (a6);
  }

  return result;
}

void *cg_function_type3_create(CGPDFDictionary *a1)
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x10800402B99548FuLL);
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!CGPDFDictionaryGetNumbers(a1, "Domain", result + 8, 2))
  {
LABEL_29:
    goto LABEL_33;
  }

  array = 0;
  value = 0;
  *v3 = 1;
  if (!CGPDFDictionaryGetArray(a1, "Functions", &array))
  {
    goto LABEL_33;
  }

  if (!array)
  {
    *(v3 + 40) = 0;
    goto LABEL_32;
  }

  v4 = *(array + 2);
  v5 = *(array + 3);
  *(v3 + 40) = (v5 - v4) >> 3;
  if (v5 == v4)
  {
LABEL_32:
    goto LABEL_33;
  }

  v6 = malloc_type_calloc(1uLL, v5 - v4, 0x2004093837F09uLL);
  *(v3 + 48) = v6;
  if (!v6)
  {
LABEL_33:
    type3_release(v3);
    return 0;
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      next_dictionary = a1;
      v10 = a1;
      if (!CGPDFArrayGetObject(array, v8, &value))
      {
        goto LABEL_32;
      }

      while (next_dictionary && v10)
      {
        next_dictionary = get_next_dictionary(next_dictionary);
        v11 = get_next_dictionary(v10);
        v12 = get_next_dictionary(v11);
        v10 = v12;
        if (next_dictionary && next_dictionary == v12)
        {
          Function = 0;
          goto LABEL_16;
        }
      }

      Function = CGPDFFunctionCreateFunction(value);
LABEL_16:
      *(*(v3 + 48) + 8 * v8) = Function;
      v6 = *(v3 + 48);
      if (!v6[v8])
      {
        goto LABEL_33;
      }

      ++v8;
      v7 = *(v3 + 40);
      if (v8 >= v7)
      {
        if (v7 >= 2 && *(v3 + 8) >= *(v3 + 16))
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v14 = *v6;
  if (*v6)
  {
    v14 = *(v14 + 48);
  }

  *(v3 + 24) = v14;
  if (v7 >= 2)
  {
    v15 = v6 + 1;
    v16 = v7 - 1;
    while (1)
    {
      v17 = *v15;
      if (*v15)
      {
        v17 = *(v17 + 48);
      }

      if (v14 != v17)
      {
        goto LABEL_32;
      }

      ++v15;
      if (!--v16)
      {
        goto LABEL_36;
      }
    }
  }

  if (v7)
  {
LABEL_36:
    while (*v6 && *(*v6 + 32) == 1)
    {
      ++v6;
      if (!--v7)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_32;
  }

LABEL_39:
  v18 = malloc_type_malloc(16 * v14, 0x100004000313F17uLL);
  *(v3 + 32) = v18;
  if (!v18)
  {
    goto LABEL_33;
  }

  if (!CGPDFDictionaryGetNumbers(a1, "Range", v18, 2 * *(v3 + 24)))
  {
    free(*(v3 + 32));
    *(v3 + 32) = 0;
  }

  v19 = malloc_type_malloc(8 * *(v3 + 40) - 8, 0x100004000313F17uLL);
  *(v3 + 56) = v19;
  if (!v19)
  {
    goto LABEL_33;
  }

  if (!CGPDFDictionaryGetNumbers(a1, "Bounds", v19, *(v3 + 40) - 1))
  {
    goto LABEL_33;
  }

  v20 = *(v3 + 40);
  if (v20 >= 2)
  {
    v21 = *(v3 + 56);
    v22 = *v21;
    if (*(v3 + 8) > *v21)
    {
      goto LABEL_52;
    }

    v23 = v21 + 1;
    v24 = v20 - 2;
    while (v24)
    {
      v25 = *v23++;
      --v24;
      v26 = v22 <= v25;
      v22 = v25;
      if (!v26)
      {
        goto LABEL_52;
      }
    }

    if (v21[v20 - 2] > *(v3 + 16))
    {
LABEL_52:
      goto LABEL_33;
    }
  }

  v27 = malloc_type_malloc(16 * v20, 0x100004000313F17uLL);
  *(v3 + 64) = v27;
  if (!v27)
  {
    goto LABEL_33;
  }

  if (!CGPDFDictionaryGetNumbers(a1, "Encode", v27, 2 * *(v3 + 40)))
  {
    goto LABEL_33;
  }

  result = CGFunctionCreate(v3, *v3, (v3 + 8), *(v3 + 24), *(v3 + 32), &type3_callbacks);
  if (!result)
  {
    pdf_error("unable to create Type 3 function.");
    goto LABEL_33;
  }

  return result;
}

void type3_release(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 32));
    free(*(a1 + 56));
    free(*(a1 + 64));
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          v5 = *(*(a1 + 48) + 8 * i);
          if (v5)
          {
            CFRelease(v5);
            v3 = *(a1 + 40);
          }
        }

        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(a1);
  }
}

CGPDFDictionary *get_next_dictionary(CGPDFDictionary *result)
{
  if (result)
  {
    value = 0;
    if (CGPDFDictionaryGetArray(result, "Functions", &value) && value && (v1 = *(value + 3) - *(value + 2)) != 0)
    {
      v2 = 0;
      v3 = v1 >> 3;
      while (1)
      {
        v4 = 0;
        if (CGPDFArrayGetObject(value, v2, &v4) && v4 && v4[2] == 8)
        {
          break;
        }

        if (v3 == ++v2)
        {
          return 0;
        }
      }

      return *(v4 + 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t type3_evaluate(uint64_t result, unint64_t *a2, double *a3, __n128 a4)
{
  if (result)
  {
    a4.n128_u64[0] = *a2;
    v4 = *(result + 40);
    if (v4 == 1)
    {
      a4.n128_f64[0] = **(result + 64) + (a4.n128_f64[0] - *(result + 8)) * (*(*(result + 64) + 8) - **(result + 64)) / (*(result + 16) - *(result + 8));
      v19 = a4.n128_u64[0];
      v5 = *(result + 48);
    }

    else
    {
      v6 = 0;
      v7 = *(result + 56);
      while (1)
      {
        v8 = v7[v6];
        if (a4.n128_f64[0] < v8)
        {
          break;
        }

        if (v4 - 1 == ++v6)
        {
          v9 = v7[v4 - 2];
          v10 = *(result + 16);
          v11 = *(result + 64) + 16 * v4;
          if (v9 == v10)
          {
            v19 = *(v11 - 16);
          }

          else
          {
            a4.n128_f64[0] = *(v11 - 16) + (a4.n128_f64[0] - v9) * (*(v11 - 8) - *(v11 - 16)) / (v10 - v9);
            v19 = a4.n128_u64[0];
          }

          v6 = v4 - 1;
          goto LABEL_15;
        }
      }

      if (v6)
      {
        v12 = v7[v6 - 1];
        v13 = (*(result + 64) + 16 * v6);
        v14 = *v13;
        v15 = (a4.n128_f64[0] - v12) * (v13[1] - *v13);
        v16 = v8 - v12;
      }

      else
      {
        v17 = *(result + 8);
        v18 = *(result + 64);
        v14 = *v18;
        v15 = (a4.n128_f64[0] - v17) * (v18[1] - *v18);
        v16 = *v7 - v17;
      }

      a4.n128_f64[0] = v14 + v15 / v16;
      v19 = a4.n128_u64[0];
LABEL_15:
      v5 = (*(result + 48) + 8 * v6);
    }

    return CGFunctionEvaluate(*v5, &v19, a3, a4);
  }

  return result;
}

CGMutablePathRef CGPathCreateCopyByRoundingCornersDebug(CGPathRef path, int a2, double a3)
{
  v310 = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {

    return CGPathCreateMutableCopy(path);
  }

  else
  {
    v4 = a3;
    BoundingBox = CGPathGetBoundingBox(path);
    v256 = 0u;
    v257 = 0u;
    v255 = 0u;
    clipper_transform_for_bounds(BoundingBox, &v255);
    memset(&v254, 0, sizeof(v254));
    *v271 = v255;
    *&v271[16] = v256;
    *&v271[32] = v257;
    CGAffineTransformInvert(&v254, v271);
    memset(v253, 0, sizeof(v253));
    *v271 = v255;
    *&v271[16] = v256;
    *&v271[32] = v257;
    CGPathRandomAccess::add_path(v253, path, v271, 1);
    v312.length = v5;
    v7 = v6;
    *v271 = v255;
    *&v271[16] = v256;
    *&v271[32] = v257;
    v312.location = v253;
    CGPathRandomAccess::clipper_paths_for_subpath_range(&v251, v312, v7, v271, 1);
    v286 = 0;
    v285 = 0;
    v287 = 0;
    v289 = 0;
    v291 = 0;
    v290 = 0;
    v282 = 0u;
    v283 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0;
    *v271 = &unk_1EF23C1F0;
    v281 = &unk_1EF23C238;
    v276 = 0;
    v275 = 0;
    v277 = 0;
    v284 = 0;
    memset(&v271[8], 0, 48);
    v272 = 0u;
    v274 = 0;
    v273 = 0;
    v278 = 0;
    v279 = 0;
    v280 = clipper_interpolate_intersection_metadata;
    v288 = 1;
    v8 = v251;
    if (v252 != v251)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v281[2](&v281, v8 + v9, 0, 1);
        ++v10;
        v8 = v251;
        v9 += 24;
      }

      while (v10 < 0xAAAAAAAAAAAAAAABLL * ((v252 - v251) >> 3));
    }

    v248 = 0;
    v249 = 0;
    v250 = 0;
    ClipperLib::Clipper::Execute(v271, 1, &v248, 1, 1);
    v12 = v248;
    v11 = v249;
    if (v248 != v249)
    {
      v216 = v249;
      do
      {
        v13 = v12[1] - *v12;
        if (v13)
        {
          v245 = 0;
          v246 = 0;
          v247 = 0;
          v242 = 0;
          v243 = 0;
          v244 = 0;
          v303.a = 0.0;
          if (v13 < 1)
          {
            v43 = 0;
            v44 = 0;
            v240 = 0.0;
            v241 = 0uLL;
          }

          else
          {
            v14 = 0;
            v15 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
            if (v15 <= 1)
            {
              v16 = 1;
            }

            else
            {
              v16 = v15;
            }

            v17 = -1;
            v18 = 1;
            do
            {
              v19 = *v12;
              v20 = 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 4);
              if (v20 <= v14)
              {
                goto LABEL_233;
              }

              v21 = v19 + 48 * v14;
              if (*(v21 + 24) == *(v21 + 24))
              {
                v22 = *v21;
                v23 = *(v21 + 8);
                v24 = v17;
                while (1)
                {
                  v25 = (v24 % v20 + v20) % v20;
                  if (v25 == v14)
                  {
                    break;
                  }

                  if (v20 <= v25)
                  {
                    goto LABEL_233;
                  }

                  v26 = (v19 + 48 * v25);
                  v27 = (v22 - *v26);
                  v28 = (v23 - v26[1]);
                  v29 = v28 * v28 + v27 * v27;
                  --v24;
                  if (v29 >= 250000.0)
                  {
                    v30 = v18;
                    while (1)
                    {
                      v31 = (v30 % v20 + v20) % v20;
                      if (v31 == v14)
                      {
                        goto LABEL_27;
                      }

                      if (v20 <= v31)
                      {
                        goto LABEL_233;
                      }

                      v32 = (v19 + 48 * v31);
                      v33 = (*v32 - v22);
                      v34 = (v32[1] - v23);
                      v35 = v34 * v34 + v33 * v33;
                      ++v30;
                      if (v35 >= 250000.0)
                      {
                        v36 = sqrt(v29);
                        v37 = v27 / v36;
                        v38 = v28 / v36;
                        v39 = sqrt(v35);
                        v40 = v33 / v39;
                        if (v38 * (v34 / v39) + v37 * v40 < 0.965925826)
                        {
                          if (v37 * (v34 / v39) - v38 * v40 > 0.0)
                          {
                            std::vector<long long>::push_back[abi:fe200100](&v245, &v303);
                          }

                          std::vector<long long>::push_back[abi:fe200100](&v242, &v303);
                        }

                        goto LABEL_27;
                      }
                    }
                  }
                }
              }

LABEL_27:
              *&v303.a = ++v14;
              ++v17;
              ++v18;
            }

            while (v14 != v16);
            v41 = v245;
            v42 = v246;
            v240 = 0.0;
            v241 = 0uLL;
            if (v245 == v246)
            {
              v43 = 0;
              v44 = 0;
            }

            else
            {
              v43 = 0;
              v44 = 0;
              do
              {
                v45 = *v41;
                memset(__src, 0, 47);
                v306 = 0u;
                v307 = 0u;
                v304 = 0u;
                v305 = 0u;
                memset(&v303, 0, sizeof(v303));
                v46 = v44 - v43;
                v47 = 0xD37A6F4DE9BD37A7 * ((v44 - v43) >> 3);
                v48 = v47 + 1;
                if (v47 + 1 > 0x1642C8590B21642)
                {
                  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                }

                v49 = v43;
                if (0xA6F4DE9BD37A6F4ELL * (-v43 >> 3) > v48)
                {
                  v48 = 0xA6F4DE9BD37A6F4ELL * (-v43 >> 3);
                }

                if (0xD37A6F4DE9BD37A7 * (-v43 >> 3) >= 0xB21642C8590B21)
                {
                  v50 = 0x1642C8590B21642;
                }

                else
                {
                  v50 = v48;
                }

                if (v50)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<CornerRoundingInfo>>(v50);
                }

                v51 = 184 * v47;
                *v51 = v45;
                *(v51 + 8) = xmmword_18439CB20;
                v44 = 184 * v47 + 184;
                v52 = ((v46 * 0x4DE9BD37A6F4DE9BLL) >> 64) - v46;
                *(v51 + 24) = 0u;
                *(v51 + 40) = 0u;
                *(v51 + 56) = 0u;
                *(v51 + 72) = 0u;
                *(v51 + 88) = 0u;
                *(v51 + 104) = 0u;
                v53 = (v51 + 184 * ((v52 >> 7) + (v52 >> 63)));
                *(v51 + 120) = 0u;
                *(v51 + 136) = 0u;
                *(v51 + 152) = 0u;
                *(v51 + 168) = 0u;
                memcpy(v53, v43, v46);
                if (v49)
                {
                  operator delete(v49);
                }

                v43 = v53;
                ++v41;
              }

              while (v41 != v42);
            }
          }

          v217 = *v12;
          v218 = v12[1];
          v234 = v12;
          v54 = a2;
          if (a2 < 1)
          {
            v54 = 1000;
          }

          a2 = v54;
          v238 = 0;
          v239 = 0;
          v237 = 0;
          __p = v43;
          std::vector<CornerRoundingInfo>::__init_with_size[abi:fe200100]<CornerRoundingInfo*,CornerRoundingInfo*>(&v237, v43, v44, 0xD37A6F4DE9BD37A7 * ((v44 - v43) >> 3));
          v55 = v237;
          v235 = v237;
          v236 = v238;
          v56 = 0xD37A6F4DE9BD37A7 * ((v238 - v237) >> 3);
          if (v56 <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = 0xD37A6F4DE9BD37A7 * ((v238 - v237) >> 3);
          }

          v231 = v238 - v237;
          if (v238 - v237 >= 1)
          {
            a = v254.a;
            b = v254.b;
            c = v254.c;
            d = v254.d;
            tx = v254.tx;
            ty = v254.ty;
            v64 = 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 4);
            v220 = v57;
            v65 = 0xD37A6F4DE9BD37A7 * ((v238 - v237) >> 3);
            do
            {
              if (!v65)
              {
                goto LABEL_233;
              }

              v303.a = a;
              v303.b = b;
              v303.c = c;
              v303.d = d;
              v303.tx = tx;
              v303.ty = ty;
              CornerRoundingInfo::compute_circle(v55, *v12, v12[1], &v303, v4);
              --v65;
              v55 += 184;
              --v57;
            }

            while (v57);
            v229 = 1;
            v67 = v242;
            v66 = v243;
            v68 = v220;
            while (2)
            {
              v69 = 0;
              v70 = 1;
              v71 = -1;
              v72 = v235;
              v73 = v4;
              do
              {
                if (v56 == v69)
                {
                  goto LABEL_233;
                }

                if ((*(v72 + 24) & 1) == 0)
                {
                  v265 = 0;
                  v264 = 0;
                  v266 = 0;
                  std::vector<CornerRoundingInfo>::__init_with_size[abi:fe200100]<CornerRoundingInfo*,CornerRoundingInfo*>(&v264, v235, v236, v56);
                  v74 = v264;
                  CornerRoundingInfo::fit_circle(v72, v67, v66, v64, v264, v265, v69, v4);
                  if (v74)
                  {
                    v265 = v74;
                    operator delete(v74);
                  }

                  if ((*(v72 + 168) & 1) != 0 || *(v72 + 169) == 1)
                  {
                    v70 = 0;
                    if (v73 <= *(v72 + 176))
                    {
                      if (v71 == -1)
                      {
                        v71 = v69;
                      }
                    }

                    else
                    {
                      v71 = v69;
                      v73 = *(v72 + 176);
                    }
                  }
                }

                ++v69;
                v72 += 184;
              }

              while (v68 != v69);
              v75 = v70 | (v229 >= a2);
              v55 = v235;
              if ((v75 & 1) == 0)
              {
                v76 = 0;
                v77 = v235;
                do
                {
                  if (v56 == v76)
                  {
                    goto LABEL_233;
                  }

                  if ((*(v77 + 24) & 1) == 0 && v71 != v76)
                  {
                    v262 = 0;
                    v261 = 0;
                    v263 = 0;
                    std::vector<CornerRoundingInfo>::__init_with_size[abi:fe200100]<CornerRoundingInfo*,CornerRoundingInfo*>(&v261, v235, v236, v56);
                    v78 = v261;
                    CornerRoundingInfo::fit_circle(v77, v67, v66, v64, v261, v262, v76, v73);
                    if (v78)
                    {
                      v262 = v78;
                      operator delete(v78);
                    }
                  }

                  ++v76;
                  v77 += 184;
                }

                while (v68 != v76);
                if (v71 == -1)
                {
                  goto LABEL_143;
                }

                if (v56 <= v71)
                {
LABEL_233:
                  __break(1u);
                }

                v79 = &v235[184 * v71];
                if (*(v79 + 24))
                {
                  goto LABEL_143;
                }

                v80 = 0;
                *__src = *(v79 + 112);
                *&__src[16] = *(v79 + 128);
                *&__src[32] = *(v79 + 144);
                v309 = *(v79 + 160);
                v304 = *(v79 + 48);
                v305 = *(v79 + 64);
                v306 = *(v79 + 80);
                v307 = *(v79 + 96);
                v303 = *v79;
                v227 = *(v79 + 176);
                if (v71 == v56 - 1)
                {
                  v81 = 0;
                }

                else
                {
                  v81 = v71 + 1;
                }

                if (v71)
                {
                  v82 = v71;
                }

                else
                {
                  v82 = v56;
                }

                v222 = v81;
                v83 = &v235[184 * v81];
                v224 = &v235[184 * v82 - 184];
                v225 = v82 - 1;
LABEL_84:
                if (*(v79 + 168) == 1)
                {
                  if (v56 <= v225)
                  {
                    goto LABEL_233;
                  }

                  v84 = *v79;
                  v85 = *(v79 + 8);
                  v86 = *v224;
                  if (v231 != 184 && (v224[169] & 1) == 0)
                  {
                    v87 = v85 + v84;
                    v88 = (v87 % v64 + v64) % v64;
                    v89 = ((*(v224 + 2) + v86) % v64 + v64) % v64;
                    goto LABEL_95;
                  }

                  v87 = v85 + v84;
                  v88 = (v87 % v64 + v64) % v64;
                  v89 = ((*(v224 + 2) + v86) % v64 + v64) % v64;
                  if (v88 != v89)
                  {
LABEL_95:
                    v96 = v89 - v88;
                    if (v89 >= v88)
                    {
                      if (v89 <= v88)
                      {
                        v96 = 0;
                      }

                      else
                      {
                        v96 = v89 - (v64 + v88);
                      }
                    }

                    if (v67 != v66)
                    {
                      v98 = v67;
                      do
                      {
                        v99 = *v98++;
                        v100 = (v99 % v64 + v64) % v64;
                        v101 = v100 - (v88 + v64);
                        v102 = v100 <= v88;
                        v103 = v100 - v88;
                        if (v102)
                        {
                          v101 = 0;
                        }

                        if (!v102)
                        {
                          v103 = v101;
                        }

                        if (v96 <= v103)
                        {
                          v96 = v103;
                        }
                      }

                      while (v98 != v66);
                    }

                    if (v96 < 0)
                    {
                      v267.f64[0] = a;
                      v267.f64[1] = b;
                      *&v268 = c;
                      *(&v268 + 1) = d;
                      v104 = ((v96 + v87) % v64 + v64) % v64;
                      v269 = tx;
                      v270 = ty;
                      v105 = (v79 + 8);
                      v106 = &v235[184 * v71];
                      v107 = -1;
                      goto LABEL_125;
                    }
                  }

                  goto LABEL_126;
                }

                if (*(v79 + 169) == 1)
                {
                  if (v56 <= v222)
                  {
                    goto LABEL_233;
                  }

                  v90 = *v79;
                  v91 = *(v79 + 16);
                  v92 = *v83;
                  if (v231 == 184 || (v83[168] & 1) != 0)
                  {
                    v93 = v91 + v90;
                    v94 = (v93 % v64 + v64) % v64;
                    v95 = ((*(v83 + 1) + v92) % v64 + v64) % v64;
                    if (v94 == v95)
                    {
                      goto LABEL_126;
                    }
                  }

                  else
                  {
                    v93 = v91 + v90;
                    v94 = (v93 % v64 + v64) % v64;
                    v95 = ((*(v83 + 1) + v92) % v64 + v64) % v64;
                  }

                  v97 = v95 - v94;
                  if (v95 <= v94)
                  {
                    if (v95 < v94)
                    {
                      v97 = v95 + v64 - v94;
                    }

                    else
                    {
                      v97 = 0;
                    }
                  }

                  if (v67 != v66)
                  {
                    v108 = v67;
                    do
                    {
                      v109 = *v108++;
                      v110 = (v109 % v64 + v64) % v64;
                      v111 = v110 - v94;
                      v102 = v110 < v94;
                      v112 = v64 - v94 + v110;
                      if (!v102)
                      {
                        v112 = v111;
                      }

                      if (v112 < v97)
                      {
                        v97 = v112;
                      }
                    }

                    while (v108 != v66);
                  }

                  if (v97 <= 0)
                  {
                    goto LABEL_126;
                  }

                  v267.f64[0] = a;
                  v267.f64[1] = b;
                  *&v268 = c;
                  *(&v268 + 1) = d;
                  v104 = ((v97 + v93) % v64 + v64) % v64;
                  v269 = tx;
                  v270 = ty;
                  v105 = (v79 + 16);
                  v106 = &v235[184 * v71];
                  v107 = 1;
LABEL_125:
                  if ((CornerRoundingInfo::extend(v106, v105, v107, v234, v104, &v267, v4) & 1) == 0)
                  {
LABEL_126:
                    *(v79 + 24) = 1;
                  }
                }

                v113 = v67;
                v114 = v83;
                v267.f64[0] = a;
                v267.f64[1] = b;
                *&v268 = c;
                *(&v268 + 1) = d;
                v269 = tx;
                v270 = ty;
                CornerRoundingInfo::compute_circle(v79, *v234, v234[1], &v267, v4);
                v259 = 0;
                v260 = 0;
                v258 = 0;
                std::vector<CornerRoundingInfo>::__init_with_size[abi:fe200100]<CornerRoundingInfo*,CornerRoundingInfo*>(&v258, v55, v236, v56);
                v115 = v258;
                CornerRoundingInfo::fit_circle(v79, v113, v66, v64, v258, v259, v71, v4);
                if (v115)
                {
                  v259 = v115;
                  operator delete(v115);
                }

                v116 = *v234;
                v117 = v234[1];
                v118 = *(v79 + 152);
                v119 = sin(*(v79 + 144));
                v121 = *(v79 + 8);
                v120 = *(v79 + 16);
                if (v121 <= v120)
                {
                  v122 = 0;
                  v123 = 0xAAAAAAAAAAAAAAABLL * ((v117 - v116) >> 4);
                  v124 = (*(v79 + 96) + *(v79 + 112)) * 0.5;
                  v125 = (*(v79 + 104) + *(v79 + 120)) * 0.5;
                  v126 = sqrt(v125 * v125 + v124 * v124);
                  v127 = *(v79 + 128) + v118 / v119 * (v124 / v126);
                  v128 = *(v79 + 136) + v118 / v119 * (v125 / v126);
                  v129 = v120 + *v79;
                  v130 = v121 + *v79;
                  if (v130 <= v129)
                  {
                    v131 = v129;
                  }

                  else
                  {
                    v131 = v121 + *v79;
                  }

                  v132 = v131 + 1;
                  v55 = v235;
                  while (1)
                  {
                    v133 = (v130 % v123 + v123) % v123;
                    if (v123 <= v133)
                    {
                      goto LABEL_233;
                    }

                    v134 = (v116 + 48 * v133);
                    v135 = v134[1];
                    if ((ty + d * v135 + b * *v134 - v128) * (ty + d * v135 + b * *v134 - v128) + (tx + c * v135 + a * *v134 - v127) * (tx + c * v135 + a * *v134 - v127) + 1.0 >= v118 * v118)
                    {
                      v122 = v130++ >= v129;
                      if (v132 != v130)
                      {
                        continue;
                      }
                    }

                    goto LABEL_138;
                  }
                }

                v122 = 1;
                v55 = v235;
LABEL_138:
                if (v122 && *(v79 + 176) >= v227)
                {
                  goto LABEL_142;
                }

                ++v80;
                v83 = v114;
                v67 = v113;
                if (v80 == 10)
                {
                  *(v79 + 112) = *__src;
                  *(v79 + 128) = *&__src[16];
                  *(v79 + 144) = *&__src[32];
                  *(v79 + 160) = v309;
                  *(v79 + 48) = v304;
                  *(v79 + 64) = v305;
                  *(v79 + 80) = v306;
                  *(v79 + 96) = v307;
                  *v79 = v303;
                  *(v79 + 176) = v227;
                  *(v79 + 24) = 1;
LABEL_142:
                  v67 = v113;
                  v68 = v220;
LABEL_143:
                  ++v229;
                  continue;
                }

                goto LABEL_84;
              }

              break;
            }
          }

          v237 = 0;
          v238 = 0;
          v239 = 0;
          if (__p)
          {
            operator delete(__p);
            if (v237)
            {
              v238 = v237;
              operator delete(v237);
            }
          }

          v12 = v234;
          if (v55 != v236)
          {
            v136 = v235;
            v221 = v4;
            do
            {
              v137 = v136[16];
              v138 = v136[17];
              if ((*&v137 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v136[17] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
              {
                v140 = *v136;
                v141 = *(v136 + 1);
                v142 = *(v136 + 2);
                v144 = v136[19];
                v143 = v136[20];
                v146 = v136[14];
                v145 = v136[15];
                v147 = v136[12];
                v148 = v136[13];
                Mutable = CGPathCreateMutable();
                v230 = v138 + v143 * v148;
                v232 = v137 + v143 * v147;
                CGPathMoveToPoint(Mutable, 0, v232, v230);
                v226 = v138 + v143 * v145;
                v228 = v137 + v143 * v146;
                CGPathAddArcToPoint(Mutable, 0, v137, v138, v228, v226, v144);
                *&v303.a = v255;
                *&v303.c = v256;
                *&v303.tx = v257;
                CGPathRandomAccess::add_path(v253, Mutable, &v303, 0);
                v313.length = v150;
                v152 = v151;
                *&v303.a = v255;
                *&v303.c = v256;
                *&v303.tx = v257;
                v313.location = v253;
                CGPathRandomAccess::clipper_paths_for_subpath_range(&v264, v313, v152, &v303, 1);
                v4 = v221;
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

                memset(__src, 0, 24);
                *&v303.a = ((v141 + v140) % (0xAAAAAAAAAAAAAAABLL * ((v218 - v217) >> 4)) - 0x5555555555555555 * ((v218 - v217) >> 4)) % (0xAAAAAAAAAAAAAAABLL * ((v218 - v217) >> 4)) + 1;
                *&v303.b = ((v140 + v142 - 1) % (0xAAAAAAAAAAAAAAABLL * ((v218 - v217) >> 4)) - 0x5555555555555555 * ((v218 - v217) >> 4)) % (0xAAAAAAAAAAAAAAABLL * ((v218 - v217) >> 4)) + 1;
                *&v303.tx = ClipperLib::PointInfoZero;
                v304 = unk_1844DF1D8;
                *&v303.c = vcvtq_s64_f64(vaddq_f64(v257, vmlaq_n_f64(vmulq_n_f64(v256, v230), v255, v232)));
                v306 = ClipperLib::PointInfoZero;
                v307 = unk_1844DF1D8;
                v305 = vcvtq_s64_f64(vaddq_f64(v257, vmlaq_n_f64(vmulq_n_f64(v256, v226), v255, v228)));
                if (v265 == v264)
                {
                  goto LABEL_233;
                }

                std::vector<ClipperLib::IntPoint>::__insert_with_size[abi:fe200100]<std::__wrap_iter<ClipperLib::IntPoint*>,std::__wrap_iter<ClipperLib::IntPoint*>>(__src, 0, *v264, v264[1], 0xAAAAAAAAAAAAAAABLL * ((v264[1] - *v264) >> 4));
                v153 = v241;
                if (v241 >= *(&v241 + 1))
                {
                  v156 = 0xF0F0F0F0F0F0F0F1 * ((v241 - *&v240) >> 3);
                  v157 = v156 + 1;
                  if (v156 + 1 > 0x1E1E1E1E1E1E1E1)
                  {
                    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                  }

                  if (0xE1E1E1E1E1E1E1E2 * ((*(&v241 + 1) - *&v240) >> 3) > v157)
                  {
                    v157 = 0xE1E1E1E1E1E1E1E2 * ((*(&v241 + 1) - *&v240) >> 3);
                  }

                  if (0xF0F0F0F0F0F0F0F1 * ((*(&v241 + 1) - *&v240) >> 3) >= 0xF0F0F0F0F0F0F0)
                  {
                    v158 = 0x1E1E1E1E1E1E1E1;
                  }

                  else
                  {
                    v158 = v157;
                  }

                  v269 = COERCE_DOUBLE(&v240);
                  if (v158)
                  {
                    if (v158 <= 0x1E1E1E1E1E1E1E1)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:fe200100]();
                  }

                  v159 = 8 * ((v241 - *&v240) >> 3);
                  v267.f64[0] = 0.0;
                  *&v267.f64[1] = v159;
                  v268 = v159;
                  v160 = v306;
                  *(v159 + 64) = v305;
                  *(v159 + 80) = v160;
                  *(v159 + 96) = v307;
                  v161 = *&v303.c;
                  *v159 = *&v303.a;
                  *(v159 + 16) = v161;
                  v162 = v304;
                  *(v159 + 32) = *&v303.tx;
                  *(v159 + 48) = v162;
                  *(v159 + 112) = 0;
                  *(v159 + 120) = 0;
                  v163 = 136 * v156 + 112;
                  v164 = *__src;
                  v165 = 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 4);
                  *(v163 + 16) = 0;
                  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v163, v164, *(&v164 + 1), v165);
                  *&v268 = v268 + 136;
                  v167 = v240;
                  v166 = v241;
                  *&v168 = *&v267.f64[1] + *&v240 - v241;
                  if (*&v240 != v241)
                  {
                    v169 = v240;
                    v170 = *&v267.f64[1] + *&v240 - v241;
                    do
                    {
                      v171 = **&v169;
                      v172 = *(*&v169 + 32);
                      *(v170 + 16) = *(*&v169 + 16);
                      *(v170 + 32) = v172;
                      *v170 = v171;
                      v173 = *(*&v169 + 48);
                      v174 = *(*&v169 + 64);
                      v175 = *(*&v169 + 96);
                      *(v170 + 80) = *(*&v169 + 80);
                      *(v170 + 96) = v175;
                      *(v170 + 48) = v173;
                      *(v170 + 64) = v174;
                      *(v170 + 120) = 0;
                      *(v170 + 128) = 0;
                      *(v170 + 112) = 0;
                      *(v170 + 112) = *(*&v169 + 112);
                      *(v170 + 128) = *(*&v169 + 128);
                      *(*&v169 + 112) = 0;
                      *(*&v169 + 120) = 0;
                      *(*&v169 + 128) = 0;
                      *&v169 += 136;
                      v170 += 136;
                    }

                    while (*&v169 != v166);
                    do
                    {
                      v176 = *(*&v167 + 112);
                      if (v176)
                      {
                        *(*&v167 + 120) = v176;
                        operator delete(v176);
                      }

                      *&v167 += 136;
                    }

                    while (*&v167 != v166);
                  }

                  v177 = v240;
                  v178 = *(&v241 + 1);
                  v240 = v168;
                  v233 = v268;
                  v241 = v268;
                  *&v268 = v177;
                  *(&v268 + 1) = v178;
                  v267.f64[1] = v177;
                  v267.f64[0] = v177;
                  std::__split_buffer<Splice>::~__split_buffer(&v267);
                  v155 = v233;
                  v154 = *__src;
                }

                else
                {
                  *(v241 + 48) = v304;
                  *(v153 + 64) = v305;
                  *(v153 + 80) = v306;
                  *(v153 + 96) = v307;
                  *v153 = v303;
                  *(v153 + 112) = 0;
                  *(v153 + 120) = 0;
                  *(v153 + 128) = 0;
                  v154 = *__src;
                  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v153 + 112, *__src, *&__src[8], 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 4));
                  v155 = v153 + 136;
                }

                *&v241 = v155;
                if (v154)
                {
                  operator delete(v154);
                }

                *&v303.a = &v264;
                std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v303);
              }

              v136 += 23;
            }

            while (v136 != v236);
          }

          v179 = v241;
          if (v241 > *&v240)
          {
            do
            {
              v180 = *(&v179[-9] + 8);
              v181 = *(&v179[-7] + 8);
              *&v303.c = *(v179 - 120);
              *&v303.tx = v181;
              *&v303.a = v180;
              v182 = *(&v179[-6] + 8);
              v183 = *(v179 - 72);
              v184 = *(&v179[-3] + 8);
              v306 = *(&v179[-4] + 8);
              v307 = v184;
              v304 = v182;
              v305 = v183;
              memset(__src, 0, 24);
              std::vector<ClipperLib::IntPoint>::__init_with_size[abi:fe200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(__src, v179[-2].i64[1], v179[-1].i64[0], 0xAAAAAAAAAAAAAAABLL * ((v179[-1].i64[0] - v179[-2].i64[1]) >> 4));
              v179 = (v179 - 136);
              v185 = v303.b;
              if (*&v303.a <= *&v303.b)
              {
                if (*&v303.a < *&v303.b)
                {
                  v190 = *v234;
                  v191 = (*v234 + 48 * *&v303.a);
                  if (v191 > *v234 + 48 * *&v303.b)
                  {
                    goto LABEL_233;
                  }

                  v192 = v190 + 48 * *&v303.a;
                  v193 = v190 + 48 * *&v303.b;
                  v194 = v234[1];
                  v195 = v194 - v193;
                  if (v194 != v193)
                  {
                    memmove((v190 + 48 * *&v303.a), (v190 + 48 * *&v303.b), v194 - v193);
                    v191 = (*v234 + 48 * *&v303.a);
                  }

                  v234[1] = v192 + v195;
                  std::vector<ClipperLib::IntPoint>::insert(v234, v191, v305.i8);
                  std::vector<ClipperLib::IntPoint>::__insert_with_size[abi:fe200100]<std::__wrap_iter<ClipperLib::IntPoint*>,std::__wrap_iter<ClipperLib::IntPoint*>>(v234, (*v234 + 48 * *&v303.a), *__src, *&__src[8], 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 4));
                  std::vector<ClipperLib::IntPoint>::insert(v234, (*v234 + 48 * *&v303.a), &v303.c);
                  v204 = *__src;
                  v196 = *&v240;
                  if (*&v240 < v179)
                  {
                    v197 = v303.a;
                    v198 = *&v303.a - *&v303.b - 0x5555555555555555 * ((*&__src[8] - *__src) >> 4) + 2;
                    v199 = v179;
                    v200 = v179;
                    do
                    {
                      v202 = *(v200 - 17);
                      v200 -= 17;
                      v201 = v202;
                      if (v202 > *&v197)
                      {
                        *v200 = v201 + v198;
                        v197 = v303.a;
                      }

                      v203 = *(v199 - 16);
                      if (v203 > *&v197)
                      {
                        *(v199 - 16) = v203 + v198;
                      }

                      v199 = v200;
                    }

                    while (v200 > v196);
                  }
                }

                else
                {
                  v204 = *__src;
                }
              }

              else
              {
                v187 = *v234;
                v186 = v234[1];
                v188 = *v234 + 48 * *&v303.a;
                if (v188 > v186)
                {
                  goto LABEL_233;
                }

                if (v188 == v186)
                {
                  v189 = *v234;
                }

                else
                {
                  v205 = &v187[48 * *&v303.a];
                  v206 = v188 - v205;
                  if (v188 == v205)
                  {
                    v189 = *v234;
                  }

                  else
                  {
                    memmove(&v187[48 * *&v303.a], &v205[v186 - v188], v188 - v205);
                    v189 = *v234;
                    v185 = v303.b;
                    v187 = *v234;
                  }

                  v186 = &v205[v206];
                  v234[1] = &v205[v206];
                }

                if (__CFADD__(v189, 48 * *&v185))
                {
                  goto LABEL_233;
                }

                if (v185 != 0.0)
                {
                  v207 = 3 * *&v185;
                  v208 = &v187[48 * *&v185];
                  v209 = v186 - v208;
                  if (v186 != v208)
                  {
                    memmove(v187, &v187[16 * v207], v186 - v208);
                    v189 = *v234;
                  }

                  v234[1] = &v187[v209];
                }

                std::vector<ClipperLib::IntPoint>::insert(v234, v189, v305.i8);
                std::vector<ClipperLib::IntPoint>::__insert_with_size[abi:fe200100]<std::__wrap_iter<ClipperLib::IntPoint*>,std::__wrap_iter<ClipperLib::IntPoint*>>(v234, *v234, *__src, *&__src[8], 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 4));
                std::vector<ClipperLib::IntPoint>::insert(v234, *v234, &v303.c);
                v204 = *__src;
                v210 = *&v240;
                if (*&v240 < v179)
                {
                  v211 = vdupq_n_s64(-*&v303.b - 0x5555555555555555 * ((*&__src[8] - *__src) >> 4) + 2);
                  v212 = v179;
                  do
                  {
                    v213 = *(v212 - 136);
                    v212 = (v212 - 136);
                    *v212 = vaddq_s64(v213, v211);
                  }

                  while (v212 > v210);
                }
              }

              if (v204)
              {
                *&__src[8] = v204;
                operator delete(v204);
              }
            }

            while (v179 > *&v240);
          }

          if (v235)
          {
            operator delete(v235);
          }

          *&v303.a = &v240;
          std::vector<Splice>::__destroy_vector::operator()[abi:fe200100](&v303);
          if (v242)
          {
            operator delete(v242);
          }

          v11 = v216;
          if (v245)
          {
            operator delete(v245);
          }
        }

        v12 += 3;
      }

      while (v12 != v11);
    }

    *&v303.a = v255;
    *&v303.c = v256;
    *&v303.tx = v257;
    v214 = CGPathRandomAccess::new_cgpath_from_clipper(v253, &v248, &v303);
    *&v303.a = &v248;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v303);
    *v271 = &unk_1EF23C1F0;
    v281 = &unk_1EF23C238;
    if (v274)
    {
      v275 = v274;
      operator delete(v274);
    }

    if (v272)
    {
      *(&v272 + 1) = v272;
      operator delete(v272);
    }

    if (*&v271[32])
    {
      *&v271[40] = *&v271[32];
      operator delete(*&v271[32]);
    }

    if (*&v271[8])
    {
      *&v271[16] = *&v271[8];
      operator delete(*&v271[8]);
    }

    ClipperLib::ClipperBase::~ClipperBase(&v281);
    *v271 = &v251;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](v271);
    *v271 = v253;
    std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](v271);
    return v214;
  }
}

void sub_18414E090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  a47 = &a50;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&a47);
  ClipperLib::Clipper::~Clipper(&STACK[0x270]);
  ClipperLib::ClipperBase::~ClipperBase(v56);
  STACK[0x270] = &a53;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&STACK[0x270]);
  a53 = &a56;
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a53);
  _Unwind_Resume(a1);
}

void std::vector<CornerRoundingInfo>::__init_with_size[abi:fe200100]<CornerRoundingInfo*,CornerRoundingInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1642C8590B21643)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CornerRoundingInfo>>(a4);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void sub_18414E2C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CornerRoundingInfo>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t CornerRoundingInfo::compute_circle(uint64_t result, uint64_t a2, uint64_t a3, float64x2_t *a4, double a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
  v6 = *result;
  v7 = *(result + 8) + *result;
  v8 = ((v7 + 1) % v5 - 0x5555555555555555 * ((a3 - a2) >> 4)) % v5;
  if (v5 <= v8 || (v9 = (v7 % (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4)) - 0x5555555555555555 * ((a3 - a2) >> 4)) % v5, v5 <= v9) || (v10 = (a2 + 48 * v9), v11 = *v10, v12 = v10[1], v13 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], *(a2 + 48 * v8 + 8)), *a4, *(a2 + 48 * v8))), *(result + 32) = v13, v14 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], v12), *a4, v11)), *(result + 48) = v14, v15 = *(result + 16) + v6, v16 = ((v15 - 1) % (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4)) - 0x5555555555555555 * ((a3 - a2) >> 4)) % v5, v5 <= v16) || (v17 = (v15 % (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4)) - 0x5555555555555555 * ((a3 - a2) >> 4)) % v5, v5 <= v17))
  {
    __break(1u);
  }

  else
  {
    v18 = (a2 + 48 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = vsubq_f64(v14, v13);
    v22 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], *(a2 + 48 * v16 + 8)), *a4, *(a2 + 48 * v16)));
    *(result + 64) = v22;
    v23 = vaddq_f64(a4[2], vmlaq_n_f64(vmulq_n_f64(a4[1], v20), *a4, v19));
    *(result + 80) = v23;
    v24 = vsubq_f64(v23, v22);
    v25 = (-v24.f64[1] * vsubq_f64(v22, v13).f64[0] + v24.f64[0] * (v22.f64[1] - v13.f64[1])) / (-v24.f64[1] * v21.f64[0] + v24.f64[0] * v21.f64[1]);
    v26 = vaddq_f64(v13, vmulq_n_f64(v21, v25));
    *(result + 128) = v26;
    if ((*&v26.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v27 = (-v21.f64[1] * vsubq_f64(v13, v22).f64[0] + v21.f64[0] * (v13.f64[1] - v22.f64[1])) / (v21.f64[0] * v24.f64[1] - v21.f64[1] * v24.f64[0]), (*&v26.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) ? (v28 = v25 <= 1.0) : (v28 = 0), v28 ? (v29 = v27 <= 1.0) : (v29 = 0), v29 && (v30 = vdivq_f64(v21, vdupq_lane_s64(COERCE__INT64(sqrt(v21.f64[1] * v21.f64[1] + v21.f64[0] * v21.f64[0])), 0)), v31 = vdivq_f64(v24, vdupq_lane_s64(COERCE__INT64(sqrt(v24.f64[1] * v24.f64[1] + v24.f64[0] * v24.f64[0])), 0)), *(result + 96) = v30, *(result + 112) = v31, v22.f64[0] = vsubq_f64(v22, v26).f64[0], v32 = a5 + a5, sqrt((v22.f64[1] - v26.f64[1]) * (v22.f64[1] - v26.f64[1]) + v22.f64[0] * v22.f64[0]) <= v32) && (v13.f64[0] = vsubq_f64(v13, v26).f64[0], sqrt((v13.f64[1] - v26.f64[1]) * (v13.f64[1] - v26.f64[1]) + v13.f64[0] * v13.f64[0]) <= v32) && -v30.f64[1] * v31.f64[0] + v30.f64[0] * v31.f64[1] <= 0.0))
    {
      *(result + 144) = acos(v30.f64[1] * v31.f64[1] + v30.f64[0] * v31.f64[0]) * 0.5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CornerRoundingInfo::fit_circle(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v15 = a8 * 0.785398163;
  v16 = *(a1 + 144);
  v17 = 1.57079633 - v16;
  v18 = v15 / (1.57079633 - v16);
  *(a1 + 152) = v18;
  v19 = tan(v16);
  v20 = v18 / v19;
  *(a1 + 160) = v18 / v19;
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);
  v25 = 0xD37A6F4DE9BD37A7 * ((a6 - a5) >> 3);
  v72 = v17;
  if (v25 < 2)
  {
    v54 = 0;
    v45 = 0;
    v52 = *(a1 + 80);
    v53 = *(a1 + 88);
    v43 = *(a1 + 48);
    v44 = *(a1 + 56);
    goto LABEL_9;
  }

  v26 = ((a7 - 1) % (0xD37A6F4DE9BD37A7 * ((a6 - a5) >> 3)) - 0x2C8590B21642C859 * ((a6 - a5) >> 3)) % v25;
  if (v25 > v26)
  {
    v27 = (a5 + 184 * v26);
    v28 = v27[9];
    v83 = v27[8];
    v84 = v28;
    v85 = v27[10];
    v86 = *(v27 + 22);
    v29 = v27[5];
    v79 = v27[4];
    v80 = v29;
    v30 = v27[7];
    v81 = v27[6];
    v82 = v30;
    v31 = v27[1];
    v75 = *v27;
    v76 = v31;
    v32 = v27[3];
    v77 = v27[2];
    v78 = v32;
    v33 = ((a7 + 1) % (0xD37A6F4DE9BD37A7 * ((a6 - a5) >> 3)) - 0x2C8590B21642C859 * ((a6 - a5) >> 3)) % v25;
    if (v25 > v33)
    {
      v34 = a5 + 184 * v33;
      v35 = *(v34 + 144);
      v73[8] = *(v34 + 128);
      v73[9] = v35;
      v73[10] = *(v34 + 160);
      v74 = *(v34 + 176);
      v36 = *(v34 + 80);
      v73[4] = *(v34 + 64);
      v73[5] = v36;
      v37 = *(v34 + 112);
      v73[6] = *(v34 + 96);
      v73[7] = v37;
      v38 = *(v34 + 16);
      v73[0] = *v34;
      v73[1] = v38;
      v39 = *(v34 + 48);
      v73[2] = *(v34 + 32);
      v73[3] = v39;
      v40 = ((v76 + v75) % a4 + a4) % a4;
      v41 = *a1;
      v42 = ((*a1 + *(a1 + 8) + 1) % a4 + a4) % a4;
      v43 = v21;
      v44 = v22;
      v45 = v40 == v42;
      if (v40 == v42)
      {
        v46 = v21;
        v47 = v24;
        CornerRoundingInfo::midpoint_of_corners(&v75, a1);
        v20 = v18 / v19;
        v24 = v47;
        v21 = v46;
        v43 = v48;
        v44 = v49;
      }

      v50 = ((*(&v73[0] + 1) + *&v73[0]) % a4 + a4) % a4;
      v51 = ((v41 + *(a1 + 16) - 1) % a4 + a4) % a4;
      v52 = v23;
      v53 = v24;
      v54 = v50 == v51;
      if (v50 == v51)
      {
        v71 = v18;
        v55 = v23;
        v56 = v19;
        v57 = v22;
        v58 = v21;
        v59 = v24;
        v60 = v20;
        CornerRoundingInfo::midpoint_of_corners(a1, v73);
        v20 = v60;
        v24 = v59;
        v21 = v58;
        v22 = v57;
        v19 = v56;
        v23 = v55;
        v18 = v71;
      }

LABEL_9:
      v61 = *(a1 + 128);
      v62 = *(a1 + 136);
      v63 = sqrt((v44 - v62) * (v44 - v62) + (v43 - v61) * (v43 - v61));
      if (v20 <= v63)
      {
        v66 = 0;
        v63 = v20;
        v64 = v72;
      }

      else
      {
        v64 = v72;
        if (v45)
        {
          goto LABEL_18;
        }

        v65 = a2;
        if (a2 != a3)
        {
          v65 = a2;
          while (*v65 != ((*(a1 + 8) + *a1) % a4 + a4) % a4)
          {
            if (++v65 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v65 == a3)
        {
LABEL_19:
          v66 = 0;
          v63 = v20;
        }

        else
        {
LABEL_18:
          v18 = v63 * v19;
          *(a1 + 152) = v63 * v19;
          *(a1 + 160) = v63;
          v66 = 1;
        }
      }

      v67 = sqrt((v53 - v62) * (v53 - v62) + (v52 - v61) * (v52 - v61));
      if (v63 > v67)
      {
        if (v54)
        {
          goto LABEL_27;
        }

        if (a2 != a3)
        {
          while (*a2 != ((*(a1 + 16) + *a1) % a4 + a4) % a4)
          {
            if (++a2 == a3)
            {
              goto LABEL_28;
            }
          }
        }

        if (a2 != a3)
        {
LABEL_27:
          v18 = v67 * v19;
          *(a1 + 152) = v67 * v19;
          *(a1 + 160) = v67;
          v63 = v67;
        }
      }

LABEL_28:
      v68 = sqrt((v24 - v62) * (v24 - v62) + (v23 - v61) * (v23 - v61));
      *(a1 + 168) = 0;
      if ((v66 & 1) != 0 || ((v69 = sqrt((v22 - v62) * (v22 - v62) + (v21 - v61) * (v21 - v61)), v69 < v63) ? (v70 = v69 > v68) : (v70 = 1), v70))
      {
        if (v68 >= v63)
        {
LABEL_37:
          *(a1 + 176) = v18 * v64 / 0.785398163;
          return;
        }

        *(a1 + 169) = 1;
        v69 = v68;
      }

      else
      {
        *(a1 + 168) = 1;
      }

      v18 = v69 * v19;
      *(a1 + 152) = v69 * v19;
      *(a1 + 160) = v69;
      goto LABEL_37;
    }
  }

  __break(1u);
}

uint64_t CornerRoundingInfo::extend(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, float64x2_t *a6, double a7)
{
  v14 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v14;
  v46 = *(a1 + 160);
  v47 = *(a1 + 176);
  v15 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v15;
  v16 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v16;
  v17 = *(a1 + 16);
  v36 = *a1;
  v37 = v17;
  v18 = *(a1 + 48);
  if (a3 <= 0)
  {
    v19 = 48;
  }

  else
  {
    v19 = 80;
  }

  if (a3 <= 0)
  {
    v20 = 32;
  }

  else
  {
    v20 = 64;
  }

  v38 = *(a1 + 32);
  v39 = v18;
  v21 = *a2;
  if (a3 <= 0)
  {
    v22 = 56;
  }

  else
  {
    v22 = 88;
  }

  if (a3 <= 0)
  {
    v23 = 40;
  }

  else
  {
    v23 = 72;
  }

  v24 = 0.0;
  v25 = *a4;
  v26 = a4[1];
  while (1)
  {
    *a2 = v21 + a3;
    v27 = a6[1];
    v35[0] = *a6;
    v35[1] = v27;
    v35[2] = a6[2];
    result = CornerRoundingInfo::compute_circle(a1, v25, v26, v35, a7);
    if (result)
    {
      break;
    }

    v29 = *(a1 + v19) - *(a1 + v20);
    v24 = v24 + sqrt((*(a1 + v22) - *(a1 + v23)) * (*(a1 + v22) - *(a1 + v23)) + v29 * v29);
    if (v24 <= 3.0)
    {
      v21 = *a2;
      v25 = *a4;
      v26 = a4[1];
      if ((0xAAAAAAAAAAAAAAABLL * ((v26 - *a4) >> 4) + (*a2 + *a1) % (0xAAAAAAAAAAAAAAABLL * ((v26 - *a4) >> 4))) % (0xAAAAAAAAAAAAAAABLL * ((v26 - *a4) >> 4)) != a5)
      {
        continue;
      }
    }

    v30 = v45;
    *(a1 + 128) = v44;
    *(a1 + 144) = v30;
    *(a1 + 160) = v46;
    *(a1 + 176) = v47;
    v31 = v41;
    *(a1 + 64) = v40;
    *(a1 + 80) = v31;
    v32 = v43;
    *(a1 + 96) = v42;
    *(a1 + 112) = v32;
    v33 = v37;
    *a1 = v36;
    *(a1 + 16) = v33;
    v34 = v39;
    *(a1 + 32) = v38;
    *(a1 + 48) = v34;
    return result;
  }

  return result;
}

void std::vector<Splice>::__destroy_vector::operator()[abi:fe200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 136;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<ClipperLib::IntPoint>::insert(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 < v7)
  {
    if (__src == v6)
    {
      v17 = *a3;
      v18 = *(a3 + 2);
      *(v6 + 1) = *(a3 + 1);
      *(v6 + 2) = v18;
      *v6 = v17;
      *(a1 + 8) = v6 + 48;
      return;
    }

    v8 = __src + 48;
    if (v6 < 0x30)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = (v6 + 48);
      v10 = *(v6 - 3);
      v11 = *(v6 - 1);
      *(v6 + 1) = *(v6 - 2);
      *(v6 + 2) = v11;
      *v6 = v10;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 48, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    if (v9 >= __src)
    {
      v21 = v9 <= a3 || __src > a3;
      v22 = 48;
      if (v21)
      {
        v22 = 0;
      }

      v23 = &a3[v22];
      v24 = *v23;
      v25 = *(v23 + 2);
      *(__src + 1) = *(v23 + 1);
      *(__src + 2) = v25;
      *__src = v24;
      return;
    }

    __break(1u);
LABEL_38:
    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  v12 = *a1;
  v13 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 4) + 1;
  if (v13 > 0x555555555555555)
  {
    goto LABEL_38;
  }

  v14 = __src - v12;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v12) >> 4);
  if (2 * v15 > v13)
  {
    v13 = 2 * v15;
  }

  if (v15 >= 0x2AAAAAAAAAAAAAALL)
  {
    v16 = 0x555555555555555;
  }

  else
  {
    v16 = v13;
  }

  if (v16)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v16);
  }

  v19 = (16 * (v14 >> 4));
  v20 = v19;
  if (!(0xAAAAAAAAAAAAAAABLL * (v14 >> 4)))
  {
    if (v14 < 1)
    {
      if (v12 == __src)
      {
        v26 = 1;
      }

      else
      {
        v26 = 0x5555555555555556 * (v14 >> 4);
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v26);
    }

    v19 = (16 * (v14 >> 4) - 48 * ((1 - 0x5555555555555555 * ((16 * (v14 >> 4)) >> 4) + ((1 - 0x5555555555555555 * ((16 * (v14 >> 4)) >> 4)) >> 63)) >> 1));
    v20 = v19;
  }

  v27 = *a3;
  v28 = *(a3 + 2);
  v19[1] = *(a3 + 1);
  v19[2] = v28;
  *v19 = v27;
  v29 = v20 + 3;
  memcpy(v20 + 3, __src, *(a1 + 8) - __src);
  v30 = *a1;
  v34 = v29 + *(a1 + 8) - __src;
  *(a1 + 8) = __src;
  v31 = (__src - v30);
  v32 = v19 - (__src - v30);
  memcpy(v32, v30, v31);
  v33 = *a1;
  *a1 = v32;
  *(a1 + 8) = v34;
  if (v33)
  {

    operator delete(v33);
  }
}

void sub_18414EF3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<Splice>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 136;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 136;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void CornerRoundingInfo::midpoint_of_corners(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 1 && *(a2 + 24) != 1)
  {
    tan(*(a1 + 144));
    tan(*(a2 + 144));
  }
}

__n128 __Block_byref_object_copy__7059(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__7060(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<CGPathElementType>::push_back[abi:fe200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v11 = (4 * (v7 >> 2));
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

void ___Z17CGPathAddSubpathsP6CGPathPKS_P10NSIndexSet_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1 && *(*(*(a1 + 40) + 8) + 24) == 1)
      {
        v4 = *(a1 + 56);
        v5 = *(a2 + 8);
        v6 = *v5;
        v7 = v5[1];

        CGPathAddLineToPoint(v4, 0, v6, v7);
      }
    }

    else if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v22 = *(a1 + 56);
      v23 = *(a2 + 8);
      v24 = *v23;
      v25 = v23[1];

      CGPathMoveToPoint(v22, 0, v24, v25);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          v8 = *(a1 + 56);
          v9 = *(a2 + 8);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          v13 = v9[3];

          CGPathAddQuadCurveToPoint(v8, 0, v10, v11, v12, v13);
        }

        break;
      case 3:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          v14 = *(a1 + 56);
          v15 = *(a2 + 8);
          v16 = *v15;
          v17 = v15[1];
          v18 = v15[2];
          v19 = v15[3];
          v20 = v15[4];
          v21 = v15[5];

          CGPathAddCurveToPoint(v14, 0, v16, v17, v18, v19, v20, v21);
        }

        break;
      case 4:
        if (*(*(*(a1 + 40) + 8) + 24) == 1)
        {
          CGPathCloseSubpath(*(a1 + 56));
        }

        *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) containsIndex:++*(*(*(a1 + 48) + 8) + 24)];
        break;
    }
  }
}

CGMutablePathRef CGPathCreateCopyByTopologicallyRoundingCornersDebug(CGPathRef path, const CGPath *a2, int a3, double a4)
{
  if (!path || !a2)
  {
    goto LABEL_27;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x4812000000;
  v42 = __Block_byref_object_copy__7059;
  v43 = __Block_byref_object_dispose__7060;
  v44 = "";
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x4812000000;
  v33 = __Block_byref_object_copy__7059;
  v34 = __Block_byref_object_dispose__7060;
  v35 = "";
  v37 = 0;
  v38 = 0;
  __p = 0;
  block = MEMORY[0x1E69E9820];
  p_block = 3221225472;
  v27 = ___Z25CGPathEqualElementsToPathPK6CGPathS1__block_invoke;
  v28 = &unk_1E6E198E8;
  v29 = &v39;
  CGPathApplyWithBlock(path, &block);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___Z25CGPathEqualElementsToPathPK6CGPathS1__block_invoke_2;
  v24[3] = &unk_1E6E198E8;
  v24[4] = &v30;
  CGPathApplyWithBlock(a2, v24);
  v8 = *(v40 + 48);
  v7 = *(v40 + 56);
  v9 = v31[6];
  if (v7 - v8 == v31[7] - v9)
  {
    if (v8 == v7)
    {
      v12 = 1;
    }

    else
    {
      v10 = v8 + 4;
      do
      {
        v11 = *v9++;
        v12 = *(v10 - 4) == v11;
        v13 = *(v10 - 4) != v11 || v10 == v7;
        v10 += 4;
      }

      while (!v13);
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v30, 8);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v39, 8);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v12)
  {
    Mutable = CGPathCreateMutable();
    SeparateComponentSubpathIndexes = CGPathCreateSeparateComponentSubpathIndexes(a2, 0);
    Count = CFArrayGetCount(SeparateComponentSubpathIndexes);
    if (Count >= 1)
    {
      v17 = Count;
      for (i = 0; i != v17; ++i)
      {
        v19 = CGPathCreateMutable();
        ValueAtIndex = CFArrayGetValueAtIndex(SeparateComponentSubpathIndexes, i);
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        block = 0;
        p_block = &block;
        v27 = 0x2020000000;
        LOBYTE(v28) = [ValueAtIndex containsIndex:0];
        v39 = MEMORY[0x1E69E9820];
        v40 = 3221225472;
        v41 = ___Z17CGPathAddSubpathsP6CGPathPKS_P10NSIndexSet_block_invoke;
        v42 = &unk_1E6E19910;
        v45 = &v30;
        v46 = v19;
        v43 = ValueAtIndex;
        v44 = &block;
        CGPathApplyWithBlock(path, &v39);
        _Block_object_dispose(&block, 8);
        _Block_object_dispose(&v30, 8);
        CopyByRoundingCornersDebug = CGPathCreateCopyByRoundingCornersDebug(v19, a3, a4);
        CGPathAddPath(Mutable, 0, CopyByRoundingCornersDebug);
        if (CopyByRoundingCornersDebug)
        {
          CFRelease(CopyByRoundingCornersDebug);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }
    }

    return Mutable;
  }

  else
  {
LABEL_27:

    return CGPathCreateCopyByRoundingCornersDebug(path, a3, a4);
  }
}

void sub_18414F8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  _Block_object_dispose(&a20, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a29, 8);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

double *CGContainerCreateWithRect(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (_block_invoke_once_7067 != -1)
  {
    dispatch_once(&_block_invoke_once_7067, &__block_literal_global_5_7068);
  }

  result = CGTypeCreateInstance(CGContainerGetTypeID_container_type_id, 32, a7, a8, a9, a10, a11, a12);
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t __CGContainerGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGContainerGetTypeID_class);
  CGContainerGetTypeID_container_type_id = result;
  return result;
}

uint64_t CGContainerGetTypeID()
{
  if (_block_invoke_once_7067 != -1)
  {
    dispatch_once(&_block_invoke_once_7067, &__block_literal_global_5_7068);
  }

  return CGContainerGetTypeID_container_type_id;
}

BOOL CGContainerGetRect(uint64_t a1, _OWORD *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 32);
    *a2 = *(a1 + 16);
    a2[1] = v2;
  }

  return a1 != 0;
}

void FontDescriptor::FontDescriptor(FontDescriptor *this, const PDFFont *a2, int a3)
{
  *this = a2;
  *(this + 1) = PDFXRefTableAddObject(*(**(a2 + 1) + 504));
  if (a3)
  {
    v6 = 32;
  }

  else
  {
    v6 = 4;
  }

  *(this + 4) = v6;
  font_info = get_font_info(*(a2 + 2));
  if (font_info && font_info[48] == 1)
  {
    *(this + 4) |= 1u;
  }

  v8 = get_font_info(*(a2 + 2));
  if (v8)
  {
    if (v8[49] == 1)
    {
      *(this + 4) |= 0x40u;
    }
  }
}

_BYTE *FontDescriptor::emit_definition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = **(*a1 + 8);
  PDFDocumentBeginObject(v11, *(a1 + 8), a3, a4, a5, a6, a7, a8);
  PDFDocumentPrintf(v11, "<<", v12, v13, v14, v15, v16, v17, v83);
  PDFDocumentPrintf(v11, "/Type /FontDescriptor", v18, v19, v20, v21, v22, v23, v84);
  if (*(a2 + 23) >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  PDFDocumentPrintf(v11, "/FontName /%N", v24, v25, v26, v27, v28, v29, v30);
  PDFDocumentPrintf(v11, "/Flags %d", v31, v32, v33, v34, v35, v36, *(a1 + 16));
  if (CGFontGetDescriptor(*(*a1 + 16), v86))
  {
    PDFDocumentPrintf(v11, "/FontBBox %r", v37, v38, v39, v40, v41, v42, v86);
    PDFDocumentPrintf(v11, "/ItalicAngle %f", v44, v45, v46, v47, v48, v49, v90);
    PDFDocumentPrintf(v11, "/Ascent %f", v50, v51, v52, v53, v54, v55, v87);
    PDFDocumentPrintf(v11, "/Descent %f", v56, v57, v58, v59, v60, v61, v88);
    PDFDocumentPrintf(v11, "/CapHeight %f", v62, v63, v64, v65, v66, v67, v89);
    PDFDocumentPrintf(v11, "/StemV %f", v68, v69, v70, v71, v72, v73, v91);
    if (*&v96 != 0.0)
    {
      PDFDocumentPrintf(v11, "/Leading %f", v37, v38, v39, v40, v41, v42, v96);
    }

    if (*&v97 != 0.0)
    {
      PDFDocumentPrintf(v11, "/XHeight %f", v37, v38, v39, v40, v41, v42, v97);
    }

    if (*&v92 != 0.0)
    {
      PDFDocumentPrintf(v11, "/StemH %f", v37, v38, v39, v40, v41, v42, v92);
    }

    if (*&v93 != 0.0)
    {
      PDFDocumentPrintf(v11, "/AvgWidth %f", v37, v38, v39, v40, v41, v42, v93);
    }

    if (*&v94 != 0.0)
    {
      PDFDocumentPrintf(v11, "/MaxWidth %f", v37, v38, v39, v40, v41, v42, v94);
    }

    v43.n128_u64[0] = v95;
    if (*&v95 != 0.0)
    {
      PDFDocumentPrintf(v11, "/MissingWidth %f", v37, v38, v39, v40, v41, v42, v95);
    }
  }

  if (a3)
  {
    v74 = (*(**a1 + 16))(v43) - 1;
    if (v74 <= 4)
    {
      PDFDocumentPrintReference(v11, off_1E6E19950[v74], a3, v38, v39, v40, v41, v42);
    }
  }

  PDFDocumentPrintf(v11, ">>", v37, v38, v39, v40, v41, v42, v85);
  return PDFDocumentEndObject(v11, v75, v76, v77, v78, v79, v80, v81);
}

void *CGPDFDecryptorCreate(void *result, int a2, const void *a3, size_t a4)
{
  if (result)
  {
    v7 = result;
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v8 = 4144;
    }

    else
    {
      v8 = 48;
    }

    v9 = malloc_type_calloc(1uLL, v8, 0x102004048BE9100uLL);
    __CFSetLastAllocationEventName();
    if (!v9)
    {
      return 0;
    }

    CFRetain(v7);
    *v9 = v7;
    if (a3)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }

    v11 = decryptor_identity_refill;
    if ((v10 - 2) < 2)
    {
      v13 = pdf_aes_create(a3, a4);
      v9[2] = v13;
      if (!v13)
      {
LABEL_18:
        decryptor_finalize(v9);
        return 0;
      }

      *(v9 + 32) = 0;
      v9[5] = 0;
      v11 = decryptor_aes_refill;
    }

    else if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_18;
      }

      RC4 = CGCryptorCreateRC4(a3, a4);
      v9[3] = RC4;
      v11 = decryptor_rc4_refill;
      if (!RC4)
      {
        goto LABEL_18;
      }
    }

    v14 = v11;
    *(v9 + 2) = v10;
    result = CGPDFSourceCreateInternal(0x1000uLL);
    if (result)
    {
      *(result + 209) = 1;
      result[6] = decryptor_rewind;
      result[7] = v14;
      *(result + 4) = xmmword_1EF23C618;
      result[10] = v9;
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

void decryptor_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if ((v2 - 2) >= 2)
    {
      if (v2 == 1)
      {
        CGCryptorRelease(*(a1 + 24));
      }
    }

    else
    {
      pdf_aes_free(*(a1 + 16));
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

size_t decryptor_rc4_refill(uint64_t *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = CGPDFSourceRead(*a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    CGCryptorProcessBytes(a1[3], a2, v10, a2, v10, 0);
  }

  return v10;
}

size_t decryptor_aes_refill(uint64_t a1, char *dataOut, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xFFF)
  {
    _CGHandleAssert("decryptor_aes_refill", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Security/CGPDFDecryptor.c", "buffer_size >= AES_BUFFER_SIZE", "buffer size (%lu) too big", a6, a7, a8, a3);
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (!v9)
    {
      if (CGPDFSourceRead(*a1, &__dst, 0x10uLL, a4, a5, a6, a7, a8) < 0x10)
      {
        v9 = 0;
        goto LABEL_13;
      }

      v11 = *(a1 + 16);
      *(v11 + 40) = __dst;
      CCCryptorReset(*(v11 + 56), (v11 + 40));
      v9 = CGPDFSourceRead(*a1, a1 + 48, 0x1000uLL, v12, v13, v14, v15, v16);
      *(a1 + 40) = v9;
    }

    pdf_aes_process_buffer(*(a1 + 16), (a1 + 48), dataOut, v9);
    v22 = CGPDFSourceRead(*a1, a1 + 48, 0x1000uLL, v17, v18, v19, v20, v21);
    *(a1 + 40) = v22;
    if (v22)
    {
      return v9;
    }

    if (v9)
    {
      v23 = dataOut[v9 - 1];
      v24 = v9 >= v23;
      v25 = v9 - v23;
      if (v24)
      {
        v9 = v25;
      }

      else
      {
        pdf_error("invalid AES padding.");
      }
    }

LABEL_13:
    *(a1 + 32) = 1;
    return v9;
  }

  return 0;
}

uint64_t decryptor_rewind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CGPDFSourceRewind(*a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = *(a1 + 8);
  if ((v17 - 2) >= 2)
  {
    if (v17 == 1)
    {
      v18 = *(a1 + 24);

      return CGCryptorReset(v18, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  else
  {
    result = pdf_aes_reset(*(a1 + 16));
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t bits_per_component_type(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 - 1;
  if ((a1 - 1) >= 5 || ((0x1Bu >> v9) & 1) == 0)
  {
    _CGHandleAssert("bits_per_component_type", 66, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "", "Unimplemented", a6, a7, a8, v8);
  }

  return qword_1844DF3F8[v9];
}

void upscale_provider_release_info(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    CGDataProviderUnlock(*a1);
  }

  CGDataProviderRelease(*a1);
  v2 = *(a1 + 136);
  if (v2)
  {
    vImageConverter_Release(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t upscale_provider_release_data(uint64_t *a1)
{
  CGDataProviderReleaseBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderReleaseData(v2);
}

uint64_t upscale_provider_retain_data(uint64_t *a1)
{
  CGDataProviderRetainBytePtr(*a1);
  v2 = *a1;

  return CGDataProviderRetainData(v2);
}

unint64_t upscale_provider_get_bytes_at_position(uint64_t a1, _BYTE *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    _CGHandleAssert("upscale_provider_get_bytes_at_position", 1196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "info->src_provider_uses_random_access == true", "", a6, a7, a8, v8);
  }

  return upscale_provider_get_bytes_at_position_inner(a1, a2, a3, a4, 0, a6, a7, a8);
}

unint64_t upscale_provider_get_bytes_at_position_inner(uint64_t a1, _BYTE *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upscale_provider_get_bytes_at_position_inner", 1103, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "pos >= 0", "position %lld", a6, a7, a8, a3);
  }

  v10 = *(a1 + 40);
  if (v10 <= 7)
  {
    _CGHandleAssert("upscale_provider_get_bytes_at_position_inner", 1108, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "dst_pixel_size != 0", "zero pixel size", a6, a7, a8, v166);
  }

  v17 = destination_position_to_source_position(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 80), *(a1 + 96), a3, a7, a8);
  if (v17 >= 0x7FFFFFFF)
  {
    _CGHandleAssert("upscale_provider_get_bytes_at_position_inner", 1121, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_byte_pos >= 0 && src_byte_pos < INT_MAX", "positions %lld", v14, v15, v16, v17);
  }

  v18 = *(a1 + 80);
  v19 = 8 * a4 / v10;
  if (!a3)
  {
    goto LABEL_8;
  }

  v20 = *(a1 + 40);
  if (!*(a1 + 96))
  {
    v20 = 8 * a3 * v18 / v20;
    goto LABEL_10;
  }

  v21 = a3 % *(a1 + 48);
  if (!v21)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_11;
  }

  LOBYTE(v20) = 8 * v21 / v20 * v18;
LABEL_10:
  v22 = v20 & 7;
LABEL_11:
  v23 = (v18 * v19 + 7) >> 3;
  if (v23 > *(a1 + 152))
  {
    _CGHandleAssert("upscale_provider_get_bytes_at_position_inner", 1135, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "bytes_to_read <= info->work_buffer_size", "%s: bytes_to_read %zd > work_buffer_size %zd", v14, v15, v16, "upscale_provider_get_bytes_at_position_inner");
  }

  v24 = *a1;
  bzero(*(a1 + 144), v23);
  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v24, *(a1 + 8), *(a1 + 144), v17, v23, v25, v26, v27);
  v32 = BytesAtPositionInternal;
  if (BytesAtPositionInternal != v23)
  {
    v19 = 8 * BytesAtPositionInternal / *(a1 + 80);
  }

  v33 = *(a1 + 32);
  v34 = *(a1 + 88);
  v35 = *(a1 + 144);
  if (*(a1 + 9) != 1)
  {
    v43 = v33 - 1;
    if ((v33 - 1) >= 5 || ((0x1Bu >> v43) & 1) == 0)
    {
      _CGHandleAssert("bytes_per_component_type", 87, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "", "Unimplemented", v29, v30, v31, v166);
    }

    v44 = *(a1 + 80);
    v45 = *(a1 + 120);
    v46 = *(a1 + 124);
    v47 = *(a1 + 128);
    if (v34 <= 0xC && ((1 << v34) & 0x1016) != 0 && !v22)
    {
      upscale_using_vImage(a2, v35, *(a1 + 72) * v19, qword_1844DF420[v43] * *(a1 + 72) * v19, (v44 * v19 + 7) >> 3, *(a1 + 136));
      goto LABEL_283;
    }

    if (v33 > 3)
    {
      if (v33 == 4)
      {
        if (v45)
        {
          _CGHandleAssert("upscale_components_internal", 840, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %u", v29, v30, v31, *(a1 + 120));
        }

        if (v34 - 33 <= 0xFFFFFFFFFFFFFFEFLL)
        {
          _CGHandleAssert("upscale_to_32bit", 762, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_component > 16 && src_bits_per_component < 33", "bpc %zu", v29, v30, v31, *(a1 + 88));
        }

        if (v44 / v34 * v34 != v44)
        {
          _CGHandleAssert("upscale_to_32bit", 765, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %zu  bpc %zu  bpp %zu", v29, v30, v31, v44 / v34);
        }

        v63 = v44 / v34 * v19;
        if (v22)
        {
          LODWORD(v64) = 0;
          v65 = 0;
          do
          {
            if (!v64)
            {
              v66 = *v35++;
              v65 = v66 | (v65 << 8);
              LODWORD(v64) = 8;
            }

            LODWORD(v64) = v64 - 1;
            --v22;
          }

          while (v22);
        }

        else
        {
          v65 = 0;
          LODWORD(v64) = 0;
        }

        if (v34 == 32 && v46 == 0x2000)
        {
          if (v63)
          {
            for (i = 0; i < v63; ++i)
            {
              if (v64 > 0x17)
              {
                v111 = v64;
              }

              else
              {
                do
                {
                  v110 = *v35++;
                  v65 = v110 | (v65 << 8);
                  v111 = v64 + 8;
                  v70 = v64 >= 0x10;
                  LODWORD(v64) = v64 + 8;
                }

                while (!v70);
              }

              v112 = v111 - 24;
              if ((v111 - 24) > 7)
              {
                v114 = v65;
                v115 = v111 - 24;
              }

              else
              {
                v113 = *v35++;
                v114 = v113 | (v65 << 8);
                v115 = v111 - 16;
              }

              v116 = (v65 >> v112) << 8;
              LODWORD(v64) = v115 - 8;
              v117 = bswap32((v114 >> (v115 - 8)) | v116) / 4294967300.0;
              if (v117 > 1.0)
              {
                v117 = 1.0;
              }

              v118 = v117;
              *&a2[4 * i] = v118;
              v65 = v114;
            }
          }
        }

        else if (v63)
        {
          v119 = 0;
          v120 = rescale_to_float_max_per_component[v34 - 17];
          do
          {
            if (v34 <= 0x18)
            {
              v123 = 0;
              v124 = v64;
              v125 = v34;
            }

            else
            {
              if (v64 > 0x17)
              {
                v122 = v64;
              }

              else
              {
                do
                {
                  v121 = *v35++;
                  v65 = v121 | (v65 << 8);
                  v122 = v64 + 8;
                  v70 = v64 >= 0x10;
                  LODWORD(v64) = v64 + 8;
                }

                while (!v70);
              }

              v124 = (v122 - 24);
              v123 = ((v65 >> (v122 - 24)) & 0xFFFFFF) << (v34 - 24);
              LODWORD(v64) = v124;
              v125 = v34 - 24;
            }

            if (v125 > v124)
            {
              do
              {
                v126 = *v35++;
                v65 = v126 | (v65 << 8);
                v64 = (v64 + 8);
              }

              while (v125 > v64);
            }

            LODWORD(v64) = v64 - v125;
            v127 = ((v65 >> v64) & ~(-1 << v125) | v123) / v120;
            if (v127 > 1.0)
            {
              v127 = 1.0;
            }

            v128 = v127;
            *&a2[4 * v119++] = v128;
          }

          while (v119 < v63);
        }

        goto LABEL_283;
      }

      if (v33 == 5)
      {
        if (v45 != 0x40000)
        {
          _CGHandleAssert("upscale_components_internal", 832, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatRGBCIF10", "pixel format %u", v29, v30, v31, *(a1 + 120));
        }

        if (v34 != 10)
        {
          _CGHandleAssert("convert_CIF10_to_fp16", 717, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_component == 10", "bpc %zu", v29, v30, v31, *(a1 + 88));
        }

        if (v44 != 32)
        {
          _CGHandleAssert("convert_CIF10_to_fp16", 718, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_pixel == 32", "bpp %zu", v29, v30, v31, *(a1 + 80));
        }

        src.data = *(a1 + 144);
        src.height = 1;
        src.width = v19;
        src.rowBytes = 4 * v19;
        dest.data = a2;
        dest.height = 1;
        dest.width = v19;
        dest.rowBytes = 8 * v19;
        vImageConvert_XRGB2101010ToARGB16F(&src, 1.0, &dest, 384, 895, 0, 0x810u);
        goto LABEL_283;
      }
    }

    else
    {
      if (v33 == 1)
      {
        if (v34 - 8 <= 0xFFFFFFFFFFFFFFF8)
        {
          _CGHandleAssert("upscale_to_8bit", 435, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_component > 0 && src_bits_per_component < 8", "bpc = %zu", v29, v30, v31, *(a1 + 88));
        }

        if (v34 == 5)
        {
          if (v45 == 0x10000)
          {
            if (v44 != 16)
            {
              _CGHandleAssert("upscale_555_RGB_to_8bit", 339, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_pixel == 16", "src bpp %lu", v29, v30, v31, *(a1 + 80));
            }

            if ((v47 - 7) <= 0xFFFFFFFB)
            {
              _CGHandleAssert("upscale_555_RGB_to_8bit", 344, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_alpha_info == kCGImageAlphaLast || src_alpha_info == kCGImageAlphaNoneSkipLast || src_alpha_info == kCGImageAlphaFirst || src_alpha_info == kCGImageAlphaNoneSkipFirst", "src alpha info %u", v29, v30, v31, *(a1 + 128));
            }

            if (v46 && v46 != 4096 && v46 != 12288)
            {
              _CGHandleAssert("upscale_555_RGB_to_8bit", 351, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_byte_order == kCGImageByteOrderDefault || src_byte_order == kCGImageByteOrder16Little|| src_byte_order == kCGImageByteOrder16Big", "byte order = %u", v29, v30, v31, *(a1 + 124));
            }

            v145 = *(a1 + 128) & 5;
            v146 = v145 != 4;
            if (v46 == 4096 || (*(a1 + 128) & 5) != 4)
            {
              v152 = v46 != 4096;
              if (v46 != 4096)
              {
                v146 = 1;
              }

              if (v146)
              {
                if (v46 == 4096 || v145 == 4)
                {
                  if (!v19)
                  {
                    v152 = 1;
                  }

                  if (!v152 && v145 != 4)
                  {
                    v163 = v19;
                    do
                    {
                      v164 = *v35;
                      v35 += 2;
                      *a2 = expand_5_to_8bpc_table[v164 >> 11];
                      a2[1] = expand_5_to_8bpc_table[(v164 >> 6) & 0x1F];
                      a2[2] = expand_5_to_8bpc_table[(v164 >> 1) & 0x1F];
                      a2[3] = expand_1_to_8bpc_table[v164 & 1];
                      a2 += 4;
                      --v163;
                    }

                    while (v163);
                  }
                }

                else if (v19)
                {
                  v153 = v19;
                  do
                  {
                    v154 = *v35;
                    v35 += 2;
                    v155 = bswap32(v154);
                    *a2 = expand_5_to_8bpc_table[WORD1(v155) >> 11];
                    a2[1] = expand_5_to_8bpc_table[(v155 >> 22) & 0x1F];
                    a2[2] = expand_5_to_8bpc_table[(v155 >> 17) & 0x1F];
                    a2[3] = expand_1_to_8bpc_table[BYTE2(v155) & 1];
                    a2 += 4;
                    --v153;
                  }

                  while (v153);
                }
              }

              else if (v19)
              {
                v161 = v19;
                do
                {
                  v162 = *v35;
                  v35 += 2;
                  *a2 = expand_1_to_8bpc_table[v162 >> 15];
                  a2[1] = expand_5_to_8bpc_table[(v162 >> 10) & 0x1F];
                  a2[2] = expand_5_to_8bpc_table[(v162 >> 5) & 0x1F];
                  a2[3] = expand_5_to_8bpc_table[v162 & 0x1F];
                  a2 += 4;
                  --v161;
                }

                while (v161);
              }
            }

            else if (v19)
            {
              v147 = v19;
              do
              {
                v148 = *v35;
                v35 += 2;
                v149 = bswap32(v148);
                *a2 = expand_1_to_8bpc_table[WORD1(v149) >> 15];
                a2[1] = expand_5_to_8bpc_table[(v149 >> 26) & 0x1F];
                a2[2] = expand_5_to_8bpc_table[(v149 >> 21) & 0x1F];
                a2[3] = expand_5_to_8bpc_table[BYTE2(v149) & 0x1F];
                a2 += 4;
                --v147;
              }

              while (v147);
            }

            goto LABEL_283;
          }

          if (v45 == 0x20000)
          {
            if (v44 != 16)
            {
              _CGHandleAssert("upscale_565_RGB_to_8bit", 410, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_pixel == 16", "src bpp %zu", v29, v30, v31, *(a1 + 80));
            }

            if (v46)
            {
              if (v46 == 4096)
              {
                if (v19)
                {
                  v159 = v19;
                  do
                  {
                    v160 = *v35;
                    v35 += 2;
                    *a2 = expand_5_to_8bpc_table[v160 >> 11];
                    a2[1] = expand_6_to_8bpc_table[(v160 >> 5) & 0x3F];
                    a2[2] = expand_5_to_8bpc_table[v160 & 0x1F];
                    a2 += 3;
                    --v159;
                  }

                  while (v159);
                }

                goto LABEL_283;
              }

              if (v46 != 12288)
              {
                _CGHandleAssert("upscale_565_RGB_to_8bit", 413, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_byte_order == kCGImageByteOrderDefault || src_byte_order == kCGImageByteOrder16Little|| src_byte_order == kCGImageByteOrder16Big", "src byte order %u", v29, v30, v31, *(a1 + 124));
              }
            }

            if (v19)
            {
              v60 = v19;
              do
              {
                v61 = *v35;
                v35 += 2;
                v62 = bswap32(v61);
                *a2 = expand_5_to_8bpc_table[WORD1(v62) >> 11];
                a2[1] = expand_6_to_8bpc_table[(v62 >> 21) & 0x3F];
                a2[2] = expand_5_to_8bpc_table[BYTE2(v62) & 0x1F];
                a2 += 3;
                --v60;
              }

              while (v60);
            }

            goto LABEL_283;
          }
        }

        if (v45)
        {
          _CGHandleAssert("upscale_packed_to_8bit", 203, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %d", v29, v30, v31, *(a1 + 120));
        }

        if (v44 / v34 * v34 != v44)
        {
          _CGHandleAssert("upscale_packed_to_8bit", 206, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %lu bpc %lu bpp %lu", v29, v30, v31, v44 / v34);
        }

        v101 = v44 / v34 * v19;
        if (v22)
        {
          LODWORD(v102) = 0;
          v103 = 0;
          do
          {
            if (!v102)
            {
              v104 = *v35++;
              v103 = v104 | (v103 << 8);
              LODWORD(v102) = 8;
            }

            LODWORD(v102) = v102 - 1;
            --v22;
          }

          while (v22);
          if (!v101)
          {
            goto LABEL_283;
          }
        }

        else
        {
          v103 = 0;
          LODWORD(v102) = 0;
          if (!v101)
          {
            goto LABEL_283;
          }
        }

        v136 = 0;
        v137 = *(&off_1E6E19978 + v34 - 1);
        do
        {
          if (v34 > v102)
          {
            do
            {
              v138 = *v35++;
              v103 = v138 | (v103 << 8);
              v102 = (v102 + 8);
            }

            while (v34 > v102);
          }

          LODWORD(v102) = v102 - v34;
          a2[v136++] = *(v137 + ((v103 >> v102) & ~(-1 << v34)));
        }

        while (v136 < v101);
        goto LABEL_283;
      }

      if (v33 == 2)
      {
        if (v34 - 16 <= 0xFFFFFFFFFFFFFFF8)
        {
          _CGHandleAssert("upscale_to_16bit", 687, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_component > 8 && src_bits_per_component < 16", "bpc %zu", v29, v30, v31, *(a1 + 88));
        }

        if (v34 == 10 && v45 == 196608)
        {
          if (v44 != 32)
          {
            _CGHandleAssert("upscale_101010_RGB_to_16bit", 621, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_pixel == 32", "bpp %zu", v29, v30, v31, *(a1 + 80));
          }

          v48 = v47 - 1;
          if ((v47 - 1) >= 6)
          {
            _CGHandleAssert("upscale_101010_RGB_to_16bit", 628, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_alpha_info == kCGImageAlphaLast || src_alpha_info == kCGImageAlphaNoneSkipLast || src_alpha_info == kCGImageAlphaPremultipliedLast || src_alpha_info == kCGImageAlphaFirst || src_alpha_info == kCGImageAlphaNoneSkipFirst || src_alpha_info == kCGImageAlphaPremultipliedFirst", "alpha info = %u", v29, v30, v31, *(a1 + 128));
          }

          if (v46 && v46 != 0x2000 && v46 != 0x4000)
          {
            _CGHandleAssert("upscale_101010_RGB_to_16bit", 636, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_byte_order == kCGImageByteOrderDefault || src_byte_order == kCGImageByteOrder32Little|| src_byte_order == kCGImageByteOrder32Big", "byte order %u", v29, v30, v31, *(a1 + 124));
          }

          if (v46 == 0x2000 || ((v48 ^ 1) & 1) != 0)
          {
            v129 = v46 != 0x2000;
            if ((v46 != 0x2000) | (v48 ^ 1) & 1)
            {
              if (v46 == 0x2000 || ((v47 - 1) & 1) != 0)
              {
                if (!v19)
                {
                  v129 = 1;
                }

                if (!v129 && ((v47 - 1) & 1) == 0)
                {
                  v156 = v19;
                  do
                  {
                    v157 = *v35;
                    v35 += 4;
                    v158 = expand_2_to_16bpc_table[v157 & 3];
                    *a2 = (0x400FC3F0FC3F10 * (v157 >> 22) + 0x800000000000) >> 48;
                    *(a2 + 1) = (0x400FC3F0FC3F10 * ((v157 >> 12) & 0x3FF) + 0x800000000000) >> 48;
                    *(a2 + 2) = (0x400FC3F0FC3F10 * ((v157 >> 2) & 0x3FF) + 0x800000000000) >> 48;
                    *(a2 + 3) = v158;
                    a2 += 8;
                    --v156;
                  }

                  while (v156);
                }
              }

              else if (v19)
              {
                v130 = v19;
                do
                {
                  v131 = *v35;
                  v35 += 4;
                  v132 = bswap32(v131);
                  v133 = v132 >> 22;
                  v134 = (v132 >> 12) & 0x3FF;
                  v135 = (v132 >> 2) & 0x3FF;
                  LOWORD(v132) = expand_2_to_16bpc_table[v132 & 3];
                  *a2 = (0x400FC3F0FC3F10 * v133 + 0x800000000000) >> 48;
                  *(a2 + 1) = (0x400FC3F0FC3F10 * v134 + 0x800000000000) >> 48;
                  *(a2 + 2) = (0x400FC3F0FC3F10 * v135 + 0x800000000000) >> 48;
                  *(a2 + 3) = v132;
                  a2 += 8;
                  --v130;
                }

                while (v130);
              }
            }

            else if (v19)
            {
              v150 = v19;
              do
              {
                v151 = *v35;
                v35 += 4;
                *a2 = *(expand_2_to_16bpc_table + ((v151 >> 29) & 6));
                *(a2 + 1) = (0x400FC3F0FC3F10 * ((v151 >> 20) & 0x3FF) + 0x800000000000) >> 48;
                *(a2 + 2) = (0x400FC3F0FC3F10 * ((v151 >> 10) & 0x3FF) + 0x800000000000) >> 48;
                *(a2 + 3) = (0x400FC3F0FC3F10 * (v151 & 0x3FF) + 0x800000000000) >> 48;
                a2 += 8;
                --v150;
              }

              while (v150);
            }
          }

          else if (v19)
          {
            v49 = v19;
            do
            {
              v50 = *v35;
              v35 += 4;
              v51 = bswap32(v50);
              *a2 = expand_2_to_16bpc_table[v51 >> 30];
              *(a2 + 1) = (0x400FC3F0FC3F10 * ((v51 >> 20) & 0x3FF) + 0x800000000000) >> 48;
              *(a2 + 2) = (0x400FC3F0FC3F10 * ((v51 >> 10) & 0x3FF) + 0x800000000000) >> 48;
              *(a2 + 3) = (0x400FC3F0FC3F10 * (v51 & 0x3FF) + 0x800000000000) >> 48;
              a2 += 8;
              --v49;
            }

            while (v49);
          }
        }

        else
        {
          if (v45)
          {
            _CGHandleAssert("upscale_packed_to_16bit", 660, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %u", v29, v30, v31, *(a1 + 120));
          }

          if (v44 / v34 * v34 != v44)
          {
            _CGHandleAssert("upscale_packed_to_16bit", 663, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %zu  bpc %zu  bpp %zu", v29, v30, v31, v44 / v34);
          }

          v105 = v44 / v34 * v19;
          if (v22)
          {
            LODWORD(v106) = 0;
            v107 = 0;
            do
            {
              if (!v106)
              {
                v108 = *v35++;
                v107 = v108 | (v107 << 8);
                LODWORD(v106) = 8;
              }

              LODWORD(v106) = v106 - 1;
              --v22;
            }

            while (v22);
          }

          else
          {
            v107 = 0;
            LODWORD(v106) = 0;
          }

          if (v105)
          {
            v139 = 0;
            v140 = rescale_to_16bit_kScaleTable[v34];
            do
            {
              if (v34 < 0x19)
              {
                v143 = v34;
              }

              else
              {
                if (v106 > 0x17)
                {
                  v142 = v106;
                }

                else
                {
                  do
                  {
                    v141 = *v35++;
                    v107 = v141 | (v107 << 8);
                    v142 = v106 + 8;
                    v70 = v106 >= 0x10;
                    LODWORD(v106) = v106 + 8;
                  }

                  while (!v70);
                }

                LODWORD(v106) = v142 - 24;
                v143 = v34 - 24;
              }

              if (v143 > v106)
              {
                do
                {
                  v144 = *v35++;
                  v107 = v144 | (v107 << 8);
                  v106 = (v106 + 8);
                }

                while (v143 > v106);
              }

              LODWORD(v106) = v106 - v143;
              *&a2[2 * v139++] = (v140 * ((v107 >> v106) & ~(-1 << v143)) + 0x800000000000) >> 48;
            }

            while (v139 < v105);
          }
        }

        goto LABEL_283;
      }
    }

    _CGHandleAssert("upscale_components_internal", 850, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "", "Unimplemented", v29, v30, v31, v166);
  }

  v36 = *(a1 + 80);
  v37 = *(a1 + 120);
  v38 = *(a1 + 160);
  if (v33 != 4)
  {
    if (v33 != 2)
    {
      if (v33 != 1)
      {
        _CGHandleAssert("expand_components_without_scaling", 1070, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "", "Unimplemented", v29, v30, v31, v166);
      }

      if (v37)
      {
        _CGHandleAssert("expand_packed_to_8bit", 923, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %u", v29, v30, v31, *(a1 + 120));
      }

      if (v36 / v34 * v34 != v36)
      {
        _CGHandleAssert("expand_packed_to_8bit", 926, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %zu bpc %zu bpp %zu", v29, v30, v31, v36 / v34);
      }

      v39 = v36 / v34 * v19;
      if (v22)
      {
        LODWORD(v40) = 0;
        v41 = 0;
        do
        {
          if (!v40)
          {
            v42 = *v35++;
            v41 = v42 | (v41 << 8);
            LODWORD(v40) = 8;
          }

          LODWORD(v40) = v40 - 1;
          --v22;
        }

        while (v22);
        if (!v39)
        {
          goto LABEL_283;
        }
      }

      else
      {
        v41 = 0;
        LODWORD(v40) = 0;
        if (!v39)
        {
          goto LABEL_283;
        }
      }

      for (j = 0; j < v39; ++j)
      {
        if (v34 <= 0x18)
        {
          v79 = 0;
          v80 = v40;
          v81 = v34;
        }

        else
        {
          if (v40 > 0x17)
          {
            v78 = v40;
          }

          else
          {
            do
            {
              v77 = *v35++;
              v41 = v77 | (v41 << 8);
              v78 = v40 + 8;
              v70 = v40 >= 0x10;
              LODWORD(v40) = v40 + 8;
            }

            while (!v70);
          }

          v80 = (v78 - 24);
          v79 = ((v41 >> (v78 - 24)) & 0xFFFFFF) << (v34 - 24);
          LODWORD(v40) = v80;
          v81 = v34 - 24;
        }

        if (v81 > v80)
        {
          do
          {
            v82 = *v35++;
            v41 = v82 | (v41 << 8);
            v40 = (v40 + 8);
          }

          while (v81 > v40);
        }

        LODWORD(v40) = v40 - v81;
        v83 = (v41 >> v40) & ~(-1 << v81) | v79;
        if (v38)
        {
          v83 = (*(a1 + 168) + v83 * ((*(a1 + 176) - *(a1 + 168)) / ((2 << (v34 - 1)) - 1)) + 0.5);
        }

        a2[j] = v83;
      }

      goto LABEL_283;
    }

    if (v37)
    {
      _CGHandleAssert("expand_packed_to_16bit_integer", 954, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %u", v29, v30, v31, *(a1 + 120));
    }

    if (v36 / v34 * v34 != v36)
    {
      _CGHandleAssert("expand_packed_to_16bit_integer", 957, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %zu  sbc %zu  bpp %zu", v29, v30, v31, v36 / v34);
    }

    v52 = v36 / v34 * v19;
    if (v22)
    {
      LODWORD(v53) = 0;
      v54 = 0;
      do
      {
        if (!v53)
        {
          v55 = *v35++;
          v54 = v55 | (v54 << 8);
          LODWORD(v53) = 8;
        }

        LODWORD(v53) = v53 - 1;
        --v22;
      }

      while (v22);
      if (!v52)
      {
        goto LABEL_283;
      }
    }

    else
    {
      v54 = 0;
      LODWORD(v53) = 0;
      if (!v52)
      {
        goto LABEL_283;
      }
    }

    for (k = 0; k < v52; ++k)
    {
      if (v34 <= 0x18)
      {
        v71 = 0;
        v72 = v53;
        v73 = v34;
      }

      else
      {
        if (v53 > 0x17)
        {
          v69 = v53;
        }

        else
        {
          do
          {
            v68 = *v35++;
            v54 = v68 | (v54 << 8);
            v69 = v53 + 8;
            v70 = v53 >= 0x10;
            LODWORD(v53) = v53 + 8;
          }

          while (!v70);
        }

        v72 = (v69 - 24);
        v71 = ((v54 >> (v69 - 24)) & 0xFFFFFF) << (v34 - 24);
        LODWORD(v53) = v72;
        v73 = v34 - 24;
      }

      if (v73 > v72)
      {
        do
        {
          v74 = *v35++;
          v54 = v74 | (v54 << 8);
          v53 = (v53 + 8);
        }

        while (v73 > v53);
      }

      LODWORD(v53) = v53 - v73;
      v75 = (v54 >> v53) & ~(-1 << v73) | v71;
      if (v38)
      {
        v75 = (*(a1 + 168) + v75 * ((*(a1 + 176) - *(a1 + 168)) / ((2 << (v34 - 1)) - 1)) + 0.5);
      }

      *&a2[2 * k] = v75;
    }

    goto LABEL_283;
  }

  if (v37)
  {
    _CGHandleAssert("expand_components_without_scaling", 1058, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_pixel_format == kCGImagePixelFormatPacked", "pixel format %u", v29, v30, v31, *(a1 + 120));
  }

  if (v34 - 33 <= 0xFFFFFFFFFFFFFFEFLL)
  {
    _CGHandleAssert("expand_packed_to_32bit", 986, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "src_bits_per_component > 16 && src_bits_per_component < 33", "bpc %zu", v29, v30, v31, *(a1 + 88));
  }

  if (v36 / v34 * v34 != v36)
  {
    _CGHandleAssert("expand_packed_to_32bit", 989, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "component_per_pixel_count * src_bits_per_component == src_bits_per_pixel", "cpp %zu  sbc %zu  bpp %zu", v29, v30, v31, v36 / v34);
  }

  v56 = v36 / v34 * v19;
  if (v22)
  {
    LODWORD(v57) = 0;
    v58 = 0;
    do
    {
      if (!v57)
      {
        v59 = *v35++;
        v58 = v59 | (v58 << 8);
        LODWORD(v57) = 8;
      }

      LODWORD(v57) = v57 - 1;
      --v22;
    }

    while (v22);
  }

  else
  {
    v58 = 0;
    LODWORD(v57) = 0;
  }

  if (v34 == 32 && *(a1 + 124) == 0x2000)
  {
    if (v56)
    {
      for (m = 0; m < v56; ++m)
      {
        v85 = v58;
        if (v57 > 0x17)
        {
          v87 = v57;
        }

        else
        {
          do
          {
            v86 = *v35++;
            v85 = v86 | (v85 << 8);
            v87 = v57 + 8;
            v70 = v57 >= 0x10;
            LODWORD(v57) = v57 + 8;
          }

          while (!v70);
        }

        v88 = v87 - 24;
        if ((v87 - 24) > 7)
        {
          v58 = v85;
          v90 = v87 - 24;
        }

        else
        {
          v89 = *v35++;
          v58 = v89 | (v85 << 8);
          v90 = v87 - 16;
        }

        v91 = (v85 >> v88) << 8;
        LODWORD(v57) = v90 - 8;
        v92 = bswap32((v58 >> (v90 - 8)) | v91);
        if (v38)
        {
          v92 = (*(a1 + 168) + 0.5 - v92 * (*(a1 + 176) - *(a1 + 168)));
        }

        *&a2[4 * m] = v92;
      }
    }
  }

  else if (v56)
  {
    for (n = 0; n < v56; ++n)
    {
      if (v34 <= 0x18)
      {
        v96 = 0;
        v97 = v57;
        v98 = v34;
      }

      else
      {
        if (v57 > 0x17)
        {
          v95 = v57;
        }

        else
        {
          do
          {
            v94 = *v35++;
            v58 = v94 | (v58 << 8);
            v95 = v57 + 8;
            v70 = v57 >= 0x10;
            LODWORD(v57) = v57 + 8;
          }

          while (!v70);
        }

        v97 = (v95 - 24);
        v96 = ((v58 >> (v95 - 24)) & 0xFFFFFF) << (v34 - 24);
        LODWORD(v57) = v97;
        v98 = v34 - 24;
      }

      if (v98 > v97)
      {
        do
        {
          v99 = *v35++;
          v58 = v99 | (v58 << 8);
          v57 = (v57 + 8);
        }

        while (v98 > v57);
      }

      LODWORD(v57) = v57 - v98;
      v100 = (v58 >> v57) & ~(-1 << v98) | v96;
      if (v38)
      {
        v100 = (*(a1 + 168) + v100 * ((*(a1 + 176) - *(a1 + 168)) / ((2 << (v34 - 1)) - 1)) + 0.5);
      }

      *&a2[4 * n] = v100;
    }
  }

LABEL_283:
  if (v32 < v23)
  {
    a4 = (v19 * *(a1 + 40) + 7) >> 3;
  }

  if (a5)
  {
    *(a1 + 112) += v32;
    *(a1 + 64) += a4;
  }

  return a4;
}

void upscale_using_vImage(void *a1, void *a2, vImagePixelCount a3, size_t a4, size_t a5, vImageConverterRef converter)
{
  v33 = *MEMORY[0x1E69E9840];
  srcs.data = a2;
  srcs.height = 1;
  srcs.width = a3;
  srcs.rowBytes = a5;
  dests.data = a1;
  dests.height = 1;
  dests.width = a3;
  dests.rowBytes = a4;
  v7 = vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0x80u);
  if (v7 < 0)
  {
    v19 = "vImageConvert_AnyToAny failed to return vImage buffer size %s";
LABEL_14:
    CGPostError(v19, v8, v9, v10, v11, v12, v13, v14, "upscale_using_vImage");
    return;
  }

  if (!v7)
  {
    if (!vImageConvert_AnyToAny(converter, &srcs, &dests, 0, 0))
    {
      return;
    }

    goto LABEL_13;
  }

  v16 = MEMORY[0x1EEE9AC00](v7, v15);
  v18 = &v30 - v17;
  if (v16 <= 0x400)
  {
    if (!vImageConvert_AnyToAny(converter, &srcs, &dests, &v30 - v17, 0))
    {
      return;
    }

LABEL_13:
    v19 = "%s : vImageConvert_AnyToAny failed to convert data";
    goto LABEL_14;
  }

  v20 = malloc_type_malloc(v16, 0xE4E8E8EBuLL);
  if (!v20)
  {
    CGPostError("vImageConvert_AnyToAny could not allocate buffer %s", v21, v22, v23, v24, v25, v26, v27, "upscale_using_vImage");
    v19 = "%s : vImageConvert_AnyToAny failed to convert data";
    goto LABEL_14;
  }

  v28 = v20;
  v29 = vImageConvert_AnyToAny(converter, &srcs, &dests, v20, 0);
  if (v28 != v18)
  {
    free(v28);
  }

  if (v29)
  {
    goto LABEL_13;
  }
}

void *upscale_provider_rewind(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if (!*result)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v11);
  }

  if ((*(v8 + 20) | 2) != 3)
  {
    _CGHandleAssert("upscale_provider_rewind", 1260, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "", "Unimplemented", a6, a7, a8, v11);
  }

  v9 = result;
  v10 = *(v8 + 64);
  if (v10)
  {
    result = v10(*(v8 + 24));
  }

  *(v8 + 261) = 0;
  v9[8] = 0;
  v9[14] = 0;
  return result;
}

unint64_t upscale_provider_skip_forward(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upscale_provider_skip_forward", 1214, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "count >= 0", "count %lld", a6, a7, a8, a2);
  }

  v10 = *a1;
  v11 = byte_count_to_byte_count(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 96), a2, a8);
  v12 = CGDataProviderSkipForwardInternal(v10, v11);
  v16 = v12;
  if ((v12 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("upscale_provider_skip_forward", 1227, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "skipped >= 0", "skipped %lld", v13, v14, v15, v12);
  }

  if (v12 != v11)
  {
    v8 = byte_count_to_byte_count(*(a1 + 80), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 40), *(a1 + 48), v12, v15);
  }

  *(a1 + 112) += v16;
  *(a1 + 64) += v8;
  return v8;
}

unint64_t upscale_provider_get_bytes(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    _CGHandleAssert("upscale_provider_get_bytes", 1204, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderUpscale.c", "info->src_provider_uses_random_access == false", "", a6, a7, a8, v8);
  }

  return upscale_provider_get_bytes_at_position_inner(a1, a2, 0, a3, 1, a6, a7, a8);
}

uint64_t readingOrder(void *a1, void *a2, double *a3)
{
  v34 = *a3;
  [a1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [a2 bounds];
  rect_24 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = fmin(v9, v11);
  v20 = v19 < 0.0;
  v21 = v7;
  v22 = v11;
  if (v19 < 0.0)
  {
    v35.origin.x = v5;
    v35.origin.y = v7;
    v35.size.width = v9;
    v35.size.height = v11;
    *(&v21 - 1) = CGRectStandardize(v35);
  }

  rect_8 = v22;
  rect_16 = v21;
  rect = v5;
  v23 = fmin(v16, v18);
  v24 = v23 < 0.0;
  y = v14;
  height = v18;
  if (v23 < 0.0)
  {
    v38.origin.x = rect_24;
    v38.origin.y = v14;
    v38.size.width = v16;
    v38.size.height = v18;
    v39 = CGRectStandardize(v38);
    y = v39.origin.y;
    height = v39.size.height;
    if (!v20)
    {
LABEL_5:
      if (!v24)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v20)
  {
    goto LABEL_5;
  }

  v40.origin.x = rect;
  v40.origin.y = v7;
  v40.size.width = v9;
  v40.size.height = v11;
  v41 = CGRectStandardize(v40);
  v7 = v41.origin.y;
  if (v24)
  {
LABEL_6:
    v36.origin.x = rect_24;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v37 = CGRectStandardize(v36);
    v14 = v37.origin.y;
  }

LABEL_7:
  v27 = rect_16 + rect_8 + v7 * v34;
  v28 = y + height + v14 * v34;
  if (v27 > v28)
  {
    return -1;
  }

  else
  {
    return v27 < v28;
  }
}

uint64_t path_iterator_release(uint64_t this)
{
  if (this)
  {
    return path_iterator::release(this);
  }

  return this;
}

void *path_iterator_begin(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result[2];
    if (v2)
    {
      return v2(result[1], a2, result[6]);
    }
  }

  return result;
}

uint64_t path_iterator_move_to_point(uint64_t result, double a2, double a3)
{
  *v3 = a2;
  *&v3[1] = a3;
  if (result)
  {
    return (*(result + 24))(*(result + 8), 0, v3, *(result + 48));
  }

  return result;
}

uint64_t path_iterator_add_line_to_point(uint64_t result, double a2, double a3)
{
  *v3 = a2;
  *&v3[1] = a3;
  if (result)
  {
    return (*(result + 24))(*(result + 8), 1, v3, *(result + 48));
  }

  return result;
}

uint64_t path_iterator_add_quad_curve_to_point(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5[4] = *MEMORY[0x1E69E9840];
  if (result)
  {
    *v5 = a2;
    *&v5[1] = a3;
    *&v5[2] = a4;
    *&v5[3] = a5;
    return (*(result + 24))(*(result + 8), 2, v5, *(result + 48));
  }

  return result;
}

uint64_t path_iterator_add_curve_to_point(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (result)
  {
    *v7 = a2;
    *&v7[1] = a3;
    *&v7[2] = a4;
    *&v7[3] = a5;
    *&v7[4] = a6;
    *&v7[5] = a7;
    return (*(result + 24))(*(result + 8), 3, v7, *(result + 48));
  }

  return result;
}

uint64_t path_iterator_close_subpath(uint64_t result)
{
  if (result)
  {
    return (*(result + 24))(*(result + 8), 4, 0, *(result + 48));
  }

  return result;
}

void *path_iterator_end(void *result)
{
  if (result)
  {
    v1 = result[4];
    if (v1)
    {
      return v1(result[1], result[6]);
    }
  }

  return result;
}

uint64_t pdf_page_get_thumbnail(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 80) || (value = 0, CGPDFDictionaryGetStream(*(a1 + 16), "Thumb", &value)) && (v3 = CGPDFImageCreate(value)) != 0 && (v4 = v3, *(a1 + 80) = CGPDFImageCreateImageForRenderingSize(v3, 0, 0.0, 0.0), CFRelease(v4), *(a1 + 80)))
    {
      os_unfair_lock_unlock((a1 + 88));
      return *(a1 + 80);
    }

    else
    {
      os_unfair_lock_unlock((a1 + 88));
      return 0;
    }
  }

  return result;
}

uint64_t pdf_page_copy_background_color_hint(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 88));
  v2 = *(a1 + 104);
  if (v2)
  {
    CFRetain(*(a1 + 104));
  }

  os_unfair_lock_unlock((a1 + 88));
  return v2;
}

uint64_t GRAYA8_sample_RGBA32_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 8);
  v9 = v8 >> 6;
  if ((v9 - 3) <= 0xFFFFFFFD)
  {
    _CGHandleAssert("GRAYA8_sample_RGBA32_inner", 9121, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "skip == FIRST_SKIP || skip == LAST_SKIP", "invalid skip code %d", a6, a7, a8, v8 >> 6);
  }

  v10 = (v8 >> 4) & 3;
  if (v10 >= 2)
  {
    _CGHandleAssert("GRAYA8_sample_RGBA32_inner", 9122, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt/blt_gray_with_alpha8.cc", "reverse == NO_REVERSE || reverse == PIXEL_REVERSE", "invalid reverse code %d", a6, a7, a8, v10);
  }

  if (v9 == 2 && v10 == 0)
  {
    v161 = 1;
    v162 = 0;
    v163 = 2;
    v159 = 3;
  }

  else if (v9 == 1 && v10 == 0)
  {
    v159 = 0;
    v162 = 1;
    v161 = 2;
    v163 = 3;
  }

  else
  {
    v14 = (v9 == 2) & (v10 == 1);
    v13 = v14 == 0;
    v163 = v14;
    v15 = 3;
    if (!v13)
    {
      v15 = 0;
    }

    v159 = v15;
    if (v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = 2;
    if (!v13)
    {
      v17 = 3;
    }

    v161 = v16;
    v162 = v17;
  }

  v18 = *(result + 24);
  v19 = *(result + 112);
  v20 = *(result + 48);
  v21 = *(result + 56);
  if (v20)
  {
    v158 = *(result + 112);
    if (v19 > v20)
    {
      v158 = v19 % v20;
    }
  }

  else
  {
    v158 = 0;
  }

  v22 = *(result + 176);
  v23 = *(result + 120);
  v160 = *(result + 32);
  if (v21)
  {
    v157 = *(result + 120);
    if (v23 > v21)
    {
      v157 = v23 % v21;
    }
  }

  else
  {
    v157 = 0;
  }

  v156 = *(result + 80);
  v154 = *(result + 88);
  v152 = *(result + 188);
  v24 = *(result + 152) - 2;
  v25 = *(result + 144) - 1;
  v26 = *(result + 40);
  v27 = v160 + (4 * *(result + 256)) + ((*(result + 260) - 1) * v18) - 4;
  v153 = *(result + 64);
  v155 = *(result + 72);
  do
  {
    if (a3 >= v155)
    {
      v31 = a4;
      if (a3 <= v154)
      {
        v37 = 0;
        v38 = (a3 >> 22) & 0x3C0;
        v39 = 0x3FFFFFFF;
        v40 = a3;
        v41 = v153;
        v42 = v156;
      }

      else
      {
        v33 = *(result + 216);
        v34 = *(result + 224) + v154;
        v35 = v34 - a3 + (v33 >> 1);
        if (v35 < 1)
        {
          goto LABEL_70;
        }

        if (v35 >= v33)
        {
          LODWORD(v36) = 0x3FFFFFFF;
        }

        else
        {
          v36 = (*(result + 232) * v35) >> 32;
        }

        v41 = v153;
        v42 = v156;
        v39 = v152 | v36;
        v40 = v34 - 0x1000000;
        v37 = a3 - v40;
        v38 = 448;
      }
    }

    else
    {
      v28 = *(result + 216);
      v29 = v155 - *(result + 224);
      v30 = a3 - v29 + (v28 >> 1);
      v31 = a4;
      if (v30 < 1)
      {
        goto LABEL_70;
      }

      if (v30 >= v28)
      {
        LODWORD(v32) = 0x3FFFFFFF;
      }

      else
      {
        v32 = (*(result + 232) * v30) >> 32;
      }

      v41 = v153;
      v42 = v156;
      v39 = v152 | v32;
      v40 = v29 + 0x1000000;
      v37 = a3 - v40;
      v38 = 512;
    }

    if (a2 >= v41)
    {
      if (a2 <= v42)
      {
        v47 = 0;
        v48 = (a2 >> 26) & 0x3C;
        v46 = a2;
      }

      else
      {
        v49 = *(result + 192);
        v50 = *(result + 200) + v42;
        v51 = v50 - a2 + (v49 >> 1);
        if (v51 < 1)
        {
          goto LABEL_70;
        }

        if (v51 < v49)
        {
          v39 = ((v39 >> 15) * (((*(result + 208) * v51) >> 32) >> 15)) | v152;
        }

        v46 = v50 - 0x1000000;
        v47 = a2 - (v50 - 0x1000000);
        v48 = 28;
      }
    }

    else
    {
      v43 = *(result + 192);
      v44 = v41 - *(result + 200);
      v45 = a2 - v44 + (v43 >> 1);
      if (v45 < 1)
      {
        goto LABEL_70;
      }

      if (v45 < v43)
      {
        v39 = ((v39 >> 15) * (((*(result + 208) * v45) >> 32) >> 15)) | v152;
      }

      v46 = v44 + 0x1000000;
      v47 = a2 - (v44 + 0x1000000);
      v48 = 32;
    }

    if (v39 >= 0x400000)
    {
      if (v20)
      {
        v52 = (v21 & ((v40 % v21) >> 63)) + v40 % v21;
        v53 = (v20 & ((v46 % v20) >> 63)) + v46 % v20;
        if (v52 >= v21)
        {
          v54 = v21;
        }

        else
        {
          v54 = 0;
        }

        v40 = v52 - v54;
        if (v53 >= v20)
        {
          v55 = v20;
        }

        else
        {
          v55 = 0;
        }

        v46 = v53 - v55;
        v37 += v40;
        v47 += v46;
      }

      v56 = v160 + SHIDWORD(v40) * v18 + 4 * (v46 >> 32);
      v57 = *(result + 32);
      if (v27 >= v56)
      {
        v58 = v56;
      }

      else
      {
        v58 = v27;
      }

      if (v58 < v57)
      {
        v58 = *(result + 32);
      }

      if (v26)
      {
        v59 = *(v58 + v159);
      }

      else
      {
        v59 = 255;
      }

      v61 = *(v58 + v162);
      v62 = *(v58 + v161);
      v63 = *(v58 + v163);
      if (!v22)
      {
        goto LABEL_76;
      }

      v64 = *(v22 + (v48 | v38));
      while (1)
      {
        v81 = v64 & 0xF;
        v82 = v64 >> 8;
        if (v81 == 1)
        {
          break;
        }

        if (v81 == 2)
        {
          v116 = SBYTE2(v64);
          if (v20)
          {
            v117 = v47 + (SBYTE2(v64) << 32);
            v118 = v20 & (v117 >> 63);
            if (v118 + v117 >= v20)
            {
              v119 = v20;
            }

            else
            {
              v119 = 0;
            }

            v116 = (v118 + ((HIWORD(v64) << 56) >> 24) - v119) >> 32;
          }

          v120 = v56 + 4 * v116;
          if (v27 < v120)
          {
            v120 = v27;
          }

          if (v120 >= v57)
          {
            v121 = v120;
          }

          else
          {
            v121 = v57;
          }

          v122 = *(v121 + v162);
          v123 = *(v121 + v161);
          v124 = *(v121 + v163);
          v63 = 255;
          if (v26)
          {
            v63 = *(v121 + v159);
          }

          v125 = (v64 >> 28) & 3;
LABEL_160:
          v133 = interpolate_rgba[4 * v125 + 3];
          v134 = v125 + 1;
          v135 = v61 - ((v133 & v61) >> v134);
          v62 -= (v133 & v62) >> v134;
          v136 = (v133 & v59) >> v134;
          v137 = (v133 & v122) >> v134;
          v138 = (v133 & v123) >> v134;
          v139 = (v133 & v124) >> v134;
          v140 = (v133 & v63) >> v134;
          LOBYTE(v61) = v135 + v137;
          LOBYTE(v62) = v62 + v138;
          LOBYTE(v63) = v135 + v137 + v139;
          LOWORD(v59) = v59 - v136 + v140;
          goto LABEL_76;
        }

        if (v81 == 3)
        {
          v150 = HIBYTE(v64) & 3;
          v151 = v39;
          LODWORD(v83) = SBYTE1(v64);
          v84 = SBYTE2(v64);
          v149 = v31;
          if (v20)
          {
            v85 = v82 << 56;
            v86 = HIWORD(v64) << 56;
            v87 = v37 + (SBYTE1(v64) << 32);
            v88 = v47 + (v86 >> 24);
            v89 = v21 & (v87 >> 63);
            v90 = v20 & (v88 >> 63);
            v91 = v90 + v88;
            if (v89 + v87 >= v21)
            {
              v92 = v21;
            }

            else
            {
              v92 = 0;
            }

            if (v91 >= v20)
            {
              v93 = v20;
            }

            else
            {
              v93 = 0;
            }

            v83 = (v89 + (v85 >> 24) - v92) >> 32;
            v84 = (v90 + (v86 >> 24) - v93) >> 32;
          }

          v94 = v83 * v18;
          v95 = v56 + 4 * v84;
          if (v27 < v95)
          {
            v95 = v27;
          }

          if (v95 < v57)
          {
            v95 = v57;
          }

          v96 = *(v95 + v162);
          v97 = 4 * v84;
          v145 = *(v95 + v161);
          v147 = *(v95 + v163);
          v98 = 255;
          if (v26)
          {
            v98 = *(v95 + v159);
          }

          v148 = v98;
          v99 = v56 + v94;
          if (v27 >= v99)
          {
            v100 = v99;
          }

          else
          {
            v100 = v27;
          }

          if (v100 < v57)
          {
            v100 = v57;
          }

          v101 = *(v100 + v162);
          v142 = *(v100 + v161);
          v146 = *(v100 + v163);
          v102 = 255;
          if (v26)
          {
            v102 = *(v100 + v159);
          }

          v103 = v99 + v97;
          if (v27 < v103)
          {
            v103 = v27;
          }

          if (v103 >= v57)
          {
            v104 = v103;
          }

          else
          {
            v104 = v57;
          }

          v105 = *(v104 + v162);
          v141 = *(v104 + v161);
          v143 = *(v104 + v163);
          v106 = 255;
          if (v26)
          {
            v106 = *(v104 + v159);
          }

          v144 = v106;
          v107 = (v64 >> 28) & 3;
          v108 = interpolate_rgba[4 * v150 + 3];
          v109 = v61 - ((v108 & v61) >> (v150 + 1)) + ((v108 & v101) >> (v150 + 1));
          v110 = (v108 & v105) >> (v150 + 1);
          v111 = interpolate_rgba[4 * v107 + 3];
          LOBYTE(v110) = v96 - ((v108 & v96) >> (v150 + 1)) + v110;
          v112 = v107 + 1;
          v61 = v109 - ((v109 & v111) >> (v107 + 1)) + ((v110 & v111) >> (v107 + 1));
          v113 = v62 - ((v108 & v62) >> (v150 + 1)) + ((v108 & v142) >> (v150 + 1));
          v62 = v113 - ((v113 & v111) >> v112) + (((v145 - ((v108 & v145) >> (v150 + 1)) + ((v108 & v141) >> (v150 + 1))) & v111) >> v112);
          v114 = v63 - ((v108 & v63) >> (v150 + 1)) + ((v108 & v146) >> (v150 + 1));
          v63 = v114 - ((v114 & v111) >> v112) + (((v147 - ((v108 & v147) >> (v150 + 1)) + ((v108 & v143) >> (v150 + 1))) & v111) >> v112);
          v115 = v59 - ((v108 & v59) >> (v150 + 1)) + ((v108 & v102) >> (v150 + 1));
          v59 = v115 - ((v115 & v111) >> v112) + (((v148 - ((v108 & v148) >> (v150 + 1)) + ((v108 & v144) >> (v150 + 1))) & v111) >> v112);
          v31 = v149;
          v39 = v151;
        }

LABEL_76:
        *(v24 + 2) = ((2 * v61 + v63 + 5 * v62) >> 3) + (v59 << 8);
        *(v25 + 1) = v39 >> 22;
        if (v31 == 1)
        {
          return result;
        }

        v65 = v31;
        v66 = 0;
        a2 += v19;
        v67 = v156 - a2;
        a3 += v23;
        v68 = v154 - a3;
        v69 = v31 - 1;
        v70 = -2;
        while (1)
        {
          if ((v68 | v67 | (a3 - v155) | (a2 - v153)) < 0)
          {
            v25 += v66 + 1;
            v24 -= v70;
            v60 = ~v66 + v65;
            goto LABEL_71;
          }

          if (v20)
          {
            v71 = (v21 & ((v37 + v157) >> 63)) + v37 + v157;
            v72 = (v20 & ((v47 + v158) >> 63)) + v47 + v158;
            v73 = v71 >= v21 ? v21 : 0;
            v37 = v71 - v73;
            v74 = v72 >= v20 ? v20 : 0;
            v47 = v72 - v74;
            v75 = HIDWORD(v37);
            v76 = v47;
          }

          else
          {
            v75 = HIDWORD(a3);
            v76 = a2;
          }

          v56 = v160 + v75 * v18 + 4 * (v76 >> 32);
          v57 = *(result + 32);
          if (v27 >= v56)
          {
            v77 = v56;
          }

          else
          {
            v77 = v27;
          }

          if (v77 < v57)
          {
            v77 = *(result + 32);
          }

          v59 = v26 ? *(v77 + v159) : 255;
          v61 = *(v77 + v162);
          v62 = *(v77 + v161);
          v63 = *(v77 + v163);
          if (v22)
          {
            v64 = *(v22 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v64 & 0xF) != 0)
            {
              break;
            }
          }

          v78 = v24 + 2 * v66;
          v79 = ((v63 + 2 * v61 + 5 * v62) >> 3) + (v59 << 8);
          v80 = v25 + v66++;
          v70 -= 2;
          a2 += v19;
          *(v78 + 4) = v79;
          *(v80 + 2) = -1;
          v67 -= v19;
          a3 += v23;
          v68 -= v23;
          if (v69 == v66)
          {
            return result;
          }
        }

        v25 += v66 + 1;
        v24 -= v70;
        v31 = ~v66 + v65;
        v39 = -1;
      }

      LODWORD(v126) = SBYTE1(v64);
      if (v20)
      {
        v127 = v82 << 56;
        v128 = v37 + (v127 >> 24);
        v129 = v21 & (v128 >> 63);
        if (v129 + v128 >= v21)
        {
          v130 = v21;
        }

        else
        {
          v130 = 0;
        }

        v126 = (v129 + (v127 >> 24) - v130) >> 32;
      }

      v131 = v56 + v126 * v18;
      if (v27 < v131)
      {
        v131 = v27;
      }

      if (v131 >= v57)
      {
        v132 = v131;
      }

      else
      {
        v132 = v57;
      }

      v122 = *(v132 + v162);
      v123 = *(v132 + v161);
      v124 = *(v132 + v163);
      v63 = 255;
      if (v26)
      {
        v63 = *(v132 + v159);
      }

      v125 = interpolate_rgba[4 * (HIBYTE(v64) & 3) + 3];
      goto LABEL_160;
    }

LABEL_70:
    v60 = v31 - 1;
    a2 += v19;
    a3 += v23;
    v24 += 2;
    *++v25 = 0;
LABEL_71:
    a4 = v60;
  }

  while (v60);
  return result;
}

uint64_t PDAmultiplyPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a3 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v4 = 0;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v4 + ((a4 ^ 0xFF) + a3) * a1 + ((v4 + ((a4 ^ 0xFF) + a3) * a1) >> 8) + 1) >> 8);
}

uint64_t PDAoverlayPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  if (a1 < (a2 + 1) >> 1)
  {
    v4 = (a4 ^ 0xFF) * a1 + (2 * a1 + (a2 ^ 0xFF)) * a3;
  }

  else
  {
    v4 = a3 * (a2 + 255) - (a4 * a2 + 2 * a1 * a3) + (a4 + 255) * a1;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v4 + (v4 >> 8) + 1) >> 8);
}

uint64_t PDAlightenPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a1 * a4;
  if (a3 * a2 > v4)
  {
    v4 = a3 * a2;
  }

  v5 = (a4 ^ 0xFF) * a1;
  if (a4 == 255)
  {
    v5 = 0;
  }

  v6 = a3 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v6 = 0;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v6 + v5 + v4 + ((v6 + v5 + v4) >> 8) + 1) >> 8);
}

uint64_t PDAdarkenPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a1 * a4;
  if (a3 * a2 < v4)
  {
    v4 = a3 * a2;
  }

  v5 = (a4 ^ 0xFF) * a1;
  if (a4 == 255)
  {
    v5 = 0;
  }

  v6 = a3 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v6 = 0;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v6 + v5 + v4 + ((v6 + v5 + v4) >> 8) + 1) >> 8);
}

uint64_t PDAcolordodgePDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  if (a1)
  {
    if (a4 == a3)
    {
      v4 = 65025;
    }

    else
    {
      v4 = a1 * a4 * a4 / (a4 - a3);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = (a4 ^ 0xFF) * a1;
  if (a4 == 255)
  {
    v5 = 0;
  }

  v6 = a3 * (a2 ^ 0xFF);
  if (a2 == 1)
  {
    v6 = 0;
  }

  v7 = v5 + v6 + v4;
  v8 = 255 * (a4 + a2) - a4 * a2;
  if (v7 >= v8)
  {
    v7 = 255 * (a4 + a2) - a4 * a2;
  }

  return (v8 + (v8 >> 8) + 1) & 0xFFFFFF00 | ((v7 + (v7 >> 8) + 1) >> 8);
}

uint64_t PDAcolorburnPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a4 * a2;
  v5 = (a4 ^ 0xFF) * a1;
  if (a4 == 255)
  {
    v5 = 0;
  }

  v6 = a3 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v6 = 0;
  }

  v7 = v6 + v4 + v5;
  if (a2 != a1)
  {
    if (a3)
    {
      v7 = (v7 - (a2 - a1) * a4 * a4 / a3) & ~((v7 - (a2 - a1) * a4 * a4 / a3) >> 31);
    }

    else
    {
      v7 = 0;
    }
  }

  return (255 * (a4 + a2) - v4 + ((255 * (a4 + a2) - v4) >> 8) + 1) & 0xFFFFFF00 | ((v7 + (v7 >> 8) + 1) >> 8);
}

uint64_t PDAhardlightPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = 2 * a1;
  v5 = a3 * (a2 + 255) - (a4 * a2 + v4 * a3) + (a4 + 255) * a1;
  if (a3 <= (a4 + 1) >> 1)
  {
    v5 = (a4 ^ 0xFF) * a1 + (v4 + (a2 ^ 0xFF)) * a3;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v5 + (v5 >> 8) + 1) >> 8);
}

uint64_t PDAsoftlightPDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = 2 * a1 * a3 - a1 * a1 * (2 * a3 - a4) / a2;
  v5 = v4 & ~(v4 >> 31);
  v6 = (a4 ^ 0xFF) * a1;
  if (a4 == 255)
  {
    v6 = 0;
  }

  v7 = a3 * (a2 ^ 0xFF);
  if (a2 == 255)
  {
    v7 = 0;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v6 + v7 + v5 + ((v6 + v7 + v5) >> 8) + 1) >> 8);
}

uint64_t PDAdifferencePDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a1 * a4;
  v5 = a3 * a2;
  v7 = v4 - v5;
  v6 = v4 - v5 < 0;
  v8 = 255 * (a3 + a1) - v4 - v5;
  if (v6)
  {
    v9 = -v7;
  }

  else
  {
    v9 = v7;
  }

  return (255 * (a4 + a2) - a4 * a2 + ((255 * (a4 + a2) - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v8 + v9 + ((v8 + v9) >> 8) + 1) >> 8);
}

uint64_t PDAhuePDA(unsigned __int8 a1, int a2, unsigned __int8 a3, int a4)
{
  v4 = a1;
  if (a4 == 255)
  {
    v5 = 0;
  }

  else
  {
    v4 = (a1 * a4 + ((a1 * a4) >> 8) + 1) >> 8;
    v5 = (a4 ^ 0xFF) * a1;
  }

  v6 = (a2 ^ 0xFF) * a3;
  if (a2 == 255)
  {
    v6 = 0;
  }

  return (a4 + a2 - a4 * a2 + ((a4 + a2 - a4 * a2) >> 8) + 1) & 0xFFFFFF00 | ((v5 + v4 + v6 + ((v5 + v4 + v6) >> 8) + 1) >> 8);
}

uint64_t GRAYa8_mark_pixelmask(uint64_t result, int a2)
{
  v3 = *(result + 136);
  if (!v3)
  {
    return result;
  }

  v4 = *(result + 4);
  v5 = *(result + 8);
  v6 = v4;
  v467 = *(result + 48);
  v8 = *(result + 88);
  v7 = *(result + 96);
  v9 = *(result + 28) >> 1;
  v10 = (*(result + 40) + 2 * v9 * *(result + 16) + 2 * *(result + 12));
  v11 = *(result + 124);
  v12 = (v3 + *(result + 108) * v11 + *(result + 104));
  v13 = *(result + 56);
  v14 = *(result + 60);
  v15 = *(result + 76);
  if (*(result + 1) << 8 == 256)
  {
    v16 = v15 >> 1;
    v17 = (v8 + 2 * (v15 >> 1) * v14 + 2 * v13);
    if (v15 >> 1 != v9)
    {
      v21 = 1;
LABEL_14:
      v35 = 0;
      v6 = v21 * v4;
      v24 = v7 != 0;
      v25 = v11 - v6;
      v26 = v9 - v6;
      v34 = v21;
      v33 = -1;
      v23 = v16;
      goto LABEL_15;
    }

    v18 = (v10 - v17) >> 1;
    if (v18 >= 1)
    {
      if (v18 <= v4)
      {
        v36 = v4 - 1;
        v10 += 2 * v36;
        v17 += 2 * v36;
        v12 += v36;
        v21 = -1;
        goto LABEL_13;
      }

      v19 = v5 - 1;
      v20 = &v17[2 * v9 * v19];
      if (v10 <= &v20[2 * v4 - 2])
      {
        v10 += 2 * v9 * v19;
        v16 = -v9;
        v12 += v11 * v19;
        v11 = -v11;
        v21 = 1;
        v17 = v20;
        v9 = -v9;
        goto LABEL_14;
      }
    }

    v21 = 1;
LABEL_13:
    v16 = *(result + 28) >> 1;
    goto LABEL_14;
  }

  LODWORD(v16) = *(result + 64);
  v22 = *(result + 68);
  v23 = v15 >> 1;
  v24 = v7 != 0;
  v25 = v11 - v4;
  v26 = v9 - v4;
  if (v8)
  {
    v27 = 0;
    v28 = v16;
    v29 = v22;
    v30 = v8 + 2 * v23 * v22;
    v31 = v8 + 2 * v23 * (v14 % v22);
    v32 = (v31 + 2 * (v13 % v16));
    v33 = v31 + 2 * v16;
    v34 = 1;
    v17 = v32;
    goto LABEL_16;
  }

  v17 = 0;
  v33 = 0;
  v34 = 1;
  v35 = *(result + 68);
LABEL_15:
  v30 = 0;
  v32 = 0;
  v23 -= v6;
  v28 = v16;
  v29 = v35;
  v27 = 1;
LABEL_16:
  v438 = v25;
  v439 = *(result + 4);
  v436 = v23;
  v437 = v26;
  v435 = v30;
  v434 = v27;
  v466 = v24;
  switch(a2)
  {
    case 0:
      do
      {
        v37 = v4;
        do
        {
          v38 = *v12;
          if (*v12)
          {
            if (v38 == 255)
            {
              *v10 = 0;
            }

            else
            {
              v39 = v38 ^ 0xFF;
              *v10 = (*v10 * v39 + ((*v10 * v39) >> 8) + 1) >> 8;
              v10[1] = (v10[1] * v39 + ((v10[1] * v39) >> 8) + 1) >> 8;
            }
          }

          v12 += v34;
          v10 += 2 * v34;
          --v37;
        }

        while (v37);
        v12 += v25;
        v10 += 2 * v26;
        --v5;
      }

      while (v5);
      return result;
    case 1:
      v227 = -v28;
      v228 = -(v23 * v29);
      if (v467 == 0 || v24)
      {
        do
        {
          v229 = v4;
          do
          {
            v230 = *v12;
            if (*v12)
            {
              if (v230 == 255)
              {
                *v10 = *v17;
              }

              else
              {
                v231 = *v17 * v230 + *v10 * (v230 ^ 0xFF);
                *v10 = (v231 + (v231 >> 8) + 1) >> 8;
                v10[1] = (v17[1] * v230 + v10[1] * (v230 ^ 0xFF) + ((v17[1] * v230 + v10[1] * (v230 ^ 0xFFu)) >> 8) + 1) >> 8;
              }
            }

            v12 += v34;
            v232 = &v17[2 * v34];
            if (v232 >= v33)
            {
              v233 = v227;
            }

            else
            {
              v233 = 0;
            }

            v17 = &v232[2 * v233];
            v10 += 2 * v34;
            --v229;
          }

          while (v229);
          v12 += v25;
          v10 += 2 * v26;
          v234 = &v32[2 * v23];
          if (v234 >= v30)
          {
            v235 = v228;
          }

          else
          {
            v235 = 0;
          }

          v236 = &v234[2 * v235];
          v237 = v33 + 2 * v235 + 2 * v23;
          if (v27)
          {
            v17 += 2 * v23;
          }

          else
          {
            v33 = v237;
            v32 = v236;
            v17 = v236;
          }

          --v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v411 = v4;
          do
          {
            v412 = *v12;
            if (*v12)
            {
              if (v412 == 255)
              {
                *v10 = *v17;
                v10[1] = -1;
              }

              else
              {
                v413 = *v10 * (v412 ^ 0xFF) + *v17 * v412;
                *v10 = (v413 + (v413 >> 8) + 1) >> 8;
                v414 = v10[1] * (v412 ^ 0xFF) - v412;
                v10[1] = (v414 + (v412 << 8) + ((v414 + (v412 << 8)) >> 8) + 1) >> 8;
              }
            }

            v12 += v34;
            v415 = &v17[2 * v34];
            if (v415 >= v33)
            {
              v416 = v227;
            }

            else
            {
              v416 = 0;
            }

            v17 = &v415[2 * v416];
            v10 += 2 * v34;
            --v411;
          }

          while (v411);
          v12 += v25;
          v10 += 2 * v26;
          v417 = &v32[2 * v23];
          if (v417 >= v30)
          {
            v418 = v228;
          }

          else
          {
            v418 = 0;
          }

          v419 = &v417[2 * v418];
          v420 = v33 + 2 * v418 + 2 * v23;
          if (v27)
          {
            v17 += 2 * v23;
          }

          else
          {
            v33 = v420;
            v32 = v419;
            v17 = v419;
          }

          --v5;
        }

        while (v5);
      }

      return result;
    case 2:
      v168 = -v28;
      v169 = -(v23 * v29);
      while (1)
      {
        v170 = v4;
        do
        {
          v171 = *v12;
          if (!*v12)
          {
            goto LABEL_229;
          }

          if (v171 == 255)
          {
            v172 = v17[1];
            if (!v17[1])
            {
              goto LABEL_229;
            }

            if (v172 == 255)
            {
              *v10 = *v17;
              v10[1] = -1;
              goto LABEL_229;
            }

            *v10 = *v17 + ((*v10 * (v172 ^ 0xFF) + ((*v10 * (v172 ^ 0xFFu)) >> 8) + 1) >> 8);
            v174 = v172 + ((v10[1] * (v172 ^ 0xFF) + ((v10[1] * (v172 ^ 0xFFu)) >> 8) + 1) >> 8);
          }

          else
          {
            v173 = v17[1] * v171 + ((v17[1] * v171) >> 8) + 1;
            if (v173 < 0x100)
            {
              goto LABEL_229;
            }

            *v10 = ((((v173 >> 8) ^ 0xFF) * *v10 + ((((v173 >> 8) ^ 0xFF) * *v10) >> 8) + 1) >> 8) + ((*v17 * v171 + ((*v17 * v171) >> 8) + 1) >> 8);
            v174 = ((((v173 >> 8) ^ 0xFF) * v10[1] + ((((v173 >> 8) ^ 0xFF) * v10[1]) >> 8) + 1) >> 8) + (v173 >> 8);
          }

          v10[1] = v174;
LABEL_229:
          v12 += v34;
          v175 = &v17[2 * v34];
          if (v175 >= v33)
          {
            v176 = v168;
          }

          else
          {
            v176 = 0;
          }

          v17 = &v175[2 * v176];
          v10 += 2 * v34;
          --v170;
        }

        while (v170);
        v12 += v25;
        v10 += 2 * v26;
        v177 = &v32[2 * v23];
        if (v177 >= v30)
        {
          v178 = v169;
        }

        else
        {
          v178 = 0;
        }

        v179 = &v177[2 * v178];
        v180 = v33 + 2 * v178 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v180;
          v32 = v179;
          v17 = v179;
        }

        if (!--v5)
        {
          return result;
        }
      }

    case 3:
      v194 = -v28;
      v195 = -(v23 * v29);
      do
      {
        v196 = v10 + 1;
        v197 = v4;
        do
        {
          v198 = *v12;
          if (*v12)
          {
            if (v198 == 255)
            {
              v199 = *v196;
              *(v196 - 1) = (v199 * *v17 + ((v199 * *v17) >> 8) + 1) >> 8;
              if (v24)
              {
                v200 = v17[1];
              }

              else
              {
                v200 = 255;
              }

              v206 = v10 + 1;
              v207 = v200 * v199;
            }

            else
            {
              v201 = *v196;
              v202 = (v201 * v198 + ((v201 * v198) >> 8) + 1) >> 8;
              v203 = v198 ^ 0xFF;
              v204 = *(v196 - 1) * v203 + v202 * *v17;
              *(v196 - 1) = (v204 + (v204 >> 8) + 1) >> 8;
              if (v24)
              {
                v205 = v17[1];
              }

              else
              {
                v205 = 255;
              }

              v207 = v201 * v203 + v205 * v202;
              v206 = v196;
            }

            *v206 = (v207 + (v207 >> 8) + 1) >> 8;
          }

          v12 += v34;
          v10 += 2 * v34;
          v208 = &v17[2 * v34];
          if (v208 >= v33)
          {
            v209 = v194;
          }

          else
          {
            v209 = 0;
          }

          v17 = &v208[2 * v209];
          v196 += 2 * v34;
          --v197;
        }

        while (v197);
        v12 += v25;
        v10 = &v196[2 * v26 - 1];
        v210 = &v32[2 * v23];
        if (v210 >= v30)
        {
          v211 = v195;
        }

        else
        {
          v211 = 0;
        }

        v212 = &v210[2 * v211];
        v213 = v33 + 2 * v211 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v213;
          v32 = v212;
          v17 = v212;
        }

        --v5;
      }

      while (v5);
      return result;
    case 4:
      v95 = -v28;
      v96 = -(v23 * v29);
      do
      {
        v97 = v10 + 1;
        v98 = v4;
        do
        {
          v99 = *v12;
          if (*v12)
          {
            if (v99 == 255)
            {
              v100 = *v97 ^ 0xFF;
              *(v97 - 1) = ((*v97 ^ 0xFF) * *v17 + ((v100 * *v17) >> 8) + 1) >> 8;
              if (v24)
              {
                v101 = v17[1];
              }

              else
              {
                v101 = 255;
              }

              v107 = v10 + 1;
              v108 = v101 * v100;
            }

            else
            {
              v102 = *v97;
              v103 = ((v102 ^ 0xFF) * v99 + (((v102 ^ 0xFFu) * v99) >> 8) + 1) >> 8;
              v104 = v99 ^ 0xFF;
              v105 = *(v97 - 1) * v104 + v103 * *v17;
              *(v97 - 1) = (v105 + (v105 >> 8) + 1) >> 8;
              if (v24)
              {
                v106 = v17[1];
              }

              else
              {
                v106 = 255;
              }

              v108 = v102 * v104 + v106 * v103;
              v107 = v97;
            }

            *v107 = (v108 + (v108 >> 8) + 1) >> 8;
          }

          v12 += v34;
          v10 += 2 * v34;
          v109 = &v17[2 * v34];
          if (v109 >= v33)
          {
            v110 = v95;
          }

          else
          {
            v110 = 0;
          }

          v17 = &v109[2 * v110];
          v97 += 2 * v34;
          --v98;
        }

        while (v98);
        v12 += v25;
        v10 = &v97[2 * v26 - 1];
        v111 = &v32[2 * v23];
        if (v111 >= v30)
        {
          v112 = v96;
        }

        else
        {
          v112 = 0;
        }

        v113 = &v111[2 * v112];
        v114 = v33 + 2 * v112 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v114;
          v32 = v113;
          v17 = v113;
        }

        --v5;
      }

      while (v5);
      return result;
    case 5:
      v264 = -v28;
      v265 = -(v23 * v29);
      do
      {
        v266 = v4;
        do
        {
          v267 = *v12;
          if (*v12)
          {
            v268 = (*v17 * v267 + ((*v17 * v267) >> 8) + 1) >> 8;
            v269 = v17[1] * v267 + ((v17[1] * v267) >> 8) + 1;
            v270 = v10[1];
            *v10 = (v268 * v270 + ((v269 >> 8) ^ 0xFF) * *v10 + ((v268 * v270 + ((v269 >> 8) ^ 0xFF) * *v10) >> 8) + 1) >> 8;
            v10[1] = ((((v269 >> 8) ^ 0xFF) + (v269 >> 8)) * v270 + (((((v269 >> 8) ^ 0xFF) + (v269 >> 8)) * v270) >> 8) + 1) >> 8;
          }

          v12 += v34;
          v271 = &v17[2 * v34];
          if (v271 >= v33)
          {
            v272 = v264;
          }

          else
          {
            v272 = 0;
          }

          v17 = &v271[2 * v272];
          v10 += 2 * v34;
          --v266;
        }

        while (v266);
        v12 += v25;
        v10 += 2 * v26;
        v273 = &v32[2 * v23];
        if (v273 >= v30)
        {
          v274 = v265;
        }

        else
        {
          v274 = 0;
        }

        v275 = &v273[2 * v274];
        v276 = v33 + 2 * v274 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v276;
          v32 = v275;
          v17 = v275;
        }

        --v5;
      }

      while (v5);
      return result;
    case 6:
      v303 = -v28;
      v304 = -(v23 * v29);
      do
      {
        v305 = v4;
        do
        {
          v306 = *v12;
          if (*v12)
          {
            v307 = v10[1];
            if (v307 != 0xFF)
            {
              if (~v307 == 255)
              {
                *v10 = (*v17 * v306 + ((*v17 * v306) >> 8) + 1) >> 8;
                if (v24)
                {
                  v308 = v17[1];
                }

                else
                {
                  v308 = 255;
                }

                v311 = (v308 * v306 + ((v308 * v306) >> 8) + 1) >> 8;
              }

              else
              {
                v309 = (~v307 * v306 + ((~v307 * v306) >> 8) + 1) >> 8;
                *v10 += (v309 * *v17 + ((v309 * *v17) >> 8) + 1) >> 8;
                if (v24)
                {
                  v310 = v17[1];
                }

                else
                {
                  v310 = 255;
                }

                v311 = v307 + ((v310 * v309 + ((v310 * v309) >> 8) + 1) >> 8);
              }

              v10[1] = v311;
            }
          }

          v12 += v34;
          v312 = &v17[2 * v34];
          if (v312 >= v33)
          {
            v313 = v303;
          }

          else
          {
            v313 = 0;
          }

          v17 = &v312[2 * v313];
          v10 += 2 * v34;
          --v305;
        }

        while (v305);
        v12 += v25;
        v10 += 2 * v26;
        v314 = &v32[2 * v23];
        if (v314 >= v30)
        {
          v315 = v304;
        }

        else
        {
          v315 = 0;
        }

        v316 = &v314[2 * v315];
        v317 = v33 + 2 * v315 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v317;
          v32 = v316;
          v17 = v316;
        }

        --v5;
      }

      while (v5);
      return result;
    case 7:
      v214 = -v28;
      v215 = -(v23 * v29);
      do
      {
        v216 = v4;
        do
        {
          v217 = *v12;
          if (*v12)
          {
            if (v217 == 255)
            {
              v218 = v17[1];
              *v10 = (v218 * *v10 + ((v218 * *v10) >> 8) + 1) >> 8;
              v219 = v10 + 1;
              v220 = v10[1];
            }

            else
            {
              v220 = (v217 ^ 0xFF) + ((v17[1] * v217 + ((v17[1] * v217) >> 8) + 1) >> 8);
              *v10 = (v220 * *v10 + ((v220 * *v10) >> 8) + 1) >> 8;
              v219 = v10 + 1;
              v218 = v10[1];
            }

            *v219 = (v220 * v218 + ((v220 * v218) >> 8) + 1) >> 8;
          }

          v12 += v34;
          v10 += 2 * v34;
          v221 = &v17[2 * v34];
          if (v221 >= v33)
          {
            v222 = v214;
          }

          else
          {
            v222 = 0;
          }

          v17 = &v221[2 * v222];
          --v216;
        }

        while (v216);
        v12 += v25;
        v10 += 2 * v26;
        v223 = &v32[2 * v23];
        if (v223 >= v30)
        {
          v224 = v215;
        }

        else
        {
          v224 = 0;
        }

        v225 = &v223[2 * v224];
        v226 = v33 + 2 * v224 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v226;
          v32 = v225;
          v17 = v225;
        }

        --v5;
      }

      while (v5);
      return result;
    case 8:
      v344 = -v28;
      v345 = -(v23 * v29);
      do
      {
        v346 = v4;
        do
        {
          v347 = *v12;
          if (*v12)
          {
            if (v347 == 255)
            {
              v348 = v17[1] ^ 0xFF;
              *v10 = (v348 * *v10 + ((v348 * *v10) >> 8) + 1) >> 8;
              v349 = v10 + 1;
              v350 = v10[1];
            }

            else
            {
              v350 = ((v17[1] * v347 + ((v17[1] * v347) >> 8) + 1) >> 8) ^ 0xFF;
              *v10 = (v350 * *v10 + ((v350 * *v10) >> 8) + 1) >> 8;
              v349 = v10 + 1;
              v348 = v10[1];
            }

            *v349 = (v350 * v348 + ((v350 * v348) >> 8) + 1) >> 8;
          }

          v12 += v34;
          v10 += 2 * v34;
          v351 = &v17[2 * v34];
          if (v351 >= v33)
          {
            v352 = v344;
          }

          else
          {
            v352 = 0;
          }

          v17 = &v351[2 * v352];
          --v346;
        }

        while (v346);
        v12 += v25;
        v10 += 2 * v26;
        v353 = &v32[2 * v23];
        if (v353 >= v30)
        {
          v354 = v345;
        }

        else
        {
          v354 = 0;
        }

        v355 = &v353[2 * v354];
        v356 = v33 + 2 * v354 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v356;
          v32 = v355;
          v17 = v355;
        }

        --v5;
      }

      while (v5);
      return result;
    case 9:
      v128 = -v28;
      v129 = -(v23 * v29);
      do
      {
        v130 = v4;
        do
        {
          v131 = *v12;
          if (*v12)
          {
            v132 = (*v17 * v131 + ((*v17 * v131) >> 8) + 1) >> 8;
            v133 = v17[1] * v131 + ((v17[1] * v131) >> 8) + 1;
            v134 = v10[1];
            v135 = (~v131 + BYTE1(v133));
            *v10 = (v132 * (v134 ^ 0xFF) + v135 * *v10 + ((v132 * (v134 ^ 0xFF) + v135 * *v10) >> 8) + 1) >> 8;
            v10[1] = ((v133 >> 8) * (v134 ^ 0xFF) + v135 * v134 + (((v133 >> 8) * (v134 ^ 0xFF) + v135 * v134) >> 8) + 1) >> 8;
          }

          v12 += v34;
          v136 = &v17[2 * v34];
          if (v136 >= v33)
          {
            v137 = v128;
          }

          else
          {
            v137 = 0;
          }

          v17 = &v136[2 * v137];
          v10 += 2 * v34;
          --v130;
        }

        while (v130);
        v12 += v25;
        v10 += 2 * v26;
        v138 = &v32[2 * v23];
        if (v138 >= v30)
        {
          v139 = v129;
        }

        else
        {
          v139 = 0;
        }

        v140 = &v138[2 * v139];
        v141 = v33 + 2 * v139 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v141;
          v32 = v140;
          v17 = v140;
        }

        --v5;
      }

      while (v5);
      return result;
    case 10:
      v331 = -v28;
      v332 = -(v23 * v29);
      do
      {
        v333 = v4;
        do
        {
          v334 = *v12;
          if (*v12)
          {
            v335 = (*v17 * v334 + ((*v17 * v334) >> 8) + 1) >> 8;
            v336 = (v17[1] * v334 + ((v17[1] * v334) >> 8) + 1) >> 8;
            v337 = v10[1];
            *v10 = (v335 * (v337 ^ 0xFF) + (v336 ^ 0xFF) * *v10 + ((v335 * (v337 ^ 0xFF) + (v336 ^ 0xFF) * *v10) >> 8) + 1) >> 8;
            v10[1] = (v336 * (v337 ^ 0xFF) + (v336 ^ 0xFF) * v337 + ((v336 * (v337 ^ 0xFF) + (v336 ^ 0xFF) * v337) >> 8) + 1) >> 8;
          }

          v12 += v34;
          v338 = &v17[2 * v34];
          if (v338 >= v33)
          {
            v339 = v331;
          }

          else
          {
            v339 = 0;
          }

          v17 = &v338[2 * v339];
          v10 += 2 * v34;
          --v333;
        }

        while (v333);
        v12 += v25;
        v10 += 2 * v26;
        v340 = &v32[2 * v23];
        if (v340 >= v30)
        {
          v341 = v332;
        }

        else
        {
          v341 = 0;
        }

        v342 = &v340[2 * v341];
        v343 = v33 + 2 * v341 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v343;
          v32 = v342;
          v17 = v342;
        }

        --v5;
      }

      while (v5);
      return result;
    case 11:
      v81 = -v28;
      v82 = -(v23 * v29);
      do
      {
        v83 = v4;
        do
        {
          v84 = *v12;
          if (*v12)
          {
            if (v467)
            {
              v85 = v10[1];
            }

            else
            {
              v85 = 255;
            }

            v86 = *v17 * v84 + ((*v17 * v84) >> 8) + 1;
            if (v24)
            {
              LOBYTE(v84) = (v17[1] * v84 + ((v17[1] * v84) >> 8) + 1) >> 8;
            }

            v87 = ((v84 - BYTE1(v86)) | (v84 << 16)) + (v85 - *v10) + (v85 << 16);
            v88 = (255 * ((v87 >> 8) & 0x10001)) | v87;
            *v10 = BYTE2(v88) - v88;
            v10[1] = BYTE2(v88);
          }

          v12 += v34;
          v89 = &v17[2 * v34];
          if (v89 >= v33)
          {
            v90 = v81;
          }

          else
          {
            v90 = 0;
          }

          v17 = &v89[2 * v90];
          v10 += 2 * v34;
          --v83;
        }

        while (v83);
        v12 += v25;
        v10 += 2 * v26;
        v91 = &v32[2 * v23];
        if (v91 >= v30)
        {
          v92 = v82;
        }

        else
        {
          v92 = 0;
        }

        v93 = &v91[2 * v92];
        v94 = v33 + 2 * v92 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v94;
          v32 = v93;
          v17 = v93;
        }

        --v5;
      }

      while (v5);
      return result;
    case 12:
      v115 = -v28;
      v116 = -(v23 * v29);
      do
      {
        v117 = v4;
        do
        {
          v118 = *v12;
          if (*v12)
          {
            v119 = (*v17 * v118 + ((*v17 * v118) >> 8) + 1) >> 8;
            if (v24)
            {
              LOBYTE(v118) = (v17[1] * v118 + ((v17[1] * v118) >> 8) + 1) >> 8;
            }

            v120 = ((v119 + *v10) | (*v10 << 8) & 0xFF0000) + (v118 << 16);
            v121 = (255 * ((v120 >> 8) & 0x10001)) | v120;
            *v10 = v121;
            v10[1] = BYTE2(v121);
          }

          v12 += v34;
          v122 = &v17[2 * v34];
          if (v122 >= v33)
          {
            v123 = v115;
          }

          else
          {
            v123 = 0;
          }

          v17 = &v122[2 * v123];
          v10 += 2 * v34;
          --v117;
        }

        while (v117);
        v12 += v25;
        v10 += 2 * v26;
        v124 = &v32[2 * v23];
        if (v124 >= v30)
        {
          v125 = v116;
        }

        else
        {
          v125 = 0;
        }

        v126 = &v124[2 * v125];
        v127 = v33 + 2 * v125 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v127;
          v32 = v126;
          v17 = v126;
        }

        --v5;
      }

      while (v5);
      return result;
    case 13:
      v290 = -v28;
      v429 = -(v23 * v29);
      while (1)
      {
        v448 = v32;
        v461 = v5;
        v291 = v4;
        do
        {
          v292 = *v12;
          if (*v12)
          {
            v293 = v17[1] * v292 + ((v17[1] * v292) >> 8) + 1;
            v294 = v293 >> 8;
            if (!v24)
            {
              LOBYTE(v294) = *v12;
            }

            if (v294)
            {
              v295 = (*v17 * v292 + ((*v17 * v292) >> 8) + 1) >> 8;
              if (v467)
              {
                v296 = v10[1];
                if (!v10[1])
                {
                  *v10 = v295;
                  v10[1] = v294;
                  goto LABEL_418;
                }
              }

              else
              {
                v296 = 255;
              }

              v2 = v2 & 0xFFFFFFFFFFFF0000 | *v10;
              v27 = v27 & 0xFFFFFFFFFFFF0000 | v293 & 0xFF00 | v295;
              result = PDAmultiplyPDA(v2, v296, v27, v294);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_418:
          v12 += v34;
          v297 = &v17[2 * v34];
          if (v297 >= v33)
          {
            v298 = v290;
          }

          else
          {
            v298 = 0;
          }

          v17 = &v297[2 * v298];
          v10 += 2 * v34;
          --v291;
        }

        while (v291);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v448;
        v299 = &v448[2 * v436];
        v300 = v429;
        if (v299 < v435)
        {
          v300 = 0;
        }

        v301 = &v299[2 * v300];
        v302 = v33 + 2 * v300 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v302;
          v32 = v301;
          v17 = v301;
        }

        v5 = v461 - 1;
        v4 = v439;
        if (v461 == 1)
        {
          return result;
        }
      }

    case 14:
      v66 = -v28;
      v67 = -(v23 * v29);
      while (1)
      {
        v68 = v4;
        do
        {
          v69 = *v12;
          if (*v12)
          {
            v70 = (v17[1] * v69 + ((v17[1] * v69) >> 8) + 1) >> 8;
            if (!v24)
            {
              LOBYTE(v70) = *v12;
            }

            if (v70)
            {
              v71 = (*v17 * v69 + ((*v17 * v69) >> 8) + 1) >> 8;
              if (v467)
              {
                v72 = v10[1];
                if (!v10[1])
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v72 = 255;
              }

              v73 = *v10;
              result = -v73;
              v74 = (v73 ^ 0xFF) * v71 - v73 + (v73 << 8);
              v71 = (v74 + (v74 >> 8) + 1) >> 8;
              v70 = (255 * (v72 + v70) - v72 * v70 + ((255 * (v72 + v70) - v72 * v70) >> 8) + 1) >> 8;
LABEL_81:
              *v10 = v71;
              v10[1] = v70;
            }
          }

          v12 += v34;
          v75 = &v17[2 * v34];
          if (v75 >= v33)
          {
            v76 = v66;
          }

          else
          {
            v76 = 0;
          }

          v17 = &v75[2 * v76];
          v10 += 2 * v34;
          --v68;
        }

        while (v68);
        v12 += v25;
        v10 += 2 * v26;
        v77 = &v32[2 * v23];
        if (v77 >= v30)
        {
          v78 = v67;
        }

        else
        {
          v78 = 0;
        }

        v79 = &v77[2 * v78];
        v80 = v33 + 2 * v78 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v80;
          v32 = v79;
          v17 = v79;
        }

        if (!--v5)
        {
          return result;
        }
      }

    case 15:
      v181 = -v28;
      v425 = -(v23 * v29);
      while (1)
      {
        v444 = v32;
        v457 = v5;
        v182 = v4;
        do
        {
          v183 = *v12;
          if (*v12)
          {
            v184 = v17[1] * v183 + ((v17[1] * v183) >> 8) + 1;
            v185 = v184 >> 8;
            if (!v24)
            {
              LOBYTE(v185) = *v12;
            }

            if (v185)
            {
              v186 = (*v17 * v183 + ((*v17 * v183) >> 8) + 1) >> 8;
              if (v467)
              {
                v187 = v10[1];
                if (!v10[1])
                {
                  *v10 = v186;
                  v10[1] = v185;
                  goto LABEL_252;
                }
              }

              else
              {
                v187 = 255;
              }

              v2 = v2 & 0xFFFFFFFFFFFF0000 | *v10;
              v27 = v27 & 0xFFFFFFFFFFFF0000 | v184 & 0xFF00 | v186;
              result = PDAoverlayPDA(v2, v187, v27, v185);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_252:
          v12 += v34;
          v188 = &v17[2 * v34];
          if (v188 >= v33)
          {
            v189 = v181;
          }

          else
          {
            v189 = 0;
          }

          v17 = &v188[2 * v189];
          v10 += 2 * v34;
          --v182;
        }

        while (v182);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v444;
        v190 = &v444[2 * v436];
        v191 = v425;
        if (v190 < v435)
        {
          v191 = 0;
        }

        v192 = &v190[2 * v191];
        v193 = v33 + 2 * v191 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v193;
          v32 = v192;
          v17 = v192;
        }

        v5 = v457 - 1;
        v4 = v439;
        if (v457 == 1)
        {
          return result;
        }
      }

    case 16:
      v53 = -v28;
      v422 = -(v23 * v29);
      while (1)
      {
        v441 = v32;
        v454 = v5;
        v54 = v4;
        do
        {
          v55 = *v12;
          if (*v12)
          {
            v56 = v17[1] * v55 + ((v17[1] * v55) >> 8) + 1;
            v57 = v56 >> 8;
            if (!v24)
            {
              LOBYTE(v57) = *v12;
            }

            if (v57)
            {
              v58 = (*v17 * v55 + ((*v17 * v55) >> 8) + 1) >> 8;
              if (v467)
              {
                v59 = v10[1];
                if (!v10[1])
                {
                  *v10 = v58;
                  v10[1] = v57;
                  goto LABEL_59;
                }
              }

              else
              {
                v59 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v56 & 0xFF00 | v58;
              result = PDAdarkenPDA(v27, v59, v2, v57);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_59:
          v12 += v34;
          v60 = &v17[2 * v34];
          if (v60 >= v33)
          {
            v61 = v53;
          }

          else
          {
            v61 = 0;
          }

          v17 = &v60[2 * v61];
          v10 += 2 * v34;
          --v54;
        }

        while (v54);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v441;
        v62 = &v441[2 * v436];
        v63 = v422;
        if (v62 < v435)
        {
          v63 = 0;
        }

        v64 = &v62[2 * v63];
        v65 = v33 + 2 * v63 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v65;
          v32 = v64;
          v17 = v64;
        }

        v5 = v454 - 1;
        v4 = v439;
        if (v454 == 1)
        {
          return result;
        }
      }

    case 17:
      v238 = -v28;
      v426 = -(v23 * v29);
      while (1)
      {
        v445 = v32;
        v458 = v5;
        v239 = v4;
        do
        {
          v240 = *v12;
          if (*v12)
          {
            v241 = v17[1] * v240 + ((v17[1] * v240) >> 8) + 1;
            v242 = v241 >> 8;
            if (!v24)
            {
              LOBYTE(v242) = *v12;
            }

            if (v242)
            {
              v243 = (*v17 * v240 + ((*v17 * v240) >> 8) + 1) >> 8;
              if (v467)
              {
                v244 = v10[1];
                if (!v10[1])
                {
                  *v10 = v243;
                  v10[1] = v242;
                  goto LABEL_336;
                }
              }

              else
              {
                v244 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v241 & 0xFF00 | v243;
              result = PDAlightenPDA(v27, v244, v2, v242);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_336:
          v12 += v34;
          v245 = &v17[2 * v34];
          if (v245 >= v33)
          {
            v246 = v238;
          }

          else
          {
            v246 = 0;
          }

          v17 = &v245[2 * v246];
          v10 += 2 * v34;
          --v239;
        }

        while (v239);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v445;
        v247 = &v445[2 * v436];
        v248 = v426;
        if (v247 < v435)
        {
          v248 = 0;
        }

        v249 = &v247[2 * v248];
        v250 = v33 + 2 * v248 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v250;
          v32 = v249;
          v17 = v249;
        }

        v5 = v458 - 1;
        v4 = v439;
        if (v458 == 1)
        {
          return result;
        }
      }

    case 18:
      v318 = -v28;
      v430 = -(v23 * v29);
      while (1)
      {
        v449 = v32;
        v462 = v5;
        v319 = v4;
        do
        {
          v320 = *v12;
          if (*v12)
          {
            v321 = v17[1] * v320 + ((v17[1] * v320) >> 8) + 1;
            v322 = v321 >> 8;
            if (!v24)
            {
              LOBYTE(v322) = *v12;
            }

            if (v322)
            {
              v323 = (*v17 * v320 + ((*v17 * v320) >> 8) + 1) >> 8;
              if (v467)
              {
                v324 = v10[1];
                if (!v10[1])
                {
                  *v10 = v323;
                  v10[1] = v322;
                  goto LABEL_466;
                }
              }

              else
              {
                v324 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v321 & 0xFF00 | v323;
              result = PDAcolordodgePDA(v27, v324, v2, v322);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_466:
          v12 += v34;
          v325 = &v17[2 * v34];
          if (v325 >= v33)
          {
            v326 = v318;
          }

          else
          {
            v326 = 0;
          }

          v17 = &v325[2 * v326];
          v10 += 2 * v34;
          --v319;
        }

        while (v319);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v449;
        v327 = &v449[2 * v436];
        v328 = v430;
        if (v327 < v435)
        {
          v328 = 0;
        }

        v329 = &v327[2 * v328];
        v330 = v33 + 2 * v328 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v330;
          v32 = v329;
          v17 = v329;
        }

        v5 = v462 - 1;
        v4 = v439;
        if (v462 == 1)
        {
          return result;
        }
      }

    case 19:
      v370 = -v28;
      v432 = -(v23 * v29);
      while (1)
      {
        v451 = v32;
        v464 = v5;
        v371 = v4;
        do
        {
          v372 = *v12;
          if (*v12)
          {
            v373 = v17[1] * v372 + ((v17[1] * v372) >> 8) + 1;
            v374 = v373 >> 8;
            if (!v24)
            {
              LOBYTE(v374) = *v12;
            }

            if (v374)
            {
              v375 = (*v17 * v372 + ((*v17 * v372) >> 8) + 1) >> 8;
              if (v467)
              {
                v376 = v10[1];
                if (!v10[1])
                {
                  *v10 = v375;
                  v10[1] = v374;
                  goto LABEL_545;
                }
              }

              else
              {
                v376 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v373 & 0xFF00 | v375;
              result = PDAcolorburnPDA(v27, v376, v2, v374);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_545:
          v12 += v34;
          v377 = &v17[2 * v34];
          if (v377 >= v33)
          {
            v378 = v370;
          }

          else
          {
            v378 = 0;
          }

          v17 = &v377[2 * v378];
          v10 += 2 * v34;
          --v371;
        }

        while (v371);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v451;
        v379 = &v451[2 * v436];
        v380 = v432;
        if (v379 < v435)
        {
          v380 = 0;
        }

        v381 = &v379[2 * v380];
        v382 = v33 + 2 * v380 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v382;
          v32 = v381;
          v17 = v381;
        }

        v5 = v464 - 1;
        v4 = v439;
        if (v464 == 1)
        {
          return result;
        }
      }

    case 20:
      v251 = -v28;
      v427 = -(v23 * v29);
      while (1)
      {
        v446 = v32;
        v459 = v5;
        v252 = v4;
        do
        {
          v253 = *v12;
          if (*v12)
          {
            v254 = v17[1] * v253 + ((v17[1] * v253) >> 8) + 1;
            v255 = v254 >> 8;
            if (!v24)
            {
              LOBYTE(v255) = *v12;
            }

            if (v255)
            {
              v256 = (*v17 * v253 + ((*v17 * v253) >> 8) + 1) >> 8;
              if (v467)
              {
                v257 = v10[1];
                if (!v10[1])
                {
                  *v10 = v256;
                  v10[1] = v255;
                  goto LABEL_358;
                }
              }

              else
              {
                v257 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v254 & 0xFF00 | v256;
              result = PDAsoftlightPDA(v27, v257, v2, v255);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_358:
          v12 += v34;
          v258 = &v17[2 * v34];
          if (v258 >= v33)
          {
            v259 = v251;
          }

          else
          {
            v259 = 0;
          }

          v17 = &v258[2 * v259];
          v10 += 2 * v34;
          --v252;
        }

        while (v252);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v446;
        v260 = v427;
        if (v446 < v435)
        {
          v260 = 0;
        }

        v261 = v33 + 2 * v260;
        v262 = &v446[2 * v260];
        v263 = v261 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v263;
          v32 = v262;
          v17 = v262;
        }

        v5 = v459 - 1;
        v4 = v439;
        if (v459 == 1)
        {
          return result;
        }
      }

    case 21:
      v277 = -v28;
      v428 = -(v23 * v29);
      while (1)
      {
        v447 = v32;
        v460 = v5;
        v278 = v4;
        do
        {
          v279 = *v12;
          if (*v12)
          {
            v280 = v17[1] * v279 + ((v17[1] * v279) >> 8) + 1;
            v281 = v280 >> 8;
            if (!v24)
            {
              LOBYTE(v281) = *v12;
            }

            if (v281)
            {
              v282 = (*v17 * v279 + ((*v17 * v279) >> 8) + 1) >> 8;
              if (v467)
              {
                v283 = v10[1];
                if (!v10[1])
                {
                  *v10 = v282;
                  v10[1] = v281;
                  goto LABEL_396;
                }
              }

              else
              {
                v283 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v280 & 0xFF00 | v282;
              result = PDAhardlightPDA(v27, v283, v2, v281);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_396:
          v12 += v34;
          v284 = &v17[2 * v34];
          if (v284 >= v33)
          {
            v285 = v277;
          }

          else
          {
            v285 = 0;
          }

          v17 = &v284[2 * v285];
          v10 += 2 * v34;
          --v278;
        }

        while (v278);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v447;
        v286 = &v447[2 * v436];
        v287 = v428;
        if (v286 < v435)
        {
          v287 = 0;
        }

        v288 = &v286[2 * v287];
        v289 = v33 + 2 * v287 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v289;
          v32 = v288;
          v17 = v288;
        }

        v5 = v460 - 1;
        v4 = v439;
        if (v460 == 1)
        {
          return result;
        }
      }

    case 22:
      v357 = -v28;
      v431 = -(v23 * v29);
      while (1)
      {
        v450 = v32;
        v463 = v5;
        v358 = v4;
        do
        {
          v359 = *v12;
          if (*v12)
          {
            v360 = v17[1] * v359 + ((v17[1] * v359) >> 8) + 1;
            v361 = v360 >> 8;
            if (!v24)
            {
              LOBYTE(v361) = *v12;
            }

            if (v361)
            {
              v362 = (*v17 * v359 + ((*v17 * v359) >> 8) + 1) >> 8;
              if (v467)
              {
                v363 = v10[1];
                if (!v10[1])
                {
                  *v10 = v362;
                  v10[1] = v361;
                  goto LABEL_523;
                }
              }

              else
              {
                v363 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v360 & 0xFF00 | v362;
              result = PDAdifferencePDA(v27, v363, v2, v361);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_523:
          v12 += v34;
          v364 = &v17[2 * v34];
          if (v364 >= v33)
          {
            v365 = v357;
          }

          else
          {
            v365 = 0;
          }

          v17 = &v364[2 * v365];
          v10 += 2 * v34;
          --v358;
        }

        while (v358);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v450;
        v366 = &v450[2 * v436];
        v367 = v431;
        if (v366 < v435)
        {
          v367 = 0;
        }

        v368 = &v366[2 * v367];
        v369 = v33 + 2 * v367 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v369;
          v32 = v368;
          v17 = v368;
        }

        v5 = v463 - 1;
        v4 = v439;
        if (v463 == 1)
        {
          return result;
        }
      }

    case 23:
      v383 = -v28;
      v384 = -(v23 * v29);
      while (1)
      {
        v385 = v4;
        do
        {
          v386 = *v12;
          if (*v12)
          {
            v387 = (v17[1] * v386 + ((v17[1] * v386) >> 8) + 1) >> 8;
            if (!v24)
            {
              LOBYTE(v387) = *v12;
            }

            if (v387)
            {
              v388 = (*v17 * v386 + ((*v17 * v386) >> 8) + 1) >> 8;
              if (v467)
              {
                v389 = v10[1];
                if (!v10[1])
                {
                  goto LABEL_567;
                }
              }

              else
              {
                v389 = 255;
              }

              v390 = *v10;
              result = (v388 + v390) << 8;
              v391 = 255 * (v388 + v390) - 2 * v388 * v390;
              v388 = (v391 + (v391 >> 8) + 1) >> 8;
              v387 = (255 * (v389 + v387) - v389 * v387 + ((255 * (v389 + v387) - v389 * v387) >> 8) + 1) >> 8;
LABEL_567:
              *v10 = v388;
              v10[1] = v387;
            }
          }

          v12 += v34;
          v392 = &v17[2 * v34];
          if (v392 >= v33)
          {
            v393 = v383;
          }

          else
          {
            v393 = 0;
          }

          v17 = &v392[2 * v393];
          v10 += 2 * v34;
          --v385;
        }

        while (v385);
        v12 += v25;
        v10 += 2 * v26;
        v394 = &v32[2 * v23];
        if (v394 >= v30)
        {
          v395 = v384;
        }

        else
        {
          v395 = 0;
        }

        v396 = &v394[2 * v395];
        v397 = v33 + 2 * v395 + 2 * v23;
        if (v27)
        {
          v17 += 2 * v23;
        }

        else
        {
          v33 = v397;
          v32 = v396;
          v17 = v396;
        }

        if (!--v5)
        {
          return result;
        }
      }

    case 24:
      v155 = -v28;
      v424 = -(v23 * v29);
      while (1)
      {
        v443 = v32;
        v456 = v5;
        v156 = v4;
        do
        {
          v157 = *v12;
          if (*v12)
          {
            v158 = v17[1] * v157 + ((v17[1] * v157) >> 8) + 1;
            v159 = v158 >> 8;
            if (!v24)
            {
              LOBYTE(v159) = *v12;
            }

            if (v159)
            {
              v160 = (*v17 * v157 + ((*v17 * v157) >> 8) + 1) >> 8;
              if (v467)
              {
                v161 = v10[1];
                if (!v10[1])
                {
                  *v10 = v160;
                  v10[1] = v159;
                  goto LABEL_207;
                }
              }

              else
              {
                v161 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v158 & 0xFF00 | v160;
              result = PDAhuePDA(v27, v161, v2, v159);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_207:
          v12 += v34;
          v162 = &v17[2 * v34];
          if (v162 >= v33)
          {
            v163 = v155;
          }

          else
          {
            v163 = 0;
          }

          v17 = &v162[2 * v163];
          v10 += 2 * v34;
          --v156;
        }

        while (v156);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v443;
        v164 = &v443[2 * v436];
        v165 = v424;
        if (v164 < v435)
        {
          v165 = 0;
        }

        v166 = &v164[2 * v165];
        v167 = v33 + 2 * v165 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v167;
          v32 = v166;
          v17 = v166;
        }

        v5 = v456 - 1;
        v4 = v439;
        if (v456 == 1)
        {
          return result;
        }
      }

    case 25:
      v142 = -v28;
      v423 = -(v23 * v29);
      while (1)
      {
        v442 = v32;
        v455 = v5;
        v143 = v4;
        do
        {
          v144 = *v12;
          if (*v12)
          {
            v145 = v17[1] * v144 + ((v17[1] * v144) >> 8) + 1;
            v146 = v145 >> 8;
            if (!v24)
            {
              LOBYTE(v146) = *v12;
            }

            if (v146)
            {
              v147 = (*v17 * v144 + ((*v17 * v144) >> 8) + 1) >> 8;
              if (v467)
              {
                v148 = v10[1];
                if (!v10[1])
                {
                  *v10 = v147;
                  v10[1] = v146;
                  goto LABEL_185;
                }
              }

              else
              {
                v148 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | v145 & 0xFF00 | v147;
              result = PDAhuePDA(v27, v148, v2, v146);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_185:
          v12 += v34;
          v149 = &v17[2 * v34];
          if (v149 >= v33)
          {
            v150 = v142;
          }

          else
          {
            v150 = 0;
          }

          v17 = &v149[2 * v150];
          v10 += 2 * v34;
          --v143;
        }

        while (v143);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v442;
        v151 = &v442[2 * v436];
        v152 = v423;
        if (v151 < v435)
        {
          v152 = 0;
        }

        v153 = &v151[2 * v152];
        v154 = v33 + 2 * v152 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v154;
          v32 = v153;
          v17 = v153;
        }

        v5 = v455 - 1;
        v4 = v439;
        if (v455 == 1)
        {
          return result;
        }
      }

    case 26:
      v398 = -v28;
      v433 = -(v23 * v29);
      while (1)
      {
        v452 = v32;
        v465 = v5;
        v399 = v4;
        do
        {
          v400 = *v12;
          if (*v12)
          {
            v401 = v17[1] * v400 + ((v17[1] * v400) >> 8) + 1;
            v402 = v401 >> 8;
            if (!v24)
            {
              LOBYTE(v402) = *v12;
            }

            if (v402)
            {
              v403 = (*v17 * v400 + ((*v17 * v400) >> 8) + 1) >> 8;
              if (v467)
              {
                v404 = v10[1];
                if (!v10[1])
                {
                  *v10 = v403;
                  v10[1] = v402;
                  goto LABEL_591;
                }
              }

              else
              {
                v404 = 255;
              }

              v27 = v27 & 0xFFFFFFFFFFFF0000 | v401 & 0xFF00 | v403;
              v2 = v2 & 0xFFFFFFFFFFFF0000 | *v10;
              result = PDAhuePDA(v27, v402, v2, v404);
              v24 = v466;
              *v10 = result;
            }
          }

LABEL_591:
          v12 += v34;
          v405 = &v17[2 * v34];
          if (v405 >= v33)
          {
            v406 = v398;
          }

          else
          {
            v406 = 0;
          }

          v17 = &v405[2 * v406];
          v10 += 2 * v34;
          --v399;
        }

        while (v399);
        v12 += v438;
        v10 += 2 * v437;
        v32 = v452;
        v407 = &v452[2 * v436];
        v408 = v433;
        if (v407 < v435)
        {
          v408 = 0;
        }

        v409 = &v407[2 * v408];
        v410 = v33 + 2 * v408 + 2 * v436;
        if (v434)
        {
          v17 += 2 * v436;
        }

        else
        {
          v33 = v410;
          v32 = v409;
          v17 = v409;
        }

        v5 = v465 - 1;
        v4 = v439;
        if (v465 == 1)
        {
          return result;
        }
      }

    case 27:
      v40 = -v28;
      v421 = -(v23 * v29);
      break;
    default:
      return result;
  }

  do
  {
    v440 = v32;
    v453 = v5;
    v41 = v4;
    do
    {
      v42 = *v12;
      if (*v12)
      {
        v43 = v17[1] * v42 + ((v17[1] * v42) >> 8) + 1;
        v44 = v43 >> 8;
        if (!v24)
        {
          LOBYTE(v44) = *v12;
        }

        if (v44)
        {
          v45 = (*v17 * v42 + ((*v17 * v42) >> 8) + 1) >> 8;
          if (v467)
          {
            v46 = v10[1];
            if (!v10[1])
            {
              *v10 = v45;
              v10[1] = v44;
              goto LABEL_37;
            }
          }

          else
          {
            v46 = 255;
          }

          v27 = v27 & 0xFFFFFFFFFFFF0000 | *v10;
          v2 = v2 & 0xFFFFFFFFFFFF0000 | v43 & 0xFF00 | v45;
          result = PDAhuePDA(v27, v46, v2, v44);
          v24 = v466;
          *v10 = result;
        }
      }

LABEL_37:
      v12 += v34;
      v47 = &v17[2 * v34];
      if (v47 >= v33)
      {
        v48 = v40;
      }

      else
      {
        v48 = 0;
      }

      v17 = &v47[2 * v48];
      v10 += 2 * v34;
      --v41;
    }

    while (v41);
    v12 += v438;
    v10 += 2 * v437;
    v32 = v440;
    v49 = &v440[2 * v436];
    v50 = v421;
    if (v49 < v435)
    {
      v50 = 0;
    }

    v51 = &v49[2 * v50];
    v52 = v33 + 2 * v50 + 2 * v436;
    if (v434)
    {
      v17 += 2 * v436;
    }

    else
    {
      v33 = v52;
      v32 = v51;
      v17 = v51;
    }

    v5 = v453 - 1;
    v4 = v439;
  }

  while (v453 != 1);
  return result;
}