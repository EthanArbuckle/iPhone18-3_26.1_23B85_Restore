uint64_t vt_Copy_420vf_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7)
{
  v15 = 2 * *result;
  v16 = *(result + 13);
  v17 = v16 * a2 / v15;
  v18 = 2 * ((v16 + v16 * a2) / v15 - v17);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(result + 24);
    v21 = *(result + 19);
    v22 = *(result + 7);
    v23 = *(result + 8);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = **(result + 17);
    v28 = v21[17].u16[2];
    v29 = v21[17].u16[3];
    v30.i32[0] = v21[3].i32[1];
    a3.i32[0] = 1.0;
    v31 = 1.0 / v21[16].u32[0];
    v32 = v28;
    v33 = v29;
    _S3 = v31 * v21->f32[0];
    *a7.i16 = v28;
    v35 = vdupq_lane_s16(a7, 0);
    __asm { FCVT            H5, S3 }

    v41 = -v29;
    v30.i32[1] = v21[1].i32[0];
    *v14.f32 = vmul_n_f32(v30, v31);
    v42 = vdupq_lane_s32(vcvt_f16_f32(v14), 0);
    *v7.f32 = vmul_n_f32(v21[2], v31);
    v127 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    v128 = v42;
    v43 = vmulq_n_f16(v127, v41);
    v125 = v43;
    v126 = vmulq_n_f16(v42, v41);
    v45 = v22[1];
    v44 = v22[2];
    v46 = *(result + 44) + 2 * (*(result + 28) * a2 / v15);
    v47 = *v22;
    v48 = v45 + v25 * (v46 / 2);
    v49 = *(result + 36);
    v50 = **(result + 16) + v27 * (*(result + 15) + 2 * v17) + 16 * *(result + 14);
    if (v44)
    {
      v51 = (v44 + v26 * v46 + v49);
    }

    else
    {
      v51 = 0;
    }

    v52 = (v48 + v49);
    v53 = (v47 + v24 * v46 + v49);
    v54 = v14.f32[1];
    v55 = v7.f32[1];
    __asm { FMOV            V23.4S, #1.0 }

    v123 = v7.i32[0];
    v124 = v14.i32[0];
    v121 = v7.f32[1];
    v122 = v14.f32[1];
    do
    {
      v57 = v53 + v24;
      v58 = v51 + v26;
      v59 = v50 + v27;
      if (v20 < 8)
      {
        v108 = 0;
        v107 = v52;
        v63 = (v51 + v26);
        v62 = (v53 + v24);
        v61 = v50 + v27;
      }

      else
      {
        v60 = 0;
        v61 = v50 + v27;
        v62 = (v53 + v24);
        v63 = (v51 + v26);
        do
        {
          if (v51)
          {
            v64 = *v51++;
            v65 = v64;
            v66 = *v63++;
            *v67.i8 = vzip1_s8(v65, 0);
            v67.u64[1] = vzip2_s8(v65, 0);
            v68 = vcvtq_f16_u16(v67);
            v69 = vdupq_n_s16(0x1C04u);
            v70 = vmulq_f16(v68, v69);
            v71 = vcvtq_f32_f16(*v70.i8);
            *v72.i8 = vzip1_s8(v66, 0);
            v72.u64[1] = vzip2_s8(v66, 0);
            v73 = vcvtq_f32_f16(*&vextq_s8(v70, v70, 8uLL));
            v74 = vmulq_f16(vcvtq_f16_u16(v72), v69);
            v75 = vcvtq_f32_f16(*v74.i8);
            v76 = vcvtq_f32_f16(*&vextq_s8(v74, v74, 8uLL));
          }

          else
          {
            v73 = _Q23;
            v71 = _Q23;
            v75 = _Q23;
            v76 = _Q23;
          }

          v77 = *&v52[v60];
          *v78.i8 = vzip1_s8(v77, 0);
          v78.u64[1] = vzip2_s8(v77, 0);
          v79 = vcvtq_f16_u16(v78);
          v80 = vmlaq_f16(v126, v128, v79);
          v81 = vmlaq_f16(v125, v127, v79);
          v82 = vtrn2q_s16(v80, v80);
          v83 = vtrn1q_s16(v80, v80);
          v84 = vuzp1q_s16(v81, a3);
          *v84.i8 = vadd_f16(*v84.i8, *&vuzp2q_s16(v81, a3));
          v85 = *v53++;
          *v86.i8 = vzip1_s8(v85, 0);
          v86.u64[1] = vzip2_s8(v85, 0);
          v87 = vzip1q_s16(v84, v84);
          v88 = *v62++;
          *v89.i8 = vzip1_s8(v88, 0);
          v89.u64[1] = vzip2_s8(v88, 0);
          v90 = vsubq_f16(vcvtq_f16_u16(v86), v35);
          v8 = vsubq_f16(vcvtq_f16_u16(v89), v35);
          v10 = vmlaq_n_f16(v82, v90, _H5);
          v91 = vmlaq_n_f16(v82, v8, _H5);
          v42 = vmlaq_n_f16(v87, v90, _H5);
          v11 = vmlaq_n_f16(v87, v8, _H5);
          v43 = vmlaq_n_f16(v83, v90, _H5);
          v92 = vcvtq_f32_f16(*v10.i8);
          v93 = vcvtq_f32_f16(*v42.i8);
          v94 = vcvtq_f32_f16(*v43.i8);
          v9 = vextq_s8(v10, v10, 8uLL).u64[0];
          v95 = vcvtq_f32_f16(v9);
          v42.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
          v96 = vcvtq_f32_f16(*v42.i8);
          v97 = vcvtq_f32_f16(*&vextq_s8(v43, v43, 8uLL));
          v98 = v50 + 128;
          vst4q_f32(v50, *(&v71 - 3));
          v99 = (v50 + 64);
          vst4q_f32(v99, *(&v73 - 3));
          v12 = vmlaq_n_f16(v83, v8, _H5);
          v100 = vcvtq_f32_f16(*v91.i8);
          v101 = vcvtq_f32_f16(*v11.i8);
          v13 = vcvtq_f32_f16(*v12.i8);
          v102 = vcvtq_f32_f16(*&vextq_s8(v91, v91, 8uLL));
          v103 = vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL));
          v43.i64[0] = vextq_s8(v12, v12, 8uLL).u64[0];
          v104 = vcvtq_f32_f16(*v43.i8);
          v105 = v61 + 128;
          vst4q_f32(v61, *(&v13 - 2));
          v106 = (v61 + 64);
          vst4q_f32(v106, *(&v76 - 3));
          v50 = v98;
          v61 = v105;
          v60 += 8;
        }

        while (v60 < v20 - 7);
        v107 = &v52[v60];
        v108 = v20 & 0xFFFFFFF8;
        v7.i32[0] = v123;
        v14.i32[0] = v124;
        v55 = v121;
        v54 = v122;
      }

      while (v108 < (v20 & 0xFFFFFFFE))
      {
        if (v51)
        {
          v43.i8[0] = v51->i8[0];
          v42.i8[0] = v51->i8[1];
          v51 = (v51 + 2);
          v8.i8[0] = v63->i8[0];
          v9.i8[0] = v63->i8[1];
          v63 = (v63 + 2);
          v10.i32[0] = 998277249;
          v109 = v43.u32[0] * 0.0039216;
          v110 = v42.u32[0] * 0.0039216;
          v111 = v8.u32[0] * 0.0039216;
          *v42.i32 = v9.u32[0];
          v112 = v9.u32[0] * 0.0039216;
        }

        else
        {
          v109 = 0.0;
          v110 = 0.0;
          v111 = 0.0;
          v112 = 0.0;
        }

        v42.i8[0] = *v107;
        v113 = v42.u32[0] - v33;
        v8.i8[0] = v107[1];
        v114 = v8.u32[0] - v33;
        v115 = v54 * v114;
        *v8.i32 = (v55 * v114) + (v113 * v7.f32[0]);
        *v42.i32 = v14.f32[0] * v113;
        v10.i8[0] = v53->i8[0];
        v116 = _S3 * (v10.u32[0] - v32);
        v11.i8[0] = v53->i8[1];
        *v11.i32 = _S3 * (v11.u32[0] - v32);
        v12.i8[0] = v62->i8[0];
        *v12.i32 = _S3 * (v12.u32[0] - v32);
        v13.i8[0] = v62->i8[1];
        v13.f32[0] = v13.u32[0] - v32;
        v117 = v115 + v116;
        v118 = v116 + *v8.i32;
        *v10.i32 = *v42.i32 + v116;
        if (!v51)
        {
          v109 = 1.0;
        }

        *v50 = v117;
        *(v50 + 4) = v118;
        *(v50 + 8) = v10.i32[0];
        *(v50 + 12) = v109;
        *(v50 + 16) = v115 + *v11.i32;
        *(v50 + 20) = *v8.i32 + *v11.i32;
        v119 = _S3 * v13.f32[0];
        *v10.i32 = *v42.i32 + *v11.i32;
        *v11.i32 = v115 + *v12.i32;
        v13.f32[0] = *v8.i32 + *v12.i32;
        *v12.i32 = *v42.i32 + *v12.i32;
        *v9.i32 = v115 + v119;
        *v8.i32 = *v8.i32 + v119;
        if (!v51)
        {
          v110 = 1.0;
        }

        *(v50 + 24) = v10.i32[0];
        *(v50 + 28) = v110;
        *v61 = v11.i32[0];
        *(v61 + 4) = v13.i32[0];
        v120 = *v42.i32 + v119;
        if (!v51)
        {
          v111 = 1.0;
        }

        *(v61 + 8) = v12.i32[0];
        *(v61 + 12) = v111;
        if (v51)
        {
          *v43.i32 = v112;
        }

        else
        {
          *v43.i32 = 1.0;
        }

        *(v61 + 16) = v9.i32[0];
        *(v61 + 20) = v8.i32[0];
        v108 += 2;
        v107 += 2;
        v53 = (v53 + 2);
        *(v61 + 24) = v120;
        *(v61 + 28) = v43.i32[0];
        v62 = (v62 + 2);
        v50 += 32;
        v61 += 32;
      }

      v53 = &v57[v24];
      v52 += v25;
      v51 = (v58 + v26);
      v50 = v59 + v27;
      v19 += 2;
    }

    while (v19 < v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(a3 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(a3 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = a3, fig_log_get_emitter(), v20 = FigSignalErrorAtGM(), a3 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5)
{
  v13 = 2 * *result;
  v14 = *(result + 13);
  v15 = v14 * a2 / v13;
  v16 = 2 * ((v14 + v14 * a2) / v13 - v15);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(result + 19);
    v19 = *(result + 24) & 0xFFFFFFFE;
    v21 = *(result + 7);
    v20 = *(result + 8);
    v22 = *v20;
    v23 = v20[1];
    v24 = v20[2];
    v25 = *(v18 + 128);
    LOWORD(a4) = *(v18 + 140);
    LOWORD(a5) = *(v18 + 142);
    v26 = *v18;
    v27 = *(v18 + 8);
    v28 = *(v18 + 16);
    v29 = *(v18 + 20);
    v30 = *(v18 + 28);
    v31 = *(result + 44) + 2 * (*(result + 28) * a2 / v13);
    v32 = **(result + 17);
    v33 = 1.0 / v25;
    v34 = LODWORD(a4);
    v35 = LODWORD(a5);
    v36 = v33 * v26;
    v37 = v33 * v27;
    v38 = v33 * v28;
    v39 = v33 * v29;
    v40 = v33 * v30;
    v41 = (**(result + 16) + v32 * (*(result + 15) + 2 * v15) + 16 * *(result + 14));
    v42 = v21[2];
    v43 = v42 + v31 * v24;
    v44 = *v21 + v31 * v22;
    v45 = v21[1] + v31 / 2 * v23;
    v46 = *(result + 36);
    if (v42)
    {
      v47 = (v43 + v46);
    }

    else
    {
      v47 = 0;
    }

    v48 = (v44 + v46);
    v49 = v45 + v46;
    do
    {
      v50 = &v48[v22];
      v51 = &v47[v24];
      v52 = v41 + v32;
      if (v19 >= 1)
      {
        v53 = 0;
        v54 = (v41 + v32);
        v55 = &v48[v22];
        v56 = &v47[v24];
        do
        {
          if (v47)
          {
            LOBYTE(v5) = *v47;
            LOBYTE(v6) = v47[1];
            v47 += 2;
            LOBYTE(v7) = *v56;
            LOBYTE(v8) = v56[1];
            v56 += 2;
            v57 = LODWORD(v5) * 0.0039216;
            v58 = LODWORD(v6) * 0.0039216;
            v59 = LODWORD(v7) * 0.0039216;
            v6 = LODWORD(v8) * 0.0039216;
          }

          else
          {
            v57 = 0.0;
            v58 = 0.0;
            v59 = 0.0;
            v6 = 0.0;
          }

          LOBYTE(v7) = *(v49 + v53);
          v60 = LODWORD(v7) - v35;
          LOBYTE(v8) = *(v49 + v53 + 1);
          v61 = LODWORD(v8) - v35;
          v62 = v37 * v61;
          v63 = (v39 * v61) + (v60 * v38);
          v7 = v40 * v60;
          LOBYTE(v9) = *v48;
          v64 = v36 * (LODWORD(v9) - v34);
          LOBYTE(v10) = v48[1];
          v65 = v36 * (LODWORD(v10) - v34);
          v48 += 2;
          LOBYTE(v11) = *v55;
          v66 = v36 * (LODWORD(v11) - v34);
          LOBYTE(v12) = v55[1];
          v67 = LODWORD(v12) - v34;
          v68 = v62 + v64;
          v69 = v64 + v63;
          v70 = v7 + v64;
          if (!v47)
          {
            v57 = 1.0;
          }

          *v41 = v68;
          v41[1] = v69;
          v41[2] = v70;
          v41[3] = v57;
          v41[4] = v62 + v65;
          v41[5] = v63 + v65;
          v71 = v36 * v67;
          v55 += 2;
          v9 = v7 + v65;
          v10 = v62 + v66;
          v12 = v63 + v66;
          v11 = v7 + v66;
          v72 = v62 + v71;
          v8 = v63 + v71;
          if (!v47)
          {
            v58 = 1.0;
          }

          v41[6] = v9;
          v41[7] = v58;
          *v54 = v10;
          v54[1] = v12;
          if (!v47)
          {
            v59 = 1.0;
          }

          v54[2] = v11;
          v54[3] = v59;
          if (v47)
          {
            v5 = v6;
          }

          else
          {
            v5 = 1.0;
          }

          v41 += 8;
          v54[4] = v72;
          v54[5] = v8;
          v54[6] = v7 + v71;
          v54[7] = v5;
          v54 += 8;
          v53 += 2;
        }

        while (v53 < v19);
      }

      v48 = &v50[v22];
      v49 += v23;
      v47 = &v51[v24];
      v41 = &v52[v32];
      v17 += 2;
    }

    while (v17 < v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 20));
  os_unfair_lock_opaque_low = LOBYTE((*v2)[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(*v2 + 5);
  if (os_unfair_lock_opaque_low)
  {
    goto LABEL_113;
  }

  v10 = *(a1 + 72);
  if (v10 > 1835365236)
  {
    if (v10 <= 1836278133)
    {
      switch(v10)
      {
        case 1835365237:
          goto LABEL_113;
        case 1835890028:
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          cf[0] = 0;
          v67 = 0;
          v68 = 0;
          if (!VTParavirtualizationCreateReplyAndByteStream(v12, 4, &v68, &v67) && !VTParavirtualizationMessageCopyCFDictionary(v12, 745566831, cf))
          {
            v13 = *(v11 + 24);
            v14 = cf[0];
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v15)
            {
              v15(v13, v14);
            }

            if (!VTParavirtualizationMessageAppendSInt32())
            {
LABEL_63:
              vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v11, v68);
            }
          }

LABEL_64:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v68)
          {
            CFRelease(v68);
          }

          v51 = v67;
          if (!v67)
          {
            goto LABEL_113;
          }

LABEL_112:
          CFRelease(v51);
          goto LABEL_113;
        case 1835626102:
          __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_1(v2, a1, v4, v5, v6, v7, v8, v9);
          goto LABEL_113;
      }

      goto LABEL_92;
    }

    if (v10 == 1836278134)
    {
      v11 = *(a1 + 32);
      v33 = *(a1 + 40);
      cf[0] = 0;
      v67 = 0;
      v68 = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v33, 4, &v68, &v67))
      {
        v34 = *(v11 + 24);
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v35)
        {
          v35(v34, *MEMORY[0x1E695E480], cf);
        }

        if (!VTParavirtualizationMessageAppendSInt32() && (!cf[0] || !VTParavirtualizationMessageAppendCFDictionary(v67, 745566831, cf[0])))
        {
          goto LABEL_63;
        }
      }

      goto LABEL_64;
    }

    if (v10 != 1836279156)
    {
LABEL_92:
      LODWORD(v67) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSignalErrorAtGM();
      goto LABEL_113;
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    cf[0] = 0;
    v67 = 0;
    v68 = 0;
    *type = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v22, 4, &v67, type) || VTParavirtualizationMessageCopyCFPropertyList(v22, 745235833, cf))
    {
      goto LABEL_76;
    }

    if (cf[0] && (v23 = CFGetTypeID(cf[0]), v23 == CFStringGetTypeID()))
    {
      if (!VTParavirtualizationMessageCopyCFPropertyList(v22, 745955692, &v68))
      {
        v24 = cf[0];
        v25 = v68;
        CMBaseObject = VTMotionEstimationProcessorGetCMBaseObject(*(v21 + 24));
        v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v27)
        {
          v27(CMBaseObject, v24, v25);
        }

        if (!VTParavirtualizationMessageAppendSInt32())
        {
LABEL_75:
          vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v21, v67);
        }
      }
    }

    else
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_3();
    }

LABEL_76:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v68)
    {
      CFRelease(v68);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    v51 = *type;
    if (*type)
    {
      goto LABEL_112;
    }

    goto LABEL_113;
  }

  if (v10 <= 1835364453)
  {
    if (v10 != 1835233136)
    {
      if (v10 == 1835230834)
      {
        __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_4(v2, a1, v4, v5, v6, v7, v8, v9);
        goto LABEL_113;
      }

      goto LABEL_92;
    }

    v21 = *(a1 + 32);
    v28 = *(a1 + 40);
    cf[0] = 0;
    v67 = 0;
    v68 = 0;
    *type = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v28, 4, &v67, type) || VTParavirtualizationMessageCopyCFPropertyList(v28, 745235833, cf))
    {
      goto LABEL_76;
    }

    if (cf[0] && (v29 = CFGetTypeID(cf[0]), v29 == CFStringGetTypeID()))
    {
      v30 = cf[0];
      v31 = VTMotionEstimationProcessorGetCMBaseObject(*(v21 + 24));
      v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v32)
      {
        v32(v31, v30, *MEMORY[0x1E695E480], &v68);
      }

      if (!VTParavirtualizationMessageAppendSInt32() && (!v68 || !VTParavirtualizationMessageAppendCFPropertyList()))
      {
        goto LABEL_75;
      }
    }

    else
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_2();
    }

    goto LABEL_76;
  }

  if (v10 == 1835364454)
  {
    v36 = *(a1 + 32);
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v39 = *(a1 + 64);
    v65 = 0;
    v67 = 0;
    v68 = 0;
    *type = 0;
    v40 = *MEMORY[0x1E695E480];
    v41 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    theArray = 0;
    v43 = CFArrayCreateMutable(v40, 0, v41);
    v63 = 0;
    v62 = 0;
    v60 = 0;
    pixelBufferOut = 0;
    if (v43)
    {
      if (Mutable)
      {
        if (v39 == 2)
        {
          if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v37, 0, &v65, 0) && !VTParavirtualizationCreateReplyAndByteStream(v37, 4, &v68, &v67) && !VTParavirtualizationMessageGetSInt64())
          {
            v44 = *type;
            v45 = *v38;
            if (!CVPixelBufferCreateWithIOSurface(v40, v45, 0, &pixelBufferOut))
            {
              CFArrayAppendValue(Mutable, pixelBufferOut);
              FigCFArrayAppendInt64();
              if (!CVPixelBufferCreateWithIOSurface(v40, v45, 0, &v60))
              {
                CFArrayAppendValue(Mutable, v60);
                FigCFArrayAppendInt64();
                if (!VTParavirtualizationMessageCopyCFUUIDArray())
                {
                  v46 = 0;
                  v47 = theArray;
                  while (1)
                  {
                    v48 = v47 ? CFArrayGetCount(v47) : 0;
                    if (v46 >= v48)
                    {
                      break;
                    }

                    ValueAtIndex = CFArrayGetValueAtIndex(v47, v46);
                    v50 = CFArrayGetValueAtIndex(Mutable, v46);
                    cf[0] = 0;
                    FigCFArrayGetInt64AtIndex();
                    ++v46;
                    if (vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(v36, v44, v50, ValueAtIndex, cf[0]))
                    {
                      goto LABEL_96;
                    }
                  }

                  VTParavirtualizationMessageGetUInt32();
                  if (!v52 && !VTParavirtualizationMessageCopyCFDictionary(v37, 745366895, &v63))
                  {
                    dispatch_group_enter(*(v36 + 208));
                    v53 = *(v36 + 24);
                    v55 = v60;
                    v54 = pixelBufferOut;
                    v56 = v62;
                    v57 = v63;
                    v58 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                    if (!v58 || v58(v53, v44, v54, v55, v56, v57))
                    {
                      dispatch_group_leave(*(v36 + 208));
                    }

                    if (!VTParavirtualizationMessageAppendSInt32())
                    {
                      vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v36, v68);
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_5();
        }
      }

      else
      {
        __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_6();
      }
    }

    else
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_7();
    }

LABEL_96:
    if (v60)
    {
      CFRelease(v60);
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v68)
    {
      CFRelease(v68);
    }

    if (v67)
    {
      CFRelease(v67);
    }

    if (v63)
    {
      CFRelease(v63);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    if (Mutable)
    {
      v51 = Mutable;
      goto LABEL_112;
    }
  }

  else
  {
    if (v10 != 1835365236)
    {
      goto LABEL_92;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    cf[0] = 0;
    v67 = 0;
    v68 = 0;
    if (!VTParavirtualizationCreateReplyAndByteStream(v17, 4, cf, &v68))
    {
      VTParavirtualizationMessageGetCMVideoDimensions();
      if (!v18)
      {
        v19 = *(v16 + 24);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v20)
        {
          v20(v19, v67, v16 + 40);
        }

        if (!VTParavirtualizationMessageAppendSInt32())
        {
          vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v16, cf[0]);
        }
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    v51 = v68;
    if (v68)
    {
      goto LABEL_112;
    }
  }

LABEL_113:
  free(*(a1 + 48));
  free(*(a1 + 56));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  FigSimpleMutexLock();
  v10 = *(a1 + 200);
  if (v10 || (callBacks.version = 0, callBacks.retain = vtClonePixelBufferSurfaceStuff, callBacks.copyDescription = 0, callBacks.equal = 0, callBacks.release = vtFreePixelBufferSurfaceStuff, v10 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks), (*(a1 + 200) = v10) != 0))
  {
    v11 = 0;
LABEL_4:
    for (i = CFArrayGetCount(v10); ; i = 0)
    {
      v13 = *(a1 + 200);
      if (v11 >= i)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v13, v11);
      v15 = MEMORY[0x193AE2470](ValueAtIndex);
      if (v15)
      {
        v16 = v15;
        CFRelease(v15);
        if (v16 == a3)
        {
          goto LABEL_13;
        }
      }

      ++v11;
      v10 = *(a1 + 200);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    CFArrayAppendValue(v13, 0);
    v17 = *(a1 + 200);
    Count = CFArrayGetCount(v17);
    v19 = CFArrayGetValueAtIndex(v17, Count - 1);
    if (!v19)
    {
LABEL_13:
      v22 = 0;
      goto LABEL_16;
    }

    v20 = v19;
    v19[1] = a2;
    FigCFWeakReferenceStore();
    if (a4)
    {
      v21 = CFRetain(a4);
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    v20[2] = v21;
    v20[3] = a5;
  }

  else
  {
    v22 = FigSignalErrorAtGM();
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v22;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionCleanUpAfterProcessing(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 200);
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    Mutable = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), v5);
      v11 = MEMORY[0x193AE2470]();
      if (v11)
      {
        CFRelease(v11);
        ++v5;
      }

      else
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v8, 0, v9);
        }

        FigCFArrayAppendInt64();
        v12 = ValueAtIndex[2];
        if (v12)
        {
          if (!v6)
          {
            v6 = CFArrayCreateMutable(v8, 0, v9);
            v12 = ValueAtIndex[2];
          }

          CFArrayAppendValue(v6, v12);
          v13 = ValueAtIndex[2];
          if (v13)
          {
            CFRelease(v13);
            ValueAtIndex[2] = 0;
          }
        }

        CFArrayRemoveValueAtIndex(*(a1 + 200), v5);
        --v4;
      }
    }

    while (v5 < v4);
  }

  else
  {
    Mutable = 0;
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  v16 = 0;
  cf = 0;
  if (Mutable)
  {
    v14 = CFArrayGetCount(Mutable);
    if (v14 && !VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(Mutable, 0, v14, &cf) && !vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, cf))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v6 && CFArrayGetCount(v6) >= 1 && !VTParavirtualizationCreateMessageAndByteStream(1298428002, 0, a1 + 160, 0, &cf, &v16) && !VTParavirtualizationMessageAppendCFUUIDArray(v16, 745892139, v6))
      {
        vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, cf);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

void VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate(uint64_t a1)
{
  v1 = *(a1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = a1;
  dispatch_sync(v1, block);
}

uint64_t __VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  result = VTMotionEstimationProcessorGetCMBaseObject(*(*(a1 + 32) + 24));
  if (result)
  {
    v4 = result;
    VTable = CMBaseObjectGetVTable();
    v6 = *(VTable + 8);
    result = VTable + 8;
    v7 = *(v6 + 24);
    if (v7)
    {

      return v7(v4);
    }
  }

  return result;
}

intptr_t VTParavirtualizationHostMotionEstimationProcessorSessionCompleteInvalidate(intptr_t result)
{
  v1 = *(result + 208);
  if (v1)
  {
    v2 = result;
    v3 = dispatch_time(0, 2000000000);
    result = dispatch_group_wait(v1, v3);
    if (result)
    {
      v4 = 2;
      do
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 *= 2;
        VTMotionEstimationProcessorSessionCleanUpAfterProcessing(v2 + 40);
        v6 = *(v2 + 208);
        v7 = dispatch_time(0, 1000000000 * v4);
        result = dispatch_group_wait(v6, v7);
      }

      while (result);
    }
  }

  return result;
}

double vtParavirtualizationHostMotionEstimationProcessorSession_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtParavirtualizationHostMotionEstimationProcessorSession_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  VTParavirtualizationHostMotionEstimationProcessorSessionCleanUpAfterProcessing(a1);
  v3 = *(a1 + 200);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  _Block_release(*(a1 + 152));
  *(a1 + 152) = 0;
  v7 = *(a1 + 184);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
    v9 = *(a1 + 200);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 200) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 192) = 0;
  v10 = *(a1 + 208);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 208) = 0;
  }
}

__CFString *vtParavirtualizationHostMotionEstimationProcessorSession_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostMotionEstimationProcessorSession %p RC: %d processor %p", a1, v4, a1[3]);
  return Mutable;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 20));
  if (*(a1 + 16))
  {
    v6 = 1061109567;
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 152) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v4;
}

void *vtClonePixelBufferSurfaceStuff(uint64_t a1)
{
  result = MEMORY[0x193AE0CD0](a1, 32, 0x106004009C49B2ELL, 0);
  *result = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void vtFreePixelBufferSurfaceStuff(const __CFAllocator *a1, void *a2)
{
  FigCFWeakReferenceStore();
  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
    a2[2] = 0;
  }

  CFAllocatorDeallocate(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef a9, uint64_t a10)
{
  v11 = *(a2 + 40);
  a9 = 0;
  a10 = 0;

  return VTParavirtualizationCreateReplyAndByteStream(v11, 4, &a9, &a10);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return VTParavirtualizationMessageAppendCFDictionary(a11, 745562721, v11);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMBlockBufferRef *a5, void *a6)
{

  return VTParavirtualizationCreateMessageAndByteStream(a1, 2, a3, 0, a5, a6);
}

void vtDecompressionSubDuctFinishAsynchronousTransfers(uint64_t a1)
{
  if (*(a1 + 160))
  {
    dispatch_group_wait(*(a1 + 168), 0xFFFFFFFFFFFFFFFFLL);
    v2 = *(a1 + 160);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 160) = 0;
    }

    v3 = *(a1 + 168);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 168) = 0;
    }
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(v4);
    *(a1 + 176) = 0;
  }
}

void vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = 1;
    FigMemoryBarrier();
    if (*(a1 + 8) >= 1)
    {
      v2 = 0;
      do
      {
        FigSemaphoreSignal();
        ++v2;
        v3 = *(a1 + 8);
      }

      while (v2 < v3);
      if (v3 >= 1)
      {
        v4 = 0;
        do
        {
          FigThreadJoin();
          *(a1 + 16 + 8 * v4++) = 0;
        }

        while (v4 < *(a1 + 8));
      }
    }

    *(a1 + 8) = 0;
    FigSemaphoreDestroy();
    FigSimpleMutexDestroy();
    FigSemaphoreDestroy();

    free(a1);
  }
}

uint64_t vtDecompressionSession_handleSessionTerminatedNotification()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

OSStatus VTDecompressionSessionWaitForAsynchronousFrames(VTDecompressionSessionRef session)
{
  v9 = *MEMORY[0x1E69E9840];
  if (session && !*(session + 16))
  {
    v3 = *(session + 3);
    if (v3)
    {

      return VTDecompressionSessionRemoteBridge_WaitForAsynchronousFrames(v3);
    }

    else
    {
      v4 = 5000000000;
      VTDecompressionSessionFinishDelayedFrames(session);
      for (; FigSemaphoreWaitRelative() == -12792; v4 *= 2)
      {
        v5 = *(session + 4);
        if (v5)
        {
          v6 = *v5;
          if (v6)
          {
            snprintf(__str, 0x20uLL, "%d", *(v6 + 64));
            vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(session + 4), v7);
            vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(session + 4), v7);
          }
        }
      }

      FigSemaphoreSignal();
      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTDecompressionSessionCreateWithOptions(uint64_t a1, CMFormatDescriptionRef desc, CFTypeRef a3, const __CFDictionary *a4, _OWORD *a5, const __CFDictionary *a6, uint64_t *a7)
{
  v117[16] = *MEMORY[0x1E69E9840];
  v7 = 4294954394;
  if (!desc || !a7)
  {
    return v7;
  }

  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69627B8]);
  if (Extension)
  {
    v16 = Extension;
    v17 = CFGetTypeID(Extension);
    if (v17 != CFArrayGetTypeID() || CFArrayGetCount(v16))
    {
      VTDecompressionSessionCreateWithOptions_cold_1(v117);
      return LODWORD(v117[0]);
    }
  }

  if (vtCheckTraceOnce_once != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_2();
  }

  *a7 = 0;
  v110 = a7;
  if (a6 && (Value = CFDictionaryGetValue(a6, @"AllowClientProcessDecode")) != 0)
  {
    v19 = CFEqual(Value, *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v19 = 0;
  }

  if (VTShouldRunVideoDecodersInProcess())
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode())
  {
    IsVideocodecd = FigServer_IsVideocodecd();
  }

  else
  {
    IsVideocodecd = FigServer_IsServerProcess();
  }

  v22 = IsVideocodecd;
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  MEMORY[0x193AE3010](&VTDecompressionSessionGetTypeID_sRegisterVTDecompressionSessionOnce, RegisterVTDecompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
LABEL_31:
    MutableCopy = 0;
    v7 = 4294954392;
    goto LABEL_141;
  }

  v24 = FigSemaphoreCreate();
  *(Instance + 72) = v24;
  if (!v24)
  {
    CFRelease(Instance);
    Instance = 0;
    goto LABEL_31;
  }

  if (vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_3();
  }

  *(Instance + 144) = vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled;
  if (vtDecompressionSessionSetupDolbyVision8p1_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_4();
  }

  *(Instance + 145) = vtDecompressionSessionSetupDolbyVision8p1_dolbyVision8p1Enabled;
  if (vtDecompressionSessionSetupDolbyVision10p4_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_5();
  }

  *(Instance + 146) = vtDecompressionSessionSetupDolbyVision10p4_dolbyVision10p4Enabled;
  LODWORD(cf) = 0;
  if (a6)
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  v26 = FigOSTransactionCreate();
  *(Instance + 152) = v26;
  if (!v26)
  {
    VTDecompressionSessionCreateWithOptions_cold_6(&cf, v117);
    MutableCopy = 0;
    v7 = LODWORD(v117[0]);
    goto LABEL_141;
  }

  v109 = a3;
  v104 = v22;
  if (FigDebugIsInternalBuild() && !v22)
  {
    CMFormatDescriptionGetMediaSubType(desc);
    LODWORD(v113) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!(v22 | v20))
  {
    v27 = VTDecompressionSessionRemoteBridge_Create(Instance, a1, desc, a3, a4, a5, a6, (Instance + 24));
    v28 = v110;
    if (!v27)
    {
      started = FigStartForwardingMediaServicesProcessDeathNotification();
      MutableCopy = 0;
      *(Instance + 160) = MEMORY[0x193AE2670](started);
      goto LABEL_39;
    }

    v7 = v27;
    MutableCopy = 0;
    goto LABEL_141;
  }

  VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
  MutableCopy = 0;
  v28 = v110;
  if (a4 && VideoDynamicRange >= 2)
  {
    if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA())
    {
      v31 = *MEMORY[0x1E695E4D0];
      v32 = *MEMORY[0x1E69660D0];
      if (v31 == CFDictionaryGetValue(a4, *MEMORY[0x1E69660D0]))
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        CFDictionaryRemoveValue(MutableCopy, v32);
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660C8], v31);
      }

      else
      {
        MutableCopy = 0;
      }

      a3 = v109;
    }

    else
    {
      MutableCopy = 0;
    }
  }

  if (MutableCopy)
  {
    v33 = MutableCopy;
  }

  else
  {
    v33 = a4;
  }

  *(Instance + 80) = v33;
  if (v33)
  {
    CFRetain(v33);
  }

  *(Instance + 88) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  *(Instance + 128) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (a5)
  {
    *(Instance + 96) = *a5;
  }

  *type = 0;
  v113 = 0;
  v34 = *(Instance + 48);
  v107 = (Instance + 48);
  v108 = Instance + 32;
  v111 = 0;
  Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
  if (Dimensions.width * Dimensions.height > 1073741820.0)
  {
LABEL_61:
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM();
    v36 = 0;
    v37 = 0;
    goto LABEL_133;
  }

  v38 = *(Instance + 88);
  if (v38)
  {
    v39 = CFRetain(v38);
    if (v39)
    {
      v37 = v39;
      v103 = 0;
      goto LABEL_67;
    }

    if (*(Instance + 88))
    {
      goto LABEL_61;
    }
  }

  v37 = 0;
  v103 = 1;
LABEL_67:
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v41 = MediaSubType;
  if (MediaSubType <= 1836415072)
  {
    if (MediaSubType <= 1718908527)
    {
      if (MediaSubType != 1635135537)
      {
        if (MediaSubType == 1667790435)
        {
          goto LABEL_94;
        }

        v42 = 1718908520;
        goto LABEL_88;
      }

LABEL_76:
      if (FigIsHDRAllowedOnDevice())
      {
        if ((LOBYTE(v117[0]) = 0, FigCFDictionaryGetBooleanIfPresent(), FigVideoFormatDescriptionConformsToDolbyVisionProfile10p0()) || *(Instance + 146) && FigVideoFormatDescriptionConformsToDolbyVisionProfile10p4() || *(Instance + 144) && vtFormatDescriptionIsPQ(desc) && VTIsHardwareDecodeSupported(0x61763031u))
        {
          if (v41 == 1902212657)
          {
            v41 = 1902403958;
          }

          else if (v41 == 1635135537)
          {
            v41 = 1684108849;
          }
        }
      }

      goto LABEL_96;
    }

    if (MediaSubType == 1718908528 || MediaSubType == 1751479857)
    {
      goto LABEL_94;
    }

    v43 = 1752589105;
    if (MediaSubType != 1752589105)
    {
      goto LABEL_96;
    }

    v44 = FigVideoFormatDescriptionContainsAlphaChannel() == 0;
    v45 = 1836415073;
LABEL_91:
    if (v44)
    {
      v41 = v43;
    }

    else
    {
      v41 = v45;
    }

    goto LABEL_94;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1836415073 || MediaSubType == 1869117027)
    {
      goto LABEL_94;
    }

    if (MediaSubType != 1902212657)
    {
      goto LABEL_96;
    }

    goto LABEL_76;
  }

  if (MediaSubType == 1902667126)
  {
    goto LABEL_94;
  }

  v43 = 1902671459;
  if (MediaSubType == 1902671459)
  {
    v44 = FigVideoFormatDescriptionContainsAlphaChannel() == 0;
    v45 = 1902998904;
    goto LABEL_91;
  }

  v42 = 1902998904;
LABEL_88:
  if (MediaSubType != v42)
  {
    goto LABEL_96;
  }

LABEL_94:
  if (FigIsHDRAllowedOnDevice())
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (FigVideoFormatDescriptionConformsToDolbyVisionProfile84())
    {
      goto LABEL_150;
    }

    v85 = MEMORY[0x1E6965F30];
    if (!*(Instance + 144))
    {
LABEL_189:
      if (!*(Instance + 145))
      {
        goto LABEL_96;
      }

      CMFormatDescriptionGetExtension(desc, *v85);
      if (!FigCFEqual() || !FigVideoFormatDescriptionConformsToDolbyVisionProfile81())
      {
        goto LABEL_96;
      }

LABEL_150:
      if (v41 <= 1836415072)
      {
        switch(v41)
        {
          case 0x63687663:
            v41 = 1667524657;
            break;
          case 0x68657631:
            v41 = 1685481573;
            break;
          case 0x68766331:
            v41 = 1685481521;
            break;
        }
      }

      else if (v41 > 1902671458)
      {
        if (v41 == 1902671459)
        {
          v41 = 1902405681;
        }

        else if (v41 == 1902998904)
        {
          v41 = 1902407032;
        }
      }

      else if (v41 == 1836415073)
      {
        v41 = 1684895096;
      }

      else if (v41 == 1902667126)
      {
        v41 = 1902405733;
      }

      goto LABEL_96;
    }

    cf = 0;
    v115 = 0;
    v114 = 0;
    CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F30]);
    if (FigCFEqual())
    {
      v86 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
      if (v86)
      {
        v87 = v86;
        v88 = CFGetTypeID(v86);
        if (v88 == CFDictionaryGetTypeID())
        {
          v89 = CFDictionaryGetValue(v87, @"hvcC");
          if (v89)
          {
            ValueAtIndex = v89;
            v91 = CFGetTypeID(v89);
            if (v91 == CFArrayGetTypeID())
            {
              ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
              if (!ValueAtIndex)
              {
                goto LABEL_188;
              }

LABEL_181:
              v93 = CFGetTypeID(ValueAtIndex);
              if (v93 == CFDataGetTypeID())
              {
                v117[0] = 0;
                if (!FigHEVCBridge_GetHEVCParameterSetAtIndex() && !FigHEVCBridge_GetSPSChromaFormatAndBitDepths() && HIBYTE(v115) == 1 && v115 == 10 && v114 == 10)
                {
                  a3 = v109;
                  goto LABEL_150;
                }
              }

              goto LABEL_188;
            }

            v92 = CFGetTypeID(ValueAtIndex);
            if (v92 == CFDataGetTypeID())
            {
              goto LABEL_181;
            }
          }
        }
      }
    }

LABEL_188:
    a3 = v109;
    goto LABEL_189;
  }

LABEL_96:
  *v108 = 0;
  *(Instance + 40) = 0;
  v46 = CFGetAllocator(Instance);
  v7 = VTSelectAndCreateVideoDecoderInstanceInternal(v41, v46, 0, v37, v34, type, &v111, v107);
  if (v7)
  {
LABEL_131:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v36 = 0;
LABEL_132:
    v28 = v110;
    goto LABEL_133;
  }

  theDict = v37;
  while (1)
  {
    v47 = CFGetAllocator(Instance);
    v48 = MEMORY[0x193AE0CD0](v47, 208, 0x10E004066CA4577, 0);
    v36 = v48;
    if (!v48)
    {
      v7 = 4294954392;
      goto LABEL_132;
    }

    v48[11] = 0u;
    v48[12] = 0u;
    v48[9] = 0u;
    v48[10] = 0u;
    v48[7] = 0u;
    v48[8] = 0u;
    v48[5] = 0u;
    v48[6] = 0u;
    v48[3] = 0u;
    v48[4] = 0u;
    v48[1] = 0u;
    v48[2] = 0u;
    *v48 = 0u;
    *(v48 + 10) = FigSimpleMutexCreate();
    if (v111)
    {
      v49 = 0;
    }

    else
    {
      v50 = CFGetAllocator(Instance);
      v51 = vtDecompressionSubDuctAllocate(v50, &v113);
      if (v51)
      {
        v7 = v51;
        goto LABEL_132;
      }

      v49 = v113;
      *v113 = Instance;
      v49[3] = v49;
      v49[4] = v36;
      v49[2] = FigFormatDescriptionRetain();
      v52 = *(Instance + 80);
      if (v52)
      {
        v49[9] = CFRetain(v52);
      }

      v53 = *(Instance + 128);
      if (v53)
      {
        v54 = CFDictionaryGetValue(v53, @"SharePixelBufferPool");
        v49[34] = v54;
        if (v54)
        {
          CFRetain(v54);
        }

        FigCFDictionaryGetInt32IfPresent();
        v55 = CFDictionaryGetValue(*(Instance + 128), @"LoggingIdentifier");
        v49[32] = v55;
        if (v55)
        {
          CFRetain(v55);
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
      }
    }

    *v36 = Instance;
    *(v36 + 64) = 1;
    *(v36 + 8) = *type;
    *(v36 + 24) = v36;
    *(v36 + 16) = v49;
    vtDecompressionDuctSetVideoFormatDescription(v36, desc);
    *(v36 + 120) = 0x7FFFFFFF;
    v56 = MEMORY[0x1E6960C70];
    *(v36 + 156) = *MEMORY[0x1E6960C70];
    *(v36 + 172) = *(v56 + 16);
    *(v36 + 148) = 0x7FFFFFFF;
    *(Instance + 32) = v36;
    *(Instance + 40) = v49;
    if ((v103 & 1) == 0)
    {
      v57 = CFDictionaryGetValue(theDict, @"DecoderUsage");
      if (v57)
      {
        v58 = v57;
        v59 = *(v36 + 8);
        v60 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v60)
        {
          v60(v59, @"DecoderUsage", v58);
        }
      }
    }

    v61 = *(Instance + 128);
    if (v61)
    {
      v62 = CFDictionaryGetValue(v61, @"SelectPixelFormatWithAlpha");
      if (v62)
      {
        v63 = v62;
        v64 = *(v36 + 8);
        v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v65)
        {
          v65(v64, @"SelectPixelFormatWithAlpha", v63);
        }
      }

      v66 = CFDictionaryGetValue(*(Instance + 128), @"WriteDirectlyToPlanesOfTargetCVPixelBuffer");
      if (v66)
      {
        v67 = v66;
        v68 = *(v36 + 8);
        v69 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v69)
        {
          v69(v68, @"WriteDirectlyToPlanesOfTargetCVPixelBuffer", v67);
        }
      }

      v70 = *(v36 + 8);
      v71 = *(Instance + 128);
      v72 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v72)
      {
        v72(v70, @"DecompressionSessionOptions", v71);
      }
    }

    v73 = *(v36 + 8);
    v74 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v74)
    {
      v75 = -12782;
      a3 = v109;
      goto LABEL_127;
    }

    a3 = v109;
    v75 = v74(v73, v36 + 16, desc);
    if (!v75)
    {
      break;
    }

