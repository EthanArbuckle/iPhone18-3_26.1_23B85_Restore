uint64_t sub_1E5473A18(uint64_t a1, _DWORD *a2, int a3, int a4, int a5, char a6, uint64_t a7)
{
  v37 = *MEMORY[0x1E69E9840];
  sub_1E5475640(a2, v32, &v30);
  if (!v33)
  {
    return 0;
  }

  *&v13 = v32[0];
  *(&v13 + 1) = *(&v32[1] + 4);
  *v36 = v13;
  v35 = v30;
  if (!sub_1E5474CC0(v36, &v35, v34.f64))
  {
    return 0;
  }

  v14 = sub_1E53DCDBC(16, v33);
  sub_1E53DCE08(v14);
  v16 = v15;
  v17 = sub_1E53DCDBC(16, v31);
  v18 = sub_1E53DCDBC(16, v16 * v17);
  v19 = a5 >> 1;
  v20 = vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_n_f64(v34, (1 << ((a5 >> 1) + 4)))))), 0x700000007), 0x700000007);
  v21 = vcge_s32(vdup_n_s32(64 << (a5 >> 1)), vabs_s32(v20));
  if ((v21.i32[0] & v21.i32[1] & 1) == 0)
  {
    return 0;
  }

  v22 = llround(v18 * 4.0);
  if (v22 <= -15)
  {
    v22 = -15;
  }

  if (v22 >= 15)
  {
    v22 = 15;
  }

  v23 = v20.i32[0] >> v19;
  v24 = v30.i32[0];
  v25 = v30.i32[1] * (v20.i32[1] >> v19) + 4 * v22 * v31;
  v26 = a2[13];
  v27 = v19 + 6;
  *a7 = v20.i32[0] + (a3 << v27);
  *(a7 + 4) = v20.i32[1] + (a4 << v27);
  *(a7 + 8) = v22 + 16 * a5;
  *(a7 + 12) = 0;
  *(a7 + 20) = a5 - 1;
  *(a7 + 24) = a6;
  *(a7 + 25) = 0;
  v28 = v26 + ((32 - (v25 + v24 * v23)) >> 6);
  *(a7 + 27) = 0;
  if (v28 < 0)
  {
    v28 = -v28;
  }

  *(a7 + 28) = v28;
  *(a7 + 32) = 0;
  *(a7 + 36) = a3;
  *(a7 + 40) = a4;
  *(a7 + 44) = 0u;
  *(a7 + 60) = 0u;
  *(a7 + 76) = 0u;
  *(a7 + 92) = 0u;
  *(a7 + 108) = 0u;
  *(a7 + 124) = 0;
  return 1;
}

void sub_1E5473C54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v145 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = (a2 + 48);
  v9 = *(a1 + 8);
  v9[17] = 0;
  v9[18] = 0;
  v10 = v9[1];
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v9[19] = v10 - 1;
  v11 = v9[20];
  v12 = v9[21] - v11;
  if (v12 >= 1)
  {
    bzero(v11, v12);
  }

  v9[23] = 0;
  v9[24] = 0;
  v13 = *v9;
  if (*v9)
  {
    v14 = v9[25];
    if (v13 == 1)
    {
      v15 = 0;
LABEL_11:
      v19 = v13 - v15;
      v20 = (v14 + 24 * v15 + 8);
      do
      {
        *v20 = *(v20 - 1);
        v20 += 3;
        --v19;
      }

      while (v19);
      goto LABEL_13;
    }

    v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
    v16 = (v14 + 24);
    v17 = v13 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v18 = *v16;
      *(v16 - 2) = *(v16 - 3);
      v16[1] = v18;
      v16 += 6;
      v17 -= 2;
    }

    while (v17);
    if (v13 != v15)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v21 = v9[28];
  v22 = v9[29] - v21;
  if (v22 >= 1)
  {
    bzero(v21, v22);
  }

  v23 = *(a6 + 8) - *a6;
  if (v23 > 0)
  {
    bzero(*a6, v23);
  }

  v24 = *(a6 + 24);
  v25 = *(a6 + 32) - v24;
  if (v25 >= 1)
  {
    bzero(v24, v25);
  }

  v26 = *(a6 + 48);
  v27 = *(a6 + 56) - v26;
  if (v27 >= 1)
  {
    bzero(v26, v27);
  }

  v28 = *(a6 + 72);
  v29 = *(a6 + 80) - v28;
  if (v29 >= 1)
  {
    bzero(v28, v29);
  }

  v30 = v7 - v6;
  v31 = *(a6 + 96);
  v32 = *(a6 + 104) - v31;
  if (v32 >= 1)
  {
    bzero(v31, v32);
  }

  v33 = v30 >> 4;
  v34 = *(a6 + 120);
  v35 = *(a6 + 128) - v34;
  if (v35 >= 1)
  {
    bzero(v34, v35);
  }

  v36 = 954437177 * v33;
  v37 = *(a6 + 144);
  v38 = *(a6 + 152) - v37;
  if (v38 >= 1)
  {
    bzero(v37, v38);
  }

  v126 = v8;
  v39 = *(a6 + 168);
  v40 = *(a6 + 176) - v39;
  if (v40 >= 1)
  {
    bzero(v39, v40);
  }

  if (v36 > 2)
  {
    v118 = (v36 - 1);
    v41 = 1;
    while (1)
    {
      v42 = v41 - 1;
      v43 = (*a3 + 24 * (v41 - 1));
      v44 = v43[1] - *v43;
      if (v44)
      {
        break;
      }

LABEL_33:
      if (++v41 == v118)
      {
        return;
      }
    }

    v45 = 0;
    v121 = *(a5 + 8 * v42);
    v46 = 0xCCCCCCCCCCCCCCCDLL * (v44 >> 2);
    v124 = v41 - 1;
    v125 = &v136[18 * (v41 & 1)];
    v123 = (a6 + 24 * v42);
    v117 = (v41 >> 1) + 6;
    v47 = vdup_n_s32(64 << (v41 >> 1));
    if (v46 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v46;
    }

    while (1)
    {
      v51 = *v43 + 20 * v45;
      v52 = *(*(a1 + 8) + 200);
      v53 = *v51;
      v54 = *(v51 + 4);
      v55 = *(v51 + 8);
      v56 = *(v51 + 12);
      v57 = *(v51 + 16);
      if (v41 != v55 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefiner.cpp", 133, "scale == kp_scale && scale mismatch", 37, &unk_1E549A011, 0, sub_1E548FDE0))
      {
LABEL_103:
        abort();
      }

      v58 = v53 >> (v55 >> 1);
      if (v58 < 1)
      {
        goto LABEL_41;
      }

      v59 = v54 >> (v55 >> 1);
      v60 = *v126 + 144 * v41;
      v61 = v59 < 1 || *(v60 + 32) - 1 <= v58;
      if (v61 || *(v60 + 48) - 1 <= v59)
      {
        goto LABEL_41;
      }

      v63 = *(*(*(v60 + 120) + 8 * v59) + 2 * v58);
      sub_1E5474F64(v58, v59, v41, v126, v136);
      if (v137 != v63 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefiner.cpp", 57, "score == res_map_cube[1][1][1] && score mismatch", 50, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        goto LABEL_103;
      }

      v65 = *v125;
      v64 = v125[1];
      v66 = v125[2].i32[0];
      v67 = vmovl_s16(vdup_n_s16(v63));
      if (v56)
      {
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v67, v65), vcgeq_s32(v67, v64)))) & 1) != 0 || v66 <= v63)
        {
          goto LABEL_41;
        }
      }

      else if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgeq_s32(v65, v67), vcgeq_s32(v64, v67)))) & 1) != 0 || v66 >= v63)
      {
        goto LABEL_41;
      }

      if (v57 >= 0)
      {
        v68 = v57;
      }

      else
      {
        v68 = -v57;
      }

      v69 = v68 >> 5;
      if (v68 >> 5 >= 0x3F)
      {
        v69 = 63;
      }

      v70 = *(*v123 + 4 * v69);
      if (v70 <= 0xFFE)
      {
        *(*v123 + 4 * v69) = v70 + 1;
      }

      if (*(a4 + 8 * v124) > v68 || v121 <= (*(v52 + 24 * v124 + 8) - *(v52 + 24 * v124)) >> 7)
      {
        goto LABEL_41;
      }

      sub_1E5475640(v136, v140, &v138);
      if (v141 && (*&v71 = v140[0], *(&v71 + 1) = *(&v140[1] + 4), *v144 = v71, v143 = v138, sub_1E5474CC0(v144, &v143, v142.f64)) && (v72 = sub_1E53DCDBC(16, v141), sub_1E53DCE08(v72), v74 = v73, v75 = sub_1E53DCDBC(16, v139), v76 = sub_1E53DCDBC(16, v74 * v75), v77 = vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vmulq_n_f64(v142, (16 << (v41 >> 1)))))), 0x700000007), 0x700000007), v78 = vcge_s32(v47, vabs_s32(v77)), (v78.i32[0] & v78.i32[1] & 1) != 0))
      {
        v79 = llround(v76 * 4.0);
        if (v79 <= -15)
        {
          v79 = -15;
        }

        if (v79 >= 15)
        {
          v79 = 15;
        }

        v115 = v77.i32[0] + (v58 << v117);
        v114 = v77.i32[1] + (v59 << v117);
        v113 = v79 + 16 * v41;
        v128 = 0;
        v129 = 0;
        v130 = 0u;
        v131 = 0u;
        v80 = v137 + ((32 - (v138.i32[1] * (v77.i32[1] >> (v41 >> 1)) + 4 * v79 * v139 + v138.i32[0] * (v77.i32[0] >> (v41 >> 1)))) >> 6);
        if (v80 < 0)
        {
          v80 = -v80;
        }

        v111 = v58;
        v112 = v80;
        v132 = 0uLL;
        v133 = 0uLL;
        v81 = 1;
        v134 = 0uLL;
        v135 = 0;
        v109 = v56;
        v110 = v59;
        v108 = v41 - 1;
        v82 = *(a1 + 8);
        v83 = v41 - 1;
        if (v82[24] < v124)
        {
LABEL_85:
          v82[24] = v83;
          v95 = v82[20];
          v96 = v82[21] - v95;
          if (v96 >= 1)
          {
            bzero(v95, v96);
          }

          v84 = 0;
          v82[23] = 0;
          v82[18] = 0;
          v82[19] = 0;
          v82[17] = 0;
          v85 = v59;
          if (v59)
          {
LABEL_80:
            v86 = v82[17];
            v87 = v82[18];
            v89 = v82[19];
            v88 = v82[20];
            v82[23] = v84 + 1;
            v82[18] = v87 + v86;
            v82[19] = v89 + 1;
            *(v88 + 8 * v89) = v86;
            v90 = v82[18];
            v91 = v82[19] % v82[v124 + 1];
            v82[19] = v91;
            v82[17] = 0;
            v92 = v90 - *(v88 + 8 * v91);
            v82[18] = v92;
            for (i = v82[23]; i < v85; i = v82[23])
            {
              v82[23] = i + 1;
              v82[18] = v92;
              v82[19] = v91 + 1;
              *(v88 + 8 * v91) = 0;
              v94 = v82[18];
              v91 = v82[19] % v82[v124 + 1];
              v82[19] = v91;
              v82[17] = 0;
              v92 = v94 - *(v88 + 8 * v91);
              v82[18] = v92;
            }

            v50 = 0;
            if (v92 >= v82[v124 + 9])
            {
              goto LABEL_41;
            }

LABEL_89:
            if (v81)
            {
              v97 = v82[25] + 24 * v124;
              v98 = *(v97 + 8);
              v99 = *(v97 + 16);
              if (v98 < v99)
              {
                *v98 = v115;
                *(v98 + 4) = v114;
                *(v98 + 8) = v113;
                *(v98 + 12) = 0;
                *(v98 + 20) = v108;
                *(v98 + 24) = v109;
                *(v98 + 25) = v128;
                *(v98 + 27) = v129;
                *(v98 + 28) = v112;
                *(v98 + 36) = v111;
                *(v98 + 40) = v110;
                *(v98 + 60) = v131;
                *(v98 + 44) = v130;
                *(v98 + 124) = v135;
                *(v98 + 108) = v134;
                *(v98 + 92) = v133;
                v49 = v98 + 128;
                *(v98 + 76) = v132;
              }

              else
              {
                v100 = *v97;
                v101 = v98 - *v97;
                v102 = v101 >> 7;
                v103 = (v101 >> 7) + 1;
                if (v103 >> 57)
                {
                  sub_1E5415338();
                }

                v104 = v99 - v100;
                if (v104 >> 6 > v103)
                {
                  v103 = v104 >> 6;
                }

                if (v104 >= 0x7FFFFFFFFFFFFF80)
                {
                  v105 = 0x1FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v105 = v103;
                }

                if (v105)
                {
                  if (!(v105 >> 57))
                  {
                    operator new();
                  }

                  sub_1E53E5340();
                }

                v106 = v102 << 7;
                *v106 = v115;
                *(v106 + 4) = v114;
                *(v106 + 8) = v113;
                *(v106 + 12) = 0;
                *(v106 + 20) = v108;
                *(v106 + 24) = v109;
                *(v106 + 25) = v128;
                *(v106 + 27) = v129;
                *(v106 + 28) = v112;
                *(v106 + 36) = v111;
                *(v106 + 40) = v110;
                *(v106 + 60) = v131;
                *(v106 + 44) = v130;
                *(v106 + 124) = v135;
                v49 = (v102 << 7) + 128;
                *(v106 + 108) = v134;
                *(v106 + 92) = v133;
                v107 = (v106 - (v101 >> 7 << 7));
                *(v106 + 76) = v132;
                memcpy(v107, v100, v101);
                *v97 = v107;
                *(v97 + 8) = v49;
                *(v97 + 16) = 0;
                if (v100)
                {
                  operator delete(v100);
                }
              }

              *(v97 + 8) = v49;
              v50 = v82[17];
            }

            v82[17] = v50 + 1;
            ++*(v82[28] + 8 * v124);
            goto LABEL_41;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v81 = 0;
        v82 = *(a1 + 8);
        v83 = v41 - 1;
        if (v82[24] < v124)
        {
          goto LABEL_85;
        }
      }

      v84 = v82[23];
      v85 = v59;
      if (v84 < v59)
      {
        goto LABEL_80;
      }

LABEL_88:
      v50 = v82[17];
      if ((v82[18] + v50) < v82[v124 + 9])
      {
        goto LABEL_89;
      }

LABEL_41:
      if (++v45 == v48)
      {
        goto LABEL_33;
      }
    }
  }
}

void *sub_1E54745FC(void *a1)
{
  *a1 = &unk_1F5F0A268;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    sub_1E545F9EC((a1 + 1), v3);
  }

  return a1;
}

void sub_1E5474660(void *a1)
{
  *a1 = &unk_1F5F0A268;
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    sub_1E545F9EC((a1 + 1), v3);
  }

  JUMPOUT(0x1E6928650);
}

char *sub_1E54746E4(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - result) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

uint64_t sub_1E5474894(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  *a1 = 8;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  *(a1 + 56) = a2[3];
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  *(a1 + 120) = a3[3];
  *(a1 + 104) = v11;
  *(a1 + 88) = v10;
  *(a1 + 72) = v9;
  v12 = a4 - 2;
  *a1 = a4 - 2;
  v13 = *a2;
  v14 = *(a2 + 1);
  if (*a2 <= v14)
  {
    v13 = *(a2 + 1);
  }

  v15 = 8 * (*a2 < v14);
  v16 = *(a2 + 2);
  v17 = *(a2 + 3);
  v18 = v13 >= v16;
  if (v13 <= v16)
  {
    v13 = *(a2 + 2);
  }

  if (!v18)
  {
    v15 = 16;
  }

  v19 = v13 >= v17;
  if (v13 <= v17)
  {
    v13 = *(a2 + 3);
  }

  if (!v19)
  {
    v15 = 24;
  }

  v20 = *(a2 + 4);
  v21 = *(a2 + 5);
  v22 = v13 >= v20;
  if (v13 <= v20)
  {
    v13 = *(a2 + 4);
  }

  if (!v22)
  {
    v15 = 32;
  }

  v23 = v13 >= v21;
  if (v13 <= v21)
  {
    v13 = *(a2 + 5);
  }

  if (!v23)
  {
    v15 = 40;
  }

  v24 = *(a2 + 6);
  v25 = v13 >= v24;
  if (v13 <= v24)
  {
    v13 = *(a2 + 6);
  }

  if (!v25)
  {
    v15 = 48;
  }

  v18 = v13 >= *(a2 + 7);
  v26 = 56;
  if (v18)
  {
    v26 = v15;
  }

  v27 = *(a2 + v26);
  v40 = 0;
  if (v27)
  {
    sub_1E5474AF0(a1 + 160, v27, &v40);
    v12 = *a1;
    v29 = *(a1 + 200);
    v28 = *(a1 + 208);
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v30 = *(a1 + 8);
  if (v30 <= 1)
  {
    v30 = 1;
  }

  *(a1 + 152) = v30 - 1;
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3);
  if (v12 <= v31)
  {
    if (v12 < v31)
    {
      v32 = v29 + 24 * v12;
      if (v28 != v32)
      {
        v33 = v28;
        do
        {
          v35 = *(v33 - 24);
          v33 -= 24;
          v34 = v35;
          if (v35)
          {
            *(v28 - 16) = v34;
            operator delete(v34);
          }

          v28 = v33;
        }

        while (v33 != v32);
      }

      *(a1 + 208) = v32;
    }
  }

  else
  {
    sub_1E545CE48(v5, v12 - v31);
  }

  v36 = *a1;
  v40 = 0;
  v37 = *(a1 + 224);
  v38 = (*(a1 + 232) - v37) >> 3;
  if (v36 > v38)
  {
    sub_1E5474AF0(a1 + 224, v36 - v38, &v40);
    return a1;
  }

  if (v36 >= v38)
  {
    return a1;
  }

  *(a1 + 232) = v37 + 8 * v36;
  return a1;
}

void sub_1E5474A9C(_Unwind_Exception *a1)
{
  v4 = v1[28];
  if (v4)
  {
    v1[29] = v4;
    operator delete(v4);
    sub_1E541B3D8(v2);
    v5 = v1[20];
    if (!v5)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1E541B3D8(v2);
    v5 = v1[20];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[21] = v5;
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_1E5474AF0(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = &v5[a2];
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_33;
      }

      v13 = v12 + 1;
      v14 = &v5[v13 & 0x3FFFFFFFFFFFFFFCLL];
      v15 = vdupq_n_s64(v11);
      v16 = (v5 + 2);
      v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      v5 = v14;
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v5++ = v11;
        }

        while (v5 != v10);
      }

      v5 = v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      sub_1E5415338();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v18 = 8 * v6;
    v19 = 8 * v6 + 8 * a2;
    v20 = *a3;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v22 = (8 * v6);
    if (v21 < 3)
    {
      goto LABEL_34;
    }

    v23 = v21 + 1;
    v22 = (v18 + 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL));
    v24 = vdupq_n_s64(v20);
    v25 = (v18 + 16);
    v26 = v23 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v22++ = v20;
      }

      while (v22 != v19);
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v18 - v28;
    memcpy((v18 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

BOOL sub_1E5474CC0(int *a1, int *a2, double *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3] * *a1;
  if (v8 + 0x40000000 < 0 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 48, "i1 < (1 << 30) && i1 >= -(1 << 30) && It is expected that a11*a22 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_16;
  }

  v9 = v7 * v6;
  if (v9 + 0x40000000 < 0)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 49, "i2 < (1 << 30) && i2 >= -(1 << 30) && It is expected that a12*a21 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_16;
    }
  }

  if (v8 != v9)
  {
    v10 = sub_1E53DCDBC(16, (v8 - v9));
    sub_1E53DCE08(v10);
    v12 = v11;
    v13 = a1[1];
    v14 = a2[1];
    v15 = a1[3] * *a2;
    if (v15 + 0x40000000 >= 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 48, "i1 < (1 << 30) && i1 >= -(1 << 30) && It is expected that a11*a22 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      v16 = v14 * v13;
      if (v16 + 0x40000000 >= 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 49, "i2 < (1 << 30) && i2 >= -(1 << 30) && It is expected that a12*a21 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
      {
        v17 = sub_1E53DCDBC(16, (v15 - v16));
        v18 = *a1;
        v19 = a1[2];
        v20 = *a2;
        v21 = a2[1] * v18;
        if (v21 + 0x40000000 >= 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 48, "i1 < (1 << 30) && i1 >= -(1 << 30) && It is expected that a11*a22 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          v22 = v19 * v20;
          if (v22 + 0x40000000 >= 0 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KPValidatorAndRefinerUtils.cpp", 49, "i2 < (1 << 30) && i2 >= -(1 << 30) && It is expected that a12*a21 is s31", 74, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            v23 = sub_1E53DCDBC(16, (v21 - v22));
            *a3 = sub_1E53DCDBC(16, v12 * v17);
            a3[1] = sub_1E53DCDBC(16, v12 * v23);
            return v8 != v9;
          }
        }
      }
    }

LABEL_16:
    abort();
  }

  return v8 != v9;
}

uint64_t sub_1E5474F64(int a1, int a2, int a3, void *a4, _DWORD *a5)
{
  v5 = *a4 + 144 * a3;
  v6 = *(v5 - 56);
  v7 = *(v5 + 88);
  v8 = *(v5 + 232);
  v9 = *(v5 + 40);
  v10 = a1 - 1;
  v11 = a2 - 1;
  if ((a3 & 1) == 0)
  {
    v12 = *(v5 - 104);
    v13 = *(v5 - 112) - 1;
    v14 = *(v5 - 96) - 1;
    v15 = 2 * v11;
    if (v14 < v15)
    {
      v15 = v14;
    }

    v16 = v15 * v12;
    v17 = 2 * v10;
    if (v13 < v17)
    {
      v17 = v13;
    }

    v18 = v6 + 2 * v17;
    v19 = *(v18 + 2 * v16);
    v20 = v11 * v9;
    v21 = *(v7 + 2 * (v20 + v10));
    v22 = *(v8 + 2 * (v20 + v10));
    v23 = 2 * a2;
    if (v14 < v23)
    {
      v23 = v14;
    }

    v24 = v23 * v12;
    v25 = *(v18 + 2 * v24);
    v26 = v9 * a2;
    v27 = *(v7 + 2 * (v9 * a2 + v10));
    v28 = *(v8 + 2 * (v9 * a2 + v10));
    v29 = a2 + 1;
    if (v14 >= 2 * v29)
    {
      v14 = 2 * v29;
    }

    v30 = v14 * v12;
    v31 = *(v18 + 2 * v30);
    v32 = v29 * v9;
    v33 = *(v7 + 2 * (v32 + v10));
    v34 = *(v8 + 2 * (v32 + v10));
    v35 = 2 * a1;
    if (v13 < v35)
    {
      v35 = v13;
    }

    v36 = v6 + 2 * v35;
    v37 = *(v36 + 2 * v16);
    *a5 = v19;
    a5[1] = v37;
    v38 = *(v7 + 2 * (v20 + a1));
    v39 = *(v8 + 2 * (v20 + a1));
    a5[18] = v22;
    a5[19] = v39;
    v40 = *(v36 + 2 * v24);
    v41 = *(v7 + 2 * (v26 + a1));
    v42 = *(v8 + 2 * (v26 + a1));
    a5[12] = v27;
    a5[13] = v41;
    LODWORD(v36) = *(v36 + 2 * v30);
    a5[6] = v31;
    a5[7] = v36;
    v43 = v32 + a1;
    result = (a1 + 1);
    if (v13 >= 2 * result)
    {
      v13 = 2 * result;
    }

    v45 = *(v7 + 2 * v43);
    v46 = v6 + 2 * v13;
    v47 = *(v8 + 2 * v43);
    v48 = *(v46 + 2 * v16);
    a5[24] = v34;
    a5[25] = v47;
    a5[2] = v48;
    a5[3] = v25;
    v49 = *(v7 + 2 * (v20 + result));
    a5[10] = v38;
    a5[11] = v49;
    a5[20] = *(v8 + 2 * (v20 + result));
    a5[21] = v28;
    v50 = *(v46 + 2 * v24);
    v51 = *(v7 + 2 * (v26 + result));
    a5[4] = v40;
    a5[5] = v50;
    a5[14] = v51;
    a5[15] = v33;
    v52 = *(v8 + 2 * (v26 + result));
    a5[22] = v42;
    a5[23] = v52;
    a5[8] = *(v46 + 2 * v30);
    a5[9] = v21;
    v53 = *(v7 + 2 * (v32 + result));
    a5[16] = v45;
    a5[17] = v53;
    v54 = *(v8 + 2 * (v32 + result));
    goto LABEL_121;
  }

  v55 = *(v5 + 184);
  v56 = *(v5 + 176) - 1;
  v57 = *(v5 + 192) - 1;
  v58 = v11 * v9;
  v59 = v11 >> 1;
  if (v57 < v11 >> 1)
  {
    v59 = v57;
  }

  if (v57 >= v59 + 1)
  {
    v60 = v59 + 1;
  }

  else
  {
    v60 = v57;
  }

  v61 = v8 + 2 * v59 * v55;
  v62 = v8 + 2 * v60 * v55;
  v63 = v9 * a2;
  v64 = a2 & 1;
  v65 = a2 >> 1;
  if (v57 < a2 >> 1)
  {
    v65 = v57;
  }

  if (v57 >= v65 + 1)
  {
    v66 = v65 + 1;
  }

  else
  {
    v66 = v57;
  }

  v67 = v65 * v55;
  v68 = v66 * v55;
  v69 = a2 + 1;
  if (v57 >= (a2 + 1) >> 1)
  {
    v70 = (a2 + 1) >> 1;
  }

  else
  {
    v70 = v57;
  }

  if (v57 >= v70 + 1)
  {
    v71 = v70 + 1;
  }

  else
  {
    v71 = v57;
  }

  v72 = v10 & 1;
  v73 = v10 >> 1;
  if (v56 < v10 >> 1)
  {
    v73 = v56;
  }

  if (v56 >= v73 + 1)
  {
    v74 = v73 + 1;
  }

  else
  {
    v74 = v56;
  }

  *a5 = *(v6 + 2 * (v10 + v58));
  a5[9] = *(v7 + 2 * (v10 + v58));
  if ((v72 & v11) != 0)
  {
    v75 = (*(v61 + 2 * v73) + *(v61 + 2 * v74) + *(v62 + 2 * v73) + *(v62 + 2 * v74) + 2) >> 2;
    goto LABEL_45;
  }

  if (v11 & 1) == 0 && (v10)
  {
    v75 = *(v61 + 2 * v73);
    v76 = *(v61 + 2 * v74);
LABEL_44:
    v75 = (v75 + v76 + 1) >> 1;
    goto LABEL_45;
  }

  v75 = *(v61 + 2 * v73);
  if ((v11 & 1) != 0 && (v10 & 1) == 0)
  {
    v76 = *(v62 + 2 * v73);
    goto LABEL_44;
  }

LABEL_45:
  v77 = v70 * v55;
  v78 = v71 * v55;
  v79 = v8 + 2 * v67;
  v80 = v8 + 2 * v68;
  v81 = v69 * v9;
  v82 = *(v6 + 2 * (v10 + v63));
  a5[18] = v75;
  a5[3] = v82;
  a5[12] = *(v7 + 2 * (v10 + v63));
  if ((v72 & a2) != 0)
  {
    v83 = (*(v79 + 2 * v73) + *(v79 + 2 * v74) + *(v80 + 2 * v73) + *(v80 + 2 * v74) + 2) >> 2;
    goto LABEL_54;
  }

  if (a2 & 1) == 0 && (v10)
  {
    v84 = *(v79 + 2 * v73) + *(v79 + 2 * v74);
LABEL_53:
    v83 = (v84 + 1) >> 1;
    goto LABEL_54;
  }

  v83 = *(v79 + 2 * v73);
  if ((a2 & 1) != 0 && (v10 & 1) == 0)
  {
    v84 = v83 + *(v80 + 2 * v73);
    goto LABEL_53;
  }

LABEL_54:
  v85 = v8 + 2 * v77;
  v86 = v8 + 2 * v78;
  v87 = *(v6 + 2 * (v10 + v81));
  a5[21] = v83;
  a5[6] = v87;
  a5[15] = *(v7 + 2 * (v10 + v81));
  if ((v72 & v69) != 0)
  {
    v88 = (*(v85 + 2 * v73) + *(v85 + 2 * v74) + *(v86 + 2 * v73) + *(v86 + 2 * v74) + 2) >> 2;
    goto LABEL_61;
  }

  if ((v64 & v10) != 0)
  {
    v88 = *(v85 + 2 * v73);
    v89 = *(v85 + 2 * v74);
  }

  else
  {
    v90 = v10 | a2;
    v88 = *(v85 + 2 * v73);
    if (v90)
    {
      goto LABEL_61;
    }

    v89 = *(v86 + 2 * v73);
  }

  v88 = (v88 + v89 + 1) >> 1;
LABEL_61:
  a5[24] = v88;
  v91 = a1 & 1;
  v92 = a1 >> 1;
  if (v56 < a1 >> 1)
  {
    v92 = v56;
  }

  if (v56 >= v92 + 1)
  {
    v93 = v92 + 1;
  }

  else
  {
    v93 = v56;
  }

  a5[1] = *(v6 + 2 * (v58 + a1));
  a5[10] = *(v7 + 2 * (v58 + a1));
  if ((v91 & v11) != 0)
  {
    v94 = (*(v61 + 2 * v92) + *(v61 + 2 * v93) + *(v62 + 2 * v92) + *(v62 + 2 * v93) + 2) >> 2;
    goto LABEL_75;
  }

  if (v11 & 1) == 0 && (a1)
  {
    v94 = *(v61 + 2 * v92);
    v95 = *(v61 + 2 * v93);
LABEL_74:
    v94 = (v94 + v95 + 1) >> 1;
    goto LABEL_75;
  }

  v94 = *(v61 + 2 * v92);
  if ((v11 & 1) != 0 && (a1 & 1) == 0)
  {
    v95 = *(v62 + 2 * v92);
    goto LABEL_74;
  }

LABEL_75:
  v96 = *(v6 + 2 * (v63 + a1));
  a5[19] = v94;
  a5[4] = v96;
  a5[13] = *(v7 + 2 * (v63 + a1));
  if ((v91 & a2) != 0)
  {
    v97 = (*(v79 + 2 * v92) + *(v79 + 2 * v93) + *(v80 + 2 * v92) + *(v80 + 2 * v93) + 2) >> 2;
    goto LABEL_84;
  }

  if (a2 & 1) == 0 && (a1)
  {
    v97 = *(v79 + 2 * v92);
    v98 = *(v79 + 2 * v93);
LABEL_83:
    v97 = (v97 + v98 + 1) >> 1;
    goto LABEL_84;
  }

  v97 = *(v79 + 2 * v92);
  if ((a2 & 1) != 0 && (a1 & 1) == 0)
  {
    v98 = *(v80 + 2 * v92);
    goto LABEL_83;
  }

LABEL_84:
  v99 = *(v6 + 2 * (v81 + a1));
  a5[22] = v97;
  a5[7] = v99;
  a5[16] = *(v7 + 2 * (v81 + a1));
  if ((v91 & v69) != 0)
  {
    v100 = (*(v85 + 2 * v92) + *(v85 + 2 * v93) + *(v86 + 2 * v92) + *(v86 + 2 * v93) + 2) >> 2;
    goto LABEL_91;
  }

  if ((v64 & a1) != 0)
  {
    v101 = *(v85 + 2 * v92) + *(v85 + 2 * v93);
  }

  else
  {
    v100 = *(v85 + 2 * v92);
    if ((a1 | a2))
    {
      goto LABEL_91;
    }

    v101 = v100 + *(v86 + 2 * v92);
  }

  v100 = (v101 + 1) >> 1;
LABEL_91:
  a5[25] = v100;
  v102 = a1 + 1;
  v103 = (a1 + 1) & 1;
  LODWORD(result) = (a1 + 1) >> 1;
  if (v56 >= result)
  {
    result = result;
  }

  else
  {
    result = v56;
  }

  v104 = v102 + v58;
  if (v56 >= result + 1)
  {
    v56 = result + 1;
  }

  a5[2] = *(v6 + 2 * v104);
  a5[11] = *(v7 + 2 * v104);
  if ((v103 & v11) != 0)
  {
    v105 = (*(v61 + 2 * result) + *(v61 + 2 * v56) + *(v62 + 2 * result) + *(v62 + 2 * v56) + 2) >> 2;
    goto LABEL_105;
  }

  if ((v11 & 1) == 0 && v103)
  {
    v106 = *(v61 + 2 * result) + *(v61 + 2 * v56);
LABEL_104:
    v105 = (v106 + 1) >> 1;
    goto LABEL_105;
  }

  v105 = *(v61 + 2 * result);
  if ((v11 & 1) != 0 && !v103)
  {
    v106 = v105 + *(v62 + 2 * result);
    goto LABEL_104;
  }

LABEL_105:
  v107 = v102 + v63;
  v108 = *(v6 + 2 * v107);
  a5[20] = v105;
  a5[5] = v108;
  a5[14] = *(v7 + 2 * v107);
  if ((v103 & a2) != 0)
  {
    v109 = (*(v79 + 2 * result) + *(v79 + 2 * v56) + *(v80 + 2 * result) + *(v80 + 2 * v56) + 2) >> 2;
  }

  else
  {
    if ((a2 & 1) != 0 || !v103)
    {
      v109 = *(v79 + 2 * result);
      if ((a2 & 1) == 0 || v103)
      {
        goto LABEL_114;
      }

      v110 = *(v80 + 2 * result);
    }

    else
    {
      v109 = *(v79 + 2 * result);
      v110 = *(v79 + 2 * v56);
    }

    v109 = (v109 + v110 + 1) >> 1;
  }

LABEL_114:
  v111 = *(v6 + 2 * (v102 + v81));
  a5[23] = v109;
  a5[8] = v111;
  a5[17] = *(v7 + 2 * (v102 + v81));
  if ((v103 & v69) == 0)
  {
    if ((v64 & v102) != 0)
    {
      v54 = *(v85 + 2 * result);
      v112 = *(v85 + 2 * v56);
    }

    else
    {
      v54 = *(v85 + 2 * result);
      if ((v102 | a2))
      {
        goto LABEL_121;
      }

      v112 = *(v86 + 2 * result);
    }

    v54 = (v54 + v112 + 1) >> 1;
    goto LABEL_121;
  }

  v54 = (*(v85 + 2 * result) + *(v85 + 2 * v56) + *(v86 + 2 * result) + *(v86 + 2 * v56) + 2) >> 2;
LABEL_121:
  a5[26] = v54;
  return result;
}

