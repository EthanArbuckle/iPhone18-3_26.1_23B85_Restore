uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, int a4)
{
  if (a4 > 94)
  {
    if (a4 == 95)
    {
      v74.i64[0] = 0xC000C000C000CLL;
      v74.i64[1] = 0xC000C000C000CLL;
      v75 = vmovl_u16(*&vpaddq_s16(v74, v74));
      v76 = vpaddq_s32(v75, v75).u64[0];
      v77.i64[0] = v76;
      v77.i64[1] = HIDWORD(v76);
      v78 = v77;
      v79 = vaddvq_s64(v77);
      v80 = 0uLL;
      if (v79 > 0x80)
      {
        v179 = 0uLL;
        v175 = 0uLL;
        v176 = 0uLL;
        v178 = 0uLL;
        v177 = 0uLL;
        v185 = 0uLL;
        v184 = 0uLL;
      }

      else
      {
        v81 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v82 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
        v83.i64[0] = v82.u32[0];
        v83.i64[1] = v82.u32[1];
        v84 = v83;
        v85 = vzip1q_s64(0, v78);
        v86 = 8 * (a3 & 7);
        v87 = v79 + v86;
        v88 = vaddq_s64(v85, vdupq_n_s64(v86));
        v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v88)));
        if (v79 + v86 >= 0x81)
        {
          v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v89);
        }

        v90 = vnegq_s64(v84);
        v91 = vshlq_u64(v89, v90);
        v92 = v87 & 0x3F;
        v93 = (v81 + 8 * (v87 >> 6));
        v94 = vaddq_s64(v85, vdupq_n_s64(v92));
        v95 = v79 + v87;
        v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v94)));
        if (v79 + v92 >= 0x81)
        {
          v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v96);
        }

        v97 = vzip2q_s64(v89, v91);
        v98 = vzip1q_s64(v89, v91);
        v99 = vshlq_u64(v96, v90);
        v100 = vzip2q_s64(v96, v99);
        v101 = vzip1q_s64(v96, v99);
        v102 = v95 & 0x3F;
        v103 = (v81 + 8 * (v95 >> 6));
        v104 = vaddq_s64(v85, vdupq_n_s64(v102));
        v105 = v79 + v95;
        v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v104)));
        if (v79 + v102 >= 0x81)
        {
          v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v106);
        }

        v107 = vuzp1q_s32(v98, v97);
        v108 = vuzp1q_s32(v101, v100);
        v109 = vshlq_u64(v106, v90);
        v110 = vuzp1q_s32(vzip1q_s64(v106, v109), vzip2q_s64(v106, v109));
        v111 = v105 & 0x3F;
        v112 = (v81 + 8 * (v105 >> 6));
        v113 = vaddq_s64(v85, vdupq_n_s64(v111));
        v114 = v79 + v105;
        v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v113)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v113)));
        if (v79 + v111 >= 0x81)
        {
          v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v113)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v113))), v115);
        }

        v116.i64[0] = 0x1000100010001;
        v116.i64[1] = 0x1000100010001;
        v117 = vshrq_n_u32(v107, 0xCuLL);
        v118 = vshrq_n_u32(v108, 0xCuLL);
        v119 = vshrq_n_u32(v110, 0xCuLL);
        v120 = vshlq_u64(v115, v90);
        v121 = vuzp1q_s32(vzip1q_s64(v115, v120), vzip2q_s64(v115, v120));
        v122 = vshrq_n_u32(v121, 0xCuLL);
        v123 = v114 & 0x3F;
        v124 = (v81 + 8 * (v114 >> 6));
        v125 = vaddq_s64(v85, vdupq_n_s64(v123));
        v126 = v79 + v114;
        v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v125)));
        if (v79 + v123 >= 0x81)
        {
          v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
        }

        v128 = vshlq_n_s16(v116, 0xCuLL);
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v130 = vzip2q_s32(v107, v117);
        v131 = vzip1q_s32(v107, v117);
        v132 = vzip2q_s32(v108, v118);
        v133 = vzip1q_s32(v108, v118);
        v134 = vzip2q_s32(v110, v119);
        v135 = vzip1q_s32(v110, v119);
        v136 = vzip2q_s32(v121, v122);
        v137 = vzip1q_s32(v121, v122);
        v138 = vshlq_u64(v127, v90);
        v139 = vuzp1q_s32(vzip1q_s64(v127, v138), vzip2q_s64(v127, v138));
        v140 = vshrq_n_u32(v139, 0xCuLL);
        v141 = vzip2q_s32(v139, v140);
        v142 = vzip1q_s32(v139, v140);
        v143 = (v81 + 8 * (v126 >> 6));
        v144 = vaddq_s64(v85, vdupq_n_s64(v126 & 0x3F));
        v145 = v79 + v126;
        v146 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v144)));
        if (v79 + (v126 & 0x3F) >= 0x81)
        {
          v146 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v146);
        }

        v147 = vaddq_s16(v128, v129);
        v148 = vuzp1q_s16(v131, v130);
        v149 = vuzp1q_s16(v133, v132);
        v150 = vuzp1q_s16(v135, v134);
        v151 = vuzp1q_s16(v137, v136);
        v152 = vuzp1q_s16(v142, v141);
        v153 = vshlq_u64(v146, v90);
        v154 = vuzp1q_s32(vzip1q_s64(v146, v153), vzip2q_s64(v146, v153));
        v155 = vshrq_n_u32(v154, 0xCuLL);
        v156 = vuzp1q_s16(vzip1q_s32(v154, v155), vzip2q_s32(v154, v155));
        v157 = v79 + v145;
        v158 = v145 & 0x3F;
        v159 = vaddq_s64(v85, vdupq_n_s64(v158));
        v160 = (v81 + 8 * (v145 >> 6));
        v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
        if (v79 + v158 >= 0x81)
        {
          v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
        }

        v162 = vandq_s8(v147, v148);
        v163 = vandq_s8(v147, v149);
        v164 = vandq_s8(v147, v150);
        v165 = vandq_s8(v147, v151);
        v166 = vandq_s8(v147, v152);
        v167 = vandq_s8(v147, v156);
        v168 = vshlq_u64(v161, v90);
        v169 = vuzp1q_s32(vzip1q_s64(v161, v168), vzip2q_s64(v161, v168));
        v170 = vshrq_n_u32(v169, 0xCuLL);
        v171 = (v81 + 8 * (v157 >> 6));
        v172 = vaddq_s64(v85, vdupq_n_s64(v157 & 0x3F));
        v173 = vandq_s8(v147, vuzp1q_s16(vzip1q_s32(v169, v170), vzip2q_s32(v169, v170)));
        v174 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v172)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v172)));
        if (v79 + (v157 & 0x3F) >= 0x81)
        {
          v174 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v172)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v172))), v174);
        }

        v175 = vshlq_n_s16(v162, 4uLL);
        v176 = vshlq_n_s16(v163, 4uLL);
        v177 = vshlq_n_s16(v164, 4uLL);
        v178 = vshlq_n_s16(v165, 4uLL);
        v80 = vshlq_n_s16(v166, 4uLL);
        v179 = vshlq_n_s16(v167, 4uLL);
        v180 = vshlq_u64(v174, v90);
        v181 = vuzp1q_s32(vzip1q_s64(v174, v180), vzip2q_s64(v174, v180));
        v182 = vshrq_n_u32(v181, 0xCuLL);
        v183 = vandq_s8(v147, vuzp1q_s16(vzip1q_s32(v181, v182), vzip2q_s32(v181, v182)));
        v184 = vshlq_n_s16(v173, 4uLL);
        v185 = vshlq_n_s16(v183, 4uLL);
      }

      v186 = (a1 + a2);
      *a1 = vzip1q_s64(v175, v176);
      a1[1] = vzip1q_s64(v80, v179);
      v187 = (a1 + 2 * a2);
      *v186 = vzip2q_s64(v175, v176);
      v186[1] = vzip2q_s64(v80, v179);
      *v187 = vzip1q_s64(v177, v178);
      v187[1] = vzip1q_s64(v184, v185);
      v188 = (v187 + a2);
      *v188 = vzip2q_s64(v177, v178);
      v188[1] = vzip2q_s64(v184, v185);
      return 96;
    }

    if (a4 == 127)
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      v13 = a3[4];
      v14 = a3[5];
      v15 = a3[6];
      v16 = a3[7];
      v17 = (a1 + a2);
      *a1 = vzip1q_s64(*a3, v10);
      a1[1] = vzip1q_s64(v13, v14);
      v18 = (a1 + 2 * a2);
      *v17 = vzip2q_s64(v9, v10);
      v17[1] = vzip2q_s64(v13, v14);
      *v18 = vzip1q_s64(v11, v12);
      v18[1] = vzip1q_s64(v15, v16);
      v19 = (v18 + a2);
      *v19 = vzip2q_s64(v11, v12);
      v19[1] = vzip2q_s64(v15, v16);
      return 128;
    }
  }

  else
  {
    if (!a4)
    {
      v8 = 0;
      v70 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      v71 = &a1->i8[a2];
      *v71 = 0u;
      *(v71 + 1) = 0u;
      v72 = &a1->i8[2 * a2];
      *v72 = 0u;
      *(v72 + 1) = 0u;
      v73 = &a1->i8[2 * a2 + a2];
LABEL_120:
      *v73 = v70;
      *(v73 + 1) = v70;
      return v8;
    }

    if (a4 == 2)
    {
      v4 = vdupq_n_s32((a3->i32[0] << 8) & 0xFFF00000 | (16 * (a3->i32[0] & 0xFFF)));
      *a1 = v4;
      a1[1] = v4;
      v5 = &a1->i8[a2];
      *v5 = v4;
      v5[1] = v4;
      v6 = (a1 + 2 * a2);
      *v6 = v4;
      v6[1] = v4;
      v7 = (a1 + 2 * a2 + a2);
      *v7 = v4;
      v7[1] = v4;
      return 3;
    }
  }

  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 18;
  v23 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x2F)
  {
    v23 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v24.i32[0] = v23;
  v24.i32[1] = v23 >> 5;
  v25 = vand_s8(v24, 0x1F0000001FLL);
  v26 = vuzp1_s16(v25, v25);
  v27.i32[0] = v23 >> 10;
  v27.i32[1] = v23 >> 14;
  v28 = vuzp1_s16(vadd_s32(vand_s8(v27, 0xF0000000FLL), 0x100000001), v26);
  v29 = v20 + 42;
  v30 = v22 & 0x3A;
  v31 = (v21 + ((v22 >> 3) & 8));
  v32 = *v31 >> (v22 & 0x3A);
  if (v30 >= 0x29)
  {
    v32 |= v31[1] << -v30;
  }

  v33 = vdupq_lane_s32(v26, 0);
  v34 = vdupq_lane_s32(v28, 0);
  v35 = (8 * (a3 & 7)) | 0x300;
  v36.i64[0] = 0x3000300030003;
  v36.i64[1] = 0x3000300030003;
  v37 = vandq_s8(v33, v36);
  v38 = vbicq_s8(v34, vceqq_s16(v37, v36));
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v39 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v33.i8, 0x4000400040004)))), v36);
  if (vmaxvq_s8(v39) < 1)
  {
    v48 = 0;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v65 = v38;
    v64 = v38;
    v63 = v38;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v62 = v38;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
  }

  else
  {
    v40 = vmovl_u8(*&vpaddq_s8(v39, v39));
    v41 = vmovl_u16(*&vpaddq_s16(v40, v40));
    v42 = vpaddq_s32(v41, v41).u64[0];
    v43.i64[0] = v42;
    v43.i64[1] = HIDWORD(v42);
    v44 = v43;
    v45 = vaddvq_s64(v43);
    v46 = v29 + v45;
    v47 = v45 <= 0x80 && v35 >= v46;
    v48 = !v47;
    v49 = 0uLL;
    if (v47)
    {
      v50 = v29 & 0x3A;
      v51 = vaddq_s64(vdupq_n_s64(v50), vzip1q_s64(0, v44));
      v52 = (v21 + ((v29 >> 3) & 8));
      v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v50 + v45 >= 0x81)
      {
        v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v49);
      }

      v29 = v46;
    }

    v53 = vzip1_s32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
    v54.i64[0] = v53.u32[0];
    v54.i64[1] = v53.u32[1];
    v55 = vshlq_u64(v49, vnegq_s64(v54));
    v56 = vuzp1q_s32(vzip1q_s64(v49, v55), vzip2q_s64(v49, v55));
    v57 = vshlq_u32(v56, vnegq_s32((*&v40 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
    v56.i64[0] = 0x101010101010101;
    v56.i64[1] = 0x101010101010101;
    *v59.i8 = vand_s8(vadd_s8(*&vshlq_s8(v56, v39), -1), vmovn_s16(vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v39.i8, *v33.i8)))))));
    v59.i64[1] = v59.i64[0];
    *v59.i8 = vqtbl1_s8(v59, 0x703060205010400);
    *v58.i8 = vdup_lane_s16(*v59.i8, 0);
    *v56.i8 = vdup_lane_s16(*v59.i8, 1);
    v60 = vdup_lane_s16(*v59.i8, 2);
    v61 = vdup_lane_s16(*v59.i8, 3);
    v62 = vsubw_s8(v38, *v58.i8);
    v63 = vsubw_s8(v38, *v56.i8);
    v64 = vsubw_s8(v38, v60);
    v65 = vsubw_s8(v38, v61);
    v66 = vmovl_s8(vceqz_s8(*v58.i8));
    v67 = vmovl_s8(vceqz_s8(*v56.i8));
    v68 = vmovl_s8(vceqz_s8(v60));
    v69 = vmovl_s8(vceqz_s8(v61));
  }

  v189.i64[0] = 0x8000800080008;
  v189.i64[1] = 0x8000800080008;
  v190 = 0uLL;
  v191 = vandq_s8(vextq_s8(vtstq_s16(v33, v189), 0, 0xCuLL), v38);
  v192 = vmovl_u16(*&vpaddq_s16(v191, v191));
  v193 = vpaddq_s32(v192, v192).u64[0];
  v194.i64[0] = v193;
  v194.i64[1] = HIDWORD(v193);
  v195 = v194;
  v196 = vaddvq_s64(v194);
  v197 = v29 + v196;
  if (v196 <= 0x80 && v35 >= v197)
  {
    v199 = v29 & 0x3F;
    v200 = vaddq_s64(vdupq_n_s64(v199), vzip1q_s64(0, v195));
    v201 = (v21 + 8 * (v29 >> 6));
    v190 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
    if (v199 + v196 >= 0x81)
    {
      v190 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v190);
    }

    v29 = v197;
  }

  else
  {
    v48 = 1;
  }

  v202 = v33.i8[0] & 3;
  if (v202 == 2)
  {
    v203 = v35 < v29 + 8;
    v204 = v29 + 16;
    if (v35 >= v29 + 8)
    {
      v29 += 8;
    }

    else
    {
      v204 = v29 + 8;
    }

    if (v35 < v204)
    {
      v205 = 1;
    }

    else
    {
      v29 = v204;
      v205 = v203;
    }

    v48 |= v205;
  }

  v206 = 0uLL;
  v207 = vextq_s8(0, v62, 0xCuLL);
  v208 = vmovl_u16(*&vpaddq_s16(v207, v207));
  v209 = vpaddq_s32(v208, v208).u64[0];
  v210.i64[0] = v209;
  v210.i64[1] = HIDWORD(v209);
  v211 = v210;
  v212 = vaddvq_s64(v210);
  v213 = v29 + v212;
  if (v212 <= 0x80 && v35 >= v213)
  {
    v216 = v29 & 0x3F;
    v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v211));
    v218 = (v21 + 8 * (v29 >> 6));
    v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
    if (v216 + v212 >= 0x81)
    {
      v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v215);
    }

    v29 = v213;
  }

  else
  {
    v48 = 1;
    v215 = 0uLL;
  }

  v219 = vmovl_u16(*&vpaddq_s16(v62, v62));
  v220 = vpaddq_s32(v219, v219).u64[0];
  v221.i64[0] = v220;
  v221.i64[1] = HIDWORD(v220);
  v222 = v221;
  v223 = vaddvq_s64(v221);
  v224 = v29 + v223;
  if (v223 <= 0x80 && v35 >= v224)
  {
    v226 = v29 & 0x3F;
    v227 = vaddq_s64(vdupq_n_s64(v226), vzip1q_s64(0, v222));
    v228 = (v21 + 8 * (v29 >> 6));
    v206 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v228, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v227)), vshlq_u64(vdupq_lane_s64(v228->i64[0], 0), vnegq_s64(v227)));
    if (v226 + v223 >= 0x81)
    {
      v206 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v228[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v227)), vshlq_u64(vdupq_laneq_s64(v228[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v227))), v206);
    }

    v29 = v224;
  }

  else
  {
    v48 = 1;
  }

  v229 = vmovl_u16(*&vpaddq_s16(v63, v63));
  v230 = vpaddq_s32(v229, v229).u64[0];
  v231.i64[0] = v230;
  v231.i64[1] = HIDWORD(v230);
  v232 = v231;
  v233 = vaddvq_s64(v231);
  v234 = v29 + v233;
  v235 = 0uLL;
  if (v233 <= 0x80 && v35 >= v234)
  {
    v238 = v29 & 0x3F;
    v239 = vaddq_s64(vdupq_n_s64(v238), vzip1q_s64(0, v232));
    v240 = (v21 + 8 * (v29 >> 6));
    v237 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v240, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v239)), vshlq_u64(vdupq_lane_s64(v240->i64[0], 0), vnegq_s64(v239)));
    if (v238 + v233 >= 0x81)
    {
      v237 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v240[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v239)), vshlq_u64(vdupq_laneq_s64(v240[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v239))), v237);
    }

    v29 = v234;
    if (v233 > 0x80)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v48 = 1;
    v237 = 0uLL;
    if (v233 > 0x80)
    {
      goto LABEL_91;
    }
  }

  v241 = v29 + v233;
  if (v35 >= v29 + v233)
  {
    v242 = v29 & 0x3F;
    v243 = vaddq_s64(vdupq_n_s64(v242), vzip1q_s64(0, v232));
    v244 = (v21 + 8 * (v29 >> 6));
    v235 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v244, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v243)), vshlq_u64(vdupq_lane_s64(v244->i64[0], 0), vnegq_s64(v243)));
    if (v242 + v233 >= 0x81)
    {
      v235 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v244[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v243)), vshlq_u64(vdupq_laneq_s64(v244[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v243))), v235);
    }

    goto LABEL_92;
  }

LABEL_91:
  v48 = 1;
  v241 = v29;