LABEL_127:
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v75;
    }

    v76 = *(Instance + 48);
    v77 = CFGetAllocator(Instance);
    vtDecompressionDuctFinalize(v77, v36);
    v78 = CFGetAllocator(Instance);
    vtDecompressionSubDuctFinalize(v78, v49);
    v113 = 0;
    *v108 = 0;
    *(Instance + 40) = 0;
    v79 = CFGetAllocator(Instance);
    v37 = theDict;
    if (VTSelectAndCreateVideoDecoderInstanceInternal(v41, v79, 0, theDict, v76 + 1, type, &v111, v107))
    {
      goto LABEL_131;
    }
  }

  v117[0] = 0;
  IsPropertySupportedByVideoDecoder = vtDecompressionSessionIsPropertySupportedByVideoDecoder(Instance, @"EnableVideoToolboxQoS");
  v95 = MEMORY[0x1E695E480];
  v37 = theDict;
  if (!IsPropertySupportedByVideoDecoder)
  {
    goto LABEL_202;
  }

  v96 = *(v36 + 8);
  v97 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v97)
  {
    goto LABEL_202;
  }

  v98 = v97(v96, @"EnableVideoToolboxQoS", *v95, v117);
  v99 = v117[0];
  if (v98 || !v117[0])
  {
    v28 = v110;
    v37 = theDict;
    if (v117[0])
    {
      goto LABEL_203;
    }
  }

  else
  {
    v100 = CFGetTypeID(v117[0]);
    v37 = theDict;
    if (v100 == CFBooleanGetTypeID() && CFEqual(*MEMORY[0x1E695E4D0], v117[0]))
    {
      *(v36 + 112) = 1;
    }

LABEL_202:
    v99 = v117[0];
    v28 = v110;
    if (v117[0])
    {
LABEL_203:
      CFRelease(v99);
    }
  }

  *(v36 + 128) = 0x3FF0000000000000;
  cf = 0;
  a3 = v109;
  if (!VTDecompressionSessionCopyProperty(Instance, @"UsingHardwareAcceleratedVideoDecoder", *v95, &cf) && cf && (v101 = CFGetTypeID(cf), v101 == CFBooleanGetTypeID()))
  {
    if (CFEqual(*MEMORY[0x1E695E4D0], cf))
    {
      v102 = 1;
    }

    else
    {
      v102 = 2;
    }

    *(v36 + 200) = v102;
    a3 = v109;
    v37 = theDict;
  }

  else
  {
    *(v36 + 200) = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v7 = 0;
  *(Instance + 32) = v36;
  *(Instance + 40) = v49;
  v113 = 0;
  v36 = 0;
LABEL_133:
  v80 = CFGetAllocator(Instance);
  vtDecompressionDuctFinalize(v80, v36);
  v81 = CFGetAllocator(Instance);
  vtDecompressionSubDuctFinalize(v81, v113);
  if (v37)
  {
    CFRelease(v37);
  }

  if (!v7)
  {
    if (!*v108 || !*(*v108 + 8) || (CMNotificationCenterGetDefaultLocalCenter(), v82 = FigNotificationCenterAddWeakListener(), !v82))
    {
      *(Instance + 160) = MEMORY[0x193AE2670](v82, v83);
      if (v104)
      {
LABEL_140:
        v7 = 0;
        *(Instance + 168) = FigSimpleMutexCreate();
        *v28 = Instance;
        Instance = 0;
        goto LABEL_141;
      }

LABEL_39:
      vtDecompressionSetAllowBitstreamToChangeFrameDimensionsIfNecessary(desc, Instance);
      goto LABEL_140;
    }

    v7 = v82;
  }

LABEL_141:
  if (a3)
  {
    CFRelease(a3);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v7;
}

OSStatus VTDecompressionSessionSetMultiImageCallback(VTDecompressionSessionRef decompressionSession, VTDecompressionOutputMultiImageCallback outputMultiImageCallback, void *outputMultiImageRefcon)
{
  if (decompressionSession)
  {
    if (outputMultiImageCallback)
    {
      v4 = *(decompressionSession + 3);
      if (v4)
      {

        return VTDecompressionSessionRemoteBridge_SetMultiImageCallback(v4, outputMultiImageCallback, outputMultiImageRefcon);
      }

      else
      {
        v6 = *(decompressionSession + 14);
        if (v6 == outputMultiImageCallback || v6 == 0)
        {
          result = 0;
          *(decompressionSession + 14) = outputMultiImageCallback;
          *(decompressionSession + 15) = outputMultiImageRefcon;
        }

        else
        {
          VTDecompressionSessionSetMultiImageCallback_cold_1(&v8);
          return v8;
        }
      }
    }

    else
    {
      VTDecompressionSessionSetMultiImageCallback_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    VTDecompressionSessionSetMultiImageCallback_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(CFTypeRef *a1)
{
  MEMORY[0x193AE3010](&sCreatePropertiesHandledByVideoToolboxOnce_0, vtDecompressionSessionCreatePropertiesHandledByVideoToolbox);
  if (sVTDecompressionSessionPropertiesHandledByVideoToolbox)
  {
    *a1 = CFRetain(sVTDecompressionSessionPropertiesHandledByVideoToolbox);
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t vtDecompressionSubDuctSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3, char *a4)
{
  if (CFEqual(@"PixelBufferPool", a2) || CFEqual(@"PixelBufferPoolIsShared", a2) || CFEqual(@"PoolPixelBufferAttributesSeed", a2) || CFEqual(@"PoolPixelBufferAttributes", a2) || CFEqual(@"NumberOfFramesInDecoder", a2) || CFEqual(@"MinFrameIDOfFramesInDecoder", a2) || CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
  {
    goto LABEL_8;
  }

  if (CFEqual(@"OutputPoolRequestedMinimumBufferCount", a2))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3) && a1)
      {
        valuePtr = -1;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if ((valuePtr & 0x80000000) == 0)
        {
          FigSimpleMutexLock();
          v13 = *(a1 + 84) + 1;
          *(a1 + 80) = valuePtr;
          *(a1 + 84) = v13;
          FigSimpleMutexUnlock();
          v9 = 0;
          goto LABEL_11;
        }

        fig_log_get_emitter();
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    FigSimpleMutexLock();
    v18 = *(a1 + 84) + 1;
    *(a1 + 80) = 0;
    *(a1 + 84) = v18;
LABEL_30:
    FigSimpleMutexUnlock();
LABEL_31:
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  if (!CFEqual(@"PixelTransferProperties", a2))
  {
    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v19 = CFNumberGetTypeID();
      if (v19 != CFGetTypeID(a3) || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 248));
      if (*(a1 + 160))
      {
        v9 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v9 = 0;
      }

      v24 = *(a1 + 176);
      if (v24)
      {
        v9 = vtDecompressionSubDuctAsyncPixelTransfer_SetClientPIDOnWorkerThreads(v24, *(a1 + 248));
      }

      v25 = *(a1 + 136);
      if (!v25)
      {
LABEL_73:
        FigSimpleMutexUnlock();
        goto LABEL_11;
      }

      v26 = @"ClientPID";
      v27 = a3;
      goto LABEL_71;
    }

    if (CFEqual(@"ThrottleForBackground", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v20 = CFBooleanGetTypeID();
      if (v20 != CFGetTypeID(a3) || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      *(a1 + 264) = CFBooleanGetValue(a3);
      if (*(a1 + 160))
      {
        v9 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v9 = 0;
      }

      v30 = *(a1 + 176);
      if (!v30)
      {
        goto LABEL_102;
      }

      if (*(a1 + 265))
      {
        v31 = 31;
      }

      else
      {
        v31 = 3;
      }

      if (*(a1 + 264))
      {
        v32 = 16;
      }

      else
      {
        v32 = v31;
      }

      v33 = vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(v30, v32);
      goto LABEL_101;
    }

    if (CFEqual(@"RealTime", a2))
    {
      if (a3)
      {
        v22 = CFGetTypeID(a3);
        if (v22 != CFBooleanGetTypeID())
        {
          goto LABEL_8;
        }
      }

      if (!a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      *(a1 + 265) = FigCFEqual();
      if (*(a1 + 160))
      {
        v9 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v9 = 0;
      }

      v34 = *(a1 + 176);
      if (v34)
      {
        if (*(a1 + 265))
        {
          v35 = 31;
        }

        else
        {
          v35 = 3;
        }

        if (*(a1 + 264))
        {
          v36 = 16;
        }

        else
        {
          v36 = v35;
        }

        v9 = vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(v34, v36);
      }

      v37 = *(a1 + 136);
      if (!v37)
      {
        goto LABEL_102;
      }

      v33 = VTSessionSetProperty(v37, @"RealTime", a3);
LABEL_101:
      v9 = v33;
LABEL_102:
      FigSimpleMutexUnlock();
      goto LABEL_103;
    }

    if (CFEqual(@"MaximizePowerEfficiency", a2))
    {
      if (a3)
      {
        v23 = CFGetTypeID(a3);
        if (v23 != CFBooleanGetTypeID())
        {
          goto LABEL_8;
        }
      }

      if (!a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      *(a1 + 266) = FigCFEqual();
      FigSimpleMutexUnlock();
LABEL_65:
      v9 = 0;
      goto LABEL_103;
    }

    if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v29 = CFNumberGetTypeID();
      if (v29 != CFGetTypeID(a3))
      {
        goto LABEL_8;
      }

      v54 = 0;
      if (!a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      CFNumberGetValue(a3, kCFNumberDoubleType, &v54);
      v28 = CVPixelBufferPoolSetMaxBufferAge();
      goto LABEL_72;
    }

    if (CFEqual(@"ColorPrimaries", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v38 = CFGetTypeID(a3);
      if (v38 != CFStringGetTypeID() || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      v39 = *(a1 + 208);
      *(a1 + 208) = a3;
      CFRetain(a3);
      if (v39)
      {
        CFRelease(v39);
      }

      v40 = *(a1 + 240);
      if (v40)
      {
        CFRelease(v40);
        *(a1 + 240) = 0;
      }

      v25 = *(a1 + 136);
      if (v25)
      {
        v26 = @"DestinationColorPrimaries";
        v27 = *(a1 + 208);
LABEL_71:
        v28 = VTSessionSetProperty(v25, v26, v27);
LABEL_72:
        v9 = v28;
        goto LABEL_73;
      }
    }

    else if (CFEqual(@"TransferFunction", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v41 = CFGetTypeID(a3);
      if (v41 != CFStringGetTypeID() || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      v42 = *(a1 + 216);
      *(a1 + 216) = a3;
      CFRetain(a3);
      if (v42)
      {
        CFRelease(v42);
      }

      v43 = *(a1 + 240);
      if (v43)
      {
        CFRelease(v43);
        *(a1 + 240) = 0;
      }

      v25 = *(a1 + 136);
      if (v25)
      {
        v26 = @"DestinationTransferFunction";
        v27 = *(a1 + 216);
        goto LABEL_71;
      }
    }

    else if (CFEqual(@"YCbCrMatrix", a2))
    {
      if (!a3)
      {
        goto LABEL_8;
      }

      v44 = CFGetTypeID(a3);
      if (v44 != CFStringGetTypeID() || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      v45 = *(a1 + 224);
      *(a1 + 224) = a3;
      CFRetain(a3);
      if (v45)
      {
        CFRelease(v45);
      }

      v46 = *(a1 + 240);
      if (v46)
      {
        CFRelease(v46);
        *(a1 + 240) = 0;
      }

      v25 = *(a1 + 136);
      if (v25)
      {
        v26 = @"DestinationYCbCrMatrix";
        v27 = *(a1 + 224);
        goto LABEL_71;
      }
    }

    else
    {
      if (!CFEqual(@"ICCProfile", a2))
      {
        if (!CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2))
        {
          if (a1)
          {
            v8 = VTVideoEncoderSetProperty(*(a1 + 8), a2, a3);
            goto LABEL_10;
          }

          goto LABEL_8;
        }

        if (!a3 || (v50 = CFGetTypeID(a3), v50 != CFBooleanGetTypeID()) || !a1)
        {
LABEL_8:
          fig_log_get_emitter();
LABEL_9:
          v8 = FigSignalErrorAtGM();
LABEL_10:
          v9 = v8;
LABEL_11:
          v10 = 0;
          goto LABEL_12;
        }

        v51 = *MEMORY[0x1E695E4D0];
        FigSimpleMutexLock();
        if (v51 == a3)
        {
          *(a1 + 280) = 1;
        }

        else
        {
          *(a1 + 280) = 0;
          v52 = *(a1 + 288);
          if (v52)
          {
            CFRelease(v52);
            *(a1 + 288) = 0;
          }

          v53 = *(a1 + 296);
          if (v53)
          {
            CFRelease(v53);
            *(a1 + 296) = 0;
          }
        }

        goto LABEL_30;
      }

      if (!a3)
      {
        goto LABEL_8;
      }

      v47 = CFGetTypeID(a3);
      if (v47 != CFDataGetTypeID() || !a1)
      {
        goto LABEL_8;
      }

      FigSimpleMutexLock();
      v48 = *(a1 + 232);
      *(a1 + 232) = a3;
      CFRetain(a3);
      if (v48)
      {
        CFRelease(v48);
      }

      v49 = *(a1 + 240);
      if (v49)
      {
        CFRelease(v49);
        *(a1 + 240) = 0;
      }

      v25 = *(a1 + 136);
      if (v25)
      {
        v26 = @"DestinationICCProfile";
        v27 = *(a1 + 232);
        goto LABEL_71;
      }
    }

    v9 = 0;
    goto LABEL_73;
  }

  if (a3)
  {
    v14 = CFDictionaryGetTypeID();
    if (v14 != CFGetTypeID(a3))
    {
      goto LABEL_8;
    }
  }

  if (!a1)
  {
    goto LABEL_31;
  }

  vtDecompressionSubDuctFinishAsynchronousTransfers(a1);
  v15 = *(a1 + 144);
  if (v15)
  {
    CFRelease(v15);
  }

  if (a3)
  {
    v16 = CFGetAllocator(*a1);
    Copy = CFDictionaryCreateCopy(v16, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 144) = Copy;
  v21 = *(a1 + 136);
  if (!v21)
  {
    goto LABEL_65;
  }

  CFRelease(v21);
  v9 = 0;
  *(a1 + 136) = 0;
LABEL_103:
  v10 = 1;
LABEL_12:
  if (a4)
  {
    *a4 = v10;
  }

  return v9;
}

uint64_t vtDecompressionSubDuctAsyncPixelTransfer_SetClientPIDOnWorkerThreads(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (*(a1 + 8) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = FigThreadSetProperty();
      ++v4;
    }

    while (v4 < *(a1 + 8));
    v6 = v5;
  }

  CFRelease(v3);
  return v6;
}

uint64_t vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(uint64_t a1, int a2)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *MEMORY[0x1E695E480];
  do
  {
    valuePtr = a2;
    v6 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    v7 = FigThreadSetProperty();
    if (v6)
    {
      CFRelease(v6);
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v7;
}

uint64_t VTDecompressionSessionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v22 = 0;
  if (*(a1 + 16))
  {
LABEL_2:
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v7 = *(a1 + 24);
  if (v7)
  {

    return VTDecompressionSessionRemoteBridge_SetProperty(v7, a2, a3);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (!vtDecompressionSessionIsPropertyHandledByVideoToolbox(a2))
  {
    goto LABEL_47;
  }

  if (!vtDecompressionSessionIsPropertySupportedBySubDuct(a2))
  {
    if (CFEqual(a2, @"OnlyTheseFrames"))
    {
      if (*(v9 + 112))
      {
        if (!a3)
        {
          goto LABEL_19;
        }

        TypeID = CFStringGetTypeID();
        if (TypeID != CFGetTypeID(a3))
        {
          goto LABEL_2;
        }

        if (!CFEqual(a3, @"AllFrames"))
        {
          if (CFEqual(a3, @"NonDroppableFrames"))
          {
            v10 = 0;
            v16 = 1;
          }

          else if (CFEqual(a3, @"IFrames"))
          {
            v10 = 0;
            v16 = 2;
          }

          else
          {
            if (!CFEqual(a3, @"KeyFrames"))
            {
              goto LABEL_2;
            }

            v10 = 0;
            v16 = 3;
          }

          *(v9 + 116) = v16;
        }

        else
        {
LABEL_19:
          v10 = 0;
          *(v9 + 116) = 0;
        }

        return v10;
      }

      goto LABEL_47;
    }

    if (CFEqual(a2, @"ReducedFrameDelivery"))
    {
      if (*(v9 + 112))
      {
        if (!a3)
        {
          v10 = 0;
          *(v9 + 128) = 0x3FF0000000000000;
          return v10;
        }

        v14 = CFNumberGetTypeID();
        if (v14 == CFGetTypeID(a3))
        {
          v21 = 1.0;
          CFNumberGetValue(a3, kCFNumberDoubleType, &v21);
          if (v21 < 0.0 || v21 > 1.0)
          {
            fig_log_get_emitter();
            return FigSignalErrorAtGM();
          }

          v10 = 0;
          *(v9 + 128) = v21;
          return v10;
        }

        return 0;
      }
    }

    else
    {
      if (CFEqual(a2, @"PowerLogSessionID"))
      {
        if (!a3)
        {
          goto LABEL_2;
        }

        v15 = CFGetTypeID(a3);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_2;
        }

        v10 = *(v9 + 184);
        *(v9 + 184) = a3;
        CFRetain(a3);
        if (!v10)
        {
          return v10;
        }

        CFRelease(v10);
        return 0;
      }

      if (!CFEqual(a2, @"TemporalLevelLimit"))
      {
        if (CFEqual(@"NumberOfFramesBeingDecoded", a2) || CFEqual(@"MinOutputPresentationTimeStampOfFramesBeingDecoded", a2) || CFEqual(@"MaxOutputPresentationTimeStampOfFramesBeingDecoded", a2) || CFEqual(@"UsingSandboxedVideoDecoder", a2) || CFEqual(@"SuggestedQualityOfServiceTiers", a2))
        {
          goto LABEL_2;
        }

        return 0;
      }

      if (*(v9 + 112))
      {
        if (!a3)
        {
          v10 = 0;
          *(v9 + 120) = 0x7FFFFFFF;
          return v10;
        }

        v17 = CFNumberGetTypeID();
        if (v17 != CFGetTypeID(a3))
        {
          goto LABEL_2;
        }

        CFNumberGetValue(a3, kCFNumberIntType, (v9 + 120));
        return 0;
      }
    }

LABEL_47:
    v10 = 4294954396;
LABEL_48:
    if (vtDecompressionSessionIsPropertySupportedByVideoDecoder(a1, a2))
    {
      v18 = *(v9 + 8);
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v19)
      {
        return v19(v18, a2, a3);
      }

      return 4294954514;
    }

    return v10;
  }

  if (v8)
  {
    v10 = vtDecompressionSubDuctSetProperty(v8, a2, a3, &v22);
    if (!v22)
    {
      return v10;
    }

    goto LABEL_48;
  }

  v12 = *(v9 + 8);
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    return 4294954514;
  }

  return v13(v12, a2, a3);
}

void VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 24))
    {
      v4 = *(a1 + 24);

      VTDecompressionSessionRemoteBridge_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(a2, v4);
    }

    else
    {
      v5 = *(a1 + 32);

      vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v5, a2);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v3 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    a2[2] = *(v3 + 16);
  }
}

uint64_t vtDecompressionSubDuctCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (CFEqual(@"PixelBufferPool", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    PixelBufferAttributes = CVPixelBufferPoolRetain(*(a1 + 104));
LABEL_18:
    *a4 = PixelBufferAttributes;
    return 0;
  }

  if (CFEqual(@"OutputPoolRequestedMinimumBufferCount", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    v10 = *(a1 + 80);
    v9 = (a1 + 80);
    if (!v10)
    {
      return 0;
    }

    v11 = *MEMORY[0x1E695E480];
    v12 = kCFNumberSInt32Type;
    p_Count = v9;
    goto LABEL_8;
  }

  if (CFEqual(@"PoolPixelBufferAttributesSeed", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    v11 = *MEMORY[0x1E695E480];
    p_Count = (a1 + 88);
    goto LABEL_12;
  }

  if (CFEqual(@"PoolPixelBufferAttributes", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(*(a1 + 104));
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

LABEL_38:
    PixelBufferAttributes = CFRetain(PixelBufferAttributes);
    goto LABEL_18;
  }

  if (CFEqual(@"PixelBufferPoolIsShared", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    v15 = MEMORY[0x1E695E4D0];
    if (*(a1 + 104) != *(a1 + 96))
    {
      v15 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_37;
  }

  if (CFEqual(@"PixelTransferProperties", a2))
  {
    *a4 = 0;
    if (!a1 || !*(a1 + 136))
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 144);
    goto LABEL_38;
  }

  if (CFEqual(@"ClientPID", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v11 = *MEMORY[0x1E695E480];
    p_Count = (a1 + 248);
    v12 = kCFNumberSInt32Type;
    goto LABEL_8;
  }

  if (CFEqual(@"ThrottleForBackground", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v15 = MEMORY[0x1E695E4D0];
    v16 = *(a1 + 264);
    goto LABEL_34;
  }

  if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
  {
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    CVPixelBufferPoolGetMaxBufferAge();
    Count = v18;
    FigSimpleMutexUnlock();
    v11 = *MEMORY[0x1E695E480];
    p_Count = &Count;
    v12 = kCFNumberDoubleType;
    goto LABEL_8;
  }

  if (CFEqual(@"ColorPrimaries", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 208);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"TransferFunction", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 216);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"YCbCrMatrix", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 224);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"ICCProfile", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 232);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"RealTime", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v15 = MEMORY[0x1E695E4C0];
    v16 = *(a1 + 265);
    v17 = MEMORY[0x1E695E4D0];
    goto LABEL_35;
  }

  if (a1)
  {
    v19 = *(a1 + 8);
    if (v19)
    {

      return VTVideoEncoderCopyProperty(v19, a2, a3, a4);
    }

    if (CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2))
    {
      v15 = MEMORY[0x1E695E4D0];
      v16 = *(a1 + 280);
LABEL_34:
      v17 = MEMORY[0x1E695E4C0];
LABEL_35:
      if (!v16)
      {
        v15 = v17;
      }

LABEL_37:
      PixelBufferAttributes = *v15;
      goto LABEL_38;
    }

    if (CFEqual(@"NumberOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      Count = FigCFDictionaryGetCount();
      FigSimpleMutexUnlock();
      v11 = *MEMORY[0x1E695E480];
      p_Count = &Count;
LABEL_12:
      v12 = kCFNumberIntType;
LABEL_8:
      PixelBufferAttributes = CFNumberCreate(v11, v12, p_Count);
      goto LABEL_18;
    }

    if (CFEqual(@"MinFrameIDOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      v20 = FigCFDictionaryGetCount();
      if (v20 >= 1)
      {
        v21 = v20;
        v22 = malloc_type_calloc(v20, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*(a1 + 120), v22, 0);
        v23 = 0;
        for (i = 0; i != v21; ++i)
        {
          if (v23 >= v22[i])
          {
            v25 = v22[i];
          }

          else
          {
            v25 = v23;
          }

          if (i)
          {
            v23 = v25;
          }

          else
          {
            v23 = *v22;
          }
        }

LABEL_92:
        free(v22);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    if (CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      v26 = FigCFDictionaryGetCount();
      if (v26 >= 1)
      {
        v27 = v26;
        v22 = malloc_type_calloc(v26, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*(a1 + 120), v22, 0);
        v28 = 0;
        for (j = 0; j != v27; ++j)
        {
          if (v28 <= v22[j])
          {
            v28 = v22[j];
          }
        }

        goto LABEL_92;
      }

LABEL_96:
      FigSimpleMutexUnlock();
      PixelBufferAttributes = FigCFNumberCreateUInt64();
      goto LABEL_18;
    }
  }

  else if (CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2) || CFEqual(@"NumberOfFramesInDecoder", a2) || CFEqual(@"MinFrameIDOfFramesInDecoder", a2) || CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
  {
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C80];
  *a2 = *MEMORY[0x1E6960C80];
  a2[2] = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, vtDuctFrameTrackingInfoFindMaxPTS, a2);
  }

  return FigSimpleMutexUnlock();
}

void vtCreateSuggestedQualityOfServiceTiers()
{
  values[6] = *MEMORY[0x1E69E9840];
  values[0] = vtCreateQualityOfServiceTier(@"AllFrames", 1.0);
  values[1] = @"TemporalLevelLimit";
  values[2] = vtCreateQualityOfServiceTier(@"NonDroppableFrames", 1.0);
  values[3] = vtCreateQualityOfServiceTier(@"IFrames", 1.0);
  values[4] = vtCreateQualityOfServiceTier(@"KeyFrames", 1.0);
  values[5] = vtCreateQualityOfServiceTier(@"KeyFrames", 0.5);
  sVTVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
  if (!sVTVideoDecoderSuggestedQualityOfServiceTiers)
  {
    vtCreateSuggestedQualityOfServiceTiers_cold_1();
  }

  for (i = 0; i != 6; ++i)
  {
    v1 = values[i];
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t VTDecompressionSessionSetProperties(uint64_t a1, const __CFDictionary *a2)
{
  v17 = a1;
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v5 = *(a1 + 24);
  if (!v5)
  {
    v18 = 0;
    if (!a2)
    {
      return v18;
    }

    v6 = *(a1 + 32);
    context = 0u;
    v20 = 0u;
    v7 = vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(&context);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v11 = *(*(a1 + 32) + 8);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v12 || ((v13 = v12(v11, &context + 8), v13 != -12782) ? (v14 = v13 == 0) : (v14 = 1), v14))
      {
        CFDictionaryApplyFunction(a2, vtDecompressionSessionAddPropertyToPartition, &context);
        v8 = 0;
        v10 = *(&v20 + 1);
        v9 = v20;
        goto LABEL_20;
      }

      v8 = v13;
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    v9 = 0;
    v10 = 0;
LABEL_20:
    if (context)
    {
      CFRelease(context);
    }

    if (*(&context + 1))
    {
      CFRelease(*(&context + 1));
    }

    LODWORD(v18) = v8;
    if (!v8)
    {
      if (v9)
      {
        CFDictionaryApplyFunction(v9, vtDecompressionSessionSetOneProperty, &v17);
      }

      if (v10)
      {
        v15 = *(v6 + 8);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v16 || (LODWORD(v18) = v16(v15, v10), v18 == -12782))
        {
          LODWORD(v18) = 0;
          CFDictionaryApplyFunction(v10, vtDecompressionSessionSetOneProperty, &v17);
        }
      }
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    return v18;
  }

  return VTDecompressionSessionRemoteBridge_SetProperties(v5, a2);
}

uint64_t vtDecompressionSessionSetOneProperty(const void *a1, const void *a2, uint64_t a3)
{
  result = VTDecompressionSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTDecompressionSessionCopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (*(a1 + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_CopySerializableProperties(v6, a2, a3);
  }

  else
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v8)
    {
      return 0;
    }

    result = v8(v7, a2, a3);
    if (result == -12782)
    {
      return 0;
    }
  }

  return result;
}

OSStatus VTDecompressionSessionCopyBlackPixelBuffer(VTDecompressionSessionRef session, CVPixelBufferRef *pixelBufferOut)
{
  pixelBufferOuta = 0;
  cf = 0;
  if (pixelBufferOut)
  {
    v4 = *(session + 3);
    if (v4)
    {

      return VTDecompressionSessionRemoteBridge_CopyBlackPixelBuffer(v4, pixelBufferOut);
    }

    v6 = *MEMORY[0x1E695E480];
    v7 = VTDecompressionSessionCopyProperty(session, @"PixelBufferPool", *MEMORY[0x1E695E480], &cf);
    if (v7)
    {
LABEL_36:
      v20 = v7;
LABEL_31:
      if (cf)
      {
        CFRelease(cf);
      }

      if (pixelBufferOuta)
      {
        CFRelease(pixelBufferOuta);
      }

      return v20;
    }

    v9 = (session + 136);
    v8 = *(session + 17);
    if (!v8)
    {
      v10 = cf;
      v23 = 0;
      if (!VTAvoidIOSurfaceBackings() && (PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v10), CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E69660D8])) && (FigCFDictionaryGetIntIfPresent(), v23))
      {
        v8 = *v9;
        if (!*v9)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (!MutableCopy)
          {
            v20 = -12904;
            goto LABEL_31;
          }

          v13 = MutableCopy;
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
          if (IOSurfacePropertiesDictionary)
          {
            v15 = IOSurfacePropertiesDictionary;
            FigCFDictionarySetValue();
            CFRelease(v15);
            v16 = CVPixelBufferPoolCreate(v6, 0, v13, session + 17);
            if (!v16)
            {
              CFRelease(v13);
              v8 = *v9;
              goto LABEL_23;
            }

            v20 = v16;
          }

          else
          {
            v20 = -12904;
          }

          CFRelease(v13);
          goto LABEL_31;
        }
      }

      else
      {
        if (v10)
        {
          v8 = CFRetain(v10);
        }

        else
        {
          v8 = 0;
        }

        *v9 = v8;
      }
    }

LABEL_23:
    v7 = CVPixelBufferPoolCreatePixelBuffer(v6, v8, &pixelBufferOuta);
    if (!v7)
    {
      v7 = VTFillPixelBufferWithBlack(pixelBufferOuta);
      if (!v7)
      {
        v17 = *(session + 4);
        FigSimpleMutexLock();
        v18 = *(v17 + 88);
        if (v18)
        {
          v19 = CFRetain(v18);
        }

        else
        {
          v19 = 0;
        }

        FigSimpleMutexUnlock();
        vtTransferImageBufferAttachmentsFromVideoFormatDescription(v19, pixelBufferOuta);
        *pixelBufferOut = pixelBufferOuta;
        pixelBufferOuta = 0;
        if (v19)
        {
          CFRelease(v19);
        }

        v20 = 0;
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void vtTransferImageBufferAttachmentsFromVideoFormatDescription(const opaqueCMFormatDescription *a1, __CVBuffer *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (!Extensions || !Mutable)
  {
    goto LABEL_106;
  }

  v95 = v5;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v10 = *MEMORY[0x1E6965D88];
  v89 = *MEMORY[0x1E6965F98];
  key = *MEMORY[0x1E6965F30];
  v88 = *MEMORY[0x1E6965E80];
  vtCopyAttachments(Extensions, a2, v7, v89, *MEMORY[0x1E6965E80], v11, v12, v13, v89);
  width = Dimensions.width;
  if (Dimensions.width != CVPixelBufferGetWidth(a2) || CVPixelBufferGetHeight(a2) != *&Dimensions >> 32)
  {
    v91 = v10;
    v27 = HIDWORD(*&Dimensions);
    v28 = *MEMORY[0x1E6965D70];
    v93 = MediaSubType;
    v92 = HIDWORD(*&Dimensions);
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965D70]))
    {
      Value = CFDictionaryGetValue(Extensions, v28);
      if (Value)
      {
        v30 = Value;
        v87 = Dimensions;
        v31 = CVPixelBufferGetWidth(a2) / Dimensions.width;
        Height = CVPixelBufferGetHeight(a2);
        v33 = *MEMORY[0x1E6965D60];
        valuePtr = *MEMORY[0x1E6965D80];
        v105 = v33;
        v34 = *MEMORY[0x1E6965D78];
        v35 = Height / Dimensions.height;
        v106 = *MEMORY[0x1E6965D68];
        v107 = v34;
        ScaledCleanApertureValue = vtCreateScaledCleanApertureValue(v30, valuePtr, v31);
        values = ScaledCleanApertureValue;
        v37 = vtCreateScaledCleanApertureValue(v30, v33, v35);
        v101 = v37;
        v38 = vtCreateScaledCleanApertureValue(v30, v106, v31);
        v102 = v38;
        v39 = vtCreateScaledCleanApertureValue(v30, v34, v35);
        v40 = 0;
        v103 = v39;
        if (ScaledCleanApertureValue && v37)
        {
          LODWORD(v27) = v92;
          if (v38)
          {
            MediaSubType = v93;
            if (v39)
            {
              v40 = CFDictionaryCreate(v95, &valuePtr, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              ScaledCleanApertureValue = values;
            }
          }

          else
          {
            MediaSubType = v93;
          }
        }

        else
        {
          MediaSubType = v93;
          LODWORD(v27) = v92;
        }

        if (ScaledCleanApertureValue)
        {
          CFRelease(ScaledCleanApertureValue);
        }

        if (v101)
        {
          CFRelease(v101);
        }

        Dimensions = v87;
        if (v102)
        {
          CFRelease(v102);
        }

        if (v103)
        {
          CFRelease(v103);
        }

        if (v40)
        {
          CVBufferSetAttachment(a2, v28, v40, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v40);
        }
      }
    }

    v41 = *MEMORY[0x1E6965EF8];
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965EF8]))
    {
      v96 = 1;
      v97 = 1;
      v42 = Dimensions;
      v43 = CVPixelBufferGetWidth(a2) * (*&Dimensions >> 32);
      v44 = CVPixelBufferGetHeight(a2) * width;
      v45 = CFDictionaryGetValue(Extensions, v41);
      v46 = MEMORY[0x1E6965EF0];
      v47 = MEMORY[0x1E6965F00];
      if (v45)
      {
        v48 = v45;
        v49 = CFDictionaryGetValue(v45, *MEMORY[0x1E6965EF0]);
        CFNumberGetValue(v49, kCFNumberSInt64Type, &v97);
        v50 = CFDictionaryGetValue(v48, *v47);
        CFNumberGetValue(v50, kCFNumberSInt64Type, &v96);
      }

      if (v43 != v44)
      {
        v51 = *v47;
        valuePtr = *v46;
        v105 = v51;
        v52 = v97 * v44;
        v53 = v96 * v43;
        if (((v97 * v44) & 0x8000000000000000) == 0)
        {
          v54 = v97 * v44;
        }

        else
        {
          v54 = -v52;
        }

        if (v53 >= 0)
        {
          v55 = v96 * v43;
        }

        else
        {
          v55 = -v53;
        }

        if (v54 <= v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = v54;
        }

        if (v54 >= v55)
        {
          v54 = v55;
        }

        if (v54)
        {
          if (v54 < 1)
          {
            v57 = v56;
          }

          else
          {
            do
            {
              v57 = v54;
              v54 = v56 % v54;
              v56 = v57;
            }

            while (v54);
          }
        }

        else if (v56 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v56;
        }

        v58 = v53 / v57;
        v98 = v58;
        v99 = v52 / v57;
        if (v52 / v57 && v58)
        {
          v59 = CFNumberCreate(v95, kCFNumberSInt64Type, &v99);
          values = v59;
          v60 = CFNumberCreate(v95, kCFNumberSInt64Type, &v98);
          v61 = 0;
          v101 = v60;
          if (v59 && v60)
          {
            v61 = CFDictionaryCreate(v95, &valuePtr, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v59 = values;
          }

          if (v59)
          {
            CFRelease(v59);
          }

          if (v101)
          {
            CFRelease(v101);
          }

          if (v61)
          {
            CVBufferSetAttachment(a2, v41, v61, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v61);
          }
        }
      }

      Dimensions = v42;
      MediaSubType = v93;
      LODWORD(v27) = v92;
    }

    v62 = *MEMORY[0x1E6965E50];
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965E50]))
    {
      v67 = (v27 + (v27 >> 31)) >> 1;
      if (CVPixelBufferGetHeight(a2) <= v27 / 2)
      {
        LOBYTE(valuePtr) = 1;
        v72 = CFNumberCreate(v95, kCFNumberSInt8Type, &valuePtr);
        CVBufferSetAttachment(a2, v62, v72, kCVAttachmentMode_ShouldPropagate);
        v10 = v91;
        if (v72)
        {
          CFRelease(v72);
        }

        goto LABEL_79;
      }

      v68 = CFDictionaryGetValue(Extensions, v62);
      v69 = *MEMORY[0x1E6965E58];
      v70 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965E58]);
      if (v68)
      {
        v71 = v70;
        if (v70)
        {
          CVBufferSetAttachment(a2, v62, v68, kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(a2, v69, v71, kCVAttachmentMode_ShouldPropagate);
        }
      }
    }

    else
    {
      v67 = (v27 + (v27 >> 31)) >> 1;
    }

    v10 = v91;
LABEL_79:
    vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965D00], v63, v64, v65, v66, *MEMORY[0x1E6965D00]);
    if (CVPixelBufferGetHeight(a2) > v67)
    {
      vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965CF0], v73, v74, v75, v76, *MEMORY[0x1E6965CF0]);
    }

    goto LABEL_81;
  }

  LODWORD(valuePtr) = 1;
  v18 = *MEMORY[0x1E6965D70];
  v19 = *MEMORY[0x1E6965E50];
  vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965D70], v14, v15, v16, v17, *MEMORY[0x1E6965D70]);
  v20 = CVBufferCopyAttachment(a2, v19, 0);
  v21 = v20;
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
    if (valuePtr == 2)
    {
      vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965E58], v22, v23, v24, v25, *MEMORY[0x1E6965E58]);
    }
  }

  if (MediaSubType != 1752589105 && MediaSubType != 1635148593)
  {
LABEL_12:
    if (!v21)
    {
      goto LABEL_81;
    }

    goto LABEL_13;
  }

  v26 = CFDictionaryGetValue(Extensions, v18);
  if (v26)
  {
    CVBufferSetAttachment(a2, v18, v26, kCVAttachmentMode_ShouldPropagate);
    goto LABEL_12;
  }

  CVBufferRemoveAttachment(a2, v18);
  if (v21)
  {
LABEL_13:
    CFRelease(v21);
  }

