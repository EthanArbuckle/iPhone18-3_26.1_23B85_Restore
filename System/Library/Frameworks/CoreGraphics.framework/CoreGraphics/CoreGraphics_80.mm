_DWORD *rgba64_DMplusDAM(_DWORD *result, unint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a2 * a3 + a4 * a6;
  v7 = WORD1(a2) * a3 + WORD1(a4) * a6;
  v8 = WORD2(a2) * a3 + WORD2(a4) * a6;
  v9 = HIWORD(a2) * a3 + a6 * a5;
  if (v6 >= 0xFFFE8000)
  {
    v6 = 4294868992;
  }

  if (v7 >= 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  if (v8 >= 0xFFFE8000)
  {
    v8 = 4294868992;
  }

  if (v9 >= 0xFFFE8000)
  {
    v9 = 4294868992;
  }

  *result = (((v7 + 0x8000) >> 16) + v7 + 0x8000) & 0xFFFF0000 | ((((v6 + 0x8000) >> 16) + v6 + 0x8000) >> 16);
  result[1] = (((v9 + 0x8000) >> 16) + v9 + 0x8000) & 0xFFFF0000 | ((((v8 + 0x8000) >> 16) + v8 + 0x8000) >> 16);
  return result;
}

_DWORD *rgba64_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15253(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD70;
    a2[6] = 0;
    *(a2 + 6) = v8;
    *(a2 + 2) = 1;
    if (v8 <= 0xFFFEFFFFFFFFFFFFLL)
    {
      v9 = (a2 + 12);
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

unint64_t PIXELCONSTANT_15253(float *a1, int a2, float *a3, float a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = v5;
  if (v5 >= a4)
  {
    v6 = a4;
    if (v4 > a4)
    {
      v6 = *a1;
    }
  }

  v7 = a1[3];
  v8 = v6 * a1[2];
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    if (*a3 >= v4)
    {
      v4 = *a3;
    }

    if (*a3 > v5)
    {
      v4 = a1[1];
    }

    v10 = (v7 + (v4 * v8));
    v11 = v10;
    LOWORD(v12) = v10;
  }

  else
  {
    if (v9 == 4)
    {
      v19 = a3[4];
      v20 = *a3;
      v21 = a3[1];
      v22 = a3[2];
      if (v19 < v4)
      {
        v23 = *a1;
      }

      else
      {
        v23 = a3[4];
      }

      if (v19 <= v5)
      {
        v24 = v23;
      }

      else
      {
        v24 = a1[1];
      }

      if (v20 < v4)
      {
        v25 = *a1;
      }

      else
      {
        v25 = *a3;
      }

      if (v20 <= v5)
      {
        v26 = v25;
      }

      else
      {
        v26 = a1[1];
      }

      if (v21 < v4)
      {
        v27 = *a1;
      }

      else
      {
        v27 = a3[1];
      }

      if (v21 <= v5)
      {
        v28 = v27;
      }

      else
      {
        v28 = a1[1];
      }

      if (v22 < v4)
      {
        v29 = *a1;
      }

      else
      {
        v29 = a3[2];
      }

      if (v22 <= v5)
      {
        v30 = v29;
      }

      else
      {
        v30 = a1[1];
      }

      v31 = (v5 - v26) - v24;
      v32 = (v5 - v28) - v24;
      v33 = (v5 - v30) - v24;
      v34 = v7 + (v31 * v8);
      if (v31 < v4)
      {
        v34 = *a1;
      }

      v35 = v7 + (v32 * v8);
      if (v32 < v4)
      {
        v35 = *a1;
      }

      if (v33 >= v4)
      {
        v4 = v7 + (v33 * v8);
      }

      v10 = v34;
      v11 = v35;
      goto LABEL_58;
    }

    LOWORD(v10) = 0;
    v11 = 0;
    LOWORD(v12) = 0;
    if (v9 == 3)
    {
      v13 = a3[1];
      v14 = a3[2];
      if (*a3 < v4)
      {
        v15 = *a1;
      }

      else
      {
        v15 = *a3;
      }

      if (*a3 <= v5)
      {
        v16 = v15;
      }

      else
      {
        v16 = a1[1];
      }

      if (v13 < v4)
      {
        v17 = *a1;
      }

      else
      {
        v17 = a3[1];
      }

      if (v13 <= v5)
      {
        v18 = v17;
      }

      else
      {
        v18 = a1[1];
      }

      if (v14 >= v4)
      {
        v4 = a3[2];
      }

      if (v14 > v5)
      {
        v4 = a1[1];
      }

      v10 = (v7 + (v16 * v8));
      v11 = (v7 + (v18 * v8));
      v4 = v7 + (v4 * v8);
LABEL_58:
      v12 = v4;
    }
  }

  return ((v7 + v8) << 48) | (v12 << 32) | (v11 << 16) | v10;
}

uint64_t RGBA64_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = *(v7 + 56);
  v9 = *v3;
  v10 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v11 = *(v8 + 16 * v9 + 8 * v10 + 4 * (*(v3 + 6) == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, v17, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = rgba64_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = rgba64_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = rgba64_shade_axial_RGB;
    }

    else
    {
      v14 = rgba64_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 3, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 3, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x8C254358uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  RGBA64_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void RGBA64_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v497 = a3;
  v508 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v492 = v4;
  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v5 > 0x1FFFFFF)
  {
    return;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 184);
  v507.i64[0] = *(a1 + 136);
  v9 = *(a2 + 104);
  v503 = *(a2 + 96);
  v504 = v9;
  v505 = v6;
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 16);
  v13 = *(a1 + 20);
  v14 = *(a1 + 12);
  v502 = *(a1 + 8);
  v496 = a1;
  v499 = a2;
  v15 = *(a2 + 16);
  v16 = (v15 + 10) * v5;
  if (v16 > 65439)
  {
    v19 = malloc_type_calloc(1uLL, v16 + 96, 0xF5B4F9ABuLL);
    v18 = v19;
    v21 = v19;
    v22 = v499;
    v23 = v496;
    if (!v19)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a4);
    v18 = &v487 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    v21 = 0;
    v22 = v499;
    v23 = v496;
  }

  v489 = v21;
  v498 = ((v8 * 65535.0) + 0.5);
  v488 = v7 + (v11 - 1) * v10 + 8 * v13;
  v24 = v10 >> 3;
  v25 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v25 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    v27 = 8 * v5;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 + v27;
  v22[18] = v25;
  v22[19] = v26 + v27;
  v22[20] = v26;
  v29 = (v7 + 8 * v24 * v12 + 8 * v14);
  v30 = v492;
  v487 = v10 >> 3;
  v495 = v24 - v492;
  v31 = *(v23 + 104);
  v32 = *(v23 + 108);
  v33 = *(v23 + 2);
  if (v33 == 6 || v33 == 1)
  {
    v34 = v503;
    v35 = v504;
    if (!v507.i64[0])
    {
      goto LABEL_484;
    }

    v36 = 0;
    v37 = 0;
    v38 = *(v496 + 124);
    v39 = (v507.i64[0] + v38 * v32 + v31);
    v30 = v492;
    v494 = v38 - v492;
    v40 = v497;
    v41 = v499;
  }

  else
  {
    v35 = v504;
    if (v507.i64[0])
    {
      shape_enum_clip_alloc(v19, v20, v507.i64[0], 1, 1, 1, v31, v32, v4, v502);
      v41 = v499;
      if (!v42)
      {
        goto LABEL_484;
      }

      v43 = 0;
      v44 = ((v15 * v5 + 15) & 0xFFFFFFF0);
      if (!v15)
      {
        v44 = 8 * v5;
      }

      v494 = -v492;
      v39 = (v28 + v44 + 16);
      v40 = v497;
      v34 = v503;
      v36 = v42;
      while (1)
      {
LABEL_487:
        while (1)
        {
          v485 = *(v39 - 4);
          v486 = v485 - v43;
          if (v485 <= v43)
          {
            break;
          }

          v502 -= v486;
          if (v502 < 1)
          {
LABEL_483:
            free(v36);
            goto LABEL_484;
          }

          v34 += v41[16] * v486;
          v35 += v41[17] * v486;
          v29 += 4 * v487 * v486;
          v43 = v485;
        }

        if (v43 < *(v39 - 3) + v485)
        {
          break;
        }

        if (!shape_enum_clip_scan(v36, v39 - 4))
        {
          goto LABEL_483;
        }
      }

      v30 = v492;
      v37 = v43;
    }

    else
    {
      v39 = 0;
      v36 = 0;
      v494 = 0;
      v37 = 0;
      v40 = v497;
      v41 = v499;
      v34 = v503;
    }
  }

  v45 = v36;
  v46 = v498 ^ 0xFFFF;
  v47 = vdup_n_s32(v498 ^ 0xFFFFu);
  v491 = (v4 - 1);
  v490 = -v30;
  v493 = v488 - 8;
  v506 = xmmword_18439CB80;
  v507 = xmmword_18439CB70;
  v48 = vdup_n_s32(0x101u);
  v49 = v45;
  while (2)
  {
    v500 = v37;
    v501 = v49;
    v50 = *v41;
    v503 = v34;
    v504 = v35;
    v50(v41, v34, v35, v4);
    v51 = v41[20];
    v52 = v41[18];
    v53 = *(v41 + 2);
    if (v53 == *(v41 + 3))
    {
      if (v498 != 0xFFFF)
      {
        v54 = v4;
        v55 = v41[18];
        do
        {
          if (*v55)
          {
            v56 = *v51 * v46 + 0x8000;
            v57 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v51), v506));
            v58.i32[1] = v57.i32[1];
            v58.i32[0] = v57.u16[0];
            v59 = vmla_s32(0x800000008000, v58, v47);
            v60 = vand_s8(vsub_s32(v57, vshr_n_u32(vsra_n_u32(v59, v59, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v61.i64[0] = v60.u32[0];
            v61.i64[1] = v60.u32[1];
            v62 = vshlq_u64(v61, v507);
            *v51 = vorrq_s8(v62, vdupq_laneq_s64(v62, 1)).u64[0] | ((WORD1(*v51) - ((WORD1(*v51) * v46 + 0x8000 + ((WORD1(*v51) * v46 + 0x8000) >> 16)) >> 16)) << 16) | (*v51 - ((v56 + HIWORD(v56)) >> 16));
          }

          ++v55;
          v51 += 8;
          --v54;
        }

        while (v54);
        v51 += 8 * v490;
        v52 += v491 + v490 + 1;
      }
    }

    else
    {
      v63 = v41[19];
      v64 = HIWORD(v53) & 0x3F;
      if (v64 == 16)
      {
        if (v498 == 0xFFFF)
        {
          v107 = 0;
          do
          {
            if (v52[v107])
            {
              *(v51 + 8 * v107) = *(v63 + 8 * v107);
            }

            ++v107;
          }

          while (v4 != v107);
        }

        else
        {
          v80 = 0;
          do
          {
            if (v52[v80])
            {
              v81 = *(v63 + 8 * v80);
              v82 = vmovn_s64(vshlq_u64(vdupq_n_s64(v81), v506));
              v83.i32[1] = v82.i32[1];
              v83.i32[0] = v82.u16[0];
              v84 = vmla_s32(0x800000008000, v83, v47);
              v85 = vand_s8(vsub_s32(v82, vshr_n_u32(vsra_n_u32(v84, v84, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
              v86.i64[0] = v85.u32[0];
              v86.i64[1] = v85.u32[1];
              v87 = vshlq_u64(v86, v507);
              *(v51 + 8 * v80) = vorrq_s8(v87, vdupq_laneq_s64(v87, 1)).u64[0] | ((WORD1(v81) - ((WORD1(v81) * v46 + 0x8000 + ((WORD1(v81) * v46 + 0x8000) >> 16)) >> 16)) << 16) | (v81 - ((v81 * v46 + 0x8000 + ((v81 * v46 + 0x8000) >> 16)) >> 16));
            }

            ++v80;
          }

          while (v4 != v80);
        }
      }

      else if (v64 == 32)
      {
        if (v498 == 0xFFFF)
        {
          v96 = 0;
          v97 = (v63 + 8);
          do
          {
            if (v52[v96])
            {
              v98 = v97[1];
              if (v98 <= 0.0)
              {
                v103 = 0;
              }

              else
              {
                v99 = *(v97 - 2);
                LODWORD(v100) = ((v98 * 65535.0) + 0.5);
                if (v98 <= 1.0)
                {
                  v100 = v100;
                }

                else
                {
                  v100 = 0xFFFFLL;
                }

                LOWORD(v101) = v100;
                if (v98 > 1.0)
                {
                  v98 = 1.0;
                }

                LOWORD(v102) = v100;
                if (v99 <= v98)
                {
                  if (v99 >= 0.0)
                  {
                    v102 = ((v99 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v102) = 0;
                  }
                }

                v104 = *(v97 - 1);
                v105 = v100;
                if (v104 <= v98)
                {
                  if (v104 >= 0.0)
                  {
                    v105 = ((v104 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v105 = 0;
                  }
                }

                v106 = *v97;
                if (*v97 <= v98)
                {
                  if (v106 >= 0.0)
                  {
                    v101 = ((v106 * 65535.0) + 0.5);
                  }

                  else
                  {
                    LOWORD(v101) = 0;
                  }
                }

                v103 = (v100 << 48) | (v101 << 32) | (v105 << 16) | v102;
              }

              *(v51 + 8 * v96) = v103;
            }

            v97 += 4;
            ++v96;
          }

          while (v4 != v96);
        }

        else
        {
          v65 = 0;
          v66 = (v63 + 8);
          do
          {
            if (v52[v65])
            {
              v67 = v66[1];
              if (v67 <= 0.0)
              {
                v72 = 0;
              }

              else
              {
                v68 = *(v66 - 2);
                v69 = ((v67 * 65535.0) + 0.5);
                if (v67 > 1.0)
                {
                  v69 = 0xFFFF;
                }

                v70 = v69;
                if (v67 > 1.0)
                {
                  v67 = 1.0;
                }

                v71 = v69;
                if (v68 <= v67)
                {
                  if (v68 >= 0.0)
                  {
                    v71 = ((v68 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v71 = 0;
                  }
                }

                v73 = *(v66 - 1);
                v74 = v69;
                if (v73 <= v67)
                {
                  if (v73 >= 0.0)
                  {
                    v74 = ((v73 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v74 = 0;
                  }
                }

                v75 = *v66;
                if (*v66 <= v67)
                {
                  if (v75 >= 0.0)
                  {
                    v70 = ((v75 * 65535.0) + 0.5);
                  }

                  else
                  {
                    v70 = 0;
                  }
                }

                v76 = v71 * v46;
                v77 = v74 * v46;
                v78 = v70 * v46;
                v79 = v69 * v46;
                if ((v71 * v46) >= 0xFFFE8000)
                {
                  v76 = -98304;
                }

                if (v77 >= 0xFFFE8000)
                {
                  v77 = -98304;
                }

                if (v78 >= 0xFFFE8000)
                {
                  v78 = -98304;
                }

                if (v79 >= 0xFFFE8000)
                {
                  v79 = -98304;
                }

                v72 = ((v69 - ((v79 + 0x8000 + ((v79 + 0x8000) >> 16)) >> 16)) << 48) | ((v70 - ((v78 + 0x8000 + ((v78 + 0x8000) >> 16)) >> 16)) << 32) | ((v74 - ((v77 + 0x8000 + ((v77 + 0x8000) >> 16)) >> 16)) << 16) | (v71 - ((v76 + 0x8000 + ((v76 + 0x8000) >> 16)) >> 16));
              }

              *(v51 + 8 * v65) = v72;
            }

            v66 += 4;
            ++v65;
          }

          while (v4 != v65);
        }
      }

      else if (v498 == 0xFFFF)
      {
        v108 = 0;
        do
        {
          if (v52[v108])
          {
            v109 = *(v63 + 4 * v108);
            v110 = *(v63 + 4 * v108);
            *(v51 + 8 * v108) = ((v110 | (v110 << 8)) << 48) | ((BYTE1(v109) | (BYTE1(v109) << 8)) << 32) | v109 & 0xFF0000 | (BYTE2(v109) << 24) | (v109 >> 24) | (v109 >> 24 << 8);
          }

          ++v108;
        }

        while (v4 != v108);
      }

      else
      {
        v88 = 0;
        do
        {
          if (v52[v88])
          {
            v89 = *(v63 + 4 * v88);
            v90.i32[0] = v89 >> 8;
            v90.i32[1] = v89;
            v91 = vmul_s32(vand_s8(v90, 0xFF000000FFLL), v48);
            v92 = vmla_s32(0x800000008000, v91, v47);
            v93 = vand_s8(vsub_s32(v91, vshr_n_u32(vsra_n_u32(v92, v92, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v94.i64[0] = v93.u32[0];
            v94.i64[1] = v93.u32[1];
            v95 = vshlq_u64(v94, v507);
            *(v51 + 8 * v88) = vorrq_s8(v95, vdupq_laneq_s64(v95, 1)).u64[0] | (((BYTE2(v89) | (BYTE2(v89) << 8)) - (((BYTE2(v89) | (BYTE2(v89) << 8)) * v46 + 0x8000 + (((BYTE2(v89) | (BYTE2(v89) << 8)) * v46 + 0x8000) >> 16)) >> 16)) << 16) | ((HIBYTE(v89) | (HIBYTE(v89) << 8)) - (((HIBYTE(v89) | (HIBYTE(v89) << 8)) * v46 + 0x8000 + (((HIBYTE(v89) | (HIBYTE(v89) << 8)) * v46 + 0x8000) >> 16)) >> 16));
          }

          ++v88;
        }

        while (v4 != v88);
      }
    }

    switch(v40)
    {
      case 0:
        v111 = v4;
        v112 = v39;
        v113 = v503;
        v114 = v504;
        do
        {
          v115 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v115 = ((*v112 * v115 + ((*v112 * v115) >> 8) + 1) >> 8);
            }

            if (v115)
            {
              if (v115 == 255)
              {
                *v29 = 0;
              }

              else
              {
                v116 = bswap32(v29[1] | (*v29 << 16));
                v117.i32[0] = v116;
                v117.i32[1] = vshr_n_u32(vdup_n_s32(v116), 0x10uLL).i32[1];
                v117.i64[1] = __PAIR64__(bswap32(v29[3]) >> 16, bswap32(v29[2]) >> 16);
                v118.i64[0] = 0x800000008000;
                v118.i64[1] = 0x800000008000;
                v119 = vmlaq_s32(v118, v117, vdupq_n_s32(v115 | (v115 << 8)));
                v117.i32[0] = v116;
                *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v117, vshrq_n_u32(vsraq_n_u32(v119, v119, 0x10uLL), 0x10uLL))));
              }
            }
          }

          ++v52;
          v112 += v39 != 0;
          v29 += 4;
          --v111;
        }

        while (v111);
        v39 = &v112[v494];
        v29 += 4 * v495;
        goto LABEL_452;
      case 1:
        v284 = *v52;
        if (v39)
        {
          v285 = v52 + 1;
          v286 = v4;
          do
          {
            if (v284)
            {
              v287 = *v39 * v284 + ((*v39 * v284) >> 8) + 1;
              v288 = v493;
              if (v493 >= v29)
              {
                v288 = v29;
              }

              if (v288 >= *(v496 + 40))
              {
                v289 = v288;
              }

              else
              {
                v289 = *(v496 + 40);
              }

              if (BYTE1(v287))
              {
                if (BYTE1(v287) == 255)
                {
                  v290 = HIDWORD(*v51);
                  v291 = HIWORD(*v51);
                  v292 = bswap32(*v51);
                  *v289 = HIWORD(v292);
                  v289[1] = v292;
                  v289[2] = bswap32(v290) >> 16;
                  v289[3] = __rev16(v291);
                }

                else
                {
                  RGBA64_DMplusDM(v289, *v51, (257 * (v287 >> 8)), ((bswap32(v289[2]) >> 16) << 32) | ((bswap32(v289[3]) >> 16) << 48) | bswap32(v289[1]) & 0xFFFF0000 | (bswap32(*v289) >> 16), ~(257 * (v287 >> 8)));
                }
              }
            }

            else
            {
              v289 = v29;
            }

            v293 = *v285++;
            v284 = v293;
            v51 += 8;
            ++v39;
            v29 = v289 + 4;
            --v286;
          }

          while (v286);
          v39 += v494;
          v114 = v504;
        }

        else
        {
          v478 = v52 + 1;
          v479 = v4;
          v114 = v504;
          do
          {
            v480 = v493;
            if (v493 >= v29)
            {
              v480 = v29;
            }

            if (v480 >= *(v496 + 40))
            {
              v289 = v480;
            }

            else
            {
              v289 = *(v496 + 40);
            }

            if (v284)
            {
              if (v284 == 255)
              {
                v481 = HIDWORD(*v51);
                v482 = HIWORD(*v51);
                v483 = bswap32(*v51);
                *v289 = HIWORD(v483);
                v289[1] = v483;
                v289[2] = bswap32(v481) >> 16;
                v289[3] = __rev16(v482);
              }

              else
              {
                RGBA64_DMplusDM(v289, *v51, v284 | (v284 << 8), ((bswap32(v289[2]) >> 16) << 32) | ((bswap32(v289[3]) >> 16) << 48) | bswap32(v289[1]) & 0xFFFF0000 | (bswap32(*v289) >> 16), (v284 | (v284 << 8)) ^ 0xFFFF);
              }
            }

            v484 = *v478++;
            v284 = v484;
            v51 += 8;
            v29 = v289 + 4;
            --v479;
          }

          while (v479);
          v39 = 0;
        }

        v29 = &v289[4 * v495 + 4];
        v41 = v499;
        v113 = v503;
        goto LABEL_452;
      case 2:
        v240 = *v52;
        if (v39)
        {
          v241 = v52 + 1;
          v242 = v4;
          while (1)
          {
            v243 = v29;
            if (!v240)
            {
              goto LABEL_237;
            }

            v244 = *v39 * v240 + ((*v39 * v240) >> 8) + 1;
            if (!BYTE1(v244))
            {
              goto LABEL_237;
            }

            if (BYTE1(v244) == 255)
            {
              v245 = *v51;
              v246 = HIWORD(*v51);
              if (v246)
              {
                if (v246 != 0xFFFF)
                {
                  v251 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                  v252 = v246 ^ 0xFFFF;
                  goto LABEL_236;
                }

                v247 = bswap32(v245);
                *v29 = HIWORD(v247);
                v29[1] = v247;
                v29[2] = bswap32(HIDWORD(v245)) >> 16;
                v29[3] = -1;
              }
            }

            else
            {
              v249 = HIWORD(*v51);
              v250 = (257 * (v244 >> 8)) ^ 0xFFFF;
              if (v249 != (v250 * v249 + 0x8000 + ((v250 * v249 + 0x8000) >> 16)) >> 16)
              {
                v248 = *v51;
                v245 = ((v249 - ((v250 * v249 + 0x8000 + ((v250 * v249 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v248) - ((WORD2(v248) * v250 + 0x8000 + ((WORD2(v248) * v250 + 0x8000) >> 16)) >> 16)) << 32) | (v248 - ((v248 * v250 + 0x8000 + ((v248 * v250 + 0x8000) >> 16)) >> 16)) | ((WORD1(v248) - ((WORD1(v248) * v250 + 0x8000 + ((WORD1(v248) * v250 + 0x8000) >> 16)) >> 16)) << 16);
                v251 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                v252 = ~(v249 - ((v250 * v249 + 0x8000 + ((v250 * v249 + 0x8000) >> 16)) >> 16));
LABEL_236:
                RGBA64_DplusDM(v29, v245, v251, v252);
              }
            }

LABEL_237:
            v253 = *v241++;
            v240 = v253;
            v51 += 8;
            ++v39;
            v29 += 4;
            if (!--v242)
            {
              v39 += v494;
LABEL_467:
              v29 = &v243[4 * v495 + 4];
              v41 = v499;
              goto LABEL_468;
            }
          }
        }

        v467 = v52 + 1;
        v468 = v4;
        while (1)
        {
          if (v240)
          {
            if (v240 == 255)
            {
              v469 = *v51;
              v470 = HIWORD(*v51);
              if (v470)
              {
                if (v470 != 0xFFFF)
                {
                  v475 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                  v476 = v470 ^ 0xFFFF;
                  goto LABEL_464;
                }

                v471 = bswap32(v469);
                *v29 = HIWORD(v471);
                v29[1] = v471;
                v29[2] = bswap32(HIDWORD(v469)) >> 16;
                v29[3] = -1;
              }
            }

            else
            {
              v473 = HIWORD(*v51);
              v474 = (257 * v240) ^ 0xFFFF;
              if (v473 != (v474 * v473 + 0x8000 + ((v474 * v473 + 0x8000) >> 16)) >> 16)
              {
                v472 = *v51;
                v469 = ((v473 - ((v474 * v473 + 0x8000 + ((v474 * v473 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD2(v472) - ((WORD2(v472) * v474 + 0x8000 + ((WORD2(v472) * v474 + 0x8000) >> 16)) >> 16)) << 32) | (v472 - ((v472 * v474 + 0x8000 + ((v472 * v474 + 0x8000) >> 16)) >> 16)) | ((WORD1(v472) - ((WORD1(v472) * v474 + 0x8000 + ((WORD1(v472) * v474 + 0x8000) >> 16)) >> 16)) << 16);
                v475 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                v476 = ~(v473 - ((v474 * v473 + 0x8000 + ((v474 * v473 + 0x8000) >> 16)) >> 16));
LABEL_464:
                RGBA64_DplusDM(v29, v469, v475, v476);
              }
            }
          }

          v477 = *v467++;
          v240 = v477;
          v51 += 8;
          v29 += 4;
          if (!--v468)
          {
            v39 = 0;
            v243 = v29 - 4;
            goto LABEL_467;
          }
        }

      case 3:
        v269 = v4;
        v121 = v39;
        do
        {
          v270 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v270 = ((*v121 * v270 + ((*v121 * v270) >> 8) + 1) >> 8);
            }

            if (v270)
            {
              if (v270 == 255)
              {
                v271.i32[0] = *v51;
                v271.i32[1] = vshr_n_u32(vdup_n_s32(*v51), 0x10uLL).i32[1];
                v271.i32[2] = WORD2(*v51);
                v271.i32[3] = HIWORD(*v51);
                v272.i64[0] = 0x800000008000;
                v272.i64[1] = 0x800000008000;
                v273 = vmlaq_s32(v272, v271, vmovl_u16(vdup_n_s16(bswap32(~v29[3]) >> 16)));
                v271.i32[0] = *v51;
                v271.i32[2] = HIDWORD(*v51);
                *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v271, vshrq_n_u32(vsraq_n_u32(v273, v273, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v274 = bswap32(v29[3]) >> 16;
                RGBA64_DMplusDM(v29, *v51, (v274 * (v270 | (v270 << 8)) + 0x8000 + ((v274 * (v270 | (v270 << 8)) + 0x8000) >> 16)) >> 16, (v274 << 48) | ((bswap32(v29[2]) >> 16) << 32) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), (v270 | (v270 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          --v269;
        }

        while (v269);
        goto LABEL_450;
      case 4:
        v182 = v4;
        v121 = v39;
        do
        {
          v183 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v183 = ((*v121 * v183 + ((*v121 * v183) >> 8) + 1) >> 8);
            }

            if (v183)
            {
              if (v183 == 255)
              {
                v184.i32[0] = *v51;
                v184.i32[1] = vshr_n_u32(vdup_n_s32(*v51), 0x10uLL).i32[1];
                v184.i32[2] = WORD2(*v51);
                v184.i32[3] = HIWORD(*v51);
                v185.i64[0] = 0x800000008000;
                v185.i64[1] = 0x800000008000;
                v186 = vmlaq_s32(v185, v184, vmovl_u16(vdup_n_s16(bswap32(v29[3]) >> 16)));
                v184.i32[0] = *v51;
                v184.i32[2] = HIDWORD(*v51);
                *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v184, vshrq_n_u32(vsraq_n_u32(v186, v186, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v187 = bswap32(v29[3]) >> 16;
                RGBA64_DMplusDM(v29, *v51, ((v187 ^ 0xFFFF) * (v183 | (v183 << 8)) + 0x8000 + (((v187 ^ 0xFFFF) * (v183 | (v183 << 8)) + 0x8000) >> 16)) >> 16, (v187 << 48) | ((bswap32(v29[2]) >> 16) << 32) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), (v183 | (v183 << 8)) ^ 0xFFFF);
              }
            }
          }

          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          --v182;
        }

        while (v182);
        goto LABEL_450;
      case 5:
        v324 = v4;
        v121 = v39;
        while (1)
        {
          v325 = *v52;
          if (*v52)
          {
            if (!v39)
            {
              goto LABEL_321;
            }

            v326 = *v121 * v325 + ((*v121 * v325) >> 8) + 1;
            if (v326 >= 0x100)
            {
              break;
            }
          }

LABEL_322:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v324)
          {
            goto LABEL_450;
          }
        }

        v325 = v326 >> 8;
LABEL_321:
        v327 = WORD1(*v51);
        v328 = (v325 | (v325 << 8)) ^ 0xFFFF;
        v329 = *v51 * v328 + 0x8000;
        v330 = WORD2(*v51) * v328 + 0x8000;
        v331 = v327 * v328 + 0x8000 + ((v327 * v328 + 0x8000) >> 16);
        v332 = HIWORD(*v51) - ((v328 * HIWORD(*v51) + 0x8000 + ((v328 * HIWORD(*v51) + 0x8000) >> 16)) >> 16);
        v333 = bswap32(v29[3]) >> 16;
        RGBA64_DMplusDM(v29, (v332 << 48) | ((HIDWORD(*v51) - ((v330 + HIWORD(v330)) >> 16)) << 32) | (*v51 - ((v329 + HIWORD(v329)) >> 16)) | ((v327 - HIWORD(v331)) << 16), v333, ((bswap32(v29[2]) >> 16) << 32) | (v333 << 48) | (__PAIR64__(bswap32(v29[1]) >> 16, bswap32(*v29)) >> 16), ~v332);
        goto LABEL_322;
      case 6:
        v364 = v4;
        v365 = v39;
        do
        {
          v366 = *v52;
          if (!*v52)
          {
            goto LABEL_361;
          }

          if (v39)
          {
            v367 = *v365 * v366 + ((*v365 * v366) >> 8) + 1;
            if (v367 < 0x100)
            {
              goto LABEL_361;
            }

            v366 = v367 >> 8;
          }

          v368 = bswap32(v29[3]);
          if (HIWORD(v368) != 0xFFFF)
          {
            if (~HIWORD(v368) == 0xFFFF)
            {
              v369.i32[0] = *v51;
              v369.i32[1] = vshr_n_u32(vdup_n_s32(*v51), 0x10uLL).i32[1];
              v369.i32[2] = WORD2(*v51);
              v369.i32[3] = HIWORD(*v51);
              v370.i64[0] = 0x800000008000;
              v370.i64[1] = 0x800000008000;
              v371 = vmlaq_s32(v370, v369, vdupq_n_s32((v366 | (v366 << 8)) ^ 0xFFFFu));
              v369.i32[0] = *v51;
              v369.i32[2] = HIDWORD(*v51);
              *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v369, vshrq_n_u32(vsraq_n_u32(v371, v371, 0x10uLL), 0x10uLL))));
            }

            else
            {
              RGBA64_DplusDM(v29, (HIWORD(v368) << 48) | ((bswap32(v29[2]) >> 16) << 32) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), *v51, (257 * v366 * ~HIWORD(v368) + 0x8000 + ((257 * v366 * ~HIWORD(v368) + 0x8000) >> 16)) >> 16);
            }
          }

LABEL_361:
          ++v52;
          v51 += 8;
          v365 += v39 != 0;
          v29 += 4;
          --v364;
        }

        while (v364);
        v39 = &v365[v494];
        v29 += 4 * v495;
LABEL_451:
        v41 = v499;
        v113 = v503;
        v114 = v504;
LABEL_452:
        if (--v502)
        {
          v49 = 0;
          v37 = v500 + 1;
          v34 = v41[16] + v113;
          v35 = v41[17] + v114;
          if (v501)
          {
            v43 = v500 + 1;
            v36 = v501;
            goto LABEL_487;
          }

          continue;
        }

        v36 = v501;
        if (v501)
        {
          goto LABEL_483;
        }

LABEL_484:
        if (v489)
        {
          free(v489);
        }

        return;
      case 7:
        v275 = v4;
        v121 = v39;
        do
        {
          v276 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v276 = ((*v121 * v276 + ((*v121 * v276) >> 8) + 1) >> 8);
            }

            if (v276)
            {
              if (v276 == 255)
              {
                v277 = bswap32(v29[1] | (*v29 << 16));
                v278.i32[0] = v277;
                v278.i32[1] = vshr_n_u32(vdup_n_s32(v277), 0x10uLL).i32[1];
                v278.i64[1] = __PAIR64__(bswap32(v29[3]) >> 16, bswap32(v29[2]) >> 16);
                v279.i64[0] = 0x800000008000;
                v279.i64[1] = 0x800000008000;
                v280 = vmlaq_s32(v279, v278, vdupq_n_s32(*(v51 + 6) ^ 0xFFFFu));
                v278.i32[0] = v277;
                *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v278, vshrq_n_u32(vsraq_n_u32(v280, v280, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v281 = v276 | (v276 << 8);
                v282 = *(v51 + 6) * v281 + 0x8000;
                v283 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                RGBA64_DMplusDM(v29, v283, (v282 + HIWORD(v282)) >> 16, v283, v281 ^ 0xFFFF);
              }
            }
          }

          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          --v275;
        }

        while (v275);
        goto LABEL_450;
      case 8:
        v398 = v4;
        v121 = v39;
        do
        {
          v399 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v399 = ((*v121 * v399 + ((*v121 * v399) >> 8) + 1) >> 8);
            }

            if (v399)
            {
              if (v399 == 255)
              {
                v400 = bswap32(v29[1] | (*v29 << 16));
                v401.i32[0] = v400;
                v401.i32[1] = vshr_n_u32(vdup_n_s32(v400), 0x10uLL).i32[1];
                v401.i64[1] = __PAIR64__(bswap32(v29[3]) >> 16, bswap32(v29[2]) >> 16);
                v402.i64[0] = 0x800000008000;
                v402.i64[1] = 0x800000008000;
                v403 = vmlaq_s32(v402, v401, vdupq_n_s32(*(v51 + 6)));
                v401.i32[0] = v400;
                *v29 = vrev16_s8(vmovn_s32(vsubq_s32(v401, vshrq_n_u32(vsraq_n_u32(v403, v403, 0x10uLL), 0x10uLL))));
              }

              else
              {
                v404 = v399 | (v399 << 8);
                v405 = (*(v51 + 6) ^ 0xFFFF) * v404 + 0x8000;
                v406 = ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
                RGBA64_DMplusDM(v29, v406, (v405 + HIWORD(v405)) >> 16, v406, v404 ^ 0xFFFF);
              }
            }
          }

          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          --v398;
        }

        while (v398);
        goto LABEL_450;
      case 9:
        v199 = v4;
        v121 = v39;
        while (1)
        {
          v200 = *v52;
          if (*v52)
          {
            if (!v39)
            {
              goto LABEL_194;
            }

            v201 = *v121 * v200 + ((*v121 * v200) >> 8) + 1;
            if (v201 >= 0x100)
            {
              break;
            }
          }

LABEL_195:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v199)
          {
            goto LABEL_450;
          }
        }

        v200 = v201 >> 8;
LABEL_194:
        v202 = ~(v200 | (v200 << 8));
        v203 = v202;
        v204 = *v51 * v202 + 0x8000;
        v205 = WORD2(*v51) * v202 + 0x8000;
        v206 = *v51 - ((v204 + HIWORD(v204)) >> 16);
        LOWORD(v204) = WORD1(*v51) - ((WORD1(*v51) * v203 + 0x8000 + ((WORD1(*v51) * v203 + 0x8000) >> 16)) >> 16);
        v207 = HIWORD(*v51) - ((HIWORD(*v51) * v203 + 0x8000 + ((HIWORD(*v51) * v203 + 0x8000) >> 16)) >> 16);
        v208 = v206 | (v204 << 16);
        v209 = bswap32(v29[3]) >> 16;
        RGBA64_DMplusDM(v29, (v207 << 48) | ((HIDWORD(*v51) - ((v205 + HIWORD(v205)) >> 16)) << 32) | v208, v209 ^ 0xFFFF, (v209 << 48) | ((bswap32(v29[2]) >> 16) << 32) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), (v207 + v202));
        goto LABEL_195;
      case 10:
        v387 = v4;
        v121 = v39;
        while (1)
        {
          v388 = *v52;
          if (*v52)
          {
            if (!v39)
            {
              goto LABEL_382;
            }

            v389 = *v121 * v388 + ((*v121 * v388) >> 8) + 1;
            if (v389 >= 0x100)
            {
              break;
            }
          }

LABEL_383:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v387)
          {
            goto LABEL_450;
          }
        }

        v388 = v389 >> 8;
LABEL_382:
        v390 = WORD1(*v51);
        v391 = (v388 | (v388 << 8)) ^ 0xFFFF;
        v392 = *v51 * v391 + 0x8000;
        v393 = v390 * v391 + 0x8000;
        v394 = WORD2(*v51) * v391 + 0x8000;
        v395 = HIWORD(*v51) - ((v391 * HIWORD(*v51) + 0x8000 + ((v391 * HIWORD(*v51) + 0x8000) >> 16)) >> 16);
        v396 = (*v51 - ((v392 + HIWORD(v392)) >> 16)) | ((v390 - ((v393 + HIWORD(v393)) >> 16)) << 16);
        v397 = bswap32(v29[3]) >> 16;
        RGBA64_DMplusDM(v29, (v395 << 48) | ((HIDWORD(*v51) - ((v394 + HIWORD(v394)) >> 16)) << 32) | v396, v397 ^ 0xFFFF, (v397 << 48) | ((bswap32(v29[2]) >> 16) << 32) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), ~v395);
        goto LABEL_383;
      case 11:
        v166 = v4;
        v121 = v39;
        while (1)
        {
          v167 = *v52;
          if (*v52)
          {
            if (!v39)
            {
              goto LABEL_165;
            }

            v168 = *v121 * v167 + ((*v121 * v167) >> 8) + 1;
            if (v168 >= 0x100)
            {
              break;
            }
          }

LABEL_169:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v166)
          {
            goto LABEL_450;
          }
        }

        v167 = v168 >> 8;
LABEL_165:
        v169 = WORD1(*v51);
        v170 = (v167 | (v167 << 8)) ^ 0xFFFF;
        v171 = *v51 * v170 + 0x8000;
        v172 = WORD2(*v51) * v170 + 0x8000;
        v173 = v169 * v170 + 0x8000 + ((v169 * v170 + 0x8000) >> 16);
        v174 = *v51 - ((v171 + HIWORD(v171)) >> 16);
        v175 = HIWORD(*v51) - ((v170 * HIWORD(*v51) + 0x8000 + ((v170 * HIWORD(*v51) + 0x8000) >> 16)) >> 16);
        v176 = (v175 << 48) | ((HIDWORD(*v51) - ((v172 + HIWORD(v172)) >> 16)) << 32);
        v177 = v174 | ((v169 - HIWORD(v173)) << 16);
        v178 = bswap32(v29[3]) >> 16;
        v179 = (bswap32(v29[2]) >> 16) << 32;
        v180 = bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16);
        if (v505)
        {
          v181 = v178;
        }

        else
        {
          v181 = -1;
        }

        RGBA64_DAplusdDA(v29, v179 | (v178 << 48) | v180, v181, v176 | v177, v175);
        goto LABEL_169;
      case 12:
        v188 = v4;
        v121 = v39;
        while (1)
        {
          v189 = *v52;
          if (*v52)
          {
            if (!v39)
            {
              goto LABEL_186;
            }

            v190 = *v121 * v189 + ((*v121 * v189) >> 8) + 1;
            if (v190 >= 0x100)
            {
              break;
            }
          }

LABEL_187:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v188)
          {
            goto LABEL_450;
          }
        }

        v189 = v190 >> 8;
LABEL_186:
        v191 = (v189 | (v189 << 8)) ^ 0xFFFF;
        v192 = *v51 * v191 + 0x8000;
        v193 = vmovn_s64(vshlq_u64(vdupq_n_s64(*v51), v506));
        v194.i32[1] = v193.i32[1];
        v194.i32[0] = v193.u16[0];
        v195 = vmla_s32(0x800000008000, vdup_n_s32(v191), v194);
        v196 = vand_s8(vsub_s32(v193, vshr_n_u32(vsra_n_u32(v195, v195, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v197.i64[0] = v196.u32[0];
        v197.i64[1] = v196.u32[1];
        v198 = vshlq_u64(v197, v507);
        RGBA64_DpluslD(v29, ((bswap32(v29[2]) >> 16) << 32) | ((bswap32(v29[3]) >> 16) << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), vorrq_s8(v198, vdupq_laneq_s64(v198, 1)).u64[0] | ((WORD1(*v51) - ((WORD1(*v51) * v191 + 0x8000 + ((WORD1(*v51) * v191 + 0x8000) >> 16)) >> 16)) << 16) | (*v51 - ((v192 + HIWORD(v192)) >> 16)));
        goto LABEL_187;
      case 13:
        v349 = v4;
        v121 = v39;
        while (1)
        {
          v350 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v351 = *v121 * v350 + ((*v121 * v350) >> 8) + 1;
              if (v351 < 0x100)
              {
                goto LABEL_350;
              }

              v350 = v351 >> 8;
            }

            v352 = *v51;
            v353 = HIWORD(*v51);
            v354 = (v350 | (v350 << 8)) ^ 0xFFFF;
            v355 = v353 - ((v354 * v353 + 0x8000 + ((v354 * v353 + 0x8000) >> 16)) >> 16);
            if (v353 != (v354 * v353 + 0x8000 + ((v354 * v353 + 0x8000) >> 16)) >> 16)
            {
              v356 = WORD2(v352) * v354 + 0x8000 + ((WORD2(v352) * v354 + 0x8000) >> 16);
              v357 = *v51 - ((*v51 * v354 + 0x8000 + ((*v51 * v354 + 0x8000) >> 16)) >> 16);
              v358 = WORD1(v352) - ((WORD1(v352) * v354 + 0x8000 + ((WORD1(v352) * v354 + 0x8000) >> 16)) >> 16);
              v359 = HIDWORD(v352) - HIWORD(v356);
              v360 = __rev16(v29[3]);
              if (v505)
              {
                v361 = v360;
                if (!v29[3])
                {
                  *v29 = bswap32(v357) >> 16;
                  v29[1] = bswap32(v358) >> 16;
                  v29[2] = bswap32(v359) >> 16;
LABEL_349:
                  v29[3] = bswap32(v355) >> 16;
                  goto LABEL_350;
                }
              }

              else
              {
                v361 = 0xFFFF;
              }

              v362 = PDAmultiplyPDA_15236(((bswap32(v29[2]) >> 16) << 32) | (v360 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v361, v357 | (v358 << 16) | (v355 << 48) | (v359 << 32), v355);
              v355 = HIWORD(v362);
              v363 = bswap32(v362);
              *v29 = HIWORD(v363);
              v29[1] = v363;
              v29[2] = bswap32(HIDWORD(v362)) >> 16;
              goto LABEL_349;
            }
          }

LABEL_350:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v349)
          {
            goto LABEL_450;
          }
        }

      case 14:
        v151 = v4;
        v121 = v39;
        while (1)
        {
          v152 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v153 = *v121 * v152 + ((*v121 * v152) >> 8) + 1;
              if (v153 < 0x100)
              {
                goto LABEL_158;
              }

              v152 = v153 >> 8;
            }

            v154 = *v51;
            v155 = HIWORD(*v51);
            v156 = (v152 | (v152 << 8)) ^ 0xFFFF;
            v157 = v155 - ((v156 * v155 + 0x8000 + ((v156 * v155 + 0x8000) >> 16)) >> 16);
            if (v155 != (v156 * v155 + 0x8000 + ((v156 * v155 + 0x8000) >> 16)) >> 16)
            {
              v158 = WORD2(v154) * v156 + 0x8000 + ((WORD2(v154) * v156 + 0x8000) >> 16);
              v159 = *v51 - ((*v51 * v156 + 0x8000 + ((*v51 * v156 + 0x8000) >> 16)) >> 16);
              v160 = WORD1(v154) - ((WORD1(v154) * v156 + 0x8000 + ((WORD1(v154) * v156 + 0x8000) >> 16)) >> 16);
              v161 = HIDWORD(v154) - HIWORD(v158);
              v162 = __rev16(v29[3]);
              if (v505)
              {
                v163 = v162;
                if (!v29[3])
                {
                  *v29 = bswap32(v159) >> 16;
                  v29[1] = bswap32(v160) >> 16;
                  v29[2] = bswap32(v161) >> 16;
LABEL_157:
                  v29[3] = bswap32(v157) >> 16;
                  goto LABEL_158;
                }
              }

              else
              {
                v163 = 0xFFFF;
              }

              v164 = PDAscreenPDA_15237(((bswap32(v29[2]) >> 16) << 32) | (v162 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v163, v159 | (v160 << 16) | (v157 << 48) | (v161 << 32), v157);
              v157 = HIWORD(v164);
              v165 = bswap32(v164);
              *v29 = HIWORD(v165);
              v29[1] = v165;
              v29[2] = bswap32(HIDWORD(v164)) >> 16;
              goto LABEL_157;
            }
          }

LABEL_158:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v151)
          {
            goto LABEL_450;
          }
        }

      case 15:
        v254 = v4;
        v121 = v39;
        while (1)
        {
          v255 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v256 = *v121 * v255 + ((*v121 * v255) >> 8) + 1;
              if (v256 < 0x100)
              {
                goto LABEL_251;
              }

              v255 = v256 >> 8;
            }

            v257 = *v51;
            v258 = HIWORD(*v51);
            v259 = (v255 | (v255 << 8)) ^ 0xFFFF;
            v260 = v258 - ((v259 * v258 + 0x8000 + ((v259 * v258 + 0x8000) >> 16)) >> 16);
            if (v258 != (v259 * v258 + 0x8000 + ((v259 * v258 + 0x8000) >> 16)) >> 16)
            {
              v261 = WORD2(v257) * v259 + 0x8000 + ((WORD2(v257) * v259 + 0x8000) >> 16);
              v262 = *v51 - ((*v51 * v259 + 0x8000 + ((*v51 * v259 + 0x8000) >> 16)) >> 16);
              v263 = WORD1(v257) - ((WORD1(v257) * v259 + 0x8000 + ((WORD1(v257) * v259 + 0x8000) >> 16)) >> 16);
              v264 = HIDWORD(v257) - HIWORD(v261);
              v265 = __rev16(v29[3]);
              if (v505)
              {
                v266 = v265;
                if (!v29[3])
                {
                  *v29 = bswap32(v262) >> 16;
                  v29[1] = bswap32(v263) >> 16;
                  v29[2] = bswap32(v264) >> 16;
LABEL_250:
                  v29[3] = bswap32(v260) >> 16;
                  goto LABEL_251;
                }
              }

              else
              {
                v266 = 0xFFFF;
              }

              v267 = PDAoverlayPDA_15238(((bswap32(v29[2]) >> 16) << 32) | (v265 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v266, v262 | (v263 << 16) | (v260 << 48) | (v264 << 32), v260);
              v260 = HIWORD(v267);
              v268 = bswap32(v267);
              *v29 = HIWORD(v268);
              v29[1] = v268;
              v29[2] = bswap32(HIDWORD(v267)) >> 16;
              goto LABEL_250;
            }
          }

LABEL_251:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v254)
          {
            goto LABEL_450;
          }
        }

      case 16:
        v136 = v4;
        v121 = v39;
        while (1)
        {
          v137 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v138 = *v121 * v137 + ((*v121 * v137) >> 8) + 1;
              if (v138 < 0x100)
              {
                goto LABEL_144;
              }

              v137 = v138 >> 8;
            }

            v139 = *v51;
            v140 = HIWORD(*v51);
            v141 = (v137 | (v137 << 8)) ^ 0xFFFF;
            v142 = v140 - ((v141 * v140 + 0x8000 + ((v141 * v140 + 0x8000) >> 16)) >> 16);
            if (v140 != (v141 * v140 + 0x8000 + ((v141 * v140 + 0x8000) >> 16)) >> 16)
            {
              v143 = WORD2(v139) * v141 + 0x8000 + ((WORD2(v139) * v141 + 0x8000) >> 16);
              v144 = *v51 - ((*v51 * v141 + 0x8000 + ((*v51 * v141 + 0x8000) >> 16)) >> 16);
              v145 = WORD1(v139) - ((WORD1(v139) * v141 + 0x8000 + ((WORD1(v139) * v141 + 0x8000) >> 16)) >> 16);
              v146 = HIDWORD(v139) - HIWORD(v143);
              v147 = __rev16(v29[3]);
              if (v505)
              {
                v148 = v147;
                if (!v29[3])
                {
                  *v29 = bswap32(v144) >> 16;
                  v29[1] = bswap32(v145) >> 16;
                  v29[2] = bswap32(v146) >> 16;
LABEL_143:
                  v29[3] = bswap32(v142) >> 16;
                  goto LABEL_144;
                }
              }

              else
              {
                v148 = 0xFFFF;
              }

              v149 = PDAdarkenPDA_15240(((bswap32(v29[2]) >> 16) << 32) | (v147 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v148, v144 | (v145 << 16) | (v142 << 48) | (v146 << 32), v142);
              v142 = HIWORD(v149);
              v150 = bswap32(v149);
              *v29 = HIWORD(v150);
              v29[1] = v150;
              v29[2] = bswap32(HIDWORD(v149)) >> 16;
              goto LABEL_143;
            }
          }

LABEL_144:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v136)
          {
            goto LABEL_450;
          }
        }

      case 17:
        v294 = v4;
        v121 = v39;
        while (1)
        {
          v295 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v296 = *v121 * v295 + ((*v121 * v295) >> 8) + 1;
              if (v296 < 0x100)
              {
                goto LABEL_300;
              }

              v295 = v296 >> 8;
            }

            v297 = *v51;
            v298 = HIWORD(*v51);
            v299 = (v295 | (v295 << 8)) ^ 0xFFFF;
            v300 = v298 - ((v299 * v298 + 0x8000 + ((v299 * v298 + 0x8000) >> 16)) >> 16);
            if (v298 != (v299 * v298 + 0x8000 + ((v299 * v298 + 0x8000) >> 16)) >> 16)
            {
              v301 = WORD2(v297) * v299 + 0x8000 + ((WORD2(v297) * v299 + 0x8000) >> 16);
              v302 = *v51 - ((*v51 * v299 + 0x8000 + ((*v51 * v299 + 0x8000) >> 16)) >> 16);
              v303 = WORD1(v297) - ((WORD1(v297) * v299 + 0x8000 + ((WORD1(v297) * v299 + 0x8000) >> 16)) >> 16);
              v304 = HIDWORD(v297) - HIWORD(v301);
              v305 = __rev16(v29[3]);
              if (v505)
              {
                v306 = v305;
                if (!v29[3])
                {
                  *v29 = bswap32(v302) >> 16;
                  v29[1] = bswap32(v303) >> 16;
                  v29[2] = bswap32(v304) >> 16;
LABEL_299:
                  v29[3] = bswap32(v300) >> 16;
                  goto LABEL_300;
                }
              }

              else
              {
                v306 = 0xFFFF;
              }

              v307 = PDAlightenPDA_15239(((bswap32(v29[2]) >> 16) << 32) | (v305 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v306, v302 | (v303 << 16) | (v300 << 48) | (v304 << 32), v300);
              v300 = HIWORD(v307);
              v308 = bswap32(v307);
              *v29 = HIWORD(v308);
              v29[1] = v308;
              v29[2] = bswap32(HIDWORD(v307)) >> 16;
              goto LABEL_299;
            }
          }

LABEL_300:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v294)
          {
            goto LABEL_450;
          }
        }

      case 18:
        v372 = v4;
        v121 = v39;
        while (1)
        {
          v373 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v374 = *v121 * v373 + ((*v121 * v373) >> 8) + 1;
              if (v374 < 0x100)
              {
                goto LABEL_375;
              }

              v373 = v374 >> 8;
            }

            v375 = *v51;
            v376 = HIWORD(*v51);
            v377 = (v373 | (v373 << 8)) ^ 0xFFFF;
            v378 = v376 - ((v377 * v376 + 0x8000 + ((v377 * v376 + 0x8000) >> 16)) >> 16);
            if (v376 != (v377 * v376 + 0x8000 + ((v377 * v376 + 0x8000) >> 16)) >> 16)
            {
              v379 = WORD2(v375) * v377 + 0x8000 + ((WORD2(v375) * v377 + 0x8000) >> 16);
              v380 = *v51 - ((*v51 * v377 + 0x8000 + ((*v51 * v377 + 0x8000) >> 16)) >> 16);
              v381 = WORD1(v375) - ((WORD1(v375) * v377 + 0x8000 + ((WORD1(v375) * v377 + 0x8000) >> 16)) >> 16);
              v382 = HIDWORD(v375) - HIWORD(v379);
              v383 = __rev16(v29[3]);
              if (v505)
              {
                v384 = v383;
                if (!v29[3])
                {
                  *v29 = bswap32(v380) >> 16;
                  v29[1] = bswap32(v381) >> 16;
                  v29[2] = bswap32(v382) >> 16;
LABEL_374:
                  v29[3] = bswap32(v378) >> 16;
                  goto LABEL_375;
                }
              }

              else
              {
                v384 = 0xFFFF;
              }

              v385 = PDAcolordodgePDA_15241(((bswap32(v29[2]) >> 16) << 32) | (v383 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v384, v380 | (v381 << 16) | (v378 << 48) | (v382 << 32), v378);
              v378 = HIWORD(v385);
              v386 = bswap32(v385);
              *v29 = HIWORD(v386);
              v29[1] = v386;
              v29[2] = bswap32(HIDWORD(v385)) >> 16;
              goto LABEL_374;
            }
          }

LABEL_375:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v372)
          {
            goto LABEL_450;
          }
        }

      case 19:
        v422 = v4;
        v121 = v39;
        while (1)
        {
          v423 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v424 = *v121 * v423 + ((*v121 * v423) >> 8) + 1;
              if (v424 < 0x100)
              {
                goto LABEL_421;
              }

              v423 = v424 >> 8;
            }

            v425 = *v51;
            v426 = HIWORD(*v51);
            v427 = (v423 | (v423 << 8)) ^ 0xFFFF;
            v428 = v426 - ((v427 * v426 + 0x8000 + ((v427 * v426 + 0x8000) >> 16)) >> 16);
            if (v426 != (v427 * v426 + 0x8000 + ((v427 * v426 + 0x8000) >> 16)) >> 16)
            {
              v429 = WORD2(v425) * v427 + 0x8000 + ((WORD2(v425) * v427 + 0x8000) >> 16);
              v430 = *v51 - ((*v51 * v427 + 0x8000 + ((*v51 * v427 + 0x8000) >> 16)) >> 16);
              v431 = WORD1(v425) - ((WORD1(v425) * v427 + 0x8000 + ((WORD1(v425) * v427 + 0x8000) >> 16)) >> 16);
              v432 = HIDWORD(v425) - HIWORD(v429);
              v433 = __rev16(v29[3]);
              if (v505)
              {
                v434 = v433;
                if (!v29[3])
                {
                  *v29 = bswap32(v430) >> 16;
                  v29[1] = bswap32(v431) >> 16;
                  v29[2] = bswap32(v432) >> 16;
LABEL_420:
                  v29[3] = bswap32(v428) >> 16;
                  goto LABEL_421;
                }
              }

              else
              {
                v434 = 0xFFFF;
              }

              v435 = PDAcolorburnPDA_15242(((bswap32(v29[2]) >> 16) << 32) | (v433 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v434, v430 | (v431 << 16) | (v428 << 48) | (v432 << 32), v428);
              v428 = HIWORD(v435);
              v436 = bswap32(v435);
              *v29 = HIWORD(v436);
              v29[1] = v436;
              v29[2] = bswap32(HIDWORD(v435)) >> 16;
              goto LABEL_420;
            }
          }

LABEL_421:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v422)
          {
            goto LABEL_450;
          }
        }

      case 20:
        v309 = v4;
        v121 = v39;
        while (1)
        {
          v310 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v311 = *v121 * v310 + ((*v121 * v310) >> 8) + 1;
              if (v311 < 0x100)
              {
                goto LABEL_314;
              }

              v310 = v311 >> 8;
            }

            v312 = *v51;
            v313 = HIWORD(*v51);
            v314 = (v310 | (v310 << 8)) ^ 0xFFFF;
            v315 = v313 - ((v314 * v313 + 0x8000 + ((v314 * v313 + 0x8000) >> 16)) >> 16);
            if (v313 != (v314 * v313 + 0x8000 + ((v314 * v313 + 0x8000) >> 16)) >> 16)
            {
              v316 = WORD2(v312) * v314 + 0x8000 + ((WORD2(v312) * v314 + 0x8000) >> 16);
              v317 = *v51 - ((*v51 * v314 + 0x8000 + ((*v51 * v314 + 0x8000) >> 16)) >> 16);
              v318 = WORD1(v312) - ((WORD1(v312) * v314 + 0x8000 + ((WORD1(v312) * v314 + 0x8000) >> 16)) >> 16);
              v319 = HIDWORD(v312) - HIWORD(v316);
              v320 = __rev16(v29[3]);
              if (v505)
              {
                v321 = v320;
                if (!v29[3])
                {
                  *v29 = bswap32(v317) >> 16;
                  v29[1] = bswap32(v318) >> 16;
                  v29[2] = bswap32(v319) >> 16;
LABEL_313:
                  v29[3] = bswap32(v315) >> 16;
                  goto LABEL_314;
                }
              }

              else
              {
                v321 = 0xFFFF;
              }

              v322 = PDAsoftlightPDA_15244(((bswap32(v29[2]) >> 16) << 32) | (v320 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v321, v317 | (v318 << 16) | (v315 << 48) | (v319 << 32), v315);
              v315 = HIWORD(v322);
              v323 = bswap32(v322);
              *v29 = HIWORD(v323);
              v29[1] = v323;
              v29[2] = bswap32(HIDWORD(v322)) >> 16;
              goto LABEL_313;
            }
          }

LABEL_314:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v309)
          {
            goto LABEL_450;
          }
        }

      case 21:
        v334 = v4;
        v121 = v39;
        while (1)
        {
          v335 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v336 = *v121 * v335 + ((*v121 * v335) >> 8) + 1;
              if (v336 < 0x100)
              {
                goto LABEL_336;
              }

              v335 = v336 >> 8;
            }

            v337 = *v51;
            v338 = HIWORD(*v51);
            v339 = (v335 | (v335 << 8)) ^ 0xFFFF;
            v340 = v338 - ((v339 * v338 + 0x8000 + ((v339 * v338 + 0x8000) >> 16)) >> 16);
            if (v338 != (v339 * v338 + 0x8000 + ((v339 * v338 + 0x8000) >> 16)) >> 16)
            {
              v341 = WORD2(v337) * v339 + 0x8000 + ((WORD2(v337) * v339 + 0x8000) >> 16);
              v342 = *v51 - ((*v51 * v339 + 0x8000 + ((*v51 * v339 + 0x8000) >> 16)) >> 16);
              v343 = WORD1(v337) - ((WORD1(v337) * v339 + 0x8000 + ((WORD1(v337) * v339 + 0x8000) >> 16)) >> 16);
              v344 = HIDWORD(v337) - HIWORD(v341);
              v345 = __rev16(v29[3]);
              if (v505)
              {
                v346 = v345;
                if (!v29[3])
                {
                  *v29 = bswap32(v342) >> 16;
                  v29[1] = bswap32(v343) >> 16;
                  v29[2] = bswap32(v344) >> 16;
LABEL_335:
                  v29[3] = bswap32(v340) >> 16;
                  goto LABEL_336;
                }
              }

              else
              {
                v346 = 0xFFFF;
              }

              v347 = PDAhardlightPDA_15243(((bswap32(v29[2]) >> 16) << 32) | (v345 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v346, v342 | (v343 << 16) | (v340 << 48) | (v344 << 32), v340);
              v340 = HIWORD(v347);
              v348 = bswap32(v347);
              *v29 = HIWORD(v348);
              v29[1] = v348;
              v29[2] = bswap32(HIDWORD(v347)) >> 16;
              goto LABEL_335;
            }
          }