LABEL_92:
  v245 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v246 = vpaddq_s32(v245, v245).u64[0];
  v247.i64[0] = v246;
  v247.i64[1] = HIDWORD(v246);
  v248 = v247;
  v249 = vaddvq_s64(v247);
  v250 = 0uLL;
  if (v249 > 0x80 || (v251 = v241 + v249, v35 < v241 + v249))
  {
    v48 = 1;
    v251 = v241;
    v254 = 0uLL;
  }

  else
  {
    v252 = vaddq_s64(vdupq_n_s64(v241 & 0x3F), vzip1q_s64(0, v248));
    v253 = (v21 + 8 * (v241 >> 6));
    v254 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v253, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v252)), vshlq_u64(vdupq_lane_s64(v253->i64[0], 0), vnegq_s64(v252)));
    if ((v241 & 0x3F) + v249 >= 0x81)
    {
      v254 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v253[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v252)), vshlq_u64(vdupq_laneq_s64(v253[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v252))), v254);
    }
  }

  if (v249 > 0x80 || (v255 = v251 + v249, v35 < v251 + v249))
  {
    v48 = 1;
    v255 = v251;
  }

  else
  {
    v256 = vaddq_s64(vdupq_n_s64(v251 & 0x3F), vzip1q_s64(0, v248));
    v257 = (v21 + 8 * (v251 >> 6));
    v250 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v257, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v256)), vshlq_u64(vdupq_lane_s64(v257->i64[0], 0), vnegq_s64(v256)));
    if ((v251 & 0x3F) + v249 >= 0x81)
    {
      v250 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v257[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v256)), vshlq_u64(vdupq_laneq_s64(v257[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v256))), v250);
    }
  }

  v258 = vmovl_u16(*&vpaddq_s16(v65, v65));
  v259 = vpaddq_s32(v258, v258).u64[0];
  v260.i64[0] = v259;
  v260.i64[1] = HIDWORD(v259);
  v261 = v260;
  v262 = vaddvq_s64(v260);
  if (v262 > 0x80 || (v263 = v255 + v262, v35 < v255 + v262))
  {
    v48 = 1;
    v263 = v255;
    v267 = 0uLL;
  }

  else
  {
    v264 = v255 & 0x3F;
    v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v261));
    v266 = (v21 + 8 * (v255 >> 6));
    v267 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
    if (v264 + v262 >= 0x81)
    {
      v267 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v267);
    }
  }

  if (v262 > 0x80 || v35 < v263 + v262)
  {
    goto LABEL_115;
  }

  v268 = vaddq_s64(vdupq_n_s64(v263 & 0x3F), vzip1q_s64(0, v261));
  v269 = (v21 + 8 * (v263 >> 6));
  v270 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v269, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v268)), vshlq_u64(vdupq_lane_s64(v269->i64[0], 0), vnegq_s64(v268)));
  if ((v263 & 0x3F) + v262 >= 0x81)
  {
    v270 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v269[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v268)), vshlq_u64(vdupq_laneq_s64(v269[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v268))), v270);
  }

  if ((v48 & 1) != 0 || (v8 = a4 + 1, v35 + 8 * v8 - (v263 + v262) - 768 >= 9))
  {
LABEL_115:
    v271 = 0;
    v272 = 0;
    v273 = 8 * (v431 & 7);
    v274 = 12;
    do
    {
      v275 = 64 - v273;
      if (64 - v273 >= v274)
      {
        v275 = v274;
      }

      *&v431[8 * v271] |= ((0xFFFFFFFFFFFFFFFFLL >> v272) & ~(-1 << v275)) << v273;
      v272 += v275;
      v276 = v275 + v273;
      v271 += v276 >> 6;
      v273 = v276 & 0x3F;
      v274 -= v275;
    }

    while (v274);
LABEL_119:
    v8 = 0;
    v277 = &a1->i8[a2];
    v70 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v278 = &a1->i8[2 * a2];
    *v277 = 0u;
    *(v277 + 1) = 0u;
    v73 = &a1->i8[2 * a2 + a2];
    *v278 = 0u;
    *(v278 + 1) = 0u;
    goto LABEL_120;
  }

  if (v202 == 2)
  {
    v280 = 0;
    v281 = 0;
    v282 = 8 * (&v432 & 7);
    v283 = 12;
    do
    {
      v284 = 64 - v282;
      if (64 - v282 >= v283)
      {
        v284 = v283;
      }

      *&v431[8 * v280] |= ((0xFFFFFFFFFFFFFFFFLL >> v281) & ~(-1 << v284)) << v282;
      v281 += v284;
      v285 = v284 + v282;
      v280 += v285 >> 6;
      v282 = v285 & 0x3F;
      v283 -= v284;
    }

    while (v283);
    goto LABEL_119;
  }

  v286 = vzip1_s32(*v192.i8, *&vextq_s8(v192, v192, 8uLL));
  v287 = vzip1_s32(*v229.i8, *&vextq_s8(v229, v229, 8uLL));
  v288 = vzip1_s32(*v245.i8, *&vextq_s8(v245, v245, 8uLL));
  v289 = vzip1_s32(*v258.i8, *&vextq_s8(v258, v258, 8uLL));
  v290.i64[0] = v286.u32[0];
  v290.i64[1] = v286.u32[1];
  v291 = v290;
  v290.i64[0] = v287.u32[0];
  v290.i64[1] = v287.u32[1];
  v292 = v290;
  v290.i64[0] = v288.u32[0];
  v290.i64[1] = v288.u32[1];
  v293 = v290;
  v290.i64[0] = v289.u32[0];
  v290.i64[1] = v289.u32[1];
  v294 = vnegq_s64(v291);
  v295 = vnegq_s64(v292);
  v296 = vnegq_s64(v293);
  v297 = vnegq_s64(v290);
  v298 = vshlq_u64(v190, v294);
  v299 = vshlq_u64(v237, v295);
  v300 = vshlq_u64(v235, v295);
  v301 = vshlq_u64(v254, v296);
  v302 = vshlq_u64(v250, v296);
  v303 = vshlq_u64(v267, v297);
  v304 = vzip2q_s64(v190, v298);
  v305 = vzip1q_s64(v190, v298);
  v306 = vzip2q_s64(v237, v299);
  v307 = vzip1q_s64(v237, v299);
  v308 = vzip2q_s64(v235, v300);
  v309 = vzip1q_s64(v235, v300);
  v310 = vzip2q_s64(v254, v301);
  v311 = vzip1q_s64(v254, v301);
  v312 = vzip2q_s64(v250, v302);
  v313 = vzip1q_s64(v250, v302);
  v314 = vzip2q_s64(v267, v303);
  v315 = vzip1q_s64(v267, v303);
  v316 = vuzp1q_s32(v305, v304);
  v317 = vuzp1q_s32(v307, v306);
  v318 = vuzp1q_s32(v309, v308);
  v305.i64[0] = 0xFFFF0000FFFFLL;
  v305.i64[1] = 0xFFFF0000FFFFLL;
  v319 = vuzp1q_s32(v311, v310);
  v307.i64[0] = 0xFFFF0000FFFFLL;
  v307.i64[1] = 0xFFFF0000FFFFLL;
  v320 = vnegq_s32(vandq_s8(v191, v305));
  v321 = vnegq_s32(vandq_s8(v63, v307));
  v322 = vuzp1q_s32(v313, v312);
  v323 = vuzp1q_s32(v315, v314);
  v324 = vshlq_u32(v316, v320);
  v325 = vshlq_u32(v317, v321);
  v326 = vshlq_u32(v318, v321);
  v321.i64[0] = 0x10001000100010;
  v321.i64[1] = 0x10001000100010;
  v315.i64[0] = 0xF000F000F000FLL;
  v315.i64[1] = 0xF000F000F000FLL;
  v327 = vsubq_s16(v321, v191);
  v328 = vaddq_s16(v191, v315);
  v315.i64[0] = 0x10001000100010;
  v315.i64[1] = 0x10001000100010;
  v329 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v316, v324), vzip2q_s32(v316, v324)), v327);
  v327.i64[0] = 0xF000F000F000FLL;
  v327.i64[1] = 0xF000F000F000FLL;
  v330 = vsubq_s16(v315, v63);
  v331 = vaddq_s16(v63, v327);
  v327.i64[0] = 0xFFFF0000FFFFLL;
  v327.i64[1] = 0xFFFF0000FFFFLL;
  v332 = vnegq_s32(vandq_s8(v64, v327));
  v333 = vshlq_s16(v329, v328);
  v334 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v317, v325), vzip2q_s32(v317, v325)), v330), v331);
  v335 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v318, v326), vzip2q_s32(v318, v326)), v330), v331);
  v336 = vdupq_lane_s32(*v333.i8, 0);
  v337 = vandq_s8(v67, v336);
  v338 = vsubq_s16(v334, v337);
  v339 = vsubq_s16(v335, v337);
  v340 = vshlq_u32(v319, v332);
  v341 = vshlq_u32(v322, v332);
  v342 = vzip2q_s32(v319, v340);
  v343 = vzip1q_s32(v319, v340);
  v344 = vzip2q_s32(v322, v341);
  v345 = vzip1q_s32(v322, v341);
  v341.i64[0] = 0x10001000100010;
  v341.i64[1] = 0x10001000100010;
  v346 = vuzp1q_s16(v345, v344);
  v344.i64[0] = 0xF000F000F000FLL;
  v344.i64[1] = 0xF000F000F000FLL;
  v347 = vsubq_s16(v341, v64);
  v348 = vaddq_s16(v64, v344);
  v344.i64[0] = 0xFFFF0000FFFFLL;
  v344.i64[1] = 0xFFFF0000FFFFLL;
  v349 = vnegq_s32(vandq_s8(v65, v344));
  v350 = vshlq_s16(vshlq_s16(vuzp1q_s16(v343, v342), v347), v348);
  v351 = vshlq_s16(vshlq_s16(v346, v347), v348);
  v352 = vandq_s8(v68, v336);
  v353 = vsubq_s16(v350, v352);
  v354 = vsubq_s16(v351, v352);
  v355 = vshlq_u32(v323, v349);
  v356 = vzip2q_s32(v323, v355);
  v357 = vzip1q_s32(v323, v355);
  v355.i64[0] = 0x10001000100010;
  v355.i64[1] = 0x10001000100010;
  v358 = vuzp1q_s16(v357, v356);
  v356.i64[0] = 0xF000F000F000FLL;
  v356.i64[1] = 0xF000F000F000FLL;
  v359 = vsubq_s16(v355, v65);
  v360 = vaddq_s16(v65, v356);
  v361 = vshlq_u64(v270, v297);
  v362 = vuzp1q_s32(vzip1q_s64(v270, v361), vzip2q_s64(v270, v361));
  v363 = vshlq_u32(v362, v349);
  v364 = vshlq_s16(vshlq_s16(v358, v359), v360);
  v365 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v362, v363), vzip2q_s32(v362, v363)), v359), v360);
  v366 = vandq_s8(v69, v336);
  v367 = vsubq_s16(v364, v366);
  v368 = vsubq_s16(v365, v366);
  v369 = vzip1_s32(*v208.i8, *&vextq_s8(v208, v208, 8uLL));
  v370 = vzip1_s32(*v219.i8, *&vextq_s8(v219, v219, 8uLL));
  v290.i64[0] = v369.u32[0];
  v290.i64[1] = v369.u32[1];
  v371 = v290;
  v290.i64[0] = v370.u32[0];
  v290.i64[1] = v370.u32[1];
  v372 = vshlq_u64(v215, vnegq_s64(v371));
  v373 = vshlq_u64(v206, vnegq_s64(v290));
  v374 = vzip2q_s64(v215, v372);
  v375 = vzip1q_s64(v215, v372);
  v376 = vzip2q_s64(v206, v373);
  v377 = vzip1q_s64(v206, v373);
  v373.i64[0] = 0xFFFF0000FFFFLL;
  v373.i64[1] = 0xFFFF0000FFFFLL;
  v378 = vuzp1q_s32(v375, v374);
  v379 = vuzp1q_s32(v377, v376);
  v380 = vnegq_s32(vandq_s8(v62, v373));
  v381 = vshlq_u32(v378, vnegq_s32(vandq_s8(v207, v373)));
  v382 = vshlq_u32(v379, v380);
  v383 = vzip2q_s32(v378, v381);
  v384 = vzip1q_s32(v378, v381);
  v385 = vzip2q_s32(v379, v382);
  v386 = vzip1q_s32(v379, v382);
  v382.i64[0] = 0x10001000100010;
  v382.i64[1] = 0x10001000100010;
  v387 = vuzp1q_s16(v386, v385);
  v385.i64[0] = 0xF000F000F000FLL;
  v385.i64[1] = 0xF000F000F000FLL;
  v388 = vaddq_s16(vandq_s8(v333, v66), vshlq_s16(vshlq_s16(vuzp1q_s16(v384, v383), vsubq_s16(v382, v207)), vaddq_s16(v207, v385)));
  v389 = vandq_s8(v66, v336);
  v390.i64[0] = 0x1000100010001;
  v390.i64[1] = 0x1000100010001;
  v391 = vceqq_s16(v37, v390);
  v392 = vaddvq_s16(v391);
  v393 = vsubq_s16(v388, v389);
  v394 = vsubq_s16(vshlq_s16(vshlq_s16(v387, vsubq_s16(v382, v62)), vaddq_s16(v62, v385)), v389);
  v391.i16[0] = v32 & 0xFFF;
  v391.i16[1] = (v32 >> 12) & 0xFFF;
  v395 = vdupq_lane_s32(*v391.i8, 0);
  if (v392)
  {
    v396 = vnegq_s16(vandq_s8(v33, v390));
    v397 = v394;
    v397.i32[3] = v393.i32[0];
    v398 = v393;
    v398.i32[0] = v394.i32[3];
    v433.val[0] = vbslq_s8(v396, v398, v393);
    v433.val[1] = vbslq_s8(v396, v397, v394);
    v397.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v397.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v433, xmmword_29D2F0F80), v396), v433.val[0]);
    v434.val[1] = vaddq_s16(v433.val[1], vandq_s8(vqtbl2q_s8(v433, v397), v396));
    v393 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0F90), v396), v434.val[0]);
    v394 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, v397), v396));
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v338.i8, xmmword_29D2F0FA0), v396), v338);
    v434.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v338.i8, xmmword_29D2F0FB0), v396), v339);
    v338 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0FC0), v396), v434.val[0]);
    v339 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, v397), v396));
    v434.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v353.i8, xmmword_29D2F0FD0), v396), v353);
    v434.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v353.i8, xmmword_29D2F0F80), v396), v354);
    v353 = vaddq_s16(vandq_s8(vqtbl2q_s8(v434, v397), v396), v434.val[0]);
    v354 = vaddq_s16(v434.val[1], vandq_s8(vqtbl2q_s8(v434, xmmword_29D2F0FE0), v396));
    v433.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v367.i8, xmmword_29D2F0FF0), v396), v367);
    v433.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v367.i8, xmmword_29D2F0F80), v396), v368);
    v367 = vaddq_s16(vandq_s8(vqtbl2q_s8(v433, v397), v396), v433.val[0]);
    v368 = vaddq_s16(v433.val[1], vandq_s8(vqtbl2q_s8(v433, xmmword_29D2F1000), v396));
  }

  v399 = vaddq_s16(v393, v395);
  v400 = vaddq_s16(v394, v395);
  v401 = vaddq_s16(v338, v395);
  v402 = vaddq_s16(v339, v395);
  v403 = vaddq_s16(v353, v395);
  v404 = vaddq_s16(v354, v395);
  v405 = vaddq_s16(v367, v395);
  v406 = vaddq_s16(v368, v395);
  v407.i64[0] = 0x10001000100010;
  v407.i64[1] = 0x10001000100010;
  v408 = vceqzq_s16(vandq_s8(v33, v407));
  v409 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v399, xmmword_29D2F1080), v408), v399);
  v410 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v400, xmmword_29D2F1080), v408), v400);
  v411 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v401, xmmword_29D2F1080), v408), v401);
  v412 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v402, xmmword_29D2F1080), v408), v402);
  v413 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v403, xmmword_29D2F1080), v408), v403);
  v414 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v404, xmmword_29D2F1080), v408), v404);
  v415 = vbicq_s8(vqtbl1q_s8(v405, xmmword_29D2F1080), v408);
  v416 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v406, xmmword_29D2F1080), v408), v406);
  v417 = vshlq_n_s16(v409, 4uLL);
  v418 = vshlq_n_s16(v410, 4uLL);
  v419 = vshlq_n_s16(v411, 4uLL);
  v420 = vshlq_n_s16(v413, 4uLL);
  v421 = vshlq_n_s16(v414, 4uLL);
  v422 = vzip2q_s64(v417, v418);
  v423.i64[0] = v417.i64[0];
  v423.i64[1] = v418.i64[0];
  v424.i64[0] = v420.i64[0];
  v424.i64[1] = v421.i64[0];
  v425 = vshlq_n_s16(v412, 4uLL);
  v426 = (a1 + a2);
  *a1 = v423;
  a1[1] = v424;
  v427 = (a1 + 2 * a2);
  v428 = vshlq_n_s16(vaddq_s16(v415, v405), 4uLL);
  v429 = vshlq_n_s16(v416, 4uLL);
  *v426 = v422;
  v426[1] = vzip2q_s64(v420, v421);
  v421.i64[0] = v419.i64[0];
  v421.i64[1] = v425.i64[0];
  v405.i64[0] = v428.i64[0];
  v405.i64[1] = v429.i64[0];
  *v427 = v421;
  v427[1] = v405;
  v430 = (v427 + a2);
  *v430 = vzip2q_s64(v419, v425);
  v430[1] = vzip2q_s64(v428, v429);
  return v8;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip2q_s64(*a3, v8);
  v12 = vzip1q_s64(v7, v9);
  v14 = *v6;
  v15 = v6[1];
  v13 = (v6 + a4);
  v16 = vzip2q_s64(v7, v9);
  v17 = v13[1];
  v18 = vzip1q_s64(v14, *v13);
  v19 = vzip2q_s64(v14, *v13);
  v20 = vshrq_n_s16(v10, 4uLL);
  v21 = vshrq_n_s16(v18, 4uLL);
  v22 = vshrq_n_s16(v12, 4uLL);
  v23 = vshrq_n_s16(v16, 4uLL);
  v24 = vshrq_n_s16(vzip1q_s64(v15, v17), 4uLL);
  v25 = vshrq_n_s16(vzip2q_s64(v15, v17), 4uLL);
  v26 = vdupq_lane_s32(*v20.i8, 0);
  *v586 = v20;
  *&v586[16] = vshrq_n_s16(v11, 4uLL);
  v587 = vshrq_n_s16(v19, 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v26), 4uLL), 4uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(*&v586[16], v26), 4uLL), 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v26), 4uLL), 4uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v587, v26), 4uLL), 4uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v26), 4uLL), 4uLL);
  v32 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v26), 4uLL), 4uLL);
  v33 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v26), 4uLL), 4uLL);
  v34 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v26), 4uLL), 4uLL);
  v35 = vqtbl1q_s8(vmaxq_s16(v27, v28), xmmword_29D2F1090);
  v36 = vqtbl1q_s8(vminq_s16(v27, v28), xmmword_29D2F1090);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vpmaxq_s16(v37, v37);
  v40 = vpminq_s16(v38, v38);
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  v42 = vmaxq_s16(v39, v41);
  v43.i64[0] = 0x8000800080008000;
  v43.i64[1] = 0x8000800080008000;
  v44 = vminq_s16(v40, v43);
  v45 = vzip1q_s16(v39, v40);
  v46.i64[0] = 0x10001000100010;
  v46.i64[1] = 0x10001000100010;
  v47 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v45)), vceqzq_s16(v45));
  v48 = vpmaxq_s16(v47, v47);
  v49 = vqtbl1q_s8(vmaxq_s16(v29, v30), xmmword_29D2F1090);
  v50 = vqtbl1q_s8(vminq_s16(v29, v30), xmmword_29D2F1090);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vpmaxq_s16(v51, v51);
  v54 = vpminq_s16(v52, v52);
  v55 = vmaxq_s16(v42, v53);
  v56 = vminq_s16(v44, v54);
  v57 = vzip1q_s16(v53, v54);
  v58 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v57)), vceqzq_s16(v57));
  v59 = vpmaxq_s16(v58, v58);
  v60 = vqtbl1q_s8(vmaxq_s16(v31, v32), xmmword_29D2F1090);
  v61 = vqtbl1q_s8(vminq_s16(v31, v32), xmmword_29D2F1090);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vpmaxq_s16(v62, v62);
  v65 = vpminq_s16(v63, v63);
  v66 = vmaxq_s16(v55, v64);
  v67 = vminq_s16(v56, v65);
  v68 = vzip1q_s16(v64, v65);
  v69 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v68)), vceqzq_s16(v68));
  v70 = vpmaxq_s16(v69, v69);
  v71 = vqtbl1q_s8(vmaxq_s16(v33, v34), xmmword_29D2F1090);
  v72 = vqtbl1q_s8(vminq_s16(v33, v34), xmmword_29D2F1090);
  v73 = vpmaxq_s16(v71, v71);
  v74 = vpminq_s16(v72, v72);
  v75 = vpmaxq_s16(v73, v73);
  v76 = vpminq_s16(v74, v74);
  v77 = vmaxq_s16(v66, v75);
  v78 = vminq_s16(v67, v76);
  v79 = vzip1q_s16(v75, v76);
  v80 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v79)), vceqzq_s16(v79));
  v81 = vpmaxq_s16(v80, v80);
  v82 = vmaxq_s16(vmaxq_s16(v48, v59), vmaxq_s16(v70, v81));
  v83 = vclzq_s16(vsubq_s16(v77, v78));
  v84 = vsubq_s16(v46, v83);
  v85 = vminq_s16(v84, v82);
  if (!vmaxvq_s16(v85))
  {
    v191 = (a3->i32[0] >> 8) & 0xFFFFF000 | (a3->i32[0] >> 4);
    *(a1 + 2) = HIBYTE(a3->i32[0]);
    *a1 = v191;
    v192 = 2;
    result = 3;
    goto LABEL_146;
  }

  v593 = v26;
  v583 = v21;
  v584 = v22;
  v577 = v23;
  v585 = v24;
  v578 = v25;
  v86.i64[0] = 0x4000400040004;
  v86.i64[1] = 0x4000400040004;
  v87.i64[0] = -1;
  v87.i64[1] = -1;
  v88.i64[0] = 0xF000F000F000FLL;
  v88.i64[1] = 0xF000F000F000FLL;
  v89 = vsubq_s16(vshlq_s16(v87, vsubq_s16(v88, v83)), v78);
  v90 = vcgtq_s16(v82, v84);
  v91.i64[0] = 0x8000800080008;
  v91.i64[1] = 0x8000800080008;
  v92.i64[0] = 0x3000300030003;
  v92.i64[1] = 0x3000300030003;
  v573 = vmaxq_s16(vminq_s16(vsubq_s16(v85, v48), v92), 0);
  v575 = vmaxq_s16(vminq_s16(vsubq_s16(v85, v70), v92), 0);
  v579 = vmaxq_s16(vminq_s16(vsubq_s16(v85, v59), v92), 0);
  v581 = vmaxq_s16(vminq_s16(vsubq_s16(v85, v81), v92), 0);
  v93 = vbicq_s8(v86, vceqq_s16(vaddq_s16(v581, v575), vnegq_s16(vaddq_s16(v573, v579))));
  v94 = vorrq_s8(vandq_s8(vceqzq_s16(v85), v92), vandq_s8(v90, v91));
  v592 = v31;
  v95 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 4uLL), 4uLL);
  v96 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 4uLL), 4uLL);
  v594 = v27;
  v97 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 4uLL), 4uLL);
  v98 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 4uLL), 4uLL);
  v99 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v32, vqtbl1q_s8(v32, xmmword_29D2F1080)), 4uLL), 4uLL);
  v100 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v33, vqtbl1q_s8(v33, xmmword_29D2F1080)), 4uLL), 4uLL);
  v101 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v34, vqtbl1q_s8(v34, xmmword_29D2F1080)), 4uLL), 4uLL);
  v102 = vqtbl1q_s8(vmaxq_s16(v95, v96), xmmword_29D2F1090);
  v103 = vqtbl1q_s8(vminq_s16(v95, v96), xmmword_29D2F1090);
  v104 = vpmaxq_s16(v102, v102);
  v105 = vpminq_s16(v103, v103);
  v106 = vpmaxq_s16(v104, v104);
  v107 = vpminq_s16(v105, v105);
  v108 = vmaxq_s16(v106, v41);
  v109 = vminq_s16(v107, v43);
  v110 = vzip1q_s16(v106, v107);
  v111 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v110)), vceqzq_s16(v110));
  v112 = vpmaxq_s16(v111, v111);
  v571 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 4uLL), 4uLL);
  v113 = vqtbl1q_s8(vmaxq_s16(v97, v571), xmmword_29D2F1090);
  v114 = vqtbl1q_s8(vminq_s16(v97, v571), xmmword_29D2F1090);
  v115 = vpmaxq_s16(v113, v113);
  v116 = vpminq_s16(v114, v114);
  v117 = vpmaxq_s16(v115, v115);
  v118 = vpminq_s16(v116, v116);
  v119 = vmaxq_s16(v108, v117);
  v120 = vminq_s16(v109, v118);
  v121 = vzip1q_s16(v117, v118);
  v122 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v121)), vceqzq_s16(v121));
  v123 = vpmaxq_s16(v122, v122);
  v591 = v33;
  v124 = vqtbl1q_s8(vmaxq_s16(v98, v99), xmmword_29D2F1090);
  v125 = vqtbl1q_s8(vminq_s16(v98, v99), xmmword_29D2F1090);
  v126 = vpmaxq_s16(v124, v124);
  v127 = vpminq_s16(v125, v125);
  v128 = vpmaxq_s16(v126, v126);
  v129 = vpminq_s16(v127, v127);
  v130 = vmaxq_s16(v119, v128);
  v131 = vminq_s16(v120, v129);
  v132 = vzip1q_s16(v128, v129);
  v133 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v132)), vceqzq_s16(v132));
  v588 = v34;
  v590 = v32;
  v134 = vpmaxq_s16(v133, v133);
  v135 = vqtbl1q_s8(vmaxq_s16(v100, v101), xmmword_29D2F1090);
  v136 = vqtbl1q_s8(vminq_s16(v100, v101), xmmword_29D2F1090);
  v137 = vpmaxq_s16(v135, v135);
  v138 = vpminq_s16(v136, v136);
  v139 = vpmaxq_s16(v137, v137);
  v140 = vpminq_s16(v138, v138);
  v141 = v30;
  v142 = v85;
  v143 = vmaxq_s16(v130, v139);
  v144 = vminq_s16(v131, v140);
  v145 = vzip1q_s16(v139, v140);
  v146 = vbicq_s8(vsubq_s16(v46, vclsq_s16(v145)), vceqzq_s16(v145));
  v147 = vpmaxq_s16(v146, v146);
  v148 = vmaxq_s16(vmaxq_s16(v112, v123), vmaxq_s16(v134, v147));
  v149 = v28;
  v150 = vclzq_s16(vsubq_s16(v143, v144));
  v151 = vsubq_s16(v46, v150);
  v152 = vcgtq_s16(v148, v151);
  v153 = vminq_s16(v151, v148);
  v151.i64[0] = 0x18001800180018;
  v151.i64[1] = 0x18001800180018;
  v154 = vbslq_s8(v152, v151, v46);
  v155 = vmaxq_s16(vminq_s16(vsubq_s16(v153, v112), v92), 0);
  v156 = vmaxq_s16(vminq_s16(vsubq_s16(v153, v123), v92), 0);
  v157 = vmaxq_s16(vminq_s16(vsubq_s16(v153, v134), v92), 0);
  v158 = vmaxq_s16(vminq_s16(vsubq_s16(v153, v147), v92), 0);
  v159 = vsubq_s16(v153, v155);
  v160 = vsubq_s16(v153, v156);
  v161 = vsubq_s16(v153, v157);
  v162 = vaddq_s16(v155, v156);
  v163 = vsubq_s16(v153, v158);
  v164 = vceqq_s16(vaddq_s16(v158, v157), vnegq_s16(v162));
  v162.i64[0] = 0x4000400040004;
  v162.i64[1] = 0x4000400040004;
  v165 = vbicq_s8(v162, v164);
  v166.i64[0] = 0x7000700070007;
  v166.i64[1] = 0x7000700070007;
  v167 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v153, vceqzq_s16((*&v154 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v159, v166), vshlq_n_s16(vaddq_s16(vaddq_s16(v161, v160), v163), 3uLL));
  v168 = vandq_s8(v89, v90);
  v169 = vorrq_s8(v94, v93);
  v170 = vaddq_s16(vandq_s8(v142, v90), vaddq_s16(v93, v93));
  v171 = vsubq_s16(v142, v573);
  v172 = vsubq_s16(v142, v575);
  v173 = vsubq_s16(v142, v581);
  v174 = vmlaq_s16(v170, v171, v166);
  v175 = vsubq_s16(v142, v579);
  v176 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v174, vshlq_n_s16(vaddq_s16(vaddq_s16(v172, v175), v173), 3uLL)), v167), 0);
  v177 = vaddvq_s16(v176);
  v179 = a5 < 4 || a6 < 2;
  if (v177)
  {
    v180.i64[0] = 0x3000300030003;
    v180.i64[1] = 0x3000300030003;
    v181 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v153), v180), v154), v165);
    v182.i64[0] = 0xF000F000F000FLL;
    v182.i64[1] = 0xF000F000F000FLL;
    v180.i64[0] = -1;
    v180.i64[1] = -1;
    v593 = vbslq_s8(v176, vsubq_s16(v593, vqtbl1q_s8(v593, xmmword_29D2F1080)), v593);
    v594 = vbslq_s8(v176, v95, v594);
    v183 = vbslq_s8(v176, v96, v149);
    v580 = vbslq_s8(v176, v571, v141);
    v582 = vbslq_s8(v176, v97, v29);
    v592 = vbslq_s8(v176, v98, v592);
    v184 = vbslq_s8(v176, v100, v591);
    v171 = vbslq_s8(v176, v159, v171);
    v175 = vbslq_s8(v176, v160, v175);
    v172 = vbslq_s8(v176, v161, v172);
    v173 = vbslq_s8(v176, v163, v173);
    v168 = vbslq_s8(v176, vandq_s8(vsubq_s16(vshlq_s16(v180, vsubq_s16(v182, v150)), v144), v152), v168);
    v576 = vbslq_s8(v176, v153, v142);
    v169 = vbslq_s8(v176, v181, v169);
    v185 = vbslq_s8(v176, v101, v588);
    v186 = vbslq_s8(v176, v99, v590);
    v187 = v183;
    if (v179)
    {
LABEL_10:
      v188 = v576;
      v189 = v592;
      v190 = v580;
      goto LABEL_16;
    }
  }

  else
  {
    v580 = v141;
    v582 = v29;
    v576 = v142;
    v185 = v588;
    v186 = v590;
    v184 = v591;
    v187 = v149;
    if (v179)
    {
      goto LABEL_10;
    }
  }

  v572 = v187;
  v574 = v168;
  v589 = v185;
  v194 = vsubq_s16(*v586, vqtbl2q_s8(*v586, xmmword_29D2F0F80));
  v195 = vsubq_s16(*&v586[16], vqtbl2q_s8(*v586, xmmword_29D2F1030));
  v595.val[0] = v583;
  v595.val[1] = v587;
  v595.val[1].i32[3] = *&v586[28];
  v196 = vsubq_s16(v583, vqtbl2q_s8(v595, xmmword_29D2F0FA0));
  v596.val[0] = v22;
  v596.val[1] = v577;
  v596.val[1].i32[3] = *&v586[28];
  v197 = vsubq_s16(v587, vqtbl2q_s8(v595, xmmword_29D2F1040));
  v198 = vsubq_s16(v22, vqtbl2q_s8(v596, xmmword_29D2F1050));
  v595.val[0] = vsubq_s16(v577, vqtbl2q_s8(v596, xmmword_29D2F0F80));
  v597.val[0] = v585;
  v597.val[1] = v578;
  v597.val[1].i32[3] = *&v586[28];
  v596.val[0] = v195;
  v596.val[0].i32[3] = v194.i32[0];
  v194.i32[0] = v195.i32[3];
  v199.i64[0] = 0x4000400040004;
  v199.i64[1] = 0x4000400040004;
  v200 = vshlq_n_s16(v596.val[0], 4uLL);
  v596.val[0] = vshlq_n_s16(v595.val[0], 4uLL);
  v596.val[1] = vshlq_n_s16(vsubq_s16(v578, vqtbl2q_s8(v597, xmmword_29D2F0F80)), 4uLL);
  v201 = vshrq_n_s16(vshlq_n_s16(v194, 4uLL), 4uLL);
  v202 = vshrq_n_s16(v200, 4uLL);
  v203 = vshrq_n_s16(vshlq_n_s16(v196, 4uLL), 4uLL);
  v204 = v175;
  v205 = vshrq_n_s16(vshlq_n_s16(v197, 4uLL), 4uLL);
  v206 = vshrq_n_s16(vshlq_n_s16(v198, 4uLL), 4uLL);
  v207 = vshrq_n_s16(v596.val[0], 4uLL);
  v208 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v585, vqtbl2q_s8(v597, xmmword_29D2F1060)), 4uLL), 4uLL);
  v209 = vshrq_n_s16(v596.val[1], 4uLL);
  v210 = vqtbl1q_s8(vmaxq_s16(v201, v202), xmmword_29D2F1090);
  v211 = vqtbl1q_s8(vminq_s16(v201, v202), xmmword_29D2F1090);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v214 = vpmaxq_s16(v212, v212);
  v215 = vpminq_s16(v213, v213);
  v196.i64[0] = 0x8000800080008000;
  v196.i64[1] = 0x8000800080008000;
  v216 = vmaxq_s16(v214, v196);
  v197.i64[0] = 0x8000800080008000;
  v197.i64[1] = 0x8000800080008000;
  v217 = vminq_s16(v215, v197);
  v218 = vzip1q_s16(v214, v215);
  v214.i64[0] = 0x10001000100010;
  v214.i64[1] = 0x10001000100010;
  v219 = vbicq_s8(vsubq_s16(v214, vclsq_s16(v218)), vceqzq_s16(v218));
  v596.val[1] = vpmaxq_s16(v219, v219);
  v220 = vqtbl1q_s8(vmaxq_s16(v203, v205), xmmword_29D2F1090);
  v221 = vqtbl1q_s8(vminq_s16(v203, v205), xmmword_29D2F1090);
  v222 = vpmaxq_s16(v220, v220);
  v223 = vpminq_s16(v221, v221);
  v224 = vpmaxq_s16(v222, v222);
  v225 = vpminq_s16(v223, v223);
  v226 = vmaxq_s16(v216, v224);
  v227 = vminq_s16(v217, v225);
  v228 = vzip1q_s16(v224, v225);
  v229 = vbicq_s8(vsubq_s16(v214, vclsq_s16(v228)), vceqzq_s16(v228));
  v597.val[0] = vpmaxq_s16(v229, v229);
  v230 = vqtbl1q_s8(vmaxq_s16(v206, v207), xmmword_29D2F1090);
  v231 = vqtbl1q_s8(vminq_s16(v206, v207), xmmword_29D2F1090);
  v232 = vpmaxq_s16(v230, v230);
  v233 = vpminq_s16(v231, v231);
  v234 = vpmaxq_s16(v232, v232);
  v235 = vpminq_s16(v233, v233);
  v236 = vmaxq_s16(v226, v234);
  v237 = vminq_s16(v227, v235);
  v238 = vzip1q_s16(v234, v235);
  v239 = vbicq_s8(vsubq_s16(v214, vclsq_s16(v238)), vceqzq_s16(v238));
  v240 = vpmaxq_s16(v239, v239);
  v241 = vqtbl1q_s8(vmaxq_s16(v208, v209), xmmword_29D2F1090);
  v242 = vqtbl1q_s8(vminq_s16(v208, v209), xmmword_29D2F1090);
  v243 = vpmaxq_s16(v241, v241);
  v244 = vpminq_s16(v242, v242);
  v245 = vpmaxq_s16(v243, v243);
  v246 = vpminq_s16(v244, v244);
  v247 = vmaxq_s16(v236, v245);
  v248 = vminq_s16(v237, v246);
  v249 = vzip1q_s16(v245, v246);
  v250 = vbicq_s8(vsubq_s16(v214, vclsq_s16(v249)), vceqzq_s16(v249));
  v251 = vpmaxq_s16(v250, v250);
  v252 = vmaxq_s16(vmaxq_s16(v596.val[1], v597.val[0]), vmaxq_s16(v240, v251));
  v253 = vclzq_s16(vsubq_s16(v247, v248));
  v254 = vsubq_s16(v214, v253);
  v255 = vcgtq_s16(v252, v254);
  v256 = vminq_s16(v254, v252);
  v257.i64[0] = 0x3000300030003;
  v257.i64[1] = 0x3000300030003;
  v258 = vmaxq_s16(vminq_s16(vsubq_s16(v256, v596.val[1]), v257), 0);
  v259 = vmaxq_s16(vminq_s16(vsubq_s16(v256, v597.val[0]), v257), 0);
  v260 = v172;
  v261 = v173;
  v262 = vmaxq_s16(vminq_s16(vsubq_s16(v256, v240), v257), 0);
  v595.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v256, v251), v257), 0);
  v263 = vsubq_s16(v256, v258);
  v264 = vsubq_s16(v256, v259);
  v265 = vsubq_s16(v256, v262);
  v266 = vsubq_s16(v256, v595.val[1]);
  v267 = vbicq_s8(v199, vceqq_s16(vaddq_s16(v595.val[1], v262), vnegq_s16(vaddq_s16(v258, v259))));
  v259.i64[0] = 0x7000700070007;
  v259.i64[1] = 0x7000700070007;
  v262.i64[0] = 0x8000800080008;
  v262.i64[1] = 0x8000800080008;
  v268.i64[0] = 0x2000200020002;
  v268.i64[1] = 0x2000200020002;
  v269 = vandq_s8(vceqq_s16(vandq_s8(v169, v257), v268), v214);
  v188 = v576;
  v270 = vaddq_s16(vbicq_s8(v576, vceqzq_s16(vandq_s8(v169, v262))), vandq_s8(vaddq_s16(v169, v169), v262));
  v173 = v261;
  v172 = v260;
  v271 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(v270, v269), v171, v259), vshlq_n_s16(vaddq_s16(vaddq_s16(v260, v204), v173), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v256, v255), vaddq_s16(v267, v267)), v263, v259), vshlq_n_s16(vaddq_s16(vaddq_s16(v265, v264), v266), 3uLL))), 0);
  if (vaddvq_s16(v271))
  {
    v272 = vandq_s8(vceqzq_s16(v256), v268);
    v273.i64[0] = 0x9000900090009;
    v273.i64[1] = 0x9000900090009;
    v274 = vorrq_s8(vorrq_s8(v272, vsubq_s16(vandq_s8(v255, v273), vmvnq_s8(v255))), v267);
    v272.i64[0] = 0xF000F000F000FLL;
    v272.i64[1] = 0xF000F000F000FLL;
    v273.i64[0] = -1;
    v273.i64[1] = -1;
    v275 = vandq_s8(vsubq_s16(vshlq_s16(v273, vsubq_s16(v272, v253)), v248), v255);
    v593.i32[0] = vbslq_s8(v271, vextq_s8(*&v586[16], *&v586[16], 0xCuLL), v593).u32[0];
    v594 = vbslq_s8(v271, v201, v594);
    v187 = vbslq_s8(v271, v202, v572);
    v582 = vbslq_s8(v271, v203, v582);
    v190 = vbslq_s8(v271, v205, v580);
    v189 = vbslq_s8(v271, v206, v592);
    v186 = vbslq_s8(v271, v207, v186);
    v184 = vbslq_s8(v271, v208, v184);
    v185 = vbslq_s8(v271, v209, v589);
    v171 = vbslq_s8(v271, v263, v171);
    v175 = vbslq_s8(v271, v264, v204);
    v172 = vbslq_s8(v271, v265, v260);
    v173 = vbslq_s8(v271, v266, v173);
    v168 = vbslq_s8(v271, v275, v574);
    v188 = vbslq_s8(v271, v256, v576);
    v169 = vbslq_s8(v271, v274, v169);
  }

  else
  {
    v189 = v592;
    v190 = v580;
    v185 = v589;
    v187 = v572;
    v168 = v574;
    v175 = v204;
  }