LABEL_81:
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059 && vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965CE8]))
  {
    if (MediaSubType == 1634759278 || MediaSubType == 1634759272)
    {
      CFDictionarySetValue(v7, key, *MEMORY[0x1E6965F60]);
    }

    else
    {
      v78 = MediaSubType;
      v79 = CVBufferCopyAttachment(a2, v10, 0);
      v80 = v10;
      v81 = CVBufferCopyAttachment(a2, key, 0);
      v82 = CVBufferCopyAttachment(a2, v89, 0);
      v83 = vtCVBufferAttachmentEmpty(a2, v88);
      if (!v79)
      {
        v84 = CFDictionaryGetValue(v7, v80);
        if (v84)
        {
          v79 = CFRetain(v84);
        }

        else
        {
          v79 = 0;
        }
      }

      if (!v81)
      {
        v85 = CFDictionaryGetValue(v7, key);
        if (v85)
        {
          v81 = CFRetain(v85);
        }

        else
        {
          v81 = 0;
        }
      }

      if (!v82)
      {
        v86 = CFDictionaryGetValue(v7, v89);
        if (v86)
        {
          v82 = CFRetain(v86);
        }

        else
        {
          v82 = 0;
        }
      }

      vtGuessMissingColorSpaceAttachmentsGuts(v78, width, *&Dimensions >> 32, v79, v81, v82, !v83, v7);
      if (v79)
      {
        CFRelease(v79);
      }

      if (v81)
      {
        CFRelease(v81);
      }

      if (v82)
      {
        CFRelease(v82);
      }
    }
  }

  CVBufferSetAttachments(a2, v7, kCVAttachmentMode_ShouldPropagate);
LABEL_106:
  if (v7)
  {
    CFRelease(v7);
  }
}

Boolean VTIsHardwareDecodeSupported(CMVideoCodecType codecType)
{
  v1 = *&codecType;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RequireHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]);
  if (v1 == 1987063865)
  {
    if (FigServer_IsServerProcess() || (v8 = SecTaskCreateFromSelf(v2)) != 0 && (v9 = v8, v10 = VTIsSecTaskEntitledForVP9Decode(v8), CFRelease(v9), v10))
    {
      CFDictionarySetValue(Mutable, @"AllowAlternateDecoderSelection", v4);
    }
  }

  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance(v1, v2, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return VideoDecoderInstance == -12913 || VideoDecoderInstance == 0;
}