LABEL_336:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v334)
          {
            goto LABEL_450;
          }
        }

      case 22:
        v407 = v4;
        v121 = v39;
        while (1)
        {
          v408 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v409 = *v121 * v408 + ((*v121 * v408) >> 8) + 1;
              if (v409 < 0x100)
              {
                goto LABEL_407;
              }

              v408 = v409 >> 8;
            }

            v410 = *v51;
            v411 = HIWORD(*v51);
            v412 = (v408 | (v408 << 8)) ^ 0xFFFF;
            v413 = v411 - ((v412 * v411 + 0x8000 + ((v412 * v411 + 0x8000) >> 16)) >> 16);
            if (v411 != (v412 * v411 + 0x8000 + ((v412 * v411 + 0x8000) >> 16)) >> 16)
            {
              v414 = WORD2(v410) * v412 + 0x8000 + ((WORD2(v410) * v412 + 0x8000) >> 16);
              v415 = *v51 - ((*v51 * v412 + 0x8000 + ((*v51 * v412 + 0x8000) >> 16)) >> 16);
              v416 = WORD1(v410) - ((WORD1(v410) * v412 + 0x8000 + ((WORD1(v410) * v412 + 0x8000) >> 16)) >> 16);
              v417 = HIDWORD(v410) - HIWORD(v414);
              v418 = __rev16(v29[3]);
              if (v505)
              {
                v419 = v418;
                if (!v29[3])
                {
                  *v29 = bswap32(v415) >> 16;
                  v29[1] = bswap32(v416) >> 16;
                  v29[2] = bswap32(v417) >> 16;
LABEL_406:
                  v29[3] = bswap32(v413) >> 16;
                  goto LABEL_407;
                }
              }

              else
              {
                v419 = 0xFFFF;
              }

              v420 = PDAdifferencePDA_15245(((bswap32(v29[2]) >> 16) << 32) | (v418 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v419, v415 | (v416 << 16) | (v413 << 48) | (v417 << 32), v413);
              v413 = HIWORD(v420);
              v421 = bswap32(v420);
              *v29 = HIWORD(v421);
              v29[1] = v421;
              v29[2] = bswap32(HIDWORD(v420)) >> 16;
              goto LABEL_406;
            }
          }

