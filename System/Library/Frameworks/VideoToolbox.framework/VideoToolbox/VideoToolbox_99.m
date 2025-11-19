uint64_t vt_Copy_l10r_TRC_Mat_TRC_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a3;
  v65 = a8;
  v63 = a7;
  v70 = a4;
  v71 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v62 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v66 = *a2;
  v67 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v68 = v16;
  v69 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v60 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_65:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v59[-v25];
    bzero(&v59[-v25], v26);
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
    if (v60 || (v38 = v35 + 1 + v36, *v70 * v38 > *v71) || v70[1] * v38 > v71[1] || (v39 = v34 + 1 + v37, (*v65 * v39) > *a9) || (v65[1] * (v39 / 2)) > a9[1] || (v65[2] * v39) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v68;
      ++v69;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v66)
  {
    v32 = v66 - v30;
  }

  if (v33 + v31 > v67)
  {
    v33 = v67 - v31;
  }

  if (v35 + v36 > v69)
  {
    v35 = v69 - v36;
  }

  if (v34 + v37 > v68)
  {
    v34 = v68 - v37;
  }

  if (v32 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v32;
  }

  if (v35 >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = v35;
  }

  v42 = v36 + v41 - 1;
  v43 = v42 * *v70 + 4 * (v40 + v30);
  v44 = *v71;
  v61 = v36;
  if (v43 > v44)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v64 + 8) && v40 + v30 + v70[1] * v42 > v71[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v48 = v41 + v37 - 1;
  v49 = v40 + v31;
  if ((v40 + v31 + *v65 * v48) > *a9)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v50 = v63;
  if (*(v63 + 8) && ((v49 + 1 + ((v49 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v65[1] * ((v41 + v37 + 1) / 2 - 1) > a9[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v63 + 16) && (v49 + v65[2] * v48) > a9[2])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
LABEL_58:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v50 = v63;
    v28 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v61;
    if (v24)
    {
      goto LABEL_64;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v66;
  v51 = v68;
  *(v23 + 12) = v69;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v51;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v52 = v70;
  v23[7] = v64;
  v23[8] = v52;
  v53 = v67;
  v23[9] = v71;
  v23[10] = v53;
  v23[15] = v37;
  v23[16] = v50;
  v23[17] = v65;
  v23[18] = v28;
  v23[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l10r_TRC_Mat_TRC_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v55 = (v23 + 20);
  v56 = v9;
  while (1)
  {
    v57 = *v55++;
    v24 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v24 = 0;
      break;
    }
  }

LABEL_64:
  if (v9 == 255)
  {
    goto LABEL_65;
  }

  return v24;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, double a6, float a7, float a8)
{
  v8 = 2 * *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = 2 * ((v9 + v9 * a2) / v8 - v10);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v118 = 8191.0 / *(v13 + 128);
    LOWORD(a5) = *(v13 + 140);
    *&a6 = LODWORD(a5);
    LOWORD(a5) = *(v13 + 144);
    v21 = LODWORD(a5);
    LOWORD(a7) = *(v13 + 146);
    v22 = LODWORD(a7);
    LOWORD(a7) = *(v13 + 148);
    v23 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 150);
    v24 = LODWORD(a8);
    LOWORD(a8) = *(v13 + 152);
    v135 = LODWORD(a8);
    v133 = *(v13 + 36);
    v134 = v24;
    v131 = *(v13 + 44);
    v132 = *(v13 + 40);
    v129 = *(v13 + 52) * 0.25;
    v130 = *(v13 + 48) * 0.25;
    v127 = *(v13 + 60) * 0.25;
    v128 = *(v13 + 56) * 0.25;
    v125 = *(v13 + 72);
    v126 = *(v13 + 64) * 0.25;
    v123 = *(v13 + 76);
    v124 = *(v13 + 68) * 0.25;
    v121 = *(v13 + 84);
    v122 = *(v13 + 80);
    v119 = *(v13 + 92);
    v120 = *(v13 + 88);
    v116 = *(v13 + 100);
    v117 = *(v13 + 96);
    v115 = *(v13 + 104);
    v25 = v13 + 164;
    v26 = v13 + 16548;
    v27 = *(result + 14);
    v28 = *(result + 15) + 2 * v10;
    v29 = *(result + 44) + 2 * (*(result + 28) * a2 / v8);
    v31 = v16[1];
    v30 = v16[2];
    _ZF = v30 == 0;
    v33 = (v30 + v20 * v28 + v27);
    if (_ZF)
    {
      v33 = 0;
    }

    v34 = (*v16 + v18 * v28 + v27);
    v35 = (**(result + 7) + v29 * v15 + 4 * *(result + 36));
    v36 = v31 + v19 * (v28 / 2) + v27;
    v114 = vdup_lane_s32(*&a6, 0);
    v113 = vdup_n_s32(0x45FFF800u);
    do
    {
      v37 = v35 + v15;
      v38 = &v34[v18];
      v39 = &v33[v20];
      if (v14 >= 1)
      {
        v40 = 0;
        v41 = &v33[v20];
        v42 = &v34[v18];
        v43 = (v35 + v15);
        do
        {
          v44 = *v35++;
          v45 = v44;
          v46 = v44.u32[1];
          v47 = *v43++;
          *v48.i8 = v47;
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_lane_s32(v45, 0), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v114), v118), 0), v113)));
          _D3.i16[0] = *(v25 + 2 * _D3.u32[0]);
          __asm { FCVT            S19, H3 }

          _D3.i16[0] = *(v25 + 2 * _D3.u32[1]);
          __asm { FCVT            S20, H3 }

          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(__PAIR64__(v46 >> 20, v45.u32[0]), 0x300000003)), v114), v118), 0), v113)));
          _D3.i16[0] = *(v25 + 2 * _D3.u32[0]);
          __asm { FCVT            S21, H3 }

          _D3.i16[0] = *(v25 + 2 * _D3.u32[1]);
          _D5.i32[1] = v45.i32[1];
          _D5.i32[0] = v46 >> 10;
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D5, 0x300000003)), v114), v118), 0), v113)));
          __asm { FCVT            S5, H3 }

          _D3.i16[0] = *(v25 + 2 * _D7.u32[0]);
          _D7.i16[0] = *(v25 + 2 * _D7.u32[1]);
          __asm
          {
            FCVT            S22, H3
            FCVT            S3, H7
          }

          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_lane_s32(v47, 0), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v114), v118), 0), v113)));
          _D7.i16[0] = *(v25 + 2 * _D7.u32[0]);
          __asm { FCVT            S24, H7 }

          _D7.i16[0] = *(v25 + 2 * _D7.u32[1]);
          v62.i32[0] = v47.i32[0];
          v62.i32[1] = v47.i32[1] >> 20;
          __asm { FCVT            S7, H7 }

          _D10 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v62, 0x300000003)), v114), v118), 0), v113)));
          _D10.i16[0] = *(v25 + 2 * _D10.u32[0]);
          __asm { FCVT            S10, H10 }

          _H11 = *(v25 + 2 * _D10.u32[1]);
          v65.i32[1] = v47.i32[1];
          v65.i32[0] = v47.i32[1] >> 10;
          _D12 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v65, 0x300000003)), v114), v118), 0), v113)));
          __asm { FCVT            S11, H11 }

          _D12.i16[0] = *(v25 + 2 * _D12.u32[0]);
          _H16 = *(v25 + 2 * _D12.u32[1]);
          __asm
          {
            FCVT            S12, H12
            FCVT            S16, H16
          }

          v70 = ((v123 * _S20) + (_S19 * v125)) + (_S21 * v122);
          _S6 = ((v120 * _S20) + (_S19 * v121)) + (_S21 * v119);
          v72 = ((v116 * _S20) + (_S19 * v117)) + (_S21 * v115);
          v73 = ((v123 * _S22) + (*_D5.i32 * v125)) + (*_D3.i32 * v122);
          v74 = ((v120 * _S22) + (*_D5.i32 * v121)) + (*_D3.i32 * v119);
          *_D3.i32 = ((v116 * _S22) + (*_D5.i32 * v117)) + (*_D3.i32 * v115);
          v75 = ((v123 * *_D7.i32) + (_S24 * v125)) + (*_D10.i32 * v122);
          v76 = ((v120 * *_D7.i32) + (_S24 * v121)) + (*_D10.i32 * v119);
          *_D7.i32 = ((v116 * *_D7.i32) + (_S24 * v117)) + (*_D10.i32 * v115);
          v77 = ((v123 * *_D12.i32) + (_S11 * v125)) + (_S16 * v122);
          v78 = ((v120 * *_D12.i32) + (_S11 * v121)) + (_S16 * v119);
          _S16 = ((v116 * *_D12.i32) + (_S11 * v117)) + (_S16 * v115);
          _D5.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S21, H5 }

          _D5.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S19, H5 }

          _D5.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          _D5.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v73, 0.0), 8191.0)));
          __asm { FCVT            S22, H5 }

          _D5.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          _D3.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(*_D3.i32, 0.0), 8191.0)));
          __asm
          {
            FCVT            S5, H5
            FCVT            S24, H3
          }

          _D3.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S11, H3 }

          _D3.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S10, H3 }

          _D3.i16[0] = *(v26 + 2 * llroundf(fminf(fmaxf(*_D7.i32, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S6) = *(v26 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S7, H6 }

          LOWORD(_S6) = *(v26 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          LOWORD(_S16) = *(v26 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S12, H16
          }

          v92 = (((v132 * _S19) + (v133 * _S21)) + (v131 * _S20)) + v21;
          if (v92 < v21)
          {
            v93 = v21;
          }

          else
          {
            v93 = (((v132 * _S19) + (v133 * _S21)) + (v131 * _S20)) + v21;
          }

          v94 = v92 <= v23;
          v95 = (((v132 * _S5) + (v133 * _S22)) + (v131 * _S24)) + v21;
          if (!v94)
          {
            v93 = v23;
          }

          v96 = llroundf(v93);
          if (v95 < v21)
          {
            v97 = v21;
          }

          else
          {
            v97 = (((v132 * _S5) + (v133 * _S22)) + (v131 * _S24)) + v21;
          }

          v94 = v95 <= v23;
          v98 = (((v132 * _S10) + (v133 * _S11)) + (v131 * _S3)) + v21;
          if (!v94)
          {
            v97 = v23;
          }

          v99 = llroundf(v97);
          if (v98 < v21)
          {
            v100 = v21;
          }

          else
          {
            v100 = (((v132 * _S10) + (v133 * _S11)) + (v131 * _S3)) + v21;
          }

          v94 = v98 <= v23;
          v101 = (((v132 * _S6) + (v133 * _S7)) + (v131 * _S12)) + v21;
          if (!v94)
          {
            v100 = v23;
          }

          v102 = llroundf(v100);
          if (v101 < v21)
          {
            v103 = v21;
          }

          else
          {
            v103 = (((v132 * _S6) + (v133 * _S7)) + (v131 * _S12)) + v21;
          }

          if (v101 <= v23)
          {
            v104 = v103;
          }

          else
          {
            v104 = v23;
          }

          v105 = ((_S21 + _S22) + _S11) + _S7;
          v106 = ((_S19 + _S5) + _S10) + _S6;
          *v34 = v96;
          v34[1] = v99;
          *v42 = v102;
          v42[1] = llroundf(v104);
          v107 = v135;
          v108 = ((_S20 + _S24) + _S3) + _S12;
          v109 = ((v22 + (v105 * v130)) + (v106 * v129)) + (v108 * v128);
          if (v109 <= v135)
          {
            v107 = ((v22 + (v105 * v130)) + (v106 * v129)) + (v108 * v128);
            if (v109 < v134)
            {
              v107 = v134;
            }
          }

          v110 = ((v22 + (v105 * v127)) + (v106 * v126)) + (v108 * v124);
          *(v36 + v40) = llroundf(v107);
          v111 = v135;
          if (v110 <= v135)
          {
            v111 = v110;
            if (v110 < v134)
            {
              v111 = v134;
            }
          }

          *(v36 + v40 + 1) = llroundf(v111);
          if (v33)
          {
            v48.u64[1] = v45;
            v112 = vbic_s8(vmul_s16(vmovn_s32(vshrq_n_u32(v48, 0x1EuLL)), 0x55005500550055), vceqd_s64(v33, 0));
            *v33 = v112.i8[4];
            v33[1] = v112.i8[6];
            v33 += 2;
            *v41 = v112.i8[0];
            v41[1] = v112.i8[2];
            v41 += 2;
          }

          v34 += 2;
          v42 += 2;
          v40 += 2;
        }

        while (v40 < v14);
      }

      v35 = &v37[v15];
      v34 = &v38[v18];
      v36 += v19;
      v33 = &v39[v20];
      v12 += 2;
    }

    while (v12 < v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_420vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a3;
  v65 = a8;
  v63 = a7;
  v70 = a4;
  v71 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v62 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v66 = *a2;
  v67 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v68 = v16;
  v69 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v60 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_65:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v59[-v25];
    bzero(&v59[-v25], v26);
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
    if (v60 || (v38 = v35 + 1 + v36, *v70 * v38 > *v71) || v70[1] * v38 > v71[1] || (v39 = v34 + 1 + v37, (*v65 * v39) > *a9) || (v65[1] * (v39 / 2)) > a9[1] || (v65[2] * v39) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v68;
      ++v69;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v66)
  {
    v32 = v66 - v30;
  }

  if (v33 + v31 > v67)
  {
    v33 = v67 - v31;
  }

  if (v35 + v36 > v69)
  {
    v35 = v69 - v36;
  }

  if (v34 + v37 > v68)
  {
    v34 = v68 - v37;
  }

  if (v32 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v32;
  }

  if (v35 >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = v35;
  }

  v42 = v36 + v41 - 1;
  v43 = v42 * *v70 + 4 * (v40 + v30);
  v44 = *v71;
  v61 = v36;
  if (v43 > v44)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v64 + 8) && v40 + v30 + v70[1] * v42 > v71[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v48 = v41 + v37 - 1;
  v49 = v40 + v31;
  if ((v40 + v31 + *v65 * v48) > *a9)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v50 = v63;
  if (*(v63 + 8) && ((v49 + 1 + ((v49 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v65[1] * ((v41 + v37 + 1) / 2 - 1) > a9[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v63 + 16) && (v49 + v65[2] * v48) > a9[2])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
LABEL_58:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v50 = v63;
    v28 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v61;
    if (v24)
    {
      goto LABEL_64;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v66;
  v51 = v68;
  *(v23 + 12) = v69;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v51;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v52 = v70;
  v23[7] = v64;
  v23[8] = v52;
  v53 = v67;
  v23[9] = v71;
  v23[10] = v53;
  v23[15] = v37;
  v23[16] = v50;
  v23[17] = v65;
  v23[18] = v28;
  v23[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l10r_rgb_420vf_GCD);
  if (!v9)
  {
    return 0;
  }

  v55 = (v23 + 20);
  v56 = v9;
  while (1)
  {
    v57 = *v55++;
    v24 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v24 = 0;
      break;
    }
  }

LABEL_64:
  if (v9 == 255)
  {
    goto LABEL_65;
  }

  return v24;
}

unsigned __int8 *vt_Copy_l10r_rgb_420vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = 2 * *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = 2 * ((v10 + v10 * a2) / v9 - v11);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *&v22 = *(v14 + 136);
    v23 = *&v22 / *(v14 + 128);
    LOWORD(v22) = *(v14 + 140);
    v24 = v22;
    LOWORD(a5) = *(v14 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v29 = LODWORD(a9);
    v30 = *(v14 + 36);
    v31 = *(v14 + 40);
    v32 = *(v14 + 44);
    v87 = *(v14 + 52) * 0.25;
    v88 = *(v14 + 48) * 0.25;
    v86 = *(v14 + 56) * 0.25;
    v33 = *(v14 + 60) * 0.25;
    v34 = *(v14 + 64) * 0.25;
    v35 = *(v14 + 68) * 0.25;
    v36 = *(result + 14);
    v37 = *(result + 15) + 2 * v11;
    v38 = *(result + 44) + 2 * (*(result + 28) * a2 / v9);
    v39 = v17[2];
    v40 = v39 == 0;
    v41 = (v39 + v21 * v37 + v36);
    if (v40)
    {
      v41 = 0;
    }

    v42 = (*v17 + v19 * v37 + v36);
    v43 = (**(result + 7) + v38 * v16 + 4 * *(result + 36));
    v44 = v17[1] + v20 * (v37 / 2) + v36;
    do
    {
      v45 = v43 + v16;
      v46 = &v42[v19];
      v47 = &v41[v21];
      if (v15 >= 1)
      {
        v48 = 0;
        v49 = &v41[v21];
        v50 = &v42[v19];
        v51 = (v43 + v16);
        do
        {
          v52 = *v43++;
          v53 = v52;
          v54 = v23 * ((v52 & 0x3FF) - v24);
          v55 = v23 * (((v52 >> 10) & 0x3FF) - v24);
          v56 = v23 * (((v52 >> 20) & 0x3FF) - v24);
          v57 = v23 * ((WORD2(v52) & 0x3FF) - v24);
          v58 = v23 * (((HIDWORD(v52) >> 10) & 0x3FF) - v24);
          v59 = v23 * (((HIDWORD(v52) >> 20) & 0x3FF) - v24);
          v60 = *v51++;
          v61.i64[0] = v60;
          v62 = v23 * ((v60 & 0x3FF) - v24);
          v63 = v23 * (((v60 >> 10) & 0x3FF) - v24);
          v64 = v23 * (((v60 >> 20) & 0x3FF) - v24);
          v65 = v23 * ((WORD2(v60) & 0x3FF) - v24);
          v66 = v23 * (((HIDWORD(v60) >> 10) & 0x3FF) - v24);
          v67 = v23 * (((HIDWORD(v60) >> 20) & 0x3FF) - v24);
          v68 = (((v31 * v55) + (v30 * v56)) + (v32 * v54)) + v25;
          v69 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
          v70 = (((v31 * v63) + (v30 * v64)) + (v32 * v62)) + v25;
          v71 = (((v31 * v66) + (v30 * v67)) + (v32 * v65)) + v25;
          if (v68 < v25)
          {
            v72 = v25;
          }

          else
          {
            v72 = (((v31 * v55) + (v30 * v56)) + (v32 * v54)) + v25;
          }

          if (v68 > v27)
          {
            v72 = v27;
          }

          v73 = llroundf(v72);
          if (v69 < v25)
          {
            v74 = v25;
          }

          else
          {
            v74 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
          }

          if (v69 > v27)
          {
            v74 = v27;
          }

          *v42 = v73;
          v42[1] = llroundf(v74);
          if (v70 < v25)
          {
            v75 = v25;
          }

          else
          {
            v75 = (((v31 * v63) + (v30 * v64)) + (v32 * v62)) + v25;
          }

          if (v70 <= v27)
          {
            v76 = v75;
          }

          else
          {
            v76 = v27;
          }

          *v50 = llroundf(v76);
          if (v71 < v25)
          {
            v77 = v25;
          }

          else
          {
            v77 = (((v31 * v66) + (v30 * v67)) + (v32 * v65)) + v25;
          }

          if (v71 > v27)
          {
            v77 = v27;
          }

          v50[1] = llroundf(v77);
          v78 = ((v56 + v59) + v64) + v67;
          v79 = ((v55 + v58) + v63) + v66;
          v80 = ((v54 + v57) + v62) + v65;
          v81 = ((v26 + (v78 * v88)) + (v79 * v87)) + (v80 * v86);
          v82 = v29;
          if (v81 <= v29)
          {
            v82 = ((v26 + (v78 * v88)) + (v79 * v87)) + (v80 * v86);
            if (v81 < v28)
            {
              v82 = v28;
            }
          }

          v83 = ((v26 + (v78 * v33)) + (v79 * v34)) + (v80 * v35);
          *(v44 + v48) = llroundf(v82);
          v84 = v29;
          if (v83 <= v29)
          {
            v84 = v83;
            if (v83 < v28)
            {
              v84 = v28;
            }
          }

          *(v44 + v48 + 1) = llroundf(v84);
          if (v41)
          {
            v61.i64[1] = v53;
            v85 = vbic_s8(vmul_s16(vmovn_s32(vshrq_n_u32(v61, 0x1EuLL)), 0x55005500550055), vceqd_s64(v41, 0));
            *v41 = v85.i8[4];
            v41[1] = v85.i8[6];
            v41 += 2;
            *v49 = v85.i8[0];
            v49[1] = v85.i8[2];
            v49 += 2;
          }

          v42 += 2;
          v50 += 2;
          v48 += 2;
        }

        while (v48 < v15);
      }

      v43 = &v45[v16];
      v42 = &v46[v19];
      v44 += v20;
      v41 = &v47[v21];
      v13 += 2;
    }

    while (v13 < v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a3;
  v65 = a8;
  v63 = a7;
  v70 = a4;
  v71 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v62 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v66 = *a2;
  v67 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v68 = v16;
  v69 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v60 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_65:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v59[-v25];
    bzero(&v59[-v25], v26);
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
    if (v60 || (v38 = v35 + 1 + v36, *v70 * v38 > *v71) || v70[1] * v38 > v71[1] || (v39 = v34 + 1 + v37, (*v65 * v39) > *a9) || (v65[1] * (v39 / 2)) > a9[1] || (v65[2] * v39) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v68;
      ++v69;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v66)
  {
    v32 = v66 - v30;
  }

  if (v33 + v31 > v67)
  {
    v33 = v67 - v31;
  }

  if (v35 + v36 > v69)
  {
    v35 = v69 - v36;
  }

  if (v34 + v37 > v68)
  {
    v34 = v68 - v37;
  }

  if (v32 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v32;
  }

  if (v35 >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = v35;
  }

  v42 = v36 + v41 - 1;
  v43 = v42 * *v70 + 4 * (v40 + v30);
  v44 = *v71;
  v61 = v36;
  if (v43 > v44)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v64 + 8) && v40 + v30 + v70[1] * v42 > v71[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v48 = v41 + v37 - 1;
  v49 = v40 + v31;
  if ((*v65 * v48 + 2 * (v40 + v31)) > *a9)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v50 = v63;
  if (*(v63 + 8) && v65[1] * ((v41 + v37 + 1) / 2 - 1) + 4 * ((v49 + 1 + ((v49 + 1) >> 63)) >> 1) > a9[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v63 + 16) && (2 * v49 + v65[2] * v48) > a9[2])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
LABEL_58:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v50 = v63;
    v28 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v61;
    if (v24)
    {
      goto LABEL_64;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v66;
  v51 = v68;
  *(v23 + 12) = v69;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v51;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v52 = v70;
  v23[7] = v64;
  v23[8] = v52;
  v53 = v67;
  v23[9] = v71;
  v23[10] = v53;
  v23[15] = v37;
  v23[16] = v50;
  v23[17] = v65;
  v23[18] = v28;
  v23[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l10r_TRC_Tone_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v55 = (v23 + 20);
  v56 = v9;
  while (1)
  {
    v57 = *v55++;
    v24 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v24 = 0;
      break;
    }
  }

LABEL_64:
  if (v9 == 255)
  {
    goto LABEL_65;
  }

  return v24;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = 2 * *result;
  v7 = *(result + 13);
  v8 = v7 * a2 / v6;
  v9 = 2 * ((v7 + v7 * a2) / v6 - v8);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *(result + 19);
    v12 = *(result + 24) & 0xFFFFFFFE;
    v13 = **(result + 8);
    v14 = *(result + 16);
    v15 = *(result + 17);
    v16 = *v15;
    v17 = v15[1];
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    *&a6 = v18;
    LOWORD(v18) = *(v11 + 144);
    v20 = v18;
    LOWORD(v18) = *(v11 + 146);
    v21 = v18;
    LOWORD(v18) = *(v11 + 148);
    v22 = v18;
    LOWORD(v18) = *(v11 + 150);
    v23 = v18;
    v174 = v23;
    LOWORD(v23) = *(v11 + 152);
    v170 = *(v11 + 40);
    v171 = *(v11 + 36);
    v169 = *(v11 + 44);
    v167 = *(v11 + 52) * 0.25;
    v168 = *(v11 + 48) * 0.25;
    v165 = *(v11 + 60) * 0.25;
    v166 = *(v11 + 56) * 0.25;
    v163 = *(v11 + 72);
    v164 = *(v11 + 64) * 0.25;
    v161 = *(v11 + 76);
    v162 = *(v11 + 68) * 0.25;
    v159 = *(v11 + 84);
    v160 = *(v11 + 80);
    v157 = *(v11 + 92);
    v158 = *(v11 + 88);
    v155 = *(v11 + 100);
    v156 = *(v11 + 96);
    v154 = *(v11 + 104);
    v24 = v11 + 164;
    v25 = v11 + 16548;
    v26 = v11 + 32932;
    v27 = *(v11 + 108);
    v28 = *(v11 + 112);
    v29 = *(v11 + 116);
    v30 = *(v11 + 120);
    v31 = *(result + 14);
    v32 = *(result + 15) + 2 * v8;
    v33 = *v14;
    v34 = v14[1];
    v35 = (v33 + v16 * v32 + 2 * v31);
    v36 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v6)) * v13 + 4 * *(result + 36));
    LODWORD(v11) = *(v11 + 132);
    v37 = 16 - v11;
    if (v11 >= 0x11)
    {
      v37 = 0;
    }

    v38 = v34 + v17 * (v32 / 2) + 2 * v31;
    v39 = vdup_lane_s32(*&a6, 0);
    v172 = LODWORD(v23);
    v173 = v21;
    v152 = v28;
    v153 = v27;
    v150 = v30;
    v151 = v29;
    do
    {
      v40 = v36 + v13;
      v41 = &v35[v16];
      if (v12 >= 1)
      {
        v42 = 0;
        v43 = &v35[v16];
        v44 = (v36 + v13);
        do
        {
          v45 = v36[1];
          v46 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v36), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v39), v19), 0), v46)));
          _D0.i16[0] = *(v24 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v24 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v36;
          _D0.i32[1] = v45 >> 20;
          v54 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v39), v19), 0), v46)));
          _H3 = *(v24 + 2 * v54.u32[0]);
          __asm { FCVT            S22, H3 }

          v57 = fmaxf(_S19, fmaxf(_S20, _S22));
          v58 = (((v28 * _S20) + (v27 * _S19)) + (v29 * _S22)) + (v30 * v57);
          v59 = 8191.0;
          if (v58 <= 8191.0)
          {
            v59 = (((v28 * _S20) + (v27 * _S19)) + (v29 * _S22)) + (v30 * v57);
            if (v58 < 0.0)
            {
              v59 = 0.0;
            }
          }

          _H0 = *(v24 + 2 * v54.u32[1]);
          __asm { FCVT            S5, H0 }

          v62.i32[0] = v45 >> 10;
          v62.i32[1] = v36[1];
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v62, 0x300000003)), v39), v19), 0), v46)));
          _D0.i16[0] = *(v24 + 2 * _D0.u32[0]);
          __asm { FCVT            S3, H0 }

          _D0.i16[0] = *(v24 + 2 * _D0.u32[1]);
          __asm { FCVT            S14, H0 }

          v66 = fmaxf(_S5, fmaxf(_S3, _S14));
          v67 = (((v28 * _S3) + (v27 * _S5)) + (v29 * _S14)) + (v30 * v66);
          v68 = 8191.0;
          if (v67 <= 8191.0)
          {
            v68 = (((v28 * _S3) + (v27 * _S5)) + (v29 * _S14)) + (v30 * v66);
            if (v67 < 0.0)
            {
              v68 = 0.0;
            }
          }

          v69 = v44[1];
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v44), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v39), v19), 0), v46)));
          _D0.i16[0] = *(v24 + 2 * _D0.u32[0]);
          __asm { FCVT            S15, H0 }

          _D0.i16[0] = *(v24 + 2 * _D0.u32[1]);
          __asm { FCVT            S16, H0 }

          _D0.i32[0] = *v44;
          _D0.i32[1] = v69 >> 20;
          v73 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v39), v19), 0), v46)));
          _D0.i16[0] = *(v24 + 2 * v73.u32[0]);
          __asm { FCVT            S17, H0 }

          v75 = (((v28 * _S16) + (v27 * _S15)) + (v29 * _S17)) + (v30 * fmaxf(_S15, fmaxf(_S16, _S17)));
          v76 = 8191.0;
          if (v75 <= 8191.0)
          {
            v76 = v75;
            if (v75 < 0.0)
            {
              v76 = 0.0;
            }
          }

          _H6 = *(v24 + 2 * v73.u32[1]);
          __asm { FCVT            S6, H6 }

          v79.i32[0] = v69 >> 10;
          v79.i32[1] = v44[1];
          _D21 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v79, 0x300000003)), v39), v19), 0), v46)));
          _D21.i16[0] = *(v24 + 2 * _D21.u32[0]);
          __asm { FCVT            S26, H21 }

          _D21.i16[0] = *(v24 + 2 * _D21.u32[1]);
          __asm { FCVT            S27, H21 }

          _D21.i16[0] = *(v25 + 2 * llroundf(v59));
          __asm { FCVT            S21, H21 }

          v83 = _S19 * *_D21.i32;
          v84 = _S20 * *_D21.i32;
          v85 = _S22 * *_D21.i32;
          _H7 = *(v25 + 2 * llroundf(v68));
          __asm { FCVT            S7, H7 }

          v88 = _S5 * _S7;
          v89 = _S3 * _S7;
          v90 = _S14 * _S7;
          _H0 = *(v25 + 2 * llroundf(v76));
          __asm { FCVT            S0, H0 }

          v93 = _S15 * _S0;
          v94 = _S16 * _S0;
          v95 = _S17 * _S0;
          v96 = (((v28 * _S26) + (v27 * _S6)) + (v29 * _S27)) + (v30 * fmaxf(_S6, fmaxf(_S26, _S27)));
          v97 = 8191.0;
          if (v96 <= 8191.0)
          {
            v97 = v96;
            if (v96 < 0.0)
            {
              v97 = 0.0;
            }
          }

          _H0 = *(v25 + 2 * llroundf(v97));
          __asm { FCVT            S0, H0 }

          v100 = _S6 * _S0;
          _S16 = _S26 * _S0;
          _S0 = _S27 * _S0;
          _S17 = ((v161 * v84) + (v83 * v163)) + (v85 * v160);
          v104 = ((v158 * v84) + (v83 * v159)) + (v85 * v157);
          v105 = ((v155 * v84) + (v83 * v156)) + (v85 * v154);
          v106 = ((v161 * v89) + (v88 * v163)) + (v90 * v160);
          v107 = ((v158 * v89) + (v88 * v159)) + (v90 * v157);
          v108 = ((v155 * v89) + (v88 * v156)) + (v90 * v154);
          v109 = ((v161 * v94) + (v93 * v163)) + (v95 * v160);
          v110 = ((v158 * v94) + (v93 * v159)) + (v95 * v157);
          v111 = ((v155 * v94) + (v93 * v156)) + (v95 * v154);
          v112 = ((v161 * _S16) + (v100 * v163)) + (_S0 * v160);
          v113 = ((v158 * _S16) + (v100 * v159)) + (_S0 * v157);
          v114 = ((v155 * _S16) + (v100 * v156)) + (_S0 * v154);
          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(_S17, 0.0), 8191.0)));
          __asm { FCVT            S3, H0 }

          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(v104, 0.0), 8191.0)));
          __asm { FCVT            S5, H0 }

          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(v105, 0.0), 8191.0)));
          _H7 = *(v26 + 2 * llroundf(fminf(fmaxf(v106, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H0
            FCVT            S7, H7
          }

          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(v107, 0.0), 8191.0)));
          __asm { FCVT            S21, H0 }

          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(v108, 0.0), 8191.0)));
          __asm { FCVT            S20, H0 }

          LOWORD(_S0) = *(v26 + 2 * llroundf(fminf(fmaxf(v109, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S16) = *(v26 + 2 * llroundf(fminf(fmaxf(v110, 0.0), 8191.0)));
          __asm { FCVT            S14, H16 }

          LOWORD(_S16) = *(v26 + 2 * llroundf(fminf(fmaxf(v111, 0.0), 8191.0)));
          LOWORD(_S17) = *(v26 + 2 * llroundf(fminf(fmaxf(v112, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H16
            FCVT            S15, H17
          }

          LOWORD(_S16) = *(v26 + 2 * llroundf(fminf(fmaxf(v113, 0.0), 8191.0)));
          v126 = llroundf(fminf(fmaxf(v114, 0.0), 8191.0));
          __asm { FCVT            S6, H16 }

          LOWORD(_S16) = *(v26 + 2 * v126);
          __asm { FCVT            S16, H16 }

          v129 = (((v170 * _S5) + (v171 * _S3)) + (v169 * _S19)) + v20;
          if (v129 < v20)
          {
            v130 = v20;
          }

          else
          {
            v130 = (((v170 * _S5) + (v171 * _S3)) + (v169 * _S19)) + v20;
          }

          v131 = v129 <= v22;
          v132 = (((v170 * _S21) + (v171 * _S7)) + (v169 * _S20)) + v20;
          if (!v131)
          {
            v130 = v22;
          }

          v133 = llroundf(v130);
          if (v132 < v20)
          {
            v134 = v20;
          }

          else
          {
            v134 = (((v170 * _S21) + (v171 * _S7)) + (v169 * _S20)) + v20;
          }

          v131 = v132 <= v22;
          v135 = (((v170 * _S14) + (v171 * _S0)) + (v169 * _S22)) + v20;
          if (!v131)
          {
            v134 = v22;
          }

          v136 = llroundf(v134);
          if (v135 < v20)
          {
            v137 = v20;
          }

          else
          {
            v137 = (((v170 * _S14) + (v171 * _S0)) + (v169 * _S22)) + v20;
          }

          v131 = v135 <= v22;
          v138 = (((v170 * _S6) + (v171 * _S15)) + (v169 * _S16)) + v20;
          if (!v131)
          {
            v137 = v22;
          }

          v139 = llroundf(v137);
          if (v138 < v20)
          {
            v140 = v20;
          }

          else
          {
            v140 = (((v170 * _S6) + (v171 * _S15)) + (v169 * _S16)) + v20;
          }

          if (v138 <= v22)
          {
            v141 = v140;
          }

          else
          {
            v141 = v22;
          }

          v142 = ((_S3 + _S7) + _S0) + _S15;
          v143 = ((_S5 + _S21) + _S14) + _S6;
          *v35 = v133 << v37;
          *(v35 + 1) = v136 << v37;
          *v43 = v139 << v37;
          *(v43 + 1) = llroundf(v141) << v37;
          v144 = ((_S19 + _S20) + _S22) + _S16;
          v145 = ((v173 + (v142 * v168)) + (v143 * v167)) + (v144 * v166);
          v146 = v172;
          if (v145 <= v172)
          {
            v146 = ((v173 + (v142 * v168)) + (v143 * v167)) + (v144 * v166);
            if (v145 < v174)
            {
              v146 = v174;
            }
          }

          v147 = (v38 + 2 * v42);
          v148 = ((v173 + (v142 * v165)) + (v143 * v164)) + (v144 * v162);
          *v147 = llroundf(v146) << v37;
          v149 = v172;
          if (v148 <= v172)
          {
            v149 = v148;
            if (v148 < v174)
            {
              v149 = v174;
            }
          }

          v36 += 2;
          v44 += 2;
          v35 += 4;
          v43 += 4;
          v147[1] = llroundf(v149) << v37;
          v42 += 2;
          v28 = v152;
          v27 = v153;
          v30 = v150;
          v29 = v151;
        }

        while (v42 < v12);
      }

      v36 = &v40[v13];
      v35 = &v41[v16];
      v38 += v17;
      v10 += 2;
    }

    while (v10 < v9);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a3;
  v65 = a8;
  v63 = a7;
  v70 = a4;
  v71 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v62 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v66 = *a2;
  v67 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v68 = v16;
  v69 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v60 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_65:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v59[-v25];
    bzero(&v59[-v25], v26);
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
    if (v60 || (v38 = v35 + 1 + v36, *v70 * v38 > *v71) || v70[1] * v38 > v71[1] || (v39 = v34 + 1 + v37, (*v65 * v39) > *a9) || (v65[1] * (v39 / 2)) > a9[1] || (v65[2] * v39) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v68;
      ++v69;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v66)
  {
    v32 = v66 - v30;
  }

  if (v33 + v31 > v67)
  {
    v33 = v67 - v31;
  }

  if (v35 + v36 > v69)
  {
    v35 = v69 - v36;
  }

  if (v34 + v37 > v68)
  {
    v34 = v68 - v37;
  }

  if (v32 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v32;
  }

  if (v35 >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = v35;
  }

  v42 = v36 + v41 - 1;
  v43 = v42 * *v70 + 4 * (v40 + v30);
  v44 = *v71;
  v61 = v36;
  if (v43 > v44)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v64 + 8) && v40 + v30 + v70[1] * v42 > v71[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v48 = v41 + v37 - 1;
  v49 = v40 + v31;
  if ((*v65 * v48 + 2 * (v40 + v31)) > *a9)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v50 = v63;
  if (*(v63 + 8) && v65[1] * ((v41 + v37 + 1) / 2 - 1) + 4 * ((v49 + 1 + ((v49 + 1) >> 63)) >> 1) > a9[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v63 + 16) && (2 * v49 + v65[2] * v48) > a9[2])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
LABEL_58:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v50 = v63;
    v28 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v61;
    if (v24)
    {
      goto LABEL_64;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v66;
  v51 = v68;
  *(v23 + 12) = v69;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v51;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v52 = v70;
  v23[7] = v64;
  v23[8] = v52;
  v53 = v67;
  v23[9] = v71;
  v23[10] = v53;
  v23[15] = v37;
  v23[16] = v50;
  v23[17] = v65;
  v23[18] = v28;
  v23[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l10r_TRC_Mat_TRC_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v55 = (v23 + 20);
  v56 = v9;
  while (1)
  {
    v57 = *v55++;
    v24 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v24 = 0;
      break;
    }
  }

LABEL_64:
  if (v9 == 255)
  {
    goto LABEL_65;
  }

  return v24;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, double a6, float a7, float a8)
{
  v8 = 2 * *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = 2 * ((v9 + v9 * a2) / v8 - v10);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 19);
    v14 = *(result + 24) & 0xFFFFFFFE;
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v112 = 8191.0 / *(v13 + 128);
    LOWORD(a5) = *(v13 + 140);
    *&a6 = LODWORD(a5);
    LOWORD(a5) = *(v13 + 144);
    v20 = LODWORD(a5);
    LOWORD(a7) = *(v13 + 146);
    v21 = LODWORD(a7);
    LOWORD(a7) = *(v13 + 148);
    v22 = LODWORD(a7);
    LOWORD(a8) = *(v13 + 150);
    v23 = LODWORD(a8);
    LOWORD(a8) = *(v13 + 152);
    v132 = LODWORD(a8);
    v130 = *(v13 + 36);
    v131 = v23;
    v128 = *(v13 + 44);
    v129 = *(v13 + 40);
    v126 = *(v13 + 52) * 0.25;
    v127 = *(v13 + 48) * 0.25;
    v124 = *(v13 + 60) * 0.25;
    v125 = *(v13 + 56) * 0.25;
    v122 = *(v13 + 72);
    v123 = *(v13 + 64) * 0.25;
    v120 = *(v13 + 76);
    v121 = *(v13 + 68) * 0.25;
    v118 = *(v13 + 84);
    v119 = *(v13 + 80);
    v116 = *(v13 + 92);
    v117 = *(v13 + 88);
    v114 = *(v13 + 100);
    v115 = *(v13 + 96);
    v113 = *(v13 + 104);
    v24 = v13 + 164;
    v25 = v13 + 16548;
    v26 = *(result + 14);
    v27 = *(result + 15) + 2 * v10;
    v29 = *v16;
    v28 = v16[1];
    v30 = (v29 + v18 * v27 + 2 * v26);
    v31 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v8)) * v15 + 4 * *(result + 36));
    LODWORD(v13) = *(v13 + 132);
    v32 = 16 - v13;
    if (v13 >= 0x11)
    {
      v32 = 0;
    }

    v33 = v28 + v19 * (v27 / 2) + 2 * v26;
    v34 = v32;
    v35 = vdup_lane_s32(*&a6, 0);
    v36 = vdup_n_s32(0x45FFF800u);
    do
    {
      v37 = v31 + v15;
      v38 = &v30[v18];
      if (v14 >= 1)
      {
        v39 = 0;
        v40 = (v31 + v15);
        v41 = &v30[v18];
        do
        {
          v42 = v31[1];
          v43 = v40[1];
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v31), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v35), v112), 0), v36)));
          _D3.i16[0] = *(v24 + 2 * _D3.u32[0]);
          __asm { FCVT            S15, H3 }

          _D3.i16[0] = *(v24 + 2 * _D3.u32[1]);
          v50.i32[0] = *v31;
          v50.i32[1] = v42 >> 20;
          _D5 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v50, 0x300000003)), v35), v112), 0), v36)));
          __asm { FCVT            S19, H3 }

          _D3.i16[0] = *(v24 + 2 * _D5.u32[0]);
          _D5.i16[0] = *(v24 + 2 * _D5.u32[1]);
          __asm
          {
            FCVT            S20, H3
            FCVT            S18, H5
          }

          _D3.i32[0] = v42 >> 10;
          _D3.i32[1] = v42;
          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D3, 0x300000003)), v35), v112), 0), v36)));
          _D3.i16[0] = *(v24 + 2 * _D3.u32[0]);
          __asm { FCVT            S5, H3 }

          _D3.i16[0] = *(v24 + 2 * _D3.u32[1]);
          __asm { FCVT            S21, H3 }

          _D3 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v40), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v35), v112), 0), v36)));
          _D3.i16[0] = *(v24 + 2 * _D3.u32[0]);
          __asm { FCVT            S3, H3 }

          _H22 = *(v24 + 2 * _D3.u32[1]);
          v59.i32[0] = *v40;
          v59.i32[1] = v43 >> 20;
          _D24 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v59, 0x300000003)), v35), v112), 0), v36)));
          __asm { FCVT            S22, H22 }

          _D24.i16[0] = *(v24 + 2 * _D24.u32[0]);
          _H10 = *(v24 + 2 * _D24.u32[1]);
          __asm
          {
            FCVT            S24, H24
            FCVT            S10, H10
          }

          v64.i32[0] = v43 >> 10;
          v64.i32[1] = v43;
          _D11 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v64, 0x300000003)), v35), v112), 0), v36)));
          _D11.i16[0] = *(v24 + 2 * _D11.u32[0]);
          __asm { FCVT            S11, H11 }

          _H12 = *(v24 + 2 * _D11.u32[1]);
          __asm { FCVT            S12, H12 }

          _S7 = ((v120 * _S19) + (_S15 * v122)) + (_S20 * v119);
          v69 = ((v117 * _S19) + (_S15 * v118)) + (_S20 * v116);
          v70 = ((v114 * _S19) + (_S15 * v115)) + (_S20 * v113);
          v71 = ((v120 * *_D5.i32) + (_S18 * v122)) + (_S21 * v119);
          v72 = ((v117 * *_D5.i32) + (_S18 * v118)) + (_S21 * v116);
          *_D5.i32 = ((v114 * *_D5.i32) + (_S18 * v115)) + (_S21 * v113);
          _S6 = ((v120 * _S22) + (*_D3.i32 * v122)) + (*_D24.i32 * v119);
          v74 = ((v117 * _S22) + (*_D3.i32 * v118)) + (*_D24.i32 * v116);
          *_D24.i32 = ((v114 * _S22) + (*_D3.i32 * v115)) + (*_D24.i32 * v113);
          v75 = ((v120 * *_D11.i32) + (_S10 * v122)) + (_S12 * v119);
          v76 = ((v117 * *_D11.i32) + (_S10 * v118)) + (_S12 * v116);
          v77 = ((v114 * *_D11.i32) + (_S10 * v115)) + (_S12 * v113);
          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(_S7, 0.0), 8191.0)));
          __asm { FCVT            S15, H3 }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S18, H3 }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          LOWORD(_S7) = *(v25 + 2 * llroundf(fminf(fmaxf(v71, 0.0), 8191.0)));
          __asm
          {
            FCVT            S19, H3
            FCVT            S20, H7
          }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(v72, 0.0), 8191.0)));
          __asm { FCVT            S22, H3 }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(*_D5.i32, 0.0), 8191.0)));
          __asm { FCVT            S21, H3 }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(_S6, 0.0), 8191.0)));
          __asm { FCVT            S5, H3 }

          _D3.i16[0] = *(v25 + 2 * llroundf(fminf(fmaxf(v74, 0.0), 8191.0)));
          __asm { FCVT            S3, H3 }

          LOWORD(_S6) = *(v25 + 2 * llroundf(fminf(fmaxf(*_D24.i32, 0.0), 8191.0)));
          LOWORD(_S7) = *(v25 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H6
            FCVT            S11, H7
          }

          LOWORD(_S6) = *(v25 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          __asm { FCVT            S12, H6 }

          LOWORD(_S6) = *(v25 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm { FCVT            S10, H6 }

          v90 = (((v129 * _S18) + (v130 * _S15)) + (v128 * _S19)) + v20;
          if (v90 < v20)
          {
            v91 = v20;
          }

          else
          {
            v91 = (((v129 * _S18) + (v130 * _S15)) + (v128 * _S19)) + v20;
          }

          v92 = v90 <= v22;
          v93 = (((v129 * _S22) + (v130 * _S20)) + (v128 * _S21)) + v20;
          if (!v92)
          {
            v91 = v22;
          }

          v94 = llroundf(v91);
          if (v93 < v20)
          {
            v95 = v20;
          }

          else
          {
            v95 = (((v129 * _S22) + (v130 * _S20)) + (v128 * _S21)) + v20;
          }

          v92 = v93 <= v22;
          v96 = (((v129 * _S3) + (v130 * _S5)) + (v128 * _S24)) + v20;
          if (!v92)
          {
            v95 = v22;
          }

          v97 = llroundf(v95);
          if (v96 < v20)
          {
            v98 = v20;
          }

          else
          {
            v98 = (((v129 * _S3) + (v130 * _S5)) + (v128 * _S24)) + v20;
          }

          v92 = v96 <= v22;
          v99 = (((v129 * _S12) + (v130 * _S11)) + (v128 * _S10)) + v20;
          if (!v92)
          {
            v98 = v22;
          }

          v100 = llroundf(v98);
          if (v99 < v20)
          {
            v101 = v20;
          }

          else
          {
            v101 = (((v129 * _S12) + (v130 * _S11)) + (v128 * _S10)) + v20;
          }

          if (v99 <= v22)
          {
            v102 = v101;
          }

          else
          {
            v102 = v22;
          }

          v103 = ((_S15 + _S20) + _S5) + _S11;
          v104 = ((_S18 + _S22) + _S3) + _S12;
          *v30 = v94 << v34;
          *(v30 + 1) = v97 << v34;
          *v41 = v100 << v34;
          *(v41 + 1) = llroundf(v102) << v34;
          v105 = (_S19 + _S21) + _S24;
          v106 = v132;
          v107 = v105 + _S10;
          v108 = ((v21 + (v103 * v127)) + (v104 * v126)) + ((v105 + _S10) * v125);
          if (v108 <= v132)
          {
            v106 = ((v21 + (v103 * v127)) + (v104 * v126)) + (v107 * v125);
            if (v108 < v131)
            {
              v106 = v131;
            }
          }

          v109 = (v33 + 2 * v39);
          v110 = ((v21 + (v103 * v124)) + (v104 * v123)) + (v107 * v121);
          *v109 = llroundf(v106) << v34;
          v111 = v132;
          if (v110 <= v132)
          {
            v111 = v110;
            if (v110 < v131)
            {
              v111 = v131;
            }
          }

          v31 += 2;
          v40 += 2;
          v30 += 4;
          v41 += 4;
          v109[1] = llroundf(v111) << v34;
          v39 += 2;
        }

        while (v39 < v14);
      }

      v31 = &v37[v15];
      v30 = &v38[v18];
      v33 += v19;
      v12 += 2;
    }

    while (v12 < v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_xf420(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v64 = a3;
  v65 = a8;
  v63 = a7;
  v70 = a4;
  v71 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v62 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v66 = *a2;
  v67 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v68 = v16;
  v69 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v60 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_65:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v59[-v25];
    bzero(&v59[-v25], v26);
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
    if (v60 || (v38 = v35 + 1 + v36, *v70 * v38 > *v71) || v70[1] * v38 > v71[1] || (v39 = v34 + 1 + v37, (*v65 * v39) > *a9) || (v65[1] * (v39 / 2)) > a9[1] || (v65[2] * v39) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v68;
      ++v69;
      ++v35;
      ++v34;
    }
  }

  if (v32 + v30 > v66)
  {
    v32 = v66 - v30;
  }

  if (v33 + v31 > v67)
  {
    v33 = v67 - v31;
  }

  if (v35 + v36 > v69)
  {
    v35 = v69 - v36;
  }

  if (v34 + v37 > v68)
  {
    v34 = v68 - v37;
  }

  if (v32 >= v33)
  {
    v40 = v33;
  }

  else
  {
    v40 = v32;
  }

  if (v35 >= v34)
  {
    v41 = v34;
  }

  else
  {
    v41 = v35;
  }

  v42 = v36 + v41 - 1;
  v43 = v42 * *v70 + 4 * (v40 + v30);
  v44 = *v71;
  v61 = v36;
  if (v43 > v44)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v64 + 8) && v40 + v30 + v70[1] * v42 > v71[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v48 = v41 + v37 - 1;
  v49 = v40 + v31;
  if ((*v65 * v48 + 2 * (v40 + v31)) > *a9)
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  v50 = v63;
  if (*(v63 + 8) && v65[1] * ((v41 + v37 + 1) / 2 - 1) + 4 * ((v49 + 1 + ((v49 + 1) >> 63)) >> 1) > a9[1])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
    goto LABEL_58;
  }

  if (*(v63 + 16) && (2 * v49 + v65[2] * v48) > a9[2])
  {
    v45 = v30;
    v46 = v31;
    v47 = a9;
LABEL_58:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v50 = v63;
    v28 = v47;
    v31 = v46;
    v30 = v45;
    v36 = v61;
    if (v24)
    {
      goto LABEL_64;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v66;
  v51 = v68;
  *(v23 + 12) = v69;
  *(v23 + 20) = v40;
  *(v23 + 28) = v41;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v51;
  v23[12] = v40;
  v23[13] = v41;
  v23[14] = v31;
  v52 = v70;
  v23[7] = v64;
  v23[8] = v52;
  v53 = v67;
  v23[9] = v71;
  v23[10] = v53;
  v23[15] = v37;
  v23[16] = v50;
  v23[17] = v65;
  v23[18] = v28;
  v23[19] = v62;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_l10r_rgb_xf420_GCD);
  if (!v9)
  {
    return 0;
  }

  v55 = (v23 + 20);
  v56 = v9;
  while (1)
  {
    v57 = *v55++;
    v24 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v24 = 0;
      break;
    }
  }