uint64_t VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v9 = *MEMORY[0x1E6960C88];
  v10 = *(MEMORY[0x1E6960C88] + 16);
  v11 = *MEMORY[0x1E6960C80];
  v12 = *(MEMORY[0x1E6960C80] + 16);
  if (a1 && !*(a1 + 16))
  {
    v7 = *(a1 + 24);
    if (v7)
    {

      return VTDecompressionSessionRemoteBridge_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(v7, a2, a3);
    }

    else
    {
      FigSimpleMutexLock();
      v8 = *(*(a1 + 32) + 56);
      if (v8)
      {
        CFDictionaryApplyFunction(v8, vtDuctFrameTrackingInfoFindMinAndMaxPTS, &v9);
      }

      FigSimpleMutexUnlock();
      if (a2)
      {
        *&a2->value = v9;
        a2->epoch = v10;
      }

      if (a3)
      {
        *&a3->value = v11;
        a3->epoch = v12;
      }

      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

double vtDuctFrameTrackingInfoFindMinAndMaxPTS(uint64_t a1, uint64_t a2, CMTime *a3)
{
  time1 = *a3;
  v6 = *(a2 + 24);
  CMTimeMinimum(&v8, &time1, &v6);
  *a3 = v8;
  time1 = a3[1];
  v6 = *(a2 + 24);
  CMTimeMaximum(&v8, &time1, &v6);
  result = *&v8.value;
  a3[1] = v8;
  return result;
}

uint64_t VTDecompressionSessionRemotePreferHighPriorityQueueForAllDecompression()
{
  if (VTShouldRunVideoDecodersInProcess())
  {
    return 0;
  }

  return VTDecompressionSessionRemoteBridge_PreferHighPriorityQueueForAllDecompression();
}

uint64_t VTDecompressionSessionFlushPixelBufferPool(uint64_t a1)
{
  if (a1 && !*(a1 + 16))
  {
    if (*(a1 + 24))
    {
      v2 = *(a1 + 24);

      return VTDecompressionSessionRemoteBridge_FlushPixelBufferPool(v2);
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 && *(v3 + 104))
      {
        FigSimpleMutexLock();
        CVPixelBufferPoolFlush(*(v3 + 104), 1uLL);
        FigSimpleMutexUnlock();
      }

      return 0;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      *(v2 + 48) = a2;
    }

    else
    {
      v4 = *(a1 + 40);
      v3 = 0;
      if (v4)
      {
        *(v4 + 56) = a2;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v3 = 4294954394;
    FigSignalErrorAtGM();
  }

  return v3;
}

uint64_t vtDecoderSessionGetSubDuctPixelBufferPool(uint64_t *a1, int a2)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a1[3])
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
LABEL_4:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  if (a2)
  {
    FigSimpleMutexLock();
    v4 = vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(v2);
    FigSimpleMutexUnlock();
  }

  else
  {
    v4 = vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(*a1);
  }

  if (v4)
  {
    return 0;
  }

  return *(v2 + 96);
}

uint64_t VTDecoderSessionCreatePixelBufferWithOptions(uint64_t *a1, uint64_t a2, uint64_t a3, CVPixelBufferRef *a4)
{
  v5 = a2;
  v7 = a1[3];
  if (!v7)
  {
    v24 = 0;
    pixelBufferOut = 0;
    v9 = *a1;
    if (!*a1)
    {
      fig_log_get_emitter();
      v14 = 4294954393;
      FigSignalErrorAtGM();
      return v14;
    }

    v10 = a1[4];
    if (v10)
    {
      FigSimpleMutexLock();
      v11 = *(*a1 + 120);
      if (v11 && (Value = CFDictionaryGetValue(v11, v5)) != 0)
      {
        v13 = Value[2];
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
        v13 = 0;
      }

      if (v13)
      {
        v5 = v13;
      }

      FigSimpleMutexUnlock();
      v9 = *v10;
    }

    else
    {
      v10 = a1;
    }

    FigSimpleMutexLock();
    FigCFDictionaryGetBooleanIfPresent();
    if (*(v9 + 128))
    {
      FigCFDictionaryGetInt32IfPresent();
      v15 = *MEMORY[0x1E695E480];
      v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p_%d", v5, 0);
      v17 = *(v9 + 128);
      if (v17)
      {
        v18 = CFDictionaryGetValue(v17, v16);
        pixelBufferOut = v18;
        if (v18)
        {
          v19 = v18;
          CFRetain(v18);
          v14 = 0;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v16 = 0;
      v15 = *MEMORY[0x1E695E480];
    }

    SubDuctPixelBufferPool = vtDecoderSessionGetSubDuctPixelBufferPool(v10, 0);
    v21 = CVPixelBufferPoolCreatePixelBuffer(v15, SubDuctPixelBufferPool, &pixelBufferOut);
    v14 = v21;
    v19 = pixelBufferOut;
    if (v24 && !v21 && pixelBufferOut)
    {
      Mutable = *(v9 + 128);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(v15, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(v9 + 128) = Mutable;
        if (!Mutable)
        {
          VTDecoderSessionCreatePixelBufferWithOptions_cold_1(&v25);
          v14 = v25;
          goto LABEL_29;
        }

        v19 = pixelBufferOut;
      }

      CFDictionarySetValue(Mutable, v16, v19);
      v14 = 0;
      v19 = pixelBufferOut;
    }

LABEL_28:
    *a4 = v19;
    pixelBufferOut = 0;
LABEL_29:
    FigSimpleMutexUnlock();
    if (v16)
    {
      CFRelease(v16);
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    return v14;
  }

  return VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions(v7, a2, a3, a4);
}

uint64_t VTDecoderSessionForgetPixelBufferForFrame(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    fig_log_get_emitter();
    v6 = 4294954394;
LABEL_15:
    FigSignalErrorAtGM();
    return v6;
  }

  if (!*a1)
  {
    fig_log_get_emitter();
    v6 = 4294954393;
    goto LABEL_15;
  }

  if (a3)
  {
    v4 = a1[4];
    if (!v4)
    {
      v4 = a1;
    }

    v5 = *v4;
    FigCFDictionaryGetInt32IfPresent();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p_%d", a2, 0);
    FigSimpleMutexLock();
    v7 = *(v5 + 128);
    if (v7)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      FigSimpleMutexUnlock();
      if (!v6)
      {
        return v6;
      }
    }

    else
    {
      CFDictionaryRemoveValue(v7, v6);
      FigSimpleMutexUnlock();
    }

    CFRelease(v6);
  }

  return 0;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, int *a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_3(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_1(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrame(v6, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 112) && !*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_2(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, 0, 0, a5, a6);
}

uint64_t vtDecompressionSessionDecodeFrameCommon(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CMTimeEpoch a6, CMTimeValue a7, int *a8)
{
  if (!a1)
  {
    vtDecompressionSessionDecodeFrameCommon_cold_4(refcon);
    return LODWORD(refcon[0]);
  }

  if (*(a1 + 16))
  {
    vtDecompressionSessionDecodeFrameCommon_cold_1(refcon);
    return LODWORD(refcon[0]);
  }

  if (!sbuf)
  {
    vtDecompressionSessionDecodeFrameCommon_cold_3(refcon);
    return LODWORD(refcon[0]);
  }

  v34 = 0;
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = &v34;
  }

  *v15 = 0;
  v16 = *(a1 + 32);
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  if (NumSamples >= 1)
  {
    v18 = NumSamples;
    v30 = a5;
    v31 = a7;
    v32 = a6;
    CFRetain(a1);
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v20 = *(v16 + 88);
    if (v20 == FormatDescription)
    {
LABEL_18:
      if (v18 == 1)
      {
        v25 = vtDecompressionDuctDecodeSingleFrame(v16, sbuf, a3, a4, v30, v32, v31, v15);
      }

      else
      {
        refcon[0] = v16;
        refcon[1] = a3;
        refcon[2] = a4;
        refcon[3] = v31;
        refcon[5] = v30;
        refcon[6] = v32;
        refcon[4] = v15;
        v25 = CMSampleBufferCallForEachSample(sbuf, vtDecompressionDuctDecodeSingleFrame_iterator, refcon);
      }

      goto LABEL_22;
    }

    if (FormatDescription)
    {
      v21 = *(a1 + 40);
      if (CFEqual(v20, FormatDescription))
      {
LABEL_15:
        vtDecompressionDuctSetVideoFormatDescription(v16, FormatDescription);
        if (v21)
        {
          v26 = *(v21 + 16);
          *(v21 + 16) = FormatDescription;
          CFRetain(FormatDescription);
          if (v26)
          {
            CFRelease(v26);
          }
        }

        goto LABEL_18;
      }

      v22 = *(v16 + 8);
      v23 = *(CMBaseObjectGetVTable() + 16);
      if (*v23 >= 2uLL)
      {
        v24 = v23[6];
        if (v24)
        {
          if (v24(v22, FormatDescription))
          {
            v25 = VTDecompressionSessionWaitForAsynchronousFrames(a1);
            if (v25)
            {
LABEL_22:
              v27 = v25;
LABEL_23:
              CFRelease(a1);
              return v27;
            }

            goto LABEL_15;
          }
        }
      }

      v29 = 5887;
    }

    else
    {
      v29 = 5884;
    }

    if (!vtDecompressionSessionDecodeFrameCommon_cold_2(v29, refcon))
    {
      v27 = LODWORD(refcon[0]);
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  return 4294954394;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, int *a5, unint64_t a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_5(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_4(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_1(&v8);
    return v8;
  }

  if (!a6)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_3(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler(v6, a2, a3, a4, a5, a6, 0);
  }

  if (*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_2(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, a6, 0, 0, a5);
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, int *a5, unint64_t a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_6(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_5(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_1(&v8);
    return v8;
  }

  if (!a6)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_4(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler(v6, a2, a3, 0, a5, 0, a6);
  }

  if (*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_2(&v8);
    return v8;
  }

  if (*(a1 + 112))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_3(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, 0, a6, 0, a5);
}

Boolean VTDecompressionSessionCanAcceptFormatDescription(VTDecompressionSessionRef session, CMFormatDescriptionRef newFormatDesc)
{
  LOBYTE(CanAcceptFormatDescription) = 0;
  if (!session || !newFormatDesc)
  {
    return CanAcceptFormatDescription;
  }

  if (*(session + 16))
  {
    goto LABEL_4;
  }

  v6 = *(session + 4);
  if (v6)
  {
    if (FigCFEqual())
    {
      LOBYTE(CanAcceptFormatDescription) = 1;
      return CanAcceptFormatDescription;
    }

    v7 = *(session + 3);
    if (!v7)
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v6 + 88));
      v9 = CMVideoFormatDescriptionGetDimensions(newFormatDesc);
      MediaSubType = CMFormatDescriptionGetMediaSubType(*(v6 + 88));
      LOBYTE(CanAcceptFormatDescription) = 0;
      if (MediaSubType == CMFormatDescriptionGetMediaSubType(newFormatDesc) && v9 == Dimensions)
      {
        CanAcceptFormatDescription = VTVideoDecoderCanAcceptFormatDescription(*(v6 + 8), newFormatDesc);
        if (CanAcceptFormatDescription)
        {
          if (FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(MediaSubType))
          {
            BitsPerComponentFromFormatDescription = vtDecompressionSessionGetBitsPerComponentFromFormatDescription(*(v6 + 88));
            if (BitsPerComponentFromFormatDescription != vtDecompressionSessionGetBitsPerComponentFromFormatDescription(newFormatDesc))
            {
              LOBYTE(CanAcceptFormatDescription) = 0;
            }
          }
        }
      }

      return CanAcceptFormatDescription;
    }
  }

  else
  {
    v7 = *(session + 3);
    if (!v7)
    {
LABEL_4:
      LOBYTE(CanAcceptFormatDescription) = 0;
      return CanAcceptFormatDescription;
    }
  }

  return VTDecompressionSessionRemoteBridge_CanAcceptFormatDescription(v7, newFormatDesc);
}

uint64_t VTVideoDecoderCanAcceptFormatDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 < 2uLL)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

uint64_t FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(int a1)
{
  result = 1;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481572)
    {
      if (a1 > 1718908527)
      {
        if (a1 == 1718908528)
        {
          return result;
        }

        v3 = 1751479857;
      }

      else
      {
        if (a1 == 1685481573)
        {
          return result;
        }

        v3 = 1718908520;
      }
    }

    else if (a1 > 1684895095)
    {
      if (a1 == 1684895096)
      {
        return result;
      }

      v3 = 1685481521;
    }

    else
    {
      if (a1 == 1667524657)
      {
        return result;
      }

      v3 = 1667790435;
    }

    goto LABEL_26;
  }

  if (a1 <= 1902405732)
  {
    if (a1 <= 1869117026)
    {
      if (a1 == 1752589105)
      {
        return result;
      }

      v3 = 1836415073;
      goto LABEL_26;
    }

    if (a1 == 1869117027)
    {
      return result;
    }

    v4 = 26673;
    goto LABEL_25;
  }

  if (a1 <= 1902667125)
  {
    if (a1 == 1902405733)
    {
      return result;
    }

    v4 = 28024;
LABEL_25:
    v3 = v4 | 0x71640000;
LABEL_26:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1902667126 && a1 != 1902671459)
  {
    v3 = 1902998904;
    goto LABEL_26;
  }

  return result;
}

uint64_t vtDecompressionSessionGetBitsPerComponentFromFormatDescription(const opaqueCMFormatDescription *a1)
{
  CMFormatDescriptionGetExtensions(a1);
  FigCFDictionaryGetIntIfPresent();
  return 0;
}

OSStatus VTDecompressionSessionFinishDelayedFrames(VTDecompressionSessionRef session)
{
  if (!session)
  {
    return -12902;
  }

  if (*(session + 16))
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else if (*(session + 3))
  {
    v2 = *(session + 3);

    return VTDecompressionSessionRemoteBridge_FinishDelayedFrames(v2);
  }

  else
  {
    v3 = *(*(session + 4) + 8);
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (*v4 < 2uLL)
    {
      return 0;
    }

    v5 = v4[7];
    if (!v5)
    {
      return 0;
    }

    result = v5(v3);
    if (result == -12782)
    {
      return 0;
    }
  }

  return result;
}

uint64_t VTVideoDecoderGetTypeID()
{
  MEMORY[0x193AE3010](&VTVideoDecoderGetClassID_sRegisterVTVideoDecoderTypeOnce, RegisterVTVideoDecoderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t VTDecompressionSessionSetContentAnalyzer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __VTDecompressionSessionSetContentAnalyzer_block_invoke;
    v5[3] = &unk_1E72C7E78;
    v5[4] = a2;
    return VTDecompressionSessionSetContentAnalyzer2(a1, v5);
  }

  else
  {

    return VTDecompressionSessionSetContentAnalyzer2(a1, 0);
  }
}

uint64_t __VTDecompressionSessionAnalyzeAndInterruptFrame_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = **(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 16);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  return v5(v3, v2, &v7, v1, v4 + 24);
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon(uint64_t *a1, const void *a2, uint64_t a3, int a4, __CVBuffer *a5, OpaqueCMTaggedBufferGroup *a6)
{
  v80 = 0;
  v81 = 0;
  if (!a1)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  v11 = *a1;
  FigSimpleMutexLock();
  v12 = *(v11 + 120);
  v78 = a2;
  if (v12 && (Value = CFDictionaryGetValue(v12, a2)) != 0)
  {
    v14 = *Value;
    v15 = Value[1];
    if (v15)
    {
      v16 = CFRetain(v15);
    }

    else
    {
      v16 = 0;
    }

    CFDictionaryRemoveValue(*(v11 + 120), a2);
    v79 = 0;
  }

  else
  {
    fig_log_get_emitter();
    v79 = FigSignalErrorAtGM();
    v14 = 0;
    v16 = 0;
  }

  v18 = v14 & 2 | a3;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = a5;
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = a6;
  }

  if (v19 | v20)
  {
    if (v19)
    {
      vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(v11, v16, v19);
      vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(v11, v19);
    }

    else if (v20)
    {
      Count = CMTaggedBufferGroupGetCount(v20);
      if (Count >= 1)
      {
        v28 = Count;
        for (i = 0; i != v28; ++i)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (CVPixelBufferAtIndex)
          {
            vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(v11, v16, CVPixelBufferAtIndex);
          }
        }
      }

      v31 = CMTaggedBufferGroupGetCount(v20);
      if (v31 >= 1)
      {
        v32 = v31;
        for (j = 0; j != v32; ++j)
        {
          v34 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (v34)
          {
            vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(v11, v34);
          }
        }
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (!(v19 | v20))
  {
    v24 = v14;
    FigSimpleMutexUnlock();
    v25 = 0;
    v26 = 0;
    v22 = 0;
    v23 = 0;
    if (!a3)
    {
      goto LABEL_71;
    }

    goto LABEL_78;
  }

  if (v19)
  {
    DestinationImageBufferForEmittedFrameIfNecessary = vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(v11, a4, v19, &v81);
LABEL_26:
    a3 = DestinationImageBufferForEmittedFrameIfNecessary;
    goto LABEL_27;
  }

  if (!v20)
  {
    fig_log_get_emitter();
    DestinationImageBufferForEmittedFrameIfNecessary = FigSignalErrorAtGM();
    goto LABEL_26;
  }

  v35 = CMTaggedBufferGroupGetCount(v20);
  cf = 0;
  if (v35 < 1)
  {
    a3 = 0;
    goto LABEL_27;
  }

  v36 = v35;
  v74 = v14;
  v37 = 0;
  v38 = 0;
  Mutable = 0;
  allocator = *MEMORY[0x1E695E480];
  do
  {
    v40 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
    if (v40)
    {
      v41 = v40;
      v42 = vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(v11, a4, v40, &cf);
      if (v42)
      {
        goto LABEL_97;
      }

      if (!cf)
      {
        if (!v38)
        {
          goto LABEL_66;
        }

        v48 = v38;
        v47 = v41;
        goto LABEL_63;
      }

      if (!v38)
      {
        Mutable = CFArrayCreateMutable(allocator, v36, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          vtDecoderSessionEmitDecodedFrameCommon_cold_2(&v83);
          v38 = 0;
LABEL_138:
          a3 = v83;
          goto LABEL_98;
        }

        for (k = 0; k != v36; ++k)
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v20, k);
          CFArrayAppendValue(Mutable, TagCollectionAtIndex);
        }

        v38 = CFArrayCreateMutable(allocator, v36, MEMORY[0x1E695E9C0]);
        if (!v38)
        {
          vtDecoderSessionEmitDecodedFrameCommon_cold_1(&v83);
          goto LABEL_138;
        }

        if (v37)
        {
          for (m = 0; m != v37; ++m)
          {
            CMSampleBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CMSampleBufferAtIndex)
            {
              CMSampleBufferAtIndex = FigTaggedBufferGroupGetCMSampleBufferAtIndex();
            }

            CFArrayAppendValue(v38, CMSampleBufferAtIndex);
          }
        }
      }

      v47 = cf;
    }

    else
    {
      if (!v38)
      {
        goto LABEL_64;
      }

      v47 = FigTaggedBufferGroupGetCMSampleBufferAtIndex();
    }

    v48 = v38;
LABEL_63:
    CFArrayAppendValue(v48, v47);
LABEL_64:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_66:
    ++v37;
  }

  while (v37 != v36);
  a3 = 0;
  if (Mutable && v38)
  {
    v42 = MEMORY[0x193AE2F70](allocator, Mutable, v38, &v80);
LABEL_97:
    a3 = v42;
  }

LABEL_98:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v14 = v74;
LABEL_27:
  FigSimpleMutexUnlock();
  if (a3)
  {
    v22 = 0;
    v23 = 0;
    goto LABEL_78;
  }

  v24 = v14;
  v25 = v80;
  v26 = v81;
LABEL_71:
  if (!(v26 | v25))
  {
    a3 = 0;
    v22 = v20;
    v23 = v19;
LABEL_78:
    v49 = v11;
    v50 = v78;
    v51 = a3;
    v52 = a4;
    goto LABEL_79;
  }

  if (!v19 || !v26)
  {
    if (!v20 || !v25)
    {
      goto LABEL_80;
    }

    v53 = CMTaggedBufferGroupGetCount(v20);
    if (v53 < 1)
    {
LABEL_93:
      v52 = a4 | 4;
      v49 = v11;
      v50 = v78;
      v51 = 0;
      v23 = 0;
      v22 = v25;
    }

    else
    {
      v54 = v53;
      v55 = v24;
      v56 = 0;
      while (1)
      {
        v57 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        v58 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        if (v57)
        {
          if (v58)
          {
            v59 = vtDecompressionSubDuctTransferImage_Synchronously(v11, v55, v57, v58);
            if (v59)
            {
              break;
            }
          }
        }

        if (v54 == ++v56)
        {
          goto LABEL_93;
        }
      }

      v51 = v59;
      v49 = v11;
      v50 = v78;
      v52 = a4;
      v23 = 0;
      v22 = 0;
    }

LABEL_79:
    vtDecompressionSubDuctEmitTransferredFrame(v49, v50, v51, v52, v23, v22);
    goto LABEL_80;
  }

  if ((v24 & 1) == 0)
  {
    goto LABEL_76;
  }

  MEMORY[0x193AE3010](&vtGetEnableAsynchronousTransfer_sGetEnableAsynchronousTransferOnce, vtGetEnableAsynchronousTransferOnce);
  if (sGlobalEnableAsynchronousTransfer)
  {
    goto LABEL_76;
  }

  if (*(v11 + 152))
  {
    if (*(v11 + 160))
    {
      goto LABEL_142;
    }

    FigSimpleMutexLock();
    v60 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(v11 + 160) = v60;
    if (v60)
    {
      v61 = dispatch_group_create();
      *(v11 + 168) = v61;
      if (!v61)
      {
        v62 = *(v11 + 160);
        if (v62)
        {
          dispatch_release(v62);
          *(v11 + 160) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();
    if (*(v11 + 160))
    {
LABEL_142:
      v63 = *(v11 + 168);
      if (v63)
      {
        dispatch_group_wait(v63, 0xFFFFFFFFFFFFFFFFLL);
        v64 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200403D817979uLL);
        *v64 = v11;
        v64[1] = v78;
        *(v64 + 4) = v24;
        *(v64 + 5) = a4 | 1;
        v64[3] = CFRetain(v19);
        v64[4] = CFRetain(v26);
        dispatch_group_async_f(*(v11 + 168), *(v11 + 160), v64, vtDecompressionSubDuctDoAsyncPixelTransferAndOutput_f);
        goto LABEL_80;
      }
    }

LABEL_76:
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(v11, v78, v24, a4, v19, v26);
    goto LABEL_80;
  }

  v65 = *(v11 + 176);
  if (!v65)
  {
    FigSimpleMutexLock();
    if (!*(v11 + 176))
    {
      cf = @"com.apple.coremedia.asyncpixeltransfer";
      v75 = *MEMORY[0x1E695E480];
      allocatora = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v66 = malloc_type_calloc(0x58uLL, 1uLL, 0x10200408E14E316uLL);
      v67 = v66;
      if (v66 && (*v66 = v11, v66[3] = FigSemaphoreCreate(), *(v67 + 48) = FigSimpleMutexCreate(), v68 = FigSemaphoreCreate(), *(v67 + 40) = v68, *(v67 + 24)) && *(v67 + 48) && v68)
      {
        v69 = 0;
        *(v67 + 8) = 1;
        *(v67 + 32) = 0;
        v70 = 16;
        while (!FigThreadCreate())
        {
          if (*(v11 + 248))
          {
            v71 = v67;
            v72 = CFNumberCreate(v75, kCFNumberSInt32Type, (v11 + 248));
            FigThreadSetProperty();
            v73 = v72;
            v67 = v71;
            CFRelease(v73);
          }

          ++v69;
          v70 += 8;
          if (v69 >= *(v67 + 8))
          {
            *(v11 + 176) = v67;
            v67 = 0;
            goto LABEL_130;
          }
        }

        *(v67 + 8) = v69;
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM();
      }

LABEL_130:
      if (allocatora)
      {
        CFRelease(allocatora);
      }

      vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(v67);
    }

    FigSimpleMutexUnlock();
    v65 = *(v11 + 176);
    if (!v65)
    {
      goto LABEL_76;
    }
  }

  if (FigSemaphoreWaitRelative())
  {
    goto LABEL_76;
  }

  FigSimpleMutexLock();
  *(v65 + 56) = v78;
  *(v65 + 64) = v24;
  *(v65 + 68) = a4 | 1;
  *(v65 + 72) = CFRetain(v19);
  *(v65 + 80) = CFRetain(v26);
  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
LABEL_80:
  if (v81)
  {
    CFRelease(v81);
  }

  if (v80)
  {
    CFRelease(v80);
  }

  return v79;
}

uint64_t VTDecoderSessionCleanUpAfterDecode(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(result);
  }

  return result;
}

uint64_t VTDecoderSessionEmitDecodedMultiImageFrame(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, OpaqueCMTaggedBufferGroup *a5)
{
  if (a1[3])
  {
    return VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame(a1[3], a2, a3, a4, a5);
  }

  else
  {
    return vtDecoderSessionEmitDecodedFrameCommon(a1, a2, a3, a4, 0, a5);
  }
}

uint64_t VTDecoderSessionTrace(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (!v1)
    {
      return 0;
    }

    v2 = *v1;
    if (v2)
    {
      if (!*(v2 + 16))
      {
        return 0;
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTDecoderSessionGetDestinationPixelBufferAttributes(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!a1[3])
  {
    if (*a1)
    {
      return *(*a1 + 72);
    }

LABEL_6:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    return 0;
  }

  v1 = a1[3];

  return VTParavirtualizationHostDecoderSessionGetDestinationPixelBufferAttributes(v1);
}

uint64_t VTDecoderSessionCopyResolvedPixelBufferAttributes(void *a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  if (a1 && a3)
  {
    if (a1[3])
    {
      v5 = a1[3];

      return VTParavirtualizationHostDecoderSessionCopyResolvedPixelBufferAttributes(v5, a2, a3);
    }

    if (*a1)
    {
      v7 = *(*a1 + 96);
      if (v7)
      {
        PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v7);
        Copy = CFDictionaryCreateCopy(a2, PixelBufferAttributes);
        *a3 = Copy;
        if (Copy)
        {
          return 0;
        }
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

__CFString *vtDecompressionSessionCopyDebugDesc(void *a1)
{
  if (a1[3])
  {

    return CFRetain(@"[VTDecompressionSession]");
  }

  else
  {
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = CFGetAllocator(a1);
    v7 = a1[5];
    if (v7)
    {
      v7 = *(v7 + 16);
    }

    CFStringAppendFormat(Mutable, 0, @"<VTDecompressionSession %p [%p]>{videoFormatDescription:%p, destinationPixelBufferAttributes:%p, outputCallback:{%p,%p}}", a1, v6, v7, a1[10], a1[12], a1[13]);
    return Mutable;
  }
}

uint64_t __vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_block_invoke()
{
  vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled = CelestialShouldSupportHDR10Plus();
  result = FigGetCFPreferenceNumberWithDefault();
  vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled = result;
  return result;
}

uint64_t __vtDecompressionSessionSetupDolbyVision8p1_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  vtDecompressionSessionSetupDolbyVision8p1_dolbyVision8p1Enabled = result;
  return result;
}

uint64_t __vtDecompressionSessionSetupDolbyVision10p4_block_invoke()
{
  result = _os_feature_enabled_impl();
  vtDecompressionSessionSetupDolbyVision10p4_dolbyVision10p4Enabled = result;
  return result;
}

uint64_t vtFormatDescriptionIsPQ(const opaqueCMFormatDescription *a1)
{
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);

  return FigCFEqual();
}

uint64_t vtDecompressionDuctSetVideoFormatDescription(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

CFDictionaryRef vtCreateFrameTypesArrayElement(const void *a1)
{
  v3 = a1;
  keys = @"OnlyTheseFrames";
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v1)
  {
    vtCreateFrameTypesArrayElement_cold_1();
  }

  return v1;
}

const __CFDictionary *vtDecompressionAttributesHaveColorSpaceAttachments(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965C70]);
    v3 = CFDictionaryGetValue(v1, *MEMORY[0x1E6965C68]);
    if (vtDecompressionDictionaryHasColorSpaceKeys(Value))
    {
      return 1;
    }

    else
    {
      return (vtDecompressionDictionaryHasColorSpaceKeys(v3) != 0);
    }
  }

  return result;
}

uint64_t vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription(const opaqueCMFormatDescription *a1, __CFDictionary **a2)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription_cold_1(&v15);
    return v15;
  }

  v6 = Mutable;
  if (!Extensions)
  {
    v8 = 0;
    v9 = 0;
    Value = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_6:
    width = 0;
    v13 = 0;
    MediaSubType = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965D88]);
  v8 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F30]);
  v9 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F98]);
  LODWORD(Extensions) = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965E80]) != 0;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_4:
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  width = Dimensions.width;
  v13 = *&Dimensions >> 32;
LABEL_7:
  vtGuessMissingColorSpaceAttachmentsGuts(MediaSubType, width, v13, Value, v8, v9, Extensions, v6);
  result = 0;
  *a2 = v6;
  return result;
}

const __CFDictionary *vtDecompressionDictionaryHasColorSpaceKeys(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryContainsKey(result, *MEMORY[0x1E6965D88]) || CFDictionaryContainsKey(v1, *MEMORY[0x1E6965F30]))
    {
      return 1;
    }

    else
    {
      return (CFDictionaryContainsKey(v1, *MEMORY[0x1E6965F98]) != 0);
    }
  }

  return result;
}

void vtGuessMissingColorSpaceAttachmentsGuts(int a1, unint64_t a2, unint64_t a3, CFTypeRef cf1, CFTypeRef a5, CFTypeRef a6, int a7, CFMutableDictionaryRef theDict)
{
  if (cf1 && a5 && a6)
  {
    goto LABEL_4;
  }

  if (!cf1 && !a5 && !a6)
  {
    v24 = 0;
    value = 0;
    v23 = 0;
    VTGetDefaultColorAttributesWithHints(a1, 0, a2, a3, &value, &v24, &v23);
    CFDictionarySetValue(theDict, *MEMORY[0x1E6965D88], value);
    if (a7)
    {
      v15 = *MEMORY[0x1E6965F80];
    }

    else
    {
      v15 = v24;
    }

    CFDictionarySetValue(theDict, *MEMORY[0x1E6965F30], v15);
    v16 = *MEMORY[0x1E6965F98];
    v17 = v23;
LABEL_40:
    CFDictionarySetValue(theDict, v16, v17);
    goto LABEL_41;
  }

  if (cf1 && !CFEqual(cf1, *MEMORY[0x1E6965DD8]) && !CFEqual(cf1, *MEMORY[0x1E6965DB8]) || a5 && !CFEqual(a5, *MEMORY[0x1E6965F50]) && !CFEqual(a5, *MEMORY[0x1E6965F80]))
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    if (!cf1)
    {
      v20 = MEMORY[0x1E6965DD8];
      goto LABEL_31;
    }

LABEL_26:
    v13 = 0;
    if (!a5)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v18 = *MEMORY[0x1E6965FC8];
  if (!CFEqual(a6, *MEMORY[0x1E6965FC8]) && !CFEqual(a6, *MEMORY[0x1E6965FD0]))
  {
LABEL_4:
    v13 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  if (cf1)
  {
    goto LABEL_26;
  }

  v19 = CFEqual(a6, v18);
  v20 = MEMORY[0x1E6965DD8];
  if (!v19)
  {
    v20 = MEMORY[0x1E6965DB8];
  }

LABEL_31:
  CFDictionarySetValue(theDict, *MEMORY[0x1E6965D88], *v20);
  v13 = 1;
  if (!a5)
  {
LABEL_32:
    v21 = MEMORY[0x1E6965F80];
    if (!a7)
    {
      v21 = MEMORY[0x1E6965F50];
    }

    CFDictionarySetValue(theDict, *MEMORY[0x1E6965F30], *v21);
    v14 = 1;
    if (!a6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  if (!a6)
  {
LABEL_35:
    if (cf1 && !CFEqual(cf1, *MEMORY[0x1E6965DD8]))
    {
      v16 = *MEMORY[0x1E6965F98];
      v22 = MEMORY[0x1E6965FD0];
    }

    else
    {
      v16 = *MEMORY[0x1E6965F98];
      v22 = MEMORY[0x1E6965FC8];
    }

    v17 = *v22;
    goto LABEL_40;
  }

LABEL_28:
  if (v14 | v13)
  {
LABEL_41:
    CFDictionarySetValue(theDict, @"ColorInfoGuessedBy", @"VideoToolbox");
  }
}

CFDictionaryRef vtCreateQualityOfServiceTier(void *a1, double a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  keys[0] = @"OnlyTheseFrames";
  keys[1] = @"ReducedFrameDelivery";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v7);
  values[0] = a1;
  values[1] = v4;
  v5 = CFDictionaryCreate(v3, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v5)
  {
    vtCreateQualityOfServiceTier_cold_1();
    if (!v4)
    {
      return v5;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v5;
}

void vtDecompressionSessionAddPropertyToPartition(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (CFDictionaryContainsKey(*a3, key))
  {
    v8 = a3[2];
    v7 = a3 + 2;
    Mutable = v8;
    if (!v8)
    {
LABEL_3:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v7 = Mutable;
    }
  }

  else
  {
    v9 = a3[1];
    if (!v9 || !CFDictionaryContainsKey(v9, key))
    {
      return;
    }

    v10 = a3[3];
    v7 = a3 + 3;
    Mutable = v10;
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  CFDictionarySetValue(Mutable, key, a2);
}

BOOL vtCVBufferAttachmentEmpty(__CVBuffer *a1, const __CFString *a2)
{
  v2 = CVBufferCopyAttachment(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == 0;
}

const __CFNumber *vtCreateScaledCleanApertureValue(const __CFDictionary *a1, const void *a2, double a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    valuePtr = 0.0;
    CFNumberGetValue(result, kCFNumberDoubleType, &valuePtr);
    valuePtr = valuePtr * a3;
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  }

  return result;
}

__n128 vtDuctFrameTrackingInfoFindMinPTS(uint64_t a1, CMTime *a2, CMTime *a3)
{
  time1 = a2[1];
  v6 = *a3;
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    result = *&a2[1].value;
    a3->epoch = a2[1].epoch;
    *&a3->value = result;
  }

  return result;
}

__n128 vtDuctFrameTrackingInfoFindMaxPTS(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (*(a2 + 36))
  {
    time1 = *(a2 + 24);
    v6 = *a3;
    if (CMTimeCompare(&time1, &v6) >= 1)
    {
      result = *(a2 + 24);
      a3->epoch = *(a2 + 40);
      *&a3->value = result;
    }
  }

  return result;
}

void vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(void *a1, const opaqueCMFormatDescription *a2, __CVBuffer *a3)
{
  vtTransferImageBufferAttachmentsFromVideoFormatDescription(a2, a3);
  if (!VTIsBufferTaggedWithColorProperties(a3))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    v7 = a1[26];
    if (v7)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v7);
    }

    v8 = a1[27];
    if (v8)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965F30], v8);
    }

    v9 = a1[28];
    if (v9)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965F98], v9);
    }

    v10 = a1[29];
    if (v10)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965EC8], v10);
    }

    CVBufferSetAttachments(a3, v6, kCVAttachmentMode_ShouldPropagate);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(uint64_t a1, CVBufferRef buffer)
{
  v18 = 0;
  if (vtAddDolbyOverride_onceToken != -1)
  {
    vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_1();
  }

  if (!vtAddDolbyOverride_addDolbyOverride && !*(a1 + 280))
  {
LABEL_23:
    v5 = v18;
    if (!v18)
    {
      return;
    }

    goto LABEL_24;
  }

  v4 = *MEMORY[0x1E6965E48];
  v5 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965E48], 0);
  v18 = v5;
  if (!v5)
  {
    v6 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965D88], 0);
    v7 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F98], 0);
    v8 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
    if (FigCFEqual() && FigCFEqual() && FigCFEqual())
    {
      if (!*(a1 + 288) && VTHDRImageStatisticsGenerationSessionCreate(0, 0, (a1 + 288)))
      {
        vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_2();
      }

      else if (!*(a1 + 296) && VTHDRMetadataGenerationSessionCreate(*MEMORY[0x1E695E480], 4, 0, (a1 + 296)))
      {
        vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_3();
      }

      else
      {
        v9 = *(a1 + 288);
        if (v9)
        {
          if (*(a1 + 296))
          {
            v16 = 0;
            v17 = 0;
            VTHDRImageStatisticsGenerationSessionCreateStatistics(v9, buffer, &v17 + 4, &v17, &v16 + 4, &v16);
            v13 = 0u;
            v14 = 0u;
            v15 = 1;
            v11 = 0u;
            v12 = 0u;
            v10[0] = *&v17;
            v10[1] = *(&v16 + 1);
            v10[2] = *(&v17 + 1);
            v10[3] = *&v16;
            v10[4] = *&v16;
            WORD6(v14) = 257;
            BYTE14(v14) = 1;
            VTHDRMetadataGenerationSessionCreateDataFromStatistics(*(a1 + 296), 0, 1, v10, 1, &v18);
            if (v18)
            {
              CVBufferSetAttachment(buffer, v4, v18, kCVAttachmentMode_ShouldPropagate);
            }
          }
        }
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_23;
  }

LABEL_24:
  CFRelease(v5);
}

