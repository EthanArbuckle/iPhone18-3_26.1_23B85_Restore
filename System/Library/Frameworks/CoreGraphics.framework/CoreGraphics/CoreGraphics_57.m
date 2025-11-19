_DWORD *RGBAf_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9)
{
  LODWORD(v9) = a2[2];
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3) - a5;
  v13 = *(a2 + 15);
  v14 = *(a2 + 16);
  v15 = *(a2 + 7);
  v16 = *(a2 + 9);
  v17 = *(a2 + 5) + v16 * a4;
  v18 = *(a1 + 32);
  v19 = &v18[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v20 = *(a1 + 176);
  result = _blt_float;
  if (v20)
  {
    v22 = a3;
    v23 = *(a2 + 11);
    v24 = *(a2 + 13);
    *&a9 = 1.0 - v9;
    v25 = vdupq_lane_s32(*&a9, 0);
    v89 = v14 + 16 * v22 + 8;
    do
    {
      if (((v24 - v17) | (v17 - v23)) < 0)
      {
        v28 = 0;
        v27 = 0;
      }

      else
      {
        v26 = ((v17 & ~(-1 << v15)) >> (v15 - 4)) & 0xF;
        if (v26 - 7 >= 9)
        {
          v27 = -v13;
        }

        else
        {
          v27 = v13;
        }

        v28 = weights_21890[v26] & 0xF;
      }

      v29 = &v18[(v17 >> v15) * v13];
      if (v10 == 1)
      {
        if (a5 >= 1)
        {
          v30 = v89;
          v31 = a5;
          do
          {
            v32 = *v30;
            v33 = &v29[*(v30 - 1)];
            if (v19 >= v33)
            {
              v34 = &v29[*(v30 - 1)];
            }

            else
            {
              v34 = v19;
            }

            if (v18 > v34)
            {
              v34 = v18;
            }

            v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
            if ((v32 & 0xF) != 0)
            {
              v36 = (v33 + (v32 >> 4));
              if (v19 < v36)
              {
                v36 = v19;
              }

              if (v18 > v36)
              {
                v36 = v18;
              }

              v37 = (*v36 << 24) | (v36[1] << 16) | (v36[2] << 8);
              if (v28)
              {
                v38 = (v33 + v27);
                if (v19 >= v38)
                {
                  v39 = v38;
                }

                else
                {
                  v39 = v19;
                }

                if (v18 > v39)
                {
                  v39 = v18;
                }

                v40 = &v38[v32 >> 4];
                if (v19 < v40)
                {
                  v40 = v19;
                }

                if (v18 > v40)
                {
                  v40 = v18;
                }

                v41 = BLEND8_21892[v28];
                v35 = v35 - ((v41 & v35) >> v28) + ((v41 & ((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8))) >> v28);
                v37 = v37 - ((v41 & v37) >> v28) + ((((*v40 << 24) | (v40[1] << 16) | (v40[2] << 8)) & v41) >> v28);
              }

              v35 = v35 - ((BLEND8_21892[*v30 & 0xF] & v35) >> (*v30 & 0xF)) + ((BLEND8_21892[*v30 & 0xF] & v37) >> (*v30 & 0xF));
            }

            else if (v28)
            {
              v42 = (v33 + v27);
              if (v19 < v33 + v27)
              {
                v42 = v19;
              }

              if (v18 > v42)
              {
                v42 = v18;
              }

              v35 = v35 - ((BLEND8_21892[v28] & v35) >> v28) + ((((*v42 << 24) | (v42[1] << 16) | (v42[2] << 8)) & BLEND8_21892[v28]) >> v28);
            }

            v43 = *&_blt_float[HIBYTE(v35)];
            if (v9 >= 1.0)
            {
              v44 = *&_blt_float[BYTE2(v35)];
              v45 = *&_blt_float[BYTE1(v35)];
              v46 = 1.0;
            }

            else
            {
              v43 = v9 * v43;
              v44 = v9 * *&_blt_float[BYTE2(v35)];
              v45 = v9 * *&_blt_float[BYTE1(v35)];
              v46 = v9;
            }

            v30 += 2;
            v11->f32[0] = v43;
            v11->f32[1] = v44;
            v11->f32[2] = v45;
            v11->f32[3] = v46;
            ++v11;
            --v31;
          }

          while (v31);
        }
      }

      else if (a5 >= 1)
      {
        v47 = v89;
        v48 = a5;
        do
        {
          v49 = *(v47 - 1);
          v50 = *v47;
          v51 = &v29[v49];
          if (v19 >= &v29[v49])
          {
            v52 = &v29[v49];
          }

          else
          {
            v52 = v19;
          }

          if (v18 > v52)
          {
            v52 = v18;
          }

          v53 = (*v52 << 24) | (v52[1] << 16) | (v52[2] << 8);
          if ((v50 & 0xF) != 0)
          {
            v54 = &v51[v50 >> 4];
            if (v19 < v54)
            {
              v54 = v19;
            }

            if (v18 > v54)
            {
              v54 = v18;
            }

            v55 = (*v54 << 24) | (v54[1] << 16) | (v54[2] << 8);
            if (v28)
            {
              v56 = &v51[v27];
              if (v19 >= &v51[v27])
              {
                v57 = &v51[v27];
              }

              else
              {
                v57 = v19;
              }

              if (v18 > v57)
              {
                v57 = v18;
              }

              v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
              v59 = &v56[v50 >> 4];
              if (v19 < v59)
              {
                v59 = v19;
              }

              if (v18 > v59)
              {
                v59 = v18;
              }

              v60 = BLEND8_21892[v28];
              v53 = v53 - ((v60 & v53) >> v28) + ((v60 & v58) >> v28);
              v55 = v55 - ((v60 & v55) >> v28) + ((((*v59 << 24) | (v59[1] << 16) | (v59[2] << 8)) & v60) >> v28);
            }

            v53 = v53 - ((BLEND8_21892[*v47 & 0xF] & v53) >> (*v47 & 0xF)) + ((BLEND8_21892[*v47 & 0xF] & v55) >> (*v47 & 0xF));
          }

          else if (v28)
          {
            v61 = &v51[v27];
            if (v19 < &v51[v27])
            {
              v61 = v19;
            }

            if (v18 > v61)
            {
              v61 = v18;
            }

            v53 = v53 - ((BLEND8_21892[v28] & v53) >> v28) + ((((*v61 << 24) | (v61[1] << 16) | (v61[2] << 8)) & BLEND8_21892[v28]) >> v28);
          }

          v62 = *&_blt_float[HIBYTE(v53)];
          if (v9 >= 1.0)
          {
            v64 = _blt_float[BYTE2(v53)];
            v65 = _blt_float[BYTE1(v53)];
            v11->f32[0] = v62;
            v11->i32[1] = v64;
            v11->i32[2] = v65;
            v11->f32[3] = 1.0;
          }

          else
          {
            v63.f32[0] = v9 * v62;
            if (v9 > 0.0)
            {
              v63.f32[1] = v9 * *&_blt_float[BYTE2(v53)];
              v63.i64[1] = __PAIR64__(LODWORD(v9), v9 * *&_blt_float[BYTE1(v53)]);
              *v11 = vmlaq_f32(v63, v25, *v11);
            }
          }

          v47 += 2;
          ++v11;
          --v48;
        }

        while (v48);
      }

      v11 += v12;
      v17 += v16;
      --a6;
    }

    while (a6);
  }

  else
  {
    v66 = (v14 + 16 * a3);
    *&a9 = 1.0 - v9;
    v67 = vdupq_lane_s32(*&a9, 0);
    do
    {
      v68 = &v18[(v17 >> v15) * v13];
      if (v10 == 1)
      {
        if (a5 >= 1)
        {
          v69 = v66;
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

            if (v18 > v72)
            {
              v72 = v18;
            }

            v73 = v72[1];
            v74 = v72[2];
            v75 = *&_blt_float[*v72];
            if (v9 >= 1.0)
            {
              v76 = *&_blt_float[v73];
              v77 = *&_blt_float[v74];
              v78 = 1.0;
            }

            else
            {
              v75 = v9 * v75;
              v76 = v9 * *&_blt_float[v73];
              v77 = v9 * *&_blt_float[v74];
              v78 = v9;
            }

            v11->f32[0] = v75;
            v11->f32[1] = v76;
            v11->f32[2] = v77;
            v11->f32[3] = v78;
            ++v11;
            --v70;
          }

          while (v70);
        }
      }

      else
      {
        v79 = v66;
        v80 = a5;
        if (a5 >= 1)
        {
          do
          {
            v81 = *v79;
            v79 += 2;
            v82 = &v68[v81];
            if (v19 < &v68[v81])
            {
              v82 = v19;
            }

            if (v18 > v82)
            {
              v82 = v18;
            }

            v83 = v82[1];
            v84 = v82[2];
            v85 = *&_blt_float[*v82];
            if (v9 >= 1.0)
            {
              v87 = _blt_float[v83];
              v88 = _blt_float[v84];
              v11->f32[0] = v85;
              v11->i32[1] = v87;
              v11->i32[2] = v88;
              v11->f32[3] = 1.0;
            }

            else
            {
              v86.f32[0] = v9 * v85;
              if (v9 > 0.0)
              {
                v86.f32[1] = v9 * *&_blt_float[v83];
                v86.i64[1] = __PAIR64__(LODWORD(v9), v9 * *&_blt_float[v84]);
                *v11 = vmlaq_f32(v86, v67, *v11);
              }
            }

            ++v11;
            --v80;
          }

          while (v80);
        }
      }

      v11 += v12;
      v17 += v16;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t RGBAf_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6, double a7, double a8, double a9, double a10, double a11, double a12, int32x4_t a13)
{
  v13 = *(a2 + 2);
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 3) - a5;
  v18 = *(a2 + 15);
  v17 = *(a2 + 16);
  v19 = *(a2 + 7);
  v20 = *(a2 + 9);
  v21 = *(a2 + 5) + v20 * a4;
  v22 = *(a1 + 32);
  v23 = &v22[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  if (*(a1 + 176))
  {
    v24 = *(a2 + 11);
    result = *(a2 + 13);
    v26 = vdup_n_s32(v13 < 1.0);
    if (v13 >= 1.0)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = *(a2 + 2);
    }

    v28 = v17 + 16 * a3 + 8;
    __asm { FMOV            V3.2S, #1.0 }

    v34 = vcltz_s32(vshl_n_s32(v26, 0x1FuLL));
    while (1)
    {
      if (((result - v21) | (v21 - v24)) < 0)
      {
        v37 = 0;
        v36 = 0;
      }

      else
      {
        v35 = ((v21 & ~(-1 << v19)) >> (v19 - 4)) & 0xF;
        if (v35 - 7 >= 9)
        {
          v36 = -v18;
        }

        else
        {
          v36 = v18;
        }

        v37 = weights_21890[v35] & 0xF;
      }

      v38 = &v22[(v21 >> v19) * v18];
      if (LODWORD(v14) == 1)
      {
        if (a5 >= 1)
        {
          v39 = v28;
          v40 = a5;
          do
          {
            v41 = *v39;
            v42 = &v38[*(v39 - 1)];
            if (v23 >= v42)
            {
              v43 = &v38[*(v39 - 1)];
            }

            else
            {
              v43 = v23;
            }

            if (v22 > v43)
            {
              v43 = v22;
            }

            v44 = *v43;
            if ((v41 & 0xF) != 0)
            {
              v45 = (v42 + (v41 >> 4));
              if (v23 < v45)
              {
                v45 = v23;
              }

              if (v22 > v45)
              {
                v45 = v22;
              }

              v46 = *v45;
              if (v37)
              {
                v47 = (v42 + v36);
                if (v23 >= v47)
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v23;
                }

                if (v22 > v48)
                {
                  v48 = v22;
                }

                v49 = *v48;
                v50 = &v47[v41 >> 4];
                if (v23 < v50)
                {
                  v50 = v23;
                }

                if (v22 > v50)
                {
                  v50 = v22;
                }

                v51 = BLEND8_21892[v37];
                v44 = v44 - ((v51 & v44) >> v37) + ((v51 & v49) >> v37);
                v46 = v46 - ((v51 & v46) >> v37) + ((v51 & *v50) >> v37);
              }

              v44 = v44 - ((BLEND8_21892[*v39 & 0xF] & v44) >> (*v39 & 0xF)) + ((BLEND8_21892[*v39 & 0xF] & v46) >> (*v39 & 0xF));
            }

            else if (v37)
            {
              v52 = (v42 + v36);
              if (v23 < v52)
              {
                v52 = v23;
              }

              if (v22 > v52)
              {
                v52 = v22;
              }

              v44 = v44 - ((BLEND8_21892[v37] & v44) >> v37) + ((BLEND8_21892[v37] & *v52) >> v37);
            }

            v53 = *&_blt_float[v44];
            if (v13 < 1.0)
            {
              v53 = v13 * v53;
            }

            v15->f32[0] = v53;
            v15->f32[1] = v53;
            v39 += 2;
            v15->f32[2] = v53;
            v15->f32[3] = v27;
            ++v15;
            --v40;
          }

          while (v40);
        }

        goto LABEL_82;
      }

      if (a5 >= 1)
      {
        break;
      }

LABEL_82:
      v15 += v16;
      v21 += v20;
      if (!--a6)
      {
        return result;
      }
    }

    v54 = v28;
    v55 = a5;
    while (1)
    {
      v56 = *v54;
      v57 = &v38[*(v54 - 1)];
      if (v23 >= v57)
      {
        v58 = &v38[*(v54 - 1)];
      }

      else
      {
        v58 = v23;
      }

      if (v22 > v58)
      {
        v58 = v22;
      }

      v59 = *v58;
      if ((v56 & 0xF) != 0)
      {
        v60 = (v57 + (v56 >> 4));
        if (v23 < v60)
        {
          v60 = v23;
        }

        if (v22 > v60)
        {
          v60 = v22;
        }

        v61 = *v60;
        if (v37)
        {
          v62 = (v57 + v36);
          if (v23 >= v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = v23;
          }

          if (v22 > v63)
          {
            v63 = v22;
          }

          v64 = *v63;
          v65 = &v62[v56 >> 4];
          if (v23 < v65)
          {
            v65 = v23;
          }

          if (v22 > v65)
          {
            v65 = v22;
          }

          v66 = BLEND8_21892[v37];
          v59 = v59 - ((v66 & v59) >> v37) + ((v66 & v64) >> v37);
          v61 = v61 - ((v66 & v61) >> v37) + ((v66 & *v65) >> v37);
        }

        v59 = v59 - ((BLEND8_21892[*v54 & 0xF] & v59) >> (*v54 & 0xF)) + ((BLEND8_21892[*v54 & 0xF] & v61) >> (*v54 & 0xF));
      }

      else if (v37)
      {
        v67 = (v57 + v36);
        if (v23 < v67)
        {
          v67 = v23;
        }

        if (v22 > v67)
        {
          v67 = v22;
        }

        v59 = v59 - ((BLEND8_21892[v37] & v59) >> v37) + ((BLEND8_21892[v37] & *v67) >> v37);
      }

      v68.i32[1] = HIDWORD(_D3);
      v68.i32[0] = _blt_float[v59];
      *a13.i8 = vbsl_s8(v34, vmul_n_f32(v68, v13), v68);
      v69 = vzip1q_s32(a13, a13);
      v69.i32[2] = a13.i32[0];
      if (*&a13.i32[1] >= 1.0)
      {
        goto LABEL_80;
      }

      if (*&a13.i32[1] > 0.0)
      {
        break;
      }

LABEL_81:
      v54 += 2;
      ++v15;
      if (!--v55)
      {
        goto LABEL_82;
      }
    }

    v69 = vmlaq_n_f32(v69, *v15, 1.0 - *&a13.i32[1]);
LABEL_80:
    *v15 = v69;
    goto LABEL_81;
  }

  v70 = (v17 + 16 * a3);
  result = a5;
  v71 = vdup_n_s32(v13 < 1.0);
  if (v13 >= 1.0)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = *(a2 + 2);
  }

  __asm { FMOV            V3.2S, #1.0 }

  v74 = vcltz_s32(vshl_n_s32(v71, 0x1FuLL));
  do
  {
    v75 = &v22[(v21 >> v19) * v18];
    if (LODWORD(v14) != 1)
    {
      v81 = v70;
      v82 = a5;
      if (a5 < 1)
      {
        goto LABEL_109;
      }

      while (1)
      {
        v83 = *v81;
        v81 += 2;
        v84 = &v75[v83];
        if (v23 < &v75[v83])
        {
          v84 = v23;
        }

        if (v22 > v84)
        {
          v84 = v22;
        }

        v85.i32[1] = HIDWORD(_D3);
        v85.i32[0] = _blt_float[*v84];
        *a13.i8 = vbsl_s8(v74, vmul_n_f32(v85, v13), v85);
        v86 = vzip1q_s32(a13, a13);
        v86.i32[2] = a13.i32[0];
        if (*&a13.i32[1] >= 1.0)
        {
          goto LABEL_107;
        }

        if (*&a13.i32[1] > 0.0)
        {
          break;
        }

LABEL_108:
        ++v15;
        if (!--v82)
        {
          goto LABEL_109;
        }
      }

      v86 = vmlaq_n_f32(v86, *v15, 1.0 - *&a13.i32[1]);
LABEL_107:
      *v15 = v86;
      goto LABEL_108;
    }

    if (a5 >= 1)
    {
      v76 = v70;
      v77 = a5;
      do
      {
        v78 = *v76;
        v76 += 2;
        v79 = &v75[v78];
        if (v23 < &v75[v78])
        {
          v79 = v23;
        }

        if (v22 > v79)
        {
          v79 = v22;
        }

        v80 = *&_blt_float[*v79];
        if (v13 < 1.0)
        {
          v80 = v13 * v80;
        }

        v15->f32[0] = v80;
        v15->f32[1] = v80;
        v15->f32[2] = v80;
        v15->f32[3] = v72;
        ++v15;
        --v77;
      }

      while (v77);
    }

LABEL_109:
    v15 += v16;
    v21 += v20;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t RGBAf_shade(uint64_t a1, __n128 a2)
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
  RGBAf_image_mark(v6, &v13, v9, v11);
  if (v17 && (v17 < &v19 || v20 < v17))
  {
    free(v17);
  }

  return 1;
}

void RGBAf_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 272);
  v7 = *(a1 + 296) + ((*(a1 + 288) * (v6[1] * a3)) + (v5 * (v6[1] * a2)));
  v8 = *(a1 + 336);
  v9 = *(a1 + 344);
  v10 = *(a1 + 304);
  v11 = *(a1 + 308);
  LODWORD(v12) = *(a1 + 320);
  v13 = *(a1 + 324);
  v16 = a1 + 144;
  v14 = *(a1 + 144);
  v15 = *(v16 + 8);
  v17 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v18 = *(a1 + 392);
  }

  else
  {
    v18 = v6;
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  if (v20)
  {
    v21 = *(a1 + 40);
  }

  else
  {
    v21 = v6;
  }

  if (v5 != 0.0)
  {
    v23 = &v15[1] + 1;
    v24 = vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL));
    while (1)
    {
      LODWORD(v25) = v12;
      if (v7 >= v10)
      {
        LODWORD(v25) = v13;
        if (v7 <= v11)
        {
          LODWORD(v25) = (v9 * (v7 - v8));
        }
      }

      if ((v25 & 0x80000000) != 0)
      {
        if (!v17)
        {
          v30 = 0;
          goto LABEL_30;
        }

        v27 = *v18;
        v29 = vmul_n_f32(*v17, *v18);
        v28 = *v18 * v17[1].f32[0];
      }

      else
      {
        v26 = v19 + 4 * (3 * v25);
        v25 = v25;
        if (!v20)
        {
          v25 = 0;
        }

        v27 = v21[v25];
        v28 = *(v26 + 8);
        v29 = vbsl_s8(v24, *v26, vmul_n_f32(*v26, v27));
        if (v20)
        {
          v28 = v27 * v28;
        }
      }

      *(v23 - 3) = v29;
      v30 = -1;
      *(v23 - 1) = v28;
      *v23 = v27;
LABEL_30:
      v7 = v5 + v7;
      *v14 = v30;
      v14 = (v14 + 1);
      v23 += 4;
      if (!--a4)
      {
        return;
      }
    }
  }

  if (v7 >= v10)
  {
    LODWORD(v12) = v13;
    if (v7 <= v11)
    {
      LODWORD(v12) = (v9 * (v7 - v8));
    }
  }

  if ((v12 & 0x80000000) == 0 || v17)
  {
    if ((v12 & 0x80000000) != 0)
    {
      v32 = *v18;
      v35 = vmul_n_f32(*v17, *v18);
      v33 = *v18 * v17[1].f32[0];
    }

    else
    {
      v31 = (v19 + 4 * (3 * v12));
      v12 = v12;
      if (!v20)
      {
        v12 = 0;
      }

      v32 = v21[v12];
      v33 = v31[1].f32[0];
      v34 = vmul_n_f32(*v31, v32);
      if (v20)
      {
        v33 = v32 * v33;
      }

      v35 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL)), *v31, v34);
    }

    v36 = a4 + 4;
    do
    {
      *v15 = v35;
      v15[1].f32[0] = v33;
      v15[1].f32[1] = v32;
      v15[2] = v35;
      v15[3].f32[0] = v33;
      v15[3].f32[1] = v32;
      v15[4] = v35;
      v15[5].f32[0] = v33;
      v15[5].f32[1] = v32;
      v15[6] = v35;
      v15[7].f32[0] = v33;
      v15[7].f32[1] = v32;
      v15 += 8;
      v36 -= 4;
      *v14++ = -1;
    }

    while (v36 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = a4;
    }

    bzero(v14, ((a4 - v22 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t RGBAf_shade_custom_RGB(uint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(result + 272);
  v7 = *(v6 + 4);
  v8 = v7 * a2;
  v9 = v7 * a3;
  v10 = *(result + 280);
  *a6.i8 = vadd_f32(*(result + 296), vmla_n_f32(vmul_n_f32(*(result + 288), v9), v10, v8));
  v11 = *(result + 304);
  v12 = *(result + 336);
  v13 = *(result + 348);
  v14 = *(result + 344);
  v15 = *(result + 356);
  v16 = *(result + 144);
  v17 = *(result + 384);
  v18 = *(result + 392);
  if (!v18)
  {
    v18 = *(result + 272);
  }

  v19 = *(result + 32);
  v20 = *(result + 40);
  if (v20)
  {
    v21 = *(result + 48);
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v6 = *(result + 40);
  }

  v22 = 3 * *(result + 48);
  v23 = (*(result + 152) + 12);
  v24 = vcltz_s32(vshl_n_s32(vdup_n_s32(v20 == 0), 0x1FuLL));
  do
  {
    v25 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v11, v25))), vmovn_s32(vcgtq_f32(v25, v11)))) & 1) == 0)
    {
      v29 = (v15 * (*&a6.i32[1] - v13));
      v30 = v14 * (*a6.i32 - v12);
      v31 = v19 + 4 * v22 * v29 + 12 * v30;
      v32 = v6 + 4 * v21 * v29;
      result = v30;
      if (!v20)
      {
        result = 0;
      }

      v26 = *(v32 + 4 * result);
      v28 = *(v31 + 8);
      v27 = vbsl_s8(v24, *v31, vmul_n_f32(*v31, v26));
      if (v20)
      {
        v28 = v26 * v28;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      v26 = *v18;
      v27 = vmul_n_f32(*v17, *v18);
      v28 = *v18 * v17[1].f32[0];
LABEL_16:
      *(v23 - 3) = v27;
      v33 = -1;
      *(v23 - 1) = v28;
      *v23 = v26;
      goto LABEL_18;
    }

    v33 = 0;
LABEL_18:
    *a6.i8 = vadd_f32(v10, *a6.i8);
    *v16++ = v33;
    v23 += 4;
    --a4;
  }

  while (a4);
  return result;
}

void RGBAf_shade_conic_RGB(float32x2_t *a1, uint64_t a2, uint64_t a3, int a4, double a5, __n128 a6)
{
  v7 = a1[35];
  a6.n128_u64[0] = vadd_f32(a1[37], vmla_n_f32(vmul_n_f32(a1[36], *(*&a1[34] + 4) * a3), v7, *(*&a1[34] + 4) * a2));
  v8 = a1[42].f32[0];
  v9 = a1[43].f32[0];
  v10 = a1[38].f32[0];
  v12 = a1[18];
  v11 = a1[19];
  v13 = a1[4];
  v14 = a1[5];
  if (v14)
  {
    v15 = a1[5];
  }

  else
  {
    v15 = a1[34];
  }

  v16 = a1[38].f32[1] - v10;
  do
  {
    v32 = a6;
    v17 = v9 * ((v10 + (((atan2f(a6.n128_f32[1], a6.n128_f32[0]) * 0.15915) + 0.5) * v16)) - v8);
    LODWORD(v18) = vcvtms_s32_f32(v17);
    v19 = ceilf(v17);
    v20 = vcvtms_s32_f32(v9 + v17);
    if (v17 < 0.0)
    {
      LODWORD(v18) = v20;
    }

    v21 = ceilf(v17 - v9);
    if (v17 > v9)
    {
      v19 = v21;
    }

    LODWORD(v22) = v19;
    v23 = (*&v13 + 12 * v18);
    v18 = v18;
    if (!*&v14)
    {
      v18 = 0;
    }

    v24 = *(*&v15 + 4 * v18);
    v25 = v23[1].f32[0];
    v26 = (*&v13 + 12 * v22);
    v22 = v22;
    if (!*&v14)
    {
      v22 = 0;
    }

    v27 = *(*&v15 + 4 * v22);
    v28 = *v23;
    v29 = *v26;
    v30 = v26[1].f32[0];
    if (v14)
    {
      v28 = vmul_n_f32(v28, v24);
      v25 = v24 * v25;
      v29 = vmul_n_f32(v29, v27);
      v30 = v27 * v30;
    }

    v31 = v17 - floorf(v17);
    *v11 = vmla_n_f32(v28, vsub_f32(v29, v28), v31);
    v11[1].f32[0] = v25 + (v31 * (v30 - v25));
    v11[1].f32[1] = v24 + (v31 * (v27 - v24));
    a6.n128_u64[1] = v32.n128_u64[1];
    a6.n128_u64[0] = vadd_f32(v7, v32.n128_u64[0]);
    v11 += 2;
    *v12++ = -1;
    --a4;
  }

  while (a4);
}

