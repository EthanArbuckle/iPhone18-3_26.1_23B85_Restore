uint64_t vt_Copy_422vf_TRC_Mat_TRC_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD);
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

int vt_Copy_422vf_TRC_Mat_TRC_RGhA_neon_fp16_GCD(char *a1, uint64_t a2, int16x8_t _Q0)
{
  v6 = *a1;
  v154 = a1;
  v7 = *(a1 + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(a1 + 24);
    v12 = *(a1 + 19);
    v13 = *(a1 + 7);
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(a1 + 17);
    v19 = v12[17].u16[2];
    v20 = v12[17].u16[3];
    v21.i32[0] = v12[3].i32[1];
    _Q0.i32[0] = v12[9].i32[0];
    _S1 = v12[9].f32[1];
    _S2 = v12[10].f32[0];
    _S3 = v12[10].f32[1];
    _S4 = v12[11].f32[0];
    _S5 = v12[11].f32[1];
    _S6 = v12[12].f32[0];
    _S7 = v12[12].f32[1];
    _S16 = v12[13].f32[0];
    v30 = &v12[20] + 4;
    v31 = v19;
    v32 = v20;
    v4.f32[0] = 8191.0 / v12[16].u32[0];
    _S20 = v4.f32[0] * v12->f32[0];
    v34 = &v12[2068] + 4;
    __asm { FCVT            H8, S20 }

    *v5.i16 = v19;
    v40 = vdupq_lane_s16(*v5.f32, 0);
    v41 = -v20;
    v21.i32[1] = v12[1].i32[0];
    *v5.f32 = vmul_n_f32(v21, v4.f32[0]);
    *v4.f32 = vmul_n_f32(v12[2], v4.f32[0]);
    v166 = vdupq_lane_s32(vcvt_f16_f32(v5), 0);
    v167 = v40;
    v164 = vmulq_n_f16(v166, v41);
    v165 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v42 = vmulq_n_f16(v165, v41);
    __asm { FCVT            H9, S0 }

    v163 = _H9;
    __asm { FCVT            H9, S1 }

    v162 = _H9;
    __asm { FCVT            H9, S2 }

    v161 = _H9;
    __asm { FCVT            H9, S3 }

    v160 = _H9;
    __asm { FCVT            H9, S4 }

    v159 = _H9;
    __asm { FCVT            H9, S5 }

    v158 = _H9;
    __asm { FCVT            H9, S6 }

    v157 = _H9;
    __asm { FCVT            H9, S7 }

    v156 = _H9;
    __asm { FCVT            H9, S16 }

    v155 = *_Q9.i16;
    v51 = v13[2];
    v52 = *(a1 + 28) * a2 / v6 + *(a1 + 44);
    v53 = *(a1 + 36);
    v54 = (v51 + v17 * v52 + v53);
    v55 = *v13;
    v56 = *(*(a1 + 7) + 8);
    v57 = **(a1 + 16) + v18 * (v8 + *(a1 + 15)) + 8 * *(a1 + 14);
    if (!v51)
    {
      v54 = 0;
    }

    if (v56)
    {
      v58 = (v56 + v16 * v52 + v53);
    }

    else
    {
      v58 = 0;
    }

    v59 = (v55 + v15 * v52 + v53);
    LODWORD(a1) = v11 & 0xFFFFFFF8;
    v60 = v5.i64[0];
    v61.i64[0] = 0x9000900090009000;
    v61.i64[1] = 0x9000900090009000;
    do
    {
      if (v11 < 8)
      {
        v113 = 0;
        v112 = v58;
        v65 = v54;
        v64 = v57;
        v63 = v59;
      }

      else
      {
        v62 = 0;
        v63 = v59;
        v64 = v57;
        v65 = v54;
        do
        {
          if (v65 && (v66 = *v65, ++v65, v67 = v66, v65))
          {
            *v68.i8 = vzip1_s8(v67, 0);
            v68.u64[1] = vzip2_s8(v67, 0);
            v69 = vmulq_f16(vcvtq_f16_u16(v68), vdupq_n_s16(0x1C04u));
          }

          else
          {
            v69.i64[0] = 0x3C003C003C003C00;
            v69.i64[1] = 0x3C003C003C003C00;
          }

          v70 = *&v58[v62];
          *v71.i8 = vzip1_s8(v70, 0);
          v71.u64[1] = vzip2_s8(v70, 0);
          v72 = vcvtq_f16_u16(v71);
          v73 = vmlaq_f16(v164, v166, v72);
          v74 = vmlaq_f16(v42, v165, v72);
          v75 = vuzp1q_s16(v74, _Q0);
          *v75.i8 = vadd_f16(*v75.i8, *&vuzp2q_s16(v74, _Q0));
          v76 = *v63++;
          *v77.i8 = vzip1_s8(v76, 0);
          v77.u64[1] = vzip2_s8(v76, 0);
          v78 = vzip1q_s16(v75, v75);
          v79 = vsubq_f16(vcvtq_f16_u16(v77), v167);
          v80 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v73, v73), v79, _H8), 0), v61));
          v81.i16[0] = *&v30[2 * v80.u16[0]];
          v81.i16[1] = *&v30[2 * v80.u16[1]];
          v81.i16[2] = *&v30[2 * v80.u16[2]];
          v81.i16[3] = *&v30[2 * v80.u16[3]];
          v81.i16[4] = *&v30[2 * v80.u16[4]];
          v81.i16[5] = *&v30[2 * v80.u16[5]];
          v81.i16[6] = *&v30[2 * v80.u16[6]];
          v81.i16[7] = *&v30[2 * v80.u16[7]];
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v78, v79, _H8), 0), v61));
          v78.i16[0] = *&v30[2 * v82.u16[0]];
          v78.i16[1] = *&v30[2 * v82.u16[1]];
          v78.i16[2] = *&v30[2 * v82.u16[2]];
          v78.i16[3] = *&v30[2 * v82.u16[3]];
          v78.i16[4] = *&v30[2 * v82.u16[4]];
          v78.i16[5] = *&v30[2 * v82.u16[5]];
          v78.i16[6] = *&v30[2 * v82.u16[6]];
          v78.i16[7] = *&v30[2 * v82.u16[7]];
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v73, v73), v79, _H8), 0), v61));
          v73.i16[0] = *&v30[2 * v83.u16[0]];
          v73.i16[1] = *&v30[2 * v83.u16[1]];
          v73.i16[2] = *&v30[2 * v83.u16[2]];
          v73.i16[3] = *&v30[2 * v83.u16[3]];
          v73.i16[4] = *&v30[2 * v83.u16[4]];
          v73.i16[5] = *&v30[2 * v83.u16[5]];
          v73.i16[6] = *&v30[2 * v83.u16[6]];
          v73.i16[7] = *&v30[2 * v83.u16[7]];
          _Q9 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, v163), v78, v162), v73, v161);
          v84 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v81, v160), v78, v159), v73, v158);
          v85 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v73, v155), v78, v156), v81, v157);
          v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q9, 0), v61));
          v87 = *&v34[2 * v86.u16[0]];
          v88 = *&v34[2 * v86.u16[1]];
          v89 = *&v34[2 * v86.u16[2]];
          v90 = *&v34[2 * v86.u16[3]];
          v91 = *&v34[2 * v86.u16[4]];
          v92 = *&v34[2 * v86.u16[5]];
          v93 = *&v34[2 * v86.u16[6]];
          v94 = *&v34[2 * v86.u16[7]];
          v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v84, 0), v61));
          v96 = *&v34[2 * v95.u16[0]];
          v97 = *&v34[2 * v95.u16[1]];
          v98 = *&v34[2 * v95.u16[2]];
          v99 = *&v34[2 * v95.u16[3]];
          v100 = *&v34[2 * v95.u16[4]];
          v101 = *&v34[2 * v95.u16[5]];
          v102 = *&v34[2 * v95.u16[6]];
          v103 = *&v34[2 * v95.u16[7]];
          v5 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v85, 0), v61));
          v104 = *&v34[2 * v5.u16[0]];
          v105 = *&v34[2 * v5.u16[1]];
          v106 = *&v34[2 * v5.u16[2]];
          v107 = *&v34[2 * v5.u16[3]];
          v108 = *&v34[2 * v5.u16[4]];
          v109 = *&v34[2 * v5.u16[5]];
          a1 = &v34[2 * v5.u16[7]];
          v110 = *&v34[2 * v5.u16[6]];
          v111 = *a1;
          vst4q_s16(v64, *(&v69 - 3));
          v64 += 64;
          v62 += 8;
        }

        while (v62 < v11 - 7);
        v112 = &v58[v62];
        v113 = v11 & 0xFFFFFFF8;
      }

      while (v113 < (v11 & 0xFFFFFFFE))
      {
        v5.i8[0] = v112[1];
        v114 = v5.u32[0] - v32;
        v115 = HIDWORD(v60);
        v116 = *(&v60 + 1) * v114;
        LOBYTE(v115) = v63->i8[0];
        v117 = _S20 * (v115 - v31);
        v118 = (*(&v60 + 1) * v114) + v117;
        v119 = 8191.0;
        if (v118 <= 8191.0)
        {
          v119 = (*(&v60 + 1) * v114) + v117;
          if (v118 < 0.0)
          {
            v119 = 0.0;
          }
        }

        _Q9.i8[0] = *v112;
        *_Q9.i32 = _Q9.u32[0];
        v120 = (v4.f32[1] * v114) + ((*_Q9.i32 - v32) * v4.f32[0]);
        v121 = 8191.0;
        if ((v117 + v120) <= 8191.0)
        {
          v121 = v117 + v120;
          if ((v117 + v120) < 0.0)
          {
            v121 = 0.0;
          }
        }

        v122 = *&v60 * (*_Q9.i32 - v32);
        v123 = v122 + v117;
        v124 = (v122 + v117) <= 8191.0;
        v125 = 8191.0;
        if (v124)
        {
          v125 = v123;
          if (v123 < 0.0)
          {
            v125 = 0.0;
          }
        }

        _Q9.i8[0] = v63->i8[1];
        *_Q9.i32 = _Q9.u32[0] - v31;
        v126 = _S20 * *_Q9.i32;
        v127 = v116 + (_S20 * *_Q9.i32);
        v128 = 8191.0;
        if (v127 <= 8191.0)
        {
          v128 = v127;
          if (v127 < 0.0)
          {
            v128 = 0.0;
          }
        }

        v129 = v120 + v126;
        v124 = (v120 + v126) <= 8191.0;
        v130 = 8191.0;
        if (v124)
        {
          v130 = v129;
          if (v129 < 0.0)
          {
            v130 = 0.0;
          }
        }

        v131 = v122 + v126;
        v124 = (v122 + v126) <= 8191.0;
        v132 = 8191.0;
        if (v124)
        {
          v132 = v131;
          if (v131 < 0.0)
          {
            v132 = 0.0;
          }
        }

        if (v65)
        {
          LOBYTE(v131) = v65->i8[0];
          _Q9.i8[0] = v65->i8[1];
          v65 = (v65 + 2);
          _S25 = LODWORD(v131) * 0.0039216;
          _S9 = _Q9.u32[0] * 0.0039216;
          __asm
          {
            FCVT            H25, S25
            FCVT            H12, S9
          }
        }

        else
        {
          LOWORD(_H25) = 0;
          LOWORD(_H12) = 0;
        }

        _H9 = *&v30[2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0))];
        __asm { FCVT            S9, H9 }

        _H11 = *&v30[2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0))];
        __asm { FCVT            S11, H11 }

        _H24 = *&v30[2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0))];
        __asm { FCVT            S24, H24 }

        _H13 = *&v30[2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0))];
        __asm { FCVT            S13, H13 }

        _H26 = *&v30[2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0))];
        _H14 = *&v30[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        __asm
        {
          FCVT            S26, H26
          FCVT            S14, H14
        }

        v149 = ((_S1 * _S11) + (_S9 * *_Q0.i32)) + (_S24 * _S2);
        v150 = *&v34[2 * llroundf(fminf(fmaxf(((_S4 * _S11) + (_S9 * _S3)) + (_S24 * _S5), 0.0), 8191.0))];
        LOWORD(_S24) = *&v34[2 * llroundf(fminf(fmaxf(((_S7 * _S11) + (_S9 * _S6)) + (_S24 * _S16), 0.0), 8191.0))];
        *_Q9.i32 = fminf(fmaxf(((_S1 * _S26) + (_S13 * *_Q0.i32)) + (_S14 * _S2), 0.0), 8191.0);
        _Q9.i16[0] = *&v34[2 * llroundf(*_Q9.i32)];
        v151 = *&v34[2 * llroundf(fminf(fmaxf(((_S4 * _S26) + (_S13 * _S3)) + (_S14 * _S5), 0.0), 8191.0))];
        v5.f32[0] = fminf(fmaxf(((_S7 * _S26) + (_S13 * _S6)) + (_S14 * _S16), 0.0), 8191.0);
        LODWORD(a1) = llroundf(v5.f32[0]);
        v5.i16[0] = *&v34[2 * a1];
        *v64 = *&v34[2 * llroundf(fminf(fmaxf(v149, 0.0), 8191.0))];
        *(v64 + 2) = v150;
        *(v64 + 4) = LOWORD(_S24);
        if (v65)
        {
          v152 = _H25;
        }

        else
        {
          LOWORD(v152) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v64 + 6) = v152;
        *(v64 + 8) = _Q9.i16[0];
        *(v64 + 10) = v151;
        *(v64 + 12) = v5.i16[0];
        if (v65)
        {
          *v5.i16 = _H12;
        }

        else
        {
          v5.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        *(v64 + 14) = v5.i16[0];
        v64 += 16;
        v113 += 2;
        v112 += 2;
        v63 = (v63 + 2);
      }

      v59 = (v59 + v15);
      v58 += v16;
      v54 = (v54 + v17);
      v57 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&v154[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_RGhA_GCD);
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

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_RGhA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 8 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = v44 + v39 * v16 + v40;
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v12 >= 1)
      {
        v48 = 0;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        do
        {
          LOBYTE(v5) = *(v46 + v48 + 1);
          *&v52 = LODWORD(v5);
          v53 = *&v52 - v22;
          v54 = v24 * (*&v52 - v22);
          LOBYTE(v52) = *v49;
          v55 = v23 * (v52 - v21);
          v56 = v54 + v55;
          v57 = 8191.0;
          if ((v54 + v55) <= 8191.0)
          {
            v57 = v54 + v55;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          LOBYTE(v56) = *(v46 + v48);
          v58 = LODWORD(v56) - v22;
          v59 = (v26 * v53) + (v58 * v25);
          v60 = 8191.0;
          if ((v55 + v59) <= 8191.0)
          {
            v60 = v55 + v59;
            if ((v55 + v59) < 0.0)
            {
              v60 = 0.0;
            }
          }

          v61 = v27 * v58;
          v62 = (v27 * v58) + v55;
          v63 = 8191.0;
          if (v62 <= 8191.0)
          {
            v63 = v62;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          LOBYTE(v62) = v49[1];
          v64 = v23 * (LODWORD(v62) - v21);
          v65 = v54 + v64;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = v65;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = 8191.0;
          if ((v59 + v64) <= 8191.0)
          {
            v67 = v59 + v64;
            if ((v59 + v64) < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v61 + v64;
          v69 = (v61 + v64) <= 8191.0;
          v70 = 8191.0;
          if (v69)
          {
            v70 = v68;
            if (v68 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v51)
          {
            LOBYTE(v68) = *v51;
            LOBYTE(v59) = v51[1];
            v51 += 2;
            _S30 = LODWORD(v68) * 0.0039216;
            _S31 = LODWORD(v59) * 0.0039216;
            __asm
            {
              FCVT            H30, S30
              FCVT            H31, S31
            }
          }

          else
          {
            LOWORD(_H30) = 0;
            LOWORD(_H31) = 0;
          }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H29 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S29, H29 }

          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
          }

          v91 = ((v29 * _S28) + (_S27 * v28)) + (_S29 * v30);
          v92 = ((v32 * _S28) + (_S27 * v31)) + (_S29 * v33);
          v93 = ((v35 * _S28) + (_S27 * v34)) + (_S29 * v36);
          v94 = ((v29 * _S9) + (_S8 * v28)) + (_S10 * v30);
          v95 = ((v32 * _S9) + (_S8 * v31)) + (_S10 * v33);
          v96 = ((v35 * _S9) + (_S8 * v34)) + (_S10 * v36);
          LOWORD(_S10) = *(v38 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          v5 = fminf(fmaxf(v93, 0.0), 8191.0);
          LOWORD(v5) = *(v38 + 2 * llroundf(v5));
          v97 = *(v38 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v98 = *(v38 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v99 = *(v38 + 2 * llroundf(fminf(fmaxf(v96, 0.0), 8191.0)));
          *v50 = *(v38 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          *(v50 + 2) = LOWORD(_S10);
          *(v50 + 4) = LOWORD(v5);
          if (v51)
          {
            v100 = _H30;
          }

          else
          {
            LOWORD(v100) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v50 + 6) = v100;
          *(v50 + 8) = v97;
          *(v50 + 10) = v98;
          *(v50 + 12) = v99;
          if (v51)
          {
            *&v5 = _H31;
          }

          else
          {
            LOWORD(v5) = COERCE_UNSIGNED_INT(1.0);
          }

          *(v50 + 14) = LOWORD(v5);
          v48 += 2;
          v49 += 2;
          v50 += 16;
        }

        while (v48 < v12);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_RGhA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_RGhA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_422vf_rgb_RGhA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7, float32x4_t a8, double a9, float32x4_t a10)
{
  v16 = *result;
  v17 = *(result + 13);
  v18 = v17 * a2 / v16;
  v19 = (v17 + v17 * a2) / v16 - v18;
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = *(result + 24);
    v22 = *(result + 19);
    v23 = *(result + 7);
    v24 = *(result + 8);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = **(result + 17);
    v29 = v22[17].u16[2];
    v30 = v22[17].u16[3];
    a8.i32[0] = v22[3].i32[1];
    a10.f32[0] = 1.0 / v22[16].u32[0];
    *a3.i32 = v29;
    v31 = v30;
    _S2 = a10.f32[0] * v22->f32[0];
    __asm { FCVT            H3, S2 }

    *a7.i16 = v29;
    v38 = vdupq_lane_s16(a7, 0);
    a8.i32[1] = v22[1].i32[0];
    *a8.f32 = vmul_n_f32(*a8.f32, a10.f32[0]);
    v39 = vdupq_lane_s32(vcvt_f16_f32(a8), 0);
    v40 = -v30;
    *a10.f32 = vmul_n_f32(v22[2], a10.f32[0]);
    v41 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    v42 = vmulq_n_f16(v39, v40);
    v43 = vmulq_n_f16(v41, v40);
    v44 = v23[2];
    v45 = *(result + 28) * a2 / v16 + *(result + 44);
    v46 = *(result + 36);
    v47 = (v44 + v27 * v45 + v46);
    v48 = *v23;
    v49 = *(*(result + 7) + 8);
    v50 = **(result + 16) + v28 * (v18 + *(result + 15)) + 8 * *(result + 14);
    if (!v44)
    {
      v47 = 0;
    }

    if (v49)
    {
      v51 = (v49 + v26 * v45 + v46);
    }

    else
    {
      v51 = 0;
    }

    v52 = (v48 + v25 * v45 + v46);
    v53 = vdupq_n_s16(0x1C04u);
    do
    {
      if (v21 < 8)
      {
        v71 = 0;
        v70 = v51;
        v57 = v47;
        v56 = v50;
        v55 = v52;
      }

      else
      {
        v54 = 0;
        v55 = v52;
        v56 = v50;
        v57 = v47;
        do
        {
          if (v57)
          {
            v58 = *v57++;
            *v59.i8 = vzip1_s8(v58, 0);
            v59.u64[1] = vzip2_s8(v58, 0);
            _Q27 = vmulq_f16(vcvtq_f16_u16(v59), v53);
          }

          else
          {
            _Q27.i32[0] = 1006648320;
            _Q27.i16[2] = 15360;
            _Q27.i16[3] = 15360;
            _Q27.i16[4] = 15360;
            _Q27.i16[5] = 15360;
            _Q27.i16[6] = 15360;
            _Q27.i16[7] = 15360;
          }

          v60 = *&v51[v54];
          *v61.i8 = vzip1_s8(v60, 0);
          v61.u64[1] = vzip2_s8(v60, 0);
          v62 = vcvtq_f16_u16(v61);
          v63 = vmlaq_f16(v42, v39, v62);
          _Q30 = vmlaq_f16(v43, v41, v62);
          v64 = vtrn2q_s16(v63, v63);
          v65 = vtrn1q_s16(v63, v63);
          v66 = vuzp1q_s16(_Q30, a3);
          *v66.i8 = vadd_f16(*v66.i8, *&vuzp2q_s16(_Q30, a3));
          v67 = vzip1q_s16(v66, v66);
          v68 = *v55++;
          *_Q29.i8 = vzip1_s8(v68, 0);
          _Q29.u64[1] = vzip2_s8(v68, 0);
          v69 = vsubq_f16(vcvtq_f16_u16(_Q29), v38);
          _Q24 = vmlaq_n_f16(v64, v69, _H3);
          _Q25 = vmlaq_n_f16(v67, v69, _H3);
          _Q26 = vmlaq_n_f16(v65, v69, _H3);
          vst4q_s16(v56, *_Q24.i8);
          v56 += 32;
          v54 += 8;
        }

        while (v54 < v21 - 7);
        v70 = &v51[v54];
        v71 = v21 & 0xFFFFFFF8;
      }

      while (v71 < (v21 & 0xFFFFFFFE))
      {
        if (v57)
        {
          _Q24.i8[0] = v57->i8[0];
          _Q25.i8[0] = v57->i8[1];
          v57 = (v57 + 2);
          *_Q24.i32 = _Q24.u32[0] * 0.0039216;
          *_Q25.i32 = _Q25.u32[0];
          *_Q26.i32 = *_Q25.i32 * 0.0039216;
          __asm
          {
            FCVT            H25, S24
            FCVT            H24, S26
          }
        }

        else
        {
          _Q25.i32[0] = 0;
          _Q24.i32[0] = 0;
        }

        _Q26.i8[0] = *v70;
        v72 = _Q26.u32[0] - v31;
        _Q27.i8[0] = v70[1];
        v73 = _Q27.u32[0] - v31;
        v74 = a8.f32[1] * v73;
        v75 = (a10.f32[1] * v73) + (v72 * a10.f32[0]);
        v76 = a8.f32[0] * v72;
        _Q29.i8[0] = v55->i8[0];
        v77 = _S2 * (_Q29.u32[0] - *a3.i32);
        _Q30.i8[0] = v55->i8[1];
        *_Q30.i32 = _S2 * (_Q30.u32[0] - *a3.i32);
        _S31 = v74 + v77;
        _S8 = v77 + v75;
        *_Q29.i32 = v76 + v77;
        _S28 = v74 + *_Q30.i32;
        *_Q27.i32 = v75 + *_Q30.i32;
        *_Q26.i32 = v76 + *_Q30.i32;
        __asm { FCVT            H30, S31 }

        *v56 = _Q30.i16[0];
        __asm { FCVT            H30, S8 }

        v56[1] = _Q30.i16[0];
        __asm { FCVT            H29, S29 }

        v56[2] = _Q29.i16[0];
        if (!v57)
        {
          _Q25.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v56[3] = _Q25.i16[0];
        __asm { FCVT            H25, S28 }

        v56[4] = _H25;
        __asm { FCVT            H25, S27 }

        v56[5] = _H25;
        __asm { FCVT            H25, S26 }

        v56[6] = _Q25.i16[0];
        if (_ZF)
        {
          _Q24.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v56[7] = _Q24.i16[0];
        v56 += 8;
        v71 += 2;
        v70 += 2;
        v55 = (v55 + 2);
      }

      v52 = (v52 + v25);
      v51 += v26;
      v47 = (v47 + v27);
      v50 += v28;
      ++v20;
    }

    while (v20 != v19);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_RGhA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (8 * (v31 + v28) + 8) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 8 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_RGhA_GCD);
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

unsigned __int8 *vt_Copy_422vf_rgb_RGhA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = *(result + 7);
    v16 = *(result + 8);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = **(result + 17);
    *&v21 = *(v13 + 128);
    v22 = 1.0;
    v23 = 1.0 / *&v21;
    LOWORD(v21) = *(v13 + 140);
    v24 = v21;
    LOWORD(v22) = *(v13 + 142);
    v25 = v22;
    v26 = v23 * *v13;
    v27 = v23 * *(v13 + 8);
    v28 = v23 * *(v13 + 16);
    v29 = v23 * *(v13 + 20);
    v30 = v23 * *(v13 + 28);
    v31 = *(result + 28) * a2 / v8 + *(result + 44);
    v32 = *(result + 36);
    v33 = **(result + 16) + v20 * (v10 + *(result + 15)) + 8 * *(result + 14);
    v34 = v15[2];
    if (v34)
    {
      v35 = (v34 + v31 * v19 + v32);
    }

    else
    {
      v35 = 0;
    }

    v36 = *v15;
    v37 = *(*(result + 7) + 8);
    _ZF = v37 == 0;
    v39 = v37 + v31 * v18 + v32;
    if (_ZF)
    {
      v39 = 0;
    }

    v40 = (v36 + v31 * v17 + v32);
    do
    {
      if (v14 >= 1)
      {
        v41 = 0;
        v42 = v40;
        v43 = v33;
        v44 = v35;
        do
        {
          if (v44)
          {
            LOBYTE(_S17) = *v44;
            LOBYTE(_S18) = v44[1];
            v44 += 2;
            _S17 = LODWORD(_S17) * 0.0039216;
            _S18 = LODWORD(_S18);
            _S19 = _S18 * 0.0039216;
            __asm
            {
              FCVT            H18, S17
              FCVT            H17, S19
            }
          }

          else
          {
            _S18 = 0.0;
            _S17 = 0.0;
          }

          LOBYTE(_S19) = *(v39 + v41);
          v48 = LODWORD(_S19) - v25;
          LOBYTE(_S20) = *(v39 + v41 + 1);
          v49 = LODWORD(_S20) - v25;
          v50 = v27 * v49;
          v51 = (v29 * v49) + (v48 * v28);
          v52 = v30 * v48;
          LOBYTE(_S22) = *v42;
          v53 = v26 * (LODWORD(_S22) - v24);
          LOBYTE(_S23) = v42[1];
          _S23 = v26 * (LODWORD(_S23) - v24);
          _S24 = v50 + v53;
          _S25 = v53 + v51;
          _S22 = v52 + v53;
          _S21 = v50 + _S23;
          _S20 = v51 + _S23;
          _S19 = v52 + _S23;
          __asm { FCVT            H23, S24 }

          *v43 = LOWORD(_S23);
          __asm { FCVT            H23, S25 }

          v43[1] = LOWORD(_S23);
          __asm { FCVT            H22, S22 }

          v43[2] = LOWORD(_S22);
          if (!v44)
          {
            LOWORD(_S18) = COERCE_UNSIGNED_INT(1.0);
          }

          v43[3] = LOWORD(_S18);
          __asm { FCVT            H18, S21 }

          v43[4] = _H18;
          __asm { FCVT            H18, S20 }

          v43[5] = _H18;
          __asm { FCVT            H18, S19 }

          v43[6] = LOWORD(_S18);
          if (_ZF)
          {
            LOWORD(_S17) = COERCE_UNSIGNED_INT(1.0);
          }

          v43[7] = LOWORD(_S17);
          v41 += 2;
          v42 += 2;
          v43 += 8;
        }

        while (v41 < v14);
      }

      v40 += v17;
      v39 += v18;
      v35 += v19;
      v33 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD);
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

char *vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_neon_fp16_GCD(char *result, uint64_t a2, int16x4_t a3)
{
  v5 = *result;
  v164 = result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v168 = (v6 + v6 * a2) / v5 - v7;
  if (v168 >= 1)
  {
    v8 = 0;
    result = *(result + 24);
    v9 = *(v164 + 19);
    v11 = *(v164 + 7);
    v10 = *(v164 + 8);
    v12 = *v10;
    v13 = v10[1];
    v14 = **(v164 + 17);
    v15 = v9[17].u16[2];
    v16 = v9[17].u16[3];
    a3.i32[0] = v9->i32[0];
    v17.i32[0] = v9[3].i32[1];
    _D2.i32[0] = v9[9].i32[0];
    _S3 = v9[10].f32[1];
    _S4 = v9[11].f32[0];
    _S5 = v9[11].f32[1];
    _S6 = v9[12].f32[0];
    _S7 = v9[12].f32[1];
    _S16 = v9[13].f32[0];
    _S17 = v9[13].f32[1];
    _S18 = v9[14].f32[0];
    _S19 = v9[14].f32[1];
    _S20 = v9[15].f32[0];
    v29 = result - 7;
    v30 = &v9[2068] + 4;
    v31 = result & 0xFFFFFFFE;
    v3.f32[0] = 8191.0 / v9[16].u32[0];
    v32 = v15;
    v33 = v16;
    _S24 = v3.f32[0] * v9->f32[0];
    v35 = &v9[20] + 4;
    v36 = &v9[4116] + 4;
    __asm { FCVT            H8, S24 }

    *a3.i16 = v15;
    v190 = vdupq_lane_s16(a3, 0);
    v42 = -v16;
    v17.i32[1] = v9[1].i32[0];
    *v4.f32 = vmul_n_f32(v17, v3.f32[0]);
    *v3.f32 = vmul_n_f32(v9[2], v3.f32[0]);
    v188 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v185 = vmulq_n_f16(v188, v42);
    v186 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    _Q0 = vmulq_n_f16(v186, v42);
    v184 = _Q0;
    __asm { FCVT            H0, S17 }

    v183 = *_Q0.i16;
    __asm { FCVT            H0, S18 }

    v182 = *_Q0.i16;
    __asm { FCVT            H0, S19 }

    v181 = *_Q0.i16;
    __asm { FCVT            H0, S20 }

    v180 = *_Q0.i16;
    v193 = *_D2.i32;
    __asm { FCVT            H0, S2 }

    v179 = *_Q0.i16;
    v192 = v9[9].f32[1];
    __asm { FCVT            H0, S26 }

    v178 = *_Q0.i16;
    v191 = v9[10].f32[0];
    __asm { FCVT            H0, S27 }

    v177 = *_Q0.i16;
    v44 = v11[2];
    v45 = *(v164 + 28) * a2 / v5 + *(v164 + 44);
    v167 = v10[2];
    v46 = *(v164 + 36);
    v47 = (v44 + v167 * v45 + v46);
    v48 = *v11;
    v49 = *(*(v164 + 7) + 8);
    v50 = v13;
    v51 = **(v164 + 16) + v14 * (v7 + *(v164 + 15)) + 16 * *(v164 + 14);
    if (!v44)
    {
      v47 = 0;
    }

    if (v49)
    {
      v52 = (v49 + v13 * v45 + v46);
    }

    else
    {
      v52 = 0;
    }

    v53 = v12;
    v54 = (v48 + v12 * v45 + v46);
    v55 = result;
    v166 = result & 0xFFFFFFF8;
    __asm { FCVT            H0, S3 }

    v176 = _H0;
    __asm { FCVT            H0, S4 }

    v175 = _H0;
    __asm { FCVT            H0, S5 }

    v174 = _H0;
    __asm { FCVT            H0, S6 }

    v173 = _H0;
    __asm { FCVT            H0, S7 }

    v172 = _H0;
    __asm { FCVT            H0, S16 }

    v171 = _H0;
    v189 = v4.f32[0];
    _Q0.i32[0] = v3.i32[1];
    LODWORD(v169) = HIDWORD(v3.u64[0]);
    LODWORD(v187) = v3.i64[0];
    v170 = v4.f32[1];
    v62.i64[0] = 0x9000900090009000;
    v62.i64[1] = 0x9000900090009000;
    while (v55 < 8)
    {
      v104 = 0;
      v103 = v52;
      v66 = v47;
      v65 = v51;
      v64 = v54;
LABEL_52:
      while (v104 < v31)
      {
        _Q0.i8[0] = v103[1];
        v105 = _Q0.u32[0] - v33;
        v106 = v170 * v105;
        _D2.i8[0] = *v64;
        *_D2.i32 = _D2.u32[0] - v32;
        v107 = _S24 * *_D2.i32;
        v108 = (v170 * v105) + (_S24 * *_D2.i32);
        v109 = 8191.0;
        if (v108 <= 8191.0)
        {
          v109 = (v170 * v105) + (_S24 * *_D2.i32);
          if (v108 < 0.0)
          {
            v109 = 0.0;
          }
        }

        _D2.i8[0] = *v103;
        v110 = _D2.u32[0] - v33;
        v111 = (v169 * v105) + (v110 * v187);
        v112 = 8191.0;
        if ((v107 + v111) <= 8191.0)
        {
          v112 = v107 + v111;
          if ((v107 + v111) < 0.0)
          {
            v112 = 0.0;
          }
        }

        v113 = LODWORD(v189);
        v114 = v189 * v110;
        v115 = (v189 * v110) + v107;
        v116 = 8191.0;
        if (v115 <= 8191.0)
        {
          v116 = v115;
          if (v115 < 0.0)
          {
            v116 = 0.0;
          }
        }

        LOBYTE(v113) = v64[1];
        v117 = _S24 * (v113 - v32);
        v118 = v106 + v117;
        v119 = 8191.0;
        if (v118 <= 8191.0)
        {
          v119 = v118;
          if (v118 < 0.0)
          {
            v119 = 0.0;
          }
        }

        v120 = 8191.0;
        if ((v111 + v117) <= 8191.0)
        {
          v120 = v111 + v117;
          if ((v111 + v117) < 0.0)
          {
            v120 = 0.0;
          }
        }

        v121 = v114 + v117;
        v122 = (v114 + v117) <= 8191.0;
        v123 = 8191.0;
        if (v122)
        {
          v123 = v121;
          if (v121 < 0.0)
          {
            v123 = 0.0;
          }
        }

        if (v66)
        {
          LOBYTE(v121) = *v66;
          LOBYTE(v111) = v66[1];
          v66 += 2;
          v124 = LODWORD(v121) * 0.0039216;
          v125 = LODWORD(v111) * 0.0039216;
        }

        else
        {
          v124 = 0.0;
          v125 = 0.0;
        }

        _H2 = *&v35[2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0))];
        __asm { FCVT            S10, H2 }

        _H2 = *&v35[2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0))];
        __asm { FCVT            S26, H2 }

        _H2 = *&v35[2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0))];
        __asm { FCVT            S30, H2 }

        _H31 = *&v35[2 * llroundf(fminf(fmaxf(v119, 0.0), 8191.0))];
        _H9 = *&v35[2 * llroundf(fminf(fmaxf(v120, 0.0), 8191.0))];
        _H11 = *&v35[2 * llroundf(fminf(fmaxf(v123, 0.0), 8191.0))];
        v135 = (((_S18 * _S26) + (_S17 * _S10)) + (_S19 * _S30)) + (_S20 * fmaxf(_S10, fmaxf(_S26, _S30)));
        v136 = 8191.0;
        if (v135 <= 8191.0)
        {
          v136 = v135;
          if (v135 < 0.0)
          {
            v136 = 0.0;
          }
        }

        __asm
        {
          FCVT            S31, H31
          FCVT            S9, H9
          FCVT            S11, H11
        }

        _H12 = *&v30[2 * llroundf(v136)];
        v141 = (((_S18 * _S9) + (_S17 * _S31)) + (_S19 * _S11)) + (_S20 * fmaxf(_S31, fmaxf(_S9, _S11)));
        v142 = 8191.0;
        if (v141 <= 8191.0)
        {
          v142 = v141;
          if (v141 < 0.0)
          {
            v142 = 0.0;
          }
        }

        __asm { FCVT            S2, H12 }

        v144 = _S10 * _S2;
        v145 = _S26 * _S2;
        v146 = _S30 * _S2;
        _H30 = *&v30[2 * llroundf(v142)];
        __asm { FCVT            S30, H30 }

        _S31 = _S31 * _S30;
        _S9 = _S9 * _S30;
        v151 = _S11 * _S30;
        v152 = ((v192 * v145) + (v144 * v193)) + (v146 * v191);
        v153 = ((_S4 * v145) + (v144 * _S3)) + (v146 * _S5);
        _S2 = ((_S7 * v145) + (v144 * _S6)) + (v146 * _S16);
        _S26 = ((v192 * _S9) + (_S31 * v193)) + (v151 * v191);
        _S10 = ((_S4 * _S9) + (_S31 * _S3)) + (v151 * _S5);
        v157 = ((_S7 * _S9) + (_S31 * _S6)) + (v151 * _S16);
        LOWORD(_S31) = *&v36[2 * llroundf(fminf(fmaxf(v152, 0.0), 8191.0))];
        LOWORD(_S9) = *&v36[2 * llroundf(fminf(fmaxf(v153, 0.0), 8191.0))];
        LOWORD(_S2) = *&v36[2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0))];
        LOWORD(_S26) = *&v36[2 * llroundf(fminf(fmaxf(_S26, 0.0), 8191.0))];
        LOWORD(_S10) = *&v36[2 * llroundf(fminf(fmaxf(_S10, 0.0), 8191.0))];
        _H25 = *&v36[2 * llroundf(fminf(fmaxf(v157, 0.0), 8191.0))];
        __asm
        {
          FCVT            S30, H31
          FCVT            S31, H9
          FCVT            S2, H2
          FCVT            S26, H26
          FCVT            S9, H10
          FCVT            S25, H25
        }

        *v65 = _S30;
        *(v65 + 4) = _S31;
        if (!v66)
        {
          v124 = 1.0;
        }

        *(v65 + 8) = _D2.i32[0];
        *(v65 + 12) = v124;
        if (v66)
        {
          *_Q0.i32 = v125;
        }

        else
        {
          *_Q0.i32 = 1.0;
        }

        *(v65 + 16) = _S26;
        *(v65 + 20) = _S9;
        *(v65 + 24) = _S25;
        *(v65 + 28) = _Q0.i32[0];
        v65 += 32;
        v104 += 2;
        v103 += 2;
        v64 += 2;
      }

      v54 += v53;
      v52 += v50;
      v47 += v167;
      v51 += v14;
      if (++v8 == v168)
      {
        goto LABEL_54;
      }
    }

    v63 = 0;
    v64 = v54;
    v65 = v51;
    v66 = v47;
    while (v66)
    {
      v67 = *v66;
      v66 += 8;
      _Q0.i64[0] = v67;
      if (!v66)
      {
        goto LABEL_14;
      }

      *v68.i8 = vzip1_s8(*_Q0.i8, 0);
      v68.u64[1] = vzip2_s8(*_Q0.i8, 0);
      v69 = vmulq_f16(vcvtq_f16_u16(v68), vdupq_n_s16(0x1C04u));
      _Q12 = vcvtq_f32_f16(*v69.i8);
      _Q0 = vextq_s8(v69, v69, 8uLL);
      v71 = vcvtq_f32_f16(*_Q0.i8);
LABEL_15:
      v72 = *&v52[v63];
      *v73.i8 = vzip1_s8(v72, 0);
      v73.u64[1] = vzip2_s8(v72, 0);
      v74 = vcvtq_f16_u16(v73);
      v75 = vmlaq_f16(v185, v188, v74);
      v76 = vmlaq_f16(v184, v186, v74);
      v77 = vuzp1q_s16(v76, _Q0);
      *v77.i8 = vadd_f16(*v77.i8, *&vuzp2q_s16(v76, _Q0));
      v78 = *v64;
      v64 += 8;
      *v79.i8 = vzip1_s8(v78, 0);
      v79.u64[1] = vzip2_s8(v78, 0);
      v80 = vsubq_f16(vcvtq_f16_u16(v79), v190);
      v81 = vmlaq_n_f16(vzip1q_s16(v77, v77), v80, _H8);
      v82 = vmlaq_n_f16(vtrn1q_s16(v75, v75), v80, _H8);
      v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v75, v75), v80, _H8), 0), v62));
      v80.i16[0] = *&v35[2 * v83.u16[0]];
      v80.i16[1] = *&v35[2 * v83.u16[1]];
      v80.i16[2] = *&v35[2 * v83.u16[2]];
      v80.i16[3] = *&v35[2 * v83.u16[3]];
      v80.i16[4] = *&v35[2 * v83.u16[4]];
      v80.i16[5] = *&v35[2 * v83.u16[5]];
      v80.i16[6] = *&v35[2 * v83.u16[6]];
      v80.i16[7] = *&v35[2 * v83.u16[7]];
      v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v81, 0), v62));
      v81.i16[0] = *&v35[2 * v84.u16[0]];
      v81.i16[1] = *&v35[2 * v84.u16[1]];
      v81.i16[2] = *&v35[2 * v84.u16[2]];
      v81.i16[3] = *&v35[2 * v84.u16[3]];
      v81.i16[4] = *&v35[2 * v84.u16[4]];
      v81.i16[5] = *&v35[2 * v84.u16[5]];
      v81.i16[6] = *&v35[2 * v84.u16[6]];
      v81.i16[7] = *&v35[2 * v84.u16[7]];
      v85 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v82, 0), v62));
      v82.i16[0] = *&v35[2 * v85.u16[0]];
      v82.i16[1] = *&v35[2 * v85.u16[1]];
      v82.i16[2] = *&v35[2 * v85.u16[2]];
      v82.i16[3] = *&v35[2 * v85.u16[3]];
      v82.i16[4] = *&v35[2 * v85.u16[4]];
      v82.i16[5] = *&v35[2 * v85.u16[5]];
      v82.i16[6] = *&v35[2 * v85.u16[6]];
      v82.i16[7] = *&v35[2 * v85.u16[7]];
      v86 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v80, v183), v81, v182), v82, v181), vmaxq_f16(vmaxq_f16(v80, v81), v82), v180), 0), v62));
      v75.i16[0] = *&v30[2 * v86.u16[0]];
      v75.i16[1] = *&v30[2 * v86.u16[1]];
      v75.i16[2] = *&v30[2 * v86.u16[2]];
      v75.i16[3] = *&v30[2 * v86.u16[3]];
      v75.i16[4] = *&v30[2 * v86.u16[4]];
      v75.i16[5] = *&v30[2 * v86.u16[5]];
      v75.i16[6] = *&v30[2 * v86.u16[6]];
      v75.i16[7] = *&v30[2 * v86.u16[7]];
      v87 = vmulq_f16(v80, v75);
      v88 = vmulq_f16(v81, v75);
      v89 = vmulq_f16(v82, v75);
      v90 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v87, v179), v88, v178), v89, v177);
      v91 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v87, v176), v88, v175), v89, v174);
      v92 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v89, v171), v88, v172), v87, v173);
      v93 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v90, 0), v62));
      v88.i16[0] = *&v36[2 * v93.u16[0]];
      v88.i16[1] = *&v36[2 * v93.u16[1]];
      v88.i16[2] = *&v36[2 * v93.u16[2]];
      v88.i16[3] = *&v36[2 * v93.u16[3]];
      v88.i16[4] = *&v36[2 * v93.u16[4]];
      v88.i16[5] = *&v36[2 * v93.u16[5]];
      v88.i16[6] = *&v36[2 * v93.u16[6]];
      v88.i16[7] = *&v36[2 * v93.u16[7]];
      v94 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v91, 0), v62));
      v91.i16[0] = *&v36[2 * v94.u16[0]];
      v91.i16[1] = *&v36[2 * v94.u16[1]];
      v91.i16[2] = *&v36[2 * v94.u16[2]];
      v91.i16[3] = *&v36[2 * v94.u16[3]];
      v91.i16[4] = *&v36[2 * v94.u16[4]];
      v91.i16[5] = *&v36[2 * v94.u16[5]];
      v91.i16[6] = *&v36[2 * v94.u16[6]];
      v91.i16[7] = *&v36[2 * v94.u16[7]];
      v95 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v92, 0), v62));
      v95.i16[0] = *&v36[2 * v95.u16[0]];
      result = &v36[2 * v95.u16[3]];
      v95.i16[1] = *&v36[2 * v95.u16[1]];
      v95.i16[2] = *&v36[2 * v95.u16[2]];
      v95.i16[3] = *result;
      v95.i16[4] = *&v36[2 * v95.u16[4]];
      v95.i16[5] = *&v36[2 * v95.u16[5]];
      v95.i16[6] = *&v36[2 * v95.u16[6]];
      v95.i16[7] = *&v36[2 * v95.u16[7]];
      v96 = vcvtq_f32_f16(*v88.i8);
      v97 = vcvtq_f32_f16(*v91.i8);
      v98 = vcvtq_f32_f16(*v95.i8);
      v99 = v65 + 128;
      vst4q_f32(v65, *(&_Q12 - 3));
      v100 = (v65 + 64);
      v101 = vcvtq_f32_f16(*&vextq_s8(v88, v88, 8uLL));
      v102 = vcvtq_f32_f16(*&vextq_s8(v91, v91, 8uLL));
      _D2 = vextq_s8(v95, v95, 8uLL).u64[0];
      _Q0 = vcvtq_f32_f16(_D2);
      vst4q_f32(v100, *(&_Q0 - 2));
      v65 = v99;
      v63 += 8;
      if (v63 >= v29)
      {
        v103 = &v52[v63];
        v104 = v166;
        goto LABEL_52;
      }
    }

    _Q0 = 0uLL;