LABEL_407:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v407)
          {
            goto LABEL_450;
          }
        }

      case 23:
        v437 = v4;
        v121 = v39;
        while (1)
        {
          v438 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v439 = *v121 * v438 + ((*v121 * v438) >> 8) + 1;
              if (v439 < 0x100)
              {
                goto LABEL_435;
              }

              v438 = v439 >> 8;
            }

            v440 = *v51;
            v441 = HIWORD(*v51);
            v442 = (v438 | (v438 << 8)) ^ 0xFFFF;
            v443 = v441 - ((v442 * v441 + 0x8000 + ((v442 * v441 + 0x8000) >> 16)) >> 16);
            if (v441 != (v442 * v441 + 0x8000 + ((v442 * v441 + 0x8000) >> 16)) >> 16)
            {
              v444 = WORD2(v440) * v442 + 0x8000 + ((WORD2(v440) * v442 + 0x8000) >> 16);
              v445 = *v51 - ((*v51 * v442 + 0x8000 + ((*v51 * v442 + 0x8000) >> 16)) >> 16);
              v446 = WORD1(v440) - ((WORD1(v440) * v442 + 0x8000 + ((WORD1(v440) * v442 + 0x8000) >> 16)) >> 16);
              v447 = HIDWORD(v440) - HIWORD(v444);
              v448 = __rev16(v29[3]);
              if (v505)
              {
                v449 = v448;
                if (!v29[3])
                {
                  *v29 = bswap32(v445) >> 16;
                  v29[1] = bswap32(v446) >> 16;
                  v29[2] = bswap32(v447) >> 16;
LABEL_434:
                  v29[3] = bswap32(v443) >> 16;
                  goto LABEL_435;
                }
              }

              else
              {
                v449 = 0xFFFF;
              }

              v450 = PDAexclusionPDA_15246(((bswap32(v29[2]) >> 16) << 32) | (v448 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v449, v445 | (v446 << 16) | (v443 << 48) | (v447 << 32), v443);
              v443 = HIWORD(v450);
              v451 = bswap32(v450);
              *v29 = HIWORD(v451);
              v29[1] = v451;
              v29[2] = bswap32(HIDWORD(v450)) >> 16;
              goto LABEL_434;
            }
          }

LABEL_435:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v437)
          {
            goto LABEL_450;
          }
        }

      case 24:
        v225 = v4;
        v121 = v39;
        while (1)
        {
          v226 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v227 = *v121 * v226 + ((*v121 * v226) >> 8) + 1;
              if (v227 < 0x100)
              {
                goto LABEL_223;
              }

              v226 = v227 >> 8;
            }

            v228 = *v51;
            v229 = HIWORD(*v51);
            v230 = (v226 | (v226 << 8)) ^ 0xFFFF;
            v231 = v229 - ((v230 * v229 + 0x8000 + ((v230 * v229 + 0x8000) >> 16)) >> 16);
            if (v229 != (v230 * v229 + 0x8000 + ((v230 * v229 + 0x8000) >> 16)) >> 16)
            {
              v232 = WORD2(v228) * v230 + 0x8000 + ((WORD2(v228) * v230 + 0x8000) >> 16);
              v233 = *v51 - ((*v51 * v230 + 0x8000 + ((*v51 * v230 + 0x8000) >> 16)) >> 16);
              v234 = WORD1(v228) - ((WORD1(v228) * v230 + 0x8000 + ((WORD1(v228) * v230 + 0x8000) >> 16)) >> 16);
              v235 = HIDWORD(v228) - HIWORD(v232);
              v236 = __rev16(v29[3]);
              if (v505)
              {
                v237 = v236;
                if (!v29[3])
                {
                  *v29 = bswap32(v233) >> 16;
                  v29[1] = bswap32(v234) >> 16;
                  v29[2] = bswap32(v235) >> 16;
LABEL_222:
                  v29[3] = bswap32(v231) >> 16;
                  goto LABEL_223;
                }
              }

              else
              {
                v237 = 0xFFFF;
              }

              v238 = PDAhuePDA_15247(((bswap32(v29[2]) >> 16) << 32) | (v236 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v237, v233 | (v234 << 16) | (v231 << 48) | (v235 << 32), v231);
              v231 = HIWORD(v238);
              v239 = bswap32(v238);
              *v29 = HIWORD(v239);
              v29[1] = v239;
              v29[2] = bswap32(HIDWORD(v238)) >> 16;
              goto LABEL_222;
            }
          }

LABEL_223:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v225)
          {
            goto LABEL_450;
          }
        }

      case 25:
        v210 = v4;
        v121 = v39;
        while (1)
        {
          v211 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v212 = *v121 * v211 + ((*v121 * v211) >> 8) + 1;
              if (v212 < 0x100)
              {
                goto LABEL_209;
              }

              v211 = v212 >> 8;
            }

            v213 = *v51;
            v214 = HIWORD(*v51);
            v215 = (v211 | (v211 << 8)) ^ 0xFFFF;
            v216 = v214 - ((v215 * v214 + 0x8000 + ((v215 * v214 + 0x8000) >> 16)) >> 16);
            if (v214 != (v215 * v214 + 0x8000 + ((v215 * v214 + 0x8000) >> 16)) >> 16)
            {
              v217 = WORD2(v213) * v215 + 0x8000 + ((WORD2(v213) * v215 + 0x8000) >> 16);
              v218 = *v51 - ((*v51 * v215 + 0x8000 + ((*v51 * v215 + 0x8000) >> 16)) >> 16);
              v219 = WORD1(v213) - ((WORD1(v213) * v215 + 0x8000 + ((WORD1(v213) * v215 + 0x8000) >> 16)) >> 16);
              v220 = HIDWORD(v213) - HIWORD(v217);
              v221 = __rev16(v29[3]);
              if (v505)
              {
                v222 = v221;
                if (!v29[3])
                {
                  *v29 = bswap32(v218) >> 16;
                  v29[1] = bswap32(v219) >> 16;
                  v29[2] = bswap32(v220) >> 16;
LABEL_208:
                  v29[3] = bswap32(v216) >> 16;
                  goto LABEL_209;
                }
              }

              else
              {
                v222 = 0xFFFF;
              }

              v223 = PDAsaturationPDA_15248(((bswap32(v29[2]) >> 16) << 32) | (v221 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v222, v218 | (v219 << 16) | (v216 << 48) | (v220 << 32), v216);
              v216 = HIWORD(v223);
              v224 = bswap32(v223);
              *v29 = HIWORD(v224);
              v29[1] = v224;
              v29[2] = bswap32(HIDWORD(v223)) >> 16;
              goto LABEL_208;
            }
          }

LABEL_209:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v210)
          {
            goto LABEL_450;
          }
        }

      case 26:
        v452 = v4;
        v121 = v39;
        while (1)
        {
          v453 = *v52;
          if (*v52)
          {
            if (v39)
            {
              v454 = *v121 * v453 + ((*v121 * v453) >> 8) + 1;
              if (v454 < 0x100)
              {
                goto LABEL_449;
              }

              v453 = v454 >> 8;
            }

            v455 = *v51;
            v456 = HIWORD(*v51);
            v457 = (v453 | (v453 << 8)) ^ 0xFFFF;
            v458 = v456 - ((v457 * v456 + 0x8000 + ((v457 * v456 + 0x8000) >> 16)) >> 16);
            if (v456 != (v457 * v456 + 0x8000 + ((v457 * v456 + 0x8000) >> 16)) >> 16)
            {
              v459 = WORD2(v455) * v457 + 0x8000 + ((WORD2(v455) * v457 + 0x8000) >> 16);
              v460 = *v51 - ((*v51 * v457 + 0x8000 + ((*v51 * v457 + 0x8000) >> 16)) >> 16);
              v461 = WORD1(v455) - ((WORD1(v455) * v457 + 0x8000 + ((WORD1(v455) * v457 + 0x8000) >> 16)) >> 16);
              v462 = HIDWORD(v455) - HIWORD(v459);
              v463 = __rev16(v29[3]);
              if (v505)
              {
                v464 = v463;
                if (!v29[3])
                {
                  *v29 = bswap32(v460) >> 16;
                  v29[1] = bswap32(v461) >> 16;
                  v29[2] = bswap32(v462) >> 16;
LABEL_448:
                  v29[3] = bswap32(v458) >> 16;
                  goto LABEL_449;
                }
              }

              else
              {
                v464 = 0xFFFF;
              }

              v465 = PDAluminosityPDA_15249(v460 | (v461 << 16) | (v458 << 48) | (v462 << 32), v458, ((bswap32(v29[2]) >> 16) << 32) | (v463 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v464);
              v458 = HIWORD(v465);
              v466 = bswap32(v465);
              *v29 = HIWORD(v466);
              v29[1] = v466;
              v29[2] = bswap32(HIDWORD(v465)) >> 16;
              goto LABEL_448;
            }
          }

LABEL_449:
          ++v52;
          v51 += 8;
          v121 += v39 != 0;
          v29 += 4;
          if (!--v452)
          {
            goto LABEL_450;
          }
        }

      case 27:
        v120 = v4;
        v121 = v39;
        break;
      default:
LABEL_468:
        v113 = v503;
        v114 = v504;
        goto LABEL_452;
    }

    break;
  }

  while (1)
  {
    v122 = *v52;
    if (*v52)
    {
      if (v39)
      {
        v123 = *v121 * v122 + ((*v121 * v122) >> 8) + 1;
        if (v123 < 0x100)
        {
          goto LABEL_130;
        }

        v122 = v123 >> 8;
      }

      v124 = *v51;
      v125 = HIWORD(*v51);
      v126 = (v122 | (v122 << 8)) ^ 0xFFFF;
      v127 = v125 - ((v126 * v125 + 0x8000 + ((v126 * v125 + 0x8000) >> 16)) >> 16);
      if (v125 != (v126 * v125 + 0x8000 + ((v126 * v125 + 0x8000) >> 16)) >> 16)
      {
        v128 = WORD2(v124) * v126 + 0x8000 + ((WORD2(v124) * v126 + 0x8000) >> 16);
        v129 = *v51 - ((*v51 * v126 + 0x8000 + ((*v51 * v126 + 0x8000) >> 16)) >> 16);
        v130 = WORD1(v124) - ((WORD1(v124) * v126 + 0x8000 + ((WORD1(v124) * v126 + 0x8000) >> 16)) >> 16);
        v131 = HIDWORD(v124) - HIWORD(v128);
        v132 = __rev16(v29[3]);
        if (v505)
        {
          v133 = v132;
          if (!v29[3])
          {
            *v29 = bswap32(v129) >> 16;
            v29[1] = bswap32(v130) >> 16;
            v29[2] = bswap32(v131) >> 16;
LABEL_129:
            v29[3] = bswap32(v127) >> 16;
            goto LABEL_130;
          }
        }

        else
        {
          v133 = 0xFFFF;
        }

        v134 = PDAluminosityPDA_15249(((bswap32(v29[2]) >> 16) << 32) | (v132 << 48) | bswap32(v29[1]) & 0xFFFF0000 | (bswap32(*v29) >> 16), v133, v129 | (v130 << 16) | (v127 << 48) | (v131 << 32), v127);
        v127 = HIWORD(v134);
        v135 = bswap32(v134);
        *v29 = HIWORD(v135);
        v29[1] = v135;
        v29[2] = bswap32(HIDWORD(v134)) >> 16;
        goto LABEL_129;
      }
    }

LABEL_130:
    ++v52;
    v51 += 8;
    v121 += v39 != 0;
    v29 += 4;
    if (!--v120)
    {
LABEL_450:
      v39 = &v121[v494];
      v29 += 4 * v495;
      v40 = v497;
      goto LABEL_451;
    }
  }
}

_WORD *RGBA64_DMplusDM(_WORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = a2 * a3 + a4 * a5;
  v6 = WORD1(a2) * a3 + WORD1(a4) * a5;
  v7 = WORD2(a2) * a3 + WORD2(a4) * a5;
  v8 = HIWORD(a2) * a3 + HIWORD(a4) * a5;
  if (v5 >= 0xFFFE8000)
  {
    v5 = 4294868992;
  }

  if (v6 >= 0xFFFE8000)
  {
    v6 = 4294868992;
  }

  if (v7 >= 0xFFFE8000)
  {
    v7 = 4294868992;
  }

  if (v8 >= 0xFFFE8000)
  {
    v8 = 4294868992;
  }

  *result = bswap32(((v5 + 0x8000) >> 16) + v5 + 0x8000);
  result[1] = bswap32(((v6 + 0x8000) >> 16) + v6 + 0x8000);
  result[2] = bswap32(((v7 + 0x8000) >> 16) + v7 + 0x8000);
  result[3] = bswap32(((v8 + 0x8000) >> 16) + v8 + 0x8000);
  return result;
}

_WORD *RGBA64_DplusDM(_WORD *result, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = HIWORD(a3) * a4 + 0x8000;
  *result = bswap32(a2 + ((((a3 * a4 + 0x8000) >> 16) + a3 * a4 + 0x8000) >> 16)) >> 16;
  result[1] = bswap32(((((WORD1(a3) * a4 + 0x8000) >> 16) + WORD1(a3) * a4 + 0x8000) >> 16) + WORD1(a2)) >> 16;
  result[2] = bswap32(HIDWORD(a2) + ((((WORD2(a3) * a4 + 0x8000) >> 16) + WORD2(a3) * a4 + 0x8000) >> 16)) >> 16;
  result[3] = bswap32(HIWORD(a2) + (((v4 >> 16) + v4) >> 16)) >> 16;
  return result;
}

_WORD *RGBA64_DAplusdDA(_WORD *result, unint64_t a2, unsigned int a3, unint64_t a4, unsigned int a5)
{
  v5 = vshlq_u64(vdupq_n_s64(a2), xmmword_18439CD80);
  v6 = vshlq_u64(vdupq_n_s64(a4), xmmword_18439CD80);
  v7 = a3 - a2;
  if (a3 < a2)
  {
    v7 = 0;
  }

  v8 = a5 - a4;
  if (a5 < a4)
  {
    v8 = 0;
  }

  v9 = v8 + v7;
  v10 = a5 + a3;
  if (v9 >= 0xFFFF)
  {
    v11 = 0xFFFF;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10 - v11;
  v13.i64[0] = 0xFFFFLL;
  v13.i64[1] = 0xFFFFLL;
  v14 = vaddq_s64(vqsubq_u64(vdupq_n_s64(a5), vandq_s8(v6, v13)), vqsubq_u64(vdupq_n_s64(a3), vandq_s8(v5, v13)));
  v15 = v14.i32[2];
  if (v14.i64[1] >= 0xFFFFuLL)
  {
    v15 = 0xFFFF;
  }

  v16 = vdup_n_s32(v10);
  v17.i64[0] = v16.u32[0];
  v17.i64[1] = v16.u32[1];
  v18 = vcgtq_u64(vandq_s8(v17, v13), v14);
  v19 = v14.i32[0];
  if (v14.i64[0] >= 0xFFFFuLL)
  {
    v19 = 0xFFFF;
  }

  v20 = v10 - v15;
  v21 = vmovn_s64(v18);
  v22 = v10 - v19;
  if (v9 >= v10)
  {
    v23 = 0;
  }

  else
  {
    v23 = v12;
  }

  *result = bswap32(v23) >> 16;
  if ((v21.i8[4] & 1) == 0)
  {
    v20 = 0;
  }

  result[1] = bswap32(v20) >> 16;
  if (v21.i8[0])
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  result[2] = bswap32(v24) >> 16;
  result[3] = bswap32(v10) >> 16;
  return result;
}

_WORD *RGBA64_DpluslD(_WORD *result, unint64_t a2, unint64_t a3)
{
  v3 = a3 + a2;
  v4 = WORD1(a3) + WORD1(a2);
  v5 = WORD2(a3) + WORD2(a2);
  v6 = HIWORD(a3) + HIWORD(a2);
  if (v3 >= 0xFFFF)
  {
    LODWORD(v3) = 0xFFFF;
  }

  if (v4 >= 0xFFFF)
  {
    LODWORD(v4) = 0xFFFF;
  }

  if (v5 >= 0xFFFF)
  {
    LODWORD(v5) = 0xFFFF;
  }

  if (v6 >= 0xFFFF)
  {
    LODWORD(v6) = 0xFFFF;
  }

  *result = bswap32(v3) >> 16;
  result[1] = bswap32(v4) >> 16;
  result[2] = bswap32(v5) >> 16;
  result[3] = bswap32(v6) >> 16;
  return result;
}

uint64_t RGBA64_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
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
  if (v18 == 269497224)
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

        RGBA64_mark(a1, v17);
        return 1;
      }
    }

    *&v32 = rgba64_sample_RGBA64;
    goto LABEL_45;
  }

  v19 = SAMPLEINDEX(v18, v10, v11, v12, v13, v14, v15, v16);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 > 0xB)
  {
    if (v19 <= 0x13)
    {
      if ((v19 - 14) >= 4)
      {
        if (v19 == 13 || v19 == 12)
        {
          v21 = *(a2 + 12);
          if (!v21)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_35;
  }

  if (v19 > 6)
  {
    switch(v19)
    {
      case 7:
        v20 = 0;
        LODWORD(v21) = 32;
        break;
      case 9:
        v20 = 0;
        LODWORD(v21) = 40;
        break;
      case 8:
        v20 = 0;
        LODWORD(v21) = 8;
        goto LABEL_36;
      default:
        goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 == 2)
  {
    if (!*(a2 + 12))
    {
      v20 = 0;
      LODWORD(v21) = 16;
      goto LABEL_36;
    }

LABEL_35:
    LODWORD(v21) = 255;
    v20 = 1;
    goto LABEL_36;
  }

  if (v19 != 5)
  {
    if (v19 != 6)
    {
      goto LABEL_35;
    }

LABEL_25:
    v20 = 0;
    LODWORD(v21) = 0;
    goto LABEL_36;
  }

  v20 = 0;
  LODWORD(v21) = 24;
LABEL_36:
  *&v32 = *&RGB16_image_sample[2 * v19 + 2];
  if (!v32)
  {
    if ((HIWORD(*a3) & 0x3Fu) <= 8)
    {
      *&v32 = *&RGB8_image_sample[2 * v19 + 2];
      if (v32)
      {
        v22 = 134755224;
        v23 = 4;
LABEL_43:
        LODWORD(v33) = v23;
        goto LABEL_44;
      }
    }

    *&v32 = *&RGBF_image_sample[2 * v19 + 2];
    if (v32)
    {
      v22 = 538981289;
      v23 = 16;
      goto LABEL_43;
    }

    return 0xFFFFFFFFLL;
  }

  v22 = 269497256;
LABEL_44:
  DWORD2(v32) = v22;
  if ((v20 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v33) & 7) != 3 || a2[2] != 5 && a2[2])
  {
    goto LABEL_45;
  }

  if (v19 <= 0xB)
  {
    HIDWORD(v25) = v21;
    LODWORD(v25) = v21;
    v24 = v25 >> 3;
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_RGB24;
        goto LABEL_86;
      }

      if (v24 == 4)
      {
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_rgb32;
        goto LABEL_86;
      }

      if (v24 != 5)
      {
        goto LABEL_45;
      }

      DWORD2(v32) = *a3;
      v27 = RGBA64_image_mark_rgb32;
    }

    else
    {
      if (!v24)
      {
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_RGB32;
        goto LABEL_86;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          DWORD2(v32) = *a3;
          v26 = RGBA64_image_mark_W8;
LABEL_86:
          v28 = v26;
          v29 = a2;
          v30 = v8;
          v31 = 0;
          goto LABEL_87;
        }

        goto LABEL_45;
      }

      DWORD2(v32) = *a3;
      v27 = RGBA64_image_mark_RGB32;
    }

    v28 = v27;
    v29 = a2;
    v30 = v8;
    v31 = 8;
LABEL_87:
    rgba64_image_mark_image(v29, &v32, v30, v31, v28);
    return 1;
  }

  if (v19 <= 0x13)
  {
    if (v19 <= 14)
    {
      if (v19 == 12)
      {
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_W16;
      }

      else
      {
        DWORD2(v32) = *a3;
        if (v19 == 13)
        {
          v26 = RGBA64_image_mark_w16;
        }

        else
        {
          v26 = RGBA64_image_mark_RGB48;
        }
      }

      goto LABEL_86;
    }

    switch(v19)
    {
      case 15:
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_rgb48;
        goto LABEL_86;
      case 16:
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_RGBA64;
        goto LABEL_86;
      case 17:
        DWORD2(v32) = *a3;
        v26 = RGBA64_image_mark_rgba64;
        goto LABEL_86;
    }
  }