void RGBAf_shade_radial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 400);
  v6 = *(a1 + 280);
  v7 = *(a1 + 284);
  v8 = *(a1 + 272);
  v9 = v8[1];
  v10 = v9 * a2;
  v11 = v9 * a3;
  v12 = *(a1 + 296) + ((*(a1 + 288) * v11) + (v6 * v10));
  v13 = *(a1 + 300) + ((v11 * *(a1 + 292)) + (v7 * v10));
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 324);
  v19 = v5[2];
  v20 = v5[4];
  v21 = v5[5];
  v22 = v5[7];
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 384);
  if (*(a1 + 392))
  {
    v27 = *(a1 + 392);
  }

  else
  {
    v27 = v8;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  if (v29)
  {
    v8 = *(a1 + 40);
  }

  if (v19 != 0.0 || v22 != 0.0 || v7 != 0.0)
  {
    v33 = *(a1 + 320);
    v34 = v5[3];
    v35 = v5[8];
    v36 = -v5[6];
    v37 = v17 - v16;
    v38 = &v24[1] + 1;
    v39 = vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL));
    while (1)
    {
      v40 = v36 + ((v12 + v12) * v19);
      v41 = ((v13 * v13) + (v12 * v12)) - v22;
      if (v21 == 0.0)
      {
        v48 = v41 / v40;
      }

      else
      {
        v42 = ((v21 * -4.0) * v41) + (v40 * v40);
        if (v42 < 0.0)
        {
          goto LABEL_48;
        }

        v43 = sqrtf(v42);
        v44 = v35 * (v40 - v43);
        v45 = v40 + v43;
        v46 = v35 * v45;
        v47 = (v35 * v45) <= v44;
        if ((v35 * v45) <= v44)
        {
          v48 = v35 * v45;
        }

        else
        {
          v48 = v44;
        }

        if (v47)
        {
          v46 = v44;
        }

        if (v46 < 0.0)
        {
          v49 = v46 < v34;
LABEL_30:
          LODWORD(v50) = v33;
          if (v49)
          {
            goto LABEL_48;
          }

LABEL_31:
          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v46 <= 1.0)
        {
          v51 = v16 + (v46 * v37);
          goto LABEL_42;
        }

        if ((v18 & 0x80000000) == 0)
        {
          LODWORD(v50) = v18;
          if (v46 <= v20)
          {
LABEL_43:
            v52 = v28 + 4 * (3 * v50);
            v50 = v50;
            if (!v29)
            {
              v50 = 0;
            }

            v53 = v8[v50];
            v54 = *(v52 + 8);
            v55 = vbsl_s8(v39, *v52, vmul_n_f32(*v52, v53));
            if (v29)
            {
              v54 = v53 * v54;
            }

            goto LABEL_50;
          }
        }
      }

      if (v48 < 0.0)
      {
        v49 = v48 < v34;
        goto LABEL_30;
      }

      if (v48 > 1.0)
      {
        LODWORD(v50) = v18;
        if (v48 > v20)
        {
          goto LABEL_48;
        }

        goto LABEL_31;
      }

      v51 = v16 + (v48 * v37);
LABEL_42:
      LODWORD(v50) = (v15 * (v51 - v14));
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_48:
      if (!v26)
      {
        v56 = 0;
        goto LABEL_52;
      }

      v53 = *v27;
      v55 = vmul_n_f32(*v26, *v27);
      v54 = *v27 * v26[1].f32[0];
LABEL_50:
      *(v38 - 3) = v55;
      v56 = -1;
      *(v38 - 1) = v54;
      *v38 = v53;
LABEL_52:
      v12 = v6 + v12;
      v13 = v7 + v13;
      *v23++ = v56;
      v38 += 4;
      if (!--a4)
      {
        return;
      }
    }
  }

  v30 = v13 * v13;
  v31 = -v21;
  if (v30 <= -v21)
  {
    v57 = fabsf(v5[8]);
    v58 = v21 * -4.0;
    v59 = v17 - v16;
    v60 = v28 + 4 * (3 * v18);
    if (v29)
    {
      v61 = v18;
    }

    else
    {
      v61 = 0;
    }

    v62 = a4 + 2;
    v63 = vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL));
    while (1)
    {
      v64 = v30 + (v12 * v12);
      v65 = v6 + v12;
      v66 = v30 + (v65 * v65);
      if (v64 > v31 && v66 > v31)
      {
        if ((v18 & 0x80000000) != 0)
        {
          if (!v26)
          {
            v87 = 0;
            v86 = 0;
            goto LABEL_89;
          }

          v75 = *v27;
          v77 = vmul_n_f32(*v26, *v27);
          v76 = *v27 * v26[1].f32[0];
        }

        else
        {
          v75 = v8[v61];
          v76 = *(v60 + 8);
          if (v29)
          {
            v76 = v75 * v76;
          }

          v77 = vbsl_s8(v63, *v60, vmul_n_f32(*v60, v75));
        }

        *v24 = v77;
        v24[1].f32[0] = v76;
        v24[1].f32[1] = v75;
        goto LABEL_87;
      }

      v68 = sqrtf(v58 * v66);
      v69 = v57 * sqrtf(v58 * v64);
      v70 = v57 * v68;
      v71 = (v15 * ((v16 + (v69 * v59)) - v14));
      v72 = (v15 * ((v16 + ((v57 * v68) * v59)) - v14));
      if (v69 <= 1.0 && v70 <= 1.0)
      {
        v78 = vceqd_s64(v29, 0);
        v79 = v28 + 12 * v71;
        v71 = v71;
        if (!v29)
        {
          v71 = 0;
        }

        v80 = v8[v71];
        v81 = vbsl_s8(v78, *v79, vmul_n_f32(*v79, v80));
        v82 = v72;
        if (v29)
        {
          v83 = v80 * *(v79 + 8);
        }

        else
        {
          v82 = 0;
          v83 = *(v79 + 8);
        }

        v84 = v28 + 12 * v72;
        v75 = v8[v82];
        v85 = *(v84 + 8);
        v77 = vbsl_s8(v63, *v84, vmul_n_f32(*v84, v75));
        *v24 = v81;
        if (v29)
        {
          v76 = v75 * v85;
        }

        else
        {
          v76 = v85;
        }

        v24[1].f32[0] = v83;
        v24[1].f32[1] = v80;
LABEL_87:
        v86 = -1;
        goto LABEL_88;
      }

      if (v69 <= 1.0)
      {
        if ((v71 & 0x80000000) == 0)
        {
          v74 = (3 * v71);
          if (!v29)
          {
            v71 = 0;
          }

LABEL_94:
          v88 = v28 + 4 * v74;
          v89 = v8[v71];
          v90 = *(v88 + 8);
          v91 = vbsl_s8(v63, *v88, vmul_n_f32(*v88, v89));
          if (v29)
          {
            v90 = v89 * v90;
          }

          goto LABEL_99;
        }
      }

      else if (v69 <= v20)
      {
        v71 = v61;
        v74 = (3 * v18);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_94;
        }
      }

      if (!v26)
      {
        v86 = 0;
        goto LABEL_100;
      }

      v89 = *v27;
      v91 = vmul_n_f32(*v26, *v27);
      v90 = *v27 * v26[1].f32[0];
LABEL_99:
      *v24 = v91;
      v86 = -1;
      v24[1].f32[0] = v90;
      v24[1].f32[1] = v89;
LABEL_100:
      if (v70 <= 1.0)
      {
        if ((v72 & 0x80000000) != 0)
        {
          goto LABEL_110;
        }

        v92 = (3 * v72);
        if (!v29)
        {
          v72 = 0;
        }
      }

      else if (v70 > v20 || (v72 = v61, v92 = (3 * v18), (v18 & 0x80000000) != 0))
      {
LABEL_110:
        if (!v26)
        {
          v87 = 0;
          goto LABEL_89;
        }

        v75 = *v27;
        v77 = vmul_n_f32(*v26, *v27);
        v76 = *v27 * v26[1].f32[0];
        goto LABEL_88;
      }

      v93 = v28 + 4 * v92;
      v75 = v8[v72];
      v76 = *(v93 + 8);
      v77 = vbsl_s8(v63, *v93, vmul_n_f32(*v93, v75));
      if (v29)
      {
        v76 = v75 * v76;
      }

LABEL_88:
      v24[2] = v77;
      v87 = -1;
      v24[3].f32[0] = v76;
      v24[3].f32[1] = v75;
LABEL_89:
      v12 = v6 + v65;
      v24 += 4;
      *v23 = v86;
      v23[1] = v87;
      v23 += 2;
      v62 -= 2;
      if (v62 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v18 & 0x80000000) == 0)
  {
    if ((v18 & 0x80000000) != 0)
    {
      v95 = *v27;
      v98 = vmul_n_f32(*v26, *v27);
      v96 = *v27 * v26[1].f32[0];
    }

    else
    {
      v94 = (v28 + 12 * v18);
      if (!v29)
      {
        v18 = 0;
      }

      v95 = v8[v18];
      v96 = v94[1].f32[0];
      v97 = vmul_n_f32(*v94, v95);
      if (v29)
      {
        v96 = v95 * v96;
      }

      v98 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v29 == 0), 0x1FuLL)), *v94, v97);
    }

    v99 = a4 + 4;
    do
    {
      *v24 = v98;
      v24[1].f32[0] = v96;
      v24[1].f32[1] = v95;
      v24[2] = v98;
      v24[3].f32[0] = v96;
      v24[3].f32[1] = v95;
      v24[4] = v98;
      v24[5].f32[0] = v96;
      v24[5].f32[1] = v95;
      v24[6] = v98;
      v24[7].f32[0] = v96;
      v24[7].f32[1] = v95;
      v24 += 8;
      v99 -= 4;
      *v23 = -1;
      v23 += 4;
    }

    while (v99 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = a4;
    }

    bzero(v23, ((a4 - v32 + 3) & 0xFFFFFFFC) + 4);
  }
}

int8x16_t *RGBAF_pattern(uint64_t a1, int8x16_t *a2, unsigned int a3, int a4, uint64_t a5, float a6, double a7, double a8, double a9, double a10, int8x16_t a11)
{
  v14 = *(*a1 + 64);
  a11.i32[0] = *v14;
  LODWORD(a10) = v14[1];
  if (a2 && a3 > 0xF || (v22 = a11.i64[0], v23 = a10, v15 = malloc_type_malloc(0x40uLL, 0x1080040E00A32E4uLL), a11.i64[0] = v22, a10 = v23, (a2 = v15) != 0))
  {
    if (*a11.i32 <= a6)
    {
      v16 = a6;
    }

    else
    {
      v16 = *a11.i32;
    }

    if (*&a10 < a6)
    {
      v16 = *&a10;
    }

    if (a5)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        *a11.i32 = v16 * *a5;
        break;
      case 4:
        LODWORD(a7) = *(a5 + 16);
        *a11.i32 = v16 * ((*&a10 - *a5) - *&a7);
        v18 = vsub_f32(vsub_f32(vdup_lane_s32(*&a10, 0), *(a5 + 4)), vdup_lane_s32(*&a7, 0));
        goto LABEL_17;
      case 3:
        *a11.i32 = v16 * *a5;
        v18 = *(a5 + 4);
LABEL_17:
        v19 = vmul_n_f32(v18, v16);
LABEL_20:
        *a2 = xmmword_18439CB10;
        a2[1].i32[2] = 0;
        a2[1].i64[0] = 1;
        a11.i32[1] = v19.i32[0];
        a11.i64[1] = __PAIR64__(LODWORD(v16), v19.u32[1]);
        a2[3] = vrev32q_s8(a11);
        if (v16 >= *&a10)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2 + 3;
        }

        a2[2].i64[0] = a2[3].i64;
        a2[2].i64[1] = v20;
        return a2;
    }

    v19 = vdup_lane_s32(*a11.i8, 0);
    goto LABEL_20;
  }

  return a2;
}

uint64_t RGBAF_mark_inner(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v811 = *MEMORY[0x1E69E9840];
  v16 = *(v3 + 96);
  v17 = *(v3 + 48);
  v18 = *(v2 + 16 * *v3 + 8 * (v16 == 0) + 4 * (v17 == 0));
  if (v18 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = v3;
  v21 = *(v3 + 4);
  v22 = v21 - 1;
  if (v21 < 1)
  {
    return 0;
  }

  v23 = *(v3 + 8);
  v24 = (v23 - 1);
  if (v23 < 1)
  {
    return 0;
  }

  v25 = *(v3 + 136);
  if ((*v3 & 0xFF0000) == 0x50000 || !v25)
  {
    v27 = *v3 & 0xFF00;
    v758 = *(v2 + 16 * *v3 + 8 * (v16 == 0) + 4 * (v17 == 0));
    v755 = v3;
    if (v27 == 1024)
    {
      v810[0] = *(v3 + 4);
      v800[0] = v23;
      v795 = **(v3 + 88);
      v28 = vrev32q_s8(v795);
      v29 = v28.f32[3];
      *&v11 = 1.0 - v28.f32[3];
      v30 = *(v3 + 12);
      v31 = *(v3 + 28) >> 4;
      v32 = *(v3 + 40) + 16 * v31 * *(v3 + 16);
      v33 = v32 + 16 * v30;
      v797 = v28;
      v793 = v11;
      v778 = *(v3 + 28);
      v791 = v33;
      if (v25)
      {
        shape_enum_clip_alloc(v2, v3, v25, 1, 1, 1, *(v3 + 104), *(v3 + 108), v21, v23);
        v35 = v34;
        if (!v34)
        {
          return 1;
        }

        goto LABEL_310;
      }

      v35 = 0;
      v58 = (v32 + 16 * v30);
LABEL_51:
      v84 = v31 - v21;
      v85 = v21;
      switch(v18)
      {
        case 0:
          v86 = v800[0];
          v87 = 16 * v21;
          v88 = v778 & 0xFFFFFFF0;
          goto LABEL_314;
        case 1:
          v180 = *(v755 + 88);
          if (v180)
          {
            CGSFillDRAM64(v58, v778 & 0xFFFFFFF0, 16 * v21, v800[0], v180, 16, 16, 1, 0, 0);
            if (!v35)
            {
              return 1;
            }

            goto LABEL_309;
          }

          v86 = v800[0];
          v88 = v778 & 0xFFFFFFF0;
          v87 = 16 * v21;
LABEL_314:
          CGBlt_fillBytes(v87, v86, 0, v58->i8, v88);
          if (v35)
          {
            goto LABEL_309;
          }

          return 1;
        case 2:
          v159 = vdupq_lane_s32(*&v11, 0);
          v160 = v800[0];
          do
          {
            if (v21 < 4)
            {
              v164 = v21;
            }

            else
            {
              v161 = (v21 >> 2) + 1;
              do
              {
                v162 = vrev32q_s8(vmlaq_f32(v28, v159, vrev32q_s8(v58[1])));
                *v58 = vrev32q_s8(vmlaq_f32(v28, v159, vrev32q_s8(*v58)));
                v58[1] = v162;
                v163 = vrev32q_s8(vmlaq_f32(v28, v159, vrev32q_s8(v58[3])));
                v58[2] = vrev32q_s8(vmlaq_f32(v28, v159, vrev32q_s8(v58[2])));
                v58[3] = v163;
                v58 += 4;
                --v161;
              }

              while (v161 > 1);
              v164 = v21 & 3;
            }

            if (v164 >= 1)
            {
              v165 = v164 + 1;
              do
              {
                *v58 = vrev32q_s8(vmlaq_f32(v28, v159, vrev32q_s8(*v58)));
                ++v58;
                --v165;
              }

              while (v165 > 1);
            }

            v58 += v84;
            --v160;
          }

          while (v160);
          goto LABEL_295;
        case 3:
          v174 = v800[0];
          do
          {
            v175 = v21;
            do
            {
              v176 = COERCE_FLOAT(bswap32(v58->u32[3]));
              if (v176 <= 0.0)
              {
                v58->i64[0] = 0;
                v58->i64[1] = 0;
              }

              else
              {
                if (v176 >= 1.0)
                {
                  v177 = v795;
                }

                else
                {
                  v177 = vrev32q_s8(vmulq_n_f32(v28, v176));
                }

                *v58 = v177;
              }

              ++v58;
              --v175;
            }

            while (v175);
            v58 += v84;
            --v174;
          }

          while (v174);
          goto LABEL_295;
        case 4:
          v125 = v800[0];
          do
          {
            v126 = v21;
            do
            {
              v127 = 1.0 - COERCE_FLOAT(bswap32(v58->u32[3]));
              if (v127 <= 0.0)
              {
                v58->i64[0] = 0;
                v58->i64[1] = 0;
              }

              else
              {
                if (v127 >= 1.0)
                {
                  v128 = v795;
                }

                else
                {
                  v128 = vrev32q_s8(vmulq_n_f32(v28, v127));
                }

                *v58 = v128;
              }

              ++v58;
              --v126;
            }

            while (v126);
            v58 += v84;
            --v125;
          }

          while (v125);
          goto LABEL_295;
        case 5:
          v198 = v800[0];
          do
          {
            v199 = v21;
            do
            {
              v200 = vrev32q_s8(*v58);
              *v58++ = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v200, *&v11), v28, v200, 3));
              --v199;
            }

            while (v199);
            v58 += v84;
            --v198;
          }

          while (v198);
          goto LABEL_295;
        case 6:
          v217 = v800[0];
          while (1)
          {
            v218 = v21;
            do
            {
              v219 = COERCE_FLOAT(bswap32(v58->u32[3]));
              v220 = 1.0 - v219;
              if ((1.0 - v219) >= 1.0)
              {
                v58->i64[0] = v795.i64[0];
                v58->i32[2] = v795.i32[2];
                v222 = v795.u32[3];
              }

              else
              {
                if (v220 <= 0.0)
                {
                  goto LABEL_237;
                }

                v221 = bswap32(COERCE_UNSIGNED_INT(COERCE_FLOAT(bswap32(v58->u32[2])) + (v28.f32[2] * v220)));
                v222 = bswap32(COERCE_UNSIGNED_INT(v219 + (v29 * v220)));
                *v58->i8 = vrev32_s8(vmla_n_f32(vrev32_s8(*v58->i8), *v28.f32, v220));
                v58->i32[2] = v221;
              }

              v58->i32[3] = v222;
LABEL_237:
              ++v58;
              --v218;
            }

            while (v218);
            v58 += v84;
            if (!--v217)
            {
              goto LABEL_295;
            }
          }

        case 7:
          v178 = v800[0];
          do
          {
            v179 = v21;
            do
            {
              *v58 = vrev32q_s8(vmulq_laneq_f32(vrev32q_s8(*v58), v28, 3));
              ++v58;
              --v179;
            }

            while (v179);
            v58 += v84;
            --v178;
          }

          while (v178);
          goto LABEL_295;
        case 8:
          v234 = v800[0];
          do
          {
            v235 = v21;
            do
            {
              *v58 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v58), *&v11));
              ++v58;
              --v235;
            }

            while (v235);
            v58 += v84;
            --v234;
          }

          while (v234);
          goto LABEL_295;
        case 9:
          v134 = v800[0];
          do
          {
            v135 = v21;
            do
            {
              v136 = vrev32q_s8(*v58);
              *v58++ = vrev32q_s8(vmlaq_n_f32(vmulq_laneq_f32(v136, v28, 3), v28, 1.0 - v136.f32[3]));
              --v135;
            }

            while (v135);
            v58 += v84;
            --v134;
          }

          while (v134);
          goto LABEL_295;
        case 10:
          v231 = v800[0];
          do
          {
            v232 = v21;
            do
            {
              v233 = vrev32q_s8(*v58);
              *v58++ = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v233, *&v11), v28, 1.0 - v233.f32[3]));
              --v232;
            }

            while (v232);
            v58 += v84;
            --v231;
          }

          while (v231);
          goto LABEL_295;
        case 11:
          v120 = vsub_f32(vdup_laneq_s32(v28, 3), *v28.f32);
          v121 = v800[0];
          do
          {
            v122 = v21;
            do
            {
              v123 = COERCE_FLOAT(bswap32(v58->u32[2]));
              v12.i32[0] = bswap32(v58->u32[3]);
              if (!v17)
              {
                *v12.i32 = 1.0;
              }

              *&v13 = *v12.i32 + v29;
              v124 = (v29 - v28.f32[2]) + (*v12.i32 - v123);
              if ((*v12.i32 + v29) > 1.0)
              {
                *&v13 = 1.0;
              }

              *v12.i8 = vsub_f32(vdup_lane_s32(*&v13, 0), vadd_f32(v120, vsub_f32(vdup_lane_s32(*v12.i8, 0), vrev32_s8(*v58->i8))));
              *&v12.i32[2] = *&v13 - v124;
              v12.i32[3] = LODWORD(v13);
              *v58++ = vrev32q_s8(v12);
              --v122;
            }

            while (v122);
            v58 += v84;
            --v121;
          }

          while (v121);
          goto LABEL_295;
        case 12:
          v129 = v800[0];
          do
          {
            v130 = v21;
            do
            {
              v131 = COERCE_FLOAT(bswap32(v58->u32[2]));
              v132 = v29 + COERCE_FLOAT(bswap32(v58->u32[3]));
              *v133.i8 = vadd_f32(*v28.f32, vrev32_s8(*v58->i8));
              if (v132 > 1.0)
              {
                v132 = 1.0;
              }

              v133.i64[1] = __PAIR64__(LODWORD(v132), v28.f32[2] + v131);
              *v58++ = vrev32q_s8(v133);
              --v130;
            }

            while (v130);
            v58 += v84;
            --v129;
          }

          while (v129);
          goto LABEL_295;
        case 13:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v209 = v28.i32[2];
          v210 = v800[0];
          while (1)
          {
            v211 = v21;
            do
            {
              v212 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v212;
              if (v17)
              {
                v213 = v212;
                if (v212 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v214 = v795.u32[3];
                  goto LABEL_227;
                }
              }

              else
              {
                v213 = 1.0;
              }

              v215 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v215.i32[1];
              *v216.i32 = PDAmultiplyPDA(*v215.i32, v9, v10, v11, v213, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v209)), v29);
              v28.i32[0] = v797.i32[0];
              v214 = bswap32(LODWORD(v11));
              v216.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v216);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_227:
              v58->i32[3] = v214;
              ++v58;
              --v211;
            }

            while (v211);
            v58 += v84;
            --v210;
            LODWORD(v21) = v85;
            if (!v210)
            {
              goto LABEL_307;
            }
          }

        case 14:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v108 = v800[0];
          __asm { FMOV            V0.2S, #1.0 }

          while (1)
          {
            v114 = v21;
            do
            {
              if (!v17)
              {
                v115 = 1.0;
LABEL_82:
                LODWORD(v117) = bswap32(v58->u32[2]);
                *v118.f32 = vrev32_s8(*v58->i8);
                *v119.f32 = vsub_f32(_D0, *v118.f32);
                v119.f32[2] = 1.0 - v117;
                v119.f32[3] = -v115;
                v118.i64[1] = __PAIR64__(v115 + v29, LODWORD(v117));
                v116 = vrev32q_s8(vmlaq_f32(v118, v28, v119));
                goto LABEL_83;
              }

              v115 = COERCE_FLOAT(bswap32(v58->u32[3]));
              v116 = v795;
              if (v115 > 0.0)
              {
                goto LABEL_82;
              }

LABEL_83:
              *v58++ = v116;
              --v114;
            }

            while (v114);
            v58 += v84;
            if (!--v108)
            {
              goto LABEL_295;
            }
          }

        case 15:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v166 = v28.i32[2];
          v167 = v800[0];
          while (1)
          {
            v168 = v21;
            do
            {
              v169 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v169;
              if (v17)
              {
                v170 = v169;
                if (v169 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v171 = v795.u32[3];
                  goto LABEL_159;
                }
              }

              else
              {
                v170 = 1.0;
              }

              v172 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v172.i32[1];
              *v173.i32 = PDAoverlayPDA(*v172.i32, v9, v10, v11, v170, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v166)), v29);
              v28.i32[0] = v797.i32[0];
              v171 = bswap32(LODWORD(v11));
              v173.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v173);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_159:
              v58->i32[3] = v171;
              ++v58;
              --v168;
            }

            while (v168);
            v58 += v84;
            --v167;
            LODWORD(v21) = v85;
            if (!v167)
            {
              goto LABEL_307;
            }
          }

        case 16:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v100 = v28.i32[2];
          v101 = v800[0];
          while (1)
          {
            v102 = v21;
            do
            {
              v103 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v103;
              if (v17)
              {
                v104 = v103;
                if (v103 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v105 = v795.u32[3];
                  goto LABEL_72;
                }
              }

              else
              {
                v104 = 1.0;
              }

              v106 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v106.i32[1];
              *v107.i32 = PDAdarkenPDA(*v106.i32, v9, v10, v11, v104, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v100)), v29);
              v28.i32[0] = v797.i32[0];
              v105 = bswap32(LODWORD(v11));
              v107.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v107);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_72:
              v58->i32[3] = v105;
              ++v58;
              --v102;
            }

            while (v102);
            v58 += v84;
            --v101;
            LODWORD(v21) = v85;
            if (!v101)
            {
              goto LABEL_307;
            }
          }

        case 17:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v181 = v28.i32[2];
          v182 = v800[0];
          while (1)
          {
            v183 = v21;
            do
            {
              v184 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v184;
              if (v17)
              {
                v185 = v184;
                if (v184 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v186 = v795.u32[3];
                  goto LABEL_189;
                }
              }

              else
              {
                v185 = 1.0;
              }

              v187 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v187.i32[1];
              *v188.i32 = PDAlightenPDA(*v187.i32, v9, v10, v11, v185, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v181)), v29);
              v28.i32[0] = v797.i32[0];
              v186 = bswap32(LODWORD(v11));
              v188.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v188);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_189:
              v58->i32[3] = v186;
              ++v58;
              --v183;
            }

            while (v183);
            v58 += v84;
            --v182;
            LODWORD(v21) = v85;
            if (!v182)
            {
              goto LABEL_307;
            }
          }

        case 18:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v223 = v28.i32[2];
          v224 = v800[0];
          while (1)
          {
            v225 = v21;
            do
            {
              v226 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v226;
              if (v17)
              {
                v227 = v226;
                if (v226 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v228 = v795.u32[3];
                  goto LABEL_248;
                }
              }

              else
              {
                v227 = 1.0;
              }

              v229 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v229.i32[1];
              *v230.i32 = PDAcolordodgePDA(*v229.i32, v9, v10, v11, v227, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v223)), v29);
              v28.i32[0] = v797.i32[0];
              v228 = bswap32(LODWORD(v11));
              v230.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v230);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_248:
              v58->i32[3] = v228;
              ++v58;
              --v225;
            }

            while (v225);
            v58 += v84;
            --v224;
            LODWORD(v21) = v85;
            if (!v224)
            {
              goto LABEL_307;
            }
          }

        case 19:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v250 = v28.i32[2];
          v251 = v800[0];
          while (1)
          {
            v252 = v21;
            do
            {
              v253 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v253;
              if (v17)
              {
                v254 = v253;
                if (v253 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v255 = v795.u32[3];
                  goto LABEL_282;
                }
              }

              else
              {
                v254 = 1.0;
              }

              v256 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v256.i32[1];
              *v257.i32 = PDAcolorburnPDA(*v256.i32, v9, v10, v11, v254, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v250)), v29);
              v28.i32[0] = v797.i32[0];
              v255 = bswap32(LODWORD(v11));
              v257.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v257);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_282:
              v58->i32[3] = v255;
              ++v58;
              --v252;
            }

            while (v252);
            v58 += v84;
            --v251;
            LODWORD(v21) = v85;
            if (!v251)
            {
              goto LABEL_307;
            }
          }

        case 20:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v189 = v28.u32[1];
          v190 = v28.i32[2];
          v191 = v800[0];
          while (1)
          {
            v192 = v21;
            do
            {
              v193 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v193;
              if (v17)
              {
                *v12.i32 = v193;
                if (v193 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v194 = v795.u32[3];
                  goto LABEL_200;
                }
              }

              else
              {
                v12.i32[0] = 1.0;
              }

              v195 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              *v196.i32 = PDAsoftlightPDA(*v195.i32, *&v195.i32[1], v10, *&v11, *v12.i64, v13, v14, v15, v2, v3, v25, v4, v5, v21, v6, v7, v28.f32[0], v189, __SPAIR64__(LODWORD(v29), v190), v29);
              v28.i32[0] = v797.i32[0];
              v194 = bswap32(LODWORD(v11));
              v196.i32[1] = v197;
              *v58->i8 = vrev32_s8(v196);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_200:
              v58->i32[3] = v194;
              ++v58;
              --v192;
            }

            while (v192);
            v58 += v84;
            --v191;
            v21 = v85;
            if (!v191)
            {
              goto LABEL_307;
            }
          }

        case 21:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v201 = v28.i32[2];
          v202 = v800[0];
          while (1)
          {
            v203 = v21;
            do
            {
              v204 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v204;
              if (v17)
              {
                v205 = v204;
                if (v204 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v206 = v795.u32[3];
                  goto LABEL_216;
                }
              }

              else
              {
                v205 = 1.0;
              }

              v207 = vrev32_s8(*v58->i8);
              LODWORD(v10) = bswap32(v58->u32[2]);
              LODWORD(v9) = v207.i32[1];
              *v208.i32 = PDAhardlightPDA(*v207.i32, v9, v10, v11, v205, v13, v14, v15, v28.f32[0], COERCE_DOUBLE(__PAIR64__(LODWORD(v29), v201)), v29);
              v28.i32[0] = v797.i32[0];
              v206 = bswap32(LODWORD(v11));
              v208.i32[1] = LODWORD(v9);
              *v58->i8 = vrev32_s8(v208);
              v58->i32[2] = bswap32(LODWORD(v10));
LABEL_216:
              v58->i32[3] = v206;
              ++v58;
              --v203;
            }

            while (v203);
            v58 += v84;
            --v202;
            LODWORD(v21) = v85;
            if (!v202)
            {
              goto LABEL_307;
            }
          }

        case 22:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v236 = v800[0];
          while (1)
          {
            v237 = v21;
            do
            {
              if (v17)
              {
                v238 = COERCE_FLOAT(bswap32(v58->u32[3]));
                if (v238 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v239 = v795.u32[3];
                  goto LABEL_271;
                }
              }

              else
              {
                v238 = 1.0;
              }

              v240 = COERCE_FLOAT(bswap32(v58->u32[2]));
              v241 = vrev32_s8(*v58->i8);
              v242 = vadd_f32(*v28.f32, v241);
              v243 = vmul_laneq_f32(v241, v28, 3);
              v244 = vmul_n_f32(*v28.f32, v238);
              v245 = vsub_f32(v242, v243);
              v246 = vsub_f32(v243, v244);
              v247 = vadd_f32(vsub_f32(v245, v244), vbsl_s8(vcltz_f32(v246), vneg_f32(v246), v246));
              v248 = (v29 * v240) - (v28.f32[2] * v238);
              if (v248 < 0.0)
              {
                v248 = -v248;
              }

              v249 = bswap32(COERCE_UNSIGNED_INT((((v28.f32[2] + v240) - (v29 * v240)) - (v28.f32[2] * v238)) + v248));
              v239 = bswap32(COERCE_UNSIGNED_INT((v238 + v29) - (v238 * v29)));
              *v58->i8 = vrev32_s8(v247);
              v58->i32[2] = v249;
LABEL_271:
              v58->i32[3] = v239;
              ++v58;
              --v237;
            }

            while (v237);
            v58 += v84;
            if (!--v236)
            {
LABEL_295:
              v800[0] = 0;
              if (!v35)
              {
                return 1;
              }

LABEL_309:
              v799 = 0;
LABEL_310:
              v2 = shape_enum_clip_next(v35, &v799 + 1, &v799, v810, v800);
              if (v2)
              {
                v58 = (v33 + 16 * v31 * v799 + 16 * SHIDWORD(v799));
                v21 = v810[0];
                v28 = v797;
                v11 = v793;
                goto LABEL_51;
              }

LABEL_312:
              v275 = v35;
LABEL_950:
              free(v275);
              return 1;
            }
          }

        case 23:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v258.i64[0] = 0x4000000040000000;
          v258.i32[2] = 0x40000000;
          v258.i32[3] = v28.i32[3];
          v259 = v800[0];
          while (1)
          {
            v260 = v21;
            do
            {
              if (!v17)
              {
                v261 = 1.0;
LABEL_292:
                *v263.f32 = vrev32_s8(*v58->i8);
                *v264.f32 = vmul_f32(*v28.f32, vneg_f32(*v263.f32));
                v263.i64[1] = __PAIR64__(LODWORD(v261), bswap32(v58->u32[2]));
                v264.f32[2] = -(v263.f32[2] * v28.f32[2]);
                v264.f32[3] = -v261;
                v262 = vrev32q_s8(vmlaq_f32(vaddq_f32(v263, v28), v258, v264));
                goto LABEL_293;
              }

              LODWORD(v261) = bswap32(v58->u32[3]);
              v262 = v795;
              if (v261 > 0.0)
              {
                goto LABEL_292;
              }

LABEL_293:
              *v58++ = v262;
              --v260;
            }

            while (v260);
            v58 += v84;
            if (!--v259)
            {
              goto LABEL_295;
            }
          }

        case 24:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v148 = v28.f32[1];
          v149 = v28.f32[2];
          v150 = v800[0];
          while (1)
          {
            v151 = v21;
            do
            {
              v152 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v152;
              if (v17)
              {
                v153 = v152;
                if (v152 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v154 = v795.u32[3];
                  goto LABEL_137;
                }
              }

              else
              {
                v153 = 1.0;
              }

              v155 = vrev32_s8(*v58->i8);
              *v156.i32 = PDAhuePDA(*v155.i32, *&v155.i32[1], COERCE_FLOAT(bswap32(v58->u32[2])), v11, v153, v13, v14, v15, v28.f32[0], v148, v149, v29, v29);
              v28.i32[0] = v797.i32[0];
              v154 = bswap32(LODWORD(v11));
              v156.i32[1] = v158;
              *v58->i8 = vrev32_s8(v156);
              v58->i32[2] = bswap32(v157);
LABEL_137:
              v58->i32[3] = v154;
              ++v58;
              --v151;
            }

            while (v151);
            v58 += v84;
            --v150;
            LODWORD(v21) = v85;
            if (!v150)
            {
              goto LABEL_307;
            }
          }

        case 25:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v137 = v28.f32[1];
          v138 = v28.f32[2];
          v139 = v800[0];
          while (1)
          {
            v140 = v21;
            do
            {
              v141 = COERCE_FLOAT(bswap32(v58->u32[3]));
              *&v11 = v141;
              if (v17)
              {
                v142 = v141;
                if (v141 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v143 = v795.u32[3];
                  goto LABEL_126;
                }
              }

              else
              {
                v142 = 1.0;
              }

              v144 = vrev32_s8(*v58->i8);
              *v145.i32 = PDAsaturationPDA(*v144.i32, *&v144.i32[1], COERCE_FLOAT(bswap32(v58->u32[2])), v11, v142, v13, v14, v15, v28.f32[0], v137, v138, v29, v29);
              v28.i32[0] = v797.i32[0];
              v143 = bswap32(LODWORD(v11));
              v145.i32[1] = v147;
              *v58->i8 = vrev32_s8(v145);
              v58->i32[2] = bswap32(v146);
LABEL_126:
              v58->i32[3] = v143;
              ++v58;
              --v140;
            }

            while (v140);
            v58 += v84;
            --v139;
            LODWORD(v21) = v85;
            if (!v139)
            {
              goto LABEL_307;
            }
          }

        case 26:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v265 = v28.f32[1];
          v266 = v28.f32[2];
          v267 = v800[0];
          while (1)
          {
            v268 = v21;
            do
            {
              v269 = COERCE_FLOAT(bswap32(v58->u32[3]));
              if (v17)
              {
                v270 = v269;
                if (v269 <= 0.0)
                {
                  v58->i64[0] = v795.i64[0];
                  v58->i32[2] = v795.i32[2];
                  v271 = v795.u32[3];
                  goto LABEL_305;
                }
              }

              else
              {
                v270 = 1.0;
              }

              v742 = vrev32_s8(*v58->i8);
              *&v11 = v29;
              *v272.i32 = PDAluminosityPDA(v28.f32[0], v265, v266, v11, v29, v13, v14, v15, *v742.i32, *&v742.i32[1], COERCE_FLOAT(bswap32(v58->u32[2])), v269, v270);
              v28.i32[0] = v797.i32[0];
              v271 = bswap32(LODWORD(v11));
              v272.i32[1] = v274;
              *v58->i8 = vrev32_s8(v272);
              v58->i32[2] = bswap32(v273);
LABEL_305:
              v58->i32[3] = v271;
              ++v58;
              --v268;
            }

            while (v268);
            v58 += v84;
            --v267;
            LODWORD(v21) = v85;
            if (!v267)
            {
              goto LABEL_307;
            }
          }

        case 27:
          if (v29 <= 0.0)
          {
            goto LABEL_308;
          }

          v89 = v28.f32[1];
          v90 = v28.f32[2];
          v91 = v800[0];
          break;
        default:
          goto LABEL_308;
      }