double sub_1E5475640(_DWORD *a1, uint64_t a2, int32x2_t *a3)
{
  a3->i32[0] = (a1[14] - a1[12] + 1) >> 1;
  a3->i32[1] = (a1[16] - a1[10] + 1) >> 1;
  a3[1].i32[0] = (a1[22] - a1[4] + 1) >> 1;
  *a2 = (a1[14] + a1[12] - 2 * a1[13] + 2) >> 2;
  *(a2 + 16) = (a1[16] + a1[10] - 2 * a1[13] + 2) >> 2;
  *(a2 + 32) = (a1[4] + a1[22] - 2 * a1[13] + 2) >> 2;
  v3 = (a2 + 4);
  *(a2 + 4) = (a1[9] + a1[17] - (a1[11] + a1[15]) + 8) >> 4;
  *(a2 + 24) = (a1[3] + a1[23] - (a1[5] + a1[21]) + 8) >> 4;
  *(a2 + 20) = (a1[1] + a1[25] - (a1[7] + a1[19]) + 8) >> 4;
  *a3 = vneg_s32(vmin_s32(vmax_s32(*a3, 0x7F0000007FLL), 0x7F0000007FLL));
  v4 = a3[1].i32[0];
  if (v4 <= -32768)
  {
    v4 = -32768;
  }

  if (v4 >= 0x7FFF)
  {
    v4 = 0x7FFF;
  }

  a3[1].i32[0] = -v4;
  v5 = *a2;
  if (*a2 <= -32768)
  {
    v5 = -32768;
  }

  if (v5 >= 0x7FFF)
  {
    v5 = 0x7FFF;
  }

  *a2 = v5;
  v6 = *(a2 + 32);
  if (v6 <= -32768)
  {
    v6 = -32768;
  }

  if (v6 >= 0x7FFF)
  {
    v6 = 0x7FFF;
  }

  v7.i32[0] = *(a2 + 24);
  v7.i32[1] = *v3;
  v7.i64[1] = *(a2 + 16);
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v9 = vmaxq_s32(v7, v8);
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v10 = vminq_s32(v9, v7);
  *v3 = v10.i32[1];
  *(a2 + 32) = v6;
  *(a2 + 8) = v10;
  v10.i32[1] = vextq_s8(v10, v10, 8uLL).i32[1];
  *(a2 + 24) = v10.i64[0];
  return *v10.i64;
}

void sub_1E5475808(uint64_t a1, __int128 *a2)
{
  *a1 = 2;
  *(a1 + 4) = 0;
  *(a1 + 8) = vdupq_n_s64(0x280uLL);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1886221359;
  __dst = (a1 + 32);
  *(a1 + 55) = 261;
  *(a1 + 36) = 47;
  *(a1 + 60) = 0x90000002DLL;
  *(a1 + 72) = 5000;
  *(a1 + 80) = 1;
  *(a1 + 84) = 1061997773;
  *(a1 + 88) = 0;
  *(a1 + 96) = vdupq_n_s64(1uLL);
  *(a1 + 112) = 5;
  *(a1 + 120) = 256;
  *(a1 + 224) = 0;
  *(a1 + 228) = xmmword_1E5491B50;
  *(a1 + 244) = xmmword_1E5491B60;
  *(a1 + 292) = 0x3E4CCCCD00004000;
  *(a1 + 260) = xmmword_1E5492F48;
  *(a1 + 276) = unk_1E5492F58;
  *(a1 + 304) = 0;
  *(a1 + 312) = sub_1E5477D40;
  *(a1 + 320) = 5;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = a1 + 656;
  *(a1 + 656) = 0u;
  *(a1 + 672) = xmmword_1E5492E20;
  v3 = (a1 + 688);
  v4 = (a1 + 712);
  v5 = (a1 + 736);
  v6 = (a1 + 864);
  *(a1 + 880) = 0;
  *(a1 + 864) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 745) = 0u;
  v7 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v7;
  v94 = (a1 + 736);
  v95 = (a1 + 864);
  if (a1 != a2)
  {
    if (*(a2 + 55) < 0)
    {
      v9 = a2;
      sub_1E53E6D20(__dst, *(a2 + 4), *(a2 + 5));
      a2 = v9;
    }

    else
    {
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *__dst = v8;
    }
  }

  v10 = *(a2 + 56);
  v11 = *(a2 + 72);
  v12 = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v12;
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  v13 = *(a2 + 120);
  v14 = *(a2 + 136);
  v15 = *(a2 + 168);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v15;
  *(a1 + 120) = v13;
  *(a1 + 136) = v14;
  v16 = *(a2 + 184);
  v17 = *(a2 + 200);
  v18 = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = v18;
  *(a1 + 184) = v16;
  *(a1 + 200) = v17;
  v19 = *(a2 + 248);
  v20 = *(a2 + 264);
  v21 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 74);
  *(a1 + 264) = v20;
  *(a1 + 280) = v21;
  *(a1 + 248) = v19;
  v22 = *(a2 + 1);
  if (v22 < 0xA0 || (v23 = *(a2 + 2), v23 < 0xA0))
  {
LABEL_7:
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 71, "IsKeyPointAndDescriptorGeneratorConfigValid(config) && Invalid configuration", 78, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_59:
      abort();
    }

LABEL_8:
    if (*(a1 + 680) >= 0x141uLL)
    {
      v25 = *(a1 + 8);
      v29 = 4;
      if (*(a1 + 16) >= 0x141uLL)
      {
        v29 = 5;
      }

      v24 = (a1 + 764);
      *(a1 + 320) = v29;
      if (v25 > 0x280)
      {
LABEL_10:
        *(a1 + 680) = 640;
        v26 = *(a1 + 120);
        if (v26 == 1)
        {
          v27 = *(a1 + 121) ^ 1;
          v28 = *(a1 + 16);
          if (v25 != 1056)
          {
LABEL_27:
            sub_1E5478B6C(640, v25, v28, v26, v96);
            v35 = v96[0];
            *(a1 + 672) = v96[0];
            if ((*(a1 + 121) & 1) == 0 && *(a1 + 320))
            {
              v92 = v24;
              v36 = 0;
              v37 = 0;
              v38 = *(a1 + 16);
              do
              {
                if (v37)
                {
                  v38 = (v38 + 1) / 2;
                }

                v39 = *(a1 + 144 + 4 * v36);
                v40 = &v108 + 2 * v36 + 2;
                *v40 = *(a1 + 124 + 4 * v36);
                v40[1] = v39;
                v41 = &v106 + 2 * v36;
                v42 = *(a1 + 184 + 4 * v36);
                *v41 = *(a1 + 164 + 4 * v36);
                v41[1] = v42;
                v43 = 0x280u >> v37;
                *(&v111 + v36) = *(a1 + 204 + 4 * v36);
                v44 = *v40 < 2 || *v40 > v43;
                if (v44 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 521, "stripes_config.pared_block_size[octave].X >= 2 && stripes_config.pared_block_size[octave].X <= octave_width", 107, &unk_1E549A011, 0, sub_1E548FDE0))
                {
                  goto LABEL_59;
                }

                v45 = v40[1];
                if (v45 < 2 || v45 > dword_1E5492F34[v36])
                {
                  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 523, "stripes_config.pared_block_size[octave].Y >= 2 && stripes_config.pared_block_size[octave].Y <= kMaxGridY[octave]", 112, &unk_1E549A011, 0, sub_1E548FDE0))
                  {
                    goto LABEL_59;
                  }
                }

                if ((*v41 < 1 || *v41 > dword_1E5492F20[v36]) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 526, "stripes_config.pared_num_blocks[octave].X > 0 && stripes_config.pared_num_blocks[octave].X <= kMaxNumParedGridX[octave]", 119, &unk_1E549A011, 0, sub_1E548FDE0) || (v41[1] - 1) >= 0x100 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 528, "stripes_config.pared_num_blocks[octave].Y > 0 && stripes_config.pared_num_blocks[octave].Y <= kMaxNumParedGridY", 111, &unk_1E549A011, 0, sub_1E548FDE0))
                {
                  goto LABEL_59;
                }

                v46 = *v40;
                v47 = *v41;
                if (*v41 * *v40 < v43)
                {
                  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 531, "stripes_config.pared_block_size[octave].X * stripes_config.pared_num_blocks[octave].X >= octave_width", 101, &unk_1E549A011, 0, sub_1E548FDE0))
                  {
                    goto LABEL_59;
                  }

                  v46 = *v40;
                  v47 = *v41;
                }

                if ((v47 - 1) * v46 >= v43 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 534, "stripes_config.pared_block_size[octave].X * (stripes_config.pared_num_blocks[octave].X - 1) < octave_width", 106, &unk_1E549A011, 0, sub_1E548FDE0))
                {
                  goto LABEL_59;
                }

                v48 = v40[1];
                v49 = v41[1];
                if (v49 * v48 < v38)
                {
                  if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 537, "stripes_config.pared_block_size[octave].Y * stripes_config.pared_num_blocks[octave].Y >= octave_height", 102, &unk_1E549A011, 0, sub_1E548FDE0))
                  {
                    goto LABEL_59;
                  }

                  v48 = v40[1];
                  v49 = v41[1];
                }

                if ((v49 - 1) * v48 >= v38 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 540, "stripes_config.pared_block_size[octave].Y * (stripes_config.pared_num_blocks[octave].Y - 1) < octave_height", 107, &unk_1E549A011, 0, sub_1E548FDE0) || *(&v111 + v36) >= 4u && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 542, "stripes_config.pared_grid_num_out[octave] >= 0 && stripes_config.pared_grid_num_out[octave] <= 3", 96, &unk_1E549A011, 0, sub_1E548FDE0))
                {
                  goto LABEL_59;
                }

                v36 = ++v37;
              }

              while (*(a1 + 320) > v37);
              v35 = *(a1 + 672);
              v24 = v92;
              v5 = v94;
              v6 = v95;
            }

            *(a1 + 760) = *(a1 + 120);
            v68 = *(a1 + 736);
            v69 = (*(a1 + 744) - v68) >> 2;
            if (v35 <= v69)
            {
              if (v35 < v69)
              {
                *(a1 + 744) = v68 + 4 * v35;
              }
            }

            else
            {
              sub_1E54151E4(v5, v35 - v69);
              v35 = *(a1 + 672);
            }

            v70 = *(a1 + 688);
            v71 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 696) - v70) >> 3);
            if (v35 <= v71)
            {
              if (v35 < v71)
              {
                *(a1 + 696) = v70 + 40 * v35;
              }
            }

            else
            {
              sub_1E54633D0(v3, v35 - v71);
              v35 = *(a1 + 672);
            }

            v72 = *(a1 + 712);
            v73 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 720) - v72) >> 3);
            if (v35 <= v73)
            {
              if (v35 < v73)
              {
                *(a1 + 720) = v72 + 40 * v35;
              }
            }

            else
            {
              sub_1E54633D0(v4, v35 - v73);
              v35 = *(a1 + 672);
            }

            if (v35)
            {
              v74 = 0;
              v75 = *v5;
              v76 = *v3;
              v77 = 1;
              v78 = *v4;
              do
              {
                *v75++ = v96[v77];
                v79 = &v78[v74 / 4];
                *v79 = *(&v101 + v74);
                v80 = v76 + v74;
                *v80 = *(&v98 + v74);
                *(v79 + 2) = *(&v102 + v74);
                *(v80 + 16) = *&v100[v74 / 8 - 2];
                *(v79 + 3) = v104[v74 / 8 - 1];
                v81 = &v104[v74 / 8];
                *(v80 + 32) = v100[v74 / 8];
                v44 = v35 > v77++;
                v74 += 40;
                *(v79 + 4) = *v81;
              }

              while (v44);
            }

            if (*(a1 + 760) == 1)
            {
              v82 = &v105;
              v83 = v107;
              *v24 = v106;
              v24[1] = v83;
              v84 = v109;
              v24[2] = v108;
              v24[3] = v84;
              v85 = v111;
              v24[4] = v110;
              v24[5] = v85;
              *(a1 + 860) = v112;
              v86 = *(a1 + 864);
              v87 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 872) - v86) >> 3);
              if (v35 <= v87)
              {
                if (v35 < v87)
                {
                  *(a1 + 872) = v86 + 40 * v35;
                }
              }

              else
              {
                sub_1E54633D0(v6, v35 - v87);
              }

              v88 = *(a1 + 672);
              if (v88)
              {
                v89 = (*v6 + 32);
                v90 = 1;
                do
                {
                  *(v89 - 2) = *(v82 - 2);
                  *(v89 - 1) = *(v82 - 1);
                  v91 = *v82;
                  v82 += 5;
                  *v89 = v91;
                  v89 += 5;
                  v44 = v88 > v90++;
                }

                while (v44);
              }
            }

LABEL_112:
            operator new();
          }
        }

        else
        {
          v27 = 0;
          v28 = *(a1 + 16);
          if (v25 != 1056)
          {
            goto LABEL_27;
          }
        }

        if (v28 == 756 && (v27 & 1) == 0)
        {
          *(a1 + 672) = 3;
          v96[0] = 0;
          sub_1E5477C28(v5, v96);
          v96[0] = 208;
          sub_1E5477C28(v5, v96);
          v96[0] = 416;
          sub_1E5477C28(v5, v96);
          v32 = *(a1 + 672);
          v33 = *(a1 + 688);
          v34 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 696) - v33) >> 3);
          if (v32 <= v34)
          {
            if (v32 < v34)
            {
              *(a1 + 696) = v33 + 40 * v32;
            }
          }

          else
          {
            sub_1E54633D0(v3, v32 - v34);
            v32 = *(a1 + 672);
          }

          v62 = *(a1 + 712);
          v63 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 720) - v62) >> 3);
          if (v32 <= v63)
          {
            if (v32 < v63)
            {
              *(a1 + 720) = &v62[10 * v32];
            }
          }

          else
          {
            sub_1E54633D0(v4, v32 - v63);
            v62 = *v4;
          }

          v64 = *(a1 + 688);
          *(v64 + 32) = 0;
          *v64 = 0u;
          *(v64 + 16) = 0u;
          *v62 = xmmword_1E5492E30;
          *(v62 + 1) = xmmword_1E5492E40;
          *(v64 + 40) = xmmword_1E5492E50;
          *(v64 + 56) = xmmword_1E5492E60;
          *(v64 + 72) = 12;
          *(v62 + 2) = xmmword_1E5492E70;
          *(v62 + 3) = xmmword_1E5492E80;
          *(v62 + 4) = xmmword_1E5492E90;
          *(v64 + 80) = xmmword_1E5492EA0;
          *(v64 + 96) = xmmword_1E5492EB0;
          *(v64 + 112) = 13;
          *(v62 + 5) = xmmword_1E5492E30;
          *(v62 + 6) = xmmword_1E5492E40;
          *(v62 + 14) = 0x320000001BLL;
          if (*(a1 + 120) == 1)
          {
            *(a1 + 760) = 1;
            v65 = *(a1 + 672);
            v66 = *(a1 + 864);
            v67 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 872) - v66) >> 3);
            if (v65 <= v67)
            {
              if (v65 < v67)
              {
                *(a1 + 872) = &v66[5 * v65];
              }
            }

            else
            {
              sub_1E54633D0(v95, v65 - v67);
              v66 = *v95;
            }

            *v66 = 0;
            v66[5] = 214;
            v66[10] = 216;
            *(a1 + 844) = 0;
            *v24 = xmmword_1E5492EC0;
            v66[1] = 0;
            v66[6] = 106;
            v66[11] = 108;
            *(a1 + 848) = 0;
            v24[3] = xmmword_1E5492ED0;
            v66[2] = 0;
            v66[7] = 52;
            v66[12] = 54;
            *(a1 + 852) = 0;
            v24[1] = xmmword_1E5492EE0;
            v66[3] = 0;
            v66[8] = 25;
            v66[13] = 27;
            *(a1 + 856) = 2;
            v24[2] = xmmword_1E5492EF0;
            v24[4] = xmmword_1E5492F00;
            v66[4] = 0;
            v66[9] = 12;
            v66[14] = 13;
            *(a1 + 860) = 2;
          }

          goto LABEL_112;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v24 = (a1 + 764);
      *(a1 + 320) = 4;
      v25 = *(a1 + 8);
      if (v25 > 0x280)
      {
        goto LABEL_10;
      }
    }

    *(a1 + 672) = 1;
    *(a1 + 680) = v25;
    v96[0] = 0;
    sub_1E5477C28(v5, v96);
    v30 = *(a1 + 688);
    v31 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 696) - v30) >> 3);
    if (*(a1 + 696) == v30)
    {
      sub_1E54633D0(v3, 1 - v31);
    }

    else if (v31 >= 2)
    {
      *(a1 + 696) = v30 + 40;
    }

    v50 = *(a1 + 712);
    v51 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 720) - v50) >> 3);
    if (*(a1 + 720) == v50)
    {
      sub_1E54633D0(v4, 1 - v51);
      v50 = *v4;
    }

    else if (v51 >= 2)
    {
      *(a1 + 720) = v50 + 10;
    }

    v52 = *(a1 + 688);
    *(v52 + 4) = 0;
    *v52 = 0u;
    v52[1] = 0u;
    v53 = *(a1 + 8);
    *v50 = v53;
    v54 = *(a1 + 16);
    v55 = (v53 + 1) / 2;
    v50[1] = v54;
    v50[2] = v55;
    v56 = (v54 + 1) / 2;
    v50[3] = v56;
    v50[4] = (v55 + 1) / 2;
    v57 = ((v55 + 1) / 2 + 1) / 2;
    v50[5] = (v56 + 1) / 2;
    v50[6] = v57;
    v58 = ((v56 + 1) / 2 + 1) / 2;
    v50[7] = v58;
    v50[8] = (v57 + 1) / 2;
    v50[9] = (v58 + 1) / 2;
    v59 = *(a1 + 120);
    *(a1 + 760) = v59;
    if (v59 == 1)
    {
      bzero(v97, 0x824uLL);
      v96[0] = 1;
      v101 = *v50;
      v98 = *v52;
      v102 = *(v50 + 2);
      v99 = v52[1];
      v103 = *(v50 + 3);
      v100[0] = *(v52 + 4);
      v104[0] = *(v50 + 4);
      sub_1E5478B6C(640, v53, v54, 1, v96);
      v60 = *(a1 + 864);
      v61 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 872) - v60) >> 3);
      if (*(a1 + 872) == v60)
      {
        sub_1E54633D0(v95, 1 - v61);
        v60 = *v95;
      }

      else if (v61 >= 2)
      {
        *(a1 + 872) = v60 + 5;
      }

      *(a1 + 844) = v111;
      *v60 = v104[76];
      *v24 = v106;
      *(a1 + 848) = DWORD1(v111);
      v60[1] = v104[77];
      v24[3] = v109;
      *(a1 + 852) = DWORD2(v111);
      v60[2] = v104[78];
      v24[1] = v107;
      *(a1 + 856) = HIDWORD(v111);
      v60[3] = v104[79];
      v24[2] = v108;
      v24[4] = v110;
      *(a1 + 860) = v112;
      v60[4] = v105;
    }

    goto LABEL_112;
  }

  if ((*a2 | 2) == 2)
  {
    if (v22 > 0x280)
    {
      goto LABEL_7;
    }
  }

  else if (v22 > 0x1000)
  {
    goto LABEL_7;
  }

  if (v23 <= 0x2000 && (*(a2 + 225) != 1 || (a2[14] & 1) != 0))
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1E5476E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void **a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  MEMORY[0x1E6928650](v62, 0x10A1C400185FAF4);
  sub_1E54783A0(&a34);
  v67 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v67;
    operator delete(v67);
  }

  sub_1E5478404(&a61);
  v68 = *a16;
  if (*a16)
  {
    *(v61 + 872) = v68;
    operator delete(v68);
    v69 = *a15;
    if (!*a15)
    {
LABEL_5:
      v70 = *v65;
      if (!*v65)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v69 = *a15;
    if (!*a15)
    {
      goto LABEL_5;
    }
  }

  *(v61 + 744) = v69;
  operator delete(v69);
  v70 = *v65;
  if (!*v65)
  {
LABEL_6:
    v71 = *v64;
    if (!*v64)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v61 + 720) = v70;
  operator delete(v70);
  v71 = *v64;
  if (!*v64)
  {
LABEL_8:
    sub_1E54734EC(v61 + 648, *(v61 + 656));
    sub_1E5427FA8(v63);
    v72 = *(v61 + 304);
    *(v61 + 304) = 0;
    if (v72)
    {
      (*(v61 + 312))();
    }

    if (*(v61 + 55) < 0)
    {
      operator delete(*a14);
    }

    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v61 + 696) = v71;
  operator delete(v71);
  goto LABEL_8;
}