LABEL_45:
  RGBA64_image_mark(a2, &v32, v8, v17);
  return 1;
}

uint64_t RGBA64_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v3;
  v695 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  if (*(v3 + 132))
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v7 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v7 = 0;
  }

  v8 = *v5;
  v9 = *(v5 + 96);
  v10 = *(v5 + 48);
  v11 = *(*(v6 + 7) + 16 * *v5 + 8 * (v9 == 0) + 4 * (v10 == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *(v5 + 4);
  v14 = v13 - 1;
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v5 + 8);
  if (v15 < 1)
  {
    return 0;
  }

  v16 = *(v5 + 136);
  if ((v8 & 0xFF0000) != 0x50000 && v16)
  {
    v17 = *(v5 + 128);
    if ((v17 | 8) == 8)
    {
      if ((*v5 & 0xFF00) == 0x400)
      {
        RGBA64_mark_constmask(v5, v11);
      }

      else if ((v7 & 1) != 0 && ((1 << v11) & 0xFFFFFE) != 0)
      {
        rgba16_template_image_mask_method(*v6, v5, v11);
      }

      else
      {
        RGBA64_mark_pixelmask(v5, v11);
      }
    }

    else
    {
      v33 = *(v5 + 112);
      v34 = *(v5 + 116);
      v35 = (v33 + 15) & 0xFFFFFFF0;
      v36 = v35 * v34;
      if (v36 <= 4096)
      {
        v38 = v694;
      }

      else
      {
        v37 = malloc_type_malloc(v36, 0x97CEE3C3uLL);
        if (!v37)
        {
          return 1;
        }

        v38 = v37;
        v16 = *(v5 + 136);
        v17 = *(v5 + 128);
      }

      CGSConvertBitsToMask(v16, *(v5 + 124), v38, v35, v33, v34, v17);
      v42 = *(v5 + 112);
      v690 = *(v5 + 96);
      v691 = v42;
      v43 = *(v5 + 144);
      v692 = *(v5 + 128);
      v693 = v43;
      v44 = *(v5 + 48);
      v686 = *(v5 + 32);
      v687 = v44;
      v45 = *(v5 + 80);
      v688 = *(v5 + 64);
      v689 = v45;
      v46 = *(v5 + 16);
      *v684 = *v5;
      v685 = v46;
      HIDWORD(v691) = (v33 + 15) & 0xFFFFFFF0;
      *(&v692 + 1) = v38;
      if (BYTE1(v684[0]) << 8 == 1024)
      {
        RGBA64_mark_constmask(v684, v11);
      }

      else
      {
        RGBA64_mark_pixelmask(v684, v11);
      }

      if (v38 != v694)
      {
        v47 = v38;
        goto LABEL_978;
      }
    }

    return 1;
  }

  v650 = v5;
  v661 = *(*(v6 + 7) + 16 * *v5 + 8 * (v9 == 0) + 4 * (v10 == 0));
  v682 = *(v5 + 48);
  if (BYTE1(v8) == 1)
  {
    if ((v7 & 1) != 0 && ((1 << v11) & 0xFFFFFE) != 0)
    {
      rgba16_template_image_mark_method(*v6, v5, v11);
      return 1;
    }

LABEL_24:
    v694[0] = *(v5 + 4);
    v684[0] = v15;
    v26 = *(v5 + 88);
    v27 = *(v5 + 28) >> 3;
    v28 = *(v5 + 40) + 8 * v27 * *(v5 + 16) + 8 * *(v5 + 12);
    v29 = *(v5 + 76) >> 3;
    v648 = *(v5 + 60);
    v649 = *(v5 + 56);
    if ((v8 & 0xFF00) != 0x100)
    {
      LODWORD(v664) = *(v5 + 64);
      v651 = *(v5 + 68);
      v677 = v26 + 8 * v29 * v651;
      v679 = *(v5 + 76) >> 3;
      v39 = v9 != 0;
      if (v16)
      {
        v40 = v13;
        v32 = 1;
        v681 = *(v5 + 88);
        v41 = v681;
LABEL_55:
        shape_enum_clip_alloc(v2, v3, v16, v32, v27, 1, *(v5 + 104), *(v5 + 108), v40, v15);
        v54 = v53;
        if (!v53)
        {
          return 1;
        }

        while (2)
        {
          if (!shape_enum_clip_next(v54, &v683 + 1, &v683, v694, v684))
          {
            v47 = v54;
            goto LABEL_978;
          }

          v663 = v54;
          if (v677)
          {
            v50 = (v28 + 8 * v27 * v683 + 8 * SHIDWORD(v683));
            v55 = v26 + 8 * v679 * ((v683 + *(v5 + 60)) % v651);
            v49 = (v55 + 8 * ((HIDWORD(v683) + *(v5 + 56)) % v664));
            v41 = v55 + 8 * v664;
            v681 = v49;
            v674 = v694[0];
            v56 = v694[0];
            v648 = (v683 + *(v5 + 60)) % v651;
            v649 = (HIDWORD(v683) + *(v5 + 56)) % v664;
          }

          else
          {
            v674 = v694[0];
            v56 = v694[0] * v32;
            v50 = (v28 + 8 * v27 * v683 + 8 * HIDWORD(v683) * v32);
            v49 = (v26 + 8 * v683 * v664 + 8 * HIDWORD(v683) * v32);
            v679 = v664 - v694[0] * v32;
          }

          v672 = v27 - v56;
LABEL_64:
          switch(v11)
          {
            case 0:
              v57 = &v50[-4 * v674 + 4];
              v58 = v672 + v674;
              if (v32 < 0)
              {
                v58 = v672 - v674;
              }

              else
              {
                v57 = v50;
              }

              v59 = (v57 + 8 * ((v58 * (v684[0] - 1)) & (v58 >> 63)));
              if (v58 < 0)
              {
                v58 = -v58;
              }

              CGBlt_fillBytes(8 * v674, v684[0], 0, v59, 8 * v58);
              goto LABEL_668;
            case 1:
              v255 = *(v5 + 1);
              if (v255 == 2)
              {
                if (v674 < 4 || (8 * v664) > 0x40 || (v4.i32[0] = 8 * v664, v457 = vcnt_s8(v4), v457.i16[0] = vaddlv_u8(v457), v457.i32[0] > 1u))
                {
LABEL_675:
                  v458 = v684[0];
                  if (v682 == 0 || v39)
                  {
                    do
                    {
                      v459 = v674;
                      do
                      {
                        *v50 = *v49;
                        v460 = &v49[4 * v32];
                        if (v460 >= v41)
                        {
                          v461 = -v664;
                        }

                        else
                        {
                          v461 = 0;
                        }

                        v49 = &v460[4 * v461];
                        v50 += 4 * v32;
                        --v459;
                      }

                      while (v459);
                      v50 += 4 * v672;
                      v462 = v681;
                      v463 = &v681[4 * v679];
                      if (v463 >= v677)
                      {
                        v464 = -(v679 * v651);
                      }

                      else
                      {
                        v464 = 0;
                      }

                      v465 = &v463[4 * v464];
                      v466 = v41 + 8 * v464 + 8 * v679;
                      if (v677)
                      {
                        v41 = v466;
                        v462 = v465;
                      }

                      v681 = v462;
                      if (v677)
                      {
                        v49 = v465;
                      }

                      else
                      {
                        v49 += 4 * v679;
                      }

                      --v458;
                    }

                    while (v458);
                  }

                  else
                  {
                    do
                    {
                      v467 = v674;
                      do
                      {
                        v468 = v49[2];
                        *v50 = *v49;
                        v50[2] = v468;
                        v50[3] = -1;
                        v469 = &v49[4 * v32];
                        if (v469 >= v41)
                        {
                          v470 = -v664;
                        }

                        else
                        {
                          v470 = 0;
                        }

                        v49 = &v469[4 * v470];
                        v50 += 4 * v32;
                        --v467;
                      }

                      while (v467);
                      v50 += 4 * v672;
                      v471 = v681;
                      v472 = &v681[4 * v679];
                      if (v472 >= v677)
                      {
                        v473 = -(v679 * v651);
                      }

                      else
                      {
                        v473 = 0;
                      }

                      v474 = &v472[4 * v473];
                      v475 = v41 + 8 * v473 + 8 * v679;
                      if (v677)
                      {
                        v41 = v475;
                        v471 = v474;
                      }

                      v681 = v471;
                      if (v677)
                      {
                        v49 = v474;
                      }

                      else
                      {
                        v49 += 4 * v679;
                      }

                      --v458;
                    }

                    while (v458);
                  }

                  goto LABEL_721;
                }

                CGSFillDRAM64(v50, 8 * (v674 + v672), 8 * v674, v684[0], v26, 8 * v679, 8 * v664, v651, 8 * v649, v648);
              }

              else
              {
                if (v255 != 1)
                {
                  goto LABEL_675;
                }

                if (v682 != 0 && !v39)
                {
                  v476 = v684[0];
                  do
                  {
                    v477 = v674;
                    do
                    {
                      v478 = v49[2];
                      *v50 = *v49;
                      v50[2] = v478;
                      v50[3] = -1;
                      v479 = &v49[4 * v32];
                      if (v479 >= v41)
                      {
                        v480 = -v664;
                      }

                      else
                      {
                        v480 = 0;
                      }

                      v49 = &v479[4 * v480];
                      v50 += 4 * v32;
                      --v477;
                    }

                    while (v477);
                    v50 += 4 * v672;
                    v481 = v681;
                    v482 = &v681[4 * v679];
                    if (v482 >= v677)
                    {
                      v483 = -(v679 * v651);
                    }

                    else
                    {
                      v483 = 0;
                    }

                    v484 = &v482[4 * v483];
                    v485 = v41 + 8 * v483 + 8 * v679;
                    if (v677)
                    {
                      v41 = v485;
                      v481 = v484;
                    }

                    v681 = v481;
                    if (v677)
                    {
                      v49 = v484;
                    }

                    else
                    {
                      v49 += 4 * v679;
                    }

                    --v476;
                  }

                  while (v476);
                  goto LABEL_721;
                }

                if ((v32 & 0x80000000) != 0)
                {
                  v256 = v679 - v674;
                  v486 = 8 * v674 - 8;
                  v49 = (v49 - v486);
                  v257 = v672 - v674;
                  v50 = (v50 - v486);
                }

                else
                {
                  v256 = v679 + v674;
                  v257 = v672 + v674;
                }

                v487 = v684[0] - 1;
                v488 = &v49[4 * ((v256 * v487) & (v256 >> 63))];
                if (v256 >= 0)
                {
                  v489 = v256;
                }

                else
                {
                  v489 = -v256;
                }

                if (v257 >= 0)
                {
                  LODWORD(v490) = v257;
                }

                else
                {
                  v490 = -v257;
                }

                v679 = v489;
                CGBlt_copyBytes(8 * v674, v684[0], v488, &v50[4 * ((v257 * v487) & (v257 >> 63))], 8 * v489, 8 * v490);
              }

LABEL_668:
              v54 = v663;
              if (!v663)
              {
                return 1;
              }

              v683 = 0;
              continue;
            case 2:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v200 = v684[0];
              do
              {
                v669 = v200;
                v201 = v674;
                do
                {
                  v202 = bswap32(v49[3]) >> 16;
                  if (v202)
                  {
                    if (v202 == 0xFFFF)
                    {
                      *v50 = *v49;
                    }

                    else
                    {
                      RGBA64_DplusDM(v50, (v202 << 48) | ((bswap32(v49[2]) >> 16) << 32) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v202 ^ 0xFFFF);
                    }
                  }

                  v203 = &v49[4 * v32];
                  if (v203 >= v41)
                  {
                    v204 = -v664;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  v49 = &v203[4 * v204];
                  v50 += 4 * v32;
                  --v201;
                }

                while (v201);
                v50 += 4 * v672;
                v205 = v681;
                v206 = &v681[4 * v679];
                v207 = -(v679 * v651);
                if (v206 < v677)
                {
                  v207 = 0;
                }

                v208 = &v206[4 * v207];
                v209 = v41 + 8 * v207 + 8 * v679;
                if (v677)
                {
                  v41 = v209;
                  v205 = v208;
                }

                v681 = v205;
                if (v677)
                {
                  v49 = v208;
                }

                else
                {
                  v49 += 4 * v679;
                }

                v200 = v669 - 1;
              }

              while (v669 != 1);
              goto LABEL_547;
            case 3:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v225 = v684[0];
              do
              {
                v670 = v225;
                v226 = v674;
                do
                {
                  v227 = bswap32(v50[3]) >> 16;
                  if (v227 == 0xFFFF)
                  {
                    v228 = v49[2];
                    v229 = bswap32(v49[3]) >> 16;
                    if (!v39)
                    {
                      v229 = -1;
                    }

                    *v50 = *v49;
                    v50[2] = v228;
                    v50[3] = bswap32(v229) >> 16;
                  }

                  else if (v227)
                  {
                    v230 = bswap32(v49[3]) >> 16;
                    v231 = ((bswap32(v49[2]) >> 16) << 32) | (v230 << 48);
                    v232 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                    if (v39)
                    {
                      v233 = v230;
                    }

                    else
                    {
                      v233 = -1;
                    }

                    RGBA64_DAM(v50, v231 | v232, v233, v227);
                  }

                  else
                  {
                    *v50 = 0;
                  }

                  v234 = &v49[4 * v32];
                  if (v234 >= v41)
                  {
                    v235 = -v664;
                  }

                  else
                  {
                    v235 = 0;
                  }

                  v49 = &v234[4 * v235];
                  v50 += 4 * v32;
                  --v226;
                }

                while (v226);
                v50 += 4 * v672;
                v236 = v681;
                v237 = &v681[4 * v679];
                v238 = -(v679 * v651);
                if (v237 < v677)
                {
                  v238 = 0;
                }

                v239 = &v237[4 * v238];
                v240 = v41 + 8 * v238 + 8 * v679;
                if (v677)
                {
                  v41 = v240;
                  v236 = v239;
                }

                v681 = v236;
                if (v677)
                {
                  v49 = v239;
                }

                else
                {
                  v49 += 4 * v679;
                }

                v225 = v670 - 1;
              }

              while (v670 != 1);
              goto LABEL_547;
            case 4:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v122 = v684[0];
              do
              {
                v668 = v122;
                v123 = v674;
                do
                {
                  v124 = bswap32(~v50[3]) >> 16;
                  if (v124 == 0xFFFF)
                  {
                    v125 = v49[2];
                    v126 = bswap32(v49[3]) >> 16;
                    if (!v39)
                    {
                      v126 = -1;
                    }

                    *v50 = *v49;
                    v50[2] = v125;
                    v50[3] = bswap32(v126) >> 16;
                  }

                  else if (v124)
                  {
                    v127 = bswap32(v49[3]) >> 16;
                    v128 = ((bswap32(v49[2]) >> 16) << 32) | (v127 << 48);
                    v129 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                    if (v39)
                    {
                      v130 = v127;
                    }

                    else
                    {
                      v130 = -1;
                    }

                    RGBA64_DAM(v50, v128 | v129, v130, v124);
                  }

                  else
                  {
                    *v50 = 0;
                  }

                  v131 = &v49[4 * v32];
                  if (v131 >= v41)
                  {
                    v132 = -v664;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v49 = &v131[4 * v132];
                  v50 += 4 * v32;
                  --v123;
                }

                while (v123);
                v50 += 4 * v672;
                v133 = v681;
                v134 = &v681[4 * v679];
                v135 = -(v679 * v651);
                if (v134 < v677)
                {
                  v135 = 0;
                }

                v136 = &v134[4 * v135];
                v137 = v41 + 8 * v135 + 8 * v679;
                if (v677)
                {
                  v41 = v137;
                  v133 = v136;
                }

                v681 = v133;
                if (v677)
                {
                  v49 = v136;
                }

                else
                {
                  v49 += 4 * v679;
                }

                v122 = v668 - 1;
              }

              while (v668 != 1);
              goto LABEL_547;
            case 5:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v288 = v32;
              v289 = v32;
              v290 = v684[0];
              v291 = 8 * v288;
              do
              {
                v292 = v674;
                do
                {
                  v293 = bswap32(v49[3]) >> 16;
                  v294 = bswap32(v50[3]) >> 16;
                  RGBA64_DMplusDM(v50, ((bswap32(v49[2]) >> 16) << 32) | (v293 << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v294, (v294 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v293 ^ 0xFFFF);
                  v295 = &v49[4 * v289];
                  if (v295 >= v41)
                  {
                    v296 = -v664;
                  }

                  else
                  {
                    v296 = 0;
                  }

                  v49 = &v295[4 * v296];
                  v50 = (v50 + v291);
                  --v292;
                }

                while (v292);
                v297 = -(v679 * v651);
                v50 += 4 * v672;
                v298 = v681;
                v299 = &v681[4 * v679];
                if (v299 < v677)
                {
                  v297 = 0;
                }

                v300 = &v299[4 * v297];
                v301 = v41 + 8 * v297 + 8 * v679;
                if (v677)
                {
                  v41 = v301;
                  v298 = v300;
                }

                v681 = v298;
                if (v677)
                {
                  v49 = v300;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v290;
              }

              while (v290);
              goto LABEL_547;
            case 6:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v332 = v32;
              v333 = v684[0];
              v334 = 8 * v32;
              do
              {
                v671 = v333;
                v335 = v674;
                do
                {
                  v336 = bswap32(v50[3]);
                  if (HIWORD(v336) != 0xFFFF)
                  {
                    if (~HIWORD(v336) == 0xFFFF)
                    {
                      v337 = v49[2];
                      v338 = bswap32(v49[3]) >> 16;
                      if (!v39)
                      {
                        v338 = -1;
                      }

                      *v50 = *v49;
                      v50[2] = v337;
                      v50[3] = bswap32(v338) >> 16;
                    }

                    else
                    {
                      v339 = HIWORD(v336);
                      v340 = ~HIWORD(v336);
                      v341 = (v339 << 48) | ((bswap32(v50[2]) >> 16) << 32);
                      v342 = bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
                      v343 = bswap32(v49[3]) >> 16;
                      v344 = ((bswap32(v49[2]) >> 16) << 32) | (v343 << 48);
                      v345 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                      if (v39)
                      {
                        v346 = v343;
                      }

                      else
                      {
                        v346 = -1;
                      }

                      RGBA64_DplusDAM(v50, v341 | v342, v344 | v345, v346, v340);
                    }
                  }

                  v347 = &v49[4 * v332];
                  if (v347 >= v41)
                  {
                    v348 = -v664;
                  }

                  else
                  {
                    v348 = 0;
                  }

                  v49 = &v347[4 * v348];
                  v50 = (v50 + v334);
                  --v335;
                }

                while (v335);
                v50 += 4 * v672;
                v349 = v681;
                v350 = &v681[4 * v679];
                v351 = -(v679 * v651);
                if (v350 < v677)
                {
                  v351 = 0;
                }

                v352 = &v350[4 * v351];
                v353 = v41 + 8 * v351 + 8 * v679;
                if (v677)
                {
                  v41 = v353;
                  v349 = v352;
                }

                v681 = v349;
                if (v677)
                {
                  v49 = v352;
                }

                else
                {
                  v49 += 4 * v679;
                }

                v333 = v671 - 1;
              }

              while (v671 != 1);
              goto LABEL_547;
            case 7:
              v241 = v684[0];
              do
              {
                v242 = v674;
                do
                {
                  v243 = bswap32(v49[3]) >> 16;
                  if (v243 != 0xFFFF)
                  {
                    if (v243)
                    {
                      v244 = bswap32(v50[1] | (*v50 << 16));
                      v245.i32[0] = v244;
                      v245.i32[1] = vshr_n_u32(vdup_n_s32(v244), 0x10uLL).i32[1];
                      v245.i64[1] = __PAIR64__(bswap32(v50[3]) >> 16, bswap32(v50[2]) >> 16);
                      v246.i64[0] = 0x800000008000;
                      v246.i64[1] = 0x800000008000;
                      v247 = vmlaq_s32(v246, v245, vmovl_u16(vdup_n_s16(~v243)));
                      v245.i32[0] = v244;
                      *v50 = vrev16_s8(vmovn_s32(vsubq_s32(v245, vshrq_n_u32(vsraq_n_u32(v247, v247, 0x10uLL), 0x10uLL))));
                    }

                    else
                    {
                      *v50 = 0;
                    }
                  }

                  v248 = &v49[4 * v32];
                  if (v248 >= v41)
                  {
                    v249 = -v664;
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v49 = &v248[4 * v249];
                  v50 += 4 * v32;
                  --v242;
                }

                while (v242);
                v50 += 4 * v672;
                v250 = v681;
                v251 = &v681[4 * v679];
                if (v251 >= v677)
                {
                  v252 = -(v679 * v651);
                }

                else
                {
                  v252 = 0;
                }

                v253 = &v251[4 * v252];
                v254 = v41 + 8 * v252 + 8 * v679;
                if (v677)
                {
                  v41 = v254;
                  v250 = v253;
                }

                v681 = v250;
                if (v677)
                {
                  v49 = v253;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v241;
              }

              while (v241);
              goto LABEL_721;
            case 8:
              v383 = v684[0];
              do
              {
                v384 = v674;
                do
                {
                  v385 = bswap32(~v49[3]) >> 16;
                  if (v385 != 0xFFFF)
                  {
                    if (v385)
                    {
                      v386 = bswap32(v50[1] | (*v50 << 16));
                      v387.i32[0] = v386;
                      v387.i32[1] = vshr_n_u32(vdup_n_s32(v386), 0x10uLL).i32[1];
                      v387.i64[1] = __PAIR64__(bswap32(v50[3]) >> 16, bswap32(v50[2]) >> 16);
                      v388.i64[0] = 0x800000008000;
                      v388.i64[1] = 0x800000008000;
                      v389 = vmlaq_s32(v388, v387, vmovl_u16(vdup_n_s16(~v385)));
                      v387.i32[0] = v386;
                      *v50 = vrev16_s8(vmovn_s32(vsubq_s32(v387, vshrq_n_u32(vsraq_n_u32(v389, v389, 0x10uLL), 0x10uLL))));
                    }

                    else
                    {
                      *v50 = 0;
                    }
                  }

                  v390 = &v49[4 * v32];
                  if (v390 >= v41)
                  {
                    v391 = -v664;
                  }

                  else
                  {
                    v391 = 0;
                  }

                  v49 = &v390[4 * v391];
                  v50 += 4 * v32;
                  --v384;
                }

                while (v384);
                v50 += 4 * v672;
                v392 = v681;
                v393 = &v681[4 * v679];
                if (v393 >= v677)
                {
                  v394 = -(v679 * v651);
                }

                else
                {
                  v394 = 0;
                }

                v395 = &v393[4 * v394];
                v396 = v41 + 8 * v394 + 8 * v679;
                if (v677)
                {
                  v41 = v396;
                  v392 = v395;
                }

                v681 = v392;
                if (v677)
                {
                  v49 = v395;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v383;
              }

              while (v383);
LABEL_721:
              v684[0] = 0;
              goto LABEL_668;
            case 9:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v156 = v32;
              v157 = v32;
              v158 = v684[0];
              v159 = 8 * v156;
              do
              {
                v160 = v674;
                do
                {
                  v161 = bswap32(v49[3]) >> 16;
                  v162 = bswap32(v50[3]) >> 16;
                  RGBA64_DMplusDM(v50, ((bswap32(v49[2]) >> 16) << 32) | (v161 << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v162 ^ 0xFFFF, (v162 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v161);
                  v163 = &v49[4 * v157];
                  if (v163 >= v41)
                  {
                    v164 = -v664;
                  }

                  else
                  {
                    v164 = 0;
                  }

                  v49 = &v163[4 * v164];
                  v50 = (v50 + v159);
                  --v160;
                }

                while (v160);
                v165 = -(v679 * v651);
                v50 += 4 * v672;
                v166 = v681;
                v167 = &v681[4 * v679];
                if (v167 < v677)
                {
                  v165 = 0;
                }

                v168 = &v167[4 * v165];
                v169 = v41 + 8 * v165 + 8 * v679;
                if (v677)
                {
                  v41 = v169;
                  v166 = v168;
                }

                v681 = v166;
                if (v677)
                {
                  v49 = v168;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v158;
              }

              while (v158);
              goto LABEL_547;
            case 10:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v369 = v32;
              v370 = v32;
              v371 = v684[0];
              v372 = 8 * v369;
              do
              {
                v373 = v674;
                do
                {
                  v374 = bswap32(v49[3]) >> 16;
                  v375 = bswap32(v50[3]) >> 16;
                  RGBA64_DMplusDM(v50, ((bswap32(v49[2]) >> 16) << 32) | (v374 << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v375 ^ 0xFFFF, (v375 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v374 ^ 0xFFFF);
                  v376 = &v49[4 * v370];
                  if (v376 >= v41)
                  {
                    v377 = -v664;
                  }

                  else
                  {
                    v377 = 0;
                  }

                  v49 = &v376[4 * v377];
                  v50 = (v50 + v372);
                  --v373;
                }

                while (v373);
                v378 = -(v679 * v651);
                v50 += 4 * v672;
                v379 = v681;
                v380 = &v681[4 * v679];
                if (v380 < v677)
                {
                  v378 = 0;
                }

                v381 = &v380[4 * v378];
                v382 = v41 + 8 * v378 + 8 * v679;
                if (v677)
                {
                  v41 = v382;
                  v379 = v381;
                }

                v681 = v379;
                if (v677)
                {
                  v49 = v381;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v371;
              }

              while (v371);
              goto LABEL_547;
            case 11:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v105 = v684[0];
              do
              {
                v667 = v105;
                v106 = v674;
                do
                {
                  v107 = bswap32(v50[3]) >> 16;
                  v108 = ((bswap32(v50[2]) >> 16) << 32) | (v107 << 48);
                  v109 = bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
                  if (v682)
                  {
                    v110 = v107;
                  }

                  else
                  {
                    v110 = -1;
                  }

                  v111 = bswap32(v49[3]) >> 16;
                  v112 = ((bswap32(v49[2]) >> 16) << 32) | (v111 << 48);
                  v113 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                  if (v39)
                  {
                    v114 = v111;
                  }

                  else
                  {
                    v114 = -1;
                  }

                  RGBA64_DAplusdDA(v50, v108 | v109, v110, v112 | v113, v114);
                  v115 = &v49[4 * v32];
                  if (v115 >= v41)
                  {
                    v116 = -v664;
                  }

                  else
                  {
                    v116 = 0;
                  }

                  v49 = &v115[4 * v116];
                  v50 += 4 * v32;
                  --v106;
                }

                while (v106);
                v50 += 4 * v672;
                v117 = v681;
                v118 = &v681[4 * v679];
                v119 = -(v679 * v651);
                if (v118 < v677)
                {
                  v119 = 0;
                }

                v120 = &v118[4 * v119];
                v121 = v41 + 8 * v119 + 8 * v679;
                if (v677)
                {
                  v41 = v121;
                  v117 = v120;
                }

                v681 = v117;
                if (v677)
                {
                  v49 = v120;
                }

                else
                {
                  v49 += 4 * v679;
                }

                v105 = v667 - 1;
              }

              while (v667 != 1);
              goto LABEL_547;
            case 12:
              v655 = v26;
              v658 = v27;
              v660 = v28;
              v653 = v32;
              v138 = v32;
              v139 = v32;
              v140 = v684[0];
              v141 = 8 * v138;
              do
              {
                v142 = v674;
                do
                {
                  v143 = ((bswap32(v50[2]) >> 16) << 32) | ((bswap32(v50[3]) >> 16) << 48);
                  v144 = bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16);
                  v145 = bswap32(v49[3]) >> 16;
                  v146 = ((bswap32(v49[2]) >> 16) << 32) | (v145 << 48);
                  v147 = bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16);
                  if (v39)
                  {
                    v148 = v145;
                  }

                  else
                  {
                    v148 = -1;
                  }

                  RGBA64_DpluslDA(v50, v143 | v144, v146 | v147, v148);
                  v149 = &v49[4 * v139];
                  if (v149 >= v41)
                  {
                    v150 = -v664;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v49 = &v149[4 * v150];
                  v50 = (v50 + v141);
                  --v142;
                }

                while (v142);
                v151 = -(v679 * v651);
                v50 += 4 * v672;
                v152 = v681;
                v153 = &v681[4 * v679];
                if (v153 < v677)
                {
                  v151 = 0;
                }

                v154 = &v153[4 * v151];
                v155 = v41 + 8 * v151 + 8 * v679;
                if (v677)
                {
                  v41 = v155;
                  v152 = v154;
                }

                v681 = v152;
                if (v677)
                {
                  v49 = v154;
                }

                else
                {
                  v49 += 4 * v679;
                }

                --v140;
              }

              while (v140);
LABEL_547:
              v684[0] = 0;
              v5 = v650;
              v28 = v660;
              v11 = v661;
              v26 = v655;
              v27 = v658;
              v32 = v653;
              goto LABEL_668;
            case 13:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v317 = v684[0];
              while (1)
              {
                v318 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_471;
                    }

                    LODWORD(v319) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v319) = 0xFFFF;
                  }

                  v320 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v321 = 0xFFFF;
LABEL_469:
                    v323 = PDAmultiplyPDA_15236((v320 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v321, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v319);
                    v319 = HIWORD(v323);
                    v324 = bswap32(v323);
                    *v50 = HIWORD(v324);
                    v50[1] = v324;
                    v50[2] = bswap32(HIDWORD(v323)) >> 16;
                    goto LABEL_470;
                  }

                  v321 = v320;
                  if (v50[3])
                  {
                    goto LABEL_469;
                  }

                  v322 = v49[2];
                  *v50 = *v49;
                  v50[2] = v322;
LABEL_470:
                  v50[3] = __rev16(v319);
LABEL_471:
                  v325 = &v49[4 * v32];
                  if (v325 >= v41)
                  {
                    v326 = -v664;
                  }

                  else
                  {
                    v326 = 0;
                  }

                  v49 = &v325[4 * v326];
                  v50 += 4 * v32;
                  --v318;
                }

                while (v318);
                v327 = -(v679 * v651);
                v50 += 4 * v672;
                v328 = v681;
                v329 = &v681[4 * v679];
                if (v329 < v677)
                {
                  v327 = 0;
                }

                v330 = &v329[4 * v327];
                v331 = v41 + 8 * v327 + 8 * v679;
                if (v677)
                {
                  v41 = v331;
                  v328 = v330;
                }

                v681 = v328;
                if (v677)
                {
                  v49 = v330;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v317)
                {
                  goto LABEL_667;
                }
              }

            case 14:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v90 = v684[0];
              while (1)
              {
                v91 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_133;
                    }

                    LODWORD(v92) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v92) = 0xFFFF;
                  }

                  v93 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v94 = 0xFFFF;
LABEL_131:
                    v96 = PDAscreenPDA_15237((v93 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v94, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v92);
                    v92 = HIWORD(v96);
                    v97 = bswap32(v96);
                    *v50 = HIWORD(v97);
                    v50[1] = v97;
                    v50[2] = bswap32(HIDWORD(v96)) >> 16;
                    goto LABEL_132;
                  }

                  v94 = v93;
                  if (v50[3])
                  {
                    goto LABEL_131;
                  }

                  v95 = v49[2];
                  *v50 = *v49;
                  v50[2] = v95;
LABEL_132:
                  v50[3] = __rev16(v92);
LABEL_133:
                  v98 = &v49[4 * v32];
                  if (v98 >= v41)
                  {
                    v99 = -v664;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v49 = &v98[4 * v99];
                  v50 += 4 * v32;
                  --v91;
                }

                while (v91);
                v100 = -(v679 * v651);
                v50 += 4 * v672;
                v101 = v681;
                v102 = &v681[4 * v679];
                if (v102 < v677)
                {
                  v100 = 0;
                }

                v103 = &v102[4 * v100];
                v104 = v41 + 8 * v100 + 8 * v679;
                if (v677)
                {
                  v41 = v104;
                  v101 = v103;
                }

                v681 = v101;
                if (v677)
                {
                  v49 = v103;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v90)
                {
                  goto LABEL_667;
                }
              }

            case 15:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v210 = v684[0];
              while (1)
              {
                v211 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_306;
                    }

                    LODWORD(v212) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v212) = 0xFFFF;
                  }

                  v213 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v214 = 0xFFFF;
LABEL_304:
                    v216 = PDAoverlayPDA_15238((v213 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v214, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v212);
                    v212 = HIWORD(v216);
                    v217 = bswap32(v216);
                    *v50 = HIWORD(v217);
                    v50[1] = v217;
                    v50[2] = bswap32(HIDWORD(v216)) >> 16;
                    goto LABEL_305;
                  }

                  v214 = v213;
                  if (v50[3])
                  {
                    goto LABEL_304;
                  }

                  v215 = v49[2];
                  *v50 = *v49;
                  v50[2] = v215;
LABEL_305:
                  v50[3] = __rev16(v212);
LABEL_306:
                  v218 = &v49[4 * v32];
                  if (v218 >= v41)
                  {
                    v219 = -v664;
                  }

                  else
                  {
                    v219 = 0;
                  }

                  v49 = &v218[4 * v219];
                  v50 += 4 * v32;
                  --v211;
                }

                while (v211);
                v220 = -(v679 * v651);
                v50 += 4 * v672;
                v221 = v681;
                v222 = &v681[4 * v679];
                if (v222 < v677)
                {
                  v220 = 0;
                }

                v223 = &v222[4 * v220];
                v224 = v41 + 8 * v220 + 8 * v679;
                if (v677)
                {
                  v41 = v224;
                  v221 = v223;
                }

                v681 = v221;
                if (v677)
                {
                  v49 = v223;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v210)
                {
                  goto LABEL_667;
                }
              }

            case 16:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v75 = v684[0];
              while (1)
              {
                v76 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_108;
                    }

                    LODWORD(v77) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v77) = 0xFFFF;
                  }

                  v78 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v79 = 0xFFFF;
LABEL_106:
                    v81 = PDAdarkenPDA_15240((v78 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v79, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v77);
                    v77 = HIWORD(v81);
                    v82 = bswap32(v81);
                    *v50 = HIWORD(v82);
                    v50[1] = v82;
                    v50[2] = bswap32(HIDWORD(v81)) >> 16;
                    goto LABEL_107;
                  }

                  v79 = v78;
                  if (v50[3])
                  {
                    goto LABEL_106;
                  }

                  v80 = v49[2];
                  *v50 = *v49;
                  v50[2] = v80;
LABEL_107:
                  v50[3] = __rev16(v77);
LABEL_108:
                  v83 = &v49[4 * v32];
                  if (v83 >= v41)
                  {
                    v84 = -v664;
                  }

                  else
                  {
                    v84 = 0;
                  }

                  v49 = &v83[4 * v84];
                  v50 += 4 * v32;
                  --v76;
                }

                while (v76);
                v85 = -(v679 * v651);
                v50 += 4 * v672;
                v86 = v681;
                v87 = &v681[4 * v679];
                if (v87 < v677)
                {
                  v85 = 0;
                }

                v88 = &v87[4 * v85];
                v89 = v41 + 8 * v85 + 8 * v679;
                if (v677)
                {
                  v41 = v89;
                  v86 = v88;
                }

                v681 = v86;
                if (v677)
                {
                  v49 = v88;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v75)
                {
                  goto LABEL_667;
                }
              }

            case 17:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v258 = v684[0];
              while (1)
              {
                v259 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_381;
                    }

                    LODWORD(v260) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v260) = 0xFFFF;
                  }

                  v261 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v262 = 0xFFFF;
LABEL_379:
                    v264 = PDAlightenPDA_15239((v261 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v262, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v260);
                    v260 = HIWORD(v264);
                    v265 = bswap32(v264);
                    *v50 = HIWORD(v265);
                    v50[1] = v265;
                    v50[2] = bswap32(HIDWORD(v264)) >> 16;
                    goto LABEL_380;
                  }

                  v262 = v261;
                  if (v50[3])
                  {
                    goto LABEL_379;
                  }

                  v263 = v49[2];
                  *v50 = *v49;
                  v50[2] = v263;
LABEL_380:
                  v50[3] = __rev16(v260);
LABEL_381:
                  v266 = &v49[4 * v32];
                  if (v266 >= v41)
                  {
                    v267 = -v664;
                  }

                  else
                  {
                    v267 = 0;
                  }

                  v49 = &v266[4 * v267];
                  v50 += 4 * v32;
                  --v259;
                }

                while (v259);
                v268 = -(v679 * v651);
                v50 += 4 * v672;
                v269 = v681;
                v270 = &v681[4 * v679];
                if (v270 < v677)
                {
                  v268 = 0;
                }

                v271 = &v270[4 * v268];
                v272 = v41 + 8 * v268 + 8 * v679;
                if (v677)
                {
                  v41 = v272;
                  v269 = v271;
                }

                v681 = v269;
                if (v677)
                {
                  v49 = v271;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v258)
                {
                  goto LABEL_667;
                }
              }

            case 18:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v354 = v684[0];
              while (1)
              {
                v355 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_520;
                    }

                    LODWORD(v356) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v356) = 0xFFFF;
                  }

                  v357 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v358 = 0xFFFF;