LABEL_64:
  if (v9 == 255)
  {
    goto LABEL_65;
  }

  return v24;
}

unsigned __int8 *vt_Copy_l10r_rgb_xf420_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = 2 * *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = 2 * ((v10 + v10 * a2) / v9 - v11);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v18 = *(result + 16);
    v17 = *(result + 17);
    v19 = *v17;
    v20 = v17[1];
    *&v21 = *(v14 + 136);
    v22 = *&v21 / *(v14 + 128);
    LOWORD(v21) = *(v14 + 140);
    v23 = v21;
    LOWORD(a5) = *(v14 + 144);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v27 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v28 = LODWORD(a9);
    v29 = *(v14 + 36);
    v30 = *(v14 + 40);
    v31 = *(v14 + 44);
    v83 = *(v14 + 48) * 0.25;
    v32 = *(v14 + 52) * 0.25;
    v33 = *(v14 + 56) * 0.25;
    v34 = *(v14 + 60) * 0.25;
    v35 = *(v14 + 64) * 0.25;
    v36 = *(v14 + 68) * 0.25;
    v37 = *(result + 14);
    v38 = *(result + 15) + 2 * v11;
    v39 = *v18;
    v40 = v18[1];
    v41 = (v39 + v19 * v38 + 2 * v37);
    v42 = (**(result + 7) + (*(result + 44) + 2 * (*(result + 28) * a2 / v9)) * v16 + 4 * *(result + 36));
    LODWORD(v14) = *(v14 + 132);
    v43 = 16 - v14;
    if (v14 >= 0x11)
    {
      v43 = 0;
    }

    v44 = v40 + v20 * (v38 / 2) + 2 * v37;
    v45 = v43;
    do
    {
      v46 = &v42[v16];
      v47 = &v41[v19];
      if (v15 >= 1)
      {
        v48 = 0;
        v49 = &v42[v16];
        v50 = &v41[v19];
        do
        {
          v51 = *(v42 + 1);
          v52 = ((v51 >> 10) & 0x3FF);
          v53 = ((v51 >> 20) & 0x3FF);
          v54 = *(v49 + 1);
          v55 = v22 * ((*v42 & 0x3FF) - v23);
          v56 = v22 * (((*v42 >> 10) & 0x3FF) - v23);
          v57 = v22 * (((*v42 >> 20) & 0x3FF) - v23);
          v58 = v22 * ((*(v42 + 1) & 0x3FF) - v23);
          v59 = v22 * (v52 - v23);
          v60 = v22 * (v53 - v23);
          v61 = v22 * ((*v49 & 0x3FF) - v23);
          v62 = v22 * (((*v49 >> 10) & 0x3FF) - v23);
          v63 = v22 * (((*v49 >> 20) & 0x3FF) - v23);
          v64 = v22 * ((v54 & 0x3FF) - v23);
          v65 = v22 * (((v54 >> 10) & 0x3FF) - v23);
          v66 = v22 * (((v54 >> 20) & 0x3FF) - v23);
          v67 = (((v30 * v56) + (v29 * v57)) + (v31 * v55)) + v24;
          v68 = (((v30 * v59) + (v29 * v60)) + (v31 * v58)) + v24;
          v69 = (((v30 * v62) + (v29 * v63)) + (v31 * v61)) + v24;
          v70 = (((v30 * v65) + (v29 * v66)) + (v31 * v64)) + v24;
          if (v67 < v24)
          {
            v71 = v24;
          }

          else
          {
            v71 = (((v30 * v56) + (v29 * v57)) + (v31 * v55)) + v24;
          }

          if (v67 > v26)
          {
            v71 = v26;
          }

          *v41 = llroundf(v71) << v45;
          if (v68 < v24)
          {
            v72 = v24;
          }

          else
          {
            v72 = (((v30 * v59) + (v29 * v60)) + (v31 * v58)) + v24;
          }

          if (v68 > v26)
          {
            v72 = v26;
          }

          *(v41 + 1) = llroundf(v72) << v45;
          if (v69 < v24)
          {
            v73 = v24;
          }

          else
          {
            v73 = (((v30 * v62) + (v29 * v63)) + (v31 * v61)) + v24;
          }

          if (v69 > v26)
          {
            v73 = v26;
          }

          *v50 = llroundf(v73) << v45;
          if (v70 < v24)
          {
            v74 = v24;
          }

          else
          {
            v74 = (((v30 * v65) + (v29 * v66)) + (v31 * v64)) + v24;
          }

          if (v70 > v26)
          {
            v74 = v26;
          }

          *(v50 + 1) = llroundf(v74) << v45;
          v75 = ((v57 + v60) + v63) + v66;
          v76 = ((v56 + v59) + v62) + v65;
          v77 = ((v55 + v58) + v61) + v64;
          v78 = ((v25 + (v75 * v83)) + (v76 * v32)) + (v77 * v33);
          v79 = v28;
          if (v78 <= v28)
          {
            v79 = ((v25 + (v75 * v83)) + (v76 * v32)) + (v77 * v33);
            if (v78 < v27)
            {
              v79 = v27;
            }
          }

          v80 = (v44 + 2 * v48);
          v81 = ((v25 + (v75 * v34)) + (v76 * v35)) + (v77 * v36);
          *v80 = llroundf(v79) << v45;
          v82 = v28;
          if (v81 <= v28)
          {
            v82 = v81;
            if (v81 < v27)
            {
              v82 = v27;
            }
          }

          v42 += 8;
          v49 += 8;
          v41 += 4;
          v50 += 4;
          v80[1] = llroundf(v82) << v45;
          v48 += 2;
        }

        while (v48 < v15);
      }

      v42 = &v46[v16];
      v41 = &v47[v19];
      v44 += v20;
      v13 += 2;
    }

    while (v13 < v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v63 = a7;
  v64 = a8;
  v70 = a5;
  v72 = a4;
  v65 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v62 = a2[3];
  v14 = a2[4];
  v67 = a2[5];
  v68 = v11;
  v15 = *a6;
  v66 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v18 = a6[4];
  v71 = a6[5];
  v69 = v15;
  v20 = v14 + v13 != v12 || v18 + v16 != v15;
  if (v10 == 255)
  {
    v21 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v21)
    {
      v22 = 0;
LABEL_63:
      free(v21);
      return v22;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v21 = (&v59 - v23);
    bzero(&v59 - v23, v24);
  }

  v61 = a1;
  v25 = a9;
  v26 = v16 - 1;
  v27 = v13 - 1;
  if (v18)
  {
    v28 = v14 + 1;
  }

  else
  {
    v27 = v13;
    v28 = v14;
  }

  if (v18)
  {
    v29 = v18 + 1;
  }

  else
  {
    v26 = v16;
    v29 = v18;
  }

  if (v26)
  {
    if (v20 || (v30 = v27 + 1 + v28, *v72 < 4 * v30) || (v31 = v72[1], v30 > v31) && v31 || (v32 = v26 + 1 + v29, v32 > *v64) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v64[1] || (v33 = v64[2], v32 > v33) && v33)
    {
      --v26;
      --v27;
    }

    else
    {
      ++v69;
      ++v12;
      ++v27;
      ++v26;
    }
  }

  if (v27 + v28 > v12)
  {
    v27 = v12 - v28;
  }

  if (v26 + v29 > v69)
  {
    v26 = v69 - v29;
  }

  if (v67 + v62 <= v68)
  {
    v34 = v62;
  }

  else
  {
    v34 = v68 - v67;
  }

  if (v71 + v17 <= v66)
  {
    v35 = v17;
  }

  else
  {
    v35 = v66 - v71;
  }

  if (v27 >= v26)
  {
    v36 = v26;
  }

  else
  {
    v36 = v27;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  v38 = v67 + v37 - 1;
  v39 = *v72 * v38 + 4 * (v36 + v28);
  v40 = *v70;
  v41 = v64;
  v60 = v28;
  if (v39 <= v40)
  {
    if (*(v65 + 8) && v36 + v28 + v72[1] * v38 > v70[1])
    {
      v42 = v10;
      v43 = v64;
      v44 = v12;
      v45 = a9;
    }

    else
    {
      v46 = v71 + v37 - 1;
      v47 = v36 + v29;
      if (v36 + v29 + *v64 * v46 <= *a9)
      {
        v48 = v63;
        if (*(v63 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v64[1] * v46 > a9[1])
        {
          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }

        else
        {
          if (!*(v63 + 16) || v47 + v64[2] * v46 <= a9[2])
          {
            goto LABEL_57;
          }

          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }
      }

      else
      {
        v42 = v10;
        v43 = v64;
        v44 = v12;
        v45 = a9;
      }
    }
  }

  else
  {
    v42 = v10;
    v43 = v64;
    v44 = v12;
    v45 = a9;
  }

  fig_log_get_emitter();
  v49 = FigSignalErrorAtGM();
  v48 = v63;
  v25 = v45;
  v12 = v44;
  v41 = v43;
  v10 = v42;
  v28 = v60;
  if (v49)
  {
    v22 = v49;
    goto LABEL_62;
  }

LABEL_57:
  *v21 = v10;
  *(v21 + 4) = v12;
  v50 = v67;
  *(v21 + 12) = v68;
  *(v21 + 20) = v36;
  *(v21 + 28) = v37;
  *(v21 + 36) = v28;
  *(v21 + 44) = v50;
  v51 = v65;
  v21[11] = v66;
  v21[12] = v36;
  v21[13] = v37;
  v21[14] = v29;
  v52 = v72;
  v21[7] = v51;
  v21[8] = v52;
  v53 = v69;
  v21[9] = v70;
  v21[10] = v53;
  v21[15] = v71;
  v21[16] = v48;
  v21[17] = v41;
  v21[18] = v25;
  v21[19] = v61;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v21, vt_Copy_l10r_TRC_Tone_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v55 = (v21 + 20);
  v56 = v10;
  while (1)
  {
    v57 = *v55++;
    v22 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v22 = 0;
      break;
    }
  }

LABEL_62:
  if (v10 == 255)
  {
    goto LABEL_63;
  }

  return v22;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 19);
    v9 = *(result + 24) & 0xFFFFFFFE;
    v10 = **(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v8 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v8 + 140);
    *v2.i32 = v16;
    LOWORD(v16) = *(v8 + 144);
    v18 = v16;
    LOWORD(v16) = *(v8 + 146);
    v19 = v16;
    LOWORD(v16) = *(v8 + 148);
    v20 = v16;
    LOWORD(v16) = *(v8 + 150);
    v21 = v16;
    LOWORD(v16) = *(v8 + 152);
    v22 = v16;
    v23 = *(v8 + 40);
    v120 = *(v8 + 36);
    v121 = v21;
    v24 = *(v8 + 44);
    v118 = *(v8 + 52) * 0.5;
    v119 = *(v8 + 48) * 0.5;
    v116 = *(v8 + 60) * 0.5;
    v117 = *(v8 + 56) * 0.5;
    v25 = *(v8 + 72);
    v114 = *(v8 + 68) * 0.5;
    v115 = *(v8 + 64) * 0.5;
    v26 = *(v8 + 76);
    v27 = *(v8 + 80);
    v28 = *(v8 + 84);
    v29 = *(v8 + 88);
    v30 = *(v8 + 92);
    v31 = *(v8 + 96);
    v33 = *(v8 + 100);
    v32 = *(v8 + 104);
    v34 = v8 + 164;
    v35 = v8 + 16548;
    v36 = v8 + 32932;
    v37 = *(v8 + 108);
    v38 = *(v8 + 112);
    v39 = *(v8 + 116);
    v40 = *(v8 + 120);
    v41 = *(result + 14);
    v42 = v5 + *(result + 15);
    v43 = *(result + 28) * a2 / v3 + *(result + 44);
    v44 = v11[2];
    if (v44)
    {
      v45 = (v44 + v15 * v42 + v41);
    }

    else
    {
      v45 = 0;
    }

    v47 = *v11;
    v46 = *(*(result + 16) + 8);
    _ZF = v46 == 0;
    v49 = v46 + v14 * v42 + v41;
    if (_ZF)
    {
      v49 = 0;
    }

    v50 = (v47 + v13 * v42 + v41);
    v51 = **(result + 7) + v43 * v10 + 4 * *(result + 36);
    v52 = vdup_lane_s32(v2, 0);
    do
    {
      if (v9 >= 1)
      {
        v53 = 0;
        v54 = v45;
        v55 = v50;
        v56 = v51;
        do
        {
          v57 = v19;
          v58 = *v56;
          v59 = v56[1];
          v60 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v56), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v52), v17), 0), v60)));
          _D0.i16[0] = *(v34 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v34 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v56;
          _D0.i32[1] = v59 >> 20;
          v67 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v52), v17), 0), v60)));
          _D0.i16[0] = *(v34 + 2 * v67.u32[0]);
          __asm { FCVT            S21, H0 }

          v69 = (((v38 * _S20) + (v37 * _S19)) + (v39 * _S21)) + (v40 * fmaxf(_S19, fmaxf(_S20, _S21)));
          v70 = 8191.0;
          if (v69 <= 8191.0)
          {
            v70 = v69;
            if (v69 < 0.0)
            {
              v70 = 0.0;
            }
          }

          _H5 = *(v34 + 2 * v67.u32[1]);
          __asm { FCVT            S5, H5 }

          _D24.i32[0] = v59 >> 10;
          _D24.i32[1] = v56[1];
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D24, 0x300000003)), v52), v17), 0), v60)));
          _D22.i16[0] = *(v34 + 2 * _D22.u32[0]);
          __asm { FCVT            S22, H22 }

          _D24.i16[0] = *(v34 + 2 * _D22.u32[1]);
          __asm { FCVT            S14, H24 }

          v77 = (((v38 * _S22) + (v37 * _S5)) + (v39 * _S14)) + (v40 * fmaxf(_S5, fmaxf(_S22, _S14)));
          v78 = 8191.0;
          if (v77 <= 8191.0)
          {
            v78 = v77;
            if (v77 < 0.0)
            {
              v78 = 0.0;
            }
          }

          _H0 = *(v35 + 2 * llroundf(v70));
          __asm { FCVT            S0, H0 }

          v81 = _S19 * _S0;
          v82 = _S20 * _S0;
          v83 = _S21 * _S0;
          _H21 = *(v35 + 2 * llroundf(v78));
          __asm { FCVT            S21, H21 }

          v86 = _S5 * _S21;
          _S22 = _S22 * _S21;
          _S21 = _S14 * _S21;
          v89 = ((v26 * v82) + (v81 * v25)) + (v83 * v27);
          v90 = ((v29 * v82) + (v81 * v28)) + (v83 * v30);
          _S0 = ((v33 * v82) + (v81 * v31)) + (v83 * v32);
          v92 = ((v26 * _S22) + (v86 * v25)) + (_S21 * v27);
          _S20 = ((v29 * _S22) + (v86 * v28)) + (_S21 * v30);
          _S5 = ((v33 * _S22) + (v86 * v31)) + (_S21 * v32);
          LOWORD(_S21) = *(v36 + 2 * llroundf(fminf(fmaxf(v89, 0.0), 8191.0)));
          LOWORD(_S22) = *(v36 + 2 * llroundf(fminf(fmaxf(v90, 0.0), 8191.0)));
          __asm
          {
            FCVT            S21, H21
            FCVT            S22, H22
          }

          LOWORD(_S0) = *(v36 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          v97 = llroundf(fminf(fmaxf(v92, 0.0), 8191.0));
          __asm { FCVT            S19, H0 }

          LOWORD(_S0) = *(v36 + 2 * v97);
          __asm { FCVT            S0, H0 }

          LOWORD(_S20) = *(v36 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          LOWORD(_S5) = *(v36 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S24, H5 }

          v102 = (((v23 * _S22) + (v120 * _S21)) + (v24 * _S19)) + v18;
          v103 = (((v23 * _S20) + (v120 * _S0)) + (v24 * _S24)) + v18;
          if (v102 < v18)
          {
            v104 = v18;
          }

          else
          {
            v104 = (((v23 * _S22) + (v120 * _S21)) + (v24 * _S19)) + v18;
          }

          if (v102 <= v20)
          {
            v105 = v104;
          }

          else
          {
            v105 = v20;
          }

          *v55 = llroundf(v105);
          if (v103 < v18)
          {
            v106 = v18;
          }

          else
          {
            v106 = (((v23 * _S20) + (v120 * _S0)) + (v24 * _S24)) + v18;
          }

          if (v103 > v20)
          {
            v106 = v20;
          }

          v55[1] = llroundf(v106);
          v107 = _S21 + _S0;
          v19 = v57;
          v108 = _S22 + _S20;
          v109 = _S19 + _S24;
          v110 = ((v57 + (v107 * v119)) + ((_S22 + _S20) * v118)) + (v109 * v117);
          v111 = v22;
          if (v110 <= v22)
          {
            v111 = v110;
            if (v110 < v121)
            {
              v111 = v121;
            }
          }

          v112 = ((v57 + (v107 * v116)) + (v108 * v115)) + (v109 * v114);
          *(v49 + v53) = llroundf(v111);
          v113 = v22;
          if (v112 <= v22)
          {
            v113 = v112;
            if (v112 < v121)
            {
              v113 = v121;
            }
          }

          *(v49 + v53 + 1) = llroundf(v113);
          if (v54)
          {
            *v54 = 85 * (v58 >> 30);
            v54[1] = 85 * (v59 >> 30);
            v54 += 2;
          }

          v53 += 2;
          v56 += 2;
          v55 += 2;
        }

        while (v53 < v9);
      }

      v51 += v10;
      v50 += v13;
      v49 += v14;
      v45 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v63 = a7;
  v64 = a8;
  v70 = a5;
  v72 = a4;
  v65 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v62 = a2[3];
  v14 = a2[4];
  v67 = a2[5];
  v68 = v11;
  v15 = *a6;
  v66 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v18 = a6[4];
  v71 = a6[5];
  v69 = v15;
  v20 = v14 + v13 != v12 || v18 + v16 != v15;
  if (v10 == 255)
  {
    v21 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v21)
    {
      v22 = 0;
LABEL_63:
      free(v21);
      return v22;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v21 = (&v59 - v23);
    bzero(&v59 - v23, v24);
  }

  v61 = a1;
  v25 = a9;
  v26 = v16 - 1;
  v27 = v13 - 1;
  if (v18)
  {
    v28 = v14 + 1;
  }

  else
  {
    v27 = v13;
    v28 = v14;
  }

  if (v18)
  {
    v29 = v18 + 1;
  }

  else
  {
    v26 = v16;
    v29 = v18;
  }

  if (v26)
  {
    if (v20 || (v30 = v27 + 1 + v28, *v72 < 4 * v30) || (v31 = v72[1], v30 > v31) && v31 || (v32 = v26 + 1 + v29, v32 > *v64) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v64[1] || (v33 = v64[2], v32 > v33) && v33)
    {
      --v26;
      --v27;
    }

    else
    {
      ++v69;
      ++v12;
      ++v27;
      ++v26;
    }
  }

  if (v27 + v28 > v12)
  {
    v27 = v12 - v28;
  }

  if (v26 + v29 > v69)
  {
    v26 = v69 - v29;
  }

  if (v67 + v62 <= v68)
  {
    v34 = v62;
  }

  else
  {
    v34 = v68 - v67;
  }

  if (v71 + v17 <= v66)
  {
    v35 = v17;
  }

  else
  {
    v35 = v66 - v71;
  }

  if (v27 >= v26)
  {
    v36 = v26;
  }

  else
  {
    v36 = v27;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  v38 = v67 + v37 - 1;
  v39 = *v72 * v38 + 4 * (v36 + v28);
  v40 = *v70;
  v41 = v64;
  v60 = v28;
  if (v39 <= v40)
  {
    if (*(v65 + 8) && v36 + v28 + v72[1] * v38 > v70[1])
    {
      v42 = v10;
      v43 = v64;
      v44 = v12;
      v45 = a9;
    }

    else
    {
      v46 = v71 + v37 - 1;
      v47 = v36 + v29;
      if (v36 + v29 + *v64 * v46 <= *a9)
      {
        v48 = v63;
        if (*(v63 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v64[1] * v46 > a9[1])
        {
          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }

        else
        {
          if (!*(v63 + 16) || v47 + v64[2] * v46 <= a9[2])
          {
            goto LABEL_57;
          }

          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }
      }

      else
      {
        v42 = v10;
        v43 = v64;
        v44 = v12;
        v45 = a9;
      }
    }
  }

  else
  {
    v42 = v10;
    v43 = v64;
    v44 = v12;
    v45 = a9;
  }

  fig_log_get_emitter();
  v49 = FigSignalErrorAtGM();
  v48 = v63;
  v25 = v45;
  v12 = v44;
  v41 = v43;
  v10 = v42;
  v28 = v60;
  if (v49)
  {
    v22 = v49;
    goto LABEL_62;
  }

LABEL_57:
  *v21 = v10;
  *(v21 + 4) = v12;
  v50 = v67;
  *(v21 + 12) = v68;
  *(v21 + 20) = v36;
  *(v21 + 28) = v37;
  *(v21 + 36) = v28;
  *(v21 + 44) = v50;
  v51 = v65;
  v21[11] = v66;
  v21[12] = v36;
  v21[13] = v37;
  v21[14] = v29;
  v52 = v72;
  v21[7] = v51;
  v21[8] = v52;
  v53 = v69;
  v21[9] = v70;
  v21[10] = v53;
  v21[15] = v71;
  v21[16] = v48;
  v21[17] = v41;
  v21[18] = v25;
  v21[19] = v61;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v21, vt_Copy_l10r_TRC_Mat_TRC_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v55 = (v21 + 20);
  v56 = v10;
  while (1)
  {
    v57 = *v55++;
    v22 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v22 = 0;
      break;
    }
  }

LABEL_62:
  if (v10 == 255)
  {
    goto LABEL_63;
  }

  return v22;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = v11 * a2 / v10;
  v13 = (v11 + v11 * a2) / v10 - v12;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(result + 19);
    v16 = *(result + 24) & 0xFFFFFFFE;
    v17 = **(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = 8191.0 / *(v15 + 128);
    LOWORD(a5) = *(v15 + 140);
    *v9.i32 = LODWORD(a5);
    LOWORD(a5) = *(v15 + 144);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v27 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v28 = LODWORD(a9);
    v29 = *(v15 + 36);
    v30 = *(v15 + 40);
    v31 = *(v15 + 44);
    v106 = *(v15 + 48) * 0.5;
    v105 = *(v15 + 52) * 0.5;
    v104 = *(v15 + 56) * 0.5;
    v103 = *(v15 + 60) * 0.5;
    v102 = *(v15 + 64) * 0.5;
    v32 = *(v15 + 72);
    v101 = *(v15 + 68) * 0.5;
    v33 = *(v15 + 76);
    v34 = *(v15 + 80);
    v35 = *(v15 + 84);
    v36 = *(v15 + 88);
    v37 = *(v15 + 92);
    v38 = *(v15 + 96);
    v40 = *(v15 + 100);
    v39 = *(v15 + 104);
    v41 = v15 + 164;
    v42 = v15 + 16548;
    v43 = *(result + 14);
    v44 = v12 + *(result + 15);
    v45 = *(result + 28) * a2 / v10 + *(result + 44);
    v46 = v18[2];
    if (v46)
    {
      v47 = (v46 + v22 * v44 + v43);
    }

    else
    {
      v47 = 0;
    }

    v49 = *v18;
    v48 = *(*(result + 16) + 8);
    _ZF = v48 == 0;
    v51 = v48 + v21 * v44 + v43;
    if (_ZF)
    {
      v51 = 0;
    }

    v52 = (v49 + v20 * v44 + v43);
    v53 = **(result + 7) + v45 * v17 + 4 * *(result + 36);
    v54 = vdup_lane_s32(v9, 0);
    v55 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v16 >= 1)
      {
        v56 = 0;
        v57 = v53;
        v58 = v47;
        v59 = v52;
        do
        {
          v60 = *v57;
          v61 = v57[1];
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v57), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v54), v23), 0), v55)));
          _D6.i16[0] = *(v41 + 2 * _D6.u32[0]);
          _H18 = *(v41 + 2 * _D6.u32[1]);
          __asm
          {
            FCVT            S6, H6
            FCVT            S18, H18
          }

          v68.i32[0] = *v57;
          v68.i32[1] = v61 >> 20;
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v68, 0x300000003)), v54), v23), 0), v55)));
          _D19.i16[0] = *(v41 + 2 * _D19.u32[0]);
          __asm { FCVT            S19, H19 }

          _H20 = *(v41 + 2 * _D19.u32[1]);
          v71.i32[0] = v61 >> 10;
          v71.i32[1] = v61;
          __asm { FCVT            S20, H20 }

          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v71, 0x300000003)), v54), v23), 0), v55)));
          _D15.i16[0] = *(v41 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _H22 = *(v41 + 2 * _D15.u32[1]);
          __asm { FCVT            S22, H22 }

          _S24 = ((v33 * _S18) + (*_D6.i32 * v32)) + (*_D19.i32 * v34);
          v77 = ((v36 * _S18) + (*_D6.i32 * v35)) + (*_D19.i32 * v37);
          *_D6.i32 = ((v40 * _S18) + (*_D6.i32 * v38)) + (*_D19.i32 * v39);
          _S18 = ((v33 * *_D15.i32) + (_S20 * v32)) + (_S22 * v34);
          *_D19.i32 = ((v36 * *_D15.i32) + (_S20 * v35)) + (_S22 * v37);
          _S20 = ((v40 * *_D15.i32) + (_S20 * v38)) + (_S22 * v39);
          LOWORD(_S22) = *(v42 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          LOWORD(_S24) = *(v42 + 2 * llroundf(fminf(fmaxf(v77, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S24, H24
          }

          _D6.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(*_D6.i32, 0.0), 8191.0)));
          __asm { FCVT            S6, H6 }

          LOWORD(_S18) = *(v42 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _D19.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(*_D19.i32, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v86 = (((v30 * _S24) + (v29 * _S22)) + (v31 * _S6)) + v24;
          if (v86 < v24)
          {
            v87 = v24;
          }

          else
          {
            v87 = (((v30 * _S24) + (v29 * _S22)) + (v31 * _S6)) + v24;
          }

          v88 = v86 <= v26;
          v89 = (((v30 * _S19) + (v29 * _S18)) + (v31 * _S20)) + v24;
          if (!v88)
          {
            v87 = v26;
          }

          v90 = llroundf(v87);
          if (v89 < v24)
          {
            v91 = v24;
          }

          else
          {
            v91 = (((v30 * _S19) + (v29 * _S18)) + (v31 * _S20)) + v24;
          }

          if (v89 <= v26)
          {
            v92 = v91;
          }

          else
          {
            v92 = v26;
          }

          v93 = _S22 + _S18;
          *v59 = v90;
          v59[1] = llroundf(v92);
          v94 = _S24 + _S19;
          v95 = (v25 + (v93 * v106)) + ((_S24 + _S19) * v105);
          v96 = _S6 + _S20;
          v97 = v95 + ((_S6 + _S20) * v104);
          v98 = v28;
          if (v97 <= v28)
          {
            v98 = v97;
            if (v97 < v27)
            {
              v98 = v27;
            }
          }

          v99 = ((v25 + (v93 * v103)) + (v94 * v102)) + (v96 * v101);
          *(v51 + v56) = llroundf(v98);
          v100 = v28;
          if (v99 <= v28)
          {
            v100 = v99;
            if (v99 < v27)
            {
              v100 = v27;
            }
          }

          *(v51 + v56 + 1) = llroundf(v100);
          if (v58)
          {
            *v58 = 85 * (v60 >> 30);
            v58[1] = 85 * (v61 >> 30);
            v58 += 2;
          }

          v56 += 2;
          v57 += 2;
          v59 += 2;
        }

        while (v56 < v16);
      }

      v53 += v17;
      v52 += v20;
      v51 += v21;
      v47 += v22;
      ++v14;
    }

    while (v14 != v13);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_422vf(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, unint64_t *a8, void *a9)
{
  v63 = a7;
  v64 = a8;
  v70 = a5;
  v72 = a4;
  v65 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 162);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v62 = a2[3];
  v14 = a2[4];
  v67 = a2[5];
  v68 = v11;
  v15 = *a6;
  v66 = a6[1];
  v16 = a6[2];
  v17 = a6[3];
  v18 = a6[4];
  v71 = a6[5];
  v69 = v15;
  v20 = v14 + v13 != v12 || v18 + v16 != v15;
  if (v10 == 255)
  {
    v21 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v21)
    {
      v22 = 0;
LABEL_63:
      free(v21);
      return v22;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v10 + 160, a3, a4);
    v21 = (&v59 - v23);
    bzero(&v59 - v23, v24);
  }

  v61 = a1;
  v25 = a9;
  v26 = v16 - 1;
  v27 = v13 - 1;
  if (v18)
  {
    v28 = v14 + 1;
  }

  else
  {
    v27 = v13;
    v28 = v14;
  }

  if (v18)
  {
    v29 = v18 + 1;
  }

  else
  {
    v26 = v16;
    v29 = v18;
  }

  if (v26)
  {
    if (v20 || (v30 = v27 + 1 + v28, *v72 < 4 * v30) || (v31 = v72[1], v30 > v31) && v31 || (v32 = v26 + 1 + v29, v32 > *v64) || ((v32 + (v32 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > v64[1] || (v33 = v64[2], v32 > v33) && v33)
    {
      --v26;
      --v27;
    }

    else
    {
      ++v69;
      ++v12;
      ++v27;
      ++v26;
    }
  }

  if (v27 + v28 > v12)
  {
    v27 = v12 - v28;
  }

  if (v26 + v29 > v69)
  {
    v26 = v69 - v29;
  }

  if (v67 + v62 <= v68)
  {
    v34 = v62;
  }

  else
  {
    v34 = v68 - v67;
  }

  if (v71 + v17 <= v66)
  {
    v35 = v17;
  }

  else
  {
    v35 = v66 - v71;
  }

  if (v27 >= v26)
  {
    v36 = v26;
  }

  else
  {
    v36 = v27;
  }

  if (v34 >= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v34;
  }

  v38 = v67 + v37 - 1;
  v39 = *v72 * v38 + 4 * (v36 + v28);
  v40 = *v70;
  v41 = v64;
  v60 = v28;
  if (v39 <= v40)
  {
    if (*(v65 + 8) && v36 + v28 + v72[1] * v38 > v70[1])
    {
      v42 = v10;
      v43 = v64;
      v44 = v12;
      v45 = a9;
    }

    else
    {
      v46 = v71 + v37 - 1;
      v47 = v36 + v29;
      if (v36 + v29 + *v64 * v46 <= *a9)
      {
        v48 = v63;
        if (*(v63 + 8) && ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v64[1] * v46 > a9[1])
        {
          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }

        else
        {
          if (!*(v63 + 16) || v47 + v64[2] * v46 <= a9[2])
          {
            goto LABEL_57;
          }

          v42 = v10;
          v43 = v64;
          v44 = v12;
          v45 = a9;
        }
      }

      else
      {
        v42 = v10;
        v43 = v64;
        v44 = v12;
        v45 = a9;
      }
    }
  }

  else
  {
    v42 = v10;
    v43 = v64;
    v44 = v12;
    v45 = a9;
  }

  fig_log_get_emitter();
  v49 = FigSignalErrorAtGM();
  v48 = v63;
  v25 = v45;
  v12 = v44;
  v41 = v43;
  v10 = v42;
  v28 = v60;
  if (v49)
  {
    v22 = v49;
    goto LABEL_62;
  }

LABEL_57:
  *v21 = v10;
  *(v21 + 4) = v12;
  v50 = v67;
  *(v21 + 12) = v68;
  *(v21 + 20) = v36;
  *(v21 + 28) = v37;
  *(v21 + 36) = v28;
  *(v21 + 44) = v50;
  v51 = v65;
  v21[11] = v66;
  v21[12] = v36;
  v21[13] = v37;
  v21[14] = v29;
  v52 = v72;
  v21[7] = v51;
  v21[8] = v52;
  v53 = v69;
  v21[9] = v70;
  v21[10] = v53;
  v21[15] = v71;
  v21[16] = v48;
  v21[17] = v41;
  v21[18] = v25;
  v21[19] = v61;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v10, global_queue, v21, vt_Copy_l10r_rgb_422vf_GCD);
  if (!v10)
  {
    return 0;
  }

  v55 = (v21 + 20);
  v56 = v10;
  while (1)
  {
    v57 = *v55++;
    v22 = v57;
    if (v57)
    {
      break;
    }

    if (!--v56)
    {
      v22 = 0;
      break;
    }
  }

LABEL_62:
  if (v10 == 255)
  {
    goto LABEL_63;
  }

  return v22;
}

unsigned __int8 *vt_Copy_l10r_rgb_422vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *&v22 = *(v14 + 136);
    v23 = *&v22 / *(v14 + 128);
    LOWORD(v22) = *(v14 + 140);
    v24 = v22;
    LOWORD(a5) = *(v14 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v29 = LODWORD(a9);
    v30 = *(v14 + 36);
    v31 = *(v14 + 40);
    v32 = *(v14 + 44);
    v33 = *(v14 + 48) * 0.5;
    v34 = *(v14 + 52) * 0.5;
    v35 = *(v14 + 56) * 0.5;
    v36 = *(v14 + 60) * 0.5;
    v37 = *(v14 + 64) * 0.5;
    v38 = *(v14 + 68) * 0.5;
    v39 = *(result + 14);
    v40 = v11 + *(result + 15);
    v41 = *(result + 28) * a2 / v9 + *(result + 44);
    v42 = v17[2];
    if (v42)
    {
      v43 = (v42 + v21 * v40 + v39);
    }

    else
    {
      v43 = 0;
    }

    v44 = *v17;
    v45 = *(*(result + 16) + 8);
    v46 = v45 == 0;
    v47 = v45 + v20 * v40 + v39;
    if (v46)
    {
      v47 = 0;
    }

    v48 = (v44 + v19 * v40 + v39);
    v49 = **(result + 7) + v41 * v16 + 4 * *(result + 36);
    do
    {
      if (v15 >= 1)
      {
        v50 = 0;
        v51 = v49;
        v52 = v43;
        v53 = v48;
        do
        {
          v54 = *v51;
          v55 = v51[1];
          v56 = v23 * ((*v51 & 0x3FF) - v24);
          v57 = v23 * (((*v51 >> 10) & 0x3FF) - v24);
          v58 = v23 * (((*v51 >> 20) & 0x3FF) - v24);
          v59 = v23 * ((v55 & 0x3FF) - v24);
          v60 = v23 * (((v55 >> 10) & 0x3FF) - v24);
          v61 = v23 * (((v55 >> 20) & 0x3FF) - v24);
          v62 = (((v31 * v57) + (v30 * v58)) + (v32 * v56)) + v25;
          v63 = (((v31 * v60) + (v30 * v61)) + (v32 * v59)) + v25;
          if (v62 < v25)
          {
            v64 = v25;
          }

          else
          {
            v64 = (((v31 * v57) + (v30 * v58)) + (v32 * v56)) + v25;
          }

          if (v62 <= v27)
          {
            v65 = v64;
          }

          else
          {
            v65 = v27;
          }

          *v53 = llroundf(v65);
          if (v63 < v25)
          {
            v66 = v25;
          }

          else
          {
            v66 = (((v31 * v60) + (v30 * v61)) + (v32 * v59)) + v25;
          }

          if (v63 > v27)
          {
            v66 = v27;
          }

          v53[1] = llroundf(v66);
          v67 = v58 + v61;
          v68 = v57 + v60;
          v69 = v56 + v59;
          v70 = ((v26 + (v67 * v33)) + (v68 * v34)) + (v69 * v35);
          v71 = v29;
          if (v70 <= v29)
          {
            v71 = ((v26 + (v67 * v33)) + (v68 * v34)) + (v69 * v35);
            if (v70 < v28)
            {
              v71 = v28;
            }
          }

          v72 = ((v26 + (v67 * v36)) + (v68 * v37)) + (v69 * v38);
          *(v47 + v50) = llroundf(v71);
          v73 = v29;
          if (v72 <= v29)
          {
            v73 = v72;
            if (v72 < v28)
            {
              v73 = v28;
            }
          }

          *(v47 + v50 + 1) = llroundf(v73);
          if (v52)
          {
            *v52 = 85 * (v54 >> 30);
            v52[1] = 85 * (v55 >> 30);
            v52 += 2;
          }

          v50 += 2;
          v51 += 2;
          v53 += 2;
        }

        while (v50 < v15);
      }

      v49 += v16;
      v48 += v19;
      v47 += v20;
      v43 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Tone_Mat_TRC_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = *(result + 19);
    v28 = *v18 + v26 * v19;
    v29 = **(result + 7) + v25 * v24 + 4 * *(result + 36);
    v30 = (v28 + v16);
    v31 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v27 + 140);
    LOWORD(a9) = *(v27 + 144);
    LOWORD(a10) = *(v27 + 146);
    LOWORD(v10) = *(v27 + 148);
    LOWORD(v11) = *(v27 + 150);
    LOWORD(v12) = *(v27 + 152);
    v32 = *(v27 + 40);
    v136 = *(v27 + 36);
    v33 = *(v27 + 44);
    v34 = 8191.0 / *(v27 + 128);
    *v13.i32 = LODWORD(a8);
    v35 = LODWORD(a9);
    v129 = LODWORD(a10);
    v36 = v10;
    v37 = v11;
    v38 = v12;
    v134 = *(v27 + 52) * 0.5;
    v135 = *(v27 + 48) * 0.5;
    v132 = *(v27 + 60) * 0.5;
    v133 = *(v27 + 56) * 0.5;
    v131 = *(v27 + 64) * 0.5;
    v128 = *(v27 + 72);
    v130 = *(v27 + 68) * 0.5;
    v39 = *(v27 + 76);
    v40 = *(v27 + 80);
    v41 = *(v27 + 84);
    v42 = *(v27 + 88);
    v43 = *(v27 + 92);
    v44 = *(v27 + 96);
    v46 = *(v27 + 100);
    v45 = *(v27 + 104);
    v47 = v27 + 164;
    v48 = v27 + 16548;
    v49 = v27 + 32932;
    v50 = *(v27 + 108);
    v51 = *(v27 + 112);
    v52 = *(v27 + 116);
    v53 = *(v27 + 120);
    v54 = vdup_lane_s32(v13, 0);
    do
    {
      if (v31 >= 1)
      {
        v55 = 0;
        v56 = v22;
        v57 = v30;
        v58 = v29;
        do
        {
          v59 = *v58;
          v60 = v58[1];
          v61 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v58), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v54), v34), 0), v61)));
          _D0.i16[0] = *(v47 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v47 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v58;
          _D0.i32[1] = v60 >> 20;
          v69 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v54), v34), 0), v61)));
          _D0.i16[0] = *(v47 + 2 * v69.u32[0]);
          __asm { FCVT            S22, H0 }

          v71 = fmaxf(_S19, fmaxf(_S20, _S22));
          v72 = (((v51 * _S20) + (v50 * _S19)) + (v52 * _S22)) + (v53 * v71);
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = (((v51 * _S20) + (v50 * _S19)) + (v52 * _S22)) + (v53 * v71);
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          _H24 = *(v47 + 2 * v69.u32[1]);
          v75.i32[0] = v60 >> 10;
          v75.i32[1] = v58[1];
          v76 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v75, 0x300000003)), v54), v34), 0), v61)));
          __asm { FCVT            S21, H24 }

          _H24 = *(v47 + 2 * v76.u32[0]);
          _H15 = *(v47 + 2 * v76.u32[1]);
          __asm
          {
            FCVT            S14, H24
            FCVT            S15, H15
          }

          _H0 = *(v48 + 2 * llroundf(v73));
          __asm { FCVT            S24, H0 }

          v84 = _S19 * _S24;
          v85 = _S20 * _S24;
          v86 = _S22 * _S24;
          v87 = (((v51 * _S14) + (v50 * _S21)) + (v52 * _S15)) + (v53 * fmaxf(_S21, fmaxf(_S14, _S15)));
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          _H22 = *(v48 + 2 * llroundf(v88));
          __asm { FCVT            S22, H22 }

          v91 = _S21 * _S22;
          _S24 = _S14 * _S22;
          v93 = _S15 * _S22;
          v94 = ((v39 * v85) + (v84 * v128)) + (v86 * v40);
          v95 = ((v42 * v85) + (v84 * v41)) + (v86 * v43);
          v96 = ((v46 * v85) + (v84 * v44)) + (v86 * v45);
          v97 = (v39 * _S24) + (v91 * v128);
          v98 = (v42 * _S24) + (v91 * v41);
          v99 = (v46 * _S24) + (v91 * v44);
          _S19 = v97 + (v93 * v40);
          _S20 = v98 + (v93 * v43);
          LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v102 = v99 + (v93 * v45);
          __asm { FCVT            S22, H24 }

          LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v104 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          __asm { FCVT            S0, H24 }

          LOWORD(_S24) = *(v49 + 2 * v104);
          __asm { FCVT            S24, H24 }

          LOWORD(_S19) = *(v49 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v109 = llroundf(fminf(fmaxf(v102, 0.0), 8191.0));
          v110 = (v32 * _S0) + (v136 * _S22);
          v111 = _S22 + _S19;
          _S0 = _S0 + _S20;
          v113 = (v129 + (v111 * v135)) + (_S0 * v134);
          v114 = (v129 + (v111 * v132)) + (_S0 * v131);
          LOWORD(_S0) = *(v49 + 2 * v109);
          __asm { FCVT            S0, H0 }

          v116 = v110 + (v33 * _S24);
          v117 = _S24 + _S0;
          v118 = v113 + ((_S24 + _S0) * v133);
          v119 = v114 + (v117 * v130);
          if (v118 < v37)
          {
            v120 = v37;
          }

          else
          {
            v120 = v118;
          }

          v121 = v118 <= v38;
          v122 = v116 + v35;
          if (!v121)
          {
            v120 = v12;
          }

          v123 = llroundf(v120);
          if (v122 < v35)
          {
            v124 = LODWORD(a9);
          }

          else
          {
            v124 = v116 + v35;
          }

          *v57 = v123;
          if (v122 > v36)
          {
            v124 = v36;
          }

          v57[1] = llroundf(v124);
          v125 = v12;
          if (v119 <= v38)
          {
            v125 = v119;
            if (v119 < v37)
            {
              v125 = v37;
            }
          }

          v126 = (((v32 * _S20) + (v136 * _S19)) + (v33 * _S0)) + v35;
          v57[2] = llroundf(v125);
          v127 = v36;
          if (v126 <= v36)
          {
            v127 = v126;
            if (v126 < v35)
            {
              v127 = LODWORD(a9);
            }
          }

          v57[3] = llroundf(v127);
          if (v56)
          {
            *v56 = 85 * (v59 >> 30);
            v56[1] = 85 * (v60 >> 30);
            v56 += 2;
          }

          v55 += 2;
          v58 += 2;
          v57 += 4;
        }

        while (v55 < v31);
      }

      v29 += v25;
      v30 += v26;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Mat_TRC_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = **(result + 7) + v25 * v24;
    v28 = *(result + 19);
    v29 = *v18 + v26 * v19;
    v30 = (v27 + 4 * *(result + 36));
    v31 = (v29 + v16);
    v32 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v28 + 140);
    LOWORD(a9) = *(v28 + 144);
    LOWORD(a10) = *(v28 + 146);
    LOWORD(v10) = *(v28 + 148);
    LOWORD(v11) = *(v28 + 150);
    LOWORD(v12) = *(v28 + 152);
    v33 = *(v28 + 36);
    v34 = *(v28 + 40);
    v35 = 8191.0 / *(v28 + 128);
    v36 = *(v28 + 44);
    *v13.i32 = LODWORD(a8);
    v37 = LODWORD(a9);
    v38 = LODWORD(a10);
    v39 = v10;
    v40 = v11;
    v41 = v12;
    v103 = *(v28 + 52) * 0.5;
    v104 = *(v28 + 48) * 0.5;
    v101 = *(v28 + 60) * 0.5;
    v102 = *(v28 + 56) * 0.5;
    v42 = *(v28 + 72);
    v99 = *(v28 + 68) * 0.5;
    v100 = *(v28 + 64) * 0.5;
    v43 = *(v28 + 76);
    v44 = *(v28 + 80);
    v45 = *(v28 + 84);
    v46 = *(v28 + 88);
    v47 = *(v28 + 92);
    v48 = *(v28 + 96);
    v50 = *(v28 + 100);
    v49 = *(v28 + 104);
    v51 = v28 + 164;
    v52 = v28 + 16548;
    v53 = vdup_lane_s32(v13, 0);
    v54 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v32 >= 1)
      {
        v55 = 0;
        v56 = v30;
        v57 = v22;
        v58 = v31;
        do
        {
          v59 = *v56;
          v60 = v56[1];
          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v56), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v53), v35), 0), v54)));
          _D17.i16[0] = *(v51 + 2 * _D17.u32[0]);
          __asm { FCVT            S17, H17 }

          _H18 = *(v51 + 2 * _D17.u32[1]);
          v67.i32[0] = *v56;
          v67.i32[1] = v60 >> 20;
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v67, 0x300000003)), v53), v35), 0), v54)));
          _D19.i16[0] = *(v51 + 2 * _D19.u32[0]);
          __asm
          {
            FCVT            S18, H18
            FCVT            S19, H19
          }

          _H20 = *(v51 + 2 * _D19.u32[1]);
          __asm { FCVT            S20, H20 }

          v72.i32[0] = v60 >> 10;
          v72.i32[1] = v60;
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v72, 0x300000003)), v53), v35), 0), v54)));
          _D15.i16[0] = *(v51 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _S22 = ((v43 * _S18) + (*_D17.i32 * v42)) + (*_D19.i32 * v44);
          _S24 = ((v46 * _S18) + (*_D17.i32 * v45)) + (*_D19.i32 * v47);
          *_D17.i32 = ((v50 * _S18) + (*_D17.i32 * v48)) + (*_D19.i32 * v49);
          _S18 = (v43 * *_D15.i32) + (_S20 * v42);
          *_D19.i32 = (v46 * *_D15.i32) + (_S20 * v45);
          v77 = (v50 * *_D15.i32) + (_S20 * v48);
          _D15.i16[0] = *(v51 + 2 * _D15.u32[1]);
          __asm { FCVT            S15, H15 }

          *_D19.i32 = *_D19.i32 + (*_D15.i32 * v47);
          LOWORD(_S22) = *(v52 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          v78 = v77 + (*_D15.i32 * v49);
          __asm { FCVT            S22, H22 }

          LOWORD(_S24) = *(v52 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          v80 = llroundf(fminf(fmaxf(*_D17.i32, 0.0), 8191.0));
          __asm { FCVT            S17, H24 }

          LOWORD(_S24) = *(v52 + 2 * v80);
          __asm { FCVT            S24, H24 }

          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(_S18 + (*_D15.i32 * v44), 0.0), 8191.0)));
          __asm { FCVT            S15, H18 }

          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(*_D19.i32, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v84 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          v85 = (v34 * *_D17.i32) + (v33 * _S22);
          *_D19.i32 = _S22 + _S15;
          *_D17.i32 = *_D17.i32 + _S18;
          v86 = (v38 + ((_S22 + _S15) * v104)) + (*_D17.i32 * v103);
          *_D17.i32 = (v38 + (*_D19.i32 * v101)) + (*_D17.i32 * v100);
          _D19.i16[0] = *(v52 + 2 * v84);
          __asm { FCVT            S19, H19 }

          v88 = v85 + (v36 * _S24);
          v89 = v86 + ((_S24 + _S19) * v102);
          v90 = *_D17.i32 + ((_S24 + _S19) * v99);
          if (v89 < v40)
          {
            v91 = v40;
          }

          else
          {
            v91 = v89;
          }

          v92 = v89 <= v41;
          v93 = v88 + v37;
          if (!v92)
          {
            v91 = v41;
          }

          v94 = llroundf(v91);
          if (v93 < v37)
          {
            v95 = v37;
          }

          else
          {
            v95 = v88 + v37;
          }

          *v58 = v94;
          if (v93 > v39)
          {
            v95 = v39;
          }

          v58[1] = llroundf(v95);
          v96 = v41;
          if (v90 <= v41)
          {
            v96 = v90;
            if (v90 < v40)
            {
              v96 = v40;
            }
          }

          v97 = (((v34 * _S18) + (v33 * _S15)) + (v36 * _S19)) + v37;
          v58[2] = llroundf(v96);
          v98 = v39;
          if (v97 <= v39)
          {
            v98 = v97;
            if (v97 < v37)
            {
              v98 = v37;
            }
          }

          v58[3] = llroundf(v98);
          if (v57)
          {
            *v57 = 85 * (v59 >> 30);
            v57[1] = 85 * (v60 >> 30);
            v57 += 2;
          }

          v55 += 2;
          v56 += 2;
          v58 += 4;
        }

        while (v55 < v32);
      }

      v30 = (v30 + v25);
      v31 += v26;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_2vuyf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_rgb_2vuyf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_rgb_2vuyf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 += v16[1] * v14 + v11;
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = *(result + 28) * a2 / v9 + *(result + 44);
    v20 = **(result + 8);
    v21 = *v16;
    v22 = **(result + 7) + v20 * v19;
    v23 = *(result + 19);
    v24 = *v13 + v21 * v14;
    v25 = (v22 + 4 * *(result + 36));
    v26 = (v24 + v11);
    v27 = *(result + 24) & 0xFFFFFFFE;
    *&a4 = *(v23 + 136);
    v28 = *&a4 / *(v23 + 128);
    LOWORD(a4) = *(v23 + 140);
    *&a4 = LODWORD(a4);
    LOWORD(a5) = *(v23 + 144);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v23 + 146);
    v30 = LODWORD(a6);
    LOWORD(a7) = *(v23 + 148);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 150);
    v32 = LODWORD(a8);
    LOWORD(a9) = *(v23 + 152);
    v33 = LODWORD(a9);
    _S7 = *(v23 + 36);
    v35 = *(v23 + 40);
    v36 = *(v23 + 44);
    v37 = *(v23 + 48) * 0.5;
    v38 = *(v23 + 52) * 0.5;
    v39 = *(v23 + 56) * 0.5;
    v40 = *(v23 + 60) * 0.5;
    v41 = *(v23 + 64) * 0.5;
    v42 = *(v23 + 68) * 0.5;
    v43 = vdup_lane_s32(*&a4, 0);
    do
    {
      if (v27 >= 1)
      {
        v44 = 0;
        v45 = v25;
        v46 = v17;
        v47 = v26;
        do
        {
          v48 = *v45++;
          v49 = v48.u32[1];
          v50 = v48.i32[0];
          v51 = v28 * ((v48.i16[0] & 0x3FF) - *&a4);
          v52 = v28 * ((v48.i16[2] & 0x3FF) - *&a4);
          v53 = vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshr_n_u32(v48, 0xAuLL), 0x300000003)), v43), v28);
          _D28 = vmul_n_f32(vsub_f32(vcvt_f32_u32((*&vshr_n_u32(v48, 0x14uLL) & 0xFFFFF3FFFFFFF3FFLL)), v43), v28);
          v55 = (((v35 * v53.f32[0]) + (_S7 * _D28.f32[0])) + (v36 * v51)) + v29;
          v56 = vaddv_f32(_D28);
          v57 = vaddv_f32(v53);
          v58 = v51 + v52;
          v59 = ((v30 + (v56 * v37)) + (v57 * v38)) + (v58 * v39);
          v60 = ((v30 + (v56 * v40)) + (v57 * v41)) + (v58 * v42);
          if (v59 < v32)
          {
            v61 = v32;
          }

          else
          {
            v61 = v59;
          }

          if (v59 > v33)
          {
            v61 = v33;
          }

          *v47 = llroundf(v61);
          if (v55 < v29)
          {
            v62 = v29;
          }

          else
          {
            v62 = v55;
          }

          if (v55 <= v31)
          {
            v63 = v62;
          }

          else
          {
            v63 = v31;
          }

          v47[1] = llroundf(v63);
          v64 = v33;
          if (v60 <= v33)
          {
            v64 = v60;
            if (v60 < v32)
            {
              v64 = v32;
            }
          }

          __asm { FMLA            S27, S7, V28.S[1] }

          v70 = (_S27 + (v36 * v52)) + v29;
          v47[2] = llroundf(v64);
          v71 = v31;
          if (v70 <= v31)
          {
            v71 = v70;
            if (v70 < v29)
            {
              v71 = v29;
            }
          }

          v47[3] = llroundf(v71);
          if (v46)
          {
            *v46 = 85 * (v50 >> 30);
            v46[1] = 85 * (v49 >> 30);
            v46 += 2;
          }

          v44 += 2;
          v47 += 4;
        }

        while (v44 < v27);
      }

      v25 = (v25 + v20);
      v26 += v21;
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Tone_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = *(result + 19);
    v28 = *v18 + v26 * v19;
    v29 = **(result + 7) + v25 * v24 + 4 * *(result + 36);
    v30 = (v28 + v16);
    v31 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v27 + 140);
    LOWORD(a9) = *(v27 + 144);
    LOWORD(a10) = *(v27 + 146);
    LOWORD(v10) = *(v27 + 148);
    LOWORD(v11) = *(v27 + 150);
    LOWORD(v12) = *(v27 + 152);
    v32 = *(v27 + 40);
    v125 = *(v27 + 36);
    v33 = *(v27 + 44);
    v34 = 8191.0 / *(v27 + 128);
    *v13.i32 = LODWORD(a8);
    v35 = LODWORD(a9);
    v36 = LODWORD(a10);
    v37 = v10;
    v38 = v11;
    v39 = v12;
    v123 = *(v27 + 48) * 0.5;
    v124 = v38;
    v122 = *(v27 + 52) * 0.5;
    v121 = *(v27 + 56) * 0.5;
    v120 = *(v27 + 60) * 0.5;
    v119 = *(v27 + 64) * 0.5;
    v40 = *(v27 + 72);
    v118 = *(v27 + 68) * 0.5;
    v41 = *(v27 + 76);
    v42 = *(v27 + 80);
    v43 = *(v27 + 84);
    v44 = *(v27 + 88);
    v45 = *(v27 + 92);
    v46 = *(v27 + 96);
    v48 = *(v27 + 100);
    v47 = *(v27 + 104);
    v49 = v27 + 164;
    v50 = v27 + 16548;
    v51 = v27 + 32932;
    v52 = *(v27 + 108);
    v53 = *(v27 + 112);
    v54 = *(v27 + 116);
    v55 = *(v27 + 120);
    v56 = vdup_lane_s32(v13, 0);
    do
    {
      if (v31 >= 1)
      {
        v57 = 0;
        v58 = v22;
        v59 = v30;
        v60 = v29;
        do
        {
          v61 = *v60;
          v62 = v60[1];
          v63 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v60), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v56), v34), 0), v63)));
          _D0.i16[0] = *(v49 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v49 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v60;
          _D0.i32[1] = v62 >> 20;
          v71 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v56), v34), 0), v63)));
          _D0.i16[0] = *(v49 + 2 * v71.u32[0]);
          __asm { FCVT            S21, H0 }

          v73 = (((v53 * _S20) + (v52 * _S19)) + (v54 * _S21)) + (v55 * fmaxf(_S19, fmaxf(_S20, _S21)));
          v74 = 8191.0;
          if (v73 <= 8191.0)
          {
            v74 = v73;
            if (v73 < 0.0)
            {
              v74 = 0.0;
            }
          }

          _H16 = *(v49 + 2 * v71.u32[1]);
          __asm { FCVT            S16, H16 }

          _D24.i32[0] = v62 >> 10;
          _D24.i32[1] = v60[1];
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D24, 0x300000003)), v56), v34), 0), v63)));
          _D22.i16[0] = *(v49 + 2 * _D22.u32[0]);
          __asm { FCVT            S22, H22 }

          _D24.i16[0] = *(v49 + 2 * _D22.u32[1]);
          __asm { FCVT            S14, H24 }

          v81 = (((v53 * _S22) + (v52 * _S16)) + (v54 * _S14)) + (v55 * fmaxf(_S16, fmaxf(_S22, _S14)));
          v82 = 8191.0;
          if (v81 <= 8191.0)
          {
            v82 = v81;
            if (v81 < 0.0)
            {
              v82 = 0.0;
            }
          }

          _H0 = *(v50 + 2 * llroundf(v74));
          __asm { FCVT            S0, H0 }

          v85 = _S19 * _S0;
          v86 = _S20 * _S0;
          _H24 = *(v50 + 2 * llroundf(v82));
          v88 = _S21 * _S0;
          __asm { FCVT            S21, H24 }

          _S16 = _S16 * _S21;
          v91 = _S22 * _S21;
          v92 = _S14 * _S21;
          v93 = ((v41 * v86) + (v85 * v40)) + (v88 * v42);
          v94 = ((v44 * v86) + (v85 * v43)) + (v88 * v45);
          _S0 = ((v48 * v86) + (v85 * v46)) + (v88 * v47);
          _S19 = ((v41 * v91) + (_S16 * v40)) + (v92 * v42);
          v97 = ((v44 * v91) + (_S16 * v43)) + (v92 * v45);
          v98 = ((v48 * v91) + (_S16 * v46)) + (v92 * v47);
          LOWORD(_S16) = *(v51 + 2 * llroundf(fminf(fmaxf(v93, 0.0), 8191.0)));
          __asm { FCVT            S22, H16 }

          LOWORD(_S16) = *(v51 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H16
            FCVT            S14, H0
          }

          LOWORD(_S0) = *(v51 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S0, H0 }

          LOWORD(_S16) = *(v51 + 2 * llroundf(fminf(fmaxf(v97, 0.0), 8191.0)));
          __asm { FCVT            S16, H16 }

          LOWORD(_S19) = *(v51 + 2 * llroundf(fminf(fmaxf(v98, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          v105 = (((v32 * _S24) + (v125 * _S22)) + (v33 * _S14)) + v35;
          v106 = _S22 + _S0;
          v107 = _S24 + _S16;
          v108 = (v36 + ((_S22 + _S0) * v123)) + ((_S24 + _S16) * v122);
          v109 = _S14 + _S19;
          v110 = v108 + ((_S14 + _S19) * v121);
          if (v105 < v35)
          {
            v111 = v35;
          }

          else
          {
            v111 = v105;
          }

          if (v105 > v37)
          {
            v111 = v37;
          }

          *v59 = llroundf(v111);
          v112 = v12;
          if (v110 <= v39)
          {
            v112 = v110;
            if (v110 < v124)
            {
              v112 = v124;
            }
          }

          v113 = (((v32 * _S16) + (v125 * _S0)) + (v33 * _S19)) + v35;
          v114 = ((v36 + (v106 * v120)) + (v107 * v119)) + (v109 * v118);
          v59[1] = llroundf(v112);
          if (v113 < v35)
          {
            v115 = v35;
          }

          else
          {
            v115 = v113;
          }

          if (v113 <= v37)
          {
            v116 = v115;
          }

          else
          {
            v116 = v37;
          }

          v59[2] = llroundf(v116);
          v117 = v12;
          if (v114 <= v39)
          {
            v117 = ((v36 + (v106 * v120)) + (v107 * v119)) + (v109 * v118);
            if (v114 < v124)
            {
              v117 = v124;
            }
          }

          v59[3] = llroundf(v117);
          if (v58)
          {
            *v58 = 85 * (v61 >> 30);
            v58[1] = 85 * (v62 >> 30);
            v58 += 2;
          }

          v57 += 2;
          v60 += 2;
          v59 += 4;
        }

        while (v57 < v31);
      }

      v29 += v25;
      v30 += v26;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Mat_TRC_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 += v21[1] * v19 + v16;
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = **(result + 7) + v25 * v24;
    v28 = *(result + 19);
    v29 = *v18 + v26 * v19;
    v30 = (v27 + 4 * *(result + 36));
    v31 = (v29 + v16);
    v32 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v28 + 140);
    LOWORD(a9) = *(v28 + 144);
    LOWORD(a10) = *(v28 + 146);
    LOWORD(v10) = *(v28 + 148);
    LOWORD(v11) = *(v28 + 150);
    LOWORD(v12) = *(v28 + 152);
    v33 = *(v28 + 36);
    v34 = *(v28 + 40);
    v35 = 8191.0 / *(v28 + 128);
    v36 = *(v28 + 44);
    *v13.i32 = LODWORD(a8);
    v37 = LODWORD(a9);
    v38 = LODWORD(a10);
    v39 = v10;
    v40 = v12;
    v104 = *(v28 + 48) * 0.5;
    v105 = v11;
    v102 = *(v28 + 56) * 0.5;
    v103 = *(v28 + 52) * 0.5;
    v100 = *(v28 + 64) * 0.5;
    v101 = *(v28 + 60) * 0.5;
    v41 = *(v28 + 72);
    v99 = *(v28 + 68) * 0.5;
    v42 = *(v28 + 76);
    v43 = *(v28 + 80);
    v44 = *(v28 + 84);
    v45 = *(v28 + 88);
    v46 = *(v28 + 92);
    v47 = *(v28 + 96);
    v49 = *(v28 + 100);
    v48 = *(v28 + 104);
    v50 = v28 + 164;
    v51 = v28 + 16548;
    v52 = vdup_lane_s32(v13, 0);
    v53 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v32 >= 1)
      {
        v54 = 0;
        v55 = v30;
        v56 = v22;
        v57 = v31;
        do
        {
          v58 = *v55;
          v59 = v55[1];
          _D17 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v55), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v52), v35), 0), v53)));
          _D17.i16[0] = *(v50 + 2 * _D17.u32[0]);
          __asm { FCVT            S17, H17 }

          _H18 = *(v50 + 2 * _D17.u32[1]);
          __asm { FCVT            S18, H18 }

          v67.i32[0] = *v55;
          v67.i32[1] = v59 >> 20;
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v67, 0x300000003)), v52), v35), 0), v53)));
          _D19.i16[0] = *(v50 + 2 * _D19.u32[0]);
          __asm { FCVT            S19, H19 }

          _H20 = *(v50 + 2 * _D19.u32[1]);
          v70.i32[0] = v59 >> 10;
          v70.i32[1] = v59;
          _D21 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v70, 0x300000003)), v52), v35), 0), v53)));
          _D21.i16[0] = *(v50 + 2 * _D21.u32[0]);
          __asm
          {
            FCVT            S20, H20
            FCVT            S21, H21
          }

          _H22 = *(v50 + 2 * _D21.u32[1]);
          __asm { FCVT            S22, H22 }

          v75 = ((v42 * _S18) + (*_D17.i32 * v41)) + (*_D19.i32 * v43);
          v76 = ((v45 * _S18) + (*_D17.i32 * v44)) + (*_D19.i32 * v46);
          *_D17.i32 = ((v49 * _S18) + (*_D17.i32 * v47)) + (*_D19.i32 * v48);
          _S18 = ((v42 * *_D21.i32) + (_S20 * v41)) + (_S22 * v43);
          *_D19.i32 = ((v45 * *_D21.i32) + (_S20 * v44)) + (_S22 * v46);
          v78 = ((v49 * *_D21.i32) + (_S20 * v47)) + (_S22 * v48);
          _D21.i16[0] = *(v51 + 2 * llroundf(fminf(fmaxf(v75, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          LOWORD(_S22) = *(v51 + 2 * llroundf(fminf(fmaxf(v76, 0.0), 8191.0)));
          _D17.i16[0] = *(v51 + 2 * llroundf(fminf(fmaxf(*_D17.i32, 0.0), 8191.0)));
          __asm
          {
            FCVT            S22, H22
            FCVT            S17, H17
          }

          LOWORD(_S18) = *(v51 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm { FCVT            S15, H18 }

          LOWORD(_S18) = *(v51 + 2 * llroundf(fminf(fmaxf(*_D19.i32, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          _D19.i16[0] = *(v51 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          v85 = (((v34 * _S22) + (v33 * _S21)) + (v36 * _S17)) + v37;
          v86 = _S21 + _S15;
          if (v85 < v37)
          {
            v87 = v37;
          }

          else
          {
            v87 = (((v34 * _S22) + (v33 * _S21)) + (v36 * _S17)) + v37;
          }

          v88 = v85 <= v39;
          v89 = _S22 + _S18;
          v90 = (v38 + (v86 * v104)) + ((_S22 + _S18) * v103);
          v91 = _S17 + _S19;
          v92 = v90 + ((_S17 + _S19) * v102);
          if (!v88)
          {
            v87 = v39;
          }

          *v57 = llroundf(v87);
          v93 = v40;
          if (v92 <= v40)
          {
            v93 = v92;
            if (v92 < v105)
            {
              v93 = v105;
            }
          }

          v94 = (((v34 * _S18) + (v33 * _S15)) + (v36 * _S19)) + v37;
          v95 = ((v38 + (v86 * v101)) + (v89 * v100)) + (v91 * v99);
          v57[1] = llroundf(v93);
          if (v94 < v37)
          {
            v96 = v37;
          }

          else
          {
            v96 = v94;
          }

          if (v94 <= v39)
          {
            v97 = v96;
          }

          else
          {
            v97 = v39;
          }

          v57[2] = llroundf(v97);
          v98 = v40;
          if (v95 <= v40)
          {
            v98 = ((v38 + (v86 * v101)) + (v89 * v100)) + (v91 * v99);
            if (v95 < v105)
            {
              v98 = v105;
            }
          }

          v57[3] = llroundf(v98);
          if (v56)
          {
            *v56 = 85 * (v58 >> 30);
            v56[1] = 85 * (v59 >> 30);
            v56 += 2;
          }

          v54 += 2;
          v55 += 2;
          v57 += 4;
        }

        while (v54 < v32);
      }

      v30 = (v30 + v25);
      v31 += v26;
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_yuvsf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_rgb_yuvsf_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_rgb_yuvsf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 += v16[1] * v14 + v11;
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = *(result + 28) * a2 / v9 + *(result + 44);
    v20 = **(result + 8);
    v21 = *v16;
    v22 = **(result + 7) + v20 * v19;
    v23 = *(result + 19);
    v24 = *v13 + v21 * v14;
    v25 = (v22 + 4 * *(result + 36));
    v26 = (v24 + v11);
    v27 = *(result + 24) & 0xFFFFFFFE;
    *&v28 = *(v23 + 136);
    v29 = *&v28 / *(v23 + 128);
    LOWORD(v28) = *(v23 + 140);
    v30 = v28;
    LOWORD(a5) = *(v23 + 144);
    v31 = LODWORD(a5);
    LOWORD(a6) = *(v23 + 146);
    v32 = LODWORD(a6);
    LOWORD(a7) = *(v23 + 148);
    v33 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 150);
    v34 = LODWORD(a8);
    LOWORD(a9) = *(v23 + 152);
    v35 = LODWORD(a9);
    v36 = *(v23 + 36);
    v37 = *(v23 + 40);
    v38 = *(v23 + 44);
    v39 = *(v23 + 48) * 0.5;
    v40 = *(v23 + 52) * 0.5;
    v41 = *(v23 + 56) * 0.5;
    v42 = *(v23 + 60) * 0.5;
    v43 = *(v23 + 64) * 0.5;
    v44 = *(v23 + 68) * 0.5;
    do
    {
      if (v27 >= 1)
      {
        v45 = 0;
        v46 = v25;
        v47 = v17;
        v48 = v26;
        do
        {
          v49 = *v46;
          v50 = v46[1];
          v51 = v29 * ((*v46 & 0x3FF) - v30);
          v52 = v29 * (((*v46 >> 10) & 0x3FF) - v30);
          v53 = v29 * (((*v46 >> 20) & 0x3FF) - v30);
          v54 = v29 * ((v50 & 0x3FF) - v30);
          v55 = v29 * (((v50 >> 10) & 0x3FF) - v30);
          v56 = v29 * (((v50 >> 20) & 0x3FF) - v30);
          v57 = (((v37 * v52) + (v36 * v53)) + (v38 * v51)) + v31;
          v58 = (((v37 * v55) + (v36 * v56)) + (v38 * v54)) + v31;
          v59 = v53 + v56;
          v60 = v52 + v55;
          v61 = v51 + v54;
          v62 = ((v32 + (v59 * v39)) + (v60 * v40)) + (v61 * v41);
          v63 = (v32 + (v59 * v42)) + (v60 * v43);
          if (v57 < v31)
          {
            v64 = v31;
          }

          else
          {
            v64 = v57;
          }

          if (v57 > v33)
          {
            v64 = v33;
          }

          v65 = v63 + (v61 * v44);
          *v48 = llroundf(v64);
          if (v62 < v34)
          {
            v66 = v34;
          }

          else
          {
            v66 = v62;
          }

          if (v62 > v35)
          {
            v66 = v35;
          }

          v48[1] = llroundf(v66);
          if (v58 < v31)
          {
            v67 = v31;
          }

          else
          {
            v67 = v58;
          }

          if (v58 > v33)
          {
            v67 = v33;
          }

          v48[2] = llroundf(v67);
          v68 = v35;
          if (v65 <= v35)
          {
            v68 = v65;
            if (v65 < v34)
            {
              v68 = v34;
            }
          }

          v48[3] = llroundf(v68);
          if (v47)
          {
            *v47 = 85 * (v49 >> 30);
            v47[1] = 85 * (v50 >> 30);
            v47 += 2;
          }

          v45 += 2;
          v46 += 2;
          v48 += 4;
        }

        while (v45 < v27);
      }

      v25 = (v25 + v20);
      v26 += v21;
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v71 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v61 = a2[3];
  v15 = a2[4];
  v65 = a2[5];
  v66 = v12;
  v16 = *a6;
  v64 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v70 = a6[5];
  v67 = v13;
  v68 = v16;
  v21 = v15 + v14 != v13 || v19 + v17 != v16;
  if (v11 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v22 = (&v58 - v24);
    bzero(&v58 - v24, v25);
  }

  v60 = a1;
  v26 = a9;
  v27 = v17 - 1;
  v28 = v14 - 1;
  if (v19)
  {
    v29 = v15 + 1;
  }

  else
  {
    v28 = v14;
    v29 = v15;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v62;
    if (v21 || (v32 = v28 + 1 + v29, *v71 < 4 * v32) || (v33 = v71[1], v32 > v33) && v33 || (v34 = v27 + 1 + v30, v35 = 2 * v34, 2 * v34 > *v62) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v36 = v62[2], v35 > v36) && v36)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v67;
      ++v68;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v62;
  }

  if (v28 + v29 > v67)
  {
    v28 = v67 - v29;
  }

  if (v27 + v30 > v68)
  {
    v27 = v68 - v30;
  }

  if (v65 + v61 <= v66)
  {
    v37 = v61;
  }

  else
  {
    v37 = v66 - v65;
  }

  if (v70 + v18 <= v64)
  {
    v38 = v18;
  }

  else
  {
    v38 = v64 - v70;
  }

  if (v28 >= v27)
  {
    v39 = v27;
  }

  else
  {
    v39 = v28;
  }

  if (v37 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  v41 = v65 + v40 - 1;
  v42 = *v71 * v41 + 4 * (v39 + v29);
  v43 = *v69;
  v59 = v29;
  if (v42 > v43)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(v63 + 8) && v39 + v29 + v71[1] * v41 > v69[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  v47 = v70 + v40 - 1;
  v48 = v39 + v30;
  if ((*v31 * v47 + 2 * (v39 + v30)) > *a9)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 8) && v31[1] * v47 + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a9[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 16) && (2 * v48 + v31[2] * v47) > a9[2])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v26 = v46;
    v31 = v45;
    v11 = v44;
    v29 = v59;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v11;
  v49 = v66;
  *(v22 + 4) = v67;
  *(v22 + 12) = v49;
  *(v22 + 20) = v39;
  *(v22 + 28) = v40;
  *(v22 + 36) = v29;
  v50 = v64;
  *(v22 + 44) = v65;
  v22[11] = v50;
  v22[12] = v39;
  v22[13] = v40;
  v22[14] = v30;
  v51 = v71;
  v22[7] = v63;
  v22[8] = v51;
  v52 = v68;
  v22[9] = v69;
  v22[10] = v52;
  v22[15] = v70;
  v22[16] = a7;
  v22[17] = v31;
  v22[18] = v26;
  v22[19] = v60;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v22, vt_Copy_l10r_TRC_Tone_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v54 = (v22 + 20);
  v55 = v11;
  while (1)
  {
    v56 = *v54++;
    v23 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v11 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(result + 13);
  v5 = v4 * a2 / v3;
  v6 = (v4 + v4 * a2) / v3 - v5;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 19);
    v9 = *(result + 24) & 0xFFFFFFFE;
    v10 = **(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 17);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *&v16 = *(v8 + 128);
    v17 = 8191.0 / *&v16;
    LOWORD(v16) = *(v8 + 140);
    *v2.i32 = v16;
    LOWORD(v16) = *(v8 + 144);
    v18 = v16;
    LOWORD(v16) = *(v8 + 146);
    v19 = v16;
    LOWORD(v16) = *(v8 + 148);
    v20 = v16;
    LOWORD(v16) = *(v8 + 150);
    v21 = v16;
    LOWORD(v16) = *(v8 + 152);
    v22 = v16;
    v23 = *(v8 + 40);
    v123 = *(v8 + 36);
    v124 = v21;
    v24 = *(v8 + 44);
    v121 = *(v8 + 52) * 0.5;
    v122 = *(v8 + 48) * 0.5;
    v119 = *(v8 + 60) * 0.5;
    v120 = *(v8 + 56) * 0.5;
    v25 = *(v8 + 72);
    v117 = *(v8 + 68) * 0.5;
    v118 = *(v8 + 64) * 0.5;
    v26 = *(v8 + 76);
    v27 = *(v8 + 80);
    v28 = *(v8 + 84);
    v29 = *(v8 + 88);
    v30 = *(v8 + 92);
    v31 = *(v8 + 96);
    v33 = *(v8 + 100);
    v32 = *(v8 + 104);
    v34 = v8 + 164;
    v35 = v8 + 16548;
    v36 = v8 + 32932;
    v37 = *(v8 + 108);
    v38 = *(v8 + 112);
    v39 = *(v8 + 116);
    v40 = *(v8 + 120);
    v41 = *(result + 14);
    v42 = v5 + *(result + 15);
    v43 = *(result + 28) * a2 / v3 + *(result + 44);
    v44 = *(v8 + 132);
    if (v44 >= 0x11)
    {
      v45 = 0;
    }

    else
    {
      v45 = 16 - v44;
    }

    v46 = v11[2];
    if (v46)
    {
      v47 = v46 + v15 * v42 + 2 * v41;
    }

    else
    {
      v47 = 0;
    }

    v48 = v11[1];
    _ZF = v48 == 0;
    v50 = v48 + v14 * v42 + 2 * v41;
    if (_ZF)
    {
      v50 = 0;
    }

    v51 = *v11 + v13 * v42 + 2 * v41;
    v52 = **(result + 7) + v43 * v10 + 4 * *(result + 36);
    v53 = v45;
    v54 = vdup_lane_s32(v2, 0);
    do
    {
      if (v9 >= 1)
      {
        v55 = 0;
        v56 = v47;
        v57 = v51;
        v58 = v52;
        do
        {
          v59 = v19;
          v60 = *v58;
          v61 = v58[1];
          v62 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v58), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v54), v17), 0), v62)));
          _D0.i16[0] = *(v34 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v34 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v58;
          _D0.i32[1] = v61 >> 20;
          v69 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v54), v17), 0), v62)));
          _D0.i16[0] = *(v34 + 2 * v69.u32[0]);
          __asm { FCVT            S21, H0 }

          v71 = (((v38 * _S20) + (v37 * _S19)) + (v39 * _S21)) + (v40 * fmaxf(_S19, fmaxf(_S20, _S21)));
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H5 = *(v34 + 2 * v69.u32[1]);
          __asm { FCVT            S5, H5 }

          _D24.i32[0] = v61 >> 10;
          _D24.i32[1] = v58[1];
          _D22 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D24, 0x300000003)), v54), v17), 0), v62)));
          _D22.i16[0] = *(v34 + 2 * _D22.u32[0]);
          __asm { FCVT            S22, H22 }

          _D24.i16[0] = *(v34 + 2 * _D22.u32[1]);
          __asm { FCVT            S14, H24 }

          v79 = (((v38 * _S22) + (v37 * _S5)) + (v39 * _S14)) + (v40 * fmaxf(_S5, fmaxf(_S22, _S14)));
          v80 = 8191.0;
          if (v79 <= 8191.0)
          {
            v80 = v79;
            if (v79 < 0.0)
            {
              v80 = 0.0;
            }
          }

          _H0 = *(v35 + 2 * llroundf(v72));
          __asm { FCVT            S0, H0 }

          v83 = _S19 * _S0;
          v84 = _S20 * _S0;
          v85 = _S21 * _S0;
          _H21 = *(v35 + 2 * llroundf(v80));
          __asm { FCVT            S21, H21 }

          v88 = _S5 * _S21;
          _S22 = _S22 * _S21;
          _S21 = _S14 * _S21;
          v91 = ((v26 * v84) + (v83 * v25)) + (v85 * v27);
          v92 = ((v29 * v84) + (v83 * v28)) + (v85 * v30);
          _S0 = ((v33 * v84) + (v83 * v31)) + (v85 * v32);
          _S19 = ((v26 * _S22) + (v88 * v25)) + (_S21 * v27);
          v95 = ((v29 * _S22) + (v88 * v28)) + (_S21 * v30);
          v96 = ((v33 * _S22) + (v88 * v31)) + (_S21 * v32);
          LOWORD(_S21) = *(v36 + 2 * llroundf(fminf(fmaxf(v91, 0.0), 8191.0)));
          __asm { FCVT            S21, H21 }

          LOWORD(_S22) = *(v36 + 2 * llroundf(fminf(fmaxf(v92, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S0) = *(v36 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          LOWORD(_S19) = *(v36 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm
          {
            FCVT            S24, H0
            FCVT            S0, H19
          }

          LOWORD(_S19) = *(v36 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v101 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          __asm { FCVT            S5, H19 }

          LOWORD(_S19) = *(v36 + 2 * v101);
          __asm { FCVT            S19, H19 }

          v104 = (((v23 * _S22) + (v123 * _S21)) + (v24 * _S24)) + v18;
          v105 = (((v23 * _S5) + (v123 * _S0)) + (v24 * _S19)) + v18;
          if (v104 < v18)
          {
            v106 = v18;
          }

          else
          {
            v106 = (((v23 * _S22) + (v123 * _S21)) + (v24 * _S24)) + v18;
          }

          if (v104 <= v20)
          {
            v107 = v106;
          }

          else
          {
            v107 = v20;
          }

          *v57 = llroundf(v107) << v53;
          if (v105 < v18)
          {
            v108 = v18;
          }

          else
          {
            v108 = (((v23 * _S5) + (v123 * _S0)) + (v24 * _S19)) + v18;
          }

          if (v105 > v20)
          {
            v108 = v20;
          }

          v57[1] = llroundf(v108) << v53;
          v109 = _S21 + _S0;
          v19 = v59;
          v110 = _S22 + _S5;
          v111 = _S24 + _S19;
          v112 = ((v59 + (v109 * v122)) + (v110 * v121)) + (v111 * v120);
          v113 = v22;
          if (v112 <= v22)
          {
            v113 = ((v59 + (v109 * v122)) + (v110 * v121)) + (v111 * v120);
            if (v112 < v124)
            {
              v113 = v124;
            }
          }

          v114 = (v50 + 2 * v55);
          v115 = ((v59 + (v109 * v119)) + (v110 * v118)) + (v111 * v117);
          *v114 = llroundf(v113) << v53;
          v116 = v22;
          if (v115 <= v22)
          {
            v116 = v115;
            if (v115 < v124)
            {
              v116 = v124;
            }
          }

          v114[1] = llroundf(v116) << v53;
          if (v56)
          {
            *v56 = 21845 * (v60 >> 30);
            v56[1] = 21845 * (v61 >> 30);
            v56 += 2;
          }

          v55 += 2;
          v58 += 2;
          v57 += 2;
        }

        while (v55 < v9);
      }

      v52 += v10;
      v51 += v13;
      v50 += v14;
      v47 += v15;
      ++v7;
    }

    while (v7 != v6);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v71 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v61 = a2[3];
  v15 = a2[4];
  v65 = a2[5];
  v66 = v12;
  v16 = *a6;
  v64 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v70 = a6[5];
  v67 = v13;
  v68 = v16;
  v21 = v15 + v14 != v13 || v19 + v17 != v16;
  if (v11 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v22 = (&v58 - v24);
    bzero(&v58 - v24, v25);
  }

  v60 = a1;
  v26 = a9;
  v27 = v17 - 1;
  v28 = v14 - 1;
  if (v19)
  {
    v29 = v15 + 1;
  }

  else
  {
    v28 = v14;
    v29 = v15;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v62;
    if (v21 || (v32 = v28 + 1 + v29, *v71 < 4 * v32) || (v33 = v71[1], v32 > v33) && v33 || (v34 = v27 + 1 + v30, v35 = 2 * v34, 2 * v34 > *v62) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v36 = v62[2], v35 > v36) && v36)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v67;
      ++v68;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v62;
  }

  if (v28 + v29 > v67)
  {
    v28 = v67 - v29;
  }

  if (v27 + v30 > v68)
  {
    v27 = v68 - v30;
  }

  if (v65 + v61 <= v66)
  {
    v37 = v61;
  }

  else
  {
    v37 = v66 - v65;
  }

  if (v70 + v18 <= v64)
  {
    v38 = v18;
  }

  else
  {
    v38 = v64 - v70;
  }

  if (v28 >= v27)
  {
    v39 = v27;
  }

  else
  {
    v39 = v28;
  }

  if (v37 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  v41 = v65 + v40 - 1;
  v42 = *v71 * v41 + 4 * (v39 + v29);
  v43 = *v69;
  v59 = v29;
  if (v42 > v43)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(v63 + 8) && v39 + v29 + v71[1] * v41 > v69[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  v47 = v70 + v40 - 1;
  v48 = v39 + v30;
  if ((*v31 * v47 + 2 * (v39 + v30)) > *a9)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 8) && v31[1] * v47 + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a9[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 16) && (2 * v48 + v31[2] * v47) > a9[2])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v26 = v46;
    v31 = v45;
    v11 = v44;
    v29 = v59;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v11;
  v49 = v66;
  *(v22 + 4) = v67;
  *(v22 + 12) = v49;
  *(v22 + 20) = v39;
  *(v22 + 28) = v40;
  *(v22 + 36) = v29;
  v50 = v64;
  *(v22 + 44) = v65;
  v22[11] = v50;
  v22[12] = v39;
  v22[13] = v40;
  v22[14] = v30;
  v51 = v71;
  v22[7] = v63;
  v22[8] = v51;
  v52 = v68;
  v22[9] = v69;
  v22[10] = v52;
  v22[15] = v70;
  v22[16] = a7;
  v22[17] = v31;
  v22[18] = v26;
  v22[19] = v60;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v22, vt_Copy_l10r_TRC_Mat_TRC_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v54 = (v22 + 20);
  v55 = v11;
  while (1)
  {
    v56 = *v54++;
    v23 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v11 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v10 = *result;
  v11 = *(result + 13);
  v12 = v11 * a2 / v10;
  v13 = (v11 + v11 * a2) / v10 - v12;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = *(result + 19);
    v16 = *(result + 24) & 0xFFFFFFFE;
    v17 = **(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 17);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = 8191.0 / *(v15 + 128);
    LOWORD(a5) = *(v15 + 140);
    *v9.i32 = LODWORD(a5);
    LOWORD(a5) = *(v15 + 144);
    v24 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v25 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v26 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v27 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v28 = LODWORD(a9);
    v29 = *(v15 + 36);
    v30 = *(v15 + 40);
    v31 = *(v15 + 44);
    v109 = *(v15 + 48) * 0.5;
    v108 = *(v15 + 52) * 0.5;
    v107 = *(v15 + 56) * 0.5;
    v106 = *(v15 + 60) * 0.5;
    v105 = *(v15 + 64) * 0.5;
    v32 = *(v15 + 72);
    v104 = *(v15 + 68) * 0.5;
    v33 = *(v15 + 76);
    v34 = *(v15 + 80);
    v35 = *(v15 + 84);
    v36 = *(v15 + 88);
    v37 = *(v15 + 92);
    v38 = *(v15 + 96);
    v40 = *(v15 + 100);
    v39 = *(v15 + 104);
    v41 = v15 + 164;
    v42 = v15 + 16548;
    v43 = *(result + 14);
    v44 = v12 + *(result + 15);
    v45 = *(result + 28) * a2 / v10 + *(result + 44);
    v46 = *(v15 + 132);
    if (v46 >= 0x11)
    {
      v47 = 0;
    }

    else
    {
      v47 = 16 - v46;
    }

    v48 = v18[2];
    if (v48)
    {
      v49 = v48 + v22 * v44 + 2 * v43;
    }

    else
    {
      v49 = 0;
    }

    v50 = v18[1];
    _ZF = v50 == 0;
    v52 = v50 + v21 * v44 + 2 * v43;
    if (_ZF)
    {
      v52 = 0;
    }

    v53 = *v18 + v20 * v44 + 2 * v43;
    v54 = **(result + 7) + v45 * v17 + 4 * *(result + 36);
    v55 = v47;
    v56 = vdup_lane_s32(v9, 0);
    v57 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v16 >= 1)
      {
        v58 = 0;
        v59 = v54;
        v60 = v49;
        v61 = v53;
        do
        {
          v62 = *v59;
          v63 = v59[1];
          _D6 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v59), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v56), v23), 0), v57)));
          _D6.i16[0] = *(v41 + 2 * _D6.u32[0]);
          __asm { FCVT            S6, H6 }

          _H18 = *(v41 + 2 * _D6.u32[1]);
          v69.i32[0] = *v59;
          v69.i32[1] = v63 >> 20;
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v69, 0x300000003)), v56), v23), 0), v57)));
          __asm { FCVT            S18, H18 }

          _D19.i16[0] = *(v41 + 2 * _D19.u32[0]);
          _H20 = *(v41 + 2 * _D19.u32[1]);
          __asm
          {
            FCVT            S19, H19
            FCVT            S20, H20
          }

          v74.i32[0] = v63 >> 10;
          v74.i32[1] = v63;
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v74, 0x300000003)), v56), v23), 0), v57)));
          _D15.i16[0] = *(v41 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _H22 = *(v41 + 2 * _D15.u32[1]);
          __asm { FCVT            S22, H22 }

          _S24 = ((v33 * _S18) + (*_D6.i32 * v32)) + (*_D19.i32 * v34);
          v79 = ((v36 * _S18) + (*_D6.i32 * v35)) + (*_D19.i32 * v37);
          *_D6.i32 = ((v40 * _S18) + (*_D6.i32 * v38)) + (*_D19.i32 * v39);
          _S18 = ((v33 * *_D15.i32) + (_S20 * v32)) + (_S22 * v34);
          *_D19.i32 = ((v36 * *_D15.i32) + (_S20 * v35)) + (_S22 * v37);
          _S20 = ((v40 * *_D15.i32) + (_S20 * v38)) + (_S22 * v39);
          LOWORD(_S22) = *(v42 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          __asm { FCVT            S22, H22 }

          LOWORD(_S24) = *(v42 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S24, H24 }

          _D6.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(*_D6.i32, 0.0), 8191.0)));
          LOWORD(_S18) = *(v42 + 2 * llroundf(fminf(fmaxf(_S18, 0.0), 8191.0)));
          __asm
          {
            FCVT            S6, H6
            FCVT            S18, H18
          }

          _D19.i16[0] = *(v42 + 2 * llroundf(fminf(fmaxf(*_D19.i32, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v42 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v88 = (((v30 * _S24) + (v29 * _S22)) + (v31 * _S6)) + v24;
          if (v88 < v24)
          {
            v89 = v24;
          }

          else
          {
            v89 = (((v30 * _S24) + (v29 * _S22)) + (v31 * _S6)) + v24;
          }

          v90 = v88 <= v26;
          v91 = (((v30 * _S19) + (v29 * _S18)) + (v31 * _S20)) + v24;
          if (!v90)
          {
            v89 = v26;
          }

          v92 = llroundf(v89);
          if (v91 < v24)
          {
            v93 = v24;
          }

          else
          {
            v93 = (((v30 * _S19) + (v29 * _S18)) + (v31 * _S20)) + v24;
          }

          if (v91 <= v26)
          {
            v94 = v93;
          }

          else
          {
            v94 = v26;
          }

          v95 = _S22 + _S18;
          *v61 = v92 << v55;
          v61[1] = llroundf(v94) << v55;
          v96 = _S24 + _S19;
          v97 = (v25 + (v95 * v109)) + ((_S24 + _S19) * v108);
          v98 = _S6 + _S20;
          v99 = v97 + ((_S6 + _S20) * v107);
          v100 = v28;
          if (v99 <= v28)
          {
            v100 = v99;
            if (v99 < v27)
            {
              v100 = v27;
            }
          }

          v101 = (v52 + 2 * v58);
          v102 = ((v25 + (v95 * v106)) + (v96 * v105)) + (v98 * v104);
          *v101 = llroundf(v100) << v55;
          v103 = v28;
          if (v102 <= v28)
          {
            v103 = v102;
            if (v102 < v27)
            {
              v103 = v27;
            }
          }

          v101[1] = llroundf(v103) << v55;
          if (v60)
          {
            *v60 = 21845 * (v62 >> 30);
            v60[1] = 21845 * (v63 >> 30);
            v60 += 2;
          }

          v58 += 2;
          v59 += 2;
          v61 += 2;
        }

        while (v58 < v16);
      }

      v54 += v17;
      v53 += v20;
      v52 += v21;
      v49 += v22;
      ++v14;
    }

    while (v14 != v13);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_xf422(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v62 = a8;
  v63 = a3;
  v69 = a5;
  v71 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 162);
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v61 = a2[3];
  v15 = a2[4];
  v65 = a2[5];
  v66 = v12;
  v16 = *a6;
  v64 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v70 = a6[5];
  v67 = v13;
  v68 = v16;
  v21 = v15 + v14 != v13 || v19 + v17 != v16;
  if (v11 == 255)
  {
    v22 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v22)
    {
      v23 = 0;
LABEL_64:
      free(v22);
      return v23;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v11 + 160, a3, a4);
    v22 = (&v58 - v24);
    bzero(&v58 - v24, v25);
  }

  v60 = a1;
  v26 = a9;
  v27 = v17 - 1;
  v28 = v14 - 1;
  if (v19)
  {
    v29 = v15 + 1;
  }

  else
  {
    v28 = v14;
    v29 = v15;
  }

  if (v19)
  {
    v30 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v30 = v19;
  }

  if (v27)
  {
    v31 = v62;
    if (v21 || (v32 = v28 + 1 + v29, *v71 < 4 * v32) || (v33 = v71[1], v32 > v33) && v33 || (v34 = v27 + 1 + v30, v35 = 2 * v34, 2 * v34 > *v62) || ((2 * (v34 + (v34 >> 63))) & 0xFFFFFFFFFFFFFFFCLL) > v62[1] || (v36 = v62[2], v35 > v36) && v36)
    {
      --v27;
      --v28;
    }

    else
    {
      ++v67;
      ++v68;
      ++v28;
      ++v27;
    }
  }

  else
  {
    v31 = v62;
  }

  if (v28 + v29 > v67)
  {
    v28 = v67 - v29;
  }

  if (v27 + v30 > v68)
  {
    v27 = v68 - v30;
  }

  if (v65 + v61 <= v66)
  {
    v37 = v61;
  }

  else
  {
    v37 = v66 - v65;
  }

  if (v70 + v18 <= v64)
  {
    v38 = v18;
  }

  else
  {
    v38 = v64 - v70;
  }

  if (v28 >= v27)
  {
    v39 = v27;
  }

  else
  {
    v39 = v28;
  }

  if (v37 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  v41 = v65 + v40 - 1;
  v42 = *v71 * v41 + 4 * (v39 + v29);
  v43 = *v69;
  v59 = v29;
  if (v42 > v43)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(v63 + 8) && v39 + v29 + v71[1] * v41 > v69[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  v47 = v70 + v40 - 1;
  v48 = v39 + v30;
  if ((*v31 * v47 + 2 * (v39 + v30)) > *a9)
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 8) && v31[1] * v47 + 4 * ((v48 + 1 + ((v48 + 1) >> 63)) >> 1) > a9[1])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
    goto LABEL_57;
  }

  if (*(a7 + 16) && (2 * v48 + v31[2] * v47) > a9[2])
  {
    v44 = v11;
    v45 = v31;
    v46 = a9;
LABEL_57:
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
    v26 = v46;
    v31 = v45;
    v11 = v44;
    v29 = v59;
    if (v23)
    {
      goto LABEL_63;
    }
  }

  *v22 = v11;
  v49 = v66;
  *(v22 + 4) = v67;
  *(v22 + 12) = v49;
  *(v22 + 20) = v39;
  *(v22 + 28) = v40;
  *(v22 + 36) = v29;
  v50 = v64;
  *(v22 + 44) = v65;
  v22[11] = v50;
  v22[12] = v39;
  v22[13] = v40;
  v22[14] = v30;
  v51 = v71;
  v22[7] = v63;
  v22[8] = v51;
  v52 = v68;
  v22[9] = v69;
  v22[10] = v52;
  v22[15] = v70;
  v22[16] = a7;
  v22[17] = v31;
  v22[18] = v26;
  v22[19] = v60;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v11, global_queue, v22, vt_Copy_l10r_rgb_xf422_GCD);
  if (!v11)
  {
    return 0;
  }

  v54 = (v22 + 20);
  v55 = v11;
  while (1)
  {
    v56 = *v54++;
    v23 = v56;
    if (v56)
    {
      break;
    }

    if (!--v55)
    {
      v23 = 0;
      break;
    }
  }