LABEL_55:
      v92 = v21;
      while (1)
      {
        v93 = COERCE_FLOAT(bswap32(v58->u32[3]));
        *&v11 = v93;
        if (!v17)
        {
          break;
        }

        v94 = v93;
        if (v93 > 0.0)
        {
          goto LABEL_60;
        }

        v58->i64[0] = v795.i64[0];
        v58->i32[2] = v795.i32[2];
        v95 = v795.u32[3];
LABEL_61:
        v58->i32[3] = v95;
        ++v58;
        if (!--v92)
        {
          v58 += v84;
          --v91;
          LODWORD(v21) = v85;
          if (!v91)
          {
LABEL_307:
            v800[0] = 0;
            LODWORD(v18) = v758;
            v33 = v791;
LABEL_308:
            if (v35)
            {
              goto LABEL_309;
            }

            return 1;
          }

          goto LABEL_55;
        }
      }

      v94 = 1.0;
LABEL_60:
      v96 = vrev32_s8(*v58->i8);
      *v97.i32 = PDAluminosityPDA(*v96.i32, *&v96.i32[1], COERCE_FLOAT(bswap32(v58->u32[2])), v11, v94, v13, v14, v15, v28.f32[0], v89, v90, v29, v29);
      v28.i32[0] = v797.i32[0];
      v95 = bswap32(LODWORD(v11));
      v97.i32[1] = v99;
      *v58->i8 = vrev32_s8(v97);
      v58->i32[2] = bswap32(v98);
      goto LABEL_61;
    }

    v810[0] = *(v3 + 4);
    v800[0] = v23;
    v36 = *(v3 + 88);
    v37 = *(v3 + 28) >> 4;
    v38 = *(v3 + 40) + 16 * v37 * *(v3 + 16) + 16 * *(v3 + 12);
    v39 = *(v3 + 104);
    v40 = *(v3 + 108);
    v41 = *(v3 + 56);
    v42 = *(v3 + 60);
    v43 = *(v3 + 76) >> 4;
    if (v27 == 256)
    {
      v36 += 16 * v43 * v42 + 16 * v41;
      if (v43 == v37)
      {
        v44 = (v38 - v36) >> 4;
        if (v44 < 1)
        {
          v4 = 1;
          v765 = *(v3 + 28) >> 4;
        }

        else if (v44 <= v21)
        {
          v38 += 16 * v22;
          v4 = 0xFFFFFFFFLL;
          v765 = *(v3 + 28) >> 4;
          v36 += 16 * v22;
        }

        else
        {
          v45 = v37 * v24;
          v46 = v36 + 16 * v37 * v24;
          v47 = v46 + 16 * v21 - 16;
          v48 = v38 + 16 * v45;
          v49 = v38 > v47;
          if (v38 > v47)
          {
            v50 = *(v3 + 28) >> 4;
          }

          else
          {
            v36 = v46;
            v38 = v48;
            v50 = -v37;
          }

          v765 = v50;
          if (!v49)
          {
            v37 = -v37;
          }

          v4 = 1;
        }
      }

      else
      {
        v4 = 1;
        v765 = *(v3 + 76) >> 4;
      }

      v756 = *(v3 + 60);
      v757 = *(v3 + 56);
      v56 = v16 != 0;
      if (v25)
      {
        LODWORD(v763) = 0;
        v798 = 0;
        v794 = 0;
        v57 = -1;
        v796 = v765;
        goto LABEL_46;
      }

      v762 = v4;
      LODWORD(v763) = 0;
      v83 = v4 * v21;
      v792 = v37 - v83;
      v57 = -1;
      v43 = v765;
    }

    else
    {
      LODWORD(v765) = *(v3 + 64);
      v763 = *(v3 + 68);
      v794 = v36 + 16 * v43 * v763;
      v56 = v16 != 0;
      if (v25)
      {
        v796 = *(v3 + 76) >> 4;
        v756 = *(v3 + 60);
        v757 = *(v3 + 56);
        LODWORD(v4) = 1;
        v798 = *(v3 + 88);
        v57 = v798;
LABEL_46:
        v762 = v4;
        shape_enum_clip_alloc(v2, v3, v25, v4, v37, 1, v39, v40, v21, v23);
        v82 = v81;
        if (!v81)
        {
          return 1;
        }

        while (2)
        {
          v2 = shape_enum_clip_next(v82, &v799 + 1, &v799, v810, v800);
          if (!v2)
          {
            v275 = v82;
            goto LABEL_950;
          }

          v764 = v82;
          if (v794)
          {
            v80 = (v38 + 16 * v37 * v799 + 16 * SHIDWORD(v799));
            v21 = v810[0];
            v735 = v36 + 16 * v796 * ((v799 + *(v20 + 60)) % v763);
            v79 = (v735 + 16 * ((HIDWORD(v799) + *(v20 + 56)) % v765));
            v57 = v735 + 16 * v765;
            v798 = v79;
            v736 = v810[0];
            v756 = (v799 + *(v20 + 60)) % v763;
            v757 = (HIDWORD(v799) + *(v20 + 56)) % v765;
          }

          else
          {
            v21 = v810[0];
            v736 = v810[0] * v762;
            v80 = (v38 + 16 * v37 * v799 + 16 * HIDWORD(v799) * v762);
            v79 = (v36 + 16 * v799 * v765 + 16 * HIDWORD(v799) * v762);
            v796 = v765 - v810[0] * v762;
          }

          v792 = v37 - v736;
LABEL_316:
          switch(v18)
          {
            case 0:
              i64 = v80[-v21 + 1].i64;
              v277 = v792 + v21;
              if (v762 < 0)
              {
                v277 = v792 - v21;
              }

              else
              {
                i64 = v80;
              }

              v278 = (i64 + 16 * ((v277 * (v800[0] - 1)) & (v277 >> 63)));
              if (v277 < 0)
              {
                v277 = -v277;
              }

              CGBlt_fillBytes(16 * v21, v800[0], 0, v278, 16 * v277);
              goto LABEL_942;
            case 1:
              v485 = *(v20 + 1);
              if (v485 == 2)
              {
                if (v21 >= 2 && (16 * v765) <= 0x40)
                {
                  LODWORD(v8) = 16 * v765;
                  v705 = vcnt_s8(*&v8);
                  v705.i16[0] = vaddlv_u8(v705);
                  if (v705.i32[0] <= 1u)
                  {
                    CGSFillDRAM64(v80, 16 * (v21 + v792), 16 * v21, v800[0], v36, 16 * v796, 16 * v765, v763, 16 * v757, v756);
                    goto LABEL_942;
                  }
                }

LABEL_893:
                if (v17 == 0 || v56)
                {
                  v706 = v800[0];
                  do
                  {
                    v707 = v21;
                    do
                    {
                      *v80 = *v79->i8;
                      v708 = &v79[2 * v762];
                      if (v708 >= v57)
                      {
                        v709 = -v765;
                      }

                      else
                      {
                        v709 = 0;
                      }

                      v79 = &v708[2 * v709];
                      v80 += v762;
                      --v707;
                    }

                    while (v707);
                    v80 += v792;
                    v710 = v798;
                    v711 = &v798[2 * v796];
                    if (v711 >= v794)
                    {
                      v712 = -(v796 * v763);
                    }

                    else
                    {
                      v712 = 0;
                    }

                    v713 = &v711[2 * v712];
                    v714 = v57 + 16 * v712 + 16 * v796;
                    if (v794)
                    {
                      v57 = v714;
                      v710 = v713;
                    }

                    v798 = v710;
                    if (v794)
                    {
                      v79 = v713;
                    }

                    else
                    {
                      v79 += 2 * v796;
                    }

                    --v706;
                  }

                  while (v706);
                }

                else
                {
                  v715 = v800[0];
                  do
                  {
                    v716 = v21;
                    do
                    {
                      v717 = v79[1].i32[0];
                      *v80->i8 = *v79;
                      v80->i32[2] = v717;
                      v80->i32[3] = 32831;
                      v718 = &v79[2 * v762];
                      if (v718 >= v57)
                      {
                        v719 = -v765;
                      }

                      else
                      {
                        v719 = 0;
                      }

                      v79 = &v718[2 * v719];
                      v80 += v762;
                      --v716;
                    }

                    while (v716);
                    v80 += v792;
                    v720 = v798;
                    v721 = &v798[2 * v796];
                    if (v721 >= v794)
                    {
                      v722 = -(v796 * v763);
                    }

                    else
                    {
                      v722 = 0;
                    }

                    v723 = &v721[2 * v722];
                    v724 = v57 + 16 * v722 + 16 * v796;
                    if (v794)
                    {
                      v57 = v724;
                      v720 = v723;
                    }

                    v798 = v720;
                    if (v794)
                    {
                      v79 = v723;
                    }

                    else
                    {
                      v79 += 2 * v796;
                    }

                    --v715;
                  }

                  while (v715);
                }

                goto LABEL_941;
              }

              if (v485 != 1)
              {
                goto LABEL_893;
              }

              if (v17 != 0 && !v56)
              {
                v725 = v800[0];
                do
                {
                  v726 = v21;
                  do
                  {
                    v727 = v79[1].i32[0];
                    *v80->i8 = *v79;
                    v80->i32[2] = v727;
                    v80->i32[3] = 32831;
                    v728 = &v79[2 * v762];
                    if (v728 >= v57)
                    {
                      v729 = -v765;
                    }

                    else
                    {
                      v729 = 0;
                    }

                    v79 = &v728[2 * v729];
                    v80 += v762;
                    --v726;
                  }

                  while (v726);
                  v80 += v792;
                  v730 = v798;
                  v731 = &v798[2 * v796];
                  if (v731 >= v794)
                  {
                    v732 = -(v796 * v763);
                  }

                  else
                  {
                    v732 = 0;
                  }

                  v733 = &v731[2 * v732];
                  v734 = v57 + 16 * v732 + 16 * v796;
                  if (v794)
                  {
                    v57 = v734;
                    v730 = v733;
                  }

                  v798 = v730;
                  if (v794)
                  {
                    v79 = v733;
                  }

                  else
                  {
                    v79 += 2 * v796;
                  }

                  --v725;
                }

                while (v725);
                goto LABEL_941;
              }

              if (v762 < 0)
              {
                v486 = v796 - v21;
                v737 = 16 * v21 - 16;
                v79 = (v79 - v737);
                v487 = v792 - v21;
                v80 = (v80 - v737);
              }

              else
              {
                v486 = v796 + v21;
                v487 = v792 + v21;
              }

              v738 = v800[0] - 1;
              v739 = &v79[2 * ((v486 * v738) & (v486 >> 63))];
              if (v486 >= 0)
              {
                v740 = v486;
              }

              else
              {
                v740 = -v486;
              }

              if (v487 >= 0)
              {
                LODWORD(v741) = v487;
              }

              else
              {
                v741 = -v487;
              }

              v796 = v740;
              CGBlt_copyBytes(16 * v21, v800[0], v739, v80[(v487 * v738) & (v487 >> 63)].i8, 16 * v740, 16 * v741);
LABEL_942:
              v82 = v764;
              if (!v764)
              {
                return 1;
              }

              v799 = 0;
              continue;
            case 2:
              v431 = v800[0];
              do
              {
                v432 = v21;
                do
                {
                  v433 = v79[1].u32[1];
                  LODWORD(v434) = bswap32(v433);
                  if (v434 >= 1.0)
                  {
                    *v80->i8 = *v79;
                    v80->i32[2] = v79[1].i32[0];
                    v80->i32[3] = v433;
                  }

                  else if (v434 > 0.0)
                  {
                    *v435.f32 = vrev32_s8(*v79);
                    v435.i64[1] = __PAIR64__(LODWORD(v434), bswap32(v79[1].u32[0]));
                    *v80 = vrev32q_s8(vmlaq_n_f32(v435, vrev32q_s8(*v80), 1.0 - v434));
                  }

                  v436 = &v79[2 * v762];
                  if (v436 >= v57)
                  {
                    v437 = -v765;
                  }

                  else
                  {
                    v437 = 0;
                  }

                  v79 = &v436[2 * v437];
                  v80 += v762;
                  --v432;
                }

                while (v432);
                v80 += v792;
                v438 = v798;
                v439 = &v798[2 * v796];
                if (v439 >= v794)
                {
                  v440 = -(v796 * v763);
                }

                else
                {
                  v440 = 0;
                }

                v441 = &v439[2 * v440];
                v442 = v57 + 16 * v440 + 16 * v796;
                if (v794)
                {
                  v57 = v442;
                  v438 = v441;
                }

                v798 = v438;
                if (v794)
                {
                  v79 = v441;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v431;
              }

              while (v431);
              goto LABEL_941;
            case 3:
              do
              {
                v461 = v810[0];
                do
                {
                  v462 = COERCE_FLOAT(bswap32(v80->u32[3]));
                  if (v462 <= 0.0)
                  {
                    v80->i64[0] = 0;
                    v80->i64[1] = 0;
                  }

                  else if (v462 >= 1.0)
                  {
                    v466 = bswap32(v79[1].u32[1]);
                    if (!v56)
                    {
                      v466 = 1065353216;
                    }

                    v467 = *(v79 + 4);
                    v80->i32[0] = v79->i32[0];
                    *(v80->i64 + 4) = v467;
                    v80->i32[3] = bswap32(v466);
                  }

                  else
                  {
                    v463 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
                    *v464.f32 = vrev32_s8(*v79);
                    v464.i32[2] = bswap32(v79[1].u32[0]);
                    if (v56)
                    {
                      v465 = v463;
                    }

                    else
                    {
                      v465 = 1.0;
                    }

                    v464.f32[3] = v465;
                    *v80 = vrev32q_s8(vmulq_n_f32(v464, v462));
                  }

                  v468 = &v79[2 * v762];
                  if (v468 >= v57)
                  {
                    v469 = -v765;
                  }

                  else
                  {
                    v469 = 0;
                  }

                  v79 = &v468[2 * v469];
                  v80 += v762;
                  --v461;
                }

                while (v461);
                v80 += v792;
                v470 = v798;
                v471 = &v798[2 * v796];
                if (v471 >= v794)
                {
                  v472 = -(v796 * v763);
                }

                else
                {
                  v472 = 0;
                }

                v473 = &v471[2 * v472];
                v474 = v57 + 16 * v472 + 16 * v796;
                if (v794)
                {
                  v57 = v474;
                  v470 = v473;
                }

                v798 = v470;
                if (v794)
                {
                  v79 = v473;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v800[0];
              }

              while (v800[0]);
              goto LABEL_942;
            case 4:
              do
              {
                v354 = v810[0];
                do
                {
                  v355 = 1.0 - COERCE_FLOAT(bswap32(v80->u32[3]));
                  if (v355 <= 0.0)
                  {
                    v80->i64[0] = 0;
                    v80->i64[1] = 0;
                  }

                  else if (v355 >= 1.0)
                  {
                    v359 = bswap32(v79[1].u32[1]);
                    if (!v56)
                    {
                      v359 = 1065353216;
                    }

                    v360 = *(v79 + 4);
                    v80->i32[0] = v79->i32[0];
                    *(v80->i64 + 4) = v360;
                    v80->i32[3] = bswap32(v359);
                  }

                  else
                  {
                    v356 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
                    *v357.f32 = vrev32_s8(*v79);
                    v357.i32[2] = bswap32(v79[1].u32[0]);
                    if (v56)
                    {
                      v358 = v356;
                    }

                    else
                    {
                      v358 = 1.0;
                    }

                    v357.f32[3] = v358;
                    *v80 = vrev32q_s8(vmulq_n_f32(v357, v355));
                  }

                  v361 = &v79[2 * v762];
                  if (v361 >= v57)
                  {
                    v362 = -v765;
                  }

                  else
                  {
                    v362 = 0;
                  }

                  v79 = &v361[2 * v362];
                  v80 += v762;
                  --v354;
                }

                while (v354);
                v80 += v792;
                v363 = v798;
                v364 = &v798[2 * v796];
                if (v364 >= v794)
                {
                  v365 = -(v796 * v763);
                }

                else
                {
                  v365 = 0;
                }

                v366 = &v364[2 * v365];
                v367 = v57 + 16 * v365 + 16 * v796;
                if (v794)
                {
                  v57 = v367;
                  v363 = v366;
                }

                v798 = v363;
                if (v794)
                {
                  v79 = v366;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v800[0];
              }

              while (v800[0]);
              goto LABEL_942;
            case 5:
              v522 = v800[0];
              do
              {
                v523 = v21;
                do
                {
                  v524 = vrev32q_s8(*v79->i8);
                  v525 = vrev32q_s8(*v80);
                  *v80 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v525, 1.0 - v524.f32[3]), v524, v525, 3));
                  v526 = &v79[2 * v762];
                  if (v526 >= v57)
                  {
                    v527 = -v765;
                  }

                  else
                  {
                    v527 = 0;
                  }

                  v79 = &v526[2 * v527];
                  v80 += v762;
                  --v523;
                }

                while (v523);
                v80 += v792;
                v528 = v798;
                v529 = &v798[2 * v796];
                if (v529 >= v794)
                {
                  v530 = -(v796 * v763);
                }

                else
                {
                  v530 = 0;
                }

                v531 = &v529[2 * v530];
                v532 = v57 + 16 * v530 + 16 * v796;
                if (v794)
                {
                  v57 = v532;
                  v528 = v531;
                }

                v798 = v528;
                if (v794)
                {
                  v79 = v531;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v522;
              }

              while (v522);
              goto LABEL_941;
            case 6:
              v569 = v800[0];
              break;
            case 7:
              v475 = v800[0];
              do
              {
                v476 = v21;
                do
                {
                  v477 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
                  if (v477 <= 0.0)
                  {
                    v80->i64[0] = 0;
                    v80->i64[1] = 0;
                  }

                  else if (v477 < 1.0)
                  {
                    *v80 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v80), v477));
                  }

                  v478 = &v79[2 * v762];
                  if (v478 >= v57)
                  {
                    v479 = -v765;
                  }

                  else
                  {
                    v479 = 0;
                  }

                  v79 = &v478[2 * v479];
                  v80 += v762;
                  --v476;
                }

                while (v476);
                v80 += v792;
                v480 = v798;
                v481 = &v798[2 * v796];
                if (v481 >= v794)
                {
                  v482 = -(v796 * v763);
                }

                else
                {
                  v482 = 0;
                }

                v483 = &v481[2 * v482];
                v484 = v57 + 16 * v482 + 16 * v796;
                if (v794)
                {
                  v57 = v484;
                  v480 = v483;
                }

                v798 = v480;
                if (v794)
                {
                  v79 = v483;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v475;
              }

              while (v475);
              goto LABEL_941;
            case 8:
              v616 = v800[0];
              do
              {
                v617 = v21;
                do
                {
                  v618 = 1.0 - COERCE_FLOAT(bswap32(v79[1].u32[1]));
                  if (v618 <= 0.0)
                  {
                    v80->i64[0] = 0;
                    v80->i64[1] = 0;
                  }

                  else if (v618 < 1.0)
                  {
                    *v80 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v80), v618));
                  }

                  v619 = &v79[2 * v762];
                  if (v619 >= v57)
                  {
                    v620 = -v765;
                  }

                  else
                  {
                    v620 = 0;
                  }

                  v79 = &v619[2 * v620];
                  v80 += v762;
                  --v617;
                }

                while (v617);
                v80 += v792;
                v621 = v798;
                v622 = &v798[2 * v796];
                if (v622 >= v794)
                {
                  v623 = -(v796 * v763);
                }

                else
                {
                  v623 = 0;
                }

                v624 = &v622[2 * v623];
                v625 = v57 + 16 * v623 + 16 * v796;
                if (v794)
                {
                  v57 = v625;
                  v621 = v624;
                }

                v798 = v621;
                if (v794)
                {
                  v79 = v624;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v616;
              }

              while (v616);
              goto LABEL_941;
            case 9:
              v384 = v800[0];
              do
              {
                v385 = v21;
                do
                {
                  v386 = vrev32q_s8(*v79->i8);
                  v387 = vrev32q_s8(*v80);
                  *v80 = vrev32q_s8(vmlaq_n_f32(vmulq_laneq_f32(v387, v386, 3), v386, 1.0 - v387.f32[3]));
                  v388 = &v79[2 * v762];
                  if (v388 >= v57)
                  {
                    v389 = -v765;
                  }

                  else
                  {
                    v389 = 0;
                  }

                  v79 = &v388[2 * v389];
                  v80 += v762;
                  --v385;
                }

                while (v385);
                v80 += v792;
                v390 = v798;
                v391 = &v798[2 * v796];
                if (v391 >= v794)
                {
                  v392 = -(v796 * v763);
                }

                else
                {
                  v392 = 0;
                }

                v393 = &v391[2 * v392];
                v394 = v57 + 16 * v392 + 16 * v796;
                if (v794)
                {
                  v57 = v394;
                  v390 = v393;
                }

                v798 = v390;
                if (v794)
                {
                  v79 = v393;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v384;
              }

              while (v384);
              goto LABEL_941;
            case 10:
              v605 = v800[0];
              do
              {
                v606 = v21;
                do
                {
                  v607 = vrev32q_s8(*v79->i8);
                  v608 = vrev32q_s8(*v80);
                  *v80 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v608, 1.0 - v607.f32[3]), v607, 1.0 - v608.f32[3]));
                  v609 = &v79[2 * v762];
                  if (v609 >= v57)
                  {
                    v610 = -v765;
                  }

                  else
                  {
                    v610 = 0;
                  }

                  v79 = &v609[2 * v610];
                  v80 += v762;
                  --v606;
                }

                while (v606);
                v80 += v792;
                v611 = v798;
                v612 = &v798[2 * v796];
                if (v612 >= v794)
                {
                  v613 = -(v796 * v763);
                }

                else
                {
                  v613 = 0;
                }

                v614 = &v612[2 * v613];
                v615 = v57 + 16 * v613 + 16 * v796;
                if (v794)
                {
                  v57 = v615;
                  v611 = v614;
                }

                v798 = v611;
                if (v794)
                {
                  v79 = v614;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v605;
              }

              while (v605);
              goto LABEL_941;
            case 11:
              v332 = v800[0];
              do
              {
                v333 = v21;
                do
                {
                  v334 = COERCE_FLOAT(bswap32(v80->i32[0]));
                  v335 = COERCE_FLOAT(bswap32(v80->u32[1]));
                  v336 = COERCE_FLOAT(bswap32(v80->u32[2]));
                  v337 = COERCE_FLOAT(bswap32(v80->u32[3]));
                  v338 = COERCE_FLOAT(bswap32(v79->i32[0]));
                  v339 = COERCE_FLOAT(bswap32(v79->u32[1]));
                  v340 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
                  v341 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
                  if (!v17)
                  {
                    v337 = 1.0;
                  }

                  if (!v56)
                  {
                    v341 = 1.0;
                  }

                  v342 = (v337 - v334) + (v341 - v338);
                  v343 = (v337 - v335) + (v341 - v339);
                  v344 = (v337 - v336) + (v341 - v340);
                  if ((v337 + v341) <= 1.0)
                  {
                    v345 = v337 + v341;
                  }

                  else
                  {
                    v345 = 1.0;
                  }

                  *v346.i32 = v345 - v342;
                  *&v346.i32[1] = v345 - v343;
                  v346.i64[1] = __PAIR64__(LODWORD(v345), v345 - v344);
                  *v80 = vrev32q_s8(v346);
                  v347 = &v79[2 * v762];
                  if (v347 >= v57)
                  {
                    v348 = -v765;
                  }

                  else
                  {
                    v348 = 0;
                  }

                  v79 = &v347[2 * v348];
                  v80 += v762;
                  --v333;
                }

                while (v333);
                v80 += v792;
                v349 = v798;
                v350 = &v798[2 * v796];
                if (v350 >= v794)
                {
                  v351 = -(v796 * v763);
                }

                else
                {
                  v351 = 0;
                }

                v352 = &v350[2 * v351];
                v353 = v57 + 16 * v351 + 16 * v796;
                if (v794)
                {
                  v57 = v353;
                  v349 = v352;
                }

                v798 = v349;
                if (v794)
                {
                  v79 = v352;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v800[0] = --v332;
              }

              while (v332);
              goto LABEL_942;
            case 12:
              v368 = v800[0];
              do
              {
                v369 = v21;
                do
                {
                  v370 = COERCE_FLOAT(bswap32(v80->u32[2]));
                  v371 = COERCE_FLOAT(bswap32(v80->u32[3]));
                  v372 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
                  v373 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
                  if (!v56)
                  {
                    v373 = 1.0;
                  }

                  v374 = v373 + v371;
                  *v375.i8 = vadd_f32(vrev32_s8(*v80->i8), vrev32_s8(*v79));
                  v376 = v370 + v372;
                  if (v374 > 1.0)
                  {
                    v374 = 1.0;
                  }

                  v375.i64[1] = __PAIR64__(LODWORD(v374), LODWORD(v376));
                  *v80 = vrev32q_s8(v375);
                  v377 = &v79[2 * v762];
                  if (v377 >= v57)
                  {
                    v378 = -v765;
                  }

                  else
                  {
                    v378 = 0;
                  }

                  v79 = &v377[2 * v378];
                  v80 += v762;
                  --v369;
                }

                while (v369);
                v80 += v792;
                v379 = v798;
                v380 = &v798[2 * v796];
                if (v380 >= v794)
                {
                  v381 = -(v796 * v763);
                }

                else
                {
                  v381 = 0;
                }

                v382 = &v380[2 * v381];
                v383 = v57 + 16 * v381 + 16 * v796;
                if (v794)
                {
                  v57 = v383;
                  v379 = v382;
                }

                v798 = v379;
                if (v794)
                {
                  v79 = v382;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v368;
              }

              while (v368);
              goto LABEL_941;
            case 13:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v787 = v21;
              v551 = v800[0];
              do
              {
                v774 = v551;
                v552 = v787;
                do
                {
                  v553 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v554 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v554;
                    if (v17 && (v553 = v554, v554 <= 0.0))
                    {
                      v558 = v79[1].u32[0];
                      v559 = bswap32(LODWORD(v13));
                      v561 = *v79;
                    }

                    else
                    {
                      v555 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v556 = *v79->i8;
                      LODWORD(v556) = v555.i32[1];
                      v751 = vrev32q_s8(*v79->i8);
                      *v557.i32 = PDAmultiplyPDA(*v555.i32, *&v556, v10, v11, v553, v13, *v751.i64, v15, *v751.i32, *&v751.i64[1], *&v13);
                      v558 = bswap32(LODWORD(v10));
                      v559 = bswap32(LODWORD(v11));
                      v557.i32[1] = v560;
                      v561 = vrev32_s8(v557);
                    }

                    *v80->i8 = v561;
                    v80->i32[2] = v558;
                    v80->i32[3] = v559;
                  }

                  v562 = &v79[2 * v762];
                  if (v562 >= v57)
                  {
                    v563 = -v765;
                  }

                  else
                  {
                    v563 = 0;
                  }

                  v79 = &v562[2 * v563];
                  v80 += v762;
                  --v552;
                }

                while (v552);
                v80 += v792;
                v564 = v798;
                v565 = &v798[2 * v796];
                v566 = -(v796 * v763);
                if (v565 < v794)
                {
                  v566 = 0;
                }

                v567 = &v565[2 * v566];
                v568 = v57 + 16 * v566 + 16 * v796;
                if (v794)
                {
                  v57 = v568;
                  v564 = v567;
                }

                v798 = v564;
                if (v794)
                {
                  v79 = v567;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v551 = v774 - 1;
              }

              while (v774 != 1);
              goto LABEL_888;
            case 14:
              v315 = v800[0];
              __asm { FMOV            V1.2S, #1.0 }

              do
              {
                v317 = v21;
                do
                {
                  v318 = 1.0;
                  v319 = 1.0;
                  if (!v56 || (v319 = COERCE_FLOAT(bswap32(v79[1].u32[1])), v319 > 0.0))
                  {
                    if (v17 && (v318 = COERCE_FLOAT(bswap32(v80->u32[3])), v318 <= 0.0))
                    {
                      v321 = v79[1].u32[0];
                      v324 = bswap32(LODWORD(v319));
                      *v80->i8 = *v79;
                    }

                    else
                    {
                      v320 = COERCE_FLOAT(bswap32(v80->u32[2]));
                      v321 = bswap32(COERCE_UNSIGNED_INT(v320 + (COERCE_FLOAT(bswap32(v79[1].u32[0])) * (1.0 - v320))));
                      *&v322 = (v319 + v318) - (v318 * v319);
                      v323 = vrev32_s8(*v80->i8);
                      *v80->i8 = vrev32_s8(vmla_f32(v323, vsub_f32(_D1, v323), vrev32_s8(*v79)));
                      v324 = bswap32(v322);
                    }

                    v80->i32[2] = v321;
                    v80->i32[3] = v324;
                  }

                  v325 = &v79[2 * v762];
                  if (v325 >= v57)
                  {
                    v326 = -v765;
                  }

                  else
                  {
                    v326 = 0;
                  }

                  v79 = &v325[2 * v326];
                  v80 += v762;
                  --v317;
                }

                while (v317);
                v80 += v792;
                v327 = v798;
                v328 = &v798[2 * v796];
                if (v328 >= v794)
                {
                  v329 = -(v796 * v763);
                }

                else
                {
                  v329 = 0;
                }

                v330 = &v328[2 * v329];
                v331 = v57 + 16 * v329 + 16 * v796;
                if (v794)
                {
                  v57 = v331;
                  v327 = v330;
                }

                v798 = v327;
                if (v794)
                {
                  v79 = v330;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v315;
              }

              while (v315);
              goto LABEL_941;
            case 15:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v783 = v21;
              v443 = v800[0];
              do
              {
                v770 = v443;
                v444 = v783;
                do
                {
                  v445 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v446 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v446;
                    if (v17 && (v445 = v446, v446 <= 0.0))
                    {
                      v450 = v79[1].u32[0];
                      v451 = bswap32(LODWORD(v13));
                      v453 = *v79;
                    }

                    else
                    {
                      v447 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v448 = *v79->i8;
                      LODWORD(v448) = v447.i32[1];
                      v747 = vrev32q_s8(*v79->i8);
                      *v449.i32 = PDAoverlayPDA(*v447.i32, *&v448, v10, v11, v445, v13, *v747.i64, v15, *v747.i32, *&v747.i64[1], *&v13);
                      v450 = bswap32(LODWORD(v10));
                      v451 = bswap32(LODWORD(v11));
                      v449.i32[1] = v452;
                      v453 = vrev32_s8(v449);
                    }

                    *v80->i8 = v453;
                    v80->i32[2] = v450;
                    v80->i32[3] = v451;
                  }

                  v454 = &v79[2 * v762];
                  if (v454 >= v57)
                  {
                    v455 = -v765;
                  }

                  else
                  {
                    v455 = 0;
                  }

                  v79 = &v454[2 * v455];
                  v80 += v762;
                  --v444;
                }

                while (v444);
                v80 += v792;
                v456 = v798;
                v457 = &v798[2 * v796];
                v458 = -(v796 * v763);
                if (v457 < v794)
                {
                  v458 = 0;
                }

                v459 = &v457[2 * v458];
                v460 = v57 + 16 * v458 + 16 * v796;
                if (v794)
                {
                  v57 = v460;
                  v456 = v459;
                }

                v798 = v456;
                if (v794)
                {
                  v79 = v459;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v443 = v770 - 1;
              }

              while (v770 != 1);
              goto LABEL_888;
            case 16:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v780 = v21;
              v297 = v800[0];
              do
              {
                v767 = v297;
                v298 = v780;
                do
                {
                  v299 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v300 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v300;
                    if (v17 && (v299 = v300, v300 <= 0.0))
                    {
                      v304 = v79[1].u32[0];
                      v305 = bswap32(LODWORD(v13));
                      v307 = *v79;
                    }

                    else
                    {
                      v301 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v302 = *v79->i8;
                      LODWORD(v302) = v301.i32[1];
                      v744 = vrev32q_s8(*v79->i8);
                      *v303.i32 = PDAdarkenPDA(*v301.i32, *&v302, v10, v11, v299, v13, *v744.i64, v15, *v744.i32, *&v744.i64[1], *&v13);
                      v304 = bswap32(LODWORD(v10));
                      v305 = bswap32(LODWORD(v11));
                      v303.i32[1] = v306;
                      v307 = vrev32_s8(v303);
                    }

                    *v80->i8 = v307;
                    v80->i32[2] = v304;
                    v80->i32[3] = v305;
                  }

                  v308 = &v79[2 * v762];
                  if (v308 >= v57)
                  {
                    v309 = -v765;
                  }

                  else
                  {
                    v309 = 0;
                  }

                  v79 = &v308[2 * v309];
                  v80 += v762;
                  --v298;
                }

                while (v298);
                v80 += v792;
                v310 = v798;
                v311 = &v798[2 * v796];
                v312 = -(v796 * v763);
                if (v311 < v794)
                {
                  v312 = 0;
                }

                v313 = &v311[2 * v312];
                v314 = v57 + 16 * v312 + 16 * v796;
                if (v794)
                {
                  v57 = v314;
                  v310 = v313;
                }

                v798 = v310;
                if (v794)
                {
                  v79 = v313;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v297 = v767 - 1;
              }

              while (v767 != 1);
              goto LABEL_888;
            case 17:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v784 = v21;
              v488 = v800[0];
              do
              {
                v771 = v488;
                v489 = v784;
                do
                {
                  v490 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v491 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v491;
                    if (v17 && (v490 = v491, v491 <= 0.0))
                    {
                      v495 = v79[1].u32[0];
                      v496 = bswap32(LODWORD(v13));
                      v498 = *v79;
                    }

                    else
                    {
                      v492 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v493 = *v79->i8;
                      LODWORD(v493) = v492.i32[1];
                      v748 = vrev32q_s8(*v79->i8);
                      *v494.i32 = PDAlightenPDA(*v492.i32, *&v493, v10, v11, v490, v13, *v748.i64, v15, *v748.i32, *&v748.i64[1], *&v13);
                      v495 = bswap32(LODWORD(v10));
                      v496 = bswap32(LODWORD(v11));
                      v494.i32[1] = v497;
                      v498 = vrev32_s8(v494);
                    }

                    *v80->i8 = v498;
                    v80->i32[2] = v495;
                    v80->i32[3] = v496;
                  }

                  v499 = &v79[2 * v762];
                  if (v499 >= v57)
                  {
                    v500 = -v765;
                  }

                  else
                  {
                    v500 = 0;
                  }

                  v79 = &v499[2 * v500];
                  v80 += v762;
                  --v489;
                }

                while (v489);
                v80 += v792;
                v501 = v798;
                v502 = &v798[2 * v796];
                v503 = -(v796 * v763);
                if (v502 < v794)
                {
                  v503 = 0;
                }

                v504 = &v502[2 * v503];
                v505 = v57 + 16 * v503 + 16 * v796;
                if (v794)
                {
                  v57 = v505;
                  v501 = v504;
                }

                v798 = v501;
                if (v794)
                {
                  v79 = v504;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v488 = v771 - 1;
              }

              while (v771 != 1);
              goto LABEL_888;
            case 18:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v788 = v21;
              v587 = v800[0];
              do
              {
                v775 = v587;
                v588 = v788;
                do
                {
                  v589 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v590 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v590;
                    if (v17 && (v589 = v590, v590 <= 0.0))
                    {
                      v594 = v79[1].u32[0];
                      v595 = bswap32(LODWORD(v13));
                      v597 = *v79;
                    }

                    else
                    {
                      v591 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v592 = *v79->i8;
                      LODWORD(v592) = v591.i32[1];
                      v752 = vrev32q_s8(*v79->i8);
                      *v593.i32 = PDAcolordodgePDA(*v591.i32, *&v592, v10, v11, v589, v13, *v752.i64, v15, *v752.i32, *&v752.i64[1], *&v13);
                      v594 = bswap32(LODWORD(v10));
                      v595 = bswap32(LODWORD(v11));
                      v593.i32[1] = v596;
                      v597 = vrev32_s8(v593);
                    }

                    *v80->i8 = v597;
                    v80->i32[2] = v594;
                    v80->i32[3] = v595;
                  }

                  v598 = &v79[2 * v762];
                  if (v598 >= v57)
                  {
                    v599 = -v765;
                  }

                  else
                  {
                    v599 = 0;
                  }

                  v79 = &v598[2 * v599];
                  v80 += v762;
                  --v588;
                }

                while (v588);
                v80 += v792;
                v600 = v798;
                v601 = &v798[2 * v796];
                v602 = -(v796 * v763);
                if (v601 < v794)
                {
                  v602 = 0;
                }

                v603 = &v601[2 * v602];
                v604 = v57 + 16 * v602 + 16 * v796;
                if (v794)
                {
                  v57 = v604;
                  v600 = v603;
                }

                v798 = v600;
                if (v794)
                {
                  v79 = v603;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v587 = v775 - 1;
              }

              while (v775 != 1);
              goto LABEL_888;
            case 19:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v789 = v21;
              v651 = v800[0];
              do
              {
                v776 = v651;
                v652 = v789;
                do
                {
                  v653 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v654 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v654;
                    if (v17 && (v653 = v654, v654 <= 0.0))
                    {
                      v658 = v79[1].u32[0];
                      v659 = bswap32(LODWORD(v13));
                      v661 = *v79;
                    }

                    else
                    {
                      v655 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v656 = *v79->i8;
                      LODWORD(v656) = v655.i32[1];
                      v753 = vrev32q_s8(*v79->i8);
                      *v657.i32 = PDAcolorburnPDA(*v655.i32, *&v656, v10, v11, v653, v13, *v753.i64, v15, *v753.i32, *&v753.i64[1], *&v13);
                      v658 = bswap32(LODWORD(v10));
                      v659 = bswap32(LODWORD(v11));
                      v657.i32[1] = v660;
                      v661 = vrev32_s8(v657);
                    }

                    *v80->i8 = v661;
                    v80->i32[2] = v658;
                    v80->i32[3] = v659;
                  }

                  v662 = &v79[2 * v762];
                  if (v662 >= v57)
                  {
                    v663 = -v765;
                  }

                  else
                  {
                    v663 = 0;
                  }

                  v79 = &v662[2 * v663];
                  v80 += v762;
                  --v652;
                }

                while (v652);
                v80 += v792;
                v664 = v798;
                v665 = &v798[2 * v796];
                v666 = -(v796 * v763);
                if (v665 < v794)
                {
                  v666 = 0;
                }

                v667 = &v665[2 * v666];
                v668 = v57 + 16 * v666 + 16 * v796;
                if (v794)
                {
                  v57 = v668;
                  v664 = v667;
                }

                v798 = v664;
                if (v794)
                {
                  v79 = v667;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v651 = v776 - 1;
              }

              while (v776 != 1);
              goto LABEL_888;
            case 20:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v785 = v21;
              v506 = v800[0];
              do
              {
                v772 = v506;
                v507 = v785;
                do
                {
                  v12.i32[0] = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v508 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v508;
                    if (v17 && (*v12.i32 = v508, v508 <= 0.0))
                    {
                      v511 = v79[1].u32[0];
                      v512 = bswap32(LODWORD(v13));
                      v514 = *v79;
                    }

                    else
                    {
                      v509 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v749 = vrev32q_s8(*v79->i8);
                      *v510.i32 = PDAsoftlightPDA(*v509.i32, *&v509.i32[1], v10, *&v11, *v12.i64, v13, *v749.i64, v15, v2, v3, v25, v4, v5, v21, v39, v40, *v749.i32, v749.u32[1], v749.i64[1], *&v13);
                      v511 = bswap32(LODWORD(v10));
                      v512 = bswap32(LODWORD(v11));
                      v510.i32[1] = v513;
                      v514 = vrev32_s8(v510);
                    }

                    *v80->i8 = v514;
                    v80->i32[2] = v511;
                    v80->i32[3] = v512;
                  }

                  v515 = &v79[2 * v762];
                  if (v515 >= v57)
                  {
                    v516 = -v765;
                  }

                  else
                  {
                    v516 = 0;
                  }

                  v79 = &v515[2 * v516];
                  v80 += v762;
                  --v507;
                }

                while (v507);
                v80 += v792;
                v517 = v798;
                v518 = &v798[2 * v796];
                v519 = -(v796 * v763);
                if (v518 < v794)
                {
                  v519 = 0;
                }

                v520 = &v518[2 * v519];
                v521 = v57 + 16 * v519 + 16 * v796;
                if (v794)
                {
                  v57 = v521;
                  v517 = v520;
                }

                v798 = v517;
                if (v794)
                {
                  v79 = v520;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v506 = v772 - 1;
              }

              while (v772 != 1);
              goto LABEL_888;
            case 21:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v786 = v21;
              v533 = v800[0];
              do
              {
                v773 = v533;
                v534 = v786;
                do
                {
                  v535 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v536 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v536;
                    if (v17 && (v535 = v536, v536 <= 0.0))
                    {
                      v540 = v79[1].u32[0];
                      v541 = bswap32(LODWORD(v13));
                      v543 = *v79;
                    }

                    else
                    {
                      v537 = vrev32_s8(*v80->i8);
                      LODWORD(v10) = bswap32(v80->u32[2]);
                      v538 = *v79->i8;
                      LODWORD(v538) = v537.i32[1];
                      v750 = vrev32q_s8(*v79->i8);
                      *v539.i32 = PDAhardlightPDA(*v537.i32, *&v538, v10, v11, v535, v13, *v750.i64, v15, *v750.i32, *&v750.i64[1], *&v13);
                      v540 = bswap32(LODWORD(v10));
                      v541 = bswap32(LODWORD(v11));
                      v539.i32[1] = v542;
                      v543 = vrev32_s8(v539);
                    }

                    *v80->i8 = v543;
                    v80->i32[2] = v540;
                    v80->i32[3] = v541;
                  }

                  v544 = &v79[2 * v762];
                  if (v544 >= v57)
                  {
                    v545 = -v765;
                  }

                  else
                  {
                    v545 = 0;
                  }

                  v79 = &v544[2 * v545];
                  v80 += v762;
                  --v534;
                }

                while (v534);
                v80 += v792;
                v546 = v798;
                v547 = &v798[2 * v796];
                v548 = -(v796 * v763);
                if (v547 < v794)
                {
                  v548 = 0;
                }

                v549 = &v547[2 * v548];
                v550 = v57 + 16 * v548 + 16 * v796;
                if (v794)
                {
                  v57 = v550;
                  v546 = v549;
                }

                v798 = v546;
                if (v794)
                {
                  v79 = v549;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v533 = v773 - 1;
              }

              while (v773 != 1);
              goto LABEL_888;
            case 22:
              v626 = v800[0];
              do
              {
                v627 = v21;
                do
                {
                  v628 = 1.0;
                  v629 = 1.0;
                  if (!v56 || (v629 = COERCE_FLOAT(bswap32(v79[1].u32[1])), v629 > 0.0))
                  {
                    if (v17 && (v628 = COERCE_FLOAT(bswap32(v80->u32[3])), v628 <= 0.0))
                    {
                      v641 = v79[1].u32[0];
                      v642 = bswap32(LODWORD(v629));
                      v643 = *v79;
                    }

                    else
                    {
                      v630 = COERCE_FLOAT(bswap32(v80->u32[2]));
                      v631 = vrev32_s8(*v80->i8);
                      v632 = vrev32q_s8(*v79->i8);
                      v633 = vadd_f32(*v632.f32, v631);
                      v634 = vmul_n_f32(v631, v629);
                      v635 = vmul_n_f32(*v632.f32, v628);
                      v636 = vsub_f32(v633, v634);
                      v637 = vsub_f32(v634, v635);
                      v638 = vadd_f32(vsub_f32(v636, v635), vbsl_s8(vcltz_f32(v637), vneg_f32(v637), v637));
                      v632.f32[0] = vmuls_lane_f32(v628, v632, 2);
                      v639 = (v629 * v630) - v632.f32[0];
                      v640 = ((v632.f32[2] + v630) - (v629 * v630)) - v632.f32[0];
                      if (v639 < 0.0)
                      {
                        v639 = -v639;
                      }

                      v641 = bswap32(COERCE_UNSIGNED_INT(v640 + v639));
                      v642 = bswap32(COERCE_UNSIGNED_INT((v628 + v629) - (v628 * v629)));
                      v643 = vrev32_s8(v638);
                    }

                    *v80->i8 = v643;
                    v80->i32[2] = v641;
                    v80->i32[3] = v642;
                  }

                  v644 = &v79[2 * v762];
                  if (v644 >= v57)
                  {
                    v645 = -v765;
                  }

                  else
                  {
                    v645 = 0;
                  }

                  v79 = &v644[2 * v645];
                  v80 += v762;
                  --v627;
                }

                while (v627);
                v80 += v792;
                v646 = v798;
                v647 = &v798[2 * v796];
                if (v647 >= v794)
                {
                  v648 = -(v796 * v763);
                }

                else
                {
                  v648 = 0;
                }

                v649 = &v647[2 * v648];
                v650 = v57 + 16 * v648 + 16 * v796;
                if (v794)
                {
                  v57 = v650;
                  v646 = v649;
                }

                v798 = v646;
                if (v794)
                {
                  v79 = v649;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v626;
              }

              while (v626);
              goto LABEL_941;
            case 23:
              v669 = v800[0];
              do
              {
                v670 = v21;
                do
                {
                  v671 = 1.0;
                  v672 = 1.0;
                  if (!v56 || (v672 = COERCE_FLOAT(bswap32(v79[1].u32[1])), v672 > 0.0))
                  {
                    if (v17 && (v671 = COERCE_FLOAT(bswap32(v80->u32[3])), v671 <= 0.0))
                    {
                      v675 = v79[1].u32[0];
                      v679 = bswap32(LODWORD(v672));
                      *v80->i8 = *v79;
                    }

                    else
                    {
                      v673 = COERCE_FLOAT(bswap32(v80->u32[2]));
                      v674 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
                      v675 = bswap32(COERCE_UNSIGNED_INT((v673 + v674) + ((v673 * v674) * -2.0)));
                      *&v676 = (v672 + v671) - (v671 * v672);
                      v677 = vrev32_s8(*v80->i8);
                      v678 = vrev32_s8(*v79);
                      *v80->i8 = vrev32_s8(vmla_f32(vadd_f32(v677, v678), 0xC0000000C0000000, vmul_f32(v677, v678)));
                      v679 = bswap32(v676);
                    }

                    v80->i32[2] = v675;
                    v80->i32[3] = v679;
                  }

                  v680 = &v79[2 * v762];
                  if (v680 >= v57)
                  {
                    v681 = -v765;
                  }

                  else
                  {
                    v681 = 0;
                  }

                  v79 = &v680[2 * v681];
                  v80 += v762;
                  --v670;
                }

                while (v670);
                v80 += v792;
                v682 = v798;
                v683 = &v798[2 * v796];
                if (v683 >= v794)
                {
                  v684 = -(v796 * v763);
                }

                else
                {
                  v684 = 0;
                }

                v685 = &v683[2 * v684];
                v686 = v57 + 16 * v684 + 16 * v796;
                if (v794)
                {
                  v57 = v686;
                  v682 = v685;
                }

                v798 = v682;
                if (v794)
                {
                  v79 = v685;
                }

                else
                {
                  v79 += 2 * v796;
                }

                --v669;
              }

              while (v669);
              goto LABEL_941;
            case 24:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v782 = v21;
              v413 = v800[0];
              do
              {
                v769 = v413;
                v414 = v782;
                do
                {
                  v415 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v416 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v416;
                    if (v17 && (v415 = v416, v416 <= 0.0))
                    {
                      v420 = v79[1].u32[0];
                      v421 = bswap32(LODWORD(v13));
                      v423 = *v79;
                    }

                    else
                    {
                      v417 = vrev32_s8(*v80->i8);
                      v746 = vrev32q_s8(*v79->i8);
                      *v418.i32 = PDAhuePDA(*v417.i32, *&v417.i32[1], COERCE_FLOAT(bswap32(v80->u32[2])), v11, v415, v13, *v746.i64, v15, *v746.i32, *&v746.i32[1], *&v746.i32[2], *&v746.i32[3], *&v13);
                      v420 = bswap32(v419);
                      v421 = bswap32(LODWORD(v11));
                      v418.i32[1] = v422;
                      v423 = vrev32_s8(v418);
                    }

                    *v80->i8 = v423;
                    v80->i32[2] = v420;
                    v80->i32[3] = v421;
                  }

                  v424 = &v79[2 * v762];
                  if (v424 >= v57)
                  {
                    v425 = -v765;
                  }

                  else
                  {
                    v425 = 0;
                  }

                  v79 = &v424[2 * v425];
                  v80 += v762;
                  --v414;
                }

                while (v414);
                v80 += v792;
                v426 = v798;
                v427 = &v798[2 * v796];
                v428 = -(v796 * v763);
                if (v427 < v794)
                {
                  v428 = 0;
                }

                v429 = &v427[2 * v428];
                v430 = v57 + 16 * v428 + 16 * v796;
                if (v794)
                {
                  v57 = v430;
                  v426 = v429;
                }

                v798 = v426;
                if (v794)
                {
                  v79 = v429;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v413 = v769 - 1;
              }

              while (v769 != 1);
              goto LABEL_888;
            case 25:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v781 = v21;
              v395 = v800[0];
              do
              {
                v768 = v395;
                v396 = v781;
                do
                {
                  v397 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v398 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v398;
                    if (v17 && (v397 = v398, v398 <= 0.0))
                    {
                      v402 = v79[1].u32[0];
                      v403 = bswap32(LODWORD(v13));
                      v405 = *v79;
                    }

                    else
                    {
                      v399 = vrev32_s8(*v80->i8);
                      v745 = vrev32q_s8(*v79->i8);
                      *v400.i32 = PDAsaturationPDA(*v399.i32, *&v399.i32[1], COERCE_FLOAT(bswap32(v80->u32[2])), v11, v397, v13, *v745.i64, v15, *v745.i32, *&v745.i32[1], *&v745.i32[2], *&v745.i32[3], *&v13);
                      v402 = bswap32(v401);
                      v403 = bswap32(LODWORD(v11));
                      v400.i32[1] = v404;
                      v405 = vrev32_s8(v400);
                    }

                    *v80->i8 = v405;
                    v80->i32[2] = v402;
                    v80->i32[3] = v403;
                  }

                  v406 = &v79[2 * v762];
                  if (v406 >= v57)
                  {
                    v407 = -v765;
                  }

                  else
                  {
                    v407 = 0;
                  }

                  v79 = &v406[2 * v407];
                  v80 += v762;
                  --v396;
                }

                while (v396);
                v80 += v792;
                v408 = v798;
                v409 = &v798[2 * v796];
                v410 = -(v796 * v763);
                if (v409 < v794)
                {
                  v410 = 0;
                }

                v411 = &v409[2 * v410];
                v412 = v57 + 16 * v410 + 16 * v796;
                if (v794)
                {
                  v57 = v412;
                  v408 = v411;
                }

                v798 = v408;
                if (v794)
                {
                  v79 = v411;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v395 = v768 - 1;
              }

              while (v768 != 1);
              goto LABEL_888;
            case 26:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v790 = v21;
              v687 = v800[0];
              do
              {
                v777 = v687;
                v688 = v790;
                do
                {
                  LODWORD(v13) = 1.0;
                  v689 = 1.0;
                  if (!v56 || (v689 = COERCE_FLOAT(bswap32(v79[1].u32[1])), v689 > 0.0))
                  {
                    v690 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v14 = v690;
                    if (v17 && (*&v13 = v690, v690 <= 0.0))
                    {
                      v694 = v79[1].u32[0];
                      v695 = bswap32(LODWORD(v689));
                      v697 = *v79;
                    }

                    else
                    {
                      v691 = vrev32q_s8(*v79->i8);
                      LODWORD(v11) = v691.i32[3];
                      v754 = COERCE_DOUBLE(vrev32_s8(*v80->i8));
                      *v692.i32 = PDAluminosityPDA(*v691.i32, *&v691.i32[1], *&v691.i32[2], v11, v689, v13, v14, v754, *&v754, *(&v754 + 1), COERCE_FLOAT(bswap32(v80->u32[2])), *&v14, *&v13);
                      v694 = bswap32(v693);
                      v695 = bswap32(LODWORD(v11));
                      v692.i32[1] = v696;
                      v697 = vrev32_s8(v692);
                    }

                    *v80->i8 = v697;
                    v80->i32[2] = v694;
                    v80->i32[3] = v695;
                  }

                  v698 = &v79[2 * v762];
                  if (v698 >= v57)
                  {
                    v699 = -v765;
                  }

                  else
                  {
                    v699 = 0;
                  }

                  v79 = &v698[2 * v699];
                  v80 += v762;
                  --v688;
                }

                while (v688);
                v80 += v792;
                v700 = v798;
                v701 = &v798[2 * v796];
                v702 = -(v796 * v763);
                if (v701 < v794)
                {
                  v702 = 0;
                }

                v703 = &v701[2 * v702];
                v704 = v57 + 16 * v702 + 16 * v796;
                if (v794)
                {
                  v57 = v704;
                  v700 = v703;
                }

                v798 = v700;
                if (v794)
                {
                  v79 = v703;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v687 = v777 - 1;
              }

              while (v777 != 1);
              goto LABEL_888;
            case 27:
              v759 = v38;
              v760 = v36;
              v761 = v37;
              v779 = v21;
              v279 = v800[0];
              do
              {
                v766 = v279;
                v280 = v779;
                do
                {
                  v281 = 1.0;
                  LODWORD(v13) = 1.0;
                  if (!v56 || (LODWORD(v13) = bswap32(v79[1].u32[1]), *&v13 > 0.0))
                  {
                    v282 = COERCE_FLOAT(bswap32(v80->u32[3]));
                    *&v11 = v282;
                    if (v17 && (v281 = v282, v282 <= 0.0))
                    {
                      v286 = v79[1].u32[0];
                      v287 = bswap32(LODWORD(v13));
                      v289 = *v79;
                    }

                    else
                    {
                      v283 = vrev32_s8(*v80->i8);
                      v743 = vrev32q_s8(*v79->i8);
                      *v284.i32 = PDAluminosityPDA(*v283.i32, *&v283.i32[1], COERCE_FLOAT(bswap32(v80->u32[2])), v11, v281, v13, *v743.i64, v15, *v743.i32, *&v743.i32[1], *&v743.i32[2], *&v743.i32[3], *&v13);
                      v286 = bswap32(v285);
                      v287 = bswap32(LODWORD(v11));
                      v284.i32[1] = v288;
                      v289 = vrev32_s8(v284);
                    }

                    *v80->i8 = v289;
                    v80->i32[2] = v286;
                    v80->i32[3] = v287;
                  }

                  v290 = &v79[2 * v762];
                  if (v290 >= v57)
                  {
                    v291 = -v765;
                  }

                  else
                  {
                    v291 = 0;
                  }

                  v79 = &v290[2 * v291];
                  v80 += v762;
                  --v280;
                }

                while (v280);
                v80 += v792;
                v292 = v798;
                v293 = &v798[2 * v796];
                v294 = -(v796 * v763);
                if (v293 < v794)
                {
                  v294 = 0;
                }

                v295 = &v293[2 * v294];
                v296 = v57 + 16 * v294 + 16 * v796;
                if (v794)
                {
                  v57 = v296;
                  v292 = v295;
                }

                v798 = v292;
                if (v794)
                {
                  v79 = v295;
                }

                else
                {
                  v79 += 2 * v796;
                }

                v279 = v766 - 1;
              }

              while (v766 != 1);
LABEL_888:
              v800[0] = 0;
              LODWORD(v18) = v758;
              v38 = v759;
              v20 = v755;
              v36 = v760;
              v37 = v761;
              goto LABEL_942;
            default:
              goto LABEL_942;
          }

          break;
        }

LABEL_715:
        v570 = v21;
        while (1)
        {
          v571 = COERCE_FLOAT(bswap32(v80->u32[3]));
          v572 = 1.0 - v571;
          if ((1.0 - v571) >= 1.0)
          {
            break;
          }

          if (v572 > 0.0)
          {
            v573 = COERCE_FLOAT(bswap32(v80->u32[2]));
            v574 = COERCE_FLOAT(bswap32(v79[1].u32[0]));
            v575 = COERCE_FLOAT(bswap32(v79[1].u32[1]));
            if (!v56)
            {
              v575 = 1.0;
            }

            v576 = bswap32(COERCE_UNSIGNED_INT(v573 + (v574 * v572)));
            v577 = bswap32(COERCE_UNSIGNED_INT(v571 + (v575 * v572)));
            v578 = vrev32_s8(vmla_n_f32(vrev32_s8(*v80->i8), vrev32_s8(*v79), v572));
LABEL_724:
            *v80->i8 = v578;
            v80->i32[2] = v576;
            v80->i32[3] = v577;
          }

          v580 = &v79[2 * v762];
          if (v580 >= v57)
          {
            v581 = -v765;
          }

          else
          {
            v581 = 0;
          }

          v79 = &v580[2 * v581];
          v80 += v762;
          if (!--v570)
          {
            v80 += v792;
            v582 = v798;
            v583 = &v798[2 * v796];
            if (v583 >= v794)
            {
              v584 = -(v796 * v763);
            }

            else
            {
              v584 = 0;
            }

            v585 = &v583[2 * v584];
            v586 = v57 + 16 * v584 + 16 * v796;
            if (v794)
            {
              v57 = v586;
              v582 = v585;
            }

            v798 = v582;
            if (v794)
            {
              v79 = v585;
            }

            else
            {
              v79 += 2 * v796;
            }

            if (!--v569)
            {
LABEL_941:
              v800[0] = 0;
              goto LABEL_942;
            }

            goto LABEL_715;
          }
        }

        v576 = v79[1].u32[0];
        v579 = bswap32(v79[1].u32[1]);
        if (!v56)
        {
          v579 = 1065353216;
        }

        v577 = bswap32(v579);
        v578 = *v79;
        goto LABEL_724;
      }

      v792 = v37 - v21;
      if (v36)
      {
        v764 = 0;
        v77 = v41 % v765;
        v796 = *(v3 + 76) >> 4;
        v78 = v36 + 16 * v43 * (v42 % v763);
        v79 = (v78 + 16 * v77);
        v57 = v78 + 16 * v765;
        v762 = 1;
        v798 = v79;
        v80 = (*(v3 + 40) + 16 * v37 * *(v3 + 16) + 16 * *(v3 + 12));
        v756 = v42 % v763;
        v757 = v77;
        goto LABEL_316;
      }

      v756 = *(v3 + 60);
      v757 = *(v3 + 56);
      v57 = 0;
      v762 = 1;
      v83 = v21;
    }

    v764 = 0;
    v794 = 0;
    v798 = 0;
    v796 = v43 - v83;
    v79 = v36;
    v80 = v38;
    goto LABEL_316;
  }

  v26 = *(v3 + 128);
  if ((v26 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      RGBAF_mark_constmask(v3, v18, v25, v4, v5, v21, v26, v7, v8, v9, v10, *&v11, *v12.i64, v13, v14, v15);
    }

    else
    {
      RGBAF_mark_pixelmask(v3, v18, v8, v9, v10, *&v11, *v12.i64, v13, v14, v15);
    }
  }

  else
  {
    v51 = *(v3 + 112);
    v52 = *(v3 + 116);
    v53 = (v51 + 15) & 0xFFFFFFF0;
    v54 = v53 * v52;
    if (v54 <= 4096)
    {
      v35 = v810;
    }

    else
    {
      v55 = malloc_type_malloc(v54, 0x100004077774924uLL);
      if (!v55)
      {
        return 1;
      }

      v35 = v55;
      v25 = *(v20 + 136);
      LODWORD(v26) = *(v20 + 128);
    }

    CGSConvertBitsToMask(v25, *(v20 + 124), v35, v53, v51, v52, v26);
    v71 = *(v20 + 112);
    v806 = *(v20 + 96);
    v807 = v71;
    v72 = *(v20 + 144);
    v808 = *(v20 + 128);
    v809 = v72;
    v73 = *(v20 + 48);
    v802 = *(v20 + 32);
    v803 = v73;
    v74 = *(v20 + 80);
    v804 = *(v20 + 64);
    v805 = v74;
    v75 = *v20;
    v76 = *(v20 + 16);
    *v800 = *v20;
    v801 = v76;
    HIDWORD(v807) = (v51 + 15) & 0xFFFFFFF0;
    *(&v808 + 1) = v35;
    if (BYTE1(v800[0]) << 8 == 1024)
    {
      RGBAF_mark_constmask(v800, v18, v59, v60, v61, v62, v63, v64, *&v75, *&v76, v65, v66, v67, v68, v69, v70);
    }

    else
    {
      RGBAF_mark_pixelmask(v800, v18, *&v75, *&v76, v65, v66, v67, v68, v69, v70);
    }

    if (v35 != v810)
    {
      goto LABEL_312;
    }
  }

  return 1;
}