LABEL_518:
                    v360 = PDAcolordodgePDA_15241((v357 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v358, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v356);
                    v356 = HIWORD(v360);
                    v361 = bswap32(v360);
                    *v50 = HIWORD(v361);
                    v50[1] = v361;
                    v50[2] = bswap32(HIDWORD(v360)) >> 16;
                    goto LABEL_519;
                  }

                  v358 = v357;
                  if (v50[3])
                  {
                    goto LABEL_518;
                  }

                  v359 = v49[2];
                  *v50 = *v49;
                  v50[2] = v359;
LABEL_519:
                  v50[3] = __rev16(v356);
LABEL_520:
                  v362 = &v49[4 * v32];
                  if (v362 >= v41)
                  {
                    v363 = -v664;
                  }

                  else
                  {
                    v363 = 0;
                  }

                  v49 = &v362[4 * v363];
                  v50 += 4 * v32;
                  --v355;
                }

                while (v355);
                v364 = -(v679 * v651);
                v50 += 4 * v672;
                v365 = v681;
                v366 = &v681[4 * v679];
                if (v366 < v677)
                {
                  v364 = 0;
                }

                v367 = &v366[4 * v364];
                v368 = v41 + 8 * v364 + 8 * v679;
                if (v677)
                {
                  v41 = v368;
                  v365 = v367;
                }

                v681 = v365;
                if (v677)
                {
                  v49 = v367;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v354)
                {
                  goto LABEL_667;
                }
              }

            case 19:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v412 = v684[0];
              while (1)
              {
                v413 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_605;
                    }

                    LODWORD(v414) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v414) = 0xFFFF;
                  }

                  v415 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v416 = 0xFFFF;
LABEL_603:
                    v418 = PDAcolorburnPDA_15242((v415 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v416, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v414);
                    v414 = HIWORD(v418);
                    v419 = bswap32(v418);
                    *v50 = HIWORD(v419);
                    v50[1] = v419;
                    v50[2] = bswap32(HIDWORD(v418)) >> 16;
                    goto LABEL_604;
                  }

                  v416 = v415;
                  if (v50[3])
                  {
                    goto LABEL_603;
                  }

                  v417 = v49[2];
                  *v50 = *v49;
                  v50[2] = v417;
LABEL_604:
                  v50[3] = __rev16(v414);
LABEL_605:
                  v420 = &v49[4 * v32];
                  if (v420 >= v41)
                  {
                    v421 = -v664;
                  }

                  else
                  {
                    v421 = 0;
                  }

                  v49 = &v420[4 * v421];
                  v50 += 4 * v32;
                  --v413;
                }

                while (v413);
                v422 = -(v679 * v651);
                v50 += 4 * v672;
                v423 = v681;
                v424 = &v681[4 * v679];
                if (v424 < v677)
                {
                  v422 = 0;
                }

                v425 = &v424[4 * v422];
                v426 = v41 + 8 * v422 + 8 * v679;
                if (v677)
                {
                  v41 = v426;
                  v423 = v425;
                }

                v681 = v423;
                if (v677)
                {
                  v49 = v425;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v412)
                {
                  goto LABEL_667;
                }
              }

            case 20:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v273 = v684[0];
              while (1)
              {
                v274 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_406;
                    }

                    LODWORD(v275) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v275) = 0xFFFF;
                  }

                  v276 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v277 = 0xFFFF;
LABEL_404:
                    v279 = PDAsoftlightPDA_15244((v276 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v277, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v275);
                    v275 = HIWORD(v279);
                    v280 = bswap32(v279);
                    *v50 = HIWORD(v280);
                    v50[1] = v280;
                    v50[2] = bswap32(HIDWORD(v279)) >> 16;
                    goto LABEL_405;
                  }

                  v277 = v276;
                  if (v50[3])
                  {
                    goto LABEL_404;
                  }

                  v278 = v49[2];
                  *v50 = *v49;
                  v50[2] = v278;
LABEL_405:
                  v50[3] = __rev16(v275);
LABEL_406:
                  v281 = &v49[4 * v32];
                  if (v281 >= v41)
                  {
                    v282 = -v664;
                  }

                  else
                  {
                    v282 = 0;
                  }

                  v49 = &v281[4 * v282];
                  v50 += 4 * v32;
                  --v274;
                }

                while (v274);
                v283 = -(v679 * v651);
                v50 += 4 * v672;
                v284 = v681;
                v285 = &v681[4 * v679];
                if (v285 < v677)
                {
                  v283 = 0;
                }

                v286 = &v285[4 * v283];
                v287 = v41 + 8 * v283 + 8 * v679;
                if (v677)
                {
                  v41 = v287;
                  v284 = v286;
                }

                v681 = v284;
                if (v677)
                {
                  v49 = v286;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v273)
                {
                  goto LABEL_667;
                }
              }

            case 21:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v302 = v684[0];
              while (1)
              {
                v303 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_446;
                    }

                    LODWORD(v304) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v304) = 0xFFFF;
                  }

                  v305 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v306 = 0xFFFF;
LABEL_444:
                    v308 = PDAhardlightPDA_15243((v305 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v306, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v304);
                    v304 = HIWORD(v308);
                    v309 = bswap32(v308);
                    *v50 = HIWORD(v309);
                    v50[1] = v309;
                    v50[2] = bswap32(HIDWORD(v308)) >> 16;
                    goto LABEL_445;
                  }

                  v306 = v305;
                  if (v50[3])
                  {
                    goto LABEL_444;
                  }

                  v307 = v49[2];
                  *v50 = *v49;
                  v50[2] = v307;
LABEL_445:
                  v50[3] = __rev16(v304);
LABEL_446:
                  v310 = &v49[4 * v32];
                  if (v310 >= v41)
                  {
                    v311 = -v664;
                  }

                  else
                  {
                    v311 = 0;
                  }

                  v49 = &v310[4 * v311];
                  v50 += 4 * v32;
                  --v303;
                }

                while (v303);
                v312 = -(v679 * v651);
                v50 += 4 * v672;
                v313 = v681;
                v314 = &v681[4 * v679];
                if (v314 < v677)
                {
                  v312 = 0;
                }

                v315 = &v314[4 * v312];
                v316 = v41 + 8 * v312 + 8 * v679;
                if (v677)
                {
                  v41 = v316;
                  v313 = v315;
                }

                v681 = v313;
                if (v677)
                {
                  v49 = v315;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v302)
                {
                  goto LABEL_667;
                }
              }

            case 22:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v397 = v684[0];
              while (1)
              {
                v398 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_580;
                    }

                    LODWORD(v399) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v399) = 0xFFFF;
                  }

                  v400 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v401 = 0xFFFF;
LABEL_578:
                    v403 = PDAdifferencePDA_15245((v400 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v401, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v399);
                    v399 = HIWORD(v403);
                    v404 = bswap32(v403);
                    *v50 = HIWORD(v404);
                    v50[1] = v404;
                    v50[2] = bswap32(HIDWORD(v403)) >> 16;
                    goto LABEL_579;
                  }

                  v401 = v400;
                  if (v50[3])
                  {
                    goto LABEL_578;
                  }

                  v402 = v49[2];
                  *v50 = *v49;
                  v50[2] = v402;
LABEL_579:
                  v50[3] = __rev16(v399);
LABEL_580:
                  v405 = &v49[4 * v32];
                  if (v405 >= v41)
                  {
                    v406 = -v664;
                  }

                  else
                  {
                    v406 = 0;
                  }

                  v49 = &v405[4 * v406];
                  v50 += 4 * v32;
                  --v398;
                }

                while (v398);
                v407 = -(v679 * v651);
                v50 += 4 * v672;
                v408 = v681;
                v409 = &v681[4 * v679];
                if (v409 < v677)
                {
                  v407 = 0;
                }

                v410 = &v409[4 * v407];
                v411 = v41 + 8 * v407 + 8 * v679;
                if (v677)
                {
                  v41 = v411;
                  v408 = v410;
                }

                v681 = v408;
                if (v677)
                {
                  v49 = v410;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v397)
                {
                  goto LABEL_667;
                }
              }

            case 23:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v427 = v684[0];
              while (1)
              {
                v428 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_630;
                    }

                    LODWORD(v429) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v429) = 0xFFFF;
                  }

                  v430 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v431 = 0xFFFF;
LABEL_628:
                    v433 = PDAexclusionPDA_15246((v430 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v431, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v429);
                    v429 = HIWORD(v433);
                    v434 = bswap32(v433);
                    *v50 = HIWORD(v434);
                    v50[1] = v434;
                    v50[2] = bswap32(HIDWORD(v433)) >> 16;
                    goto LABEL_629;
                  }

                  v431 = v430;
                  if (v50[3])
                  {
                    goto LABEL_628;
                  }

                  v432 = v49[2];
                  *v50 = *v49;
                  v50[2] = v432;
LABEL_629:
                  v50[3] = __rev16(v429);
LABEL_630:
                  v435 = &v49[4 * v32];
                  if (v435 >= v41)
                  {
                    v436 = -v664;
                  }

                  else
                  {
                    v436 = 0;
                  }

                  v49 = &v435[4 * v436];
                  v50 += 4 * v32;
                  --v428;
                }

                while (v428);
                v437 = -(v679 * v651);
                v50 += 4 * v672;
                v438 = v681;
                v439 = &v681[4 * v679];
                if (v439 < v677)
                {
                  v437 = 0;
                }

                v440 = &v439[4 * v437];
                v441 = v41 + 8 * v437 + 8 * v679;
                if (v677)
                {
                  v41 = v441;
                  v438 = v440;
                }

                v681 = v438;
                if (v677)
                {
                  v49 = v440;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v427)
                {
                  goto LABEL_667;
                }
              }

            case 24:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v185 = v684[0];
              while (1)
              {
                v186 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_262;
                    }

                    LODWORD(v187) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v187) = 0xFFFF;
                  }

                  v188 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v189 = 0xFFFF;
LABEL_260:
                    v191 = PDAhuePDA_15247((v188 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v189, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v187);
                    v187 = HIWORD(v191);
                    v192 = bswap32(v191);
                    *v50 = HIWORD(v192);
                    v50[1] = v192;
                    v50[2] = bswap32(HIDWORD(v191)) >> 16;
                    goto LABEL_261;
                  }

                  v189 = v188;
                  if (v50[3])
                  {
                    goto LABEL_260;
                  }

                  v190 = v49[2];
                  *v50 = *v49;
                  v50[2] = v190;
LABEL_261:
                  v50[3] = __rev16(v187);
LABEL_262:
                  v193 = &v49[4 * v32];
                  if (v193 >= v41)
                  {
                    v194 = -v664;
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v49 = &v193[4 * v194];
                  v50 += 4 * v32;
                  --v186;
                }

                while (v186);
                v195 = -(v679 * v651);
                v50 += 4 * v672;
                v196 = v681;
                v197 = &v681[4 * v679];
                if (v197 < v677)
                {
                  v195 = 0;
                }

                v198 = &v197[4 * v195];
                v199 = v41 + 8 * v195 + 8 * v679;
                if (v677)
                {
                  v41 = v199;
                  v196 = v198;
                }

                v681 = v196;
                if (v677)
                {
                  v49 = v198;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v185)
                {
                  goto LABEL_667;
                }
              }

            case 25:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v170 = v684[0];
              while (1)
              {
                v171 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_237;
                    }

                    LODWORD(v172) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v172) = 0xFFFF;
                  }

                  v173 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v174 = 0xFFFF;
LABEL_235:
                    v176 = PDAsaturationPDA_15248((v173 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v174, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v172);
                    v172 = HIWORD(v176);
                    v177 = bswap32(v176);
                    *v50 = HIWORD(v177);
                    v50[1] = v177;
                    v50[2] = bswap32(HIDWORD(v176)) >> 16;
                    goto LABEL_236;
                  }

                  v174 = v173;
                  if (v50[3])
                  {
                    goto LABEL_235;
                  }

                  v175 = v49[2];
                  *v50 = *v49;
                  v50[2] = v175;
LABEL_236:
                  v50[3] = __rev16(v172);
LABEL_237:
                  v178 = &v49[4 * v32];
                  if (v178 >= v41)
                  {
                    v179 = -v664;
                  }

                  else
                  {
                    v179 = 0;
                  }

                  v49 = &v178[4 * v179];
                  v50 += 4 * v32;
                  --v171;
                }

                while (v171);
                v180 = -(v679 * v651);
                v50 += 4 * v672;
                v181 = v681;
                v182 = &v681[4 * v679];
                if (v182 < v677)
                {
                  v180 = 0;
                }

                v183 = &v182[4 * v180];
                v184 = v41 + 8 * v180 + 8 * v679;
                if (v677)
                {
                  v41 = v184;
                  v181 = v183;
                }

                v681 = v181;
                if (v677)
                {
                  v49 = v183;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v170)
                {
                  goto LABEL_667;
                }
              }

            case 26:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v442 = v684[0];
              while (1)
              {
                v443 = v674;
                do
                {
                  if (v39)
                  {
                    if (!v49[3])
                    {
                      goto LABEL_655;
                    }

                    LODWORD(v444) = __rev16(v49[3]);
                  }

                  else
                  {
                    LODWORD(v444) = 0xFFFF;
                  }

                  v445 = __rev16(v50[3]);
                  if (!v682)
                  {
                    v446 = 0xFFFF;
LABEL_653:
                    v448 = PDAluminosityPDA_15249(((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v444, (v445 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v446);
                    v444 = HIWORD(v448);
                    v449 = bswap32(v448);
                    *v50 = HIWORD(v449);
                    v50[1] = v449;
                    v50[2] = bswap32(HIDWORD(v448)) >> 16;
                    goto LABEL_654;
                  }

                  v446 = v445;
                  if (v50[3])
                  {
                    goto LABEL_653;
                  }

                  v447 = v49[2];
                  *v50 = *v49;
                  v50[2] = v447;
LABEL_654:
                  v50[3] = __rev16(v444);
LABEL_655:
                  v450 = &v49[4 * v32];
                  if (v450 >= v41)
                  {
                    v451 = -v664;
                  }

                  else
                  {
                    v451 = 0;
                  }

                  v49 = &v450[4 * v451];
                  v50 += 4 * v32;
                  --v443;
                }

                while (v443);
                v452 = -(v679 * v651);
                v50 += 4 * v672;
                v453 = v681;
                v454 = &v681[4 * v679];
                if (v454 < v677)
                {
                  v452 = 0;
                }

                v455 = &v454[4 * v452];
                v456 = v41 + 8 * v452 + 8 * v679;
                if (v677)
                {
                  v41 = v456;
                  v453 = v455;
                }

                v681 = v453;
                if (v677)
                {
                  v49 = v455;
                }

                else
                {
                  v49 += 4 * v679;
                }

                if (!--v442)
                {
                  goto LABEL_667;
                }
              }

            case 27:
              v654 = v26;
              v657 = v27;
              v659 = v28;
              v652 = v32;
              v60 = v684[0];
              break;
            default:
              goto LABEL_668;
          }

          break;
        }

LABEL_72:
        v61 = v674;
        while (v39)
        {
          if (v49[3])
          {
            LODWORD(v62) = __rev16(v49[3]);
            goto LABEL_77;
          }

LABEL_83:
          v68 = &v49[4 * v32];
          if (v68 >= v41)
          {
            v69 = -v664;
          }

          else
          {
            v69 = 0;
          }

          v49 = &v68[4 * v69];
          v50 += 4 * v32;
          if (!--v61)
          {
            v70 = -(v679 * v651);
            v50 += 4 * v672;
            v71 = v681;
            v72 = &v681[4 * v679];
            if (v72 < v677)
            {
              v70 = 0;
            }

            v73 = &v72[4 * v70];
            v74 = v41 + 8 * v70 + 8 * v679;
            if (v677)
            {
              v41 = v74;
              v71 = v73;
            }

            v681 = v71;
            if (v677)
            {
              v49 = v73;
            }

            else
            {
              v49 += 4 * v679;
            }

            if (!--v60)
            {
LABEL_667:
              v684[0] = 0;
              v28 = v659;
              v11 = v661;
              v26 = v654;
              v27 = v657;
              v32 = v652;
              v5 = v650;
              goto LABEL_668;
            }

            goto LABEL_72;
          }
        }

        LODWORD(v62) = 0xFFFF;
LABEL_77:
        v63 = __rev16(v50[3]);
        if (v682)
        {
          v64 = v63;
          if (!v50[3])
          {
            v65 = v49[2];
            *v50 = *v49;
            v50[2] = v65;
LABEL_82:
            v50[3] = __rev16(v62);
            goto LABEL_83;
          }
        }

        else
        {
          v64 = 0xFFFF;
        }

        v66 = PDAluminosityPDA_15249((v63 << 48) | ((bswap32(v50[2]) >> 16) << 32) | bswap32(v50[1]) & 0xFFFF0000 | (bswap32(*v50) >> 16), v64, ((bswap32(v49[2]) >> 16) << 32) | ((bswap32(v49[3]) >> 16) << 48) | bswap32(v49[1]) & 0xFFFF0000 | (bswap32(*v49) >> 16), v62);
        v62 = HIWORD(v66);
        v67 = bswap32(v66);
        *v50 = HIWORD(v67);
        v50[1] = v67;
        v50[2] = bswap32(HIDWORD(v66)) >> 16;
        goto LABEL_82;
      }

      v672 = v27 - v13;
      v674 = v13;
      if (v26)
      {
        v663 = 0;
        v48 = v26 + 8 * v29 * (v648 % v651);
        v49 = (v48 + 8 * (v649 % v664));
        v41 = v48 + 8 * v664;
        v32 = 1;
        v681 = v49;
        v50 = (*(v5 + 40) + 8 * v27 * *(v5 + 16) + 8 * *(v5 + 12));
        v648 %= v651;
        v649 %= v664;
        goto LABEL_64;
      }

      v51 = v13;
      v41 = 0;
      v32 = 1;
      v52 = *(v5 + 76) >> 3;