LABEL_63:
  if (v11 == 255)
  {
    goto LABEL_64;
  }

  return v23;
}

unsigned __int8 *vt_Copy_l10r_rgb_xf422_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 19);
    v15 = *(result + 24) & 0xFFFFFFFE;
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *&v22 = *(v14 + 136);
    v23 = *&v22 / *(v14 + 128);
    LOWORD(v22) = *(v14 + 140);
    v24 = v22;
    LOWORD(a5) = *(v14 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v14 + 152);
    v29 = LODWORD(a9);
    v30 = *(v14 + 36);
    v31 = *(v14 + 40);
    v32 = *(v14 + 44);
    v33 = *(v14 + 48) * 0.5;
    v34 = *(v14 + 52) * 0.5;
    v35 = *(v14 + 56) * 0.5;
    v36 = *(v14 + 60) * 0.5;
    v37 = *(v14 + 64) * 0.5;
    v38 = *(v14 + 68) * 0.5;
    v39 = *(result + 14);
    v40 = v11 + *(result + 15);
    v41 = *(result + 28) * a2 / v9 + *(result + 44);
    v42 = *(v14 + 132);
    if (v42 >= 0x11)
    {
      v43 = 0;
    }

    else
    {
      v43 = 16 - v42;
    }

    v44 = v17[2];
    if (v44)
    {
      v45 = v44 + v21 * v40 + 2 * v39;
    }

    else
    {
      v45 = 0;
    }

    v46 = v17[1];
    v47 = v46 == 0;
    v48 = v46 + v20 * v40 + 2 * v39;
    if (v47)
    {
      v48 = 0;
    }

    v49 = *v17 + v19 * v40 + 2 * v39;
    v50 = **(result + 7) + v41 * v16 + 4 * *(result + 36);
    v51 = v43;
    do
    {
      if (v15 >= 1)
      {
        v52 = 0;
        v53 = v50;
        v54 = v45;
        v55 = v49;
        do
        {
          v56 = *v53;
          v57 = v23 * ((*v53 & 0x3FF) - v24);
          v58 = v23 * (((*v53 >> 10) & 0x3FF) - v24);
          v59 = v23 * (((*v53 >> 20) & 0x3FF) - v24);
          v60 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
          v61 = v27;
          if (v60 <= v27)
          {
            v61 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
            if (v60 < v25)
            {
              v61 = v25;
            }
          }

          v62 = v53[1];
          v63 = v23 * ((v62 & 0x3FF) - v24);
          v64 = v23 * (((v62 >> 10) & 0x3FF) - v24);
          v65 = v23 * (((v62 >> 20) & 0x3FF) - v24);
          v66 = (((v31 * v64) + (v30 * v65)) + (v32 * v63)) + v25;
          *v55 = llroundf(v61) << v51;
          v67 = v27;
          if (v66 <= v27)
          {
            v67 = (((v31 * v64) + (v30 * v65)) + (v32 * v63)) + v25;
            if (v66 < v25)
            {
              v67 = v25;
            }
          }

          v55[1] = llroundf(v67) << v51;
          v68 = v59 + v65;
          v69 = v58 + v64;
          v70 = v57 + v63;
          v71 = ((v26 + (v68 * v33)) + (v69 * v34)) + (v70 * v35);
          v72 = v29;
          if (v71 <= v29)
          {
            v72 = ((v26 + (v68 * v33)) + (v69 * v34)) + (v70 * v35);
            if (v71 < v28)
            {
              v72 = v28;
            }
          }

          v73 = (v48 + 2 * v52);
          v74 = ((v26 + (v68 * v36)) + (v69 * v37)) + (v70 * v38);
          *v73 = llroundf(v72) << v51;
          v75 = v29;
          if (v74 <= v29)
          {
            v75 = v74;
            if (v74 < v28)
            {
              v75 = v28;
            }
          }

          v73[1] = llroundf(v75) << v51;
          if (v54)
          {
            *v54 = 21845 * (v56 >> 30);
            v54[1] = 21845 * (v62 >> 30);
            v54 += 2;
          }

          v52 += 2;
          v53 += 2;
          v55 += 2;
        }

        while (v52 < v15);
      }

      v50 += v16;
      v49 += v19;
      v48 += v20;
      v45 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Tone_Mat_TRC_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 = (v22 + 2 * v16 + v21[1] * v19);
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = *(result + 19);
    v28 = *v18 + v26 * v19;
    v29 = **(result + 7) + v25 * v24 + 4 * *(result + 36);
    v30 = (v28 + 2 * v16);
    v31 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v27 + 140);
    LOWORD(a9) = *(v27 + 144);
    LOWORD(a10) = *(v27 + 146);
    LOWORD(v10) = *(v27 + 148);
    LOWORD(v11) = *(v27 + 150);
    LOWORD(v12) = *(v27 + 152);
    v32 = *(v27 + 40);
    v136 = *(v27 + 36);
    v33 = *(v27 + 44);
    v34 = 8191.0 / *(v27 + 128);
    *v13.i32 = LODWORD(a8);
    v35 = LODWORD(a9);
    v129 = LODWORD(a10);
    v36 = v10;
    v37 = v11;
    v38 = v12;
    v134 = *(v27 + 52) * 0.5;
    v135 = *(v27 + 48) * 0.5;
    v132 = *(v27 + 60) * 0.5;
    v133 = *(v27 + 56) * 0.5;
    v131 = *(v27 + 64) * 0.5;
    v128 = *(v27 + 72);
    v130 = *(v27 + 68) * 0.5;
    v39 = *(v27 + 76);
    v40 = *(v27 + 80);
    v41 = *(v27 + 84);
    v42 = *(v27 + 88);
    v43 = *(v27 + 92);
    v44 = *(v27 + 96);
    v46 = *(v27 + 100);
    v45 = *(v27 + 104);
    v47 = v27 + 164;
    v48 = v27 + 16548;
    v49 = v27 + 32932;
    v50 = *(v27 + 108);
    v51 = *(v27 + 112);
    v52 = *(v27 + 116);
    v53 = *(v27 + 120);
    v54 = vdup_lane_s32(v13, 0);
    do
    {
      if (v31 >= 1)
      {
        v55 = 0;
        v56 = v22;
        v57 = v30;
        v58 = v29;
        do
        {
          v59 = *v58;
          v60 = v58[1];
          v61 = vdup_n_s32(0x45FFF800u);
          _D0 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v58), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v54), v34), 0), v61)));
          _D0.i16[0] = *(v47 + 2 * _D0.u32[0]);
          __asm { FCVT            S19, H0 }

          _D0.i16[0] = *(v47 + 2 * _D0.u32[1]);
          __asm { FCVT            S20, H0 }

          _D0.i32[0] = *v58;
          _D0.i32[1] = v60 >> 20;
          v69 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(_D0, 0x300000003)), v54), v34), 0), v61)));
          _D0.i16[0] = *(v47 + 2 * v69.u32[0]);
          __asm { FCVT            S22, H0 }

          v71 = fmaxf(_S19, fmaxf(_S20, _S22));
          v72 = (((v51 * _S20) + (v50 * _S19)) + (v52 * _S22)) + (v53 * v71);
          v73 = 8191.0;
          if (v72 <= 8191.0)
          {
            v73 = (((v51 * _S20) + (v50 * _S19)) + (v52 * _S22)) + (v53 * v71);
            if (v72 < 0.0)
            {
              v73 = 0.0;
            }
          }

          _H24 = *(v47 + 2 * v69.u32[1]);
          v75.i32[0] = v60 >> 10;
          v75.i32[1] = v58[1];
          v76 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v75, 0x300000003)), v54), v34), 0), v61)));
          __asm { FCVT            S21, H24 }

          _H24 = *(v47 + 2 * v76.u32[0]);
          _H15 = *(v47 + 2 * v76.u32[1]);
          __asm
          {
            FCVT            S14, H24
            FCVT            S15, H15
          }

          _H0 = *(v48 + 2 * llroundf(v73));
          __asm { FCVT            S24, H0 }

          v84 = _S19 * _S24;
          v85 = _S20 * _S24;
          v86 = _S22 * _S24;
          v87 = (((v51 * _S14) + (v50 * _S21)) + (v52 * _S15)) + (v53 * fmaxf(_S21, fmaxf(_S14, _S15)));
          v88 = 8191.0;
          if (v87 <= 8191.0)
          {
            v88 = v87;
            if (v87 < 0.0)
            {
              v88 = 0.0;
            }
          }

          _H22 = *(v48 + 2 * llroundf(v88));
          __asm { FCVT            S22, H22 }

          v91 = _S21 * _S22;
          _S24 = _S14 * _S22;
          v93 = _S15 * _S22;
          v94 = ((v39 * v85) + (v84 * v128)) + (v86 * v40);
          v95 = ((v42 * v85) + (v84 * v41)) + (v86 * v43);
          v96 = ((v46 * v85) + (v84 * v44)) + (v86 * v45);
          v97 = (v39 * _S24) + (v91 * v128);
          v98 = (v42 * _S24) + (v91 * v41);
          v99 = (v46 * _S24) + (v91 * v44);
          _S19 = v97 + (v93 * v40);
          _S20 = v98 + (v93 * v43);
          LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v94, 0.0), 8191.0)));
          v102 = v99 + (v93 * v45);
          __asm { FCVT            S22, H24 }

          LOWORD(_S24) = *(v49 + 2 * llroundf(fminf(fmaxf(v95, 0.0), 8191.0)));
          v104 = llroundf(fminf(fmaxf(v96, 0.0), 8191.0));
          __asm { FCVT            S0, H24 }

          LOWORD(_S24) = *(v49 + 2 * v104);
          __asm { FCVT            S24, H24 }

          LOWORD(_S19) = *(v49 + 2 * llroundf(fminf(fmaxf(_S19, 0.0), 8191.0)));
          __asm { FCVT            S19, H19 }

          LOWORD(_S20) = *(v49 + 2 * llroundf(fminf(fmaxf(_S20, 0.0), 8191.0)));
          __asm { FCVT            S20, H20 }

          v109 = llroundf(fminf(fmaxf(v102, 0.0), 8191.0));
          v110 = (v32 * _S0) + (v136 * _S22);
          v111 = _S22 + _S19;
          _S0 = _S0 + _S20;
          v113 = (v129 + (v111 * v135)) + (_S0 * v134);
          v114 = (v129 + (v111 * v132)) + (_S0 * v131);
          LOWORD(_S0) = *(v49 + 2 * v109);
          __asm { FCVT            S0, H0 }

          v116 = v110 + (v33 * _S24);
          v117 = _S24 + _S0;
          v118 = v113 + ((_S24 + _S0) * v133);
          v119 = v114 + (v117 * v130);
          if (v118 < v35)
          {
            v120 = LODWORD(a9);
          }

          else
          {
            v120 = v118;
          }

          v121 = v118 <= v36;
          v122 = v116 + v35;
          if (!v121)
          {
            v120 = v36;
          }

          v123 = llroundf(v120);
          if (v122 < v37)
          {
            v124 = v37;
          }

          else
          {
            v124 = v116 + v35;
          }

          *v57 = v123;
          if (v122 > v38)
          {
            v124 = v12;
          }

          v57[1] = llroundf(v124);
          v125 = v36;
          if (v119 <= v36)
          {
            v125 = v119;
            if (v119 < v35)
            {
              v125 = LODWORD(a9);
            }
          }

          v126 = (((v32 * _S20) + (v136 * _S19)) + (v33 * _S0)) + v35;
          v57[2] = llroundf(v125);
          v127 = v12;
          if (v126 <= v38)
          {
            v127 = v126;
            if (v126 < v37)
            {
              v127 = v37;
            }
          }

          v57[3] = llroundf(v127);
          if (v56)
          {
            *v56 = 21845 * (v59 >> 30);
            v56[1] = 21845 * (v60 >> 30);
            v56 += 2;
          }

          v55 += 2;
          v58 += 2;
          v57 += 4;
        }

        while (v55 < v31);
      }

      v29 += v25;
      v30 = (v30 + v26);
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_TRC_Mat_TRC_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float a8, float a9, float a10)
{
  v14 = *result;
  v15 = *(result + 13);
  v16 = *(result + 14);
  v17 = v15 * a2 / v14;
  v18 = *(result + 16);
  v19 = v17 + *(result + 15);
  v20 = (v15 + v15 * a2) / v14 - v17;
  v21 = *(result + 17);
  v22 = v18[1];
  if (v22)
  {
    v22 = (v22 + 2 * v16 + v21[1] * v19);
  }

  if (v20 >= 1)
  {
    v23 = 0;
    v24 = *(result + 28) * a2 / v14 + *(result + 44);
    v25 = **(result + 8);
    v26 = *v21;
    v27 = **(result + 7) + v25 * v24;
    v28 = *(result + 19);
    v29 = *v18 + v26 * v19;
    v30 = (v27 + 4 * *(result + 36));
    v31 = (v29 + 2 * v16);
    v32 = *(result + 24) & 0xFFFFFFFE;
    LOWORD(a8) = *(v28 + 140);
    LOWORD(a9) = *(v28 + 144);
    LOWORD(a10) = *(v28 + 146);
    LOWORD(v10) = *(v28 + 148);
    LOWORD(v11) = *(v28 + 150);
    LOWORD(v12) = *(v28 + 152);
    v33 = *(v28 + 36);
    v34 = *(v28 + 40);
    v35 = 8191.0 / *(v28 + 128);
    v36 = *(v28 + 44);
    *v13.i32 = LODWORD(a8);
    v37 = LODWORD(a9);
    v38 = LODWORD(a10);
    v39 = v10;
    v40 = v11;
    v41 = v12;
    v103 = *(v28 + 52) * 0.5;
    v104 = *(v28 + 48) * 0.5;
    v101 = *(v28 + 60) * 0.5;
    v102 = *(v28 + 56) * 0.5;
    v42 = *(v28 + 72);
    v99 = *(v28 + 68) * 0.5;
    v100 = *(v28 + 64) * 0.5;
    v43 = *(v28 + 76);
    v44 = *(v28 + 80);
    v45 = *(v28 + 84);
    v46 = *(v28 + 88);
    v47 = *(v28 + 92);
    v48 = *(v28 + 96);
    v50 = *(v28 + 100);
    v49 = *(v28 + 104);
    v51 = v28 + 164;
    v52 = v28 + 16548;
    v53 = vdup_lane_s32(v13, 0);
    v54 = vdup_n_s32(0x45FFF800u);
    do
    {
      if (v32 >= 1)
      {
        v55 = 0;
        v56 = v30;
        v57 = v22;
        v58 = v31;
        do
        {
          v59 = *v56;
          v60 = v56[1];
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(*v56), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v53), v35), 0), v54)));
          _D7.i16[0] = *(v51 + 2 * _D7.u32[0]);
          __asm { FCVT            S7, H7 }

          _H18 = *(v51 + 2 * _D7.u32[1]);
          v67.i32[0] = *v56;
          v67.i32[1] = v60 >> 20;
          _D19 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v67, 0x300000003)), v53), v35), 0), v54)));
          _D19.i16[0] = *(v51 + 2 * _D19.u32[0]);
          __asm
          {
            FCVT            S18, H18
            FCVT            S19, H19
          }

          _H20 = *(v51 + 2 * _D19.u32[1]);
          __asm { FCVT            S20, H20 }

          v72.i32[0] = v60 >> 10;
          v72.i32[1] = v60;
          _D15 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(v72, 0x300000003)), v53), v35), 0), v54)));
          _D15.i16[0] = *(v51 + 2 * _D15.u32[0]);
          __asm { FCVT            S15, H15 }

          _S22 = ((v43 * _S18) + (*_D7.i32 * v42)) + (*_D19.i32 * v44);
          _S24 = ((v46 * _S18) + (*_D7.i32 * v45)) + (*_D19.i32 * v47);
          *_D7.i32 = ((v50 * _S18) + (*_D7.i32 * v48)) + (*_D19.i32 * v49);
          _S18 = (v43 * *_D15.i32) + (_S20 * v42);
          *_D19.i32 = (v46 * *_D15.i32) + (_S20 * v45);
          v77 = (v50 * *_D15.i32) + (_S20 * v48);
          _D15.i16[0] = *(v51 + 2 * _D15.u32[1]);
          __asm { FCVT            S15, H15 }

          *_D19.i32 = *_D19.i32 + (*_D15.i32 * v47);
          LOWORD(_S22) = *(v52 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
          v78 = v77 + (*_D15.i32 * v49);
          __asm { FCVT            S22, H22 }

          LOWORD(_S24) = *(v52 + 2 * llroundf(fminf(fmaxf(_S24, 0.0), 8191.0)));
          v80 = llroundf(fminf(fmaxf(*_D7.i32, 0.0), 8191.0));
          __asm { FCVT            S7, H24 }

          LOWORD(_S24) = *(v52 + 2 * v80);
          __asm { FCVT            S24, H24 }

          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(_S18 + (*_D15.i32 * v44), 0.0), 8191.0)));
          __asm { FCVT            S15, H18 }

          LOWORD(_S18) = *(v52 + 2 * llroundf(fminf(fmaxf(*_D19.i32, 0.0), 8191.0)));
          __asm { FCVT            S18, H18 }

          v84 = llroundf(fminf(fmaxf(v78, 0.0), 8191.0));
          v85 = (v34 * *_D7.i32) + (v33 * _S22);
          *_D19.i32 = _S22 + _S15;
          *_D7.i32 = *_D7.i32 + _S18;
          v86 = (v38 + ((_S22 + _S15) * v104)) + (*_D7.i32 * v103);
          *_D7.i32 = (v38 + (*_D19.i32 * v101)) + (*_D7.i32 * v100);
          _D19.i16[0] = *(v52 + 2 * v84);
          __asm { FCVT            S19, H19 }

          v88 = v85 + (v36 * _S24);
          v89 = v86 + ((_S24 + _S19) * v102);
          v90 = *_D7.i32 + ((_S24 + _S19) * v99);
          if (v89 < v37)
          {
            v91 = v37;
          }

          else
          {
            v91 = v89;
          }

          v92 = v89 <= v39;
          v93 = v88 + v37;
          if (!v92)
          {
            v91 = v39;
          }

          v94 = llroundf(v91);
          if (v93 < v40)
          {
            v95 = v40;
          }

          else
          {
            v95 = v88 + v37;
          }

          *v58 = v94;
          if (v93 > v41)
          {
            v95 = v41;
          }

          v58[1] = llroundf(v95);
          v96 = v39;
          if (v90 <= v39)
          {
            v96 = v90;
            if (v90 < v37)
            {
              v96 = v37;
            }
          }

          v97 = (((v34 * _S18) + (v33 * _S15)) + (v36 * _S19)) + v37;
          v58[2] = llroundf(v96);
          v98 = v41;
          if (v97 <= v41)
          {
            v98 = v97;
            if (v97 < v40)
            {
              v98 = v40;
            }
          }

          v58[3] = llroundf(v98);
          if (v57)
          {
            *v57 = 21845 * (v59 >> 30);
            v57[1] = 21845 * (v60 >> 30);
            v57 += 2;
          }

          v55 += 2;
          v56 += 2;
          v58 += 4;
        }

        while (v55 < v32);
      }

      v30 = (v30 + v25);
      v31 = (v31 + v26);
      ++v23;
    }

    while (v23 != v20);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_v216(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v39 = a2[2];
  v40 = v16;
  v18 = *a6;
  v35 = a6[1];
  v36 = v17;
  v37 = a6[2];
  v38 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_17:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v35.i8[-v21];
    bzero(&v35 - v21, v22);
  }

  v23 = vbslq_s8(vcgtq_s64(vaddq_s64(v39, v36), v40), vsubq_s64(v40, v39), v36);
  v24 = vbslq_s8(vcgtq_s64(vaddq_s64(v37, v35), v38), vsubq_s64(v38, v37), v35);
  v25 = vbslq_s8(vcgtq_s64(v24, v23), v23, v24);
  v23.i64[0] = v25.i64[0];
  v23.i64[1] = -1;
  v26 = vaddq_s64(v39, v23);
  if ((*a4 * (v26.i64[1] + v25.i64[1]) + 4 * v26.i64[0]) <= *a5)
  {
    if (!*(a3 + 8) || v26.i64[0] + a4[1] * (v26.i64[1] + v25.i64[1]) <= a5[1])
    {
      goto LABEL_11;
    }

    v36 = v25;
  }

  else
  {
    v36 = v25;
  }

  fig_log_get_emitter();
  v27 = FigSignalErrorAtGM();
  v25 = v36;
  if (v27)
  {
    v20 = v27;
    goto LABEL_16;
  }

