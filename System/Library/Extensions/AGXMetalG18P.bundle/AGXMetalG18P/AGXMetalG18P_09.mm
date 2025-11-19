uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 18;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x2F)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i32[0] = v15;
  v16.i32[1] = v15 >> 5;
  v17 = vand_s8(v16, 0x1F0000001FLL);
  v18 = vuzp1_s16(v17, v17);
  v19.i32[0] = v15 >> 10;
  v19.i32[1] = v15 >> 14;
  v20 = vuzp1_s16(vadd_s32(vand_s8(v19, 0xF0000000FLL), 0x100000001), v18);
  v21 = v12 + 50;
  v22 = v14 & 0x3A;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> (v14 & 0x3A);
  if (v22 >= 0x21)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = vdupq_lane_s32(v18, 0);
  v26 = vdupq_lane_s32(v20, 0);
  v27 = (8 * (a3 & 7)) | 0x200;
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v29 = vandq_s8(v25, v28);
  v30 = vbicq_s8(v26, vceqq_s16(v29, v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v31 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v25.i8, 0x4000400040004)))), v28);
  if (vmaxvq_s8(v31) < 1)
  {
    v40 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v30;
    v56 = v30;
    v57 = v30;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v54 = v30;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
  }

  else
  {
    v32 = vmovl_u8(*&vpaddq_s8(v31, v31));
    v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
    v34 = vpaddq_s32(v33, v33).u64[0];
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
    v37 = vaddvq_s64(v35);
    v38 = v37 + v21;
    v39 = v37 <= 0x80 && v27 >= v38;
    v40 = !v39;
    v41 = 0uLL;
    if (v39)
    {
      v42 = v21 & 0x3A;
      v43 = vaddq_s64(vzip1q_s64(0, v36), vdupq_n_s64(v42));
      v44 = (v13 + ((v21 >> 3) & 8));
      v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v43)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v43)));
      if (v37 + v42 >= 0x81)
      {
        v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v43)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v43))), v41);
      }

      v21 = v38;
    }

    v45 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v46.i64[0] = v45.u32[0];
    v46.i64[1] = v45.u32[1];
    v47 = vshlq_u64(v41, vnegq_s64(v46));
    v48 = vuzp1q_s32(vzip1q_s64(v41, v47), vzip2q_s64(v41, v47));
    v49 = vshlq_u32(v48, vnegq_s32((*&v32 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v50 = vuzp1q_s16(vzip1q_s32(v48, v49), vzip2q_s32(v48, v49));
    v48.i64[0] = 0x101010101010101;
    v48.i64[1] = 0x101010101010101;
    *v51.i8 = vand_s8(vadd_s8(*&vshlq_s8(v48, v31), -1), vmovn_s16(vzip1q_s16(v50, vshlq_u16(v50, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v25.i8)))))));
    v51.i64[1] = v51.i64[0];
    *v51.i8 = vqtbl1_s8(v51, 0x703060205010400);
    *v50.i8 = vdup_lane_s16(*v51.i8, 0);
    *v48.i8 = vdup_lane_s16(*v51.i8, 1);
    v52 = vdup_lane_s16(*v51.i8, 2);
    v53 = vdup_lane_s16(*v51.i8, 3);
    v54 = vsubw_s8(v30, *v50.i8);
    v55 = vsubw_s8(v30, *v48.i8);
    v56 = vsubw_s8(v30, v52);
    v57 = vsubw_s8(v30, v53);
    v58 = vmovl_s8(vceqz_s8(*v50.i8));
    v59 = vmovl_s8(vceqz_s8(*v48.i8));
    v60 = vmovl_s8(vceqz_s8(v52));
    v61 = vmovl_s8(vceqz_s8(v53));
  }

  v62.i64[0] = 0x8000800080008;
  v62.i64[1] = 0x8000800080008;
  v63 = 0uLL;
  v64 = vandq_s8(vextq_s8(vtstq_s16(v25, v62), 0, 0xCuLL), v30);
  v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v66 = vpaddq_s32(v65, v65).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68 = v67;
  v69 = vaddvq_s64(v67);
  v70 = v69 + v21;
  if (v69 <= 0x80 && v27 >= v70)
  {
    v72 = v21 & 0x3F;
    v73 = vaddq_s64(vzip1q_s64(0, v68), vdupq_n_s64(v72));
    v74 = (v13 + 8 * (v21 >> 6));
    v63 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v74, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v74->i64[0], 0), vnegq_s64(v73)));
    if (v69 + v72 >= 0x81)
    {
      v63 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v74[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v74[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v63);
    }

    v21 = v70;
  }

  else
  {
    v40 = 1;
  }

  v75 = v25.i8[0] & 3;
  if (v75 == 2)
  {
    if (v27 < v21 + 8)
    {
      v40 = 1;
    }

    else
    {
      v21 += 8;
    }

    v76 = v27 < v21 + 8;
    if (v27 >= v21 + 8)
    {
      v21 += 8;
    }

    v40 |= v76;
  }

  v77 = 0uLL;
  v78 = vextq_s8(0, v54, 0xCuLL);
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v21;
  if (v83 <= 0x80 && v27 >= v84)
  {
    v87 = v21 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v87));
    v89 = (v13 + 8 * (v21 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v83 + v87 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
    }

    v21 = v84;
  }

  else
  {
    v40 = 1;
    v86 = 0uLL;
  }

  v90 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v91 = vpaddq_s32(v90, v90).u64[0];
  v92.i64[0] = v91;
  v92.i64[1] = HIDWORD(v91);
  v93 = v92;
  v94 = vaddvq_s64(v92);
  v95 = v94 + v21;
  if (v94 <= 0x80 && v27 >= v95)
  {
    v97 = v21 & 0x3F;
    v98 = vaddq_s64(vzip1q_s64(0, v93), vdupq_n_s64(v97));
    v99 = (v13 + 8 * (v21 >> 6));
    v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v94 + v97 >= 0x81)
    {
      v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v77);
    }

    v21 = v95;
  }

  else
  {
    v40 = 1;
  }

  v284 = v11;
  v285 = v10;
  v286 = v9;
  v287 = v8;
  v288 = v7;
  v289 = v6;
  v290 = v5;
  v291 = v4;
  v100 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v21;
  v106 = 0uLL;
  if (v104 <= 0x80 && v27 >= v105)
  {
    v109 = v21 & 0x3F;
    v110 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v109));
    v111 = (v13 + 8 * (v21 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
    if (v104 + v109 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
    }

    v21 = v105;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v40 = 1;
    v108 = 0uLL;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  v112 = v104 + v21;
  if (v27 < v104 + v21)
  {
LABEL_62:
    v112 = v21;
    v40 = 1;
    goto LABEL_63;
  }

  v113 = v21 & 0x3F;
  v114 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v113));
  v115 = (v13 + 8 * (v21 >> 6));
  v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
  if (v104 + v113 >= 0x81)
  {
    v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v106);
  }

LABEL_63:
  v116 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v117 = vpaddq_s32(v116, v116).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = 0uLL;
  if (v120 > 0x80 || (v122 = v120 + v112, v27 < v120 + v112))
  {
    v122 = v112;
    v40 = 1;
    v125 = 0uLL;
  }

  else
  {
    v123 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v112 & 0x3F));
    v124 = (v13 + 8 * (v112 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + (v112 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }
  }

  if (v120 > 0x80 || (v126 = v120 + v122, v27 < v120 + v122))
  {
    v126 = v122;
    v40 = 1;
  }

  else
  {
    v127 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v122 & 0x3F));
    v128 = (v13 + 8 * (v122 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v120 + (v122 & 0x3F) >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v121);
    }
  }

  v129 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  if (v133 > 0x80 || (v134 = v133 + v126, v27 < v133 + v126))
  {
    v134 = v126;
    v40 = 1;
    v138 = 0uLL;
  }

  else
  {
    v135 = v126 & 0x3F;
    v136 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135));
    v137 = (v13 + 8 * (v126 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v133 + v135 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v133 > 0x80 || v27 < v133 + v134)
  {
    goto LABEL_86;
  }

  v139 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v134 & 0x3F));
  v140 = (v13 + 8 * (v134 >> 6));
  v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
  if (v133 + (v134 & 0x3F) >= 0x81)
  {
    v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
  }

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 512 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v282 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v282[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
      v144 += v147;
      v148 = v147 + v145;
      v143 += v148 >> 6;
      v145 = v148 & 0x3F;
      v146 -= v147;
    }

    while (v146);
LABEL_90:
    v142 = 0;
    v149 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    *v149 = 0;
    v149[1] = 0;
    return v142;
  }

  if (v75 == 2)
  {
    v151 = 0;
    v152 = 0;
    v153 = 8 * (&v283 & 7);
    v154 = 16;
    do
    {
      v155 = 64 - v153;
      if (64 - v153 >= v154)
      {
        v155 = v154;
      }

      *&v282[8 * v151] |= ((0xFFFFFFFFFFFFFFFFLL >> v152) & ~(-1 << v155)) << v153;
      v152 += v155;
      v156 = v155 + v153;
      v151 += v156 >> 6;
      v153 = v156 & 0x3F;
      v154 -= v155;
    }

    while (v154);
    goto LABEL_90;
  }

  v157 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v158 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v159 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v160 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v161.i64[0] = v157.u32[0];
  v161.i64[1] = v157.u32[1];
  v162 = v161;
  v161.i64[0] = v158.u32[0];
  v161.i64[1] = v158.u32[1];
  v163 = v161;
  v161.i64[0] = v159.u32[0];
  v161.i64[1] = v159.u32[1];
  v164 = v161;
  v161.i64[0] = v160.u32[0];
  v161.i64[1] = v160.u32[1];
  v165 = vnegq_s64(v162);
  v166 = vnegq_s64(v163);
  v167 = vnegq_s64(v164);
  v168 = vnegq_s64(v161);
  v169 = vshlq_u64(v63, v165);
  v170 = vshlq_u64(v108, v166);
  v171 = vshlq_u64(v106, v166);
  v172 = vshlq_u64(v125, v167);
  v173 = vshlq_u64(v121, v167);
  v174 = vshlq_u64(v138, v168);
  v175 = vzip2q_s64(v63, v169);
  v176 = vzip1q_s64(v63, v169);
  v177 = vzip2q_s64(v108, v170);
  v178 = vzip1q_s64(v108, v170);
  v179 = vzip2q_s64(v106, v171);
  v180 = vzip1q_s64(v106, v171);
  v181 = vzip2q_s64(v125, v172);
  v182 = vzip1q_s64(v125, v172);
  v183 = vzip2q_s64(v121, v173);
  v184 = vzip1q_s64(v121, v173);
  v185 = vzip2q_s64(v138, v174);
  v186 = vzip1q_s64(v138, v174);
  v187 = vuzp1q_s32(v176, v175);
  v188 = vuzp1q_s32(v178, v177);
  v189 = vuzp1q_s32(v180, v179);
  v176.i64[0] = 0xFFFF0000FFFFLL;
  v176.i64[1] = 0xFFFF0000FFFFLL;
  v190 = vuzp1q_s32(v182, v181);
  v178.i64[0] = 0xFFFF0000FFFFLL;
  v178.i64[1] = 0xFFFF0000FFFFLL;
  v191 = vnegq_s32(vandq_s8(v64, v176));
  v192 = vnegq_s32(vandq_s8(v55, v178));
  v193 = vuzp1q_s32(v184, v183);
  v194 = vuzp1q_s32(v186, v185);
  v195 = vshlq_u32(v187, v191);
  v196 = vshlq_u32(v188, v192);
  v197 = vshlq_u32(v189, v192);
  v192.i64[0] = 0x10001000100010;
  v192.i64[1] = 0x10001000100010;
  v186.i64[0] = 0xF000F000F000FLL;
  v186.i64[1] = 0xF000F000F000FLL;
  v198 = vsubq_s16(v192, v64);
  v199 = vaddq_s16(v64, v186);
  v186.i64[0] = 0x10001000100010;
  v186.i64[1] = 0x10001000100010;
  v200 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v187, v195), vzip2q_s32(v187, v195)), v198);
  v198.i64[0] = 0xF000F000F000FLL;
  v198.i64[1] = 0xF000F000F000FLL;
  v201 = vsubq_s16(v186, v55);
  v202 = vaddq_s16(v55, v198);
  v198.i64[0] = 0xFFFF0000FFFFLL;
  v198.i64[1] = 0xFFFF0000FFFFLL;
  v203 = vnegq_s32(vandq_s8(v56, v198));
  v204 = vshlq_s16(v200, v199);
  v205 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v188, v196), vzip2q_s32(v188, v196)), v201), v202);
  v206 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v189, v197), vzip2q_s32(v189, v197)), v201), v202);
  v207 = vdupq_lane_s32(*v204.i8, 0);
  v208 = vandq_s8(v59, v207);
  v209 = vsubq_s16(v205, v208);
  v210 = vsubq_s16(v206, v208);
  v211 = vshlq_u32(v190, v203);
  v212 = vshlq_u32(v193, v203);
  v213 = vzip2q_s32(v190, v211);
  v214 = vzip1q_s32(v190, v211);
  v215 = vzip2q_s32(v193, v212);
  v216 = vzip1q_s32(v193, v212);
  v212.i64[0] = 0x10001000100010;
  v212.i64[1] = 0x10001000100010;
  v217 = vuzp1q_s16(v216, v215);
  v215.i64[0] = 0xF000F000F000FLL;
  v215.i64[1] = 0xF000F000F000FLL;
  v218 = vsubq_s16(v212, v56);
  v219 = vaddq_s16(v56, v215);
  v215.i64[0] = 0xFFFF0000FFFFLL;
  v215.i64[1] = 0xFFFF0000FFFFLL;
  v220 = vnegq_s32(vandq_s8(v57, v215));
  v221 = vshlq_s16(vshlq_s16(vuzp1q_s16(v214, v213), v218), v219);
  v222 = vshlq_s16(vshlq_s16(v217, v218), v219);
  v223 = vandq_s8(v60, v207);
  v224 = vsubq_s16(v221, v223);
  v225 = vsubq_s16(v222, v223);
  v226 = vshlq_u32(v194, v220);
  v227 = vzip2q_s32(v194, v226);
  v228 = vzip1q_s32(v194, v226);
  v226.i64[0] = 0x10001000100010;
  v226.i64[1] = 0x10001000100010;
  v229 = vuzp1q_s16(v228, v227);
  v227.i64[0] = 0xF000F000F000FLL;
  v227.i64[1] = 0xF000F000F000FLL;
  v230 = vsubq_s16(v226, v57);
  v231 = vaddq_s16(v57, v227);
  v232 = vshlq_u64(v141, v168);
  v233 = vuzp1q_s32(vzip1q_s64(v141, v232), vzip2q_s64(v141, v232));
  v234 = vshlq_u32(v233, v220);
  v235 = vshlq_s16(vshlq_s16(v229, v230), v231);
  v236 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v233, v234), vzip2q_s32(v233, v234)), v230), v231);
  v237 = vandq_s8(v61, v207);
  v238 = vsubq_s16(v235, v237);
  v239 = vsubq_s16(v236, v237);
  v240 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v241 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v161.i64[0] = v240.u32[0];
  v161.i64[1] = v240.u32[1];
  v242 = v161;
  v161.i64[0] = v241.u32[0];
  v161.i64[1] = v241.u32[1];
  v243 = vshlq_u64(v86, vnegq_s64(v242));
  v244 = vshlq_u64(v77, vnegq_s64(v161));
  v245 = vzip2q_s64(v86, v243);
  v246 = vzip1q_s64(v86, v243);
  v247 = vzip2q_s64(v77, v244);
  v248 = vzip1q_s64(v77, v244);
  v244.i64[0] = 0xFFFF0000FFFFLL;
  v244.i64[1] = 0xFFFF0000FFFFLL;
  v249 = vuzp1q_s32(v246, v245);
  v250 = vuzp1q_s32(v248, v247);
  v251 = vnegq_s32(vandq_s8(v54, v244));
  v252 = vshlq_u32(v249, vnegq_s32(vandq_s8(v78, v244)));
  v253 = vshlq_u32(v250, v251);
  v254 = vzip2q_s32(v249, v252);
  v255 = vzip1q_s32(v249, v252);
  v256 = vzip2q_s32(v250, v253);
  v257 = vzip1q_s32(v250, v253);
  v253.i64[0] = 0x10001000100010;
  v253.i64[1] = 0x10001000100010;
  v258 = vuzp1q_s16(v257, v256);
  v256.i64[0] = 0xF000F000F000FLL;
  v256.i64[1] = 0xF000F000F000FLL;
  v259 = vaddq_s16(vandq_s8(v204, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v255, v254), vsubq_s16(v253, v78)), vaddq_s16(v78, v256)));
  v260 = vandq_s8(v58, v207);
  v261.i64[0] = 0x1000100010001;
  v261.i64[1] = 0x1000100010001;
  v262 = vceqq_s16(v29, v261);
  v263 = vaddvq_s16(v262);
  v264 = vsubq_s16(v259, v260);
  v265 = vsubq_s16(vshlq_s16(vshlq_s16(v258, vsubq_s16(v253, v54)), vaddq_s16(v54, v256)), v260);
  v262.i32[0] = v24;
  v266 = vdupq_lane_s32(*v262.i8, 0);
  if (v263)
  {
    v267 = vnegq_s16(vandq_s8(v25, v261));
    v268 = v265;
    v268.i32[3] = v264.i32[0];
    v269 = v264;
    v269.i32[0] = v265.i32[3];
    v292.val[0] = vbslq_s8(v267, v269, v264);
    v292.val[1] = vbslq_s8(v267, v268, v265);
    v268.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v268.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v293.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v292, xmmword_29D2F0F80), v267), v292.val[0]);
    v293.val[1] = vaddq_s16(v292.val[1], vandq_s8(vqtbl2q_s8(v292, v268), v267));
    v264 = vaddq_s16(vandq_s8(vqtbl2q_s8(v293, xmmword_29D2F0F90), v267), v293.val[0]);
    v265 = vaddq_s16(v293.val[1], vandq_s8(vqtbl2q_s8(v293, v268), v267));
    v293.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v209.i8, xmmword_29D2F0FA0), v267), v209);
    v293.val[1] = vaddq_s16(v210, vandq_s8(vqtbl2q_s8(*v209.i8, xmmword_29D2F0FB0), v267));
    v209 = vaddq_s16(vandq_s8(vqtbl2q_s8(v293, xmmword_29D2F0FC0), v267), v293.val[0]);
    v210 = vaddq_s16(v293.val[1], vandq_s8(vqtbl2q_s8(v293, v268), v267));
    v293.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v224.i8, xmmword_29D2F0FD0), v267), v224);
    v293.val[1] = vaddq_s16(v225, vandq_s8(vqtbl2q_s8(*v224.i8, xmmword_29D2F0F80), v267));
    v224 = vaddq_s16(vandq_s8(vqtbl2q_s8(v293, v268), v267), v293.val[0]);
    v225 = vaddq_s16(v293.val[1], vandq_s8(vqtbl2q_s8(v293, xmmword_29D2F0FE0), v267));
    v292.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0FF0), v267), v238);
    v292.val[1] = vaddq_s16(v239, vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0F80), v267));
    v238 = vaddq_s16(vandq_s8(vqtbl2q_s8(v292, v268), v267), v292.val[0]);
    v239 = vaddq_s16(v292.val[1], vandq_s8(vqtbl2q_s8(v292, xmmword_29D2F1000), v267));
  }

  v270 = vaddq_s16(v264, v266);
  v271 = vaddq_s16(v265, v266);
  v272 = vaddq_s16(v209, v266);
  v273 = vaddq_s16(v210, v266);
  v274 = vaddq_s16(v224, v266);
  v275 = vaddq_s16(v225, v266);
  v276 = vaddq_s16(v238, v266);
  v277 = vaddq_s16(v239, v266);
  v278.i64[0] = 0x10001000100010;
  v278.i64[1] = 0x10001000100010;
  v279 = vceqzq_s16(vandq_s8(v25, v278));
  v280 = a1 + 2;
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v270, xmmword_29D2F1080), v279), v270);
  a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v271, xmmword_29D2F1080), v279), v271);
  v281 = (a1 + a2);
  *v280 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v279), v274);
  v280[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v279), v275);
  *v281 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v279), v272);
  v281[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v279), v273);
  v281 += 2;
  *v281 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v279), v276);
  v281[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1080), v279), v277);
  return v142;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v95 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, v79, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, v79, a5);
  }

  v62 = v80;
  v63 = v79[0];
  v60 = v82;
  v61 = v81;
  v70 = v84;
  v71 = v83;
  v69 = v85;
  v67 = v86;
  v76 = v87;
  v73 = v89;
  v74 = v88;
  v72 = v90;
  v77 = v91;
  v75 = v92;
  v68 = v93;
  v66 = v94;
  v9 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, v79, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, v79, a5);
  }

  v64 = v80;
  v65 = v79[0];
  v58 = v82;
  v59 = v81;
  v57 = v83;
  v55 = v84;
  v52 = v86;
  v53 = v85;
  v50 = v88;
  v51 = v87;
  v48 = v90;
  v49 = v89;
  v46 = v92;
  v47 = v91;
  v44 = v94;
  v45 = v93;
  v56 = a5;
  v54 = a3;
  v10 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, v79, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, v79, a5);
  }

  v42 = v80;
  v43 = v79[0];
  v40 = v82;
  v41 = v81;
  v38 = v84;
  v39 = v83;
  v36 = v86;
  v37 = v85;
  v11 = v87;
  v12 = v88;
  v13 = v89;
  v14 = v90;
  v15 = v91;
  v16 = v92;
  v17 = v93;
  v18 = v94;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v54 + 48, v79, v56);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v54 + 48, v79, v56);
  }

  a1[8] = v43 | (v42 << 16);
  a1[9] = v41 | (v40 << 16);
  a1[10] = v39 | (v38 << 16);
  a1[11] = v37 | (v36 << 16);
  a1[12] = v11 | (v12 << 16);
  a1[13] = v13 | (v14 << 16);
  a1[14] = v15 | (v16 << 16);
  a1[15] = v17 | (v18 << 16);
  v19 = v79[0];
  v20 = v80;
  v21 = v81;
  v22 = v82;
  *a1 = v63 | (v62 << 16);
  a1[1] = v61 | (v60 << 16);
  result = v83;
  v24 = v84;
  v25 = v85;
  v26 = v86;
  v27 = v87;
  v28 = v88;
  a1[2] = v71 | (v70 << 16);
  a1[3] = v69 | (v67 << 16);
  v29 = v89;
  v30 = v90;
  v31 = v91;
  v32 = v92;
  v33 = v93;
  a1[4] = v76 | (v74 << 16);
  a1[5] = v73 | (v72 << 16);
  v34 = v94;
  a1[6] = v77 | (v75 << 16);
  a1[7] = v68 | (v66 << 16);
  v35 = (a1 + a2);
  *v35 = v65 | (v64 << 16);
  v35[1] = v59 | (v58 << 16);
  v35[2] = v57 | (v55 << 16);
  v35[3] = v53 | (v52 << 16);
  v35[4] = v51 | (v50 << 16);
  v35[5] = v49 | (v48 << 16);
  v35[6] = v47 | (v46 << 16);
  v35[7] = v45 | (v44 << 16);
  v35[8] = v19 | (v20 << 16);
  v35[9] = v21 | (v22 << 16);
  v35[10] = result | (v24 << 16);
  v35[11] = v25 | (v26 << 16);
  v35[12] = v27 | (v28 << 16);
  v35[13] = v29 | (v30 << 16);
  v35[14] = v31 | (v32 << 16);
  v35[15] = v33 | (v34 << 16);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = 2 * a2;
  v15 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v8 - 2;
    }

    if (v9 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v18 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v8;
    }

    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v8 >= 3)
  {
    if (v15 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v8 - 2;
    }

    if (v18 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v23 = v8 - 4;
  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v8 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v26 = v8 - 6;
    if (!v9)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v23 >= 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
  v11 += result;
  v26 = v8 - 6;
LABEL_47:
  if (v8 >= 7)
  {
    if (v26 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26;
    }

    if (v9 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
    v11 += result;
    if (v9 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v9 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v8 >= 5)
  {
    if (v23 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v23;
    }

    if (v18 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
    v11 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v9 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v8 < 7)
  {
    goto LABEL_76;
  }

  if (v26 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v26;
  }

  if (v18 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v9 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 64, a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s32(*a3, 0);
  v8 = vsubq_s16(*a3, v7);
  v9 = vsubq_s16(*(a3 + 16), v7);
  v464 = *(a3 + 32);
  v10 = vsubq_s16(v464, v7);
  v465 = *(a3 + 48);
  v11 = vsubq_s16(v465, v7);
  v466 = *(a3 + a4);
  v12 = vsubq_s16(v466, v7);
  v468 = *(a3 + a4 + 16);
  v13 = vsubq_s16(v468, v7);
  v14 = vsubq_s16(*(a3 + a4 + 32), v7);
  v15 = vqtbl1q_s8(vmaxq_s16(v8, v9), xmmword_29D2F1090);
  v16 = vqtbl1q_s8(vminq_s16(v8, v9), xmmword_29D2F1090);
  v17 = vpmaxq_s16(v15, v15);
  v18 = vpminq_s16(v16, v16);
  v19 = vpmaxq_s16(v17, v17);
  v20 = vpminq_s16(v18, v18);
  v21.i64[0] = 0x8000800080008000;
  v21.i64[1] = 0x8000800080008000;
  v22 = vmaxq_s16(v19, v21);
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  v24 = vminq_s16(v20, v23);
  v25 = vzip1q_s16(v19, v20);
  v26.i64[0] = 0x10001000100010;
  v26.i64[1] = 0x10001000100010;
  v27 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v25)), vceqzq_s16(v25));
  v28 = vqtbl1q_s8(vmaxq_s16(v10, v11), xmmword_29D2F1090);
  v29 = vqtbl1q_s8(vminq_s16(v10, v11), xmmword_29D2F1090);
  v30 = vpmaxq_s16(v28, v28);
  v31 = vpminq_s16(v29, v29);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vmaxq_s16(v22, v32);
  v35 = vminq_s16(v24, v33);
  v36 = vzip1q_s16(v32, v33);
  v37 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v36)), vceqzq_s16(v36));
  v38 = vqtbl1q_s8(vmaxq_s16(v12, v13), xmmword_29D2F1090);
  v39 = vqtbl1q_s8(vminq_s16(v12, v13), xmmword_29D2F1090);
  v40 = vpmaxq_s16(v38, v38);
  v41 = vpminq_s16(v39, v39);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(v34, v42);
  v45 = vminq_s16(v35, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vsubq_s16(*(a3 + a4 + 48), v7);
  v49 = vqtbl1q_s8(vmaxq_s16(v14, v48), xmmword_29D2F1090);
  v50 = vqtbl1q_s8(vminq_s16(v14, v48), xmmword_29D2F1090);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vpmaxq_s16(v51, v51);
  v54 = vpminq_s16(v52, v52);
  v55 = vmaxq_s16(v44, v53);
  v56 = vminq_s16(v45, v54);
  v57 = vzip1q_s16(v53, v54);
  v58 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v57)), vceqzq_s16(v57));
  v59 = vpmaxq_s16(v27, v27);
  v60 = vpmaxq_s16(v37, v37);
  v61 = vpmaxq_s16(v47, v47);
  v62 = vpmaxq_s16(v58, v58);
  v63 = vmaxq_s16(vmaxq_s16(v59, v60), vmaxq_s16(v61, v62));
  v64 = vclzq_s16(vsubq_s16(v55, v56));
  v65 = vsubq_s16(v26, v64);
  v66 = vminq_s16(v65, v63);
  v67 = vmaxvq_s16(v66);
  if (a5)
  {
    v68 = a6 == 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = v68;
  if (!v67)
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v452 = *(a3 + 16);
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v71.i64[0] = 0xF000F000F000FLL;
  v71.i64[1] = 0xF000F000F000FLL;
  v479 = vsubq_s16(vshlq_s16(v70, vsubq_s16(v71, v64)), v56);
  v72 = vcgtq_s16(v63, v65);
  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v74.i64[0] = 0x3000300030003;
  v74.i64[1] = 0x3000300030003;
  v462 = vorrq_s8(vandq_s8(vceqzq_s16(v66), v74), vandq_s8(v72, v73));
  v456 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v59), v74), 0);
  v458 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v60), v74), 0);
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v61), v74), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v62), v74), 0);
  v77.i64[0] = 0x4000400040004;
  v77.i64[1] = 0x4000400040004;
  v460 = vbicq_s8(v77, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v456, v458))));
  v78 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1080));
  v79 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1080));
  v80 = vsubq_s16(v12, vqtbl1q_s8(v12, xmmword_29D2F1080));
  v81 = vsubq_s16(v13, vqtbl1q_s8(v13, xmmword_29D2F1080));
  v82 = vsubq_s16(v14, vqtbl1q_s8(v14, xmmword_29D2F1080));
  v83 = vsubq_s16(v48, vqtbl1q_s8(v48, xmmword_29D2F1080));
  v469 = v14;
  v475 = v12;
  v477 = v13;
  v473 = v11;
  v453 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1080));
  v454 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1080));
  v84 = vqtbl1q_s8(vmaxq_s16(v453, v454), xmmword_29D2F1090);
  v85 = vqtbl1q_s8(vminq_s16(v453, v454), xmmword_29D2F1090);
  v86 = vpmaxq_s16(v84, v84);
  v87 = vpminq_s16(v85, v85);
  v88 = vpmaxq_s16(v86, v86);
  v89 = vpminq_s16(v87, v87);
  v90 = vmaxq_s16(v88, v21);
  v91 = vminq_s16(v89, v23);
  v92 = vzip1q_s16(v88, v89);
  v93 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v92)), vceqzq_s16(v92));
  v471 = v10;
  v94 = vpmaxq_s16(v93, v93);
  v95 = vqtbl1q_s8(vmaxq_s16(v78, v79), xmmword_29D2F1090);
  v96 = vqtbl1q_s8(vminq_s16(v78, v79), xmmword_29D2F1090);
  v97 = vpmaxq_s16(v95, v95);
  v98 = vpminq_s16(v96, v96);
  v99 = vpmaxq_s16(v97, v97);
  v100 = vpminq_s16(v98, v98);
  v101 = vmaxq_s16(v90, v99);
  v102 = vminq_s16(v91, v100);
  v103 = vzip1q_s16(v99, v100);
  v104 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v103)), vceqzq_s16(v103));
  v105 = v9;
  v106 = v8;
  v107 = vpmaxq_s16(v104, v104);
  v108 = vqtbl1q_s8(vmaxq_s16(v80, v81), xmmword_29D2F1090);
  v109 = vqtbl1q_s8(vminq_s16(v80, v81), xmmword_29D2F1090);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vpmaxq_s16(v110, v110);
  v113 = vpminq_s16(v111, v111);
  v114 = vmaxq_s16(v101, v112);
  v115 = vminq_s16(v102, v113);
  v116 = vzip1q_s16(v112, v113);
  v117 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v116)), vceqzq_s16(v116));
  v118 = vpmaxq_s16(v117, v117);
  v119 = vqtbl1q_s8(vmaxq_s16(v82, v83), xmmword_29D2F1090);
  v120 = vqtbl1q_s8(vminq_s16(v82, v83), xmmword_29D2F1090);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vpmaxq_s16(v121, v121);
  v124 = vpminq_s16(v122, v122);
  v125 = vmaxq_s16(v114, v123);
  v126 = v48;
  v127 = vminq_s16(v115, v124);
  v128 = vzip1q_s16(v123, v124);
  v129 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v128)), vceqzq_s16(v128));
  v130 = vpmaxq_s16(v129, v129);
  v131 = vmaxq_s16(vmaxq_s16(v94, v107), vmaxq_s16(v118, v130));
  v132 = vclzq_s16(vsubq_s16(v125, v127));
  v133 = vsubq_s16(v26, v132);
  v134 = vcgtq_s16(v131, v133);
  v135 = vminq_s16(v133, v131);
  v131.i64[0] = 0x18001800180018;
  v131.i64[1] = 0x18001800180018;
  v136 = vbslq_s8(v134, v131, v26);
  v137 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v94), v74), 0);
  v138 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v107), v74), 0);
  v139 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v118), v74), 0);
  v140 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v130), v74), 0);
  v141 = vsubq_s16(v135, v137);
  v142 = vsubq_s16(v135, v138);
  v143 = vsubq_s16(v135, v139);
  v144 = vaddq_s16(v137, v138);
  v145 = vsubq_s16(v135, v140);
  v146.i64[0] = 0x4000400040004;
  v146.i64[1] = 0x4000400040004;
  v147 = vbicq_s8(v146, vceqq_s16(vaddq_s16(v140, v139), vnegq_s16(v144)));
  v140.i64[0] = 0x7000700070007;
  v140.i64[1] = 0x7000700070007;
  v148 = vandq_s8(v479, v72);
  v149 = vsubq_s16(v66, v456);
  v150 = vsubq_s16(v66, v458);
  v151 = vsubq_s16(v66, v75);
  v480 = vsubq_s16(v66, v76);
  v152 = vorrq_s8(v460, v462);
  v153 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v66, v72), v149, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v480), 3uLL)), vaddq_s16(v460, v460)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v135, vceqzq_s16((*&v136 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v141, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v143, v142), v145), 3uLL)), vaddq_s16(v147, v147))), 0);
  if (vaddvq_s16(v153))
  {
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v135), v154), v136), v147);
    v154.i64[0] = 0xF000F000F000FLL;
    v154.i64[1] = 0xF000F000F000FLL;
    v156.i64[0] = -1;
    v156.i64[1] = -1;
    v157 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v154, v132)), v127), v134);
    v7 = vbslq_s8(v153, vsubq_s16(v7, vqtbl1q_s8(v7, xmmword_29D2F1080)), v7);
    v461 = vbslq_s8(v153, v453, v106);
    v463 = vbslq_s8(v153, v454, v105);
    v158 = vbslq_s8(v153, v79, v473);
    v159 = vbslq_s8(v153, v80, v475);
    v160 = vbslq_s8(v153, v83, v126);
    v149 = vbslq_s8(v153, v141, v149);
    v459 = vbslq_s8(v153, v142, v150);
    v151 = vbslq_s8(v153, v143, v151);
    v480 = vbslq_s8(v153, v145, v480);
    v148 = vbslq_s8(v153, v157, v148);
    v66 = vbslq_s8(v153, v135, v66);
    v152 = vbslq_s8(v153, v155, v152);
    v161 = vbslq_s8(v153, v82, v469);
    v162 = vbslq_s8(v153, v81, v477);
    v163 = vbslq_s8(v153, v78, v471);
    if (v69)
    {
LABEL_10:
      v165 = v461;
      v164 = v463;
      v166 = v459;
      goto LABEL_16;
    }
  }

  else
  {
    v459 = v150;
    v461 = v106;
    v463 = v105;
    v160 = v126;
    v161 = v469;
    v163 = v471;
    v159 = v475;
    v162 = v477;
    v158 = v473;
    if (v69)
    {
      goto LABEL_10;
    }
  }

  v455 = v148;
  v472 = v163;
  v457 = v160;
  v474 = v158;
  v476 = v159;
  v478 = v162;
  v470 = v161;
  v481 = *a3;
  v175 = vsubq_s16(*a3, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
  v168 = vsubq_s16(v452, vqtbl2q_s8(*a3, xmmword_29D2F1030));
  v482 = *(a3 + 32);
  v482.val[1].i32[3] = v481.val[1].i32[3];
  v169 = vsubq_s16(v464, vqtbl2q_s8(v482, xmmword_29D2F0FA0));
  v170 = vsubq_s16(v465, vqtbl2q_s8(v482, xmmword_29D2F1040));
  v483 = *(a3 + a4);
  v483.val[1].i32[3] = v481.val[1].i32[3];
  v171 = vsubq_s16(v466, vqtbl2q_s8(v483, xmmword_29D2F1050));
  v172 = vsubq_s16(v468, vqtbl2q_s8(v483, xmmword_29D2F0F80));
  v484 = *(a3 + a4 + 32);
  v484.val[1].i32[3] = v481.val[1].i32[3];
  v173 = vsubq_s16(v484.val[0], vqtbl2q_s8(v484, xmmword_29D2F1060));
  v174 = v168;
  v174.i32[3] = v175.i32[0];
  v175.i32[0] = v168.i32[3];
  v176 = vsubq_s16(*(a3 + a4 + 48), vqtbl2q_s8(v484, xmmword_29D2F0F80));
  v177 = vqtbl1q_s8(vmaxq_s16(v175, v174), xmmword_29D2F1090);
  v178 = vqtbl1q_s8(vminq_s16(v175, v174), xmmword_29D2F1090);
  v179 = vpmaxq_s16(v177, v177);
  v180 = vpminq_s16(v178, v178);
  v181 = vpmaxq_s16(v179, v179);
  v182 = vpminq_s16(v180, v180);
  v183.i64[0] = 0x8000800080008000;
  v183.i64[1] = 0x8000800080008000;
  v184 = vmaxq_s16(v181, v183);
  v185.i64[0] = 0x8000800080008000;
  v185.i64[1] = 0x8000800080008000;
  v186 = vminq_s16(v182, v185);
  v187 = vzip1q_s16(v181, v182);
  v181.i64[0] = 0x10001000100010;
  v181.i64[1] = 0x10001000100010;
  v188 = v149;
  v189 = vbicq_s8(vsubq_s16(v181, vclsq_s16(v187)), vceqzq_s16(v187));
  v190 = vpmaxq_s16(v189, v189);
  v467 = v169;
  v191 = vqtbl1q_s8(vmaxq_s16(v169, v170), xmmword_29D2F1090);
  v484.val[0] = vqtbl1q_s8(vminq_s16(v169, v170), xmmword_29D2F1090);
  v192 = vpmaxq_s16(v191, v191);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v193 = vpmaxq_s16(v192, v192);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v194 = vmaxq_s16(v184, v193);
  v195 = vminq_s16(v186, v484.val[0]);
  v196 = vzip1q_s16(v193, v484.val[0]);
  v197 = vbicq_s8(vsubq_s16(v181, vclsq_s16(v196)), vceqzq_s16(v196));
  v198 = vpmaxq_s16(v197, v197);
  v199 = vqtbl1q_s8(vmaxq_s16(v171, v172), xmmword_29D2F1090);
  v484.val[0] = vqtbl1q_s8(vminq_s16(v171, v172), xmmword_29D2F1090);
  v200 = vpmaxq_s16(v199, v199);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v201 = vpmaxq_s16(v200, v200);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v202 = vmaxq_s16(v194, v201);
  v203 = vminq_s16(v195, v484.val[0]);
  v204 = vzip1q_s16(v201, v484.val[0]);
  v205 = vbicq_s8(vsubq_s16(v181, vclsq_s16(v204)), vceqzq_s16(v204));
  v206 = vpmaxq_s16(v205, v205);
  v207 = vqtbl1q_s8(vmaxq_s16(v173, v176), xmmword_29D2F1090);
  v484.val[0] = vqtbl1q_s8(vminq_s16(v173, v176), xmmword_29D2F1090);
  v208 = vpmaxq_s16(v207, v207);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v209 = vpmaxq_s16(v208, v208);
  v484.val[0] = vpminq_s16(v484.val[0], v484.val[0]);
  v210 = vmaxq_s16(v202, v209);
  v211 = vminq_s16(v203, v484.val[0]);
  v212 = vzip1q_s16(v209, v484.val[0]);
  v213 = vbicq_s8(vsubq_s16(v181, vclsq_s16(v212)), vceqzq_s16(v212));
  v214 = vpmaxq_s16(v213, v213);
  v215 = vmaxq_s16(vmaxq_s16(v190, v198), vmaxq_s16(v206, v214));
  v216 = vclzq_s16(vsubq_s16(v210, v211));
  v217 = vsubq_s16(v181, v216);
  v218 = vcgtq_s16(v215, v217);
  v219 = vminq_s16(v217, v215);
  v220.i64[0] = 0x3000300030003;
  v220.i64[1] = 0x3000300030003;
  v221 = vmaxq_s16(vminq_s16(vsubq_s16(v219, v190), v220), 0);
  v222 = vmaxq_s16(vminq_s16(vsubq_s16(v219, v198), v220), 0);
  v223 = vmaxq_s16(vminq_s16(vsubq_s16(v219, v206), v220), 0);
  v224 = vmaxq_s16(vminq_s16(vsubq_s16(v219, v214), v220), 0);
  v225 = vsubq_s16(v219, v221);
  v226 = vsubq_s16(v219, v222);
  v227 = vsubq_s16(v219, v223);
  v228 = vsubq_s16(v219, v224);
  v229 = vceqq_s16(vaddq_s16(v224, v223), vnegq_s16(vaddq_s16(v221, v222)));
  v224.i64[0] = 0x4000400040004;
  v224.i64[1] = 0x4000400040004;
  v230 = vbicq_s8(v224, v229);
  v222.i64[0] = 0x7000700070007;
  v222.i64[1] = 0x7000700070007;
  v224.i64[0] = 0x8000800080008;
  v224.i64[1] = 0x8000800080008;
  v231 = vandq_s8(v152, v220);
  v232.i64[0] = 0x2000200020002;
  v232.i64[1] = 0x2000200020002;
  v166 = v459;
  v233 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v66, vceqzq_s16(vandq_s8(v152, v224))), vandq_s8(vaddq_s16(v152, v152), v224)), vandq_s8(vceqq_s16(v231, v232), v181)), v188, v222), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v459), v480), 3uLL)), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v219, v218), v225, v222), vshlq_n_s16(vaddq_s16(vaddq_s16(v227, v226), v228), 3uLL)), vaddq_s16(v230, v230))), 0);
  v165 = v461;
  v164 = v463;
  if (vaddvq_s16(v233))
  {
    v234.i64[0] = 0x9000900090009;
    v234.i64[1] = 0x9000900090009;
    v235 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v219), v232), vsubq_s16(vandq_s8(v218, v234), vmvnq_s8(v218))), v230);
    v234.i64[0] = 0xF000F000F000FLL;
    v234.i64[1] = 0xF000F000F000FLL;
    v236 = vsubq_s16(v234, v216);
    v234.i64[0] = -1;
    v234.i64[1] = -1;
    v237 = vandq_s8(vsubq_s16(vshlq_s16(v234, v236), v211), v218);
    v7.i32[0] = vbslq_s8(v233, vextq_s8(v452, v452, 0xCuLL), v7).u32[0];
    v165 = vbslq_s8(v233, v175, v461);
    v164 = vbslq_s8(v233, v174, v463);
    v163 = vbslq_s8(v233, v467, v472);
    v158 = vbslq_s8(v233, v170, v474);
    v159 = vbslq_s8(v233, v171, v476);
    v162 = vbslq_s8(v233, v172, v478);
    v161 = vbslq_s8(v233, v173, v470);
    v160 = vbslq_s8(v233, v176, v457);
    v149 = vbslq_s8(v233, v225, v188);
    v166 = vbslq_s8(v233, v226, v459);
    v151 = vbslq_s8(v233, v227, v151);
    v480 = vbslq_s8(v233, v228, v480);
    v148 = vbslq_s8(v233, v237, v455);
    v66 = vbslq_s8(v233, v219, v66);
    v152 = vbslq_s8(v233, v235, v152);
  }

  else
  {
    v161 = v470;
    v163 = v472;
    v159 = v476;
    v162 = v478;
    v158 = v474;
    v148 = v455;
    v160 = v457;
    v149 = v188;
  }

LABEL_16:
  v238.i64[0] = 0x8000800080008;
  v238.i64[1] = 0x8000800080008;
  v239 = vandq_s8(v152, v238);
  v240.i64[0] = 0x3000300030003;
  v240.i64[1] = 0x3000300030003;
  v241.i64[0] = 0x2000200020002;
  v241.i64[1] = 0x2000200020002;
  v242 = vceqq_s16(vandq_s8(v152, v240), v241);
  v241.i64[0] = 0x10001000100010;
  v241.i64[1] = 0x10001000100010;
  v243 = vandq_s8(v242, v241);
  v241.i64[0] = 0x7000700070007;
  v241.i64[1] = 0x7000700070007;
  v244 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v166), v480), 3uLL), v149, v241), vandq_s8(vaddq_s16(v152, v152), v238)), vbicq_s8(v66, vceqzq_s16(v239))), v243);
  if ((vpaddq_s16(v244, v244).i16[0] - 463) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v245 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v246 = 8 * (a1 & 7);
    if (v246)
    {
      v247 = *v245 & ~(-1 << v246);
    }

    else
    {
      v247 = 0;
    }

    *a2 = 0;
    v248.i32[0] = v66.u16[0];
    v248.i32[1] = v66.u16[1];
    v249 = vshr_n_s32(vshl_n_s32(v248, 0x10uLL), 0x10uLL);
    v250 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v249, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v249)), 0x3C00000003C00);
    v251 = vorr_s8(vdup_lane_s32(v250, 1), v250).u32[0] | v152.i8[0] & 0x1F | (32 * (v152.i8[2] & 0x1F));
    v252 = v247 | (v251 << v246);
    if (v246 >= 0x2E)
    {
      *v245 = v252;
      v252 = v251 >> (-8 * (a1 & 7u));
    }

    v253 = (v246 + 18) & 0x3A;
    v254 = v252 | (v7.u32[0] << v253);
    if (v253 >= 0x20)
    {
      *(v245 + (((v246 + 18) >> 3) & 8)) = v254;
      v254 = v7.u32[0] >> -v253;
    }

    v255 = v246 + 50;
    v256 = vsubq_s16(v66, v149);
    v257 = vsubq_s16(v66, v166);
    v258 = vsubq_s16(v66, v151);
    v259 = vsubq_s16(v66, v480);
    *v256.i8 = vqmovn_u16(v256);
    *v257.i8 = vqmovn_u16(v257);
    *v258.i8 = vqmovn_u16(v258);
    *v259.i8 = vqmovn_u16(v259);
    v256.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v256, v257), vzip1q_s8(v258, v259)), vzip1q_s16(vtrn2q_s8(v256, v257), vtrn2q_s8(v258, v259))).u64[0];
    v258.i64[0] = 0x202020202020202;
    v258.i64[1] = 0x202020202020202;
    v260 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v152.i8, 0x4000400040004)))), v258);
    v258.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v258.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v259.i64[0] = -1;
    v259.i64[1] = -1;
    v261 = vandq_s8(vshlq_u8(v259, vorrq_s8(v260, v258)), v256.u64[0]);
    v262 = vmovl_u8(*v260.i8);
    v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
    v264 = vpaddq_s16(v262, vmovl_high_u8(v260));
    v265 = vmovl_u16(*v264.i8);
    v266 = vmovl_high_u16(v264);
    v267 = vpaddq_s32(vshlq_u32(vmovl_u16(*v263.i8), vtrn1q_s32(0, v265)), vshlq_u32(vmovl_high_u16(v263), vtrn1q_s32(0, v266)));
    v268 = vpaddq_s32(v265, v266);
    v269.i64[0] = v267.u32[0];
    v269.i64[1] = v267.u32[1];
    v270 = v269;
    v269.i64[0] = v267.u32[2];
    v269.i64[1] = v267.u32[3];
    v271 = v269;
    v269.i64[0] = v268.u32[0];
    v269.i64[1] = v268.u32[1];
    v272 = v269;
    v269.i64[0] = v268.u32[2];
    v269.i64[1] = v268.u32[3];
    v273 = vpaddq_s64(vshlq_u64(v270, vzip1q_s64(0, v272)), vshlq_u64(v271, vzip1q_s64(0, v269)));
    v274 = vpaddq_s64(v272, v269);
    v275 = (v246 + 50) & 0x3A;
    v276 = (v273.i64[0] << v275) | v254;
    if ((v274.i64[0] + v275) >= 0x40)
    {
      *(v245 + ((v255 >> 3) & 8)) = v276;
      v276 = v273.i64[0] >> -v275;
    }

    v277 = vceqq_s16(v66, v149);
    v278 = v274.i64[0] + v255;
    v279 = v276 | (v273.i64[1] << v278);
    if ((v278 & 0x3F) + v274.i64[1] >= 0x40)
    {
      *(v245 + ((v278 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v279;
      v279 = v273.i64[1] >> -(v278 & 0x3F);
      if ((v278 & 0x3F) == 0)
      {
        v279 = 0;
      }
    }

    v280 = vandq_s8(v148, v277);
    v281 = v278 + v274.i64[1];
    v282.i64[0] = -1;
    v282.i64[1] = -1;
    v283 = vandq_s8(vextq_s8(vtstq_s16(v239, v239), 0, 0xCuLL), v66);
    v284.i64[0] = 0xF000F000F000FLL;
    v284.i64[1] = 0xF000F000F000FLL;
    v285 = vandq_s8(vshlq_u16(v282, vaddq_s16(v283, v284)), v148);
    v286 = vmovl_u16(*v283.i8);
    v287 = vpaddq_s32(vshlq_u32(vmovl_u16(*v285.i8), vtrn1q_s32(0, v286)), vmovl_high_u16(v285));
    v288 = vpaddq_s32(v286, vmovl_high_u16(v283));
    v289.i64[0] = v287.u32[0];
    v289.i64[1] = v287.u32[1];
    v290 = v289;
    v289.i64[0] = v287.u32[2];
    v289.i64[1] = v287.u32[3];
    v291 = v289;
    v289.i64[0] = v288.u32[0];
    v289.i64[1] = v288.u32[1];
    v292 = v289;
    v289.i64[0] = v288.u32[2];
    v289.i64[1] = v288.u32[3];
    v293 = vpaddq_s64(vshlq_u64(v290, vzip1q_s64(0, v292)), vshlq_u64(v291, vzip1q_s64(0, v289)));
    v294 = vpaddq_s64(v292, v289);
    v295 = (v293.i64[0] << v281) | v279;
    if (v294.i64[0] + (v281 & 0x3F) >= 0x40)
    {
      *(v245 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v295;
      v295 = v293.i64[0] >> -(v281 & 0x3F);
      if ((v281 & 0x3F) == 0)
      {
        v295 = 0;
      }
    }

    v296 = vaddq_s16(v280, v165);
    v297 = v294.i64[0] + v281;
    v298 = v295 | (v293.i64[1] << v297);
    if ((v297 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v245 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
      v298 = v293.i64[1] >> -(v297 & 0x3F);
      if ((v297 & 0x3F) == 0)
      {
        v298 = 0;
      }
    }

    v299 = v297 + v294.i64[1];
    v300 = vextq_s8(0, v149, 0xCuLL);
    v301.i64[0] = 0xF000F000F000FLL;
    v301.i64[1] = 0xF000F000F000FLL;
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vshlq_u16(v302, vaddq_s16(v300, v301)), v296);
    v304 = vmovl_u16(*v300.i8);
    v305 = vmovl_high_u16(v300);
    v306 = vpaddq_s32(vshlq_u32(vmovl_u16(*v303.i8), vtrn1q_s32(0, v304)), vshlq_u32(vmovl_high_u16(v303), vtrn1q_s32(0, v305)));
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
    v314 = (v312.i64[0] << v299) | v298;
    if (v313.i64[0] + (v299 & 0x3F) >= 0x40)
    {
      *(v245 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
      v314 = v312.i64[0] >> -(v299 & 0x3F);
      if ((v299 & 0x3F) == 0)
      {
        v314 = 0;
      }
    }

    v315 = vceqq_s16(v66, v166);
    v316 = vaddq_s16(v164, v280);
    v317 = v313.i64[0] + v299;
    v318 = v314 | (v312.i64[1] << v317);
    if ((v317 & 0x3F) + v313.i64[1] >= 0x40)
    {
      *(v245 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v312.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = vandq_s8(v148, v315);
    v320 = v317 + v313.i64[1];
    v321.i64[0] = 0xF000F000F000FLL;
    v321.i64[1] = 0xF000F000F000FLL;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v149, v321)), v316);
    v324 = vmovl_u16(*v149.i8);
    v325 = vmovl_high_u16(v149);
    v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v323.i8), vtrn1q_s32(0, v324)), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v325)));
    v327 = vpaddq_s32(v324, v325);
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
      *(v245 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v320 & 0x3F);
      if ((v320 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vaddq_s16(v163, v319);
    v336 = v333.i64[0] + v320;
    v337 = v334 | (v332.i64[1] << v336);
    if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v245 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v332.i64[1] >> -(v336 & 0x3F);
      if ((v336 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = v336 + v333.i64[1];
    v339.i64[0] = 0xF000F000F000FLL;
    v339.i64[1] = 0xF000F000F000FLL;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vshlq_u16(v340, vaddq_s16(v166, v339));
    v342 = vandq_s8(v341, v335);
    v343 = vmovl_u16(*v342.i8);
    v344 = vmovl_high_u16(v342);
    v345 = vmovl_u16(*v166.i8);
    v346 = vmovl_high_u16(v166);
    v347 = vtrn1q_s32(0, v345);
    v348 = vtrn1q_s32(0, v346);
    v349 = vpaddq_s32(vshlq_u32(v343, v347), vshlq_u32(v344, v348));
    v350 = vpaddq_s32(v345, v346);
    v351.i64[0] = v349.u32[0];
    v351.i64[1] = v349.u32[1];
    v352 = v351;
    v351.i64[0] = v349.u32[2];
    v351.i64[1] = v349.u32[3];
    v353 = v351;
    v351.i64[0] = v350.u32[0];
    v351.i64[1] = v350.u32[1];
    v354 = v351;
    v351.i64[0] = v350.u32[2];
    v351.i64[1] = v350.u32[3];
    v355 = vzip1q_s64(0, v354);
    v356 = vzip1q_s64(0, v351);
    v357 = vpaddq_s64(vshlq_u64(v352, v355), vshlq_u64(v353, v356));
    v358 = vpaddq_s64(v354, v351);
    v359 = (v357.i64[0] << v338) | v337;
    if (v358.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v245 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      if ((v338 & 0x3F) != 0)
      {
        v359 = v357.i64[0] >> -(v338 & 0x3F);
      }

      else
      {
        v359 = 0;
      }
    }

    v360 = vceqq_s16(v66, v151);
    v361 = vaddq_s16(v158, v319);
    v362 = v358.i64[0] + v338;
    v363 = v359 | (v357.i64[1] << v362);
    if ((v362 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v245 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      v363 = v357.i64[1] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v363 = 0;
      }
    }

    v364 = vandq_s8(v148, v360);
    v365 = v362 + v358.i64[1];
    v366 = vandq_s8(v341, v361);
    v367 = vpaddq_s32(vshlq_u32(vmovl_u16(*v366.i8), v347), vshlq_u32(vmovl_high_u16(v366), v348));
    v368.i64[0] = v367.u32[0];
    v368.i64[1] = v367.u32[1];
    v369 = v368;
    v368.i64[0] = v367.u32[2];
    v368.i64[1] = v367.u32[3];
    v370 = vpaddq_s64(vshlq_u64(v369, v355), vshlq_u64(v368, v356));
    v371 = (v370.i64[0] << v365) | v363;
    if (v358.i64[0] + (v365 & 0x3F) >= 0x40)
    {
      *(v245 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
      v371 = v370.i64[0] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v371 = 0;
      }
    }

    v372 = vaddq_s16(v159, v364);
    v373 = v358.i64[0] + v365;
    v374 = (v358.i64[0] + v365) & 0x3F;
    v375 = v371 | (v370.i64[1] << v373);
    if ((v373 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v245 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      v375 = v370.i64[1] >> -v374;
      if (!v374)
      {
        v375 = 0;
      }
    }

    v376 = v373 + v358.i64[1];
    v377.i64[0] = 0xF000F000F000FLL;
    v377.i64[1] = 0xF000F000F000FLL;
    v378.i64[0] = -1;
    v378.i64[1] = -1;
    v379 = vshlq_u16(v378, vaddq_s16(v151, v377));
    v380 = vandq_s8(v379, v372);
    v381 = vmovl_u16(*v380.i8);
    v382 = vmovl_high_u16(v380);
    v383 = vmovl_u16(*v151.i8);
    v384 = vmovl_high_u16(v151);
    v385 = vtrn1q_s32(0, v383);
    v386 = vtrn1q_s32(0, v384);
    v387 = vpaddq_s32(vshlq_u32(v381, v385), vshlq_u32(v382, v386));
    v388 = vpaddq_s32(v383, v384);
    v389.i64[0] = v387.u32[0];
    v389.i64[1] = v387.u32[1];
    v390 = v389;
    v389.i64[0] = v387.u32[2];
    v389.i64[1] = v387.u32[3];
    v391 = v389;
    v389.i64[0] = v388.u32[0];
    v389.i64[1] = v388.u32[1];
    v392 = v389;
    v389.i64[0] = v388.u32[2];
    v389.i64[1] = v388.u32[3];
    v393 = vzip1q_s64(0, v392);
    v394 = vzip1q_s64(0, v389);
    v395 = vpaddq_s64(vshlq_u64(v390, v393), vshlq_u64(v391, v394));
    v396 = vpaddq_s64(v392, v389);
    v397 = (v373 + v358.i64[1]) & 0x3F;
    v398 = (v395.i64[0] << (v373 + v358.i8[8])) | v375;
    if ((v396.i64[0] + v397) >= 0x40)
    {
      *(v245 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
      if (v397)
      {
        v398 = v395.i64[0] >> -v397;
      }

      else
      {
        v398 = 0;
      }
    }

    v399 = vceqq_s16(v66, v480);
    v400 = vaddq_s16(v162, v364);
    v401 = v396.i64[0] + v376;
    v402 = v398 | (v395.i64[1] << v401);
    if ((v401 & 0x3F) + v396.i64[1] >= 0x40)
    {
      *(v245 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      v402 = v395.i64[1] >> -(v401 & 0x3F);
      if ((v401 & 0x3F) == 0)
      {
        v402 = 0;
      }
    }

    v403 = vandq_s8(v148, v399);
    v404 = v401 + v396.i64[1];
    v405 = vandq_s8(v379, v400);
    v406 = vpaddq_s32(vshlq_u32(vmovl_u16(*v405.i8), v385), vshlq_u32(vmovl_high_u16(v405), v386));
    v407.i64[0] = v406.u32[0];
    v407.i64[1] = v406.u32[1];
    v408 = v407;
    v407.i64[0] = v406.u32[2];
    v407.i64[1] = v406.u32[3];
    v409 = vpaddq_s64(vshlq_u64(v408, v393), vshlq_u64(v407, v394));
    v410 = (v409.i64[0] << v404) | v402;
    if (v396.i64[0] + (v404 & 0x3F) >= 0x40)
    {
      *(v245 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      v410 = v409.i64[0] >> -(v404 & 0x3F);
      if ((v404 & 0x3F) == 0)
      {
        v410 = 0;
      }
    }

    v411 = vaddq_s16(v161, v403);
    v412 = v396.i64[0] + v404;
    v413 = (v396.i64[0] + v404) & 0x3F;
    v414 = v410 | (v409.i64[1] << v412);
    if ((v412 & 0x3F) + v396.i64[1] >= 0x40)
    {
      *(v245 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v409.i64[1] >> -v413;
      if (!v413)
      {
        v414 = 0;
      }
    }

    v415 = v412 + v396.i64[1];
    v416.i64[0] = 0xF000F000F000FLL;
    v416.i64[1] = 0xF000F000F000FLL;
    v417.i64[0] = -1;
    v417.i64[1] = -1;
    v418 = vshlq_u16(v417, vaddq_s16(v480, v416));
    v419 = vandq_s8(v418, v411);
    v420 = vmovl_u16(*v419.i8);
    v421 = vmovl_high_u16(v419);
    v422 = vmovl_u16(*v480.i8);
    v423 = vmovl_high_u16(v480);
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
    v436 = (v412 + v396.i64[1]) & 0x3F;
    v437 = (v434.i64[0] << (v412 + v396.i8[8])) | v414;
    if ((v435.i64[0] + v436) > 0x3F)
    {
      *(v245 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
      if (v436)
      {
        v437 = v434.i64[0] >> -v436;
      }

      else
      {
        v437 = 0;
      }
    }

    v438 = vaddq_s16(v160, v403);
    v439 = v435.i64[0] + v415;
    v440 = v437 | (v434.i64[1] << v439);
    if ((v439 & 0x3F) + v435.i64[1] >= 0x40)
    {
      *(v245 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
      v440 = v434.i64[1] >> -(v439 & 0x3F);
      if ((v439 & 0x3F) == 0)
      {
        v440 = 0;
      }
    }

    v441 = v439 + v435.i64[1];
    v442 = vandq_s8(v418, v438);
    v443 = vpaddq_s32(vshlq_u32(vmovl_u16(*v442.i8), v424), vshlq_u32(vmovl_high_u16(v442), v425));
    v444.i64[0] = v443.u32[0];
    v444.i64[1] = v443.u32[1];
    v445 = v444;
    v444.i64[0] = v443.u32[2];
    v444.i64[1] = v443.u32[3];
    v446 = vpaddq_s64(vshlq_u64(v445, v432), vshlq_u64(v444, v433));
    v447 = (v446.i64[0] << v441) | v440;
    if (v435.i64[0] + (v441 & 0x3F) >= 0x40)
    {
      *(v245 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
      v447 = v446.i64[0] >> -(v441 & 0x3F);
      if ((v441 & 0x3F) == 0)
      {
        v447 = 0;
      }
    }

    v448 = v435.i64[0] + v441;
    v449 = (v435.i64[0] + v441) & 0x3F;
    v450 = v447 | (v446.i64[1] << (v435.i8[0] + v441));
    if ((v449 + v435.i64[1]) >= 0x40)
    {
      *(v245 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v450;
      v450 = v446.i64[1] >> -v449;
      if (!v449)
      {
        v450 = 0;
      }
    }

    v451 = v448 + v435.i64[1];
    if ((v451 & 0x3F) != 0)
    {
      *(v245 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v450;
    }

    result = (v451 - v246 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v12 = 0;
  v80 = *MEMORY[0x29EDCA608];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a6)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (a5)
    {
      v28 = 0;
      do
      {
        v29 = 0;
        v30 = (a3 + v28 * a4);
        v31 = &v72 + 4 * (v28 & 0x3F);
        v32 = &v72 + ((4 * v28) | 1u);
        v33 = &v72 + ((4 * v28) | 2u);
        v34 = &v72 + ((4 * v28) | 3u);
        do
        {
          v35 = v30[1];
          *(v31 + 2 * (v29 & 0x7F)) = *v30;
          *(v32 + 2 * (v29 & 0x7F)) = v35;
          v36 = (2 * v29) | 1u;
          v37 = v30[3];
          *(v31 + v36) = v30[2];
          *(v32 + v36) = v37;
          v38 = v30[5];
          *(v33 + 2 * (v29 & 0x7F)) = v30[4];
          *(v34 + 2 * (v29 & 0x7F)) = v38;
          v39 = v30[6];
          v40 = v30[7];
          v30 += 8;
          ++v29;
          *(v33 + v36) = v39;
          *(v34 + v36) = v40;
        }

        while (a5 != v29);
        ++v28;
      }

      while (v28 != a6);
      v27 = v72;
      v26 = WORD1(v72);
      v25 = v73;
      v24 = WORD1(v73);
      v23 = WORD2(v72);
      v22 = WORD3(v72);
      v21 = WORD2(v73);
      v20 = WORD3(v73);
      v19 = v74;
      v18 = WORD1(v74);
      v17 = v75;
      v16 = WORD1(v75);
      v15 = WORD2(v74);
      v14 = WORD3(v74);
      v13 = WORD2(v75);
      v12 = WORD3(v75);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v56 = v27;
  v57 = v26;
  v41 = 2 * (a6 & 0x7F);
  v42 = 4 * (a5 & 0x3F);
  v58 = v25;
  v59 = v24;
  v60 = v23;
  v61 = v22;
  v62 = v21;
  v63 = v20;
  v64 = v19;
  v65 = v18;
  v66 = v17;
  v67 = v16;
  v68 = v15;
  v69 = v14;
  v70 = v13;
  v71 = v12;
  v43 = 4 * (a5 != 0);
  v44 = 2 * (a6 != 0);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v43, v44);
  v56 = WORD4(v72);
  v57 = WORD5(v72);
  v58 = WORD4(v73);
  v59 = WORD5(v73);
  v60 = WORD6(v72);
  v61 = HIWORD(v72);
  v62 = WORD6(v73);
  v63 = HIWORD(v73);
  v64 = WORD4(v74);
  v65 = WORD5(v74);
  v66 = WORD4(v75);
  v67 = WORD5(v75);
  v68 = WORD6(v74);
  v69 = HIWORD(v74);
  v46 = v41 - 2;
  if (v41 < 2)
  {
    v46 = 0;
  }

  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46;
  }

  v70 = WORD6(v75);
  v71 = HIWORD(v75);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v56, a7, v43, v47);
  v56 = v76;
  v57 = WORD1(v76);
  v58 = v77;
  v59 = WORD1(v77);
  v60 = WORD2(v76);
  v61 = WORD3(v76);
  v62 = WORD2(v77);
  v63 = WORD3(v77);
  v64 = v78;
  v65 = WORD1(v78);
  v66 = v79;
  v67 = WORD1(v79);
  v68 = WORD2(v78);
  v69 = WORD3(v78);
  v49 = v42 - 4;
  if (v42 < 4)
  {
    v49 = 0;
  }

  if (a5 >= 2)
  {
    v50 = 4;
  }

  else
  {
    v50 = v49;
  }

  v70 = WORD2(v79);
  v71 = WORD3(v79);
  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v56, a7, v50, v44);
  v56 = WORD4(v76);
  v57 = WORD5(v76);
  v58 = WORD4(v77);
  v59 = WORD5(v77);
  v60 = WORD6(v76);
  v61 = HIWORD(v76);
  v62 = WORD6(v77);
  v63 = HIWORD(v77);
  v64 = WORD4(v78);
  v65 = WORD5(v78);
  v66 = WORD4(v79);
  v67 = WORD5(v79);
  v68 = WORD6(v78);
  v69 = HIWORD(v78);
  v70 = WORD6(v79);
  v71 = HIWORD(v79);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v56, a7, v50, v47);
  if (v51)
  {
    v53 = 4;
  }

  else
  {
    v53 = 0;
  }

  if (v48)
  {
    v54 = 2;
  }

  else
  {
    v54 = 0;
  }

  if (result)
  {
    v55 = -8;
  }

  else
  {
    v55 = -16;
  }

  *a2 = v55 | v53 | v45 | v54;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 18;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x2F)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i32[0] = v15;
  v16.i32[1] = v15 >> 5;
  v17 = vand_s8(v16, 0x1F0000001FLL);
  v18 = vuzp1_s16(v17, v17);
  v19.i32[0] = v15 >> 10;
  v19.i32[1] = v15 >> 14;
  v20 = vuzp1_s16(vadd_s32(vand_s8(v19, 0xF0000000FLL), 0x100000001), v18);
  v21 = v12 + 50;
  v22 = v14 & 0x3A;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> (v14 & 0x3A);
  if (v22 >= 0x21)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = vdupq_lane_s32(v18, 0);
  v26 = vdupq_lane_s32(v20, 0);
  v27 = (8 * (a3 & 7)) | 0x200;
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v29 = vandq_s8(v25, v28);
  v30 = vbicq_s8(v26, vceqq_s16(v29, v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v31 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v25.i8, 0x4000400040004)))), v28);
  if (vmaxvq_s8(v31) < 1)
  {
    v40 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v30;
    v56 = v30;
    v57 = v30;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v54 = v30;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
  }

  else
  {
    v32 = vmovl_u8(*&vpaddq_s8(v31, v31));
    v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
    v34 = vpaddq_s32(v33, v33).u64[0];
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
    v37 = vaddvq_s64(v35);
    v38 = v37 + v21;
    v39 = v37 <= 0x80 && v27 >= v38;
    v40 = !v39;
    v41 = 0uLL;
    if (v39)
    {
      v42 = v21 & 0x3A;
      v43 = vaddq_s64(vzip1q_s64(0, v36), vdupq_n_s64(v42));
      v44 = (v13 + ((v21 >> 3) & 8));
      v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v43)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v43)));
      if (v37 + v42 >= 0x81)
      {
        v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v43)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v43))), v41);
      }

      v21 = v38;
    }

    v45 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v46.i64[0] = v45.u32[0];
    v46.i64[1] = v45.u32[1];
    v47 = vshlq_u64(v41, vnegq_s64(v46));
    v48 = vuzp1q_s32(vzip1q_s64(v41, v47), vzip2q_s64(v41, v47));
    v49 = vshlq_u32(v48, vnegq_s32((*&v32 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v50 = vuzp1q_s16(vzip1q_s32(v48, v49), vzip2q_s32(v48, v49));
    v48.i64[0] = 0x101010101010101;
    v48.i64[1] = 0x101010101010101;
    *v51.i8 = vand_s8(vadd_s8(*&vshlq_s8(v48, v31), -1), vmovn_s16(vzip1q_s16(v50, vshlq_u16(v50, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v25.i8)))))));
    v51.i64[1] = v51.i64[0];
    *v51.i8 = vqtbl1_s8(v51, 0x703060205010400);
    *v50.i8 = vdup_lane_s16(*v51.i8, 0);
    *v48.i8 = vdup_lane_s16(*v51.i8, 1);
    v52 = vdup_lane_s16(*v51.i8, 2);
    v53 = vdup_lane_s16(*v51.i8, 3);
    v54 = vsubw_s8(v30, *v50.i8);
    v55 = vsubw_s8(v30, *v48.i8);
    v56 = vsubw_s8(v30, v52);
    v57 = vsubw_s8(v30, v53);
    v58 = vmovl_s8(vceqz_s8(*v50.i8));
    v59 = vmovl_s8(vceqz_s8(*v48.i8));
    v60 = vmovl_s8(vceqz_s8(v52));
    v61 = vmovl_s8(vceqz_s8(v53));
  }

  v62.i64[0] = 0x8000800080008;
  v62.i64[1] = 0x8000800080008;
  v63 = 0uLL;
  v64 = vandq_s8(vextq_s8(vtstq_s16(v25, v62), 0, 0xCuLL), v30);
  v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v66 = vpaddq_s32(v65, v65).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68 = v67;
  v69 = vaddvq_s64(v67);
  v70 = v69 + v21;
  if (v69 <= 0x80 && v27 >= v70)
  {
    v72 = v21 & 0x3F;
    v73 = vaddq_s64(vzip1q_s64(0, v68), vdupq_n_s64(v72));
    v74 = (v13 + 8 * (v21 >> 6));
    v63 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v74, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v74->i64[0], 0), vnegq_s64(v73)));
    if (v69 + v72 >= 0x81)
    {
      v63 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v74[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v74[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v63);
    }

    v21 = v70;
  }

  else
  {
    v40 = 1;
  }

  v75 = v25.i8[0] & 3;
  if (v75 == 2)
  {
    if (v27 < v21 + 8)
    {
      v40 = 1;
    }

    else
    {
      v21 += 8;
    }

    v76 = v27 < v21 + 8;
    if (v27 >= v21 + 8)
    {
      v21 += 8;
    }

    v40 |= v76;
  }

  v77 = 0uLL;
  v78 = vextq_s8(0, v54, 0xCuLL);
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v21;
  if (v83 <= 0x80 && v27 >= v84)
  {
    v87 = v21 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v87));
    v89 = (v13 + 8 * (v21 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v83 + v87 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
    }

    v21 = v84;
  }

  else
  {
    v40 = 1;
    v86 = 0uLL;
  }

  v90 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v91 = vpaddq_s32(v90, v90).u64[0];
  v92.i64[0] = v91;
  v92.i64[1] = HIDWORD(v91);
  v93 = v92;
  v94 = vaddvq_s64(v92);
  v95 = v94 + v21;
  if (v94 <= 0x80 && v27 >= v95)
  {
    v97 = v21 & 0x3F;
    v98 = vaddq_s64(vzip1q_s64(0, v93), vdupq_n_s64(v97));
    v99 = (v13 + 8 * (v21 >> 6));
    v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v94 + v97 >= 0x81)
    {
      v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v77);
    }

    v21 = v95;
  }

  else
  {
    v40 = 1;
  }

  v283 = v11;
  v284 = v10;
  v285 = v9;
  v286 = v8;
  v287 = v7;
  v288 = v6;
  v289 = v5;
  v290 = v4;
  v100 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v21;
  v106 = 0uLL;
  if (v104 <= 0x80 && v27 >= v105)
  {
    v109 = v21 & 0x3F;
    v110 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v109));
    v111 = (v13 + 8 * (v21 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
    if (v104 + v109 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
    }

    v21 = v105;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v40 = 1;
    v108 = 0uLL;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  v112 = v104 + v21;
  if (v27 < v104 + v21)
  {
LABEL_62:
    v112 = v21;
    v40 = 1;
    goto LABEL_63;
  }

  v113 = v21 & 0x3F;
  v114 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v113));
  v115 = (v13 + 8 * (v21 >> 6));
  v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
  if (v104 + v113 >= 0x81)
  {
    v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v106);
  }

LABEL_63:
  v116 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v117 = vpaddq_s32(v116, v116).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = 0uLL;
  if (v120 > 0x80 || (v122 = v120 + v112, v27 < v120 + v112))
  {
    v122 = v112;
    v40 = 1;
    v125 = 0uLL;
  }

  else
  {
    v123 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v112 & 0x3F));
    v124 = (v13 + 8 * (v112 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + (v112 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }
  }

  if (v120 > 0x80 || (v126 = v120 + v122, v27 < v120 + v122))
  {
    v126 = v122;
    v40 = 1;
  }

  else
  {
    v127 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v122 & 0x3F));
    v128 = (v13 + 8 * (v122 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v120 + (v122 & 0x3F) >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v121);
    }
  }

  v129 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  if (v133 > 0x80 || (v134 = v133 + v126, v27 < v133 + v126))
  {
    v134 = v126;
    v40 = 1;
    v138 = 0uLL;
  }

  else
  {
    v135 = v126 & 0x3F;
    v136 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135));
    v137 = (v13 + 8 * (v126 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v133 + v135 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v133 > 0x80 || v27 < v133 + v134)
  {
    goto LABEL_86;
  }

  v139 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v134 & 0x3F));
  v140 = (v13 + 8 * (v134 >> 6));
  v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
  if (v133 + (v134 & 0x3F) >= 0x81)
  {
    v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
  }

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 512 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v281 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v281[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
      v144 += v147;
      v148 = v147 + v145;
      v143 += v148 >> 6;
      v145 = v148 & 0x3F;
      v146 -= v147;
    }

    while (v146);
LABEL_90:
    v142 = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    return v142;
  }

  if (v75 == 2)
  {
    v150 = 0;
    v151 = 0;
    v152 = 8 * (&v282 & 7);
    v153 = 16;
    do
    {
      v154 = 64 - v152;
      if (64 - v152 >= v153)
      {
        v154 = v153;
      }

      *&v281[8 * v150] |= ((0xFFFFFFFFFFFFFFFFLL >> v151) & ~(-1 << v154)) << v152;
      v151 += v154;
      v155 = v154 + v152;
      v150 += v155 >> 6;
      v152 = v155 & 0x3F;
      v153 -= v154;
    }

    while (v153);
    goto LABEL_90;
  }

  v156 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v157 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v158 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v159 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v160.i64[0] = v156.u32[0];
  v160.i64[1] = v156.u32[1];
  v161 = v160;
  v160.i64[0] = v157.u32[0];
  v160.i64[1] = v157.u32[1];
  v162 = v160;
  v160.i64[0] = v158.u32[0];
  v160.i64[1] = v158.u32[1];
  v163 = v160;
  v160.i64[0] = v159.u32[0];
  v160.i64[1] = v159.u32[1];
  v164 = vnegq_s64(v161);
  v165 = vnegq_s64(v162);
  v166 = vnegq_s64(v163);
  v167 = vnegq_s64(v160);
  v168 = vshlq_u64(v63, v164);
  v169 = vshlq_u64(v108, v165);
  v170 = vshlq_u64(v106, v165);
  v171 = vshlq_u64(v125, v166);
  v172 = vshlq_u64(v121, v166);
  v173 = vshlq_u64(v138, v167);
  v174 = vzip2q_s64(v63, v168);
  v175 = vzip1q_s64(v63, v168);
  v176 = vzip2q_s64(v108, v169);
  v177 = vzip1q_s64(v108, v169);
  v178 = vzip2q_s64(v106, v170);
  v179 = vzip1q_s64(v106, v170);
  v180 = vzip2q_s64(v125, v171);
  v181 = vzip1q_s64(v125, v171);
  v182 = vzip2q_s64(v121, v172);
  v183 = vzip1q_s64(v121, v172);
  v184 = vzip2q_s64(v138, v173);
  v185 = vzip1q_s64(v138, v173);
  v186 = vuzp1q_s32(v175, v174);
  v187 = vuzp1q_s32(v177, v176);
  v188 = vuzp1q_s32(v179, v178);
  v175.i64[0] = 0xFFFF0000FFFFLL;
  v175.i64[1] = 0xFFFF0000FFFFLL;
  v189 = vuzp1q_s32(v181, v180);
  v177.i64[0] = 0xFFFF0000FFFFLL;
  v177.i64[1] = 0xFFFF0000FFFFLL;
  v190 = vnegq_s32(vandq_s8(v64, v175));
  v191 = vnegq_s32(vandq_s8(v55, v177));
  v192 = vuzp1q_s32(v183, v182);
  v193 = vuzp1q_s32(v185, v184);
  v194 = vshlq_u32(v186, v190);
  v195 = vshlq_u32(v187, v191);
  v196 = vshlq_u32(v188, v191);
  v191.i64[0] = 0x10001000100010;
  v191.i64[1] = 0x10001000100010;
  v185.i64[0] = 0xF000F000F000FLL;
  v185.i64[1] = 0xF000F000F000FLL;
  v197 = vsubq_s16(v191, v64);
  v198 = vaddq_s16(v64, v185);
  v185.i64[0] = 0x10001000100010;
  v185.i64[1] = 0x10001000100010;
  v199 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v186, v194), vzip2q_s32(v186, v194)), v197);
  v197.i64[0] = 0xF000F000F000FLL;
  v197.i64[1] = 0xF000F000F000FLL;
  v200 = vsubq_s16(v185, v55);
  v201 = vaddq_s16(v55, v197);
  v197.i64[0] = 0xFFFF0000FFFFLL;
  v197.i64[1] = 0xFFFF0000FFFFLL;
  v202 = vnegq_s32(vandq_s8(v56, v197));
  v203 = vshlq_s16(v199, v198);
  v204 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v187, v195), vzip2q_s32(v187, v195)), v200), v201);
  v205 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v188, v196), vzip2q_s32(v188, v196)), v200), v201);
  v206 = vdupq_lane_s32(*v203.i8, 0);
  v207 = vandq_s8(v59, v206);
  v208 = vsubq_s16(v204, v207);
  v209 = vsubq_s16(v205, v207);
  v210 = vshlq_u32(v189, v202);
  v211 = vshlq_u32(v192, v202);
  v212 = vzip2q_s32(v189, v210);
  v213 = vzip1q_s32(v189, v210);
  v214 = vzip2q_s32(v192, v211);
  v215 = vzip1q_s32(v192, v211);
  v211.i64[0] = 0x10001000100010;
  v211.i64[1] = 0x10001000100010;
  v216 = vuzp1q_s16(v215, v214);
  v214.i64[0] = 0xF000F000F000FLL;
  v214.i64[1] = 0xF000F000F000FLL;
  v217 = vsubq_s16(v211, v56);
  v218 = vaddq_s16(v56, v214);
  v214.i64[0] = 0xFFFF0000FFFFLL;
  v214.i64[1] = 0xFFFF0000FFFFLL;
  v219 = vnegq_s32(vandq_s8(v57, v214));
  v220 = vshlq_s16(vshlq_s16(vuzp1q_s16(v213, v212), v217), v218);
  v221 = vshlq_s16(vshlq_s16(v216, v217), v218);
  v222 = vandq_s8(v60, v206);
  v223 = vsubq_s16(v220, v222);
  v224 = vsubq_s16(v221, v222);
  v225 = vshlq_u32(v193, v219);
  v226 = vzip2q_s32(v193, v225);
  v227 = vzip1q_s32(v193, v225);
  v225.i64[0] = 0x10001000100010;
  v225.i64[1] = 0x10001000100010;
  v228 = vuzp1q_s16(v227, v226);
  v226.i64[0] = 0xF000F000F000FLL;
  v226.i64[1] = 0xF000F000F000FLL;
  v229 = vsubq_s16(v225, v57);
  v230 = vaddq_s16(v57, v226);
  v231 = vshlq_u64(v141, v167);
  v232 = vuzp1q_s32(vzip1q_s64(v141, v231), vzip2q_s64(v141, v231));
  v233 = vshlq_u32(v232, v219);
  v234 = vshlq_s16(vshlq_s16(v228, v229), v230);
  v235 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v232, v233), vzip2q_s32(v232, v233)), v229), v230);
  v236 = vandq_s8(v61, v206);
  v237 = vsubq_s16(v234, v236);
  v238 = vsubq_s16(v235, v236);
  v239 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v240 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v160.i64[0] = v239.u32[0];
  v160.i64[1] = v239.u32[1];
  v241 = v160;
  v160.i64[0] = v240.u32[0];
  v160.i64[1] = v240.u32[1];
  v242 = vshlq_u64(v86, vnegq_s64(v241));
  v243 = vshlq_u64(v77, vnegq_s64(v160));
  v244 = vzip2q_s64(v86, v242);
  v245 = vzip1q_s64(v86, v242);
  v246 = vzip2q_s64(v77, v243);
  v247 = vzip1q_s64(v77, v243);
  v243.i64[0] = 0xFFFF0000FFFFLL;
  v243.i64[1] = 0xFFFF0000FFFFLL;
  v248 = vuzp1q_s32(v245, v244);
  v249 = vuzp1q_s32(v247, v246);
  v250 = vnegq_s32(vandq_s8(v54, v243));
  v251 = vshlq_u32(v248, vnegq_s32(vandq_s8(v78, v243)));
  v252 = vshlq_u32(v249, v250);
  v253 = vzip2q_s32(v248, v251);
  v254 = vzip1q_s32(v248, v251);
  v255 = vzip2q_s32(v249, v252);
  v256 = vzip1q_s32(v249, v252);
  v252.i64[0] = 0x10001000100010;
  v252.i64[1] = 0x10001000100010;
  v257 = vuzp1q_s16(v256, v255);
  v255.i64[0] = 0xF000F000F000FLL;
  v255.i64[1] = 0xF000F000F000FLL;
  v258 = vaddq_s16(vandq_s8(v203, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v254, v253), vsubq_s16(v252, v78)), vaddq_s16(v78, v255)));
  v259 = vandq_s8(v58, v206);
  v260.i64[0] = 0x1000100010001;
  v260.i64[1] = 0x1000100010001;
  v261 = vceqq_s16(v29, v260);
  v262 = vaddvq_s16(v261);
  v263 = vsubq_s16(v258, v259);
  v264 = vsubq_s16(vshlq_s16(vshlq_s16(v257, vsubq_s16(v252, v54)), vaddq_s16(v54, v255)), v259);
  v261.i32[0] = v24;
  v265 = vdupq_lane_s32(*v261.i8, 0);
  if (v262)
  {
    v266 = vnegq_s16(vandq_s8(v25, v260));
    v267 = v264;
    v267.i32[3] = v263.i32[0];
    v268 = v263;
    v268.i32[0] = v264.i32[3];
    v291.val[0] = vbslq_s8(v266, v268, v263);
    v291.val[1] = vbslq_s8(v266, v267, v264);
    v267.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v267.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v292.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v291, xmmword_29D2F0F80), v266), v291.val[0]);
    v292.val[1] = vaddq_s16(v291.val[1], vandq_s8(vqtbl2q_s8(v291, v267), v266));
    v263 = vaddq_s16(vandq_s8(vqtbl2q_s8(v292, xmmword_29D2F0F90), v266), v292.val[0]);
    v264 = vaddq_s16(v292.val[1], vandq_s8(vqtbl2q_s8(v292, v267), v266));
    v292.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v208.i8, xmmword_29D2F0FA0), v266), v208);
    v292.val[1] = vaddq_s16(v209, vandq_s8(vqtbl2q_s8(*v208.i8, xmmword_29D2F0FB0), v266));
    v208 = vaddq_s16(vandq_s8(vqtbl2q_s8(v292, xmmword_29D2F0FC0), v266), v292.val[0]);
    v209 = vaddq_s16(v292.val[1], vandq_s8(vqtbl2q_s8(v292, v267), v266));
    v292.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FD0), v266), v223);
    v292.val[1] = vaddq_s16(v224, vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0F80), v266));
    v223 = vaddq_s16(vandq_s8(vqtbl2q_s8(v292, v267), v266), v292.val[0]);
    v224 = vaddq_s16(v292.val[1], vandq_s8(vqtbl2q_s8(v292, xmmword_29D2F0FE0), v266));
    v291.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v237.i8, xmmword_29D2F0FF0), v266), v237);
    v291.val[1] = vaddq_s16(v238, vandq_s8(vqtbl2q_s8(*v237.i8, xmmword_29D2F0F80), v266));
    v237 = vaddq_s16(vandq_s8(vqtbl2q_s8(v291, v267), v266), v291.val[0]);
    v238 = vaddq_s16(v291.val[1], vandq_s8(vqtbl2q_s8(v291, xmmword_29D2F1000), v266));
  }

  v269 = vaddq_s16(v263, v265);
  v270 = vaddq_s16(v264, v265);
  v271 = vaddq_s16(v208, v265);
  v272 = vaddq_s16(v209, v265);
  v273 = vaddq_s16(v223, v265);
  v274 = vaddq_s16(v224, v265);
  v275 = vaddq_s16(v237, v265);
  v276 = vaddq_s16(v238, v265);
  v277.i64[0] = 0x10001000100010;
  v277.i64[1] = 0x10001000100010;
  v278 = vceqzq_s16(vandq_s8(v25, v277));
  v279 = a1 + 2;
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v269, xmmword_29D2F1080), v278), v269);
  a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v270, xmmword_29D2F1080), v278), v270);
  v280 = (a1 + a2);
  *v279 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v271, xmmword_29D2F1080), v278), v271);
  v279[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v278), v272);
  *v280 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v278), v273);
  v280[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v278), v274);
  v280 += 2;
  *v280 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v278), v275);
  v280[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v278), v276);
  return v142;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v99 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, v83, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, v83, a5);
  }

  v64 = v84;
  v65 = v83[0];
  v62 = v86;
  v63 = v85;
  v70 = v90;
  v71 = v89;
  v79 = v91;
  v77 = v92;
  v74 = v93;
  v75 = v87;
  v72 = v94;
  v73 = v88;
  v81 = v95;
  v80 = v96;
  v78 = v97;
  v76 = v98;
  v9 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, v83, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, v83, a5);
  }

  v68 = v84;
  v69 = v83[0];
  v66 = v86;
  v67 = v85;
  v58 = v88;
  v59 = v87;
  v56 = v90;
  v57 = v89;
  v54 = v92;
  v55 = v91;
  v52 = v94;
  v53 = v93;
  v50 = v96;
  v51 = v95;
  v48 = v98;
  v49 = v97;
  v61 = a5;
  v60 = a3;
  v10 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, v83, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, v83, a5);
  }

  v46 = v84;
  v47 = v83[0];
  v44 = v86;
  v45 = v85;
  v42 = v88;
  v43 = v87;
  v40 = v90;
  v41 = v89;
  v11 = v91;
  v12 = v92;
  v13 = v93;
  v14 = v94;
  v15 = v95;
  v16 = v96;
  v17 = v97;
  v18 = v98;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v60 + 48, v83, v61);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v60 + 48, v83, v61);
  }

  v19 = v17 | (v18 << 16);
  v20 = v15 | (v16 << 16);
  v21 = v13 | (v14 << 16);
  v22 = v11 | (v12 << 16);
  a1[14] = v51 | (v50 << 16);
  a1[15] = v49 | (v48 << 16);
  a1[12] = v55 | (v54 << 16);
  a1[13] = v53 | (v52 << 16);
  a1[10] = v59 | (v58 << 16);
  a1[11] = v57 | (v56 << 16);
  v23 = v83[0];
  v24 = v84;
  result = v85;
  *a1 = v65 | (v64 << 16);
  a1[1] = v63 | (v62 << 16);
  v26 = v86;
  v27 = v87;
  v28 = v88;
  v29 = v89;
  a1[2] = v75 | (v73 << 16);
  a1[3] = v71 | (v70 << 16);
  v30 = v90;
  v31 = v91;
  v32 = v92;
  v33 = v93;
  a1[4] = v79 | (v77 << 16);
  a1[5] = v74 | (v72 << 16);
  v34 = v94;
  v35 = v95;
  v36 = v96;
  v37 = v97;
  a1[6] = v81 | (v80 << 16);
  a1[7] = v78 | (v76 << 16);
  v38 = v98;
  a1[8] = v69 | (v68 << 16);
  a1[9] = v67 | (v66 << 16);
  v39 = (a1 + a2);
  *v39 = v47 | (v46 << 16);
  v39[1] = v45 | (v44 << 16);
  v39[2] = v43 | (v42 << 16);
  v39[3] = v41 | (v40 << 16);
  v39[4] = v22;
  v39[5] = v21;
  v39[6] = v20;
  v39[7] = v19;
  v39[8] = v23 | (v24 << 16);
  v39[9] = result | (v26 << 16);
  v39[10] = v27 | (v28 << 16);
  v39[11] = v29 | (v30 << 16);
  v39[12] = v31 | (v32 << 16);
  v39[13] = v33 | (v34 << 16);
  v39[14] = v35 | (v36 << 16);
  v39[15] = v37 | (v38 << 16);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 2)
    {
      a5 = 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 2;
  if (v9 >= 3 && v8)
  {
    if (v8 >= 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 2 * a2;
  v18 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v18 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v8 - 2;
    }

    if (v9 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v9 < 3 || v8 < 3)
  {
    a4[3] = 0;
  }

  else
  {
    if (v18 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v8 - 2;
    }

    if (v14 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
    v11 += result;
  }

  v23 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v8;
    }

    if (v23 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 128, a2, v25, v24, a7);
    v11 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v26 = v9 - 6;
  if (v9 >= 7 && v8)
  {
    if (v8 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v8;
    }

    if (v26 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v9 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 192, a2, v28, v27, a7);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v8 >= 3)
  {
    if (v18 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v8 - 2;
    }

    if (v23 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v9 - 4;
    }

    v31 = 2 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 128, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v31 = 2 * a2;
  if (v9 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v8 < 3)
  {
    goto LABEL_79;
  }

  if (v18 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v8 - 2;
  }

  if (v26 >= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = v9 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 192, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x1D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x800;
  v8.i16[0] = v6;
  v8.i16[1] = v6 >> 5;
  v8.i16[2] = v6 >> 10;
  v8.i16[3] = v6 >> 15;
  v9 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v10 = v4 + 100;
  v11 = vand_s8(v8, 0x1F001F001F001FLL);
  *v12.i8 = v11;
  v12.u64[1] = v11;
  v13.i16[0] = v9.i16[0];
  v13.i16[1] = v9.i16[2];
  v13.i16[2] = v6 >> 28;
  v13.i16[3] = BYTE4(v6) & 0xF;
  v13.i16[4] = v9.i16[0];
  v13.i16[5] = v9.i16[2];
  v13.i32[3] = v13.i32[1];
  v14.i64[0] = 0x1000100010001;
  v14.i64[1] = 0x1000100010001;
  v15 = vaddq_s16(v13, v14);
  v14.i64[0] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v14.i64[1] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v16.i64[0] = 0x3000300030003;
  v16.i64[1] = 0x3000300030003;
  v409 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v407 = v47;
    v408 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v405 = v47;
    v406 = v47;
    v43 = v17;
  }

  else
  {
    v19 = vmovl_u8(*&vpaddq_s8(v18, v18));
    v20 = vmovl_u16(*&vpaddq_s16(v19, v19));
    v21 = vpaddq_s32(v20, v20).u64[0];
    v22.i64[0] = v21;
    v22.i64[1] = HIDWORD(v21);
    v23 = v22;
    v24 = vaddvq_s64(v22);
    v25 = v24 + v10;
    v26 = v24 <= 0x80 && v7 >= v25;
    v27 = !v26;
    v28 = 0uLL;
    if (v26)
    {
      v29 = v10 & 0x3C;
      v30 = vaddq_s64(vzip1q_s64(0, v23), vdupq_n_s64(v29));
      v31 = (v5 + ((v10 >> 3) & 0x18));
      v28 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v31, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v30)), vshlq_u64(vdupq_lane_s64(v31->i64[0], 0), vnegq_s64(v30)));
      if (v24 + v29 >= 0x81)
      {
        v28 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v31[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v30)), vshlq_u64(vdupq_laneq_s64(v31[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v30))), v28);
      }

      v10 = v25;
    }

    v32 = vzip1_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vshlq_u64(v28, vnegq_s64(v33));
    v35 = vuzp1q_s32(vzip1q_s64(v28, v34), vzip2q_s64(v28, v34));
    v36 = vshlq_u32(v35, vnegq_s32((*&v19 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v37 = vuzp1q_s16(vzip1q_s32(v35, v36), vzip2q_s32(v35, v36));
    v38 = vshlq_u16(v37, vnegq_s16((*&v18 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v39 = vuzp1q_s8(vzip1q_s16(v37, v38), vzip2q_s16(v37, v38));
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v38, v18);
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    v41 = vqtbl1q_s8(vandq_s8(vaddq_s8(v40, v38), v39), xmmword_29D2F0F70);
    *v39.i8 = vdup_lane_s32(*v41.i8, 0);
    *v38.i8 = vdup_lane_s32(*v41.i8, 1);
    v42 = vdupq_laneq_s32(v41, 2).u64[0];
    v41.i64[0] = vdupq_laneq_s32(v41, 3).u64[0];
    v43 = vsubw_s8(v17, *v39.i8);
    v44 = vsubw_s8(v17, *v38.i8);
    v45 = vsubw_s8(v17, v42);
    v46 = vsubw_s8(v17, *v41.i8);
    v407 = vmovl_s8(vceqz_s8(*v39.i8));
    v405 = vmovl_s8(vceqz_s8(*v38.i8));
    v406 = vmovl_s8(vceqz_s8(v42));
    v408 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v411 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v411, v411));
  v51 = vpaddq_s32(v50, v50).u64[0];
  v52.i64[0] = v51;
  v52.i64[1] = HIDWORD(v51);
  v53 = v52;
  v54 = vaddvq_s64(v52);
  v55 = v54 + v10;
  if (v54 <= 0x80 && v7 >= v55)
  {
    v57 = v10 & 0x3F;
    v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v57));
    v59 = (v5 + 8 * (v10 >> 6));
    v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
    if (v54 + v57 >= 0x81)
    {
      v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v49);
    }

    v10 = v55;
  }

  else
  {
    v27 = 1;
  }

  v60 = v11.i8[0] & 3;
  if (v60 == 2)
  {
    if (v7 < v10 + 8)
    {
      v27 = 1;
    }

    else
    {
      v10 += 8;
    }

    v61 = v7 < v10 + 8;
    if (v7 >= v10 + 8)
    {
      v10 += 8;
    }

    v27 |= v61;
  }

  v62 = 0uLL;
  v400 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v400, v400));
  v64 = vpaddq_s32(v63, v63).u64[0];
  v65.i64[0] = v64;
  v65.i64[1] = HIDWORD(v64);
  v66 = v65;
  v67 = vaddvq_s64(v65);
  v68 = v67 + v10;
  if (v67 <= 0x80 && v7 >= v68)
  {
    v71 = v10 & 0x3F;
    v72 = vaddq_s64(vzip1q_s64(0, v66), vdupq_n_s64(v71));
    v73 = (v5 + 8 * (v10 >> 6));
    v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
    if (v67 + v71 >= 0x81)
    {
      v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v70);
    }

    v10 = v68;
  }

  else
  {
    v27 = 1;
    v70 = 0uLL;
  }

  v401 = v43;
  v74 = vmovl_u16(*&vpaddq_s16(v43, v43));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v78 + v10;
  if (v78 <= 0x80 && v7 >= v79)
  {
    v81 = v10 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v81));
    v83 = (v5 + 8 * (v10 >> 6));
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v78 + v81 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v62);
    }

    v10 = v79;
  }

  else
  {
    v27 = 1;
  }

  v84 = v78 + v10;
  v85 = 0uLL;
  if (v78 <= 0x80 && v7 >= v84)
  {
    v88 = v10 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v88));
    v90 = (v5 + 8 * (v10 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v78 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v10 = v84;
  }

  else
  {
    v27 = 1;
    v87 = 0uLL;
  }

  v91 = v78 + v10;
  v92 = v78 <= 0x80 && v7 >= v91;
  v410 = v12;
  if (v92)
  {
    v93 = v10 & 0x3F;
    v94 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v93));
    v95 = (v5 + 8 * (v10 >> 6));
    v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v78 + v93 >= 0x81)
    {
      v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v85);
    }

    v10 = v91;
  }

  else
  {
    v27 = 1;
  }

  v96 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v97 = vpaddq_s32(v96, v96).u64[0];
  v98.i64[0] = v97;
  v98.i64[1] = HIDWORD(v97);
  v99 = v98;
  v100 = vaddvq_s64(v98);
  v101 = v100 + v10;
  v102 = 0uLL;
  if (v100 <= 0x80 && v7 >= v101)
  {
    v105 = v10 & 0x3F;
    v106 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v105));
    v107 = (v5 + 8 * (v10 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v100 + v105 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
    }

    v10 = v101;
  }

  else
  {
    v27 = 1;
    v104 = 0uLL;
  }

  v108 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v108)
  {
    v110 = v10 & 0x3F;
    v111 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v110));
    v112 = (v5 + 8 * (v10 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v100 + v110 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v102);
    }

    v10 = v108;
  }

  else
  {
    v27 = 1;
  }

  v402 = v44;
  v113 = v100 + v10;
  v114 = 0uLL;
  if (v100 <= 0x80 && v7 >= v113)
  {
    v117 = v10 & 0x3F;
    v118 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v117));
    v119 = (v5 + 8 * (v10 >> 6));
    v116 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
    if (v100 + v117 >= 0x81)
    {
      v116 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v116);
    }

    v10 = v113;
  }

  else
  {
    v27 = 1;
    v116 = 0uLL;
  }

  v120 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v120)
  {
    v122 = v10 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v122));
    v124 = (v5 + 8 * (v10 >> 6));
    v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v100 + v122 >= 0x81)
    {
      v114 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v114);
    }

    v10 = v120;
  }

  else
  {
    v27 = 1;
  }

  v125 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v126 = vpaddq_s32(v125, v125).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v129 + v10;
  v131 = 0uLL;
  if (v129 <= 0x80 && v7 >= v130)
  {
    v134 = v10 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v134));
    v136 = (v5 + 8 * (v10 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v129 + v134 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v133);
    }

    v10 = v130;
  }

  else
  {
    v27 = 1;
    v133 = 0uLL;
  }

  v137 = v129 + v10;
  if (v129 <= 0x80 && v7 >= v137)
  {
    v139 = v10 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v139));
    v141 = (v5 + 8 * (v10 >> 6));
    v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v129 + v139 >= 0x81)
    {
      v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v131);
    }

    v10 = v137;
  }

  else
  {
    v27 = 1;
  }

  v403 = v45;
  v142 = v129 + v10;
  v143 = 0uLL;
  if (v129 <= 0x80 && v7 >= v142)
  {
    v146 = v10 & 0x3F;
    v147 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v146));
    v148 = (v5 + 8 * (v10 >> 6));
    v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v129 + v146 >= 0x81)
    {
      v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v145);
    }

    v10 = v142;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v27 = 1;
    v145 = 0uLL;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  v149 = v129 + v10;
  if (v7 < v129 + v10)
  {
LABEL_124:
    v149 = v10;
    v27 = 1;
    goto LABEL_125;
  }

  v150 = v10 & 0x3F;
  v151 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v150));
  v152 = (v5 + 8 * (v10 >> 6));
  v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v129 + v150 >= 0x81)
  {
    v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v143);
  }

LABEL_125:
  v404 = v46;
  v153 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v154 = vpaddq_s32(v153, v153).u64[0];
  v155.i64[0] = v154;
  v155.i64[1] = HIDWORD(v154);
  v156 = v155;
  v157 = vaddvq_s64(v155);
  v158 = v157;
  v159 = 0uLL;
  if (v157 > 0x80 || (v160 = v157 + v149, v7 < v157 + v149))
  {
    v160 = v149;
    v27 = 1;
    v163 = 0uLL;
  }

  else
  {
    v161 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v149 & 0x3F));
    v162 = (v5 + 8 * (v149 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v158 + (v149 & 0x3F) >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
    }
  }

  if (v158 > 0x80 || (v164 = v158 + v160, v7 < v158 + v160))
  {
    v164 = v160;
    v27 = 1;
  }

  else
  {
    v165 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v160 & 0x3F));
    v166 = (v5 + 8 * (v160 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v158 + (v160 & 0x3F) >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v159);
    }
  }

  if (v158 > 0x80 || (v167 = v158 + v164, v7 < v158 + v164))
  {
    v167 = v164;
    v27 = 1;
    v171 = 0uLL;
  }

  else
  {
    v168 = v164 & 0x3F;
    v169 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v168));
    v170 = (v5 + 8 * (v164 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v158 + v168 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
    }
  }

  if (v158 > 0x80)
  {
    goto LABEL_149;
  }

  v172 = v158 + v167;
  if (v7 < v158 + v167)
  {
    goto LABEL_149;
  }

  v173 = v167 & 0x3F;
  v174 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v173));
  v175 = (v5 + 8 * (v167 >> 6));
  v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v175, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v175->i64[0], 0), vnegq_s64(v174)));
  if (v158 + v173 >= 0x81)
  {
    v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v175[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v175[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
  }

  if ((v27 & 1) != 0 || (v177 = a4 + 1, v7 + 8 * v177 - v172 - 2048 >= 9) || v60 == 2)
  {
LABEL_149:
    v177 = 0;
    *&v178 = 0xFFFFFFFF0000FFFFLL;
    *(&v178 + 1) = 0xFFFFFFFF0000FFFFLL;
    *a1 = v178;
    a1[1] = v178;
    a1[2] = v178;
    a1[3] = v178;
    v179 = (a1 + a2);
    *v179 = v178;
    v179[1] = v178;
    v179[2] = v178;
    v179[3] = v178;
    v180 = (a1 + 2 * a2);
    *v180 = v178;
    v180[1] = v178;
    v180[2] = v178;
    v180[3] = v178;
    v181 = (a1 + 2 * a2 + a2);
    *v181 = v178;
    v181[1] = v178;
    v181[2] = v178;
    v181[3] = v178;
  }

  else
  {
    v183 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v184 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v185 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v186 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
    v187 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v188 = vzip1_s32(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
    v189 = ((2 * *(v5 + (((v4 + 36) >> 3) & 8) + 8)) << ~(v4 + 36)) | (*(v5 + (((v4 + 36) >> 3) & 8)) >> (v4 + 36));
    v190.i64[0] = v183.u32[0];
    v190.i64[1] = v183.u32[1];
    v191 = vshlq_u64(v49, vnegq_s64(v190));
    v395 = vzip1q_s64(v49, v191);
    v397 = vzip2q_s64(v49, v191);
    v190.i64[0] = v184.u32[0];
    v190.i64[1] = v184.u32[1];
    v192 = vshlq_u64(v70, vnegq_s64(v190));
    v391 = vzip1q_s64(v70, v192);
    v393 = vzip2q_s64(v70, v192);
    v190.i64[0] = v185.u32[0];
    v190.i64[1] = v185.u32[1];
    v193 = vnegq_s64(v190);
    v194 = vshlq_u64(v62, v193);
    v387 = vzip1q_s64(v62, v194);
    v389 = vzip2q_s64(v62, v194);
    v195 = vshlq_u64(v87, v193);
    v385 = vzip2q_s64(v87, v195);
    v196 = vzip1q_s64(v87, v195);
    v197 = vshlq_u64(v85, v193);
    v198 = vzip2q_s64(v85, v197);
    v199 = vzip1q_s64(v85, v197);
    v190.i64[0] = v186.u32[0];
    v190.i64[1] = v186.u32[1];
    v200 = vnegq_s64(v190);
    v201 = vshlq_u64(v104, v200);
    v202 = vzip2q_s64(v104, v201);
    v203 = vzip1q_s64(v104, v201);
    v204 = vshlq_u64(v102, v200);
    v205 = vzip2q_s64(v102, v204);
    v206 = vzip1q_s64(v102, v204);
    v207 = vshlq_u64(v116, v200);
    v208 = vzip2q_s64(v116, v207);
    v209 = vzip1q_s64(v116, v207);
    v210 = vshlq_u64(v114, v200);
    v211 = vzip2q_s64(v114, v210);
    v212 = vzip1q_s64(v114, v210);
    v190.i64[0] = v187.u32[0];
    v190.i64[1] = v187.u32[1];
    v213 = vnegq_s64(v190);
    v214 = vshlq_u64(v133, v213);
    v215 = vzip2q_s64(v133, v214);
    v216 = vzip1q_s64(v133, v214);
    v217 = vshlq_u64(v131, v213);
    v218 = vzip2q_s64(v131, v217);
    v219 = vzip1q_s64(v131, v217);
    v220 = vshlq_u64(v145, v213);
    v221 = vzip2q_s64(v145, v220);
    v222 = vzip1q_s64(v145, v220);
    v223 = vshlq_u64(v143, v213);
    v224 = vzip2q_s64(v143, v223);
    v225 = vzip1q_s64(v143, v223);
    v190.i64[0] = v188.u32[0];
    v190.i64[1] = v188.u32[1];
    v399 = vnegq_s64(v190);
    v226 = vshlq_u64(v163, v399);
    v227 = vzip2q_s64(v163, v226);
    v228 = vzip1q_s64(v163, v226);
    v229 = vshlq_u64(v159, v399);
    v230 = vzip2q_s64(v159, v229);
    v231 = vzip1q_s64(v159, v229);
    v232 = vshlq_u64(v171, v399);
    v233 = vzip2q_s64(v171, v232);
    v234 = vzip1q_s64(v171, v232);
    v235 = vuzp1q_s32(v395, v397);
    v236 = vuzp1q_s32(v391, v393);
    v237 = vuzp1q_s32(v387, v389);
    v238 = vuzp1q_s32(v196, v385);
    v239 = vuzp1q_s32(v199, v198);
    v240 = vuzp1q_s32(v203, v202);
    v241 = vuzp1q_s32(v206, v205);
    v242 = vuzp1q_s32(v209, v208);
    v243 = vuzp1q_s32(v212, v211);
    v244 = vuzp1q_s32(v216, v215);
    v245 = vuzp1q_s32(v219, v218);
    v246 = vuzp1q_s32(v222, v221);
    v247 = vuzp1q_s32(v225, v224);
    v248 = vuzp1q_s32(v228, v227);
    v249 = vuzp1q_s32(v231, v230);
    v228.i64[0] = 0xFFFF0000FFFFLL;
    v228.i64[1] = 0xFFFF0000FFFFLL;
    v250 = vuzp1q_s32(v234, v233);
    v251 = vshlq_u32(v235, vnegq_s32(vandq_s8(v411, v228)));
    v396 = vzip1q_s32(v235, v251);
    v398 = vzip2q_s32(v235, v251);
    v233.i64[0] = 0xFFFF0000FFFFLL;
    v233.i64[1] = 0xFFFF0000FFFFLL;
    v252 = vshlq_u32(v236, vnegq_s32(vandq_s8(v400, v233)));
    v392 = vzip1q_s32(v236, v252);
    v394 = vzip2q_s32(v236, v252);
    v253 = vnegq_s32(vandq_s8(v401, v233));
    v254 = vshlq_u32(v237, v253);
    v388 = vzip1q_s32(v237, v254);
    v390 = vzip2q_s32(v237, v254);
    v255 = vshlq_u32(v238, v253);
    v384 = vzip1q_s32(v238, v255);
    v386 = vzip2q_s32(v238, v255);
    v256 = vshlq_u32(v239, v253);
    v382 = vzip1q_s32(v239, v256);
    v383 = vzip2q_s32(v239, v256);
    v215.i64[0] = 0xFFFF0000FFFFLL;
    v215.i64[1] = 0xFFFF0000FFFFLL;
    v257 = vnegq_s32(vandq_s8(v402, v215));
    v258 = vshlq_u32(v240, v257);
    v380 = vzip1q_s32(v240, v258);
    v381 = vzip2q_s32(v240, v258);
    v259 = vshlq_u32(v241, v257);
    v378 = vzip1q_s32(v241, v259);
    v379 = vzip2q_s32(v241, v259);
    v260 = vshlq_u32(v242, v257);
    v376 = vzip1q_s32(v242, v260);
    v377 = vzip2q_s32(v242, v260);
    v261 = vshlq_u32(v243, v257);
    v375 = vzip2q_s32(v243, v261);
    v262 = vzip1q_s32(v243, v261);
    v243.i64[0] = 0xFFFF0000FFFFLL;
    v243.i64[1] = 0xFFFF0000FFFFLL;
    v263 = vnegq_s32(vandq_s8(v403, v243));
    v264 = vshlq_u32(v244, v263);
    v265 = vzip2q_s32(v244, v264);
    v266 = vzip1q_s32(v244, v264);
    v267 = vshlq_u32(v245, v263);
    v268 = vzip2q_s32(v245, v267);
    v269 = vzip1q_s32(v245, v267);
    v270 = vshlq_u32(v246, v263);
    v271 = vzip2q_s32(v246, v270);
    v272 = vzip1q_s32(v246, v270);
    v273 = vshlq_u32(v247, v263);
    v274 = vzip2q_s32(v247, v273);
    v275 = vzip1q_s32(v247, v273);
    v247.i64[0] = 0xFFFF0000FFFFLL;
    v247.i64[1] = 0xFFFF0000FFFFLL;
    v276 = vnegq_s32(vandq_s8(v404, v247));
    v277 = vshlq_u32(v248, v276);
    v278 = vzip2q_s32(v248, v277);
    v279 = vzip1q_s32(v248, v277);
    v280 = vshlq_u32(v249, v276);
    v281 = vzip2q_s32(v249, v280);
    v282 = vzip1q_s32(v249, v280);
    *v251.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v189), xmmword_29D2F10A0));
    v280.i32[0] = v189;
    LOWORD(v189) = v251.i16[2];
    v280.i16[2] = v251.i16[0];
    v283 = vshlq_u32(v250, v276);
    v284 = vuzp1q_s16(v266, v265);
    v285 = vuzp1q_s16(v269, v268);
    v286 = vuzp1q_s16(v279, v278);
    v287 = vuzp1q_s16(v282, v281);
    v288 = vuzp1q_s16(vzip1q_s32(v250, v283), vzip2q_s32(v250, v283));
    v283.i64[0] = 0x10001000100010;
    v283.i64[1] = 0x10001000100010;
    v254.i64[0] = 0xF000F000F000FLL;
    v254.i64[1] = 0xF000F000F000FLL;
    v281.i64[0] = 0x10001000100010;
    v281.i64[1] = 0x10001000100010;
    v289 = vshlq_s16(vuzp1q_s16(v392, v394), vsubq_s16(v281, v400));
    v290 = vsubq_s16(v281, v401);
    v250.i64[0] = 0xF000F000F000FLL;
    v250.i64[1] = 0xF000F000F000FLL;
    v291 = vaddq_s16(v400, v250);
    v292 = vaddq_s16(v401, v250);
    v212.i64[0] = 0x10001000100010;
    v212.i64[1] = 0x10001000100010;
    v293 = vsubq_s16(v212, v402);
    v278.i64[0] = 0xF000F000F000FLL;
    v278.i64[1] = 0xF000F000F000FLL;
    v294 = vaddq_s16(v402, v278);
    v295 = vshlq_s16(vuzp1q_s16(v380, v381), v293);
    v296 = vshlq_s16(vuzp1q_s16(v378, v379), v293);
    v297 = vshlq_s16(vuzp1q_s16(v376, v377), v293);
    v298 = vshlq_s16(vuzp1q_s16(v262, v375), v293);
    v293.i64[0] = 0x10001000100010;
    v293.i64[1] = 0x10001000100010;
    v299 = vsubq_s16(v293, v403);
    v242.i64[0] = 0xF000F000F000FLL;
    v242.i64[1] = 0xF000F000F000FLL;
    v300 = vaddq_s16(v403, v242);
    v301 = vshlq_s16(v284, v299);
    v302 = vshlq_s16(v285, v299);
    v303 = vshlq_s16(vuzp1q_s16(v272, v271), v299);
    v304 = vshlq_s16(vuzp1q_s16(v275, v274), v299);
    v271.i64[0] = 0x10001000100010;
    v271.i64[1] = 0x10001000100010;
    v305 = vsubq_s16(v271, v404);
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v306 = vaddq_s16(v404, v237);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v396, v398), vsubq_s16(v283, v411)), vaddq_s16(v411, v254));
    v308 = vshlq_s16(v289, v291);
    v309 = vshlq_s16(vshlq_s16(vuzp1q_s16(v388, v390), v290), v292);
    v310 = vshlq_s16(vshlq_s16(vuzp1q_s16(v384, v386), v290), v292);
    v311 = vshlq_s16(vshlq_s16(vuzp1q_s16(v382, v383), v290), v292);
    v312 = vshlq_s16(v302, v300);
    v313 = vshlq_s16(v304, v300);
    v314 = vshlq_u64(v176, v399);
    v315 = vuzp1q_s32(vzip1q_s64(v176, v314), vzip2q_s64(v176, v314));
    v316 = vshlq_u32(v315, v276);
    v317 = vshlq_s16(vshlq_s16(v288, v305), v306);
    v318 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v315, v316), vzip2q_s32(v315, v316)), v305), v306);
    v319 = vandq_s8(v307, v407);
    v320 = vdupq_lane_s64(v307.i64[0], 0);
    v321 = vaddq_s16(v319, v308);
    v322 = vandq_s8(v405, v320);
    v323 = vsubq_s16(vshlq_s16(v295, v294), v322);
    v324 = vsubq_s16(vshlq_s16(v296, v294), v322);
    v325 = vsubq_s16(vshlq_s16(v297, v294), v322);
    v326 = vsubq_s16(vshlq_s16(v298, v294), v322);
    v327 = vandq_s8(v406, v320);
    v328 = vsubq_s16(vshlq_s16(v301, v300), v327);
    v329 = vsubq_s16(v312, v327);
    v330 = vsubq_s16(vshlq_s16(v303, v300), v327);
    v331 = vandq_s8(v407, v320);
    v332 = vsubq_s16(v313, v327);
    v333 = vandq_s8(v408, v320);
    v334 = vsubq_s16(vshlq_s16(vshlq_s16(v286, v305), v306), v333);
    v335 = vsubq_s16(vshlq_s16(vshlq_s16(v287, v305), v306), v333);
    v336 = vsubq_s16(v317, v333);
    v337 = vsubq_s16(v318, v333);
    v338 = vsubq_s16(v309, v331);
    v339 = vsubq_s16(v310, v331);
    v340.i64[0] = 0x1000100010001;
    v340.i64[1] = 0x1000100010001;
    v341 = vsubq_s16(v321, v331);
    v342 = vsubq_s16(v311, v331);
    v280.i16[3] = v189;
    v343 = vdupq_lane_s64(v280.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v409, v340)))
    {
      v344 = vnegq_s16(vandq_s8(v410, v340));
      v345.i64[0] = v342.i64[0];
      v346.i64[1] = v341.i64[1];
      v345.i64[1] = v341.i64[0];
      v346.i64[0] = v342.i64[1];
      v347 = vbslq_s8(v344, v346, v341);
      v348 = vbslq_s8(v344, v345, v342);
      v346.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v346.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v349 = vandq_s8(vqtbl4q_s8(*(&v338 - 1), v346), v344);
      v412.val[0] = vaddq_s16(v347, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10B0), v344));
      v412.val[1] = vaddq_s16(v338, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10C0), v344));
      v412.val[2] = vaddq_s16(v339, v349);
      v412.val[3] = vaddq_s16(v348, v349);
      v350 = vandq_s8(vqtbl4q_s8(v412, v346), v344);
      v341 = vaddq_s16(v412.val[0], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F10D0), v344));
      v338 = vaddq_s16(v412.val[1], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F10E0), v344));
      v339 = vaddq_s16(v412.val[2], v350);
      v342 = vaddq_s16(v412.val[3], v350);
      v413.val[0] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10B0), v344));
      v413.val[1] = vaddq_s16(v324, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10F0), v344));
      v413.val[2] = vaddq_s16(v325, vandq_s8(vqtbl4q_s8(*v323.i8, v346), v344));
      v413.val[3] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F1100), v344));
      v351 = vandq_s8(vqtbl4q_s8(v413, xmmword_29D2F10D0), v344);
      v412.val[0] = vandq_s8(vqtbl4q_s8(v413, v346), v344);
      v323 = vaddq_s16(v351, v413.val[0]);
      v324 = vaddq_s16(v413.val[1], v351);
      v325 = vaddq_s16(v413.val[2], v412.val[0]);
      v326 = vaddq_s16(v413.val[3], v412.val[0]);
      v413.val[0] = vaddq_s16(v328, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0EB0), v344));
      v413.val[1] = vaddq_s16(v329, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0FB0), v344));
      v413.val[2] = vaddq_s16(v330, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10B0), v344));
      v413.val[3] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10C0), v344));
      v412.val[1] = vandq_s8(vqtbl4q_s8(v413, v346), v344);
      v328 = vaddq_s16(v413.val[0], v412.val[1]);
      v329 = vaddq_s16(v413.val[1], v412.val[1]);
      v330 = vaddq_s16(v413.val[2], vandq_s8(vqtbl4q_s8(v413, xmmword_29D2F0FE0), v344));
      v332 = vaddq_s16(v413.val[3], vandq_s8(vqtbl4q_s8(v413, xmmword_29D2F1110), v344));
      v412.val[2] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F0EB0), v344));
      v412.val[3] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F1120), v344));
      v352 = v410;
      v413.val[0] = vaddq_s16(v336, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10B0), v344));
      v413.val[1] = vaddq_s16(v337, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10C0), v344));
      v353 = vandq_s8(vqtbl4q_s8(*(&v412 + 32), v346), v344);
      v334 = vaddq_s16(v412.val[2], v353);
      v335 = vaddq_s16(v412.val[3], v353);
      v336 = vaddq_s16(v413.val[0], vandq_s8(vqtbl4q_s8(*(&v412 + 32), xmmword_29D2F0FE0), v344));
      v337 = vaddq_s16(v413.val[1], vandq_s8(vqtbl4q_s8(*(&v412 + 32), xmmword_29D2F1130), v344));
    }

    else
    {
      v352 = v410;
    }

    v354 = vaddq_s16(v341, v343);
    v355 = vaddq_s16(v338, v343);
    v356 = vaddq_s16(v339, v343);
    v357 = vaddq_s16(v342, v343);
    v358 = vaddq_s16(v323, v343);
    v359 = vaddq_s16(v324, v343);
    v360 = vaddq_s16(v325, v343);
    v361 = vaddq_s16(v326, v343);
    v362 = vaddq_s16(v328, v343);
    v363 = vaddq_s16(v329, v343);
    v364 = vaddq_s16(v330, v343);
    v365 = vaddq_s16(v332, v343);
    v366 = vaddq_s16(v334, v343);
    v367 = vaddq_s16(v335, v343);
    v368 = vaddq_s16(v336, v343);
    v369 = vaddq_s16(v337, v343);
    v370.i64[0] = 0x10001000100010;
    v370.i64[1] = 0x10001000100010;
    v371 = vcgtq_u16(v370, v352);
    v372 = (a1 + a2);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v371), v354);
    a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v371), v356);
    a1[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v371), v362);
    a1[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v371), v364);
    v373 = (a1 + 2 * a2);
    *v372 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v371), v355);
    v372[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v371), v357);
    v372[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v371), v363);
    v372[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v371), v365);
    *v373 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v371), v358);
    v373[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v371), v360);
    v373[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v371), v366);
    v373[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v368, xmmword_29D2F1140), v371), v368);
    v374 = (v373 + a2);
    *v374 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v371), v359);
    v374[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v371), v361);
    v374[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1140), v371), v367);
    v374[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v369, xmmword_29D2F1140), v371), v369);
  }

  return v177;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = result[2];
    v9 = *(result + a2 + 32);
    v10 = result[3];
    v11 = *(result + a2 + 48);
    v12 = *(result + a2);
    v14 = *(result + v7 + 16);
    v13 = (result + v7 + a2);
    v15 = result[1];
    v16 = *(result + a2 + 16);
    v17 = v13[1];
    v18 = *(result + v7 + 32);
    v19 = v13[2];
    v20 = *(result + v7 + 48);
    v21 = v13[3];
    v22 = *(result + 2 * a2);
    v23 = *v13;
    *a3 = *result;
    a3[1] = v12;
    a3[2] = v15;
    a3[3] = v16;
    a3[4] = v22;
    a3[5] = v23;
    a3[6] = v14;
    a3[7] = v17;
    a3[8] = v8;
    a3[9] = v9;
    a3[10] = v10;
    a3[11] = v11;
    a3[12] = v18;
    a3[13] = v19;
    a3[14] = v20;
    a3[15] = v21;
    a3 += 16;
    v6 = -1;
  }

  v24 = 0;
  v25 = 4 * a2;
  *a4 = v6;
  if (a5 && a6 >= 5)
  {
    v26 = (result + v25 + a2);
    v27 = (result + v25 + v7);
    v28 = *(result + v25 + 32);
    v29 = v26[2];
    v30 = *(result + v25 + 48);
    v31 = v26[3];
    v32 = *v26;
    v34 = *v27;
    v35 = v27[1];
    v36 = v27[2];
    v37 = v27[3];
    v33 = (v27 + a2);
    v38 = *(result + v25 + 16);
    v39 = v26[1];
    v40 = v33[1];
    v41 = v33[2];
    v42 = v33[3];
    v43 = *v33;
    *a3 = *(result + 4 * a2);
    a3[1] = v32;
    a3[2] = v38;
    a3[3] = v39;
    a3[4] = v34;
    a3[5] = v43;
    a3[6] = v35;
    a3[7] = v40;
    a3[8] = v28;
    a3[9] = v29;
    a3[10] = v30;
    a3[11] = v31;
    a3[12] = v36;
    a3[13] = v41;
    a3[14] = v37;
    a3[15] = v42;
    a3 += 16;
    v24 = -1;
  }

  v44 = 0;
  a4[1] = v24;
  if (a5 >= 9 && a6)
  {
    v45 = (result + a2 + 64);
    v46 = (result + v7 + 64);
    v47 = result[6];
    v48 = v45[2];
    v49 = result[7];
    v50 = v45[3];
    v51 = *v45;
    v53 = *v46;
    v54 = v46[1];
    v55 = v46[2];
    v56 = v46[3];
    v52 = (v46 + a2);
    v57 = result[5];
    v58 = v45[1];
    v59 = v52[1];
    v60 = v52[2];
    v61 = v52[3];
    v62 = *v52;
    *a3 = result[4];
    a3[1] = v51;
    a3[2] = v57;
    a3[3] = v58;
    a3[4] = v53;
    a3[5] = v62;
    a3[6] = v54;
    a3[7] = v59;
    a3[8] = v47;
    a3[9] = v48;
    a3[10] = v49;
    a3[11] = v50;
    a3[12] = v55;
    a3[13] = v60;
    a3[14] = v56;
    a3[15] = v61;
    a3 += 16;
    v44 = -1;
  }

  v63 = 0;
  a4[2] = v44;
  if (a5 >= 9 && a6 >= 5)
  {
    v64 = (result + v25 + 64);
    v65 = (v64 + a2);
    v67 = *v64;
    v68 = v64[1];
    v69 = v64[2];
    v70 = v64[3];
    v66 = (v64 + v7);
    v71 = v65[2];
    v72 = v65[3];
    v73 = *v65;
    v75 = *v66;
    v76 = v66[1];
    v77 = v66[2];
    v78 = v66[3];
    v74 = (v66 + a2);
    v79 = v68;
    v80 = v65[1];
    v81 = v74[1];
    v82 = v74[2];
    v83 = v74[3];
    v84 = *v74;
    *a3 = v67;
    a3[1] = v73;
    a3[2] = v79;
    a3[3] = v80;
    a3[4] = v75;
    a3[5] = v84;
    a3[6] = v76;
    a3[7] = v81;
    a3[8] = v69;
    a3[9] = v71;
    a3[10] = v70;
    a3[11] = v72;
    a3[12] = v77;
    a3[13] = v82;
    a3[14] = v78;
    a3[15] = v83;
    a3 += 16;
    v63 = -1;
  }

  v85 = 0;
  a4[3] = v63;
  if (a5 && a6 >= 9)
  {
    v86 = (result + 8 * a2);
    v87 = (v86 + a2);
    v89 = *v86;
    v90 = v86[1];
    v91 = v86[2];
    v92 = v86[3];
    v88 = (v86 + v7);
    v93 = v87[2];
    v94 = v87[3];
    v95 = *v87;
    v97 = *v88;
    v98 = v88[1];
    v99 = v88[2];
    v100 = v88[3];
    v96 = (v88 + a2);
    v101 = v90;
    v102 = v87[1];
    v103 = v96[1];
    v104 = v96[2];
    v105 = v96[3];
    v106 = *v96;
    *a3 = v89;
    a3[1] = v95;
    a3[2] = v101;
    a3[3] = v102;
    a3[4] = v97;
    a3[5] = v106;
    a3[6] = v98;
    a3[7] = v103;
    a3[8] = v91;
    a3[9] = v93;
    a3[10] = v92;
    a3[11] = v94;
    a3[12] = v99;
    a3[13] = v104;
    a3[14] = v100;
    a3[15] = v105;
    a3 += 16;
    v85 = -1;
  }

  v107 = 0;
  a4[4] = v85;
  if (a5 && a6 >= 0xD)
  {
    v108 = (result + 12 * a2);
    v109 = (v108 + a2);
    v111 = *v108;
    v112 = v108[1];
    v113 = v108[2];
    v114 = v108[3];
    v110 = (v108 + v7);
    v115 = v109[2];
    v116 = v109[3];
    v117 = *v109;
    v119 = *v110;
    v120 = v110[1];
    v121 = v110[2];
    v122 = v110[3];
    v118 = (v110 + a2);
    v123 = v112;
    v124 = v109[1];
    v125 = v118[1];
    v126 = v118[2];
    v127 = v118[3];
    v128 = *v118;
    *a3 = v111;
    a3[1] = v117;
    a3[2] = v123;
    a3[3] = v124;
    a3[4] = v119;
    a3[5] = v128;
    a3[6] = v120;
    a3[7] = v125;
    a3[8] = v113;
    a3[9] = v115;
    a3[10] = v114;
    a3[11] = v116;
    a3[12] = v121;
    a3[13] = v126;
    a3[14] = v122;
    a3[15] = v127;
    a3 += 16;
    v107 = -1;
  }

  v129 = 0;
  a4[5] = v107;
  if (a5 >= 9 && a6 >= 9)
  {
    v130 = (result + 8 * a2 + 64);
    v131 = (v130 + a2);
    v133 = *v130;
    v132 = (v130 + v7);
    v134 = *(result + 8 * a2 + 96);
    v135 = v131[2];
    v136 = *(result + 8 * a2 + 112);
    v137 = v131[3];
    v138 = *v131;
    v140 = *v132;
    v141 = v132[1];
    v142 = v132[2];
    v143 = v132[3];
    v139 = (v132 + a2);
    v144 = *(result + 8 * a2 + 80);
    v145 = v131[1];
    v146 = v139[1];
    v147 = v139[2];
    v148 = v139[3];
    v149 = *v139;
    *a3 = v133;
    a3[1] = v138;
    a3[2] = v144;
    a3[3] = v145;
    a3[4] = v140;
    a3[5] = v149;
    a3[6] = v141;
    a3[7] = v146;
    a3[8] = v134;
    a3[9] = v135;
    a3[10] = v136;
    a3[11] = v137;
    a3[12] = v142;
    a3[13] = v147;
    a3[14] = v143;
    a3[15] = v148;
    a3 += 16;
    v129 = -1;
  }

  v150 = 0;
  a4[6] = v129;
  if (a5 >= 9 && a6 >= 0xD)
  {
    v151 = (result + 12 * a2 + 64);
    v152 = (v151 + a2);
    v154 = *v151;
    v153 = (v151 + v7);
    v155 = *(result + 12 * a2 + 96);
    v156 = v152[2];
    v157 = *(result + 12 * a2 + 112);
    v158 = v152[3];
    v160 = *v153;
    v161 = v153[1];
    v162 = v153[2];
    v163 = v153[3];
    v159 = (v153 + a2);
    v164 = *v152;
    v165 = *(result + 12 * a2 + 80);
    v166 = v159[1];
    v167 = v159[3];
    v168 = v152[1];
    v169 = v159[2];
    v170 = *v159;
    *a3 = v154;
    a3[1] = v164;
    a3[2] = v165;
    a3[3] = v168;
    a3[4] = v160;
    a3[5] = v170;
    a3[6] = v161;
    a3[7] = v166;
    a3[8] = v155;
    a3[9] = v156;
    a3[10] = v157;
    a3[11] = v158;
    a3[12] = v162;
    a3[13] = v169;
    a3[14] = v163;
    a3[15] = v167;
    v150 = -1;
  }

  a4[7] = v150;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v7 = (v6 + a4);
  v12 = v11;
  v13 = v10;
  v14 = vdupq_lane_s64(a3->i64[0], 0);
  v516 = *a3;
  v517 = *(a3 + a4);
  v518 = a3[1];
  v519 = *(&a3[1] + a4);
  v504 = vsubq_s16(*a3, v14);
  v507 = vsubq_s16(v519, v14);
  v510 = vsubq_s16(v518, v14);
  v513 = vsubq_s16(v517, v14);
  v15 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v504, v513), v510), v507), xmmword_29D2F1150);
  v16 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v504, v513), v510), v507), xmmword_29D2F1150);
  v17 = vpmaxq_s16(v15, v15);
  v18 = vpminq_s16(v16, v16);
  v19 = vzip1q_s16(v17, v18);
  v20.i64[0] = 0x10001000100010;
  v20.i64[1] = 0x10001000100010;
  v21 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v19)), vceqzq_s16(v19));
  v22.i64[0] = 0x8000800080008000;
  v22.i64[1] = 0x8000800080008000;
  v23 = vmaxq_s16(v17, v22);
  v22.i64[0] = 0x8000800080008000;
  v22.i64[1] = 0x8000800080008000;
  v24 = vminq_s16(v18, v22);
  v25 = vsubq_s16(v8, v14);
  v26 = vsubq_s16(*v7, v14);
  v498 = v8;
  v499 = *v7;
  v500 = v9;
  v27 = vsubq_s16(v9, v14);
  v28 = v25;
  v29 = vsubq_s16(v7[1], v14);
  v30 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v25, v26), v27), v29), xmmword_29D2F1150);
  v31 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v28, v26), v27), v29), xmmword_29D2F1150);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vmaxq_s16(v23, v32);
  v35 = vminq_s16(v24, v33);
  v36 = vzip1q_s16(v32, v33);
  v37 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v36)), vceqzq_s16(v36));
  v38 = vsubq_s16(a3[2], v14);
  v39 = vsubq_s16(*(&a3[2] + a4), v14);
  v520 = a3[2];
  v521 = *(&a3[2] + a4);
  v522 = a3[3];
  v40 = vsubq_s16(v522, v14);
  v495 = *(&a3[3] + a4);
  v41 = vsubq_s16(v495, v14);
  v42 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v43 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v44 = vpmaxq_s16(v42, v42);
  v45 = vpminq_s16(v43, v43);
  v46 = vmaxq_s16(v34, v44);
  v47 = vminq_s16(v35, v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vsubq_s16(v13, v14);
  v51 = vsubq_s16(v7[2], v14);
  v501 = v13;
  v502 = v7[2];
  v503 = v12;
  v52 = vsubq_s16(v12, v14);
  v53 = v39;
  v54 = v29;
  v55 = v27;
  v493 = v7[1];
  v494 = v7[3];
  v56 = vsubq_s16(v494, v14);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v50, v51), v52), v56), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v50, v51), v52), v56), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vmaxq_s16(v46, v59);
  v62 = vminq_s16(v47, v60);
  v63 = vzip1q_s16(v59, v60);
  v64 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v63)), vceqzq_s16(v63));
  v65 = vpmaxq_s16(v21, v21);
  v66 = vpmaxq_s16(v37, v37);
  v67 = vpmaxq_s16(v49, v49);
  v68 = vpmaxq_s16(v64, v64);
  v69 = vmaxq_s16(vmaxq_s16(v65, v66), vmaxq_s16(v67, v68));
  v70 = vclzq_s16(vsubq_s16(v61, v62));
  v71 = vsubq_s16(v20, v70);
  v72 = vcgtq_s16(v69, v71);
  v73 = vminq_s16(v71, v69);
  v69.i64[0] = 0x8000800080008;
  v69.i64[1] = 0x8000800080008;
  v74.i64[0] = 0x3000300030003;
  v74.i64[1] = 0x3000300030003;
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v65), v74), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v66), v74), 0);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v67), v74), 0);
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v68), v74), 0);
  v27.i64[0] = 0x4000400040004;
  v27.i64[1] = 0x4000400040004;
  v79 = vbicq_s8(v27, vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76))));
  v80 = vorrq_s8(v79, vorrq_s8(vandq_s8(vceqzq_s16(v73), v74), vandq_s8(v72, v69)));
  v543 = v14;
  v523 = v504;
  v525 = v513;
  v527 = v510;
  v529 = v507;
  v531 = v28;
  v534 = v54;
  v535 = v38;
  v538 = v41;
  v539 = v50;
  v81 = vmaxvq_s16(v73);
  v50.i64[0] = 0xF000F000F000FLL;
  v50.i64[1] = 0xF000F000F000FLL;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  v82 = vshlq_s16(v27, vsubq_s16(v50, v70));
  v486 = v26;
  v488 = v55;
  v532 = v26;
  v533 = v55;
  v490 = v54;
  v496 = v53;
  v536 = v53;
  v537 = v40;
  v540 = v51;
  v84 = a5 < 4 || a6 < 2;
  v541 = v52;
  v542 = v56;
  v550 = v62;
  v549 = v73;
  v85 = vandq_s8(vsubq_s16(v82, v62), v72);
  v551 = v61;
  v552 = v85;
  v505 = vsubq_s16(v73, v75);
  v545 = v505;
  v511 = vsubq_s16(v73, v76);
  v546 = v511;
  v508 = vsubq_s16(v73, v77);
  v547 = v508;
  v514 = vsubq_s16(v73, v78);
  v548 = v514;
  v544 = v80;
  if (v81)
  {
    v460 = v62;
    v461 = v61;
    v462 = v85;
    v464 = v80;
    v484 = v79;
    v86 = vsubq_s16(v531, vqtbl1q_s8(v531, xmmword_29D2F1140));
    v459 = vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1140));
    v87 = vsubq_s16(v533, vqtbl1q_s8(v533, xmmword_29D2F1140));
    v88 = vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1140));
    v89 = vsubq_s16(v537, vqtbl1q_s8(v537, xmmword_29D2F1140));
    v90 = vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1140));
    v465 = vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1140));
    v467 = vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1140));
    v469 = vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1140));
    v471 = vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1140));
    v91 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v467, v465), v471), v469), xmmword_29D2F1150);
    v92 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v467, v465), v471), v469), xmmword_29D2F1150);
    v93 = vpmaxq_s16(v91, v91);
    v94 = vpminq_s16(v92, v92);
    v95.i64[0] = 0x8000800080008000;
    v95.i64[1] = 0x8000800080008000;
    v96 = vmaxq_s16(v93, v95);
    v97.i64[0] = 0x8000800080008000;
    v97.i64[1] = 0x8000800080008000;
    v98 = vminq_s16(v94, v97);
    v99 = vzip1q_s16(v93, v94);
    v100.i64[0] = 0x10001000100010;
    v100.i64[1] = 0x10001000100010;
    v101 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v99)), vceqzq_s16(v99));
    v102 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v86, v459), v87), v88);
    v463 = v86;
    v103 = vminq_s16(v86, v459);
    v104 = v87;
    v105 = vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1140));
    v106 = vqtbl1q_s8(v102, xmmword_29D2F1150);
    v107 = vqtbl1q_s8(vminq_s16(vminq_s16(v103, v104), v88), xmmword_29D2F1150);
    v108 = vpmaxq_s16(v106, v106);
    v109 = vpminq_s16(v107, v107);
    v110 = vmaxq_s16(v96, v108);
    v111 = vminq_s16(v98, v109);
    v112 = vzip1q_s16(v108, v109);
    v113 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v112)), vceqzq_s16(v112));
    v114 = vsubq_s16(v535, vqtbl1q_s8(v535, xmmword_29D2F1140));
    v115 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v114, v105), v89), v90), xmmword_29D2F1150);
    v116 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v114, v105), v89), v90), xmmword_29D2F1150);
    v117 = vpmaxq_s16(v115, v115);
    v118 = vpminq_s16(v116, v116);
    v119 = vmaxq_s16(v110, v117);
    v120 = vminq_s16(v111, v118);
    v121 = vzip1q_s16(v117, v118);
    v122 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v121)), vceqzq_s16(v121));
    v123 = vsubq_s16(v539, vqtbl1q_s8(v539, xmmword_29D2F1140));
    v480 = vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1140));
    v482 = vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1140));
    v478 = vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1140));
    v124 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v123, v482), v480), v478), xmmword_29D2F1150);
    v125 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v123, v482), v480), v478), xmmword_29D2F1150);
    v126 = vpmaxq_s16(v124, v124);
    v127 = vpminq_s16(v125, v125);
    v128 = vmaxq_s16(v119, v126);
    v129 = vminq_s16(v120, v127);
    v130 = vzip1q_s16(v126, v127);
    v131 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v130)), vceqzq_s16(v130));
    v132 = vpmaxq_s16(v101, v101);
    v133 = vpmaxq_s16(v113, v113);
    v134 = vpmaxq_s16(v122, v122);
    v135 = vpmaxq_s16(v131, v131);
    v136 = vmaxq_s16(vmaxq_s16(v132, v133), vmaxq_s16(v134, v135));
    v137 = v129;
    v138 = vclzq_s16(vsubq_s16(v128, v129));
    v139 = vsubq_s16(v100, v138);
    v140 = vcgtq_s16(v136, v139);
    v141 = vminq_s16(v139, v136);
    v136.i64[0] = 0x18001800180018;
    v136.i64[1] = 0x18001800180018;
    v142 = vbslq_s8(v140, v136, v100);
    v143 = vmaxq_s16(vminq_s16(vsubq_s16(v141, v132), v74), 0);
    v144 = vmaxq_s16(vminq_s16(vsubq_s16(v141, v133), v74), 0);
    v145 = vmaxq_s16(vminq_s16(vsubq_s16(v141, v134), v74), 0);
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v141, v135), v74), 0);
    v100.i64[0] = 0x4000400040004;
    v100.i64[1] = 0x4000400040004;
    v147 = vbicq_s8(v100, vceqq_s16(vaddq_s16(v146, v145), vnegq_s16(vaddq_s16(v143, v144))));
    v148 = vsubq_s16(v141, v143);
    v149 = vsubq_s16(v141, v144);
    v150 = vsubq_s16(v141, v145);
    v151 = vsubq_s16(v141, v146);
    v145.i64[0] = 0x7000700070007;
    v145.i64[1] = 0x7000700070007;
    v152 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v73, v72), v505, v145), vshlq_n_s16(vaddq_s16(vaddq_s16(v508, v511), v514), 3uLL)), vaddq_s16(v484, v484)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v141, vceqzq_s16((*&v142 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v148, v145), vshlq_n_s16(vaddq_s16(vaddq_s16(v150, v149), v151), 3uLL)), vaddq_s16(v147, v147))).i64[0], 0);
    if (vaddvq_s16(v152))
    {
      v523 = vbslq_s8(v152, v467, v523);
      v525 = vbslq_s8(v152, v465, v525);
      v527 = vbslq_s8(v152, v471, v527);
      v529 = vbslq_s8(v152, v469, v529);
      v531 = vbslq_s8(v152, v463, v531);
      v532 = vbslq_s8(v152, v459, v486);
      v533 = vbslq_s8(v152, v104, v488);
      v534 = vbslq_s8(v152, v88, v490);
      v535 = vbslq_s8(v152, v114, v535);
      v536 = vbslq_s8(v152, v105, v496);
      v153.i64[0] = 0x3000300030003;
      v153.i64[1] = 0x3000300030003;
      v154 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v141), v153), v142), v147);
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v537 = vbslq_s8(v152, v89, v40);
      v538 = vbslq_s8(v152, v90, v41);
      v539 = vbslq_s8(v152, v123, v539);
      v540 = vbslq_s8(v152, v482, v51);
      v541 = vbslq_s8(v152, v480, v52);
      v542 = vbslq_s8(v152, v478, v56);
      v545 = vbslq_s8(v152, v148, v505);
      v546 = vbslq_s8(v152, v149, v511);
      v547 = vbslq_s8(v152, v150, v508);
      v548 = vbslq_s8(v152, v151, v514);
      v551 = vbslq_s8(v152, v128, v461);
      v552 = vbslq_s8(v152, vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v155, v138)), v137), v140), v462);
      v550 = vbslq_s8(v152, v137, v460);
      v549 = vbslq_s8(v152, v141, v73);
      v543 = vbslq_s8(v152, vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1140)), v543);
      v544 = vbslq_s8(v152, v154, v464);
    }

    v157 = v520;
    v158 = v521;
    v159 = v522;
    v160 = v516;
    v161 = v517;
    v162 = v518;
    v163 = v519;
    if (v84)
    {
      v164 = v546;
      v165 = v547;
      v166 = v549;
      v167 = v548;
      v168 = v531;
      v497 = v532;
      v506 = v533;
      v509 = v534;
      v512 = v535;
      v515 = v536;
      v170 = v537;
      v169 = v538;
      v171 = v539;
      v172 = v540;
      v173 = v541;
      v174 = v542;
      v175 = v545;
      v176 = v544;
      v177 = v523;
      v178 = v525;
      v180 = v527;
      v179 = v529;
    }

    else
    {
      v183 = vqtbl4q_s8(*v160.i8, xmmword_29D2F1160);
      v184 = vsubq_s16(v516, vqtbl4q_s8(*v160.i8, xmmword_29D2F10B0));
      v491 = vsubq_s16(v517, vqtbl4q_s8(*v160.i8, xmmword_29D2F10C0));
      v185 = vsubq_s16(v519, v183);
      v553.val[0] = v498;
      v553.val[1] = v499;
      v553.val[2] = v500;
      v553.val[3].i64[0] = v493.i64[0];
      v553.val[3].i64[1] = v519.i64[1];
      v186 = vsubq_s16(v498, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v187 = vsubq_s16(v499, vqtbl4q_s8(v553, xmmword_29D2F10F0));
      v188 = vsubq_s16(v500, vqtbl4q_s8(v553, xmmword_29D2F1160));
      v189 = v495.i64[0];
      v190 = v519.i64[1];
      v191 = vsubq_s16(v493, vqtbl4q_s8(v553, xmmword_29D2F1100));
      v192 = vqtbl4q_s8(*v157.i8, xmmword_29D2F10C0);
      v489 = vsubq_s16(v520, vqtbl4q_s8(*v157.i8, xmmword_29D2F1170));
      v193 = vsubq_s16(v521, vqtbl4q_s8(*v157.i8, xmmword_29D2F1180));
      v194 = vsubq_s16(v522, vqtbl4q_s8(*v157.i8, xmmword_29D2F10B0));
      v195 = vsubq_s16(v495, v192);
      v553.val[0] = v501;
      v553.val[1] = v502;
      v553.val[2] = v503;
      v553.val[3].i64[0] = v494.i64[0];
      v553.val[3].i64[1] = v519.i64[1];
      v196 = vqtbl4q_s8(v553, xmmword_29D2F10C0);
      v197 = vsubq_s16(v501, vqtbl4q_s8(v553, xmmword_29D2F1170));
      v198 = vsubq_s16(v502, vqtbl4q_s8(v553, xmmword_29D2F1120));
      v199 = vsubq_s16(v503, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v200.i64[0] = v185.i64[0];
      v200.i64[1] = v184.i64[0];
      v184.i64[0] = v185.i64[1];
      v201 = vsubq_s16(v494, v196);
      v468 = v184;
      v479 = vsubq_s16(v518, v183);
      v202 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v184, v491), v479), v200), xmmword_29D2F1150);
      v203 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v184, v491), v479), v200), xmmword_29D2F1150);
      v204 = vpmaxq_s16(v202, v202);
      v205 = vpminq_s16(v203, v203);
      v196.i64[0] = 0x8000800080008000;
      v196.i64[1] = 0x8000800080008000;
      v206 = vmaxq_s16(v204, v196);
      v207.i64[0] = 0x8000800080008000;
      v207.i64[1] = 0x8000800080008000;
      v208 = vminq_s16(v205, v207);
      v209 = vzip1q_s16(v204, v205);
      v210.i64[0] = 0x10001000100010;
      v210.i64[1] = 0x10001000100010;
      v211 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v209)), vceqzq_s16(v209));
      v212 = vpmaxq_s16(v211, v211);
      v485 = v187;
      v487 = v186;
      v481 = v191;
      v483 = v188;
      v213 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v186, v187), v188), v191), xmmword_29D2F1150);
      v214 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v186, v187), v188), v191), xmmword_29D2F1150);
      v215 = vpmaxq_s16(v213, v213);
      v216 = vpminq_s16(v214, v214);
      v217 = vmaxq_s16(v206, v215);
      v218 = vminq_s16(v208, v216);
      v219 = vzip1q_s16(v215, v216);
      v220 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v219)), vceqzq_s16(v219));
      v221 = vpmaxq_s16(v220, v220);
      v222 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v489, v193), v194), v195);
      v476 = v194;
      v477 = v193;
      v553.val[0] = v195;
      v223 = v197;
      v474 = v553.val[0];
      v224 = vqtbl1q_s8(v222, xmmword_29D2F1150);
      v225 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v489, v193), v194), v553.val[0]), xmmword_29D2F1150);
      v226 = vpmaxq_s16(v224, v224);
      v227 = vpminq_s16(v225, v225);
      v228 = vmaxq_s16(v217, v226);
      v229 = vminq_s16(v218, v227);
      v230 = vzip1q_s16(v226, v227);
      v231 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v230)), vceqzq_s16(v230));
      v232 = vpmaxq_s16(v231, v231);
      v466 = v198;
      v233 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v197, v198), v199), v201), xmmword_29D2F1150);
      v553.val[0] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v197, v198), v199), v201), xmmword_29D2F1150);
      v234 = vpmaxq_s16(v233, v233);
      v553.val[0] = vpminq_s16(v553.val[0], v553.val[0]);
      v235 = vmaxq_s16(v228, v234);
      v553.val[1] = vminq_s16(v229, v553.val[0]);
      v236 = vzip1q_s16(v234, v553.val[0]);
      v237 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v239 = vmaxq_s16(vmaxq_s16(v212, v221), vmaxq_s16(v232, v238));
      v475 = v553.val[1];
      v240 = vclzq_s16(vsubq_s16(v235, v553.val[1]));
      v241 = vsubq_s16(v210, v240);
      v242 = vcgtq_s16(v239, v241);
      v243 = vminq_s16(v241, v239);
      v239.i64[0] = 0x3000300030003;
      v239.i64[1] = 0x3000300030003;
      v244 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v212), v239), 0);
      v245 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v221), v239), 0);
      v246 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v232), v239), 0);
      v247 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v238), v239), 0);
      v248 = vsubq_s16(v243, v244);
      v553.val[2] = vsubq_s16(v243, v247);
      v249 = vceqq_s16(vaddq_s16(v247, v246), vnegq_s16(vaddq_s16(v244, v245)));
      v244.i64[0] = 0x4000400040004;
      v244.i64[1] = 0x4000400040004;
      v250 = vbicq_s8(v244, v249);
      v241.i64[0] = 0x7000700070007;
      v241.i64[1] = 0x7000700070007;
      v472 = vsubq_s16(v243, v246);
      v473 = vsubq_s16(v243, v245);
      v470 = v553.val[2];
      v251 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v243, v242), v248, v241), vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v473), v553.val[2]), 3uLL)), vaddq_s16(v250, v250));
      v176 = v544;
      v175 = v545;
      v252.i64[0] = 0x2000200020002;
      v252.i64[1] = 0x2000200020002;
      v253 = vandq_s8(vceqq_s16(vandq_s8(v544, v239), v252), v210);
      v210.i64[0] = 0x8000800080008;
      v210.i64[1] = 0x8000800080008;
      v553.val[0] = vandq_s8(vaddq_s16(v176, v176), v210);
      v553.val[1] = vceqzq_s16(vandq_s8(v544, v210));
      v166 = v549;
      v167 = v548;
      v254 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v549, v553.val[1]), v553.val[0]), v253), v545, v241);
      v164 = v546;
      v165 = v547;
      v255 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v254, vshlq_n_s16(vaddq_s16(vaddq_s16(v547, v546), v548), 3uLL)), v251).i64[0], 0);
      v168 = v531;
      v497 = v532;
      v506 = v533;
      v509 = v534;
      v512 = v535;
      v515 = v536;
      v172 = v540;
      v173 = v541;
      v177 = v523;
      v178 = v525;
      v180 = v527;
      v179 = v529;
      if (vaddvq_s16(v255))
      {
        v256.i64[0] = 0x9000900090009;
        v256.i64[1] = 0x9000900090009;
        v257 = vorrq_s8(vandq_s8(vceqzq_s16(v243), v252), vsubq_s16(vandq_s8(v242, v256), vmvnq_s8(v242)));
        v256.i64[0] = -1;
        v256.i64[1] = -1;
        v258 = vorrq_s8(v257, v250);
        v257.i64[0] = 0xF000F000F000FLL;
        v257.i64[1] = 0xF000F000F000FLL;
        v177 = vbslq_s8(v255, v468, v523);
        v178 = vbslq_s8(v255, v491, v525);
        v180 = vbslq_s8(v255, v479, v527);
        v179 = vbslq_s8(v255, v200, v529);
        v168 = vbslq_s8(v255, v487, v531);
        v497 = vbslq_s8(v255, v485, v532);
        v506 = vbslq_s8(v255, v483, v533);
        v509 = vbslq_s8(v255, v481, v534);
        v512 = vbslq_s8(v255, v489, v535);
        v515 = vbslq_s8(v255, v477, v536);
        v492 = vbslq_s8(v255, v476, v537);
        v259 = vbslq_s8(v255, v223, v539);
        v172 = vbslq_s8(v255, v466, v540);
        v173 = vbslq_s8(v255, v199, v541);
        v174 = vbslq_s8(v255, v201, v542);
        v175 = vbslq_s8(v255, v248, v545);
        v164 = vbslq_s8(v255, v473, v546);
        v165 = vbslq_s8(v255, v472, v547);
        v167 = vbslq_s8(v255, v470, v548);
        v166 = vbslq_s8(v255, v243, v549);
        v176 = vbslq_s8(v255, v258, v544);
        v543 = vbslq_s8(v255, vextq_s8(v519, v519, 8uLL), v543);
        v550 = vbslq_s8(v255, v475, v550);
        v551 = vbslq_s8(v255, v235, v551);
        v552 = vbslq_s8(v255, vandq_s8(vsubq_s16(vshlq_s16(v256, vsubq_s16(v257, v240)), v475), v242), v552);
        v531 = v168;
        v546 = v164;
        v547 = v165;
        v548 = v167;
        v549 = v166;
        v545 = v175;
        v544 = v176;
        v160 = v516;
        v161 = v517;
        v162 = v518;
        v163 = v519;
        v157 = v520;
        v158 = v521;
        v159 = v522;
        v171 = v259;
        v169 = vbslq_s8(v255, v474, v538);
        v170 = v492;
      }

      else
      {
        v160 = v516;
        v161 = v517;
        v162 = v518;
        v163 = v519;
        v157 = v520;
        v158 = v521;
        v159 = v522;
        v174 = v542;
        v171 = v539;
        v169 = v538;
        v170 = v537;
      }
    }

    v260 = vandq_s8(v552, vceqq_s16(v166, v175));
    v524 = vaddq_s16(v260, v177);
    v526 = vaddq_s16(v178, v260);
    v528 = vaddq_s16(v180, v260);
    v530 = vaddq_s16(v179, v260);
    v261 = vandq_s8(v552, vceqq_s16(v166, v164));
    v531 = vaddq_s16(v168, v261);
    v532 = vaddq_s16(v497, v261);
    v533 = vaddq_s16(v506, v261);
    v534 = vaddq_s16(v509, v261);
    v262 = vandq_s8(v552, vceqq_s16(v166, v165));
    v535 = vaddq_s16(v512, v262);
    v536 = vaddq_s16(v515, v262);
    v537 = vaddq_s16(v170, v262);
    v538 = vaddq_s16(v169, v262);
    v263 = vandq_s8(v552, vceqq_s16(v166, v167));
    v539 = vaddq_s16(v171, v263);
    v540 = vaddq_s16(v172, v263);
    v541 = vaddq_s16(v173, v263);
    v542 = vaddq_s16(v174, v263);
    v263.i64[0] = 0x8000800080008;
    v263.i64[1] = 0x8000800080008;
    v264.i64[0] = 0x3000300030003;
    v264.i64[1] = 0x3000300030003;
    v265.i64[0] = 0x2000200020002;
    v265.i64[1] = 0x2000200020002;
    v266 = vceqq_s16(vandq_s8(v176, v264), v265);
    v265.i64[0] = 0x10001000100010;
    v265.i64[1] = 0x10001000100010;
    v267 = vandq_s8(v266, v265);
    v265.i64[0] = 0x7000700070007;
    v265.i64[1] = 0x7000700070007;
    v268 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v165, v164), v167), 3uLL), v175, v265), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v176, v176), v263), vbicq_s8(v166, vceqzq_s16(vandq_s8(v176, v263)))), v267));
    v269 = vpaddq_s16(v268, v268);
    if ((vpaddq_s16(v269, v269).i16[0] + 107) > 0x7FF)
    {
      *a1 = v160;
      *(a1 + 16) = v161;
      *(a1 + 32) = v162;
      *(a1 + 48) = v163;
      *(a1 + 64) = v498;
      *(a1 + 80) = v499;
      *(a1 + 96) = v500;
      *(a1 + 112) = v493;
      *(a1 + 128) = v157;
      *(a1 + 144) = v158;
      *(a1 + 160) = v159;
      *(a1 + 176) = v495;
      v273 = (a1 + 192);
      v181 = -1;
      result = 256;
      *v273 = v501;
      v273[1] = v502;
      v273[2] = v503;
      v273[3] = v494;
    }

    else
    {
      v270 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v271 = 8 * (a1 & 7);
      if (v271)
      {
        v272 = *v270 & ~(-1 << v271);
      }

      else
      {
        v272 = 0;
      }

      *a2 = 0;
      v274 = v543.i64[0];
      v275.i32[0] = v166.u16[0];
      v275.i32[1] = v166.u16[1];
      v276 = vceqz_s32(vand_s8(v275, 0xFFFF0000FFFFLL));
      v277.i64[0] = v276.i32[0];
      v277.i64[1] = v276.i32[1];
      v278 = v277;
      v279.i64[0] = -1;
      v279.i64[1] = -1;
      v280 = vand_s8(vadd_s32(v275, -1), 0xF0000000FLL);
      v277.i64[0] = v280.u32[0];
      v277.i64[1] = v280.u32[1];
      v281 = vbicq_s8(vshlq_u64(v277, xmmword_29D2F1190), v278);
      if (v166.i16[2])
      {
        v282 = (v166.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v282 = 0;
      }

      if (v166.i16[3])
      {
        v283 = ((v166.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v283 = 0;
      }

      v284 = vorrq_s8(vdupq_laneq_s64(v281, 1), v281).u64[0] | v282 | v283 | ((v176.i8[6] & 0x1F) << 15) | v176.i8[0] & 0x1F | (32 * (v176.i8[2] & 0x1F)) & 0x83FF | ((v176.i8[4] & 0x1F) << 10);
      v285 = v272 | (v284 << v271);
      if (v271 >= 0x1C)
      {
        *v270 = v285;
        v285 = v284 >> (-8 * (a1 & 7u));
      }

      v286 = v274 | (WORD1(v274) << 16) | (WORD2(v274) << 32) | (HIWORD(v274) << 48);
      v287 = (v271 + 36) & 0x3C;
      *(v270 + (((v271 + 36) >> 3) & 8)) = v285 | (v286 << v287);
      v288 = v271 + 100;
      v289 = vsubq_s16(v549, v545);
      v290 = vsubq_s16(v549, v546);
      v291 = vsubq_s16(v549, v547);
      v292 = vsubq_s16(v549, v548);
      *v289.i8 = vqmovn_u16(v289);
      *v290.i8 = vqmovn_u16(v290);
      *v291.i8 = vqmovn_u16(v291);
      *v292.i8 = vqmovn_u16(v292);
      v293 = vtrn1q_s8(v289, v290);
      v294 = vtrn2q_s8(v289, v290);
      v295 = vtrn1q_s8(v291, v292);
      v296 = vtrn2q_s8(v291, v292);
      v297 = vzip1q_s16(v294, v296);
      v298 = vtrn2q_s16(v294, v296);
      v294.i64[0] = vzip1q_s32(vzip1q_s16(v293, v295), v297).u64[0];
      v298.i64[0] = vzip1q_s32(vtrn2q_s16(v293, v295), v298).u64[0];
      v291.i64[0] = 0x202020202020202;
      v291.i64[1] = 0x202020202020202;
      v299 = vandq_s8(vmovl_s16(vtst_s16(*v544.i8, 0x4000400040004)), v291);
      v291.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v291.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v300 = vshlq_u8(v279, vorrq_s8(v299, v291));
      v301 = vmovl_u8(vand_s8(*v300.i8, *v294.i8));
      v302 = vmovl_u8(vand_s8(*&vextq_s8(v300, v300, 8uLL), *v298.i8));
      v303 = vmovl_u8(*v299.i8);
      v304 = vmovl_high_u8(v299);
      v305 = vpaddq_s16(vshlq_u16(v301, vtrn1q_s16(0, v303)), vshlq_u16(v302, vtrn1q_s16(0, v304)));
      v306 = vpaddq_s16(v303, v304);
      v307 = vmovl_u16(*v306.i8);
      v308 = vmovl_high_u16(v306);
      v309 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v307)), vshlq_u32(vmovl_high_u16(v305), vtrn1q_s32(0, v308)));
      v310 = vpaddq_s32(v307, v308);
      v311.i64[0] = v309.u32[0];
      v311.i64[1] = v309.u32[1];
      v312 = v311;
      v311.i64[0] = v309.u32[2];
      v311.i64[1] = v309.u32[3];
      v313 = v311;
      v311.i64[0] = v310.u32[0];
      v311.i64[1] = v310.u32[1];
      v314 = v311;
      v311.i64[0] = v310.u32[2];
      v311.i64[1] = v310.u32[3];
      v315 = vpaddq_s64(vshlq_u64(v312, vzip1q_s64(0, v314)), vshlq_u64(v313, vzip1q_s64(0, v311)));
      v316 = vpaddq_s64(v314, v311);
      v317 = (v271 + 100) & 0x3C;
      v318 = (v315.i64[0] << v317) | (v286 >> -v287);
      if ((v316.i64[0] + v317) >= 0x40)
      {
        *(v270 + ((v288 >> 3) & 0x18)) = v318;
        v318 = v315.i64[0] >> -v317;
      }

      v319 = v316.i64[0] + v288;
      v320 = v318 | (v315.i64[1] << v319);
      if ((v319 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v270 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v315.i64[1] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = v319 + v316.i64[1];
      v322.i64[0] = 0x8000800080008;
      v322.i64[1] = 0x8000800080008;
      v323.i64[0] = -1;
      v323.i64[1] = -1;
      v324 = vandq_s8(vextq_s8(vtstq_s16(v544, v322), 0, 8uLL), v549);
      v325.i64[0] = 0xF000F000F000FLL;
      v325.i64[1] = 0xF000F000F000FLL;
      v326 = vandq_s8(vshlq_u16(v323, vaddq_s16(v324, v325)), v552);
      v327 = vmovl_u16(*v324.i8);
      v328 = vpaddq_s32(vshlq_u32(vmovl_u16(*v326.i8), vtrn1q_s32(0, v327)), vmovl_high_u16(v326));
      v329 = vpaddq_s32(v327, vmovl_high_u16(v324));
      v330.i64[0] = v328.u32[0];
      v330.i64[1] = v328.u32[1];
      v331 = v330;
      v330.i64[0] = v328.u32[2];
      v330.i64[1] = v328.u32[3];
      v332 = v330;
      v330.i64[0] = v329.u32[0];
      v330.i64[1] = v329.u32[1];
      v333 = v330;
      v330.i64[0] = v329.u32[2];
      v330.i64[1] = v329.u32[3];
      v334 = vpaddq_s64(vshlq_u64(v331, vzip1q_s64(0, v333)), vshlq_u64(v332, vzip1q_s64(0, v330)));
      v335 = vpaddq_s64(v333, v330);
      v336 = (v334.i64[0] << v321) | v320;
      if (v335.i64[0] + (v321 & 0x3F) >= 0x40)
      {
        *(v270 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v334.i64[0] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335.i64[0] + v321;
      v338 = v336 | (v334.i64[1] << v337);
      if ((v337 & 0x3F) + v335.i64[1] >= 0x40)
      {
        *(v270 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v334.i64[1] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = v337 + v335.i64[1];
      v340 = vextq_s8(0, v545, 8uLL);
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
      v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v340, v341)), v524);
      v344 = vmovl_u16(*v340.i8);
      v345 = vmovl_high_u16(v340);
      v346 = vpaddq_s32(vmovl_u16(*v343.i8), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
      v347 = vpaddq_s32(v344, v345);
      v348.i64[0] = v346.u32[0];
      v348.i64[1] = v346.u32[1];
      v349 = v348;
      v348.i64[0] = v346.u32[2];
      v348.i64[1] = v346.u32[3];
      v350 = v348;
      v348.i64[0] = v347.u32[0];
      v348.i64[1] = v347.u32[1];
      v351 = v348;
      v348.i64[0] = v347.u32[2];
      v348.i64[1] = v347.u32[3];
      v352 = vpaddq_s64(vshlq_u64(v349, vzip1q_s64(0, v351)), vshlq_u64(v350, vzip1q_s64(0, v348)));
      v353 = vpaddq_s64(v351, v348);
      v354 = (v352.i64[0] << v339) | v338;
      if (v353.i64[0] + (v339 & 0x3F) >= 0x40)
      {
        *(v270 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v352.i64[0] >> -(v339 & 0x3F);
        if ((v339 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353.i64[0] + v339;
      v356 = v354 | (v352.i64[1] << v355);
      if ((v355 & 0x3F) + v353.i64[1] >= 0x40)
      {
        *(v270 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        v356 = v352.i64[1] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v356 = 0;
        }
      }

      v357 = v355 + v353.i64[1];
      v358.i64[0] = 0xF000F000F000FLL;
      v358.i64[1] = 0xF000F000F000FLL;
      v359.i64[0] = -1;
      v359.i64[1] = -1;
      v360 = vandq_s8(vshlq_u16(v359, vaddq_s16(v545, v358)), v526);
      v361 = vmovl_u16(*v545.i8);
      v362 = vmovl_high_u16(v545);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v360.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v360), vtrn1q_s32(0, v362)));
      v364 = vpaddq_s32(v361, v362);
      v365.i64[0] = v363.u32[0];
      v365.i64[1] = v363.u32[1];
      v366 = v365;
      v365.i64[0] = v363.u32[2];
      v365.i64[1] = v363.u32[3];
      v367 = v365;
      v365.i64[0] = v364.u32[0];
      v365.i64[1] = v364.u32[1];
      v368 = v365;
      v365.i64[0] = v364.u32[2];
      v365.i64[1] = v364.u32[3];
      v369 = vpaddq_s64(vshlq_u64(v366, vzip1q_s64(0, v368)), vshlq_u64(v367, vzip1q_s64(0, v365)));
      v370 = vpaddq_s64(v368, v365);
      v371 = (v369.i64[0] << v357) | v356;
      if (v370.i64[0] + (v357 & 0x3F) >= 0x40)
      {
        *(v270 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        v371 = v369.i64[0] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v357;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v270 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      v375.i64[0] = 0xF000F000F000FLL;
      v375.i64[1] = 0xF000F000F000FLL;
      v376.i64[0] = -1;
      v376.i64[1] = -1;
      v377 = vandq_s8(vshlq_u16(v376, vaddq_s16(v545, v375)), v528);
      v378 = vmovl_u16(*v545.i8);
      v379 = vmovl_high_u16(v545);
      v380 = vpaddq_s32(vshlq_u32(vmovl_u16(*v377.i8), vtrn1q_s32(0, v378)), vshlq_u32(vmovl_high_u16(v377), vtrn1q_s32(0, v379)));
      v381 = vpaddq_s32(v378, v379);
      v382.i64[0] = v380.u32[0];
      v382.i64[1] = v380.u32[1];
      v383 = v382;
      v382.i64[0] = v380.u32[2];
      v382.i64[1] = v380.u32[3];
      v384 = v382;
      v382.i64[0] = v381.u32[0];
      v382.i64[1] = v381.u32[1];
      v385 = v382;
      v382.i64[0] = v381.u32[2];
      v382.i64[1] = v381.u32[3];
      v386 = vpaddq_s64(vshlq_u64(v383, vzip1q_s64(0, v385)), vshlq_u64(v384, vzip1q_s64(0, v382)));
      v387 = vpaddq_s64(v385, v382);
      v388 = (v386.i64[0] << v374) | v373;
      if (v387.i64[0] + (v374 & 0x3F) >= 0x40)
      {
        *(v270 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v386.i64[0] >> -(v374 & 0x3F);
        if ((v374 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = v387.i64[0] + v374;
      v390 = v388 | (v386.i64[1] << v389);
      if ((v389 & 0x3F) + v387.i64[1] >= 0x40)
      {
        *(v270 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
        v390 = v386.i64[1] >> -(v389 & 0x3F);
        if ((v389 & 0x3F) == 0)
        {
          v390 = 0;
        }
      }

      v391 = v389 + v387.i64[1];
      v392.i64[0] = 0xF000F000F000FLL;
      v392.i64[1] = 0xF000F000F000FLL;
      v393.i64[0] = -1;
      v393.i64[1] = -1;
      v394 = vandq_s8(vshlq_u16(v393, vaddq_s16(v545, v392)), v530);
      v395 = vmovl_u16(*v545.i8);
      v396 = vmovl_high_u16(v545);
      v397 = vpaddq_s32(vshlq_u32(vmovl_u16(*v394.i8), vtrn1q_s32(0, v395)), vshlq_u32(vmovl_high_u16(v394), vtrn1q_s32(0, v396)));
      v398 = vpaddq_s32(v395, v396);
      v399.i64[0] = v397.u32[0];
      v399.i64[1] = v397.u32[1];
      v400 = v399;
      v399.i64[0] = v397.u32[2];
      v399.i64[1] = v397.u32[3];
      v401 = v399;
      v399.i64[0] = v398.u32[0];
      v399.i64[1] = v398.u32[1];
      v402 = v399;
      v399.i64[0] = v398.u32[2];
      v399.i64[1] = v398.u32[3];
      v403 = vpaddq_s64(vshlq_u64(v400, vzip1q_s64(0, v402)), vshlq_u64(v401, vzip1q_s64(0, v399)));
      v404 = vpaddq_s64(v402, v399);
      v405 = (v403.i64[0] << v391) | v390;
      if (v404.i64[0] + (v391 & 0x3F) >= 0x40)
      {
        *(v270 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
        v405 = v403.i64[0] >> -(v391 & 0x3F);
        if ((v391 & 0x3F) == 0)
        {
          v405 = 0;
        }
      }

      v406 = v404.i64[1];
      v407 = v404.i64[0] + v391;
      v408 = (v404.i64[0] + v391) & 0x3F;
      v409 = v405 | (v403.i64[1] << v407);
      if ((v408 + v404.i64[1]) >= 0x40)
      {
        *(v270 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
        v409 = v403.i64[1] >> -v408;
        if (!v408)
        {
          v409 = 0;
        }
      }

      v410 = 0;
      v411.i64[0] = 0xF000F000F000FLL;
      v411.i64[1] = 0xF000F000F000FLL;
      v412.i64[0] = -1;
      v412.i64[1] = -1;
      v413 = v407 + v406;
      do
      {
        v414 = vandq_s8(vshlq_u16(v412, vaddq_s16(v546, v411)), *(&v531 + v410));
        v415 = vmovl_u16(*v546.i8);
        v416 = vmovl_high_u16(v546);
        v417 = vpaddq_s32(vshlq_u32(vmovl_u16(*v414.i8), vtrn1q_s32(0, v415)), vshlq_u32(vmovl_high_u16(v414), vtrn1q_s32(0, v416)));
        v418 = vpaddq_s32(v415, v416);
        v419.i64[0] = v417.u32[0];
        v419.i64[1] = v417.u32[1];
        v420 = v419;
        v419.i64[0] = v417.u32[2];
        v419.i64[1] = v417.u32[3];
        v421 = v419;
        v419.i64[0] = v418.u32[0];
        v419.i64[1] = v418.u32[1];
        v422 = v419;
        v419.i64[0] = v418.u32[2];
        v419.i64[1] = v418.u32[3];
        v423 = vpaddq_s64(vshlq_u64(v420, vzip1q_s64(0, v422)), vshlq_u64(v421, vzip1q_s64(0, v419)));
        v424 = vpaddq_s64(v422, v419);
        v425 = (v423.i64[0] << v413) | v409;
        if (v424.i64[0] + (v413 & 0x3F) >= 0x40)
        {
          *(v270 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v423.i64[0] >> -(v413 & 0x3F);
          if ((v413 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v426 = v424.i64[0] + v413;
        v409 = v425 | (v423.i64[1] << v426);
        if ((v426 & 0x3F) + v424.i64[1] >= 0x40)
        {
          *(v270 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v423.i64[1] >> -(v426 & 0x3F);
          if ((v426 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v413 = v426 + v424.i64[1];
        v410 += 16;
      }

      while (v410 != 64);
      v427 = 0;
      v428.i64[0] = 0xF000F000F000FLL;
      v428.i64[1] = 0xF000F000F000FLL;
      v429.i64[0] = -1;
      v429.i64[1] = -1;
      do
      {
        v430 = vandq_s8(vshlq_u16(v429, vaddq_s16(v547, v428)), *(&v535 + v427));
        v431 = vmovl_u16(*v547.i8);
        v432 = vmovl_high_u16(v547);
        v433 = vpaddq_s32(vshlq_u32(vmovl_u16(*v430.i8), vtrn1q_s32(0, v431)), vshlq_u32(vmovl_high_u16(v430), vtrn1q_s32(0, v432)));
        v434 = vpaddq_s32(v431, v432);
        v435.i64[0] = v433.u32[0];
        v435.i64[1] = v433.u32[1];
        v436 = v435;
        v435.i64[0] = v433.u32[2];
        v435.i64[1] = v433.u32[3];
        v437 = v435;
        v435.i64[0] = v434.u32[0];
        v435.i64[1] = v434.u32[1];
        v438 = v435;
        v435.i64[0] = v434.u32[2];
        v435.i64[1] = v434.u32[3];
        v439 = vpaddq_s64(vshlq_u64(v436, vzip1q_s64(0, v438)), vshlq_u64(v437, vzip1q_s64(0, v435)));
        v440 = vpaddq_s64(v438, v435);
        v441 = (v439.i64[0] << v413) | v409;
        if (v440.i64[0] + (v413 & 0x3F) >= 0x40)
        {
          *(v270 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v439.i64[0] >> -(v413 & 0x3F);
          if ((v413 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v442 = v440.i64[0] + v413;
        v409 = v441 | (v439.i64[1] << v442);
        if ((v442 & 0x3F) + v440.i64[1] >= 0x40)
        {
          *(v270 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v439.i64[1] >> -(v442 & 0x3F);
          if ((v442 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v413 = v442 + v440.i64[1];
        v427 += 16;
      }

      while (v427 != 64);
      v443 = 0;
      v444.i64[0] = 0xF000F000F000FLL;
      v444.i64[1] = 0xF000F000F000FLL;
      v445.i64[0] = -1;
      v445.i64[1] = -1;
      do
      {
        v446 = vandq_s8(vshlq_u16(v445, vaddq_s16(v548, v444)), *(&v539 + v443));
        v447 = vmovl_u16(*v548.i8);
        v448 = vmovl_high_u16(v548);
        v449 = vpaddq_s32(vshlq_u32(vmovl_u16(*v446.i8), vtrn1q_s32(0, v447)), vshlq_u32(vmovl_high_u16(v446), vtrn1q_s32(0, v448)));
        v450 = vpaddq_s32(v447, v448);
        v451.i64[0] = v449.u32[0];
        v451.i64[1] = v449.u32[1];
        v452 = v451;
        v451.i64[0] = v449.u32[2];
        v451.i64[1] = v449.u32[3];
        v453 = v451;
        v451.i64[0] = v450.u32[0];
        v451.i64[1] = v450.u32[1];
        v454 = v451;
        v451.i64[0] = v450.u32[2];
        v451.i64[1] = v450.u32[3];
        v455 = vpaddq_s64(vshlq_u64(v452, vzip1q_s64(0, v454)), vshlq_u64(v453, vzip1q_s64(0, v451)));
        v456 = vpaddq_s64(v454, v451);
        v457 = (v455.i64[0] << v413) | v409;
        if (v456.i64[0] + (v413 & 0x3F) >= 0x40)
        {
          *(v270 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
          v457 = v455.i64[0] >> -(v413 & 0x3F);
          if ((v413 & 0x3F) == 0)
          {
            v457 = 0;
          }
        }

        v458 = v456.i64[0] + v413;
        v409 = v457 | (v455.i64[1] << v458);
        if ((v458 & 0x3F) + v456.i64[1] >= 0x40)
        {
          *(v270 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v455.i64[1] >> -(v458 & 0x3F);
          if ((v458 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v413 = v458 + v456.i64[1];
        v443 += 16;
      }

      while (v443 != 64);
      if ((v413 & 0x3F) != 0)
      {
        *(v270 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
      }

      result = (v413 - v271 + 7) >> 3;
      v181 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i64[0];
    v181 = 7;
    result = 8;
  }

  *a2 = v181;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = 4 * a2;
  v13 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
    v9 += result;
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 5)
  {
    if (v13 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v16 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
    v9 += result;
    v21 = v6 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 12;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
  v24 = v6 - 12;
LABEL_47:
  if (v6 >= 0xD)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 += result;
    if (v7 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 9)
  {
    if (v21 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 64), a2, v28, v27);
    v9 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 0xD)
  {
    goto LABEL_76;
  }

  if (v24 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 64), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x1D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x800;
  v8.i16[0] = v6;
  v8.i16[1] = v6 >> 5;
  v8.i16[2] = v6 >> 10;
  v8.i16[3] = v6 >> 15;
  v9 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v10 = v4 + 100;
  v11 = vand_s8(v8, 0x1F001F001F001FLL);
  *v12.i8 = v11;
  v12.u64[1] = v11;
  v13.i16[0] = v9.i16[0];
  v13.i16[1] = v9.i16[2];
  v13.i16[2] = v6 >> 28;
  v13.i16[3] = BYTE4(v6) & 0xF;
  v13.i16[4] = v9.i16[0];
  v13.i16[5] = v9.i16[2];
  v13.i32[3] = v13.i32[1];
  v14.i64[0] = 0x1000100010001;
  v14.i64[1] = 0x1000100010001;
  v15 = vaddq_s16(v13, v14);
  v14.i64[0] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v14.i64[1] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v16.i64[0] = 0x3000300030003;
  v16.i64[1] = 0x3000300030003;
  v408 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v406 = v47;
    v407 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v404 = v47;
    v405 = v47;
    v43 = v17;
  }

  else
  {
    v19 = vmovl_u8(*&vpaddq_s8(v18, v18));
    v20 = vmovl_u16(*&vpaddq_s16(v19, v19));
    v21 = vpaddq_s32(v20, v20).u64[0];
    v22.i64[0] = v21;
    v22.i64[1] = HIDWORD(v21);
    v23 = v22;
    v24 = vaddvq_s64(v22);
    v25 = v24 + v10;
    v26 = v24 <= 0x80 && v7 >= v25;
    v27 = !v26;
    v28 = 0uLL;
    if (v26)
    {
      v29 = v10 & 0x3C;
      v30 = vaddq_s64(vzip1q_s64(0, v23), vdupq_n_s64(v29));
      v31 = (v5 + ((v10 >> 3) & 0x18));
      v28 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v31, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v30)), vshlq_u64(vdupq_lane_s64(v31->i64[0], 0), vnegq_s64(v30)));
      if (v24 + v29 >= 0x81)
      {
        v28 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v31[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v30)), vshlq_u64(vdupq_laneq_s64(v31[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v30))), v28);
      }

      v10 = v25;
    }

    v32 = vzip1_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vshlq_u64(v28, vnegq_s64(v33));
    v35 = vuzp1q_s32(vzip1q_s64(v28, v34), vzip2q_s64(v28, v34));
    v36 = vshlq_u32(v35, vnegq_s32((*&v19 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v37 = vuzp1q_s16(vzip1q_s32(v35, v36), vzip2q_s32(v35, v36));
    v38 = vshlq_u16(v37, vnegq_s16((*&v18 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v39 = vuzp1q_s8(vzip1q_s16(v37, v38), vzip2q_s16(v37, v38));
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v38, v18);
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    v41 = vqtbl1q_s8(vandq_s8(vaddq_s8(v40, v38), v39), xmmword_29D2F0F70);
    *v39.i8 = vdup_lane_s32(*v41.i8, 0);
    *v38.i8 = vdup_lane_s32(*v41.i8, 1);
    v42 = vdupq_laneq_s32(v41, 2).u64[0];
    v41.i64[0] = vdupq_laneq_s32(v41, 3).u64[0];
    v43 = vsubw_s8(v17, *v39.i8);
    v44 = vsubw_s8(v17, *v38.i8);
    v45 = vsubw_s8(v17, v42);
    v46 = vsubw_s8(v17, *v41.i8);
    v406 = vmovl_s8(vceqz_s8(*v39.i8));
    v404 = vmovl_s8(vceqz_s8(*v38.i8));
    v405 = vmovl_s8(vceqz_s8(v42));
    v407 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v410 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v410, v410));
  v51 = vpaddq_s32(v50, v50).u64[0];
  v52.i64[0] = v51;
  v52.i64[1] = HIDWORD(v51);
  v53 = v52;
  v54 = vaddvq_s64(v52);
  v55 = v54 + v10;
  if (v54 <= 0x80 && v7 >= v55)
  {
    v57 = v10 & 0x3F;
    v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v57));
    v59 = (v5 + 8 * (v10 >> 6));
    v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
    if (v54 + v57 >= 0x81)
    {
      v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v49);
    }

    v10 = v55;
  }

  else
  {
    v27 = 1;
  }

  v60 = v11.i8[0] & 3;
  if (v60 == 2)
  {
    if (v7 < v10 + 8)
    {
      v27 = 1;
    }

    else
    {
      v10 += 8;
    }

    v61 = v7 < v10 + 8;
    if (v7 >= v10 + 8)
    {
      v10 += 8;
    }

    v27 |= v61;
  }

  v62 = 0uLL;
  v399 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v399, v399));
  v64 = vpaddq_s32(v63, v63).u64[0];
  v65.i64[0] = v64;
  v65.i64[1] = HIDWORD(v64);
  v66 = v65;
  v67 = vaddvq_s64(v65);
  v68 = v67 + v10;
  if (v67 <= 0x80 && v7 >= v68)
  {
    v71 = v10 & 0x3F;
    v72 = vaddq_s64(vzip1q_s64(0, v66), vdupq_n_s64(v71));
    v73 = (v5 + 8 * (v10 >> 6));
    v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
    if (v67 + v71 >= 0x81)
    {
      v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v70);
    }

    v10 = v68;
  }

  else
  {
    v27 = 1;
    v70 = 0uLL;
  }

  v400 = v43;
  v74 = vmovl_u16(*&vpaddq_s16(v43, v43));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v78 + v10;
  if (v78 <= 0x80 && v7 >= v79)
  {
    v81 = v10 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v81));
    v83 = (v5 + 8 * (v10 >> 6));
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v78 + v81 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v62);
    }

    v10 = v79;
  }

  else
  {
    v27 = 1;
  }

  v84 = v78 + v10;
  v85 = 0uLL;
  if (v78 <= 0x80 && v7 >= v84)
  {
    v88 = v10 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v88));
    v90 = (v5 + 8 * (v10 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v78 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v10 = v84;
  }

  else
  {
    v27 = 1;
    v87 = 0uLL;
  }

  v91 = v78 + v10;
  v92 = v78 <= 0x80 && v7 >= v91;
  v409 = v12;
  if (v92)
  {
    v93 = v10 & 0x3F;
    v94 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v93));
    v95 = (v5 + 8 * (v10 >> 6));
    v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v78 + v93 >= 0x81)
    {
      v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v85);
    }

    v10 = v91;
  }

  else
  {
    v27 = 1;
  }

  v96 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v97 = vpaddq_s32(v96, v96).u64[0];
  v98.i64[0] = v97;
  v98.i64[1] = HIDWORD(v97);
  v99 = v98;
  v100 = vaddvq_s64(v98);
  v101 = v100 + v10;
  v102 = 0uLL;
  if (v100 <= 0x80 && v7 >= v101)
  {
    v105 = v10 & 0x3F;
    v106 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v105));
    v107 = (v5 + 8 * (v10 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v100 + v105 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
    }

    v10 = v101;
  }

  else
  {
    v27 = 1;
    v104 = 0uLL;
  }

  v108 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v108)
  {
    v110 = v10 & 0x3F;
    v111 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v110));
    v112 = (v5 + 8 * (v10 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v100 + v110 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v102);
    }

    v10 = v108;
  }

  else
  {
    v27 = 1;
  }

  v401 = v44;
  v113 = v100 + v10;
  v114 = 0uLL;
  if (v100 <= 0x80 && v7 >= v113)
  {
    v117 = v10 & 0x3F;
    v118 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v117));
    v119 = (v5 + 8 * (v10 >> 6));
    v116 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
    if (v100 + v117 >= 0x81)
    {
      v116 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v116);
    }

    v10 = v113;
  }

  else
  {
    v27 = 1;
    v116 = 0uLL;
  }

  v120 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v120)
  {
    v122 = v10 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v122));
    v124 = (v5 + 8 * (v10 >> 6));
    v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v100 + v122 >= 0x81)
    {
      v114 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v114);
    }

    v10 = v120;
  }

  else
  {
    v27 = 1;
  }

  v125 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v126 = vpaddq_s32(v125, v125).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v129 + v10;
  v131 = 0uLL;
  if (v129 <= 0x80 && v7 >= v130)
  {
    v134 = v10 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v134));
    v136 = (v5 + 8 * (v10 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v129 + v134 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v133);
    }

    v10 = v130;
  }

  else
  {
    v27 = 1;
    v133 = 0uLL;
  }

  v137 = v129 + v10;
  if (v129 <= 0x80 && v7 >= v137)
  {
    v139 = v10 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v139));
    v141 = (v5 + 8 * (v10 >> 6));
    v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v129 + v139 >= 0x81)
    {
      v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v131);
    }

    v10 = v137;
  }

  else
  {
    v27 = 1;
  }

  v402 = v45;
  v142 = v129 + v10;
  v143 = 0uLL;
  if (v129 <= 0x80 && v7 >= v142)
  {
    v146 = v10 & 0x3F;
    v147 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v146));
    v148 = (v5 + 8 * (v10 >> 6));
    v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v129 + v146 >= 0x81)
    {
      v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v145);
    }

    v10 = v142;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v27 = 1;
    v145 = 0uLL;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  v149 = v129 + v10;
  if (v7 < v129 + v10)
  {
LABEL_124:
    v149 = v10;
    v27 = 1;
    goto LABEL_125;
  }

  v150 = v10 & 0x3F;
  v151 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v150));
  v152 = (v5 + 8 * (v10 >> 6));
  v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v129 + v150 >= 0x81)
  {
    v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v143);
  }

LABEL_125:
  v403 = v46;
  v153 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v154 = vpaddq_s32(v153, v153).u64[0];
  v155.i64[0] = v154;
  v155.i64[1] = HIDWORD(v154);
  v156 = v155;
  v157 = vaddvq_s64(v155);
  v158 = v157;
  v159 = 0uLL;
  if (v157 > 0x80 || (v160 = v157 + v149, v7 < v157 + v149))
  {
    v160 = v149;
    v27 = 1;
    v163 = 0uLL;
  }

  else
  {
    v161 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v149 & 0x3F));
    v162 = (v5 + 8 * (v149 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v158 + (v149 & 0x3F) >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
    }
  }

  if (v158 > 0x80 || (v164 = v158 + v160, v7 < v158 + v160))
  {
    v164 = v160;
    v27 = 1;
  }

  else
  {
    v165 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v160 & 0x3F));
    v166 = (v5 + 8 * (v160 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v158 + (v160 & 0x3F) >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v159);
    }
  }

  if (v158 > 0x80 || (v167 = v158 + v164, v7 < v158 + v164))
  {
    v167 = v164;
    v27 = 1;
    v171 = 0uLL;
  }

  else
  {
    v168 = v164 & 0x3F;
    v169 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v168));
    v170 = (v5 + 8 * (v164 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v158 + v168 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
    }
  }

  if (v158 > 0x80)
  {
    goto LABEL_149;
  }

  v172 = v158 + v167;
  if (v7 < v158 + v167)
  {
    goto LABEL_149;
  }

  v173 = v167 & 0x3F;
  v174 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v173));
  v175 = (v5 + 8 * (v167 >> 6));
  v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v175, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v175->i64[0], 0), vnegq_s64(v174)));
  if (v158 + v173 >= 0x81)
  {
    v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v175[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v175[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
  }

  if ((v27 & 1) != 0 || (v177 = a4 + 1, v7 + 8 * v177 - v172 - 2048 >= 9) || v60 == 2)
  {
LABEL_149:
    v177 = 0;
    *&v178 = 0xFFFFFFFF0000FFFFLL;
    *(&v178 + 1) = 0xFFFFFFFF0000FFFFLL;
    *a1 = v178;
    *(a1 + 16) = v178;
    v179 = (a1 + a2);
    *v179 = v178;
    v179[1] = v178;
    v180 = (a1 + 2 * a2);
    *v180 = v178;
    v180[1] = v178;
    v181 = (a1 + a2 + 2 * a2);
    *v181 = v178;
    v181[1] = v178;
  }

  else
  {
    v183 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v184 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v185 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v186 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
    v187 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v188 = vzip1_s32(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
    v189 = ((2 * *(v5 + (((v4 + 36) >> 3) & 8) + 8)) << ~(v4 + 36)) | (*(v5 + (((v4 + 36) >> 3) & 8)) >> (v4 + 36));
    v190.i64[0] = v183.u32[0];
    v190.i64[1] = v183.u32[1];
    v191 = vshlq_u64(v49, vnegq_s64(v190));
    v394 = vzip1q_s64(v49, v191);
    v396 = vzip2q_s64(v49, v191);
    v190.i64[0] = v184.u32[0];
    v190.i64[1] = v184.u32[1];
    v192 = vshlq_u64(v70, vnegq_s64(v190));
    v390 = vzip1q_s64(v70, v192);
    v392 = vzip2q_s64(v70, v192);
    v190.i64[0] = v185.u32[0];
    v190.i64[1] = v185.u32[1];
    v193 = vnegq_s64(v190);
    v194 = vshlq_u64(v62, v193);
    v386 = vzip1q_s64(v62, v194);
    v388 = vzip2q_s64(v62, v194);
    v195 = vshlq_u64(v87, v193);
    v384 = vzip2q_s64(v87, v195);
    v196 = vzip1q_s64(v87, v195);
    v197 = vshlq_u64(v85, v193);
    v198 = vzip2q_s64(v85, v197);
    v199 = vzip1q_s64(v85, v197);
    v190.i64[0] = v186.u32[0];
    v190.i64[1] = v186.u32[1];
    v200 = vnegq_s64(v190);
    v201 = vshlq_u64(v104, v200);
    v202 = vzip2q_s64(v104, v201);
    v203 = vzip1q_s64(v104, v201);
    v204 = vshlq_u64(v102, v200);
    v205 = vzip2q_s64(v102, v204);
    v206 = vzip1q_s64(v102, v204);
    v207 = vshlq_u64(v116, v200);
    v208 = vzip2q_s64(v116, v207);
    v209 = vzip1q_s64(v116, v207);
    v210 = vshlq_u64(v114, v200);
    v211 = vzip2q_s64(v114, v210);
    v212 = vzip1q_s64(v114, v210);
    v190.i64[0] = v187.u32[0];
    v190.i64[1] = v187.u32[1];
    v213 = vnegq_s64(v190);
    v214 = vshlq_u64(v133, v213);
    v215 = vzip2q_s64(v133, v214);
    v216 = vzip1q_s64(v133, v214);
    v217 = vshlq_u64(v131, v213);
    v218 = vzip2q_s64(v131, v217);
    v219 = vzip1q_s64(v131, v217);
    v220 = vshlq_u64(v145, v213);
    v221 = vzip2q_s64(v145, v220);
    v222 = vzip1q_s64(v145, v220);
    v223 = vshlq_u64(v143, v213);
    v224 = vzip2q_s64(v143, v223);
    v225 = vzip1q_s64(v143, v223);
    v190.i64[0] = v188.u32[0];
    v190.i64[1] = v188.u32[1];
    v398 = vnegq_s64(v190);
    v226 = vshlq_u64(v163, v398);
    v227 = vzip2q_s64(v163, v226);
    v228 = vzip1q_s64(v163, v226);
    v229 = vshlq_u64(v159, v398);
    v230 = vzip2q_s64(v159, v229);
    v231 = vzip1q_s64(v159, v229);
    v232 = vshlq_u64(v171, v398);
    v233 = vzip2q_s64(v171, v232);
    v234 = vzip1q_s64(v171, v232);
    v235 = vuzp1q_s32(v394, v396);
    v236 = vuzp1q_s32(v390, v392);
    v237 = vuzp1q_s32(v386, v388);
    v238 = vuzp1q_s32(v196, v384);
    v239 = vuzp1q_s32(v199, v198);
    v240 = vuzp1q_s32(v203, v202);
    v241 = vuzp1q_s32(v206, v205);
    v242 = vuzp1q_s32(v209, v208);
    v243 = vuzp1q_s32(v212, v211);
    v244 = vuzp1q_s32(v216, v215);
    v245 = vuzp1q_s32(v219, v218);
    v246 = vuzp1q_s32(v222, v221);
    v247 = vuzp1q_s32(v225, v224);
    v248 = vuzp1q_s32(v228, v227);
    v249 = vuzp1q_s32(v231, v230);
    v228.i64[0] = 0xFFFF0000FFFFLL;
    v228.i64[1] = 0xFFFF0000FFFFLL;
    v250 = vuzp1q_s32(v234, v233);
    v251 = vshlq_u32(v235, vnegq_s32(vandq_s8(v410, v228)));
    v395 = vzip1q_s32(v235, v251);
    v397 = vzip2q_s32(v235, v251);
    v233.i64[0] = 0xFFFF0000FFFFLL;
    v233.i64[1] = 0xFFFF0000FFFFLL;
    v252 = vshlq_u32(v236, vnegq_s32(vandq_s8(v399, v233)));
    v391 = vzip1q_s32(v236, v252);
    v393 = vzip2q_s32(v236, v252);
    v253 = vnegq_s32(vandq_s8(v400, v233));
    v254 = vshlq_u32(v237, v253);
    v387 = vzip1q_s32(v237, v254);
    v389 = vzip2q_s32(v237, v254);
    v255 = vshlq_u32(v238, v253);
    v383 = vzip1q_s32(v238, v255);
    v385 = vzip2q_s32(v238, v255);
    v256 = vshlq_u32(v239, v253);
    v381 = vzip1q_s32(v239, v256);
    v382 = vzip2q_s32(v239, v256);
    v215.i64[0] = 0xFFFF0000FFFFLL;
    v215.i64[1] = 0xFFFF0000FFFFLL;
    v257 = vnegq_s32(vandq_s8(v401, v215));
    v258 = vshlq_u32(v240, v257);
    v379 = vzip1q_s32(v240, v258);
    v380 = vzip2q_s32(v240, v258);
    v259 = vshlq_u32(v241, v257);
    v377 = vzip1q_s32(v241, v259);
    v378 = vzip2q_s32(v241, v259);
    v260 = vshlq_u32(v242, v257);
    v375 = vzip1q_s32(v242, v260);
    v376 = vzip2q_s32(v242, v260);
    v261 = vshlq_u32(v243, v257);
    v374 = vzip2q_s32(v243, v261);
    v262 = vzip1q_s32(v243, v261);
    v243.i64[0] = 0xFFFF0000FFFFLL;
    v243.i64[1] = 0xFFFF0000FFFFLL;
    v263 = vnegq_s32(vandq_s8(v402, v243));
    v264 = vshlq_u32(v244, v263);
    v265 = vzip2q_s32(v244, v264);
    v266 = vzip1q_s32(v244, v264);
    v267 = vshlq_u32(v245, v263);
    v268 = vzip2q_s32(v245, v267);
    v269 = vzip1q_s32(v245, v267);
    v270 = vshlq_u32(v246, v263);
    v271 = vzip2q_s32(v246, v270);
    v272 = vzip1q_s32(v246, v270);
    v273 = vshlq_u32(v247, v263);
    v274 = vzip2q_s32(v247, v273);
    v275 = vzip1q_s32(v247, v273);
    v247.i64[0] = 0xFFFF0000FFFFLL;
    v247.i64[1] = 0xFFFF0000FFFFLL;
    v276 = vnegq_s32(vandq_s8(v403, v247));
    v277 = vshlq_u32(v248, v276);
    v278 = vzip2q_s32(v248, v277);
    v279 = vzip1q_s32(v248, v277);
    v280 = vshlq_u32(v249, v276);
    v281 = vzip2q_s32(v249, v280);
    v282 = vzip1q_s32(v249, v280);
    *v251.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v189), xmmword_29D2F10A0));
    v280.i32[0] = v189;
    LOWORD(v189) = v251.i16[2];
    v280.i16[2] = v251.i16[0];
    v283 = vshlq_u32(v250, v276);
    v284 = vuzp1q_s16(v266, v265);
    v285 = vuzp1q_s16(v269, v268);
    v286 = vuzp1q_s16(v279, v278);
    v287 = vuzp1q_s16(v282, v281);
    v288 = vuzp1q_s16(vzip1q_s32(v250, v283), vzip2q_s32(v250, v283));
    v283.i64[0] = 0x10001000100010;
    v283.i64[1] = 0x10001000100010;
    v254.i64[0] = 0xF000F000F000FLL;
    v254.i64[1] = 0xF000F000F000FLL;
    v281.i64[0] = 0x10001000100010;
    v281.i64[1] = 0x10001000100010;
    v289 = vshlq_s16(vuzp1q_s16(v391, v393), vsubq_s16(v281, v399));
    v290 = vsubq_s16(v281, v400);
    v250.i64[0] = 0xF000F000F000FLL;
    v250.i64[1] = 0xF000F000F000FLL;
    v291 = vaddq_s16(v399, v250);
    v292 = vaddq_s16(v400, v250);
    v212.i64[0] = 0x10001000100010;
    v212.i64[1] = 0x10001000100010;
    v293 = vsubq_s16(v212, v401);
    v278.i64[0] = 0xF000F000F000FLL;
    v278.i64[1] = 0xF000F000F000FLL;
    v294 = vaddq_s16(v401, v278);
    v295 = vshlq_s16(vuzp1q_s16(v379, v380), v293);
    v296 = vshlq_s16(vuzp1q_s16(v377, v378), v293);
    v297 = vshlq_s16(vuzp1q_s16(v375, v376), v293);
    v298 = vshlq_s16(vuzp1q_s16(v262, v374), v293);
    v293.i64[0] = 0x10001000100010;
    v293.i64[1] = 0x10001000100010;
    v299 = vsubq_s16(v293, v402);
    v242.i64[0] = 0xF000F000F000FLL;
    v242.i64[1] = 0xF000F000F000FLL;
    v300 = vaddq_s16(v402, v242);
    v301 = vshlq_s16(v284, v299);
    v302 = vshlq_s16(v285, v299);
    v303 = vshlq_s16(vuzp1q_s16(v272, v271), v299);
    v304 = vshlq_s16(vuzp1q_s16(v275, v274), v299);
    v271.i64[0] = 0x10001000100010;
    v271.i64[1] = 0x10001000100010;
    v305 = vsubq_s16(v271, v403);
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v306 = vaddq_s16(v403, v237);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v395, v397), vsubq_s16(v283, v410)), vaddq_s16(v410, v254));
    v308 = vshlq_s16(v289, v291);
    v309 = vshlq_s16(vshlq_s16(vuzp1q_s16(v387, v389), v290), v292);
    v310 = vshlq_s16(vshlq_s16(vuzp1q_s16(v383, v385), v290), v292);
    v311 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v382), v290), v292);
    v312 = vshlq_s16(v302, v300);
    v313 = vshlq_s16(v304, v300);
    v314 = vshlq_u64(v176, v398);
    v315 = vuzp1q_s32(vzip1q_s64(v176, v314), vzip2q_s64(v176, v314));
    v316 = vshlq_u32(v315, v276);
    v317 = vshlq_s16(vshlq_s16(v288, v305), v306);
    v318 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v315, v316), vzip2q_s32(v315, v316)), v305), v306);
    v319 = vandq_s8(v307, v406);
    v320 = vdupq_lane_s64(v307.i64[0], 0);
    v321 = vaddq_s16(v319, v308);
    v322 = vandq_s8(v404, v320);
    v323 = vsubq_s16(vshlq_s16(v295, v294), v322);
    v324 = vsubq_s16(vshlq_s16(v296, v294), v322);
    v325 = vsubq_s16(vshlq_s16(v297, v294), v322);
    v326 = vsubq_s16(vshlq_s16(v298, v294), v322);
    v327 = vandq_s8(v405, v320);
    v328 = vsubq_s16(vshlq_s16(v301, v300), v327);
    v329 = vsubq_s16(v312, v327);
    v330 = vsubq_s16(vshlq_s16(v303, v300), v327);
    v331 = vandq_s8(v406, v320);
    v332 = vsubq_s16(v313, v327);
    v333 = vandq_s8(v407, v320);
    v334 = vsubq_s16(vshlq_s16(vshlq_s16(v286, v305), v306), v333);
    v335 = vsubq_s16(vshlq_s16(vshlq_s16(v287, v305), v306), v333);
    v336 = vsubq_s16(v317, v333);
    v337 = vsubq_s16(v318, v333);
    v338 = vsubq_s16(v309, v331);
    v339 = vsubq_s16(v310, v331);
    v340.i64[0] = 0x1000100010001;
    v340.i64[1] = 0x1000100010001;
    v341 = vsubq_s16(v321, v331);
    v342 = vsubq_s16(v311, v331);
    v280.i16[3] = v189;
    v343 = vdupq_lane_s64(v280.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v408, v340)))
    {
      v344 = vnegq_s16(vandq_s8(v409, v340));
      v345.i64[0] = v342.i64[0];
      v346.i64[1] = v341.i64[1];
      v345.i64[1] = v341.i64[0];
      v346.i64[0] = v342.i64[1];
      v347 = vbslq_s8(v344, v346, v341);
      v348 = vbslq_s8(v344, v345, v342);
      v346.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v346.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v349 = vandq_s8(vqtbl4q_s8(*(&v338 - 1), v346), v344);
      v411.val[0] = vaddq_s16(v347, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10B0), v344));
      v411.val[1] = vaddq_s16(v338, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10C0), v344));
      v411.val[2] = vaddq_s16(v339, v349);
      v411.val[3] = vaddq_s16(v348, v349);
      v350 = vandq_s8(vqtbl4q_s8(v411, v346), v344);
      v341 = vaddq_s16(v411.val[0], vandq_s8(vqtbl4q_s8(v411, xmmword_29D2F10D0), v344));
      v338 = vaddq_s16(v411.val[1], vandq_s8(vqtbl4q_s8(v411, xmmword_29D2F10E0), v344));
      v339 = vaddq_s16(v411.val[2], v350);
      v342 = vaddq_s16(v411.val[3], v350);
      v412.val[0] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10B0), v344));
      v412.val[1] = vaddq_s16(v324, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10F0), v344));
      v412.val[2] = vaddq_s16(v325, vandq_s8(vqtbl4q_s8(*v323.i8, v346), v344));
      v412.val[3] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F1100), v344));
      v351 = vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F10D0), v344);
      v411.val[0] = vandq_s8(vqtbl4q_s8(v412, v346), v344);
      v323 = vaddq_s16(v351, v412.val[0]);
      v324 = vaddq_s16(v412.val[1], v351);
      v325 = vaddq_s16(v412.val[2], v411.val[0]);
      v326 = vaddq_s16(v412.val[3], v411.val[0]);
      v412.val[0] = vaddq_s16(v328, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0EB0), v344));
      v412.val[1] = vaddq_s16(v329, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0FB0), v344));
      v412.val[2] = vaddq_s16(v330, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10B0), v344));
      v412.val[3] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10C0), v344));
      v411.val[1] = vandq_s8(vqtbl4q_s8(v412, v346), v344);
      v328 = vaddq_s16(v412.val[0], v411.val[1]);
      v329 = vaddq_s16(v412.val[1], v411.val[1]);
      v330 = vaddq_s16(v412.val[2], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F0FE0), v344));
      v332 = vaddq_s16(v412.val[3], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F1110), v344));
      v411.val[2] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F0EB0), v344));
      v411.val[3] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F1120), v344));
      v412.val[0] = vaddq_s16(v336, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10B0), v344));
      v412.val[1] = vaddq_s16(v337, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10C0), v344));
      v352 = vandq_s8(vqtbl4q_s8(*(&v411 + 32), v346), v344);
      v334 = vaddq_s16(v411.val[2], v352);
      v335 = vaddq_s16(v411.val[3], v352);
      v336 = vaddq_s16(v412.val[0], vandq_s8(vqtbl4q_s8(*(&v411 + 32), xmmword_29D2F0FE0), v344));
      v337 = vaddq_s16(v412.val[1], vandq_s8(vqtbl4q_s8(*(&v411 + 32), xmmword_29D2F1130), v344));
    }

    v353 = vaddq_s16(v341, v343);
    v354 = vaddq_s16(v338, v343);
    v355 = vaddq_s16(v339, v343);
    v356 = vaddq_s16(v342, v343);
    v357 = vaddq_s16(v323, v343);
    v358 = vaddq_s16(v324, v343);
    v359 = vaddq_s16(v325, v343);
    v360 = vaddq_s16(v326, v343);
    v361 = vaddq_s16(v328, v343);
    v362 = vaddq_s16(v329, v343);
    v363 = vaddq_s16(v330, v343);
    v364 = vaddq_s16(v332, v343);
    v365 = vaddq_s16(v334, v343);
    v366 = vaddq_s16(v335, v343);
    v367 = vaddq_s16(v336, v343);
    v368 = vaddq_s16(v337, v343);
    v369.i64[0] = 0x10001000100010;
    v369.i64[1] = 0x10001000100010;
    v370 = vcgtq_u16(v369, v409);
    v371 = (a1 + a2);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1140), v370), v353);
    *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v370), v354);
    *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v370), v357);
    *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v370), v358);
    v372 = (a1 + 2 * a2);
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v370), v355);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v370), v356);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v370), v359);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v370), v360);
    *v372 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v370), v361);
    v372[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v370), v362);
    v372[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v370), v365);
    v372[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v370), v366);
    v373 = (v372 + a2);
    *v373 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v370), v363);
    v373[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v370), v364);
    v373[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1140), v370), v367);
    v373[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v368, xmmword_29D2F1140), v370), v368);
  }

  return v177;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = result[1];
    v9 = result[2];
    v10 = result[3];
    v12 = *(result + 2 * a2);
    v13 = *(result + v7 + 16);
    v11 = (result + v7 + a2);
    v14 = *(result + a2 + 32);
    v15 = *(result + a2 + 48);
    v16 = *v11;
    v17 = v11[1];
    v18 = *(result + a2);
    v19 = *(result + a2 + 16);
    v20 = *(result + v7 + 32);
    v21 = *(result + v7 + 48);
    v22 = v11[2];
    v23 = v11[3];
    *a3 = *result;
    a3[1] = v8;
    a3[2] = v18;
    a3[3] = v19;
    a3[4] = v9;
    a3[5] = v10;
    a3[6] = v14;
    a3[7] = v15;
    a3[8] = v12;
    a3[9] = v13;
    a3[10] = v16;
    a3[11] = v17;
    a3[12] = v20;
    a3[13] = v21;
    a3[14] = v22;
    a3[15] = v23;
    a3 += 16;
    v6 = -1;
  }

  v24 = 0;
  *a4 = v6;
  if (a5 >= 5 && a6)
  {
    v25 = (result + a2 + 64);
    v27 = result[5];
    v26 = (result + v7 + 64);
    v28 = result[6];
    v29 = result[7];
    v31 = *v26;
    v32 = v26[1];
    v33 = v26[2];
    v34 = v26[3];
    v30 = (v26 + a2);
    v35 = v25[2];
    v36 = v25[3];
    v37 = *v30;
    v38 = v30[1];
    v39 = *v25;
    v40 = v25[1];
    v41 = v30[2];
    v42 = v30[3];
    *a3 = result[4];
    a3[1] = v27;
    a3[2] = v39;
    a3[3] = v40;
    a3[4] = v28;
    a3[5] = v29;
    a3[6] = v35;
    a3[7] = v36;
    a3[8] = v31;
    a3[9] = v32;
    a3[10] = v37;
    a3[11] = v38;
    a3[12] = v33;
    a3[13] = v34;
    a3[14] = v41;
    a3[15] = v42;
    a3 += 16;
    v24 = -1;
  }

  v43 = 0;
  v44 = 4 * a2;
  a4[1] = v24;
  if (a5 && a6 >= 5)
  {
    v45 = (result + v44 + a2);
    v47 = *(result + v44 + 16);
    v46 = (result + v44 + v7);
    v48 = *(result + v44 + 32);
    v49 = *(result + v44 + 48);
    v51 = *v46;
    v52 = v46[1];
    v53 = v46[2];
    v54 = v46[3];
    v50 = (v46 + a2);
    v55 = v45[2];
    v56 = v45[3];
    v57 = *v50;
    v58 = v50[1];
    v59 = *v45;
    v60 = v45[1];
    v61 = v50[2];
    v62 = v50[3];
    *a3 = *(result + 4 * a2);
    a3[1] = v47;
    a3[2] = v59;
    a3[3] = v60;
    a3[4] = v48;
    a3[5] = v49;
    a3[6] = v55;
    a3[7] = v56;
    a3[8] = v51;
    a3[9] = v52;
    a3[10] = v57;
    a3[11] = v58;
    a3[12] = v53;
    a3[13] = v54;
    a3[14] = v61;
    a3[15] = v62;
    a3 += 16;
    v43 = -1;
  }

  v63 = 0;
  a4[2] = v43;
  if (a5 >= 5 && a6 >= 5)
  {
    v64 = (result + v44 + 64);
    v65 = (v64 + a2);
    v67 = *v64;
    v68 = *(result + v44 + 80);
    v66 = (v64 + v7);
    v69 = *(result + v44 + 96);
    v70 = *(result + v44 + 112);
    v72 = *v66;
    v73 = v66[1];
    v74 = v66[2];
    v75 = v66[3];
    v71 = (v66 + a2);
    v76 = v65[2];
    v77 = v65[3];
    v78 = *v71;
    v79 = v71[1];
    v80 = *v65;
    v81 = v65[1];
    v82 = v71[2];
    v83 = v71[3];
    *a3 = v67;
    a3[1] = v68;
    a3[2] = v80;
    a3[3] = v81;
    a3[4] = v69;
    a3[5] = v70;
    a3[6] = v76;
    a3[7] = v77;
    a3[8] = v72;
    a3[9] = v73;
    a3[10] = v78;
    a3[11] = v79;
    a3[12] = v74;
    a3[13] = v75;
    a3[14] = v82;
    a3[15] = v83;
    a3 += 16;
    v63 = -1;
  }

  v84 = 0;
  a4[3] = v63;
  if (a5 >= 9 && a6)
  {
    v85 = (result + a2 + 128);
    v87 = result[9];
    v86 = (result + v7 + 128);
    v88 = result[10];
    v89 = result[11];
    v91 = *v86;
    v92 = v86[1];
    v93 = v86[2];
    v94 = v86[3];
    v90 = (v86 + a2);
    v95 = v85[2];
    v96 = v85[3];
    v97 = *v90;
    v98 = v90[1];
    v99 = *v85;
    v100 = v85[1];
    v101 = v90[2];
    v102 = v90[3];
    *a3 = result[8];
    a3[1] = v87;
    a3[2] = v99;
    a3[3] = v100;
    a3[4] = v88;
    a3[5] = v89;
    a3[6] = v95;
    a3[7] = v96;
    a3[8] = v91;
    a3[9] = v92;
    a3[10] = v97;
    a3[11] = v98;
    a3[12] = v93;
    a3[13] = v94;
    a3[14] = v101;
    a3[15] = v102;
    a3 += 16;
    v84 = -1;
  }

  v103 = 0;
  a4[4] = v84;
  if (a5 >= 0xD && a6)
  {
    v104 = (result + a2 + 192);
    v106 = result[13];
    v105 = (result + v7 + 192);
    v107 = result[14];
    v108 = result[15];
    v110 = *v105;
    v111 = v105[1];
    v112 = v105[2];
    v113 = v105[3];
    v109 = (v105 + a2);
    v114 = v104[2];
    v115 = v104[3];
    v116 = *v109;
    v117 = v109[1];
    v118 = *v104;
    v119 = v104[1];
    v120 = v109[2];
    v121 = v109[3];
    *a3 = result[12];
    a3[1] = v106;
    a3[2] = v118;
    a3[3] = v119;
    a3[4] = v107;
    a3[5] = v108;
    a3[6] = v114;
    a3[7] = v115;
    a3[8] = v110;
    a3[9] = v111;
    a3[10] = v116;
    a3[11] = v117;
    a3[12] = v112;
    a3[13] = v113;
    a3[14] = v120;
    a3[15] = v121;
    a3 += 16;
    v103 = -1;
  }

  v122 = 0;
  a4[5] = v103;
  if (a5 >= 9 && a6 >= 5)
  {
    v123 = (result + v44 + 128);
    v124 = (v123 + a2);
    v126 = *v123;
    v127 = *(result + v44 + 144);
    v125 = (v123 + v7);
    v128 = *(result + v44 + 160);
    v129 = *(result + v44 + 176);
    v131 = *v125;
    v132 = v125[1];
    v133 = v125[2];
    v134 = v125[3];
    v130 = (v125 + a2);
    v135 = v124[2];
    v136 = v124[3];
    v137 = *v130;
    v138 = v130[1];
    v139 = *v124;
    v140 = v124[1];
    v141 = v130[2];
    v142 = v130[3];
    *a3 = v126;
    a3[1] = v127;
    a3[2] = v139;
    a3[3] = v140;
    a3[4] = v128;
    a3[5] = v129;
    a3[6] = v135;
    a3[7] = v136;
    a3[8] = v131;
    a3[9] = v132;
    a3[10] = v137;
    a3[11] = v138;
    a3[12] = v133;
    a3[13] = v134;
    a3[14] = v141;
    a3[15] = v142;
    a3 += 16;
    v122 = -1;
  }

  v143 = 0;
  a4[6] = v122;
  if (a5 >= 0xD && a6 >= 5)
  {
    v144 = (result + v44 + 192);
    v145 = (v144 + a2);
    v147 = *v144;
    v148 = v144[1];
    v149 = v144[2];
    v150 = v144[3];
    v146 = (v144 + v7);
    v151 = v149;
    v153 = *v146;
    v154 = v146[1];
    v155 = v146[2];
    v156 = v146[3];
    v152 = (v146 + a2);
    v157 = v150;
    v158 = v145[2];
    v159 = *v152;
    v160 = v152[1];
    v161 = v152[3];
    v162 = v145[3];
    v163 = *v145;
    v164 = v145[1];
    v165 = v152[2];
    *a3 = v147;
    a3[1] = v148;
    a3[2] = v163;
    a3[3] = v164;
    a3[4] = v151;
    a3[5] = v157;
    a3[6] = v158;
    a3[7] = v162;
    a3[8] = v153;
    a3[9] = v154;
    a3[10] = v159;
    a3[11] = v160;
    a3[12] = v155;
    a3[13] = v156;
    a3[14] = v165;
    a3[15] = v161;
    v143 = -1;
  }

  a4[7] = v143;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v7 = vdupq_lane_s64(a3->i64[0], 0);
  v8 = vsubq_s16(*a3, v7);
  v9 = vsubq_s16(a3[1], v7);
  v10 = vsubq_s16(*(a3 + a4), v7);
  v516 = *a3;
  v517 = a3[1];
  v518 = *(a3 + a4);
  v519 = *(&a3[1] + a4);
  v11 = vsubq_s16(v519, v7);
  v12 = vsubq_s16(a3[3], v7);
  v507 = a3[2];
  v508 = a3[3];
  v509 = *(&a3[2] + a4);
  v13 = vsubq_s16(v509, v7);
  v500 = *(&a3[3] + a4);
  v14 = vsubq_s16(v500, v7);
  v15 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v8, v9), v10), v11), xmmword_29D2F1150);
  v16 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v8, v9), v10), v11), xmmword_29D2F1150);
  v17 = vpmaxq_s16(v15, v15);
  v18 = vpminq_s16(v16, v16);
  v19.i64[0] = 0x8000800080008000;
  v19.i64[1] = 0x8000800080008000;
  v20 = vmaxq_s16(v17, v19);
  v19.i64[0] = 0x8000800080008000;
  v19.i64[1] = 0x8000800080008000;
  v21 = vminq_s16(v18, v19);
  v22 = vzip1q_s16(v17, v18);
  v23.i64[0] = 0x10001000100010;
  v23.i64[1] = 0x10001000100010;
  v24 = vbicq_s8(vsubq_s16(v23, vclsq_s16(v22)), vceqzq_s16(v22));
  v514 = vsubq_s16(v507, v7);
  v25 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v514, v12), v13), v14), xmmword_29D2F1150);
  v26 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v514, v12), v13), v14), xmmword_29D2F1150);
  v27 = vpmaxq_s16(v25, v25);
  v28 = vpminq_s16(v26, v26);
  v29 = vmaxq_s16(v20, v27);
  v30 = vzip1q_s16(v27, v28);
  v32 = *v6;
  v33 = v6[1];
  v34 = v6[2];
  v35 = v6[3];
  v31 = (v6 + a4);
  v36 = vbicq_s8(vsubq_s16(v23, vclsq_s16(v30)), vceqzq_s16(v30));
  v37 = v35;
  v38 = vsubq_s16(v32, v7);
  v39 = vsubq_s16(v33, v7);
  v504 = v32;
  v505 = v33;
  v506 = *v31;
  v40 = vsubq_s16(*v31, v7);
  v41 = vsubq_s16(v31[1], v7);
  v42 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v43 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v44 = vpmaxq_s16(v42, v42);
  v45 = vpminq_s16(v43, v43);
  v46 = vmaxq_s16(v29, v44);
  v47 = vminq_s16(vminq_s16(v21, v28), v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v23, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vsubq_s16(v34, v7);
  v51 = vsubq_s16(v35, v7);
  v501 = v34;
  v502 = v37;
  v503 = v31[2];
  v52 = vsubq_s16(v503, v7);
  v498 = v31[1];
  v499 = v31[3];
  v53 = vsubq_s16(v499, v7);
  v54 = v41;
  v55 = v40;
  v56 = v39;
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v50, v51), v52), v53), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v50, v51), v52), v53), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vmaxq_s16(v46, v59);
  v62 = vminq_s16(v47, v60);
  v63 = vzip1q_s16(v59, v60);
  v64 = vbicq_s8(vsubq_s16(v23, vclsq_s16(v63)), vceqzq_s16(v63));
  v65 = vpmaxq_s16(v24, v24);
  v66 = vpmaxq_s16(v36, v36);
  v67 = vpmaxq_s16(v49, v49);
  v68 = vpmaxq_s16(v64, v64);
  v69 = vmaxq_s16(vmaxq_s16(v65, v66), vmaxq_s16(v67, v68));
  v70 = vclzq_s16(vsubq_s16(v61, v62));
  v71 = vsubq_s16(v23, v70);
  v72 = vcgtq_s16(v69, v71);
  v73 = vminq_s16(v71, v69);
  v71.i64[0] = 0x8000800080008;
  v71.i64[1] = 0x8000800080008;
  v74.i64[0] = 0x3000300030003;
  v74.i64[1] = 0x3000300030003;
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v65), v74), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v66), v74), 0);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v67), v74), 0);
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v73, v68), v74), 0);
  v41.i64[0] = 0x4000400040004;
  v41.i64[1] = 0x4000400040004;
  v79 = vbicq_s8(v41, vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76))));
  v80 = v12;
  v81 = vorrq_s8(v79, vorrq_s8(vandq_s8(vceqzq_s16(v73), v74), vandq_s8(v72, v71)));
  v541 = v7;
  v520 = v8;
  v522 = v9;
  v524 = v10;
  v526 = v11;
  v532 = v14;
  v533 = v38;
  v537 = v50;
  v82 = vmaxvq_s16(v73);
  v50.i64[0] = 0xF000F000F000FLL;
  v50.i64[1] = 0xF000F000F000FLL;
  v83 = vsubq_s16(v50, v70);
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v84 = vshlq_s16(v70, v83);
  v529 = v514;
  v530 = v80;
  v493 = v80;
  v494 = v56;
  v531 = v13;
  v534 = v56;
  v535 = v55;
  v495 = v55;
  v496 = v54;
  v536 = v54;
  v538 = v51;
  v86 = a5 < 2 || a6 < 2;
  v539 = v52;
  v540 = v53;
  v548 = v62;
  v547 = v73;
  v87 = vandq_s8(vsubq_s16(v84, v62), v72);
  v491 = v61;
  v549 = v61;
  v550 = v87;
  v543 = vsubq_s16(v73, v75);
  v515 = vsubq_s16(v73, v76);
  v544 = v515;
  v88 = vsubq_s16(v73, v78);
  v512 = vsubq_s16(v73, v77);
  v545 = v512;
  v546 = v88;
  v542 = v81;
  if (v82)
  {
    v462 = v53;
    v463 = v51;
    v464 = v62;
    v487 = v81;
    v489 = v87;
    v89 = vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1140));
    v90 = vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1140));
    v91 = vsubq_s16(v531, vqtbl1q_s8(v531, xmmword_29D2F1140));
    v92 = vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1140));
    v93 = v72;
    v94 = vsubq_s16(v535, vqtbl1q_s8(v535, xmmword_29D2F1140));
    v95 = vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1140));
    v469 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v471 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1140));
    v473 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1140));
    v475 = vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1140));
    v96 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v471, v469), v475), v473), xmmword_29D2F1150);
    v97 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v471, v469), v475), v473), xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v100.i64[0] = 0x8000800080008000;
    v100.i64[1] = 0x8000800080008000;
    v101 = vmaxq_s16(v98, v100);
    v102.i64[0] = 0x8000800080008000;
    v102.i64[1] = 0x8000800080008000;
    v103 = vminq_s16(v99, v102);
    v104 = vzip1q_s16(v98, v99);
    v105.i64[0] = 0x10001000100010;
    v105.i64[1] = 0x10001000100010;
    v106 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v104)), vceqzq_s16(v104));
    v107 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v89, v90), v91), v92);
    v465 = v90;
    v466 = v89;
    v108 = vminq_s16(v89, v90);
    v109 = v91;
    v110 = vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1140));
    v111 = vqtbl1q_s8(v107, xmmword_29D2F1150);
    v112 = vqtbl1q_s8(vminq_s16(vminq_s16(v108, v109), v92), xmmword_29D2F1150);
    v113 = vpmaxq_s16(v111, v111);
    v114 = vpminq_s16(v112, v112);
    v115 = vmaxq_s16(v101, v113);
    v116 = vminq_s16(v103, v114);
    v117 = vzip1q_s16(v113, v114);
    v118 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v117)), vceqzq_s16(v117));
    v119 = vsubq_s16(v533, vqtbl1q_s8(v533, xmmword_29D2F1140));
    v120 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v119, v110), v94), v95), xmmword_29D2F1150);
    v121 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v119, v110), v94), v95), xmmword_29D2F1150);
    v122 = vpmaxq_s16(v120, v120);
    v123 = vpminq_s16(v121, v121);
    v124 = vmaxq_s16(v115, v122);
    v125 = vminq_s16(v116, v123);
    v126 = vzip1q_s16(v122, v123);
    v127 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v126)), vceqzq_s16(v126));
    v89.i64[0] = 0x4000400040004;
    v89.i64[1] = 0x4000400040004;
    v128 = v79;
    v129 = vsubq_s16(v537, vqtbl1q_s8(v537, xmmword_29D2F1140));
    v130 = v88;
    v483 = vsubq_s16(v539, vqtbl1q_s8(v539, xmmword_29D2F1140));
    v485 = vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1140));
    v481 = vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1140));
    v131 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v129, v485), v483), v481), xmmword_29D2F1150);
    v132 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v129, v485), v483), v481), xmmword_29D2F1150);
    v133 = vpmaxq_s16(v131, v131);
    v134 = vpminq_s16(v132, v132);
    v135 = vmaxq_s16(v124, v133);
    v136 = vminq_s16(v125, v134);
    v137 = vzip1q_s16(v133, v134);
    v138 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v137)), vceqzq_s16(v137));
    v139 = vpmaxq_s16(v106, v106);
    v140 = vpmaxq_s16(v118, v118);
    v141 = vpmaxq_s16(v127, v127);
    v142 = vpmaxq_s16(v138, v138);
    v143 = vmaxq_s16(vmaxq_s16(v139, v140), vmaxq_s16(v141, v142));
    v144 = vclzq_s16(vsubq_s16(v135, v136));
    v145 = vsubq_s16(v105, v144);
    v146 = vcgtq_s16(v143, v145);
    v147 = vminq_s16(v145, v143);
    v143.i64[0] = 0x18001800180018;
    v143.i64[1] = 0x18001800180018;
    v460 = v146;
    v461 = v136;
    v148 = vbslq_s8(v146, v143, v105);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v139), v74), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v140), v74), 0);
    v151 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v141), v74), 0);
    v152 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v142), v74), 0);
    v153 = v130;
    v154 = vbicq_s8(v89, vceqq_s16(vaddq_s16(v152, v151), vnegq_s16(vaddq_s16(v149, v150))));
    v155 = vsubq_s16(v147, v149);
    v156 = vsubq_s16(v147, v150);
    v157 = vsubq_s16(v147, v151);
    v158 = vsubq_s16(v147, v152);
    v151.i64[0] = 0x7000700070007;
    v151.i64[1] = 0x7000700070007;
    v159 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v73, v93), v543, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v512, v515), v153), 3uLL)), vaddq_s16(v128, v128)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v147, vceqzq_s16((*&v148 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v155, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v157, v156), v158), 3uLL)), vaddq_s16(v154, v154))).i64[0], 0);
    if (vaddvq_s16(v159))
    {
      v520 = vbslq_s8(v159, v471, v520);
      v522 = vbslq_s8(v159, v469, v9);
      v524 = vbslq_s8(v159, v475, v524);
      v526 = vbslq_s8(v159, v473, v526);
      v529 = vbslq_s8(v159, v466, v529);
      v530 = vbslq_s8(v159, v465, v493);
      v531 = vbslq_s8(v159, v109, v13);
      v532 = vbslq_s8(v159, v92, v14);
      v533 = vbslq_s8(v159, v119, v533);
      v534 = vbslq_s8(v159, v110, v494);
      v160.i64[0] = 0x3000300030003;
      v160.i64[1] = 0x3000300030003;
      v161 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v147), v160), v148), v154);
      v162.i64[0] = 0xF000F000F000FLL;
      v162.i64[1] = 0xF000F000F000FLL;
      v163.i64[0] = -1;
      v163.i64[1] = -1;
      v535 = vbslq_s8(v159, v94, v495);
      v536 = vbslq_s8(v159, v95, v496);
      v537 = vbslq_s8(v159, v129, v537);
      v538 = vbslq_s8(v159, v485, v463);
      v539 = vbslq_s8(v159, v483, v52);
      v540 = vbslq_s8(v159, v481, v462);
      v543 = vbslq_s8(v159, v155, v543);
      v544 = vbslq_s8(v159, v156, v515);
      v545 = vbslq_s8(v159, v157, v512);
      v546 = vbslq_s8(v159, v158, v153);
      v549 = vbslq_s8(v159, v135, v491);
      v550 = vbslq_s8(v159, vandq_s8(vsubq_s16(vshlq_s16(v163, vsubq_s16(v162, v144)), v461), v460), v489);
      v548 = vbslq_s8(v159, v461, v464);
      v547 = vbslq_s8(v159, v147, v73);
      v541 = vbslq_s8(v159, vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1140)), v541);
      v542 = vbslq_s8(v159, v161, v487);
    }

    v164 = v516;
    v165 = v517;
    v166 = v518;
    v167 = v519;
    if (v86)
    {
      v168 = v544;
      v169 = v545;
      v170 = v547;
      v171 = v546;
      v173 = v529;
      v172 = v530;
      v175 = v531;
      v174 = v532;
      v177 = v533;
      v176 = v534;
      v178 = v535;
      v179 = v536;
      v180 = v537;
      v181 = v538;
      v182 = v539;
      v183 = v540;
      v184 = v543;
      v185 = v542;
      v187 = v520;
      v186 = v522;
      v189 = v524;
      v188 = v526;
    }

    else
    {
      v192 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v193 = vsubq_s16(v516, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v497 = vsubq_s16(v517, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v510 = vsubq_s16(v518, v192);
      v194 = vsubq_s16(v519, v192);
      v553.val[0] = v507;
      v553.val[1] = v508;
      v553.val[2] = v509;
      v553.val[3].i64[0] = v500.i64[0];
      v553.val[3].i64[1] = v519.i64[1];
      v552.val[0] = v501;
      v552.val[1] = v502;
      v552.val[2] = v503;
      v513 = vsubq_s16(v507, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v551.val[0] = v504;
      v551.val[1] = v505;
      v551.val[2] = v506;
      v551.val[3].i64[0] = v498.i64[0];
      v551.val[3].i64[1] = v519.i64[1];
      v195 = vsubq_s16(v504, vqtbl4q_s8(v551, xmmword_29D2F1170));
      v196 = vsubq_s16(v505, vqtbl4q_s8(v551, xmmword_29D2F1180));
      v197 = vsubq_s16(v506, vqtbl4q_s8(v551, xmmword_29D2F10B0));
      v551.val[0] = vsubq_s16(v498, vqtbl4q_s8(v551, xmmword_29D2F10C0));
      v552.val[3].i64[0] = v499.i64[0];
      v552.val[3].i64[1] = v519.i64[1];
      v198 = vsubq_s16(v501, vqtbl4q_s8(v552, xmmword_29D2F1170));
      v199 = vsubq_s16(v502, vqtbl4q_s8(v552, xmmword_29D2F1120));
      v200.i64[0] = v194.i64[0];
      v200.i64[1] = v193.i64[0];
      v193.i64[0] = v194.i64[1];
      v468 = v193;
      v201 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v193, v497), v510), v200), xmmword_29D2F1150);
      v202 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v193, v497), v510), v200), xmmword_29D2F1150);
      v203 = vpmaxq_s16(v201, v201);
      v204 = vpminq_s16(v202, v202);
      v205.i64[0] = 0x8000800080008000;
      v205.i64[1] = 0x8000800080008000;
      v206 = vmaxq_s16(v203, v205);
      v207.i64[0] = 0x8000800080008000;
      v207.i64[1] = 0x8000800080008000;
      v208 = vminq_s16(v204, v207);
      v209 = vzip1q_s16(v203, v204);
      v204.i64[0] = 0x10001000100010;
      v204.i64[1] = 0x10001000100010;
      v210 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v209)), vceqzq_s16(v209));
      v211 = vpmaxq_s16(v210, v210);
      v470 = vsubq_s16(v508, vqtbl4q_s8(v553, xmmword_29D2F10F0));
      v482 = vsubq_s16(v509, vqtbl4q_s8(v553, xmmword_29D2F1160));
      v484 = vsubq_s16(v500, vqtbl4q_s8(v553, xmmword_29D2F1100));
      v212 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v513, v470), v482), v484), xmmword_29D2F1150);
      v213 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v513, v470), v482), v484), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v212, v212);
      v215 = vpminq_s16(v213, v213);
      v216 = vmaxq_s16(v206, v214);
      v217 = vminq_s16(v208, v215);
      v218 = vzip1q_s16(v214, v215);
      v219 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v218)), vceqzq_s16(v218));
      v220 = vpmaxq_s16(v219, v219);
      v490 = v197;
      v492 = v196;
      v486 = v195;
      v488 = v551.val[0];
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v195, v196), v197), v551.val[0]), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v195, v196), v197), v551.val[0]), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v225 = vmaxq_s16(v216, v223);
      v226 = vminq_s16(v217, v224);
      v227 = vzip1q_s16(v223, v224);
      v228 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v472 = vsubq_s16(v503, vqtbl4q_s8(v552, xmmword_29D2F10B0));
      v480 = vsubq_s16(v499, vqtbl4q_s8(v552, xmmword_29D2F10C0));
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v198, v199), v472), v480), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v198, v199), v472), v480), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v239 = vmaxq_s16(vmaxq_s16(v211, v220), vmaxq_s16(v229, v238));
      v479 = v235;
      v240 = vclzq_s16(vsubq_s16(v234, v235));
      v241 = vsubq_s16(v204, v240);
      v242 = vcgtq_s16(v239, v241);
      v243 = vminq_s16(v241, v239);
      v244 = vsubq_s16(v243, v211);
      v211.i64[0] = 0x3000300030003;
      v211.i64[1] = 0x3000300030003;
      v245 = vmaxq_s16(vminq_s16(v244, v211), 0);
      v246 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v220), v211), 0);
      v247 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v229), v211), 0);
      v248 = vmaxq_s16(vminq_s16(vsubq_s16(v243, v238), v211), 0);
      v249 = vsubq_s16(v243, v246);
      v238.i64[0] = 0x4000400040004;
      v238.i64[1] = 0x4000400040004;
      v250 = vbicq_s8(v238, vceqq_s16(vaddq_s16(v248, v247), vnegq_s16(vaddq_s16(v245, v246))));
      v246.i64[0] = 0x7000700070007;
      v246.i64[1] = 0x7000700070007;
      v476 = vsubq_s16(v243, v247);
      v477 = v249;
      v474 = vsubq_s16(v243, v248);
      v478 = vsubq_s16(v243, v245);
      v251 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v243, v242), v478, v246), vshlq_n_s16(vaddq_s16(vaddq_s16(v476, v249), v474), 3uLL)), vaddq_s16(v250, v250));
      v185 = v542;
      v184 = v543;
      v166.i64[0] = 0x2000200020002;
      v166.i64[1] = 0x2000200020002;
      v253 = vandq_s8(vceqq_s16(vandq_s8(v542, v211), v166), v204);
      v204.i64[0] = 0x8000800080008;
      v204.i64[1] = 0x8000800080008;
      v254 = vandq_s8(vaddq_s16(v185, v185), v204);
      v255 = vceqzq_s16(vandq_s8(v542, v204));
      v170 = v547;
      v171 = v546;
      v168 = v544;
      v169 = v545;
      v256 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v547, v255), v254), v253), v543, v246), vshlq_n_s16(vaddq_s16(vaddq_s16(v545, v544), v546), 3uLL)), v251).i64[0], 0);
      v173 = v529;
      v172 = v530;
      v174 = v532;
      v181 = v538;
      v182 = v539;
      v183 = v540;
      if (vaddvq_s16(v256))
      {
        v257.i64[0] = 0x9000900090009;
        v257.i64[1] = 0x9000900090009;
        v258 = vorrq_s8(vandq_s8(vceqzq_s16(v243), v166), vsubq_s16(vandq_s8(v242, v257), vmvnq_s8(v242)));
        v257.i64[0] = -1;
        v257.i64[1] = -1;
        v467 = vorrq_s8(v258, v250);
        v258.i64[0] = 0xF000F000F000FLL;
        v258.i64[1] = 0xF000F000F000FLL;
        v259 = vbslq_s8(v256, v510, v524);
        v173 = vbslq_s8(v256, v513, v529);
        v172 = vbslq_s8(v256, v470, v530);
        v174 = vbslq_s8(v256, v484, v532);
        v511 = vbslq_s8(v256, v492, v534);
        v260 = vbslq_s8(v256, v198, v537);
        v181 = vbslq_s8(v256, v199, v538);
        v182 = vbslq_s8(v256, v472, v539);
        v183 = vbslq_s8(v256, v480, v540);
        v184 = vbslq_s8(v256, v478, v543);
        v168 = vbslq_s8(v256, v477, v544);
        v169 = vbslq_s8(v256, v476, v545);
        v171 = vbslq_s8(v256, v474, v546);
        v170 = vbslq_s8(v256, v243, v547);
        v185 = vbslq_s8(v256, v467, v542);
        v541 = vbslq_s8(v256, vextq_s8(v519, v519, 8uLL), v541);
        v548 = vbslq_s8(v256, v479, v548);
        v549 = vbslq_s8(v256, v234, v549);
        v550 = vbslq_s8(v256, vandq_s8(vsubq_s16(vshlq_s16(v257, vsubq_s16(v258, v240)), v479), v242), v550);
        v177 = vbslq_s8(v256, v486, v533);
        v520 = vbslq_s8(v256, v468, v520);
        v522 = vbslq_s8(v256, v497, v522);
        v527 = vbslq_s8(v256, v200, v526);
        v529 = v173;
        v544 = v168;
        v545 = v169;
        v546 = v171;
        v547 = v170;
        v543 = v184;
        v542 = v185;
        v175 = vbslq_s8(v256, v482, v531);
        v164 = v516;
        v165 = v517;
        v166 = v518;
        v167 = v519;
        v180 = v260;
        v179 = vbslq_s8(v256, v488, v536);
        v178 = vbslq_s8(v256, v490, v535);
        v176 = v511;
        v188 = v527;
        v189 = v259;
      }

      else
      {
        v175 = v531;
        v164 = v516;
        v165 = v517;
        v166 = v518;
        v167 = v519;
        v180 = v537;
        v179 = v536;
        v178 = v535;
        v176 = v534;
        v177 = v533;
        v188 = v526;
        v189 = v524;
      }

      v186 = v522;
      v187 = v520;
    }

    v261 = vandq_s8(v550, vceqq_s16(v170, v184));
    v521 = vaddq_s16(v261, v187);
    v523 = vaddq_s16(v186, v261);
    v525 = vaddq_s16(v189, v261);
    v528 = vaddq_s16(v188, v261);
    v262 = vandq_s8(v550, vceqq_s16(v170, v168));
    v529 = vaddq_s16(v173, v262);
    v530 = vaddq_s16(v172, v262);
    v531 = vaddq_s16(v175, v262);
    v532 = vaddq_s16(v174, v262);
    v263 = vandq_s8(v550, vceqq_s16(v170, v169));
    v533 = vaddq_s16(v177, v263);
    v534 = vaddq_s16(v176, v263);
    v535 = vaddq_s16(v178, v263);
    v536 = vaddq_s16(v179, v263);
    v264 = vandq_s8(v550, vceqq_s16(v170, v171));
    v537 = vaddq_s16(v180, v264);
    v538 = vaddq_s16(v181, v264);
    v539 = vaddq_s16(v182, v264);
    v540 = vaddq_s16(v183, v264);
    v264.i64[0] = 0x8000800080008;
    v264.i64[1] = 0x8000800080008;
    v265.i64[0] = 0x3000300030003;
    v265.i64[1] = 0x3000300030003;
    v266.i64[0] = 0x2000200020002;
    v266.i64[1] = 0x2000200020002;
    v267 = vceqq_s16(vandq_s8(v185, v265), v266);
    v266.i64[0] = 0x10001000100010;
    v266.i64[1] = 0x10001000100010;
    v268 = vandq_s8(v267, v266);
    v266.i64[0] = 0x7000700070007;
    v266.i64[1] = 0x7000700070007;
    v269 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v169, v168), v171), 3uLL), v184, v266), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v185, v185), v264), vbicq_s8(v170, vceqzq_s16(vandq_s8(v185, v264)))), v268));
    v270 = vpaddq_s16(v269, v269);
    if ((vpaddq_s16(v270, v270).i16[0] + 107) > 0x7FF)
    {
      *a1 = v164;
      *(a1 + 16) = v165;
      *(a1 + 32) = v166;
      *(a1 + 48) = v167;
      *(a1 + 64) = v507;
      *(a1 + 80) = v508;
      *(a1 + 96) = v509;
      *(a1 + 112) = v500;
      *(a1 + 128) = v504;
      *(a1 + 144) = v505;
      *(a1 + 160) = v506;
      *(a1 + 176) = v498;
      v274 = (a1 + 192);
      v190 = -1;
      result = 256;
      *v274 = v501;
      v274[1] = v502;
      v274[2] = v503;
      v274[3] = v499;
    }

    else
    {
      v271 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v272 = 8 * (a1 & 7);
      if (v272)
      {
        v273 = *v271 & ~(-1 << v272);
      }

      else
      {
        v273 = 0;
      }

      *a2 = 0;
      v275 = v541.i64[0];
      v276.i32[0] = v170.u16[0];
      v276.i32[1] = v170.u16[1];
      v277 = vceqz_s32(vand_s8(v276, 0xFFFF0000FFFFLL));
      v278.i64[0] = v277.i32[0];
      v278.i64[1] = v277.i32[1];
      v279 = v278;
      v280.i64[0] = -1;
      v280.i64[1] = -1;
      v281 = vand_s8(vadd_s32(v276, -1), 0xF0000000FLL);
      v278.i64[0] = v281.u32[0];
      v278.i64[1] = v281.u32[1];
      v282 = vbicq_s8(vshlq_u64(v278, xmmword_29D2F1190), v279);
      if (v170.i16[2])
      {
        v283 = (v170.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v283 = 0;
      }

      if (v170.i16[3])
      {
        v284 = ((v170.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v284 = 0;
      }

      v285 = vorrq_s8(vdupq_laneq_s64(v282, 1), v282).u64[0] | v283 | v284 | ((v185.i8[6] & 0x1F) << 15) | v185.i8[0] & 0x1F | (32 * (v185.i8[2] & 0x1F)) & 0x83FF | ((v185.i8[4] & 0x1F) << 10);
      v286 = v273 | (v285 << v272);
      if (v272 >= 0x1C)
      {
        *v271 = v286;
        v286 = v285 >> (-8 * (a1 & 7u));
      }

      v287 = v275 | (WORD1(v275) << 16) | (WORD2(v275) << 32) | (HIWORD(v275) << 48);
      v288 = (v272 + 36) & 0x3C;
      *(v271 + (((v272 + 36) >> 3) & 8)) = v286 | (v287 << v288);
      v289 = v272 + 100;
      v290 = vsubq_s16(v547, v543);
      v291 = vsubq_s16(v547, v544);
      v292 = vsubq_s16(v547, v545);
      v293 = vsubq_s16(v547, v546);
      *v290.i8 = vqmovn_u16(v290);
      *v291.i8 = vqmovn_u16(v291);
      *v292.i8 = vqmovn_u16(v292);
      *v293.i8 = vqmovn_u16(v293);
      v294 = vtrn1q_s8(v290, v291);
      v295 = vtrn2q_s8(v290, v291);
      v296 = vtrn1q_s8(v292, v293);
      v297 = vtrn2q_s8(v292, v293);
      v298 = vzip1q_s16(v295, v297);
      v299 = vtrn2q_s16(v295, v297);
      v295.i64[0] = vzip1q_s32(vzip1q_s16(v294, v296), v298).u64[0];
      v299.i64[0] = vzip1q_s32(vtrn2q_s16(v294, v296), v299).u64[0];
      v292.i64[0] = 0x202020202020202;
      v292.i64[1] = 0x202020202020202;
      v300 = vandq_s8(vmovl_s16(vtst_s16(*v542.i8, 0x4000400040004)), v292);
      v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v301 = vshlq_u8(v280, vorrq_s8(v300, v292));
      v302 = vmovl_u8(vand_s8(*v301.i8, *v295.i8));
      v303 = vmovl_u8(vand_s8(*&vextq_s8(v301, v301, 8uLL), *v299.i8));
      v304 = vmovl_u8(*v300.i8);
      v305 = vmovl_high_u8(v300);
      v306 = vpaddq_s16(vshlq_u16(v302, vtrn1q_s16(0, v304)), vshlq_u16(v303, vtrn1q_s16(0, v305)));
      v307 = vpaddq_s16(v304, v305);
      v308 = vmovl_u16(*v307.i8);
      v309 = vmovl_high_u16(v307);
      v310 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v308)), vshlq_u32(vmovl_high_u16(v306), vtrn1q_s32(0, v309)));
      v311 = vpaddq_s32(v308, v309);
      v312.i64[0] = v310.u32[0];
      v312.i64[1] = v310.u32[1];
      v313 = v312;
      v312.i64[0] = v310.u32[2];
      v312.i64[1] = v310.u32[3];
      v314 = v312;
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v315 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v316 = vpaddq_s64(vshlq_u64(v313, vzip1q_s64(0, v315)), vshlq_u64(v314, vzip1q_s64(0, v312)));
      v317 = vpaddq_s64(v315, v312);
      v318 = (v272 + 100) & 0x3C;
      v319 = (v316.i64[0] << v318) | (v287 >> -v288);
      if ((v317.i64[0] + v318) >= 0x40)
      {
        *(v271 + ((v289 >> 3) & 0x18)) = v319;
        v319 = v316.i64[0] >> -v318;
      }

      v320 = v317.i64[0] + v289;
      v321 = v319 | (v316.i64[1] << v320);
      if ((v320 & 0x3F) + v317.i64[1] >= 0x40)
      {
        *(v271 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
        v321 = v316.i64[1] >> -(v320 & 0x3F);
        if ((v320 & 0x3F) == 0)
        {
          v321 = 0;
        }
      }

      v322 = v320 + v317.i64[1];
      v323.i64[0] = 0x8000800080008;
      v323.i64[1] = 0x8000800080008;
      v324.i64[0] = -1;
      v324.i64[1] = -1;
      v325 = vandq_s8(vextq_s8(vtstq_s16(v542, v323), 0, 8uLL), v547);
      v326.i64[0] = 0xF000F000F000FLL;
      v326.i64[1] = 0xF000F000F000FLL;
      v327 = vandq_s8(vshlq_u16(v324, vaddq_s16(v325, v326)), v550);
      v328 = vmovl_u16(*v325.i8);
      v329 = vpaddq_s32(vshlq_u32(vmovl_u16(*v327.i8), vtrn1q_s32(0, v328)), vmovl_high_u16(v327));
      v330 = vpaddq_s32(v328, vmovl_high_u16(v325));
      v331.i64[0] = v329.u32[0];
      v331.i64[1] = v329.u32[1];
      v332 = v331;
      v331.i64[0] = v329.u32[2];
      v331.i64[1] = v329.u32[3];
      v333 = v331;
      v331.i64[0] = v330.u32[0];
      v331.i64[1] = v330.u32[1];
      v334 = v331;
      v331.i64[0] = v330.u32[2];
      v331.i64[1] = v330.u32[3];
      v335 = vpaddq_s64(vshlq_u64(v332, vzip1q_s64(0, v334)), vshlq_u64(v333, vzip1q_s64(0, v331)));
      v336 = vpaddq_s64(v334, v331);
      v337 = (v335.i64[0] << v322) | v321;
      if (v336.i64[0] + (v322 & 0x3F) >= 0x40)
      {
        *(v271 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v335.i64[0] >> -(v322 & 0x3F);
        if ((v322 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336.i64[0] + v322;
      v339 = v337 | (v335.i64[1] << v338);
      if ((v338 & 0x3F) + v336.i64[1] >= 0x40)
      {
        *(v271 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v335.i64[1] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = v338 + v336.i64[1];
      v341 = vextq_s8(0, v543, 8uLL);
      v342.i64[0] = 0xF000F000F000FLL;
      v342.i64[1] = 0xF000F000F000FLL;
      v343.i64[0] = -1;
      v343.i64[1] = -1;
      v344 = vandq_s8(vshlq_u16(v343, vaddq_s16(v341, v342)), v521);
      v345 = vmovl_u16(*v341.i8);
      v346 = vmovl_high_u16(v341);
      v347 = vpaddq_s32(vmovl_u16(*v344.i8), vshlq_u32(vmovl_high_u16(v344), vtrn1q_s32(0, v346)));
      v348 = vpaddq_s32(v345, v346);
      v349.i64[0] = v347.u32[0];
      v349.i64[1] = v347.u32[1];
      v350 = v349;
      v349.i64[0] = v347.u32[2];
      v349.i64[1] = v347.u32[3];
      v351 = v349;
      v349.i64[0] = v348.u32[0];
      v349.i64[1] = v348.u32[1];
      v352 = v349;
      v349.i64[0] = v348.u32[2];
      v349.i64[1] = v348.u32[3];
      v353 = vpaddq_s64(vshlq_u64(v350, vzip1q_s64(0, v352)), vshlq_u64(v351, vzip1q_s64(0, v349)));
      v354 = vpaddq_s64(v352, v349);
      v355 = (v353.i64[0] << v340) | v339;
      if (v354.i64[0] + (v340 & 0x3F) >= 0x40)
      {
        *(v271 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v340 & 0x3F);
        if ((v340 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = v354.i64[0] + v340;
      v357 = v355 | (v353.i64[1] << v356);
      if ((v356 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v271 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v353.i64[1] >> -(v356 & 0x3F);
        if ((v356 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356 + v354.i64[1];
      v359.i64[0] = 0xF000F000F000FLL;
      v359.i64[1] = 0xF000F000F000FLL;
      v360.i64[0] = -1;
      v360.i64[1] = -1;
      v361 = vandq_s8(vshlq_u16(v360, vaddq_s16(v543, v359)), v523);
      v362 = vmovl_u16(*v543.i8);
      v363 = vmovl_high_u16(v543);
      v364 = vpaddq_s32(vshlq_u32(vmovl_u16(*v361.i8), vtrn1q_s32(0, v362)), vshlq_u32(vmovl_high_u16(v361), vtrn1q_s32(0, v363)));
      v365 = vpaddq_s32(v362, v363);
      v366.i64[0] = v364.u32[0];
      v366.i64[1] = v364.u32[1];
      v367 = v366;
      v366.i64[0] = v364.u32[2];
      v366.i64[1] = v364.u32[3];
      v368 = v366;
      v366.i64[0] = v365.u32[0];
      v366.i64[1] = v365.u32[1];
      v369 = v366;
      v366.i64[0] = v365.u32[2];
      v366.i64[1] = v365.u32[3];
      v370 = vpaddq_s64(vshlq_u64(v367, vzip1q_s64(0, v369)), vshlq_u64(v368, vzip1q_s64(0, v366)));
      v371 = vpaddq_s64(v369, v366);
      v372 = (v370.i64[0] << v358) | v357;
      if (v371.i64[0] + (v358 & 0x3F) >= 0x40)
      {
        *(v271 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v370.i64[0] >> -(v358 & 0x3F);
        if ((v358 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = v371.i64[0] + v358;
      v374 = v372 | (v370.i64[1] << v373);
      if ((v373 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v271 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
        v374 = v370.i64[1] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v374 = 0;
        }
      }

      v375 = v373 + v371.i64[1];
      v376.i64[0] = 0xF000F000F000FLL;
      v376.i64[1] = 0xF000F000F000FLL;
      v377.i64[0] = -1;
      v377.i64[1] = -1;
      v378 = vandq_s8(vshlq_u16(v377, vaddq_s16(v543, v376)), v525);
      v379 = vmovl_u16(*v543.i8);
      v380 = vmovl_high_u16(v543);
      v381 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), vtrn1q_s32(0, v379)), vshlq_u32(vmovl_high_u16(v378), vtrn1q_s32(0, v380)));
      v382 = vpaddq_s32(v379, v380);
      v383.i64[0] = v381.u32[0];
      v383.i64[1] = v381.u32[1];
      v384 = v383;
      v383.i64[0] = v381.u32[2];
      v383.i64[1] = v381.u32[3];
      v385 = v383;
      v383.i64[0] = v382.u32[0];
      v383.i64[1] = v382.u32[1];
      v386 = v383;
      v383.i64[0] = v382.u32[2];
      v383.i64[1] = v382.u32[3];
      v387 = vpaddq_s64(vshlq_u64(v384, vzip1q_s64(0, v386)), vshlq_u64(v385, vzip1q_s64(0, v383)));
      v388 = vpaddq_s64(v386, v383);
      v389 = (v387.i64[0] << v375) | v374;
      if (v388.i64[0] + (v375 & 0x3F) >= 0x40)
      {
        *(v271 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v387.i64[0] >> -(v375 & 0x3F);
        if ((v375 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388.i64[0] + v375;
      v391 = v389 | (v387.i64[1] << v390);
      if ((v390 & 0x3F) + v388.i64[1] >= 0x40)
      {
        *(v271 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
        v391 = v387.i64[1] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v391 = 0;
        }
      }

      v392 = v390 + v388.i64[1];
      v393.i64[0] = 0xF000F000F000FLL;
      v393.i64[1] = 0xF000F000F000FLL;
      v394.i64[0] = -1;
      v394.i64[1] = -1;
      v395 = vandq_s8(vshlq_u16(v394, vaddq_s16(v543, v393)), v528);
      v396 = vmovl_u16(*v543.i8);
      v397 = vmovl_high_u16(v543);
      v398 = vpaddq_s32(vshlq_u32(vmovl_u16(*v395.i8), vtrn1q_s32(0, v396)), vshlq_u32(vmovl_high_u16(v395), vtrn1q_s32(0, v397)));
      v399 = vpaddq_s32(v396, v397);
      v400.i64[0] = v398.u32[0];
      v400.i64[1] = v398.u32[1];
      v401 = v400;
      v400.i64[0] = v398.u32[2];
      v400.i64[1] = v398.u32[3];
      v402 = v400;
      v400.i64[0] = v399.u32[0];
      v400.i64[1] = v399.u32[1];
      v403 = v400;
      v400.i64[0] = v399.u32[2];
      v400.i64[1] = v399.u32[3];
      v404 = vpaddq_s64(vshlq_u64(v401, vzip1q_s64(0, v403)), vshlq_u64(v402, vzip1q_s64(0, v400)));
      v405 = vpaddq_s64(v403, v400);
      v406 = (v404.i64[0] << v392) | v391;
      if (v405.i64[0] + (v392 & 0x3F) >= 0x40)
      {
        *(v271 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
        v406 = v404.i64[0] >> -(v392 & 0x3F);
        if ((v392 & 0x3F) == 0)
        {
          v406 = 0;
        }
      }

      v407 = v405.i64[1];
      v408 = v405.i64[0] + v392;
      v409 = (v405.i64[0] + v392) & 0x3F;
      v410 = v406 | (v404.i64[1] << v408);
      if ((v409 + v405.i64[1]) >= 0x40)
      {
        *(v271 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
        v410 = v404.i64[1] >> -v409;
        if (!v409)
        {
          v410 = 0;
        }
      }

      v411 = 0;
      v412.i64[0] = 0xF000F000F000FLL;
      v412.i64[1] = 0xF000F000F000FLL;
      v413.i64[0] = -1;
      v413.i64[1] = -1;
      v414 = v408 + v407;
      do
      {
        v415 = vandq_s8(vshlq_u16(v413, vaddq_s16(v544, v412)), *(&v529 + v411));
        v416 = vmovl_u16(*v544.i8);
        v417 = vmovl_high_u16(v544);
        v418 = vpaddq_s32(vshlq_u32(vmovl_u16(*v415.i8), vtrn1q_s32(0, v416)), vshlq_u32(vmovl_high_u16(v415), vtrn1q_s32(0, v417)));
        v419 = vpaddq_s32(v416, v417);
        v420.i64[0] = v418.u32[0];
        v420.i64[1] = v418.u32[1];
        v421 = v420;
        v420.i64[0] = v418.u32[2];
        v420.i64[1] = v418.u32[3];
        v422 = v420;
        v420.i64[0] = v419.u32[0];
        v420.i64[1] = v419.u32[1];
        v423 = v420;
        v420.i64[0] = v419.u32[2];
        v420.i64[1] = v419.u32[3];
        v424 = vpaddq_s64(vshlq_u64(v421, vzip1q_s64(0, v423)), vshlq_u64(v422, vzip1q_s64(0, v420)));
        v425 = vpaddq_s64(v423, v420);
        v426 = (v424.i64[0] << v414) | v410;
        if (v425.i64[0] + (v414 & 0x3F) >= 0x40)
        {
          *(v271 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
          v426 = v424.i64[0] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v426 = 0;
          }
        }

        v427 = v425.i64[0] + v414;
        v410 = v426 | (v424.i64[1] << v427);
        if ((v427 & 0x3F) + v425.i64[1] >= 0x40)
        {
          *(v271 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
          v410 = v424.i64[1] >> -(v427 & 0x3F);
          if ((v427 & 0x3F) == 0)
          {
            v410 = 0;
          }
        }

        v414 = v427 + v425.i64[1];
        v411 += 16;
      }

      while (v411 != 64);
      v428 = 0;
      v429.i64[0] = 0xF000F000F000FLL;
      v429.i64[1] = 0xF000F000F000FLL;
      v430.i64[0] = -1;
      v430.i64[1] = -1;
      do
      {
        v431 = vandq_s8(vshlq_u16(v430, vaddq_s16(v545, v429)), *(&v533 + v428));
        v432 = vmovl_u16(*v545.i8);
        v433 = vmovl_high_u16(v545);
        v434 = vpaddq_s32(vshlq_u32(vmovl_u16(*v431.i8), vtrn1q_s32(0, v432)), vshlq_u32(vmovl_high_u16(v431), vtrn1q_s32(0, v433)));
        v435 = vpaddq_s32(v432, v433);
        v436.i64[0] = v434.u32[0];
        v436.i64[1] = v434.u32[1];
        v437 = v436;
        v436.i64[0] = v434.u32[2];
        v436.i64[1] = v434.u32[3];
        v438 = v436;
        v436.i64[0] = v435.u32[0];
        v436.i64[1] = v435.u32[1];
        v439 = v436;
        v436.i64[0] = v435.u32[2];
        v436.i64[1] = v435.u32[3];
        v440 = vpaddq_s64(vshlq_u64(v437, vzip1q_s64(0, v439)), vshlq_u64(v438, vzip1q_s64(0, v436)));
        v441 = vpaddq_s64(v439, v436);
        v442 = (v440.i64[0] << v414) | v410;
        if (v441.i64[0] + (v414 & 0x3F) >= 0x40)
        {
          *(v271 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
          v442 = v440.i64[0] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v442 = 0;
          }
        }

        v443 = v441.i64[0] + v414;
        v410 = v442 | (v440.i64[1] << v443);
        if ((v443 & 0x3F) + v441.i64[1] >= 0x40)
        {
          *(v271 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
          v410 = v440.i64[1] >> -(v443 & 0x3F);
          if ((v443 & 0x3F) == 0)
          {
            v410 = 0;
          }
        }

        v414 = v443 + v441.i64[1];
        v428 += 16;
      }

      while (v428 != 64);
      v444 = 0;
      v445.i64[0] = 0xF000F000F000FLL;
      v445.i64[1] = 0xF000F000F000FLL;
      v446.i64[0] = -1;
      v446.i64[1] = -1;
      do
      {
        v447 = vandq_s8(vshlq_u16(v446, vaddq_s16(v546, v445)), *(&v537 + v444));
        v448 = vmovl_u16(*v546.i8);
        v449 = vmovl_high_u16(v546);
        v450 = vpaddq_s32(vshlq_u32(vmovl_u16(*v447.i8), vtrn1q_s32(0, v448)), vshlq_u32(vmovl_high_u16(v447), vtrn1q_s32(0, v449)));
        v451 = vpaddq_s32(v448, v449);
        v452.i64[0] = v450.u32[0];
        v452.i64[1] = v450.u32[1];
        v453 = v452;
        v452.i64[0] = v450.u32[2];
        v452.i64[1] = v450.u32[3];
        v454 = v452;
        v452.i64[0] = v451.u32[0];
        v452.i64[1] = v451.u32[1];
        v455 = v452;
        v452.i64[0] = v451.u32[2];
        v452.i64[1] = v451.u32[3];
        v456 = vpaddq_s64(vshlq_u64(v453, vzip1q_s64(0, v455)), vshlq_u64(v454, vzip1q_s64(0, v452)));
        v457 = vpaddq_s64(v455, v452);
        v458 = (v456.i64[0] << v414) | v410;
        if (v457.i64[0] + (v414 & 0x3F) >= 0x40)
        {
          *(v271 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v458;
          v458 = v456.i64[0] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v458 = 0;
          }
        }

        v459 = v457.i64[0] + v414;
        v410 = v458 | (v456.i64[1] << v459);
        if ((v459 & 0x3F) + v457.i64[1] >= 0x40)
        {
          *(v271 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
          v410 = v456.i64[1] >> -(v459 & 0x3F);
          if ((v459 & 0x3F) == 0)
          {
            v410 = 0;
          }
        }

        v414 = v459 + v457.i64[1];
        v444 += 16;
      }

      while (v444 != 64);
      if ((v414 & 0x3F) != 0)
      {
        *(v271 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      }

      result = (v414 - v272 + 7) >> 3;
      v190 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i64[0];
    v190 = 7;
    result = 8;
  }

  *a2 = v190;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
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

    if (v7 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 += result;
    if (v7 < 5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 5)
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

    if (v12 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
    v9 += result;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v21 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v6;
    }

    if (v21 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 8, a2, v23, v22);
    v9 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v24 = v7 - 12;
  if (v7 >= 0xD && v6)
  {
    if (v6 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v6;
    }

    if (v24 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v7 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 12, a2, v26, v25);
    v9 += result;
  }

  else
  {
    a4[5] = 0;
    if (v7 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v6 >= 5)
  {
    if (v16 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v6 - 4;
    }

    if (v21 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 128), a2, v28, v27);
    v9 += result;
    if (v7 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v7 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v6 < 5)
  {
    goto LABEL_79;
  }

  if (v16 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v6 - 4;
  }

  if (v24 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v7 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 192), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x1D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x800;
  v8.i16[0] = v6;
  v8.i16[1] = v6 >> 5;
  v8.i16[2] = v6 >> 10;
  v8.i16[3] = v6 >> 15;
  v9 = vand_s8(vshl_u32(vdup_n_s32(v6), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v10 = v4 + 100;
  v11 = vand_s8(v8, 0x1F001F001F001FLL);
  *v12.i8 = v11;
  v12.u64[1] = v11;
  v13.i16[0] = v9.i16[0];
  v13.i16[1] = v9.i16[2];
  v13.i16[2] = v6 >> 28;
  v13.i16[3] = BYTE4(v6) & 0xF;
  v13.i16[4] = v9.i16[0];
  v13.i16[5] = v9.i16[2];
  v13.i32[3] = v13.i32[1];
  v14.i64[0] = 0x1000100010001;
  v14.i64[1] = 0x1000100010001;
  v15 = vaddq_s16(v13, v14);
  v14.i64[0] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v14.i64[1] = *&v11 & 0xFFE3FFE3FFE3FFE3;
  v16.i64[0] = 0x3000300030003;
  v16.i64[1] = 0x3000300030003;
  v406 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v404 = v47;
    v405 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v402 = v47;
    v403 = v47;
    v43 = v17;
  }

  else
  {
    v19 = vmovl_u8(*&vpaddq_s8(v18, v18));
    v20 = vmovl_u16(*&vpaddq_s16(v19, v19));
    v21 = vpaddq_s32(v20, v20).u64[0];
    v22.i64[0] = v21;
    v22.i64[1] = HIDWORD(v21);
    v23 = v22;
    v24 = vaddvq_s64(v22);
    v25 = v24 + v10;
    v26 = v24 <= 0x80 && v7 >= v25;
    v27 = !v26;
    v28 = 0uLL;
    if (v26)
    {
      v29 = v10 & 0x3C;
      v30 = vaddq_s64(vzip1q_s64(0, v23), vdupq_n_s64(v29));
      v31 = (v5 + ((v10 >> 3) & 0x18));
      v28 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v31, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v30)), vshlq_u64(vdupq_lane_s64(v31->i64[0], 0), vnegq_s64(v30)));
      if (v24 + v29 >= 0x81)
      {
        v28 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v31[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v30)), vshlq_u64(vdupq_laneq_s64(v31[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v30))), v28);
      }

      v10 = v25;
    }

    v32 = vzip1_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vshlq_u64(v28, vnegq_s64(v33));
    v35 = vuzp1q_s32(vzip1q_s64(v28, v34), vzip2q_s64(v28, v34));
    v36 = vshlq_u32(v35, vnegq_s32((*&v19 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v37 = vuzp1q_s16(vzip1q_s32(v35, v36), vzip2q_s32(v35, v36));
    v38 = vshlq_u16(v37, vnegq_s16((*&v18 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v39 = vuzp1q_s8(vzip1q_s16(v37, v38), vzip2q_s16(v37, v38));
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v38, v18);
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    v41 = vqtbl1q_s8(vandq_s8(vaddq_s8(v40, v38), v39), xmmword_29D2F0F70);
    *v39.i8 = vdup_lane_s32(*v41.i8, 0);
    *v38.i8 = vdup_lane_s32(*v41.i8, 1);
    v42 = vdupq_laneq_s32(v41, 2).u64[0];
    v41.i64[0] = vdupq_laneq_s32(v41, 3).u64[0];
    v43 = vsubw_s8(v17, *v39.i8);
    v44 = vsubw_s8(v17, *v38.i8);
    v45 = vsubw_s8(v17, v42);
    v46 = vsubw_s8(v17, *v41.i8);
    v404 = vmovl_s8(vceqz_s8(*v39.i8));
    v402 = vmovl_s8(vceqz_s8(*v38.i8));
    v403 = vmovl_s8(vceqz_s8(v42));
    v405 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v408 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v408, v408));
  v51 = vpaddq_s32(v50, v50).u64[0];
  v52.i64[0] = v51;
  v52.i64[1] = HIDWORD(v51);
  v53 = v52;
  v54 = vaddvq_s64(v52);
  v55 = v54 + v10;
  if (v54 <= 0x80 && v7 >= v55)
  {
    v57 = v10 & 0x3F;
    v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v57));
    v59 = (v5 + 8 * (v10 >> 6));
    v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
    if (v54 + v57 >= 0x81)
    {
      v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v49);
    }

    v10 = v55;
  }

  else
  {
    v27 = 1;
  }

  v60 = v11.i8[0] & 3;
  if (v60 == 2)
  {
    if (v7 < v10 + 8)
    {
      v27 = 1;
    }

    else
    {
      v10 += 8;
    }

    v61 = v7 < v10 + 8;
    if (v7 >= v10 + 8)
    {
      v10 += 8;
    }

    v27 |= v61;
  }

  v62 = 0uLL;
  v397 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v397, v397));
  v64 = vpaddq_s32(v63, v63).u64[0];
  v65.i64[0] = v64;
  v65.i64[1] = HIDWORD(v64);
  v66 = v65;
  v67 = vaddvq_s64(v65);
  v68 = v67 + v10;
  if (v67 <= 0x80 && v7 >= v68)
  {
    v71 = v10 & 0x3F;
    v72 = vaddq_s64(vzip1q_s64(0, v66), vdupq_n_s64(v71));
    v73 = (v5 + 8 * (v10 >> 6));
    v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
    if (v67 + v71 >= 0x81)
    {
      v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v70);
    }

    v10 = v68;
  }

  else
  {
    v27 = 1;
    v70 = 0uLL;
  }

  v398 = v43;
  v74 = vmovl_u16(*&vpaddq_s16(v43, v43));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v78 + v10;
  if (v78 <= 0x80 && v7 >= v79)
  {
    v81 = v10 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v81));
    v83 = (v5 + 8 * (v10 >> 6));
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v78 + v81 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v62);
    }

    v10 = v79;
  }

  else
  {
    v27 = 1;
  }

  v84 = v78 + v10;
  v85 = 0uLL;
  if (v78 <= 0x80 && v7 >= v84)
  {
    v88 = v10 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v88));
    v90 = (v5 + 8 * (v10 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v78 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v10 = v84;
  }

  else
  {
    v27 = 1;
    v87 = 0uLL;
  }

  v91 = v78 + v10;
  v92 = v78 <= 0x80 && v7 >= v91;
  v407 = v12;
  if (v92)
  {
    v93 = v10 & 0x3F;
    v94 = vaddq_s64(vzip1q_s64(0, v77), vdupq_n_s64(v93));
    v95 = (v5 + 8 * (v10 >> 6));
    v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v78 + v93 >= 0x81)
    {
      v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v85);
    }

    v10 = v91;
  }

  else
  {
    v27 = 1;
  }

  v96 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v97 = vpaddq_s32(v96, v96).u64[0];
  v98.i64[0] = v97;
  v98.i64[1] = HIDWORD(v97);
  v99 = v98;
  v100 = vaddvq_s64(v98);
  v101 = v100 + v10;
  v102 = 0uLL;
  if (v100 <= 0x80 && v7 >= v101)
  {
    v105 = v10 & 0x3F;
    v106 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v105));
    v107 = (v5 + 8 * (v10 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v100 + v105 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
    }

    v10 = v101;
  }

  else
  {
    v27 = 1;
    v104 = 0uLL;
  }

  v108 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v108)
  {
    v110 = v10 & 0x3F;
    v111 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v110));
    v112 = (v5 + 8 * (v10 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v100 + v110 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v102);
    }

    v10 = v108;
  }

  else
  {
    v27 = 1;
  }

  v399 = v44;
  v113 = v100 + v10;
  v114 = 0uLL;
  if (v100 <= 0x80 && v7 >= v113)
  {
    v117 = v10 & 0x3F;
    v118 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v117));
    v119 = (v5 + 8 * (v10 >> 6));
    v116 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
    if (v100 + v117 >= 0x81)
    {
      v116 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v116);
    }

    v10 = v113;
  }

  else
  {
    v27 = 1;
    v116 = 0uLL;
  }

  v120 = v100 + v10;
  if (v100 <= 0x80 && v7 >= v120)
  {
    v122 = v10 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v122));
    v124 = (v5 + 8 * (v10 >> 6));
    v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v100 + v122 >= 0x81)
    {
      v114 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v114);
    }

    v10 = v120;
  }

  else
  {
    v27 = 1;
  }

  v125 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v126 = vpaddq_s32(v125, v125).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v129 + v10;
  v131 = 0uLL;
  if (v129 <= 0x80 && v7 >= v130)
  {
    v134 = v10 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v134));
    v136 = (v5 + 8 * (v10 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v129 + v134 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v133);
    }

    v10 = v130;
  }

  else
  {
    v27 = 1;
    v133 = 0uLL;
  }

  v137 = v129 + v10;
  if (v129 <= 0x80 && v7 >= v137)
  {
    v139 = v10 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v139));
    v141 = (v5 + 8 * (v10 >> 6));
    v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v129 + v139 >= 0x81)
    {
      v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v131);
    }

    v10 = v137;
  }

  else
  {
    v27 = 1;
  }

  v400 = v45;
  v142 = v129 + v10;
  v143 = 0uLL;
  if (v129 <= 0x80 && v7 >= v142)
  {
    v146 = v10 & 0x3F;
    v147 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v146));
    v148 = (v5 + 8 * (v10 >> 6));
    v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v129 + v146 >= 0x81)
    {
      v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v145);
    }

    v10 = v142;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v27 = 1;
    v145 = 0uLL;
    if (v129 > 0x80)
    {
      goto LABEL_124;
    }
  }

  v149 = v129 + v10;
  if (v7 < v129 + v10)
  {
LABEL_124:
    v149 = v10;
    v27 = 1;
    goto LABEL_125;
  }

  v150 = v10 & 0x3F;
  v151 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v150));
  v152 = (v5 + 8 * (v10 >> 6));
  v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v129 + v150 >= 0x81)
  {
    v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v143);
  }

LABEL_125:
  v401 = v46;
  v153 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v154 = vpaddq_s32(v153, v153).u64[0];
  v155.i64[0] = v154;
  v155.i64[1] = HIDWORD(v154);
  v156 = v155;
  v157 = vaddvq_s64(v155);
  v158 = v157;
  v159 = 0uLL;
  if (v157 > 0x80 || (v160 = v157 + v149, v7 < v157 + v149))
  {
    v160 = v149;
    v27 = 1;
    v163 = 0uLL;
  }

  else
  {
    v161 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v149 & 0x3F));
    v162 = (v5 + 8 * (v149 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v158 + (v149 & 0x3F) >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
    }
  }

  if (v158 > 0x80 || (v164 = v158 + v160, v7 < v158 + v160))
  {
    v164 = v160;
    v27 = 1;
  }

  else
  {
    v165 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v160 & 0x3F));
    v166 = (v5 + 8 * (v160 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v158 + (v160 & 0x3F) >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v159);
    }
  }

  if (v158 > 0x80 || (v167 = v158 + v164, v7 < v158 + v164))
  {
    v167 = v164;
    v27 = 1;
    v171 = 0uLL;
  }

  else
  {
    v168 = v164 & 0x3F;
    v169 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v168));
    v170 = (v5 + 8 * (v164 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v158 + v168 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
    }
  }

  if (v158 > 0x80)
  {
    goto LABEL_149;
  }

  v172 = v158 + v167;
  if (v7 < v158 + v167)
  {
    goto LABEL_149;
  }

  v173 = v167 & 0x3F;
  v174 = vaddq_s64(vzip1q_s64(0, v156), vdupq_n_s64(v173));
  v175 = (v5 + 8 * (v167 >> 6));
  v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v175, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v175->i64[0], 0), vnegq_s64(v174)));
  if (v158 + v173 >= 0x81)
  {
    v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v175[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v175[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
  }

  if ((v27 & 1) != 0 || (v177 = a4 + 1, v7 + 8 * v177 - v172 - 2048 >= 9) || v60 == 2)
  {
LABEL_149:
    v177 = 0;
    *&v178 = 0xFFFFFFFF0000FFFFLL;
    *(&v178 + 1) = 0xFFFFFFFF0000FFFFLL;
    *a1 = v178;
    *(a1 + 16) = v178;
    v179 = (a1 + a2);
    *v179 = v178;
    v179[1] = v178;
  }

  else
  {
    v181 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v182 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v183 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v184 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
    v185 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v186 = vzip1_s32(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
    v187 = ((2 * *(v5 + (((v4 + 36) >> 3) & 8) + 8)) << ~(v4 + 36)) | (*(v5 + (((v4 + 36) >> 3) & 8)) >> (v4 + 36));
    v188.i64[0] = v181.u32[0];
    v188.i64[1] = v181.u32[1];
    v189 = vshlq_u64(v49, vnegq_s64(v188));
    v392 = vzip1q_s64(v49, v189);
    v394 = vzip2q_s64(v49, v189);
    v188.i64[0] = v182.u32[0];
    v188.i64[1] = v182.u32[1];
    v190 = vshlq_u64(v70, vnegq_s64(v188));
    v388 = vzip1q_s64(v70, v190);
    v390 = vzip2q_s64(v70, v190);
    v188.i64[0] = v183.u32[0];
    v188.i64[1] = v183.u32[1];
    v191 = vnegq_s64(v188);
    v192 = vshlq_u64(v62, v191);
    v384 = vzip1q_s64(v62, v192);
    v386 = vzip2q_s64(v62, v192);
    v193 = vshlq_u64(v87, v191);
    v382 = vzip2q_s64(v87, v193);
    v194 = vzip1q_s64(v87, v193);
    v195 = vshlq_u64(v85, v191);
    v196 = vzip2q_s64(v85, v195);
    v197 = vzip1q_s64(v85, v195);
    v188.i64[0] = v184.u32[0];
    v188.i64[1] = v184.u32[1];
    v198 = vnegq_s64(v188);
    v199 = vshlq_u64(v104, v198);
    v200 = vzip2q_s64(v104, v199);
    v201 = vzip1q_s64(v104, v199);
    v202 = vshlq_u64(v102, v198);
    v203 = vzip2q_s64(v102, v202);
    v204 = vzip1q_s64(v102, v202);
    v205 = vshlq_u64(v116, v198);
    v206 = vzip2q_s64(v116, v205);
    v207 = vzip1q_s64(v116, v205);
    v208 = vshlq_u64(v114, v198);
    v209 = vzip2q_s64(v114, v208);
    v210 = vzip1q_s64(v114, v208);
    v188.i64[0] = v185.u32[0];
    v188.i64[1] = v185.u32[1];
    v211 = vnegq_s64(v188);
    v212 = vshlq_u64(v133, v211);
    v213 = vzip2q_s64(v133, v212);
    v214 = vzip1q_s64(v133, v212);
    v215 = vshlq_u64(v131, v211);
    v216 = vzip2q_s64(v131, v215);
    v217 = vzip1q_s64(v131, v215);
    v218 = vshlq_u64(v145, v211);
    v219 = vzip2q_s64(v145, v218);
    v220 = vzip1q_s64(v145, v218);
    v221 = vshlq_u64(v143, v211);
    v222 = vzip2q_s64(v143, v221);
    v223 = vzip1q_s64(v143, v221);
    v188.i64[0] = v186.u32[0];
    v188.i64[1] = v186.u32[1];
    v396 = vnegq_s64(v188);
    v224 = vshlq_u64(v163, v396);
    v225 = vzip2q_s64(v163, v224);
    v226 = vzip1q_s64(v163, v224);
    v227 = vshlq_u64(v159, v396);
    v228 = vzip2q_s64(v159, v227);
    v229 = vzip1q_s64(v159, v227);
    v230 = vshlq_u64(v171, v396);
    v231 = vzip2q_s64(v171, v230);
    v232 = vzip1q_s64(v171, v230);
    v233 = vuzp1q_s32(v392, v394);
    v234 = vuzp1q_s32(v388, v390);
    v235 = vuzp1q_s32(v384, v386);
    v236 = vuzp1q_s32(v194, v382);
    v237 = vuzp1q_s32(v197, v196);
    v238 = vuzp1q_s32(v201, v200);
    v239 = vuzp1q_s32(v204, v203);
    v240 = vuzp1q_s32(v207, v206);
    v241 = vuzp1q_s32(v210, v209);
    v242 = vuzp1q_s32(v214, v213);
    v243 = vuzp1q_s32(v217, v216);
    v244 = vuzp1q_s32(v220, v219);
    v245 = vuzp1q_s32(v223, v222);
    v246 = vuzp1q_s32(v226, v225);
    v247 = vuzp1q_s32(v229, v228);
    v226.i64[0] = 0xFFFF0000FFFFLL;
    v226.i64[1] = 0xFFFF0000FFFFLL;
    v248 = vuzp1q_s32(v232, v231);
    v249 = vshlq_u32(v233, vnegq_s32(vandq_s8(v408, v226)));
    v393 = vzip1q_s32(v233, v249);
    v395 = vzip2q_s32(v233, v249);
    v231.i64[0] = 0xFFFF0000FFFFLL;
    v231.i64[1] = 0xFFFF0000FFFFLL;
    v250 = vshlq_u32(v234, vnegq_s32(vandq_s8(v397, v231)));
    v389 = vzip1q_s32(v234, v250);
    v391 = vzip2q_s32(v234, v250);
    v251 = vnegq_s32(vandq_s8(v398, v231));
    v252 = vshlq_u32(v235, v251);
    v385 = vzip1q_s32(v235, v252);
    v387 = vzip2q_s32(v235, v252);
    v253 = vshlq_u32(v236, v251);
    v381 = vzip1q_s32(v236, v253);
    v383 = vzip2q_s32(v236, v253);
    v254 = vshlq_u32(v237, v251);
    v379 = vzip1q_s32(v237, v254);
    v380 = vzip2q_s32(v237, v254);
    v213.i64[0] = 0xFFFF0000FFFFLL;
    v213.i64[1] = 0xFFFF0000FFFFLL;
    v255 = vnegq_s32(vandq_s8(v399, v213));
    v256 = vshlq_u32(v238, v255);
    v377 = vzip1q_s32(v238, v256);
    v378 = vzip2q_s32(v238, v256);
    v257 = vshlq_u32(v239, v255);
    v375 = vzip1q_s32(v239, v257);
    v376 = vzip2q_s32(v239, v257);
    v258 = vshlq_u32(v240, v255);
    v373 = vzip1q_s32(v240, v258);
    v374 = vzip2q_s32(v240, v258);
    v259 = vshlq_u32(v241, v255);
    v372 = vzip2q_s32(v241, v259);
    v260 = vzip1q_s32(v241, v259);
    v241.i64[0] = 0xFFFF0000FFFFLL;
    v241.i64[1] = 0xFFFF0000FFFFLL;
    v261 = vnegq_s32(vandq_s8(v400, v241));
    v262 = vshlq_u32(v242, v261);
    v263 = vzip2q_s32(v242, v262);
    v264 = vzip1q_s32(v242, v262);
    v265 = vshlq_u32(v243, v261);
    v266 = vzip2q_s32(v243, v265);
    v267 = vzip1q_s32(v243, v265);
    v268 = vshlq_u32(v244, v261);
    v269 = vzip2q_s32(v244, v268);
    v270 = vzip1q_s32(v244, v268);
    v271 = vshlq_u32(v245, v261);
    v272 = vzip2q_s32(v245, v271);
    v273 = vzip1q_s32(v245, v271);
    v245.i64[0] = 0xFFFF0000FFFFLL;
    v245.i64[1] = 0xFFFF0000FFFFLL;
    v274 = vnegq_s32(vandq_s8(v401, v245));
    v275 = vshlq_u32(v246, v274);
    v276 = vzip2q_s32(v246, v275);
    v277 = vzip1q_s32(v246, v275);
    v278 = vshlq_u32(v247, v274);
    v279 = vzip2q_s32(v247, v278);
    v280 = vzip1q_s32(v247, v278);
    *v249.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v187), xmmword_29D2F10A0));
    v278.i32[0] = v187;
    LOWORD(v187) = v249.i16[2];
    v278.i16[2] = v249.i16[0];
    v281 = vshlq_u32(v248, v274);
    v282 = vuzp1q_s16(v264, v263);
    v283 = vuzp1q_s16(v267, v266);
    v284 = vuzp1q_s16(v277, v276);
    v285 = vuzp1q_s16(v280, v279);
    v286 = vuzp1q_s16(vzip1q_s32(v248, v281), vzip2q_s32(v248, v281));
    v281.i64[0] = 0x10001000100010;
    v281.i64[1] = 0x10001000100010;
    v252.i64[0] = 0xF000F000F000FLL;
    v252.i64[1] = 0xF000F000F000FLL;
    v279.i64[0] = 0x10001000100010;
    v279.i64[1] = 0x10001000100010;
    v287 = vshlq_s16(vuzp1q_s16(v389, v391), vsubq_s16(v279, v397));
    v288 = vsubq_s16(v279, v398);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v289 = vaddq_s16(v397, v248);
    v290 = vaddq_s16(v398, v248);
    v210.i64[0] = 0x10001000100010;
    v210.i64[1] = 0x10001000100010;
    v291 = vsubq_s16(v210, v399);
    v276.i64[0] = 0xF000F000F000FLL;
    v276.i64[1] = 0xF000F000F000FLL;
    v292 = vaddq_s16(v399, v276);
    v293 = vshlq_s16(vuzp1q_s16(v377, v378), v291);
    v294 = vshlq_s16(vuzp1q_s16(v375, v376), v291);
    v295 = vshlq_s16(vuzp1q_s16(v373, v374), v291);
    v296 = vshlq_s16(vuzp1q_s16(v260, v372), v291);
    v291.i64[0] = 0x10001000100010;
    v291.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v291, v400);
    v240.i64[0] = 0xF000F000F000FLL;
    v240.i64[1] = 0xF000F000F000FLL;
    v298 = vaddq_s16(v400, v240);
    v299 = vshlq_s16(v282, v297);
    v300 = vshlq_s16(v283, v297);
    v301 = vshlq_s16(vuzp1q_s16(v270, v269), v297);
    v302 = vshlq_s16(vuzp1q_s16(v273, v272), v297);
    v269.i64[0] = 0x10001000100010;
    v269.i64[1] = 0x10001000100010;
    v303 = vsubq_s16(v269, v401);
    v235.i64[0] = 0xF000F000F000FLL;
    v235.i64[1] = 0xF000F000F000FLL;
    v304 = vaddq_s16(v401, v235);
    v305 = vshlq_s16(vshlq_s16(vuzp1q_s16(v393, v395), vsubq_s16(v281, v408)), vaddq_s16(v408, v252));
    v306 = vshlq_s16(v287, v289);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v385, v387), v288), v290);
    v308 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v383), v288), v290);
    v309 = vshlq_s16(vshlq_s16(vuzp1q_s16(v379, v380), v288), v290);
    v310 = vshlq_s16(v300, v298);
    v311 = vshlq_s16(v302, v298);
    v312 = vshlq_u64(v176, v396);
    v313 = vuzp1q_s32(vzip1q_s64(v176, v312), vzip2q_s64(v176, v312));
    v314 = vshlq_u32(v313, v274);
    v315 = vshlq_s16(vshlq_s16(v286, v303), v304);
    v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v313, v314), vzip2q_s32(v313, v314)), v303), v304);
    v317 = vandq_s8(v305, v404);
    v318 = vdupq_lane_s64(v305.i64[0], 0);
    v319 = vaddq_s16(v317, v306);
    v320 = vandq_s8(v402, v318);
    v321 = vsubq_s16(vshlq_s16(v293, v292), v320);
    v322 = vsubq_s16(vshlq_s16(v294, v292), v320);
    v323 = vsubq_s16(vshlq_s16(v295, v292), v320);
    v324 = vsubq_s16(vshlq_s16(v296, v292), v320);
    v325 = vandq_s8(v403, v318);
    v326 = vsubq_s16(vshlq_s16(v299, v298), v325);
    v327 = vsubq_s16(v310, v325);
    v328 = vsubq_s16(vshlq_s16(v301, v298), v325);
    v329 = vandq_s8(v404, v318);
    v330 = vsubq_s16(v311, v325);
    v331 = vandq_s8(v405, v318);
    v332 = vsubq_s16(vshlq_s16(vshlq_s16(v284, v303), v304), v331);
    v333 = vsubq_s16(vshlq_s16(vshlq_s16(v285, v303), v304), v331);
    v334 = vsubq_s16(v315, v331);
    v335 = vsubq_s16(v316, v331);
    v336 = vsubq_s16(v307, v329);
    v337 = vsubq_s16(v308, v329);
    v338.i64[0] = 0x1000100010001;
    v338.i64[1] = 0x1000100010001;
    v339 = vsubq_s16(v319, v329);
    v340 = vsubq_s16(v309, v329);
    v278.i16[3] = v187;
    v341 = vdupq_lane_s64(v278.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v406, v338)))
    {
      v342 = vnegq_s16(vandq_s8(v407, v338));
      v343.i64[0] = v340.i64[0];
      v344.i64[1] = v339.i64[1];
      v343.i64[1] = v339.i64[0];
      v344.i64[0] = v340.i64[1];
      v345 = vbslq_s8(v342, v344, v339);
      v346 = vbslq_s8(v342, v343, v340);
      v344.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v344.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v347 = vandq_s8(vqtbl4q_s8(*(&v336 - 1), v344), v342);
      v409.val[0] = vaddq_s16(v345, vandq_s8(vqtbl4q_s8(*(&v336 - 1), xmmword_29D2F10B0), v342));
      v409.val[1] = vaddq_s16(v336, vandq_s8(vqtbl4q_s8(*(&v336 - 1), xmmword_29D2F10C0), v342));
      v409.val[2] = vaddq_s16(v337, v347);
      v409.val[3] = vaddq_s16(v346, v347);
      v348 = vandq_s8(vqtbl4q_s8(v409, v344), v342);
      v339 = vaddq_s16(v409.val[0], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10D0), v342));
      v336 = vaddq_s16(v409.val[1], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10E0), v342));
      v337 = vaddq_s16(v409.val[2], v348);
      v340 = vaddq_s16(v409.val[3], v348);
      v410.val[0] = vaddq_s16(v321, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F10B0), v342));
      v410.val[1] = vaddq_s16(v322, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F10F0), v342));
      v410.val[2] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v321.i8, v344), v342));
      v410.val[3] = vaddq_s16(v324, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F1100), v342));
      v349 = vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F10D0), v342);
      v409.val[0] = vandq_s8(vqtbl4q_s8(v410, v344), v342);
      v321 = vaddq_s16(v349, v410.val[0]);
      v322 = vaddq_s16(v410.val[1], v349);
      v323 = vaddq_s16(v410.val[2], v409.val[0]);
      v324 = vaddq_s16(v410.val[3], v409.val[0]);
      v410.val[0] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F0EB0), v342));
      v410.val[1] = vaddq_s16(v327, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F0FB0), v342));
      v410.val[2] = vaddq_s16(v328, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F10B0), v342));
      v410.val[3] = vaddq_s16(v330, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F10C0), v342));
      v409.val[1] = vandq_s8(vqtbl4q_s8(v410, v344), v342);
      v326 = vaddq_s16(v410.val[0], v409.val[1]);
      v327 = vaddq_s16(v410.val[1], v409.val[1]);
      v328 = vaddq_s16(v410.val[2], vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F0FE0), v342));
      v330 = vaddq_s16(v410.val[3], vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F1110), v342));
      v409.val[2] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F0EB0), v342));
      v409.val[3] = vaddq_s16(v333, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F1120), v342));
      v350 = v407;
      v410.val[0] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F10B0), v342));
      v410.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F10C0), v342));
      v351 = vandq_s8(vqtbl4q_s8(*(&v409 + 32), v344), v342);
      v332 = vaddq_s16(v409.val[2], v351);
      v333 = vaddq_s16(v409.val[3], v351);
      v334 = vaddq_s16(v410.val[0], vandq_s8(vqtbl4q_s8(*(&v409 + 32), xmmword_29D2F0FE0), v342));
      v335 = vaddq_s16(v410.val[1], vandq_s8(vqtbl4q_s8(*(&v409 + 32), xmmword_29D2F1130), v342));
    }

    else
    {
      v350 = v407;
    }

    v352 = vaddq_s16(v339, v341);
    v353 = vaddq_s16(v336, v341);
    v354 = vaddq_s16(v337, v341);
    v355 = vaddq_s16(v340, v341);
    v356 = vaddq_s16(v321, v341);
    v357 = vaddq_s16(v322, v341);
    v358 = vaddq_s16(v323, v341);
    v359 = vaddq_s16(v324, v341);
    v360 = vaddq_s16(v326, v341);
    v361 = vaddq_s16(v327, v341);
    v362 = vaddq_s16(v328, v341);
    v363 = vaddq_s16(v330, v341);
    v364 = vaddq_s16(v332, v341);
    v365 = vaddq_s16(v333, v341);
    v366 = vaddq_s16(v334, v341);
    v367 = vaddq_s16(v335, v341);
    v368.i64[0] = 0x10001000100010;
    v368.i64[1] = 0x10001000100010;
    v369 = vcgtq_u16(v368, v350);
    v370 = (a1 + 64);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v352, xmmword_29D2F1140), v369), v352);
    *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1140), v369), v353);
    *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v369), v354);
    *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v369), v355);
    v371 = (a1 + a2);
    *v370 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v369), v360);
    v370[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v369), v361);
    v370[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v369), v362);
    v370[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v369), v363);
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v369), v356);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v369), v357);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v369), v358);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v369), v359);
    v371 += 4;
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v369), v364);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v369), v365);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v369), v366);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1140), v369), v367);
  }

  return v177;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = result[2];
    v9 = result[3];
    v10 = result[4];
    v11 = result[5];
    v12 = result[6];
    v13 = result[7];
    v14 = *(result + a2);
    v15 = *(result + a2 + 16);
    v16 = *(result + a2 + 32);
    v17 = *(result + a2 + 48);
    v18 = *(result + a2 + 64);
    v19 = *(result + a2 + 80);
    v20 = *(result + a2 + 96);
    v21 = *(result + a2 + 112);
    *a3 = *result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v14;
    a3[5] = v15;
    a3[6] = v16;
    a3[7] = v17;
    a3[8] = v10;
    a3[9] = v11;
    a3[10] = v12;
    a3[11] = v13;
    a3[12] = v18;
    a3[13] = v19;
    a3[14] = v20;
    a3[15] = v21;
    a3 += 16;
    v6 = -1;
  }

  v22 = 0;
  v23 = 2 * a2;
  *a4 = v6;
  if (a5 && a6 >= 3)
  {
    v25 = *(result + v23 + 16);
    v26 = *(result + v23 + 32);
    v27 = *(result + v23 + 48);
    v24 = (result + v23 + a2);
    v28 = *(result + v23 + 64);
    v29 = *(result + v23 + 80);
    v30 = *(result + v23 + 96);
    v31 = *(result + v23 + 112);
    v32 = *v24;
    v33 = v24[1];
    v34 = v24[2];
    v35 = v24[3];
    v24 += 4;
    v36 = *v24;
    v37 = v24[1];
    v38 = v24[2];
    v39 = v24[3];
    *a3 = *(result + 2 * a2);
    a3[1] = v25;
    a3[2] = v26;
    a3[3] = v27;
    a3[4] = v32;
    a3[5] = v33;
    a3[6] = v34;
    a3[7] = v35;
    a3[8] = v28;
    a3[9] = v29;
    a3[10] = v30;
    a3[11] = v31;
    a3[12] = v36;
    a3[13] = v37;
    a3[14] = v38;
    a3[15] = v39;
    a3 += 16;
    v22 = -1;
  }

  v40 = 0;
  a4[1] = v22;
  if (a5 >= 5 && a6)
  {
    v42 = result[9];
    v43 = result[10];
    v44 = result[11];
    v41 = (result + a2 + 128);
    v45 = result[12];
    v46 = result[13];
    v47 = result[14];
    v48 = result[15];
    v49 = *v41;
    v50 = v41[1];
    v51 = v41[2];
    v52 = v41[3];
    v41 += 4;
    v53 = *v41;
    v54 = v41[1];
    v55 = v41[2];
    v56 = v41[3];
    *a3 = result[8];
    a3[1] = v42;
    a3[2] = v43;
    a3[3] = v44;
    a3[4] = v49;
    a3[5] = v50;
    a3[6] = v51;
    a3[7] = v52;
    a3[8] = v45;
    a3[9] = v46;
    a3[10] = v47;
    a3[11] = v48;
    a3[12] = v53;
    a3[13] = v54;
    a3[14] = v55;
    a3[15] = v56;
    a3 += 16;
    v40 = -1;
  }

  v57 = 0;
  a4[2] = v40;
  if (a5 >= 5 && a6 >= 3)
  {
    v58 = (result + v23);
    v60 = v58[8];
    v61 = v58[9];
    v62 = v58[10];
    v63 = v58[11];
    v59 = (v58 + a2 + 128);
    v58 += 12;
    v64 = *v58;
    v65 = v58[1];
    v66 = v58[2];
    v67 = v58[3];
    v68 = *v59;
    v69 = v59[1];
    v70 = v59[2];
    v71 = v59[3];
    v59 += 4;
    v72 = *v59;
    v73 = v59[1];
    v74 = v59[2];
    v75 = v59[3];
    *a3 = v60;
    a3[1] = v61;
    a3[2] = v62;
    a3[3] = v63;
    a3[4] = v68;
    a3[5] = v69;
    a3[6] = v70;
    a3[7] = v71;
    a3[8] = v64;
    a3[9] = v65;
    a3[10] = v66;
    a3[11] = v67;
    a3[12] = v72;
    a3[13] = v73;
    a3[14] = v74;
    a3[15] = v75;
    a3 += 16;
    v57 = -1;
  }

  v76 = 0;
  a4[3] = v57;
  if (a5 && a6 >= 5)
  {
    v77 = (result + 4 * a2);
    v78 = v77 + 4;
    v80 = *v77;
    v81 = v77[1];
    v82 = v77[2];
    v83 = v77[3];
    v79 = (v77 + a2);
    v84 = *v78;
    v85 = v78[1];
    v86 = v78[2];
    v87 = v78[3];
    v88 = *v79;
    v89 = v79[1];
    v90 = v79[2];
    v91 = v79[3];
    v79 += 4;
    v92 = *v79;
    v93 = v79[1];
    v94 = v79[2];
    v95 = v79[3];
    *a3 = v80;
    a3[1] = v81;
    a3[2] = v82;
    a3[3] = v83;
    a3[4] = v88;
    a3[5] = v89;
    a3[6] = v90;
    a3[7] = v91;
    a3[8] = v84;
    a3[9] = v85;
    a3[10] = v86;
    a3[11] = v87;
    a3[12] = v92;
    a3[13] = v93;
    a3[14] = v94;
    a3[15] = v95;
    a3 += 16;
    v76 = -1;
  }

  v96 = 0;
  a4[4] = v76;
  if (a5 && a6 >= 7)
  {
    v97 = (result + 6 * a2);
    v98 = v97 + 4;
    v100 = *v97;
    v101 = v97[1];
    v102 = v97[2];
    v103 = v97[3];
    v99 = (v97 + a2);
    v104 = *v98;
    v105 = v98[1];
    v106 = v98[2];
    v107 = v98[3];
    v108 = *v99;
    v109 = v99[1];
    v110 = v99[2];
    v111 = v99[3];
    v99 += 4;
    v112 = *v99;
    v113 = v99[1];
    v114 = v99[2];
    v115 = v99[3];
    *a3 = v100;
    a3[1] = v101;
    a3[2] = v102;
    a3[3] = v103;
    a3[4] = v108;
    a3[5] = v109;
    a3[6] = v110;
    a3[7] = v111;
    a3[8] = v104;
    a3[9] = v105;
    a3[10] = v106;
    a3[11] = v107;
    a3[12] = v112;
    a3[13] = v113;
    a3[14] = v114;
    a3[15] = v115;
    a3 += 16;
    v96 = -1;
  }

  v116 = 0;
  a4[5] = v96;
  if (a5 >= 5 && a6 >= 5)
  {
    v117 = (result + 4 * a2);
    v119 = v117[8];
    v120 = v117[9];
    v121 = v117[10];
    v122 = v117[11];
    v118 = (v117 + a2 + 128);
    v117 += 12;
    v123 = *v117;
    v124 = v117[1];
    v125 = v117[2];
    v126 = v117[3];
    v127 = *v118;
    v128 = v118[1];
    v129 = v118[2];
    v130 = v118[3];
    v118 += 4;
    v131 = *v118;
    v132 = v118[1];
    v133 = v118[2];
    v134 = v118[3];
    *a3 = v119;
    a3[1] = v120;
    a3[2] = v121;
    a3[3] = v122;
    a3[4] = v127;
    a3[5] = v128;
    a3[6] = v129;
    a3[7] = v130;
    a3[8] = v123;
    a3[9] = v124;
    a3[10] = v125;
    a3[11] = v126;
    a3[12] = v131;
    a3[13] = v132;
    a3[14] = v133;
    a3[15] = v134;
    a3 += 16;
    v116 = -1;
  }

  v135 = 0;
  a4[6] = v116;
  if (a5 >= 5 && a6 >= 7)
  {
    v136 = (result + 6 * a2);
    v138 = v136[8];
    v139 = v136[9];
    v140 = v136[10];
    v141 = v136[11];
    v137 = (v136 + a2 + 128);
    v136 += 12;
    v142 = *v136;
    v143 = v136[1];
    v144 = v136[2];
    v145 = v136[3];
    v146 = *v137;
    v147 = v137[1];
    v148 = v137[2];
    v149 = v137[3];
    v137 += 4;
    v150 = *v137;
    v151 = v137[1];
    v152 = v137[2];
    v153 = v137[3];
    *a3 = v138;
    a3[1] = v139;
    a3[2] = v140;
    a3[3] = v141;
    a3[4] = v146;
    a3[5] = v147;
    a3[6] = v148;
    a3[7] = v149;
    a3[8] = v142;
    a3[9] = v143;
    a3[10] = v144;
    a3[11] = v145;
    a3[12] = v150;
    a3[13] = v151;
    a3[14] = v152;
    a3[15] = v153;
    v135 = -1;
  }

  a4[7] = v135;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = vdupq_lane_s64(*a3, 0);
  v7 = vsubq_s16(*(a3 + 16), v6);
  v8 = vsubq_s16(*(a3 + 32), v6);
  v483.val[0] = *a3;
  v483.val[1] = *(a3 + 16);
  v483.val[2] = *(a3 + 32);
  v483.val[3] = *(a3 + 48);
  v9 = vsubq_s16(v483.val[3], v6);
  v10 = vsubq_s16(*(a3 + a4 + 16), v6);
  v485 = *(a3 + a4);
  v486 = *(a3 + a4 + 16);
  v487 = *(a3 + a4 + 32);
  v11 = vsubq_s16(v487, v6);
  v491 = vsubq_s16(*a3, v6);
  v12 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v491, v7), v8), v9), xmmword_29D2F1150);
  v13 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v491, v7), v8), v9), xmmword_29D2F1150);
  v14 = vpmaxq_s16(v12, v12);
  v15 = vpminq_s16(v13, v13);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v17 = vmaxq_s16(v14, v16);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v18 = vminq_s16(v15, v16);
  v19 = vzip1q_s16(v14, v15);
  v20.i64[0] = 0x10001000100010;
  v20.i64[1] = 0x10001000100010;
  v21 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v19)), vceqzq_s16(v19));
  v489 = vsubq_s16(v485, v6);
  v482 = *(a3 + a4 + 48);
  v22 = vsubq_s16(v482, v6);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v489, v10), v11), v22), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v489, v10), v11), v22), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vmaxq_s16(v17, v25);
  v28 = vzip1q_s16(v25, v26);
  v29 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v28)), vceqzq_s16(v28));
  v30 = vsubq_s16(*(a3 + 64), v6);
  v31 = vsubq_s16(*(a3 + 80), v6);
  v496 = *(a3 + 64);
  v497 = *(a3 + 80);
  v498 = *(a3 + 96);
  v32 = vsubq_s16(v498, v6);
  v484 = *(a3 + 112);
  v33 = vsubq_s16(v484, v6);
  v34 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v35 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38 = vmaxq_s16(v27, v36);
  v39 = vzip1q_s16(v36, v37);
  v40 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v39)), vceqzq_s16(v39));
  v41 = vsubq_s16(*(a3 + a4 + 64), v6);
  v42 = vsubq_s16(*(a3 + a4 + 80), v6);
  v493 = *(a3 + a4 + 64);
  v494 = *(a3 + a4 + 80);
  v495 = *(a3 + a4 + 96);
  v43 = vsubq_s16(v495, v6);
  v44 = v33;
  v45 = v32;
  v481 = *(a3 + a4 + 112);
  v46 = vsubq_s16(v481, v6);
  v47 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v41, v42), v43), v46), xmmword_29D2F1150);
  v48 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v41, v42), v43), v46), xmmword_29D2F1150);
  v49 = vpmaxq_s16(v47, v47);
  v50 = vpminq_s16(v48, v48);
  v51 = vmaxq_s16(v38, v49);
  v52 = vminq_s16(vminq_s16(vminq_s16(v18, v26), v37), v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v21, v21);
  v56 = vpmaxq_s16(v29, v29);
  v57 = vpmaxq_s16(v40, v40);
  v58 = vpmaxq_s16(v54, v54);
  v59 = vmaxq_s16(vmaxq_s16(v55, v56), vmaxq_s16(v57, v58));
  v60 = vclzq_s16(vsubq_s16(v51, v52));
  v61 = vsubq_s16(v20, v60);
  v62 = vcgtq_s16(v59, v61);
  v63 = vminq_s16(v61, v59);
  v61.i64[0] = 0x8000800080008;
  v61.i64[1] = 0x8000800080008;
  v64 = vandq_s8(v62, v61);
  v65.i64[0] = 0x3000300030003;
  v65.i64[1] = 0x3000300030003;
  v66 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v55), v65), 0);
  v67 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v56), v65), 0);
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v57), v65), 0);
  v69 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v58), v65), 0);
  v20.i64[0] = 0x4000400040004;
  v20.i64[1] = 0x4000400040004;
  v70 = vbicq_s8(v20, vceqq_s16(vaddq_s16(v69, v68), vnegq_s16(vaddq_s16(v66, v67))));
  v71 = vorrq_s8(v70, vorrq_s8(vandq_s8(vceqzq_s16(v63), v65), v64));
  v520 = v6;
  v499 = v491;
  v501 = v7;
  v503 = v8;
  v505 = v9;
  v511 = v22;
  v512 = v30;
  v516 = v41;
  v72 = vmaxvq_s16(v63);
  v6.i64[0] = 0xF000F000F000FLL;
  v6.i64[1] = 0xF000F000F000FLL;
  v20.i64[0] = -1;
  v20.i64[1] = -1;
  v73 = vshlq_s16(v20, vsubq_s16(v6, v60));
  v508 = v489;
  v509 = v10;
  v479 = v10;
  v480 = v11;
  v510 = v11;
  v474 = v44;
  v477 = v22;
  v74 = v51;
  v75 = v31;
  v513 = v31;
  v470 = v74;
  v472 = v45;
  v514 = v45;
  v515 = v44;
  v517 = v42;
  v77 = a5 < 2 || a6 == 0;
  v466 = v43;
  v468 = v46;
  v518 = v43;
  v519 = v46;
  v527 = v52;
  v526 = v63;
  v78 = vandq_s8(vsubq_s16(v73, v52), v62);
  v528 = v74;
  v529 = v78;
  v488 = vsubq_s16(v63, v66);
  v490 = vsubq_s16(v63, v67);
  v522 = v488;
  v523 = v490;
  v79 = vsubq_s16(v63, v69);
  v492 = vsubq_s16(v63, v68);
  v524 = v492;
  v525 = v79;
  v521 = v71;
  if (v72)
  {
    v80 = v52;
    v444 = v71;
    v464 = v78;
    v81 = vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1140));
    v441 = vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1140));
    v82 = vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1140));
    v83 = vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1140));
    v84 = vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1140));
    v85 = vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1140));
    v446 = vsubq_s16(v7, vqtbl1q_s8(v7, xmmword_29D2F1140));
    v447 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v449 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v451 = vsubq_s16(v503, vqtbl1q_s8(v503, xmmword_29D2F1140));
    v86 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v447, v446), v451), v449), xmmword_29D2F1150);
    v87 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v447, v446), v451), v449), xmmword_29D2F1150);
    v88 = vpmaxq_s16(v86, v86);
    v89 = vpminq_s16(v87, v87);
    v90.i64[0] = 0x8000800080008000;
    v90.i64[1] = 0x8000800080008000;
    v91 = vmaxq_s16(v88, v90);
    v92.i64[0] = 0x8000800080008000;
    v92.i64[1] = 0x8000800080008000;
    v93 = vminq_s16(v89, v92);
    v94 = vzip1q_s16(v88, v89);
    v95.i64[0] = 0x10001000100010;
    v95.i64[1] = 0x10001000100010;
    v96 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v94)), vceqzq_s16(v94));
    v97 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v81, v441), v82), v83);
    v442 = v81;
    v98 = vminq_s16(v81, v441);
    v99 = v82;
    v100 = vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1140));
    v101 = vqtbl1q_s8(v97, xmmword_29D2F1150);
    v102 = vqtbl1q_s8(vminq_s16(vminq_s16(v98, v99), v83), xmmword_29D2F1150);
    v103 = vpmaxq_s16(v101, v101);
    v104 = vpminq_s16(v102, v102);
    v105 = vmaxq_s16(v91, v103);
    v106 = vminq_s16(v93, v104);
    v107 = vzip1q_s16(v103, v104);
    v108 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v107)), vceqzq_s16(v107));
    v109 = vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1140));
    v110 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v109, v84), v85), v100), xmmword_29D2F1150);
    v111 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v109, v84), v85), v100), xmmword_29D2F1150);
    v112 = vpmaxq_s16(v110, v110);
    v113 = vpminq_s16(v111, v111);
    v114 = vmaxq_s16(v105, v112);
    v115 = v70;
    v116 = vminq_s16(v106, v113);
    v117 = vzip1q_s16(v112, v113);
    v118 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v117)), vceqzq_s16(v117));
    v119 = vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1140));
    v460 = vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1140));
    v462 = vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1140));
    v458 = vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1140));
    v120 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v119, v462), v460), v458), xmmword_29D2F1150);
    v121 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v119, v462), v460), v458), xmmword_29D2F1150);
    v122 = vpmaxq_s16(v120, v120);
    v123 = vpminq_s16(v121, v121);
    v124 = vmaxq_s16(v114, v122);
    v125 = vminq_s16(v116, v123);
    v126 = vzip1q_s16(v122, v123);
    v127 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v126)), vceqzq_s16(v126));
    v128 = vpmaxq_s16(v96, v96);
    v129 = vpmaxq_s16(v108, v108);
    v130 = vpmaxq_s16(v118, v118);
    v131 = vpmaxq_s16(v127, v127);
    v132 = vmaxq_s16(vmaxq_s16(v128, v129), vmaxq_s16(v130, v131));
    v133 = v125;
    v134 = vclzq_s16(vsubq_s16(v124, v125));
    v135 = vsubq_s16(v95, v134);
    v136 = vcgtq_s16(v132, v135);
    v137 = vminq_s16(v135, v132);
    v135.i64[0] = 0x18001800180018;
    v135.i64[1] = 0x18001800180018;
    v440 = v136;
    v138 = vbslq_s8(v136, v135, v95);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v128), v65), 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v129), v65), 0);
    v141 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v130), v65), 0);
    v142 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v131), v65), 0);
    v143 = v79;
    v144.i64[0] = 0x4000400040004;
    v144.i64[1] = 0x4000400040004;
    v145 = vbicq_s8(v144, vceqq_s16(vaddq_s16(v142, v141), vnegq_s16(vaddq_s16(v139, v140))));
    v146 = vsubq_s16(v137, v139);
    v147 = vsubq_s16(v137, v140);
    v148 = vsubq_s16(v137, v141);
    v149 = vsubq_s16(v137, v142);
    v141.i64[0] = 0x7000700070007;
    v141.i64[1] = 0x7000700070007;
    v150 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v63, v62), v488, v141), vshlq_n_s16(vaddq_s16(vaddq_s16(v492, v490), v143), 3uLL)), vaddq_s16(v115, v115)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v137, vceqzq_s16((*&v138 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v146, v141), vshlq_n_s16(vaddq_s16(vaddq_s16(v148, v147), v149), 3uLL)), vaddq_s16(v145, v145))).i64[0], 0);
    if (vaddvq_s16(v150))
    {
      v499 = vbslq_s8(v150, v447, v499);
      v501 = vbslq_s8(v150, v446, v501);
      v503 = vbslq_s8(v150, v451, v503);
      v505 = vbslq_s8(v150, v449, v9);
      v508 = vbslq_s8(v150, v442, v508);
      v509 = vbslq_s8(v150, v441, v479);
      v510 = vbslq_s8(v150, v99, v480);
      v511 = vbslq_s8(v150, v83, v477);
      v512 = vbslq_s8(v150, v109, v512);
      v513 = vbslq_s8(v150, v84, v75);
      v151.i64[0] = 0x3000300030003;
      v151.i64[1] = 0x3000300030003;
      v152 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v137), v151), v138), v145);
      v153.i64[0] = 0xF000F000F000FLL;
      v153.i64[1] = 0xF000F000F000FLL;
      v154.i64[0] = -1;
      v154.i64[1] = -1;
      v514 = vbslq_s8(v150, v85, v472);
      v515 = vbslq_s8(v150, v100, v474);
      v516 = vbslq_s8(v150, v119, v516);
      v517 = vbslq_s8(v150, v462, v42);
      v518 = vbslq_s8(v150, v460, v466);
      v519 = vbslq_s8(v150, v458, v468);
      v522 = vbslq_s8(v150, v146, v488);
      v523 = vbslq_s8(v150, v147, v490);
      v524 = vbslq_s8(v150, v148, v492);
      v525 = vbslq_s8(v150, v149, v143);
      v528 = vbslq_s8(v150, v124, v470);
      v529 = vbslq_s8(v150, vandq_s8(vsubq_s16(vshlq_s16(v154, vsubq_s16(v153, v134)), v133), v440), v464);
      v527 = vbslq_s8(v150, v133, v80);
      v526 = vbslq_s8(v150, v137, v63);
      v520 = vbslq_s8(v150, vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1140)), v520);
      v521 = vbslq_s8(v150, v152, v444);
    }

    v155 = v496;
    v156 = v497;
    v157 = v498;
    if (v77)
    {
      v158 = v523;
      v159 = v524;
      v160 = v526;
      v161 = v525;
      v162 = v508;
      v163 = v509;
      v165 = v510;
      v164 = v511;
      v166 = v512;
      v167 = v513;
      v168 = v514;
      v169 = v515;
      v170 = v516;
      v171 = v517;
      v172 = v518;
      v173 = v519;
      v174 = v522;
      v175 = v521;
      v177 = v499;
      v176 = v501;
      v178 = v503;
      v179 = v505;
      v180 = v493;
      v181 = v494;
      v182 = v495;
    }

    else
    {
      v185 = vqtbl4q_s8(v483, xmmword_29D2F1160);
      v186 = vsubq_s16(v483.val[0], vqtbl4q_s8(v483, xmmword_29D2F10B0));
      v187 = vsubq_s16(v483.val[2], v185);
      v188 = vsubq_s16(v483.val[3], v185);
      v531.val[0] = v485;
      v531.val[1] = v486;
      v531.val[2] = v487;
      v531.val[3].i64[0] = v482.i64[0];
      v531.val[3].i64[1] = v483.val[3].i64[1];
      v189 = vsubq_s16(v485, vqtbl4q_s8(v531, xmmword_29D2F10B0));
      v190 = vsubq_s16(v486, vqtbl4q_s8(v531, xmmword_29D2F10F0));
      v191 = vsubq_s16(v487, vqtbl4q_s8(v531, xmmword_29D2F1160));
      v192 = v484.i64[0];
      v193 = v483.val[3].i64[1];
      v194 = vsubq_s16(v482, vqtbl4q_s8(v531, xmmword_29D2F1100));
      v195 = vqtbl4q_s8(*v155.i8, xmmword_29D2F10C0);
      v196 = vsubq_s16(v496, vqtbl4q_s8(*v155.i8, xmmword_29D2F1170));
      v197 = vsubq_s16(v497, vqtbl4q_s8(*v155.i8, xmmword_29D2F1180));
      v198 = vsubq_s16(v498, vqtbl4q_s8(*v155.i8, xmmword_29D2F10B0));
      v531.val[0] = vsubq_s16(v484, v195);
      v530.val[0] = v493;
      v530.val[1] = v494;
      v530.val[2] = v495;
      v530.val[3].i64[0] = v481.i64[0];
      v530.val[3].i64[1] = v483.val[3].i64[1];
      v199 = vqtbl4q_s8(v530, xmmword_29D2F10C0);
      v200 = vsubq_s16(v493, vqtbl4q_s8(v530, xmmword_29D2F1170));
      v201 = vsubq_s16(v494, vqtbl4q_s8(v530, xmmword_29D2F1120));
      v530.val[3] = vsubq_s16(v495, vqtbl4q_s8(v530, xmmword_29D2F10B0));
      v202.i64[0] = v188.i64[0];
      v202.i64[1] = v186.i64[0];
      v186.i64[0] = v188.i64[1];
      v203 = vsubq_s16(v481, v199);
      v473 = v186;
      v475 = vsubq_s16(v483.val[1], vqtbl4q_s8(v483, xmmword_29D2F10C0));
      v471 = v187;
      v204 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v186, v475), v187), v202), xmmword_29D2F1150);
      v205 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v186, v475), v187), v202), xmmword_29D2F1150);
      v206 = vpmaxq_s16(v204, v204);
      v207 = vpminq_s16(v205, v205);
      v199.i64[0] = 0x8000800080008000;
      v199.i64[1] = 0x8000800080008000;
      v208 = vmaxq_s16(v206, v199);
      v209.i64[0] = 0x8000800080008000;
      v209.i64[1] = 0x8000800080008000;
      v210 = vminq_s16(v207, v209);
      v211 = vzip1q_s16(v206, v207);
      v207.i64[0] = 0x10001000100010;
      v207.i64[1] = 0x10001000100010;
      v212 = vbicq_s8(vsubq_s16(v207, vclsq_s16(v211)), vceqzq_s16(v211));
      v213 = vpmaxq_s16(v212, v212);
      v457 = v190;
      v459 = v189;
      v478 = v191;
      v467 = v194;
      v469 = v196;
      v530.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v189, v190), v191), v194), xmmword_29D2F1150);
      v530.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v189, v190), v191), v194), xmmword_29D2F1150);
      v530.val[0] = vpmaxq_s16(v530.val[0], v530.val[0]);
      v530.val[1] = vpminq_s16(v530.val[1], v530.val[1]);
      v214 = vmaxq_s16(v208, v530.val[0]);
      v215 = vminq_s16(v210, v530.val[1]);
      v530.val[0] = vzip1q_s16(v530.val[0], v530.val[1]);
      v530.val[0] = vbicq_s8(vsubq_s16(v207, vclsq_s16(v530.val[0])), vceqzq_s16(v530.val[0]));
      v530.val[0] = vpmaxq_s16(v530.val[0], v530.val[0]);
      v461 = v197;
      v456 = v198;
      v452 = v531.val[0];
      v530.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v196, v197), v198), v531.val[0]), xmmword_29D2F1150);
      v530.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v196, v197), v198), v531.val[0]), xmmword_29D2F1150);
      v530.val[1] = vpmaxq_s16(v530.val[1], v530.val[1]);
      v530.val[2] = vpminq_s16(v530.val[2], v530.val[2]);
      v216 = vmaxq_s16(v214, v530.val[1]);
      v217 = vminq_s16(v215, v530.val[2]);
      v530.val[1] = vzip1q_s16(v530.val[1], v530.val[2]);
      v530.val[1] = vbicq_s8(vsubq_s16(v207, vclsq_s16(v530.val[1])), vceqzq_s16(v530.val[1]));
      v530.val[1] = vpmaxq_s16(v530.val[1], v530.val[1]);
      v463 = v201;
      v465 = v200;
      v455 = v530.val[3];
      v530.val[2] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v200, v201), v530.val[3]), v203), xmmword_29D2F1150);
      v531.val[0] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v200, v201), v530.val[3]), v203), xmmword_29D2F1150);
      v530.val[2] = vpmaxq_s16(v530.val[2], v530.val[2]);
      v531.val[0] = vpminq_s16(v531.val[0], v531.val[0]);
      v218 = vmaxq_s16(v216, v530.val[2]);
      v219 = vminq_s16(v217, v531.val[0]);
      v220 = vzip1q_s16(v530.val[2], v531.val[0]);
      v221 = vbicq_s8(vsubq_s16(v207, vclsq_s16(v220)), vceqzq_s16(v220));
      v222 = vpmaxq_s16(v221, v221);
      v223 = vmaxq_s16(vmaxq_s16(v213, v530.val[0]), vmaxq_s16(v530.val[1], v222));
      v224 = vclzq_s16(vsubq_s16(v218, v219));
      v530.val[2] = vsubq_s16(v207, v224);
      v225 = vcgtq_s16(v223, v530.val[2]);
      v226 = vminq_s16(v530.val[2], v223);
      v227 = vsubq_s16(v226, v213);
      v213.i64[0] = 0x3000300030003;
      v213.i64[1] = 0x3000300030003;
      v228 = vmaxq_s16(vminq_s16(v227, v213), 0);
      v530.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v226, v530.val[0]), v213), 0);
      v530.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v226, v530.val[1]), v213), 0);
      v229 = vmaxq_s16(vminq_s16(vsubq_s16(v226, v222), v213), 0);
      v230 = vsubq_s16(v226, v228);
      v231 = vsubq_s16(v226, v530.val[0]);
      v222.i64[0] = 0x4000400040004;
      v222.i64[1] = 0x4000400040004;
      v232 = vbicq_s8(v222, vceqq_s16(vaddq_s16(v229, v530.val[1]), vnegq_s16(vaddq_s16(v228, v530.val[0]))));
      v530.val[0].i64[0] = 0x7000700070007;
      v530.val[0].i64[1] = 0x7000700070007;
      v453 = vsubq_s16(v226, v229);
      v454 = vsubq_s16(v226, v530.val[1]);
      v530.val[1] = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v226, v225), v230, v530.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v454, v231), v453), 3uLL)), vaddq_s16(v232, v232));
      v175 = v521;
      v174 = v522;
      v233 = vandq_s8(v521, v213);
      v213.i64[0] = 0x2000200020002;
      v213.i64[1] = 0x2000200020002;
      v234 = vandq_s8(vceqq_s16(v233, v213), v207);
      v207.i64[0] = 0x8000800080008;
      v207.i64[1] = 0x8000800080008;
      v530.val[2] = vandq_s8(vaddq_s16(v175, v175), v207);
      v531.val[0] = vceqzq_s16(vandq_s8(v521, v207));
      v160 = v526;
      v161 = v525;
      v530.val[2] = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v526, v531.val[0]), v530.val[2]), v234), v522, v530.val[0]);
      v158 = v523;
      v159 = v524;
      v235 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v530.val[2], vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), v530.val[1]).i64[0], 0);
      v162 = v508;
      v168 = v514;
      v169 = v515;
      v170 = v516;
      v171 = v517;
      v172 = v518;
      v177 = v499;
      v176 = v501;
      v178 = v503;
      v179 = v505;
      if (vaddvq_s16(v235))
      {
        v448 = v231;
        v443 = v203;
        v445 = v218;
        v236.i64[0] = 0x2000200020002;
        v236.i64[1] = 0x2000200020002;
        v237.i64[0] = 0x9000900090009;
        v237.i64[1] = 0x9000900090009;
        v238 = vorrq_s8(vandq_s8(vceqzq_s16(v226), v236), vsubq_s16(vandq_s8(v225, v237), vmvnq_s8(v225)));
        v237.i64[0] = -1;
        v237.i64[1] = -1;
        v450 = vorrq_s8(v238, v232);
        v238.i64[0] = 0xF000F000F000FLL;
        v238.i64[1] = 0xF000F000F000FLL;
        v239 = vandq_s8(vsubq_s16(vshlq_s16(v237, vsubq_s16(v238, v224)), v219), v225);
        v177 = vbslq_s8(v235, v473, v499);
        v240 = vbslq_s8(v235, v475, v501);
        v178 = vbslq_s8(v235, v471, v503);
        v162 = vbslq_s8(v235, v459, v508);
        v476 = vbslq_s8(v235, v457, v509);
        v165 = vbslq_s8(v235, v478, v510);
        v241 = vbslq_s8(v235, v467, v511);
        v168 = vbslq_s8(v235, v456, v514);
        v169 = vbslq_s8(v235, v452, v515);
        v170 = vbslq_s8(v235, v465, v516);
        v171 = vbslq_s8(v235, v463, v517);
        v172 = vbslq_s8(v235, v455, v518);
        v173 = vbslq_s8(v235, v443, v519);
        v174 = vbslq_s8(v235, v230, v522);
        v158 = vbslq_s8(v235, v448, v523);
        v159 = vbslq_s8(v235, v454, v524);
        v161 = vbslq_s8(v235, v453, v525);
        v160 = vbslq_s8(v235, v226, v526);
        v175 = vbslq_s8(v235, v450, v521);
        v520 = vbslq_s8(v235, vextq_s8(v483.val[3], v483.val[3], 8uLL), v520);
        v527 = vbslq_s8(v235, v219, v527);
        v528 = vbslq_s8(v235, v445, v528);
        v529 = vbslq_s8(v235, v239, v529);
        v506 = vbslq_s8(v235, v202, v505);
        v508 = v162;
        v523 = v158;
        v524 = v159;
        v525 = v161;
        v526 = v160;
        v522 = v174;
        v521 = v175;
        v180 = v493;
        v181 = v494;
        v182 = v495;
        v167 = vbslq_s8(v235, v461, v513);
        v176 = v240;
        v166 = vbslq_s8(v235, v469, v512);
        v179 = v506;
        v164 = v241;
        v163 = v476;
      }

      else
      {
        v180 = v493;
        v181 = v494;
        v182 = v495;
        v167 = v513;
        v173 = v519;
        v166 = v512;
        v164 = v511;
        v165 = v510;
        v163 = v509;
      }
    }

    v242 = vandq_s8(v529, vceqq_s16(v160, v174));
    v500 = vaddq_s16(v242, v177);
    v502 = vaddq_s16(v176, v242);
    v504 = vaddq_s16(v178, v242);
    v507 = vaddq_s16(v179, v242);
    v243 = vandq_s8(v529, vceqq_s16(v160, v158));
    v508 = vaddq_s16(v162, v243);
    v509 = vaddq_s16(v163, v243);
    v510 = vaddq_s16(v165, v243);
    v511 = vaddq_s16(v164, v243);
    v244 = vandq_s8(v529, vceqq_s16(v160, v159));
    v512 = vaddq_s16(v166, v244);
    v513 = vaddq_s16(v167, v244);
    v514 = vaddq_s16(v168, v244);
    v515 = vaddq_s16(v169, v244);
    v245 = vandq_s8(v529, vceqq_s16(v160, v161));
    v516 = vaddq_s16(v170, v245);
    v517 = vaddq_s16(v171, v245);
    v518 = vaddq_s16(v172, v245);
    v519 = vaddq_s16(v173, v245);
    v245.i64[0] = 0x8000800080008;
    v245.i64[1] = 0x8000800080008;
    v242.i64[0] = 0x3000300030003;
    v242.i64[1] = 0x3000300030003;
    v246.i64[0] = 0x2000200020002;
    v246.i64[1] = 0x2000200020002;
    v247 = vceqq_s16(vandq_s8(v175, v242), v246);
    v246.i64[0] = 0x10001000100010;
    v246.i64[1] = 0x10001000100010;
    v248 = vandq_s8(v247, v246);
    v246.i64[0] = 0x7000700070007;
    v246.i64[1] = 0x7000700070007;
    v249 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v159, v158), v161), 3uLL), v174, v246), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v175, v175), v245), vbicq_s8(v160, vceqzq_s16(vandq_s8(v175, v245)))), v248));
    v250 = vpaddq_s16(v249, v249);
    if ((vpaddq_s16(v250, v250).i16[0] + 107) > 0x7FF)
    {
      *a1 = v483.val[0];
      *(a1 + 16) = v483.val[1];
      *(a1 + 32) = v483.val[2];
      *(a1 + 48) = v483.val[3];
      *(a1 + 64) = v485;
      *(a1 + 80) = v486;
      *(a1 + 96) = v487;
      *(a1 + 112) = v482;
      *(a1 + 128) = v496;
      *(a1 + 144) = v497;
      *(a1 + 160) = v498;
      *(a1 + 176) = v484;
      v254 = (a1 + 192);
      v183 = -1;
      result = 256;
      *v254 = v180;
      v254[1] = v181;
      v254[2] = v182;
      v254[3] = v481;
    }

    else
    {
      v251 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v252 = 8 * (a1 & 7);
      if (v252)
      {
        v253 = *v251 & ~(-1 << v252);
      }

      else
      {
        v253 = 0;
      }

      *a2 = 0;
      v255 = v520.i64[0];
      v256.i32[0] = v160.u16[0];
      v256.i32[1] = v160.u16[1];
      v257 = vceqz_s32(vand_s8(v256, 0xFFFF0000FFFFLL));
      v258.i64[0] = v257.i32[0];
      v258.i64[1] = v257.i32[1];
      v259 = v258;
      v260.i64[0] = -1;
      v260.i64[1] = -1;
      v261 = vand_s8(vadd_s32(v256, -1), 0xF0000000FLL);
      v258.i64[0] = v261.u32[0];
      v258.i64[1] = v261.u32[1];
      v262 = vbicq_s8(vshlq_u64(v258, xmmword_29D2F1190), v259);
      if (v160.i16[2])
      {
        v263 = (v160.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v263 = 0;
      }

      if (v160.i16[3])
      {
        v264 = ((v160.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v264 = 0;
      }

      v265 = vorrq_s8(vdupq_laneq_s64(v262, 1), v262).u64[0] | v263 | v264 | ((v175.i8[6] & 0x1F) << 15) | v175.i8[0] & 0x1F | (32 * (v175.i8[2] & 0x1F)) & 0x83FF | ((v175.i8[4] & 0x1F) << 10);
      v266 = v253 | (v265 << v252);
      if (v252 >= 0x1C)
      {
        *v251 = v266;
        v266 = v265 >> (-8 * (a1 & 7u));
      }

      v267 = v255 | (WORD1(v255) << 16) | (WORD2(v255) << 32) | (HIWORD(v255) << 48);
      v268 = (v252 + 36) & 0x3C;
      *(v251 + (((v252 + 36) >> 3) & 8)) = v266 | (v267 << v268);
      v269 = v252 + 100;
      v270 = vsubq_s16(v526, v522);
      v271 = vsubq_s16(v526, v523);
      v272 = vsubq_s16(v526, v524);
      v273 = vsubq_s16(v526, v525);
      *v270.i8 = vqmovn_u16(v270);
      *v271.i8 = vqmovn_u16(v271);
      *v272.i8 = vqmovn_u16(v272);
      *v273.i8 = vqmovn_u16(v273);
      v274 = vtrn1q_s8(v270, v271);
      v275 = vtrn2q_s8(v270, v271);
      v276 = vtrn1q_s8(v272, v273);
      v277 = vtrn2q_s8(v272, v273);
      v278 = vzip1q_s16(v275, v277);
      v279 = vtrn2q_s16(v275, v277);
      v275.i64[0] = vzip1q_s32(vzip1q_s16(v274, v276), v278).u64[0];
      v279.i64[0] = vzip1q_s32(vtrn2q_s16(v274, v276), v279).u64[0];
      v272.i64[0] = 0x202020202020202;
      v272.i64[1] = 0x202020202020202;
      v280 = vandq_s8(vmovl_s16(vtst_s16(*v521.i8, 0x4000400040004)), v272);
      v272.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v272.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v281 = vshlq_u8(v260, vorrq_s8(v280, v272));
      v282 = vmovl_u8(vand_s8(*v281.i8, *v275.i8));
      v283 = vmovl_u8(vand_s8(*&vextq_s8(v281, v281, 8uLL), *v279.i8));
      v284 = vmovl_u8(*v280.i8);
      v285 = vmovl_high_u8(v280);
      v286 = vpaddq_s16(vshlq_u16(v282, vtrn1q_s16(0, v284)), vshlq_u16(v283, vtrn1q_s16(0, v285)));
      v287 = vpaddq_s16(v284, v285);
      v288 = vmovl_u16(*v287.i8);
      v289 = vmovl_high_u16(v287);
      v290 = vpaddq_s32(vshlq_u32(vmovl_u16(*v286.i8), vtrn1q_s32(0, v288)), vshlq_u32(vmovl_high_u16(v286), vtrn1q_s32(0, v289)));
      v291 = vpaddq_s32(v288, v289);
      v292.i64[0] = v290.u32[0];
      v292.i64[1] = v290.u32[1];
      v293 = v292;
      v292.i64[0] = v290.u32[2];
      v292.i64[1] = v290.u32[3];
      v294 = v292;
      v292.i64[0] = v291.u32[0];
      v292.i64[1] = v291.u32[1];
      v295 = v292;
      v292.i64[0] = v291.u32[2];
      v292.i64[1] = v291.u32[3];
      v296 = vpaddq_s64(vshlq_u64(v293, vzip1q_s64(0, v295)), vshlq_u64(v294, vzip1q_s64(0, v292)));
      v297 = vpaddq_s64(v295, v292);
      v298 = (v252 + 100) & 0x3C;
      v299 = (v296.i64[0] << v298) | (v267 >> -v268);
      if ((v297.i64[0] + v298) >= 0x40)
      {
        *(v251 + ((v269 >> 3) & 0x18)) = v299;
        v299 = v296.i64[0] >> -v298;
      }

      v300 = v297.i64[0] + v269;
      v301 = v299 | (v296.i64[1] << v300);
      if ((v300 & 0x3F) + v297.i64[1] >= 0x40)
      {
        *(v251 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
        v301 = v296.i64[1] >> -(v300 & 0x3F);
        if ((v300 & 0x3F) == 0)
        {
          v301 = 0;
        }
      }

      v302 = v300 + v297.i64[1];
      v303.i64[0] = 0x8000800080008;
      v303.i64[1] = 0x8000800080008;
      v304.i64[0] = -1;
      v304.i64[1] = -1;
      v305 = vandq_s8(vextq_s8(vtstq_s16(v521, v303), 0, 8uLL), v526);
      v306.i64[0] = 0xF000F000F000FLL;
      v306.i64[1] = 0xF000F000F000FLL;
      v307 = vandq_s8(vshlq_u16(v304, vaddq_s16(v305, v306)), v529);
      v308 = vmovl_u16(*v305.i8);
      v309 = vpaddq_s32(vshlq_u32(vmovl_u16(*v307.i8), vtrn1q_s32(0, v308)), vmovl_high_u16(v307));
      v310 = vpaddq_s32(v308, vmovl_high_u16(v305));
      v311.i64[0] = v309.u32[0];
      v311.i64[1] = v309.u32[1];
      v312 = v311;
      v311.i64[0] = v309.u32[2];
      v311.i64[1] = v309.u32[3];
      v313 = v311;
      v311.i64[0] = v310.u32[0];
      v311.i64[1] = v310.u32[1];
      v314 = v311;
      v311.i64[0] = v310.u32[2];
      v311.i64[1] = v310.u32[3];
      v315 = vpaddq_s64(vshlq_u64(v312, vzip1q_s64(0, v314)), vshlq_u64(v313, vzip1q_s64(0, v311)));
      v316 = vpaddq_s64(v314, v311);
      v317 = (v315.i64[0] << v302) | v301;
      if (v316.i64[0] + (v302 & 0x3F) >= 0x40)
      {
        *(v251 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v315.i64[0] >> -(v302 & 0x3F);
        if ((v302 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = v316.i64[0] + v302;
      v319 = v317 | (v315.i64[1] << v318);
      if ((v318 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v251 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
        v319 = v315.i64[1] >> -(v318 & 0x3F);
        if ((v318 & 0x3F) == 0)
        {
          v319 = 0;
        }
      }

      v320 = v318 + v316.i64[1];
      v321 = vextq_s8(0, v522, 8uLL);
      v322.i64[0] = 0xF000F000F000FLL;
      v322.i64[1] = 0xF000F000F000FLL;
      v323.i64[0] = -1;
      v323.i64[1] = -1;
      v324 = vandq_s8(vshlq_u16(v323, vaddq_s16(v321, v322)), v500);
      v325 = vmovl_u16(*v321.i8);
      v326 = vmovl_high_u16(v321);
      v327 = vpaddq_s32(vmovl_u16(*v324.i8), vshlq_u32(vmovl_high_u16(v324), vtrn1q_s32(0, v326)));
      v328 = vpaddq_s32(v325, v326);
      v329.i64[0] = v327.u32[0];
      v329.i64[1] = v327.u32[1];
      v330 = v329;
      v329.i64[0] = v327.u32[2];
      v329.i64[1] = v327.u32[3];
      v331 = v329;
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v332 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v333 = vpaddq_s64(vshlq_u64(v330, vzip1q_s64(0, v332)), vshlq_u64(v331, vzip1q_s64(0, v329)));
      v334 = vpaddq_s64(v332, v329);
      v335 = (v333.i64[0] << v320) | v319;
      if (v334.i64[0] + (v320 & 0x3F) >= 0x40)
      {
        *(v251 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v333.i64[0] >> -(v320 & 0x3F);
        if ((v320 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = v334.i64[0] + v320;
      v337 = v335 | (v333.i64[1] << v336);
      if ((v336 & 0x3F) + v334.i64[1] >= 0x40)
      {
        *(v251 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v333.i64[1] >> -(v336 & 0x3F);
        if ((v336 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336 + v334.i64[1];
      v339.i64[0] = 0xF000F000F000FLL;
      v339.i64[1] = 0xF000F000F000FLL;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341 = vandq_s8(vshlq_u16(v340, vaddq_s16(v522, v339)), v502);
      v342 = vmovl_u16(*v522.i8);
      v343 = vmovl_high_u16(v522);
      v344 = vpaddq_s32(vshlq_u32(vmovl_u16(*v341.i8), vtrn1q_s32(0, v342)), vshlq_u32(vmovl_high_u16(v341), vtrn1q_s32(0, v343)));
      v345 = vpaddq_s32(v342, v343);
      v346.i64[0] = v344.u32[0];
      v346.i64[1] = v344.u32[1];
      v347 = v346;
      v346.i64[0] = v344.u32[2];
      v346.i64[1] = v344.u32[3];
      v348 = v346;
      v346.i64[0] = v345.u32[0];
      v346.i64[1] = v345.u32[1];
      v349 = v346;
      v346.i64[0] = v345.u32[2];
      v346.i64[1] = v345.u32[3];
      v350 = vpaddq_s64(vshlq_u64(v347, vzip1q_s64(0, v349)), vshlq_u64(v348, vzip1q_s64(0, v346)));
      v351 = vpaddq_s64(v349, v346);
      v352 = (v350.i64[0] << v338) | v337;
      if (v351.i64[0] + (v338 & 0x3F) >= 0x40)
      {
        *(v251 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v350.i64[0] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351.i64[0] + v338;
      v354 = v352 | (v350.i64[1] << v353);
      if ((v353 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v251 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v350.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v351.i64[1];
      v356.i64[0] = 0xF000F000F000FLL;
      v356.i64[1] = 0xF000F000F000FLL;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vandq_s8(vshlq_u16(v357, vaddq_s16(v522, v356)), v504);
      v359 = vmovl_u16(*v522.i8);
      v360 = vmovl_high_u16(v522);
      v361 = vpaddq_s32(vshlq_u32(vmovl_u16(*v358.i8), vtrn1q_s32(0, v359)), vshlq_u32(vmovl_high_u16(v358), vtrn1q_s32(0, v360)));
      v362 = vpaddq_s32(v359, v360);
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
      v367 = vpaddq_s64(vshlq_u64(v364, vzip1q_s64(0, v366)), vshlq_u64(v365, vzip1q_s64(0, v363)));
      v368 = vpaddq_s64(v366, v363);
      v369 = (v367.i64[0] << v355) | v354;
      if (v368.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v251 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
        v369 = v367.i64[0] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v369 = 0;
        }
      }

      v370 = v368.i64[0] + v355;
      v371 = v369 | (v367.i64[1] << v370);
      if ((v370 & 0x3F) + v368.i64[1] >= 0x40)
      {
        *(v251 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        v371 = v367.i64[1] >> -(v370 & 0x3F);
        if ((v370 & 0x3F) == 0)
        {
          v371 = 0;
        }
      }

      v372 = v370 + v368.i64[1];
      v373.i64[0] = 0xF000F000F000FLL;
      v373.i64[1] = 0xF000F000F000FLL;
      v374.i64[0] = -1;
      v374.i64[1] = -1;
      v375 = vandq_s8(vshlq_u16(v374, vaddq_s16(v522, v373)), v507);
      v376 = vmovl_u16(*v522.i8);
      v377 = vmovl_high_u16(v522);
      v378 = vpaddq_s32(vshlq_u32(vmovl_u16(*v375.i8), vtrn1q_s32(0, v376)), vshlq_u32(vmovl_high_u16(v375), vtrn1q_s32(0, v377)));
      v379 = vpaddq_s32(v376, v377);
      v380.i64[0] = v378.u32[0];
      v380.i64[1] = v378.u32[1];
      v381 = v380;
      v380.i64[0] = v378.u32[2];
      v380.i64[1] = v378.u32[3];
      v382 = v380;
      v380.i64[0] = v379.u32[0];
      v380.i64[1] = v379.u32[1];
      v383 = v380;
      v380.i64[0] = v379.u32[2];
      v380.i64[1] = v379.u32[3];
      v384 = vpaddq_s64(vshlq_u64(v381, vzip1q_s64(0, v383)), vshlq_u64(v382, vzip1q_s64(0, v380)));
      v385 = vpaddq_s64(v383, v380);
      v386 = (v384.i64[0] << v372) | v371;
      if (v385.i64[0] + (v372 & 0x3F) >= 0x40)
      {
        *(v251 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
        v386 = v384.i64[0] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v386 = 0;
        }
      }

      v387 = v385.i64[1];
      v388 = v385.i64[0] + v372;
      v389 = (v385.i64[0] + v372) & 0x3F;
      v390 = v386 | (v384.i64[1] << v388);
      if ((v389 + v385.i64[1]) >= 0x40)
      {
        *(v251 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
        v390 = v384.i64[1] >> -v389;
        if (!v389)
        {
          v390 = 0;
        }
      }

      v391 = 0;
      v392.i64[0] = 0xF000F000F000FLL;
      v392.i64[1] = 0xF000F000F000FLL;
      v393.i64[0] = -1;
      v393.i64[1] = -1;
      v394 = v388 + v387;
      do
      {
        v395 = vandq_s8(vshlq_u16(v393, vaddq_s16(v523, v392)), *(&v508 + v391));
        v396 = vmovl_u16(*v523.i8);
        v397 = vmovl_high_u16(v523);
        v398 = vpaddq_s32(vshlq_u32(vmovl_u16(*v395.i8), vtrn1q_s32(0, v396)), vshlq_u32(vmovl_high_u16(v395), vtrn1q_s32(0, v397)));
        v399 = vpaddq_s32(v396, v397);
        v400.i64[0] = v398.u32[0];
        v400.i64[1] = v398.u32[1];
        v401 = v400;
        v400.i64[0] = v398.u32[2];
        v400.i64[1] = v398.u32[3];
        v402 = v400;
        v400.i64[0] = v399.u32[0];
        v400.i64[1] = v399.u32[1];
        v403 = v400;
        v400.i64[0] = v399.u32[2];
        v400.i64[1] = v399.u32[3];
        v404 = vpaddq_s64(vshlq_u64(v401, vzip1q_s64(0, v403)), vshlq_u64(v402, vzip1q_s64(0, v400)));
        v405 = vpaddq_s64(v403, v400);
        v406 = (v404.i64[0] << v394) | v390;
        if (v405.i64[0] + (v394 & 0x3F) >= 0x40)
        {
          *(v251 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
          v406 = v404.i64[0] >> -(v394 & 0x3F);
          if ((v394 & 0x3F) == 0)
          {
            v406 = 0;
          }
        }

        v407 = v405.i64[0] + v394;
        v390 = v406 | (v404.i64[1] << v407);
        if ((v407 & 0x3F) + v405.i64[1] >= 0x40)
        {
          *(v251 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
          v390 = v404.i64[1] >> -(v407 & 0x3F);
          if ((v407 & 0x3F) == 0)
          {
            v390 = 0;
          }
        }

        v394 = v407 + v405.i64[1];
        v391 += 16;
      }

      while (v391 != 64);
      v408 = 0;
      v409.i64[0] = 0xF000F000F000FLL;
      v409.i64[1] = 0xF000F000F000FLL;
      v410.i64[0] = -1;
      v410.i64[1] = -1;
      do
      {
        v411 = vandq_s8(vshlq_u16(v410, vaddq_s16(v524, v409)), *(&v512 + v408));
        v412 = vmovl_u16(*v524.i8);
        v413 = vmovl_high_u16(v524);
        v414 = vpaddq_s32(vshlq_u32(vmovl_u16(*v411.i8), vtrn1q_s32(0, v412)), vshlq_u32(vmovl_high_u16(v411), vtrn1q_s32(0, v413)));
        v415 = vpaddq_s32(v412, v413);
        v416.i64[0] = v414.u32[0];
        v416.i64[1] = v414.u32[1];
        v417 = v416;
        v416.i64[0] = v414.u32[2];
        v416.i64[1] = v414.u32[3];
        v418 = v416;
        v416.i64[0] = v415.u32[0];
        v416.i64[1] = v415.u32[1];
        v419 = v416;
        v416.i64[0] = v415.u32[2];
        v416.i64[1] = v415.u32[3];
        v420 = vpaddq_s64(vshlq_u64(v417, vzip1q_s64(0, v419)), vshlq_u64(v418, vzip1q_s64(0, v416)));
        v421 = vpaddq_s64(v419, v416);
        v422 = (v420.i64[0] << v394) | v390;
        if (v421.i64[0] + (v394 & 0x3F) >= 0x40)
        {
          *(v251 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
          v422 = v420.i64[0] >> -(v394 & 0x3F);
          if ((v394 & 0x3F) == 0)
          {
            v422 = 0;
          }
        }

        v423 = v421.i64[0] + v394;
        v390 = v422 | (v420.i64[1] << v423);
        if ((v423 & 0x3F) + v421.i64[1] >= 0x40)
        {
          *(v251 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
          v390 = v420.i64[1] >> -(v423 & 0x3F);
          if ((v423 & 0x3F) == 0)
          {
            v390 = 0;
          }
        }

        v394 = v423 + v421.i64[1];
        v408 += 16;
      }

      while (v408 != 64);
      v424 = 0;
      v425.i64[0] = 0xF000F000F000FLL;
      v425.i64[1] = 0xF000F000F000FLL;
      v426.i64[0] = -1;
      v426.i64[1] = -1;
      do
      {
        v427 = vandq_s8(vshlq_u16(v426, vaddq_s16(v525, v425)), *(&v516 + v424));
        v428 = vmovl_u16(*v525.i8);
        v429 = vmovl_high_u16(v525);
        v430 = vpaddq_s32(vshlq_u32(vmovl_u16(*v427.i8), vtrn1q_s32(0, v428)), vshlq_u32(vmovl_high_u16(v427), vtrn1q_s32(0, v429)));
        v431 = vpaddq_s32(v428, v429);
        v432.i64[0] = v430.u32[0];
        v432.i64[1] = v430.u32[1];
        v433 = v432;
        v432.i64[0] = v430.u32[2];
        v432.i64[1] = v430.u32[3];
        v434 = v432;
        v432.i64[0] = v431.u32[0];
        v432.i64[1] = v431.u32[1];
        v435 = v432;
        v432.i64[0] = v431.u32[2];
        v432.i64[1] = v431.u32[3];
        v436 = vpaddq_s64(vshlq_u64(v433, vzip1q_s64(0, v435)), vshlq_u64(v434, vzip1q_s64(0, v432)));
        v437 = vpaddq_s64(v435, v432);
        v438 = (v436.i64[0] << v394) | v390;
        if (v437.i64[0] + (v394 & 0x3F) >= 0x40)
        {
          *(v251 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
          v438 = v436.i64[0] >> -(v394 & 0x3F);
          if ((v394 & 0x3F) == 0)
          {
            v438 = 0;
          }
        }

        v439 = v437.i64[0] + v394;
        v390 = v438 | (v436.i64[1] << v439);
        if ((v439 & 0x3F) + v437.i64[1] >= 0x40)
        {
          *(v251 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
          v390 = v436.i64[1] >> -(v439 & 0x3F);
          if ((v439 & 0x3F) == 0)
          {
            v390 = 0;
          }
        }

        v394 = v439 + v437.i64[1];
        v424 += 16;
      }

      while (v424 != 64);
      if ((v394 & 0x3F) != 0)
      {
        *(v251 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
      }

      result = (v394 - v252 + 7) >> 3;
      v183 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = *a3;
    v183 = 7;
    result = 8;
  }

  *a2 = v183;
  return result;
}