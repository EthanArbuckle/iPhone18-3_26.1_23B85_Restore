uint64_t *ZSTD_opt_getNextMatchAndUpdateSeqStore(uint64_t *result, int a2, unsigned int a3)
{
  v3 = result[3];
  if (v3 && (v4 = result[1], v4 < v3))
  {
    v5 = *result;
    v6 = (*result + 12 * v4);
    v7 = v6[1];
    v8 = result[2];
    v9 = v7 - v8;
    if (v8 >= v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 - v8;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v10 >= a3)
    {
      result[5] = -1;
      v15 = v8 + a3;
      if (v15)
      {
        v22 = (v5 + 12 * v4 + 8);
        v23 = v4 + 1;
        v24 = -v3;
        while (v24 + v23 != 1)
        {
          v25 = *v22 + *(v22 - 1);
          v20 = v15 >= v25;
          v26 = v15 - v25;
          if (!v20)
          {
LABEL_33:
            result[2] = v15;
            return result;
          }

          result[1] = v23;
          v22 += 3;
          ++v23;
          v15 = v26;
          if (!v26)
          {
            break;
          }
        }
      }

      result[2] = 0;
    }

    else
    {
      v12 = v11 + v6[2];
      v13 = *v6;
      v14 = v12 + v10 + a2;
      *(result + 10) = v10 + a2;
      *(result + 11) = v14;
      *(result + 12) = v13;
      if (v14 <= a3 + a2)
      {
        v15 = v10 + v8 + v12;
        if (v15)
        {
          v27 = (v5 + 12 * v4 + 8);
          v28 = v4 + 1;
          v29 = -v3;
          do
          {
            if (v29 + v28 == 1)
            {
              break;
            }

            v30 = *v27 + *(v27 - 1);
            v20 = v15 >= v30;
            v31 = v15 - v30;
            if (!v20)
            {
              goto LABEL_33;
            }

            result[1] = v28;
            v27 += 3;
            ++v28;
            v15 = v31;
          }

          while (v31);
        }

        result[2] = 0;
      }

      else
      {
        *(result + 11) = a3 + a2;
        v15 = v8 + a3;
        if (v15)
        {
          v16 = (v5 + 12 * v4 + 8);
          v17 = v4 + 1;
          v18 = -v3;
          do
          {
            if (v18 + v17 == 1)
            {
              break;
            }

            v19 = *v16 + *(v16 - 1);
            v20 = v15 >= v19;
            v21 = v15 - v19;
            if (!v20)
            {
              goto LABEL_33;
            }

            result[1] = v17;
            v16 += 3;
            ++v17;
            v15 = v21;
          }

          while (v21);
        }

        result[2] = 0;
      }
    }
  }

  else
  {
    result[5] = -1;
  }

  return result;
}

int32x4_t **ZSTD_rescaleFreqs(int32x4_t **result, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  *(result + 20) = 0;
  if (*(result + 13))
  {
    if (v4 != 2)
    {
      v5 = vaddq_s32(vaddq_s32((*result)[63], vaddq_s32((*result)[61], (*result)[59])), vaddq_s32(vaddq_s32((*result)[57], vaddq_s32((*result)[55], vaddq_s32((*result)[53], vaddq_s32((*result)[51], vaddq_s32((*result)[49], vaddq_s32((*result)[47], (*result)[45])))))), vaddq_s32(vaddq_s32((*result)[43], vaddq_s32((*result)[41], vaddq_s32((*result)[39], vaddq_s32((*result)[37], vaddq_s32((*result)[35], (*result)[33]))))), vaddq_s32(vaddq_s32((*result)[31], vaddq_s32((*result)[29], vaddq_s32((*result)[27], vaddq_s32((*result)[25], (*result)[23])))), vaddq_s32(vaddq_s32((*result)[21], vaddq_s32((*result)[19], vaddq_s32((*result)[17], (*result)[15]))), vaddq_s32(vaddq_s32((*result)[13], vaddq_s32((*result)[11], (*result)[9])), vaddq_s32(vaddq_s32((*result)[7], (*result)[5]), vaddq_s32((*result)[3], (*result)[1]))))))));
      v6 = vaddq_s32(v5, vaddq_s32(vaddq_s32((*result)[62], vaddq_s32((*result)[60], (*result)[58])), vaddq_s32(vaddq_s32((*result)[56], vaddq_s32((*result)[54], vaddq_s32((*result)[52], vaddq_s32((*result)[50], vaddq_s32((*result)[48], vaddq_s32((*result)[46], (*result)[44])))))), vaddq_s32(vaddq_s32((*result)[42], vaddq_s32((*result)[40], vaddq_s32((*result)[38], vaddq_s32((*result)[36], vaddq_s32((*result)[34], (*result)[32]))))), vaddq_s32(vaddq_s32((*result)[30], vaddq_s32((*result)[28], vaddq_s32((*result)[26], vaddq_s32((*result)[24], (*result)[22])))), vaddq_s32(vaddq_s32((*result)[20], vaddq_s32((*result)[18], vaddq_s32((*result)[16], (*result)[14]))), vaddq_s32(vaddq_s32((*result)[12], vaddq_s32((*result)[10], (*result)[8])), vaddq_s32(vaddq_s32((*result)[6], (*result)[4]), vaddq_s32((*result)[2], **result)))))))));
      v7 = vaddvq_s32(v6);
      if (v7 >= 0x2000)
      {
        v8 = vdupq_n_s32(__clz(v7 >> 12) ^ 0x1F);
        v9 = &(*result)[1];
        v10 = 0uLL;
        v11 = 256;
        v12 = vnegq_s32(v8);
        v13.i64[0] = 0x100000001;
        v13.i64[1] = 0x100000001;
        v14 = 0uLL;
        do
        {
          v15 = vaddq_s32(vshlq_u32(v9[-1], v12), v13);
          v16 = vaddq_s32(vshlq_u32(*v9, v12), v13);
          v10 = vaddq_s32(v15, v10);
          v14 = vaddq_s32(v16, v14);
          v9[-1] = v15;
          *v9 = v16;
          v9 += 2;
          v11 -= 8;
        }

        while (v11);
        v7 = vaddvq_s32(vaddq_s32(v14, v10));
      }

      *(result + 12) = v7;
    }

    v17 = result[1];
    v18 = v17[4];
    v19 = v17[5];
    v20 = v17[1];
    v21 = v17[6];
    v22 = v17[7];
    v23 = v17[2];
    v24 = v17[3];
    v25 = v17[8];
    v26 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*v17, v18), vaddq_s32(v23, v21)), vaddq_s32(vaddq_s32(v20, v19), vaddq_s32(v24, v22))), v25));
    if (v26 >= 0x1000)
    {
      v27 = vnegq_s32(vdupq_n_s32(__clz(v26 >> 11) ^ 0x1F));
      v28.i64[0] = 0x100000001;
      v28.i64[1] = 0x100000001;
      v29 = vaddq_s32(vshlq_u32(*v17, v27), v28);
      v30 = vaddq_s32(vshlq_u32(v22, v27), v28);
      v31 = vaddq_s32(vshlq_u32(v21, v27), v28);
      v32 = vaddq_s32(vshlq_u32(v19, v27), v28);
      v33 = vaddq_s32(vshlq_u32(v18, v27), v28);
      v34 = vaddq_s32(vshlq_u32(v24, v27), v28);
      v35 = vaddq_s32(vshlq_u32(v23, v27), v28);
      v36 = vaddq_s32(vshlq_u32(v20, v27), v28);
      *v17 = v29;
      v17[1] = v36;
      v17[2] = v35;
      v17[3] = v34;
      v17[4] = v33;
      v17[5] = v32;
      v17[6] = v31;
      v17[7] = v30;
      v37 = vaddq_s32(vshlq_u32(v25, v27), v28);
      v26 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v29, v33), vaddq_s32(v35, v31)), vaddq_s32(vaddq_s32(v36, v32), vaddq_s32(v34, v30))), v37));
      v17[8] = v37;
    }

    *(result + 13) = v26;
    v38 = result[2];
    v39 = v38[4];
    v40 = v38[5];
    v41 = v38[1];
    v42 = v38[6];
    v43 = v38[7];
    v44 = v38[2];
    v45 = v38[3];
    v46 = v38[10];
    v47 = v38[11];
    v48 = v38[8];
    v49 = v38[9];
    v50 = v38[12];
    v51 = v38[13].u32[0];
    v52 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*v38, v39), vaddq_s32(v44, v42)), vaddq_s32(vaddq_s32(v41, v40), vaddq_s32(v45, v43))), vaddq_s32(vaddq_s32(vaddq_s32(v48, v46), vaddq_s32(v49, v47)), v50))) + v51;
    if (v52 >= 0x1000)
    {
      v53 = __clz(v52 >> 11) ^ 0x1F;
      v54 = vnegq_s32(vdupq_n_s32(v53));
      v55.i64[0] = 0x100000001;
      v55.i64[1] = 0x100000001;
      v56 = vaddq_s32(vshlq_u32(*v38, v54), v55);
      v57 = vaddq_s32(vshlq_u32(v41, v54), v55);
      *v38 = v56;
      v38[1] = v57;
      v58 = vaddq_s32(vshlq_u32(v44, v54), v55);
      v59 = vaddq_s32(vshlq_u32(v45, v54), v55);
      v38[2] = v58;
      v38[3] = v59;
      v60 = vaddq_s32(vshlq_u32(v39, v54), v55);
      v61 = vaddq_s32(vshlq_u32(v40, v54), v55);
      v38[4] = v60;
      v38[5] = v61;
      v62 = vaddq_s32(vshlq_u32(v42, v54), v55);
      v63 = vaddq_s32(vshlq_u32(v43, v54), v55);
      v38[6] = v62;
      v38[7] = v63;
      v64 = vaddq_s32(vshlq_u32(v48, v54), v55);
      v65 = vaddq_s32(vshlq_u32(v49, v54), v55);
      v38[8] = v64;
      v38[9] = v65;
      v66 = vaddq_s32(vshlq_u32(v46, v54), v55);
      v67 = vaddq_s32(vshlq_u32(v47, v54), v55);
      v38[10] = v66;
      v38[11] = v67;
      v68 = vaddq_s32(vshlq_u32(v50, v54), v55);
      v38[12] = v68;
      v69 = (v51 >> v53) + 1;
      v52 = vaddvq_s32(v68) + v69 + vaddvq_s32(vaddq_s32(vaddq_s32(v67, vaddq_s32(v65, vaddq_s32(v63, vaddq_s32(v61, vaddq_s32(v59, v57))))), vaddq_s32(v66, vaddq_s32(v64, vaddq_s32(v62, vaddq_s32(v60, vaddq_s32(v58, v56)))))));
      v38[13].i32[0] = v69;
    }

    *(result + 14) = v52;
    v70 = result[3];
    v71 = v70[4];
    v72 = v70[5];
    v73 = v70[1];
    v75 = v70[6];
    v74 = v70[7];
    v76 = v70[2];
    v77 = v70[3];
    v78 = vaddq_s32(*v70, v71);
    v79 = vaddvq_s32(vaddq_s32(vaddq_s32(v78, vaddq_s32(v76, v75)), vaddq_s32(vaddq_s32(v73, v72), vaddq_s32(v77, v74))));
    if (v79 >= 0x1000)
    {
      v80.i64[0] = v75 >> 32;
      v80.i64[1] = *(&v70[6] + 8) >> 32;
      v81 = vdupq_laneq_s32(v80, 3);
      v78.i64[0] = v74 >> 32;
      v82 = vextq_s8(vextq_s8(v81, v81, 4uLL), v78, 0xCuLL);
      v82.i32[3] = HIDWORD(*&v70[7]);
      v83 = vnegq_s32(vdupq_n_s32(__clz(v79 >> 11) ^ 0x1F));
      v84 = vshlq_u32(vextq_s8(vextq_s8(v80, v75, 4uLL), v80, 0xCuLL), v83);
      v85 = vshlq_u32(v82, v83);
      v86 = vshlq_u32(*v70, v83);
      v87 = vshlq_u32(v73, v83);
      v88 = vshlq_u32(v76, v83);
      v89 = vshlq_u32(v77, v83);
      v90 = vshlq_u32(v71, v83);
      v91 = vshlq_u32(v72, v83);
      v83.i64[0] = 0x100000001;
      v83.i64[1] = 0x100000001;
      v92 = vaddq_s32(v84, v83);
      v93 = vaddq_s32(v85, v83);
      v94 = vaddq_s32(v91, v83);
      v95 = vaddq_s32(v90, v83);
      v96 = vaddq_s32(v89, v83);
      v97 = vaddq_s32(v88, v83);
      v98 = vaddq_s32(v87, v83);
      v99 = vaddq_s32(v86, v83);
      *v70 = v99;
      v70[1] = v98;
      v70[2] = v97;
      v70[3] = v96;
      v70[4] = v95;
      v70[5] = v94;
      v79 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v99, v95), vaddq_s32(v97, v92)), vaddq_s32(vaddq_s32(v98, v94), vaddq_s32(v96, v93))));
      v70[6] = v92;
      v70[7] = v93;
    }

LABEL_54:
    *(result + 15) = v79;
    goto LABEL_55;
  }

  if (a3 <= 8)
  {
    *(result + 20) = 1;
  }

  v100 = result[11];
  if (v100[128].i32[2] != 2)
  {
    v122 = a4;
    v123 = result;
    if (v4 != 2)
    {
      v125 = *result;
      bzero(*result, 0x400uLL);
      if (a3)
      {
        if (a3 >= 1)
        {
          v127 = a2;
          do
          {
            v128 = *v127++;
            ++v125->i32[v128];
          }

          while (v127 < &a2[a3]);
        }

        LODWORD(v129) = 256;
        do
        {
          v129 = (v129 - 1);
        }

        while (!v125->i32[v129]);
        if (v129 >= 7)
        {
          v130 = (v129 + 1) & 0x1FFFFFFF8;
          do
          {
            v130 -= 8;
          }

          while (v130);
        }
      }

      result = v123;
      v131 = &(*v123)[1];
      v132 = 0uLL;
      v133 = 256;
      v134 = 0uLL;
      do
      {
        v135 = vsubq_s32(vshrq_n_u32(v131[-1], 8uLL), vtstq_s32(v131[-1], v131[-1]));
        v136 = vsubq_s32(vshrq_n_u32(*v131, 8uLL), vtstq_s32(*v131, *v131));
        v132 = vaddq_s32(v135, v132);
        v134 = vaddq_s32(v136, v134);
        v131[-1] = v135;
        *v131 = v136;
        v131 += 2;
        v133 -= 8;
      }

      while (v133);
      *(v123 + 12) = vaddvq_s32(vaddq_s32(v134, v132));
    }

    v137 = result[1];
    v137[6] = xmmword_182B0CF08;
    v137[7] = unk_182B0CF18;
    v137[8] = xmmword_182B0CF28;
    v137[2] = xmmword_182B0CEC8;
    v137[3] = unk_182B0CED8;
    v137[4] = xmmword_182B0CEE8;
    v137[5] = unk_182B0CEF8;
    *v137 = xmmword_182B0CEA8;
    v137[1] = unk_182B0CEB8;
    *(result + 13) = 40;
    memset_pattern16(result[2], &unk_182B08EC0, 0xD4uLL);
    result = v123;
    v79 = 53;
    *(v123 + 14) = 53;
    v138 = v123[3];
    v138[4] = xmmword_182B0CF78;
    v138[5] = unk_182B0CF88;
    v138[6] = xmmword_182B0CF98;
    v138[7] = unk_182B0CFA8;
    *v138 = xmmword_182B0CF38;
    v138[1] = unk_182B0CF48;
    v138[2] = xmmword_182B0CF58;
    v138[3] = unk_182B0CF68;
    a4 = v122;
    goto LABEL_54;
  }

  *(result + 20) = 0;
  if (v4 != 2)
  {
    v150 = 0;
    *(result + 12) = 0;
    v151 = *result;
    do
    {
      if (v100->u8[1] >= v150 && v100->i64[v150 + 1])
      {
        v152 = 1 << (11 - v100->i64[v150 + 1]);
      }

      else
      {
        v152 = 1;
      }

      v151->i32[v150] = v152;
      *(result + 12) += v152;
      ++v150;
    }

    while (v150 != 256);
  }

  v101 = 0;
  v102 = 1 << (v100[268].i16[0] - 1);
  if (!v100[268].i16[0])
  {
    v102 = 1;
  }

  *(result + 13) = 0;
  v103 = result[1];
  v104 = &v100[268].i32[v102 + 2];
  do
  {
    v105 = *v104;
    v104 += 2;
    v106 = 1 << (10 - ((v105 + 0xFFFF) >> 16));
    if ((v105 + 0xFFFF) < 0x10000)
    {
      v107 = 1;
    }

    else
    {
      v107 = v106;
    }

    v103->i32[v101] = v107;
    *(result + 13) += v107;
    ++v101;
  }

  while (v101 != 36);
  v108 = 0;
  v109 = 1 << (v100[177].i16[2] - 1);
  if (!v100[177].i16[2])
  {
    v109 = 1;
  }

  *(result + 14) = 0;
  v110 = result[2];
  v111 = &v100[177].i32[v109 + 3];
  do
  {
    v112 = *v111;
    v111 += 2;
    v113 = 1 << (10 - ((v112 + 0xFFFF) >> 16));
    if ((v112 + 0xFFFF) < 0x10000)
    {
      v114 = 1;
    }

    else
    {
      v114 = v113;
    }

    v110->i32[v108] = v114;
    *(result + 14) += v114;
    ++v108;
  }

  while (v108 != 53);
  v115 = 0;
  v116 = 1 << (v100[129].i16[0] - 1);
  if (!v100[129].i16[0])
  {
    v116 = 1;
  }

  *(result + 15) = 0;
  v117 = result[3];
  v118 = &v100[129].i32[v116 + 2];
  do
  {
    v119 = *v118;
    v118 += 2;
    v120 = 1 << (10 - ((v119 + 0xFFFF) >> 16));
    if ((v119 + 0xFFFF) < 0x10000)
    {
      v121 = 1;
    }

    else
    {
      v121 = v120;
    }

    v117->i32[v115] = v121;
    v79 = v121 + *(result + 15);
    *(result + 15) = v79;
    ++v115;
  }

  while (v115 != 32);
LABEL_55:
  if (*(result + 24) != 2)
  {
    v139 = *(result + 12) + 1;
    v140 = __clz(v139);
    v141 = (v139 << 8 >> ~v140) + ((31 - v140) << 8);
    if (!a4)
    {
      v141 = 7936 - (v140 << 8);
    }

    *(result + 16) = v141;
  }

  v142 = *(result + 13) + 1;
  v143 = __clz(v142);
  if (a4)
  {
    v144 = (v142 << 8 >> ~v143) + ((31 - v143) << 8);
    v145.i32[0] = *(result + 14);
    v145.i32[1] = v79;
    v146 = vadd_s32(v145, 0x100000001);
    v147 = vsub_s32(0x1F0000001FLL, vclz_s32(v146));
    v148 = vadd_s32(vshl_n_s32(v147, 8uLL), vshl_u32(vshl_n_s32(v146, 8uLL), vneg_s32(v147)));
  }

  else
  {
    v144 = 7936 - (v143 << 8);
    v149.i32[0] = *(result + 14);
    v149.i32[1] = v79;
    v148 = vsub_s32(0x1F0000001F00, vshl_n_s32(vclz_s32(vadd_s32(v149, 0x100000001)), 8uLL));
  }

  *(result + 17) = v144;
  result[9] = v148;
  return result;
}