uint64_t __vtAddDolbyOverride_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  vtAddDolbyOverride_addDolbyOverride = result;
  return result;
}

uint64_t vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(uint64_t a1, int a2, void *a3, CVPixelBufferRef *a4)
{
  if ((a2 & 0x1000000) != 0)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    v7 = *(a1 + 104) != *(a1 + 96);
  }

  else
  {
    v7 = *(a1 + 72) && CVPixelBufferIsCompatibleWithAttributes() == 0;
  }

  if (VTIsPixelBufferCompatibleWithColorProperties(a3, *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), (a1 + 240)) && !v7)
  {
    return 0;
  }

  vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
  v11 = *MEMORY[0x1E695E480];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(a1 + 104), a4);
  if (PixelBuffer)
  {
    return PixelBuffer;
  }

  v13 = (a1 + 136);
  if (*(a1 + 136))
  {
    return 0;
  }

  v14 = CFGetAllocator(*a1);
  PixelBuffer = VTPixelTransferSessionCreate(v14, (a1 + 136));
  if (PixelBuffer)
  {
    return PixelBuffer;
  }

  if (*v13)
  {
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = Mutable;
    v17 = MEMORY[0x1E695E4C0];
    if (!*(a1 + 265))
    {
      v17 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"RealTime", *v17);
    if (*(a1 + 248))
    {
      FigCFDictionarySetInt32();
    }

    v18 = *(a1 + 208);
    if (v18)
    {
      CFDictionarySetValue(v16, @"DestinationColorPrimaries", v18);
    }

    v19 = *(a1 + 216);
    if (v19)
    {
      CFDictionarySetValue(v16, @"DestinationTransferFunction", v19);
    }

    v20 = *(a1 + 224);
    if (v20)
    {
      CFDictionarySetValue(v16, @"DestinationYCbCrMatrix", v20);
    }

    v21 = *(a1 + 232);
    if (v21)
    {
      CFDictionarySetValue(v16, @"DestinationICCProfile", v21);
    }

    v9 = VTSessionSetProperties(*v13, v16);
    if (v16)
    {
      CFRelease(v16);
    }

    if (v9)
    {
      return v9;
    }
  }

  v22 = *(a1 + 144);
  if (!v22)
  {
    return 0;
  }

  v23 = *v13;

  return VTSessionSetProperties(v23, v22);
}

uint64_t vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(uint64_t a1, const void *a2, char a3, int a4, __CVBuffer *a5, __CVBuffer *a6)
{
  v6 = a6;
  v10 = vtDecompressionSubDuctTransferImage_Synchronously(a1, a3, a5, a6);
  if (v10)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v6 = 0;
  }

  return vtDecompressionSubDuctEmitTransferredFrame(a1, a2, v10, a4 | 4u, v6, 0);
}

uint64_t vtDecompressionSubDuctTransferImage_Synchronously(uint64_t a1, char a2, __CVBuffer *a3, __CVBuffer *a4)
{
  v7 = *(a1 + 136);
  v8 = *MEMORY[0x1E695E4C0];
  if ((a2 & 4) != 0)
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4D0];
  }

  VTSessionSetProperty(v7, @"EnableHighSpeedTransfer", v9);
  if (VTAvoidHardwarePixelTransfer())
  {
    VTSessionSetProperty(*(a1 + 136), @"EnableHardwareAcceleratedTransfer", v8);
    VTSessionSetProperty(*(a1 + 136), @"EnableGPUAcceleratedTransfer", v8);
  }

  v10 = *(a1 + 136);

  return VTPixelTransferSessionTransferImage(v10, a3, a4);
}

void vtGetEnableAsynchronousTransferOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"asyncpixeltransfer", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v0)
  {
    v1 = v0;
    CFStringGetCString(v0, v2, 200, 0x8000100u);
    if (CFEqual(v1, @"disable") || CFEqual(v1, @"disabled"))
    {
      sGlobalEnableAsynchronousTransfer = 1;
    }

    CFRelease(v1);
  }
}

void vtDecompressionSubDuctDoAsyncPixelTransferAndOutput_f(uint64_t a1)
{
  if (a1)
  {
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 32));
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

    free(a1);
  }
}

uint64_t vtDecompressionDuctAsyncPixelTransfer_WorkerThread(uint64_t a1)
{
  while (1)
  {
    FigSemaphoreWaitRelative();
    FigSimpleMutexLock();
    v3 = *(a1 + 64);
    v2 = *(a1 + 68);
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    v6 = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    FigSimpleMutexUnlock();
    if (*(a1 + 32))
    {
      break;
    }

    FigSemaphoreSignal();
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(*a1, v6, v3, v2, v5, v4);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (v6)
  {
    vtDecompressionSubDuctEmitTransferredFrame(*a1, v6, 4294954393, v2, 0, 0);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t DepthWrapperDecoder_CreateInstance()
{
  VTVideoDecoderGetClassID();
  v0 = CMDerivedObjectCreate();
  DepthWrapperDecoder_CreateInstance_cold_3();
  return v0;
}

uint64_t DepthWrapperDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    VTDecompressionSessionInvalidate(*(DerivedStorage + 40));
  }

  return 0;
}

void DepthWrapperDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[6] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    DerivedStorage[9] = 0;

    free(v6);
  }
}

__CFString *DepthWrapperDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<DepthWrapperDecoder %p>", a1);
  return Mutable;
}

uint64_t DepthWrapperDecoder_StartSession(uint64_t a1, uint64_t a2, const void *a3)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 4) == 1684369512)
  {
    v8 = 1751410032;
  }

  else
  {
    v8 = 1751411059;
  }

  v54 = v8;
  v9 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v7 + 16));
  *(buffer + 5) = 0;
  buffer[0] = 0;
  v11 = *MEMORY[0x1E69600A0];
  Extension = CMFormatDescriptionGetExtension(*(v7 + 16), *MEMORY[0x1E69600A0]);
  if (!Extension || (v13 = Extension, v14 = CFGetTypeID(Extension), v14 != CFDictionaryGetTypeID()))
  {
    DepthWrapperDecoder_StartSession_cold_12(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  Value = CFDictionaryGetValue(v13, @"disc");
  if (!Value)
  {
    DepthWrapperDecoder_StartSession_cold_11(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v16 = Value;
  v17 = CFGetTypeID(Value);
  if (v17 != CFDataGetTypeID())
  {
    DepthWrapperDecoder_StartSession_cold_1(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (CFDataGetLength(v16) <= 12)
  {
    DepthWrapperDecoder_StartSession_cold_10(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v59.location = 0;
  v59.length = 13;
  CFDataGetBytes(v16, v59, buffer);
  if (LODWORD(buffer[0]))
  {
    DepthWrapperDecoder_StartSession_cold_2(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (BYTE4(buffer[0]) != 1)
  {
    DepthWrapperDecoder_StartSession_cold_3(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v18 = vrev32_s8(*(buffer + 5));
  v19.i64[0] = v18.i32[0];
  v19.i64[1] = v18.i32[1];
  v20 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v19), vdupq_n_s64(0x3EF0000000000000uLL)));
  if (v20.f32[0] < 0.0)
  {
    DepthWrapperDecoder_StartSession_cold_9(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (v20.f32[1] <= v20.f32[0])
  {
    DepthWrapperDecoder_StartSession_cold_8(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  *(v7 + 60) = v20;
  v21 = *(v7 + 72);
  v22 = (v20.f32[1] - v20.f32[0]) + 1.0;
  v53 = v20.f32[0];
  v23 = powf(v22, 0.00097752);
  v24 = powf(v22, -0.00097752);
  for (i = 0; i != 2048; i += 2)
  {
    v24 = v23 * v24;
    _S2 = (v24 + -1.0) + v53;
    __asm { FCVT            H2, S2 }

    *(v21 + i) = LOWORD(_S2);
  }

  PixelBufferAttributesDictionary = depthdecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), &v54, &cf);
  v32 = cf;
  if (PixelBufferAttributesDictionary)
  {
    v45 = PixelBufferAttributesDictionary;
    goto LABEL_28;
  }

  VTDecoderSessionSetPixelBufferAttributes(*(v7 + 8), cf);
  v33 = *(v7 + 16);
  v34 = CMVideoFormatDescriptionGetDimensions(v33);
  Extensions = CMFormatDescriptionGetExtensions(v33);
  v36 = MEMORY[0x1E695E480];
  if (!Extensions)
  {
    DepthWrapperDecoder_StartSession_cold_7(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v37 = Extensions;
  v38 = CFDictionaryGetValue(Extensions, v11);
  if (!v38)
  {
    DepthWrapperDecoder_StartSession_cold_6(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v39 = v38;
  v40 = *v36;
  MutableCopy = CFDictionaryCreateMutableCopy(*v36, 0, v37);
  if (!MutableCopy)
  {
    DepthWrapperDecoder_StartSession_cold_5(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v42 = MutableCopy;
  v43 = CFDictionaryCreateMutableCopy(v40, 0, v39);
  if (!v43)
  {
    DepthWrapperDecoder_StartSession_cold_4(v42, &destinationImageBufferAttributes);
LABEL_47:
    v45 = destinationImageBufferAttributes;
    if (destinationImageBufferAttributes)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v44 = v43;
  CFDictionaryRemoveValue(v43, @"disc");
  CFDictionarySetValue(v42, v11, v44);
  CFDictionaryRemoveValue(v42, *MEMORY[0x1E69600D0]);
  CFDictionaryRemoveValue(v42, *MEMORY[0x1E69600C8]);
  v45 = CMVideoFormatDescriptionCreate(v40, 0x68766331u, v34.width, v34.height, v42, (v7 + 32));
  CFRelease(v42);
  CFRelease(v44);
  if (v45)
  {
    goto LABEL_28;
  }

LABEL_25:
  v46 = *(v7 + 24);
  v47 = *(v7 + 32);
  VTVideoDecoderGetCMBaseObject(a1);
  v48 = CMBaseObjectGetDerivedStorage();
  destinationImageBufferAttributes = 0;
  v56 = 1278226736;
  v49 = CMVideoFormatDescriptionGetDimensions(*(v48 + 16));
  v50 = depthdecoder_createPixelBufferAttributesDictionary(v49, HIDWORD(v49), &v56, &destinationImageBufferAttributes);
  if (!v50)
  {
    v51 = destinationImageBufferAttributes;
    v45 = VTDecompressionSessionCreate(*v36, v47, v46, destinationImageBufferAttributes, 0, (v7 + 40));
    if (!v51)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v45 = v50;
  v51 = destinationImageBufferAttributes;
  if (destinationImageBufferAttributes)
  {
LABEL_27:
    CFRelease(v51);
  }

LABEL_28:
  if (v32)
  {
    CFRelease(v32);
  }

  return v45;
}

uint64_t DepthWrapperDecoder_DecodeFrame(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, VTDecodeFrameFlags a4, VTDecodeInfoFlags *a5)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_group_enter(*(DerivedStorage + 48));
  ++*(DerivedStorage + 56);
  if (!CMSampleBufferDataIsReady(a3))
  {
    DepthWrapperDecoder_DecodeFrame_cold_1(&timingInfoOut);
    value_low = LODWORD(timingInfoOut.duration.value);
LABEL_13:
    depthdecoder_emitDecodedFrame(a1, a2, value_low, 0, 0);
    return value_low;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v12 = *(DerivedStorage + 32);
  sampleBufferOut = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
  timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  sampleSizeArray = CMBlockBufferGetDataLength(DataBuffer);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(a3, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    value_low = SampleTimingInfo;
    goto LABEL_13;
  }

  v14 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], DataBuffer, v12, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &sampleBufferOut);
  if (v14)
  {
    value_low = v14;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    goto LABEL_13;
  }

  CMPropagateAttachments(a3, sampleBufferOut);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v17 = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
    v18 = CFArrayGetValueAtIndex(v17, 0);
    CFDictionaryApplyFunction(ValueAtIndex, depthdecoder_dictionarySetValue, v18);
  }

  v19 = sampleBufferOut;
  v20 = *(DerivedStorage + 40);
  outputHandler[0] = MEMORY[0x1E69E9820];
  outputHandler[1] = 0x40000000;
  outputHandler[2] = __DepthWrapperDecoder_DecodeFrame_block_invoke;
  outputHandler[3] = &__block_descriptor_tmp_3;
  v24 = a4 & 1;
  outputHandler[4] = DerivedStorage;
  outputHandler[5] = a1;
  outputHandler[6] = a2;
  value_low = VTDecompressionSessionDecodeFrameWithOutputHandler(v20, sampleBufferOut, a4, a5, outputHandler);
  if (v19)
  {
    CFRelease(v19);
  }

  return value_low;
}

uint64_t DepthWrapperDecoder_FinishDelayedFrames(uint64_t a1)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v3 = DerivedStorage;
  v2 = VTDecompressionSessionFinishDelayedFrames(*(DerivedStorage + 40));
  if (*(v3 + 48))
  {
    v4 = 2;
    do
    {
      v5 = *(v3 + 48);
      v6 = dispatch_time(0, 1000000000 * v4);
      v4 *= 2;
    }

    while (dispatch_group_wait(v5, v6));
  }

  return v2;
}

uint64_t depthdecoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, uint64_t a3, __CFDictionary **a4)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      v9 = v8;
      FigCFArrayAppendInt32();
      CFDictionarySetValue(v7, *MEMORY[0x1E6966130], v9);
      CFRelease(v9);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      result = 0;
      *a4 = v7;
    }

    else
    {
      depthdecoder_createPixelBufferAttributesDictionary_cold_1(v7, &v11);
      return v11;
    }
  }

  else
  {
    depthdecoder_createPixelBufferAttributesDictionary_cold_2(&v12);
    return v12;
  }

  return result;
}

void depthdecoder_emitDecodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTDecoderSessionEmitDecodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 56);
  v10 = *(DerivedStorage + 48);

  dispatch_group_leave(v10);
}

__CFString *VTPixelBufferAttributesCopyNiceDescription(const __CFDictionary *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"[");
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6966208]);
  v4 = CFDictionaryGetValue(a1, *MEMORY[0x1E69660B8]);
  v5 = @"[any width]";
  if (Value)
  {
    v5 = Value;
  }

  v6 = @"[any height]";
  if (v4)
  {
    v6 = v4;
  }

  CFStringAppendFormat(Mutable, 0, @"%@ x %@, ", v5, v6);
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x1E6966130]);
  if (!v7)
  {
    v10 = @"[any pixel format]";
LABEL_25:
    CFStringAppend(Mutable, v10);
    goto LABEL_26;
  }

  v8 = v7;
  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    v11 = CFArrayGetTypeID();
    if (v11 == CFGetTypeID(v8))
    {
      Count = CFArrayGetCount(v8);
      v13 = Count;
      if (Count >= 100)
      {
        v14 = 100;
      }

      else
      {
        v14 = Count;
      }

      if (Count <= 100)
      {
        v15 = 0;
      }

      else
      {
        v15 = Count - 100;
      }

      CFStringAppend(Mutable, @"[");
      if (v13 >= 1)
      {
        v16 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v16);
          if (v16)
          {
            CFStringAppend(Mutable, @", ");
          }

          vtGetPixelFormatNumberAsString(ValueAtIndex, v19);
          CFStringAppendFormat(Mutable, 0, @"%s", v19);
          ++v16;
        }

        while (v14 != v16);
      }

      if (v15 >= 1)
      {
        CFStringAppendFormat(Mutable, 0, @", (%d more)", v15);
      }

      v10 = @"]";
    }

    else
    {
      v10 = @"[bad pixel format]";
    }

    goto LABEL_25;
  }

  vtGetPixelFormatNumberAsString(v8, v19);
  CFStringAppendFormat(Mutable, 0, @"%s", v19);
LABEL_26:
  CFDictionaryApplyFunction(a1, vtAppendNicelyUnlessWHPF, Mutable);
  CFStringAppend(Mutable, @"]");
  return Mutable;
}

char *vtGetPixelFormatNumberAsString(const __CFNumber *a1, char *a2)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr > 100)
  {
    valuePtr = bswap32(valuePtr);
    snprintf(a2, 0x14uLL, "%.4s");
  }

  else
  {
    snprintf(a2, 0x14uLL, "%d");
  }

  return a2;
}

void vtAppendNicelyUnlessWHPF(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (!CFEqual(a1, *MEMORY[0x1E6966208]) && !CFEqual(a1, *MEMORY[0x1E69660B8]) && !CFEqual(a1, *MEMORY[0x1E6966130]))
  {
    v6[0] = a3;
    v6[1] = 1;
    vtAppendNicely(a1, a2, v6);
  }
}