LABEL_16:
  v276.i64[0] = 0x8000800080008;
  v276.i64[1] = 0x8000800080008;
  v277 = vandq_s8(v169, v276);
  v278.i64[0] = 0x3000300030003;
  v278.i64[1] = 0x3000300030003;
  v279.i64[0] = 0x2000200020002;
  v279.i64[1] = 0x2000200020002;
  v280 = vceqq_s16(vandq_s8(v169, v278), v279);
  v279.i64[0] = 0x10001000100010;
  v279.i64[1] = 0x10001000100010;
  v281 = vandq_s8(v280, v279);
  v279.i64[0] = 0x7000700070007;
  v279.i64[1] = 0x7000700070007;
  v282 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v188, vceqzq_s16(v277)), vandq_s8(vaddq_s16(v169, v169), v276)), v281), v171, v279), vshlq_n_s16(vaddq_s16(vaddq_s16(v172, v175), v173), 3uLL));
  v283 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v284 = 8 * (a1 & 7);
  if ((vpaddq_s16(v282, v282).i16[0] + 49) > 0x2FF)
  {
    if (v284)
    {
      v286 = *v283 & ~(-1 << v284);
    }

    else
    {
      v286 = 0;
    }

    v490.i64[0] = 0xC0000000CLL;
    v490.i64[1] = 0xC0000000CLL;
    v491 = vpaddq_s32(v490, v490);
    v492.i64[0] = v491.u32[0];
    v492.i64[1] = v491.u32[1];
    v493 = v492;
    v492.i64[0] = v491.u32[2];
    v492.i64[1] = v491.u32[3];
    v494 = vzip1q_s64(0, v493);
    v495 = vzip1q_s64(0, v492);
    v496 = vpaddq_s64(v493, v492);
    v497 = v496.i64[1];
    v498 = v496.i64[0];
    v499 = vpaddq_s32(vshlq_u32(vmovl_u16((*v586 & 0xFFF0FFF0FFF0FFFLL)), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16((*v586 & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL))), xmmword_29D2F1490));
    v492.i64[0] = v499.u32[0];
    v492.i64[1] = v499.u32[1];
    v500 = v492;
    v492.i64[0] = v499.u32[2];
    v492.i64[1] = v499.u32[3];
    v501 = vpaddq_s64(vshlq_u64(v500, v494), vshlq_u64(v492, v495));
    v502 = v496.i64[0] + v284;
    v503 = (v501.i64[0] << v284) | v286;
    if (v496.i64[0] + v284 >= 0x40)
    {
      *v283 = v503;
      v503 = v501.i64[0] >> (-8 * (a1 & 7u));
      if (!v284)
      {
        v503 = 0;
      }
    }

    v504 = v501.u64[1];
    v505.i64[0] = 0xF000F000F000F000;
    v505.i64[1] = 0xF000F000F000F000;
    v506 = v503 | (v504 << v502);
    if ((v502 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v502 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v506;
      v507 = v504 >> -(v502 & 0x3F);
      if ((v502 & 0x3F) != 0)
      {
        v506 = v507;
      }

      else
      {
        v506 = 0;
      }
    }

    v508 = v502 + v496.i64[1];
    v509 = vandq_s8(v505, *&v586[16]);
    v510 = vpaddq_s32(vshlq_u32(vmovl_u16(*v509.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v509), xmmword_29D2F1490));
    v511.i64[0] = v510.u32[0];
    v511.i64[1] = v510.u32[1];
    v512 = v511;
    v511.i64[0] = v510.u32[2];
    v511.i64[1] = v510.u32[3];
    v513 = vpaddq_s64(vshlq_u64(v512, v494), vshlq_u64(v511, v495));
    v514 = (v502 + v496.i64[1]) & 0x3F;
    v515 = (v513.i64[0] << (v502 + v496.i8[8])) | v506;
    if ((v496.i64[0] + v514) >= 0x40)
    {
      *(v283 + ((v508 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v515;
      v515 = v513.i64[0] >> -v514;
      if (!v514)
      {
        v515 = 0;
      }
    }

    v516 = v496.i64[0] + v508;
    v517 = v515 | (v513.i64[1] << v516);
    if ((v516 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v516 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v517;
      v517 = v513.i64[1] >> -(v516 & 0x3F);
      if ((v516 & 0x3F) == 0)
      {
        v517 = 0;
      }
    }

    v518 = v516 + v496.i64[1];
    v519 = vandq_s8(v505, v583);
    v520 = vpaddq_s32(vshlq_u32(vmovl_u16(*v519.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v519), xmmword_29D2F1490));
    v521.i64[0] = v520.u32[0];
    v521.i64[1] = v520.u32[1];
    v522 = v521;
    v521.i64[0] = v520.u32[2];
    v521.i64[1] = v520.u32[3];
    v523 = vpaddq_s64(vshlq_u64(v522, v494), vshlq_u64(v521, v495));
    v524 = (v523.i64[0] << v518) | v517;
    if (v496.i64[0] + (v518 & 0x3F) >= 0x40)
    {
      *(v283 + ((v518 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v523.i64[0] >> -(v518 & 0x3F);
      if ((v518 & 0x3F) == 0)
      {
        v524 = 0;
      }
    }

    v525 = v496.i64[0] + v518;
    v526 = v524 | (v523.i64[1] << v525);
    if ((v525 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v526;
      v526 = v523.i64[1] >> -(v525 & 0x3F);
      if ((v525 & 0x3F) == 0)
      {
        v526 = 0;
      }
    }

    v527 = v525 + v496.i64[1];
    v528 = vandq_s8(v505, v587);
    v529 = vpaddq_s32(vshlq_u32(vmovl_u16(*v528.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v528), xmmword_29D2F1490));
    v530.i64[0] = v529.u32[0];
    v530.i64[1] = v529.u32[1];
    v531 = v530;
    v530.i64[0] = v529.u32[2];
    v530.i64[1] = v529.u32[3];
    v532 = vpaddq_s64(vshlq_u64(v531, v494), vshlq_u64(v530, v495));
    v533 = (v532.i64[0] << v527) | v526;
    if (v496.i64[0] + (v527 & 0x3F) >= 0x40)
    {
      *(v283 + ((v527 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v533;
      v533 = v532.i64[0] >> -(v527 & 0x3F);
      if ((v527 & 0x3F) == 0)
      {
        v533 = 0;
      }
    }

    v534 = v496.i64[0] + v527;
    v535 = v533 | (v532.i64[1] << v534);
    if ((v534 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v534 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v535;
      v535 = v532.i64[1] >> -(v534 & 0x3F);
      if ((v534 & 0x3F) == 0)
      {
        v535 = 0;
      }
    }

    v536 = v534 + v496.i64[1];
    v537 = vandq_s8(v505, v584);
    v538 = vpaddq_s32(vshlq_u32(vmovl_u16(*v537.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v537), xmmword_29D2F1490));
    v539.i64[0] = v538.u32[0];
    v539.i64[1] = v538.u32[1];
    v540 = v539;
    v539.i64[0] = v538.u32[2];
    v539.i64[1] = v538.u32[3];
    v541 = vpaddq_s64(vshlq_u64(v540, v494), vshlq_u64(v539, v495));
    v542 = (v541.i64[0] << v536) | v535;
    if (v496.i64[0] + (v536 & 0x3F) >= 0x40)
    {
      *(v283 + ((v536 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v542;
      v542 = v541.i64[0] >> -(v536 & 0x3F);
      if ((v536 & 0x3F) == 0)
      {
        v542 = 0;
      }
    }

    v543 = v496.i64[0] + v536;
    v544 = v542 | (v541.i64[1] << v543);
    if ((v543 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v543 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v544;
      v544 = v541.i64[1] >> -(v543 & 0x3F);
      if ((v543 & 0x3F) == 0)
      {
        v544 = 0;
      }
    }

    v545 = v543 + v496.i64[1];
    v546 = vandq_s8(v505, v577);
    v547 = vpaddq_s32(vshlq_u32(vmovl_u16(*v546.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v546), xmmword_29D2F1490));
    v548.i64[0] = v547.u32[0];
    v548.i64[1] = v547.u32[1];
    v549 = v548;
    v548.i64[0] = v547.u32[2];
    v548.i64[1] = v547.u32[3];
    v550 = vpaddq_s64(vshlq_u64(v549, v494), vshlq_u64(v548, v495));
    v551 = (v550.i64[0] << v545) | v544;
    if (v496.i64[0] + (v545 & 0x3F) >= 0x40)
    {
      *(v283 + ((v545 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v551;
      v551 = v550.i64[0] >> -(v545 & 0x3F);
      if ((v545 & 0x3F) == 0)
      {
        v551 = 0;
      }
    }

    v552 = v496.i64[0] + v545;
    v553 = v551 | (v550.i64[1] << v552);
    if ((v552 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v552 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v553;
      v553 = v550.i64[1] >> -(v552 & 0x3F);
      if ((v552 & 0x3F) == 0)
      {
        v553 = 0;
      }
    }

    v554 = v552 + v496.i64[1];
    v555 = vandq_s8(v505, v585);
    v556 = vpaddq_s32(vshlq_u32(vmovl_u16(*v555.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v555), xmmword_29D2F1490));
    v557.i64[0] = v556.u32[0];
    v557.i64[1] = v556.u32[1];
    v558 = v557;
    v557.i64[0] = v556.u32[2];
    v557.i64[1] = v556.u32[3];
    v559 = vpaddq_s64(vshlq_u64(v558, v494), vshlq_u64(v557, v495));
    v560 = (v559.i64[0] << v554) | v553;
    if (v496.i64[0] + (v554 & 0x3F) >= 0x40)
    {
      *(v283 + ((v554 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v560;
      v560 = v559.i64[0] >> -(v554 & 0x3F);
      if ((v554 & 0x3F) == 0)
      {
        v560 = 0;
      }
    }

    v561 = v496.i64[0] + v554;
    v562 = v560 | (v559.i64[1] << v561);
    if ((v561 & 0x3F) + v496.i64[1] >= 0x40)
    {
      *(v283 + ((v561 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v562;
      v562 = v559.i64[1] >> -(v561 & 0x3F);
      if ((v561 & 0x3F) == 0)
      {
        v562 = 0;
      }
    }

    v563 = v561 + v496.i64[1];
    v564 = vandq_s8(v505, v578);
    v565 = vpaddq_s32(vshlq_u32(vmovl_u16(*v564.i8), xmmword_29D2F1490), vshlq_u32(vmovl_high_u16(v564), xmmword_29D2F1490));
    v566.i64[0] = v565.u32[0];
    v566.i64[1] = v565.u32[1];
    v567 = v566;
    v566.i64[0] = v565.u32[2];
    v566.i64[1] = v565.u32[3];
    v568 = vpaddq_s64(vshlq_u64(v567, v494), vshlq_u64(v566, v495));
    v569 = (v568.i64[0] << v563) | v562;
    if (v498 + (v563 & 0x3F) >= 0x40)
    {
      *(v283 + ((v563 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v569;
      v569 = v568.i64[0] >> -(v563 & 0x3F);
      if ((v563 & 0x3F) == 0)
      {
        v569 = 0;
      }
    }

    v570 = v498 + v563;
    if ((v570 & 0x3F) + v497 >= 0x40)
    {
      *(v283 + ((v570 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v569 | (v568.i64[1] << (v570 & 0x3F));
    }

    v192 = 95;
    result = 96;
  }

  else
  {
    if (v284)
    {
      v285 = *v283 & ~(-1 << v284);
    }

    else
    {
      v285 = 0;
    }

    *a2 = 0;
    v287 = ((v188.i16[0] << 10) + 15360) & 0x3C00;
    if (!v188.i16[0])
    {
      v287 = 0;
    }

    if (v188.i16[1])
    {
      v288 = ((v188.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v288 = 0;
    }

    v289 = v287 | v288 | v169.i8[0] & 0x1F | (32 * (v169.i8[2] & 0x1Fu));
    v290 = v593.i16[0] & 0xFFF | ((v593.i16[1] & 0xFFF) << 12);
    v291 = (v289 << v284) | v285;
    if (v284 >= 0x2E)
    {
      *v283 = v291;
      v291 = v289 >> (-8 * (a1 & 7u));
    }

    v292 = (v284 + 18) & 0x3A;
    v293 = v291 | (v290 << v292);
    if (v292 >= 0x28)
    {
      *(v283 + (((v284 + 18) >> 3) & 8)) = v293;
      v293 = v290 >> -v292;
    }

    v294 = v284 + 42;
    v295 = vsubq_s16(v188, v171);
    v296 = vsubq_s16(v188, v175);
    v297 = vsubq_s16(v188, v172);
    v298 = vsubq_s16(v188, v173);
    *v295.i8 = vqmovn_u16(v295);
    *v296.i8 = vqmovn_u16(v296);
    *v297.i8 = vqmovn_u16(v297);
    *v298.i8 = vqmovn_u16(v298);
    v295.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v295, v296), vzip1q_s8(v297, v298)), vzip1q_s16(vtrn2q_s8(v295, v296), vtrn2q_s8(v297, v298))).u64[0];
    v297.i64[0] = 0x202020202020202;
    v297.i64[1] = 0x202020202020202;
    v299 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v169.i8, 0x4000400040004)))), v297);
    v297.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v297.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v298.i64[0] = -1;
    v298.i64[1] = -1;
    v300 = vandq_s8(vshlq_u8(v298, vorrq_s8(v299, v297)), v295.u64[0]);
    v301 = vmovl_u8(*v299.i8);
    v302 = vpaddq_s16(vshlq_u16(vmovl_u8(*v300.i8), vtrn1q_s16(0, v301)), vmovl_high_u8(v300));
    v303 = vpaddq_s16(v301, vmovl_high_u8(v299));
    v304 = vmovl_u16(*v303.i8);
    v305 = vmovl_high_u16(v303);
    v306 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v304)), vshlq_u32(vmovl_high_u16(v302), vtrn1q_s32(0, v305)));
    v307 = vpaddq_s32(v304, v305);
    v308.i64[0] = v306.u32[0];
    v308.i64[1] = v306.u32[1];
    v309 = v308;
    v308.i64[0] = v306.u32[2];
    v308.i64[1] = v306.u32[3];
    v310 = v308;
    v308.i64[0] = v307.u32[0];
    v308.i64[1] = v307.u32[1];
    v311 = v308;
    v308.i64[0] = v307.u32[2];
    v308.i64[1] = v307.u32[3];
    v312 = vpaddq_s64(vshlq_u64(v309, vzip1q_s64(0, v311)), vshlq_u64(v310, vzip1q_s64(0, v308)));
    v313 = vpaddq_s64(v311, v308);
    v314 = (v284 + 42) & 0x3A;
    v315 = (v312.i64[0] << v314) | v293;
    if ((v313.i64[0] + v314) >= 0x40)
    {
      *(v283 + ((v294 >> 3) & 8)) = v315;
      v315 = v312.i64[0] >> -v314;
    }

    v316 = vceqq_s16(v188, v171);
    v317 = v313.i64[0] + v294;
    v318 = v315 | (v312.i64[1] << v317);
    if ((v317 & 0x3F) + v313.i64[1] >= 0x40)
    {
      *(v283 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v312.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = vandq_s8(v168, v316);
    v320 = v317 + v313.i64[1];
    v321.i64[0] = -1;
    v321.i64[1] = -1;
    v322 = vandq_s8(vextq_s8(vtstq_s16(v277, v277), 0, 0xCuLL), v188);
    v323.i64[0] = 0xF000F000F000FLL;
    v323.i64[1] = 0xF000F000F000FLL;
    v324 = vandq_s8(vshlq_u16(v321, vaddq_s16(v322, v323)), v168);
    v325 = vmovl_u16(*v322.i8);
    v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v324.i8), vtrn1q_s32(0, v325)), vmovl_high_u16(v324));
    v327 = vpaddq_s32(v325, vmovl_high_u16(v322));
    v328.i64[0] = v326.u32[0];
    v328.i64[1] = v326.u32[1];
    v329 = v328;
    v328.i64[0] = v326.u32[2];
    v328.i64[1] = v326.u32[3];
    v330 = v328;
    v328.i64[0] = v327.u32[0];
    v328.i64[1] = v327.u32[1];
    v331 = v328;
    v328.i64[0] = v327.u32[2];
    v328.i64[1] = v327.u32[3];
    v332 = vpaddq_s64(vshlq_u64(v329, vzip1q_s64(0, v331)), vshlq_u64(v330, vzip1q_s64(0, v328)));
    v333 = vpaddq_s64(v331, v328);
    v334 = (v332.i64[0] << v320) | v318;
    if (v333.i64[0] + (v320 & 0x3F) >= 0x40)
    {
      *(v283 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v320 & 0x3F);
      if ((v320 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vaddq_s16(v319, v594);
    v336 = v333.i64[0] + v320;
    v337 = v334 | (v332.i64[1] << v336);
    if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v283 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v332.i64[1] >> -(v336 & 0x3F);
      if ((v336 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = v336 + v333.i64[1];
    v339 = vextq_s8(0, v171, 0xCuLL);
    v340.i64[0] = 0xF000F000F000FLL;
    v340.i64[1] = 0xF000F000F000FLL;
    v341.i64[0] = -1;
    v341.i64[1] = -1;
    v342 = vandq_s8(vshlq_u16(v341, vaddq_s16(v339, v340)), v335);
    v343 = vmovl_u16(*v339.i8);
    v344 = vmovl_high_u16(v339);
    v345 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v343)), vshlq_u32(vmovl_high_u16(v342), vtrn1q_s32(0, v344)));
    v346 = vpaddq_s32(v343, v344);
    v347.i64[0] = v345.u32[0];
    v347.i64[1] = v345.u32[1];
    v348 = v347;
    v347.i64[0] = v345.u32[2];
    v347.i64[1] = v345.u32[3];
    v349 = v347;
    v347.i64[0] = v346.u32[0];
    v347.i64[1] = v346.u32[1];
    v350 = v347;
    v347.i64[0] = v346.u32[2];
    v347.i64[1] = v346.u32[3];
    v351 = vpaddq_s64(vshlq_u64(v348, vzip1q_s64(0, v350)), vshlq_u64(v349, vzip1q_s64(0, v347)));
    v352 = vpaddq_s64(v350, v347);
    v353 = (v351.i64[0] << v338) | v337;
    if (v352.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v283 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
      v353 = v351.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v353 = 0;
      }
    }

    v354 = vceqq_s16(v188, v175);
    v355 = vaddq_s16(v187, v319);
    v356 = v352.i64[0] + v338;
    v357 = v353 | (v351.i64[1] << v356);
    if ((v356 & 0x3F) + v352.i64[1] >= 0x40)
    {
      *(v283 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v351.i64[1] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = vandq_s8(v168, v354);
    v359 = v356 + v352.i64[1];
    v360.i64[0] = 0xF000F000F000FLL;
    v360.i64[1] = 0xF000F000F000FLL;
    v361.i64[0] = -1;
    v361.i64[1] = -1;
    v362 = vandq_s8(vshlq_u16(v361, vaddq_s16(v171, v360)), v355);
    v363 = vmovl_u16(*v171.i8);
    v364 = vmovl_high_u16(v171);
    v365 = vpaddq_s32(vshlq_u32(vmovl_u16(*v362.i8), vtrn1q_s32(0, v363)), vshlq_u32(vmovl_high_u16(v362), vtrn1q_s32(0, v364)));
    v366 = vpaddq_s32(v363, v364);
    v367.i64[0] = v365.u32[0];
    v367.i64[1] = v365.u32[1];
    v368 = v367;
    v367.i64[0] = v365.u32[2];
    v367.i64[1] = v365.u32[3];
    v369 = v367;
    v367.i64[0] = v366.u32[0];
    v367.i64[1] = v366.u32[1];
    v370 = v367;
    v367.i64[0] = v366.u32[2];
    v367.i64[1] = v366.u32[3];
    v371 = vpaddq_s64(vshlq_u64(v368, vzip1q_s64(0, v370)), vshlq_u64(v369, vzip1q_s64(0, v367)));
    v372 = vpaddq_s64(v370, v367);
    v373 = (v371.i64[0] << v359) | v357;
    if (v372.i64[0] + (v359 & 0x3F) >= 0x40)
    {
      *(v283 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      v373 = v371.i64[0] >> -(v359 & 0x3F);
      if ((v359 & 0x3F) == 0)
      {
        v373 = 0;
      }
    }

    v374 = vaddq_s16(v582, v358);
    v375 = v372.i64[0] + v359;
    v376 = v373 | (v371.i64[1] << v375);
    if ((v375 & 0x3F) + v372.i64[1] >= 0x40)
    {
      *(v283 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
      v376 = v371.i64[1] >> -(v375 & 0x3F);
      if ((v375 & 0x3F) == 0)
      {
        v376 = 0;
      }
    }

    v377 = v375 + v372.i64[1];
    v378.i64[0] = 0xF000F000F000FLL;
    v378.i64[1] = 0xF000F000F000FLL;
    v379.i64[0] = -1;
    v379.i64[1] = -1;
    v380 = vshlq_u16(v379, vaddq_s16(v175, v378));
    v381 = vandq_s8(v380, v374);
    v382 = vmovl_u16(*v381.i8);
    v383 = vmovl_high_u16(v381);
    v384 = vmovl_u16(*v175.i8);
    v385 = vmovl_high_u16(v175);
    v386 = vtrn1q_s32(0, v384);
    v387 = vtrn1q_s32(0, v385);
    v388 = vpaddq_s32(vshlq_u32(v382, v386), vshlq_u32(v383, v387));
    v389 = vpaddq_s32(v384, v385);
    v390.i64[0] = v388.u32[0];
    v390.i64[1] = v388.u32[1];
    v391 = v390;
    v390.i64[0] = v388.u32[2];
    v390.i64[1] = v388.u32[3];
    v392 = v390;
    v390.i64[0] = v389.u32[0];
    v390.i64[1] = v389.u32[1];
    v393 = v390;
    v390.i64[0] = v389.u32[2];
    v390.i64[1] = v389.u32[3];
    v394 = vzip1q_s64(0, v393);
    v395 = vzip1q_s64(0, v390);
    v396 = vpaddq_s64(vshlq_u64(v391, v394), vshlq_u64(v392, v395));
    v397 = vpaddq_s64(v393, v390);
    v398 = (v396.i64[0] << v377) | v376;
    if (v397.i64[0] + (v377 & 0x3F) >= 0x40)
    {
      *(v283 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
      if ((v377 & 0x3F) != 0)
      {
        v398 = v396.i64[0] >> -(v377 & 0x3F);
      }

      else
      {
        v398 = 0;
      }
    }

    v399 = vceqq_s16(v188, v172);
    v400 = vaddq_s16(v190, v358);
    v401 = v397.i64[0] + v377;
    v402 = v398 | (v396.i64[1] << v401);
    if ((v401 & 0x3F) + v397.i64[1] >= 0x40)
    {
      *(v283 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      v402 = v396.i64[1] >> -(v401 & 0x3F);
      if ((v401 & 0x3F) == 0)
      {
        v402 = 0;
      }
    }

    v403 = vandq_s8(v168, v399);
    v404 = v401 + v397.i64[1];
    v405 = vandq_s8(v380, v400);
    v406 = vpaddq_s32(vshlq_u32(vmovl_u16(*v405.i8), v386), vshlq_u32(vmovl_high_u16(v405), v387));
    v407.i64[0] = v406.u32[0];
    v407.i64[1] = v406.u32[1];
    v408 = v407;
    v407.i64[0] = v406.u32[2];
    v407.i64[1] = v406.u32[3];
    v409 = vpaddq_s64(vshlq_u64(v408, v394), vshlq_u64(v407, v395));
    v410 = (v409.i64[0] << v404) | v402;
    if (v397.i64[0] + (v404 & 0x3F) >= 0x40)
    {
      *(v283 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      v410 = v409.i64[0] >> -(v404 & 0x3F);
      if ((v404 & 0x3F) == 0)
      {
        v410 = 0;
      }
    }

    v411 = vaddq_s16(v189, v403);
    v412 = v397.i64[0] + v404;
    v413 = (v397.i64[0] + v404) & 0x3F;
    v414 = v410 | (v409.i64[1] << v412);
    if ((v412 & 0x3F) + v397.i64[1] >= 0x40)
    {
      *(v283 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v409.i64[1] >> -v413;
      if (!v413)
      {
        v414 = 0;
      }
    }

    v415 = v412 + v397.i64[1];
    v416.i64[0] = 0xF000F000F000FLL;
    v416.i64[1] = 0xF000F000F000FLL;
    v417.i64[0] = -1;
    v417.i64[1] = -1;
    v418 = vshlq_u16(v417, vaddq_s16(v172, v416));
    v419 = vandq_s8(v418, v411);
    v420 = vmovl_u16(*v419.i8);
    v421 = vmovl_high_u16(v419);
    v422 = vmovl_u16(*v172.i8);
    v423 = vmovl_high_u16(v172);
    v424 = vtrn1q_s32(0, v422);
    v425 = vtrn1q_s32(0, v423);
    v426 = vpaddq_s32(vshlq_u32(v420, v424), vshlq_u32(v421, v425));
    v427 = vpaddq_s32(v422, v423);
    v428.i64[0] = v426.u32[0];
    v428.i64[1] = v426.u32[1];
    v429 = v428;
    v428.i64[0] = v426.u32[2];
    v428.i64[1] = v426.u32[3];
    v430 = v428;
    v428.i64[0] = v427.u32[0];
    v428.i64[1] = v427.u32[1];
    v431 = v428;
    v428.i64[0] = v427.u32[2];
    v428.i64[1] = v427.u32[3];
    v432 = vzip1q_s64(0, v431);
    v433 = vzip1q_s64(0, v428);
    v434 = vpaddq_s64(vshlq_u64(v429, v432), vshlq_u64(v430, v433));
    v435 = vpaddq_s64(v431, v428);
    v436 = (v434.i64[0] << v415) | v414;
    if (v435.i64[0] + (v415 & 0x3F) >= 0x40)
    {
      *(v283 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
      if ((v415 & 0x3F) != 0)
      {
        v436 = v434.i64[0] >> -(v415 & 0x3F);
      }

      else
      {
        v436 = 0;
      }
    }

    v437 = vceqq_s16(v188, v173);
    v438 = vaddq_s16(v186, v403);
    v439 = v435.i64[0] + v415;
    v440 = v436 | (v434.i64[1] << v439);
    if ((v439 & 0x3F) + v435.i64[1] >= 0x40)
    {
      *(v283 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
      v440 = v434.i64[1] >> -(v439 & 0x3F);
      if ((v439 & 0x3F) == 0)
      {
        v440 = 0;
      }
    }

    v441 = vandq_s8(v168, v437);
    v442 = v439 + v435.i64[1];
    v443 = vandq_s8(v418, v438);
    v444 = vpaddq_s32(vshlq_u32(vmovl_u16(*v443.i8), v424), vshlq_u32(vmovl_high_u16(v443), v425));
    v445.i64[0] = v444.u32[0];
    v445.i64[1] = v444.u32[1];
    v446 = v445;
    v445.i64[0] = v444.u32[2];
    v445.i64[1] = v444.u32[3];
    v447 = vpaddq_s64(vshlq_u64(v446, v432), vshlq_u64(v445, v433));
    v448 = (v447.i64[0] << v442) | v440;
    if (v435.i64[0] + (v442 & 0x3F) >= 0x40)
    {
      *(v283 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
      v448 = v447.i64[0] >> -(v442 & 0x3F);
      if ((v442 & 0x3F) == 0)
      {
        v448 = 0;
      }
    }

    v449 = vaddq_s16(v184, v441);
    v450 = v435.i64[0] + v442;
    v451 = (v435.i64[0] + v442) & 0x3F;
    v452 = v448 | (v447.i64[1] << v450);
    if ((v450 & 0x3F) + v435.i64[1] >= 0x40)
    {
      *(v283 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v447.i64[1] >> -v451;
      if (!v451)
      {
        v452 = 0;
      }
    }

    v453 = v450 + v435.i64[1];
    v454.i64[0] = 0xF000F000F000FLL;
    v454.i64[1] = 0xF000F000F000FLL;
    v455.i64[0] = -1;
    v455.i64[1] = -1;
    v456 = vshlq_u16(v455, vaddq_s16(v173, v454));
    v457 = vandq_s8(v456, v449);
    v458 = vmovl_u16(*v457.i8);
    v459 = vmovl_high_u16(v457);
    v460 = vmovl_u16(*v173.i8);
    v461 = vmovl_high_u16(v173);
    v462 = vtrn1q_s32(0, v460);
    v463 = vtrn1q_s32(0, v461);
    v464 = vpaddq_s32(vshlq_u32(v458, v462), vshlq_u32(v459, v463));
    v465 = vpaddq_s32(v460, v461);
    v466.i64[0] = v464.u32[0];
    v466.i64[1] = v464.u32[1];
    v467 = v466;
    v466.i64[0] = v464.u32[2];
    v466.i64[1] = v464.u32[3];
    v468 = v466;
    v466.i64[0] = v465.u32[0];
    v466.i64[1] = v465.u32[1];
    v469 = v466;
    v466.i64[0] = v465.u32[2];
    v466.i64[1] = v465.u32[3];
    v470 = vzip1q_s64(0, v469);
    v471 = vzip1q_s64(0, v466);
    v472 = vpaddq_s64(vshlq_u64(v467, v470), vshlq_u64(v468, v471));
    v473 = vpaddq_s64(v469, v466);
    v474 = (v450 + v435.i64[1]) & 0x3F;
    v475 = (v472.i64[0] << (v450 + v435.i8[8])) | v452;
    if ((v473.i64[0] + v474) > 0x3F)
    {
      *(v283 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
      if (v474)
      {
        v475 = v472.i64[0] >> -v474;
      }

      else
      {
        v475 = 0;
      }
    }

    v476 = vaddq_s16(v185, v441);
    v477 = v473.i64[0] + v453;
    v478 = v475 | (v472.i64[1] << v477);
    if ((v477 & 0x3F) + v473.i64[1] >= 0x40)
    {
      *(v283 + ((v477 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      v478 = v472.i64[1] >> -(v477 & 0x3F);
      if ((v477 & 0x3F) == 0)
      {
        v478 = 0;
      }
    }

    v479 = v477 + v473.i64[1];
    v480 = vandq_s8(v456, v476);
    v481 = vpaddq_s32(vshlq_u32(vmovl_u16(*v480.i8), v462), vshlq_u32(vmovl_high_u16(v480), v463));
    v482.i64[0] = v481.u32[0];
    v482.i64[1] = v481.u32[1];
    v483 = v482;
    v482.i64[0] = v481.u32[2];
    v482.i64[1] = v481.u32[3];
    v484 = vpaddq_s64(vshlq_u64(v483, v470), vshlq_u64(v482, v471));
    v485 = (v484.i64[0] << v479) | v478;
    if (v473.i64[0] + (v479 & 0x3F) >= 0x40)
    {
      *(v283 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
      v485 = v484.i64[0] >> -(v479 & 0x3F);
      if ((v479 & 0x3F) == 0)
      {
        v485 = 0;
      }
    }

    v486 = v473.i64[0] + v479;
    v487 = (v473.i64[0] + v479) & 0x3F;
    v488 = v485 | (v484.i64[1] << (v473.i8[0] + v479));
    if ((v487 + v473.i64[1]) >= 0x40)
    {
      *(v283 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
      v488 = v484.i64[1] >> -v487;
      if (!v487)
      {
        v488 = 0;
      }
    }

    v489 = v486 + v473.i64[1];
    if ((v489 & 0x3F) != 0)
    {
      *(v283 + ((v489 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
    }

    result = (v489 - v284 + 7) >> 3;
    v192 = *a2 | (result - 1);
  }

LABEL_146:
  *a2 = v192;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 8)
    {
      v14 = 8;
    }

    else
    {
      v14 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
    v9 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v15 = 4 * a2;
  v16 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v16 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v6 >= 5)
  {
    if (v16 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v12 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
    v9 += result;
    v21 = v6 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v6 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v7 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v21 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
  if (v7 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v26 = v6 - 12;
    if (!v7)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v6 < 9)
  {
    goto LABEL_57;
  }

  if (v21 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v21;
  }

  if (v12 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v7 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 32), a2, v25, v24);
  v9 += result;
  v26 = v6 - 12;
LABEL_58:
  if (v6 >= 0xD)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }

    if (v7 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v6 < 0xD)
  {
    goto LABEL_78;
  }

  if (v26 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v26;
  }

  if (v12 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a3[1];
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v14 = *v7;
  v15 = v7[1];
  v13 = (v7 + a4);
  v16 = v13[1];
  v17 = vshrq_n_s16(v11, 4uLL);
  v18 = vshrq_n_s16(v12, 4uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 4uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 4uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v482 = vshrq_n_s16(vzip1q_s64(v14, *v13), 4uLL);
  v484 = vshrq_n_s16(vzip1q_s64(v8, v10), 4uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 4uLL), 4uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 4uLL), 4uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, v23), 4uLL), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 4uLL), 4uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v484, v23), 4uLL), 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 4uLL), 4uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 4uLL), 4uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 4uLL), 4uLL);
  v32 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v33 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39 = vmaxq_s16(v36, v38);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vminq_s16(v37, v40);
  v42 = vzip1q_s16(v36, v37);
  v43.i64[0] = 0x10001000100010;
  v43.i64[1] = 0x10001000100010;
  v44 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v42)), vceqzq_s16(v42));
  v45 = vpmaxq_s16(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v47 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v48 = vpmaxq_s16(v46, v46);
  v49 = vpminq_s16(v47, v47);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v39, v50);
  v53 = vminq_s16(v41, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v58 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v69 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v63, v72);
  v75 = vminq_s16(v64, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v76)), vceqzq_s16(v76));
  v78 = vpmaxq_s16(v77, v77);
  v79 = vmaxq_s16(vmaxq_s16(v45, v56), vmaxq_s16(v67, v78));
  v80 = vclzq_s16(vsubq_s16(v74, v75));
  v81 = vsubq_s16(v43, v80);
  v82 = vminq_s16(v81, v79);
  if (!vmaxvq_s16(v82))
  {
    v181 = (a3->i32[0] >> 8) & 0xFFFFF000 | (a3->i32[0] >> 4);
    *(a1 + 2) = HIBYTE(a3->i32[0]);
    *a1 = v181;
    *a2 = 2;
    return 3;
  }

  v464 = v19;
  v465 = v20;
  v466 = v21;
  v467 = v22;
  v83.i64[0] = 0x4000400040004;
  v83.i64[1] = 0x4000400040004;
  v84.i64[0] = -1;
  v84.i64[1] = -1;
  v85.i64[0] = 0xF000F000F000FLL;
  v85.i64[1] = 0xF000F000F000FLL;
  v480 = vsubq_s16(vshlq_s16(v84, vsubq_s16(v85, v80)), v75);
  v86 = vcgtq_s16(v79, v81);
  v87.i64[0] = 0x8000800080008;
  v87.i64[1] = 0x8000800080008;
  v88.i64[0] = 0x3000300030003;
  v88.i64[1] = 0x3000300030003;
  v473 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v88), 0);
  v474 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v88), 0);
  v476 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v88), 0);
  v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v88), 0);
  v89 = vbicq_s8(v83, vceqq_s16(vaddq_s16(v478, v474), vnegq_s16(vaddq_s16(v473, v476))));
  v472 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v88), vandq_s8(v86, v87));
  v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 4uLL), 4uLL);
  v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 4uLL), 4uLL);
  v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 4uLL), 4uLL);
  v492 = v31;
  v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 4uLL), 4uLL);
  v486 = v25;
  v471 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 4uLL), 4uLL);
  v94 = vqtbl1q_s8(vmaxq_s16(v90, v471), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v90, v471), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v38);
  v494 = v24;
  v101 = vminq_s16(v99, v40);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = vpmaxq_s16(v103, v103);
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 4uLL), 4uLL);
  v469 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 4uLL), 4uLL);
  v105 = vqtbl1q_s8(vmaxq_s16(v469, v468), xmmword_29D2F1090);
  v106 = vqtbl1q_s8(vminq_s16(v469, v468), xmmword_29D2F1090);
  v107 = vpmaxq_s16(v105, v105);
  v108 = vpminq_s16(v106, v106);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vmaxq_s16(v100, v109);
  v112 = vminq_s16(v101, v110);
  v113 = vzip1q_s16(v109, v110);
  v114 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v113)), vceqzq_s16(v113));
  v488 = v29;
  v490 = v30;
  v115 = v27;
  v116 = vpmaxq_s16(v114, v114);
  v117 = vqtbl1q_s8(vmaxq_s16(v91, v92), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v91, v92), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v111, v121);
  v124 = vminq_s16(v112, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
  v127 = v26;
  v128 = v28;
  v129 = vpmaxq_s16(v126, v126);
  v470 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 4uLL), 4uLL);
  v130 = vqtbl1q_s8(vmaxq_s16(v470, v93), xmmword_29D2F1090);
  v131 = vqtbl1q_s8(vminq_s16(v470, v93), xmmword_29D2F1090);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v134 = vpmaxq_s16(v132, v132);
  v135 = vpminq_s16(v133, v133);
  v136 = vmaxq_s16(v123, v134);
  v137 = vminq_s16(v124, v135);
  v138 = vzip1q_s16(v134, v135);
  v139 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v138)), vceqzq_s16(v138));
  v140 = vpmaxq_s16(v139, v139);
  v141 = vmaxq_s16(vmaxq_s16(v104, v116), vmaxq_s16(v129, v140));
  v142 = vclzq_s16(vsubq_s16(v136, v137));
  v143 = vsubq_s16(v43, v142);
  v144 = vcgtq_s16(v141, v143);
  v145 = vminq_s16(v143, v141);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v146 = vbslq_s8(v144, v141, v43);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v104), v88), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v116), v88), 0);
  v149 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v129), v88), 0);
  v150 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v140), v88), 0);
  v151 = vsubq_s16(v145, v147);
  v152 = vsubq_s16(v145, v148);
  v153 = vsubq_s16(v145, v149);
  v154 = vaddq_s16(v147, v148);
  v155 = vsubq_s16(v145, v150);
  v156.i64[0] = 0x4000400040004;
  v156.i64[1] = 0x4000400040004;
  v157 = vbicq_s8(v156, vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(v154)));
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v158 = vandq_s8(v480, v86);
  v159 = vorrq_s8(v472, v89);
  v160 = vaddq_s16(vandq_s8(v82, v86), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v82, v473);
  v162 = vsubq_s16(v82, v476);
  v163 = vsubq_s16(v82, v474);
  v164 = vsubq_s16(v82, v478);
  v165 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v160, v161, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16((*&v146 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v157, v157)), v151, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v155), 3uLL))), 0);
  v166 = vaddvq_s16(v165);
  v168 = a5 < 4 || a6 < 2;
  if (v166)
  {
    v169.i64[0] = 0x3000300030003;
    v169.i64[1] = 0x3000300030003;
    v170 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v145), v169), v146), v157);
    v169.i64[0] = 0xF000F000F000FLL;
    v169.i64[1] = 0xF000F000F000FLL;
    v171 = vsubq_s16(v169, v142);
    v172.i64[0] = -1;
    v172.i64[1] = -1;
    v23 = vbslq_s8(v165, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
    v494 = vbslq_s8(v165, v90, v494);
    v477 = vbslq_s8(v165, v469, v127);
    v479 = vbslq_s8(v165, v468, v115);
    v481 = vbslq_s8(v165, v91, v128);
    v173 = vbslq_s8(v165, v92, v488);
    v174 = vbslq_s8(v165, v93, v492);
    v161 = vbslq_s8(v165, v151, v161);
    v175 = vbslq_s8(v165, v152, v162);
    v163 = vbslq_s8(v165, v153, v163);
    v164 = vbslq_s8(v165, v155, v164);
    v158 = vbslq_s8(v165, vandq_s8(vsubq_s16(vshlq_s16(v172, v171), v137), v144), v158);
    v82 = vbslq_s8(v165, v145, v82);
    v159 = vbslq_s8(v165, v170, v159);
    v176 = vbslq_s8(v165, v470, v490);
    v177 = vbslq_s8(v165, v471, v486);
    if (v168)
    {
LABEL_10:
      v178 = v479;
      v179 = v481;
      v180 = v477;
      goto LABEL_16;
    }
  }

  else
  {
    v477 = v127;
    v479 = v115;
    v481 = v128;
    v176 = v490;
    v174 = v492;
    v177 = v486;
    v173 = v488;
    v175 = v162;
    if (v168)
    {
      goto LABEL_10;
    }
  }

  v487 = v177;
  v475 = v158;
  v489 = v173;
  v491 = v176;
  v493 = v174;
  v183 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
  v184 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
  v495.val[0] = v482;
  v495.val[1] = v464;
  v495.val[1].i32[3] = v18.i32[3];
  v185 = vqtbl2q_s8(v495, xmmword_29D2F1040);
  v186 = vsubq_s16(v482, vqtbl2q_s8(v495, xmmword_29D2F0FA0));
  v495.val[1] = v484;
  v187 = v465;
  v187.i32[3] = v18.i32[3];
  v188 = vsubq_s16(v484, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F1050));
  v189 = vsubq_s16(v465, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F0F80));
  v496.val[0] = v466;
  v496.val[1] = v467;
  v496.val[1].i32[3] = v18.i32[3];
  v495.val[0] = vsubq_s16(v466, vqtbl2q_s8(v496, xmmword_29D2F1060));
  v495.val[1] = v184;
  v495.val[1].i32[3] = v183.i32[0];
  v190 = vsubq_s16(v467, vqtbl2q_s8(v496, xmmword_29D2F0F80));
  v183.i32[0] = v184.i32[3];
  v496.val[0].i64[0] = 0x4000400040004;
  v496.val[0].i64[1] = 0x4000400040004;
  v191 = vshrq_n_s16(vshlq_n_s16(v183, 4uLL), 4uLL);
  v192 = vshrq_n_s16(vshlq_n_s16(v186, 4uLL), 4uLL);
  v193 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, v185), 4uLL), 4uLL);
  v194 = vshrq_n_s16(vshlq_n_s16(v188, 4uLL), 4uLL);
  v195 = vshrq_n_s16(vshlq_n_s16(v189, 4uLL), 4uLL);
  v196 = vshrq_n_s16(vshlq_n_s16(v495.val[0], 4uLL), 4uLL);
  v197 = vshrq_n_s16(vshlq_n_s16(v190, 4uLL), 4uLL);
  v485 = vshrq_n_s16(vshlq_n_s16(v495.val[1], 4uLL), 4uLL);
  v198 = vqtbl1q_s8(vmaxq_s16(v191, v485), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v191, v485), xmmword_29D2F1090);
  v199 = vpmaxq_s16(v198, v198);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v200 = vpmaxq_s16(v199, v199);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v187.i64[0] = 0x8000800080008000;
  v187.i64[1] = 0x8000800080008000;
  v201 = vmaxq_s16(v200, v187);
  v496.val[1].i64[0] = 0x8000800080008000;
  v496.val[1].i64[1] = 0x8000800080008000;
  v496.val[1] = vminq_s16(v495.val[0], v496.val[1]);
  v202 = vzip1q_s16(v200, v495.val[0]);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v204 = v163;
  v205 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v202)), vceqzq_s16(v202));
  v206 = vpmaxq_s16(v205, v205);
  v207 = vqtbl1q_s8(vmaxq_s16(v192, v193), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v192, v193), xmmword_29D2F1090);
  v208 = vpmaxq_s16(v207, v207);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v209 = vpmaxq_s16(v208, v208);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v210 = vmaxq_s16(v201, v209);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v211 = vzip1q_s16(v209, v495.val[0]);
  v212 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v211)), vceqzq_s16(v211));
  v213 = vpmaxq_s16(v212, v212);
  v214 = vqtbl1q_s8(vmaxq_s16(v194, v195), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v194, v195), xmmword_29D2F1090);
  v215 = vpmaxq_s16(v214, v214);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v216 = vpmaxq_s16(v215, v215);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v217 = vmaxq_s16(v210, v216);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v218 = vzip1q_s16(v216, v495.val[0]);
  v219 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v218)), vceqzq_s16(v218));
  v220 = vpmaxq_s16(v219, v219);
  v483 = v196;
  v221 = vqtbl1q_s8(vmaxq_s16(v196, v197), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v196, v197), xmmword_29D2F1090);
  v222 = vpmaxq_s16(v221, v221);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v223 = vpmaxq_s16(v222, v222);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v224 = vmaxq_s16(v217, v223);
  v225 = vminq_s16(v496.val[1], v495.val[0]);
  v226 = vzip1q_s16(v223, v495.val[0]);
  v227 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v226)), vceqzq_s16(v226));
  v496.val[1] = vpmaxq_s16(v227, v227);
  v495.val[0] = vmaxq_s16(vmaxq_s16(v206, v213), vmaxq_s16(v220, v496.val[1]));
  v228 = vclzq_s16(vsubq_s16(v224, v225));
  v229 = vsubq_s16(v203, v228);
  v230 = vcgtq_s16(v495.val[0], v229);
  v231 = vminq_s16(v229, v495.val[0]);
  v232.i64[0] = 0x3000300030003;
  v232.i64[1] = 0x3000300030003;
  v233 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v206), v232), 0);
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v213), v232), 0);
  v235 = v175;
  v236 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v220), v232), 0);
  v496.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v231, v496.val[1]), v232), 0);
  v237 = vsubq_s16(v231, v233);
  v238 = vsubq_s16(v231, v234);
  v239 = vsubq_s16(v231, v236);
  v240 = vsubq_s16(v231, v496.val[1]);
  v241 = vbicq_s8(v496.val[0], vceqq_s16(vaddq_s16(v496.val[1], v236), vnegq_s16(vaddq_s16(v233, v234))));
  v234.i64[0] = 0x7000700070007;
  v234.i64[1] = 0x7000700070007;
  v496.val[1].i64[0] = 0x8000800080008;
  v496.val[1].i64[1] = 0x8000800080008;
  v242 = v161;
  v243 = vandq_s8(v159, v232);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v245 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v159, v496.val[1]))), vandq_s8(vaddq_s16(v159, v159), v496.val[1])), vandq_s8(vceqq_s16(v243, v244), v203)), v242, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v235), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v231, v230), vaddq_s16(v241, v241)), v237, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL))), 0);
  v178 = v479;
  if (vaddvq_s16(v245))
  {
    v246.i64[0] = 0x9000900090009;
    v246.i64[1] = 0x9000900090009;
    v247 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v231), v244), vsubq_s16(vandq_s8(v230, v246), vmvnq_s8(v230))), v241);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v249 = vandq_s8(vsubq_s16(vshlq_s16(v246, vsubq_s16(v248, v228)), v225), v230);
    v23.i32[0] = vbslq_s8(v245, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
    v494 = vbslq_s8(v245, v191, v494);
    v177 = vbslq_s8(v245, v485, v487);
    v180 = vbslq_s8(v245, v192, v477);
    v178 = vbslq_s8(v245, v193, v479);
    v179 = vbslq_s8(v245, v194, v481);
    v173 = vbslq_s8(v245, v195, v489);
    v176 = vbslq_s8(v245, v483, v491);
    v174 = vbslq_s8(v245, v197, v493);
    v161 = vbslq_s8(v245, v237, v242);
    v175 = vbslq_s8(v245, v238, v235);
    v163 = vbslq_s8(v245, v239, v204);
    v164 = vbslq_s8(v245, v240, v164);
    v158 = vbslq_s8(v245, v249, v475);
    v82 = vbslq_s8(v245, v231, v82);
    v159 = vbslq_s8(v245, v247, v159);
  }

  else
  {
    v176 = v491;
    v174 = v493;
    v177 = v487;
    v173 = v489;
    v179 = v481;
    v158 = v475;
    v180 = v477;
    v163 = v204;
    v175 = v235;
    v161 = v242;
  }

