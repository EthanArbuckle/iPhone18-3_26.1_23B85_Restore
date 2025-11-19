uint64_t vt_Copy_422vf_rgb_v216(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v56 = a4;
  v57 = a5;
  v51 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v48 = a1;
  v9 = *(a1 + 162);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v52 = a6[1];
  v53 = v10;
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v54 = a6[5];
  v55 = v16;
  if (v9 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_39:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v20 = (&v47 - v22);
    bzero(&v47 - v22, v23);
  }

  v24 = v18 - 1;
  v25 = v12 - 1;
  if (v19)
  {
    ++v14;
  }

  else
  {
    v25 = v12;
  }

  if (v19)
  {
    v26 = v19 + 1;
  }

  else
  {
    v24 = v18;
    v26 = v19;
  }

  v27 = v25 - (v24 & 1);
  v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
  if (v27 + v14 > v53)
  {
    v27 = v53 - v14;
  }

  if (v28 + v26 > v55)
  {
    v28 = v55 - v26;
  }

  if (v15 + v13 <= v11)
  {
    v29 = v13;
  }

  else
  {
    v29 = v11 - v15;
  }

  if (v54 + v17 <= v52)
  {
    v30 = v17;
  }

  else
  {
    v30 = v52 - v54;
  }

  if (v27 >= v28)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v29 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v29;
  }

  v33 = v15 + v32 - 1;
  v34 = v31 + v14;
  if (((v31 + v14 + *v56 * v33) > *v57 || (v35 = v51, *(v51 + 8)) && ((v34 + 1 + ((v34 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v56[1] * v33 > v57[1] || *(v51 + 16) && (v34 + v56[2] * v33) > v57[2]) && (fig_log_get_emitter(), v36 = FigSignalErrorAtGM(), v35 = v51, v36))
  {
    v21 = v36;
  }

  else
  {
    *v20 = v9;
    v37 = v52;
    *(v20 + 4) = v53;
    *(v20 + 12) = v11;
    *(v20 + 20) = v31;
    *(v20 + 28) = v32;
    *(v20 + 36) = v14;
    *(v20 + 44) = v15;
    v20[11] = v37;
    v20[12] = v31;
    v20[13] = v32;
    v20[14] = v26;
    v39 = v55;
    v38 = v56;
    v20[7] = v35;
    v20[8] = v38;
    v20[9] = v57;
    v20[10] = v39;
    v41 = v49;
    v40 = v50;
    v20[15] = v54;
    v20[16] = v41;
    v20[17] = v40;
    v20[18] = a9;
    v20[19] = v48;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v9, global_queue, v20, vt_Copy_422vf_rgb_v216_GCD);
    if (!v9)
    {
      return 0;
    }

    v43 = (v20 + 20);
    v44 = v9;
    while (1)
    {
      v45 = *v43++;
      v21 = v45;
      if (v45)
      {
        break;
      }

      if (!--v44)
      {
        v21 = 0;
        break;
      }
    }
  }

  if (v9 == 255)
  {
    goto LABEL_39;
  }

  return v21;
}

uint64_t vt_Copy_422vf_rgb_v216_GCD(void *a1, uint64_t a2, double a3, double a4, double a5, float a6, float a7)
{
  v16 = *(a1 + 36);
  v17 = *a1;
  v18 = *(a1 + 28) * a2 / v17 + *(a1 + 44);
  result = a1[14];
  v20 = a1[16];
  v22 = a1[12];
  v21 = a1[13];
  v23 = v21 * a2 / v17;
  v24 = v23 + a1[15];
  v25 = (v21 + v21 * a2) / v17 - v23;
  v26 = a1[7];
  v27 = a1[8];
  v28 = a1[17];
  v29 = v27[2];
  v30 = v26[2];
  v31 = v28[1];
  v32 = v20[1];
  v33 = (v32 + v31 * v24 + 2 * result);
  if (v32)
  {
    v34 = v32 + v31 * v24 + 2 * result;
  }

  else
  {
    v34 = 0;
  }

  if (v25 >= 1)
  {
    v35 = 0;
    v36 = a1[19];
    v37 = v22 & 0xFFFFFFFE;
    LOWORD(a6) = *(v36 + 140);
    LOWORD(a7) = *(v36 + 142);
    v38 = *v36;
    v39 = *(v36 + 8);
    v40 = *(v36 + 136) / *(v36 + 128);
    v41 = *(v36 + 16);
    v42 = *(v36 + 20);
    v43 = *(v36 + 28);
    LOWORD(v9) = *(v36 + 144);
    LOWORD(v10) = *(v36 + 146);
    LOWORD(v11) = *(v36 + 148);
    LOWORD(v12) = *(v36 + 150);
    LOWORD(v13) = *(v36 + 152);
    v44 = *(v36 + 36);
    v45 = *(v36 + 40);
    v46 = *(v36 + 44);
    v47 = *(v36 + 48);
    v48 = *(v36 + 52);
    v49 = *(v36 + 56);
    v50 = *(v36 + 60);
    v51 = *(v36 + 64);
    v52 = *(v36 + 68);
    v53 = *v27;
    v54 = v27[1];
    v55 = *v28;
    v56 = LODWORD(a6);
    v57 = LODWORD(a7);
    v58 = v40 * v38;
    v59 = v40 * v39;
    v60 = v40 * v41;
    v61 = v40 * v42;
    v62 = v40 * v43;
    v63 = v9;
    v64 = v10;
    v65 = v11;
    v66 = v12;
    v67 = v13;
    v68 = 0.5;
    v69 = v47 * 0.5;
    v70 = v48 * 0.5;
    v71 = v49 * 0.5;
    v72 = v50 * 0.5;
    v73 = v51 * 0.5;
    v74 = v52 * 0.5;
    result = *v20 + v55 * v24 + 2 * result;
    v76 = *v26;
    v75 = v26[1];
    v77 = v75 + v54 * v18 + v16;
    if (!v75)
    {
      v77 = 0;
    }

    v78 = (v76 + v53 * v18 + v16);
    do
    {
      if (v37 >= 1)
      {
        v79 = 0;
        v80 = v78;
        v81 = result;
        v82 = v34;
        do
        {
          LOBYTE(v52) = *(v77 + v79);
          v83 = LODWORD(v52) - v57;
          LOBYTE(v68) = *(v77 + v79 + 1);
          v84 = LODWORD(v68) - v57;
          v85 = v59 * v84;
          v86 = (v61 * v84) + (v83 * v60);
          v87 = v62 * v83;
          LOBYTE(v7) = *v80;
          v88 = v58 * (LODWORD(v7) - v56);
          LOBYTE(v8) = v80[1];
          v89 = v58 * (LODWORD(v8) - v56);
          v90 = v85 + v88;
          v91 = v88 + v86;
          v92 = v87 + v88;
          v93 = v85 + v89;
          v94 = v86 + v89;
          v95 = v87 + v89;
          v96 = (((v45 * v91) + (v44 * v90)) + (v46 * v92)) + v63;
          v52 = (((v45 * v94) + (v44 * v93)) + (v46 * v95)) + v63;
          v97 = v90 + v93;
          v98 = v91 + v94;
          v99 = (v64 + (v97 * v69)) + (v98 * v70);
          v7 = v92 + v95;
          v8 = v99 + (v7 * v71);
          v100 = (v64 + (v97 * v72)) + (v98 * v73);
          if (v8 < v63)
          {
            v101 = v63;
          }

          else
          {
            v101 = v99 + (v7 * v71);
          }

          if (v8 > v65)
          {
            v101 = v65;
          }

          v102 = v100 + (v7 * v74);
          *v81 = llroundf(v101);
          if (v96 < v66)
          {
            v103 = v66;
          }

          else
          {
            v103 = v96;
          }

          if (v96 > v67)
          {
            v103 = v67;
          }

          v81[1] = llroundf(v103);
          if (v102 < v63)
          {
            v104 = v63;
          }

          else
          {
            v104 = v102;
          }

          if (v102 <= v65)
          {
            v105 = v104;
          }

          else
          {
            v105 = v65;
          }

          v81[2] = llroundf(v105);
          v68 = v67;
          if (v52 <= v67)
          {
            v68 = v52;
            if (v52 < v66)
            {
              v68 = v66;
            }
          }

          v81[3] = llroundf(v68);
          if (v82)
          {
            *v82++ = 0;
          }

          v79 += 2;
          v80 += 2;
          v81 += 4;
        }

        while (v79 < v37);
      }

      v78 += v53;
      v77 += v54;
      result += v55;
      ++v35;
    }

    while (v35 != v25);
  }

  if (v30 && v34)
  {
    if (v25 >= 1)
    {
      v106 = 0;
      v107 = (v30 + v29 * v18 + v16);
      do
      {
        if (v22 >= 1)
        {
          v108 = v22;
          v109 = v33;
          v110 = v107;
          do
          {
            v111 = *v110++;
            *v109++ = v111 | (v111 << 8);
            --v108;
          }

          while (v108);
        }

        v107 += v29;
        v33 += v31;
        ++v106;
      }

      while (v106 != v25);
    }
  }

  else if (v34 && v25 >= 1)
  {
    do
    {
      if (v22 >= 1)
      {
        result = memset(v33, 255, 2 * v22);
      }

      v33 += v31;
      --v25;
    }

    while (v25);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

float32x2_t *vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_neon_fp16_GCD(float32x2_t *result, uint64_t a2, double a3, double a4, double a5)
{
  v6 = result->u8[0];
  v212 = *(&result[3] + 4) * a2 / v6 + *(&result[5] + 4);
  v213 = *(&result[4] + 4);
  v7 = result[14];
  v9 = result[12];
  v8 = result[13];
  v217 = result;
  v10 = *&v8 * a2 / v6;
  v11 = v10 + *&result[15];
  v12 = (*&v8 + *&v8 * a2) / v6 - v10;
  v13 = result[7];
  v14 = result[8];
  v15 = result[16];
  v16 = result[17];
  v211 = v14[2];
  v17 = v16[2];
  v214 = v15[2];
  v215 = v13[2];
  v18 = (v214 + v17 * v11 + *&v7);
  if (v12 >= 1)
  {
    v19 = 0;
    v20 = result[19];
    v21 = *v14;
    v22 = v14[1];
    v23 = *v16;
    v24 = v16[1];
    v25 = v20[17].u16[2];
    v26 = v20[17].u16[3];
    v27.i32[0] = v20[3].i32[1];
    v28 = v20[18].u16[0];
    v29 = v20[18].u16[1];
    v30 = v20[18].u16[2];
    v31 = v20[18].u16[3];
    v32 = v20[19].u16[0];
    _S30 = v20[4].f32[1];
    _S5 = v20[6].i32[0];
    _S6 = v20[6].i32[1];
    _S7 = v20[7].i32[0];
    result = (v20 + 16548);
    v37 = 8191.0 / v20[16].u32[0];
    v263 = v26;
    v264 = v25;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    *&a5 = v31;
    v261 = v31;
    v262 = v37 * v20->f32[0];
    v41 = v32;
    v42 = &v20[20] + 4;
    *&a5 = v25;
    __asm { FCVT            H8, S21 }

    v48 = vdupq_lane_s16(*&a5, 0);
    v254 = v48;
    v27.i32[1] = v20[1].i32[0];
    *v5.f32 = vmul_n_f32(v27, v37);
    *v27.i16 = -v26;
    *v48.f32 = vmul_n_f32(v20[2], v37);
    v49 = &v20[4116] + 4;
    v252 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v249 = vmulq_n_f16(v252, *v27.i16);
    v250 = vdupq_lane_s32(vcvt_f16_f32(v48), 0);
    _Q0 = vmulq_n_f16(v250, *v27.i16);
    v248 = _Q0;
    __asm { FCVT            H0, S30 }

    v247 = *_Q0.i16;
    v266 = v20[5].f32[0];
    __asm { FCVT            H0, S3 }

    v246 = *_Q0.i16;
    v265 = v20[5].f32[1];
    __asm { FCVT            H0, S4 }

    v245 = *_Q0.i16;
    *_Q0.i16 = v28;
    v51 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v29;
    v52 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v30;
    v53 = vdupq_lane_s16(*_Q0.i8, 0);
    v243 = v53;
    v244 = v51;
    *v53.i16 = v31;
    v54 = vdupq_lane_s16(*v53.i8, 0);
    v225 = v54;
    v226 = v52;
    *v54.i16 = v32;
    v224 = vdupq_lane_s16(*v54.i8, 0);
    v55 = *v15;
    v56 = v15[1];
    v57 = (v56 + v24 * v11 + *&v7);
    if (!v56)
    {
      v57 = 0;
    }

    v58 = (v55 + v23 * v11 + *&v7);
    v60 = *v13;
    v59 = v13[1];
    v61 = (v59 + v22 * v212 + v213);
    if (!v59)
    {
      v61 = 0;
    }

    v62 = (v60 + v21 * v212 + v213);
    _S26 = v20[9].f32[1];
    _S27 = v20[10].f32[0];
    _S25 = v20[10].f32[1];
    _S10 = v20[11].f32[0];
    _S11 = v20[11].f32[1];
    _S28 = v20[12].f32[0];
    _S29 = v20[13].f32[1];
    _S12 = v20[14].f32[0];
    _S3 = v20[14].f32[1];
    _S4 = v20[15].f32[0];
    v260 = v20[6].f32[0];
    __asm { FCVT            H5, S5 }

    v223 = _H5;
    v259 = v20[6].f32[1];
    __asm { FCVT            H5, S6 }

    v222 = _H5;
    v258 = v20[7].f32[0];
    __asm { FCVT            H5, S7 }

    v221 = _H5;
    v257 = v20[7].f32[1];
    __asm { FCVT            H0, S0 }

    v220 = _H0;
    v256 = v20[8].f32[0];
    __asm { FCVT            H0, S1 }

    v219 = _H0;
    v255 = v20[8].f32[1];
    __asm { FCVT            H0, S23 }

    v218 = _H0;
    __asm { FCVT            H0, S29 }

    v241 = _H0;
    __asm { FCVT            H0, S12 }

    v240 = _H0;
    __asm { FCVT            H0, S3 }

    v239 = _H0;
    __asm { FCVT            H0, S4 }

    v238 = _H0;
    v242 = v20[9].f32[0];
    __asm { FCVT            H0, S24 }

    v237 = _H0;
    __asm { FCVT            H0, S26 }

    v236 = _H0;
    _S5 = v20[12].f32[1];
    _S13 = v20[13].f32[0];
    __asm { FCVT            H0, S27 }

    v235 = _H0;
    __asm { FCVT            H0, S25 }

    v234 = _H0;
    __asm { FCVT            H0, S10 }

    v233 = _H0;
    __asm { FCVT            H0, S11 }

    v232 = _H0;
    __asm { FCVT            H0, S28 }

    v231 = _H0;
    __asm { FCVT            H0, S5 }

    v230 = _H0;
    v253 = v5.f32[0];
    v251 = v48.f32[0];
    _Q0.i16[1] = v48.i16[3];
    v228 = v48.f32[1];
    v229 = v5.f32[1];
    v93.i64[0] = 0x9000900090009000;
    v93.i64[1] = 0x9000900090009000;
    __asm { FCVT            H0, S13 }

    v227 = *_Q0.i16;
    do
    {
      if (v9 < 8)
      {
        v130 = 0;
        v98 = v57;
        v97 = v58;
        v129 = v61;
        v96 = v62;
      }

      else
      {
        v95 = 0;
        v96 = v62;
        v97 = v58;
        v98 = v57;
        do
        {
          v99 = *&v61[v95];
          *v100.i8 = vzip1_s8(v99, 0);
          v100.u64[1] = vzip2_s8(v99, 0);
          v101 = vcvtq_f16_u16(v100);
          v102 = vmlaq_f16(v249, v252, v101);
          v103 = vmlaq_f16(v248, v250, v101);
          v104 = vtrn2q_s16(v102, v102);
          v105 = vtrn1q_s16(v102, v102);
          v106 = vuzp1q_s16(v103, v101);
          *v106.i8 = vadd_f16(*v106.i8, *&vuzp2q_s16(v103, v106));
          v107 = *v96++;
          *v103.i8 = vzip1_s8(v107, 0);
          v103.u64[1] = vzip2_s8(v107, 0);
          v108 = vsubq_f16(vcvtq_f16_u16(v103), v254);
          v109 = vmlaq_n_f16(vzip1q_s16(v106, v106), v108, _H8);
          v110 = vmlaq_n_f16(v105, v108, _H8);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v104, v108, _H8), 0), v93));
          v112.i16[0] = *&v42[2 * v111.u16[0]];
          v112.i16[1] = *&v42[2 * v111.u16[1]];
          v112.i16[2] = *&v42[2 * v111.u16[2]];
          v112.i16[3] = *&v42[2 * v111.u16[3]];
          v112.i16[4] = *&v42[2 * v111.u16[4]];
          v112.i16[5] = *&v42[2 * v111.u16[5]];
          v112.i16[6] = *&v42[2 * v111.u16[6]];
          v112.i16[7] = *&v42[2 * v111.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v93));
          v114.i16[0] = *&v42[2 * v113.u16[0]];
          v114.i16[1] = *&v42[2 * v113.u16[1]];
          v114.i16[2] = *&v42[2 * v113.u16[2]];
          v114.i16[3] = *&v42[2 * v113.u16[3]];
          v114.i16[4] = *&v42[2 * v113.u16[4]];
          v114.i16[5] = *&v42[2 * v113.u16[5]];
          v114.i16[6] = *&v42[2 * v113.u16[6]];
          v114.i16[7] = *&v42[2 * v113.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v93));
          v110.i16[0] = *&v42[2 * v115.u16[0]];
          v110.i16[1] = *&v42[2 * v115.u16[1]];
          v110.i16[2] = *&v42[2 * v115.u16[2]];
          v110.i16[3] = *&v42[2 * v115.u16[3]];
          v110.i16[4] = *&v42[2 * v115.u16[4]];
          v110.i16[5] = *&v42[2 * v115.u16[5]];
          v110.i16[6] = *&v42[2 * v115.u16[6]];
          v110.i16[7] = *&v42[2 * v115.u16[7]];
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v241), v114, v240), v110, v239), vmaxq_f16(vmaxq_f16(v112, v114), v110), v238), 0), v93));
          v103.i16[0] = result->i16[v116.u16[0]];
          v103.i16[1] = result->i16[v116.u16[1]];
          v103.i16[2] = result->i16[v116.u16[2]];
          v103.i16[3] = result->i16[v116.u16[3]];
          v103.i16[4] = result->i16[v116.u16[4]];
          v103.i16[5] = result->i16[v116.u16[5]];
          v103.i16[6] = result->i16[v116.u16[6]];
          v103.i16[7] = result->i16[v116.u16[7]];
          v117 = vmulq_f16(v112, v103);
          v118 = vmulq_f16(v114, v103);
          v119 = vmulq_f16(v110, v103);
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v234), v118, v233), v119, v232);
          v121 = vmulq_n_f16(v119, v227);
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v237), v118, v236), v119, v235), 0), v93));
          v123.i16[0] = *&v49[2 * v122.u16[0]];
          v123.i16[1] = *&v49[2 * v122.u16[1]];
          v123.i16[2] = *&v49[2 * v122.u16[2]];
          v123.i16[3] = *&v49[2 * v122.u16[3]];
          v123.i16[4] = *&v49[2 * v122.u16[4]];
          v123.i16[5] = *&v49[2 * v122.u16[5]];
          v123.i16[6] = *&v49[2 * v122.u16[6]];
          v123.i16[7] = *&v49[2 * v122.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v93));
          v125.i16[0] = *&v49[2 * v124.u16[0]];
          v125.i16[1] = *&v49[2 * v124.u16[1]];
          v125.i16[2] = *&v49[2 * v124.u16[2]];
          v125.i16[3] = *&v49[2 * v124.u16[3]];
          v125.i16[4] = *&v49[2 * v124.u16[4]];
          v125.i16[5] = *&v49[2 * v124.u16[5]];
          v125.i16[6] = *&v49[2 * v124.u16[6]];
          v125.i16[7] = *&v49[2 * v124.u16[7]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v121, v118, v230), v117, v231), 0), v93));
          _Q0.i16[0] = *&v49[2 * v126.u16[0]];
          _Q0.i16[1] = *&v49[2 * v126.u16[1]];
          _Q0.i16[2] = *&v49[2 * v126.u16[2]];
          _Q0.i16[3] = *&v49[2 * v126.u16[3]];
          _Q0.i16[4] = *&v49[2 * v126.u16[4]];
          _Q0.i16[5] = *&v49[2 * v126.u16[5]];
          _Q0.i16[6] = *&v49[2 * v126.u16[6]];
          _Q0.i16[7] = *&v49[2 * v126.u16[7]];
          *v97++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v244, v123, v247), v125, v246), _Q0, v245), v244), v243)));
          if (v98)
          {
            v127 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v226, v123, v220), v125, v219), _Q0, v218);
            *_Q0.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v226, v123, v223), v125, v222), _Q0, v221), v225), v224), v225), v224)));
            v128 = vmovn_s16(vcvtq_u16_f16(v127));
            vst2_s8(v98, _Q0);
            v98 += 16;
          }

          v95 += 8;
        }

        while (v95 < v9 - 7);
        v129 = &v61[v95];
        v130 = v9 & 0xFFFFFFF8;
      }

      while (v130 < (v9 & 0xFFFFFFFE))
      {
        _Q0.i8[0] = v129[1];
        v131 = LODWORD(v263);
        v132 = _Q0.u32[0] - v263;
        v133 = LODWORD(v229);
        v134 = v229 * v132;
        LOBYTE(v133) = v96->i8[0];
        v135 = v262 * (v133 - v264);
        v136 = (v229 * v132) + v135;
        v137 = 8191.0;
        if (v136 <= 8191.0)
        {
          v137 = (v229 * v132) + v135;
          if (v136 < 0.0)
          {
            v137 = 0.0;
          }
        }

        LOBYTE(v131) = *v129;
        v138 = v131 - v263;
        v139 = (v228 * v132) + (v138 * v251);
        v140 = 8191.0;
        if ((v135 + v139) <= 8191.0)
        {
          v140 = v135 + v139;
          if ((v135 + v139) < 0.0)
          {
            v140 = 0.0;
          }
        }

        v141 = LODWORD(v253);
        v142 = v253 * v138;
        v143 = v142 + v135;
        v144 = (v142 + v135) <= 8191.0;
        v145 = 8191.0;
        if (v144)
        {
          v145 = v143;
          if (v143 < 0.0)
          {
            v145 = 0.0;
          }
        }

        LOBYTE(v141) = v96->i8[1];
        v146 = v262 * (v141 - v264);
        v147 = v134 + v146;
        v144 = (v134 + v146) <= 8191.0;
        v148 = 8191.0;
        if (v144)
        {
          v148 = v147;
          if (v147 < 0.0)
          {
            v148 = 0.0;
          }
        }

        v149 = v139 + v146;
        v150 = 8191.0;
        if (v149 <= 8191.0)
        {
          v150 = v149;
          if (v149 < 0.0)
          {
            v150 = 0.0;
          }
        }

        v151 = v142 + v146;
        v152 = 8191.0;
        if (v151 <= 8191.0)
        {
          v152 = v151;
          if (v151 < 0.0)
          {
            v152 = 0.0;
          }
        }

        _H0 = *&v42[2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        v156 = llroundf(fminf(fmaxf(v145, 0.0), 8191.0));
        __asm { FCVT            S1, H2 }

        _H2 = *&v42[2 * v156];
        __asm { FCVT            S21, H2 }

        v160 = (((_S12 * _S1) + (_S29 * _S0)) + (_S3 * _S21)) + (_S4 * fmaxf(_S0, fmaxf(_S1, _S21)));
        v161 = 8191.0;
        if (v160 <= 8191.0)
        {
          v161 = v160;
          if (v160 < 0.0)
          {
            v161 = 0.0;
          }
        }

        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0))];
        __asm { FCVT            S7, H2 }

        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v150, 0.0), 8191.0))];
        __asm { FCVT            S23, H2 }

        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0))];
        __asm { FCVT            S6, H2 }

        _H16 = result->i16[llroundf(v161)];
        v169 = (((_S12 * _S23) + (_S29 * _S7)) + (_S3 * _S6)) + (_S4 * fmaxf(_S7, fmaxf(_S23, _S6)));
        v170 = 8191.0;
        if (v169 <= 8191.0)
        {
          v170 = v169;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        __asm { FCVT            S16, H16 }

        _S0 = _S0 * _S16;
        v173 = _S1 * _S16;
        v174 = _S21 * _S16;
        _H2 = result->i16[llroundf(v170)];
        __asm { FCVT            S2, H2 }

        v177 = _S7 * _S2;
        v178 = _S23 * _S2;
        v179 = _S6 * _S2;
        _H6 = *&v49[2 * llroundf(fminf(fmaxf(((_S26 * v173) + (_S0 * v242)) + (v174 * _S27), 0.0), 8191.0))];
        __asm { FCVT            S23, H6 }

        _H6 = *&v49[2 * llroundf(fminf(fmaxf(((_S10 * v173) + (_S0 * _S25)) + (v174 * _S11), 0.0), 8191.0))];
        __asm { FCVT            S24, H6 }

        LOWORD(_S0) = *&v49[2 * llroundf(fminf(fmaxf(((_S5 * v173) + (_S0 * _S28)) + (v174 * _S13), 0.0), 8191.0))];
        __asm { FCVT            S6, H0 }

        _H0 = *&v49[2 * llroundf(fminf(fmaxf(((_S26 * v178) + (v177 * v242)) + (v179 * _S27), 0.0), 8191.0))];
        _H1 = *&v49[2 * llroundf(fminf(fmaxf(((_S10 * v178) + (v177 * _S25)) + (v179 * _S11), 0.0), 8191.0))];
        _H21 = *&v49[2 * llroundf(fminf(fmaxf(((_S5 * v178) + (v177 * _S28)) + (v179 * _S13), 0.0), 8191.0))];
        v188 = (((v266 * _S24) + (_S30 * _S23)) + (v265 * _S6)) + v38;
        v189 = v40;
        if (v188 <= v40)
        {
          v189 = (((v266 * _S24) + (_S30 * _S23)) + (v265 * _S6)) + v38;
          if (v188 < v38)
          {
            v189 = v38;
          }
        }

        v97->i8[0] = llroundf(v189);
        if (v98)
        {
          v190 = ((v39 + (_S23 * v260)) + (_S24 * v259)) + (_S6 * v258);
          v191 = v41;
          if (v190 <= v41)
          {
            v191 = ((v39 + (_S23 * v260)) + (_S24 * v259)) + (_S6 * v258);
            if (v190 < v261)
            {
              v191 = v261;
            }
          }

          v192 = ((v39 + (_S23 * v257)) + (_S24 * v256)) + (_S6 * v255);
          *v98 = llroundf(v191);
          v193 = v41;
          if (v192 <= v41)
          {
            v193 = v192;
            if (v192 < v261)
            {
              v193 = v261;
            }
          }

          v98[1] = llroundf(v193);
          v98 += 2;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S6, H21
        }

        v196 = (((v266 * _S1) + (_S30 * *_Q0.i32)) + (v265 * _S6)) + v38;
        v197 = v40;
        if (v196 <= v40)
        {
          v197 = (((v266 * _S1) + (_S30 * *_Q0.i32)) + (v265 * _S6)) + v38;
          if (v196 < v38)
          {
            v197 = v38;
          }
        }

        v97->i8[1] = llroundf(v197);
        if (v98)
        {
          v198 = ((v39 + (*_Q0.i32 * v260)) + (_S1 * v259)) + (_S6 * v258);
          v199 = v41;
          if (v198 <= v41)
          {
            v199 = ((v39 + (*_Q0.i32 * v260)) + (_S1 * v259)) + (_S6 * v258);
            if (v198 < v261)
            {
              v199 = v261;
            }
          }

          *_Q0.i32 = ((v39 + (*_Q0.i32 * v257)) + (_S1 * v256)) + (_S6 * v255);
          *v98 = llroundf(v199);
          v200 = v41;
          if (*_Q0.i32 <= v41)
          {
            v200 = *_Q0.i32;
            if (*_Q0.i32 < v261)
            {
              v200 = v261;
            }
          }

          v98[1] = llroundf(v200);
          v98 += 2;
        }

        v130 += 2;
        v129 += 2;
        v96 = (v96 + 2);
        v97 = (v97 + 2);
      }

      v62 = (v62 + v21);
      v61 += v22;
      v58 = (v58 + v23);
      v57 += v24;
      ++v19;
    }

    while (v19 != v12);
  }

  if (v215 && v214)
  {
    if (v12 >= 1)
    {
      v201 = 0;
      v202 = (v215 + v211 * v212 + v213);
      do
      {
        result = memcpy(v18, v202, v9);
        v202 += v211;
        v18 += v17;
        ++v201;
      }

      while (v12 > v201);
    }
  }

  else if (v214 && v12 >= 1)
  {
    v203 = 0;
    v204 = vdupq_n_s64(v9 - 1);
    do
    {
      if (v9 >= 1)
      {
        v205 = 0;
        do
        {
          v206 = vdupq_n_s64(v205);
          v207 = vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v207, *v204.i8), *v204.i8).u8[0])
          {
            v18[v205] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v207, *&v204), *&v204).i8[1])
          {
            v18[v205 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v204, vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDDA0)))), *&v204).i8[2])
          {
            v18[v205 + 2] = -1;
            v18[v205 + 3] = -1;
          }

          v208 = vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v204, vuzp1_s16(v208, *&v204)).i32[1])
          {
            v18[v205 + 4] = -1;
          }

          if (vuzp1_s8(*&v204, vuzp1_s16(v208, *&v204)).i8[5])
          {
            v18[v205 + 5] = -1;
          }

          if (vuzp1_s8(*&v204, vuzp1_s16(*&v204, vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD80))))).i8[6])
          {
            v18[v205 + 6] = -1;
            v18[v205 + 7] = -1;
          }

          v209 = vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v209, *v204.i8), *v204.i8).u8[0])
          {
            v18[v205 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v209, *&v204), *&v204).i8[1])
          {
            v18[v205 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v204, vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD60)))), *&v204).i8[2])
          {
            v18[v205 + 10] = -1;
            v18[v205 + 11] = -1;
          }

          v210 = vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v204, vuzp1_s16(v210, *&v204)).i32[1])
          {
            v18[v205 + 12] = -1;
          }

          if (vuzp1_s8(*&v204, vuzp1_s16(v210, *&v204)).i8[5])
          {
            v18[v205 + 13] = -1;
          }

          if (vuzp1_s8(*&v204, vuzp1_s16(*&v204, vmovn_s64(vcgeq_u64(v204, vorrq_s8(v206, xmmword_18FECDD40))))).i8[6])
          {
            v18[v205 + 14] = -1;
            v18[v205 + 15] = -1;
          }

          v205 += 16;
        }

        while (((v9 + 15) & 0xFFFFFFFFFFFFFFF0) != v205);
      }

      v18 += v17;
      ++v203;
    }

    while (v12 > v203);
  }

  v217[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_422vf_TRC_Tone_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[2];
  v27 = v22[2];
  v28 = (v27 + v26 * v18 + v14);
  if (v19 >= 1)
  {
    v29 = 0;
    v30 = result[19];
    v31 = v16 & 0xFFFFFFFE;
    v32 = *v21;
    v33 = v21[1];
    v34 = *v23;
    v35 = v23[1];
    LOWORD(a4) = *(v30 + 140);
    LOWORD(a6) = *(v30 + 142);
    LOWORD(v6) = *(v30 + 144);
    LOWORD(v7) = *(v30 + 146);
    LOWORD(v8) = *(v30 + 148);
    v36 = 8191.0 / *(v30 + 128);
    v37 = LODWORD(a4);
    v38 = LODWORD(a6);
    v39 = v36 * *v30;
    v167 = v36 * *(v30 + 16);
    v168 = v36 * *(v30 + 8);
    v40 = v36 * *(v30 + 20);
    *&v41 = v36 * *(v30 + 28);
    v165 = *&v41;
    v166 = v40;
    v42 = v6;
    v43 = v7;
    v44 = v8;
    LOWORD(v41) = *(v30 + 150);
    v45 = v41;
    LOWORD(v41) = *(v30 + 152);
    v46 = v41;
    v47 = *(v30 + 36);
    v175 = v45;
    v176 = *(v30 + 40);
    v48 = *(v30 + 44);
    v173 = *(v30 + 52);
    v174 = *(v30 + 48);
    v171 = *(v30 + 60);
    v172 = *(v30 + 56);
    v169 = *(v30 + 68);
    v170 = *(v30 + 64);
    v49 = *(v30 + 76);
    v50 = *(v30 + 80);
    v163 = v49;
    v164 = *(v30 + 72);
    v51 = *(v30 + 84);
    v52 = *(v30 + 88);
    v53 = *(v30 + 92);
    v54 = *(v30 + 96);
    v55 = *(v30 + 100);
    v56 = *(v30 + 104);
    result = (v30 + 164);
    v57 = v30 + 16548;
    v58 = v22[1];
    _ZF = v58 == 0;
    v60 = v58 + v35 * v18;
    v61 = *v22 + v34 * v18;
    v62 = v30 + 32932;
    v63 = (v60 + v14);
    if (_ZF)
    {
      v63 = 0;
    }

    v64 = (v61 + v14);
    v66 = *v20;
    v65 = v20[1];
    v67 = v65 + v33 * v13 + v11;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v32 * v13 + v11);
    v70 = *(v30 + 108);
    v69 = *(v30 + 112);
    v71 = *(v30 + 116);
    v72 = *(v30 + 120);
    do
    {
      if (v31 >= 1)
      {
        v73 = 0;
        v74 = v68;
        v75 = v64;
        v76 = v63;
        do
        {
          LOBYTE(v49) = *(v67 + v73 + 1);
          v77 = LODWORD(v49) - v38;
          v78 = LODWORD(v168);
          v79 = v168 * v77;
          LOBYTE(v78) = *v74;
          v80 = v39 * (v78 - v37);
          v81 = (v168 * v77) + v80;
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = (v168 * v77) + v80;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          LOBYTE(v81) = *(v67 + v73);
          v83 = LODWORD(v81) - v38;
          v84 = (v166 * v77) + (v83 * v167);
          v85 = 8191.0;
          if ((v80 + v84) <= 8191.0)
          {
            v85 = v80 + v84;
            if ((v80 + v84) < 0.0)
            {
              v85 = 0.0;
            }
          }

          v86 = v165 * v83;
          v87 = v86 + v80;
          v88 = (v86 + v80) <= 8191.0;
          v89 = 8191.0;
          if (v88)
          {
            v89 = v87;
            if (v87 < 0.0)
            {
              v89 = 0.0;
            }
          }

          LOBYTE(v87) = v74[1];
          v90 = v39 * (LODWORD(v87) - v37);
          v91 = v79 + v90;
          v88 = (v79 + v90) <= 8191.0;
          v92 = 8191.0;
          if (v88)
          {
            v92 = v91;
            if (v91 < 0.0)
            {
              v92 = 0.0;
            }
          }

          v93 = v84 + v90;
          v88 = (v84 + v90) <= 8191.0;
          v94 = 8191.0;
          if (v88)
          {
            v94 = v93;
            if (v93 < 0.0)
            {
              v94 = 0.0;
            }
          }

          v95 = v86 + v90;
          v88 = (v86 + v90) <= 8191.0;
          v96 = 8191.0;
          if (v88)
          {
            v96 = v95;
            if (v95 < 0.0)
            {
              v96 = 0.0;
            }
          }

          _H0 = *(result + llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(result + llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H19 = *(result + llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          _H28 = *(result + llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          _H29 = *(result + llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          v109 = fmaxf(_S24, fmaxf(_S25, _S26));
          v110 = (((v69 * _S25) + (v70 * _S24)) + (v71 * _S26)) + (v72 * v109);
          v111 = 8191.0;
          if (v110 <= 8191.0)
          {
            v111 = (((v69 * _S25) + (v70 * _S24)) + (v71 * _S26)) + (v72 * v109);
            if (v110 < 0.0)
            {
              v111 = 0.0;
            }
          }

          v112 = v47;
          __asm
          {
            FCVT            S27, H19
            FCVT            S28, H28
            FCVT            S29, H29
          }

          _H19 = *(v57 + 2 * llroundf(v111));
          v117 = (((v69 * _S28) + (v70 * _S27)) + (v71 * _S29)) + (v72 * fmaxf(_S27, fmaxf(_S28, _S29)));
          v118 = 8191.0;
          if (v117 <= 8191.0)
          {
            v118 = v117;
            if (v117 < 0.0)
            {
              v118 = 0.0;
            }
          }

          __asm { FCVT            S0, H19 }

          v120 = _S24 * _S0;
          _S24 = _S25 * _S0;
          v122 = _S26 * _S0;
          _H1 = *(v57 + 2 * llroundf(v118));
          __asm { FCVT            S1, H1 }

          v125 = _S27 * _S1;
          v126 = _S28 * _S1;
          v127 = _S29 * _S1;
          v128 = ((v163 * _S24) + (v120 * v164)) + (v122 * v50);
          v129 = ((v52 * _S24) + (v120 * v51)) + (v122 * v53);
          _S0 = ((v55 * _S24) + (v120 * v54)) + (v122 * v56);
          v131 = ((v163 * v126) + (v125 * v164)) + (v127 * v50);
          v132 = ((v52 * v126) + (v125 * v51)) + (v127 * v53);
          v133 = ((v55 * v126) + (v125 * v54)) + (v127 * v56);
          LOWORD(_S24) = *(v62 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          LOWORD(_S24) = *(v62 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S28, H24 }

          LOWORD(_S0) = *(v62 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H24 = *(v62 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          _H25 = *(v62 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          _H26 = *(v62 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          v47 = v112;
          v140 = (((v176 * _S28) + (v112 * _S27)) + (v48 * _S29)) + v42;
          v141 = v44;
          if (v140 <= v44)
          {
            v141 = (((v176 * _S28) + (v112 * _S27)) + (v48 * _S29)) + v42;
            if (v140 < v42)
            {
              v141 = v42;
            }
          }

          *v75 = llroundf(v141);
          if (v76)
          {
            v142 = ((v43 + (_S27 * v174)) + (_S28 * v173)) + (_S29 * v172);
            v143 = v46;
            if (v142 <= v46)
            {
              v143 = ((v43 + (_S27 * v174)) + (_S28 * v173)) + (_S29 * v172);
              if (v142 < v175)
              {
                v143 = v175;
              }
            }

            v144 = ((v43 + (_S27 * v171)) + (_S28 * v170)) + (_S29 * v169);
            *v76 = llroundf(v143);
            v145 = v46;
            if (v144 <= v46)
            {
              v145 = ((v43 + (_S27 * v171)) + (_S28 * v170)) + (_S29 * v169);
              if (v144 < v175)
              {
                v145 = v175;
              }
            }

            v76[1] = llroundf(v145);
            v76 += 2;
          }

          __asm
          {
            FCVT            S24, H24
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v149 = (((v176 * _S25) + (v112 * _S24)) + (v48 * _S26)) + v42;
          v49 = v44;
          if (v149 <= v44)
          {
            v49 = (((v176 * _S25) + (v112 * _S24)) + (v48 * _S26)) + v42;
            if (v149 < v42)
            {
              v49 = v42;
            }
          }

          v75[1] = llroundf(v49);
          if (v76)
          {
            v150 = ((v43 + (_S24 * v174)) + (_S25 * v173)) + (_S26 * v172);
            v151 = v46;
            if (v150 <= v46)
            {
              v151 = ((v43 + (_S24 * v174)) + (_S25 * v173)) + (_S26 * v172);
              if (v150 < v175)
              {
                v151 = v175;
              }
            }

            v152 = ((v43 + (_S24 * v171)) + (_S25 * v170)) + (_S26 * v169);
            *v76 = llroundf(v151);
            v49 = v46;
            if (v152 <= v46)
            {
              v49 = ((v43 + (_S24 * v171)) + (_S25 * v170)) + (_S26 * v169);
              if (v152 < v175)
              {
                v49 = v175;
              }
            }

            v76[1] = llroundf(v49);
            v76 += 2;
          }

          v73 += 2;
          v74 += 2;
          v75 += 2;
        }

        while (v73 < v31);
      }

      v68 += v32;
      v67 += v33;
      v64 += v34;
      v63 += v35;
      ++v29;
    }

    while (v29 != v19);
  }

  if (v25 && v27)
  {
    if (v19 >= 1)
    {
      v153 = 0;
      v154 = (v25 + v24 * v13 + v11);
      do
      {
        result = memcpy(v28, v154, v16);
        v154 += v24;
        v28 += v26;
        ++v153;
      }

      while (v19 > v153);
    }
  }

  else if (v27 && v19 >= 1)
  {
    v155 = 0;
    v156 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v157 = 0;
        do
        {
          v158 = vdupq_n_s64(v157);
          v159 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v159, *v156.i8), *v156.i8).u8[0])
          {
            v28[v157] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v159, *&v156), *&v156).i8[1])
          {
            v28[v157 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v156, vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDDA0)))), *&v156).i8[2])
          {
            v28[v157 + 2] = -1;
            v28[v157 + 3] = -1;
          }

          v160 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v156, vuzp1_s16(v160, *&v156)).i32[1])
          {
            v28[v157 + 4] = -1;
          }

          if (vuzp1_s8(*&v156, vuzp1_s16(v160, *&v156)).i8[5])
          {
            v28[v157 + 5] = -1;
          }

          if (vuzp1_s8(*&v156, vuzp1_s16(*&v156, vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD80))))).i8[6])
          {
            v28[v157 + 6] = -1;
            v28[v157 + 7] = -1;
          }

          v161 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v161, *v156.i8), *v156.i8).u8[0])
          {
            v28[v157 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v161, *&v156), *&v156).i8[1])
          {
            v28[v157 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v156, vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD60)))), *&v156).i8[2])
          {
            v28[v157 + 10] = -1;
            v28[v157 + 11] = -1;
          }

          v162 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v156, vuzp1_s16(v162, *&v156)).i32[1])
          {
            v28[v157 + 12] = -1;
          }

          if (vuzp1_s8(*&v156, vuzp1_s16(v162, *&v156)).i8[5])
          {
            v28[v157 + 13] = -1;
          }

          if (vuzp1_s8(*&v156, vuzp1_s16(*&v156, vmovn_s64(vcgeq_u64(v156, vorrq_s8(v158, xmmword_18FECDD40))))).i8[6])
          {
            v28[v157 + 14] = -1;
            v28[v157 + 15] = -1;
          }

          v157 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v157);
      }

      v28 += v26;
      ++v155;
    }

    while (v19 > v155);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_444vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_444vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