uint64_t vtBuildPixelBufferPoolsCommon(const __CFAllocator *a1, _BOOL8 a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5, const __CFBoolean *a6, unsigned int a7, unsigned int a8, char a9, char a10, CVPixelBufferPoolRef *a11, CVPixelBufferPoolRef *a12, _BYTE *a13, _BYTE *a14)
{
  v19 = a2;
  v167 = 0;
  resolvedDictionaryOut = 0;
  v165 = 0;
  v166 = 0;
  v163 = 0;
  poolOut = 0;
  v162 = 0;
  DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection = 0;
  if (vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(a2))
  {
    DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection = vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(a3);
  }

  if (a10)
  {
    v22 = 1;
  }

  else
  {
    if (initDefaultsCommon_onceToken_0 != -1)
    {
      vtBuildPixelBufferPoolsCommon_cold_1();
    }

    v22 = sAllowMetalTransferSession;
  }

  v153 = v22;
  v146 = DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection;
  if (!a8)
  {
    v23 = 0;
LABEL_15:
    cf = 0;
    goto LABEL_16;
  }

  if (!v19 || (v24 = *MEMORY[0x1E6966130], (Value = CFDictionaryGetValue(v19, *MEMORY[0x1E6966130])) == 0))
  {
    v23 = 0;
    goto LABEL_13;
  }

  v58 = Value;
  theDicta = v19;
  v59 = a3;
  v60 = CFGetTypeID(Value);
  if (v60 != CFArrayGetTypeID())
  {
    v23 = 0;
    a3 = v59;
    goto LABEL_89;
  }

  a3 = v59;
  if (!CFArrayGetCount(v58))
  {
    v23 = 0;
LABEL_89:
    v19 = theDicta;
    goto LABEL_13;
  }

  PrioritizedPixelFormatListByAlpha = vtCreatePrioritizedPixelFormatListByAlpha(v58);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v23 = MutableCopy;
    CFDictionarySetValue(MutableCopy, v24, PrioritizedPixelFormatListByAlpha);
    if (PrioritizedPixelFormatListByAlpha)
    {
      CFRelease(PrioritizedPixelFormatListByAlpha);
    }

    v19 = v23;
LABEL_13:
    if (!a3)
    {
      goto LABEL_15;
    }

    v26 = *MEMORY[0x1E6966130];
    v27 = CFDictionaryGetValue(a3, *MEMORY[0x1E6966130]);
    if (!v27)
    {
      goto LABEL_15;
    }

    v61 = v27;
    v152 = v23;
    v62 = a3;
    v63 = CFGetTypeID(v27);
    if (v63 == CFArrayGetTypeID())
    {
      a3 = v62;
      if (CFArrayGetCount(v61))
      {
        PrioritizedPixelFormatListByAlpha = vtCreatePrioritizedPixelFormatListByAlpha(v61);
        v65 = FigCFDictionaryCreateMutableCopy();
        a3 = v65;
        if (!v65)
        {
          vtBuildPixelBufferPoolsCommon_cold_3(valuePtr);
          v74 = 0;
          v69 = 0;
          v85 = 0;
          cf = 0;
          v31 = 0;
          v83 = LODWORD(valuePtr[0]);
          v23 = v152;
          goto LABEL_260;
        }

        CFDictionarySetValue(v65, v26, PrioritizedPixelFormatListByAlpha);
        v23 = v152;
        cf = a3;
        if (PrioritizedPixelFormatListByAlpha)
        {
          CFRelease(PrioritizedPixelFormatListByAlpha);
        }

LABEL_16:
        if (a4)
        {
          PrioritizedPixelFormatListByAlpha = FigCFDictionaryCreateMutableCopy();
          if (!PrioritizedPixelFormatListByAlpha)
          {
            vtBuildPixelBufferPoolsCommon_cold_4(valuePtr);
            v74 = 0;
            a3 = 0;
            v69 = 0;
            v85 = 0;
            v31 = 0;
            goto LABEL_286;
          }

          v29 = *MEMORY[0x1E6966170];
          v141 = CFDictionaryGetValue(a4, *MEMORY[0x1E6966170]);
          CFDictionaryRemoveValue(PrioritizedPixelFormatListByAlpha, v29);
        }

        else
        {
          v141 = 0;
          PrioritizedPixelFormatListByAlpha = 0;
        }

        v142 = a7;
        if (!a6)
        {
          goto LABEL_21;
        }

        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(a6))
        {
          if (CFBooleanGetValue(a6))
          {
            v143 = 0;
            v163 = -1;
            goto LABEL_22;
          }
        }

        else
        {
          v57 = CFNumberGetTypeID();
          if (v57 == CFGetTypeID(a6))
          {
            CFNumberGetValue(a6, kCFNumberSInt64Type, &v163);
            v143 = 0;
LABEL_22:
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            v31 = Mutable;
            if (v19)
            {
              CFArrayAppendValue(Mutable, v19);
            }

            v139 = a4;
            v140 = a8;
            v154 = a1;
            if (a3)
            {
              CFArrayAppendValue(v31, a3);
            }

            theDict = v19;
            v148 = PrioritizedPixelFormatListByAlpha;
            v149 = a3;
            v151 = v23;
            v170 = 0;
            v169 = 0;
            Count = CFArrayGetCount(v31);
            if (Count >= 1)
            {
              v33 = Count;
              v34 = 0;
              cf1 = 0uLL;
              v35 = 0;
              v36 = 0;
              v159 = *MEMORY[0x1E6965F98];
              v160 = *MEMORY[0x1E6965E80];
              key = *MEMORY[0x1E69660D8];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v31, v36);
                if (ValueAtIndex)
                {
                  v38 = ValueAtIndex;
                  v39 = v31;
                  v40 = CFDictionaryGetTypeID();
                  if (v40 == CFGetTypeID(v38))
                  {
                    v41 = CFDictionaryGetValue(v38, v160);
                    v42 = CFDictionaryGetValue(v38, v159);
                    if (v41)
                    {
                      v43 = CFNumberGetTypeID();
                      if (v43 == CFGetTypeID(v41))
                      {
                        if (*(&cf1 + 1))
                        {
                          v171 = 0.0;
                          valuePtr[0] = 0.0;
                          CFNumberGetValue(*(&cf1 + 1), kCFNumberDoubleType, valuePtr);
                          CFNumberGetValue(v41, kCFNumberDoubleType, &v171);
                          v31 = v39;
                          if (vabdd_f64(valuePtr[0], v171) >= 0.01)
                          {
                            goto LABEL_102;
                          }

                          if (!v42)
                          {
                            goto LABEL_44;
                          }

                          goto LABEL_39;
                        }

                        *(&cf1 + 1) = v41;
                      }
                    }

                    v31 = v39;
                    if (!v42)
                    {
                      goto LABEL_44;
                    }

LABEL_39:
                    v44 = CFStringGetTypeID();
                    if (v44 == CFGetTypeID(v42))
                    {
                      if (cf1)
                      {
                        if (!CFEqual(cf1, v42))
                        {
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        *&cf1 = v42;
                      }
                    }

LABEL_44:
                    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
                    if (v169)
                    {
                      v46 = BooleanIfPresent == 0;
                    }

                    else
                    {
                      v46 = 1;
                    }

                    if (!v46)
                    {
                      v35 = 1;
                    }

                    CFDictionaryGetValue(v38, key);
                    FigCFDictionaryGetIntIfPresent();
                    if (v34)
                    {
                      if (v34 != v170)
                      {
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v34 = v170;
                    }

                    goto LABEL_53;
                  }

                  v31 = v39;
                }

LABEL_53:
                if (v33 == ++v36)
                {
                  v47 = v35 == 0;
                  goto LABEL_59;
                }
              }
            }

            cf1 = 0uLL;
            v34 = 0;
            v47 = 1;
LABEL_59:
            if (!CVPixelBufferCreateResolvedAttributesDictionary(0, v31, &resolvedDictionaryOut))
            {
              if (!resolvedDictionaryOut)
              {
LABEL_103:
                LOBYTE(v170) = 0;
                v67 = v154;
                v68 = vtCreateUsablePixelBufferAttributes(v154, a5, theDict, v149, 1, &v166, &v170);
                v23 = v151;
                v69 = v148;
                if (v68 || (v170 ? (v72 = v149, FirstPixelFormatFromPixelBufferAttributes = vtGetFirstPixelFormatFromPixelBufferAttributes(v149, 0, v146), v71 = v166, v70 = FirstPixelFormatFromPixelBufferAttributes != vtGetFirstPixelFormatFromPixelBufferAttributes(v166, 0, v146)) : (v70 = 1, v71 = v166, v72 = v149), v68 = vtCreateUsablePixelBufferAttributes(v154, a5, v72, v71, v70, &v165, 0), v68))
                {
                  v83 = v68;
                  goto LABEL_257;
                }

                v82 = v165;
                if (v165 && !v170)
                {
                  v165 = 0;
                  v83 = vtCreateReorderedPixelBufferAttributes(v154, v82, v71, &v165);
                  CFRelease(v82);
                  if (v83)
                  {
                    goto LABEL_257;
                  }

                  v82 = v165;
                  v84 = vtGetFirstPixelFormatFromPixelBufferAttributes(v165, 0, v146);
                  if (v84 != vtGetFirstPixelFormatFromPixelBufferAttributes(v71, 0, v146))
                  {
                    v166 = 0;
                    v83 = vtCreateReorderedPixelBufferAttributes(v154, v71, v82, &v166);
                    CFRelease(v71);
                    if (v83)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                if (v82)
                {
                  LODWORD(valuePtr[0]) = 0;
                  LODWORD(v171) = 0;
                  v86 = vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(v82) && vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(v166);
                  v89 = CFDictionaryGetTypeID();
                  if (v89 == CFGetTypeID(v82) && (v90 = CFDictionaryGetTypeID(), v91 = v166, v90 == CFGetTypeID(v166)) && (v92 = *MEMORY[0x1E6966130], v93 = CFDictionaryGetValue(v82, *MEMORY[0x1E6966130]), v94 = CFDictionaryGetValue(v91, v92), v93) && (v95 = v94) != 0)
                  {
                    keya = v92;
                    v96 = CFArrayGetTypeID();
                    if (v96 == CFGetTypeID(v93))
                    {
                      v161 = CFArrayGetCount(v93);
                    }

                    else
                    {
                      v161 = 1;
                    }

                    v114 = CFArrayGetTypeID();
                    if (v114 == CFGetTypeID(v95))
                    {
                      v115 = CFArrayGetCount(v95);
                    }

                    else
                    {
                      v115 = 1;
                    }

                    v116 = vtGetFirstPixelFormatFromPixelBufferAttributes(v82, 0, v86);
                    v158 = v91;
                    v117 = vtGetFirstPixelFormatFromPixelBufferAttributes(v91, 0, v86);
                    v138 = v31;
                    v118 = v116 != v117 || VTPixelTransferSessionCanTransfer(v116, v116, 0) == 0;
                    if (v161 < 1)
                    {
                      goto LABEL_225;
                    }

                    v119 = 0;
                    while (1)
                    {
                      LODWORD(valuePtr[0]) = 0;
                      v120 = CFArrayGetTypeID();
                      if (v120 == CFGetTypeID(v93))
                      {
                        FigCFArrayGetInt32AtIndex();
                      }

                      else
                      {
                        v121 = CFNumberGetTypeID();
                        if (v121 == CFGetTypeID(v93))
                        {
                          CFNumberGetValue(v93, kCFNumberSInt32Type, valuePtr);
                        }
                      }

                      v122 = !v118;
                      if (LODWORD(valuePtr[0]) == v116)
                      {
                        v122 = 0;
                      }

                      if (!v122 && v115 >= 1)
                      {
                        break;
                      }

LABEL_218:
                      if (++v119 == v161)
                      {
                        goto LABEL_225;
                      }
                    }

                    v123 = 0;
                    while (1)
                    {
                      LODWORD(v171) = 0;
                      v124 = CFArrayGetTypeID();
                      if (v124 == CFGetTypeID(v95))
                      {
                        FigCFArrayGetInt32AtIndex();
                      }

                      else
                      {
                        v125 = CFNumberGetTypeID();
                        if (v125 == CFGetTypeID(v95))
                        {
                          CFNumberGetValue(v95, kCFNumberSInt32Type, &v171);
                        }
                      }

                      v126 = LODWORD(v171) == v117 || v118;
                      if (v126 == 1 && LODWORD(valuePtr[0]) && LODWORD(v171) && VTPixelTransferSessionCanTransfer(LODWORD(valuePtr[0]), LODWORD(v171), 0))
                      {
                        break;
                      }

                      if (v115 == ++v123)
                      {
                        goto LABEL_218;
                      }
                    }

                    if (v123 | v119)
                    {
                      v127 = 0;
                      v23 = v151;
                      v67 = v154;
                      if (v161 == 1)
                      {
                        v87 = v82;
                        v131 = 0;
                        v128 = v158;
                      }

                      else
                      {
                        v128 = v158;
                        if (v119)
                        {
                          v127 = FigCFArrayCreateMutableCopy();
                          v129 = CFArrayGetValueAtIndex(v127, v119);
                          if (v129)
                          {
                            v130 = v129;
                            CFRetain(v129);
                            CFArrayRemoveValueAtIndex(v127, v119);
                            CFArrayInsertValueAtIndex(v127, 0, v130);
                            CFRelease(v130);
                          }

                          else
                          {
                            CFArrayRemoveValueAtIndex(v127, v119);
                            CFArrayInsertValueAtIndex(v127, 0, 0);
                          }

                          v87 = CFDictionaryCreateMutableCopy(v154, 0, v82);
                          CFDictionarySetValue(v87, keya, v127);
                          v165 = v87;
                          if (v87)
                          {
                            CFRetain(v87);
                          }

                          CFRelease(v82);
                          v131 = v87;
                        }

                        else
                        {
                          v87 = v82;
                          v131 = 0;
                        }
                      }

                      v132 = 0;
                      if (v115 < 2)
                      {
                        v133 = 0;
                      }

                      else
                      {
                        v133 = 0;
                        if (v123)
                        {
                          v132 = FigCFArrayCreateMutableCopy();
                          v134 = CFArrayGetValueAtIndex(v132, v123);
                          if (v134)
                          {
                            v135 = v134;
                            CFRetain(v134);
                            CFArrayRemoveValueAtIndex(v132, v123);
                            CFArrayInsertValueAtIndex(v132, 0, v135);
                            CFRelease(v135);
                          }

                          else
                          {
                            CFArrayRemoveValueAtIndex(v132, v123);
                            CFArrayInsertValueAtIndex(v132, 0, 0);
                          }

                          v133 = CFDictionaryCreateMutableCopy(v154, 0, v128);
                          CFDictionarySetValue(v133, keya, v132);
                          v166 = v133;
                          if (v133)
                          {
                            CFRetain(v133);
                          }

                          if (v128)
                          {
                            CFRelease(v128);
                          }
                        }
                      }

                      if (v127)
                      {
                        CFRelease(v127);
                      }

                      if (v132)
                      {
                        CFRelease(v132);
                      }

                      if (v131)
                      {
                        CFRelease(v131);
                      }

                      v31 = v138;
                      if (v133)
                      {
                        CFRelease(v133);
                      }

                      v69 = v148;
                    }

                    else
                    {
LABEL_225:
                      v87 = v82;
                      v23 = v151;
                      v69 = v148;
                      v31 = v138;
                      v67 = v154;
                    }
                  }

                  else
                  {
                    v87 = v82;
                  }
                }

                else
                {
                  v87 = 0;
                }

                v83 = a14;
                v97 = CFDictionaryGetValue(v87, *MEMORY[0x1E6966130]);
                if (!v97)
                {
                  goto LABEL_148;
                }

                v98 = v97;
                v99 = CFGetTypeID(v97);
                if (v99 == CFArrayGetTypeID())
                {
                  FirstValue = FigCFArrayGetFirstValue();
                  if (!FirstValue)
                  {
                    goto LABEL_148;
                  }

                  v98 = FirstValue;
                }

                v101 = CFGetTypeID(v98);
                if (v101 == CFNumberGetTypeID())
                {
                  UInt32 = FigCFNumberGetUInt32();
                  v103 = VTPixelTransferSessionCanTransfer(UInt32, UInt32, 1) == 1;
LABEL_149:
                  if (a9 == 1 && v103)
                  {
                    v104 = v31;
                    v105 = FigCFDictionaryGetCount();
                    v85 = CFDictionaryCreateMutableCopy(v67, v105, v87);
                    v106 = v166;
                    v107 = a12;
                    if (v166)
                    {
                      v108 = *MEMORY[0x1E6966208];
                      CFDictionaryGetValue(v87, *MEMORY[0x1E6966208]);
                      v109 = CFDictionaryGetValue(v106, v108);
                      if (v109)
                      {
                        CFDictionarySetValue(v85, v108, v109);
                      }

                      v110 = *MEMORY[0x1E69660B8];
                      CFDictionaryGetValue(v87, *MEMORY[0x1E69660B8]);
                      v111 = CFDictionaryGetValue(v106, v110);
                      if (v111)
                      {
                        CFDictionarySetValue(v85, v110, v111);
                      }

                      v69 = v148;
                      if (!FigCFEqual())
                      {
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966088]);
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966090]);
                      }

                      v107 = a12;
                      if (!FigCFEqual())
                      {
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E69660A0]);
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966078]);
                      }
                    }

                    HIBYTE(v137) = v153;
                    LOBYTE(v137) = 0;
                    v83 = vtBuildPixelBufferPoolsCommon(v154, v85, v87, v139, a5, *MEMORY[0x1E695E4D0], v142, v140, v137, a11, v107, a13, a14);
                    a3 = 0;
                    v31 = v104;
                    goto LABEL_258;
                  }

                  if (v141)
                  {
                    a3 = CFStringCreateWithFormat(v67, 0, @"%@_1", v141);
                    if (!a3)
                    {
                      vtBuildPixelBufferPoolsCommon_cold_7(valuePtr);
LABEL_230:
                      v85 = 0;
                      v83 = LODWORD(valuePtr[0]);
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    a3 = 0;
                  }

                  if (v143)
                  {
                    v112 = vtCreateNamedPixelBufferPool(v67, v69, v166, a3, &poolOut);
                    if (!v112)
                    {
                      goto LABEL_167;
                    }
                  }

                  else
                  {
                    v162 = 0;
                    v112 = vtCreateOrReuseSharedPixelBufferPool(v67, v69, v166, v163, a3, &poolOut, &v162);
                    if (!v112)
                    {
LABEL_167:
                      if (a3)
                      {
                        CFRelease(a3);
                      }

                      CVPixelBufferPoolRelease(*a11);
                      *a11 = poolOut;
                      if (a13)
                      {
                        *a13 = v162;
                      }

                      if (!a12)
                      {
                        a3 = 0;
                        v85 = 0;
                        v83 = 0;
LABEL_258:
                        v74 = 0;
                        goto LABEL_259;
                      }

                      if (v141)
                      {
                        a3 = CFStringCreateWithFormat(v67, 0, @"%@_2", v141);
                        if (!a3)
                        {
                          vtBuildPixelBufferPoolsCommon_cold_9(valuePtr);
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                        a3 = 0;
                      }

                      if (v143)
                      {
                        v113 = vtCreateNamedPixelBufferPool(v67, 0, v87, a3, &poolOut);
                        if (!v113)
                        {
                          goto LABEL_179;
                        }
                      }

                      else
                      {
                        v162 = 0;
                        v113 = vtCreateOrReuseSharedPixelBufferPool(v67, 0, v87, v163, a3, &poolOut, &v162);
                        if (!v113)
                        {
LABEL_179:
                          if (a3)
                          {
                            CFRelease(a3);
                          }

                          CVPixelBufferPoolRelease(*a12);
                          *a12 = poolOut;
                          if (a14)
                          {
                            a3 = 0;
                            v85 = 0;
                            v83 = 0;
                            *a14 = v162;
                            goto LABEL_258;
                          }

LABEL_257:
                          a3 = 0;
                          v85 = 0;
                          goto LABEL_258;
                        }
                      }

                      vtBuildPixelBufferPoolsCommon_cold_10(v113, valuePtr);
                      goto LABEL_230;
                    }
                  }

                  vtBuildPixelBufferPoolsCommon_cold_8(v112, valuePtr);
                  goto LABEL_230;
                }

LABEL_148:
                v103 = 1;
                goto LABEL_149;
              }

              if (cf1 != 0)
              {
                v49 = *MEMORY[0x1E6965E80];
                if (!CFDictionaryGetValue(resolvedDictionaryOut, *MEMORY[0x1E6965E80]))
                {
                  v50 = CFDictionaryCreateMutableCopy(0, 0, resolvedDictionaryOut);
                  if (!v50)
                  {
                    goto LABEL_102;
                  }

                  v51 = v50;
                  if (*(&cf1 + 1))
                  {
                    CFDictionaryAddValue(v50, v49, *(&cf1 + 1));
                  }

                  if (cf1)
                  {
                    CFDictionaryAddValue(v51, *MEMORY[0x1E6965F98], cf1);
                  }

                  CFRelease(resolvedDictionaryOut);
                  resolvedDictionaryOut = v51;
                }
              }

              if (!v47)
              {
                v52 = FigCFDictionaryCreateMutableCopy();
                if (!v52)
                {
                  vtBuildPixelBufferPoolsCommon_cold_5();
                  goto LABEL_102;
                }

                v53 = v52;
                FigCFDictionarySetValue();
                if (resolvedDictionaryOut)
                {
                  CFRelease(resolvedDictionaryOut);
                }

                resolvedDictionaryOut = v53;
              }

              if (v34)
              {
                LODWORD(valuePtr[0]) = 0;
                if (CFDictionaryGetValue(resolvedDictionaryOut, *MEMORY[0x1E69660D8]))
                {
                  FigCFDictionaryGetIntIfPresent();
                  if (!LODWORD(valuePtr[0]))
                  {
                    v54 = FigCFDictionaryCreateMutableCopy();
                    if (v54)
                    {
                      v55 = v54;
                      v56 = FigCFDictionaryCreateMutableCopy();
                      if (v56)
                      {
                        v66 = v56;
                        FigCFDictionarySetInt();
                        FigCFDictionarySetValue();
                        CFRelease(v66);
                        if (resolvedDictionaryOut)
                        {
                          CFRelease(resolvedDictionaryOut);
                        }

                        resolvedDictionaryOut = v55;
                      }

                      else
                      {
                        CFRelease(v55);
                      }
                    }
                  }
                }
              }
            }

LABEL_102:
            if (!resolvedDictionaryOut)
            {
              goto LABEL_103;
            }

            v73 = vtCreateUsablePixelBufferAttributes(v154, a5, resolvedDictionaryOut, 0, 0, &v167, 0);
            v23 = v151;
            v69 = v148;
            if (v73)
            {
              v83 = v73;
LABEL_121:
              v74 = 0;
              a3 = 0;
              v85 = 0;
LABEL_259:
              PrioritizedPixelFormatListByAlpha = 0;
              goto LABEL_260;
            }

            v74 = v167;
            LODWORD(valuePtr[0]) = vtGetFirstPixelFormatFromPixelBufferAttributes(v167, v142, v146);
            if (!v74)
            {
              v80 = a12;
              goto LABEL_127;
            }

            v75 = *MEMORY[0x1E6966130];
            v76 = CFDictionaryGetValue(v74, *MEMORY[0x1E6966130]);
            if (v76 && (v77 = v76, v78 = CFArrayGetTypeID(), v78 == CFGetTypeID(v77)) && CFArrayGetCount(v77) != 1)
            {
              v79 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
              v173.length = CFArrayGetCount(v77);
              v173.location = 0;
              if (CFArrayContainsValue(v77, v173, v79))
              {
                v74 = CFDictionaryCreateMutableCopy(v154, 0, v74);
                CFDictionarySetValue(v74, v75, v79);
                v80 = a12;
                if (!v79)
                {
                  goto LABEL_127;
                }

                goto LABEL_113;
              }
            }

            else
            {
              v79 = 0;
            }

            v80 = a12;
            v74 = CFRetain(v74);
            if (!v79)
            {
LABEL_127:
              if (v143)
              {
                v88 = vtCreateNamedPixelBufferPool(v154, v148, v74, v141, &poolOut);
                if (!v88)
                {
LABEL_129:
                  CVPixelBufferPoolRelease(*a11);
                  *a11 = poolOut;
                  if (a13)
                  {
                    *a13 = v162;
                  }

                  if (v80)
                  {
                    CVPixelBufferPoolRelease(*v80);
                    a3 = 0;
                    v85 = 0;
                    PrioritizedPixelFormatListByAlpha = 0;
                    v83 = 0;
                    *v80 = 0;
                  }

                  else
                  {
                    a3 = 0;
                    v85 = 0;
                    PrioritizedPixelFormatListByAlpha = 0;
                    v83 = 0;
                  }

LABEL_260:
                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (PrioritizedPixelFormatListByAlpha)
                  {
                    goto LABEL_265;
                  }

                  goto LABEL_266;
                }
              }

              else
              {
                v162 = 0;
                v88 = vtCreateOrReuseSharedPixelBufferPool(v154, v148, v74, v163, v141, &poolOut, &v162);
                if (!v88)
                {
                  goto LABEL_129;
                }
              }

              vtBuildPixelBufferPoolsCommon_cold_6(v88, valuePtr);
              a3 = 0;
              v85 = 0;
              PrioritizedPixelFormatListByAlpha = 0;
LABEL_286:
              v83 = LODWORD(valuePtr[0]);
              goto LABEL_260;
            }

LABEL_113:
            CFRelease(v79);
            goto LABEL_127;
          }
        }

LABEL_21:
        v143 = 1;
        goto LABEL_22;
      }

      cf = 0;
    }

    else
    {
      cf = 0;
      a3 = v62;
    }

    v23 = v152;
    goto LABEL_16;
  }

  vtBuildPixelBufferPoolsCommon_cold_2(valuePtr);
  v74 = 0;
  a3 = 0;
  v69 = 0;
  v85 = 0;
  v31 = 0;
  v83 = LODWORD(valuePtr[0]);
  if (PrioritizedPixelFormatListByAlpha)
  {
LABEL_265:
    CFRelease(PrioritizedPixelFormatListByAlpha);
  }

LABEL_266:
  if (v85)
  {
    CFRelease(v85);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  return v83;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName(const __CFAllocator *a1, uint64_t a2, const __CFString *cf, __CFDictionary **a4)
{
  if (!cf || (v5 = cf, v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_3(&v15);
    return v15;
  }

  if (!a4)
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_2(&v14);
    return v14;
  }

  if (a2)
  {
    v5 = CFStringCreateWithFormat(a1, 0, @"%d:%@", a2, v5);
  }

  else
  {
    CFRetain(v5);
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_1(&v13);
    v11 = v13;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966170], v5);
  v11 = 0;
  *a4 = v10;
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

  return v11;
}

void vtAppendNicely(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v6 = *a3;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    context[1] = 0;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, @"[");
    context[0] = Mutable;
    CFDictionaryApplyFunction(a2, vtAppendNicely, context);
    CFStringAppend(Mutable, @"]");
    v9 = 0;
    a2 = Mutable;
  }

  else
  {
    v10 = CFArrayGetTypeID();
    if (v10 == CFGetTypeID(a2))
    {
      Count = CFArrayGetCount(a2);
      v9 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppend(v9, @"[");
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          if (i)
          {
            CFStringAppend(v9, @", ");
          }

          CFStringAppendFormat(v9, 0, @"%@", ValueAtIndex);
        }
      }

      CFStringAppend(v9, @"]");
      Mutable = 0;
      a2 = v9;
    }

    else
    {
      v9 = 0;
      Mutable = 0;
    }
  }

  if (*(a3 + 8))
  {
    CFStringAppend(v6, @", ");
  }

  CFStringAppendFormat(v6, 0, @"%@ = %@", a1, a2);
  *(a3 + 8) = 1;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