LABEL_14:
    __asm { FMOV            V12.4S, #1.0 }

    v71 = _Q12;
    goto LABEL_15;
  }

LABEL_54:
  *&v164[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_422vf_TRC_Tone_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = *(result + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(result + 17);
    *&v18 = *(v10 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v10 + 140);
    v20 = v18;
    LOWORD(a5) = *(v10 + 142);
    v21 = LODWORD(a5);
    v22 = v19 * *v10;
    v116 = v19 * *(v10 + 16);
    v117 = v19 * *(v10 + 8);
    v115 = v19 * *(v10 + 20);
    v23 = v19 * *(v10 + 28);
    v24 = *(v10 + 72);
    v25 = *(v10 + 76);
    v26 = *(v10 + 80);
    v27 = *(v10 + 84);
    v28 = *(v10 + 88);
    v29 = *(v10 + 92);
    v30 = *(v10 + 96);
    v31 = *(v10 + 100);
    v32 = v10 + 164;
    v33 = v10 + 16548;
    v34 = v10 + 32932;
    v35 = *(v10 + 104);
    v36 = *(v10 + 108);
    v37 = *(v10 + 112);
    v38 = *(v10 + 116);
    v39 = *(v10 + 120);
    v40 = *(result + 28) * a2 / v5 + *(result + 44);
    v41 = *(result + 36);
    v42 = **(result + 16) + v17 * (v7 + *(result + 15)) + 16 * *(result + 14);
    v43 = v12[2];
    if (v43)
    {
      v44 = (v43 + v40 * v16 + v41);
    }

    else
    {
      v44 = 0;
    }

    v46 = *v12;
    v45 = *(*(result + 7) + 8);
    _ZF = v45 == 0;
    v48 = v45 + v40 * v15 + v41;
    if (_ZF)
    {
      v48 = 0;
    }

    v49 = (v46 + v40 * v14 + v41);
    do
    {
      if (v11 >= 1)
      {
        v50 = 0;
        v51 = v49;
        v52 = v42;
        v53 = v44;
        do
        {
          LOBYTE(v19) = *(v48 + v50 + 1);
          v54 = LODWORD(v19) - v21;
          v55 = LODWORD(v117);
          v56 = v117 * v54;
          LOBYTE(v55) = *v51;
          v57 = v22 * (v55 - v20);
          v58 = (v117 * v54) + v57;
          v59 = 8191.0;
          if (v58 <= 8191.0)
          {
            v59 = (v117 * v54) + v57;
            if (v58 < 0.0)
            {
              v59 = 0.0;
            }
          }

          LOBYTE(v58) = *(v48 + v50);
          v60 = LODWORD(v58) - v21;
          v61 = v115 * v54;
          v62 = (v115 * v54) + (v60 * v116);
          v63 = 8191.0;
          if ((v57 + v62) <= 8191.0)
          {
            v63 = v57 + v62;
            if ((v57 + v62) < 0.0)
            {
              v63 = 0.0;
            }
          }

          v64 = v23 * v60;
          v65 = (v23 * v60) + v57;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = v65;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          LOBYTE(v65) = v51[1];
          v67 = v22 * (LODWORD(v65) - v20);
          v68 = 8191.0;
          if ((v56 + v67) <= 8191.0)
          {
            v68 = v56 + v67;
            if ((v56 + v67) < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = 8191.0;
          if ((v62 + v67) <= 8191.0)
          {
            v69 = v62 + v67;
            if ((v62 + v67) < 0.0)
            {
              v69 = 0.0;
            }
          }

          v70 = v64 + v67;
          v71 = (v64 + v67) <= 8191.0;
          v72 = 8191.0;
          if (v71)
          {
            v72 = v70;
            if (v70 < 0.0)
            {
              v72 = 0.0;
            }
          }

          if (v53)
          {
            LOBYTE(v70) = *v53;
            LOBYTE(v61) = v53[1];
            v53 += 2;
            v73 = LODWORD(v70) * 0.0039216;
            v74 = LODWORD(v61) * 0.0039216;
          }

          else
          {
            v73 = 0.0;
            v74 = 0.0;
          }

          _S4 = fmaxf(v59, 0.0);
          v76 = 8191.0;
          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(_S4, 8191.0)));
          __asm { FCVT            S14, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S10, H4 }

          LOWORD(_S4) = *(v32 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S11, H4 }

          _H12 = *(v32 + 2 * llroundf(fminf(fmaxf(v68, 0.0), 8191.0)));
          _H13 = *(v32 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          _H15 = *(v32 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          v86 = (((v37 * _S10) + (v36 * _S14)) + (v38 * _S11)) + (v39 * fmaxf(_S14, fmaxf(_S10, _S11)));
          v87 = 8191.0;
          if (v86 <= 8191.0)
          {
            v87 = v86;
            if (v86 < 0.0)
            {
              v87 = 0.0;
            }
          }

          __asm
          {
            FCVT            S12, H12
            FCVT            S13, H13
            FCVT            S15, H15
          }

          _H4 = *(v33 + 2 * llroundf(v87));
          v92 = fmaxf(_S12, fmaxf(_S13, _S15));
          v93 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v92);
          if (v93 <= 8191.0)
          {
            v76 = (((v37 * _S13) + (v36 * _S12)) + (v38 * _S15)) + (v39 * v92);
            if (v93 < 0.0)
            {
              v76 = 0.0;
            }
          }

          __asm { FCVT            S4, H4 }

          v95 = _S14 * _S4;
          v96 = _S10 * _S4;
          v97 = _S11 * _S4;
          _H9 = *(v33 + 2 * llroundf(v76));
          __asm { FCVT            S9, H9 }

          _S10 = _S12 * _S9;
          _S11 = _S13 * _S9;
          v102 = _S15 * _S9;
          v103 = ((v25 * v96) + (v95 * v24)) + (v97 * v26);
          v104 = ((v28 * v96) + (v95 * v27)) + (v97 * v29);
          _S4 = ((v31 * v96) + (v95 * v30)) + (v97 * v35);
          _S5 = ((v25 * _S11) + (_S10 * v24)) + (v102 * v26);
          _S6 = ((v28 * _S11) + (_S10 * v27)) + (v102 * v29);
          _S9 = ((v31 * _S11) + (_S10 * v30)) + (v102 * v35);
          LOWORD(_S10) = *(v34 + 2 * llroundf(fminf(fmaxf(v103, 0.0), 8191.0)));
          LOWORD(_S11) = *(v34 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          LOWORD(_S4) = *(v34 + 2 * llroundf(fminf(fmaxf(_S4, 0.0), 8191.0)));
          LOWORD(_S5) = *(v34 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          LOWORD(_S6) = *(v34 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          LOWORD(_S9) = *(v34 + 2 * llroundf(fminf(fmaxf(_S9, 0.0), 8191.0)));
          __asm
          {
            FCVT            S10, H10
            FCVT            S11, H11
            FCVT            S4, H4
            FCVT            S5, H5
            FCVT            S6, H6
            FCVT            S9, H9
          }

          *v52 = _S10;
          *(v52 + 4) = _S11;
          if (!v53)
          {
            v73 = 1.0;
          }

          *(v52 + 8) = _S4;
          *(v52 + 12) = v73;
          if (v53)
          {
            v19 = v74;
          }

          else
          {
            v19 = 1.0;
          }

          *(v52 + 16) = _S5;
          *(v52 + 20) = _S6;
          *(v52 + 24) = _S9;
          *(v52 + 28) = v19;
          v50 += 2;
          v51 += 2;
          v52 += 32;
        }

        while (v50 < v11);
      }

      v49 += v14;
      v48 += v15;
      v44 += v16;
      v42 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD);
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

int vt_Copy_422vf_TRC_Mat_TRC_RGfA_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, int16x8_t _Q0)
{
  v5 = *a1;
  v146 = a1;
  v6 = *(a1 + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(a1 + 24);
    v11 = *(a1 + 19);
    v12 = *(a1 + 7);
    v13 = *(a1 + 8);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = **(a1 + 17);
    v18 = v11[17].u16[2];
    v19 = v11[17].u16[3];
    v20.i32[0] = v11[3].i32[1];
    _S22 = v11[9].f32[0];
    _S1 = v11[9].f32[1];
    _S2 = v11[10].f32[0];
    _S3 = v11[10].f32[1];
    _S4 = v11[11].f32[0];
    _S5 = v11[11].f32[1];
    _S6 = v11[12].f32[0];
    _S7 = v11[12].f32[1];
    _S16 = v11[13].f32[0];
    v30 = &v11[20] + 4;
    v31 = v18;
    v32 = v19;
    *_Q0.i32 = 8191.0 / v11[16].u32[0];
    _S20 = *_Q0.i32 * v11->f32[0];
    v34 = &v11[2068] + 4;
    __asm { FCVT            H8, S20 }

    *v3.i16 = v18;
    _Q23 = vdupq_lane_s16(v3, 0);
    v161 = _Q23;
    v40 = -v19;
    v20.i32[1] = v11[1].i32[0];
    *_Q23.f32 = vmul_n_f32(v20, *_Q0.i32);
    *v4.f32 = vmul_n_f32(v11[2], *_Q0.i32);
    v160 = vdupq_lane_s32(vcvt_f16_f32(_Q23), 0);
    v157 = vmulq_n_f16(v160, v40);
    v158 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v42 = vmulq_n_f16(v158, v40);
    __asm { FCVT            H9, S22 }

    v156 = _H9;
    __asm { FCVT            H9, S1 }

    v155 = _H9;
    __asm { FCVT            H9, S2 }

    v154 = _H9;
    __asm { FCVT            H9, S3 }

    v153 = _H9;
    __asm { FCVT            H9, S4 }

    v152 = _H9;
    __asm
    {
      FCVT            H9, S5
      FCVT            H0, S6
    }

    v150 = _Q0;
    v151 = _H9;
    __asm { FCVT            H0, S7 }

    v149 = _H0;
    __asm { FCVT            H0, S16 }

    v148 = _H0;
    v51 = v12[2];
    v52 = *(a1 + 28) * a2 / v5 + *(a1 + 44);
    v53 = *(a1 + 36);
    v54 = (v51 + v16 * v52 + v53);
    v55 = *v12;
    v56 = *(*(a1 + 7) + 8);
    v57 = **(a1 + 16) + v17 * (v7 + *(a1 + 15)) + 16 * *(a1 + 14);
    if (!v51)
    {
      v54 = 0;
    }

    if (v56)
    {
      v58 = (v56 + v15 * v52 + v53);
    }

    else
    {
      v58 = 0;
    }

    v59 = (v55 + v14 * v52 + v53);
    LODWORD(a1) = v10 & 0xFFFFFFF8;
    v60 = _Q23.i64[0];
    _Q0.i32[0] = v4.i32[1];
    LODWORD(v147) = HIDWORD(v4.u64[0]);
    LODWORD(v159) = v4.i64[0];
    v61.i64[0] = 0x9000900090009000;
    v61.i64[1] = 0x9000900090009000;
    do
    {
      if (v10 < 8)
      {
        v97 = 0;
        v96 = v58;
        v65 = v54;
        v64 = v57;
        v63 = v59;
      }

      else
      {
        v62 = 0;
        v63 = v59;
        v64 = v57;
        v65 = v54;
        do
        {
          if (v65 && (v66 = *v65, ++v65, v67 = v66, v65))
          {
            *v68.i8 = vzip1_s8(v67, 0);
            v68.u64[1] = vzip2_s8(v67, 0);
            v69 = vmulq_f16(vcvtq_f16_u16(v68), vdupq_n_s16(0x1C04u));
            _Q14 = vcvtq_f32_f16(*v69.i8);
            v71 = vcvtq_f32_f16(*&vextq_s8(v69, v69, 8uLL));
          }

          else
          {
            __asm { FMOV            V14.4S, #1.0 }

            v71 = _Q14;
          }

          v72 = *&v58[v62];
          *v73.i8 = vzip1_s8(v72, 0);
          v73.u64[1] = vzip2_s8(v72, 0);
          v74 = vcvtq_f16_u16(v73);
          v75 = vmlaq_f16(v157, v160, v74);
          v76 = vmlaq_f16(v42, v158, v74);
          v77 = vuzp1q_s16(v76, _Q0);
          *v77.i8 = vadd_f16(*v77.i8, *&vuzp2q_s16(v76, _Q0));
          v78 = *v63++;
          *v79.i8 = vzip1_s8(v78, 0);
          v79.u64[1] = vzip2_s8(v78, 0);
          v80 = vzip1q_s16(v77, v77);
          v81 = vsubq_f16(vcvtq_f16_u16(v79), v161);
          v82 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn2q_s16(v75, v75), v81, _H8), 0), v61));
          v76.i16[0] = *&v30[2 * v82.u16[0]];
          v76.i16[1] = *&v30[2 * v82.u16[1]];
          v76.i16[2] = *&v30[2 * v82.u16[2]];
          v76.i16[3] = *&v30[2 * v82.u16[3]];
          v76.i16[4] = *&v30[2 * v82.u16[4]];
          v76.i16[5] = *&v30[2 * v82.u16[5]];
          v76.i16[6] = *&v30[2 * v82.u16[6]];
          v76.i16[7] = *&v30[2 * v82.u16[7]];
          v83 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v80, v81, _H8), 0), v61));
          v80.i16[0] = *&v30[2 * v83.u16[0]];
          v80.i16[1] = *&v30[2 * v83.u16[1]];
          v80.i16[2] = *&v30[2 * v83.u16[2]];
          v80.i16[3] = *&v30[2 * v83.u16[3]];
          v80.i16[4] = *&v30[2 * v83.u16[4]];
          v80.i16[5] = *&v30[2 * v83.u16[5]];
          v80.i16[6] = *&v30[2 * v83.u16[6]];
          v80.i16[7] = *&v30[2 * v83.u16[7]];
          v84 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vtrn1q_s16(v75, v75), v81, _H8), 0), v61));
          v79.i16[0] = *&v30[2 * v84.u16[0]];
          v79.i16[1] = *&v30[2 * v84.u16[1]];
          v79.i16[2] = *&v30[2 * v84.u16[2]];
          v79.i16[3] = *&v30[2 * v84.u16[3]];
          v79.i16[4] = *&v30[2 * v84.u16[4]];
          v79.i16[5] = *&v30[2 * v84.u16[5]];
          v79.i16[6] = *&v30[2 * v84.u16[6]];
          v79.i16[7] = *&v30[2 * v84.u16[7]];
          v85 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, v153), v80, v152), v79, v151);
          _Q0 = v150;
          v86 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v79, v148), v80, v149), v76, *v150.i16);
          v87 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v76, v156), v80, v155), v79, v154), 0), v61));
          v76.i16[0] = *&v34[2 * v87.u16[0]];
          v76.i16[1] = *&v34[2 * v87.u16[1]];
          v76.i16[2] = *&v34[2 * v87.u16[2]];
          v76.i16[3] = *&v34[2 * v87.u16[3]];
          v76.i16[4] = *&v34[2 * v87.u16[4]];
          v76.i16[5] = *&v34[2 * v87.u16[5]];
          v76.i16[6] = *&v34[2 * v87.u16[6]];
          v76.i16[7] = *&v34[2 * v87.u16[7]];
          v88 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v85, 0), v61));
          v87.i16[0] = *&v34[2 * v88.u16[0]];
          v87.i16[1] = *&v34[2 * v88.u16[1]];
          v87.i16[2] = *&v34[2 * v88.u16[2]];
          v87.i16[3] = *&v34[2 * v88.u16[3]];
          v87.i16[4] = *&v34[2 * v88.u16[4]];
          v87.i16[5] = *&v34[2 * v88.u16[5]];
          v87.i16[6] = *&v34[2 * v88.u16[6]];
          v87.i16[7] = *&v34[2 * v88.u16[7]];
          v89 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v86, 0), v61));
          v79.i16[0] = *&v34[2 * v89.u16[0]];
          v79.i16[1] = *&v34[2 * v89.u16[1]];
          v79.i16[2] = *&v34[2 * v89.u16[2]];
          v79.i16[3] = *&v34[2 * v89.u16[3]];
          v79.i16[4] = *&v34[2 * v89.u16[4]];
          v79.i16[5] = *&v34[2 * v89.u16[5]];
          v79.i16[6] = *&v34[2 * v89.u16[6]];
          v79.i16[7] = *&v34[2 * v89.u16[7]];
          v90 = vcvtq_f32_f16(*v76.i8);
          v91 = vcvtq_f32_f16(*v87.i8);
          v92 = vcvtq_f32_f16(*v79.i8);
          _Q23 = vcvtq_f32_f16(*&vextq_s8(v76, v76, 8uLL));
          v93 = vcvtq_f32_f16(*&vextq_s8(v87, v87, 8uLL));
          v94 = vcvtq_f32_f16(*&vextq_s8(v79, v79, 8uLL));
          a1 = v64 + 128;
          vst4q_f32(v64, *(&_Q14 - 3));
          v95 = (v64 + 64);
          vst4q_f32(v95, *_Q23.f32);
          v64 = a1;
          v62 += 8;
        }

        while (v62 < v10 - 7);
        v96 = &v58[v62];
        v97 = v10 & 0xFFFFFFF8;
      }

      while (v97 < (v10 & 0xFFFFFFFE))
      {
        _Q23.i8[0] = v96[1];
        *&v98 = _Q23.u32[0];
        v99 = *&v98 - v32;
        v100 = *(&v60 + 1) * (*&v98 - v32);
        LOBYTE(v98) = v63->i8[0];
        v101 = _S20 * (v98 - v31);
        v102 = v100 + v101;
        _Q23.i32[0] = 1174403072;
        if ((v100 + v101) <= 8191.0)
        {
          _Q23.f32[0] = v100 + v101;
          if (v102 < 0.0)
          {
            _Q23.i32[0] = 0;
          }
        }

        LOBYTE(v102) = *v96;
        v103 = LODWORD(v102) - v32;
        v104 = (v147 * v99) + (v103 * v159);
        v105 = 8191.0;
        if ((v101 + v104) <= 8191.0)
        {
          v105 = v101 + v104;
          if ((v101 + v104) < 0.0)
          {
            v105 = 0.0;
          }
        }

        v106 = v60;
        v107 = *&v60 * v103;
        v108 = (*&v60 * v103) + v101;
        v109 = 8191.0;
        if (v108 <= 8191.0)
        {
          v109 = v108;
          if (v108 < 0.0)
          {
            v109 = 0.0;
          }
        }

        LOBYTE(v106) = v63->i8[1];
        v110 = _S20 * (v106 - v31);
        v111 = v100 + v110;
        v112 = 8191.0;
        if (v111 <= 8191.0)
        {
          v112 = v111;
          if (v111 < 0.0)
          {
            v112 = 0.0;
          }
        }

        v113 = 8191.0;
        if ((v104 + v110) <= 8191.0)
        {
          v113 = v104 + v110;
          if ((v104 + v110) < 0.0)
          {
            v113 = 0.0;
          }
        }

        v114 = v107 + v110;
        v115 = (v107 + v110) <= 8191.0;
        v116 = 8191.0;
        if (v115)
        {
          v116 = v114;
          if (v114 < 0.0)
          {
            v116 = 0.0;
          }
        }

        if (v65)
        {
          LOBYTE(v114) = v65->i8[0];
          LOBYTE(v104) = v65->i8[1];
          v65 = (v65 + 2);
          v117 = LODWORD(v114) * 0.0039216;
          v118 = LODWORD(v104) * 0.0039216;
        }

        else
        {
          v117 = 0.0;
          v118 = 0.0;
        }

        _H28 = *&v30[2 * llroundf(fminf(fmaxf(_Q23.f32[0], 0.0), 8191.0))];
        v120 = llroundf(fminf(fmaxf(v105, 0.0), 8191.0));
        __asm { FCVT            S24, H28 }

        _H28 = *&v30[2 * v120];
        __asm { FCVT            S28, H28 }

        _H27 = *&v30[2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0))];
        __asm { FCVT            S27, H27 }

        _H29 = *&v30[2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0))];
        __asm { FCVT            S29, H29 }

        _H9 = *&v30[2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0))];
        _H10 = *&v30[2 * llroundf(fminf(fmaxf(v116, 0.0), 8191.0))];
        __asm
        {
          FCVT            S9, H9
          FCVT            S10, H10
        }

        v132 = ((_S1 * _S28) + (_S24 * _S22)) + (_S27 * _S2);
        v133 = ((_S4 * _S28) + (_S24 * _S3)) + (_S27 * _S5);
        _S24 = ((_S7 * _S28) + (_S24 * _S6)) + (_S27 * _S16);
        _S27 = ((_S1 * _S9) + (_S29 * _S22)) + (_S10 * _S2);
        _S28 = ((_S4 * _S9) + (_S29 * _S3)) + (_S10 * _S5);
        v137 = ((_S7 * _S9) + (_S29 * _S6)) + (_S10 * _S16);
        LOWORD(_S9) = *&v34[2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0))];
        LOWORD(_S10) = *&v34[2 * llroundf(fminf(fmaxf(v133, 0.0), 8191.0))];
        LOWORD(_S24) = *&v34[2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0))];
        LOWORD(_S27) = *&v34[2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0))];
        LOWORD(_S28) = *&v34[2 * llroundf(fminf(fmaxf(_S28, 0.0), 8191.0))];
        LODWORD(a1) = llroundf(fminf(fmaxf(v137, 0.0), 8191.0));
        _H23 = *&v34[2 * a1];
        __asm
        {
          FCVT            S29, H9
          FCVT            S9, H10
          FCVT            S24, H24
          FCVT            S27, H27
          FCVT            S28, H28
          FCVT            S23, H23
        }

        *v64 = _S29;
        *(v64 + 1) = _S9;
        _Q0.i32[0] = 1.0;
        if (!v65)
        {
          v117 = 1.0;
        }

        *(v64 + 2) = _S24;
        *(v64 + 3) = v117;
        if (v65)
        {
          v144 = v118;
        }

        else
        {
          v144 = 1.0;
        }

        *(v64 + 4) = _S27;
        *(v64 + 5) = _S28;
        *(v64 + 6) = _Q23.i32[0];
        *(v64 + 7) = v144;
        v64 += 32;
        v97 += 2;
        v96 += 2;
        v63 = (v63 + 2);
      }

      v59 = (v59 + v14);
      v58 += v15;
      v54 = (v54 + v16);
      v57 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&v146[4 * a2 + 160] = 0;
  return a1;
}