LABEL_16:
  v250.i64[0] = 0x8000800080008;
  v250.i64[1] = 0x8000800080008;
  v251 = vandq_s8(v159, v250);
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v254 = vceqq_s16(vandq_s8(v159, v252), v253);
  v253.i64[0] = 0x10001000100010;
  v253.i64[1] = 0x10001000100010;
  v255 = vandq_s8(v254, v253);
  v253.i64[0] = 0x7000700070007;
  v253.i64[1] = 0x7000700070007;
  v256 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v251)), vandq_s8(vaddq_s16(v159, v159), v250)), v255), v161, v253), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v175), v164), 3uLL));
  if ((vpaddq_s16(v256, v256).i16[0] - 599) < 0xFFFFFFFFFFFFFD78)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 80;
  }

  else
  {
    v257 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v258 = 8 * (a1 & 7);
    if (v258)
    {
      v259 = *v257 & ~(-1 << v258);
    }

    else
    {
      v259 = 0;
    }

    *a2 = 0;
    v260 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
    if (!v82.i16[0])
    {
      v260 = 0;
    }

    if (v82.i16[1])
    {
      v261 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v261 = 0;
    }

    v262 = v260 | v261 | v159.i8[0] & 0x1F | (32 * (v159.i8[2] & 0x1Fu));
    v263 = v23.i16[0] & 0xFFF | ((v23.i16[1] & 0xFFF) << 12);
    v264 = (v262 << v258) | v259;
    if (v258 >= 0x2E)
    {
      *v257 = v264;
      v264 = v262 >> (-8 * (a1 & 7u));
    }

    v265 = (v258 + 18) & 0x3A;
    v266 = v264 | (v263 << v265);
    if (v265 >= 0x28)
    {
      *(v257 + (((v258 + 18) >> 3) & 8)) = v266;
      v266 = v263 >> -v265;
    }

    v267 = v258 + 42;
    v268 = vsubq_s16(v82, v161);
    v269 = vsubq_s16(v82, v175);
    v270 = vsubq_s16(v82, v163);
    v271 = vsubq_s16(v82, v164);
    *v268.i8 = vqmovn_u16(v268);
    *v269.i8 = vqmovn_u16(v269);
    *v270.i8 = vqmovn_u16(v270);
    *v271.i8 = vqmovn_u16(v271);
    v268.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v268, v269), vzip1q_s8(v270, v271)), vzip1q_s16(vtrn2q_s8(v268, v269), vtrn2q_s8(v270, v271))).u64[0];
    v270.i64[0] = 0x202020202020202;
    v270.i64[1] = 0x202020202020202;
    v272 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v159.i8, 0x4000400040004)))), v270);
    v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v271.i64[0] = -1;
    v271.i64[1] = -1;
    v273 = vandq_s8(vshlq_u8(v271, vorrq_s8(v272, v270)), v268.u64[0]);
    v274 = vmovl_u8(*v272.i8);
    v275 = vpaddq_s16(vshlq_u16(vmovl_u8(*v273.i8), vtrn1q_s16(0, v274)), vmovl_high_u8(v273));
    v276 = vpaddq_s16(v274, vmovl_high_u8(v272));
    v277 = vmovl_u16(*v276.i8);
    v278 = vmovl_high_u16(v276);
    v279 = vpaddq_s32(vshlq_u32(vmovl_u16(*v275.i8), vtrn1q_s32(0, v277)), vshlq_u32(vmovl_high_u16(v275), vtrn1q_s32(0, v278)));
    v280 = vpaddq_s32(v277, v278);
    v281.i64[0] = v279.u32[0];
    v281.i64[1] = v279.u32[1];
    v282 = v281;
    v281.i64[0] = v279.u32[2];
    v281.i64[1] = v279.u32[3];
    v283 = v281;
    v281.i64[0] = v280.u32[0];
    v281.i64[1] = v280.u32[1];
    v284 = v281;
    v281.i64[0] = v280.u32[2];
    v281.i64[1] = v280.u32[3];
    v285 = vpaddq_s64(vshlq_u64(v282, vzip1q_s64(0, v284)), vshlq_u64(v283, vzip1q_s64(0, v281)));
    v286 = vpaddq_s64(v284, v281);
    v287 = (v258 + 42) & 0x3A;
    v288 = (v285.i64[0] << v287) | v266;
    if ((v286.i64[0] + v287) >= 0x40)
    {
      *(v257 + ((v267 >> 3) & 8)) = v288;
      v288 = v285.i64[0] >> -v287;
    }

    v289 = vceqq_s16(v82, v161);
    v290 = v286.i64[0] + v267;
    v291 = v288 | (v285.i64[1] << v290);
    if ((v290 & 0x3F) + v286.i64[1] >= 0x40)
    {
      *(v257 + ((v290 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v291;
      v291 = v285.i64[1] >> -(v290 & 0x3F);
      if ((v290 & 0x3F) == 0)
      {
        v291 = 0;
      }
    }

    v292 = vandq_s8(v158, v289);
    v293 = v290 + v286.i64[1];
    v294.i64[0] = -1;
    v294.i64[1] = -1;
    v295 = vandq_s8(vextq_s8(vtstq_s16(v251, v251), 0, 0xCuLL), v82);
    v296.i64[0] = 0xF000F000F000FLL;
    v296.i64[1] = 0xF000F000F000FLL;
    v297 = vandq_s8(vshlq_u16(v294, vaddq_s16(v295, v296)), v158);
    v298 = vmovl_u16(*v295.i8);
    v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v297.i8), vtrn1q_s32(0, v298)), vmovl_high_u16(v297));
    v300 = vpaddq_s32(v298, vmovl_high_u16(v295));
    v301.i64[0] = v299.u32[0];
    v301.i64[1] = v299.u32[1];
    v302 = v301;
    v301.i64[0] = v299.u32[2];
    v301.i64[1] = v299.u32[3];
    v303 = v301;
    v301.i64[0] = v300.u32[0];
    v301.i64[1] = v300.u32[1];
    v304 = v301;
    v301.i64[0] = v300.u32[2];
    v301.i64[1] = v300.u32[3];
    v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
    v306 = vpaddq_s64(v304, v301);
    v307 = (v305.i64[0] << v293) | v291;
    if (v306.i64[0] + (v293 & 0x3F) >= 0x40)
    {
      *(v257 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v293 & 0x3F);
      if ((v293 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vaddq_s16(v292, v494);
    v309 = v306.i64[0] + v293;
    v310 = v307 | (v305.i64[1] << v309);
    if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v257 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
      v310 = v305.i64[1] >> -(v309 & 0x3F);
      if ((v309 & 0x3F) == 0)
      {
        v310 = 0;
      }
    }

    v311 = v309 + v306.i64[1];
    v312 = vextq_s8(0, v161, 0xCuLL);
    v313.i64[0] = 0xF000F000F000FLL;
    v313.i64[1] = 0xF000F000F000FLL;
    v314.i64[0] = -1;
    v314.i64[1] = -1;
    v315 = vandq_s8(vshlq_u16(v314, vaddq_s16(v312, v313)), v308);
    v316 = vmovl_u16(*v312.i8);
    v317 = vmovl_high_u16(v312);
    v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v315.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v315), vtrn1q_s32(0, v317)));
    v319 = vpaddq_s32(v316, v317);
    v320.i64[0] = v318.u32[0];
    v320.i64[1] = v318.u32[1];
    v321 = v320;
    v320.i64[0] = v318.u32[2];
    v320.i64[1] = v318.u32[3];
    v322 = v320;
    v320.i64[0] = v319.u32[0];
    v320.i64[1] = v319.u32[1];
    v323 = v320;
    v320.i64[0] = v319.u32[2];
    v320.i64[1] = v319.u32[3];
    v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
    v325 = vpaddq_s64(v323, v320);
    v326 = (v324.i64[0] << v311) | v310;
    if (v325.i64[0] + (v311 & 0x3F) >= 0x40)
    {
      *(v257 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s16(v82, v175);
    v328 = vaddq_s16(v177, v292);
    v329 = v325.i64[0] + v311;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v257 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v158, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF000F000F000FLL;
    v333.i64[1] = 0xF000F000F000FLL;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v161, v333)), v328);
    v336 = vmovl_u16(*v161.i8);
    v337 = vmovl_high_u16(v161);
    v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v335.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v335), vtrn1q_s32(0, v337)));
    v339 = vpaddq_s32(v336, v337);
    v340.i64[0] = v338.u32[0];
    v340.i64[1] = v338.u32[1];
    v341 = v340;
    v340.i64[0] = v338.u32[2];
    v340.i64[1] = v338.u32[3];
    v342 = v340;
    v340.i64[0] = v339.u32[0];
    v340.i64[1] = v339.u32[1];
    v343 = v340;
    v340.i64[0] = v339.u32[2];
    v340.i64[1] = v339.u32[3];
    v344 = vpaddq_s64(vshlq_u64(v341, vzip1q_s64(0, v343)), vshlq_u64(v342, vzip1q_s64(0, v340)));
    v345 = vpaddq_s64(v343, v340);
    v346 = (v344.i64[0] << v332) | v330;
    if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v257 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
      v346 = v344.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v346 = 0;
      }
    }

    v347 = vaddq_s16(v180, v331);
    v348 = v345.i64[0] + v332;
    v349 = v346 | (v344.i64[1] << v348);
    if ((v348 & 0x3F) + v345.i64[1] >= 0x40)
    {
      *(v257 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
      v349 = v344.i64[1] >> -(v348 & 0x3F);
      if ((v348 & 0x3F) == 0)
      {
        v349 = 0;
      }
    }

    v350 = v348 + v345.i64[1];
    v351.i64[0] = 0xF000F000F000FLL;
    v351.i64[1] = 0xF000F000F000FLL;
    v352.i64[0] = -1;
    v352.i64[1] = -1;
    v353 = vshlq_u16(v352, vaddq_s16(v175, v351));
    v354 = vandq_s8(v353, v347);
    v355 = vmovl_u16(*v354.i8);
    v356 = vmovl_high_u16(v354);
    v357 = vmovl_u16(*v175.i8);
    v358 = vmovl_high_u16(v175);
    v359 = vtrn1q_s32(0, v357);
    v360 = vtrn1q_s32(0, v358);
    v361 = vpaddq_s32(vshlq_u32(v355, v359), vshlq_u32(v356, v360));
    v362 = vpaddq_s32(v357, v358);
    v363.i64[0] = v361.u32[0];
    v363.i64[1] = v361.u32[1];
    v364 = v363;
    v363.i64[0] = v361.u32[2];
    v363.i64[1] = v361.u32[3];
    v365 = v363;
    v363.i64[0] = v362.u32[0];
    v363.i64[1] = v362.u32[1];
    v366 = v363;
    v363.i64[0] = v362.u32[2];
    v363.i64[1] = v362.u32[3];
    v367 = vzip1q_s64(0, v366);
    v368 = vzip1q_s64(0, v363);
    v369 = vpaddq_s64(vshlq_u64(v364, v367), vshlq_u64(v365, v368));
    v370 = vpaddq_s64(v366, v363);
    v371 = (v369.i64[0] << v350) | v349;
    if (v370.i64[0] + (v350 & 0x3F) >= 0x40)
    {
      *(v257 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
      if ((v350 & 0x3F) != 0)
      {
        v371 = v369.i64[0] >> -(v350 & 0x3F);
      }

      else
      {
        v371 = 0;
      }
    }

    v372 = vceqq_s16(v82, v163);
    v373 = vaddq_s16(v178, v331);
    v374 = v370.i64[0] + v350;
    v375 = v371 | (v369.i64[1] << v374);
    if ((v374 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      v375 = v369.i64[1] >> -(v374 & 0x3F);
      if ((v374 & 0x3F) == 0)
      {
        v375 = 0;
      }
    }

    v376 = vandq_s8(v158, v372);
    v377 = v374 + v370.i64[1];
    v378 = vandq_s8(v353, v373);
    v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), v359), vshlq_u32(vmovl_high_u16(v378), v360));
    v380.i64[0] = v379.u32[0];
    v380.i64[1] = v379.u32[1];
    v381 = v380;
    v380.i64[0] = v379.u32[2];
    v380.i64[1] = v379.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v381, v367), vshlq_u64(v380, v368));
    v383 = (v382.i64[0] << v377) | v375;
    if (v370.i64[0] + (v377 & 0x3F) >= 0x40)
    {
      *(v257 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v382.i64[0] >> -(v377 & 0x3F);
      if ((v377 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s16(v179, v376);
    v385 = v370.i64[0] + v377;
    v386 = (v370.i64[0] + v377) & 0x3F;
    v387 = v383 | (v382.i64[1] << v385);
    if ((v385 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -v386;
      if (!v386)
      {
        v387 = 0;
      }
    }

    v388 = v385 + v370.i64[1];
    v389.i64[0] = 0xF000F000F000FLL;
    v389.i64[1] = 0xF000F000F000FLL;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u16(v390, vaddq_s16(v163, v389));
    v392 = vandq_s8(v391, v384);
    v393 = vmovl_u16(*v392.i8);
    v394 = vmovl_high_u16(v392);
    v395 = vmovl_u16(*v163.i8);
    v396 = vmovl_high_u16(v163);
    v397 = vtrn1q_s32(0, v395);
    v398 = vtrn1q_s32(0, v396);
    v399 = vpaddq_s32(vshlq_u32(v393, v397), vshlq_u32(v394, v398));
    v400 = vpaddq_s32(v395, v396);
    v401.i64[0] = v399.u32[0];
    v401.i64[1] = v399.u32[1];
    v402 = v401;
    v401.i64[0] = v399.u32[2];
    v401.i64[1] = v399.u32[3];
    v403 = v401;
    v401.i64[0] = v400.u32[0];
    v401.i64[1] = v400.u32[1];
    v404 = v401;
    v401.i64[0] = v400.u32[2];
    v401.i64[1] = v400.u32[3];
    v405 = vzip1q_s64(0, v404);
    v406 = vzip1q_s64(0, v401);
    v407 = vpaddq_s64(vshlq_u64(v402, v405), vshlq_u64(v403, v406));
    v408 = vpaddq_s64(v404, v401);
    v409 = (v385 + v370.i64[1]) & 0x3F;
    v410 = (v407.i64[0] << (v385 + v370.i8[8])) | v387;
    if ((v408.i64[0] + v409) >= 0x40)
    {
      *(v257 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      if (v409)
      {
        v410 = v407.i64[0] >> -v409;
      }

      else
      {
        v410 = 0;
      }
    }

    v411 = vceqq_s16(v82, v164);
    v412 = vaddq_s16(v173, v376);
    v413 = v408.i64[0] + v388;
    v414 = v410 | (v407.i64[1] << v413);
    if ((v413 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v407.i64[1] >> -(v413 & 0x3F);
      if ((v413 & 0x3F) == 0)
      {
        v414 = 0;
      }
    }

    v415 = vandq_s8(v158, v411);
    v416 = v413 + v408.i64[1];
    v417 = vandq_s8(v391, v412);
    v418 = vpaddq_s32(vshlq_u32(vmovl_u16(*v417.i8), v397), vshlq_u32(vmovl_high_u16(v417), v398));
    v419.i64[0] = v418.u32[0];
    v419.i64[1] = v418.u32[1];
    v420 = v419;
    v419.i64[0] = v418.u32[2];
    v419.i64[1] = v418.u32[3];
    v421 = vpaddq_s64(vshlq_u64(v420, v405), vshlq_u64(v419, v406));
    v422 = (v421.i64[0] << v416) | v414;
    if (v408.i64[0] + (v416 & 0x3F) >= 0x40)
    {
      *(v257 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v421.i64[0] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vaddq_s16(v176, v415);
    v424 = v408.i64[0] + v416;
    v425 = (v408.i64[0] + v416) & 0x3F;
    v426 = v422 | (v421.i64[1] << v424);
    if ((v424 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v421.i64[1] >> -v425;
      if (!v425)
      {
        v426 = 0;
      }
    }

    v427 = v424 + v408.i64[1];
    v428.i64[0] = 0xF000F000F000FLL;
    v428.i64[1] = 0xF000F000F000FLL;
    v429.i64[0] = -1;
    v429.i64[1] = -1;
    v430 = vshlq_u16(v429, vaddq_s16(v164, v428));
    v431 = vandq_s8(v430, v423);
    v432 = vmovl_u16(*v431.i8);
    v433 = vmovl_high_u16(v431);
    v434 = vmovl_u16(*v164.i8);
    v435 = vmovl_high_u16(v164);
    v436 = vtrn1q_s32(0, v434);
    v437 = vtrn1q_s32(0, v435);
    v438 = vpaddq_s32(vshlq_u32(v432, v436), vshlq_u32(v433, v437));
    v439 = vpaddq_s32(v434, v435);
    v440.i64[0] = v438.u32[0];
    v440.i64[1] = v438.u32[1];
    v441 = v440;
    v440.i64[0] = v438.u32[2];
    v440.i64[1] = v438.u32[3];
    v442 = v440;
    v440.i64[0] = v439.u32[0];
    v440.i64[1] = v439.u32[1];
    v443 = v440;
    v440.i64[0] = v439.u32[2];
    v440.i64[1] = v439.u32[3];
    v444 = vzip1q_s64(0, v443);
    v445 = vzip1q_s64(0, v440);
    v446 = vpaddq_s64(vshlq_u64(v441, v444), vshlq_u64(v442, v445));
    v447 = vpaddq_s64(v443, v440);
    v448 = (v424 + v408.i64[1]) & 0x3F;
    v449 = (v446.i64[0] << (v424 + v408.i8[8])) | v426;
    if ((v447.i64[0] + v448) > 0x3F)
    {
      *(v257 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      if (v448)
      {
        v449 = v446.i64[0] >> -v448;
      }

      else
      {
        v449 = 0;
      }
    }

    v450 = vaddq_s16(v174, v415);
    v451 = v447.i64[0] + v427;
    v452 = v449 | (v446.i64[1] << v451);
    if ((v451 & 0x3F) + v447.i64[1] >= 0x40)
    {
      *(v257 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v446.i64[1] >> -(v451 & 0x3F);
      if ((v451 & 0x3F) == 0)
      {
        v452 = 0;
      }
    }

    v453 = v451 + v447.i64[1];
    v454 = vandq_s8(v430, v450);
    v455 = vpaddq_s32(vshlq_u32(vmovl_u16(*v454.i8), v436), vshlq_u32(vmovl_high_u16(v454), v437));
    v456.i64[0] = v455.u32[0];
    v456.i64[1] = v455.u32[1];
    v457 = v456;
    v456.i64[0] = v455.u32[2];
    v456.i64[1] = v455.u32[3];
    v458 = vpaddq_s64(vshlq_u64(v457, v444), vshlq_u64(v456, v445));
    v459 = (v458.i64[0] << v453) | v452;
    if (v447.i64[0] + (v453 & 0x3F) >= 0x40)
    {
      *(v257 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
      v459 = v458.i64[0] >> -(v453 & 0x3F);
      if ((v453 & 0x3F) == 0)
      {
        v459 = 0;
      }
    }

    v460 = v447.i64[0] + v453;
    v461 = (v447.i64[0] + v453) & 0x3F;
    v462 = v459 | (v458.i64[1] << (v447.i8[0] + v453));
    if ((v461 + v447.i64[1]) >= 0x40)
    {
      *(v257 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
      v462 = v458.i64[1] >> -v461;
      if (!v461)
      {
        v462 = 0;
      }
    }

    v463 = v460 + v447.i64[1];
    if ((v463 & 0x3F) != 0)
    {
      *(v257 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
    }

    result = (v463 - v258 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    v11 = a6;
    if (a5 > 3)
    {
      v14 = a5 & 0x7C;
      if (a5 == v14)
      {
        v15 = 0;
        v16 = &v64;
        do
        {
          v17 = a3;
          v18 = v16;
          v19 = a5;
          do
          {
            v20 = *v17++;
            v21 = vshrq_n_u32(v20, 4uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF0FFF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF0FFF;
            *v18 = v21.i32[2] & 0xFFFF0FFF;
            v18[4] = v21.i32[3] & 0xFFFF0FFF;
            v18 += 16;
            v19 -= 4;
          }

          while (v19);
          ++v15;
          v16 = (v16 + 4);
          a3 = (a3 + a4);
        }

        while (v15 != a6);
      }

      else
      {
        v22 = 0;
        v23 = &v62;
        v24 = &v64;
        do
        {
          v25 = a3;
          v26 = v24;
          v27 = a5 & 0x7C;
          do
          {
            v28 = *v25++;
            v29 = vshrq_n_u32(v28, 4uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF0FFF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF0FFF;
            *v26 = v29.i32[2] & 0xFFFF0FFF;
            v26[4] = v29.i32[3] & 0xFFFF0FFF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 4) & 0xFFF0FFF;
            ++v30;
            --v31;
          }

          while (v31);
          ++v22;
          v24 = (v24 + 4);
          a3 = (a3 + a4);
          v23 = (v23 + 4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v12 = &a3->i32[2];
      v13 = &v63;
      do
      {
        *(v13 - 4) = (*(v12 - 2) >> 4) & 0xFFF0FFF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 4) & 0xFFF0FFF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 4) & 0xFFF0FFF;
          }
        }

        v12 = (v12 + a4);
        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  v46 = v62;
  v47 = WORD1(v62);
  v48 = v63;
  v49 = WORD1(v63);
  v50 = WORD2(v62);
  v51 = WORD3(v62);
  v52 = WORD2(v63);
  v53 = WORD3(v63);
  v54 = v64;
  v55 = WORD1(v64);
  v56 = v65;
  v57 = WORD1(v65);
  v58 = WORD2(v64);
  v59 = WORD3(v64);
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = WORD2(v65);
  v61 = WORD3(v65);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = WORD4(v62);
  v47 = WORD5(v62);
  v48 = WORD4(v63);
  v49 = WORD5(v63);
  v50 = WORD6(v62);
  v51 = HIWORD(v62);
  v52 = WORD6(v63);
  v53 = HIWORD(v63);
  v54 = WORD4(v64);
  v55 = WORD5(v64);
  v56 = WORD4(v65);
  v57 = WORD5(v65);
  v58 = WORD6(v64);
  v59 = HIWORD(v64);
  v60 = WORD6(v65);
  v61 = HIWORD(v65);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 20, &v46, a7, v32, v37);
  v46 = v66;
  v47 = WORD1(v66);
  v48 = v67;
  v49 = WORD1(v67);
  v50 = WORD2(v66);
  v51 = WORD3(v66);
  v52 = WORD2(v67);
  v53 = WORD3(v67);
  v54 = v68;
  v55 = WORD1(v68);
  v56 = v69;
  v57 = WORD1(v69);
  v58 = WORD2(v68);
  v59 = WORD3(v68);
  if (a5 >= 8)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = WORD2(v69);
  v61 = WORD3(v69);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 40, &v46, a7, v39, v34);
  v46 = WORD4(v66);
  v47 = WORD5(v66);
  v48 = WORD4(v67);
  v49 = WORD5(v67);
  v50 = WORD6(v66);
  v51 = HIWORD(v66);
  v52 = WORD6(v67);
  v53 = HIWORD(v67);
  v54 = WORD4(v68);
  v55 = WORD5(v68);
  v56 = WORD4(v69);
  v57 = WORD5(v69);
  v58 = WORD6(v68);
  v59 = HIWORD(v68);
  v60 = WORD6(v69);
  v61 = HIWORD(v69);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 60, &v46, a7, v39, v37);
  if (v40)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v38)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  if (result)
  {
    v44 = -8;
  }

  else
  {
    v44 = -16;
  }

  *a2 = v44 | v42 | v36 | v43;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v347 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v296 = v7;
  v8 = a4 < 2 || a5 == 0;
  v295 = v8;
  v9 = a4 < 2 || a5 < 2;
  v294 = v9;
  v10 = a4 < 3 || a5 == 0;
  v293 = v10;
  v11 = a4 < 3 || a5 < 2;
  v292 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v291 = v6;
  v12 = a4 < 4 || a5 < 2;
  v290 = v12;
  v13 = &v329;
  v14 = &v331;
  v15 = &v335;
  v16 = &v339;
  v17 = &v343;
  v18 = &v345;
  v19 = &v314;
  v20 = v312;
  v21 = &v310;
  v22 = &v308;
  v23 = &v306;
  v24 = v304;
  v25 = 1;
  v26 = &v333;
  v27 = &v337;
  v28 = &v341;
  v289 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)6,(AGXTextureFootprint)3>::compBits[v5];
    *v19 = v32;
    if (v32 <= 11)
    {
      if (v32 == 2)
      {
        v30 = 5;
      }

      else
      {
        v30 = v32 == 10;
      }
    }

    else
    {
      switch(v32)
      {
        case 12:
          v30 = 2;
          break;
        case 16:
          v30 = 3;
          break;
        case 32:
          v30 = 4;
          break;
      }
    }

    *v23 = v30;
    v33 = 1 << (v32 - 1);
    *v24 = v33;
    v34 = *(a2 + 4 * v5);
    if (a3 == 1)
    {
      v34 ^= v33;
      if (v34 == 1)
      {
        v34 = 0;
      }

      *v13 = v34;
      v43 = (a2 + 4 * v5);
      if ((v43[2] ^ v33) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v43[2] ^ v33;
      }

      *v14 = v36;
      if ((v43[4] ^ v33) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43[4] ^ v33;
      }

      *v26 = v37;
      if ((v43[6] ^ v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v43[6] ^ v33;
      }

      *v15 = v38;
      v39 = v43[8] ^ v33;
      if (v39 == 1)
      {
        v39 = 0;
      }

      *v27 = v39;
      if ((v43[10] ^ v33) == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v43[10] ^ v33;
      }

      *v16 = v40;
      if ((v43[12] ^ v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43[12] ^ v33;
      }

      *v28 = v41;
      v44 = v43[14] ^ v33;
      if (v44 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v44;
      }
    }

    else if (a3 == 3)
    {
      v34 ^= v33;
      *v13 = v34;
      v35 = (a2 + 4 * v5);
      v36 = v35[2] ^ v33;
      *v14 = v36;
      v37 = v35[4] ^ v33;
      *v26 = v37;
      v38 = v35[6] ^ v33;
      *v15 = v38;
      v39 = v35[8] ^ v33;
      *v27 = v39;
      v40 = v35[10] ^ v33;
      *v16 = v40;
      v41 = v35[12] ^ v33;
      *v28 = v41;
      v42 = v35[14] ^ v33;
    }

    else
    {
      *v13 = v34;
      v45 = (a2 + 4 * v5);
      v36 = v45[2];
      *v14 = v36;
      v37 = v45[4];
      *v26 = v37;
      v38 = v45[6];
      *v15 = v38;
      v39 = v45[8];
      *v27 = v39;
      v40 = v45[10];
      *v16 = v40;
      v41 = v45[12];
      *v28 = v41;
      v42 = v45[14];
    }

    *v17 = v42;
    *v21 = v34;
    *v20 = v34;
    *v22 = 0;
    if (v295)
    {
      v46 = v34;
    }

    else
    {
      v46 = v34;
      if (v36 < v34)
      {
        *v22 = 1;
        *v20 = v36;
        v46 = v36;
      }

      if (v34 >= v36)
      {
        v47 = v21;
      }

      else
      {
        v47 = v14;
      }

      v34 = *v47;
      *v21 = v34;
    }

    a2 = v29;
    if (v296)
    {
      if (v294)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v37 < v46)
      {
        *v22 = 2;
        *v20 = v37;
        v46 = v37;
      }

      if (v34 >= v37)
      {
        v48 = v21;
      }

      else
      {
        v48 = v26;
      }

      v34 = *v48;
      *v21 = v34;
      if (v294)
      {
LABEL_69:
        if (v293)
        {
          goto LABEL_70;
        }

        goto LABEL_84;
      }
    }

    if (v38 < v46)
    {
      *v22 = 3;
      *v20 = v38;
      v46 = v38;
    }

    if (v34 >= v38)
    {
      v49 = v21;
    }

    else
    {
      v49 = v15;
    }

    v34 = *v49;
    *v21 = v34;
    if (v293)
    {
LABEL_70:
      if (v291)
      {
        goto LABEL_96;
      }

LABEL_90:
      if (v40 < v46)
      {
        *v22 = 5;
        *v20 = v40;
        v46 = v40;
      }

      if (v34 >= v40)
      {
        v51 = v21;
      }

      else
      {
        v51 = v16;
      }

      v34 = *v51;
      *v21 = v34;
      goto LABEL_96;
    }

LABEL_84:
    if (v39 < v46)
    {
      *v22 = 4;
      *v20 = v39;
      v46 = v39;
    }

    if (v34 >= v39)
    {
      v50 = v21;
    }

    else
    {
      v50 = v27;
    }

    v34 = *v50;
    *v21 = v34;
    if (!v291)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v289;
    if (!v292)
    {
      if (v41 < v46)
      {
        *v22 = 6;
        *v20 = v41;
        v46 = v41;
      }

      if (v34 >= v41)
      {
        v52 = v21;
      }

      else
      {
        v52 = v28;
      }

      v34 = *v52;
      *v21 = v34;
    }

    if (!v290)
    {
      if (v42 < v46)
      {
        *v22 = 7;
        *v20 = v42;
        v46 = v42;
      }

      if (v34 >= v42)
      {
        v53 = v21;
      }

      else
      {
        v53 = v17;
      }

      v34 = *v53;
      *v21 = *v53;
    }

    v54 = v34 - v46;
    v55 = __clz(v34 - v46);
    v56 = 32 - v55;
    if (v32 <= 11)
    {
      if (v32 != 2)
      {
        if (v32 == 8)
        {
          v58 = 1;
          goto LABEL_133;
        }

        if (v32 == 10)
        {
          if (v55 - 29 < 3)
          {
            v56 = 3;
          }

          goto LABEL_132;
        }

        goto LABEL_125;
      }

      v57 = v55 == 31;
      goto LABEL_130;
    }

    if (v32 != 12)
    {
      if (v32 != 16)
      {
        if (v32 == 32)
        {
          v56 -= v56 >> 1;
LABEL_132:
          v58 = -1;
          goto LABEL_133;
        }

LABEL_125:
        v58 = 0;
        goto LABEL_133;
      }

      v57 = v55 == 31 && v34 == 0xFFFF;
LABEL_130:
      if (v57)
      {
        v56 = 2;
      }

      goto LABEL_132;
    }

    if ((v55 & 0x3C) == 0x1C)
    {
      v56 = 4;
    }

    v58 = -2;
LABEL_133:
    v59 = v56 + v58;
    v60 = v59 & ~(v59 >> 31);
    if (v34 == v46 && (v32 - 8) <= 4 && v59 <= 2)
    {
      if (v46)
      {
        v60 = (v46 ^ (-1 << v32)) != 0xFFFFFFFF || v32 > 0xB;
      }

      else
      {
        v60 = 0;
      }
    }

    *v18 = v60;
    if ((v289 | 2) == 3)
    {
      v61 = 0;
      if (v46 < v33 && v34 >= v33)
      {
        v61 = kDQuadParamTable[160 * v30 + 8 + 10 * v60] == 0;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= kDquadTransition[v30] || v61)
    {
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v30 + 1);
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = -2;
      }

      v68 = v32 >= v62;
      v64 = v32 - v62;
      v91 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v91)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v91 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v91 || v67 >= v55;
      if (v68)
      {
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v18 = ++v60;
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      v69 = kDquadMaxMode[v30];
      if (v69 >= v60)
      {
        v69 = v60;
      }

      *v18 = v69;
    }

LABEL_22:
    v25 = 0;
    v19 = &v313;
    v20 = v311;
    v21 = &v309;
    v22 = &v307;
    v23 = &v305;
    v24 = v303;
    v14 = &v332;
    v13 = &v330;
    v15 = &v336;
    v26 = &v334;
    v16 = &v340;
    v27 = &v338;
    v17 = &v344;
    v28 = &v342;
    v18 = &v346;
    v5 = 1u;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    v70 = a4 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v283 = v71;
  v72 = v306;
  v73 = v345;
  v74 = v346;
  v76 = v346 >= v345;
  v77 = v305;
  v78 = kDQuadParamTable[160 * v305 + 6 + 10 * v346];
  v317 = kDQuadParamTable[160 * v306 + 6 + 10 * v345];
  v75 = v317;
  v318 = v78;
  v319[0] = v317;
  v319[1] = v78;
  if (*(&v345 + (v346 >= v345)) == *(&v345 + (v346 < v345)))
  {
    v79 = v317;
  }

  else
  {
    v80 = v319[v346 < v345];
    v79 = v317;
    if (v80 >= 1)
    {
      *(&v317 + (v346 < v345)) = 0;
      *(&v317 + v76) += v80;
      v79 = v317;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 1);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v302 = v85;
  v86 = v81 + v83;
  v300 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v300 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v302 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v300 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v289 == 4)
  {
    v93 = 1 << (v314 - 1);
    if (v72 == 3)
    {
      v94 = -31745;
    }

    else
    {
      v94 = -1;
    }

    if (v72 == 4)
    {
      v95 = -2139095041;
    }

    else
    {
      v95 = v94;
    }

    if (v283)
    {
      if (v295)
      {
        goto LABEL_198;
      }

LABEL_372:
      if ((v331 | v95) == 0xFFFFFFFF || v331 == v93)
      {
        v92 = 1;
      }

      if (!v296)
      {
        goto LABEL_379;
      }

LABEL_199:
      if (v294)
      {
        goto LABEL_200;
      }

LABEL_386:
      if ((v335 | v95) == 0xFFFFFFFF || v335 == v93)
      {
        v92 = 1;
      }

      if (!v293)
      {
        goto LABEL_393;
      }

LABEL_201:
      if (v291)
      {
        goto LABEL_202;
      }

LABEL_400:
      if ((v339 | v95) == 0xFFFFFFFF || v339 == v93)
      {
        v92 = 1;
      }

      if (!v292)
      {
        goto LABEL_407;
      }

LABEL_203:
      if (!v290)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v329 | v95) == 0xFFFFFFFF || v329 == v93)
      {
        v92 = 1;
      }

      if (!v295)
      {
        goto LABEL_372;
      }

LABEL_198:
      if (v296)
      {
        goto LABEL_199;
      }

LABEL_379:
      if ((v333 | v95) == 0xFFFFFFFF || v333 == v93)
      {
        v92 = 1;
      }

      if (!v294)
      {
        goto LABEL_386;
      }

LABEL_200:
      if (v293)
      {
        goto LABEL_201;
      }

LABEL_393:
      if ((v337 | v95) == 0xFFFFFFFF || v337 == v93)
      {
        v92 = 1;
      }

      if (!v291)
      {
        goto LABEL_400;
      }

LABEL_202:
      if (v292)
      {
        goto LABEL_203;
      }

LABEL_407:
      if ((v341 | v95) == 0xFFFFFFFF || v341 == v93)
      {
        v92 = 1;
      }

      if (!v290)
      {
LABEL_204:
        if ((v343 | v95) == 0xFFFFFFFF || v343 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 4;
  v97 = v283;
  if (v91)
  {
    v97 = 1;
  }

  v98 = v97 | v92;
  v99 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v100 = *(v99 + 1);
  v101 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v77 + 1);
  v102 = v99[5];
  v103 = v99[4] + v101;
  v301 = v103;
  v104 = v102 + v101;
  v299 = v102 + v101;
  v105 = v318 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v299 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v301 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v299 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v279 = v73;
  if (v289 == 4)
  {
    v108 = 1 << (v313 - 1);
    if (v77 == 3)
    {
      v109 = -31745;
    }

    else
    {
      v109 = -1;
    }

    if (v77 == 4)
    {
      v110 = -2139095041;
    }

    else
    {
      v110 = v109;
    }

    if (v283)
    {
      if (v295)
      {
        goto LABEL_231;
      }

LABEL_422:
      v219 = (v332 | v110) == 0xFFFFFFFF || v332 == v108;
      v98 |= v219;
      if (!v296)
      {
        goto LABEL_429;
      }

LABEL_232:
      if (v294)
      {
        goto LABEL_233;
      }

LABEL_436:
      v223 = (v336 | v110) == 0xFFFFFFFF || v336 == v108;
      v98 |= v223;
      if (!v293)
      {
        goto LABEL_443;
      }

LABEL_234:
      if (v291)
      {
        goto LABEL_235;
      }

LABEL_450:
      v227 = (v340 | v110) == 0xFFFFFFFF || v340 == v108;
      v98 |= v227;
      if (v292)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v342 | v110) == 0xFFFFFFFF || v342 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v217 = (v330 | v110) == 0xFFFFFFFF || v330 == v108;
    v98 |= v217;
    if (!v295)
    {
      goto LABEL_422;
    }

LABEL_231:
    if (v296)
    {
      goto LABEL_232;
    }

LABEL_429:
    v221 = (v334 | v110) == 0xFFFFFFFF || v334 == v108;
    v98 |= v221;
    if (!v294)
    {
      goto LABEL_436;
    }

LABEL_233:
    if (v293)
    {
      goto LABEL_234;
    }

LABEL_443:
    v225 = (v338 | v110) == 0xFFFFFFFF || v338 == v108;
    v98 |= v225;
    if (!v291)
    {
      goto LABEL_450;
    }

LABEL_235:
    if (!v292)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v333;
    v114 = v321;
    if (!v290)
    {
      v116 = (v344 | v110) == 0xFFFFFFFF || v344 == v108;
      v98 |= v116;
    }

    v281 = v98;
  }

  else
  {
    v281 = v98;
    v113 = &v333;
    v114 = v321;
  }

  v117 = 0;
  v118 = v283;
  if (v100 >> v104 > 4)
  {
    v118 = 1;
  }

  v280 = v118;
  v298 = 0;
  v297 = 0;
  v119 = &v314;
  v120 = v312;
  v316 = 0;
  v288 = &v308;
  v121 = &v345;
  v122 = &v306;
  v286 = v304;
  v123 = &v302;
  v124 = &v300;
  memset(v315, 0, sizeof(v315));
  v125 = &v298;
  v126 = 1;
  v127 = v320;
  v128 = &v329;
  v129 = &v324 + 4;
  v130 = &v323 + 4;
  v131 = &v324;
  v133 = &v322 + 4;
  v132 = &v323;
  v134 = &v335;
  v135 = &v322;
  v136 = &v331;
  v138 = &v339;
  v137 = &v337;
  v140 = &v343;
  v139 = &v341;
  do
  {
    v141 = 0;
    v142 = 0;
    v143 = *v119;
    if (v143 >= *v123)
    {
      v144 = *v123;
    }

    else
    {
      v144 = v143;
    }

    *v123 = v144;
    v145 = &kDQuadParamTable[160 * *v122 + 10 * *v121];
    if (v145[5])
    {
      v146 = v143;
    }

    else
    {
      v146 = 0;
    }

    v147 = *v124;
    if (v146 < *v124)
    {
      v147 = v146;
    }

    v287 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v283)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v295)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v296)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v294)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v293)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v291)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v292)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v290)
    {
      v159 = 0;
    }

    *v129 = v159;
    if (v151 <= 1)
    {
      v160 = 1;
    }

    else
    {
      v160 = v149 >> v147;
    }

    v161 = &v320[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v288;
    v164 = v315 + 28 * v117;
    v165 = &byte_29D2F3081;
    do
    {
      if (v163 != v141)
      {
        if (v147)
        {
          v166 = *&v161[v141] / v160;
        }

        else
        {
          LODWORD(v166) = 0;
        }

        *&v164[4 * v142] = v166;
        if (v151 >= 2)
        {
          v167 = *&v161[v141];
          if (v167)
          {
            if (v167 / v160 * v160 == v167 && ((v167 / v160) & 1) != 0)
            {
              if (v150 || v166 != 1)
              {
                if ((v289 | 2) != 3 || (v169 = *(&v329 + v162), v170 = *v286, v169 != v170) && ((v289 | 2) != 3 || v160 + v170 != v169))
                {
                  LODWORD(v166) = v166 - 1;
                  *&v164[4 * v142] = v166;
                }
              }

              else
              {
                LODWORD(v166) = 1;
              }
            }
          }
        }

        if (v166 >> v147 || (*(&v329 + v162) ^ v148) == 0xFFFFFFFF)
        {
          *&v164[4 * v142] = ~(-1 << v147);
        }

        if (*v165 >= a5 || *(v165 - 1) >= a4)
        {
          *&v164[4 * v142] = 0;
        }

        ++v142;
      }

      v141 += 4;
      v162 += 8;
      v165 += 2;
    }

    while (v141 != 32);
    v126 = 0;
    v119 = &v313;
    v120 = v311;
    v288 = &v307;
    v122 = &v305;
    v286 = v303;
    v123 = &v301;
    v124 = &v299;
    v125 = &v297;
    v114 = &v325 + 4;
    v127 = &v325;
    v133 = &v326 + 4;
    v135 = &v326;
    v130 = &v327 + 4;
    v132 = &v327;
    v129 = &v328 + 4;
    v131 = &v328;
    v136 = &v332;
    v128 = &v330;
    v134 = &v336;
    v113 = &v334;
    v138 = &v340;
    v137 = &v338;
    v140 = &v344;
    v139 = &v342;
    v121 = &v346;
    v117 = 1;
  }

  while ((v287 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if ((v280 | v281))
  {
    v173 = 0;
    v174 = 0;
    v175 = v314;
    v176 = v314 - 2;
    v177 = v313;
    v178 = v313 - 2;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v329 + 2 * v173) >> 2;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v183 = 0;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v175 != 2 && v179 - v172 + (v174 << 6) + v176 <= 0xA0)
      {
        v184 = 0;
        v185 = v176;
        do
        {
          v186 = 64 - v179;
          if (64 - v179 >= v185)
          {
            v186 = v185;
          }

          v171[v174] |= ((v183 >> v184) & ~(-1 << v186)) << v179;
          v184 += v186;
          v187 = v186 + v179;
          v174 += v187 >> 6;
          v179 = v187 & 0x3F;
          v185 -= v186;
        }

        while (v185);
      }

LABEL_331:
      if (v182)
      {
        v188 = 0;
        if (v178 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v188 = *(&v329 + 2 * v173 + 1) >> 2;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 2 && v179 - v172 + (v174 << 6) + v178 <= 0xA0)
          {
            v189 = 0;
            v190 = v178;
            do
            {
              v191 = 64 - v179;
              if (64 - v179 >= v190)
              {
                v191 = v190;
              }

              v171[v174] |= ((v188 >> v189) & ~(-1 << v191)) << v179;
              v189 += v191;
              v192 = v191 + v179;
              v174 += v192 >> 6;
              v179 = v192 & 0x3F;
              v190 -= v191;
            }

            while (v190);
          }
        }
      }

      if (++v173 == 8)
      {
        return (v280 | v281) & 1;
      }
    }
  }

  if (v279 <= 3)
  {
    v193 = 0;
  }

  else
  {
    v193 = (v279 + 5) & 7;
  }

  if (v279 <= 3)
  {
    v194 = v279;
  }

  else
  {
    v194 = 0;
  }

  v195 = (v193 << v172) | *v171;
  *v171 = v195;
  v196 = v172 | 3;
  v197 = v346;
  v198 = v346 < 4;
  if (v346 <= 3)
  {
    v199 = v346;
  }

  else
  {
    v199 = 0;
  }

  if ((v196 - v172) <= 0x9D)
  {
    if (v346 <= 3)
    {
      v200 = 0;
    }

    else
    {
      v200 = (v346 + 5) & 7;
    }

    *v171 = (v200 << v196) | v195;
    v196 = v172 | 6;
  }

  if (v279 <= 3)
  {
    v228 = 2 * (v279 < 4);
    if ((v196 - v172 + v228) <= 0xA0)
    {
      v201 = 0;
      v229 = 0;
      v230 = 2 * (v279 < 4);
      do
      {
        v231 = 64 - v196;
        if (64 - v196 >= v230)
        {
          v231 = v230;
        }

        v171[v201] |= ((v194 >> v229) & ~(-1 << v231)) << v196;
        v229 += v231;
        v232 = v231 + v196;
        v201 += v232 >> 6;
        v196 = v232 & 0x3F;
        v230 -= v231;
      }

      while (v230);
    }

    else
    {
      v201 = 0;
    }

    v202 = v228 + 6;
    if (v197 > 3)
    {
      goto LABEL_465;
    }

LABEL_358:
    v203 = (2 * v198);
    if (v196 - v172 + (v201 << 6) + v203 <= 0xA0)
    {
      v204 = 0;
      v205 = v203;
      do
      {
        v206 = 64 - v196;
        if (64 - v196 >= v205)
        {
          v206 = v205;
        }

        v171[v201] |= ((v199 >> v204) & ~(-1 << v206)) << v196;
        v204 += v206;
        v207 = v206 + v196;
        v201 += v207 >> 6;
        v196 = v207 & 0x3F;
        v205 -= v206;
      }

      while (v205);
    }

    v202 += v203;
    v208 = v314;
    if (!v279)
    {
      goto LABEL_475;
    }

LABEL_466:
    v233 = v302;
    if (v302 <= 0x100 && v302 && v196 - v172 + (v201 << 6) + v302 <= 0xA0)
    {
      v234 = 0;
      v235 = v298 >> (v208 - v302);
      v236 = v302;
      do
      {
        v237 = 64 - v196;
        if (64 - v196 >= v236)
        {
          v237 = v236;
        }

        v171[v201] |= ((v235 >> v234) & ~(-1 << v237)) << v196;
        v234 += v237;
        v238 = v237 + v196;
        v201 += v238 >> 6;
        v196 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v202 += v233;
    v239 = v313;
    if (!v197)
    {
      goto LABEL_531;
    }

LABEL_478:
    v240 = v301;
    if (v301 <= 0x100 && v301 && v196 - v172 + (v201 << 6) + v301 <= 0xA0)
    {
      v241 = 0;
      v242 = v297 >> (v239 - v301);
      v243 = v301;
      do
      {
        v244 = 64 - v196;
        if (64 - v196 >= v243)
        {
          v244 = v243;
        }

        v171[v201] |= ((v242 >> v241) & ~(-1 << v244)) << v196;
        v241 += v244;
        v245 = v244 + v196;
        v201 += v245 >> 6;
        v196 = v245 & 0x3F;
        v243 -= v244;
      }

      while (v243);
    }

    v202 += v240;
  }

  else
  {
    v201 = 0;
    v202 = 6;
    if (v197 <= 3)
    {
      goto LABEL_358;
    }

LABEL_465:
    v208 = v314;
    if (v279)
    {
      goto LABEL_466;
    }

LABEL_475:
    if (v208 == 2 || v208 >= 0x10)
    {
      goto LABEL_466;
    }

    v239 = v313;
    if (v197)
    {
      goto LABEL_478;
    }

LABEL_531:
    if (v239 == 2 || v239 >= 0x10)
    {
      goto LABEL_478;
    }
  }

  v246 = v300;
  if (v300)
  {
    if ((v196 - v172 + (v201 << 6) + 3) <= 0xA0)
    {
      v247 = 0;
      v248 = v308;
      v249 = 3;
      do
      {
        v250 = 64 - v196;
        if (64 - v196 >= v249)
        {
          v250 = v249;
        }

        v171[v201] |= ((v248 >> v247) & ~(-1 << v250)) << v196;
        v247 += v250;
        v251 = v250 + v196;
        v201 += v251 >> 6;
        v196 = v251 & 0x3F;
        v249 -= v250;
      }

      while (v249);
    }

    v202 += 3;
  }

  v252 = v299;
  if (v299)
  {
    if ((v196 - v172 + (v201 << 6) + 3) <= 0xA0)
    {
      v253 = 0;
      v254 = v307;
      v255 = 3;
      do
      {
        v256 = 64 - v196;
        if (64 - v196 >= v255)
        {
          v256 = v255;
        }

        v171[v201] |= ((v254 >> v253) & ~(-1 << v256)) << v196;
        v253 += v256;
        v257 = v256 + v196;
        v201 += v257 >> 6;
        v196 = v257 & 0x3F;
        v255 -= v256;
      }

      while (v255);
    }

    v202 += 3;
  }

  v258 = 160 - v202;
  v259 = (160 - v202) / 7u;
  v260 = v258 % 7;
  if ((v260 - 257) >= 0xFFFFFF00 && v196 - v172 + (v201 << 6) + v260 <= 0xA0)
  {
    do
    {
      v261 = 64 - v196;
      if (64 - v196 >= v260)
      {
        v261 = v260;
      }

      v262 = v261 + v196;
      v201 += v262 >> 6;
      v196 = v262 & 0x3F;
      v260 -= v261;
    }

    while (v260);
  }

  v263 = 0;
  v264 = v252 + v246;
  while (2)
  {
    if (v246 && v246 <= 0x100 && v196 - v172 + (v201 << 6) + v246 <= 0xA0)
    {
      v265 = 0;
      v266 = *(v315 + v263);
      v267 = v246;
      do
      {
        v268 = 64 - v196;
        if (64 - v196 >= v267)
        {
          v268 = v267;
        }

        v171[v201] |= ((v266 >> v265) & ~(-1 << v268)) << v196;
        v265 += v268;
        v269 = v268 + v196;
        v201 += v269 >> 6;
        v196 = v269 & 0x3F;
        v267 -= v268;
      }

      while (v267);
    }

    if (v252)
    {
      if (v252 <= 0x100 && v196 - v172 + (v201 << 6) + v252 <= 0xA0)
      {
        v270 = 0;
        v271 = *(&v315[1] + v263 + 3);
        v272 = v252;
        do
        {
          v273 = 64 - v196;
          if (64 - v196 >= v272)
          {
            v273 = v272;
          }

          v171[v201] |= ((v271 >> v270) & ~(-1 << v273)) << v196;
          v270 += v273;
          v274 = v273 + v196;
          v201 += v274 >> 6;
          v196 = v274 & 0x3F;
          v272 -= v273;
        }

        while (v272);
      }

      v275 = v259 - v264;
      if (v259 != v264)
      {
LABEL_524:
        if (v275 <= 0x100 && v196 - v172 + (v201 << 6) + v275 <= 0xA0)
        {
          do
          {
            v276 = 64 - v196;
            if (64 - v196 >= v275)
            {
              v276 = v275;
            }

            v277 = v276 + v196;
            v201 += v277 >> 6;
            v196 = v277 & 0x3F;
            v275 -= v276;
          }

          while (v275);
        }
      }
    }

    else
    {
      v275 = v259 - v246;
      if (v259 != v246)
      {
        goto LABEL_524;
      }
    }

    if (++v263 != 7)
    {
      continue;
    }

    return (v280 | v281) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 11;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 151) >= 0xFFFFFFFFFFFFFF5FLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 10;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v4 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      v12 = 4 * (v13 & 0x3FF);
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 29 >> 31) + 2) | v12;
    if (v12 == 4092)
    {
      v18 = 4095;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 2048 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 151) < 0xFFFFFFFFFFFFFF5FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 2048 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 4092)
        {
          v10 = 4095;
        }

        else
        {
          v10 |= (v10 << 29 >> 31) + 2;
        }
      }

      goto LABEL_3;
    }

    v20 = 0;
    v21 = 0;
    v22 = 10;
    do
    {
      v23 = 64 - v9;
      if (64 - v9 >= v22)
      {
        v23 = v22;
      }

      v20 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v23)) << v21;
      v21 += v23;
      v24 = v23 + v9;
      v4 += v24 >> 6;
      v9 = v24 & 0x3F;
      v22 -= v23;
    }

    while (v22);
    v10 = 4 * (v20 & 0x3FF);
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    result = v10 ^ v8;
    *(a2 + 8 * v3++ + 4) = result;
  }

  while (v3 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = 6;
  v8 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x9D)
  {
    v9 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x9D)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v6 & 7;
  if ((v6 & 7) != 0)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    if ((v9 - v4 - 159) >= 0xFFFFFFFFFFFFFF5FLL)
    {
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 2;
      do
      {
        v17 = 64 - v9;
        if (64 - v9 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v9;
        v12 += v18 >> 6;
        v9 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
      v13 = v14 & 3;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v7 = 8;
  }

  v19 = v11 + 3;
  if (!v11)
  {
    v19 = v13;
  }

  v170 = v19;
  if (v10)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if ((v9 - v4 + (v12 << 6) - 159) >= 0xFFFFFFFFFFFFFF5FLL)
    {
      v22 = 0;
      v23 = 0;
      v24 = 2;
      do
      {
        v25 = 64 - v9;
        if (64 - v9 >= v24)
        {
          v25 = v24;
        }

        v22 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v25)) << v23;
        v23 += v25;
        v26 = v25 + v9;
        v12 += v26 >> 6;
        v9 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v21 = v22 & 3;
    }

    else
    {
      v21 = 0;
    }

    v20 = 2;
  }

  if (v10)
  {
    v21 = v10 + 3;
  }

  v171 = v21;
  v28 = dword_29D2F35F0[10 * v21 + 6];
  v167 = dword_29D2F35F0[10 * v19 + 6];
  v27 = v167;
  v168 = v28;
  v169[0] = v167;
  v169[1] = v28;
  if (*(&v170 + (v21 >= v19)) == *(&v170 + (v21 < v19)))
  {
    v29 = v167;
  }

  else
  {
    v30 = v169[v21 < v19];
    v29 = v167;
    if (v30 >= 1)
    {
      *(&v167 + (v21 < v19)) = 0;
      *(&v167 + (v21 >= v19)) += v30;
      v29 = v167;
    }
  }

  v31 = kDQuadParamTable;
  v32 = &kDQuadParamTable[10 * v19];
  v33 = v32[324] + 3;
  v34 = v32[325];
  v35 = v34 + 3;
  v36 = v29 - v27;
  if (v36 < 0)
  {
    v37 = -v36;
    v38 = &kDQuadParamTable[10 * v19];
    if (v38[327] >= v37)
    {
      goto LABEL_41;
    }

    v35 = v34 + 2;
    if (v38[328])
    {
      goto LABEL_41;
    }

    v36 = -1;
  }

  else
  {
    if (!v36)
    {
      goto LABEL_41;
    }

    v35 += v36;
  }

  v33 += v36;