float32x2_t *vt_Copy_422vf_TRC_Mat_TRC_444vf_neon_fp16_GCD(float32x2_t *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7, float32x4_t a8)
{
  v200 = *(&result[4] + 4);
  v9 = result->u8[0];
  v199 = *(&result[3] + 4) * a2 / v9 + *(&result[5] + 4);
  v10 = result[14];
  v12 = result[12];
  v11 = result[13];
  v204 = result;
  v13 = *&v11 * a2 / v9;
  v14 = v13 + *&result[15];
  v15 = (*&v11 + *&v11 * a2) / v9 - v13;
  v16 = result[7];
  v17 = result[8];
  v18 = result[16];
  v19 = result[17];
  v198 = v17[2];
  v20 = v19[2];
  v201 = v18[2];
  v202 = v16[2];
  v21 = (v201 + v20 * v14 + *&v10);
  if (v15 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = *v17;
    v25 = v17[1];
    v26 = *v19;
    v27 = v19[1];
    v28 = v23[17].u16[2];
    v29 = v23[17].u16[3];
    a7.i32[0] = v23->i32[0];
    a8.i32[0] = v23[3].i32[1];
    v30 = v23[18].u16[0];
    v31 = v23[18].u16[1];
    v32 = v23[18].u16[2];
    v33 = v23[18].u16[3];
    v34 = v23[19].u16[0];
    _S1 = v23[4].i32[1];
    _Q6.i32[0] = v23[5].i32[0];
    _S7 = v23[5].i32[1];
    _S16 = v23[6].i32[0];
    _S22 = v23[6].i32[1];
    _S30 = v23[7].i32[0];
    _S9 = v23[7].i32[1];
    _S11 = v23[8].i32[0];
    a3.i32[0] = 1174403072;
    v240 = v28;
    v43 = 8191.0 / v23[16].u32[0];
    v239 = v29;
    _S19 = v43 * v23->f32[0];
    v45 = v30;
    v46 = v31;
    v47 = v32;
    v238 = v33;
    v48 = v34;
    *a7.i16 = v28;
    v205 = vdupq_lane_s16(a7, 0);
    a8.i32[1] = v23[1].i32[0];
    *v8.f32 = vmul_n_f32(*a8.f32, v43);
    v49 = -v29;
    *a8.f32 = vmul_n_f32(v23[2], v43);
    v50 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    _S12 = v23[8].i32[1];
    _S31 = v23[9].f32[0];
    result = (v23 + 164);
    v53 = &v23[2068] + 4;
    v231 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v229 = vmulq_n_f16(v231, v49);
    v230 = v50;
    v228 = vmulq_n_f16(v50, v49);
    *v50.i16 = v30;
    v54 = vdupq_lane_s16(*v50.i8, 0);
    *v50.i16 = v31;
    v55 = vdupq_lane_s16(*v50.i8, 0);
    *v50.i16 = v32;
    v227 = vdupq_lane_s16(*v50.i8, 0);
    *v50.i16 = v33;
    v213 = vdupq_lane_s16(*v50.i8, 0);
    v214 = v55;
    *v50.i16 = v34;
    v212 = vdupq_lane_s16(*v50.i8, 0);
    v56 = *v18;
    v57 = v18[1];
    v58 = (v57 + v27 * v14 + *&v10);
    if (!v57)
    {
      v58 = 0;
    }

    v59 = (v56 + v26 * v14 + *&v10);
    v61 = *v16;
    v60 = v16[1];
    v62 = (v60 + v25 * v199 + v200);
    if (!v60)
    {
      v62 = 0;
    }

    v63 = (v61 + v24 * v199 + v200);
    _S15 = v23[9].f32[1];
    _S25 = v23[10].f32[0];
    _S26 = v23[10].f32[1];
    _S27 = v23[11].f32[0];
    _S28 = v23[11].f32[1];
    _S29 = v23[12].f32[0];
    __asm { FCVT            H8, S19 }

    v75 = v23[4].f32[1];
    __asm { FCVT            H1, S1 }

    v226 = _H1;
    v77 = v23[5].f32[0];
    __asm { FCVT            H1, S6 }

    v225 = _H1;
    v79 = v23[5].f32[1];
    __asm { FCVT            H1, S7 }

    v224 = _H1;
    v237 = v23[6].f32[0];
    __asm { FCVT            H1, S16 }

    v211 = _H1;
    v236 = v23[6].f32[1];
    __asm { FCVT            H1, S22 }

    v210 = _H1;
    v235 = v23[7].f32[0];
    __asm { FCVT            H1, S30 }

    v209 = _H1;
    v234 = v23[7].f32[1];
    __asm { FCVT            H1, S9 }

    v208 = _H1;
    v233 = v23[8].f32[0];
    __asm { FCVT            H1, S11 }

    v207 = _H1;
    v232 = v23[8].f32[1];
    __asm { FCVT            H1, S12 }

    v206 = _H1;
    __asm { FCVT            H1, S31 }

    v223 = _H1;
    __asm { FCVT            H1, S15 }

    v222 = _H1;
    _S12 = v23[12].f32[1];
    _S9 = v23[13].f32[0];
    __asm { FCVT            H1, S25 }

    v221 = _H1;
    __asm { FCVT            H1, S26 }

    v220 = _H1;
    __asm { FCVT            H1, S27 }

    v219 = _H1;
    __asm { FCVT            H1, S28 }

    v218 = _H1;
    __asm { FCVT            H1, S29 }

    v217 = _H1;
    __asm { FCVT            H1, S12 }

    v216 = _H1;
    __asm { FCVT            H1, S9 }

    v215 = _H1;
    v98 = v8.i64[0];
    v99.i64[0] = 0x9000900090009000;
    v99.i64[1] = 0x9000900090009000;
    do
    {
      if (v12 < 8)
      {
        v128 = 0;
        v103 = v58;
        v102 = v59;
        v127 = v62;
        v101 = v63;
      }

      else
      {
        v100 = 0;
        v101 = v63;
        v102 = v59;
        v103 = v58;
        do
        {
          v104 = *&v62[v100];
          *v105.i8 = vzip1_s8(v104, 0);
          v105.u64[1] = vzip2_s8(v104, 0);
          v106 = vcvtq_f16_u16(v105);
          v107 = vmlaq_f16(v229, v231, v106);
          v108 = vmlaq_f16(v228, v230, v106);
          v109 = vtrn2q_s16(v107, v107);
          v110 = vtrn1q_s16(v107, v107);
          v111 = vuzp1q_s16(v108, a3);
          *v111.i8 = vadd_f16(*v111.i8, *&vuzp2q_s16(v108, a3));
          v112 = *v101++;
          *v113.i8 = vzip1_s8(v112, 0);
          v113.u64[1] = vzip2_s8(v112, 0);
          v114 = vsubq_f16(vcvtq_f16_u16(v113), v205);
          v115 = vmlaq_n_f16(vzip1q_s16(v111, v111), v114, _H8);
          v116 = vmlaq_n_f16(v110, v114, _H8);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v109, v114, _H8), 0), v99));
          v109.i16[0] = result->i16[v117.u16[0]];
          v109.i16[1] = result->i16[v117.u16[1]];
          v109.i16[2] = result->i16[v117.u16[2]];
          v109.i16[3] = result->i16[v117.u16[3]];
          v109.i16[4] = result->i16[v117.u16[4]];
          v109.i16[5] = result->i16[v117.u16[5]];
          v109.i16[6] = result->i16[v117.u16[6]];
          v109.i16[7] = result->i16[v117.u16[7]];
          v118 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v115, 0), v99));
          v115.i16[0] = result->i16[v118.u16[0]];
          v115.i16[1] = result->i16[v118.u16[1]];
          v115.i16[2] = result->i16[v118.u16[2]];
          v115.i16[3] = result->i16[v118.u16[3]];
          v115.i16[4] = result->i16[v118.u16[4]];
          v115.i16[5] = result->i16[v118.u16[5]];
          v115.i16[6] = result->i16[v118.u16[6]];
          v115.i16[7] = result->i16[v118.u16[7]];
          v119 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v116, 0), v99));
          v113.i16[0] = result->i16[v119.u16[0]];
          v113.i16[1] = result->i16[v119.u16[1]];
          v113.i16[2] = result->i16[v119.u16[2]];
          v113.i16[3] = result->i16[v119.u16[3]];
          v113.i16[4] = result->i16[v119.u16[4]];
          v113.i16[5] = result->i16[v119.u16[5]];
          v113.i16[6] = result->i16[v119.u16[6]];
          v113.i16[7] = result->i16[v119.u16[7]];
          v120 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v223), v115, v222), v113, v221), 0), v99));
          v121.i16[0] = *&v53[2 * v120.u16[0]];
          v121.i16[1] = *&v53[2 * v120.u16[1]];
          v121.i16[2] = *&v53[2 * v120.u16[2]];
          v121.i16[3] = *&v53[2 * v120.u16[3]];
          v121.i16[4] = *&v53[2 * v120.u16[4]];
          v121.i16[5] = *&v53[2 * v120.u16[5]];
          v121.i16[6] = *&v53[2 * v120.u16[6]];
          v121.i16[7] = *&v53[2 * v120.u16[7]];
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v109, v220), v115, v219), v113, v218), 0), v99));
          v123.i16[0] = *&v53[2 * v122.u16[0]];
          v123.i16[1] = *&v53[2 * v122.u16[1]];
          v123.i16[2] = *&v53[2 * v122.u16[2]];
          v123.i16[3] = *&v53[2 * v122.u16[3]];
          v123.i16[4] = *&v53[2 * v122.u16[4]];
          v123.i16[5] = *&v53[2 * v122.u16[5]];
          v123.i16[6] = *&v53[2 * v122.u16[6]];
          v123.i16[7] = *&v53[2 * v122.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v215), v115, v216), v109, v217), 0), v99));
          _Q6.i16[0] = *&v53[2 * v124.u16[0]];
          _Q6.i16[1] = *&v53[2 * v124.u16[1]];
          _Q6.i16[2] = *&v53[2 * v124.u16[2]];
          _Q6.i16[3] = *&v53[2 * v124.u16[3]];
          _Q6.i16[4] = *&v53[2 * v124.u16[4]];
          _Q6.i16[5] = *&v53[2 * v124.u16[5]];
          _Q6.i16[6] = *&v53[2 * v124.u16[6]];
          _Q6.i16[7] = *&v53[2 * v124.u16[7]];
          *v102++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v54, v121, v226), v123, v225), _Q6, v224), v54), v227)));
          if (v103)
          {
            v125 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v214, v121, v208), v123, v207), _Q6, v206);
            *_Q6.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v214, v121, v211), v123, v210), _Q6, v209), v213), v212), v213), v212)));
            v126 = vmovn_s16(vcvtq_u16_f16(v125));
            vst2_s8(v103, _Q6);
            v103 += 16;
          }

          v100 += 8;
        }

        while (v100 < v12 - 7);
        v127 = &v62[v100];
        v128 = v12 & 0xFFFFFFF8;
      }

      while (v128 < (v12 & 0xFFFFFFFE))
      {
        _Q6.i8[0] = v127[1];
        *&v129 = _Q6.u32[0];
        v130 = *&v129 - v239;
        v131 = *(&v98 + 1) * v130;
        LOBYTE(v129) = v101->i8[0];
        v132 = _S19 * (v129 - v240);
        v133 = (*(&v98 + 1) * v130) + v132;
        _Q6.i32[0] = 1174403072;
        if (v133 <= 8191.0)
        {
          *_Q6.i32 = (*(&v98 + 1) * v130) + v132;
          if (v133 < 0.0)
          {
            _Q6.i32[0] = 0;
          }
        }

        LOBYTE(v133) = *v127;
        v134 = LODWORD(v133) - v239;
        v135 = (a8.f32[1] * v130) + (v134 * a8.f32[0]);
        v136 = 8191.0;
        if ((v132 + v135) <= 8191.0)
        {
          v136 = v132 + v135;
          if ((v132 + v135) < 0.0)
          {
            v136 = 0.0;
          }
        }

        v137 = *&v98 * v134;
        v138 = v137 + v132;
        v139 = (v137 + v132) <= 8191.0;
        v140 = 8191.0;
        if (v139)
        {
          v140 = v138;
          if (v138 < 0.0)
          {
            v140 = 0.0;
          }
        }

        LOBYTE(v138) = v101->i8[1];
        v141 = _S19 * (LODWORD(v138) - v240);
        v142 = v131 + v141;
        if (v142 < 0.0)
        {
          v143 = 0.0;
        }

        else
        {
          v143 = v142;
        }

        if (v142 > 8191.0)
        {
          v143 = 8191.0;
        }

        v144 = v135 + v141;
        if ((v135 + v141) < 0.0)
        {
          v145 = 0.0;
        }

        else
        {
          v145 = v135 + v141;
        }

        if (v144 <= 8191.0)
        {
          v146 = v145;
        }

        else
        {
          v146 = 8191.0;
        }

        v147 = v137 + v141;
        if (v147 < 0.0)
        {
          v148 = 0.0;
        }

        else
        {
          v148 = v147;
        }

        v149 = llroundf(fminf(fmaxf(*_Q6.i32, 0.0), 8191.0));
        if (v147 <= 8191.0)
        {
          v150 = v148;
        }

        else
        {
          v150 = 8191.0;
        }

        _H1 = result->i16[v149];
        __asm { FCVT            S1, H1 }

        _H6 = result->i16[llroundf(fminf(fmaxf(v136, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H7 = result->i16[llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        v157 = ((_S15 * _S6) + (_S1 * _S31)) + (_S7 * _S25);
        v158 = ((_S27 * _S6) + (_S1 * _S26)) + (_S7 * _S28);
        _S1 = ((_S12 * _S6) + (_S1 * _S29)) + (_S7 * _S9);
        LOWORD(_S6) = *&v53[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        LOWORD(_S7) = *&v53[2 * llroundf(fminf(fmaxf(v158, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        LOWORD(_S1) = *&v53[2 * llroundf(fminf(fmaxf(_S1, 0.0), 8191.0))];
        __asm { FCVT            S30, H1 }

        v163 = (((v77 * _S7) + (v75 * _S6)) + (v79 * _S30)) + v45;
        v164 = v47;
        if (v163 <= v47)
        {
          v164 = (((v77 * _S7) + (v75 * _S6)) + (v79 * _S30)) + v45;
          if (v163 < v45)
          {
            v164 = v45;
          }
        }

        _H1 = result->i16[llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H16 = result->i16[llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S16, H16 }

        _H11 = result->i16[llroundf(fminf(fmaxf(v150, 0.0), 8191.0))];
        __asm { FCVT            S11, H11 }

        v171 = ((_S15 * _S16) + (_S1 * _S31)) + (_S11 * _S25);
        v172 = ((_S27 * _S16) + (_S1 * _S26)) + (_S11 * _S28);
        v173 = ((_S12 * _S16) + (_S1 * _S29)) + (_S11 * _S9);
        _H11 = *&v53[2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0))];
        _H13 = *&v53[2 * llroundf(fminf(fmaxf(v172, 0.0), 8191.0))];
        _H14 = *&v53[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        v102->i8[0] = llroundf(v164);
        if (v103)
        {
          v177 = ((v46 + (_S6 * v237)) + (_S7 * v236)) + (_S30 * v235);
          v178 = v48;
          if (v177 <= v48)
          {
            v178 = ((v46 + (_S6 * v237)) + (_S7 * v236)) + (_S30 * v235);
            if (v177 < v238)
            {
              v178 = v238;
            }
          }

          v179 = ((v46 + (_S6 * v234)) + (_S7 * v233)) + (_S30 * v232);
          *v103 = llroundf(v178);
          v180 = v48;
          if (v179 <= v48)
          {
            v180 = v179;
            if (v179 < v238)
            {
              v180 = v238;
            }
          }

          v103[1] = llroundf(v180);
          v103 += 2;
        }

        __asm
        {
          FCVT            S6, H11
          FCVT            S7, H13
          FCVT            S16, H14
        }

        v183 = ((v77 * _S7) + (v75 * *_Q6.i32)) + (v79 * _S16);
        v184 = v47;
        if ((v183 + v45) <= v47)
        {
          v184 = v183 + v45;
          if ((v183 + v45) < v45)
          {
            v184 = v45;
          }
        }

        v102->i8[1] = llroundf(v184);
        if (v103)
        {
          v185 = ((v46 + (*_Q6.i32 * v237)) + (_S7 * v236)) + (_S16 * v235);
          v186 = v48;
          if (v185 <= v48)
          {
            v186 = ((v46 + (*_Q6.i32 * v237)) + (_S7 * v236)) + (_S16 * v235);
            if (v185 < v238)
            {
              v186 = v238;
            }
          }

          *_Q6.i32 = ((v46 + (*_Q6.i32 * v234)) + (_S7 * v233)) + (_S16 * v232);
          *v103 = llroundf(v186);
          v187 = v48;
          if (*_Q6.i32 <= v48)
          {
            v187 = *_Q6.i32;
            if (*_Q6.i32 < v238)
            {
              v187 = v238;
            }
          }

          v103[1] = llroundf(v187);
          v103 += 2;
        }

        v128 += 2;
        v127 += 2;
        v101 = (v101 + 2);
        v102 = (v102 + 2);
      }

      v63 = (v63 + v24);
      v62 += v25;
      v59 = (v59 + v26);
      v58 += v27;
      ++v22;
    }

    while (v22 != v15);
  }

  if (v202 && v201)
  {
    if (v15 >= 1)
    {
      v188 = 0;
      v189 = (v202 + v198 * v199 + v200);
      do
      {
        result = memcpy(v21, v189, v12);
        v189 += v198;
        v21 += v20;
        ++v188;
      }

      while (v15 > v188);
    }
  }

  else if (v201 && v15 >= 1)
  {
    v190 = 0;
    v191 = vdupq_n_s64(v12 - 1);
    do
    {
      if (v12 >= 1)
      {
        v192 = 0;
        do
        {
          v193 = vdupq_n_s64(v192);
          v194 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v194, *v191.i8), *v191.i8).u8[0])
          {
            v21[v192] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v194, *&v191), *&v191).i8[1])
          {
            v21[v192 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDDA0)))), *&v191).i8[2])
          {
            v21[v192 + 2] = -1;
            v21[v192 + 3] = -1;
          }

          v195 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v191, vuzp1_s16(v195, *&v191)).i32[1])
          {
            v21[v192 + 4] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(v195, *&v191)).i8[5])
          {
            v21[v192 + 5] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD80))))).i8[6])
          {
            v21[v192 + 6] = -1;
            v21[v192 + 7] = -1;
          }

          v196 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v196, *v191.i8), *v191.i8).u8[0])
          {
            v21[v192 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v196, *&v191), *&v191).i8[1])
          {
            v21[v192 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD60)))), *&v191).i8[2])
          {
            v21[v192 + 10] = -1;
            v21[v192 + 11] = -1;
          }

          v197 = vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v191, vuzp1_s16(v197, *&v191)).i32[1])
          {
            v21[v192 + 12] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(v197, *&v191)).i8[5])
          {
            v21[v192 + 13] = -1;
          }

          if (vuzp1_s8(*&v191, vuzp1_s16(*&v191, vmovn_s64(vcgeq_u64(v191, vorrq_s8(v193, xmmword_18FECDD40))))).i8[6])
          {
            v21[v192 + 14] = -1;
            v21[v192 + 15] = -1;
          }

          v192 += 16;
        }

        while (((v12 + 15) & 0xFFFFFFFFFFFFFFF0) != v192);
      }

      v21 += v20;
      ++v190;
    }

    while (v15 > v190);
  }

  v204[20].i32[a2] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_444vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_444vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_422vf_TRC_Mat_TRC_444vf_GCD(void *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = result;
  v11 = *(result + 36);
  v12 = *result;
  v13 = *(result + 28) * a2 / v12 + *(result + 44);
  v14 = result[14];
  v16 = result[12];
  v15 = result[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + result[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = result[7];
  v21 = result[8];
  v22 = result[16];
  v23 = result[17];
  v24 = v21[2];
  v25 = v20[2];
  v26 = v23[2];
  v27 = v22[2];
  v28 = (v27 + v26 * v18 + v14);
  if (v19 >= 1)
  {
    v29 = 0;
    v30 = result[19];
    v31 = v16 & 0xFFFFFFFE;
    v32 = *v21;
    v33 = v21[1];
    v34 = *v23;
    v35 = v23[1];
    LOWORD(a5) = *(v30 + 140);
    LOWORD(a6) = *(v30 + 142);
    LOWORD(v6) = *(v30 + 144);
    LOWORD(v7) = *(v30 + 146);
    LOWORD(v8) = *(v30 + 148);
    v36 = 8191.0 / *(v30 + 128);
    v37 = LODWORD(a5);
    v38 = LODWORD(a6);
    v39 = v36 * *v30;
    v148 = v36 * *(v30 + 8);
    v146 = v36 * *(v30 + 20);
    v147 = v36 * *(v30 + 16);
    *&v40 = v36 * *(v30 + 28);
    v145 = *&v40;
    v41 = v6;
    v42 = v7;
    v43 = v8;
    LOWORD(v40) = *(v30 + 150);
    v44 = v40;
    LOWORD(v40) = *(v30 + 152);
    v45 = v40;
    v46 = *(v30 + 36);
    v47 = *(v30 + 40);
    v48 = *(v30 + 44);
    v152 = *(v30 + 52);
    v153 = *(v30 + 48);
    _S4 = *(v30 + 64);
    v150 = *(v30 + 60);
    v151 = *(v30 + 56);
    v149 = _S4;
    v50 = *(v30 + 68);
    v51 = *(v30 + 72);
    v53 = *(v30 + 76);
    v52 = *(v30 + 80);
    v54 = *(v30 + 84);
    v55 = *(v30 + 88);
    v56 = *(v30 + 92);
    v57 = *(v30 + 96);
    v58 = *(v30 + 100);
    v59 = *(v30 + 104);
    result = (v30 + 164);
    v60 = v30 + 16548;
    v62 = *v22;
    v61 = v22[1];
    v63 = (v61 + v35 * v18 + v14);
    if (!v61)
    {
      v63 = 0;
    }

    v64 = (v62 + v34 * v18 + v14);
    v66 = *v20;
    v65 = v20[1];
    v67 = v65 + v33 * v13 + v11;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v32 * v13 + v11);
    do
    {
      if (v31 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v64;
        v72 = v63;
        do
        {
          LOBYTE(_S4) = *(v67 + v69 + 1);
          v73 = LODWORD(_S4) - v38;
          v74 = LODWORD(v148);
          v75 = v148 * v73;
          LOBYTE(v74) = *v70;
          v76 = v39 * (v74 - v37);
          v77 = (v148 * v73) + v76;
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = (v148 * v73) + v76;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          LOBYTE(v77) = *(v67 + v69);
          v79 = LODWORD(v77) - v38;
          v80 = (v146 * v73) + (v79 * v147);
          v81 = 8191.0;
          if ((v76 + v80) <= 8191.0)
          {
            v81 = v76 + v80;
            if ((v76 + v80) < 0.0)
            {
              v81 = 0.0;
            }
          }

          v82 = v145 * v79;
          v83 = (v145 * v79) + v76;
          v84 = 8191.0;
          if (v83 <= 8191.0)
          {
            v84 = v83;
            if (v83 < 0.0)
            {
              v84 = 0.0;
            }
          }

          LOBYTE(v83) = v70[1];
          v85 = v39 * (LODWORD(v83) - v37);
          v86 = v75 + v85;
          if (v86 < 0.0)
          {
            v87 = 0.0;
          }

          else
          {
            v87 = v86;
          }

          if (v86 > 8191.0)
          {
            v87 = 8191.0;
          }

          v88 = v80 + v85;
          if ((v80 + v85) < 0.0)
          {
            v89 = 0.0;
          }

          else
          {
            v89 = v80 + v85;
          }

          if (v88 <= 8191.0)
          {
            v90 = v89;
          }

          else
          {
            v90 = 8191.0;
          }

          if ((v82 + v85) < 0.0)
          {
            v91 = 0.0;
          }

          else
          {
            v91 = v82 + v85;
          }

          v92 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          if ((v82 + v85) <= 8191.0)
          {
            v93 = v91;
          }

          else
          {
            v93 = 8191.0;
          }

          _H4 = *(result + v92);
          __asm { FCVT            S4, H4 }

          _H5 = *(result + llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(result + llroundf(fminf(fmaxf(v84, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v104 = ((v53 * _S5) + (_S4 * v51)) + (_S6 * v52);
          v105 = ((v55 * _S5) + (_S4 * v54)) + (_S6 * v56);
          _S6 = ((v58 * _S5) + (_S4 * v57)) + (_S6 * v59);
          LOWORD(_S4) = *(v60 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v60 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v60 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v110 = (((v47 * _S5) + (v46 * _S4)) + (v48 * _S6)) + v41;
          v111 = v43;
          if (v110 <= v43)
          {
            v111 = (((v47 * _S5) + (v46 * _S4)) + (v48 * _S6)) + v41;
            if (v110 < v41)
            {
              v111 = v41;
            }
          }

          _H7 = *(result + llroundf(fminf(fmaxf(v87, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H24 = *(result + llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H25 = *(result + llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v118 = ((v53 * _S24) + (_S7 * v51)) + (_S25 * v52);
          v119 = ((v55 * _S24) + (_S7 * v54)) + (_S25 * v56);
          v120 = ((v58 * _S24) + (_S7 * v57)) + (_S25 * v59);
          _H7 = *(v60 + 2 * llroundf(fminf(fmaxf(v118, 0.0), 8191.0)));
          _H24 = *(v60 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          _H25 = *(v60 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          *v71 = llroundf(v111);
          if (v72)
          {
            v124 = ((v42 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
            v125 = v45;
            if (v124 <= v45)
            {
              v125 = ((v42 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
              if (v124 < v44)
              {
                v125 = v44;
              }
            }

            v126 = ((v42 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v50);
            *v72 = llroundf(v125);
            v127 = v45;
            if (v126 <= v45)
            {
              v127 = v126;
              if (v126 < v44)
              {
                v127 = v44;
              }
            }

            v72[1] = llroundf(v127);
            v72 += 2;
          }

          __asm
          {
            FCVT            S4, H7
            FCVT            S5, H24
            FCVT            S6, H25
          }

          v130 = (((v47 * _S5) + (v46 * _S4)) + (v48 * _S6)) + v41;
          v131 = v43;
          if (v130 <= v43)
          {
            v131 = (((v47 * _S5) + (v46 * _S4)) + (v48 * _S6)) + v41;
            if (v130 < v41)
            {
              v131 = v41;
            }
          }

          v71[1] = llroundf(v131);
          if (v72)
          {
            v132 = ((v42 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
            v133 = v45;
            if (v132 <= v45)
            {
              v133 = ((v42 + (_S4 * v153)) + (_S5 * v152)) + (_S6 * v151);
              if (v132 < v44)
              {
                v133 = v44;
              }
            }

            _S4 = ((v42 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v50);
            *v72 = llroundf(v133);
            v134 = v45;
            if (_S4 <= v45)
            {
              v134 = _S4;
              if (_S4 < v44)
              {
                v134 = v44;
              }
            }

            v72[1] = llroundf(v134);
            v72 += 2;
          }

          v69 += 2;
          v70 += 2;
          v71 += 2;
        }

        while (v69 < v31);
      }

      v68 += v32;
      v67 += v33;
      v64 += v34;
      v63 += v35;
      ++v29;
    }

    while (v29 != v19);
  }

  if (v25 && v27)
  {
    if (v19 >= 1)
    {
      v135 = 0;
      v136 = (v25 + v24 * v13 + v11);
      do
      {
        result = memcpy(v28, v136, v16);
        v136 += v24;
        v28 += v26;
        ++v135;
      }

      while (v19 > v135);
    }
  }

  else if (v27 && v19 >= 1)
  {
    v137 = 0;
    v138 = vdupq_n_s64(v16 - 1);
    do
    {
      if (v16 >= 1)
      {
        v139 = 0;
        do
        {
          v140 = vdupq_n_s64(v139);
          v141 = vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v141, *v138.i8), *v138.i8).u8[0])
          {
            v28[v139] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v141, *&v138), *&v138).i8[1])
          {
            v28[v139 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v138, vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDDA0)))), *&v138).i8[2])
          {
            v28[v139 + 2] = -1;
            v28[v139 + 3] = -1;
          }

          v142 = vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v138, vuzp1_s16(v142, *&v138)).i32[1])
          {
            v28[v139 + 4] = -1;
          }

          if (vuzp1_s8(*&v138, vuzp1_s16(v142, *&v138)).i8[5])
          {
            v28[v139 + 5] = -1;
          }

          if (vuzp1_s8(*&v138, vuzp1_s16(*&v138, vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD80))))).i8[6])
          {
            v28[v139 + 6] = -1;
            v28[v139 + 7] = -1;
          }

          v143 = vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v143, *v138.i8), *v138.i8).u8[0])
          {
            v28[v139 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v143, *&v138), *&v138).i8[1])
          {
            v28[v139 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v138, vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD60)))), *&v138).i8[2])
          {
            v28[v139 + 10] = -1;
            v28[v139 + 11] = -1;
          }

          v144 = vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v138, vuzp1_s16(v144, *&v138)).i32[1])
          {
            v28[v139 + 12] = -1;
          }

          if (vuzp1_s8(*&v138, vuzp1_s16(v144, *&v138)).i8[5])
          {
            v28[v139 + 13] = -1;
          }

          if (vuzp1_s8(*&v138, vuzp1_s16(*&v138, vmovn_s64(vcgeq_u64(v138, vorrq_s8(v140, xmmword_18FECDD40))))).i8[6])
          {
            v28[v139 + 14] = -1;
            v28[v139 + 15] = -1;
          }

          v139 += 16;
        }

        while (((v16 + 15) & 0xFFFFFFFFFFFFFFF0) != v139);
      }

      v28 += v26;
      ++v137;
    }

    while (v19 > v137);
  }

  *(v10 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_444vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_444vf_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_422vf_rgb_444vf_neon_fp16_GCD(void *result, uint64_t a2, int16x8_t _Q0)
{
  v7 = result;
  v8 = *(result + 36);
  v9 = *result;
  v10 = *(result + 28) * a2 / v9 + *(result + 44);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v14 = v12 * a2 / v9;
  v15 = v14 + result[15];
  v16 = (v12 + v12 * a2) / v9;
  v17 = v16 - v14;
  v18 = result[7];
  v19 = result[8];
  v20 = result[16];
  v21 = result[17];
  v22 = v19[2];
  v23 = v18[2];
  v24 = v21[2];
  v25 = v20[2];
  v26 = (v25 + v24 * v15 + v11);
  if (v16 - v14 >= 1)
  {
    v27 = 0;
    v28 = result[19];
    v29 = *v19;
    v30 = v19[1];
    v31 = *v21;
    v32 = v21[1];
    v33 = v28[17].u16[2];
    v34 = v28[17].u16[3];
    v4.i32[0] = v28[3].i32[1];
    v35 = v28[18].u16[0];
    v36 = v28[18].u16[1];
    v37 = v28[18].u16[2];
    v38 = v28[18].u16[3];
    v139 = v7;
    v39 = v28[19].u16[0];
    _Q0.i32[0] = v28[4].i32[1];
    _S1 = v28[5].f32[0];
    _S2 = v28[5].f32[1];
    _S26 = v28[6].i32[0];
    _S27 = v28[6].f32[1];
    _S28 = v28[7].i32[0];
    _S29 = v28[7].i32[1];
    _S30 = v28[8].i32[0];
    _S31 = v28[8].i32[1];
    v48 = v33;
    *v5.i16 = v33;
    result = (v13 & 0xFFFFFFFE);
    v49 = v28[17].u32[0] / v28[16].u32[0];
    v50 = v34;
    _S19 = v49 * v28->f32[0];
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    v62 = vdupq_lane_s16(v5, 0);
    v157 = v62;
    __asm { FCVT            H8, S19 }

    *v62.i16 = v34;
    v23 = v18[2];
    v25 = v20[2];
    *v62.i16 = -*v62.i16;
    v4.i32[1] = v28[1].i32[0];
    *v3.f32 = vmul_n_f32(*v4.f32, v49);
    *v4.f32 = vmul_n_f32(v28[2], v49);
    _Q3 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v155 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v152 = vmulq_n_f16(v155, *v62.i16);
    v153 = _Q3;
    v64 = vmulq_n_f16(_Q3, *v62.i16);
    __asm { FCVT            H3, S0 }

    v150 = *_Q3.i16;
    v151 = v64;
    __asm { FCVT            H3, S1 }

    v149 = *_Q3.i16;
    *_Q3.i16 = v35;
    v65 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v36;
    v66 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v37;
    v67 = vdupq_lane_s16(*_Q3.i8, 0);
    v148 = v67;
    *v67.i16 = v38;
    v68 = vdupq_lane_s16(*v67.i8, 0);
    *v67.i16 = v39;
    v7 = v139;
    v69 = vdupq_lane_s16(*v67.i8, 0);
    v70 = *v20;
    v71 = v20[1];
    v72 = (v71 + v32 * v15 + v11);
    if (!v71)
    {
      v72 = 0;
    }

    v73 = v70 + v31 * v15 + v11;
    v74 = *v18;
    v75 = v18[1];
    v76 = (v75 + v30 * v10 + v8);
    if (!v75)
    {
      v76 = 0;
    }

    v77 = (v74 + v29 * v10 + v8);
    __asm { FCVT            H3, S2 }

    v147 = _H3;
    v79 = v28[6].f32[0];
    __asm { FCVT            H3, S26 }

    v145 = _H3;
    __asm { FCVT            H3, S27 }

    v144 = _H3;
    v82 = v28[7].f32[0];
    __asm { FCVT            H3, S28 }

    v143 = _H3;
    v84 = v28[7].f32[1];
    __asm { FCVT            H3, S29 }

    v142 = _H3;
    v86 = v28[8].f32[0];
    __asm { FCVT            H3, S30 }

    v141 = _H3;
    v88 = v28[8].f32[1];
    __asm { FCVT            H3, S31 }

    v140 = _H3;
    v156 = v3.f32[0];
    v90.i32[0] = v4.i32[1];
    v146 = v4.f32[1];
    v154 = v4.f32[0];
    do
    {
      if (v13 < 8)
      {
        v109 = 0;
        v94 = v72;
        v93 = v73;
        v108 = v76;
        v92 = v77;
      }

      else
      {
        v91 = 0;
        v92 = v77;
        v93 = v73;
        v94 = v72;
        do
        {
          v95 = *&v76[v91];
          *v96.i8 = vzip1_s8(v95, 0);
          v96.u64[1] = vzip2_s8(v95, 0);
          v97 = vcvtq_f16_u16(v96);
          v98 = vmlaq_f16(v152, v155, v97);
          v99 = vmlaq_f16(v151, v153, v97);
          v100 = vtrn2q_s16(v98, v98);
          v101 = vtrn1q_s16(v98, v98);
          v102 = vuzp1q_s16(v99, _Q0);
          *v102.i8 = vadd_f16(*v102.i8, *&vuzp2q_s16(v99, _Q0));
          v103 = vzip1q_s16(v102, v102);
          v104 = *v92++;
          *v62.i8 = vzip1_s8(v104, 0);
          v62.u64[1] = vzip2_s8(v104, 0);
          v90 = vsubq_f16(vcvtq_f16_u16(v62), v157);
          v105 = vmlaq_n_f16(v100, v90, _H8);
          v106 = vmlaq_n_f16(v103, v90, _H8);
          v107 = vmlaq_n_f16(v101, v90, _H8);
          v62.i32[0] = v148.i32[0];
          *v90.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v105, v150), v106, v149), v107, v147), v65), v148)));
          *v93 = v90.i64[0];
          v93 += 8;
          if (v94)
          {
            v62 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v105, v142), v106, v141), v107, v140);
            v158.val[0] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v66, v105, v145), v106, v144), v107, v143), v68), v69), v68), v69)));
            v90 = vcvtq_u16_f16(v62);
            v158.val[1] = vmovn_s16(v90);
            vst2_s8(v94, v158);
            v94 += 16;
          }

          v91 += 8;
        }

        while (v91 < v13 - 7);
        v108 = &v76[v91];
        v109 = v13 & 0xFFFFFFF8;
      }

      while (v109 < result)
      {
        v90.i8[0] = *v108;
        *&v110 = v90.u32[0] - v50;
        v62.i8[0] = v108[1];
        v111 = v62.u32[0] - v50;
        v112 = v3.f32[1] * v111;
        v113 = (v146 * v111) + (*&v110 * v154);
        v3.f32[0] = v156 * *&v110;
        LOBYTE(v110) = v92->i8[0];
        v114 = _S19 * (v110 - v48);
        v115 = (v3.f32[1] * v111) + v114;
        v116 = v114 + v113;
        *v90.i32 = v3.f32[0] + v114;
        v117 = (((_S1 * v116) + (*_Q0.i32 * v115)) + (_S2 * *v90.i32)) + v52;
        v118 = v54;
        if (v117 <= v54)
        {
          v118 = (((_S1 * v116) + (*_Q0.i32 * v115)) + (_S2 * *v90.i32)) + v52;
          if (v117 < v52)
          {
            v118 = v52;
          }
        }

        LOBYTE(v117) = v92->i8[1];
        *v93 = llroundf(v118);
        if (v94)
        {
          v119 = ((v53 + (v115 * v79)) + (v116 * _S27)) + (*v90.i32 * v82);
          v120 = v56;
          if (v119 <= v56)
          {
            v120 = ((v53 + (v115 * v79)) + (v116 * _S27)) + (*v90.i32 * v82);
            if (v119 < v55)
            {
              v120 = v55;
            }
          }

          v121 = ((v53 + (v115 * v84)) + (v116 * v86)) + (*v90.i32 * v88);
          *v94 = llroundf(v120);
          v122 = v56;
          if (v121 <= v56)
          {
            if (v121 < v55)
            {
              v122 = v55;
            }

            else
            {
              v122 = v121;
            }
          }

          v94[1] = llroundf(v122);
          v94 += 2;
        }

        v123 = _S19 * (LODWORD(v117) - v48);
        *v90.i32 = v112 + v123;
        v124 = v113 + v123;
        v125 = v3.f32[0] + v123;
        *v62.i32 = (((_S1 * v124) + (*_Q0.i32 * *v90.i32)) + (_S2 * (v3.f32[0] + v123))) + v52;
        v126 = v54;
        if (*v62.i32 <= v54)
        {
          v126 = *v62.i32;
          if (*v62.i32 < v52)
          {
            v126 = v52;
          }
        }

        *(v93 + 1) = llroundf(v126);
        if (v94)
        {
          *v62.i32 = ((v53 + (*v90.i32 * v79)) + (v124 * _S27)) + (v125 * v82);
          v127 = v56;
          if (*v62.i32 <= v56)
          {
            v127 = ((v53 + (*v90.i32 * v79)) + (v124 * _S27)) + (v125 * v82);
            if (*v62.i32 < v55)
            {
              v127 = v55;
            }
          }

          *v90.i32 = ((v53 + (*v90.i32 * v84)) + (v124 * v86)) + (v125 * v88);
          *v94 = llroundf(v127);
          v128 = v56;
          if (*v90.i32 <= v56)
          {
            v128 = *v90.i32;
            if (*v90.i32 < v55)
            {
              v128 = v55;
            }
          }

          v94[1] = llroundf(v128);
          v94 += 2;
        }

        v109 += 2;
        v108 += 2;
        v92 = (v92 + 2);
        v93 += 2;
      }

      v77 = (v77 + v29);
      v76 += v30;
      v73 += v31;
      v72 += v32;
      ++v27;
    }

    while (v27 != v17);
  }

  if (v23 && v25)
  {
    if (v17 >= 1)
    {
      v129 = 0;
      v130 = (v23 + v22 * v10 + v8);
      do
      {
        result = memcpy(v26, v130, v13);
        v130 += v22;
        v26 += v24;
        ++v129;
      }

      while (v17 > v129);
    }
  }

  else if (v25 && v17 >= 1)
  {
    v131 = 0;
    v132 = vdupq_n_s64(v13 - 1);
    do
    {
      if (v13 >= 1)
      {
        v133 = 0;
        do
        {
          v134 = vdupq_n_s64(v133);
          v135 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v135, *v132.i8), *v132.i8).u8[0])
          {
            v26[v133] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v135, *&v132), *&v132).i8[1])
          {
            v26[v133 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v132, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDDA0)))), *&v132).i8[2])
          {
            v26[v133 + 2] = -1;
            v26[v133 + 3] = -1;
          }

          v136 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v132, vuzp1_s16(v136, *&v132)).i32[1])
          {
            v26[v133 + 4] = -1;
          }

          if (vuzp1_s8(*&v132, vuzp1_s16(v136, *&v132)).i8[5])
          {
            v26[v133 + 5] = -1;
          }

          if (vuzp1_s8(*&v132, vuzp1_s16(*&v132, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD80))))).i8[6])
          {
            v26[v133 + 6] = -1;
            v26[v133 + 7] = -1;
          }

          v137 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v137, *v132.i8), *v132.i8).u8[0])
          {
            v26[v133 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v137, *&v132), *&v132).i8[1])
          {
            v26[v133 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v132, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD60)))), *&v132).i8[2])
          {
            v26[v133 + 10] = -1;
            v26[v133 + 11] = -1;
          }

          v138 = vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v132, vuzp1_s16(v138, *&v132)).i32[1])
          {
            v26[v133 + 12] = -1;
          }

          if (vuzp1_s8(*&v132, vuzp1_s16(v138, *&v132)).i8[5])
          {
            v26[v133 + 13] = -1;
          }

          if (vuzp1_s8(*&v132, vuzp1_s16(*&v132, vmovn_s64(vcgeq_u64(v132, vorrq_s8(v134, xmmword_18FECDD40))))).i8[6])
          {
            v26[v133 + 14] = -1;
            v26[v133 + 15] = -1;
          }

          v133 += 16;
        }

        while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v133);
      }

      v26 += v24;
      ++v131;
    }

    while (v17 > v131);
  }

  *(v7 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_444vf(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = v28 + 1 + v31, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v72;
      ++v73;
      ++v29;
      ++v28;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (v40 + v31 + *a8 * v51 > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 2 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_444vf_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

void *vt_Copy_422vf_rgb_444vf_GCD(void *a1, uint64_t a2, double a3, double a4, float a5)
{
  v13 = *(a1 + 36);
  v14 = *a1;
  v15 = *(a1 + 28) * a2 / v14 + *(a1 + 44);
  v16 = a1[14];
  v18 = a1[12];
  v17 = a1[13];
  v19 = v17 * a2 / v14;
  v20 = v19 + a1[15];
  v21 = (v17 + v17 * a2) / v14 - v19;
  v22 = a1[7];
  v23 = a1[8];
  result = a1[16];
  v25 = a1[17];
  v26 = v23[2];
  v27 = v22[2];
  v28 = v25[2];
  v29 = result[2];
  v30 = (v29 + v28 * v20 + v16);
  if (v21 >= 1)
  {
    v31 = 0;
    v32 = a1[19];
    v33 = v18 & 0xFFFFFFFE;
    v34 = *v23;
    v35 = v23[1];
    v36 = *v25;
    v37 = v25[1];
    *&v38 = *(v32 + 136);
    LOWORD(a5) = *(v32 + 140);
    v39 = *&v38 / *(v32 + 128);
    v40 = LODWORD(a5);
    LOWORD(v38) = *(v32 + 142);
    v41 = v38;
    v42 = v39 * *v32;
    v43 = v39 * *(v32 + 8);
    v44 = v39 * *(v32 + 16);
    v45 = v39 * *(v32 + 20);
    v46 = *(v32 + 28);
    v47 = v39 * v46;
    LOWORD(v46) = *(v32 + 144);
    v48 = LODWORD(v46);
    LOWORD(v6) = *(v32 + 146);
    v49 = v6;
    LOWORD(v7) = *(v32 + 148);
    v50 = v7;
    LOWORD(v8) = *(v32 + 150);
    v51 = v8;
    LOWORD(v9) = *(v32 + 152);
    v52 = v9;
    v53 = *(v32 + 36);
    v54 = *(v32 + 40);
    v55 = *(v32 + 44);
    v56 = *(v32 + 48);
    v57 = *(v32 + 52);
    v58 = *(v32 + 56);
    v59 = *(v32 + 60);
    v60 = *(v32 + 64);
    v61 = *(v32 + 68);
    v63 = *result;
    v62 = result[1];
    result = (v62 + v37 * v20 + v16);
    if (!v62)
    {
      result = 0;
    }

    v64 = (v63 + v36 * v20 + v16);
    v66 = *v22;
    v65 = v22[1];
    v67 = v65 + v35 * v15 + v13;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v34 * v15 + v13);
    do
    {
      if (v33 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v64;
        v72 = result;
        do
        {
          LOBYTE(v10) = *(v67 + v69);
          *&v73 = LODWORD(v10);
          v74 = *&v73 - v41;
          LOBYTE(v73) = *(v67 + v69 + 1);
          v75 = v73 - v41;
          v76 = v43 * v75;
          v77 = (v45 * v75) + (v74 * v44);
          v78 = v47 * v74;
          LOBYTE(v5) = *v70;
          v79 = v42 * (LODWORD(v5) - v40);
          v80 = v76 + v79;
          v81 = v79 + v77;
          v82 = v78 + v79;
          v83 = (((v54 * (v79 + v77)) + (v53 * (v76 + v79))) + (v55 * (v78 + v79))) + v48;
          v84 = v50;
          if (v83 <= v50)
          {
            v84 = v83;
            if (v83 < v48)
            {
              v84 = v48;
            }
          }

          LOBYTE(v83) = v70[1];
          *v71 = llroundf(v84);
          if (v72)
          {
            v85 = ((v49 + (v80 * v56)) + (v81 * v57)) + (v82 * v58);
            v86 = v52;
            if (v85 <= v52)
            {
              v86 = ((v49 + (v80 * v56)) + (v81 * v57)) + (v82 * v58);
              if (v85 < v51)
              {
                v86 = v51;
              }
            }

            v87 = ((v49 + (v80 * v59)) + (v81 * v60)) + (v82 * v61);
            *v72 = llroundf(v86);
            v88 = v52;
            if (v87 <= v52)
            {
              if (v87 < v51)
              {
                v88 = v51;
              }

              else
              {
                v88 = v87;
              }
            }

            v72[1] = llroundf(v88);
            v72 += 2;
          }

          v89 = v42 * (LODWORD(v83) - v40);
          v10 = v76 + v89;
          v90 = v77 + v89;
          v91 = v78 + v89;
          v92 = (((v54 * v90) + (v53 * v10)) + (v55 * v91)) + v48;
          v5 = v50;
          if (v92 <= v50)
          {
            v5 = (((v54 * v90) + (v53 * v10)) + (v55 * v91)) + v48;
            if (v92 < v48)
            {
              v5 = v48;
            }
          }

          v71[1] = llroundf(v5);
          if (v72)
          {
            v93 = ((v49 + (v10 * v56)) + (v90 * v57)) + (v91 * v58);
            v5 = v52;
            if (v93 <= v52)
            {
              v5 = ((v49 + (v10 * v56)) + (v90 * v57)) + (v91 * v58);
              if (v93 < v51)
              {
                v5 = v51;
              }
            }

            v10 = ((v49 + (v10 * v59)) + (v90 * v60)) + (v91 * v61);
            *v72 = llroundf(v5);
            v94 = v52;
            if (v10 <= v52)
            {
              v94 = v10;
              if (v10 < v51)
              {
                v94 = v51;
              }
            }

            v72[1] = llroundf(v94);
            v72 += 2;
          }

          v69 += 2;
          v70 += 2;
          v71 += 2;
        }

        while (v69 < v33);
      }

      v68 += v34;
      v67 += v35;
      v64 += v36;
      result = (result + v37);
      ++v31;
    }

    while (v31 != v21);
  }

  if (v27 && v29)
  {
    if (v21 >= 1)
    {
      v95 = 0;
      v96 = (v27 + v26 * v15 + v13);
      do
      {
        result = memcpy(v30, v96, v18);
        v96 += v26;
        v30 += v28;
        ++v95;
      }

      while (v21 > v95);
    }
  }

  else if (v29 && v21 >= 1)
  {
    v97 = 0;
    v98 = vdupq_n_s64(v18 - 1);
    do
    {
      if (v18 >= 1)
      {
        v99 = 0;
        do
        {
          v100 = vdupq_n_s64(v99);
          v101 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v101, *v98.i8), *v98.i8).u8[0])
          {
            v30[v99] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v101, *&v98), *&v98).i8[1])
          {
            v30[v99 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDDA0)))), *&v98).i8[2])
          {
            v30[v99 + 2] = -1;
            v30[v99 + 3] = -1;
          }

          v102 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v98, vuzp1_s16(v102, *&v98)).i32[1])
          {
            v30[v99 + 4] = -1;
          }

          if (vuzp1_s8(*&v98, vuzp1_s16(v102, *&v98)).i8[5])
          {
            v30[v99 + 5] = -1;
          }

          if (vuzp1_s8(*&v98, vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD80))))).i8[6])
          {
            v30[v99 + 6] = -1;
            v30[v99 + 7] = -1;
          }

          v103 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v103, *v98.i8), *v98.i8).u8[0])
          {
            v30[v99 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v103, *&v98), *&v98).i8[1])
          {
            v30[v99 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD60)))), *&v98).i8[2])
          {
            v30[v99 + 10] = -1;
            v30[v99 + 11] = -1;
          }

          v104 = vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v98, vuzp1_s16(v104, *&v98)).i32[1])
          {
            v30[v99 + 12] = -1;
          }

          if (vuzp1_s8(*&v98, vuzp1_s16(v104, *&v98)).i8[5])
          {
            v30[v99 + 13] = -1;
          }

          if (vuzp1_s8(*&v98, vuzp1_s16(*&v98, vmovn_s64(vcgeq_u64(v98, vorrq_s8(v100, xmmword_18FECDD40))))).i8[6])
          {
            v30[v99 + 14] = -1;
            v30[v99 + 15] = -1;
          }

          v99 += 16;
        }

        while (((v18 + 15) & 0xFFFFFFFFFFFFFFF0) != v99);
      }

      v30 += v28;
      ++v97;
    }

    while (v21 > v97);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_neon_fp16_GCD(void *a1, uint64_t a2, double a3, float32x4_t a4, int16x4_t a5)
{
  v6 = *a1;
  v213 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
  v214 = *(a1 + 36);
  v7 = a1[14];
  v9 = a1[12];
  v8 = a1[13];
  v10 = v8 * a2 / v6;
  v11 = v10 + a1[15];
  v12 = (v8 + v8 * a2) / v6 - v10;
  v13 = a1[7];
  v14 = a1[8];
  v16 = a1[16];
  result = a1[17];
  v212 = v14[2];
  v216 = v13[2];
  v217 = result[2];
  v215 = v16[2];
  v17 = (v215 + v217 * v11 + 2 * v7);
  if (v12 >= 1)
  {
    v18 = 0;
    v19 = a1[19];
    v20 = *v14;
    v21 = v14[1];
    v22 = *result;
    result = result[1];
    v23 = v19[17].u16[2];
    v24 = v19[17].u16[3];
    a5.i32[0] = v19->i32[0];
    v25.i32[0] = v19[3].i32[1];
    v26 = v19[18].u16[0];
    v27 = v19[18].u16[1];
    v28 = v19[18].u16[2];
    v29 = v19[18].u16[3];
    v30 = v19[19].u16[0];
    _S21 = v19[4].f32[1];
    _S6 = v19[6].i32[1];
    _S7 = v19[7].i32[0];
    v34 = &v19[2068] + 4;
    a4.f32[0] = 8191.0 / v19[16].u32[0];
    v35 = v23;
    v36 = v24;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v268 = v29;
    v40 = v30;
    v41 = &v19[20] + 4;
    *a5.i16 = v23;
    v42 = &v19[4116] + 4;
    v269 = a4.f32[0] * v19->f32[0];
    __asm { FCVT            H8, S20 }

    v231 = _H8;
    v262 = vdupq_lane_s16(a5, 0);
    v48 = -v24;
    v25.i32[1] = v19[1].i32[0];
    *v5.f32 = vmul_n_f32(v25, a4.f32[0]);
    *a4.f32 = vmul_n_f32(v19[2], a4.f32[0]);
    v260 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v257 = vmulq_n_f16(v260, v48);
    v258 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    _Q0 = vmulq_n_f16(v258, v48);
    v256 = _Q0;
    __asm { FCVT            H0, S21 }

    v255 = *_Q0.i16;
    v271 = v19[5].f32[0];
    __asm { FCVT            H0, S3 }

    v254 = *_Q0.i16;
    v270 = v19[5].f32[1];
    __asm { FCVT            H0, S4 }

    v253 = *_Q0.i16;
    v267 = v19[6].f32[0];
    __asm { FCVT            H0, S5 }

    v227 = *_Q0.i16;
    *_Q0.i16 = v26;
    v50 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v27;
    v51 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v28;
    v52 = vdupq_lane_s16(*_Q0.i8, 0);
    v251 = v52;
    v252 = v50;
    *v52.i16 = v29;
    v53 = vdupq_lane_s16(*v52.i8, 0);
    v225 = v53;
    v226 = v51;
    *v53.i16 = v30;
    v224 = vdupq_lane_s16(*v53.i8, 0);
    v54 = v19[16].u8[4];
    if (v54 >= 0x11)
    {
      v55 = 0;
    }

    else
    {
      v55 = 16 - v54;
    }

    v57 = *v16;
    v56 = v16[1];
    v58 = v56 + result * v11 + 2 * v7;
    if (!v56)
    {
      v58 = 0;
    }

    v59 = v57 + v22 * v11 + 2 * v7;
    v62 = v13;
    v60 = *v13;
    v61 = v62[1];
    v63 = (v61 + v21 * v213 + v214);
    if (!v61)
    {
      v63 = 0;
    }

    v64 = (v60 + v20 * v213 + v214);
    _S23 = v19[8].f32[1];
    _S25 = v19[9].f32[1];
    _S26 = v19[10].f32[0];
    _S3 = v19[13].f32[1];
    _S4 = v19[14].f32[0];
    v266 = v19[6].f32[1];
    __asm { FCVT            H5, S6 }

    v223 = _H5;
    v265 = v19[7].f32[0];
    __asm { FCVT            H5, S7 }

    v264 = v19[7].f32[1];
    __asm { FCVT            H0, S0 }

    v222 = _H0;
    _S11 = v19[14].f32[1];
    _S13 = v19[15].f32[0];
    v263 = v19[8].f32[0];
    __asm { FCVT            H0, S2 }

    v221 = _H0;
    __asm { FCVT            H0, S23 }

    v220 = _H0;
    __asm { FCVT            H0, S3 }

    v243 = _H0;
    __asm { FCVT            H0, S4 }

    v242 = _H0;
    __asm { FCVT            H0, S11 }

    v241 = _H0;
    __asm { FCVT            H0, S13 }

    v240 = _H0;
    v250 = v19[9].f32[0];
    __asm { FCVT            H0, S24 }

    v239 = _H0;
    __asm { FCVT            H0, S25 }

    v238 = _H0;
    __asm { FCVT            H0, S26 }

    v237 = _H0;
    v249 = v19[10].f32[1];
    __asm { FCVT            H0, S27 }

    v236 = _H0;
    v248 = v19[11].f32[0];
    __asm { FCVT            H0, S31 }

    v235 = _H0;
    v247 = v19[11].f32[1];
    __asm { FCVT            H0, S9 }

    v234 = _H0;
    v246 = v19[12].f32[0];
    __asm { FCVT            H0, S28 }

    v233 = _H0;
    v245 = v19[12].f32[1];
    __asm { FCVT            H0, S29 }

    v232 = _H0;
    v89 = vdupq_n_s16(v55);
    v261 = v5.f32[0];
    v259 = a4.f32[0];
    _Q0.i16[1] = a4.i16[3];
    v229 = a4.f32[1];
    v230 = v5.f32[1];
    v90.i64[0] = 0x9000900090009000;
    v90.i64[1] = 0x9000900090009000;
    v244 = v19[13].f32[0];
    __asm { FCVT            H0, S10 }

    v228 = *_Q0.i16;
    v92 = _S25;
    v93 = _S26;
    do
    {
      if (v9 < 8)
      {
        v130 = 0;
        v97 = v58;
        v96 = v59;
        v129 = v63;
        v95 = v64;
      }

      else
      {
        v94 = 0;
        v95 = v64;
        v96 = v59;
        v97 = v58;
        do
        {
          v98 = *&v63[v94];
          *v99.i8 = vzip1_s8(v98, 0);
          v99.u64[1] = vzip2_s8(v98, 0);
          v100 = vcvtq_f16_u16(v99);
          v101 = vmlaq_f16(v257, v260, v100);
          v102 = vmlaq_f16(v256, v258, v100);
          v103 = vtrn2q_s16(v101, v101);
          v104 = vtrn1q_s16(v101, v101);
          v105 = vuzp1q_s16(v102, v104);
          *v105.i8 = vadd_f16(*v105.i8, *&vuzp2q_s16(v102, v104));
          v106 = *v95++;
          *v107.i8 = vzip1_s8(v106, 0);
          v107.u64[1] = vzip2_s8(v106, 0);
          v108 = vsubq_f16(vcvtq_f16_u16(v107), v262);
          v109 = vmlaq_n_f16(vzip1q_s16(v105, v105), v108, v231);
          v110 = vmlaq_n_f16(v104, v108, v231);
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v103, v108, v231), 0), v90));
          v112.i16[0] = *&v41[2 * v111.u16[0]];
          v112.i16[1] = *&v41[2 * v111.u16[1]];
          v112.i16[2] = *&v41[2 * v111.u16[2]];
          v112.i16[3] = *&v41[2 * v111.u16[3]];
          v112.i16[4] = *&v41[2 * v111.u16[4]];
          v112.i16[5] = *&v41[2 * v111.u16[5]];
          v112.i16[6] = *&v41[2 * v111.u16[6]];
          v112.i16[7] = *&v41[2 * v111.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v90));
          v114.i16[0] = *&v41[2 * v113.u16[0]];
          v114.i16[1] = *&v41[2 * v113.u16[1]];
          v114.i16[2] = *&v41[2 * v113.u16[2]];
          v114.i16[3] = *&v41[2 * v113.u16[3]];
          v114.i16[4] = *&v41[2 * v113.u16[4]];
          v114.i16[5] = *&v41[2 * v113.u16[5]];
          v114.i16[6] = *&v41[2 * v113.u16[6]];
          v114.i16[7] = *&v41[2 * v113.u16[7]];
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v110, 0), v90));
          v110.i16[0] = *&v41[2 * v115.u16[0]];
          v110.i16[1] = *&v41[2 * v115.u16[1]];
          v110.i16[2] = *&v41[2 * v115.u16[2]];
          v110.i16[3] = *&v41[2 * v115.u16[3]];
          v110.i16[4] = *&v41[2 * v115.u16[4]];
          v110.i16[5] = *&v41[2 * v115.u16[5]];
          v110.i16[6] = *&v41[2 * v115.u16[6]];
          v110.i16[7] = *&v41[2 * v115.u16[7]];
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v112, v243), v114, v242), v110, v241), vmaxq_f16(vmaxq_f16(v112, v114), v110), v240), 0), v90));
          v103.i16[0] = *&v34[2 * v116.u16[0]];
          v103.i16[1] = *&v34[2 * v116.u16[1]];
          v103.i16[2] = *&v34[2 * v116.u16[2]];
          v103.i16[3] = *&v34[2 * v116.u16[3]];
          v103.i16[4] = *&v34[2 * v116.u16[4]];
          v103.i16[5] = *&v34[2 * v116.u16[5]];
          v103.i16[6] = *&v34[2 * v116.u16[6]];
          v103.i16[7] = *&v34[2 * v116.u16[7]];
          v117 = vmulq_f16(v112, v103);
          v118 = vmulq_f16(v114, v103);
          v119 = vmulq_f16(v110, v103);
          v120 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v236), v118, v235), v119, v234);
          v121 = vmulq_n_f16(v119, v228);
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v239), v118, v238), v119, v237), 0), v90));
          v123.i16[0] = *&v42[2 * v122.u16[0]];
          v123.i16[1] = *&v42[2 * v122.u16[1]];
          v123.i16[2] = *&v42[2 * v122.u16[2]];
          v123.i16[3] = *&v42[2 * v122.u16[3]];
          v123.i16[4] = *&v42[2 * v122.u16[4]];
          v123.i16[5] = *&v42[2 * v122.u16[5]];
          v123.i16[6] = *&v42[2 * v122.u16[6]];
          v123.i16[7] = *&v42[2 * v122.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v90));
          _Q0.i16[0] = *&v42[2 * v124.u16[0]];
          _Q0.i16[1] = *&v42[2 * v124.u16[1]];
          _Q0.i16[2] = *&v42[2 * v124.u16[2]];
          _Q0.i16[3] = *&v42[2 * v124.u16[3]];
          _Q0.i16[4] = *&v42[2 * v124.u16[4]];
          _Q0.i16[5] = *&v42[2 * v124.u16[5]];
          _Q0.i16[6] = *&v42[2 * v124.u16[6]];
          _Q0.i16[7] = *&v42[2 * v124.u16[7]];
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v121, v118, v232), v117, v233), 0), v90));
          v126.i16[0] = *&v42[2 * v125.u16[0]];
          v126.i16[1] = *&v42[2 * v125.u16[1]];
          v126.i16[2] = *&v42[2 * v125.u16[2]];
          v126.i16[3] = *&v42[2 * v125.u16[3]];
          v126.i16[4] = *&v42[2 * v125.u16[4]];
          v126.i16[5] = *&v42[2 * v125.u16[5]];
          v126.i16[6] = *&v42[2 * v125.u16[6]];
          v126.i16[7] = *&v42[2 * v125.u16[7]];
          *v96++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v252, v123, v255), _Q0, v254), v126, v253), v252), v251)), v89);
          if (v97)
          {
            v127 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v226, v123, v222), _Q0, v221), v126, v220);
            _Q0 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v226, v123, v227), _Q0, v223), v126, _H5), v225), v224), v225), v224)), v89);
            v128 = vshlq_u16(vcvtq_u16_f16(v127), v89);
            vst2q_s16(v97, *_Q0.i8);
            v97 += 16;
          }

          v94 += 8;
        }

        while (v94 < v9 - 7);
        v129 = &v63[v94];
        v130 = v9 & 0xFFFFFFF8;
      }

      while (v130 < (v9 & 0xFFFFFFFE))
      {
        v131 = _S21;
        _Q0.i8[0] = v129[1];
        v132 = _Q0.u32[0] - v36;
        v133 = LODWORD(v230);
        v134 = v230 * v132;
        LOBYTE(v133) = v95->i8[0];
        v135 = v269 * (v133 - v35);
        v136 = (v230 * v132) + v135;
        v137 = 8191.0;
        if (v136 <= 8191.0)
        {
          v137 = (v230 * v132) + v135;
          if (v136 < 0.0)
          {
            v137 = 0.0;
          }
        }

        LOBYTE(v136) = *v129;
        v138 = v36;
        v139 = LODWORD(v136) - v36;
        v140 = (v229 * v132) + (v139 * v259);
        v141 = 8191.0;
        if ((v135 + v140) <= 8191.0)
        {
          v141 = v135 + v140;
          if ((v135 + v140) < 0.0)
          {
            v141 = 0.0;
          }
        }

        v142 = LODWORD(v261);
        v143 = v261 * v139;
        v144 = v143 + v135;
        v145 = (v143 + v135) <= 8191.0;
        v146 = 8191.0;
        if (v145)
        {
          v146 = v144;
          if (v144 < 0.0)
          {
            v146 = 0.0;
          }
        }

        LOBYTE(v142) = v95->i8[1];
        v147 = v269 * (v142 - v35);
        v148 = v134 + v147;
        v145 = (v134 + v147) <= 8191.0;
        v149 = 8191.0;
        if (v145)
        {
          v149 = v148;
          if (v148 < 0.0)
          {
            v149 = 0.0;
          }
        }

        v150 = v140 + v147;
        v151 = 8191.0;
        if (v150 <= 8191.0)
        {
          v151 = v150;
          if (v150 < 0.0)
          {
            v151 = 0.0;
          }
        }

        v152 = v143 + v147;
        v153 = 8191.0;
        if (v152 <= 8191.0)
        {
          v153 = v152;
          if (v152 < 0.0)
          {
            v153 = 0.0;
          }
        }

        _H0 = *&v41[2 * llroundf(fminf(fmaxf(v137, 0.0), 8191.0))];
        __asm { FCVT            S0, H0 }

        _H1 = *&v41[2 * llroundf(fminf(fmaxf(v141, 0.0), 8191.0))];
        __asm { FCVT            S1, H1 }

        _H2 = *&v41[2 * llroundf(fminf(fmaxf(v146, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        v160 = (((_S4 * _S1) + (_S3 * _S0)) + (_S11 * _S2)) + (_S13 * fmaxf(_S0, fmaxf(_S1, _S2)));
        v161 = 8191.0;
        if (v160 <= 8191.0)
        {
          v161 = v160;
          if (v160 < 0.0)
          {
            v161 = 0.0;
          }
        }

        _H7 = *&v41[2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0))];
        __asm { FCVT            S16, H7 }

        _H7 = *&v41[2 * llroundf(fminf(fmaxf(v151, 0.0), 8191.0))];
        __asm { FCVT            S20, H7 }

        _H6 = *&v41[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        __asm { FCVT            S6, H6 }

        _H21 = *&v34[2 * llroundf(v161)];
        v169 = (((_S4 * _S20) + (_S3 * _S16)) + (_S11 * _S6)) + (_S13 * fmaxf(_S16, fmaxf(_S20, _S6)));
        v170 = 8191.0;
        if (v169 <= 8191.0)
        {
          v170 = v169;
          if (v169 < 0.0)
          {
            v170 = 0.0;
          }
        }

        __asm { FCVT            S21, H21 }

        v172 = _S0 * _S21;
        v173 = _S1 * _S21;
        v174 = _S2 * _S21;
        _H7 = *&v34[2 * llroundf(v170)];
        __asm { FCVT            S7, H7 }

        v177 = _S16 * _S7;
        v178 = _S20 * _S7;
        _S6 = _S6 * _S7;
        v180 = ((v92 * v173) + (v172 * v250)) + (v174 * v93);
        v181 = ((v248 * v173) + (v172 * v249)) + (v174 * v247);
        _S0 = ((v245 * v173) + (v172 * v246)) + (v174 * v244);
        v183 = ((v92 * v178) + (v177 * v250)) + (_S6 * v93);
        v184 = ((v248 * v178) + (v177 * v249)) + (_S6 * v247);
        v185 = llroundf(fminf(fmaxf(v180, 0.0), 8191.0));
        v186 = ((v245 * v178) + (v177 * v246)) + (_S6 * v244);
        LOWORD(_S6) = *&v42[2 * v185];
        __asm { FCVT            S20, H6 }

        LOWORD(_S6) = *&v42[2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0))];
        __asm { FCVT            S24, H6 }

        LOWORD(_S0) = *&v42[2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0))];
        __asm { FCVT            S6, H0 }

        _H0 = *&v42[2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0))];
        _H1 = *&v42[2 * llroundf(fminf(fmaxf(v184, 0.0), 8191.0))];
        _H2 = *&v42[2 * llroundf(fminf(fmaxf(v186, 0.0), 8191.0))];
        _S21 = v131;
        v193 = (((v271 * _S24) + (v131 * _S20)) + (v270 * _S6)) + v37;
        v194 = v28;
        if (v193 <= v39)
        {
          v194 = (((v271 * _S24) + (v131 * _S20)) + (v270 * _S6)) + v37;
          if (v193 < v37)
          {
            v194 = v37;
          }
        }

        v96->i16[0] = llroundf(v194) << v55;
        if (v97)
        {
          v195 = ((v38 + (_S20 * v267)) + (_S24 * v266)) + (_S6 * v265);
          v196 = v40;
          if (v195 <= v40)
          {
            v196 = ((v38 + (_S20 * v267)) + (_S24 * v266)) + (_S6 * v265);
            if (v195 < v268)
            {
              v196 = v268;
            }
          }

          v197 = ((v38 + (_S20 * v264)) + (_S24 * v263)) + (_S6 * _S23);
          *v97 = llroundf(v196) << v55;
          v198 = v40;
          if (v197 <= v40)
          {
            v198 = v197;
            if (v197 < v268)
            {
              v198 = v268;
            }
          }

          v97[1] = llroundf(v198) << v55;
          v97 += 2;
        }

        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
          FCVT            S2, H2
        }

        v201 = (((v271 * _S1) + (v131 * *_Q0.i32)) + (v270 * _S2)) + v37;
        v202 = v28;
        v36 = v138;
        if (v201 <= v39)
        {
          v202 = (((v271 * _S1) + (v131 * *_Q0.i32)) + (v270 * _S2)) + v37;
          if (v201 < v37)
          {
            v202 = v37;
          }
        }

        v96->i16[1] = llroundf(v202) << v55;
        if (v97)
        {
          v203 = ((v38 + (*_Q0.i32 * v267)) + (_S1 * v266)) + (_S2 * v265);
          v204 = v40;
          if (v203 <= v40)
          {
            v204 = ((v38 + (*_Q0.i32 * v267)) + (_S1 * v266)) + (_S2 * v265);
            if (v203 < v268)
            {
              v204 = v268;
            }
          }

          *_Q0.i32 = ((v38 + (*_Q0.i32 * v264)) + (_S1 * v263)) + (_S2 * _S23);
          *v97 = llroundf(v204) << v55;
          v205 = v40;
          if (*_Q0.i32 <= v40)
          {
            v205 = *_Q0.i32;
            if (*_Q0.i32 < v268)
            {
              v205 = v268;
            }
          }

          v97[1] = llroundf(v205) << v55;
          v97 += 2;
        }

        v130 += 2;
        v129 += 2;
        v95 = (v95 + 2);
        v96 = (v96 + 4);
      }

      v64 = (v64 + v20);
      v63 += v21;
      v59 += v22;
      v58 += result;
      ++v18;
    }

    while (v18 != v12);
  }

  if (v216 && v215)
  {
    if (v12 >= 1)
    {
      v206 = 0;
      v207 = (v216 + v212 * v213 + v214);
      do
      {
        if (v9 >= 1)
        {
          v208 = v9;
          v209 = v17;
          v210 = v207;
          do
          {
            v211 = *v210++;
            *v209++ = v211 | (v211 << 8);
            --v208;
          }

          while (v208);
        }

        v207 += v212;
        v17 += v217;
        ++v206;
      }

      while (v206 != v12);
    }
  }

  else if (v215 && v12 >= 1)
  {
    do
    {
      if (v9 >= 1)
      {
        result = memset(v17, 255, 2 * v9);
      }

      v17 += v217;
      --v12;
    }

    while (v12);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Tone_Mat_TRC_xf444_GCD(void *a1, uint64_t a2, double a3, float a4, double a5, float a6)
{
  v11 = *(a1 + 36);
  v12 = *a1;
  v13 = *(a1 + 28) * a2 / v12 + *(a1 + 44);
  v14 = a1[14];
  v16 = a1[12];
  v15 = a1[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + a1[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = a1[7];
  v21 = a1[8];
  v23 = a1[16];
  result = a1[17];
  v24 = v21[2];
  v160 = v20[2];
  v25 = result[2];
  v26 = v23[2];
  v27 = (v26 + v25 * v18 + 2 * v14);
  if (v19 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = v16 & 0xFFFFFFFE;
    v31 = *v21;
    v32 = v21[1];
    v33 = *result;
    result = result[1];
    LOWORD(a4) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    LOWORD(v6) = *(v29 + 144);
    LOWORD(v7) = *(v29 + 146);
    LOWORD(v8) = *(v29 + 148);
    v34 = 8191.0 / *(v29 + 128);
    v35 = LODWORD(a4);
    v36 = LODWORD(a6);
    v37 = v34 * *v29;
    v165 = v34 * *(v29 + 16);
    v166 = v34 * *(v29 + 8);
    v38 = v34 * *(v29 + 20);
    *&v39 = v34 * *(v29 + 28);
    v163 = *&v39;
    v164 = v38;
    v40 = v6;
    v41 = v7;
    v42 = v8;
    LOWORD(v39) = *(v29 + 150);
    v43 = v39;
    LOWORD(v39) = *(v29 + 152);
    v44 = v39;
    v45 = *(v29 + 36);
    v173 = v43;
    v174 = *(v29 + 40);
    v46 = *(v29 + 44);
    v171 = *(v29 + 52);
    v172 = *(v29 + 48);
    v169 = *(v29 + 60);
    v170 = *(v29 + 56);
    v167 = *(v29 + 68);
    v168 = *(v29 + 64);
    v47 = *(v29 + 76);
    v48 = *(v29 + 80);
    v161 = v47;
    v162 = *(v29 + 72);
    v49 = *(v29 + 84);
    v50 = *(v29 + 88);
    v51 = *(v29 + 92);
    v52 = *(v29 + 96);
    v53 = *(v29 + 100);
    v54 = *(v29 + 104);
    v55 = v29 + 164;
    v56 = v29 + 16548;
    v57 = *(v29 + 132);
    if (v57 >= 0x11)
    {
      v58 = 0;
    }

    else
    {
      v58 = 16 - v57;
    }

    v59 = v23[1];
    _ZF = v59 == 0;
    v61 = v59 + result * v18;
    v62 = *v23 + v33 * v18;
    v63 = v29 + 32932;
    v64 = (v61 + 2 * v14);
    if (_ZF)
    {
      v64 = 0;
    }

    v65 = (v62 + 2 * v14);
    v67 = *v20;
    v66 = v20[1];
    v68 = v66 + v32 * v13 + v11;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = (v67 + v31 * v13 + v11);
    v71 = *(v29 + 108);
    v70 = *(v29 + 112);
    v72 = *(v29 + 116);
    v73 = *(v29 + 120);
    do
    {
      if (v30 >= 1)
      {
        v74 = 0;
        v75 = v69;
        v76 = v65;
        v77 = v64;
        do
        {
          LOBYTE(v47) = *(v68 + v74 + 1);
          v78 = LODWORD(v47) - v36;
          v79 = LODWORD(v166);
          v80 = v166 * v78;
          LOBYTE(v79) = *v75;
          v81 = v37 * (v79 - v35);
          v82 = (v166 * v78) + v81;
          v83 = 8191.0;
          if (v82 <= 8191.0)
          {
            v83 = (v166 * v78) + v81;
            if (v82 < 0.0)
            {
              v83 = 0.0;
            }
          }

          LOBYTE(v82) = *(v68 + v74);
          v84 = LODWORD(v82) - v36;
          v85 = (v164 * v78) + (v84 * v165);
          v86 = 8191.0;
          if ((v81 + v85) <= 8191.0)
          {
            v86 = v81 + v85;
            if ((v81 + v85) < 0.0)
            {
              v86 = 0.0;
            }
          }

          v87 = v163 * v84;
          v88 = v87 + v81;
          v89 = (v87 + v81) <= 8191.0;
          v90 = 8191.0;
          if (v89)
          {
            v90 = v88;
            if (v88 < 0.0)
            {
              v90 = 0.0;
            }
          }

          LOBYTE(v88) = v75[1];
          v91 = v37 * (LODWORD(v88) - v35);
          v92 = v80 + v91;
          v89 = (v80 + v91) <= 8191.0;
          v93 = 8191.0;
          if (v89)
          {
            v93 = v92;
            if (v92 < 0.0)
            {
              v93 = 0.0;
            }
          }

          v94 = v85 + v91;
          v89 = (v85 + v91) <= 8191.0;
          v95 = 8191.0;
          if (v89)
          {
            v95 = v94;
            if (v94 < 0.0)
            {
              v95 = 0.0;
            }
          }

          v96 = v87 + v91;
          v89 = (v87 + v91) <= 8191.0;
          v97 = 8191.0;
          if (v89)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v83, 0.0), 8191.0)));
          __asm { FCVT            S24, H0 }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v86, 0.0), 8191.0)));
          __asm { FCVT            S25, H0 }

          _H0 = *(v55 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S26, H0 }

          _H19 = *(v55 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          _H28 = *(v55 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          _H29 = *(v55 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          v110 = fmaxf(_S24, fmaxf(_S25, _S26));
          v111 = (((v70 * _S25) + (v71 * _S24)) + (v72 * _S26)) + (v73 * v110);
          v112 = 8191.0;
          if (v111 <= 8191.0)
          {
            v112 = (((v70 * _S25) + (v71 * _S24)) + (v72 * _S26)) + (v73 * v110);
            if (v111 < 0.0)
            {
              v112 = 0.0;
            }
          }

          v113 = v45;
          __asm
          {
            FCVT            S27, H19
            FCVT            S28, H28
            FCVT            S29, H29
          }

          _H19 = *(v56 + 2 * llroundf(v112));
          v118 = (((v70 * _S28) + (v71 * _S27)) + (v72 * _S29)) + (v73 * fmaxf(_S27, fmaxf(_S28, _S29)));
          v119 = 8191.0;
          if (v118 <= 8191.0)
          {
            v119 = v118;
            if (v118 < 0.0)
            {
              v119 = 0.0;
            }
          }

          __asm { FCVT            S0, H19 }

          v121 = _S24 * _S0;
          _S24 = _S25 * _S0;
          v123 = _S26 * _S0;
          _H1 = *(v56 + 2 * llroundf(v119));
          __asm { FCVT            S1, H1 }

          v126 = _S27 * _S1;
          v127 = _S28 * _S1;
          v128 = _S29 * _S1;
          v129 = ((v161 * _S24) + (v121 * v162)) + (v123 * v48);
          v130 = ((v50 * _S24) + (v121 * v49)) + (v123 * v51);
          _S0 = ((v53 * _S24) + (v121 * v52)) + (v123 * v54);
          v132 = ((v161 * v127) + (v126 * v162)) + (v128 * v48);
          v133 = ((v50 * v127) + (v126 * v49)) + (v128 * v51);
          v134 = ((v53 * v127) + (v126 * v52)) + (v128 * v54);
          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(v129, 0.0), 8191.0)));
          __asm { FCVT            S27, H24 }

          LOWORD(_S24) = *(v63 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          __asm { FCVT            S28, H24 }

          LOWORD(_S0) = *(v63 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S29, H0 }

          _H24 = *(v63 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          _H25 = *(v63 + 2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0)));
          _H26 = *(v63 + 2 * llroundf(fminf(fmaxf(v134, 0.0), 8191.0)));
          v45 = v113;
          v141 = (((v174 * _S28) + (v113 * _S27)) + (v46 * _S29)) + v40;
          v142 = v42;
          if (v141 <= v42)
          {
            v142 = (((v174 * _S28) + (v113 * _S27)) + (v46 * _S29)) + v40;
            if (v141 < v40)
            {
              v142 = v40;
            }
          }

          *v76 = llroundf(v142) << v58;
          if (v77)
          {
            v143 = ((v41 + (_S27 * v172)) + (_S28 * v171)) + (_S29 * v170);
            v144 = v44;
            if (v143 <= v44)
            {
              v144 = ((v41 + (_S27 * v172)) + (_S28 * v171)) + (_S29 * v170);
              if (v143 < v173)
              {
                v144 = v173;
              }
            }

            v145 = ((v41 + (_S27 * v169)) + (_S28 * v168)) + (_S29 * v167);
            *v77 = llroundf(v144) << v58;
            v146 = v44;
            if (v145 <= v44)
            {
              v146 = ((v41 + (_S27 * v169)) + (_S28 * v168)) + (_S29 * v167);
              if (v145 < v173)
              {
                v146 = v173;
              }
            }

            v77[1] = llroundf(v146) << v58;
            v77 += 2;
          }

          __asm
          {
            FCVT            S24, H24
            FCVT            S25, H25
            FCVT            S26, H26
          }

          v150 = (((v174 * _S25) + (v113 * _S24)) + (v46 * _S26)) + v40;
          v47 = v42;
          if (v150 <= v42)
          {
            v47 = (((v174 * _S25) + (v113 * _S24)) + (v46 * _S26)) + v40;
            if (v150 < v40)
            {
              v47 = v40;
            }
          }

          v76[1] = llroundf(v47) << v58;
          if (v77)
          {
            v151 = ((v41 + (_S24 * v172)) + (_S25 * v171)) + (_S26 * v170);
            v152 = v44;
            if (v151 <= v44)
            {
              v152 = ((v41 + (_S24 * v172)) + (_S25 * v171)) + (_S26 * v170);
              if (v151 < v173)
              {
                v152 = v173;
              }
            }

            v153 = ((v41 + (_S24 * v169)) + (_S25 * v168)) + (_S26 * v167);
            *v77 = llroundf(v152) << v58;
            v47 = v44;
            if (v153 <= v44)
            {
              v47 = ((v41 + (_S24 * v169)) + (_S25 * v168)) + (_S26 * v167);
              if (v153 < v173)
              {
                v47 = v173;
              }
            }

            v77[1] = llroundf(v47) << v58;
            v77 += 2;
          }

          v74 += 2;
          v75 += 2;
          v76 += 2;
        }

        while (v74 < v30);
      }

      v69 += v31;
      v68 += v32;
      v65 = (v65 + v33);
      v64 = (result + v64);
      ++v28;
    }

    while (v28 != v19);
  }

  if (v160 && v26)
  {
    if (v19 >= 1)
    {
      v154 = 0;
      v155 = (v160 + v24 * v13 + v11);
      do
      {
        if (v16 >= 1)
        {
          v156 = v16;
          v157 = v27;
          v158 = v155;
          do
          {
            v159 = *v158++;
            *v157++ = v159 | (v159 << 8);
            --v156;
          }

          while (v156);
        }

        v155 += v24;
        v27 += v25;
        ++v154;
      }

      while (v154 != v19);
    }
  }

  else if (v26 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v27, 255, 2 * v16);
      }

      v27 += v25;
      --v19;
    }

    while (v19);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_xf444_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Mat_TRC_xf444_neon_fp16_GCD(void *a1, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v9 = *a1;
  v197 = *(a1 + 28) * a2 / v9 + *(a1 + 44);
  v198 = *(a1 + 36);
  v10 = a1[14];
  v12 = a1[12];
  v11 = a1[13];
  v13 = v11 * a2 / v9;
  v14 = v13 + a1[15];
  v15 = (v11 + v11 * a2) / v9 - v13;
  v16 = a1[7];
  v17 = a1[8];
  v19 = a1[16];
  result = a1[17];
  v196 = v17[2];
  v20 = result[2];
  v199 = v19[2];
  v200 = v16[2];
  v21 = (v199 + v20 * v14 + 2 * v10);
  if (v15 >= 1)
  {
    v22 = 0;
    v23 = a1[19];
    v24 = *v17;
    v25 = v17[1];
    v26 = *result;
    result = result[1];
    v27 = v23[17].u16[2];
    v28 = v23[17].u16[3];
    v29.i32[0] = v23[3].i32[1];
    v30 = v23[18].u16[0];
    v31 = v23[18].u16[1];
    v32 = v23[18].u16[2];
    v33 = v23[18].u16[3];
    v34 = v23[19].u16[0];
    _S2 = v23[4].i32[1];
    _S6 = v23[5].f32[0];
    _Q7.i32[0] = v23[5].i32[1];
    _S21 = v23[6].i32[0];
    _S18 = v23[6].i32[1];
    _S24 = v23[7].i32[0];
    _S25 = v23[7].i32[1];
    _S11 = v23[8].i32[0];
    _S13 = v23[8].i32[1];
    _S15 = v23[9].i32[0];
    v45 = &v23[20] + 4;
    a8.f32[0] = 8191.0 / v23[16].u32[0];
    v242 = v27;
    v241 = v28;
    v46 = v30;
    v47 = v31;
    *a3.i32 = v32;
    *&a6 = v33;
    v239 = v33;
    v240 = a8.f32[0] * v23->f32[0];
    v48 = v34;
    *&a6 = v27;
    v49 = &v23[2068] + 4;
    __asm { FCVT            H8, S17 }

    v204 = vdupq_lane_s16(*&a6, 0);
    v55 = -v28;
    v29.i32[1] = v23[1].i32[0];
    *v8.f32 = vmul_n_f32(v29, a8.f32[0]);
    *a8.f32 = vmul_n_f32(v23[2], a8.f32[0]);
    v231 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v56 = vmulq_n_f16(v231, v55);
    v229 = v56;
    *v56.i16 = v30;
    v57 = vdupq_lane_s16(*v56.i8, 0);
    v216 = v57;
    *v57.i16 = v31;
    v58 = vdupq_lane_s16(*v57.i8, 0);
    v213 = v58;
    *v58.i16 = v32;
    v59 = vdupq_lane_s16(*v58.i8, 0);
    v228 = v59;
    *v59.i16 = v33;
    v212 = vdupq_lane_s16(*v59.i8, 0);
    v230 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    v60 = vmulq_n_f16(v230, v55);
    v227 = v60;
    *v60.i16 = v34;
    v211 = vdupq_lane_s16(*v60.i8, 0);
    v61 = v23[16].u8[4];
    if (v61 >= 0x11)
    {
      v62 = 0;
    }

    else
    {
      v62 = 16 - v61;
    }

    v64 = *v19;
    v63 = v19[1];
    v65 = v63 + result * v14 + 2 * v10;
    if (!v63)
    {
      v65 = 0;
    }

    v66 = v64 + v26 * v14 + 2 * v10;
    v67 = *v16;
    v68 = v16[1];
    v69 = (v68 + v25 * v197 + v198);
    if (!v68)
    {
      v69 = 0;
    }

    v70 = (v67 + v24 * v197 + v198);
    _S27 = v23[9].f32[1];
    _S28 = v23[10].f32[0];
    _S29 = v23[10].f32[1];
    _S30 = v23[11].f32[0];
    _S31 = v23[11].f32[1];
    _S9 = v23[12].f32[0];
    v77 = v23[4].f32[1];
    __asm { FCVT            H2, S2 }

    v226 = _H2;
    __asm { FCVT            H2, S6 }

    v225 = _H2;
    v80 = v23[5].f32[1];
    __asm { FCVT            H2, S7 }

    v224 = _H2;
    _S14 = v23[12].f32[1];
    _S12 = v23[13].f32[0];
    v238 = v23[6].f32[0];
    __asm { FCVT            H2, S21 }

    v210 = _H2;
    v237 = v23[6].f32[1];
    __asm { FCVT            H2, S18 }

    v209 = _H2;
    v236 = v23[7].f32[0];
    __asm { FCVT            H2, S24 }

    v208 = _H2;
    v235 = v23[7].f32[1];
    __asm { FCVT            H2, S25 }

    v207 = _H2;
    v234 = v23[8].f32[0];
    __asm { FCVT            H2, S11 }

    v206 = _H2;
    v233 = v23[8].f32[1];
    __asm { FCVT            H2, S13 }

    v205 = _H2;
    v90 = v23[9].f32[0];
    __asm { FCVT            H2, S15 }

    v223 = _H2;
    __asm { FCVT            H2, S27 }

    v222 = _H2;
    __asm { FCVT            H2, S28 }

    v221 = _H2;
    __asm { FCVT            H2, S29 }

    v220 = _H2;
    __asm { FCVT            H2, S30 }

    v219 = _H2;
    __asm { FCVT            H2, S31 }

    v218 = _H2;
    __asm { FCVT            H2, S9 }

    v217 = _H2;
    __asm { FCVT            H2, S14 }

    v215 = _H2;
    v99 = vdupq_n_s16(v62);
    __asm { FCVT            H2, S12 }

    v214 = _H2;
    v101 = v8.f32[1];
    v232 = v8.f32[0];
    v102 = a8.i64[0];
    v103.i64[0] = 0x9000900090009000;
    v103.i64[1] = 0x9000900090009000;
    v203 = v8.f32[1];
    do
    {
      if (v12 < 8)
      {
        v130 = 0;
        v107 = v65;
        v106 = v66;
        v129 = v69;
        v105 = v70;
      }

      else
      {
        v104 = 0;
        v105 = v70;
        v106 = v66;
        v107 = v65;
        do
        {
          v108 = *&v69[v104];
          *v109.i8 = vzip1_s8(v108, 0);
          v109.u64[1] = vzip2_s8(v108, 0);
          v110 = vcvtq_f16_u16(v109);
          v111 = vmlaq_f16(v229, v231, v110);
          v112 = vmlaq_f16(v227, v230, v110);
          v113 = vtrn2q_s16(v111, v111);
          v114 = vtrn1q_s16(v111, v111);
          v115 = vuzp1q_s16(v112, a3);
          *v115.i8 = vadd_f16(*v115.i8, *&vuzp2q_s16(v112, a3));
          v116 = *v105++;
          *v117.i8 = vzip1_s8(v116, 0);
          v117.u64[1] = vzip2_s8(v116, 0);
          v118 = vsubq_f16(vcvtq_f16_u16(v117), v204);
          v119 = vmlaq_n_f16(vzip1q_s16(v115, v115), v118, _H8);
          v120 = vmlaq_n_f16(v114, v118, _H8);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v113, v118, _H8), 0), v103));
          v113.i16[0] = *&v45[2 * v121.u16[0]];
          v113.i16[1] = *&v45[2 * v121.u16[1]];
          v113.i16[2] = *&v45[2 * v121.u16[2]];
          v113.i16[3] = *&v45[2 * v121.u16[3]];
          v113.i16[4] = *&v45[2 * v121.u16[4]];
          v113.i16[5] = *&v45[2 * v121.u16[5]];
          v113.i16[6] = *&v45[2 * v121.u16[6]];
          v113.i16[7] = *&v45[2 * v121.u16[7]];
          v122 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v103));
          v119.i16[0] = *&v45[2 * v122.u16[0]];
          v119.i16[1] = *&v45[2 * v122.u16[1]];
          v119.i16[2] = *&v45[2 * v122.u16[2]];
          v119.i16[3] = *&v45[2 * v122.u16[3]];
          v119.i16[4] = *&v45[2 * v122.u16[4]];
          v119.i16[5] = *&v45[2 * v122.u16[5]];
          v119.i16[6] = *&v45[2 * v122.u16[6]];
          v119.i16[7] = *&v45[2 * v122.u16[7]];
          v123 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v120, 0), v103));
          v117.i16[0] = *&v45[2 * v123.u16[0]];
          v117.i16[1] = *&v45[2 * v123.u16[1]];
          v117.i16[2] = *&v45[2 * v123.u16[2]];
          v117.i16[3] = *&v45[2 * v123.u16[3]];
          v117.i16[4] = *&v45[2 * v123.u16[4]];
          v117.i16[5] = *&v45[2 * v123.u16[5]];
          v117.i16[6] = *&v45[2 * v123.u16[6]];
          v117.i16[7] = *&v45[2 * v123.u16[7]];
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v223), v119, v222), v117, v221), 0), v103));
          v125.i16[0] = *&v49[2 * v124.u16[0]];
          v125.i16[1] = *&v49[2 * v124.u16[1]];
          v125.i16[2] = *&v49[2 * v124.u16[2]];
          v125.i16[3] = *&v49[2 * v124.u16[3]];
          v125.i16[4] = *&v49[2 * v124.u16[4]];
          v125.i16[5] = *&v49[2 * v124.u16[5]];
          v125.i16[6] = *&v49[2 * v124.u16[6]];
          v125.i16[7] = *&v49[2 * v124.u16[7]];
          v126 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v113, v220), v119, v219), v117, v218), 0), v103));
          v127.i16[0] = *&v49[2 * v126.u16[0]];
          v127.i16[1] = *&v49[2 * v126.u16[1]];
          v127.i16[2] = *&v49[2 * v126.u16[2]];
          v127.i16[3] = *&v49[2 * v126.u16[3]];
          v127.i16[4] = *&v49[2 * v126.u16[4]];
          v127.i16[5] = *&v49[2 * v126.u16[5]];
          v127.i16[6] = *&v49[2 * v126.u16[6]];
          v127.i16[7] = *&v49[2 * v126.u16[7]];
          v128 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v117, v214), v119, v215), v113, v217), 0), v103));
          _Q7.i16[0] = *&v49[2 * v128.u16[0]];
          _Q7.i16[1] = *&v49[2 * v128.u16[1]];
          _Q7.i16[2] = *&v49[2 * v128.u16[2]];
          _Q7.i16[3] = *&v49[2 * v128.u16[3]];
          _Q7.i16[4] = *&v49[2 * v128.u16[4]];
          _Q7.i16[5] = *&v49[2 * v128.u16[5]];
          _Q7.i16[6] = *&v49[2 * v128.u16[6]];
          _Q7.i16[7] = *&v49[2 * v128.u16[7]];
          *v106++ = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v216, v125, v226), v127, v225), _Q7, v224), v216), v228)), v99);
          if (v107)
          {
            v243.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v213, v125, v210), v127, v209), _Q7, v208), v212), v211), v212), v211)), v99);
            _Q7 = vcvtq_u16_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v213, v125, v207), v127, v206), _Q7, v205));
            v243.val[1] = vshlq_u16(_Q7, v99);
            vst2q_s16(v107, v243);
            v107 += 16;
          }

          v104 += 8;
        }

        while (v104 < v12 - 7);
        v129 = &v69[v104];
        v130 = v12 & 0xFFFFFFF8;
        v101 = v203;
      }

      while (v130 < (v12 & 0xFFFFFFFE))
      {
        _Q7.i8[0] = v129[1];
        *&v131 = _Q7.u32[0];
        v132 = *&v131 - v241;
        v133 = v101 * v132;
        LOBYTE(v131) = v105->i8[0];
        v134 = v240 * (v131 - v242);
        v135 = (v101 * v132) + v134;
        _Q7.i32[0] = 1174403072;
        if (v135 <= 8191.0)
        {
          *_Q7.i32 = (v101 * v132) + v134;
          if (v135 < 0.0)
          {
            _Q7.i32[0] = 0;
          }
        }

        LOBYTE(v135) = *v129;
        v136 = LODWORD(v135) - v241;
        v137 = (*(&v102 + 1) * v132) + (v136 * *&v102);
        v138 = 8191.0;
        if ((v134 + v137) <= 8191.0)
        {
          v138 = v134 + v137;
          if ((v134 + v137) < 0.0)
          {
            v138 = 0.0;
          }
        }

        v139 = v232 * v136;
        v140 = v139 + v134;
        v141 = (v139 + v134) <= 8191.0;
        v142 = 8191.0;
        if (v141)
        {
          v142 = v140;
          if (v140 < 0.0)
          {
            v142 = 0.0;
          }
        }

        LOBYTE(v140) = v105->i8[1];
        v143 = v240 * (LODWORD(v140) - v242);
        v144 = v133 + v143;
        if (v144 < 0.0)
        {
          v145 = 0.0;
        }

        else
        {
          v145 = v144;
        }

        if (v144 > 8191.0)
        {
          v145 = 8191.0;
        }

        v146 = v137 + v143;
        if ((v137 + v143) < 0.0)
        {
          v147 = 0.0;
        }

        else
        {
          v147 = v137 + v143;
        }

        if (v146 <= 8191.0)
        {
          v148 = v147;
        }

        else
        {
          v148 = 8191.0;
        }

        v149 = v139 + v143;
        if (v149 < 0.0)
        {
          v150 = 0.0;
        }

        else
        {
          v150 = v149;
        }

        v151 = llroundf(fminf(fmaxf(*_Q7.i32, 0.0), 8191.0));
        if (v149 <= 8191.0)
        {
          v152 = v150;
        }

        else
        {
          v152 = 8191.0;
        }

        _H2 = *&v45[2 * v151];
        __asm { FCVT            S2, H2 }

        _H7 = *&v45[2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        _H16 = *&v45[2 * llroundf(fminf(fmaxf(v142, 0.0), 8191.0))];
        __asm { FCVT            S16, H16 }

        v159 = ((_S27 * _S7) + (_S2 * v90)) + (_S16 * _S28);
        v160 = ((_S30 * _S7) + (_S2 * _S29)) + (_S16 * _S31);
        _S2 = ((_S14 * _S7) + (_S2 * _S9)) + (_S16 * _S12);
        LOWORD(_S7) = *&v49[2 * llroundf(fminf(fmaxf(v159, 0.0), 8191.0))];
        __asm { FCVT            S7, H7 }

        LOWORD(_S16) = *&v49[2 * llroundf(fminf(fmaxf(v160, 0.0), 8191.0))];
        __asm { FCVT            S16, H16 }

        LOWORD(_S2) = *&v49[2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0))];
        __asm { FCVT            S11, H2 }

        v165 = (((_S6 * _S16) + (v77 * _S7)) + (v80 * _S11)) + v46;
        v166 = *a3.i32;
        if (v165 <= *a3.i32)
        {
          v166 = (((_S6 * _S16) + (v77 * _S7)) + (v80 * _S11)) + v46;
          if (v165 < v46)
          {
            v166 = v46;
          }
        }

        _H2 = *&v45[2 * llroundf(fminf(fmaxf(v145, 0.0), 8191.0))];
        __asm { FCVT            S2, H2 }

        _H18 = *&v45[2 * llroundf(fminf(fmaxf(v148, 0.0), 8191.0))];
        __asm { FCVT            S18, H18 }

        _H25 = *&v45[2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0))];
        __asm { FCVT            S25, H25 }

        v173 = ((_S27 * _S18) + (_S2 * v90)) + (_S25 * _S28);
        v174 = ((_S30 * _S18) + (_S2 * _S29)) + (_S25 * _S31);
        v175 = ((_S14 * _S18) + (_S2 * _S9)) + (_S25 * _S12);
        _H25 = *&v49[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
        _H13 = *&v49[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
        _H15 = *&v49[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
        v106->i16[0] = llroundf(v166) << v62;
        if (v107)
        {
          v179 = ((v47 + (_S7 * v238)) + (_S16 * v237)) + (_S11 * v236);
          v180 = v48;
          if (v179 <= v48)
          {
            v180 = ((v47 + (_S7 * v238)) + (_S16 * v237)) + (_S11 * v236);
            if (v179 < v239)
            {
              v180 = v239;
            }
          }

          v181 = ((v47 + (_S7 * v235)) + (_S16 * v234)) + (_S11 * v233);
          *v107 = llroundf(v180) << v62;
          v182 = v48;
          if (v181 <= v48)
          {
            v182 = v181;
            if (v181 < v239)
            {
              v182 = v239;
            }
          }

          v107[1] = llroundf(v182) << v62;
          v107 += 2;
        }

        __asm
        {
          FCVT            S7, H25
          FCVT            S16, H13
          FCVT            S24, H15
        }

        v185 = ((_S6 * _S16) + (v77 * *_Q7.i32)) + (v80 * _S24);
        v186 = *a3.i32;
        if ((v185 + v46) <= *a3.i32)
        {
          v186 = v185 + v46;
          if ((v185 + v46) < v46)
          {
            v186 = v46;
          }
        }

        v106->i16[1] = llroundf(v186) << v62;
        if (v107)
        {
          v187 = ((v47 + (*_Q7.i32 * v238)) + (_S16 * v237)) + (_S24 * v236);
          v188 = v48;
          if (v187 <= v48)
          {
            v188 = ((v47 + (*_Q7.i32 * v238)) + (_S16 * v237)) + (_S24 * v236);
            if (v187 < v239)
            {
              v188 = v239;
            }
          }

          *_Q7.i32 = ((v47 + (*_Q7.i32 * v235)) + (_S16 * v234)) + (_S24 * v233);
          *v107 = llroundf(v188) << v62;
          v189 = v48;
          if (*_Q7.i32 <= v48)
          {
            v189 = *_Q7.i32;
            if (*_Q7.i32 < v239)
            {
              v189 = v239;
            }
          }

          v107[1] = llroundf(v189) << v62;
          v107 += 2;
        }

        v130 += 2;
        v129 += 2;
        v105 = (v105 + 2);
        v106 = (v106 + 4);
      }

      v70 = (v70 + v24);
      v69 += v25;
      v66 += v26;
      v65 += result;
      ++v22;
    }

    while (v22 != v15);
  }

  if (v200 && v199)
  {
    if (v15 >= 1)
    {
      v190 = 0;
      v191 = (v200 + v196 * v197 + v198);
      do
      {
        if (v12 >= 1)
        {
          v192 = v12;
          v193 = v21;
          v194 = v191;
          do
          {
            v195 = *v194++;
            *v193++ = v195 | (v195 << 8);
            --v192;
          }

          while (v192);
        }

        v191 += v196;
        v21 += v20;
        ++v190;
      }

      while (v190 != v15);
    }
  }

  else if (v199 && v15 >= 1)
  {
    do
    {
      if (v12 >= 1)
      {
        result = memset(v21, 255, 2 * v12);
      }

      v21 += v20;
      --v15;
    }

    while (v15);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_xf444_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_TRC_Mat_TRC_xf444_GCD(void *a1, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v10 = *(a1 + 36);
  v11 = *a1;
  v12 = *(a1 + 28) * a2 / v11 + *(a1 + 44);
  v13 = a1[14];
  v15 = a1[12];
  v14 = a1[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + a1[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = a1[7];
  v20 = a1[8];
  v22 = a1[16];
  result = a1[17];
  v23 = v20[2];
  v24 = v19[2];
  v25 = result[2];
  v26 = v22[2];
  v27 = (v26 + v25 * v17 + 2 * v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = v15 & 0xFFFFFFFE;
    v31 = *v20;
    v32 = v20[1];
    v33 = *result;
    result = result[1];
    LOWORD(a5) = *(v29 + 140);
    LOWORD(a6) = *(v29 + 142);
    LOWORD(v6) = *(v29 + 144);
    LOWORD(v7) = *(v29 + 146);
    v34 = 8191.0 / *(v29 + 128);
    v35 = LODWORD(a5);
    v36 = LODWORD(a6);
    v37 = v34 * *v29;
    v145 = v34 * *(v29 + 8);
    v143 = v34 * *(v29 + 20);
    v144 = v34 * *(v29 + 16);
    *&v38 = v34 * *(v29 + 28);
    v142 = *&v38;
    v39 = v6;
    v40 = v7;
    LOWORD(v38) = *(v29 + 148);
    v41 = v38;
    LOWORD(v38) = *(v29 + 150);
    v42 = v38;
    LOWORD(v38) = *(v29 + 152);
    v43 = v38;
    v44 = *(v29 + 36);
    v45 = *(v29 + 40);
    v46 = *(v29 + 44);
    v149 = *(v29 + 52);
    v150 = *(v29 + 48);
    _S4 = *(v29 + 64);
    v147 = *(v29 + 60);
    v148 = *(v29 + 56);
    v146 = _S4;
    v48 = *(v29 + 68);
    v49 = *(v29 + 72);
    v51 = *(v29 + 76);
    v50 = *(v29 + 80);
    v52 = *(v29 + 84);
    v53 = *(v29 + 88);
    v54 = *(v29 + 92);
    v55 = *(v29 + 96);
    v56 = *(v29 + 100);
    v57 = *(v29 + 104);
    v58 = v29 + 164;
    v59 = v29 + 16548;
    v60 = *(v29 + 132);
    if (v60 >= 0x11)
    {
      v61 = 0;
    }

    else
    {
      v61 = 16 - v60;
    }

    v63 = *v22;
    v62 = v22[1];
    v64 = v62 + result * v17 + 2 * v13;
    if (!v62)
    {
      v64 = 0;
    }

    v65 = v63 + v33 * v17 + 2 * v13;
    v67 = *v19;
    v66 = v19[1];
    v68 = v66 + v32 * v12 + v10;
    if (!v66)
    {
      v68 = 0;
    }

    v69 = (v67 + v31 * v12 + v10);
    do
    {
      if (v30 >= 1)
      {
        v70 = 0;
        v71 = v69;
        v72 = v65;
        v73 = v64;
        do
        {
          LOBYTE(_S4) = *(v68 + v70 + 1);
          v74 = LODWORD(_S4) - v36;
          v75 = LODWORD(v145);
          v76 = v145 * v74;
          LOBYTE(v75) = *v71;
          v77 = v37 * (v75 - v35);
          v78 = (v145 * v74) + v77;
          v79 = 8191.0;
          if (v78 <= 8191.0)
          {
            v79 = (v145 * v74) + v77;
            if (v78 < 0.0)
            {
              v79 = 0.0;
            }
          }

          LOBYTE(v78) = *(v68 + v70);
          v80 = LODWORD(v78) - v36;
          v81 = (v143 * v74) + (v80 * v144);
          v82 = 8191.0;
          if ((v77 + v81) <= 8191.0)
          {
            v82 = v77 + v81;
            if ((v77 + v81) < 0.0)
            {
              v82 = 0.0;
            }
          }

          v83 = v142 * v80;
          v84 = (v142 * v80) + v77;
          v85 = 8191.0;
          if (v84 <= 8191.0)
          {
            v85 = v84;
            if (v84 < 0.0)
            {
              v85 = 0.0;
            }
          }

          LOBYTE(v84) = v71[1];
          v86 = v37 * (LODWORD(v84) - v35);
          v87 = v76 + v86;
          if (v87 < 0.0)
          {
            v88 = 0.0;
          }

          else
          {
            v88 = v87;
          }

          if (v87 > 8191.0)
          {
            v88 = 8191.0;
          }

          v89 = v81 + v86;
          if ((v81 + v86) < 0.0)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = v81 + v86;
          }

          if (v89 <= 8191.0)
          {
            v91 = v90;
          }

          else
          {
            v91 = 8191.0;
          }

          if ((v83 + v86) < 0.0)
          {
            v92 = 0.0;
          }

          else
          {
            v92 = v83 + v86;
          }

          v93 = llroundf(fminf(fmaxf(v79, 0.0), 8191.0));
          if ((v83 + v86) <= 8191.0)
          {
            v94 = v92;
          }

          else
          {
            v94 = 8191.0;
          }

          _H4 = *(v58 + 2 * v93);
          __asm { FCVT            S4, H4 }

          _H5 = *(v58 + 2 * llroundf(fminf(fmaxf(v82, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v58 + 2 * llroundf(fminf(fmaxf(v85, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v105 = ((v51 * _S5) + (_S4 * v49)) + (_S6 * v50);
          v106 = ((v53 * _S5) + (_S4 * v52)) + (_S6 * v54);
          _S6 = ((v56 * _S5) + (_S4 * v55)) + (_S6 * v57);
          LOWORD(_S4) = *(v59 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          LOWORD(_S5) = *(v59 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v59 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v111 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
          v112 = v41;
          if (v111 <= v41)
          {
            v112 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
            if (v111 < v39)
            {
              v112 = v39;
            }
          }

          _H7 = *(v58 + 2 * llroundf(fminf(fmaxf(v88, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H24 = *(v58 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H25 = *(v58 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          __asm { FCVT            S25, H25 }

          v119 = ((v51 * _S24) + (_S7 * v49)) + (_S25 * v50);
          v120 = ((v53 * _S24) + (_S7 * v52)) + (_S25 * v54);
          v121 = ((v56 * _S24) + (_S7 * v55)) + (_S25 * v57);
          _H7 = *(v59 + 2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0)));
          _H24 = *(v59 + 2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0)));
          _H25 = *(v59 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          *v72 = llroundf(v112) << v61;
          if (v73)
          {
            v125 = ((v40 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v148);
            v126 = v43;
            if (v125 <= v43)
            {
              v126 = ((v40 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v148);
              if (v125 < v42)
              {
                v126 = v42;
              }
            }

            v127 = ((v40 + (_S4 * v147)) + (_S5 * v146)) + (_S6 * v48);
            *v73 = llroundf(v126) << v61;
            v128 = v43;
            if (v127 <= v43)
            {
              v128 = v127;
              if (v127 < v42)
              {
                v128 = v42;
              }
            }

            v73[1] = llroundf(v128) << v61;
            v73 += 2;
          }

          __asm
          {
            FCVT            S4, H7
            FCVT            S5, H24
            FCVT            S6, H25
          }

          v131 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
          v132 = v41;
          if (v131 <= v41)
          {
            v132 = (((v45 * _S5) + (v44 * _S4)) + (v46 * _S6)) + v39;
            if (v131 < v39)
            {
              v132 = v39;
            }
          }

          v72[1] = llroundf(v132) << v61;
          if (v73)
          {
            v133 = ((v40 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v148);
            v134 = v43;
            if (v133 <= v43)
            {
              v134 = ((v40 + (_S4 * v150)) + (_S5 * v149)) + (_S6 * v148);
              if (v133 < v42)
              {
                v134 = v42;
              }
            }

            _S4 = ((v40 + (_S4 * v147)) + (_S5 * v146)) + (_S6 * v48);
            *v73 = llroundf(v134) << v61;
            v135 = v43;
            if (_S4 <= v43)
            {
              v135 = _S4;
              if (_S4 < v42)
              {
                v135 = v42;
              }
            }

            v73[1] = llroundf(v135) << v61;
            v73 += 2;
          }

          v70 += 2;
          v71 += 2;
          v72 += 2;
        }

        while (v70 < v30);
      }

      v69 += v31;
      v68 += v32;
      v65 += v33;
      v64 += result;
      ++v28;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v136 = 0;
      v137 = (v24 + v23 * v12 + v10);
      do
      {
        if (v15 >= 1)
        {
          v138 = v15;
          v139 = v27;
          v140 = v137;
          do
          {
            v141 = *v140++;
            *v139++ = v141 | (v141 << 8);
            --v138;
          }

          while (v138);
        }

        v137 += v23;
        v27 += v25;
        ++v136;
      }

      while (v136 != v18);
    }
  }

  else if (v26 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v27, 255, 2 * v15);
      }

      v27 += v25;
      --v18;
    }

    while (v18);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_xf444_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_xf444_neon_fp16_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_rgb_xf444_neon_fp16_GCD(void *a1, uint64_t a2, int16x8_t _Q0, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v11 = *(a1 + 36);
  v12 = *a1;
  v13 = *(a1 + 28) * a2 / v12 + *(a1 + 44);
  v14 = a1[14];
  v16 = a1[12];
  v15 = a1[13];
  v17 = v15 * a2 / v12;
  v18 = v17 + a1[15];
  v19 = (v15 + v15 * a2) / v12 - v17;
  v20 = a1[7];
  v21 = a1[8];
  v23 = a1[16];
  result = a1[17];
  v24 = v21[2];
  v138 = v20[2];
  v25 = result[2];
  v26 = v23[2];
  v27 = (v26 + v25 * v18 + 2 * v14);
  if (v19 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = *v21;
    v31 = v21[1];
    v32 = *result;
    result = result[1];
    v33 = v29[17].u16[2];
    v34 = v29[17].u16[3];
    a8.i32[0] = v29[3].i32[1];
    v35 = v29[18].u16[0];
    v36 = v29[18].u16[1];
    v37 = v29[18].u16[2];
    v38 = v29[18].u16[3];
    v39 = v29[19].u16[0];
    _Q0.i32[0] = v29[4].i32[1];
    _S1 = v29[5].f32[0];
    _S2 = v29[5].f32[1];
    _S25 = v29[6].f32[0];
    _S26 = v29[6].f32[1];
    _S27 = v29[7].f32[0];
    _S28 = v29[7].f32[1];
    _S29 = v29[8].f32[0];
    _S30 = v29[8].f32[1];
    v48 = v33;
    *v8.i16 = v33;
    v49 = v29[17].u32[0] / v29[16].u32[0];
    v50 = v34;
    _S19 = v49 * v29->f32[0];
    v52 = v35;
    v53 = v36;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    __asm { FCVT            H8, S19 }

    v157 = vdupq_lane_s16(*v8.f32, 0);
    a8.i32[1] = v29[1].i32[0];
    *v8.f32 = vmul_n_f32(*a8.f32, v49);
    v62 = -v34;
    *a8.f32 = vmul_n_f32(v29[2], v49);
    _Q3 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    v155 = vdupq_lane_s32(vcvt_f16_f32(v8), 0);
    v152 = vmulq_n_f16(v155, v62);
    v153 = _Q3;
    v64 = vmulq_n_f16(_Q3, v62);
    __asm { FCVT            H3, S0 }

    v150 = *_Q3.i16;
    v151 = v64;
    *_Q3.i16 = v35;
    v65 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v36;
    _Q3 = vdupq_lane_s16(*_Q3.i8, 0);
    v145 = _Q3;
    *_Q3.i16 = v37;
    v67 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v38;
    v68 = vdupq_lane_s16(*_Q3.i8, 0);
    *_Q3.i16 = v39;
    v69 = vdupq_lane_s16(*_Q3.i8, 0);
    __asm { FCVT            H3, S1 }

    v148 = *_Q3.i16;
    v149 = v67;
    v70 = v29[16].u8[4];
    if (v70 >= 0x11)
    {
      v71 = 0;
    }

    else
    {
      v71 = 16 - v70;
    }

    v73 = *v23;
    v72 = v23[1];
    v74 = v72 + result * v18 + 2 * v14;
    if (!v72)
    {
      v74 = 0;
    }

    v75 = v73 + v32 * v18 + 2 * v14;
    v77 = *v20;
    v76 = v20[1];
    v78 = (v76 + v31 * v13 + v11);
    if (!v76)
    {
      v78 = 0;
    }

    v79 = (v77 + v30 * v13 + v11);
    __asm { FCVT            H3, S2 }

    v147 = _H3;
    v81 = _S25;
    __asm { FCVT            H3, S25 }

    v144 = _H3;
    __asm { FCVT            H3, S26 }

    v143 = _H3;
    v84 = _S27;
    __asm { FCVT            H3, S27 }

    v142 = _H3;
    __asm { FCVT            H3, S28 }

    v141 = _H3;
    v87 = _S29;
    __asm { FCVT            H3, S29 }

    v140 = _H3;
    v89 = _S30;
    __asm { FCVT            H3, S30 }

    v139 = _H3;
    v91 = vdupq_n_s16(v71);
    v156 = v8.f32[0];
    v92.i32[0] = a8.i32[1];
    v146 = a8.f32[1];
    v154 = a8.f32[0];
    do
    {
      if (v16 < 8)
      {
        v112 = 0;
        v96 = v74;
        v95 = v75;
        v111 = v78;
        v94 = v79;
      }

      else
      {
        v93 = 0;
        v94 = v79;
        v95 = v75;
        v96 = v74;
        do
        {
          v97 = *&v78[v93];
          *v98.i8 = vzip1_s8(v97, 0);
          v98.u64[1] = vzip2_s8(v97, 0);
          v99 = vcvtq_f16_u16(v98);
          v100 = vmlaq_f16(v152, v155, v99);
          v101 = vmlaq_f16(v151, v153, v99);
          v102 = vtrn2q_s16(v100, v100);
          v103 = vtrn1q_s16(v100, v100);
          v104 = vuzp1q_s16(v101, _Q0);
          *v104.i8 = vadd_f16(*v104.i8, *&vuzp2q_s16(v101, _Q0));
          v105 = vzip1q_s16(v104, v104);
          v106 = *v94++;
          *v67.i8 = vzip1_s8(v106, 0);
          v67.u64[1] = vzip2_s8(v106, 0);
          v107 = vsubq_f16(vcvtq_f16_u16(v67), v157);
          v108 = vmlaq_n_f16(v102, v107, _H8);
          v109 = vmlaq_n_f16(v105, v107, _H8);
          v110 = vmlaq_n_f16(v103, v107, _H8);
          v67.i32[0] = v149.i32[0];
          v92 = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v65, v108, v150), v109, v148), v110, v147), v65), v149)), v91);
          *v95++ = v92;
          if (v96)
          {
            v67 = vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v145, v108, v141), v109, v140), v110, v139);
            v158.val[0] = vshlq_u16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v145, v108, v144), v109, v143), v110, v142), v68), v69), v68), v69)), v91);
            v92 = vcvtq_u16_f16(v67);
            v158.val[1] = vshlq_u16(v92, v91);
            vst2q_s16(v96, v158);
            v96 += 16;
          }

          v93 += 8;
        }

        while (v93 < v16 - 7);
        v111 = &v78[v93];
        v112 = v16 & 0xFFFFFFF8;
      }

      while (v112 < (v16 & 0xFFFFFFFE))
      {
        v92.i8[0] = *v111;
        *&v113 = v92.u32[0] - v50;
        v67.i8[0] = v111[1];
        v114 = v67.u32[0] - v50;
        v115 = v8.f32[1] * v114;
        v116 = (v146 * v114) + (*&v113 * v154);
        v117 = v156 * *&v113;
        LOBYTE(v113) = v94->i8[0];
        v118 = _S19 * (v113 - v48);
        v119 = v115 + v118;
        *v92.i32 = v118 + v116;
        *v67.i32 = v117 + v118;
        v120 = (((_S1 * *v92.i32) + (*_Q0.i32 * v119)) + (_S2 * *v67.i32)) + v52;
        v121 = v54;
        if (v120 <= v54)
        {
          v121 = (((_S1 * *v92.i32) + (*_Q0.i32 * v119)) + (_S2 * *v67.i32)) + v52;
          if (v120 < v52)
          {
            v121 = v52;
          }
        }

        LOBYTE(v120) = v94->i8[1];
        v95->i16[0] = llroundf(v121) << v71;
        if (v96)
        {
          v122 = ((v53 + (v119 * v81)) + (*v92.i32 * _S26)) + (*v67.i32 * v84);
          v123 = v56;
          if (v122 <= v56)
          {
            v123 = ((v53 + (v119 * v81)) + (*v92.i32 * _S26)) + (*v67.i32 * v84);
            if (v122 < v55)
            {
              v123 = v55;
            }
          }

          v124 = ((v53 + (v119 * _S28)) + (*v92.i32 * v87)) + (*v67.i32 * v89);
          *v96 = llroundf(v123) << v71;
          v125 = v56;
          if (v124 <= v56)
          {
            if (v124 < v55)
            {
              v125 = v55;
            }

            else
            {
              v125 = v124;
            }
          }

          v96[1] = llroundf(v125) << v71;
          v96 += 2;
        }

        v126 = _S19 * (LODWORD(v120) - v48);
        *v92.i32 = v115 + v126;
        *v67.i32 = v116 + v126;
        v127 = v117 + v126;
        v128 = (((_S1 * (v116 + v126)) + (*_Q0.i32 * *v92.i32)) + (_S2 * (v117 + v126))) + v52;
        v129 = v54;
        if (v128 <= v54)
        {
          v129 = v128;
          if (v128 < v52)
          {
            v129 = v52;
          }
        }

        v95->i16[1] = llroundf(v129) << v71;
        if (v96)
        {
          v130 = ((v53 + (*v92.i32 * v81)) + (*v67.i32 * _S26)) + (v127 * v84);
          v131 = v56;
          if (v130 <= v56)
          {
            v131 = ((v53 + (*v92.i32 * v81)) + (*v67.i32 * _S26)) + (v127 * v84);
            if (v130 < v55)
            {
              v131 = v55;
            }
          }

          *v92.i32 = ((v53 + (*v92.i32 * _S28)) + (*v67.i32 * v87)) + (v127 * v89);
          *v96 = llroundf(v131) << v71;
          *v67.i32 = v56;
          if (*v92.i32 <= v56)
          {
            v67.i32[0] = v92.i32[0];
            if (*v92.i32 < v55)
            {
              *v67.i32 = v55;
            }
          }

          v96[1] = llroundf(*v67.i32) << v71;
          v96 += 2;
        }

        v112 += 2;
        v111 += 2;
        v94 = (v94 + 2);
        v95 = (v95 + 4);
      }

      v79 = (v79 + v30);
      v78 += v31;
      v75 += v32;
      v74 += result;
      ++v28;
    }

    while (v28 != v19);
  }

  if (v138 && v26)
  {
    if (v19 >= 1)
    {
      v132 = 0;
      v133 = (v138 + v24 * v13 + v11);
      do
      {
        if (v16 >= 1)
        {
          v134 = v16;
          v135 = v27;
          v136 = v133;
          do
          {
            v137 = *v136++;
            *v135++ = v137 | (v137 << 8);
            --v134;
          }

          while (v134);
        }

        v133 += v24;
        v27 += v25;
        ++v132;
      }

      while (v132 != v19);
    }
  }

  else if (v26 && v19 >= 1)
  {
    do
    {
      if (v16 >= 1)
      {
        result = memset(v27, 255, 2 * v16);
      }

      v27 += v25;
      --v19;
    }

    while (v19);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_xf444(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v66 = a7;
  v67 = a3;
  v75 = a5;
  v68 = a4;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v65 = a2[3];
  v15 = a2[4];
  v70 = a2[5];
  v71 = v12;
  v16 = *a6;
  v69 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v19 = a6[5];
  v73 = v16;
  v74 = v19;
  v72 = v13;
  v22 = v15 + v14 != v13 || v20 + v17 != v16;
  if (v11 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_69:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v23 = (&v62 - v25);
    bzero(&v62 - v25, v26);
  }

  v64 = a1;
  v27 = a9;
  v28 = v17 - 1;
  v29 = v14 - 1;
  if (v20)
  {
    v30 = v15 + 1;
  }

  else
  {
    v29 = v14;
    v30 = v15;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v17;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v68;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v68) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v68[1] || (v34 = v68[2], v33 > v34) && v34 || (v35 = 2 * (v31 + v28) + 2, v35 > *a8) || (v36 = a8[1], v36 < 2 * v35) && v36 || (v37 = a8[2], v35 > v37) && v37)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v72;
      ++v73;
      ++v29;
    }
  }

  else
  {
    v32 = v68;
  }

  if (v29 + v30 > v72)
  {
    v29 = v72 - v30;
  }

  if (v28 + v31 > v73)
  {
    v28 = v73 - v31;
  }

  if (v70 + v65 <= v71)
  {
    v38 = v65;
  }

  else
  {
    v38 = v71 - v70;
  }

  if (v74 + v18 <= v69)
  {
    v39 = v18;
  }

  else
  {
    v39 = v69 - v74;
  }

  if (v29 >= v28)
  {
    v40 = v28;
  }

  else
  {
    v40 = v29;
  }

  if (v38 >= v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = v38;
  }

  v42 = v70 + v41 - 1;
  v43 = v40 + v30;
  v44 = v40 + v30 + *v32 * v42;
  v45 = *v75;
  v46 = v66;
  v63 = v30;
  if (v44 > v45)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 8) && ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v42 > v75[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v67 + 16) && v43 + v32[2] * v42 > v75[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  v51 = v74 + v41 - 1;
  v52 = v40 + v31;
  if (*a8 * v51 + 2 * (v40 + v31) > *a9)
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 8) && a8[1] * v51 + 4 * v52 > a9[1])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
    goto LABEL_62;
  }

  if (*(v66 + 16) && 2 * v52 + a8[2] * v51 > a9[2])
  {
    v47 = v11;
    v48 = v31;
    v49 = a8;
    v50 = a9;
LABEL_62:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v32 = v68;
    v27 = v50;
    a8 = v49;
    v31 = v48;
    v11 = v47;
    v30 = v63;
    if (v24)
    {
      goto LABEL_68;
    }
  }

  *v23 = v11;
  v53 = v71;
  *(v23 + 4) = v72;
  *(v23 + 12) = v53;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  v54 = v69;
  *(v23 + 44) = v70;
  v23[11] = v54;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v23[7] = v67;
  v23[8] = v32;
  v55 = v73;
  v56 = v74;
  v23[9] = v75;
  v23[10] = v55;
  v23[15] = v56;
  v23[16] = v46;
  v23[17] = a8;
  v23[18] = v27;
  v23[19] = v64;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v23, vt_Copy_422vf_rgb_xf444_GCD);
  if (!v11)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v11;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_68:
  if (v11 == 255)
  {
    goto LABEL_69;
  }

  return v24;
}