void RGBAF_mark_constmask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, int32x2_t a12, double a13, double a14, double a15, double a16)
{
  v16 = *(a1 + 136);
  if (v16)
  {
    v18 = *(a1 + 4);
    v17 = *(a1 + 8);
    v19 = *(a1 + 48);
    v20 = **(a1 + 88);
    v21 = vrev32q_s8(v20);
    v22 = *(a1 + 28) >> 4;
    v23 = *(a1 + 40) + 16 * v22 * *(a1 + 16) + 16 * *(a1 + 12);
    v24 = *(a1 + 124);
    v25 = v16 + *(a1 + 108) * v24 + *(a1 + 104);
    v26 = v24 - v18;
    v27 = v22 - v18;
    v272 = v21;
    switch(a2)
    {
      case 0:
        do
        {
          v28 = v18;
          do
          {
            v29 = *v25;
            if (*v25)
            {
              if (v29 == 255)
              {
                *v23 = 0;
                *(v23 + 8) = 0;
              }

              else
              {
                *v23 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v23), (v29 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v25;
            v23 += 16;
            --v28;
          }

          while (v28);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 1:
        v144 = -1;
        v145 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v18 += v145;
          v144 = -1 << (8 * v145);
          v146 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 16 * v146;
        }

        v147 = (v18 + v25) & 3;
        if (((v18 + v25) & 3) != 0)
        {
          v148 = 4 - v147;
          v145 += v148;
          v149 = 0xFFFFFFFF >> (8 * v148);
          if (v18 >= 4)
          {
            v147 = 0xFFFFFFFF >> (8 * v148);
          }

          else
          {
            v147 = 0;
          }

          if (v18 >= 4)
          {
            v149 = -1;
          }

          v144 &= v149;
        }

        v150 = v26 - v145;
        v151 = v27 - v145;
        do
        {
          v152 = *v25 & v144;
          v153 = v18 >> 2;
          v154 = v147;
          if (!v152)
          {
            goto LABEL_179;
          }

LABEL_177:
          if (v152 == -1)
          {
            *v23 = v20;
            *(v23 + 16) = v20;
            *(v23 + 32) = v20;
LABEL_197:
            *(v23 + 48) = v20;
            goto LABEL_179;
          }

          while (1)
          {
            if (v152)
            {
              v156 = v20;
              if (v152 != 255)
              {
                v156 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, v152 * 0.0039216), vrev32q_s8(*v23), 1.0 - (v152 * 0.0039216)));
              }

              *v23 = v156;
            }

            if (BYTE1(v152))
            {
              v157 = v20;
              if (BYTE1(v152) != 255)
              {
                v157 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, BYTE1(v152) * 0.0039216), vrev32q_s8(*(v23 + 16)), 1.0 - (BYTE1(v152) * 0.0039216)));
              }

              *(v23 + 16) = v157;
            }

            if (BYTE2(v152))
            {
              v158 = v20;
              if (BYTE2(v152) != 255)
              {
                v158 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, BYTE2(v152) * 0.0039216), vrev32q_s8(*(v23 + 32)), 1.0 - (BYTE2(v152) * 0.0039216)));
              }

              *(v23 + 32) = v158;
            }

            v159 = HIBYTE(v152);
            if (v159 == 255)
            {
              goto LABEL_197;
            }

            if (v159)
            {
              *(v23 + 48) = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v21, v159 * 0.0039216), vrev32q_s8(*(v23 + 48)), 1.0 - (v159 * 0.0039216)));
            }