LABEL_41:
  if (v33 >= 0xC)
  {
    v39 = 12;
  }

  else
  {
    v39 = v33;
  }

  if (v34)
  {
    v40 = 12;
  }

  else
  {
    v40 = 0;
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = &kDQuadParamTable[10 * v21];
  v43 = v42[324] + 3;
  v44 = v42[325];
  v45 = v44 + 3;
  v46 = v168 - v28;
  if (v46 < 0)
  {
    v47 = -v46;
    v48 = &kDQuadParamTable[10 * v21];
    if (v48[327] >= v47)
    {
      goto LABEL_56;
    }

    v45 = v44 + 2;
    if (v48[328])
    {
      goto LABEL_56;
    }

    v46 = -1;
  }

  else
  {
    if (!v46)
    {
      goto LABEL_56;
    }

    v45 += v46;
  }

  v43 += v46;
LABEL_56:
  v49 = v7 + v20;
  if (v43 >= 0xC)
  {
    v50 = 12;
  }

  else
  {
    v50 = v43;
  }

  if (v44)
  {
    v51 = 12;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v45)
  {
    v52 = v45;
  }

  else
  {
    v52 = v51;
  }

  if (v19)
  {
    v53 = 0;
    if (v33 && (v9 - v4 + (v12 << 6) + v39) <= 0xA0)
    {
      v53 = 0;
      v54 = 0;
      v55 = v39;
      do
      {
        v56 = 64 - v9;
        if (64 - v9 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v9;
        v12 += v57 >> 6;
        v9 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
    }

    v58 = v53 << (12 - v39);
    v49 += v39;
    if (!v21)
    {
      goto LABEL_82;
    }

    goto LABEL_75;
  }

  v58 = 0;
  if (v21)
  {
LABEL_75:
    v59 = 0;
    if (v43 && (v9 - v4 + (v12 << 6) + v50) <= 0xA0)
    {
      v59 = 0;
      v60 = 0;
      v61 = v50;
      do
      {
        v62 = 64 - v9;
        if (64 - v9 >= v61)
        {
          v62 = v61;
        }

        v59 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v62)) << v60;
        v60 += v62;
        v63 = v62 + v9;
        v12 += v63 >> 6;
        v9 = v63 & 0x3F;
        v61 -= v62;
      }

      while (v61);
    }

    v21 = v59 << (12 - v50);
    v49 += v50;
  }

LABEL_82:
  v163 = 0;
  v164 = 0;
  if (v41)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0xA0)
    {
      v64 = 0;
      v65 = 0;
      v66 = 3;
      do
      {
        v67 = 64 - v9;
        if (64 - v9 >= v66)
        {
          v67 = v66;
        }

        v64 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v67)) << v65;
        v65 += v67;
        v68 = v67 + v9;
        v12 += v68 >> 6;
        v9 = v68 & 0x3F;
        v66 -= v67;
      }

      while (v66);
    }

    else
    {
      v64 = 0;
    }

    v164 = v64;
    v49 += 3;
  }

  if (v52)
  {
    if ((v9 - v4 + (v12 << 6) + 3) <= 0xA0)
    {
      v69 = 0;
      v70 = 0;
      v71 = 3;
      do
      {
        v72 = 64 - v9;
        if (64 - v9 >= v71)
        {
          v72 = v71;
        }

        v69 |= ((*(v3 + 8 * v12) >> v9) & ~(-1 << v72)) << v70;
        v70 += v72;
        v73 = v72 + v9;
        v12 += v73 >> 6;
        v9 = v73 & 0x3F;
        v71 -= v72;
      }

      while (v71);
    }

    else
    {
      v69 = 0;
    }

    v163 = v69;
    v49 += 3;
  }

  v74 = 0;
  v75 = a3 & 0xFFFFFFFD;
  v76 = 160 - v49;
  v77 = (160 - v49) / 7u;
  v78 = (v9 | (v12 << 6)) + v76 % 7;
  v166 = 0;
  memset(v165, 0, sizeof(v165));
  do
  {
    v80 = v78 >> 6;
    v81 = v78 & 0x3F;
    if (v41)
    {
      if (v81 - v4 + (v78 & 0xFFFFFFFFFFFFFFC0) + v41 <= 0xA0)
      {
        v82 = 0;
        v83 = 0;
        v84 = v41;
        do
        {
          v85 = 64 - v81;
          if (64 - v81 >= v84)
          {
            v85 = v84;
          }

          v82 |= ((*(v3 + 8 * v80) >> v81) & ~(-1 << v85)) << v83;
          v83 += v85;
          v86 = v85 + v81;
          v80 += v86 >> 6;
          v81 = v86 & 0x3F;
          v84 -= v85;
        }

        while (v84);
      }

      else
      {
        v82 = 0;
      }

      *(v165 + v74) = v82;
    }

    if (v52)
    {
      if (v81 - v4 + (v80 << 6) + v52 <= 0xA0)
      {
        v87 = 0;
        v88 = 0;
        v89 = v52;
        do
        {
          v90 = 64 - v81;
          if (64 - v81 >= v89)
          {
            v90 = v89;
          }

          v87 |= ((*(v3 + 8 * v80) >> v81) & ~(-1 << v90)) << v88;
          v88 += v90;
          v91 = v90 + v81;
          v80 += v91 >> 6;
          v81 = v91 & 0x3F;
          v89 -= v90;
        }

        while (v89);
      }

      else
      {
        v87 = 0;
      }

      *(&v165[1] + v74 + 3) = v87;
      v79 = v52 + v41;
    }

    else
    {
      v79 = v41;
    }

    v78 = (v81 | (v80 << 6)) + v77 - v79;
    ++v74;
  }

  while (v74 != 7);
  v92 = 0;
  v93 = &v170;
  v94 = &v164;
  v95 = 1;
  v96 = v165;
  v97 = v41;
  do
  {
    v100 = v95;
    v101 = *&v31[10 * *v93 + 322];
    if (v101 >> v97 <= 1)
    {
      v102 = 1;
    }

    else
    {
      v102 = v101 >> v97;
    }

    v103 = v102 >> 1;
    v104 = (1 << (12 - v39)) >> 1;
    if (v102 >> 1 < v104)
    {
      v104 = v102 >> 1;
    }

    v105 = v58;
    result = 2048;
    v107 = 2048 - v58;
    if (v58)
    {
      v108 = v104;
    }

    else
    {
      v108 = 0;
    }

    v109 = v58 == 2048;
    v39 = a2 + 4 * v92;
    if (v97)
    {
      v110 = v50;
      v111 = v31;
      v112 = v101 + v105;
      v113 = -1 << v97;
      v114 = *v94;
      v115 = v107 / v102;
      if (!*v94)
      {
        v119 = 0;
        v118 = v108;
        v117 = v109;
        goto LABEL_158;
      }

      v116 = *v96;
      v117 = v115 == v116;
      if (v105 | v116)
      {
        if (v112 >= 0x1000 && (v113 ^ v116) == -1)
        {
          v119 = 1;
          v118 = 4095;
LABEL_158:
          v122 = v118 + v105;
          if (a3 != 4 || (result = (v122 | 0x80000000) >> 22, v123 = 4095, result != 1022))
          {
            if (v122 >= 0x1000)
            {
              v123 = 4095;
            }

            else
            {
              v123 = v122;
            }
          }

          if (v117)
          {
            v124 = 0;
          }

          else
          {
            v124 = v123 ^ 0x800;
          }

          if (v75 != 1)
          {
            v124 = v123;
          }

          *(a2 + 4 * v92) = v124;
          if (v114 == 1)
          {
            v125 = v108;
            v126 = v109;
          }

          else
          {
            v127 = *(v165 + 7 * v92 + v119);
            v126 = v115 == v127;
            if (v105 | v127)
            {
              if (v112 >= 0x1000 && (v113 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 4095;
              }

              else
              {
                v125 = v103 + v102 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v119;
          }

          v128 = v125 + v105;
          if (a3 != 4 || (result = (v128 | 0x80000000) >> 22, v129 = 4095, result != 1022))
          {
            if (v128 >= 0x1000)
            {
              v129 = 4095;
            }

            else
            {
              v129 = v128;
            }
          }

          if (v126)
          {
            v130 = 0;
          }

          else
          {
            v130 = v129 ^ 0x800;
          }

          if (v75 != 1)
          {
            v130 = v129;
          }

          *(v39 + 8) = v130;
          if (v114 == 2)
          {
            v131 = v108;
            v132 = v109;
          }

          else
          {
            v133 = *(v165 + 7 * v92 + v119);
            v132 = v115 == v133;
            if (v105 | v133)
            {
              if (v112 >= 0x1000 && (v113 ^ v133) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v131 = 4095;
              }

              else
              {
                v131 = v103 + v102 * v133;
              }
            }

            else
            {
              v131 = 0;
            }

            ++v119;
          }

          v134 = v131 + v105;
          if (a3 != 4 || (result = (v134 | 0x80000000) >> 22, v135 = 4095, result != 1022))
          {
            if (v134 >= 0x1000)
            {
              v135 = 4095;
            }

            else
            {
              v135 = v134;
            }
          }

          if (v132)
          {
            v136 = 0;
          }

          else
          {
            v136 = v135 ^ 0x800;
          }

          if (v75 != 1)
          {
            v136 = v135;
          }

          *(v39 + 16) = v136;
          if (v114 == 3)
          {
            v137 = v108;
            v138 = v109;
          }

          else
          {
            v139 = *(v165 + 7 * v92 + v119);
            v138 = v115 == v139;
            if (v105 | v139)
            {
              if (v112 >= 0x1000 && (v113 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v137 = 4095;
              }

              else
              {
                v137 = v103 + v102 * v139;
              }
            }

            else
            {
              v137 = 0;
            }

            ++v119;
          }

          v140 = v137 + v105;
          if (a3 != 4 || (result = (v140 | 0x80000000) >> 22, v141 = 4095, result != 1022))
          {
            if (v140 >= 0x1000)
            {
              v141 = 4095;
            }

            else
            {
              v141 = v140;
            }
          }

          if (v138)
          {
            v142 = 0;
          }

          else
          {
            v142 = v141 ^ 0x800;
          }

          if (v75 != 1)
          {
            v142 = v141;
          }

          *(v39 + 24) = v142;
          if (v114 == 4)
          {
            v143 = v108;
            v144 = v109;
          }

          else
          {
            v145 = *(v165 + 7 * v92 + v119);
            v144 = v115 == v145;
            if (v105 | v145)
            {
              if (v112 >= 0x1000 && (v113 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v143 = 4095;
              }

              else
              {
                v143 = v103 + v102 * v145;
              }
            }

            else
            {
              v143 = 0;
            }

            ++v119;
          }

          v146 = v143 + v105;
          if (a3 != 4 || (result = (v146 | 0x80000000) >> 22, v147 = 4095, result != 1022))
          {
            if (v146 >= 0x1000)
            {
              v147 = 4095;
            }

            else
            {
              v147 = v146;
            }
          }

          if (v144)
          {
            v148 = 0;
          }

          else
          {
            v148 = v147 ^ 0x800;
          }

          if (v75 != 1)
          {
            v148 = v147;
          }

          *(v39 + 32) = v148;
          if (v114 == 5)
          {
            v149 = v108;
            v150 = v109;
          }

          else
          {
            v151 = *(v165 + 7 * v92 + v119);
            v150 = v115 == v151;
            if (v105 | v151)
            {
              if (v112 >= 0x1000 && (v113 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v149 = 4095;
              }

              else
              {
                v149 = v103 + v102 * v151;
              }
            }

            else
            {
              v149 = 0;
            }

            ++v119;
          }

          v152 = v149 + v105;
          if (a3 != 4 || (result = (v152 | 0x80000000) >> 22, v153 = 4095, result != 1022))
          {
            if (v152 >= 0x1000)
            {
              v153 = 4095;
            }

            else
            {
              v153 = v152;
            }
          }

          if (v150)
          {
            v154 = 0;
          }

          else
          {
            v154 = v153 ^ 0x800;
          }

          if (v75 != 1)
          {
            v154 = v153;
          }

          *(v39 + 40) = v154;
          if (v114 == 6)
          {
            v155 = v108;
            v156 = v109;
          }

          else
          {
            v157 = *(v165 + 7 * v92 + v119);
            v156 = v115 == v157;
            if (v105 | v157)
            {
              if (v112 >= 0x1000 && (v113 ^ v157) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v155 = 4095;
              }

              else
              {
                v155 = v103 + v102 * v157;
              }
            }

            else
            {
              v155 = 0;
            }

            ++v119;
          }

          v158 = v155 + v105;
          if (a3 != 4 || (result = (v158 | 0x80000000) >> 22, v159 = 4095, result != 1022))
          {
            if (v158 >= 0x1000)
            {
              v159 = 4095;
            }

            else
            {
              v159 = v158;
            }
          }

          if (v156)
          {
            v160 = 0;
          }

          else
          {
            v160 = v159 ^ 0x800;
          }

          if (v75 != 1)
          {
            v160 = v159;
          }

          *(v39 + 48) = v160;
          if (v114 != 7)
          {
            v161 = *(v165 + 7 * v92 + v119);
            v109 = v115 == v161;
            if (v105 | v161)
            {
              if (v112 >= 0x1000 && (v113 ^ v161) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v108 = 4095;
              }

              else
              {
                v108 = v103 + v102 * v161;
              }
            }

            else
            {
              v108 = 0;
            }
          }

          v162 = v108 + v105;
          if (a3 != 4 || (LODWORD(v98) = 4095, (v162 | 0x80000000) >> 22 != 1022))
          {
            if (v162 >= 0x1000)
            {
              LODWORD(v98) = 4095;
            }

            else
            {
              LODWORD(v98) = v108 + v105;
            }
          }

          v99 = v98 ^ 0x800;
          if (v109)
          {
            v99 = 0;
          }

          if (v75 == 1)
          {
            LODWORD(v98) = v99;
          }

          v31 = v111;
          v50 = v110;
          goto LABEL_126;
        }

        v118 = v103 + v102 * v116;
      }

      else
      {
        v118 = 0;
      }

      v119 = 1;
      goto LABEL_158;
    }

    if (a3 == 4)
    {
      if ((v105 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v98) = 4095;
      }

      else
      {
        if ((v105 & 0xFFC00000) == 0xFF800000)
        {
          v98 = 4286578687;
        }

        else
        {
          v98 = v105;
        }

        if (v98 >= 0x1000)
        {
          LODWORD(v98) = 4095;
        }
      }
    }

    else
    {
      if (v105 >= 0xFFF)
      {
        LODWORD(v98) = 4095;
      }

      else
      {
        LODWORD(v98) = v105;
      }

      v121 = v98 ^ 0x800;
      if (v102 > v107)
      {
        v121 = 0;
      }

      if (v75 == 1)
      {
        LODWORD(v98) = v121;
      }
    }

    *v39 = v98;
    *(v39 + 8) = v98;
    *(v39 + 16) = v98;
    *(v39 + 24) = v98;
    *(v39 + 32) = v98;
    *(v39 + 40) = v98;
    *(v39 + 48) = v98;
LABEL_126:
    v95 = 0;
    *(v39 + 56) = v98;
    v94 = &v163;
    v96 = &v165[1] + 3;
    v58 = v21;
    v97 = v52;
    LOBYTE(v39) = v50;
    v93 = &v171;
    v92 = 1;
  }

  while ((v100 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v528 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v10 = &a1->i8[a2];
    *v10 = 0u;
    *(v10 + 1) = 0u;
    v11 = &a1->i8[2 * a2];
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v12 = &a1->i8[2 * a2 + a2];
LABEL_6:
    *v12 = v9;
    *(v12 + 1) = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v512, a5);
    }

    v474 = v514;
    v475 = v512;
    v476 = v515;
    v477 = v513;
    v17 = v516;
    v18 = v517;
    v19 = v519;
    v478 = v518;
    v470 = v522;
    v471 = v520;
    v472 = v523;
    v473 = v521;
    v21 = v524;
    v20 = v525;
    v23 = v526;
    v22 = v527;
    v24 = a3 + 20;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v24, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v24, &v512, a5);
    }

    v508 = v527;
    v509 = v519;
    v506 = v525;
    v507 = v517;
    v504 = v526;
    v505 = v518;
    v502 = v524;
    v503 = v516;
    v500 = v523;
    v501 = v515;
    v498 = v521;
    v499 = v513;
    v496 = v522;
    v497 = v514;
    v494 = v520;
    v495 = v512;
    v492 = v20;
    v493 = v22;
    v490 = v23;
    v491 = v19;
    v489 = v21;
    v479 = v18;
    v480 = v17;
    v25 = v5;
    v26 = a3 + 40;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v26, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v26, &v512, a5);
    }

    v27 = v513;
    v469 = v512;
    v28 = v514;
    v29 = v515;
    v483 = v518;
    v484 = v516;
    v488 = v519;
    v30 = v520;
    v31 = v521;
    v33 = v522;
    v32 = v523;
    v485 = v525;
    v486 = v517;
    v481 = v524;
    v482 = v526;
    v487 = v527;
    v34 = a3 + 60;
    if ((v25 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v34, &v512, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v34, &v512, a5);
    }

    v35.i16[0] = v475;
    v35.i16[1] = v474;
    v35.i16[2] = v471;
    v36.i16[0] = v477;
    v35.i16[3] = v470;
    v36.i16[1] = v476;
    v36.i16[2] = v473;
    v36.i16[3] = v472;
    v37.i16[0] = v469;
    v37.i16[1] = v28;
    v38.i16[0] = v27;
    v37.i16[2] = v30;
    v37.i16[3] = v33;
    v38.i16[1] = v29;
    v38.i16[2] = v31;
    v38.i16[3] = v32;
    v39.i16[0] = v479;
    v40.i16[0] = v480;
    v40.i16[1] = v478;
    v41.i16[0] = v512;
    v41.i16[1] = v514;
    v41.i16[2] = v520;
    v41.i16[3] = v522;
    v42.i16[0] = v513;
    v42.i16[1] = v515;
    v42.i16[2] = v521;
    v42.i16[3] = v523;
    v43.i16[0] = v516;
    v43.i16[1] = v518;
    v43.i16[2] = v524;
    v43.i16[3] = v526;
    v40.i16[2] = v489;
    v40.i16[3] = v490;
    v39.i16[1] = v491;
    *a1 = vorrq_s8(vshlq_n_s32(vmovl_u16(v36), 0x14uLL), vmovl_u16(vshl_n_s16(v35, 4uLL)));
    a1[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v38), 0x14uLL), vmovl_u16(vshl_n_s16(v37, 4uLL)));
    v39.i16[2] = v492;
    v39.i16[3] = v493;
    v35.i16[0] = v484;
    v35.i16[1] = v483;
    v35.i16[2] = v481;
    v35.i16[3] = v482;
    v44 = vorrq_s8(vshlq_n_s32(vmovl_u16(v39), 0x14uLL), vmovl_u16(vshl_n_s16(v40, 4uLL)));
    v45 = vmovl_u16(vshl_n_s16(v35, 4uLL));
    v35.i16[0] = v486;
    v35.i16[1] = v488;
    v35.i16[2] = v485;
    v35.i16[3] = v487;
    v46 = vorrq_s8(vshlq_n_s32(vmovl_u16(v35), 0x14uLL), v45);
    v45.i16[0] = v517;
    v45.i16[1] = v519;
    v45.i16[2] = v525;
    v45.i16[3] = v527;
    v47 = &a1->i8[a2];
    *v47 = v44;
    v47[1] = v46;
    v44.i16[0] = v495;
    v44.i16[1] = v497;
    v44.i16[2] = v494;
    v44.i16[3] = v496;
    v48 = &a1->i8[a2 + a2];
    v46.i16[0] = v499;
    v46.i16[1] = v501;
    v46.i16[2] = v498;
    v46.i16[3] = v500;
    *v48 = vorrq_s8(vshlq_n_s32(vmovl_u16(*v46.i8), 0x14uLL), vmovl_u16(vshl_n_s16(*v44.i8, 4uLL)));
    v48[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
    v49 = (v48 + a2);
    v41.i16[0] = v503;
    v41.i16[1] = v505;
    v41.i16[2] = v502;
    v41.i16[3] = v504;
    v42.i16[0] = v507;
    v42.i16[1] = v509;
    v42.i16[2] = v506;
    v42.i16[3] = v508;
    v8 = 80;
    *v49 = vorrq_s8(vshlq_n_s32(vmovl_u16(v42), 0x14uLL), vmovl_u16(vshl_n_s16(v41, 4uLL)));
    v49[1] = vorrq_s8(vshlq_n_s32(vmovl_u16(*v45.i8), 0x14uLL), vmovl_u16(vshl_n_s16(v43, 4uLL)));
    return v8;
  }

  switch(a4)
  {
    case 0x7Fu:
      v163 = *a3;
      v164 = *(a3 + 16);
      v165 = *(a3 + 32);
      v166 = *(a3 + 48);
      v167 = *(a3 + 64);
      v168 = *(a3 + 80);
      v169 = *(a3 + 96);
      v170 = *(a3 + 112);
      v171 = &a1->i8[a2];
      *a1 = vzip1q_s64(*a3, v164);
      a1[1] = vzip1q_s64(v167, v168);
      v172 = (a1 + 2 * a2);
      *v171 = vzip2q_s64(v163, v164);
      v171[1] = vzip2q_s64(v167, v168);
      *v172 = vzip1q_s64(v165, v166);
      v172[1] = vzip1q_s64(v169, v170);
      v173 = (v172 + a2);
      *v173 = vzip2q_s64(v165, v166);
      v173[1] = vzip2q_s64(v169, v170);
      return 128;
    case 0x5Fu:
      v51.i64[0] = 0xC000C000C000CLL;
      v51.i64[1] = 0xC000C000C000CLL;
      v52 = vmovl_u16(*&vpaddq_s16(v51, v51));
      v53 = vpaddq_s32(v52, v52).u64[0];
      v54.i64[0] = v53;
      v54.i64[1] = HIDWORD(v53);
      v55 = v54;
      v56 = vaddvq_s64(v54);
      v57 = 0uLL;
      if (v56 > 0x80)
      {
        v156 = 0uLL;
        v152 = 0uLL;
        v153 = 0uLL;
        v155 = 0uLL;
        v154 = 0uLL;
        v162 = 0uLL;
        v161 = 0uLL;
      }

      else
      {
        v58 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v59 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
        v60.i64[0] = v59.u32[0];
        v60.i64[1] = v59.u32[1];
        v61 = v60;
        v62 = vzip1q_s64(0, v55);
        v63 = 8 * (a3 & 7);
        v64 = v56 + v63;
        v65 = vaddq_s64(v62, vdupq_n_s64(v63));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v65)));
        if (v56 + v63 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v58[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v58[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v66);
        }

        v67 = vnegq_s64(v61);
        v68 = vshlq_u64(v66, v67);
        v69 = v64 & 0x3F;
        v70 = (v58 + 8 * (v64 >> 6));
        v71 = vaddq_s64(v62, vdupq_n_s64(v69));
        v72 = v56 + v64;
        v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
        if (v56 + v69 >= 0x81)
        {
          v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
        }

        v74 = vzip2q_s64(v66, v68);
        v75 = vzip1q_s64(v66, v68);
        v76 = vshlq_u64(v73, v67);
        v77 = vzip2q_s64(v73, v76);
        v78 = vzip1q_s64(v73, v76);
        v79 = v72 & 0x3F;
        v80 = (v58 + 8 * (v72 >> 6));
        v81 = vaddq_s64(v62, vdupq_n_s64(v79));
        v82 = v56 + v72;
        v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v81)));
        if (v56 + v79 >= 0x81)
        {
          v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v83);
        }

        v84 = vuzp1q_s32(v75, v74);
        v85 = vuzp1q_s32(v78, v77);
        v86 = vshlq_u64(v83, v67);
        v87 = vuzp1q_s32(vzip1q_s64(v83, v86), vzip2q_s64(v83, v86));
        v88 = v82 & 0x3F;
        v89 = (v58 + 8 * (v82 >> 6));
        v90 = vaddq_s64(v62, vdupq_n_s64(v88));
        v91 = v56 + v82;
        v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v90)));
        if (v56 + v88 >= 0x81)
        {
          v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v92);
        }

        v93.i64[0] = 0x1000100010001;
        v93.i64[1] = 0x1000100010001;
        v94 = vshrq_n_u32(v84, 0xCuLL);
        v95 = vshrq_n_u32(v85, 0xCuLL);
        v96 = vshrq_n_u32(v87, 0xCuLL);
        v97 = vshlq_u64(v92, v67);
        v98 = vuzp1q_s32(vzip1q_s64(v92, v97), vzip2q_s64(v92, v97));
        v99 = vshrq_n_u32(v98, 0xCuLL);
        v100 = v91 & 0x3F;
        v101 = (v58 + 8 * (v91 >> 6));
        v102 = vaddq_s64(v62, vdupq_n_s64(v100));
        v103 = v56 + v91;
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v102)));
        if (v56 + v100 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
        }

        v105 = vshlq_n_s16(v93, 0xCuLL);
        v106.i64[0] = -1;
        v106.i64[1] = -1;
        v107 = vzip2q_s32(v84, v94);
        v108 = vzip1q_s32(v84, v94);
        v109 = vzip2q_s32(v85, v95);
        v110 = vzip1q_s32(v85, v95);
        v111 = vzip2q_s32(v87, v96);
        v112 = vzip1q_s32(v87, v96);
        v113 = vzip2q_s32(v98, v99);
        v114 = vzip1q_s32(v98, v99);
        v115 = vshlq_u64(v104, v67);
        v116 = vuzp1q_s32(vzip1q_s64(v104, v115), vzip2q_s64(v104, v115));
        v117 = vshrq_n_u32(v116, 0xCuLL);
        v118 = vzip2q_s32(v116, v117);
        v119 = vzip1q_s32(v116, v117);
        v120 = (v58 + 8 * (v103 >> 6));
        v121 = vaddq_s64(v62, vdupq_n_s64(v103 & 0x3F));
        v122 = v56 + v103;
        v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v121)));
        if (v56 + (v103 & 0x3F) >= 0x81)
        {
          v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v123);
        }

        v124 = vaddq_s16(v105, v106);
        v125 = vuzp1q_s16(v108, v107);
        v126 = vuzp1q_s16(v110, v109);
        v127 = vuzp1q_s16(v112, v111);
        v128 = vuzp1q_s16(v114, v113);
        v129 = vuzp1q_s16(v119, v118);
        v130 = vshlq_u64(v123, v67);
        v131 = vuzp1q_s32(vzip1q_s64(v123, v130), vzip2q_s64(v123, v130));
        v132 = vshrq_n_u32(v131, 0xCuLL);
        v133 = vuzp1q_s16(vzip1q_s32(v131, v132), vzip2q_s32(v131, v132));
        v134 = v56 + v122;
        v135 = v122 & 0x3F;
        v136 = vaddq_s64(v62, vdupq_n_s64(v135));
        v137 = (v58 + 8 * (v122 >> 6));
        v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
        if (v56 + v135 >= 0x81)
        {
          v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
        }

        v139 = vandq_s8(v124, v125);
        v140 = vandq_s8(v124, v126);
        v141 = vandq_s8(v124, v127);
        v142 = vandq_s8(v124, v128);
        v143 = vandq_s8(v124, v129);
        v144 = vandq_s8(v124, v133);
        v145 = vshlq_u64(v138, v67);
        v146 = vuzp1q_s32(vzip1q_s64(v138, v145), vzip2q_s64(v138, v145));
        v147 = vshrq_n_u32(v146, 0xCuLL);
        v148 = (v58 + 8 * (v134 >> 6));
        v149 = vaddq_s64(v62, vdupq_n_s64(v134 & 0x3F));
        v150 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v146, v147), vzip2q_s32(v146, v147)));
        v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v149)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v149)));
        if (v56 + (v134 & 0x3F) >= 0x81)
        {
          v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v149)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v149))), v151);
        }

        v152 = vshlq_n_s16(v139, 4uLL);
        v153 = vshlq_n_s16(v140, 4uLL);
        v154 = vshlq_n_s16(v141, 4uLL);
        v155 = vshlq_n_s16(v142, 4uLL);
        v57 = vshlq_n_s16(v143, 4uLL);
        v156 = vshlq_n_s16(v144, 4uLL);
        v157 = vshlq_u64(v151, v67);
        v158 = vuzp1q_s32(vzip1q_s64(v151, v157), vzip2q_s64(v151, v157));
        v159 = vshrq_n_u32(v158, 0xCuLL);
        v160 = vandq_s8(v124, vuzp1q_s16(vzip1q_s32(v158, v159), vzip2q_s32(v158, v159)));
        v161 = vshlq_n_s16(v150, 4uLL);
        v162 = vshlq_n_s16(v160, 4uLL);
      }

      v224 = &a1->i8[a2];
      *a1 = vzip1q_s64(v152, v153);
      a1[1] = vzip1q_s64(v57, v156);
      v225 = (a1 + 2 * a2);
      *v224 = vzip2q_s64(v152, v153);
      v224[1] = vzip2q_s64(v57, v156);
      *v225 = vzip1q_s64(v154, v155);
      v225[1] = vzip1q_s64(v161, v162);
      v226 = (v225 + a2);
      *v226 = vzip2q_s64(v154, v155);
      v226[1] = vzip2q_s64(v161, v162);
      return 96;
    case 2u:
      v13 = vdupq_n_s32((*a3 << 8) & 0xFFF00000 | (16 * (*a3 & 0xFFF)));
      *a1 = v13;
      a1[1] = v13;
      v14 = (a1 + a2);
      *v14 = v13;
      v14[1] = v13;
      v15 = (a1 + 2 * a2);
      *v15 = v13;
      v15[1] = v13;
      v16 = (a1 + 2 * a2 + a2);
      *v16 = v13;
      v16[1] = v13;
      return 3;
    default:
      v174 = 8 * (a3 & 7);
      v175 = a3 & 0xFFFFFFFFFFFFFFF8;
      v176 = v174 + 18;
      v177 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v174;
      if (v174 >= 0x2F)
      {
        v177 |= *(v175 + 8) << (-8 * (a3 & 7u));
      }

      v178.i32[0] = v177;
      v178.i32[1] = v177 >> 5;
      v179 = vand_s8(v178, 0x1F0000001FLL);
      v180 = vuzp1_s16(v179, v179);
      v181.i32[0] = v177 >> 10;
      v181.i32[1] = v177 >> 14;
      v182 = vuzp1_s16(vadd_s32(vand_s8(v181, 0xF0000000FLL), 0x100000001), v180);
      v183 = v174 + 42;
      v184 = v176 & 0x3A;
      v185 = (v175 + ((v176 >> 3) & 8));
      v186 = *v185 >> (v176 & 0x3A);
      if (v184 >= 0x29)
      {
        v186 |= v185[1] << -v184;
      }

      v187 = vdupq_lane_s32(v180, 0);
      v188 = vdupq_lane_s32(v182, 0);
      v189 = (8 * (a3 & 7)) | 0x280;
      v190.i64[0] = 0x3000300030003;
      v190.i64[1] = 0x3000300030003;
      v191 = vandq_s8(v187, v190);
      v192 = vbicq_s8(v188, vceqq_s16(v191, v190));
      v190.i64[0] = 0x202020202020202;
      v190.i64[1] = 0x202020202020202;
      v193 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v187.i8, 0x4000400040004)))), v190);
      if (vmaxvq_s8(v193) < 1)
      {
        v202 = 0;
        v223.i64[0] = -1;
        v223.i64[1] = -1;
        v219 = v192;
        v218 = v192;
        v217 = v192;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v216 = v192;
        v221.i64[0] = -1;
        v221.i64[1] = -1;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
      }

      else
      {
        v194 = vmovl_u8(*&vpaddq_s8(v193, v193));
        v195 = vmovl_u16(*&vpaddq_s16(v194, v194));
        v196 = vpaddq_s32(v195, v195).u64[0];
        v197.i64[0] = v196;
        v197.i64[1] = HIDWORD(v196);
        v198 = v197;
        v199 = vaddvq_s64(v197);
        v200 = v183 + v199;
        v201 = v199 <= 0x80 && v189 >= v200;
        v202 = !v201;
        v203 = 0uLL;
        if (v201)
        {
          v204 = v183 & 0x3A;
          v205 = vaddq_s64(vdupq_n_s64(v204), vzip1q_s64(0, v198));
          v206 = (v175 + ((v183 >> 3) & 8));
          v203 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v206, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v205)), vshlq_u64(vdupq_lane_s64(v206->i64[0], 0), vnegq_s64(v205)));
          if (v204 + v199 >= 0x81)
          {
            v203 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v206[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v205)), vshlq_u64(vdupq_laneq_s64(v206[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v205))), v203);
          }

          v183 = v200;
        }

        v207 = vzip1_s32(*v195.i8, *&vextq_s8(v195, v195, 8uLL));
        v208.i64[0] = v207.u32[0];
        v208.i64[1] = v207.u32[1];
        v209 = vshlq_u64(v203, vnegq_s64(v208));
        v210 = vuzp1q_s32(vzip1q_s64(v203, v209), vzip2q_s64(v203, v209));
        v211 = vshlq_u32(v210, vnegq_s32((*&v194 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v212 = vuzp1q_s16(vzip1q_s32(v210, v211), vzip2q_s32(v210, v211));
        v210.i64[0] = 0x101010101010101;
        v210.i64[1] = 0x101010101010101;
        *v213.i8 = vand_s8(vadd_s8(*&vshlq_s8(v210, v193), -1), vmovn_s16(vzip1q_s16(v212, vshlq_u16(v212, vnegq_s16(vmovl_u8(vuzp1_s8(*v193.i8, *v187.i8)))))));
        v213.i64[1] = v213.i64[0];
        *v213.i8 = vqtbl1_s8(v213, 0x703060205010400);
        *v212.i8 = vdup_lane_s16(*v213.i8, 0);
        *v210.i8 = vdup_lane_s16(*v213.i8, 1);
        v214 = vdup_lane_s16(*v213.i8, 2);
        v215 = vdup_lane_s16(*v213.i8, 3);
        v216 = vsubw_s8(v192, *v212.i8);
        v217 = vsubw_s8(v192, *v210.i8);
        v218 = vsubw_s8(v192, v214);
        v219 = vsubw_s8(v192, v215);
        v220 = vmovl_s8(vceqz_s8(*v212.i8));
        v221 = vmovl_s8(vceqz_s8(*v210.i8));
        v222 = vmovl_s8(vceqz_s8(v214));
        v223 = vmovl_s8(vceqz_s8(v215));
      }

      v227.i64[0] = 0x8000800080008;
      v227.i64[1] = 0x8000800080008;
      v228 = 0uLL;
      v229 = vandq_s8(vextq_s8(vtstq_s16(v187, v227), 0, 0xCuLL), v192);
      v230 = vmovl_u16(*&vpaddq_s16(v229, v229));
      v231 = vpaddq_s32(v230, v230).u64[0];
      v232.i64[0] = v231;
      v232.i64[1] = HIDWORD(v231);
      v233 = v232;
      v234 = vaddvq_s64(v232);
      v235 = v183 + v234;
      if (v234 <= 0x80 && v189 >= v235)
      {
        v237 = v183 & 0x3F;
        v238 = vaddq_s64(vdupq_n_s64(v237), vzip1q_s64(0, v233));
        v239 = (v175 + 8 * (v183 >> 6));
        v228 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v239, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v239->i64[0], 0), vnegq_s64(v238)));
        if (v237 + v234 >= 0x81)
        {
          v228 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v239[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v239[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v228);
        }

        v183 = v235;
      }

      else
      {
        v202 = 1;
      }

      v240 = v187.i8[0] & 3;
      if (v240 == 2)
      {
        v241 = v189 < v183 + 8;
        v242 = v183 + 16;
        if (v189 >= v183 + 8)
        {
          v183 += 8;
        }

        else
        {
          v242 = v183 + 8;
        }

        if (v189 < v242)
        {
          v243 = 1;
        }

        else
        {
          v183 = v242;
          v243 = v241;
        }

        v202 |= v243;
      }

      v244 = 0uLL;
      v245 = vextq_s8(0, v216, 0xCuLL);
      v246 = vmovl_u16(*&vpaddq_s16(v245, v245));
      v247 = vpaddq_s32(v246, v246).u64[0];
      v248.i64[0] = v247;
      v248.i64[1] = HIDWORD(v247);
      v249 = v248;
      v250 = vaddvq_s64(v248);
      v251 = v183 + v250;
      if (v250 <= 0x80 && v189 >= v251)
      {
        v254 = v183 & 0x3F;
        v255 = vaddq_s64(vdupq_n_s64(v254), vzip1q_s64(0, v249));
        v256 = (v175 + 8 * (v183 >> 6));
        v253 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v255)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v255)));
        if (v254 + v250 >= 0x81)
        {
          v253 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v255)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v255))), v253);
        }

        v183 = v251;
      }

      else
      {
        v202 = 1;
        v253 = 0uLL;
      }

      v257 = vmovl_u16(*&vpaddq_s16(v216, v216));
      v258 = vpaddq_s32(v257, v257).u64[0];
      v259.i64[0] = v258;
      v259.i64[1] = HIDWORD(v258);
      v260 = v259;
      v261 = vaddvq_s64(v259);
      v262 = v183 + v261;
      if (v261 <= 0x80 && v189 >= v262)
      {
        v264 = v183 & 0x3F;
        v265 = vaddq_s64(vdupq_n_s64(v264), vzip1q_s64(0, v260));
        v266 = (v175 + 8 * (v183 >> 6));
        v244 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v265)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v265)));
        if (v264 + v261 >= 0x81)
        {
          v244 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v265)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v265))), v244);
        }

        v183 = v262;
      }

      else
      {
        v202 = 1;
      }

      v267 = vmovl_u16(*&vpaddq_s16(v217, v217));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v183 + v271;
      v273 = 0uLL;
      if (v271 <= 0x80 && v189 >= v272)
      {
        v276 = v183 & 0x3F;
        v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
        v278 = (v175 + 8 * (v183 >> 6));
        v275 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
        if (v276 + v271 >= 0x81)
        {
          v275 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v275);
        }

        v183 = v272;
      }

      else
      {
        v202 = 1;
        v275 = 0uLL;
      }

      if (v271 > 0x80 || (v279 = v183 + v271, v189 < v183 + v271))
      {
        v202 = 1;
        v279 = v183;
      }

      else
      {
        v280 = v183 & 0x3F;
        v281 = vaddq_s64(vdupq_n_s64(v280), vzip1q_s64(0, v270));
        v282 = (v175 + 8 * (v183 >> 6));
        v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v282, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v281)), vshlq_u64(vdupq_lane_s64(v282->i64[0], 0), vnegq_s64(v281)));
        if (v280 + v271 >= 0x81)
        {
          v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v282[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v281)), vshlq_u64(vdupq_laneq_s64(v282[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v281))), v273);
        }
      }

      v283 = vmovl_u16(*&vpaddq_s16(v218, v218));
      v284 = vpaddq_s32(v283, v283).u64[0];
      v285.i64[0] = v284;
      v285.i64[1] = HIDWORD(v284);
      v286 = v285;
      v287 = vaddvq_s64(v285);
      v288 = 0uLL;
      if (v287 > 0x80 || (v289 = v279 + v287, v189 < v279 + v287))
      {
        v202 = 1;
        v289 = v279;
        v292 = 0uLL;
      }

      else
      {
        v290 = vaddq_s64(vdupq_n_s64(v279 & 0x3F), vzip1q_s64(0, v286));
        v291 = (v175 + 8 * (v279 >> 6));
        v292 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
        if ((v279 & 0x3F) + v287 >= 0x81)
        {
          v292 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v292);
        }
      }

      if (v287 > 0x80 || (v293 = v289 + v287, v189 < v289 + v287))
      {
        v202 = 1;
        v293 = v289;
      }

      else
      {
        v294 = vaddq_s64(vdupq_n_s64(v289 & 0x3F), vzip1q_s64(0, v286));
        v295 = (v175 + 8 * (v289 >> 6));
        v288 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v295, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v294)), vshlq_u64(vdupq_lane_s64(v295->i64[0], 0), vnegq_s64(v294)));
        if ((v289 & 0x3F) + v287 >= 0x81)
        {
          v288 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v295[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v294)), vshlq_u64(vdupq_laneq_s64(v295[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v294))), v288);
        }
      }

      v296 = vmovl_u16(*&vpaddq_s16(v219, v219));
      v297 = vpaddq_s32(v296, v296).u64[0];
      v298.i64[0] = v297;
      v298.i64[1] = HIDWORD(v297);
      v299 = v298;
      v300 = vaddvq_s64(v298);
      v301 = 0uLL;
      if (v300 > 0x80 || (v302 = v293 + v300, v189 < v293 + v300))
      {
        v202 = 1;
        v302 = v293;
        v306 = 0uLL;
      }

      else
      {
        v303 = v293 & 0x3F;
        v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v299));
        v305 = (v175 + 8 * (v293 >> 6));
        v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
        if (v303 + v300 >= 0x81)
        {
          v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
        }
      }

      if (v300 > 0x80 || (v307 = v302 + v300, v189 < v302 + v300))
      {
        v202 = 1;
        v307 = v302;
      }

      else
      {
        v308 = vaddq_s64(vdupq_n_s64(v302 & 0x3F), vzip1q_s64(0, v299));
        v309 = (v175 + 8 * (v302 >> 6));
        v301 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v309, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v308)), vshlq_u64(vdupq_lane_s64(v309->i64[0], 0), vnegq_s64(v308)));
        if ((v302 & 0x3F) + v300 >= 0x81)
        {
          v301 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v309[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v308)), vshlq_u64(vdupq_laneq_s64(v309[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v308))), v301);
        }
      }

      if ((v202 & 1) != 0 || (v8 = a4 + 1, v189 + 8 * v8 - v307 - 640 >= 9))
      {
        v310 = 0;
        v311 = 0;
        v312 = 8 * (&v512 & 7);
        v313 = 12;
        do
        {
          v314 = 64 - v312;
          if (64 - v312 >= v313)
          {
            v314 = v313;
          }

          *(&v512 + v310) |= ((0xFFFFFFFFFFFFFFFFLL >> v311) & ~(-1 << v314)) << v312;
          v311 += v314;
          v315 = v314 + v312;
          v310 += v315 >> 6;
          v312 = v315 & 0x3F;
          v313 -= v314;
        }

        while (v313);
LABEL_133:
        v8 = 0;
        v316 = &a1->i8[a2];
        v9 = 0uLL;
        *a1 = 0u;
        a1[1] = 0u;
        v317 = &a1->i8[2 * a2];
        *v316 = 0u;
        *(v316 + 1) = 0u;
        v12 = &a1->i8[2 * a2 + a2];
        *v317 = 0u;
        *(v317 + 1) = 0u;
        goto LABEL_6;
      }

      if (v240 == 2)
      {
        v318 = 0;
        v319 = 0;
        v320 = 8 * (&v512 & 7);
        v321 = 12;
        do
        {
          v322 = 64 - v320;
          if (64 - v320 >= v321)
          {
            v322 = v321;
          }

          *(&v512 + v318) |= ((0xFFFFFFFFFFFFFFFFLL >> v319) & ~(-1 << v322)) << v320;
          v319 += v322;
          v323 = v322 + v320;
          v318 += v323 >> 6;
          v320 = v323 & 0x3F;
          v321 -= v322;
        }

        while (v321);
        goto LABEL_133;
      }

      v324 = vzip1_s32(*v230.i8, *&vextq_s8(v230, v230, 8uLL));
      v325 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v326 = vzip1_s32(*v283.i8, *&vextq_s8(v283, v283, 8uLL));
      v327 = vzip1_s32(*v296.i8, *&vextq_s8(v296, v296, 8uLL));
      v328.i64[0] = v324.u32[0];
      v328.i64[1] = v324.u32[1];
      v329 = v328;
      v328.i64[0] = v325.u32[0];
      v328.i64[1] = v325.u32[1];
      v330 = v328;
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v332 = vnegq_s64(v329);
      v333 = vnegq_s64(v330);
      v334 = vnegq_s64(v331);
      v335 = vnegq_s64(v328);
      v336 = vshlq_u64(v228, v332);
      v337 = vshlq_u64(v275, v333);
      v338 = vshlq_u64(v273, v333);
      v339 = vshlq_u64(v292, v334);
      v340 = vshlq_u64(v288, v334);
      v341 = vshlq_u64(v306, v335);
      v342 = vzip2q_s64(v228, v336);
      v343 = vzip1q_s64(v228, v336);
      v344 = vzip2q_s64(v275, v337);
      v345 = vzip1q_s64(v275, v337);
      v346 = vzip2q_s64(v273, v338);
      v347 = vzip1q_s64(v273, v338);
      v348 = vzip2q_s64(v292, v339);
      v349 = vzip1q_s64(v292, v339);
      v350 = vzip2q_s64(v288, v340);
      v351 = vzip1q_s64(v288, v340);
      v352 = vzip2q_s64(v306, v341);
      v353 = vzip1q_s64(v306, v341);
      v354 = vuzp1q_s32(v343, v342);
      v355 = vuzp1q_s32(v345, v344);
      v356 = vuzp1q_s32(v347, v346);
      v343.i64[0] = 0xFFFF0000FFFFLL;
      v343.i64[1] = 0xFFFF0000FFFFLL;
      v357 = vuzp1q_s32(v349, v348);
      v345.i64[0] = 0xFFFF0000FFFFLL;
      v345.i64[1] = 0xFFFF0000FFFFLL;
      v358 = vnegq_s32(vandq_s8(v229, v343));
      v359 = vnegq_s32(vandq_s8(v217, v345));
      v360 = vuzp1q_s32(v351, v350);
      v361 = vuzp1q_s32(v353, v352);
      v362 = vshlq_u32(v354, v358);
      v363 = vshlq_u32(v355, v359);
      v364 = vshlq_u32(v356, v359);
      v359.i64[0] = 0x10001000100010;
      v359.i64[1] = 0x10001000100010;
      v353.i64[0] = 0xF000F000F000FLL;
      v353.i64[1] = 0xF000F000F000FLL;
      v365 = vsubq_s16(v359, v229);
      v366 = vaddq_s16(v229, v353);
      v353.i64[0] = 0x10001000100010;
      v353.i64[1] = 0x10001000100010;
      v367 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v354, v362), vzip2q_s32(v354, v362)), v365);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v368 = vsubq_s16(v353, v217);
      v369 = vaddq_s16(v217, v365);
      v365.i64[0] = 0xFFFF0000FFFFLL;
      v365.i64[1] = 0xFFFF0000FFFFLL;
      v370 = vnegq_s32(vandq_s8(v218, v365));
      v371 = vshlq_s16(v367, v366);
      v372 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v355, v363), vzip2q_s32(v355, v363)), v368), v369);
      v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v356, v364), vzip2q_s32(v356, v364)), v368), v369);
      v374 = vdupq_lane_s32(*v371.i8, 0);
      v375 = vandq_s8(v221, v374);
      v376 = vsubq_s16(v372, v375);
      v377 = vsubq_s16(v373, v375);
      v378 = vshlq_u32(v357, v370);
      v379 = vshlq_u32(v360, v370);
      v380 = vzip2q_s32(v357, v378);
      v381 = vzip1q_s32(v357, v378);
      v382 = vzip2q_s32(v360, v379);
      v383 = vzip1q_s32(v360, v379);
      v379.i64[0] = 0x10001000100010;
      v379.i64[1] = 0x10001000100010;
      v384 = vuzp1q_s16(v383, v382);
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v385 = vsubq_s16(v379, v218);
      v386 = vaddq_s16(v218, v382);
      v382.i64[0] = 0xFFFF0000FFFFLL;
      v382.i64[1] = 0xFFFF0000FFFFLL;
      v387 = vnegq_s32(vandq_s8(v219, v382));
      v388 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v380), v385), v386);
      v389 = vshlq_s16(vshlq_s16(v384, v385), v386);
      v390 = vandq_s8(v222, v374);
      v391 = vsubq_s16(v388, v390);
      v392 = vsubq_s16(v389, v390);
      v393 = vshlq_u32(v361, v387);
      v394 = vzip2q_s32(v361, v393);
      v395 = vzip1q_s32(v361, v393);
      v393.i64[0] = 0x10001000100010;
      v393.i64[1] = 0x10001000100010;
      v396 = vuzp1q_s16(v395, v394);
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v397 = vsubq_s16(v393, v219);
      v398 = vaddq_s16(v219, v394);
      v399 = vshlq_u64(v301, v335);
      v400 = vuzp1q_s32(vzip1q_s64(v301, v399), vzip2q_s64(v301, v399));
      v401 = vshlq_u32(v400, v387);
      v402 = vshlq_s16(vshlq_s16(v396, v397), v398);
      v403 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v400, v401), vzip2q_s32(v400, v401)), v397), v398);
      v404 = vandq_s8(v223, v374);
      v405 = vsubq_s16(v402, v404);
      v406 = vsubq_s16(v403, v404);
      v407 = vzip1_s32(*v246.i8, *&vextq_s8(v246, v246, 8uLL));
      v408 = vzip1_s32(*v257.i8, *&vextq_s8(v257, v257, 8uLL));
      v328.i64[0] = v407.u32[0];
      v328.i64[1] = v407.u32[1];
      v409 = v328;
      v328.i64[0] = v408.u32[0];
      v328.i64[1] = v408.u32[1];
      v410 = vshlq_u64(v253, vnegq_s64(v409));
      v411 = vshlq_u64(v244, vnegq_s64(v328));
      v412 = vzip2q_s64(v253, v410);
      v413 = vzip1q_s64(v253, v410);
      v414 = vzip2q_s64(v244, v411);
      v415 = vzip1q_s64(v244, v411);
      v411.i64[0] = 0xFFFF0000FFFFLL;
      v411.i64[1] = 0xFFFF0000FFFFLL;
      v416 = vuzp1q_s32(v413, v412);
      v417 = vuzp1q_s32(v415, v414);
      v418 = vnegq_s32(vandq_s8(v216, v411));
      v419 = vshlq_u32(v416, vnegq_s32(vandq_s8(v245, v411)));
      v420 = vshlq_u32(v417, v418);
      v421 = vzip2q_s32(v416, v419);
      v422 = vzip1q_s32(v416, v419);
      v423 = vzip2q_s32(v417, v420);
      v424 = vzip1q_s32(v417, v420);
      v420.i64[0] = 0x10001000100010;
      v420.i64[1] = 0x10001000100010;
      v425 = vuzp1q_s16(v424, v423);
      v423.i64[0] = 0xF000F000F000FLL;
      v423.i64[1] = 0xF000F000F000FLL;
      v426 = vaddq_s16(vandq_s8(v371, v220), vshlq_s16(vshlq_s16(vuzp1q_s16(v422, v421), vsubq_s16(v420, v245)), vaddq_s16(v245, v423)));
      v427 = vandq_s8(v220, v374);
      v428.i64[0] = 0x1000100010001;
      v428.i64[1] = 0x1000100010001;
      v429 = vceqq_s16(v191, v428);
      v430 = vaddvq_s16(v429);
      v431 = vsubq_s16(v426, v427);
      v432 = vsubq_s16(vshlq_s16(vshlq_s16(v425, vsubq_s16(v420, v216)), vaddq_s16(v216, v423)), v427);
      v429.i16[0] = v186 & 0xFFF;
      v429.i16[1] = (v186 >> 12) & 0xFFF;
      v433 = vdupq_lane_s32(*v429.i8, 0);
      if (v430)
      {
        v434 = vnegq_s16(vandq_s8(v187, v428));
        v435 = v432;
        v435.i32[3] = v431.i32[0];
        v436 = v431;
        v436.i32[0] = v432.i32[3];
        v529.val[0] = vbslq_s8(v434, v436, v431);
        v529.val[1] = vbslq_s8(v434, v435, v432);
        v435.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v435.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F0F80), v434), v529.val[0]);
        v530.val[1] = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, v435), v434));
        v431 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0F90), v434), v530.val[0]);
        v432 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FA0), v434), v376);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v376.i8, xmmword_29D2F0FB0), v434), v377);
        v376 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FC0), v434), v530.val[0]);
        v377 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, v435), v434));
        v530.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0FD0), v434), v391);
        v530.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v391.i8, xmmword_29D2F0F80), v434), v392);
        v391 = vaddq_s16(vandq_s8(vqtbl2q_s8(v530, v435), v434), v530.val[0]);
        v392 = vaddq_s16(v530.val[1], vandq_s8(vqtbl2q_s8(v530, xmmword_29D2F0FE0), v434));
        v529.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0FF0), v434), v405);
        v529.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v405.i8, xmmword_29D2F0F80), v434), v406);
        v405 = vaddq_s16(vandq_s8(vqtbl2q_s8(v529, v435), v434), v529.val[0]);
        v406 = vaddq_s16(v529.val[1], vandq_s8(vqtbl2q_s8(v529, xmmword_29D2F1000), v434));
      }

      v437 = vaddq_s16(v431, v433);
      v438 = vaddq_s16(v432, v433);
      v439 = vaddq_s16(v376, v433);
      v440 = vaddq_s16(v377, v433);
      v441 = vaddq_s16(v391, v433);
      v442 = vaddq_s16(v392, v433);
      v443 = vaddq_s16(v405, v433);
      v444 = vaddq_s16(v406, v433);
      v445.i64[0] = 0x10001000100010;
      v445.i64[1] = 0x10001000100010;
      v446 = vceqzq_s16(vandq_s8(v187, v445));
      v447 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v437, xmmword_29D2F1080), v446), v437);
      v448 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v438, xmmword_29D2F1080), v446), v438);
      v449 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F1080), v446), v439);
      v450 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F1080), v446), v440);
      v451 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F1080), v446), v441);
      v452 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v442, xmmword_29D2F1080), v446), v442);
      v453 = vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F1080), v446);
      v454 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F1080), v446), v444);
      v455 = vshlq_n_s16(v447, 4uLL);
      v456 = vshlq_n_s16(v448, 4uLL);
      v457 = vshlq_n_s16(v449, 4uLL);
      v458 = vshlq_n_s16(v451, 4uLL);
      v459 = vshlq_n_s16(v452, 4uLL);
      v460 = vzip2q_s64(v455, v456);
      v461.i64[0] = v455.i64[0];
      v461.i64[1] = v456.i64[0];
      v462.i64[0] = v458.i64[0];
      v462.i64[1] = v459.i64[0];
      v463 = vshlq_n_s16(v450, 4uLL);
      v464 = &a1->i8[a2];
      *a1 = v461;
      a1[1] = v462;
      v465 = (a1 + 2 * a2);
      v466 = vshlq_n_s16(vaddq_s16(v453, v443), 4uLL);
      v467 = vshlq_n_s16(v454, 4uLL);
      *v464 = v460;
      v464[1] = vzip2q_s64(v458, v459);
      v459.i64[0] = v457.i64[0];
      v459.i64[1] = v463.i64[0];
      v443.i64[0] = v466.i64[0];
      v443.i64[1] = v467.i64[0];
      *v465 = v459;
      v465[1] = v443;
      v468 = (v465 + a2);
      *v468 = vzip2q_s64(v457, v463);
      v468[1] = vzip2q_s64(v466, v467);
      break;
  }

  return v8;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 2, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 4 * a2;
  v18 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8 - 4;
    }

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 32), a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v23 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
  v11 += result;
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 32), a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(int32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(unint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a3[1];
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v14 = *v7;
  v15 = v7[1];
  v13 = (v7 + a4);
  v16 = v13[1];
  v17 = vshrq_n_s16(v11, 4uLL);
  v18 = vshrq_n_s16(v12, 4uLL);
  v19 = vshrq_n_s16(vzip2q_s64(v14, *v13), 4uLL);
  v20 = vshrq_n_s16(vzip2q_s64(v8, v10), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s64(v15, v16), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s64(v15, v16), 4uLL);
  v23 = vdupq_lane_s32(*v17.i8, 0);
  v482 = vshrq_n_s16(vzip1q_s64(v14, *v13), 4uLL);
  v484 = vshrq_n_s16(vzip1q_s64(v8, v10), 4uLL);
  v24 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v23), 4uLL), 4uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v23), 4uLL), 4uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, v23), 4uLL), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 4uLL), 4uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v484, v23), 4uLL), 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v23), 4uLL), 4uLL);
  v30 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 4uLL), 4uLL);
  v31 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v23), 4uLL), 4uLL);
  v32 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v33 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39 = vmaxq_s16(v36, v38);
  v40.i64[0] = 0x8000800080008000;
  v40.i64[1] = 0x8000800080008000;
  v41 = vminq_s16(v37, v40);
  v42 = vzip1q_s16(v36, v37);
  v43.i64[0] = 0x10001000100010;
  v43.i64[1] = 0x10001000100010;
  v44 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v42)), vceqzq_s16(v42));
  v45 = vpmaxq_s16(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v47 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v48 = vpmaxq_s16(v46, v46);
  v49 = vpminq_s16(v47, v47);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v39, v50);
  v53 = vminq_s16(v41, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v54)), vceqzq_s16(v54));
  v56 = vpmaxq_s16(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v58 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vqtbl1q_s8(vmaxq_s16(v30, v31), xmmword_29D2F1090);
  v69 = vqtbl1q_s8(vminq_s16(v30, v31), xmmword_29D2F1090);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v63, v72);
  v75 = vminq_s16(v64, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v76)), vceqzq_s16(v76));
  v78 = vpmaxq_s16(v77, v77);
  v79 = vmaxq_s16(vmaxq_s16(v45, v56), vmaxq_s16(v67, v78));
  v80 = vclzq_s16(vsubq_s16(v74, v75));
  v81 = vsubq_s16(v43, v80);
  v82 = vminq_s16(v81, v79);
  if (!vmaxvq_s16(v82))
  {
    v181 = (a3->i32[0] >> 8) & 0xFFFFF000 | (a3->i32[0] >> 4);
    *(a1 + 2) = HIBYTE(a3->i32[0]);
    *a1 = v181;
    *a2 = 2;
    return 3;
  }

  v464 = v19;
  v465 = v20;
  v466 = v21;
  v467 = v22;
  v83.i64[0] = 0x4000400040004;
  v83.i64[1] = 0x4000400040004;
  v84.i64[0] = -1;
  v84.i64[1] = -1;
  v85.i64[0] = 0xF000F000F000FLL;
  v85.i64[1] = 0xF000F000F000FLL;
  v480 = vsubq_s16(vshlq_s16(v84, vsubq_s16(v85, v80)), v75);
  v86 = vcgtq_s16(v79, v81);
  v87.i64[0] = 0x8000800080008;
  v87.i64[1] = 0x8000800080008;
  v88.i64[0] = 0x3000300030003;
  v88.i64[1] = 0x3000300030003;
  v473 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v45), v88), 0);
  v474 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v67), v88), 0);
  v476 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v56), v88), 0);
  v478 = vmaxq_s16(vminq_s16(vsubq_s16(v82, v78), v88), 0);
  v89 = vbicq_s8(v83, vceqq_s16(vaddq_s16(v478, v474), vnegq_s16(vaddq_s16(v473, v476))));
  v472 = vorrq_s8(vandq_s8(vceqzq_s16(v82), v88), vandq_s8(v86, v87));
  v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080)), 4uLL), 4uLL);
  v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080)), 4uLL), 4uLL);
  v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080)), 4uLL), 4uLL);
  v492 = v31;
  v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v31, vqtbl1q_s8(v31, xmmword_29D2F1080)), 4uLL), 4uLL);
  v486 = v25;
  v471 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080)), 4uLL), 4uLL);
  v94 = vqtbl1q_s8(vmaxq_s16(v90, v471), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v90, v471), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v38);
  v494 = v24;
  v101 = vminq_s16(v99, v40);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = vpmaxq_s16(v103, v103);
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080)), 4uLL), 4uLL);
  v469 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080)), 4uLL), 4uLL);
  v105 = vqtbl1q_s8(vmaxq_s16(v469, v468), xmmword_29D2F1090);
  v106 = vqtbl1q_s8(vminq_s16(v469, v468), xmmword_29D2F1090);
  v107 = vpmaxq_s16(v105, v105);
  v108 = vpminq_s16(v106, v106);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vmaxq_s16(v100, v109);
  v112 = vminq_s16(v101, v110);
  v113 = vzip1q_s16(v109, v110);
  v114 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v113)), vceqzq_s16(v113));
  v488 = v29;
  v490 = v30;
  v115 = v27;
  v116 = vpmaxq_s16(v114, v114);
  v117 = vqtbl1q_s8(vmaxq_s16(v91, v92), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v91, v92), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v111, v121);
  v124 = vminq_s16(v112, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v125)), vceqzq_s16(v125));
  v127 = v26;
  v128 = v28;
  v129 = vpmaxq_s16(v126, v126);
  v470 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080)), 4uLL), 4uLL);
  v130 = vqtbl1q_s8(vmaxq_s16(v470, v93), xmmword_29D2F1090);
  v131 = vqtbl1q_s8(vminq_s16(v470, v93), xmmword_29D2F1090);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v134 = vpmaxq_s16(v132, v132);
  v135 = vpminq_s16(v133, v133);
  v136 = vmaxq_s16(v123, v134);
  v137 = vminq_s16(v124, v135);
  v138 = vzip1q_s16(v134, v135);
  v139 = vbicq_s8(vsubq_s16(v43, vclsq_s16(v138)), vceqzq_s16(v138));
  v140 = vpmaxq_s16(v139, v139);
  v141 = vmaxq_s16(vmaxq_s16(v104, v116), vmaxq_s16(v129, v140));
  v142 = vclzq_s16(vsubq_s16(v136, v137));
  v143 = vsubq_s16(v43, v142);
  v144 = vcgtq_s16(v141, v143);
  v145 = vminq_s16(v143, v141);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v146 = vbslq_s8(v144, v141, v43);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v104), v88), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v116), v88), 0);
  v149 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v129), v88), 0);
  v150 = vmaxq_s16(vminq_s16(vsubq_s16(v145, v140), v88), 0);
  v151 = vsubq_s16(v145, v147);
  v152 = vsubq_s16(v145, v148);
  v153 = vsubq_s16(v145, v149);
  v154 = vaddq_s16(v147, v148);
  v155 = vsubq_s16(v145, v150);
  v156.i64[0] = 0x4000400040004;
  v156.i64[1] = 0x4000400040004;
  v157 = vbicq_s8(v156, vceqq_s16(vaddq_s16(v150, v149), vnegq_s16(v154)));
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v158 = vandq_s8(v480, v86);
  v159 = vorrq_s8(v472, v89);
  v160 = vaddq_s16(vandq_s8(v82, v86), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v82, v473);
  v162 = vsubq_s16(v82, v476);
  v163 = vsubq_s16(v82, v474);
  v164 = vsubq_s16(v82, v478);
  v165 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v160, v161, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16((*&v146 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v157, v157)), v151, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v155), 3uLL))), 0);
  v166 = vaddvq_s16(v165);
  v168 = a5 < 4 || a6 < 2;
  if (v166)
  {
    v169.i64[0] = 0x3000300030003;
    v169.i64[1] = 0x3000300030003;
    v170 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v145), v169), v146), v157);
    v169.i64[0] = 0xF000F000F000FLL;
    v169.i64[1] = 0xF000F000F000FLL;
    v171 = vsubq_s16(v169, v142);
    v172.i64[0] = -1;
    v172.i64[1] = -1;
    v23 = vbslq_s8(v165, vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080)), v23);
    v494 = vbslq_s8(v165, v90, v494);
    v477 = vbslq_s8(v165, v469, v127);
    v479 = vbslq_s8(v165, v468, v115);
    v481 = vbslq_s8(v165, v91, v128);
    v173 = vbslq_s8(v165, v92, v488);
    v174 = vbslq_s8(v165, v93, v492);
    v161 = vbslq_s8(v165, v151, v161);
    v175 = vbslq_s8(v165, v152, v162);
    v163 = vbslq_s8(v165, v153, v163);
    v164 = vbslq_s8(v165, v155, v164);
    v158 = vbslq_s8(v165, vandq_s8(vsubq_s16(vshlq_s16(v172, v171), v137), v144), v158);
    v82 = vbslq_s8(v165, v145, v82);
    v159 = vbslq_s8(v165, v170, v159);
    v176 = vbslq_s8(v165, v470, v490);
    v177 = vbslq_s8(v165, v471, v486);
    if (v168)
    {
LABEL_10:
      v178 = v479;
      v179 = v481;
      v180 = v477;
      goto LABEL_16;
    }
  }

  else
  {
    v477 = v127;
    v479 = v115;
    v481 = v128;
    v176 = v490;
    v174 = v492;
    v177 = v486;
    v173 = v488;
    v175 = v162;
    if (v168)
    {
      goto LABEL_10;
    }
  }

  v487 = v177;
  v475 = v158;
  v489 = v173;
  v491 = v176;
  v493 = v174;
  v183 = vsubq_s16(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80));
  v184 = vsubq_s16(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F1030));
  v495.val[0] = v482;
  v495.val[1] = v464;
  v495.val[1].i32[3] = v18.i32[3];
  v185 = vqtbl2q_s8(v495, xmmword_29D2F1040);
  v186 = vsubq_s16(v482, vqtbl2q_s8(v495, xmmword_29D2F0FA0));
  v495.val[1] = v484;
  v187 = v465;
  v187.i32[3] = v18.i32[3];
  v188 = vsubq_s16(v484, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F1050));
  v189 = vsubq_s16(v465, vqtbl2q_s8(*(&v495 + 16), xmmword_29D2F0F80));
  v496.val[0] = v466;
  v496.val[1] = v467;
  v496.val[1].i32[3] = v18.i32[3];
  v495.val[0] = vsubq_s16(v466, vqtbl2q_s8(v496, xmmword_29D2F1060));
  v495.val[1] = v184;
  v495.val[1].i32[3] = v183.i32[0];
  v190 = vsubq_s16(v467, vqtbl2q_s8(v496, xmmword_29D2F0F80));
  v183.i32[0] = v184.i32[3];
  v496.val[0].i64[0] = 0x4000400040004;
  v496.val[0].i64[1] = 0x4000400040004;
  v191 = vshrq_n_s16(vshlq_n_s16(v183, 4uLL), 4uLL);
  v192 = vshrq_n_s16(vshlq_n_s16(v186, 4uLL), 4uLL);
  v193 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, v185), 4uLL), 4uLL);
  v194 = vshrq_n_s16(vshlq_n_s16(v188, 4uLL), 4uLL);
  v195 = vshrq_n_s16(vshlq_n_s16(v189, 4uLL), 4uLL);
  v196 = vshrq_n_s16(vshlq_n_s16(v495.val[0], 4uLL), 4uLL);
  v197 = vshrq_n_s16(vshlq_n_s16(v190, 4uLL), 4uLL);
  v485 = vshrq_n_s16(vshlq_n_s16(v495.val[1], 4uLL), 4uLL);
  v198 = vqtbl1q_s8(vmaxq_s16(v191, v485), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v191, v485), xmmword_29D2F1090);
  v199 = vpmaxq_s16(v198, v198);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v200 = vpmaxq_s16(v199, v199);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v187.i64[0] = 0x8000800080008000;
  v187.i64[1] = 0x8000800080008000;
  v201 = vmaxq_s16(v200, v187);
  v496.val[1].i64[0] = 0x8000800080008000;
  v496.val[1].i64[1] = 0x8000800080008000;
  v496.val[1] = vminq_s16(v495.val[0], v496.val[1]);
  v202 = vzip1q_s16(v200, v495.val[0]);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v204 = v163;
  v205 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v202)), vceqzq_s16(v202));
  v206 = vpmaxq_s16(v205, v205);
  v207 = vqtbl1q_s8(vmaxq_s16(v192, v193), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v192, v193), xmmword_29D2F1090);
  v208 = vpmaxq_s16(v207, v207);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v209 = vpmaxq_s16(v208, v208);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v210 = vmaxq_s16(v201, v209);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v211 = vzip1q_s16(v209, v495.val[0]);
  v212 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v211)), vceqzq_s16(v211));
  v213 = vpmaxq_s16(v212, v212);
  v214 = vqtbl1q_s8(vmaxq_s16(v194, v195), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v194, v195), xmmword_29D2F1090);
  v215 = vpmaxq_s16(v214, v214);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v216 = vpmaxq_s16(v215, v215);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v217 = vmaxq_s16(v210, v216);
  v496.val[1] = vminq_s16(v496.val[1], v495.val[0]);
  v218 = vzip1q_s16(v216, v495.val[0]);
  v219 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v218)), vceqzq_s16(v218));
  v220 = vpmaxq_s16(v219, v219);
  v483 = v196;
  v221 = vqtbl1q_s8(vmaxq_s16(v196, v197), xmmword_29D2F1090);
  v495.val[0] = vqtbl1q_s8(vminq_s16(v196, v197), xmmword_29D2F1090);
  v222 = vpmaxq_s16(v221, v221);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v223 = vpmaxq_s16(v222, v222);
  v495.val[0] = vpminq_s16(v495.val[0], v495.val[0]);
  v224 = vmaxq_s16(v217, v223);
  v225 = vminq_s16(v496.val[1], v495.val[0]);
  v226 = vzip1q_s16(v223, v495.val[0]);
  v227 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v226)), vceqzq_s16(v226));
  v496.val[1] = vpmaxq_s16(v227, v227);
  v495.val[0] = vmaxq_s16(vmaxq_s16(v206, v213), vmaxq_s16(v220, v496.val[1]));
  v228 = vclzq_s16(vsubq_s16(v224, v225));
  v229 = vsubq_s16(v203, v228);
  v230 = vcgtq_s16(v495.val[0], v229);
  v231 = vminq_s16(v229, v495.val[0]);
  v232.i64[0] = 0x3000300030003;
  v232.i64[1] = 0x3000300030003;
  v233 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v206), v232), 0);
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v213), v232), 0);
  v235 = v175;
  v236 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v220), v232), 0);
  v496.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v231, v496.val[1]), v232), 0);
  v237 = vsubq_s16(v231, v233);
  v238 = vsubq_s16(v231, v234);
  v239 = vsubq_s16(v231, v236);
  v240 = vsubq_s16(v231, v496.val[1]);
  v241 = vbicq_s8(v496.val[0], vceqq_s16(vaddq_s16(v496.val[1], v236), vnegq_s16(vaddq_s16(v233, v234))));
  v234.i64[0] = 0x7000700070007;
  v234.i64[1] = 0x7000700070007;
  v496.val[1].i64[0] = 0x8000800080008;
  v496.val[1].i64[1] = 0x8000800080008;
  v242 = v161;
  v243 = vandq_s8(v159, v232);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v245 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(vandq_s8(v159, v496.val[1]))), vandq_s8(vaddq_s16(v159, v159), v496.val[1])), vandq_s8(vceqq_s16(v243, v244), v203)), v242, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v204, v235), v164), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v231, v230), vaddq_s16(v241, v241)), v237, v234), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL))), 0);
  v178 = v479;
  if (vaddvq_s16(v245))
  {
    v246.i64[0] = 0x9000900090009;
    v246.i64[1] = 0x9000900090009;
    v247 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v231), v244), vsubq_s16(vandq_s8(v230, v246), vmvnq_s8(v230))), v241);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v249 = vandq_s8(vsubq_s16(vshlq_s16(v246, vsubq_s16(v248, v228)), v225), v230);
    v23.i32[0] = vbslq_s8(v245, vextq_s8(v18, v18, 0xCuLL), v23).u32[0];
    v494 = vbslq_s8(v245, v191, v494);
    v177 = vbslq_s8(v245, v485, v487);
    v180 = vbslq_s8(v245, v192, v477);
    v178 = vbslq_s8(v245, v193, v479);
    v179 = vbslq_s8(v245, v194, v481);
    v173 = vbslq_s8(v245, v195, v489);
    v176 = vbslq_s8(v245, v483, v491);
    v174 = vbslq_s8(v245, v197, v493);
    v161 = vbslq_s8(v245, v237, v242);
    v175 = vbslq_s8(v245, v238, v235);
    v163 = vbslq_s8(v245, v239, v204);
    v164 = vbslq_s8(v245, v240, v164);
    v158 = vbslq_s8(v245, v249, v475);
    v82 = vbslq_s8(v245, v231, v82);
    v159 = vbslq_s8(v245, v247, v159);
  }

  else
  {
    v176 = v491;
    v174 = v493;
    v177 = v487;
    v173 = v489;
    v179 = v481;
    v158 = v475;
    v180 = v477;
    v163 = v204;
    v175 = v235;
    v161 = v242;
  }