BOOL vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryGetValue(result, *MEMORY[0x1E6966130]))
    {
      return 1;
    }

    else
    {
      v2 = 0;
      do
      {
        v3 = v2;
        if (v2 == 2)
        {
          break;
        }

        Value = CFDictionaryGetValue(v1, **(&vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection_sCVKeysThatConstrainPixelFormatSelection + v2 + 1));
        v2 = v3 + 1;
      }

      while (!Value);
      return v3 < 2;
    }
  }

  return result;
}

const __CFDictionary *vtGetFirstPixelFormatFromPixelBufferAttributes(const __CFDictionary *result, int a2, int a3)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x1E6966130]);
    if (result)
    {
      v5 = result;
      v6 = CFGetTypeID(result);
      if (v6 == CFArrayGetTypeID())
      {
        if (!CFArrayGetCount(v5))
        {
          return valuePtr;
        }

        if (a3 && CFArrayGetCount(v5) >= 1)
        {
          v7 = 0;
          v8 = *MEMORY[0x1E69662D8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
            if (ValueAtIndex)
            {
              v10 = ValueAtIndex;
              v11 = CFGetTypeID(ValueAtIndex);
              if (v11 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
                DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
                if (DescriptionWithPixelFormatType)
                {
                  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, v8);
                  if (Value)
                  {
                    v14 = Value;
                    v15 = CFGetTypeID(Value);
                    if (v15 == CFArrayGetTypeID())
                    {
                      CFArrayGetValueAtIndex(v14, 0);
                      FigCFDictionaryGetInt32IfPresent();
                    }
                  }
                }
              }
            }

            ++v7;
          }

          while (v7 < CFArrayGetCount(v5));
        }

        if (a2 && CFArrayGetCount(v5) >= 1)
        {
          v16 = 0;
          v17 = *MEMORY[0x1E69660C8];
          v18 = *MEMORY[0x1E69660D0];
          do
          {
            v19 = CFArrayGetValueAtIndex(v5, v16);
            if (v19)
            {
              v20 = v19;
              v21 = CFGetTypeID(v19);
              if (v21 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
                v22 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
                if (v22)
                {
                  v23 = v22;
                  if (CFDictionaryContainsKey(v22, v17))
                  {
                    if (!CFDictionaryContainsKey(v23, v18) && VTPixelTransferSessionCanTransfer(valuePtr, valuePtr, 0))
                    {
                      return valuePtr;
                    }
                  }
                }
              }
            }
          }

          while (++v16 < CFArrayGetCount(v5));
        }

        valuePtr = 0;
        v5 = CFArrayGetValueAtIndex(v5, 0);
        if (!v5)
        {
          return valuePtr;
        }
      }

      else
      {
        v24 = CFGetTypeID(v5);
        if (v24 != CFNumberGetTypeID())
        {
          return valuePtr;
        }
      }

      v25 = CFGetTypeID(v5);
      if (v25 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
      }

      return valuePtr;
    }
  }

  return result;
}

uint64_t vtCreateNamedPixelBufferPool(CFAllocatorRef allocator, CFTypeRef cf, CFDictionaryRef pixelBufferAttributes, const void *a4, CVPixelBufferPoolRef *poolOut)
{
  if (a4)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      vtCreateNamedPixelBufferPool_cold_1(&v13);
      return v13;
    }

    v10 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966170], a4);
    v11 = CVPixelBufferPoolCreate(allocator, v10, pixelBufferAttributes, poolOut);
LABEL_4:
    CFRelease(v10);
    return v11;
  }

  if (cf)
  {
    v10 = CFRetain(cf);
    v11 = CVPixelBufferPoolCreate(allocator, v10, pixelBufferAttributes, poolOut);
    if (!v10)
    {
      return v11;
    }

    goto LABEL_4;
  }

  return CVPixelBufferPoolCreate(allocator, 0, pixelBufferAttributes, poolOut);
}

uint64_t vtCreateReorderedPixelBufferAttributes(const __CFAllocator *a1, CFDictionaryRef theDict, const __CFDictionary *a3, __CFDictionary **a4)
{
  if (!theDict)
  {
    v29 = 0;
LABEL_65:
    v62 = 0;
    *a4 = v29;
    return v62;
  }

  v8 = *MEMORY[0x1E6966130];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966130]);
  if (!Value)
  {
    goto LABEL_64;
  }

  v10 = Value;
  TypeID = CFArrayGetTypeID();
  v12 = CFGetTypeID(v10);
  if (!a3)
  {
    goto LABEL_64;
  }

  if (TypeID != v12)
  {
    goto LABEL_64;
  }

  v13 = CFDictionaryGetValue(a3, v8);
  if (!v13)
  {
    goto LABEL_64;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 != CFNumberGetTypeID())
  {
    v16 = CFGetTypeID(v14);
    if (v16 != CFArrayGetTypeID())
    {
      vtCreateReorderedPixelBufferAttributes_cold_1(&v84);
      return v84;
    }
  }

  Count = CFArrayGetCount(v10);
  if (Count < 2 || (v18 = Count, (MutableCopy = CFArrayCreateMutableCopy(a1, 0, v10)) == 0))
  {
LABEL_64:
    v29 = CFRetain(theDict);
    goto LABEL_65;
  }

  v20 = MutableCopy;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_63:
    CFRelease(v20);
    goto LABEL_64;
  }

  v82 = Mutable;
  v22 = CFArrayGetTypeID();
  theArray = v20;
  if (v22 == CFGetTypeID(v14))
  {
    v23 = CFArrayGetCount(v14);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v25);
        v27 = CFNumberGetTypeID();
        if (v27 == CFGetTypeID(ValueAtIndex))
        {
          v85.location = 0;
          v85.length = v18;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v85, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            break;
          }
        }

        if (v24 == ++v25)
        {
          goto LABEL_21;
        }
      }

      v48 = FirstIndexOfValue;
      v32 = v82;
      CFArrayAppendValue(v82, ValueAtIndex);
      v33 = theArray;
      v34 = theArray;
      v35 = v48;
LABEL_34:
      CFArrayRemoveValueAtIndex(v34, v35);
      goto LABEL_47;
    }
  }

  else
  {
    v86.location = 0;
    v86.length = v18;
    v30 = CFArrayGetFirstIndexOfValue(v20, v86, v14);
    if (v30 != -1)
    {
      v31 = v30;
      v32 = v82;
      CFArrayAppendValue(v82, v14);
      v33 = v20;
      v34 = v20;
      v35 = v31;
      goto LABEL_34;
    }
  }

LABEL_21:
  v36 = CFArrayGetTypeID();
  if (v36 != CFGetTypeID(v14))
  {
    SimilarPixelFormat = vtCreateSimilarPixelFormat(v14);
    if (SimilarPixelFormat)
    {
      v43 = SimilarPixelFormat;
      v88.location = 0;
      v88.length = v18;
      v46 = CFArrayGetFirstIndexOfValue(theArray, v88, SimilarPixelFormat);
      v32 = v82;
      if (v46 != -1)
      {
        v47 = v46;
        goto LABEL_46;
      }

      CFRelease(v43);
    }

LABEL_36:
    v49 = CFNumberGetTypeID();
    if (v49 == CFGetTypeID(v14))
    {
      PixelFormatColorSpace = vtGetPixelFormatColorSpace(v14);
      PixelFormatRange = vtGetPixelFormatRange(v14);
      PixelFormatBitsPerComponent = vtGetPixelFormatBitsPerComponent(v14);
      if (PixelFormatColorSpace)
      {
LABEL_53:
        v80 = PixelFormatColorSpace;
        if (PixelFormatBitsPerComponent < 1)
        {
          v64 = 0;
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = v18;
          do
          {
            v78 = v65;
            v66 = CFArrayGetValueAtIndex(theArray, v63);
            v67 = vtGetPixelFormatBitsPerComponent(v66);
            if (v67 >= PixelFormatBitsPerComponent)
            {
              v65 = v78;
            }

            else
            {
              CFArrayRemoveValueAtIndex(theArray, v63);
              CFArrayAppendValue(theArray, v66);
              --v63;
              v65 = v78 - 1;
            }

            if (v64 <= v67)
            {
              v64 = v67;
            }

            ++v63;
          }

          while (v63 < v65);
        }

        if (v64 < PixelFormatBitsPerComponent)
        {
          v69 = 0;
          v70 = v18;
          do
          {
            v71 = CFArrayGetValueAtIndex(theArray, v69);
            if (vtGetPixelFormatBitsPerComponent(v71) < v64)
            {
              CFArrayRemoveValueAtIndex(theArray, v69);
              CFArrayAppendValue(theArray, v71);
              --v69;
              --v70;
            }

            ++v69;
          }

          while (v69 < v70);
        }

        v32 = v82;
        if (PixelFormatRange && v80 >= 2)
        {
          v72 = 0;
          v73 = v18;
          do
          {
            v74 = CFArrayGetValueAtIndex(theArray, v72);
            if (vtGetPixelFormatRange(v74) != PixelFormatRange)
            {
              CFArrayRemoveValueAtIndex(theArray, v72);
              CFArrayAppendValue(theArray, v74);
              --v72;
              --v73;
            }

            ++v72;
          }

          while (v72 < v73);
        }

        v75 = 0;
        v76 = 0;
        do
        {
          v77 = CFArrayGetValueAtIndex(theArray, v75);
          if (vtGetPixelFormatColorSpace(v77) == v80)
          {
            CFArrayInsertValueAtIndex(v82, v76++, v77);
          }

          else
          {
            CFArrayAppendValue(v82, v77);
          }

          ++v75;
        }

        while (v18 != v75);
        goto LABEL_48;
      }
    }

    else
    {
      v50 = CFArrayGetTypeID();
      if (v50 == CFGetTypeID(v14))
      {
        v51 = CFArrayGetCount(v14);
        if (v51 >= 1)
        {
          v52 = v51;
          v53 = 0;
          while (1)
          {
            v54 = CFArrayGetValueAtIndex(v14, v53);
            v55 = CFNumberGetTypeID();
            if (v55 == CFGetTypeID(v54))
            {
              v56 = vtGetPixelFormatColorSpace(v54);
              if (v56)
              {
                break;
              }
            }

            if (v52 == ++v53)
            {
              goto LABEL_62;
            }
          }

          PixelFormatColorSpace = v56;
          PixelFormatRange = vtGetPixelFormatRange(v54);
          PixelFormatBitsPerComponent = vtGetPixelFormatBitsPerComponent(v54);
          goto LABEL_53;
        }
      }
    }

LABEL_62:
    CFRelease(v82);
    v20 = theArray;
    goto LABEL_63;
  }

  v37 = CFArrayGetCount(v14);
  if (v37 < 1)
  {
    goto LABEL_36;
  }

  v38 = v37;
  v39 = 0;
  while (1)
  {
    v40 = CFArrayGetValueAtIndex(v14, v39);
    v41 = CFNumberGetTypeID();
    if (v41 != CFGetTypeID(v40))
    {
      goto LABEL_28;
    }

    v42 = vtCreateSimilarPixelFormat(v40);
    if (!v42)
    {
      goto LABEL_28;
    }

    v43 = v42;
    v87.location = 0;
    v87.length = v18;
    v44 = CFArrayGetFirstIndexOfValue(theArray, v87, v42);
    if (v44 != -1)
    {
      break;
    }

    CFRelease(v43);
LABEL_28:
    if (v38 == ++v39)
    {
      goto LABEL_36;
    }
  }

  v47 = v44;
  v32 = v82;
LABEL_46:
  CFArrayAppendValue(v32, v43);
  v33 = theArray;
  CFArrayRemoveValueAtIndex(theArray, v47);
  CFRelease(v43);
LABEL_47:
  v89.length = CFArrayGetCount(v33);
  v89.location = 0;
  CFArrayAppendArray(v32, v33, v89);
LABEL_48:
  if (CFArrayGetCount(v32) <= 0)
  {
    goto LABEL_62;
  }

  CFRelease(theArray);
  v58 = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (v58)
  {
    v59 = v58;
    v60 = v8;
    v61 = v82;
    CFDictionarySetValue(v58, v60, v82);
    v62 = 0;
    *a4 = v59;
  }

  else
  {
    v62 = 4294954392;
    v61 = v82;
  }

  CFRelease(v61);
  return v62;
}

void vtAllowTransferCapabilityCommonOnce_0()
{
  v0 = CFPreferencesCopyValue(@"allowMetalTransferSession", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  sAllowMetalTransferSession = FigCFEqual() != 0;
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtPixelFormatContainsAlpha(const __CFNumber *a1)
{
  v4 = 0;
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], valuePtr);
  FigCFDictionaryGetBooleanIfPresent();
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

uint64_t vtAddNumberToCFDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    return 4294954392;
  }

  v6 = v5;
  CFDictionaryAddValue(a1, a2, v5);
  CFRelease(v6);
  return 0;
}

BOOL vtIsPixelFormatCompatibleWithAttributes(void *a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  resolvedDictionaryOut = 0;
  if (!a2)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E6966130];
  v10 = 0;
  keys[0] = v3;
  values = a1;
  v4 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = v4;
  v10 = a2;
  v5 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
  v6 = CVPixelBufferCreateResolvedAttributesDictionary(0, v5, &resolvedDictionaryOut);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  return v6 == 0;
}

uint64_t vtCreateSimilarPixelFormat(const __CFNumber *a1)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1111970369 || valuePtr == 32)
  {
    return FigCFNumberCreateSInt32();
  }

  else
  {
    return 0;
  }
}

uint64_t vtInitializeVTPSharedPool()
{
  result = FigSimpleMutexCreate();
  _MergedGlobals_5 = result;
  return result;
}

CFIndex OUTLINED_FUNCTION_6_1(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v1, v4, v2);
}

OSStatus VTSessionCopySupportedPropertyDictionary(VTSessionRef session, CFDictionaryRef *supportedPropertyDictionaryOut)
{
  if (session && (v4 = CFGetTypeID(session), CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v4), supportedPropertyDictionaryOut) && CallbacksWithTypeID)
  {
    v6 = CallbacksWithTypeID[1];

    return v6(session, supportedPropertyDictionaryOut);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

OSStatus VTSessionCopySerializableProperties(VTSessionRef session, CFAllocatorRef allocator, CFDictionaryRef *dictionaryOut)
{
  if (session && (v6 = CFGetTypeID(session), CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v6), dictionaryOut) && CallbacksWithTypeID)
  {
    v8 = CallbacksWithTypeID[5];

    return v8(session, allocator, dictionaryOut);
  }

  else
  {

    return FigSignalErrorAtGM();
  }
}

uint64_t VTSessionSetBooleanProperty(const void *a1, const __CFString *a2, int a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return VTSessionSetProperty(a1, a2, *v3);
}

uint64_t VTSessionGetBooleanIfPresent(const void *a1, const __CFString *a2, char *a3)
{
  propertyValueOut = 0;
  v4 = VTSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], &propertyValueOut);
  v5 = propertyValueOut;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = propertyValueOut == 0;
  }

  if (v6)
  {
    v7 = 0;
    if (!propertyValueOut)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v8 = CFGetTypeID(propertyValueOut);
  if (v8 == CFBooleanGetTypeID())
  {
    if (FigCFEqual())
    {
      v9 = 1;
      if (!a3)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      FigCFEqual();
      v9 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *a3 = v9;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_14:
  v5 = propertyValueOut;
  if (propertyValueOut)
  {
LABEL_15:
    CFRelease(v5);
  }

  return v7;
}

uint64_t RegisterVTHDRMetadataGenerationSession()
{
  result = _CFRuntimeRegisterClass();
  sVTHDRMetadataGenerationSessionID = result;
  return result;
}

uint64_t VTHDRMetadataGenerationSessionCreate(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    return 4294954394;
  }

  v5 = a2;
  if (a2 == 2 || a2 == 4)
  {
    MEMORY[0x193AE3010](&VTHDRMetadataGenerationSessionGetTypeID_sRegisterVTHDRMetadataGenerationSessionOnce, RegisterVTHDRMetadataGenerationSession);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      v8 = Instance + 28672;
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      *(v8 + 1092) = 0;
      *(v7 + 144) = 1106247680;
      *(v7 + 17) = v5;
      *(v7 + 32) = 1;
      *(v7 + 24) = 0;
      DictionaryValue = FigCFDictionaryGetDictionaryValue();
      if (DictionaryValue)
      {
        v10 = CFGetTypeID(DictionaryValue);
        if (v10 != CFDictionaryGetTypeID() || !FigCFDictionaryGetFloatIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || FigCFDictionaryGetDictionaryValue() && (!FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetDoubleIfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetInt32IfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || !FigCFDictionaryGetBooleanIfPresent() || *(v7 + 141) && (!FigCFDictionaryGetCGSizeIfPresent() || !FigCFDictionaryGetCGRectIfPresent())))
        {
          VTHDRMetadataGenerationSessionCreate_cold_1();
        }
      }

      result = 0;
      *a4 = v7;
    }

    else
    {
      return 4294954392;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t VTHDRMetadataGenerationSessionSetFramesPerSecond(uint64_t a1, float a2)
{
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_1(&v4);
    return v4;
  }

  else if (a2 <= 0.0)
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_3(&v6);
    return v6;
  }

  else if (a2 > 240.0)
  {
    VTHDRMetadataGenerationSessionSetFramesPerSecond_cold_2(&v5);
    return v5;
  }

  else
  {
    v2 = 0;
    *(a1 + 144) = a2;
  }

  return v2;
}

uint64_t VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary(uint64_t a1, int a2, char a3, uint64_t a4, int a5, uint64_t a6, CGFloat a7, CGFloat a8)
{
  if (*(a1 + 29765) || *(a1 + 29764))
  {
    VTHDRMetadataGenerationSessionCreateDataFromStatisticsDictionary_cold_1(v22);
    return LODWORD(v22[0]);
  }

  if (a4)
  {
    v23 = 0;
    v24 = 0;
    memset(v22, 0, 108);
    memset(v21, 0, 108);
    if (FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() || FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
    {
      result = getValuesFromDictionary(v23, v21, a7, a8);
      if (result)
      {
        return result;
      }

      if (!BYTE5(v21[6]))
      {
        BYTE4(v21[6]) = a3;
      }

      v16 = v21;
      v17 = a1;
      v18 = a2;
      v19 = 1;
      v20 = 1;
      return createDataFromStatistics(v17, v18, v16, v19, v20, a6);
    }

    if (!FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent() && !FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent())
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    result = getValuesFromDictionary(v24, v22, a7, a8);
    if (!result)
    {
      if (!BYTE5(v22[6]))
      {
        BYTE4(v22[6]) = a3;
      }

      v16 = v22;
      v17 = a1;
      v18 = a2;
      v19 = a5;
      v20 = 0;
      return createDataFromStatistics(v17, v18, v16, v19, v20, a6);
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t getValuesFromDictionary(const void *a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  memset(&v47, 0, sizeof(v47));
  v45 = 0;
  v46 = 0;
  v44 = 0;
  memset(&rect, 0, sizeof(rect));
  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v8 = 1;
  }

  else
  {
    v8 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v9 = 1;
  }

  else
  {
    v9 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v10 = 1;
  }

  else
  {
    v10 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v11 = 1;
  }

  else
  {
    v11 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  if (FigCFDictionaryGetFloat32IfPresent())
  {
    v12 = 1;
  }

  else
  {
    v12 = FigCFDictionaryGetFloat32IfPresent() != 0;
  }

  v13 = v8 && v9 && v10;
  __asm { FMOV            V0.2D, #1.0 }

  if (v13 == 1)
  {
    v19 = vcltz_f32(__PAIR64__(v46, HIDWORD(v46)));
    v20.i64[0] = v19.i32[0];
    v20.i64[1] = v19.i32[1];
    v21 = vcvtq_f64_f32(__PAIR64__(v46, HIDWORD(v46)));
    v41 = vbicq_s8(vbslq_s8(vcgtq_f64(v21, _Q0), _Q0, v21), v20);
    v22 = *(&v45 + 1);
    if (*(&v45 + 1) > 1.0)
    {
      v22 = 1.0;
    }

    if (*(&v45 + 1) >= 0.0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
    v23 = 0.0;
    v41 = 0u;
  }

  if (v11 && v12)
  {
    v25 = vcltz_f32(__PAIR64__(v45, v44));
    v26.i64[0] = v25.i32[0];
    v26.i64[1] = v25.i32[1];
    v27 = vcvtq_f64_f32(__PAIR64__(v45, v44));
    v42 = vbicq_s8(vbslq_s8(vcgtq_f64(v27, _Q0), _Q0, v27), v26);
    v28 = 1;
  }

  else
  {
    v42 = 0u;
    v28 = 0;
  }

  value[0] = 0;
  if (!a1)
  {
    goto LABEL_41;
  }

  v29 = CFGetTypeID(a1);
  if (v29 != CFDictionaryGetTypeID() || !*MEMORY[0x1E6965F10])
  {
    getValuesFromDictionary_cold_8();
LABEL_41:
    v35 = 0;
    a4 = 0.0;
    a3 = 0.0;
    goto LABEL_42;
  }

  if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x1E6965F10], value))
  {
    goto LABEL_41;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(value[0]) || !CGRectMakeWithDictionaryRepresentation(value[0], &rect))
  {
    goto LABEL_41;
  }

  rect = CGRectStandardize(rect);
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  v49.size.width = a3;
  v49.size.height = a4;
  if (!CGRectContainsRect(v49, rect))
  {
    getValuesFromDictionary_cold_1(value);
    return LODWORD(value[0]);
  }

  width = rect.size.width;
  if (rect.size.width <= 0.0)
  {
    getValuesFromDictionary_cold_7(value);
    return LODWORD(value[0]);
  }

  height = rect.size.height;
  if (rect.size.height <= 0.0)
  {
    getValuesFromDictionary_cold_6(value);
    return LODWORD(value[0]);
  }

  if (rect.size.width > 8191.0)
  {
    getValuesFromDictionary_cold_5(value);
    return LODWORD(value[0]);
  }

  if (rect.size.height > 8191.0)
  {
    getValuesFromDictionary_cold_4(value);
    return LODWORD(value[0]);
  }

  x = rect.origin.x;
  if (rect.origin.x > 8191.0)
  {
    getValuesFromDictionary_cold_3(value);
    return LODWORD(value[0]);
  }

  y = rect.origin.y;
  if (rect.origin.y > 8191.0)
  {
    getValuesFromDictionary_cold_2(value);
    return LODWORD(value[0]);
  }

  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = a3;
  v50.size.height = a4;
  if (CGRectEqualToRect(*(&width - 2), v50))
  {
    goto LABEL_41;
  }

  v47 = rect;
  v35 = 1;
LABEL_42:
  v36 = FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent();
  if (FigCFDictionaryGetInt32IfPresent())
  {
    v37 = v42;
    v38 = 1;
    if (v13)
    {
LABEL_49:
      result = 0;
      *a2 = v41;
      *(a2 + 16) = v23;
      *(a2 + 24) = v37;
      *(a2 + 40) = 0;
      *(a2 + 44) = 0;
      *(a2 + 48) = 0;
      *(a2 + 52) = a3;
      *(a2 + 60) = a4;
      size = v47.size;
      *(a2 + 68) = v47.origin;
      *(a2 + 84) = size;
      *(a2 + 100) = 0;
      *(a2 + 101) = v38;
      *(a2 + 102) = v24;
      *(a2 + 103) = v36;
      *(a2 + 104) = v28;
      *(a2 + 105) = v35;
      *(a2 + 106) = 0;
      return result;
    }
  }

  else
  {
    v38 = 0;
    v37 = v42;
    if (v13)
    {
      goto LABEL_49;
    }
  }

  getValuesFromDictionary_cold_10(value);
  return LODWORD(value[0]);
}