LABEL_11:
  *v19 = v15;
  v28 = v39;
  *(v19 + 4) = v40;
  *(v19 + 20) = v25;
  *(v19 + 36) = v28;
  v29 = v37;
  *(v19 + 5) = v38;
  *(v19 + 6) = v25;
  *(v19 + 7) = v29;
  *(v19 + 7) = a3;
  *(v19 + 8) = a4;
  *(v19 + 9) = a5;
  *(v19 + 16) = a7;
  *(v19 + 17) = a8;
  *(v19 + 18) = a9;
  *(v19 + 19) = a1;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v19, vt_Copy_l10r_rgb_v216_GCD);
  if (!v15)
  {
    return 0;
  }

  v31 = (v19 + 160);
  v32 = v15;
  while (1)
  {
    v33 = *v31++;
    v20 = v33;
    if (v33)
    {
      break;
    }

    if (!--v32)
    {
      v20 = 0;
      break;
    }
  }

LABEL_16:
  if (v15 == 255)
  {
    goto LABEL_17;
  }

  return v20;
}

unsigned __int8 *vt_Copy_l10r_rgb_v216_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = *(result + 14);
  v12 = v10 * a2 / v9;
  v13 = *(result + 16);
  v14 = v12 + *(result + 15);
  v15 = (v10 + v10 * a2) / v9 - v12;
  v16 = *(result + 17);
  v17 = v13[1];
  if (v17)
  {
    v17 = (v17 + 2 * v11 + v16[1] * v14);
  }

  if (v15 >= 1)
  {
    v18 = 0;
    v19 = *(result + 28) * a2 / v9 + *(result + 44);
    v20 = **(result + 8);
    v21 = *v16;
    v22 = **(result + 7) + v20 * v19;
    v23 = *(result + 19);
    v24 = *v13 + v21 * v14;
    v25 = (v22 + 4 * *(result + 36));
    v26 = (v24 + 2 * v11);
    v27 = *(result + 24) & 0xFFFFFFFE;
    *&a4 = *(v23 + 136);
    v28 = *&a4 / *(v23 + 128);
    LOWORD(a4) = *(v23 + 140);
    *&a4 = LODWORD(a4);
    LOWORD(a5) = *(v23 + 144);
    v29 = LODWORD(a5);
    LOWORD(a6) = *(v23 + 146);
    v30 = LODWORD(a6);
    LOWORD(a7) = *(v23 + 148);
    v31 = LODWORD(a7);
    LOWORD(a8) = *(v23 + 150);
    v32 = LODWORD(a8);
    LOWORD(a9) = *(v23 + 152);
    v33 = LODWORD(a9);
    _S7 = *(v23 + 36);
    v35 = *(v23 + 40);
    v36 = *(v23 + 44);
    v37 = *(v23 + 48) * 0.5;
    v38 = *(v23 + 52) * 0.5;
    v39 = *(v23 + 56) * 0.5;
    v40 = *(v23 + 60) * 0.5;
    v41 = *(v23 + 64) * 0.5;
    v42 = *(v23 + 68) * 0.5;
    v43 = vdup_lane_s32(*&a4, 0);
    do
    {
      if (v27 >= 1)
      {
        v44 = 0;
        v45 = v25;
        v46 = v17;
        v47 = v26;
        do
        {
          v48 = *v45++;
          v49 = v48.u32[1];
          v50 = v48.i32[0];
          v51 = v28 * ((v48.i16[0] & 0x3FF) - *&a4);
          v52 = v28 * ((v48.i16[2] & 0x3FF) - *&a4);
          v53 = vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshr_n_u32(v48, 0xAuLL), 0x300000003)), v43), v28);
          _D28 = vmul_n_f32(vsub_f32(vcvt_f32_u32((*&vshr_n_u32(v48, 0x14uLL) & 0xFFFFF3FFFFFFF3FFLL)), v43), v28);
          v55 = (((v35 * v53.f32[0]) + (_S7 * _D28.f32[0])) + (v36 * v51)) + v29;
          v56 = vaddv_f32(_D28);
          v57 = vaddv_f32(v53);
          v58 = v51 + v52;
          v59 = ((v30 + (v56 * v37)) + (v57 * v38)) + (v58 * v39);
          v60 = ((v30 + (v56 * v40)) + (v57 * v41)) + (v58 * v42);
          if (v59 < v29)
          {
            v61 = v29;
          }

          else
          {
            v61 = v59;
          }

          if (v59 > v31)
          {
            v61 = v31;
          }

          *v47 = llroundf(v61);
          if (v55 < v32)
          {
            v62 = v32;
          }

          else
          {
            v62 = v55;
          }

          if (v55 <= v33)
          {
            v63 = v62;
          }

          else
          {
            v63 = v33;
          }

          v47[1] = llroundf(v63);
          v64 = v31;
          if (v60 <= v31)
          {
            v64 = v60;
            if (v60 < v29)
            {
              v64 = v29;
            }
          }

          __asm { FMLA            S27, S7, V28.S[1] }

          v70 = (_S27 + (v36 * v52)) + v29;
          v47[2] = llroundf(v64);
          v71 = v33;
          if (v70 <= v33)
          {
            v71 = v70;
            if (v70 < v32)
            {
              v71 = v32;
            }
          }

          v47[3] = llroundf(v71);
          if (v46)
          {
            *v46 = 21845 * (v50 >> 30);
            v46[1] = 21845 * (v49 >> 30);
            v46 += 2;
          }

          v44 += 2;
          v47 += 4;
        }

        while (v44 < v27);
      }

      v25 = (v25 + v20);
      v26 = (v26 + v21);
      ++v18;
    }

    while (v18 != v15);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v19 = *a6;
  v18 = a6[1];
  v44 = v17;
  v45 = v19;
  v43 = v18;
  v48 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41 - v22;
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v44), v47), vsubq_s64(v47, v46), v44);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v43), v45), vsubq_s64(v45, v48), v43);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v46, v25);
  v29 = (*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) > *a5;
  v42 = a9;
  v44 = v27;
  if (v29)
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else if (*(a3 + 8) && v28.i64[0] + a4[1] * (v28.i64[1] + v27.i64[1]) > a5[1])
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else
  {
    v33 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v27);
    if (v33.i64[0] + *a8 * v33.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v33.i64[1] + 2 * v33.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v33.i64[0] + a8[2] * v33.i64[1] <= a9[2])
        {
          goto LABEL_20;
        }

        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }

    else
    {
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42;
  v27 = v44;
  if (v34)
  {
    v21 = v34;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v35 = v46;
  *(v20 + 4) = v47;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v45;
  *(v20 + 6) = v27;
  *(v20 + 7) = v48;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Tone_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5)
{
  v5 = *result;
  v6 = *(result + 13);
  v7 = v6 * a2 / v5;
  v8 = (v6 + v6 * a2) / v5 - v7;
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *(result + 24);
    v11 = *(result + 19);
    v12 = **(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 17);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    *&v18 = *(v11 + 128);
    v19 = 8191.0 / *&v18;
    LOWORD(v18) = *(v11 + 140);
    *&a5 = v18;
    LOWORD(v18) = *(v11 + 144);
    v20 = v18;
    LOWORD(v18) = *(v11 + 146);
    v21 = v18;
    LOWORD(v18) = *(v11 + 148);
    v22 = v18;
    LOWORD(v18) = *(v11 + 150);
    v23 = v18;
    LOWORD(v18) = *(v11 + 152);
    v24 = v18;
    v25 = *(v11 + 36);
    v26 = *(v11 + 40);
    v27 = *(v11 + 44);
    v94 = *(v11 + 52);
    v95 = *(v11 + 48);
    v92 = *(v11 + 60);
    v93 = *(v11 + 56);
    v90 = *(v11 + 68);
    v91 = *(v11 + 64);
    v28 = *(v11 + 72);
    v29 = *(v11 + 76);
    v30 = *(v11 + 80);
    v31 = *(v11 + 84);
    v32 = *(v11 + 88);
    v33 = *(v11 + 92);
    v35 = *(v11 + 96);
    v34 = *(v11 + 100);
    v36 = *(v11 + 104);
    v37 = *(v11 + 108);
    v38 = v11 + 164;
    v39 = v11 + 16548;
    v40 = v11 + 32932;
    v41 = *(v11 + 112);
    v42 = *(v11 + 116);
    v43 = *(v11 + 120);
    v44 = *(result + 14);
    v45 = v7 + *(result + 15);
    v46 = *(result + 28) * a2 / v5 + *(result + 44);
    v47 = v13[2];
    if (v47)
    {
      v48 = (v47 + v17 * v45 + v44);
    }

    else
    {
      v48 = 0;
    }

    v50 = *v13;
    v49 = *(*(result + 16) + 8);
    _ZF = v49 == 0;
    v52 = (v49 + v16 * v45 + v44);
    if (_ZF)
    {
      v52 = 0;
    }

    v53 = (v50 + v15 * v45 + v44);
    v54 = **(result + 7) + v46 * v12 + 4 * *(result + 36);
    v55 = vdup_lane_s32(*&a5, 0);
    do
    {
      if (v10 >= 1)
      {
        v56 = v10;
        v57 = v48;
        v58 = v52;
        v59 = v53;
        v60 = v54;
        do
        {
          v62 = *v60++;
          v61 = v62;
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v62), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v55), v19), 0), vdup_n_s32(0x45FFF800u))));
          _D7.i16[0] = *(v38 + 2 * _D7.u32[0]);
          __asm { FCVT            S21, H7 }

          _D7.i16[0] = *(v38 + 2 * _D7.u32[1]);
          __asm { FCVT            S22, H7 }

          _H0 = *(v38 + 2 * llroundf(fminf(fmaxf(v19 * ((v62 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v71 = (((v41 * _S22) + (v37 * _S21)) + (v42 * _S15)) + (v43 * fmaxf(_S21, fmaxf(_S22, _S15)));
          v72 = 8191.0;
          if (v71 <= 8191.0)
          {
            v72 = v71;
            if (v71 < 0.0)
            {
              v72 = 0.0;
            }
          }

          _H0 = *(v39 + 2 * llroundf(v72));
          __asm { FCVT            S0, H0 }

          _S7 = _S21 * _S0;
          v76 = _S22 * _S0;
          v77 = _S15 * _S0;
          v78 = ((v29 * v76) + (_S7 * v28)) + (v77 * v30);
          v79 = ((v32 * v76) + (_S7 * v31)) + (v77 * v33);
          _S0 = ((v34 * v76) + (_S7 * v35)) + (v77 * v36);
          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v78, 0.0), 8191.0)));
          __asm { FCVT            S21, H7 }

          LOWORD(_S7) = *(v40 + 2 * llroundf(fminf(fmaxf(v79, 0.0), 8191.0)));
          __asm { FCVT            S22, H7 }

          LOWORD(_S0) = *(v40 + 2 * llroundf(fminf(fmaxf(_S0, 0.0), 8191.0)));
          __asm { FCVT            S15, H0 }

          v84 = (((v26 * _S22) + (v25 * _S21)) + (v27 * _S15)) + v20;
          v85 = v22;
          if (v84 <= v22)
          {
            v85 = (((v26 * _S22) + (v25 * _S21)) + (v27 * _S15)) + v20;
            if (v84 < v20)
            {
              v85 = v20;
            }
          }

          *v59++ = llroundf(v85);
          if (v58)
          {
            v86 = ((v21 + (_S21 * v95)) + (_S22 * v94)) + (_S15 * v93);
            v87 = v24;
            if (v86 <= v24)
            {
              v87 = ((v21 + (_S21 * v95)) + (_S22 * v94)) + (_S15 * v93);
              if (v86 < v23)
              {
                v87 = v23;
              }
            }

            v88 = ((v21 + (_S21 * v92)) + (_S22 * v91)) + (_S15 * v90);
            *v58 = llroundf(v87);
            v89 = v24;
            if (v88 <= v24)
            {
              v89 = v88;
              if (v88 < v23)
              {
                v89 = v23;
              }
            }

            v58[1] = llroundf(v89);
            v58 += 2;
          }

          if (v57)
          {
            *v57++ = 85 * (v61 >> 30);
          }

          --v56;
        }

        while (v56);
      }

      v54 += v12;
      v53 += v15;
      v52 += v16;
      v48 += v17;
      ++v9;
    }

    while (v9 != v8);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Mat_TRC_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v19 = *a6;
  v18 = a6[1];
  v44 = v17;
  v45 = v19;
  v43 = v18;
  v48 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41 - v22;
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v44), v47), vsubq_s64(v47, v46), v44);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v43), v45), vsubq_s64(v45, v48), v43);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v46, v25);
  v29 = (*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) > *a5;
  v42 = a9;
  v44 = v27;
  if (v29)
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else if (*(a3 + 8) && v28.i64[0] + a4[1] * (v28.i64[1] + v27.i64[1]) > a5[1])
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else
  {
    v33 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v27);
    if (v33.i64[0] + *a8 * v33.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v33.i64[1] + 2 * v33.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v33.i64[0] + a8[2] * v33.i64[1] <= a9[2])
        {
          goto LABEL_20;
        }

        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }

    else
    {
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42;
  v27 = v44;
  if (v34)
  {
    v21 = v34;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v35 = v46;
  *(v20 + 4) = v47;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v45;
  *(v20 + 6) = v27;
  *(v20 + 7) = v48;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Mat_TRC_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_TRC_Mat_TRC_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, double a5, float a6, float a7, float a8)
{
  v8 = *result;
  v9 = *(result + 13);
  v10 = v9 * a2 / v8;
  v11 = (v9 + v9 * a2) / v8 - v10;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(result + 24);
    v14 = *(result + 19);
    v15 = **(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 17);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = 8191.0 / *(v14 + 128);
    LOWORD(a5) = *(v14 + 140);
    *&a5 = LODWORD(a5);
    LOWORD(a6) = *(v14 + 144);
    v22 = LODWORD(a6);
    LOWORD(a7) = *(v14 + 146);
    v23 = LODWORD(a7);
    LOWORD(a8) = *(v14 + 148);
    v24 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 150);
    v25 = LODWORD(a8);
    LOWORD(a8) = *(v14 + 152);
    v26 = LODWORD(a8);
    v27 = *(v14 + 36);
    v28 = *(v14 + 40);
    v29 = *(v14 + 44);
    v84 = *(v14 + 52);
    v85 = *(v14 + 48);
    v82 = *(v14 + 60);
    v83 = *(v14 + 56);
    v30 = *(v14 + 68);
    v81 = *(v14 + 64);
    v31 = *(v14 + 72);
    v32 = *(v14 + 76);
    v33 = *(v14 + 80);
    v34 = *(v14 + 84);
    v35 = *(v14 + 88);
    v36 = *(v14 + 92);
    v38 = *(v14 + 96);
    v37 = *(v14 + 100);
    v39 = *(v14 + 104);
    v40 = v14 + 164;
    v41 = v14 + 16548;
    v42 = *(result + 14);
    v43 = v10 + *(result + 15);
    v44 = *(result + 28) * a2 / v8 + *(result + 44);
    v45 = v16[2];
    if (v45)
    {
      v46 = (v45 + v20 * v43 + v42);
    }

    else
    {
      v46 = 0;
    }

    v48 = *v16;
    v47 = *(*(result + 16) + 8);
    _ZF = v47 == 0;
    v50 = (v47 + v19 * v43 + v42);
    if (_ZF)
    {
      v50 = 0;
    }

    v51 = (v48 + v18 * v43 + v42);
    v52 = **(result + 7) + v44 * v15 + 4 * *(result + 36);
    v53 = vdup_lane_s32(*&a5, 0);
    do
    {
      if (v13 >= 1)
      {
        v54 = v13;
        v55 = v52;
        v56 = v46;
        v57 = v50;
        v58 = v51;
        do
        {
          v60 = *v55++;
          v59 = v60;
          _D7 = vcvt_s32_f32(vrnda_f32(vminnm_f32(vmaxnm_f32(vmul_n_f32(vsub_f32(vcvt_f32_u32(vand_s8(vshl_u32(vdup_n_s32(v60), 0xFFFFFFF6FFFFFFECLL), 0x300000003)), v53), v21), 0), vdup_n_s32(0x45FFF800u))));
          _D7.i16[0] = *(v40 + 2 * _D7.u32[0]);
          __asm { FCVT            S7, H7 }

          _H19 = *(v40 + 2 * _D7.u32[1]);
          __asm { FCVT            S19, H19 }

          _H5 = *(v40 + 2 * llroundf(fminf(fmaxf(v21 * ((v60 & 0x3FF) - *&a5), 0.0), 8191.0)));
          __asm { FCVT            S5, H5 }

          v69 = ((v32 * _S19) + (*_D7.i32 * v31)) + (_S5 * v33);
          v70 = ((v35 * _S19) + (*_D7.i32 * v34)) + (_S5 * v36);
          _S5 = ((v37 * _S19) + (*_D7.i32 * v38)) + (_S5 * v39);
          _D7.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(v69, 0.0), 8191.0)));
          __asm { FCVT            S15, H7 }

          _D7.i16[0] = *(v41 + 2 * llroundf(fminf(fmaxf(v70, 0.0), 8191.0)));
          __asm { FCVT            S19, H7 }

          LOWORD(_S5) = *(v41 + 2 * llroundf(fminf(fmaxf(_S5, 0.0), 8191.0)));
          __asm { FCVT            S20, H5 }

          v75 = (((v28 * _S19) + (v27 * _S15)) + (v29 * _S20)) + v22;
          v76 = v24;
          if (v75 <= v24)
          {
            v76 = (((v28 * _S19) + (v27 * _S15)) + (v29 * _S20)) + v22;
            if (v75 < v22)
            {
              v76 = v22;
            }
          }

          *v58++ = llroundf(v76);
          if (v57)
          {
            v77 = ((v23 + (_S15 * v85)) + (_S19 * v84)) + (_S20 * v83);
            v78 = v26;
            if (v77 <= v26)
            {
              v78 = ((v23 + (_S15 * v85)) + (_S19 * v84)) + (_S20 * v83);
              if (v77 < v25)
              {
                v78 = v25;
              }
            }

            v79 = ((v23 + (_S15 * v82)) + (_S19 * v81)) + (_S20 * v30);
            *v57 = llroundf(v78);
            v80 = v26;
            if (v79 <= v26)
            {
              v80 = v79;
              if (v79 < v25)
              {
                v80 = v25;
              }
            }

            v57[1] = llroundf(v80);
            v57 += 2;
          }

          if (v56)
          {
            *v56++ = 85 * (v59 >> 30);
          }

          --v54;
        }

        while (v54);
      }

      v52 += v15;
      v51 += v18;
      v50 += v19;
      v46 += v20;
      ++v12;
    }

    while (v12 != v11);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_rgb_444vf(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v46 = a2[2];
  v47 = v16;
  v19 = *a6;
  v18 = a6[1];
  v44 = v17;
  v45 = v19;
  v43 = v18;
  v48 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v41 - v22;
    bzero(&v41 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v46, v44), v47), vsubq_s64(v47, v46), v44);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v43), v45), vsubq_s64(v45, v48), v43);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v25.i64[0] = v27.i64[0];
  v25.i64[1] = -1;
  v28 = vaddq_s64(v46, v25);
  v29 = (*a4 * (v28.i64[1] + v27.i64[1]) + 4 * v28.i64[0]) > *a5;
  v42 = a9;
  v44 = v27;
  if (v29)
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else if (*(a3 + 8) && v28.i64[0] + a4[1] * (v28.i64[1] + v27.i64[1]) > a5[1])
  {
    v30 = v14;
    v31 = a8;
    v32 = a7;
  }

  else
  {
    v33 = vaddq_s64((*&v48 + __PAIR128__(-1, 0)), v27);
    if (v33.i64[0] + *a8 * v33.i64[1] <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v33.i64[1] + 2 * v33.i64[0]) > a9[1])
      {
        v30 = v14;
        v31 = a8;
        v32 = a7;
      }

      else
      {
        if (!*(a7 + 16) || v33.i64[0] + a8[2] * v33.i64[1] <= a9[2])
        {
          goto LABEL_20;
        }

        v30 = v14;
        v31 = a8;
        v32 = a7;
      }
    }

    else
    {
      v30 = v14;
      v31 = a8;
      v32 = a7;
    }
  }

  fig_log_get_emitter();
  v34 = FigSignalErrorAtGM();
  a7 = v32;
  a8 = v31;
  v14 = v30;
  v24 = v42;
  v27 = v44;
  if (v34)
  {
    v21 = v34;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v35 = v46;
  *(v20 + 4) = v47;
  *(v20 + 20) = v27;
  *(v20 + 36) = v35;
  *(v20 + 5) = v45;
  *(v20 + 6) = v27;
  *(v20 + 7) = v48;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_rgb_444vf_GCD);
  if (!v15)
  {
    return 0;
  }

  v37 = (v20 + 160);
  v38 = v15;
  while (1)
  {
    v39 = *v37++;
    v21 = v39;
    if (v39)
    {
      break;
    }

    if (!--v38)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}

