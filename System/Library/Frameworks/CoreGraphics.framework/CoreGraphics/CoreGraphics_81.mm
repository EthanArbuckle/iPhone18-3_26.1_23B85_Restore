_WORD *RGBA64_image_mark_W16(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v125 = *a2;
  v7 = *(a2 + 2);
  v124 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v121 = *(a2 + 9);
  v11 = *(a2 + 5) + v121 * a4;
  v12 = *(result + 4);
  v13 = v12 + (*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3);
  v136 = result;
  v122 = v10;
  v123 = v9;
  if (*(result + 22))
  {
    v14 = a3;
    v120 = *(a2 + 11);
    v119 = *(a2 + 13);
    v118 = ~(-1 << v10);
    v117 = v10 - 4;
    v15 = (v13 - 4);
    v16 = v6 ^ 0xFFFF;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v115 = a5;
    v116 = -v9;
    v114 = v8 + 16 * v14 + 8;
    v18 = BLEND16_21891;
    v131 = *(result + 4);
    while (1)
    {
      if (((v119 - v11) | (v11 - v120)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v118) >> v117) & 0xF;
        v20 = (v19 - 7) >= 9 ? v116 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v22 = *(v136 + 4) + (v11 >> v10) * v9;
      v129 = a6;
      v127 = v11;
      if (v125 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v114;
        v24 = v115;
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

          v29 = bswap32(*v28) >> 16;
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
            v41 = (v43 & (bswap32(*v42) >> 16)) >> v21;
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

        v33 = bswap32(*v32) >> 16;
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

          v36 = bswap32(*v35) >> 16;
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
          LODWORD(v33) = v33 - ((v38 & v33) >> v21) + ((v38 & (bswap32(*v37) >> 16)) >> v21);
        }

        v39 = v18[v30];
        v40 = v29 - ((v39 & v29) >> v30);
        v41 = (v39 & v33) >> v30;
LABEL_40:
        LOWORD(v29) = v40 + v41;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v123;
      v7 += 4 * v124;
      LOBYTE(v10) = v122;
      v11 = v127 + v121;
      a6 = v129 - 1;
      if (v129 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v134 = v21;
    v51 = v114;
    v52 = v115;
    v132 = v21;
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

      v57 = bswap32(*v56) >> 16;
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

        v71 = v18[v134];
        v68 = v57 - ((v71 & v57) >> v134);
        v69 = (v71 & (bswap32(*v70) >> 16)) >> v134;
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
          v82 = v20;
          v83 = v18;
          result = RGBA64_DplusDM(v7, v76, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v77 ^ 0xFFFF);
          v18 = v83;
          v20 = v82;
          v22 = v81;
          v12 = v131;
          v17 = v80;
          v6 = v79;
          v21 = v132;
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

    v61 = bswap32(*v60) >> 16;
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

      v64 = bswap32(*v63) >> 16;
      v65 = (v62 + v59);
      if (v15 < v65)
      {
        v65 = v15;
      }

      if (v65 < v12)
      {
        v65 = v12;
      }

      v66 = v18[v134];
      LODWORD(v57) = v57 - ((v66 & v57) >> v134) + ((v66 & v64) >> v134);
      LODWORD(v61) = v61 - ((v66 & v61) >> v134) + ((v66 & (bswap32(*v65) >> 16)) >> v134);
    }

    v67 = v18[v58];
    v68 = v57 - ((v67 & v57) >> v58);
    v69 = (v67 & v61) >> v58;
LABEL_77:
    LOWORD(v57) = v68 + v69;
    goto LABEL_78;
  }

  v84 = v13 - 4;
  v85 = v6 ^ 0xFFFF;
  v86 = (~(0xFFFF * v85 + 0x8000 + ((0xFFFF * v85 + 0x8000) >> 16)) >> 16) << 48;
  v133 = a5;
  v135 = (v8 + 16 * a3);
  do
  {
    v87 = *(v136 + 4);
    v88 = &v87[(v11 >> v10) * v9];
    v130 = a6;
    v128 = v11;
    if (v125 == 1)
    {
      if (a5 >= 1)
      {
        v90 = v133;
        v89 = v135;
        do
        {
          v91 = *v89;
          v89 += 2;
          v92 = &v88[v91];
          if (v84 < &v88[v91])
          {
            v92 = v84;
          }

          if (v92 < v87)
          {
            v92 = v87;
          }

          v93 = bswap32(*v92) >> 16;
          v94 = (v93 | 0xFFFF0000) * v85;
          if (v94 >= 0xFFFE8000)
          {
            v94 = -98304;
          }

          v95 = 0x100010001 * v93;
          v96 = (v93 - ((v94 + 0x8000 + ((v94 + 0x8000) >> 16)) >> 16));
          v97 = v95 | 0xFFFF000000000000;
          v98 = (v96 << 16) | (v96 << 32) | v86 | v96;
          if (v6 == 0xFFFF)
          {
            v98 = v97;
          }

          v99 = HIDWORD(v98);
          v100 = HIWORD(v98);
          v101 = bswap32(v98);
          v7[1] = v101;
          *v7 = HIWORD(v101);
          v7[2] = bswap32(v99) >> 16;
          v7[3] = __rev16(v100);
          v7 += 4;
          --v90;
        }

        while (v90);
      }
    }

    else
    {
      v103 = v133;
      v102 = v135;
      if (a5 >= 1)
      {
        do
        {
          v104 = *v102;
          v102 += 2;
          v105 = &v88[v104];
          if (v84 < &v88[v104])
          {
            v105 = v84;
          }

          if (v105 < *(v136 + 4))
          {
            v105 = *(v136 + 4);
          }

          v106 = bswap32(*v105) >> 16;
          v107 = (0x100010001 * v106) | 0xFFFF000000000000;
          v108 = (v106 | 0xFFFF0000) * v85;
          if (v108 >= 0xFFFE8000)
          {
            v108 = -98304;
          }

          v109 = (v106 - ((v108 + 0x8000 + ((v108 + 0x8000) >> 16)) >> 16));
          v110 = (v109 << 16) | (v109 << 32) | v86 | v109;
          if (v6 == 0xFFFF)
          {
            v111 = v107;
          }

          else
          {
            v111 = v110;
          }

          v112 = HIWORD(v111);
          if (HIWORD(v111))
          {
            if (v112 == 0xFFFF)
            {
              v113 = bswap32(v111);
              *v7 = HIWORD(v113);
              v7[1] = v113;
              v7[2] = bswap32(HIDWORD(v111)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v111, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v112 ^ 0xFFFF);
            }
          }

          v7 += 4;
          --v103;
        }

        while (v103);
      }
    }

    v9 = v123;
    v7 += 4 * v124;
    LOBYTE(v10) = v122;
    v11 = v128 + v121;
    a6 = v130 - 1;
  }

  while (v130 != 1);
  return result;
}

uint64_t RGBA64_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v7 = a2[1];
  v144 = *a2;
  v8 = *(result + 32);
  if (*(result + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v143 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v140 = *(a2 + 9);
  v14 = *(a2 + 5) + v140 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v156 = result;
  v16 = 0x8000;
  v145 = a5;
  v154 = a2[1];
  v155 = *(a2 + 4);
  v153 = v9;
  v141 = v13;
  v142 = v12;
  if (*(result + 176))
  {
    v138 = *(a2 + 13);
    v139 = *(a2 + 11);
    v137 = ~(-1 << v13);
    v17 = a5;
    v135 = -v12;
    v136 = v13 - 4;
    v18 = (v15 - 4);
    v19 = (32 - v7);
    v20 = v6 ^ 0xFFFFu;
    v21 = vdup_n_s32(v20);
    result = 0xFFFFLL;
    v134 = v11 + 16 * a3 + 8;
    v22 = vdup_n_s32(0x101u);
    v23 = xmmword_18439CC00;
    v24 = BLEND8_21892;
    v149 = (v15 - 4);
    v151 = v8;
    while (1)
    {
      if (((v138 - v14) | (v14 - v139)) < 0)
      {
        v27 = 0;
        v26 = 0;
      }

      else
      {
        v25 = ((v14 & v137) >> v136) & 0xF;
        v26 = (v25 - 7) >= 9 ? v135 : v12;
        v27 = weights_21890[v25] & 0xF;
      }

      v28 = *(v156 + 32) + (v14 >> v13) * v12;
      v147 = a6;
      v146 = v14;
      if (v144 != 1)
      {
        break;
      }

      if (v17 >= 1)
      {
        v30 = v145;
        v29 = v134;
        while (1)
        {
          v31 = *(v29 - 1);
          v32 = *v29;
          v33 = v28 + v31;
          if (v18 >= v28 + v31)
          {
            v34 = (v28 + v31);
          }

          else
          {
            v34 = v18;
          }

          if (v34 < v8)
          {
            v34 = v8;
          }

          v35 = *v34;
          v36 = v32 & 0xF;
          if ((v32 & 0xF) != 0)
          {
            break;
          }

          if (v27)
          {
            v47 = (v33 + v26);
            if (v18 < v33 + v26)
            {
              v47 = v18;
            }

            if (v47 < v8)
            {
              v47 = v8;
            }

            v48 = v24[v27];
            v45 = v35 - ((v48 & v35) >> v27);
            v46 = (v48 & *v47) >> v27;
            goto LABEL_43;
          }

LABEL_44:
          v49 = (v35 << v7) | (v35 >> v19);
          v50 = HIBYTE(v49) | (HIBYTE(v49) << 8);
          if (v6 == 0xFFFF)
          {
            v51 = ((BYTE1(v49) | (BYTE1(v49) << 8)) << 32) | (((v49 | v9) | ((v49 | v9) << 8)) << 48) | v49 & 0xFF0000 | (BYTE2(v49) << 24);
          }

          else
          {
            v52.i32[0] = v49 | v9;
            v52.i32[1] = v49 >> 8;
            v53 = vmul_s32(vand_s8(v52, 0xFF000000FFLL), v22);
            v54 = vmla_s32(0x800000008000, v53, v21);
            v55 = vand_s8(vsub_s32(v53, vshr_n_u32(vsra_n_u32(v54, v54, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v56.i64[0] = v55.u32[0];
            v56.i64[1] = v55.u32[1];
            v57 = vshlq_u64(v56, v23);
            v51 = vorrq_s8(v57, vdupq_laneq_s64(v57, 1)).u64[0] | (((BYTE2(v49) | (BYTE2(v49) << 8)) - ((v16 + (BYTE2(v49) | (BYTE2(v49) << 8)) * v20 + ((v16 + (BYTE2(v49) | (BYTE2(v49) << 8)) * v20) >> 16)) >> 16)) << 16);
            v50 = (v50 - ((v16 + v50 * v20 + ((v16 + v50 * v20) >> 16)) >> 16));
          }

          v29 += 2;
          *v10 = bswap32(v51 | v50) >> 16;
          v10[1] = bswap32(v51);
          v10[2] = bswap32(HIDWORD(v51)) >> 16;
          v10[3] = __rev16(HIWORD(v51));
          v10 += 4;
          if (!--v30)
          {
            goto LABEL_88;
          }
        }

        v37 = (v33 + (v32 >> 4));
        if (v18 < v37)
        {
          v37 = v18;
        }

        if (v37 < v8)
        {
          v37 = v8;
        }

        v38 = *v37;
        if (v27)
        {
          v39 = (v33 + v26);
          if (v18 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v18;
          }

          if (v40 < v8)
          {
            v40 = v8;
          }

          v41 = *v40;
          v42 = (v39 + (v32 >> 4));
          if (v18 < v42)
          {
            v42 = v18;
          }

          if (v42 < v8)
          {
            v42 = v8;
          }

          v43 = v24[v27];
          v35 = v35 - ((v43 & v35) >> v27) + ((v43 & v41) >> v27);
          v38 = v38 - ((v43 & v38) >> v27) + ((v43 & *v42) >> v27);
        }

        v44 = v24[*v29 & 0xF];
        v45 = v35 - ((v44 & v35) >> v36);
        v46 = (v44 & v38) >> v36;
LABEL_43:
        v35 = v45 + v46;
        goto LABEL_44;
      }

LABEL_88:
      v12 = v142;
      v10 += 4 * v143;
      LOBYTE(v13) = v141;
      v14 = v146 + v140;
      a6 = v147 - 1;
      v17 = v145;
      if (v147 == 1)
      {
        return result;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_88;
    }

    v59 = v145;
    v58 = v134;
    while (1)
    {
      v60 = *(v58 - 1);
      v61 = *v58;
      v62 = v28 + v60;
      if (v18 >= v28 + v60)
      {
        v63 = (v28 + v60);
      }

      else
      {
        v63 = v18;
      }

      if (v63 < v8)
      {
        v63 = v8;
      }

      v64 = *v63;
      v65 = v61 & 0xF;
      if ((v61 & 0xF) != 0)
      {
        break;
      }

      if (v27)
      {
        v76 = (v62 + v26);
        if (v18 < v62 + v26)
        {
          v76 = v18;
        }

        if (v76 < v8)
        {
          v76 = v8;
        }

        v77 = v24[v27];
        v74 = v64 - ((v77 & v64) >> v27);
        v75 = (v77 & *v76) >> v27;
        goto LABEL_79;
      }

LABEL_80:
      v78 = (v64 << v7) | (v64 >> v19);
      v79 = HIBYTE(v78) | (HIBYTE(v78) << 8);
      if (v6 == 0xFFFF)
      {
        v80 = ((BYTE1(v78) | (BYTE1(v78) << 8)) << 32) | (((v78 | v9) | ((v78 | v9) << 8)) << 48) | v78 & 0xFF0000 | (BYTE2(v78) << 24);
      }

      else
      {
        v81.i32[0] = v78 | v9;
        v81.i32[1] = v78 >> 8;
        v82 = vmul_s32(vand_s8(v81, 0xFF000000FFLL), v22);
        v83 = vmla_s32(0x800000008000, v82, v21);
        v84 = vand_s8(vsub_s32(v82, vshr_n_u32(vsra_n_u32(v83, v83, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v85.i64[0] = v84.u32[0];
        v85.i64[1] = v84.u32[1];
        v86 = vshlq_u64(v85, v23);
        v80 = vorrq_s8(v86, vdupq_laneq_s64(v86, 1)).u64[0] | (((BYTE2(v78) | (BYTE2(v78) << 8)) - ((v16 + (BYTE2(v78) | (BYTE2(v78) << 8)) * v20 + ((v16 + (BYTE2(v78) | (BYTE2(v78) << 8)) * v20) >> 16)) >> 16)) << 16);
        v79 = (v79 - ((v16 + v79 * v20 + ((v16 + v79 * v20) >> 16)) >> 16));
      }

      v87 = HIWORD(v80);
      if (HIWORD(v80))
      {
        v88 = v80 | v79;
        if (v87 == 0xFFFF)
        {
          v89 = bswap32(v88);
          *v10 = HIWORD(v89);
          v10[1] = v89;
          v10[2] = bswap32(HIDWORD(v80)) >> 16;
          v10[3] = -1;
        }

        else
        {
          v90 = v16;
          v91 = v24;
          v92 = v27;
          v93 = v26;
          v94 = v19;
          v95 = v28;
          v96 = v20;
          RGBA64_DplusDM(v10, v88, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v87 ^ 0xFFFF);
          v20 = v96;
          v28 = v95;
          v19 = v94;
          v26 = v93;
          v27 = v92;
          v24 = v91;
          v16 = v90;
          v18 = v149;
          v8 = v151;
          v23 = xmmword_18439CC00;
          result = 0xFFFFLL;
          v9 = v153;
          LOBYTE(v7) = v154;
          v6 = v155;
        }
      }

      v58 += 2;
      v10 += 4;
      if (!--v59)
      {
        goto LABEL_88;
      }
    }

    v66 = (v62 + (v61 >> 4));
    if (v18 < v66)
    {
      v66 = v18;
    }

    if (v66 < v8)
    {
      v66 = v8;
    }

    v67 = *v66;
    if (v27)
    {
      v68 = (v62 + v26);
      if (v18 >= v68)
      {
        v69 = v68;
      }

      else
      {
        v69 = v18;
      }

      if (v69 < v8)
      {
        v69 = v8;
      }

      v70 = *v69;
      v71 = (v68 + (v61 >> 4));
      if (v18 < v71)
      {
        v71 = v18;
      }

      if (v71 < v8)
      {
        v71 = v8;
      }

      v72 = v24[v27];
      v64 = v64 - ((v72 & v64) >> v27) + ((v72 & v70) >> v27);
      v67 = v67 - ((v72 & v67) >> v27) + ((v72 & *v71) >> v27);
    }

    v73 = v24[*v58 & 0xF];
    v74 = v64 - ((v73 & v64) >> v65);
    v75 = (v73 & v67) >> v65;
LABEL_79:
    v64 = v74 + v75;
    goto LABEL_80;
  }

  v97 = v15 - 4;
  v98 = 32 - v7;
  v99 = v6 ^ 0xFFFF;
  v100 = vdup_n_s32(v6 ^ 0xFFFFu);
  v101 = vdup_n_s32(0x101u);
  v150 = a5;
  v152 = (v11 + 16 * a3);
  v102 = xmmword_18439CC00;
  do
  {
    v103 = *(v156 + 32);
    v104 = &v103[(v14 >> v13) * v12];
    v148 = a6;
    if (v144 == 1)
    {
      if (a5 >= 1)
      {
        v106 = v150;
        v105 = v152;
        do
        {
          v107 = *v105;
          v105 += 2;
          v108 = &v104[v107];
          if (v97 < &v104[v107])
          {
            v108 = v97;
          }

          if (v108 < v103)
          {
            v108 = v103;
          }

          v109 = (*v108 << v7) | (*v108 >> v98);
          v110 = HIBYTE(v109) | (HIBYTE(v109) << 8);
          if (v6 == 0xFFFF)
          {
            v111 = ((BYTE1(v109) | (BYTE1(v109) << 8)) << 32) | (((v109 | v9) | ((v109 | v9) << 8)) << 48) | v109 & 0xFF0000 | (BYTE2(v109) << 24);
          }

          else
          {
            v112.i32[0] = v109 | v9;
            v112.i32[1] = v109 >> 8;
            v113 = vmul_s32(vand_s8(v112, 0xFF000000FFLL), v101);
            v114 = vmla_s32(0x800000008000, v113, v100);
            v115 = vand_s8(vsub_s32(v113, vshr_n_u32(vsra_n_u32(v114, v114, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v116.i64[0] = v115.u32[0];
            v116.i64[1] = v115.u32[1];
            v117 = vshlq_u64(v116, v102);
            v111 = vorrq_s8(v117, vdupq_laneq_s64(v117, 1)).u64[0] | (((BYTE2(v109) | (BYTE2(v109) << 8)) - (((BYTE2(v109) | (BYTE2(v109) << 8)) * v99 + 0x8000 + (((BYTE2(v109) | (BYTE2(v109) << 8)) * v99 + 0x8000) >> 16)) >> 16)) << 16);
            v110 = (v110 - ((v110 * v99 + 0x8000 + ((v110 * v99 + 0x8000) >> 16)) >> 16));
          }

          *v10 = bswap32(v111 | v110) >> 16;
          v10[1] = bswap32(v111);
          v10[2] = bswap32(HIDWORD(v111)) >> 16;
          v10[3] = __rev16(HIWORD(v111));
          v10 += 4;
          --v106;
        }

        while (v106);
      }
    }

    else
    {
      v119 = v150;
      v118 = v152;
      if (a5 >= 1)
      {
        do
        {
          v120 = *v118;
          v118 += 2;
          v121 = &v104[v120];
          if (v97 < &v104[v120])
          {
            v121 = v97;
          }

          if (v121 < *(v156 + 32))
          {
            v121 = *(v156 + 32);
          }

          v122 = (*v121 << v7) | (*v121 >> v98);
          v123 = HIBYTE(v122) | (HIBYTE(v122) << 8);
          if (v6 == 0xFFFF)
          {
            v124 = ((BYTE1(v122) | (BYTE1(v122) << 8)) << 32) | (((v122 | v9) | ((v122 | v9) << 8)) << 48) | v122 & 0xFF0000 | (BYTE2(v122) << 24);
          }

          else
          {
            v125.i32[0] = v122 | v9;
            v125.i32[1] = v122 >> 8;
            v126 = vmul_s32(vand_s8(v125, 0xFF000000FFLL), v101);
            v127 = vmla_s32(0x800000008000, v126, v100);
            v128 = vand_s8(vsub_s32(v126, vshr_n_u32(vsra_n_u32(v127, v127, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v129.i64[0] = v128.u32[0];
            v129.i64[1] = v128.u32[1];
            v130 = vshlq_u64(v129, v102);
            v124 = vorrq_s8(v130, vdupq_laneq_s64(v130, 1)).u64[0] | (((BYTE2(v122) | (BYTE2(v122) << 8)) - (((BYTE2(v122) | (BYTE2(v122) << 8)) * v99 + 0x8000 + (((BYTE2(v122) | (BYTE2(v122) << 8)) * v99 + 0x8000) >> 16)) >> 16)) << 16);
            v123 = (v123 - ((v123 * v99 + 0x8000 + ((v123 * v99 + 0x8000) >> 16)) >> 16));
          }

          v131 = HIWORD(v124);
          if (HIWORD(v124))
          {
            v132 = v124 | v123;
            if (v131 == 0xFFFF)
            {
              v133 = bswap32(v132);
              *v10 = HIWORD(v133);
              v10[1] = v133;
              v10[2] = bswap32(HIDWORD(v124)) >> 16;
              v10[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v10, v132, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v131 ^ 0xFFFF);
              v102 = xmmword_18439CC00;
              v9 = v153;
              LOBYTE(v7) = v154;
              v6 = v155;
            }
          }

          v10 += 4;
          --v119;
        }

        while (v119);
      }
    }

    v12 = v142;
    v10 += 4 * v143;
    LOBYTE(v13) = v141;
    v14 += v140;
    a6 = v148 - 1;
    a5 = v145;
  }

  while (v148 != 1);
  return result;
}

uint64_t RGBA64_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v7 = a2[1];
  v146 = *a2;
  v8 = *(result + 32);
  if (*(result + 40))
  {
    v9 = 0;
  }

  else
  {
    v9 = 255;
  }

  v10 = *(a2 + 2);
  v145 = *(a2 + 3) - a5;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  v13 = *(a2 + 7);
  v142 = *(a2 + 9);
  v14 = *(a2 + 5) + v142 * a4;
  v15 = v8 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v158 = result;
  v16 = 0x8000;
  v147 = a5;
  v156 = a2[1];
  v157 = *(a2 + 4);
  v155 = v9;
  v143 = v13;
  v144 = v12;
  if (*(result + 176))
  {
    v140 = *(a2 + 13);
    v141 = *(a2 + 11);
    v139 = ~(-1 << v13);
    v17 = a5;
    v137 = -v12;
    v138 = v13 - 4;
    v18 = (v15 - 4);
    v19 = (32 - v7);
    v20 = v6 ^ 0xFFFFu;
    v21 = vdup_n_s32(v20);
    result = 0xFFFFLL;
    v136 = v11 + 16 * a3 + 8;
    v22 = vdup_n_s32(0x101u);
    v23 = xmmword_18439CC00;
    v24 = BLEND8_21892;
    v151 = (v15 - 4);
    v153 = v8;
    while (1)
    {
      if (((v140 - v14) | (v14 - v141)) < 0)
      {
        v27 = 0;
        v26 = 0;
      }

      else
      {
        v25 = ((v14 & v139) >> v138) & 0xF;
        v26 = (v25 - 7) >= 9 ? v137 : v12;
        v27 = weights_21890[v25] & 0xF;
      }

      v28 = *(v158 + 32) + (v14 >> v13) * v12;
      v149 = a6;
      v148 = v14;
      if (v146 != 1)
      {
        break;
      }

      if (v17 >= 1)
      {
        v30 = v147;
        v29 = v136;
        while (1)
        {
          v31 = *(v29 - 1);
          v32 = *v29;
          v33 = v28 + v31;
          if (v18 >= v28 + v31)
          {
            v34 = (v28 + v31);
          }

          else
          {
            v34 = v18;
          }

          if (v34 < v8)
          {
            v34 = v8;
          }

          v35 = bswap32(*v34);
          v36 = v32 & 0xF;
          if ((v32 & 0xF) != 0)
          {
            break;
          }

          if (v27)
          {
            v47 = (v33 + v26);
            if (v18 < v33 + v26)
            {
              v47 = v18;
            }

            if (v47 < v8)
            {
              v47 = v8;
            }

            v48 = v24[v27];
            v45 = v35 - ((v48 & v35) >> v27);
            v46 = (bswap32(*v47) & v48) >> v27;
            goto LABEL_43;
          }

LABEL_44:
          v49 = (v35 << v7) | (v35 >> v19);
          v50 = HIBYTE(v49) | (HIBYTE(v49) << 8);
          if (v6 == 0xFFFF)
          {
            v51 = ((BYTE1(v49) | (BYTE1(v49) << 8)) << 32) | (((v49 | v9) | ((v49 | v9) << 8)) << 48) | v49 & 0xFF0000 | (BYTE2(v49) << 24);
          }

          else
          {
            v52.i32[0] = v49 | v9;
            v52.i32[1] = v49 >> 8;
            v53 = vmul_s32(vand_s8(v52, 0xFF000000FFLL), v22);
            v54 = vmla_s32(0x800000008000, v53, v21);
            v55 = vand_s8(vsub_s32(v53, vshr_n_u32(vsra_n_u32(v54, v54, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v56.i64[0] = v55.u32[0];
            v56.i64[1] = v55.u32[1];
            v57 = vshlq_u64(v56, v23);
            v51 = vorrq_s8(v57, vdupq_laneq_s64(v57, 1)).u64[0] | (((BYTE2(v49) | (BYTE2(v49) << 8)) - ((v16 + (BYTE2(v49) | (BYTE2(v49) << 8)) * v20 + ((v16 + (BYTE2(v49) | (BYTE2(v49) << 8)) * v20) >> 16)) >> 16)) << 16);
            v50 = (v50 - ((v16 + v50 * v20 + ((v16 + v50 * v20) >> 16)) >> 16));
          }

          v29 += 2;
          *v10 = bswap32(v51 | v50) >> 16;
          v10[1] = bswap32(v51);
          v10[2] = bswap32(HIDWORD(v51)) >> 16;
          v10[3] = __rev16(HIWORD(v51));
          v10 += 4;
          if (!--v30)
          {
            goto LABEL_88;
          }
        }

        v37 = (v33 + (v32 >> 4));
        if (v18 < v37)
        {
          v37 = v18;
        }

        if (v37 < v8)
        {
          v37 = v8;
        }

        v38 = bswap32(*v37);
        if (v27)
        {
          v39 = (v33 + v26);
          if (v18 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v18;
          }

          if (v40 < v8)
          {
            v40 = v8;
          }

          v41 = bswap32(*v40);
          v42 = (v39 + (v32 >> 4));
          if (v18 < v42)
          {
            v42 = v18;
          }

          if (v42 < v8)
          {
            v42 = v8;
          }

          v43 = v24[v27];
          v35 = v35 - ((v43 & v35) >> v27) + ((v43 & v41) >> v27);
          v38 = v38 - ((v43 & v38) >> v27) + ((bswap32(*v42) & v43) >> v27);
        }

        v44 = v24[*v29 & 0xF];
        v45 = v35 - ((v44 & v35) >> v36);
        v46 = (v44 & v38) >> v36;
LABEL_43:
        v35 = v45 + v46;
        goto LABEL_44;
      }

LABEL_88:
      v12 = v144;
      v10 += 4 * v145;
      LOBYTE(v13) = v143;
      v14 = v148 + v142;
      a6 = v149 - 1;
      v17 = v147;
      if (v149 == 1)
      {
        return result;
      }
    }

    if (v17 < 1)
    {
      goto LABEL_88;
    }

    v59 = v147;
    v58 = v136;
    while (1)
    {
      v60 = *(v58 - 1);
      v61 = *v58;
      v62 = v28 + v60;
      if (v18 >= v28 + v60)
      {
        v63 = (v28 + v60);
      }

      else
      {
        v63 = v18;
      }

      if (v63 < v8)
      {
        v63 = v8;
      }

      v64 = bswap32(*v63);
      v65 = v61 & 0xF;
      if ((v61 & 0xF) != 0)
      {
        break;
      }

      if (v27)
      {
        v76 = (v62 + v26);
        if (v18 < v62 + v26)
        {
          v76 = v18;
        }

        if (v76 < v8)
        {
          v76 = v8;
        }

        v77 = v24[v27];
        v74 = v64 - ((v77 & v64) >> v27);
        v75 = (bswap32(*v76) & v77) >> v27;
        goto LABEL_79;
      }

LABEL_80:
      v78 = (v64 << v7) | (v64 >> v19);
      v79 = HIBYTE(v78) | (HIBYTE(v78) << 8);
      if (v6 == 0xFFFF)
      {
        v80 = ((BYTE1(v78) | (BYTE1(v78) << 8)) << 32) | (((v78 | v9) | ((v78 | v9) << 8)) << 48) | v78 & 0xFF0000 | (BYTE2(v78) << 24);
      }

      else
      {
        v81.i32[0] = v78 | v9;
        v81.i32[1] = v78 >> 8;
        v82 = vmul_s32(vand_s8(v81, 0xFF000000FFLL), v22);
        v83 = vmla_s32(0x800000008000, v82, v21);
        v84 = vand_s8(vsub_s32(v82, vshr_n_u32(vsra_n_u32(v83, v83, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
        v85.i64[0] = v84.u32[0];
        v85.i64[1] = v84.u32[1];
        v86 = vshlq_u64(v85, v23);
        v80 = vorrq_s8(v86, vdupq_laneq_s64(v86, 1)).u64[0] | (((BYTE2(v78) | (BYTE2(v78) << 8)) - ((v16 + (BYTE2(v78) | (BYTE2(v78) << 8)) * v20 + ((v16 + (BYTE2(v78) | (BYTE2(v78) << 8)) * v20) >> 16)) >> 16)) << 16);
        v79 = (v79 - ((v16 + v79 * v20 + ((v16 + v79 * v20) >> 16)) >> 16));
      }

      v87 = HIWORD(v80);
      if (HIWORD(v80))
      {
        v88 = v80 | v79;
        if (v87 == 0xFFFF)
        {
          v89 = bswap32(v88);
          *v10 = HIWORD(v89);
          v10[1] = v89;
          v10[2] = bswap32(HIDWORD(v80)) >> 16;
          v10[3] = -1;
        }

        else
        {
          v90 = v16;
          v91 = v24;
          v92 = v27;
          v93 = v26;
          v94 = v19;
          v95 = v28;
          v96 = v20;
          RGBA64_DplusDM(v10, v88, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v87 ^ 0xFFFF);
          v20 = v96;
          v28 = v95;
          v19 = v94;
          v26 = v93;
          v27 = v92;
          v24 = v91;
          v16 = v90;
          v18 = v151;
          v8 = v153;
          v23 = xmmword_18439CC00;
          result = 0xFFFFLL;
          v9 = v155;
          LOBYTE(v7) = v156;
          v6 = v157;
        }
      }

      v58 += 2;
      v10 += 4;
      if (!--v59)
      {
        goto LABEL_88;
      }
    }

    v66 = (v62 + (v61 >> 4));
    if (v18 < v66)
    {
      v66 = v18;
    }

    if (v66 < v8)
    {
      v66 = v8;
    }

    v67 = bswap32(*v66);
    if (v27)
    {
      v68 = (v62 + v26);
      if (v18 >= v68)
      {
        v69 = v68;
      }

      else
      {
        v69 = v18;
      }

      if (v69 < v8)
      {
        v69 = v8;
      }

      v70 = bswap32(*v69);
      v71 = (v68 + (v61 >> 4));
      if (v18 < v71)
      {
        v71 = v18;
      }

      if (v71 < v8)
      {
        v71 = v8;
      }

      v72 = v24[v27];
      v64 = v64 - ((v72 & v64) >> v27) + ((v72 & v70) >> v27);
      v67 = v67 - ((v72 & v67) >> v27) + ((bswap32(*v71) & v72) >> v27);
    }

    v73 = v24[*v58 & 0xF];
    v74 = v64 - ((v73 & v64) >> v65);
    v75 = (v73 & v67) >> v65;
LABEL_79:
    v64 = v74 + v75;
    goto LABEL_80;
  }

  v97 = (v15 - 4);
  v98 = 32 - v7;
  v99 = v6 ^ 0xFFFF;
  v100 = vdup_n_s32(v6 ^ 0xFFFFu);
  v101 = vdup_n_s32(0x101u);
  v152 = a5;
  v154 = (v11 + 16 * a3);
  v102 = xmmword_18439CC00;
  do
  {
    v103 = *(v158 + 32);
    v104 = v103 + (v14 >> v13) * v12;
    v150 = a6;
    if (v146 == 1)
    {
      if (a5 >= 1)
      {
        v106 = v152;
        v105 = v154;
        do
        {
          v107 = *v105;
          v105 += 2;
          v108 = &v104[v107];
          if (v97 < &v104[v107])
          {
            v108 = v97;
          }

          if (v108 < v103)
          {
            v108 = v103;
          }

          v109 = bswap32(*v108);
          v110 = (v109 << v7) | (v109 >> v98);
          v111 = HIBYTE(v110) | (HIBYTE(v110) << 8);
          if (v6 == 0xFFFF)
          {
            v112 = ((BYTE1(v110) | (BYTE1(v110) << 8)) << 32) | (((v110 | v9) | ((v110 | v9) << 8)) << 48) | v110 & 0xFF0000 | (BYTE2(v110) << 24);
          }

          else
          {
            v113.i32[0] = v110 | v9;
            v113.i32[1] = v110 >> 8;
            v114 = vmul_s32(vand_s8(v113, 0xFF000000FFLL), v101);
            v115 = vmla_s32(0x800000008000, v114, v100);
            v116 = vand_s8(vsub_s32(v114, vshr_n_u32(vsra_n_u32(v115, v115, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v117.i64[0] = v116.u32[0];
            v117.i64[1] = v116.u32[1];
            v118 = vshlq_u64(v117, v102);
            v112 = vorrq_s8(v118, vdupq_laneq_s64(v118, 1)).u64[0] | (((BYTE2(v110) | (BYTE2(v110) << 8)) - (((BYTE2(v110) | (BYTE2(v110) << 8)) * v99 + 0x8000 + (((BYTE2(v110) | (BYTE2(v110) << 8)) * v99 + 0x8000) >> 16)) >> 16)) << 16);
            v111 = (v111 - ((v111 * v99 + 0x8000 + ((v111 * v99 + 0x8000) >> 16)) >> 16));
          }

          *v10 = bswap32(v112 | v111) >> 16;
          v10[1] = bswap32(v112);
          v10[2] = bswap32(HIDWORD(v112)) >> 16;
          v10[3] = __rev16(HIWORD(v112));
          v10 += 4;
          --v106;
        }

        while (v106);
      }
    }

    else
    {
      v120 = v152;
      v119 = v154;
      if (a5 >= 1)
      {
        do
        {
          v121 = *v119;
          v119 += 2;
          v122 = &v104[v121];
          if (v97 < &v104[v121])
          {
            v122 = v97;
          }

          if (v122 < *(v158 + 32))
          {
            v122 = *(v158 + 32);
          }

          v123 = bswap32(*v122);
          v124 = (v123 << v7) | (v123 >> v98);
          v125 = HIBYTE(v124) | (HIBYTE(v124) << 8);
          if (v6 == 0xFFFF)
          {
            v126 = ((BYTE1(v124) | (BYTE1(v124) << 8)) << 32) | (((v124 | v9) | ((v124 | v9) << 8)) << 48) | v124 & 0xFF0000 | (BYTE2(v124) << 24);
          }

          else
          {
            v127.i32[0] = v124 | v9;
            v127.i32[1] = v124 >> 8;
            v128 = vmul_s32(vand_s8(v127, 0xFF000000FFLL), v101);
            v129 = vmla_s32(0x800000008000, v128, v100);
            v130 = vand_s8(vsub_s32(v128, vshr_n_u32(vsra_n_u32(v129, v129, 0x10uLL), 0x10uLL)), 0xFFFF0000FFFFLL);
            v131.i64[0] = v130.u32[0];
            v131.i64[1] = v130.u32[1];
            v132 = vshlq_u64(v131, v102);
            v126 = vorrq_s8(v132, vdupq_laneq_s64(v132, 1)).u64[0] | (((BYTE2(v124) | (BYTE2(v124) << 8)) - (((BYTE2(v124) | (BYTE2(v124) << 8)) * v99 + 0x8000 + (((BYTE2(v124) | (BYTE2(v124) << 8)) * v99 + 0x8000) >> 16)) >> 16)) << 16);
            v125 = (v125 - ((v125 * v99 + 0x8000 + ((v125 * v99 + 0x8000) >> 16)) >> 16));
          }

          v133 = HIWORD(v126);
          if (HIWORD(v126))
          {
            v134 = v126 | v125;
            if (v133 == 0xFFFF)
            {
              v135 = bswap32(v134);
              *v10 = HIWORD(v135);
              v10[1] = v135;
              v10[2] = bswap32(HIDWORD(v126)) >> 16;
              v10[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v10, v134, ((bswap32(v10[2]) >> 16) << 32) | ((bswap32(v10[3]) >> 16) << 48) | bswap32(v10[1]) & 0xFFFF0000 | (bswap32(*v10) >> 16), v133 ^ 0xFFFF);
              v102 = xmmword_18439CC00;
              v9 = v155;
              LOBYTE(v7) = v156;
              v6 = v157;
            }
          }

          v10 += 4;
          --v120;
        }

        while (v120);
      }
    }

    v12 = v144;
    v10 += 4 * v145;
    LOBYTE(v13) = v143;
    v14 += v142;
    a6 = v150 - 1;
    a5 = v147;
  }

  while (v150 != 1);
  return result;
}

_WORD *RGBA64_image_mark_RGB24(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v126 = *a2;
  v7 = *(a2 + 2);
  v125 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v122 = *(a2 + 9);
  v11 = *(a2 + 5) + v122 * a4;
  v12 = *(result + 4);
  v13 = &v12[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v137 = result;
  v14 = 0x8000;
  v127 = a5;
  v123 = v10;
  v124 = v9;
  if (*(result + 22))
  {
    v121 = *(a2 + 11);
    v120 = *(a2 + 13);
    v119 = ~(-1 << v10);
    v118 = v10 - 4;
    v15 = v13 - 3;
    v16 = v6 ^ 0xFFFFu;
    v17 = (~(0xFFFF * v16 + 0x8000 + ((0xFFFF * v16 + 0x8000) >> 16)) >> 16) << 48;
    v116 = a5;
    v117 = -v9;
    v115 = v8 + 16 * a3 + 8;
    v18 = BLEND8_21892;
    v136 = v6;
    v134 = v17;
    v132 = *(result + 4);
    while (1)
    {
      if (((v120 - v11) | (v11 - v121)) < 0)
      {
        v21 = 0;
        v20 = 0;
      }

      else
      {
        v19 = ((v11 & v119) >> v118) & 0xF;
        v20 = (v19 - 7) >= 9 ? v117 : v9;
        v21 = weights_21890[v19] & 0xF;
      }

      v130 = a6;
      v22 = *(v137 + 4) + (v11 >> v10) * v9;
      v128 = v11;
      if (v126 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v23 = v115;
        v24 = v116;
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

          v29 = (*v28 << 24) | (v28[1] << 16) | (v28[2] << 8);
          v30 = v26 & 0xF;
          if ((v26 & 0xF) != 0)
          {
            break;
          }

          if (v21)
          {
            v41 = (v27 + v20);
            if (v15 < v27 + v20)
            {
              v41 = v15;
            }

            if (v41 < v12)
            {
              v41 = v12;
            }

            v42 = v18[v21];
            v39 = v29 - ((v42 & v29) >> v21);
            v40 = (((*v41 << 24) | (v41[1] << 16) | (v41[2] << 8)) & v42) >> v21;
            goto LABEL_40;
          }

LABEL_41:
          v23 += 2;
          v43 = HIBYTE(v29) | (HIBYTE(v29) << 8);
          v44 = BYTE1(v29) | (BYTE1(v29) << 8);
          v45 = v29 & 0xFF0000 | (BYTE2(v29) << 24) | (v44 << 32);
          v46 = (((BYTE2(v29) | (BYTE2(v29) << 8)) - ((v14 + (BYTE2(v29) | (BYTE2(v29) << 8)) * v16 + ((v14 + (BYTE2(v29) | (BYTE2(v29) << 8)) * v16) >> 16)) >> 16)) << 16) | ((v44 - ((v14 + v44 * v16 + ((v14 + v44 * v16) >> 16)) >> 16)) << 32);
          if (v6 == 0xFFFF)
          {
            v46 = v45;
            v47 = 0xFFFF000000000000;
          }

          else
          {
            v43 = (v43 - ((v14 + v43 * v16 + ((v14 + v43 * v16) >> 16)) >> 16));
            v47 = v17;
          }

          *v7 = bswap32(v46 | v43) >> 16;
          v7[1] = bswap32(v46);
          v7[2] = __rev16(HIDWORD(v46));
          v7[3] = __rev16(HIWORD(v47));
          v7 += 4;
          if (!--v24)
          {
            goto LABEL_88;
          }
        }

        v31 = (v27 + (v26 >> 4));
        if (v15 < v31)
        {
          v31 = v15;
        }

        if (v31 < v12)
        {
          v31 = v12;
        }

        v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
        if (v21)
        {
          v33 = (v27 + v20);
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

          result = v34[1];
          v35 = (*v34 << 24) | (result << 16) | (v34[2] << 8);
          v36 = &v33[v26 >> 4];
          if (v15 < v36)
          {
            v36 = v15;
          }

          if (v36 < v12)
          {
            v36 = v12;
          }

          v37 = v18[v21];
          v29 = v29 - ((v37 & v29) >> v21) + ((v37 & v35) >> v21);
          v32 = v32 - ((v37 & v32) >> v21) + ((((*v36 << 24) | (v36[1] << 16) | (v36[2] << 8)) & v37) >> v21);
        }

        v38 = v18[*v23 & 0xF];
        v39 = v29 - ((v38 & v29) >> v30);
        v40 = (v38 & v32) >> v30;
LABEL_40:
        v29 = v39 + v40;
        goto LABEL_41;
      }

LABEL_88:
      v9 = v124;
      v7 += 4 * v125;
      LOBYTE(v10) = v123;
      v11 = v128 + v122;
      a6 = v130 - 1;
      a5 = v127;
      if (v130 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_88;
    }

    v48 = v115;
    v49 = v116;
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

      v54 = (*v53 << 24) | (v53[1] << 16) | (v53[2] << 8);
      v55 = v51 & 0xF;
      if ((v51 & 0xF) != 0)
      {
        break;
      }

      if (v21)
      {
        v66 = (v52 + v20);
        if (v15 < v52 + v20)
        {
          v66 = v15;
        }

        if (v66 < v12)
        {
          v66 = v12;
        }

        v67 = v18[v21];
        v64 = v54 - ((v67 & v54) >> v21);
        v65 = (((*v66 << 24) | (v66[1] << 16) | (v66[2] << 8)) & v67) >> v21;
        goto LABEL_76;
      }

LABEL_77:
      v68 = HIBYTE(v54) | (HIBYTE(v54) << 8);
      v69 = BYTE1(v54) | (BYTE1(v54) << 8);
      v70 = v54 & 0xFF0000 | (BYTE2(v54) << 24) | (v69 << 32);
      v71 = (((BYTE2(v54) | (BYTE2(v54) << 8)) - ((v14 + (BYTE2(v54) | (BYTE2(v54) << 8)) * v16 + ((v14 + (BYTE2(v54) | (BYTE2(v54) << 8)) * v16) >> 16)) >> 16)) << 16) | ((v69 - ((v14 + v69 * v16 + ((v14 + v69 * v16) >> 16)) >> 16)) << 32);
      if (v6 == 0xFFFF)
      {
        v72 = v68;
      }

      else
      {
        v72 = (v68 - ((v14 + v68 * v16 + ((v14 + v68 * v16) >> 16)) >> 16));
      }

      if (v6 == 0xFFFF)
      {
        v71 = v70;
        v73 = 0xFFFF000000000000;
      }

      else
      {
        v73 = v17;
      }

      if (HIWORD(v73))
      {
        v74 = v71 | v72;
        if (HIWORD(v73) == 0xFFFF)
        {
          v75 = bswap32(v74);
          *v7 = HIWORD(v75);
          v7[1] = v75;
          v7[2] = __rev16(HIDWORD(v71));
          v7[3] = -1;
        }

        else
        {
          v76 = v20;
          v77 = v18;
          v78 = v16;
          v79 = v14;
          v80 = v22;
          result = RGBA64_DplusDM(v7, v74 | v73, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), ((v74 | v73) >> 48) ^ 0xFFFF);
          v22 = v80;
          v14 = v79;
          v16 = v78;
          v12 = v132;
          v18 = v77;
          v20 = v76;
          v17 = v134;
          v6 = v136;
        }
      }

      v48 += 2;
      v7 += 4;
      if (!--v49)
      {
        goto LABEL_88;
      }
    }

    v56 = (v52 + (v51 >> 4));
    if (v15 < v56)
    {
      v56 = v15;
    }

    if (v56 < v12)
    {
      v56 = v12;
    }

    v57 = (*v56 << 24) | (v56[1] << 16) | (v56[2] << 8);
    if (v21)
    {
      v58 = (v52 + v20);
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

      v60 = (*v59 << 24) | (v59[1] << 16) | (v59[2] << 8);
      v61 = &v58[v51 >> 4];
      if (v15 < v61)
      {
        v61 = v15;
      }

      if (v61 < v12)
      {
        v61 = v12;
      }

      v62 = v18[v21];
      v54 = v54 - ((v62 & v54) >> v21) + ((v62 & v60) >> v21);
      v57 = v57 - ((v62 & v57) >> v21) + ((((*v61 << 24) | (v61[1] << 16) | (v61[2] << 8)) & v62) >> v21);
    }

    v63 = v18[*v48 & 0xF];
    v64 = v54 - ((v63 & v54) >> v55);
    v65 = (v63 & v57) >> v55;
LABEL_76:
    v54 = v64 + v65;
    goto LABEL_77;
  }

  v135 = (v8 + 16 * a3);
  v81 = v13 - 3;
  v82 = v6 ^ 0xFFFF;
  v133 = a5;
  do
  {
    v83 = *(v137 + 4);
    v84 = &v83[(v11 >> v10) * v9];
    v131 = a6;
    v129 = v11;
    if (v126 == 1)
    {
      if (a5 >= 1)
      {
        v85 = v135;
        v86 = v133;
        do
        {
          v87 = *v85;
          v85 += 2;
          v88 = &v84[v87];
          if (v81 < &v84[v87])
          {
            v88 = v81;
          }

          if (v88 < v83)
          {
            v88 = v83;
          }

          v89 = *v88;
          v90 = v88[1];
          v91 = v88[2] | (v88[2] << 8);
          v92 = v91 << 32;
          v93 = (v89 << 8) | v89;
          v94 = v93 | (v90 << 16) | (v90 << 24);
          result = (v91 * v82 + 0x8000 + ((v91 * v82 + 0x8000) >> 16));
          v95 = (((v90 | (v90 << 8)) - (((v90 | (v90 << 8)) * v82 + 0x8000 + (((v90 | (v90 << 8)) * v82 + 0x8000) >> 16)) >> 16)) << 16) | ((v91 - WORD1(result)) << 32);
          v96 = (v93 - ((v93 * v82 + 0x8000 + ((v93 * v82 + 0x8000) >> 16)) >> 16));
          if (v6 == 0xFFFF)
          {
            v96 = v94;
            v95 = v92;
            v97 = 0xFFFF000000000000;
          }

          else
          {
            v97 = (~(0xFFFF * v82 + 0x8000 + ((0xFFFF * v82 + 0x8000) >> 16)) >> 16) << 48;
          }

          v98 = bswap32(v95 | v96);
          *v7 = HIWORD(v98);
          v7[1] = v98;
          v7[2] = __rev16(HIDWORD(v95));
          v7[3] = __rev16(HIWORD(v97));
          v7 += 4;
          --v86;
        }

        while (v86);
      }
    }

    else
    {
      v99 = v135;
      v100 = v133;
      if (a5 >= 1)
      {
        do
        {
          v101 = *v99;
          v99 += 2;
          v102 = &v84[v101];
          if (v81 < &v84[v101])
          {
            v102 = v81;
          }

          if (v102 < *(v137 + 4))
          {
            v102 = *(v137 + 4);
          }

          v103 = *v102;
          v104 = v102[1];
          v105 = v102[2] | (v102[2] << 8);
          v106 = v105 << 32;
          v107 = (v103 << 8) | v103;
          v108 = v107 | (v104 << 16) | (v104 << 24);
          v109 = (((v104 | (v104 << 8)) - (((v104 | (v104 << 8)) * v82 + 0x8000 + (((v104 | (v104 << 8)) * v82 + 0x8000) >> 16)) >> 16)) << 16) | ((v105 - ((v105 * v82 + 0x8000 + ((v105 * v82 + 0x8000) >> 16)) >> 16)) << 32);
          v110 = (v107 - ((v107 * v82 + 0x8000 + ((v107 * v82 + 0x8000) >> 16)) >> 16));
          if (v6 == 0xFFFF)
          {
            v111 = v108;
          }

          else
          {
            v111 = v110;
          }

          if (v6 == 0xFFFF)
          {
            v109 = v106;
            v112 = 0xFFFF000000000000;
          }

          else
          {
            v112 = (~(0xFFFF * v82 + 0x8000 + ((0xFFFF * v82 + 0x8000) >> 16)) >> 16) << 48;
          }

          if (HIWORD(v112))
          {
            v113 = v109 | v111;
            if (HIWORD(v112) == 0xFFFF)
            {
              v114 = bswap32(v113);
              *v7 = HIWORD(v114);
              v7[1] = v114;
              v7[2] = __rev16(HIDWORD(v109));
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v113 | v112, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), ((v113 | v112) >> 48) ^ 0xFFFF);
            }
          }

          v7 += 4;
          --v100;
        }

        while (v100);
      }
    }

    v9 = v124;
    v7 += 4 * v125;
    LOBYTE(v10) = v123;
    v11 = v129 + v122;
    a6 = v131 - 1;
    a5 = v127;
  }

  while (v131 != 1);
  return result;
}

_WORD *RGBA64_image_mark_W8(_WORD *result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 4);
  v114 = *a2;
  v7 = *(a2 + 2);
  v113 = *(a2 + 3) - a5;
  v9 = *(a2 + 15);
  v8 = *(a2 + 16);
  v10 = *(a2 + 7);
  v110 = *(a2 + 9);
  v11 = *(a2 + 5) + v110 * a4;
  v12 = *(result + 4);
  v13 = &v12[(*(result + 65) - 1) * *(result + 6) + (((*(result + 2) >> 22) * *(result + 64)) >> 3)];
  v124 = result;
  v111 = v10;
  v112 = v9;
  if (*(result + 22))
  {
    v14 = a3;
    v109 = *(a2 + 11);
    v108 = *(a2 + 13);
    v107 = ~(-1 << v10);
    v106 = v10 - 4;
    v105 = -v9;
    v15 = v13 - 4;
    result = (v6 ^ 0xFFFF);
    v16 = (255 - ((255 * result + 0x8000 + ((255 * result + 0x8000) >> 16)) >> 16)) << 48;
    v103 = v8 + 16 * v14 + 8;
    v104 = a5;
    v17 = BLEND8_21892;
    v120 = v16;
    while (1)
    {
      v118 = a6;
      if (((v108 - v11) | (v11 - v109)) < 0)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        v18 = ((v11 & v107) >> v106) & 0xF;
        v19 = (v18 - 7) >= 9 ? v105 : v9;
        v20 = weights_21890[v18] & 0xF;
      }

      v116 = v11;
      v21 = *(v124 + 4) + (v11 >> v10) * v9;
      if (v114 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v22 = v103;
        v23 = v104;
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

          v28 = *v27;
          v29 = v25 & 0xF;
          if ((v25 & 0xF) != 0)
          {
            break;
          }

          if (v20)
          {
            v39 = (v26 + v19);
            if (v15 < v26 + v19)
            {
              v39 = v15;
            }

            if (v39 < v12)
            {
              v39 = v12;
            }

            v40 = v17[v20];
            v28 -= (v40 & v28) >> v20;
            v38 = (v40 & *v39) >> v20;
            goto LABEL_40;
          }

LABEL_41:
          v22 += 2;
          v28 = v28;
          v41 = (0x100010001 * (v28 | (v28 << 8))) | 0xFFFF000000000000;
          v42 = (v28 - ((v28 * result + 0x8000 + ((v28 * result + 0x8000) >> 16)) >> 16));
          v43 = (v42 << 16) | (v42 << 32) | v16 | v42;
          if (v6 == 0xFFFF)
          {
            v43 = v41;
          }

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
            goto LABEL_84;
          }
        }

        v30 = (v26 + (v25 >> 4));
        if (v15 < v30)
        {
          v30 = v15;
        }

        if (v30 < v12)
        {
          v30 = v12;
        }

        v31 = *v30;
        if (v20)
        {
          v32 = (v26 + v19);
          if (v15 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v15;
          }

          if (v33 < v12)
          {
            v33 = v12;
          }

          v34 = *v33;
          v35 = &v32[v25 >> 4];
          if (v15 < v35)
          {
            v35 = v15;
          }

          if (v35 < v12)
          {
            v35 = v12;
          }

          v36 = v17[v20];
          v28 = v28 - ((v36 & v28) >> v20) + ((v36 & v34) >> v20);
          v31 = v31 - ((v36 & v31) >> v20) + ((v36 & *v35) >> v20);
        }

        v37 = v17[*v22 & 0xF];
        v28 -= (v37 & v28) >> v29;
        v38 = (v37 & v31) >> v29;
LABEL_40:
        LOBYTE(v28) = v28 + v38;
        goto LABEL_41;
      }

LABEL_84:
      v9 = v112;
      v7 += 4 * v113;
      LOBYTE(v10) = v111;
      v11 = v116 + v110;
      a6 = v118 - 1;
      if (v118 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_84;
    }

    v47 = v103;
    v48 = v104;
    v122 = *(v124 + 4) + (v11 >> v10) * v9;
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

      v53 = *v52;
      v54 = v50 & 0xF;
      if ((v50 & 0xF) != 0)
      {
        break;
      }

      if (v20)
      {
        v64 = (v51 + v19);
        if (v15 < v51 + v19)
        {
          v64 = v15;
        }

        if (v64 < v12)
        {
          v64 = v12;
        }

        v65 = v17[v20];
        v53 -= (v65 & v53) >> v20;
        v63 = (v65 & *v64) >> v20;
        goto LABEL_75;
      }

LABEL_76:
      v53 = v53;
      v66 = (0x100010001 * (v53 | (v53 << 8))) | 0xFFFF000000000000;
      v67 = (v53 - ((v53 * result + 0x8000 + ((v53 * result + 0x8000) >> 16)) >> 16));
      v68 = (v67 << 16) | (v67 << 32) | v16 | v67;
      if (v6 == 0xFFFF)
      {
        v69 = v66;
      }

      else
      {
        v69 = v68;
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
          v72 = v17;
          v73 = v6;
          v74 = result;
          v75 = v20;
          RGBA64_DplusDM(v7, v69, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v70 ^ 0xFFFF);
          v20 = v75;
          v17 = v72;
          v21 = v122;
          v16 = v120;
          result = v74;
          v6 = v73;
        }
      }

      v47 += 2;
      v7 += 4;
      if (!--v48)
      {
        goto LABEL_84;
      }
    }

    v55 = (v51 + (v50 >> 4));
    if (v15 < v55)
    {
      v55 = v15;
    }

    if (v55 < v12)
    {
      v55 = v12;
    }

    v56 = *v55;
    if (v20)
    {
      v57 = (v51 + v19);
      if (v15 >= v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = v15;
      }

      if (v58 < v12)
      {
        v58 = v12;
      }

      v59 = *v58;
      v60 = &v57[v50 >> 4];
      if (v15 < v60)
      {
        v60 = v15;
      }

      if (v60 < v12)
      {
        v60 = v12;
      }

      v61 = v17[v20];
      v53 = v53 - ((v61 & v53) >> v20) + ((v61 & v59) >> v20);
      v56 = v56 - ((v61 & v56) >> v20) + ((v61 & *v60) >> v20);
    }

    v62 = v17[*v47 & 0xF];
    v53 -= (v62 & v53) >> v54;
    v63 = (v62 & v56) >> v54;
LABEL_75:
    LOBYTE(v53) = v53 + v63;
    goto LABEL_76;
  }

  v123 = (v8 + 16 * a3);
  v76 = v13 - 4;
  v77 = v6 ^ 0xFFFF;
  v78 = (255 - ((255 * v77 + 0x8000 + ((255 * v77 + 0x8000) >> 16)) >> 16)) << 48;
  v121 = a5;
  do
  {
    v79 = *(v124 + 4);
    v80 = &v79[(v11 >> v10) * v9];
    v119 = a6;
    v117 = v11;
    if (v114 == 1)
    {
      if (a5 >= 1)
      {
        v81 = v123;
        v82 = v121;
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
          v86 = (0x100010001 * (v85 | (v85 << 8))) | 0xFFFF000000000000;
          v87 = (v85 - ((v85 * v77 + 0x8000 + ((v85 * v77 + 0x8000) >> 16)) >> 16));
          v88 = (v87 << 16) | (v87 << 32) | v78 | v87;
          if (v6 == 0xFFFF)
          {
            v88 = v86;
          }

          v89 = HIDWORD(v88);
          v90 = HIWORD(v88);
          v91 = bswap32(v88);
          *v7 = HIWORD(v91);
          v7[1] = v91;
          v7[2] = bswap32(v89) >> 16;
          v7[3] = __rev16(v90);
          v7 += 4;
          --v82;
        }

        while (v82);
      }
    }

    else
    {
      v92 = v123;
      v93 = v121;
      if (a5 >= 1)
      {
        do
        {
          v94 = *v92;
          v92 += 2;
          v95 = &v80[v94];
          if (v76 < &v80[v94])
          {
            v95 = v76;
          }

          if (v95 < *(v124 + 4))
          {
            v95 = *(v124 + 4);
          }

          v96 = *v95;
          v97 = (0x100010001 * (v96 | (v96 << 8))) | 0xFFFF000000000000;
          v98 = (v96 - ((v96 * v77 + 0x8000 + ((v96 * v77 + 0x8000) >> 16)) >> 16));
          v99 = (v98 << 16) | (v98 << 32) | v78 | v98;
          if (v6 == 0xFFFF)
          {
            v100 = v97;
          }

          else
          {
            v100 = v99;
          }

          v101 = HIWORD(v100);
          if (HIWORD(v100))
          {
            if (v101 == 0xFFFF)
            {
              v102 = bswap32(v100);
              *v7 = HIWORD(v102);
              v7[1] = v102;
              v7[2] = bswap32(HIDWORD(v100)) >> 16;
              v7[3] = -1;
            }

            else
            {
              result = RGBA64_DplusDM(v7, v100, ((bswap32(v7[2]) >> 16) << 32) | ((bswap32(v7[3]) >> 16) << 48) | bswap32(v7[1]) & 0xFFFF0000 | (bswap32(*v7) >> 16), v101 ^ 0xFFFF);
            }
          }

          v7 += 4;
          --v93;
        }

        while (v93);
      }
    }

    v9 = v112;
    v7 += 4 * v113;
    LOBYTE(v10) = v111;
    v11 = v117 + v110;
    a6 = v119 - 1;
  }

  while (v119 != 1);
  return result;
}

_WORD *RGBA64_DplusDAM(_WORD *result, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  *result = bswap32(a2 + ((((a3 * a5 + 0x8000) >> 16) + a3 * a5 + 0x8000) >> 16)) >> 16;
  result[1] = bswap32(((((WORD1(a3) * a5 + 0x8000) >> 16) + WORD1(a3) * a5 + 0x8000) >> 16) + WORD1(a2)) >> 16;
  result[2] = bswap32(HIDWORD(a2) + ((((WORD2(a3) * a5 + 0x8000) >> 16) + WORD2(a3) * a5 + 0x8000) >> 16)) >> 16;
  result[3] = bswap32(HIWORD(a2) + ((((a5 * a4 + 0x8000) >> 16) + a5 * a4 + 0x8000) >> 16)) >> 16;
  return result;
}

_WORD *RGBA64_DAM(_WORD *result, uint64_t a2, int a3, int a4)
{
  *result = bswap32(a2 - ((a2 * (a4 ^ 0xFFFF) + 0x8000 + ((a2 * (a4 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) >> 16;
  result[1] = bswap32(WORD1(a2) - ((WORD1(a2) * (a4 ^ 0xFFFF) + 0x8000 + ((WORD1(a2) * (a4 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) >> 16;
  result[2] = bswap32(HIDWORD(a2) - ((WORD2(a2) * (a4 ^ 0xFFFF) + 0x8000 + ((WORD2(a2) * (a4 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) >> 16;
  result[3] = bswap32(a3 - (((a4 ^ 0xFFFF) * a3 + 0x8000 + (((a4 ^ 0xFFFFu) * a3 + 0x8000) >> 16)) >> 16)) >> 16;
  return result;
}

_WORD *RGBA64_DpluslDA(_WORD *result, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3 + a2;
  v5 = WORD1(a3) + WORD1(a2);
  v6 = WORD2(a3) + WORD2(a2);
  v7 = HIWORD(a2) + a4;
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

  if (v7 >= 0xFFFF)
  {
    LODWORD(v7) = 0xFFFF;
  }

  *result = bswap32(v4) >> 16;
  result[1] = bswap32(v5) >> 16;
  result[2] = bswap32(v6) >> 16;
  result[3] = bswap32(v7) >> 16;
  return result;
}

unint64_t RGBA64_mark_constmask(uint64_t a1, int a2)
{
  v268 = *(a1 + 4);
  v271 = *(a1 + 8);
  v4 = *(a1 + 48);
  v262 = *(a1 + 28);
  v265 = *(a1 + 40);
  v5 = *(a1 + 136);
  v6 = *(a1 + 88);
  v7 = bswap32(v6[3]) >> 16;
  v8 = ((bswap32(v6[2]) >> 16) << 32) | (v7 << 48);
  v9 = (__PAIR64__(bswap32(v6[1]) >> 16, bswap32(*v6)) >> 16);
  v10 = v8 | v9;
  pthread_mutex_lock(&RGBA64_cacheColorLock);
  v11 = RGBA64_cacheColor;
  if (RGBA64_cacheColor && *(RGBA64_cacheColor + 16) == v10)
  {
    result = pthread_mutex_unlock(&RGBA64_cacheColorLock);
    v13 = v11 + 1;
    v14 = v268;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v260 = a2;
    v15 = 0;
    while (1)
    {
      if (!v11)
      {
        goto LABEL_10;
      }

      v16 = v11;
      v17 = v15;
      if (v11[2] == v10)
      {
        break;
      }

      v11 = *v11;
      v15 = v16;
      if (!*v16)
      {
        if (RGBA64_cacheColorCount > 6)
        {
          *v17 = 0;
          v20 = *(v16 + 1);
        }

        else
        {
LABEL_10:
          v18 = RGBA64_cacheColorBase;
          if (RGBA64_cacheColorBase)
          {
            v19 = RGBA64_cacheColorCount;
          }

          else
          {
            v18 = malloc_type_calloc(1uLL, 0x38A8uLL, 0x10200402493A768uLL);
            v19 = 0;
            RGBA64_cacheColorBase = v18;
          }

          v16 = &v18[24 * v19];
          v20 = &v18[2048 * v19 + 168];
          *(v16 + 1) = v20;
          RGBA64_cacheColorCount = v19 + 1;
        }

        v21 = 0;
        *v16 = RGBA64_cacheColor;
        RGBA64_cacheColor = v16;
        *(v16 + 2) = v10;
        v22 = vdup_n_s32(v9);
        v23 = vdup_n_s32(WORD1(v9));
        v24 = vdup_n_s32(WORD2(v8));
        v25 = vdup_n_s32(v7);
        v26 = vdup_n_s32(v9);
        v27 = 0x100000000;
        v28 = vdup_n_s32(HIDWORD(v8));
        v29 = vdup_n_s32(0x101u);
        do
        {
          v30 = veor_s8(vmul_s32(v27, v29), 0xFFFF0000FFFFLL);
          v31 = vmla_s32(0x800000008000, v30, v22);
          v32 = vmla_s32(0x800000008000, v30, v23);
          v33 = vmla_s32(0x800000008000, v30, v24);
          v34 = vmla_s32(0x800000008000, v30, v25);
          v35 = vshr_n_u32(vsra_n_u32(v31, v31, 0x10uLL), 0x10uLL);
          v36 = vshr_n_u32(vsra_n_u32(v32, v32, 0x10uLL), 0x10uLL);
          v37 = vshr_n_u32(vsra_n_u32(v33, v33, 0x10uLL), 0x10uLL);
          v38 = vsub_s32(v25, vshr_n_u32(vsra_n_u32(v34, v34, 0x10uLL), 0x10uLL));
          v39.i64[0] = v38.u32[0];
          v39.i64[1] = v38.u32[1];
          v40 = vorrq_s8(vshlq_n_s64(v39, 0x30uLL), vshll_n_s32(vand_s8(vsub_s32(v28, v37), 0xFFFF0000FFFFLL), 0x20uLL));
          v41 = vshl_n_s32(vsub_s32(v23, v36), 0x10uLL);
          v39.i64[0] = v41.u32[0];
          v39.i64[1] = v41.u32[1];
          v42 = v39;
          v43 = vand_s8(vsub_s32(v26, v35), 0xFFFF0000FFFFLL);
          v39.i64[0] = v43.u32[0];
          v39.i64[1] = v43.u32[1];
          *(v20 + v21) = vorrq_s8(v40, vorrq_s8(v42, v39));
          v27 = vadd_s32(v27, 0x200000002);
          v21 += 16;
        }

        while (v21 != 2048);
        v13 = v16 + 8;
        result = pthread_mutex_unlock(&RGBA64_cacheColorLock);
        goto LABEL_21;
      }
    }

    if (v15)
    {
      *v15 = *v11;
      *v11 = RGBA64_cacheColor;
      RGBA64_cacheColor = v11;
    }

    result = pthread_mutex_unlock(&RGBA64_cacheColorLock);
    v13 = v11 + 1;
LABEL_21:
    v14 = v268;
    a2 = v260;
    if (!v5)
    {
      return result;
    }
  }

  v44 = *v13;
  v45 = *(*v13 + 2040);
  v46 = HIWORD(v45);
  v47 = (v265 + 8 * (v262 >> 3) * *(a1 + 16) + 8 * *(a1 + 12));
  v48 = *(a1 + 124);
  v49 = v5 + *(a1 + 108) * v48 + *(a1 + 104);
  v50 = v48 - v14;
  v51 = (v262 >> 3) - v14;
  switch(a2)
  {
    case 0:
      do
      {
        v52 = v14;
        do
        {
          v53 = *v49;
          if (*v49)
          {
            if (v53 == 255)
            {
              *v47 = 0;
            }

            else
            {
              v54 = bswap32(v47[1] | (*v47 << 16));
              v55.i32[0] = v54;
              v55.i32[1] = vshr_n_u32(vdup_n_s32(v54), 0x10uLL).i32[1];
              v55.i64[1] = __PAIR64__(bswap32(v47[3]) >> 16, bswap32(v47[2]) >> 16);
              v56.i64[0] = 0x800000008000;
              v56.i64[1] = 0x800000008000;
              v57 = vmlaq_s32(v56, v55, vdupq_n_s32((v53 ^ 0xFF | ((v53 ^ 0xFF) << 8)) ^ 0xFFFFu));
              v55.i32[0] = v54;
              *v47 = vrev16_s8(vmovn_s32(vsubq_s32(v55, vshrq_n_u32(vsraq_n_u32(v57, v57, 0x10uLL), 0x10uLL))));
            }
          }

          ++v49;
          v47 += 4;
          --v52;
        }

        while (v52);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 1:
      v214 = -1;
      v215 = v49 & 3;
      if ((v49 & 3) != 0)
      {
        v14 += v215;
        v214 = -1 << (8 * v215);
        v216 = v49 & 3;
        v49 &= 0xFFFFFFFFFFFFFFFCLL;
        v47 -= 4 * v216;
      }

      if (((v14 + v49) & 3) != 0)
      {
        v217 = 4 - ((v14 + v49) & 3);
        v215 += v217;
        v218 = 0xFFFFFFFF >> (8 * v217);
        if (v14 >= 4)
        {
          v219 = v218;
        }

        else
        {
          v219 = 0;
        }

        v269 = v219;
        if (v14 >= 4)
        {
          v218 = -1;
        }

        v266 = v218 & v214;
      }

      else
      {
        v266 = v214;
        v269 = 0;
      }

      v264 = v50 - v215;
      v261 = v14 >> 2;
      v248 = HIDWORD(v45);
      v249 = bswap32(v45);
      v250 = HIWORD(v249);
      v251 = v249;
      v252 = bswap32(v248) >> 16;
      v253 = __rev16(v46);
      v259 = v51 - v215;
      do
      {
        v254 = *v49 & v266;
        v255 = v261;
        v256 = v269;
        if (!v254)
        {
          goto LABEL_334;
        }

LABEL_332:
        if (v254 == -1)
        {
          *v47 = v250;
          v47[1] = v251;
          v47[2] = v252;
          v47[3] = v253;
          v47[4] = v250;
          v47[5] = v251;
          v47[6] = v252;
          v47[7] = v253;
          v47[8] = v250;
          v47[9] = v251;
          v47[10] = v252;
          v47[11] = v253;
LABEL_352:
          v47[12] = v250;
          v47[13] = v251;
          v47[14] = v252;
          v47[15] = v253;
          goto LABEL_334;
        }

        while (1)
        {
          if (v254)
          {
            if (v254 == 255)
            {
              *v47 = v250;
              v47[1] = v251;
              v47[2] = v252;
              v47[3] = v253;
            }

            else
            {
              result = RGBA64_DplusDM(v47, *(v44 + 8 * v254), ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), (v254 | (v254 << 8)) ^ 0xFFFFu);
            }
          }

          if (BYTE1(v254))
          {
            if (BYTE1(v254) == 255)
            {
              v47[4] = v250;
              v47[5] = v251;
              v47[6] = v252;
              v47[7] = v253;
            }

            else
            {
              result = RGBA64_DplusDM(v47 + 4, *(v44 + 8 * BYTE1(v254)), ((bswap32(v47[6]) >> 16) << 32) | ((bswap32(v47[7]) >> 16) << 48) | bswap32(v47[5]) & 0xFFFF0000 | (bswap32(v47[4]) >> 16), (BYTE1(v254) | (BYTE1(v254) << 8)) ^ 0xFFFFu);
            }
          }

          if (BYTE2(v254))
          {
            if (BYTE2(v254) == 255)
            {
              v47[8] = v250;
              v47[9] = v251;
              v47[10] = v252;
              v47[11] = v253;
            }

            else
            {
              result = RGBA64_DplusDM(v47 + 8, *(v44 + 8 * BYTE2(v254)), ((bswap32(v47[10]) >> 16) << 32) | ((bswap32(v47[11]) >> 16) << 48) | bswap32(v47[9]) & 0xFFFF0000 | (bswap32(v47[8]) >> 16), (BYTE2(v254) | (BYTE2(v254) << 8)) ^ 0xFFFFu);
            }
          }

          v258 = HIBYTE(v254);
          if (HIBYTE(v254) == 255)
          {
            goto LABEL_352;
          }

          if (v258)
          {
            result = RGBA64_DplusDM(v47 + 12, *(v44 + 8 * v258), ((bswap32(v47[14]) >> 16) << 32) | ((bswap32(v47[15]) >> 16) << 48) | bswap32(v47[13]) & 0xFFFF0000 | (bswap32(v47[12]) >> 16), (v258 | (v258 << 8)) ^ 0xFFFF);
          }

LABEL_334:
          while (1)
          {
            v257 = v255;
            v47 += 16;
            --v255;
            v49 += 4;
            if (v257 < 2)
            {
              break;
            }

            v254 = *v49;
            if (*v49)
            {
              goto LABEL_332;
            }
          }

          if (!v256)
          {
            break;
          }

          v256 = 0;
          v254 = *v49 & v269;
        }

        v49 += v264;
        v47 += 4 * v259;
        --v271;
      }

      while (v271);
      return result;
    case 2:
      v185 = 0xFFFFFFFFLL;
      v186 = v49 & 3;
      if ((v49 & 3) != 0)
      {
        v14 += v186;
        v185 = (-1 << (8 * v186));
        v187 = v49 & 3;
        v49 &= 0xFFFFFFFFFFFFFFFCLL;
        v47 -= 4 * v187;
      }

      if (((v14 + v49) & 3) != 0)
      {
        v188 = 4 - ((v14 + v49) & 3);
        v186 += v188;
        v189 = 0xFFFFFFFF >> (8 * v188);
        v190 = v14 < 4;
        v191 = v14;
        if (v14 >= 4)
        {
          v192 = v189;
        }

        else
        {
          v192 = 0;
        }

        if (!v190)
        {
          v189 = -1;
        }

        v185 = v189 & v185;
      }

      else
      {
        v191 = v14;
        v192 = 0;
      }

      v270 = v50 - v186;
      v267 = v191 >> 2;
      v263 = v51 - v186;
      while (2)
      {
        v238 = v185;
        v239 = *v49 & v185;
        v240 = v267;
        v241 = v192;
        if (!v239)
        {
          goto LABEL_312;
        }

LABEL_310:
        if (v239 == -1)
        {
          RGBA64_DplusDM(v47, v45, ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), ~HIWORD(v45));
          RGBA64_DplusDM(v47 + 4, v45, ((bswap32(v47[6]) >> 16) << 32) | ((bswap32(v47[7]) >> 16) << 48) | bswap32(v47[5]) & 0xFFFF0000 | (bswap32(v47[4]) >> 16), ~HIWORD(v45));
          RGBA64_DplusDM(v47 + 8, v45, ((bswap32(v47[10]) >> 16) << 32) | ((bswap32(v47[11]) >> 16) << 48) | bswap32(v47[9]) & 0xFFFF0000 | (bswap32(v47[8]) >> 16), ~HIWORD(v45));
          v242 = v47 + 12;
          v243 = ((bswap32(v47[14]) >> 16) << 32) | ((bswap32(v47[15]) >> 16) << 48) | bswap32(v47[13]) & 0xFFFF0000 | (bswap32(v47[12]) >> 16);
          v244 = ~HIWORD(v45);
          v245 = v45;
LABEL_325:
          result = RGBA64_DplusDM(v242, v245, v243, v244);
          goto LABEL_312;
        }

        while (1)
        {
          if (v239)
          {
            result = RGBA64_DplusDM(v47, *(v44 + 8 * v239), ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), HIWORD(*(v44 + 8 * v239)) ^ 0xFFFF);
          }

          if ((v239 & 0xFF00) != 0)
          {
            result = RGBA64_DplusDM(v47 + 4, *(v44 + 8 * BYTE1(v239)), ((bswap32(v47[6]) >> 16) << 32) | ((bswap32(v47[7]) >> 16) << 48) | bswap32(v47[5]) & 0xFFFF0000 | (bswap32(v47[4]) >> 16), HIWORD(*(v44 + 8 * BYTE1(v239))) ^ 0xFFFF);
          }

          if ((v239 & 0xFF0000) != 0)
          {
            result = RGBA64_DplusDM(v47 + 8, *(v44 + 8 * BYTE2(v239)), ((bswap32(v47[10]) >> 16) << 32) | ((bswap32(v47[11]) >> 16) << 48) | bswap32(v47[9]) & 0xFFFF0000 | (bswap32(v47[8]) >> 16), HIWORD(*(v44 + 8 * BYTE2(v239))) ^ 0xFFFF);
          }

          if (HIBYTE(v239))
          {
            v245 = *(v44 + 8 * HIBYTE(v239));
            v242 = v47 + 12;
            v243 = ((bswap32(v47[14]) >> 16) << 32) | ((bswap32(v47[15]) >> 16) << 48) | bswap32(v47[13]) & 0xFFFF0000 | (bswap32(v47[12]) >> 16);
            v244 = HIWORD(v245) ^ 0xFFFF;
            goto LABEL_325;
          }

LABEL_312:
          while (1)
          {
            v246 = v240;
            v47 += 16;
            --v240;
            v49 += 4;
            if (v246 < 2)
            {
              break;
            }

            v239 = *v49;
            if (*v49)
            {
              goto LABEL_310;
            }
          }

          if (!v241)
          {
            break;
          }

          v241 = 0;
          v239 = *v49 & v192;
        }

        v49 += v270;
        v47 += 4 * v263;
        v247 = v271-- == 1;
        v185 = v238;
        if (!v247)
        {
          continue;
        }

        return result;
      }

    case 3:
      do
      {
        v193 = v14;
        do
        {
          v194 = *v49;
          if (*v49)
          {
            if (v194 == 255)
            {
              v195 = *(v44 + 8 * *(v47 + 6));
              v196 = HIDWORD(v195);
              v197 = HIWORD(v195);
              LODWORD(v195) = bswap32(v195);
              *v47 = WORD1(v195);
              v47[1] = v195;
              v47[2] = bswap32(v196) >> 16;
              v47[3] = __rev16(v197);
            }

            else
            {
              v198 = bswap32(v47[3]) >> 16;
              result = RGBA64_DplusDM(v47, *(v44 + 8 * ((v198 * (v194 | (v194 << 8)) + 0x8000 + ((v198 * (v194 | (v194 << 8)) + 0x8000) >> 16)) >> 24)), (v198 << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), (v194 | (v194 << 8)) ^ 0xFFFFu);
            }
          }

          ++v49;
          v47 += 4;
          --v193;
        }

        while (v193);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 4:
      do
      {
        v178 = v14;
        do
        {
          v179 = *v49;
          if (*v49)
          {
            if (v179 == 255)
            {
              v180 = *(v44 + 8 * ~*(v47 + 6));
              v181 = HIDWORD(v180);
              v182 = HIWORD(v180);
              LODWORD(v180) = bswap32(v180);
              *v47 = WORD1(v180);
              v47[1] = v180;
              v47[2] = bswap32(v181) >> 16;
              v47[3] = __rev16(v182);
            }

            else
            {
              v183 = v179 | (v179 << 8);
              v184 = bswap32(v47[3]) >> 16;
              result = RGBA64_DplusDM(v47, *(v44 + 8 * (((v184 ^ 0xFFFF) * v183 + 0x8000 + (((v184 ^ 0xFFFF) * v183 + 0x8000) >> 16)) >> 24)), (v184 << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v183 ^ 0xFFFFu);
            }
          }

          ++v49;
          v47 += 4;
          --v178;
        }

        while (v178);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 5:
      do
      {
        v124 = v14;
        do
        {
          if (*v49)
          {
            v125 = *(v44 + 8 * *v49);
            v126 = bswap32(v47[3]) >> 16;
            result = RGBA64_DMplusDM(v47, v125, v126, (v126 << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), HIWORD(v125) ^ 0xFFFF);
          }

          ++v49;
          v47 += 4;
          --v124;
        }

        while (v124);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 6:
      do
      {
        v220 = v14;
        do
        {
          v221 = *v49;
          if (*v49)
          {
            v222 = bswap32(v47[3]);
            if (HIWORD(v222) != 0xFFFF)
            {
              if (~HIWORD(v222) == 0xFFFF)
              {
                v223 = *(v44 + 8 * v221);
                v224 = HIDWORD(v223);
                v225 = HIWORD(v223);
                LODWORD(v223) = bswap32(v223);
                *v47 = WORD1(v223);
                v47[1] = v223;
                v47[2] = bswap32(v224) >> 16;
                v47[3] = __rev16(v225);
              }

              else
              {
                result = RGBA64_DplusDM(v47, (HIWORD(v222) << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), *(v44 + 8 * v221), ~HIWORD(v222));
              }
            }
          }

          ++v49;
          v47 += 4;
          --v220;
        }

        while (v220);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 7:
      v199 = vdupq_n_s32(v46 ^ 0xFFFF);
      do
      {
        v200 = v14;
        do
        {
          v201 = *v49;
          if (*v49)
          {
            if (v201 == 255)
            {
              v202 = bswap32(v47[1] | (*v47 << 16));
              v203 = v202;
              v204 = 0;
              v208.i32[1] = vshr_n_u32(vdup_n_s32(v202), 0x10uLL).i32[1];
              v208.i32[2] = bswap32(v47[2]) >> 16;
              v208.i32[3] = bswap32(v47[3]) >> 16;
              v205.i64[0] = 0x800000008000;
              v205.i64[1] = 0x800000008000;
              v206 = vmlaq_s32(v205, v208, v199);
              v207 = vshrq_n_u32(vsraq_n_u32(v206, v206, 0x10uLL), 0x10uLL);
              v208.i32[0] = v202;
            }

            else
            {
              v209 = bswap32(v47[1] | (*v47 << 16));
              v210 = v209;
              v211 = 0;
              v208.i32[1] = vshr_n_u32(vdup_n_s32(v209), 0x10uLL).i32[1];
              v208.i64[1] = __PAIR64__(bswap32(v47[3]) >> 16, bswap32(v47[2]) >> 16);
              v212.i64[0] = 0x800000008000;
              v212.i64[1] = 0x800000008000;
              v213 = vmlaq_s32(v212, v208, vmovl_u16(vdup_n_s16((v201 | (v201 << 8)) - (((v201 | (v201 << 8)) * v46 + 0x8000 + (((v201 | (v201 << 8)) * v46 + 0x8000) >> 16)) >> 16))));
              v207 = vshrq_n_u32(vsraq_n_u32(v213, v213, 0x10uLL), 0x10uLL);
              v208.i32[0] = v209;
            }

            *v47 = vrev16_s8(vmovn_s32(vsubq_s32(v208, v207)));
          }

          ++v49;
          v47 += 4;
          --v200;
        }

        while (v200);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 8:
      v226 = vdupq_n_s32(v46);
      do
      {
        v227 = v14;
        do
        {
          v228 = *v49;
          if (*v49)
          {
            if (v228 == 255)
            {
              v229 = bswap32(v47[1] | (*v47 << 16));
              v230.i32[0] = v229;
              v230.i32[1] = vshr_n_u32(vdup_n_s32(v229), 0x10uLL).i32[1];
              v230.i32[2] = bswap32(v47[2]) >> 16;
              v230.i32[3] = bswap32(v47[3]) >> 16;
              v231.i64[0] = 0x800000008000;
              v231.i64[1] = 0x800000008000;
              v232 = vmlaq_s32(v231, v230, v226);
              v230.i32[0] = v229;
              v233 = vsubq_s32(v230, vshrq_n_u32(vsraq_n_u32(v232, v232, 0x10uLL), 0x10uLL));
            }

            else
            {
              v234 = bswap32(v47[1] | (*v47 << 16));
              v235.i32[0] = v234;
              v235.i32[1] = vshr_n_u32(vdup_n_s32(v234), 0x10uLL).i32[1];
              v235.i64[1] = __PAIR64__(bswap32(v47[3]) >> 16, bswap32(v47[2]) >> 16);
              v236.i64[0] = 0x800000008000;
              v236.i64[1] = 0x800000008000;
              v237 = vmlaq_s32(v236, v235, vdupq_n_s32((257 * v46 * v228 + 0x8000 + ((257 * v46 * v228 + 0x8000) >> 16)) >> 16));
              v235.i32[0] = v234;
              v233 = vsubq_s32(v235, vshrq_n_u32(vsraq_n_u32(v237, v237, 0x10uLL), 0x10uLL));
            }

            *v47 = vrev16_s8(vmovn_s32(v233));
          }

          ++v49;
          v47 += 4;
          --v227;
        }

        while (v227);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 9:
      do
      {
        v86 = v14;
        do
        {
          if (*v49)
          {
            v87 = *(v44 + 8 * *v49);
            v88 = bswap32(v47[3]) >> 16;
            result = RGBA64_DMplusDM(v47, v87, v88 ^ 0xFFFF, (v88 << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), (HIWORD(v87) + ~(*v49 | (*v49 << 8))));
          }

          ++v49;
          v47 += 4;
          --v86;
        }

        while (v86);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 10:
      do
      {
        v148 = v14;
        do
        {
          if (*v49)
          {
            v149 = *(v44 + 8 * *v49);
            v150 = bswap32(v47[3]) >> 16;
            result = RGBA64_DMplusDM(v47, v149, v150 ^ 0xFFFF, (v150 << 48) | ((bswap32(v47[2]) >> 16) << 32) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), HIWORD(v149) ^ 0xFFFF);
          }

          ++v49;
          v47 += 4;
          --v148;
        }

        while (v148);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 11:
      do
      {
        v79 = v14;
        do
        {
          if (*v49)
          {
            v81 = bswap32(v47[3]) >> 16;
            v82 = ((bswap32(v47[2]) >> 16) << 32) | (v81 << 48);
            v83 = bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16);
            if (v4)
            {
              v84 = v81;
            }

            else
            {
              v84 = -1;
            }

            v80 = *(v44 + 8 * *v49);
            result = RGBA64_DAplusdDA(v47, v82 | v83, v84, v80, HIWORD(v80));
          }

          ++v49;
          v47 += 4;
          --v79;
        }

        while (v79);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 12:
      do
      {
        v85 = v14;
        do
        {
          if (*v49)
          {
            result = RGBA64_DpluslD(v47, ((bswap32(v47[2]) >> 16) << 32) | ((bswap32(v47[3]) >> 16) << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), *(v44 + 8 * *v49));
          }

          ++v49;
          v47 += 4;
          --v85;
        }

        while (v85);
        v49 += v50;
        v47 += 4 * v51;
        --v271;
      }

      while (v271);
      return result;
    case 13:
      while (1)
      {
        v134 = v14;
        do
        {
          if (*v49)
          {
            v135 = *(v44 + 8 * *v49);
            v136 = HIWORD(v135);
            if (HIWORD(v135))
            {
              v137 = __rev16(v47[3]);
              if (v4)
              {
                v138 = v137;
                if (!v47[3])
                {
                  v139 = bswap32(v135);
                  *v47 = HIWORD(v139);
                  v47[1] = v139;
                  v47[2] = bswap32(HIDWORD(v135)) >> 16;
LABEL_174:
                  v47[3] = __rev16(v136);
                  goto LABEL_175;
                }
              }

              else
              {
                v138 = 0xFFFF;
              }

              result = PDAmultiplyPDA_15236(((bswap32(v47[2]) >> 16) << 32) | (v137 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v138, v135, v136);
              v136 = HIWORD(result);
              v140 = bswap32(result);
              *v47 = HIWORD(v140);
              v47[1] = v140;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_174;
            }
          }

LABEL_175:
          ++v49;
          v47 += 4;
          --v134;
        }

        while (v134);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 14:
      while (1)
      {
        v72 = v14;
        do
        {
          if (*v49)
          {
            v73 = *(v44 + 8 * *v49);
            v74 = HIWORD(v73);
            if (HIWORD(v73))
            {
              v75 = __rev16(v47[3]);
              if (v4)
              {
                v76 = v75;
                if (!v47[3])
                {
                  v77 = bswap32(v73);
                  *v47 = HIWORD(v77);
                  v47[1] = v77;
                  v47[2] = bswap32(HIDWORD(v73)) >> 16;
LABEL_63:
                  v47[3] = __rev16(v74);
                  goto LABEL_64;
                }
              }

              else
              {
                v76 = 0xFFFF;
              }

              result = PDAscreenPDA_15237(((bswap32(v47[2]) >> 16) << 32) | (v75 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v76, v73, v74);
              v74 = HIWORD(result);
              v78 = bswap32(result);
              *v47 = HIWORD(v78);
              v47[1] = v78;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_63;
            }
          }

LABEL_64:
          ++v49;
          v47 += 4;
          --v72;
        }

        while (v72);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 15:
      while (1)
      {
        v103 = v14;
        do
        {
          if (*v49)
          {
            v104 = *(v44 + 8 * *v49);
            v105 = HIWORD(v104);
            if (HIWORD(v104))
            {
              v106 = __rev16(v47[3]);
              if (v4)
              {
                v107 = v106;
                if (!v47[3])
                {
                  v108 = bswap32(v104);
                  *v47 = HIWORD(v108);
                  v47[1] = v108;
                  v47[2] = bswap32(HIDWORD(v104)) >> 16;
LABEL_120:
                  v47[3] = __rev16(v105);
                  goto LABEL_121;
                }
              }

              else
              {
                v107 = 0xFFFF;
              }

              result = PDAoverlayPDA_15238(((bswap32(v47[2]) >> 16) << 32) | (v106 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v107, v104, v105);
              v105 = HIWORD(result);
              v109 = bswap32(result);
              *v47 = HIWORD(v109);
              v47[1] = v109;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_120;
            }
          }

LABEL_121:
          ++v49;
          v47 += 4;
          --v103;
        }

        while (v103);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 16:
      while (1)
      {
        v65 = v14;
        do
        {
          if (*v49)
          {
            v66 = *(v44 + 8 * *v49);
            v67 = HIWORD(v66);
            if (HIWORD(v66))
            {
              v68 = __rev16(v47[3]);
              if (v4)
              {
                v69 = v68;
                if (!v47[3])
                {
                  v70 = bswap32(v66);
                  *v47 = HIWORD(v70);
                  v47[1] = v70;
                  v47[2] = bswap32(HIDWORD(v66)) >> 16;
LABEL_51:
                  v47[3] = __rev16(v67);
                  goto LABEL_52;
                }
              }

              else
              {
                v69 = 0xFFFF;
              }

              result = PDAdarkenPDA_15240(((bswap32(v47[2]) >> 16) << 32) | (v68 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v69, v66, v67);
              v67 = HIWORD(result);
              v71 = bswap32(result);
              *v47 = HIWORD(v71);
              v47[1] = v71;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_51;
            }
          }

LABEL_52:
          ++v49;
          v47 += 4;
          --v65;
        }

        while (v65);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 17:
      while (1)
      {
        v110 = v14;
        do
        {
          if (*v49)
          {
            v111 = *(v44 + 8 * *v49);
            v112 = HIWORD(v111);
            if (HIWORD(v111))
            {
              v113 = __rev16(v47[3]);
              if (v4)
              {
                v114 = v113;
                if (!v47[3])
                {
                  v115 = bswap32(v111);
                  *v47 = HIWORD(v115);
                  v47[1] = v115;
                  v47[2] = bswap32(HIDWORD(v111)) >> 16;
LABEL_132:
                  v47[3] = __rev16(v112);
                  goto LABEL_133;
                }
              }

              else
              {
                v114 = 0xFFFF;
              }

              result = PDAlightenPDA_15239(((bswap32(v47[2]) >> 16) << 32) | (v113 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v114, v111, v112);
              v112 = HIWORD(result);
              v116 = bswap32(result);
              *v47 = HIWORD(v116);
              v47[1] = v116;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_132;
            }
          }

LABEL_133:
          ++v49;
          v47 += 4;
          --v110;
        }

        while (v110);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 18:
      while (1)
      {
        v141 = v14;
        do
        {
          if (*v49)
          {
            v142 = *(v44 + 8 * *v49);
            v143 = HIWORD(v142);
            if (HIWORD(v142))
            {
              v144 = __rev16(v47[3]);
              if (v4)
              {
                v145 = v144;
                if (!v47[3])
                {
                  v146 = bswap32(v142);
                  *v47 = HIWORD(v146);
                  v47[1] = v146;
                  v47[2] = bswap32(HIDWORD(v142)) >> 16;
LABEL_186:
                  v47[3] = __rev16(v143);
                  goto LABEL_187;
                }
              }

              else
              {
                v145 = 0xFFFF;
              }

              result = PDAcolordodgePDA_15241(((bswap32(v47[2]) >> 16) << 32) | (v144 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v145, v142, v143);
              v143 = HIWORD(result);
              v147 = bswap32(result);
              *v47 = HIWORD(v147);
              v47[1] = v147;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_186;
            }
          }

LABEL_187:
          ++v49;
          v47 += 4;
          --v141;
        }

        while (v141);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 19:
      while (1)
      {
        v158 = v14;
        do
        {
          if (*v49)
          {
            v159 = *(v44 + 8 * *v49);
            v160 = HIWORD(v159);
            if (HIWORD(v159))
            {
              v161 = __rev16(v47[3]);
              if (v4)
              {
                v162 = v161;
                if (!v47[3])
                {
                  v163 = bswap32(v159);
                  *v47 = HIWORD(v163);
                  v47[1] = v163;
                  v47[2] = bswap32(HIDWORD(v159)) >> 16;
LABEL_216:
                  v47[3] = __rev16(v160);
                  goto LABEL_217;
                }
              }

              else
              {
                v162 = 0xFFFF;
              }

              result = PDAcolorburnPDA_15242(((bswap32(v47[2]) >> 16) << 32) | (v161 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v162, v159, v160);
              v160 = HIWORD(result);
              v164 = bswap32(result);
              *v47 = HIWORD(v164);
              v47[1] = v164;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_216;
            }
          }

LABEL_217:
          ++v49;
          v47 += 4;
          --v158;
        }

        while (v158);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 20:
      while (1)
      {
        v117 = v14;
        do
        {
          if (*v49)
          {
            v118 = *(v44 + 8 * *v49);
            v119 = HIWORD(v118);
            if (HIWORD(v118))
            {
              v120 = __rev16(v47[3]);
              if (v4)
              {
                v121 = v120;
                if (!v47[3])
                {
                  v122 = bswap32(v118);
                  *v47 = HIWORD(v122);
                  v47[1] = v122;
                  v47[2] = bswap32(HIDWORD(v118)) >> 16;
LABEL_144:
                  v47[3] = __rev16(v119);
                  goto LABEL_145;
                }
              }

              else
              {
                v121 = 0xFFFF;
              }

              result = PDAsoftlightPDA_15244(((bswap32(v47[2]) >> 16) << 32) | (v120 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v121, v118, v119);
              v119 = HIWORD(result);
              v123 = bswap32(result);
              *v47 = HIWORD(v123);
              v47[1] = v123;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_144;
            }
          }

LABEL_145:
          ++v49;
          v47 += 4;
          --v117;
        }

        while (v117);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 21:
      while (1)
      {
        v127 = v14;
        do
        {
          if (*v49)
          {
            v128 = *(v44 + 8 * *v49);
            v129 = HIWORD(v128);
            if (HIWORD(v128))
            {
              v130 = __rev16(v47[3]);
              if (v4)
              {
                v131 = v130;
                if (!v47[3])
                {
                  v132 = bswap32(v128);
                  *v47 = HIWORD(v132);
                  v47[1] = v132;
                  v47[2] = bswap32(HIDWORD(v128)) >> 16;
LABEL_162:
                  v47[3] = __rev16(v129);
                  goto LABEL_163;
                }
              }

              else
              {
                v131 = 0xFFFF;
              }

              result = PDAhardlightPDA_15243(((bswap32(v47[2]) >> 16) << 32) | (v130 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v131, v128, v129);
              v129 = HIWORD(result);
              v133 = bswap32(result);
              *v47 = HIWORD(v133);
              v47[1] = v133;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_162;
            }
          }

LABEL_163:
          ++v49;
          v47 += 4;
          --v127;
        }

        while (v127);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 22:
      while (1)
      {
        v151 = v14;
        do
        {
          if (*v49)
          {
            v152 = *(v44 + 8 * *v49);
            v153 = HIWORD(v152);
            if (HIWORD(v152))
            {
              v154 = __rev16(v47[3]);
              if (v4)
              {
                v155 = v154;
                if (!v47[3])
                {
                  v156 = bswap32(v152);
                  *v47 = HIWORD(v156);
                  v47[1] = v156;
                  v47[2] = bswap32(HIDWORD(v152)) >> 16;
LABEL_204:
                  v47[3] = __rev16(v153);
                  goto LABEL_205;
                }
              }

              else
              {
                v155 = 0xFFFF;
              }

              result = PDAdifferencePDA_15245(((bswap32(v47[2]) >> 16) << 32) | (v154 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v155, v152, v153);
              v153 = HIWORD(result);
              v157 = bswap32(result);
              *v47 = HIWORD(v157);
              v47[1] = v157;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_204;
            }
          }

LABEL_205:
          ++v49;
          v47 += 4;
          --v151;
        }

        while (v151);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 23:
      while (1)
      {
        v165 = v14;
        do
        {
          if (*v49)
          {
            v166 = *(v44 + 8 * *v49);
            v167 = HIWORD(v166);
            if (HIWORD(v166))
            {
              v168 = __rev16(v47[3]);
              if (v4)
              {
                v169 = v168;
                if (!v47[3])
                {
                  v170 = bswap32(v166);
                  *v47 = HIWORD(v170);
                  v47[1] = v170;
                  v47[2] = bswap32(HIDWORD(v166)) >> 16;
LABEL_228:
                  v47[3] = __rev16(v167);
                  goto LABEL_229;
                }
              }

              else
              {
                v169 = 0xFFFF;
              }

              result = PDAexclusionPDA_15246(((bswap32(v47[2]) >> 16) << 32) | (v168 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v169, v166, v167);
              v167 = HIWORD(result);
              v171 = bswap32(result);
              *v47 = HIWORD(v171);
              v47[1] = v171;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_228;
            }
          }

LABEL_229:
          ++v49;
          v47 += 4;
          --v165;
        }

        while (v165);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 24:
      while (1)
      {
        v96 = v14;
        do
        {
          if (*v49)
          {
            v97 = *(v44 + 8 * *v49);
            v98 = HIWORD(v97);
            if (HIWORD(v97))
            {
              v99 = __rev16(v47[3]);
              if (v4)
              {
                v100 = v99;
                if (!v47[3])
                {
                  v101 = bswap32(v97);
                  *v47 = HIWORD(v101);
                  v47[1] = v101;
                  v47[2] = bswap32(HIDWORD(v97)) >> 16;
LABEL_108:
                  v47[3] = __rev16(v98);
                  goto LABEL_109;
                }
              }

              else
              {
                v100 = 0xFFFF;
              }

              result = PDAhuePDA_15247(((bswap32(v47[2]) >> 16) << 32) | (v99 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v100, v97, v98);
              v98 = HIWORD(result);
              v102 = bswap32(result);
              *v47 = HIWORD(v102);
              v47[1] = v102;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_108;
            }
          }

LABEL_109:
          ++v49;
          v47 += 4;
          --v96;
        }

        while (v96);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 25:
      while (1)
      {
        v89 = v14;
        do
        {
          if (*v49)
          {
            v90 = *(v44 + 8 * *v49);
            v91 = HIWORD(v90);
            if (HIWORD(v90))
            {
              v92 = __rev16(v47[3]);
              if (v4)
              {
                v93 = v92;
                if (!v47[3])
                {
                  v94 = bswap32(v90);
                  *v47 = HIWORD(v94);
                  v47[1] = v94;
                  v47[2] = bswap32(HIDWORD(v90)) >> 16;
LABEL_96:
                  v47[3] = __rev16(v91);
                  goto LABEL_97;
                }
              }

              else
              {
                v93 = 0xFFFF;
              }

              result = PDAsaturationPDA_15248(((bswap32(v47[2]) >> 16) << 32) | (v92 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v93, v90, v91);
              v91 = HIWORD(result);
              v95 = bswap32(result);
              *v47 = HIWORD(v95);
              v47[1] = v95;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_96;
            }
          }

LABEL_97:
          ++v49;
          v47 += 4;
          --v89;
        }

        while (v89);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 26:
      while (1)
      {
        v172 = v14;
        do
        {
          if (*v49)
          {
            result = *(v44 + 8 * *v49);
            v173 = HIWORD(result);
            if (HIWORD(result))
            {
              v174 = __rev16(v47[3]);
              if (v4)
              {
                v175 = v174;
                if (!v47[3])
                {
                  v176 = bswap32(result);
                  *v47 = HIWORD(v176);
                  v47[1] = v176;
                  v47[2] = bswap32(HIDWORD(result)) >> 16;
LABEL_240:
                  v47[3] = __rev16(v173);
                  goto LABEL_241;
                }
              }

              else
              {
                v175 = 0xFFFF;
              }

              result = PDAluminosityPDA_15249(result, v173, ((bswap32(v47[2]) >> 16) << 32) | (v174 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v175);
              v173 = HIWORD(result);
              v177 = bswap32(result);
              *v47 = HIWORD(v177);
              v47[1] = v177;
              v47[2] = bswap32(HIDWORD(result)) >> 16;
              goto LABEL_240;
            }
          }

LABEL_241:
          ++v49;
          v47 += 4;
          --v172;
        }

        while (v172);
        v49 += v50;
        v47 += 4 * v51;
        if (!--v271)
        {
          return result;
        }
      }

    case 27:
      break;
    default:
      return result;
  }

LABEL_31:
  v58 = v14;
  while (1)
  {
    if (!*v49)
    {
      goto LABEL_40;
    }

    v59 = *(v44 + 8 * *v49);
    v60 = HIWORD(v59);
    if (!HIWORD(v59))
    {
      goto LABEL_40;
    }

    v61 = __rev16(v47[3]);
    if (!v4)
    {
      break;
    }

    v62 = v61;
    if (v47[3])
    {
      goto LABEL_38;
    }

    v63 = bswap32(v59);
    *v47 = HIWORD(v63);
    v47[1] = v63;
    v47[2] = bswap32(HIDWORD(v59)) >> 16;
LABEL_39:
    v47[3] = __rev16(v60);
LABEL_40:
    ++v49;
    v47 += 4;
    if (!--v58)
    {
      v49 += v50;
      v47 += 4 * v51;
      if (!--v271)
      {
        return result;
      }

      goto LABEL_31;
    }
  }

  v62 = 0xFFFF;
LABEL_38:
  result = PDAluminosityPDA_15249(((bswap32(v47[2]) >> 16) << 32) | (v61 << 48) | bswap32(v47[1]) & 0xFFFF0000 | (bswap32(*v47) >> 16), v62, v59, v60);
  v60 = HIWORD(result);
  v64 = bswap32(result);
  *v47 = HIWORD(v64);
  v47[1] = v64;
  v47[2] = bswap32(HIDWORD(result)) >> 16;
  goto LABEL_39;
}

unint64_t RGBA64_mark_pixelmask(unint64_t result, int a2)
{
  v2 = *(result + 136);
  if (v2)
  {
    v660 = *(result + 4);
    v3 = v660;
    v662 = *(result + 8);
    v663 = *(result + 48);
    v5 = *(result + 88);
    v4 = *(result + 96);
    v6 = *(result + 28) >> 3;
    v7 = (*(result + 40) + 8 * v6 * *(result + 16) + 8 * *(result + 12));
    v8 = *(result + 124);
    v9 = (v2 + *(result + 108) * v8 + *(result + 104));
    v10 = *(result + 56);
    v11 = *(result + 60);
    v12 = *(result + 76);
    if (*(result + 1) << 8 != 256)
    {
      LODWORD(v13) = *(result + 64);
      v19 = *(result + 68);
      v20 = v12 >> 3;
      v21 = v4 != 0;
      v659 = v8 - v660;
      v658 = v6 - v660;
      if (v5)
      {
        v655 = 0;
        v22 = v13;
        v23 = v19;
        v656 = v5 + 8 * v20 * v19;
        v657 = v20;
        v24 = v5 + 8 * v20 * (v11 % v19);
        v14 = (v24 + 8 * (v10 % v13));
        v25 = v24 + 8 * v13;
        v26 = 1;
        v661 = v14;
LABEL_16:
        switch(a2)
        {
          case 0:
            do
            {
              v29 = v660;
              v30 = v662;
              do
              {
                v31 = *v9;
                if (*v9)
                {
                  if (v31 == 255)
                  {
                    *v7 = 0;
                  }

                  else
                  {
                    v32 = bswap32(*(v7 + 1) | (*v7 << 16));
                    v33.i32[0] = v32;
                    v33.i32[1] = vshr_n_u32(vdup_n_s32(v32), 0x10uLL).i32[1];
                    v33.i64[1] = __PAIR64__(bswap32(*(v7 + 3)) >> 16, bswap32(*(v7 + 2)) >> 16);
                    v34.i64[0] = 0x800000008000;
                    v34.i64[1] = 0x800000008000;
                    v35 = vmlaq_s32(v34, v33, vdupq_n_s32(v31 | (v31 << 8)));
                    v33.i32[0] = v32;
                    *v7 = vrev16_s8(vmovn_s32(vsubq_s32(v33, vshrq_n_u32(vsraq_n_u32(v35, v35, 0x10uLL), 0x10uLL))));
                  }
                }

                v9 += v26;
                v7 += 8 * v26;
                --v29;
              }

              while (v29);
              v9 += v659;
              v7 += 8 * v658;
              --v662;
            }

            while (v30 != 1);
            return result;
          case 1:
            v320 = v663 == 0 || v21;
            v321 = -v22;
            v322 = -(v657 * v23);
            v323 = 8 * v26;
            if (v320)
            {
              do
              {
                v324 = v660;
                do
                {
                  v325 = *v9;
                  if (*v9)
                  {
                    if (v325 == 255)
                    {
                      *v7 = *v14;
                    }

                    else
                    {
                      result = RGBA64_DMplusDM(v7, ((bswap32(*(v14 + 2)) >> 16) << 32) | ((bswap32(*(v14 + 3)) >> 16) << 48) | bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16), v325 | (v325 << 8), ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), (v325 | (v325 << 8)) ^ 0xFFFFu);
                    }
                  }

                  v9 += v26;
                  v326 = &v14[8 * v26];
                  if (v326 >= v25)
                  {
                    v327 = v321;
                  }

                  else
                  {
                    v327 = 0;
                  }

                  v14 = &v326[4 * v327];
                  v7 += v323;
                  --v324;
                }

                while (v324);
                v9 += v659;
                v7 += 8 * v658;
                v328 = v661;
                v329 = &v661[8 * v657];
                if (v329 >= v656)
                {
                  v330 = v322;
                }

                else
                {
                  v330 = 0;
                }

                v331 = &v329[8 * v330];
                v332 = v25 + 8 * v330 + 8 * v657;
                if (v655)
                {
                  v14 += 8 * v657;
                }

                else
                {
                  v25 = v332;
                  v328 = v331;
                  v14 = v331;
                }

                v60 = v662 == 1;
                v661 = v328;
                --v662;
              }

              while (!v60);
            }

            else
            {
              do
              {
                v629 = v660;
                do
                {
                  v630 = *v9;
                  if (*v9)
                  {
                    if (v630 == 255)
                    {
                      v631 = *(v14 + 2);
                      *v7 = *v14;
                      *(v7 + 2) = v631;
                      *(v7 + 3) = -1;
                    }

                    else
                    {
                      result = RGBA64_DMplusDAM(v7, ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), (v630 | (v630 << 8)) ^ 0xFFFFu, ((bswap32(*(v14 + 2)) >> 16) << 32) | ((bswap32(*(v14 + 3)) >> 16) << 48) | bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16), 0xFFFFu, v630 | (v630 << 8));
                    }
                  }

                  v9 += v26;
                  v632 = &v14[8 * v26];
                  if (v632 >= v25)
                  {
                    v633 = v321;
                  }

                  else
                  {
                    v633 = 0;
                  }

                  v14 = &v632[4 * v633];
                  v7 += v323;
                  --v629;
                }

                while (v629);
                v9 += v659;
                v7 += 8 * v658;
                v634 = v661;
                v635 = &v661[8 * v657];
                if (v635 >= v656)
                {
                  v636 = v322;
                }

                else
                {
                  v636 = 0;
                }

                v637 = &v635[8 * v636];
                v638 = v25 + 8 * v636 + 8 * v657;
                if (v655)
                {
                  v14 += 8 * v657;
                }

                else
                {
                  v25 = v638;
                  v634 = v637;
                  v14 = v637;
                }

                v60 = v662 == 1;
                v661 = v634;
                --v662;
              }

              while (!v60);
            }

            return result;
          case 2:
            v235 = -v22;
            v236 = -(v657 * v23);
            while (1)
            {
              v237 = v660;
              do
              {
                v238 = *v9;
                if (!*v9)
                {
                  goto LABEL_237;
                }

                if (v238 == 255)
                {
                  v239 = bswap32(*(v14 + 3)) >> 16;
                  if (!v239)
                  {
                    goto LABEL_237;
                  }

                  if (v239 == 0xFFFF)
                  {
                    *v7 = *v14;
                    goto LABEL_237;
                  }

                  v246 = (v239 << 48) | ((bswap32(*(v14 + 2)) >> 16) << 32) | bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                  v247 = ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                  v248 = v239 ^ 0xFFFF;
                }

                else
                {
                  v240 = bswap32(*(v14 + 3)) >> 16;
                  v241 = (v238 | (v238 << 8)) ^ 0xFFFF;
                  v242 = v240 - ((v241 * v240 + 0x8000 + ((v241 * v240 + 0x8000) >> 16)) >> 16);
                  if (v240 == (v241 * v240 + 0x8000 + ((v241 * v240 + 0x8000) >> 16)) >> 16)
                  {
                    goto LABEL_237;
                  }

                  v243 = bswap32(*(v14 + 2));
                  v244 = (v242 << 48) | ((HIWORD(v243) - ((v241 * HIWORD(v243) + 0x8000 + ((v241 * HIWORD(v243) + 0x8000) >> 16)) >> 16)) << 32);
                  v245 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v246 = v244 | (v245 - ((v245 * v241 + 0x8000 + ((v245 * v241 + 0x8000) >> 16)) >> 16)) | ((HIWORD(v245) - ((HIWORD(v245) * v241 + 0x8000 + ((HIWORD(v245) * v241 + 0x8000) >> 16)) >> 16)) << 16);
                  v247 = ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                  v248 = ~v242;
                }

                result = RGBA64_DplusDM(v7, v246, v247, v248);
LABEL_237:
                v9 += v26;
                v249 = &v14[8 * v26];
                if (v249 >= v25)
                {
                  v250 = v235;
                }

                else
                {
                  v250 = 0;
                }

                v14 = &v249[4 * v250];
                v7 += 8 * v26;
                --v237;
              }

              while (v237);
              v9 += v659;
              v7 += 8 * v658;
              v251 = v661;
              v252 = &v661[8 * v657];
              if (v252 >= v656)
              {
                v253 = v236;
              }

              else
              {
                v253 = 0;
              }

              v254 = &v252[8 * v253];
              v255 = v25 + 8 * v253 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v255;
                v251 = v254;
                v14 = v254;
              }

              v60 = v662 == 1;
              v661 = v251;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 3:
            v280 = -v22;
            v281 = -(v657 * v23);
            do
            {
              v282 = v660;
              do
              {
                v283 = *v9;
                if (*v9)
                {
                  if (v283 == 255)
                  {
                    v284 = bswap32(*(v14 + 3)) >> 16;
                    v285 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v284 << 48);
                    v286 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                    if (v21)
                    {
                      v287 = v284;
                    }

                    else
                    {
                      v287 = -1;
                    }

                    result = RGBA64_DAM(v7, v285 | v286, v287, bswap32(*(v7 + 3)) >> 16);
                  }

                  else
                  {
                    v288 = v283 | (v283 << 8);
                    v289 = bswap32(*(v7 + 3)) >> 16;
                    v290 = ((bswap32(*(v7 + 2)) >> 16) << 32) | (v289 << 48);
                    v291 = bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                    v292 = bswap32(*(v14 + 3)) >> 16;
                    v293 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v292 << 48);
                    v294 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                    if (v21)
                    {
                      v295 = v292;
                    }

                    else
                    {
                      v295 = -1;
                    }

                    result = RGBA64_DMplusDAM(v7, v290 | v291, v288 ^ 0xFFFFu, v293 | v294, v295, (v289 * v288 + 0x8000 + ((v289 * v288 + 0x8000) >> 16)) >> 16);
                  }
                }

                v9 += v26;
                v296 = &v14[8 * v26];
                if (v296 >= v25)
                {
                  v297 = v280;
                }

                else
                {
                  v297 = 0;
                }

                v14 = &v296[4 * v297];
                v7 += 8 * v26;
                --v282;
              }

              while (v282);
              v9 += v659;
              v7 += 8 * v658;
              v298 = v661;
              v299 = &v661[8 * v657];
              if (v299 >= v656)
              {
                v300 = v281;
              }

              else
              {
                v300 = 0;
              }

              v301 = &v299[8 * v300];
              v302 = v25 + 8 * v300 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v302;
                v298 = v301;
                v14 = v301;
              }

              v60 = v662 == 1;
              v661 = v298;
              --v662;
            }

            while (!v60);
            return result;
          case 4:
            v129 = -v22;
            v130 = -(v657 * v23);
            do
            {
              v131 = v660;
              do
              {
                v132 = *v9;
                if (*v9)
                {
                  if (v132 == 255)
                  {
                    v133 = bswap32(*(v14 + 3)) >> 16;
                    v134 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v133 << 48);
                    v135 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                    if (v21)
                    {
                      v136 = v133;
                    }

                    else
                    {
                      v136 = -1;
                    }

                    result = RGBA64_DAM(v7, v134 | v135, v136, bswap32(~*(v7 + 3)) >> 16);
                  }

                  else
                  {
                    v137 = v132 | (v132 << 8);
                    v138 = bswap32(*(v7 + 3)) >> 16;
                    v139 = ((bswap32(*(v7 + 2)) >> 16) << 32) | (v138 << 48);
                    v140 = bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                    v141 = bswap32(*(v14 + 3)) >> 16;
                    v142 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v141 << 48);
                    v143 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                    if (v21)
                    {
                      v144 = v141;
                    }

                    else
                    {
                      v144 = -1;
                    }

                    result = RGBA64_DMplusDAM(v7, v139 | v140, v137 ^ 0xFFFFu, v142 | v143, v144, ((v138 ^ 0xFFFF) * v137 + 0x8000 + (((v138 ^ 0xFFFF) * v137 + 0x8000) >> 16)) >> 16);
                  }
                }

                v9 += v26;
                v145 = &v14[8 * v26];
                if (v145 >= v25)
                {
                  v146 = v129;
                }

                else
                {
                  v146 = 0;
                }

                v14 = &v145[4 * v146];
                v7 += 8 * v26;
                --v131;
              }

              while (v131);
              v9 += v659;
              v7 += 8 * v658;
              v147 = v661;
              v148 = &v661[8 * v657];
              if (v148 >= v656)
              {
                v149 = v130;
              }

              else
              {
                v149 = 0;
              }

              v150 = &v148[8 * v149];
              v151 = v25 + 8 * v149 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v151;
                v147 = v150;
                v14 = v150;
              }

              v60 = v662 == 1;
              v661 = v147;
              --v662;
            }

            while (!v60);
            return result;
          case 5:
            v381 = -v22;
            v666 = -(v657 * v23);
            do
            {
              v382 = v660;
              do
              {
                if (*v9)
                {
                  v383 = bswap32(*(v14 + 3));
                  v384 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v385 = bswap32(*(v14 + 2)) >> 16;
                  v386 = (*v9 | (*v9 << 8)) ^ 0xFFFF;
                  v387 = HIWORD(v384) * v386 + 0x8000;
                  v388 = v384 * v386 + 0x8000 + ((v384 * v386 + 0x8000) >> 16);
                  v389 = v386 * v385 + 0x8000 + ((v386 * v385 + 0x8000) >> 16);
                  v390 = HIWORD(v383) - ((v386 * HIWORD(v383) + 0x8000 + ((v386 * HIWORD(v383) + 0x8000) >> 16)) >> 16);
                  v391 = bswap32(*(v7 + 3)) >> 16;
                  result = RGBA64_DMplusDM(v7, (v390 << 48) | ((v385 - HIWORD(v389)) << 32) | (v384 - HIWORD(v388)) | ((HIWORD(v384) - ((v387 + HIWORD(v387)) >> 16)) << 16), v391, (v391 << 48) | ((bswap32(*(v7 + 2)) >> 16) << 32) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), ~v390);
                }

                v9 += v26;
                v392 = &v14[8 * v26];
                if (v392 >= v25)
                {
                  v393 = v381;
                }

                else
                {
                  v393 = 0;
                }

                v14 = &v392[4 * v393];
                v7 += 8 * v26;
                --v382;
              }

              while (v382);
              v9 += v659;
              v7 += 8 * v658;
              v394 = v661;
              v395 = &v661[8 * v657];
              v396 = v666;
              if (v395 < v656)
              {
                v396 = 0;
              }

              v397 = &v395[8 * v396];
              v398 = v25 + 8 * v396 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v398;
                v394 = v397;
                v14 = v397;
              }

              v60 = v662 == 1;
              v661 = v394;
              --v662;
            }

            while (!v60);
            return result;
          case 6:
            v447 = -v22;
            v667 = -(v657 * v23);
            do
            {
              v448 = v660;
              do
              {
                v449 = *v9;
                if (*v9)
                {
                  v450 = bswap32(*(v7 + 3));
                  if (HIWORD(v450) != 0xFFFF)
                  {
                    if (~HIWORD(v450) == 0xFFFF)
                    {
                      v451 = bswap32(*(v14 + 3)) >> 16;
                      v452 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v451 << 48);
                      v453 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                      if (v21)
                      {
                        v454 = v451;
                      }

                      else
                      {
                        v454 = -1;
                      }

                      result = RGBA64_DAM(v7, v452 | v453, v454, v449 | (v449 << 8));
                    }

                    else
                    {
                      v455 = HIWORD(v450);
                      v456 = ~HIWORD(v450);
                      v457 = (v455 << 48) | ((bswap32(*(v7 + 2)) >> 16) << 32);
                      v458 = bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                      v459 = bswap32(*(v14 + 3)) >> 16;
                      v460 = ((bswap32(*(v14 + 2)) >> 16) << 32) | (v459 << 48);
                      v461 = bswap32(*(v14 + 1)) & 0xFFFF0000 | (bswap32(*v14) >> 16);
                      if (v21)
                      {
                        v462 = v459;
                      }

                      else
                      {
                        v462 = -1;
                      }

                      result = RGBA64_DplusDAM(v7, v457 | v458, v460 | v461, v462, (257 * v449 * v456 + 0x8000 + ((257 * v449 * v456 + 0x8000) >> 16)) >> 16);
                    }
                  }
                }

                v9 += v26;
                v463 = &v14[8 * v26];
                if (v463 >= v25)
                {
                  v464 = v447;
                }

                else
                {
                  v464 = 0;
                }

                v14 = &v463[4 * v464];
                v7 += 8 * v26;
                --v448;
              }

              while (v448);
              v9 += v659;
              v7 += 8 * v658;
              v465 = v661;
              v466 = &v661[8 * v657];
              v467 = v667;
              if (v466 < v656)
              {
                v467 = 0;
              }

              v468 = &v466[8 * v467];
              v469 = v25 + 8 * v467 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v469;
                v465 = v468;
                v14 = v468;
              }

              v60 = v662 == 1;
              v661 = v465;
              --v662;
            }

            while (!v60);
            return result;
          case 7:
            v303 = -v22;
            v304 = -(v657 * v23);
            do
            {
              v305 = v660;
              do
              {
                v306 = *v9;
                if (*v9)
                {
                  if (v306 == 255)
                  {
                    v307 = bswap32(*(v7 + 1) | (*v7 << 16));
                    v308.i32[0] = v307;
                    v308.i32[1] = vshr_n_u32(vdup_n_s32(v307), 0x10uLL).i32[1];
                    v308.i64[1] = __PAIR64__(bswap32(*(v7 + 3)) >> 16, bswap32(*(v7 + 2)) >> 16);
                    v309.i64[0] = 0x800000008000;
                    v309.i64[1] = 0x800000008000;
                    v310 = vmlaq_s32(v309, v308, vmovl_u16(vdup_n_s16(bswap32(~*(v14 + 3)) >> 16)));
                    v308.i32[0] = v307;
                    *v7 = vrev16_s8(vmovn_s32(vsubq_s32(v308, vshrq_n_u32(vsraq_n_u32(v310, v310, 0x10uLL), 0x10uLL))));
                  }

                  else
                  {
                    v311 = bswap32(*(v14 + 3));
                    v312 = ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                    result = RGBA64_DMplusDM(v7, v312, (HIWORD(v311) * (v306 | (v306 << 8)) + 0x8000 + ((HIWORD(v311) * (v306 | (v306 << 8)) + 0x8000) >> 16)) >> 16, v312, (v306 | (v306 << 8)) ^ 0xFFFFu);
                  }
                }

                v9 += v26;
                v313 = &v14[8 * v26];
                if (v313 >= v25)
                {
                  v314 = v303;
                }

                else
                {
                  v314 = 0;
                }

                v14 = &v313[4 * v314];
                v7 += 8 * v26;
                --v305;
              }

              while (v305);
              v9 += v659;
              v7 += 8 * v658;
              v315 = v661;
              v316 = &v661[8 * v657];
              if (v316 >= v656)
              {
                v317 = v304;
              }

              else
              {
                v317 = 0;
              }

              v318 = &v316[8 * v317];
              v319 = v25 + 8 * v317 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v319;
                v315 = v318;
                v14 = v318;
              }

              v60 = v662 == 1;
              v661 = v315;
              --v662;
            }

            while (!v60);
            return result;
          case 8:
            v513 = -v22;
            v514 = -(v657 * v23);
            result = v657;
            do
            {
              v515 = v660;
              v516 = v662;
              do
              {
                v517 = *v9;
                if (*v9)
                {
                  v518 = bswap32(*(v7 + 3)) >> 16;
                  v519 = bswap32(*(v7 + 1) | (*v7 << 16));
                  if (v517 == 255)
                  {
                    v520.i32[0] = v519;
                    v520.i32[1] = vshr_n_u32(vdup_n_s32(v519), 0x10uLL).i32[1];
                    v521 = bswap32(*(v7 + 2)) >> 16;
                    v522 = bswap32(*(v14 + 3)) >> 16;
                  }

                  else
                  {
                    v523 = bswap32(*(v14 + 3));
                    v520.i32[0] = v519;
                    v522 = (257 * v517 * HIWORD(v523) + 0x8000 + ((257 * v517 * HIWORD(v523) + 0x8000) >> 16)) >> 16;
                    v520.i32[1] = vshr_n_u32(vdup_n_s32(v519), 0x10uLL).i32[1];
                    v521 = bswap32(*(v7 + 2)) >> 16;
                  }

                  v520.i64[1] = __PAIR64__(v518, v521);
                  v524.i64[0] = 0x800000008000;
                  v524.i64[1] = 0x800000008000;
                  v525 = vmlaq_s32(v524, v520, vmovl_u16(vdup_n_s16(v522)));
                  v520.i32[0] = v519;
                  v520.i32[2] = v521;
                  *v7 = vrev16_s8(vmovn_s32(vsubq_s32(v520, vshrq_n_u32(vsraq_n_u32(v525, v525, 0x10uLL), 0x10uLL))));
                }

                v9 += v26;
                v526 = &v14[8 * v26];
                if (v526 >= v25)
                {
                  v527 = v513;
                }

                else
                {
                  v527 = 0;
                }

                v14 = &v526[4 * v527];
                v7 += 8 * v26;
                --v515;
              }

              while (v515);
              v9 += v659;
              v7 += 8 * v658;
              v528 = v661;
              v529 = &v661[8 * v657];
              if (v529 >= v656)
              {
                v530 = v514;
              }

              else
              {
                v530 = 0;
              }

              v531 = &v529[8 * v530];
              v532 = v25 + 8 * v530 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v532;
                v528 = v531;
                v14 = v531;
              }

              v661 = v528;
              --v662;
            }

            while (v516 != 1);
            return result;
          case 9:
            v170 = -v22;
            v665 = -(v657 * v23);
            do
            {
              v171 = v660;
              do
              {
                if (*v9)
                {
                  v172 = bswap32(*(v14 + 3));
                  v173 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v174 = bswap32(*(v14 + 2)) >> 16;
                  v175 = ~(*v9 | (*v9 << 8));
                  v176 = v175;
                  v177 = v173 * v176 + 0x8000 + ((v173 * v176 + 0x8000) >> 16);
                  v178 = HIWORD(v172) - ((HIWORD(v172) * v176 + 0x8000 + ((HIWORD(v172) * v176 + 0x8000) >> 16)) >> 16);
                  v179 = bswap32(*(v7 + 3)) >> 16;
                  result = RGBA64_DMplusDM(v7, (v178 << 48) | ((v174 - ((v174 * v175 + 0x8000 + ((v174 * v175 + 0x8000) >> 16)) >> 16)) << 32) | (v173 - HIWORD(v177)) | ((HIWORD(v173) - ((HIWORD(v173) * v175 + 0x8000 + ((HIWORD(v173) * v175 + 0x8000) >> 16)) >> 16)) << 16), v179 ^ 0xFFFF, (v179 << 48) | ((bswap32(*(v7 + 2)) >> 16) << 32) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), (v178 + v175));
                }

                v9 += v26;
                v180 = &v14[8 * v26];
                if (v180 >= v25)
                {
                  v181 = v170;
                }

                else
                {
                  v181 = 0;
                }

                v14 = &v180[4 * v181];
                v7 += 8 * v26;
                --v171;
              }

              while (v171);
              v9 += v659;
              v7 += 8 * v658;
              v182 = v661;
              v183 = &v661[8 * v657];
              v184 = v665;
              if (v183 < v656)
              {
                v184 = 0;
              }

              v185 = &v183[8 * v184];
              v186 = v25 + 8 * v184 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v186;
                v182 = v185;
                v14 = v185;
              }

              v60 = v662 == 1;
              v661 = v182;
              --v662;
            }

            while (!v60);
            return result;
          case 10:
            v494 = -v22;
            v668 = -(v657 * v23);
            do
            {
              v495 = v660;
              do
              {
                if (*v9)
                {
                  v496 = bswap32(*(v14 + 3));
                  v497 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v498 = bswap32(*(v14 + 2)) >> 16;
                  v499 = (*v9 | (*v9 << 8)) ^ 0xFFFF;
                  v500 = HIWORD(v497) * v499 + 0x8000;
                  v501 = v499 * v498 + 0x8000;
                  v502 = v497 * v499 + 0x8000 + ((v497 * v499 + 0x8000) >> 16);
                  v503 = HIWORD(v496) - ((v499 * HIWORD(v496) + 0x8000 + ((v499 * HIWORD(v496) + 0x8000) >> 16)) >> 16);
                  v504 = (v503 << 48) | ((v498 - ((v501 + HIWORD(v501)) >> 16)) << 32);
                  v505 = bswap32(*(v7 + 3)) >> 16;
                  result = RGBA64_DMplusDM(v7, v504 | (v497 - HIWORD(v502)) | ((HIWORD(v497) - ((v500 + HIWORD(v500)) >> 16)) << 16), v505 ^ 0xFFFF, (v505 << 48) | ((bswap32(*(v7 + 2)) >> 16) << 32) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), ~v503);
                }

                v9 += v26;
                v506 = &v14[8 * v26];
                if (v506 >= v25)
                {
                  v507 = v494;
                }

                else
                {
                  v507 = 0;
                }

                v14 = &v506[4 * v507];
                v7 += 8 * v26;
                --v495;
              }

              while (v495);
              v9 += v659;
              v7 += 8 * v658;
              v508 = v661;
              v509 = &v661[8 * v657];
              v510 = v668;
              if (v509 < v656)
              {
                v510 = 0;
              }

              v511 = &v509[8 * v510];
              v512 = v25 + 8 * v510 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v512;
                v508 = v511;
                v14 = v511;
              }

              v60 = v662 == 1;
              v661 = v508;
              --v662;
            }

            while (!v60);
            return result;
          case 11:
            v109 = -v22;
            v642 = -(v657 * v23);
            do
            {
              v110 = v660;
              do
              {
                if (*v9)
                {
                  v111 = *v9 | (*v9 << 8);
                  v112 = bswap32(*(v14 + 3));
                  v113 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v114 = bswap32(*(v14 + 2));
                  v115 = HIWORD(v112) - ((HIWORD(v112) * (v111 ^ 0xFFFF) + 0x8000 + ((HIWORD(v112) * (v111 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  v116 = (v115 << 48) | ((HIWORD(v114) - ((HIWORD(v114) * (v111 ^ 0xFFFF) + 0x8000 + ((HIWORD(v114) * (v111 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 32);
                  v117 = (v113 - ((v113 * (v111 ^ 0xFFFF) + 0x8000 + ((v113 * (v111 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((HIWORD(v113) - ((HIWORD(v113) * (v111 ^ 0xFFFF) + 0x8000 + ((HIWORD(v113) * (v111 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 16);
                  v118 = bswap32(*(v7 + 3)) >> 16;
                  v119 = ((bswap32(*(v7 + 2)) >> 16) << 32) | (v118 << 48);
                  v120 = bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                  if (v663)
                  {
                    v121 = v118;
                  }

                  else
                  {
                    v121 = -1;
                  }

                  if (v21)
                  {
                    LOWORD(v111) = v115;
                  }

                  result = RGBA64_DAplusdDA(v7, v119 | v120, v121, v116 | v117, v111);
                }

                v9 += v26;
                v122 = &v14[8 * v26];
                if (v122 >= v25)
                {
                  v123 = v109;
                }

                else
                {
                  v123 = 0;
                }

                v14 = &v122[4 * v123];
                v7 += 8 * v26;
                --v110;
              }

              while (v110);
              v9 += v659;
              v7 += 8 * v658;
              v124 = v661;
              v125 = &v661[8 * v657];
              v126 = v642;
              if (v125 < v656)
              {
                v126 = 0;
              }

              v127 = &v125[8 * v126];
              v128 = v25 + 8 * v126 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v128;
                v124 = v127;
                v14 = v127;
              }

              v60 = v662 == 1;
              v661 = v124;
              --v662;
            }

            while (!v60);
            return result;
          case 12:
            v152 = -v22;
            v664 = -(v657 * v23);
            do
            {
              v153 = v660;
              do
              {
                if (*v9)
                {
                  v154 = *v9 | (*v9 << 8);
                  v155 = bswap32(*(v14 + 3));
                  v156 = bswap32(*(v14 + 1) | (*v14 << 16));
                  v157 = bswap32(*(v14 + 2));
                  v158 = HIWORD(v155) - ((HIWORD(v155) * (v154 ^ 0xFFFF) + 0x8000 + ((HIWORD(v155) * (v154 ^ 0xFFFF) + 0x8000) >> 16)) >> 16);
                  v159 = (v158 << 48) | ((HIWORD(v157) - ((HIWORD(v157) * (v154 ^ 0xFFFF) + 0x8000 + ((HIWORD(v157) * (v154 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 32);
                  v160 = (v156 - ((v156 * (v154 ^ 0xFFFF) + 0x8000 + ((v156 * (v154 ^ 0xFFFFu) + 0x8000) >> 16)) >> 16)) | ((HIWORD(v156) - ((HIWORD(v156) * (v154 ^ 0xFFFF) + 0x8000 + ((HIWORD(v156) * (v154 ^ 0xFFFF) + 0x8000) >> 16)) >> 16)) << 16);
                  v161 = ((bswap32(*(v7 + 2)) >> 16) << 32) | ((bswap32(*(v7 + 3)) >> 16) << 48);
                  v162 = bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16);
                  if (v21)
                  {
                    LOWORD(v154) = v158;
                  }

                  result = RGBA64_DpluslDA(v7, v161 | v162, v159 | v160, v154);
                }

                v9 += v26;
                v163 = &v14[8 * v26];
                if (v163 >= v25)
                {
                  v164 = v152;
                }

                else
                {
                  v164 = 0;
                }

                v14 = &v163[4 * v164];
                v7 += 8 * v26;
                --v153;
              }

              while (v153);
              v9 += v659;
              v7 += 8 * v658;
              v165 = v661;
              v166 = &v661[8 * v657];
              v167 = v664;
              if (v166 < v656)
              {
                v167 = 0;
              }

              v168 = &v166[8 * v167];
              v169 = v25 + 8 * v167 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v169;
                v165 = v168;
                v14 = v168;
              }

              v60 = v662 == 1;
              v661 = v165;
              --v662;
            }

            while (!v60);
            return result;
          case 13:
            v423 = -v22;
            v649 = -(v657 * v23);
            while (1)
            {
              v424 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_437;
                }

                LODWORD(v425) = *v9 | (*v9 << 8);
                v426 = bswap32(*(v14 + 3));
                v427 = v425 ^ 0xFFFF;
                v428 = HIWORD(v426) - ((HIWORD(v426) * v427 + 0x8000 + ((HIWORD(v426) * v427 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v428)
                  {
                    goto LABEL_437;
                  }

                  LODWORD(v425) = v428;
                }

                v429 = bswap32(*(v14 + 1) | (*v14 << 16));
                v430 = HIWORD(v429);
                v431 = bswap32(*(v14 + 2)) >> 16;
                v432 = HIWORD(v429) * v427 + 0x8000;
                v433 = v429 - ((v429 * v427 + 0x8000 + ((v429 * v427 + 0x8000) >> 16)) >> 16);
                v434 = v430 - ((v432 + HIWORD(v432)) >> 16);
                v435 = v431 - ((v431 * v427 + 0x8000 + ((v431 * v427 + 0x8000) >> 16)) >> 16);
                v436 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v437 = 0xFFFF;
LABEL_435:
                  result = PDAmultiplyPDA_15236(((bswap32(*(v7 + 2)) >> 16) << 32) | (v436 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v437, v433 | (v434 << 16) | (v428 << 48) | (v435 << 32), v425);
                  v425 = HIWORD(result);
                  v439 = bswap32(result);
                  *v7 = HIWORD(v439);
                  *(v7 + 1) = v439;
                  v438 = bswap32(HIDWORD(result));
                  goto LABEL_436;
                }

                v437 = v436;
                if (*(v7 + 3))
                {
                  goto LABEL_435;
                }

                *v7 = bswap32(v433) >> 16;
                *(v7 + 1) = bswap32(v434) >> 16;
                v438 = bswap32(v435);
LABEL_436:
                *(v7 + 2) = HIWORD(v438);
                *(v7 + 3) = bswap32(v425) >> 16;
LABEL_437:
                v9 += v26;
                v440 = &v14[8 * v26];
                if (v440 >= v25)
                {
                  v441 = v423;
                }

                else
                {
                  v441 = 0;
                }

                v14 = &v440[4 * v441];
                v7 += 8 * v26;
                --v424;
              }

              while (v424);
              v9 += v659;
              v7 += 8 * v658;
              v442 = v661;
              v443 = &v661[8 * v657];
              v444 = v649;
              if (v443 < v656)
              {
                v444 = 0;
              }

              v445 = &v443[8 * v444];
              v446 = v25 + 8 * v444 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v446;
                v442 = v445;
                v14 = v445;
              }

              v60 = v662 == 1;
              v661 = v442;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 14:
            v85 = -v22;
            v641 = -(v657 * v23);
            while (1)
            {
              v86 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_86;
                }

                LODWORD(v87) = *v9 | (*v9 << 8);
                v88 = bswap32(*(v14 + 3));
                v89 = v87 ^ 0xFFFF;
                v90 = HIWORD(v88) - ((HIWORD(v88) * v89 + 0x8000 + ((HIWORD(v88) * v89 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v90)
                  {
                    goto LABEL_86;
                  }

                  LODWORD(v87) = v90;
                }

                v91 = bswap32(*(v14 + 1) | (*v14 << 16));
                v92 = HIWORD(v91);
                v93 = bswap32(*(v14 + 2)) >> 16;
                v94 = HIWORD(v91) * v89 + 0x8000;
                v95 = v91 - ((v91 * v89 + 0x8000 + ((v91 * v89 + 0x8000) >> 16)) >> 16);
                v96 = v92 - ((v94 + HIWORD(v94)) >> 16);
                v97 = v93 - ((v93 * v89 + 0x8000 + ((v93 * v89 + 0x8000) >> 16)) >> 16);
                v98 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v99 = 0xFFFF;
LABEL_84:
                  result = PDAscreenPDA_15237(((bswap32(*(v7 + 2)) >> 16) << 32) | (v98 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v99, v95 | (v96 << 16) | (v90 << 48) | (v97 << 32), v87);
                  v87 = HIWORD(result);
                  v101 = bswap32(result);
                  *v7 = HIWORD(v101);
                  *(v7 + 1) = v101;
                  v100 = bswap32(HIDWORD(result));
                  goto LABEL_85;
                }

                v99 = v98;
                if (*(v7 + 3))
                {
                  goto LABEL_84;
                }

                *v7 = bswap32(v95) >> 16;
                *(v7 + 1) = bswap32(v96) >> 16;
                v100 = bswap32(v97);
LABEL_85:
                *(v7 + 2) = HIWORD(v100);
                *(v7 + 3) = bswap32(v87) >> 16;
LABEL_86:
                v9 += v26;
                v102 = &v14[8 * v26];
                if (v102 >= v25)
                {
                  v103 = v85;
                }

                else
                {
                  v103 = 0;
                }

                v14 = &v102[4 * v103];
                v7 += 8 * v26;
                --v86;
              }

              while (v86);
              v9 += v659;
              v7 += 8 * v658;
              v104 = v661;
              v105 = &v661[8 * v657];
              v106 = v641;
              if (v105 < v656)
              {
                v106 = 0;
              }

              v107 = &v105[8 * v106];
              v108 = v25 + 8 * v106 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v108;
                v104 = v107;
                v14 = v107;
              }

              v60 = v662 == 1;
              v661 = v104;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 15:
            v256 = -v22;
            v645 = -(v657 * v23);
            while (1)
            {
              v257 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_262;
                }

                LODWORD(v258) = *v9 | (*v9 << 8);
                v259 = bswap32(*(v14 + 3));
                v260 = v258 ^ 0xFFFF;
                v261 = HIWORD(v259) - ((HIWORD(v259) * v260 + 0x8000 + ((HIWORD(v259) * v260 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v261)
                  {
                    goto LABEL_262;
                  }

                  LODWORD(v258) = v261;
                }

                v262 = bswap32(*(v14 + 1) | (*v14 << 16));
                v263 = HIWORD(v262);
                v264 = bswap32(*(v14 + 2)) >> 16;
                v265 = HIWORD(v262) * v260 + 0x8000;
                v266 = v262 - ((v262 * v260 + 0x8000 + ((v262 * v260 + 0x8000) >> 16)) >> 16);
                v267 = v263 - ((v265 + HIWORD(v265)) >> 16);
                v268 = v264 - ((v264 * v260 + 0x8000 + ((v264 * v260 + 0x8000) >> 16)) >> 16);
                v269 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v270 = 0xFFFF;
LABEL_260:
                  result = PDAoverlayPDA_15238(((bswap32(*(v7 + 2)) >> 16) << 32) | (v269 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v270, v266 | (v267 << 16) | (v261 << 48) | (v268 << 32), v258);
                  v258 = HIWORD(result);
                  v272 = bswap32(result);
                  *v7 = HIWORD(v272);
                  *(v7 + 1) = v272;
                  v271 = bswap32(HIDWORD(result));
                  goto LABEL_261;
                }

                v270 = v269;
                if (*(v7 + 3))
                {
                  goto LABEL_260;
                }

                *v7 = bswap32(v266) >> 16;
                *(v7 + 1) = bswap32(v267) >> 16;
                v271 = bswap32(v268);
LABEL_261:
                *(v7 + 2) = HIWORD(v271);
                *(v7 + 3) = bswap32(v258) >> 16;
LABEL_262:
                v9 += v26;
                v273 = &v14[8 * v26];
                if (v273 >= v25)
                {
                  v274 = v256;
                }

                else
                {
                  v274 = 0;
                }

                v14 = &v273[4 * v274];
                v7 += 8 * v26;
                --v257;
              }

              while (v257);
              v9 += v659;
              v7 += 8 * v658;
              v275 = v661;
              v276 = &v661[8 * v657];
              v277 = v645;
              if (v276 < v656)
              {
                v277 = 0;
              }

              v278 = &v276[8 * v277];
              v279 = v25 + 8 * v277 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v279;
                v275 = v278;
                v14 = v278;
              }

              v60 = v662 == 1;
              v661 = v275;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 16:
            v61 = -v22;
            v640 = -(v657 * v23);
            while (1)
            {
              v62 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_62;
                }

                LODWORD(v63) = *v9 | (*v9 << 8);
                v64 = bswap32(*(v14 + 3));
                v65 = v63 ^ 0xFFFF;
                v66 = HIWORD(v64) - ((HIWORD(v64) * v65 + 0x8000 + ((HIWORD(v64) * v65 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v66)
                  {
                    goto LABEL_62;
                  }

                  LODWORD(v63) = v66;
                }

                v67 = bswap32(*(v14 + 1) | (*v14 << 16));
                v68 = HIWORD(v67);
                v69 = bswap32(*(v14 + 2)) >> 16;
                v70 = HIWORD(v67) * v65 + 0x8000;
                v71 = v67 - ((v67 * v65 + 0x8000 + ((v67 * v65 + 0x8000) >> 16)) >> 16);
                v72 = v68 - ((v70 + HIWORD(v70)) >> 16);
                v73 = v69 - ((v69 * v65 + 0x8000 + ((v69 * v65 + 0x8000) >> 16)) >> 16);
                v74 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v75 = 0xFFFF;
LABEL_60:
                  result = PDAdarkenPDA_15240(((bswap32(*(v7 + 2)) >> 16) << 32) | (v74 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v75, v71 | (v72 << 16) | (v66 << 48) | (v73 << 32), v63);
                  v63 = HIWORD(result);
                  v77 = bswap32(result);
                  *v7 = HIWORD(v77);
                  *(v7 + 1) = v77;
                  v76 = bswap32(HIDWORD(result));
                  goto LABEL_61;
                }

                v75 = v74;
                if (*(v7 + 3))
                {
                  goto LABEL_60;
                }

                *v7 = bswap32(v71) >> 16;
                *(v7 + 1) = bswap32(v72) >> 16;
                v76 = bswap32(v73);
LABEL_61:
                *(v7 + 2) = HIWORD(v76);
                *(v7 + 3) = bswap32(v63) >> 16;
LABEL_62:
                v9 += v26;
                v78 = &v14[8 * v26];
                if (v78 >= v25)
                {
                  v79 = v61;
                }

                else
                {
                  v79 = 0;
                }

                v14 = &v78[4 * v79];
                v7 += 8 * v26;
                --v62;
              }

              while (v62);
              v9 += v659;
              v7 += 8 * v658;
              v80 = v661;
              v81 = &v661[8 * v657];
              v82 = v640;
              if (v81 < v656)
              {
                v82 = 0;
              }

              v83 = &v81[8 * v82];
              v84 = v25 + 8 * v82 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v84;
                v80 = v83;
                v14 = v83;
              }

              v60 = v662 == 1;
              v661 = v80;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 17:
            v333 = -v22;
            v646 = -(v657 * v23);
            while (1)
            {
              v334 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_349;
                }

                LODWORD(v335) = *v9 | (*v9 << 8);
                v336 = bswap32(*(v14 + 3));
                v337 = v335 ^ 0xFFFF;
                v338 = HIWORD(v336) - ((HIWORD(v336) * v337 + 0x8000 + ((HIWORD(v336) * v337 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v338)
                  {
                    goto LABEL_349;
                  }

                  LODWORD(v335) = v338;
                }

                v339 = bswap32(*(v14 + 1) | (*v14 << 16));
                v340 = HIWORD(v339);
                v341 = bswap32(*(v14 + 2)) >> 16;
                v342 = HIWORD(v339) * v337 + 0x8000;
                v343 = v339 - ((v339 * v337 + 0x8000 + ((v339 * v337 + 0x8000) >> 16)) >> 16);
                v344 = v340 - ((v342 + HIWORD(v342)) >> 16);
                v345 = v341 - ((v341 * v337 + 0x8000 + ((v341 * v337 + 0x8000) >> 16)) >> 16);
                v346 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v347 = 0xFFFF;
LABEL_347:
                  result = PDAlightenPDA_15239(((bswap32(*(v7 + 2)) >> 16) << 32) | (v346 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v347, v343 | (v344 << 16) | (v338 << 48) | (v345 << 32), v335);
                  v335 = HIWORD(result);
                  v349 = bswap32(result);
                  *v7 = HIWORD(v349);
                  *(v7 + 1) = v349;
                  v348 = bswap32(HIDWORD(result));
                  goto LABEL_348;
                }

                v347 = v346;
                if (*(v7 + 3))
                {
                  goto LABEL_347;
                }

                *v7 = bswap32(v343) >> 16;
                *(v7 + 1) = bswap32(v344) >> 16;
                v348 = bswap32(v345);
LABEL_348:
                *(v7 + 2) = HIWORD(v348);
                *(v7 + 3) = bswap32(v335) >> 16;
LABEL_349:
                v9 += v26;
                v350 = &v14[8 * v26];
                if (v350 >= v25)
                {
                  v351 = v333;
                }

                else
                {
                  v351 = 0;
                }

                v14 = &v350[4 * v351];
                v7 += 8 * v26;
                --v334;
              }

              while (v334);
              v9 += v659;
              v7 += 8 * v658;
              v352 = v661;
              v353 = &v661[8 * v657];
              v354 = v646;
              if (v353 < v656)
              {
                v354 = 0;
              }

              v355 = &v353[8 * v354];
              v356 = v25 + 8 * v354 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v356;
                v352 = v355;
                v14 = v355;
              }

              v60 = v662 == 1;
              v661 = v352;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 18:
            v470 = -v22;
            v650 = -(v657 * v23);
            while (1)
            {
              v471 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_486;
                }

                LODWORD(v472) = *v9 | (*v9 << 8);
                v473 = bswap32(*(v14 + 3));
                v474 = v472 ^ 0xFFFF;
                v475 = HIWORD(v473) - ((HIWORD(v473) * v474 + 0x8000 + ((HIWORD(v473) * v474 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v475)
                  {
                    goto LABEL_486;
                  }

                  LODWORD(v472) = v475;
                }

                v476 = bswap32(*(v14 + 1) | (*v14 << 16));
                v477 = HIWORD(v476);
                v478 = bswap32(*(v14 + 2)) >> 16;
                v479 = HIWORD(v476) * v474 + 0x8000;
                v480 = v476 - ((v476 * v474 + 0x8000 + ((v476 * v474 + 0x8000) >> 16)) >> 16);
                v481 = v477 - ((v479 + HIWORD(v479)) >> 16);
                v482 = v478 - ((v478 * v474 + 0x8000 + ((v478 * v474 + 0x8000) >> 16)) >> 16);
                v483 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v484 = 0xFFFF;
LABEL_484:
                  result = PDAcolordodgePDA_15241(((bswap32(*(v7 + 2)) >> 16) << 32) | (v483 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v484, v480 | (v481 << 16) | (v475 << 48) | (v482 << 32), v472);
                  v472 = HIWORD(result);
                  v486 = bswap32(result);
                  *v7 = HIWORD(v486);
                  *(v7 + 1) = v486;
                  v485 = bswap32(HIDWORD(result));
                  goto LABEL_485;
                }

                v484 = v483;
                if (*(v7 + 3))
                {
                  goto LABEL_484;
                }

                *v7 = bswap32(v480) >> 16;
                *(v7 + 1) = bswap32(v481) >> 16;
                v485 = bswap32(v482);
LABEL_485:
                *(v7 + 2) = HIWORD(v485);
                *(v7 + 3) = bswap32(v472) >> 16;
LABEL_486:
                v9 += v26;
                v487 = &v14[8 * v26];
                if (v487 >= v25)
                {
                  v488 = v470;
                }

                else
                {
                  v488 = 0;
                }

                v14 = &v487[4 * v488];
                v7 += 8 * v26;
                --v471;
              }

              while (v471);
              v9 += v659;
              v7 += 8 * v658;
              v489 = v661;
              v490 = &v661[8 * v657];
              v491 = v650;
              if (v490 < v656)
              {
                v491 = 0;
              }

              v492 = &v490[8 * v491];
              v493 = v25 + 8 * v491 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v493;
                v489 = v492;
                v14 = v492;
              }

              v60 = v662 == 1;
              v661 = v489;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 19:
            v557 = -v22;
            v652 = -(v657 * v23);
            while (1)
            {
              v558 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_569;
                }

                LODWORD(v559) = *v9 | (*v9 << 8);
                v560 = bswap32(*(v14 + 3));
                v561 = v559 ^ 0xFFFF;
                v562 = HIWORD(v560) - ((HIWORD(v560) * v561 + 0x8000 + ((HIWORD(v560) * v561 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v562)
                  {
                    goto LABEL_569;
                  }

                  LODWORD(v559) = v562;
                }

                v563 = bswap32(*(v14 + 1) | (*v14 << 16));
                v564 = HIWORD(v563);
                v565 = bswap32(*(v14 + 2)) >> 16;
                v566 = HIWORD(v563) * v561 + 0x8000;
                v567 = v563 - ((v563 * v561 + 0x8000 + ((v563 * v561 + 0x8000) >> 16)) >> 16);
                v568 = v564 - ((v566 + HIWORD(v566)) >> 16);
                v569 = v565 - ((v565 * v561 + 0x8000 + ((v565 * v561 + 0x8000) >> 16)) >> 16);
                v570 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v571 = 0xFFFF;
LABEL_567:
                  result = PDAcolorburnPDA_15242(((bswap32(*(v7 + 2)) >> 16) << 32) | (v570 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v571, v567 | (v568 << 16) | (v562 << 48) | (v569 << 32), v559);
                  v559 = HIWORD(result);
                  v573 = bswap32(result);
                  *v7 = HIWORD(v573);
                  *(v7 + 1) = v573;
                  v572 = bswap32(HIDWORD(result));
                  goto LABEL_568;
                }

                v571 = v570;
                if (*(v7 + 3))
                {
                  goto LABEL_567;
                }

                *v7 = bswap32(v567) >> 16;
                *(v7 + 1) = bswap32(v568) >> 16;
                v572 = bswap32(v569);
LABEL_568:
                *(v7 + 2) = HIWORD(v572);
                *(v7 + 3) = bswap32(v559) >> 16;
LABEL_569:
                v9 += v26;
                v574 = &v14[8 * v26];
                if (v574 >= v25)
                {
                  v575 = v557;
                }

                else
                {
                  v575 = 0;
                }

                v14 = &v574[4 * v575];
                v7 += 8 * v26;
                --v558;
              }

              while (v558);
              v9 += v659;
              v7 += 8 * v658;
              v576 = v661;
              v577 = &v661[8 * v657];
              v578 = v652;
              if (v577 < v656)
              {
                v578 = 0;
              }

              v579 = &v577[8 * v578];
              v580 = v25 + 8 * v578 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v580;
                v576 = v579;
                v14 = v579;
              }

              v60 = v662 == 1;
              v661 = v576;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 20:
            v357 = -v22;
            v647 = -(v657 * v23);
            while (1)
            {
              v358 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_373;
                }

                LODWORD(v359) = *v9 | (*v9 << 8);
                v360 = bswap32(*(v14 + 3));
                v361 = v359 ^ 0xFFFF;
                v362 = HIWORD(v360) - ((HIWORD(v360) * v361 + 0x8000 + ((HIWORD(v360) * v361 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v362)
                  {
                    goto LABEL_373;
                  }

                  LODWORD(v359) = v362;
                }

                v363 = bswap32(*(v14 + 1) | (*v14 << 16));
                v364 = HIWORD(v363);
                v365 = bswap32(*(v14 + 2)) >> 16;
                v366 = HIWORD(v363) * v361 + 0x8000;
                v367 = v363 - ((v363 * v361 + 0x8000 + ((v363 * v361 + 0x8000) >> 16)) >> 16);
                v368 = v364 - ((v366 + HIWORD(v366)) >> 16);
                v369 = v365 - ((v365 * v361 + 0x8000 + ((v365 * v361 + 0x8000) >> 16)) >> 16);
                v370 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v371 = 0xFFFF;
LABEL_371:
                  result = PDAsoftlightPDA_15244(((bswap32(*(v7 + 2)) >> 16) << 32) | (v370 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v371, v367 | (v368 << 16) | (v362 << 48) | (v369 << 32), v359);
                  v359 = HIWORD(result);
                  v373 = bswap32(result);
                  *v7 = HIWORD(v373);
                  *(v7 + 1) = v373;
                  v372 = bswap32(HIDWORD(result));
                  goto LABEL_372;
                }

                v371 = v370;
                if (*(v7 + 3))
                {
                  goto LABEL_371;
                }

                *v7 = bswap32(v367) >> 16;
                *(v7 + 1) = bswap32(v368) >> 16;
                v372 = bswap32(v369);
LABEL_372:
                *(v7 + 2) = HIWORD(v372);
                *(v7 + 3) = bswap32(v359) >> 16;
LABEL_373:
                v9 += v26;
                v374 = &v14[8 * v26];
                if (v374 >= v25)
                {
                  v375 = v357;
                }

                else
                {
                  v375 = 0;
                }

                v14 = &v374[4 * v375];
                v7 += 8 * v26;
                --v358;
              }

              while (v358);
              v9 += v659;
              v7 += 8 * v658;
              v376 = v661;
              v377 = &v661[8 * v657];
              v378 = v647;
              if (v377 < v656)
              {
                v378 = 0;
              }

              v379 = &v377[8 * v378];
              v380 = v25 + 8 * v378 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v380;
                v376 = v379;
                v14 = v379;
              }

              v60 = v662 == 1;
              v661 = v376;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 21:
            v399 = -v22;
            v648 = -(v657 * v23);
            while (1)
            {
              v400 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_413;
                }

                LODWORD(v401) = *v9 | (*v9 << 8);
                v402 = bswap32(*(v14 + 3));
                v403 = v401 ^ 0xFFFF;
                v404 = HIWORD(v402) - ((HIWORD(v402) * v403 + 0x8000 + ((HIWORD(v402) * v403 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v404)
                  {
                    goto LABEL_413;
                  }

                  LODWORD(v401) = v404;
                }

                v405 = bswap32(*(v14 + 1) | (*v14 << 16));
                v406 = HIWORD(v405);
                v407 = bswap32(*(v14 + 2)) >> 16;
                v408 = HIWORD(v405) * v403 + 0x8000;
                v409 = v405 - ((v405 * v403 + 0x8000 + ((v405 * v403 + 0x8000) >> 16)) >> 16);
                v410 = v406 - ((v408 + HIWORD(v408)) >> 16);
                v411 = v407 - ((v407 * v403 + 0x8000 + ((v407 * v403 + 0x8000) >> 16)) >> 16);
                v412 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v413 = 0xFFFF;
LABEL_411:
                  result = PDAhardlightPDA_15243(((bswap32(*(v7 + 2)) >> 16) << 32) | (v412 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v413, v409 | (v410 << 16) | (v404 << 48) | (v411 << 32), v401);
                  v401 = HIWORD(result);
                  v415 = bswap32(result);
                  *v7 = HIWORD(v415);
                  *(v7 + 1) = v415;
                  v414 = bswap32(HIDWORD(result));
                  goto LABEL_412;
                }

                v413 = v412;
                if (*(v7 + 3))
                {
                  goto LABEL_411;
                }

                *v7 = bswap32(v409) >> 16;
                *(v7 + 1) = bswap32(v410) >> 16;
                v414 = bswap32(v411);
LABEL_412:
                *(v7 + 2) = HIWORD(v414);
                *(v7 + 3) = bswap32(v401) >> 16;
LABEL_413:
                v9 += v26;
                v416 = &v14[8 * v26];
                if (v416 >= v25)
                {
                  v417 = v399;
                }

                else
                {
                  v417 = 0;
                }

                v14 = &v416[4 * v417];
                v7 += 8 * v26;
                --v400;
              }

              while (v400);
              v9 += v659;
              v7 += 8 * v658;
              v418 = v661;
              v419 = &v661[8 * v657];
              v420 = v648;
              if (v419 < v656)
              {
                v420 = 0;
              }

              v421 = &v419[8 * v420];
              v422 = v25 + 8 * v420 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v422;
                v418 = v421;
                v14 = v421;
              }

              v60 = v662 == 1;
              v661 = v418;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 22:
            v533 = -v22;
            v651 = -(v657 * v23);
            while (1)
            {
              v534 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_545;
                }

                LODWORD(v535) = *v9 | (*v9 << 8);
                v536 = bswap32(*(v14 + 3));
                v537 = v535 ^ 0xFFFF;
                v538 = HIWORD(v536) - ((HIWORD(v536) * v537 + 0x8000 + ((HIWORD(v536) * v537 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v538)
                  {
                    goto LABEL_545;
                  }

                  LODWORD(v535) = v538;
                }

                v539 = bswap32(*(v14 + 1) | (*v14 << 16));
                v540 = HIWORD(v539);
                v541 = bswap32(*(v14 + 2)) >> 16;
                v542 = HIWORD(v539) * v537 + 0x8000;
                v543 = v539 - ((v539 * v537 + 0x8000 + ((v539 * v537 + 0x8000) >> 16)) >> 16);
                v544 = v540 - ((v542 + HIWORD(v542)) >> 16);
                v545 = v541 - ((v541 * v537 + 0x8000 + ((v541 * v537 + 0x8000) >> 16)) >> 16);
                v546 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v547 = 0xFFFF;
LABEL_543:
                  result = PDAdifferencePDA_15245(((bswap32(*(v7 + 2)) >> 16) << 32) | (v546 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v547, v543 | (v544 << 16) | (v538 << 48) | (v545 << 32), v535);
                  v535 = HIWORD(result);
                  v549 = bswap32(result);
                  *v7 = HIWORD(v549);
                  *(v7 + 1) = v549;
                  v548 = bswap32(HIDWORD(result));
                  goto LABEL_544;
                }

                v547 = v546;
                if (*(v7 + 3))
                {
                  goto LABEL_543;
                }

                *v7 = bswap32(v543) >> 16;
                *(v7 + 1) = bswap32(v544) >> 16;
                v548 = bswap32(v545);
LABEL_544:
                *(v7 + 2) = HIWORD(v548);
                *(v7 + 3) = bswap32(v535) >> 16;
LABEL_545:
                v9 += v26;
                v550 = &v14[8 * v26];
                if (v550 >= v25)
                {
                  v551 = v533;
                }

                else
                {
                  v551 = 0;
                }

                v14 = &v550[4 * v551];
                v7 += 8 * v26;
                --v534;
              }

              while (v534);
              v9 += v659;
              v7 += 8 * v658;
              v552 = v661;
              v553 = &v661[8 * v657];
              v554 = v651;
              if (v553 < v656)
              {
                v554 = 0;
              }

              v555 = &v553[8 * v554];
              v556 = v25 + 8 * v554 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v556;
                v552 = v555;
                v14 = v555;
              }

              v60 = v662 == 1;
              v661 = v552;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 23:
            v581 = -v22;
            v653 = -(v657 * v23);
            while (1)
            {
              v582 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_593;
                }

                LODWORD(v583) = *v9 | (*v9 << 8);
                v584 = bswap32(*(v14 + 3));
                v585 = v583 ^ 0xFFFF;
                v586 = HIWORD(v584) - ((HIWORD(v584) * v585 + 0x8000 + ((HIWORD(v584) * v585 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v586)
                  {
                    goto LABEL_593;
                  }

                  LODWORD(v583) = v586;
                }

                v587 = bswap32(*(v14 + 1) | (*v14 << 16));
                v588 = HIWORD(v587);
                v589 = bswap32(*(v14 + 2)) >> 16;
                v590 = HIWORD(v587) * v585 + 0x8000;
                v591 = v587 - ((v587 * v585 + 0x8000 + ((v587 * v585 + 0x8000) >> 16)) >> 16);
                v592 = v588 - ((v590 + HIWORD(v590)) >> 16);
                v593 = v589 - ((v589 * v585 + 0x8000 + ((v589 * v585 + 0x8000) >> 16)) >> 16);
                v594 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v595 = 0xFFFF;
LABEL_591:
                  result = PDAexclusionPDA_15246(((bswap32(*(v7 + 2)) >> 16) << 32) | (v594 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v595, v591 | (v592 << 16) | (v586 << 48) | (v593 << 32), v583);
                  v583 = HIWORD(result);
                  v597 = bswap32(result);
                  *v7 = HIWORD(v597);
                  *(v7 + 1) = v597;
                  v596 = bswap32(HIDWORD(result));
                  goto LABEL_592;
                }

                v595 = v594;
                if (*(v7 + 3))
                {
                  goto LABEL_591;
                }

                *v7 = bswap32(v591) >> 16;
                *(v7 + 1) = bswap32(v592) >> 16;
                v596 = bswap32(v593);
LABEL_592:
                *(v7 + 2) = HIWORD(v596);
                *(v7 + 3) = bswap32(v583) >> 16;
LABEL_593:
                v9 += v26;
                v598 = &v14[8 * v26];
                if (v598 >= v25)
                {
                  v599 = v581;
                }

                else
                {
                  v599 = 0;
                }

                v14 = &v598[4 * v599];
                v7 += 8 * v26;
                --v582;
              }

              while (v582);
              v9 += v659;
              v7 += 8 * v658;
              v600 = v661;
              v601 = &v661[8 * v657];
              v602 = v653;
              if (v601 < v656)
              {
                v602 = 0;
              }

              v603 = &v601[8 * v602];
              v604 = v25 + 8 * v602 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v604;
                v600 = v603;
                v14 = v603;
              }

              v60 = v662 == 1;
              v661 = v600;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 24:
            v211 = -v22;
            v644 = -(v657 * v23);
            while (1)
            {
              v212 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_214;
                }

                LODWORD(v213) = *v9 | (*v9 << 8);
                v214 = bswap32(*(v14 + 3));
                v215 = v213 ^ 0xFFFF;
                v216 = HIWORD(v214) - ((HIWORD(v214) * v215 + 0x8000 + ((HIWORD(v214) * v215 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v216)
                  {
                    goto LABEL_214;
                  }

                  LODWORD(v213) = v216;
                }

                v217 = bswap32(*(v14 + 1) | (*v14 << 16));
                v218 = HIWORD(v217);
                v219 = bswap32(*(v14 + 2)) >> 16;
                v220 = HIWORD(v217) * v215 + 0x8000;
                v221 = v217 - ((v217 * v215 + 0x8000 + ((v217 * v215 + 0x8000) >> 16)) >> 16);
                v222 = v218 - ((v220 + HIWORD(v220)) >> 16);
                v223 = v219 - ((v219 * v215 + 0x8000 + ((v219 * v215 + 0x8000) >> 16)) >> 16);
                v224 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v225 = 0xFFFF;
LABEL_212:
                  result = PDAhuePDA_15247(((bswap32(*(v7 + 2)) >> 16) << 32) | (v224 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v225, v221 | (v222 << 16) | (v216 << 48) | (v223 << 32), v213);
                  v213 = HIWORD(result);
                  v227 = bswap32(result);
                  *v7 = HIWORD(v227);
                  *(v7 + 1) = v227;
                  v226 = bswap32(HIDWORD(result));
                  goto LABEL_213;
                }

                v225 = v224;
                if (*(v7 + 3))
                {
                  goto LABEL_212;
                }

                *v7 = bswap32(v221) >> 16;
                *(v7 + 1) = bswap32(v222) >> 16;
                v226 = bswap32(v223);
LABEL_213:
                *(v7 + 2) = HIWORD(v226);
                *(v7 + 3) = bswap32(v213) >> 16;
LABEL_214:
                v9 += v26;
                v228 = &v14[8 * v26];
                if (v228 >= v25)
                {
                  v229 = v211;
                }

                else
                {
                  v229 = 0;
                }

                v14 = &v228[4 * v229];
                v7 += 8 * v26;
                --v212;
              }

              while (v212);
              v9 += v659;
              v7 += 8 * v658;
              v230 = v661;
              v231 = &v661[8 * v657];
              v232 = v644;
              if (v231 < v656)
              {
                v232 = 0;
              }

              v233 = &v231[8 * v232];
              v234 = v25 + 8 * v232 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v234;
                v230 = v233;
                v14 = v233;
              }

              v60 = v662 == 1;
              v661 = v230;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 25:
            v187 = -v22;
            v643 = -(v657 * v23);
            while (1)
            {
              v188 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_190;
                }

                LODWORD(v189) = *v9 | (*v9 << 8);
                v190 = bswap32(*(v14 + 3));
                v191 = v189 ^ 0xFFFF;
                v192 = HIWORD(v190) - ((HIWORD(v190) * v191 + 0x8000 + ((HIWORD(v190) * v191 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v192)
                  {
                    goto LABEL_190;
                  }

                  LODWORD(v189) = v192;
                }

                v193 = bswap32(*(v14 + 1) | (*v14 << 16));
                v194 = HIWORD(v193);
                v195 = bswap32(*(v14 + 2)) >> 16;
                v196 = HIWORD(v193) * v191 + 0x8000;
                v197 = v193 - ((v193 * v191 + 0x8000 + ((v193 * v191 + 0x8000) >> 16)) >> 16);
                v198 = v194 - ((v196 + HIWORD(v196)) >> 16);
                v199 = v195 - ((v195 * v191 + 0x8000 + ((v195 * v191 + 0x8000) >> 16)) >> 16);
                v200 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v201 = 0xFFFF;
LABEL_188:
                  result = PDAsaturationPDA_15248(((bswap32(*(v7 + 2)) >> 16) << 32) | (v200 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v201, v197 | (v198 << 16) | (v192 << 48) | (v199 << 32), v189);
                  v189 = HIWORD(result);
                  v203 = bswap32(result);
                  *v7 = HIWORD(v203);
                  *(v7 + 1) = v203;
                  v202 = bswap32(HIDWORD(result));
                  goto LABEL_189;
                }

                v201 = v200;
                if (*(v7 + 3))
                {
                  goto LABEL_188;
                }

                *v7 = bswap32(v197) >> 16;
                *(v7 + 1) = bswap32(v198) >> 16;
                v202 = bswap32(v199);
LABEL_189:
                *(v7 + 2) = HIWORD(v202);
                *(v7 + 3) = bswap32(v189) >> 16;
LABEL_190:
                v9 += v26;
                v204 = &v14[8 * v26];
                if (v204 >= v25)
                {
                  v205 = v187;
                }

                else
                {
                  v205 = 0;
                }

                v14 = &v204[4 * v205];
                v7 += 8 * v26;
                --v188;
              }

              while (v188);
              v9 += v659;
              v7 += 8 * v658;
              v206 = v661;
              v207 = &v661[8 * v657];
              v208 = v643;
              if (v207 < v656)
              {
                v208 = 0;
              }

              v209 = &v207[8 * v208];
              v210 = v25 + 8 * v208 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v210;
                v206 = v209;
                v14 = v209;
              }

              v60 = v662 == 1;
              v661 = v206;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 26:
            v605 = -v22;
            v654 = -(v657 * v23);
            while (1)
            {
              v606 = v660;
              do
              {
                if (!*v9)
                {
                  goto LABEL_617;
                }

                LODWORD(v607) = *v9 | (*v9 << 8);
                v608 = bswap32(*(v14 + 3));
                v609 = v607 ^ 0xFFFF;
                v610 = HIWORD(v608) - ((HIWORD(v608) * v609 + 0x8000 + ((HIWORD(v608) * v609 + 0x8000) >> 16)) >> 16);
                if (v21)
                {
                  if (!v610)
                  {
                    goto LABEL_617;
                  }

                  LODWORD(v607) = v610;
                }

                v611 = bswap32(*(v14 + 1) | (*v14 << 16));
                v612 = HIWORD(v611);
                v613 = bswap32(*(v14 + 2)) >> 16;
                v614 = HIWORD(v611) * v609 + 0x8000;
                v615 = v611 - ((v611 * v609 + 0x8000 + ((v611 * v609 + 0x8000) >> 16)) >> 16);
                v616 = v612 - ((v614 + HIWORD(v614)) >> 16);
                v617 = v613 - ((v613 * v609 + 0x8000 + ((v613 * v609 + 0x8000) >> 16)) >> 16);
                v618 = __rev16(*(v7 + 3));
                if (!v663)
                {
                  v619 = 0xFFFF;
LABEL_615:
                  result = PDAluminosityPDA_15249(v615 | (v616 << 16) | (v610 << 48) | (v617 << 32), v607, ((bswap32(*(v7 + 2)) >> 16) << 32) | (v618 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v619);
                  v607 = HIWORD(result);
                  v621 = bswap32(result);
                  *v7 = HIWORD(v621);
                  *(v7 + 1) = v621;
                  v620 = bswap32(HIDWORD(result));
                  goto LABEL_616;
                }

                v619 = v618;
                if (*(v7 + 3))
                {
                  goto LABEL_615;
                }

                *v7 = bswap32(v615) >> 16;
                *(v7 + 1) = bswap32(v616) >> 16;
                v620 = bswap32(v617);
LABEL_616:
                *(v7 + 2) = HIWORD(v620);
                *(v7 + 3) = bswap32(v607) >> 16;
LABEL_617:
                v9 += v26;
                v622 = &v14[8 * v26];
                if (v622 >= v25)
                {
                  v623 = v605;
                }

                else
                {
                  v623 = 0;
                }

                v14 = &v622[4 * v623];
                v7 += 8 * v26;
                --v606;
              }

              while (v606);
              v9 += v659;
              v7 += 8 * v658;
              v624 = v661;
              v625 = &v661[8 * v657];
              v626 = v654;
              if (v625 < v656)
              {
                v626 = 0;
              }

              v627 = &v625[8 * v626];
              v628 = v25 + 8 * v626 + 8 * v657;
              if (v655)
              {
                v14 += 8 * v657;
              }

              else
              {
                v25 = v628;
                v624 = v627;
                v14 = v627;
              }

              v60 = v662 == 1;
              v661 = v624;
              --v662;
              if (v60)
              {
                return result;
              }
            }

          case 27:
            v36 = -v22;
            v639 = -(v657 * v23);
            break;
          default:
            return result;
        }

LABEL_27:
        v37 = v660;
        while (1)
        {
          if (*v9)
          {
            LODWORD(v38) = *v9 | (*v9 << 8);
            v39 = bswap32(*(v14 + 3));
            v40 = v38 ^ 0xFFFF;
            v41 = HIWORD(v39) - ((HIWORD(v39) * v40 + 0x8000 + ((HIWORD(v39) * v40 + 0x8000) >> 16)) >> 16);
            if (!v21)
            {
              goto LABEL_32;
            }

            if (v41)
            {
              break;
            }
          }

LABEL_38:
          v9 += v26;
          v53 = &v14[8 * v26];
          if (v53 >= v25)
          {
            v54 = v36;
          }

          else
          {
            v54 = 0;
          }

          v14 = &v53[4 * v54];
          v7 += 8 * v26;
          if (!--v37)
          {
            v9 += v659;
            v7 += 8 * v658;
            v55 = v661;
            v56 = &v661[8 * v657];
            v57 = v639;
            if (v56 < v656)
            {
              v57 = 0;
            }

            v58 = &v56[8 * v57];
            v59 = v25 + 8 * v57 + 8 * v657;
            if (v655)
            {
              v14 += 8 * v657;
            }

            else
            {
              v25 = v59;
              v55 = v58;
              v14 = v58;
            }

            v60 = v662 == 1;
            v661 = v55;
            --v662;
            if (v60)
            {
              return result;
            }

            goto LABEL_27;
          }
        }

        LODWORD(v38) = v41;
LABEL_32:
        v42 = bswap32(*(v14 + 1) | (*v14 << 16));
        v43 = HIWORD(v42);
        v44 = bswap32(*(v14 + 2)) >> 16;
        v45 = HIWORD(v42) * v40 + 0x8000;
        v46 = v42 - ((v42 * v40 + 0x8000 + ((v42 * v40 + 0x8000) >> 16)) >> 16);
        v47 = v43 - ((v45 + HIWORD(v45)) >> 16);
        v48 = v44 - ((v44 * v40 + 0x8000 + ((v44 * v40 + 0x8000) >> 16)) >> 16);
        v49 = __rev16(*(v7 + 3));
        if (v663)
        {
          v50 = v49;
          if (!*(v7 + 3))
          {
            *v7 = bswap32(v46) >> 16;
            *(v7 + 1) = bswap32(v47) >> 16;
            v51 = bswap32(v48);
LABEL_37:
            *(v7 + 2) = HIWORD(v51);
            *(v7 + 3) = bswap32(v38) >> 16;
            goto LABEL_38;
          }
        }

        else
        {
          v50 = 0xFFFF;
        }

        result = PDAluminosityPDA_15249(((bswap32(*(v7 + 2)) >> 16) << 32) | (v49 << 48) | bswap32(*(v7 + 1)) & 0xFFFF0000 | (bswap32(*v7) >> 16), v50, v46 | (v47 << 16) | (v41 << 48) | (v48 << 32), v38);
        v38 = HIWORD(result);
        v52 = bswap32(result);
        *v7 = HIWORD(v52);
        *(v7 + 1) = v52;
        v51 = bswap32(HIDWORD(result));
        goto LABEL_37;
      }

      v14 = 0;
      v25 = 0;
      v26 = 1;
      v27 = *(result + 68);
LABEL_15:
      v661 = 0;
      v656 = 0;
      v657 = v20 - v3;
      v22 = v13;
      v23 = v27;
      v655 = 1;
      goto LABEL_16;
    }

    v13 = v12 >> 3;
    v14 = (v5 + 8 * (v12 >> 3) * v11 + 8 * v10);
    if (v12 >> 3 != v6)
    {
      v18 = 1;
LABEL_14:
      v27 = 0;
      v3 = v18 * v660;
      v21 = v4 != 0;
      v659 = v8 - v3;
      v658 = v6 - v3;
      v26 = v18;
      v25 = -1;
      v20 = v13;
      goto LABEL_15;
    }

    v15 = (v7 - v14) >> 3;
    if (v15 >= 1)
    {
      if (v15 <= v660)
      {
        v28 = v660 - 1;
        v7 += 8 * v28;
        v14 += 8 * v28;
        v9 += v28;
        v18 = -1;
        goto LABEL_13;
      }

      v16 = *(result + 8) - 1;
      v17 = &v14[8 * v6 * v16];
      if (v7 <= &v17[4 * v660 - 4])
      {
        v7 += 8 * v6 * v16;
        v13 = -v6;
        v9 += v8 * v16;
        v8 = -v8;
        v18 = 1;
        v14 = v17;
        v6 = -v6;
        goto LABEL_14;
      }
    }

    v18 = 1;
LABEL_13:
    v13 = *(result + 28) >> 3;
    goto LABEL_14;
  }

  return result;
}

_WORD *RGBA64_DMplusDAM(_WORD *result, unint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, unsigned int a6)
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

  *result = bswap32(((v6 + 0x8000) >> 16) + v6 + 0x8000);
  result[1] = bswap32(((v7 + 0x8000) >> 16) + v7 + 0x8000);
  result[2] = bswap32(((v8 + 0x8000) >> 16) + v8 + 0x8000);
  result[3] = bswap32(((v9 + 0x8000) >> 16) + v9 + 0x8000);
  return result;
}

_DWORD *RGBA64_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, int a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15253(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 7 || (a2 = malloc_type_malloc(0x38uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD70;
    a2[6] = 0;
    *(a2 + 2) = 1;
    v9 = bswap32(v8);
    *(a2 + 24) = HIWORD(v9);
    if (HIWORD(v8) == 0xFFFF)
    {
      v10 = 0;
    }

    else
    {
      v10 = (a2 + 12);
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v10;
    *(a2 + 25) = v9;
    *(a2 + 26) = bswap32(HIDWORD(v8)) >> 16;
    *(a2 + 27) = __rev16(HIWORD(v8));
  }

  return a2;
}

uint64_t eStateHash(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = *(a1 + 56);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2 + 1;
    do
    {
      v1 = 257 * v1 + v3;
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  return v1;
}

uint64_t eStateEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 44);
  if (v4 != *(a2 + 44))
  {
    return 0;
  }

  result = strcmp(*(a1 + 56), *(a2 + 56));
  if (result)
  {
    return 0;
  }

  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        return *(a1 + 48) == *(a2 + 48);
      }

      else
      {
        return strcmp(*(a1 + 48), *(a2 + 48)) == 0;
      }
    }

    else
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return result;
        }

        v6 = *(a1 + 48);
        v7 = *(a2 + 48);
      }

      else
      {
        v6 = *(a1 + 48);
        v7 = *(a2 + 48);
      }

      return v6 == v7;
    }
  }

  if (v4 <= 5)
  {
    if (v4 != 4)
    {
      return CGStyleEqualToStyle(*(a1 + 48), *(a2 + 48));
    }

    return *(a1 + 48) == *(a2 + 48);
  }

  if (v4 == 6)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  if (v4 == 7)
  {
    return PDFClipMaskEqualToClipMask(*(a1 + 48), *(a2 + 48));
  }

  return result;
}

_DWORD *eStateRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

_BYTE *emitEStateDefinition(_BYTE *result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((result[40] & 1) == 0)
  {
    v9 = result;
    v11 = *(result + 1);
    v10 = *(result + 2);
    if (!v10)
    {
      v10 = PDFXRefTableAddObject(*(v11 + 504));
      *(v9 + 2) = v10;
    }

    PDFDocumentBeginObject(v11, v10, a3, a4, a5, a6, a7, a8);
    PDFDocumentPrintf(*(v9 + 1), "<<", v12, v13, v14, v15, v16, v17, v165);
    PDFDocumentPrintf(*(v9 + 1), "/Type /ExtGState", v18, v19, v20, v21, v22, v23, v166);
    v30 = *(v9 + 11);
    if (v30 <= 3)
    {
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          PDFDocumentPrintf(*(v9 + 1), "/%s %f", v24, v25, v26, v27, v28, v29, *(v9 + 7));
        }

        else
        {
          PDFDocumentPrintf(*(v9 + 1), "/%s /%s", v24, v25, v26, v27, v28, v29, *(v9 + 7));
        }
      }

      else if (v30)
      {
        if (v30 == 1)
        {
          PDFDocumentPrintf(*(v9 + 1), "/%s %d", v24, v25, v26, v27, v28, v29, *(v9 + 7));
        }
      }

      else
      {
        PDFDocumentPrintf(*(v9 + 1), "/%s %b", v24, v25, v26, v27, v28, v29, *(v9 + 7));
      }

      goto LABEL_81;
    }

    if (v30 > 5)
    {
      if (v30 == 6)
      {
        PDFDocumentPrintf(*(v9 + 1), "/%s", v24, v25, v26, v27, v28, v29, *(v9 + 7));
        v81 = *(v9 + 6);
        if (v81)
        {
          v82 = v81[13];
          v83 = *(v9 + 1);
          v84 = *(v83 + 400);
          if (v84 || (v84 = PDFFormSetCreate(*(v9 + 1)), (*(v83 + 400) = v84) != 0))
          {
            if (!*(v84 + 1))
            {
              *(v84 + 1) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callbacks_12648);
            }

            value = 0;
            v91 = *v84;
            v92 = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040E28F707EuLL);
            __CFSetLastAllocationEventName();
            if (v92)
            {
              *v92 = 1;
              v92[1] = v91;
              v92[2] = PDFContentStreamCreate(v91, 0);
              *(v92 + 6) = 1;
              CFRetain(v81);
              v92[4] = v81;
              v92[8] = 0;
              v92[9] = 0;
              v92[10] = -1;
            }

            if (!CFSetGetValueIfPresent(*(v84 + 1), v92, &value))
            {
              v93 = (*(v84 + 6) + 1);
              *(v84 + 6) = v93;
              if (*(v92 + 6) == 1)
              {
                v94 = "Sm";
              }

              else
              {
                v94 = "Fm";
              }

              snprintf_l(v92 + 40, 0x10uLL, 0, "%s%zu", v94, v93);
              CFSetAddValue(*(v84 + 1), v92);
              value = v92;
            }

            PDFFormRelease(v92);
            v95 = *(v84 + 2);
            if (!v95)
            {
              v95 = CGOrderedSetCreate();
              *(v84 + 2) = v95;
            }

            CGOrderedSetAddValue(v95, value);
            v84 = value;
          }

          PDFDocumentPrintf(*(v9 + 1), "<<", v85, v86, v87, v88, v89, v90, v167);
          v101 = *(v84 + 2);
          if (v101)
          {
            v102 = *(v101 + 8);
          }

          else
          {
            v102 = 0;
          }

          PDFDocumentPrintReference(*(v9 + 1), "/G %R", v102, v96, v97, v98, v99, v100);
          v109 = *(v9 + 1);
          if (v82)
          {
            PDFDocumentPrintf(v109, "/S /Luminosity", v103, v104, v105, v106, v107, v108, v171);
            Components = CGColorGetComponents(v82);
            if ((v82 & 0x8000000000000000) != 0)
            {
              ColorSpace = CGTaggedColorGetColorSpace(v82, v110, v111, v112, v113, v114, v115, v116);
            }

            else
            {
              ColorSpace = *(v82 + 24);
            }

            if (ColorSpace)
            {
              v120 = *(*(ColorSpace + 3) + 48);
              PDFDocumentPrintf(*(v9 + 1), "/BC [", v111, v112, v113, v114, v115, v116, v172);
              for (; v120; --v120)
              {
                v121 = *Components++;
                PDFDocumentPrintf(*(v9 + 1), "%f", v103, v104, v105, v106, v107, v108, v121);
              }
            }

            else
            {
              PDFDocumentPrintf(*(v9 + 1), "/BC [", v111, v112, v113, v114, v115, v116, v172);
            }

            v109 = *(v9 + 1);
            v119 = "]";
          }

          else
          {
            v119 = "/S /Alpha";
          }

          PDFDocumentPrintf(v109, v119, v103, v104, v105, v106, v107, v108, v171);
          v122 = *(v9 + 6);
          if (!v122)
          {
            goto LABEL_79;
          }

          v123 = *(v122 + 112);
          if (!v123)
          {
            goto LABEL_79;
          }

          v124 = *(v9 + 1);
          if (*(v123 + 72) != evaluate_identity)
          {
            v125 = PDFDocumentAddFunction(v124, v123);
            PDFDocumentPrintReference(*(v9 + 1), "/TR %R", v125[6], v126, v127, v128, v129, v130);
LABEL_79:
            v79 = *(v9 + 1);
            v80 = ">>";
            goto LABEL_80;
          }

          v157 = "/TR /Identity";
LABEL_78:
          PDFDocumentPrintf(v124, v157, v31, v32, v33, v34, v35, v36, v167);
          goto LABEL_79;
        }

        goto LABEL_48;
      }

      if (v30 != 7)
      {
LABEL_81:
        PDFDocumentPrintf(*(v9 + 1), ">>", v24, v25, v26, v27, v28, v29, v167);
        result = PDFDocumentEndObject(*(v9 + 1), v158, v159, v160, v161, v162, v163, v164);
        v9[40] = 1;
        goto LABEL_82;
      }

      PDFDocumentPrintf(*(v9 + 1), "/%s", v24, v25, v26, v27, v28, v29, *(v9 + 7));
      v74 = *(v9 + 6);
      v75 = *(v9 + 1);
      if (!v74)
      {
        v80 = "/None";
        v79 = *(v9 + 1);
        goto LABEL_80;
      }

      v76 = *(v74 + 16);
      if (!v76)
      {
        v76 = PDFXRefTableAddObject(*(*(v74 + 8) + 504));
        *(v74 + 16) = v76;
      }

      v77 = v75;
    }

    else
    {
      if (v30 != 4)
      {
        PDFDocumentPrintf(*(v9 + 1), "/%s", v24, v25, v26, v27, v28, v29, *(v9 + 7));
        v37 = *(v9 + 6);
        if (v37)
        {
          v38 = *(v37 + 64);
          v39 = v38 * __sincos_stret((*(v37 + 48) + -180.0) * 3.14159265 / 180.0).__cosval;
          PDFDocumentPrintf(*(v9 + 1), "<<", v40, v41, v42, v43, v44, v45, v167);
          PDFDocumentPrintf(*(v9 + 1), "/Type /Style", v46, v47, v48, v49, v50, v51, v168);
          PDFDocumentPrintf(*(v9 + 1), "/Subtype /Shadow", v52, v53, v54, v55, v56, v57, v169);
          PDFDocumentPrintf(*(v9 + 1), "/Offset [ %f %f ]", v58, v59, v60, v61, v62, v63, COERCE__INT64(v39));
          if (*(v37 + 72) != 0.0)
          {
            PDFDocumentPrintf(*(v9 + 1), "/Radius %f", v31, v32, v33, v34, v35, v36, *(v37 + 72));
          }

          v64 = *(v9 + 6);
          if (!v64)
          {
            goto LABEL_79;
          }

          v65 = *(v64 + 24);
          if (!v65)
          {
            goto LABEL_79;
          }

          PDFDocumentPrintf(*(v9 + 1), "/ColorSpace", v31, v32, v33, v34, v35, v36, v167);
          if ((v65 & 0x8000000000000000) != 0)
          {
            v73 = CGTaggedColorGetColorSpace(v65, v66, v67, v68, v69, v70, v71, v72);
          }

          else
          {
            v73 = *(v65 + 24);
          }

          v131 = PDFDocumentResolveColorSpace(*(v9 + 1), v73);
          v132 = PDFDocumentAddColorSpace(*(v9 + 1), v131);
          PDFColorSpaceEmitReference(v132, v133, v134, v135, v136, v137, v138, v139);
          PDFDocumentPrintf(*(v9 + 1), "/Color [", v140, v141, v142, v143, v144, v145, v170);
          if ((v65 & 0x8000000000000000) != 0)
          {
            NumberOfComponents = CGTaggedColorGetNumberOfComponents(v65, v146, v147, v148, v149, v150, v151, v152);
          }

          else
          {
            NumberOfComponents = *(v65 + 56);
          }

          v154 = CGColorGetComponents(v65);
          if (NumberOfComponents)
          {
            v155 = v154;
            do
            {
              v156 = *v155++;
              PDFDocumentPrintf(*(v9 + 1), "%f", v31, v32, v33, v34, v35, v36, v156);
              --NumberOfComponents;
            }

            while (NumberOfComponents);
          }

          v124 = *(v9 + 1);
          v157 = "]";
          goto LABEL_78;
        }

LABEL_48:
        v79 = *(v9 + 1);
        v80 = "/None";
        goto LABEL_80;
      }

      PDFDocumentPrintf(*(v9 + 1), "/%s", v24, v25, v26, v27, v28, v29, *(v9 + 7));
      v78 = *(v9 + 6);
      if (v78)
      {
        v79 = *(v9 + 1);
        if (*(v78 + 72) == evaluate_identity)
        {
          v80 = "/Identity";
LABEL_80:
          PDFDocumentPrintf(v79, v80, v31, v32, v33, v34, v35, v36, v167);
          goto LABEL_81;
        }
      }

      else
      {
        v79 = *(v9 + 1);
      }

      v76 = *(PDFDocumentAddFunction(v79, v78) + 6);
      v77 = *(v9 + 1);
    }

    PDFDocumentPrintReference(v77, "%R", v76, v32, v33, v34, v35, v36);
    goto LABEL_81;
  }

LABEL_82:
  *a2 = 1;
  return result;
}

char *aa_rectat(uint64_t a1, float32x2_t a2, float32_t a3, float a4, float a5, float64x2_t a6)
{
  v50 = *MEMORY[0x1E69E9840];
  a6.f64[0] = *(a1 + 168);
  a2.f32[1] = a3;
  v44 = vcvtq_f64_f32(a2);
  v45 = a6;
  v7 = a4;
  v8 = a5;
  result = aa_close(a1);
  v10 = *(a1 + 176);
  ++*(a1 + 180);
  v11.f64[0] = 0.0;
  v12 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vceqq_f64(v45, v11)).i64[0], 0), vmulq_n_f64(v44, v45.f64[0]), v44);
  v13 = v45.f64[0] * v7;
  v14 = v45.f64[0] * v8;
  if (v45.f64[0] == 0.0)
  {
    v14 = v8;
    v13 = v7;
  }

  if ((v10 & 0x30000) != 0)
  {
    v16 = *(a1 + 64);
    v15 = *(a1 + 72);
    v18 = *(a1 + 80);
    v17 = *(a1 + 88);
    v19 = vdupq_n_s64(0x430C6BF526340000uLL);
    v12 = vbslq_s8(vcgtq_f64(v19, vabsq_f64(v12)), v12, vbslq_s8(vcgtzq_f64(v12), v19, vdupq_n_s64(0xC30C6BF526340000)));
    *(a1 + 32) = v12;
    *(a1 + 48) = v12;
    v20 = (v12.f64[0] > v18) | (4 * (v12.f64[0] < v16));
    v21 = v12.f64[1];
    v22 = (8 * (v12.f64[1] < v15)) | (2 * (v12.f64[1] > v17));
    if (v22)
    {
      v23 = v20 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = 16;
    }

    v25 = v20 | v22 | v24;
    if (v25)
    {
      if (v12.f64[0] <= v18)
      {
        v26 = v12.f64[0];
      }

      else
      {
        v26 = v18;
      }

      if (v12.f64[0] < v16)
      {
        v12.f64[0] = v16;
      }

      else
      {
        v12.f64[0] = v26;
      }

      if (v12.f64[1] < v15)
      {
        v21 = v15;
      }

      else if (v12.f64[1] > v17)
      {
        v21 = v17;
      }
    }

    *(a1 + 176) = v10 & 0xFFFF0000 | (v25 << 8) | v25;
    v28 = fabs(v13);
    v29 = -1.0e15;
    if (v13 <= 0.0)
    {
      v30 = -1.0e15;
    }

    else
    {
      v30 = 1.0e15;
    }

    if (v28 >= 1.0e15)
    {
      v13 = v30;
    }

    v31 = fabs(v14);
    if (v14 > 0.0)
    {
      v29 = 1.0e15;
    }

    if (v31 >= 1.0e15)
    {
      v14 = v29;
    }

    v32 = (v13 > v18) | (4 * (v13 < v16));
    v33 = (8 * (v14 < v15)) | (2 * (v14 > v17));
    if (v33)
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = 16;
    }

    v36 = v32 | v33 | v35;
    if (v36)
    {
      if (v13 <= v18)
      {
        v18 = v13;
      }

      if (v13 < v16)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v14 > v17)
      {
        v37 = v17;
      }

      else
      {
        v37 = v14;
      }

      if (v14 >= v15)
      {
        v14 = v37;
      }

      else
      {
        v14 = v15;
      }
    }

    v27 = (v36 & v25 & 0xF) != 0;
  }

  else
  {
    v27 = 0;
    *(a1 + 32) = v12;
    *(a1 + 48) = v12;
    *(a1 + 176) = v10 & 0xFFFC0000;
    v21 = v12.f64[1];
  }

  v38 = *(a1 + 160);
  v39 = *(a1 + 128);
  v40 = *(a1 + 136);
  v41 = v38 + v39 * v12.f64[0];
  v42 = (v38 + v40 * v21);
  *(a1 + 16) = v41;
  *(a1 + 20) = v42;
  *(a1 + 24) = v41;
  *(a1 + 28) = v42;
  if (!v27 && v41 != (v38 + v39 * v13) && v42 != (v38 + v40 * v14))
  {
    v48 = v41;
    v49 = (v38 + v40 * v21);
    v46[0] = (v38 + v39 * v13);
    v46[1] = v49;
    v46[4] = v41;
    v47 = (v38 + v40 * v14);
    v46[2] = v46[0];
    v46[3] = v47;
    return aa_add_edges(a1, v46, 4);
  }

  return result;
}

uint64_t aa_distribute_clip_edges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 216) = 0;
  v4 = (a1 + 216);
  v5 = *(a1 + 176);
  *(a1 + 224) = 0;
  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (v5 >> 20) & 3;
    v13 = v12 - 1;
    while (1)
    {
      v14 = *(v6 + 3);
      if (v14)
      {
        break;
      }

      v17 = v8;
      v23 = v7;
LABEL_58:
      v6 = *v6;
      v7 = v23;
      v8 = v17;
      if (!v6)
      {
        return v11;
      }
    }

    v15 = 0;
    v16 = v6 + 3;
    while (1)
    {
      if (*(v16 + 22))
      {
        v17 = *(v16 + 6);
        v18 = *(v16 + 7);
        if (a4 >= v17 && v18 >= a3)
        {
          v20 = *(v16 + 4);
          v21 = *(v16 + 5);
          if (*(v16 + 47) == 1)
          {
            if (v18 > a4)
            {
              v21 += (*(v16 + 9) * (a4 - v17)) >> 12;
              v18 = a4;
            }

            if (a3 > v17)
            {
              v20 += (*(v16 + 9) * (a3 - v17)) >> 12;
              v17 = a3;
            }
          }

          else
          {
            v17 = v17 <= a3 ? a3 : v17;
            v18 = v18 >= a4 ? a4 : v18;
          }

          if (v17 < v18)
          {
            if (v12)
            {
              v21 = v20;
              v22 = v17;
              v23 = v18;
            }

            else
            {
              v24 = (4095 - v18);
              v23 = (4095 - v17);
              v22 = v18;
              LODWORD(v18) = v17;
              v17 = v24;
            }

            *(v16 + 10) = v21;
            if (!v9 || v17 < v7 || (v25 = v9, (v17 ^ v7) >= 0x1000))
            {
              if (!v10 || v17 < v8 || (v25 = v10, (v17 ^ v8) >= 0x1000))
              {
                v25 = (a2 + 8 * (v22 >> 12));
              }
            }

            v26 = *v25;
            if (*v25)
            {
              do
              {
                v27 = v26;
                v28 = *(v26 + 5) - v22;
                if (v28)
                {
                  if (v28 * v13 > 0)
                  {
                    goto LABEL_45;
                  }
                }

                else if (!*(v27 + 4))
                {
                  goto LABEL_45;
                }

                v26 = *v27;
                v25 = v27;
              }

              while (*v27);
              v10 = v27;
              v27 = 0;
            }

            else
            {
              v27 = 0;
LABEL_45:
              v10 = v25;
            }

            v16[6] = v27;
            v16[7] = v16;
            *(v16 + 16) = 0;
            *(v16 + 17) = v22;
            *v10 = v16 + 6;
            if (!v9 || v23 < v7 || (v23 ^ v7) >= 0x1000)
            {
              if (v23 < v17 || (v9 = v10, (v23 ^ v17) >= 0x1000))
              {
                v9 = (a2 + 8 * (v18 >> 12));
              }
            }

            v29 = *v9;
            if (*v9)
            {
              do
              {
                v30 = *(v29 + 5) - v18;
                if (!v30)
                {
                  break;
                }

                if (v30 * v13 > 0)
                {
                  break;
                }

                v9 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            v16[9] = v29;
            v16[10] = v16;
            *(v16 + 22) = 1;
            *(v16 + 23) = v18;
            v11 = (v11 + 1);
            *v9 = v16 + 9;
            goto LABEL_27;
          }
        }

        v16[9] = *v4;
        v16[6] = (v16 + 9);
        *v4 = (v16 + 6);
      }

      else
      {
        *v16 = *(a1 + 224);
        *(a1 + 224) = v16;
      }

      v17 = v8;
      v23 = v7;
LABEL_27:
      ++v15;
      v16 += 12;
      v7 = v23;
      v8 = v17;
      if (v15 == v14)
      {
        goto LABEL_58;
      }
    }
  }

  return 0;
}

uint64_t aa_render_shape(uint64_t result, unsigned int a2, void **a3, int a4, int a5, int a6, int a7, int a8, __n128 a9)
{
  v163 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v9 = result;
  v10 = *result;
  v11 = *(result + 4);
  v12 = *(result + 8);
  v13 = *(result + 12);
  if (v12 - *result < 31 || v13 - v11 < 31)
  {
    return 0;
  }

  v15 = *(result + 184);
  if (24 * v15 + 44 < 1)
  {
    return 0;
  }

  v16 = (a4 / 4);
  v17 = *a3;
  if (*a3)
  {
    if (a4 < 36)
    {
      return 0;
    }
  }

  else if (a4 >= 256)
  {
    v16 = v16;
  }

  else
  {
    v16 = 64;
  }

  v18 = v10 >> 12;
  v19 = (v12 + 4095) >> 12;
  v20 = v11 >> 12;
  v21 = (v13 + 4095) >> 12;
  v160 = a2;
  if ((a2 & 4) == 0)
  {
    v152 = a3;
    v157 = 0;
    v144 = 0;
    v22 = v11 >> 12;
    v23 = (v13 + 4095) >> 12;
    goto LABEL_15;
  }

  result = 0;
  if (a7 > a5)
  {
    v152 = a3;
    if (a8 > a6)
    {
      result = 0;
      if (v20 <= a6)
      {
        v22 = a6;
      }

      else
      {
        v22 = v11 >> 12;
      }

      if (v20 >= a6)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

      if (v21 >= a8)
      {
        v23 = a8;
      }

      else
      {
        v23 = (v13 + 4095) >> 12;
      }

      v30 = v18 - a5;
      v29 = v18 < a5;
      if (v18 <= a5)
      {
        v18 = a5;
      }

      v31 = !v29;
      v32 = v28 - v31 - (a8 >= v21);
      v33 = v19 <= a7;
      if (v19 >= a7)
      {
        v19 = a7;
      }

      v34 = v160;
      if (v32 == v33)
      {
        v34 = v160 & 0xFFFFFFFB;
      }

      v160 = v34;
      if (v23 > v22 && v19 > v18)
      {
        v144 = (a8 - v21) & ~((a8 - v21) >> 31);
        v157 = v30 & ~(v30 >> 31);
LABEL_15:
        if (v15 == 2 && *(v9 + 188) == 2)
        {
          v24 = (v10 + 15) >> 12;
          v25 = (v12 + 4080) >> 12;
          if ((v160 & 4) != 0)
          {
            result = 0;
            if (v24 <= v18)
            {
              v24 = v18;
            }

            if (v25 >= v19)
            {
              v25 = v19;
            }

            if (v23 <= v22 || v25 <= v24)
            {
              return result;
            }

            v20 = v22;
            v21 = v23;
          }

          if (v17 || (result = malloc_type_realloc(0, (4 * v16 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL), (v17 = result) != 0))
          {
            *v17 = 0x280000000;
            v26 = v23 + v144;
            *(v17 + 2) = v23 + v144 - v21;
            *(v17 + 3) = 4;
            v27 = v157 - v18 + v25;
            *(v17 + 4) = v157 - v18 + v24;
            *(v17 + 5) = v27;
            *(v17 + 6) = v26 - v20;
            *(v17 + 28) = 0x7FFFFFFF00000002;
            *v152 = v17;
            return 36;
          }

          return result;
        }

        v161 = v19;
        v35 = v23 - v22;
        if (v23 - v22 > 1015)
        {
          v36 = 8 * (v35 + 16);
          v38 = malloc_type_malloc(v36, 0x80040B8603338uLL);
          v143 = v38;
        }

        else
        {
          v36 = 8 * (v23 - v22 + 16);
          MEMORY[0x1EEE9AC00](result, a9);
          v38 = &v143 - v37;
          bzero(&v143 - v37, v36);
          v143 = 0;
        }

        bzero(v38, v36);
        v39 = v38 + 32;
        v40 = &v38[-8 * v22 + 32];
        v41 = v160;
        *(v9 + 176) = *(v9 + 176) & 0xFC0FFFFF | ((v160 & 1) << 25);
        v42 = v22 << 12;
        if ((v41 & 4) != 0)
        {
          v43 = aa_distribute_clip_edges(v9, v40, (v22 << 12), (v23 << 12));
        }

        else
        {
          v43 = aa_distribute_edges(v9, v40);
        }

        v44 = v144;
        v45 = v161;
        if (!v43 || !v17 && (v46 = malloc_type_realloc(0, (4 * v16 + 511) & 0xFFFFFFFFFFFFFE00, 0x9C99BB6EuLL), v45 = v161, (v17 = v46) == 0))
        {
LABEL_250:
          result = v143;
          if (!v143)
          {
            return result;
          }

          free(v143);
          return 0;
        }

        *(v9 + 200) = 0;
        v151 = (v9 + 200);
        *(v9 + 208) = 0;
        v145 = &v39[8 * v35];
        v47 = *v145;
        if (*v145)
        {
          v48 = v160;
        }

        else
        {
          v48 = v160;
          v49 = v145;
          do
          {
            v50 = *(v49 - 1);
            v49 -= 8;
            v47 = v50;
            ++v44;
          }

          while (!v50);
          v145 = v49;
        }

        v51 = *(v47 + 5);
        v52 = v51 & 0xFFFFF000;
        if (v51 == v52)
        {
          do
          {
            v53 = v47;
            v47 = *v47;
          }

          while (v47);
          v144 = v44;
          v54 = v145;
          v55 = v145 - 8;
          *v53 = *(v145 - 1);
          *v55 = *v54;
          *v54 = 0;
          v52 = (v51 - 4096);
          v145 = v55;
        }

        else
        {
          v144 = v44 - 1;
        }

        *v17 = 0x280000000;
        v56 = (v17 + 8);
        if (v51 < v22 << 12)
        {
          goto LABEL_70;
        }

        v148 = v9;
        v57 = v17 + 4;
        v58 = 1;
        v59 = v16;
        v60 = v51;
        v147 = v18;
        v146 = v40;
        v149 = v22 << 12;
LABEL_74:
        v61 = v60;
        v60 = v52;
        if (v61 == v42)
        {
          if (*v57 != 2)
          {
            *v56 = v144;
            v56[1] = 2;
            v56 += 2;
          }

          goto LABEL_70;
        }

        v158 = v61;
        v62 = *v145;
        if (*v145)
        {
          *v145 = *v62;
          *v62 = 0;
        }

        else if (!v58)
        {
          goto LABEL_246;
        }

        v156 = v57;
        v63 = 0;
        v56[1] = 2;
        v162 = v56 + 1;
        *v56 = v144;
        v56 += 2;
        v64 = v151;
        v150 = v52;
LABEL_79:
        v65 = *v64;
        if (!*v64)
        {
          v58 = 0;
          v68 = 4096;
          goto LABEL_174;
        }

        v66 = 0;
        v58 = 0;
        v67 = 4096;
        v68 = 4096;
        v153 = v62;
LABEL_81:
        v69 = *(v65 + 47);
        if (v69 == 1)
        {
          v70 = *(v65 + 8);
          if (v70 < 0)
          {
            v70 = -v70;
          }

          if (v70 >= 0x1000)
          {
            v71 = 4096;
          }

          else
          {
            v71 = v70;
          }
        }

        else
        {
          v71 = 4096;
        }

        v72 = *(v65 + 46);
        v73 = *(v65 + 10);
        if (v72 == 1)
        {
          v66 = (v73 + 15) >> 12;
          goto LABEL_116;
        }

        if (v72 != 2)
        {
          v71 = v67;
          goto LABEL_116;
        }

        v74 = (v73 + 4080) >> 12;
        if (v67 >= v71)
        {
          LODWORD(v67) = v71;
        }

        v71 = (v74 - v66);
        v75 = v71 * v67;
        if (v71 * v67 >= v68)
        {
          v75 = v68;
        }

        if (v71 > 0 && v67 < 4096)
        {
          v68 = v75;
        }

        if ((v48 & 4) != 0)
        {
          if (v74 <= v18 || v66 >= v45)
          {
            goto LABEL_116;
          }

          if (v74 >= v45)
          {
            v74 = v45;
          }

          if (v66 <= v18)
          {
            v66 = v18;
          }
        }

        if (v66 >= v74)
        {
          goto LABEL_116;
        }

        v66 = v66 - v18 + v157;
        v77 = v74 - v18 + v157;
        if (v63 && (v78 = *v63, *v63 >= v66))
        {
          if (v63 == v162 + 2 || (v83 = v162, *(v63 - 2) < v66))
          {
            v84 = v63 - 1;
            v71 = *(v63 - 1);
            if (v71 <= v66 || (*v84 = v66, v71 <= v77))
            {
              if (v78 < v77)
              {
                *v63 = v77;
              }

              goto LABEL_116;
            }

            *v63 = v77;
            v66 = v71;
            v77 = v78;
          }

          else
          {
            do
            {
              v86 = v83[2];
              v83 += 2;
              v85 = v86;
            }

            while (v86 < v66);
            v87 = *(v83 - 1);
            v84 = v83 - 1;
            v71 = v87;
            if (v77 <= v85 && v71 <= v66)
            {
              goto LABEL_116;
            }
          }

          v79 = ((v84 - v162) >> 2) - 1;
        }

        else
        {
          v79 = -1;
        }

        if (((v56 - v17) >> 2) + 5 > v59)
        {
          v154 = v77;
          LODWORD(v155) = v68;
          v159 = v59;
          v80 = v59;
          v81 = (8 * v59 + 511) & 0xFFFFFFFFFFFFFE00;
          if (v17 == *v152)
          {
            v89 = malloc_type_realloc(0, v81, 0x9C99BB6EuLL);
            v82 = v17;
            if (!v89)
            {
LABEL_248:
              if (v82 != *v152)
              {
                malloc_type_realloc(v82, 0, 0x9C99BB6EuLL);
              }

              goto LABEL_250;
            }

            v17 = v89;
            memmove(v89, v82, 4 * v80);
          }

          else
          {
            v82 = v17;
            v17 = malloc_type_realloc(v17, v81, 0x9C99BB6EuLL);
            if (!v17)
            {
              goto LABEL_248;
            }
          }

          v59 = (2 * v159);
          v90 = v162;
          v91 = v156;
          v92 = v156 + v17 - v82;
          if (!v156)
          {
            v92 = 0;
          }

          if (v17 != v82)
          {
            v56 = (v56 + v17 - v82);
            v91 = v92;
          }

          v156 = v91;
          if (v17 != v82)
          {
            v90 = (v162 + v17 - v82);
          }

          v162 = v90;
          if (v17 == v82)
          {
            v17 = v82;
          }

          v18 = v147;
          v45 = v161;
          v62 = v153;
          v77 = v154;
          v68 = v155;
        }

        if ((v79 & 0x80000000) != 0)
        {
          v56[1] = v77;
          v63 = v56 + 1;
          *v56 = v66;
          v56 += 2;
          v48 = v160;
          goto LABEL_116;
        }

        v93 = ((v56 - v162) >> 2) + ~v79;
        v56 = &v162[v79 + 1];
        v94 = &v56[v93];
        if (v93 < 1)
        {
          v48 = v160;
        }

        else
        {
          v48 = v160;
          do
          {
            if (v56[1] >= v66)
            {
              break;
            }

            v56 += 2;
          }

          while (v56 < v94);
        }

        v95 = 0;
        v96 = (v94 - v56) >> 2;
        v98 = *v56;
        v97 = v56[1];
        v99 = v96 != 0;
        v100 = 2;
        v101 = 1;
        v102 = v66;
        v103 = v56;
        while (1)
        {
          if (v99)
          {
            if (v101 && v98 > v102)
            {
              v104 = v98;
              v105 = v95;
LABEL_155:
              if (!v96 || v102 <= v98)
              {
                v105 = v105 ^ 2;
                *v56 = v102;
                --v100;
                v102 = v77;
              }

              goto LABEL_163;
            }

            v106 = v103[2];
            LODWORD(v96) = v96 - 1;
            *v56 = v98;
            if (!v101 && v56 == v103 && (v96 & 1) == 0)
            {
              v56 += v96 + 1;
LABEL_172:
              v63 = v56 - 1;
LABEL_116:
              v58 |= v69;
              v65 = *v65;
              v67 = v71;
              if (!v65)
              {
LABEL_174:
                v109 = v63;
                if (v62)
                {
                  v42 = v149;
                  v60 = v150;
                  v110 = v158;
                  v111 = v146;
                  if (v158 <= v150)
                  {
                    v159 = v59;
                    v155 = v17;
                    v128 = *(v62 + 5);
                    goto LABEL_211;
                  }

                  v110 = *(v62 + 5);
                  if (v158 - v68 <= v110)
                  {
                    v159 = v59;
                    v155 = v17;
                    v128 = v110;
                    if (v110 != v150 || !v58)
                    {
                      goto LABEL_212;
                    }

                    v112 = 0;
                    v158 = v150;
                    v17 = v155;
                    v59 = v159;
                    v48 = v160;
                    goto LABEL_185;
                  }

                  if (v58)
                  {
                    v112 = 0;
                    v158 = (v158 - v68);
                    goto LABEL_185;
                  }

                  v159 = v59;
                  v155 = v17;
                  v128 = v110;
                  v110 = (v158 - v68);
LABEL_211:
                  if (v128 != v110)
                  {
                    v114 = v148;
LABEL_225:
                    v17 = v155;
                    v64 = v151;
                    if (v110 != v60)
                    {
                      v158 = v110;
                      v112 = 1;
                      v59 = v159;
                      v48 = v160;
                      goto LABEL_187;
                    }

                    v118 = *v151;
                    v158 = v60;
                    v59 = v159;
                    v48 = v160;
LABEL_227:
                    v133 = *(v114 + 176);
                    v134 = v62;
                    v135 = v59;
                    aa_ael_mark(v133, v118);
                    v59 = v135;
                    v63 = v109;
                    v62 = v134;
                    v45 = v161;
                    goto LABEL_79;
                  }

LABEL_212:
                  v158 = v110;
                  v114 = v148;
                  v129 = v145;
                  while (1)
                  {
                    v130 = *(v62 + 4);
                    if ((v130 - 2) >= 2)
                    {
                      if (v130 == 1)
                      {
                        v131 = v62;
                        aa_ael_remove(v114, v111, v42, v128, v62[1]);
                        v63 = v109;
                        v45 = v161;
                        v132 = v131[1];
                        *(v132 + 72) = *(v114 + 216);
                        *(v132 + 48) = v132 + 72;
                        *(v114 + 216) = v132 + 48;
                      }

                      else
                      {
                        if (v130)
                        {
                          abort();
                        }

                        aa_ael_insert(v114, v111, v42, v128, v62[1]);
                        v45 = v161;
                        v63 = v109;
                      }
                    }

                    v62 = *v129;
                    if (!*v129)
                    {
                      break;
                    }

                    *v129 = *v62;
                    *v62 = 0;
                    if (*(v62 + 5) != v128)
                    {
                      v110 = v158;
                      goto LABEL_225;
                    }
                  }

                  if (v128 != v60)
                  {
                    v62 = 0;
                    v112 = 1;
                    v158 = v128;
                    v17 = v155;
                    v59 = v159;
                    v48 = v160;
LABEL_186:
                    v64 = v151;
LABEL_187:
                    v115 = *v64;
                    if (*v64)
                    {
                      v116 = 0;
                      v117 = v158;
                      v118 = *v64;
                      do
                      {
                        v119 = v115;
                        if (*(v115 + 47) == 1)
                        {
                          v120 = *(v115 + 9);
                          v121 = *(v115 + 4) + (((v117 - *(v115 + 6)) * v120) >> 12);
                          *(v115 + 10) = v121;
                        }

                        else
                        {
                          LODWORD(v120) = 0;
                          v121 = *(v115 + 10);
                        }

                        v115 = *v115;
                        v122 = v119[1];
                        if (v122)
                        {
                          v123 = *v119;
                          v124 = v119[1];
                          do
                          {
                            v125 = *(v124 + 40);
                            if (v121 > v125 || v121 == v125 && v120 <= *(v124 + 36))
                            {
                              break;
                            }

                            v126 = *(v124 + 8);
                            v119[1] = v126;
                            if (v126)
                            {
                              *v126 = v119;
                              v123 = *v119;
                            }

                            *v124 = v123;
                            if (v123)
                            {
                              *(v123 + 8) = v124;
                            }

                            *(v124 + 8) = v119;
                            *v119 = v124;
                            if (v118 == v124)
                            {
                              v118 = v119;
                            }

                            v123 = v124;
                            v124 = v119[1];
                          }

                          while (v124);
                        }

                        else
                        {
                          v124 = 0;
                        }

                        if (v124 != v122)
                        {
                          ++v116;
                        }
                      }

                      while (v115);
                      v127 = v116 != 0;
                    }

                    else
                    {
                      v118 = 0;
                      v127 = 0;
                    }

                    *v64 = v118;
                    if ((v112 | v127))
                    {
                      goto LABEL_227;
                    }

                    goto LABEL_79;
                  }

                  aa_ael_mark(*(v114 + 176), *(v114 + 200));
                  v48 = v160;
                  v45 = v161;
                  v58 = 1;
                  v17 = v155;
                  v57 = v156;
                  v59 = v159;
                }

                else
                {
                  v42 = v149;
                  v60 = v150;
                  v57 = v156;
                  if (v158 > v150)
                  {
                    LODWORD(v113) = v158 - v68;
                    if (v150 <= v158 - v68)
                    {
                      v113 = v113;
                    }

                    else
                    {
                      v113 = v150;
                    }

                    if (v58)
                    {
                      v158 = v113;
                      v62 = 0;
                      v112 = 0;
LABEL_185:
                      v114 = v148;
                      goto LABEL_186;
                    }

                    v58 = 1;
                  }
                }

                v136 = v162;
                v137 = ((v56 - v162) >> 2) + 1;
                *v162 = v137;
                if (v57)
                {
                  if (v137 == *v57)
                  {
                    if (v137 != 2)
                    {
                      v138 = v162 + 1;
                      v139 = v57 + 1;
                      while (v138 != v56)
                      {
                        v141 = *v138++;
                        v140 = v141;
                        v142 = *v139++;
                        if (v140 != v142)
                        {
                          goto LABEL_245;
                        }
                      }
                    }

                    v56 = v162 - 1;
                  }

                  else
                  {
LABEL_245:
                    v57 = v162;
                  }
                }

                else
                {
                  v57 = v136;
                }

LABEL_246:
                v52 = (v60 - 4096);
                ++v144;
                v145 -= 8;
                if (v60 < v42)
                {
LABEL_70:
                  *v56 = 0x7FFFFFFF;
                  *v152 = v17;
                  if (v143)
                  {
                    free(v143);
                  }

                  return (v56 - v17 + 4);
                }

                goto LABEL_74;
              }

              goto LABEL_81;
            }

            v105 = v95 ^ 1;
            ++v103;
            v104 = v97;
            v97 = v106;
            if (v101)
            {
              goto LABEL_155;
            }
          }

          else
          {
            LODWORD(v96) = 0;
            v105 = v95;
            v104 = v98;
            if (v101)
            {
              goto LABEL_155;
            }
          }

          v100 = 0;
LABEL_163:
          if (v95)
          {
            v107 = v105 == 0;
          }

          else
          {
            v107 = 1;
          }

          v108 = v107;
          v56 += v108;
          v99 = v96 != 0;
          v101 = v100 != 0;
          v98 = v104;
          v95 = v105;
          if (!(v96 | v100))
          {
            goto LABEL_172;
          }
        }
      }
    }
  }

  return result;
}

_DWORD *patternRetain(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

uint64_t patternKeyEqual(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & (*(a1 + 48) == *(a2 + 48));
  }

  else
  {
    return 0;
  }
}

__n128 patternKeyRetain(uint64_t a1, __n128 *a2)
{
  v3 = malloc_type_malloc(0x38uLL, 0x1000040577F94FBuLL);
  v5 = a2[1];
  result = a2[2];
  v6 = *a2;
  v3[3].n128_u64[0] = a2[3].n128_u64[0];
  v3[1] = v5;
  v3[2] = result;
  *v3 = v6;
  return result;
}

void emitPatternDefinition(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    v10 = *(a1 + 24);
    if (*(v10 + 20) != 1 || ((v11 = *(*(v10 + 80) + 20), v12 = v11 > 4, v13 = (1 << v11) & 0x16, !v12) ? (v14 = v13 == 0) : (v14 = 1), v14))
    {
      PDFContentStreamBegin(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8, v145);
      PDFDocumentPrintf(*(a1 + 8), "/Type /Pattern", v18, v19, v20, v21, v22, v23, v146);
      PDFDocumentPrintf(*(a1 + 8), "/PatternType 1", v24, v25, v26, v27, v28, v29, v147);
      v36 = 1;
      if (!*(v10 + 185))
      {
        v36 = 2;
      }

      PDFDocumentPrintf(*(a1 + 8), "/PaintType %d", v30, v31, v32, v33, v34, v35, v36);
      v43 = *(v10 + 152);
      if (v43 <= 2)
      {
        PDFDocumentPrintf(*(a1 + 8), off_1E6E05370[v43], v37, v38, v39, v40, v41, v42, v148);
      }

      v44 = *(v10 + 120);
      v157[0] = *(v10 + 104);
      v157[1] = v44;
      PDFDocumentPrintf(*(a1 + 8), "/BBox %r", v37, v38, v39, v40, v41, v42, v157);
      if (*(*(a1 + 24) + 20) == 1)
      {
        v51 = *(a1 + 8);
        v52 = "/XStep 32767 /YStep 32767";
      }

      else
      {
        v53 = *(v10 + 144);
        PDFDocumentPrintf(*(a1 + 8), "/XStep %f", v45, v46, v47, v48, v49, v50, *(v10 + 136));
        v51 = *(a1 + 8);
        v149 = v53;
        v52 = "/YStep %f";
      }

      PDFDocumentPrintf(v51, v52, v45, v46, v47, v48, v49, v50, v149);
      v60 = *(v10 + 56);
      v61 = *(v10 + 64);
      v62 = *(a1 + 32);
      v63 = *(a1 + 48);
      v64 = *(a1 + 64);
      v65 = vmlaq_n_f64(vmulq_n_f64(v63, *(v10 + 48)), v62, *(v10 + 40));
      v154 = vmlaq_n_f64(vmulq_n_f64(v63, *(v10 + 32)), v62, *(v10 + 24));
      v155 = v65;
      v66 = vaddq_f64(v64, vmlaq_n_f64(vmulq_n_f64(v63, v61), v62, v60));
      v156 = v66;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v154, xmmword_18439C630), vceqq_f64(v65, xmmword_18439C780))))) & 1) != 0 || v66.f64[0] != 0.0 || v66.f64[1] != 0.0)
      {
        PDFDocumentPrintf(*(a1 + 8), "/Matrix %m", v54, v55, v56, v57, v58, v59, &v154);
      }

      v67 = *(a1 + 16);
      if (v67)
      {
        v68 = *(v67 + 112);
      }

      else
      {
        v68 = 0;
      }

      PDFDocumentPrintReference(*(a1 + 8), "/Resources %R", *(v68 + 16), v55, v56, v57, v58, v59);
      PDFContentStreamBeginData(*(a1 + 16), v69, v70, v71, v72, v73, v74, v75, v150);
      PDFDocumentPushContentStream(*(a1 + 8), *(a1 + 16));
      CGPatternDrawInContextDelegate(v10, *(*(a1 + 8) + 16), 0, 0, v76, v77, v78, v79);
      PDFDocumentPopContentStream(*(a1 + 8));
      PDFContentStreamEndData(*(a1 + 16), v80, v81, v82, v83, v84, v85, v86);
      PDFContentStreamEnd(*(a1 + 16));
      PDFResourceSetEmit(v68, v87, v88, v89, v90, v91, v92, v93);
    }

    else
    {
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      if (v16)
      {
        v17 = *(v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      PDFDocumentBeginObject(v15, v17, a3, a4, a5, a6, a7, a8);
      PDFDocumentPrintf(*(a1 + 8), "<<", v94, v95, v96, v97, v98, v99, v145);
      PDFDocumentPrintf(*(a1 + 8), "/Type /Pattern", v100, v101, v102, v103, v104, v105, v151);
      PDFDocumentPrintf(*(a1 + 8), "/PatternType 2", v106, v107, v108, v109, v110, v111, v152);
      v118 = *(v10 + 56);
      v119 = *(v10 + 64);
      v120 = *(a1 + 32);
      v121 = *(a1 + 48);
      v122 = *(a1 + 64);
      v123 = vmlaq_n_f64(vmulq_n_f64(v121, *(v10 + 48)), v120, *(v10 + 40));
      v154 = vmlaq_n_f64(vmulq_n_f64(v121, *(v10 + 32)), v120, *(v10 + 24));
      v155 = v123;
      v124 = vaddq_f64(v122, vmlaq_n_f64(vmulq_n_f64(v121, v119), v120, v118));
      v156 = v124;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v154, xmmword_18439C630), vceqq_f64(v123, xmmword_18439C780))))) & 1) != 0 || v124.f64[0] != 0.0 || v124.f64[1] != 0.0)
      {
        PDFDocumentPrintf(*(a1 + 8), "/Matrix %m", v112, v113, v114, v115, v116, v117, &v154);
      }

      if (*(v10 + 20) == 1)
      {
        v125 = *(v10 + 80);
      }

      else
      {
        v125 = 0;
      }

      v126 = PDFDocumentAddShading(*(a1 + 8), v125);
      PDFDocumentPrintReference(*(a1 + 8), "/Shading %R", v126[3], v127, v128, v129, v130, v131);
      PDFDocumentPrintf(*(a1 + 8), ">>", v132, v133, v134, v135, v136, v137, v153);
      PDFDocumentEndObject(*(a1 + 8), v138, v139, v140, v141, v142, v143, v144);
    }

    *(a1 + 24) = 0;
    CFRelease(v10);
    *(a1 + 96) = 1;
  }

  *a2 = 1;
}

void CGGlyph8BitBitmapSaveAsImage(size_t a1, size_t a2, size_t a3, UInt8 *bytes, char *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = CFDataCreate(0, bytes, a1 + (a2 - 1) * a3);
  v10 = CGDataProviderCreateWithCFData(v9);
  *decode = xmmword_184562A30;
  v11 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  v12 = CGImageCreate(a1, a2, 8uLL, 8uLL, a3, v11, 0, v10, decode, 0, kCGRenderingIntentDefault);
  CGImageWriteToFile(v12, a5);
  if (v9)
  {
    CFRelease(v9);
  }

  CGDataProviderRelease(v10);
  if (v12)
  {
    CFRelease(v12);
  }
}

double aa_path_iterate(uint64_t a1, int a2, double *a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_30;
      }

      v6 = vaddq_f64(*(a1 + 48), vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), a3[1]), *(a1 + 16), *a3));
      v7 = a1;
      v8 = vld1q_dup_f64(v7++);
      v9 = vld1q_dup_f64(v7);
      v10 = vbslq_s8(vcgtq_f64(v8, v6), v8, vbslq_s8(vcgtq_f64(v6, v9), v9, v6));
      v11 = *&v10.i64[1];
      if (*(a1 + 64))
      {
        CGFontAutohintTransformApply();
      }

      v12 = *(a1 + 72);
      *v10.i32 = *v10.i64;
      v13 = v11;

      aa_lineto(v12, *v10.i8, v13);
    }

    else
    {
      v60 = vaddq_f64(*(a1 + 48), vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), a3[1]), *(a1 + 16), *a3));
      v61 = a1;
      v62 = vld1q_dup_f64(v61++);
      v63 = vld1q_dup_f64(v61);
      v64 = vbslq_s8(vcgtq_f64(v62, v60), v62, vbslq_s8(vcgtq_f64(v60, v63), v63, v60));
      v65 = *&v64.i64[1];
      if (*(a1 + 64))
      {
        CGFontAutohintTransformApply();
      }

      v66 = *(a1 + 72);
      v67 = *v64.i64;
      v68 = v65;

      return aa_moveto(v66, v67, v68);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v14 = *(a1 + 16);
        v15 = *(a1 + 32);
        v16 = *(a1 + 48);
        v17 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, a3[1]), v14, *a3));
        v18 = a1;
        v19 = vld1q_dup_f64(v18++);
        v20 = vld1q_dup_f64(v18);
        v21 = vbslq_s8(vcgtq_f64(v19, v17), v19, vbslq_s8(vcgtq_f64(v17, v20), v20, v17));
        v22 = *&v21.i64[1];
        v23 = vaddq_f64(v16, vmlaq_n_f64(vmulq_n_f64(v15, a3[3]), v14, a3[2]));
        v24 = vcgtq_f64(v19, v23);
        v25 = vbslq_s8(vcgtq_f64(v23, v20), v20, v23);
        v26 = vbslq_s8(v24, v19, v25);
        v27 = v26.f64[1];
        if (*(a1 + 64))
        {
          CGFontAutohintTransformApply();
          v70 = v28;
          v22 = v29;
          CGFontAutohintTransformApply();
          v21.i64[0] = v70;
          *&v26.f64[0] = v25.i64[0];
          v27 = v30;
        }

        v31 = *(a1 + 72);
        *v26.f64 = v26.f64[0];

        *v25.i32 = *v21.i64;
        v32 = v22;
        v33 = v27;
        aa_quadto(v31, *v25.i8, v32, v26, v33);
        break;
      case 3:
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a1 + 48);
        v37 = a1;
        v38 = vld1q_dup_f64(v37++);
        v39 = vaddq_f64(v36, vmlaq_n_f64(vmulq_n_f64(v35, a3[1]), v34, *a3));
        v40 = vld1q_dup_f64(v37);
        v41 = vbslq_s8(vcgtq_f64(v38, v39), v38, vbslq_s8(vcgtq_f64(v39, v40), v40, v39));
        v42 = *&v41.i64[1];
        v43 = vaddq_f64(v36, vmlaq_n_f64(vmulq_n_f64(v35, a3[3]), v34, a3[2]));
        v44 = vbslq_s8(vcgtq_f64(v38, v43), v38, vbslq_s8(vcgtq_f64(v43, v40), v40, v43));
        v45 = *&v44.i64[1];
        v46 = vaddq_f64(v36, vmlaq_n_f64(vmulq_n_f64(v35, a3[5]), v34, a3[4]));
        v47 = vcgtq_f64(v38, v46);
        v48 = vcgtq_f64(v46, v40);
        v49 = vbslq_s8(v48, v40, v46);
        v50 = vbslq_s8(v47, v38, v49);
        v51 = *&v50.i64[1];
        if (*(a1 + 64))
        {
          CGFontAutohintTransformApply();
          v69 = v52;
          v42 = v53;
          CGFontAutohintTransformApply();
          v71 = v54;
          v45 = v55;
          CGFontAutohintTransformApply();
          v41.i64[0] = v69;
          v44.i64[0] = v71;
          v50.i64[0] = v49.i64[0];
          v51 = v56;
        }

        v57 = *(a1 + 72);
        *v50.i32 = *v50.i64;

        *v49.i32 = *v41.i64;
        *v48.i32 = *v44.i64;
        v58 = v42;
        *v35.f64 = v45;
        v59 = v51;
        aa_cubeto(v57, *v49.i8, v58, *v48.i8, v35, *v50.i8, v59);
        break;
      case 4:
        v4 = *(a1 + 72);

        aa_close(v4);
        return result;
      default:
LABEL_30:
        abort();
    }
  }

  return result;
}

uint64_t aa_path_begin(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3[2];
    if (v3)
    {
      return v3(a3[1], a2, a3[6]);
    }
  }

  return result;
}

double process_path_element_15304(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_30;
      }

      v6 = vaddq_f64(*(a1 + 48), vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), *(*(a2 + 8) + 8)), *(a1 + 16), **(a2 + 8)));
      v7 = a1;
      v8 = vld1q_dup_f64(v7++);
      v9 = vld1q_dup_f64(v7);
      v10 = vbslq_s8(vcgtq_f64(v8, v6), v8, vbslq_s8(vcgtq_f64(v6, v9), v9, v6));
      v11 = *&v10.i64[1];
      if (*(a1 + 64))
      {
        CGFontAutohintTransformApply();
      }

      v12 = *(a1 + 72);
      *v10.i32 = *v10.i64;
      v13 = v11;

      aa_lineto(v12, *v10.i8, v13);
    }

    else
    {
      v62 = vaddq_f64(*(a1 + 48), vmlaq_n_f64(vmulq_n_f64(*(a1 + 32), *(*(a2 + 8) + 8)), *(a1 + 16), **(a2 + 8)));
      v63 = a1;
      v64 = vld1q_dup_f64(v63++);
      v65 = vld1q_dup_f64(v63);
      v66 = vbslq_s8(vcgtq_f64(v64, v62), v64, vbslq_s8(vcgtq_f64(v62, v65), v65, v62));
      v67 = *&v66.i64[1];
      if (*(a1 + 64))
      {
        CGFontAutohintTransformApply();
      }

      v68 = *(a1 + 72);
      v69 = *v66.i64;
      v70 = v67;

      return aa_moveto(v68, v69, v70);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v14 = *(a2 + 8);
        v15 = *(a1 + 16);
        v16 = *(a1 + 32);
        v17 = *(a1 + 48);
        v18 = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, v14[1]), v15, *v14));
        v19 = a1;
        v20 = vld1q_dup_f64(v19++);
        v21 = vld1q_dup_f64(v19);
        v22 = vbslq_s8(vcgtq_f64(v20, v18), v20, vbslq_s8(vcgtq_f64(v18, v21), v21, v18));
        v23 = *&v22.i64[1];
        v24 = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, v14[3]), v15, v14[2]));
        v25 = vcgtq_f64(v20, v24);
        v26 = vbslq_s8(vcgtq_f64(v24, v21), v21, v24);
        v27 = vbslq_s8(v25, v20, v26);
        v28 = v27.f64[1];
        if (*(a1 + 64))
        {
          CGFontAutohintTransformApply();
          v72 = v29;
          v23 = v30;
          CGFontAutohintTransformApply();
          v22.i64[0] = v72;
          *&v27.f64[0] = v26.i64[0];
          v28 = v31;
        }

        v32 = *(a1 + 72);
        *v27.f64 = v27.f64[0];

        *v26.i32 = *v22.i64;
        v33 = v23;
        v34 = v28;
        aa_quadto(v32, *v26.i8, v33, v27, v34);
        break;
      case 3:
        v35 = *(a2 + 8);
        v36 = *(a1 + 16);
        v37 = *(a1 + 32);
        v38 = *(a1 + 48);
        v39 = a1;
        v40 = vld1q_dup_f64(v39++);
        v41 = vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v35[1]), v36, *v35));
        v42 = vld1q_dup_f64(v39);
        v43 = vbslq_s8(vcgtq_f64(v40, v41), v40, vbslq_s8(vcgtq_f64(v41, v42), v42, v41));
        v44 = *&v43.i64[1];
        v45 = vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v35[3]), v36, v35[2]));
        v46 = vbslq_s8(vcgtq_f64(v40, v45), v40, vbslq_s8(vcgtq_f64(v45, v42), v42, v45));
        v47 = *&v46.i64[1];
        v48 = vaddq_f64(v38, vmlaq_n_f64(vmulq_n_f64(v37, v35[5]), v36, v35[4]));
        v49 = vcgtq_f64(v40, v48);
        v50 = vcgtq_f64(v48, v42);
        v51 = vbslq_s8(v50, v42, v48);
        v52 = vbslq_s8(v49, v40, v51);
        v53 = *&v52.i64[1];
        if (*(a1 + 64))
        {
          CGFontAutohintTransformApply();
          v71 = v54;
          v44 = v55;
          CGFontAutohintTransformApply();
          v73 = v56;
          v47 = v57;
          CGFontAutohintTransformApply();
          v43.i64[0] = v71;
          v46.i64[0] = v73;
          v52.i64[0] = v51.i64[0];
          v53 = v58;
        }

        v59 = *(a1 + 72);
        *v52.i32 = *v52.i64;

        *v51.i32 = *v43.i64;
        *v50.i32 = *v46.i64;
        v60 = v44;
        *v37.f64 = v47;
        v61 = v53;
        aa_cubeto(v59, *v51.i8, v60, *v50.i8, v37, *v52.i8, v61);
        break;
      case 4:
        v4 = *(a1 + 72);

        aa_close(v4);
        return result;
      default:
LABEL_30:
        abort();
    }
  }

  return result;
}