LABEL_16:
  v250.i64[0] = 0x8000800080008;
  v250.i64[1] = 0x8000800080008;
  v251 = vandq_s8(v159, v250);
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v254 = vceqq_s16(vandq_s8(v159, v252), v253);
  v253.i64[0] = 0x10001000100010;
  v253.i64[1] = 0x10001000100010;
  v255 = vandq_s8(v254, v253);
  v253.i64[0] = 0x7000700070007;
  v253.i64[1] = 0x7000700070007;
  v256 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v82, vceqzq_s16(v251)), vandq_s8(vaddq_s16(v159, v159), v250)), v255), v161, v253), vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v175), v164), 3uLL));
  if ((vpaddq_s16(v256, v256).i16[0] - 471) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v257 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v258 = 8 * (a1 & 7);
    if (v258)
    {
      v259 = *v257 & ~(-1 << v258);
    }

    else
    {
      v259 = 0;
    }

    *a2 = 0;
    v260 = ((v82.i16[0] << 10) + 15360) & 0x3C00;
    if (!v82.i16[0])
    {
      v260 = 0;
    }

    if (v82.i16[1])
    {
      v261 = ((v82.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v261 = 0;
    }

    v262 = v260 | v261 | v159.i8[0] & 0x1F | (32 * (v159.i8[2] & 0x1Fu));
    v263 = v23.i16[0] & 0xFFF | ((v23.i16[1] & 0xFFF) << 12);
    v264 = (v262 << v258) | v259;
    if (v258 >= 0x2E)
    {
      *v257 = v264;
      v264 = v262 >> (-8 * (a1 & 7u));
    }

    v265 = (v258 + 18) & 0x3A;
    v266 = v264 | (v263 << v265);
    if (v265 >= 0x28)
    {
      *(v257 + (((v258 + 18) >> 3) & 8)) = v266;
      v266 = v263 >> -v265;
    }

    v267 = v258 + 42;
    v268 = vsubq_s16(v82, v161);
    v269 = vsubq_s16(v82, v175);
    v270 = vsubq_s16(v82, v163);
    v271 = vsubq_s16(v82, v164);
    *v268.i8 = vqmovn_u16(v268);
    *v269.i8 = vqmovn_u16(v269);
    *v270.i8 = vqmovn_u16(v270);
    *v271.i8 = vqmovn_u16(v271);
    v268.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v268, v269), vzip1q_s8(v270, v271)), vzip1q_s16(vtrn2q_s8(v268, v269), vtrn2q_s8(v270, v271))).u64[0];
    v270.i64[0] = 0x202020202020202;
    v270.i64[1] = 0x202020202020202;
    v272 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v159.i8, 0x4000400040004)))), v270);
    v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v271.i64[0] = -1;
    v271.i64[1] = -1;
    v273 = vandq_s8(vshlq_u8(v271, vorrq_s8(v272, v270)), v268.u64[0]);
    v274 = vmovl_u8(*v272.i8);
    v275 = vpaddq_s16(vshlq_u16(vmovl_u8(*v273.i8), vtrn1q_s16(0, v274)), vmovl_high_u8(v273));
    v276 = vpaddq_s16(v274, vmovl_high_u8(v272));
    v277 = vmovl_u16(*v276.i8);
    v278 = vmovl_high_u16(v276);
    v279 = vpaddq_s32(vshlq_u32(vmovl_u16(*v275.i8), vtrn1q_s32(0, v277)), vshlq_u32(vmovl_high_u16(v275), vtrn1q_s32(0, v278)));
    v280 = vpaddq_s32(v277, v278);
    v281.i64[0] = v279.u32[0];
    v281.i64[1] = v279.u32[1];
    v282 = v281;
    v281.i64[0] = v279.u32[2];
    v281.i64[1] = v279.u32[3];
    v283 = v281;
    v281.i64[0] = v280.u32[0];
    v281.i64[1] = v280.u32[1];
    v284 = v281;
    v281.i64[0] = v280.u32[2];
    v281.i64[1] = v280.u32[3];
    v285 = vpaddq_s64(vshlq_u64(v282, vzip1q_s64(0, v284)), vshlq_u64(v283, vzip1q_s64(0, v281)));
    v286 = vpaddq_s64(v284, v281);
    v287 = (v258 + 42) & 0x3A;
    v288 = (v285.i64[0] << v287) | v266;
    if ((v286.i64[0] + v287) >= 0x40)
    {
      *(v257 + ((v267 >> 3) & 8)) = v288;
      v288 = v285.i64[0] >> -v287;
    }

    v289 = vceqq_s16(v82, v161);
    v290 = v286.i64[0] + v267;
    v291 = v288 | (v285.i64[1] << v290);
    if ((v290 & 0x3F) + v286.i64[1] >= 0x40)
    {
      *(v257 + ((v290 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v291;
      v291 = v285.i64[1] >> -(v290 & 0x3F);
      if ((v290 & 0x3F) == 0)
      {
        v291 = 0;
      }
    }

    v292 = vandq_s8(v158, v289);
    v293 = v290 + v286.i64[1];
    v294.i64[0] = -1;
    v294.i64[1] = -1;
    v295 = vandq_s8(vextq_s8(vtstq_s16(v251, v251), 0, 0xCuLL), v82);
    v296.i64[0] = 0xF000F000F000FLL;
    v296.i64[1] = 0xF000F000F000FLL;
    v297 = vandq_s8(vshlq_u16(v294, vaddq_s16(v295, v296)), v158);
    v298 = vmovl_u16(*v295.i8);
    v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v297.i8), vtrn1q_s32(0, v298)), vmovl_high_u16(v297));
    v300 = vpaddq_s32(v298, vmovl_high_u16(v295));
    v301.i64[0] = v299.u32[0];
    v301.i64[1] = v299.u32[1];
    v302 = v301;
    v301.i64[0] = v299.u32[2];
    v301.i64[1] = v299.u32[3];
    v303 = v301;
    v301.i64[0] = v300.u32[0];
    v301.i64[1] = v300.u32[1];
    v304 = v301;
    v301.i64[0] = v300.u32[2];
    v301.i64[1] = v300.u32[3];
    v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
    v306 = vpaddq_s64(v304, v301);
    v307 = (v305.i64[0] << v293) | v291;
    if (v306.i64[0] + (v293 & 0x3F) >= 0x40)
    {
      *(v257 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v293 & 0x3F);
      if ((v293 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vaddq_s16(v292, v494);
    v309 = v306.i64[0] + v293;
    v310 = v307 | (v305.i64[1] << v309);
    if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v257 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
      v310 = v305.i64[1] >> -(v309 & 0x3F);
      if ((v309 & 0x3F) == 0)
      {
        v310 = 0;
      }
    }

    v311 = v309 + v306.i64[1];
    v312 = vextq_s8(0, v161, 0xCuLL);
    v313.i64[0] = 0xF000F000F000FLL;
    v313.i64[1] = 0xF000F000F000FLL;
    v314.i64[0] = -1;
    v314.i64[1] = -1;
    v315 = vandq_s8(vshlq_u16(v314, vaddq_s16(v312, v313)), v308);
    v316 = vmovl_u16(*v312.i8);
    v317 = vmovl_high_u16(v312);
    v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v315.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v315), vtrn1q_s32(0, v317)));
    v319 = vpaddq_s32(v316, v317);
    v320.i64[0] = v318.u32[0];
    v320.i64[1] = v318.u32[1];
    v321 = v320;
    v320.i64[0] = v318.u32[2];
    v320.i64[1] = v318.u32[3];
    v322 = v320;
    v320.i64[0] = v319.u32[0];
    v320.i64[1] = v319.u32[1];
    v323 = v320;
    v320.i64[0] = v319.u32[2];
    v320.i64[1] = v319.u32[3];
    v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
    v325 = vpaddq_s64(v323, v320);
    v326 = (v324.i64[0] << v311) | v310;
    if (v325.i64[0] + (v311 & 0x3F) >= 0x40)
    {
      *(v257 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s16(v82, v175);
    v328 = vaddq_s16(v177, v292);
    v329 = v325.i64[0] + v311;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v257 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v158, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF000F000F000FLL;
    v333.i64[1] = 0xF000F000F000FLL;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v161, v333)), v328);
    v336 = vmovl_u16(*v161.i8);
    v337 = vmovl_high_u16(v161);
    v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v335.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v335), vtrn1q_s32(0, v337)));
    v339 = vpaddq_s32(v336, v337);
    v340.i64[0] = v338.u32[0];
    v340.i64[1] = v338.u32[1];
    v341 = v340;
    v340.i64[0] = v338.u32[2];
    v340.i64[1] = v338.u32[3];
    v342 = v340;
    v340.i64[0] = v339.u32[0];
    v340.i64[1] = v339.u32[1];
    v343 = v340;
    v340.i64[0] = v339.u32[2];
    v340.i64[1] = v339.u32[3];
    v344 = vpaddq_s64(vshlq_u64(v341, vzip1q_s64(0, v343)), vshlq_u64(v342, vzip1q_s64(0, v340)));
    v345 = vpaddq_s64(v343, v340);
    v346 = (v344.i64[0] << v332) | v330;
    if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v257 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
      v346 = v344.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v346 = 0;
      }
    }

    v347 = vaddq_s16(v180, v331);
    v348 = v345.i64[0] + v332;
    v349 = v346 | (v344.i64[1] << v348);
    if ((v348 & 0x3F) + v345.i64[1] >= 0x40)
    {
      *(v257 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
      v349 = v344.i64[1] >> -(v348 & 0x3F);
      if ((v348 & 0x3F) == 0)
      {
        v349 = 0;
      }
    }

    v350 = v348 + v345.i64[1];
    v351.i64[0] = 0xF000F000F000FLL;
    v351.i64[1] = 0xF000F000F000FLL;
    v352.i64[0] = -1;
    v352.i64[1] = -1;
    v353 = vshlq_u16(v352, vaddq_s16(v175, v351));
    v354 = vandq_s8(v353, v347);
    v355 = vmovl_u16(*v354.i8);
    v356 = vmovl_high_u16(v354);
    v357 = vmovl_u16(*v175.i8);
    v358 = vmovl_high_u16(v175);
    v359 = vtrn1q_s32(0, v357);
    v360 = vtrn1q_s32(0, v358);
    v361 = vpaddq_s32(vshlq_u32(v355, v359), vshlq_u32(v356, v360));
    v362 = vpaddq_s32(v357, v358);
    v363.i64[0] = v361.u32[0];
    v363.i64[1] = v361.u32[1];
    v364 = v363;
    v363.i64[0] = v361.u32[2];
    v363.i64[1] = v361.u32[3];
    v365 = v363;
    v363.i64[0] = v362.u32[0];
    v363.i64[1] = v362.u32[1];
    v366 = v363;
    v363.i64[0] = v362.u32[2];
    v363.i64[1] = v362.u32[3];
    v367 = vzip1q_s64(0, v366);
    v368 = vzip1q_s64(0, v363);
    v369 = vpaddq_s64(vshlq_u64(v364, v367), vshlq_u64(v365, v368));
    v370 = vpaddq_s64(v366, v363);
    v371 = (v369.i64[0] << v350) | v349;
    if (v370.i64[0] + (v350 & 0x3F) >= 0x40)
    {
      *(v257 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
      if ((v350 & 0x3F) != 0)
      {
        v371 = v369.i64[0] >> -(v350 & 0x3F);
      }

      else
      {
        v371 = 0;
      }
    }

    v372 = vceqq_s16(v82, v163);
    v373 = vaddq_s16(v178, v331);
    v374 = v370.i64[0] + v350;
    v375 = v371 | (v369.i64[1] << v374);
    if ((v374 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      v375 = v369.i64[1] >> -(v374 & 0x3F);
      if ((v374 & 0x3F) == 0)
      {
        v375 = 0;
      }
    }

    v376 = vandq_s8(v158, v372);
    v377 = v374 + v370.i64[1];
    v378 = vandq_s8(v353, v373);
    v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), v359), vshlq_u32(vmovl_high_u16(v378), v360));
    v380.i64[0] = v379.u32[0];
    v380.i64[1] = v379.u32[1];
    v381 = v380;
    v380.i64[0] = v379.u32[2];
    v380.i64[1] = v379.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v381, v367), vshlq_u64(v380, v368));
    v383 = (v382.i64[0] << v377) | v375;
    if (v370.i64[0] + (v377 & 0x3F) >= 0x40)
    {
      *(v257 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v382.i64[0] >> -(v377 & 0x3F);
      if ((v377 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s16(v179, v376);
    v385 = v370.i64[0] + v377;
    v386 = (v370.i64[0] + v377) & 0x3F;
    v387 = v383 | (v382.i64[1] << v385);
    if ((v385 & 0x3F) + v370.i64[1] >= 0x40)
    {
      *(v257 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -v386;
      if (!v386)
      {
        v387 = 0;
      }
    }

    v388 = v385 + v370.i64[1];
    v389.i64[0] = 0xF000F000F000FLL;
    v389.i64[1] = 0xF000F000F000FLL;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u16(v390, vaddq_s16(v163, v389));
    v392 = vandq_s8(v391, v384);
    v393 = vmovl_u16(*v392.i8);
    v394 = vmovl_high_u16(v392);
    v395 = vmovl_u16(*v163.i8);
    v396 = vmovl_high_u16(v163);
    v397 = vtrn1q_s32(0, v395);
    v398 = vtrn1q_s32(0, v396);
    v399 = vpaddq_s32(vshlq_u32(v393, v397), vshlq_u32(v394, v398));
    v400 = vpaddq_s32(v395, v396);
    v401.i64[0] = v399.u32[0];
    v401.i64[1] = v399.u32[1];
    v402 = v401;
    v401.i64[0] = v399.u32[2];
    v401.i64[1] = v399.u32[3];
    v403 = v401;
    v401.i64[0] = v400.u32[0];
    v401.i64[1] = v400.u32[1];
    v404 = v401;
    v401.i64[0] = v400.u32[2];
    v401.i64[1] = v400.u32[3];
    v405 = vzip1q_s64(0, v404);
    v406 = vzip1q_s64(0, v401);
    v407 = vpaddq_s64(vshlq_u64(v402, v405), vshlq_u64(v403, v406));
    v408 = vpaddq_s64(v404, v401);
    v409 = (v385 + v370.i64[1]) & 0x3F;
    v410 = (v407.i64[0] << (v385 + v370.i8[8])) | v387;
    if ((v408.i64[0] + v409) >= 0x40)
    {
      *(v257 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      if (v409)
      {
        v410 = v407.i64[0] >> -v409;
      }

      else
      {
        v410 = 0;
      }
    }

    v411 = vceqq_s16(v82, v164);
    v412 = vaddq_s16(v173, v376);
    v413 = v408.i64[0] + v388;
    v414 = v410 | (v407.i64[1] << v413);
    if ((v413 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v407.i64[1] >> -(v413 & 0x3F);
      if ((v413 & 0x3F) == 0)
      {
        v414 = 0;
      }
    }

    v415 = vandq_s8(v158, v411);
    v416 = v413 + v408.i64[1];
    v417 = vandq_s8(v391, v412);
    v418 = vpaddq_s32(vshlq_u32(vmovl_u16(*v417.i8), v397), vshlq_u32(vmovl_high_u16(v417), v398));
    v419.i64[0] = v418.u32[0];
    v419.i64[1] = v418.u32[1];
    v420 = v419;
    v419.i64[0] = v418.u32[2];
    v419.i64[1] = v418.u32[3];
    v421 = vpaddq_s64(vshlq_u64(v420, v405), vshlq_u64(v419, v406));
    v422 = (v421.i64[0] << v416) | v414;
    if (v408.i64[0] + (v416 & 0x3F) >= 0x40)
    {
      *(v257 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v421.i64[0] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vaddq_s16(v176, v415);
    v424 = v408.i64[0] + v416;
    v425 = (v408.i64[0] + v416) & 0x3F;
    v426 = v422 | (v421.i64[1] << v424);
    if ((v424 & 0x3F) + v408.i64[1] >= 0x40)
    {
      *(v257 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v421.i64[1] >> -v425;
      if (!v425)
      {
        v426 = 0;
      }
    }

    v427 = v424 + v408.i64[1];
    v428.i64[0] = 0xF000F000F000FLL;
    v428.i64[1] = 0xF000F000F000FLL;
    v429.i64[0] = -1;
    v429.i64[1] = -1;
    v430 = vshlq_u16(v429, vaddq_s16(v164, v428));
    v431 = vandq_s8(v430, v423);
    v432 = vmovl_u16(*v431.i8);
    v433 = vmovl_high_u16(v431);
    v434 = vmovl_u16(*v164.i8);
    v435 = vmovl_high_u16(v164);
    v436 = vtrn1q_s32(0, v434);
    v437 = vtrn1q_s32(0, v435);
    v438 = vpaddq_s32(vshlq_u32(v432, v436), vshlq_u32(v433, v437));
    v439 = vpaddq_s32(v434, v435);
    v440.i64[0] = v438.u32[0];
    v440.i64[1] = v438.u32[1];
    v441 = v440;
    v440.i64[0] = v438.u32[2];
    v440.i64[1] = v438.u32[3];
    v442 = v440;
    v440.i64[0] = v439.u32[0];
    v440.i64[1] = v439.u32[1];
    v443 = v440;
    v440.i64[0] = v439.u32[2];
    v440.i64[1] = v439.u32[3];
    v444 = vzip1q_s64(0, v443);
    v445 = vzip1q_s64(0, v440);
    v446 = vpaddq_s64(vshlq_u64(v441, v444), vshlq_u64(v442, v445));
    v447 = vpaddq_s64(v443, v440);
    v448 = (v424 + v408.i64[1]) & 0x3F;
    v449 = (v446.i64[0] << (v424 + v408.i8[8])) | v426;
    if ((v447.i64[0] + v448) > 0x3F)
    {
      *(v257 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      if (v448)
      {
        v449 = v446.i64[0] >> -v448;
      }

      else
      {
        v449 = 0;
      }
    }

    v450 = vaddq_s16(v174, v415);
    v451 = v447.i64[0] + v427;
    v452 = v449 | (v446.i64[1] << v451);
    if ((v451 & 0x3F) + v447.i64[1] >= 0x40)
    {
      *(v257 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v446.i64[1] >> -(v451 & 0x3F);
      if ((v451 & 0x3F) == 0)
      {
        v452 = 0;
      }
    }

    v453 = v451 + v447.i64[1];
    v454 = vandq_s8(v430, v450);
    v455 = vpaddq_s32(vshlq_u32(vmovl_u16(*v454.i8), v436), vshlq_u32(vmovl_high_u16(v454), v437));
    v456.i64[0] = v455.u32[0];
    v456.i64[1] = v455.u32[1];
    v457 = v456;
    v456.i64[0] = v455.u32[2];
    v456.i64[1] = v455.u32[3];
    v458 = vpaddq_s64(vshlq_u64(v457, v444), vshlq_u64(v456, v445));
    v459 = (v458.i64[0] << v453) | v452;
    if (v447.i64[0] + (v453 & 0x3F) >= 0x40)
    {
      *(v257 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
      v459 = v458.i64[0] >> -(v453 & 0x3F);
      if ((v453 & 0x3F) == 0)
      {
        v459 = 0;
      }
    }

    v460 = v447.i64[0] + v453;
    v461 = (v447.i64[0] + v453) & 0x3F;
    v462 = v459 | (v458.i64[1] << (v447.i8[0] + v453));
    if ((v461 + v447.i64[1]) >= 0x40)
    {
      *(v257 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
      v462 = v458.i64[1] >> -v461;
      if (!v461)
      {
        v462 = 0;
      }
    }

    v463 = v460 + v447.i64[1];
    if ((v463 & 0x3F) != 0)
    {
      *(v257 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
    }

    result = (v463 - v258 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v70 = *MEMORY[0x29EDCA608];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    v11 = a6;
    if (a5 > 3)
    {
      v14 = a5 & 0x7C;
      if (a5 == v14)
      {
        v15 = 0;
        v16 = &v64;
        do
        {
          v17 = a3;
          v18 = v16;
          v19 = a5;
          do
          {
            v20 = *v17++;
            v21 = vshrq_n_u32(v20, 4uLL);
            *(v18 - 8) = v21.i32[0] & 0xFFFF0FFF;
            *(v18 - 4) = v21.i32[1] & 0xFFFF0FFF;
            *v18 = v21.i32[2] & 0xFFFF0FFF;
            v18[4] = v21.i32[3] & 0xFFFF0FFF;
            v18 += 16;
            v19 -= 4;
          }

          while (v19);
          ++v15;
          v16 = (v16 + 4);
          a3 = (a3 + a4);
        }

        while (v15 != a6);
      }

      else
      {
        v22 = 0;
        v23 = &v62;
        v24 = &v64;
        do
        {
          v25 = a3;
          v26 = v24;
          v27 = a5 & 0x7C;
          do
          {
            v28 = *v25++;
            v29 = vshrq_n_u32(v28, 4uLL);
            *(v26 - 8) = v29.i32[0] & 0xFFFF0FFF;
            *(v26 - 4) = v29.i32[1] & 0xFFFF0FFF;
            *v26 = v29.i32[2] & 0xFFFF0FFF;
            v26[4] = v29.i32[3] & 0xFFFF0FFF;
            v26 += 16;
            v27 -= 4;
          }

          while (v27);
          v30 = v14;
          v31 = a5 - v14;
          do
          {
            LODWORD(v23[v30]) = (a3->i32[v30] >> 4) & 0xFFF0FFF;
            ++v30;
            --v31;
          }

          while (v31);
          ++v22;
          v24 = (v24 + 4);
          a3 = (a3 + a4);
          v23 = (v23 + 4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v12 = &a3->i32[2];
      v13 = &v63;
      do
      {
        *(v13 - 4) = (*(v12 - 2) >> 4) & 0xFFF0FFF;
        if (a5 != 1)
        {
          *v13 = (*(v12 - 1) >> 4) & 0xFFF0FFF;
          if (a5 != 2)
          {
            v13[4] = (*v12 >> 4) & 0xFFF0FFF;
          }
        }

        v12 = (v12 + a4);
        ++v13;
        --v11;
      }

      while (v11);
    }
  }

  v46 = v62;
  v47 = WORD1(v62);
  v48 = v63;
  v49 = WORD1(v63);
  v50 = WORD2(v62);
  v51 = WORD3(v62);
  v52 = WORD2(v63);
  v53 = WORD3(v63);
  v54 = v64;
  v55 = WORD1(v64);
  v56 = v65;
  v57 = WORD1(v65);
  v58 = WORD2(v64);
  v59 = WORD3(v64);
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = WORD2(v65);
  v61 = WORD3(v65);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = WORD4(v62);
  v47 = WORD5(v62);
  v48 = WORD4(v63);
  v49 = WORD5(v63);
  v50 = WORD6(v62);
  v51 = HIWORD(v62);
  v52 = WORD6(v63);
  v53 = HIWORD(v63);
  v54 = WORD4(v64);
  v55 = WORD5(v64);
  v56 = WORD4(v65);
  v57 = WORD5(v65);
  v58 = WORD6(v64);
  v59 = HIWORD(v64);
  v60 = WORD6(v65);
  v61 = HIWORD(v65);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 16, &v46, a7, v32, v37);
  v46 = v66;
  v47 = WORD1(v66);
  v48 = v67;
  v49 = WORD1(v67);
  v50 = WORD2(v66);
  v51 = WORD3(v66);
  v52 = WORD2(v67);
  v53 = WORD3(v67);
  v54 = v68;
  v55 = WORD1(v68);
  v56 = v69;
  v57 = WORD1(v69);
  v58 = WORD2(v68);
  v59 = WORD3(v68);
  if (a5 >= 8)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = WORD2(v69);
  v61 = WORD3(v69);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 32, &v46, a7, v39, v34);
  v46 = WORD4(v66);
  v47 = WORD5(v66);
  v48 = WORD4(v67);
  v49 = WORD5(v67);
  v50 = WORD6(v66);
  v51 = HIWORD(v66);
  v52 = WORD6(v67);
  v53 = HIWORD(v67);
  v54 = WORD4(v68);
  v55 = WORD5(v68);
  v56 = WORD4(v69);
  v57 = WORD5(v69);
  v58 = WORD6(v68);
  v59 = HIWORD(v68);
  v60 = WORD6(v69);
  v61 = HIWORD(v69);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 48, &v46, a7, v39, v37);
  if (v40)
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  if (v38)
  {
    v43 = 2;
  }

  else
  {
    v43 = 0;
  }

  if (result)
  {
    v44 = -8;
  }

  else
  {
    v44 = -16;
  }

  *a2 = v44 | v42 | v36 | v43;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v347 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v296 = v7;
  v8 = a4 < 2 || a5 == 0;
  v295 = v8;
  v9 = a4 < 2 || a5 < 2;
  v294 = v9;
  v10 = a4 < 3 || a5 == 0;
  v293 = v10;
  v11 = a4 < 3 || a5 < 2;
  v292 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v291 = v6;
  v12 = a4 < 4 || a5 < 2;
  v290 = v12;
  v13 = &v329;
  v14 = &v331;
  v15 = &v335;
  v16 = &v339;
  v17 = &v343;
  v18 = &v345;
  v19 = &v314;
  v20 = v312;
  v21 = &v310;
  v22 = &v308;
  v23 = &v306;
  v24 = v304;
  v25 = 1;
  v26 = &v333;
  v27 = &v337;
  v28 = &v341;
  v289 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)6,(AGXTextureFootprint)3>::compBits[v5];
    *v19 = v32;
    if (v32 <= 11)
    {
      if (v32 == 2)
      {
        v30 = 5;
      }

      else
      {
        v30 = v32 == 10;
      }
    }

    else
    {
      switch(v32)
      {
        case 12:
          v30 = 2;
          break;
        case 16:
          v30 = 3;
          break;
        case 32:
          v30 = 4;
          break;
      }
    }

    *v23 = v30;
    v33 = 1 << (v32 - 1);
    *v24 = v33;
    v34 = *(a2 + 4 * v5);
    if (a3 == 1)
    {
      v34 ^= v33;
      if (v34 == 1)
      {
        v34 = 0;
      }

      *v13 = v34;
      v43 = (a2 + 4 * v5);
      if ((v43[2] ^ v33) == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = v43[2] ^ v33;
      }

      *v14 = v36;
      if ((v43[4] ^ v33) == 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v43[4] ^ v33;
      }

      *v26 = v37;
      if ((v43[6] ^ v33) == 1)
      {
        v38 = 0;
      }

      else
      {
        v38 = v43[6] ^ v33;
      }

      *v15 = v38;
      v39 = v43[8] ^ v33;
      if (v39 == 1)
      {
        v39 = 0;
      }

      *v27 = v39;
      if ((v43[10] ^ v33) == 1)
      {
        v40 = 0;
      }

      else
      {
        v40 = v43[10] ^ v33;
      }

      *v16 = v40;
      if ((v43[12] ^ v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v43[12] ^ v33;
      }

      *v28 = v41;
      v44 = v43[14] ^ v33;
      if (v44 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = v44;
      }
    }

    else if (a3 == 3)
    {
      v34 ^= v33;
      *v13 = v34;
      v35 = (a2 + 4 * v5);
      v36 = v35[2] ^ v33;
      *v14 = v36;
      v37 = v35[4] ^ v33;
      *v26 = v37;
      v38 = v35[6] ^ v33;
      *v15 = v38;
      v39 = v35[8] ^ v33;
      *v27 = v39;
      v40 = v35[10] ^ v33;
      *v16 = v40;
      v41 = v35[12] ^ v33;
      *v28 = v41;
      v42 = v35[14] ^ v33;
    }

    else
    {
      *v13 = v34;
      v45 = (a2 + 4 * v5);
      v36 = v45[2];
      *v14 = v36;
      v37 = v45[4];
      *v26 = v37;
      v38 = v45[6];
      *v15 = v38;
      v39 = v45[8];
      *v27 = v39;
      v40 = v45[10];
      *v16 = v40;
      v41 = v45[12];
      *v28 = v41;
      v42 = v45[14];
    }

    *v17 = v42;
    *v21 = v34;
    *v20 = v34;
    *v22 = 0;
    if (v295)
    {
      v46 = v34;
    }

    else
    {
      v46 = v34;
      if (v36 < v34)
      {
        *v22 = 1;
        *v20 = v36;
        v46 = v36;
      }

      if (v34 >= v36)
      {
        v47 = v21;
      }

      else
      {
        v47 = v14;
      }

      v34 = *v47;
      *v21 = v34;
    }

    a2 = v29;
    if (v296)
    {
      if (v294)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v37 < v46)
      {
        *v22 = 2;
        *v20 = v37;
        v46 = v37;
      }

      if (v34 >= v37)
      {
        v48 = v21;
      }

      else
      {
        v48 = v26;
      }

      v34 = *v48;
      *v21 = v34;
      if (v294)
      {
LABEL_69:
        if (v293)
        {
          goto LABEL_70;
        }

        goto LABEL_84;
      }
    }

    if (v38 < v46)
    {
      *v22 = 3;
      *v20 = v38;
      v46 = v38;
    }

    if (v34 >= v38)
    {
      v49 = v21;
    }

    else
    {
      v49 = v15;
    }

    v34 = *v49;
    *v21 = v34;
    if (v293)
    {
LABEL_70:
      if (v291)
      {
        goto LABEL_96;
      }

LABEL_90:
      if (v40 < v46)
      {
        *v22 = 5;
        *v20 = v40;
        v46 = v40;
      }

      if (v34 >= v40)
      {
        v51 = v21;
      }

      else
      {
        v51 = v16;
      }

      v34 = *v51;
      *v21 = v34;
      goto LABEL_96;
    }

LABEL_84:
    if (v39 < v46)
    {
      *v22 = 4;
      *v20 = v39;
      v46 = v39;
    }

    if (v34 >= v39)
    {
      v50 = v21;
    }

    else
    {
      v50 = v27;
    }

    v34 = *v50;
    *v21 = v34;
    if (!v291)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v289;
    if (!v292)
    {
      if (v41 < v46)
      {
        *v22 = 6;
        *v20 = v41;
        v46 = v41;
      }

      if (v34 >= v41)
      {
        v52 = v21;
      }

      else
      {
        v52 = v28;
      }

      v34 = *v52;
      *v21 = v34;
    }

    if (!v290)
    {
      if (v42 < v46)
      {
        *v22 = 7;
        *v20 = v42;
        v46 = v42;
      }

      if (v34 >= v42)
      {
        v53 = v21;
      }

      else
      {
        v53 = v17;
      }

      v34 = *v53;
      *v21 = *v53;
    }

    v54 = v34 - v46;
    v55 = __clz(v34 - v46);
    v56 = 32 - v55;
    if (v32 <= 11)
    {
      if (v32 != 2)
      {
        if (v32 == 8)
        {
          v58 = 1;
          goto LABEL_133;
        }

        if (v32 == 10)
        {
          if (v55 - 29 < 3)
          {
            v56 = 3;
          }

          goto LABEL_132;
        }

        goto LABEL_125;
      }

      v57 = v55 == 31;
      goto LABEL_130;
    }

    if (v32 != 12)
    {
      if (v32 != 16)
      {
        if (v32 == 32)
        {
          v56 -= v56 >> 1;
LABEL_132:
          v58 = -1;
          goto LABEL_133;
        }

LABEL_125:
        v58 = 0;
        goto LABEL_133;
      }

      v57 = v55 == 31 && v34 == 0xFFFF;
LABEL_130:
      if (v57)
      {
        v56 = 2;
      }

      goto LABEL_132;
    }

    if ((v55 & 0x3C) == 0x1C)
    {
      v56 = 4;
    }

    v58 = -2;
LABEL_133:
    v59 = v56 + v58;
    v60 = v59 & ~(v59 >> 31);
    if (v34 == v46 && (v32 - 8) <= 4 && v59 <= 2)
    {
      if (v46)
      {
        v60 = (v46 ^ (-1 << v32)) != 0xFFFFFFFF || v32 > 0xB;
      }

      else
      {
        v60 = 0;
      }
    }

    *v18 = v60;
    if ((v289 | 2) == 3)
    {
      v61 = 0;
      if (v46 < v33 && v34 >= v33)
      {
        v61 = kDQuadParamTable[160 * v30 + 8 + 10 * v60] == 0;
      }
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= kDquadTransition[v30] || v61)
    {
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v30 + 2);
      if (v61)
      {
        v63 = 0;
      }

      else
      {
        v63 = -2;
      }

      v68 = v32 >= v62;
      v64 = v32 - v62;
      v91 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v91)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v91 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v91 || v67 >= v55;
      if (v68)
      {
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v18 = ++v60;
        if (v32 != 32)
        {
          goto LABEL_22;
        }
      }

      v69 = kDquadMaxMode[v30];
      if (v69 >= v60)
      {
        v69 = v60;
      }

      *v18 = v69;
    }

LABEL_22:
    v25 = 0;
    v19 = &v313;
    v20 = v311;
    v21 = &v309;
    v22 = &v307;
    v23 = &v305;
    v24 = v303;
    v14 = &v332;
    v13 = &v330;
    v15 = &v336;
    v26 = &v334;
    v16 = &v340;
    v27 = &v338;
    v17 = &v344;
    v28 = &v342;
    v18 = &v346;
    v5 = 1u;
  }

  while ((v31 & 1) != 0);
  if (a5)
  {
    v70 = a4 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = v70;
  v283 = v71;
  v72 = v306;
  v73 = v345;
  v74 = v346;
  v76 = v346 >= v345;
  v77 = v305;
  v78 = kDQuadParamTable[160 * v305 + 6 + 10 * v346];
  v317 = kDQuadParamTable[160 * v306 + 6 + 10 * v345];
  v75 = v317;
  v318 = v78;
  v319[0] = v317;
  v319[1] = v78;
  if (*(&v345 + (v346 >= v345)) == *(&v345 + (v346 < v345)))
  {
    v79 = v317;
  }

  else
  {
    v80 = v319[v346 < v345];
    v79 = v317;
    if (v80 >= 1)
    {
      *(&v317 + (v346 < v345)) = 0;
      *(&v317 + v76) += v80;
      v79 = v317;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 2);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v302 = v85;
  v86 = v81 + v83;
  v300 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v300 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v302 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v300 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v289 == 4)
  {
    v93 = 1 << (v314 - 1);
    if (v72 == 3)
    {
      v94 = -31745;
    }

    else
    {
      v94 = -1;
    }

    if (v72 == 4)
    {
      v95 = -2139095041;
    }

    else
    {
      v95 = v94;
    }

    if (v283)
    {
      if (v295)
      {
        goto LABEL_198;
      }

LABEL_372:
      if ((v331 | v95) == 0xFFFFFFFF || v331 == v93)
      {
        v92 = 1;
      }

      if (!v296)
      {
        goto LABEL_379;
      }

LABEL_199:
      if (v294)
      {
        goto LABEL_200;
      }

LABEL_386:
      if ((v335 | v95) == 0xFFFFFFFF || v335 == v93)
      {
        v92 = 1;
      }

      if (!v293)
      {
        goto LABEL_393;
      }

LABEL_201:
      if (v291)
      {
        goto LABEL_202;
      }

LABEL_400:
      if ((v339 | v95) == 0xFFFFFFFF || v339 == v93)
      {
        v92 = 1;
      }

      if (!v292)
      {
        goto LABEL_407;
      }

LABEL_203:
      if (!v290)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v329 | v95) == 0xFFFFFFFF || v329 == v93)
      {
        v92 = 1;
      }

      if (!v295)
      {
        goto LABEL_372;
      }

LABEL_198:
      if (v296)
      {
        goto LABEL_199;
      }

LABEL_379:
      if ((v333 | v95) == 0xFFFFFFFF || v333 == v93)
      {
        v92 = 1;
      }

      if (!v294)
      {
        goto LABEL_386;
      }

LABEL_200:
      if (v293)
      {
        goto LABEL_201;
      }

LABEL_393:
      if ((v337 | v95) == 0xFFFFFFFF || v337 == v93)
      {
        v92 = 1;
      }

      if (!v291)
      {
        goto LABEL_400;
      }

LABEL_202:
      if (v292)
      {
        goto LABEL_203;
      }

LABEL_407:
      if ((v341 | v95) == 0xFFFFFFFF || v341 == v93)
      {
        v92 = 1;
      }

      if (!v290)
      {
LABEL_204:
        if ((v343 | v95) == 0xFFFFFFFF || v343 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 0x10;
  v97 = v283;
  if (v91)
  {
    v97 = 1;
  }

  v98 = v97 | v92;
  v99 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v100 = *(v99 + 1);
  v101 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v77 + 2);
  v102 = v99[5];
  v103 = v99[4] + v101;
  v301 = v103;
  v104 = v102 + v101;
  v299 = v102 + v101;
  v105 = v318 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v299 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v301 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v299 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v279 = v73;
  if (v289 == 4)
  {
    v108 = 1 << (v313 - 1);
    if (v77 == 3)
    {
      v109 = -31745;
    }

    else
    {
      v109 = -1;
    }

    if (v77 == 4)
    {
      v110 = -2139095041;
    }

    else
    {
      v110 = v109;
    }

    if (v283)
    {
      if (v295)
      {
        goto LABEL_231;
      }

LABEL_422:
      v219 = (v332 | v110) == 0xFFFFFFFF || v332 == v108;
      v98 |= v219;
      if (!v296)
      {
        goto LABEL_429;
      }

LABEL_232:
      if (v294)
      {
        goto LABEL_233;
      }

LABEL_436:
      v223 = (v336 | v110) == 0xFFFFFFFF || v336 == v108;
      v98 |= v223;
      if (!v293)
      {
        goto LABEL_443;
      }

LABEL_234:
      if (v291)
      {
        goto LABEL_235;
      }

LABEL_450:
      v227 = (v340 | v110) == 0xFFFFFFFF || v340 == v108;
      v98 |= v227;
      if (v292)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v342 | v110) == 0xFFFFFFFF || v342 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v217 = (v330 | v110) == 0xFFFFFFFF || v330 == v108;
    v98 |= v217;
    if (!v295)
    {
      goto LABEL_422;
    }

LABEL_231:
    if (v296)
    {
      goto LABEL_232;
    }

LABEL_429:
    v221 = (v334 | v110) == 0xFFFFFFFF || v334 == v108;
    v98 |= v221;
    if (!v294)
    {
      goto LABEL_436;
    }

LABEL_233:
    if (v293)
    {
      goto LABEL_234;
    }

LABEL_443:
    v225 = (v338 | v110) == 0xFFFFFFFF || v338 == v108;
    v98 |= v225;
    if (!v291)
    {
      goto LABEL_450;
    }

LABEL_235:
    if (!v292)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v333;
    v114 = v321;
    if (!v290)
    {
      v116 = (v344 | v110) == 0xFFFFFFFF || v344 == v108;
      v98 |= v116;
    }

    v281 = v98;
  }

  else
  {
    v281 = v98;
    v113 = &v333;
    v114 = v321;
  }

  v117 = 0;
  v118 = v283;
  if (v100 >> v104 > 0x10)
  {
    v118 = 1;
  }

  v280 = v118;
  v298 = 0;
  v297 = 0;
  v119 = &v314;
  v120 = v312;
  v316 = 0;
  v288 = &v308;
  v121 = &v345;
  v122 = &v306;
  v286 = v304;
  v123 = &v302;
  v124 = &v300;
  memset(v315, 0, sizeof(v315));
  v125 = &v298;
  v126 = 1;
  v127 = v320;
  v128 = &v329;
  v129 = &v324 + 4;
  v130 = &v323 + 4;
  v131 = &v324;
  v133 = &v322 + 4;
  v132 = &v323;
  v134 = &v335;
  v135 = &v322;
  v136 = &v331;
  v138 = &v339;
  v137 = &v337;
  v140 = &v343;
  v139 = &v341;
  do
  {
    v141 = 0;
    v142 = 0;
    v143 = *v119;
    if (v143 >= *v123)
    {
      v144 = *v123;
    }

    else
    {
      v144 = v143;
    }

    *v123 = v144;
    v145 = &kDQuadParamTable[160 * *v122 + 10 * *v121];
    if (v145[5])
    {
      v146 = v143;
    }

    else
    {
      v146 = 0;
    }

    v147 = *v124;
    if (v146 < *v124)
    {
      v147 = v146;
    }

    v287 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v283)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v295)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v296)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v294)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v293)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v291)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v292)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v290)
    {
      v159 = 0;
    }

    *v129 = v159;
    if (v151 <= 1)
    {
      v160 = 1;
    }

    else
    {
      v160 = v149 >> v147;
    }

    v161 = &v320[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v288;
    v164 = v315 + 28 * v117;
    v165 = &byte_29D2F3081;
    do
    {
      if (v163 != v141)
      {
        if (v147)
        {
          v166 = *&v161[v141] / v160;
        }

        else
        {
          LODWORD(v166) = 0;
        }

        *&v164[4 * v142] = v166;
        if (v151 >= 2)
        {
          v167 = *&v161[v141];
          if (v167)
          {
            if (v167 / v160 * v160 == v167 && ((v167 / v160) & 1) != 0)
            {
              if (v150 || v166 != 1)
              {
                if ((v289 | 2) != 3 || (v169 = *(&v329 + v162), v170 = *v286, v169 != v170) && ((v289 | 2) != 3 || v160 + v170 != v169))
                {
                  LODWORD(v166) = v166 - 1;
                  *&v164[4 * v142] = v166;
                }
              }

              else
              {
                LODWORD(v166) = 1;
              }
            }
          }
        }

        if (v166 >> v147 || (*(&v329 + v162) ^ v148) == 0xFFFFFFFF)
        {
          *&v164[4 * v142] = ~(-1 << v147);
        }

        if (*v165 >= a5 || *(v165 - 1) >= a4)
        {
          *&v164[4 * v142] = 0;
        }

        ++v142;
      }

      v141 += 4;
      v162 += 8;
      v165 += 2;
    }

    while (v141 != 32);
    v126 = 0;
    v119 = &v313;
    v120 = v311;
    v288 = &v307;
    v122 = &v305;
    v286 = v303;
    v123 = &v301;
    v124 = &v299;
    v125 = &v297;
    v114 = &v325 + 4;
    v127 = &v325;
    v133 = &v326 + 4;
    v135 = &v326;
    v130 = &v327 + 4;
    v132 = &v327;
    v129 = &v328 + 4;
    v131 = &v328;
    v136 = &v332;
    v128 = &v330;
    v134 = &v336;
    v113 = &v334;
    v138 = &v340;
    v137 = &v338;
    v140 = &v344;
    v139 = &v342;
    v121 = &v346;
    v117 = 1;
  }

  while ((v287 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  if ((v280 | v281))
  {
    v173 = 0;
    v174 = 0;
    v175 = v314;
    v176 = v314 - 4;
    v177 = v313;
    v178 = v313 - 4;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v329 + 2 * v173) >> 4;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v183 = 0;
        if (v176 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v175 != 4 && v179 - v172 + (v174 << 6) + v176 <= 0x80)
      {
        v184 = 0;
        v185 = v176;
        do
        {
          v186 = 64 - v179;
          if (64 - v179 >= v185)
          {
            v186 = v185;
          }

          v171[v174] |= ((v183 >> v184) & ~(-1 << v186)) << v179;
          v184 += v186;
          v187 = v186 + v179;
          v174 += v187 >> 6;
          v179 = v187 & 0x3F;
          v185 -= v186;
        }

        while (v185);
      }

LABEL_331:
      if (v182)
      {
        v188 = 0;
        if (v178 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v188 = *(&v329 + 2 * v173 + 1) >> 4;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 4 && v179 - v172 + (v174 << 6) + v178 <= 0x80)
          {
            v189 = 0;
            v190 = v178;
            do
            {
              v191 = 64 - v179;
              if (64 - v179 >= v190)
              {
                v191 = v190;
              }

              v171[v174] |= ((v188 >> v189) & ~(-1 << v191)) << v179;
              v189 += v191;
              v192 = v191 + v179;
              v174 += v192 >> 6;
              v179 = v192 & 0x3F;
              v190 -= v191;
            }

            while (v190);
          }
        }
      }

      if (++v173 == 8)
      {
        return (v280 | v281) & 1;
      }
    }
  }

  if (v279 <= 3)
  {
    v193 = 0;
  }

  else
  {
    v193 = (v279 + 5) & 7;
  }

  if (v279 <= 3)
  {
    v194 = v279;
  }

  else
  {
    v194 = 0;
  }

  v195 = (v193 << v172) | *v171;
  *v171 = v195;
  v196 = v172 | 3;
  v197 = v346;
  v198 = v346 < 4;
  if (v346 <= 3)
  {
    v199 = v346;
  }

  else
  {
    v199 = 0;
  }

  if ((v196 - v172) <= 0x7D)
  {
    if (v346 <= 3)
    {
      v200 = 0;
    }

    else
    {
      v200 = (v346 + 5) & 7;
    }

    *v171 = (v200 << v196) | v195;
    v196 = v172 | 6;
  }

  if (v279 <= 3)
  {
    v228 = 2 * (v279 < 4);
    if ((v196 - v172 + v228) <= 0x80)
    {
      v201 = 0;
      v229 = 0;
      v230 = 2 * (v279 < 4);
      do
      {
        v231 = 64 - v196;
        if (64 - v196 >= v230)
        {
          v231 = v230;
        }

        v171[v201] |= ((v194 >> v229) & ~(-1 << v231)) << v196;
        v229 += v231;
        v232 = v231 + v196;
        v201 += v232 >> 6;
        v196 = v232 & 0x3F;
        v230 -= v231;
      }

      while (v230);
    }

    else
    {
      v201 = 0;
    }

    v202 = v228 + 6;
    if (v197 > 3)
    {
      goto LABEL_465;
    }

LABEL_358:
    v203 = (2 * v198);
    if (v196 - v172 + (v201 << 6) + v203 <= 0x80)
    {
      v204 = 0;
      v205 = v203;
      do
      {
        v206 = 64 - v196;
        if (64 - v196 >= v205)
        {
          v206 = v205;
        }

        v171[v201] |= ((v199 >> v204) & ~(-1 << v206)) << v196;
        v204 += v206;
        v207 = v206 + v196;
        v201 += v207 >> 6;
        v196 = v207 & 0x3F;
        v205 -= v206;
      }

      while (v205);
    }

    v202 += v203;
    v208 = v314;
    if (!v279)
    {
      goto LABEL_475;
    }

LABEL_466:
    v233 = v302;
    if (v302 <= 0x100 && v302 && v196 - v172 + (v201 << 6) + v302 <= 0x80)
    {
      v234 = 0;
      v235 = v298 >> (v208 - v302);
      v236 = v302;
      do
      {
        v237 = 64 - v196;
        if (64 - v196 >= v236)
        {
          v237 = v236;
        }

        v171[v201] |= ((v235 >> v234) & ~(-1 << v237)) << v196;
        v234 += v237;
        v238 = v237 + v196;
        v201 += v238 >> 6;
        v196 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v202 += v233;
    v239 = v313;
    if (!v197)
    {
      goto LABEL_531;
    }

LABEL_478:
    v240 = v301;
    if (v301 <= 0x100 && v301 && v196 - v172 + (v201 << 6) + v301 <= 0x80)
    {
      v241 = 0;
      v242 = v297 >> (v239 - v301);
      v243 = v301;
      do
      {
        v244 = 64 - v196;
        if (64 - v196 >= v243)
        {
          v244 = v243;
        }

        v171[v201] |= ((v242 >> v241) & ~(-1 << v244)) << v196;
        v241 += v244;
        v245 = v244 + v196;
        v201 += v245 >> 6;
        v196 = v245 & 0x3F;
        v243 -= v244;
      }

      while (v243);
    }

    v202 += v240;
  }

  else
  {
    v201 = 0;
    v202 = 6;
    if (v197 <= 3)
    {
      goto LABEL_358;
    }

LABEL_465:
    v208 = v314;
    if (v279)
    {
      goto LABEL_466;
    }

LABEL_475:
    if (v208 == 2 || v208 >= 0x10)
    {
      goto LABEL_466;
    }

    v239 = v313;
    if (v197)
    {
      goto LABEL_478;
    }

LABEL_531:
    if (v239 == 2 || v239 >= 0x10)
    {
      goto LABEL_478;
    }
  }

  v246 = v300;
  if (v300)
  {
    if ((v196 - v172 + (v201 << 6) + 3) <= 0x80)
    {
      v247 = 0;
      v248 = v308;
      v249 = 3;
      do
      {
        v250 = 64 - v196;
        if (64 - v196 >= v249)
        {
          v250 = v249;
        }

        v171[v201] |= ((v248 >> v247) & ~(-1 << v250)) << v196;
        v247 += v250;
        v251 = v250 + v196;
        v201 += v251 >> 6;
        v196 = v251 & 0x3F;
        v249 -= v250;
      }

      while (v249);
    }

    v202 += 3;
  }

  v252 = v299;
  if (v299)
  {
    if ((v196 - v172 + (v201 << 6) + 3) <= 0x80)
    {
      v253 = 0;
      v254 = v307;
      v255 = 3;
      do
      {
        v256 = 64 - v196;
        if (64 - v196 >= v255)
        {
          v256 = v255;
        }

        v171[v201] |= ((v254 >> v253) & ~(-1 << v256)) << v196;
        v253 += v256;
        v257 = v256 + v196;
        v201 += v257 >> 6;
        v196 = v257 & 0x3F;
        v255 -= v256;
      }

      while (v255);
    }

    v202 += 3;
  }

  v258 = 128 - v202;
  v259 = (128 - v202) / 7u;
  v260 = v258 % 7;
  if ((v260 - 257) >= 0xFFFFFF00 && v196 - v172 + (v201 << 6) + v260 <= 0x80)
  {
    do
    {
      v261 = 64 - v196;
      if (64 - v196 >= v260)
      {
        v261 = v260;
      }

      v262 = v261 + v196;
      v201 += v262 >> 6;
      v196 = v262 & 0x3F;
      v260 -= v261;
    }

    while (v260);
  }

  v263 = 0;
  v264 = v252 + v246;
  while (2)
  {
    if (v246 && v246 <= 0x100 && v196 - v172 + (v201 << 6) + v246 <= 0x80)
    {
      v265 = 0;
      v266 = *(v315 + v263);
      v267 = v246;
      do
      {
        v268 = 64 - v196;
        if (64 - v196 >= v267)
        {
          v268 = v267;
        }

        v171[v201] |= ((v266 >> v265) & ~(-1 << v268)) << v196;
        v265 += v268;
        v269 = v268 + v196;
        v201 += v269 >> 6;
        v196 = v269 & 0x3F;
        v267 -= v268;
      }

      while (v267);
    }

    if (v252)
    {
      if (v252 <= 0x100 && v196 - v172 + (v201 << 6) + v252 <= 0x80)
      {
        v270 = 0;
        v271 = *(&v315[1] + v263 + 3);
        v272 = v252;
        do
        {
          v273 = 64 - v196;
          if (64 - v196 >= v272)
          {
            v273 = v272;
          }

          v171[v201] |= ((v271 >> v270) & ~(-1 << v273)) << v196;
          v270 += v273;
          v274 = v273 + v196;
          v201 += v274 >> 6;
          v196 = v274 & 0x3F;
          v272 -= v273;
        }

        while (v272);
      }

      v275 = v259 - v264;
      if (v259 != v264)
      {
LABEL_524:
        if (v275 <= 0x100 && v196 - v172 + (v201 << 6) + v275 <= 0x80)
        {
          do
          {
            v276 = 64 - v196;
            if (64 - v196 >= v275)
            {
              v276 = v275;
            }

            v277 = v276 + v196;
            v201 += v277 >> 6;
            v196 = v277 & 0x3F;
            v275 -= v276;
          }

          while (v275);
        }
      }
    }

    else
    {
      v275 = v259 - v246;
      if (v259 != v246)
      {
        goto LABEL_524;
      }
    }

    if (++v263 != 7)
    {
      continue;
    }

    return (v280 | v281) & 1;
  }
}