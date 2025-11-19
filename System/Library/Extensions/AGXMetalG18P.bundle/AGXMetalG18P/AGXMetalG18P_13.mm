uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v316 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v9 = (a1 + a2);
    *v9 = 0u;
    v9[1] = 0u;
    v10 = (a1 + 2 * a2);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (a1 + a2 + 2 * a2);
    *v11 = 0u;
    v11[1] = 0u;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v308, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v308, a5);
    }

    v302 = v308;
    v297 = v310;
    v298 = v311;
    v299 = v309;
    v300 = v312;
    v290 = v314;
    v293 = v315;
    v294 = v313;
    v16 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v308, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v308, a5);
    }

    v286 = v310;
    v287 = v308;
    v291 = v311;
    v292 = v309;
    v18 = v312;
    v17 = v313;
    v20 = v314;
    v19 = v315;
    v21 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v21, &v308, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v21, &v308, a5);
    }

    v296 = v308;
    v23 = v309;
    v22 = v310;
    v285 = v311;
    v295 = v312;
    v24 = v314;
    v288 = v315;
    v289 = v313;
    v25 = a3 + 48;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v25, &v308, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v25, &v308, a5);
    }

    v320.val[0].i64[0] = __PAIR64__(v24, v295);
    v319.val[0].i64[0] = __PAIR64__(v22, v296);
    v318.val[0].i64[0] = __PAIR64__(v290, v300);
    v318.val[0].i64[1] = __PAIR64__(v20, v18);
    v318.val[1].i64[0] = __PAIR64__(v293, v294);
    v318.val[1].i64[1] = __PAIR64__(v19, v17);
    v317.val[0].i64[0] = __PAIR64__(v297, v302);
    v317.val[0].i64[1] = __PAIR64__(v286, v287);
    v317.val[1].i64[0] = __PAIR64__(v298, v299);
    v317.val[1].i64[1] = __PAIR64__(v291, v292);
    v319.val[0].i64[1] = __PAIR64__(v310, v308);
    v319.val[1].i64[0] = __PAIR64__(v285, v23);
    v319.val[1].i64[1] = __PAIR64__(v311, v309);
    v320.val[0].i64[1] = __PAIR64__(v314, v312);
    v320.val[1].i64[0] = __PAIR64__(v288, v289);
    v320.val[1].i64[1] = __PAIR64__(v315, v313);
    v26 = a1;
    v27 = a2;
    vst2q_f32(v26, v317);
    v28 = (v26 + v27);
    vst2q_f32(v28, v318);
    v29 = (v28 + v27);
    vst2q_f32(v29, v319);
    v30 = (v29 + v27);
    vst2q_f32(v30, v320);
    return 64;
  }

  if (a4 == 127)
  {
    v31 = *(a3 + 16);
    v32 = *(a3 + 32);
    v33 = *(a3 + 48);
    v34 = *(a3 + 80);
    v35 = *(a3 + 96);
    v36 = *(a3 + 112);
    v37 = *(a3 + 64);
    v38 = (a1 + a2);
    *a1 = *a3;
    *(a1 + 16) = v32;
    v39 = (a1 + 2 * a2);
    *v38 = v31;
    v38[1] = v33;
    *v39 = v37;
    v39[1] = v35;
    v40 = (v39 + a2);
    *v40 = v34;
    v40[1] = v36;
    return 128;
  }

  if (a4 == 3)
  {
    v12 = vld1q_dup_f32(a3);
    *a1 = v12;
    *(a1 + 16) = v12;
    v13 = (a1 + a2);
    *v13 = v12;
    v13[1] = v12;
    v14 = (a1 + 2 * a2);
    *v14 = v12;
    v14[1] = v12;
    v15 = (a1 + a2 + 2 * a2);
    *v15 = v12;
    v15[1] = v12;
    return 4;
  }

  v41 = 8 * (a3 & 7);
  v42 = a3 & 0xFFFFFFFFFFFFFFF8;
  v43 = v41 + 42;
  v44 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v41;
  if (v41 >= 0x17)
  {
    v44 |= *(v42 + 8) << (-8 * (a3 & 7u));
  }

  v45 = vdupq_n_s32(v44 & 0x1F);
  v46 = (8 * (a3 & 7)) | 0x200;
  v47.i64[0] = 0x300000003;
  v47.i64[1] = 0x300000003;
  v48 = vbicq_s8(vdupq_n_s32(((v44 >> 5) & 0x1F) + 1), vceqq_s32((*&v45 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v47));
  v47.i64[0] = 0x404040404040404;
  v47.i64[1] = 0x404040404040404;
  v49 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v45 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v47);
  if (vmaxvq_s8(v49) < 1)
  {
    v58 = 0;
    v82.i64[0] = -1;
    v82.i64[1] = -1;
    v78 = v48;
    v77 = v48;
    v76 = v48;
    v81.i64[0] = -1;
    v81.i64[1] = -1;
    v75 = v48;
    v80.i64[0] = -1;
    v80.i64[1] = -1;
    v79.i64[0] = -1;
    v79.i64[1] = -1;
  }

  else
  {
    v50 = vmovl_u8(*&vpaddq_s8(v49, v49));
    v51 = vmovl_u16(*&vpaddq_s16(v50, v50));
    v52 = vpaddq_s32(v51, v51).u64[0];
    v53.i64[0] = v52;
    v53.i64[1] = HIDWORD(v52);
    v54 = v53;
    v55 = vaddvq_s64(v53);
    v56 = v55 + v43;
    v57 = v55 <= 0x80 && v46 >= v56;
    v58 = !v57;
    v59 = 0uLL;
    if (v57)
    {
      v60 = v43 & 0x3A;
      v61 = vaddq_s64(vzip1q_s64(0, v54), vdupq_n_s64(v60));
      v62 = (v42 + ((v43 >> 3) & 8));
      v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v62, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v61)), vshlq_u64(vdupq_lane_s64(v62->i64[0], 0), vnegq_s64(v61)));
      if (v55 + v60 >= 0x81)
      {
        v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v62[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v61)), vshlq_u64(vdupq_laneq_s64(v62[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v61))), v59);
      }

      v43 = v56;
    }

    v63 = vzip1_s32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
    v64.i64[0] = v63.u32[0];
    v64.i64[1] = v63.u32[1];
    v65 = vshlq_u64(v59, vnegq_s64(v64));
    v66 = vuzp1q_s32(vzip1q_s64(v59, v65), vzip2q_s64(v59, v65));
    v67 = vshlq_u32(v66, vnegq_s32((*&v50 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v68 = vuzp1q_s16(vzip1q_s32(v66, v67), vzip2q_s32(v66, v67));
    v69 = vzip1q_s16(v68, vshlq_u16(v68, vnegq_s16(vmovl_u8(vuzp1_s8(*v49.i8, *v45.i8)))));
    *v69.i8 = vmovn_s16(v69);
    v66.i64[0] = 0x101010101010101;
    v66.i64[1] = 0x101010101010101;
    v70 = vshlq_s8(v66, v49);
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v70.i32[0] = vandq_s8(vaddq_s8(v70, v66), v69).u32[0];
    v71 = vdupq_n_s32(v70.i8[0]);
    v72 = vdupq_n_s32(v70.i8[1]);
    v73 = vdupq_n_s32(v70.i8[2]);
    v74 = vdupq_n_s32(v70.i8[3]);
    v75 = vsubq_s32(v48, v71);
    v76 = vsubq_s32(v48, v72);
    v77 = vsubq_s32(v48, v73);
    v78 = vsubq_s32(v48, v74);
    v79 = vceqzq_s32(v71);
    v80 = vceqzq_s32(v72);
    v81 = vceqzq_s32(v73);
    v82 = vceqzq_s32(v74);
  }

  v83 = 0uLL;
  v84 = vandq_s8(vextq_s8(vtstq_s32((*&v45 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v45 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v48);
  v85 = vpaddq_s32(v84, v84).u64[0];
  v86.i64[0] = v85;
  v86.i64[1] = HIDWORD(v85);
  v87 = v86;
  v88 = vaddvq_s64(v86);
  v89 = v88 + v43;
  if (v88 <= 0x80 && v46 >= v89)
  {
    v91 = v43 & 0x3F;
    v92 = vaddq_s64(vzip1q_s64(0, v87), vdupq_n_s64(v91));
    v93 = (v42 + 8 * (v43 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v92)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v92)));
    if (v88 + v91 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v92)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v92))), v83);
    }

    v43 = v89;
  }

  else
  {
    v58 = 1;
  }

  v94 = v44 & 3;
  v95 = 0uLL;
  if (v94 == 2)
  {
    v96 = v43 + 16;
    if (v46 >= v43 + 16)
    {
      v100 = (v42 + 8 * (v43 >> 6));
      v101 = *v100 >> v43;
      if ((v43 & 0x3F) >= 0x31)
      {
        v101 |= v100[1] << -(v43 & 0x3F);
      }

      v97 = v101;
      v98 = v43 + 32;
    }

    else
    {
      v97 = 0;
      v58 = 1;
      v98 = v43 + 16;
      v96 = v43;
    }

    v99 = v97;
    if (v46 >= v98)
    {
      v102 = (v42 + 8 * (v96 >> 6));
      v103 = *v102 >> v96;
      if ((v96 & 0x3F) >= 0x31)
      {
        v103 |= v102[1] << -(v96 & 0x3F);
      }

      v99.i32[1] = v103;
    }

    else
    {
      v58 = 1;
      v98 = v96;
    }
  }

  else
  {
    v98 = v43;
    v99 = 0;
  }

  v104 = vextq_s8(0, v75, 0xCuLL);
  v105 = vpaddq_s32(v104, v104).u64[0];
  v106.i64[0] = v105;
  v106.i64[1] = HIDWORD(v105);
  v107 = v106;
  v108 = vaddvq_s64(v106);
  v109 = v108 + v98;
  if (v108 <= 0x80 && v46 >= v109)
  {
    v111 = v98 & 0x3F;
    v112 = vaddq_s64(vzip1q_s64(0, v107), vdupq_n_s64(v111));
    v113 = (v42 + 8 * (v98 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v112)));
    if (v108 + v111 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v95);
    }

    v98 = v109;
  }

  else
  {
    v58 = 1;
  }

  v114 = vpaddq_s32(v75, v75).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  v118 = v117 + v98;
  v119 = 0uLL;
  if (v117 <= 0x80 && v46 >= v118)
  {
    v122 = v98 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v116), vdupq_n_s64(v122));
    v124 = (v42 + 8 * (v98 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v117 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v98 = v118;
  }

  else
  {
    v58 = 1;
    v121 = 0uLL;
  }

  v125 = vpaddq_s32(v76, v76).u64[0];
  v126.i64[0] = v125;
  v126.i64[1] = HIDWORD(v125);
  v127 = v126;
  v128 = vaddvq_s64(v126);
  v129 = v128 + v98;
  if (v128 <= 0x80 && v46 >= v129)
  {
    v131 = v98 & 0x3F;
    v132 = vaddq_s64(vzip1q_s64(0, v127), vdupq_n_s64(v131));
    v133 = (v42 + 8 * (v98 >> 6));
    v119 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
    if (v128 + v131 >= 0x81)
    {
      v119 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v119);
    }

    v98 = v129;
  }

  else
  {
    v58 = 1;
  }

  v134 = 0uLL;
  if (v128 > 0x80 || (v135 = v128 + v98, v46 < v128 + v98))
  {
    v135 = v98;
    v58 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v98 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v127), vdupq_n_s64(v136));
    v138 = (v42 + 8 * (v98 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v128 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  v140 = vpaddq_s32(v77, v77).u64[0];
  v141.i64[0] = v140;
  v141.i64[1] = HIDWORD(v140);
  v142 = v141;
  v143 = vaddvq_s64(v141);
  v144 = v143;
  if (v143 > 0x80 || (v145 = v143 + v135, v46 < v143 + v135))
  {
    v145 = v135;
    v58 = 1;
  }

  else
  {
    v146 = v135 & 0x3F;
    v147 = vaddq_s64(vzip1q_s64(0, v142), vdupq_n_s64(v146));
    v148 = (v42 + 8 * (v135 >> 6));
    v134 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v144 + v146 >= 0x81)
    {
      v134 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v134);
    }
  }

  v149 = 0uLL;
  if (v144 > 0x80 || (v150 = v144 + v145, v46 < v144 + v145))
  {
    v150 = v145;
    v58 = 1;
    v154 = 0uLL;
  }

  else
  {
    v151 = v145 & 0x3F;
    v152 = vaddq_s64(vzip1q_s64(0, v142), vdupq_n_s64(v151));
    v153 = (v42 + 8 * (v145 >> 6));
    v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
    if (v144 + v151 >= 0x81)
    {
      v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
    }
  }

  v155 = vpaddq_s32(v78, v78).u64[0];
  v156.i64[0] = v155;
  v156.i64[1] = HIDWORD(v155);
  v157 = v156;
  v158 = vaddvq_s64(v156);
  v159 = v158;
  if (v158 > 0x80 || (v160 = v158 + v150, v46 < v158 + v150))
  {
    v160 = v150;
    v58 = 1;
  }

  else
  {
    v161 = v150 & 0x3F;
    v162 = vaddq_s64(vzip1q_s64(0, v157), vdupq_n_s64(v161));
    v163 = (v42 + 8 * (v150 >> 6));
    v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v163, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v162)), vshlq_u64(vdupq_lane_s64(v163->i64[0], 0), vnegq_s64(v162)));
    if (v159 + v161 >= 0x81)
    {
      v149 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v163[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v162)), vshlq_u64(vdupq_laneq_s64(v163[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v162))), v149);
    }
  }

  if (v159 > 0x80 || v46 < v159 + v160)
  {
    goto LABEL_109;
  }

  v164 = vzip1_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
  v165.i64[0] = v164.u32[0];
  v165.i64[1] = v164.u32[1];
  v166.i64[0] = 0x1F0000001FLL;
  v166.i64[1] = 0x1F0000001FLL;
  v167 = vaddq_s32(v78, v166);
  v168.i64[0] = 0x2000000020;
  v168.i64[1] = 0x2000000020;
  v169 = vsubq_s32(v168, v78);
  v170 = (v42 + 8 * (v160 >> 6));
  v171 = vaddq_s64(vzip1q_s64(0, v157), vdupq_n_s64(v160 & 0x3F));
  v172 = vnegq_s64(v165);
  v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v171)));
  if (v159 + (v160 & 0x3F) < 0x81)
  {
    if (v58)
    {
      goto LABEL_109;
    }

    v178 = vshlq_u64(v173, v172);
    v176 = vzip2q_s64(v173, v178);
    v177 = vzip1q_s64(v173, v178);
  }

  else
  {
    if (v58)
    {
      goto LABEL_109;
    }

    v174 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
    v175 = vshlq_u64(v174, v172);
    v176 = vzip2q_s64(v174, v175);
    v177 = vzip1q_s64(v174, v175);
  }

  v179 = vshlq_s32(vshlq_s32(vuzp1q_s32(v177, v176), v169), v167);
  v8 = a4 + 1;
  if (v46 + 8 * v8 - (v159 + v160) - 512 >= 9)
  {
LABEL_109:
    v180 = 0;
    v181 = 0;
    v182 = 8 * (&v308 & 7);
    v183 = 32;
    do
    {
      v184 = 64 - v182;
      if (64 - v182 >= v183)
      {
        v184 = v183;
      }

      *(&v308 + v180) |= ((0xFFFFFFFFFFFFFFFFLL >> v181) & ~(-1 << v184)) << v182;
      v181 += v184;
      v185 = v184 + v182;
      v180 += v185 >> 6;
      v182 = v185 & 0x3F;
      v183 -= v184;
    }

    while (v183);
    v8 = 0;
    v186 = (a1 + a2);
    *a1 = 0;
    *(a1 + 8) = 0;
    v187 = (a1 + 2 * a2);
    *v186 = 0;
    v186[1] = 0;
    v188 = (a1 + a2 + 2 * a2);
    *v187 = 0;
    v187[1] = 0;
    *v188 = 0;
    v188[1] = 0;
    return v8;
  }

  v301 = v79;
  v303 = v80;
  v305 = v81;
  v307 = v82;
  v190 = vzip1_s32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
  v191 = vzip1_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL));
  v192 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
  v193 = vzip1_s32(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
  v194 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v195.i64[0] = v190.u32[0];
  v195.i64[1] = v190.u32[1];
  v196 = v195;
  v195.i64[0] = v191.u32[0];
  v195.i64[1] = v191.u32[1];
  v197 = v195;
  v195.i64[0] = v192.u32[0];
  v195.i64[1] = v192.u32[1];
  v198 = v195;
  v195.i64[0] = v193.u32[0];
  v195.i64[1] = v193.u32[1];
  v199 = v195;
  v195.i64[0] = v194.u32[0];
  v195.i64[1] = v194.u32[1];
  v200 = vnegq_s64(v199);
  v201 = vnegq_s64(v195);
  v202 = vshlq_u64(v83, vnegq_s64(v196));
  v203 = vshlq_u64(v95, vnegq_s64(v197));
  v204 = vshlq_u64(v121, vnegq_s64(v198));
  v205 = vshlq_u64(v119, v200);
  v206 = vshlq_u64(v139, v200);
  v207 = vshlq_u64(v134, v201);
  v208 = vshlq_u64(v154, v201);
  v209 = vzip2q_s64(v83, v202);
  v210 = vzip1q_s64(v83, v202);
  v202.i64[0] = 0x2000000020;
  v202.i64[1] = 0x2000000020;
  v211 = vzip2q_s64(v95, v203);
  v212 = vzip1q_s64(v95, v203);
  v203.i64[0] = 0x2000000020;
  v203.i64[1] = 0x2000000020;
  v213 = vzip2q_s64(v121, v204);
  v214 = vzip1q_s64(v121, v204);
  v215 = vzip2q_s64(v119, v205);
  v216 = vzip1q_s64(v119, v205);
  v205.i64[0] = 0x2000000020;
  v205.i64[1] = 0x2000000020;
  v217 = vzip2q_s64(v139, v206);
  v218 = vzip1q_s64(v139, v206);
  v219 = vzip2q_s64(v134, v207);
  v220 = vzip1q_s64(v134, v207);
  v207.i64[0] = 0x2000000020;
  v207.i64[1] = 0x2000000020;
  v221 = vzip2q_s64(v154, v208);
  v222 = vzip1q_s64(v154, v208);
  v223 = v44 >> 10;
  v224 = vuzp1q_s32(v210, v209);
  v208.i64[0] = 0x1F0000001FLL;
  v208.i64[1] = 0x1F0000001FLL;
  v225 = vuzp1q_s32(v212, v211);
  v212.i64[0] = 0x1F0000001FLL;
  v212.i64[1] = 0x1F0000001FLL;
  v226 = vsubq_s32(v203, v104);
  v227 = vuzp1q_s32(v214, v213);
  v228 = vsubq_s32(v203, v75);
  v229 = vuzp1q_s32(v216, v215);
  v203.i64[0] = 0x1F0000001FLL;
  v203.i64[1] = 0x1F0000001FLL;
  v230 = vsubq_s32(v205, v76);
  v231 = vuzp1q_s32(v218, v217);
  v232 = vuzp1q_s32(v220, v219);
  v218.i64[0] = 0x1F0000001FLL;
  v218.i64[1] = 0x1F0000001FLL;
  v233 = vsubq_s32(v207, v77);
  v234 = vaddq_s32(v104, v212);
  v235 = vaddq_s32(v75, v212);
  v236 = vshlq_s32(v227, v228);
  v237 = vaddq_s32(v76, v203);
  v238 = vaddq_s32(v77, v218);
  v239 = vshlq_s32(vshlq_s32(v224, vsubq_s32(v202, v84)), vaddq_s32(v84, v208));
  v240 = vshlq_s32(vshlq_s32(v225, v226), v234);
  v241 = vshlq_s32(v236, v235);
  v242 = vshlq_s32(vshlq_s32(v229, v230), v237);
  v243 = vshlq_s32(vshlq_s32(v231, v230), v237);
  v244 = vshlq_s32(vshlq_s32(v232, v233), v238);
  v245 = vshlq_s32(vshlq_s32(vuzp1q_s32(v222, v221), v233), v238);
  v246 = vshlq_u64(v149, v172);
  v247 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v149, v246), vzip2q_s64(v149, v246)), v169), v167);
  if (v94 == 2)
  {
    v248 = vdupq_lane_s32(v99, 1);
    v249.i64[0] = 0xFFFFFFFF00000000;
    v249.i64[1] = 0xFFFFFFFF00000000;
    v248.i64[0] = 0;
    v250 = vaddq_s32(vandq_s8(vdupq_lane_s32(v99, 0), v249), v248);
    v251 = vmlaq_lane_s32(v248, xmmword_29D2F11A0, v99, 0);
    v240 = vaddq_s32(v240, v250);
    *v249.i8 = vshl_u32(v99, 0x100000002);
    v252 = vdupq_lane_s32(*v249.i8, 1);
    v241 = vaddq_s32(v241, v251);
    v242 = vaddq_s32(vaddq_s32(v250, v252), v242);
    v253 = vdupq_lane_s32(*v249.i8, 0);
    v243 = vaddq_s32(vaddq_s32(v251, v252), v243);
    v244 = vaddq_s32(vaddq_s32(v250, v253), v244);
    v245 = vaddq_s32(vaddq_s32(v251, v253), v245);
    v254 = vdupq_lane_s32(vadd_s32(*v249.i8, *v252.i8), 0);
    v247 = vaddq_s32(vaddq_s32(v254, v250), v247);
    v179 = vaddq_s32(vaddq_s32(v254, v251), v179);
  }

  v255 = vdupq_n_s32(v223);
  v256 = vdupq_lane_s32(*v239.i8, 0);
  v257 = vandq_s8(v256, v301);
  v258 = vsubq_s32(vaddq_s32(vandq_s8(v239, v301), v240), v257);
  v259 = vsubq_s32(v241, v257);
  v260 = vandq_s8(v256, v303);
  v261 = vsubq_s32(v242, v260);
  v262 = vsubq_s32(v243, v260);
  v263 = vandq_s8(v256, v305);
  v264 = vsubq_s32(v244, v263);
  v265 = vsubq_s32(v245, v263);
  v266 = vandq_s8(v256, v307);
  v267 = vsubq_s32(v247, v266);
  v268 = vsubq_s32(v179, v266);
  v266.i64[0] = 0x100000001;
  v266.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v45 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v266)))
  {
    v269 = vnegq_s32((*&v45 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v270 = v259;
    v270.i32[3] = v258.i32[0];
    v271 = v258;
    v271.i32[0] = v259.i32[3];
    v321.val[0] = vbslq_s8(v269, v271, v258);
    v321.val[1] = vbslq_s8(v269, v270, v259);
    v270.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v270.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v322.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v321, xmmword_29D2F0F80), v269), v321.val[0]);
    v322.val[1] = vaddq_s32(v321.val[1], vandq_s8(vqtbl2q_s8(v321, v270), v269));
    v258 = vaddq_s32(vandq_s8(vqtbl2q_s8(v322, xmmword_29D2F0F90), v269), v322.val[0]);
    v259 = vaddq_s32(v322.val[1], vandq_s8(vqtbl2q_s8(v322, v270), v269));
    v322.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v261.i8, xmmword_29D2F0FA0), v269), v261);
    v322.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v261.i8, xmmword_29D2F0FB0), v269), v262);
    v261 = vaddq_s32(vandq_s8(vqtbl2q_s8(v322, xmmword_29D2F0FC0), v269), v322.val[0]);
    v262 = vaddq_s32(v322.val[1], vandq_s8(vqtbl2q_s8(v322, v270), v269));
    v322.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v264.i8, xmmword_29D2F0FD0), v269), v264);
    v322.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v264.i8, xmmword_29D2F0F80), v269), v265);
    v264 = vaddq_s32(vandq_s8(vqtbl2q_s8(v322, v270), v269), v322.val[0]);
    v265 = vaddq_s32(v322.val[1], vandq_s8(vqtbl2q_s8(v322, xmmword_29D2F0FE0), v269));
    v321.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0FF0), v269), v267);
    v321.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0F80), v269), v268);
    v267 = vaddq_s32(vandq_s8(vqtbl2q_s8(v321, v270), v269), v321.val[0]);
    v268 = vaddq_s32(v321.val[1], vandq_s8(vqtbl2q_s8(v321, xmmword_29D2F1000), v269));
  }

  v272 = vaddq_s32(v255, v258);
  v273 = vaddq_s32(v259, v255);
  v274 = vaddq_s32(v261, v255);
  v275 = vaddq_s32(v262, v255);
  v276 = vaddq_s32(v264, v255);
  v277 = vaddq_s32(v265, v255);
  v278 = vaddq_s32(v267, v255);
  v279 = vaddq_s32(v268, v255);
  v280.i64[0] = 0x1000000010;
  v280.i64[1] = 0x1000000010;
  v281 = vcgtq_u32(v280, v45);
  v280.i64[0] = -1;
  v280.i64[1] = -1;
  v282 = (a1 + a2);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v272, v280), v281), v272);
  *(a1 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v274, v280), v281), v274);
  v283 = (a1 + 2 * a2);
  *v282 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v273, v280), v281), v273);
  v282[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v275, v280), v281), v275);
  *v283 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v276, v280), v281), v276);
  v283[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v278, v280), v281), v278);
  v284 = (v283 + a2);
  *v284 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v277, v280), v281), v277);
  v284[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v279, v280), v281), v279);
  return v8;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    if (v9 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v9 < 5 || v8 < 5)
  {
    a4[3] = 0;
  }

  else
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
    v11 += result;
  }

  v23 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v8;
    }

    if (v23 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 64, a2, v25, v24, a7);
    v11 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v26 = v9 - 12;
  if (v9 >= 0xD && v8)
  {
    if (v8 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v8;
    }

    if (v26 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 96, a2, v28, v27, a7);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v8 - 4;
    }

    if (v23 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v9 - 8;
    }

    v31 = 4 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v31 = 4 * a2;
  if (v9 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v8 < 5)
  {
    goto LABEL_79;
  }

  if (v18 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v8 - 4;
  }

  if (v26 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v9 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 96, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 544, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 96, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 608, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *a3;
  v8 = *(a3 + 16);
  v9 = *(a3 + 32);
  v10 = *(a3 + a4);
  v11 = *(a3 + a4 + 16);
  v12 = vdupq_lane_s32(*a3, 0);
  v13 = vsubq_s32(*a3, v12);
  v14 = vsubq_s32(v8, v12);
  v15 = vsubq_s32(v10, v12);
  v16 = vsubq_s32(v11, v12);
  v17 = vsubq_s32(v9, v12);
  v18 = vsubq_s32(*(a3 + 48), v12);
  v19 = vsubq_s32(*(a3 + a4 + 32), v12);
  v20 = vsubq_s32(*(a3 + a4 + 48), v12);
  v21 = vmaxq_s32(v13, v14);
  v462 = v13;
  v463 = v14;
  v22 = vminq_s32(v13, v14);
  v21.i32[0] = vmaxvq_s32(v21);
  v22.i32[0] = vminvq_s32(v22);
  v23 = vdupq_lane_s32(*v21.i8, 0);
  v24 = vdupq_lane_s32(*v22.i8, 0);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v25 = vmaxq_s32(v23, v13);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v27 = vminq_s32(v24, v26);
  v28 = vzip1q_s32(v23, v24);
  v29.i64[0] = 0x2000000020;
  v29.i64[1] = 0x2000000020;
  v30 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v28)), vceqzq_s32(v28));
  v31 = vpmaxq_s32(v30, v30);
  v32 = vmaxq_s32(v15, v16);
  v464 = v15;
  v33 = vminq_s32(v15, v16);
  v32.i32[0] = vmaxvq_s32(v32);
  v33.i32[0] = vminvq_s32(v33);
  v34 = vdupq_lane_s32(*v32.i8, 0);
  v35 = vdupq_lane_s32(*v33.i8, 0);
  v36 = vmaxq_s32(v25, v34);
  v37 = vminq_s32(v27, v35);
  v38 = vzip1q_s32(v34, v35);
  v39 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v38)), vceqzq_s32(v38));
  v40 = vpmaxq_s32(v39, v39);
  v41 = vmaxq_s32(v17, v18);
  v42 = vminq_s32(v17, v18);
  v41.i32[0] = vmaxvq_s32(v41);
  v43 = vdupq_lane_s32(*v41.i8, 0);
  v42.i32[0] = vminvq_s32(v42);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v45 = vmaxq_s32(v36, v43);
  v46 = vminq_s32(v37, v44);
  v47 = vzip1q_s32(v43, v44);
  v48 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v47)), vceqzq_s32(v47));
  v49 = vmaxq_s32(v19, v20);
  v465 = v19;
  v466 = v20;
  v50 = vminq_s32(v19, v20);
  v49.i32[0] = vmaxvq_s32(v49);
  v50.i32[0] = vminvq_s32(v50);
  v51 = vdupq_lane_s32(*v49.i8, 0);
  v52 = vdupq_lane_s32(*v50.i8, 0);
  v53 = vpmaxq_s32(v48, v48);
  v54 = vminq_s32(v46, v52);
  v55 = vzip1q_s32(v51, v52);
  v56 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v55)), vceqzq_s32(v55));
  v57 = vpmaxq_s32(v56, v56);
  v58 = vmaxq_s32(vmaxq_s32(v31, v40), vmaxq_s32(v53, v57));
  v59 = vclzq_s32(vsubq_s32(vmaxq_s32(v45, v51), v54));
  v60 = vsubq_s32(v29, v59);
  v61 = vminq_s32(v60, v58);
  if (vmaxvq_s32(v61))
  {
    v62 = 0;
    v63 = 0;
    v64.i64[0] = 0x1F0000001FLL;
    v64.i64[1] = 0x1F0000001FLL;
    v65 = vsubq_s32(v64, v59);
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v66 = vcgtq_s32(v58, v60);
    v67 = vandq_s8(vsubq_s32(vshlq_s32(v64, v65), v54), v66);
    v68.i64[0] = 0x800000008;
    v68.i64[1] = 0x800000008;
    v69.i64[0] = 0x300000003;
    v69.i64[1] = 0x300000003;
    v70 = vorrq_s8(vandq_s8(vceqzq_s32(v61), v69), vandq_s8(v66, v68));
    v66.i64[0] = 0xF0000000FLL;
    v66.i64[1] = 0xF0000000FLL;
    v71 = vmaxq_s32(vminq_s32(vsubq_s32(v61, v31), v66), 0);
    v72 = vmaxq_s32(vminq_s32(vsubq_s32(v61, v40), v66), 0);
    v73 = vmaxq_s32(vminq_s32(vsubq_s32(v61, v53), v66), 0);
    v74 = vmaxq_s32(vminq_s32(vsubq_s32(v61, v57), v66), 0);
    v460 = vsubq_s32(v61, v71);
    v461 = vsubq_s32(v61, v72);
    v467 = vsubq_s32(v61, v73);
    v75 = vsubq_s32(v61, v74);
    v76 = vceqq_s32(vaddq_s32(v74, v73), vnegq_s32(vaddq_s32(v71, v72)));
    v72.i64[0] = 0x400000004;
    v72.i64[1] = 0x400000004;
    v77 = vbicq_s8(v72, v76);
    v78 = vorrq_s8(v77, v70);
    if (a5 >= 2 && a6)
    {
      v79 = *(a3 + 32);
      v80 = *(a3 + a4);
      v81 = *(a3 + a4 + 32);
      v455 = v67;
      v82 = vsub_s32(*&vextq_s8(v7, v7, 4uLL), vdup_lane_s32(*v7.i8, 0));
      v83 = vshl_n_s32(v82, 0x10uLL);
      v84 = v83.i32[1];
      v85 = vshl_s32(v83, 0xFFFFFFF1FFFFFFF2);
      v86 = v83.i32[1] >> 16;
      v87 = vdupq_n_s32(v83.i32[0] >> 16);
      v88 = vdupq_n_s32(v86);
      v89.i64[0] = 0xFFFFFFFF00000000;
      v89.i64[1] = 0xFFFFFFFF00000000;
      v88.i64[0] = 0;
      v90 = vaddq_s32(v88, vandq_s8(v87, v89));
      v91 = vmlaq_s32(v88, v87, xmmword_29D2F11A0);
      v92 = vsubq_s32(v462, v90);
      v93 = vsubq_s32(v463, v91);
      v94 = vdupq_n_s32(-v85.i32[1]);
      v95 = vsubq_s32(vaddq_s32(v94, v464), v90);
      v96 = vsubq_s32(vaddq_s32(v16, v94), v91);
      v97 = vdupq_n_s32(-v85.i32[0]);
      v458 = v17;
      v98 = vsubq_s32(vaddq_s32(v97, v17), v90);
      v457 = v16;
      v99 = vaddq_s32(vsubq_s32(v97, v91), v18);
      v100 = vdupq_n_s32(-v85.i32[0] - v85.i32[1]);
      v101 = vsubq_s32(vaddq_s32(v100, v465), v90);
      v102 = vaddq_s32(vsubq_s32(v100, v91), v466);
      v103 = vmaxq_s32(v92, v93);
      v452 = v92;
      v451 = v93;
      v104 = vminq_s32(v92, v93);
      v103.i32[0] = vmaxvq_s32(v103);
      v104.i32[0] = vminvq_s32(v104);
      v105 = vdupq_lane_s32(*v103.i8, 0);
      v106 = vdupq_lane_s32(*v104.i8, 0);
      v92.i64[0] = 0x8000000080000000;
      v92.i64[1] = 0x8000000080000000;
      v107 = vmaxq_s32(v105, v92);
      v108 = vminq_s32(v106, v92);
      v109 = vzip1q_s32(v105, v106);
      v93.i64[0] = 0x2000000020;
      v93.i64[1] = 0x2000000020;
      v110 = vbicq_s8(vsubq_s32(v93, vclsq_s32(v109)), vceqzq_s32(v109));
      v111 = vpmaxq_s32(v110, v110);
      v112 = vmaxq_s32(v95, v96);
      v450 = v96;
      v113 = vminq_s32(v95, v96);
      v112.i32[0] = vmaxvq_s32(v112);
      v113.i32[0] = vminvq_s32(v113);
      v114 = vdupq_lane_s32(*v112.i8, 0);
      v115 = vdupq_lane_s32(*v113.i8, 0);
      v116 = vmaxq_s32(v107, v114);
      v117 = vminq_s32(v108, v115);
      v118 = vzip1q_s32(v114, v115);
      v119 = vbicq_s8(vsubq_s32(v93, vclsq_s32(v118)), vceqzq_s32(v118));
      v459 = v18;
      v120 = vpmaxq_s32(v119, v119);
      v121 = vmaxq_s32(v98, v99);
      v448 = v99;
      v449 = v98;
      v122 = vminq_s32(v98, v99);
      v121.i32[0] = vmaxvq_s32(v121);
      v122.i32[0] = vminvq_s32(v122);
      v123 = vdupq_lane_s32(*v121.i8, 0);
      v124 = vdupq_lane_s32(*v122.i8, 0);
      v125 = vmaxq_s32(v116, v123);
      v126 = vminq_s32(v117, v124);
      v127 = vzip1q_s32(v123, v124);
      v128 = vbicq_s8(vsubq_s32(v93, vclsq_s32(v127)), vceqzq_s32(v127));
      v129 = vpmaxq_s32(v128, v128);
      v130 = vmaxq_s32(v101, v102);
      v131 = vminq_s32(v101, v102);
      v130.i32[0] = vmaxvq_s32(v130);
      v131.i32[0] = vminvq_s32(v131);
      v132 = vdupq_lane_s32(*v130.i8, 0);
      v133 = vdupq_lane_s32(*v131.i8, 0);
      v134 = vmaxq_s32(v125, v132);
      v135 = vminq_s32(v126, v133);
      v136 = vzip1q_s32(v132, v133);
      v137 = vbicq_s8(vsubq_s32(v93, vclsq_s32(v136)), vceqzq_s32(v136));
      v138 = vpmaxq_s32(v137, v137);
      v139 = vmaxq_s32(vmaxq_s32(v111, v120), vmaxq_s32(v129, v138));
      v447 = v135;
      v445 = vclzq_s32(vsubq_s32(v134, v135));
      v140 = vsubq_s32(v93, v445);
      v141 = vcgtq_s32(v139, v140);
      v142 = vminq_s32(v140, v139);
      v135.i64[0] = 0x200000002;
      v135.i64[1] = 0x200000002;
      v139.i64[0] = 0xA0000000ALL;
      v139.i64[1] = 0xA0000000ALL;
      v446 = v141;
      v143 = vbslq_s8(v141, v139, v135);
      v139.i64[0] = 0x100000001;
      v139.i64[1] = 0x100000001;
      v144 = vmaxq_s32(v142, v139);
      v135.i64[0] = 0xF0000000FLL;
      v135.i64[1] = 0xF0000000FLL;
      v145 = vmaxq_s32(vminq_s32(vsubq_s32(v144, v111), v135), 0);
      v456 = v75;
      v146 = vmaxq_s32(vminq_s32(vsubq_s32(v144, v120), v135), 0);
      v147 = vmaxq_s32(vminq_s32(vsubq_s32(v144, v129), v135), 0);
      v148 = vmaxq_s32(vminq_s32(vsubq_s32(v144, v138), v135), 0);
      v149 = vsubq_s32(v144, v145);
      v150 = vsubq_s32(v144, v146);
      v151 = vsubq_s32(v144, v147);
      v152 = vsubq_s32(v144, v148);
      v153 = vaddq_s32(v145, v146);
      v135.i64[0] = 0x400000004;
      v135.i64[1] = 0x400000004;
      v154 = vbicq_s8(v135, vceqq_s32(vaddq_s32(v148, v147), vnegq_s32(v153)));
      v155 = vorrq_s8(v154, v143);
      v156 = v82.i16[0];
      v157 = v151;
      *v154.i8 = vqmovn_u32(v155);
      v146.i64[0] = 0x8000800080008;
      v146.i64[1] = 0x8000800080008;
      *v153.i8 = vqmovn_u32(v144);
      v158 = vbicq_s8(v153, vceqzq_s16(vandq_s8(v154, v146)));
      v143.i64[0] = 0x2000200020002;
      v143.i64[1] = 0x2000200020002;
      v133.i64[0] = 0x10001000100010;
      v133.i64[1] = 0x10001000100010;
      v159 = vandq_s8(vshlq_n_s16(v154, 2uLL), v133);
      v135.i64[0] = 0x3000300030003;
      v135.i64[1] = 0x3000300030003;
      v160.i64[0] = 0x20002000200020;
      v160.i64[1] = 0x20002000200020;
      v161 = vaddq_s16(v158, v159);
      *v159.i8 = vqmovn_u32(v149);
      v151.i64[0] = 0x7000700070007;
      v151.i64[1] = 0x7000700070007;
      v162 = vmlaq_s16(vaddq_s16(v161, vandq_s8(vceqq_s16(vandq_s8(v154, v135), v143), v160)), v159, v151);
      v163 = vaddq_s32(vaddq_s32(v157, v150), v152);
      *v163.i8 = vqmovn_u32(v163);
      v164 = vshlq_n_s16(v163, 3uLL);
      v165 = vaddq_s16(v162, v164);
      v454 = v78;
      *v164.i8 = vqmovn_u32(v78);
      v166 = vceqzq_s16(vandq_s8(v164, v146));
      *v146.i8 = vqmovn_u32(v61);
      v167 = vaddq_s16(vbicq_s8(v146, v166), vandq_s8(vshlq_n_s16(v164, 2uLL), v133));
      v168 = vaddq_s16(v167, vandq_s8(vceqq_s16(vandq_s8(v164, v135), v143), v160));
      *v167.i8 = vqmovn_u32(v460);
      v169 = vmlaq_s16(v168, v167, v151);
      v170 = vaddq_s32(v467, v461);
      v171 = vaddq_s32(v170, v456);
      *v170.i8 = vqmovn_u32(v171);
      v172 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v169, vshlq_n_s16(v170, 3uLL)), v165)), 0);
      v63 = v84 & 0xFFFF0000 | v156;
      v173 = vaddvq_s32(v172);
      if (v173)
      {
        v174.i64[0] = 0x1F0000001FLL;
        v174.i64[1] = 0x1F0000001FLL;
        v175.i64[0] = -1;
        v175.i64[1] = -1;
        v176 = vandq_s8(vsubq_s32(vshlq_s32(v175, vsubq_s32(v174, v445)), v447), v446);
        v177 = vcltzq_s32(vshlq_n_s32(v172, 0x1FuLL));
        v462 = vbslq_s8(v177, v452, v462);
        v463 = vbslq_s8(v177, v451, v463);
        v464 = vbslq_s8(v177, v95, v464);
        v457 = vbslq_s8(v177, v450, v457);
        v458 = vbslq_s8(v177, v449, v458);
        v465 = vbslq_s8(v177, v101, v465);
        v466 = vbslq_s8(v177, v102, v466);
        v459 = vbslq_s8(v177, v448, v459);
        v460 = vbslq_s8(v177, v149, v460);
        v467 = vbslq_s8(v177, v157, v467);
        v61 = vbslq_s8(v177, v144, v61);
        v454 = vbslq_s8(v177, v155, v78);
        v455 = vbslq_s8(v177, v176, v455);
        v461 = vbslq_s8(v177, v150, v461);
        v456 = vbslq_s8(v177, v152, v456);
        v171 = vaddq_s32(vaddq_s32(v467, v461), v456);
      }

      v453 = v171;
      v178 = *(a3 + a4 + 16);
      v178.i32[3] = HIDWORD(*(a3 + 16));
      v179 = vsubq_s32(v10, vqtbl2q_s8(*&v80, xmmword_29D2F0FA0));
      v189 = vsubq_s32(v7, vqtbl2q_s8(*v7.i8, xmmword_29D2F0F80));
      v180 = vsubq_s32(v8, vqtbl2q_s8(*v7.i8, xmmword_29D2F1030));
      v181 = vsubq_s32(v11, vqtbl2q_s8(*&v80, xmmword_29D2F1040));
      v182 = *(a3 + 48);
      HIDWORD(v182) = v178.i32[3];
      v183 = vsubq_s32(v9, vqtbl2q_s8(*&v79, xmmword_29D2F1050));
      v184 = *(a3 + a4 + 48);
      HIDWORD(v184) = v178.i32[3];
      v185 = vsubq_s32(*(a3 + 48), vqtbl2q_s8(*&v79, xmmword_29D2F0F80));
      v186 = vsubq_s32(v81, vqtbl2q_s8(*v81.i8, xmmword_29D2F1060));
      v187 = vsubq_s32(*(a3 + a4 + 48), vqtbl2q_s8(*v81.i8, xmmword_29D2F0F80));
      v188 = v180;
      v188.i32[3] = v189.i32[0];
      v189.i32[0] = v180.i32[3];
      v190 = vmaxq_s32(v189, v188);
      v191 = vminq_s32(v189, v188);
      v190.i32[0] = vmaxvq_s32(v190);
      v191.i32[0] = vminvq_s32(v191);
      v192 = vdupq_lane_s32(*v190.i8, 0);
      v193 = vdupq_lane_s32(*v191.i8, 0);
      v194.i64[0] = 0x8000000080000000;
      v194.i64[1] = 0x8000000080000000;
      v195 = vmaxq_s32(v192, v194);
      v196 = vminq_s32(v193, v194);
      v197 = vzip1q_s32(v192, v193);
      v198.i64[0] = 0x2000000020;
      v198.i64[1] = 0x2000000020;
      v199 = vbicq_s8(vsubq_s32(v198, vclsq_s32(v197)), vceqzq_s32(v197));
      v200 = vpmaxq_s32(v199, v199);
      v201 = vmaxq_s32(v179, v181);
      v202 = vminq_s32(v179, v181);
      v201.i32[0] = vmaxvq_s32(v201);
      v202.i32[0] = vminvq_s32(v202);
      v203 = vdupq_lane_s32(*v201.i8, 0);
      v204 = vdupq_lane_s32(*v202.i8, 0);
      v205 = vmaxq_s32(v195, v203);
      v206 = vminq_s32(v196, v204);
      v207 = vzip1q_s32(v203, v204);
      v208 = vbicq_s8(vsubq_s32(v198, vclsq_s32(v207)), vceqzq_s32(v207));
      v209 = vpmaxq_s32(v208, v208);
      v210 = vmaxq_s32(v183, v185);
      v211 = vminq_s32(v183, v185);
      v210.i32[0] = vmaxvq_s32(v210);
      v211.i32[0] = vminvq_s32(v211);
      v212 = vdupq_lane_s32(*v210.i8, 0);
      v213 = vdupq_lane_s32(*v211.i8, 0);
      v214 = vmaxq_s32(v205, v212);
      v215 = vminq_s32(v206, v213);
      v216 = vzip1q_s32(v212, v213);
      v217 = vbicq_s8(vsubq_s32(v198, vclsq_s32(v216)), vceqzq_s32(v216));
      v218 = vpmaxq_s32(v217, v217);
      v219 = vmaxq_s32(v186, v187);
      v220 = vminq_s32(v186, v187);
      v219.i32[0] = vmaxvq_s32(v219);
      v220.i32[0] = vminvq_s32(v220);
      v221 = vdupq_lane_s32(*v219.i8, 0);
      v222 = vdupq_lane_s32(*v220.i8, 0);
      v223 = vmaxq_s32(v214, v221);
      v224 = vminq_s32(v215, v222);
      v225 = vzip1q_s32(v221, v222);
      v226 = vbicq_s8(vsubq_s32(v198, vclsq_s32(v225)), vceqzq_s32(v225));
      v227 = vpmaxq_s32(v226, v226);
      v228 = vmaxq_s32(vmaxq_s32(v200, v209), vmaxq_s32(v218, v227));
      v229 = vclzq_s32(vsubq_s32(v223, v224));
      v230 = vsubq_s32(v198, v229);
      v231 = vcgtq_s32(v228, v230);
      v77 = vminq_s32(v230, v228);
      v230.i64[0] = 0x900000009;
      v230.i64[1] = 0x900000009;
      v194.i64[0] = 0x200000002;
      v194.i64[1] = 0x200000002;
      v232 = vorrq_s8(vandq_s8(vceqzq_s32(v77), v194), vsubq_s32(vandq_s8(v231, v230), vmvnq_s8(v231)));
      v194.i64[0] = 0xF0000000FLL;
      v194.i64[1] = 0xF0000000FLL;
      v233 = vmaxq_s32(vminq_s32(vsubq_s32(v77, v200), v194), 0);
      v234 = vmaxq_s32(vminq_s32(vsubq_s32(v77, v209), v194), 0);
      v235 = vmaxq_s32(vminq_s32(vsubq_s32(v77, v218), v194), 0);
      v236 = vmaxq_s32(vminq_s32(vsubq_s32(v77, v227), v194), 0);
      v237 = vsubq_s32(v77, v233);
      v238 = vaddq_s32(v236, v235);
      v194.i64[0] = 0x400000004;
      v194.i64[1] = 0x400000004;
      v239 = vorrq_s8(vbicq_s8(v194, vceqq_s32(v238, vnegq_s32(vaddq_s32(v233, v234)))), v232);
      *v238.i8 = vqmovn_u32(v239);
      v240.i64[0] = 0x8000800080008;
      v240.i64[1] = 0x8000800080008;
      *v232.i8 = vqmovn_u32(v77);
      v241 = vbicq_s8(v232, vceqzq_s16(vandq_s8(v238, v240)));
      v178.i64[0] = 0x10001000100010;
      v178.i64[1] = 0x10001000100010;
      v242 = vandq_s8(vshlq_n_s16(v238, 2uLL), v178);
      v243.i64[0] = 0x3000300030003;
      v243.i64[1] = 0x3000300030003;
      v244.i64[0] = 0x2000200020002;
      v244.i64[1] = 0x2000200020002;
      v245.i64[0] = 0x20002000200020;
      v245.i64[1] = 0x20002000200020;
      v246 = vandq_s8(vceqq_s16(vandq_s8(v238, v243), v244), v245);
      v247 = vaddq_s16(v241, v242);
      *v242.i8 = vqmovn_u32(v237);
      v73.i64[0] = 0x7000700070007;
      v73.i64[1] = 0x7000700070007;
      v248 = vmlaq_s16(vaddq_s16(v247, v246), v242, v73);
      *v246.i8 = vqmovn_u32(v454);
      *v242.i8 = vqmovn_u32(v61);
      v249 = vbicq_s8(v242, vceqzq_s16(vandq_s8(v246, v240)));
      v250 = vandq_s8(vshlq_n_s16(v246, 2uLL), v178);
      v251 = vandq_s8(vceqq_s16(vandq_s8(v246, v243), v244), v245);
      v252 = vaddq_s16(vaddq_s16(v249, v250), v251);
      *v251.i8 = vqmovn_u32(v460);
      v253 = vmlaq_s16(v252, v251, v73);
      v254 = vsubq_s32(v77, v234);
      v255 = vsubq_s32(v77, v235);
      v256 = vsubq_s32(v77, v236);
      v257 = vaddq_s32(vaddq_s32(v255, v254), v256);
      *v257.i8 = vqmovn_u32(v257);
      v258 = vshlq_n_s16(v257, 3uLL);
      v259 = vaddq_s16(v248, v258);
      v73.i64[1] = v453.i64[1];
      *v258.i8 = vqmovn_u32(v453);
      v260 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v253, vshlq_n_s16(v258, 3uLL)), v259)), 0);
      v258.i16[0] = vaddvq_s32(v260);
      v261 = v258.u16[0];
      v262 = v460;
      v78 = v454;
      if (v258.i16[0])
      {
        v263.i64[0] = 0x1F0000001FLL;
        v263.i64[1] = 0x1F0000001FLL;
        v264 = vsubq_s32(v263, v229);
        v263.i64[0] = -1;
        v263.i64[1] = -1;
        v265 = vandq_s8(vsubq_s32(vshlq_s32(v263, v264), v224), v231);
        v266 = vcltzq_s32(vshlq_n_s32(v260, 0x1FuLL));
        v12.i32[0] = vbslq_s8(v266, vextq_s8(v8, v8, 0xCuLL), v12).u32[0];
        v267 = vbslq_s8(v266, v189, v462);
        v268 = vbslq_s8(v266, v188, v463);
        v269 = vbslq_s8(v266, v179, v464);
        v457 = vbslq_s8(v266, v181, v457);
        v73 = vbslq_s8(v266, v183, v458);
        v458 = v73;
        v459 = vbslq_s8(v266, v185, v459);
        v465 = vbslq_s8(v266, v186, v465);
        v466 = vbslq_s8(v266, v187, v466);
        v262 = vbslq_s8(v266, v237, v460);
        v270 = vbslq_s8(v266, v254, v461);
        v467 = vbslq_s8(v266, v255, v467);
        v75 = vbslq_s8(v266, v256, v456);
        v67 = vbslq_s8(v266, v265, v455);
        v61 = vbslq_s8(v266, v77, v61);
        v78 = vbslq_s8(v266, v239, v454);
      }

      else
      {
        v67 = v455;
        v75 = v456;
        v268 = v463;
        v269 = v464;
        v270 = v461;
        v267 = v462;
      }

      if (v173)
      {
        v272 = v261 == 0;
      }

      else
      {
        v272 = 0;
      }

      v62 = v272;
      v17 = v458;
      v18 = v459;
      v16 = v457;
    }

    else
    {
      v268 = v463;
      v269 = v464;
      v262 = v460;
      v270 = v461;
      v267 = v462;
    }

    *v77.i8 = vqmovn_u32(v78);
    v273.i64[0] = 0x8000800080008;
    v273.i64[1] = 0x8000800080008;
    *v73.i8 = vqmovn_u32(v61);
    v273.i16[0] = vbicq_s8(v73, vceqzq_s16(vandq_s8(v77, v273))).u16[0];
    v274.i64[0] = 0x3000300030003;
    v274.i64[1] = 0x3000300030003;
    v275.i64[0] = 0x2000200020002;
    v275.i64[1] = 0x2000200020002;
    v276 = vceqq_s16(vandq_s8(v77, v274), v275);
    v275.i64[0] = 0x20002000200020;
    v275.i64[1] = 0x20002000200020;
    v276.i16[0] = vandq_s8(v276, v275).u16[0];
    v275.i16[0] = vqmovn_u32(v262).u16[0];
    if (((v273.i16[0] + ((4 * v77.i16[0]) & 0x10) + v276.i16[0] - v275.i16[0] + 8 * v275.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v467, v270), v75)).u16[0]) - 471) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v277 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v278 = 8 * (a1 & 7);
      if (v278)
      {
        v279 = *v277 & ~(-1 << v278);
      }

      else
      {
        v279 = 0;
      }

      *a2 = 0;
      if (v61.i32[0])
      {
        v280 = (32 * v61.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v280 = 0;
      }

      v281 = v280 | v78.i8[0] & 0x1F | (v12.u32[0] << 10);
      v282 = (v281 << v278) | v279;
      if (v278 >= 0x16)
      {
        *v277 = v282;
        v282 = v281 >> (-8 * (a1 & 7u));
      }

      v283 = v278 + 42;
      v284 = vsubq_s32(v61, v262);
      v285 = vsubq_s32(v61, v270);
      v286 = vsubq_s32(v61, v467);
      v287 = vsubq_s32(v61, v75);
      *v284.i8 = vqmovn_u32(v284);
      *v284.i8 = vqmovn_u16(v284);
      *v285.i8 = vqmovn_u32(v285);
      *v285.i8 = vqmovn_u16(v285);
      *v286.i8 = vqmovn_u32(v286);
      *v286.i8 = vqmovn_u16(v286);
      *v287.i8 = vqmovn_u32(v287);
      *v287.i8 = vqmovn_u16(v287);
      v284.i32[0] = vzip1q_s16(vzip1q_s8(v284, v285), vzip1q_s8(v286, v287)).u32[0];
      v285.i64[0] = 0x400000004;
      v285.i64[1] = 0x400000004;
      v286.i64[0] = 0x404040404040404;
      v286.i64[1] = 0x404040404040404;
      v288 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v78, v285))), v286);
      v286.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v286.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v287.i64[0] = -1;
      v287.i64[1] = -1;
      v289 = vandq_s8(vshlq_u8(v287, vorrq_s8(v288, v286)), v284.u32[0]);
      v290 = vmovl_u8(*v288.i8);
      v291 = vpaddq_s16(vshlq_u16(vmovl_u8(*v289.i8), vtrn1q_s16(0, v290)), vmovl_high_u8(v289));
      v292 = vpaddq_s16(v290, vmovl_high_u8(v288));
      v293 = vmovl_u16(*v292.i8);
      v294 = vmovl_high_u16(v292);
      v295 = vpaddq_s32(vshlq_u32(vmovl_u16(*v291.i8), vtrn1q_s32(0, v293)), vshlq_u32(vmovl_high_u16(v291), vtrn1q_s32(0, v294)));
      v296 = vpaddq_s32(v293, v294);
      v297.i64[0] = v295.u32[0];
      v297.i64[1] = v295.u32[1];
      v298 = v297;
      v297.i64[0] = v295.u32[2];
      v297.i64[1] = v295.u32[3];
      v299 = v297;
      v297.i64[0] = v296.u32[0];
      v297.i64[1] = v296.u32[1];
      v300 = v297;
      v297.i64[0] = v296.u32[2];
      v297.i64[1] = v296.u32[3];
      v301 = vpaddq_s64(vshlq_u64(v298, vzip1q_s64(0, v300)), vshlq_u64(v299, vzip1q_s64(0, v297)));
      v302 = vpaddq_s64(v300, v297);
      v303 = (v278 + 42) & 0x3A;
      v304 = (v301.i64[0] << v303) | v282;
      if ((v302.i64[0] + v303) >= 0x40)
      {
        *(v277 + ((v283 >> 3) & 8)) = v304;
        v304 = v301.i64[0] >> -v303;
      }

      v305 = v302.i64[0] + v283;
      v306 = v304 | (v301.i64[1] << v305);
      if ((v305 & 0x3F) + v302.i64[1] >= 0x40)
      {
        *(v277 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v301.i64[1] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = vceqq_s32(v61, v262);
      v308 = v305 + v302.i64[1];
      v309.i64[0] = 0x800000008;
      v309.i64[1] = 0x800000008;
      v310 = vandq_s8(vextq_s8(vtstq_s32(v78, v309), 0, 0xCuLL), v61);
      v311.i64[0] = 0x1F0000001FLL;
      v311.i64[1] = 0x1F0000001FLL;
      v312.i64[0] = -1;
      v312.i64[1] = -1;
      v313 = vandq_s8(vshlq_u32(v312, vaddq_s32(v310, v311)), v67);
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v315 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v316 = v314;
      v314.i64[0] = v310.u32[0];
      v314.i64[1] = v310.u32[1];
      v317 = v314;
      v318 = vzip1q_s64(0, v314);
      v314.i64[0] = v310.u32[2];
      v314.i64[1] = v310.u32[3];
      v319 = vpaddq_s64(vshlq_u64(v315, v318), vshlq_u64(v316, 0));
      v320 = vpaddq_s64(v317, v314);
      v321 = (v319.i64[0] << v308) | v306;
      if (v320.i64[0] + (v308 & 0x3F) >= 0x40)
      {
        *(v277 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
        v321 = v319.i64[0] >> -(v308 & 0x3F);
        if ((v308 & 0x3F) == 0)
        {
          v321 = 0;
        }
      }

      v322 = vandq_s8(v67, v307);
      v323 = v320.i64[0] + v308;
      v324 = v321 | (v319.i64[1] << v323);
      if ((v323 & 0x3F) + v320.i64[1] >= 0x40)
      {
        *(v277 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v319.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vaddq_s32(v322, v267);
      v326 = v323 + v320.i64[1];
      if (v62)
      {
        v324 |= v63 << v326;
        if ((v326 & 0x3F) >= 0x20)
        {
          *(v277 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
          v324 = v63 >> -(v326 & 0x3F);
        }

        v326 += 32;
      }

      v327 = vextq_s8(0, v262, 0xCuLL);
      v328.i64[0] = 0x1F0000001FLL;
      v328.i64[1] = 0x1F0000001FLL;
      v329.i64[0] = -1;
      v329.i64[1] = -1;
      v330 = vandq_s8(vshlq_u32(v329, vaddq_s32(v327, v328)), v325);
      v331.i64[0] = v330.u32[0];
      v331.i64[1] = v330.u32[1];
      v332 = v331;
      v331.i64[0] = v330.u32[2];
      v331.i64[1] = v330.u32[3];
      v333 = v331;
      v331.i64[0] = v327.u32[2];
      v331.i64[1] = v327.u32[3];
      v334 = v331;
      v335 = vzip1q_s64(0, v331);
      v331.i64[0] = v327.u32[0];
      v331.i64[1] = v327.u32[1];
      v336 = vpaddq_s64(vshlq_u64(v332, 0), vshlq_u64(v333, v335));
      v337 = vpaddq_s64(v331, v334);
      v338 = (v336.i64[0] << v326) | v324;
      if (v337.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v277 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v336.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = vceqq_s32(v61, v270);
      v340 = vaddq_s32(v268, v322);
      v341 = v337.i64[0] + v326;
      v342 = (v337.i64[0] + v326) & 0x3F;
      v343 = v338 | (v336.i64[1] << v341);
      if ((v341 & 0x3F) + v337.i64[1] >= 0x40)
      {
        *(v277 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v336.i64[1] >> -v342;
        if (!v342)
        {
          v343 = 0;
        }
      }

      v344 = vandq_s8(v67, v339);
      v345 = v341 + v337.i64[1];
      v346.i64[0] = 0x1F0000001FLL;
      v346.i64[1] = 0x1F0000001FLL;
      v347.i64[0] = -1;
      v347.i64[1] = -1;
      v348 = vandq_s8(vshlq_u32(v347, vaddq_s32(v262, v346)), v340);
      v349.i64[0] = v348.u32[0];
      v349.i64[1] = v348.u32[1];
      v350 = v349;
      v349.i64[0] = v348.u32[2];
      v349.i64[1] = v348.u32[3];
      v351 = v349;
      v349.i64[0] = v262.u32[0];
      v349.i64[1] = v262.u32[1];
      v352 = v349;
      v349.i64[0] = v262.u32[2];
      v349.i64[1] = v262.u32[3];
      v353 = vpaddq_s64(vshlq_u64(v350, vzip1q_s64(0, v352)), vshlq_u64(v351, vzip1q_s64(0, v349)));
      v354 = vpaddq_s64(v352, v349);
      v355 = (v353.i64[0] << v345) | v343;
      if (v354.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v277 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = vaddq_s32(v269, v344);
      v357 = v354.i64[0] + v345;
      v358 = v355 | (v353.i64[1] << v357);
      if ((v357 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v277 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v353.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v354.i64[1];
      v360.i64[0] = 0x1F0000001FLL;
      v360.i64[1] = 0x1F0000001FLL;
      v361.i64[0] = -1;
      v361.i64[1] = -1;
      v362 = vshlq_u32(v361, vaddq_s32(v270, v360));
      v363 = vandq_s8(v362, v356);
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v365 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v366 = v364;
      v364.i64[0] = v270.u32[0];
      v364.i64[1] = v270.u32[1];
      v367 = v364;
      v364.i64[0] = v270.u32[2];
      v364.i64[1] = v270.u32[3];
      v368 = vzip1q_s64(0, v367);
      v369 = vzip1q_s64(0, v364);
      v370 = vpaddq_s64(vshlq_u64(v365, v368), vshlq_u64(v366, v369));
      v371 = vpaddq_s64(v367, v364);
      v372 = (v370.i64[0] << v359) | v358;
      if (v371.i64[0] + (v359 & 0x3F) >= 0x40)
      {
        *(v277 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        if ((v359 & 0x3F) != 0)
        {
          v372 = v370.i64[0] >> -(v359 & 0x3F);
        }

        else
        {
          v372 = 0;
        }
      }

      v373 = vceqq_s32(v61, v467);
      v374 = vaddq_s32(v16, v344);
      v375 = v371.i64[0] + v359;
      v376 = v372 | (v370.i64[1] << v375);
      if ((v375 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v277 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v370.i64[1] >> -(v375 & 0x3F);
        if ((v375 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = vandq_s8(v67, v373);
      v378 = v375 + v371.i64[1];
      v379 = vandq_s8(v362, v374);
      v380.i64[0] = v379.u32[0];
      v380.i64[1] = v379.u32[1];
      v381 = v380;
      v380.i64[0] = v379.u32[2];
      v380.i64[1] = v379.u32[3];
      v382 = vpaddq_s64(vshlq_u64(v381, v368), vshlq_u64(v380, v369));
      v383 = (v382.i64[0] << v378) | v376;
      if (v371.i64[0] + (v378 & 0x3F) >= 0x40)
      {
        *(v277 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v382.i64[0] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = vaddq_s32(v17, v377);
      v385 = v371.i64[0] + v378;
      v386 = (v371.i64[0] + v378) & 0x3F;
      v387 = v383 | (v382.i64[1] << v385);
      if ((v385 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v277 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v382.i64[1] >> -v386;
        if (!v386)
        {
          v387 = 0;
        }
      }

      v388 = v385 + v371.i64[1];
      v389.i64[0] = 0x1F0000001FLL;
      v389.i64[1] = 0x1F0000001FLL;
      v390.i64[0] = -1;
      v390.i64[1] = -1;
      v391 = vshlq_u32(v390, vaddq_s32(v467, v389));
      v392 = vandq_s8(v391, v384);
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v394 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v395 = v393;
      v393.i64[0] = v467.u32[0];
      v393.i64[1] = v467.u32[1];
      v396 = v393;
      v393.i64[0] = v467.u32[2];
      v393.i64[1] = v467.u32[3];
      v397 = vzip1q_s64(0, v396);
      v398 = vzip1q_s64(0, v393);
      v399 = vpaddq_s64(vshlq_u64(v394, v397), vshlq_u64(v395, v398));
      v400 = vpaddq_s64(v396, v393);
      v401 = (v399.i64[0] << v388) | v387;
      if (v400.i64[0] + (v388 & 0x3F) >= 0x40)
      {
        *(v277 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        if ((v388 & 0x3F) != 0)
        {
          v401 = v399.i64[0] >> -(v388 & 0x3F);
        }

        else
        {
          v401 = 0;
        }
      }

      v402 = vceqq_s32(v61, v75);
      v403 = vaddq_s32(v18, v377);
      v404 = v400.i64[0] + v388;
      v405 = v401 | (v399.i64[1] << v404);
      if ((v404 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v277 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
        v405 = v399.i64[1] >> -(v404 & 0x3F);
        if ((v404 & 0x3F) == 0)
        {
          v405 = 0;
        }
      }

      v406 = vandq_s8(v67, v402);
      v407 = v404 + v400.i64[1];
      v408 = vandq_s8(v391, v403);
      v409.i64[0] = v408.u32[0];
      v409.i64[1] = v408.u32[1];
      v410 = v409;
      v409.i64[0] = v408.u32[2];
      v409.i64[1] = v408.u32[3];
      v411 = vpaddq_s64(vshlq_u64(v410, v397), vshlq_u64(v409, v398));
      v412 = (v411.i64[0] << v407) | v405;
      if (v400.i64[0] + (v407 & 0x3F) >= 0x40)
      {
        *(v277 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v411.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = vaddq_s32(v465, v406);
      v414 = v400.i64[0] + v407;
      v415 = (v400.i64[0] + v407) & 0x3F;
      v416 = v412 | (v411.i64[1] << v414);
      if ((v414 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v277 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v411.i64[1] >> -v415;
        if (!v415)
        {
          v416 = 0;
        }
      }

      v417 = v414 + v400.i64[1];
      v418.i64[0] = 0x1F0000001FLL;
      v418.i64[1] = 0x1F0000001FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      v420 = vshlq_u32(v419, vaddq_s32(v75, v418));
      v421 = vandq_s8(v420, v413);
      v422.i64[0] = v421.u32[0];
      v422.i64[1] = v421.u32[1];
      v423 = v422;
      v422.i64[0] = v421.u32[2];
      v422.i64[1] = v421.u32[3];
      v424 = v422;
      v422.i64[0] = v75.u32[0];
      v422.i64[1] = v75.u32[1];
      v425 = v422;
      v422.i64[0] = v75.u32[2];
      v422.i64[1] = v75.u32[3];
      v426 = vzip1q_s64(0, v425);
      v427 = vzip1q_s64(0, v422);
      v428 = vpaddq_s64(vshlq_u64(v423, v426), vshlq_u64(v424, v427));
      v429 = vpaddq_s64(v425, v422);
      v430 = (v414 + v400.i64[1]) & 0x3F;
      v431 = (v428.i64[0] << (v414 + v400.i8[8])) | v416;
      if ((v429.i64[0] + v430) > 0x3F)
      {
        *(v277 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        if (v430)
        {
          v431 = v428.i64[0] >> -v430;
        }

        else
        {
          v431 = 0;
        }
      }

      v432 = vaddq_s32(v466, v406);
      v433 = v429.i64[0] + v417;
      v434 = v431 | (v428.i64[1] << v433);
      if ((v433 & 0x3F) + v429.i64[1] >= 0x40)
      {
        *(v277 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
        v434 = v428.i64[1] >> -(v433 & 0x3F);
        if ((v433 & 0x3F) == 0)
        {
          v434 = 0;
        }
      }

      v435 = v433 + v429.i64[1];
      v436 = vandq_s8(v420, v432);
      v437.i64[0] = v436.u32[0];
      v437.i64[1] = v436.u32[1];
      v438 = v437;
      v437.i64[0] = v436.u32[2];
      v437.i64[1] = v436.u32[3];
      v439 = vpaddq_s64(vshlq_u64(v438, v426), vshlq_u64(v437, v427));
      v440 = (v439.i64[0] << v435) | v434;
      if (v429.i64[0] + (v435 & 0x3F) >= 0x40)
      {
        *(v277 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
        v440 = v439.i64[0] >> -(v435 & 0x3F);
        if ((v435 & 0x3F) == 0)
        {
          v440 = 0;
        }
      }

      v441 = v429.i64[0] + v435;
      v442 = (v429.i64[0] + v435) & 0x3F;
      v443 = v440 | (v439.i64[1] << (v429.i8[0] + v435));
      if ((v442 + v429.i64[1]) >= 0x40)
      {
        *(v277 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
        v443 = v439.i64[1] >> -v442;
        if (!v442)
        {
          v443 = 0;
        }
      }

      v444 = v441 + v429.i64[1];
      if ((v444 & 0x3F) != 0)
      {
        *(v277 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
      }

      result = (v444 - v278 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = 0;
  v80 = *MEMORY[0x29EDCA608];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
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
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v32 = 0;
      v33 = (a3 + i * a4);
      v34 = (2 * i) | 1u;
      do
      {
        v35 = &v72 + 2 * (v32 & 0x7F);
        v36 = v33[1];
        *(v35 + 2 * (i & 0x7F)) = *v33;
        v37 = v33[3];
        *(v35 + v34) = v33[2];
        v38 = &v72 + ((2 * v32) | 1u);
        *(v38 + 2 * (i & 0x7F)) = v36;
        v33 += 4;
        ++v32;
        *(v38 + v34) = v37;
      }

      while (a5 != v32);
    }

    v30 = v72;
    v28 = DWORD1(v72);
    v29 = v73;
    v27 = DWORD1(v73);
    v26 = v74;
    v24 = DWORD1(v74);
    v25 = v75;
    v23 = DWORD1(v75);
    v22 = DWORD2(v72);
    v20 = HIDWORD(v72);
    v21 = DWORD2(v73);
    v19 = HIDWORD(v73);
    v18 = DWORD2(v74);
    v16 = HIDWORD(v74);
    v17 = DWORD2(v75);
    v15 = HIDWORD(v75);
    v14 = v76;
    v12 = DWORD1(v76);
    v13 = v77;
    v11 = DWORD1(v77);
    v10 = v78;
    v8 = DWORD1(v78);
    v9 = v79;
    v7 = DWORD1(v79);
  }

  v54 = v20;
  v55 = v17;
  v56 = __PAIR64__(v13, v14);
  v57 = v10;
  v58 = __PAIR64__(v11, v12);
  v62 = v8;
  v39 = a6 != 0;
  v67.i64[0] = __PAIR64__(v29, v30);
  v40 = 2 * (a5 & 0x7F);
  v67.i64[1] = __PAIR64__(v27, v28);
  v68 = v26;
  v69 = v25;
  if (v40 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = 2 * (a5 & 0x7F);
  }

  v70 = v24;
  v71 = v23;
  v61 = 2 * v39;
  if (v40 >= 4)
  {
    v42 = v40 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = 2 * (a6 & 0x7F);
  v60 = v42;
  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v67, a7, v41, 2 * v39);
  v67.i64[0] = __PAIR64__(v21, v22);
  v67.i64[1] = __PAIR64__(v19, v54);
  v68 = v18;
  v69 = v55;
  v45 = v59 - 2;
  if (v59 < 2)
  {
    v45 = 0;
  }

  v70 = v16;
  v71 = v15;
  if (a6 >= 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = v45;
  }

  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v67, a7, v41, v46);
  v67.i64[0] = v56;
  v67.i64[1] = v58;
  v68 = v57;
  v69 = v9;
  if (a5 >= 4)
  {
    v48 = 4;
  }

  else
  {
    v48 = v60;
  }

  v70 = v62;
  v71 = v7;
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v67, a7, v48, v61);
  v67.i64[0] = __PAIR64__(DWORD2(v77), DWORD2(v76));
  v67.i64[1] = __PAIR64__(HIDWORD(v77), HIDWORD(v76));
  v68 = DWORD2(v78);
  v69 = DWORD2(v79);
  v70 = HIDWORD(v78);
  v71 = HIDWORD(v79);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v67, a7, v48, v46);
  if (v49)
  {
    v51 = 4;
  }

  else
  {
    v51 = 0;
  }

  if (v47)
  {
    v52 = 2;
  }

  else
  {
    v52 = 0;
  }

  if (result)
  {
    v53 = -8;
  }

  else
  {
    v53 = -16;
  }

  *a2 = v53 | v51 | v63 | v52;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v282 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v280, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v280, a5);
    }

    v276 = v281;
    v278 = v280;
    v14 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v280, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v280, a5);
    }

    v272 = v281;
    v274 = v280;
    v15 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v15, &v280, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v15, &v280, a5);
    }

    v270 = v281;
    v271 = v280;
    v16 = a3 + 48;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v280, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v280, a5);
    }

    v17 = (a1 + a2);
    v18 = v280;
    v19 = v281;
    *a1 = v278;
    *(a1 + 16) = v276;
    *(a1 + 32) = v271;
    *(a1 + 48) = v270;
    *v17 = v274;
    v17[1] = v272;
    v17[2] = v18;
    v17[3] = v19;
    return 64;
  }

  if (a4 == 127)
  {
    v20 = *(a3 + 16);
    v21 = *(a3 + 32);
    v22 = *(a3 + 48);
    v23 = *(a3 + 64);
    v24 = *(a3 + 80);
    v25 = *(a3 + 96);
    v26 = *(a3 + 112);
    v27 = (a1 + 32);
    *a1 = *a3;
    *(a1 + 16) = v20;
    v28 = (a1 + a2);
    *v27 = v23;
    v27[1] = v24;
    *v28 = v21;
    v28[1] = v22;
    v28 += 2;
    *v28 = v25;
    v28[1] = v26;
    return 128;
  }

  if (a4 == 3)
  {
    v12 = vld1q_dup_f32(a3);
    *a1 = v12;
    *(a1 + 16) = v12;
    *(a1 + 32) = v12;
    *(a1 + 48) = v12;
    v13 = (a1 + a2);
    *v13 = v12;
    v13[1] = v12;
    v13[2] = v12;
    v13[3] = v12;
    return 4;
  }

  v29 = 8 * (a3 & 7);
  v30 = a3 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 + 42;
  v32 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v29;
  if (v29 >= 0x17)
  {
    v32 |= *(v30 + 8) << (-8 * (a3 & 7u));
  }

  v33 = vdupq_n_s32(v32 & 0x1F);
  v34 = (8 * (a3 & 7)) | 0x200;
  v35.i64[0] = 0x300000003;
  v35.i64[1] = 0x300000003;
  v36 = vbicq_s8(vdupq_n_s32(((v32 >> 5) & 0x1F) + 1), vceqq_s32((*&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v35));
  v35.i64[0] = 0x404040404040404;
  v35.i64[1] = 0x404040404040404;
  v37 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v33 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v35);
  if (vmaxvq_s8(v37) < 1)
  {
    v46 = 0;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v66 = v36;
    v65 = v36;
    v64 = v36;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v63 = v36;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
  }

  else
  {
    v38 = vmovl_u8(*&vpaddq_s8(v37, v37));
    v39 = vmovl_u16(*&vpaddq_s16(v38, v38));
    v40 = vpaddq_s32(v39, v39).u64[0];
    v41.i64[0] = v40;
    v41.i64[1] = HIDWORD(v40);
    v42 = v41;
    v43 = vaddvq_s64(v41);
    v44 = v43 + v31;
    v45 = v43 <= 0x80 && v34 >= v44;
    v46 = !v45;
    v47 = 0uLL;
    if (v45)
    {
      v48 = v31 & 0x3A;
      v49 = vaddq_s64(vzip1q_s64(0, v42), vdupq_n_s64(v48));
      v50 = (v30 + ((v31 >> 3) & 8));
      v47 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v49)));
      if (v43 + v48 >= 0x81)
      {
        v47 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v47);
      }

      v31 = v44;
    }

    v51 = vzip1_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
    v52.i64[0] = v51.u32[0];
    v52.i64[1] = v51.u32[1];
    v53 = vshlq_u64(v47, vnegq_s64(v52));
    v54 = vuzp1q_s32(vzip1q_s64(v47, v53), vzip2q_s64(v47, v53));
    v55 = vshlq_u32(v54, vnegq_s32((*&v38 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v56 = vuzp1q_s16(vzip1q_s32(v54, v55), vzip2q_s32(v54, v55));
    v57 = vzip1q_s16(v56, vshlq_u16(v56, vnegq_s16(vmovl_u8(vuzp1_s8(*v37.i8, *v33.i8)))));
    *v57.i8 = vmovn_s16(v57);
    v54.i64[0] = 0x101010101010101;
    v54.i64[1] = 0x101010101010101;
    v58 = vshlq_s8(v54, v37);
    v54.i64[0] = -1;
    v54.i64[1] = -1;
    v58.i32[0] = vandq_s8(vaddq_s8(v58, v54), v57).u32[0];
    v59 = vdupq_n_s32(v58.i8[0]);
    v60 = vdupq_n_s32(v58.i8[1]);
    v61 = vdupq_n_s32(v58.i8[2]);
    v62 = vdupq_n_s32(v58.i8[3]);
    v63 = vsubq_s32(v36, v59);
    v64 = vsubq_s32(v36, v60);
    v65 = vsubq_s32(v36, v61);
    v66 = vsubq_s32(v36, v62);
    v67 = vceqzq_s32(v59);
    v68 = vceqzq_s32(v60);
    v69 = vceqzq_s32(v61);
    v70 = vceqzq_s32(v62);
  }

  v71 = 0uLL;
  v72 = vandq_s8(vextq_s8(vtstq_s32((*&v33 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v33 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v36);
  v73 = vpaddq_s32(v72, v72).u64[0];
  v74.i64[0] = v73;
  v74.i64[1] = HIDWORD(v73);
  v75 = v74;
  v76 = vaddvq_s64(v74);
  v77 = v76 + v31;
  if (v76 <= 0x80 && v34 >= v77)
  {
    v79 = v31 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v75), vdupq_n_s64(v79));
    v81 = (v30 + 8 * (v31 >> 6));
    v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v76 + v79 >= 0x81)
    {
      v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v71);
    }

    v31 = v77;
  }

  else
  {
    v46 = 1;
  }

  v82 = v32 & 3;
  v83 = 0uLL;
  if (v82 == 2)
  {
    v84 = v31 + 16;
    if (v34 >= v31 + 16)
    {
      v88 = (v30 + 8 * (v31 >> 6));
      v89 = *v88 >> v31;
      if ((v31 & 0x3F) >= 0x31)
      {
        v89 |= v88[1] << -(v31 & 0x3F);
      }

      v85 = v89;
      v86 = v31 + 32;
    }

    else
    {
      v85 = 0;
      v46 = 1;
      v86 = v31 + 16;
      v84 = v31;
    }

    v87 = v85;
    if (v34 >= v86)
    {
      v90 = (v30 + 8 * (v84 >> 6));
      v91 = *v90 >> v84;
      if ((v84 & 0x3F) >= 0x31)
      {
        v91 |= v90[1] << -(v84 & 0x3F);
      }

      v87.i32[1] = v91;
    }

    else
    {
      v46 = 1;
      v86 = v84;
    }
  }

  else
  {
    v86 = v31;
    v87 = 0;
  }

  v92 = vextq_s8(0, v63, 0xCuLL);
  v93 = vpaddq_s32(v92, v92).u64[0];
  v94.i64[0] = v93;
  v94.i64[1] = HIDWORD(v93);
  v95 = v94;
  v96 = vaddvq_s64(v94);
  v97 = v96 + v86;
  if (v96 <= 0x80 && v34 >= v97)
  {
    v99 = v86 & 0x3F;
    v100 = vaddq_s64(vzip1q_s64(0, v95), vdupq_n_s64(v99));
    v101 = (v30 + 8 * (v86 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v100)));
    if (v96 + v99 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v83);
    }

    v86 = v97;
  }

  else
  {
    v46 = 1;
  }

  v102 = vpaddq_s32(v63, v63).u64[0];
  v103.i64[0] = v102;
  v103.i64[1] = HIDWORD(v102);
  v104 = v103;
  v105 = vaddvq_s64(v103);
  v106 = v105 + v86;
  v107 = 0uLL;
  if (v105 <= 0x80 && v34 >= v106)
  {
    v110 = v86 & 0x3F;
    v111 = vaddq_s64(vzip1q_s64(0, v104), vdupq_n_s64(v110));
    v112 = (v30 + 8 * (v86 >> 6));
    v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v105 + v110 >= 0x81)
    {
      v109 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v109);
    }

    v86 = v106;
  }

  else
  {
    v46 = 1;
    v109 = 0uLL;
  }

  v113 = vpaddq_s32(v64, v64).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v86;
  if (v116 <= 0x80 && v34 >= v117)
  {
    v119 = v86 & 0x3F;
    v120 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v119));
    v121 = (v30 + 8 * (v86 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v121, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v120)), vshlq_u64(vdupq_lane_s64(v121->i64[0], 0), vnegq_s64(v120)));
    if (v116 + v119 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v121[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v120)), vshlq_u64(vdupq_laneq_s64(v121[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v120))), v107);
    }

    v86 = v117;
  }

  else
  {
    v46 = 1;
  }

  v122 = 0uLL;
  if (v116 > 0x80 || (v123 = v116 + v86, v34 < v116 + v86))
  {
    v123 = v86;
    v46 = 1;
    v127 = 0uLL;
  }

  else
  {
    v124 = v86 & 0x3F;
    v125 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v124));
    v126 = (v30 + 8 * (v86 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
    if (v116 + v124 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
    }
  }

  v128 = vpaddq_s32(v65, v65).u64[0];
  v129.i64[0] = v128;
  v129.i64[1] = HIDWORD(v128);
  v130 = v129;
  v131 = vaddvq_s64(v129);
  v132 = v131;
  if (v131 > 0x80 || (v133 = v131 + v123, v34 < v131 + v123))
  {
    v133 = v123;
    v46 = 1;
  }

  else
  {
    v134 = v123 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v134));
    v136 = (v30 + 8 * (v123 >> 6));
    v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v132 + v134 >= 0x81)
    {
      v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v122);
    }
  }

  v137 = 0uLL;
  if (v132 > 0x80 || (v138 = v132 + v133, v34 < v132 + v133))
  {
    v138 = v133;
    v46 = 1;
    v142 = 0uLL;
  }

  else
  {
    v139 = v133 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v139));
    v141 = (v30 + 8 * (v133 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v132 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }
  }

  v143 = vpaddq_s32(v66, v66).u64[0];
  v144.i64[0] = v143;
  v144.i64[1] = HIDWORD(v143);
  v145 = v144;
  v146 = vaddvq_s64(v144);
  v147 = v146;
  if (v146 > 0x80 || (v148 = v146 + v138, v34 < v146 + v138))
  {
    v148 = v138;
    v46 = 1;
  }

  else
  {
    v149 = v138 & 0x3F;
    v150 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v149));
    v151 = (v30 + 8 * (v138 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v147 + v149 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v137);
    }
  }

  if (v147 > 0x80 || v34 < v147 + v148)
  {
    goto LABEL_109;
  }

  v152 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
  v153.i64[0] = v152.u32[0];
  v153.i64[1] = v152.u32[1];
  v154.i64[0] = 0x1F0000001FLL;
  v154.i64[1] = 0x1F0000001FLL;
  v155 = vaddq_s32(v66, v154);
  v156.i64[0] = 0x2000000020;
  v156.i64[1] = 0x2000000020;
  v157 = vsubq_s32(v156, v66);
  v158 = (v30 + 8 * (v148 >> 6));
  v159 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v148 & 0x3F));
  v160 = vnegq_s64(v153);
  v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v159)));
  if (v147 + (v148 & 0x3F) < 0x81)
  {
    if (v46)
    {
      goto LABEL_109;
    }

    v166 = vshlq_u64(v161, v160);
    v164 = vzip2q_s64(v161, v166);
    v165 = vzip1q_s64(v161, v166);
  }

  else
  {
    if (v46)
    {
      goto LABEL_109;
    }

    v162 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    v163 = vshlq_u64(v162, v160);
    v164 = vzip2q_s64(v162, v163);
    v165 = vzip1q_s64(v162, v163);
  }

  v167 = vshlq_s32(vshlq_s32(vuzp1q_s32(v165, v164), v157), v155);
  v10 = a4 + 1;
  if (v34 + 8 * v10 - (v147 + v148) - 512 >= 9)
  {
LABEL_109:
    v168 = 0;
    v169 = 0;
    v170 = 8 * (&v280 & 7);
    v171 = 32;
    do
    {
      v172 = 64 - v170;
      if (64 - v170 >= v171)
      {
        v172 = v171;
      }

      *(&v280 + v168) |= ((0xFFFFFFFFFFFFFFFFLL >> v169) & ~(-1 << v172)) << v170;
      v169 += v172;
      v173 = v172 + v170;
      v168 += v173 >> 6;
      v170 = v173 & 0x3F;
      v171 -= v172;
    }

    while (v171);
    v10 = 0;
    v174 = (a1 + a2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *v174 = 0;
    v174[1] = 0;
    return v10;
  }

  v273 = v67;
  v275 = v68;
  v277 = v69;
  v279 = v70;
  v176 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
  v177 = vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
  v178 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
  v179 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  v180 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v181.i64[0] = v176.u32[0];
  v181.i64[1] = v176.u32[1];
  v182 = v181;
  v181.i64[0] = v177.u32[0];
  v181.i64[1] = v177.u32[1];
  v183 = v181;
  v181.i64[0] = v178.u32[0];
  v181.i64[1] = v178.u32[1];
  v184 = v181;
  v181.i64[0] = v179.u32[0];
  v181.i64[1] = v179.u32[1];
  v185 = v181;
  v181.i64[0] = v180.u32[0];
  v181.i64[1] = v180.u32[1];
  v186 = vnegq_s64(v185);
  v187 = vnegq_s64(v181);
  v188 = vshlq_u64(v71, vnegq_s64(v182));
  v189 = vshlq_u64(v83, vnegq_s64(v183));
  v190 = vshlq_u64(v109, vnegq_s64(v184));
  v191 = vshlq_u64(v107, v186);
  v192 = vshlq_u64(v127, v186);
  v193 = vshlq_u64(v122, v187);
  v194 = vshlq_u64(v142, v187);
  v195 = vzip2q_s64(v71, v188);
  v196 = vzip1q_s64(v71, v188);
  v188.i64[0] = 0x2000000020;
  v188.i64[1] = 0x2000000020;
  v197 = vzip2q_s64(v83, v189);
  v198 = vzip1q_s64(v83, v189);
  v189.i64[0] = 0x2000000020;
  v189.i64[1] = 0x2000000020;
  v199 = vzip2q_s64(v109, v190);
  v200 = vzip1q_s64(v109, v190);
  v201 = vzip2q_s64(v107, v191);
  v202 = vzip1q_s64(v107, v191);
  v191.i64[0] = 0x2000000020;
  v191.i64[1] = 0x2000000020;
  v203 = vzip2q_s64(v127, v192);
  v204 = vzip1q_s64(v127, v192);
  v205 = vzip2q_s64(v122, v193);
  v206 = vzip1q_s64(v122, v193);
  v193.i64[0] = 0x2000000020;
  v193.i64[1] = 0x2000000020;
  v207 = vzip2q_s64(v142, v194);
  v208 = vzip1q_s64(v142, v194);
  v209 = v32 >> 10;
  v210 = vuzp1q_s32(v196, v195);
  v194.i64[0] = 0x1F0000001FLL;
  v194.i64[1] = 0x1F0000001FLL;
  v211 = vuzp1q_s32(v198, v197);
  v198.i64[0] = 0x1F0000001FLL;
  v198.i64[1] = 0x1F0000001FLL;
  v212 = vsubq_s32(v189, v92);
  v213 = vuzp1q_s32(v200, v199);
  v214 = vsubq_s32(v189, v63);
  v215 = vuzp1q_s32(v202, v201);
  v189.i64[0] = 0x1F0000001FLL;
  v189.i64[1] = 0x1F0000001FLL;
  v216 = vsubq_s32(v191, v64);
  v217 = vuzp1q_s32(v204, v203);
  v218 = vuzp1q_s32(v206, v205);
  v204.i64[0] = 0x1F0000001FLL;
  v204.i64[1] = 0x1F0000001FLL;
  v219 = vsubq_s32(v193, v65);
  v220 = vaddq_s32(v92, v198);
  v221 = vaddq_s32(v63, v198);
  v222 = vshlq_s32(v213, v214);
  v223 = vaddq_s32(v64, v189);
  v224 = vaddq_s32(v65, v204);
  v225 = vshlq_s32(vshlq_s32(v210, vsubq_s32(v188, v72)), vaddq_s32(v72, v194));
  v226 = vshlq_s32(vshlq_s32(v211, v212), v220);
  v227 = vshlq_s32(v222, v221);
  v228 = vshlq_s32(vshlq_s32(v215, v216), v223);
  v229 = vshlq_s32(vshlq_s32(v217, v216), v223);
  v230 = vshlq_s32(vshlq_s32(v218, v219), v224);
  v231 = vshlq_s32(vshlq_s32(vuzp1q_s32(v208, v207), v219), v224);
  v232 = vshlq_u64(v137, v160);
  v233 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v137, v232), vzip2q_s64(v137, v232)), v157), v155);
  if (v82 == 2)
  {
    v234 = vdupq_lane_s32(v87, 1);
    v235.i64[0] = 0xFFFFFFFF00000000;
    v235.i64[1] = 0xFFFFFFFF00000000;
    v234.i64[0] = 0;
    v236 = vaddq_s32(vandq_s8(vdupq_lane_s32(v87, 0), v235), v234);
    v237 = vmlaq_lane_s32(v234, xmmword_29D2F11A0, v87, 0);
    v226 = vaddq_s32(v226, v236);
    *v235.i8 = vshl_u32(v87, 0x100000002);
    v238 = vdupq_lane_s32(*v235.i8, 1);
    v227 = vaddq_s32(v227, v237);
    v228 = vaddq_s32(vaddq_s32(v236, v238), v228);
    v239 = vdupq_lane_s32(*v235.i8, 0);
    v229 = vaddq_s32(vaddq_s32(v237, v238), v229);
    v230 = vaddq_s32(vaddq_s32(v236, v239), v230);
    v231 = vaddq_s32(vaddq_s32(v237, v239), v231);
    v240 = vdupq_lane_s32(vadd_s32(*v235.i8, *v238.i8), 0);
    v233 = vaddq_s32(vaddq_s32(v240, v236), v233);
    v167 = vaddq_s32(vaddq_s32(v240, v237), v167);
  }

  v241 = vdupq_n_s32(v209);
  v242 = vdupq_lane_s32(*v225.i8, 0);
  v243 = vandq_s8(v242, v273);
  v244 = vsubq_s32(vaddq_s32(vandq_s8(v225, v273), v226), v243);
  v245 = vsubq_s32(v227, v243);
  v246 = vandq_s8(v242, v275);
  v247 = vsubq_s32(v228, v246);
  v248 = vsubq_s32(v229, v246);
  v249 = vandq_s8(v242, v277);
  v250 = vsubq_s32(v230, v249);
  v251 = vsubq_s32(v231, v249);
  v252 = vandq_s8(v242, v279);
  v253 = vsubq_s32(v233, v252);
  v254 = vsubq_s32(v167, v252);
  v252.i64[0] = 0x100000001;
  v252.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v252)))
  {
    v255 = vnegq_s32((*&v33 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v256 = v245;
    v256.i32[3] = v244.i32[0];
    v257 = v244;
    v257.i32[0] = v245.i32[3];
    v283.val[0] = vbslq_s8(v255, v257, v244);
    v283.val[1] = vbslq_s8(v255, v256, v245);
    v256.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v256.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v284.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v283, xmmword_29D2F0F80), v255), v283.val[0]);
    v284.val[1] = vaddq_s32(v283.val[1], vandq_s8(vqtbl2q_s8(v283, v256), v255));
    v244 = vaddq_s32(vandq_s8(vqtbl2q_s8(v284, xmmword_29D2F0F90), v255), v284.val[0]);
    v245 = vaddq_s32(v284.val[1], vandq_s8(vqtbl2q_s8(v284, v256), v255));
    v284.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0FA0), v255), v247);
    v284.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0FB0), v255), v248);
    v247 = vaddq_s32(vandq_s8(vqtbl2q_s8(v284, xmmword_29D2F0FC0), v255), v284.val[0]);
    v248 = vaddq_s32(v284.val[1], vandq_s8(vqtbl2q_s8(v284, v256), v255));
    v284.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0FD0), v255), v250);
    v284.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0F80), v255), v251);
    v250 = vaddq_s32(vandq_s8(vqtbl2q_s8(v284, v256), v255), v284.val[0]);
    v251 = vaddq_s32(v284.val[1], vandq_s8(vqtbl2q_s8(v284, xmmword_29D2F0FE0), v255));
    v283.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v253.i8, xmmword_29D2F0FF0), v255), v253);
    v283.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v253.i8, xmmword_29D2F0F80), v255), v254);
    v253 = vaddq_s32(vandq_s8(vqtbl2q_s8(v283, v256), v255), v283.val[0]);
    v254 = vaddq_s32(v283.val[1], vandq_s8(vqtbl2q_s8(v283, xmmword_29D2F1000), v255));
  }

  v258 = vaddq_s32(v241, v244);
  v259 = vaddq_s32(v245, v241);
  v260 = vaddq_s32(v247, v241);
  v261 = vaddq_s32(v248, v241);
  v262 = vaddq_s32(v250, v241);
  v263 = vaddq_s32(v251, v241);
  v264 = vaddq_s32(v253, v241);
  v265 = vaddq_s32(v254, v241);
  v266.i64[0] = 0x1000000010;
  v266.i64[1] = 0x1000000010;
  v267 = vcgtq_u32(v266, v33);
  v266.i64[0] = -1;
  v266.i64[1] = -1;
  v268 = (a1 + 32);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v258, v266), v267), v258);
  *(a1 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v259, v266), v267), v259);
  v269 = (a1 + a2);
  *v268 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v262, v266), v267), v262);
  v268[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v263, v266), v267), v263);
  *v269 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v260, v266), v267), v260);
  v269[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v261, v266), v267), v261);
  v269 += 2;
  *v269 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v264, v266), v267), v264);
  v269[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v265, v266), v267), v265);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 320, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 768, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 832, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *a3;
  v8 = *(a3 + 16);
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = *(a3 + a4);
  v12 = *(a3 + a4 + 16);
  v13 = vdupq_lane_s32(*a3, 0);
  v14 = vsubq_s32(*a3, v13);
  v15 = vsubq_s32(v8, v13);
  v16 = vsubq_s32(v9, v13);
  v17 = vsubq_s32(v10, v13);
  v18 = vsubq_s32(v11, v13);
  v19 = vsubq_s32(v12, v13);
  v20 = vsubq_s32(*(a3 + a4 + 32), v13);
  v21 = vsubq_s32(*(a3 + a4 + 48), v13);
  v22 = vmaxq_s32(v14, v15);
  v459 = v14;
  v460 = v15;
  v23 = vminq_s32(v14, v15);
  v22.i32[0] = vmaxvq_s32(v22);
  v23.i32[0] = vminvq_s32(v23);
  v24 = vdupq_lane_s32(*v22.i8, 0);
  v25 = vdupq_lane_s32(*v23.i8, 0);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v26 = vmaxq_s32(v24, v14);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v28 = vminq_s32(v25, v27);
  v29 = vzip1q_s32(v24, v25);
  v30.i64[0] = 0x2000000020;
  v30.i64[1] = 0x2000000020;
  v31 = vbicq_s8(vsubq_s32(v30, vclsq_s32(v29)), vceqzq_s32(v29));
  v32 = vpmaxq_s32(v31, v31);
  v33 = vmaxq_s32(v16, v17);
  v461 = v16;
  v34 = vminq_s32(v16, v17);
  v33.i32[0] = vmaxvq_s32(v33);
  v34.i32[0] = vminvq_s32(v34);
  v35 = vdupq_lane_s32(*v33.i8, 0);
  v36 = vdupq_lane_s32(*v34.i8, 0);
  v37 = vmaxq_s32(v26, v35);
  v38 = vminq_s32(v28, v36);
  v39 = vzip1q_s32(v35, v36);
  v40 = vbicq_s8(vsubq_s32(v30, vclsq_s32(v39)), vceqzq_s32(v39));
  v41 = vpmaxq_s32(v40, v40);
  v42 = vmaxq_s32(v18, v19);
  v43 = vminq_s32(v18, v19);
  v42.i32[0] = vmaxvq_s32(v42);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v43.i32[0] = vminvq_s32(v43);
  v45 = vdupq_lane_s32(*v43.i8, 0);
  v46 = vmaxq_s32(v37, v44);
  v47 = vminq_s32(v38, v45);
  v48 = vzip1q_s32(v44, v45);
  v49 = vbicq_s8(vsubq_s32(v30, vclsq_s32(v48)), vceqzq_s32(v48));
  v50 = vmaxq_s32(v20, v21);
  v462 = v20;
  v463 = v21;
  v51 = vminq_s32(v20, v21);
  v50.i32[0] = vmaxvq_s32(v50);
  v51.i32[0] = vminvq_s32(v51);
  v52 = vdupq_lane_s32(*v50.i8, 0);
  v53 = vdupq_lane_s32(*v51.i8, 0);
  v54 = vpmaxq_s32(v49, v49);
  v55 = vminq_s32(v47, v53);
  v56 = vzip1q_s32(v52, v53);
  v57 = vbicq_s8(vsubq_s32(v30, vclsq_s32(v56)), vceqzq_s32(v56));
  v58 = vpmaxq_s32(v57, v57);
  v59 = vmaxq_s32(vmaxq_s32(v32, v41), vmaxq_s32(v54, v58));
  v60 = vclzq_s32(vsubq_s32(vmaxq_s32(v46, v52), v55));
  v61 = vsubq_s32(v30, v60);
  v62 = vminq_s32(v61, v59);
  if (vmaxvq_s32(v62))
  {
    v63 = 0;
    v64 = 0;
    v65.i64[0] = 0x1F0000001FLL;
    v65.i64[1] = 0x1F0000001FLL;
    v66 = vsubq_s32(v65, v60);
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v67 = vcgtq_s32(v59, v61);
    v68 = vandq_s8(vsubq_s32(vshlq_s32(v65, v66), v55), v67);
    v69.i64[0] = 0x800000008;
    v69.i64[1] = 0x800000008;
    v70.i64[0] = 0x300000003;
    v70.i64[1] = 0x300000003;
    v71 = vorrq_s8(vandq_s8(vceqzq_s32(v62), v70), vandq_s8(v67, v69));
    v67.i64[0] = 0xF0000000FLL;
    v67.i64[1] = 0xF0000000FLL;
    v72 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v32), v67), 0);
    v73 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v41), v67), 0);
    v74 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v54), v67), 0);
    v75 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v58), v67), 0);
    v457 = vsubq_s32(v62, v72);
    v458 = vsubq_s32(v62, v73);
    v464 = vsubq_s32(v62, v74);
    v76 = vsubq_s32(v62, v75);
    v77 = vceqq_s32(vaddq_s32(v75, v74), vnegq_s32(vaddq_s32(v72, v73)));
    v73.i64[0] = 0x400000004;
    v73.i64[1] = 0x400000004;
    v78 = vbicq_s8(v73, v77);
    v79 = vorrq_s8(v78, v71);
    if (a5 && a6)
    {
      v80 = *(a3 + 32);
      v81 = *(a3 + a4);
      v82 = *(a3 + a4 + 32);
      v83 = vsub_s32(*&vextq_s8(v7, v7, 4uLL), vdup_lane_s32(*v7.i8, 0));
      v449 = v83.i16[0];
      v451 = v68;
      v84 = vshl_n_s32(v83, 0x10uLL);
      v85 = v84.i32[1];
      v86 = vshl_s32(v84, 0xFFFFFFF1FFFFFFF2);
      v87 = v84.i32[1] >> 16;
      v88 = vdupq_n_s32(v84.i32[0] >> 16);
      v89 = vdupq_n_s32(v87);
      v90.i64[0] = 0xFFFFFFFF00000000;
      v90.i64[1] = 0xFFFFFFFF00000000;
      v89.i64[0] = 0;
      v91 = vaddq_s32(v89, vandq_s8(v88, v90));
      v92 = vmlaq_s32(v89, v88, xmmword_29D2F11A0);
      v93 = vsubq_s32(v459, v91);
      v94 = vsubq_s32(v460, v92);
      v95 = vdupq_n_s32(-v86.i32[1]);
      v96 = vsubq_s32(vaddq_s32(v95, v461), v91);
      v97 = vsubq_s32(vaddq_s32(v17, v95), v92);
      v98 = vdupq_n_s32(-v86.i32[0]);
      v455 = v18;
      v99 = vsubq_s32(vaddq_s32(v98, v18), v91);
      v454 = v17;
      v100 = vaddq_s32(vsubq_s32(v98, v92), v19);
      v101 = vdupq_n_s32(-v86.i32[0] - v86.i32[1]);
      v102 = vsubq_s32(vaddq_s32(v101, v462), v91);
      v103 = vaddq_s32(vsubq_s32(v101, v92), v463);
      v104 = vmaxq_s32(v93, v94);
      v447 = v94;
      v448 = v93;
      v105 = vminq_s32(v93, v94);
      v104.i32[0] = vmaxvq_s32(v104);
      v105.i32[0] = vminvq_s32(v105);
      v106 = vdupq_lane_s32(*v104.i8, 0);
      v107 = vdupq_lane_s32(*v105.i8, 0);
      v93.i64[0] = 0x8000000080000000;
      v93.i64[1] = 0x8000000080000000;
      v108 = vmaxq_s32(v106, v93);
      v109 = vminq_s32(v107, v93);
      v110 = vzip1q_s32(v106, v107);
      v94.i64[0] = 0x2000000020;
      v94.i64[1] = 0x2000000020;
      v111 = vbicq_s8(vsubq_s32(v94, vclsq_s32(v110)), vceqzq_s32(v110));
      v112 = vpmaxq_s32(v111, v111);
      v113 = vmaxq_s32(v96, v97);
      v453 = v79;
      v446 = v97;
      v114 = vminq_s32(v96, v97);
      v113.i32[0] = vmaxvq_s32(v113);
      v114.i32[0] = vminvq_s32(v114);
      v115 = vdupq_lane_s32(*v113.i8, 0);
      v116 = vdupq_lane_s32(*v114.i8, 0);
      v117 = vmaxq_s32(v108, v115);
      v118 = vminq_s32(v109, v116);
      v119 = vzip1q_s32(v115, v116);
      v120 = vbicq_s8(vsubq_s32(v94, vclsq_s32(v119)), vceqzq_s32(v119));
      v456 = v19;
      v121 = vpmaxq_s32(v120, v120);
      v122 = vmaxq_s32(v99, v100);
      v444 = v100;
      v445 = v99;
      v123 = vminq_s32(v99, v100);
      v122.i32[0] = vmaxvq_s32(v122);
      v123.i32[0] = vminvq_s32(v123);
      v124 = vdupq_lane_s32(*v122.i8, 0);
      v125 = vdupq_lane_s32(*v123.i8, 0);
      v126 = vmaxq_s32(v117, v124);
      v127 = vminq_s32(v118, v125);
      v128 = vzip1q_s32(v124, v125);
      v129 = vbicq_s8(vsubq_s32(v94, vclsq_s32(v128)), vceqzq_s32(v128));
      v130 = vpmaxq_s32(v129, v129);
      v131 = vmaxq_s32(v102, v103);
      v132 = vminq_s32(v102, v103);
      v131.i32[0] = vmaxvq_s32(v131);
      v132.i32[0] = vminvq_s32(v132);
      v133 = vdupq_lane_s32(*v131.i8, 0);
      v134 = vdupq_lane_s32(*v132.i8, 0);
      v135 = vmaxq_s32(v126, v133);
      v136 = vminq_s32(v127, v134);
      v137 = vzip1q_s32(v133, v134);
      v138 = vbicq_s8(vsubq_s32(v94, vclsq_s32(v137)), vceqzq_s32(v137));
      v139 = vpmaxq_s32(v138, v138);
      v140 = vmaxq_s32(vmaxq_s32(v112, v121), vmaxq_s32(v130, v139));
      v443 = v136;
      v441 = vclzq_s32(vsubq_s32(v135, v136));
      v141 = vsubq_s32(v94, v441);
      v142 = vcgtq_s32(v140, v141);
      v143 = vminq_s32(v141, v140);
      v136.i64[0] = 0x200000002;
      v136.i64[1] = 0x200000002;
      v140.i64[0] = 0xA0000000ALL;
      v140.i64[1] = 0xA0000000ALL;
      v442 = v142;
      v144 = vbslq_s8(v142, v140, v136);
      v140.i64[0] = 0x100000001;
      v140.i64[1] = 0x100000001;
      v145 = vmaxq_s32(v143, v140);
      v136.i64[0] = 0xF0000000FLL;
      v136.i64[1] = 0xF0000000FLL;
      v146 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v112), v136), 0);
      v147 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v121), v136), 0);
      v452 = v76;
      v148 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v130), v136), 0);
      v149 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v139), v136), 0);
      v150 = vsubq_s32(v145, v146);
      v151 = vsubq_s32(v145, v147);
      v152 = vsubq_s32(v145, v148);
      v153 = vsubq_s32(v145, v149);
      v136.i64[0] = 0x400000004;
      v136.i64[1] = 0x400000004;
      v154 = vbicq_s8(v136, vceqq_s32(vaddq_s32(v149, v148), vnegq_s32(vaddq_s32(v146, v147))));
      v155 = vorrq_s8(v154, v144);
      *v154.i8 = vqmovn_u32(v155);
      v148.i64[0] = 0x8000800080008;
      v148.i64[1] = 0x8000800080008;
      *v147.i8 = vqmovn_u32(v145);
      v156 = vbicq_s8(v147, vceqzq_s16(vandq_s8(v154, v148)));
      v144.i64[0] = 0x2000200020002;
      v144.i64[1] = 0x2000200020002;
      v134.i64[0] = 0x10001000100010;
      v134.i64[1] = 0x10001000100010;
      v157 = vandq_s8(vshlq_n_s16(v154, 2uLL), v134);
      v136.i64[0] = 0x3000300030003;
      v136.i64[1] = 0x3000300030003;
      v158.i64[0] = 0x20002000200020;
      v158.i64[1] = 0x20002000200020;
      v159 = vaddq_s16(v156, v157);
      *v157.i8 = vqmovn_u32(v150);
      v112.i64[0] = 0x7000700070007;
      v112.i64[1] = 0x7000700070007;
      v160 = vmlaq_s16(vaddq_s16(v159, vandq_s8(vceqq_s16(vandq_s8(v154, v136), v144), v158)), v157, v112);
      v161 = vaddq_s32(vaddq_s32(v152, v151), v153);
      *v161.i8 = vqmovn_u32(v161);
      v162 = vaddq_s16(v160, vshlq_n_s16(v161, 3uLL));
      v161.i64[1] = v453.i64[1];
      *v161.i8 = vqmovn_u32(v453);
      v163 = vceqzq_s16(vandq_s8(v161, v148));
      *v148.i8 = vqmovn_u32(v62);
      v164 = vaddq_s16(vbicq_s8(v148, v163), vandq_s8(vshlq_n_s16(v161, 2uLL), v134));
      v165 = vaddq_s16(v164, vandq_s8(vceqq_s16(vandq_s8(v161, v136), v144), v158));
      *v164.i8 = vqmovn_u32(v457);
      v166 = vmlaq_s16(v165, v164, v112);
      v167 = vaddq_s32(v464, v458);
      v168 = vaddq_s32(v167, v452);
      *v167.i8 = vqmovn_u32(v168);
      v169 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v166, vshlq_n_s16(v167, 3uLL)), v162)), 0);
      v64 = v85 & 0xFFFF0000 | v449;
      v170 = vaddvq_s32(v169);
      if (v170)
      {
        v171.i64[0] = 0x1F0000001FLL;
        v171.i64[1] = 0x1F0000001FLL;
        v172.i64[0] = -1;
        v172.i64[1] = -1;
        v173 = vandq_s8(vsubq_s32(vshlq_s32(v172, vsubq_s32(v171, v441)), v443), v442);
        v174 = vcltzq_s32(vshlq_n_s32(v169, 0x1FuLL));
        v459 = vbslq_s8(v174, v448, v459);
        v460 = vbslq_s8(v174, v447, v460);
        v461 = vbslq_s8(v174, v96, v461);
        v454 = vbslq_s8(v174, v446, v454);
        v455 = vbslq_s8(v174, v445, v455);
        v462 = vbslq_s8(v174, v102, v462);
        v463 = vbslq_s8(v174, v103, v463);
        v456 = vbslq_s8(v174, v444, v456);
        v457 = vbslq_s8(v174, v150, v457);
        v464 = vbslq_s8(v174, v152, v464);
        v451 = vbslq_s8(v174, v173, v451);
        v62 = vbslq_s8(v174, v145, v62);
        v453 = vbslq_s8(v174, v155, v453);
        v458 = vbslq_s8(v174, v151, v458);
        v452 = vbslq_s8(v174, v153, v452);
        v168 = vaddq_s32(vaddq_s32(v464, v458), v452);
      }

      v450 = v168;
      v175 = *(a3 + 48);
      v175.i32[3] = HIDWORD(*(a3 + 16));
      v176 = vsubq_s32(v9, vqtbl2q_s8(*&v80, xmmword_29D2F0FA0));
      v186 = vsubq_s32(v7, vqtbl2q_s8(*v7.i8, xmmword_29D2F0F80));
      v177 = vsubq_s32(v8, vqtbl2q_s8(*v7.i8, xmmword_29D2F1030));
      v178 = vsubq_s32(v10, vqtbl2q_s8(*&v80, xmmword_29D2F1040));
      v179 = *(a3 + a4 + 16);
      HIDWORD(v179) = v175.i32[3];
      v180 = vsubq_s32(v11, vqtbl2q_s8(*&v81, xmmword_29D2F1050));
      v181 = *(a3 + a4 + 48);
      v181.i32[3] = v175.i32[3];
      v182 = vsubq_s32(v12, vqtbl2q_s8(*&v81, xmmword_29D2F0F80));
      v183 = vsubq_s32(v82, vqtbl2q_s8(*v82.i8, xmmword_29D2F1060));
      v184 = vsubq_s32(*(a3 + a4 + 48), vqtbl2q_s8(*v82.i8, xmmword_29D2F0F80));
      v185 = v177;
      v185.i32[3] = v186.i32[0];
      v186.i32[0] = v177.i32[3];
      v187 = vmaxq_s32(v186, v185);
      v188 = vminq_s32(v186, v185);
      v187.i32[0] = vmaxvq_s32(v187);
      v188.i32[0] = vminvq_s32(v188);
      v189 = vdupq_lane_s32(*v187.i8, 0);
      v190 = vdupq_lane_s32(*v188.i8, 0);
      v191.i64[0] = 0x8000000080000000;
      v191.i64[1] = 0x8000000080000000;
      v192 = vmaxq_s32(v189, v191);
      v193 = vminq_s32(v190, v191);
      v194 = vzip1q_s32(v189, v190);
      v181.i64[0] = 0x2000000020;
      v181.i64[1] = 0x2000000020;
      v195 = vbicq_s8(vsubq_s32(v181, vclsq_s32(v194)), vceqzq_s32(v194));
      v196 = vpmaxq_s32(v195, v195);
      v197 = vmaxq_s32(v176, v178);
      v198 = vminq_s32(v176, v178);
      v197.i32[0] = vmaxvq_s32(v197);
      v198.i32[0] = vminvq_s32(v198);
      v199 = vdupq_lane_s32(*v197.i8, 0);
      v200 = vdupq_lane_s32(*v198.i8, 0);
      v201 = vmaxq_s32(v192, v199);
      v202 = vminq_s32(v193, v200);
      v203 = vzip1q_s32(v199, v200);
      v204 = vbicq_s8(vsubq_s32(v181, vclsq_s32(v203)), vceqzq_s32(v203));
      v205 = vpmaxq_s32(v204, v204);
      v206 = vmaxq_s32(v180, v182);
      v207 = vminq_s32(v180, v182);
      v206.i32[0] = vmaxvq_s32(v206);
      v207.i32[0] = vminvq_s32(v207);
      v208 = vdupq_lane_s32(*v206.i8, 0);
      v209 = vdupq_lane_s32(*v207.i8, 0);
      v210 = vmaxq_s32(v201, v208);
      v211 = vminq_s32(v202, v209);
      v212 = vzip1q_s32(v208, v209);
      v213 = vbicq_s8(vsubq_s32(v181, vclsq_s32(v212)), vceqzq_s32(v212));
      v214 = vpmaxq_s32(v213, v213);
      v215 = vmaxq_s32(v183, v184);
      v216 = vminq_s32(v183, v184);
      v215.i32[0] = vmaxvq_s32(v215);
      v216.i32[0] = vminvq_s32(v216);
      v217 = vdupq_lane_s32(*v215.i8, 0);
      v218 = vdupq_lane_s32(*v216.i8, 0);
      v219 = vmaxq_s32(v210, v217);
      v220 = vminq_s32(v211, v218);
      v221 = vzip1q_s32(v217, v218);
      v222 = vbicq_s8(vsubq_s32(v181, vclsq_s32(v221)), vceqzq_s32(v221));
      v223 = vpmaxq_s32(v222, v222);
      v224 = vmaxq_s32(vmaxq_s32(v196, v205), vmaxq_s32(v214, v223));
      v225 = vclzq_s32(vsubq_s32(v219, v220));
      v226 = vsubq_s32(v181, v225);
      v227 = vcgtq_s32(v224, v226);
      v78 = vminq_s32(v226, v224);
      v226.i64[0] = 0x900000009;
      v226.i64[1] = 0x900000009;
      v191.i64[0] = 0x200000002;
      v191.i64[1] = 0x200000002;
      v228 = vorrq_s8(vandq_s8(vceqzq_s32(v78), v191), vsubq_s32(vandq_s8(v227, v226), vmvnq_s8(v227)));
      v191.i64[0] = 0xF0000000FLL;
      v191.i64[1] = 0xF0000000FLL;
      v229 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v196), v191), 0);
      v230 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v205), v191), 0);
      v231 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v214), v191), 0);
      v232 = vmaxq_s32(vminq_s32(vsubq_s32(v78, v223), v191), 0);
      v233 = vsubq_s32(v78, v229);
      v234 = vaddq_s32(v232, v231);
      v191.i64[0] = 0x400000004;
      v191.i64[1] = 0x400000004;
      v235 = vorrq_s8(vbicq_s8(v191, vceqq_s32(v234, vnegq_s32(vaddq_s32(v229, v230)))), v228);
      *v234.i8 = vqmovn_u32(v235);
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      *v228.i8 = vqmovn_u32(v78);
      v237 = vbicq_s8(v228, vceqzq_s16(vandq_s8(v234, v236)));
      v175.i64[0] = 0x10001000100010;
      v175.i64[1] = 0x10001000100010;
      v238 = vandq_s8(vshlq_n_s16(v234, 2uLL), v175);
      v239.i64[0] = 0x3000300030003;
      v239.i64[1] = 0x3000300030003;
      v240.i64[0] = 0x2000200020002;
      v240.i64[1] = 0x2000200020002;
      v241.i64[0] = 0x20002000200020;
      v241.i64[1] = 0x20002000200020;
      v242 = vandq_s8(vceqq_s16(vandq_s8(v234, v239), v240), v241);
      v243 = vaddq_s16(v237, v238);
      *v238.i8 = vqmovn_u32(v233);
      v74.i64[0] = 0x7000700070007;
      v74.i64[1] = 0x7000700070007;
      v244 = vmlaq_s16(vaddq_s16(v243, v242), v238, v74);
      *v242.i8 = vqmovn_u32(v453);
      *v238.i8 = vqmovn_u32(v62);
      v245 = vbicq_s8(v238, vceqzq_s16(vandq_s8(v242, v236)));
      v246 = vandq_s8(vshlq_n_s16(v242, 2uLL), v175);
      v247 = vandq_s8(vceqq_s16(vandq_s8(v242, v239), v240), v241);
      v248 = vaddq_s16(vaddq_s16(v245, v246), v247);
      *v247.i8 = vqmovn_u32(v457);
      v249 = vmlaq_s16(v248, v247, v74);
      v250 = vsubq_s32(v78, v230);
      v251 = vsubq_s32(v78, v231);
      v252 = vsubq_s32(v78, v232);
      v253 = vaddq_s32(vaddq_s32(v251, v250), v252);
      *v253.i8 = vqmovn_u32(v253);
      v254 = vshlq_n_s16(v253, 3uLL);
      v255 = vaddq_s16(v244, v254);
      v74.i64[1] = v450.i64[1];
      *v254.i8 = vqmovn_u32(v450);
      v256 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v249, vshlq_n_s16(v254, 3uLL)), v255)), 0);
      v254.i16[0] = vaddvq_s32(v256);
      v257 = v254.u16[0];
      v258 = v457;
      if (v254.i16[0])
      {
        v259.i64[0] = 0x1F0000001FLL;
        v259.i64[1] = 0x1F0000001FLL;
        v260 = vsubq_s32(v259, v225);
        v259.i64[0] = -1;
        v259.i64[1] = -1;
        v261 = vandq_s8(vsubq_s32(vshlq_s32(v259, v260), v220), v227);
        v262 = vcltzq_s32(vshlq_n_s32(v256, 0x1FuLL));
        v13.i32[0] = vbslq_s8(v262, vextq_s8(v8, v8, 0xCuLL), v13).u32[0];
        v263 = vbslq_s8(v262, v186, v459);
        v264 = vbslq_s8(v262, v185, v460);
        v265 = vbslq_s8(v262, v176, v461);
        v454 = vbslq_s8(v262, v178, v454);
        v74 = vbslq_s8(v262, v180, v455);
        v455 = v74;
        v456 = vbslq_s8(v262, v182, v456);
        v462 = vbslq_s8(v262, v183, v462);
        v463 = vbslq_s8(v262, v184, v463);
        v258 = vbslq_s8(v262, v233, v457);
        v266 = vbslq_s8(v262, v250, v458);
        v464 = vbslq_s8(v262, v251, v464);
        v76 = vbslq_s8(v262, v252, v452);
        v68 = vbslq_s8(v262, v261, v451);
        v62 = vbslq_s8(v262, v78, v62);
        v79 = vbslq_s8(v262, v235, v453);
      }

      else
      {
        v68 = v451;
        v76 = v452;
        v264 = v460;
        v265 = v461;
        v266 = v458;
        v263 = v459;
        v79 = v453;
      }

      if (v170)
      {
        v268 = v257 == 0;
      }

      else
      {
        v268 = 0;
      }

      v63 = v268;
      v18 = v455;
      v19 = v456;
      v17 = v454;
    }

    else
    {
      v264 = v460;
      v265 = v461;
      v266 = v458;
      v263 = v459;
      v258 = v457;
    }

    *v78.i8 = vqmovn_u32(v79);
    v269.i64[0] = 0x8000800080008;
    v269.i64[1] = 0x8000800080008;
    *v74.i8 = vqmovn_u32(v62);
    v269.i16[0] = vbicq_s8(v74, vceqzq_s16(vandq_s8(v78, v269))).u16[0];
    v270.i64[0] = 0x3000300030003;
    v270.i64[1] = 0x3000300030003;
    v271.i64[0] = 0x2000200020002;
    v271.i64[1] = 0x2000200020002;
    v272 = vceqq_s16(vandq_s8(v78, v270), v271);
    v271.i64[0] = 0x20002000200020;
    v271.i64[1] = 0x20002000200020;
    v272.i16[0] = vandq_s8(v272, v271).u16[0];
    v271.i16[0] = vqmovn_u32(v258).u16[0];
    if (((v269.i16[0] + ((4 * v78.i16[0]) & 0x10) + v272.i16[0] - v271.i16[0] + 8 * v271.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v464, v266), v76)).u16[0]) - 471) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v273 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v274 = 8 * (a1 & 7);
      if (v274)
      {
        v275 = *v273 & ~(-1 << v274);
      }

      else
      {
        v275 = 0;
      }

      *a2 = 0;
      if (v62.i32[0])
      {
        v276 = (32 * v62.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v276 = 0;
      }

      v277 = v276 | v79.i8[0] & 0x1F | (v13.u32[0] << 10);
      v278 = (v277 << v274) | v275;
      if (v274 >= 0x16)
      {
        *v273 = v278;
        v278 = v277 >> (-8 * (a1 & 7u));
      }

      v279 = v274 + 42;
      v280 = vsubq_s32(v62, v258);
      v281 = vsubq_s32(v62, v266);
      v282 = vsubq_s32(v62, v464);
      v283 = vsubq_s32(v62, v76);
      *v280.i8 = vqmovn_u32(v280);
      *v280.i8 = vqmovn_u16(v280);
      *v281.i8 = vqmovn_u32(v281);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u32(v282);
      *v282.i8 = vqmovn_u16(v282);
      *v283.i8 = vqmovn_u32(v283);
      *v283.i8 = vqmovn_u16(v283);
      v280.i32[0] = vzip1q_s16(vzip1q_s8(v280, v281), vzip1q_s8(v282, v283)).u32[0];
      v281.i64[0] = 0x400000004;
      v281.i64[1] = 0x400000004;
      v282.i64[0] = 0x404040404040404;
      v282.i64[1] = 0x404040404040404;
      v284 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v79, v281))), v282);
      v282.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v285 = vandq_s8(vshlq_u8(v283, vorrq_s8(v284, v282)), v280.u32[0]);
      v286 = vmovl_u8(*v284.i8);
      v287 = vpaddq_s16(vshlq_u16(vmovl_u8(*v285.i8), vtrn1q_s16(0, v286)), vmovl_high_u8(v285));
      v288 = vpaddq_s16(v286, vmovl_high_u8(v284));
      v289 = vmovl_u16(*v288.i8);
      v290 = vmovl_high_u16(v288);
      v291 = vpaddq_s32(vshlq_u32(vmovl_u16(*v287.i8), vtrn1q_s32(0, v289)), vshlq_u32(vmovl_high_u16(v287), vtrn1q_s32(0, v290)));
      v292 = vpaddq_s32(v289, v290);
      v293.i64[0] = v291.u32[0];
      v293.i64[1] = v291.u32[1];
      v294 = v293;
      v293.i64[0] = v291.u32[2];
      v293.i64[1] = v291.u32[3];
      v295 = v293;
      v293.i64[0] = v292.u32[0];
      v293.i64[1] = v292.u32[1];
      v296 = v293;
      v293.i64[0] = v292.u32[2];
      v293.i64[1] = v292.u32[3];
      v297 = vpaddq_s64(vshlq_u64(v294, vzip1q_s64(0, v296)), vshlq_u64(v295, vzip1q_s64(0, v293)));
      v298 = vpaddq_s64(v296, v293);
      v299 = (v274 + 42) & 0x3A;
      v300 = (v297.i64[0] << v299) | v278;
      if ((v298.i64[0] + v299) >= 0x40)
      {
        *(v273 + ((v279 >> 3) & 8)) = v300;
        v300 = v297.i64[0] >> -v299;
      }

      v301 = v298.i64[0] + v279;
      v302 = v300 | (v297.i64[1] << v301);
      if ((v301 & 0x3F) + v298.i64[1] >= 0x40)
      {
        *(v273 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v297.i64[1] >> -(v301 & 0x3F);
        if ((v301 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = vceqq_s32(v62, v258);
      v304 = v301 + v298.i64[1];
      v305.i64[0] = 0x800000008;
      v305.i64[1] = 0x800000008;
      v306 = vandq_s8(vextq_s8(vtstq_s32(v79, v305), 0, 0xCuLL), v62);
      v307.i64[0] = 0x1F0000001FLL;
      v307.i64[1] = 0x1F0000001FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u32(v308, vaddq_s32(v306, v307)), v68);
      v310.i64[0] = v309.u32[0];
      v310.i64[1] = v309.u32[1];
      v311 = v310;
      v310.i64[0] = v309.u32[2];
      v310.i64[1] = v309.u32[3];
      v312 = v310;
      v310.i64[0] = v306.u32[0];
      v310.i64[1] = v306.u32[1];
      v313 = v310;
      v314 = vzip1q_s64(0, v310);
      v310.i64[0] = v306.u32[2];
      v310.i64[1] = v306.u32[3];
      v315 = vpaddq_s64(vshlq_u64(v311, v314), vshlq_u64(v312, 0));
      v316 = vpaddq_s64(v313, v310);
      v317 = (v315.i64[0] << v304) | v302;
      if (v316.i64[0] + (v304 & 0x3F) >= 0x40)
      {
        *(v273 + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v315.i64[0] >> -(v304 & 0x3F);
        if ((v304 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = vandq_s8(v68, v303);
      v319 = v316.i64[0] + v304;
      v320 = v317 | (v315.i64[1] << v319);
      if ((v319 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v273 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v315.i64[1] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = vaddq_s32(v318, v263);
      v322 = v319 + v316.i64[1];
      if (v63)
      {
        v320 |= v64 << v322;
        if ((v322 & 0x3F) >= 0x20)
        {
          *(v273 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
          v320 = v64 >> -(v322 & 0x3F);
        }

        v322 += 32;
      }

      v323 = vextq_s8(0, v258, 0xCuLL);
      v324.i64[0] = 0x1F0000001FLL;
      v324.i64[1] = 0x1F0000001FLL;
      v325.i64[0] = -1;
      v325.i64[1] = -1;
      v326 = vandq_s8(vshlq_u32(v325, vaddq_s32(v323, v324)), v321);
      v327.i64[0] = v326.u32[0];
      v327.i64[1] = v326.u32[1];
      v328 = v327;
      v327.i64[0] = v326.u32[2];
      v327.i64[1] = v326.u32[3];
      v329 = v327;
      v327.i64[0] = v323.u32[2];
      v327.i64[1] = v323.u32[3];
      v330 = v327;
      v331 = vzip1q_s64(0, v327);
      v327.i64[0] = v323.u32[0];
      v327.i64[1] = v323.u32[1];
      v332 = vpaddq_s64(vshlq_u64(v328, 0), vshlq_u64(v329, v331));
      v333 = vpaddq_s64(v327, v330);
      v334 = (v332.i64[0] << v322) | v320;
      if (v333.i64[0] + (v322 & 0x3F) >= 0x40)
      {
        *(v273 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v332.i64[0] >> -(v322 & 0x3F);
        if ((v322 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vceqq_s32(v62, v266);
      v336 = vaddq_s32(v264, v318);
      v337 = v333.i64[0] + v322;
      v338 = (v333.i64[0] + v322) & 0x3F;
      v339 = v334 | (v332.i64[1] << v337);
      if ((v337 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v273 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v332.i64[1] >> -v338;
        if (!v338)
        {
          v339 = 0;
        }
      }

      v340 = vandq_s8(v68, v335);
      v341 = v337 + v333.i64[1];
      v342.i64[0] = 0x1F0000001FLL;
      v342.i64[1] = 0x1F0000001FLL;
      v343.i64[0] = -1;
      v343.i64[1] = -1;
      v344 = vandq_s8(vshlq_u32(v343, vaddq_s32(v258, v342)), v336);
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v346 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v347 = v345;
      v345.i64[0] = v258.u32[0];
      v345.i64[1] = v258.u32[1];
      v348 = v345;
      v345.i64[0] = v258.u32[2];
      v345.i64[1] = v258.u32[3];
      v349 = vpaddq_s64(vshlq_u64(v346, vzip1q_s64(0, v348)), vshlq_u64(v347, vzip1q_s64(0, v345)));
      v350 = vpaddq_s64(v348, v345);
      v351 = (v349.i64[0] << v341) | v339;
      if (v350.i64[0] + (v341 & 0x3F) >= 0x40)
      {
        *(v273 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s32(v265, v340);
      v353 = v350.i64[0] + v341;
      v354 = v351 | (v349.i64[1] << v353);
      if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v273 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v349.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v350.i64[1];
      v356.i64[0] = 0x1F0000001FLL;
      v356.i64[1] = 0x1F0000001FLL;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vshlq_u32(v357, vaddq_s32(v266, v356));
      v359 = vandq_s8(v358, v352);
      v360.i64[0] = v359.u32[0];
      v360.i64[1] = v359.u32[1];
      v361 = v360;
      v360.i64[0] = v359.u32[2];
      v360.i64[1] = v359.u32[3];
      v362 = v360;
      v360.i64[0] = v266.u32[0];
      v360.i64[1] = v266.u32[1];
      v363 = v360;
      v360.i64[0] = v266.u32[2];
      v360.i64[1] = v266.u32[3];
      v364 = vzip1q_s64(0, v363);
      v365 = vzip1q_s64(0, v360);
      v366 = vpaddq_s64(vshlq_u64(v361, v364), vshlq_u64(v362, v365));
      v367 = vpaddq_s64(v363, v360);
      v368 = (v366.i64[0] << v355) | v354;
      if (v367.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v273 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
        if ((v355 & 0x3F) != 0)
        {
          v368 = v366.i64[0] >> -(v355 & 0x3F);
        }

        else
        {
          v368 = 0;
        }
      }

      v369 = vceqq_s32(v62, v464);
      v370 = vaddq_s32(v17, v340);
      v371 = v367.i64[0] + v355;
      v372 = v368 | (v366.i64[1] << v371);
      if ((v371 & 0x3F) + v367.i64[1] >= 0x40)
      {
        *(v273 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v366.i64[1] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = vandq_s8(v68, v369);
      v374 = v371 + v367.i64[1];
      v375 = vandq_s8(v358, v370);
      v376.i64[0] = v375.u32[0];
      v376.i64[1] = v375.u32[1];
      v377 = v376;
      v376.i64[0] = v375.u32[2];
      v376.i64[1] = v375.u32[3];
      v378 = vpaddq_s64(vshlq_u64(v377, v364), vshlq_u64(v376, v365));
      v379 = (v378.i64[0] << v374) | v372;
      if (v367.i64[0] + (v374 & 0x3F) >= 0x40)
      {
        *(v273 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
        v379 = v378.i64[0] >> -(v374 & 0x3F);
        if ((v374 & 0x3F) == 0)
        {
          v379 = 0;
        }
      }

      v380 = vaddq_s32(v18, v373);
      v381 = v367.i64[0] + v374;
      v382 = (v367.i64[0] + v374) & 0x3F;
      v383 = v379 | (v378.i64[1] << v381);
      if ((v381 & 0x3F) + v367.i64[1] >= 0x40)
      {
        *(v273 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v378.i64[1] >> -v382;
        if (!v382)
        {
          v383 = 0;
        }
      }

      v384 = v381 + v367.i64[1];
      v385.i64[0] = 0x1F0000001FLL;
      v385.i64[1] = 0x1F0000001FLL;
      v386.i64[0] = -1;
      v386.i64[1] = -1;
      v387 = vshlq_u32(v386, vaddq_s32(v464, v385));
      v388 = vandq_s8(v387, v380);
      v389.i64[0] = v388.u32[0];
      v389.i64[1] = v388.u32[1];
      v390 = v389;
      v389.i64[0] = v388.u32[2];
      v389.i64[1] = v388.u32[3];
      v391 = v389;
      v389.i64[0] = v464.u32[0];
      v389.i64[1] = v464.u32[1];
      v392 = v389;
      v389.i64[0] = v464.u32[2];
      v389.i64[1] = v464.u32[3];
      v393 = vzip1q_s64(0, v392);
      v394 = vzip1q_s64(0, v389);
      v395 = vpaddq_s64(vshlq_u64(v390, v393), vshlq_u64(v391, v394));
      v396 = vpaddq_s64(v392, v389);
      v397 = (v395.i64[0] << v384) | v383;
      if (v396.i64[0] + (v384 & 0x3F) >= 0x40)
      {
        *(v273 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        if ((v384 & 0x3F) != 0)
        {
          v397 = v395.i64[0] >> -(v384 & 0x3F);
        }

        else
        {
          v397 = 0;
        }
      }

      v398 = vceqq_s32(v62, v76);
      v399 = vaddq_s32(v19, v373);
      v400 = v396.i64[0] + v384;
      v401 = v397 | (v395.i64[1] << v400);
      if ((v400 & 0x3F) + v396.i64[1] >= 0x40)
      {
        *(v273 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        v401 = v395.i64[1] >> -(v400 & 0x3F);
        if ((v400 & 0x3F) == 0)
        {
          v401 = 0;
        }
      }

      v402 = vandq_s8(v68, v398);
      v403 = v400 + v396.i64[1];
      v404 = vandq_s8(v387, v399);
      v405.i64[0] = v404.u32[0];
      v405.i64[1] = v404.u32[1];
      v406 = v405;
      v405.i64[0] = v404.u32[2];
      v405.i64[1] = v404.u32[3];
      v407 = vpaddq_s64(vshlq_u64(v406, v393), vshlq_u64(v405, v394));
      v408 = (v407.i64[0] << v403) | v401;
      if (v396.i64[0] + (v403 & 0x3F) >= 0x40)
      {
        *(v273 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v408;
        v408 = v407.i64[0] >> -(v403 & 0x3F);
        if ((v403 & 0x3F) == 0)
        {
          v408 = 0;
        }
      }

      v409 = vaddq_s32(v462, v402);
      v410 = v396.i64[0] + v403;
      v411 = (v396.i64[0] + v403) & 0x3F;
      v412 = v408 | (v407.i64[1] << v410);
      if ((v410 & 0x3F) + v396.i64[1] >= 0x40)
      {
        *(v273 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v407.i64[1] >> -v411;
        if (!v411)
        {
          v412 = 0;
        }
      }

      v413 = v410 + v396.i64[1];
      v414.i64[0] = 0x1F0000001FLL;
      v414.i64[1] = 0x1F0000001FLL;
      v415.i64[0] = -1;
      v415.i64[1] = -1;
      v416 = vshlq_u32(v415, vaddq_s32(v76, v414));
      v417 = vandq_s8(v416, v409);
      v418.i64[0] = v417.u32[0];
      v418.i64[1] = v417.u32[1];
      v419 = v418;
      v418.i64[0] = v417.u32[2];
      v418.i64[1] = v417.u32[3];
      v420 = v418;
      v418.i64[0] = v76.u32[0];
      v418.i64[1] = v76.u32[1];
      v421 = v418;
      v418.i64[0] = v76.u32[2];
      v418.i64[1] = v76.u32[3];
      v422 = vzip1q_s64(0, v421);
      v423 = vzip1q_s64(0, v418);
      v424 = vpaddq_s64(vshlq_u64(v419, v422), vshlq_u64(v420, v423));
      v425 = vpaddq_s64(v421, v418);
      v426 = (v410 + v396.i64[1]) & 0x3F;
      v427 = (v424.i64[0] << (v410 + v396.i8[8])) | v412;
      if ((v425.i64[0] + v426) > 0x3F)
      {
        *(v273 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        if (v426)
        {
          v427 = v424.i64[0] >> -v426;
        }

        else
        {
          v427 = 0;
        }
      }

      v428 = vaddq_s32(v463, v402);
      v429 = v425.i64[0] + v413;
      v430 = v427 | (v424.i64[1] << v429);
      if ((v429 & 0x3F) + v425.i64[1] >= 0x40)
      {
        *(v273 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
        v430 = v424.i64[1] >> -(v429 & 0x3F);
        if ((v429 & 0x3F) == 0)
        {
          v430 = 0;
        }
      }

      v431 = v429 + v425.i64[1];
      v432 = vandq_s8(v416, v428);
      v433.i64[0] = v432.u32[0];
      v433.i64[1] = v432.u32[1];
      v434 = v433;
      v433.i64[0] = v432.u32[2];
      v433.i64[1] = v432.u32[3];
      v435 = vpaddq_s64(vshlq_u64(v434, v422), vshlq_u64(v433, v423));
      v436 = (v435.i64[0] << v431) | v430;
      if (v425.i64[0] + (v431 & 0x3F) >= 0x40)
      {
        *(v273 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
        v436 = v435.i64[0] >> -(v431 & 0x3F);
        if ((v431 & 0x3F) == 0)
        {
          v436 = 0;
        }
      }

      v437 = v425.i64[0] + v431;
      v438 = (v425.i64[0] + v431) & 0x3F;
      v439 = v436 | (v435.i64[1] << (v425.i8[0] + v431));
      if ((v438 + v425.i64[1]) >= 0x40)
      {
        *(v273 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v439;
        v439 = v435.i64[1] >> -v438;
        if (!v438)
        {
          v439 = 0;
        }
      }

      v440 = v437 + v425.i64[1];
      if ((v440 & 0x3F) != 0)
      {
        *(v273 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v439;
      }

      result = (v440 - v274 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = 0;
  v91 = *MEMORY[0x29EDCA608];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (a6)
  {
    v77 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    if (a5)
    {
      for (i = 0; i != a6; ++i)
      {
        v31 = 0;
        v32 = (a3 + i * a4);
        v33 = &v83 + 4 * (i & 0x3F);
        v34 = &v83 + ((4 * i) | 1u);
        v35 = &v83 + ((4 * i) | 2u);
        v36 = &v83 + ((4 * i) | 3u);
        do
        {
          v37 = v32[1];
          *(v33 + 2 * (v31 & 0x7F)) = *v32;
          *(v34 + 2 * (v31 & 0x7F)) = v37;
          v38 = (2 * v31) | 1u;
          v39 = v32[3];
          *(v33 + v38) = v32[2];
          *(v34 + v38) = v39;
          v40 = v32[5];
          *(v35 + 2 * (v31 & 0x7F)) = v32[4];
          *(v36 + 2 * (v31 & 0x7F)) = v40;
          v41 = v32[6];
          v42 = v32[7];
          v32 += 8;
          ++v31;
          *(v35 + v38) = v41;
          *(v36 + v38) = v42;
        }

        while (a5 != v31);
      }

      v29 = v83;
      v27 = DWORD1(v83);
      v28 = v84;
      v26 = DWORD1(v84);
      v25 = v85;
      v23 = DWORD1(v85);
      v24 = v86;
      v22 = DWORD1(v86);
      v21 = DWORD2(v83);
      v20 = HIDWORD(v83);
      v19 = HIDWORD(v84);
      v77 = DWORD2(v84);
      v18 = DWORD2(v85);
      v16 = HIDWORD(v85);
      v17 = DWORD2(v86);
      v15 = HIDWORD(v86);
      v14 = v87;
      v12 = DWORD1(v87);
      v13 = v88;
      v11 = DWORD1(v88);
      v10 = v89;
      v8 = DWORD1(v89);
      v9 = v90;
      v7 = DWORD1(v90);
    }
  }

  else
  {
    v77 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  v64 = v17;
  v65 = v14;
  v67 = v10;
  v68 = v19;
  v69 = __PAIR64__(v11, v12);
  v70 = v15;
  v71 = v13;
  v74 = v8;
  v78.i64[0] = __PAIR64__(v28, v29);
  v66 = 2 * (a6 & 0x7F);
  v78.i64[1] = __PAIR64__(v26, v27);
  v79 = v25;
  v80 = v24;
  v81 = v23;
  v82 = v22;
  v45 = v20;
  v46 = 4 * (a5 != 0);
  v72 = 2 * (a6 != 0);
  v73 = 4 * (a5 & 0x3F);
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v78, a7, v46, v72);
  v50 = a7;
  v51 = a1;
  v52 = a5;
  v75 = v49;
  v78.i64[0] = __PAIR64__(v77, v21);
  v78.i64[1] = __PAIR64__(v68, v45);
  v79 = v18;
  v80 = v64;
  v53 = v66 - 2;
  if (v66 < 2)
  {
    v53 = 0;
  }

  if (a6 >= 2)
  {
    v54 = 2;
  }

  else
  {
    v54 = v53;
  }

  v81 = v16;
  v82 = v70;
  v55 = v50;
  v56 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(v51 + 16, &v78, v50, v46, v54);
  v78.i64[0] = __PAIR64__(v71, v65);
  v78.i64[1] = v69;
  v79 = v67;
  v80 = v9;
  v57 = v73 - 4;
  if (v73 < 4)
  {
    v57 = 0;
  }

  if (v52 >= 2)
  {
    v58 = 4;
  }

  else
  {
    v58 = v57;
  }

  v81 = v74;
  v82 = v7;
  v59 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(v51 + 32, &v78, v55, v58, v72);
  v78.i64[0] = __PAIR64__(DWORD2(v88), DWORD2(v87));
  v78.i64[1] = __PAIR64__(HIDWORD(v88), HIDWORD(v87));
  v79 = DWORD2(v89);
  v80 = DWORD2(v90);
  v81 = HIDWORD(v89);
  v82 = HIDWORD(v90);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(v51 + 48, &v78, v55, v58, v54);
  if (v59)
  {
    v61 = 4;
  }

  else
  {
    v61 = 0;
  }

  if (v56)
  {
    v62 = 2;
  }

  else
  {
    v62 = 0;
  }

  if (result)
  {
    v63 = -8;
  }

  else
  {
    v63 = -16;
  }

  *a2 = v63 | v61 | v75 | v62;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v281 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1->f32 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v279, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v279, a5);
    }

    v275 = v280;
    v277 = v279;
    v14 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v279, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v279, a5);
    }

    v271 = v280;
    v273 = v279;
    v15 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v15, &v279, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v15, &v279, a5);
    }

    v269 = v280;
    v270 = v279;
    v16 = a3 + 48;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v279, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v279, a5);
    }

    v17 = (a1 + a2);
    v18 = v279;
    v19 = v280;
    *a1 = v277;
    a1[1] = v275;
    a1[2] = v273;
    a1[3] = v271;
    *v17 = v270;
    v17[1] = v269;
    v17[2] = v18;
    v17[3] = v19;
    return 64;
  }

  if (a4 == 127)
  {
    v20 = *(a3 + 16);
    v21 = *(a3 + 32);
    v22 = *(a3 + 48);
    v23 = *(a3 + 64);
    v24 = *(a3 + 80);
    v25 = *(a3 + 96);
    v26 = *(a3 + 112);
    f32 = a1[2].f32;
    *a1 = *a3;
    a1[1] = v20;
    v28 = (a1->f32 + a2);
    *f32 = v21;
    f32[1] = v22;
    *v28 = v23;
    v28[1] = v24;
    v28 += 2;
    *v28 = v25;
    v28[1] = v26;
    return 128;
  }

  if (a4 == 3)
  {
    v12 = vld1q_dup_f32(a3);
    *a1 = v12;
    a1[1] = v12;
    a1[2] = v12;
    a1[3] = v12;
    v13 = (a1 + a2);
    *v13 = v12;
    v13[1] = v12;
    v13[2] = v12;
    v13[3] = v12;
    return 4;
  }

  v29 = 8 * (a3 & 7);
  v30 = a3 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 + 42;
  v32 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v29;
  if (v29 >= 0x17)
  {
    v32 |= *(v30 + 8) << (-8 * (a3 & 7u));
  }

  v33 = vdupq_n_s32(v32 & 0x1F);
  v34 = (8 * (a3 & 7)) | 0x200;
  v35.i64[0] = 0x300000003;
  v35.i64[1] = 0x300000003;
  v36 = vbicq_s8(vdupq_n_s32(((v32 >> 5) & 0x1F) + 1), vceqq_s32((*&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v35));
  v35.i64[0] = 0x404040404040404;
  v35.i64[1] = 0x404040404040404;
  v37 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v33 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v35);
  if (vmaxvq_s8(v37) < 1)
  {
    v46 = 0;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v66 = v36;
    v65 = v36;
    v64 = v36;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v63 = v36;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
  }

  else
  {
    v38 = vmovl_u8(*&vpaddq_s8(v37, v37));
    v39 = vmovl_u16(*&vpaddq_s16(v38, v38));
    v40 = vpaddq_s32(v39, v39).u64[0];
    v41.i64[0] = v40;
    v41.i64[1] = HIDWORD(v40);
    v42 = v41;
    v43 = vaddvq_s64(v41);
    v44 = v43 + v31;
    v45 = v43 <= 0x80 && v34 >= v44;
    v46 = !v45;
    v47 = 0uLL;
    if (v45)
    {
      v48 = v31 & 0x3A;
      v49 = vaddq_s64(vzip1q_s64(0, v42), vdupq_n_s64(v48));
      v50 = (v30 + ((v31 >> 3) & 8));
      v47 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v49)));
      if (v43 + v48 >= 0x81)
      {
        v47 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v47);
      }

      v31 = v44;
    }

    v51 = vzip1_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
    v52.i64[0] = v51.u32[0];
    v52.i64[1] = v51.u32[1];
    v53 = vshlq_u64(v47, vnegq_s64(v52));
    v54 = vuzp1q_s32(vzip1q_s64(v47, v53), vzip2q_s64(v47, v53));
    v55 = vshlq_u32(v54, vnegq_s32((*&v38 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v56 = vuzp1q_s16(vzip1q_s32(v54, v55), vzip2q_s32(v54, v55));
    v57 = vzip1q_s16(v56, vshlq_u16(v56, vnegq_s16(vmovl_u8(vuzp1_s8(*v37.i8, *v33.i8)))));
    *v57.i8 = vmovn_s16(v57);
    v54.i64[0] = 0x101010101010101;
    v54.i64[1] = 0x101010101010101;
    v58 = vshlq_s8(v54, v37);
    v54.i64[0] = -1;
    v54.i64[1] = -1;
    v58.i32[0] = vandq_s8(vaddq_s8(v58, v54), v57).u32[0];
    v59 = vdupq_n_s32(v58.i8[0]);
    v60 = vdupq_n_s32(v58.i8[1]);
    v61 = vdupq_n_s32(v58.i8[2]);
    v62 = vdupq_n_s32(v58.i8[3]);
    v63 = vsubq_s32(v36, v59);
    v64 = vsubq_s32(v36, v60);
    v65 = vsubq_s32(v36, v61);
    v66 = vsubq_s32(v36, v62);
    v67 = vceqzq_s32(v59);
    v68 = vceqzq_s32(v60);
    v69 = vceqzq_s32(v61);
    v70 = vceqzq_s32(v62);
  }

  v71 = 0uLL;
  v72 = vandq_s8(vextq_s8(vtstq_s32((*&v33 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v33 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v36);
  v73 = vpaddq_s32(v72, v72).u64[0];
  v74.i64[0] = v73;
  v74.i64[1] = HIDWORD(v73);
  v75 = v74;
  v76 = vaddvq_s64(v74);
  v77 = v76 + v31;
  if (v76 <= 0x80 && v34 >= v77)
  {
    v79 = v31 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v75), vdupq_n_s64(v79));
    v81 = (v30 + 8 * (v31 >> 6));
    v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v76 + v79 >= 0x81)
    {
      v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v71);
    }

    v31 = v77;
  }

  else
  {
    v46 = 1;
  }

  v82 = v32 & 3;
  v83 = 0uLL;
  if (v82 == 2)
  {
    v84 = v31 + 16;
    if (v34 >= v31 + 16)
    {
      v88 = (v30 + 8 * (v31 >> 6));
      v89 = *v88 >> v31;
      if ((v31 & 0x3F) >= 0x31)
      {
        v89 |= v88[1] << -(v31 & 0x3F);
      }

      v85 = v89;
      v86 = v31 + 32;
    }

    else
    {
      v85 = 0;
      v46 = 1;
      v86 = v31 + 16;
      v84 = v31;
    }

    v87 = v85;
    if (v34 >= v86)
    {
      v90 = (v30 + 8 * (v84 >> 6));
      v91 = *v90 >> v84;
      if ((v84 & 0x3F) >= 0x31)
      {
        v91 |= v90[1] << -(v84 & 0x3F);
      }

      v87.i32[1] = v91;
    }

    else
    {
      v46 = 1;
      v86 = v84;
    }
  }

  else
  {
    v86 = v31;
    v87 = 0;
  }

  v92 = vextq_s8(0, v63, 0xCuLL);
  v93 = vpaddq_s32(v92, v92).u64[0];
  v94.i64[0] = v93;
  v94.i64[1] = HIDWORD(v93);
  v95 = v94;
  v96 = vaddvq_s64(v94);
  v97 = v96 + v86;
  if (v96 <= 0x80 && v34 >= v97)
  {
    v99 = v86 & 0x3F;
    v100 = vaddq_s64(vzip1q_s64(0, v95), vdupq_n_s64(v99));
    v101 = (v30 + 8 * (v86 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v100)));
    if (v96 + v99 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v83);
    }

    v86 = v97;
  }

  else
  {
    v46 = 1;
  }

  v102 = vpaddq_s32(v63, v63).u64[0];
  v103.i64[0] = v102;
  v103.i64[1] = HIDWORD(v102);
  v104 = v103;
  v105 = vaddvq_s64(v103);
  v106 = v105 + v86;
  v107 = 0uLL;
  if (v105 <= 0x80 && v34 >= v106)
  {
    v110 = v86 & 0x3F;
    v111 = vaddq_s64(vzip1q_s64(0, v104), vdupq_n_s64(v110));
    v112 = (v30 + 8 * (v86 >> 6));
    v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v105 + v110 >= 0x81)
    {
      v109 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v109);
    }

    v86 = v106;
  }

  else
  {
    v46 = 1;
    v109 = 0uLL;
  }

  v113 = vpaddq_s32(v64, v64).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v86;
  if (v116 <= 0x80 && v34 >= v117)
  {
    v119 = v86 & 0x3F;
    v120 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v119));
    v121 = (v30 + 8 * (v86 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v121, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v120)), vshlq_u64(vdupq_lane_s64(v121->i64[0], 0), vnegq_s64(v120)));
    if (v116 + v119 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v121[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v120)), vshlq_u64(vdupq_laneq_s64(v121[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v120))), v107);
    }

    v86 = v117;
  }

  else
  {
    v46 = 1;
  }

  v122 = 0uLL;
  if (v116 > 0x80 || (v123 = v116 + v86, v34 < v116 + v86))
  {
    v123 = v86;
    v46 = 1;
    v127 = 0uLL;
  }

  else
  {
    v124 = v86 & 0x3F;
    v125 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v124));
    v126 = (v30 + 8 * (v86 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
    if (v116 + v124 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
    }
  }

  v128 = vpaddq_s32(v65, v65).u64[0];
  v129.i64[0] = v128;
  v129.i64[1] = HIDWORD(v128);
  v130 = v129;
  v131 = vaddvq_s64(v129);
  v132 = v131;
  if (v131 > 0x80 || (v133 = v131 + v123, v34 < v131 + v123))
  {
    v133 = v123;
    v46 = 1;
  }

  else
  {
    v134 = v123 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v134));
    v136 = (v30 + 8 * (v123 >> 6));
    v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v132 + v134 >= 0x81)
    {
      v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v122);
    }
  }

  v137 = 0uLL;
  if (v132 > 0x80 || (v138 = v132 + v133, v34 < v132 + v133))
  {
    v138 = v133;
    v46 = 1;
    v142 = 0uLL;
  }

  else
  {
    v139 = v133 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v139));
    v141 = (v30 + 8 * (v133 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v132 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }
  }

  v143 = vpaddq_s32(v66, v66).u64[0];
  v144.i64[0] = v143;
  v144.i64[1] = HIDWORD(v143);
  v145 = v144;
  v146 = vaddvq_s64(v144);
  v147 = v146;
  if (v146 > 0x80 || (v148 = v146 + v138, v34 < v146 + v138))
  {
    v148 = v138;
    v46 = 1;
  }

  else
  {
    v149 = v138 & 0x3F;
    v150 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v149));
    v151 = (v30 + 8 * (v138 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v147 + v149 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v137);
    }
  }

  if (v147 > 0x80 || v34 < v147 + v148)
  {
    goto LABEL_109;
  }

  v152 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
  v153.i64[0] = v152.u32[0];
  v153.i64[1] = v152.u32[1];
  v154.i64[0] = 0x1F0000001FLL;
  v154.i64[1] = 0x1F0000001FLL;
  v155 = vaddq_s32(v66, v154);
  v156.i64[0] = 0x2000000020;
  v156.i64[1] = 0x2000000020;
  v157 = vsubq_s32(v156, v66);
  v158 = (v30 + 8 * (v148 >> 6));
  v159 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v148 & 0x3F));
  v160 = vnegq_s64(v153);
  v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v159)));
  if (v147 + (v148 & 0x3F) < 0x81)
  {
    if (v46)
    {
      goto LABEL_109;
    }

    v166 = vshlq_u64(v161, v160);
    v164 = vzip2q_s64(v161, v166);
    v165 = vzip1q_s64(v161, v166);
  }

  else
  {
    if (v46)
    {
      goto LABEL_109;
    }

    v162 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    v163 = vshlq_u64(v162, v160);
    v164 = vzip2q_s64(v162, v163);
    v165 = vzip1q_s64(v162, v163);
  }

  v167 = vshlq_s32(vshlq_s32(vuzp1q_s32(v165, v164), v157), v155);
  v10 = a4 + 1;
  if (v34 + 8 * v10 - (v147 + v148) - 512 >= 9)
  {
LABEL_109:
    v168 = 0;
    v169 = 0;
    v170 = 8 * (&v279 & 7);
    v171 = 32;
    do
    {
      v172 = 64 - v170;
      if (64 - v170 >= v171)
      {
        v172 = v171;
      }

      v279.i64[v168] |= ((0xFFFFFFFFFFFFFFFFLL >> v169) & ~(-1 << v172)) << v170;
      v169 += v172;
      v173 = v172 + v170;
      v168 += v173 >> 6;
      v170 = v173 & 0x3F;
      v171 -= v172;
    }

    while (v171);
    v10 = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    return v10;
  }

  v272 = v67;
  v274 = v68;
  v276 = v69;
  v278 = v70;
  v175 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
  v176 = vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
  v177 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
  v178 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  v179 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v180.i64[0] = v175.u32[0];
  v180.i64[1] = v175.u32[1];
  v181 = v180;
  v180.i64[0] = v176.u32[0];
  v180.i64[1] = v176.u32[1];
  v182 = v180;
  v180.i64[0] = v177.u32[0];
  v180.i64[1] = v177.u32[1];
  v183 = v180;
  v180.i64[0] = v178.u32[0];
  v180.i64[1] = v178.u32[1];
  v184 = v180;
  v180.i64[0] = v179.u32[0];
  v180.i64[1] = v179.u32[1];
  v185 = vnegq_s64(v184);
  v186 = vnegq_s64(v180);
  v187 = vshlq_u64(v71, vnegq_s64(v181));
  v188 = vshlq_u64(v83, vnegq_s64(v182));
  v189 = vshlq_u64(v109, vnegq_s64(v183));
  v190 = vshlq_u64(v107, v185);
  v191 = vshlq_u64(v127, v185);
  v192 = vshlq_u64(v122, v186);
  v193 = vshlq_u64(v142, v186);
  v194 = vzip2q_s64(v71, v187);
  v195 = vzip1q_s64(v71, v187);
  v187.i64[0] = 0x2000000020;
  v187.i64[1] = 0x2000000020;
  v196 = vzip2q_s64(v83, v188);
  v197 = vzip1q_s64(v83, v188);
  v188.i64[0] = 0x2000000020;
  v188.i64[1] = 0x2000000020;
  v198 = vzip2q_s64(v109, v189);
  v199 = vzip1q_s64(v109, v189);
  v200 = vzip2q_s64(v107, v190);
  v201 = vzip1q_s64(v107, v190);
  v190.i64[0] = 0x2000000020;
  v190.i64[1] = 0x2000000020;
  v202 = vzip2q_s64(v127, v191);
  v203 = vzip1q_s64(v127, v191);
  v204 = vzip2q_s64(v122, v192);
  v205 = vzip1q_s64(v122, v192);
  v192.i64[0] = 0x2000000020;
  v192.i64[1] = 0x2000000020;
  v206 = vzip2q_s64(v142, v193);
  v207 = vzip1q_s64(v142, v193);
  v208 = v32 >> 10;
  v209 = vuzp1q_s32(v195, v194);
  v193.i64[0] = 0x1F0000001FLL;
  v193.i64[1] = 0x1F0000001FLL;
  v210 = vuzp1q_s32(v197, v196);
  v197.i64[0] = 0x1F0000001FLL;
  v197.i64[1] = 0x1F0000001FLL;
  v211 = vsubq_s32(v188, v92);
  v212 = vuzp1q_s32(v199, v198);
  v213 = vsubq_s32(v188, v63);
  v214 = vuzp1q_s32(v201, v200);
  v188.i64[0] = 0x1F0000001FLL;
  v188.i64[1] = 0x1F0000001FLL;
  v215 = vsubq_s32(v190, v64);
  v216 = vuzp1q_s32(v203, v202);
  v217 = vuzp1q_s32(v205, v204);
  v203.i64[0] = 0x1F0000001FLL;
  v203.i64[1] = 0x1F0000001FLL;
  v218 = vsubq_s32(v192, v65);
  v219 = vaddq_s32(v92, v197);
  v220 = vaddq_s32(v63, v197);
  v221 = vshlq_s32(v212, v213);
  v222 = vaddq_s32(v64, v188);
  v223 = vaddq_s32(v65, v203);
  v224 = vshlq_s32(vshlq_s32(v209, vsubq_s32(v187, v72)), vaddq_s32(v72, v193));
  v225 = vshlq_s32(vshlq_s32(v210, v211), v219);
  v226 = vshlq_s32(v221, v220);
  v227 = vshlq_s32(vshlq_s32(v214, v215), v222);
  v228 = vshlq_s32(vshlq_s32(v216, v215), v222);
  v229 = vshlq_s32(vshlq_s32(v217, v218), v223);
  v230 = vshlq_s32(vshlq_s32(vuzp1q_s32(v207, v206), v218), v223);
  v231 = vshlq_u64(v137, v160);
  v232 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v137, v231), vzip2q_s64(v137, v231)), v157), v155);
  if (v82 == 2)
  {
    v233 = vdupq_lane_s32(v87, 1);
    v234.i64[0] = 0xFFFFFFFF00000000;
    v234.i64[1] = 0xFFFFFFFF00000000;
    v233.i64[0] = 0;
    v235 = vaddq_s32(vandq_s8(vdupq_lane_s32(v87, 0), v234), v233);
    v236 = vmlaq_lane_s32(v233, xmmword_29D2F11A0, v87, 0);
    v225 = vaddq_s32(v225, v235);
    *v234.i8 = vshl_u32(v87, 0x100000002);
    v237 = vdupq_lane_s32(*v234.i8, 1);
    v226 = vaddq_s32(v226, v236);
    v227 = vaddq_s32(vaddq_s32(v235, v237), v227);
    v238 = vdupq_lane_s32(*v234.i8, 0);
    v228 = vaddq_s32(vaddq_s32(v236, v237), v228);
    v229 = vaddq_s32(vaddq_s32(v235, v238), v229);
    v230 = vaddq_s32(vaddq_s32(v236, v238), v230);
    v239 = vdupq_lane_s32(vadd_s32(*v234.i8, *v237.i8), 0);
    v232 = vaddq_s32(vaddq_s32(v239, v235), v232);
    v167 = vaddq_s32(vaddq_s32(v239, v236), v167);
  }

  v240 = vdupq_n_s32(v208);
  v241 = vdupq_lane_s32(*v224.i8, 0);
  v242 = vandq_s8(v241, v272);
  v243 = vsubq_s32(vaddq_s32(vandq_s8(v224, v272), v225), v242);
  v244 = vsubq_s32(v226, v242);
  v245 = vandq_s8(v241, v274);
  v246 = vsubq_s32(v227, v245);
  v247 = vsubq_s32(v228, v245);
  v248 = vandq_s8(v241, v276);
  v249 = vsubq_s32(v229, v248);
  v250 = vsubq_s32(v230, v248);
  v251 = vandq_s8(v241, v278);
  v252 = vsubq_s32(v232, v251);
  v253 = vsubq_s32(v167, v251);
  v251.i64[0] = 0x100000001;
  v251.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v251)))
  {
    v254 = vnegq_s32((*&v33 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v255 = v244;
    v255.i32[3] = v243.i32[0];
    v256 = v243;
    v256.i32[0] = v244.i32[3];
    v282.val[0] = vbslq_s8(v254, v256, v243);
    v282.val[1] = vbslq_s8(v254, v255, v244);
    v255.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v255.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v283.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v282, xmmword_29D2F0F80), v254), v282.val[0]);
    v283.val[1] = vaddq_s32(v282.val[1], vandq_s8(vqtbl2q_s8(v282, v255), v254));
    v243 = vaddq_s32(vandq_s8(vqtbl2q_s8(v283, xmmword_29D2F0F90), v254), v283.val[0]);
    v244 = vaddq_s32(v283.val[1], vandq_s8(vqtbl2q_s8(v283, v255), v254));
    v283.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v246.i8, xmmword_29D2F0FA0), v254), v246);
    v283.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v246.i8, xmmword_29D2F0FB0), v254), v247);
    v246 = vaddq_s32(vandq_s8(vqtbl2q_s8(v283, xmmword_29D2F0FC0), v254), v283.val[0]);
    v247 = vaddq_s32(v283.val[1], vandq_s8(vqtbl2q_s8(v283, v255), v254));
    v283.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v249.i8, xmmword_29D2F0FD0), v254), v249);
    v283.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v249.i8, xmmword_29D2F0F80), v254), v250);
    v249 = vaddq_s32(vandq_s8(vqtbl2q_s8(v283, v255), v254), v283.val[0]);
    v250 = vaddq_s32(v283.val[1], vandq_s8(vqtbl2q_s8(v283, xmmword_29D2F0FE0), v254));
    v282.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0FF0), v254), v252);
    v282.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0F80), v254), v253);
    v252 = vaddq_s32(vandq_s8(vqtbl2q_s8(v282, v255), v254), v282.val[0]);
    v253 = vaddq_s32(v282.val[1], vandq_s8(vqtbl2q_s8(v282, xmmword_29D2F1000), v254));
  }

  v257 = vaddq_s32(v240, v243);
  v258 = vaddq_s32(v244, v240);
  v259 = vaddq_s32(v246, v240);
  v260 = vaddq_s32(v247, v240);
  v261 = vaddq_s32(v249, v240);
  v262 = vaddq_s32(v250, v240);
  v263 = vaddq_s32(v252, v240);
  v264 = vaddq_s32(v253, v240);
  v265.i64[0] = 0x1000000010;
  v265.i64[1] = 0x1000000010;
  v266 = vcgtq_u32(v265, v33);
  v265.i64[0] = -1;
  v265.i64[1] = -1;
  v267 = &a1[2];
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v257, v265), v266), v257);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v258, v265), v266), v258);
  v268 = (a1 + a2);
  *v267 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v259, v265), v266), v259);
  v267[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v260, v265), v266), v260);
  *v268 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v261, v265), v266), v261);
  v268[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v262, v265), v266), v262);
  v268 += 2;
  *v268 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v263, v265), v266), v263);
  v268[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v264, v265), v266), v264);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 128, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 192, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 128, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 192, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 256, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 4, 256, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 256, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 36, 256, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 8, 256, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 12, 256, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 40, 256, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 44, 256, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v12 = *(a3 + 16);
      v13 = *(a3 + 48);
      v14 = *(a3 + 144);
      v15 = *(a3 + 176);
      v16 = *(a3 + 64);
      v17 = *(a3 + 96);
      v18 = *(a3 + 32);
      v19 = *(a3 + 192);
      v20 = *(a3 + 224);
      v21 = *(a3 + 240);
      v22 = *(a3 + 128);
      v23 = *(a3 + 160);
      v24 = *(a3 + 80);
      v25 = *(a3 + 112);
      v26 = *(a3 + 208);
      v27 = (a1->f64 + a2);
      *a1 = *a3;
      a1[1] = v18;
      a1[2] = v22;
      a1[3] = v23;
      v28 = (a1->f64 + 2 * a2);
      *v27 = v12;
      v27[1] = v13;
      v27[2] = v14;
      v27[3] = v15;
      *v28 = v16;
      v28[1] = v17;
      v28[2] = v19;
      v28[3] = v20;
      v29 = (v28 + a2);
      v4 = 256;
      *v29 = v24;
      v29[1] = v25;
      v29[2] = v26;
      v29[3] = v21;
      return v4;
    case 7u:
      v8 = vld1q_dup_f64(a3);
      *a1 = v8;
      a1[1] = v8;
      a1[2] = v8;
      a1[3] = v8;
      v9 = (a1 + a2);
      *v9 = v8;
      v9[1] = v8;
      v9[2] = v8;
      v9[3] = v8;
      v10 = (a1 + 2 * a2);
      *v10 = v8;
      v10[1] = v8;
      v10[2] = v8;
      v10[3] = v8;
      v11 = (a1 + 2 * a2 + a2);
      *v11 = v8;
      v11[1] = v8;
      v4 = 8;
LABEL_141:
      v11[2] = v8;
      v11[3] = v8;
      return v4;
    case 0u:
      v4 = 0;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v5 = (a1->f64 + a2);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      v6 = (a1->f64 + 2 * a2);
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (a1->f64 + 2 * a2 + a2);
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      return v4;
  }

  v30 = 8 * (a3 & 7);
  v31 = a3 & 0xFFFFFFFFFFFFFFF8;
  v32 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v30;
  if (v30 >= 0x2D)
  {
    v32 |= *(v31 + 8) << (-8 * (a3 & 7u));
  }

  v33 = (8 * (a3 & 7)) | 0x800;
  v34.i32[0] = v32;
  v34.i32[1] = (v32 >> 5) & 0x7FFF;
  *v35.i8 = vand_s8(v34, 0x1F0000001FLL);
  v36 = v30 + 84;
  v371 = *v35.i8;
  v35.i64[1] = v35.i64[0];
  v37.i64[0] = 0xFFFF0000FFFFLL;
  v37.i64[1] = 0xFFFF0000FFFFLL;
  v38 = vandq_s8(v35, v37);
  v37.i16[0] = (v32 >> 10) & 0x1F;
  v37.i16[1] = (v32 >> 15) & 0x1F;
  v37.i32[1] = v37.i32[0];
  v39 = vmovl_u16(vadd_s16(*v37.i8, 0x1000100010001));
  v40 = *&v38 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v41.i64[0] = 0x300000003;
  v41.i64[1] = 0x300000003;
  v42 = vbicq_s8(v39, vceqq_s32((*&v38 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v41));
  v41.i64[0] = 0x404040404040404;
  v41.i64[1] = 0x404040404040404;
  v43 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v38 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v41);
  if (vmaxvq_s8(v43) < 1)
  {
    v52 = 0;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v368 = v70;
    v369 = v70;
    v68 = v42;
    v67 = v42;
    v66 = v42;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v65 = v42;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v370 = v71;
  }

  else
  {
    v44 = vmovl_u8(*&vpaddq_s8(v43, v43));
    v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
    v46 = vpaddq_s32(v45, v45).u64[0];
    v47.i64[0] = v46;
    v47.i64[1] = HIDWORD(v46);
    v48 = v47;
    v49 = vaddvq_s64(v47);
    v50 = v36 + v49;
    v51 = v49 <= 0x80 && v33 >= v50;
    v52 = !v51;
    v53 = 0uLL;
    if (v51)
    {
      v54 = v36 & 0x3C;
      v55 = vaddq_s64(vdupq_n_s64(v54), vzip1q_s64(0, v48));
      v56 = (v31 + ((v36 >> 3) & 0x18));
      v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
      if (v54 + v49 >= 0x81)
      {
        v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v53);
      }

      v36 = v50;
    }

    v57 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
    v58.i64[0] = v57.u32[0];
    v58.i64[1] = v57.u32[1];
    v59 = vshlq_u64(v53, vnegq_s64(v58));
    v60 = vuzp1q_s32(vzip1q_s64(v53, v59), vzip2q_s64(v53, v59));
    v61 = vshlq_u32(v60, vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v62 = vuzp1q_s16(vzip1q_s32(v60, v61), vzip2q_s32(v60, v61));
    v60.i64[0] = 0x101010101010101;
    v60.i64[1] = 0x101010101010101;
    *v63.i8 = vand_s8(vadd_s8(*&vshlq_s8(v60, v43), -1), vmovn_s16(vzip1q_s16(v62, vshlq_u16(v62, vnegq_s16(vmovl_u8(vuzp1_s8(*v43.i8, v34)))))));
    v63.i64[1] = v63.i64[0];
    *v63.i8 = vqtbl1_s8(v63, 0x703060205010400);
    v62.i64[0] = vmovl_s8(vdup_lane_s16(*v63.i8, 0)).u64[0];
    v60.i64[0] = vmovl_s8(vdup_lane_s16(*v63.i8, 1)).u64[0];
    v64 = vmovl_s8(vdup_lane_s16(*v63.i8, 2)).u64[0];
    v63.i64[0] = vmovl_s8(vdup_lane_s16(*v63.i8, 3)).u64[0];
    v65 = vsubw_s16(v42, *v62.i8);
    v66 = vsubw_s16(v42, *v60.i8);
    v67 = vsubw_s16(v42, v64);
    v68 = vsubw_s16(v42, *v63.i8);
    v369 = vmovl_s16(vceqz_s16(*v62.i8));
    v370 = vmovl_s16(vceqz_s16(*v60.i8));
    v69 = vmovl_s16(vceqz_s16(v64));
    v368 = vmovl_s16(vceqz_s16(*v63.i8));
  }

  v72.i64[0] = 0x800000008;
  v72.i64[1] = 0x800000008;
  v73 = 0uLL;
  v74 = vandq_s8(vextq_s8(vtstq_s32(v38, v72), 0, 8uLL), v42);
  v72.i64[0] = vpaddq_s32(v74, v74).u64[0];
  v75.i64[0] = v72.u32[0];
  v75.i64[1] = v72.u32[1];
  v76 = v75;
  v77 = vaddvq_s64(v75);
  v78 = v36 + v77;
  if (v77 <= 0x80 && v33 >= v78)
  {
    v80 = v36 & 0x3F;
    v81 = vaddq_s64(vdupq_n_s64(v80), vzip1q_s64(0, v76));
    v82 = (v31 + 8 * (v36 >> 6));
    v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v82, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v82->i64[0], 0), vnegq_s64(v81)));
    if (v80 + v77 >= 0x81)
    {
      v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v82[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v82[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v73);
    }

    v36 = v78;
  }

  else
  {
    v52 = 1;
  }

  v83 = v371.i8[0] & 3;
  if (v83 == 2)
  {
    v84 = v36 + 32;
    if (v33 >= v36 + 16)
    {
      v36 += 16;
    }

    else
    {
      v52 = 1;
      v84 = v36 + 16;
    }

    if (v33 >= v84)
    {
      v36 = v84;
    }

    else
    {
      v52 = 1;
    }
  }

  v85 = 0uLL;
  v86 = vextq_s8(0, v65, 8uLL);
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v36 + v90;
  if (v90 <= 0x80 && v33 >= v91)
  {
    v94 = v36 & 0x3F;
    v95 = vaddq_s64(vdupq_n_s64(v94), vzip1q_s64(0, v89));
    v96 = (v31 + 8 * (v36 >> 6));
    v93 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v95)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v95)));
    if (v94 + v90 >= 0x81)
    {
      v93 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v95)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v95))), v93);
    }

    v36 = v91;
  }

  else
  {
    v52 = 1;
    v93 = 0uLL;
  }

  v97 = vpaddq_s32(v65, v65).u64[0];
  v98.i64[0] = v97;
  v98.i64[1] = HIDWORD(v97);
  v99 = v98;
  v100 = vaddvq_s64(v98);
  v101 = v36 + v100;
  if (v100 <= 0x80 && v33 >= v101)
  {
    v103 = v36 & 0x3F;
    v104 = vaddq_s64(vdupq_n_s64(v103), vzip1q_s64(0, v99));
    v105 = (v31 + 8 * (v36 >> 6));
    v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v103 + v100 >= 0x81)
    {
      v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v85);
    }

    v36 = v101;
  }

  else
  {
    v52 = 1;
  }

  v106 = v36 + v100;
  v107 = 0uLL;
  if (v100 <= 0x80 && v33 >= v106)
  {
    v110 = v36 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v99));
    v112 = (v31 + 8 * (v36 >> 6));
    v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v100 >= 0x81)
    {
      v109 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v109);
    }

    v36 = v106;
  }

  else
  {
    v52 = 1;
    v109 = 0uLL;
  }

  v113 = v36 + v100;
  if (v100 <= 0x80 && v33 >= v113)
  {
    v115 = v36 & 0x3F;
    v116 = vaddq_s64(vdupq_n_s64(v115), vzip1q_s64(0, v99));
    v117 = (v31 + 8 * (v36 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v117, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v116)), vshlq_u64(vdupq_lane_s64(v117->i64[0], 0), vnegq_s64(v116)));
    if (v115 + v100 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v117[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v116)), vshlq_u64(vdupq_laneq_s64(v117[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v116))), v107);
    }

    v36 = v113;
  }

  else
  {
    v52 = 1;
  }

  v118 = vpaddq_s32(v66, v66).u64[0];
  v119.i64[0] = v118;
  v119.i64[1] = HIDWORD(v118);
  v120 = v119;
  v121 = vaddvq_s64(v119);
  v122 = v36 + v121;
  v123 = 0uLL;
  if (v121 <= 0x80 && v33 >= v122)
  {
    v126 = v36 & 0x3F;
    v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v120));
    v128 = (v31 + 8 * (v36 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v126 + v121 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v125);
    }

    v36 = v122;
  }

  else
  {
    v52 = 1;
    v125 = 0uLL;
  }

  v129 = v36 + v121;
  if (v121 <= 0x80 && v33 >= v129)
  {
    v131 = v36 & 0x3F;
    v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v120));
    v133 = (v31 + 8 * (v36 >> 6));
    v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
    if (v131 + v121 >= 0x81)
    {
      v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v123);
    }

    v36 = v129;
  }

  else
  {
    v52 = 1;
  }

  v134 = 0uLL;
  if (v121 > 0x80 || (v135 = v36 + v121, v33 < v36 + v121))
  {
    v52 = 1;
    v135 = v36;
    v139 = 0uLL;
  }

  else
  {
    v136 = v36 & 0x3F;
    v137 = vaddq_s64(vdupq_n_s64(v136), vzip1q_s64(0, v120));
    v138 = (v31 + 8 * (v36 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v136 + v121 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v121 > 0x80 || (v140 = v135 + v121, v33 < v135 + v121))
  {
    v143 = v65;
    v52 = 1;
    v140 = v135;
  }

  else
  {
    v141 = vaddq_s64(vdupq_n_s64(v135 & 0x3F), vzip1q_s64(0, v120));
    v142 = (v31 + 8 * (v135 >> 6));
    v134 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
    v143 = v65;
    if ((v135 & 0x3F) + v121 >= 0x81)
    {
      v134 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v134);
    }
  }

  v144 = v67;
  v145 = vpaddq_s32(v67, v67).u64[0];
  v146.i64[0] = v145;
  v146.i64[1] = HIDWORD(v145);
  v147 = v146;
  v148 = vaddvq_s64(v146);
  v149 = v148;
  v150 = 0uLL;
  if (v148 > 0x80 || (v151 = v140 + v148, v33 < v140 + v148))
  {
    v52 = 1;
    v151 = v140;
    v154 = 0uLL;
  }

  else
  {
    v152 = vaddq_s64(vdupq_n_s64(v140 & 0x3F), vzip1q_s64(0, v147));
    v153 = (v31 + 8 * (v140 >> 6));
    v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
    if ((v140 & 0x3F) + v149 >= 0x81)
    {
      v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
    }
  }

  if (v149 > 0x80 || (v155 = v151 + v149, v33 < v151 + v149))
  {
    v52 = 1;
    v155 = v151;
  }

  else
  {
    v156 = vaddq_s64(vdupq_n_s64(v151 & 0x3F), vzip1q_s64(0, v147));
    v157 = (v31 + 8 * (v151 >> 6));
    v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
    if ((v151 & 0x3F) + v149 >= 0x81)
    {
      v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v150);
    }
  }

  v158 = 0uLL;
  if (v149 > 0x80 || (v159 = v155 + v149, v33 < v155 + v149))
  {
    v52 = 1;
    v159 = v155;
    v163 = 0uLL;
  }

  else
  {
    v160 = v155 & 0x3F;
    v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v147));
    v162 = (v31 + 8 * (v155 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v160 + v149 >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
    }
  }

  if (v149 > 0x80 || (v164 = v159 + v149, v33 < v159 + v149))
  {
    v52 = 1;
    v164 = v159;
  }

  else
  {
    v165 = v159 & 0x3F;
    v166 = vaddq_s64(vdupq_n_s64(v165), vzip1q_s64(0, v147));
    v167 = (v31 + 8 * (v159 >> 6));
    v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v167, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v166)), vshlq_u64(vdupq_lane_s64(v167->i64[0], 0), vnegq_s64(v166)));
    if (v165 + v149 >= 0x81)
    {
      v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v167[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v166)), vshlq_u64(vdupq_laneq_s64(v167[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v166))), v158);
    }
  }

  v168 = vpaddq_s32(v68, v68).u64[0];
  v169.i64[0] = v168;
  v169.i64[1] = HIDWORD(v168);
  v170 = v169;
  v171 = vaddvq_s64(v169);
  v172 = v171;
  v173 = 0uLL;
  if (v171 > 0x80 || (v174 = v164 + v171, v33 < v164 + v171))
  {
    v52 = 1;
    v174 = v164;
    v178 = 0uLL;
  }

  else
  {
    v175 = v164 & 0x3F;
    v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v170));
    v177 = (v31 + 8 * (v164 >> 6));
    v178 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
    if (v175 + v172 >= 0x81)
    {
      v178 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v178);
    }
  }

  if (v172 > 0x80 || (v179 = v174 + v172, v33 < v174 + v172))
  {
    v52 = 1;
    v179 = v174;
  }

  else
  {
    v180 = v174 & 0x3F;
    v181 = vaddq_s64(vdupq_n_s64(v180), vzip1q_s64(0, v170));
    v182 = (v31 + 8 * (v174 >> 6));
    v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v182, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v181)), vshlq_u64(vdupq_lane_s64(v182->i64[0], 0), vnegq_s64(v181)));
    if (v180 + v172 >= 0x81)
    {
      v173 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v182[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v181)), vshlq_u64(vdupq_laneq_s64(v182[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v181))), v173);
    }
  }

  v183 = 0uLL;
  if (v172 > 0x80 || (v184 = v179 + v172, v33 < v179 + v172))
  {
    v52 = 1;
    v184 = v179;
  }

  else
  {
    v185 = v179 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v170));
    v187 = (v31 + 8 * (v179 >> 6));
    v183 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v172 >= 0x81)
    {
      v183 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v183);
    }
  }

  if (v172 > 0x80 || v33 < v184 + v172)
  {
    goto LABEL_140;
  }

  v188 = v30 + 20;
  v189 = vzip1_s32(*v68.i8, *&vextq_s8(v68, v68, 8uLL));
  v190.i64[0] = v189.u32[0];
  v190.i64[1] = v189.u32[1];
  v191 = (v31 + ((v188 >> 3) & 8));
  v192 = vnegq_s64(v190);
  v193.i64[0] = 0x2000000020;
  v193.i64[1] = 0x2000000020;
  v194.i64[0] = 0x1F0000001FLL;
  v194.i64[1] = 0x1F0000001FLL;
  v195 = vsubq_s32(v193, v68);
  v196 = vaddq_s32(v68, v194);
  v197 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v170));
  v198 = (v31 + 8 * (v184 >> 6));
  v199 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v198, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v197)), vshlq_u64(vdupq_lane_s64(v198->i64[0], 0), vnegq_s64(v197)));
  if ((v184 & 0x3F) + v172 < 0x81)
  {
    if ((v52 & 1) == 0)
    {
      v200 = v69;
      v204 = vshlq_u64(v199, v192);
      v203 = vuzp1q_s32(vzip1q_s64(v199, v204), vzip2q_s64(v199, v204));
      goto LABEL_138;
    }

LABEL_140:
    v4 = 0;
    *&v8.f64[0] = 0xFFFFFFFFLL;
    *&v8.f64[1] = 0xFFFFFFFFLL;
    *a1 = v8;
    a1[1] = v8;
    a1[2] = v8;
    a1[3] = v8;
    v206 = (a1 + a2);
    *v206 = v8;
    v206[1] = v8;
    v206[2] = v8;
    v206[3] = v8;
    v207 = (a1 + 2 * a2);
    *v207 = v8;
    v207[1] = v8;
    v207[2] = v8;
    v207[3] = v8;
    v11 = (a1 + 2 * a2 + a2);
    *v11 = v8;
    v11[1] = v8;
    goto LABEL_141;
  }

  if (v52)
  {
    goto LABEL_140;
  }

  v200 = v69;
  v201 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v198[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v197)), vshlq_u64(vdupq_laneq_s64(v198[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v197))), v199);
  v202 = vshlq_u64(v201, v192);
  v203 = vuzp1q_s32(vzip1q_s64(v201, v202), vzip2q_s64(v201, v202));
LABEL_138:
  v205 = vshlq_s32(vshlq_s32(v203, v195), v196);
  v4 = a4 + 1;
  if (v33 + 8 * v4 - (v184 + v172) - 2048 >= 9 || v83 == 2)
  {
    goto LABEL_140;
  }

  v348 = v38;
  v366 = v200;
  v367 = v205;
  v209 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
  v210.i64[0] = v209.u32[0];
  v210.i64[1] = v209.u32[1];
  v211 = vshlq_u64(v73, vnegq_s64(v210));
  v212 = vzip2q_s64(v73, v211);
  v362 = vzip1q_s64(v73, v211);
  v364 = v74;
  v213 = v86;
  *v211.i8 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
  v210.i64[0] = v211.u32[0];
  v210.i64[1] = v211.u32[1];
  v214 = vshlq_u64(v93, vnegq_s64(v210));
  v358 = vzip1q_s64(v93, v214);
  v360 = vzip2q_s64(v93, v214);
  v365 = v40;
  v215 = v143;
  v216 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
  v210.i64[0] = v216.u32[0];
  v210.i64[1] = v216.u32[1];
  v217 = vnegq_s64(v210);
  v218 = vshlq_u64(v85, v217);
  v356 = vzip1q_s64(v85, v218);
  v357 = vzip2q_s64(v85, v218);
  v219 = vshlq_u64(v109, v217);
  v354 = vzip1q_s64(v109, v219);
  v355 = vzip2q_s64(v109, v219);
  v220 = vshlq_u64(v107, v217);
  v352 = vzip1q_s64(v107, v220);
  v353 = vzip2q_s64(v107, v220);
  v221 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
  v210.i64[0] = v221.u32[0];
  v210.i64[1] = v221.u32[1];
  v222 = vnegq_s64(v210);
  v223 = vshlq_u64(v125, v222);
  v350 = vzip1q_s64(v125, v223);
  v351 = vzip2q_s64(v125, v223);
  v224 = vshlq_u64(v123, v222);
  v349 = vzip2q_s64(v123, v224);
  v225 = vzip1q_s64(v123, v224);
  v226 = vshlq_u64(v139, v222);
  v227 = vzip2q_s64(v139, v226);
  v228 = vzip1q_s64(v139, v226);
  v229 = vshlq_u64(v134, v222);
  v230 = vzip2q_s64(v134, v229);
  v231 = vzip1q_s64(v134, v229);
  v232 = v144;
  v233 = vzip1_s32(*v144.i8, *&vextq_s8(v144, v144, 8uLL));
  v210.i64[0] = v233.u32[0];
  v210.i64[1] = v233.u32[1];
  v234 = vnegq_s64(v210);
  v235 = vshlq_u64(v154, v234);
  v236 = vzip2q_s64(v154, v235);
  v237 = vzip1q_s64(v154, v235);
  v238 = vshlq_u64(v150, v234);
  v239 = vzip2q_s64(v150, v238);
  v240 = vzip1q_s64(v150, v238);
  v241 = vshlq_u64(v163, v234);
  v242 = vzip2q_s64(v163, v241);
  v243 = vzip1q_s64(v163, v241);
  v244 = vshlq_u64(v158, v234);
  v245 = vzip2q_s64(v158, v244);
  v246 = vzip1q_s64(v158, v244);
  v247 = vshlq_u64(v178, v192);
  v248 = v66;
  v249 = vzip2q_s64(v178, v247);
  v250 = vzip1q_s64(v178, v247);
  v251 = vshlq_u64(v173, v192);
  v252 = vzip2q_s64(v173, v251);
  v253 = vzip1q_s64(v173, v251);
  v254 = vuzp1q_s32(v362, v212);
  v255 = vuzp1q_s32(v358, v360);
  v256 = vuzp1q_s32(v225, v349);
  v257 = vuzp1q_s32(v228, v227);
  v258 = vuzp1q_s32(v231, v230);
  v361 = vuzp1q_s32(v240, v239);
  v363 = vuzp1q_s32(v237, v236);
  v359 = vuzp1q_s32(v243, v242);
  v259 = vuzp1q_s32(v246, v245);
  v260 = vuzp1q_s32(v250, v249);
  v236.i64[0] = 0x2000000020;
  v236.i64[1] = 0x2000000020;
  v225.i64[0] = 0x1F0000001FLL;
  v225.i64[1] = 0x1F0000001FLL;
  v228.i64[0] = 0x2000000020;
  v228.i64[1] = 0x2000000020;
  v261 = vshlq_s32(v255, vsubq_s32(v228, v213));
  v262 = vsubq_s32(v228, v215);
  v246.i64[0] = 0x1F0000001FLL;
  v246.i64[1] = 0x1F0000001FLL;
  v263 = vaddq_s32(v213, v246);
  v264 = vaddq_s32(v215, v246);
  v246.i64[0] = 0x2000000020;
  v246.i64[1] = 0x2000000020;
  v265 = vsubq_s32(v246, v248);
  v240.i64[0] = 0x1F0000001FLL;
  v240.i64[1] = 0x1F0000001FLL;
  v266 = vaddq_s32(v248, v240);
  v267 = vshlq_s32(vuzp1q_s32(v350, v351), v265);
  v268 = vshlq_s32(v256, v265);
  v269 = vshlq_s32(v257, v265);
  v270 = vshlq_s32(v258, v265);
  v265.i64[0] = 0x2000000020;
  v265.i64[1] = 0x2000000020;
  v271 = vsubq_s32(v265, v232);
  v243.i64[0] = 0x1F0000001FLL;
  v243.i64[1] = 0x1F0000001FLL;
  v272 = vaddq_s32(v232, v243);
  v273 = vshlq_s32(v363, v271);
  v274 = vshlq_s32(v361, v271);
  v275 = vshlq_s32(v359, v271);
  v276 = vshlq_s32(v259, v271);
  v277 = vshlq_s32(vshlq_s32(v254, vsubq_s32(v236, v364)), vaddq_s32(v364, v225));
  v278 = vshlq_s32(v261, v263);
  v279 = vshlq_s32(vshlq_s32(vuzp1q_s32(v356, v357), v262), v264);
  v280 = vshlq_s32(vshlq_s32(vuzp1q_s32(v354, v355), v262), v264);
  v281 = vshlq_s32(vshlq_s32(vuzp1q_s32(v352, v353), v262), v264);
  v282 = vshlq_s32(v267, v266);
  v283 = vshlq_s32(v268, v266);
  v284 = vshlq_s32(v269, v266);
  v285 = vshlq_s32(v270, v266);
  v286 = vshlq_s32(v273, v272);
  v287 = vshlq_s32(v276, v272);
  v288 = vshlq_u64(v183, v192);
  v289 = vshlq_s32(vshlq_s32(v260, v195), v196);
  v290 = vshlq_s32(vshlq_s32(vuzp1q_s32(v253, v252), v195), v196);
  v291 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v183, v288), vzip2q_s64(v183, v288)), v195), v196);
  v292 = vaddq_s32(vandq_s8(v277, v369), v278);
  v293 = vdupq_lane_s64(v277.i64[0], 0);
  v294 = vandq_s8(v293, v370);
  v295 = vsubq_s32(v282, v294);
  v296 = vsubq_s32(v283, v294);
  v297 = vsubq_s32(v284, v294);
  v298 = vsubq_s32(v285, v294);
  v299 = vandq_s8(v293, v366);
  v300 = vsubq_s32(v286, v299);
  v301 = vsubq_s32(vshlq_s32(v274, v272), v299);
  v302 = vsubq_s32(vshlq_s32(v275, v272), v299);
  v303 = vandq_s8(v293, v369);
  v304 = vsubq_s32(v287, v299);
  v305 = vandq_s8(v293, v368);
  v306 = vsubq_s32(v289, v305);
  v307 = vsubq_s32(v290, v305);
  v308 = vsubq_s32(v291, v305);
  v309 = vsubq_s32(v367, v305);
  v310.i64[0] = 0x100000001;
  v310.i64[1] = 0x100000001;
  v311 = vsubq_s32(v279, v303);
  v312 = vsubq_s32(v280, v303);
  v313 = vuzp1_s16(v371, v371);
  v314 = vsubq_s32(v292, v303);
  v315 = vsubq_s32(v281, v303);
  v316 = vdupq_n_s64(((2 * v191[1]) << ~v188) | (*v191 >> v188));
  if (vaddvq_s32(vceqq_s32(v365, v310)))
  {
    v317 = vnegq_s32(vandq_s8(v348, v310));
    v318.i64[0] = v315.i64[0];
    v319.i64[1] = v314.i64[1];
    v318.i64[1] = v314.i64[0];
    v319.i64[0] = v315.i64[1];
    v320 = vbslq_s8(v317, v319, v314);
    v321 = vbslq_s8(v317, v318, v315);
    v322.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v322.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v323 = vandq_s8(vqtbl4q_s8(*(&v311 - 1), v322), v317);
    v372 = v313;
    v373.val[0] = vaddq_s32(v320, vandq_s8(vqtbl4q_s8(*(&v311 - 1), xmmword_29D2F10B0), v317));
    v373.val[1] = vaddq_s32(v311, vandq_s8(vqtbl4q_s8(*(&v311 - 1), xmmword_29D2F10C0), v317));
    v373.val[2] = vaddq_s32(v312, v323);
    v373.val[3] = vaddq_s32(v321, v323);
    v324 = vandq_s8(vqtbl4q_s8(v373, v322), v317);
    v314 = vaddq_s32(v373.val[0], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F10D0), v317));
    v311 = vaddq_s32(v373.val[1], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F10E0), v317));
    v312 = vaddq_s32(v373.val[2], v324);
    v315 = vaddq_s32(v373.val[3], v324);
    v374.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v295.i8, xmmword_29D2F10B0), v317), v295);
    v374.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v295.i8, xmmword_29D2F10F0), v317), v296);
    v374.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v295.i8, v322), v317), v297);
    v374.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v295.i8, xmmword_29D2F1100), v317), v298);
    v325 = vandq_s8(vqtbl4q_s8(v374, xmmword_29D2F10D0), v317);
    v373.val[0] = vandq_s8(vqtbl4q_s8(v374, v322), v317);
    v295 = vaddq_s32(v325, v374.val[0]);
    v296 = vaddq_s32(v374.val[1], v325);
    v297 = vaddq_s32(v374.val[2], v373.val[0]);
    v298 = vaddq_s32(v374.val[3], v373.val[0]);
    v373.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F0EB0), v317), v300);
    v373.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F0FB0), v317), v301);
    v373.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10B0), v317), v302);
    v373.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10C0), v317), v304);
    v374.val[2] = vandq_s8(vqtbl4q_s8(v373, v322), v317);
    v300 = vaddq_s32(v373.val[0], v374.val[2]);
    v301 = vaddq_s32(v373.val[1], v374.val[2]);
    v302 = vaddq_s32(v373.val[2], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F0FE0), v317));
    v304 = vaddq_s32(v373.val[3], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F1110), v317));
    v326 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v306.i8, xmmword_29D2F0EB0), v317), v306);
    v373.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v306.i8, xmmword_29D2F1120), v317), v307);
    v373.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v306.i8, xmmword_29D2F10B0), v317), v308);
    v373.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v306.i8, xmmword_29D2F10C0), v317), v309);
    v327 = vandq_s8(vqtbl4q_s8(v373, v322), v317);
    v306 = vaddq_s32(v326, v327);
    v307 = vaddq_s32(v373.val[0], v327);
    v308 = vaddq_s32(v373.val[1], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F0FE0), v317));
    v309 = vaddq_s32(v373.val[2], vandq_s8(vqtbl4q_s8(v373, xmmword_29D2F1130), v317));
    v313 = v372;
  }

  v328 = vaddq_s32(v316, v314);
  v329 = vaddq_s32(v311, v316);
  v330 = vaddq_s32(v312, v316);
  v331 = vaddq_s32(v315, v316);
  v332 = vaddq_s32(v295, v316);
  v333 = vaddq_s32(v296, v316);
  v334 = vaddq_s32(v297, v316);
  v335 = vaddq_s32(v298, v316);
  v336 = vaddq_s32(v300, v316);
  v337 = vaddq_s32(v301, v316);
  v338 = vaddq_s32(v302, v316);
  v339 = vaddq_s32(v304, v316);
  v340 = vaddq_s32(v306, v316);
  v341 = vaddq_s32(v307, v316);
  v342 = vaddq_s32(v308, v316);
  v343 = vaddq_s32(v309, v316);
  v344 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v313 & 0xFF00FF00FF00FFLL)));
  v345 = (a1 + a2);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v328, xmmword_29D2F11B0), v344), v328);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v330, xmmword_29D2F11B0), v344), v330);
  a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v344), v336);
  a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v338, xmmword_29D2F11B0), v344), v338);
  v346 = (a1 + 2 * a2);
  *v345 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v329, xmmword_29D2F11B0), v344), v329);
  v345[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v344), v331);
  v345[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v344), v337);
  v345[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v339, xmmword_29D2F11B0), v344), v339);
  *v346 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v344), v332);
  v346[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v344), v334);
  v346[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v340, xmmword_29D2F11B0), v344), v340);
  v346[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v342, xmmword_29D2F11B0), v344), v342);
  v347 = (v346 + a2);
  *v347 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v344), v333);
  v347[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v344), v335);
  v347[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v341, xmmword_29D2F11B0), v344), v341);
  v347[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v343, xmmword_29D2F11B0), v344), v343);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 100, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v8 = *v6;
  v9 = v6[1];
  v10 = v6[2];
  v11 = v6[3];
  v7 = (v6 + a4);
  v12 = v11;
  v13 = v10;
  v577 = vdupq_lane_s64(a3->i64[0], 0);
  v569 = *(&a3[1] + a4);
  v579 = vsubq_s32(*a3, v577);
  v580 = vsubq_s32(*(a3 + a4), v577);
  v581 = vsubq_s32(v569, v577);
  v582 = vsubq_s32(a3[1], v577);
  v14 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v579, v580), v582), v581), xmmword_29D2F11C0);
  v15 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v579, v580), v582), v581), xmmword_29D2F11C0);
  v16 = vpmaxq_s32(v14, v14);
  v17 = vpminq_s32(v15, v15);
  v18 = vzip1q_s32(v16, v17);
  v19.i64[0] = 0x2000000020;
  v19.i64[1] = 0x2000000020;
  v20 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v18)), vceqzq_s32(v18));
  v21.i64[0] = 0x8000000080000000;
  v21.i64[1] = 0x8000000080000000;
  v22 = vmaxq_s32(v16, v21);
  v23 = vminq_s32(v17, v21);
  v24 = vsubq_s32(*v7, v577);
  v566 = v8;
  v567 = *v7;
  v568 = v9;
  v25 = vsubq_s32(v9, v577);
  v26 = vsubq_s32(v8, v577);
  v578 = vsubq_s32(v7[1], v577);
  v27 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v26, v24), v25), v578), xmmword_29D2F11C0);
  v28 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v26, v24), v25), v578), xmmword_29D2F11C0);
  v29 = vpmaxq_s32(v27, v27);
  v30 = vpminq_s32(v28, v28);
  v31 = vmaxq_s32(v22, v29);
  v32 = vminq_s32(v23, v30);
  v33 = vzip1q_s32(v29, v30);
  v34 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v33)), vceqzq_s32(v33));
  v35 = vsubq_s32(a3[2], v577);
  v36 = vsubq_s32(*(&a3[2] + a4), v577);
  v573 = a3[2];
  v574 = *(&a3[2] + a4);
  v575 = a3[3];
  v37 = vsubq_s32(v575, v577);
  v565 = *(&a3[3] + a4);
  v38 = vsubq_s32(v565, v577);
  v39 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v35, v36), v37), v38), xmmword_29D2F11C0);
  v40 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v35, v36), v37), v38), xmmword_29D2F11C0);
  v41 = vpmaxq_s32(v39, v39);
  v42 = vpminq_s32(v40, v40);
  v43 = vmaxq_s32(v31, v41);
  v44 = vminq_s32(v32, v42);
  v45 = vzip1q_s32(v41, v42);
  v46 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v45)), vceqzq_s32(v45));
  v47 = vsubq_s32(v13, v577);
  v570 = v13;
  v571 = v7[2];
  v572 = v12;
  v563 = v7[1];
  v564 = v7[3];
  v583 = vsubq_s32(v571, v577);
  v584 = vsubq_s32(v12, v577);
  v585 = vsubq_s32(v564, v577);
  v48 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v47, v583), v584), v585), xmmword_29D2F11C0);
  v49 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v47, v583), v584), v585), xmmword_29D2F11C0);
  v50 = vpmaxq_s32(v48, v48);
  v51 = vpminq_s32(v49, v49);
  v52 = vmaxq_s32(v43, v50);
  v53 = vminq_s32(v44, v51);
  v54 = vzip1q_s32(v50, v51);
  v55 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v54)), vceqzq_s32(v54));
  v56 = vpmaxq_s32(v20, v20);
  v57 = vpmaxq_s32(v34, v34);
  v58 = vpmaxq_s32(v46, v46);
  v59 = vpmaxq_s32(v55, v55);
  v60 = vmaxq_s32(vmaxq_s32(v56, v57), vmaxq_s32(v58, v59));
  v61 = vclzq_s32(vsubq_s32(v52, v53));
  v62 = vsubq_s32(v19, v61);
  v63 = vminq_s32(v62, v60);
  if (vmaxvq_s32(v63))
  {
    v64 = v36;
    v561 = vcgtq_s32(v60, v62);
    v65.i64[0] = 0x800000008;
    v65.i64[1] = 0x800000008;
    v66.i64[0] = 0x300000003;
    v66.i64[1] = 0x300000003;
    v67 = v25;
    v68.i64[0] = 0xF0000000FLL;
    v68.i64[1] = 0xF0000000FLL;
    v553 = vmaxq_s32(vminq_s32(vsubq_s32(v63, v56), v68), 0);
    v555 = vmaxq_s32(vminq_s32(vsubq_s32(v63, v58), v68), 0);
    v557 = vmaxq_s32(vminq_s32(vsubq_s32(v63, v57), v68), 0);
    v559 = vmaxq_s32(vminq_s32(vsubq_s32(v63, v59), v68), 0);
    v69.i64[0] = 0x400000004;
    v69.i64[1] = 0x400000004;
    v586 = vorrq_s8(vbicq_s8(v69, vceqq_s32(vaddq_s32(v559, v555), vnegq_s32(vaddq_s32(v553, v557)))), vorrq_s8(vandq_s8(vceqzq_s32(v63), v66), vandq_s8(v561, v65)));
    v549 = v61;
    v551 = v53;
    v70 = v26;
    v576 = v24;
    v71 = vsubq_s32(v24, vqtbl1q_s8(v24, xmmword_29D2F11B0));
    v72 = vsubq_s32(v35, vqtbl1q_s8(v35, xmmword_29D2F11B0));
    v73 = vsubq_s32(v36, vqtbl1q_s8(v36, xmmword_29D2F11B0));
    v74 = vsubq_s32(v37, vqtbl1q_s8(v37, xmmword_29D2F11B0));
    v75 = vsubq_s32(v38, vqtbl1q_s8(v38, xmmword_29D2F11B0));
    v546 = vsubq_s32(v580, vqtbl1q_s8(v580, xmmword_29D2F11B0));
    v548 = vsubq_s32(v579, vqtbl1q_s8(v579, xmmword_29D2F11B0));
    v543 = vsubq_s32(v581, vqtbl1q_s8(v581, xmmword_29D2F11B0));
    v544 = vsubq_s32(v582, vqtbl1q_s8(v582, xmmword_29D2F11B0));
    v76 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v548, v546), v544), v543), xmmword_29D2F11C0);
    v77 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v548, v546), v544), v543), xmmword_29D2F11C0);
    v78 = vpmaxq_s32(v76, v76);
    v79 = vpminq_s32(v77, v77);
    v80.i64[0] = 0x8000000080000000;
    v80.i64[1] = 0x8000000080000000;
    v81 = vmaxq_s32(v78, v80);
    v82.i64[0] = 0x8000000080000000;
    v82.i64[1] = 0x8000000080000000;
    v83 = vminq_s32(v79, v82);
    v84 = vzip1q_s32(v78, v79);
    v85 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v84)), vceqzq_s32(v84));
    v539 = v71;
    v541 = vsubq_s32(v26, vqtbl1q_s8(v26, xmmword_29D2F11B0));
    v535 = vsubq_s32(v578, vqtbl1q_s8(v578, xmmword_29D2F11B0));
    v537 = vsubq_s32(v67, vqtbl1q_s8(v67, xmmword_29D2F11B0));
    v86 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v541, v71), v537), v535), xmmword_29D2F11C0);
    v87 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v541, v71), v537), v535), xmmword_29D2F11C0);
    v88 = vpmaxq_s32(v86, v86);
    v89 = vpminq_s32(v87, v87);
    v90 = vmaxq_s32(v81, v88);
    v91 = vminq_s32(v83, v89);
    v92 = vzip1q_s32(v88, v89);
    v93 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v92)), vceqzq_s32(v92));
    v94 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v72, v73), v74), v75);
    v531 = v73;
    v533 = v72;
    v95 = vminq_s32(v72, v73);
    v96 = v74;
    v97 = vqtbl1q_s8(v94, xmmword_29D2F11C0);
    v98 = vqtbl1q_s8(vminq_s32(vminq_s32(v95, v74), v75), xmmword_29D2F11C0);
    v99 = vpmaxq_s32(v97, v97);
    v100 = vpminq_s32(v98, v98);
    v101 = vmaxq_s32(v90, v99);
    v102 = vzip1q_s32(v99, v100);
    v103 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v102)), vceqzq_s32(v102));
    v104 = vsubq_s32(v47, vqtbl1q_s8(v47, xmmword_29D2F11B0));
    v105 = vsubq_s32(v583, vqtbl1q_s8(v583, xmmword_29D2F11B0));
    v527 = vsubq_s32(v585, vqtbl1q_s8(v585, xmmword_29D2F11B0));
    v529 = vsubq_s32(v584, vqtbl1q_s8(v584, xmmword_29D2F11B0));
    v106 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v104, v105), v529), v527), xmmword_29D2F11C0);
    v107 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v104, v105), v529), v527), xmmword_29D2F11C0);
    v108 = vpmaxq_s32(v106, v106);
    v109 = vpminq_s32(v107, v107);
    v110 = vmaxq_s32(v101, v108);
    v111 = vminq_s32(vminq_s32(v91, v100), v109);
    v112 = vzip1q_s32(v108, v109);
    v113 = vbicq_s8(vsubq_s32(v19, vclsq_s32(v112)), vceqzq_s32(v112));
    v114 = vpmaxq_s32(v85, v85);
    v115 = vpmaxq_s32(v93, v93);
    v116 = vpmaxq_s32(v103, v103);
    v117 = vpmaxq_s32(v113, v113);
    v118 = vmaxq_s32(vmaxq_s32(v114, v115), vmaxq_s32(v116, v117));
    v524 = vclzq_s32(vsubq_s32(v110, v111));
    v119 = vsubq_s32(v19, v524);
    v120 = vcgtq_s32(v118, v119);
    v121 = vminq_s32(v119, v118);
    v118.i64[0] = 0x1000000010;
    v118.i64[1] = 0x1000000010;
    v110.i64[0] = 0x1800000018;
    v110.i64[1] = 0x1800000018;
    v122 = v120;
    v123 = vbslq_s8(v120, v110, v118);
    v120.i64[0] = 0x300000003;
    v120.i64[1] = 0x300000003;
    v124 = vorrq_s8(vandq_s8(vceqzq_s32(v121), v120), v123);
    v125 = vmaxq_s32(vminq_s32(vsubq_s32(v121, v114), v68), 0);
    v126 = vmaxq_s32(vminq_s32(vsubq_s32(v121, v115), v68), 0);
    v127 = vmaxq_s32(vminq_s32(vsubq_s32(v121, v116), v68), 0);
    v128 = vmaxq_s32(vminq_s32(vsubq_s32(v121, v117), v68), 0);
    v120.i64[0] = 0x400000004;
    v120.i64[1] = 0x400000004;
    v129 = vorrq_s8(vbicq_s8(v120, vceqq_s32(vaddq_s32(v128, v127), vnegq_s32(vaddq_s32(v125, v126)))), v124);
    v522 = v129;
    *v129.i8 = vqmovn_u32(v129);
    v117.i64[0] = 0x8000800080008;
    v117.i64[1] = 0x8000800080008;
    *v120.i8 = vqmovn_u32(v121);
    v68.i64[0] = 0x10001000100010;
    v68.i64[1] = 0x10001000100010;
    v100.i64[0] = 0x3000300030003;
    v100.i64[1] = 0x3000300030003;
    v130.i64[0] = 0x2000200020002;
    v130.i64[1] = 0x2000200020002;
    v131.i64[0] = 0x20002000200020;
    v131.i64[1] = 0x20002000200020;
    v132 = vaddq_s16(vaddq_s16(vbicq_s8(v120, vceqzq_s16(vandq_s8(v129, v117))), vandq_s8(vshlq_n_s16(v129, 2uLL), v68)), vandq_s8(vceqq_s16(vandq_s8(v129, v100), v130), v131));
    v133 = vsubq_s32(v121, v125);
    *v125.i8 = vqmovn_u32(v133);
    v120.i64[0] = 0x7000700070007;
    v120.i64[1] = 0x7000700070007;
    v134 = vmlaq_s16(v132, v125, v120);
    v125.i64[1] = v586.i64[1];
    *v125.i8 = vqmovn_u32(v586);
    v135 = v35;
    v136 = v47;
    *v47.i8 = vqmovn_u32(v63);
    v137 = vaddq_s16(vaddq_s16(vbicq_s8(v47, vceqzq_s16(vandq_s8(v125, v117))), vandq_s8(vshlq_n_s16(v125, 2uLL), v68)), vandq_s8(vceqq_s16(vandq_s8(v125, v100), v130), v131));
    v117.i64[1] = v553.i64[1];
    v138 = vsubq_s32(v63, v553);
    *v117.i8 = vqmovn_u32(v138);
    v139 = vmlaq_s16(v137, v117, v120);
    v117.i64[0] = 0x1F0000001FLL;
    v117.i64[1] = 0x1F0000001FLL;
    v120.i64[0] = -1;
    v120.i64[1] = -1;
    v140 = vandq_s8(vsubq_s32(vshlq_s32(v120, vsubq_s32(v117, v549)), v551), v561);
    v141 = vsubq_s32(v121, v126);
    v142 = vsubq_s32(v121, v127);
    v143 = vsubq_s32(v121, v128);
    v144 = vaddq_s32(vaddq_s32(v142, v141), v143);
    *v144.i8 = vqmovn_u32(v144);
    v145 = vaddq_s16(v134, vshlq_n_s16(v144, 3uLL));
    v146 = vsubq_s32(v63, v557);
    v147 = vsubq_s32(v63, v555);
    v148 = vsubq_s32(v63, v559);
    v149 = vaddq_s32(vaddq_s32(v147, v146), v148);
    *v149.i8 = vqmovn_u32(v149);
    v150 = vshlq_n_s16(v149, 3uLL);
    v151 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v139, v150), v145)).i64[0], 0);
    v152 = vaddvq_s32(v151);
    v154 = a5 < 4 || a6 < 2;
    if (v152)
    {
      v155.i64[0] = 0x1F0000001FLL;
      v155.i64[1] = 0x1F0000001FLL;
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v157 = vcltzq_s32(vshlq_n_s32(v151, 0x1FuLL));
      v579 = vbslq_s8(v157, v548, v579);
      v580 = vbslq_s8(v157, v546, v580);
      v582 = vbslq_s8(v157, v544, v582);
      v581 = vbslq_s8(v157, v543, v581);
      v576 = vbslq_s8(v157, v539, v576);
      v578 = vbslq_s8(v157, v535, v578);
      v552 = vbslq_s8(v157, v541, v70);
      v554 = vbslq_s8(v157, v533, v135);
      v556 = vbslq_s8(v157, v531, v64);
      v558 = vbslq_s8(v157, v96, v37);
      v560 = vbslq_s8(v157, v75, v38);
      v562 = vbslq_s8(v157, v537, v67);
      v158 = vbslq_s8(v157, v104, v136);
      v583 = vbslq_s8(v157, v105, v583);
      v584 = vbslq_s8(v157, v529, v584);
      v585 = vbslq_s8(v157, v527, v585);
      v138 = vbslq_s8(v157, v133, v138);
      v159 = vbslq_s8(v157, v141, v146);
      v147 = vbslq_s8(v157, v142, v147);
      v148 = vbslq_s8(v157, v143, v148);
      v140 = vbslq_s8(v157, vandq_s8(vsubq_s32(vshlq_s32(v156, vsubq_s32(v155, v524)), v111), v122), v140);
      v160 = vbslq_s8(v157, v121, v63);
      v586 = vbslq_s8(v157, v522, v586);
      v150 = vsubq_s32(v577, vandq_s8(vqtbl1q_s8(v577, xmmword_29D2F11B0), v157));
      v577 = v150;
    }

    else
    {
      v552 = v70;
      v554 = v135;
      v556 = v64;
      v558 = v37;
      v560 = v38;
      v562 = v67;
      v158 = v136;
      v160 = v63;
      v159 = v146;
    }

    v163 = *a3;
    v164 = *(a3 + a4);
    v165 = a3[1];
    v166 = *(&a3[1] + a4);
    if (v154)
    {
      v168 = v558;
      v167 = v560;
      v169 = v554;
      v170 = v556;
      v171 = v578;
      v172 = v552;
      v173 = v580;
      v174 = v581;
    }

    else
    {
      v547 = v140;
      v175 = vqtbl4q_s8(*v163.i8, xmmword_29D2F1160);
      v188 = vsubq_s32(*a3, vqtbl4q_s8(*v163.i8, xmmword_29D2F10B0));
      v550 = vsubq_s32(*(a3 + a4), vqtbl4q_s8(*v163.i8, xmmword_29D2F10C0));
      v540 = vsubq_s32(a3[1], v175);
      v176 = vsubq_s32(v569, v175);
      v587.val[0] = v566;
      v587.val[1] = v567;
      v587.val[2] = v568;
      v587.val[3].i64[0] = v563.i64[0];
      v587.val[3].i64[1] = *(&a3[1].i64[1] + a4);
      v536 = v148;
      v177 = vqtbl4q_s8(v587, xmmword_29D2F1100);
      v538 = vsubq_s32(v566, vqtbl4q_s8(v587, xmmword_29D2F10B0));
      v178 = vsubq_s32(v567, vqtbl4q_s8(v587, xmmword_29D2F10F0));
      v179 = vsubq_s32(v568, vqtbl4q_s8(v587, xmmword_29D2F1160));
      v587.val[0] = a3[2];
      v587.val[1] = *(&a3[2] + a4);
      v587.val[2] = a3[3];
      v545 = v138;
      v542 = v160;
      v587.val[3].i64[0] = *(a3[3].i64 + a4);
      v180 = v147;
      v181 = vqtbl4q_s8(v587, xmmword_29D2F10C0);
      v182 = vsubq_s32(v573, vqtbl4q_s8(v587, xmmword_29D2F1170));
      v183 = vsubq_s32(v574, vqtbl4q_s8(v587, xmmword_29D2F1180));
      v587.val[0] = vsubq_s32(v575, vqtbl4q_s8(v587, xmmword_29D2F10B0));
      v587.val[1] = vsubq_s32(v565, v181);
      v588.val[0] = v570;
      v588.val[1] = v571;
      v588.val[2] = v572;
      v588.val[3].i64[0] = v564.i64[0];
      v588.val[3].i64[1] = v587.val[3].i64[1];
      v184 = vqtbl4q_s8(v588, xmmword_29D2F10C0);
      v185 = vsubq_s32(v570, vqtbl4q_s8(v588, xmmword_29D2F1170));
      v587.val[2] = vsubq_s32(v571, vqtbl4q_s8(v588, xmmword_29D2F1120));
      v186 = vsubq_s32(v572, vqtbl4q_s8(v588, xmmword_29D2F10B0));
      v588.val[2] = v180;
      v138 = v545;
      v187.i64[0] = v176.i64[0];
      v187.i64[1] = v188.i64[0];
      v188.i64[0] = v176.i64[1];
      v189 = vsubq_s32(v564, v184);
      v190 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v188, v550), v540), v187), xmmword_29D2F11C0);
      v191 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v188, v550), v540), v187), xmmword_29D2F11C0);
      v192 = vpmaxq_s32(v190, v190);
      v193 = vpminq_s32(v191, v191);
      v194.i64[0] = 0x8000000080000000;
      v194.i64[1] = 0x8000000080000000;
      v195 = vmaxq_s32(v192, v194);
      v175.i64[0] = 0x8000000080000000;
      v175.i64[1] = 0x8000000080000000;
      v196 = vminq_s32(v193, v175);
      v197 = vzip1q_s32(v192, v193);
      v193.i64[0] = 0x2000000020;
      v193.i64[1] = 0x2000000020;
      v198 = vbicq_s8(vsubq_s32(v193, vclsq_s32(v197)), vceqzq_s32(v197));
      v199 = vpmaxq_s32(v198, v198);
      v530 = v178;
      v532 = vsubq_s32(v563, v177);
      v534 = v179;
      v200 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v538, v178), v179), v532), xmmword_29D2F11C0);
      v201 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v538, v178), v179), v532), xmmword_29D2F11C0);
      v202 = vpmaxq_s32(v200, v200);
      v203 = vpminq_s32(v201, v201);
      v204 = vmaxq_s32(v195, v202);
      v205 = vminq_s32(v196, v203);
      v206 = vzip1q_s32(v202, v203);
      v207 = vbicq_s8(vsubq_s32(v193, vclsq_s32(v206)), vceqzq_s32(v206));
      v208 = vpmaxq_s32(v207, v207);
      v160 = v542;
      v523 = v182;
      v525 = v587.val[1];
      v526 = v587.val[0];
      v528 = v183;
      v209 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v182, v183), v587.val[0]), v587.val[1]), xmmword_29D2F11C0);
      v210 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v182, v183), v587.val[0]), v587.val[1]), xmmword_29D2F11C0);
      v211 = vpmaxq_s32(v209, v209);
      v212 = vpminq_s32(v210, v210);
      v213 = vmaxq_s32(v204, v211);
      v214 = vminq_s32(v205, v212);
      v215 = vzip1q_s32(v211, v212);
      v216 = vbicq_s8(vsubq_s32(v193, vclsq_s32(v215)), vceqzq_s32(v215));
      v217 = vpmaxq_s32(v216, v216);
      v520 = v186;
      v521 = v587.val[2];
      v218 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v185, v587.val[2]), v186), v189), xmmword_29D2F11C0);
      v219 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v185, v587.val[2]), v186), v189), xmmword_29D2F11C0);
      v220 = vpmaxq_s32(v218, v218);
      v221 = vpminq_s32(v219, v219);
      v222 = vminq_s32(v214, v221);
      v223 = vzip1q_s32(v220, v221);
      v224 = vbicq_s8(vsubq_s32(v193, vclsq_s32(v223)), vceqzq_s32(v223));
      v225 = vpmaxq_s32(v224, v224);
      v226 = vmaxq_s32(vmaxq_s32(v199, v208), vmaxq_s32(v217, v225));
      v227 = vclzq_s32(vsubq_s32(vmaxq_s32(v213, v220), v222));
      v228 = vsubq_s32(v193, v227);
      v229 = vcgtq_s32(v226, v228);
      v230 = vminq_s32(v228, v226);
      v228.i64[0] = 0x900000009;
      v228.i64[1] = 0x900000009;
      v587.val[1].i64[0] = 0x200000002;
      v587.val[1].i64[1] = 0x200000002;
      v587.val[0] = vorrq_s8(vandq_s8(vceqzq_s32(v230), v587.val[1]), vsubq_s32(vandq_s8(v229, v228), vmvnq_s8(v229)));
      v587.val[1].i64[0] = 0xF0000000FLL;
      v587.val[1].i64[1] = 0xF0000000FLL;
      v231 = vmaxq_s32(vminq_s32(vsubq_s32(v230, v199), v587.val[1]), 0);
      v232 = vmaxq_s32(vminq_s32(vsubq_s32(v230, v208), v587.val[1]), 0);
      v233 = vmaxq_s32(vminq_s32(vsubq_s32(v230, v217), v587.val[1]), 0);
      v234 = vmaxq_s32(vminq_s32(vsubq_s32(v230, v225), v587.val[1]), 0);
      v235 = vsubq_s32(v230, v231);
      v236 = vceqq_s32(vaddq_s32(v234, v233), vnegq_s32(vaddq_s32(v231, v232)));
      v231.i64[0] = 0x400000004;
      v231.i64[1] = 0x400000004;
      v237 = vbicq_s8(v231, v236);
      v238 = vorrq_s8(v237, v587.val[0]);
      *v237.i8 = vqmovn_u32(v238);
      v587.val[0].i64[0] = 0x8000800080008;
      v587.val[0].i64[1] = 0x8000800080008;
      *v587.val[2].i8 = vqmovn_u32(v230);
      v587.val[3].i64[0] = 0x2000200020002;
      v587.val[3].i64[1] = 0x2000200020002;
      v239.i64[0] = 0x10001000100010;
      v239.i64[1] = 0x10001000100010;
      v176.i64[0] = 0x3000300030003;
      v176.i64[1] = 0x3000300030003;
      v587.val[1] = vaddq_s16(vbicq_s8(v587.val[2], vceqzq_s16(vandq_s8(v237, v587.val[0]))), vandq_s8(vshlq_n_s16(v237, 2uLL), v239));
      v587.val[2].i64[0] = 0x20002000200020;
      v587.val[2].i64[1] = 0x20002000200020;
      v240 = vaddq_s16(v587.val[1], vandq_s8(vceqq_s16(vandq_s8(v237, v176), v587.val[3]), v587.val[2]));
      *v587.val[1].i8 = vqmovn_u32(v235);
      v186.i64[0] = 0x7000700070007;
      v186.i64[1] = 0x7000700070007;
      v241 = vmlaq_s16(v240, v587.val[1], v186);
      v218.i64[1] = v586.i64[1];
      *v587.val[1].i8 = vqmovn_u32(v586);
      *v218.i8 = vqmovn_u32(v542);
      v242 = vandq_s8(vshlq_n_s16(v587.val[1], 2uLL), v239);
      v243 = vaddq_s16(vaddq_s16(vbicq_s8(v218, vceqzq_s16(vandq_s8(v587.val[1], v587.val[0]))), v242), vandq_s8(vceqq_s16(vandq_s8(v587.val[1], v176), v587.val[3]), v587.val[2]));
      *v242.i8 = vqmovn_u32(v545);
      v244 = vmlaq_s16(v243, v242, v186);
      v245 = vsubq_s32(v230, v232);
      v246 = vsubq_s32(v230, v233);
      v247 = vsubq_s32(v230, v234);
      v248 = vaddq_s32(vaddq_s32(v246, v245), v247);
      *v248.i8 = vqmovn_u32(v248);
      v249 = vaddq_s16(v241, vshlq_n_s16(v248, 3uLL));
      v250 = v588.val[2];
      v148 = v536;
      v251 = vaddq_s32(vaddq_s32(v588.val[2], v159), v536);
      *v251.i8 = vqmovn_u32(v251);
      v150 = vaddq_s16(v244, vshlq_n_s16(v251, 3uLL));
      v252 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(v150, v249)).i64[0], 0);
      v169 = v554;
      v170 = v556;
      v253 = v578;
      v172 = v552;
      v174 = v581;
      if (vaddvq_s32(v252))
      {
        v254.i64[0] = 0x1F0000001FLL;
        v254.i64[1] = 0x1F0000001FLL;
        v255.i64[0] = -1;
        v255.i64[1] = -1;
        v256 = vandq_s8(vsubq_s32(vshlq_s32(v255, vsubq_s32(v254, v227)), v222), v229);
        v257 = vcltzq_s32(vshlq_n_s32(v252, 0x1FuLL));
        v579 = vbslq_s8(v257, v188, v579);
        v173 = vbslq_s8(v257, v550, v580);
        v582 = vbslq_s8(v257, v540, v582);
        v174 = vbslq_s8(v257, v187, v581);
        v172 = vbslq_s8(v257, v538, v552);
        v576 = vbslq_s8(v257, v530, v576);
        v577.i64[0] = vbslq_s8(v257, vextq_s8(v569, v569, 8uLL), v577).u64[0];
        v562 = vbslq_s8(v257, v534, v562);
        v253 = vbslq_s8(v257, v532, v578);
        v169 = vbslq_s8(v257, v523, v554);
        v170 = vbslq_s8(v257, v528, v556);
        v150 = vbslq_s8(v257, v526, v558);
        v167 = vbslq_s8(v257, v525, v560);
        v158 = vbslq_s8(v257, v185, v158);
        v583 = vbslq_s8(v257, v521, v583);
        v584 = vbslq_s8(v257, v520, v584);
        v585 = vbslq_s8(v257, v189, v585);
        v138 = vbslq_s8(v257, v235, v545);
        v159 = vbslq_s8(v257, v245, v159);
        v258 = vbslq_s8(v257, v246, v250);
        v148 = vbslq_s8(v257, v247, v536);
        v140 = vbslq_s8(v257, v256, v547);
        v160 = vbslq_s8(v257, v230, v542);
        v586 = vbslq_s8(v257, v238, v586);
        v147 = v258;
        v163 = *a3;
        v164 = *(a3 + a4);
        v165 = a3[1];
        v166 = *(&a3[1] + a4);
        v168 = v150;
      }

      else
      {
        v140 = v547;
        v168 = v558;
        v167 = v560;
        v147 = v250;
        v173 = v580;
        v163 = *a3;
        v164 = *(a3 + a4);
        v165 = a3[1];
        v166 = *(&a3[1] + a4);
      }

      v171 = v253;
    }

    v259.i64[1] = v586.i64[1];
    *v259.i8 = vqmovn_u32(v586);
    v260.i64[0] = 0x8000800080008;
    v260.i64[1] = 0x8000800080008;
    *v150.i8 = vqmovn_u32(v160);
    v261 = vbicq_s8(v150, vceqzq_s16(vandq_s8(v259, v260)));
    v262.i64[0] = 0x2000200020002;
    v262.i64[1] = 0x2000200020002;
    v263.i64[0] = 0x10001000100010;
    v263.i64[1] = 0x10001000100010;
    v264 = vandq_s8(vshlq_n_s16(v259, 2uLL), v263);
    v263.i64[0] = 0x3000300030003;
    v263.i64[1] = 0x3000300030003;
    v265 = vceqq_s16(vandq_s8(v259, v263), v262);
    v262.i64[0] = 0x20002000200020;
    v262.i64[1] = 0x20002000200020;
    v266 = vandq_s8(v265, v262);
    *v262.i8 = vqmovn_u32(v138);
    v263.i64[0] = 0x7000700070007;
    v263.i64[1] = 0x7000700070007;
    v267 = vaddq_s32(vaddq_s32(v147, v159), v148);
    *v267.i8 = vqmovn_u32(v267);
    v268 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v261, v264), v266), v262, v263), vshlq_n_s16(v267, 3uLL));
    if ((vpaddq_s16(v268, v268).i16[0] + 91) > 0x7FF)
    {
      *a1 = v163;
      a1[1] = v164;
      a1[2] = v165;
      a1[3] = v166;
      a1[4] = v566;
      a1[5] = v567;
      a1[6] = v568;
      a1[7] = v563;
      a1[8] = v573;
      a1[9] = v574;
      a1[10] = v575;
      a1[11] = v565;
      v272 = a1 + 12;
      v161 = -1;
      result = 256;
      *v272 = v570;
      v272[1] = v571;
      v272[2] = v572;
      v272[3] = v564;
    }

    else
    {
      v269 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v270 = 8 * (a1 & 7);
      if (v270)
      {
        v271 = *v269 & ~(-1 << v270);
      }

      else
      {
        v271 = 0;
      }

      *a2 = 0;
      if (v160.i32[0])
      {
        v273 = ((v160.i16[0] << 10) + 31744) & 0x7C00;
      }

      else
      {
        v273 = 0;
      }

      if (v160.i32[1])
      {
        v274 = ((v160.i32[1] << 15) + 1015808) & 0xF8000;
      }

      else
      {
        v274 = 0;
      }

      v275 = v586.i8[0] & 0x1F | (32 * (v586.i8[4] & 0x1F)) | v273 | v274;
      v276 = (v275 << v270) | v271;
      v277 = v167;
      if (v270 >= 0x2C)
      {
        *v269 = v276;
        v276 = v275 >> (-8 * (a1 & 7u));
      }

      v278 = v577.u32[0] | (v577.u32[1] << 32);
      v279 = (v270 + 20) & 0x3C;
      *(v269 + (((v270 + 20) >> 3) & 8)) = v276 | (v278 << v279);
      v280 = v270 + 84;
      v281 = vsubq_s32(v160, v138);
      v282 = vsubq_s32(v160, v159);
      v283 = vsubq_s32(v160, v147);
      v284 = vsubq_s32(v160, v148);
      *v281.i8 = vqmovn_u32(v281);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u32(v282);
      *v282.i8 = vqmovn_u16(v282);
      *v283.i8 = vqmovn_u32(v283);
      *v283.i8 = vqmovn_u16(v283);
      *v284.i8 = vqmovn_u32(v284);
      *v284.i8 = vqmovn_u16(v284);
      v281.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v281, v282), vzip1q_s8(v283, v284)), vzip1q_s16(vtrn2q_s8(v281, v282), vtrn2q_s8(v283, v284))).u64[0];
      v282.i64[0] = 0x400000004;
      v282.i64[1] = 0x400000004;
      v283.i64[0] = 0x404040404040404;
      v283.i64[1] = 0x404040404040404;
      v285 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v586, v282))), v283);
      v283.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v283.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[0] = -1;
      v284.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v284, vorrq_s8(v285, v283)), v281.u64[0]);
      v287 = vmovl_u8(*v285.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vmovl_high_u8(v286));
      v289 = vpaddq_s16(v287, vmovl_high_u8(v285));
      v290 = vmovl_u16(*v289.i8);
      v291 = vmovl_high_u16(v289);
      v292 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v290)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v291)));
      v293 = vpaddq_s32(v290, v291);
      v294.i64[0] = v292.u32[0];
      v294.i64[1] = v292.u32[1];
      v295 = v294;
      v294.i64[0] = v292.u32[2];
      v294.i64[1] = v292.u32[3];
      v296 = v294;
      v294.i64[0] = v293.u32[0];
      v294.i64[1] = v293.u32[1];
      v297 = v294;
      v294.i64[0] = v293.u32[2];
      v294.i64[1] = v293.u32[3];
      v298 = vpaddq_s64(vshlq_u64(v295, vzip1q_s64(0, v297)), vshlq_u64(v296, vzip1q_s64(0, v294)));
      v299 = vpaddq_s64(v297, v294);
      v300 = (v270 + 84) & 0x3C;
      v301 = (v298.i64[0] << v300) | (v278 >> -v279);
      if ((v299.i64[0] + v300) >= 0x40)
      {
        *(v269 + ((v280 >> 3) & 0x18)) = v301;
        v301 = v298.i64[0] >> -v300;
      }

      v302 = vceqq_s32(v160, v138);
      v303 = v299.i64[0] + v280;
      v304 = v301 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v269 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v298.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vandq_s8(v140, v302);
      v306 = v303 + v299.i64[1];
      v307.i64[0] = 0x800000008;
      v307.i64[1] = 0x800000008;
      v308 = vandq_s8(vextq_s8(vtstq_s32(v586, v307), 0, 8uLL), v160);
      v309.i64[0] = 0x1F0000001FLL;
      v309.i64[1] = 0x1F0000001FLL;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v311 = vandq_s8(vshlq_u32(v310, vaddq_s32(v308, v309)), v140);
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v313 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v314 = v312;
      v312.i64[0] = v308.u32[0];
      v312.i64[1] = v308.u32[1];
      v315 = v312;
      v316 = vzip1q_s64(0, v312);
      v312.i64[0] = v308.u32[2];
      v312.i64[1] = v308.u32[3];
      v317 = vpaddq_s64(vshlq_u64(v313, v316), vshlq_u64(v314, 0));
      v318 = vpaddq_s64(v315, v312);
      v319 = (v317.i64[0] << v306) | v304;
      if (v318.i64[0] + (v306 & 0x3F) >= 0x40)
      {
        *(v269 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
        v319 = v317.i64[0] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v319 = 0;
        }
      }

      v320 = vaddq_s32(v305, v579);
      v321 = v318.i64[0] + v306;
      v322 = v319 | (v317.i64[1] << v321);
      if ((v321 & 0x3F) + v318.i64[1] >= 0x40)
      {
        *(v269 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v317.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = v321 + v318.i64[1];
      v324 = vextq_s8(0, v138, 8uLL);
      v325.i64[0] = 0x1F0000001FLL;
      v325.i64[1] = 0x1F0000001FLL;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vandq_s8(vshlq_u32(v326, vaddq_s32(v324, v325)), v320);
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v329 = v328;
      v328.i64[0] = v327.u32[2];
      v328.i64[1] = v327.u32[3];
      v330 = v328;
      v328.i64[0] = v324.u32[2];
      v328.i64[1] = v324.u32[3];
      v331 = v328;
      v332 = vzip1q_s64(0, v328);
      v328.i64[0] = v324.u32[0];
      v328.i64[1] = v324.u32[1];
      v333 = vpaddq_s64(vshlq_u64(v329, 0), vshlq_u64(v330, v332));
      v334 = vpaddq_s64(v328, v331);
      v335 = (v333.i64[0] << v323) | v322;
      if (v334.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v269 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v333.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vaddq_s32(v173, v305);
      v337 = v334.i64[0] + v323;
      v338 = v335 | (v333.i64[1] << v337);
      if ((v337 & 0x3F) + v334.i64[1] >= 0x40)
      {
        *(v269 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v333.i64[1] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = v337 + v334.i64[1];
      v340.i64[0] = 0x1F0000001FLL;
      v340.i64[1] = 0x1F0000001FLL;
      v341.i64[0] = -1;
      v341.i64[1] = -1;
      v342 = vshlq_u32(v341, vaddq_s32(v138, v340));
      v343 = vandq_s8(v342, v336);
      v344.i64[0] = v343.u32[0];
      v344.i64[1] = v343.u32[1];
      v345 = v344;
      v344.i64[0] = v343.u32[2];
      v344.i64[1] = v343.u32[3];
      v346 = v344;
      v344.i64[0] = v138.u32[0];
      v344.i64[1] = v138.u32[1];
      v347 = v344;
      v344.i64[0] = v138.u32[2];
      v344.i64[1] = v138.u32[3];
      v348 = vzip1q_s64(0, v347);
      v349 = vzip1q_s64(0, v344);
      v350 = vpaddq_s64(vshlq_u64(v345, v348), vshlq_u64(v346, v349));
      v351 = vpaddq_s64(v347, v344);
      v352 = v351.i64[0];
      v353 = (v350.i64[0] << v339) | v338;
      if (v351.i64[0] + (v339 & 0x3F) >= 0x40)
      {
        *(v269 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        if ((v339 & 0x3F) != 0)
        {
          v353 = v350.i64[0] >> -(v339 & 0x3F);
        }

        else
        {
          v353 = 0;
        }
      }

      v354 = vaddq_s32(v582, v305);
      v355 = v351.i64[1];
      v356 = v351.i64[0] + v339;
      v357 = v353 | (v350.i64[1] << v356);
      if ((v356 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v269 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v350.i64[1] >> -(v356 & 0x3F);
        if ((v356 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356 + v351.i64[1];
      v359 = vandq_s8(v342, v354);
      v360.i64[0] = v359.u32[0];
      v360.i64[1] = v359.u32[1];
      v361 = v360;
      v360.i64[0] = v359.u32[2];
      v360.i64[1] = v359.u32[3];
      v362 = vpaddq_s64(vshlq_u64(v361, v348), vshlq_u64(v360, v349));
      v363 = (v362.i64[0] << v358) | v357;
      if (v351.i64[0] + (v358 & 0x3F) >= 0x40)
      {
        *(v269 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v362.i64[0] >> -(v358 & 0x3F);
        if ((v358 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = vceqq_s32(v160, v159);
      v365 = vaddq_s32(v174, v305);
      v366 = v352 + v358;
      v367 = v363 | (v362.i64[1] << v366);
      if ((v366 & 0x3F) + v355 >= 0x40)
      {
        *(v269 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        v367 = v362.i64[1] >> -(v366 & 0x3F);
        if ((v366 & 0x3F) == 0)
        {
          v367 = 0;
        }
      }

      v368 = vandq_s8(v140, v364);
      v369 = v366 + v355;
      v370 = vandq_s8(v342, v365);
      v371.i64[0] = v370.u32[0];
      v371.i64[1] = v370.u32[1];
      v372 = v371;
      v371.i64[0] = v370.u32[2];
      v371.i64[1] = v370.u32[3];
      v373 = vpaddq_s64(vshlq_u64(v372, v348), vshlq_u64(v371, v349));
      v374 = (v373.i64[0] << v369) | v367;
      if (v352 + (v369 & 0x3F) >= 0x40)
      {
        *(v269 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
        v374 = v373.i64[0] >> -(v369 & 0x3F);
        if ((v369 & 0x3F) == 0)
        {
          v374 = 0;
        }
      }

      v375 = vaddq_s32(v172, v368);
      v376 = v352 + v369;
      v377 = v374 | (v373.i64[1] << v376);
      if ((v376 & 0x3F) + v355 >= 0x40)
      {
        *(v269 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        v377 = v373.i64[1] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v377 = 0;
        }
      }

      v378 = v376 + v355;
      v379.i64[0] = 0x1F0000001FLL;
      v379.i64[1] = 0x1F0000001FLL;
      v380.i64[0] = -1;
      v380.i64[1] = -1;
      v381 = vshlq_u32(v380, vaddq_s32(v159, v379));
      v382 = vandq_s8(v381, v375);
      v383.i64[0] = v382.u32[0];
      v383.i64[1] = v382.u32[1];
      v384 = v383;
      v383.i64[0] = v382.u32[2];
      v383.i64[1] = v382.u32[3];
      v385 = v383;
      v383.i64[0] = v159.u32[0];
      v383.i64[1] = v159.u32[1];
      v386 = v383;
      v383.i64[0] = v159.u32[2];
      v383.i64[1] = v159.u32[3];
      v387 = vzip1q_s64(0, v386);
      v388 = vzip1q_s64(0, v383);
      v389 = vpaddq_s64(vshlq_u64(v384, v387), vshlq_u64(v385, v388));
      v390 = vpaddq_s64(v386, v383);
      v391 = v390.i64[0];
      v392 = (v389.i64[0] << v378) | v377;
      if (v390.i64[0] + (v378 & 0x3F) >= 0x40)
      {
        *(v269 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        if ((v378 & 0x3F) != 0)
        {
          v392 = v389.i64[0] >> -(v378 & 0x3F);
        }

        else
        {
          v392 = 0;
        }
      }

      v393 = vaddq_s32(v576, v368);
      v394 = v390.i64[1];
      v395 = v390.i64[0] + v378;
      v396 = v392 | (v389.i64[1] << v395);
      if ((v395 & 0x3F) + v390.i64[1] >= 0x40)
      {
        *(v269 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v389.i64[1] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = v395 + v390.i64[1];
      v398 = vandq_s8(v381, v393);
      v399.i64[0] = v398.u32[0];
      v399.i64[1] = v398.u32[1];
      v400 = v399;
      v399.i64[0] = v398.u32[2];
      v399.i64[1] = v398.u32[3];
      v401 = vpaddq_s64(vshlq_u64(v400, v387), vshlq_u64(v399, v388));
      v402 = (v401.i64[0] << v397) | v396;
      if (v390.i64[0] + (v397 & 0x3F) >= 0x40)
      {
        *(v269 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
        v402 = v401.i64[0] >> -(v397 & 0x3F);
        if ((v397 & 0x3F) == 0)
        {
          v402 = 0;
        }
      }

      v403 = vaddq_s32(v562, v368);
      v404 = v390.i64[0] + v397;
      v405 = v402 | (v401.i64[1] << v404);
      if ((v404 & 0x3F) + v390.i64[1] >= 0x40)
      {
        *(v269 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
        v405 = v401.i64[1] >> -(v404 & 0x3F);
        if ((v404 & 0x3F) == 0)
        {
          v405 = 0;
        }
      }

      v406 = v404 + v390.i64[1];
      v407 = vandq_s8(v381, v403);
      v408.i64[0] = v407.u32[0];
      v408.i64[1] = v407.u32[1];
      v409 = v408;
      v408.i64[0] = v407.u32[2];
      v408.i64[1] = v407.u32[3];
      v410 = vpaddq_s64(vshlq_u64(v409, v387), vshlq_u64(v408, v388));
      v411 = (v410.i64[0] << v406) | v405;
      if (v390.i64[0] + (v406 & 0x3F) >= 0x40)
      {
        *(v269 + ((v406 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v411;
        v411 = v410.i64[0] >> -(v406 & 0x3F);
        if ((v406 & 0x3F) == 0)
        {
          v411 = 0;
        }
      }

      v412 = vceqq_s32(v160, v147);
      v413 = vaddq_s32(v171, v368);
      v414 = v391 + v406;
      v415 = v411 | (v410.i64[1] << v414);
      if ((v414 & 0x3F) + v394 >= 0x40)
      {
        *(v269 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
        v415 = v410.i64[1] >> -(v414 & 0x3F);
        if ((v414 & 0x3F) == 0)
        {
          v415 = 0;
        }
      }

      v416 = vandq_s8(v140, v412);
      v417 = v414 + v394;
      v418 = vandq_s8(v381, v413);
      v419.i64[0] = v418.u32[0];
      v419.i64[1] = v418.u32[1];
      v420 = v419;
      v419.i64[0] = v418.u32[2];
      v419.i64[1] = v418.u32[3];
      v421 = vpaddq_s64(vshlq_u64(v420, v387), vshlq_u64(v419, v388));
      v422 = (v421.i64[0] << v417) | v415;
      if (v391 + (v417 & 0x3F) >= 0x40)
      {
        *(v269 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
        v422 = v421.i64[0] >> -(v417 & 0x3F);
        if ((v417 & 0x3F) == 0)
        {
          v422 = 0;
        }
      }

      v423 = vaddq_s32(v169, v416);
      v424 = v391 + v417;
      v425 = v422 | (v421.i64[1] << v424);
      if ((v424 & 0x3F) + v394 >= 0x40)
      {
        *(v269 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v421.i64[1] >> -(v424 & 0x3F);
        if ((v424 & 0x3F) == 0)
        {
          v425 = 0;
        }
      }

      v426 = v424 + v394;
      v427.i64[0] = 0x1F0000001FLL;
      v427.i64[1] = 0x1F0000001FLL;
      v428.i64[0] = -1;
      v428.i64[1] = -1;
      v429 = vshlq_u32(v428, vaddq_s32(v147, v427));
      v430 = vandq_s8(v429, v423);
      v431.i64[0] = v430.u32[0];
      v431.i64[1] = v430.u32[1];
      v432 = v431;
      v431.i64[0] = v430.u32[2];
      v431.i64[1] = v430.u32[3];
      v433 = v431;
      v431.i64[0] = v147.u32[0];
      v431.i64[1] = v147.u32[1];
      v434 = v431;
      v431.i64[0] = v147.u32[2];
      v431.i64[1] = v147.u32[3];
      v435 = vzip1q_s64(0, v434);
      v436 = vzip1q_s64(0, v431);
      v437 = vpaddq_s64(vshlq_u64(v432, v435), vshlq_u64(v433, v436));
      v438 = vpaddq_s64(v434, v431);
      v439 = v438.i64[0];
      v440 = (v437.i64[0] << v426) | v425;
      if (v438.i64[0] + (v426 & 0x3F) >= 0x40)
      {
        *(v269 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
        if ((v426 & 0x3F) != 0)
        {
          v440 = v437.i64[0] >> -(v426 & 0x3F);
        }

        else
        {
          v440 = 0;
        }
      }

      v441 = vaddq_s32(v170, v416);
      v442 = v438.i64[1];
      v443 = v438.i64[0] + v426;
      v444 = v440 | (v437.i64[1] << v443);
      if ((v443 & 0x3F) + v438.i64[1] >= 0x40)
      {
        *(v269 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
        v444 = v437.i64[1] >> -(v443 & 0x3F);
        if ((v443 & 0x3F) == 0)
        {
          v444 = 0;
        }
      }

      v445 = v443 + v438.i64[1];
      v446 = vandq_s8(v429, v441);
      v447.i64[0] = v446.u32[0];
      v447.i64[1] = v446.u32[1];
      v448 = v447;
      v447.i64[0] = v446.u32[2];
      v447.i64[1] = v446.u32[3];
      v449 = vpaddq_s64(vshlq_u64(v448, v435), vshlq_u64(v447, v436));
      v450 = (v449.i64[0] << v445) | v444;
      if (v438.i64[0] + (v445 & 0x3F) >= 0x40)
      {
        *(v269 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v450;
        v450 = v449.i64[0] >> -(v445 & 0x3F);
        if ((v445 & 0x3F) == 0)
        {
          v450 = 0;
        }
      }

      v451 = vaddq_s32(v168, v416);
      v452 = v438.i64[0] + v445;
      v453 = v450 | (v449.i64[1] << v452);
      if ((v452 & 0x3F) + v438.i64[1] >= 0x40)
      {
        *(v269 + ((v452 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v453;
        v453 = v449.i64[1] >> -(v452 & 0x3F);
        if ((v452 & 0x3F) == 0)
        {
          v453 = 0;
        }
      }

      v454 = v452 + v438.i64[1];
      v455 = vandq_s8(v429, v451);
      v456.i64[0] = v455.u32[0];
      v456.i64[1] = v455.u32[1];
      v457 = v456;
      v456.i64[0] = v455.u32[2];
      v456.i64[1] = v455.u32[3];
      v458 = vpaddq_s64(vshlq_u64(v457, v435), vshlq_u64(v456, v436));
      v459 = (v458.i64[0] << v454) | v453;
      if (v438.i64[0] + (v454 & 0x3F) >= 0x40)
      {
        *(v269 + ((v454 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
        v459 = v458.i64[0] >> -(v454 & 0x3F);
        if ((v454 & 0x3F) == 0)
        {
          v459 = 0;
        }
      }

      v460 = vceqq_s32(v160, v148);
      v461 = vaddq_s32(v277, v416);
      v462 = v439 + v454;
      v463 = v459 | (v458.i64[1] << v462);
      if ((v462 & 0x3F) + v442 >= 0x40)
      {
        *(v269 + ((v462 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
        v463 = v458.i64[1] >> -(v462 & 0x3F);
        if ((v462 & 0x3F) == 0)
        {
          v463 = 0;
        }
      }

      v464 = vandq_s8(v140, v460);
      v465 = v462 + v442;
      v466 = vandq_s8(v429, v461);
      v467.i64[0] = v466.u32[0];
      v467.i64[1] = v466.u32[1];
      v468 = v467;
      v467.i64[0] = v466.u32[2];
      v467.i64[1] = v466.u32[3];
      v469 = vpaddq_s64(vshlq_u64(v468, v435), vshlq_u64(v467, v436));
      v470 = (v469.i64[0] << v465) | v463;
      if (v439 + (v465 & 0x3F) >= 0x40)
      {
        *(v269 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
        v470 = v469.i64[0] >> -(v465 & 0x3F);
        if ((v465 & 0x3F) == 0)
        {
          v470 = 0;
        }
      }

      v471 = vaddq_s32(v158, v464);
      v472 = v439 + v465;
      v473 = v470 | (v469.i64[1] << v472);
      if ((v472 & 0x3F) + v442 >= 0x40)
      {
        *(v269 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
        v473 = v469.i64[1] >> -(v472 & 0x3F);
        if ((v472 & 0x3F) == 0)
        {
          v473 = 0;
        }
      }

      v474 = v472 + v442;
      v475.i64[0] = 0x1F0000001FLL;
      v475.i64[1] = 0x1F0000001FLL;
      v476.i64[0] = -1;
      v476.i64[1] = -1;
      v477 = vshlq_u32(v476, vaddq_s32(v148, v475));
      v478 = vandq_s8(v477, v471);
      v479.i64[0] = v478.u32[0];
      v479.i64[1] = v478.u32[1];
      v480 = v479;
      v479.i64[0] = v478.u32[2];
      v479.i64[1] = v478.u32[3];
      v481 = v479;
      v479.i64[0] = v148.u32[0];
      v479.i64[1] = v148.u32[1];
      v482 = v479;
      v479.i64[0] = v148.u32[2];
      v479.i64[1] = v148.u32[3];
      v483 = vzip1q_s64(0, v482);
      v484 = vzip1q_s64(0, v479);
      v485 = vpaddq_s64(vshlq_u64(v480, v483), vshlq_u64(v481, v484));
      v486 = vpaddq_s64(v482, v479);
      v487 = (v472 + v442) & 0x3F;
      v488 = (v485.i64[0] << (v472 + v442)) | v473;
      if ((v486.i64[0] + v487) > 0x3F)
      {
        *(v269 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
        if (v487)
        {
          v488 = v485.i64[0] >> -v487;
        }

        else
        {
          v488 = 0;
        }
      }

      v489 = vaddq_s32(v583, v464);
      v490 = v486.i64[0] + v474;
      v491 = v488 | (v485.i64[1] << v490);
      if ((v490 & 0x3F) + v486.i64[1] >= 0x40)
      {
        *(v269 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
        v491 = v485.i64[1] >> -(v490 & 0x3F);
        if ((v490 & 0x3F) == 0)
        {
          v491 = 0;
        }
      }

      v492 = v490 + v486.i64[1];
      v493 = vandq_s8(v477, v489);
      v494.i64[0] = v493.u32[0];
      v494.i64[1] = v493.u32[1];
      v495 = v494;
      v494.i64[0] = v493.u32[2];
      v494.i64[1] = v493.u32[3];
      v496 = vpaddq_s64(vshlq_u64(v495, v483), vshlq_u64(v494, v484));
      v497 = (v496.i64[0] << v492) | v491;
      if (v486.i64[0] + (v492 & 0x3F) >= 0x40)
      {
        *(v269 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v497;
        v497 = v496.i64[0] >> -(v492 & 0x3F);
        if ((v492 & 0x3F) == 0)
        {
          v497 = 0;
        }
      }

      v498 = vaddq_s32(v584, v464);
      v499 = v486.i64[0] + v492;
      v500 = v497 | (v496.i64[1] << v499);
      if ((v499 & 0x3F) + v486.i64[1] >= 0x40)
      {
        *(v269 + ((v499 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
        v500 = v496.i64[1] >> -(v499 & 0x3F);
        if ((v499 & 0x3F) == 0)
        {
          v500 = 0;
        }
      }

      v501 = v499 + v486.i64[1];
      v502 = vandq_s8(v477, v498);
      v503.i64[0] = v502.u32[0];
      v503.i64[1] = v502.u32[1];
      v504 = v503;
      v503.i64[0] = v502.u32[2];
      v503.i64[1] = v502.u32[3];
      v505 = vpaddq_s64(vshlq_u64(v504, v483), vshlq_u64(v503, v484));
      v506 = (v505.i64[0] << v501) | v500;
      if (v486.i64[0] + (v501 & 0x3F) >= 0x40)
      {
        *(v269 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v506;
        v506 = v505.i64[0] >> -(v501 & 0x3F);
        if ((v501 & 0x3F) == 0)
        {
          v506 = 0;
        }
      }

      v507 = vaddq_s32(v585, v464);
      v508 = v486.i64[0] + v501;
      v509 = v506 | (v505.i64[1] << v508);
      if ((v508 & 0x3F) + v486.i64[1] >= 0x40)
      {
        *(v269 + ((v508 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v509;
        v509 = v505.i64[1] >> -(v508 & 0x3F);
        if ((v508 & 0x3F) == 0)
        {
          v509 = 0;
        }
      }

      v510 = v508 + v486.i64[1];
      v511 = vandq_s8(v477, v507);
      v512.i64[0] = v511.u32[0];
      v512.i64[1] = v511.u32[1];
      v513 = v512;
      v512.i64[0] = v511.u32[2];
      v512.i64[1] = v511.u32[3];
      v514 = vpaddq_s64(vshlq_u64(v513, v483), vshlq_u64(v512, v484));
      v515 = (v514.i64[0] << v510) | v509;
      if (v486.i64[0] + (v510 & 0x3F) >= 0x40)
      {
        *(v269 + ((v510 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v515;
        v515 = v514.i64[0] >> -(v510 & 0x3F);
        if ((v510 & 0x3F) == 0)
        {
          v515 = 0;
        }
      }

      v516 = v486.i64[0] + v510;
      v517 = (v486.i64[0] + v510) & 0x3F;
      v518 = v515 | (v514.i64[1] << (v486.i8[0] + v510));
      if ((v517 + v486.i64[1]) >= 0x40)
      {
        *(v269 + ((v516 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v518;
        v518 = v514.i64[1] >> -v517;
        if (!v517)
        {
          v518 = 0;
        }
      }

      v519 = v516 + v486.i64[1];
      if ((v519 & 0x3F) != 0)
      {
        *(v269 + ((v519 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v518;
      }

      result = (v519 - v270 + 7) >> 3;
      v161 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i64[0] = a3->i64[0];
    v161 = 7;
    result = 8;
  }

  *a2 = v161;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int32x4_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
    v9 = (v9 + result);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 64), a2, v28, v27);
    v9 = (v9 + result);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 64), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 255)
  {
    v13 = *(a3 + 16);
    v14 = *(a3 + 32);
    v15 = *(a3 + 48);
    v16 = *(a3 + 128);
    v17 = *(a3 + 144);
    v18 = *(a3 + 96);
    v19 = *(a3 + 192);
    v20 = *(a3 + 208);
    v21 = *(a3 + 224);
    v22 = *(a3 + 240);
    v23 = *(a3 + 112);
    v24 = *(a3 + 64);
    v25 = *(a3 + 80);
    v26 = *(a3 + 160);
    v27 = *(a3 + 176);
    v28 = (a1->f64 + a2);
    *a1 = *a3;
    a1[1] = v13;
    a1[2] = v24;
    a1[3] = v25;
    v29 = (a1->f64 + 2 * a2);
    v30 = v21;
    *v28 = v14;
    v28[1] = v15;
    v28[2] = v18;
    v28[3] = v23;
    *v29 = v16;
    v29[1] = v17;
    v29[2] = v19;
    v29[3] = v20;
    v31 = (v29 + a2);
    v32 = v22;
    v4 = 256;
LABEL_7:
    *v31 = v26;
    v31[1] = v27;
    v31[2] = v30;
    v31[3] = v32;
    return v4;
  }

  if (a4 != 7)
  {
    if (!a4)
    {
      v4 = 0;
      v5 = 0uLL;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = (a1->f64 + a2);
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (a1->f64 + 2 * a2);
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      v8 = (a1 + 2 * a2 + a2);
      v8[2] = 0u;
      v8[3] = 0u;
LABEL_142:
      *v8 = v5;
      v8[1] = v5;
      return v4;
    }

    v33 = 8 * (a3 & 7);
    v34 = a3 & 0xFFFFFFFFFFFFFFF8;
    v35 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v33;
    if (v33 >= 0x2D)
    {
      v35 |= *(v34 + 8) << (-8 * (a3 & 7u));
    }

    v36 = (8 * (a3 & 7)) | 0x800;
    v37.i32[0] = v35;
    v37.i32[1] = (v35 >> 5) & 0x7FFF;
    *v38.i8 = vand_s8(v37, 0x1F0000001FLL);
    v39 = v33 + 84;
    v373 = *v38.i8;
    v38.i64[1] = v38.i64[0];
    v40.i64[0] = 0xFFFF0000FFFFLL;
    v40.i64[1] = 0xFFFF0000FFFFLL;
    v41 = vandq_s8(v38, v40);
    v40.i16[0] = (v35 >> 10) & 0x1F;
    v40.i16[1] = (v35 >> 15) & 0x1F;
    v40.i32[1] = v40.i32[0];
    v42 = vmovl_u16(vadd_s16(*v40.i8, 0x1000100010001));
    v43 = *&v41 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
    v44.i64[0] = 0x300000003;
    v44.i64[1] = 0x300000003;
    v45 = vbicq_s8(v42, vceqq_s32((*&v41 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v44));
    v44.i64[0] = 0x404040404040404;
    v44.i64[1] = 0x404040404040404;
    v46 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v41 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v44);
    if (vmaxvq_s8(v46) < 1)
    {
      v55 = 0;
      v73.i64[0] = -1;
      v73.i64[1] = -1;
      v370 = v73;
      v371 = v73;
      v71 = v45;
      v70 = v45;
      v69 = v45;
      v72.i64[0] = -1;
      v72.i64[1] = -1;
      v68 = v45;
      v74.i64[0] = -1;
      v74.i64[1] = -1;
      v372 = v74;
    }

    else
    {
      v47 = vmovl_u8(*&vpaddq_s8(v46, v46));
      v48 = vmovl_u16(*&vpaddq_s16(v47, v47));
      v49 = vpaddq_s32(v48, v48).u64[0];
      v50.i64[0] = v49;
      v50.i64[1] = HIDWORD(v49);
      v51 = v50;
      v52 = vaddvq_s64(v50);
      v53 = v39 + v52;
      v54 = v52 <= 0x80 && v36 >= v53;
      v55 = !v54;
      v56 = 0uLL;
      if (v54)
      {
        v57 = v39 & 0x3C;
        v58 = vaddq_s64(vdupq_n_s64(v57), vzip1q_s64(0, v51));
        v59 = (v34 + ((v39 >> 3) & 0x18));
        v56 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
        if (v57 + v52 >= 0x81)
        {
          v56 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v56);
        }

        v39 = v53;
      }

      v60 = vzip1_s32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
      v61.i64[0] = v60.u32[0];
      v61.i64[1] = v60.u32[1];
      v62 = vshlq_u64(v56, vnegq_s64(v61));
      v63 = vuzp1q_s32(vzip1q_s64(v56, v62), vzip2q_s64(v56, v62));
      v64 = vshlq_u32(v63, vnegq_s32((*&v47 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v65 = vuzp1q_s16(vzip1q_s32(v63, v64), vzip2q_s32(v63, v64));
      v63.i64[0] = 0x101010101010101;
      v63.i64[1] = 0x101010101010101;
      *v66.i8 = vand_s8(vadd_s8(*&vshlq_s8(v63, v46), -1), vmovn_s16(vzip1q_s16(v65, vshlq_u16(v65, vnegq_s16(vmovl_u8(vuzp1_s8(*v46.i8, v37)))))));
      v66.i64[1] = v66.i64[0];
      *v66.i8 = vqtbl1_s8(v66, 0x703060205010400);
      v65.i64[0] = vmovl_s8(vdup_lane_s16(*v66.i8, 0)).u64[0];
      v63.i64[0] = vmovl_s8(vdup_lane_s16(*v66.i8, 1)).u64[0];
      v67 = vmovl_s8(vdup_lane_s16(*v66.i8, 2)).u64[0];
      v66.i64[0] = vmovl_s8(vdup_lane_s16(*v66.i8, 3)).u64[0];
      v68 = vsubw_s16(v45, *v65.i8);
      v69 = vsubw_s16(v45, *v63.i8);
      v70 = vsubw_s16(v45, v67);
      v71 = vsubw_s16(v45, *v66.i8);
      v371 = vmovl_s16(vceqz_s16(*v65.i8));
      v372 = vmovl_s16(vceqz_s16(*v63.i8));
      v72 = vmovl_s16(vceqz_s16(v67));
      v370 = vmovl_s16(vceqz_s16(*v66.i8));
    }

    v75.i64[0] = 0x800000008;
    v75.i64[1] = 0x800000008;
    v76 = 0uLL;
    v77 = vandq_s8(vextq_s8(vtstq_s32(v41, v75), 0, 8uLL), v45);
    v75.i64[0] = vpaddq_s32(v77, v77).u64[0];
    v78.i64[0] = v75.u32[0];
    v78.i64[1] = v75.u32[1];
    v79 = v78;
    v80 = vaddvq_s64(v78);
    v81 = v39 + v80;
    if (v80 <= 0x80 && v36 >= v81)
    {
      v83 = v39 & 0x3F;
      v84 = vaddq_s64(vdupq_n_s64(v83), vzip1q_s64(0, v79));
      v85 = (v34 + 8 * (v39 >> 6));
      v76 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
      if (v83 + v80 >= 0x81)
      {
        v76 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v76);
      }

      v39 = v81;
    }

    else
    {
      v55 = 1;
    }

    v86 = v373.i8[0] & 3;
    if (v86 == 2)
    {
      v87 = v39 + 32;
      if (v36 >= v39 + 16)
      {
        v39 += 16;
      }

      else
      {
        v55 = 1;
        v87 = v39 + 16;
      }

      if (v36 >= v87)
      {
        v39 = v87;
      }

      else
      {
        v55 = 1;
      }
    }

    v88 = 0uLL;
    v89 = vextq_s8(0, v68, 8uLL);
    v90 = vpaddq_s32(v89, v89).u64[0];
    v91.i64[0] = v90;
    v91.i64[1] = HIDWORD(v90);
    v92 = v91;
    v93 = vaddvq_s64(v91);
    v94 = v39 + v93;
    if (v93 <= 0x80 && v36 >= v94)
    {
      v97 = v39 & 0x3F;
      v98 = vaddq_s64(vdupq_n_s64(v97), vzip1q_s64(0, v92));
      v99 = (v34 + 8 * (v39 >> 6));
      v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
      if (v97 + v93 >= 0x81)
      {
        v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v96);
      }

      v39 = v94;
    }

    else
    {
      v55 = 1;
      v96 = 0uLL;
    }

    v100 = vpaddq_s32(v68, v68).u64[0];
    v101.i64[0] = v100;
    v101.i64[1] = HIDWORD(v100);
    v102 = v101;
    v103 = vaddvq_s64(v101);
    v104 = v39 + v103;
    if (v103 <= 0x80 && v36 >= v104)
    {
      v106 = v39 & 0x3F;
      v107 = vaddq_s64(vdupq_n_s64(v106), vzip1q_s64(0, v102));
      v108 = (v34 + 8 * (v39 >> 6));
      v88 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v107)));
      if (v106 + v103 >= 0x81)
      {
        v88 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v88);
      }

      v39 = v104;
    }

    else
    {
      v55 = 1;
    }

    v109 = v39 + v103;
    v110 = 0uLL;
    if (v103 <= 0x80 && v36 >= v109)
    {
      v113 = v39 & 0x3F;
      v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v102));
      v115 = (v34 + 8 * (v39 >> 6));
      v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
      if (v113 + v103 >= 0x81)
      {
        v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v112);
      }

      v39 = v109;
    }

    else
    {
      v55 = 1;
      v112 = 0uLL;
    }

    v116 = v39 + v103;
    if (v103 <= 0x80 && v36 >= v116)
    {
      v118 = v39 & 0x3F;
      v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v102));
      v120 = (v34 + 8 * (v39 >> 6));
      v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
      if (v118 + v103 >= 0x81)
      {
        v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v110);
      }

      v39 = v116;
    }

    else
    {
      v55 = 1;
    }

    v121 = vpaddq_s32(v69, v69).u64[0];
    v122.i64[0] = v121;
    v122.i64[1] = HIDWORD(v121);
    v123 = v122;
    v124 = vaddvq_s64(v122);
    v125 = v39 + v124;
    v126 = 0uLL;
    if (v124 <= 0x80 && v36 >= v125)
    {
      v129 = v39 & 0x3F;
      v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v123));
      v131 = (v34 + 8 * (v39 >> 6));
      v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
      if (v129 + v124 >= 0x81)
      {
        v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v128);
      }

      v39 = v125;
    }

    else
    {
      v55 = 1;
      v128 = 0uLL;
    }

    v132 = v39 + v124;
    if (v124 <= 0x80 && v36 >= v132)
    {
      v134 = v39 & 0x3F;
      v135 = vaddq_s64(vdupq_n_s64(v134), vzip1q_s64(0, v123));
      v136 = (v34 + 8 * (v39 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
      if (v134 + v124 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v126);
      }

      v39 = v132;
    }

    else
    {
      v55 = 1;
    }

    v137 = 0uLL;
    if (v124 > 0x80 || (v138 = v39 + v124, v36 < v39 + v124))
    {
      v55 = 1;
      v138 = v39;
      v142 = 0uLL;
    }

    else
    {
      v139 = v39 & 0x3F;
      v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v123));
      v141 = (v34 + 8 * (v39 >> 6));
      v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
      if (v139 + v124 >= 0x81)
      {
        v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
      }
    }

    if (v124 > 0x80 || (v143 = v138 + v124, v36 < v138 + v124))
    {
      v146 = v68;
      v55 = 1;
      v143 = v138;
    }

    else
    {
      v144 = vaddq_s64(vdupq_n_s64(v138 & 0x3F), vzip1q_s64(0, v123));
      v145 = (v34 + 8 * (v138 >> 6));
      v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v145, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v145->i64[0], 0), vnegq_s64(v144)));
      v146 = v68;
      if ((v138 & 0x3F) + v124 >= 0x81)
      {
        v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v145[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v145[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v137);
      }
    }

    v147 = v70;
    v148 = vpaddq_s32(v70, v70).u64[0];
    v149.i64[0] = v148;
    v149.i64[1] = HIDWORD(v148);
    v150 = v149;
    v151 = vaddvq_s64(v149);
    v152 = v151;
    v153 = 0uLL;
    if (v151 > 0x80 || (v154 = v143 + v151, v36 < v143 + v151))
    {
      v55 = 1;
      v154 = v143;
      v157 = 0uLL;
    }

    else
    {
      v155 = vaddq_s64(vdupq_n_s64(v143 & 0x3F), vzip1q_s64(0, v150));
      v156 = (v34 + 8 * (v143 >> 6));
      v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
      if ((v143 & 0x3F) + v152 >= 0x81)
      {
        v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
      }
    }

    if (v152 > 0x80 || (v158 = v154 + v152, v36 < v154 + v152))
    {
      v55 = 1;
      v158 = v154;
    }

    else
    {
      v159 = vaddq_s64(vdupq_n_s64(v154 & 0x3F), vzip1q_s64(0, v150));
      v160 = (v34 + 8 * (v154 >> 6));
      v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
      if ((v154 & 0x3F) + v152 >= 0x81)
      {
        v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v153);
      }
    }

    v161 = 0uLL;
    if (v152 > 0x80 || (v162 = v158 + v152, v36 < v158 + v152))
    {
      v55 = 1;
      v162 = v158;
      v166 = 0uLL;
    }

    else
    {
      v163 = v158 & 0x3F;
      v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v150));
      v165 = (v34 + 8 * (v158 >> 6));
      v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
      if (v163 + v152 >= 0x81)
      {
        v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v166);
      }
    }

    if (v152 > 0x80 || (v167 = v162 + v152, v36 < v162 + v152))
    {
      v55 = 1;
      v167 = v162;
    }

    else
    {
      v168 = v162 & 0x3F;
      v169 = vaddq_s64(vdupq_n_s64(v168), vzip1q_s64(0, v150));
      v170 = (v34 + 8 * (v162 >> 6));
      v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
      if (v168 + v152 >= 0x81)
      {
        v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v161);
      }
    }

    v171 = vpaddq_s32(v71, v71).u64[0];
    v172.i64[0] = v171;
    v172.i64[1] = HIDWORD(v171);
    v173 = v172;
    v174 = vaddvq_s64(v172);
    v175 = v174;
    v176 = 0uLL;
    if (v174 > 0x80 || (v177 = v167 + v174, v36 < v167 + v174))
    {
      v55 = 1;
      v177 = v167;
      v181 = 0uLL;
    }

    else
    {
      v178 = v167 & 0x3F;
      v179 = vaddq_s64(vdupq_n_s64(v178), vzip1q_s64(0, v173));
      v180 = (v34 + 8 * (v167 >> 6));
      v181 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v180, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v179)), vshlq_u64(vdupq_lane_s64(v180->i64[0], 0), vnegq_s64(v179)));
      if (v178 + v175 >= 0x81)
      {
        v181 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v180[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v179)), vshlq_u64(vdupq_laneq_s64(v180[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v179))), v181);
      }
    }

    if (v175 > 0x80 || (v182 = v177 + v175, v36 < v177 + v175))
    {
      v55 = 1;
      v182 = v177;
    }

    else
    {
      v183 = v177 & 0x3F;
      v184 = vaddq_s64(vdupq_n_s64(v183), vzip1q_s64(0, v173));
      v185 = (v34 + 8 * (v177 >> 6));
      v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v185, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v184)), vshlq_u64(vdupq_lane_s64(v185->i64[0], 0), vnegq_s64(v184)));
      if (v183 + v175 >= 0x81)
      {
        v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v185[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v184)), vshlq_u64(vdupq_laneq_s64(v185[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v184))), v176);
      }
    }

    v186 = 0uLL;
    if (v175 > 0x80 || (v187 = v182 + v175, v36 < v182 + v175))
    {
      v55 = 1;
      v187 = v182;
    }

    else
    {
      v188 = v182 & 0x3F;
      v189 = vaddq_s64(vdupq_n_s64(v188), vzip1q_s64(0, v173));
      v190 = (v34 + 8 * (v182 >> 6));
      v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
      if (v188 + v175 >= 0x81)
      {
        v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
      }
    }

    if (v175 <= 0x80 && v36 >= v187 + v175)
    {
      v191 = v33 + 20;
      v192 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
      v193.i64[0] = v192.u32[0];
      v193.i64[1] = v192.u32[1];
      v194 = (v34 + ((v191 >> 3) & 8));
      v195 = vnegq_s64(v193);
      v196.i64[0] = 0x2000000020;
      v196.i64[1] = 0x2000000020;
      v197.i64[0] = 0x1F0000001FLL;
      v197.i64[1] = 0x1F0000001FLL;
      v198 = vsubq_s32(v196, v71);
      v199 = vaddq_s32(v71, v197);
      v200 = vaddq_s64(vdupq_n_s64(v187 & 0x3F), vzip1q_s64(0, v173));
      v201 = (v34 + 8 * (v187 >> 6));
      v202 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
      if ((v187 & 0x3F) + v175 < 0x81)
      {
        if ((v55 & 1) == 0)
        {
          v203 = v72;
          v207 = vshlq_u64(v202, v195);
          v206 = vuzp1q_s32(vzip1q_s64(v202, v207), vzip2q_s64(v202, v207));
LABEL_139:
          v208 = vshlq_s32(vshlq_s32(v206, v198), v199);
          v4 = a4 + 1;
          if (v36 + 8 * v4 - (v187 + v175) - 2048 >= 9 || v86 == 2)
          {
            goto LABEL_141;
          }

          v350 = v41;
          v368 = v203;
          v369 = v208;
          v212 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
          v213.i64[0] = v212.u32[0];
          v213.i64[1] = v212.u32[1];
          v214 = vshlq_u64(v76, vnegq_s64(v213));
          v215 = vzip2q_s64(v76, v214);
          v364 = vzip1q_s64(v76, v214);
          v366 = v77;
          v216 = v89;
          *v214.i8 = vzip1_s32(*v89.i8, *&vextq_s8(v89, v89, 8uLL));
          v213.i64[0] = v214.u32[0];
          v213.i64[1] = v214.u32[1];
          v217 = vshlq_u64(v96, vnegq_s64(v213));
          v360 = vzip1q_s64(v96, v217);
          v362 = vzip2q_s64(v96, v217);
          v367 = v43;
          v218 = v146;
          v219 = vzip1_s32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
          v213.i64[0] = v219.u32[0];
          v213.i64[1] = v219.u32[1];
          v220 = vnegq_s64(v213);
          v221 = vshlq_u64(v88, v220);
          v358 = vzip1q_s64(v88, v221);
          v359 = vzip2q_s64(v88, v221);
          v222 = vshlq_u64(v112, v220);
          v356 = vzip1q_s64(v112, v222);
          v357 = vzip2q_s64(v112, v222);
          v223 = vshlq_u64(v110, v220);
          v354 = vzip1q_s64(v110, v223);
          v355 = vzip2q_s64(v110, v223);
          v224 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
          v213.i64[0] = v224.u32[0];
          v213.i64[1] = v224.u32[1];
          v225 = vnegq_s64(v213);
          v226 = vshlq_u64(v128, v225);
          v352 = vzip1q_s64(v128, v226);
          v353 = vzip2q_s64(v128, v226);
          v227 = vshlq_u64(v126, v225);
          v351 = vzip2q_s64(v126, v227);
          v228 = vzip1q_s64(v126, v227);
          v229 = vshlq_u64(v142, v225);
          v230 = vzip2q_s64(v142, v229);
          v231 = vzip1q_s64(v142, v229);
          v232 = vshlq_u64(v137, v225);
          v233 = vzip2q_s64(v137, v232);
          v234 = vzip1q_s64(v137, v232);
          v235 = v147;
          v236 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
          v213.i64[0] = v236.u32[0];
          v213.i64[1] = v236.u32[1];
          v237 = vnegq_s64(v213);
          v238 = vshlq_u64(v157, v237);
          v239 = vzip2q_s64(v157, v238);
          v240 = vzip1q_s64(v157, v238);
          v241 = vshlq_u64(v153, v237);
          v242 = vzip2q_s64(v153, v241);
          v243 = vzip1q_s64(v153, v241);
          v244 = vshlq_u64(v166, v237);
          v245 = vzip2q_s64(v166, v244);
          v246 = vzip1q_s64(v166, v244);
          v247 = vshlq_u64(v161, v237);
          v248 = vzip2q_s64(v161, v247);
          v249 = vzip1q_s64(v161, v247);
          v250 = vshlq_u64(v181, v195);
          v251 = v69;
          v252 = vzip2q_s64(v181, v250);
          v253 = vzip1q_s64(v181, v250);
          v254 = vshlq_u64(v176, v195);
          v255 = vzip2q_s64(v176, v254);
          v256 = vzip1q_s64(v176, v254);
          v257 = vuzp1q_s32(v364, v215);
          v258 = vuzp1q_s32(v360, v362);
          v259 = vuzp1q_s32(v228, v351);
          v260 = vuzp1q_s32(v231, v230);
          v261 = vuzp1q_s32(v234, v233);
          v363 = vuzp1q_s32(v243, v242);
          v365 = vuzp1q_s32(v240, v239);
          v361 = vuzp1q_s32(v246, v245);
          v262 = vuzp1q_s32(v249, v248);
          v263 = vuzp1q_s32(v253, v252);
          v239.i64[0] = 0x2000000020;
          v239.i64[1] = 0x2000000020;
          v228.i64[0] = 0x1F0000001FLL;
          v228.i64[1] = 0x1F0000001FLL;
          v231.i64[0] = 0x2000000020;
          v231.i64[1] = 0x2000000020;
          v264 = vshlq_s32(v258, vsubq_s32(v231, v216));
          v265 = vsubq_s32(v231, v218);
          v249.i64[0] = 0x1F0000001FLL;
          v249.i64[1] = 0x1F0000001FLL;
          v266 = vaddq_s32(v216, v249);
          v267 = vaddq_s32(v218, v249);
          v249.i64[0] = 0x2000000020;
          v249.i64[1] = 0x2000000020;
          v268 = vsubq_s32(v249, v251);
          v243.i64[0] = 0x1F0000001FLL;
          v243.i64[1] = 0x1F0000001FLL;
          v269 = vaddq_s32(v251, v243);
          v270 = vshlq_s32(vuzp1q_s32(v352, v353), v268);
          v271 = vshlq_s32(v259, v268);
          v272 = vshlq_s32(v260, v268);
          v273 = vshlq_s32(v261, v268);
          v268.i64[0] = 0x2000000020;
          v268.i64[1] = 0x2000000020;
          v274 = vsubq_s32(v268, v235);
          v246.i64[0] = 0x1F0000001FLL;
          v246.i64[1] = 0x1F0000001FLL;
          v275 = vaddq_s32(v235, v246);
          v276 = vshlq_s32(v365, v274);
          v277 = vshlq_s32(v363, v274);
          v278 = vshlq_s32(v361, v274);
          v279 = vshlq_s32(v262, v274);
          v280 = vshlq_s32(vshlq_s32(v257, vsubq_s32(v239, v366)), vaddq_s32(v366, v228));
          v281 = vshlq_s32(v264, v266);
          v282 = vshlq_s32(vshlq_s32(vuzp1q_s32(v358, v359), v265), v267);
          v283 = vshlq_s32(vshlq_s32(vuzp1q_s32(v356, v357), v265), v267);
          v284 = vshlq_s32(vshlq_s32(vuzp1q_s32(v354, v355), v265), v267);
          v285 = vshlq_s32(v270, v269);
          v286 = vshlq_s32(v271, v269);
          v287 = vshlq_s32(v272, v269);
          v288 = vshlq_s32(v273, v269);
          v289 = vshlq_s32(v276, v275);
          v290 = vshlq_s32(v279, v275);
          v291 = vshlq_u64(v186, v195);
          v292 = vshlq_s32(vshlq_s32(v263, v198), v199);
          v293 = vshlq_s32(vshlq_s32(vuzp1q_s32(v256, v255), v198), v199);
          v294 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v186, v291), vzip2q_s64(v186, v291)), v198), v199);
          v295 = vaddq_s32(vandq_s8(v280, v371), v281);
          v296 = vdupq_lane_s64(v280.i64[0], 0);
          v297 = vandq_s8(v296, v372);
          v298 = vsubq_s32(v285, v297);
          v299 = vsubq_s32(v286, v297);
          v300 = vsubq_s32(v287, v297);
          v301 = vsubq_s32(v288, v297);
          v302 = vandq_s8(v296, v368);
          v303 = vsubq_s32(v289, v302);
          v304 = vsubq_s32(vshlq_s32(v277, v275), v302);
          v305 = vsubq_s32(vshlq_s32(v278, v275), v302);
          v306 = vandq_s8(v296, v371);
          v307 = vsubq_s32(v290, v302);
          v308 = vandq_s8(v296, v370);
          v309 = vsubq_s32(v292, v308);
          v310 = vsubq_s32(v293, v308);
          v311 = vsubq_s32(v294, v308);
          v312 = vsubq_s32(v369, v308);
          v313.i64[0] = 0x100000001;
          v313.i64[1] = 0x100000001;
          v314 = vsubq_s32(v282, v306);
          v315 = vsubq_s32(v283, v306);
          v316 = vuzp1_s16(v373, v373);
          v317 = vsubq_s32(v295, v306);
          v318 = vsubq_s32(v284, v306);
          v319 = vdupq_n_s64(((2 * v194[1]) << ~v191) | (*v194 >> v191));
          if (vaddvq_s32(vceqq_s32(v367, v313)))
          {
            v320 = vnegq_s32(vandq_s8(v350, v313));
            v321.i64[0] = v318.i64[0];
            v322.i64[1] = v317.i64[1];
            v321.i64[1] = v317.i64[0];
            v322.i64[0] = v318.i64[1];
            v323 = vbslq_s8(v320, v322, v317);
            v324 = vbslq_s8(v320, v321, v318);
            v325.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v325.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v326 = vandq_s8(vqtbl4q_s8(*(&v314 - 1), v325), v320);
            v374 = v316;
            v375.val[0] = vaddq_s32(v323, vandq_s8(vqtbl4q_s8(*(&v314 - 1), xmmword_29D2F10B0), v320));
            v375.val[1] = vaddq_s32(v314, vandq_s8(vqtbl4q_s8(*(&v314 - 1), xmmword_29D2F10C0), v320));
            v375.val[2] = vaddq_s32(v315, v326);
            v375.val[3] = vaddq_s32(v324, v326);
            v327 = vandq_s8(vqtbl4q_s8(v375, v325), v320);
            v317 = vaddq_s32(v375.val[0], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F10D0), v320));
            v314 = vaddq_s32(v375.val[1], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F10E0), v320));
            v315 = vaddq_s32(v375.val[2], v327);
            v318 = vaddq_s32(v375.val[3], v327);
            v376.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F10B0), v320), v298);
            v376.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F10F0), v320), v299);
            v376.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, v325), v320), v300);
            v376.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F1100), v320), v301);
            v328 = vandq_s8(vqtbl4q_s8(v376, xmmword_29D2F10D0), v320);
            v375.val[0] = vandq_s8(vqtbl4q_s8(v376, v325), v320);
            v298 = vaddq_s32(v328, v376.val[0]);
            v299 = vaddq_s32(v376.val[1], v328);
            v300 = vaddq_s32(v376.val[2], v375.val[0]);
            v301 = vaddq_s32(v376.val[3], v375.val[0]);
            v375.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v303.i8, xmmword_29D2F0EB0), v320), v303);
            v375.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v303.i8, xmmword_29D2F0FB0), v320), v304);
            v375.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v303.i8, xmmword_29D2F10B0), v320), v305);
            v375.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v303.i8, xmmword_29D2F10C0), v320), v307);
            v376.val[2] = vandq_s8(vqtbl4q_s8(v375, v325), v320);
            v303 = vaddq_s32(v375.val[0], v376.val[2]);
            v304 = vaddq_s32(v375.val[1], v376.val[2]);
            v305 = vaddq_s32(v375.val[2], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F0FE0), v320));
            v307 = vaddq_s32(v375.val[3], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F1110), v320));
            v329 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v309.i8, xmmword_29D2F0EB0), v320), v309);
            v375.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v309.i8, xmmword_29D2F1120), v320), v310);
            v375.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v309.i8, xmmword_29D2F10B0), v320), v311);
            v375.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v309.i8, xmmword_29D2F10C0), v320), v312);
            v330 = vandq_s8(vqtbl4q_s8(v375, v325), v320);
            v309 = vaddq_s32(v329, v330);
            v310 = vaddq_s32(v375.val[0], v330);
            v311 = vaddq_s32(v375.val[1], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F0FE0), v320));
            v312 = vaddq_s32(v375.val[2], vandq_s8(vqtbl4q_s8(v375, xmmword_29D2F1130), v320));
            v316 = v374;
          }

          v331 = vaddq_s32(v319, v317);
          v332 = vaddq_s32(v314, v319);
          v333 = vaddq_s32(v315, v319);
          v334 = vaddq_s32(v318, v319);
          v335 = vaddq_s32(v298, v319);
          v336 = vaddq_s32(v299, v319);
          v337 = vaddq_s32(v300, v319);
          v338 = vaddq_s32(v301, v319);
          v339 = vaddq_s32(v303, v319);
          v340 = vaddq_s32(v304, v319);
          v341 = vaddq_s32(v305, v319);
          v342 = vaddq_s32(v307, v319);
          v343 = vaddq_s32(v309, v319);
          v344 = vaddq_s32(v310, v319);
          v345 = vaddq_s32(v311, v319);
          v346 = vaddq_s32(v312, v319);
          v347 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v316 & 0xFF00FF00FF00FFLL)));
          v348 = (a1 + a2);
          *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v347), v331);
          a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v347), v332);
          a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v347), v335);
          a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v347), v336);
          v349 = (a1 + 2 * a2);
          *v348 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v347), v333);
          v348[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v347), v334);
          v348[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v347), v337);
          v348[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v338, xmmword_29D2F11B0), v347), v338);
          *v349 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v339, xmmword_29D2F11B0), v347), v339);
          v349[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v340, xmmword_29D2F11B0), v347), v340);
          v349[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v343, xmmword_29D2F11B0), v347), v343);
          v349[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v344, xmmword_29D2F11B0), v347), v344);
          v31 = (v349 + a2);
          v26 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v341, xmmword_29D2F11B0), v347), v341);
          v27 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v342, xmmword_29D2F11B0), v347), v342);
          v30 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v345, xmmword_29D2F11B0), v347), v345);
          v32 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v346, xmmword_29D2F11B0), v347), v346);
          goto LABEL_7;
        }
      }

      else if ((v55 & 1) == 0)
      {
        v203 = v72;
        v204 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v202);
        v205 = vshlq_u64(v204, v195);
        v206 = vuzp1q_s32(vzip1q_s64(v204, v205), vzip2q_s64(v204, v205));
        goto LABEL_139;
      }
    }

LABEL_141:
    v4 = 0;
    *&v5.f64[0] = 0xFFFFFFFFLL;
    *&v5.f64[1] = 0xFFFFFFFFLL;
    *a1 = v5;
    a1[1] = v5;
    v209 = (a1 + a2);
    *v209 = v5;
    v209[1] = v5;
    v210 = (a1 + 2 * a2);
    *v210 = v5;
    v210[1] = v5;
    v8 = (a1 + 2 * a2 + a2);
    goto LABEL_142;
  }

  v9 = vld1q_dup_f64(a3);
  *a1 = v9;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v9;
  v10 = (a1 + a2);
  *v10 = v9;
  v10[1] = v9;
  v10[2] = v9;
  v10[3] = v9;
  v11 = (a1 + 2 * a2);
  *v11 = v9;
  v11[1] = v9;
  v11[2] = v9;
  v11[3] = v9;
  v12 = (a1 + 2 * a2 + a2);
  *v12 = v9;
  v12[1] = v9;
  v4 = 8;
  v12[2] = v9;
  v12[3] = v9;
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 12, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 76, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v7 = vdupq_lane_s64(a3->i64[0], 0);
  v581 = *(&a3[1] + a4);
  v588 = a3[2];
  v589 = a3[3];
  v590 = *(&a3[2] + a4);
  v574 = *(&a3[3] + a4);
  v8 = vsubq_s32(v574, v7);
  v595 = vsubq_s32(a3[1], v7);
  v596 = vsubq_s32(*a3, v7);
  v597 = vsubq_s32(*(a3 + a4), v7);
  v598 = vsubq_s32(v581, v7);
  v9 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v596, v595), v597), v598), xmmword_29D2F11C0);
  v10 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v596, v595), v597), v598), xmmword_29D2F11C0);
  v11 = vpmaxq_s32(v9, v9);
  v12 = vpminq_s32(v10, v10);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v14 = vmaxq_s32(v11, v13);
  v15 = vminq_s32(v12, v13);
  v16 = vzip1q_s32(v11, v12);
  v17.i64[0] = 0x2000000020;
  v17.i64[1] = 0x2000000020;
  v18 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v16)), vceqzq_s32(v16));
  v19 = vsubq_s32(v588, v7);
  v20 = vsubq_s32(v589, v7);
  v593 = vsubq_s32(v590, v7);
  v21 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v19, v20), v593), v8), xmmword_29D2F11C0);
  v22 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v19, v20), v593), v8), xmmword_29D2F11C0);
  v23 = vpmaxq_s32(v21, v21);
  v24 = vpminq_s32(v22, v22);
  v25 = vmaxq_s32(v14, v23);
  v26 = vminq_s32(v15, v24);
  v27 = vzip1q_s32(v23, v24);
  v29 = *v6;
  v30 = v6[1];
  v31 = v6[2];
  v32 = v6[3];
  v28 = (v6 + a4);
  v33 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v27)), vceqzq_s32(v27));
  v34 = vsubq_s32(v29, v7);
  v35 = vsubq_s32(v30, v7);
  v585 = v29;
  v586 = v30;
  v587 = *v28;
  v36 = vsubq_s32(*v28, v7);
  v37 = vsubq_s32(v28[1], v7);
  v38 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v34, v35), v36), v37), xmmword_29D2F11C0);
  v39 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v34, v35), v36), v37), xmmword_29D2F11C0);
  v40 = vpmaxq_s32(v38, v38);
  v41 = vpminq_s32(v39, v39);
  v42 = vmaxq_s32(v25, v40);
  v43 = vminq_s32(v26, v41);
  v44 = vzip1q_s32(v40, v41);
  v45 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v44)), vceqzq_s32(v44));
  v46 = vsubq_s32(v31, v7);
  v582 = v31;
  v583 = v32;
  v584 = v28[2];
  v599 = vsubq_s32(v32, v7);
  v600 = vsubq_s32(v584, v7);
  v601 = vsubq_s32(v28[3], v7);
  v47 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v46, v599), v600), v601), xmmword_29D2F11C0);
  v48 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v46, v599), v600), v601), xmmword_29D2F11C0);
  v49 = vpmaxq_s32(v47, v47);
  v50 = vpminq_s32(v48, v48);
  v51 = vmaxq_s32(v42, v49);
  v52 = vminq_s32(v43, v50);
  v53 = vzip1q_s32(v49, v50);
  v54 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v53)), vceqzq_s32(v53));
  v55 = vpmaxq_s32(v18, v18);
  v56 = vpmaxq_s32(v33, v33);
  v57 = vpmaxq_s32(v45, v45);
  v58 = vpmaxq_s32(v54, v54);
  v59 = vmaxq_s32(vmaxq_s32(v55, v56), vmaxq_s32(v57, v58));
  v60 = vclzq_s32(vsubq_s32(v51, v52));
  v61 = vsubq_s32(v17, v60);
  v62 = vminq_s32(v61, v59);
  if (vmaxvq_s32(v62))
  {
    v569 = v28[1];
    v570 = v28[2];
    v571 = v28[3];
    v602 = vcgtq_s32(v59, v61);
    v63.i64[0] = 0x800000008;
    v63.i64[1] = 0x800000008;
    v64.i64[0] = 0x300000003;
    v64.i64[1] = 0x300000003;
    v65 = v8;
    v66.i64[0] = 0xF0000000FLL;
    v66.i64[1] = 0xF0000000FLL;
    v563 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v55), v66), 0);
    v567 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v56), v66), 0);
    v572 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v57), v66), 0);
    v67 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v58), v66), 0);
    v68.i64[0] = 0x400000004;
    v68.i64[1] = 0x400000004;
    v575 = vorrq_s8(vbicq_s8(v68, vceqq_s32(vaddq_s32(v67, v572), vnegq_s32(vaddq_s32(v563, v567)))), vorrq_s8(vandq_s8(vceqzq_s32(v62), v64), vandq_s8(v602, v63)));
    v565 = v60;
    v69 = vsubq_s32(v596, vqtbl1q_s8(v596, xmmword_29D2F11B0));
    v70 = vsubq_s32(v595, vqtbl1q_s8(v595, xmmword_29D2F11B0));
    v71 = vsubq_s32(v597, vqtbl1q_s8(v597, xmmword_29D2F11B0));
    v72 = vsubq_s32(v598, vqtbl1q_s8(v598, xmmword_29D2F11B0));
    v577 = v19;
    v579 = v20;
    v73 = vsubq_s32(v20, vqtbl1q_s8(v20, xmmword_29D2F11B0));
    v74 = vsubq_s32(v593, vqtbl1q_s8(v593, xmmword_29D2F11B0));
    v591 = v65;
    v75 = vsubq_s32(v65, vqtbl1q_s8(v65, xmmword_29D2F11B0));
    v76 = vsubq_s32(v35, vqtbl1q_s8(v35, xmmword_29D2F11B0));
    v77 = vsubq_s32(v36, vqtbl1q_s8(v36, xmmword_29D2F11B0));
    v78 = vsubq_s32(v37, vqtbl1q_s8(v37, xmmword_29D2F11B0));
    v79 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v69, v70), v71), v72);
    v557 = v70;
    v559 = v69;
    v80 = v71;
    v81 = vsubq_s32(v19, vqtbl1q_s8(v19, xmmword_29D2F11B0));
    v541 = v72;
    v543 = v80;
    v82 = vqtbl1q_s8(v79, xmmword_29D2F11C0);
    v83 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v69, v70), v80), v72), xmmword_29D2F11C0);
    v84 = vpmaxq_s32(v82, v82);
    v85 = vpminq_s32(v83, v83);
    v86.i64[0] = 0x8000000080000000;
    v86.i64[1] = 0x8000000080000000;
    v87 = vmaxq_s32(v84, v86);
    v80.i64[0] = 0x8000000080000000;
    v80.i64[1] = 0x8000000080000000;
    v88 = vminq_s32(v85, v80);
    v89 = vzip1q_s32(v84, v85);
    v90 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v89)), vceqzq_s32(v89));
    v91 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v81, v73), v74), v75);
    v553 = v73;
    v555 = v74;
    v92 = vminq_s32(v81, v73);
    v93 = v75;
    v94 = vminq_s32(v92, v74);
    v95 = vsubq_s32(v34, vqtbl1q_s8(v34, xmmword_29D2F11B0));
    v96 = vqtbl1q_s8(v91, xmmword_29D2F11C0);
    v97 = vqtbl1q_s8(vminq_s32(v94, v75), xmmword_29D2F11C0);
    v98 = vpmaxq_s32(v96, v96);
    v99 = vpminq_s32(v97, v97);
    v100 = vmaxq_s32(v87, v98);
    v101 = vminq_s32(v88, v99);
    v102 = vzip1q_s32(v98, v99);
    v103 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v102)), vceqzq_s32(v102));
    v104 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v95, v76), v77), v78), xmmword_29D2F11C0);
    v105 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v95, v76), v77), v78), xmmword_29D2F11C0);
    v106 = vpmaxq_s32(v104, v104);
    v107 = vpminq_s32(v105, v105);
    v108 = v37;
    v561 = v52;
    v109 = vmaxq_s32(v100, v106);
    v592 = v34;
    v110 = vminq_s32(v101, v107);
    v111 = vzip1q_s32(v106, v107);
    v112 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v111)), vceqzq_s32(v111));
    v550 = vsubq_s32(v599, vqtbl1q_s8(v599, xmmword_29D2F11B0));
    v551 = vsubq_s32(v46, vqtbl1q_s8(v46, xmmword_29D2F11B0));
    v547 = vsubq_s32(v601, vqtbl1q_s8(v601, xmmword_29D2F11B0));
    v549 = vsubq_s32(v600, vqtbl1q_s8(v600, xmmword_29D2F11B0));
    v113 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v551, v550), v549), v547), xmmword_29D2F11C0);
    v114 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v551, v550), v549), v547), xmmword_29D2F11C0);
    v115 = vpmaxq_s32(v113, v113);
    v116 = vpminq_s32(v114, v114);
    v117 = vminq_s32(v110, v116);
    v118 = vzip1q_s32(v115, v116);
    v119 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v118)), vceqzq_s32(v118));
    v120 = vpmaxq_s32(v90, v90);
    v121 = vpmaxq_s32(v103, v103);
    v122 = vpmaxq_s32(v112, v112);
    v123 = vpmaxq_s32(v119, v119);
    v124 = vmaxq_s32(vmaxq_s32(v120, v121), vmaxq_s32(v122, v123));
    v545 = v117;
    v125 = vsubq_s32(vmaxq_s32(v109, v115), v117);
    v126 = vclzq_s32(v125);
    v127 = vsubq_s32(v17, v126);
    v128 = vcgtq_s32(v124, v127);
    v129 = vminq_s32(v127, v124);
    v124.i64[0] = 0x1000000010;
    v124.i64[1] = 0x1000000010;
    v109.i64[0] = 0x1800000018;
    v109.i64[1] = 0x1800000018;
    v130 = v128;
    v131 = vbslq_s8(v128, v109, v124);
    v128.i64[0] = 0x300000003;
    v128.i64[1] = 0x300000003;
    v132 = vorrq_s8(vandq_s8(vceqzq_s32(v129), v128), v131);
    v133 = vmaxq_s32(vminq_s32(vsubq_s32(v129, v120), v66), 0);
    v134 = vmaxq_s32(vminq_s32(vsubq_s32(v129, v121), v66), 0);
    v135 = vmaxq_s32(vminq_s32(vsubq_s32(v129, v122), v66), 0);
    v136 = vmaxq_s32(vminq_s32(vsubq_s32(v129, v123), v66), 0);
    v128.i64[0] = 0x400000004;
    v128.i64[1] = 0x400000004;
    v137 = vorrq_s8(vbicq_s8(v128, vceqq_s32(vaddq_s32(v136, v135), vnegq_s32(vaddq_s32(v133, v134)))), v132);
    v540 = v137;
    *v137.i8 = vqmovn_u32(v137);
    v123.i64[0] = 0x8000800080008;
    v123.i64[1] = 0x8000800080008;
    *v125.i8 = vqmovn_u32(v129);
    v138.i64[0] = 0x10001000100010;
    v138.i64[1] = 0x10001000100010;
    v128.i64[0] = 0x3000300030003;
    v128.i64[1] = 0x3000300030003;
    v75.i64[0] = 0x2000200020002;
    v75.i64[1] = 0x2000200020002;
    v139 = v36;
    v140 = v35;
    v141.i64[0] = 0x20002000200020;
    v141.i64[1] = 0x20002000200020;
    v142 = vaddq_s16(vaddq_s16(vbicq_s8(v125, vceqzq_s16(vandq_s8(v137, v123))), vandq_s8(vshlq_n_s16(v137, 2uLL), v138)), vandq_s8(vceqq_s16(vandq_s8(v137, v128), v75), v141));
    v143 = vsubq_s32(v129, v133);
    *v133.i8 = vqmovn_u32(v143);
    v125.i64[0] = 0x7000700070007;
    v125.i64[1] = 0x7000700070007;
    v144 = vmlaq_s16(v142, v133, v125);
    v133.i64[1] = v575.i64[1];
    v145 = v575;
    *v133.i8 = vqmovn_u32(v575);
    v146 = v46;
    *v46.i8 = vqmovn_u32(v62);
    v147 = vaddq_s16(vaddq_s16(vbicq_s8(v46, vceqzq_s16(vandq_s8(v133, v123))), vandq_s8(vshlq_n_s16(v133, 2uLL), v138)), vandq_s8(vceqq_s16(vandq_s8(v133, v128), v75), v141));
    v128.i64[1] = v563.i64[1];
    v148 = vsubq_s32(v62, v563);
    *v128.i8 = vqmovn_u32(v148);
    v149 = vmlaq_s16(v147, v128, v125);
    v128.i64[0] = 0x1F0000001FLL;
    v128.i64[1] = 0x1F0000001FLL;
    v123.i64[0] = -1;
    v123.i64[1] = -1;
    v150 = vandq_s8(vsubq_s32(vshlq_s32(v123, vsubq_s32(v128, v565)), v561), v602);
    v151 = vsubq_s32(v129, v134);
    v152 = vsubq_s32(v129, v135);
    v153 = vsubq_s32(v129, v136);
    v154 = vaddq_s32(vaddq_s32(v152, v151), v153);
    *v154.i8 = vqmovn_u32(v154);
    v155 = vaddq_s16(v144, vshlq_n_s16(v154, 3uLL));
    v156 = vsubq_s32(v62, v567);
    v157 = vsubq_s32(v62, v572);
    v603 = vsubq_s32(v62, v67);
    v158 = vaddq_s32(vaddq_s32(v157, v156), v603);
    *v158.i8 = vqmovn_u32(v158);
    v159 = vshlq_n_s16(v158, 3uLL);
    v160 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v149, v159), v155)).i64[0], 0);
    v161 = vaddvq_s32(v160);
    v163 = a5 < 2 || a6 < 2;
    if (v161)
    {
      v164.i64[0] = 0x1F0000001FLL;
      v164.i64[1] = 0x1F0000001FLL;
      v165.i64[0] = -1;
      v165.i64[1] = -1;
      v166 = vandq_s8(vsubq_s32(vshlq_s32(v165, vsubq_s32(v164, v126)), v545), v130);
      v167 = vcltzq_s32(vshlq_n_s32(v160, 0x1FuLL));
      v596 = vbslq_s8(v167, v559, v596);
      v595 = vbslq_s8(v167, v557, v595);
      v597 = vbslq_s8(v167, v543, v597);
      v598 = vbslq_s8(v167, v541, v598);
      v168 = vbslq_s8(v167, v81, v577);
      v169 = vbslq_s8(v167, v553, v579);
      v170 = vbslq_s8(v167, v555, v593);
      v591 = vbslq_s8(v167, v93, v591);
      v592 = vbslq_s8(v167, v95, v592);
      v171 = vbslq_s8(v167, v76, v140);
      v172 = vbslq_s8(v167, v77, v139);
      v573 = vbslq_s8(v167, v78, v108);
      v173 = vbslq_s8(v167, v551, v146);
      v599 = vbslq_s8(v167, v550, v599);
      v600 = vbslq_s8(v167, v549, v600);
      v601 = vbslq_s8(v167, v547, v601);
      v568 = vbslq_s8(v167, v143, v148);
      v156 = vbslq_s8(v167, v151, v156);
      v157 = vbslq_s8(v167, v152, v157);
      v159 = vbslq_s8(v167, v153, v603);
      v603 = v159;
      v150 = vbslq_s8(v167, v166, v150);
      v62 = vbslq_s8(v167, v129, v62);
      v145 = vbslq_s8(v167, v540, v575);
      v160 = vandq_s8(vqtbl1q_s8(v7, xmmword_29D2F11B0), v167);
      v7 = vsubq_s32(v7, v160);
      v174 = v172;
      v175 = v171;
      v176 = v170;
      v177 = v169;
    }

    else
    {
      v568 = v148;
      v573 = v108;
      v173 = v146;
      v174 = v139;
      v175 = v140;
      v176 = v593;
      v168 = v577;
      v177 = v579;
    }

    v180 = *a3;
    v181 = a3[1];
    v182 = *(a3 + a4);
    v183 = *(&a3[1] + a4);
    if (v163)
    {
      v184 = v595;
      v185 = v568;
    }

    else
    {
      v558 = v7;
      v560 = v150;
      v578 = v168;
      v580 = v177;
      v594 = v176;
      v562 = v175;
      v564 = v174;
      v566 = v173;
      v556 = v156;
      v186 = vqtbl4q_s8(*v180.i8, xmmword_29D2F1160);
      v187 = vsubq_s32(*a3, vqtbl4q_s8(*v180.i8, xmmword_29D2F10B0));
      v188 = vsubq_s32(a3[1], vqtbl4q_s8(*v180.i8, xmmword_29D2F10C0));
      v189 = vsubq_s32(*(a3 + a4), v186);
      v190 = vsubq_s32(v581, v186);
      v576 = v145;
      v604.val[0] = a3[2];
      v604.val[1] = a3[3];
      v604.val[2] = *(&a3[2] + a4);
      v604.val[3].i64[0] = *(a3[3].i64 + a4);
      v604.val[3].i64[1] = *(&a3[1].i64[1] + a4);
      v191 = v157;
      v192 = vqtbl4q_s8(v604, xmmword_29D2F1100);
      v193 = vsubq_s32(v588, vqtbl4q_s8(v604, xmmword_29D2F10B0));
      v194 = vsubq_s32(v589, vqtbl4q_s8(v604, xmmword_29D2F10F0));
      v195 = vsubq_s32(v590, vqtbl4q_s8(v604, xmmword_29D2F1160));
      v604.val[2].i64[1] = v570.i64[1];
      v605.val[0] = v585;
      v605.val[1] = v586;
      v605.val[2] = v587;
      v605.val[3].i64[0] = v569.i64[0];
      v605.val[3].i64[1] = v604.val[3].i64[1];
      v196 = vsubq_s32(v574, v192);
      v197 = v191;
      v198 = vqtbl4q_s8(v605, xmmword_29D2F10C0);
      v199 = vsubq_s32(v585, vqtbl4q_s8(v605, xmmword_29D2F1170));
      v200 = vsubq_s32(v586, vqtbl4q_s8(v605, xmmword_29D2F1180));
      v201 = vsubq_s32(v587, vqtbl4q_s8(v605, xmmword_29D2F10B0));
      v605.val[0] = v582;
      v605.val[1] = v583;
      v605.val[2] = v584;
      v605.val[3].i64[0] = v571.i64[0];
      v605.val[3].i64[1] = v604.val[3].i64[1];
      v202 = vqtbl4q_s8(v605, xmmword_29D2F10C0);
      v203 = vsubq_s32(v582, vqtbl4q_s8(v605, xmmword_29D2F1170));
      v204 = vsubq_s32(v583, vqtbl4q_s8(v605, xmmword_29D2F1120));
      v205 = vsubq_s32(v584, vqtbl4q_s8(v605, xmmword_29D2F10B0));
      v206 = vsubq_s32(v569, v198);
      v207 = v201;
      v208 = v200;
      v209 = v199;
      v160.i64[0] = v190.i64[0];
      v160.i64[1] = v187.i64[0];
      v187.i64[0] = v190.i64[1];
      v210 = vsubq_s32(v571, v202);
      v552 = v189;
      v554 = v188;
      v546 = v187;
      v211 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v187, v188), v189), v160), xmmword_29D2F11C0);
      v212 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v187, v188), v189), v160), xmmword_29D2F11C0);
      v213 = vpmaxq_s32(v211, v211);
      v214 = vpminq_s32(v212, v212);
      v215.i64[0] = 0x8000000080000000;
      v215.i64[1] = 0x8000000080000000;
      v216 = vmaxq_s32(v213, v215);
      v217.i64[0] = 0x8000000080000000;
      v217.i64[1] = 0x8000000080000000;
      v218 = vminq_s32(v214, v217);
      v219 = vzip1q_s32(v213, v214);
      v214.i64[0] = 0x2000000020;
      v214.i64[1] = 0x2000000020;
      v220 = vbicq_s8(vsubq_s32(v214, vclsq_s32(v219)), vceqzq_s32(v219));
      v221 = vpmaxq_s32(v220, v220);
      v548 = v195;
      v544 = v196;
      v222 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v193, v194), v195), v196), xmmword_29D2F11C0);
      v223 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v193, v194), v195), v196), xmmword_29D2F11C0);
      v224 = vpmaxq_s32(v222, v222);
      v225 = vpminq_s32(v223, v223);
      v226 = vmaxq_s32(v216, v224);
      v227 = vminq_s32(v218, v225);
      v228 = vzip1q_s32(v224, v225);
      v229 = vbicq_s8(vsubq_s32(v214, vclsq_s32(v228)), vceqzq_s32(v228));
      v230 = vpmaxq_s32(v229, v229);
      v231 = v62;
      v232 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v199, v200), v207), v206), xmmword_29D2F11C0);
      v233 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v199, v200), v207), v206), xmmword_29D2F11C0);
      v234 = vpmaxq_s32(v232, v232);
      v235 = vpminq_s32(v233, v233);
      v236 = vmaxq_s32(v226, v234);
      v237 = vminq_s32(v227, v235);
      v238 = vzip1q_s32(v234, v235);
      v239 = vbicq_s8(vsubq_s32(v214, vclsq_s32(v238)), vceqzq_s32(v238));
      v240 = vpmaxq_s32(v239, v239);
      v241 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v203, v204), v205), v210), xmmword_29D2F11C0);
      v242 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v203, v204), v205), v210), xmmword_29D2F11C0);
      v243 = vpmaxq_s32(v241, v241);
      v244 = vpminq_s32(v242, v242);
      v7 = vminq_s32(v237, v244);
      v245 = vzip1q_s32(v243, v244);
      v246 = vbicq_s8(vsubq_s32(v214, vclsq_s32(v245)), vceqzq_s32(v245));
      v247 = vpmaxq_s32(v246, v246);
      v248 = vmaxq_s32(vmaxq_s32(v221, v230), vmaxq_s32(v240, v247));
      v249 = vclzq_s32(vsubq_s32(vmaxq_s32(v236, v243), v7));
      v542 = v249;
      v250 = vsubq_s32(v214, v249);
      v159 = vcgtq_s32(v248, v250);
      v251 = vminq_s32(v250, v248);
      v250.i64[0] = 0x900000009;
      v250.i64[1] = 0x900000009;
      v604.val[1].i64[0] = 0x200000002;
      v604.val[1].i64[1] = 0x200000002;
      v252 = vorrq_s8(vandq_s8(vceqzq_s32(v251), v604.val[1]), vsubq_s32(vandq_s8(v159, v250), vmvnq_s8(v159)));
      v604.val[0].i64[0] = 0xF0000000FLL;
      v604.val[0].i64[1] = 0xF0000000FLL;
      v253 = vmaxq_s32(vminq_s32(vsubq_s32(v251, v221), v604.val[0]), 0);
      v254 = vmaxq_s32(vminq_s32(vsubq_s32(v251, v230), v604.val[0]), 0);
      v255 = vmaxq_s32(vminq_s32(vsubq_s32(v251, v240), v604.val[0]), 0);
      v256 = vmaxq_s32(vminq_s32(vsubq_s32(v251, v247), v604.val[0]), 0);
      v257 = vsubq_s32(v251, v253);
      v604.val[0].i64[0] = 0x400000004;
      v604.val[0].i64[1] = 0x400000004;
      v258 = vorrq_s8(vbicq_s8(v604.val[0], vceqq_s32(vaddq_s32(v256, v255), vnegq_s32(vaddq_s32(v253, v254)))), v252);
      *v252.i8 = vqmovn_u32(v258);
      v604.val[0].i64[0] = 0x8000800080008;
      v604.val[0].i64[1] = 0x8000800080008;
      *v604.val[2].i8 = vqmovn_u32(v251);
      v604.val[3].i64[0] = 0x2000200020002;
      v604.val[3].i64[1] = 0x2000200020002;
      v199.i64[0] = 0x10001000100010;
      v199.i64[1] = 0x10001000100010;
      v188.i64[0] = 0x3000300030003;
      v188.i64[1] = 0x3000300030003;
      v604.val[1] = vaddq_s16(vbicq_s8(v604.val[2], vceqzq_s16(vandq_s8(v252, v604.val[0]))), vandq_s8(vshlq_n_s16(v252, 2uLL), v199));
      v604.val[2].i64[0] = 0x20002000200020;
      v604.val[2].i64[1] = 0x20002000200020;
      v259 = vaddq_s16(v604.val[1], vandq_s8(vceqq_s16(vandq_s8(v252, v188), v604.val[3]), v604.val[2]));
      *v604.val[1].i8 = vqmovn_u32(v257);
      v189.i64[0] = 0x7000700070007;
      v189.i64[1] = 0x7000700070007;
      v260 = vmlaq_s16(v259, v604.val[1], v189);
      *v604.val[1].i8 = vqmovn_u32(v576);
      *v249.i8 = vqmovn_u32(v231);
      v261 = vandq_s8(vshlq_n_s16(v604.val[1], 2uLL), v199);
      v262 = vaddq_s16(vaddq_s16(vbicq_s8(v249, vceqzq_s16(vandq_s8(v604.val[1], v604.val[0]))), v261), vandq_s8(vceqq_s16(vandq_s8(v604.val[1], v188), v604.val[3]), v604.val[2]));
      v185 = v568;
      *v261.i8 = vqmovn_u32(v568);
      v263 = vmlaq_s16(v262, v261, v189);
      v264 = vsubq_s32(v251, v254);
      v265 = vsubq_s32(v251, v255);
      v266 = vsubq_s32(v251, v256);
      v267 = vaddq_s32(vaddq_s32(v265, v264), v266);
      *v267.i8 = vqmovn_u32(v267);
      v268 = vaddq_s16(v260, vshlq_n_s16(v267, 3uLL));
      v269 = vaddq_s32(vaddq_s32(v197, v556), v603);
      *v269.i8 = vqmovn_u32(v269);
      v270 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v263, vshlq_n_s16(v269, 3uLL)), v268)).i64[0], 0);
      if (vaddvq_s32(v270))
      {
        v271.i64[0] = 0x1F0000001FLL;
        v271.i64[1] = 0x1F0000001FLL;
        v272.i64[0] = -1;
        v272.i64[1] = -1;
        v273 = vandq_s8(vsubq_s32(vshlq_s32(v272, vsubq_s32(v271, v542)), v7), v159);
        v274 = v203;
        v275 = v204;
        v276 = v205;
        v277 = v210;
        v180 = *a3;
        v181 = a3[1];
        v182 = *(a3 + a4);
        v183 = *(&a3[1] + a4);
        v278 = vcltzq_s32(vshlq_n_s32(v270, 0x1FuLL));
        v7.i64[0] = vbslq_s8(v278, vextq_s8(v183, v183, 8uLL), v558).u64[0];
        v596 = vbslq_s8(v278, v546, v596);
        v279 = v231;
        v184 = vbslq_s8(v278, v554, v595);
        v597 = vbslq_s8(v278, v552, v597);
        v598 = vbslq_s8(v278, v160, v598);
        v168 = vbslq_s8(v278, v193, v578);
        v177 = vbslq_s8(v278, v194, v580);
        v176 = vbslq_s8(v278, v548, v594);
        v159.i64[1] = v544.i64[1];
        v591 = vbslq_s8(v278, v544, v591);
        v592 = vbslq_s8(v278, v209, v592);
        v175 = vbslq_s8(v278, v208, v562);
        v174 = vbslq_s8(v278, v207, v564);
        v573 = vbslq_s8(v278, v206, v573);
        v173 = vbslq_s8(v278, v274, v566);
        v599 = vbslq_s8(v278, v275, v599);
        v600 = vbslq_s8(v278, v276, v600);
        v601 = vbslq_s8(v278, v277, v601);
        v185 = vbslq_s8(v278, v257, v568);
        v156 = vbslq_s8(v278, v264, v556);
        v280 = vbslq_s8(v278, v265, v197);
        v160 = vbslq_s8(v278, v266, v603);
        v603 = v160;
        v150 = vbslq_s8(v278, v273, v560);
        v62 = vbslq_s8(v278, v251, v279);
        v145 = vbslq_s8(v278, v258, v576);
        v157 = v280;
      }

      else
      {
        v174 = v564;
        v173 = v566;
        v62 = v231;
        v150 = v560;
        v175 = v562;
        v176 = v594;
        v184 = v595;
        v168 = v578;
        v177 = v580;
        v157 = v197;
        v156 = v556;
        v145 = v576;
        v180 = *a3;
        v181 = a3[1];
        v182 = *(a3 + a4);
        v183 = *(&a3[1] + a4);
        v7.i64[0] = v558.i64[0];
      }
    }

    *v160.i8 = vqmovn_u32(v145);
    v281.i64[0] = 0x8000800080008;
    v281.i64[1] = 0x8000800080008;
    *v159.i8 = vqmovn_u32(v62);
    v282 = vbicq_s8(v159, vceqzq_s16(vandq_s8(v160, v281)));
    v283.i64[0] = 0x2000200020002;
    v283.i64[1] = 0x2000200020002;
    v284.i64[0] = 0x10001000100010;
    v284.i64[1] = 0x10001000100010;
    v285 = vandq_s8(vshlq_n_s16(v160, 2uLL), v284);
    v284.i64[0] = 0x3000300030003;
    v284.i64[1] = 0x3000300030003;
    v286 = vceqq_s16(vandq_s8(v160, v284), v283);
    v283.i64[0] = 0x20002000200020;
    v283.i64[1] = 0x20002000200020;
    v287 = vandq_s8(v286, v283);
    *v283.i8 = vqmovn_u32(v185);
    v284.i64[0] = 0x7000700070007;
    v284.i64[1] = 0x7000700070007;
    v288 = v156;
    v289 = vaddq_s32(vaddq_s32(v157, v156), v603);
    *v289.i8 = vqmovn_u32(v289);
    v290 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v282, v285), v287), v283, v284), vshlq_n_s16(v289, 3uLL));
    if ((vpaddq_s16(v290, v290).i16[0] + 91) > 0x7FF)
    {
      *a1 = v180;
      a1[1] = v181;
      a1[2] = v182;
      a1[3] = v183;
      a1[4] = v588;
      a1[5] = v589;
      a1[6] = v590;
      a1[7] = v574;
      a1[8] = v585;
      a1[9] = v586;
      a1[10] = v587;
      a1[11] = v569;
      v294 = a1 + 12;
      v178 = -1;
      result = 256;
      *v294 = v582;
      v294[1] = v583;
      v294[2] = v584;
      v294[3] = v571;
    }

    else
    {
      v291 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v292 = 8 * (a1 & 7);
      if (v292)
      {
        v293 = *v291 & ~(-1 << v292);
      }

      else
      {
        v293 = 0;
      }

      *a2 = 0;
      if (v62.i32[0])
      {
        v295 = ((v62.i16[0] << 10) + 31744) & 0x7C00;
      }

      else
      {
        v295 = 0;
      }

      if (v62.i32[1])
      {
        v296 = ((v62.i32[1] << 15) + 1015808) & 0xF8000;
      }

      else
      {
        v296 = 0;
      }

      v297 = v145.i8[0] & 0x1F | (32 * (v145.i8[4] & 0x1F)) | v295 | v296;
      v298 = (v297 << v292) | v293;
      if (v292 >= 0x2C)
      {
        *v291 = v298;
        v298 = v297 >> (-8 * (a1 & 7u));
      }

      v299 = (v292 + 20) & 0x3C;
      *(v291 + (((v292 + 20) >> 3) & 8)) = v298 | (v7.i64[0] << v299);
      v300 = v292 + 84;
      v301 = vsubq_s32(v62, v185);
      v302 = vsubq_s32(v62, v288);
      v303 = vsubq_s32(v62, v157);
      v304 = vsubq_s32(v62, v603);
      *v301.i8 = vqmovn_u32(v301);
      *v301.i8 = vqmovn_u16(v301);
      *v302.i8 = vqmovn_u32(v302);
      *v302.i8 = vqmovn_u16(v302);
      *v303.i8 = vqmovn_u32(v303);
      *v303.i8 = vqmovn_u16(v303);
      *v304.i8 = vqmovn_u32(v304);
      *v304.i8 = vqmovn_u16(v304);
      v301.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v301, v302), vzip1q_s8(v303, v304)), vzip1q_s16(vtrn2q_s8(v301, v302), vtrn2q_s8(v303, v304))).u64[0];
      v302.i64[0] = 0x400000004;
      v302.i64[1] = 0x400000004;
      v303.i64[0] = 0x404040404040404;
      v303.i64[1] = 0x404040404040404;
      v305 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v145, v302))), v303);
      v303.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v303.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v304.i64[0] = -1;
      v304.i64[1] = -1;
      v306 = vandq_s8(vshlq_u8(v304, vorrq_s8(v305, v303)), v301.u64[0]);
      v307 = vmovl_u8(*v305.i8);
      v308 = vpaddq_s16(vshlq_u16(vmovl_u8(*v306.i8), vtrn1q_s16(0, v307)), vmovl_high_u8(v306));
      v309 = vpaddq_s16(v307, vmovl_high_u8(v305));
      v310 = vmovl_u16(*v309.i8);
      v311 = vmovl_high_u16(v309);
      v312 = vpaddq_s32(vshlq_u32(vmovl_u16(*v308.i8), vtrn1q_s32(0, v310)), vshlq_u32(vmovl_high_u16(v308), vtrn1q_s32(0, v311)));
      v313 = vpaddq_s32(v310, v311);
      v314.i64[0] = v312.u32[0];
      v314.i64[1] = v312.u32[1];
      v315 = v314;
      v314.i64[0] = v312.u32[2];
      v314.i64[1] = v312.u32[3];
      v316 = v314;
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v317 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v318 = vpaddq_s64(vshlq_u64(v315, vzip1q_s64(0, v317)), vshlq_u64(v316, vzip1q_s64(0, v314)));
      v319 = vpaddq_s64(v317, v314);
      v320 = (v292 + 84) & 0x3C;
      v321 = (v318.i64[0] << v320) | (v7.i64[0] >> -v299);
      if ((v319.i64[0] + v320) >= 0x40)
      {
        *(v291 + ((v300 >> 3) & 0x18)) = v321;
        v321 = v318.i64[0] >> -v320;
      }

      v322 = vceqq_s32(v62, v185);
      v323 = v319.i64[0] + v300;
      v324 = v321 | (v318.i64[1] << v323);
      if ((v323 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v291 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v318.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vandq_s8(v150, v322);
      v326 = v323 + v319.i64[1];
      v327.i64[0] = 0x800000008;
      v327.i64[1] = 0x800000008;
      v328 = vandq_s8(vextq_s8(vtstq_s32(v145, v327), 0, 8uLL), v62);
      v329.i64[0] = 0x1F0000001FLL;
      v329.i64[1] = 0x1F0000001FLL;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vshlq_u32(v330, vaddq_s32(v328, v329)), v150);
      v332.i64[0] = v331.u32[0];
      v332.i64[1] = v331.u32[1];
      v333 = v332;
      v332.i64[0] = v331.u32[2];
      v332.i64[1] = v331.u32[3];
      v334 = v332;
      v332.i64[0] = v328.u32[0];
      v332.i64[1] = v328.u32[1];
      v335 = v332;
      v336 = vzip1q_s64(0, v332);
      v332.i64[0] = v328.u32[2];
      v332.i64[1] = v328.u32[3];
      v337 = vpaddq_s64(vshlq_u64(v333, v336), vshlq_u64(v334, 0));
      v338 = vpaddq_s64(v335, v332);
      v339 = (v337.i64[0] << v326) | v324;
      if (v338.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v291 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v337.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = vaddq_s32(v325, v596);
      v341 = v338.i64[0] + v326;
      v342 = v339 | (v337.i64[1] << v341);
      if ((v341 & 0x3F) + v338.i64[1] >= 0x40)
      {
        *(v291 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v337.i64[1] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341 + v338.i64[1];
      v344 = vextq_s8(0, v185, 8uLL);
      v345.i64[0] = 0x1F0000001FLL;
      v345.i64[1] = 0x1F0000001FLL;
      v346.i64[0] = -1;
      v346.i64[1] = -1;
      v347 = vandq_s8(vshlq_u32(v346, vaddq_s32(v344, v345)), v340);
      v348.i64[0] = v347.u32[0];
      v348.i64[1] = v347.u32[1];
      v349 = v348;
      v348.i64[0] = v347.u32[2];
      v348.i64[1] = v347.u32[3];
      v350 = v348;
      v348.i64[0] = v344.u32[2];
      v348.i64[1] = v344.u32[3];
      v351 = v348;
      v352 = vzip1q_s64(0, v348);
      v348.i64[0] = v344.u32[0];
      v348.i64[1] = v344.u32[1];
      v353 = vpaddq_s64(vshlq_u64(v349, 0), vshlq_u64(v350, v352));
      v354 = vpaddq_s64(v348, v351);
      v355 = (v353.i64[0] << v343) | v342;
      if (v354.i64[0] + (v343 & 0x3F) >= 0x40)
      {
        *(v291 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = vaddq_s32(v184, v325);
      v357 = v354.i64[0] + v343;
      v358 = v355 | (v353.i64[1] << v357);
      if ((v357 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v291 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v353.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v354.i64[1];
      v360.i64[0] = 0x1F0000001FLL;
      v360.i64[1] = 0x1F0000001FLL;
      v361.i64[0] = -1;
      v361.i64[1] = -1;
      v362 = vshlq_u32(v361, vaddq_s32(v185, v360));
      v363 = vandq_s8(v362, v356);
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v365 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v366 = v364;
      v364.i64[0] = v185.u32[0];
      v364.i64[1] = v185.u32[1];
      v367 = v364;
      v364.i64[0] = v185.u32[2];
      v364.i64[1] = v185.u32[3];
      v368 = vzip1q_s64(0, v367);
      v369 = vzip1q_s64(0, v364);
      v370 = vpaddq_s64(vshlq_u64(v365, v368), vshlq_u64(v366, v369));
      v371 = vpaddq_s64(v367, v364);
      v372 = v371.i64[0];
      v373 = (v370.i64[0] << v359) | v358;
      if (v371.i64[0] + (v359 & 0x3F) >= 0x40)
      {
        *(v291 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        if ((v359 & 0x3F) != 0)
        {
          v373 = v370.i64[0] >> -(v359 & 0x3F);
        }

        else
        {
          v373 = 0;
        }
      }

      v374 = vaddq_s32(v597, v325);
      v375 = v371.i64[1];
      v376 = v371.i64[0] + v359;
      v377 = v373 | (v370.i64[1] << v376);
      if ((v376 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v291 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        v377 = v370.i64[1] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v377 = 0;
        }
      }

      v378 = v376 + v371.i64[1];
      v379 = vandq_s8(v362, v374);
      v380.i64[0] = v379.u32[0];
      v380.i64[1] = v379.u32[1];
      v381 = v380;
      v380.i64[0] = v379.u32[2];
      v380.i64[1] = v379.u32[3];
      v382 = vpaddq_s64(vshlq_u64(v381, v368), vshlq_u64(v380, v369));
      v383 = (v382.i64[0] << v378) | v377;
      if (v371.i64[0] + (v378 & 0x3F) >= 0x40)
      {
        *(v291 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v382.i64[0] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = vceqq_s32(v62, v288);
      v385 = vaddq_s32(v598, v325);
      v386 = v372 + v378;
      v387 = v383 | (v382.i64[1] << v386);
      if ((v386 & 0x3F) + v375 >= 0x40)
      {
        *(v291 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v382.i64[1] >> -(v386 & 0x3F);
        if ((v386 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = vandq_s8(v150, v384);
      v389 = v386 + v375;
      v390 = vandq_s8(v362, v385);
      v391.i64[0] = v390.u32[0];
      v391.i64[1] = v390.u32[1];
      v392 = v391;
      v391.i64[0] = v390.u32[2];
      v391.i64[1] = v390.u32[3];
      v393 = vpaddq_s64(vshlq_u64(v392, v368), vshlq_u64(v391, v369));
      v394 = (v393.i64[0] << v389) | v387;
      if (v372 + (v389 & 0x3F) >= 0x40)
      {
        *(v291 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        v394 = v393.i64[0] >> -(v389 & 0x3F);
        if ((v389 & 0x3F) == 0)
        {
          v394 = 0;
        }
      }

      v395 = vaddq_s32(v168, v388);
      v396 = v372 + v389;
      v397 = v394 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v375 >= 0x40)
      {
        *(v291 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v375;
      v399.i64[0] = 0x1F0000001FLL;
      v399.i64[1] = 0x1F0000001FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = vshlq_u32(v400, vaddq_s32(v288, v399));
      v402 = vandq_s8(v401, v395);
      v403.i64[0] = v402.u32[0];
      v403.i64[1] = v402.u32[1];
      v404 = v403;
      v403.i64[0] = v402.u32[2];
      v403.i64[1] = v402.u32[3];
      v405 = v403;
      v403.i64[0] = v288.u32[0];
      v403.i64[1] = v288.u32[1];
      v406 = v403;
      v403.i64[0] = v288.u32[2];
      v403.i64[1] = v288.u32[3];
      v407 = vzip1q_s64(0, v406);
      v408 = vzip1q_s64(0, v403);
      v409 = vpaddq_s64(vshlq_u64(v404, v407), vshlq_u64(v405, v408));
      v410 = vpaddq_s64(v406, v403);
      v411 = v410.i64[0];
      v412 = (v409.i64[0] << v398) | v397;
      if (v410.i64[0] + (v398 & 0x3F) >= 0x40)
      {
        *(v291 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        if ((v398 & 0x3F) != 0)
        {
          v412 = v409.i64[0] >> -(v398 & 0x3F);
        }

        else
        {
          v412 = 0;
        }
      }

      v413 = vaddq_s32(v177, v388);
      v414 = v410.i64[1];
      v415 = v410.i64[0] + v398;
      v416 = v412 | (v409.i64[1] << v415);
      if ((v415 & 0x3F) + v410.i64[1] >= 0x40)
      {
        *(v291 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v409.i64[1] >> -(v415 & 0x3F);
        if ((v415 & 0x3F) == 0)
        {
          v416 = 0;
        }
      }

      v417 = v415 + v410.i64[1];
      v418 = vandq_s8(v401, v413);
      v419.i64[0] = v418.u32[0];
      v419.i64[1] = v418.u32[1];
      v420 = v419;
      v419.i64[0] = v418.u32[2];
      v419.i64[1] = v418.u32[3];
      v421 = vpaddq_s64(vshlq_u64(v420, v407), vshlq_u64(v419, v408));
      v422 = (v421.i64[0] << v417) | v416;
      if (v410.i64[0] + (v417 & 0x3F) >= 0x40)
      {
        *(v291 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
        v422 = v421.i64[0] >> -(v417 & 0x3F);
        if ((v417 & 0x3F) == 0)
        {
          v422 = 0;
        }
      }

      v423 = vaddq_s32(v176, v388);
      v424 = v410.i64[0] + v417;
      v425 = v422 | (v421.i64[1] << v424);
      if ((v424 & 0x3F) + v410.i64[1] >= 0x40)
      {
        *(v291 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v421.i64[1] >> -(v424 & 0x3F);
        if ((v424 & 0x3F) == 0)
        {
          v425 = 0;
        }
      }

      v426 = v424 + v410.i64[1];
      v427 = vandq_s8(v401, v423);
      v428.i64[0] = v427.u32[0];
      v428.i64[1] = v427.u32[1];
      v429 = v428;
      v428.i64[0] = v427.u32[2];
      v428.i64[1] = v427.u32[3];
      v430 = vpaddq_s64(vshlq_u64(v429, v407), vshlq_u64(v428, v408));
      v431 = (v430.i64[0] << v426) | v425;
      if (v410.i64[0] + (v426 & 0x3F) >= 0x40)
      {
        *(v291 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        v431 = v430.i64[0] >> -(v426 & 0x3F);
        if ((v426 & 0x3F) == 0)
        {
          v431 = 0;
        }
      }

      v432 = vceqq_s32(v62, v157);
      v433 = vaddq_s32(v591, v388);
      v434 = v411 + v426;
      v435 = v431 | (v430.i64[1] << v434);
      if ((v434 & 0x3F) + v414 >= 0x40)
      {
        *(v291 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
        v435 = v430.i64[1] >> -(v434 & 0x3F);
        if ((v434 & 0x3F) == 0)
        {
          v435 = 0;
        }
      }

      v436 = vandq_s8(v150, v432);
      v437 = v434 + v414;
      v438 = vandq_s8(v401, v433);
      v439.i64[0] = v438.u32[0];
      v439.i64[1] = v438.u32[1];
      v440 = v439;
      v439.i64[0] = v438.u32[2];
      v439.i64[1] = v438.u32[3];
      v441 = vpaddq_s64(vshlq_u64(v440, v407), vshlq_u64(v439, v408));
      v442 = (v441.i64[0] << v437) | v435;
      if (v411 + (v437 & 0x3F) >= 0x40)
      {
        *(v291 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
        v442 = v441.i64[0] >> -(v437 & 0x3F);
        if ((v437 & 0x3F) == 0)
        {
          v442 = 0;
        }
      }

      v443 = vaddq_s32(v592, v436);
      v444 = v411 + v437;
      v445 = v442 | (v441.i64[1] << v444);
      if ((v444 & 0x3F) + v414 >= 0x40)
      {
        *(v291 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
        v445 = v441.i64[1] >> -(v444 & 0x3F);
        if ((v444 & 0x3F) == 0)
        {
          v445 = 0;
        }
      }

      v446 = v444 + v414;
      v447.i64[0] = 0x1F0000001FLL;
      v447.i64[1] = 0x1F0000001FLL;
      v448.i64[0] = -1;
      v448.i64[1] = -1;
      v449 = vshlq_u32(v448, vaddq_s32(v157, v447));
      v450 = vandq_s8(v449, v443);
      v451.i64[0] = v450.u32[0];
      v451.i64[1] = v450.u32[1];
      v452 = v451;
      v451.i64[0] = v450.u32[2];
      v451.i64[1] = v450.u32[3];
      v453 = v451;
      v451.i64[0] = v157.u32[0];
      v451.i64[1] = v157.u32[1];
      v454 = v451;
      v451.i64[0] = v157.u32[2];
      v451.i64[1] = v157.u32[3];
      v455 = vzip1q_s64(0, v454);
      v456 = vzip1q_s64(0, v451);
      v457 = vpaddq_s64(vshlq_u64(v452, v455), vshlq_u64(v453, v456));
      v458 = vpaddq_s64(v454, v451);
      v459 = v458.i64[0];
      v460 = (v457.i64[0] << v446) | v445;
      if (v458.i64[0] + (v446 & 0x3F) >= 0x40)
      {
        *(v291 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
        if ((v446 & 0x3F) != 0)
        {
          v460 = v457.i64[0] >> -(v446 & 0x3F);
        }

        else
        {
          v460 = 0;
        }
      }

      v461 = vaddq_s32(v175, v436);
      v462 = v458.i64[1];
      v463 = v458.i64[0] + v446;
      v464 = v460 | (v457.i64[1] << v463);
      if ((v463 & 0x3F) + v458.i64[1] >= 0x40)
      {
        *(v291 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        v464 = v457.i64[1] >> -(v463 & 0x3F);
        if ((v463 & 0x3F) == 0)
        {
          v464 = 0;
        }
      }

      v465 = v463 + v458.i64[1];
      v466 = vandq_s8(v449, v461);
      v467.i64[0] = v466.u32[0];
      v467.i64[1] = v466.u32[1];
      v468 = v467;
      v467.i64[0] = v466.u32[2];
      v467.i64[1] = v466.u32[3];
      v469 = vpaddq_s64(vshlq_u64(v468, v455), vshlq_u64(v467, v456));
      v470 = (v469.i64[0] << v465) | v464;
      if (v458.i64[0] + (v465 & 0x3F) >= 0x40)
      {
        *(v291 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
        v470 = v469.i64[0] >> -(v465 & 0x3F);
        if ((v465 & 0x3F) == 0)
        {
          v470 = 0;
        }
      }

      v471 = vaddq_s32(v174, v436);
      v472 = v458.i64[0] + v465;
      v473 = v470 | (v469.i64[1] << v472);
      if ((v472 & 0x3F) + v458.i64[1] >= 0x40)
      {
        *(v291 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
        v473 = v469.i64[1] >> -(v472 & 0x3F);
        if ((v472 & 0x3F) == 0)
        {
          v473 = 0;
        }
      }

      v474 = v472 + v458.i64[1];
      v475 = vandq_s8(v449, v471);
      v476.i64[0] = v475.u32[0];
      v476.i64[1] = v475.u32[1];
      v477 = v476;
      v476.i64[0] = v475.u32[2];
      v476.i64[1] = v475.u32[3];
      v478 = vpaddq_s64(vshlq_u64(v477, v455), vshlq_u64(v476, v456));
      v479 = (v478.i64[0] << v474) | v473;
      if (v458.i64[0] + (v474 & 0x3F) >= 0x40)
      {
        *(v291 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
        v479 = v478.i64[0] >> -(v474 & 0x3F);
        if ((v474 & 0x3F) == 0)
        {
          v479 = 0;
        }
      }

      v480 = vceqq_s32(v62, v603);
      v481 = vaddq_s32(v573, v436);
      v482 = v459 + v474;
      v483 = v479 | (v478.i64[1] << v482);
      if ((v482 & 0x3F) + v462 >= 0x40)
      {
        *(v291 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v483;
        v483 = v478.i64[1] >> -(v482 & 0x3F);
        if ((v482 & 0x3F) == 0)
        {
          v483 = 0;
        }
      }

      v484 = vandq_s8(v150, v480);
      v485 = v482 + v462;
      v486 = vandq_s8(v449, v481);
      v487.i64[0] = v486.u32[0];
      v487.i64[1] = v486.u32[1];
      v488 = v487;
      v487.i64[0] = v486.u32[2];
      v487.i64[1] = v486.u32[3];
      v489 = vpaddq_s64(vshlq_u64(v488, v455), vshlq_u64(v487, v456));
      v490 = (v489.i64[0] << v485) | v483;
      if (v459 + (v485 & 0x3F) >= 0x40)
      {
        *(v291 + ((v485 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v490;
        v490 = v489.i64[0] >> -(v485 & 0x3F);
        if ((v485 & 0x3F) == 0)
        {
          v490 = 0;
        }
      }

      v491 = vaddq_s32(v173, v484);
      v492 = v459 + v485;
      v493 = v490 | (v489.i64[1] << v492);
      if ((v492 & 0x3F) + v462 >= 0x40)
      {
        *(v291 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v493;
        v493 = v489.i64[1] >> -(v492 & 0x3F);
        if ((v492 & 0x3F) == 0)
        {
          v493 = 0;
        }
      }

      v494 = v492 + v462;
      v495.i64[0] = 0x1F0000001FLL;
      v495.i64[1] = 0x1F0000001FLL;
      v496.i64[0] = -1;
      v496.i64[1] = -1;
      v497 = vshlq_u32(v496, vaddq_s32(v603, v495));
      v498 = vandq_s8(v497, v491);
      v499.i64[0] = v498.u32[0];
      v499.i64[1] = v498.u32[1];
      v500 = v499;
      v499.i64[0] = v498.u32[2];
      v499.i64[1] = v498.u32[3];
      v501 = v499;
      v499.i64[0] = v603.u32[0];
      v499.i64[1] = v603.u32[1];
      v502 = v499;
      v499.i64[0] = v603.u32[2];
      v499.i64[1] = v603.u32[3];
      v503 = vzip1q_s64(0, v502);
      v504 = vzip1q_s64(0, v499);
      v505 = vpaddq_s64(vshlq_u64(v500, v503), vshlq_u64(v501, v504));
      v506 = vpaddq_s64(v502, v499);
      v507 = (v492 + v462) & 0x3F;
      v508 = (v505.i64[0] << (v492 + v462)) | v493;
      if ((v506.i64[0] + v507) > 0x3F)
      {
        *(v291 + ((v494 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v508;
        if (v507)
        {
          v508 = v505.i64[0] >> -v507;
        }

        else
        {
          v508 = 0;
        }
      }

      v509 = vaddq_s32(v599, v484);
      v510 = v506.i64[0] + v494;
      v511 = v508 | (v505.i64[1] << v510);
      if ((v510 & 0x3F) + v506.i64[1] >= 0x40)
      {
        *(v291 + ((v510 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v511;
        v511 = v505.i64[1] >> -(v510 & 0x3F);
        if ((v510 & 0x3F) == 0)
        {
          v511 = 0;
        }
      }

      v512 = v510 + v506.i64[1];
      v513 = vandq_s8(v497, v509);
      v514.i64[0] = v513.u32[0];
      v514.i64[1] = v513.u32[1];
      v515 = v514;
      v514.i64[0] = v513.u32[2];
      v514.i64[1] = v513.u32[3];
      v516 = vpaddq_s64(vshlq_u64(v515, v503), vshlq_u64(v514, v504));
      v517 = (v516.i64[0] << v512) | v511;
      if (v506.i64[0] + (v512 & 0x3F) >= 0x40)
      {
        *(v291 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v517;
        v517 = v516.i64[0] >> -(v512 & 0x3F);
        if ((v512 & 0x3F) == 0)
        {
          v517 = 0;
        }
      }

      v518 = vaddq_s32(v600, v484);
      v519 = v506.i64[0] + v512;
      v520 = v517 | (v516.i64[1] << v519);
      if ((v519 & 0x3F) + v506.i64[1] >= 0x40)
      {
        *(v291 + ((v519 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v520;
        v520 = v516.i64[1] >> -(v519 & 0x3F);
        if ((v519 & 0x3F) == 0)
        {
          v520 = 0;
        }
      }

      v521 = v519 + v506.i64[1];
      v522 = vandq_s8(v497, v518);
      v523.i64[0] = v522.u32[0];
      v523.i64[1] = v522.u32[1];
      v524 = v523;
      v523.i64[0] = v522.u32[2];
      v523.i64[1] = v522.u32[3];
      v525 = vpaddq_s64(vshlq_u64(v524, v503), vshlq_u64(v523, v504));
      v526 = (v525.i64[0] << v521) | v520;
      if (v506.i64[0] + (v521 & 0x3F) >= 0x40)
      {
        *(v291 + ((v521 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v526;
        v526 = v525.i64[0] >> -(v521 & 0x3F);
        if ((v521 & 0x3F) == 0)
        {
          v526 = 0;
        }
      }

      v527 = vaddq_s32(v601, v484);
      v528 = v506.i64[0] + v521;
      v529 = v526 | (v525.i64[1] << v528);
      if ((v528 & 0x3F) + v506.i64[1] >= 0x40)
      {
        *(v291 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v529;
        v529 = v525.i64[1] >> -(v528 & 0x3F);
        if ((v528 & 0x3F) == 0)
        {
          v529 = 0;
        }
      }

      v530 = v528 + v506.i64[1];
      v531 = vandq_s8(v497, v527);
      v532.i64[0] = v531.u32[0];
      v532.i64[1] = v531.u32[1];
      v533 = v532;
      v532.i64[0] = v531.u32[2];
      v532.i64[1] = v531.u32[3];
      v534 = vpaddq_s64(vshlq_u64(v533, v503), vshlq_u64(v532, v504));
      v535 = (v534.i64[0] << v530) | v529;
      if (v506.i64[0] + (v530 & 0x3F) >= 0x40)
      {
        *(v291 + ((v530 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v535;
        v535 = v534.i64[0] >> -(v530 & 0x3F);
        if ((v530 & 0x3F) == 0)
        {
          v535 = 0;
        }
      }

      v536 = v506.i64[0] + v530;
      v537 = (v506.i64[0] + v530) & 0x3F;
      v538 = v535 | (v534.i64[1] << (v506.i8[0] + v530));
      if ((v537 + v506.i64[1]) >= 0x40)
      {
        *(v291 + ((v536 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v538;
        v538 = v534.i64[1] >> -v537;
        if (!v537)
        {
          v538 = 0;
        }
      }

      v539 = v536 + v506.i64[1];
      if ((v539 & 0x3F) != 0)
      {
        *(v291 + ((v539 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v538;
      }

      result = (v539 - v292 + 7) >> 3;
      v178 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i64[0] = a3->i64[0];
    v178 = 7;
    result = 8;
  }

  *a2 = v178;
  return result;
}