LABEL_58:
      v663 = 0;
      v681 = 0;
      v677 = 0;
      v679 = v52 - v51;
      v49 = v26;
      v50 = v28;
      goto LABEL_64;
    }

    v26 += 8 * v29 * *(v5 + 60) + 8 * *(v5 + 56);
    if (v29 == v27)
    {
      v30 = (v28 - v26) >> 3;
      if (v30 < 1)
      {
        goto LABEL_29;
      }

      if (v30 > v13)
      {
        v31 = v27 * (v15 - 1);
        if (v28 <= v26 + 8 * v31 + 8 * v13 - 8)
        {
          v28 += 8 * v31;
          v27 = -v27;
          v32 = 1;
          v26 += 8 * v31;
          goto LABEL_52;
        }

LABEL_29:
        v32 = 1;
LABEL_52:
        v664 = v27;
        goto LABEL_53;
      }

      v28 += 8 * v14;
      v32 = 0xFFFFFFFFLL;
      v664 = *(v5 + 28) >> 3;
      v26 += 8 * v14;
    }

    else
    {
      v32 = 1;
      v664 = *(v5 + 76) >> 3;
    }

LABEL_53:
    v39 = v9 != 0;
    if (v16)
    {
      v40 = v13;
      v651 = 0;
      v677 = 0;
      v41 = -1;
      v679 = v664;
      v681 = 0;
      goto LABEL_55;
    }

    v651 = 0;
    v51 = v32 * v13;
    v672 = v27 - v51;
    v674 = v13;
    v41 = -1;
    v52 = v664;
    goto LABEL_58;
  }

  if (BYTE1(v8) != 4)
  {
    goto LABEL_24;
  }

  v694[0] = *(v5 + 4);
  v684[0] = v15;
  v18 = *(v5 + 88);
  v680 = *v18;
  v678 = v18[1];
  v676 = v18[2];
  v19 = v18[3];
  v20 = __rev16(v19);
  v21 = (__rev16(v676) << 32) | (v20 << 48);
  v22 = (__PAIR64__(__rev16(v678), bswap32(v680)) >> 16);
  v23 = ~(bswap32(v19) >> 16);
  v656 = *(v5 + 28);
  v666 = v656 >> 3;
  v24 = (*(v5 + 40) + 8 * (v656 >> 3) * *(v5 + 16) + 8 * *(v5 + 12));
  v662 = v24;
  if (v16)
  {
    shape_enum_clip_alloc(v2, v3, v16, 1, 1, 1, *(v5 + 104), *(v5 + 108), v13, v15);
    v13 = v25;
    if (v25)
    {
      goto LABEL_975;
    }

    return 1;
  }

  v665 = 0;
  while (2)
  {
    v673 = v666 - v13;
    v675 = v13;
    switch(v11)
    {
      case 0:
        v491 = v684[0];
        v492 = 8 * v13;
        goto LABEL_981;
      case 1:
        v570 = *(v5 + 88);
        if (v570)
        {
          CGSFillDRAM64(v24, v656 & 0xFFFFFFF8, 8 * v13, v684[0], v570, 8, 8, 1, 0, 0);
        }

        else
        {
          v492 = 8 * v13;
          v491 = v684[0];
LABEL_981:
          CGBlt_fillBytes(v492, v491, 0, v24, v656 & 0xFFFFFFF8);
        }

        goto LABEL_973;
      case 2:
        v543 = v684[0];
        do
        {
          if (v13 < 4)
          {
            v547 = v13;
          }

          else
          {
            v544 = (v13 >> 2) + 1;
            do
            {
              RGBA64_DplusDM(v24, v21 | v22, ((bswap32(v24[2]) >> 16) << 32) | ((bswap32(v24[3]) >> 16) << 48) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v23);
              RGBA64_DplusDM(v24 + 4, v21 | v22, ((bswap32(v24[6]) >> 16) << 32) | ((bswap32(v24[7]) >> 16) << 48) | bswap32(v24[5]) & 0xFFFF0000 | (bswap32(v24[4]) >> 16), v23);
              RGBA64_DplusDM(v24 + 8, v21 | v22, ((bswap32(v24[10]) >> 16) << 32) | ((bswap32(v24[11]) >> 16) << 48) | bswap32(v24[9]) & 0xFFFF0000 | (bswap32(v24[8]) >> 16), v23);
              v546 = v24[12];
              v545 = v24 + 12;
              RGBA64_DplusDM(v545, v21 | v22, ((bswap32(v545[2]) >> 16) << 32) | ((bswap32(v545[3]) >> 16) << 48) | bswap32(v545[1]) & 0xFFFF0000 | (bswap32(v546) >> 16), v23);
              v24 = v545 + 4;
              --v544;
            }

            while (v544 > 1);
            v547 = v13 & 3;
          }

          if (v547 >= 1)
          {
            v548 = v547 + 1;
            do
            {
              RGBA64_DplusDM(v24, v21 | v22, ((bswap32(v24[2]) >> 16) << 32) | ((bswap32(v24[3]) >> 16) << 48) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v23);
              v24 += 4;
              --v548;
            }

            while (v548 > 1);
          }

          v24 += 4 * v673;
          --v543;
          v11 = v661;
        }

        while (v543);
        v684[0] = 0;
        v5 = v650;
        goto LABEL_973;
      case 3:
        v556.i32[0] = v22;
        v556.i32[1] = vshr_n_u32(vdup_n_s32(v22), 0x10uLL).i32[1];
        v556.i32[2] = WORD2(v21);
        v556.i32[3] = v20;
        v557 = v556;
        v557.i32[0] = v22;
        v557.i32[2] = HIDWORD(v21);
        v558 = v684[0];
        do
        {
          v559 = v13;
          do
          {
            v560 = bswap32(v24[3]) >> 16;
            if (v560 == 0xFFFF)
            {
              *v24 = v680;
              v24[1] = v678;
              v24[2] = v676;
              v24[3] = v19;
            }

            else if (v560)
            {
              v561.i64[0] = 0x800000008000;
              v561.i64[1] = 0x800000008000;
              v562 = vmlaq_s32(v561, v556, vmovl_u16(vdup_n_s16(~v560)));
              *v24 = vrev16_s8(vmovn_s32(vsubq_s32(v557, vshrq_n_u32(vsraq_n_u32(v562, v562, 0x10uLL), 0x10uLL))));
            }

            else
            {
              *v24 = 0;
            }

            v24 += 4;
            --v559;
          }

          while (v559);
          v24 += 4 * v673;
          --v558;
        }

        while (v558);
        goto LABEL_927;
      case 4:
        v519.i32[0] = v22;
        v519.i32[1] = vshr_n_u32(vdup_n_s32(v22), 0x10uLL).i32[1];
        v519.i32[2] = WORD2(v21);
        v519.i32[3] = v20;
        v520 = v519;
        v520.i32[0] = v22;
        v520.i32[2] = HIDWORD(v21);
        v521 = v684[0];
        do
        {
          v522 = v13;
          do
          {
            v523 = bswap32(~v24[3]) >> 16;
            if (v523 == 0xFFFF)
            {
              *v24 = v680;
              v24[1] = v678;
              v24[2] = v676;
              v24[3] = v19;
            }

            else if (v523)
            {
              v524.i64[0] = 0x800000008000;
              v524.i64[1] = 0x800000008000;
              v525 = vmlaq_s32(v524, v519, vmovl_u16(vdup_n_s16(~v523)));
              *v24 = vrev16_s8(vmovn_s32(vsubq_s32(v520, vshrq_n_u32(vsraq_n_u32(v525, v525, 0x10uLL), 0x10uLL))));
            }

            else
            {
              *v24 = 0;
            }

            v24 += 4;
            --v522;
          }

          while (v522);
          v24 += 4 * v673;
          --v521;
        }

        while (v521);
        goto LABEL_927;
      case 5:
        v585 = v684[0];
        do
        {
          do
          {
            v586 = bswap32(v24[3]) >> 16;
            RGBA64_DMplusDM(v24, v21 | v22, v586, (v586 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v23);
            v24 += 4;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
          LODWORD(v13) = v675;
          v24 += 4 * v673;
          --v585;
        }

        while (v585);
        goto LABEL_922;
      case 6:
        v601 = v684[0];
        do
        {
          v602 = v13;
          do
          {
            v603 = bswap32(v24[3]);
            if (HIWORD(v603) != 0xFFFF)
            {
              if (~HIWORD(v603) == 0xFFFF)
              {
                *v24 = v680;
                v24[1] = v678;
                v24[2] = v676;
                v24[3] = v19;
              }

              else
              {
                RGBA64_DplusDM(v24, (HIWORD(v603) << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v21 | v22, ~HIWORD(v603));
              }
            }

            v24 += 4;
            --v602;
          }

          while (v602);
          v24 += 4 * v673;
          --v601;
        }

        while (v601);
        v684[0] = 0;
        v5 = v650;
        v11 = v661;
        v10 = v682;
        goto LABEL_973;
      case 7:
        v563 = vdupq_n_s32(v23);
        v564 = v684[0];
        do
        {
          v565 = v13;
          do
          {
            v566 = bswap32(v24[1] | (*v24 << 16));
            v567.i32[0] = v566;
            v567.i32[1] = vshr_n_u32(vdup_n_s32(v566), 0x10uLL).i32[1];
            v567.i64[1] = __PAIR64__(bswap32(v24[3]) >> 16, bswap32(v24[2]) >> 16);
            v568.i64[0] = 0x800000008000;
            v568.i64[1] = 0x800000008000;
            v569 = vmlaq_s32(v568, v567, v563);
            v567.i32[0] = v566;
            *v24 = vrev16_s8(vmovn_s32(vsubq_s32(v567, vshrq_n_u32(vsraq_n_u32(v569, v569, 0x10uLL), 0x10uLL))));
            v24 += 4;
            --v565;
          }

          while (v565);
          v24 += 4 * v673;
          --v564;
        }

        while (v564);
        goto LABEL_927;
      case 8:
        v613 = vdupq_n_s32(v20);
        v614 = v684[0];
        do
        {
          v615 = v13;
          do
          {
            v616 = bswap32(v24[1] | (*v24 << 16));
            v617.i32[0] = v616;
            v617.i32[1] = vshr_n_u32(vdup_n_s32(v616), 0x10uLL).i32[1];
            v617.i64[1] = __PAIR64__(bswap32(v24[3]) >> 16, bswap32(v24[2]) >> 16);
            v618.i64[0] = 0x800000008000;
            v618.i64[1] = 0x800000008000;
            v619 = vmlaq_s32(v618, v617, v613);
            v617.i32[0] = v616;
            *v24 = vrev16_s8(vmovn_s32(vsubq_s32(v617, vshrq_n_u32(vsraq_n_u32(v619, v619, 0x10uLL), 0x10uLL))));
            v24 += 4;
            --v615;
          }

          while (v615);
          v24 += 4 * v673;
          --v614;
        }

        while (v614);
LABEL_927:
        v684[0] = 0;
        goto LABEL_973;
      case 9:
        v527 = v684[0];
        do
        {
          do
          {
            v528 = bswap32(v24[3]) >> 16;
            RGBA64_DMplusDM(v24, v21 | v22, v528 ^ 0xFFFF, (v528 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v20);
            v24 += 4;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
          LODWORD(v13) = v675;
          v24 += 4 * v673;
          --v527;
        }

        while (v527);
        goto LABEL_922;
      case 10:
        v611 = v684[0];
        do
        {
          do
          {
            v612 = bswap32(v24[3]) >> 16;
            RGBA64_DMplusDM(v24, v21 | v22, v612 ^ 0xFFFF, (v612 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v23);
            v24 += 4;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
          LODWORD(v13) = v675;
          v24 += 4 * v673;
          --v611;
        }

        while (v611);
        goto LABEL_922;
      case 11:
        v514 = v684[0];
        while (1)
        {
          v515 = bswap32(v24[3]) >> 16;
          v516 = ((bswap32(v24[2]) >> 16) << 32) | (v515 << 48);
          v517 = bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16);
          if (v10)
          {
            v518 = v515;
          }

          else
          {
            v518 = -1;
          }

          RGBA64_DAplusdDA(v24, v516 | v517, v518, v21 | v22, v20);
          v24 += 4;
          LODWORD(v13) = v13 - 1;
          if (!v13)
          {
            LODWORD(v13) = v675;
            v24 += 4 * v673;
            if (!--v514)
            {
              break;
            }
          }
        }

        goto LABEL_922;
      case 12:
        v526 = v684[0];
        do
        {
          do
          {
            RGBA64_DpluslD(v24, ((bswap32(v24[2]) >> 16) << 32) | ((bswap32(v24[3]) >> 16) << 48) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v21 | v22);
            v24 += 4;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
          LODWORD(v13) = v675;
          v24 += 4 * v673;
          --v526;
        }

        while (v526);
LABEL_922:
        v684[0] = 0;
        goto LABEL_972;
      case 13:
        if (!v19)
        {
          goto LABEL_973;
        }

        v594 = v684[0];
        while (1)
        {
          v595 = v13;
          do
          {
            v596 = __rev16(v24[3]);
            if (v10)
            {
              v597 = v596;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v598 = v19;
                v24[2] = v676;
                goto LABEL_896;
              }
            }

            else
            {
              v597 = 0xFFFF;
            }

            v599 = PDAmultiplyPDA_15236((v596 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v597, v21 | v22, v20);
            v600 = bswap32(v599);
            *v24 = HIWORD(v600);
            v24[1] = v600;
            v24[2] = bswap32(HIDWORD(v599)) >> 16;
            v598 = __rev16(HIWORD(v599));
LABEL_896:
            v24[3] = v598;
            v24 += 4;
            --v595;
          }

          while (v595);
          v24 += 4 * v673;
          if (!--v594)
          {
            goto LABEL_971;
          }
        }

      case 14:
        if (!v19)
        {
          goto LABEL_973;
        }

        v507 = v684[0];
        while (1)
        {
          v508 = v13;
          do
          {
            v509 = __rev16(v24[3]);
            if (v10)
            {
              v510 = v509;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v511 = v19;
                v24[2] = v676;
                goto LABEL_762;
              }
            }

            else
            {
              v510 = 0xFFFF;
            }

            v512 = PDAscreenPDA_15237((v509 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v510, v21 | v22, v20);
            v513 = bswap32(v512);
            *v24 = HIWORD(v513);
            v24[1] = v513;
            v24[2] = bswap32(HIDWORD(v512)) >> 16;
            v511 = __rev16(HIWORD(v512));
LABEL_762:
            v24[3] = v511;
            v24 += 4;
            --v508;
          }

          while (v508);
          v24 += 4 * v673;
          if (!--v507)
          {
            goto LABEL_971;
          }
        }

      case 15:
        if (!v19)
        {
          goto LABEL_973;
        }

        v549 = v684[0];
        while (1)
        {
          v550 = v13;
          do
          {
            v551 = __rev16(v24[3]);
            if (v10)
            {
              v552 = v551;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v553 = v19;
                v24[2] = v676;
                goto LABEL_831;
              }
            }

            else
            {
              v552 = 0xFFFF;
            }

            v554 = PDAoverlayPDA_15238((v551 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v552, v21 | v22, v20);
            v555 = bswap32(v554);
            *v24 = HIWORD(v555);
            v24[1] = v555;
            v24[2] = bswap32(HIDWORD(v554)) >> 16;
            v553 = __rev16(HIWORD(v554));
LABEL_831:
            v24[3] = v553;
            v24 += 4;
            --v550;
          }

          while (v550);
          v24 += 4 * v673;
          if (!--v549)
          {
            goto LABEL_971;
          }
        }

      case 16:
        if (!v19)
        {
          goto LABEL_973;
        }

        v500 = v684[0];
        while (1)
        {
          v501 = v13;
          do
          {
            v502 = __rev16(v24[3]);
            if (v10)
            {
              v503 = v502;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v504 = v19;
                v24[2] = v676;
                goto LABEL_751;
              }
            }

            else
            {
              v503 = 0xFFFF;
            }

            v505 = PDAdarkenPDA_15240((v502 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v503, v21 | v22, v20);
            v506 = bswap32(v505);
            *v24 = HIWORD(v506);
            v24[1] = v506;
            v24[2] = bswap32(HIDWORD(v505)) >> 16;
            v504 = __rev16(HIWORD(v505));
LABEL_751:
            v24[3] = v504;
            v24 += 4;
            --v501;
          }

          while (v501);
          v24 += 4 * v673;
          if (!--v500)
          {
            goto LABEL_971;
          }
        }

      case 17:
        if (!v19)
        {
          goto LABEL_973;
        }

        v571 = v684[0];
        while (1)
        {
          v572 = v13;
          do
          {
            v573 = __rev16(v24[3]);
            if (v10)
            {
              v574 = v573;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v575 = v19;
                v24[2] = v676;
                goto LABEL_859;
              }
            }

            else
            {
              v574 = 0xFFFF;
            }

            v576 = PDAlightenPDA_15239((v573 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v574, v21 | v22, v20);
            v577 = bswap32(v576);
            *v24 = HIWORD(v577);
            v24[1] = v577;
            v24[2] = bswap32(HIDWORD(v576)) >> 16;
            v575 = __rev16(HIWORD(v576));
LABEL_859:
            v24[3] = v575;
            v24 += 4;
            --v572;
          }

          while (v572);
          v24 += 4 * v673;
          if (!--v571)
          {
            goto LABEL_971;
          }
        }

      case 18:
        if (!v19)
        {
          goto LABEL_973;
        }

        v604 = v684[0];
        while (1)
        {
          v605 = v13;
          do
          {
            v606 = __rev16(v24[3]);
            if (v10)
            {
              v607 = v606;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v608 = v19;
                v24[2] = v676;
                goto LABEL_916;
              }
            }

            else
            {
              v607 = 0xFFFF;
            }

            v609 = PDAcolordodgePDA_15241((v606 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v607, v21 | v22, v20);
            v610 = bswap32(v609);
            *v24 = HIWORD(v610);
            v24[1] = v610;
            v24[2] = bswap32(HIDWORD(v609)) >> 16;
            v608 = __rev16(HIWORD(v609));
LABEL_916:
            v24[3] = v608;
            v24 += 4;
            --v605;
          }

          while (v605);
          v24 += 4 * v673;
          if (!--v604)
          {
            goto LABEL_971;
          }
        }

      case 19:
        if (!v19)
        {
          goto LABEL_973;
        }

        v627 = v684[0];
        while (1)
        {
          v628 = v13;
          do
          {
            v629 = __rev16(v24[3]);
            if (v10)
            {
              v630 = v629;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v631 = v19;
                v24[2] = v676;
                goto LABEL_947;
              }
            }

            else
            {
              v630 = 0xFFFF;
            }

            v632 = PDAcolorburnPDA_15242((v629 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v630, v21 | v22, v20);
            v633 = bswap32(v632);
            *v24 = HIWORD(v633);
            v24[1] = v633;
            v24[2] = bswap32(HIDWORD(v632)) >> 16;
            v631 = __rev16(HIWORD(v632));
LABEL_947:
            v24[3] = v631;
            v24 += 4;
            --v628;
          }

          while (v628);
          v24 += 4 * v673;
          if (!--v627)
          {
            goto LABEL_971;
          }
        }

      case 20:
        if (!v19)
        {
          goto LABEL_973;
        }

        v578 = v684[0];
        while (1)
        {
          v579 = v13;
          do
          {
            v580 = __rev16(v24[3]);
            if (v10)
            {
              v581 = v580;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v582 = v19;
                v24[2] = v676;
                goto LABEL_870;
              }
            }

            else
            {
              v581 = 0xFFFF;
            }

            v583 = PDAsoftlightPDA_15244((v580 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v581, v21 | v22, v20);
            v584 = bswap32(v583);
            *v24 = HIWORD(v584);
            v24[1] = v584;
            v24[2] = bswap32(HIDWORD(v583)) >> 16;
            v582 = __rev16(HIWORD(v583));
LABEL_870:
            v24[3] = v582;
            v24 += 4;
            --v579;
          }

          while (v579);
          v24 += 4 * v673;
          if (!--v578)
          {
            goto LABEL_971;
          }
        }

      case 21:
        if (!v19)
        {
          goto LABEL_973;
        }

        v587 = v684[0];
        while (1)
        {
          v588 = v13;
          do
          {
            v589 = __rev16(v24[3]);
            if (v10)
            {
              v590 = v589;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v591 = v19;
                v24[2] = v676;
                goto LABEL_885;
              }
            }

            else
            {
              v590 = 0xFFFF;
            }

            v592 = PDAhardlightPDA_15243((v589 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v590, v21 | v22, v20);
            v593 = bswap32(v592);
            *v24 = HIWORD(v593);
            v24[1] = v593;
            v24[2] = bswap32(HIDWORD(v592)) >> 16;
            v591 = __rev16(HIWORD(v592));
LABEL_885:
            v24[3] = v591;
            v24 += 4;
            --v588;
          }

          while (v588);
          v24 += 4 * v673;
          if (!--v587)
          {
            goto LABEL_971;
          }
        }

      case 22:
        if (!v19)
        {
          goto LABEL_973;
        }

        v620 = v684[0];
        while (1)
        {
          v621 = v13;
          do
          {
            v622 = __rev16(v24[3]);
            if (v10)
            {
              v623 = v622;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v624 = v19;
                v24[2] = v676;
                goto LABEL_936;
              }
            }

            else
            {
              v623 = 0xFFFF;
            }

            v625 = PDAdifferencePDA_15245((v622 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v623, v21 | v22, v20);
            v626 = bswap32(v625);
            *v24 = HIWORD(v626);
            v24[1] = v626;
            v24[2] = bswap32(HIDWORD(v625)) >> 16;
            v624 = __rev16(HIWORD(v625));
LABEL_936:
            v24[3] = v624;
            v24 += 4;
            --v621;
          }

          while (v621);
          v24 += 4 * v673;
          if (!--v620)
          {
            goto LABEL_971;
          }
        }

      case 23:
        if (!v19)
        {
          goto LABEL_973;
        }

        v634 = v684[0];
        while (1)
        {
          v635 = v13;
          do
          {
            v636 = __rev16(v24[3]);
            if (v10)
            {
              v637 = v636;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v638 = v19;
                v24[2] = v676;
                goto LABEL_958;
              }
            }

            else
            {
              v637 = 0xFFFF;
            }

            v639 = PDAexclusionPDA_15246((v636 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v637, v21 | v22, v20);
            v640 = bswap32(v639);
            *v24 = HIWORD(v640);
            v24[1] = v640;
            v24[2] = bswap32(HIDWORD(v639)) >> 16;
            v638 = __rev16(HIWORD(v639));
LABEL_958:
            v24[3] = v638;
            v24 += 4;
            --v635;
          }

          while (v635);
          v24 += 4 * v673;
          if (!--v634)
          {
            goto LABEL_971;
          }
        }

      case 24:
        if (!v19)
        {
          goto LABEL_973;
        }

        v536 = v684[0];
        while (1)
        {
          v537 = v13;
          do
          {
            v538 = __rev16(v24[3]);
            if (v10)
            {
              v539 = v538;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v540 = v19;
                v24[2] = v676;
                goto LABEL_809;
              }
            }

            else
            {
              v539 = 0xFFFF;
            }

            v541 = PDAhuePDA_15247((v538 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v539, v21 | v22, v20);
            v542 = bswap32(v541);
            *v24 = HIWORD(v542);
            v24[1] = v542;
            v24[2] = bswap32(HIDWORD(v541)) >> 16;
            v540 = __rev16(HIWORD(v541));
LABEL_809:
            v24[3] = v540;
            v24 += 4;
            --v537;
          }

          while (v537);
          v24 += 4 * v673;
          if (!--v536)
          {
            goto LABEL_971;
          }
        }

      case 25:
        if (!v19)
        {
          goto LABEL_973;
        }

        v529 = v684[0];
        while (1)
        {
          v530 = v13;
          do
          {
            v531 = __rev16(v24[3]);
            if (v10)
            {
              v532 = v531;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v533 = v19;
                v24[2] = v676;
                goto LABEL_798;
              }
            }

            else
            {
              v532 = 0xFFFF;
            }

            v534 = PDAsaturationPDA_15248((v531 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v532, v21 | v22, v20);
            v535 = bswap32(v534);
            *v24 = HIWORD(v535);
            v24[1] = v535;
            v24[2] = bswap32(HIDWORD(v534)) >> 16;
            v533 = __rev16(HIWORD(v534));
LABEL_798:
            v24[3] = v533;
            v24 += 4;
            --v530;
          }

          while (v530);
          v24 += 4 * v673;
          if (!--v529)
          {
            goto LABEL_971;
          }
        }

      case 26:
        if (!v19)
        {
          goto LABEL_973;
        }

        v641 = v684[0];
        do
        {
          v642 = v13;
          do
          {
            v643 = __rev16(v24[3]);
            if (v10)
            {
              v644 = v643;
              if (!v24[3])
              {
                *v24 = v680;
                v24[1] = v678;
                v645 = v19;
                v24[2] = v676;
                goto LABEL_969;
              }
            }

            else
            {
              v644 = 0xFFFF;
            }

            v646 = PDAluminosityPDA_15249(v21 | v22, v20, (v643 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v644);
            v647 = bswap32(v646);
            *v24 = HIWORD(v647);
            v24[1] = v647;
            v24[2] = bswap32(HIDWORD(v646)) >> 16;
            v645 = __rev16(HIWORD(v646));
LABEL_969:
            v24[3] = v645;
            v24 += 4;
            --v642;
          }

          while (v642);
          v24 += 4 * v673;
          --v641;
        }

        while (v641);
LABEL_971:
        v684[0] = 0;
        v5 = v650;
LABEL_972:
        v11 = v661;
LABEL_973:
        v24 = v662;
        v13 = v665;
        if (!v665)
        {
          return 1;
        }

        v683 = 0;
LABEL_975:
        if (shape_enum_clip_next(v13, &v683 + 1, &v683, v694, v684))
        {
          v665 = v13;
          v24 += 4 * v666 * v683 + 4 * SHIDWORD(v683);
          LODWORD(v13) = v694[0];
          continue;
        }

        v47 = v13;
LABEL_978:
        free(v47);
        return 1;
      case 27:
        if (!v19)
        {
          goto LABEL_973;
        }

        v493 = v684[0];
        break;
      default:
        goto LABEL_973;
    }

    break;
  }

LABEL_734:
  v494 = v13;
  while (1)
  {
    v495 = __rev16(v24[3]);
    if (!v10)
    {
      break;
    }

    v496 = v495;
    if (v24[3])
    {
      goto LABEL_739;
    }

    *v24 = v680;
    v24[1] = v678;
    v497 = v19;
    v24[2] = v676;
LABEL_740:
    v24[3] = v497;
    v24 += 4;
    if (!--v494)
    {
      v24 += 4 * v673;
      if (!--v493)
      {
        goto LABEL_971;
      }

      goto LABEL_734;
    }
  }

  v496 = 0xFFFF;
LABEL_739:
  v498 = PDAluminosityPDA_15249((v495 << 48) | ((bswap32(v24[2]) >> 16) << 32) | bswap32(v24[1]) & 0xFFFF0000 | (bswap32(*v24) >> 16), v496, v21 | v22, v20);
  v499 = bswap32(v498);
  *v24 = HIWORD(v499);
  v24[1] = v499;
  v24[2] = bswap32(HIDWORD(v498)) >> 16;
  v497 = __rev16(HIWORD(v498));
  goto LABEL_740;
}

_WORD *RGBA64_image_mark_rgba64(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v108 = *a2;
  v7 = *(result + 4);
  if (*(result + 5))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v9 = *(a2 + 2);
  v107 = *(a2 + 3) - a5;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  v12 = *(a2 + 7);
  v104 = *(a2 + 9);
  v13 = *(a2 + 5) + v104 * a4;
  v14 = &v7[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v117 = result;
  v114 = *(a2 + 4);
  v105 = v12;
  v106 = v11;
  if (*(result + 22))
  {
    v15 = a3;
    v101 = ~(-1 << v12);
    v102 = *(a2 + 13);
    v103 = *(a2 + 11);
    v99 = -v11;
    v100 = v12 - 4;
    v16 = v14 - 8;
    v17 = v8 << 48;
    v18 = v6 ^ 0xFFFFu;
    v97 = v10 + 16 * v15 + 8;
    v98 = a5;
    v19 = BLEND16_21891;
    v112 = v8 << 48;
    while (1)
    {
      if (((v102 - v13) | (v13 - v103)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v13 & v101) >> v100) & 0xF;
        v21 = (v20 - 7) >= 9 ? v99 : v11;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(v117 + 4) + (v13 >> v12) * v11;
      v111 = a6;
      v110 = v13;
      if (v108 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v24 = v97;
        v25 = v98;
        while (1)
        {
          v26 = *(v24 - 1);
          v27 = *v24;
          v28 = v23 + v26;
          if (v16 >= v23 + v26)
          {
            v29 = (v23 + v26);
          }

          else
          {
            v29 = v16;
          }

          if (v29 < v7)
          {
            v29 = v7;
          }

          v30 = *v29;
          v31 = *v24 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v40 = (v28 + v21);
            if (v16 < v28 + v21)
            {
              v40 = v16;
            }

            if (v40 < v7)
            {
              v40 = v7;
            }

            v34 = *v40;
            v31 = v22;
            goto LABEL_42;
          }

LABEL_43:
          v41 = v30 | v17;
          if (v6 != 0xFFFF)
          {
            v42 = HIWORD(v41);
            result = (v42 * v18 + 0x8000 + ((v42 * v18 + 0x8000) >> 16));
            v41 = ((WORD2(v30) - ((WORD2(v30) * v18 + 0x8000 + ((WORD2(v30) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((v42 - (result >> 16)) << 48) | ((WORD1(v30) - ((WORD1(v30) * v18 + 0x8000 + ((WORD1(v30) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v30 - ((v30 * v18 + 0x8000 + ((v30 * v18 + 0x8000) >> 16)) >> 16));
          }

          v24 += 2;
          v43 = HIDWORD(v41);
          v44 = HIWORD(v41);
          v45 = bswap32(v41);
          *v9 = HIWORD(v45);
          v9[1] = v45;
          v9[2] = bswap32(v43) >> 16;
          v9[3] = __rev16(v44);
          v9 += 4;
          if (!--v25)
          {
            goto LABEL_84;
          }
        }

        v32 = v27 >> 4;
        v33 = (v28 + (v27 >> 4));
        if (v16 < v33)
        {
          v33 = v16;
        }

        if (v33 < v7)
        {
          v33 = v7;
        }

        v34 = *v33;
        if (v22)
        {
          v35 = (v28 + v21);
          if (v16 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v16;
          }

          if (v36 < v7)
          {
            v36 = v7;
          }

          v37 = *v36;
          v38 = &v35[v32];
          if (v16 < v38)
          {
            v38 = v16;
          }

          if (v38 < v7)
          {
            v38 = v7;
          }

          v39 = v19[v22];
          v30 = v30 - ((v39 & v30) >> v22) + ((v39 & v37) >> v22);
          v34 = v34 - ((v39 & v34) >> v22) + ((v39 & *v38) >> v22);
        }

LABEL_42:
        v30 = v30 - ((v19[v31] & v30) >> v31) + ((v19[v31] & v34) >> v31);
        goto LABEL_43;
      }

LABEL_84:
      v11 = v106;
      v9 += 4 * v107;
      LOBYTE(v12) = v105;
      v13 = v110 + v104;
      a6 = v111 - 1;
      if (v111 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_84;
    }

    v115 = v22;
    v46 = v97;
    v47 = v98;
    while (1)
    {
      v48 = *(v46 - 1);
      v49 = *v46;
      v50 = v23 + v48;
      if (v16 >= v23 + v48)
      {
        v51 = (v23 + v48);
      }

      else
      {
        v51 = v16;
      }

      if (v51 < v7)
      {
        v51 = v7;
      }

      v52 = *v51;
      v53 = *v46 & 0xF;
      if ((v49 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v62 = (v50 + v21);
        if (v16 < v50 + v21)
        {
          v62 = v16;
        }

        if (v62 < v7)
        {
          v62 = v7;
        }

        v56 = *v62;
        v53 = v115;
        goto LABEL_76;
      }

LABEL_77:
      v63 = v52 | v17;
      if (v6 != 0xFFFF)
      {
        v63 = ((WORD2(v52) - ((WORD2(v52) * v18 + 0x8000 + ((WORD2(v52) * v18 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v63) - ((HIWORD(v63) * v18 + 0x8000 + ((HIWORD(v63) * v18 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v52) - ((WORD1(v52) * v18 + 0x8000 + ((WORD1(v52) * v18 + 0x8000) >> 16)) >> 16)) << 16) | (v52 - ((v52 * v18 + 0x8000 + ((v52 * v18 + 0x8000) >> 16)) >> 16));
      }

      v64 = HIWORD(v63);
      if (HIWORD(v63))
      {
        if (v64 == 0xFFFF)
        {
          v65 = bswap32(v63);
          *v9 = HIWORD(v65);
          v9[1] = v65;
          v9[2] = bswap32(HIDWORD(v63)) >> 16;
          v9[3] = -1;
        }

        else
        {
          v66 = v18;
          v67 = v19;
          v68 = v16;
          v69 = v23;
          v70 = v7;
          v71 = v21;
          v72 = v22;
          result = RGBA64_DplusDM(v9, v63, ((bswap32(v9[2]) >> 16) << 32) | ((bswap32(v9[3]) >> 16) << 48) | bswap32(v9[1]) & 0xFFFF0000 | (bswap32(*v9) >> 16), v64 ^ 0xFFFF);
          v22 = v72;
          v21 = v71;
          v7 = v70;
          v23 = v69;
          v16 = v68;
          v19 = v67;
          v18 = v66;
          v17 = v112;
          v6 = v114;
        }
      }

      v46 += 2;
      v9 += 4;
      if (!--v47)
      {
        goto LABEL_84;
      }
    }

    v54 = v49 >> 4;
    v55 = (v50 + (v49 >> 4));
    if (v16 < v55)
    {
      v55 = v16;
    }

    if (v55 < v7)
    {
      v55 = v7;
    }

    v56 = *v55;
    if (v22)
    {
      v57 = (v50 + v21);
      if (v16 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v16;
      }

      if (v58 < v7)
      {
        v58 = v7;
      }

      v59 = *v58;
      v60 = &v57[v54];
      if (v16 < v60)
      {
        v60 = v16;
      }

      if (v60 < v7)
      {
        v60 = v7;
      }

      v61 = v19[v115];
      v52 = v52 - ((v61 & v52) >> v115) + ((v61 & v59) >> v115);
      v56 = v56 - ((v61 & v56) >> v115) + ((v61 & *v60) >> v115);
    }

LABEL_76:
    v52 = v52 - ((v19[v53] & v52) >> v53) + ((v19[v53] & v56) >> v53);
    goto LABEL_77;
  }

  v116 = (v10 + 16 * a3);
  v73 = v14 - 8;
  v74 = v8 << 48;
  v75 = v6 ^ 0xFFFF;
  v113 = a5;
  do
  {
    v76 = *(v117 + 4);
    v77 = &v76[(v13 >> v12) * v11];
    v78 = a6;
    if (v108 == 1)
    {
      if (a5 >= 1)
      {
        v79 = v116;
        v80 = v113;
        do
        {
          v81 = *v79;
          v79 += 2;
          v82 = &v77[v81];
          if (v73 < &v77[v81])
          {
            v82 = v73;
          }

          if (v82 < v76)
          {
            v82 = v76;
          }

          v83 = *v82;
          v84 = v83 | v74;
          if (v6 != 0xFFFF)
          {
            v85 = HIWORD(v84);
            result = (v85 * v75 + 0x8000 + ((v85 * v75 + 0x8000) >> 16));
            v84 = ((WORD2(v83) - ((WORD2(v83) * v75 + 0x8000 + ((WORD2(v83) * v75 + 0x8000) >> 16)) >> 16)) << 32) | ((v85 - (result >> 16)) << 48) | ((WORD1(v83) - ((WORD1(v83) * v75 + 0x8000 + ((WORD1(v83) * v75 + 0x8000) >> 16)) >> 16)) << 16) | (v83 - ((v83 * v75 + 0x8000 + ((v83 * v75 + 0x8000) >> 16)) >> 16));
          }

          v86 = HIDWORD(v84);
          v87 = HIWORD(v84);
          v88 = bswap32(v84);
          *v9 = HIWORD(v88);
          v9[1] = v88;
          v9[2] = bswap32(v86) >> 16;
          v9[3] = __rev16(v87);
          v9 += 4;
          --v80;
        }

        while (v80);
      }
    }

    else
    {
      v89 = v116;
      v90 = v113;
      if (a5 >= 1)
      {
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v77[v91];
          if (v73 < &v77[v91])
          {
            v92 = v73;
          }

          if (v92 < *(v117 + 4))
          {
            v92 = *(v117 + 4);
          }

          v93 = *v92;
          v94 = v93 | v74;
          if (v6 != 0xFFFF)
          {
            v94 = ((WORD2(v93) - ((WORD2(v93) * v75 + 0x8000 + ((WORD2(v93) * v75 + 0x8000) >> 16)) >> 16)) << 32) | ((HIWORD(v94) - ((HIWORD(v94) * v75 + 0x8000 + ((HIWORD(v94) * v75 + 0x8000) >> 16)) >> 16)) << 48) | ((WORD1(v93) - ((WORD1(v93) * v75 + 0x8000 + ((WORD1(v93) * v75 + 0x8000) >> 16)) >> 16)) << 16) | (v93 - ((v93 * v75 + 0x8000 + ((v93 * v75 + 0x8000) >> 16)) >> 16));
          }

          v95 = HIWORD(v94);
          if (HIWORD(v94))
          {
            if (v95 == 0xFFFF)
            {
              v96 = bswap32(v94);
              *v9 = HIWORD(v96);
              v9[1] = v96;
              v9[2] = bswap32(HIDWORD(v94)) >> 16;
              v9[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v9, v94, ((bswap32(v9[2]) >> 16) << 32) | ((bswap32(v9[3]) >> 16) << 48) | bswap32(v9[1]) & 0xFFFF0000 | (bswap32(*v9) >> 16), v95 ^ 0xFFFF);
              v6 = v114;
            }
          }

          v9 += 4;
          --v90;
        }

        while (v90);
      }
    }

    v11 = v106;
    v9 += 4 * v107;
    LOBYTE(v12) = v105;
    v13 += v104;
    a6 = v78 - 1;
  }

  while (v78 != 1);
  return result;
}

_WORD *RGBA64_image_mark_RGBA64(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v7 = *(a2 + 4);
  v133 = *a2;
  v8 = *(result + 4);
  if (*(result + 5))
  {
    v9 = 0;
  }

  else
  {
    v9 = 0xFFFFLL;
  }

  v10 = *(a2 + 2);
  v132 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v129 = *(a2 + 9);
  v14 = *(a2 + 5) + v129 * a4;
  v15 = v8 + (*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3);
  v141 = result;
  v140 = *(a2 + 4);
  v130 = v13;
  v131 = v12;
  if (*(result + 22))
  {
    v16 = a3;
    v126 = ~(-1 << v13);
    v127 = *(a2 + 13);
    v128 = *(a2 + 11);
    v125 = v13 - 4;
    v17 = (v15 - 8);
    v18 = v9 << 48;
    v19 = v7 ^ 0xFFFFu;
    v123 = a5;
    v124 = -v12;
    v122 = v11 + 16 * v16 + 8;
    v137 = *(result + 4);
    v138 = (v15 - 8);
    while (1)
    {
      if (((v127 - v14) | (v14 - v128)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v14 & v126) >> v125) & 0xF;
        v21 = (v20 - 7) >= 9 ? v124 : v12;
        v22 = weights_21890[v20] & 0xF;
      }

      v23 = *(v141 + 4) + (v14 >> v13) * v12;
      v24 = 0x8000;
      v136 = a6;
      v135 = v14;
      if (v133 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v122;
        v26 = v123;
        while (1)
        {
          v27 = *(v25 - 1);
          v28 = *v25;
          v29 = v23 + v27;
          if (v17 >= v23 + v27)
          {
            v30 = (v23 + v27);
          }

          else
          {
            v30 = v17;
          }

          if (v30 < v8)
          {
            v30 = v8;
          }

          v31 = ((bswap32(v30[3]) >> 16) << 48) | ((bswap32(v30[2]) >> 16) << 32) | bswap32(v30[1]) & 0xFFFF0000 | (bswap32(*v30) >> 16);
          v32 = *v25 & 0xF;
          if ((v28 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v29 + v21);
            if (v17 < v29 + v21)
            {
              v44 = v17;
            }

            if (v44 < v8)
            {
              v44 = v8;
            }

            v45 = BLEND16_21891[v22];
            v42 = v31 - ((v45 & v31) >> v22);
            v43 = ((((bswap32(v44[3]) >> 16) << 48) | ((bswap32(v44[2]) >> 16) << 32) | bswap32(v44[1]) & 0xFFFF0000 | (bswap32(*v44) >> 16)) & v45) >> v22;
            goto LABEL_43;
          }

LABEL_44:
          v46 = v31 | v18;
          if (v7 != 0xFFFF)
          {
            v47 = HIWORD(v46);
            result = (v47 * v19 + 0x8000 + ((v47 * v19 + 0x8000) >> 16));
            v46 = ((WORD2(v31) - ((WORD2(v31) * v19 + 0x8000 + ((WORD2(v31) * v19 + 0x8000) >> 16)) >> 16)) << 32) | ((v47 - (result >> 16)) << 48) | ((WORD1(v31) - ((WORD1(v31) * v19 + 0x8000 + ((WORD1(v31) * v19 + 0x8000) >> 16)) >> 16)) << 16) | (v31 - ((v31 * v19 + 0x8000 + ((v31 * v19 + 0x8000) >> 16)) >> 16));
          }

          v25 += 2;
          v48 = HIDWORD(v46);
          v49 = HIWORD(v46);
          v50 = bswap32(v46);
          *v10 = HIWORD(v50);
          v10[1] = v50;
          v10[2] = bswap32(v48) >> 16;
          v10[3] = __rev16(v49);
          v10 += 4;
          if (!--v26)
          {
            goto LABEL_86;
          }
        }

        v33 = v28 >> 4;
        v34 = (v29 + (v28 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v8)
        {
          v34 = v8;
        }

        result = bswap32(v34[1]);
        v35 = ((bswap32(v34[3]) >> 16) << 48) | ((bswap32(v34[2]) >> 16) << 32) | result & 0xFFFF0000 | (bswap32(*v34) >> 16);
        if (v22)
        {
          v36 = (v29 + v21);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v8)
          {
            v37 = v8;
          }

          v38 = ((bswap32(v37[3]) >> 16) << 48) | ((bswap32(v37[2]) >> 16) << 32) | bswap32(v37[1]) & 0xFFFF0000 | (bswap32(*v37) >> 16);
          v39 = (v36 + v33);
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v8)
          {
            v39 = v8;
          }

          result = bswap32(v39[1]);
          v40 = BLEND16_21891[v22];
          v31 = v31 - ((v40 & v31) >> v22) + ((v38 & v40) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + (((((bswap32(v39[3]) >> 16) << 48) | ((bswap32(v39[2]) >> 16) << 32) | result & 0xFFFF0000 | (bswap32(*v39) >> 16)) & v40) >> v22);
        }

        v41 = BLEND16_21891[v32];
        v42 = v31 - ((v41 & v31) >> v32);
        v43 = (v41 & v35) >> v32;
LABEL_43:
        v31 = v42 + v43;
        goto LABEL_44;
      }

LABEL_86:
      v12 = v131;
      v10 += 4 * v132;
      LOBYTE(v13) = v130;
      v14 = v135 + v129;
      a6 = v136 - 1;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_86;
    }

    v52 = v122;
    v51 = v123;
    while (1)
    {
      v53 = *(v52 - 1);
      v54 = *v52;
      v55 = v23 + v53;
      if (v17 >= v23 + v53)
      {
        v56 = (v23 + v53);
      }

      else
      {
        v56 = v17;
      }

      if (v56 < v8)
      {
        v56 = v8;
      }

      v57 = ((bswap32(v56[3]) >> 16) << 48) | ((bswap32(v56[2]) >> 16) << 32) | bswap32(v56[1]) & 0xFFFF0000 | (bswap32(*v56) >> 16);
      v58 = *v52 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v22)
      {
        v70 = (v55 + v21);
        if (v17 < v55 + v21)
        {
          v70 = v17;
        }

        if (v70 < v8)
        {
          v70 = v8;
        }

        v71 = BLEND16_21891[v22];
        v68 = v57 - ((v71 & v57) >> v22);
        v69 = ((((bswap32(v70[3]) >> 16) << 48) | ((bswap32(v70[2]) >> 16) << 32) | bswap32(v70[1]) & 0xFFFF0000 | (bswap32(*v70) >> 16)) & v71) >> v22;
        goto LABEL_78;
      }

LABEL_79:
      v72 = v57 | v18;
      if (v7 != 0xFFFF)
      {
        v72 = ((WORD2(v57) - ((v24 + WORD2(v57) * v19 + ((v24 + WORD2(v57) * v19) >> 16)) >> 16)) << 32) | ((HIWORD(v72) - ((v24 + HIWORD(v72) * v19 + ((v24 + HIWORD(v72) * v19) >> 16)) >> 16)) << 48) | ((WORD1(v57) - ((v24 + WORD1(v57) * v19 + ((v24 + WORD1(v57) * v19) >> 16)) >> 16)) << 16) | (v57 - ((v24 + v57 * v19 + ((v24 + v57 * v19) >> 16)) >> 16));
      }

      v73 = HIWORD(v72);
      if (HIWORD(v72))
      {
        if (v73 == 0xFFFF)
        {
          v74 = bswap32(v72);
          *v10 = HIWORD(v74);
          v10[1] = v74;
          v10[2] = bswap32(HIDWORD(v72)) >> 16;
          v10[3] = -1;
        }

        else
        {
          v75 = v23;
          v76 = v18;
          v77 = v24;
          v78 = v21;
          v79 = v19;
          result = RGBA64_DplusDM(v10, v72, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v73 ^ 0xFFFF);
          v19 = v79;
          v21 = v78;
          v24 = v77;
          v18 = v76;
          v23 = v75;
          v8 = v137;
          v17 = v138;
          v7 = v140;
        }
      }

      v52 += 2;
      v10 += 4;
      if (!--v51)
      {
        goto LABEL_86;
      }
    }

    v59 = v54 >> 4;
    v60 = (v55 + (v54 >> 4));
    if (v17 < v60)
    {
      v60 = v17;
    }

    if (v60 < v8)
    {
      v60 = v8;
    }

    v61 = ((bswap32(v60[3]) >> 16) << 48) | ((bswap32(v60[2]) >> 16) << 32) | bswap32(v60[1]) & 0xFFFF0000 | (bswap32(*v60) >> 16);
    if (v22)
    {
      v62 = (v55 + v21);
      if (v17 >= v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v17;
      }

      if (v63 < v8)
      {
        v63 = v8;
      }

      v64 = ((bswap32(v63[3]) >> 16) << 48) | ((bswap32(v63[2]) >> 16) << 32) | bswap32(v63[1]) & 0xFFFF0000 | (bswap32(*v63) >> 16);
      v65 = (v62 + v59);
      if (v17 < v65)
      {
        v65 = v17;
      }

      if (v65 < v8)
      {
        v65 = v8;
      }

      v66 = BLEND16_21891[v22];
      v57 = v57 - ((v66 & v57) >> v22) + ((v64 & v66) >> v22);
      v61 = v61 - ((v66 & v61) >> v22) + (((((bswap32(v65[3]) >> 16) << 48) | ((bswap32(v65[2]) >> 16) << 32) | bswap32(v65[1]) & 0xFFFF0000 | (bswap32(*v65) >> 16)) & v66) >> v22);
    }

    v67 = BLEND16_21891[v58];
    v68 = v57 - ((v67 & v57) >> v58);
    v69 = (v67 & v61) >> v58;
LABEL_78:
    v57 = v68 + v69;
    goto LABEL_79;
  }

  v139 = (v11 + 16 * a3);
  v80 = (v15 - 8);
  v81 = v9 << 48;
  v82 = v7 ^ 0xFFFF;
  v83 = vdup_n_s32(v7 ^ 0xFFFFu);
  v84 = xmmword_18439CC00;
  v85 = a5;
  do
  {
    v86 = v14;
    v87 = *(v141 + 4);
    v88 = v87 + (v14 >> v13) * v12;
    if (v133 == 1)
    {
      if (a5 >= 1)
      {
        v89 = v139;
        v90 = v85;
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v88[v91];
          if (v80 < &v88[v91])
          {
            v92 = v80;
          }

          if (v92 >= v87)
          {
            v93 = v92;
          }

          else
          {
            v93 = v87;
          }

          v94 = bswap32(v93[3]) >> 16;
          v95 = bswap32(*v93) >> 16;
          v96 = bswap32(v93[1]) >> 16;
          v97 = bswap32(v93[2]) >> 16;
          v98 = (v96 << 16) | (v94 << 48) | (v97 << 32) | v81 | v95;
          if (v7 != 0xFFFF)
          {
            v99.i32[0] = HIWORD(v98);
            v99.i32[1] = v97;
            v100 = vmla_s32(0x800000008000, v99, v83);
            v101 = vand_s8(vsub_s32(v99, vshr_n_u32(vsra_n_u32(v100, v100, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v102.i64[0] = v101.u32[0];
            v102.i64[1] = v101.u32[1];
            v103 = vshlq_u64(v102, v84);
            v98 = vorrq_s8(v103, vdupq_laneq_s64(v103, 1)).u64[0] | ((v96 - ((v96 * v82 + 0x8000 + ((v96 * v82 + 0x8000) >> 16)) >> 16)) << 16) | (v95 - ((v95 * v82 + 0x8000 + ((v95 * v82 + 0x8000) >> 16)) >> 16));
          }

          v104 = bswap32(v98);
          *v10 = HIWORD(v104);
          v10[1] = v104;
          v10[2] = bswap32(HIDWORD(v98)) >> 16;
          v10[3] = __rev16(HIWORD(v98));
          v10 += 4;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
      v105 = v139;
      v106 = v85;
      if (a5 >= 1)
      {
        do
        {
          v107 = *v105;
          v105 += 2;
          v108 = &v88[v107];
          v109 = *(v141 + 4);
          if (v80 < &v88[v107])
          {
            v108 = v80;
          }

          if (v108 >= v109)
          {
            v109 = v108;
          }

          v110 = bswap32(v109[3]) >> 16;
          v111 = bswap32(*v109) >> 16;
          v112 = bswap32(v109[1]) >> 16;
          v113 = bswap32(v109[2]) >> 16;
          v114 = (v112 << 16) | (v110 << 48) | (v113 << 32) | v81 | v111;
          if (v7 != 0xFFFF)
          {
            v115.i32[0] = HIWORD(v114);
            v115.i32[1] = v113;
            v116 = vmla_s32(0x800000008000, v115, v83);
            v117 = vand_s8(vsub_s32(v115, vshr_n_u32(vsra_n_u32(v116, v116, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v118.i64[0] = v117.u32[0];
            v118.i64[1] = v117.u32[1];
            v119 = vshlq_u64(v118, v84);
            v114 = vorrq_s8(v119, vdupq_laneq_s64(v119, 1)).u64[0] | ((v112 - ((v112 * v82 + 0x8000 + ((v112 * v82 + 0x8000) >> 16)) >> 16)) << 16) | (v111 - ((v111 * v82 + 0x8000 + ((v111 * v82 + 0x8000) >> 16)) >> 16));
          }

          v120 = HIWORD(v114);
          if (HIWORD(v114))
          {
            if (v120 == 0xFFFF)
            {
              v121 = bswap32(v114);
              *v10 = HIWORD(v121);
              v10[1] = v121;
              v10[2] = bswap32(HIDWORD(v114)) >> 16;
              v10[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v10, v114, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v120 ^ 0xFFFF);
              v84 = xmmword_18439CC00;
              v7 = v140;
            }
          }

          v10 += 4;
          --v106;
        }

        while (v106);
      }
    }

    v12 = v131;
    v10 += 4 * v132;
    LOBYTE(v13) = v130;
    v14 = v86 + v129;
    --a6;
  }

  while (a6);
  return result;
}

unint64_t RGBA64_image_mark_rgb48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v116 = *a2;
  v7 = *(a2 + 2);
  v115 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v112 = *(a2 + 9);
  v11 = *(a2 + 5) + v112 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v127 = result;
  v14 = 0x8000;
  v124 = v6;
  v113 = v10;
  v114 = v9;
  if (*(result + 176))
  {
    v111 = *(a2 + 11);
    v110 = *(a2 + 13);
    v109 = ~(-1 << v10);
    v108 = v10 - 4;
    v15 = (v13 - 6);
    v16 = v6 ^ 0xFFFFu;
    result = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v106 = a5;
    v107 = -v9;
    v105 = v8 + 16 * a3 + 8;
    v17 = BLEND16_21891;
    v121 = (v13 - 6);
    v122 = v12;
    while (1)
    {
      if (((v110 - v11) | (v11 - v111)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v11 & v109) >> v108) & 0xF;
        v19 = (v18 - 7) >= 9 ? v107 : v9;
        v20 = weights_21890[v18] & 0xF;
      }

      v21 = *(v127 + 32) + (v11 >> v10) * v9;
      v119 = a6;
      v118 = v11;
      if (v116 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v105;
        v23 = v106;
        while (1)
        {
          v24 = *(v22 - 1);
          v25 = *v22;
          v26 = v21 + v24;
          if (v15 >= v21 + v24)
          {
            v27 = (v21 + v24);
          }

          else
          {
            v27 = v15;
          }

          if (v27 < v12)
          {
            v27 = v12;
          }

          v28 = *v27 | (*(v27 + 1) << 16);
          v29 = *v22 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v41 = (v26 + v19);
            if (v15 < v26 + v19)
            {
              v41 = v15;
            }

            if (v41 < v12)
            {
              v41 = v12;
            }

            v42 = v17[v20];
            v39 = v28 - ((v42 & v28) >> v20);
            v40 = ((*v41 | (*(v41 + 1) << 16)) & v42) >> v20;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v43 = v28 | 0xFFFF000000000000;
          }

          else
          {
            v43 = ((WORD1(v28) - ((v14 + WORD1(v28) * v16 + ((v14 + WORD1(v28) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v28) - ((v14 + WORD2(v28) * v16 + ((v14 + WORD2(v28) * v16) >> 16)) >> 16)) << 32) | (v28 - ((v14 + v28 * v16 + ((v14 + v28 * v16) >> 16)) >> 16)) | result;
          }

          v22 += 2;
          v44 = HIDWORD(v43);
          v45 = HIWORD(v43);
          v46 = bswap32(v43);
          *v7 = HIWORD(v46);
          v7[1] = v46;
          v7[2] = bswap32(v44) >> 16;
          v7[3] = __rev16(v45);
          v7 += 4;
          if (!--v23)
          {
            goto LABEL_85;
          }
        }

        v30 = v25 >> 4;
        v31 = (v26 + (v25 >> 4));
        if (v15 < v31)
        {
          v31 = v15;
        }

        if (v31 < v12)
        {
          v31 = v12;
        }

        v32 = *v31 | (*(v31 + 1) << 16);
        if (v20)
        {
          v33 = (v26 + v19);
          if (v15 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v15;
          }

          if (v34 < v12)
          {
            v34 = v12;
          }

          v35 = *v34 | (*(v34 + 1) << 16);
          v36 = (v33 + v30);
          if (v15 < v36)
          {
            v36 = v15;
          }

          if (v36 < v12)
          {
            v36 = v12;
          }

          v37 = v17[v20];
          v28 = v28 - ((v37 & v28) >> v20) + ((v35 & v37) >> v20);
          v32 = v32 - ((v37 & v32) >> v20) + (((*v36 | (*(v36 + 1) << 16)) & v37) >> v20);
        }

        v38 = v17[v29];
        v39 = v28 - ((v38 & v28) >> v29);
        v40 = (v38 & v32) >> v29;
LABEL_40:
        v28 = v39 + v40;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v114;
      v7 += 4 * v115;
      LOBYTE(v10) = v113;
      v11 = v118 + v112;
      a6 = v119 - 1;
      if (v119 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v125 = v20;
    v47 = v105;
    v48 = v106;
    while (1)
    {
      v49 = *(v47 - 1);
      v50 = *v47;
      v51 = v21 + v49;
      if (v15 >= v21 + v49)
      {
        v52 = (v21 + v49);
      }

      else
      {
        v52 = v15;
      }

      if (v52 < v12)
      {
        v52 = v12;
      }

      v53 = *v52 | (*(v52 + 1) << 16);
      v54 = *v47 & 0xF;
      if ((v50 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v66 = (v51 + v19);
        if (v15 < v51 + v19)
        {
          v66 = v15;
        }

        if (v66 < v12)
        {
          v66 = v12;
        }

        v67 = v17[v125];
        v64 = v53 - ((v67 & v53) >> v125);
        v65 = ((*v66 | (*(v66 + 1) << 16)) & v67) >> v125;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v68 = v53 | 0xFFFF000000000000;
      }

      else
      {
        v68 = ((WORD1(v53) - ((v14 + WORD1(v53) * v16 + ((v14 + WORD1(v53) * v16) >> 16)) >> 16)) << 16) | ((WORD2(v53) - ((v14 + WORD2(v53) * v16 + ((v14 + WORD2(v53) * v16) >> 16)) >> 16)) << 32) | (v53 - ((v14 + v53 * v16 + ((v14 + v53 * v16) >> 16)) >> 16)) | result;
      }

      v69 = HIWORD(v68);
      if (HIWORD(v68))
      {
        if (v69 == 0xFFFF)
        {
          v70 = bswap32(v68);
          *v7 = HIWORD(v70);
          v7[1] = v70;
          v7[2] = bswap32(HIDWORD(v68)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v71 = v17;
          v72 = result;
          v73 = v20;
          v74 = v14;
          v75 = v16;
          RGBA64_DplusDM(v7, v68, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v69 ^ 0xFFFF);
          v16 = v75;
          v14 = v74;
          v20 = v73;
          v17 = v71;
          result = v72;
          v15 = v121;
          v12 = v122;
          v6 = v124;
        }
      }

      v47 += 2;
      v7 += 4;
      if (!--v48)
      {
        goto LABEL_85;
      }
    }

    v55 = v50 >> 4;
    v56 = (v51 + (v50 >> 4));
    if (v15 < v56)
    {
      v56 = v15;
    }

    if (v56 < v12)
    {
      v56 = v12;
    }

    v57 = *v56 | (*(v56 + 1) << 16);
    if (v20)
    {
      v58 = (v51 + v19);
      if (v15 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v15;
      }

      if (v59 < v12)
      {
        v59 = v12;
      }

      v60 = *v59 | (*(v59 + 1) << 16);
      v61 = (v58 + v55);
      if (v15 < v61)
      {
        v61 = v15;
      }

      if (v61 < v12)
      {
        v61 = v12;
      }

      v62 = v17[v125];
      v53 = v53 - ((v62 & v53) >> v125) + ((v60 & v62) >> v125);
      v57 = v57 - ((v62 & v57) >> v125) + (((*v61 | (*(v61 + 1) << 16)) & v62) >> v125);
    }

    v63 = v17[v54];
    v64 = v53 - ((v63 & v53) >> v54);
    v65 = (v63 & v57) >> v54;
LABEL_76:
    v53 = v64 + v65;
    goto LABEL_77;
  }

  v126 = (v8 + 16 * a3);
  v76 = v13 - 6;
  v77 = v6 ^ 0xFFFF;
  v78 = (~(0xFFFF * v77 + 0x8000 + ((0xFFFF * v77 + 0x8000) >> 16)) >> 16) << 48;
  v123 = a5;
  do
  {
    v79 = *(v127 + 32);
    v80 = &v79[(v11 >> v10) * v9];
    v120 = a6;
    if (v116 == 1)
    {
      if (a5 >= 1)
      {
        v81 = v126;
        v82 = v123;
        do
        {
          v83 = *v81;
          v81 += 2;
          v84 = &v80[v83];
          if (v76 < &v80[v83])
          {
            v84 = v76;
          }

          if (v84 < v79)
          {
            v84 = v79;
          }

          v85 = *v84;
          v86 = *(v84 + 1);
          v87 = *(v84 + 2);
          v88 = v85 | (v86 << 16) | (v87 << 32) | 0xFFFF000000000000;
          v89 = ((v86 - ((v86 * v77 + 0x8000 + ((v86 * v77 + 0x8000) >> 16)) >> 16)) << 16) | ((v87 - ((v87 * v77 + 0x8000 + ((v87 * v77 + 0x8000) >> 16)) >> 16)) << 32) | (v85 - ((v85 * v77 + 0x8000 + ((v85 * v77 + 0x8000) >> 16)) >> 16)) | v78;
          if (v6 == 0xFFFF)
          {
            v89 = v88;
          }

          v90 = HIDWORD(v89);
          v91 = HIWORD(v89);
          v92 = bswap32(v89);
          *v7 = HIWORD(v92);
          v7[1] = v92;
          v7[2] = bswap32(v90) >> 16;
          v7[3] = __rev16(v91);
          v7 += 4;
          --v82;
        }

        while (v82);
      }
    }

    else
    {
      v93 = v126;
      v94 = v123;
      if (a5 >= 1)
      {
        do
        {
          v95 = *v93;
          v93 += 2;
          v96 = &v80[v95];
          if (v76 < &v80[v95])
          {
            v96 = v76;
          }

          if (v96 < *(v127 + 32))
          {
            v96 = *(v127 + 32);
          }

          v97 = *v96;
          v98 = *(v96 + 1);
          v99 = *(v96 + 2);
          v100 = v97 | (v98 << 16) | (v99 << 32) | 0xFFFF000000000000;
          v101 = ((v98 - ((v98 * v77 + 0x8000 + ((v98 * v77 + 0x8000) >> 16)) >> 16)) << 16) | ((v99 - ((v99 * v77 + 0x8000 + ((v99 * v77 + 0x8000) >> 16)) >> 16)) << 32) | (v97 - ((v97 * v77 + 0x8000 + ((v97 * v77 + 0x8000) >> 16)) >> 16)) | v78;
          if (v6 == 0xFFFF)
          {
            v102 = v100;
          }

          else
          {
            v102 = v101;
          }

          v103 = HIWORD(v102);
          if (HIWORD(v102))
          {
            if (v103 == 0xFFFF)
            {
              v104 = bswap32(v102);
              *v7 = HIWORD(v104);
              v7[1] = v104;
              v7[2] = bswap32(HIDWORD(v102)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v102, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v103 ^ 0xFFFF);
              v6 = v124;
            }
          }

          v7 += 4;
          --v94;
        }

        while (v94);
      }
    }

    v9 = v114;
    v7 += 4 * v115;
    LOBYTE(v10) = v113;
    v11 += v112;
    a6 = v120 - 1;
  }

  while (v120 != 1);
  return result;
}

unint64_t RGBA64_image_mark_RGB48(unint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v117 = *a2;
  v7 = *(a2 + 2);
  v116 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v113 = *(a2 + 9);
  v11 = *(a2 + 5) + v113 * a4;
  v12 = *(result + 32);
  v13 = v12 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v127 = result;
  v118 = a5;
  v124 = v6;
  v114 = v10;
  v115 = v9;
  if (*(result + 176))
  {
    v14 = a3;
    v112 = *(a2 + 11);
    v111 = *(a2 + 13);
    v110 = ~(-1 << v10);
    v109 = v10 - 4;
    v15 = (v13 - 6);
    v16 = v6 ^ 0xFFFFu;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v107 = a5;
    v108 = -v9;
    v106 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    while (1)
    {
      if (((v111 - v11) | (v11 - v112)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v110) >> v109) & 0xF;
        v20 = (v19 - 7) >= 9 ? v108 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v120 = a6;
      v22 = *(v127 + 32) + (v11 >> v10) * v9;
      v119 = v11;
      if (v117 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v106;
        v24 = v107;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = bswap32(v28[1]) & 0xFFFF0000 | ((bswap32(v28[2]) >> 16) << 32) | (bswap32(*v28) >> 16);
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = ((bswap32(v42[1]) & 0xFFFF0000 | ((bswap32(v42[2]) >> 16) << 32) | (bswap32(*v42) >> 16)) & v43) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          if (v6 == 0xFFFF)
          {
            v44 = v29 | 0xFFFF000000000000;
          }

          else
          {
            v44 = ((WORD1(v29) - ((WORD1(v29) * v16 + 0x8000 + ((WORD1(v29) * v16 + 0x8000) >> 16)) >> 16)) << 16) | ((WORD2(v29) - ((WORD2(v29) * v16 + 0x8000 + ((WORD2(v29) * v16 + 0x8000) >> 16)) >> 16)) << 32) | (v29 - ((v29 * v16 + 0x8000 + ((v29 * v16 + 0x8000) >> 16)) >> 16)) | v17;
          }

          v23 += 2;
          v45 = HIDWORD(v44);
          v46 = HIWORD(v44);
          v47 = bswap32(v44);
          *v7 = HIWORD(v47);
          v7[1] = v47;
          v7[2] = bswap32(v45) >> 16;
          v7[3] = __rev16(v46);
          v7 += 4;
          if (!--v24)
          {
            goto LABEL_85;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = bswap32(v32[1]) & 0xFFFF0000 | ((bswap32(v32[2]) >> 16) << 32) | (bswap32(*v32) >> 16);
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          result = bswap32(v35[1]) & 0xFFFF0000;
          v36 = result | ((bswap32(v35[2]) >> 16) << 32) | (bswap32(*v35) >> 16);
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          v29 = v29 - ((v38 & v29) >> v21) + ((v36 & v38) >> v21);
          v33 = v33 - ((v38 & v33) >> v21) + (((bswap32(v37[1]) & 0xFFFF0000 | ((bswap32(v37[2]) >> 16) << 32) | (bswap32(*v37) >> 16)) & v38) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        v29 = v40 + v41;
        goto LABEL_41;
      }

LABEL_85:
      v9 = v115;
      v7 += 4 * v116;
      LOBYTE(v10) = v114;
      v11 = v119 + v113;
      a6 = v120 - 1;
      a5 = v118;
      if (v120 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_85;
    }

    v125 = v21;
    v48 = v106;
    v49 = v107;
    v122 = v21;
    while (1)
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      v52 = v22 + v50;
      if (v15 >= v22 + v50)
      {
        v53 = (v22 + v50);
      }

      else
      {
        v53 = v15;
      }

      if (v53 < v12)
      {
        v53 = v12;
      }

      v54 = bswap32(v53[1]) & 0xFFFF0000 | ((bswap32(v53[2]) >> 16) << 32) | (bswap32(*v53) >> 16);
      v55 = *v48 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v67 = (v52 + v20);
        if (v15 < v52 + v20)
        {
          v67 = v15;
        }

        if (v67 < v12)
        {
          v67 = v12;
        }

        v68 = v18[v125];
        v65 = v54 - ((v68 & v54) >> v125);
        v66 = ((bswap32(v67[1]) & 0xFFFF0000 | ((bswap32(v67[2]) >> 16) << 32) | (bswap32(*v67) >> 16)) & v68) >> v125;
        goto LABEL_76;
      }

LABEL_77:
      if (v6 == 0xFFFF)
      {
        v69 = v54 | 0xFFFF000000000000;
      }

      else
      {
        v69 = ((WORD1(v54) - ((WORD1(v54) * v16 + 0x8000 + ((WORD1(v54) * v16 + 0x8000) >> 16)) >> 16)) << 16) | ((WORD2(v54) - ((WORD2(v54) * v16 + 0x8000 + ((WORD2(v54) * v16 + 0x8000) >> 16)) >> 16)) << 32) | (v54 - ((v54 * v16 + 0x8000 + ((v54 * v16 + 0x8000) >> 16)) >> 16)) | v17;
      }

      v70 = HIWORD(v69);
      if (HIWORD(v69))
      {
        if (v70 == 0xFFFF)
        {
          v71 = bswap32(v69);
          *v7 = HIWORD(v71);
          v7[1] = v71;
          v7[2] = bswap32(HIDWORD(v69)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v72 = v16;
          v73 = v20;
          v74 = v17;
          v75 = v18;
          v76 = v22;
          result = RGBA64_DplusDM(v7, v69, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v70 ^ 0xFFFF);
          v22 = v76;
          v18 = v75;
          v17 = v74;
          v20 = v73;
          v16 = v72;
          v21 = v122;
          v6 = v124;
        }
      }

      v48 += 2;
      v7 += 4;
      if (!--v49)
      {
        goto LABEL_85;
      }
    }

    v56 = v51 >> 4;
    v57 = (v52 + (v51 >> 4));
    if (v15 < v57)
    {
      v57 = v15;
    }

    if (v57 < v12)
    {
      v57 = v12;
    }

    v58 = bswap32(v57[1]) & 0xFFFF0000 | ((bswap32(v57[2]) >> 16) << 32) | (bswap32(*v57) >> 16);
    if (v21)
    {
      v59 = (v52 + v20);
      if (v15 >= v59)
      {
        v60 = v59;
      }

      else
      {
        v60 = v15;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = bswap32(v60[1]) & 0xFFFF0000 | ((bswap32(v60[2]) >> 16) << 32) | (bswap32(*v60) >> 16);
      v62 = (v59 + v56);
      if (v15 < v62)
      {
        v62 = v15;
      }

      if (v62 < v12)
      {
        v62 = v12;
      }

      v63 = v18[v125];
      v54 = v54 - ((v63 & v54) >> v125) + ((v61 & v63) >> v125);
      v58 = v58 - ((v63 & v58) >> v125) + (((bswap32(v62[1]) & 0xFFFF0000 | ((bswap32(v62[2]) >> 16) << 32) | (bswap32(*v62) >> 16)) & v63) >> v125);
    }

    v64 = v18[v55];
    v65 = v54 - ((v64 & v54) >> v55);
    v66 = (v64 & v58) >> v55;
LABEL_76:
    v54 = v65 + v66;
    goto LABEL_77;
  }

  v126 = (v8 + 16 * a3);
  v77 = v13 - 6;
  v78 = v6 ^ 0xFFFF;
  v79 = (~(0xFFFF * v78 + 0x8000 + ((0xFFFF * v78 + 0x8000) >> 16)) >> 16) << 48;
  v123 = a5;
  do
  {
    v80 = *(v127 + 32);
    v81 = &v80[(v11 >> v10) * v9];
    v121 = a6;
    if (v117 == 1)
    {
      if (a5 >= 1)
      {
        v82 = v126;
        v83 = v123;
        do
        {
          v84 = *v82;
          v82 += 2;
          v85 = &v81[v84];
          if (v77 < &v81[v84])
          {
            v85 = v77;
          }

          if (v85 < v80)
          {
            v85 = v80;
          }

          v86 = bswap32(*v85) >> 16;
          v87 = bswap32(*(v85 + 1)) >> 16;
          v88 = bswap32(*(v85 + 2)) >> 16;
          v89 = v86 | (v88 << 32) | (v87 << 16) | 0xFFFF000000000000;
          v90 = ((v87 - ((v87 * v78 + 0x8000 + ((v87 * v78 + 0x8000) >> 16)) >> 16)) << 16) | ((v88 - ((v88 * v78 + 0x8000 + ((v88 * v78 + 0x8000) >> 16)) >> 16)) << 32) | (v86 - ((v86 * v78 + 0x8000 + ((v86 * v78 + 0x8000) >> 16)) >> 16)) | v79;
          if (v6 == 0xFFFF)
          {
            v90 = v89;
          }

          v91 = HIDWORD(v90);
          v92 = HIWORD(v90);
          v93 = bswap32(v90);
          *v7 = HIWORD(v93);
          v7[1] = v93;
          v7[2] = bswap32(v91) >> 16;
          v7[3] = __rev16(v92);
          v7 += 4;
          --v83;
        }

        while (v83);
      }
    }

    else
    {
      v94 = v126;
      v95 = v123;
      if (a5 >= 1)
      {
        do
        {
          v96 = *v94;
          v94 += 2;
          v97 = &v81[v96];
          if (v77 < &v81[v96])
          {
            v97 = v77;
          }

          if (v97 < *(v127 + 32))
          {
            v97 = *(v127 + 32);
          }

          v98 = bswap32(*v97) >> 16;
          v99 = bswap32(*(v97 + 1)) >> 16;
          v100 = bswap32(*(v97 + 2)) >> 16;
          v101 = v98 | (v100 << 32) | (v99 << 16) | 0xFFFF000000000000;
          v102 = ((v99 - ((v99 * v78 + 0x8000 + ((v99 * v78 + 0x8000) >> 16)) >> 16)) << 16) | ((v100 - ((v100 * v78 + 0x8000 + ((v100 * v78 + 0x8000) >> 16)) >> 16)) << 32) | (v98 - ((v98 * v78 + 0x8000 + ((v98 * v78 + 0x8000) >> 16)) >> 16)) | v79;
          if (v6 == 0xFFFF)
          {
            v103 = v101;
          }

          else
          {
            v103 = v102;
          }

          v104 = HIWORD(v103);
          if (HIWORD(v103))
          {
            if (v104 == 0xFFFF)
            {
              v105 = bswap32(v103);
              *v7 = HIWORD(v105);
              v7[1] = v105;
              v7[2] = bswap32(HIDWORD(v103)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v103, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v104 ^ 0xFFFF);
              v6 = v124;
            }
          }

          v7 += 4;
          --v95;
        }

        while (v95);
      }
    }

    v9 = v115;
    v7 += 4 * v116;
    LOBYTE(v10) = v114;
    v11 += v113;
    a6 = v121 - 1;
    a5 = v118;
  }

  while (v121 != 1);
  return result;
}

_WORD *RGBA64_image_mark_w16(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v124 = *a2;
  v7 = *(a2 + 2);
  v123 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v120 = *(a2 + 9);
  v11 = *(a2 + 5) + v120 * a4;
  v12 = *(result + 4);
  v13 = v12 + (*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3);
  v135 = result;
  v121 = v10;
  v122 = v9;
  if (*(result + 22))
  {
    v14 = a3;
    v119 = *(a2 + 11);
    v118 = *(a2 + 13);
    v117 = ~(-1 << v10);
    v116 = v10 - 4;
    v15 = (v13 - 4);
    v16 = v6 ^ 0xFFFF;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v114 = a5;
    v115 = -v9;
    v113 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    while (1)
    {
      if (((v118 - v11) | (v11 - v119)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v117) >> v116) & 0xF;
        v20 = (v19 - 7) >= 9 ? v115 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = *(v135 + 4) + (v11 >> v10) * v9;
      v128 = a6;
      v126 = v11;
      if (v124 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v113;
        v24 = v114;
        while (1)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 + v25;
          if (v15 >= v22 + v25)
          {
            v28 = (v22 + v25);
          }

          else
          {
            v28 = v15;
          }

          if (v28 < v12)
          {
            v28 = v12;
          }

          v29 = *v28;
          v30 = *v23 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v42 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v42 = v15;
            }

            if (v42 < v12)
            {
              v42 = v12;
            }

            v43 = v18[v21];
            v40 = v29 - ((v43 & v29) >> v21);
            v41 = (v43 & *v42) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          v23 += 2;
          v44 = (0x100010001 * v29) | 0xFFFF000000000000;
          v45 = (v29 | 0xFFFF0000) * v16;
          if (v45 >= 0xFFFE8000)
          {
            v45 = -98304;
          }

          v46 = (v29 - ((v45 + 0x8000 + ((v45 + 0x8000) >> 16)) >> 16));
          v47 = (v46 << 16) | (v46 << 32) | v17 | v46;
          if (v6 == 0xFFFF)
          {
            v47 = v44;
          }

          v48 = HIDWORD(v47);
          v49 = HIWORD(v47);
          v50 = bswap32(v47);
          *v7 = HIWORD(v50);
          v7[1] = v50;
          v7[2] = bswap32(v48) >> 16;
          v7[3] = __rev16(v49);
          v7 += 4;
          if (!--v24)
          {
            goto LABEL_88;
          }
        }

        v31 = v26 >> 4;
        v32 = (v27 + (v26 >> 4));
        if (v15 < v32)
        {
          v32 = v15;
        }

        if (v32 < v12)
        {
          v32 = v12;
        }

        v33 = *v32;
        if (v21)
        {
          v34 = (v27 + v20);
          if (v15 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = *v35;
          v37 = (v34 + v31);
          if (v15 < v37)
          {
            v37 = v15;
          }

          if (v37 < v12)
          {
            v37 = v12;
          }

          v38 = v18[v21];
          LODWORD(v29) = v29 - ((v38 & v29) >> v21) + ((v38 & v36) >> v21);
          LODWORD(v33) = v33 - ((v38 & v33) >> v21) + ((v38 & *v37) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        LOWORD(v29) = v40 + v41;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v122;
      v7 += 4 * v123;
      LOBYTE(v10) = v121;
      v11 = v126 + v120;
      a6 = v128 - 1;
      if (v128 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v133 = v21;
    v51 = v113;
    v52 = v114;
    v131 = v20;
    v130 = v21;
    while (1)
    {
      v53 = *(v51 - 1);
      v54 = *v51;
      v55 = v22 + v53;
      if (v15 >= v22 + v53)
      {
        v56 = (v22 + v53);
      }

      else
      {
        v56 = v15;
      }

      if (v56 < v12)
      {
        v56 = v12;
      }

      v57 = *v56;
      v58 = *v51 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v70 = (v55 + v20);
        if (v15 < v55 + v20)
        {
          v70 = v15;
        }

        if (v70 < v12)
        {
          v70 = v12;
        }

        v71 = v18[v133];
        v68 = v57 - ((v71 & v57) >> v133);
        v69 = (v71 & *v70) >> v133;
        goto LABEL_77;
      }

LABEL_78:
      v72 = (0x100010001 * v57) | 0xFFFF000000000000;
      v73 = (v57 | 0xFFFF0000) * v16;
      if (v73 >= 0xFFFE8000)
      {
        v73 = -98304;
      }

      v74 = (v57 - ((v73 + 0x8000 + ((v73 + 0x8000) >> 16)) >> 16));
      v75 = (v74 << 16) | (v74 << 32) | v17 | v74;
      if (v6 == 0xFFFF)
      {
        v76 = v72;
      }

      else
      {
        v76 = v75;
      }

      v77 = HIWORD(v76);
      if (HIWORD(v76))
      {
        if (v77 == 0xFFFF)
        {
          v78 = bswap32(v76);
          *v7 = HIWORD(v78);
          v7[1] = v78;
          v7[2] = bswap32(HIDWORD(v76)) >> 16;
          v7[3] = -1;
        }

        else
        {
          v79 = v6;
          v80 = v17;
          v81 = v22;
          v82 = v18;
          result = RGBA64_DplusDM(v7, v76, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v77 ^ 0xFFFF);
          v18 = v82;
          v22 = v81;
          v17 = v80;
          v6 = v79;
          v21 = v130;
          v20 = v131;
        }
      }

      v51 += 2;
      v7 += 4;
      if (!--v52)
      {
        goto LABEL_88;
      }
    }

    v59 = v54 >> 4;
    v60 = (v55 + (v54 >> 4));
    if (v15 < v60)
    {
      v60 = v15;
    }

    if (v60 < v12)
    {
      v60 = v12;
    }

    v61 = *v60;
    if (v21)
    {
      v62 = (v55 + v20);
      if (v15 >= v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v15;
      }

      if (v63 < v12)
      {
        v63 = v12;
      }

      v64 = *v63;
      v65 = (v62 + v59);
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v12)
      {
        v65 = v12;
      }

      v66 = v18[v133];
      LODWORD(v57) = v57 - ((v66 & v57) >> v133) + ((v66 & v64) >> v133);
      LODWORD(v61) = v61 - ((v66 & v61) >> v133) + ((v66 & *v65) >> v133);
    }

    v67 = v18[v58];
    v68 = v57 - ((v67 & v57) >> v58);
    v69 = (v67 & v61) >> v58;
LABEL_77:
    LOWORD(v57) = v68 + v69;
    goto LABEL_78;
  }

  v83 = v13 - 4;
  v84 = v6 ^ 0xFFFF;
  v85 = (~(0xFFFF * v84 + 0x8000 + ((0xFFFF * v84 + 0x8000) >> 16)) >> 16) << 48;
  v132 = a5;
  v134 = (v8 + 16 * a3);
  do
  {
    v86 = *(v135 + 4);
    v87 = &v86[(v11 >> v10) * v9];
    v129 = a6;
    v127 = v11;
    if (v124 == 1)
    {
      if (a5 >= 1)
      {
        v89 = v132;
        v88 = v134;
        do
        {
          v90 = *v88;
          v88 += 2;
          v91 = &v87[v90];
          if (v83 < &v87[v90])
          {
            v91 = v83;
          }

          if (v91 < v86)
          {
            v91 = v86;
          }

          v92 = *v91;
          v93 = (v92 | 0xFFFF0000) * v84;
          if (v93 >= 0xFFFE8000)
          {
            v93 = -98304;
          }

          v94 = 0x100010001 * v92;
          v95 = (v92 - ((v93 + 0x8000 + ((v93 + 0x8000) >> 16)) >> 16));
          v96 = v94 | 0xFFFF000000000000;
          v97 = (v95 << 16) | (v95 << 32) | v85 | v95;
          if (v6 == 0xFFFF)
          {
            v97 = v96;
          }

          v98 = HIDWORD(v97);
          v99 = HIWORD(v97);
          v100 = bswap32(v97);
          v7[1] = v100;
          *v7 = HIWORD(v100);
          v7[2] = bswap32(v98) >> 16;
          v7[3] = __rev16(v99);
          v7 += 4;
          --v89;
        }

        while (v89);
      }
    }

    else
    {
      v102 = v132;
      v101 = v134;
      if (a5 >= 1)
      {
        do
        {
          v103 = *v101;
          v101 += 2;
          v104 = &v87[v103];
          if (v83 < &v87[v103])
          {
            v104 = v83;
          }

          if (v104 < *(v135 + 4))
          {
            v104 = *(v135 + 4);
          }

          v105 = *v104;
          v106 = (0x100010001 * v105) | 0xFFFF000000000000;
          v107 = (v105 | 0xFFFF0000) * v84;
          if (v107 >= 0xFFFE8000)
          {
            v107 = -98304;
          }

          v108 = (v105 - ((v107 + 0x8000 + ((v107 + 0x8000) >> 16)) >> 16));
          v109 = (v108 << 16) | (v108 << 32) | v85 | v108;
          if (v6 == 0xFFFF)
          {
            v110 = v106;
          }

          else
          {
            v110 = v109;
          }

          v111 = HIWORD(v110);
          if (HIWORD(v110))
          {
            if (v111 == 0xFFFF)
            {
              v112 = bswap32(v110);
              *v7 = HIWORD(v112);
              v7[1] = v112;
              v7[2] = bswap32(HIDWORD(v110)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v110, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v111 ^ 0xFFFF);
            }
          }

          v7 += 4;
          --v102;
        }

        while (v102);
      }
    }

    v9 = v122;
    v7 += 4 * v123;
    LOBYTE(v10) = v121;
    v11 = v127 + v120;
    a6 = v129 - 1;
  }

  while (v129 != 1);
  return result;
}