uint64_t ZSTD_optLdm_processMatchCandidate(uint64_t result, uint64_t a2, _DWORD *a3, unsigned int a4, unsigned int a5)
{
  v5 = *(result + 24);
  if (v5)
  {
    v6 = *(result + 8);
    if (v6 < v5)
    {
      v7 = *(result + 44);
      if (a4 >= v7)
      {
        v8 = a2;
        v9 = a3;
        if (a4 > v7)
        {
          v10 = a4 - v7 + *(result + 16);
          if (v10)
          {
            v11 = 12 * v6;
            v12 = v6 + 1;
            v13 = -v5;
            while (v13 + v12 != 1)
            {
              v14 = *(*result + v11 + 8) + *(*result + v11 + 4);
              v21 = v10 >= v14;
              v15 = v10 - v14;
              if (!v21)
              {
                v16 = v10;
                goto LABEL_12;
              }

              *(result + 8) = v12;
              v11 += 12;
              ++v12;
              v10 = v15;
              if (!v15)
              {
                break;
              }
            }
          }

          v16 = 0;
LABEL_12:
          *(result + 16) = v16;
        }

        v17 = result;
        v18 = a4;
        ZSTD_opt_getNextMatchAndUpdateSeqStore(result, a4, a5);
        a4 = v18;
        result = v17;
        v7 = *(v17 + 44);
        a3 = v9;
        a2 = v8;
      }

      v19 = v7 - a4;
      v21 = *(result + 40) <= a4 && v7 > a4 && v19 >= 3;
      if (v21)
      {
        v22 = *a3;
        if (!v22 || v22 <= 0xFFF && v19 > *(a2 + 8 * (v22 - 1) + 4))
        {
          v23 = *(result + 48) + 3;
          *(a2 + 8 * v22 + 4) = v19;
          *(a2 + 8 * (*a3)++) = v23;
        }
      }
    }
  }

  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a6;
    v17 = a7;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 6, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a7 = v17;
    a6 = v16;
    a8 = v15;
  }

  v20 = a1;
  *(a2 + 44) = v13;
  v21 = *(a2 + 276);
  v22 = *(a2 + 112);
  v146 = 0xCF1BBCDCBF9B0000 * *a4;
  v149 = v146 >> -*(a2 + 264);
  v23 = *(v22 + 4 * v149);
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v150 = v21;
  v24 = *(a2 + 128);
  v148 = -1 << (*(a2 + 260) - 1);
  v25 = *(a2 + 24);
  v155 = (v8 + v25);
  if (v14 >= ~v148)
  {
    v26 = v14 + v148 + 1;
  }

  else
  {
    v26 = 0;
  }

  v161 = v26;
  v27 = 1 << *(a2 + 256);
  if (v14 - *(a2 + 28) > v27 && *(a2 + 40) == 0)
  {
    v29 = v14 - v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v162 = v30;
  v163[0] = 0;
  v147 = *(a2 + 268);
  v31 = *(a2 + 248);
  v32 = *(v31 + 8);
  v33 = *v31;
  v34 = *v31 - v32;
  v35 = *(v31 + 28);
  v36 = v29 - v34;
  v144 = *(v31 + 264);
  v145 = v31;
  v37 = ~(-1 << (*(v31 + 260) - 1));
  v157 = v37;
  v143 = v34;
  v38 = v34 + (-1 << (*(v31 + 260) - 1)) + 1;
  if (v34 - v35 <= v37)
  {
    v38 = v35;
  }

  v158 = v38;
  v39 = (a8 - 1);
  v160 = v35;
  v159 = v32;
  v156 = v29 - v34;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v14 - v25;
    v41 = v32 - v36;
    v42 = v14 - v35 - v36;
    v43 = a4 + 4;
    v44 = a5 - 7;
    v152 = a5 - 1;
    v153 = a5 - 3;
    v141 = v41 + 12;
    v142 = v22;
    v154 = v25 + v8 + 8;
    v45 = a7;
    v46 = v150;
    v47 = v20;
    v48 = v33;
    v49 = v25;
    v151 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v51 = *a6 - 1;
      }

      else
      {
        v51 = a6[v45];
      }

      v52 = v14 - v51;
      if (v51 - 1 < v40)
      {
        if (v52 < v29 || *a4 != *(a4 - v51))
        {
          goto LABEL_55;
        }

        v54 = -v51;
        v55 = &v43[v54];
        if (v44 <= v43)
        {
          v58 = a4 + 1;
LABEL_57:
          if (v58 < v153 && *v55 == *v58)
          {
            v55 += 4;
            ++v58;
          }

          if (v58 < v152 && *v55 == *v58)
          {
            v55 += 2;
            v58 = (v58 + 2);
          }

          if (v58 >= a5)
          {
LABEL_67:
            LODWORD(v58) = v58 - v43;
          }

          else
          {
            if (*v55 == *v58)
            {
              LODWORD(v58) = v58 + 1;
            }

            LODWORD(v58) = v58 - v43;
          }

          goto LABEL_104;
        }

        v56 = *v55;
        if (v56 == *v43)
        {
          v57 = a4 + 12;
          v55 = a4 + v54 + 12;
          while (1)
          {
            v58 = v57;
            if (v57 >= v44)
            {
              goto LABEL_57;
            }

            v60 = *v55;
            v55 += 8;
            v59 = v60;
            v57 += 8;
            if (v60 != *v58)
            {
              v58 = (v58 + (__clz(__rbit64(*v58 ^ v59)) >> 3));
              goto LABEL_67;
            }
          }
        }

        v58 = (__clz(__rbit64(*v43 ^ v56)) >> 3);
        goto LABEL_104;
      }

      v61 = v51 - 1 >= v42 || (v52 - v49) > 0xFFFFFFFC;
      if (v61 || (v62 = v41 + v52, *a4 != *(v41 + v52)))
      {
LABEL_55:
        v72 = 0;
        goto LABEL_105;
      }

      v63 = v41;
      v64 = (v62 + 4);
      v65 = v48 + a4 - v62;
      if (v65 >= a5)
      {
        v65 = a5;
      }

      if (v65 - 7 <= v43)
      {
        break;
      }

      if (*v64 == *v43)
      {
        v140 = v48;
        v66 = v24;
        v67 = (v141 + v52);
        v68 = a4 + 12;
        while (1)
        {
          v69 = v68;
          if (v68 >= (v65 - 7))
          {
            break;
          }

          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v58 = (&v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - v43);
            v24 = v66;
            v48 = v140;
            v22 = v142;
            v46 = v150;
            goto LABEL_82;
          }
        }

        v24 = v66;
        v48 = v140;
        v22 = v142;
        v46 = v150;
        goto LABEL_72;
      }

      v58 = (__clz(__rbit64(*v43 ^ *v64)) >> 3);
LABEL_82:
      if ((v58 + v64) == v48)
      {
        v73 = v58 + v43;
        v41 = v63;
        if (v44 > v58 + v43)
        {
          if (*v155 == *v73)
          {
            v74 = 0;
            v75 = v58 + a4;
            while (1)
            {
              v76 = &v75[v74 + 12];
              if (v76 >= v44)
              {
                break;
              }

              v77 = *(v154 + v74);
              v74 += 8;
              if (v77 != *v76)
              {
                v73 = (&v75[v74 + 4 + (__clz(__rbit64(*v76 ^ v77)) >> 3)] - v73);
                v22 = v142;
                v41 = v63;
                v42 = v151;
                goto LABEL_103;
              }
            }

            v78 = (v154 + v74);
            v79 = (v58 + a4 + v74 + 12);
            v41 = v63;
LABEL_93:
            v42 = v151;
            if (v79 < v153 && *v78 == *v79)
            {
              ++v78;
              ++v79;
            }

            if (v79 < v152 && *v78 == *v79)
            {
              v78 = (v78 + 2);
              v79 = (v79 + 2);
            }

            if (v79 < a5 && *v78 == *v79)
            {
              LODWORD(v79) = v79 + 1;
            }

            v22 = v142;
            LODWORD(v73) = v79 - v73;
          }

          else
          {
            v73 = (__clz(__rbit64(*v73 ^ *v155)) >> 3);
            v42 = v151;
          }

LABEL_103:
          LODWORD(v58) = v73 + v58;
          goto LABEL_104;
        }

        v78 = v155;
        v79 = (v58 + v43);
        goto LABEL_93;
      }

      v41 = v63;
      v42 = v151;
LABEL_104:
      v72 = v58 + 4;
LABEL_105:
      v50 = v72;
      if (v39 >= v72)
      {
        v50 = v39;
      }

      else
      {
        v80 = (v47 + 8 * result);
        *v80 = v45 - a7 + 1;
        v80[1] = v72;
        result = (result + 1);
        if (v72 > v46 || a4 + v72 == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v50;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v67 = v64;
    v69 = a4 + 4;
LABEL_72:
    if (v69 < v65 - 3 && *v67 == *v69)
    {
      v67 += 2;
      v69 += 4;
    }

    if (v69 < v65 - 1 && *v67 == *v69)
    {
      ++v67;
      v69 += 2;
    }

    if (v69 < v65 && *v67 == *v69)
    {
      ++v69;
    }

    v58 = (v69 - v43);
    goto LABEL_82;
  }

  v50 = v39;
  v47 = v20;
  v48 = v33;
  v49 = v25;
LABEL_110:
  v81 = (v24 + 8 * (v14 & ~v148));
  v82 = v14 + 9;
  v83 = 1 << v147;
  *(v22 + 4 * v149) = v14;
  if (v23 < v162)
  {
    *v81 = 0;
    v84 = v160;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v81 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v23;
    v92 = a4 + v90;
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v23;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        ++v97;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v50)
    {
      if (v102 > v82 - v23)
      {
        v82 = v23 + v102;
      }

      v103 = (v47 + 8 * result);
      *v103 = v14 + 3 - v23;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v81 = 0;
        goto LABEL_222;
      }

      v50 = v102;
    }

    v105 = (v24 + 8 * (v23 & ~v148));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v23;
    if (v23 <= v161)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v23 & ~v148));
    v86 = v102;
    if (!--v83)
    {
      goto LABEL_156;
    }

LABEL_113:
    v23 = *v105;
    if (*v105 < v162)
    {
      goto LABEL_156;
    }
  }

  *v81 = v23;
  if (v23 > v161)
  {
    v81 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v83)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v81 = v163;
LABEL_156:
  *v87 = 0;
  *v81 = 0;
  v84 = v160;
  if (v83)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * (v146 >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v14 + 3;
      v112 = v49 + v8 + 8;
      v113 = v8 + v156;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v159 + v106;
        v116 = a4 + v114;
        v117 = (v115 + v114);
        v118 = v48 + a4 - v115;
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v159 + 8 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            ++v120;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if ((v117 + v124) == v48)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v160;
            if (*v155 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5 && *v132 == *v129)
              {
                ++v129;
              }

              v126 = v160;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v155)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v155;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v160;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v50)
        {
          goto LABEL_225;
        }

        if (v133 > v82 - (v106 + v156))
        {
          v82 = v106 + v156 + v133;
        }

        v134 = (v47 + 8 * result);
        *v134 = v111 - (v106 + v156);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v50 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v158)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v83)
            {
              v106 = *(v109 + 8 * (v106 & v157) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v82 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a6;
    v17 = a7;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 5, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a7 = v17;
    a6 = v16;
    a8 = v15;
  }

  v20 = a1;
  *(a2 + 44) = v13;
  v21 = *(a2 + 276);
  v22 = *(a2 + 112);
  v146 = 0xCF1BBCDCBB000000 * *a4;
  v149 = v146 >> -*(a2 + 264);
  v23 = *(v22 + 4 * v149);
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v150 = v21;
  v24 = *(a2 + 128);
  v148 = -1 << (*(a2 + 260) - 1);
  v25 = *(a2 + 24);
  v155 = (v8 + v25);
  if (v14 >= ~v148)
  {
    v26 = v14 + v148 + 1;
  }

  else
  {
    v26 = 0;
  }

  v161 = v26;
  v27 = 1 << *(a2 + 256);
  if (v14 - *(a2 + 28) > v27 && *(a2 + 40) == 0)
  {
    v29 = v14 - v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v162 = v30;
  v163[0] = 0;
  v147 = *(a2 + 268);
  v31 = *(a2 + 248);
  v32 = *(v31 + 8);
  v33 = *v31;
  v34 = *v31 - v32;
  v35 = *(v31 + 28);
  v36 = v29 - v34;
  v144 = *(v31 + 264);
  v145 = v31;
  v37 = ~(-1 << (*(v31 + 260) - 1));
  v157 = v37;
  v143 = v34;
  v38 = v34 + (-1 << (*(v31 + 260) - 1)) + 1;
  if (v34 - v35 <= v37)
  {
    v38 = v35;
  }

  v158 = v38;
  v39 = (a8 - 1);
  v160 = v35;
  v159 = v32;
  v156 = v29 - v34;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v14 - v25;
    v41 = v32 - v36;
    v42 = v14 - v35 - v36;
    v43 = a4 + 4;
    v44 = a5 - 7;
    v152 = a5 - 1;
    v153 = a5 - 3;
    v141 = v41 + 12;
    v142 = v22;
    v154 = v25 + v8 + 8;
    v45 = a7;
    v46 = v150;
    v47 = v20;
    v48 = v33;
    v49 = v25;
    v151 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v51 = *a6 - 1;
      }

      else
      {
        v51 = a6[v45];
      }

      v52 = v14 - v51;
      if (v51 - 1 < v40)
      {
        if (v52 < v29 || *a4 != *(a4 - v51))
        {
          goto LABEL_55;
        }

        v54 = -v51;
        v55 = &v43[v54];
        if (v44 <= v43)
        {
          v58 = a4 + 1;
LABEL_57:
          if (v58 < v153 && *v55 == *v58)
          {
            v55 += 4;
            ++v58;
          }

          if (v58 < v152 && *v55 == *v58)
          {
            v55 += 2;
            v58 = (v58 + 2);
          }

          if (v58 >= a5)
          {
LABEL_67:
            LODWORD(v58) = v58 - v43;
          }

          else
          {
            if (*v55 == *v58)
            {
              LODWORD(v58) = v58 + 1;
            }

            LODWORD(v58) = v58 - v43;
          }

          goto LABEL_104;
        }

        v56 = *v55;
        if (v56 == *v43)
        {
          v57 = a4 + 12;
          v55 = a4 + v54 + 12;
          while (1)
          {
            v58 = v57;
            if (v57 >= v44)
            {
              goto LABEL_57;
            }

            v60 = *v55;
            v55 += 8;
            v59 = v60;
            v57 += 8;
            if (v60 != *v58)
            {
              v58 = (v58 + (__clz(__rbit64(*v58 ^ v59)) >> 3));
              goto LABEL_67;
            }
          }
        }

        v58 = (__clz(__rbit64(*v43 ^ v56)) >> 3);
        goto LABEL_104;
      }

      v61 = v51 - 1 >= v42 || (v52 - v49) > 0xFFFFFFFC;
      if (v61 || (v62 = v41 + v52, *a4 != *(v41 + v52)))
      {
LABEL_55:
        v72 = 0;
        goto LABEL_105;
      }

      v63 = v41;
      v64 = (v62 + 4);
      v65 = v48 + a4 - v62;
      if (v65 >= a5)
      {
        v65 = a5;
      }

      if (v65 - 7 <= v43)
      {
        break;
      }

      if (*v64 == *v43)
      {
        v140 = v48;
        v66 = v24;
        v67 = (v141 + v52);
        v68 = a4 + 12;
        while (1)
        {
          v69 = v68;
          if (v68 >= (v65 - 7))
          {
            break;
          }

          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v58 = (&v69[__clz(__rbit64(*v69 ^ v70)) >> 3] - v43);
            v24 = v66;
            v48 = v140;
            v22 = v142;
            v46 = v150;
            goto LABEL_82;
          }
        }

        v24 = v66;
        v48 = v140;
        v22 = v142;
        v46 = v150;
        goto LABEL_72;
      }

      v58 = (__clz(__rbit64(*v43 ^ *v64)) >> 3);
LABEL_82:
      if ((v58 + v64) == v48)
      {
        v73 = v58 + v43;
        v41 = v63;
        if (v44 > v58 + v43)
        {
          if (*v155 == *v73)
          {
            v74 = 0;
            v75 = v58 + a4;
            while (1)
            {
              v76 = &v75[v74 + 12];
              if (v76 >= v44)
              {
                break;
              }

              v77 = *(v154 + v74);
              v74 += 8;
              if (v77 != *v76)
              {
                v73 = (&v75[v74 + 4 + (__clz(__rbit64(*v76 ^ v77)) >> 3)] - v73);
                v22 = v142;
                v41 = v63;
                v42 = v151;
                goto LABEL_103;
              }
            }

            v78 = (v154 + v74);
            v79 = (v58 + a4 + v74 + 12);
            v41 = v63;
LABEL_93:
            v42 = v151;
            if (v79 < v153 && *v78 == *v79)
            {
              ++v78;
              ++v79;
            }

            if (v79 < v152 && *v78 == *v79)
            {
              v78 = (v78 + 2);
              v79 = (v79 + 2);
            }

            if (v79 < a5 && *v78 == *v79)
            {
              LODWORD(v79) = v79 + 1;
            }

            v22 = v142;
            LODWORD(v73) = v79 - v73;
          }

          else
          {
            v73 = (__clz(__rbit64(*v73 ^ *v155)) >> 3);
            v42 = v151;
          }

LABEL_103:
          LODWORD(v58) = v73 + v58;
          goto LABEL_104;
        }

        v78 = v155;
        v79 = (v58 + v43);
        goto LABEL_93;
      }

      v41 = v63;
      v42 = v151;
LABEL_104:
      v72 = v58 + 4;
LABEL_105:
      v50 = v72;
      if (v39 >= v72)
      {
        v50 = v39;
      }

      else
      {
        v80 = (v47 + 8 * result);
        *v80 = v45 - a7 + 1;
        v80[1] = v72;
        result = (result + 1);
        if (v72 > v46 || a4 + v72 == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v50;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v67 = v64;
    v69 = a4 + 4;
LABEL_72:
    if (v69 < v65 - 3 && *v67 == *v69)
    {
      v67 += 2;
      v69 += 4;
    }

    if (v69 < v65 - 1 && *v67 == *v69)
    {
      ++v67;
      v69 += 2;
    }

    if (v69 < v65 && *v67 == *v69)
    {
      ++v69;
    }

    v58 = (v69 - v43);
    goto LABEL_82;
  }

  v50 = v39;
  v47 = v20;
  v48 = v33;
  v49 = v25;
LABEL_110:
  v81 = (v24 + 8 * (v14 & ~v148));
  v82 = v14 + 9;
  v83 = 1 << v147;
  *(v22 + 4 * v149) = v14;
  if (v23 < v162)
  {
    *v81 = 0;
    v84 = v160;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v81 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v23;
    v92 = a4 + v90;
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v23;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        ++v97;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v50)
    {
      if (v102 > v82 - v23)
      {
        v82 = v23 + v102;
      }

      v103 = (v47 + 8 * result);
      *v103 = v14 + 3 - v23;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v81 = 0;
        goto LABEL_222;
      }

      v50 = v102;
    }

    v105 = (v24 + 8 * (v23 & ~v148));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v23;
    if (v23 <= v161)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v23 & ~v148));
    v86 = v102;
    if (!--v83)
    {
      goto LABEL_156;
    }

LABEL_113:
    v23 = *v105;
    if (*v105 < v162)
    {
      goto LABEL_156;
    }
  }

  *v81 = v23;
  if (v23 > v161)
  {
    v81 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v83)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v81 = v163;