uint64_t sub_1E5477068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, uint8x8_t a12, __n128 a13)
{
  v17 = **(a1 + 304);
  sub_1E546EB20(v17, a2, a6, a7, a8, a9, a10, a11, a12, a13);
  sub_1E54712C8(v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = *(*(a1 + 304) + 8);
  sub_1E54875F4(v26, *(**(a1 + 304) + 56));
  sub_1E5487E4C(v26, a4);
  v27 = *(a1 + 656);
  if (!v27)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v28 = v27;
      v29 = *(v27 + 8);
      if (v29 <= a3 && (v29 != a3 || *(v28 + 9) <= HIDWORD(a3)))
      {
        break;
      }

      v27 = *v28;
      if (!*v28)
      {
        goto LABEL_10;
      }
    }

    if (v29 >= a3 && *(v28 + 9) >= HIDWORD(a3))
    {
      break;
    }

    v27 = v28[1];
    if (!v27)
    {
      goto LABEL_10;
    }
  }

  (*(**(*(a1 + 304) + 16) + 16))(*(*(a1 + 304) + 16), *(*(*(a1 + 304) + 8) + 248), *(*(*(a1 + 304) + 8) + 256) + 200, a1 + 392, a1 + 328, v28 + 5, a4);
  result = (*(**(*(a1 + 304) + 24) + 16))(*(*(a1 + 304) + 24), *(*(*(a1 + 304) + 16) + 8) + 200, *(**(a1 + 304) + 48), a5, a4);
  if (*(a1 + 24) == 1)
  {
    if ((*a1 | 2) == 2)
    {
      v31 = *(a1 + 304);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      v36 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        result = sub_1E5463EC4(v32, v33, v34, v35, v28 + 5, *v36);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_1E5463EC4(v32, v33, v34, v35, v28 + 5, v36);
        if (result)
        {
          return result;
        }
      }

      result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 232, "DumpDebugInfo<CreteDesgenTraits>( *pImpl_->gaussian_pyr_generator_, *pImpl_->res_map_and_kpc_generator_, *pImpl_->kp_validator_and_refiner_, *pImpl_->kp_to_descriptor_, histogram_per_scale, config_.dump_path.c_str())", 216, &unk_1E549A011, 0, sub_1E548FDE0);
      if (result)
      {
LABEL_25:
        abort();
      }
    }

    else
    {
      v37 = *(a1 + 304);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v42 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        result = sub_1E546BCE8(v38, v39, v40, v41, v28 + 5, *v42);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_1E546BCE8(v38, v39, v40, v41, v28 + 5, v42);
        if (result)
        {
          return result;
        }
      }

      result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGenerator.cpp", 237, "DumpDebugInfo<CollDesgenTraits>( *pImpl_->gaussian_pyr_generator_, *pImpl_->res_map_and_kpc_generator_, *pImpl_->kp_validator_and_refiner_, *pImpl_->kp_to_descriptor_, histogram_per_scale, config_.dump_path.c_str())", 215, &unk_1E549A011, 0, sub_1E548FDE0);
      if (result)
      {
        goto LABEL_25;
      }
    }
  }

  return result;
}

void sub_1E547736C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, uint8x8_t a11, __n128 a12)
{
  v16 = HIDWORD(a3);
  *(a4 + 88) = *(a4 + 80);
  *(a4 + 136) = *(a4 + 128);
  *(a4 + 112) = *(a4 + 104);
  *(a4 + 40) = *(a4 + 32);
  *(a4 + 64) = *(a4 + 56);
  v17 = (a1 + 656);
  v18 = *(a1 + 656);
  if (!v18)
  {
LABEL_19:
    operator new();
  }

  v19 = *(a1 + 656);
  do
  {
    v20 = *(v19 + 8);
    if (v20 <= a3 && (v20 != a3 || *(v19 + 9) <= HIDWORD(a3)))
    {
      if (v20 >= a3 && *(v19 + 9) >= HIDWORD(a3))
      {
        goto LABEL_22;
      }

      ++v19;
    }

    v19 = *v19;
  }

  while (v19);
  v21 = (a1 + 456);
  while (1)
  {
    while (1)
    {
      v22 = v18;
      v23 = *(v18 + 8);
      if (v23 <= a3 && (v23 != a3 || *(v22 + 9) <= HIDWORD(a3)))
      {
        break;
      }

      v18 = *v22;
      if (!*v22)
      {
        goto LABEL_19;
      }
    }

    if (v23 >= a3 && *(v22 + 9) >= HIDWORD(a3))
    {
      break;
    }

    v18 = v22[1];
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  if (v22 + 5 != v21)
  {
    sub_1E5478224(v22 + 5, *(a1 + 456), *(a1 + 464), (*(a1 + 464) - *(a1 + 456)) >> 2);
    sub_1E5478224(v22 + 8, v21[3], v21[4], (v21[4] - v21[3]) >> 2);
    sub_1E5478224(v22 + 11, v21[6], v21[7], (v21[7] - v21[6]) >> 2);
    sub_1E5478224(v22 + 14, v21[9], v21[10], (v21[10] - v21[9]) >> 2);
    sub_1E5478224(v22 + 17, v21[12], v21[13], (v21[13] - v21[12]) >> 2);
    sub_1E5478224(v22 + 20, v21[15], v21[16], (v21[16] - v21[15]) >> 2);
    sub_1E5478224(v22 + 23, v21[18], v21[19], (v21[19] - v21[18]) >> 2);
    sub_1E5478224(v22 + 26, v21[21], v21[22], (v21[22] - v21[21]) >> 2);
  }

LABEL_22:
  if (*(a1 + 672) != 1)
  {
    operator new[]();
  }

  sub_1E5477068(a1, a2, a3, 0, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (*(a1 + 80) == 1)
  {
    v24 = *v17;
    if (!*v17)
    {
LABEL_35:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v25 = v24;
        v26 = *(v24 + 8);
        if (v26 <= a3 && (v26 != a3 || *(v25 + 9) <= v16))
        {
          break;
        }

        v24 = *v25;
        if (!*v25)
        {
          goto LABEL_35;
        }
      }

      if (v26 >= a3 && *(v25 + 9) >= v16)
      {
        break;
      }

      v24 = v25[1];
      if (!v24)
      {
        goto LABEL_35;
      }
    }

    sub_1E5478704(a1 + 328, (v25 + 5), 2 * *(a1 + 320), *(a1 + 60), a1 + 392, *(a1 + 84));
  }

  if (*(a1 + 224) == 1)
  {
    (*(**(*(a1 + 304) + 24) + 24))(*(*(a1 + 304) + 24), a4);
    if (*(a1 + 225) == 1)
    {
      v27 = *(a4 + 200);
      if ((vmovn_s64(vceqq_s64(vdupq_laneq_s64(v27, 1), v27)).u8[0] & 1) == 0)
      {
        v28 = *(*(a1 + 304) + 32);
        *(v28 + 544) = *a4;
        sub_1E547A060(v28);
        sub_1E547A21C(v28, (a4 + 176));
        sub_1E547A52C();
        sub_1E547A644(v28, (a4 + 176));
        v29 = *(*(a1 + 304) + 32);
        if (a4 + 224 != v29 + 520)
        {
          v30 = *(v29 + 520);
          v31 = *(v29 + 528);
          v32 = v31 - v30;
          v33 = *(a4 + 240);
          v34 = *(a4 + 224);
          if (v33 - v34 < (v31 - v30))
          {
            v35 = 0x4EC4EC4EC4EC4EC5 * (v32 >> 2);
            if (v34)
            {
              *(a4 + 232) = v34;
              operator delete(v34);
              v33 = 0;
              *(a4 + 224) = 0;
              *(a4 + 232) = 0;
              *(a4 + 240) = 0;
            }

            if (v35 <= 0x4EC4EC4EC4EC4ECLL)
            {
              v36 = 0x4EC4EC4EC4EC4EC5 * (v33 >> 2);
              v37 = 2 * v36;
              if (2 * v36 <= v35)
              {
                v37 = 0x4EC4EC4EC4EC4EC5 * (v32 >> 2);
              }

              if (v36 >= 0x276276276276276)
              {
                v38 = 0x4EC4EC4EC4EC4ECLL;
              }

              else
              {
                v38 = v37;
              }

              if (v38 <= 0x4EC4EC4EC4EC4ECLL)
              {
                operator new();
              }
            }

            sub_1E5415338();
          }

          v39 = *(a4 + 232);
          v40 = v39 - v34;
          if (v39 - v34 >= v32)
          {
            if (v31 != v30)
            {
              v44 = *(a4 + 224);
              memmove(v34, v30, v31 - v30);
              v34 = v44;
            }

            v43 = &v34[v32];
          }

          else
          {
            if (v39 != v34)
            {
              memmove(v34, v30, v39 - v34);
              v39 = *(a4 + 232);
            }

            v41 = &v30[v40];
            v42 = v31 - &v30[v40];
            if (v42)
            {
              memmove(v39, v41, v42);
            }

            v43 = &v39[v42];
          }

          *(a4 + 232) = v43;
          v29 = *(*(a1 + 304) + 32);
        }

        *a4 = *(v29 + 544);
        v27 = *(a4 + 200);
      }

      v45 = *(a4 + 176);
      *(a4 + 176) = v27;
      *(a4 + 200) = v45;
      v46 = *(a4 + 192);
      *(a4 + 192) = *(a4 + 216);
      *(a4 + 216) = v46;
    }
  }
}

void sub_1E5477BC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E53F7E98(v2 - 104);
  sub_1E54440A8(va);
  _Unwind_Resume(a1);
}

void sub_1E5477BDC(void *a1)
{
  __cxa_begin_catch(a1);
  MEMORY[0x1E6928610](v1, 0x1000C8077774924);
  __cxa_rethrow();
}

void sub_1E5477C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  sub_1E54440A8(va);
  _Unwind_Resume(a1);
}

void sub_1E5477C28(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_1E5415338();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_1E5477D40(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    *(v1 + 32) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v5)
    {
      v6 = sub_1E5478120(v5);
      MEMORY[0x1E6928650](v6, 0x1020C40EB8A5903);
    }

    v7 = *v1;
    *v1 = 0;
    if (v7)
    {
      v8 = sub_1E5477E64(v7);
      MEMORY[0x1E6928650](v8, 0x10B0C40BBFE04D6);
    }

    JUMPOUT(0x1E6928650);
  }

  return result;
}

void *sub_1E5477E64(void *a1)
{
  a1[9] = &unk_1F5F0A120;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[23];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[21];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[8];
  a1[8] = 0;
  if (v5)
  {
    v6 = v5[9];
    if (v6)
    {
      v5[10] = v6;
      operator delete(v6);
    }

    v7 = v5[6];
    if (v7)
    {
      v8 = v5[7];
      v9 = v5[6];
      if (v8 != v7)
      {
        v10 = v8 - 18;
        v11 = v8 - 18;
        v12 = v8 - 18;
        do
        {
          v13 = *v12;
          v12 -= 18;
          (*v13)(v11);
          v10 -= 18;
          v14 = v11 == v7;
          v11 = v12;
        }

        while (!v14);
        v9 = v5[6];
      }

      v5[7] = v7;
      operator delete(v9);
    }

    MEMORY[0x1E6928650](v5, 0x1020C4024B85F43);
  }

  v15 = a1[7];
  a1[7] = 0;
  if (v15)
  {
    v16 = v15[9];
    if (v16)
    {
      v15[10] = v16;
      operator delete(v16);
    }

    v17 = v15[6];
    if (v17)
    {
      v18 = v15[7];
      v19 = v15[6];
      if (v18 != v17)
      {
        v20 = v18 - 18;
        v21 = v18 - 18;
        v22 = v18 - 18;
        do
        {
          v23 = *v22;
          v22 -= 18;
          (*v23)(v21);
          v20 -= 18;
          v14 = v21 == v17;
          v21 = v22;
        }

        while (!v14);
        v19 = v15[6];
      }

      v15[7] = v17;
      operator delete(v19);
    }

    MEMORY[0x1E6928650](v15, 0x1020C4024B85F43);
  }

  v24 = a1[6];
  a1[6] = 0;
  if (v24)
  {
    v25 = v24[9];
    if (v25)
    {
      v24[10] = v25;
      operator delete(v25);
    }

    v26 = v24[6];
    if (v26)
    {
      v27 = v24[7];
      v28 = v24[6];
      if (v27 != v26)
      {
        v29 = v27 - 18;
        v30 = v27 - 18;
        v31 = v27 - 18;
        do
        {
          v32 = *v31;
          v31 -= 18;
          (*v32)(v30);
          v29 -= 18;
          v14 = v30 == v26;
          v30 = v31;
        }

        while (!v14);
        v28 = v24[6];
      }

      v24[7] = v26;
      operator delete(v28);
    }

    MEMORY[0x1E6928650](v24, 0x1020C4024B85F43);
  }

  return a1;
}

void *sub_1E5478120(void *a1)
{
  v2 = a1[32];
  a1[32] = 0;
  if (v2)
  {
    sub_1E545F9EC((a1 + 32), v2);
  }

  v3 = a1[31];
  a1[31] = 0;
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      v3[10] = v4;
      operator delete(v4);
    }

    v5 = v3[6];
    if (v5)
    {
      v6 = v3[7];
      v7 = v3[6];
      if (v6 != v5)
      {
        v8 = v6 - 18;
        v9 = v6 - 18;
        v10 = v6 - 18;
        do
        {
          v11 = *v10;
          v10 -= 18;
          (*v11)(v9);
          v8 -= 18;
          v12 = v9 == v5;
          v9 = v10;
        }

        while (!v12);
        v7 = v3[6];
      }

      v3[7] = v5;
      operator delete(v7);
    }

    MEMORY[0x1E6928650](v3, 0x1020C4024B85F43);
  }

  v13 = a1[28];
  if (v13)
  {
    a1[29] = v13;
    operator delete(v13);
  }

  v14 = a1[25];
  if (v14)
  {
    a1[26] = v14;
    operator delete(v14);
  }

  return a1;
}

char *sub_1E5478224(char **a1, char *__src, char *a3, unint64_t a4)
{
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v10 = a4;
      }

      v11 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v12 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 62))
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v13 = a1[1];
  v14 = v13 - result;
  if (a4 <= (v13 - result) >> 2)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      v18 = result;
      memmove(result, __src, v17);
      result = v18;
    }

    a1[1] = &result[v17];
  }

  else
  {
    if (v13 != result)
    {
      result = memmove(result, __src, v13 - result);
      v13 = a1[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    a1[1] = &v13[v16];
  }

  return result;
}

void *sub_1E54783A0(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    a1[13] = v4;
    operator delete(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  return a1;
}

void *sub_1E5478404(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    a1[29] = v2;
    operator delete(v2);
  }

  v3 = a1[25];
  if (v3)
  {
    a1[26] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1E547844C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E5478484(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1E6928610);
  }

  return result;
}

uint64_t sub_1E54784A4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "N4cv3d3vio8cv_types12ArrayDeleterIhEE")
  {
    if (((v2 & "N4cv3d3vio8cv_types12ArrayDeleterIhEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3vio8cv_types12ArrayDeleterIhEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3vio8cv_types12ArrayDeleterIhEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

float sub_1E5478504(unint64_t a1, unint64_t a2, uint64_t a3)
{
  memset(v18, 0, sizeof(v18));
  v19[0] = xmmword_1E54930F0;
  v19[1] = xmmword_1E5493100;
  v20 = 10;
  v6 = a2 - 2;
  if (a2 <= 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 71, "num_scales > 2 && Number of scales should be > 2", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_17;
  }

  if (v6 >= 9)
  {
    if ((sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 73, "num_scales_minus2 <= kMaxNumOfScalesMinus2 && Number of scales minus 2 should be less than or equal to max expected", 117, &unk_1E549A011, 0, sub_1E548FDE0) & 1) == 0)
    {
      *(a3 + 24) = 0u;
      v7 = (a3 + 24);
      v8 = a2 - 3;
      *(a3 + 56) = 0;
      *(a3 + 40) = 0u;
      goto LABEL_8;
    }

LABEL_17:
    abort();
  }

  *(a3 + 24) = 0u;
  v7 = (a3 + 24);
  v8 = a2 - 3;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  if (a2 - 3 < 3)
  {
    goto LABEL_16;
  }

LABEL_8:
  memcpy(v7, v19, 8 * a2 - 40);
  v9 = v8 - 1;
  if (v8 - 1 >= 2)
  {
    v9 = 2;
  }

  v10 = v8 - v9;
  if (v8 - v9 < 4)
  {
    v11 = v8;
    do
    {
LABEL_15:
      a1 -= v18[v11--];
    }

    while (v11 > 2);
    goto LABEL_16;
  }

  v11 = v8 - (v10 & 0xFFFFFFFFFFFFFFFCLL);
  v12 = 0uLL;
  v13 = a1;
  v14 = &v18[v8 - 1];
  v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v13 = vsubq_s64(v13, vextq_s8(*v14, *v14, 8uLL));
    v12 = vsubq_s64(v12, vextq_s8(v14[-1], v14[-1], 8uLL));
    v14 -= 2;
    v15 -= 4;
  }

  while (v15);
  a1 = vaddvq_s64(vaddq_s64(v12, v13));
  if (v10 != (v10 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_16:
  v16 = (a1 * 0.21);
  *(a3 + 16) = v16;
  result = vcvts_n_f32_u64(a1, 2uLL);
  *a3 = a1 - result - v16;
  *(a3 + 8) = result;
  return result;
}

void sub_1E5478704(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, float a6)
{
  v9 = a3 - 2;
  if (a3 <= 2 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 130, "num_scales > 2 && Number of scales should be > 2", 50, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    goto LABEL_18;
  }

  if (v9 >= 9)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 132, "num_scales_minus2 <= kMaxNumOfScalesMinus2 && Number of scales minus 2 should be less than or equal to max expected", 117, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  if (v9)
  {
LABEL_7:
    v10 = 0;
    while (1)
    {
      v11 = (a2 + 24 * v10);
      v13 = *v11;
      v12 = v11[1];
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1E5415338();
      }

      v14 = (*(a1 + 8 * v10) * a6);
      v15 = a4;
      if (MEMORY[0xFFFFFFFFFFFFFFFC] >= v14)
      {
        v15 = -(32 * v14 / MEMORY[0xFFFFFFFFFFFFFFFC]);
      }

      *(a5 + 8 * v10) = v15;
      operator delete(0);
      if (*(a5 + 8 * v10) < a4)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 137, "laplacian_threshold[k] >= min_score", 35, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          break;
        }
      }

      if (++v10 == v9)
      {
        return;
      }
    }

LABEL_18:
    abort();
  }
}

uint64_t sub_1E54789D8(unsigned int a1, unsigned int a2)
{
  if (a1 - 160 >= 0xF61 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 145, "width >= 160 && width <= 4096 && Unsupported width, supported range is [160, 4096]", 84, &unk_1E549A011, 0, sub_1E548FDE0) || a2 - 160 >= 0x1F61 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 147, "height >= 160 && height <= 8192 && Unsupported height, supported range is [160, 8192]", 87, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  if (a2 > 0x140 && a1 > 0x140)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1E5478AA8(unsigned int a1, unsigned int a2)
{
  if (a1 > 0x2000 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 159, "input_dimension <= 8192 && Max input dimension allowed is 8192", 64, &unk_1E549A011, 0, sub_1E548FDE0) || a2 >= 5 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 160, "octave < 5 && Invalid octave", 30, &unk_1E549A011, 0, sub_1E548FDE0))
  {
    abort();
  }

  return (a1 + (1 << a2) - 1) >> a2;
}

uint64_t sub_1E5478B6C(uint64_t result, unsigned int a2, int a3, int a4, unsigned int *a5)
{
  v5 = a5;
  v9 = result;
  v10 = a2 - result;
  if (a2 > result)
  {
    bzero(a5, 0x828uLL);
    v11 = (ceilf(v10 / (v9 - 160)) + 1.0);
    if (v11 < 0x11 || !sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 181, "num_stripes <= kMaxNumStripes && Invalid stripe setting", 57, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      *v5 = v11;
      v12 = v11 - 1;
      v13 = ceilf(((v11 * v9 - a2) / v12) * 0.5);
      v14 = v9 - (v13 + v13);
      v5[1] = 0;
      v5[v12 + 1] = v10;
      if (v12 < 2)
      {
        goto LABEL_15;
      }

      if (v12 > 8)
      {
        v16 = (v12 - 1) & 0xFFFFFFFFFFFFFFF8;
        v15 = v16 | 1;
        v17 = vdupq_n_s32(v14);
        v18 = xmmword_1E5493110;
        v19 = (v5 + 6);
        v20.i64[0] = 0x400000004;
        v20.i64[1] = 0x400000004;
        v21.i64[0] = 0x800000008;
        v21.i64[1] = 0x800000008;
        v22 = v16;
        do
        {
          v19[-1] = vmulq_s32(v17, v18);
          *v19 = vmulq_s32(v17, vaddq_s32(v18, v20));
          v18 = vaddq_s32(v18, v21);
          v19 += 2;
          v22 -= 8;
        }

        while (v22);
        if (v12 - 1 == v16)
        {
LABEL_15:
          operator new();
        }
      }

      else
      {
        v15 = 1;
      }

      v23 = v12 - v15;
      v24 = &v5[v15 + 1];
      v25 = v14 * v15;
      do
      {
        *v24++ = v25;
        v25 += v14;
        --v23;
      }

      while (v23);
      goto LABEL_15;
    }

LABEL_20:
    abort();
  }

  if (*a5 != 1)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorGeneratorUtils.cpp", 233, "config.num_stripes == 1 && num_stripes shall be 1 for VGA", 59, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_20;
    }
  }

  if (a4)
  {
    v5[497] = 32;
    v5[507] = 20;
    v5[499] = 16;
    v5[509] = 20;
    v5[501] = 8;
    v5[511] = 20;
    v5[503] = 4;
    v5[513] = 20;
    *(v5 + 517) = xmmword_1E5493120;
    v5[505] = 4;
    v5[515] = 10;
    v5[521] = 2;
    v26 = *v5;
    if (v26 < 2)
    {
      goto LABEL_74;
    }

    if (v26 > 7)
    {
      v29 = (v5 + 177);
      v27 = v26 & 0xFFFFFFF8;
      v30 = 0uLL;
      v31 = v27;
      v32 = 0uLL;
      do
      {
        v33.i32[0] = *v29;
        v33.i32[1] = v29[10];
        v33.i32[2] = v29[20];
        v33.i32[3] = v29[30];
        v34.i32[0] = v29[40];
        v34.i32[1] = v29[50];
        v34.i32[2] = v29[60];
        v34.i32[3] = v29[70];
        v30 = vmaxq_s32(v33, v30);
        v32 = vmaxq_s32(v34, v32);
        v29 += 80;
        v31 -= 8;
      }

      while (v31);
      v28 = vmaxvq_s32(vmaxq_s32(v30, v32));
      if (v27 == v26)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v35 = v26 - v27;
    v36 = &v5[10 * v27 + 177];
    do
    {
      v38 = *v36;
      v36 += 10;
      v37 = v38;
      if (v38 > v28)
      {
        v28 = v37;
      }

      --v35;
    }

    while (v35);
LABEL_28:
    if (v28 > 0)
    {
      v5[497] = (v28 + 19) / 20;
    }

    if (v26 >= 8)
    {
      v41 = (v5 + 179);
      v39 = v26 & 0xFFFFFFF8;
      v42 = 0uLL;
      v43 = v39;
      v44 = 0uLL;
      do
      {
        v45.i32[0] = *v41;
        v45.i32[1] = v41[10];
        v45.i32[2] = v41[20];
        v45.i32[3] = v41[30];
        v46.i32[0] = v41[40];
        v46.i32[1] = v41[50];
        v46.i32[2] = v41[60];
        v46.i32[3] = v41[70];
        v42 = vmaxq_s32(v45, v42);
        v44 = vmaxq_s32(v46, v44);
        v41 += 80;
        v43 -= 8;
      }

      while (v43);
      v40 = vmaxvq_s32(vmaxq_s32(v42, v44));
      if (v39 == v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v47 = v26 - v39;
    v48 = &v5[10 * v39 + 179];
    do
    {
      v50 = *v48;
      v48 += 10;
      v49 = v50;
      if (v50 > v40)
      {
        v40 = v49;
      }

      --v47;
    }

    while (v47);
LABEL_39:
    if (v40 >= 1)
    {
      v5[499] = (v40 + 19) / 20;
    }

    if (v26 >= 8)
    {
      v53 = (v5 + 181);
      v51 = v26 & 0xFFFFFFF8;
      v54 = 0uLL;
      v55 = v51;
      v56 = 0uLL;
      do
      {
        v57.i32[0] = *v53;
        v57.i32[1] = v53[10];
        v57.i32[2] = v53[20];
        v57.i32[3] = v53[30];
        v58.i32[0] = v53[40];
        v58.i32[1] = v53[50];
        v58.i32[2] = v53[60];
        v58.i32[3] = v53[70];
        v54 = vmaxq_s32(v57, v54);
        v56 = vmaxq_s32(v58, v56);
        v53 += 80;
        v55 -= 8;
      }

      while (v55);
      v52 = vmaxvq_s32(vmaxq_s32(v54, v56));
      if (v51 == v26)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v59 = v26 - v51;
    v60 = &v5[10 * v51 + 181];
    do
    {
      v62 = *v60;
      v60 += 10;
      v61 = v62;
      if (v62 > v52)
      {
        v52 = v61;
      }

      --v59;
    }

    while (v59);
LABEL_50:
    if (v52 >= 1)
    {
      v5[501] = (v52 + 19) / 20;
    }

    if (v26 >= 8)
    {
      v65 = (v5 + 183);
      v63 = v26 & 0xFFFFFFF8;
      v66 = 0uLL;
      v67 = v63;
      v68 = 0uLL;
      do
      {
        v69.i32[0] = *v65;
        v69.i32[1] = v65[10];
        v69.i32[2] = v65[20];
        v69.i32[3] = v65[30];
        v70.i32[0] = v65[40];
        v70.i32[1] = v65[50];
        v70.i32[2] = v65[60];
        v70.i32[3] = v65[70];
        v66 = vmaxq_s32(v69, v66);
        v68 = vmaxq_s32(v70, v68);
        v65 += 80;
        v67 -= 8;
      }

      while (v67);
      v64 = vmaxvq_s32(vmaxq_s32(v66, v68));
      if (v63 == v26)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v71 = v26 - v63;
    v72 = &v5[10 * v63 + 183];
    do
    {
      v74 = *v72;
      v72 += 10;
      v73 = v74;
      if (v74 > v64)
      {
        v64 = v73;
      }

      --v71;
    }

    while (v71);
LABEL_61:
    if (v64 >= 1)
    {
      v5[503] = (v64 + 19) / 20;
    }

    if (v26 >= 8)
    {
      v77 = (v5 + 185);
      v75 = v26 & 0xFFFFFFF8;
      v78 = 0uLL;
      v79 = v75;
      v80 = 0uLL;
      do
      {
        v81.i32[0] = *v77;
        v81.i32[1] = v77[10];
        v81.i32[2] = v77[20];
        v81.i32[3] = v77[30];
        v82.i32[0] = v77[40];
        v82.i32[1] = v77[50];
        v82.i32[2] = v77[60];
        v82.i32[3] = v77[70];
        v78 = vmaxq_s32(v81, v78);
        v80 = vmaxq_s32(v82, v80);
        v77 += 80;
        v79 -= 8;
      }

      while (v79);
      v76 = vmaxvq_s32(vmaxq_s32(v78, v80));
      if (v75 == v26)
      {
LABEL_72:
        if (v76 >= 1)
        {
          v5[505] = (v76 + 9) / 10;
        }

LABEL_74:
        result = 12;
        if (a2 <= v9)
        {
          v87 = 7;
        }

        else
        {
          v87 = 21;
        }

        if (a2 <= v9)
        {
          v88 = 8;
        }

        else
        {
          v88 = 26;
        }

        if (a2 <= v9)
        {
          v89 = 12;
        }

        else
        {
          v89 = 36;
        }

        if (a2 <= v9)
        {
          v90 = 18;
        }

        else
        {
          v90 = 56;
        }

        if (a2 <= v9)
        {
          v91 = 21;
        }

        else
        {
          v91 = 64;
        }

        v92 = a3 / 640.0;
        v93 = a3 + 255;
        if (a3 < -255)
        {
          v93 = a3 + 510;
        }

        v94 = v93 >> 8;
        if (v92 >= 1.0)
        {
          v95 = 20;
        }

        else
        {
          v95 = (v92 * 20.0);
        }

        if (v94 <= v95)
        {
          v94 = v95;
        }

        if (v94 <= 2)
        {
          v96 = 2;
        }

        else
        {
          v96 = v94;
        }

        if (v96 >= v91)
        {
          v96 = v91;
        }

        v5[508] = 0;
        while (1)
        {
          v97 = a3 / v91;
          if (!(a3 % v91))
          {
            break;
          }

          v98 = v91-- <= v96;
          if (v98)
          {
            v5[508] = v96;
            v97 = (a3 + v96 - 1) / v96;
            goto LABEL_107;
          }
        }

        v5[508] = v91;
LABEL_107:
        v5[498] = v97;
        v99 = (a3 + 1) / 2;
        v100 = v99 + 255;
        if (v99 < -255)
        {
          v100 = v99 + 510;
        }

        v101 = v100 >> 8;
        if (v101 <= v95)
        {
          v101 = v95;
        }

        if (v101 <= 2)
        {
          v101 = 2;
        }

        if (v101 >= v90)
        {
          v101 = v90;
        }

        v5[510] = 0;
        while (1)
        {
          v102 = v99 / v90;
          if (!(v99 % v90))
          {
            break;
          }

          v98 = v90-- <= v101;
          if (v98)
          {
            v5[510] = v101;
            v102 = (v99 + v101 - 1) / v101;
            goto LABEL_121;
          }
        }

        v5[510] = v90;
LABEL_121:
        v5[500] = v102;
        v103 = (v99 + 1) / 2;
        v104 = v103 + 255;
        if (v103 < -255)
        {
          v104 = v103 + 510;
        }

        v105 = v104 >> 8;
        if (v105 <= v95)
        {
          v105 = v95;
        }

        if (v105 <= 2)
        {
          v105 = 2;
        }

        if (v105 >= v89)
        {
          v105 = v89;
        }

        v5[512] = 0;
        while (1)
        {
          v106 = v103 / v89;
          if (!(v103 % v89))
          {
            break;
          }

          v98 = v89-- <= v105;
          if (v98)
          {
            v5[512] = v105;
            v106 = (v103 + v105 - 1) / v105;
            goto LABEL_135;
          }
        }

        v5[512] = v89;
LABEL_135:
        v5[502] = v106;
        v107 = (v103 + 1) / 2;
        v108 = v107 + 255;
        if (v107 < -255)
        {
          v108 = v107 + 510;
        }

        v109 = v108 >> 8;
        if (v109 > v95)
        {
          v95 = v109;
        }

        if (v95 <= 2)
        {
          v95 = 2;
        }

        if (v95 >= v88)
        {
          v95 = v88;
        }

        v5[514] = 0;
        while (1)
        {
          v110 = v107 / v88;
          if (!(v107 % v88))
          {
            break;
          }

          v98 = v88-- <= v95;
          if (v98)
          {
            v5[514] = v95;
            v110 = (v107 + v95 - 1) / v95;
            goto LABEL_149;
          }
        }

        v5[514] = v88;
LABEL_149:
        v5[504] = v110;
        v111 = (v107 + 1) / 2;
        v112 = v111 + 255;
        if (v111 < -255)
        {
          v112 = v111 + 510;
        }

        v113 = v112 >> 8;
        v114 = (v92 * 10.0);
        if (v92 >= 1.0)
        {
          v114 = 10;
        }

        if (v113 <= v114)
        {
          v113 = v114;
        }

        if (v113 <= 2)
        {
          v113 = 2;
        }

        if (v113 >= v87)
        {
          v113 = v87;
        }

        v5[516] = 0;
        while (v111 % v87)
        {
          v98 = v87-- <= v113;
          if (v98)
          {
            v5[516] = v113;
            v5[506] = (v111 + v113 - 1) / v113;
            if (!v26)
            {
              return result;
            }

            goto LABEL_166;
          }
        }

        v5[516] = v87;
        v5[506] = v111 / v87;
        if (!v26)
        {
          return result;
        }

        do
        {
LABEL_166:
          v115 = v5[17];
          v5[337] = v115;
          v5[338] = 0;
          v5[339] = (v115 + 1) / 2;
          v5[340] = 0;
          v116 = ((v115 + 1) / 2 + 1) / 2;
          v5[341] = v116;
          v5[342] = 0;
          v5[343] = (v116 + 1) / 2;
          v5[344] = 0;
          *(v5 + 345) = (((v116 + 1) / 2 + 1) / 2);
          v5 += 10;
          --v26;
        }

        while (v26);
        return result;
      }
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v83 = v26 - v75;
    v84 = &v5[10 * v75 + 185];
    do
    {
      v86 = *v84;
      v84 += 10;
      v85 = v86;
      if (v86 > v76)
      {
        v76 = v85;
      }

      --v83;
    }

    while (v83);
    goto LABEL_72;
  }

  return result;
}

uint64_t sub_1E5479998(uint64_t a1, _OWORD *a2)
{
  v3 = 0;
  *a1 = &unk_1F5F0A190;
  *(a1 + 8) = xmmword_1E5493130;
  *(a1 + 24) = 0x10000004000;
  *(a1 + 32) = 14;
  *(a1 + 68) = 0x4000;
  *(a1 + 36) = xmmword_1E54931CC;
  *(a1 + 52) = unk_1E54931DC;
  *(a1 + 72) = xmmword_1E5493140;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 544) = 0x1000000001;
  *(a1 + 600) = 0;
  *(a1 + 608) = xmmword_1E5493150;
  *(a1 + 8) = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *(a1 + 72) = a2[4];
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *a2;
  v8 = 0;
  if (*a2 != 128 && v7 != 256 && v7 != 512)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorMatcher.cpp", 59, "IsConfigValid(config) && Invalid configuration", 48, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }

    v8 = *(a1 + 496);
    v3 = *(a1 + 504);
  }

  v9 = (32 * *(a1 + 12));
  v10 = v3 - v8;
  v11 = (v3 - v8) >> 4;
  v12 = v9 - v11;
  if (v9 > v11)
  {
    v13 = *(a1 + 512);
    if (v12 > (v13 - v3) >> 4)
    {
      v14 = (v3 - v8) >> 4;
      v15 = v14 + v12;
      if ((v14 + v12) >> 60)
      {
        sub_1E5415338();
      }

      v16 = v13 - v8;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 60))
        {
          operator new();
        }

        goto LABEL_49;
      }

      v24 = 16 * v14;
      v25 = 16 * v14 + 16 * v12;
      v26 = 16 * v9 - v10 - 16;
      v27 = (16 * v14);
      if (v26 < 0x70)
      {
        goto LABEL_54;
      }

      v28 = (v26 >> 4) + 1;
      v27 = (v24 + 16 * (v28 & 0x1FFFFFFFFFFFFFF8));
      v29 = (v24 + 64);
      v30 = v28 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        *(v29 - 2) = xmmword_1E5493160;
        *(v29 - 1) = xmmword_1E5493160;
        *(v29 - 4) = xmmword_1E5493160;
        *(v29 - 3) = xmmword_1E5493160;
        v29[2] = xmmword_1E5493160;
        v29[3] = xmmword_1E5493160;
        *v29 = xmmword_1E5493160;
        v29[1] = xmmword_1E5493160;
        v29 += 8;
        v30 -= 8;
      }

      while (v30);
      if (v28 != (v28 & 0x1FFFFFFFFFFFFFF8))
      {
LABEL_54:
        do
        {
          *v27++ = xmmword_1E5493160;
        }

        while (v27 != v25);
      }

      v31 = *(a1 + 496);
      v32 = *(a1 + 504) - v31;
      v33 = v24 - v32;
      memcpy((v24 - v32), v31, v32);
      *(a1 + 496) = v33;
      *(a1 + 504) = v25;
      *(a1 + 512) = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_33;
    }

    v18 = &v3[v12];
    v19 = 16 * v9 - v10 - 16;
    if (v19 >= 0x70)
    {
      v21 = (v19 >> 4) + 1;
      v20 = &v3[v21 & 0x1FFFFFFFFFFFFFF8];
      v22 = v3 + 4;
      v23 = v21 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        *(v22 - 2) = xmmword_1E5493160;
        *(v22 - 1) = xmmword_1E5493160;
        *(v22 - 4) = xmmword_1E5493160;
        *(v22 - 3) = xmmword_1E5493160;
        v22[2] = xmmword_1E5493160;
        v22[3] = xmmword_1E5493160;
        *v22 = xmmword_1E5493160;
        v22[1] = xmmword_1E5493160;
        v22 += 8;
        v23 -= 8;
      }

      while (v23);
      if (v21 == (v21 & 0x1FFFFFFFFFFFFFF8))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v20 = v3;
    }

    do
    {
      *v20++ = xmmword_1E5493160;
    }

    while (v20 != v18);