uint64_t *vt_Copy_422vf_rgb_xf444_GCD(void *a1, uint64_t a2)
{
  v10 = *(a1 + 36);
  v11 = *a1;
  v12 = *(a1 + 28) * a2 / v11 + *(a1 + 44);
  v13 = a1[14];
  v15 = a1[12];
  v14 = a1[13];
  v16 = v14 * a2 / v11;
  v17 = v16 + a1[15];
  v18 = (v14 + v14 * a2) / v11 - v16;
  v19 = a1[7];
  v20 = a1[8];
  v22 = a1[16];
  result = a1[17];
  v23 = v20[2];
  v24 = v19[2];
  v25 = result[2];
  v26 = v22[2];
  v27 = (v26 + v25 * v17 + 2 * v13);
  if (v18 >= 1)
  {
    v28 = 0;
    v29 = a1[19];
    v30 = v15 & 0xFFFFFFFE;
    v31 = *v20;
    v32 = v20[1];
    v33 = *result;
    result = result[1];
    *&v34 = *(v29 + 128);
    *&v35 = *(v29 + 136);
    v36 = *&v35 / *&v34;
    LOWORD(v34) = *(v29 + 140);
    v37 = v34;
    LOWORD(v35) = *(v29 + 142);
    v38 = v35;
    v39 = v36 * *v29;
    v40 = v36 * *(v29 + 8);
    v41 = v36 * *(v29 + 16);
    v42 = v36 * *(v29 + 20);
    v43 = *(v29 + 28);
    v44 = v36 * v43;
    LOWORD(v43) = *(v29 + 144);
    v45 = LODWORD(v43);
    LOWORD(v3) = *(v29 + 146);
    v46 = v3;
    LOWORD(v4) = *(v29 + 148);
    v47 = v4;
    LOWORD(v5) = *(v29 + 150);
    v48 = v5;
    LOWORD(v6) = *(v29 + 152);
    v49 = v6;
    v50 = *(v29 + 36);
    v51 = *(v29 + 40);
    v52 = *(v29 + 44);
    v53 = *(v29 + 48);
    v54 = *(v29 + 52);
    v55 = *(v29 + 56);
    v56 = *(v29 + 60);
    v57 = *(v29 + 64);
    v58 = *(v29 + 68);
    v59 = *(v29 + 132);
    if (v59 >= 0x11)
    {
      v60 = 0;
    }

    else
    {
      v60 = 16 - v59;
    }

    v62 = *v22;
    v61 = v22[1];
    v63 = v61 + result * v17 + 2 * v13;
    if (!v61)
    {
      v63 = 0;
    }

    v64 = v62 + v33 * v17 + 2 * v13;
    v66 = *v19;
    v65 = v19[1];
    v67 = v65 + v32 * v12 + v10;
    if (!v65)
    {
      v67 = 0;
    }

    v68 = (v66 + v31 * v12 + v10);
    do
    {
      if (v30 >= 1)
      {
        v69 = 0;
        v70 = v68;
        v71 = v64;
        v72 = v63;
        do
        {
          LOBYTE(v7) = *(v67 + v69);
          *&v73 = LODWORD(v7);
          v74 = *&v73 - v38;
          LOBYTE(v73) = *(v67 + v69 + 1);
          v75 = v73 - v38;
          v76 = v40 * v75;
          v77 = (v42 * v75) + (v74 * v41);
          v78 = v44 * v74;
          LOBYTE(v2) = *v70;
          v79 = v39 * (LODWORD(v2) - v37);
          v80 = v76 + v79;
          v81 = v79 + v77;
          v82 = v78 + v79;
          v83 = (((v51 * (v79 + v77)) + (v50 * (v76 + v79))) + (v52 * (v78 + v79))) + v45;
          v84 = v47;
          if (v83 <= v47)
          {
            v84 = v83;
            if (v83 < v45)
            {
              v84 = v45;
            }
          }

          LOBYTE(v83) = v70[1];
          *v71 = llroundf(v84) << v60;
          if (v72)
          {
            v85 = ((v46 + (v80 * v53)) + (v81 * v54)) + (v82 * v55);
            v86 = v49;
            if (v85 <= v49)
            {
              v86 = ((v46 + (v80 * v53)) + (v81 * v54)) + (v82 * v55);
              if (v85 < v48)
              {
                v86 = v48;
              }
            }

            v87 = ((v46 + (v80 * v56)) + (v81 * v57)) + (v82 * v58);
            *v72 = llroundf(v86) << v60;
            v88 = v49;
            if (v87 <= v49)
            {
              if (v87 < v48)
              {
                v88 = v48;
              }

              else
              {
                v88 = v87;
              }
            }

            v72[1] = llroundf(v88) << v60;
            v72 += 2;
          }

          v89 = v39 * (LODWORD(v83) - v37);
          v7 = v76 + v89;
          v90 = v77 + v89;
          v91 = v78 + v89;
          v92 = (((v51 * v90) + (v50 * v7)) + (v52 * v91)) + v45;
          v2 = v47;
          if (v92 <= v47)
          {
            v2 = (((v51 * v90) + (v50 * v7)) + (v52 * v91)) + v45;
            if (v92 < v45)
            {
              v2 = v45;
            }
          }

          v71[1] = llroundf(v2) << v60;
          if (v72)
          {
            v93 = ((v46 + (v7 * v53)) + (v90 * v54)) + (v91 * v55);
            v2 = v49;
            if (v93 <= v49)
            {
              v2 = ((v46 + (v7 * v53)) + (v90 * v54)) + (v91 * v55);
              if (v93 < v48)
              {
                v2 = v48;
              }
            }

            v7 = ((v46 + (v7 * v56)) + (v90 * v57)) + (v91 * v58);
            *v72 = llroundf(v2) << v60;
            v94 = v49;
            if (v7 <= v49)
            {
              v94 = v7;
              if (v7 < v48)
              {
                v94 = v48;
              }
            }

            v72[1] = llroundf(v94) << v60;
            v72 += 2;
          }

          v69 += 2;
          v70 += 2;
          v71 += 2;
        }

        while (v69 < v30);
      }

      v68 += v31;
      v67 += v32;
      v64 += v33;
      v63 += result;
      ++v28;
    }

    while (v28 != v18);
  }

  if (v24 && v26)
  {
    if (v18 >= 1)
    {
      v95 = 0;
      v96 = (v24 + v23 * v12 + v10);
      do
      {
        if (v15 >= 1)
        {
          v97 = v15;
          v98 = v27;
          v99 = v96;
          do
          {
            v100 = *v99++;
            *v98++ = v100 | (v100 << 8);
            --v97;
          }

          while (v97);
        }

        v96 += v23;
        v27 += v25;
        ++v95;
      }

      while (v95 != v18);
    }
  }

  else if (v26 && v18 >= 1)
  {
    do
    {
      if (v15 >= 1)
      {
        result = memset(v27, 255, 2 * v15);
      }

      v27 += v25;
      --v18;
    }

    while (v18);
  }

  *(a1 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = a8;
  v62 = a3;
  v68 = a5;
  v63 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v60 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a6;
  v64 = a6[1];
  v65 = v11;
  v18 = a6[2];
  v17 = a6[3];
  v58 = a1;
  v59 = v17;
  v20 = a6[4];
  v19 = a6[5];
  v66 = v16;
  v67 = v19;
  v22 = v14 + v13 != v12 || v20 + v18 != v16;
  if (v10 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_59:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v57 = a7;
  v27 = a9;
  v28 = v18 - 1;
  v29 = v13 - 1;
  if (v20)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v13;
    v30 = v14;
  }

  if (v20)
  {
    v31 = v20 + 1;
  }

  else
  {
    v28 = v18;
    v31 = v20;
  }

  if (v28)
  {
    v32 = v63;
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (4 * (v31 + v28) + 4) > *v61)
    {
      --v28;
      --v29;
    }

    else
    {
      ++v28;
      ++v66;
      ++v12;
      ++v29;
    }
  }

  else
  {
    v32 = v63;
  }

  if (v29 + v30 > v12)
  {
    v29 = v12 - v30;
  }

  if (v28 + v31 > v66)
  {
    v28 = v66 - v31;
  }

  if (v15 + v60 <= v65)
  {
    v35 = v60;
  }

  else
  {
    v35 = v65 - v15;
  }

  if (v67 + v59 <= v64)
  {
    v36 = v59;
  }

  else
  {
    v36 = v64 - v67;
  }

  if (v29 >= v28)
  {
    v37 = v28;
  }

  else
  {
    v37 = v29;
  }

  if (v35 >= v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v35;
  }

  v39 = v15 + v38 - 1;
  v40 = v37 + v30;
  if (v37 + v30 + *v32 * v39 <= *v68)
  {
    v45 = v62;
    if (*(v62 + 8) && ((v40 + 1 + ((v40 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v32[1] * v39 > v68[1])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else if (*(v62 + 16) && v40 + v32[2] * v39 > v68[2])
    {
      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }

    else
    {
      if ((*v61 * (v67 + v38 - 1) + 4 * (v37 + v31)) <= *a9)
      {
        goto LABEL_53;
      }

      v60 = v30;
      v41 = v10;
      v42 = v12;
      v43 = v15;
      v44 = a9;
    }
  }

  else
  {
    v60 = v30;
    v41 = v10;
    v42 = v12;
    v43 = v15;
    v44 = a9;
  }

  fig_log_get_emitter();
  v46 = FigSignalErrorAtGM();
  v45 = v62;
  v32 = v63;
  v27 = v44;
  v15 = v43;
  v12 = v42;
  v10 = v41;
  v30 = v60;
  if (v46)
  {
    v24 = v46;
    goto LABEL_58;
  }

LABEL_53:
  *v23 = v10;
  *(v23 + 4) = v12;
  v47 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v37;
  *(v23 + 28) = v38;
  *(v23 + 36) = v30;
  *(v23 + 44) = v15;
  v23[11] = v47;
  v23[12] = v37;
  v23[13] = v38;
  v23[14] = v31;
  v23[7] = v45;
  v23[8] = v32;
  v48 = v66;
  v49 = v67;
  v23[9] = v68;
  v23[10] = v48;
  v50 = v57;
  v23[15] = v49;
  v23[16] = v50;
  v23[17] = v61;
  v23[18] = v27;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD);
  if (!v10)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v10;
  while (1)
  {
    v54 = *v52++;
    v24 = v54;
    if (v54)
    {
      break;
    }

    if (!--v53)
    {
      v24 = 0;
      break;
    }
  }

LABEL_58:
  if (v10 == 255)
  {
    goto LABEL_59;
  }

  return v24;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_BGRA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 36);
  v8 = *(a1 + 24);
  v9 = *a1;
  v10 = *(a1 + 28) * a2 / v9 + *(a1 + 44);
  v11 = *(a1 + 13);
  v227 = *(a1 + 14);
  v12 = *(a1 + 19);
  v14 = *(a1 + 7);
  v13 = *(a1 + 8);
  v15 = *(a1 + 15);
  v16 = *(a1 + 16);
  v17 = *(a1 + 17);
  result = *v13;
  v19 = v13[1];
  v20 = v13[2];
  v21 = v14[1];
  v224 = *v14;
  v22 = v14[2];
  v23 = *v17;
  v207 = *v16;
  v24 = v12[16].u32[0];
  v25 = v12[19].u8[6];
  v26 = v11 * a2 / v9;
  v233[0] = v12[19].i8[6];
  v205 = v23 * (v26 + v15);
  v27 = v12[19].u8[7];
  v233[1] = v12[19].i8[7];
  v28 = v12[20].u8[0];
  v233[2] = v12[20].i8[0];
  v29 = v12[20].u8[1];
  v233[3] = v12[20].i8[1];
  v30 = v12[17].u16[2];
  v31 = v12[17].u16[3];
  v32 = v12->f32[0];
  v3.i32[0] = v12[1].i32[0];
  v33 = v12[2];
  v2.i32[0] = v12[3].i32[1];
  v230 = v12[9].f32[0];
  v229 = v12[9].f32[1];
  _S2 = v12[10].f32[0];
  _S3 = v12[10].f32[1];
  _S4 = v12[11].f32[0];
  _S5 = v12[11].f32[1];
  _S6 = v12[12].f32[0];
  _S7 = v12[12].f32[1];
  _S16 = v12[13].f32[0];
  _S17 = v12[13].f32[1];
  _S18 = v12[14].f32[0];
  _S19 = v12[14].f32[1];
  _S20 = v12[15].f32[0];
  v231 = 0u;
  v232 = 0u;
  v45 = (v11 + v11 * a2) / v9;
  do
  {
    v46 = 0;
    v47 = v233[v6];
    do
    {
      *((&v231 + ((v47 + 4 * v46) & 0xF8)) | (v47 + 4 * v46) & 7) = v5 + v46;
      ++v46;
    }

    while (v46 != 8);
    ++v6;
    v5 += 8;
  }

  while (v6 != 4);
  v48 = v45 - v26;
  if (v45 - v26 >= 1)
  {
    v49 = 0;
    v50 = v24;
    v51 = &v12[2068] + 4;
    v52 = v8 & 0xFFFFFFFE;
    v53 = 8191.0 / v50;
    v54 = v30;
    v55 = v31;
    _S24 = v53 * v32;
    v57 = &v12[20] + 4;
    __asm { FCVT            H8, S24 }

    *v4.i16 = v30;
    v228 = vdupq_lane_s16(v4, 0);
    v63 = -v31;
    v2.i32[1] = v3.i32[0];
    *v3.f32 = vmul_n_f32(*v2.f32, v53);
    *v2.f32 = vmul_n_f32(v33, v53);
    v226 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v222 = vmulq_n_f16(v226, v63);
    v223 = vdupq_lane_s32(vcvt_f16_f32(v2), 0);
    v64 = &v12[4116] + 4;
    __asm { FCVT            H0, S17 }

    v220 = _H0;
    v221 = vmulq_n_f16(v223, v63);
    __asm { FCVT            H0, S18 }

    v219 = _H0;
    __asm { FCVT            H0, S19 }

    v218 = _H0;
    __asm { FCVT            H0, S20 }

    v217 = _H0;
    _S0 = v230;
    __asm { FCVT            H0, S0 }

    v216 = *&_S0;
    _S0 = v229;
    __asm { FCVT            H0, S0 }

    v215 = *&_S0;
    __asm { FCVT            H0, S2 }

    v214 = *&_S0;
    __asm { FCVT            H0, S3 }

    v213 = *&_S0;
    __asm { FCVT            H0, S4 }

    v212 = *&_S0;
    __asm { FCVT            H0, S5 }

    v211 = *&_S0;
    __asm { FCVT            H0, S6 }

    v210 = *&_S0;
    __asm { FCVT            H0, S7 }

    v209 = *&_S0;
    __asm { FCVT            H0, S16 }

    v208 = *&_S0;
    v71 = v207 + v205 + 4 * v227;
    if (v22)
    {
      v72 = v22 + v20 * v10 + v7;
    }

    else
    {
      v72 = 0;
    }

    if (v21)
    {
      v73 = (v21 + v19 * v10 + v7);
    }

    else
    {
      v73 = 0;
    }

    v74 = (v224 + result * v10 + v7);
    LODWORD(v75) = v2.i32[1];
    LODWORD(v206) = HIDWORD(v2.u64[0]);
    LODWORD(v225) = v2.i64[0];
    v204 = v28 + 4;
    v203 = v27 + 4;
    v202 = v25 + 4;
    v201 = v29 + 4;
    v76.i64[0] = 0x9000900090009000;
    v76.i64[1] = 0x9000900090009000;
    do
    {
      if (v8 < 8)
      {
        v117 = 0;
        v116 = v73;
        v82 = v72;
        v81 = v71;
        v80 = v74;
      }

      else
      {
        v77 = 0;
        v79 = *(&v231 + 8);
        v78 = v231;
        v80 = v74;
        v81 = v71;
        v82 = v72;
        v83 = *(&v232 + 8);
        v84 = v232;
        do
        {
          v85 = *&v73[v77];
          v86 = 0;
          *v87.i8 = vzip1_s8(v85, 0);
          v87.u64[1] = vzip2_s8(v85, 0);
          v88 = vcvtq_f16_u16(v87);
          v89 = vmlaq_f16(v222, v226, v88);
          v90 = vmlaq_f16(v221, v223, v88);
          v91 = vuzp1q_s16(v90, v223);
          *v91.i8 = vadd_f16(*v91.i8, *&vuzp2q_s16(v90, v223));
          v92 = *v80++;
          *v93.i8 = vzip1_s8(v92, 0);
          v93.u64[1] = vzip2_s8(v92, 0);
          v94 = vzip1q_s16(v91, v91);
          v95 = vsubq_f16(vcvtq_f16_u16(v93), v228);
          v96 = vmlaq_n_f16(vtrn2q_s16(v89, v89), v95, _H8);
          v97 = vmlaq_n_f16(v94, v95, _H8);
          v98 = vmlaq_n_f16(vtrn1q_s16(v89, v89), v95, _H8);
          if (v82)
          {
            v99 = *v82;
            v82 += 8;
            v86 = v99;
          }

          v100 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v96, 0), v76));
          v101.i16[0] = *&v57[2 * v100.u16[0]];
          v101.i16[1] = *&v57[2 * v100.u16[1]];
          v101.i16[2] = *&v57[2 * v100.u16[2]];
          v101.i16[3] = *&v57[2 * v100.u16[3]];
          v101.i16[4] = *&v57[2 * v100.u16[4]];
          v101.i16[5] = *&v57[2 * v100.u16[5]];
          v101.i16[6] = *&v57[2 * v100.u16[6]];
          v101.i16[7] = *&v57[2 * v100.u16[7]];
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v97, 0), v76));
          v103.i16[0] = *&v57[2 * v102.u16[0]];
          v103.i16[1] = *&v57[2 * v102.u16[1]];
          v103.i16[2] = *&v57[2 * v102.u16[2]];
          v103.i16[3] = *&v57[2 * v102.u16[3]];
          v103.i16[4] = *&v57[2 * v102.u16[4]];
          v103.i16[5] = *&v57[2 * v102.u16[5]];
          v103.i16[6] = *&v57[2 * v102.u16[6]];
          v103.i16[7] = *&v57[2 * v102.u16[7]];
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v98, 0), v76));
          v105.i16[0] = *&v57[2 * v104.u16[0]];
          v105.i16[1] = *&v57[2 * v104.u16[1]];
          v105.i16[2] = *&v57[2 * v104.u16[2]];
          v105.i16[3] = *&v57[2 * v104.u16[3]];
          v105.i16[4] = *&v57[2 * v104.u16[4]];
          v105.i16[5] = *&v57[2 * v104.u16[5]];
          v105.i16[6] = *&v57[2 * v104.u16[6]];
          v105.i16[7] = *&v57[2 * v104.u16[7]];
          v106 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v101, v220), v103, v219), v105, v218), vmaxq_f16(vmaxq_f16(v101, v103), v105), v217), 0), v76));
          v107.i16[0] = *&v51[2 * v106.u16[0]];
          v107.i16[1] = *&v51[2 * v106.u16[1]];
          v107.i16[2] = *&v51[2 * v106.u16[2]];
          v107.i16[3] = *&v51[2 * v106.u16[3]];
          v107.i16[4] = *&v51[2 * v106.u16[4]];
          v107.i16[5] = *&v51[2 * v106.u16[5]];
          v107.i16[6] = *&v51[2 * v106.u16[6]];
          v107.i16[7] = *&v51[2 * v106.u16[7]];
          v108 = vmulq_f16(v101, v107);
          v109 = vmulq_f16(v103, v107);
          v110 = vmulq_f16(v105, v107);
          v111 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, v213), v109, v212), v110, v211);
          v234.val[1] = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v110, v208), v109, v209), v108, v210);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v108, v216), v109, v215), v110, v214), 0), v76));
          v109.i16[0] = *&v64[2 * v112.u16[0]];
          v109.i16[1] = *&v64[2 * v112.u16[1]];
          v109.i16[2] = *&v64[2 * v112.u16[2]];
          v109.i16[3] = *&v64[2 * v112.u16[3]];
          v109.i16[4] = *&v64[2 * v112.u16[4]];
          v109.i16[5] = *&v64[2 * v112.u16[5]];
          v109.i16[6] = *&v64[2 * v112.u16[6]];
          v109.i16[7] = *&v64[2 * v112.u16[7]];
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v111, 0), v76));
          v105.i16[0] = *&v64[2 * v113.u16[0]];
          v105.i16[1] = *&v64[2 * v113.u16[1]];
          v105.i16[2] = *&v64[2 * v113.u16[2]];
          v105.i16[3] = *&v64[2 * v113.u16[3]];
          v105.i16[4] = *&v64[2 * v113.u16[4]];
          v105.i16[5] = *&v64[2 * v113.u16[5]];
          v105.i16[6] = *&v64[2 * v113.u16[6]];
          v105.i16[7] = *&v64[2 * v113.u16[7]];
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v234.val[1], 0), v76));
          v112.i16[0] = *&v64[2 * v114.u16[0]];
          v112.i16[1] = *&v64[2 * v114.u16[1]];
          v112.i16[2] = *&v64[2 * v114.u16[2]];
          v112.i16[3] = *&v64[2 * v114.u16[3]];
          v112.i16[4] = *&v64[2 * v114.u16[4]];
          v112.i16[5] = *&v64[2 * v114.u16[5]];
          v112.i16[6] = *&v64[2 * v114.u16[6]];
          v112.i16[7] = *&v64[2 * v114.u16[7]];
          *v114.i8 = vorr_s8(v86, vceqd_s64(v82, 0));
          v115 = vdupq_n_s16(0x5BF8u);
          *v234.val[1].i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v115)));
          v234.val[0] = vuzp1q_s8(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v115)), vcvtq_u16_f16(vminq_f16(vmaxq_f16(v105, 0), v115)));
          v234.val[1].i64[1] = v114.i64[0];
          *&v75 = vqtbl2_s8(v234, v78);
          *(&v75 + 1) = vqtbl2_s8(v234, v79);
          *v112.i8 = vqtbl2_s8(v234, v84);
          v112.u64[1] = vqtbl2_s8(v234, v83);
          *v81 = v75;
          v81[1] = v112;
          v81 += 2;
          v77 += 8;
        }

        while (v77 < v8 - 7);
        v116 = &v73[v77];
        v117 = v8 & 0xFFFFFFF8;
      }

      if (v117 < v52)
      {
        v118 = v81 + v204;
        v119 = v81 + v203;
        v120 = v81 + v202;
        v121 = v81 + v201;
        do
        {
          LOBYTE(v75) = v116[1];
          v122 = v75 - v55;
          v123 = v3.u32[1];
          v124 = v3.f32[1] * v122;
          LOBYTE(v123) = v80->i8[0];
          v125 = v123 - v54;
          v126 = _S24 * v125;
          v127 = (v3.f32[1] * v122) + (_S24 * v125);
          v128 = 8191.0;
          if (v127 <= 8191.0)
          {
            v128 = (v3.f32[1] * v122) + (_S24 * v125);
            if (v127 < 0.0)
            {
              v128 = 0.0;
            }
          }

          LOBYTE(v125) = *v116;
          v129 = LODWORD(v125) - v55;
          v130 = (v206 * v122) + (v129 * v225);
          v131 = 8191.0;
          if ((v126 + v130) <= 8191.0)
          {
            v131 = v126 + v130;
            if ((v126 + v130) < 0.0)
            {
              v131 = 0.0;
            }
          }

          v132 = v3.i32[0];
          v133 = v3.f32[0] * v129;
          v134 = (v3.f32[0] * v129) + v126;
          v135 = 8191.0;
          if (v134 <= 8191.0)
          {
            v135 = v134;
            if (v134 < 0.0)
            {
              v135 = 0.0;
            }
          }

          LOBYTE(v132) = v80->i8[1];
          v136 = _S24 * (v132 - v54);
          v137 = v124 + v136;
          v138 = 8191.0;
          if (v137 <= 8191.0)
          {
            v138 = v137;
            if (v137 < 0.0)
            {
              v138 = 0.0;
            }
          }

          v139 = v130 + v136;
          v140 = 8191.0;
          if (v139 <= 8191.0)
          {
            v140 = v139;
            if (v139 < 0.0)
            {
              v140 = 0.0;
            }
          }

          v141 = v133 + v136;
          v142 = (v133 + v136) <= 8191.0;
          v143 = 8191.0;
          if (v142)
          {
            v143 = v141;
            if (v141 < 0.0)
            {
              v143 = 0.0;
            }
          }

          if (v82)
          {
            v144 = *v82;
            v145 = *(v82 + 1);
            v82 += 2;
          }

          else
          {
            v144 = 0;
            v145 = 0;
          }

          _H0 = *&v57[2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0))];
          __asm { FCVT            S11, H0 }

          _H0 = *&v57[2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0))];
          __asm { FCVT            S31, H0 }

          _H0 = *&v57[2 * llroundf(fminf(fmaxf(v135, 0.0), 8191.0))];
          __asm { FCVT            S9, H0 }

          _H10 = *&v57[2 * llroundf(fminf(fmaxf(v138, 0.0), 8191.0))];
          _H12 = *&v57[2 * llroundf(fminf(fmaxf(v140, 0.0), 8191.0))];
          _H13 = *&v57[2 * llroundf(fminf(fmaxf(v143, 0.0), 8191.0))];
          v155 = fmaxf(_S11, fmaxf(_S31, _S9));
          v156 = (((_S18 * _S31) + (_S17 * _S11)) + (_S19 * _S9)) + (_S20 * v155);
          v157 = 8191.0;
          if (v156 <= 8191.0)
          {
            v157 = (((_S18 * _S31) + (_S17 * _S11)) + (_S19 * _S9)) + (_S20 * v155);
            if (v156 < 0.0)
            {
              v157 = 0.0;
            }
          }

          __asm
          {
            FCVT            S10, H10
            FCVT            S12, H12
            FCVT            S13, H13
          }

          _H14 = *&v51[2 * llroundf(v157)];
          v162 = (((_S18 * _S12) + (_S17 * _S10)) + (_S19 * _S13)) + (_S20 * fmaxf(_S10, fmaxf(_S12, _S13)));
          v163 = 8191.0;
          if (v162 <= 8191.0)
          {
            v163 = v162;
            if (v162 < 0.0)
            {
              v163 = 0.0;
            }
          }

          __asm { FCVT            S0, H14 }

          v165 = _S11 * _S0;
          v166 = _S31 * _S0;
          v167 = _S9 * _S0;
          _H25 = *&v51[2 * llroundf(v163)];
          __asm { FCVT            S25, H25 }

          v170 = _S10 * _S25;
          v171 = _S12 * _S25;
          v172 = _S13 * _S25;
          v173 = ((v229 * v166) + (v165 * v230)) + (v167 * _S2);
          v174 = ((_S4 * v166) + (v165 * _S3)) + (v167 * _S5);
          v175 = ((_S7 * v166) + (v165 * _S6)) + (v167 * _S16);
          v176 = ((v229 * v171) + (v170 * v230)) + (v172 * _S2);
          v177 = ((_S4 * v171) + (v170 * _S3)) + (v172 * _S5);
          v178 = ((_S7 * v171) + (v170 * _S6)) + (v172 * _S16);
          v179 = *&v64[2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0))];
          v180 = *&v64[2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0))];
          v181 = *&v64[2 * llroundf(fminf(fmaxf(v175, 0.0), 8191.0))];
          v182 = *&v64[2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0))];
          v183 = *&v64[2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0))];
          *&v75 = fminf(fmaxf(v178, 0.0), 8191.0);
          v184 = *&v64[2 * llroundf(*&v75)];
          if (v82)
          {
            v185 = v144;
          }

          else
          {
            v185 = -1;
          }

          if (v82)
          {
            v186 = v145;
          }

          else
          {
            v186 = -1;
          }

          if (v179 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H13, #0 }

            if (_NF)
            {
              _S13 = 0.0;
            }

            else
            {
              __asm { FCVT            S13, H13 }
            }
          }

          else
          {
            _S13 = 255.0;
          }

          *(v120 - 4) = llroundf(_S13);
          if (v180 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H12, #0 }

            if (_NF)
            {
              _S12 = 0.0;
            }

            else
            {
              __asm { FCVT            S12, H12 }
            }
          }

          else
          {
            _S12 = 255.0;
          }

          *(v119 - 4) = llroundf(_S12);
          if (v181 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H11, #0 }

            if (_NF)
            {
              _S11 = 0.0;
            }

            else
            {
              __asm { FCVT            S11, H11 }
            }
          }

          else
          {
            _S11 = 255.0;
          }

          *(v118 - 4) = llroundf(_S11);
          *(v121 - 4) = v185;
          if (v182 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H10, #0 }

            if (_NF)
            {
              _S10 = 0.0;
            }

            else
            {
              __asm { FCVT            S10, H10 }
            }
          }

          else
          {
            _S10 = 255.0;
          }

          *v120 = llroundf(_S10);
          if (v183 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H9, #0 }

            if (_NF)
            {
              _S9 = 0.0;
            }

            else
            {
              __asm { FCVT            S9, H9 }
            }
          }

          else
          {
            _S9 = 255.0;
          }

          *v119 = llroundf(_S9);
          if (v184 <= COERCE_SHORT_FLOAT(23544))
          {
            __asm { FCMP            H30, #0 }

            if (_NF)
            {
              _S30 = 0.0;
            }

            else
            {
              __asm { FCVT            S30, H30 }
            }
          }

          else
          {
            _S30 = 255.0;
          }

          *v118 = llroundf(_S30);
          v118 += 8;
          *v121 = v186;
          v121 += 8;
          v117 += 2;
          v119 += 8;
          v120 += 8;
          v116 += 2;
          v80 = (v80 + 2);
        }

        while (v117 < v52);
      }

      v74 = (v74 + result);
      v73 += v19;
      v72 += v20;
      v71 += v23;
      ++v49;
    }

    while (v49 != v48);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}