uint64_t vt_Copy_422vf_TRC_Mat_TRC_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_TRC_Mat_TRC_RGfA_GCD);
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

unsigned __int8 *vt_Copy_422vf_TRC_Mat_TRC_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v6 = *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = (v7 + v7 * a2) / v6 - v8;
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = *(result + 7);
    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = **(result + 17);
    *&v19 = *(v11 + 128);
    v20 = 8191.0 / *&v19;
    LOWORD(v19) = *(v11 + 140);
    v21 = v19;
    LOWORD(a5) = *(v11 + 142);
    v22 = LODWORD(a5);
    v23 = v20 * *v11;
    v24 = v20 * *(v11 + 8);
    v25 = v20 * *(v11 + 16);
    v26 = v20 * *(v11 + 20);
    v27 = v20 * *(v11 + 28);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v34 = *(v11 + 96);
    v35 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = v11 + 164;
    v38 = v11 + 16548;
    v39 = *(result + 28) * a2 / v6 + *(result + 44);
    v40 = *(result + 36);
    v41 = **(result + 16) + v18 * (v8 + *(result + 15)) + 16 * *(result + 14);
    v42 = v13[2];
    if (v42)
    {
      v43 = (v42 + v39 * v17 + v40);
    }

    else
    {
      v43 = 0;
    }

    v45 = *v13;
    v44 = v13[1];
    v46 = v44 + v39 * v16 + v40;
    if (!v44)
    {
      v46 = 0;
    }

    v47 = (v45 + v39 * v15 + v40);
    do
    {
      if (v12 >= 1)
      {
        v48 = 0;
        v49 = v47;
        v50 = v41;
        v51 = v43;
        do
        {
          LOBYTE(v5) = *(v46 + v48 + 1);
          *&v52 = LODWORD(v5);
          v53 = *&v52 - v22;
          v54 = v24 * (*&v52 - v22);
          LOBYTE(v52) = *v49;
          v55 = v23 * (v52 - v21);
          v56 = v54 + v55;
          v57 = 8191.0;
          if ((v54 + v55) <= 8191.0)
          {
            v57 = v54 + v55;
            if (v56 < 0.0)
            {
              v57 = 0.0;
            }
          }

          LOBYTE(v56) = *(v46 + v48);
          v58 = LODWORD(v56) - v22;
          v59 = (v26 * v53) + (v58 * v25);
          v60 = 8191.0;
          if ((v55 + v59) <= 8191.0)
          {
            v60 = v55 + v59;
            if ((v55 + v59) < 0.0)
            {
              v60 = 0.0;
            }
          }

          v61 = v27 * v58;
          v62 = (v27 * v58) + v55;
          v63 = 8191.0;
          if (v62 <= 8191.0)
          {
            v63 = v62;
            if (v62 < 0.0)
            {
              v63 = 0.0;
            }
          }

          LOBYTE(v62) = v49[1];
          v64 = v23 * (LODWORD(v62) - v21);
          v65 = v54 + v64;
          v66 = 8191.0;
          if (v65 <= 8191.0)
          {
            v66 = v65;
            if (v65 < 0.0)
            {
              v66 = 0.0;
            }
          }

          v67 = 8191.0;
          if ((v59 + v64) <= 8191.0)
          {
            v67 = v59 + v64;
            if ((v59 + v64) < 0.0)
            {
              v67 = 0.0;
            }
          }

          v68 = v61 + v64;
          v69 = (v61 + v64) <= 8191.0;
          v70 = 8191.0;
          if (v69)
          {
            v70 = v68;
            if (v68 < 0.0)
            {
              v70 = 0.0;
            }
          }

          if (v51)
          {
            LOBYTE(v68) = *v51;
            LOBYTE(v59) = v51[1];
            v51 += 2;
            v71 = LODWORD(v68) * 0.0039216;
            v72 = LODWORD(v59) * 0.0039216;
          }

          else
          {
            v71 = 0.0;
            v72 = 0.0;
          }

          _H27 = *(v37 + 2 * llroundf(fminf(fmaxf(v57, 0.0), 8191.0)));
          __asm { FCVT            S27, H27 }

          _H28 = *(v37 + 2 * llroundf(fminf(fmaxf(v60, 0.0), 8191.0)));
          __asm { FCVT            S28, H28 }

          _H31 = *(v37 + 2 * llroundf(fminf(fmaxf(v63, 0.0), 8191.0)));
          __asm { FCVT            S31, H31 }

          _H8 = *(v37 + 2 * llroundf(fminf(fmaxf(v66, 0.0), 8191.0)));
          __asm { FCVT            S8, H8 }

          _H9 = *(v37 + 2 * llroundf(fminf(fmaxf(v67, 0.0), 8191.0)));
          _H10 = *(v37 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
          }

          v89 = ((v29 * _S28) + (_S27 * v28)) + (_S31 * v30);
          v90 = ((v32 * _S28) + (_S27 * v31)) + (_S31 * v33);
          _S27 = ((v35 * _S28) + (_S27 * v34)) + (_S31 * v36);
          _S28 = ((v29 * _S9) + (_S8 * v28)) + (_S10 * v30);
          _S31 = ((v32 * _S9) + (_S8 * v31)) + (_S10 * v33);
          _S8 = ((v35 * _S9) + (_S8 * v34)) + (_S10 * v36);
          LOWORD(_S9) = *(v38 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          LOWORD(_S10) = *(v38 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          LOWORD(_S27) = *(v38 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
          LOWORD(_S28) = *(v38 + 2 * llroundf(fminf(fmaxf(_S28, 0.0), 8191.0)));
          LOWORD(_S31) = *(v38 + 2 * llroundf(fminf(fmaxf(_S31, 0.0), 8191.0)));
          LOWORD(_S8) = *(v38 + 2 * llroundf(fminf(fmaxf(_S8, 0.0), 8191.0)));
          __asm
          {
            FCVT            S9, H9
            FCVT            S10, H10
            FCVT            S27, H27
            FCVT            S28, H28
            FCVT            S31, H31
            FCVT            S8, H8
          }

          *v50 = _S9;
          *(v50 + 4) = _S10;
          if (!v51)
          {
            v71 = 1.0;
          }

          *(v50 + 8) = _S27;
          *(v50 + 12) = v71;
          if (v51)
          {
            v5 = v72;
          }

          else
          {
            v5 = 1.0;
          }

          *(v50 + 16) = _S28;
          *(v50 + 20) = _S31;
          *(v50 + 24) = _S8;
          *(v50 + 28) = v5;
          v48 += 2;
          v49 += 2;
          v50 += 32;
        }

        while (v48 < v12);
      }

      v47 += v15;
      v46 += v16;
      v43 += v17;
      v41 += v18;
      ++v10;
    }

    while (v10 != v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_RGfA_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_RGfA_neon_fp16_GCD);
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

unsigned __int8 *vt_Copy_422vf_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7, double a8, float32x4_t a9)
{
  v16 = *result;
  v17 = *(result + 13);
  v18 = v17 * a2 / v16;
  v19 = (v17 + v17 * a2) / v16 - v18;
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = *(result + 24);
    v22 = *(result + 19);
    v23 = *(result + 7);
    v24 = *(result + 8);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = **(result + 17);
    v29 = v22[17].u16[2];
    v30 = v22[17].u16[3];
    a9.i32[0] = v22[3].i32[1];
    a3.i32[0] = 1.0;
    v9.f32[0] = 1.0 / v22[16].u32[0];
    v31 = v29;
    v32 = v30;
    _S3 = v9.f32[0] * v22->f32[0];
    *a7.i16 = v29;
    v34 = vdupq_lane_s16(a7, 0);
    __asm { FCVT            H5, S3 }

    v40 = -v30;
    a9.i32[1] = v22[1].i32[0];
    *a9.f32 = vmul_n_f32(*a9.f32, v9.f32[0]);
    v41 = vdupq_lane_s32(vcvt_f16_f32(a9), 0);
    *v9.f32 = vmul_n_f32(v22[2], v9.f32[0]);
    v42 = vdupq_lane_s32(vcvt_f16_f32(v9), 0);
    v43 = vmulq_n_f16(v41, v40);
    v44 = vmulq_n_f16(v42, v40);
    v45 = v23[2];
    v46 = *(result + 28) * a2 / v16 + *(result + 44);
    v47 = *(result + 36);
    v48 = (v45 + v27 * v46 + v47);
    v49 = *v23;
    v50 = *(*(result + 7) + 8);
    v51 = **(result + 16) + v28 * (v18 + *(result + 15)) + 16 * *(result + 14);
    if (!v45)
    {
      v48 = 0;
    }

    if (v50)
    {
      v52 = (v50 + v26 * v46 + v47);
    }

    else
    {
      v52 = 0;
    }

    v53 = (v49 + v25 * v46 + v47);
    __asm { FMOV            V23.4S, #1.0 }

    do
    {
      if (v21 < 8)
      {
        v80 = 0;
        v79 = v52;
        v58 = v48;
        v57 = v51;
        v56 = v53;
      }

      else
      {
        v55 = 0;
        v56 = v53;
        v57 = v51;
        v58 = v48;
        do
        {
          if (v58)
          {
            v59 = *v58++;
            *v60.i8 = vzip1_s8(v59, 0);
            v60.u64[1] = vzip2_s8(v59, 0);
            v61 = vmulq_f16(vcvtq_f16_u16(v60), vdupq_n_s16(0x1C04u));
            v13 = vcvtq_f32_f16(*v61.i8);
            v62 = vcvtq_f32_f16(*&vextq_s8(v61, v61, 8uLL));
          }

          else
          {
            v13 = _Q23;
            v62 = _Q23;
          }

          v63 = *&v52[v55];
          *v64.i8 = vzip1_s8(v63, 0);
          v64.u64[1] = vzip2_s8(v63, 0);
          v65 = vcvtq_f16_u16(v64);
          v66 = vmlaq_f16(v43, v41, v65);
          v67 = vmlaq_f16(v44, v42, v65);
          v68 = vuzp1q_s16(v67, a3).u64[0];
          v69 = vuzp2q_s16(v67, a3);
          *v69.i8 = vadd_f16(v68, *v69.i8);
          v70 = *v56++;
          *v71.i8 = vzip1_s8(v70, 0);
          v71.u64[1] = vzip2_s8(v70, 0);
          v72 = vsubq_f16(vcvtq_f16_u16(v71), v34);
          v73 = vmlaq_n_f16(vtrn2q_s16(v66, v66), v72, _H5);
          v74 = vmlaq_n_f16(vzip1q_s16(v69, v69), v72, _H5);
          v75 = vmlaq_n_f16(vtrn1q_s16(v66, v66), v72, _H5);
          v10 = vcvtq_f32_f16(*v73.i8);
          v11 = vcvtq_f32_f16(*v74.i8);
          v12 = vcvtq_f32_f16(*v75.i8);
          v76 = vcvtq_f32_f16(*&vextq_s8(v73, v73, 8uLL));
          v14 = vcvtq_f32_f16(*&vextq_s8(v74, v74, 8uLL));
          v15 = vcvtq_f32_f16(*&vextq_s8(v75, v75, 8uLL));
          v77 = v57 + 128;
          vst4q_f32(v57, *v10.f32);
          v78 = (v57 + 64);
          vst4q_f32(v78, *(&v14 - 1));
          v57 = v77;
          v55 += 8;
        }

        while (v55 < v21 - 7);
        v79 = &v52[v55];
        v80 = v21 & 0xFFFFFFF8;
      }

      while (v80 < (v21 & 0xFFFFFFFE))
      {
        if (v58)
        {
          v10.i8[0] = v58->i8[0];
          v11.i8[0] = v58->i8[1];
          v58 = (v58 + 2);
          v12.i32[0] = 998277249;
          v10.f32[0] = v10.u32[0] * 0.0039216;
          v11.f32[0] = v11.u32[0] * 0.0039216;
        }

        else
        {
          v10.i32[0] = 0;
          v11.i32[0] = 0;
        }

        v12.i8[0] = *v79;
        v81 = v12.u32[0] - v32;
        v13.i8[0] = v79[1];
        v82 = v13.u32[0] - v32;
        v83 = a9.f32[1] * v82;
        v84 = (v9.f32[1] * v82) + (v81 * v9.f32[0]);
        v85 = a9.f32[0] * v81;
        v14.i8[0] = v56->i8[0];
        v86 = _S3 * (v14.u32[0] - v31);
        v15.i8[0] = v56->i8[1];
        v15.f32[0] = _S3 * (v15.u32[0] - v31);
        v87 = v83 + v86;
        v88 = v86 + v84;
        v14.f32[0] = v85 + v86;
        v89 = v83 + v15.f32[0];
        v13.f32[0] = v84 + v15.f32[0];
        v12.f32[0] = v85 + v15.f32[0];
        *v57 = v87;
        *(v57 + 4) = v88;
        if (!v58)
        {
          v10.f32[0] = 1.0;
        }

        *(v57 + 8) = v14.i32[0];
        *(v57 + 12) = v10.i32[0];
        if (v58)
        {
          v10.f32[0] = v11.f32[0];
        }

        else
        {
          v10.f32[0] = 1.0;
        }

        *(v57 + 16) = v89;
        *(v57 + 20) = v13.i32[0];
        *(v57 + 24) = v12.i32[0];
        *(v57 + 28) = v10.i32[0];
        v57 += 32;
        v80 += 2;
        v79 += 2;
        v56 = (v56 + 2);
      }

      v53 = (v53 + v25);
      v52 += v26;
      v48 = (v48 + v27);
      v51 += v28;
      ++v20;
    }

    while (v20 != v19);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_422vf_rgb_RGfA(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
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
    if (v22 || (v33 = v29 + 1 + v30, v33 > *v63) || ((v33 + (v33 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v63[1] || (v34 = v63[2], v33 > v34) && v34 || (16 * (v31 + v28) + 16) > *v61)
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
      if ((*v61 * (v67 + v38 - 1) + 16 * (v37 + v31)) <= *a9)
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
  dispatch_apply_f(v10, global_queue, v23, vt_Copy_422vf_rgb_RGfA_GCD);
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

unsigned __int8 *vt_Copy_422vf_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5)
{
  v11 = *result;
  v12 = *(result + 13);
  v13 = v12 * a2 / v11;
  v14 = (v12 + v12 * a2) / v11 - v13;
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = *(result + 19);
    v17 = *(result + 24) & 0xFFFFFFFE;
    v18 = *(result + 7);
    v19 = *(result + 8);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = **(result + 17);
    *&v24 = *(v16 + 128);
    v25 = 1.0 / *&v24;
    LOWORD(v24) = *(v16 + 140);
    v26 = v24;
    LOWORD(a5) = *(v16 + 142);
    v27 = LODWORD(a5);
    v28 = v25 * *v16;
    v29 = v25 * *(v16 + 8);
    v30 = v25 * *(v16 + 16);
    v31 = v25 * *(v16 + 20);
    v32 = v25 * *(v16 + 28);
    v33 = *(result + 28) * a2 / v11 + *(result + 44);
    v34 = *(result + 36);
    v35 = **(result + 16) + v23 * (v13 + *(result + 15)) + 16 * *(result + 14);
    v36 = v18[2];
    if (v36)
    {
      v37 = (v36 + v33 * v22 + v34);
    }

    else
    {
      v37 = 0;
    }

    v38 = *v18;
    v39 = *(*(result + 7) + 8);
    v40 = v39 == 0;
    v41 = v39 + v33 * v21 + v34;
    if (v40)
    {
      v41 = 0;
    }

    v42 = (v38 + v33 * v20 + v34);
    do
    {
      if (v17 >= 1)
      {
        v43 = 0;
        v44 = v42;
        v45 = v35;
        v46 = v37;
        do
        {
          if (v46)
          {
            LOBYTE(v5) = *v46;
            LOBYTE(v6) = v46[1];
            v46 += 2;
            v47 = LODWORD(v5) * 0.0039216;
            v6 = LODWORD(v6) * 0.0039216;
          }

          else
          {
            v47 = 0.0;
            v6 = 0.0;
          }

          LOBYTE(v7) = *(v41 + v43);
          v48 = LODWORD(v7) - v27;
          LOBYTE(v8) = *(v41 + v43 + 1);
          v49 = LODWORD(v8) - v27;
          v50 = v29 * v49;
          v51 = (v31 * v49) + (v48 * v30);
          v52 = v32 * v48;
          LOBYTE(v9) = *v44;
          v53 = v28 * (LODWORD(v9) - v26);
          LOBYTE(v10) = v44[1];
          v10 = v28 * (LODWORD(v10) - v26);
          v54 = v50 + v53;
          v55 = v53 + v51;
          v9 = v52 + v53;
          v56 = v50 + v10;
          v8 = v51 + v10;
          v7 = v52 + v10;
          *v45 = v54;
          v45[1] = v55;
          if (!v46)
          {
            v47 = 1.0;
          }

          v45[2] = v9;
          v45[3] = v47;
          if (v46)
          {
            v5 = v6;
          }

          else
          {
            v5 = 1.0;
          }

          v45[4] = v56;
          v45[5] = v8;
          v45[6] = v7;
          v45[7] = v5;
          v43 += 2;
          v44 += 2;
          v45 += 8;
        }

        while (v43 < v17);
      }

      v42 += v20;
      v41 += v21;
      v37 += v22;
      v35 += v23;
      ++v15;
    }

    while (v15 != v14);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t VTCMSessionIsSupported()
{
  if (qword_1ED6D41C8 != -1)
  {
    VTCMSessionIsSupported_cold_1();
  }

  return _MergedGlobals_12;
}

_BYTE *vt_checkCMSessionIsSupported(_BYTE *result)
{
  if (MEMORY[0x1EEE8C548] && MEMORY[0x1EEE8C540] && MEMORY[0x1EEE8C530] && MEMORY[0x1EEE8C538] && *MEMORY[0x1E69AF650] && *MEMORY[0x1E69AFA58] && *MEMORY[0x1E69AFAF8] && *MEMORY[0x1E69AFB78] && *MEMORY[0x1E69AFCB8] && *MEMORY[0x1E69AFD98] && *MEMORY[0x1E69AFDA0])
  {
    if (*MEMORY[0x1E69AEE38])
    {
      *result = 1;
    }
  }

  return result;
}

uint64_t CMSessionAddResource(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(unsigned __int8 *a1, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, double a6, float32x4_t a7)
{
  v9 = 0;
  v10 = *(a1 + 36);
  v266 = *(a1 + 24);
  v11 = 2 * *a1;
  v12 = *(a1 + 44) + 2 * (*(a1 + 28) * a2 / v11);
  v14 = *(a1 + 13);
  v13 = *(a1 + 14);
  v15 = v14 * a2;
  v16 = *(a1 + 19);
  v17 = *(a1 + 16);
  v18 = *(a1 + 17);
  v19 = **(a1 + 8);
  v20 = **(a1 + 7);
  v21 = *v18;
  v22 = v18[1];
  v24 = *v17;
  v23 = v17[1];
  v25 = v18[2];
  v26 = v17[2];
  v27 = *(v16 + 128);
  v28 = v14 * a2 / v11;
  v29 = *(a1 + 15) + 2 * v28;
  v320 = *(v16 + 154);
  v30 = *(v16 + 144);
  v31 = *(v16 + 146);
  v32 = *(v16 + 148);
  v33 = *(v16 + 150);
  v34 = *(v16 + 152);
  v312 = *(v16 + 36);
  v311 = *(v16 + 40);
  a7.i32[0] = *(v16 + 48);
  v310 = *(v16 + 44);
  a4.i32[0] = *(v16 + 52);
  v35.i32[0] = *(v16 + 56);
  v37 = *(v16 + 60);
  v36 = *(v16 + 64);
  v38 = (v14 + v15) / v11 - v28;
  v39 = v19 * v12;
  a5.i32[0] = *(v16 + 68);
  v309 = *(v16 + 72);
  v308 = *(v16 + 76);
  v307 = *(v16 + 80);
  v306 = *(v16 + 84);
  v305 = *(v16 + 88);
  v265 = v25;
  v304 = *(v16 + 92);
  v303 = *(v16 + 96);
  v302 = *(v16 + 100);
  v301 = *(v16 + 104);
  _S21 = *(v16 + 108);
  _S22 = *(v16 + 112);
  _S23 = *(v16 + 116);
  _S28 = *(v16 + 120);
  v318 = 0u;
  v319 = 0u;
  do
  {
    v44 = 0;
    v45 = *(&v320 + v9);
    v46 = *(&v318 + v9);
    do
    {
      result = (v45 + 4 * v44);
      v317 = v46;
      *(&v317 | v44 & 7) = v45 + 4 * v44;
      v46 = v317;
      ++v44;
    }

    while (v44 != 8);
    *(&v318 + v9++) = v317;
  }

  while (v9 != 4);
  v264 = 2 * v38;
  if (2 * v38 >= 1)
  {
    v48 = v21;
    result = v19;
    v49 = 0;
    _S25 = 8191.0 / v27;
    v299 = v30;
    *v51.i32 = v31;
    v297 = v32;
    *&_Q6 = v33;
    v313 = v33;
    a7.i32[1] = v37;
    __asm { FMOV            V5.2S, #0.25 }

    *a7.f32 = vmul_f32(*a7.f32, *&_Q5);
    a4.i32[1] = v36;
    v35.i32[1] = a5.i32[0];
    *a4.f32 = vmul_f32(*a4.f32, *&_Q5);
    *a5.f32 = vmul_f32(v35, *&_Q5);
    _S0 = v312;
    __asm { FCVT            H0, S0 }

    v292 = *&_S0;
    _S0 = v311;
    __asm { FCVT            H0, S0 }

    v291 = *&_S0;
    _S0 = v310;
    __asm { FCVT            H0, S0 }

    v290 = *&_S0;
    v61 = v16 + 16548;
    v62 = v266 & 0xFFFFFFFE;
    v63 = v16 + 32932;
    v64 = v16 + 164;
    _Q0 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v288 = _Q0;
    v289 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    *_Q0.i8 = vcvt_f16_f32(a5);
    v66 = vdupq_lane_s32(*_Q0.i8, 0);
    __asm { FCVT            H0, S21 }

    v286 = *_Q0.i16;
    v287 = v66;
    __asm { FCVT            H0, S22 }

    v285 = *_Q0.i16;
    __asm { FCVT            H0, S23 }

    v284 = *_Q0.i16;
    __asm { FCVT            H0, S28 }

    v283 = *_Q0.i16;
    *_Q0.i32 = v309;
    __asm { FCVT            H0, S0 }

    v282 = *_Q0.i16;
    *_Q0.i32 = v308;
    __asm { FCVT            H0, S0 }

    v281 = *_Q0.i16;
    *_Q0.i32 = v307;
    __asm { FCVT            H0, S0 }

    v280 = *_Q0.i16;
    *_Q0.i32 = v306;
    __asm { FCVT            H0, S0 }

    v279 = *_Q0.i16;
    *_Q0.i32 = v305;
    __asm { FCVT            H0, S0 }

    v278 = *_Q0.i16;
    *_Q0.i32 = v304;
    __asm { FCVT            H0, S0 }

    v277 = _Q0;
    *_Q0.i32 = v303;
    __asm { FCVT            H0, S0 }

    v316 = *_Q0.i16;
    *_Q0.i16 = v30;
    v67 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i16 = v31;
    v68 = vdupq_lane_s16(*_Q0.i8, 0);
    v275 = v68;
    v276 = v67;
    *v68.i16 = v32;
    v69 = vdupq_lane_s16(*v68.i8, 0);
    *v68.i16 = v33;
    v70 = vdupq_lane_s16(*v68.i8, 0);
    v273 = v70;
    v274 = v69;
    *v70.i16 = v34;
    v71 = vdupq_lane_s16(*v70.i8, 0);
    if (v26)
    {
      v72 = v26 + v25 * v29 + v13;
    }

    else
    {
      v72 = 0;
    }

    v73 = (v23 + v22 * (v29 / 2) + v13);
    v74 = (v24 + v21 * v29 + v13);
    v75 = (v20 + v39 + 4 * v10);
    v76 = v25;
    _S0 = v302;
    __asm { FCVT            H0, S0 }

    v315 = *&_S0;
    _S0 = v301;
    __asm { FCVT            H0, S0 }

    v271 = *&_S0;
    v272 = v71;
    __asm { FCVT            H0, S25 }

    v270 = *&_S0;
    v294 = a4.f32[0];
    v295 = a7.f32[0];
    v268 = a4.f32[1];
    v269 = a7.f32[1];
    LODWORD(v79) = a5.i32[1];
    v267 = a5.f32[1];
    v293 = a5.f32[0];
    v300 = 8191.0 / v27;
    v298 = v31;
    v296 = v34;
    v263 = _S21;
    do
    {
      v80 = result;
      v81 = &v75[result];
      v82 = v48;
      v83 = v74 + v48;
      v84 = v72 + v76;
      if (v266 < 8)
      {
        v150 = 0;
        v88 = &v75[result];
        v87 = (v74 + v48);
        v149 = v73;
        v86 = (v72 + v76);
      }

      else
      {
        v85 = 0;
        v86 = (v72 + v76);
        v87 = (v74 + v48);
        v88 = &v75[result];
        do
        {
          v314 = *(&v319 + 8);
          *&v79 = *v75;
          v89 = *(v75 + 1);
          a5.i64[0] = *(v75 + 2);
          v90 = *(v75 + 3);
          v75 += 32;
          *(&v79 + 1) = v89;
          a5.i64[1] = v90;
          a4 = a5;
          v91 = vqtbl2_s8(*(&a4 - 1), *&v318);
          v92 = vqtbl2_s8(*(&a4 - 1), *(&v318 + 8));
          v93 = vqtbl2_s8(*(&a4 - 1), *&v319);
          *v94.i8 = vzip1_s8(v91, 0);
          v94.u64[1] = vzip2_s8(v91, 0);
          v95 = vcvtq_f16_u16(v94);
          *v96.i8 = vzip1_s8(v92, 0);
          v96.u64[1] = vzip2_s8(v92, 0);
          v97 = vcvtq_f16_u16(v96);
          *v96.i8 = vzip1_s8(v93, 0);
          v96.u64[1] = vzip2_s8(v93, 0);
          v98 = vcvtq_f16_u16(v96);
          *&v102 = *v88;
          v99 = *(v88 + 1);
          *&_Q6 = *(v88 + 2);
          v94.i64[0] = *(v88 + 3);
          v88 += 32;
          v100 = vmulq_n_f16(v95, v270);
          v101 = vmulq_n_f16(v97, v270);
          *(&v102 + 1) = v99;
          *(&_Q6 + 1) = v94.i64[0];
          v103 = vmulq_n_f16(v98, v270);
          _Q5 = _Q6;
          v104 = vqtbl2_s8(*(&_Q5 - 1), *&v318);
          v105 = vqtbl2_s8(*(&_Q5 - 1), *(&v318 + 8));
          v106 = vqtbl2_s8(*(&_Q5 - 1), *&v319);
          *v98.i8 = vzip1_s8(v104, 0);
          v98.u64[1] = vzip2_s8(v104, 0);
          v107 = vcvtq_f16_u16(v98);
          *v98.i8 = vzip1_s8(v105, 0);
          v98.u64[1] = vzip2_s8(v105, 0);
          *v108.i8 = vzip1_s8(v106, 0);
          v108.u64[1] = vzip2_s8(v106, 0);
          v109 = vmulq_n_f16(vcvtq_f16_u16(v98), v270);
          v110.i64[0] = 0x9000900090009000;
          v110.i64[1] = 0x9000900090009000;
          v111 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v100, 0), v110));
          v98.i16[0] = *(v64 + 2 * v111.u16[0]);
          v98.i16[1] = *(v64 + 2 * v111.u16[1]);
          v98.i16[2] = *(v64 + 2 * v111.u16[2]);
          v98.i16[3] = *(v64 + 2 * v111.u16[3]);
          v98.i16[4] = *(v64 + 2 * v111.u16[4]);
          v98.i16[5] = *(v64 + 2 * v111.u16[5]);
          v98.i16[6] = *(v64 + 2 * v111.u16[6]);
          v98.i16[7] = *(v64 + 2 * v111.u16[7]);
          v112 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v101, 0), v110));
          v101.i16[0] = *(v64 + 2 * v112.u16[0]);
          v101.i16[1] = *(v64 + 2 * v112.u16[1]);
          v101.i16[2] = *(v64 + 2 * v112.u16[2]);
          v101.i16[3] = *(v64 + 2 * v112.u16[3]);
          v101.i16[4] = *(v64 + 2 * v112.u16[4]);
          v101.i16[5] = *(v64 + 2 * v112.u16[5]);
          v101.i16[6] = *(v64 + 2 * v112.u16[6]);
          v101.i16[7] = *(v64 + 2 * v112.u16[7]);
          v113 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v103, 0), v110));
          v103.i16[0] = *(v64 + 2 * v113.u16[0]);
          v103.i16[1] = *(v64 + 2 * v113.u16[1]);
          v103.i16[2] = *(v64 + 2 * v113.u16[2]);
          v103.i16[3] = *(v64 + 2 * v113.u16[3]);
          v103.i16[4] = *(v64 + 2 * v113.u16[4]);
          v103.i16[5] = *(v64 + 2 * v113.u16[5]);
          v103.i16[6] = *(v64 + 2 * v113.u16[6]);
          v103.i16[7] = *(v64 + 2 * v113.u16[7]);
          v114 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v107, v270), 0), v110));
          v107.i16[0] = *(v64 + 2 * v114.u16[0]);
          v107.i16[1] = *(v64 + 2 * v114.u16[1]);
          v107.i16[2] = *(v64 + 2 * v114.u16[2]);
          v107.i16[3] = *(v64 + 2 * v114.u16[3]);
          v107.i16[4] = *(v64 + 2 * v114.u16[4]);
          v107.i16[5] = *(v64 + 2 * v114.u16[5]);
          v107.i16[6] = *(v64 + 2 * v114.u16[6]);
          v107.i16[7] = *(v64 + 2 * v114.u16[7]);
          v115 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v110));
          v109.i16[0] = *(v64 + 2 * v115.u16[0]);
          v109.i16[1] = *(v64 + 2 * v115.u16[1]);
          v109.i16[2] = *(v64 + 2 * v115.u16[2]);
          v109.i16[3] = *(v64 + 2 * v115.u16[3]);
          v109.i16[4] = *(v64 + 2 * v115.u16[4]);
          v109.i16[5] = *(v64 + 2 * v115.u16[5]);
          v109.i16[6] = *(v64 + 2 * v115.u16[6]);
          v109.i16[7] = *(v64 + 2 * v115.u16[7]);
          v116 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v108), v270), 0), v110));
          v108.i16[0] = *(v64 + 2 * v116.u16[0]);
          v108.i16[1] = *(v64 + 2 * v116.u16[1]);
          v108.i16[2] = *(v64 + 2 * v116.u16[2]);
          v108.i16[3] = *(v64 + 2 * v116.u16[3]);
          v108.i16[4] = *(v64 + 2 * v116.u16[4]);
          v108.i16[5] = *(v64 + 2 * v116.u16[5]);
          v108.i16[6] = *(v64 + 2 * v116.u16[6]);
          v108.i16[7] = *(v64 + 2 * v116.u16[7]);
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v286), v101, v285), v103, v284), vmaxq_f16(vmaxq_f16(v98, v101), v103), v283), 0), v110));
          v100.i16[0] = *(v61 + 2 * v117.u16[0]);
          v100.i16[1] = *(v61 + 2 * v117.u16[1]);
          v100.i16[2] = *(v61 + 2 * v117.u16[2]);
          v100.i16[3] = *(v61 + 2 * v117.u16[3]);
          v100.i16[4] = *(v61 + 2 * v117.u16[4]);
          v100.i16[5] = *(v61 + 2 * v117.u16[5]);
          v100.i16[6] = *(v61 + 2 * v117.u16[6]);
          v100.i16[7] = *(v61 + 2 * v117.u16[7]);
          v118 = vmulq_f16(v98, v100);
          v119 = vmulq_f16(v101, v100);
          v120 = vmulq_f16(v103, v100);
          v121 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v107, v286), v109, v285), v108, v284), vmaxq_f16(vmaxq_f16(v107, v109), v108), v283), 0), v110));
          v100.i16[0] = *(v61 + 2 * v121.u16[0]);
          v100.i16[1] = *(v61 + 2 * v121.u16[1]);
          v100.i16[2] = *(v61 + 2 * v121.u16[2]);
          v100.i16[3] = *(v61 + 2 * v121.u16[3]);
          v100.i16[4] = *(v61 + 2 * v121.u16[4]);
          v100.i16[5] = *(v61 + 2 * v121.u16[5]);
          v100.i16[6] = *(v61 + 2 * v121.u16[6]);
          v100.i16[7] = *(v61 + 2 * v121.u16[7]);
          v122 = vmulq_f16(v107, v100);
          v123 = vmulq_f16(v109, v100);
          v124 = vmulq_f16(v108, v100);
          v125 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v282), v119, v281), v120, v280);
          v126.i16[7] = v277.i16[7];
          v127 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v118, v279), v119, v278), v120, *v277.i16);
          v128 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v120, v271), v119, v315), v118, v316);
          v129 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v282), v123, v281), v124, v280);
          v130 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v122, v279), v123, v278), v124, *v277.i16);
          v131 = vminq_f16(vmaxq_f16(v125, 0), v110);
          v132 = vcvtq_u16_f16(v131);
          v131.i16[0] = *(v63 + 2 * v132.u16[0]);
          v131.i16[1] = *(v63 + 2 * v132.u16[1]);
          v131.i16[2] = *(v63 + 2 * v132.u16[2]);
          v131.i16[3] = *(v63 + 2 * v132.u16[3]);
          v131.i16[4] = *(v63 + 2 * v132.u16[4]);
          v131.i16[5] = *(v63 + 2 * v132.u16[5]);
          v131.i16[6] = *(v63 + 2 * v132.u16[6]);
          v133 = vmulq_n_f16(v124, v271);
          v134 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v127, 0), v110));
          v124.i16[0] = *(v63 + 2 * v134.u16[0]);
          v135 = (v63 + 2 * v132.u16[7]);
          v124.i16[1] = *(v63 + 2 * v134.u16[1]);
          v124.i16[2] = *(v63 + 2 * v134.u16[2]);
          v124.i16[3] = *(v63 + 2 * v134.u16[3]);
          v124.i16[4] = *(v63 + 2 * v134.u16[4]);
          v124.i16[5] = *(v63 + 2 * v134.u16[5]);
          v124.i16[6] = *(v63 + 2 * v134.u16[6]);
          v136 = vuzp1q_s16(v131, v124);
          v131.i16[7] = *v135;
          v124.i16[7] = *(v63 + 2 * v134.u16[7]);
          v137 = vminq_f16(vmaxq_f16(v128, 0), v110);
          v138 = vcvtq_u16_f16(v137);
          v137.i16[0] = *(v63 + 2 * v138.u16[0]);
          v137.i16[1] = *(v63 + 2 * v138.u16[1]);
          v137.i16[2] = *(v63 + 2 * v138.u16[2]);
          v137.i16[3] = *(v63 + 2 * v138.u16[3]);
          v137.i16[4] = *(v63 + 2 * v138.u16[4]);
          v137.i16[5] = *(v63 + 2 * v138.u16[5]);
          v137.i16[6] = *(v63 + 2 * v138.u16[6]);
          v139 = (v63 + 2 * v138.u16[7]);
          v140 = v137;
          v140.i16[7] = *v139;
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v110));
          v129.i16[0] = *(v63 + 2 * v141.u16[0]);
          v129.i16[1] = *(v63 + 2 * v141.u16[1]);
          v129.i16[2] = *(v63 + 2 * v141.u16[2]);
          v129.i16[3] = *(v63 + 2 * v141.u16[3]);
          v129.i16[4] = *(v63 + 2 * v141.u16[4]);
          v129.i16[5] = *(v63 + 2 * v141.u16[5]);
          v129.i16[6] = *(v63 + 2 * v141.u16[6]);
          LOWORD(v139) = v141.i16[7];
          v142 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v130, 0), v110));
          v126.i16[0] = *(v63 + 2 * v142.u16[0]);
          v126.i16[1] = *(v63 + 2 * v142.u16[1]);
          v126.i16[2] = *(v63 + 2 * v142.u16[2]);
          v126.i16[3] = *(v63 + 2 * v142.u16[3]);
          v126.i16[4] = *(v63 + 2 * v142.u16[4]);
          v126.i16[5] = *(v63 + 2 * v142.u16[5]);
          v126.i16[6] = *(v63 + 2 * v142.u16[6]);
          v143 = vuzp1q_s16(v129, v126);
          v129.i16[7] = *(v63 + 2 * v139);
          v126.i16[7] = *(v63 + 2 * v142.u16[7]);
          v144 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(v133, v123, v315), v122, v316), 0), v110));
          v142.i16[0] = *(v63 + 2 * v144.u16[0]);
          v142.i16[1] = *(v63 + 2 * v144.u16[1]);
          v142.i16[2] = *(v63 + 2 * v144.u16[2]);
          v142.i16[3] = *(v63 + 2 * v144.u16[3]);
          v142.i16[4] = *(v63 + 2 * v144.u16[4]);
          v142.i16[5] = *(v63 + 2 * v144.u16[5]);
          v142.i16[6] = *(v63 + 2 * v144.u16[6]);
          v145 = (v63 + 2 * v144.u16[7]);
          v51 = v142;
          v51.i16[7] = *v145;
          *v74++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v276, v131, v292), v124, v291), v140, v290), v276), v274)));
          *v87++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v276, v129, v292), v126, v291), v51, v290), v276), v274)));
          v146 = vaddq_f16(vaddq_f16(vaddq_f16(v136, vuzp2q_s16(v131, v124)), v143), vuzp2q_s16(v129, v126));
          v147 = vaddq_f16(vaddq_f16(vtrn1q_s16(v137, v137), vtrn2q_s16(v140, v140)), vtrn1q_s16(v142, v142));
          _S18 = *v288.i32;
          v148 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v275, v289, vzip1q_s16(v146, v146)), v288, vzip2q_s16(v146, v146)), v287, vaddq_f16(v147, vtrn2q_s16(v51, v51)));
          _S17 = *v272.i32;
          *&v73[v85] = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(v148, v273), v272)));
          if (v72)
          {
            *&v79 = vqtbl2_s8(*(&a4 - 1), v314);
            *v72 = v79;
            v72 += 8;
            *v86++ = vqtbl2_s8(*(&_Q5 - 1), v314);
          }

          v85 += 8;
        }

        while (v85 < v266 - 7);
        v149 = &v73[v85];
        v150 = v266 & 0xFFFFFFF8;
        _S21 = v263;
      }

      if (v150 < v62)
      {
        v151 = 0;
        v152 = v75 + 4;
        v153 = v88 + 4;
        do
        {
          v154 = v151 + v320;
          LOBYTE(v79) = v152[v154 - 4];
          v155 = v151 + BYTE1(v320);
          a4.i8[0] = v152[v155 - 4];
          v156 = v151 + BYTE2(v320);
          a5.i8[0] = v152[v156 - 4];
          _H0 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * v79, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * a5.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          v163 = (((_S22 * _S1) + (_S21 * _S0)) + (_S23 * _S2)) + (_S28 * fmaxf(_S0, fmaxf(_S1, _S2)));
          v164 = 8191.0;
          if (v163 <= 8191.0)
          {
            v164 = v163;
            if (v163 < 0.0)
            {
              v164 = 0.0;
            }
          }

          LOBYTE(v163) = v152[v154];
          LOBYTE(_Q5) = v152[v155];
          LOBYTE(_Q6) = v152[v156];
          _H4 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(v163), 0.0), 8191.0)));
          __asm { FCVT            S4, H4 }

          _H5 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * _Q5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * _Q6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          v171 = (((_S22 * _S5) + (_S21 * _S4)) + (_S23 * _S6)) + (_S28 * fmaxf(_S4, fmaxf(_S5, _S6)));
          v172 = 8191.0;
          if (v171 <= 8191.0)
          {
            v172 = v171;
            if (v171 < 0.0)
            {
              v172 = 0.0;
            }
          }

          v173 = &v153[v154];
          LOBYTE(v171) = *(v173 - 4);
          v174 = &v153[v155];
          LOBYTE(_S17) = *(v174 - 4);
          LOBYTE(_S18) = v153[v156 - 4];
          _H16 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(v171), 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          _H17 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(_S17), 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          _H18 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(_S18), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v181 = fmaxf(_S16, fmaxf(_S17, _S18));
          v182 = (((_S22 * _S17) + (_S21 * _S16)) + (_S23 * _S18)) + (_S28 * v181);
          v183 = 8191.0;
          if (v182 <= 8191.0)
          {
            v183 = (((_S22 * _S17) + (_S21 * _S16)) + (_S23 * _S18)) + (_S28 * v181);
            if (v182 < 0.0)
            {
              v183 = 0.0;
            }
          }

          LOBYTE(v182) = *v173;
          LOBYTE(v181) = *v174;
          v51.i8[0] = v153[v156];
          _H19 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(v182), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * LODWORD(v181), 0.0), 8191.0)));
          __asm { FCVT            S9, H20 }

          _H20 = *(v64 + 2 * llroundf(fminf(fmaxf(_S25 * v51.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S13, H20 }

          _H3 = *(v61 + 2 * llroundf(v164));
          __asm { FCVT            S3, H3 }

          v192 = _S0 * _S3;
          v193 = _S1 * _S3;
          v194 = _S2 * _S3;
          _H0 = *(v61 + 2 * llroundf(v172));
          __asm { FCVT            S0, H0 }

          v197 = _S4 * _S0;
          v198 = _S5 * _S0;
          v199 = _S6 * _S0;
          LOWORD(_S0) = *(v61 + 2 * llroundf(v183));
          __asm { FCVT            S1, H0 }

          v201 = _S16 * _S1;
          v202 = _S17 * _S1;
          v203 = _S18 * _S1;
          v204 = (((_S22 * _S9) + (_S21 * _S19)) + (_S23 * _S13)) + (_S28 * fmaxf(_S19, fmaxf(_S9, _S13)));
          v205 = 8191.0;
          if (v204 <= 8191.0)
          {
            v205 = v204;
            if (v204 < 0.0)
            {
              v205 = 0.0;
            }
          }

          v206 = v151 + HIBYTE(v320);
          v207 = v152[v206 - 4];
          v208 = v152[v206];
          v209 = &v153[v206];
          v210 = *(v209 - 4);
          v211 = *v209;
          _H6 = *(v61 + 2 * llroundf(v205));
          __asm { FCVT            S6, H6 }

          v214 = _S19 * _S6;
          v215 = _S9 * _S6;
          _S6 = _S13 * _S6;
          v217 = ((v308 * v193) + (v192 * v309)) + (v194 * v307);
          _S18 = ((v305 * v193) + (v192 * v306)) + (v194 * v304);
          v219 = ((v302 * v193) + (v192 * v303)) + (v194 * v301);
          _S20 = ((v308 * v198) + (v197 * v309)) + (v199 * v307);
          v221 = ((v305 * v198) + (v197 * v306)) + (v199 * v304);
          _S5 = ((v302 * v198) + (v197 * v303)) + (v199 * v301);
          v223 = ((v308 * v202) + (v201 * v309)) + (v203 * v307);
          v224 = ((v305 * v202) + (v201 * v306)) + (v203 * v304);
          v225 = ((v302 * v202) + (v201 * v303)) + (v203 * v301);
          v226 = ((v308 * v215) + (v214 * v309)) + (_S6 * v307);
          v227 = ((v305 * v215) + (v214 * v306)) + (_S6 * v304);
          LODWORD(v209) = llroundf(fminf(fmaxf(v217, 0.0), 8191.0));
          _S17 = ((v302 * v215) + (v214 * v303)) + (_S6 * v301);
          _H0 = *(v63 + 2 * v209);
          __asm { FCVT            S0, H0 }

          _H1 = *(v63 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v63 + 2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v63 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          LOWORD(_S6) = *(v63 + 2 * llroundf(fminf(fmaxf(v221, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H3
            FCVT            S3, H6
          }

          LOWORD(_S5) = *(v63 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S6) = *(v63 + 2 * llroundf(fminf(fmaxf(v223, 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          LOWORD(_S6) = *(v63 + 2 * llroundf(fminf(fmaxf(v224, 0.0), 8191.0)));
          __asm { FCVT            S16, H6 }

          LOWORD(_S6) = *(v63 + 2 * llroundf(fminf(fmaxf(v225, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S18) = *(v63 + 2 * llroundf(fminf(fmaxf(v226, 0.0), 8191.0)));
          LOWORD(_S20) = *(v63 + 2 * llroundf(fminf(fmaxf(v227, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H18
            FCVT            S18, H20
          }

          LOWORD(_S17) = *(v63 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S17, H17 }

          if (v72)
          {
            v242 = v208;
          }

          else
          {
            v210 = 0;
            v207 = 0;
            v242 = 0;
          }

          if (v72)
          {
            v243 = v211;
          }

          else
          {
            v243 = 0;
          }

          v244 = (((v311 * _S1) + (v312 * _S0)) + (v310 * _S2)) + v299;
          if (v244 < v299)
          {
            v245 = v299;
          }

          else
          {
            v245 = (((v311 * _S1) + (v312 * _S0)) + (v310 * _S2)) + v299;
          }

          v246 = v244 <= v297;
          v247 = (((v311 * _S3) + (v312 * _S4)) + (v310 * _S5)) + v299;
          if (!v246)
          {
            v245 = v297;
          }

          v248 = llroundf(v245);
          if (v247 < v299)
          {
            v249 = v299;
          }

          else
          {
            v249 = (((v311 * _S3) + (v312 * _S4)) + (v310 * _S5)) + v299;
          }

          v246 = v247 <= v297;
          v250 = (((v311 * _S16) + (v312 * _S7)) + (v310 * *&_Q6)) + v299;
          if (!v246)
          {
            v249 = v297;
          }

          v251 = llroundf(v249);
          if (v250 < v299)
          {
            v252 = v299;
          }

          else
          {
            v252 = (((v311 * _S16) + (v312 * _S7)) + (v310 * *&_Q6)) + v299;
          }

          v246 = v250 <= v297;
          v253 = (((v311 * _S18) + (v312 * _S19)) + (v310 * _S17)) + v299;
          if (!v246)
          {
            v252 = v297;
          }

          v254 = llroundf(v252);
          if (v253 < v299)
          {
            v255 = v299;
          }

          else
          {
            v255 = (((v311 * _S18) + (v312 * _S19)) + (v310 * _S17)) + v299;
          }

          if (v253 <= v297)
          {
            v256 = v255;
          }

          else
          {
            v256 = v297;
          }

          v257 = ((_S0 + _S4) + _S7) + _S19;
          v258 = ((_S1 + _S3) + _S16) + _S18;
          v74->i8[0] = v248;
          v74->i8[1] = v251;
          v87->i8[0] = v254;
          v87->i8[1] = llroundf(v256);
          *v51.i32 = v298;
          a5.f32[0] = ((_S2 + _S5) + *&_Q6) + _S17;
          v259 = ((v298 + (v257 * v295)) + (v258 * v294)) + (a5.f32[0] * v293);
          v260 = v296;
          if (v259 <= v296)
          {
            v260 = ((v298 + (v257 * v295)) + (v258 * v294)) + (a5.f32[0] * v293);
            if (v259 < v313)
            {
              v260 = v313;
            }
          }

          *&_Q5 = v269;
          *&v79 = ((v298 + (v257 * v269)) + (v258 * v268)) + (a5.f32[0] * v267);
          *v149 = llroundf(v260);
          a4.f32[0] = v296;
          if (*&v79 <= v296)
          {
            a4.i32[0] = v79;
            if (*&v79 < v313)
            {
              a4.f32[0] = v313;
            }
          }

          v149[1] = llroundf(a4.f32[0]);
          if (v72)
          {
            *v72 = v207;
            *(v72 + 1) = v242;
            v72 += 2;
            v86->i8[0] = v210;
            v86->i8[1] = v243;
            v86 = (v86 + 2);
          }

          _S25 = v300;
          v150 += 2;
          v151 += 8;
          v74 = (v74 + 2);
          v87 = (v87 + 2);
          v149 += 2;
        }

        while (v150 < v62);
      }

      result = v80;
      v75 = &v81[v80];
      v48 = v82;
      v74 = &v83[v82];
      v76 = v265;
      v73 += v22;
      v72 = v84 + v265;
      v49 += 2;
    }

    while (v49 < v264);
  }

  *&a1[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Tone_Mat_TRC_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6)
{
  v6 = 2 * *result;
  v174 = result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v179 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v179 >= 1)
  {
    v9 = 0;
    v10 = *(result + 19);
    v11 = *(result + 24) & 0xFFFFFFFE;
    v12 = *(result + 7);
    v13 = **(result + 8);
    v14 = *(result + 16);
    v15 = v174[17];
    v16 = *v15;
    v17 = v15[2];
    v18 = 8191.0 / *(v10 + 128);
    LOWORD(a5) = *(v10 + 144);
    v19 = LODWORD(a5);
    LOWORD(a6) = *(v10 + 146);
    v20 = LODWORD(a6);
    LOWORD(a6) = *(v10 + 148);
    v21 = LODWORD(a6);
    LOWORD(a6) = *(v10 + 150);
    *&v22 = LODWORD(a6);
    v203 = *&v22;
    LOWORD(v22) = *(v10 + 152);
    v23 = v22;
    v199 = *(v10 + 40);
    v200 = *(v10 + 36);
    v198 = *(v10 + 44);
    v196 = *(v10 + 52) * 0.25;
    v197 = *(v10 + 48) * 0.25;
    v194 = *(v10 + 60) * 0.25;
    v195 = *(v10 + 56) * 0.25;
    v192 = *(v10 + 72);
    v193 = *(v10 + 64) * 0.25;
    v190 = *(v10 + 76);
    v191 = *(v10 + 68) * 0.25;
    v24 = *(v10 + 88);
    v188 = *(v10 + 84);
    v189 = *(v10 + 80);
    v186 = *(v10 + 92);
    v187 = *&v24;
    v26 = *(v10 + 100);
    v25 = *(v10 + 104);
    v184 = v26;
    v185 = *(v10 + 96);
    v183 = v25;
    v27 = v10 + 164;
    v28 = v10 + 16548;
    v29 = v10 + 32932;
    v30 = *(v10 + 108);
    v31 = *(v10 + 112);
    v32 = *(v10 + 116);
    v33 = *(v10 + 120);
    v34 = v174[14];
    v35 = v174[15] + 2 * v8;
    v36 = *(v174 + 44) + 2 * (*(v174 + 28) * a2 / v6);
    v37 = v14[2];
    if (v37)
    {
      v38 = (v37 + v17 * v35 + v34);
    }

    else
    {
      v38 = 0;
    }

    v39 = *v14;
    result = v14[1];
    v40 = (v39 + v16 * v35 + v34);
    v41 = *v12 + v36 * v13 + 4 * *(v174 + 36);
    v42 = *(v10 + 157);
    v43 = *(v10 + 156);
    v177 = v15[1];
    v178 = *v15;
    v44 = *(v10 + 155);
    v45 = *(v10 + 154);
    v46 = &result[v177 * (v35 / 2) + v34];
    v176 = v15[2];
    v201 = v23;
    v202 = v20;
    v181 = v30;
    v182 = v31;
    v180 = v32;
    do
    {
      v47 = v13;
      v48 = v41 + v13;
      v49 = &v40[v16];
      v50 = &v38[v17];
      if (v11 >= 1)
      {
        v51 = 0;
        v52 = v50;
        v53 = v49;
        v54 = v41 + v13;
        do
        {
          LOBYTE(v25) = *(v41 + v45);
          LOBYTE(v26) = *(v41 + v44);
          LOBYTE(v24) = *(v41 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v25), 0.0), 8191.0)));
          v56 = v18 * v24;
          __asm { FCVT            S14, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v26), 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v56, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          v66 = fmaxf(_S14, fmaxf(_S15, _S18));
          v67 = (((v31 * _S15) + (v30 * _S14)) + (v32 * _S18)) + (v33 * v66);
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = (((v31 * _S15) + (v30 * _S14)) + (v32 * _S18)) + (v33 * v66);
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          LOBYTE(v67) = *(v41 + 4 + v45);
          LOBYTE(v66) = *(v41 + 4 + v44);
          LOBYTE(v56) = *(v41 + 4 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v67), 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v66), 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v56), 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          v75 = fmaxf(_S20, fmaxf(_S21, _S22));
          v76 = (((v31 * _S21) + (v30 * _S20)) + (v32 * _S22)) + (v33 * v75);
          v77 = 8191.0;
          if (v76 <= 8191.0)
          {
            v77 = (((v31 * _S21) + (v30 * _S20)) + (v32 * _S22)) + (v33 * v75);
            if (v76 < 0.0)
            {
              v77 = 0.0;
            }
          }

          LOBYTE(v76) = *(v54 + v45);
          LOBYTE(v75) = *(v54 + v44);
          *&v78 = LODWORD(v75);
          _S6 = v18 * *&v78;
          LOBYTE(v78) = *(v54 + v43);
          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v76), 0.0), 8191.0)));
          v81 = v18 * v78;
          __asm { FCVT            S5, H3 }

          _H3 = *(v27 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S6) = *(v27 + 2 * llroundf(fminf(fmaxf(v81, 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          v86 = fmaxf(_S5, fmaxf(_S3, _S7));
          v87 = (((v31 * _S3) + (v30 * _S5)) + (v32 * _S7)) + (v33 * v86);
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = (((v31 * _S3) + (v30 * _S5)) + (v32 * _S7)) + (v33 * v86);
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          LOBYTE(v87) = *(v54 + 4 + v45);
          LOBYTE(v86) = *(v54 + 4 + v44);
          *&v89 = LODWORD(v86);
          v90 = v18 * *&v89;
          LOBYTE(v89) = *(v54 + 4 + v43);
          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v18 * LODWORD(v87), 0.0), 8191.0)));
          v92 = v18 * v89;
          __asm { FCVT            S16, H6 }

          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm { FCVT            S23, H6 }

          _H6 = *(v27 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S25, H6 }

          _H6 = *(v28 + 2 * llroundf(v68));
          __asm { FCVT            S19, H6 }

          v100 = _S14 * _S19;
          v101 = _S15 * _S19;
          v102 = _S18 * _S19;
          _H18 = *(v28 + 2 * llroundf(v77));
          __asm { FCVT            S18, H18 }

          v105 = _S20 * _S18;
          v106 = _S21 * _S18;
          v107 = _S22 * _S18;
          _H17 = *(v28 + 2 * llroundf(v88));
          __asm { FCVT            S17, H17 }

          v110 = _S5 * _S17;
          v111 = _S3 * _S17;
          v112 = _S7 * _S17;
          v113 = (((v31 * _S23) + (v30 * _S16)) + (v32 * _S25)) + (v33 * fmaxf(_S16, fmaxf(_S23, _S25)));
          v114 = 8191.0;
          if (v113 <= 8191.0)
          {
            v114 = v113;
            if (v113 < 0.0)
            {
              v114 = 0.0;
            }
          }

          v115 = *(v41 + 4 + v42);
          _H7 = *(v28 + 2 * llroundf(v114));
          __asm { FCVT            S7, H7 }

          v118 = _S16 * _S7;
          v119 = _S23 * _S7;
          v120 = _S25 * _S7;
          v121 = ((v190 * v101) + (v100 * v192)) + (v102 * v189);
          v122 = ((v187 * v101) + (v100 * v188)) + (v102 * v186);
          _S6 = ((v184 * v101) + (v100 * v185)) + (v102 * v183);
          v124 = ((v190 * v106) + (v105 * v192)) + (v107 * v189);
          v125 = ((v187 * v106) + (v105 * v188)) + (v107 * v186);
          v126 = ((v184 * v106) + (v105 * v185)) + (v107 * v183);
          v127 = ((v190 * v111) + (v110 * v192)) + (v112 * v189);
          v128 = ((v187 * v111) + (v110 * v188)) + (v112 * v186);
          _S3 = ((v184 * v111) + (v110 * v185)) + (v112 * v183);
          v130 = ((v190 * v119) + (v118 * v192)) + (v120 * v189);
          v131 = ((v187 * v119) + (v118 * v188)) + (v120 * v186);
          v132 = ((v184 * v119) + (v118 * v185)) + (v120 * v183);
          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v121, 0.0), 8191.0)));
          __asm { FCVT            S18, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v122, 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v124, 0.0), 8191.0)));
          LOWORD(_S6) = *(v29 + 2 * llroundf(fminf(fmaxf(v125, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H5
            FCVT            S21, H6
          }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v126, 0.0), 8191.0)));
          __asm { FCVT            S24, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v127, 0.0), 8191.0)));
          __asm { FCVT            S15, H5 }

          _H5 = *(v29 + 2 * llroundf(fminf(fmaxf(v128, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S3) = *(v29 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S14, H3 }

          LOWORD(_S3) = *(v29 + 2 * llroundf(fminf(fmaxf(v130, 0.0), 8191.0)));
          LOWORD(_S6) = *(v29 + 2 * llroundf(fminf(fmaxf(v131, 0.0), 8191.0)));
          __asm
          {
            FCVT            S16, H3
            FCVT            S7, H6
          }

          LOWORD(_S3) = *(v29 + 2 * llroundf(fminf(fmaxf(v132, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          if (v38)
          {
            v152 = *(v54 + v42);
          }

          else
          {
            v152 = 0;
          }

          if (v38)
          {
            result = *(v41 + v42);
          }

          else
          {
            result = 0;
          }

          if (v38)
          {
            v153 = *(v54 + 4 + v42);
          }

          else
          {
            v115 = 0;
            v153 = 0;
          }

          v154 = (((v199 * _S19) + (v200 * _S18)) + (v198 * _S20)) + v19;
          if (v154 < v19)
          {
            v155 = v19;
          }

          else
          {
            v155 = (((v199 * _S19) + (v200 * _S18)) + (v198 * _S20)) + v19;
          }

          v156 = v154 <= v21;
          v157 = (((v199 * _S21) + (v200 * _S22)) + (v198 * _S24)) + v19;
          if (!v156)
          {
            v155 = v21;
          }

          v158 = llroundf(v155);
          if (v157 < v19)
          {
            v159 = v19;
          }

          else
          {
            v159 = (((v199 * _S21) + (v200 * _S22)) + (v198 * _S24)) + v19;
          }

          v156 = v157 <= v21;
          v160 = (((v199 * _S5) + (v200 * _S15)) + (v198 * _S14)) + v19;
          if (!v156)
          {
            v159 = v21;
          }

          v161 = llroundf(v159);
          if (v160 < v19)
          {
            v162 = v19;
          }

          else
          {
            v162 = (((v199 * _S5) + (v200 * _S15)) + (v198 * _S14)) + v19;
          }

          v156 = v160 <= v21;
          v163 = (((v199 * _S7) + (v200 * _S16)) + (v198 * _S3)) + v19;
          if (!v156)
          {
            v162 = v21;
          }

          v164 = llroundf(v162);
          if (v163 < v19)
          {
            v165 = v19;
          }

          else
          {
            v165 = (((v199 * _S7) + (v200 * _S16)) + (v198 * _S3)) + v19;
          }

          if (v163 <= v21)
          {
            v166 = v165;
          }

          else
          {
            v166 = v21;
          }

          v167 = llroundf(v166);
          v168 = ((_S18 + _S22) + _S15) + _S16;
          v169 = ((_S19 + _S21) + _S5) + _S7;
          *v40 = v158;
          v40[1] = v161;
          *v53 = v164;
          v53[1] = v167;
          v170 = ((_S20 + _S24) + _S14) + _S3;
          v171 = ((v202 + (v168 * v197)) + (v169 * v196)) + (v170 * v195);
          v172 = v201;
          if (v171 <= v201)
          {
            v172 = ((v202 + (v168 * v197)) + (v169 * v196)) + (v170 * v195);
            if (v171 < v203)
            {
              v172 = v203;
            }
          }

          v173 = (v202 + (v168 * v194)) + (v169 * v193);
          *&v24 = v191;
          v25 = v173 + (v170 * v191);
          v46[v51] = llroundf(v172);
          v26 = v201;
          if (v25 <= v201)
          {
            v26 = v25;
            if (v25 < v203)
            {
              v26 = v203;
            }
          }

          v46[v51 + 1] = llroundf(v26);
          v30 = v181;
          v31 = v182;
          v32 = v180;
          if (v38)
          {
            *v38 = result;
            v38[1] = v115;
            v38 += 2;
            *v52 = v152;
            v52[1] = v153;
            v52 += 2;
          }

          v41 += 8;
          v54 += 8;
          v40 += 2;
          v53 += 2;
          v51 += 2;
        }

        while (v51 < v11);
      }

      v41 = v48 + v47;
      v13 = v47;
      v40 = &v49[v178];
      v16 = v178;
      v46 += v177;
      v38 = &v50[v176];
      v17 = v176;
      v9 += 2;
    }

    while (v9 < v179);
  }

  *(v174 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_420vf_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, double a3, float16x8_t a4, float32x4_t a5, float32x4_t a6)
{
  v10 = 0;
  v252 = *(result + 36);
  v209 = *(result + 24);
  v11 = 2 * *result;
  v12 = *(result + 44) + 2 * (*(result + 28) * a2 / v11);
  v14 = *(result + 13);
  v13 = *(result + 14);
  v205 = result;
  v15 = v14 * a2;
  v16 = *(result + 19);
  v17 = *(result + 16);
  v18 = *(result + 17);
  v19 = **(result + 8);
  v20 = **(result + 7);
  v21 = v18[1];
  v210 = *v18;
  v23 = *v17;
  v22 = v17[1];
  v24 = v15 / v11;
  v25 = *(result + 15) + 2 * (v15 / v11);
  v26 = v18[2];
  v27 = v17[2];
  v28 = v14 + v15;
  v29 = *(v16 + 128);
  v262 = *(v16 + 154);
  v30 = *(v16 + 144);
  v31 = *(v16 + 146);
  v32 = *(v16 + 148);
  v33 = *(v16 + 150);
  v34 = *(v16 + 152);
  v250 = *(v16 + 36);
  v249 = *(v16 + 40);
  a6.i32[0] = *(v16 + 48);
  v248 = *(v16 + 44);
  v35 = v28 / v11 - v24;
  v36 = v19 * v12;
  a4.i32[0] = *(v16 + 52);
  v37.i32[0] = *(v16 + 56);
  v39 = *(v16 + 60);
  v38 = *(v16 + 64);
  a5.i32[0] = *(v16 + 68);
  v247 = *(v16 + 72);
  v208 = v21;
  v246 = *(v16 + 76);
  v245 = *(v16 + 80);
  v244 = *(v16 + 84);
  v243 = *(v16 + 88);
  v242 = *(v16 + 92);
  v241 = *(v16 + 96);
  _Q7.i32[0] = *(v16 + 100);
  v240 = *_Q7.i32;
  v239 = *(v16 + 104);
  v260 = 0u;
  v261 = 0u;
  do
  {
    v41 = 0;
    v42 = *(&v262 + v10);
    v43 = *(&v260 + v10);
    do
    {
      v259 = v43;
      *(&v259 | v41 & 7) = v42 + 4 * v41;
      v43 = v259;
      ++v41;
    }

    while (v41 != 8);
    *(&v260 + v10++) = v259;
  }

  while (v10 != 4);
  v207 = 2 * v35;
  v44 = v210;
  if (2 * v35 >= 1)
  {
    v45 = 0;
    _S29 = 8191.0 / v29;
    v47 = v30;
    v258 = v31;
    v238 = v32;
    v251 = v33;
    _S6 = v34;
    v257 = v34;
    a6.i32[1] = v39;
    __asm { FMOV            V5.2S, #0.25 }

    *a6.f32 = vmul_f32(*a6.f32, *_Q5.i8);
    a4.i32[1] = v38;
    v37.i32[1] = a5.i32[0];
    *a4.i8 = vmul_f32(*a4.i8, *_Q5.i8);
    *a5.f32 = vmul_f32(v37, *_Q5.i8);
    _S0 = v250;
    __asm { FCVT            H0, S0 }

    v234 = *&_S0;
    _S0 = v249;
    __asm { FCVT            H0, S0 }

    v233 = *&_S0;
    v56 = v16 + 164;
    v57 = v16 + 16548;
    v58 = v209 & 0xFFFFFFFE;
    v231 = vdupq_lane_s32(vcvt_f16_f32(a4), 0);
    v232 = vdupq_lane_s32(vcvt_f16_f32(a6), 0);
    _D0 = vcvt_f16_f32(a5);
    v60 = vdupq_lane_s32(_D0, 0);
    *_D0.i32 = v248;
    __asm { FCVT            H0, S0 }

    v229 = *_D0.i16;
    v230 = v60;
    *_D0.i32 = v247;
    __asm { FCVT            H0, S0 }

    v228 = *_D0.i16;
    *_D0.i32 = v246;
    __asm { FCVT            H0, S0 }

    v227 = *_D0.i16;
    *_D0.i32 = v245;
    __asm { FCVT            H0, S0 }

    v226 = *_D0.i16;
    *_D0.i32 = v244;
    __asm { FCVT            H0, S0 }

    v225 = *_D0.i16;
    *_D0.i32 = v243;
    __asm { FCVT            H0, S0 }

    v224 = *_D0.i16;
    *_D0.i32 = v242;
    __asm { FCVT            H0, S0 }

    v223 = *_D0.i16;
    *_D0.i32 = v241;
    __asm { FCVT            H0, S0 }

    v222 = *_D0.i16;
    _D0.i32[0] = _Q7.i32[0];
    __asm { FCVT            H0, S0 }

    v221 = _D0.i32[0];
    *_D0.i16 = v30;
    v61 = vdupq_lane_s16(_D0, 0);
    *_D0.i16 = v31;
    v62 = vdupq_lane_s16(_D0, 0);
    v219 = v62;
    v220 = v61;
    *v62.i16 = v32;
    v63 = vdupq_lane_s16(*v62.i8, 0);
    *v62.i16 = v33;
    _Q0 = vdupq_lane_s16(*v62.i8, 0);
    v217 = _Q0;
    v218 = v63;
    *_Q0.i16 = v34;
    v65 = vdupq_lane_s16(*_Q0.i8, 0);
    *_Q0.i32 = v239;
    __asm { FCVT            H0, S0 }

    v215 = _Q0.i32[0];
    v216 = v65;
    v66 = v22 + v21 * (v25 / 2);
    if (v27)
    {
      v67 = v27 + v26 * v25 + v13;
    }

    else
    {
      v67 = 0;
    }

    v68 = (v66 + v13);
    v69 = (v23 + v210 * v25 + v13);
    v70 = (v20 + v36 + 4 * v252);
    __asm { FCVT            H0, S29 }

    v214 = _H0;
    v236 = *a4.i32;
    v72.i32[0] = a6.i32[1];
    v237 = a6.f32[0];
    v212 = *&a4.i32[1];
    v213 = a6.f32[1];
    v73.i32[0] = a5.i32[1];
    v211 = a5.f32[1];
    v235 = a5.f32[0];
    do
    {
      v74 = v70 + v19;
      v75 = v69 + v44;
      v76 = v67 + v26;
      if (v209 < 8)
      {
        v133 = 0;
        v81 = (v69 + v44);
        v132 = v68;
        v80 = v67 + v26;
        v79 = (v70 + v19);
      }

      else
      {
        v77 = _S29;
        v78 = 0;
        v79 = (v70 + v19);
        v80 = v67 + v26;
        v81 = (v69 + v44);
        do
        {
          v82 = *(&v261 + 8);
          v263.val[0].i64[0] = *v70;
          v83 = v70[1];
          v84.i64[0] = v70[2];
          v85 = v70[3];
          v70 += 4;
          v263.val[0].i64[1] = v83;
          v84.i64[1] = v85;
          v263.val[1] = v84;
          v86 = vqtbl2_s8(v263, *&v260);
          v87 = vqtbl2_s8(v263, *(&v260 + 8));
          v253 = v263.val[0];
          v254 = v84;
          v255 = v84.i32[0];
          v256 = v85;
          *a5.f32 = vqtbl2_s8(v263, *&v261);
          *v88.i8 = vzip1_s8(v86, 0);
          v88.u64[1] = vzip2_s8(v86, 0);
          v73 = vcvtq_f16_u16(v88);
          *v88.i8 = vzip1_s8(v87, 0);
          v88.u64[1] = vzip2_s8(v87, 0);
          a4 = vcvtq_f16_u16(v88);
          *a6.f32 = vzip1_s8(*a5.f32, 0);
          *&a6.u32[2] = vzip2_s8(*a5.f32, 0);
          *&v92 = *v79;
          v89 = v79[1];
          *&v90 = v79[2];
          v91 = v79[3];
          v79 += 4;
          *(&v92 + 1) = v89;
          *(&v90 + 1) = v91;
          v93 = v90;
          v94 = vqtbl2_s8(*&v92, *&v260);
          v95 = vqtbl2_s8(*&v92, *(&v260 + 8));
          v96 = vqtbl2_s8(*&v92, *&v261);
          *v263.val[0].i8 = vzip1_s8(v94, 0);
          v263.val[0].u64[1] = vzip2_s8(v94, 0);
          *v97.i8 = vzip1_s8(v95, 0);
          v97.u64[1] = vzip2_s8(v95, 0);
          v98 = vcvtq_f16_u16(v97);
          *v97.i8 = vzip1_s8(v96, 0);
          v97.u64[1] = vzip2_s8(v96, 0);
          v99 = vmulq_n_f16(vcvtq_f16_u16(v263.val[0]), v214);
          v263.val[0] = vmulq_n_f16(v98, v214);
          v100.i64[0] = 0x9000900090009000;
          v100.i64[1] = 0x9000900090009000;
          v101 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(v73, v214), 0), v100));
          v98.i16[0] = *(v56 + 2 * v101.u16[0]);
          v98.i16[1] = *(v56 + 2 * v101.u16[1]);
          v98.i16[2] = *(v56 + 2 * v101.u16[2]);
          v98.i16[3] = *(v56 + 2 * v101.u16[3]);
          v98.i16[4] = *(v56 + 2 * v101.u16[4]);
          v98.i16[5] = *(v56 + 2 * v101.u16[5]);
          v98.i16[6] = *(v56 + 2 * v101.u16[6]);
          v98.i16[7] = *(v56 + 2 * v101.u16[7]);
          v102 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(a4, v214), 0), v100));
          v103.i16[0] = *(v56 + 2 * v102.u16[0]);
          v103.i16[1] = *(v56 + 2 * v102.u16[1]);
          v103.i16[2] = *(v56 + 2 * v102.u16[2]);
          v103.i16[3] = *(v56 + 2 * v102.u16[3]);
          v103.i16[4] = *(v56 + 2 * v102.u16[4]);
          v103.i16[5] = *(v56 + 2 * v102.u16[5]);
          v103.i16[6] = *(v56 + 2 * v102.u16[6]);
          v103.i16[7] = *(v56 + 2 * v102.u16[7]);
          v104 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(a6), v214), 0), v100));
          v84.i16[0] = *(v56 + 2 * v104.u16[0]);
          v84.i16[1] = *(v56 + 2 * v104.u16[1]);
          v84.i16[2] = *(v56 + 2 * v104.u16[2]);
          v84.i16[3] = *(v56 + 2 * v104.u16[3]);
          v84.i16[4] = *(v56 + 2 * v104.u16[4]);
          v84.i16[5] = *(v56 + 2 * v104.u16[5]);
          v84.i16[6] = *(v56 + 2 * v104.u16[6]);
          v84.i16[7] = *(v56 + 2 * v104.u16[7]);
          v105 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v99, 0), v100));
          v106.i16[0] = *(v56 + 2 * v105.u16[0]);
          v106.i16[1] = *(v56 + 2 * v105.u16[1]);
          v106.i16[2] = *(v56 + 2 * v105.u16[2]);
          v106.i16[3] = *(v56 + 2 * v105.u16[3]);
          v106.i16[4] = *(v56 + 2 * v105.u16[4]);
          v106.i16[5] = *(v56 + 2 * v105.u16[5]);
          v106.i16[6] = *(v56 + 2 * v105.u16[6]);
          v106.i16[7] = *(v56 + 2 * v105.u16[7]);
          v107 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v263.val[0], 0), v100));
          v263.val[0].i16[0] = *(v56 + 2 * v107.u16[0]);
          v263.val[0].i16[1] = *(v56 + 2 * v107.u16[1]);
          v263.val[0].i16[2] = *(v56 + 2 * v107.u16[2]);
          v263.val[0].i16[3] = *(v56 + 2 * v107.u16[3]);
          v263.val[0].i16[4] = *(v56 + 2 * v107.u16[4]);
          v263.val[0].i16[5] = *(v56 + 2 * v107.u16[5]);
          v263.val[0].i16[6] = *(v56 + 2 * v107.u16[6]);
          v263.val[0].i16[7] = *(v56 + 2 * v107.u16[7]);
          v108 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmulq_n_f16(vcvtq_f16_u16(v97), v214), 0), v100));
          v107.i16[0] = *(v56 + 2 * v108.u16[0]);
          v107.i16[1] = *(v56 + 2 * v108.u16[1]);
          v107.i16[2] = *(v56 + 2 * v108.u16[2]);
          v107.i16[3] = *(v56 + 2 * v108.u16[3]);
          v107.i16[4] = *(v56 + 2 * v108.u16[4]);
          v107.i16[5] = *(v56 + 2 * v108.u16[5]);
          v107.i16[6] = *(v56 + 2 * v108.u16[6]);
          v107.i16[7] = *(v56 + 2 * v108.u16[7]);
          v109 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v225), v103, v224), v84, v223);
          a6.i32[0] = v215;
          a5.i32[0] = v221;
          v110 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v84, *&v215), v103, *&v221), v98, v222);
          v111 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v228), v263.val[0], v227), v107, v226);
          v112 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v106, v225), v263.val[0], v224), v107, v223);
          v113 = vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v98, v228), v103, v227), v84, v226), 0), v100);
          v114 = vcvtq_u16_f16(v113);
          v113.i16[0] = *(v57 + 2 * v114.u16[0]);
          v113.i16[1] = *(v57 + 2 * v114.u16[1]);
          v113.i16[2] = *(v57 + 2 * v114.u16[2]);
          v113.i16[3] = *(v57 + 2 * v114.u16[3]);
          v113.i16[4] = *(v57 + 2 * v114.u16[4]);
          v113.i16[5] = *(v57 + 2 * v114.u16[5]);
          v113.i16[6] = *(v57 + 2 * v114.u16[6]);
          v115 = vmulq_n_f16(v107, *&v215);
          v116 = v114.u16[7];
          v117 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v109, 0), v100));
          _Q25.i16[0] = *(v57 + 2 * v117.u16[0]);
          _Q25.i16[1] = *(v57 + 2 * v117.u16[1]);
          _Q25.i16[2] = *(v57 + 2 * v117.u16[2]);
          _Q25.i16[3] = *(v57 + 2 * v117.u16[3]);
          _Q25.i16[4] = *(v57 + 2 * v117.u16[4]);
          _Q25.i16[5] = *(v57 + 2 * v117.u16[5]);
          _Q25.i16[6] = *(v57 + 2 * v117.u16[6]);
          v118 = vuzp1q_s16(v113, _Q25);
          v113.i16[7] = *(v57 + 2 * v116);
          _Q25.i16[7] = *(v57 + 2 * v117.u16[7]);
          v119 = vminq_f16(vmaxq_f16(v110, 0), v100);
          v120 = vcvtq_u16_f16(v119);
          v119.i16[0] = *(v57 + 2 * v120.u16[0]);
          v119.i16[1] = *(v57 + 2 * v120.u16[1]);
          v119.i16[2] = *(v57 + 2 * v120.u16[2]);
          v119.i16[3] = *(v57 + 2 * v120.u16[3]);
          v119.i16[4] = *(v57 + 2 * v120.u16[4]);
          v119.i16[5] = *(v57 + 2 * v120.u16[5]);
          v119.i16[6] = *(v57 + 2 * v120.u16[6]);
          v121 = vmlaq_n_f16(v115, v263.val[0], *&v221);
          v122 = (v57 + 2 * v120.u16[7]);
          v123 = v119;
          v123.i16[7] = *v122;
          v124 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v111, 0), v100));
          v263.val[0].i16[0] = *(v57 + 2 * v124.u16[0]);
          v263.val[0].i16[1] = *(v57 + 2 * v124.u16[1]);
          v263.val[0].i16[2] = *(v57 + 2 * v124.u16[2]);
          v263.val[0].i16[3] = *(v57 + 2 * v124.u16[3]);
          v263.val[0].i16[4] = *(v57 + 2 * v124.u16[4]);
          v263.val[0].i16[5] = *(v57 + 2 * v124.u16[5]);
          v263.val[0].i16[6] = *(v57 + 2 * v124.u16[6]);
          _Q30 = vmlaq_n_f16(v121, v106, v222);
          LOWORD(v122) = v124.i16[7];
          v125 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v112, 0), v100));
          v106.i16[0] = *(v57 + 2 * v125.u16[0]);
          v106.i16[1] = *(v57 + 2 * v125.u16[1]);
          v106.i16[2] = *(v57 + 2 * v125.u16[2]);
          v106.i16[3] = *(v57 + 2 * v125.u16[3]);
          v106.i16[4] = *(v57 + 2 * v125.u16[4]);
          v106.i16[5] = *(v57 + 2 * v125.u16[5]);
          v106.i16[6] = *(v57 + 2 * v125.u16[6]);
          v126 = vuzp1q_s16(v263.val[0], v106);
          v263.val[0].i16[7] = *(v57 + 2 * v122);
          v106.i16[7] = *(v57 + 2 * v125.u16[7]);
          v127 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q30, 0), v100));
          _Q30.i16[0] = *(v57 + 2 * v127.u16[0]);
          _Q30.i16[1] = *(v57 + 2 * v127.u16[1]);
          _Q30.i16[2] = *(v57 + 2 * v127.u16[2]);
          _Q30.i16[3] = *(v57 + 2 * v127.u16[3]);
          _Q30.i16[4] = *(v57 + 2 * v127.u16[4]);
          _Q30.i16[5] = *(v57 + 2 * v127.u16[5]);
          _Q30.i16[6] = *(v57 + 2 * v127.u16[6]);
          v128 = (v57 + 2 * v127.u16[7]);
          v129 = _Q30;
          v129.i16[7] = *v128;
          *v69++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v220, v113, v234), _Q25, v233), v123, v229), v220), v218)));
          *v81++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v220, v263.val[0], v234), v106, v233), v129, v229), v220), v218)));
          _Q23 = vuzp2q_s16(v263.val[0], v106);
          _Q5 = vaddq_f16(vaddq_f16(vaddq_f16(v118, vuzp2q_s16(v113, _Q25)), v126), _Q23);
          v130 = vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v119, v119), vtrn2q_s16(v123, v123)), vtrn1q_s16(_Q30, _Q30)), vtrn2q_s16(v129, v129));
          _S16 = *v232.i32;
          _S6 = *v231.i32;
          v131 = vmlaq_f16(vmlaq_f16(v219, v232, vzip1q_s16(_Q5, _Q5)), v231, vzip2q_s16(_Q5, _Q5));
          _Q5.i32[0] = v230.i32[0];
          _Q7 = vmlaq_f16(v131, v230, v130);
          v73.i32[0] = v216.i32[0];
          a4.i32[0] = v217.i32[0];
          v72 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q7, v217), v216)));
          *&v68[v78] = v72;
          if (v67)
          {
            *v73.i8 = vqtbl2_s8(*&v92, v82);
            a4 = v253;
            a5 = v254;
            a6.i32[0] = v255;
            v72.i32[0] = v256;
            *a4.i8 = vqtbl2_s8(*a4.i8, v82);
            *v67 = a4.i64[0];
            v67 += 8;
            *v80 = v73.i64[0];
            v80 += 8;
          }

          v78 += 8;
        }

        while (v78 < v209 - 7);
        v132 = &v68[v78];
        v133 = v209 & 0xFFFFFFF8;
        _S29 = v77;
      }

      if (v133 < v58)
      {
        v134 = 0;
        v135 = v70 + 4;
        v136 = v79 + 4;
        do
        {
          v137 = v134 + v262;
          v73.i8[0] = v135[v137 - 4];
          v138 = v134 + BYTE1(v262);
          a4.i8[0] = v135[v138 - 4];
          result = (v134 + BYTE2(v262));
          a5.i8[0] = result[v135 - 4];
          v139 = v134 + HIBYTE(v262);
          v140 = v135[v139 - 4];
          a6.i8[0] = v135[v137];
          v72.i8[0] = v135[v138];
          _Q5.i8[0] = result[v135];
          v141 = v135[v139];
          LOBYTE(_S6) = v136[v137 - 4];
          v142 = &v136[v138];
          _Q7.i8[0] = v136[v138 - 4];
          LOBYTE(_S16) = result[v136 - 4];
          v143 = &v136[v139];
          v144 = *(v143 - 4);
          _Q23.i8[0] = v136[v137];
          _Q25.i8[0] = *v142;
          _Q30.i8[0] = result[v136];
          v145 = *v143;
          _H0 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * v73.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          _H1 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * a4.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          _H2 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * a5.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          _H3 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * a6.u32[0], 0.0), 8191.0)));
          _H4 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * v72.u32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S3, H3
            FCVT            S4, H4
          }

          _H5 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * _Q5.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          _H6 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * LODWORD(_S6), 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          _H7 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * _Q7.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          _H16 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * LODWORD(_S16), 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          _H23 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * _Q23.u32[0], 0.0), 8191.0)));
          _H25 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * _Q25.u32[0], 0.0), 8191.0)));
          __asm
          {
            FCVT            S23, H23
            FCVT            S25, H25
          }

          _H30 = *(v56 + 2 * llroundf(fminf(fmaxf(_S29 * _Q30.u32[0], 0.0), 8191.0)));
          __asm { FCVT            S30, H30 }

          v170 = ((v246 * _S1) + (_S0 * v247)) + (_S2 * v245);
          v171 = ((v243 * _S1) + (_S0 * v244)) + (_S2 * v242);
          _S2 = ((v240 * _S1) + (_S0 * v241)) + (_S2 * v239);
          v173 = ((v246 * _S4) + (_S3 * v247)) + (_S5 * v245);
          v174 = ((v243 * _S4) + (_S3 * v244)) + (_S5 * v242);
          _S5 = ((v240 * _S4) + (_S3 * v241)) + (_S5 * v239);
          v176 = ((v246 * _S7) + (_S6 * v247)) + (_S16 * v245);
          v177 = ((v243 * _S7) + (_S6 * v244)) + (_S16 * v242);
          _S6 = ((v240 * _S7) + (_S6 * v241)) + (_S16 * v239);
          _S16 = ((v246 * _S25) + (_S23 * v247)) + (_S30 * v245);
          v180 = ((v243 * _S25) + (_S23 * v244)) + (_S30 * v242);
          v181 = llroundf(fminf(fmaxf(v170, 0.0), 8191.0));
          v182 = ((v240 * _S25) + (_S23 * v241)) + (_S30 * v239);
          LOWORD(_S0) = *(v57 + 2 * v181);
          __asm { FCVT            S0, H0 }

          LOWORD(_S1) = *(v57 + 2 * llroundf(fminf(fmaxf(v171, 0.0), 8191.0)));
          __asm { FCVT            S1, H1 }

          LOWORD(_S2) = *(v57 + 2 * llroundf(fminf(fmaxf(_S2, 0.0), 8191.0)));
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v57 + 2 * llroundf(fminf(fmaxf(v173, 0.0), 8191.0)));
          LOWORD(_S7) = *(v57 + 2 * llroundf(fminf(fmaxf(v174, 0.0), 8191.0)));
          __asm
          {
            FCVT            S4, H3
            FCVT            S3, H7
          }

          LOWORD(_S5) = *(v57 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          LOWORD(_S7) = *(v57 + 2 * llroundf(fminf(fmaxf(v176, 0.0), 8191.0)));
          __asm { FCVT            S7, H7 }

          LOWORD(_S23) = *(v57 + 2 * llroundf(fminf(fmaxf(v177, 0.0), 8191.0)));
          __asm { FCVT            S23, H23 }

          LOWORD(_S6) = *(v57 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S16) = *(v57 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          LOWORD(_S25) = *(v57 + 2 * llroundf(fminf(fmaxf(v180, 0.0), 8191.0)));
          __asm
          {
            FCVT            S30, H16
            FCVT            S25, H25
          }

          LOWORD(_S16) = *(v57 + 2 * llroundf(fminf(fmaxf(v182, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          if (!v67)
          {
            v144 = 0;
            v140 = 0;
            v141 = 0;
            v145 = 0;
          }

          v189 = (((v249 * _S1) + (v250 * _S0)) + (v248 * _S2)) + v47;
          if (v189 < v47)
          {
            v190 = v47;
          }

          else
          {
            v190 = (((v249 * _S1) + (v250 * _S0)) + (v248 * _S2)) + v47;
          }

          v191 = v189 <= v238;
          v192 = (((v249 * _S3) + (v250 * _S4)) + (v248 * _S5)) + v47;
          if (!v191)
          {
            v190 = v238;
          }

          v193 = llroundf(v190);
          if (v192 < v47)
          {
            v194 = v47;
          }

          else
          {
            v194 = (((v249 * _S3) + (v250 * _S4)) + (v248 * _S5)) + v47;
          }

          v191 = v192 <= v238;
          v195 = (((v249 * *_Q23.i32) + (v250 * *_Q7.i32)) + (v248 * _S6)) + v47;
          if (!v191)
          {
            v194 = v238;
          }

          v196 = llroundf(v194);
          if (v195 < v47)
          {
            v197 = v47;
          }

          else
          {
            v197 = (((v249 * *_Q23.i32) + (v250 * *_Q7.i32)) + (v248 * _S6)) + v47;
          }

          v191 = v195 <= v238;
          v198 = (((v249 * *_Q25.i32) + (v250 * *_Q30.i32)) + (v248 * _S16)) + v47;
          if (!v191)
          {
            v197 = v238;
          }

          v199 = llroundf(v197);
          if (v198 < v47)
          {
            v200 = v47;
          }

          else
          {
            v200 = (((v249 * *_Q25.i32) + (v250 * *_Q30.i32)) + (v248 * _S16)) + v47;
          }

          if (v198 <= v238)
          {
            v201 = v200;
          }

          else
          {
            v201 = v238;
          }

          v202 = ((_S0 + _S4) + *_Q7.i32) + *_Q30.i32;
          v203 = ((_S1 + _S3) + *_Q23.i32) + *_Q25.i32;
          v69->i8[0] = v193;
          v69->i8[1] = v196;
          v81->i8[0] = v199;
          v81->i8[1] = llroundf(v201);
          a5.f32[0] = ((_S2 + _S5) + _S6) + _S16;
          v204 = ((v258 + (v202 * v237)) + (v203 * v236)) + (a5.f32[0] * v235);
          a6.f32[0] = v257;
          if (v204 <= v257)
          {
            a6.f32[0] = ((v258 + (v202 * v237)) + (v203 * v236)) + (a5.f32[0] * v235);
            if (v204 < v251)
            {
              a6.f32[0] = v251;
            }
          }

          *_Q5.i32 = v213;
          *v72.i32 = v212;
          *v73.i32 = ((v258 + (v202 * v213)) + (v203 * v212)) + (a5.f32[0] * v211);
          *v132 = llroundf(a6.f32[0]);
          *a4.i32 = v257;
          if (*v73.i32 <= v257)
          {
            a4.i32[0] = v73.i32[0];
            if (*v73.i32 < v251)
            {
              *a4.i32 = v251;
            }
          }

          v132[1] = llroundf(*a4.i32);
          if (v67)
          {
            *v67 = v140;
            *(v67 + 1) = v141;
            v67 += 2;
            *v80 = v144;
            *(v80 + 1) = v145;
            v80 += 2;
          }

          v133 += 2;
          v134 += 8;
          v69 = (v69 + 2);
          v81 = (v81 + 2);
          v132 += 2;
        }

        while (v133 < v58);
      }

      v70 = &v74[v19];
      v44 = v210;
      v69 = &v75[v210];
      v68 += v208;
      v67 = v76 + v26;
      v45 += 2;
    }

    while (v45 < v207);
  }

  *&v205[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_TRC_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_TRC_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_TRC_Mat_TRC_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v17 = 2 * *result;
  v135 = result;
  v18 = *(result + 13);
  v19 = v18 * a2 / v17;
  v139 = 2 * ((v18 + v18 * a2) / v17 - v19);
  if (v139 >= 1)
  {
    v20 = 0;
    v21 = *(result + 19);
    v22 = *(result + 24) & 0xFFFFFFFE;
    v23 = *(result + 7);
    result = **(result + 8);
    v24 = v135[16];
    v25 = v135[17];
    v26 = *v25;
    v27 = v25[2];
    v28 = 8191.0 / *(v21 + 128);
    LOWORD(a5) = *(v21 + 144);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v21 + 146);
    *&v30 = LODWORD(a6);
    LOWORD(a7) = *(v21 + 148);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v21 + 150);
    v149 = LODWORD(a8);
    v150 = LODWORD(a6);
    LOWORD(v30) = *(v21 + 152);
    v32 = v30;
    v147 = *(v21 + 40);
    v148 = *(v21 + 36);
    v33 = 0.25;
    v145 = *(v21 + 48) * 0.25;
    v146 = *(v21 + 44);
    v143 = *(v21 + 56) * 0.25;
    v144 = *(v21 + 52) * 0.25;
    v34 = *(v21 + 64);
    v141 = v34 * 0.25;
    v142 = *(v21 + 60) * 0.25;
    v35 = *(v21 + 68);
    v36 = *(v21 + 72);
    v140 = v35 * 0.25;
    v37 = *(v21 + 76);
    v38 = *(v21 + 80);
    v39 = *(v21 + 84);
    v40 = *(v21 + 88);
    v41 = *(v21 + 92);
    v42 = *(v21 + 96);
    v44 = *(v21 + 100);
    v43 = *(v21 + 104);
    v45 = v21 + 164;
    v46 = v21 + 16548;
    v47 = v135[14];
    v48 = v135[15] + 2 * v19;
    v49 = *(v135 + 44) + 2 * (*(v135 + 28) * a2 / v17);
    v50 = v24[1];
    v51 = v24[2];
    if (v51)
    {
      v52 = (v51 + v27 * v48 + v47);
    }

    else
    {
      v52 = 0;
    }

    v53 = (*v24 + v26 * v48 + v47);
    v54 = *v23 + v49 * result + 4 * *(v135 + 36);
    v55 = *(v21 + 157);
    v56 = *(v21 + 156);
    v137 = v25[2];
    v138 = v25[1];
    v57 = v50 + v138 * (v48 / 2);
    v58 = *(v21 + 155);
    v59 = *(v21 + 154);
    v60 = v57 + v47;
    do
    {
      v61 = result;
      v62 = &result[v54];
      v63 = v26;
      v64 = &v53[v26];
      v65 = &v52[v27];
      if (v22 >= 1)
      {
        v66 = 0;
        v67 = v65;
        v68 = v64;
        v69 = &result[v54];
        do
        {
          LOBYTE(v35) = *(v54 + v59);
          LOBYTE(v33) = *(v54 + v58);
          LOBYTE(v34) = *(v54 + v56);
          v70 = *(v54 + v55);
          LOBYTE(v14) = *(v54 + 4 + v59);
          LOBYTE(v15) = *(v54 + 4 + v58);
          LOBYTE(_S24) = *(v54 + 4 + v56);
          v71 = *(v54 + 4 + v55);
          LOBYTE(_S10) = v69[v59];
          LOBYTE(_S11) = v69[v58];
          LOBYTE(_S12) = v69[v56];
          v72 = v69[v55];
          LOBYTE(_S13) = v69[v59 + 4];
          LOBYTE(_S14) = v69[v58 + 4];
          LOBYTE(_S15) = v69[v56 + 4];
          v73 = v69[v55 + 4];
          _H18 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v35), 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _H19 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v33), 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          _H20 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v34), 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          _H21 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v14), 0.0), 8191.0)));
          _H22 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(v15), 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H21
            FCVT            S22, H22
          }

          _H24 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S24), 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _H10 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S10), 0.0), 8191.0)));
          __asm { FCVT            S10, H10 }

          _H11 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S11), 0.0), 8191.0)));
          __asm { FCVT            S11, H11 }

          _H12 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S12), 0.0), 8191.0)));
          __asm { FCVT            S12, H12 }

          _H13 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S13), 0.0), 8191.0)));
          _H14 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S14), 0.0), 8191.0)));
          __asm
          {
            FCVT            S13, H13
            FCVT            S14, H14
          }

          _H15 = *(v45 + 2 * llroundf(fminf(fmaxf(v28 * LODWORD(_S15), 0.0), 8191.0)));
          __asm { FCVT            S15, H15 }

          v102 = ((v37 * _S19) + (_S18 * v36)) + (_S20 * v38);
          _S3 = ((v40 * _S19) + (_S18 * v39)) + (_S20 * v41);
          _S18 = ((v44 * _S19) + (_S18 * v42)) + (_S20 * v43);
          v105 = ((v37 * _S22) + (_S21 * v36)) + (_S24 * v38);
          v106 = ((v40 * _S22) + (_S21 * v39)) + (_S24 * v41);
          v107 = ((v44 * _S22) + (_S21 * v42)) + (_S24 * v43);
          v108 = ((v37 * _S11) + (_S10 * v36)) + (_S12 * v38);
          v109 = ((v40 * _S11) + (_S10 * v39)) + (_S12 * v41);
          _S7 = ((v44 * _S11) + (_S10 * v42)) + (_S12 * v43);
          v111 = ((v37 * _S14) + (_S13 * v36)) + (_S15 * v38);
          v112 = ((v40 * _S14) + (_S13 * v39)) + (_S15 * v41);
          v113 = llroundf(fminf(fmaxf(v102, 0.0), 8191.0));
          v114 = ((v44 * _S14) + (_S13 * v42)) + (_S15 * v43);
          LOWORD(_S10) = *(v46 + 2 * v113);
          __asm { FCVT            S10, H10 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(_S3, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S12, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          LOWORD(_S18) = *(v46 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm
          {
            FCVT            S14, H3
            FCVT            S13, H18
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S19, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S20, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          LOWORD(_S7) = *(v46 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H3
            FCVT            S22, H7
          }

          LOWORD(_S3) = *(v46 + 2 * llroundf(fminf(fmaxf(v114, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          if (!v52)
          {
            v72 = 0;
            v70 = 0;
            v71 = 0;
            v73 = 0;
          }

          v120 = (((v147 * _S11) + (v148 * _S10)) + (v146 * _S12)) + v29;
          if (v120 < v29)
          {
            v121 = v29;
          }

          else
          {
            v121 = (((v147 * _S11) + (v148 * _S10)) + (v146 * _S12)) + v29;
          }

          v122 = v120 <= v31;
          v123 = (((v147 * _S13) + (v148 * _S14)) + (v146 * _S15)) + v29;
          if (!v122)
          {
            v121 = v31;
          }

          v124 = llroundf(v121);
          if (v123 < v29)
          {
            v125 = v29;
          }

          else
          {
            v125 = (((v147 * _S13) + (v148 * _S14)) + (v146 * _S15)) + v29;
          }

          v122 = v123 <= v31;
          v126 = (((v147 * _S20) + (v148 * _S19)) + (v146 * _S18)) + v29;
          if (!v122)
          {
            v125 = v31;
          }

          v127 = llroundf(v125);
          if (v126 < v29)
          {
            v128 = v29;
          }

          else
          {
            v128 = (((v147 * _S20) + (v148 * _S19)) + (v146 * _S18)) + v29;
          }

          v122 = v126 <= v31;
          v129 = (((v147 * _S22) + (v148 * _S24)) + (v146 * _S21)) + v29;
          if (!v122)
          {
            v128 = v31;
          }

          v130 = llroundf(v128);
          if (v129 < v29)
          {
            v131 = v29;
          }

          else
          {
            v131 = (((v147 * _S22) + (v148 * _S24)) + (v146 * _S21)) + v29;
          }

          if (v129 <= v31)
          {
            v132 = v131;
          }

          else
          {
            v132 = v31;
          }

          v133 = ((_S10 + _S14) + _S19) + _S24;
          v34 = ((_S11 + _S13) + _S20) + _S22;
          *v53 = v124;
          v53[1] = v127;
          *v68 = v130;
          v68[1] = llroundf(v132);
          v134 = ((_S12 + _S15) + _S18) + _S21;
          v15 = ((v150 + (v133 * v145)) + (v34 * v144)) + (v134 * v143);
          v14 = v32;
          if (v15 <= v32)
          {
            v14 = ((v150 + (v133 * v145)) + (v34 * v144)) + (v134 * v143);
            if (v15 < v149)
            {
              v14 = v149;
            }
          }

          v35 = ((v150 + (v133 * v142)) + (v34 * v141)) + (v134 * v140);
          *(v60 + v66) = llroundf(v14);
          v33 = v32;
          if (v35 <= v32)
          {
            v33 = v35;
            if (v35 < v149)
            {
              v33 = v149;
            }
          }

          *(v60 + v66 + 1) = llroundf(v33);
          if (v52)
          {
            *v52 = v70;
            v52[1] = v71;
            v52 += 2;
            *v67 = v72;
            v67[1] = v73;
            v67 += 2;
          }

          v54 += 8;
          v69 += 8;
          v53 += 2;
          v68 += 2;
          v66 += 2;
        }

        while (v66 < v22);
      }

      v54 = &v61[v62];
      result = v61;
      v53 = &v64[v63];
      v26 = v63;
      v60 += v138;
      v52 = &v65[v137];
      v27 = v137;
      v20 += 2;
    }

    while (v20 < v139);
  }

  *(v135 + a2 + 40) = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_rgb_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unint64_t vt_Copy_BGRA_rgb_420vf_neon_fp16_GCD(unint64_t result, uint64_t a2)
{
  v7 = 0;
  v162 = *(result + 36);
  v150 = *(result + 96);
  v8 = 2 * *result;
  v9 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
  v11 = *(result + 104);
  v10 = *(result + 112);
  v147 = result;
  v12 = *(result + 152);
  v13 = *(result + 128);
  v14 = v11 * a2 / v8;
  v15 = *(result + 120) + 2 * v14;
  v16 = *(result + 136);
  v17 = v11 + v11 * a2;
  v18 = **(result + 64);
  v19 = **(result + 56);
  v21 = *v16;
  v20 = v16[1];
  v22 = *v13;
  v23 = v13[1];
  v24 = v16[2];
  v25 = v13[2];
  v26 = *(v12 + 128);
  v27 = *(v12 + 136);
  v168 = *(v12 + 154);
  v28 = v17 / v8 - v14;
  v29 = v18 * v9;
  v30 = *(v12 + 144);
  v31 = *(v12 + 146);
  v32 = *(v12 + 148);
  v33 = *(v12 + 150);
  v34 = *(v12 + 152);
  v149 = v20;
  _S0 = *(v12 + 36);
  _S1 = *(v12 + 40);
  _S2 = *(v12 + 44);
  v4.i32[0] = *(v12 + 48);
  v3.i32[0] = *(v12 + 52);
  v38.i32[0] = *(v12 + 56);
  v40 = *(v12 + 60);
  v39 = *(v12 + 64);
  v2.i32[0] = *(v12 + 68);
  v166 = 0u;
  v167 = 0u;
  do
  {
    v41 = 0;
    v42 = *(&v168 + v7);
    v43 = *(&v166 + v7);
    do
    {
      v165 = v43;
      *(&v165 | v41 & 7) = v42 + 4 * v41;
      v43 = v165;
      ++v41;
    }

    while (v41 != 8);
    *(&v166 + v7++) = v165;
  }

  while (v7 != 4);
  v44 = 2 * v28;
  if (2 * v28 >= 1)
  {
    v45 = 0;
    v46 = v26;
    v47 = v150 & 0xFFFFFFFE;
    _S3 = v27 / v46;
    v49 = v30;
    v50 = v31;
    v51 = v32;
    v164 = v33;
    v52 = v34;
    v4.i32[1] = v40;
    __asm { FMOV            V22.2S, #0.25 }

    *v4.i8 = vmul_f32(*v4.i8, _D22);
    v3.i32[1] = v39;
    *v3.f32 = vmul_f32(*v3.f32, _D22);
    v38.i32[1] = v2.i32[0];
    *v2.f32 = vmul_f32(v38, _D22);
    __asm
    {
      FCVT            H8, S0
      FCVT            H9, S1
      FCVT            H10, S2
    }

    v159 = vdupq_lane_s32(vcvt_f16_f32(v4), 0);
    v158 = vdupq_lane_s32(vcvt_f16_f32(v3), 0);
    v61 = vcvt_f16_f32(v2);
    v157 = vdupq_lane_s32(v61, 0);
    *v61.i16 = v30;
    v62 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v31;
    v63 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v32;
    v64 = vdupq_lane_s16(v61, 0);
    *v61.i16 = v33;
    v65 = vdupq_lane_s16(v61, 0);
    v155 = v65;
    v156 = v63;
    *v65.i16 = v34;
    v154 = vdupq_lane_s16(*v65.i8, 0);
    v66 = v23 + v20 * (v15 / 2);
    if (v25)
    {
      v67 = v25 + v24 * v15 + v10;
    }

    else
    {
      v67 = 0;
    }

    v68 = (v66 + v10);
    v69 = (v22 + v21 * v15 + v10);
    v70 = (v19 + v29 + 4 * v162);
    __asm { FCVT            H11, S3 }

    v161 = v3.f32[0];
    LODWORD(v72) = v4.i32[1];
    v163 = *v4.i32;
    v152 = v3.f32[1];
    v153 = *&v4.i32[1];
    LODWORD(v73) = v2.i32[1];
    v151 = v2.f32[1];
    v160 = v2.f32[0];
    do
    {
      v74 = &v70[v18];
      v75 = v69 + v21;
      v76 = v67 + v24;
      if (v150 < 8)
      {
        v106 = 0;
        v80 = (v69 + v21);
        v105 = v68;
        v79 = v67 + v24;
        v78 = &v70[v18];
      }

      else
      {
        v77 = 0;
        v78 = &v70[v18];
        v79 = v67 + v24;
        v80 = (v69 + v21);
        do
        {
          v81 = *(&v167 + 8);
          *&v73 = *v70;
          v82 = *(v70 + 1);
          v3.i64[0] = *(v70 + 2);
          v72 = *(v70 + 3);
          v70 += 32;
          *(&v73 + 1) = v82;
          v3.i64[1] = v72;
          v2 = v3;
          v83 = vqtbl2_s8(*(&v2 - 1), *&v166);
          v84 = vqtbl2_s8(*(&v2 - 1), *(&v166 + 8));
          v85 = vqtbl2_s8(*(&v2 - 1), *&v167);
          *v86.i8 = vzip1_s8(v83, 0);
          v86.u64[1] = vzip2_s8(v83, 0);
          v87 = vcvtq_f16_u16(v86);
          *v86.i8 = vzip1_s8(v84, 0);
          v86.u64[1] = vzip2_s8(v84, 0);
          *v88.i8 = vzip1_s8(v85, 0);
          v88.u64[1] = vzip2_s8(v85, 0);
          v89 = vcvtq_f16_u16(v86);
          v90 = vmulq_n_f16(v87, _H11);
          *&v94 = *v78;
          v86.i64[0] = *(v78 + 1);
          *&v91 = *(v78 + 2);
          v6 = *(v78 + 3);
          v78 += 32;
          v92 = vmulq_n_f16(v89, _H11);
          v93 = vmulq_n_f16(vcvtq_f16_u16(v88), _H11);
          *(&v94 + 1) = v86.i64[0];
          *(&v91 + 1) = v6;
          v95 = v91;
          v96 = vqtbl2_s8(*&v94, *&v166);
          v97 = vqtbl2_s8(*&v94, *(&v166 + 8));
          v98 = vqtbl2_s8(*&v94, *&v167);
          *v99.i8 = vzip1_s8(v96, 0);
          v99.u64[1] = vzip2_s8(v96, 0);
          *v100.i8 = vzip1_s8(v97, 0);
          v100.u64[1] = vzip2_s8(v97, 0);
          *v101.i8 = vzip1_s8(v98, 0);
          v101.u64[1] = vzip2_s8(v98, 0);
          v102 = vmulq_n_f16(vcvtq_f16_u16(v99), _H11);
          v103 = vmulq_n_f16(vcvtq_f16_u16(v100), _H11);
          v4 = vmulq_n_f16(vcvtq_f16_u16(v101), _H11);
          *v69++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v90, _H8), v92, _H9), v93, _H10), v62), v64)));
          *v80++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v62, v102, _H8), v103, _H9), v4, _H10), v62), v64)));
          v104 = vaddq_f16(vuzp2q_s16(v102, v103), vaddq_f16(vpaddq_f16(v90, v92), vuzp1q_s16(v102, v103)));
          v5 = *v158.i32;
          *v4.i8 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_f16(vmlaq_f16(vmlaq_f16(v156, v159, vzip1q_s16(v104, v104)), v158, vzip2q_s16(v104, v104)), v157, vaddq_f16(vtrn2q_s16(v4, v4), vaddq_f16(vaddq_f16(vtrn1q_s16(v93, v93), vtrn2q_s16(v93, v93)), vtrn1q_s16(v4, v4)))), v155), v154)));
          *&v68[v77] = v4.i64[0];
          if (v67)
          {
            *v4.i8 = vqtbl2_s8(*&v94, v81);
            *&v73 = vqtbl2_s8(*(&v2 - 1), v81);
            *v67 = v73;
            v67 += 8;
            *v79 = v4.i64[0];
            v79 += 8;
          }

          v77 += 8;
        }

        while (v77 < v150 - 7);
        v105 = &v68[v77];
        v106 = v150 & 0xFFFFFFF8;
      }

      if (v106 < v47)
      {
        v107 = 0;
        v108 = v70 + 4;
        v109 = v78 + 4;
        do
        {
          v110 = v107 + v168;
          LOBYTE(v73) = v108[v110 - 4];
          *&v73 = _S3 * v73;
          v111 = v107 + BYTE1(v168);
          v2.i8[0] = v108[v111 - 4];
          v2.f32[0] = _S3 * v2.u32[0];
          v112 = v107 + BYTE2(v168);
          v3.i8[0] = v108[v112 - 4];
          v3.f32[0] = _S3 * v3.u32[0];
          v113 = v107 + HIBYTE(v168);
          v114 = v108[v113 - 4];
          LOBYTE(v72) = v108[v110];
          *&v72 = _S3 * v72;
          v4.i8[0] = v108[v111];
          *&v115 = v4.u32[0];
          v116 = _S3 * *&v115;
          LOBYTE(v115) = v108[v112];
          *&v117 = v115;
          v118 = _S3 * *&v117;
          result = v108[v113];
          v119 = &v109[v110];
          LOBYTE(v117) = *(v119 - 4);
          *&v120 = v117;
          v121 = _S3 * *&v120;
          v122 = &v109[v111];
          LOBYTE(v120) = v109[v111 - 4];
          *&v123 = v120;
          v124 = _S3 * *&v123;
          LOBYTE(v123) = v109[v112 - 4];
          *&v125 = v123;
          v126 = _S3 * *&v125;
          v127 = &v109[v113];
          v128 = *(v127 - 4);
          LOBYTE(v125) = *v119;
          *v4.i32 = _S3 * v125;
          LOBYTE(v5) = *v122;
          v5 = _S3 * LODWORD(v5);
          LOBYTE(v6) = v109[v112];
          *&v6 = _S3 * v6;
          v129 = *v127;
          if (v67)
          {
            v130 = v128;
          }

          else
          {
            v130 = 0;
          }

          if (v67)
          {
            v131 = v114;
          }

          else
          {
            v131 = 0;
          }

          if (v67)
          {
            v132 = result;
          }

          else
          {
            v132 = 0;
          }

          if (v67)
          {
            v133 = v129;
          }

          else
          {
            v133 = 0;
          }

          v134 = (((_S1 * v2.f32[0]) + (_S0 * *&v73)) + (_S2 * v3.f32[0])) + v49;
          v135 = (((_S1 * v116) + (_S0 * *&v72)) + (_S2 * v118)) + v49;
          v136 = (((_S1 * v124) + (_S0 * v121)) + (_S2 * v126)) + v49;
          v137 = (((_S1 * v5) + (_S0 * *v4.i32)) + (_S2 * *&v6)) + v49;
          if (v134 < v49)
          {
            v138 = v49;
          }

          else
          {
            v138 = (((_S1 * v2.f32[0]) + (_S0 * *&v73)) + (_S2 * v3.f32[0])) + v49;
          }

          if (v134 <= v51)
          {
            v139 = v138;
          }

          else
          {
            v139 = v51;
          }

          v140 = llroundf(v139);
          if (v135 < v49)
          {
            v141 = v49;
          }

          else
          {
            v141 = (((_S1 * v116) + (_S0 * *&v72)) + (_S2 * v118)) + v49;
          }

          if (v135 > v51)
          {
            v141 = v51;
          }

          v69->i8[0] = v140;
          v69->i8[1] = llroundf(v141);
          if (v136 < v49)
          {
            v142 = v49;
          }

          else
          {
            v142 = (((_S1 * v124) + (_S0 * v121)) + (_S2 * v126)) + v49;
          }

          if (v136 > v51)
          {
            v142 = v51;
          }

          v80->i8[0] = llroundf(v142);
          if (v137 < v49)
          {
            v143 = v49;
          }

          else
          {
            v143 = (((_S1 * v5) + (_S0 * *v4.i32)) + (_S2 * *&v6)) + v49;
          }

          if (v137 > v51)
          {
            v143 = v51;
          }

          v80->i8[1] = llroundf(v143);
          v144 = ((*&v73 + *&v72) + v121) + *v4.i32;
          v145 = ((v2.f32[0] + v116) + v124) + v5;
          v3.f32[0] = ((v3.f32[0] + v118) + v126) + *&v6;
          v146 = ((v50 + (v144 * v163)) + (v145 * v161)) + (v3.f32[0] * v160);
          *&v72 = v52;
          if (v146 <= v52)
          {
            *&v72 = ((v50 + (v144 * v163)) + (v145 * v161)) + (v3.f32[0] * v160);
            if (v146 < v164)
            {
              *&v72 = v164;
            }
          }

          *v4.i32 = v152;
          *&v73 = ((v50 + (v144 * v153)) + (v145 * v152)) + (v3.f32[0] * v151);
          *v105 = llroundf(*&v72);
          v2.f32[0] = v52;
          if (*&v73 <= v52)
          {
            v2.i32[0] = v73;
            if (*&v73 < v164)
            {
              v2.f32[0] = v164;
            }
          }

          v105[1] = llroundf(v2.f32[0]);
          if (v67)
          {
            *v67 = v131;
            *(v67 + 1) = v132;
            v67 += 2;
            *v79 = v130;
            *(v79 + 1) = v133;
            v79 += 2;
          }

          v106 += 2;
          v107 += 8;
          v69 = (v69 + 2);
          v80 = (v80 + 2);
          v105 += 2;
        }

        while (v106 < v47);
      }

      v70 = &v74[v18];
      v69 = &v75[v21];
      v68 += v149;
      v67 = v76 + v24;
      v45 += 2;
    }

    while (v45 < v44);
  }

  *&v147[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_BGRA_rgb_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v60 = a7;
  v61 = a8;
  v66 = a4;
  v67 = a5;
  v59 = a3;
  v68 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v62 = *a2;
  v63 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v64 = v16;
  v65 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  LODWORD(v57) = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_61:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = (&v56 - v25);
    bzero(&v56 - v25, v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    if ((v57 & 1) != 0 || (*v66 * (v35 + 1 + v36)) > *v67 || (v38 = v34 + 1 + v37, (*v61 * v38) > *a9) || (v61[1] * (v38 / 2)) > a9[1] || (v61[2] * v38) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v64;
      ++v65;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v62)
  {
    v32 = v62 - v30;
  }

  if (v33 + v31 > v63)
  {
    v33 = v63 - v31;
  }

  if (v35 + v36 > v65)
  {
    v35 = v65 - v36;
  }

  if (v34 + v37 > v64)
  {
    v34 = v64 - v37;
  }

  if (v32 >= v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v32;
  }

  if (v35 >= v34)
  {
    v40 = v34;
  }

  else
  {
    v40 = v35;
  }

  if (((v36 + v40 - 1) * *v66 + 4 * (v39 + v30)) > *v67)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v45 = v40 + v37 - 1;
  v46 = v39 + v31;
  if ((v39 + v31 + *v61 * v45) > *a9)
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  v47 = v60;
  if (*(v60 + 8) && ((v46 + 1 + ((v46 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v61[1] * ((v40 + v37 + 1) / 2 - 1) > a9[1])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
    goto LABEL_54;
  }

  if (*(v60 + 16) && (v46 + v61[2] * v45) > a9[2])
  {
    v57 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v9;
    v44 = a9;
LABEL_54:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v47 = v60;
    v28 = v44;
    v9 = v43;
    v31 = v42;
    v30 = v41;
    v36 = v57;
    if (v24)
    {
      goto LABEL_60;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v62;
  v48 = v64;
  *(v23 + 12) = v65;
  *(v23 + 20) = v39;
  *(v23 + 28) = v40;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v48;
  v23[12] = v39;
  v23[13] = v40;
  v23[14] = v31;
  v49 = v66;
  v23[7] = v59;
  v23[8] = v49;
  v50 = v63;
  v23[9] = v67;
  v23[10] = v50;
  v23[15] = v37;
  v23[16] = v47;
  v23[17] = v61;
  v23[18] = v28;
  v23[19] = v58;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_BGRA_rgb_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v52 = (v23 + 20);
  v53 = v9;
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

LABEL_60:
  if (v9 == 255)
  {
    goto LABEL_61;
  }

  return v24;
}

unsigned __int8 *vt_Copy_BGRA_rgb_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8)
{
  v19 = 2 * *result;
  v20 = *(result + 13);
  v21 = v20 * a2 / v19;
  v22 = 2 * ((v20 + v20 * a2) / v19 - v21);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = *(result + 19);
    v25 = *(result + 24) & 0xFFFFFFFE;
    v26 = **(result + 8);
    v27 = *(result + 16);
    v28 = *(result + 17);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    *&v32 = *(v24 + 136);
    v33 = *&v32 / *(v24 + 128);
    LOWORD(v32) = *(v24 + 144);
    v34 = v32;
    LOWORD(a5) = *(v24 + 146);
    v35 = LODWORD(a5);
    LOWORD(a6) = *(v24 + 148);
    v36 = LODWORD(a6);
    LOWORD(a7) = *(v24 + 150);
    v37 = LODWORD(a7);
    LOWORD(a8) = *(v24 + 152);
    v38 = LODWORD(a8);
    v39 = *(v24 + 36);
    v40 = *(v24 + 40);
    v41 = *(v24 + 44);
    v42 = *(v24 + 48) * 0.25;
    v43 = *(v24 + 52) * 0.25;
    v44 = *(v24 + 56) * 0.25;
    v45 = *(v24 + 60) * 0.25;
    v46 = *(v24 + 64) * 0.25;
    v47 = *(v24 + 68);
    v48 = v47 * 0.25;
    v49 = *(result + 14);
    v50 = *(result + 15) + 2 * v21;
    v51 = *(result + 44) + 2 * (*(result + 28) * a2 / v19);
    v53 = v27[1];
    v52 = v27[2];
    if (v52)
    {
      v54 = (v52 + v31 * v50 + v49);
    }

    else
    {
      v54 = 0;
    }

    v55 = (*v27 + v29 * v50 + v49);
    v56 = **(result + 7) + v51 * v26 + 4 * *(result + 36);
    v57 = *(v24 + 157);
    v58 = *(v24 + 156);
    v59 = v53 + v30 * (v50 / 2);
    v60 = *(v24 + 155);
    v61 = *(v24 + 154);
    v62 = v59 + v49;
    do
    {
      v63 = v56 + v26;
      v64 = &v55[v29];
      v65 = &v54[v31];
      if (v25 >= 1)
      {
        v66 = 0;
        v67 = &v54[v31];
        v68 = &v55[v29];
        v69 = v56 + v26;
        do
        {
          LOBYTE(v47) = *(v56 + v61);
          v70 = v33 * LODWORD(v47);
          LOBYTE(v11) = *(v56 + v60);
          v71 = v33 * LODWORD(v11);
          LOBYTE(v12) = *(v56 + v58);
          v72 = v33 * LODWORD(v12);
          LOBYTE(v13) = *(v56 + 4 + v61);
          v73 = v33 * LODWORD(v13);
          LOBYTE(v14) = *(v56 + 4 + v60);
          v74 = v33 * LODWORD(v14);
          LOBYTE(v15) = *(v56 + 4 + v58);
          v15 = v33 * LODWORD(v15);
          v75 = *(v56 + 4 + v57);
          LOBYTE(v16) = *(v69 + v61);
          v16 = v33 * LODWORD(v16);
          LOBYTE(v17) = *(v69 + v60);
          v17 = v33 * LODWORD(v17);
          LOBYTE(v18) = *(v69 + v58);
          v18 = v33 * LODWORD(v18);
          v76 = *(v69 + v57);
          LOBYTE(v8) = *(v69 + 4 + v61);
          LOBYTE(v9) = *(v69 + 4 + v60);
          v8 = v33 * LODWORD(v8);
          v9 = v33 * LODWORD(v9);
          LOBYTE(v10) = *(v69 + 4 + v58);
          v10 = v33 * LODWORD(v10);
          if (v54)
          {
            v77 = *(v56 + v57);
          }

          else
          {
            v76 = 0;
            v77 = 0;
          }

          if (v54)
          {
            v78 = *(v69 + 4 + v57);
          }

          else
          {
            v75 = 0;
            v78 = 0;
          }

          v79 = (((v40 * v71) + (v39 * v70)) + (v41 * v72)) + v34;
          v80 = (((v40 * v74) + (v39 * v73)) + (v41 * v15)) + v34;
          v81 = (((v40 * v17) + (v39 * v16)) + (v41 * v18)) + v34;
          if (v79 < v34)
          {
            v83 = v34;
          }

          else
          {
            v83 = (((v40 * v71) + (v39 * v70)) + (v41 * v72)) + v34;
          }

          if (v79 <= v36)
          {
            v84 = v83;
          }

          else
          {
            v84 = v36;
          }

          *v55 = llroundf(v84);
          if (v80 < v34)
          {
            v85 = v34;
          }

          else
          {
            v85 = (((v40 * v74) + (v39 * v73)) + (v41 * v15)) + v34;
          }

          if (v80 > v36)
          {
            v85 = v36;
          }

          v86 = llroundf(v85);
          v82 = ((v40 * v9) + (v39 * v8)) + (v41 * v10);
          v87 = v82 + v34;
          v55[1] = v86;
          if (v81 < v34)
          {
            v88 = v34;
          }

          else
          {
            v88 = (((v40 * v17) + (v39 * v16)) + (v41 * v18)) + v34;
          }

          if (v81 > v36)
          {
            v88 = v36;
          }

          *v68 = llroundf(v88);
          if (v87 < v34)
          {
            v89 = v34;
          }

          else
          {
            v89 = v82 + v34;
          }

          if (v87 <= v36)
          {
            v90 = v89;
          }

          else
          {
            v90 = v36;
          }

          v68[1] = llroundf(v90);
          v91 = ((v70 + v73) + v16) + v8;
          v92 = ((v71 + v74) + v17) + v9;
          v12 = ((v72 + v15) + v18) + v10;
          v14 = ((v35 + (v91 * v42)) + (v92 * v43)) + (v12 * v44);
          v13 = v38;
          if (v14 <= v38)
          {
            v13 = ((v35 + (v91 * v42)) + (v92 * v43)) + (v12 * v44);
            if (v14 < v37)
            {
              v13 = v37;
            }
          }

          v47 = ((v35 + (v91 * v45)) + (v92 * v46)) + (v12 * v48);
          *(v62 + v66) = llroundf(v13);
          v11 = v38;
          if (v47 <= v38)
          {
            v11 = v47;
            if (v47 < v37)
            {
              v11 = v37;
            }
          }

          *(v62 + v66 + 1) = llroundf(v11);
          if (v54)
          {
            *v54 = v77;
            v54[1] = v75;
            v54 += 2;
            *v67 = v76;
            v67[1] = v78;
            v67 += 2;
          }

          v56 += 8;
          v69 += 8;
          v55 += 2;
          v68 += 2;
          v66 += 2;
        }

        while (v66 < v25);
      }

      v56 = v63 + v26;
      v55 = &v64[v29];
      v62 += v30;
      v54 = &v65[v31];
      v23 += 2;
    }

    while (v23 < v22);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}