LABEL_25:
    *(a1 + 504) = v18;
LABEL_33:
    v9 = (32 * *(a1 + 12));
    goto LABEL_34;
  }

  if (v9 < v11)
  {
    *(a1 + 504) = v8 + 16 * v9;
  }

LABEL_34:
  v35 = *(a1 + 472);
  v34 = *(a1 + 480);
  v36 = 0x8E38E38E38E38E39 * ((v34 - v35) >> 2);
  v37 = v9 - v36;
  if (v9 <= v36)
  {
    if (v9 < v36)
    {
      *(a1 + 480) = v35 + 36 * v9;
    }
  }

  else
  {
    v38 = *(a1 + 488);
    if (0x8E38E38E38E38E39 * ((v38 - v34) >> 2) < v37)
    {
      v39 = 0x8E38E38E38E38E39 * ((v38 - v35) >> 2);
      v40 = 2 * v39;
      if (2 * v39 <= v9)
      {
        v40 = v9;
      }

      if (v39 >= 0x38E38E38E38E38ELL)
      {
        v41 = 0x71C71C71C71C71CLL;
      }

      else
      {
        v41 = v40;
      }

      if (v41 <= 0x71C71C71C71C71CLL)
      {
        operator new();
      }

LABEL_49:
      sub_1E53E5340();
    }

    v42 = v34 + 36 * v37;
    v43 = 36 * v9 - 36 * v36;
    do
    {
      *(v34 + 32) = 0;
      *v34 = 0xFFFFFFFFFFFFFLL;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 8) = 0;
      *(v34 + 32) = 0;
      v34 += 36;
      v43 -= 36;
    }

    while (v43);
    *(a1 + 480) = v42;
  }

  *(a1 + 548) = *(a1 + 8) >> 5;
  return a1;
}

void sub_1E5479E8C(_Unwind_Exception *exception_object)
{
  v4 = v1[65];
  if (v4)
  {
    v1[66] = v4;
    operator delete(v4);
    v5 = v1[62];
    if (!v5)
    {
LABEL_3:
      v6 = v1[59];
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v5 = v1[62];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  v1[63] = v5;
  operator delete(v5);
  v6 = v1[59];
  if (!v6)
  {
LABEL_4:
    v7 = v1[56];
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v1[60] = v6;
  operator delete(v6);
  v7 = v1[56];
  if (!v7)
  {
LABEL_5:
    v8 = v1[53];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v1[57] = v7;
  operator delete(v7);
  v8 = v1[53];
  if (!v8)
  {
LABEL_6:
    v9 = v1[50];
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v1[54] = v8;
  operator delete(v8);
  v9 = v1[50];
  if (!v9)
  {
LABEL_7:
    v10 = v1[47];
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v1[51] = v9;
  operator delete(v9);
  v10 = v1[47];
  if (!v10)
  {
LABEL_8:
    v11 = v1[44];
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v1[48] = v10;
  operator delete(v10);
  v11 = v1[44];
  if (!v11)
  {
LABEL_9:
    v12 = v1[41];
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v1[45] = v11;
  operator delete(v11);
  v12 = v1[41];
  if (!v12)
  {
LABEL_10:
    v13 = v1[38];
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v1[42] = v12;
  operator delete(v12);
  v13 = v1[38];
  if (!v13)
  {
LABEL_11:
    v14 = v1[35];
    if (!v14)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v1[39] = v13;
  operator delete(v13);
  v14 = v1[35];
  if (!v14)
  {
LABEL_12:
    v15 = v1[32];
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v1[36] = v14;
  operator delete(v14);
  v15 = v1[32];
  if (!v15)
  {
LABEL_13:
    v16 = v1[29];
    if (!v16)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v1[33] = v15;
  operator delete(v15);
  v16 = v1[29];
  if (!v16)
  {
LABEL_14:
    v17 = v1[26];
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v1[30] = v16;
  operator delete(v16);
  v17 = v1[26];
  if (!v17)
  {
LABEL_15:
    v18 = v1[23];
    if (!v18)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v1[27] = v17;
  operator delete(v17);
  v18 = v1[23];
  if (!v18)
  {
LABEL_16:
    v19 = v1[20];
    if (!v19)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v1[24] = v18;
  operator delete(v18);
  v19 = v1[20];
  if (!v19)
  {
LABEL_17:
    v20 = v1[17];
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v1[21] = v19;
  operator delete(v19);
  v20 = v1[17];
  if (!v20)
  {
LABEL_18:
    v21 = v1[14];
    if (!v21)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v1[18] = v20;
  operator delete(v20);
  v21 = v1[14];
  if (!v21)
  {
LABEL_19:
    v22 = *v2;
    if (!*v2)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_38:
  v1[15] = v21;
  operator delete(v21);
  v22 = *v2;
  if (!*v2)
  {
LABEL_20:
    _Unwind_Resume(exception_object);
  }

LABEL_39:
  v1[12] = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1E547A060(uint64_t result)
{
  *(result + 568) = 0u;
  *(result + 584) = 0u;
  *(result + 552) = 0u;
  *(result + 96) = *(result + 88);
  *(result + 120) = *(result + 112);
  *(result + 144) = *(result + 136);
  *(result + 168) = *(result + 160);
  *(result + 192) = *(result + 184);
  *(result + 216) = *(result + 208);
  *(result + 240) = *(result + 232);
  *(result + 264) = *(result + 256);
  *(result + 288) = *(result + 280);
  *(result + 312) = *(result + 304);
  *(result + 336) = *(result + 328);
  *(result + 360) = *(result + 352);
  *(result + 384) = *(result + 376);
  *(result + 408) = *(result + 400);
  *(result + 432) = *(result + 424);
  *(result + 456) = *(result + 448);
  *(result + 528) = *(result + 520);
  v1 = *(result + 496);
  v2 = *(result + 504) - v1;
  v3 = v2 >> 4;
  *(result + 600) = 0;
  if (v2 >> 4 >= 1)
  {
    if (v3 >= 8)
    {
      v4 = (v2 >> 4) & 7;
      v5 = &v1[v3 & 0x7FFFFFFFFFFFFFF8];
      v6 = v1 + 4;
      v7 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        *(v6 - 2) = xmmword_1E5493160;
        *(v6 - 1) = xmmword_1E5493160;
        *(v6 - 4) = xmmword_1E5493160;
        *(v6 - 3) = xmmword_1E5493160;
        v6[2] = xmmword_1E5493160;
        v6[3] = xmmword_1E5493160;
        *v6 = xmmword_1E5493160;
        v6[1] = xmmword_1E5493160;
        v6 += 8;
        v7 -= 8;
      }

      while (v7);
      if (v3 == (v3 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = v2 >> 4;
      v5 = v1;
    }

    *v5 = xmmword_1E5493160;
    if (v4 >= 2)
    {
      v5[1] = xmmword_1E5493160;
      if (v4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5[2] = xmmword_1E5493160;
        if ((v4 & 6) != 2)
        {
          v5[3] = xmmword_1E5493160;
          if (v4 - 5 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v5[4] = xmmword_1E5493160;
            if ((v4 & 6) != 4)
            {
              v5[5] = xmmword_1E5493160;
              if (v4 - 7 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v5[6] = xmmword_1E5493160;
              }
            }
          }
        }
      }
    }
  }

LABEL_14:
  v8 = *(result + 472);
  v9 = *(result + 480) - v8;
  if (v9 >= 1)
  {
    v10 = v9 / 0x24uLL + 1;
    do
    {
      *v8 = 0xFFFFFFFFFFFFFLL;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v8 + 32) = 0;
      v8 += 36;
      --v10;
    }

    while (v10 > 1);
  }

  return result;
}

uint64_t sub_1E547A21C(uint64_t result, void *a2)
{
  if ((*(result + 12) & 0x7FFFFFF) != 0)
  {
    v2 = a2;
    v3 = 0;
    v34 = result;
    v35 = result + 88;
    do
    {
      v4 = *v2 + 200 * v3;
      if (*(v4 + 16) == 0x3FFF)
      {
        break;
      }

      v5 = 0;
      v6 = 200 * v3;
      v38 = (*(v4 + 12) >> 5) + 8 * *(v4 + 24);
      v7 = v35 + 24 * v38;
      v36 = v3;
      v8 = 32;
      do
      {
        v9 = *v2 + v6;
        v11 = *(v7 + 8);
        v10 = *(v7 + 16);
        if (v11 >= v10)
        {
          v39 = v5;
          v17 = *v7;
          v18 = 0x8F5C28F5C28F5C29 * ((v11 - *v7) >> 3);
          v19 = v18 + 1;
          if (v18 + 1 > 0x147AE147AE147AELL)
          {
            sub_1E5415338();
          }

          v20 = 0x8F5C28F5C28F5C29 * ((v10 - v17) >> 3);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0xA3D70A3D70A3D7)
          {
            v21 = 0x147AE147AE147AELL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (v21 <= 0x147AE147AE147AELL)
            {
              operator new();
            }

            sub_1E53E5340();
          }

          v22 = 8 * ((v11 - *v7) >> 3);
          v23 = *(v9 + 128);
          v24 = *v9;
          v25 = *(v9 + 16);
          v26 = *(v9 + 48);
          *(v22 + 32) = *(v9 + 32);
          *(v22 + 48) = v26;
          *v22 = v24;
          *(v22 + 16) = v25;
          v27 = *(v9 + 64);
          v28 = *(v9 + 80);
          v29 = *(v9 + 112);
          *(v22 + 96) = *(v9 + 96);
          *(v22 + 112) = v29;
          *(v22 + 64) = v27;
          *(v22 + 80) = v28;
          *(v22 + 128) = v23;
          *(v22 + 196) = v3;
          v30 = *(v9 + 132);
          v31 = *(v9 + 148);
          v32 = *(v9 + 164);
          *(v22 + 180) = *(v9 + 180);
          *(v22 + 164) = v32;
          *(v22 + 148) = v31;
          *(v22 + 132) = v30;
          v16 = 200 * v18 + 200;
          memcpy((200 * v18 - (v11 - v17)), v17, v11 - v17);
          *v7 = 200 * v18 - (v11 - v17);
          *(v7 + 8) = v16;
          *(v7 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v2 = a2;
          v5 = v39;
        }

        else
        {
          v12 = *(v9 + 128);
          memmove(*(v7 + 8), (*v2 + v6), 0x80uLL);
          *(v11 + 128) = v12;
          *(v11 + 132) = 0u;
          *(v11 + 148) = 0u;
          *(v11 + 164) = 0u;
          *(v11 + 180) = 0u;
          *(v11 + 196) = v3;
          v13 = *(v9 + 132);
          v14 = *(v9 + 148);
          v15 = *(v9 + 164);
          *(v11 + 180) = *(v9 + 180);
          *(v11 + 164) = v15;
          *(v11 + 148) = v14;
          v16 = v11 + 200;
          *(v11 + 132) = v13;
        }

        *(v7 + 8) = v16;
        v33 = *v2 + v6;
        v5 |= *(v33 + 16) == 0x3FFF;
        if ((v5 & 1) == 0 && (*(v33 + 12) >> 5) + 8 * *(v33 + 24) != v38 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorMatcher.cpp", 142, "bin_i == bin && bin mismatch", 30, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          abort();
        }

        v6 += 200;
        ++v3;
        --v8;
      }

      while (v8);
      v3 = v36 + 32;
      result = v34;
    }

    while (v36 + 32 != 32 * *(v34 + 12));
  }

  else
  {
    v3 = 0;
  }

  *(result + 604) = v3;
  return result;
}

uint64_t sub_1E547A52C()
{
  result = MEMORY[0x1EEE9AC00]();
  v2 = result;
  if ((*(result + 12) & 0x7FFFFFF) != 0)
  {
    v3 = v1;
    v4 = 0;
    do
    {
      if (*(*v3 + 200 * v4 + 16) == 0x3FFF)
      {
        break;
      }

      sub_1E547B0BC(v9, v3, v4);
      sub_1E547A84C(v2, v9, v10);
      if (((v10 + 1) & 7) != 0)
      {
        v5 = v10 + 1;
      }

      else
      {
        v5 = v10 - 7;
      }

      sub_1E547A84C(v2, v9, v5);
      v6 = v10 - 1;
      if (v10 == 8)
      {
        v6 = 15;
      }

      v7 = v10 >= 1 ? v6 : 7;
      result = sub_1E547A84C(v2, v9, v7);
      v4 += 32;
    }

    while (v4 != 32 * *(v2 + 12));
    v8 = v4 >> 5;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 576) = v8;
  return result;
}

void sub_1E547A644(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if ((v3 & 0x7FFFFFF) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 4;
    do
    {
      v9 = (*(a1 + 496) + v8);
      v10 = *v9;
      if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 528) - *(a1 + 520)) >> 2) < (*(a1 + 16) - 1) && v10 != 0xFFFFF)
      {
        v12 = *(a1 + 472) + 36 * ((v10 - (*(a1 + 608) >> 4)) & 0xFFFFFFFFFFFFFFFLL);
        if (*(a1 + 616) + (v5 & 0xFFFFFFFC) == *(v12 + 4))
        {
          v13 = *(v9 - 1);
          v14 = *(v12 + 32);
          v16 = *(v12 + 24);
          v15 = *(v12 + 28);
          v17 = *(v12 + 16);
          v18 = *(v12 + 20);
          v19 = *(v12 + 12);
          v20 = (*a2 + v6);
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[4];
          v27 = __PAIR64__(v16, v17);
          *&v30 = __PAIR64__(v7, v22);
          v25 = __PAIR64__(v15, v19);
          v28 = __PAIR64__(v20[8], v21);
          v26 = v14 & 1;
          v29 = *(v20 + 24);
          *(&v30 + 1) = __PAIR64__(v13, v23);
          if (v16 >= 0x1000 && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorMatcher.cpp", 416, "MB1.desc_index >= 0 && MB1.desc_index < 4096 && DesMatch: Invalid index  ", 75, &unk_1E549A011, 0, sub_1E548FDE0))
          {
            abort();
          }

          if (!v18)
          {
            v18 = *(a1 + 544);
            if ((v18 + 1) > 1)
            {
              v24 = v18 + 1;
            }

            else
            {
              v24 = 1;
            }

            *(a1 + 544) = v24;
          }

          v31 = v18;
          *(*a2 + v6 + 128) = v18;
          sub_1E547ADDC(a1 + 520, &v25);
          v3 = *(a1 + 12);
        }
      }

      ++v7;
      v6 += 200;
      v5 += 4;
      v8 += 16;
    }

    while (v7 < (32 * v3));
  }

  v26 = 0;
  v25 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v30 = xmmword_1E5493170;
  v31 = 0;
  sub_1E547ADDC(a1 + 520, &v25);
}

uint64_t sub_1E547A84C(uint64_t result, _DWORD *a2, int a3)
{
  v3 = result + 24 * a3;
  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = (v3 + 88);
  if (v5 != v4)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v4 + 200 * v9;
      if (*(v11 + 16) == 0x3FFF)
      {
        return result;
      }

      v23 = 0;
      result = (*(*v8 + 16))(v8, v11, &v23 + 4, &v23);
      if (SHIDWORD(v23) > v8[20] || SHIDWORD(v23) < v8[18] || v23 > v8[21] || v23 < v8[19])
      {
        v12 = 0;
        ++v8[140];
      }

      else
      {
        v12 = 1;
      }

      v13 = a2;
      v14 = 32;
      while (1)
      {
        v15 = v13[4];
        if (v15 == 0x3FFF)
        {
          break;
        }

        v16 = (HIDWORD(v23) - (*v13 >> 6)) * (HIDWORD(v23) - (*v13 >> 6)) + (v23 - (v13[1] >> 6)) * (v23 - (v13[1] >> 6));
        v17 = v8[6];
        v18 = v16 > v17;
        v19 = v16 <= v17;
        if (v18)
        {
          ++v8[141];
          v15 = v13[4];
        }

        v20 = v15 - *(v11 + 16);
        if (v20 < 0)
        {
          v20 = -v20;
        }

        if (v20 > v8[7])
        {
          v19 = 0;
          ++v8[142];
        }

        v21 = v13[3] - *(v11 + 12);
        if (v21 < 0)
        {
          v21 = *(v11 + 12) - v13[3];
        }

        if (v21 > 0x80)
        {
          v21 = 256 - v21;
        }

        if (v21 <= v8[8])
        {
          if ((v12 & v19) != 1)
          {
            goto LABEL_25;
          }

          ++v8[138];
          v22 = 0;
          result = (*(*v8 + 24))(v8, v13, v11, &v22);
          v13 += 50;
          if (!--v14)
          {
            break;
          }
        }

        else
        {
          ++v8[143];
LABEL_25:
          ++v8[139];
          v13 += 50;
          if (!--v14)
          {
            break;
          }
        }
      }

      v4 = *v6;
      v9 = ++v10;
    }

    while (0x8F5C28F5C28F5C29 * ((v6[1] - *v6) >> 3) > v10);
  }

  return result;
}

uint64_t sub_1E547AAB4(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v7 = result;
  v8 = *(result + 548);
  if (v8 >= 0x11)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include_private/VIO/Hardware/KeyPointAndDescriptorMatcherUtils.h", 40, "hamv_size <= 16", 15, &unk_1E549A011, 0, sub_1E548FDE0);
    if (result)
    {
      goto LABEL_40;
    }
  }

  else if (!v8)
  {
    *a4 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(a3 + 132 + 4 * v9);
    v12 = *(a2 + 132 + 4 * v9);
    if (v12 != v11)
    {
      v13 = v12 ^ v11;
      do
      {
        ++v10;
        v13 &= v13 - 1;
      }

      while (v13);
    }

    ++v9;
  }

  while (v9 != v8);
  *a4 = v10;
  if (v10 >= 0x1D8)
  {
    result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointAndDescriptorMatcher.cpp", 285, "hamming_distance <= 471", 23, &unk_1E549A011, 0, sub_1E548FDE0);
    if ((result & 1) == 0)
    {
      v10 = *a4;
      goto LABEL_14;
    }

LABEL_40:
    abort();
  }

LABEL_14:
  if (v10 > *(v7 + 20))
  {
    ++*(v7 + 584);
    return result;
  }

LABEL_17:
  ++*(v7 + 580);
  v14 = *a4;
  v15 = *(a3 + 196);
  v16 = (*(v7 + 496) + 16 * v15);
  if (*a4 >= *v16)
  {
    if (v14 != *v16)
    {
      goto LABEL_30;
    }

    v17 = *(a2 + 20);
    v18 = v16[2];
    if (v17 < v18)
    {
      if (v16[1] == 0xFFFFF)
      {
        ++*(v7 + 596);
        v14 = *a4;
      }

      v19 = (*(v7 + 608) + (16 * *(a2 + 196))) >> 4;
      *v16 = v14;
      v16[1] = v19;
      v18 = *(a2 + 20);
      v16[2] = v18;
      v16[3] = (*(a2 + 12) >> 5) + 8 * *(a2 + 24);
      v17 = *(a2 + 20);
    }

    if (v17 != v18 || (*(a2 + 12) >> 5) + 8 * *(a2 + 24) >= v16[3])
    {
      goto LABEL_30;
    }
  }

  else if (v16[1] == 0xFFFFF)
  {
    ++*(v7 + 596);
  }

  else
  {
    ++*(v7 + 600);
  }

  v20 = (*(v7 + 608) + (16 * *(a2 + 196))) >> 4;
  *v16 = *a4;
  v16[1] = v20;
  v16[2] = *(a2 + 20);
  v16[3] = (*(a2 + 12) >> 5) + 8 * *(a2 + 24);
LABEL_30:
  v21 = *a4;
  v22 = *(a2 + 196);
  v23 = *(v7 + 472) + 36 * v22;
  if (*a4 < *v23)
  {
    if (*(v23 + 4) != 0xFFFFF)
    {
      ++*(v7 + 592);
      goto LABEL_38;
    }

LABEL_32:
    ++*(v7 + 588);
LABEL_38:
    v21 = *a4;
LABEL_39:
    v24 = *(v7 + 616);
    *v23 = v21;
    *(v23 + 4) = v24 + 4 * v15;
    *(v23 + 8) = *(a3 + 20);
    *(v23 + 12) = *a2;
    v25 = *(a2 + 128);
    *(v23 + 16) = *(a2 + 4);
    *(v23 + 20) = v25;
    *(v23 + 24) = v22;
    *(v23 + 28) = *(a2 + 32);
    *(v23 + 32) = *(a2 + 24);
    return result;
  }

  if (v21 == *v23 && *(a3 + 20) < *(v23 + 8))
  {
    if (*(v23 + 4) != 0xFFFFF)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  return result;
}

void sub_1E547ADDC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 12);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 52;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 2);
  v11 = v10 + 1;
  if ((v10 + 1) > 0x4EC4EC4EC4EC4ECLL)
  {
    sub_1E5415338();
  }

  v12 = 0x4EC4EC4EC4EC4EC5 * ((v4 - v9) >> 2);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x276276276276276)
  {
    v13 = 0x4EC4EC4EC4EC4ECLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x4EC4EC4EC4EC4ECLL)
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v14 = 4 * ((v3 - *a1) >> 2);
  v15 = a2[1];
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = a2[2];
  *(v14 + 48) = *(a2 + 12);
  v8 = 52 * v10 + 52;
  v16 = 52 * v10 - (v3 - v9);
  memcpy((v14 - (v3 - v9)), v9, v3 - v9);
  *a1 = v16;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

void sub_1E547AF50(int *a1, unsigned int *a2, int *a3, _DWORD *a4)
{
  v6 = *a2 >> 6;
  v7 = a2[1] >> 6;
  v8 = a1[9] * v6 + a1[10] * v7 + a1[11];
  v9 = a1[12] * v6 + a1[13] * v7 + a1[14];
  v10 = a1[15] * v6 + a1[16] * v7 + a1[17];
  if (v10)
  {
    v11 = sub_1E53DCDBC(16, v8);
    v12 = sub_1E53DCDBC(16, v9);
    v13 = sub_1E53DCDBC(16, v10);
    sub_1E53DCE08(v13);
    v15 = v11 * v14;
    v16 = v12 * v14;
    v17 = sub_1E53DCDBC(16, v15);
    v18 = sub_1E53DCDBC(16, v16);
    if (v17 >= 1023)
    {
      v19 = 1023;
    }

    else
    {
      v19 = v17;
    }

    if (v19 <= -1024)
    {
      v19 = -1024;
    }
  }

  else
  {
    v20 = v8 >> 14;
    if (v20 >= 1023)
    {
      LODWORD(v20) = 1023;
    }

    if (v20 <= -1024)
    {
      v19 = -1024;
    }

    else
    {
      v19 = v20;
    }

    v18 = v9 >> 14;
  }

  if (v18 >= 1023)
  {
    LODWORD(v18) = 1023;
  }

  if (v18 <= -1024)
  {
    LODWORD(v18) = -1024;
  }

  *a3 = v19;
  *a4 = v18;
}

void sub_1E547B084(void *a1)
{
  sub_1E5460014(a1);

  JUMPOUT(0x1E6928650);
}

uint64_t sub_1E547B0BC(uint64_t a1, void *a2, unsigned int a3)
{
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 16) = 0x3FFF;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 216) = 0x3FFF;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 416) = 0x3FFF;
  *(a1 + 792) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 616) = 0x3FFF;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 816) = 0x3FFF;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1016) = 0x3FFF;
  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1216) = 0x3FFF;
  *(a1 + 1592) = 0;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1416) = 0x3FFF;
  *(a1 + 1792) = 0;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1616) = 0x3FFF;
  *(a1 + 1992) = 0;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1816) = 0x3FFF;
  *(a1 + 2192) = 0;
  *(a1 + 2176) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2144) = 0u;
  *(a1 + 2128) = 0u;
  *(a1 + 2016) = 0x3FFF;
  *(a1 + 2392) = 0;
  *(a1 + 2360) = 0u;
  *(a1 + 2376) = 0u;
  *(a1 + 2328) = 0u;
  *(a1 + 2344) = 0u;
  *(a1 + 2216) = 0x3FFF;
  *(a1 + 2592) = 0;
  *(a1 + 2576) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2544) = 0u;
  *(a1 + 2528) = 0u;
  *(a1 + 2416) = 0x3FFF;
  *(a1 + 2792) = 0;
  *(a1 + 2760) = 0u;
  *(a1 + 2776) = 0u;
  *(a1 + 2728) = 0u;
  *(a1 + 2744) = 0u;
  *(a1 + 2616) = 0x3FFF;
  *(a1 + 2992) = 0;
  *(a1 + 2976) = 0u;
  *(a1 + 2960) = 0u;
  *(a1 + 2944) = 0u;
  *(a1 + 2928) = 0u;
  *(a1 + 2816) = 0x3FFF;
  *(a1 + 3192) = 0;
  *(a1 + 3160) = 0u;
  *(a1 + 3176) = 0u;
  *(a1 + 3128) = 0u;
  *(a1 + 3144) = 0u;
  *(a1 + 3016) = 0x3FFF;
  *(a1 + 3392) = 0;
  *(a1 + 3376) = 0u;
  *(a1 + 3360) = 0u;
  *(a1 + 3344) = 0u;
  *(a1 + 3328) = 0u;
  *(a1 + 3216) = 0x3FFF;
  *(a1 + 3592) = 0;
  *(a1 + 3560) = 0u;
  *(a1 + 3576) = 0u;
  *(a1 + 3528) = 0u;
  *(a1 + 3544) = 0u;
  *(a1 + 3416) = 0x3FFF;
  *(a1 + 3792) = 0;
  *(a1 + 3776) = 0u;
  *(a1 + 3760) = 0u;
  *(a1 + 3744) = 0u;
  *(a1 + 3728) = 0u;
  *(a1 + 3616) = 0x3FFF;
  *(a1 + 3992) = 0;
  *(a1 + 3960) = 0u;
  *(a1 + 3976) = 0u;
  *(a1 + 3928) = 0u;
  *(a1 + 3944) = 0u;
  *(a1 + 3816) = 0x3FFF;
  *(a1 + 4192) = 0;
  *(a1 + 4176) = 0u;
  *(a1 + 4160) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4128) = 0u;
  *(a1 + 4016) = 0x3FFF;
  *(a1 + 4392) = 0;
  *(a1 + 4360) = 0u;
  *(a1 + 4376) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0u;
  *(a1 + 4216) = 0x3FFF;
  *(a1 + 4592) = 0;
  *(a1 + 4576) = 0u;
  *(a1 + 4560) = 0u;
  *(a1 + 4544) = 0u;
  *(a1 + 4528) = 0u;
  *(a1 + 4416) = 0x3FFF;
  *(a1 + 4792) = 0;
  *(a1 + 4760) = 0u;
  *(a1 + 4776) = 0u;
  *(a1 + 4728) = 0u;
  *(a1 + 4744) = 0u;
  *(a1 + 4616) = 0x3FFF;
  *(a1 + 4992) = 0;
  *(a1 + 4976) = 0u;
  *(a1 + 4960) = 0u;
  *(a1 + 4944) = 0u;
  *(a1 + 4928) = 0u;
  *(a1 + 4816) = 0x3FFF;
  *(a1 + 5192) = 0;
  *(a1 + 5160) = 0u;
  *(a1 + 5176) = 0u;
  *(a1 + 5128) = 0u;
  *(a1 + 5144) = 0u;
  *(a1 + 5016) = 0x3FFF;
  *(a1 + 5392) = 0;
  *(a1 + 5376) = 0u;
  *(a1 + 5360) = 0u;
  *(a1 + 5344) = 0u;
  *(a1 + 5328) = 0u;
  *(a1 + 5216) = 0x3FFF;
  *(a1 + 5592) = 0;
  *(a1 + 5560) = 0u;
  *(a1 + 5576) = 0u;
  *(a1 + 5528) = 0u;
  *(a1 + 5544) = 0u;
  *(a1 + 5416) = 0x3FFF;
  *(a1 + 5792) = 0;
  *(a1 + 5776) = 0u;
  *(a1 + 5760) = 0u;
  *(a1 + 5744) = 0u;
  *(a1 + 5728) = 0u;
  *(a1 + 5616) = 0x3FFF;
  *(a1 + 5992) = 0;
  *(a1 + 5960) = 0u;
  *(a1 + 5976) = 0u;
  *(a1 + 5928) = 0u;
  *(a1 + 5944) = 0u;
  *(a1 + 5816) = 0x3FFF;
  *(a1 + 6192) = 0;
  *(a1 + 6176) = 0u;
  *(a1 + 6160) = 0u;
  *(a1 + 6144) = 0u;
  *(a1 + 6128) = 0u;
  *(a1 + 6016) = 0x3FFF;
  *(a1 + 6392) = 0;
  *(a1 + 6360) = 0u;
  *(a1 + 6376) = 0u;
  *(a1 + 6328) = 0u;
  *(a1 + 6344) = 0u;
  *(a1 + 6216) = 0x3FFF;
  v7 = *a2 + 200 * a3;
  v8 = *(v7 + 128);
  v18 = *(v7 + 132);
  v20 = *(v7 + 148);
  v22 = *(v7 + 164);
  v24 = *(v7 + 180);
  memmove(a1, v7, 0x80uLL);
  v9 = 0;
  *(a1 + 132) = v18;
  *(a1 + 148) = v20;
  *(a1 + 164) = v22;
  *(a1 + 128) = v8;
  *(a1 + 180) = v24;
  *(a1 + 196) = a3;
  v10 = *(a1 + 16) == 0x3FFF;
  *(a1 + 6404) = (*(a1 + 12) >> 5) + 8 * *(a1 + 24);
  v11 = -31;
  do
  {
    v13 = a3 + v11 + 32;
    v14 = *a2 + 200 * v13;
    v15 = *(v14 + 128);
    v19 = *(v14 + 132);
    v21 = *(v14 + 148);
    v23 = *(v14 + 164);
    v25 = *(v14 + 180);
    v16 = a1 + v9;
    memmove((a1 + v9 + 200), v14, 0x80uLL);
    *(v16 + 328) = v15;
    *(v16 + 332) = v19;
    *(v16 + 348) = v21;
    *(v16 + 364) = v23;
    *(v16 + 380) = v25;
    *(v16 + 396) = v13;
    v10 |= *(a1 + v9 + 216) == 0x3FFF;
    if ((v10 & 1) == 0 && (*(v16 + 212) >> 5) + 8 * *(v16 + 224) != *(a1 + 6404) && sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/include_private/VIO/Hardware/KeyPointAndDescriptorMatcherUtils.h", 69, "bin_i == bin && bin mismatch", 30, &unk_1E549A011, 0, sub_1E548FDE0))
    {
      abort();
    }

    v9 += 200;
  }

  while (!__CFADD__(v11++, 1));
  *(a1 + 6400) = a3;
  return a1;
}