unsigned __int8 *vt_Copy_l10r_rgb_444vf_GCD(unsigned __int8 *result, uint64_t a2, double a3, double a4, float a5, float a6, float a7, float a8, float a9)
{
  v9 = *result;
  v10 = *(result + 13);
  v11 = v10 * a2 / v9;
  v12 = (v10 + v10 * a2) / v9 - v11;
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *(result + 24);
    v15 = *(result + 19);
    v16 = **(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 17);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    *&v22 = *(v15 + 136);
    v23 = *&v22 / *(v15 + 128);
    LOWORD(v22) = *(v15 + 140);
    v24 = v22;
    LOWORD(a5) = *(v15 + 144);
    v25 = LODWORD(a5);
    LOWORD(a6) = *(v15 + 146);
    v26 = LODWORD(a6);
    LOWORD(a7) = *(v15 + 148);
    v27 = LODWORD(a7);
    LOWORD(a8) = *(v15 + 150);
    v28 = LODWORD(a8);
    LOWORD(a9) = *(v15 + 152);
    v29 = LODWORD(a9);
    v30 = *(v15 + 36);
    v31 = *(v15 + 40);
    v32 = *(v15 + 44);
    v33 = *(v15 + 48);
    v34 = *(v15 + 52);
    v35 = *(v15 + 56);
    v36 = *(v15 + 60);
    v37 = *(v15 + 64);
    v38 = *(v15 + 68);
    v39 = *(result + 14);
    v40 = v11 + *(result + 15);
    v41 = *(result + 28) * a2 / v9 + *(result + 44);
    v42 = v17[2];
    if (v42)
    {
      v43 = (v42 + v21 * v40 + v39);
    }

    else
    {
      v43 = 0;
    }

    v44 = *v17;
    v45 = *(*(result + 16) + 8);
    v46 = v45 == 0;
    v47 = (v45 + v20 * v40 + v39);
    if (v46)
    {
      v47 = 0;
    }

    v48 = (v44 + v19 * v40 + v39);
    v49 = **(result + 7) + v41 * v16 + 4 * *(result + 36);
    do
    {
      if (v14 >= 1)
      {
        v50 = v14;
        v51 = v49;
        v52 = v43;
        v53 = v47;
        v54 = v48;
        do
        {
          v56 = *v51++;
          v55 = v56;
          v57 = v23 * ((v56 & 0x3FF) - v24);
          v58 = v23 * (((v56 >> 10) & 0x3FF) - v24);
          v59 = v23 * (((v56 >> 20) & 0x3FF) - v24);
          v60 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
          v61 = v27;
          if (v60 <= v27)
          {
            v61 = (((v31 * v58) + (v30 * v59)) + (v32 * v57)) + v25;
            if (v60 < v25)
            {
              v61 = v25;
            }
          }

          *v54++ = llroundf(v61);
          if (v53)
          {
            v62 = ((v26 + (v59 * v33)) + (v58 * v34)) + (v57 * v35);
            v63 = v29;
            if (v62 <= v29)
            {
              v63 = ((v26 + (v59 * v33)) + (v58 * v34)) + (v57 * v35);
              if (v62 < v28)
              {
                v63 = v28;
              }
            }

            v64 = ((v26 + (v59 * v36)) + (v58 * v37)) + (v57 * v38);
            *v53 = llroundf(v63);
            v65 = v29;
            if (v64 <= v29)
            {
              v65 = v64;
              if (v64 < v28)
              {
                v65 = v28;
              }
            }

            v53[1] = llroundf(v65);
            v53 += 2;
          }

          if (v52)
          {
            *v52++ = 85 * (v55 >> 30);
          }

          --v50;
        }

        while (v50);
      }

      v49 += v16;
      v48 += v19;
      v47 += v20;
      v43 += v21;
      ++v13;
    }

    while (v13 != v12);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v14 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v48 = a2[2];
  v49 = v16;
  v19 = *a6;
  v18 = a6[1];
  v46 = v17;
  v47 = v19;
  v45 = v18;
  v50 = a6[2];
  if (v15 == 255)
  {
    v20 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v20)
    {
      v21 = 0;
LABEL_26:
      free(v20);
      return v21;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v20 = &v43 - v22;
    bzero(&v43 - v22, v23);
  }

  v24 = a9;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v48, v46), v49), vsubq_s64(v49, v48), v46);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v50, v45), v47), vsubq_s64(v47, v50), v45);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v48, v28);
  v30 = (*a4 * (v29.i64[1] + v27.i64[1]) + 4 * v29.i64[0]) > *a5;
  v44 = a9;
  v46 = v27;
  if (v30)
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else if (*(a3 + 8) && v29.i64[0] + a4[1] * (v29.i64[1] + v27.i64[1]) > a5[1])
  {
    v31 = v14;
    v32 = a8;
    v33 = a7;
  }

  else
  {
    v34 = vaddq_s64(v50, v28);
    v35 = v34.i64[1] + v27.i64[1];
    if ((*a8 * (v34.i64[1] + v27.i64[1]) + 2 * v34.i64[0]) <= *a9)
    {
      if (*(a7 + 8) && (a8[1] * v35 + 4 * v34.i64[0]) > a9[1])
      {
        v31 = v14;
        v32 = a8;
        v33 = a7;
      }

      else
      {
        if (!*(a7 + 16) || (2 * v34.i64[0] + a8[2] * v35) <= a9[2])
        {
          goto LABEL_20;
        }

        v31 = v14;
        v32 = a8;
        v33 = a7;
      }
    }

    else
    {
      v31 = v14;
      v32 = a8;
      v33 = a7;
    }
  }

  fig_log_get_emitter();
  v36 = FigSignalErrorAtGM();
  a7 = v33;
  a8 = v32;
  v14 = v31;
  v24 = v44;
  v27 = v46;
  if (v36)
  {
    v21 = v36;
    goto LABEL_25;
  }

LABEL_20:
  *v20 = v15;
  v37 = v48;
  *(v20 + 4) = v49;
  *(v20 + 20) = v27;
  *(v20 + 36) = v37;
  *(v20 + 5) = v47;
  *(v20 + 6) = v27;
  *(v20 + 7) = v50;
  *(v20 + 7) = a3;
  *(v20 + 8) = a4;
  *(v20 + 9) = a5;
  *(v20 + 16) = a7;
  *(v20 + 17) = a8;
  *(v20 + 18) = v24;
  *(v20 + 19) = v14;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v15, global_queue, v20, vt_Copy_l10r_TRC_Tone_Mat_TRC_xf444_GCD);
  if (!v15)
  {
    return 0;
  }

  v39 = (v20 + 160);
  v40 = v15;
  while (1)
  {
    v41 = *v39++;
    v21 = v41;
    if (v41)
    {
      break;
    }

    if (!--v40)
    {
      v21 = 0;
      break;
    }
  }

LABEL_25:
  if (v15 == 255)
  {
    goto LABEL_26;
  }

  return v21;
}