LABEL_156:
  *v87 = 0;
  *v81 = 0;
  v84 = v160;
  if (v83)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * (v146 >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v14 + 3;
      v112 = v49 + v8 + 8;
      v113 = v8 + v156;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v159 + v106;
        v116 = a4 + v114;
        v117 = (v115 + v114);
        v118 = v48 + a4 - v115;
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v159 + 8 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            ++v120;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if ((v117 + v124) == v48)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v160;
            if (*v155 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5 && *v132 == *v129)
              {
                ++v129;
              }

              v126 = v160;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v155)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v155;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v160;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v50)
        {
          goto LABEL_225;
        }

        if (v133 > v82 - (v106 + v156))
        {
          v82 = v106 + v156 + v133;
        }

        v134 = (v47 + 8 * result);
        *v134 = v111 - (v106 + v156);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v50 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v158)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v83)
            {
              v106 = *(v109 + 8 * (v106 & v157) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v82 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v20 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 4, 0) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v20;
    v15 = v20 - v8;
    v13 = a1;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  v21 = *(a2 + 276);
  v147 = *(a2 + 112);
  v148 = (-1640531535 * *a4) >> -*(a2 + 264);
  v22 = *(v147 + 4 * v148);
  if (v21 >= 0xFFF)
  {
    v23 = 4095;
  }

  else
  {
    v23 = v21;
  }

  v24 = *(a2 + 128);
  v25 = -1 << (*(a2 + 260) - 1);
  v27 = *(a2 + 24);
  v26 = *(a2 + 28);
  v153 = (v8 + v27);
  v160 = ~v25;
  v28 = v15 + v25 + 1;
  if (v15 < ~v25)
  {
    v28 = 0;
  }

  v159 = v28;
  v29 = 1 << *(a2 + 256);
  if (v15 - v26 > v29 && *(a2 + 40) == 0)
  {
    v26 = v15 - v29;
  }

  if (v26 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v26;
  }

  v161 = v31;
  v163[0] = 0;
  v146 = *(a2 + 268);
  v32 = *(a2 + 248);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *v32 - v34;
  v36 = *(v32 + 28);
  v37 = v26 - v35;
  v144 = *(v32 + 264);
  v145 = v32;
  v156 = ~(-1 << (*(v32 + 260) - 1));
  v143 = v35;
  v38 = v35 + (-1 << (*(v32 + 260) - 1)) + 1;
  if (v35 - v36 <= v156)
  {
    v38 = *(v32 + 28);
  }

  v157 = v38;
  v39 = (a8 - 1);
  v155 = *(v32 + 8);
  v158 = *(v32 + 28);
  v154 = v26 - v35;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v40 = v15 - v27;
    v41 = v34 - v37;
    v42 = v15 - v36 - v37;
    v43 = (a4 + 1);
    v44 = a5 - 7;
    v151 = a5 - 3;
    v150 = a5 - 1;
    v141 = v41 + 12;
    v152 = v27 + v8 + 8;
    v45 = a7;
    v142 = v25;
    v149 = v42;
    while (1)
    {
      if (v45 == 3)
      {
        v47 = *a6 - 1;
      }

      else
      {
        v47 = a6[v45];
      }

      v48 = v15 - v47;
      if (v47 - 1 < v40)
      {
        if (v48 < v26 || *a4 != *(a4 - v47))
        {
          goto LABEL_54;
        }

        v50 = -v47;
        v51 = &v43[v50];
        if (v44 <= v43)
        {
          v54 = a4 + 1;
LABEL_56:
          if (v54 < v151 && *v51 == *v54)
          {
            v51 += 4;
            ++v54;
          }

          if (v54 < v150 && *v51 == *v54)
          {
            v51 += 2;
            v54 = (v54 + 2);
          }

          if (v54 >= a5)
          {
LABEL_66:
            LODWORD(v54) = v54 - v43;
          }

          else
          {
            if (*v51 == *v54)
            {
              LODWORD(v54) = v54 + 1;
            }

            LODWORD(v54) = v54 - v43;
          }

          goto LABEL_104;
        }

        v52 = *v51;
        if (v52 == *v43)
        {
          v53 = (a4 + 3);
          v51 = a4 + v50 + 12;
          while (1)
          {
            v54 = v53;
            if (v53 >= v44)
            {
              goto LABEL_56;
            }

            v56 = *v51;
            v51 += 8;
            v55 = v56;
            v53 += 8;
            if (v56 != *v54)
            {
              v54 = (v54 + (__clz(__rbit64(*v54 ^ v55)) >> 3));
              goto LABEL_66;
            }
          }
        }

        v54 = (__clz(__rbit64(*v43 ^ v52)) >> 3);
        goto LABEL_104;
      }

      v57 = v47 - 1 >= v42 || (v48 - v27) > 0xFFFFFFFC;
      if (v57 || (v58 = v41 + v48, *a4 != *(v41 + v48)))
      {
LABEL_54:
        v71 = 0;
        goto LABEL_105;
      }

      v59 = v41;
      v60 = v23;
      v61 = (v58 + 4);
      v62 = v33 + a4 - v58;
      if (v62 >= a5)
      {
        v62 = a5;
      }

      if (v62 - 7 <= v43)
      {
        break;
      }

      if (*v61 == *v43)
      {
        v140 = v33;
        v63 = v13;
        v64 = v27;
        v65 = v24;
        v66 = (v141 + v48);
        v67 = (a4 + 3);
        while (1)
        {
          v68 = v67;
          if (v67 >= (v62 - 7))
          {
            break;
          }

          v70 = *v66;
          v66 += 4;
          v69 = v70;
          v67 += 8;
          if (v70 != *v68)
          {
            v54 = (&v68[__clz(__rbit64(*v68 ^ v69)) >> 3] - v43);
            v24 = v65;
            v27 = v64;
            v13 = v63;
            v33 = v140;
            v25 = v142;
            goto LABEL_81;
          }
        }

        v24 = v65;
        v27 = v64;
        v13 = v63;
        v33 = v140;
        v25 = v142;
        goto LABEL_71;
      }

      v54 = (__clz(__rbit64(*v43 ^ *v61)) >> 3);
LABEL_81:
      if ((v54 + v61) == v33)
      {
        v72 = v54 + v43;
        v23 = v60;
        if (v44 > v54 + v43)
        {
          if (*v153 == *v72)
          {
            v73 = 0;
            v74 = v54 + a4;
            while (1)
            {
              v75 = &v74[v73 + 12];
              if (v75 >= v44)
              {
                break;
              }

              v76 = *(v152 + v73);
              v73 += 8;
              if (v76 != *v75)
              {
                v72 = (&v74[v73 + 4 + (__clz(__rbit64(*v75 ^ v76)) >> 3)] - v72);
                v25 = v142;
                v23 = v60;
                goto LABEL_91;
              }
            }

            v77 = (v152 + v73);
            v78 = (v54 + a4 + v73 + 12);
            v23 = v60;
LABEL_93:
            v41 = v59;
            if (v78 < v151 && *v77 == *v78)
            {
              ++v77;
              ++v78;
            }

            v42 = v149;
            if (v78 < v150 && *v77 == *v78)
            {
              v77 = (v77 + 2);
              v78 = (v78 + 2);
            }

            if (v78 < a5 && *v77 == *v78)
            {
              LODWORD(v78) = v78 + 1;
            }

            v25 = v142;
            LODWORD(v72) = v78 - v72;
          }

          else
          {
            v72 = (__clz(__rbit64(*v72 ^ *v153)) >> 3);
LABEL_91:
            v41 = v59;
            v42 = v149;
          }

          LODWORD(v54) = v72 + v54;
          goto LABEL_104;
        }

        v77 = v153;
        v78 = (v54 + v43);
        goto LABEL_93;
      }

      v23 = v60;
      v41 = v59;
      v42 = v149;
LABEL_104:
      v71 = v54 + 4;
LABEL_105:
      v46 = v71;
      if (v39 >= v71)
      {
        v46 = v39;
      }

      else
      {
        v79 = (v13 + 8 * result);
        *v79 = v45 - a7 + 1;
        v79[1] = v71;
        result = (result + 1);
        if (v71 > v23 || a4 + v71 == a5)
        {
          return result;
        }
      }

      ++v45;
      v39 = v46;
      if (v45 == a7 + 3)
      {
        goto LABEL_110;
      }
    }

    v66 = v61;
    v68 = (a4 + 1);
LABEL_71:
    if (v68 < v62 - 3 && *v66 == *v68)
    {
      v66 += 2;
      v68 += 4;
    }

    if (v68 < v62 - 1 && *v66 == *v68)
    {
      ++v66;
      v68 += 2;
    }

    if (v68 < v62 && *v66 == *v68)
    {
      ++v68;
    }

    v54 = (v68 - v43);
    goto LABEL_81;
  }

  v46 = v39;