void sub_1E547B560(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *a1 = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = sub_1E547D414;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 1065353216;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  operator new();
}

void sub_1E547B648(_Unwind_Exception *a1)
{
  v7 = *(v1 + 328);
  if (v7)
  {
    *(v1 + 336) = v7;
    operator delete(v7);
    v8 = *(v1 + 304);
    if (!v8)
    {
LABEL_3:
      sub_1E547EE14(v3);
      v9 = *(v1 + 248);
      *(v1 + 248) = 0;
      if (!v9)
      {
LABEL_8:
        v11 = *(v1 + 224);
        if (v11)
        {
          *(v1 + 232) = v11;
          operator delete(v11);
          v12 = *(v1 + 200);
          if (!v12)
          {
LABEL_10:
            v13 = *(v1 + 176);
            if (!v13)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v12 = *(v1 + 200);
          if (!v12)
          {
            goto LABEL_10;
          }
        }

        *(v1 + 208) = v12;
        operator delete(v12);
        v13 = *(v1 + 176);
        if (!v13)
        {
LABEL_11:
          v14 = *(v1 + 152);
          if (!v14)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }

LABEL_20:
        *(v1 + 184) = v13;
        operator delete(v13);
        v14 = *(v1 + 152);
        if (!v14)
        {
LABEL_12:
          v15 = *(v1 + 128);
          if (!v15)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }

LABEL_21:
        *(v1 + 160) = v14;
        operator delete(v14);
        v15 = *(v1 + 128);
        if (!v15)
        {
LABEL_13:
          v16 = *(v1 + 104);
          if (!v16)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }

LABEL_22:
        *(v1 + 136) = v15;
        operator delete(v15);
        v16 = *(v1 + 104);
        if (!v16)
        {
LABEL_14:
          v17 = *(v1 + 80);
          if (!v17)
          {
            goto LABEL_15;
          }

          goto LABEL_24;
        }

LABEL_23:
        *(v1 + 112) = v16;
        operator delete(v16);
        v17 = *(v1 + 80);
        if (!v17)
        {
LABEL_15:
          v18 = *(v1 + 56);
          if (!v18)
          {
            goto LABEL_16;
          }

          goto LABEL_25;
        }

LABEL_24:
        *(v1 + 88) = v17;
        operator delete(v17);
        v18 = *(v1 + 56);
        if (!v18)
        {
LABEL_16:
          v19 = *v5;
          if (!*v5)
          {
            goto LABEL_17;
          }

          goto LABEL_26;
        }

LABEL_25:
        *(v1 + 64) = v18;
        operator delete(v18);
        v19 = *v5;
        if (!*v5)
        {
LABEL_17:
          sub_1E541B450(v2, *v4);
          _Unwind_Resume(a1);
        }

LABEL_26:
        *(v1 + 40) = v19;
        operator delete(v19);
        sub_1E541B450(v2, *v4);
        _Unwind_Resume(a1);
      }

LABEL_7:
      (*(v1 + 256))();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *(v1 + 304);
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 312) = v8;
  operator delete(v8);
  sub_1E547EE14(v3);
  v10 = *(v1 + 248);
  *(v1 + 248) = 0;
  if (!v10)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_1E547B7A4(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 304);
  if (v3)
  {
    *(a1 + 312) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v7)
  {
    (*(a1 + 256))();
  }

  v8 = *(a1 + 224);
  if (v8)
  {
    *(a1 + 232) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    *(a1 + 208) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 176);
  if (v10)
  {
    *(a1 + 184) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    *(a1 + 160) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 128);
  if (v12)
  {
    *(a1 + 136) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 104);
  if (v13)
  {
    *(a1 + 112) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    *(a1 + 88) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    *(a1 + 64) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    *(a1 + 40) = v16;
    operator delete(v16);
  }

  sub_1E541B450(a1 + 8, *(a1 + 16));
  return a1;
}

void sub_1E547B8C4(void *a1, unint64_t **a2)
{
  v3 = (a1[5] - a1[4]) >> 8;
  v4 = v3 + ((a1[8] - a1[7]) >> 8);
  v6 = *a2;
  v5 = a2[1];
  if (v4 < v5 - *a2)
  {
    if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointDescriptorStore.cpp", 83, "final_num_keypoints <= max_valid_idx", 36, &unk_1E549A011, 0, sub_1E548FDE0))
    {
LABEL_30:
      abort();
    }

    v6 = *a2;
    v5 = a2[1];
  }

  v8 = a1[10];
  for (a1[11] = v8; v6 != v5; ++v6)
  {
    while (1)
    {
      v9 = *v6;
      if (*v6 > v4)
      {
        if (sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointDescriptorStore.cpp", 88, "id <= max_valid_idx", 19, &unk_1E549A011, 0, sub_1E548FDE0))
        {
          goto LABEL_30;
        }

        v8 = a1[11];
      }

      v10 = v9 >= v3 ? 56 : 32;
      v11 = *(a1 + v10);
      v12 = v9 >= v3 ? v3 : 0;
      v13 = (v11 + ((v9 - v12) << 8));
      v36 = v13[13];
      v37 = v13[14];
      v38 = v13[15];
      v32 = v13[8];
      v33 = v13[9];
      v34 = v13[10];
      v35 = v13[11];
      v28 = v13[4];
      v29 = v13[5];
      v30 = v13[6];
      v31 = v13[7];
      v24 = *v13;
      v25 = v13[1];
      v26 = v13[2];
      v27 = v13[3];
      v14 = a1[12];
      if (v8 >= v14)
      {
        break;
      }

      memmove(v8, v13, 0x100uLL);
      v8 += 256;
      a1[11] = v8;
      if (++v6 == v5)
      {
        return;
      }
    }

    v15 = a1[10];
    v16 = v8 - v15;
    v17 = (v8 - v15) >> 8;
    v18 = v17 + 1;
    if ((v17 + 1) >> 56)
    {
      sub_1E5415338();
    }

    v19 = v14 - v15;
    if (v19 >> 7 > v18)
    {
      v18 = v19 >> 7;
    }

    if (v19 >= 0x7FFFFFFFFFFFFF00)
    {
      v20 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (!HIBYTE(v20))
      {
        operator new();
      }

      sub_1E53E5340();
    }

    v21 = v17;
    v22 = (v17 << 8);
    v22[12] = v13[12];
    v22[13] = v36;
    v22[14] = v37;
    v22[15] = v38;
    v22[8] = v32;
    v22[9] = v33;
    v22[10] = v34;
    v22[11] = v35;
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v22[7] = v31;
    *v22 = v24;
    v22[1] = v25;
    v8 = ((v17 << 8) + 256);
    v23 = &v22[-16 * v21];
    v22[2] = v26;
    v22[3] = v27;
    memcpy(v23, v15, v16);
    a1[10] = v23;
    a1[11] = v8;
    a1[12] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    a1[11] = v8;
  }
}

void sub_1E547BB94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    operator new();
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if ((v4 - v3) >> 8 < 129)
  {
    v8 = 0;
LABEL_9:

    sub_1E547D494(v3, v4, (v4 - v3) >> 8, 0, v8);
  }

  else
  {
    v5 = MEMORY[0x1E69E5398];
    v6 = (v4 - v3) >> 8;
    while (1)
    {
      v7 = operator new(v6 << 8, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v10 = v7;
    sub_1E547D494(v3, v4, (v4 - v3) >> 8, v7, v6);

    operator delete(v10);
  }
}

void sub_1E547C8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1E541B450(&a19, a20);
  if (a17)
  {
    operator delete(a17);
    if (!a10)
    {
LABEL_3:
      v25 = *(v23 - 112);
      if (!v25)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!a10)
  {
    goto LABEL_3;
  }

  a23 = a10;
  operator delete(a10);
  v25 = *(v23 - 112);
  if (!v25)
  {
LABEL_4:
    if (!a12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v23 - 104) = v25;
  operator delete(v25);
  if (!a12)
  {
LABEL_5:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a12);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void *sub_1E547C9F0(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  v5 = *result;
  if (a2 > (v4 - *result) >> 2)
  {
    if (v5)
    {
      result[1] = v5;
      operator delete(v5);
      v4 = 0;
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v6 = v4 >> 1;
      if (v4 >> 1 <= a2)
      {
        v6 = a2;
      }

      v7 = v4 >= 0x7FFFFFFFFFFFFFFCLL;
      v8 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v7)
      {
        v8 = v6;
      }

      if (!(v8 >> 62))
      {
        operator new();
      }
    }

    sub_1E5415338();
  }

  v9 = result[1];
  v10 = (v9 - v5) >> 2;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - v5) >> 2;
  }

  if (v11)
  {
    result = memset(*result, 255, 4 * v11);
  }

  v7 = a2 >= v10;
  v12 = a2 - v10;
  if (v12 != 0 && v7)
  {
    result = memset(v9, 255, ((4 * a2 - (v9 - v5) - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    v3[1] = &v9[4 * v12];
  }

  else
  {
    v3[1] = &v5[4 * a2];
  }

  return result;
}

uint64_t sub_1E547CB50(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a2 + 4 * a4);
  if (*(result + 4 * a3) == -1)
  {
    if (v4 == -1)
    {
      *(result + 4 * a3) = a4;
      *(a2 + 4 * a4) = a3;
      return result;
    }

    v5 = "false && Unexpected: prev idx is duplicate";
    v6 = 375;
  }

  else
  {
    if (v4 != -1)
    {
      v5 = "false && Unexpected: curr & prev idx are duplicates";
      v6 = 365;
      v7 = 53;
      goto LABEL_8;
    }

    v5 = "false && Unexpected: curr idx is duplicate";
    v6 = 370;
  }

  v7 = 44;
LABEL_8:
  result = sub_1E548F8CC("/Library/Caches/com.apple.xbs/Sources/AppleCVHWA/library/VIO/Hardware/src/KeyPointDescriptorStore.cpp", v6, v5, v7, &unk_1E549A011, 0, sub_1E548FDE0);
  if (result)
  {
    abort();
  }

  return result;
}

void sub_1E547CC30(void *a1, int a2, int a3)
{
  v6 = a1[17];
  v5 = a1[18];
  if (v6 < v5)
  {
    *v6 = a2;
    *(v6 + 1) = a3;
    v7 = (v6 + 8);
LABEL_3:
    a1[17] = v7;
    return;
  }

  v8 = a1[16];
  v9 = v6 - v8;
  v10 = (v6 - v8) >> 3;
  v11 = v10 + 1;
  if ((v10 + 1) >> 61)
  {
    sub_1E5415338();
  }

  v12 = v5 - v8;
  if (v12 >> 2 > v11)
  {
    v11 = v12 >> 2;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    v13 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (!(v13 >> 61))
    {
      operator new();
    }

    sub_1E53E5340();
  }

  v14 = (8 * v10);
  *v14 = a2;
  v14[1] = a3;
  v7 = 8 * v10 + 8;
  memcpy(0, v8, v9);
  a1[16] = 0;
  a1[17] = v7;
  a1[18] = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  a1[17] = v7;
}

void sub_1E547CD54(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (*(a1 + 40) - *(a1 + 32)) >> 8;
  v6 = (*(a1 + 64) - *(a1 + 56)) >> 8;
  memset(v9, 0, sizeof(v9));
  if (v6 + v5)
  {
    operator new();
  }

  sub_1E547B8C4(a1, v9);
  if (a3)
  {
    v7 = *(a1 + 176);
    *(a1 + 176) = *(a1 + 200);
    *(a1 + 200) = v7;
    v8 = *(a1 + 192);
    *(a1 + 192) = *(a1 + 216);
    *(a1 + 216) = v8;
    operator new();
  }
}

void sub_1E547D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    v13 = a1;
    operator delete(__p);
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1E547D414(uint64_t *result)
{
  if (result)
  {
    v2 = *result;
    *result = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
      v1 = vars8;
    }

    JUMPOUT(0x1E6928650);
  }

  return result;
}

char *sub_1E547D494(char *result, __int128 *a2, unint64_t a3, _OWORD *a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return result;
  }

  if (a3 == 2)
  {
    v5 = a2 - 16;
    v6 = *(a2 - 64);
    v7 = *(a2 - 232);
    v8 = result[24];
    v9 = v7 == v8;
    if (v7 >= v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if (v9)
    {
      v11 = *(a2 - 63);
      v12 = *(a2 - 57);
      v13 = *(a2 - 61);
      v15 = *result;
      v14 = *(result + 1);
      v16 = *(result + 7);
      v17 = *(result + 2);
      v18 = *(result + 3);
      v19 = *(a2 - 62);
      v20 = v13 >= v18;
      v21 = v13 == v18;
      v22 = -1;
      if (v20)
      {
        v22 = 1;
      }

      if (v21)
      {
        v22 = 0;
      }

      v20 = v12 >= v16;
      v23 = v12 == v16;
      v24 = -1;
      if (v20)
      {
        v24 = 1;
      }

      if (v23)
      {
        v24 = v22;
      }

      v20 = v6 >= v15;
      v25 = v6 == v15;
      v26 = -1;
      if (v20)
      {
        v26 = 1;
      }

      if (v25)
      {
        v26 = v24;
      }

      v20 = v11 >= v14;
      v27 = v11 == v14;
      v28 = -1;
      if (v20)
      {
        v28 = 1;
      }

      if (!v27)
      {
        v26 = v28;
      }

      v10 = -1;
      if (v19 >= v17)
      {
        v10 = 1;
      }

      if (v19 == v17)
      {
        v10 = v26;
      }
    }

    if (v10 < 0)
    {
      v198 = *(result + 12);
      v200 = *(result + 13);
      v202 = *(result + 14);
      v203 = *(result + 15);
      v190 = *(result + 8);
      v192 = *(result + 9);
      v194 = *(result + 10);
      v196 = *(result + 11);
      v182 = *(result + 4);
      v184 = *(result + 5);
      v186 = *(result + 6);
      v188 = *(result + 7);
      v175 = *result;
      v176 = *(result + 1);
      v178 = *(result + 2);
      v180 = *(result + 3);
      v29 = *v5;
      v30 = v5[1];
      v31 = v5[3];
      *(result + 2) = v5[2];
      *(result + 3) = v31;
      *result = v29;
      *(result + 1) = v30;
      v32 = v5[4];
      v33 = v5[5];
      v34 = v5[7];
      *(result + 6) = v5[6];
      *(result + 7) = v34;
      *(result + 4) = v32;
      *(result + 5) = v33;
      v35 = v5[8];
      v36 = v5[9];
      v37 = v5[11];
      *(result + 10) = v5[10];
      *(result + 11) = v37;
      *(result + 8) = v35;
      *(result + 9) = v36;
      v38 = v5[12];
      v39 = v5[13];
      v40 = v5[15];
      *(result + 14) = v5[14];
      *(result + 15) = v40;
      *(result + 12) = v38;
      *(result + 13) = v39;
      v5[12] = v198;
      v5[13] = v200;
      v5[14] = v202;
      v5[15] = v203;
      v5[8] = v190;
      v5[9] = v192;
      v5[10] = v194;
      v5[11] = v196;
      v5[4] = v182;
      v5[5] = v184;
      v5[6] = v186;
      v5[7] = v188;
      *v5 = v175;
      v5[1] = v176;
      v5[2] = v178;
      v5[3] = v180;
    }

    return result;
  }

  if (a3 <= 128)
  {
    if (result == a2)
    {
      return result;
    }

    v41 = result + 256;
    if (result + 256 == a2)
    {
      return result;
    }

    v42 = 0;
    v43 = result;
    while (1)
    {
      v45 = v41;
      v46 = v43[280];
      v47 = *(v43 + 65);
      v48 = *v41;
      v49 = *(v43 + 71);
      v50 = *(v43 + 67);
      v51 = v43[24];
      v52 = v46 == v51;
      if (v46 >= v51)
      {
        v53 = 1;
      }

      else
      {
        v53 = -1;
      }

      if (v52)
      {
        v54 = *v43;
        v55 = *(v43 + 1);
        v56 = *(v43 + 7);
        v58 = *(v43 + 2);
        v57 = *(v43 + 3);
        v59 = *(v43 + 66);
        v60 = v50 == v57;
        if (v50 >= v57)
        {
          v61 = 1;
        }

        else
        {
          v61 = -1;
        }

        if (v60)
        {
          v61 = 0;
        }

        v62 = v49 == v56;
        if (v49 >= v56)
        {
          v63 = 1;
        }

        else
        {
          v63 = -1;
        }

        if (v62)
        {
          v63 = v61;
        }

        v64 = v48 == v54;
        if (v48 >= v54)
        {
          v65 = 1;
        }

        else
        {
          v65 = -1;
        }

        if (v64)
        {
          v65 = v63;
        }

        v66 = v47 == v55;
        if (v47 >= v55)
        {
          v67 = 1;
        }

        else
        {
          v67 = -1;
        }

        if (v66)
        {
          v67 = v65;
        }

        if (v59 >= v58)
        {
          v68 = 1;
        }

        else
        {
          v68 = -1;
        }

        if (v59 != v58)
        {
          v67 = v68;
        }

        if (v67 < 0)
        {
LABEL_79:
          v69 = *(v43 + 66);
          v70 = *(v43 + 34);
          v173 = *(v43 + 281);
          v174 = v43[283];
          v195 = *(v43 + 28);
          v197 = *(v43 + 29);
          v199 = *(v43 + 30);
          v201 = *(v43 + 31);
          v187 = *(v43 + 24);
          v189 = *(v43 + 25);
          v191 = *(v43 + 26);
          v193 = *(v43 + 27);
          v179 = *(v43 + 20);
          v181 = *(v43 + 21);
          v183 = *(v43 + 22);
          v185 = *(v43 + 23);
          v71 = *(v43 + 18);
          v72 = *(v43 + 19);
          v73 = v42;
          v177 = v72;
          do
          {
            v74 = &result[v73];
            v75 = *&result[v73 + 208];
            *(v74 + 28) = *&result[v73 + 192];
            *(v74 + 29) = v75;
            v76 = *&result[v73 + 240];
            *(v74 + 30) = *&result[v73 + 224];
            *(v74 + 31) = v76;
            v77 = *&result[v73 + 144];
            *(v74 + 24) = *&result[v73 + 128];
            *(v74 + 25) = v77;
            v78 = *&result[v73 + 176];
            *(v74 + 26) = *&result[v73 + 160];
            *(v74 + 27) = v78;
            v79 = *&result[v73 + 80];
            *(v74 + 20) = *&result[v73 + 64];
            *(v74 + 21) = v79;
            v80 = *&result[v73 + 112];
            *(v74 + 22) = *&result[v73 + 96];
            *(v74 + 23) = v80;
            v81 = *&result[v73 + 16];
            *(v74 + 16) = *&result[v73];
            *(v74 + 17) = v81;
            v82 = *&result[v73 + 48];
            *(v74 + 18) = *&result[v73 + 32];
            *(v74 + 19) = v82;
            if (!v73)
            {
              v44 = result;
              goto LABEL_42;
            }

            v83 = *(v74 - 232);
            v84 = v46 == v83;
            if (v46 >= v83)
            {
              v85 = 1;
            }

            else
            {
              v85 = -1;
            }

            if (v84)
            {
              v86 = *&result[v73 - 248];
              v87 = v69 == v86;
              v85 = v69 >= v86 ? 1 : -1;
              if (v87)
              {
                v88 = *(v74 - 63);
                v89 = v47 == v88;
                v85 = v47 >= v88 ? 1 : -1;
                if (v89)
                {
                  v90 = *(v74 - 64);
                  v91 = v48 == v90;
                  v85 = v48 >= v90 ? 1 : -1;
                  if (v91)
                  {
                    v92 = *(v74 - 57);
                    v93 = v49 == v92;
                    v85 = v49 >= v92 ? 1 : -1;
                    if (v93)
                    {
                      v94 = *(v74 - 61);
                      v95 = v50 == v94;
                      if (v50 >= v94)
                      {
                        v96 = 1;
                      }

                      else
                      {
                        v96 = -1;
                      }

                      if (v95)
                      {
                        v85 = 0;
                      }

                      else
                      {
                        v85 = v96;
                      }
                    }
                  }
                }
              }
            }

            v73 -= 256;
          }

          while (v85 < 0);
          v44 = &result[v73 + 256];
LABEL_42:
          *v44 = v48;
          *(v44 + 4) = v47;
          *(v44 + 8) = v69;
          *(v44 + 12) = v50;
          *(v44 + 16) = v70;
          *(v44 + 24) = v46;
          *(v44 + 25) = v173;
          *(v44 + 27) = v174;
          *(v44 + 28) = v49;
          *(v44 + 192) = v195;
          *(v44 + 208) = v197;
          *(v44 + 224) = v199;
          *(v44 + 240) = v201;
          *(v44 + 128) = v187;
          *(v44 + 144) = v189;
          *(v44 + 160) = v191;
          *(v44 + 176) = v193;
          *(v44 + 64) = v179;
          *(v44 + 80) = v181;
          *(v44 + 96) = v183;
          *(v44 + 112) = v185;
          *(v44 + 32) = v71;
          *(v44 + 48) = v177;
        }
      }

      else if (v53 < 0)
      {
        goto LABEL_79;
      }

      v41 = v45 + 64;
      v42 += 256;
      v43 = v45;
      if (v45 + 64 == a2)
      {
        return result;
      }
    }
  }

  v98 = a3 >> 1;
  v99 = &result[256 * (a3 >> 1)];
  v100 = a3 - (a3 >> 1);
  v101 = result;
  if (a3 <= a5)
  {
    v105 = a4;
    sub_1E547DB64(result, v99, a3 >> 1, a4);
    v106 = &v105[16 * v98];
    result = sub_1E547DB64(v99, a2, v100, v106);
    v107 = &v105[16 * a3];
    v108 = v106;
    while (v108 != v107)
    {
      v121 = *(v108 + 24);
      v122 = *(v105 + 24);
      v123 = v121 == v122;
      if (v121 >= v122)
      {
        v124 = 1;
      }

      else
      {
        v124 = -1;
      }

      if (v123)
      {
        v125 = *(v105 + 2);
        v126 = *(v108 + 2);
        v127 = v126 == v125;
        v124 = v126 >= v125 ? 1 : -1;
        if (v127)
        {
          v128 = *(v108 + 1);
          v129 = *(v105 + 1);
          v130 = v128 == v129;
          v124 = v128 >= v129 ? 1 : -1;
          if (v130)
          {
            v124 = *v108 >= *v105 ? 1 : -1;
            if (*v108 == *v105)
            {
              v131 = *(v108 + 7);
              v132 = *(v105 + 7);
              v133 = v131 == v132;
              v124 = v131 >= v132 ? 1 : -1;
              if (v133)
              {
                v134 = *(v108 + 3);
                v135 = *(v105 + 3);
                v136 = v134 == v135;
                v124 = v134 >= v135 ? 1 : -1;
                if (v136)
                {
                  v124 = 0;
                }
              }
            }
          }
        }
      }

      if (v124 < 0)
      {
        v137 = *v108;
        v138 = v108[1];
        v139 = v108[3];
        *(v101 + 2) = v108[2];
        *(v101 + 3) = v139;
        *v101 = v137;
        *(v101 + 1) = v138;
        v140 = v108[4];
        v141 = v108[5];
        v142 = v108[7];
        *(v101 + 6) = v108[6];
        *(v101 + 7) = v142;
        *(v101 + 4) = v140;
        *(v101 + 5) = v141;
        v143 = v108[8];
        v144 = v108[9];
        v145 = v108[11];
        *(v101 + 10) = v108[10];
        *(v101 + 11) = v145;
        *(v101 + 8) = v143;
        *(v101 + 9) = v144;
        v146 = v108[12];
        v147 = v108[13];
        v148 = v108[15];
        *(v101 + 14) = v108[14];
        *(v101 + 15) = v148;
        *(v101 + 12) = v146;
        *(v101 + 13) = v147;
        v108 += 16;
        v101 += 256;
        if (v105 == v106)
        {
LABEL_157:
          while (v108 != v107)
          {
            v161 = *v108;
            v162 = v108[1];
            v163 = v108[3];
            *(v101 + 2) = v108[2];
            *(v101 + 3) = v163;
            *v101 = v161;
            *(v101 + 1) = v162;
            v164 = v108[4];
            v165 = v108[5];
            v166 = v108[7];
            *(v101 + 6) = v108[6];
            *(v101 + 7) = v166;
            *(v101 + 4) = v164;
            *(v101 + 5) = v165;
            v167 = v108[8];
            v168 = v108[9];
            v169 = v108[11];
            *(v101 + 10) = v108[10];
            *(v101 + 11) = v169;
            *(v101 + 8) = v167;
            *(v101 + 9) = v168;
            v170 = v108[12];
            v171 = v108[13];
            v172 = v108[15];
            *(v101 + 14) = v108[14];
            *(v101 + 15) = v172;
            *(v101 + 12) = v170;
            *(v101 + 13) = v171;
            v108 += 16;
            v101 += 256;
          }

          return result;
        }
      }

      else
      {
        v109 = *v105;
        v110 = v105[1];
        v111 = v105[3];
        *(v101 + 2) = v105[2];
        *(v101 + 3) = v111;
        *v101 = v109;
        *(v101 + 1) = v110;
        v112 = v105[4];
        v113 = v105[5];
        v114 = v105[7];
        *(v101 + 6) = v105[6];
        *(v101 + 7) = v114;
        *(v101 + 4) = v112;
        *(v101 + 5) = v113;
        v115 = v105[8];
        v116 = v105[9];
        v117 = v105[11];
        *(v101 + 10) = v105[10];
        *(v101 + 11) = v117;
        *(v101 + 8) = v115;
        *(v101 + 9) = v116;
        v118 = v105[12];
        v119 = v105[13];
        v120 = v105[15];
        *(v101 + 14) = v105[14];
        *(v101 + 15) = v120;
        *(v101 + 12) = v118;
        *(v101 + 13) = v119;
        v105 += 16;
        v101 += 256;
        if (v105 == v106)
        {
          goto LABEL_157;
        }
      }
    }

    while (v105 != v106)
    {
      v149 = *v105;
      v150 = v105[1];
      v151 = v105[3];
      *(v101 + 2) = v105[2];
      *(v101 + 3) = v151;
      *v101 = v149;
      *(v101 + 1) = v150;
      v152 = v105[4];
      v153 = v105[5];
      v154 = v105[7];
      *(v101 + 6) = v105[6];
      *(v101 + 7) = v154;
      *(v101 + 4) = v152;
      *(v101 + 5) = v153;
      v155 = v105[8];
      v156 = v105[9];
      v157 = v105[11];
      *(v101 + 10) = v105[10];
      *(v101 + 11) = v157;
      *(v101 + 8) = v155;
      *(v101 + 9) = v156;
      v158 = v105[12];
      v159 = v105[13];
      v160 = v105[15];
      *(v101 + 14) = v105[14];
      *(v101 + 15) = v160;
      *(v101 + 12) = v158;
      *(v101 + 13) = v159;
      v105 += 16;
      v101 += 256;
    }
  }

  else
  {
    sub_1E547D494(result, v99, a3 >> 1, a4, a5);
    sub_1E547D494(v99, a2, v100, a4, a5);

    return sub_1E547E22C(v101, v99, a2, v98, v100, a4, a5);
  }

  return result;
}

uint64_t sub_1E547DB64(uint64_t result, __int128 *a2, uint64_t a3, _OWORD *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v16 = a2 - 16;
      v17 = *(a2 - 64);
      v18 = *(a2 - 232);
      v19 = *(result + 24);
      v20 = v18 == v19;
      if (v18 >= v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = -1;
      }

      if (v20)
      {
        v22 = *(result + 8);
        v23 = *(a2 - 62);
        v24 = v23 == v22;
        v21 = v23 >= v22 ? 1 : -1;
        if (v24)
        {
          v25 = *(a2 - 63);
          v26 = *(result + 4);
          v27 = v25 == v26;
          v21 = v25 >= v26 ? 1 : -1;
          if (v27)
          {
            v21 = v17 >= *result ? 1 : -1;
            if (v17 == *result)
            {
              v28 = *(a2 - 57);
              v29 = *(result + 28);
              v30 = v28 == v29;
              v21 = v28 >= v29 ? 1 : -1;
              if (v30)
              {
                v31 = *(a2 - 61);
                v32 = *(result + 12);
                v33 = v31 >= v32;
                v34 = v31 == v32;
                v21 = -1;
                if (v33)
                {
                  v21 = 1;
                }

                if (v34)
                {
                  v21 = 0;
                }
              }
            }
          }
        }
      }

      if (v21 < 0)
      {
        v138 = *v16;
        v139 = *(a2 - 15);
        v140 = *(a2 - 13);
        a4[2] = *(a2 - 14);
        a4[3] = v140;
        *a4 = v138;
        a4[1] = v139;
        v141 = *(a2 - 12);
        v142 = *(a2 - 11);
        v143 = *(a2 - 9);
        a4[6] = *(a2 - 10);
        a4[7] = v143;
        a4[4] = v141;
        a4[5] = v142;
        v144 = *(a2 - 8);
        v145 = *(a2 - 7);
        v146 = *(a2 - 5);
        a4[10] = *(a2 - 6);
        a4[11] = v146;
        a4[8] = v144;
        a4[9] = v145;
        v147 = *(a2 - 4);
        v148 = *(a2 - 3);
        v149 = *(a2 - 1);
        a4[14] = *(a2 - 2);
        a4[15] = v149;
        a4[12] = v147;
        a4[13] = v148;
        v150 = *result;
        v151 = *(result + 16);
        v152 = *(result + 48);
        a4[18] = *(result + 32);
        a4[19] = v152;
        a4[16] = v150;
        a4[17] = v151;
        v153 = *(result + 64);
        v154 = *(result + 80);
        v155 = *(result + 112);
        a4[22] = *(result + 96);
        a4[23] = v155;
        a4[20] = v153;
        a4[21] = v154;
        v156 = *(result + 128);
        v157 = *(result + 144);
        v158 = *(result + 176);
        a4[26] = *(result + 160);
        a4[27] = v158;
        a4[24] = v156;
        a4[25] = v157;
        v56 = *(result + 192);
        v57 = *(result + 208);
        v58 = *(result + 224);
        v59 = *(result + 240);
      }

      else
      {
        v35 = *result;
        v36 = *(result + 16);
        v37 = *(result + 48);
        a4[2] = *(result + 32);
        a4[3] = v37;
        *a4 = v35;
        a4[1] = v36;
        v38 = *(result + 64);
        v39 = *(result + 80);
        v40 = *(result + 112);
        a4[6] = *(result + 96);
        a4[7] = v40;
        a4[4] = v38;
        a4[5] = v39;
        v41 = *(result + 128);
        v42 = *(result + 144);
        v43 = *(result + 176);
        a4[10] = *(result + 160);
        a4[11] = v43;
        a4[8] = v41;
        a4[9] = v42;
        v44 = *(result + 192);
        v45 = *(result + 208);
        v46 = *(result + 240);
        a4[14] = *(result + 224);
        a4[15] = v46;
        a4[12] = v44;
        a4[13] = v45;
        v47 = *v16;
        v48 = *(a2 - 15);
        v49 = *(a2 - 13);
        a4[18] = *(a2 - 14);
        a4[19] = v49;
        a4[16] = v47;
        a4[17] = v48;
        v50 = *(a2 - 12);
        v51 = *(a2 - 11);
        v52 = *(a2 - 9);
        a4[22] = *(a2 - 10);
        a4[23] = v52;
        a4[20] = v50;
        a4[21] = v51;
        v53 = *(a2 - 8);
        v54 = *(a2 - 7);
        v55 = *(a2 - 5);
        a4[26] = *(a2 - 6);
        a4[27] = v55;
        a4[24] = v53;
        a4[25] = v54;
        v56 = *(a2 - 4);
        v57 = *(a2 - 3);
        v58 = *(a2 - 2);
        v59 = *(a2 - 1);
      }

      a4[30] = v58;
      a4[31] = v59;
      a4[28] = v56;
      a4[29] = v57;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      v5 = *(result + 16);
      v6 = *(result + 48);
      a4[2] = *(result + 32);
      a4[3] = v6;
      *a4 = v4;
      a4[1] = v5;
      v7 = *(result + 64);
      v8 = *(result + 80);
      v9 = *(result + 112);
      a4[6] = *(result + 96);
      a4[7] = v9;
      a4[4] = v7;
      a4[5] = v8;
      v10 = *(result + 128);
      v11 = *(result + 144);
      v12 = *(result + 176);
      a4[10] = *(result + 160);
      a4[11] = v12;
      a4[8] = v10;
      a4[9] = v11;
      v13 = *(result + 192);
      v14 = *(result + 208);
      v15 = *(result + 240);
      a4[14] = *(result + 224);
      a4[15] = v15;
      a4[12] = v13;
      a4[13] = v14;
    }

    else if (a3 > 8)
    {
      v159 = a3 >> 1;
      v160 = a3 >> 1 << 8;
      v161 = v160 + result;
      v162 = result;
      v165 = a4;
      (sub_1E547D494)();
      result = sub_1E547D494(v161, a2, a3 - v159, v165 + v160, a3 - v159);
      v166 = v161;
      while (v166 != a2)
      {
        v179 = *(v166 + 24);
        v180 = *(v162 + 24);
        v181 = v179 == v180;
        if (v179 >= v180)
        {
          v182 = 1;
        }

        else
        {
          v182 = -1;
        }

        if (v181)
        {
          v183 = *(v162 + 8);
          v184 = *(v166 + 2);
          v185 = v184 == v183;
          v182 = v184 >= v183 ? 1 : -1;
          if (v185)
          {
            v186 = *(v166 + 1);
            v187 = *(v162 + 4);
            v188 = v186 == v187;
            v182 = v186 >= v187 ? 1 : -1;
            if (v188)
            {
              v182 = *v166 >= *v162 ? 1 : -1;
              if (*v166 == *v162)
              {
                v189 = *(v166 + 7);
                v190 = *(v162 + 28);
                v191 = v189 == v190;
                v182 = v189 >= v190 ? 1 : -1;
                if (v191)
                {
                  v192 = *(v166 + 3);
                  v193 = *(v162 + 12);
                  v194 = v192 == v193;
                  v182 = v192 >= v193 ? 1 : -1;
                  if (v194)
                  {
                    v182 = 0;
                  }
                }
              }
            }
          }
        }

        if (v182 < 0)
        {
          v195 = *v166;
          v196 = v166[1];
          v197 = v166[3];
          v165[2] = v166[2];
          v165[3] = v197;
          *v165 = v195;
          v165[1] = v196;
          v198 = v166[4];
          v199 = v166[5];
          v200 = v166[7];
          v165[6] = v166[6];
          v165[7] = v200;
          v165[4] = v198;
          v165[5] = v199;
          v201 = v166[8];
          v202 = v166[9];
          v203 = v166[11];
          v165[10] = v166[10];
          v165[11] = v203;
          v165[8] = v201;
          v165[9] = v202;
          v204 = v166[12];
          v205 = v166[13];
          v206 = v166[15];
          v165[14] = v166[14];
          v165[15] = v206;
          v165[12] = v204;
          v165[13] = v205;
          v166 += 16;
          v165 += 16;
          if (v162 == v161)
          {
LABEL_145:
            while (v166 != a2)
            {
              v219 = *v166;
              v220 = v166[1];
              v221 = v166[3];
              v165[2] = v166[2];
              v165[3] = v221;
              *v165 = v219;
              v165[1] = v220;
              v222 = v166[4];
              v223 = v166[5];
              v224 = v166[7];
              v165[6] = v166[6];
              v165[7] = v224;
              v165[4] = v222;
              v165[5] = v223;
              v225 = v166[8];
              v226 = v166[9];
              v227 = v166[11];
              v165[10] = v166[10];
              v165[11] = v227;
              v165[8] = v225;
              v165[9] = v226;
              v228 = v166[12];
              v229 = v166[13];
              v230 = v166[15];
              v165[14] = v166[14];
              v165[15] = v230;
              v165[12] = v228;
              v165[13] = v229;
              v166 += 16;
              v165 += 16;
            }

            return result;
          }
        }

        else
        {
          v167 = *v162;
          v168 = *(v162 + 16);
          v169 = *(v162 + 48);
          v165[2] = *(v162 + 32);
          v165[3] = v169;
          *v165 = v167;
          v165[1] = v168;
          v170 = *(v162 + 64);
          v171 = *(v162 + 80);
          v172 = *(v162 + 112);
          v165[6] = *(v162 + 96);
          v165[7] = v172;
          v165[4] = v170;
          v165[5] = v171;
          v173 = *(v162 + 128);
          v174 = *(v162 + 144);
          v175 = *(v162 + 176);
          v165[10] = *(v162 + 160);
          v165[11] = v175;
          v165[8] = v173;
          v165[9] = v174;
          v176 = *(v162 + 192);
          v177 = *(v162 + 208);
          v178 = *(v162 + 240);
          v165[14] = *(v162 + 224);
          v165[15] = v178;
          v165[12] = v176;
          v165[13] = v177;
          v162 += 256;
          v165 += 16;
          if (v162 == v161)
          {
            goto LABEL_145;
          }
        }
      }

      while (v162 != v161)
      {
        v207 = *v162;
        v208 = *(v162 + 16);
        v209 = *(v162 + 48);
        v165[2] = *(v162 + 32);
        v165[3] = v209;
        *v165 = v207;
        v165[1] = v208;
        v210 = *(v162 + 64);
        v211 = *(v162 + 80);
        v212 = *(v162 + 112);
        v165[6] = *(v162 + 96);
        v165[7] = v212;
        v165[4] = v210;
        v165[5] = v211;
        v213 = *(v162 + 128);
        v214 = *(v162 + 144);
        v215 = *(v162 + 176);
        v165[10] = *(v162 + 160);
        v165[11] = v215;
        v165[8] = v213;
        v165[9] = v214;
        v216 = *(v162 + 192);
        v217 = *(v162 + 208);
        v218 = *(v162 + 240);
        v165[14] = *(v162 + 224);
        v165[15] = v218;
        v165[12] = v216;
        v165[13] = v217;
        v162 += 256;
        v165 += 16;
      }
    }

    else if (result != a2)
    {
      v60 = *result;
      v61 = *(result + 16);
      v62 = *(result + 48);
      a4[2] = *(result + 32);
      a4[3] = v62;
      *a4 = v60;
      a4[1] = v61;
      v63 = *(result + 64);
      v64 = *(result + 80);
      v65 = *(result + 112);
      a4[6] = *(result + 96);
      a4[7] = v65;
      a4[4] = v63;
      a4[5] = v64;
      v66 = *(result + 128);
      v67 = *(result + 144);
      v68 = *(result + 176);
      a4[10] = *(result + 160);
      a4[11] = v68;
      a4[8] = v66;
      a4[9] = v67;
      v69 = *(result + 192);
      v70 = *(result + 208);
      v71 = *(result + 240);
      a4[14] = *(result + 224);
      a4[15] = v71;
      a4[12] = v69;
      a4[13] = v70;
      v72 = result + 256;
      if ((result + 256) != a2)
      {
        v73 = 0;
        v74 = a4;
        do
        {
          v88 = result;
          v89 = v74;
          result = v72;
          v90 = *(v88 + 280);
          v91 = *(v89 + 24);
          if (v90 >= v91)
          {
            v92 = 1;
          }

          else
          {
            v92 = -1;
          }

          if (v90 == v91)
          {
            v93 = *(v89 + 2);
            v94 = *(v88 + 264);
            v92 = v94 >= v93 ? 1 : -1;
            if (v94 == v93)
            {
              v95 = *(v88 + 260);
              v96 = *(v89 + 1);
              v92 = v95 >= v96 ? 1 : -1;
              if (v95 == v96)
              {
                v92 = *result >= *v89 ? 1 : -1;
                if (*result == *v89)
                {
                  v97 = *(v88 + 284);
                  v98 = *(v89 + 7);
                  v92 = v97 >= v98 ? 1 : -1;
                  if (v97 == v98)
                  {
                    v99 = *(v88 + 268);
                    v100 = *(v89 + 3);
                    v101 = v99 == v100;
                    if (v99 >= v100)
                    {
                      v102 = 1;
                    }

                    else
                    {
                      v102 = -1;
                    }

                    if (v101)
                    {
                      v92 = 0;
                    }

                    else
                    {
                      v92 = v102;
                    }
                  }
                }
              }
            }
          }

          v74 = v89 + 16;
          v75 = v89 + 16;
          if (v92 < 0)
          {
            v103 = v89[13];
            v89[28] = v89[12];
            v89[29] = v103;
            v104 = v89[15];
            v89[30] = v89[14];
            v89[31] = v104;
            v105 = v89[9];
            v89[24] = v89[8];
            v89[25] = v105;
            v106 = v89[11];
            v89[26] = v89[10];
            v89[27] = v106;
            v107 = v89[5];
            v89[20] = v89[4];
            v89[21] = v107;
            v108 = v89[7];
            v89[22] = v89[6];
            v89[23] = v108;
            v109 = v89[1];
            *v74 = *v89;
            v89[17] = v109;
            v110 = v89[3];
            v75 = a4;
            v89[18] = v89[2];
            v89[19] = v110;
            if (v89 != a4)
            {
              v111 = v73;
              do
              {
                v112 = (a4 + v111);
                v113 = *(a4 + v111 - 256);
                v114 = *(v88 + 280);
                v115 = *(a4 + v111 - 232);
                v116 = v114 == v115;
                if (v114 >= v115)
                {
                  v117 = 1;
                }

                else
                {
                  v117 = -1;
                }

                if (v116)
                {
                  v118 = *(v112 - 62);
                  v119 = *(v88 + 264);
                  v120 = v119 == v118;
                  v117 = v119 >= v118 ? 1 : -1;
                  if (v120)
                  {
                    v121 = *(v88 + 260);
                    v122 = *(v112 - 63);
                    v123 = v121 == v122;
                    v117 = v121 >= v122 ? 1 : -1;
                    if (v123)
                    {
                      v117 = *result >= v113 ? 1 : -1;
                      if (*result == v113)
                      {
                        v124 = *(v88 + 284);
                        v125 = *(v112 - 57);
                        v126 = v124 == v125;
                        v117 = v124 >= v125 ? 1 : -1;
                        if (v126)
                        {
                          v127 = *(v88 + 268);
                          v128 = *(v112 - 61);
                          v129 = v127 == v128;
                          if (v127 >= v128)
                          {
                            v117 = 1;
                          }

                          else
                          {
                            v117 = -1;
                          }

                          if (v129)
                          {
                            v117 = 0;
                          }
                        }
                      }
                    }
                  }
                }

                if ((v117 & 0x80) == 0)
                {
                  v75 = (a4 + v111);
                  goto LABEL_42;
                }

                v130 = *(a4 + v111 - 48);
                v112[12] = *(a4 + v111 - 64);
                v112[13] = v130;
                v131 = *(a4 + v111 - 16);
                v112[14] = *(a4 + v111 - 32);
                v112[15] = v131;
                v132 = *(a4 + v111 - 112);
                v112[8] = *(a4 + v111 - 128);
                v112[9] = v132;
                v133 = *(a4 + v111 - 80);
                v112[10] = *(a4 + v111 - 96);
                v112[11] = v133;
                v134 = *(a4 + v111 - 176);
                v112[4] = *(a4 + v111 - 192);
                v112[5] = v134;
                v135 = *(a4 + v111 - 144);
                v112[6] = *(a4 + v111 - 160);
                v112[7] = v135;
                v136 = *(a4 + v111 - 240);
                *v112 = *(a4 + v111 - 256);
                v112[1] = v136;
                v137 = *(a4 + v111 - 208);
                v112[2] = *(a4 + v111 - 224);
                v112[3] = v137;
                v111 -= 256;
              }

              while (v111);
              v75 = a4;
            }
          }

LABEL_42:
          v76 = *result;
          v77 = *(result + 16);
          v78 = *(result + 48);
          v75[2] = *(result + 32);
          v75[3] = v78;
          *v75 = v76;
          v75[1] = v77;
          v79 = *(result + 64);
          v80 = *(result + 80);
          v81 = *(result + 112);
          v75[6] = *(result + 96);
          v75[7] = v81;
          v75[4] = v79;
          v75[5] = v80;
          v82 = *(result + 128);
          v83 = *(result + 144);
          v84 = *(result + 176);
          v75[10] = *(result + 160);
          v75[11] = v84;
          v75[8] = v82;
          v75[9] = v83;
          v85 = *(result + 192);
          v86 = *(result + 208);
          v87 = *(result + 240);
          v75[14] = *(result + 224);
          v75[15] = v87;
          v75[12] = v85;
          v75[13] = v86;
          v72 = result + 256;
          v73 += 256;
        }

        while ((result + 256) != a2);
      }
    }
  }

  return result;
}

char *sub_1E547E22C(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  while (a4 > a7 && a5 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v9 = 0;
    v10 = a2[24];
    v12 = *a2;
    v11 = *(a2 + 1);
    v13 = *(a2 + 7);
    v14 = -a4;
    v15 = *(a2 + 3);
    while (1)
    {
      v16 = &result[v9];
      v17 = result[v9 + 24];
      v18 = v10 == v17;
      if (v10 >= v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = -1;
      }

      if (v18)
      {
        v21 = *v16;
        v20 = *(v16 + 1);
        v22 = *(v16 + 7);
        v25 = v16 + 8;
        v23 = *(v16 + 2);
        v24 = v25[1];
        v26 = *(a2 + 2);
        v27 = v15 == v24;
        if (v15 >= v24)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v27)
        {
          v28 = 0;
        }

        v29 = v13 == v22;
        if (v13 >= v22)
        {
          v30 = 1;
        }

        else
        {
          v30 = -1;
        }

        if (v29)
        {
          v30 = v28;
        }

        v31 = v12 == v21;
        if (v12 >= v21)
        {
          v32 = 1;
        }

        else
        {
          v32 = -1;
        }

        if (v31)
        {
          v32 = v30;
        }

        v33 = v11 == v20;
        if (v11 >= v20)
        {
          v19 = 1;
        }

        else
        {
          v19 = -1;
        }

        if (v33)
        {
          v19 = v32;
        }

        v34 = v26 == v23;
        if (v26 >= v23)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (!v34)
        {
          v19 = v35;
        }
      }

      if (v19 < 0)
      {
        break;
      }

      v9 += 256;
      if (__CFADD__(v14++, 1))
      {
        return result;
      }
    }

    v37 = -v14;
    v38 = &result[v9];
    if (-v14 < a5)
    {
      v39 = a5 / 2;
      v40 = &a2[256 * (a5 / 2)];
      v41 = a2;
      if (a2 - result != v9)
      {
        v42 = (a2 - result - v9) >> 8;
        v43 = v40[24];
        v45 = *v40;
        v44 = *(v40 + 1);
        v46 = *(v40 + 7);
        v41 = &result[v9];
        v48 = *(v40 + 2);
        v47 = *(v40 + 3);
        do
        {
          v50 = v42 >> 1;
          v51 = &v41[256 * (v42 >> 1)];
          v52 = v51[24];
          v53 = v43 == v52;
          if (v43 >= v52)
          {
            v54 = 1;
          }

          else
          {
            v54 = -1;
          }

          if (v53)
          {
            v55 = *v51;
            v56 = *(v51 + 1);
            v57 = *(v51 + 7);
            v59 = *(v51 + 2);
            v58 = *(v51 + 3);
            v60 = v47 == v58;
            if (v47 >= v58)
            {
              v61 = 1;
            }

            else
            {
              v61 = -1;
            }

            if (v60)
            {
              v61 = 0;
            }

            v62 = v46 == v57;
            if (v46 >= v57)
            {
              v63 = 1;
            }

            else
            {
              v63 = -1;
            }

            if (v62)
            {
              v63 = v61;
            }

            v64 = v45 == v55;
            if (v45 >= v55)
            {
              v65 = 1;
            }

            else
            {
              v65 = -1;
            }

            if (v64)
            {
              v65 = v63;
            }

            v66 = v44 == v56;
            if (v44 >= v56)
            {
              v54 = 1;
            }

            else
            {
              v54 = -1;
            }

            if (v66)
            {
              v54 = v65;
            }

            if (v48 >= v59)
            {
              v67 = 1;
            }

            else
            {
              v67 = -1;
            }

            if (v48 != v59)
            {
              v54 = v67;
            }
          }

          v49 = v51 + 256;
          v42 += ~v50;
          if (v54 < 0)
          {
            v42 = v50;
          }

          else
          {
            v41 = v49;
          }
        }

        while (v42);
        v39 = a5 / 2;
      }

      v68 = (v41 - result - v9) >> 8;
      v69 = &a2[256 * (a5 / 2)];
      v70 = a2 - v41;
      if (a2 == v41)
      {
        goto LABEL_151;
      }

LABEL_90:
      v69 = v41;
      if (a2 != v40)
      {
        if (v41 + 256 == a2)
        {
          v296 = *(v41 + 2);
          v301 = *(v41 + 3);
          v286 = *v41;
          v291 = *(v41 + 1);
          v316 = *(v41 + 6);
          v321 = *(v41 + 7);
          v306 = *(v41 + 4);
          v311 = *(v41 + 5);
          v336 = *(v41 + 10);
          v341 = *(v41 + 11);
          v326 = *(v41 + 8);
          v331 = *(v41 + 9);
          v356 = *(v41 + 14);
          v361 = *(v41 + 15);
          v346 = *(v41 + 12);
          v351 = *(v41 + 13);
          v71 = v40 - a2;
          v284 = result;
          v280 = a3;
          v282 = a6;
          v72 = &result[v9];
          v73 = a5;
          v74 = v39;
          memmove(v41, a2, v40 - a2);
          v39 = v74;
          a5 = v73;
          v38 = v72;
          a6 = v282;
          result = v284;
          a3 = v280;
          v69 = &v41[v71];
          *(v69 + 2) = v296;
          *(v69 + 3) = v301;
          *v69 = v286;
          *(v69 + 1) = v291;
          *(v69 + 6) = v316;
          *(v69 + 7) = v321;
          *(v69 + 4) = v306;
          *(v69 + 5) = v311;
          *(v69 + 10) = v336;
          *(v69 + 11) = v341;
          *(v69 + 8) = v326;
          *(v69 + 9) = v331;
          *(v69 + 14) = v356;
          *(v69 + 15) = v361;
          *(v69 + 12) = v346;
          *(v69 + 13) = v351;
        }

        else if (a2 + 256 == v40)
        {
          v69 = v41 + 256;
          v347 = *(v40 - 4);
          v352 = *(v40 - 3);
          v357 = *(v40 - 2);
          v362 = *(v40 - 1);
          v327 = *(v40 - 8);
          v332 = *(v40 - 7);
          v337 = *(v40 - 6);
          v342 = *(v40 - 5);
          v307 = *(v40 - 12);
          v312 = *(v40 - 11);
          v317 = *(v40 - 10);
          v322 = *(v40 - 9);
          v287 = *(v40 - 16);
          v292 = *(v40 - 15);
          v297 = *(v40 - 14);
          v302 = *(v40 - 13);
          if (v40 - 256 != v41)
          {
            v285 = result;
            v281 = a3;
            v283 = a6;
            v101 = &result[v9];
            v102 = a5;
            v103 = v39;
            memmove(v41 + 256, v41, v40 - 256 - v41);
            v39 = v103;
            a5 = v102;
            v38 = v101;
            a6 = v283;
            result = v285;
            a3 = v281;
          }

          *(v41 + 2) = v297;
          *(v41 + 3) = v302;
          *v41 = v287;
          *(v41 + 1) = v292;
          *(v41 + 6) = v317;
          *(v41 + 7) = v322;
          *(v41 + 4) = v307;
          *(v41 + 5) = v312;
          *(v41 + 10) = v337;
          *(v41 + 11) = v342;
          *(v41 + 8) = v327;
          *(v41 + 9) = v332;
          *(v41 + 14) = v357;
          *(v41 + 15) = v362;
          *(v41 + 12) = v347;
          *(v41 + 13) = v352;
        }

        else
        {
          v104 = v70 >> 8;
          v105 = (v40 - a2) >> 8;
          if (v70 >> 8 == v105)
          {
            v106 = v41 + 256;
            v107 = a2 + 256;
            do
            {
              v298 = *(v106 - 14);
              v303 = *(v106 - 13);
              v288 = *(v106 - 16);
              v293 = *(v106 - 15);
              v318 = *(v106 - 10);
              v323 = *(v106 - 9);
              v308 = *(v106 - 12);
              v313 = *(v106 - 11);
              v338 = *(v106 - 6);
              v343 = *(v106 - 5);
              v328 = *(v106 - 8);
              v333 = *(v106 - 7);
              v358 = *(v106 - 2);
              v363 = *(v106 - 1);
              v348 = *(v106 - 4);
              v353 = *(v106 - 3);
              v108 = *(v107 - 16);
              v109 = *(v107 - 15);
              v110 = *(v107 - 13);
              *(v106 - 14) = *(v107 - 14);
              *(v106 - 13) = v110;
              *(v106 - 16) = v108;
              *(v106 - 15) = v109;
              v111 = *(v107 - 12);
              v112 = *(v107 - 11);
              v113 = *(v107 - 9);
              *(v106 - 10) = *(v107 - 10);
              *(v106 - 9) = v113;
              *(v106 - 12) = v111;
              *(v106 - 11) = v112;
              v114 = *(v107 - 8);
              v115 = *(v107 - 7);
              v116 = *(v107 - 5);
              *(v106 - 6) = *(v107 - 6);
              *(v106 - 5) = v116;
              *(v106 - 8) = v114;
              *(v106 - 7) = v115;
              v117 = *(v107 - 4);
              v118 = *(v107 - 3);
              v119 = *(v107 - 1);
              *(v106 - 2) = *(v107 - 2);
              *(v106 - 1) = v119;
              *(v106 - 4) = v117;
              *(v106 - 3) = v118;
              *(v107 - 4) = v348;
              *(v107 - 3) = v353;
              *(v107 - 2) = v358;
              *(v107 - 1) = v363;
              *(v107 - 8) = v328;
              *(v107 - 7) = v333;
              *(v107 - 6) = v338;
              *(v107 - 5) = v343;
              *(v107 - 12) = v308;
              *(v107 - 11) = v313;
              *(v107 - 10) = v318;
              *(v107 - 9) = v323;
              *(v107 - 16) = v288;
              *(v107 - 15) = v293;
              *(v107 - 14) = v298;
              *(v107 - 13) = v303;
              if (v106 == a2)
              {
                break;
              }

              v106 += 256;
              v18 = v107 == v40;
              v107 += 256;
            }

            while (!v18);
            v69 = a2;
          }

          else
          {
            v120 = v70 >> 8;
            do
            {
              v121 = v120;
              v120 = v105;
              v105 = v121 % v105;
            }

            while (v105);
            v122 = &v41[256 * v120];
            do
            {
              v349 = *(v122 - 4);
              v354 = *(v122 - 3);
              v359 = *(v122 - 2);
              v364 = *(v122 - 1);
              v329 = *(v122 - 8);
              v334 = *(v122 - 7);
              v339 = *(v122 - 6);
              v344 = *(v122 - 5);
              v309 = *(v122 - 12);
              v314 = *(v122 - 11);
              v319 = *(v122 - 10);
              v324 = *(v122 - 9);
              v289 = *(v122 - 16);
              v294 = *(v122 - 15);
              v123 = *(v122 - 14);
              v124 = *(v122 - 13);
              v122 -= 256;
              v125 = &v122[v70];
              v126 = v122;
              v299 = v123;
              v304 = v124;
              do
              {
                v127 = v125;
                v128 = *v125;
                v129 = *(v125 + 1);
                v130 = *(v125 + 3);
                *(v126 + 2) = *(v125 + 2);
                *(v126 + 3) = v130;
                *v126 = v128;
                *(v126 + 1) = v129;
                v131 = *(v125 + 4);
                v132 = *(v125 + 5);
                v133 = *(v125 + 7);
                *(v126 + 6) = *(v125 + 6);
                *(v126 + 7) = v133;
                *(v126 + 4) = v131;
                *(v126 + 5) = v132;
                v134 = *(v125 + 8);
                v135 = *(v125 + 9);
                v136 = *(v125 + 11);
                *(v126 + 10) = *(v125 + 10);
                *(v126 + 11) = v136;
                *(v126 + 8) = v134;
                *(v126 + 9) = v135;
                v137 = *(v125 + 12);
                v138 = *(v125 + 13);
                v139 = *(v125 + 15);
                *(v126 + 14) = *(v125 + 14);
                *(v126 + 15) = v139;
                *(v126 + 12) = v137;
                *(v126 + 13) = v138;
                v140 = (v40 - v125) >> 8;
                v125 += 256 * v104;
                v141 = __OFSUB__(v104, v140);
                v143 = v104 - v140;
                v142 = (v143 < 0) ^ v141;
                v144 = &v41[256 * v143];
                if (!v142)
                {
                  v125 = v144;
                }

                v126 = v127;
              }

              while (v125 != v122);
              *(v127 + 2) = v299;
              *(v127 + 3) = v304;
              *v127 = v289;
              *(v127 + 1) = v294;
              *(v127 + 6) = v319;
              *(v127 + 7) = v324;
              *(v127 + 4) = v309;
              *(v127 + 5) = v314;
              *(v127 + 10) = v339;
              *(v127 + 11) = v344;
              *(v127 + 8) = v329;
              *(v127 + 9) = v334;
              *(v127 + 14) = v359;
              *(v127 + 15) = v364;
              *(v127 + 12) = v349;
              *(v127 + 13) = v354;
            }

            while (v122 != v41);
            v69 = &v41[v40 - a2];
          }
        }
      }

      goto LABEL_151;
    }

    if (v14 == -1)
    {
      v253 = &result[v9];
      v300 = *&result[v9 + 32];
      v305 = *&result[v9 + 48];
      v290 = *&result[v9];
      v295 = *&result[v9 + 16];
      v320 = *&result[v9 + 96];
      v325 = *&result[v9 + 112];
      v310 = *&result[v9 + 64];
      v315 = *&result[v9 + 80];
      v340 = *&result[v9 + 160];
      v345 = *&result[v9 + 176];
      v330 = *&result[v9 + 128];
      v335 = *&result[v9 + 144];
      v360 = *&result[v9 + 224];
      v365 = *&result[v9 + 240];
      v350 = *&result[v9 + 192];
      v355 = *&result[v9 + 208];
      v254 = *a2;
      v255 = *(a2 + 1);
      v256 = *(a2 + 3);
      *(v253 + 2) = *(a2 + 2);
      *(v253 + 3) = v256;
      *v253 = v254;
      *(v253 + 1) = v255;
      v257 = *(a2 + 4);
      v258 = *(a2 + 5);
      v259 = *(a2 + 7);
      *(v253 + 6) = *(a2 + 6);
      *(v253 + 7) = v259;
      *(v253 + 4) = v257;
      *(v253 + 5) = v258;
      v260 = *(a2 + 8);
      v261 = *(a2 + 9);
      v262 = *(a2 + 11);
      *(v253 + 10) = *(a2 + 10);
      *(v253 + 11) = v262;
      *(v253 + 8) = v260;
      *(v253 + 9) = v261;
      v263 = *(a2 + 12);
      v264 = *(a2 + 13);
      v265 = *(a2 + 15);
      *(v253 + 14) = *(a2 + 14);
      *(v253 + 15) = v265;
      *(v253 + 12) = v263;
      *(v253 + 13) = v264;
      *(a2 + 12) = v350;
      *(a2 + 13) = v355;
      *(a2 + 14) = v360;
      *(a2 + 15) = v365;
      *(a2 + 8) = v330;
      *(a2 + 9) = v335;
      *(a2 + 10) = v340;
      *(a2 + 11) = v345;
      *(a2 + 4) = v310;
      *(a2 + 5) = v315;
      *(a2 + 6) = v320;
      *(a2 + 7) = v325;
      *a2 = v290;
      *(a2 + 1) = v295;
      *(a2 + 2) = v300;
      *(a2 + 3) = v305;
      return result;
    }

    v68 = v37 / 2;
    v41 = &result[256 * (v37 / 2) + v9];
    v40 = a2;
    if (a2 != a3)
    {
      v75 = (a3 - a2) >> 8;
      v76 = v41[24];
      v78 = *v41;
      v77 = *(v41 + 1);
      v79 = *(v41 + 7);
      v40 = a2;
      v81 = *(v41 + 2);
      v80 = *(v41 + 3);
      do
      {
        v83 = v75 >> 1;
        v84 = &v40[256 * (v75 >> 1)];
        v85 = v84[24];
        v86 = v85 == v76;
        if (v85 >= v76)
        {
          v87 = 1;
        }

        else
        {
          v87 = -1;
        }

        if (v86)
        {
          v88 = *v84;
          v89 = *(v84 + 1);
          v90 = *(v84 + 7);
          v92 = *(v84 + 2);
          v91 = *(v84 + 3);
          v93 = v91 == v80;
          if (v91 >= v80)
          {
            v94 = 1;
          }

          else
          {
            v94 = -1;
          }

          if (v93)
          {
            v94 = 0;
          }

          v95 = v90 == v79;
          if (v90 >= v79)
          {
            v96 = 1;
          }

          else
          {
            v96 = -1;
          }

          if (v95)
          {
            v96 = v94;
          }

          v97 = v88 == v78;
          if (v88 >= v78)
          {
            v98 = 1;
          }

          else
          {
            v98 = -1;
          }

          if (v97)
          {
            v98 = v96;
          }

          v99 = v89 == v77;
          if (v89 >= v77)
          {
            v87 = 1;
          }

          else
          {
            v87 = -1;
          }

          if (v99)
          {
            v87 = v98;
          }

          if (v92 >= v81)
          {
            v100 = 1;
          }

          else
          {
            v100 = -1;
          }

          if (v92 != v81)
          {
            v87 = v100;
          }
        }

        v82 = v84 + 256;
        v75 += ~v83;
        if (v87 < 0)
        {
          v40 = v82;
        }

        else
        {
          v75 = v83;
        }
      }

      while (v75);
    }

    v39 = (v40 - a2) >> 8;
    v69 = v40;
    v70 = a2 - v41;
    if (a2 != v41)
    {
      goto LABEL_90;
    }

LABEL_151:
    v145 = -(v68 + v14);
    v146 = a5 - v39;
    if (v68 + v39 >= a5 - (v68 + v39) - v14)
    {
      v150 = v39;
      sub_1E547E22C(v69, v40, a3, v145, a5 - v39, a6, a7);
      a2 = v41;
      a4 = v68;
      a3 = v69;
      a5 = v150;
      result = v38;
      if (!v150)
      {
        return result;
      }
    }

    else
    {
      v147 = v41;
      v148 = a3;
      v149 = v145;
      sub_1E547E22C(&result[v9], v147, v69, v68, v39, a6, a7);
      a4 = v149;
      a3 = v148;
      a2 = v40;
      a5 = v146;
      result = v69;
      if (!v146)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != result)
    {
      v198 = -a6;
      v199 = a6;
      v200 = result;
      do
      {
        v201 = *v200;
        v202 = *(v200 + 1);
        v203 = *(v200 + 3);
        v199[2] = *(v200 + 2);
        v199[3] = v203;
        *v199 = v201;
        v199[1] = v202;
        v204 = *(v200 + 4);
        v205 = *(v200 + 5);
        v206 = *(v200 + 7);
        v199[6] = *(v200 + 6);
        v199[7] = v206;
        v199[4] = v204;
        v199[5] = v205;
        v207 = *(v200 + 8);
        v208 = *(v200 + 9);
        v209 = *(v200 + 11);
        v199[10] = *(v200 + 10);
        v199[11] = v209;
        v199[8] = v207;
        v199[9] = v208;
        v210 = *(v200 + 12);
        v211 = *(v200 + 13);
        v212 = *(v200 + 15);
        v199[14] = *(v200 + 14);
        v199[15] = v212;
        v199[12] = v210;
        v199[13] = v211;
        v200 += 256;
        v199 += 16;
        v198 -= 256;
      }

      while (v200 != a2);
      while (a2 != a3)
      {
        v225 = a2[24];
        v226 = *(a6 + 24);
        v227 = v225 == v226;
        if (v225 >= v226)
        {
          v228 = 1;
        }

        else
        {
          v228 = -1;
        }

        if (v227)
        {
          v229 = *(a6 + 8);
          v230 = *(a2 + 2);
          v231 = v230 == v229;
          v228 = v230 >= v229 ? 1 : -1;
          if (v231)
          {
            v232 = *(a2 + 1);
            v233 = *(a6 + 4);
            v234 = v232 == v233;
            v228 = v232 >= v233 ? 1 : -1;
            if (v234)
            {
              v228 = *a2 >= *a6 ? 1 : -1;
              if (*a2 == *a6)
              {
                v235 = *(a2 + 7);
                v236 = *(a6 + 28);
                v237 = v235 == v236;
                v228 = v235 >= v236 ? 1 : -1;
                if (v237)
                {
                  v238 = *(a2 + 3);
                  v239 = *(a6 + 12);
                  v240 = v238 == v239;
                  v228 = v238 >= v239 ? 1 : -1;
                  if (v240)
                  {
                    v228 = 0;
                  }
                }
              }
            }
          }
        }

        if (v228 < 0)
        {
          v241 = *a2;
          v242 = *(a2 + 1);
          v243 = *(a2 + 3);
          *(result + 2) = *(a2 + 2);
          *(result + 3) = v243;
          *result = v241;
          *(result + 1) = v242;
          v244 = *(a2 + 4);
          v245 = *(a2 + 5);
          v246 = *(a2 + 7);
          *(result + 6) = *(a2 + 6);
          *(result + 7) = v246;
          *(result + 4) = v244;
          *(result + 5) = v245;
          v247 = *(a2 + 8);
          v248 = *(a2 + 9);
          v249 = *(a2 + 11);
          *(result + 10) = *(a2 + 10);
          *(result + 11) = v249;
          *(result + 8) = v247;
          *(result + 9) = v248;
          v250 = *(a2 + 12);
          v251 = *(a2 + 13);
          v252 = *(a2 + 15);
          *(result + 14) = *(a2 + 14);
          *(result + 15) = v252;
          *(result + 12) = v250;
          *(result + 13) = v251;
          a2 += 256;
          result += 256;
          if (v199 == a6)
          {
            return result;
          }
        }

        else
        {
          v213 = *a6;
          v214 = *(a6 + 16);
          v215 = *(a6 + 48);
          *(result + 2) = *(a6 + 32);
          *(result + 3) = v215;
          *result = v213;
          *(result + 1) = v214;
          v216 = *(a6 + 64);
          v217 = *(a6 + 80);
          v218 = *(a6 + 112);
          *(result + 6) = *(a6 + 96);
          *(result + 7) = v218;
          *(result + 4) = v216;
          *(result + 5) = v217;
          v219 = *(a6 + 128);
          v220 = *(a6 + 144);
          v221 = *(a6 + 176);
          *(result + 10) = *(a6 + 160);
          *(result + 11) = v221;
          *(result + 8) = v219;
          *(result + 9) = v220;
          v222 = *(a6 + 192);
          v223 = *(a6 + 208);
          v224 = *(a6 + 240);
          *(result + 14) = *(a6 + 224);
          *(result + 15) = v224;
          *(result + 12) = v222;
          *(result + 13) = v223;
          a6 += 256;
          result += 256;
          if (v199 == a6)
          {
            return result;
          }
        }
      }

      return memmove(result, a6, -(a6 + v198));
    }
  }

  else if (a2 != a3)
  {
    v151 = 0;
    do
    {
      v152 = (a6 + v151);
      v153 = *&a2[v151];
      v154 = *&a2[v151 + 16];
      v155 = *&a2[v151 + 48];
      v152[2] = *&a2[v151 + 32];
      v152[3] = v155;
      *v152 = v153;
      v152[1] = v154;
      v156 = *&a2[v151 + 64];
      v157 = *&a2[v151 + 80];
      v158 = *&a2[v151 + 112];
      v152[6] = *&a2[v151 + 96];
      v152[7] = v158;
      v152[4] = v156;
      v152[5] = v157;
      v159 = *&a2[v151 + 128];
      v160 = *&a2[v151 + 144];
      v161 = *&a2[v151 + 176];
      v152[10] = *&a2[v151 + 160];
      v152[11] = v161;
      v152[8] = v159;
      v152[9] = v160;
      v162 = *&a2[v151 + 192];
      v163 = *&a2[v151 + 208];
      v164 = *&a2[v151 + 240];
      v152[14] = *&a2[v151 + 224];
      v152[15] = v164;
      v152[12] = v162;
      v152[13] = v163;
      v151 += 256;
    }

    while (&a2[v151] != a3);
    v165 = (a6 + v151);
    while (a2 != result)
    {
      v180 = *(a2 - 64);
      v181 = *(v165 - 64);
      v182 = *(v165 - 232);
      v183 = *(a2 - 232);
      v184 = v182 == v183;
      if (v182 >= v183)
      {
        v185 = 1;
      }

      else
      {
        v185 = -1;
      }

      if (v184)
      {
        v186 = *(a2 - 62);
        v187 = *(v165 - 62);
        v188 = v187 == v186;
        v185 = v187 >= v186 ? 1 : -1;
        if (v188)
        {
          v189 = *(v165 - 63);
          v190 = *(a2 - 63);
          v191 = v189 == v190;
          v185 = v189 >= v190 ? 1 : -1;
          if (v191)
          {
            v185 = v181 >= v180 ? 1 : -1;
            if (v181 == v180)
            {
              v192 = *(v165 - 57);
              v193 = *(a2 - 57);
              v194 = v192 == v193;
              v185 = v192 >= v193 ? 1 : -1;
              if (v194)
              {
                v195 = *(v165 - 61);
                v196 = *(a2 - 61);
                v197 = v195 == v196;
                v185 = v195 >= v196 ? 1 : -1;
                if (v197)
                {
                  v185 = 0;
                }
              }
            }
          }
        }
      }

      v166 = (v185 & 0x80) == 0;
      if (v185 < 0)
      {
        v167 = a2 - 256;
      }

      else
      {
        v167 = v165 - 256;
      }

      v168 = *v167;
      v169 = *(v167 + 1);
      v170 = *(v167 + 3);
      *(a3 - 14) = *(v167 + 2);
      *(a3 - 13) = v170;
      *(a3 - 16) = v168;
      *(a3 - 15) = v169;
      v171 = *(v167 + 4);
      v172 = *(v167 + 5);
      v173 = *(v167 + 7);
      *(a3 - 10) = *(v167 + 6);
      *(a3 - 9) = v173;
      *(a3 - 12) = v171;
      *(a3 - 11) = v172;
      v174 = *(v167 + 8);
      v175 = *(v167 + 9);
      v176 = *(v167 + 11);
      *(a3 - 6) = *(v167 + 10);
      *(a3 - 5) = v176;
      *(a3 - 8) = v174;
      *(a3 - 7) = v175;
      v177 = *(v167 + 12);
      v178 = *(v167 + 13);
      v179 = *(v167 + 15);
      *(a3 - 2) = *(v167 + 14);
      *(a3 - 1) = v179;
      *(a3 - 4) = v177;
      *(a3 - 3) = v178;
      a3 -= 256;
      if (v166)
      {
        v165 -= 256;
      }

      else
      {
        a2 -= 256;
      }

      if (v165 == a6)
      {
        return result;
      }
    }

    if (v165 != a6)
    {
      v266 = -256;
      do
      {
        v267 = &a3[v266];
        v268 = *(v165 - 16);
        v269 = *(v165 - 15);
        v270 = *(v165 - 13);
        *(v267 + 2) = *(v165 - 14);
        *(v267 + 3) = v270;
        *v267 = v268;
        *(v267 + 1) = v269;
        v271 = *(v165 - 12);
        v272 = *(v165 - 11);
        v273 = *(v165 - 9);
        *(v267 + 6) = *(v165 - 10);
        *(v267 + 7) = v273;
        *(v267 + 4) = v271;
        *(v267 + 5) = v272;
        v274 = *(v165 - 8);
        v275 = *(v165 - 7);
        v276 = *(v165 - 5);
        *(v267 + 10) = *(v165 - 6);
        *(v267 + 11) = v276;
        *(v267 + 8) = v274;
        *(v267 + 9) = v275;
        v277 = *(v165 - 4);
        v278 = *(v165 - 3);
        v279 = *(v165 - 1);
        *(v267 + 14) = *(v165 - 2);
        *(v267 + 15) = v279;
        *(v267 + 12) = v277;
        *(v267 + 13) = v278;
        v266 -= 256;
        v165 -= 256;
      }

      while (v165 != a6);
    }
  }

  return result;
}

uint64_t sub_1E547EE14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1E547EE60(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1E547F2F8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5F0A290;
  *(a1 + 8) = xmmword_1E54921E0;
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1E5492F10;
  *(a1 + 48) = 16;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 72) = 0xFFFFF;
  *(a1 + 200) = 0u;
  v6 = (a1 + 200);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  v7 = a1 + 1216;
  *(a1 + 488) = a1 + 496;
  bzero((a1 + 1216), 0x1000uLL);
  *v4 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  *(a1 + 24) = v8;
  if (v4 == a2)
  {
    v13 = *(a2 + 144);
    v14 = *(a2 + 160);
    *(a1 + 180) = *(a2 + 172);
    *(a1 + 168) = v14;
    *(a1 + 152) = v13;
  }

  else
  {
    sub_1E5478224(v5, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    sub_1E54746E4((a1 + 104), *(a2 + 96), *(a2 + 104), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 104) - *(a2 + 96)) >> 3));
    sub_1E54746E4((a1 + 128), *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
    v11 = *(a2 + 144);
    v12 = *(a2 + 160);
    *(a1 + 180) = *(a2 + 172);
    *(a1 + 168) = v12;
    *(a1 + 152) = v11;
    sub_1E54746E4(v6, *(a2 + 192), *(a2 + 200), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 200) - *(a2 + 192)) >> 3));
  }

  v15 = 0;
  *(a1 + 512) = xmmword_1E5493968;
  *(a1 + 528) = unk_1E5493978;
  *(a1 + 544) = xmmword_1E5493988;
  *(a1 + 560) = xmmword_1E5493200;
  *(a1 + 576) = xmmword_1E5493210;
  *(a1 + 592) = vdupq_n_s64(0xBFE6A00000000000);
  *(a1 + 608) = vdupq_n_s64(0x3FE6A00000000000uLL);
  *(a1 + 624) = xmmword_1E5493220;
  *(a1 + 640) = xmmword_1E5493230;
  *(a1 + 656) = xmmword_1E5493998;
  *(a1 + 672) = unk_1E54939A8;
  *(a1 + 688) = xmmword_1E54939B8;
  *(v7 + 160) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(a1 + 3264) = xmmword_1E5493110;
  *(a1 + 3280) = xmmword_1E5493240;
  *(a1 + 3296) = xmmword_1E5493250;
  *(a1 + 3312) = xmmword_1E5493260;
  *(a1 + 3328) = xmmword_1E5493270;
  *(a1 + 3344) = xmmword_1E5493280;
  *(a1 + 3360) = xmmword_1E5493290;
  *(a1 + 3376) = xmmword_1E54932A0;
  *(a1 + 3392) = xmmword_1E54932B0;
  *(a1 + 3408) = xmmword_1E54932C0;
  *(a1 + 3424) = xmmword_1E54932D0;
  *&v16 = 0x100000001;
  *(&v16 + 1) = 0x100000001;
  *(a1 + 3440) = xmmword_1E54932E0;
  *(a1 + 1384) = v16;
  *(a1 + 1400) = xmmword_1E54932F0;
  *(a1 + 3456) = xmmword_1E5493300;
  *(a1 + 3472) = xmmword_1E5493320;
  *(a1 + 1416) = xmmword_1E5493310;
  *(a1 + 1432) = xmmword_1E5493330;
  *(a1 + 3488) = xmmword_1E5493340;
  *&v16 = 0x700000007;
  *(&v16 + 1) = 0x700000007;
  *(a1 + 3504) = xmmword_1E5493350;
  *&v17 = 0x800000008;
  *(&v17 + 1) = 0x800000008;
  *(a1 + 1448) = v16;
  *(a1 + 1464) = v17;
  *(a1 + 3520) = xmmword_1E5493360;
  *(a1 + 3536) = xmmword_1E5493380;
  *(a1 + 1480) = xmmword_1E5493370;
  *(a1 + 1496) = xmmword_1E5493390;
  *(a1 + 3552) = xmmword_1E54933A0;
  *(a1 + 3568) = xmmword_1E54933C0;
  *(a1 + 1512) = xmmword_1E54933B0;
  *(a1 + 1528) = xmmword_1E54933D0;
  *(a1 + 3584) = xmmword_1E54933E0;
  *(a1 + 3600) = xmmword_1E5493400;
  *(a1 + 1544) = xmmword_1E54933F0;
  *(a1 + 1560) = xmmword_1E5493410;
  *(a1 + 3616) = xmmword_1E5493280;
  *(a1 + 3632) = xmmword_1E5493280;
  *(a1 + 1576) = xmmword_1E5493420;
  *(a1 + 1592) = xmmword_1E5493430;
  *(a1 + 3648) = xmmword_1E5493440;
  *(a1 + 3664) = xmmword_1E5493460;
  *&v18 = 0x1900000019;
  *(&v18 + 1) = 0x1900000019;
  *(a1 + 1608) = xmmword_1E5493450;
  *(a1 + 1624) = v18;
  *(a1 + 3680) = xmmword_1E5493470;
  *(a1 + 3696) = xmmword_1E5493490;
  *(a1 + 1640) = xmmword_1E5493480;
  *(a1 + 1656) = xmmword_1E54934A0;
  *(a1 + 3712) = xmmword_1E54934B0;
  *(a1 + 3728) = xmmword_1E54934D0;
  *&v18 = 0x1F0000001FLL;
  *(&v18 + 1) = 0x1F0000001FLL;
  *(a1 + 1672) = xmmword_1E54934C0;
  *(a1 + 1688) = v18;
  *(a1 + 3744) = xmmword_1E54934E0;
  *&v19 = 0x2000000020;
  *(&v19 + 1) = 0x2000000020;
  *(a1 + 3760) = xmmword_1E54934F0;
  *(a1 + 1704) = v19;
  *(a1 + 1720) = xmmword_1E5493500;
  *(a1 + 3776) = xmmword_1E5493510;
  *(a1 + 3792) = xmmword_1E5493530;
  *(a1 + 1736) = xmmword_1E5493520;
  *(a1 + 1752) = xmmword_1E5493540;
  *(a1 + 3808) = xmmword_1E5493550;
  *(a1 + 3824) = xmmword_1E5493570;
  *(a1 + 1768) = xmmword_1E5493560;
  *(a1 + 1784) = xmmword_1E5493580;
  *(a1 + 3840) = xmmword_1E5493590;
  *(a1 + 3856) = xmmword_1E54935B0;
  *(a1 + 1800) = xmmword_1E54935A0;
  *(a1 + 1816) = xmmword_1E54935C0;
  *(a1 + 3872) = xmmword_1E54935D0;
  *&v20 = 0x200000002;
  *(&v20 + 1) = 0x200000002;
  *(a1 + 3888) = xmmword_1E54935E0;
  *(a1 + 1832) = v20;
  *(a1 + 1848) = xmmword_1E5493310;
  *(a1 + 3904) = xmmword_1E54935B0;
  *(a1 + 3920) = xmmword_1E54935D0;
  *&v20 = 0x400000004;
  *(&v20 + 1) = 0x400000004;
  *(a1 + 1864) = xmmword_1E54935F0;
  *(a1 + 1880) = v20;
  *(a1 + 3936) = xmmword_1E54935E0;
  *(a1 + 3952) = xmmword_1E54935B0;
  *(a1 + 1896) = xmmword_1E5493600;
  *(a1 + 1912) = xmmword_1E5493610;
  *(a1 + 3968) = xmmword_1E54935D0;
  *&v21 = 0x600000006;
  *(&v21 + 1) = 0x600000006;
  *(a1 + 3984) = xmmword_1E5493620;
  *(a1 + 1928) = v21;
  *(a1 + 1944) = xmmword_1E5493630;
  *(a1 + 4000) = xmmword_1E54933A0;
  *(a1 + 4016) = xmmword_1E5493650;
  *(a1 + 1960) = xmmword_1E5493640;
  *(a1 + 1976) = v17;
  *(a1 + 4032) = xmmword_1E5493660;
  *(a1 + 4048) = xmmword_1E54933A0;
  *(a1 + 1992) = xmmword_1E5493670;
  *(a1 + 2008) = xmmword_1E5493370;
  *(a1 + 4064) = xmmword_1E5493650;
  *&v22 = 0xA0000000ALL;
  *(&v22 + 1) = 0xA0000000ALL;
  *(a1 + 4080) = xmmword_1E5493660;
  *(a1 + 2024) = v22;
  *(a1 + 2040) = xmmword_1E5493680;
  *(a1 + 4096) = xmmword_1E54933A0;
  *(a1 + 4112) = xmmword_1E5493650;
  *&v17 = 0xC0000000CLL;
  *(&v17 + 1) = 0xC0000000CLL;
  *(a1 + 2056) = xmmword_1E5493690;
  *(a1 + 2072) = v17;
  *(a1 + 4128) = xmmword_1E54936A0;
  *(a1 + 4144) = xmmword_1E54936C0;
  *(a1 + 2088) = xmmword_1E54936B0;
  *(a1 + 2104) = xmmword_1E54933B0;
  *(a1 + 4160) = xmmword_1E54936D0;
  *&v17 = 0xE0000000ELL;
  *(&v17 + 1) = 0xE0000000ELL;
  *(a1 + 4176) = xmmword_1E54936E0;
  *(a1 + 2120) = v17;
  *(a1 + 2136) = xmmword_1E54936F0;
  *(a1 + 4192) = xmmword_1E54936C0;
  *(a1 + 4208) = xmmword_1E54936D0;
  *&v23 = 0x1000000010;
  *(&v23 + 1) = 0x1000000010;
  *(a1 + 2152) = xmmword_1E5493700;
  *(a1 + 2168) = v23;
  *(a1 + 4224) = xmmword_1E54936E0;
  *(a1 + 4240) = xmmword_1E54936C0;
  *(a1 + 2184) = xmmword_1E5493710;
  *(a1 + 2200) = xmmword_1E5493720;
  *(a1 + 4256) = xmmword_1E54936D0;
  *&v24 = 0x1200000012;
  *(&v24 + 1) = 0x1200000012;
  *(a1 + 4272) = xmmword_1E5493730;
  *(a1 + 2216) = v24;
  *(a1 + 2232) = xmmword_1E5493740;
  *(a1 + 4288) = xmmword_1E5493750;
  *(a1 + 4304) = xmmword_1E5493770;
  *&v23 = 0x1400000014;
  *(&v23 + 1) = 0x1400000014;
  *(a1 + 2248) = xmmword_1E5493760;
  *(a1 + 2264) = v23;
  *(a1 + 4320) = xmmword_1E5493780;
  *(a1 + 4336) = xmmword_1E5493750;
  *(a1 + 2280) = xmmword_1E5493790;
  *(a1 + 2296) = xmmword_1E54937A0;
  *(a1 + 4352) = xmmword_1E5493770;
  *&v23 = 0x1600000016;
  *(&v23 + 1) = 0x1600000016;
  *(a1 + 4368) = xmmword_1E5493780;
  *(a1 + 2312) = v23;
  *(a1 + 2328) = xmmword_1E54937B0;
  *(a1 + 4384) = xmmword_1E5493750;
  *(a1 + 4400) = xmmword_1E5493770;
  *&v21 = 0x1800000018;
  *(&v21 + 1) = 0x1800000018;
  *(a1 + 2344) = xmmword_1E54937C0;
  *(a1 + 2360) = v21;
  *(a1 + 4416) = xmmword_1E54937D0;
  *(a1 + 4432) = xmmword_1E54937F0;
  *(a1 + 2376) = xmmword_1E54937E0;
  *(a1 + 2392) = xmmword_1E5493800;
  *(a1 + 4448) = xmmword_1E5493810;
  *&v23 = 0x1A0000001ALL;
  *(&v23 + 1) = 0x1A0000001ALL;
  *(a1 + 2408) = v23;
  *(a1 + 4464) = xmmword_1E5493820;
  *(a1 + 2424) = xmmword_1E54934A0;
  *(a1 + 4480) = xmmword_1E54937F0;
  *(a1 + 2440) = xmmword_1E5493830;
  *(a1 + 4496) = xmmword_1E5493810;
  *&v25 = 0x1C0000001CLL;
  *(&v25 + 1) = 0x1C0000001CLL;
  *(a1 + 2456) = v25;
  *(a1 + 4512) = xmmword_1E5493820;
  *(a1 + 2472) = xmmword_1E5493840;
  *(a1 + 4528) = xmmword_1E54937F0;
  *(a1 + 2488) = xmmword_1E5493850;
  *(a1 + 4544) = xmmword_1E5493810;
  *&v25 = 0x1E0000001ELL;
  *(&v25 + 1) = 0x1E0000001ELL;
  *(a1 + 2504) = v25;
  *(a1 + 4560) = xmmword_1E5493860;
  *(a1 + 2520) = xmmword_1E5493870;
  *(a1 + 4576) = xmmword_1E5493530;
  *(a1 + 2536) = xmmword_1E5493880;
  *(a1 + 4592) = xmmword_1E5493890;
  *(a1 + 2552) = v19;
  *(a1 + 4608) = xmmword_1E54938A0;
  *(a1 + 2568) = xmmword_1E54938B0;
  *(a1 + 4624) = xmmword_1E5493530;
  *(a1 + 2584) = xmmword_1E5493500;
  *(a1 + 4640) = xmmword_1E5493890;
  *&v26 = 0x2200000022;
  *(&v26 + 1) = 0x2200000022;
  *(a1 + 2600) = v26;
  *(a1 + 4656) = xmmword_1E54938A0;
  *(a1 + 2616) = xmmword_1E54938C0;
  *(a1 + 4672) = xmmword_1E5493530;
  *(a1 + 2632) = xmmword_1E54938D0;
  *(a1 + 4688) = xmmword_1E5493890;
  *&v26 = 0x2400000024;
  *(&v26 + 1) = 0x2400000024;
  *(a1 + 2648) = v26;
  *(a1 + 4704) = 0x2900000028;
  *(a1 + 2664) = 36;
  *(a1 + 4712) = 42;
  *(a1 + 2668) = 1;
  *(a1 + 4716) = 13;
  *(a1 + 2672) = xmmword_1E54938E0;
  *(a1 + 4720) = xmmword_1E54933A0;
  *(a1 + 2688) = 6;
  *(a1 + 4736) = 18;
  *(a1 + 2692) = 1;
  *(a1 + 4748) = 0xD00000012;
  *(a1 + 4740) = 0x1100000010;
  *(a1 + 2696) = xmmword_1E54938E0;
  *(a1 + 2712) = 6;
  *(a1 + 4756) = 0xF0000000ELL;
  *(a1 + 2716) = 1;
  *(a1 + 4764) = 25;
  *(a1 + 2720) = xmmword_1E54938E0;
  *(a1 + 4768) = xmmword_1E5493750;
  *(a1 + 2736) = 6;
  *(a1 + 4784) = 30;
  *(a1 + 2740) = 1;
  *(a1 + 4788) = 0x1D0000001CLL;
  *(a1 + 4796) = 0x190000001ELL;
  *(a1 + 2744) = xmmword_1E54938E0;
  *(a1 + 2760) = 6;
  *(a1 + 4804) = 0x1B0000001ALL;
  *(a1 + 2764) = 1;
  *(a1 + 4812) = 37;
  *(a1 + 2768) = xmmword_1E54938E0;
  *(a1 + 4816) = xmmword_1E5493530;
  *(a1 + 2784) = 6;
  *(a1 + 4832) = 42;
  *(a1 + 2788) = 1;
  *(a1 + 4836) = 0x2900000028;
  *(a1 + 4844) = 0x250000002ALL;
  *(a1 + 2792) = xmmword_1E54938E0;
  *(a1 + 2808) = 6;
  *(a1 + 4852) = 0x2700000026;
  *(a1 + 2812) = 7;
  *(a1 + 4860) = 19;
  *(a1 + 2816) = xmmword_1E54935B0;
  *(a1 + 4864) = xmmword_1E54936C0;
  *(a1 + 2832) = 12;
  *(a1 + 4892) = 0x1300000018;
  *(a1 + 4940) = 0x1F00000024;
  *(a1 + 4880) = 24;
  *(a1 + 2836) = 7;
  *(a1 + 4884) = 0x1700000016;
  *(a1 + 2840) = xmmword_1E54935B0;
  *(a1 + 2856) = 12;
  *(a1 + 4900) = 0x1500000014;
  *(a1 + 2860) = 7;
  *(a1 + 4908) = 31;
  *(a1 + 2864) = xmmword_1E54935B0;
  *(a1 + 4912) = xmmword_1E54937F0;
  *(a1 + 2880) = 12;
  *(a1 + 4928) = 36;
  *(a1 + 2884) = 7;
  *(a1 + 4932) = 0x2300000022;
  *(a1 + 2888) = xmmword_1E54935B0;
  *(a1 + 2904) = 12;
  *(a1 + 4948) = 0x2100000020;
  *(a1 + 2908) = 13;
  *(a1 + 4956) = 25;
  *(a1 + 2912) = xmmword_1E54933A0;
  *(a1 + 4960) = xmmword_1E5493750;
  *(a1 + 2928) = 18;
  *(a1 + 4976) = 30;
  *(a1 + 2932) = 13;
  *(a1 + 4988) = 0x190000001ELL;
  *(a1 + 4980) = 0x1D0000001CLL;
  *(a1 + 2936) = xmmword_1E54933A0;
  *(a1 + 2952) = 18;
  *(a1 + 4996) = 0x1B0000001ALL;
  *(a1 + 2956) = 13;
  *(a1 + 5004) = 37;
  *(a1 + 2960) = xmmword_1E54933A0;
  *(a1 + 5008) = xmmword_1E5493530;
  *(a1 + 2976) = 18;
  *(a1 + 5024) = 42;
  *(a1 + 2980) = 13;
  *(a1 + 5028) = 0x2900000028;
  *(a1 + 5036) = 42;
  *(a1 + 5040) = 37;
  *(a1 + 2984) = xmmword_1E54933A0;
  *(a1 + 3000) = 18;
  *(a1 + 5044) = 0x2700000026;
  *(a1 + 3004) = 19;
  *(a1 + 5052) = 31;
  *(a1 + 3008) = xmmword_1E54936C0;
  *(a1 + 5056) = xmmword_1E54937F0;
  *(a1 + 3024) = 24;
  *(a1 + 5072) = 36;
  *(a1 + 3028) = 19;
  *(a1 + 5076) = 0x2300000022;
  *(a1 + 5084) = 36;
  *(a1 + 5088) = 31;
  *(a1 + 3032) = xmmword_1E54936C0;
  *(a1 + 3048) = 24;
  *(a1 + 5092) = 0x2100000020;
  *(a1 + 3052) = 25;
  *(a1 + 5100) = 37;
  *(a1 + 3056) = xmmword_1E5493750;
  *(a1 + 5104) = xmmword_1E5493530;
  *(a1 + 3072) = 30;
  *(a1 + 5120) = 42;
  *(a1 + 3076) = 25;
  *(a1 + 5124) = 0x2900000028;
  *(a1 + 5132) = 42;
  *(a1 + 5136) = 37;
  *(a1 + 3080) = xmmword_1E5493750;
  v27 = 0x100000000;
  *(a1 + 3096) = 30;
  *(a1 + 5140) = 0x2700000026;
  do
  {
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    __y = vmulq_f64(vcvtq_f64_u64(v28), vdupq_n_s64(0x3FB0000000000000uLL));
    v113 = pow(1.41421356, __y.f64[1]);
    v29.f64[0] = pow(1.41421356, __y.f64[0]);
    v29.f64[1] = v113;
    __asm { FMOV            V2.2D, #0.5 }

    v35 = (a1 + v15);
    v35[44] = vmulq_f64(vrndmq_f64(vaddq_f64(vmulq_f64(v29, vdupq_n_s64(0x40B0000000000000uLL)), _Q2)), vdupq_n_s64(0x3F30000000000000uLL));
    v35[60] = vmulq_f64(vrndmq_f64(vaddq_f64(vmulq_f64(v29, vdupq_n_s64(0x40C0000000000000uLL)), _Q2)), vdupq_n_s64(0x3F20000000000000uLL));
    v27 = vadd_s32(v27, 0x200000002);
    v15 += 16;
  }

  while (v15 != 256);
  v36 = *(a1 + 24);
  v37 = v36 - 2;
  v38 = *(a1 + 224);
  v39 = *(a1 + 232);
  v40 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
  v41 = v36 - 2 - v40;
  if (v36 - 2 <= v40)
  {
    if (v36 - 2 < v40)
    {
      v46 = v38 + 24 * v37;
      if (v39 != v46)
      {
        v47 = *(a1 + 232);
        do
        {
          v49 = *(v47 - 24);
          v47 -= 24;
          v48 = v49;
          if (v49)
          {
            *(v39 - 16) = v48;
            operator delete(v48);
          }

          v39 = v47;
        }

        while (v47 != v46);
      }

      *(a1 + 232) = v46;
    }
  }

  else
  {
    v42 = *(a1 + 240);
    if (0xAAAAAAAAAAAAAAABLL * ((v42 - v39) >> 3) < v41)
    {
      if (v36 <= 1)
      {
        sub_1E5415338();
      }

      v43 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v38) >> 3);
      v44 = 2 * v43;
      if (2 * v43 <= v37)
      {
        v44 = v36 - 2;
      }

      if (v43 >= 0x555555555555555)
      {
        v45 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v45 = v44;
      }

      if (v45 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      goto LABEL_106;
    }

    bzero(*(a1 + 232), 24 * ((24 * v41 - 24) / 0x18) + 24);
    *(a1 + 232) = v39 + 24 * ((24 * v41 - 24) / 0x18) + 24;
  }

  v50 = *(a1 + 248);
  v51 = *(a1 + 256);
  v52 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
  v53 = v37 - v52;
  if (v37 <= v52)
  {
    if (v37 < v52)
    {
      v58 = v50 + 24 * v37;
      if (v51 != v58)
      {
        v59 = *(a1 + 256);
        do
        {
          v61 = *(v59 - 24);
          v59 -= 24;
          v60 = v61;
          if (v61)
          {
            *(v51 - 16) = v60;
            operator delete(v60);
          }

          v51 = v59;
        }

        while (v59 != v58);
      }

      *(a1 + 256) = v58;
    }
  }

  else
  {
    v54 = *(a1 + 264);
    if (0xAAAAAAAAAAAAAAABLL * ((v54 - v51) >> 3) < v53)
    {
      if (v36 <= 1)
      {
        sub_1E5415338();
      }

      v55 = 0xAAAAAAAAAAAAAAABLL * ((v54 - v50) >> 3);
      v56 = 2 * v55;
      if (2 * v55 <= v37)
      {
        v56 = v36 - 2;
      }

      if (v55 >= 0x555555555555555)
      {
        v57 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v57 = v56;
      }

      if (v57 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_106:
      sub_1E53E5340();
    }

    bzero(*(a1 + 256), 24 * ((24 * v53 - 24) / 0x18) + 24);
    *(a1 + 256) = v51 + 24 * ((24 * v53 - 24) / 0x18) + 24;
  }

  v63 = *(a1 + 272);
  v62 = *(a1 + 280);
  v64 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v63) >> 3);
  if (v37 <= v64)
  {
    if (v37 < v64)
    {
      v65 = v63 + 24 * v37;
      if (v62 != v65)
      {
        v66 = *(a1 + 280);
        do
        {
          v68 = *(v66 - 24);
          v66 -= 24;
          v67 = v68;
          if (v68)
          {
            *(v62 - 16) = v67;
            operator delete(v67);
          }

          v62 = v66;
        }

        while (v66 != v65);
      }

      *(a1 + 280) = v65;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 272, v37 - v64);
  }

  v70 = *(a1 + 296);
  v69 = *(a1 + 304);
  v71 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v70) >> 3);
  if (v37 <= v71)
  {
    if (v37 < v71)
    {
      v72 = v70 + 24 * v37;
      if (v69 != v72)
      {
        v73 = *(a1 + 304);
        do
        {
          v75 = *(v73 - 24);
          v73 -= 24;
          v74 = v75;
          if (v75)
          {
            *(v69 - 16) = v74;
            operator delete(v74);
          }

          v69 = v73;
        }

        while (v73 != v72);
      }

      *(a1 + 304) = v72;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 296, v37 - v71);
  }

  v77 = *(a1 + 320);
  v76 = *(a1 + 328);
  v78 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v77) >> 3);
  if (v37 <= v78)
  {
    if (v37 < v78)
    {
      v79 = v77 + 24 * v37;
      if (v76 != v79)
      {
        v80 = *(a1 + 328);
        do
        {
          v82 = *(v80 - 24);
          v80 -= 24;
          v81 = v82;
          if (v82)
          {
            *(v76 - 16) = v81;
            operator delete(v81);
          }

          v76 = v80;
        }

        while (v80 != v79);
      }

      *(a1 + 328) = v79;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 320, v37 - v78);
  }

  v84 = *(a1 + 344);
  v83 = *(a1 + 352);
  v85 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v84) >> 3);
  if (v37 <= v85)
  {
    if (v37 < v85)
    {
      v86 = v84 + 24 * v37;
      if (v83 != v86)
      {
        v87 = *(a1 + 352);
        do
        {
          v89 = *(v87 - 24);
          v87 -= 24;
          v88 = v89;
          if (v89)
          {
            *(v83 - 16) = v88;
            operator delete(v88);
          }

          v83 = v87;
        }

        while (v87 != v86);
      }

      *(a1 + 352) = v86;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 344, v37 - v85);
  }

  v91 = *(a1 + 368);
  v90 = *(a1 + 376);
  v92 = 0xAAAAAAAAAAAAAAABLL * ((v90 - v91) >> 3);
  if (v37 <= v92)
  {
    if (v37 < v92)
    {
      v93 = v91 + 24 * v37;
      if (v90 != v93)
      {
        v94 = *(a1 + 376);
        do
        {
          v96 = *(v94 - 24);
          v94 -= 24;
          v95 = v96;
          if (v96)
          {
            *(v90 - 16) = v95;
            operator delete(v95);
          }

          v90 = v94;
        }

        while (v94 != v93);
      }

      *(a1 + 376) = v93;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 368, v37 - v92);
  }

  v98 = *(a1 + 392);
  v97 = *(a1 + 400);
  v99 = 0xAAAAAAAAAAAAAAABLL * ((v97 - v98) >> 3);
  if (v37 <= v99)
  {
    if (v37 < v99)
    {
      v100 = v98 + 24 * v37;
      if (v97 != v100)
      {
        v101 = *(a1 + 400);
        do
        {
          v103 = *(v101 - 24);
          v101 -= 24;
          v102 = v103;
          if (v103)
          {
            *(v97 - 16) = v102;
            operator delete(v102);
          }

          v97 = v101;
        }

        while (v101 != v100);
      }

      *(a1 + 400) = v100;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 392, v37 - v99);
  }

  v105 = *(a1 + 416);
  v104 = *(a1 + 424);
  v106 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v105) >> 3);
  if (v37 <= v106)
  {
    if (v37 < v106)
    {
      v107 = v105 + 24 * v37;
      if (v104 != v107)
      {
        v108 = *(a1 + 424);
        do
        {
          v110 = *(v108 - 24);
          v108 -= 24;
          v109 = v110;
          if (v110)
          {
            *(v104 - 16) = v109;
            operator delete(v109);
          }

          v104 = v108;
        }

        while (v108 != v107);
      }

      *(a1 + 424) = v107;
    }
  }

  else
  {
    sub_1E545CE48(a1 + 416, v37 - v106);
  }

  return a1;
}