LABEL_179:
            while (1)
            {
              v155 = v153;
              v23 += 64;
              --v153;
              v25 += 4;
              if (v155 < 2)
              {
                break;
              }

              v152 = *v25;
              if (*v25)
              {
                goto LABEL_177;
              }
            }

            if (!v154)
            {
              break;
            }

            v154 = 0;
            v152 = *v25 & v147;
          }

          v25 += v150;
          v23 += 16 * v151;
          --v17;
        }

        while (v17);
        return;
      case 2:
        v106 = -1;
        v107 = v25 & 3;
        if ((v25 & 3) != 0)
        {
          v18 += v107;
          v106 = -1 << (8 * v107);
          v108 = v25 & 3;
          v25 &= 0xFFFFFFFFFFFFFFFCLL;
          v23 -= 16 * v108;
        }

        v109 = (v18 + v25) & 3;
        if (((v18 + v25) & 3) != 0)
        {
          v110 = 4 - v109;
          v107 += v110;
          v111 = 0xFFFFFFFF >> (8 * v110);
          if (v18 >= 4)
          {
            v109 = 0xFFFFFFFF >> (8 * v110);
          }

          else
          {
            v109 = 0;
          }

          if (v18 >= 4)
          {
            v111 = -1;
          }

          v106 &= v111;
        }

        v112 = v26 - v107;
        *v20.i32 = 1.0 - v21.f32[3];
        v113 = vdupq_lane_s32(*v20.i8, 0);
        v114 = v27 - v107;
        while (1)
        {
          v115 = *v25 & v106;
          v116 = v18 >> 2;
          v117 = v109;
          if (!v115)
          {
            goto LABEL_120;
          }

LABEL_118:
          if (v115 == -1)
          {
            break;
          }

          while (1)
          {
            if (v115)
            {
              v122 = vmulq_n_f32(v21, v115 * 0.0039216);
              *v23 = vrev32q_s8(vmlaq_n_f32(v122, vrev32q_s8(*v23), 1.0 - v122.f32[3]));
            }

            if ((v115 & 0xFF00) != 0)
            {
              v123 = vmulq_n_f32(v21, BYTE1(v115) * 0.0039216);
              *(v23 + 16) = vrev32q_s8(vmlaq_n_f32(v123, vrev32q_s8(*(v23 + 16)), 1.0 - v123.f32[3]));
            }

            if ((v115 & 0xFF0000) != 0)
            {
              v124 = vmulq_n_f32(v21, BYTE2(v115) * 0.0039216);
              *(v23 + 32) = vrev32q_s8(vmlaq_n_f32(v124, vrev32q_s8(*(v23 + 32)), 1.0 - v124.f32[3]));
            }

            v125 = HIBYTE(v115);
            if (v125)
            {
              v126 = vmulq_n_f32(v21, v125 * 0.0039216);
              v120 = vmlaq_n_f32(v126, vrev32q_s8(*(v23 + 48)), 1.0 - v126.f32[3]);
              goto LABEL_133;
            }

LABEL_120:
            while (1)
            {
              v121 = v116;
              v23 += 64;
              --v116;
              v25 += 4;
              if (v121 < 2)
              {
                break;
              }

              v115 = *v25;
              if (*v25)
              {
                goto LABEL_118;
              }
            }

            if (!v117)
            {
              break;
            }

            v117 = 0;
            v115 = *v25 & v109;
          }

          v25 += v112;
          v23 += 16 * v114;
          if (!--v17)
          {
            return;
          }
        }

        v118 = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*(v23 + 16))));
        *v23 = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*v23)));
        *(v23 + 16) = v118;
        v119 = *(v23 + 48);
        *(v23 + 32) = vrev32q_s8(vmlaq_f32(v21, v113, vrev32q_s8(*(v23 + 32))));
        v120 = vmlaq_f32(v21, v113, vrev32q_s8(v119));