LABEL_110:
  v80 = (v24 + 8 * (v15 & ~v25));
  v81 = v15 + 9;
  v82 = 1 << v146;
  *(v147 + 4 * v148) = v15;
  if (v22 < v161)
  {
    *v80 = 0;
    v83 = v155;
    v84 = v158;
    goto LABEL_157;
  }

  v85 = 0;
  v86 = 0;
  v87 = v80 + 1;
  v88 = a5 - 7;
  v89 = a5 - 3;
  while (1)
  {
    if (v85 >= v86)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v91 = v8 + v22;
    v92 = a4 + v90;
    v93 = (v91 + v90);
    if (v88 <= a4 + v90)
    {
      v98 = (a4 + v90);
      if (v92 >= v89)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v94 = *v93;
    if (v94 == *v92)
    {
      v95 = v24;
      v96 = v8 + 8 + v22;
      v97 = a4;
      while (1)
      {
        v98 = (v97 + v90 + 8);
        if (v98 >= v88)
        {
          break;
        }

        v99 = *(v96 + v90);
        v100 = *v98;
        v96 += 8;
        v97 += 2;
        if (v99 != v100)
        {
          v101 = v97 + (__clz(__rbit64(v100 ^ v99)) >> 3) - a4;
          v24 = v95;
          goto LABEL_136;
        }
      }

      v93 = (v96 + v90);
      v24 = v95;
      if (v98 >= v89)
      {
LABEL_126:
        if (v98 >= (a5 - 1))
        {
          if (v98 >= a5)
          {
LABEL_134:
            v101 = v98 - v92;
            goto LABEL_136;
          }
        }

        else
        {
          if (*v93 == *v98)
          {
            ++v93;
            ++v98;
          }

          if (v98 >= a5)
          {
            goto LABEL_134;
          }
        }

        if (*v93 == *v98)
        {
          v98 = (v98 + 1);
        }

        goto LABEL_134;
      }

LABEL_124:
      if (*v93 == *v98)
      {
        v93 += 2;
        v98 += 2;
      }

      goto LABEL_126;
    }

    v101 = __clz(__rbit64(*v92 ^ v94)) >> 3;
LABEL_136:
    v102 = v101 + v90;
    if (v102 > v46)
    {
      if (v102 > v81 - v22)
      {
        v81 = v22 + v102;
      }

      v103 = (v13 + 8 * result);
      *v103 = v15 + 3 - v22;
      v103[1] = v102;
      result = (result + 1);
      if (v102 > 0x1000 || a4 + v102 == a5)
      {
        *v87 = 0;
        *v80 = 0;
        goto LABEL_222;
      }

      v46 = v102;
    }

    v105 = (v24 + 8 * (v22 & v160));
    if (*(v91 + v102) < *(a4 + v102))
    {
      break;
    }

    *v87 = v22;
    if (v22 <= v159)
    {
      v87 = v163;
      goto LABEL_156;
    }

    v87 = (v24 + 8 * (v22 & v160));
    v86 = v102;
    if (!--v82)
    {
      goto LABEL_156;
    }

LABEL_113:
    v22 = *v105;
    if (*v105 < v161)
    {
      goto LABEL_156;
    }
  }

  *v80 = v22;
  if (v22 > v159)
  {
    v80 = v105 + 1;
    v85 = v102;
    ++v105;
    if (!--v82)
    {
      goto LABEL_156;
    }

    goto LABEL_113;
  }

  v80 = v163;
LABEL_156:
  *v87 = 0;
  *v80 = 0;
  v83 = v155;
  v84 = v158;
  if (v82)
  {
LABEL_157:
    v106 = *(*(v145 + 112) + 4 * ((-1640531535 * *a4) >> -v144));
    if (v106 > v84)
    {
      v107 = 0;
      v108 = 0;
      v109 = *(v145 + 128);
      v110 = a5 - 7;
      v111 = v15 + 3;
      v162 = v83 + 8;
      v112 = v27 + v8 + 8;
      v113 = v8 + v154;
      while (1)
      {
        if (v107 >= v108)
        {
          v114 = v108;
        }

        else
        {
          v114 = v107;
        }

        v115 = v83 + v106;
        v116 = a4 + v114;
        v117 = (v115 + v114);
        v118 = v33 + a4 - v115;
        if (v118 >= a5)
        {
          v118 = a5;
        }

        if (v118 - 7 <= v116)
        {
          v125 = (v115 + v114);
          v121 = (a4 + v114);
        }

        else
        {
          if (*v117 != *v116)
          {
            v124 = __clz(__rbit64(*v116 ^ *v117)) >> 3;
            goto LABEL_183;
          }

          v119 = v162 + v106;
          v120 = a4;
          while (1)
          {
            v121 = (v120 + v114 + 8);
            if (v121 >= (v118 - 7))
            {
              break;
            }

            v122 = *(v119 + v114);
            v123 = *v121;
            v119 += 8;
            v120 += 2;
            if (v122 != v123)
            {
              v124 = v120 + (__clz(__rbit64(v123 ^ v122)) >> 3) - a4;
              v83 = v155;
              goto LABEL_183;
            }
          }

          v125 = (v119 + v114);
          v83 = v155;
        }

        if (v121 < (v118 - 3) && *v125 == *v121)
        {
          ++v125;
          v121 += 2;
        }

        if (v121 < (v118 - 1) && *v125 == *v121)
        {
          v125 = (v125 + 2);
          ++v121;
        }

        if (v121 < v118 && *v125 == *v121)
        {
          v121 = (v121 + 1);
        }

        v124 = v121 - v116;
LABEL_183:
        if ((v117 + v124) == v33)
        {
          v127 = &v116[v124];
          if (v110 > &v116[v124])
          {
            v126 = v158;
            if (*v153 == *v127)
            {
              v128 = 0;
              while (1)
              {
                v129 = &v127[v128 + 8];
                if (v129 >= v110)
                {
                  break;
                }

                v130 = *(v112 + v128);
                v128 += 8;
                if (v130 != *v129)
                {
                  v131 = v128 + (__clz(__rbit64(*v129 ^ v130)) >> 3);
                  v83 = v155;
                  goto LABEL_204;
                }
              }

              v132 = (v112 + v128);
              v83 = v155;
LABEL_194:
              if (v129 < a5 - 3 && *v132 == *v129)
              {
                ++v132;
                v129 += 4;
              }

              if (v129 < a5 - 1 && *v132 == *v129)
              {
                v132 = (v132 + 2);
                v129 += 2;
              }

              if (v129 < a5)
              {
                v83 = v155;
                if (*v132 == *v129)
                {
                  ++v129;
                }
              }

              v126 = v158;
              v131 = v129 - v127;
            }

            else
            {
              v131 = __clz(__rbit64(*v127 ^ *v153)) >> 3;
            }

LABEL_204:
            v124 += v131;
            goto LABEL_205;
          }

          v132 = v153;
          v129 = &v116[v124];
          goto LABEL_194;
        }

        v126 = v158;
LABEL_205:
        v133 = v124 + v114;
        if (v124 + v114 + v106 >= v143)
        {
          v115 = v113 + v106;
        }

        if (v133 <= v46)
        {
          goto LABEL_225;
        }

        if (v133 > v81 - (v106 + v154))
        {
          v81 = v106 + v154 + v133;
        }

        v134 = (v13 + 8 * result);
        *v134 = v111 - (v106 + v154);
        v134[1] = v133;
        result = (result + 1);
        v135 = v133 > 0x1000 || a4 + v133 == a5;
        v46 = v124 + v114;
        if (!v135)
        {
LABEL_225:
          if (v106 > v157)
          {
            v136 = *(v115 + v133);
            v137 = *(a4 + v133);
            v138 = v136 >= v137;
            v139 = v136 < v137;
            if (v138)
            {
              v108 = v124 + v114;
            }

            if (!v138)
            {
              v107 = v124 + v114;
            }

            if (--v82)
            {
              v106 = *(v109 + 8 * (v106 & v156) + 4 * v139);
              if (v106 > v126)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_222:
  *(a2 + 44) = v81 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_dictMatchState_3(_DWORD *a1, uint64_t a2, unsigned int *a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v20 = a4 - v8;
    v143 = a4 - v8;
  }

  else
  {
    v164 = a8;
    v15 = a6;
    v16 = a7;
    v17 = a3;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 3, 0) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v20 = v19 - v8;
    v143 = v19 - v8;
    v13 = a1;
    a3 = v17;
    a7 = v16;
    a6 = v15;
    a8 = v164;
  }

  v145 = a3;
  *(a2 + 44) = v14;
  v21 = *(a2 + 276);
  v153 = *(a2 + 112);
  v22 = *(v153 + 4 * ((-1640531535 * *a4) >> -*(a2 + 264)));
  if (v21 >= 0xFFF)
  {
    v21 = 4095;
  }

  v157 = *(a2 + 128);
  v151 = -1 << (*(a2 + 260) - 1);
  v152 = (-1640531535 * *a4) >> -*(a2 + 264);
  v23 = *(a2 + 24);
  v156 = (v8 + v23);
  v24 = v20 + v151 + 1;
  if (v20 < ~v151)
  {
    v24 = 0;
  }

  v162 = v24;
  v25 = 1 << *(a2 + 256);
  if (v20 - *(a2 + 28) > v25 && *(a2 + 40) == 0)
  {
    v27 = v20 - v25;
  }

  else
  {
    v27 = *(a2 + 28);
  }

  if (v27 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  v163 = v28;
  v166[0] = 0;
  v150 = *(a2 + 268);
  v29 = *(a2 + 248);
  v30 = *(v29 + 8);
  v165 = *v29;
  v31 = *(v29 + 28);
  v32 = v27 - (*v29 - v30);
  v147 = *(v29 + 264);
  v148 = v29;
  v159 = ~(-1 << (*(v29 + 260) - 1));
  v144 = *v29 - v30;
  v33 = v144 + (-1 << (*(v29 + 260) - 1)) + 1;
  if (*v29 - v30 - v31 <= v159)
  {
    v33 = *(v29 + 28);
  }

  v160 = v33;
  v34 = (a8 - 1);
  v161 = *(v29 + 8);
  v149 = *(v29 + 28);
  v158 = v27 - (*v29 - v30);
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v35 = v30 - v32;
    v36 = v20 - v31 - v32;
    v37 = a4 + 3;
    v38 = a5 - 7;
    v39 = a5 - 3;
    v155 = a5 - 1;
    v142 = v35 + 11;
    v146 = v13;
    v154 = v23 + v8 + 8;
    v40 = a7;
    v41 = v157;
    while (1)
    {
      if (v40 == 3)
      {
        v43 = *a6 - 1;
      }

      else
      {
        v43 = a6[v40];
      }

      v44 = v20 - v43;
      if (v43 - 1 < v20 - v23)
      {
        if (v44 < v27 || ((*(a4 - v43) ^ *a4) & 0xFFFFFF) != 0)
        {
          goto LABEL_47;
        }

        v46 = -v43;
        v47 = &v37[v46];
        if (v38 <= v37)
        {
          v49 = (a4 + 3);
LABEL_49:
          if (v49 < v39 && *v47 == *v49)
          {
            v47 += 4;
            ++v49;
          }

          if (v49 < v155 && *v47 == *v49)
          {
            v47 += 2;
            v49 = (v49 + 2);
          }

          if (v49 < a5 && *v47 == *v49)
          {
            LODWORD(v49) = v49 + 1;
          }

LABEL_58:
          LODWORD(v49) = v49 - v37;
          goto LABEL_103;
        }

        if (*v47 == *v37)
        {
          v48 = a4 + 11;
          v47 = a4 + v46 + 11;
          while (1)
          {
            v49 = v48;
            if (v48 >= v38)
            {
              goto LABEL_49;
            }

            v51 = *v47;
            v47 += 8;
            v50 = v51;
            v48 += 8;
            if (v51 != *v49)
            {
              v49 = (v49 + (__clz(__rbit64(*v49 ^ v50)) >> 3));
              goto LABEL_58;
            }
          }
        }

        v49 = (__clz(__rbit64(*v37 ^ *v47)) >> 3);
        goto LABEL_103;
      }

      v52 = v43 - 1 >= v36 || (v44 - v23) > 0xFFFFFFFC;
      if (v52 || (v53 = v35 + v44, ((*(v35 + v44) ^ *a4) & 0xFFFFFF) != 0))
      {
LABEL_47:
        v54 = 0;
        goto LABEL_104;
      }

      v55 = (v53 + 3);
      v56 = v165 + a4 - v53;
      if (v56 >= a5)
      {
        v56 = a5;
      }

      if (v56 - 7 <= v37)
      {
        break;
      }

      if (*v55 == *v37)
      {
        v57 = v35;
        v58 = (v142 + v44);
        v59 = a4 + 11;
        while (1)
        {
          v60 = v59;
          if (v59 >= (v56 - 7))
          {
            goto LABEL_69;
          }

          v62 = *v58;
          v58 += 4;
          v61 = v62;
          v59 += 8;
          if (v62 != *v60)
          {
            v49 = (&v60[__clz(__rbit64(*v60 ^ v61)) >> 3] - v37);
            v35 = v57;
            goto LABEL_80;
          }
        }
      }

      v49 = (__clz(__rbit64(*v37 ^ *v55)) >> 3);
LABEL_80:
      if ((v49 + v55) == v165)
      {
        v63 = v49 + v37;
        v41 = v157;
        if (v38 > v49 + v37)
        {
          if (*v156 == *v63)
          {
            v64 = 0;
            v65 = v49 + a4;
            while (1)
            {
              v66 = &v65[v64 + 11];
              if (v66 >= v38)
              {
                break;
              }

              v67 = *(v154 + v64);
              v64 += 8;
              if (v67 != *v66)
              {
                v68 = (&v65[v64 + 3 + (__clz(__rbit64(*v66 ^ v67)) >> 3)] - v63);
                goto LABEL_90;
              }
            }

            v69 = (v154 + v64);
            v68 = (v49 + a4 + v64 + 11);
LABEL_92:
            if (v68 < v39 && *v69 == *v68)
            {
              ++v69;
              ++v68;
            }

            v13 = v146;
            if (v68 < v155 && *v69 == *v68)
            {
              v69 = (v69 + 2);
              v68 = (v68 + 2);
            }

            if (v68 < a5 && *v69 == *v68)
            {
              LODWORD(v68) = v68 + 1;
            }

            LODWORD(v68) = v68 - v63;
          }

          else
          {
            v68 = (__clz(__rbit64(*v63 ^ *v156)) >> 3);
LABEL_90:
            v13 = v146;
          }

          LODWORD(v49) = v68 + v49;
          goto LABEL_103;
        }

        v69 = (v8 + v23);
        v68 = (v49 + v37);
        goto LABEL_92;
      }

      v41 = v157;
      v13 = v146;
LABEL_103:
      v54 = v49 + 3;
LABEL_104:
      v42 = v54;
      if (v34 >= v54)
      {
        v42 = v34;
      }

      else
      {
        v70 = &v13[2 * result];
        *v70 = v40 - a7 + 1;
        v70[1] = v54;
        result = (result + 1);
        if (v54 > v21 || a4 + v54 == a5)
        {
          return result;
        }
      }

      ++v40;
      v34 = v42;
      if (v40 == a7 + 3)
      {
        goto LABEL_109;
      }
    }

    v57 = v35;
    v58 = v55;
    v60 = a4 + 3;
LABEL_69:
    if (v60 < v56 - 3 && *v58 == *v60)
    {
      v58 += 2;
      v60 += 4;
    }

    if (v60 < v56 - 1 && *v58 == *v60)
    {
      ++v58;
      v60 += 2;
    }

    if (v60 < v56 && *v58 == *v60)
    {
      ++v60;
    }

    v49 = (v60 - v37);
    v35 = v57;
    goto LABEL_80;
  }

  v42 = v34;
  v41 = v157;
LABEL_109:
  if (v42 > 2)
  {
    goto LABEL_143;
  }

  v71 = *(a2 + 120);
  v72 = *v145;
  v73 = *a4;
  v74 = 32 - *(a2 + 48);
  if (v72 < v20)
  {
    do
    {
      *(v71 + 4 * ((900185344 * *(v8 + v72)) >> v74)) = v72;
      ++v72;
    }

    while (v143 != v72);
  }

  *v145 = v20;
  v75 = *(v71 + 4 * ((900185344 * v73) >> v74));
  v76 = v20 - v75;
  if (v75 < v163 || (v20 - v75) >> 18 != 0)
  {
    goto LABEL_143;
  }

  v78 = (v8 + v75);
  if (a5 - 7 <= a4)
  {
    v81 = a4;
LABEL_125:
    if (v81 < a5 - 3 && *v78 == *v81)
    {
      ++v78;
      v81 += 4;
    }

    if (v81 < a5 - 1 && *v78 == *v81)
    {
      v78 = (v78 + 2);
      v81 += 2;
    }

    if (v81 < a5 && *v78 == *v81)
    {
      ++v81;
    }

    v84 = v81 - a4;
    if ((v81 - a4) >= 3)
    {
      goto LABEL_137;
    }
  }

  else
  {
    v79 = *v78;
    if (v79 == *a4)
    {
      v78 = (v75 + v8 + 8);
      v80 = (a4 + 2);
      do
      {
        v81 = v80;
        if (v80 >= (a5 - 7))
        {
          goto LABEL_125;
        }

        v83 = *v78;
        v78 += 2;
        v82 = v83;
        v80 += 8;
      }

      while (v83 == *v81);
      v84 = &v81[__clz(__rbit64(*v81 ^ v82)) >> 3] - a4;
      if (v84 < 3)
      {
        goto LABEL_143;
      }

LABEL_137:
      *v13 = v76 + 3;
      v13[1] = v84;
      if (v84 > v21 || a4 + v84 == a5)
      {
        v86 = v20 + 1;
        result = 1;
        goto LABEL_256;
      }

      result = 1;
      v42 = v84;
      goto LABEL_143;
    }

    v84 = __clz(__rbit64(*a4 ^ v79)) >> 3;
    if (v84 >= 3)
    {
      goto LABEL_137;
    }
  }

LABEL_143:
  v87 = (v41 + 8 * (v20 & ~v151));
  v88 = v20 + 9;
  v89 = 1 << v150;
  *(v153 + 4 * v152) = v20;
  if (v22 < v163)
  {
    *v87 = 0;
    goto LABEL_190;
  }

  v90 = 0;
  v91 = 0;
  v92 = v87 + 1;
  v93 = a5 - 7;
  v94 = a5 - 3;
  while (1)
  {
    if (v90 >= v91)
    {
      v95 = v91;
    }

    else
    {
      v95 = v90;
    }

    v96 = v8 + v22;
    v97 = a4 + v95;
    v98 = (v96 + v95);
    if (v93 <= a4 + v95)
    {
      v102 = (a4 + v95);
      if (v97 >= v94)
      {
        goto LABEL_158;
      }

      goto LABEL_156;
    }

    v99 = *v98;
    if (v99 == *v97)
    {
      v100 = v8 + 8 + v22;
      v101 = a4;
      while (1)
      {
        v102 = (v101 + v95 + 8);
        if (v102 >= v93)
        {
          break;
        }

        v103 = *(v100 + v95);
        v104 = *v102;
        v100 += 8;
        v101 += 2;
        if (v103 != v104)
        {
          v102 = (v101 + v95 + (__clz(__rbit64(v104 ^ v103)) >> 3));
          goto LABEL_166;
        }
      }

      v98 = (v100 + v95);
      if (v102 >= v94)
      {
LABEL_158:
        if (v102 >= (a5 - 1))
        {
          if (v102 >= a5)
          {
LABEL_166:
            v105 = v102 - v97;
            goto LABEL_168;
          }
        }

        else
        {
          if (*v98 == *v102)
          {
            ++v98;
            ++v102;
          }

          if (v102 >= a5)
          {
            goto LABEL_166;
          }
        }

        if (*v98 == *v102)
        {
          v102 = (v102 + 1);
        }

        goto LABEL_166;
      }

LABEL_156:
      if (*v98 == *v102)
      {
        v98 += 2;
        v102 += 2;
      }

      goto LABEL_158;
    }

    v105 = __clz(__rbit64(*v97 ^ v99)) >> 3;
LABEL_168:
    v106 = v105 + v95;
    if (v106 > v42)
    {
      if (v106 > v88 - v22)
      {
        v88 = v22 + v106;
      }

      v107 = &v13[2 * result];
      *v107 = v20 + 3 - v22;
      v107[1] = v106;
      result = (result + 1);
      if (v106 > 0x1000 || a4 + v106 == a5)
      {
        *v92 = 0;
        *v87 = 0;
        goto LABEL_255;
      }

      v42 = v106;
    }

    v109 = (v41 + 8 * (v22 & ~v151));
    if (*(v96 + v106) < *(a4 + v106))
    {
      break;
    }

    *v92 = v22;
    if (v22 <= v162)
    {
      v92 = v166;
      goto LABEL_189;
    }

    v92 = (v41 + 8 * (v22 & ~v151));
    v91 = v106;
LABEL_181:
    if (--v89)
    {
      v22 = *v109;
      if (*v109 >= v163)
      {
        continue;
      }
    }

    goto LABEL_189;
  }

  *v87 = v22;
  if (v22 > v162)
  {
    v87 = v109 + 1;
    v90 = v106;
    ++v109;
    goto LABEL_181;
  }

  v87 = v166;
LABEL_189:
  *v92 = 0;
  *v87 = 0;
  if (v89)
  {
LABEL_190:
    v110 = *(*(v148 + 112) + 4 * ((-1640531535 * *a4) >> -v147));
    if (v110 > v149)
    {
      v111 = 0;
      v112 = 0;
      v113 = *(v148 + 128);
      v114 = a5 - 7;
      v115 = v20 + 3;
      v116 = v23 + v8 + 8;
      while (1)
      {
        if (v111 >= v112)
        {
          v117 = v112;
        }

        else
        {
          v117 = v111;
        }

        v118 = v161 + v110;
        v119 = a4 + v117;
        v120 = (v118 + v117);
        if (v165 + a4 - v118 >= a5)
        {
          v121 = a5;
        }

        else
        {
          v121 = v165 + a4 - v118;
        }

        if (v121 - 7 <= v119)
        {
          v128 = (v118 + v117);
          v124 = (a4 + v117);
        }

        else
        {
          if (*v120 != *v119)
          {
            v127 = __clz(__rbit64(*v119 ^ *v120)) >> 3;
            goto LABEL_217;
          }

          v122 = v161 + 8 + v110;
          v123 = a4;
          while (1)
          {
            v124 = (v123 + v117 + 8);
            if (v124 >= (v121 - 7))
            {
              break;
            }

            v125 = *(v122 + v117);
            v126 = *v124;
            v122 += 8;
            v123 += 2;
            if (v125 != v126)
            {
              v127 = v123 + (__clz(__rbit64(v126 ^ v125)) >> 3) - a4;
              goto LABEL_217;
            }
          }

          v128 = (v122 + v117);
        }

        if (v124 < (v121 - 3) && *v128 == *v124)
        {
          ++v128;
          v124 += 2;
        }

        if (v124 < (v121 - 1) && *v128 == *v124)
        {
          v128 = (v128 + 2);
          ++v124;
        }

        if (v124 < v121 && *v128 == *v124)
        {
          v124 = (v124 + 1);
        }

        v127 = v124 - v119;
LABEL_217:
        if ((v120 + v127) == v165)
        {
          v129 = &v119[v127];
          if (v114 > v129)
          {
            if (*v156 == *v129)
            {
              v130 = 0;
              while (1)
              {
                v131 = &v129[v130 + 8];
                if (v131 >= v114)
                {
                  break;
                }

                v132 = *(v116 + v130);
                v130 += 8;
                if (v132 != *v131)
                {
                  v133 = v130 + (__clz(__rbit64(*v131 ^ v132)) >> 3);
                  goto LABEL_237;
                }
              }

              v134 = (v116 + v130);
LABEL_227:
              if (v131 < a5 - 3 && *v134 == *v131)
              {
                ++v134;
                v131 += 4;
              }

              if (v131 < a5 - 1 && *v134 == *v131)
              {
                v134 = (v134 + 2);
                v131 += 2;
              }

              if (v131 < a5 && *v134 == *v131)
              {
                ++v131;
              }

              v133 = v131 - v129;
            }

            else
            {
              v133 = __clz(__rbit64(*v129 ^ *v156)) >> 3;
            }

LABEL_237:
            v127 += v133;
            goto LABEL_238;
          }

          v134 = v156;
          v131 = v129;
          goto LABEL_227;
        }

LABEL_238:
        v135 = v127 + v117;
        if (v135 + v110 >= v144)
        {
          v118 = v8 + v158 + v110;
        }

        if (v135 <= v42)
        {
          goto LABEL_259;
        }

        if (v135 > v88 - (v110 + v158))
        {
          v88 = v110 + v158 + v135;
        }

        v136 = &v13[2 * result];
        *v136 = v115 - (v110 + v158);
        v136[1] = v135;
        result = (result + 1);
        v137 = v135 > 0x1000 || a4 + v135 == a5;
        v42 = v135;
        if (!v137)
        {
LABEL_259:
          if (v110 > v160)
          {
            v138 = *(v118 + v135);
            v139 = *(a4 + v135);
            v140 = v138 >= v139;
            v141 = v138 < v139;
            if (v140)
            {
              v112 = v135;
            }

            if (!v140)
            {
              v111 = v135;
            }

            if (--v89)
            {
              v110 = *(v113 + 8 * (v110 & v159) + 4 * v141);
              if (v110 > v149)
              {
                continue;
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_255:
  v86 = v88 - 8;
LABEL_256:
  *(a2 + 44) = v86;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_6(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 6, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v107 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 264);
  v108 = *(a2 + 112);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = a4 + 1;
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          ++v42;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 = (v42 + 2);
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = a4 + 12;
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = a4 + 4;
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = a4 + 12;
          while (1)
          {
            v53 = v52;
            if (v52 >= (v50 - 7))
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          ++v82;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = (a4 + v76);
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = (v89 + v76 + 8);
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        ++v89;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 = (v90 + 4);
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 = (v90 + 2);
    }

    if (v90 < a5 && *v87 == *v90)
    {
      v90 = (v90 + 1);
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 5, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v107 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 264);
  v108 = *(a2 + 112);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = a4 + 4;
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = a4 + 1;
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          ++v42;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 = (v42 + 2);
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = a4 + 12;
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = a4 + 4;
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = a4 + 12;
          while (1)
          {
            v53 = v52;
            if (v52 >= (v50 - 7))
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          ++v82;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = (a4 + v76);
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = (v89 + v76 + 8);
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        ++v89;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 = (v90 + 4);
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 = (v90 + 2);
    }

    if (v90 < a5 && *v87 == *v90)
    {
      v90 = (v90 + 1);
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_4(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v14 = a4 - v8;
  v15 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v16 = a8;
    v17 = a6;
    v18 = a7;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 4, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v15 = v19 - v8;
    a7 = v18;
    a6 = v17;
    a8 = v16;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v108 = *(a2 + 112);
  v107 = (-1640531535 * *a4) >> -*(a2 + 264);
  v21 = *(v108 + 4 * v107);
  v119 = *(a2 + 128);
  v106 = -1 << (*(a2 + 260) - 1);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = (v22 + v23);
  v109 = (v8 + v23);
  v25 = v15 + v106 + 1;
  if (v15 < ~v106)
  {
    v25 = 0;
  }

  v116 = v25;
  v26 = 1 << *(a2 + 256);
  v46 = v15 - *(a2 + 28) > v26;
  v27 = v15 - v26;
  if (v46 && *(a2 + 40) == 0)
  {
    v29 = v27;
  }

  else
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v118 = v30;
  v120 = 0;
  v105 = *(a2 + 268);
  v31 = (a8 - 1);
  v117 = v22;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v32 = (a4 + 1);
    v33 = a5 - 7;
    v110 = a5 - 1;
    v112 = a5 - 3;
    v104 = v22 + 12;
    v114 = v23 + v8 + 8;
    v34 = a7;
    while (1)
    {
      v36 = v34 == 3 ? *a6 - 1 : a6[v34];
      v37 = v15 - v36;
      if (v36 - 1 >= v15 - v23)
      {
        break;
      }

      if (v37 < v29 || *a4 != *(a4 - v36))
      {
        goto LABEL_54;
      }

      v39 = -v36;
      v40 = &v32[v39];
      if (v33 <= v32)
      {
        v42 = a4 + 1;
LABEL_56:
        if (v42 < v112 && *v40 == *v42)
        {
          v40 += 4;
          ++v42;
        }

        if (v42 < v110 && *v40 == *v42)
        {
          v40 += 2;
          v42 = (v42 + 2);
        }

        if (v42 < a5 && *v40 == *v42)
        {
          LODWORD(v42) = v42 + 1;
        }

        v45 = v42 - a4;
        goto LABEL_101;
      }

      if (*v40 == *v32)
      {
        v40 = a4 + v39 + 12;
        v41 = (a4 + 3);
        while (1)
        {
          v42 = v41;
          if (v41 >= v33)
          {
            goto LABEL_56;
          }

          v44 = *v40;
          v40 += 8;
          v43 = v44;
          v41 += 8;
          if (v44 != *v42)
          {
            v45 = v42 + (__clz(__rbit64(*v42 ^ v43)) >> 3) - a4;
            goto LABEL_101;
          }
        }
      }

      v45 = (__clz(__rbit64(*v32 ^ *v40)) >> 3) + 4;
LABEL_101:
      v35 = v45;
      if (v31 >= v45)
      {
        v35 = v31;
      }

      else
      {
        v66 = (a1 + 8 * result);
        *v66 = v34 - a7 + 1;
        v66[1] = v45;
        result = (result + 1);
        if (v45 > v20 || a4 + v45 == a5)
        {
          return result;
        }
      }

      ++v34;
      v31 = v35;
      if (v34 == a7 + 3)
      {
        goto LABEL_106;
      }
    }

    v46 = v36 - 1 >= v15 - v29 || (v37 - v23) > 0xFFFFFFFC;
    if (!v46)
    {
      v47 = v117 + v37;
      if (*a4 == *(v117 + v37))
      {
        v48 = (v47 + 4);
        v49 = &v24[a4 - v47];
        if (v49 >= a5)
        {
          v50 = a5;
        }

        else
        {
          v50 = v49;
        }

        if (v50 - 7 <= v32)
        {
          v51 = v48;
          v53 = (a4 + 1);
          goto LABEL_68;
        }

        if (*v48 == *v32)
        {
          v51 = (v104 + v37);
          v52 = (a4 + 3);
          while (1)
          {
            v53 = v52;
            if (v52 >= (v50 - 7))
            {
              break;
            }

            v55 = *v51;
            v51 += 4;
            v54 = v55;
            v52 += 8;
            if (v55 != *v53)
            {
              v56 = &v53[__clz(__rbit64(*v53 ^ v54)) >> 3] - v32;
              goto LABEL_79;
            }
          }

LABEL_68:
          if (v53 < v50 - 3 && *v51 == *v53)
          {
            v51 += 2;
            v53 += 4;
          }

          if (v53 < v50 - 1 && *v51 == *v53)
          {
            ++v51;
            v53 += 2;
          }

          if (v53 < v50 && *v51 == *v53)
          {
            ++v53;
          }

          v56 = v53 - v32;
        }

        else
        {
          v56 = __clz(__rbit64(*v32 ^ *v48)) >> 3;
        }

LABEL_79:
        if (v48 + v56 == v24)
        {
          v57 = &v32[v56];
          if (v33 <= &v32[v56])
          {
            v64 = (v8 + v23);
            v65 = &v32[v56];
            goto LABEL_89;
          }

          if (*v109 == *v57)
          {
            v58 = 0;
            v59 = a4 + v56;
            while (1)
            {
              v60 = &v59[v58 + 12];
              if (v60 >= v33)
              {
                break;
              }

              v61 = *(v114 + v58);
              v62 = *v60;
              v58 += 8;
              if (v61 != v62)
              {
                v63 = &v59[v58 + 4 + (__clz(__rbit64(v62 ^ v61)) >> 3)] - v57;
                goto LABEL_99;
              }
            }

            v64 = (v114 + v58);
            v65 = a4 + v56 + v58 + 12;
LABEL_89:
            if (v65 < v112 && *v64 == *v65)
            {
              ++v64;
              v65 += 4;
            }

            if (v65 < v110 && *v64 == *v65)
            {
              v64 = (v64 + 2);
              v65 += 2;
            }

            if (v65 < a5 && *v64 == *v65)
            {
              LODWORD(v65) = v65 + 1;
            }

            LODWORD(v63) = v65 - v57;
          }

          else
          {
            v63 = __clz(__rbit64(*v57 ^ *v109)) >> 3;
          }

LABEL_99:
          LODWORD(v56) = v63 + v56;
        }

        v45 = v56 + 4;
        goto LABEL_101;
      }
    }

LABEL_54:
    v45 = 0;
    goto LABEL_101;
  }

  v35 = v31;
LABEL_106:
  v67 = (v119 + 8 * (v15 & ~v106));
  v68 = v67 + 1;
  v69 = v15 + 9;
  *(v108 + 4 * v107) = v15;
  if (v21 < v118)
  {
    goto LABEL_107;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1 << v105;
  v73 = a5 - 7;
  v111 = a5 - 1;
  v113 = a5 - 3;
  v115 = v15 + 3;
  v74 = v117;
  v75 = v8 + 8 + v23;
  while (1)
  {
    if (v70 >= v71)
    {
      v76 = v71;
    }

    else
    {
      v76 = v70;
    }

    v77 = a4 + v76;
    if (v76 + v21 < v23)
    {
      v78 = v74 + v21;
      v79 = (v78 + v76);
      if (&v24[a4 - v78] >= a5)
      {
        v80 = a5;
      }

      else
      {
        v80 = &v77[v24 - v79];
      }

      if (v80 - 7 <= v77)
      {
        v93 = (v78 + v76);
        v83 = (a4 + v76);
      }

      else
      {
        if (*v79 != *v77)
        {
          v86 = __clz(__rbit64(*v77 ^ *v79)) >> 3;
          goto LABEL_145;
        }

        v81 = v117 + 8 + v21;
        v82 = a4;
        while (1)
        {
          v83 = (v82 + v76 + 8);
          if (v83 >= (v80 - 7))
          {
            break;
          }

          v84 = *(v81 + v76);
          v85 = *v83;
          v81 += 8;
          v82 += 2;
          if (v84 != v85)
          {
            v86 = v82 + (__clz(__rbit64(v85 ^ v84)) >> 3) - a4;
            goto LABEL_145;
          }
        }

        v93 = (v81 + v76);
      }

      if (v83 < (v80 - 3) && *v93 == *v83)
      {
        ++v93;
        v83 += 2;
      }

      if (v83 < (v80 - 1) && *v93 == *v83)
      {
        v93 = (v93 + 2);
        ++v83;
      }

      if (v83 < v80 && *v93 == *v83)
      {
        v83 = (v83 + 1);
      }

      v86 = v83 - v77;
LABEL_145:
      if (&v79[v86] != v24)
      {
        goto LABEL_179;
      }

      v94 = &v77[v86];
      if (v73 <= &v77[v86])
      {
        v99 = (v8 + v23);
        v96 = &v77[v86];
      }

      else
      {
        if (*v109 != *v94)
        {
          v98 = __clz(__rbit64(*v94 ^ *v109)) >> 3;
LABEL_178:
          v86 += v98;
LABEL_179:
          v100 = v86 + v76;
          if (v86 + v76 + v21 >= v23)
          {
            v78 = v8 + v21;
          }

          v74 = v117;
          if (v100 <= v35)
          {
            goto LABEL_188;
          }

          goto LABEL_182;
        }

        v95 = 0;
        while (1)
        {
          v96 = &v94[v95 + 8];
          if (v96 >= v73)
          {
            break;
          }

          v97 = *(v75 + v95);
          v95 += 8;
          if (v97 != *v96)
          {
            v98 = v95 + (__clz(__rbit64(*v96 ^ v97)) >> 3);
            goto LABEL_178;
          }
        }

        v99 = (v75 + v95);
      }

      if (v96 < v113 && *v99 == *v96)
      {
        ++v99;
        v96 += 4;
      }

      if (v96 < v111 && *v99 == *v96)
      {
        v99 = (v99 + 2);
        v96 += 2;
      }

      if (v96 < a5 && *v99 == *v96)
      {
        ++v96;
      }

      v98 = v96 - v94;
      goto LABEL_178;
    }

    v78 = v8 + v21;
    v87 = (v78 + v76);
    if (v73 <= v77)
    {
      v90 = (a4 + v76);
    }

    else
    {
      if (*v87 != *v77)
      {
        v92 = __clz(__rbit64(*v77 ^ *v87)) >> 3;
        goto LABEL_164;
      }

      v88 = v8 + 8 + v21;
      v89 = a4;
      while (1)
      {
        v90 = (v89 + v76 + 8);
        if (v90 >= v73)
        {
          break;
        }

        v91 = *(v88 + v76);
        v88 += 8;
        v89 += 2;
        if (v91 != *v90)
        {
          v92 = v89 + (__clz(__rbit64(*v90 ^ v91)) >> 3) - a4;
          goto LABEL_164;
        }
      }

      v87 = (v88 + v76);
    }

    if (v90 < v113 && *v87 == *v90)
    {
      v87 = (v87 + 4);
      v90 = (v90 + 4);
    }

    if (v90 < v111 && *v87 == *v90)
    {
      v87 = (v87 + 2);
      v90 = (v90 + 2);
    }

    if (v90 < a5 && *v87 == *v90)
    {
      v90 = (v90 + 1);
    }

    v92 = v90 - v77;
LABEL_164:
    v100 = v92 + v76;
    if (v92 + v76 <= v35)
    {
      goto LABEL_188;
    }

LABEL_182:
    if (v100 > v69 - v21)
    {
      v69 = v21 + v100;
    }

    v101 = (a1 + 8 * result);
    *v101 = v115 - v21;
    v101[1] = v100;
    result = (result + 1);
    v102 = v100 > 0x1000 || a4 + v100 == a5;
    v35 = v100;
    if (v102)
    {
      goto LABEL_107;
    }

LABEL_188:
    v103 = (v119 + 8 * (v21 & ~v106));
    if (*(v78 + v100) < *(a4 + v100))
    {
      break;
    }

    *v68 = v21;
    if (v21 <= v116)
    {
      v68 = &v120;
      goto LABEL_107;
    }

    v68 = (v119 + 8 * (v21 & ~v106));
    v71 = v100;
    if (!--v72)
    {
      goto LABEL_107;
    }

LABEL_110:
    v21 = *v103;
    if (*v103 < v118)
    {
      goto LABEL_107;
    }
  }

  *v67 = v21;
  if (v21 > v116)
  {
    v67 = v103 + 1;
    v70 = v100;
    ++v103;
    if (!--v72)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v67 = &v120;
LABEL_107:
  *v68 = 0;
  *v67 = 0;
  *(a2 + 44) = v69 - 8;
  return result;
}

uint64_t ZSTD_btGetAllMatches_extDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a1;
  v14 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v20 = a4 - v8;
    v133 = a4 - v8;
  }

  else
  {
    v153 = a8;
    v15 = a6;
    v16 = a7;
    v17 = a3;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v14, 3, 1) + v9;
    }

    while (v9 < v14);
    v8 = *(a2 + 8);
    a4 = v19;
    v20 = v19 - v8;
    v133 = v19 - v8;
    v13 = a1;
    a3 = v17;
    a7 = v16;
    a6 = v15;
    a8 = v153;
  }

  *(a2 + 44) = v14;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v21 = 4095;
  }

  else
  {
    v21 = *(a2 + 276);
  }

  v137 = *(a2 + 112);
  v136 = (-1640531535 * *a4) >> -*(a2 + 264);
  v22 = *(v137 + 4 * v136);
  v23 = *(a2 + 128);
  v135 = -1 << (*(a2 + 260) - 1);
  v24 = ~v135;
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v154 = (v25 + v26);
  v141 = (v8 + v26);
  v27 = v20 + v135 + 1;
  if (v20 < ~v135)
  {
    v27 = 0;
  }

  v150 = v27;
  v28 = 1 << *(a2 + 256);
  v47 = v20 - *(a2 + 28) > v28;
  v29 = v20 - v28;
  if (!v47 || *(a2 + 40) != 0)
  {
    v29 = *(a2 + 28);
  }

  if (v29 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29;
  }

  v151 = v31;
  v155 = 0;
  v134 = *(a2 + 268);
  v32 = (a8 - 1);
  v152 = v25;
  v148 = v21;
  result = 0;
  if (a7 <= 0xFFFFFFFC)
  {
    v33 = a4 + 3;
    v34 = a5 - 7;
    v145 = a5 - 3;
    v142 = a5 - 1;
    v132 = v25 + 11;
    v139 = v26 + v8 + 8;
    v35 = a7;
    while (1)
    {
      v37 = v35 == 3 ? *a6 - 1 : a6[v35];
      v38 = v20 - v37;
      if (v37 - 1 >= v20 - v26)
      {
        break;
      }

      if (v38 < v29 || ((*(a4 - v37) ^ *a4) & 0xFFFFFF) != 0)
      {
        goto LABEL_45;
      }

      v40 = -v37;
      v41 = &v33[-v37];
      if (v34 <= v33)
      {
        v43 = (a4 + 3);
LABEL_63:
        if (v43 < v145 && *v41 == *v43)
        {
          v41 += 4;
          ++v43;
        }

        if (v43 < v142 && *v41 == *v43)
        {
          v41 += 2;
          v43 = (v43 + 2);
        }

        if (v43 < a5 && *v41 == *v43)
        {
          LODWORD(v43) = v43 + 1;
        }

        v46 = v43 - a4;
        goto LABEL_46;
      }

      if (*v41 == *v33)
      {
        v42 = a4 + 11;
        v41 = a4 + v40 + 11;
        while (1)
        {
          v43 = v42;
          if (v42 >= v34)
          {
            break;
          }

          v45 = *v41;
          v41 += 8;
          v44 = v45;
          v42 += 8;
          if (v45 != *v43)
          {
            v21 = v148;
            v46 = v43 + (__clz(__rbit64(*v43 ^ v44)) >> 3) - a4;
            goto LABEL_46;
          }
        }

        v21 = v148;
        goto LABEL_63;
      }

      v46 = (__clz(__rbit64(*v33 ^ *v41)) >> 3) + 3;
LABEL_46:
      v36 = v46;
      if (v32 >= v46)
      {
        v36 = v32;
      }

      else
      {
        v49 = &v13[2 * result];
        *v49 = v35 - a7 + 1;
        v49[1] = v46;
        result = (result + 1);
        if (v46 > v21 || a4 + v46 == a5)
        {
          return result;
        }
      }

      ++v35;
      v32 = v36;
      if (v35 == a7 + 3)
      {
        goto LABEL_109;
      }
    }

    v47 = v37 - 1 >= v20 - v29 || (v38 - v26) > 0xFFFFFFFC;
    if (!v47)
    {
      v48 = v152 + v38;
      if (((*(v152 + v38) ^ *a4) & 0xFFFFFF) == 0)
      {
        v50 = (v48 + 3);
        v51 = &v154[a4 - v48];
        if (v51 >= a5)
        {
          v52 = a5;
        }

        else
        {
          v52 = v51;
        }

        if (v52 - 7 <= v33)
        {
          v53 = v50;
          v55 = a4 + 3;
          goto LABEL_76;
        }

        if (*v50 == *v33)
        {
          v53 = (v132 + v38);
          v54 = a4 + 11;
          while (1)
          {
            v55 = v54;
            if (v54 >= (v52 - 7))
            {
              break;
            }

            v57 = *v53;
            v53 += 4;
            v56 = v57;
            v54 += 8;
            if (v57 != *v55)
            {
              v58 = &v55[__clz(__rbit64(*v55 ^ v56)) >> 3] - v33;
              v24 = ~v135;
              goto LABEL_74;
            }
          }

          v24 = ~v135;
LABEL_76:
          v21 = v148;
          if (v55 < v52 - 3 && *v53 == *v55)
          {
            v53 += 2;
            v55 += 4;
          }

          if (v55 < v52 - 1 && *v53 == *v55)
          {
            ++v53;
            v55 += 2;
          }

          if (v55 < v52 && *v53 == *v55)
          {
            ++v55;
          }

          v58 = v55 - v33;
        }

        else
        {
          v58 = __clz(__rbit64(*v33 ^ *v50)) >> 3;
LABEL_74:
          v21 = v148;
        }

        if (v50 + v58 == v154)
        {
          v59 = &v33[v58];
          if (v34 <= &v33[v58])
          {
            v66 = (v8 + v26);
            v67 = &v33[v58];
            goto LABEL_96;
          }

          if (*v141 == *v59)
          {
            v60 = 0;
            v61 = a4 + v58;
            while (1)
            {
              v62 = &v61[v60 + 11];
              if (v62 >= v34)
              {
                break;
              }

              v63 = *(v139 + v60);
              v64 = *v62;
              v60 += 8;
              if (v63 != v64)
              {
                v65 = &v61[v60 + 3 + (__clz(__rbit64(v64 ^ v63)) >> 3)] - v59;
                v21 = v148;
                goto LABEL_106;
              }
            }

            v66 = (v139 + v60);
            v67 = a4 + v58 + v60 + 11;
            v21 = v148;
LABEL_96:
            if (v67 < v145 && *v66 == *v67)
            {
              ++v66;
              v67 += 4;
            }

            if (v67 < v142 && *v66 == *v67)
            {
              v66 = (v66 + 2);
              v67 += 2;
            }

            if (v67 < a5)
            {
              v21 = v148;
              if (*v66 == *v67)
              {
                LODWORD(v67) = v67 + 1;
              }
            }

            LODWORD(v65) = v67 - v59;
          }

          else
          {
            v65 = __clz(__rbit64(*v59 ^ *v141)) >> 3;
          }

LABEL_106:
          LODWORD(v58) = v65 + v58;
        }

        v46 = v58 + 3;
        goto LABEL_46;
      }
    }

LABEL_45:
    v46 = 0;
    goto LABEL_46;
  }

  v36 = (a8 - 1);
LABEL_109:
  if (v36 <= 2)
  {
    v68 = *(a2 + 120);
    v69 = *a3;
    v70 = *a4;
    v71 = 32 - *(a2 + 48);
    v72 = v152;
    if (v69 < v20)
    {
      do
      {
        *(v68 + 4 * ((900185344 * *(v8 + v69)) >> v71)) = v69;
        ++v69;
      }

      while (v133 != v69);
    }

    *a3 = v20;
    v73 = *(v68 + 4 * ((900185344 * v70) >> v71));
    v74 = v20 - v73;
    if (v73 < v151 || (v20 - v73) >> 18 != 0)
    {
      goto LABEL_127;
    }

    if (v73 >= v26)
    {
      v121 = (v8 + v73);
      if (a5 - 7 <= a4)
      {
        v124 = a4;
      }

      else
      {
        v122 = *v121;
        if (v122 != *a4)
        {
          v83 = __clz(__rbit64(*a4 ^ v122)) >> 3;
          goto LABEL_251;
        }

        v121 = (v73 + v8 + 8);
        v123 = (a4 + 2);
        while (1)
        {
          v124 = v123;
          if (v123 >= (a5 - 7))
          {
            break;
          }

          v126 = *v121;
          v121 += 4;
          v125 = v126;
          v123 += 8;
          if (v126 != *v124)
          {
            v83 = &v124[__clz(__rbit64(*v124 ^ v125)) >> 3] - a4;
            goto LABEL_251;
          }
        }
      }

      if (v124 < a5 - 3 && *v121 == *v124)
      {
        v121 += 2;
        v124 += 4;
      }

      if (v124 < a5 - 1 && *v121 == *v124)
      {
        ++v121;
        v124 += 2;
      }

      if (v124 < a5 && *v121 == *v124)
      {
        ++v124;
      }

      v83 = v124 - a4;
LABEL_251:
      if (v83 >= 3)
      {
        *v13 = v74 + 3;
        v13[1] = v83;
        if (v83 > v21 || a4 + v83 == a5)
        {
          v87 = v20 + 1;
          result = 1;
          goto LABEL_129;
        }

        result = 1;
        v36 = v83;
      }

      goto LABEL_127;
    }

    v76 = (v152 + v73);
    v77 = a4 + v26 - v73;
    if (v77 >= a5)
    {
      v77 = a5;
    }

    if (v77 - 7 <= a4)
    {
      v78 = (v152 + v73);
      v80 = a4;
    }

    else
    {
      if (*v76 != *a4)
      {
        v83 = __clz(__rbit64(*a4 ^ *v76)) >> 3;
LABEL_248:
        if (v76 + v83 == v154)
        {
          v147 = result;
          v144 = v13;
          v127 = v23;
          v128 = a4;
          v140 = v74;
          v129 = ZSTD_count((a4 + v83), v141, a5);
          v74 = v140;
          v72 = v152;
          a4 = v128;
          v23 = v127;
          v21 = v148;
          v24 = ~v135;
          v130 = v129;
          v13 = v144;
          result = v147;
          v83 += v130;
        }

        goto LABEL_251;
      }

      v78 = (v73 + v152 + 8);
      v79 = (a4 + 2);
      while (1)
      {
        v80 = v79;
        if (v79 >= (v77 - 7))
        {
          break;
        }

        v82 = *v78;
        v78 += 4;
        v81 = v82;
        v79 += 8;
        if (v82 != *v80)
        {
          v83 = &v80[__clz(__rbit64(*v80 ^ v81)) >> 3] - a4;
          goto LABEL_248;
        }
      }
    }

    if (v80 < v77 - 3 && *v78 == *v80)
    {
      v78 += 2;
      v80 += 4;
    }

    if (v80 < v77 - 1 && *v78 == *v80)
    {
      ++v78;
      v80 += 2;
    }

    if (v80 < v77 && *v78 == *v80)
    {
      ++v80;
    }

    v83 = v80 - a4;
    goto LABEL_248;
  }

  v72 = v152;
LABEL_127:
  v84 = (v23 + 8 * (v20 & ~v135));
  v85 = v84 + 1;
  v86 = v20 + 9;
  *(v137 + 4 * v136) = v20;
  if (v22 < v151)
  {
    goto LABEL_128;
  }

  v88 = 0;
  v89 = 0;
  v90 = 1 << v134;
  v91 = a5 - 7;
  v143 = a5 - 1;
  v146 = a5 - 3;
  v149 = v20 + 3;
  v138 = v72 + 8;
  v92 = v8 + 8 + v26;
  while (1)
  {
    if (v88 >= v89)
    {
      v93 = v89;
    }

    else
    {
      v93 = v88;
    }

    v94 = a4 + v93;
    if (v93 + v22 < v26)
    {
      v95 = v72 + v22;
      v96 = (v95 + v93);
      if (&v154[a4 - v95] >= a5)
      {
        v97 = a5;
      }

      else
      {
        v97 = &v94[v154 - v96];
      }

      if (v97 - 7 <= v94)
      {
        v110 = (v72 + v22 + v93);
        v100 = (a4 + v93);
      }

      else
      {
        if (*v96 != *v94)
        {
          v103 = __clz(__rbit64(*v94 ^ *v96)) >> 3;
          v72 = v152;
          goto LABEL_166;
        }

        v98 = v138 + v22;
        v99 = a4;
        while (1)
        {
          v100 = (v99 + v93 + 8);
          if (v100 >= (v97 - 7))
          {
            break;
          }

          v101 = *(v98 + v93);
          v102 = *v100;
          v98 += 8;
          v99 += 2;
          if (v101 != v102)
          {
            v103 = v99 + (__clz(__rbit64(v102 ^ v101)) >> 3) - a4;
            v72 = v152;
            goto LABEL_166;
          }
        }

        v110 = (v98 + v93);
      }

      if (v100 < (v97 - 3) && *v110 == *v100)
      {
        ++v110;
        v100 += 2;
      }

      if (v100 < (v97 - 1) && *v110 == *v100)
      {
        v110 = (v110 + 2);
        ++v100;
      }

      if (v100 < v97 && *v110 == *v100)
      {
        v100 = (v100 + 1);
      }

      v72 = v152;
      v103 = v100 - v94;
LABEL_166:
      if (&v96[v103] != v154)
      {
        goto LABEL_200;
      }

      v111 = &v94[v103];
      if (v91 <= &v94[v103])
      {
        v116 = (v8 + v26);
        v113 = &v94[v103];
      }

      else
      {
        if (*v141 != *v111)
        {
          v115 = __clz(__rbit64(*v111 ^ *v141)) >> 3;
LABEL_199:
          v103 += v115;
LABEL_200:
          v117 = v103 + v93;
          if (v117 + v22 >= v26)
          {
            v95 = v8 + v22;
          }

          v24 = ~v135;
          if (v117 <= v36)
          {
            goto LABEL_209;
          }

          goto LABEL_203;
        }

        v112 = 0;
        while (1)
        {
          v113 = &v111[v112 + 8];
          if (v113 >= v91)
          {
            break;
          }

          v114 = *(v92 + v112);
          v112 += 8;
          if (v114 != *v113)
          {
            v115 = v112 + (__clz(__rbit64(*v113 ^ v114)) >> 3);
            goto LABEL_199;
          }
        }

        v116 = (v92 + v112);
      }

      if (v113 < v146 && *v116 == *v113)
      {
        ++v116;
        v113 += 4;
      }

      if (v113 < v143 && *v116 == *v113)
      {
        v116 = (v116 + 2);
        v113 += 2;
      }

      if (v113 < a5 && *v116 == *v113)
      {
        ++v113;
      }

      v115 = v113 - v111;
      goto LABEL_199;
    }

    v95 = v8 + v22;
    v104 = (v95 + v93);
    if (v91 <= v94)
    {
      v107 = (a4 + v93);
    }

    else
    {
      if (*v104 != *v94)
      {
        v109 = __clz(__rbit64(*v94 ^ *v104)) >> 3;
        goto LABEL_185;
      }

      v105 = v8 + 8 + v22;
      v106 = a4;
      while (1)
      {
        v107 = (v106 + v93 + 8);
        if (v107 >= v91)
        {
          break;
        }

        v108 = *(v105 + v93);
        v105 += 8;
        v106 += 2;
        if (v108 != *v107)
        {
          v109 = v106 + (__clz(__rbit64(*v107 ^ v108)) >> 3) - a4;
          goto LABEL_185;
        }
      }

      v104 = (v105 + v93);
    }

    if (v107 < v146 && *v104 == *v107)
    {
      v104 = (v104 + 4);
      v107 = (v107 + 4);
    }

    if (v107 < v143 && *v104 == *v107)
    {
      v104 = (v104 + 2);
      v107 = (v107 + 2);
    }

    if (v107 < a5 && *v104 == *v107)
    {
      v107 = (v107 + 1);
    }

    v109 = v107 - v94;
LABEL_185:
    v117 = v109 + v93;
    if (v117 <= v36)
    {
      goto LABEL_209;
    }

LABEL_203:
    if (v117 > v86 - v22)
    {
      v86 = v22 + v117;
    }

    v118 = &v13[2 * result];
    *v118 = v149 - v22;
    v118[1] = v117;
    result = (result + 1);
    v119 = v117 > 0x1000 || a4 + v117 == a5;
    v36 = v117;
    if (v119)
    {
      goto LABEL_128;
    }

LABEL_209:
    v120 = (v23 + 8 * (v22 & v24));
    if (*(v95 + v117) < *(a4 + v117))
    {
      break;
    }

    *v85 = v22;
    if (v22 <= v150)
    {
      v85 = &v155;
      goto LABEL_128;
    }

    v85 = (v23 + 8 * (v22 & v24));
    v89 = v117;
LABEL_214:
    if (--v90)
    {
      v22 = *v120;
      if (*v120 >= v151)
      {
        continue;
      }
    }

    goto LABEL_128;
  }

  *v84 = v22;
  if (v22 > v150)
  {
    v84 = v120 + 1;
    v88 = v117;
    ++v120;
    goto LABEL_214;
  }

  v84 = &v155;
LABEL_128:
  *v85 = 0;
  *v84 = 0;
  v87 = v86 - 8;
LABEL_129:
  *(a2 + 44) = v87;
  return result;
}

unint64_t ZSTD_count(void *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 - 7 <= a1)
  {
    v4 = a1;
  }

  else
  {
    if (*a2 != *a1)
    {
      return __clz(__rbit64(*a1 ^ *a2)) >> 3;
    }

    ++a2;
    for (i = (a1 + 1); ; i += 8)
    {
      v4 = i;
      if (i >= a3 - 7)
      {
        break;
      }

      v6 = *a2++;
      v5 = v6;
      if (v6 != *v4)
      {
        v4 = (v4 + (__clz(__rbit64(*v4 ^ v5)) >> 3));
        return v4 - a1;
      }
    }
  }

  if (v4 < a3 - 3 && *a2 == *v4)
  {
    a2 = (a2 + 4);
    v4 = (v4 + 4);
  }

  if (v4 < a3 - 1 && *a2 == *v4)
  {
    a2 = (a2 + 2);
    v4 = (v4 + 2);
  }

  if (v4 >= a3)
  {
    return v4 - a1;
  }

  if (*a2 == *v4)
  {
    v4 = (v4 + 1);
  }

  return v4 - a1;
}

uint64_t ZSTD_btGetAllMatches_noDict_6(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 6, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (0xCF1BBCDCBF9B0000 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = a4 + 4;
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (*v43 != v22)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = a4 + 12;
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = v47 + (__clz(__rbit64(*v47 ^ v48)) >> 3) - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 = (v47 + 4);
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 = (v47 + 2);
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = (a4 + 4);
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = a4 + 12;
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = v71 + (__clz(__rbit64(*v71 ^ v72)) >> 3) - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 = (v71 + 4);
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 = (v71 + 2);
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = (a4 + 4);
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = a4 + 12;
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = v58 + (__clz(__rbit64(*v58 ^ v59)) >> 3) - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 = (v58 + 4);
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 = (v58 + 2);
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      ++v92;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_5(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 5, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (0xCF1BBCDCBB000000 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = a4 + 4;
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (*v43 != v22)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = a4 + 12;
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = v47 + (__clz(__rbit64(*v47 ^ v48)) >> 3) - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 = (v47 + 4);
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 = (v47 + 2);
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = (a4 + 4);
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = a4 + 12;
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = v71 + (__clz(__rbit64(*v71 ^ v72)) >> 3) - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 = (v71 + 4);
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 = (v71 + 2);
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = (a4 + 4);
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = a4 + 12;
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = v58 + (__clz(__rbit64(*v58 ^ v59)) >> 3) - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 = (v58 + 4);
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 = (v58 + 2);
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      ++v92;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_4(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  v14 = a4 - v8;
  if (v9 < a4 - v8)
  {
    v15 = a8;
    v16 = a7;
    v17 = a6;
    v18 = a1;
    v19 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 4, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v19;
    v14 = v19 - v8;
    a1 = v18;
    a6 = v17;
    a7 = v16;
    a8 = v15;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (-1640531535 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v14 + v26 + 1;
  if (v14 < ~v26)
  {
    v28 = 0;
  }

  v29 = *(a2 + 24);
  v30 = 1 << *(a2 + 256);
  v31 = v14 - *(a2 + 28) > v30;
  v32 = v14 - v30;
  if (v31 && *(a2 + 40) == 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = *(a2 + 28);
  }

  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v103 = 0;
  v36 = *(a2 + 268);
  v37 = (a8 - 1);
  if (a7 <= 0xFFFFFFFC)
  {
    v38 = v14 - v29;
    v39 = (a4 + 1);
    v40 = a7;
    if (a7 == 3)
    {
      v41 = *a6 - 1;
    }

    else
    {
      v41 = a6[a7];
    }

    v42 = a5 - 7;
    v101 = a5 - 3;
    v102 = a5 - 1;
    if (v41 - 1 >= v38)
    {
      goto LABEL_54;
    }

    v10 = 0;
    if (v14 - v41 < v34)
    {
      goto LABEL_55;
    }

    v43 = (a4 - v41);
    if (v22 != *v43)
    {
      goto LABEL_55;
    }

    v44 = &v39[-v41];
    if (v42 <= v39)
    {
      v47 = a4 + 1;
    }

    else
    {
      v45 = *v44;
      if (v45 != *v39)
      {
        v50 = __clz(__rbit64(*v39 ^ v45)) >> 3;
        goto LABEL_47;
      }

      v44 = (v43 + 3);
      v46 = (a4 + 3);
      while (1)
      {
        v47 = v46;
        if (v46 >= v42)
        {
          break;
        }

        v49 = *v44;
        v44 += 8;
        v48 = v49;
        v46 += 8;
        if (v49 != *v47)
        {
          v50 = v47 + (__clz(__rbit64(*v47 ^ v48)) >> 3) - v39;
          goto LABEL_47;
        }
      }
    }

    if (v47 < v101 && *v44 == *v47)
    {
      v44 += 4;
      v47 = (v47 + 4);
    }

    if (v47 < v102 && *v44 == *v47)
    {
      v44 += 2;
      v47 = (v47 + 2);
    }

    if (v47 < a5 && *v44 == *v47)
    {
      LODWORD(v47) = v47 + 1;
    }

    LODWORD(v50) = v47 - v39;
LABEL_47:
    v51 = (v50 + 4);
    if (v37 < v51)
    {
      v10 = 1;
      *a1 = 1;
      a1[1] = v51;
      v52 = v51 > v20 || a4 + v51 == a5;
      v37 = v51;
      if (v52)
      {
        return v10;
      }

LABEL_55:
      if (v40 == 2)
      {
        v53 = *a6 - 1;
      }

      else
      {
        v53 = a6[v40 + 1];
      }

      if (v53 - 1 >= v38)
      {
        v54 = 0;
        goto LABEL_81;
      }

      v54 = 0;
      if (v14 - v53 < v34 || (v55 = (a4 - v53), *a4 != *v55))
      {
LABEL_81:
        v62 = v54;
        if (v37 >= v54)
        {
          v62 = v37;
        }

        else
        {
          v63 = &a1[2 * v10];
          *v63 = 2;
          v63[1] = v54;
          v10 = (v10 + 1);
          if (v54 > v20 || a4 + v54 == a5)
          {
            return v10;
          }
        }

        if (v40 == 1)
        {
          v65 = *a6 - 1;
        }

        else
        {
          v65 = a6[v40 + 2];
        }

        if (v65 - 1 >= v38)
        {
          v66 = 0;
          goto LABEL_115;
        }

        v66 = 0;
        if (v14 - v65 < v34 || (v67 = (a4 - v65), *a4 != *v67))
        {
LABEL_115:
          v37 = v66;
          if (v62 >= v66)
          {
            v37 = v62;
          }

          else
          {
            v75 = &a1[2 * v10];
            *v75 = 3;
            v75[1] = v66;
            v10 = (v10 + 1);
            if (v66 > v20 || a4 + v66 == a5)
            {
              return v10;
            }
          }

          goto LABEL_123;
        }

        v68 = &v39[-v65];
        if (v42 <= v39)
        {
          v71 = a4 + 1;
        }

        else
        {
          v69 = *v68;
          if (v69 != *v39)
          {
            v74 = __clz(__rbit64(*v39 ^ v69)) >> 3;
LABEL_114:
            v66 = v74 + 4;
            goto LABEL_115;
          }

          v68 = (v67 + 3);
          v70 = (a4 + 3);
          while (1)
          {
            v71 = v70;
            if (v70 >= v42)
            {
              break;
            }

            v73 = *v68;
            v68 += 8;
            v72 = v73;
            v70 += 8;
            if (v73 != *v71)
            {
              v74 = v71 + (__clz(__rbit64(*v71 ^ v72)) >> 3) - v39;
              goto LABEL_114;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 4;
          v71 = (v71 + 4);
        }

        if (v71 < v102 && *v68 == *v71)
        {
          v68 += 2;
          v71 = (v71 + 2);
        }

        if (v71 < a5 && *v68 == *v71)
        {
          LODWORD(v71) = v71 + 1;
        }

        LODWORD(v74) = v71 - v39;
        goto LABEL_114;
      }

      v56 = &v39[-v53];
      if (v42 <= v39)
      {
        v58 = a4 + 1;
      }

      else
      {
        if (*v56 != *v39)
        {
          v61 = __clz(__rbit64(*v39 ^ *v56)) >> 3;
LABEL_80:
          v54 = v61 + 4;
          goto LABEL_81;
        }

        v56 = (v55 + 3);
        v57 = (a4 + 3);
        while (1)
        {
          v58 = v57;
          if (v57 >= v42)
          {
            break;
          }

          v60 = *v56;
          v56 += 8;
          v59 = v60;
          v57 += 8;
          if (v60 != *v58)
          {
            v61 = v58 + (__clz(__rbit64(*v58 ^ v59)) >> 3) - v39;
            goto LABEL_80;
          }
        }
      }

      if (v58 < v101 && *v56 == *v58)
      {
        v56 += 4;
        v58 = (v58 + 4);
      }

      if (v58 < v102 && *v56 == *v58)
      {
        v56 += 2;
        v58 = (v58 + 2);
      }

      if (v58 < a5 && *v56 == *v58)
      {
        LODWORD(v58) = v58 + 1;
      }

      LODWORD(v61) = v58 - v39;
      goto LABEL_80;
    }

LABEL_54:
    v10 = 0;
    goto LABEL_55;
  }

  v10 = 0;
LABEL_123:
  v77 = (v25 + 8 * (v14 & ~v26));
  v78 = v77 + 1;
  v79 = v14 + 9;
  *(v21 + 4 * v23) = v14;
  if (v24 < v35)
  {
    goto LABEL_124;
  }

  v81 = 0;
  v82 = 0;
  v83 = 1 << v36;
  v84 = a5 - 7;
  v85 = a5 - 3;
  v86 = v14 + 3;
  while (1)
  {
    if (v81 >= v82)
    {
      v87 = v82;
    }

    else
    {
      v87 = v81;
    }

    v88 = v8 + v24;
    v89 = a4 + v87;
    v90 = (v88 + v87);
    if (v84 <= a4 + v87)
    {
      v93 = a4 + v87;
      if (v89 >= v85)
      {
        goto LABEL_139;
      }

LABEL_137:
      if (*v90 == *v93)
      {
        ++v90;
        v93 += 4;
      }

      goto LABEL_139;
    }

    if (*v90 != *v89)
    {
      v96 = __clz(__rbit64(*v89 ^ *v90)) >> 3;
      goto LABEL_149;
    }

    v91 = v8 + 8 + v24;
    v92 = a4;
    while (1)
    {
      v93 = v92 + v87 + 8;
      if (v93 >= v84)
      {
        break;
      }

      v94 = *(v91 + v87);
      v95 = *v93;
      v91 += 8;
      v92 += 2;
      if (v94 != v95)
      {
        v96 = v92 + (__clz(__rbit64(v95 ^ v94)) >> 3) - a4;
        goto LABEL_149;
      }
    }

    v90 = (v91 + v87);
    if (v93 < v85)
    {
      goto LABEL_137;
    }

LABEL_139:
    if (v93 < a5 - 1)
    {
      if (*v90 == *v93)
      {
        v90 = (v90 + 2);
        v93 += 2;
      }

      if (v93 >= a5)
      {
        goto LABEL_147;
      }

LABEL_145:
      if (*v90 == *v93)
      {
        ++v93;
      }

      goto LABEL_147;
    }

    if (v93 < a5)
    {
      goto LABEL_145;
    }

LABEL_147:
    v96 = v93 - v89;
LABEL_149:
    v97 = v96 + v87;
    if (v97 > v37)
    {
      if (v97 > v79 - v24)
      {
        v79 = v24 + v97;
      }

      v98 = &a1[2 * v10];
      *v98 = v86 - v24;
      v98[1] = v97;
      v10 = (v10 + 1);
      v99 = v97 > 0x1000 || a4 + v97 == a5;
      v37 = v97;
      if (v99)
      {
        goto LABEL_124;
      }
    }

    v100 = (v25 + 8 * (v24 & v27));
    if (*(v88 + v97) < *(a4 + v97))
    {
      break;
    }

    *v78 = v24;
    if (v24 <= v28)
    {
      v78 = &v103;
      goto LABEL_124;
    }

    v78 = (v25 + 8 * (v24 & v27));
    v82 = v97;
LABEL_161:
    if (--v83)
    {
      v24 = *v100;
      if (*v100 >= v35)
      {
        continue;
      }
    }

    goto LABEL_124;
  }

  *v77 = v24;
  if (v24 > v28)
  {
    v77 = v100 + 1;
    v81 = v97;
    ++v100;
    goto LABEL_161;
  }

  v77 = &v103;
LABEL_124:
  *v78 = 0;
  *v77 = 0;
  *(a2 + 44) = v79 - 8;
  return v10;
}

uint64_t ZSTD_btGetAllMatches_noDict_3(_DWORD *a1, uint64_t a2, unsigned int *a3, _DWORD *a4, char *a5, _DWORD *a6, unsigned int a7, int a8)
{
  v8 = *(a2 + 8);
  v9 = *(a2 + 44);
  if (v8 + v9 > a4)
  {
    return 0;
  }

  v13 = a4 - v8;
  if (v9 >= a4 - v8)
  {
    v19 = a4 - v8;
    v116 = a4 - v8;
  }

  else
  {
    v117 = a8;
    v14 = a7;
    v15 = a6;
    v16 = a3;
    v17 = a1;
    v18 = a4;
    do
    {
      LODWORD(v9) = ZSTD_insertBt1(a2, (v8 + v9), a5, v13, 3, 0) + v9;
    }

    while (v9 < v13);
    v8 = *(a2 + 8);
    a4 = v18;
    v19 = v18 - v8;
    v116 = v18 - v8;
    a1 = v17;
    a3 = v16;
    a6 = v15;
    a7 = v14;
    a8 = v117;
  }

  *(a2 + 44) = v13;
  if (*(a2 + 276) >= 0xFFFu)
  {
    v20 = 4095;
  }

  else
  {
    v20 = *(a2 + 276);
  }

  v21 = *(a2 + 112);
  v22 = *a4;
  v23 = (-1640531535 * *a4) >> -*(a2 + 264);
  v24 = *(v21 + 4 * v23);
  v25 = *(a2 + 128);
  v26 = -1 << (*(a2 + 260) - 1);
  v27 = ~v26;
  v28 = v19 + v26 + 1;
  if (v19 < ~v26)
  {
    v28 = 0;
  }

  v118 = v28;
  v119 = 0;
  v29 = 1 << *(a2 + 256);
  v30 = v19 - *(a2 + 28) > v29;
  v31 = v19 - v29;
  if (v30 && *(a2 + 40) == 0)
  {
    v33 = v31;
  }

  else
  {
    v33 = *(a2 + 28);
  }

  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(a2 + 268);
  v36 = (a8 - 1);
  if (a7 > 0xFFFFFFFC)
  {
    v10 = 0;
    if (v36 > 2)
    {
      goto LABEL_158;
    }

    goto LABEL_123;
  }

  v37 = v19 - *(a2 + 24);
  v38 = a4 + 3;
  if (a7 == 3)
  {
    v39 = *a6 - 1;
  }

  else
  {
    v39 = a6[a7];
  }

  v40 = a5 - 7;
  v114 = a5 - 3;
  v115 = a5 - 1;
  if (v39 - 1 >= v37)
  {
    goto LABEL_56;
  }

  v10 = 0;
  if (v19 - v39 < v33)
  {
    goto LABEL_57;
  }

  v41 = v39;
  v42 = (a4 - v39);
  if (((*v42 ^ v22) & 0xFFFFFF) != 0)
  {
    goto LABEL_57;
  }

  v43 = &v38[-v41];
  if (v40 <= v38)
  {
    v46 = (a4 + 3);
  }

  else
  {
    v44 = *v43;
    if (v44 != *v38)
    {
      v49 = __clz(__rbit64(*v38 ^ v44)) >> 3;
      goto LABEL_49;
    }

    v43 = v42 + 11;
    v45 = a4 + 11;
    while (1)
    {
      v46 = v45;
      if (v45 >= v40)
      {
        break;
      }

      v48 = *v43;
      v43 += 8;
      v47 = v48;
      v45 += 8;
      if (v48 != *v46)
      {
        v49 = v46 + (__clz(__rbit64(*v46 ^ v47)) >> 3) - v38;
        goto LABEL_49;
      }
    }
  }

  if (v46 < v114 && *v43 == *v46)
  {
    v43 += 4;
    v46 = (v46 + 4);
  }

  if (v46 < v115 && *v43 == *v46)
  {
    v43 += 2;
    v46 = (v46 + 2);
  }

  if (v46 < a5 && *v43 == *v46)
  {
    LODWORD(v46) = v46 + 1;
  }

  LODWORD(v49) = v46 - v38;
LABEL_49:
  v50 = (v49 + 3);
  if (v36 >= v50)
  {
LABEL_56:
    v10 = 0;
    goto LABEL_57;
  }

  v10 = 1;
  *a1 = 1;
  a1[1] = v50;
  v51 = v50 > v20 || a4 + v50 == a5;
  v36 = v50;
  if (v51)
  {
    return v10;
  }

LABEL_57:
  if (a7 == 2)
  {
    v52 = *a6 - 1;
  }

  else
  {
    v52 = a6[a7 + 1];
  }

  if (v52 - 1 >= v37)
  {
    v53 = 0;
    goto LABEL_83;
  }

  v53 = 0;
  if (v19 - v52 >= v33)
  {
    v54 = (a4 - v52);
    if (((*v54 ^ *a4) & 0xFFFFFF) == 0)
    {
      v55 = &v38[-v52];
      if (v40 <= v38)
      {
        v57 = (a4 + 3);
      }

      else
      {
        if (*v55 != *v38)
        {
          v60 = __clz(__rbit64(*v38 ^ *v55)) >> 3;
LABEL_82:
          v53 = v60 + 3;
          goto LABEL_83;
        }

        v55 = v54 + 11;
        v56 = a4 + 11;
        while (1)
        {
          v57 = v56;
          if (v56 >= v40)
          {
            break;
          }

          v59 = *v55;
          v55 += 8;
          v58 = v59;
          v56 += 8;
          if (v59 != *v57)
          {
            v60 = v57 + (__clz(__rbit64(*v57 ^ v58)) >> 3) - v38;
            goto LABEL_82;
          }
        }
      }

      if (v57 < v114 && *v55 == *v57)
      {
        v55 += 4;
        v57 = (v57 + 4);
      }

      if (v57 < v115 && *v55 == *v57)
      {
        v55 += 2;
        v57 = (v57 + 2);
      }

      if (v57 < a5 && *v55 == *v57)
      {
        LODWORD(v57) = v57 + 1;
      }

      LODWORD(v60) = v57 - v38;
      goto LABEL_82;
    }
  }

LABEL_83:
  v61 = v53;
  if (v36 >= v53)
  {
    v61 = v36;
  }

  else
  {
    v62 = &a1[2 * v10];
    *v62 = 2;
    v62[1] = v53;
    v10 = (v10 + 1);
    if (v53 > v20 || a4 + v53 == a5)
    {
      return v10;
    }
  }

  if (a7 == 1)
  {
    v64 = *a6 - 1;
  }

  else
  {
    v64 = a6[a7 + 2];
  }

  if (v64 - 1 >= v37)
  {
    v65 = 0;
    goto LABEL_117;
  }

  v65 = 0;
  if (v19 - v64 >= v33)
  {
    v66 = (a4 - v64);
    if (((*v66 ^ *a4) & 0xFFFFFF) == 0)
    {
      v67 = &v38[-v64];
      if (v40 <= v38)
      {
        v69 = (a4 + 3);
      }

      else
      {
        if (*v67 != *v38)
        {
          v72 = __clz(__rbit64(*v38 ^ *v67)) >> 3;
LABEL_116:
          v65 = v72 + 3;
          goto LABEL_117;
        }

        v67 = v66 + 11;
        v68 = a4 + 11;
        while (1)
        {
          v69 = v68;
          if (v68 >= v40)
          {
            break;
          }

          v71 = *v67;
          v67 += 8;
          v70 = v71;
          v68 += 8;
          if (v71 != *v69)
          {
            v72 = v69 + (__clz(__rbit64(*v69 ^ v70)) >> 3) - v38;
            goto LABEL_116;
          }
        }
      }

      if (v69 < v114 && *v67 == *v69)
      {
        v67 += 4;
        v69 = (v69 + 4);
      }

      if (v69 < v115 && *v67 == *v69)
      {
        v67 += 2;
        v69 = (v69 + 2);
      }

      if (v69 < a5 && *v67 == *v69)
      {
        LODWORD(v69) = v69 + 1;
      }

      LODWORD(v72) = v69 - v38;
      goto LABEL_116;
    }
  }

LABEL_117:
  v36 = v65;
  if (v61 >= v65)
  {
    v36 = v61;
    if (v61 > 2)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v73 = &a1[2 * v10];
    *v73 = 3;
    v73[1] = v65;
    v10 = (v10 + 1);
    if (v65 > v20 || a4 + v65 == a5)
    {
      return v10;
    }

    if (v65 > 2uLL)
    {
      goto LABEL_158;
    }
  }

LABEL_123:
  v75 = *(a2 + 120);
  v76 = *a3;
  v77 = *a4;
  v78 = 32 - *(a2 + 48);
  if (v76 < v19)
  {
    do
    {
      *(v75 + 4 * ((900185344 * *(v8 + v76)) >> v78)) = v76;
      ++v76;
    }

    while (v116 != v76);
  }

  *a3 = v19;
  v79 = *(v75 + 4 * ((900185344 * v77) >> v78));
  v80 = v19 - v79;
  if (v79 < v34 || (v19 - v79) >> 18 != 0)
  {
    goto LABEL_158;
  }

  v82 = (v8 + v79);
  if (a5 - 7 <= a4)
  {
    v84 = a4;
    goto LABEL_140;
  }

  if (*v82 == *a4)
  {
    v82 = (v79 + v8 + 8);
    v83 = (a4 + 2);
    while (1)
    {
      v84 = v83;
      if (v83 >= (a5 - 7))
      {
        break;
      }

      v86 = *v82;
      v82 += 4;
      v85 = v86;
      v83 += 8;
      if (v86 != *v84)
      {
        v87 = &v84[__clz(__rbit64(*v84 ^ v85)) >> 3] - a4;
        if (v87 >= 3)
        {
          goto LABEL_152;
        }

        goto LABEL_158;
      }
    }

LABEL_140:
    if (v84 < a5 - 3 && *v82 == *v84)
    {
      v82 += 2;
      v84 += 4;
    }

    if (v84 < a5 - 1 && *v82 == *v84)
    {
      ++v82;
      v84 += 2;
    }

    if (v84 < a5 && *v82 == *v84)
    {
      ++v84;
    }

    v87 = v84 - a4;
    if ((v84 - a4) < 3)
    {
      goto LABEL_158;
    }

LABEL_152:
    *a1 = v80 + 3;
    a1[1] = v87;
    if (v87 > v20 || a4 + v87 == a5)
    {
      v89 = v19 + 1;
      v10 = 1;
      goto LABEL_160;
    }

    v10 = 1;
    v36 = v87;
    goto LABEL_158;
  }

  v87 = __clz(__rbit64(*a4 ^ *v82)) >> 3;
  if (v87 >= 3)
  {
    goto LABEL_152;
  }

LABEL_158:
  v90 = (v25 + 8 * (v19 & ~v26));
  v91 = v90 + 1;
  v92 = v19 + 9;
  *(v21 + 4 * v23) = v19;
  if (v24 < v34)
  {
    goto LABEL_159;
  }

  v94 = 0;
  v95 = 0;
  v96 = 1 << v35;
  v97 = a5 - 7;
  v98 = a5 - 3;
  v99 = v19 + 3;
  while (1)
  {
    if (v94 >= v95)
    {
      v100 = v95;
    }

    else
    {
      v100 = v94;
    }

    v101 = v8 + v24;
    v102 = a4 + v100;
    v103 = (v101 + v100);
    if (v97 <= a4 + v100)
    {
      v106 = a4 + v100;
      if (v102 >= v98)
      {
        goto LABEL_175;
      }

LABEL_173:
      if (*v103 == *v106)
      {
        ++v103;
        v106 += 4;
      }

      goto LABEL_175;
    }

    if (*v103 != *v102)
    {
      v109 = __clz(__rbit64(*v102 ^ *v103)) >> 3;
      goto LABEL_185;
    }

    v104 = v8 + 8 + v24;
    v105 = a4;
    while (1)
    {
      v106 = v105 + v100 + 8;
      if (v106 >= v97)
      {
        break;
      }

      v107 = *(v104 + v100);
      v108 = *v106;
      v104 += 8;
      v105 += 2;
      if (v107 != v108)
      {
        v109 = v105 + (__clz(__rbit64(v108 ^ v107)) >> 3) - a4;
        goto LABEL_185;
      }
    }

    v103 = (v104 + v100);
    if (v106 < v98)
    {
      goto LABEL_173;
    }

LABEL_175:
    if (v106 < a5 - 1)
    {
      if (*v103 == *v106)
      {
        v103 = (v103 + 2);
        v106 += 2;
      }

      if (v106 >= a5)
      {
        goto LABEL_183;
      }

LABEL_181:
      if (*v103 == *v106)
      {
        ++v106;
      }

      goto LABEL_183;
    }

    if (v106 < a5)
    {
      goto LABEL_181;
    }

LABEL_183:
    v109 = v106 - v102;
LABEL_185:
    v110 = v109 + v100;
    if (v110 > v36)
    {
      if (v110 > v92 - v24)
      {
        v92 = v24 + v110;
      }

      v111 = &a1[2 * v10];
      *v111 = v99 - v24;
      v111[1] = v110;
      v10 = (v10 + 1);
      v112 = v110 > 0x1000 || a4 + v110 == a5;
      v36 = v110;
      if (v112)
      {
        goto LABEL_159;
      }
    }

    v113 = (v25 + 8 * (v24 & v27));
    if (*(v101 + v110) < *(a4 + v110))
    {
      break;
    }

    *v91 = v24;
    if (v24 <= v118)
    {
      v91 = &v119;
      goto LABEL_159;
    }

    v91 = (v25 + 8 * (v24 & v27));
    v95 = v110;
LABEL_197:
    if (--v96)
    {
      v24 = *v113;
      if (*v113 >= v34)
      {
        continue;
      }
    }

    goto LABEL_159;
  }

  *v90 = v24;
  if (v24 > v118)
  {
    v90 = v113 + 1;
    v94 = v110;
    ++v113;
    goto LABEL_197;
  }

  v90 = &v119;
LABEL_159:
  *v91 = 0;
  *v90 = 0;
  v89 = v92 - 8;
LABEL_160:
  *(a2 + 44) = v89;
  return v10;
}

int64_t ZSTD_compressBlock_opt2(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4, uint64_t a5, unsigned int a6)
{
  v8 = a1;
  v316 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 272);
  v10 = v9 - 6;
  v290 = v9;
  v11 = v9 >= 3;
  v12 = v9 - 3;
  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  v306 = v14;
  if (v10 >= 0xFFFFFFFD)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v299 = *(&off_1EEFDB430[4 * a6] + v15);
  v300 = a4;
  v301 = &a4[a5];
  v302 = &a4[a5 - 8];
  v16 = (*(a1 + 8) + *(a1 + 24));
  if (*(a1 + 276) >= 0xFFFu)
  {
    v17 = 4095;
  }

  else
  {
    v17 = *(a1 + 276);
  }

  v293 = v17;
  v311 = *(a1 + 44);
  v19 = *(a1 + 176);
  v18 = *(a1 + 184);
  v310 = 0;
  v308 = 0u;
  v309 = 0u;
  v307 = 0u;
  v314 = 0;
  v315 = 0;
  v20 = *(a1 + 288);
  if (v20)
  {
    v21 = v20[1];
    v307 = *v20;
    v308 = v21;
    *&v309 = *(v20 + 4);
  }

  else
  {
    *&v309 = 0;
    v307 = 0uLL;
    v308 = 0uLL;
  }

  LODWORD(v310) = 0;
  *(&v309 + 1) = 0;
  ZSTD_opt_getNextMatchAndUpdateSeqStore(&v307, 0, a5);
  ZSTD_rescaleFreqs((v8 + 144), v300, a5, 2);
  if (v16 == v300)
  {
    v22 = v300 + 1;
  }

  else
  {
    v22 = v300;
  }

  if (v22 < v302)
  {
    v292 = 0;
    v291 = a2;
    v23 = (v18 + 10);
    v24 = v300;
    v304 = v8;
    v305 = v19;
    while (1)
    {
      v295 = v24;
      v297 = v22 - v24;
      v29 = v19;
      v30 = v19;
      v31 = v22;
      LODWORD(v312) = v299(v29, v8, &v311);
      v32 = v30;
      ZSTD_optLdm_processMatchCandidate(&v307, v30, &v312, v31 - v300, v301 - v31);
      v33 = v312;
      if (!v312)
      {
        v22 = v31 + 1;
        v24 = v295;
        v19 = v32;
        goto LABEL_22;
      }

      v303 = v31;
      v34 = v297;
      v18[2] = 0;
      v18[3] = v297;
      if (*(v8 + 224) == 1)
      {
        v35 = __clz(v297 + 1);
        v36 = ((v297 + 1) << 8 >> ~v35) + ((31 - v35) << 8);
        v37 = v30;
      }

      else
      {
        v37 = v30;
        if (v297 == 0x20000)
        {
          v38 = *(*(v8 + 152) + 140) + 1;
          v39 = __clz(v38);
          v36 = *(v8 + 212) + (v39 << 8) - (v38 << 8 >> ~v39) - 3584;
        }

        else
        {
          if (v297 < 0x40)
          {
            v40 = ZSTD_LLcode_LL_Code_36107[v297 & 0x3F];
          }

          else
          {
            v40 = 50 - __clz(v297);
          }

          v41 = LL_bits_36216[v40];
          v42 = *(*(v8 + 152) + 4 * v40) + 1;
          v43 = __clz(v42);
          v36 = *(v8 + 212) - (v42 << 8 >> ~v43) + ((v43 + v41) << 8) - 7936;
        }
      }

      *v18 = v36;
      v45 = *a3;
      v18[6] = *(a3 + 2);
      *(v18 + 2) = v45;
      v44 = (v37 + 8 * (v33 - 1));
      LODWORD(v45) = v44[1];
      if (v45 > v293)
      {
        v46 = 0;
        v47 = *v44;
        goto LABEL_185;
      }

      v18[7] = 0x40000000;
      v18[14] = 0x40000000;
      v18[9] = 0;
      v18[10] = v297 + 1;
      v18[16] = 0;
      v18[17] = v297 + 2;
      if (v290 != 3)
      {
        v48 = v303 - v295 + 3;
        v49 = v18 + 24;
        v50 = v306 - 3;
        do
        {
          *(v49 - 1) = 0;
          *v49 = v48++;
          *(v49 - 3) = 0x40000000;
          v49 += 7;
          --v50;
        }

        while (v50);
      }

      v51 = 0;
      v52 = v306;
      do
      {
        v53 = (v37 + 8 * v51);
        v54 = v53[1];
        if (v52 <= v54)
        {
          v55 = *v53;
          v56 = __clz(v55);
          v57 = 31 - v56;
          if (*(v8 + 224) == 1)
          {
            v58 = (v52 << 8) - 512;
            do
            {
              v59 = __clz(v52 - 2);
              v60 = *v18;
              v61 = &v18[7 * v52];
              v61[2] = v52;
              v61[3] = 0;
              *v61 = (v58 >> ~v59) + ((31 - v59 + v57) << 8) + v60 + 4352;
              v61[1] = v55;
              ++v52;
              v58 += 256;
            }

            while (v52 <= v54);
          }

          else
          {
            v62 = *(v8 + 216);
            v63 = *(v8 + 160);
            v64 = *(v8 + 168);
            v65 = *(v8 + 220) + 51;
            v66 = *(v8 + 152);
            v67 = *(v8 + 212) - 7936;
            do
            {
              v78 = v52 - 3;
              if (v52 - 3 < 0x80)
              {
                v68 = ZSTD_MLcode_ML_Code_36109[v78];
              }

              else
              {
                v68 = 67 - __clz(v78);
              }

              v69 = *(v64 + 4 * v57) + 1;
              v70 = __clz(v69);
              v71 = ML_bits_36218[v68];
              v72 = *(v63 + 4 * v68) + 1;
              v73 = __clz(v72);
              v74 = v65 - (v69 << 8 >> ~v70) + v62 + *v18 - (v72 << 8 >> ~v73) + ((v70 - v56 + v71 + v73 + 16777185) << 8);
              v75 = &v18[7 * v52];
              v75[1] = v55;
              v75[2] = v52;
              v75[3] = 0;
              v76 = *v66 + 1;
              v77 = __clz(v76);
              *v75 = v67 + (v77 << 8) - (v76 << 8 >> ~v77) + v74;
              ++v52;
            }

            while (v52 <= v54);
          }
        }

        ++v51;
      }

      while (v51 != v33);
      v18[7 * v52] = 0x40000000;
      LODWORD(v79) = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_176;
      }

      v46 = 1;
      v80 = v303;
      while (1)
      {
        v81 = &v80[v46];
        v82 = &v18[7 * v46 - 7];
        v83 = v82[3];
        v84 = v83 + 1;
        v85 = *v82;
        v86 = *(v304 + 224);
        if (*(v304 + 240) == 2)
        {
          v87 = v85 + 2048;
          if (v86 == 1)
          {
            goto LABEL_62;
          }

          if (v83 == 0x1FFFF)
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v86 == 1)
          {
            v87 = v85 + 1536;
LABEL_62:
            v99 = __clz(v83 + 2);
            v92 = (((v83 + 2) << 8) >> ~v99) + ((31 - v99) << 8);
            v100 = __clz(v84);
            v98 = (v84 << 8 >> ~v100) + ((31 - v100) << 8);
            goto LABEL_63;
          }

          v117 = *(v304 + 208);
          v118 = v117 - 256;
          v119 = *(*(v304 + 144) + 4 * *(v81 - 1)) + 1;
          v120 = __clz(v119);
          v121 = (v119 << 8 >> ~v120) + ((31 - v120) << 8);
          v122 = v117 - v121;
          if (v121 > v118)
          {
            v122 = 256;
          }

          v87 = v122 + v85;
          if (v83 == 0x1FFFF)
          {
LABEL_57:
            v88 = *(v304 + 212);
            v89 = *(v304 + 152);
            v90 = *(v89 + 140) + 1;
            v91 = __clz(v90);
            v92 = v88 + (v91 << 8) - (v90 << 8 >> ~v91) - 3584;
            v93 = v88 - 7936;
            goto LABEL_58;
          }
        }

        if (v84 < 0x40)
        {
          v123 = ZSTD_LLcode_LL_Code_36107[v84];
        }

        else
        {
          v123 = 50 - __clz(v84);
        }

        v124 = LL_bits_36216[v123];
        v125 = *(v304 + 212);
        v89 = *(v304 + 152);
        v126 = *(v89 + 4 * v123) + 1;
        v127 = __clz(v126);
        v128 = v126 << 8 >> ~v127;
        v129 = v127 + v124;
        v93 = v125 - 7936;
        v92 = v125 - 7936 - v128 + (v129 << 8);
        if (v83 != 0x20000)
        {
          if (v83 >= 0x40)
          {
LABEL_58:
            v94 = 50 - __clz(v83);
          }

          else
          {
            v94 = ZSTD_LLcode_LL_Code_36107[v83];
          }

          v95 = LL_bits_36216[v94];
          v96 = *(v89 + 4 * v94) + 1;
          v97 = __clz(v96);
          v98 = v93 - (v96 << 8 >> ~v97) + ((v97 + v95) << 8);
          goto LABEL_63;
        }

        v130 = *(v89 + 140) + 1;
        v131 = __clz(v130);
        v98 = v125 + (v131 << 8) - (v130 << 8 >> ~v131) - 3584;
LABEL_63:
        v101 = v87 + v92 - v98;
        v102 = &v18[7 * v46];
        v103 = *v102;
        if (v101 > *v102)
        {
          v84 = v102[3];
          v101 = *v102;
          goto LABEL_114;
        }

        v104 = v102[1];
        v105 = v102[2];
        v106 = v102[3];
        *(v102 + 3) = *(v82 + 3);
        *v102 = *v82;
        v102[3] = v84;
        *v102 = v101;
        if (!v106 && *(v304 + 224) != 1)
        {
          v107 = *(v304 + 212);
          v108 = *(v304 + 152);
          v109 = v107 - 7936;
          v110 = vadd_s32(*v108, 0x100000001);
          v111 = vclz_s32(v110);
          v112 = vshl_u32(vshl_n_s32(v110, 8uLL), vsub_s32(v111, 0x1F0000001FLL));
          v113 = vsub_s32(vadd_s32(vdup_n_s32(v107 - 7936), vshl_n_s32(v111, 8uLL)), v112);
          if ((vcgt_s32(v113, vdup_lane_s32(v113, 1)).u32[0] & 1) != 0 && v81 < v301)
          {
            if (*(v304 + 240) == 2)
            {
              v114 = vsub_s32(vdup_lane_s32(v111, 1), v111).u32[0];
              v115 = v103 + 2048;
              v116 = 2048;
            }

            else
            {
              v132 = *(v304 + 208);
              v133 = v132 - 256;
              v134 = *(*(v304 + 144) + 4 * *v81) + 1;
              v135 = __clz(v134);
              v136 = (v134 << 8 >> ~v135) + ((31 - v135) << 8);
              v116 = v132 - v136;
              if (v136 > v133)
              {
                v116 = 256;
              }

              v114 = vsub_s32(vdup_lane_s32(v111, 1), v111).u32[0];
              v115 = v116 + v103;
            }

            v137 = v83 + 2;
            if (v137 == 0x20000)
            {
              v138 = v108[17].i32[1] + 1;
              v139 = __clz(v138);
              v140 = v107 + (v139 << 8) - (v138 << 8 >> ~v139) - 3584;
              goto LABEL_86;
            }

            if (v137 < 0x40)
            {
              v146 = ZSTD_LLcode_LL_Code_36107[v137];
            }

            else
            {
              v146 = 50 - __clz(v137);
            }

            v147 = LL_bits_36216[v146];
            v148 = v108->i32[v146] + 1;
            v149 = __clz(v148);
            v140 = v109 - (v148 << 8 >> ~v149) + ((v149 + v147) << 8);
            if (v84 == 0x20000)
            {
              v150 = v108[17].i32[1] + 1;
              v151 = __clz(v150);
              v145 = (v150 << 8 >> ~v151) - (v107 + (v151 << 8)) + 3584;
            }

            else
            {
              if (v84 >= 0x40)
              {
LABEL_86:
                v141 = 50 - __clz(v84);
              }

              else
              {
                v141 = ZSTD_LLcode_LL_Code_36107[v84];
              }

              v142 = LL_bits_36216[v141];
              v143 = v108->i32[v141] + 1;
              v144 = __clz(v143);
              v145 = (v143 << 8 >> ~v144) - (v109 + ((v144 + v142) << 8));
            }

            v152 = v115 - v112.i32[1] + v112.i32[0] + (v114 << 8);
            if (v152 >= v116 + v101 + v140 + v145)
            {
              goto LABEL_114;
            }

            v153 = &v18[7 * v46 + 7];
            if (v152 >= *v153)
            {
              goto LABEL_114;
            }

            v154 = &v18[7 * (v46 - v105)];
            v155 = v154[3];
            v312 = *(v154 + 2);
            v313 = v154[6];
            if (v104 >= 4)
            {
              v156 = HIDWORD(v312);
              HIDWORD(v312) = v312;
              v157 = v104 - 3;
              goto LABEL_111;
            }

            if (v155)
            {
              v158 = v104;
            }

            else
            {
              v158 = v104 + 1;
            }

            v159 = v158 - 1;
            if (v159 == 3)
            {
              v160 = v312;
              v157 = v312 - 1;
            }

            else
            {
              if (!v159)
              {
                v156 = v313;
                goto LABEL_112;
              }

              v157 = *(&v312 + v159);
              v160 = v312;
            }

            if (v159 == 1)
            {
              v161 = &v313;
            }

            else
            {
              v161 = &v312 + 1;
            }

            v156 = *v161;
            HIDWORD(v312) = v160;
LABEL_111:
            LODWORD(v312) = v157;
LABEL_112:
            *(v153 + 2) = v312;
            v153[6] = v156;
            v153[2] = v105;
            v153[3] = 1;
            *v153 = v152;
            v153[1] = v104;
            if (v79 <= v46 + 1)
            {
              LODWORD(v79) = v46 + 1;
            }
          }
        }

LABEL_114:
        if (!v84)
        {
          v162 = v102[1];
          v163 = &v18[7 * (v46 - v102[2])];
          v164 = v163[3];
          v312 = *(v163 + 2);
          v313 = v163[6];
          if (v162 >= 4)
          {
            v165 = HIDWORD(v312);
            HIDWORD(v312) = v312;
            v166 = v162 - 3;
            goto LABEL_128;
          }

          if (!v164)
          {
            ++v162;
          }

          v167 = v162 - 1;
          if (v162 == 4)
          {
            v168 = v312;
            v166 = v312 - 1;
          }

          else
          {
            if (v162 == 1)
            {
              v165 = v313;
              goto LABEL_129;
            }

            v166 = *(&v312 + v167);
            v168 = v312;
          }

          if (v167 == 1)
          {
            v169 = &v313;
          }

          else
          {
            v169 = &v312 + 1;
          }

          v165 = *v169;
          HIDWORD(v312) = v168;
LABEL_128:
          LODWORD(v312) = v166;
LABEL_129:
          *(v102 + 2) = v312;
          v102[6] = v165;
        }

        if (v81 <= v302)
        {
          if (v46 == v79)
          {
            LODWORD(v79) = v46;
LABEL_176:
            v217 = &v18[7 * v79];
            v47 = v217[1];
            v292 = *v217;
            LODWORD(v45) = v217[2];
            v218 = v217[3];
            v219 = v217[6];
            v221 = *(v217 + 2);
            v220 = (v217 + 4);
            v314 = v221;
            v315 = v219;
            if (!v45)
            {
              v175 = v79;
              goto LABEL_180;
            }

            v222 = v79 - v45;
            if (v218)
            {
              v223 = *v220;
              *(a3 + 2) = *(v220 + 2);
              *a3 = v223;
              v224 = v222 - v218;
              v225 = v224 + 2;
              v226 = &v18[7 * (v224 + 2)];
              v226[2] = 0;
              v226[3] = v218;
              v227 = &v18[7 * (v224 + 1)];
              *v227 = v292;
              v227[1] = v47;
              v227[2] = v45;
              v227[3] = v218;
              *(v227 + 2) = v314;
              v227[6] = v315;
              v46 = v222 - v218;
              v228 = v301 - 32;
              v24 = v295;
LABEL_201:
              v236 = &v18[7 * v225];
              *v236 = v292;
              v236[1] = v47;
              v236[2] = v45;
              v236[3] = v218;
              *(v236 + 2) = v314;
              v236[6] = v315;
              v237 = &v18[7 * v224];
              v238 = *v237;
              v239 = v237[2];
              v240 = v237[3];
              v236[3] = v240;
              v241 = v225;
              if (v239)
              {
                v241 = v225;
                do
                {
                  v242 = &v18[7 * v224];
                  v243 = &v18[7 * --v241];
                  *v243 = v238;
                  v243[2] = v239;
                  v243[3] = v240;
                  v244 = v242[6];
                  *(v243 + 2) = *(v242 + 2);
                  v243[6] = v244;
                  v224 = v46 - (v239 + v240);
                  v245 = &v18[7 * v224];
                  v238 = *v245;
                  v239 = v245[2];
                  v240 = v245[3];
                  v243[3] = v240;
                  v46 = v224;
                }

                while (v239);
                if (v241 > v225)
                {
                  v8 = v304;
                  v19 = v305;
                  v246 = v303;
LABEL_206:
                  v22 = v246;
                  if (*(v8 + 240) != 2)
                  {
                    v247 = *(v8 + 192) + 1;
                    v248 = __clz(v247);
                    *(v8 + 208) = (v247 << 8 >> ~v248) + ((31 - v248) << 8);
                  }

                  v25 = *(v8 + 204) + 1;
                  v26 = __clz(v25);
                  v27 = vadd_s32(*(v8 + 196), 0x100000001);
                  v28 = vsub_s32(0x1F0000001FLL, vclz_s32(v27));
                  *(v8 + 212) = vadd_s32(vshl_n_s32(v28, 8uLL), vshl_u32(vshl_n_s32(v27, 8uLL), vneg_s32(v28)));
                  *(v8 + 220) = (v25 << 8 >> ~v26) + ((31 - v26) << 8);
                  goto LABEL_22;
                }
              }

              v8 = v304;
              v19 = v305;
              while (2)
              {
                v249 = &v18[7 * v241];
                v251 = v249[2];
                v250 = v249[3];
                if (v251)
                {
                  v252 = v249[1];
                  if (*(v304 + 240) != 2)
                  {
                    if (v250)
                    {
                      v253 = *(v304 + 144);
                      v254 = v24;
                      v255 = v250;
                      do
                      {
                        v256 = *v254++;
                        *(v253 + 4 * v256) += 2;
                        --v255;
                      }

                      while (v255);
                    }

                    *(v304 + 192) += 2 * v250;
                  }

                  if (v250 < 0x40)
                  {
                    v257 = ZSTD_LLcode_LL_Code_36107[v250];
                  }

                  else
                  {
                    v257 = 50 - __clz(v250);
                  }

                  ++*(*(v304 + 152) + 4 * v257);
                  ++*(v304 + 196);
                  v258 = __clz(v252);
                  ++*(*(v304 + 168) + 4 * (31 - v258));
                  ++*(v304 + 204);
                  v259 = v251 - 3;
                  if ((v251 - 3) < 0x80)
                  {
                    v260 = ZSTD_MLcode_ML_Code_36109[v259];
                  }

                  else
                  {
                    v260 = 67 - __clz(v259);
                  }

                  ++*(*(v304 + 160) + 4 * v260);
                  ++*(v304 + 200);
                  v261 = &v24[v250];
                  v262 = *(v291 + 24);
                  if (&v24[v250] <= v228)
                  {
                    *v262 = *v24;
                    if (v250 >= 0x11)
                    {
                      v265 = *(v291 + 24);
                      *(v265 + 16) = *(v24 + 1);
                      if ((v250 - 16) >= 0x11)
                      {
                        v272 = v265 + v250;
                        v273 = (v265 + 32);
                        v274 = (v24 + 48);
                        do
                        {
                          *v273 = *(v274 - 1);
                          v275 = *v274;
                          v274 += 2;
                          v273[1] = v275;
                          v273 += 2;
                        }

                        while (v273 < v272);
                        goto LABEL_254;
                      }
                    }

                    *(v291 + 24) += v250;
                    v266 = *(v291 + 8);
                  }

                  else
                  {
                    if (v24 > v228)
                    {
                      v263 = v24;
                      v264 = *(v291 + 24);
                      if (v24 >= v261)
                      {
                        goto LABEL_254;
                      }

LABEL_235:
                      v270 = v261 - v263;
                      if ((v261 - v263) < 8)
                      {
                        v276 = v264;
                      }

                      else if ((v264 - v263) < 0x20)
                      {
                        v276 = v264;
                      }

                      else
                      {
                        if (v270 < 0x20)
                        {
                          v271 = 0;
                          goto LABEL_248;
                        }

                        v271 = v270 & 0xFFFFFFFFFFFFFFE0;
                        v277 = (v263 + 16);
                        v278 = v264 + 16;
                        v279 = v270 & 0xFFFFFFFFFFFFFFE0;
                        do
                        {
                          v280 = *v277;
                          *(v278 - 1) = *(v277 - 1);
                          *v278 = v280;
                          v277 += 2;
                          v278 += 2;
                          v279 -= 32;
                        }

                        while (v279);
                        if (v270 == v271)
                        {
                          goto LABEL_254;
                        }

                        if ((v270 & 0x18) != 0)
                        {
LABEL_248:
                          v281 = v270 & 0xFFFFFFFFFFFFFFF8;
                          v276 = &v264[v270 & 0xFFFFFFFFFFFFFFF8];
                          v282 = v271 - (v270 & 0xFFFFFFFFFFFFFFF8);
                          v283 = &v263[v271];
                          v284 = &v264[v271];
                          do
                          {
                            v285 = *v283++;
                            *v284 = v285;
                            v284 += 8;
                            v282 += 8;
                          }

                          while (v282);
                          if (v270 == v281)
                          {
                            goto LABEL_254;
                          }

                          v263 += v281;
                        }

                        else
                        {
                          v263 += v271;
                          v276 = &v264[v271];
                        }
                      }

                      do
                      {
                        v286 = *v263++;
                        *v276++ = v286;
                      }

                      while (v263 != v261);
                      goto LABEL_254;
                    }

                    v264 = v262 + v228 - v24;
                    *v262 = *v24;
                    if (v228 - v24 >= 17)
                    {
                      v267 = (v262 + 1);
                      v268 = (v24 + 32);
                      do
                      {
                        *v267 = *(v268 - 1);
                        v269 = *v268;
                        v268 += 2;
                        *(v267 + 1) = v269;
                        v267 += 32;
                      }

                      while (v267 < v264);
                    }

                    v263 = v228;
                    if (v228 < v261)
                    {
                      goto LABEL_235;
                    }

LABEL_254:
                    *(v291 + 24) += v250;
                    v266 = *(v291 + 8);
                    if (v250 >= 0x10000)
                    {
                      v287 = (v266 - *v291) >> 3;
                      *(v291 + 72) = 1;
                      *(v291 + 76) = v287;
                    }
                  }

                  *(v266 + 4) = v250;
                  *v266 = v252;
                  if ((v251 - 3) >= 0x10000)
                  {
                    v288 = (v266 - *v291) >> 3;
                    *(v291 + 72) = 2;
                    *(v291 + 76) = v288;
                  }

                  *(v266 + 6) = v251 - 3;
                  *(v291 + 8) = v266 + 8;
                  v24 += (v251 + v250);
                  v246 = v24;
                }

                else
                {
                  v246 = &v24[v250];
                }

                if (++v241 > v225)
                {
                  goto LABEL_206;
                }

                continue;
              }
            }

            v46 = v79 - v45;
LABEL_184:
            v34 = v18[7 * v222 + 3];
LABEL_185:
            v229 = &v18[7 * v46];
            v312 = *(v229 + 2);
            v313 = v229[6];
            if (v47 >= 4)
            {
              v230 = HIDWORD(v312);
              HIDWORD(v312) = v312;
              v231 = v47 - 3;
              v228 = v301 - 32;
              v24 = v295;
              goto LABEL_199;
            }

            if (v34)
            {
              v232 = v47;
            }

            else
            {
              v232 = v47 + 1;
            }

            v233 = v232 - 1;
            if (v232 == 4)
            {
              v234 = v312;
              v231 = v312 - 1;
              v228 = v301 - 32;
              v24 = v295;
            }

            else
            {
              v228 = v301 - 32;
              v24 = v295;
              if (v232 == 1)
              {
                v230 = v313;
                goto LABEL_200;
              }

              v231 = *(&v312 + v233);
              v234 = v312;
            }

            if (v233 == 1)
            {
              v235 = &v313;
            }

            else
            {
              v235 = &v312 + 1;
            }

            v230 = *v235;
            HIDWORD(v312) = v234;
LABEL_199:
            LODWORD(v312) = v231;
LABEL_200:
            v218 = 0;
            v224 = v46;
            *a3 = v312;
            *(a3 + 2) = v230;
            v225 = v46 + 2;
            goto LABEL_201;
          }

          v298 = v101;
          if (*(v304 + 224) == 1)
          {
            v170 = 256;
          }

          else
          {
            v171 = **(v304 + 152) + 1;
            v172 = __clz(v171);
            v170 = *(v304 + 212) + (v172 << 8) - (v171 << 8 >> ~v172) - 7936;
          }

          v296 = v170;
          LODWORD(v312) = (v299)(v305);
          ZSTD_optLdm_processMatchCandidate(&v307, v305, &v312, v81 - v300, v301 - v81);
          v173 = v312;
          if (v312)
          {
            break;
          }
        }

LABEL_53:
        ++v46;
        v80 = v303;
        if (v46 > v79)
        {
          goto LABEL_176;
        }
      }

      v174 = (v312 - 1);
      v45 = *(v305 + 8 * v174 + 4);
      v175 = v45 + v46;
      if (v45 <= v293 && v175 <= 0xFFF && &v81[v45] < v301)
      {
        v176 = 0;
        v177 = v296 + v298;
        while (1)
        {
          v178 = (v305 + 8 * v176);
          v179 = v306;
          if (v176)
          {
            v179 = *(v178 - 1) + 1;
          }

          v180 = v178[1];
          if (v180 >= v179)
          {
            break;
          }

LABEL_140:
          if (++v176 == v173)
          {
            v18[7 * (v79 + 1)] = 0x40000000;
            goto LABEL_53;
          }
        }

        v181 = *v178;
        v182 = __clz(v181);
        v183 = 31 - v182;
        if (*(v304 + 224) == 1)
        {
          v184 = 0;
          v185 = v46 + v180;
          v186 = v46 + v180;
          while (1)
          {
            v188 = v180 + v46;
            v189 = __clz(v180 - 2);
            v190 = ((v180 - 2) << 8 >> ~v189) + ((31 - v189 + v183) << 8) + v177 + 4096;
            if (v188 <= v79)
            {
              if (v190 >= v18[7 * v188])
              {
                goto LABEL_147;
              }
            }

            else
            {
              v79 = v79;
              v191 = v185 - v184 - v79;
              if (v191 <= 1)
              {
                goto LABEL_153;
              }

              v192 = v191 & 0xFFFFFFFFFFFFFFFELL;
              v193 = (v186 - v79) & 0xFFFFFFFFFFFFFFFELL;
              v194 = &v23[7 * v79];
              do
              {
                *(v194 - 3) = 0x40000000;
                v194[4] = 0x40000000;
                *v194 = 1;
                v194[7] = 1;
                v194 += 14;
                v193 -= 2;
              }

              while (v193);
              v79 = v192 + v79;
              if (v191 != v192)
              {
LABEL_153:
                v195 = &v23[7 * v79];
                do
                {
                  ++v79;
                  *(v195 - 3) = 0x40000000;
                  *v195 = 1;
                  v195 += 7;
                }

                while (v79 < v188);
              }
            }

            v187 = &v18[7 * v188];
            v187[2] = v180;
            v187[3] = 0;
            *v187 = v190;
            v187[1] = v181;
LABEL_147:
            --v180;
            ++v184;
            --v186;
            if (v180 < v179)
            {
              goto LABEL_140;
            }
          }
        }

        v196 = 0;
        v197 = *(v304 + 160);
        v198 = *(v304 + 168);
        v199 = *(v304 + 220) + *(v304 + 216) + 51;
        v200 = v46 + v180;
        v201 = v46 + v180;
        while (2)
        {
          v203 = v180 - 3;
          if (v180 - 3 < 0x80)
          {
            v204 = ZSTD_MLcode_ML_Code_36109[v203];
          }

          else
          {
            v204 = 67 - __clz(v203);
          }

          v205 = v180 + v46;
          v206 = *(v198 + 4 * v183) + 1;
          v207 = __clz(v206);
          v208 = ML_bits_36218[v204];
          v209 = *(v197 + 4 * v204) + 1;
          v210 = __clz(v209);
          v211 = v177 + v199 - (v206 << 8 >> ~v207) - (v209 << 8 >> ~v210) + ((v207 - v182 + v208 + v210 + 16777185) << 8);
          if (v205 <= v79)
          {
            if (v211 < v18[7 * v205])
            {
              goto LABEL_159;
            }
          }

          else
          {
            v79 = v79;
            v212 = v200 - v196 - v79;
            if (v212 < 2)
            {
              goto LABEL_169;
            }

            v213 = v212 & 0xFFFFFFFFFFFFFFFELL;
            v214 = (v201 - v79) & 0xFFFFFFFFFFFFFFFELL;
            v215 = &v23[7 * v79];
            do
            {
              *(v215 - 3) = 0x40000000;
              v215[4] = 0x40000000;
              *v215 = 1;
              v215[7] = 1;
              v215 += 14;
              v214 -= 2;
            }

            while (v214);
            v79 = v213 + v79;
            if (v212 != v213)
            {
LABEL_169:
              v216 = &v23[7 * v79];
              do
              {
                ++v79;
                *(v216 - 3) = 0x40000000;
                *v216 = 1;
                v216 += 7;
              }

              while (v79 < v205);
            }

LABEL_159:
            v202 = &v18[7 * v205];
            v202[2] = v180;
            v202[3] = 0;
            *v202 = v211;
            v202[1] = v181;
          }

          --v180;
          ++v196;
          --v201;
          if (v180 < v179)
          {
            goto LABEL_140;
          }

          continue;
        }
      }

      if (v45)
      {
        v47 = *(v305 + 8 * v174);
        v222 = v46;
        goto LABEL_184;
      }

LABEL_180:
      v8 = v304;
      v19 = v305;
      v24 = v295;
      v22 = &v303[v175];
LABEL_22:
      if (v22 >= v302)
      {
        v300 = v24;
        return v301 - v300;
      }
    }
  }

  return v301 - v300;
}