LABEL_133:
        *(v23 + 48) = bswap32(v120.u32[0]);
        *(v23 + 52) = vrev32_s8(vext_s8(*v120.i8, *&vextq_s8(v120, v120, 8uLL), 4uLL));
        *(v23 + 60) = bswap32(v120.u32[3]);
        goto LABEL_120;
      case 3:
        do
        {
          v137 = v18;
          do
          {
            v138 = *v25;
            if (*v25)
            {
              if (v138 == 255)
              {
                v139 = vmulq_n_f32(v21, COERCE_FLOAT(bswap32(*(v23 + 12))));
              }

              else
              {
                v140 = vrev32q_s8(*v23);
                v139 = vmlaq_n_f32(vmulq_n_f32(v21, vmuls_lane_f32(v138 * 0.0039216, v140, 3)), v140, 1.0 - (v138 * 0.0039216));
              }

              *v23 = vrev32q_s8(v139);
            }

            ++v25;
            v23 += 16;
            --v137;
          }

          while (v137);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 4:
        do
        {
          v69 = v18;
          do
          {
            v70 = *v25;
            if (*v25)
            {
              if (v70 == 255)
              {
                v71 = vmulq_n_f32(v21, 1.0 - COERCE_FLOAT(bswap32(*(v23 + 12))));
              }

              else
              {
                v72 = vrev32q_s8(*v23);
                v71 = vmlaq_n_f32(vmulq_n_f32(v21, (v70 * 0.0039216) * (1.0 - v72.f32[3])), v72, 1.0 - (v70 * 0.0039216));
              }

              *v23 = vrev32q_s8(v71);
            }

            ++v25;
            v23 += 16;
            --v69;
          }

          while (v69);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 5:
        do
        {
          v179 = v18;
          do
          {
            if (*v25)
            {
              v180 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v181 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v181, 1.0 - v180.f32[3]), v180, v181, 3));
            }

            ++v25;
            v23 += 16;
            --v179;
          }

          while (v179);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 6:
        while (1)
        {
          v202 = v18;
          do
          {
            v203 = *v25;
            if (!*v25)
            {
              goto LABEL_263;
            }

            v204 = COERCE_FLOAT(bswap32(*(v23 + 12)));
            v205 = 1.0 - v204;
            if ((1.0 - v204) >= 1.0)
            {
              v210 = v203 * 0.0039216;
              v207 = bswap32(COERCE_UNSIGNED_INT(v210 * v21.f32[2]));
              v208 = bswap32(COERCE_UNSIGNED_INT(v210 * v21.f32[3]));
              v209 = vrev32_s8(vmul_n_f32(*v21.f32, v210));
            }

            else
            {
              if (v205 <= 0.0)
              {
                goto LABEL_263;
              }

              v206 = v203 * 0.0039216;
              v207 = bswap32(COERCE_UNSIGNED_INT(COERCE_FLOAT(bswap32(*(v23 + 8))) + ((v206 * v21.f32[2]) * v205)));
              v208 = bswap32(COERCE_UNSIGNED_INT(v204 + ((v206 * v21.f32[3]) * v205)));
              v209 = vrev32_s8(vmla_n_f32(vrev32_s8(*v23), vmul_n_f32(*v21.f32, v206), v205));
            }

            *v23 = v209;
            *(v23 + 8) = v207;
            *(v23 + 12) = v208;
LABEL_263:
            ++v25;
            v23 += 16;
            --v202;
          }

          while (v202);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 7:
        do
        {
          v141 = v18;
          do
          {
            v142 = *v25;
            if (*v25)
            {
              if (v142 == 255)
              {
                v143 = vmulq_laneq_f32(vrev32q_s8(*v23), v21, 3);
              }

              else
              {
                v143 = vmulq_n_f32(vrev32q_s8(*v23), ((v142 * 0.0039216) * v21.f32[3]) + (1.0 - (v142 * 0.0039216)));
              }

              *v23 = vrev32q_s8(v143);
            }

            ++v25;
            v23 += 16;
            --v141;
          }

          while (v141);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 8:
        do
        {
          v224 = v18;
          do
          {
            v225 = *v25;
            if (*v25)
            {
              if (v225 == 255)
              {
                v226 = vmulq_n_f32(vrev32q_s8(*v23), 1.0 - v21.f32[3]);
              }

              else
              {
                v226 = vmulq_n_f32(vrev32q_s8(*v23), ((v225 * -0.0039216) * v21.f32[3]) + 1.0);
              }

              *v23 = vrev32q_s8(v226);
            }

            ++v25;
            v23 += 16;
            --v224;
          }

          while (v224);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 9:
        do
        {
          v79 = v18;
          do
          {
            if (*v25)
            {
              v80 = *v25 * 0.0039216;
              v81 = 1.0 - v80;
              v82 = vmulq_n_f32(v21, v80);
              v83 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v83, v81 + v82.f32[3]), v82, 1.0 - v83.f32[3]));
            }

            ++v25;
            v23 += 16;
            --v79;
          }

          while (v79);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 10:
        do
        {
          v221 = v18;
          do
          {
            if (*v25)
            {
              v222 = vmulq_n_f32(v21, *v25 * 0.0039216);
              v223 = vrev32q_s8(*v23);
              *v23 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v223, 1.0 - v222.f32[3]), v222, 1.0 - v223.f32[3]));
            }

            ++v25;
            v23 += 16;
            --v221;
          }

          while (v221);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 11:
        v62 = vextq_s8(v21, v21, 8uLL).u64[0];
        do
        {
          v63 = v18;
          do
          {
            if (*v25)
            {
              v64 = *v25 * 0.0039216;
              v65 = vmul_n_f32(v62, v64);
              v66 = COERCE_FLOAT(bswap32(*(v23 + 8)));
              LODWORD(a15) = bswap32(*(v23 + 12));
              if (!v19)
              {
                *&a15 = 1.0;
              }

              v67 = (*&v65.i32[1] - *v65.i32) + (*&a15 - v66);
              if ((*&v65.i32[1] + *&a15) <= 1.0)
              {
                *&a16 = *&v65.i32[1] + *&a15;
              }

              else
              {
                *&a16 = 1.0;
              }

              a15 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a15, 0), vrev32_s8(*v23)));
              *v68.i8 = vsub_f32(vdup_lane_s32(*&a16, 0), vadd_f32(vsub_f32(vdup_lane_s32(v65, 1), vmul_n_f32(*v21.f32, v64)), *&a15));
              *&v68.i32[2] = *&a16 - v67;
              v68.i32[3] = LODWORD(a16);
              *v23 = vrev32q_s8(v68);
            }

            ++v25;
            v23 += 16;
            --v63;
          }

          while (v63);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 12:
        do
        {
          v73 = v18;
          do
          {
            if (*v25)
            {
              v74 = *v25 * 0.0039216;
              v75 = v74 * v21.f32[2];
              v76 = (v74 * v21.f32[3]) + COERCE_FLOAT(bswap32(*(v23 + 12)));
              *v77.i8 = vadd_f32(vmul_n_f32(*v21.f32, v74), vrev32_s8(*v23));
              v78 = v75 + COERCE_FLOAT(bswap32(*(v23 + 8)));
              if (v76 > 1.0)
              {
                v76 = 1.0;
              }

              v77.i64[1] = __PAIR64__(LODWORD(v76), LODWORD(v78));
              *v23 = vrev32q_s8(v77);
            }

            ++v25;
            v23 += 16;
            --v73;
          }

          while (v73);
          v25 += v26;
          v23 += 16 * v27;
          --v17;
        }

        while (v17);
        return;
      case 13:
        while (1)
        {
          v192 = v18;
          do
          {
            if (*v25)
            {
              v193 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v193.i32[3] > 0.0)
              {
                v194 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v194;
                if (v19)
                {
                  v195 = v194;
                  if (v194 <= 0.0)
                  {
                    v196 = bswap32(v193.u32[2]);
                    v197 = bswap32(v193.u32[3]);
                    v198 = vrev32_s8(*v193.i8);
LABEL_252:
                    *v23 = v198;
                    *(v23 + 8) = v196;
                    *(v23 + 12) = v197;
                    goto LABEL_253;
                  }
                }

                else
                {
                  v195 = 1.0;
                }

                v199 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v199.i32[1];
                *&v200 = vextq_s8(v193, v193, 4uLL).u64[0];
                *v201.i32 = PDAmultiplyPDA(*v199.i32, a10, a11, *&a12, v195, *v193.i64, v200, a16, *v193.i32, COERCE_DOUBLE(__PAIR64__(v193.u32[3], HIDWORD(v200))), *&v193.i32[3]);
                v21 = v272;
                v196 = bswap32(LODWORD(a11));
                v197 = bswap32(a12.u32[0]);
                v201.i32[1] = LODWORD(a10);
                v198 = vrev32_s8(v201);
                goto LABEL_252;
              }
            }

LABEL_253:
            ++v25;
            v23 += 16;
            --v192;
          }

          while (v192);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 14:
        __asm { FMOV            V1.2S, #1.0 }

        while (1)
        {
          v56 = v18;
          do
          {
            if (*v25)
            {
              v57 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v57.f32[3] > 0.0)
              {
                if (v19)
                {
                  v58 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                  if (v58 <= 0.0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v58 = 1.0;
                }

                LODWORD(v59) = bswap32(*(v23 + 8));
                *v60.f32 = vrev32_s8(*v23);
                *v61.f32 = vsub_f32(_D1, *v60.f32);
                v61.f32[2] = 1.0 - v59;
                v61.f32[3] = -v58;
                v60.i64[1] = __PAIR64__(v57.f32[3] + v58, LODWORD(v59));
                v57 = vmlaq_f32(v60, v57, v61);
LABEL_44:
                *v23 = vrev32q_s8(v57);
              }
            }

            ++v25;
            v23 += 16;
            --v56;
          }

          while (v56);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 15:
        while (1)
        {
          v127 = v18;
          do
          {
            if (*v25)
            {
              v128 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v128.i32[3] > 0.0)
              {
                v129 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v129;
                if (v19)
                {
                  v130 = v129;
                  if (v129 <= 0.0)
                  {
                    v131 = bswap32(v128.u32[2]);
                    v132 = bswap32(v128.u32[3]);
                    v133 = vrev32_s8(*v128.i8);
LABEL_144:
                    *v23 = v133;
                    *(v23 + 8) = v131;
                    *(v23 + 12) = v132;
                    goto LABEL_145;
                  }
                }

                else
                {
                  v130 = 1.0;
                }

                v134 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v134.i32[1];
                *&v135 = vextq_s8(v128, v128, 4uLL).u64[0];
                *v136.i32 = PDAoverlayPDA(*v134.i32, a10, a11, *&a12, v130, *v128.i64, v135, a16, *v128.i32, COERCE_DOUBLE(__PAIR64__(v128.u32[3], HIDWORD(v135))), *&v128.i32[3]);
                v21 = v272;
                v131 = bswap32(LODWORD(a11));
                v132 = bswap32(a12.u32[0]);
                v136.i32[1] = LODWORD(a10);
                v133 = vrev32_s8(v136);
                goto LABEL_144;
              }
            }

LABEL_145:
            ++v25;
            v23 += 16;
            --v127;
          }

          while (v127);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 16:
        while (1)
        {
          v41 = v18;
          do
          {
            if (*v25)
            {
              v42 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v42.i32[3] > 0.0)
              {
                v43 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v43;
                if (v19)
                {
                  v44 = v43;
                  if (v43 <= 0.0)
                  {
                    v45 = bswap32(v42.u32[2]);
                    v46 = bswap32(v42.u32[3]);
                    v47 = vrev32_s8(*v42.i8);
LABEL_31:
                    *v23 = v47;
                    *(v23 + 8) = v45;
                    *(v23 + 12) = v46;
                    goto LABEL_32;
                  }
                }

                else
                {
                  v44 = 1.0;
                }

                v48 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v48.i32[1];
                *&v49 = vextq_s8(v42, v42, 4uLL).u64[0];
                *v50.i32 = PDAdarkenPDA(*v48.i32, a10, a11, *&a12, v44, *v42.i64, v49, a16, *v42.i32, COERCE_DOUBLE(__PAIR64__(v42.u32[3], HIDWORD(v49))), *&v42.i32[3]);
                v21 = v272;
                v45 = bswap32(LODWORD(a11));
                v46 = bswap32(a12.u32[0]);
                v50.i32[1] = LODWORD(a10);
                v47 = vrev32_s8(v50);
                goto LABEL_31;
              }
            }

LABEL_32:
            ++v25;
            v23 += 16;
            --v41;
          }

          while (v41);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 17:
        while (1)
        {
          v160 = v18;
          do
          {
            if (*v25)
            {
              v161 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v161.i32[3] > 0.0)
              {
                v162 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v162;
                if (v19)
                {
                  v163 = v162;
                  if (v162 <= 0.0)
                  {
                    v164 = bswap32(v161.u32[2]);
                    v165 = bswap32(v161.u32[3]);
                    v166 = vrev32_s8(*v161.i8);
LABEL_210:
                    *v23 = v166;
                    *(v23 + 8) = v164;
                    *(v23 + 12) = v165;
                    goto LABEL_211;
                  }
                }

                else
                {
                  v163 = 1.0;
                }

                v167 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v167.i32[1];
                *&v168 = vextq_s8(v161, v161, 4uLL).u64[0];
                *v169.i32 = PDAlightenPDA(*v167.i32, a10, a11, *&a12, v163, *v161.i64, v168, a16, *v161.i32, COERCE_DOUBLE(__PAIR64__(v161.u32[3], HIDWORD(v168))), *&v161.i32[3]);
                v21 = v272;
                v164 = bswap32(LODWORD(a11));
                v165 = bswap32(a12.u32[0]);
                v169.i32[1] = LODWORD(a10);
                v166 = vrev32_s8(v169);
                goto LABEL_210;
              }
            }

LABEL_211:
            ++v25;
            v23 += 16;
            --v160;
          }

          while (v160);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 18:
        while (1)
        {
          v211 = v18;
          do
          {
            if (*v25)
            {
              v212 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v212.i32[3] > 0.0)
              {
                v213 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v213;
                if (v19)
                {
                  v214 = v213;
                  if (v213 <= 0.0)
                  {
                    v215 = bswap32(v212.u32[2]);
                    v216 = bswap32(v212.u32[3]);
                    v217 = vrev32_s8(*v212.i8);
LABEL_274:
                    *v23 = v217;
                    *(v23 + 8) = v215;
                    *(v23 + 12) = v216;
                    goto LABEL_275;
                  }
                }

                else
                {
                  v214 = 1.0;
                }

                v218 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v218.i32[1];
                *&v219 = vextq_s8(v212, v212, 4uLL).u64[0];
                *v220.i32 = PDAcolordodgePDA(*v218.i32, a10, a11, *&a12, v214, *v212.i64, v219, a16, *v212.i32, COERCE_DOUBLE(__PAIR64__(v212.u32[3], HIDWORD(v219))), *&v212.i32[3]);
                v21 = v272;
                v215 = bswap32(LODWORD(a11));
                v216 = bswap32(a12.u32[0]);
                v220.i32[1] = LODWORD(a10);
                v217 = vrev32_s8(v220);
                goto LABEL_274;
              }
            }

LABEL_275:
            ++v25;
            v23 += 16;
            --v211;
          }

          while (v211);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 19:
        while (1)
        {
          v242 = v18;
          do
          {
            if (*v25)
            {
              v243 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v243.i32[3] > 0.0)
              {
                v244 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v244;
                if (v19)
                {
                  v245 = v244;
                  if (v244 <= 0.0)
                  {
                    v246 = bswap32(v243.u32[2]);
                    v247 = bswap32(v243.u32[3]);
                    v248 = vrev32_s8(*v243.i8);
LABEL_315:
                    *v23 = v248;
                    *(v23 + 8) = v246;
                    *(v23 + 12) = v247;
                    goto LABEL_316;
                  }
                }

                else
                {
                  v245 = 1.0;
                }

                v249 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v249.i32[1];
                *&v250 = vextq_s8(v243, v243, 4uLL).u64[0];
                *v251.i32 = PDAcolorburnPDA(*v249.i32, a10, a11, *&a12, v245, *v243.i64, v250, a16, *v243.i32, COERCE_DOUBLE(__PAIR64__(v243.u32[3], HIDWORD(v250))), *&v243.i32[3]);
                v21 = v272;
                v246 = bswap32(LODWORD(a11));
                v247 = bswap32(a12.u32[0]);
                v251.i32[1] = LODWORD(a10);
                v248 = vrev32_s8(v251);
                goto LABEL_315;
              }
            }

LABEL_316:
            ++v25;
            v23 += 16;
            --v242;
          }

          while (v242);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 20:
        while (1)
        {
          v170 = v18;
          do
          {
            if (*v25)
            {
              v171 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v171.i32[3] > 0.0)
              {
                v172 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v172;
                if (v19)
                {
                  *&a13 = v172;
                  if (v172 <= 0.0)
                  {
                    v173 = bswap32(v171.u32[2]);
                    v174 = bswap32(v171.u32[3]);
                    v175 = vrev32_s8(*v171.i8);
LABEL_222:
                    *v23 = v175;
                    *(v23 + 8) = v173;
                    *(v23 + 12) = v174;
                    goto LABEL_223;
                  }
                }

                else
                {
                  LODWORD(a13) = 1.0;
                }

                v176 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                DWORD2(v271) = v171.i32[3];
                *&v271 = vextq_s8(v171, v171, 4uLL).u64[0];
                *v177.i32 = PDAsoftlightPDA(*v176.i32, *&v176.i32[1], a11, a12, a13, *v171.i64, *&v271, a16, a1, a2, a3, a4, a5, a6, a7, a8, *v171.i32, v271, *(&v271 + 4), *&v171.i32[3]);
                v21 = v272;
                v173 = bswap32(LODWORD(a11));
                v174 = bswap32(a12.u32[0]);
                v177.i32[1] = v178;
                v175 = vrev32_s8(v177);
                goto LABEL_222;
              }
            }

LABEL_223:
            ++v25;
            v23 += 16;
            --v170;
          }

          while (v170);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 21:
        while (1)
        {
          v182 = v18;
          do
          {
            if (*v25)
            {
              v183 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v183.i32[3] > 0.0)
              {
                v184 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v184;
                if (v19)
                {
                  v185 = v184;
                  if (v184 <= 0.0)
                  {
                    v186 = bswap32(v183.u32[2]);
                    v187 = bswap32(v183.u32[3]);
                    v188 = vrev32_s8(*v183.i8);
LABEL_240:
                    *v23 = v188;
                    *(v23 + 8) = v186;
                    *(v23 + 12) = v187;
                    goto LABEL_241;
                  }
                }

                else
                {
                  v185 = 1.0;
                }

                v189 = vrev32_s8(*v23);
                LODWORD(a11) = bswap32(*(v23 + 8));
                LODWORD(a10) = v189.i32[1];
                *&v190 = vextq_s8(v183, v183, 4uLL).u64[0];
                *v191.i32 = PDAhardlightPDA(*v189.i32, a10, a11, *&a12, v185, *v183.i64, v190, a16, *v183.i32, COERCE_DOUBLE(__PAIR64__(v183.u32[3], HIDWORD(v190))), *&v183.i32[3]);
                v21 = v272;
                v186 = bswap32(LODWORD(a11));
                v187 = bswap32(a12.u32[0]);
                v191.i32[1] = LODWORD(a10);
                v188 = vrev32_s8(v191);
                goto LABEL_240;
              }
            }

LABEL_241:
            ++v25;
            v23 += 16;
            --v182;
          }

          while (v182);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 22:
        while (1)
        {
          v227 = v18;
          do
          {
            if (*v25)
            {
              v228 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v228.f32[3] > 0.0)
              {
                if (v19)
                {
                  v229 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                  if (v229 <= 0.0)
                  {
                    v230 = bswap32(v228.u32[2]);
                    v231 = bswap32(v228.u32[3]);
                    v232 = vrev32_s8(*v228.f32);
LABEL_303:
                    *v23 = v232;
                    *(v23 + 8) = v230;
                    *(v23 + 12) = v231;
                    goto LABEL_304;
                  }
                }

                else
                {
                  v229 = 1.0;
                }

                v233 = COERCE_FLOAT(bswap32(*(v23 + 8)));
                v234 = vrev32_s8(*v23);
                v235 = vadd_f32(*v228.f32, v234);
                v236 = vmul_laneq_f32(v234, v228, 3);
                v237 = vmul_n_f32(*v228.f32, v229);
                v238 = vsub_f32(v235, v236);
                v239 = vsub_f32(v236, v237);
                v240 = vadd_f32(vsub_f32(v238, v237), vbsl_s8(vcltz_f32(v239), vneg_f32(v239), v239));
                v228.f32[0] = vmuls_lane_f32(v229, v228, 2);
                v241 = (v228.f32[3] * v233) - v228.f32[0];
                v228.f32[0] = ((v228.f32[2] + v233) - (v228.f32[3] * v233)) - v228.f32[0];
                if (v241 < 0.0)
                {
                  v241 = -v241;
                }

                v230 = bswap32(COERCE_UNSIGNED_INT(v228.f32[0] + v241));
                v231 = bswap32(COERCE_UNSIGNED_INT((v229 + v228.f32[3]) - (v229 * v228.f32[3])));
                v232 = vrev32_s8(v240);
                goto LABEL_303;
              }
            }

LABEL_304:
            ++v25;
            v23 += 16;
            --v227;
          }

          while (v227);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 23:
        while (1)
        {
          v252 = v18;
          do
          {
            if (*v25)
            {
              v253 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (v253.f32[3] > 0.0)
              {
                if (v19)
                {
                  LODWORD(v254) = bswap32(*(v23 + 12));
                  if (v254 <= 0.0)
                  {
                    goto LABEL_327;
                  }
                }

                else
                {
                  v254 = 1.0;
                }

                LODWORD(v255) = bswap32(*(v23 + 8));
                *v256.f32 = vrev32_s8(*v23);
                *v257.f32 = vmul_f32(*v253.f32, vneg_f32(*v256.f32));
                *&v258 = -v254;
                v256.i64[1] = __PAIR64__(LODWORD(v254), LODWORD(v255));
                v259.i64[0] = 0x4000000040000000;
                v259.i32[2] = 0x40000000;
                v259.i32[3] = v253.i32[3];
                v257.i64[1] = __PAIR64__(v258, COERCE_UNSIGNED_INT(vmuls_lane_f32(-v255, v253, 2)));
                v253 = vmlaq_f32(vaddq_f32(v253, v256), v259, v257);
LABEL_327:
                *v23 = vrev32q_s8(v253);
              }
            }

            ++v25;
            v23 += 16;
            --v252;
          }

          while (v252);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 24:
        while (1)
        {
          v95 = v18;
          do
          {
            if (*v25)
            {
              v96 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v96.i32[3] > 0.0)
              {
                v97 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v97;
                if (v19)
                {
                  v98 = v97;
                  if (v97 <= 0.0)
                  {
                    v99 = bswap32(v96.u32[2]);
                    v100 = bswap32(v96.u32[3]);
                    v101 = vrev32_s8(*v96.i8);
LABEL_103:
                    *v23 = v101;
                    *(v23 + 8) = v99;
                    *(v23 + 12) = v100;
                    goto LABEL_104;
                  }
                }

                else
                {
                  v98 = 1.0;
                }

                v102 = vrev32_s8(*v23);
                *&v270 = vextq_s8(v96, v96, 4uLL).u64[0];
                *v103.i32 = PDAhuePDA(*v102.i32, *&v102.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), *&a12, v98, *v96.i64, v270, a16, *v96.i32, *&v270, *(&v270 + 1), *&v96.i32[3], *&v96.i32[3]);
                v21 = v272;
                v99 = bswap32(v104);
                v100 = bswap32(a12.u32[0]);
                v103.i32[1] = v105;
                v101 = vrev32_s8(v103);
                goto LABEL_103;
              }
            }

LABEL_104:
            ++v25;
            v23 += 16;
            --v95;
          }

          while (v95);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 25:
        while (1)
        {
          v84 = v18;
          do
          {
            if (*v25)
            {
              v85 = vmulq_n_f32(v21, *v25 * 0.0039216);
              if (*&v85.i32[3] > 0.0)
              {
                v86 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                *a12.i32 = v86;
                if (v19)
                {
                  v87 = v86;
                  if (v86 <= 0.0)
                  {
                    v88 = bswap32(v85.u32[2]);
                    v89 = bswap32(v85.u32[3]);
                    v90 = vrev32_s8(*v85.i8);
LABEL_91:
                    *v23 = v90;
                    *(v23 + 8) = v88;
                    *(v23 + 12) = v89;
                    goto LABEL_92;
                  }
                }

                else
                {
                  v87 = 1.0;
                }

                v91 = vrev32_s8(*v23);
                *&v269 = vextq_s8(v85, v85, 4uLL).u64[0];
                *v92.i32 = PDAsaturationPDA(*v91.i32, *&v91.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), *&a12, v87, *v85.i64, v269, a16, *v85.i32, *&v269, *(&v269 + 1), *&v85.i32[3], *&v85.i32[3]);
                v21 = v272;
                v88 = bswap32(v93);
                v89 = bswap32(a12.u32[0]);
                v92.i32[1] = v94;
                v90 = vrev32_s8(v92);
                goto LABEL_91;
              }
            }

LABEL_92:
            ++v25;
            v23 += 16;
            --v84;
          }

          while (v84);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 26:
        while (1)
        {
          v260 = v18;
          do
          {
            if (*v25)
            {
              v261 = vmulq_n_f32(v21, *v25 * 0.0039216);
              a12.i32[0] = v261.i32[3];
              if (v261.f32[3] > 0.0)
              {
                v262 = COERCE_FLOAT(bswap32(*(v23 + 12)));
                if (v19)
                {
                  *&a14 = v262;
                  if (v262 <= 0.0)
                  {
                    v263 = bswap32(v261.u32[2]);
                    v264 = bswap32(v261.u32[3]);
LABEL_339:
                    *v23 = vrev32_s8(*v261.f32);
                    *(v23 + 8) = v263;
                    *(v23 + 12) = v264;
                    goto LABEL_340;
                  }
                }

                else
                {
                  LODWORD(a14) = 1.0;
                }

                v267 = COERCE_DOUBLE(vrev32_s8(*v23));
                v261.f32[0] = PDAluminosityPDA(v261.f32[0], v261.f32[1], v261.f32[2], *&a12, v261.f32[3], a14, v267, a16, *&v267, *(&v267 + 1), COERCE_FLOAT(bswap32(*(v23 + 8))), v262, *&a14);
                v21 = v272;
                v263 = bswap32(v265);
                v264 = bswap32(a12.u32[0]);
                v261.i32[1] = v266;
                goto LABEL_339;
              }
            }

LABEL_340:
            ++v25;
            v23 += 16;
            --v260;
          }

          while (v260);
          v25 += v26;
          v23 += 16 * v27;
          if (!--v17)
          {
            return;
          }
        }

      case 27:
        break;
      default:
        return;
    }

LABEL_11:
    v30 = v18;
    while (1)
    {
      if (!*v25)
      {
        goto LABEL_20;
      }

      v31 = vmulq_n_f32(v21, *v25 * 0.0039216);
      if (*&v31.i32[3] <= 0.0)
      {
        goto LABEL_20;
      }

      v32 = COERCE_FLOAT(bswap32(*(v23 + 12)));
      *a12.i32 = v32;
      if (!v19)
      {
        break;
      }

      v33 = v32;
      if (v32 > 0.0)
      {
        goto LABEL_18;
      }

      v34 = bswap32(v31.u32[2]);
      v35 = bswap32(v31.u32[3]);
      v36 = vrev32_s8(*v31.i8);
LABEL_19:
      *v23 = v36;
      *(v23 + 8) = v34;
      *(v23 + 12) = v35;
LABEL_20:
      ++v25;
      v23 += 16;
      if (!--v30)
      {
        v25 += v26;
        v23 += 16 * v27;
        if (!--v17)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v33 = 1.0;
LABEL_18:
    v37 = vrev32_s8(*v23);
    *&v268 = vextq_s8(v31, v31, 4uLL).u64[0];
    *v38.i32 = PDAluminosityPDA(*v37.i32, *&v37.i32[1], COERCE_FLOAT(bswap32(*(v23 + 8))), *&a12, v33, *v31.i64, v268, a16, *v31.i32, *&v268, *(&v268 + 1), *&v31.i32[3], *&v31.i32[3]);
    v21 = v272;
    v34 = bswap32(v39);
    v35 = bswap32(a12.u32[0]);
    v38.i32[1] = v40;
    v36 = vrev32_s8(v38);
    goto LABEL_19;
  }
}

void RGBAF_mark_pixelmask(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int32x2_t a6, double a7, double a8, double a9, double a10)
{
  v10 = *(a1 + 136);
  if (!v10)
  {
    return;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 8);
  v13 = v11;
  v14 = *(a1 + 48);
  v16 = *(a1 + 88);
  v15 = *(a1 + 96);
  v17 = *(a1 + 28) >> 4;
  v18 = (*(a1 + 40) + 16 * v17 * *(a1 + 16) + 16 * *(a1 + 12));
  v19 = *(a1 + 124);
  v20 = (v10 + *(a1 + 108) * v19 + *(a1 + 104));
  v21 = *(a1 + 56);
  v22 = *(a1 + 60);
  v23 = *(a1 + 76);
  if (*(a1 + 1) << 8 == 256)
  {
    v24 = v23 >> 4;
    v25 = (v16 + 16 * (v23 >> 4) * v22 + 16 * v21);
    if (v23 >> 4 != v17)
    {
      v29 = 1;
LABEL_14:
      v44 = 0;
      v13 = v29 * v11;
      v32 = v15 != 0;
      v33 = v19 - v13;
      v34 = v17 - v13;
      v43 = v29;
      v42 = -1;
      v31 = v24;
      goto LABEL_15;
    }

    v26 = v18 - v25;
    if (v26 >= 1)
    {
      if (v26 <= v11)
      {
        v45 = v11 - 1;
        v18 += v45;
        v25 += v45;
        v20 += v45;
        v29 = -1;
        goto LABEL_13;
      }

      v27 = v12 - 1;
      v28 = &v25[v17 * v27];
      if (v18 <= &v28[v11 - 1])
      {
        v18 += v17 * v27;
        v24 = -v17;
        v20 += v19 * v27;
        v19 = -v19;
        v29 = 1;
        v25 = v28;
        v17 = -v17;
        goto LABEL_14;
      }
    }

    v29 = 1;
LABEL_13:
    v24 = *(a1 + 28) >> 4;
    goto LABEL_14;
  }

  LODWORD(v24) = *(a1 + 64);
  v30 = *(a1 + 68);
  v31 = v23 >> 4;
  v32 = v15 != 0;
  v33 = v19 - v11;
  v34 = v17 - v11;
  if (v16)
  {
    v35 = 0;
    v36 = v24;
    v37 = v30;
    v38 = v22 % v30;
    v39 = v16 + 16 * v31 * v30;
    v40 = v16 + 16 * v31 * v38;
    v41 = v40 + 16 * (v21 % v24);
    v42 = v40 + 16 * v24;
    v43 = 1;
    v25 = v41;
    goto LABEL_16;
  }

  v25 = 0;
  v42 = 0;
  v43 = 1;
  v44 = v30;
LABEL_15:
  v39 = 0;
  v41 = 0;
  v31 -= v13;
  v36 = v24;
  v37 = v44;
  v35 = 1;
LABEL_16:
  v574 = v33;
  v575 = v11;
  v572 = v31;
  v573 = v34;
  v571 = v39;
  v570 = v35;
  switch(a2)
  {
    case 0:
      do
      {
        v46 = v11;
        do
        {
          v47 = *v20;
          if (*v20)
          {
            if (v47 == 255)
            {
              v18->i64[0] = 0;
              v18->i64[1] = 0;
            }

            else
            {
              *v18 = vrev32q_s8(vmulq_n_f32(vrev32q_s8(*v18), (v47 * -0.0039216) + 1.0));
            }
          }

          v20 += v43;
          v18 += v43;
          --v46;
        }

        while (v46);
        v20 += v33;
        v18 += v34;
        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 1:
      v285 = -v36;
      v286 = -(v31 * v37);
      if (v14 == 0 || v32)
      {
        do
        {
          v287 = v11;
          do
          {
            v288 = *v20;
            if (*v20)
            {
              if (v288 == 255)
              {
                v289 = *v25;
              }

              else
              {
                v289 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(vrev32q_s8(*v18), 1.0 - (v288 * 0.0039216)), vrev32q_s8(*v25), v288 * 0.0039216));
              }

              *v18 = v289;
            }

            v20 += v43;
            v290 = &v25[v43];
            if (v290 >= v42)
            {
              v291 = v285;
            }

            else
            {
              v291 = 0;
            }

            v25 = &v290[v291];
            v18 += v43;
            --v287;
          }

          while (v287);
          v20 += v33;
          v18 += v34;
          v292 = v41 + 16 * v31;
          if (v292 >= v39)
          {
            v293 = v286;
          }

          else
          {
            v293 = 0;
          }

          v294 = (v292 + 16 * v293);
          v295 = v42 + 16 * v293 + 16 * v31;
          if (v35)
          {
            v25 += v31;
          }

          else
          {
            v42 = v295;
            v41 = v294;
            v25 = v294;
          }

          LODWORD(v12) = v12 - 1;
        }

        while (v12);
      }

      else
      {
        do
        {
          v535 = v11;
          do
          {
            v536 = *v20;
            if (*v20)
            {
              if (v536 == 255)
              {
                v537 = v25->i32[2];
                v18->i64[0] = v25->i64[0];
                v18->i32[2] = v537;
                v18->i32[3] = 32831;
              }

              else
              {
                v538 = v536 * 0.0039216;
                *v539.f32 = vmul_n_f32(vrev32_s8(*v25->i8), v538);
                v539.f32[2] = v538 * COERCE_FLOAT(bswap32(v25->u32[2]));
                v539.f32[3] = v538;
                *v18 = vrev32q_s8(vmlaq_n_f32(v539, vrev32q_s8(*v18), 1.0 - v538));
              }
            }

            v20 += v43;
            v540 = &v25[v43];
            if (v540 >= v42)
            {
              v541 = v285;
            }

            else
            {
              v541 = 0;
            }

            v25 = &v540[v541];
            v18 += v43;
            --v535;
          }

          while (v535);
          v20 += v33;
          v18 += v34;
          v542 = v41 + 16 * v31;
          if (v542 >= v39)
          {
            v543 = v286;
          }

          else
          {
            v543 = 0;
          }

          v544 = (v542 + 16 * v543);
          v545 = v42 + 16 * v543 + 16 * v31;
          if (v35)
          {
            v25 += v31;
          }

          else
          {
            v42 = v545;
            v41 = v544;
            v25 = v544;
          }

          LODWORD(v12) = v12 - 1;
        }

        while (v12);
      }

      return;
    case 2:
      v217 = -v36;
      v218 = -(v31 * v37);
      while (1)
      {
        v219 = v11;
        do
        {
          v220 = *v20;
          if (!*v20)
          {
            goto LABEL_238;
          }

          if (v220 != 255)
          {
            v226 = v220 * 0.0039216;
            v223 = v226 * COERCE_FLOAT(bswap32(v25->u32[3]));
            if (v223 <= 0.0)
            {
              goto LABEL_238;
            }

            v225 = v226 * COERCE_FLOAT(bswap32(v25->u32[2]));
            *v224.f32 = vmul_n_f32(vrev32_s8(*v25->i8), v226);
            goto LABEL_236;
          }

          v221 = v25->u32[3];
          v222 = COERCE_FLOAT(bswap32(v221));
          v223 = v222;
          if (v222 < 1.0)
          {
            if (v222 <= 0.0)
            {
              goto LABEL_238;
            }

            *v224.f32 = vrev32_s8(*v25->i8);
            LODWORD(v225) = bswap32(v25->u32[2]);
LABEL_236:
            v224.i64[1] = __PAIR64__(LODWORD(v223), LODWORD(v225));
            *v18 = vrev32q_s8(vmlaq_n_f32(v224, vrev32q_s8(*v18), 1.0 - v223));
            goto LABEL_238;
          }

          v18->i64[0] = v25->i64[0];
          v18->i32[2] = v25->i32[2];
          v18->i32[3] = v221;
LABEL_238:
          v20 += v43;
          v227 = &v25[v43];
          if (v227 >= v42)
          {
            v228 = v217;
          }

          else
          {
            v228 = 0;
          }

          v25 = &v227[v228];
          v18 += v43;
          --v219;
        }

        while (v219);
        v20 += v33;
        v18 += v34;
        v229 = v41 + 16 * v31;
        if (v229 >= v39)
        {
          v230 = v218;
        }

        else
        {
          v230 = 0;
        }

        v231 = (v229 + 16 * v230);
        v232 = v42 + 16 * v230 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v232;
          v41 = v231;
          v25 = v231;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 3:
      v254 = -v36;
      v255 = -(v31 * v37);
      do
      {
        v256 = v11;
        do
        {
          v257 = *v20;
          if (*v20)
          {
            if (v257 == 255)
            {
              v258 = bswap32(v25->u32[2]);
              *v259.f32 = vrev32_s8(*v25->i8);
              LODWORD(v260) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v260 = 1.0;
              }

              v259.i64[1] = __PAIR64__(LODWORD(v260), v258);
              v261 = vmulq_f32(v259, vdupq_n_s32(bswap32(v18->u32[3])));
            }

            else
            {
              v262 = v257 * 0.0039216;
              v263 = bswap32(v25->u32[2]);
              *v264.f32 = vrev32_s8(*v25->i8);
              LODWORD(v265) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v265 = 1.0;
              }

              v266 = vrev32q_s8(*v18);
              v264.i64[1] = __PAIR64__(LODWORD(v265), v263);
              v261 = vmlaq_n_f32(vmulq_n_f32(v264, vmuls_lane_f32(v262, v266, 3)), v266, 1.0 - v262);
            }

            *v18 = vrev32q_s8(v261);
          }

          v20 += v43;
          v267 = &v25[v43];
          if (v267 >= v42)
          {
            v268 = v254;
          }

          else
          {
            v268 = 0;
          }

          v25 = &v267[v268];
          v18 += v43;
          --v256;
        }

        while (v256);
        v20 += v33;
        v18 += v34;
        v269 = v41 + 16 * v31;
        if (v269 >= v39)
        {
          v270 = v255;
        }

        else
        {
          v270 = 0;
        }

        v271 = (v269 + 16 * v270);
        v272 = v42 + 16 * v270 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v272;
          v41 = v271;
          v25 = v271;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 4:
      v128 = -v36;
      v129 = -(v31 * v37);
      do
      {
        v130 = v11;
        do
        {
          v131 = *v20;
          if (*v20)
          {
            if (v131 == 255)
            {
              *v132.f32 = vrev32_s8(*v25->i8);
              v133 = bswap32(v25->u32[2]);
              LODWORD(v134) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v134 = 1.0;
              }

              v132.i64[1] = __PAIR64__(LODWORD(v134), v133);
              v135 = vmulq_n_f32(v132, 1.0 - COERCE_FLOAT(bswap32(v18->u32[3])));
            }

            else
            {
              v136 = v131 * 0.0039216;
              v137 = bswap32(v25->u32[2]);
              *v138.f32 = vrev32_s8(*v25->i8);
              LODWORD(v139) = bswap32(v25->u32[3]);
              if (!v32)
              {
                v139 = 1.0;
              }

              v140 = vrev32q_s8(*v18);
              v138.i64[1] = __PAIR64__(LODWORD(v139), v137);
              v135 = vmlaq_n_f32(vmulq_n_f32(v138, v136 * (1.0 - v140.f32[3])), v140, 1.0 - v136);
            }

            *v18 = vrev32q_s8(v135);
          }

          v20 += v43;
          v141 = &v25[v43];
          if (v141 >= v42)
          {
            v142 = v128;
          }

          else
          {
            v142 = 0;
          }

          v25 = &v141[v142];
          v18 += v43;
          --v130;
        }

        while (v130);
        v20 += v33;
        v18 += v34;
        v143 = v41 + 16 * v31;
        if (v143 >= v39)
        {
          v144 = v129;
        }

        else
        {
          v144 = 0;
        }

        v145 = (v143 + 16 * v144);
        v146 = v42 + 16 * v144 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v146;
          v41 = v145;
          v25 = v145;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 5:
      v335 = -v36;
      v336 = -(v31 * v37);
      do
      {
        v337 = v11;
        do
        {
          if (*v20)
          {
            v338 = vmulq_n_f32(vrev32q_s8(*v25), *v20 * 0.0039216);
            v339 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_laneq_f32(vmulq_n_f32(v339, 1.0 - v338.f32[3]), v338, v339, 3));
          }

          v20 += v43;
          v340 = &v25[v43];
          if (v340 >= v42)
          {
            v341 = v335;
          }

          else
          {
            v341 = 0;
          }

          v25 = &v340[v341];
          v18 += v43;
          --v337;
        }

        while (v337);
        v20 += v33;
        v18 += v34;
        v342 = v41 + 16 * v31;
        if (v342 >= v39)
        {
          v343 = v336;
        }

        else
        {
          v343 = 0;
        }

        v344 = (v342 + 16 * v343);
        v345 = v42 + 16 * v343 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v345;
          v41 = v344;
          v25 = v344;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 6:
      v388 = -v36;
      v389 = -(v31 * v37);
      while (1)
      {
        v390 = v11;
        do
        {
          v391 = *v20;
          if (!*v20)
          {
            goto LABEL_459;
          }

          v392 = COERCE_FLOAT(bswap32(v18->u32[3]));
          v393 = 1.0 - v392;
          if ((1.0 - v392) >= 1.0)
          {
            v401 = COERCE_FLOAT(bswap32(v25->u32[2]));
            v402 = COERCE_FLOAT(bswap32(v25->u32[3]));
            if (!v32)
            {
              v402 = 1.0;
            }

            v403 = v391 * 0.0039216;
            v398 = bswap32(COERCE_UNSIGNED_INT(v403 * v401));
            v399 = bswap32(COERCE_UNSIGNED_INT(v403 * v402));
            v400 = vmul_n_f32(vrev32_s8(*v25->i8), v403);
          }

          else
          {
            if (v393 <= 0.0)
            {
              goto LABEL_459;
            }

            v394 = COERCE_FLOAT(bswap32(v18->u32[2]));
            v395 = COERCE_FLOAT(bswap32(v25->u32[2]));
            v396 = COERCE_FLOAT(bswap32(v25->u32[3]));
            if (!v32)
            {
              v396 = 1.0;
            }

            v397 = (v391 * 0.0039216) * v393;
            v398 = bswap32(COERCE_UNSIGNED_INT(v394 + (v395 * v397)));
            v399 = bswap32(COERCE_UNSIGNED_INT(v392 + (v396 * v397)));
            v400 = vmla_n_f32(vrev32_s8(*v18->i8), vrev32_s8(*v25->i8), v397);
          }

          *v18->i8 = vrev32_s8(v400);
          v18->i32[2] = v398;
          v18->i32[3] = v399;
LABEL_459:
          v20 += v43;
          v404 = &v25[v43];
          if (v404 >= v42)
          {
            v405 = v388;
          }

          else
          {
            v405 = 0;
          }

          v25 = &v404[v405];
          v18 += v43;
          --v390;
        }

        while (v390);
        v20 += v33;
        v18 += v34;
        v406 = v41 + 16 * v31;
        if (v406 >= v39)
        {
          v407 = v389;
        }

        else
        {
          v407 = 0;
        }

        v408 = (v406 + 16 * v407);
        v409 = v42 + 16 * v407 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v409;
          v41 = v408;
          v25 = v408;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 7:
      v273 = -v36;
      v274 = -(v31 * v37);
      do
      {
        v275 = v11;
        do
        {
          v276 = *v20;
          if (*v20)
          {
            if (v276 == 255)
            {
              v277 = vmulq_f32(vdupq_n_s32(bswap32(v25->u32[3])), vrev32q_s8(*v18));
            }

            else
            {
              v278 = vrev32q_s8(*v18);
              v277 = vmlaq_n_f32(vmulq_n_f32(v278, 1.0 - (v276 * 0.0039216)), v278, (v276 * 0.0039216) * COERCE_FLOAT(bswap32(v25->u32[3])));
            }

            *v18 = vrev32q_s8(v277);
          }

          v20 += v43;
          v279 = &v25[v43];
          if (v279 >= v42)
          {
            v280 = v273;
          }

          else
          {
            v280 = 0;
          }

          v25 = &v279[v280];
          v18 += v43;
          --v275;
        }

        while (v275);
        v20 += v33;
        v18 += v34;
        v281 = v41 + 16 * v31;
        if (v281 >= v39)
        {
          v282 = v274;
        }

        else
        {
          v282 = 0;
        }

        v283 = (v281 + 16 * v282);
        v284 = v42 + 16 * v282 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v284;
          v41 = v283;
          v25 = v283;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 8:
      v442 = -v36;
      v443 = -(v31 * v37);
      do
      {
        v444 = v11;
        do
        {
          v445 = *v20;
          if (*v20)
          {
            v446 = vrev32q_s8(*v18);
            if (v445 == 255)
            {
              v447 = COERCE_FLOAT(bswap32(v25->u32[3]));
            }

            else
            {
              v447 = (v445 * 0.0039216) * COERCE_FLOAT(bswap32(v25->u32[3]));
            }

            *v18 = vrev32q_s8(vmulq_n_f32(v446, 1.0 - v447));
          }

          v20 += v43;
          v448 = &v25[v43];
          if (v448 >= v42)
          {
            v449 = v442;
          }

          else
          {
            v449 = 0;
          }

          v25 = &v448[v449];
          v18 += v43;
          --v444;
        }

        while (v444);
        v20 += v33;
        v18 += v34;
        v450 = v41 + 16 * v31;
        if (v450 >= v39)
        {
          v451 = v443;
        }

        else
        {
          v451 = 0;
        }

        v452 = (v450 + 16 * v451);
        v453 = v42 + 16 * v451 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v453;
          v41 = v452;
          v25 = v452;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 9:
      v164 = -v36;
      v165 = -(v31 * v37);
      do
      {
        v166 = v11;
        do
        {
          if (*v20)
          {
            v167 = *v20 * 0.0039216;
            v168 = 1.0 - v167;
            v169 = vmulq_n_f32(vrev32q_s8(*v25), v167);
            v170 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v170, v168 + v169.f32[3]), v169, 1.0 - v170.f32[3]));
          }

          v20 += v43;
          v171 = &v25[v43];
          if (v171 >= v42)
          {
            v172 = v164;
          }

          else
          {
            v172 = 0;
          }

          v25 = &v171[v172];
          v18 += v43;
          --v166;
        }

        while (v166);
        v20 += v33;
        v18 += v34;
        v173 = v41 + 16 * v31;
        if (v173 >= v39)
        {
          v174 = v165;
        }

        else
        {
          v174 = 0;
        }

        v175 = (v173 + 16 * v174);
        v176 = v42 + 16 * v174 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v176;
          v41 = v175;
          v25 = v175;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 10:
      v431 = -v36;
      v432 = -(v31 * v37);
      do
      {
        v433 = v11;
        do
        {
          if (*v20)
          {
            v434 = vmulq_n_f32(vrev32q_s8(*v25), *v20 * 0.0039216);
            v435 = vrev32q_s8(*v18);
            *v18 = vrev32q_s8(vmlaq_n_f32(vmulq_n_f32(v435, 1.0 - v434.f32[3]), v434, 1.0 - v435.f32[3]));
          }

          v20 += v43;
          v436 = &v25[v43];
          if (v436 >= v42)
          {
            v437 = v431;
          }

          else
          {
            v437 = 0;
          }

          v25 = &v436[v437];
          v18 += v43;
          --v433;
        }

        while (v433);
        v20 += v33;
        v18 += v34;
        v438 = v41 + 16 * v31;
        if (v438 >= v39)
        {
          v439 = v432;
        }

        else
        {
          v439 = 0;
        }

        v440 = (v438 + 16 * v439);
        v441 = v42 + 16 * v439 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v441;
          v41 = v440;
          v25 = v440;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 11:
      v112 = -v36;
      v113 = -(v31 * v37);
      do
      {
        v114 = v11;
        do
        {
          if (*v20)
          {
            v115 = *v20 * 0.0039216;
            v116 = COERCE_FLOAT(bswap32(v25->u32[3]));
            v117 = v115 * COERCE_FLOAT(bswap32(v25->u32[2]));
            v118 = COERCE_FLOAT(bswap32(v18->u32[2]));
            LODWORD(a9) = bswap32(v18->u32[3]);
            if (!v14)
            {
              *&a9 = 1.0;
            }

            if (!v32)
            {
              v116 = 1.0;
            }

            *&a7 = v115 * v116;
            v119 = (*&a7 - v117) + (*&a9 - v118);
            if ((*&a7 + *&a9) <= 1.0)
            {
              *&a8 = *&a7 + *&a9;
            }

            else
            {
              *&a8 = 1.0;
            }

            a9 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&a9, 0), vrev32_s8(*v18->i8)));
            v120 = vadd_f32(vsub_f32(vdup_lane_s32(*&a7, 0), vmul_n_f32(vrev32_s8(*v25->i8), v115)), *&a9);
            a7 = COERCE_DOUBLE(vdup_lane_s32(*&a8, 0));
            *v121.i8 = vsub_f32(*&a7, v120);
            v121.i64[1] = __PAIR64__(LODWORD(a8), *&a8 - v119);
            *v18 = vrev32q_s8(v121);
          }

          v20 += v43;
          v122 = &v25[v43];
          if (v122 >= v42)
          {
            v123 = v112;
          }

          else
          {
            v123 = 0;
          }

          v25 = &v122[v123];
          v18 += v43;
          --v114;
        }

        while (v114);
        v20 += v33;
        v18 += v34;
        v124 = v41 + 16 * v31;
        if (v124 >= v39)
        {
          v125 = v113;
        }

        else
        {
          v125 = 0;
        }

        v126 = (v124 + 16 * v125);
        v127 = v42 + 16 * v125 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v127;
          v41 = v126;
          v25 = v126;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 12:
      v147 = -v36;
      v148 = -(v31 * v37);
      do
      {
        v149 = v11;
        do
        {
          if (*v20)
          {
            v150 = *v20 * 0.0039216;
            v151 = COERCE_FLOAT(bswap32(v25->u32[3]));
            v152 = v150 * COERCE_FLOAT(bswap32(v25->u32[2]));
            v153 = COERCE_FLOAT(bswap32(v18->u32[2]));
            v154 = COERCE_FLOAT(bswap32(v18->u32[3]));
            if (!v32)
            {
              v151 = 1.0;
            }

            v155 = (v150 * v151) + v154;
            *v156.i8 = vadd_f32(vmul_n_f32(vrev32_s8(*v25->i8), v150), vrev32_s8(*v18->i8));
            v157 = v152 + v153;
            if (v155 > 1.0)
            {
              v155 = 1.0;
            }

            v156.i64[1] = __PAIR64__(LODWORD(v155), LODWORD(v157));
            *v18 = vrev32q_s8(v156);
          }

          v20 += v43;
          v158 = &v25[v43];
          if (v158 >= v42)
          {
            v159 = v147;
          }

          else
          {
            v159 = 0;
          }

          v25 = &v158[v159];
          v18 += v43;
          --v149;
        }

        while (v149);
        v20 += v33;
        v18 += v34;
        v160 = v41 + 16 * v31;
        if (v160 >= v39)
        {
          v161 = v148;
        }

        else
        {
          v161 = 0;
        }

        v162 = (v160 + 16 * v161);
        v163 = v42 + 16 * v161 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v163;
          v41 = v162;
          v25 = v162;
        }

        LODWORD(v12) = v12 - 1;
      }

      while (v12);
      return;
    case 13:
      v367 = -v36;
      v566 = -(v31 * v37);
      while (1)
      {
        v584 = v41;
        v596 = v12;
        v368 = v11;
        do
        {
          v369 = *v20;
          if (*v20)
          {
            v370 = vrev32q_s8(*v25);
            v371 = vmulq_n_f32(v370, v369 * 0.0039216);
            LODWORD(a10) = v371.i32[3];
            v372 = v32 ? *&v371.i32[3] : v369 * 0.0039216;
            if (v372 > 0.0)
            {
              v373 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v373;
              if (v14)
              {
                v374 = v373;
                if (v373 <= 0.0)
                {
                  v375 = bswap32(v371.u32[2]);
                  v376 = bswap32(LODWORD(v372));
                  v377 = vrev32_s8(*v371.i8);
LABEL_435:
                  *v18->i8 = v377;
                  v18->i32[2] = v375;
                  v18->i32[3] = v376;
                  goto LABEL_436;
                }
              }

              else
              {
                v374 = 1.0;
              }

              v378 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v370.i32[0] = v378.i32[1];
              v555 = v372;
              *&v379 = vextq_s8(v371, v371, 4uLL).u64[0];
              *v380.i32 = PDAmultiplyPDA(*v378.i32, *v370.i64, a5, *&a6, v374, *v371.i64, v379, a10, *v371.i32, COERCE_DOUBLE(__PAIR64__(v371.u32[3], HIDWORD(v379))), v555);
              v375 = bswap32(LODWORD(a5));
              v376 = bswap32(a6.u32[0]);
              v380.i32[1] = v381;
              v377 = vrev32_s8(v380);
              goto LABEL_435;
            }
          }

LABEL_436:
          v20 += v43;
          v382 = &v25[v43];
          if (v382 >= v42)
          {
            v383 = v367;
          }

          else
          {
            v383 = 0;
          }

          v25 = &v382[v383];
          v18 += v43;
          --v368;
        }

        while (v368);
        v20 += v574;
        v18 += v573;
        v41 = v584;
        v384 = v584 + 16 * v572;
        v385 = v566;
        if (v384 < v571)
        {
          v385 = 0;
        }

        v386 = (v384 + 16 * v385);
        v387 = v42 + 16 * v385 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v387;
          v41 = v386;
          v25 = v386;
        }

        LODWORD(v12) = v596 - 1;
        LODWORD(v11) = v575;
        if (v596 == 1)
        {
          return;
        }
      }

    case 14:
      v89 = -v36;
      v90 = -(v31 * v37);
      __asm { FMOV            V2.2S, #1.0 }

      while (1)
      {
        v96 = v11;
        do
        {
          if (*v20)
          {
            v97 = *v20 * 0.0039216;
            v98 = bswap32(v25->u32[2]);
            LODWORD(v99) = bswap32(v25->u32[3]);
            if (!v32)
            {
              v99 = 1.0;
            }

            v100 = vmul_n_f32(__PAIR64__(LODWORD(v99), v98), v97);
            if (v100.f32[1] > 0.0)
            {
              *v101.i8 = vmul_n_f32(vrev32_s8(*v25->i8), v97);
              if (v14)
              {
                v102 = COERCE_FLOAT(bswap32(v18->u32[3]));
                if (v102 <= 0.0)
                {
                  v101.u64[1] = v100;
                  *v18 = vrev32q_s8(v101);
                  goto LABEL_85;
                }
              }

              else
              {
                v102 = 1.0;
              }

              v103.i32[0] = bswap32(v18->u32[2]);
              v104.f32[0] = 1.0 - v103.f32[0];
              v105 = vrev32_s8(*v18->i8);
              v104.f32[1] = -v102;
              v103.f32[1] = v100.f32[1] + v102;
              *v18->i8 = vrev32_s8(vmla_f32(v105, vsub_f32(_D2, v105), *v101.i8));
              v18->u64[1] = vrev32_s8(vmla_f32(v103, v104, v100));
            }
          }

LABEL_85:
          v20 += v43;
          v106 = &v25[v43];
          if (v106 >= v42)
          {
            v107 = v89;
          }

          else
          {
            v107 = 0;
          }

          v25 = &v106[v107];
          v18 += v43;
          --v96;
        }

        while (v96);
        v20 += v33;
        v18 += v34;
        v108 = v41 + 16 * v31;
        if (v108 >= v39)
        {
          v109 = v90;
        }

        else
        {
          v109 = 0;
        }

        v110 = (v108 + 16 * v109);
        v111 = v42 + 16 * v109 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v111;
          v41 = v110;
          v25 = v110;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 15:
      v233 = -v36;
      v562 = -(v31 * v37);
      while (1)
      {
        v580 = v41;
        v592 = v12;
        v234 = v11;
        do
        {
          v235 = *v20;
          if (*v20)
          {
            v236 = vrev32q_s8(*v25);
            v237 = vmulq_n_f32(v236, v235 * 0.0039216);
            LODWORD(a10) = v237.i32[3];
            v238 = v32 ? *&v237.i32[3] : v235 * 0.0039216;
            if (v238 > 0.0)
            {
              v239 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v239;
              if (v14)
              {
                v240 = v239;
                if (v239 <= 0.0)
                {
                  v241 = bswap32(v237.u32[2]);
                  v242 = bswap32(LODWORD(v238));
                  v243 = vrev32_s8(*v237.i8);
LABEL_262:
                  *v18->i8 = v243;
                  v18->i32[2] = v241;
                  v18->i32[3] = v242;
                  goto LABEL_263;
                }
              }

              else
              {
                v240 = 1.0;
              }

              v244 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v236.i32[0] = v244.i32[1];
              v552 = v238;
              *&v245 = vextq_s8(v237, v237, 4uLL).u64[0];
              *v246.i32 = PDAoverlayPDA(*v244.i32, *v236.i64, a5, *&a6, v240, *v237.i64, v245, a10, *v237.i32, COERCE_DOUBLE(__PAIR64__(v237.u32[3], HIDWORD(v245))), v552);
              v241 = bswap32(LODWORD(a5));
              v242 = bswap32(a6.u32[0]);
              v246.i32[1] = v247;
              v243 = vrev32_s8(v246);
              goto LABEL_262;
            }
          }

LABEL_263:
          v20 += v43;
          v248 = &v25[v43];
          if (v248 >= v42)
          {
            v249 = v233;
          }

          else
          {
            v249 = 0;
          }

          v25 = &v248[v249];
          v18 += v43;
          --v234;
        }

        while (v234);
        v20 += v574;
        v18 += v573;
        v41 = v580;
        v250 = v580 + 16 * v572;
        v251 = v562;
        if (v250 < v571)
        {
          v251 = 0;
        }

        v252 = (v250 + 16 * v251);
        v253 = v42 + 16 * v251 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v253;
          v41 = v252;
          v25 = v252;
        }

        LODWORD(v12) = v592 - 1;
        LODWORD(v11) = v575;
        if (v592 == 1)
        {
          return;
        }
      }

    case 16:
      v68 = -v36;
      v559 = -(v31 * v37);
      while (1)
      {
        v577 = v41;
        v589 = v12;
        v69 = v11;
        do
        {
          v70 = *v20;
          if (*v20)
          {
            v71 = vrev32q_s8(*v25);
            v72 = vmulq_n_f32(v71, v70 * 0.0039216);
            LODWORD(a10) = v72.i32[3];
            v73 = v32 ? *&v72.i32[3] : v70 * 0.0039216;
            if (v73 > 0.0)
            {
              v74 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v74;
              if (v14)
              {
                v75 = v74;
                if (v74 <= 0.0)
                {
                  v76 = bswap32(v72.u32[2]);
                  v77 = bswap32(LODWORD(v73));
                  v78 = vrev32_s8(*v72.i8);
LABEL_62:
                  *v18->i8 = v78;
                  v18->i32[2] = v76;
                  v18->i32[3] = v77;
                  goto LABEL_63;
                }
              }

              else
              {
                v75 = 1.0;
              }

              v79 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v71.i32[0] = v79.i32[1];
              v551 = v73;
              *&v80 = vextq_s8(v72, v72, 4uLL).u64[0];
              *v81.i32 = PDAdarkenPDA(*v79.i32, *v71.i64, a5, *&a6, v75, *v72.i64, v80, a10, *v72.i32, COERCE_DOUBLE(__PAIR64__(v72.u32[3], HIDWORD(v80))), v551);
              v76 = bswap32(LODWORD(a5));
              v77 = bswap32(a6.u32[0]);
              v81.i32[1] = v82;
              v78 = vrev32_s8(v81);
              goto LABEL_62;
            }
          }

LABEL_63:
          v20 += v43;
          v83 = &v25[v43];
          if (v83 >= v42)
          {
            v84 = v68;
          }

          else
          {
            v84 = 0;
          }

          v25 = &v83[v84];
          v18 += v43;
          --v69;
        }

        while (v69);
        v20 += v574;
        v18 += v573;
        v41 = v577;
        v85 = v577 + 16 * v572;
        v86 = v559;
        if (v85 < v571)
        {
          v86 = 0;
        }

        v87 = (v85 + 16 * v86);
        v88 = v42 + 16 * v86 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v88;
          v41 = v87;
          v25 = v87;
        }

        LODWORD(v12) = v589 - 1;
        LODWORD(v11) = v575;
        if (v589 == 1)
        {
          return;
        }
      }

    case 17:
      v296 = -v36;
      v563 = -(v31 * v37);
      while (1)
      {
        v581 = v41;
        v593 = v12;
        v297 = v11;
        do
        {
          v298 = *v20;
          if (*v20)
          {
            v299 = vrev32q_s8(*v25);
            v300 = vmulq_n_f32(v299, v298 * 0.0039216);
            LODWORD(a10) = v300.i32[3];
            v301 = v32 ? *&v300.i32[3] : v298 * 0.0039216;
            if (v301 > 0.0)
            {
              v302 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v302;
              if (v14)
              {
                v303 = v302;
                if (v302 <= 0.0)
                {
                  v304 = bswap32(v300.u32[2]);
                  v305 = bswap32(LODWORD(v301));
                  v306 = vrev32_s8(*v300.i8);
LABEL_347:
                  *v18->i8 = v306;
                  v18->i32[2] = v304;
                  v18->i32[3] = v305;
                  goto LABEL_348;
                }
              }

              else
              {
                v303 = 1.0;
              }

              v307 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v299.i32[0] = v307.i32[1];
              v553 = v301;
              *&v308 = vextq_s8(v300, v300, 4uLL).u64[0];
              *v309.i32 = PDAlightenPDA(*v307.i32, *v299.i64, a5, *&a6, v303, *v300.i64, v308, a10, *v300.i32, COERCE_DOUBLE(__PAIR64__(v300.u32[3], HIDWORD(v308))), v553);
              v304 = bswap32(LODWORD(a5));
              v305 = bswap32(a6.u32[0]);
              v309.i32[1] = v310;
              v306 = vrev32_s8(v309);
              goto LABEL_347;
            }
          }

LABEL_348:
          v20 += v43;
          v311 = &v25[v43];
          if (v311 >= v42)
          {
            v312 = v296;
          }

          else
          {
            v312 = 0;
          }

          v25 = &v311[v312];
          v18 += v43;
          --v297;
        }

        while (v297);
        v20 += v574;
        v18 += v573;
        v41 = v581;
        v313 = v581 + 16 * v572;
        v314 = v563;
        if (v313 < v571)
        {
          v314 = 0;
        }

        v315 = (v313 + 16 * v314);
        v316 = v42 + 16 * v314 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v316;
          v41 = v315;
          v25 = v315;
        }

        LODWORD(v12) = v593 - 1;
        LODWORD(v11) = v575;
        if (v593 == 1)
        {
          return;
        }
      }

    case 18:
      v410 = -v36;
      v567 = -(v31 * v37);
      while (1)
      {
        v585 = v41;
        v597 = v12;
        v411 = v11;
        do
        {
          v412 = *v20;
          if (*v20)
          {
            v413 = vrev32q_s8(*v25);
            v414 = vmulq_n_f32(v413, v412 * 0.0039216);
            LODWORD(a10) = v414.i32[3];
            v415 = v32 ? *&v414.i32[3] : v412 * 0.0039216;
            if (v415 > 0.0)
            {
              v416 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v416;
              if (v14)
              {
                v417 = v416;
                if (v416 <= 0.0)
                {
                  v418 = bswap32(v414.u32[2]);
                  v419 = bswap32(LODWORD(v415));
                  v420 = vrev32_s8(*v414.i8);
LABEL_483:
                  *v18->i8 = v420;
                  v18->i32[2] = v418;
                  v18->i32[3] = v419;
                  goto LABEL_484;
                }
              }

              else
              {
                v417 = 1.0;
              }

              v421 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v413.i32[0] = v421.i32[1];
              v556 = v415;
              *&v422 = vextq_s8(v414, v414, 4uLL).u64[0];
              *v423.i32 = PDAcolordodgePDA(*v421.i32, *v413.i64, a5, *&a6, v417, *v414.i64, v422, a10, *v414.i32, COERCE_DOUBLE(__PAIR64__(v414.u32[3], HIDWORD(v422))), v556);
              v418 = bswap32(LODWORD(a5));
              v419 = bswap32(a6.u32[0]);
              v423.i32[1] = v424;
              v420 = vrev32_s8(v423);
              goto LABEL_483;
            }
          }

LABEL_484:
          v20 += v43;
          v425 = &v25[v43];
          if (v425 >= v42)
          {
            v426 = v410;
          }

          else
          {
            v426 = 0;
          }

          v25 = &v425[v426];
          v18 += v43;
          --v411;
        }

        while (v411);
        v20 += v574;
        v18 += v573;
        v41 = v585;
        v427 = v585 + 16 * v572;
        v428 = v567;
        if (v427 < v571)
        {
          v428 = 0;
        }

        v429 = (v427 + 16 * v428);
        v430 = v42 + 16 * v428 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v430;
          v41 = v429;
          v25 = v429;
        }

        LODWORD(v12) = v597 - 1;
        LODWORD(v11) = v575;
        if (v597 == 1)
        {
          return;
        }
      }

    case 19:
      v478 = -v36;
      v568 = -(v31 * v37);
      while (1)
      {
        v586 = v41;
        v598 = v12;
        v479 = v11;
        do
        {
          v480 = *v20;
          if (*v20)
          {
            v481 = vrev32q_s8(*v25);
            v482 = vmulq_n_f32(v481, v480 * 0.0039216);
            LODWORD(a10) = v482.i32[3];
            v483 = v32 ? *&v482.i32[3] : v480 * 0.0039216;
            if (v483 > 0.0)
            {
              v484 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v484;
              if (v14)
              {
                v485 = v484;
                if (v484 <= 0.0)
                {
                  v486 = bswap32(v482.u32[2]);
                  v487 = bswap32(LODWORD(v483));
                  v488 = vrev32_s8(*v482.i8);
LABEL_568:
                  *v18->i8 = v488;
                  v18->i32[2] = v486;
                  v18->i32[3] = v487;
                  goto LABEL_569;
                }
              }

              else
              {
                v485 = 1.0;
              }

              v489 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v481.i32[0] = v489.i32[1];
              v557 = v483;
              *&v490 = vextq_s8(v482, v482, 4uLL).u64[0];
              *v491.i32 = PDAcolorburnPDA(*v489.i32, *v481.i64, a5, *&a6, v485, *v482.i64, v490, a10, *v482.i32, COERCE_DOUBLE(__PAIR64__(v482.u32[3], HIDWORD(v490))), v557);
              v486 = bswap32(LODWORD(a5));
              v487 = bswap32(a6.u32[0]);
              v491.i32[1] = v492;
              v488 = vrev32_s8(v491);
              goto LABEL_568;
            }
          }

LABEL_569:
          v20 += v43;
          v493 = &v25[v43];
          if (v493 >= v42)
          {
            v494 = v478;
          }

          else
          {
            v494 = 0;
          }

          v25 = &v493[v494];
          v18 += v43;
          --v479;
        }

        while (v479);
        v20 += v574;
        v18 += v573;
        v41 = v586;
        v495 = v586 + 16 * v572;
        v496 = v568;
        if (v495 < v571)
        {
          v496 = 0;
        }

        v497 = (v495 + 16 * v496);
        v498 = v42 + 16 * v496 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v498;
          v41 = v497;
          v25 = v497;
        }

        LODWORD(v12) = v598 - 1;
        LODWORD(v11) = v575;
        if (v598 == 1)
        {
          return;
        }
      }

    case 20:
      v317 = -v36;
      v564 = -(v31 * v37);
      while (1)
      {
        v582 = v41;
        v594 = v12;
        v318 = v11;
        do
        {
          v319 = *v20;
          if (*v20)
          {
            v320 = vmulq_n_f32(vrev32q_s8(*v25), v319 * 0.0039216);
            LODWORD(a10) = v320.i32[3];
            v321 = v32 ? *&v320.i32[3] : v319 * 0.0039216;
            if (v321 > 0.0)
            {
              v322 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v322;
              if (v14)
              {
                *&a7 = v322;
                if (v322 <= 0.0)
                {
                  v323 = bswap32(v320.u32[2]);
                  v324 = bswap32(LODWORD(v321));
                  v325 = vrev32_s8(*v320.i8);
LABEL_371:
                  *v18->i8 = v325;
                  v18->i32[2] = v323;
                  v18->i32[3] = v324;
                  goto LABEL_372;
                }
              }

              else
              {
                LODWORD(a7) = 1.0;
              }

              v326 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              DWORD2(v550) = v320.i32[3];
              *&v550 = vextq_s8(v320, v320, 4uLL).u64[0];
              *v327.i32 = PDAsoftlightPDA(*v326.i32, *&v326.i32[1], a5, a6, a7, *v320.i64, *&v550, a10, v33, a2, v34, v11, v12, v31, v35, v41, *v320.i32, v550, *(&v550 + 4), v321);
              v323 = bswap32(LODWORD(a5));
              v324 = bswap32(a6.u32[0]);
              v327.i32[1] = v328;
              v325 = vrev32_s8(v327);
              goto LABEL_371;
            }
          }

LABEL_372:
          v20 += v43;
          v329 = &v25[v43];
          if (v329 >= v42)
          {
            v330 = v317;
          }

          else
          {
            v330 = 0;
          }

          v25 = &v329[v330];
          v18 += v43;
          --v318;
        }

        while (v318);
        v20 += v574;
        v18 += v573;
        v41 = v582;
        v331 = v582 + 16 * v572;
        v332 = v564;
        if (v331 < v571)
        {
          v332 = 0;
        }

        v333 = (v331 + 16 * v332);
        v334 = v42 + 16 * v332 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v334;
          v41 = v333;
          v25 = v333;
        }

        v12 = (v594 - 1);
        v11 = v575;
        if (v594 == 1)
        {
          return;
        }
      }

    case 21:
      v346 = -v36;
      v565 = -(v31 * v37);
      while (1)
      {
        v583 = v41;
        v595 = v12;
        v347 = v11;
        do
        {
          v348 = *v20;
          if (*v20)
          {
            v349 = vrev32q_s8(*v25);
            v350 = vmulq_n_f32(v349, v348 * 0.0039216);
            LODWORD(a10) = v350.i32[3];
            v351 = v32 ? *&v350.i32[3] : v348 * 0.0039216;
            if (v351 > 0.0)
            {
              v352 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v352;
              if (v14)
              {
                v353 = v352;
                if (v352 <= 0.0)
                {
                  v354 = bswap32(v350.u32[2]);
                  v355 = bswap32(LODWORD(v351));
                  v356 = vrev32_s8(*v350.i8);
LABEL_411:
                  *v18->i8 = v356;
                  v18->i32[2] = v354;
                  v18->i32[3] = v355;
                  goto LABEL_412;
                }
              }

              else
              {
                v353 = 1.0;
              }

              v357 = vrev32_s8(*v18->i8);
              LODWORD(a5) = bswap32(v18->u32[2]);
              v349.i32[0] = v357.i32[1];
              v554 = v351;
              *&v358 = vextq_s8(v350, v350, 4uLL).u64[0];
              *v359.i32 = PDAhardlightPDA(*v357.i32, *v349.i64, a5, *&a6, v353, *v350.i64, v358, a10, *v350.i32, COERCE_DOUBLE(__PAIR64__(v350.u32[3], HIDWORD(v358))), v554);
              v354 = bswap32(LODWORD(a5));
              v355 = bswap32(a6.u32[0]);
              v359.i32[1] = v360;
              v356 = vrev32_s8(v359);
              goto LABEL_411;
            }
          }

LABEL_412:
          v20 += v43;
          v361 = &v25[v43];
          if (v361 >= v42)
          {
            v362 = v346;
          }

          else
          {
            v362 = 0;
          }

          v25 = &v361[v362];
          v18 += v43;
          --v347;
        }

        while (v347);
        v20 += v574;
        v18 += v573;
        v41 = v583;
        v363 = v583 + 16 * v572;
        v364 = v565;
        if (v363 < v571)
        {
          v364 = 0;
        }

        v365 = (v363 + 16 * v364);
        v366 = v42 + 16 * v364 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v366;
          v41 = v365;
          v25 = v365;
        }

        LODWORD(v12) = v595 - 1;
        LODWORD(v11) = v575;
        if (v595 == 1)
        {
          return;
        }
      }

    case 22:
      v454 = -v36;
      v455 = -(v31 * v37);
      while (1)
      {
        v456 = v11;
        do
        {
          if (*v20)
          {
            v457 = *v20 * 0.0039216;
            v458 = vmulq_n_f32(vrev32q_s8(*v25), v457);
            if (v32)
            {
              v457 = v458.f32[3];
            }

            if (v457 > 0.0)
            {
              if (v14)
              {
                v459 = COERCE_FLOAT(bswap32(v18->u32[3]));
                if (v459 <= 0.0)
                {
                  v460 = bswap32(v458.u32[2]);
                  v461 = bswap32(LODWORD(v457));
                  v462 = vrev32_s8(*v458.f32);
LABEL_543:
                  *v18->i8 = v462;
                  v18->i32[2] = v460;
                  v18->i32[3] = v461;
                  goto LABEL_544;
                }
              }

              else
              {
                v459 = 1.0;
              }

              v463 = COERCE_FLOAT(bswap32(v18->u32[2]));
              v464 = vrev32_s8(*v18->i8);
              v465 = vadd_f32(*v458.f32, v464);
              v466 = vmul_n_f32(v464, v457);
              v467 = vmul_n_f32(*v458.f32, v459);
              v468 = vsub_f32(v465, v466);
              v469 = vsub_f32(v466, v467);
              v470 = vadd_f32(vsub_f32(v468, v467), vbsl_s8(vcltz_f32(v469), vneg_f32(v469), v469));
              v458.f32[0] = vmuls_lane_f32(v459, v458, 2);
              v471 = (v457 * v463) - v458.f32[0];
              v458.f32[0] = ((v458.f32[2] + v463) - (v457 * v463)) - v458.f32[0];
              if (v471 < 0.0)
              {
                v471 = -v471;
              }

              v460 = bswap32(COERCE_UNSIGNED_INT(v458.f32[0] + v471));
              v461 = bswap32(COERCE_UNSIGNED_INT((v459 + v457) - (v459 * v457)));
              v462 = vrev32_s8(v470);
              goto LABEL_543;
            }
          }

LABEL_544:
          v20 += v43;
          v472 = &v25[v43];
          if (v472 >= v42)
          {
            v473 = v454;
          }

          else
          {
            v473 = 0;
          }

          v25 = &v472[v473];
          v18 += v43;
          --v456;
        }

        while (v456);
        v20 += v33;
        v18 += v34;
        v474 = v41 + 16 * v31;
        if (v474 >= v39)
        {
          v475 = v455;
        }

        else
        {
          v475 = 0;
        }

        v476 = (v474 + 16 * v475);
        v477 = v42 + 16 * v475 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v477;
          v41 = v476;
          v25 = v476;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 23:
      v499 = -v36;
      v500 = -(v31 * v37);
      while (1)
      {
        v501 = v11;
        do
        {
          if (*v20)
          {
            v502 = *v20 * 0.0039216;
            v503 = bswap32(v25->u32[2]);
            LODWORD(v504) = bswap32(v25->u32[3]);
            if (!v32)
            {
              v504 = 1.0;
            }

            v505 = vmul_n_f32(__PAIR64__(LODWORD(v504), v503), v502);
            if (v505.f32[1] > 0.0)
            {
              *v506.i8 = vmul_n_f32(vrev32_s8(*v25->i8), v502);
              if (v14)
              {
                LODWORD(v507) = bswap32(v18->u32[3]);
                if (v507 <= 0.0)
                {
                  v506.u64[1] = v505;
                  *v18 = vrev32q_s8(v506);
                  goto LABEL_591;
                }
              }

              else
              {
                v507 = 1.0;
              }

              LODWORD(v508) = bswap32(v18->u32[2]);
              v509 = -v507;
              v510 = vrev32_s8(*v18->i8);
              v511 = vadd_f32(v505, __PAIR64__(LODWORD(v507), LODWORD(v508)));
              v512.i32[0] = 0x40000000;
              v512.f32[1] = v509;
              v505.f32[0] = -v508 * v505.f32[0];
              *v18->i8 = vrev32_s8(vmla_f32(vadd_f32(*v506.i8, v510), 0xC0000000C0000000, vmul_f32(*v506.i8, v510)));
              v18->u64[1] = vrev32_s8(vmla_f32(v511, v505, v512));
            }
          }

LABEL_591:
          v20 += v43;
          v513 = &v25[v43];
          if (v513 >= v42)
          {
            v514 = v499;
          }

          else
          {
            v514 = 0;
          }

          v25 = &v513[v514];
          v18 += v43;
          --v501;
        }

        while (v501);
        v20 += v33;
        v18 += v34;
        v515 = v41 + 16 * v31;
        if (v515 >= v39)
        {
          v516 = v500;
        }

        else
        {
          v516 = 0;
        }

        v517 = (v515 + 16 * v516);
        v518 = v42 + 16 * v516 + 16 * v31;
        if (v35)
        {
          v25 += v31;
        }

        else
        {
          v42 = v518;
          v41 = v517;
          v25 = v517;
        }

        LODWORD(v12) = v12 - 1;
        if (!v12)
        {
          return;
        }
      }

    case 24:
      v197 = -v36;
      v561 = -(v31 * v37);
      while (1)
      {
        v579 = v41;
        v591 = v12;
        v198 = v11;
        do
        {
          v199 = *v20;
          if (*v20)
          {
            v200 = vmulq_n_f32(vrev32q_s8(*v25), v199 * 0.0039216);
            LODWORD(a10) = v200.i32[3];
            v201 = v32 ? *&v200.i32[3] : v199 * 0.0039216;
            if (v201 > 0.0)
            {
              v202 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v202;
              if (v14)
              {
                v203 = v202;
                if (v202 <= 0.0)
                {
                  v204 = bswap32(v200.u32[2]);
                  v205 = bswap32(LODWORD(v201));
                  v206 = vrev32_s8(*v200.i8);
LABEL_215:
                  *v18->i8 = v206;
                  v18->i32[2] = v204;
                  v18->i32[3] = v205;
                  goto LABEL_216;
                }
              }

              else
              {
                v203 = 1.0;
              }

              v207 = vrev32_s8(*v18->i8);
              *&v549 = vextq_s8(v200, v200, 4uLL).u64[0];
              *v208.i32 = PDAhuePDA(*v207.i32, *&v207.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), *&a6, v203, *v200.i64, v549, a10, *v200.i32, *&v549, *(&v549 + 1), *&v200.i32[3], v201);
              v204 = bswap32(v209);
              v205 = bswap32(a6.u32[0]);
              v208.i32[1] = v210;
              v206 = vrev32_s8(v208);
              goto LABEL_215;
            }
          }

LABEL_216:
          v20 += v43;
          v211 = &v25[v43];
          if (v211 >= v42)
          {
            v212 = v197;
          }

          else
          {
            v212 = 0;
          }

          v25 = &v211[v212];
          v18 += v43;
          --v198;
        }

        while (v198);
        v20 += v574;
        v18 += v573;
        v41 = v579;
        v213 = v579 + 16 * v572;
        v214 = v561;
        if (v213 < v571)
        {
          v214 = 0;
        }

        v215 = (v213 + 16 * v214);
        v216 = v42 + 16 * v214 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v216;
          v41 = v215;
          v25 = v215;
        }

        LODWORD(v12) = v591 - 1;
        LODWORD(v11) = v575;
        if (v591 == 1)
        {
          return;
        }
      }

    case 25:
      v177 = -v36;
      v560 = -(v31 * v37);
      while (1)
      {
        v578 = v41;
        v590 = v12;
        v178 = v11;
        do
        {
          v179 = *v20;
          if (*v20)
          {
            v180 = vmulq_n_f32(vrev32q_s8(*v25), v179 * 0.0039216);
            LODWORD(a10) = v180.i32[3];
            v181 = v32 ? *&v180.i32[3] : v179 * 0.0039216;
            if (v181 > 0.0)
            {
              v182 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *a6.i32 = v182;
              if (v14)
              {
                v183 = v182;
                if (v182 <= 0.0)
                {
                  v184 = bswap32(v180.u32[2]);
                  v185 = bswap32(LODWORD(v181));
                  v186 = vrev32_s8(*v180.i8);
LABEL_191:
                  *v18->i8 = v186;
                  v18->i32[2] = v184;
                  v18->i32[3] = v185;
                  goto LABEL_192;
                }
              }

              else
              {
                v183 = 1.0;
              }

              v187 = vrev32_s8(*v18->i8);
              *&v548 = vextq_s8(v180, v180, 4uLL).u64[0];
              *v188.i32 = PDAsaturationPDA(*v187.i32, *&v187.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), *&a6, v183, *v180.i64, v548, a10, *v180.i32, *&v548, *(&v548 + 1), *&v180.i32[3], v181);
              v184 = bswap32(v189);
              v185 = bswap32(a6.u32[0]);
              v188.i32[1] = v190;
              v186 = vrev32_s8(v188);
              goto LABEL_191;
            }
          }

LABEL_192:
          v20 += v43;
          v191 = &v25[v43];
          if (v191 >= v42)
          {
            v192 = v177;
          }

          else
          {
            v192 = 0;
          }

          v25 = &v191[v192];
          v18 += v43;
          --v178;
        }

        while (v178);
        v20 += v574;
        v18 += v573;
        v41 = v578;
        v193 = v578 + 16 * v572;
        v194 = v560;
        if (v193 < v571)
        {
          v194 = 0;
        }

        v195 = (v193 + 16 * v194);
        v196 = v42 + 16 * v194 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v196;
          v41 = v195;
          v25 = v195;
        }

        LODWORD(v12) = v590 - 1;
        LODWORD(v11) = v575;
        if (v590 == 1)
        {
          return;
        }
      }

    case 26:
      v519 = -v36;
      v569 = -(v31 * v37);
      while (1)
      {
        v587 = v41;
        v599 = v12;
        v520 = v11;
        do
        {
          v521 = *v20;
          if (*v20)
          {
            v522 = vmulq_n_f32(vrev32q_s8(*v25), v521 * 0.0039216);
            a6.i32[0] = v522.i32[3];
            v523 = v32 ? v522.f32[3] : v521 * 0.0039216;
            if (v523 > 0.0)
            {
              v524 = COERCE_FLOAT(bswap32(v18->u32[3]));
              *&a8 = v524;
              if (v14)
              {
                *&a9 = v524;
                if (v524 <= 0.0)
                {
                  v525 = bswap32(v522.u32[2]);
                  v526 = bswap32(LODWORD(v523));
LABEL_615:
                  *v18->i8 = vrev32_s8(*v522.f32);
                  v18->i32[2] = v525;
                  v18->i32[3] = v526;
                  goto LABEL_616;
                }
              }

              else
              {
                LODWORD(a9) = 1.0;
              }

              v546 = COERCE_DOUBLE(vrev32_s8(*v18->i8));
              v522.f32[0] = PDAluminosityPDA(v522.f32[0], v522.f32[1], v522.f32[2], *&a6, v523, a8, a9, v546, *&v546, *(&v546 + 1), COERCE_FLOAT(bswap32(v18->u32[2])), *&a8, *&a9);
              v525 = bswap32(v527);
              v526 = bswap32(a6.u32[0]);
              v522.i32[1] = v528;
              goto LABEL_615;
            }
          }

LABEL_616:
          v20 += v43;
          v529 = &v25[v43];
          if (v529 >= v42)
          {
            v530 = v519;
          }

          else
          {
            v530 = 0;
          }

          v25 = &v529[v530];
          v18 += v43;
          --v520;
        }

        while (v520);
        v20 += v574;
        v18 += v573;
        v41 = v587;
        v531 = v587 + 16 * v572;
        v532 = v569;
        if (v531 < v571)
        {
          v532 = 0;
        }

        v533 = (v531 + 16 * v532);
        v534 = v42 + 16 * v532 + 16 * v572;
        if (v570)
        {
          v25 += v572;
        }

        else
        {
          v42 = v534;
          v41 = v533;
          v25 = v533;
        }

        LODWORD(v12) = v599 - 1;
        LODWORD(v11) = v575;
        if (v599 == 1)
        {
          return;
        }
      }

    case 27:
      v48 = -v36;
      v558 = -(v31 * v37);
      break;
    default:
      return;
  }

  do
  {
    v576 = v41;
    v588 = v12;
    v49 = v11;
    do
    {
      v50 = *v20;
      if (*v20)
      {
        v51 = vmulq_n_f32(vrev32q_s8(*v25), v50 * 0.0039216);
        LODWORD(a10) = v51.i32[3];
        v52 = v32 ? *&v51.i32[3] : v50 * 0.0039216;
        if (v52 > 0.0)
        {
          v53 = COERCE_FLOAT(bswap32(v18->u32[3]));
          *a6.i32 = v53;
          if (v14)
          {
            v54 = v53;
            if (v53 <= 0.0)
            {
              v55 = bswap32(v51.u32[2]);
              v56 = bswap32(LODWORD(v52));
              v57 = vrev32_s8(*v51.i8);
LABEL_38:
              *v18->i8 = v57;
              v18->i32[2] = v55;
              v18->i32[3] = v56;
              goto LABEL_39;
            }
          }

          else
          {
            v54 = 1.0;
          }

          v58 = vrev32_s8(*v18->i8);
          *&v547 = vextq_s8(v51, v51, 4uLL).u64[0];
          *v59.i32 = PDAluminosityPDA(*v58.i32, *&v58.i32[1], COERCE_FLOAT(bswap32(v18->u32[2])), *&a6, v54, *v51.i64, v547, a10, *v51.i32, *&v547, *(&v547 + 1), *&v51.i32[3], v52);
          v55 = bswap32(v60);
          v56 = bswap32(a6.u32[0]);
          v59.i32[1] = v61;
          v57 = vrev32_s8(v59);
          goto LABEL_38;
        }
      }

LABEL_39:
      v20 += v43;
      v62 = &v25[v43];
      if (v62 >= v42)
      {
        v63 = v48;
      }

      else
      {
        v63 = 0;
      }

      v25 = &v62[v63];
      v18 += v43;
      --v49;
    }

    while (v49);
    v20 += v574;
    v18 += v573;
    v41 = v576;
    v64 = v576 + 16 * v572;
    v65 = v558;
    if (v64 < v571)
    {
      v65 = 0;
    }

    v66 = (v64 + 16 * v65);
    v67 = v42 + 16 * v65 + 16 * v572;
    if (v570)
    {
      v25 += v572;
    }

    else
    {
      v42 = v67;
      v41 = v66;
      v25 = v66;
    }

    LODWORD(v12) = v588 - 1;
    LODWORD(v11) = v575;
  }

  while (v588 != 1);
}