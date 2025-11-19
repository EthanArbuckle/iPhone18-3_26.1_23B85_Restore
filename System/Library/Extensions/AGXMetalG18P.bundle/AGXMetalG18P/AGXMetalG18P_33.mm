uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v389 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1->f32 + a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1->f32 + 2 * a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1->f32 + 2 * a2 + a2);
    *v13 = 0u;
    v13[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v381, a5);
    }

    v374 = v382;
    v376 = v381;
    v370 = v384;
    v372 = v383;
    v367 = v386;
    v368 = v385;
    v365 = v388;
    v366 = v387;
    v18 = a3 + 20;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v18, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v18, &v381, a5);
    }

    v363 = v382;
    v364 = v381;
    v361 = v384;
    v362 = v383;
    v359 = v386;
    v360 = v385;
    v358 = v387;
    v378 = v388;
    v19 = a3 + 40;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v19, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v19, &v381, a5);
    }

    v356 = v382;
    v357 = v381;
    v354 = v384;
    v355 = v383;
    v352 = v386;
    v353 = v385;
    v350 = v388;
    v351 = v387;
    v20 = a3 + 60;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v381, a5);
    }

    v379 = vmovn_s32(v378);
    v21 = vmovn_s32(v381);
    v22 = vmovn_s32(v382);
    v23 = vmovn_s32(v383);
    v24 = vmovn_s32(v384);
    v25 = vmovn_s32(v385);
    v26 = vmovn_s32(v386);
    v27 = vmovn_s32(v387);
    v28 = vmovn_s32(v388);
    *v29.f32 = vuzp1_s8(vmovn_s32(v376), *v388.i8);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v374), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v368), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v367), *v29.f32).u32[0];
    v30.i32[0] = vuzp1_s8(vmovn_s32(v357), *v29.f32).u32[0];
    v30.i32[1] = vuzp1_s8(vmovn_s32(v356), *v29.f32).u32[0];
    v30.i32[2] = vuzp1_s8(vmovn_s32(v353), *v29.f32).u32[0];
    v30.i32[3] = vuzp1_s8(vmovn_s32(v352), *v29.f32).u32[0];
    *a1 = v29;
    a1[1] = v30;
    *v29.f32 = vuzp1_s8(vmovn_s32(v372), *v29.f32);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v370), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v366), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v365), *v29.f32).u32[0];
    v31 = (a1 + a2);
    v32.i32[0] = vuzp1_s8(vmovn_s32(v355), *v29.f32).u32[0];
    v32.i32[1] = vuzp1_s8(vmovn_s32(v354), *v29.f32).u32[0];
    v32.i32[2] = vuzp1_s8(vmovn_s32(v351), *v29.f32).u32[0];
    v32.i32[3] = vuzp1_s8(vmovn_s32(v350), *v29.f32).u32[0];
    *v31 = v29;
    v31[1] = v32;
    *v29.f32 = vuzp1_s8(vmovn_s32(v364), *v29.f32);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v363), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v360), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v359), *v29.f32).u32[0];
    v33.i32[0] = vuzp1_s8(v21, *v29.f32).u32[0];
    v33.i32[1] = vuzp1_s8(v22, *v29.f32).u32[0];
    v33.i32[2] = vuzp1_s8(v25, *v29.f32).u32[0];
    v34 = (a1 + a2 + a2);
    v33.i32[3] = vuzp1_s8(v26, *v29.f32).u32[0];
    LODWORD(v35) = vuzp1_s8(vmovn_s32(v362), *v29.f32).u32[0];
    DWORD1(v35) = vuzp1_s8(vmovn_s32(v361), *v29.f32).u32[0];
    DWORD2(v35) = vuzp1_s8(vmovn_s32(v358), *v29.f32).u32[0];
    *v34 = v29;
    v34[1] = v33;
    *v29.f32 = vuzp1_s8(v379, v379);
    HIDWORD(v35) = v29.i32[0];
    *v29.f32 = vuzp1_s8(v23, *v29.f32);
    v29.i32[1] = vuzp1_s8(v24, *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(v27, *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(v28, *v29.f32).u32[0];
    v36 = (v34->f32 + a2);
    *v36 = v35;
    v36[1] = v29;
    return 80;
  }

  if (a4 == 127)
  {
    v37 = *a3;
    v38 = *(a3 + 16);
    v39 = *(a3 + 32);
    v40 = *(a3 + 48);
    v41 = *(a3 + 64);
    v42 = *(a3 + 80);
    v43 = *(a3 + 96);
    v44 = *(a3 + 112);
    v45 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v38);
    a1[1] = vzip1q_s64(v41, v42);
    v46 = (a1 + 2 * a2);
    *v45 = vzip2q_s64(v37, v38);
    v45[1] = vzip2q_s64(v41, v42);
    *v46 = vzip1q_s64(v39, v40);
    v46[1] = vzip1q_s64(v43, v44);
    v47 = (v46 + a2);
    *v47 = vzip2q_s64(v39, v40);
    v47[1] = vzip2q_s64(v43, v44);
    return 128;
  }

  if (a4 == 3)
  {
    v14 = vld1q_dup_f32(a3);
    *a1 = v14;
    a1[1] = v14;
    v15 = (a1 + a2);
    *v15 = v14;
    v15[1] = v14;
    v16 = (a1 + 2 * a2);
    *v16 = v14;
    v16[1] = v14;
    v17 = (a1 + 2 * a2 + a2);
    *v17 = v14;
    v17[1] = v14;
    return 4;
  }

  v48 = 8 * (a3 & 7);
  v49 = a3 & 0xFFFFFFFFFFFFFFF8;
  v50 = v48 + 32;
  v51 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v48;
  if (v48 >= 0x21)
  {
    v51 |= *(v49 + 8) << (-8 * (a3 & 7u));
  }

  v52 = v48 | 0x40;
  v53 = vdupq_n_s64(v51);
  v54 = vmovn_s64(vshlq_u64(v53, xmmword_29D2F0F40));
  v55.i16[0] = v51;
  v55.i16[1] = v51 >> 5;
  v55.i16[2] = v54.i16[0];
  v55.i16[3] = v54.i16[2];
  v56 = vuzp1_s8(vand_s8(v55, 0x1F001F001F001FLL), *v53.i8);
  *v53.i8 = vand_s8(vmovn_s64(vshlq_u64(v53, xmmword_29D2F0F50)), 0x700000007);
  v53.i16[1] = v53.i16[2];
  v53.i16[2] = (v51 >> 26) & 7;
  v53.i16[3] = v51 >> 29;
  *v53.i8 = vadd_s16(*v53.i8, 0x1000100010001);
  v57 = vuzp1_s8(*v53.i8, *v53.i8);
  v58 = v50 & 0x38;
  v59 = (v49 + ((v50 >> 3) & 8));
  v60 = *v59 >> (v50 & 0x38);
  if (v58 >= 0x21)
  {
    v60 |= v59[1] << -v58;
  }

  v61 = (8 * (a3 & 7)) | 0x280;
  v62 = vdupq_lane_s32(v56, 0);
  v63 = vdupq_lane_s32(v57, 0);
  v64.i64[0] = 0x303030303030303;
  v64.i64[1] = 0x303030303030303;
  v65 = vandq_s8(v62, v64);
  v66 = vbicq_s8(v63, vceqq_s8(v65, v64));
  v63.i64[0] = 0x202020202020202;
  v63.i64[1] = 0x202020202020202;
  v67 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v56), 0x4000400040004)), v63);
  if (vmaxvq_s8(v67) < 1)
  {
    v75 = 0;
    v99.i64[0] = -1;
    v99.i64[1] = -1;
    v95 = v66;
    v94 = v66;
    v93 = v66;
    v98.i64[0] = -1;
    v98.i64[1] = -1;
    v92 = v66;
    v97.i64[0] = -1;
    v97.i64[1] = -1;
    v96.i64[0] = -1;
    v96.i64[1] = -1;
  }

  else
  {
    v68 = vmovl_u8(*&vpaddq_s8(v67, v67));
    v69 = vmovl_u16(*&vpaddq_s16(v68, v68));
    v70 = vpaddq_s32(v69, v69).u64[0];
    v71.i64[0] = v70;
    v71.i64[1] = HIDWORD(v70);
    v72 = v71;
    v73 = vaddvq_s64(v71);
    v74 = v73 <= 0x80 && v61 >= v52 + v73;
    v75 = !v74;
    v76 = 0uLL;
    if (v74)
    {
      v77 = vaddq_s64(vdupq_n_s64(v48), vzip1q_s64(0, v72));
      v76 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v49 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(*(v49 + 8), 0), vnegq_s64(v77)));
      if (v48 + v73 >= 0x81)
      {
        v76 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v49 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(*(v49 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v76);
      }

      v52 += v73;
    }

    v78 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    v79.i64[0] = v78.u32[0];
    v79.i64[1] = v78.u32[1];
    v80 = vshlq_u64(v76, vnegq_s64(v79));
    v81 = vuzp1q_s32(vzip1q_s64(v76, v80), vzip2q_s64(v76, v80));
    v82 = vshlq_u32(v81, vnegq_s32((*&v68 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v83 = vuzp1q_s16(vzip1q_s32(v81, v82), vzip2q_s32(v81, v82));
    v84 = vshlq_u16(v83, vnegq_s16((*&v67 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v83, v84), vzip2q_s16(v83, v84));
    v84.i64[0] = 0x101010101010101;
    v84.i64[1] = 0x101010101010101;
    v86 = vshlq_s8(v84, v67);
    v84.i64[0] = -1;
    v84.i64[1] = -1;
    v87 = vqtbl1q_s8(vandq_s8(vaddq_s8(v86, v84), v85), xmmword_29D2F0F70);
    v88 = vdupq_lane_s32(*v87.i8, 0);
    v89 = vdupq_lane_s32(*v87.i8, 1);
    v90 = vdupq_laneq_s32(v87, 2);
    v91 = vdupq_laneq_s32(v87, 3);
    v92 = vsubq_s8(v66, v88);
    v93 = vsubq_s8(v66, v89);
    v94 = vsubq_s8(v66, v90);
    v95 = vsubq_s8(v66, v91);
    v96 = vceqzq_s8(v88);
    v97 = vceqzq_s8(v89);
    v98 = vceqzq_s8(v90);
    v99 = vceqzq_s8(v91);
  }

  v100.i64[0] = 0x808080808080808;
  v100.i64[1] = 0x808080808080808;
  v101 = 0uLL;
  v102 = vandq_s8(vextq_s8(vtstq_s8(v62, v100), 0, 0xCuLL), v66);
  v103 = vmovl_u8(*&vpaddq_s8(v102, v102));
  v104 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v100.i64[0] = vpaddq_s32(v104, v104).u64[0];
  v105.i64[0] = v100.u32[0];
  v105.i64[1] = v100.u32[1];
  v106 = v105;
  v107 = vaddvq_s64(v105);
  v108 = v52 + v107;
  if (v107 <= 0x80 && v61 >= v108)
  {
    v110 = v52 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v106));
    v112 = (v49 + 8 * (v52 >> 6));
    v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v107 >= 0x81)
    {
      v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v101);
    }

    v52 = v108;
  }

  else
  {
    v75 = 1;
  }

  v113 = v62.i8[0] & 3;
  v377 = v96;
  v380 = v65;
  v375 = v99;
  v369 = v97;
  v371 = v98;
  if (v113 == 2)
  {
    v114 = v61 < v52 + 4;
    v115 = v52 + 8;
    if (v61 >= v52 + 4)
    {
      v52 += 4;
    }

    else
    {
      v115 = v52 + 4;
    }

    if (v61 < v115)
    {
      v116 = 1;
    }

    else
    {
      v52 = v115;
      v116 = v114;
    }

    v75 |= v116;
  }

  v117 = 0uLL;
  v118 = vextq_s8(0, v92, 0xCuLL);
  v119 = vmovl_u8(*&vpaddq_s8(v118, v118));
  v120 = vmovl_u16(*&vpaddq_s16(v119, v119));
  v121 = vpaddq_s32(v120, v120).u64[0];
  v122.i64[0] = v121;
  v122.i64[1] = HIDWORD(v121);
  v123 = v122;
  v124 = vaddvq_s64(v122);
  v125 = v52 + v124;
  if (v124 <= 0x80 && v61 >= v125)
  {
    v128 = v52 & 0x3F;
    v129 = vaddq_s64(vdupq_n_s64(v128), vzip1q_s64(0, v123));
    v130 = (v49 + 8 * (v52 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v130, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v129)), vshlq_u64(vdupq_lane_s64(v130->i64[0], 0), vnegq_s64(v129)));
    if (v128 + v124 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v130[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v129)), vshlq_u64(vdupq_laneq_s64(v130[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v129))), v127);
    }

    v52 = v125;
  }

  else
  {
    v75 = 1;
    v127 = 0uLL;
  }

  v131 = vmovl_u8(*&vpaddq_s8(v92, v92));
  v132 = vmovl_u16(*&vpaddq_s16(v131, v131));
  v133 = vpaddq_s32(v132, v132).u64[0];
  v134.i64[0] = v133;
  v134.i64[1] = HIDWORD(v133);
  v135 = v134;
  v136 = vaddvq_s64(v134);
  v137 = v52 + v136;
  if (v136 <= 0x80 && v61 >= v137)
  {
    v139 = v52 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v135));
    v141 = (v49 + 8 * (v52 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v136 >= 0x81)
    {
      v117 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v117);
    }

    v52 = v137;
  }

  else
  {
    v75 = 1;
  }

  v142 = vmovl_u8(*&vpaddq_s8(v93, v93));
  v143 = vmovl_u16(*&vpaddq_s16(v142, v142));
  v144 = vpaddq_s32(v143, v143).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  v148 = v52 + v147;
  v149 = 0uLL;
  if (v147 <= 0x80 && v61 >= v148)
  {
    v152 = v52 & 0x3F;
    v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v146));
    v154 = (v49 + 8 * (v52 >> 6));
    v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
    if (v152 + v147 >= 0x81)
    {
      v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v151);
    }

    v52 = v148;
  }

  else
  {
    v75 = 1;
    v151 = 0uLL;
  }

  v155 = v52 + v147;
  if (v147 <= 0x80 && v61 >= v155)
  {
    v157 = v52 & 0x3F;
    v158 = vaddq_s64(vdupq_n_s64(v157), vzip1q_s64(0, v146));
    v159 = (v49 + 8 * (v52 >> 6));
    v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v158)));
    if (v157 + v147 >= 0x81)
    {
      v149 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v149);
    }

    v52 = v155;
  }

  else
  {
    v75 = 1;
  }

  v160 = vmovl_u8(*&vpaddq_s8(v94, v94));
  v161 = vmovl_u16(*&vpaddq_s16(v160, v160));
  v162 = vpaddq_s32(v161, v161).u64[0];
  v163.i64[0] = v162;
  v163.i64[1] = HIDWORD(v162);
  v164 = v163;
  v165 = vaddvq_s64(v163);
  v166 = v52 + v165;
  v167 = 0uLL;
  if (v165 <= 0x80 && v61 >= v166)
  {
    v170 = v52 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v164));
    v172 = (v49 + 8 * (v52 >> 6));
    v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v165 >= 0x81)
    {
      v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v169);
    }

    v52 = v166;
    if (v165 > 0x80)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v75 = 1;
    v169 = 0uLL;
    if (v165 > 0x80)
    {
      goto LABEL_99;
    }
  }

  v173 = v52 + v165;
  if (v61 >= v52 + v165)
  {
    v174 = v52 & 0x3F;
    v175 = vaddq_s64(vdupq_n_s64(v174), vzip1q_s64(0, v164));
    v176 = (v49 + 8 * (v52 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
    if (v174 + v165 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v167);
    }

    goto LABEL_100;
  }

LABEL_99:
  v75 = 1;
  v173 = v52;
LABEL_100:
  v373 = v95;
  v177 = vmovl_u8(*&vpaddq_s8(v95, v95));
  v178 = vmovl_u16(*&vpaddq_s16(v177, v177));
  v179 = vpaddq_s32(v178, v178).u64[0];
  v180.i64[0] = v179;
  v180.i64[1] = HIDWORD(v179);
  v181 = v180;
  v182 = vaddvq_s64(v180);
  v183 = v182;
  if (v182 > 0x80 || (v184 = v173 + v182, v61 < v173 + v182))
  {
    v75 = 1;
    v184 = v173;
    v188 = 0uLL;
  }

  else
  {
    v185 = v173 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v181));
    v187 = (v49 + 8 * (v173 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v183 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  if (v183 > 0x80 || v61 < v184 + v183)
  {
    goto LABEL_114;
  }

  v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v181));
  v190 = (v49 + 8 * (v184 >> 6));
  v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
  if ((v184 & 0x3F) + v183 >= 0x81)
  {
    v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
  }

  if ((v75 & 1) != 0 || (v10 = a4 + 1, v61 + 8 * v10 - (v184 + v183) - 640 >= 9) || v113 == 2)
  {
LABEL_114:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v193 = vzip1_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL));
    v194 = vzip1_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v195 = vzip1_s32(*v132.i8, *&vextq_s8(v132, v132, 8uLL));
    v196 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
    v197 = vzip1_s32(*v161.i8, *&vextq_s8(v161, v161, 8uLL));
    v198 = vzip1_s32(*v178.i8, *&vextq_s8(v178, v178, 8uLL));
    v199.i64[0] = v193.u32[0];
    v199.i64[1] = v193.u32[1];
    v200 = vshlq_u64(v101, vnegq_s64(v199));
    v201 = vzip2q_s64(v101, v200);
    v202 = vzip1q_s64(v101, v200);
    v199.i64[0] = v194.u32[0];
    v199.i64[1] = v194.u32[1];
    v203 = vshlq_u64(v127, vnegq_s64(v199));
    v204 = vzip2q_s64(v127, v203);
    v205 = vzip1q_s64(v127, v203);
    v199.i64[0] = v195.u32[0];
    v199.i64[1] = v195.u32[1];
    v206 = vshlq_u64(v117, vnegq_s64(v199));
    v207 = vzip2q_s64(v117, v206);
    v208 = vzip1q_s64(v117, v206);
    v199.i64[0] = v196.u32[0];
    v199.i64[1] = v196.u32[1];
    v209 = vnegq_s64(v199);
    v210 = vshlq_u64(v151, v209);
    v211 = vzip2q_s64(v151, v210);
    v212 = vzip1q_s64(v151, v210);
    v213 = vshlq_u64(v149, v209);
    v214 = vzip2q_s64(v149, v213);
    v215 = vzip1q_s64(v149, v213);
    v199.i64[0] = v197.u32[0];
    v199.i64[1] = v197.u32[1];
    v216 = vnegq_s64(v199);
    v217 = vshlq_u64(v169, v216);
    v218 = vzip2q_s64(v169, v217);
    v219 = vzip1q_s64(v169, v217);
    v220 = vshlq_u64(v167, v216);
    v221 = vzip2q_s64(v167, v220);
    v222 = vzip1q_s64(v167, v220);
    v199.i64[0] = v198.u32[0];
    v199.i64[1] = v198.u32[1];
    v223 = vnegq_s64(v199);
    v224 = vshlq_u64(v188, v223);
    v225 = vzip2q_s64(v188, v224);
    v226 = vzip1q_s64(v188, v224);
    v227 = vuzp1q_s32(v202, v201);
    v228 = vuzp1q_s32(v205, v204);
    v229 = vuzp1q_s32(v208, v207);
    v230 = vuzp1q_s32(v212, v211);
    v231 = vnegq_s32((*&v103 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v232 = vnegq_s32((*&v142 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v233 = vuzp1q_s32(v215, v214);
    v234 = vuzp1q_s32(v219, v218);
    v235 = vnegq_s32((*&v160 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v236 = vuzp1q_s32(v222, v221);
    v237 = vuzp1q_s32(v226, v225);
    v238 = vnegq_s32((*&v177 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v239 = vshlq_u32(v227, v231);
    v240 = vshlq_u32(v230, v232);
    v241 = vshlq_u32(v233, v232);
    v242 = vshlq_u32(v234, v235);
    v243 = vshlq_u32(v236, v235);
    v244 = vshlq_u32(v237, v238);
    v245 = vuzp1q_s16(vzip1q_s32(v227, v239), vzip2q_s32(v227, v239));
    v246 = vuzp1q_s16(vzip1q_s32(v230, v240), vzip2q_s32(v230, v240));
    v247 = vuzp1q_s16(vzip1q_s32(v233, v241), vzip2q_s32(v233, v241));
    v248 = vuzp1q_s16(vzip1q_s32(v234, v242), vzip2q_s32(v234, v242));
    v249 = vnegq_s16((*&v93 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v250 = vuzp1q_s16(vzip1q_s32(v236, v243), vzip2q_s32(v236, v243));
    v251 = vuzp1q_s16(vzip1q_s32(v237, v244), vzip2q_s32(v237, v244));
    v252 = vshlq_u16(v245, vnegq_s16((*&v102 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v253 = vshlq_u16(v246, v249);
    v254 = vshlq_u16(v247, v249);
    v255 = vzip2q_s16(v245, v252);
    v256 = vzip1q_s16(v245, v252);
    v257 = vuzp1q_s8(vzip1q_s16(v247, v254), vzip2q_s16(v247, v254));
    v254.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v254.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v252.i64[0] = 0x808080808080808;
    v252.i64[1] = 0x808080808080808;
    v258 = vsubq_s8(v252, v102);
    v259 = vaddq_s8(v102, v254);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v261 = vshlq_s8(vuzp1q_s8(v256, v255), v258);
    v258.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v258.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v262 = vsubq_s8(v260, v93);
    v263 = vaddq_s8(v93, v258);
    v264 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v253), vzip2q_s16(v246, v253)), v262);
    v265 = vshlq_s8(v257, v262);
    v266 = vnegq_s16((*&v94 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v267 = vshlq_s8(v261, v259);
    v268 = vshlq_s8(v264, v263);
    v269 = vshlq_s8(v265, v263);
    v270 = vdupq_lane_s32(*v267.i8, 0);
    v271 = vandq_s8(v369, v270);
    v272 = vsubq_s8(v268, v271);
    v273 = vsubq_s8(v269, v271);
    v274 = vshlq_u16(v248, v266);
    v275 = vshlq_u16(v250, v266);
    v276 = vuzp1q_s8(vzip1q_s16(v248, v274), vzip2q_s16(v248, v274));
    v271.i64[0] = 0x808080808080808;
    v271.i64[1] = 0x808080808080808;
    v248.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v248.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v277 = vsubq_s8(v271, v94);
    v278 = vaddq_s8(v94, v248);
    v279 = vshlq_s8(v276, v277);
    v280 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v250, v275), vzip2q_s16(v250, v275)), v277);
    v281 = vnegq_s16((*&v373 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v282 = vshlq_s8(v280, v278);
    v283 = vandq_s8(v371, v270);
    v284 = vsubq_s8(vshlq_s8(v279, v278), v283);
    v285 = vsubq_s8(v282, v283);
    v286 = vshlq_u16(v251, v281);
    v287 = vzip2q_s16(v251, v286);
    v288 = vzip1q_s16(v251, v286);
    v251.i64[0] = 0x808080808080808;
    v251.i64[1] = 0x808080808080808;
    v289 = vuzp1q_s8(v288, v287);
    v287.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v287.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v290 = vsubq_s8(v251, v373);
    v291 = vaddq_s8(v373, v287);
    v292 = vshlq_u64(v191, v223);
    v293 = vuzp1q_s32(vzip1q_s64(v191, v292), vzip2q_s64(v191, v292));
    v294 = vshlq_u32(v293, v238);
    v295 = vuzp1q_s16(vzip1q_s32(v293, v294), vzip2q_s32(v293, v294));
    v296 = vshlq_u16(v295, v281);
    v297 = vshlq_s8(vshlq_s8(v289, v290), v291);
    v298 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v295, v296), vzip2q_s16(v295, v296)), v290), v291);
    v299 = vandq_s8(v375, v270);
    v300 = vsubq_s8(v297, v299);
    v301 = vsubq_s8(v298, v299);
    v302 = vshlq_u32(v228, vnegq_s32((*&v119 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v303 = vshlq_u32(v229, vnegq_s32((*&v131 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v304 = vuzp1q_s16(vzip1q_s32(v228, v302), vzip2q_s32(v228, v302));
    *v297.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v60), xmmword_29D2F0F60));
    v305 = vuzp1q_s16(vzip1q_s32(v229, v303), vzip2q_s32(v229, v303));
    v306 = vshlq_u16(v304, vnegq_s16((*&v118 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v307 = vshlq_u16(v305, vnegq_s16((*&v92 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v308 = vzip2q_s16(v304, v306);
    v309 = vzip1q_s16(v304, v306);
    v310 = vzip2q_s16(v305, v307);
    v311 = vzip1q_s16(v305, v307);
    v307.i16[0] = v60;
    v312 = v297.i8[4];
    v307.i8[2] = v297.i8[0];
    v313 = vuzp1q_s8(v309, v308);
    v309.i64[0] = 0x808080808080808;
    v309.i64[1] = 0x808080808080808;
    v314 = vuzp1q_s8(v311, v310);
    v310.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v315 = vshlq_s8(vshlq_s8(v314, vsubq_s8(v309, v92)), vaddq_s8(v92, v310));
    v316 = vaddq_s8(vandq_s8(v267, v377), vshlq_s8(vshlq_s8(v313, vsubq_s8(v309, v118)), vaddq_s8(v118, v310)));
    v317 = vandq_s8(v377, v270);
    v318.i64[0] = 0x101010101010101;
    v318.i64[1] = 0x101010101010101;
    v319 = vsubq_s8(v316, v317);
    v320 = vsubq_s8(v315, v317);
    v307.i8[3] = v312;
    v321 = vdupq_lane_s32(*v307.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v380, v318)))
    {
      v322 = vnegq_s8(vandq_s8(v62, v318));
      v323 = v320;
      v323.i32[3] = v319.i32[0];
      v324 = v319;
      v324.i32[0] = v320.i32[3];
      v390.val[0] = vbslq_s8(v322, v324, v319);
      v390.val[1] = vbslq_s8(v322, v323, v320);
      v323.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v323.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, xmmword_29D2F0F80), v322), v390.val[0]);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, v323), v322), v390.val[1]);
      v319 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0F90), v322), v391.val[0]);
      v320 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[1]);
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FA0), v322), v272);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FB0), v322), v273);
      v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0FC0), v322), v391.val[0]);
      v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[1]);
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v284.i8, xmmword_29D2F0FD0), v322), v284);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v284.i8, xmmword_29D2F0F80), v322), v285);
      v284 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[0]);
      v285 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0FE0), v322), v391.val[1]);
      v390.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v300.i8, xmmword_29D2F0FF0), v322), v300);
      v390.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v300.i8, xmmword_29D2F0F80), v322), v301);
      v300 = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, v323), v322), v390.val[0]);
      v301 = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, xmmword_29D2F1000), v322), v390.val[1]);
    }

    v325 = v62.i8[1];
    v326 = vaddq_s8(v319, v321);
    v327 = vaddq_s8(v320, v321);
    v328 = vaddq_s8(v272, v321);
    v329 = vaddq_s8(v273, v321);
    v330 = vaddq_s8(v284, v321);
    v331 = vaddq_s8(v285, v321);
    v332 = vaddq_s8(v300, v321);
    v333 = vaddq_s8(v301, v321);
    v334.i64[0] = 0x1010101010101010;
    v334.i64[1] = 0x1010101010101010;
    v335 = vtstq_s8(v62, v334);
    if ((v325 & 0x10) != 0)
    {
      v335.i8[1] = v335.i8[2];
      v335.i8[2] = 0;
      v335 = vdupq_lane_s32(*v335.i8, 0);
      v336 = xmmword_29D2F1020;
    }

    else
    {
      v336 = xmmword_29D2F1010;
    }

    v337 = vaddq_s8(vandq_s8(v335, vqtbl1q_s8(v326, v336)), v326);
    v338 = vaddq_s8(vandq_s8(v335, vqtbl1q_s8(v327, v336)), v327);
    v339 = vaddq_s8(vandq_s8(vqtbl1q_s8(v328, v336), v335), v328);
    v340 = vaddq_s8(vandq_s8(vqtbl1q_s8(v329, v336), v335), v329);
    v341 = vaddq_s8(vandq_s8(vqtbl1q_s8(v330, v336), v335), v330);
    v342 = vaddq_s8(vandq_s8(vqtbl1q_s8(v331, v336), v335), v331);
    v343 = vzip2q_s64(v337, v338);
    v344.i64[0] = v337.i64[0];
    v344.i64[1] = v338.i64[0];
    v337.i64[0] = v341.i64[0];
    v337.i64[1] = v342.i64[0];
    v345 = (a1 + a2);
    *a1 = v344;
    a1[1] = v337;
    v346 = (a1 + 2 * a2);
    v347 = vaddq_s8(vandq_s8(vqtbl1q_s8(v332, v336), v335), v332);
    v348 = vaddq_s8(vandq_s8(vqtbl1q_s8(v333, v336), v335), v333);
    *v345 = v343;
    v345[1] = vzip2q_s64(v341, v342);
    v341.i64[0] = v339.i64[0];
    v341.i64[1] = v340.i64[0];
    v344.i64[0] = v347.i64[0];
    v344.i64[1] = v348.i64[0];
    *v346 = v341;
    v346[1] = v344;
    v349 = (v346 + a2);
    *v349 = vzip2q_s64(v339, v340);
    v349[1] = vzip2q_s64(v347, v348);
  }

  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v13 = vzip1q_s64(v8, v10);
  v15 = *v7;
  v16 = v7[1];
  v14 = (v7 + a4);
  v17 = v14[1];
  v18 = vzip2q_s64(v8, v10);
  v19 = vzip1q_s64(v15, *v14);
  v20 = vzip2q_s64(v15, *v14);
  v21 = vzip1q_s64(v16, v17);
  v22 = vdupq_lane_s32(*v11.i8, 0);
  v23 = vzip2q_s64(v16, v17);
  v24 = vsubq_s8(v11, v22);
  v25 = vsubq_s8(v12, v22);
  v26 = vsubq_s8(v19, v22);
  v27 = vsubq_s8(v20, v22);
  v28 = vsubq_s8(v13, v22);
  v29 = vsubq_s8(v18, v22);
  v30 = vsubq_s8(v21, v22);
  v31 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v32 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v33 = vpmaxq_s8(v31, v31);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vzip1q_s8(v35, v36);
  v38.i64[0] = 0x808080808080808;
  v38.i64[1] = 0x808080808080808;
  v39 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v37)), vceqzq_s8(v37));
  v40 = vpmaxq_s8(v39, v39);
  v41 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v42 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vpmaxq_s8(v43, v43);
  v46 = vpminq_s8(v44, v44);
  v47 = vmaxq_s8(v35, v45);
  v48 = vminq_s8(v36, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v49)), vceqzq_s8(v49));
  v51 = vpmaxq_s8(v50, v50);
  v52 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v53 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vpmaxq_s8(v54, v54);
  v57 = vpminq_s8(v55, v55);
  v58 = vmaxq_s8(v47, v56);
  v59 = vminq_s8(v48, v57);
  v60 = vzip1q_s8(v56, v57);
  v61 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v60)), vceqzq_s8(v60));
  v62 = vpmaxq_s8(v61, v61);
  v540 = vsubq_s8(v23, v22);
  v63 = vqtbl1q_s8(vmaxq_s8(v30, v540), xmmword_29D2F0F70);
  v64 = vqtbl1q_s8(vminq_s8(v30, v540), xmmword_29D2F0F70);
  v65 = vpmaxq_s8(v63, v63);
  v66 = vpminq_s8(v64, v64);
  v67 = vpmaxq_s8(v65, v65);
  v68 = vpminq_s8(v66, v66);
  v69 = vmaxq_s8(v58, v67);
  v70 = vminq_s8(v59, v68);
  v71 = vzip1q_s8(v67, v68);
  v72 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v71)), vceqzq_s8(v71));
  v73 = vpmaxq_s8(v72, v72);
  v74 = vmaxq_s8(vmaxq_s8(v40, v51), vmaxq_s8(v62, v73));
  v75 = vclzq_s8(vsubq_s8(v69, v70));
  v76 = vsubq_s8(v38, v75);
  v77 = vminq_s8(v76, v74);
  if (!vmaxvq_s8(v77))
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v515 = v19;
  v516 = v20;
  v517 = v18;
  v518 = v23;
  v519 = v21;
  v520 = v13;
  v78.i64[0] = -1;
  v78.i64[1] = -1;
  v79.i64[0] = 0x707070707070707;
  v79.i64[1] = 0x707070707070707;
  v80 = vcgtq_s8(v74, v76);
  v538 = vandq_s8(vsubq_s8(vshlq_s8(v78, vsubq_s8(v79, v75)), v70), v80);
  v81.i64[0] = 0x303030303030303;
  v81.i64[1] = 0x303030303030303;
  v82 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v40), v81), 0);
  v522 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v62), v81), 0);
  v524 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v51), v81), 0);
  v83 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v73), v81), 0);
  v84.i64[0] = 0x404040404040404;
  v84.i64[1] = 0x404040404040404;
  v85 = vorrq_s8(vbicq_s8(v84, vceqq_s8(vaddq_s8(v83, v522), vnegq_s8(vaddq_s8(v82, v524)))), vorrq_s8(vandq_s8(vceqzq_s8(v77), v81), vandq_s8(v80, v38)));
  v526 = v24;
  v86 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
  v528 = v25;
  v87 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1010));
  v88 = vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1010));
  v89 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1010));
  v90 = vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1010));
  v91 = vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1010));
  v92 = vsubq_s8(v540, vqtbl1q_s8(v540, xmmword_29D2F1010));
  v521 = vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1010));
  v93 = vqtbl1q_s8(vmaxq_s8(v86, v521), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v86, v521), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vzip1q_s8(v97, v98);
  v100 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v99)), vceqzq_s8(v99));
  v101 = vpmaxq_s8(v100, v100);
  v534 = v29;
  v536 = v30;
  v102 = vqtbl1q_s8(vmaxq_s8(v87, v88), xmmword_29D2F0F70);
  v103 = vqtbl1q_s8(vminq_s8(v87, v88), xmmword_29D2F0F70);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vmaxq_s8(v97, v106);
  v109 = vzip1q_s8(v106, v107);
  v110 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v109)), vceqzq_s8(v109));
  v111 = vpmaxq_s8(v110, v110);
  v530 = v26;
  v112 = vqtbl1q_s8(vmaxq_s8(v89, v90), xmmword_29D2F0F70);
  v113 = vqtbl1q_s8(vminq_s8(v89, v90), xmmword_29D2F0F70);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vpmaxq_s8(v114, v114);
  v117 = vpminq_s8(v115, v115);
  v118 = vmaxq_s8(v108, v116);
  v119 = vminq_s8(vminq_s8(v98, v107), v117);
  v120 = vzip1q_s8(v116, v117);
  v121 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v120)), vceqzq_s8(v120));
  v122 = vpmaxq_s8(v121, v121);
  v123 = vqtbl1q_s8(vmaxq_s8(v91, v92), xmmword_29D2F0F70);
  v124 = vqtbl1q_s8(vminq_s8(v91, v92), xmmword_29D2F0F70);
  v125 = vpmaxq_s8(v123, v123);
  v126 = vpminq_s8(v124, v124);
  v532 = v28;
  v127 = vpmaxq_s8(v125, v125);
  v128 = vpminq_s8(v126, v126);
  v129 = vminq_s8(v119, v128);
  v130 = vzip1q_s8(v127, v128);
  v131 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v130)), vceqzq_s8(v130));
  v132 = vpmaxq_s8(v131, v131);
  v133 = vmaxq_s8(vmaxq_s8(v101, v111), vmaxq_s8(v122, v132));
  v134 = vclzq_s8(vsubq_s8(vmaxq_s8(v118, v127), v129));
  v135 = vsubq_s8(v38, v134);
  v136 = vcgtq_s8(v133, v135);
  v137 = vminq_s8(v135, v133);
  v135.i64[0] = 0x1010101010101010;
  v135.i64[1] = 0x1010101010101010;
  v138.i64[0] = 0x1818181818181818;
  v138.i64[1] = 0x1818181818181818;
  v139 = vorrq_s8(vandq_s8(vceqzq_s8(v137), v81), vbslq_s8(v136, v138, v135));
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v101), v81), 0);
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v111), v81), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v122), v81), 0);
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v132), v81), 0);
  v144 = vsubq_s8(v137, v140);
  v145 = vsubq_s8(v137, v141);
  v146 = vsubq_s8(v137, v142);
  v147 = vsubq_s8(v137, v143);
  v80.i64[0] = 0x404040404040404;
  v80.i64[1] = 0x404040404040404;
  v148 = vorrq_s8(vbicq_s8(v80, vceqq_s8(vaddq_s8(v143, v142), vnegq_s8(vaddq_s8(v140, v141)))), v139);
  v149 = vmovl_u8(*v148.i8);
  v143.i64[0] = 0x8000800080008;
  v143.i64[1] = 0x8000800080008;
  v150 = v27;
  v151.i64[0] = 0x2000200020002;
  v151.i64[1] = 0x2000200020002;
  v152 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v137.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v143)), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v151), v143)), *v144.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL));
  v153 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v85.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v77.i8, vcgt_u8(0x808080808080808, *v85.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v85.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v151), v143));
  v154 = vsubq_s8(v77, v82);
  v155 = vsubq_s8(v77, v524);
  v156 = vsubq_s8(v77, v522);
  v157 = vsubq_s8(v77, v83);
  v158 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v153, *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v155.i8), *v157.i8), 3uLL)), v152)), 0);
  v159 = vaddlvq_s8(v158);
  v161 = a5 < 4 || a6 < 2;
  if (v159)
  {
    v162.i64[0] = 0x707070707070707;
    v162.i64[1] = 0x707070707070707;
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    v164 = vandq_s8(vsubq_s8(vshlq_s8(v163, vsubq_s8(v162, v134)), v129), v136);
    v22 = vbslq_s8(v158, vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010)), v22);
    v165 = vbslq_s8(v158, v88, v150);
    v166 = vbslq_s8(v158, v89, v532);
    v167 = vbslq_s8(v158, v90, v534);
    v540 = vbslq_s8(v158, v92, v540);
    v154 = vbslq_s8(v158, v144, v154);
    v155 = vbslq_s8(v158, v145, v155);
    v156 = vbslq_s8(v158, v146, v156);
    v157 = vbslq_s8(v158, v147, v157);
    v168 = vbslq_s8(v158, v164, v538);
    v77 = vbslq_s8(v158, v137, v77);
    v85 = vbslq_s8(v158, v148, v85);
    v169 = vbslq_s8(v158, v91, v536);
    v170 = vbslq_s8(v158, v87, v530);
    v171 = vbslq_s8(v158, v521, v528);
    v172 = vbslq_s8(v158, v86, v526);
    if (v161)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v167 = v534;
    v169 = v30;
    v168 = v538;
    v170 = v530;
    v166 = v532;
    v165 = v150;
    v171 = v528;
    v172 = v526;
    if (v161)
    {
      goto LABEL_16;
    }
  }

  v174 = v172;
  v529 = v171;
  v531 = v170;
  v527 = v165;
  v533 = v166;
  v535 = v167;
  v537 = v169;
  v539 = v168;
  v185 = vsubq_s8(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v175 = vsubq_s8(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v542.val[0] = v515;
  v542.val[1] = v516;
  v542.val[1].i32[3] = v12.i32[3];
  v176 = vsubq_s8(v515, vqtbl2q_s8(v542, xmmword_29D2F0FA0));
  v177 = vsubq_s8(v516, vqtbl2q_s8(v542, xmmword_29D2F1040));
  v541.val[0] = v520;
  v541.val[1] = v517;
  v541.val[1].i32[3] = v12.i32[3];
  v178 = vqtbl2q_s8(v541, xmmword_29D2F0F80);
  v179 = vsubq_s8(v520, vqtbl2q_s8(v541, xmmword_29D2F1050));
  v180 = vsubq_s8(v517, v178);
  v541.val[1] = v519;
  v181 = v518;
  v181.i32[3] = v12.i32[3];
  v182 = vsubq_s8(v519, vqtbl2q_s8(*(&v541 + 16), xmmword_29D2F1060));
  v183 = vsubq_s8(v518, vqtbl2q_s8(*(&v541 + 16), xmmword_29D2F0F80));
  v184 = v175;
  v184.i32[3] = v185.i32[0];
  v185.i32[0] = v175.i32[3];
  v186 = vqtbl1q_s8(vmaxq_s8(v185, v184), xmmword_29D2F0F70);
  v542.val[1] = vqtbl1q_s8(vminq_s8(v185, v184), xmmword_29D2F0F70);
  v187 = vpmaxq_s8(v186, v186);
  v542.val[1] = vpminq_s8(v542.val[1], v542.val[1]);
  v188 = vpmaxq_s8(v187, v187);
  v542.val[1] = vpminq_s8(v542.val[1], v542.val[1]);
  v189 = vzip1q_s8(v188, v542.val[1]);
  v190.i64[0] = 0x808080808080808;
  v190.i64[1] = 0x808080808080808;
  v191 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v189)), vceqzq_s8(v189));
  v192 = vpmaxq_s8(v191, v191);
  v523 = v176;
  v525 = v177;
  v193 = vqtbl1q_s8(vmaxq_s8(v176, v177), xmmword_29D2F0F70);
  v194 = vqtbl1q_s8(vminq_s8(v176, v177), xmmword_29D2F0F70);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vmaxq_s8(v188, v197);
  v542.val[1] = vminq_s8(v542.val[1], v198);
  v200 = vzip1q_s8(v197, v198);
  v201 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v200)), vceqzq_s8(v200));
  v202 = v156;
  v203 = vpmaxq_s8(v201, v201);
  v204 = vqtbl1q_s8(vmaxq_s8(v179, v180), xmmword_29D2F0F70);
  v205 = vqtbl1q_s8(vminq_s8(v179, v180), xmmword_29D2F0F70);
  v206 = vpmaxq_s8(v204, v204);
  v207 = vpminq_s8(v205, v205);
  v208 = vpmaxq_s8(v206, v206);
  v209 = vpminq_s8(v207, v207);
  v210 = vmaxq_s8(v199, v208);
  v542.val[1] = vminq_s8(v542.val[1], v209);
  v211 = vzip1q_s8(v208, v209);
  v212 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v211)), vceqzq_s8(v211));
  v213 = v155;
  v214 = vpmaxq_s8(v212, v212);
  v215 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v216 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v217 = vpmaxq_s8(v215, v215);
  v218 = vpminq_s8(v216, v216);
  v219 = vpmaxq_s8(v217, v217);
  v220 = vpminq_s8(v218, v218);
  v221 = vmaxq_s8(v210, v219);
  v222 = vminq_s8(v542.val[1], v220);
  v542.val[1] = vzip1q_s8(v219, v220);
  v542.val[1] = vbicq_s8(vsubq_s8(v190, vclsq_s8(v542.val[1])), vceqzq_s8(v542.val[1]));
  v223 = vpmaxq_s8(v542.val[1], v542.val[1]);
  v542.val[1] = vmaxq_s8(vmaxq_s8(v192, v203), vmaxq_s8(v214, v223));
  v224 = vclzq_s8(vsubq_s8(v221, v222));
  v225 = vsubq_s8(v190, v224);
  v226 = vcgtq_s8(v542.val[1], v225);
  v227 = vminq_s8(v225, v542.val[1]);
  v225.i64[0] = 0x909090909090909;
  v225.i64[1] = 0x909090909090909;
  v176.i64[0] = 0x202020202020202;
  v176.i64[1] = 0x202020202020202;
  v228 = vorrq_s8(vandq_s8(vceqzq_s8(v227), v176), vsubq_s8(vandq_s8(v226, v225), vmvnq_s8(v226)));
  v229 = vsubq_s8(v227, v192);
  v192.i64[0] = 0x303030303030303;
  v192.i64[1] = 0x303030303030303;
  v230 = vmaxq_s8(vminq_s8(v229, v192), 0);
  v231 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v203), v192), 0);
  v232 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v214), v192), 0);
  v233 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v223), v192), 0);
  v234 = vsubq_s8(v227, v230);
  v235 = vsubq_s8(v227, v231);
  v236 = vsubq_s8(v227, v232);
  v237 = vsubq_s8(v227, v233);
  v238 = vceqq_s8(vaddq_s8(v233, v232), vnegq_s8(vaddq_s8(v230, v231)));
  v232.i64[0] = 0x404040404040404;
  v232.i64[1] = 0x404040404040404;
  v239 = vorrq_s8(vbicq_s8(v232, v238), v228);
  v240 = v157;
  v241.i64[0] = 0x3000300030003;
  v241.i64[1] = 0x3000300030003;
  v242 = vmovl_s8(*v85.i8);
  v230.i64[0] = 0x8000800080008;
  v230.i64[1] = 0x8000800080008;
  v243 = vbicq_s8(vmovl_s8(*v77.i8), vceqzq_s16(vandq_s8(v242, v230)));
  v244 = vandq_s8(v242, v241);
  v241.i64[0] = 0x2000200020002;
  v241.i64[1] = 0x2000200020002;
  v245 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v243, vandq_s8(vshll_n_s8(*v85.i8, 1uLL), v230)), vandq_s8(vceqq_s16(v244, v241), v230)), *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v202.i8, *v213.i8), *v240.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v227.i8, vcgt_u8(0x808080808080808, *v239.i8))), vand_s8(vadd_s8(*v239.i8, *v239.i8), 0x808080808080808)), *v234.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v236.i8, *v235.i8), *v237.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v245))
  {
    v246.i64[0] = 0x707070707070707;
    v246.i64[1] = 0x707070707070707;
    v247 = vsubq_s8(v246, v224);
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v248 = vandq_s8(vsubq_s8(vshlq_s8(v246, v247), v222), v226);
    v22.i32[0] = vbslq_s8(v245, vextq_s8(v12, v12, 0xCuLL), v22).u32[0];
    v172 = vbslq_s8(v245, v185, v174);
    v171 = vbslq_s8(v245, v184, v529);
    v170 = vbslq_s8(v245, v523, v531);
    v165 = vbslq_s8(v245, v525, v527);
    v166 = vbslq_s8(v245, v179, v533);
    v167 = vbslq_s8(v245, v180, v535);
    v169 = vbslq_s8(v245, v182, v537);
    v540 = vbslq_s8(v245, v183, v540);
    v154 = vbslq_s8(v245, v234, v154);
    v249 = vbslq_s8(v245, v236, v202);
    v157 = vbslq_s8(v245, v237, v240);
    v168 = vbslq_s8(v245, v248, v539);
    v77 = vbslq_s8(v245, v227, v77);
    v85 = vbslq_s8(v245, v239, v85);
    v156 = v249;
    v155 = vbslq_s8(v245, v235, v213);
  }

  else
  {
    v167 = v535;
    v169 = v537;
    v168 = v539;
    v170 = v531;
    v166 = v533;
    v165 = v527;
    v157 = v240;
    v171 = v529;
    v156 = v202;
    v172 = v174;
    v155 = v213;
  }

LABEL_16:
  v250 = vmovl_s8(*v85.i8);
  v251.i64[0] = 0x8000800080008;
  v251.i64[1] = 0x8000800080008;
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v254 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v77.i8), vceqzq_s16(vandq_s8(v250, v251))), vandq_s8(vshll_n_s8(*v85.i8, 1uLL), v251)), vandq_s8(vceqq_s16(vandq_s8(v250, v252), v253), v251)), *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v155.i8), *v157.i8), 3uLL));
  v255 = vpaddq_s16(v254, v254);
  if ((vpaddq_s16(v255, v255).i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v256 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v257 = 8 * (a1 & 7);
    if (v257)
    {
      v258 = *v256 & ~(-1 << v257);
    }

    else
    {
      v258 = 0;
    }

    *a2 = 0;
    v259 = vzip1_s8(*v77.i8, *v250.i8);
    v260 = vadd_s16(v259, 0xFF00FF00FF00FFLL);
    v261 = vmovl_u16(vceqz_s16((*&v259 & 0xFF00FF00FF00FFLL)));
    v262.i64[0] = v261.u32[0];
    v262.i64[1] = v261.u32[1];
    v263 = vshrq_n_s64(vshlq_n_s64(v262, 0x38uLL), 0x38uLL);
    v262.i64[0] = v261.u32[2];
    v262.i64[1] = v261.u32[3];
    v264 = vshrq_n_s64(vshlq_n_s64(v262, 0x38uLL), 0x38uLL);
    v265 = vshlq_u32(vmovl_u16(vand_s8(v260, 0x7000700070007)), xmmword_29D2F1070);
    v262.i64[0] = v265.u32[0];
    v262.i64[1] = v265.u32[1];
    v266 = v262;
    v262.i64[0] = v265.u32[2];
    v262.i64[1] = v265.u32[3];
    v267 = vorrq_s8(vbicq_s8(v266, v263), vbicq_s8(v262, v264));
    v268 = *&vorr_s8(*v267.i8, *&vextq_s8(v267, v267, 8uLL)) | (32 * (v85.i8[1] & 0x1F)) | ((v85.i8[3] & 0x1F) << 15) | ((v85.i8[2] & 0x1F) << 10) | v85.i8[0] & 0x1F;
    v269 = (v268 << v257) | v258;
    if (v257 >= 0x20)
    {
      *v256 = v269;
      v269 = v268 >> (-8 * (a1 & 7u));
    }

    v270 = v22.u8[0] | (v22.u8[1] << 8) | (v22.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v22.u8[3] << 24);
    v271 = (v257 + 32) & 0x38;
    v272 = v269 | (v270 << v271);
    if (v271 >= 0x20)
    {
      *(v256 + (((v257 + 32) >> 3) & 8)) = v272;
      v272 = v270 >> -v271;
    }

    v273 = vsubq_s8(v77, v154);
    v274 = vsubq_s8(v77, v155);
    v275 = vsubq_s8(v77, v156);
    v276 = vsubq_s8(v77, v157);
    v277 = vtrn1q_s8(v273, v274);
    v278 = vtrn2q_s8(v273, v274);
    v279 = vtrn1q_s8(v275, v276);
    v280 = vtrn2q_s8(v275, v276);
    v281 = vzip1q_s16(v278, v280);
    v282 = vtrn2q_s16(v278, v280);
    v280.i64[0] = vzip1q_s32(vzip1q_s16(v277, v279), v281).u64[0];
    v282.i64[0] = vzip1q_s32(vtrn2q_s16(v277, v279), v282).u64[0];
    v279.i64[0] = 0x202020202020202;
    v279.i64[1] = 0x202020202020202;
    v283 = vandq_s8(vmovl_s16(vtst_s16(*v250.i8, 0x4000400040004)), v279);
    v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v276.i64[0] = -1;
    v276.i64[1] = -1;
    v284 = vshlq_u8(v276, vorrq_s8(v283, v279));
    v285 = vmovl_u8(vand_s8(*v284.i8, *v280.i8));
    v286 = vmovl_u8(vand_s8(*&vextq_s8(v284, v284, 8uLL), *v282.i8));
    v287 = vmovl_u8(*v283.i8);
    v288 = vmovl_high_u8(v283);
    v289 = vpaddq_s16(vshlq_u16(v285, vtrn1q_s16(0, v287)), vshlq_u16(v286, vtrn1q_s16(0, v288)));
    v290 = vpaddq_s16(v287, v288);
    v291 = vmovl_u16(*v290.i8);
    v292 = vmovl_high_u16(v290);
    v293 = vpaddq_s32(vshlq_u32(vmovl_u16(*v289.i8), vtrn1q_s32(0, v291)), vshlq_u32(vmovl_high_u16(v289), vtrn1q_s32(0, v292)));
    v294 = vpaddq_s32(v291, v292);
    v295.i64[0] = v293.u32[0];
    v295.i64[1] = v293.u32[1];
    v296 = v295;
    v295.i64[0] = v293.u32[2];
    v295.i64[1] = v293.u32[3];
    v297 = v295;
    v295.i64[0] = v294.u32[0];
    v295.i64[1] = v294.u32[1];
    v298 = v295;
    v295.i64[0] = v294.u32[2];
    v295.i64[1] = v294.u32[3];
    v299 = vpaddq_s64(vshlq_u64(v296, vzip1q_s64(0, v298)), vshlq_u64(v297, vzip1q_s64(0, v295)));
    v300 = vpaddq_s64(v298, v295);
    v301 = (v299.i64[0] << v257) | v272;
    if (v300.i64[0] + v257 >= 0x40)
    {
      v256[1] = v301;
      v301 = v299.i64[0] >> (-8 * (a1 & 7u));
      if (!v257)
      {
        v301 = 0;
      }
    }

    v302 = vceqq_s8(v77, v154);
    v303 = v300.i64[0] + (v257 | 0x40);
    v304 = v301 | (v299.i64[1] << v303);
    if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v256 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
      v304 = v299.i64[1] >> -(v303 & 0x3F);
      if ((v303 & 0x3F) == 0)
      {
        v304 = 0;
      }
    }

    v305 = vandq_s8(v168, v302);
    v306 = v303 + v300.i64[1];
    v307.i64[0] = 0x808080808080808;
    v307.i64[1] = 0x808080808080808;
    v308.i64[0] = -1;
    v308.i64[1] = -1;
    v309 = vandq_s8(vextq_s8(vtstq_s8(v85, v307), 0, 0xCuLL), v77);
    v310.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v311 = vandq_s8(vshlq_u8(v308, vaddq_s8(v309, v310)), v168);
    v312 = vmovl_u8(*v309.i8);
    v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v311.i8), vtrn1q_s16(0, v312)), vmovl_high_u8(v311));
    v314 = vpaddq_s16(v312, vmovl_high_u8(v309));
    v315 = vmovl_u16(*v314.i8);
    v316 = vmovl_high_u16(v314);
    v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v313), vtrn1q_s32(0, v316)));
    v318 = vpaddq_s32(v315, v316);
    v319.i64[0] = v317.u32[0];
    v319.i64[1] = v317.u32[1];
    v320 = v319;
    v319.i64[0] = v317.u32[2];
    v319.i64[1] = v317.u32[3];
    v321 = v319;
    v319.i64[0] = v318.u32[0];
    v319.i64[1] = v318.u32[1];
    v322 = v319;
    v319.i64[0] = v318.u32[2];
    v319.i64[1] = v318.u32[3];
    v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
    v324 = vpaddq_s64(v322, v319);
    v325 = (v323.i64[0] << v306) | v304;
    if (v324.i64[0] + (v306 & 0x3F) >= 0x40)
    {
      *(v256 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
      v325 = v323.i64[0] >> -(v306 & 0x3F);
      if ((v306 & 0x3F) == 0)
      {
        v325 = 0;
      }
    }

    v326 = vaddq_s8(v305, v172);
    v327 = v324.i64[0] + v306;
    v328 = v325 | (v323.i64[1] << v327);
    if ((v327 & 0x3F) + v324.i64[1] >= 0x40)
    {
      *(v256 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
      v328 = v323.i64[1] >> -(v327 & 0x3F);
      if ((v327 & 0x3F) == 0)
      {
        v328 = 0;
      }
    }

    v329 = v327 + v324.i64[1];
    v330 = vextq_s8(0, v154, 0xCuLL);
    v331.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v331.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v332.i64[0] = -1;
    v332.i64[1] = -1;
    v333 = vandq_s8(vshlq_u8(v332, vaddq_s8(v330, v331)), v326);
    v334 = vmovl_u8(*v330.i8);
    v335 = vmovl_high_u8(v330);
    v336 = vpaddq_s16(vshlq_u16(vmovl_u8(*v333.i8), vtrn1q_s16(0, v334)), vshlq_u16(vmovl_high_u8(v333), vtrn1q_s16(0, v335)));
    v337 = vpaddq_s16(v334, v335);
    v338 = vmovl_u16(*v337.i8);
    v339 = vmovl_high_u16(v337);
    v340 = vpaddq_s32(vshlq_u32(vmovl_u16(*v336.i8), vtrn1q_s32(0, v338)), vshlq_u32(vmovl_high_u16(v336), vtrn1q_s32(0, v339)));
    v341 = vpaddq_s32(v338, v339);
    v342.i64[0] = v340.u32[0];
    v342.i64[1] = v340.u32[1];
    v343 = v342;
    v342.i64[0] = v340.u32[2];
    v342.i64[1] = v340.u32[3];
    v344 = v342;
    v342.i64[0] = v341.u32[0];
    v342.i64[1] = v341.u32[1];
    v345 = v342;
    v342.i64[0] = v341.u32[2];
    v342.i64[1] = v341.u32[3];
    v346 = vpaddq_s64(vshlq_u64(v343, vzip1q_s64(0, v345)), vshlq_u64(v344, vzip1q_s64(0, v342)));
    v347 = vpaddq_s64(v345, v342);
    v348 = (v346.i64[0] << v329) | v328;
    if (v347.i64[0] + (v329 & 0x3F) >= 0x40)
    {
      *(v256 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v346.i64[0] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = vceqq_s8(v77, v155);
    v350 = vaddq_s8(v171, v305);
    v351 = v347.i64[0] + v329;
    v352 = v348 | (v346.i64[1] << v351);
    if ((v351 & 0x3F) + v347.i64[1] >= 0x40)
    {
      *(v256 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
      v352 = v346.i64[1] >> -(v351 & 0x3F);
      if ((v351 & 0x3F) == 0)
      {
        v352 = 0;
      }
    }

    v353 = vandq_s8(v168, v349);
    v354 = v351 + v347.i64[1];
    v355.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v355.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v356.i64[0] = -1;
    v356.i64[1] = -1;
    v357 = vandq_s8(vshlq_u8(v356, vaddq_s8(v154, v355)), v350);
    v358 = vmovl_u8(*v154.i8);
    v359 = vmovl_high_u8(v154);
    v360 = vpaddq_s16(vshlq_u16(vmovl_u8(*v357.i8), vtrn1q_s16(0, v358)), vshlq_u16(vmovl_high_u8(v357), vtrn1q_s16(0, v359)));
    v361 = vpaddq_s16(v358, v359);
    v362 = vmovl_u16(*v361.i8);
    v363 = vmovl_high_u16(v361);
    v364 = vpaddq_s32(vshlq_u32(vmovl_u16(*v360.i8), vtrn1q_s32(0, v362)), vshlq_u32(vmovl_high_u16(v360), vtrn1q_s32(0, v363)));
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
    v372 = (v370.i64[0] << v354) | v352;
    if (v371.i64[0] + (v354 & 0x3F) >= 0x40)
    {
      *(v256 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
      v372 = v370.i64[0] >> -(v354 & 0x3F);
      if ((v354 & 0x3F) == 0)
      {
        v372 = 0;
      }
    }

    v373 = vaddq_s8(v170, v353);
    v374 = v371.i64[0] + v354;
    v375 = v372 | (v370.i64[1] << v374);
    if ((v374 & 0x3F) + v371.i64[1] >= 0x40)
    {
      *(v256 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      v375 = v370.i64[1] >> -(v374 & 0x3F);
      if ((v374 & 0x3F) == 0)
      {
        v375 = 0;
      }
    }

    v376 = v374 + v371.i64[1];
    v377.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v377.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v378.i64[0] = -1;
    v378.i64[1] = -1;
    v379 = vshlq_u8(v378, vaddq_s8(v155, v377));
    v380 = vandq_s8(v379, v373);
    v381 = vmovl_u8(*v380.i8);
    v382 = vmovl_high_u8(v380);
    v383 = vmovl_u8(*v155.i8);
    v384 = vmovl_high_u8(v155);
    v385 = vtrn1q_s16(0, v383);
    v386 = vtrn1q_s16(0, v384);
    v387 = vpaddq_s16(vshlq_u16(v381, v385), vshlq_u16(v382, v386));
    v388 = vpaddq_s16(v383, v384);
    v389 = vmovl_u16(*v387.i8);
    v390 = vmovl_high_u16(v387);
    v391 = vmovl_u16(*v388.i8);
    v392 = vmovl_high_u16(v388);
    v393 = vtrn1q_s32(0, v391);
    v394 = vtrn1q_s32(0, v392);
    v395 = vpaddq_s32(vshlq_u32(v389, v393), vshlq_u32(v390, v394));
    v396 = vpaddq_s32(v391, v392);
    v397.i64[0] = v395.u32[0];
    v397.i64[1] = v395.u32[1];
    v398 = v397;
    v397.i64[0] = v395.u32[2];
    v397.i64[1] = v395.u32[3];
    v399 = v397;
    v397.i64[0] = v396.u32[0];
    v397.i64[1] = v396.u32[1];
    v400 = v397;
    v397.i64[0] = v396.u32[2];
    v397.i64[1] = v396.u32[3];
    v401 = vzip1q_s64(0, v400);
    v402 = vzip1q_s64(0, v397);
    v403 = vpaddq_s64(vshlq_u64(v398, v401), vshlq_u64(v399, v402));
    v404 = vpaddq_s64(v400, v397);
    v405 = (v403.i64[0] << v376) | v375;
    if (v404.i64[0] + (v376 & 0x3F) >= 0x40)
    {
      *(v256 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
      if ((v376 & 0x3F) != 0)
      {
        v405 = v403.i64[0] >> -(v376 & 0x3F);
      }

      else
      {
        v405 = 0;
      }
    }

    v406 = vceqq_s8(v77, v156);
    v407 = vaddq_s8(v165, v353);
    v408 = v404.i64[0] + v376;
    v409 = v405 | (v403.i64[1] << v408);
    if ((v408 & 0x3F) + v404.i64[1] >= 0x40)
    {
      *(v256 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
      v409 = v403.i64[1] >> -(v408 & 0x3F);
      if ((v408 & 0x3F) == 0)
      {
        v409 = 0;
      }
    }

    v410 = vandq_s8(v168, v406);
    v411 = v408 + v404.i64[1];
    v412 = vandq_s8(v379, v407);
    v413 = vpaddq_s16(vshlq_u16(vmovl_u8(*v412.i8), v385), vshlq_u16(vmovl_high_u8(v412), v386));
    v414 = vpaddq_s32(vshlq_u32(vmovl_u16(*v413.i8), v393), vshlq_u32(vmovl_high_u16(v413), v394));
    v415.i64[0] = v414.u32[0];
    v415.i64[1] = v414.u32[1];
    v416 = v415;
    v415.i64[0] = v414.u32[2];
    v415.i64[1] = v414.u32[3];
    v417 = vpaddq_s64(vshlq_u64(v416, v401), vshlq_u64(v415, v402));
    v418 = (v417.i64[0] << v411) | v409;
    if (v404.i64[0] + (v411 & 0x3F) >= 0x40)
    {
      *(v256 + ((v411 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      v418 = v417.i64[0] >> -(v411 & 0x3F);
      if ((v411 & 0x3F) == 0)
      {
        v418 = 0;
      }
    }

    v419 = vaddq_s8(v166, v410);
    v420 = v404.i64[0] + v411;
    v421 = (v404.i64[0] + v411) & 0x3F;
    v422 = v418 | (v417.i64[1] << v420);
    if ((v420 & 0x3F) + v404.i64[1] >= 0x40)
    {
      *(v256 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v417.i64[1] >> -v421;
      if (!v421)
      {
        v422 = 0;
      }
    }

    v423 = v420 + v404.i64[1];
    v424.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v424.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v425.i64[0] = -1;
    v425.i64[1] = -1;
    v426 = vshlq_u8(v425, vaddq_s8(v156, v424));
    v427 = vandq_s8(v426, v419);
    v428 = vmovl_u8(*v427.i8);
    v429 = vmovl_high_u8(v427);
    v430 = vmovl_u8(*v156.i8);
    v431 = vmovl_high_u8(v156);
    v432 = vtrn1q_s16(0, v430);
    v433 = vtrn1q_s16(0, v431);
    v434 = vpaddq_s16(vshlq_u16(v428, v432), vshlq_u16(v429, v433));
    v435 = vpaddq_s16(v430, v431);
    v436 = vmovl_u16(*v434.i8);
    v437 = vmovl_high_u16(v434);
    v438 = vmovl_u16(*v435.i8);
    v439 = vmovl_high_u16(v435);
    v440 = vtrn1q_s32(0, v438);
    v441 = vtrn1q_s32(0, v439);
    v442 = vpaddq_s32(vshlq_u32(v436, v440), vshlq_u32(v437, v441));
    v443 = vpaddq_s32(v438, v439);
    v444.i64[0] = v442.u32[0];
    v444.i64[1] = v442.u32[1];
    v445 = v444;
    v444.i64[0] = v442.u32[2];
    v444.i64[1] = v442.u32[3];
    v446 = v444;
    v444.i64[0] = v443.u32[0];
    v444.i64[1] = v443.u32[1];
    v447 = v444;
    v444.i64[0] = v443.u32[2];
    v444.i64[1] = v443.u32[3];
    v448 = vzip1q_s64(0, v447);
    v449 = vzip1q_s64(0, v444);
    v450 = vpaddq_s64(vshlq_u64(v445, v448), vshlq_u64(v446, v449));
    v451 = vpaddq_s64(v447, v444);
    v452 = (v450.i64[0] << v423) | v422;
    if (v451.i64[0] + (v423 & 0x3F) >= 0x40)
    {
      *(v256 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      if ((v423 & 0x3F) != 0)
      {
        v452 = v450.i64[0] >> -(v423 & 0x3F);
      }

      else
      {
        v452 = 0;
      }
    }

    v453 = vceqq_s8(v77, v157);
    v454 = vaddq_s8(v167, v410);
    v455 = v451.i64[0] + v423;
    v456 = v452 | (v450.i64[1] << v455);
    if ((v455 & 0x3F) + v451.i64[1] >= 0x40)
    {
      *(v256 + ((v455 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
      v456 = v450.i64[1] >> -(v455 & 0x3F);
      if ((v455 & 0x3F) == 0)
      {
        v456 = 0;
      }
    }

    v457 = vandq_s8(v168, v453);
    v458 = v455 + v451.i64[1];
    v459 = vandq_s8(v426, v454);
    v460 = vpaddq_s16(vshlq_u16(vmovl_u8(*v459.i8), v432), vshlq_u16(vmovl_high_u8(v459), v433));
    v461 = vpaddq_s32(vshlq_u32(vmovl_u16(*v460.i8), v440), vshlq_u32(vmovl_high_u16(v460), v441));
    v462.i64[0] = v461.u32[0];
    v462.i64[1] = v461.u32[1];
    v463 = v462;
    v462.i64[0] = v461.u32[2];
    v462.i64[1] = v461.u32[3];
    v464 = vpaddq_s64(vshlq_u64(v463, v448), vshlq_u64(v462, v449));
    v465 = (v464.i64[0] << v458) | v456;
    if (v451.i64[0] + (v458 & 0x3F) >= 0x40)
    {
      *(v256 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
      v465 = v464.i64[0] >> -(v458 & 0x3F);
      if ((v458 & 0x3F) == 0)
      {
        v465 = 0;
      }
    }

    v466 = vaddq_s8(v169, v457);
    v467 = v451.i64[0] + v458;
    v468 = (v451.i64[0] + v458) & 0x3F;
    v469 = v465 | (v464.i64[1] << v467);
    if ((v467 & 0x3F) + v451.i64[1] >= 0x40)
    {
      *(v256 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      v469 = v464.i64[1] >> -v468;
      if (!v468)
      {
        v469 = 0;
      }
    }

    v470 = v467 + v451.i64[1];
    v471.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v471.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v472.i64[0] = -1;
    v472.i64[1] = -1;
    v473 = vshlq_u8(v472, vaddq_s8(v157, v471));
    v474 = vandq_s8(v473, v466);
    v475 = vmovl_u8(*v474.i8);
    v476 = vmovl_high_u8(v474);
    v477 = vmovl_u8(*v157.i8);
    v478 = vmovl_high_u8(v157);
    v479 = vtrn1q_s16(0, v477);
    v480 = vtrn1q_s16(0, v478);
    v481 = vpaddq_s16(vshlq_u16(v475, v479), vshlq_u16(v476, v480));
    v482 = vpaddq_s16(v477, v478);
    v483 = vmovl_u16(*v481.i8);
    v484 = vmovl_high_u16(v481);
    v485 = vmovl_u16(*v482.i8);
    v486 = vmovl_high_u16(v482);
    v487 = vtrn1q_s32(0, v485);
    v488 = vtrn1q_s32(0, v486);
    v489 = vpaddq_s32(vshlq_u32(v483, v487), vshlq_u32(v484, v488));
    v490 = vpaddq_s32(v485, v486);
    v491.i64[0] = v489.u32[0];
    v491.i64[1] = v489.u32[1];
    v492 = v491;
    v491.i64[0] = v489.u32[2];
    v491.i64[1] = v489.u32[3];
    v493 = v491;
    v491.i64[0] = v490.u32[0];
    v491.i64[1] = v490.u32[1];
    v494 = v491;
    v491.i64[0] = v490.u32[2];
    v491.i64[1] = v490.u32[3];
    v495 = vzip1q_s64(0, v494);
    v496 = vzip1q_s64(0, v491);
    v497 = vpaddq_s64(vshlq_u64(v492, v495), vshlq_u64(v493, v496));
    v498 = vpaddq_s64(v494, v491);
    v499 = (v497.i64[0] << v470) | v469;
    if (v498.i64[0] + (v470 & 0x3F) > 0x3F)
    {
      *(v256 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v499;
      if ((v470 & 0x3F) != 0)
      {
        v499 = v497.i64[0] >> -(v470 & 0x3F);
      }

      else
      {
        v499 = 0;
      }
    }

    v500 = vaddq_s8(v540, v457);
    v501 = v498.i64[0] + v470;
    v502 = v499 | (v497.i64[1] << v501);
    if ((v501 & 0x3F) + v498.i64[1] >= 0x40)
    {
      *(v256 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v502;
      v502 = v497.i64[1] >> -(v501 & 0x3F);
      if ((v501 & 0x3F) == 0)
      {
        v502 = 0;
      }
    }

    v503 = v501 + v498.i64[1];
    v504 = vandq_s8(v473, v500);
    v505 = vpaddq_s16(vshlq_u16(vmovl_u8(*v504.i8), v479), vshlq_u16(vmovl_high_u8(v504), v480));
    v506 = vpaddq_s32(vshlq_u32(vmovl_u16(*v505.i8), v487), vshlq_u32(vmovl_high_u16(v505), v488));
    v507.i64[0] = v506.u32[0];
    v507.i64[1] = v506.u32[1];
    v508 = v507;
    v507.i64[0] = v506.u32[2];
    v507.i64[1] = v506.u32[3];
    v509 = vpaddq_s64(vshlq_u64(v508, v495), vshlq_u64(v507, v496));
    v510 = (v509.i64[0] << v503) | v502;
    if (v498.i64[0] + (v503 & 0x3F) >= 0x40)
    {
      *(v256 + ((v503 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      v510 = v509.i64[0] >> -(v503 & 0x3F);
      if ((v503 & 0x3F) == 0)
      {
        v510 = 0;
      }
    }

    v511 = v498.i64[0] + v503;
    v512 = (v498.i64[0] + v503) & 0x3F;
    v513 = v510 | (v509.i64[1] << (v498.i8[0] + v503));
    if ((v512 + v498.i64[1]) >= 0x40)
    {
      *(v256 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      v513 = v509.i64[1] >> -v512;
      if (!v512)
      {
        v513 = 0;
      }
    }

    v514 = v511 + v498.i64[1];
    if ((v514 & 0x3F) != 0)
    {
      *(v256 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
    }

    result = (v514 - v257 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v389 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1->f32 + a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1->f32 + 2 * a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1->f32 + 2 * a2 + a2);
    *v13 = 0u;
    v13[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v381, a5);
    }

    v374 = v382;
    v376 = v381;
    v370 = v384;
    v372 = v383;
    v367 = v386;
    v368 = v385;
    v365 = v388;
    v366 = v387;
    v18 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v381, a5);
    }

    v363 = v382;
    v364 = v381;
    v361 = v384;
    v362 = v383;
    v359 = v386;
    v360 = v385;
    v358 = v387;
    v378 = v388;
    v19 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v381, a5);
    }

    v356 = v382;
    v357 = v381;
    v354 = v384;
    v355 = v383;
    v352 = v386;
    v353 = v385;
    v350 = v388;
    v351 = v387;
    v20 = a3 + 48;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v381, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v381, a5);
    }

    v379 = vmovn_s32(v378);
    v21 = vmovn_s32(v381);
    v22 = vmovn_s32(v382);
    v23 = vmovn_s32(v383);
    v24 = vmovn_s32(v384);
    v25 = vmovn_s32(v385);
    v26 = vmovn_s32(v386);
    v27 = vmovn_s32(v387);
    v28 = vmovn_s32(v388);
    *v29.f32 = vuzp1_s8(vmovn_s32(v376), *v388.i8);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v374), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v368), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v367), *v29.f32).u32[0];
    v30.i32[0] = vuzp1_s8(vmovn_s32(v357), *v29.f32).u32[0];
    v30.i32[1] = vuzp1_s8(vmovn_s32(v356), *v29.f32).u32[0];
    v30.i32[2] = vuzp1_s8(vmovn_s32(v353), *v29.f32).u32[0];
    v30.i32[3] = vuzp1_s8(vmovn_s32(v352), *v29.f32).u32[0];
    *a1 = v29;
    a1[1] = v30;
    *v29.f32 = vuzp1_s8(vmovn_s32(v372), *v29.f32);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v370), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v366), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v365), *v29.f32).u32[0];
    v31 = (a1 + a2);
    v32.i32[0] = vuzp1_s8(vmovn_s32(v355), *v29.f32).u32[0];
    v32.i32[1] = vuzp1_s8(vmovn_s32(v354), *v29.f32).u32[0];
    v32.i32[2] = vuzp1_s8(vmovn_s32(v351), *v29.f32).u32[0];
    v32.i32[3] = vuzp1_s8(vmovn_s32(v350), *v29.f32).u32[0];
    *v31 = v29;
    v31[1] = v32;
    *v29.f32 = vuzp1_s8(vmovn_s32(v364), *v29.f32);
    v29.i32[1] = vuzp1_s8(vmovn_s32(v363), *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(vmovn_s32(v360), *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(vmovn_s32(v359), *v29.f32).u32[0];
    v33.i32[0] = vuzp1_s8(v21, *v29.f32).u32[0];
    v33.i32[1] = vuzp1_s8(v22, *v29.f32).u32[0];
    v33.i32[2] = vuzp1_s8(v25, *v29.f32).u32[0];
    v34 = (a1 + a2 + a2);
    v33.i32[3] = vuzp1_s8(v26, *v29.f32).u32[0];
    LODWORD(v35) = vuzp1_s8(vmovn_s32(v362), *v29.f32).u32[0];
    DWORD1(v35) = vuzp1_s8(vmovn_s32(v361), *v29.f32).u32[0];
    DWORD2(v35) = vuzp1_s8(vmovn_s32(v358), *v29.f32).u32[0];
    *v34 = v29;
    v34[1] = v33;
    *v29.f32 = vuzp1_s8(v379, v379);
    HIDWORD(v35) = v29.i32[0];
    *v29.f32 = vuzp1_s8(v23, *v29.f32);
    v29.i32[1] = vuzp1_s8(v24, *v29.f32).u32[0];
    v29.i32[2] = vuzp1_s8(v27, *v29.f32).u32[0];
    v29.i32[3] = vuzp1_s8(v28, *v29.f32).u32[0];
    v36 = (v34->f32 + a2);
    *v36 = v35;
    v36[1] = v29;
    return 64;
  }

  if (a4 == 127)
  {
    v37 = *a3;
    v38 = *(a3 + 16);
    v39 = *(a3 + 32);
    v40 = *(a3 + 48);
    v41 = *(a3 + 64);
    v42 = *(a3 + 80);
    v43 = *(a3 + 96);
    v44 = *(a3 + 112);
    v45 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v38);
    a1[1] = vzip1q_s64(v41, v42);
    v46 = (a1 + 2 * a2);
    *v45 = vzip2q_s64(v37, v38);
    v45[1] = vzip2q_s64(v41, v42);
    *v46 = vzip1q_s64(v39, v40);
    v46[1] = vzip1q_s64(v43, v44);
    v47 = (v46 + a2);
    *v47 = vzip2q_s64(v39, v40);
    v47[1] = vzip2q_s64(v43, v44);
    return 128;
  }

  if (a4 == 3)
  {
    v14 = vld1q_dup_f32(a3);
    *a1 = v14;
    a1[1] = v14;
    v15 = (a1 + a2);
    *v15 = v14;
    v15[1] = v14;
    v16 = (a1 + 2 * a2);
    *v16 = v14;
    v16[1] = v14;
    v17 = (a1 + 2 * a2 + a2);
    *v17 = v14;
    v17[1] = v14;
    return 4;
  }

  v48 = 8 * (a3 & 7);
  v49 = a3 & 0xFFFFFFFFFFFFFFF8;
  v50 = v48 + 32;
  v51 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v48;
  if (v48 >= 0x21)
  {
    v51 |= *(v49 + 8) << (-8 * (a3 & 7u));
  }

  v52 = v48 | 0x40;
  v53 = vdupq_n_s64(v51);
  v54 = vmovn_s64(vshlq_u64(v53, xmmword_29D2F0F40));
  v55.i16[0] = v51;
  v55.i16[1] = v51 >> 5;
  v55.i16[2] = v54.i16[0];
  v55.i16[3] = v54.i16[2];
  v56 = vuzp1_s8(vand_s8(v55, 0x1F001F001F001FLL), *v53.i8);
  *v53.i8 = vand_s8(vmovn_s64(vshlq_u64(v53, xmmword_29D2F0F50)), 0x700000007);
  v53.i16[1] = v53.i16[2];
  v53.i16[2] = (v51 >> 26) & 7;
  v53.i16[3] = v51 >> 29;
  *v53.i8 = vadd_s16(*v53.i8, 0x1000100010001);
  v57 = vuzp1_s8(*v53.i8, *v53.i8);
  v58 = v50 & 0x38;
  v59 = (v49 + ((v50 >> 3) & 8));
  v60 = *v59 >> (v50 & 0x38);
  if (v58 >= 0x21)
  {
    v60 |= v59[1] << -v58;
  }

  v61 = (8 * (a3 & 7)) | 0x200;
  v62 = vdupq_lane_s32(v56, 0);
  v63 = vdupq_lane_s32(v57, 0);
  v64.i64[0] = 0x303030303030303;
  v64.i64[1] = 0x303030303030303;
  v65 = vandq_s8(v62, v64);
  v66 = vbicq_s8(v63, vceqq_s8(v65, v64));
  v63.i64[0] = 0x202020202020202;
  v63.i64[1] = 0x202020202020202;
  v67 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v56), 0x4000400040004)), v63);
  if (vmaxvq_s8(v67) < 1)
  {
    v75 = 0;
    v99.i64[0] = -1;
    v99.i64[1] = -1;
    v95 = v66;
    v94 = v66;
    v93 = v66;
    v98.i64[0] = -1;
    v98.i64[1] = -1;
    v92 = v66;
    v97.i64[0] = -1;
    v97.i64[1] = -1;
    v96.i64[0] = -1;
    v96.i64[1] = -1;
  }

  else
  {
    v68 = vmovl_u8(*&vpaddq_s8(v67, v67));
    v69 = vmovl_u16(*&vpaddq_s16(v68, v68));
    v70 = vpaddq_s32(v69, v69).u64[0];
    v71.i64[0] = v70;
    v71.i64[1] = HIDWORD(v70);
    v72 = v71;
    v73 = vaddvq_s64(v71);
    v74 = v73 <= 0x80 && v61 >= v52 + v73;
    v75 = !v74;
    v76 = 0uLL;
    if (v74)
    {
      v77 = vaddq_s64(vdupq_n_s64(v48), vzip1q_s64(0, v72));
      v76 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v49 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(*(v49 + 8), 0), vnegq_s64(v77)));
      if (v48 + v73 >= 0x81)
      {
        v76 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v49 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(*(v49 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v76);
      }

      v52 += v73;
    }

    v78 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    v79.i64[0] = v78.u32[0];
    v79.i64[1] = v78.u32[1];
    v80 = vshlq_u64(v76, vnegq_s64(v79));
    v81 = vuzp1q_s32(vzip1q_s64(v76, v80), vzip2q_s64(v76, v80));
    v82 = vshlq_u32(v81, vnegq_s32((*&v68 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v83 = vuzp1q_s16(vzip1q_s32(v81, v82), vzip2q_s32(v81, v82));
    v84 = vshlq_u16(v83, vnegq_s16((*&v67 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v83, v84), vzip2q_s16(v83, v84));
    v84.i64[0] = 0x101010101010101;
    v84.i64[1] = 0x101010101010101;
    v86 = vshlq_s8(v84, v67);
    v84.i64[0] = -1;
    v84.i64[1] = -1;
    v87 = vqtbl1q_s8(vandq_s8(vaddq_s8(v86, v84), v85), xmmword_29D2F0F70);
    v88 = vdupq_lane_s32(*v87.i8, 0);
    v89 = vdupq_lane_s32(*v87.i8, 1);
    v90 = vdupq_laneq_s32(v87, 2);
    v91 = vdupq_laneq_s32(v87, 3);
    v92 = vsubq_s8(v66, v88);
    v93 = vsubq_s8(v66, v89);
    v94 = vsubq_s8(v66, v90);
    v95 = vsubq_s8(v66, v91);
    v96 = vceqzq_s8(v88);
    v97 = vceqzq_s8(v89);
    v98 = vceqzq_s8(v90);
    v99 = vceqzq_s8(v91);
  }

  v100.i64[0] = 0x808080808080808;
  v100.i64[1] = 0x808080808080808;
  v101 = 0uLL;
  v102 = vandq_s8(vextq_s8(vtstq_s8(v62, v100), 0, 0xCuLL), v66);
  v103 = vmovl_u8(*&vpaddq_s8(v102, v102));
  v104 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v100.i64[0] = vpaddq_s32(v104, v104).u64[0];
  v105.i64[0] = v100.u32[0];
  v105.i64[1] = v100.u32[1];
  v106 = v105;
  v107 = vaddvq_s64(v105);
  v108 = v52 + v107;
  if (v107 <= 0x80 && v61 >= v108)
  {
    v110 = v52 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v106));
    v112 = (v49 + 8 * (v52 >> 6));
    v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v107 >= 0x81)
    {
      v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v101);
    }

    v52 = v108;
  }

  else
  {
    v75 = 1;
  }

  v113 = v62.i8[0] & 3;
  v377 = v96;
  v380 = v65;
  v375 = v99;
  v369 = v97;
  v371 = v98;
  if (v113 == 2)
  {
    v114 = v61 < v52 + 4;
    v115 = v52 + 8;
    if (v61 >= v52 + 4)
    {
      v52 += 4;
    }

    else
    {
      v115 = v52 + 4;
    }

    if (v61 < v115)
    {
      v116 = 1;
    }

    else
    {
      v52 = v115;
      v116 = v114;
    }

    v75 |= v116;
  }

  v117 = 0uLL;
  v118 = vextq_s8(0, v92, 0xCuLL);
  v119 = vmovl_u8(*&vpaddq_s8(v118, v118));
  v120 = vmovl_u16(*&vpaddq_s16(v119, v119));
  v121 = vpaddq_s32(v120, v120).u64[0];
  v122.i64[0] = v121;
  v122.i64[1] = HIDWORD(v121);
  v123 = v122;
  v124 = vaddvq_s64(v122);
  v125 = v52 + v124;
  if (v124 <= 0x80 && v61 >= v125)
  {
    v128 = v52 & 0x3F;
    v129 = vaddq_s64(vdupq_n_s64(v128), vzip1q_s64(0, v123));
    v130 = (v49 + 8 * (v52 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v130, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v129)), vshlq_u64(vdupq_lane_s64(v130->i64[0], 0), vnegq_s64(v129)));
    if (v128 + v124 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v130[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v129)), vshlq_u64(vdupq_laneq_s64(v130[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v129))), v127);
    }

    v52 = v125;
  }

  else
  {
    v75 = 1;
    v127 = 0uLL;
  }

  v131 = vmovl_u8(*&vpaddq_s8(v92, v92));
  v132 = vmovl_u16(*&vpaddq_s16(v131, v131));
  v133 = vpaddq_s32(v132, v132).u64[0];
  v134.i64[0] = v133;
  v134.i64[1] = HIDWORD(v133);
  v135 = v134;
  v136 = vaddvq_s64(v134);
  v137 = v52 + v136;
  if (v136 <= 0x80 && v61 >= v137)
  {
    v139 = v52 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v135));
    v141 = (v49 + 8 * (v52 >> 6));
    v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v136 >= 0x81)
    {
      v117 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v117);
    }

    v52 = v137;
  }

  else
  {
    v75 = 1;
  }

  v142 = vmovl_u8(*&vpaddq_s8(v93, v93));
  v143 = vmovl_u16(*&vpaddq_s16(v142, v142));
  v144 = vpaddq_s32(v143, v143).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  v148 = v52 + v147;
  v149 = 0uLL;
  if (v147 <= 0x80 && v61 >= v148)
  {
    v152 = v52 & 0x3F;
    v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v146));
    v154 = (v49 + 8 * (v52 >> 6));
    v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
    if (v152 + v147 >= 0x81)
    {
      v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v151);
    }

    v52 = v148;
  }

  else
  {
    v75 = 1;
    v151 = 0uLL;
  }

  v155 = v52 + v147;
  if (v147 <= 0x80 && v61 >= v155)
  {
    v157 = v52 & 0x3F;
    v158 = vaddq_s64(vdupq_n_s64(v157), vzip1q_s64(0, v146));
    v159 = (v49 + 8 * (v52 >> 6));
    v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v158)));
    if (v157 + v147 >= 0x81)
    {
      v149 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v149);
    }

    v52 = v155;
  }

  else
  {
    v75 = 1;
  }

  v160 = vmovl_u8(*&vpaddq_s8(v94, v94));
  v161 = vmovl_u16(*&vpaddq_s16(v160, v160));
  v162 = vpaddq_s32(v161, v161).u64[0];
  v163.i64[0] = v162;
  v163.i64[1] = HIDWORD(v162);
  v164 = v163;
  v165 = vaddvq_s64(v163);
  v166 = v52 + v165;
  v167 = 0uLL;
  if (v165 <= 0x80 && v61 >= v166)
  {
    v170 = v52 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v164));
    v172 = (v49 + 8 * (v52 >> 6));
    v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v165 >= 0x81)
    {
      v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v169);
    }

    v52 = v166;
    if (v165 > 0x80)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v75 = 1;
    v169 = 0uLL;
    if (v165 > 0x80)
    {
      goto LABEL_99;
    }
  }

  v173 = v52 + v165;
  if (v61 >= v52 + v165)
  {
    v174 = v52 & 0x3F;
    v175 = vaddq_s64(vdupq_n_s64(v174), vzip1q_s64(0, v164));
    v176 = (v49 + 8 * (v52 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
    if (v174 + v165 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v167);
    }

    goto LABEL_100;
  }

LABEL_99:
  v75 = 1;
  v173 = v52;
LABEL_100:
  v373 = v95;
  v177 = vmovl_u8(*&vpaddq_s8(v95, v95));
  v178 = vmovl_u16(*&vpaddq_s16(v177, v177));
  v179 = vpaddq_s32(v178, v178).u64[0];
  v180.i64[0] = v179;
  v180.i64[1] = HIDWORD(v179);
  v181 = v180;
  v182 = vaddvq_s64(v180);
  v183 = v182;
  if (v182 > 0x80 || (v184 = v173 + v182, v61 < v173 + v182))
  {
    v75 = 1;
    v184 = v173;
    v188 = 0uLL;
  }

  else
  {
    v185 = v173 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v181));
    v187 = (v49 + 8 * (v173 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v183 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  if (v183 > 0x80 || v61 < v184 + v183)
  {
    goto LABEL_114;
  }

  v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v181));
  v190 = (v49 + 8 * (v184 >> 6));
  v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
  if ((v184 & 0x3F) + v183 >= 0x81)
  {
    v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
  }

  if ((v75 & 1) != 0 || (v10 = a4 + 1, v61 + 8 * v10 - (v184 + v183) - 512 >= 9) || v113 == 2)
  {
LABEL_114:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v193 = vzip1_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL));
    v194 = vzip1_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v195 = vzip1_s32(*v132.i8, *&vextq_s8(v132, v132, 8uLL));
    v196 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
    v197 = vzip1_s32(*v161.i8, *&vextq_s8(v161, v161, 8uLL));
    v198 = vzip1_s32(*v178.i8, *&vextq_s8(v178, v178, 8uLL));
    v199.i64[0] = v193.u32[0];
    v199.i64[1] = v193.u32[1];
    v200 = vshlq_u64(v101, vnegq_s64(v199));
    v201 = vzip2q_s64(v101, v200);
    v202 = vzip1q_s64(v101, v200);
    v199.i64[0] = v194.u32[0];
    v199.i64[1] = v194.u32[1];
    v203 = vshlq_u64(v127, vnegq_s64(v199));
    v204 = vzip2q_s64(v127, v203);
    v205 = vzip1q_s64(v127, v203);
    v199.i64[0] = v195.u32[0];
    v199.i64[1] = v195.u32[1];
    v206 = vshlq_u64(v117, vnegq_s64(v199));
    v207 = vzip2q_s64(v117, v206);
    v208 = vzip1q_s64(v117, v206);
    v199.i64[0] = v196.u32[0];
    v199.i64[1] = v196.u32[1];
    v209 = vnegq_s64(v199);
    v210 = vshlq_u64(v151, v209);
    v211 = vzip2q_s64(v151, v210);
    v212 = vzip1q_s64(v151, v210);
    v213 = vshlq_u64(v149, v209);
    v214 = vzip2q_s64(v149, v213);
    v215 = vzip1q_s64(v149, v213);
    v199.i64[0] = v197.u32[0];
    v199.i64[1] = v197.u32[1];
    v216 = vnegq_s64(v199);
    v217 = vshlq_u64(v169, v216);
    v218 = vzip2q_s64(v169, v217);
    v219 = vzip1q_s64(v169, v217);
    v220 = vshlq_u64(v167, v216);
    v221 = vzip2q_s64(v167, v220);
    v222 = vzip1q_s64(v167, v220);
    v199.i64[0] = v198.u32[0];
    v199.i64[1] = v198.u32[1];
    v223 = vnegq_s64(v199);
    v224 = vshlq_u64(v188, v223);
    v225 = vzip2q_s64(v188, v224);
    v226 = vzip1q_s64(v188, v224);
    v227 = vuzp1q_s32(v202, v201);
    v228 = vuzp1q_s32(v205, v204);
    v229 = vuzp1q_s32(v208, v207);
    v230 = vuzp1q_s32(v212, v211);
    v231 = vnegq_s32((*&v103 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v232 = vnegq_s32((*&v142 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v233 = vuzp1q_s32(v215, v214);
    v234 = vuzp1q_s32(v219, v218);
    v235 = vnegq_s32((*&v160 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v236 = vuzp1q_s32(v222, v221);
    v237 = vuzp1q_s32(v226, v225);
    v238 = vnegq_s32((*&v177 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v239 = vshlq_u32(v227, v231);
    v240 = vshlq_u32(v230, v232);
    v241 = vshlq_u32(v233, v232);
    v242 = vshlq_u32(v234, v235);
    v243 = vshlq_u32(v236, v235);
    v244 = vshlq_u32(v237, v238);
    v245 = vuzp1q_s16(vzip1q_s32(v227, v239), vzip2q_s32(v227, v239));
    v246 = vuzp1q_s16(vzip1q_s32(v230, v240), vzip2q_s32(v230, v240));
    v247 = vuzp1q_s16(vzip1q_s32(v233, v241), vzip2q_s32(v233, v241));
    v248 = vuzp1q_s16(vzip1q_s32(v234, v242), vzip2q_s32(v234, v242));
    v249 = vnegq_s16((*&v93 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v250 = vuzp1q_s16(vzip1q_s32(v236, v243), vzip2q_s32(v236, v243));
    v251 = vuzp1q_s16(vzip1q_s32(v237, v244), vzip2q_s32(v237, v244));
    v252 = vshlq_u16(v245, vnegq_s16((*&v102 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v253 = vshlq_u16(v246, v249);
    v254 = vshlq_u16(v247, v249);
    v255 = vzip2q_s16(v245, v252);
    v256 = vzip1q_s16(v245, v252);
    v257 = vuzp1q_s8(vzip1q_s16(v247, v254), vzip2q_s16(v247, v254));
    v254.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v254.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v252.i64[0] = 0x808080808080808;
    v252.i64[1] = 0x808080808080808;
    v258 = vsubq_s8(v252, v102);
    v259 = vaddq_s8(v102, v254);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v261 = vshlq_s8(vuzp1q_s8(v256, v255), v258);
    v258.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v258.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v262 = vsubq_s8(v260, v93);
    v263 = vaddq_s8(v93, v258);
    v264 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v253), vzip2q_s16(v246, v253)), v262);
    v265 = vshlq_s8(v257, v262);
    v266 = vnegq_s16((*&v94 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v267 = vshlq_s8(v261, v259);
    v268 = vshlq_s8(v264, v263);
    v269 = vshlq_s8(v265, v263);
    v270 = vdupq_lane_s32(*v267.i8, 0);
    v271 = vandq_s8(v369, v270);
    v272 = vsubq_s8(v268, v271);
    v273 = vsubq_s8(v269, v271);
    v274 = vshlq_u16(v248, v266);
    v275 = vshlq_u16(v250, v266);
    v276 = vuzp1q_s8(vzip1q_s16(v248, v274), vzip2q_s16(v248, v274));
    v271.i64[0] = 0x808080808080808;
    v271.i64[1] = 0x808080808080808;
    v248.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v248.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v277 = vsubq_s8(v271, v94);
    v278 = vaddq_s8(v94, v248);
    v279 = vshlq_s8(v276, v277);
    v280 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v250, v275), vzip2q_s16(v250, v275)), v277);
    v281 = vnegq_s16((*&v373 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v282 = vshlq_s8(v280, v278);
    v283 = vandq_s8(v371, v270);
    v284 = vsubq_s8(vshlq_s8(v279, v278), v283);
    v285 = vsubq_s8(v282, v283);
    v286 = vshlq_u16(v251, v281);
    v287 = vzip2q_s16(v251, v286);
    v288 = vzip1q_s16(v251, v286);
    v251.i64[0] = 0x808080808080808;
    v251.i64[1] = 0x808080808080808;
    v289 = vuzp1q_s8(v288, v287);
    v287.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v287.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v290 = vsubq_s8(v251, v373);
    v291 = vaddq_s8(v373, v287);
    v292 = vshlq_u64(v191, v223);
    v293 = vuzp1q_s32(vzip1q_s64(v191, v292), vzip2q_s64(v191, v292));
    v294 = vshlq_u32(v293, v238);
    v295 = vuzp1q_s16(vzip1q_s32(v293, v294), vzip2q_s32(v293, v294));
    v296 = vshlq_u16(v295, v281);
    v297 = vshlq_s8(vshlq_s8(v289, v290), v291);
    v298 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v295, v296), vzip2q_s16(v295, v296)), v290), v291);
    v299 = vandq_s8(v375, v270);
    v300 = vsubq_s8(v297, v299);
    v301 = vsubq_s8(v298, v299);
    v302 = vshlq_u32(v228, vnegq_s32((*&v119 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v303 = vshlq_u32(v229, vnegq_s32((*&v131 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v304 = vuzp1q_s16(vzip1q_s32(v228, v302), vzip2q_s32(v228, v302));
    *v297.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v60), xmmword_29D2F0F60));
    v305 = vuzp1q_s16(vzip1q_s32(v229, v303), vzip2q_s32(v229, v303));
    v306 = vshlq_u16(v304, vnegq_s16((*&v118 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v307 = vshlq_u16(v305, vnegq_s16((*&v92 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v308 = vzip2q_s16(v304, v306);
    v309 = vzip1q_s16(v304, v306);
    v310 = vzip2q_s16(v305, v307);
    v311 = vzip1q_s16(v305, v307);
    v307.i16[0] = v60;
    v312 = v297.i8[4];
    v307.i8[2] = v297.i8[0];
    v313 = vuzp1q_s8(v309, v308);
    v309.i64[0] = 0x808080808080808;
    v309.i64[1] = 0x808080808080808;
    v314 = vuzp1q_s8(v311, v310);
    v310.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v315 = vshlq_s8(vshlq_s8(v314, vsubq_s8(v309, v92)), vaddq_s8(v92, v310));
    v316 = vaddq_s8(vandq_s8(v267, v377), vshlq_s8(vshlq_s8(v313, vsubq_s8(v309, v118)), vaddq_s8(v118, v310)));
    v317 = vandq_s8(v377, v270);
    v318.i64[0] = 0x101010101010101;
    v318.i64[1] = 0x101010101010101;
    v319 = vsubq_s8(v316, v317);
    v320 = vsubq_s8(v315, v317);
    v307.i8[3] = v312;
    v321 = vdupq_lane_s32(*v307.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v380, v318)))
    {
      v322 = vnegq_s8(vandq_s8(v62, v318));
      v323 = v320;
      v323.i32[3] = v319.i32[0];
      v324 = v319;
      v324.i32[0] = v320.i32[3];
      v390.val[0] = vbslq_s8(v322, v324, v319);
      v390.val[1] = vbslq_s8(v322, v323, v320);
      v323.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v323.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, xmmword_29D2F0F80), v322), v390.val[0]);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, v323), v322), v390.val[1]);
      v319 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0F90), v322), v391.val[0]);
      v320 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[1]);
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FA0), v322), v272);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FB0), v322), v273);
      v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0FC0), v322), v391.val[0]);
      v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[1]);
      v391.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v284.i8, xmmword_29D2F0FD0), v322), v284);
      v391.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v284.i8, xmmword_29D2F0F80), v322), v285);
      v284 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, v323), v322), v391.val[0]);
      v285 = vaddq_s8(vandq_s8(vqtbl2q_s8(v391, xmmword_29D2F0FE0), v322), v391.val[1]);
      v390.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v300.i8, xmmword_29D2F0FF0), v322), v300);
      v390.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v300.i8, xmmword_29D2F0F80), v322), v301);
      v300 = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, v323), v322), v390.val[0]);
      v301 = vaddq_s8(vandq_s8(vqtbl2q_s8(v390, xmmword_29D2F1000), v322), v390.val[1]);
    }

    v325 = v62.i8[1];
    v326 = vaddq_s8(v319, v321);
    v327 = vaddq_s8(v320, v321);
    v328 = vaddq_s8(v272, v321);
    v329 = vaddq_s8(v273, v321);
    v330 = vaddq_s8(v284, v321);
    v331 = vaddq_s8(v285, v321);
    v332 = vaddq_s8(v300, v321);
    v333 = vaddq_s8(v301, v321);
    v334.i64[0] = 0x1010101010101010;
    v334.i64[1] = 0x1010101010101010;
    v335 = vtstq_s8(v62, v334);
    if ((v325 & 0x10) != 0)
    {
      v335.i8[1] = v335.i8[2];
      v335.i8[2] = 0;
      v335 = vdupq_lane_s32(*v335.i8, 0);
      v336 = xmmword_29D2F1020;
    }

    else
    {
      v336 = xmmword_29D2F1010;
    }

    v337 = vaddq_s8(vandq_s8(v335, vqtbl1q_s8(v326, v336)), v326);
    v338 = vaddq_s8(vandq_s8(v335, vqtbl1q_s8(v327, v336)), v327);
    v339 = vaddq_s8(vandq_s8(vqtbl1q_s8(v328, v336), v335), v328);
    v340 = vaddq_s8(vandq_s8(vqtbl1q_s8(v329, v336), v335), v329);
    v341 = vaddq_s8(vandq_s8(vqtbl1q_s8(v330, v336), v335), v330);
    v342 = vaddq_s8(vandq_s8(vqtbl1q_s8(v331, v336), v335), v331);
    v343 = vzip2q_s64(v337, v338);
    v344.i64[0] = v337.i64[0];
    v344.i64[1] = v338.i64[0];
    v337.i64[0] = v341.i64[0];
    v337.i64[1] = v342.i64[0];
    v345 = (a1 + a2);
    *a1 = v344;
    a1[1] = v337;
    v346 = (a1 + 2 * a2);
    v347 = vaddq_s8(vandq_s8(vqtbl1q_s8(v332, v336), v335), v332);
    v348 = vaddq_s8(vandq_s8(vqtbl1q_s8(v333, v336), v335), v333);
    *v345 = v343;
    v345[1] = vzip2q_s64(v341, v342);
    v341.i64[0] = v339.i64[0];
    v341.i64[1] = v340.i64[0];
    v344.i64[0] = v347.i64[0];
    v344.i64[1] = v348.i64[0];
    *v346 = v341;
    v346[1] = v344;
    v349 = (v346 + a2);
    *v349 = vzip2q_s64(v339, v340);
    v349[1] = vzip2q_s64(v347, v348);
  }

  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 2, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 34, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 48, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 32), a2, v25, v24);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v13 = vzip1q_s64(v8, v10);
  v15 = *v7;
  v16 = v7[1];
  v14 = (v7 + a4);
  v17 = vzip2q_s64(v8, v10);
  v18 = v14[1];
  v19 = vzip1q_s64(v15, *v14);
  v20 = vzip2q_s64(v15, *v14);
  v21 = vzip1q_s64(v16, v18);
  v22 = vzip2q_s64(v16, v18);
  v23.i64[0] = v11.u32[0];
  v23.i64[1] = v11.u32[1];
  v24 = v23;
  v23.i64[0] = v11.u32[2];
  v23.i64[1] = v11.u32[3];
  v25 = vbslq_s8(xmmword_29D2F1290, v24, 0);
  v26 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v12.u32[0];
  v23.i64[1] = v12.u32[1];
  v27 = v23;
  v23.i64[0] = v12.u32[2];
  v23.i64[1] = v12.u32[3];
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v26)));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v27, 0))));
  v31 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v19.u32[0];
  v23.i64[1] = v19.u32[1];
  v32 = v23;
  v23.i64[0] = v19.u32[2];
  v23.i64[1] = v19.u32[3];
  v33 = vbslq_s8(xmmword_29D2F1290, v32, 0);
  v34 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v20.u32[0];
  v23.i64[1] = v20.u32[1];
  v35 = v23;
  v23.i64[0] = v20.u32[2];
  v23.i64[1] = v20.u32[3];
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v19.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v19.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v19.i8, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v19, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v19, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v19, 6uLL), v34)));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v20.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v20.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v20.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v35, 0))));
  v39 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v20, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v20, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v20, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v13.u32[0];
  v23.i64[1] = v13.u32[1];
  v40 = v23;
  v23.i64[0] = v13.u32[2];
  v23.i64[1] = v13.u32[3];
  v41 = vbslq_s8(xmmword_29D2F1290, v40, 0);
  v42 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v17.u32[0];
  v23.i64[1] = v17.u32[1];
  v43 = v23;
  v23.i64[0] = v17.u32[2];
  v23.i64[1] = v17.u32[3];
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), v42)));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v17.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v17.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v17.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v43, 0))));
  v47 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v17, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v17, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v17, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v21.u32[0];
  v23.i64[1] = v21.u32[1];
  v48 = v23;
  v23.i64[0] = v21.u32[2];
  v23.i64[1] = v21.u32[3];
  v49 = vbslq_s8(xmmword_29D2F1290, v48, 0);
  v50 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v22.u32[0];
  v23.i64[1] = v22.u32[1];
  v51 = v23;
  v23.i64[0] = v22.u32[2];
  v23.i64[1] = v22.u32[3];
  v52 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v21.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v21.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v21.i8, 6uLL), v49)));
  v53 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v21, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v21, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v21, 6uLL), v50)));
  v54 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v22.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v22.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v22.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v51, 0))));
  v55 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v22, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v22, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v22, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v56 = vdupq_lane_s64(v28.i64[0], 0);
  v507 = v39;
  v57 = vsubq_s16(v39, v56);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v511 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v515 = vshlq_s16(vshlq_s16(vsubq_s16(v31, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v58 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v59 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vzip1q_s16(v60, v61);
  v58.i64[0] = 0x10001000100010;
  v58.i64[1] = 0x10001000100010;
  v63 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v62)), vceqzq_s16(v62));
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = vshlq_s16(vshlq_s16(v57, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v64.i64[0] = 0x8000800080008000;
  v64.i64[1] = 0x8000800080008000;
  v57.i64[0] = 0x8000800080008000;
  v57.i64[1] = 0x8000800080008000;
  v65 = vminq_s16(v61, v57);
  v66 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v67 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(vmaxq_s16(v60, v64), v68);
  v71 = vminq_s16(v65, v69);
  v72 = vzip1q_s16(v68, v69);
  v73 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v72)), vceqzq_s16(v72));
  v521 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v74 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vminq_s16(vminq_s16(v521, v522), v74);
  v523 = v74;
  v524 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v76 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v521, v522), v74), v524), xmmword_29D2F1150);
  v77 = vqtbl1q_s8(vminq_s16(v75, v524), xmmword_29D2F1150);
  v78 = vpmaxq_s16(v76, v76);
  v79 = vpminq_s16(v77, v77);
  v80 = vmaxq_s16(v70, v78);
  v81 = vminq_s16(v71, v79);
  v82 = vzip1q_s16(v78, v79);
  v83 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v82)), vceqzq_s16(v82));
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v529 = v56;
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v54, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v528 = vshlq_s16(vshlq_s16(vsubq_s16(v55, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v84 = vpmaxq_s16(v63, v63);
  v85 = vpmaxq_s16(v73, v73);
  v86 = vpmaxq_s16(v83, v83);
  v87 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v88 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v89 = vpmaxq_s16(v87, v87);
  v90 = vpminq_s16(v88, v88);
  v91 = vmaxq_s16(v80, v89);
  v92 = vminq_s16(v81, v90);
  v93 = vzip1q_s16(v89, v90);
  v94 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v93)), vceqzq_s16(v93));
  v95 = vpmaxq_s16(v94, v94);
  v96 = vmaxq_s16(vmaxq_s16(v84, v85), vmaxq_s16(v86, v95));
  v97 = vclzq_s16(vsubq_s16(v91, v92));
  v98.i64[0] = 0xF000F000F000FLL;
  v98.i64[1] = 0xF000F000F000FLL;
  v99.i64[0] = -1;
  v99.i64[1] = -1;
  v536 = v92;
  v537 = v91;
  v100 = vsubq_s16(vshlq_s16(v99, vsubq_s16(v98, v97)), v92);
  v101 = vsubq_s16(v58, v97);
  v102 = vcgtq_s16(v96, v101);
  v103 = vminq_s16(v101, v96);
  v538 = vandq_s8(v100, v102);
  v100.i64[0] = 0x8000800080008;
  v100.i64[1] = 0x8000800080008;
  v58.i64[0] = 0x3000300030003;
  v58.i64[1] = 0x3000300030003;
  v104 = vorrq_s8(vandq_s8(vceqzq_s16(v103), v58), vorrq_s8(vandq_s8(v102, v100), 0));
  v105 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v85), v58), 0);
  v106 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v86), v58), 0);
  v532 = vsubq_s16(v103, v105);
  v533 = vsubq_s16(v103, v106);
  v107 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v95), v58), 0);
  v534 = vsubq_s16(v103, v107);
  v535 = v103;
  v108 = vaddq_s16(v107, v106);
  v109 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v84), v58), 0);
  v110 = vsubq_s16(v103, v109);
  v111 = vceqq_s16(v108, vnegq_s16(vaddq_s16(v109, v105)));
  v109.i64[0] = 0x4000400040004;
  v109.i64[1] = 0x4000400040004;
  v112 = vorrq_s8(vbicq_s8(v109, v111), v104);
  v530 = v112;
  v531 = v110;
  if (vmaxvq_s16(v103))
  {
    v475 = v55;
    v476 = v47;
    v477 = v36;
    v478 = v37;
    v479 = v38;
    v501.val[0] = v28;
    v501.val[1] = v29;
    v501.val[2] = v30;
    v501.val[3] = v31;
    v504 = v104;
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v488 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v116 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v117 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v118 = vpmaxq_s16(v116, v116);
    v119 = vpminq_s16(v117, v117);
    v120.i64[0] = 0x8000800080008000;
    v120.i64[1] = 0x8000800080008000;
    v121 = vmaxq_s16(v118, v120);
    v122.i64[0] = 0x8000800080008000;
    v122.i64[1] = 0x8000800080008000;
    v123 = vminq_s16(v119, v122);
    v124 = vzip1q_s16(v118, v119);
    v125.i64[0] = 0x10001000100010;
    v125.i64[1] = 0x10001000100010;
    v126 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v124)), vceqzq_s16(v124));
    v127 = vpmaxq_s16(v126, v126);
    v491 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v128 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v129 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vmaxq_s16(v121, v130);
    v133 = vminq_s16(v123, v131);
    v134 = vzip1q_s16(v130, v131);
    v135.i64[0] = 0x10001000100010;
    v135.i64[1] = 0x10001000100010;
    v136 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v134)), vceqzq_s16(v134));
    v137 = vpmaxq_s16(v136, v136);
    v495 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v496 = vshlq_s16(vshlq_s16(vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v502 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v498 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v132, v140);
    v143 = vminq_s16(v133, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v480 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v150.i64[0] = 0x10001000100010;
    v150.i64[1] = 0x10001000100010;
    v154 = vbicq_s8(vsubq_s16(v150, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v127, v137), vmaxq_s16(v146, v155));
    v489 = v152;
    v490 = v151;
    v157 = vclzq_s16(vsubq_s16(v151, v152));
    v158 = vsubq_s16(v150, v157);
    v151.i64[0] = 0x10001000100010;
    v151.i64[1] = 0x10001000100010;
    v159 = vcgtq_s16(v156, v158);
    v160 = vminq_s16(v158, v156);
    v158.i64[0] = 0x3000300030003;
    v158.i64[1] = 0x3000300030003;
    v161 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v127), v158), 0);
    v162 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v137), v158), 0);
    v163 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v146), v158), 0);
    v152.i64[0] = 0x3000300030003;
    v152.i64[1] = 0x3000300030003;
    v164 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v155), v158), 0);
    v150.i64[0] = 0x4000400040004;
    v150.i64[1] = 0x4000400040004;
    v165 = vbicq_s8(v150, vceqq_s16(vaddq_s16(v164, v163), vnegq_s16(vaddq_s16(v161, v162))));
    v158.i64[0] = 0x18001800180018;
    v158.i64[1] = 0x18001800180018;
    v166 = v159;
    v167 = vbslq_s8(v159, v158, v151);
    v482 = vsubq_s16(v160, v162);
    v483 = vsubq_s16(v160, v163);
    v484 = vsubq_s16(v160, v164);
    v163.i64[0] = 0x7000700070007;
    v163.i64[1] = 0x7000700070007;
    v481 = vsubq_s16(v160, v161);
    v161.i64[0] = 0x8000800080008;
    v161.i64[1] = 0x8000800080008;
    v150.i64[0] = 0x2000200020002;
    v150.i64[1] = 0x2000200020002;
    v169 = v534;
    v168 = v535;
    v170 = vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v504, v161))), vandq_s8(vceqq_s16(vandq_s8(v504, v152), v150), v151)), vandq_s8(vaddq_s16(v112, v112), v161));
    v171 = v531;
    v172 = v532;
    v173 = v533;
    v174 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v170, v531, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v481, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v483, v482), v484), 3uLL))).i64[0], 0);
    v175 = vaddvq_s16(v174);
    v177 = a5 < 4 || a6 < 2;
    if (v175)
    {
      v178.i64[0] = 0x3000300030003;
      v178.i64[1] = 0x3000300030003;
      v179 = vorrq_s8(vandq_s8(vceqzq_s16(v160), v178), v167);
      v180 = v114;
      v181 = vorrq_s8(v179, v165);
      v179.i64[0] = 0xF000F000F000FLL;
      v179.i64[1] = 0xF000F000F000FLL;
      v509 = vbslq_s8(v174, v485, v509);
      v511 = vbslq_s8(v174, v486, v511);
      v178.i64[0] = -1;
      v178.i64[1] = -1;
      v513 = vbslq_s8(v174, v488, v513);
      v515 = vbslq_s8(v174, v487, v515);
      v517 = vbslq_s8(v174, v492, v517);
      v518 = vbslq_s8(v174, v491, v518);
      v519 = vbslq_s8(v174, v494, v519);
      v520 = vbslq_s8(v174, v493, v520);
      v521 = vbslq_s8(v174, v496, v521);
      v522 = vbslq_s8(v174, v495, v522);
      v523 = vbslq_s8(v174, v502, v523);
      v524 = vbslq_s8(v174, v498, v524);
      v525 = vbslq_s8(v174, v113, v525);
      v526 = vbslq_s8(v174, v180, v526);
      v527 = vbslq_s8(v174, v480, v527);
      v528 = vbslq_s8(v174, v115, v528);
      v171 = vbslq_s8(v174, v481, v531);
      v172 = vbslq_s8(v174, v482, v532);
      v531 = v171;
      v532 = v172;
      v173 = vbslq_s8(v174, v483, v533);
      v169 = vbslq_s8(v174, v484, v534);
      v533 = v173;
      v534 = v169;
      v537 = vbslq_s8(v174, v490, v537);
      v538 = vbslq_s8(v174, vandq_s8(vsubq_s16(vshlq_s16(v178, vsubq_s16(v179, v157)), v489), v166), v538);
      v168 = vbslq_s8(v174, v160, v535);
      v535 = v168;
      v536 = vbslq_s8(v174, v489, v536);
      v112 = vbslq_s8(v174, v181, v530);
      v529 = vbslq_s8(v174, vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), v529);
      v530 = v112;
    }

    if (!v177)
    {
      v182 = vqtbl4q_s8(v501, xmmword_29D2F1160);
      v183 = vsubq_s16(v501.val[0], vqtbl4q_s8(v501, xmmword_29D2F10B0));
      v184 = vsubq_s16(v501.val[2], v182);
      v185 = vsubq_s16(v501.val[3], v182);
      v539.val[0] = v477;
      v539.val[1] = v478;
      v539.val[2] = v479;
      v539.val[3].i64[0] = v507.i64[0];
      v539.val[3].i64[1] = v501.val[3].i64[1];
      v186 = vsubq_s16(v477, vqtbl4q_s8(v539, xmmword_29D2F10B0));
      v187 = vsubq_s16(v478, vqtbl4q_s8(v539, xmmword_29D2F10F0));
      v188 = vsubq_s16(v479, vqtbl4q_s8(v539, xmmword_29D2F1160));
      v189 = vsubq_s16(v507, vqtbl4q_s8(v539, xmmword_29D2F1100));
      v190 = v476.i64[0];
      v191 = v501.val[3].i64[1];
      v539.val[1] = vqtbl4q_s8(*v44.i8, xmmword_29D2F10C0);
      v192 = vsubq_s16(v44, vqtbl4q_s8(*v44.i8, xmmword_29D2F1170));
      v193 = vsubq_s16(v45, vqtbl4q_s8(*v44.i8, xmmword_29D2F1180));
      v194 = vsubq_s16(v46, vqtbl4q_s8(*v44.i8, xmmword_29D2F10B0));
      v195 = v475.i64[0];
      v196 = v501.val[3].i64[1];
      v539.val[0] = vsubq_s16(v52, vqtbl4q_s8(*v52.i8, xmmword_29D2F1170));
      v197 = vsubq_s16(v53, vqtbl4q_s8(*v52.i8, xmmword_29D2F1120));
      v198 = vsubq_s16(v54, vqtbl4q_s8(*v52.i8, xmmword_29D2F10B0));
      v199.i64[0] = v185.i64[0];
      v199.i64[1] = v183.i64[0];
      v200 = vsubq_s16(v475, vqtbl4q_s8(*v52.i8, xmmword_29D2F10C0));
      v183.i64[0] = v185.i64[1];
      v201 = vshlq_s16(v183, xmmword_29D2F12D0);
      v202 = vshlq_s16(v184, xmmword_29D2F12D0);
      v203 = vshlq_s16(v192, xmmword_29D2F12D0);
      v204 = vshlq_s16(v193, xmmword_29D2F12D0);
      v205 = vshlq_s16(vsubq_s16(v476, v539.val[1]), xmmword_29D2F12D0);
      v539.val[1] = vshlq_s16(v197, xmmword_29D2F12D0);
      v206 = vshlq_s16(v201, xmmword_29D2F12E0);
      v207 = vshlq_s16(vshlq_s16(vsubq_s16(v501.val[1], vqtbl4q_s8(v501, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v208 = vshlq_s16(v202, xmmword_29D2F12E0);
      v209 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v210 = vshlq_s16(vshlq_s16(v186, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v187, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vshlq_s16(vshlq_s16(v188, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v213 = vshlq_s16(vshlq_s16(v189, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v214 = vshlq_s16(v203, xmmword_29D2F12E0);
      v215 = vshlq_s16(v204, xmmword_29D2F12E0);
      v216 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v217 = vshlq_s16(v205, xmmword_29D2F12E0);
      v539.val[2] = vshlq_s16(vshlq_s16(v539.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(v539.val[1], xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v200.i64[0] = 0x8000800080008000;
      v200.i64[1] = 0x8000800080008000;
      v225 = vmaxq_s16(v223, v200);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v226 = vminq_s16(v224, v186);
      v227 = vzip1q_s16(v223, v224);
      v205.i64[0] = 0x10001000100010;
      v205.i64[1] = 0x10001000100010;
      v228 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v239 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v240 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v241 = vpmaxq_s16(v239, v239);
      v242 = vpminq_s16(v240, v240);
      v243 = vmaxq_s16(v234, v241);
      v244 = vminq_s16(v235, v242);
      v245 = vzip1q_s16(v241, v242);
      v246 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v245)), vceqzq_s16(v245));
      v247 = vpmaxq_s16(v246, v246);
      v505 = v539.val[2];
      v506 = v220;
      v508 = v219;
      v248 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v249 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v250 = vpmaxq_s16(v248, v248);
      v251 = vpminq_s16(v249, v249);
      v252 = vmaxq_s16(v243, v250);
      v253 = vminq_s16(v244, v251);
      v254 = vzip1q_s16(v250, v251);
      v255 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v254)), vceqzq_s16(v254));
      v256 = vpmaxq_s16(v255, v255);
      v257 = vmaxq_s16(vmaxq_s16(v229, v238), vmaxq_s16(v247, v256));
      v503 = v252;
      v258 = vclzq_s16(vsubq_s16(v252, v253));
      v259 = vsubq_s16(v205, v258);
      v260 = vcgtq_s16(v257, v259);
      v261 = vminq_s16(v259, v257);
      v257.i64[0] = 0x3000300030003;
      v257.i64[1] = 0x3000300030003;
      v262 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v229), v257), 0);
      v263 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v238), v257), 0);
      v264 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v247), v257), 0);
      v265 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v256), v257), 0);
      v266 = vsubq_s16(v261, v262);
      v539.val[1] = vsubq_s16(v261, v263);
      v267 = vsubq_s16(v261, v265);
      v268 = vceqq_s16(vaddq_s16(v265, v264), vnegq_s16(vaddq_s16(v262, v263)));
      v263.i64[0] = 0x4000400040004;
      v263.i64[1] = 0x4000400040004;
      v269 = vbicq_s8(v263, v268);
      v265.i64[0] = 0x7000700070007;
      v265.i64[1] = 0x7000700070007;
      v497 = vsubq_s16(v261, v264);
      v499 = v539.val[1];
      v500 = v267;
      v270 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v261, v260), vaddq_s16(v269, v269)), v266, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v539.val[1]), v267), 3uLL));
      v112 = v530;
      v271 = v531;
      v272.i64[0] = 0x2000200020002;
      v272.i64[1] = 0x2000200020002;
      v273 = vandq_s8(vceqq_s16(vandq_s8(v530, v257), v272), v205);
      v257.i64[0] = 0x8000800080008;
      v257.i64[1] = 0x8000800080008;
      v169 = v534;
      v168 = v535;
      v172 = v532;
      v173 = v533;
      v274 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v530, v257))), vandq_s8(vaddq_s16(v112, v112), v257)), v273), v531, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), v270).i64[0], 0);
      if (vaddvq_s16(v274))
      {
        v275.i64[0] = 0x9000900090009;
        v275.i64[1] = 0x9000900090009;
        v276 = vorrq_s8(vandq_s8(vceqzq_s16(v261), v272), vsubq_s16(vandq_s8(v260, v275), vmvnq_s8(v260)));
        v275.i64[0] = -1;
        v275.i64[1] = -1;
        v277.i64[0] = 0xF000F000F000FLL;
        v277.i64[1] = 0xF000F000F000FLL;
        v271 = vbslq_s8(v274, v266, v531);
        v172 = vbslq_s8(v274, v499, v532);
        v173 = vbslq_s8(v274, v497, v533);
        v169 = vbslq_s8(v274, v500, v534);
        v168 = vbslq_s8(v274, v261, v535);
        v112 = vbslq_s8(v274, vorrq_s8(v276, v269), v530);
        v528 = vbslq_s8(v274, v506, v528);
        v529 = vbslq_s8(v274, vextq_s8(v501.val[3], v501.val[3], 8uLL), v529);
        v509 = vbslq_s8(v274, v206, v509);
        v511 = vbslq_s8(v274, v207, v511);
        v513 = vbslq_s8(v274, v208, v513);
        v515 = vbslq_s8(v274, v209, v515);
        v517 = vbslq_s8(v274, v210, v517);
        v518 = vbslq_s8(v274, v211, v518);
        v519 = vbslq_s8(v274, v212, v519);
        v520 = vbslq_s8(v274, v213, v520);
        v521 = vbslq_s8(v274, v214, v521);
        v522 = vbslq_s8(v274, v215, v522);
        v523 = vbslq_s8(v274, v216, v523);
        v524 = vbslq_s8(v274, v217, v524);
        v525 = vbslq_s8(v274, v505, v525);
        v526 = vbslq_s8(v274, v218, v526);
        v527 = vbslq_s8(v274, v508, v527);
        v536 = vbslq_s8(v274, v253, v536);
        v537 = vbslq_s8(v274, v503, v537);
        v538 = vbslq_s8(v274, vandq_s8(vsubq_s16(vshlq_s16(v275, vsubq_s16(v277, v258)), v253), v260), v538);
        v531 = v271;
        v532 = v172;
        v533 = v173;
        v534 = v169;
        v535 = v168;
        v530 = v112;
      }

      v171 = v271;
    }

    v278 = vandq_s8(v538, vceqq_s16(v168, v171));
    v510 = vaddq_s16(v278, v509);
    v512 = vaddq_s16(v511, v278);
    v514 = vaddq_s16(v513, v278);
    v516 = vaddq_s16(v515, v278);
    v279 = vandq_s8(v538, vceqq_s16(v168, v172));
    v517 = vaddq_s16(v517, v279);
    v518 = vaddq_s16(v518, v279);
    v519 = vaddq_s16(v519, v279);
    v520 = vaddq_s16(v520, v279);
    v280 = vandq_s8(v538, vceqq_s16(v168, v173));
    v521 = vaddq_s16(v521, v280);
    v522 = vaddq_s16(v522, v280);
    v523 = vaddq_s16(v523, v280);
    v524 = vaddq_s16(v524, v280);
    v281 = vandq_s8(v538, vceqq_s16(v168, v169));
    v525 = vaddq_s16(v525, v281);
    v526 = vaddq_s16(v526, v281);
    v527 = vaddq_s16(v527, v281);
    v528 = vaddq_s16(v528, v281);
    v281.i64[0] = 0x8000800080008;
    v281.i64[1] = 0x8000800080008;
    v282.i64[0] = 0x3000300030003;
    v282.i64[1] = 0x3000300030003;
    v283.i64[0] = 0x2000200020002;
    v283.i64[1] = 0x2000200020002;
    v284 = vceqq_s16(vandq_s8(v112, v282), v283);
    v283.i64[0] = 0x10001000100010;
    v283.i64[1] = 0x10001000100010;
    v285 = vandq_s8(v284, v283);
    v283.i64[0] = 0x7000700070007;
    v283.i64[1] = 0x7000700070007;
    v286 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v168, vceqzq_s16(vandq_s8(v112, v281))), vandq_s8(vaddq_s16(v112, v112), v281)), v285), v171, v283), vshlq_n_s16(vaddq_s16(vaddq_s16(v173, v172), v169), 3uLL));
    v287 = vpaddq_s16(v286, v286);
    if ((vpaddq_s16(v287, v287).i16[0] - 833) < 0xFFFFFFFFFFFFFC78)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 112;
    }

    else
    {
      v288 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v289 = 8 * (a1 & 7);
      if (v289)
      {
        v290 = *v288 & ~(-1 << v289);
      }

      else
      {
        v290 = 0;
      }

      *a2 = 0;
      v292 = v529.i64[0];
      v293 = vmovl_s16(vceqz_s16(*v168.i8));
      v294.i64[0] = v293.i32[0];
      v294.i64[1] = v293.i32[1];
      v295 = v294;
      v294.i64[0] = v293.i32[2];
      v294.i64[1] = v293.i32[3];
      v296 = v294;
      v297 = vand_s8(vadd_s16(*v168.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v297.i16[3] = vbic_s8(0x1000100010001, *&v168).i16[3];
      v298 = vshlq_u32(vmovl_u16(v297), xmmword_29D2F12F0);
      v294.i64[0] = v298.u32[0];
      v294.i64[1] = v298.u32[1];
      v299 = v294;
      v294.i64[0] = v298.u32[2];
      v294.i64[1] = v298.u32[3];
      v300 = vorrq_s8(vbicq_s8(v299, v295), vbicq_s8(v294, v296));
      v301 = *&vorr_s8(*v300.i8, *&vextq_s8(v300, v300, 8uLL)) | v112.i8[0] & 0x1F | (32 * (v112.i8[2] & 0x1F)) & 0x83FF | ((v112.i8[4] & 0x1F) << 10) | ((v112.i8[6] & 0xF) << 15);
      v302 = (v301 << v289) | v290;
      if (v289 >= 0x20)
      {
        *v288 = v302;
        v302 = v301 >> (-8 * (a1 & 7u));
      }

      v303 = v292 & 0x3FF | ((WORD1(v292) & 0x3FF) << 10) | ((WORD2(v292) & 0x3FF) << 20) | ((BYTE6(v292) & 3) << 30);
      v304 = (v289 + 32) & 0x38;
      v305 = v302 | (v303 << v304);
      if (v304 >= 0x20)
      {
        *(v288 + (((v289 + 32) >> 3) & 8)) = v305;
        v305 = v303 >> -v304;
      }

      v306 = vsubq_s16(v535, v531);
      v307 = vsubq_s16(v535, v532);
      v308 = vsubq_s16(v535, v533);
      v309 = vsubq_s16(v535, v534);
      *v306.i8 = vqmovn_u16(v306);
      *v307.i8 = vqmovn_u16(v307);
      *v308.i8 = vqmovn_u16(v308);
      *v309.i8 = vqmovn_u16(v309);
      v310 = vtrn1q_s8(v306, v307);
      v311 = vtrn2q_s8(v306, v307);
      v312 = vtrn1q_s8(v308, v309);
      v313 = vtrn2q_s8(v308, v309);
      v314 = vzip1q_s16(v311, v313);
      v315 = vtrn2q_s16(v311, v313);
      v311.i64[0] = vzip1q_s32(vzip1q_s16(v310, v312), v314).u64[0];
      v315.i64[0] = vzip1q_s32(vtrn2q_s16(v310, v312), v315).u64[0];
      v308.i64[0] = 0x202020202020202;
      v308.i64[1] = 0x202020202020202;
      v316 = vandq_s8(vmovl_s16(vtst_s16(*v530.i8, 0x4000400040004)), v308);
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v317 = vshlq_u8(v310, vorrq_s8(v316, v308));
      v318 = vmovl_u8(vand_s8(*v317.i8, *v311.i8));
      v319 = vmovl_u8(vand_s8(*&vextq_s8(v317, v317, 8uLL), *v315.i8));
      v320 = vmovl_u8(*v316.i8);
      v321 = vmovl_high_u8(v316);
      v322 = vpaddq_s16(vshlq_u16(v318, vtrn1q_s16(0, v320)), vshlq_u16(v319, vtrn1q_s16(0, v321)));
      v323 = vpaddq_s16(v320, v321);
      v324 = vmovl_u16(*v323.i8);
      v325 = vmovl_high_u16(v323);
      v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), vtrn1q_s32(0, v324)), vshlq_u32(vmovl_high_u16(v322), vtrn1q_s32(0, v325)));
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
      v334 = (v332.i64[0] << v289) | v305;
      if (v333.i64[0] + v289 >= 0x40)
      {
        v288[1] = v334;
        v334 = v332.i64[0] >> (-8 * (a1 & 7u));
        if (!v289)
        {
          v334 = 0;
        }
      }

      v335 = v333.i64[0] + (v289 | 0x40);
      v336 = v334 | (v332.i64[1] << v335);
      if ((v335 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v288 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v332.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335 + v333.i64[1];
      v338.i64[0] = 0x8000800080008;
      v338.i64[1] = 0x8000800080008;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vextq_s8(vtstq_s16(v530, v338), 0, 8uLL), v535);
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342 = vandq_s8(vshlq_u16(v339, vaddq_s16(v340, v341)), v538);
      v343 = vmovl_u16(*v340.i8);
      v344 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v343)), vmovl_high_u16(v342));
      v345 = vpaddq_s32(v343, vmovl_high_u16(v340));
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
      v352 = (v350.i64[0] << v337) | v336;
      if (v351.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v288 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v350.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351.i64[0] + v337;
      v354 = v352 | (v350.i64[1] << v353);
      if ((v353 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v288 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v350.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v351.i64[1];
      v356 = vextq_s8(0, v531, 8uLL);
      v357.i64[0] = 0xF000F000F000FLL;
      v357.i64[1] = 0xF000F000F000FLL;
      v358.i64[0] = -1;
      v358.i64[1] = -1;
      v359 = vandq_s8(vshlq_u16(v358, vaddq_s16(v356, v357)), v510);
      v360 = vmovl_u16(*v356.i8);
      v361 = vmovl_high_u16(v356);
      v362 = vpaddq_s32(vmovl_u16(*v359.i8), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v361)));
      v363 = vpaddq_s32(v360, v361);
      v364.i64[0] = v362.u32[0];
      v364.i64[1] = v362.u32[1];
      v365 = v364;
      v364.i64[0] = v362.u32[2];
      v364.i64[1] = v362.u32[3];
      v366 = v364;
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v367 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v368 = vpaddq_s64(vshlq_u64(v365, vzip1q_s64(0, v367)), vshlq_u64(v366, vzip1q_s64(0, v364)));
      v369 = vpaddq_s64(v367, v364);
      v370 = (v368.i64[0] << v355) | v354;
      if (v369.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v288 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v368.i64[0] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = v369.i64[0] + v355;
      v372 = v370 | (v368.i64[1] << v371);
      if ((v371 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v288 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v368.i64[1] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = v371 + v369.i64[1];
      v374.i64[0] = 0xF000F000F000FLL;
      v374.i64[1] = 0xF000F000F000FLL;
      v375.i64[0] = -1;
      v375.i64[1] = -1;
      v376 = vandq_s8(vshlq_u16(v375, vaddq_s16(v531, v374)), v512);
      v377 = vmovl_u16(*v531.i8);
      v378 = vmovl_high_u16(v531);
      v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v377)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v378)));
      v380 = vpaddq_s32(v377, v378);
      v381.i64[0] = v379.u32[0];
      v381.i64[1] = v379.u32[1];
      v382 = v381;
      v381.i64[0] = v379.u32[2];
      v381.i64[1] = v379.u32[3];
      v383 = v381;
      v381.i64[0] = v380.u32[0];
      v381.i64[1] = v380.u32[1];
      v384 = v381;
      v381.i64[0] = v380.u32[2];
      v381.i64[1] = v380.u32[3];
      v385 = vpaddq_s64(vshlq_u64(v382, vzip1q_s64(0, v384)), vshlq_u64(v383, vzip1q_s64(0, v381)));
      v386 = vpaddq_s64(v384, v381);
      v387 = (v385.i64[0] << v373) | v372;
      if (v386.i64[0] + (v373 & 0x3F) >= 0x40)
      {
        *(v288 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v385.i64[0] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = v386.i64[0] + v373;
      v389 = v387 | (v385.i64[1] << v388);
      if ((v388 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v288 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v385.i64[1] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388 + v386.i64[1];
      v391.i64[0] = 0xF000F000F000FLL;
      v391.i64[1] = 0xF000F000F000FLL;
      v392.i64[0] = -1;
      v392.i64[1] = -1;
      v393 = vandq_s8(vshlq_u16(v392, vaddq_s16(v531, v391)), v514);
      v394 = vmovl_u16(*v531.i8);
      v395 = vmovl_high_u16(v531);
      v396 = vpaddq_s32(vshlq_u32(vmovl_u16(*v393.i8), vtrn1q_s32(0, v394)), vshlq_u32(vmovl_high_u16(v393), vtrn1q_s32(0, v395)));
      v397 = vpaddq_s32(v394, v395);
      v398.i64[0] = v396.u32[0];
      v398.i64[1] = v396.u32[1];
      v399 = v398;
      v398.i64[0] = v396.u32[2];
      v398.i64[1] = v396.u32[3];
      v400 = v398;
      v398.i64[0] = v397.u32[0];
      v398.i64[1] = v397.u32[1];
      v401 = v398;
      v398.i64[0] = v397.u32[2];
      v398.i64[1] = v397.u32[3];
      v402 = vpaddq_s64(vshlq_u64(v399, vzip1q_s64(0, v401)), vshlq_u64(v400, vzip1q_s64(0, v398)));
      v403 = vpaddq_s64(v401, v398);
      v404 = (v402.i64[0] << v390) | v389;
      if (v403.i64[0] + (v390 & 0x3F) >= 0x40)
      {
        *(v288 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        v404 = v402.i64[0] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v404 = 0;
        }
      }

      v405 = v403.i64[0] + v390;
      v406 = v404 | (v402.i64[1] << v405);
      if ((v405 & 0x3F) + v403.i64[1] >= 0x40)
      {
        *(v288 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
        v406 = v402.i64[1] >> -(v405 & 0x3F);
        if ((v405 & 0x3F) == 0)
        {
          v406 = 0;
        }
      }

      v407 = v405 + v403.i64[1];
      v408.i64[0] = 0xF000F000F000FLL;
      v408.i64[1] = 0xF000F000F000FLL;
      v409.i64[0] = -1;
      v409.i64[1] = -1;
      v410 = vandq_s8(vshlq_u16(v409, vaddq_s16(v531, v408)), v516);
      v411 = vmovl_u16(*v531.i8);
      v412 = vmovl_high_u16(v531);
      v413 = vpaddq_s32(vshlq_u32(vmovl_u16(*v410.i8), vtrn1q_s32(0, v411)), vshlq_u32(vmovl_high_u16(v410), vtrn1q_s32(0, v412)));
      v414 = vpaddq_s32(v411, v412);
      v415.i64[0] = v413.u32[0];
      v415.i64[1] = v413.u32[1];
      v416 = v415;
      v415.i64[0] = v413.u32[2];
      v415.i64[1] = v413.u32[3];
      v417 = v415;
      v415.i64[0] = v414.u32[0];
      v415.i64[1] = v414.u32[1];
      v418 = v415;
      v415.i64[0] = v414.u32[2];
      v415.i64[1] = v414.u32[3];
      v419 = vpaddq_s64(vshlq_u64(v416, vzip1q_s64(0, v418)), vshlq_u64(v417, vzip1q_s64(0, v415)));
      v420 = vpaddq_s64(v418, v415);
      v421 = (v419.i64[0] << v407) | v406;
      if (v420.i64[0] + (v407 & 0x3F) >= 0x40)
      {
        *(v288 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
        v421 = v419.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v421 = 0;
        }
      }

      v422 = v420.i64[1];
      v423 = v420.i64[0] + v407;
      v424 = (v420.i64[0] + v407) & 0x3F;
      v425 = v421 | (v419.i64[1] << v423);
      if ((v424 + v420.i64[1]) >= 0x40)
      {
        *(v288 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v419.i64[1] >> -v424;
        if (!v424)
        {
          v425 = 0;
        }
      }

      v426 = 0;
      v427.i64[0] = 0xF000F000F000FLL;
      v427.i64[1] = 0xF000F000F000FLL;
      v428.i64[0] = -1;
      v428.i64[1] = -1;
      v429 = v423 + v422;
      do
      {
        v430 = vandq_s8(vshlq_u16(v428, vaddq_s16(v532, v427)), *(&v517 + v426));
        v431 = vmovl_u16(*v532.i8);
        v432 = vmovl_high_u16(v532);
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
        v441 = (v439.i64[0] << v429) | v425;
        if (v440.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v439.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v442 = v440.i64[0] + v429;
        v425 = v441 | (v439.i64[1] << v442);
        if ((v442 & 0x3F) + v440.i64[1] >= 0x40)
        {
          *(v288 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v439.i64[1] >> -(v442 & 0x3F);
          if ((v442 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v442 + v440.i64[1];
        v426 += 16;
      }

      while (v426 != 64);
      v443 = 0;
      v444.i64[0] = 0xF000F000F000FLL;
      v444.i64[1] = 0xF000F000F000FLL;
      v445.i64[0] = -1;
      v445.i64[1] = -1;
      do
      {
        v446 = vandq_s8(vshlq_u16(v445, vaddq_s16(v533, v444)), *(&v521 + v443));
        v447 = vmovl_u16(*v533.i8);
        v448 = vmovl_high_u16(v533);
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
        v457 = (v455.i64[0] << v429) | v425;
        if (v456.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
          v457 = v455.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v457 = 0;
          }
        }

        v458 = v456.i64[0] + v429;
        v425 = v457 | (v455.i64[1] << v458);
        if ((v458 & 0x3F) + v456.i64[1] >= 0x40)
        {
          *(v288 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v455.i64[1] >> -(v458 & 0x3F);
          if ((v458 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v458 + v456.i64[1];
        v443 += 16;
      }

      while (v443 != 64);
      v459 = 0;
      v460.i64[0] = 0xF000F000F000FLL;
      v460.i64[1] = 0xF000F000F000FLL;
      v461.i64[0] = -1;
      v461.i64[1] = -1;
      do
      {
        v462 = vandq_s8(vshlq_u16(v461, vaddq_s16(v534, v460)), *(&v525 + v459));
        v463 = vmovl_u16(*v534.i8);
        v464 = vmovl_high_u16(v534);
        v465 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), vtrn1q_s32(0, v463)), vshlq_u32(vmovl_high_u16(v462), vtrn1q_s32(0, v464)));
        v466 = vpaddq_s32(v463, v464);
        v467.i64[0] = v465.u32[0];
        v467.i64[1] = v465.u32[1];
        v468 = v467;
        v467.i64[0] = v465.u32[2];
        v467.i64[1] = v465.u32[3];
        v469 = v467;
        v467.i64[0] = v466.u32[0];
        v467.i64[1] = v466.u32[1];
        v470 = v467;
        v467.i64[0] = v466.u32[2];
        v467.i64[1] = v466.u32[3];
        v471 = vpaddq_s64(vshlq_u64(v468, vzip1q_s64(0, v470)), vshlq_u64(v469, vzip1q_s64(0, v467)));
        v472 = vpaddq_s64(v470, v467);
        v473 = (v471.i64[0] << v429) | v425;
        if (v472.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
          v473 = v471.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v473 = 0;
          }
        }

        v474 = v472.i64[0] + v429;
        v425 = v473 | (v471.i64[1] << v474);
        if ((v474 & 0x3F) + v472.i64[1] >= 0x40)
        {
          *(v288 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v471.i64[1] >> -(v474 & 0x3F);
          if ((v474 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v474 + v472.i64[1];
        v459 += 16;
      }

      while (v459 != 64);
      if ((v429 & 0x3F) != 0)
      {
        *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
      }

      result = (v429 - v289 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v97 = *MEMORY[0x29EDCA608];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = (a3 + 4);
        v23 = &v69 + 1;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
          do
          {
            v28 = *(v25 - 1);
            v27 = *v25;
            *(v24 - 9) = v28 & 0x3FF | (((v28 >> 10) & 0x3FF) << 32);
            *(v24 - 8) = (4 * v28) & 0x300000000 | (v28 >> 20) & 0x3FF;
            *(v24 - 1) = v27 & 0x3FF | (((v27 >> 10) & 0x3FF) << 32);
            *v24 = (4 * v27) & 0x300000000 | (v27 >> 20) & 0x3FF;
            v25 += 2;
            v24 += 16;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 = (v22 + a4);
          v23 += 2;
        }

        while (v21 != a6);
      }

      else
      {
        v29 = 0;
        v30 = (a3 + 4);
        v31 = &v69 + 1;
        v32 = (&v65 + 8 * ((a5 >> 1) & 0x3F)) | 8;
        do
        {
          v33 = v31;
          v34 = v30;
          v35 = a5 & 0x7E;
          do
          {
            v36 = *(v34 - 1);
            v37 = *v34;
            *(v33 - 9) = v36 & 0x3FF | (((v36 >> 10) & 0x3FF) << 32);
            *(v33 - 8) = (4 * v36) & 0x300000000 | (v36 >> 20) & 0x3FF;
            *(v33 - 1) = v37 & 0x3FF | (((v37 >> 10) & 0x3FF) << 32);
            *v33 = (4 * v37) & 0x300000000 | (v37 >> 20) & 0x3FF;
            v34 += 2;
            v33 += 16;
            v35 -= 2;
          }

          while (v35);
          v38 = (a3 + v29 * a4 + 4 * v20);
          v39 = v32;
          v40 = a5 - v20;
          do
          {
            v41 = *v38++;
            *(v39 - 1) = v41 & 0x3FF | (((v41 >> 10) & 0x3FF) << 32);
            *v39 = (4 * v41) & 0x300000000 | (v41 >> 20) & 0x3FF;
            v39 += 8;
            --v40;
          }

          while (v40);
          ++v29;
          v30 = (v30 + a4);
          v31 += 2;
          v32 += 16;
        }

        while (v29 != a6);
      }
    }

    else
    {
      v10 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v10 = a6 & 0xFE;
      v11 = (a3 + 1);
      v12 = &v66;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
        *(v12 - 2) = v14 & 0x3FF | (((v14 >> 10) & 0x3FF) << 32);
        *(v12 - 1) = (4 * v14) & 0x300000000 | (v14 >> 20) & 0x3FF;
        *v12 = v15 & 0x3FF | (((v15 >> 10) & 0x3FF) << 32);
        v12[1] = (4 * v15) & 0x300000000 | (v15 >> 20) & 0x3FF;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = ((&v65 + v10) | 8);
        v18 = (a3 + v10 * a4);
        do
        {
          v19 = *v18;
          *(v17 - 1) = v19 & 0x3FF | (((v19 >> 10) & 0x3FF) << 32);
          *v17 = (4 * v19) & 0x300000000 | (v19 >> 20) & 0x3FF;
          v17 += 2;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v57 = v65;
  v58 = v69;
  v59 = v66;
  v60 = v70;
  v61 = v73;
  v62 = v77;
  if (a5 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = a5;
  }

  if (a5 >= 4)
  {
    v43 = a5 - 4;
  }

  else
  {
    v43 = 0;
  }

  if (a6 >= 2)
  {
    v44 = 2;
  }

  else
  {
    v44 = a6;
  }

  v63 = v74;
  v64 = v78;
  if (a6 >= 2)
  {
    v45 = a6 - 2;
  }

  else
  {
    v45 = 0;
  }

  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v57, a7, v42, v44);
  v57 = v67;
  v58 = v71;
  v59 = v68;
  v60 = v72;
  v61 = v75;
  v62 = v79;
  v63 = v76;
  v64 = v80;
  if (a6 >= 4)
  {
    v48 = 2;
  }

  else
  {
    v48 = v45;
  }

  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 28, &v57, a7, v42, v48);
  v57 = v81;
  v58 = v85;
  v59 = v82;
  v60 = v86;
  v61 = v89;
  v62 = v93;
  if (a5 >= 8)
  {
    v50 = 4;
  }

  else
  {
    v50 = v43;
  }

  v63 = v90;
  v64 = v94;
  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 56, &v57, a7, v50, v44);
  v57 = v83;
  v58 = v87;
  v59 = v84;
  v60 = v88;
  v61 = v91;
  v62 = v95;
  v63 = v92;
  v64 = v96;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 84, &v57, a7, v50, v48);
  if (v51)
  {
    v53 = 4;
  }

  else
  {
    v53 = 0;
  }

  if (v49)
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

  *a2 = v55 | v53 | v47 | v54;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = 0;
  v319 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v9 = a5 < 2;
  }

  else
  {
    v9 = 1;
  }

  v289 = v9;
  v10 = a4 < 2 || a5 == 0;
  v288 = v10;
  v11 = a4 < 2 || a5 < 2;
  v287 = v11;
  v12 = a4 < 3 || a5 == 0;
  v286 = v12;
  v13 = a4 < 3 || a5 < 2;
  v14 = a4 < 4 || a5 == 0;
  v15 = a4 < 4 || a5 < 2;
  v16 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits;
  do
  {
    v17 = 0;
    v19 = *v16++;
    v18 = v19;
    *(&v315 + v8 * 4) = v19;
    if (v19 <= 11)
    {
      if (v18 == 2)
      {
        v17 = 5;
      }

      else
      {
        v17 = v18 == 10;
      }
    }

    else
    {
      switch(v18)
      {
        case 12:
          v17 = 2;
          break;
        case 16:
          v17 = 3;
          break;
        case 32:
          v17 = 4;
          break;
      }
    }

    v310[v8] = v17;
    v20 = 1 << (v18 - 1);
    *(&v309[2] + v8 * 4) = v20;
    v21 = *(a2 + v8 * 4);
    if (a3 == 1)
    {
      v22 = &v312[v8];
      if ((v21 ^ v20) == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 ^= v20;
      }

      *v22 = v21;
      v30 = (a2 + v8 * 4);
      if ((*(a2 + v8 * 4 + 16) ^ v20) == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(a2 + v8 * 4 + 16) ^ v20;
      }

      v22[4] = v23;
      v24 = v30[8] ^ v20;
      if (v24 == 1)
      {
        v24 = 0;
      }

      v22[8] = v24;
      if ((v30[12] ^ v20) == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = v30[12] ^ v20;
      }

      v22[12] = v25;
      if ((v30[16] ^ v20) == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v30[16] ^ v20;
      }

      v22[16] = v26;
      if ((v30[20] ^ v20) == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = v30[20] ^ v20;
      }

      v22[20] = v27;
      v28 = v30[24] ^ v20;
      if (v28 == 1)
      {
        v28 = 0;
      }

      v22[24] = v28;
      v29 = v30[28] ^ v20;
      if (v29 == 1)
      {
        v29 = 0;
      }
    }

    else if (a3 == 3)
    {
      v21 ^= v20;
      v22 = &v312[v8];
      *v22 = v21;
      v23 = *(a2 + v8 * 4 + 16) ^ v20;
      v22[4] = v23;
      v24 = *(a2 + v8 * 4 + 32) ^ v20;
      v22[8] = v24;
      v25 = *(a2 + v8 * 4 + 48) ^ v20;
      v22[12] = v25;
      v26 = *(a2 + v8 * 4 + 64) ^ v20;
      v22[16] = v26;
      v27 = *(a2 + v8 * 4 + 80) ^ v20;
      v22[20] = v27;
      v28 = *(a2 + v8 * 4 + 96) ^ v20;
      v22[24] = v28;
      v29 = *(a2 + v8 * 4 + 112) ^ v20;
    }

    else
    {
      v22 = &v312[v8];
      *v22 = v21;
      v23 = *(a2 + v8 * 4 + 16);
      v22[4] = v23;
      v24 = *(a2 + v8 * 4 + 32);
      v22[8] = v24;
      v25 = *(a2 + v8 * 4 + 48);
      v22[12] = v25;
      v26 = *(a2 + v8 * 4 + 64);
      v22[16] = v26;
      v27 = *(a2 + v8 * 4 + 80);
      v22[20] = v27;
      v28 = *(a2 + v8 * 4 + 96);
      v22[24] = v28;
      v29 = *(a2 + v8 * 4 + 112);
    }

    v22[28] = v29;
    v31 = &v314[v8 + 4];
    v314[v8 + 4] = v21;
    v314[v8 + 8] = v21;
    v314[v8] = 0;
    if (v288)
    {
      v32 = v21;
      if (v289)
      {
        goto LABEL_75;
      }

LABEL_69:
      if (v24 < v32)
      {
        v314[v8] = 2;
        v314[v8 + 8] = v24;
        v32 = v24;
      }

      if (v21 >= v24)
      {
        v34 = &v314[v8 + 4];
      }

      else
      {
        v34 = &v312[v8 + 8];
      }

      v21 = *v34;
      *v31 = *v34;
      goto LABEL_75;
    }

    v32 = v21;
    if (v23 < v21)
    {
      v314[v8] = 1;
      v314[v8 + 8] = v23;
      v32 = v23;
    }

    if (v21 >= v23)
    {
      v33 = &v314[v8 + 4];
    }

    else
    {
      v33 = &v312[v8 + 4];
    }

    v21 = *v33;
    *v31 = *v33;
    if (!v289)
    {
      goto LABEL_69;
    }

LABEL_75:
    if (!v287)
    {
      if (v25 < v32)
      {
        v314[v8] = 3;
        v314[v8 + 8] = v25;
        v32 = v25;
      }

      v35 = &v312[v8 + 12];
      if (v21 >= v25)
      {
        v35 = &v314[v8 + 4];
      }

      v21 = *v35;
      *v31 = *v35;
    }

    if (v286)
    {
      if (v14)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v26 < v32)
      {
        v314[v8] = 4;
        v314[v8 + 8] = v26;
        v32 = v26;
      }

      v36 = &v312[v8 + 16];
      if (v21 >= v26)
      {
        v36 = &v314[v8 + 4];
      }

      v21 = *v36;
      *v31 = *v36;
      if (v14)
      {
LABEL_83:
        if (v13)
        {
          goto LABEL_84;
        }

        goto LABEL_96;
      }
    }

    if (v27 < v32)
    {
      v314[v8] = 5;
      v314[v8 + 8] = v27;
      v32 = v27;
    }

    v37 = &v312[v8 + 20];
    if (v21 >= v27)
    {
      v37 = &v314[v8 + 4];
    }

    v21 = *v37;
    *v31 = *v37;
    if (v13)
    {
LABEL_84:
      if (v15)
      {
        goto LABEL_107;
      }

LABEL_101:
      if (v29 < v32)
      {
        v314[v8] = 7;
        v314[v8 + 8] = v29;
        v32 = v29;
      }

      if (v21 >= v29)
      {
        v39 = &v314[v8 + 4];
      }

      else
      {
        v39 = &v312[v8 + 28];
      }

      v21 = *v39;
      *v31 = *v39;
      goto LABEL_107;
    }

LABEL_96:
    if (v28 < v32)
    {
      v314[v8] = 6;
      v314[v8 + 8] = v28;
      v32 = v28;
    }

    v38 = &v312[v8 + 24];
    if (v21 >= v28)
    {
      v38 = &v314[v8 + 4];
    }

    v21 = *v38;
    *v31 = *v38;
    if (!v15)
    {
      goto LABEL_101;
    }

LABEL_107:
    v40 = __clz(v21 - v32);
    v41 = 32 - v40;
    if (v18 <= 11)
    {
      if (v18 != 2)
      {
        if (v18 == 8)
        {
          v43 = 1;
          goto LABEL_130;
        }

        if (v18 == 10)
        {
          if (v40 - 29 < 3)
          {
            v41 = 3;
          }

          goto LABEL_129;
        }

        goto LABEL_122;
      }

      v42 = v40 == 31;
      goto LABEL_127;
    }

    if (v18 != 12)
    {
      if (v18 != 16)
      {
        if (v18 == 32)
        {
          v41 -= v41 >> 1;
LABEL_129:
          v43 = -1;
          goto LABEL_130;
        }

LABEL_122:
        v43 = 0;
        goto LABEL_130;
      }

      v42 = v40 == 31 && v21 == 0xFFFF;
LABEL_127:
      if (v42)
      {
        v41 = 2;
      }

      goto LABEL_129;
    }

    if ((v40 & 0x3C) == 0x1C)
    {
      v41 = 4;
    }

    v43 = -2;
LABEL_130:
    v44 = v41 + v43;
    v45 = v44 & ~(v44 >> 31);
    if (v21 == v32 && (v18 - 8) <= 4 && v44 <= 2)
    {
      if (v32)
      {
        v45 = (v32 ^ (-1 << v18)) != 0xFFFFFFFF || v18 > 0xB;
      }

      else
      {
        v45 = 0;
      }
    }

    v313[v8] = v45;
    if ((a3 | 2) == 3)
    {
      v46 = 0;
      if (v32 < v20 && v21 >= v20)
      {
        v46 = kDQuadParamTable[160 * v17 + 8 + 10 * v45] == 0;
      }
    }

    else
    {
      v46 = 0;
    }

    if (v45 >= kDquadTransition[v17] || v46)
    {
      v47 = kDQuadParamTable[160 * v17 + 4 + 10 * v45] - v46 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v17 + 1);
      if (v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = -2;
      }

      v49 = v18 >= v47;
      v50 = v18 - v47;
      v143 = v50 != 0 && v49;
      v51 = v32 & ~(-1 << v50);
      if (!v143)
      {
        v51 = 0;
      }

      v52 = v51 + v48;
      if (v52 >= 1 && __clz(v52 + v21 - v32) < v40)
      {
        v313[v8] = ++v45;
      }

      if (v18 == 32)
      {
        v53 = kDquadMaxMode[v17];
        if (v53 >= v45)
        {
          v53 = v45;
        }

        v313[v8] = v53;
      }
    }

    ++v8;
  }

  while (v8 != 4);
  v309[0] = 0;
  v309[1] = 0;
  v308[0] = 0;
  v308[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v310, v313, v309, v308);
  v54 = 0;
  v55 = 0;
  if (a4)
  {
    v56 = a5 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  while (2)
  {
    v59 = v310[v54];
    v60 = v313[v54];
    v61 = &kDQuadParamTable[160 * v59 + 10 * v60];
    v62 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v59 + 1);
    v63 = v61[5];
    v64 = v61[4] + v62;
    *(&v304 + v54 * 4) = v64;
    v65 = v63 + v62;
    *(&v300 + v54 * 4) = v65;
    v66 = *(v61 + 1);
    v67 = *(v308 + v54 * 4) - *(v309 + v54 * 4);
    if (v67 < 0)
    {
      v69 = &kDQuadParamTable[160 * v59 + 10 * v60];
      if (v69[7] < *(v309 + v54 * 4) - *(v308 + v54 * 4))
      {
        *(&v300 + v54 * 4) = --v65;
        if (!v69[8])
        {
          v68 = -1;
LABEL_170:
          *(&v304 + v54 * 4) = v68 + v64;
        }
      }
    }

    else if (v67)
    {
      v65 += v67;
      *(&v300 + v54 * 4) = v65;
      v68 = v67;
      goto LABEL_170;
    }

    if (v59 == 5)
    {
      v70 = (v67 < 2) | v55;
      if (v60 == 1)
      {
        v55 = v70;
      }
    }

    if (a3 == 4)
    {
      v71 = 1 << (*(&v315 + v54 * 4) - 1);
      if (v59 == 3)
      {
        v72 = -31745;
      }

      else
      {
        v72 = -1;
      }

      if (v59 == 4)
      {
        v73 = -2139095041;
      }

      else
      {
        v73 = v72;
      }

      if (v57)
      {
        if (v288)
        {
          goto LABEL_185;
        }

LABEL_199:
        v77 = v312[v54 + 4];
        v79 = (v77 | v73) == 0xFFFFFFFF || v77 == v71;
        v55 |= v79;
        if (!v289)
        {
          goto LABEL_206;
        }

LABEL_186:
        if (v287)
        {
          goto LABEL_187;
        }

LABEL_213:
        v83 = v312[v54 + 12];
        v85 = (v83 | v73) == 0xFFFFFFFF || v83 == v71;
        v55 |= v85;
        if (!v286)
        {
          goto LABEL_220;
        }

LABEL_188:
        if (v14)
        {
          goto LABEL_189;
        }

LABEL_227:
        v89 = v312[v54 + 20];
        v91 = (v89 | v73) == 0xFFFFFFFF || v89 == v71;
        v55 |= v91;
        if (!v13)
        {
          goto LABEL_234;
        }

LABEL_190:
        if (!v15)
        {
          goto LABEL_241;
        }
      }

      else
      {
        v74 = v312[v54];
        v76 = (v74 | v73) == 0xFFFFFFFF || v74 == v71;
        v55 |= v76;
        if (!v288)
        {
          goto LABEL_199;
        }

LABEL_185:
        if (v289)
        {
          goto LABEL_186;
        }

LABEL_206:
        v80 = v312[v54 + 8];
        v82 = (v80 | v73) == 0xFFFFFFFF || v80 == v71;
        v55 |= v82;
        if (!v287)
        {
          goto LABEL_213;
        }

LABEL_187:
        if (v286)
        {
          goto LABEL_188;
        }

LABEL_220:
        v86 = v312[v54 + 16];
        v88 = (v86 | v73) == 0xFFFFFFFF || v86 == v71;
        v55 |= v88;
        if (!v14)
        {
          goto LABEL_227;
        }

LABEL_189:
        if (v13)
        {
          goto LABEL_190;
        }

LABEL_234:
        v92 = v312[v54 + 24];
        v94 = (v92 | v73) == 0xFFFFFFFF || v92 == v71;
        v55 |= v94;
        if (!v15)
        {
LABEL_241:
          v95 = v312[v54 + 28];
          v97 = (v95 | v73) == 0xFFFFFFFF || v95 == v71;
          v55 |= v97;
        }
      }
    }

    if (v66 >> v65 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::lossyFallBackInfo + v54 * 4 + 16))
    {
      v58 = 1;
    }

    else
    {
      v58 = v57;
    }

    v55 |= v58;
    if (++v54 != 4)
    {
      continue;
    }

    break;
  }

  v98 = 0;
  v298 = 0;
  v299 = 0;
  memset(v297, 0, sizeof(v297));
  v99 = v312;
  v100 = v311;
  do
  {
    v101 = 0;
    v102 = 0;
    v103 = *(&v315 + v98);
    if (v103 >= *(&v304 + v98))
    {
      v104 = *(&v304 + v98);
    }

    else
    {
      v104 = *(&v315 + v98);
    }

    *(&v304 + v98) = v104;
    v105 = -1 << v103;
    v106 = &kDQuadParamTable[160 * v310[v98] + 10 * v313[v98]];
    if (v106[5])
    {
      v107 = v103;
    }

    else
    {
      v107 = 0;
    }

    if (v107 >= *(&v300 + v98))
    {
      v107 = *(&v300 + v98);
    }

    *(&v300 + v98) = v107;
    v108 = *(v106 + 1);
    v109 = v314[v98 + 8] & (-1 << (v103 - v104));
    *(&v298 + v98) = v109;
    v110 = v108 >> v107;
    v111 = &v312[v98];
    v112 = *v111 - v109;
    v113 = &v311[2 * v98];
    if (v57)
    {
      v112 = 0;
    }

    v114 = v111[4] - v109;
    if (v288)
    {
      v114 = 0;
    }

    *v113 = v112;
    v113[1] = v114;
    v115 = v111[8] - v109;
    if (v289)
    {
      v115 = 0;
    }

    v116 = v111[12] - v109;
    if (v287)
    {
      v116 = 0;
    }

    v113[2] = v115;
    v113[3] = v116;
    v117 = v111[16] - v109;
    if (v286)
    {
      v117 = 0;
    }

    v118 = v111[20] - v109;
    if (v14)
    {
      v118 = 0;
    }

    v113[4] = v117;
    v113[5] = v118;
    v119 = v111[24] - v109;
    if (v13)
    {
      v119 = 0;
    }

    v120 = v111[28] - v109;
    if (v15)
    {
      v120 = 0;
    }

    v113[6] = v119;
    v113[7] = v120;
    if (v110 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = v110;
    }

    v122 = 4 * v314[v98];
    v123 = v297 + 28 * v98;
    v124 = &byte_29D2F3081;
    do
    {
      if (v122 != v101)
      {
        if (v107)
        {
          v125 = *(v100 + v101) / v121;
        }

        else
        {
          LODWORD(v125) = 0;
        }

        *&v123[4 * v102] = v125;
        if (v110 >= 2)
        {
          v126 = *(v100 + v101);
          if (v126)
          {
            if (v126 / v121 * v121 == v126 && ((v126 / v121) & 1) != 0)
            {
              if (v109 || v125 != 1)
              {
                if ((a3 | 2) != 3 || (v128 = v99[v101], v129 = *(&v309[2] + v98), v128 != v129) && ((a3 | 2) != 3 || v121 + v129 != v128))
                {
                  LODWORD(v125) = v125 - 1;
                  *&v123[4 * v102] = v125;
                }
              }

              else
              {
                LODWORD(v125) = 1;
              }
            }
          }
        }

        if (v125 >> v107 || (v99[v101] ^ v105) == 0xFFFFFFFF)
        {
          *&v123[4 * v102] = ~(-1 << v107);
        }

        if (*v124 >= a5 || *(v124 - 1) >= a4)
        {
          *&v123[4 * v102] = 0;
        }

        ++v102;
      }

      v101 += 4;
      v124 += 2;
    }

    while (v101 != 32);
    ++v98;
    v100 += 2;
    ++v99;
  }

  while (v98 != 4);
  v130 = a1 & 0xFFFFFFFFFFFFFFF8;
  v131 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  if (v55)
  {
    v132 = 0;
    v133 = 0;
    v134 = v315;
    v135 = v316;
    v136 = v315 - 1;
    v137 = v316 - 1;
    v138 = v317;
    v139 = v318;
    v140 = v317 - 2;
    v141 = 8 * (a1 & 7);
    while (1)
    {
      v142 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v132;
      v143 = v142[1] < a5 && a4 > *v142;
      v144 = !v143;
      if (v143)
      {
        v145 = v312[4 * v132] >> 1;
        if (v136 > 0x100)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v145 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_325;
        }
      }

      if (v134 != 1 && (v141 - v131 + (v133 << 6) + v136) <= 0xE0)
      {
        v146 = 0;
        v147 = v134 - 1;
        do
        {
          v148 = 64 - v141;
          if (64 - v141 >= v147)
          {
            v148 = v147;
          }

          *(v130 + 8 * v133) |= ((v145 >> v146) & ~(-1 << v148)) << v141;
          v146 += v148;
          v149 = v148 + v141;
          v133 += v149 >> 6;
          v141 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

LABEL_325:
      v150 = &v312[4 * v132];
      if (v144)
      {
        v151 = 0;
        if (v137 > 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v151 = v150[1] >> 1;
        if (v137 > 0x100)
        {
          goto LABEL_335;
        }
      }

      if (v135 != 1 && (v141 - v131 + (v133 << 6) + v137) <= 0xE0)
      {
        v152 = 0;
        v153 = v135 - 1;
        do
        {
          v154 = 64 - v141;
          if (64 - v141 >= v153)
          {
            v154 = v153;
          }

          *(v130 + 8 * v133) |= ((v151 >> v152) & ~(-1 << v154)) << v141;
          v152 += v154;
          v155 = v154 + v141;
          v133 += v155 >> 6;
          v141 = v155 & 0x3F;
          v153 -= v154;
        }

        while (v153);
      }

LABEL_335:
      if (v144)
      {
        v156 = 0;
        if (v140 > 0x100)
        {
          goto LABEL_345;
        }
      }

      else
      {
        v156 = v150[2] >> 2;
        if (v140 > 0x100)
        {
          goto LABEL_345;
        }
      }

      if (v138 != 2 && (v141 - v131 + (v133 << 6) + v140) <= 0xE0)
      {
        v157 = 0;
        v158 = v138 - 2;
        do
        {
          v159 = 64 - v141;
          if (64 - v141 >= v158)
          {
            v159 = v158;
          }

          *(v130 + 8 * v133) |= ((v156 >> v157) & ~(-1 << v159)) << v141;
          v157 += v159;
          v160 = v159 + v141;
          v133 += v160 >> 6;
          v141 = v160 & 0x3F;
          v158 -= v159;
        }

        while (v158);
      }

LABEL_345:
      if (v144)
      {
        v161 = 0;
        if (v139 <= 0x100)
        {
          goto LABEL_349;
        }
      }

      else
      {
        v161 = v150[3];
        if (v139 <= 0x100)
        {
LABEL_349:
          if (v139 && v141 - v131 + (v133 << 6) + v139 <= 0xE0)
          {
            v162 = 0;
            v163 = v139;
            do
            {
              v164 = 64 - v141;
              if (64 - v141 >= v163)
              {
                v164 = v163;
              }

              *(v130 + 8 * v133) |= ((v161 >> v162) & ~(-1 << v164)) << v141;
              v162 += v164;
              v165 = v164 + v141;
              v133 += v165 >> 6;
              v141 = v165 & 0x3F;
              v163 -= v164;
            }

            while (v163);
          }
        }
      }

      if (++v132 == 8)
      {
        return v55 & 1;
      }
    }
  }

  v166 = 0;
  v167 = 0;
  v168 = 0;
  v296[0] = 0;
  v296[1] = 0;
  v295[0] = 0;
  v295[1] = 0;
  v293 = 0;
  v294 = 0;
  v291 = 0;
  v292 = 0;
  v169 = 8 * (a1 & 7);
  v290 = 0;
  while (2)
  {
    v170 = v313[v166];
    v171 = v314[v166 + 8];
    v172 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v166];
    *(&v291 + v166) = 0;
    *(&v293 + v166) = 0;
    if (v172 > 11)
    {
      if (v172 == 12)
      {
        *(v296 + v166) = 3;
        v174 = v170 - 3;
        if (v170 > 3)
        {
          goto LABEL_377;
        }

        *(v295 + v166) = 0;
        *(&v293 + v166) = 2;
        v175 = 1;
        v176 = 3;
        *(&v291 + v166) = v170;
LABEL_376:
        v170 = 0;
        goto LABEL_381;
      }

      if (v172 != 16 && v172 != 32)
      {
        goto LABEL_378;
      }

      v175 = 0;
      v176 = 4;
      goto LABEL_373;
    }

    if (v172 == 2)
    {
      v175 = 0;
      v176 = 1;
LABEL_373:
      *(v296 + v166) = v176;
      *(v295 + v166) = v170;
LABEL_381:
      *(&v290 + v166) = v175;
      goto LABEL_382;
    }

    if (v172 != 8 && v172 != 10)
    {
LABEL_378:
      v170 = *(v295 + v166);
      v176 = *(v296 + v166);
      *(&v290 + v166) = 0;
      if (v176 > 0x100)
      {
        goto LABEL_357;
      }

      goto LABEL_382;
    }

    *(v296 + v166) = 3;
    if (!(v171 | v170))
    {
      v170 = 0;
      *(v295 + v166) = 0;
      *(&v293 + v166) = 2;
      v175 = 1;
      v176 = 3;
      goto LABEL_381;
    }

    v174 = v170 - 2;
    if (v170 <= 2)
    {
      *(v295 + v166) = 0;
      *(&v293 + v166) = 2;
      *(&v291 + v166) = v170 + 1;
      v175 = 1;
      v176 = 3;
      goto LABEL_376;
    }

LABEL_377:
    *(v295 + v166) = v174;
    v176 = 3;
    v170 = v174;
    *(&v290 + v166) = 0;
LABEL_382:
    if (v176)
    {
      v177 = v176;
      if (v169 - v131 + (v168 << 6) + v176 <= 0xE0)
      {
        v178 = 0;
        do
        {
          v179 = 64 - v169;
          if (64 - v169 >= v177)
          {
            v179 = v177;
          }

          *(v130 + 8 * v168) |= ((v170 >> v178) & ~(-1 << v179)) << v169;
          v178 += v179;
          v180 = v179 + v169;
          v168 += v180 >> 6;
          v169 = v180 & 0x3F;
          v177 -= v179;
        }

        while (v177);
      }
    }

LABEL_357:
    v167 += v176;
    if (++v166 != 4)
    {
      continue;
    }

    break;
  }

  if (v290 == 1)
  {
    v181 = v293;
    if (v293 <= 0x100 && v293 && v169 - v131 + (v168 << 6) + v293 <= 0xE0)
    {
      v182 = 0;
      v183 = v291;
      v184 = v293;
      do
      {
        v185 = 64 - v169;
        if (64 - v169 >= v184)
        {
          v185 = v184;
        }

        *(v130 + 8 * v168) |= ((v183 >> v182) & ~(-1 << v185)) << v169;
        v182 += v185;
        v186 = v185 + v169;
        v168 += v186 >> 6;
        v169 = v186 & 0x3F;
        v184 -= v185;
      }

      while (v184);
    }

    v167 += v181;
  }

  if (BYTE1(v290) == 1)
  {
    v187 = HIDWORD(v293);
    if (HIDWORD(v293) <= 0x100 && HIDWORD(v293) && v169 - v131 + (v168 << 6) + HIDWORD(v293) <= 0xE0)
    {
      v188 = 0;
      v189 = HIDWORD(v291);
      v190 = HIDWORD(v293);
      do
      {
        v191 = 64 - v169;
        if (64 - v169 >= v190)
        {
          v191 = v190;
        }

        *(v130 + 8 * v168) |= ((v189 >> v188) & ~(-1 << v191)) << v169;
        v188 += v191;
        v192 = v191 + v169;
        v168 += v192 >> 6;
        v169 = v192 & 0x3F;
        v190 -= v191;
      }

      while (v190);
    }

    v167 += v187;
  }

  if (BYTE2(v290) == 1)
  {
    v193 = v294;
    if (v294 <= 0x100 && v294 && v169 - v131 + (v168 << 6) + v294 <= 0xE0)
    {
      v194 = 0;
      v195 = v292;
      v196 = v294;
      do
      {
        v197 = 64 - v169;
        if (64 - v169 >= v196)
        {
          v197 = v196;
        }

        *(v130 + 8 * v168) |= ((v195 >> v194) & ~(-1 << v197)) << v169;
        v194 += v197;
        v198 = v197 + v169;
        v168 += v198 >> 6;
        v169 = v198 & 0x3F;
        v196 -= v197;
      }

      while (v196);
    }

    v167 += v193;
  }

  if (HIBYTE(v290) == 1)
  {
    v199 = HIDWORD(v294);
    if (HIDWORD(v294) <= 0x100 && HIDWORD(v294) && v169 - v131 + (v168 << 6) + HIDWORD(v294) <= 0xE0)
    {
      v200 = 0;
      v201 = HIDWORD(v292);
      v202 = HIDWORD(v294);
      do
      {
        v203 = 64 - v169;
        if (64 - v169 >= v202)
        {
          v203 = v202;
        }

        *(v130 + 8 * v168) |= ((v201 >> v200) & ~(-1 << v203)) << v169;
        v200 += v203;
        v204 = v203 + v169;
        v168 += v204 >> 6;
        v169 = v204 & 0x3F;
        v202 -= v203;
      }

      while (v202);
    }

    v167 += v199;
  }

  if (v313[0] || v315 == 2 || v315 >= 0x10)
  {
    v205 = v304;
    if (v304 <= 0x100 && v304 && v169 - v131 + (v168 << 6) + v304 <= 0xE0)
    {
      v206 = 0;
      v207 = v298 >> (v315 - v304);
      v208 = v304;
      do
      {
        v209 = 64 - v169;
        if (64 - v169 >= v208)
        {
          v209 = v208;
        }

        *(v130 + 8 * v168) |= ((v207 >> v206) & ~(-1 << v209)) << v169;
        v206 += v209;
        v210 = v209 + v169;
        v168 += v210 >> 6;
        v169 = v210 & 0x3F;
        v208 -= v209;
      }

      while (v208);
    }

    v167 += v205;
  }

  if (v313[1] || v316 == 2 || v316 >= 0x10)
  {
    v211 = v305;
    if (v305 <= 0x100 && v305 && v169 - v131 + (v168 << 6) + v305 <= 0xE0)
    {
      v212 = 0;
      v213 = (HIDWORD(v298) >> (v316 - v305));
      v214 = v305;
      do
      {
        v215 = 64 - v169;
        if (64 - v169 >= v214)
        {
          v215 = v214;
        }

        *(v130 + 8 * v168) |= ((v213 >> v212) & ~(-1 << v215)) << v169;
        v212 += v215;
        v216 = v215 + v169;
        v168 += v216 >> 6;
        v169 = v216 & 0x3F;
        v214 -= v215;
      }

      while (v214);
    }

    v167 += v211;
  }

  if (v313[2] || v317 == 2 || v317 >= 0x10)
  {
    v217 = v306;
    if (v306 <= 0x100 && v306 && v169 - v131 + (v168 << 6) + v306 <= 0xE0)
    {
      v218 = 0;
      v219 = v299 >> (v317 - v306);
      v220 = v306;
      do
      {
        v221 = 64 - v169;
        if (64 - v169 >= v220)
        {
          v221 = v220;
        }

        *(v130 + 8 * v168) |= ((v219 >> v218) & ~(-1 << v221)) << v169;
        v218 += v221;
        v222 = v221 + v169;
        v168 += v222 >> 6;
        v169 = v222 & 0x3F;
        v220 -= v221;
      }

      while (v220);
    }

    v167 += v217;
  }

  if (v313[3] || v318 == 2 || v318 >= 0x10)
  {
    v223 = v307;
    if (v307 <= 0x100 && v307 && v169 - v131 + (v168 << 6) + v307 <= 0xE0)
    {
      v224 = 0;
      v225 = (HIDWORD(v299) >> (v318 - v307));
      v226 = v307;
      do
      {
        v227 = 64 - v169;
        if (64 - v169 >= v226)
        {
          v227 = v226;
        }

        *(v130 + 8 * v168) |= ((v225 >> v224) & ~(-1 << v227)) << v169;
        v224 += v227;
        v228 = v227 + v169;
        v168 += v228 >> 6;
        v169 = v228 & 0x3F;
        v226 -= v227;
      }

      while (v226);
    }

    v167 += v223;
  }

  v229 = v300;
  if (v300)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xE0)
    {
      v230 = 0;
      v231 = v314[0];
      v232 = 3;
      do
      {
        v233 = 64 - v169;
        if (64 - v169 >= v232)
        {
          v233 = v232;
        }

        *(v130 + 8 * v168) |= ((v231 >> v230) & ~(-1 << v233)) << v169;
        v230 += v233;
        v234 = v233 + v169;
        v168 += v234 >> 6;
        v169 = v234 & 0x3F;
        v232 -= v233;
      }

      while (v232);
    }

    v167 += 3;
  }

  v235 = v301;
  if (v301)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xE0)
    {
      v236 = 0;
      v237 = v314[1];
      v238 = 3;
      do
      {
        v239 = 64 - v169;
        if (64 - v169 >= v238)
        {
          v239 = v238;
        }

        *(v130 + 8 * v168) |= ((v237 >> v236) & ~(-1 << v239)) << v169;
        v236 += v239;
        v240 = v239 + v169;
        v168 += v240 >> 6;
        v169 = v240 & 0x3F;
        v238 -= v239;
      }

      while (v238);
    }

    v167 += 3;
  }

  v241 = v302;
  if (v302)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xE0)
    {
      v242 = 0;
      v243 = v314[2];
      v244 = 3;
      do
      {
        v245 = 64 - v169;
        if (64 - v169 >= v244)
        {
          v245 = v244;
        }

        *(v130 + 8 * v168) |= ((v243 >> v242) & ~(-1 << v245)) << v169;
        v242 += v245;
        v246 = v245 + v169;
        v168 += v246 >> 6;
        v169 = v246 & 0x3F;
        v244 -= v245;
      }

      while (v244);
    }

    v167 += 3;
  }

  v247 = v303;
  if (v303)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xE0)
    {
      v248 = 0;
      v249 = v314[3];
      v250 = 3;
      do
      {
        v251 = 64 - v169;
        if (64 - v169 >= v250)
        {
          v251 = v250;
        }

        *(v130 + 8 * v168) |= ((v249 >> v248) & ~(-1 << v251)) << v169;
        v248 += v251;
        v252 = v251 + v169;
        v168 += v252 >> 6;
        v169 = v252 & 0x3F;
        v250 -= v251;
      }

      while (v250);
    }

    v167 += 3;
  }

  v253 = 224 - v167;
  v254 = (224 - v167) / 7u;
  v255 = v253 % 7;
  if ((v255 - 257) >= 0xFFFFFF00 && v169 - v131 + (v168 << 6) + v255 <= 0xE0)
  {
    do
    {
      v256 = 64 - v169;
      if (64 - v169 >= v255)
      {
        v256 = v255;
      }

      v257 = v256 + v169;
      v168 += v257 >> 6;
      v169 = v257 & 0x3F;
      v255 -= v256;
    }

    while (v255);
  }

  v258 = 0;
  while (2)
  {
    if (v229 && v229 <= 0x100 && v169 - v131 + (v168 << 6) + v229 <= 0xE0)
    {
      v259 = 0;
      v260 = *(v297 + v258);
      v261 = v229;
      do
      {
        v262 = 64 - v169;
        if (64 - v169 >= v261)
        {
          v262 = v261;
        }

        *(v130 + 8 * v168) |= ((v260 >> v259) & ~(-1 << v262)) << v169;
        v259 += v262;
        v263 = v262 + v169;
        v168 += v263 >> 6;
        v169 = v263 & 0x3F;
        v261 -= v262;
      }

      while (v261);
    }

    v264 = v297 + v258;
    if (!v235)
    {
      v270 = v229;
      if (!v241)
      {
        goto LABEL_520;
      }

      goto LABEL_513;
    }

    if (v235 <= 0x100 && v169 - v131 + (v168 << 6) + v235 <= 0xE0)
    {
      v265 = 0;
      v266 = v264[7];
      v267 = v235;
      do
      {
        v268 = 64 - v169;
        if (64 - v169 >= v267)
        {
          v268 = v267;
        }

        *(v130 + 8 * v168) |= ((v266 >> v265) & ~(-1 << v268)) << v169;
        v265 += v268;
        v269 = v268 + v169;
        v168 += v269 >> 6;
        v169 = v269 & 0x3F;
        v267 -= v268;
      }

      while (v267);
    }

    v270 = v235 + v229;
    if (v241)
    {
LABEL_513:
      if (v241 <= 0x100 && v169 - v131 + (v168 << 6) + v241 <= 0xE0)
      {
        v271 = 0;
        v272 = v264[14];
        v273 = v241;
        do
        {
          v274 = 64 - v169;
          if (64 - v169 >= v273)
          {
            v274 = v273;
          }

          *(v130 + 8 * v168) |= ((v272 >> v271) & ~(-1 << v274)) << v169;
          v271 += v274;
          v275 = v274 + v169;
          v168 += v275 >> 6;
          v169 = v275 & 0x3F;
          v273 -= v274;
        }

        while (v273);
      }

      v270 += v241;
    }

LABEL_520:
    if (v247)
    {
      if (v247 <= 0x100 && v169 - v131 + (v168 << 6) + v247 <= 0xE0)
      {
        v276 = 0;
        v277 = v264[21];
        v278 = v247;
        do
        {
          v279 = 64 - v169;
          if (64 - v169 >= v278)
          {
            v279 = v278;
          }

          *(v130 + 8 * v168) |= ((v277 >> v276) & ~(-1 << v279)) << v169;
          v276 += v279;
          v280 = v279 + v169;
          v168 += v280 >> 6;
          v169 = v280 & 0x3F;
          v278 -= v279;
        }

        while (v278);
      }

      v270 += v247;
    }

    v281 = v254 - v270;
    if (v281 && v281 <= 0x100 && v169 - v131 + (v168 << 6) + v281 <= 0xE0)
    {
      do
      {
        v282 = 64 - v169;
        if (64 - v169 >= v281)
        {
          v282 = v281;
        }

        v283 = v282 + v169;
        v168 += v283 >> 6;
        v169 = v283 & 0x3F;
        v281 -= v282;
      }

      while (v281);
    }

    if (++v258 != 7)
    {
      continue;
    }

    return v55 & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = (a3 & 0xFFFFFFFD) == 1;
  v9 = 2 * v8;
  v10 = v8 << 9;
  result = v6;
  do
  {
    if ((result - v6 + (v4 << 6) - 216) < 0xFFFFFFFFFFFFFF1FLL)
    {
      v13 = 0;
      if (a3 == 4)
      {
        goto LABEL_20;
      }

LABEL_12:
      v19 = v13 == 512 && v7 == 1;
      if (!v19 && v13)
      {
        if (v13 == 1022)
        {
          v13 = 1023;
        }

        else
        {
          v13 = ((v13 >> 1) & 1 | v13) ^ 1;
        }
      }

      goto LABEL_20;
    }

    v14 = 0;
    v15 = 0;
    v16 = 9;
    do
    {
      v17 = 64 - result;
      if (64 - result >= v16)
      {
        v17 = v16;
      }

      v14 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v17)) << v15;
      v15 += v17;
      v18 = v17 + result;
      v4 += v18 >> 6;
      result = v18 & 0x3F;
      v16 -= v17;
    }

    while (v16);
    v13 = 2 * (v14 & 0x1FF);
    if (a3 != 4)
    {
      goto LABEL_12;
    }

LABEL_20:
    *(a2 + 16 * v3) = v13 ^ v10;
    if ((result - v6 + (v4 << 6) - 216) < 0xFFFFFFFFFFFFFF1FLL)
    {
      v20 = 0;
      if (a3 == 4)
      {
        goto LABEL_36;
      }

LABEL_28:
      v26 = v20 == 512 && v7 == 1;
      if (!v26 && v20)
      {
        if (v20 == 1022)
        {
          v20 = 1023;
        }

        else
        {
          v20 = ((v20 >> 1) & 1 | v20) ^ 1;
        }
      }

      goto LABEL_36;
    }

    v21 = 0;
    v22 = 0;
    v23 = 9;
    do
    {
      v24 = 64 - result;
      if (64 - result >= v23)
      {
        v24 = v23;
      }

      v21 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v24)) << v22;
      v22 += v24;
      v25 = v24 + result;
      v4 += v25 >> 6;
      result = v25 & 0x3F;
      v23 -= v24;
    }

    while (v23);
    v20 = 2 * (v21 & 0x1FF);
    if (a3 != 4)
    {
      goto LABEL_28;
    }

LABEL_36:
    v27 = v20 ^ v10;
    v28 = (a2 + 16 * v3);
    v28[1] = v27;
    if ((result - v6 + (v4 << 6) - 217) >= 0xFFFFFFFFFFFFFF1FLL)
    {
      v30 = 0;
      v31 = 0;
      v32 = 8;
      do
      {
        v33 = 64 - result;
        if (64 - result >= v32)
        {
          v33 = v32;
        }

        v30 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v33)) << v31;
        v31 += v33;
        v34 = v33 + result;
        v4 += v34 >> 6;
        result = v34 & 0x3F;
        v32 -= v33;
      }

      while (v32);
      v29 = 4 * v30;
    }

    else
    {
      v29 = 0;
    }

    v35 = ((v29 << 29 >> 31) + 2) | v29;
    if (v29 == 1020)
    {
      v35 = 1023;
    }

    if (v29 == 512 && v7 == 1 || v29 == 0)
    {
      v35 = v29;
    }

    if (a3 != 4)
    {
      v29 = v35;
    }

    v28[2] = v29 ^ v10;
    if ((result - v6 + (v4 << 6) - 223) < 0xFFFFFFFFFFFFFF1FLL)
    {
      v12 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 2;
      do
      {
        v41 = 64 - result;
        if (64 - result >= v40)
        {
          v41 = v40;
        }

        v38 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v41)) << v39;
        v39 += v41;
        v42 = v41 + result;
        v4 += v42 >> 6;
        result = v42 & 0x3F;
        v40 -= v41;
      }

      while (v40);
      v12 = v38 & 3;
    }

    v28[3] = v12 ^ v9;
    ++v3;
  }

  while (v3 != 8);
  return result;
}

_DWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v271 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v244[0] = (v6 >> v5) & 7;
  v7 = (v5 | 3) - v5;
  v8 = (v6 >> (v5 | 3u)) & 7;
  if (v7 > 0xDD)
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  else
  {
    v7 = ((8 * (a1 & 7)) | 6) - v5;
    v9 = (8 * (a1 & 7)) | 6;
  }

  if ((v5 | 3uLL) - v5 > 0xDD)
  {
    LOBYTE(v8) = 0;
  }

  v244[1] = v8;
  if (v7 - 222 >= 0xFFFFFFFFFFFFFF1FLL)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 3;
    do
    {
      v14 = 64 - v9;
      if (64 - v9 >= v13)
      {
        v14 = v13;
      }

      v11 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v14)) << v12;
      v12 += v14;
      v10 += (v14 + v9) >> 6;
      v9 = (v14 + v9) & 0x3F;
      v13 -= v14;
    }

    while (v13);
    v7 = v9 - v5;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v244[2] = v11;
  if (v7 + (v10 << 6) - 224 >= 0xFFFFFFFFFFFFFF1FLL)
  {
    v16 = v9 + 1;
    v17 = *(v4 + 8 * v10) >> v9;
    v9 = (v9 + 1) & 0x3F;
    v10 += v16 >> 6;
    v15 = v17 & 1;
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = a3 & 0xFFFFFFFD;
  v244[3] = v15;
  v20 = 10;
  do
  {
    v23 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v18];
    *(&v258 + v18) = v23;
    v24 = v244[v18];
    if (v24)
    {
      LODWORD(v25) = 0;
      v26 = 1;
    }

    else
    {
      v25 = (0x200020002uLL >> (8 * ((v23 - 8) & 0x1Fu))) & 2;
      if ((v23 - 8) <= 4)
      {
        v26 = v23;
      }

      else
      {
        v26 = 1;
      }

      if ((v23 - 8) > 4)
      {
        LODWORD(v25) = 0;
      }
    }

    v27 = 0;
    if ((v26 & 1) == 0 && v9 - v5 + (v10 << 6) + v25 <= 0xE0)
    {
      v28 = 0;
      v29 = 0;
      v30 = v25;
      do
      {
        v31 = 64 - v9;
        if (64 - v9 >= v30)
        {
          v31 = v30;
        }

        v28 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v31)) << v29;
        v29 += v31;
        v10 += (v31 + v9) >> 6;
        v9 = (v31 + v9) & 0x3F;
        v30 -= v31;
      }

      while (v30);
      v27 = v28 & 3;
    }

    v32 = 0;
    v262[v18] = 0;
    if (v23 <= 11)
    {
      if (v23 == 2)
      {
        *(&v267 + v18) = v24 & 1;
        v22 = 5;
        goto LABEL_20;
      }

      if (v23 == 8 || v23 == 10)
      {
        v33 = v24 & 7;
        if (v33)
        {
          v32 = v33 + 2;
        }

        else if (v27 > 1)
        {
          if (v27 == 2)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {
          v32 = 0;
          if (v27)
          {
            v262[v18] = ~(-1 << v23);
          }
        }
      }

      goto LABEL_45;
    }

    if (v23 != 12)
    {
      if (v23 == 16 || v23 == 32)
      {
        v32 = v24 & 0xF;
      }

LABEL_45:
      v22 = 0;
      *(&v267 + v18) = v32;
      if (v23 > 15)
      {
        if (v23 == 16)
        {
          v22 = 3;
        }

        else if (v23 == 32)
        {
          v22 = 4;
        }
      }

      else
      {
        v22 = v23 == 10;
      }

      goto LABEL_20;
    }

    v21 = (v24 & 7) + 3;
    if ((v24 & 7) == 0)
    {
      v21 = v27;
    }

    *(&v267 + v18) = v21;
    v22 = 2;
LABEL_20:
    v20 += v25;
    *(&v263 + v18++) = v22;
  }

  while (v18 != 4);
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v263, &v267, &v256, &v254);
  v34 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v263 + 1);
  v35 = v267;
  v36 = &kDQuadParamTable[160 * v263 + 10 * v267];
  v38 = v36[4];
  v37 = v36[5];
  v39 = v38 + v34;
  v40 = v37 + v34;
  v41 = v254 - v256;
  if (v254 - v256 < 0)
  {
    v42 = &kDQuadParamTable[160 * v263 + 10 * v267];
    if (v42[7] < v256 - v254)
    {
      --v40;
      if (!v42[8])
      {
        v41 = -1;
LABEL_61:
        v39 += v41;
      }
    }
  }

  else if (v41)
  {
    v40 += v41;
    goto LABEL_61;
  }

  if (v258 >= v39)
  {
    v43 = v39;
  }

  else
  {
    v43 = v258;
  }

  LODWORD(v252) = v43;
  v243 = v258;
  if (v37)
  {
    v44 = v258;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v40)
  {
    v40 = v44;
  }

  LODWORD(v250) = v40;
  v45 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v264 + 1);
  v46 = &kDQuadParamTable[160 * v264 + 10 * v268];
  v48 = v46[4];
  v47 = v46[5];
  v49 = v48 + v45;
  v50 = v47 + v45;
  v51 = HIDWORD(v254) - HIDWORD(v256);
  if (HIDWORD(v254) - HIDWORD(v256) < 0)
  {
    v52 = &kDQuadParamTable[160 * v264 + 10 * v268];
    if (v52[7] < HIDWORD(v256) - HIDWORD(v254))
    {
      --v50;
      if (!v52[8])
      {
        v51 = -1;
LABEL_76:
        v49 += v51;
      }
    }
  }

  else if (v51)
  {
    v50 += v51;
    goto LABEL_76;
  }

  v241 = v268;
  v53 = v259;
  if (v259 >= v49)
  {
    v54 = v49;
  }

  else
  {
    v54 = v259;
  }

  HIDWORD(v252) = v54;
  if (v47)
  {
    v55 = v259;
  }

  else
  {
    v55 = 0;
  }

  if (v55 < v50)
  {
    v50 = v55;
  }

  HIDWORD(v250) = v50;
  v56 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v265 + 1);
  v57 = v269;
  v58 = &kDQuadParamTable[160 * v265 + 10 * v269];
  v60 = v58[4];
  v59 = v58[5];
  v61 = v60 + v56;
  v62 = v59 + v56;
  v63 = v255 - v257;
  if (v255 - v257 < 0)
  {
    v64 = &kDQuadParamTable[160 * v265 + 10 * v269];
    if (v64[7] < v257 - v255)
    {
      --v62;
      if (!v64[8])
      {
        v63 = -1;
LABEL_90:
        v61 += v63;
      }
    }
  }

  else if (v63)
  {
    v62 += v63;
    goto LABEL_90;
  }

  v65 = v260;
  if (v260 < v61)
  {
    v61 = v260;
  }

  LODWORD(v253) = v61;
  if (v59)
  {
    v66 = v260;
  }

  else
  {
    v66 = 0;
  }

  if (v66 < v62)
  {
    v62 = v66;
  }

  LODWORD(v251) = v62;
  v67 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v266 + 1);
  v68 = v270;
  v69 = &kDQuadParamTable[160 * v266 + 10 * v270];
  v70 = v69[5];
  v71 = v69[4] + v67;
  v72 = v70 + v67;
  v73 = HIDWORD(v255) - HIDWORD(v257);
  if (HIDWORD(v255) - HIDWORD(v257) < 0)
  {
    v75 = &kDQuadParamTable[160 * v266 + 10 * v270];
    if (v75[7] >= HIDWORD(v257) - HIDWORD(v255))
    {
      v35 = v267;
    }

    else
    {
      --v72;
      v35 = v267;
      if (!v75[8])
      {
        v74 = -1;
LABEL_103:
        v71 += v74;
      }
    }
  }

  else if (HIDWORD(v255) != HIDWORD(v257))
  {
    v72 += v73;
    v74 = HIDWORD(v255) - HIDWORD(v257);
    goto LABEL_103;
  }

  v76 = v261;
  if (v261 < v71)
  {
    v71 = v261;
  }

  HIDWORD(v253) = v71;
  if (v70)
  {
    v77 = v261;
  }

  else
  {
    v77 = 0;
  }

  if (v77 < v72)
  {
    v72 = v77;
  }

  HIDWORD(v251) = v72;
  if (v270 == 1 && v73 <= 1)
  {
    v240 = v269;
    v239 = v260;
    v78 = v270;
    v79 = v261;
    v80 = v35;
    fprintf(*MEMORY[0x29EDCA610], "lossy decompress dquad warning: invalid 2-bit region (mode[3]=%d end_level[3]=%d start_level[3]=%d\n", 1, HIDWORD(v255), HIDWORD(v257));
    v35 = v80;
    v76 = v79;
    v68 = v78;
    v65 = v239;
    v57 = v240;
    v72 = 0;
    v62 = 0;
    v50 = 0;
    v40 = 0;
    v71 = 0;
    v61 = 0;
    v54 = 0;
    v43 = 0;
    v252 = 0;
    v253 = 0;
    v250 = 0;
    v251 = 0;
  }

  v248 = 0;
  v249 = 0;
  if (v35 || v243 - 8 > 4)
  {
    if (v43 <= 0x20)
    {
      v81 = 0;
      if (v43)
      {
        v82 = v43;
        if (v9 - v5 + (v10 << 6) + v43 <= 0xE0)
        {
          v81 = 0;
          v83 = 0;
          do
          {
            v84 = 64 - v9;
            if (64 - v9 >= v82)
            {
              v84 = v82;
            }

            v81 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v84)) << v83;
            v83 += v84;
            v10 += (v84 + v9) >> 6;
            v9 = (v84 + v9) & 0x3F;
            v82 -= v84;
          }

          while (v82);
        }
      }
    }

    else
    {
      v81 = 0;
    }

    LODWORD(v248) = v81 << (v243 - v43);
    v20 += v43;
    if (!v241)
    {
      goto LABEL_131;
    }

LABEL_134:
    if (v54 <= 0x20)
    {
      v85 = 0;
      if (v54)
      {
        v86 = v54;
        if (v9 - v5 + (v10 << 6) + v54 <= 0xE0)
        {
          v85 = 0;
          v87 = 0;
          do
          {
            v88 = 64 - v9;
            if (64 - v9 >= v86)
            {
              v88 = v86;
            }

            v85 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v88)) << v87;
            v87 += v88;
            v10 += (v88 + v9) >> 6;
            v9 = (v88 + v9) & 0x3F;
            v86 -= v88;
          }

          while (v86);
        }
      }
    }

    else
    {
      v85 = 0;
    }

    HIDWORD(v248) = v85 << (v53 - v54);
    v20 += v54;
    if (!v57)
    {
      goto LABEL_143;
    }

LABEL_146:
    if (v61 <= 0x20)
    {
      v89 = 0;
      if (v61)
      {
        v90 = v61;
        if (v9 - v5 + (v10 << 6) + v61 <= 0xE0)
        {
          v89 = 0;
          v91 = 0;
          do
          {
            v92 = 64 - v9;
            if (64 - v9 >= v90)
            {
              v92 = v90;
            }

            v89 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v92)) << v91;
            v91 += v92;
            v10 += (v92 + v9) >> 6;
            v9 = (v92 + v9) & 0x3F;
            v90 -= v92;
          }

          while (v90);
        }
      }
    }

    else
    {
      v89 = 0;
    }

    LODWORD(v249) = v89 << (v65 - v61);
    v20 += v61;
    if (!v68)
    {
      goto LABEL_155;
    }

LABEL_157:
    if (v71 <= 0x20)
    {
      v93 = 0;
      if (v71)
      {
        v94 = v71;
        if (v9 - v5 + (v10 << 6) + v71 <= 0xE0)
        {
          v93 = 0;
          v95 = 0;
          do
          {
            v96 = 64 - v9;
            if (64 - v9 >= v94)
            {
              v96 = v94;
            }

            v93 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v96)) << v95;
            v95 += v96;
            v10 += (v96 + v9) >> 6;
            v9 = (v96 + v9) & 0x3F;
            v94 -= v96;
          }

          while (v94);
        }
      }
    }

    else
    {
      v93 = 0;
    }

    HIDWORD(v249) = v93 << (v76 - v71);
    v20 += v71;
  }

  else
  {
    LODWORD(v248) = v262[0];
    if (v241)
    {
      goto LABEL_134;
    }

LABEL_131:
    if (v53 - 8 >= 5)
    {
      goto LABEL_134;
    }

    HIDWORD(v248) = v262[1];
    if (v57)
    {
      goto LABEL_146;
    }

LABEL_143:
    if (v65 - 8 >= 5)
    {
      goto LABEL_146;
    }

    LODWORD(v249) = v262[2];
    if (v68)
    {
      goto LABEL_157;
    }

LABEL_155:
    if (v76 - 8 >= 5)
    {
      goto LABEL_157;
    }

    HIDWORD(v249) = v262[3];
  }

  v247 = 0;
  v246 = 0;
  if (v40)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xE0)
    {
      v97 = 0;
      v98 = 0;
      v99 = 3;
      do
      {
        v100 = 64 - v9;
        if (64 - v9 >= v99)
        {
          v100 = v99;
        }

        v97 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v100)) << v98;
        v98 += v100;
        v10 += (v100 + v9) >> 6;
        v9 = (v100 + v9) & 0x3F;
        v99 -= v100;
      }

      while (v99);
    }

    else
    {
      v97 = 0;
    }

    LODWORD(v246) = v97;
    v20 += 3;
  }

  if (v50)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xE0)
    {
      v101 = 0;
      v102 = 0;
      v103 = 3;
      do
      {
        v104 = 64 - v9;
        if (64 - v9 >= v103)
        {
          v104 = v103;
        }

        v101 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v104)) << v102;
        v102 += v104;
        v10 += (v104 + v9) >> 6;
        v9 = (v104 + v9) & 0x3F;
        v103 -= v104;
      }

      while (v103);
    }

    else
    {
      v101 = 0;
    }

    HIDWORD(v246) = v101;
    v20 += 3;
  }

  if (v62)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xE0)
    {
      v105 = 0;
      v106 = 0;
      v107 = 3;
      do
      {
        v108 = 64 - v9;
        if (64 - v9 >= v107)
        {
          v108 = v107;
        }

        v105 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v108)) << v106;
        v106 += v108;
        v10 += (v108 + v9) >> 6;
        v9 = (v108 + v9) & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    else
    {
      v105 = 0;
    }

    LODWORD(v247) = v105;
    v20 += 3;
  }

  if (v72)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xE0)
    {
      v109 = 0;
      v110 = 0;
      v111 = 3;
      do
      {
        v112 = 64 - v9;
        if (64 - v9 >= v111)
        {
          v112 = v111;
        }

        v109 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v112)) << v110;
        v110 += v112;
        v10 += (v112 + v9) >> 6;
        v9 = (v112 + v9) & 0x3F;
        v111 -= v112;
      }

      while (v111);
    }

    else
    {
      v109 = 0;
    }

    HIDWORD(v247) = v109;
    v20 += 3;
  }

  v113 = 0;
  v114 = v9 + (v10 << 6) + (224 - v20) % 7u;
  memset(v245, 0, sizeof(v245));
  while (2)
  {
    v117 = v114 >> 6;
    v118 = v114 & 0x3F;
    if (v40)
    {
      if (v40 <= 0x20 && v118 - v5 + (v114 & 0xFFFFFFFFFFFFFFC0) + v40 <= 0xE0)
      {
        v119 = 0;
        v120 = 0;
        v121 = v40;
        do
        {
          v122 = 64 - v118;
          if (64 - v118 >= v121)
          {
            v122 = v121;
          }

          v119 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v122)) << v120;
          v120 += v122;
          v123 = v122 + v118;
          v117 += v123 >> 6;
          v118 = v123 & 0x3F;
          v121 -= v122;
        }

        while (v121);
      }

      else
      {
        v119 = 0;
      }

      *(v245 + v113) = v119;
    }

    v124 = v245 + v113;
    if (v50)
    {
      if (v50 <= 0x20 && v118 - v5 + (v117 << 6) + v50 <= 0xE0)
      {
        v125 = 0;
        v126 = 0;
        v127 = v50;
        do
        {
          v128 = 64 - v118;
          if (64 - v118 >= v127)
          {
            v128 = v127;
          }

          v125 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v128)) << v126;
          v126 += v128;
          v129 = v128 + v118;
          v117 += v129 >> 6;
          v118 = v129 & 0x3F;
          v127 -= v128;
        }

        while (v127);
      }

      else
      {
        v125 = 0;
      }

      v124[7] = v125;
      v116 = v50 + v40;
      if (v62)
      {
LABEL_222:
        if (v62 <= 0x20 && v118 - v5 + (v117 << 6) + v62 <= 0xE0)
        {
          v130 = 0;
          v131 = 0;
          v132 = v62;
          do
          {
            v133 = 64 - v118;
            if (64 - v118 >= v132)
            {
              v133 = v132;
            }

            v130 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v133)) << v131;
            v131 += v133;
            v134 = v133 + v118;
            v117 += v134 >> 6;
            v118 = v134 & 0x3F;
            v132 -= v133;
          }

          while (v132);
        }

        else
        {
          v130 = 0;
        }

        v124[14] = v130;
        v116 += v62;
      }
    }

    else
    {
      v116 = v40;
      if (v62)
      {
        goto LABEL_222;
      }
    }

    if (v72)
    {
      if (v72 > 0x20 || v118 - v5 + (v117 << 6) + v72 > 0xE0)
      {
        v115 = 0;
      }

      else
      {
        v115 = 0;
        v135 = 0;
        v136 = v72;
        do
        {
          v137 = 64 - v118;
          if (64 - v118 >= v136)
          {
            v137 = v136;
          }

          v115 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v137)) << v135;
          v135 += v137;
          v138 = v137 + v118;
          v117 += v138 >> 6;
          v118 = v138 & 0x3F;
          v136 -= v137;
        }

        while (v136);
      }

      v124[21] = v115;
      v116 += v72;
    }

    v114 = (v118 | (v117 << 6)) + (224 - v20) / 7u - v116;
    if (++v113 != 7)
    {
      continue;
    }

    break;
  }

  v139 = 0;
  v140 = 0;
  v141 = a2 + 112;
  result = kDQuadParamTable;
  while (2)
  {
    v147 = *&kDQuadParamTable[160 * *(&v263 + v139) + 2 + 10 * *(&v267 + v139)];
    v148 = *(&v250 + v139);
    if (v147 >> v148 <= 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = v147 >> v148;
    }

    v150 = *(&v258 + v139);
    v151 = v149 >> 1;
    v152 = (1 << (v150 - *(&v252 + v139))) >> 1;
    if (v149 >> 1 < v152)
    {
      v152 = v149 >> 1;
    }

    v153 = (1 << (v150 - 1));
    v154 = *(&v248 + v139);
    v155 = v153 - v154;
    v156 = 1 << v150;
    v157 = (1 << v150) + 0xFFFFFFFFLL;
    if (v154)
    {
      v158 = v152;
    }

    else
    {
      v158 = 0;
    }

    v159 = v154 == v153;
    v160 = v150 == 16;
    if (v150 == 16)
    {
      v161 = 31744;
    }

    else
    {
      v161 = 2139095040;
    }

    if (v150 == 16)
    {
      v162 = 64512;
    }

    else
    {
      v162 = 4286578688;
    }

    v163 = 2143289344;
    if (v160)
    {
      v163 = 32256;
    }

    v164 = 65024;
    if (!v160)
    {
      v164 = 4290772992;
    }

    v165 = (v162 - 1);
    if (v148)
    {
      v166 = v147 + v154;
      v167 = -1 << v148;
      v168 = *(&v246 + v139);
      v169 = v155 / v149;
      if (v168)
      {
        v170 = *(v245 + v140);
        v171 = v169 == v170;
        if (!(v154 | v170))
        {
          v172 = 0;
          goto LABEL_307;
        }

        if (v166 >= v156 && (v167 ^ v170) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v177 = 1;
          v172 = v156 - 1;
        }

        else
        {
          v172 = v151 + v149 * v170;
LABEL_307:
          v177 = 1;
        }
      }

      else
      {
        v177 = 0;
        v172 = v158;
        v171 = v154 == v153;
      }

      v180 = v172 + v154;
      v181 = v180;
      if (a3 == 4)
      {
        v182 = v180 < v161 || v180 >= v163;
        v181 = (v161 - 1);
        if (v182)
        {
          v183 = v180 < v163 || v180 >= v153;
          v181 = v153;
          if (v183)
          {
            if (v180 < v164 && v180 >= v162)
            {
              v181 = (v162 - 1);
            }

            else
            {
              v181 = v180;
            }
          }
        }
      }

      if (v181 >= v156)
      {
        v185 = v157;
      }

      else
      {
        v185 = v181;
      }

      if (v171)
      {
        v186 = 0;
      }

      else
      {
        v186 = v185 ^ v153;
      }

      if (v19 != 1)
      {
        v186 = v185;
      }

      *(a2 + v139) = v186;
      if (v168 == 1)
      {
        v187 = v158;
        v188 = v154 == v153;
      }

      else
      {
        v189 = *((v245 | (4 * v177)) + v140);
        v188 = v169 == v189;
        if (v154 | v189)
        {
          if (v166 < v156 || (v187 = v156 - 1, (v167 ^ v189) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v187 = v151 + v149 * v189;
          }
        }

        else
        {
          v187 = 0;
        }

        ++v177;
      }

      v190 = v187 + v154;
      v191 = v190;
      if (a3 == 4)
      {
        v192 = v190 < v161 || v190 >= v163;
        v191 = (v161 - 1);
        if (v192)
        {
          v193 = v190 < v163 || v190 >= v153;
          v191 = v153;
          if (v193)
          {
            if (v190 < v164 && v190 >= v162)
            {
              v191 = (v162 - 1);
            }

            else
            {
              v191 = v190;
            }
          }
        }
      }

      if (v191 >= v156)
      {
        v195 = v157;
      }

      else
      {
        v195 = v191;
      }

      if (v188)
      {
        v196 = 0;
      }

      else
      {
        v196 = v195 ^ v153;
      }

      if (v19 != 1)
      {
        v196 = v195;
      }

      *(v141 + v139 - 96) = v196;
      if (v168 == 2)
      {
        v197 = v158;
        v198 = v154 == v153;
      }

      else
      {
        v199 = *((v245 | (4 * v177)) + v140);
        v198 = v169 == v199;
        if (v154 | v199)
        {
          if (v166 < v156 || (v197 = v156 - 1, (v167 ^ v199) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v197 = v151 + v149 * v199;
          }
        }

        else
        {
          v197 = 0;
        }

        ++v177;
      }

      v200 = v197 + v154;
      v201 = v200;
      if (a3 == 4)
      {
        if (v200 < v161 || (v201 = (v161 - 1), v200 >= v163))
        {
          if (v200 < v163 || (v201 = v153, v200 >= v153))
          {
            if (v200 < v164 && v200 >= v162)
            {
              v201 = (v162 - 1);
            }

            else
            {
              v201 = v200;
            }
          }
        }
      }

      if (v201 >= v156)
      {
        v203 = v157;
      }

      else
      {
        v203 = v201;
      }

      if (v198)
      {
        v204 = 0;
      }

      else
      {
        v204 = v203 ^ v153;
      }

      if (v19 != 1)
      {
        v204 = v203;
      }

      *(v141 + v139 - 80) = v204;
      if (v168 == 3)
      {
        v205 = v158;
        v206 = v154 == v153;
      }

      else
      {
        v207 = *(v245 + 4 * v177 + v140);
        v206 = v169 == v207;
        if (v154 | v207)
        {
          if (v166 < v156 || (v205 = v156 - 1, (v167 ^ v207) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v205 = v151 + v149 * v207;
          }
        }

        else
        {
          v205 = 0;
        }

        ++v177;
      }

      v208 = v205 + v154;
      v209 = v208;
      if (a3 == 4)
      {
        if (v208 < v161 || (v209 = (v161 - 1), v208 >= v163))
        {
          if (v208 < v163 || (v209 = v153, v208 >= v153))
          {
            if (v208 < v164 && v208 >= v162)
            {
              v209 = (v162 - 1);
            }

            else
            {
              v209 = v208;
            }
          }
        }
      }

      if (v209 >= v156)
      {
        v211 = v157;
      }

      else
      {
        v211 = v209;
      }

      if (v206)
      {
        v212 = 0;
      }

      else
      {
        v212 = v211 ^ v153;
      }

      if (v19 != 1)
      {
        v212 = v211;
      }

      *(v141 + v139 - 64) = v212;
      if (v168 == 4)
      {
        v213 = v158;
        v214 = v154 == v153;
      }

      else
      {
        v215 = *(v245 + 4 * v177 + v140);
        v214 = v169 == v215;
        if (v154 | v215)
        {
          if (v166 < v156 || (v213 = v156 - 1, (v167 ^ v215) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v151 + v149 * v215;
          }
        }

        else
        {
          v213 = 0;
        }

        ++v177;
      }

      v216 = v213 + v154;
      v217 = v216;
      if (a3 == 4)
      {
        if (v216 < v161 || (v217 = (v161 - 1), v216 >= v163))
        {
          if (v216 < v163 || (v217 = v153, v216 >= v153))
          {
            if (v216 < v164 && v216 >= v162)
            {
              v217 = (v162 - 1);
            }

            else
            {
              v217 = v216;
            }
          }
        }
      }

      if (v217 >= v156)
      {
        v219 = v157;
      }

      else
      {
        v219 = v217;
      }

      if (v214)
      {
        v220 = 0;
      }

      else
      {
        v220 = v219 ^ v153;
      }

      if (v19 != 1)
      {
        v220 = v219;
      }

      *(v141 + v139 - 48) = v220;
      if (v168 == 5)
      {
        v221 = v158;
        v222 = v154 == v153;
      }

      else
      {
        v223 = *(v245 + 4 * v177 + v140);
        v222 = v169 == v223;
        if (v154 | v223)
        {
          if (v166 < v156 || (v221 = v156 - 1, (v167 ^ v223) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v221 = v151 + v149 * v223;
          }
        }

        else
        {
          v221 = 0;
        }

        ++v177;
      }

      v224 = v221 + v154;
      v225 = v224;
      if (a3 == 4)
      {
        if (v224 < v161 || (v225 = (v161 - 1), v224 >= v163))
        {
          if (v224 < v163 || (v225 = v153, v224 >= v153))
          {
            if (v224 < v164 && v224 >= v162)
            {
              v225 = (v162 - 1);
            }

            else
            {
              v225 = v224;
            }
          }
        }
      }

      if (v225 >= v156)
      {
        v227 = v157;
      }

      else
      {
        v227 = v225;
      }

      if (v222)
      {
        v228 = 0;
      }

      else
      {
        v228 = v227 ^ v153;
      }

      if (v19 != 1)
      {
        v228 = v227;
      }

      *(v141 + v139 - 32) = v228;
      if (v168 == 6)
      {
        v229 = v158;
        v230 = v154 == v153;
      }

      else
      {
        v231 = *(v245 + 4 * v177 + v140);
        v230 = v169 == v231;
        if (v154 | v231)
        {
          if (v166 < v156 || (v229 = v156 - 1, (v167 ^ v231) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v229 = v151 + v149 * v231;
          }
        }

        else
        {
          v229 = 0;
        }

        ++v177;
      }

      v232 = v229 + v154;
      v233 = v232;
      if (a3 == 4)
      {
        if (v232 < v161 || (v233 = (v161 - 1), v232 >= v163))
        {
          if (v232 < v163 || (v233 = v153, v232 >= v153))
          {
            if (v232 < v164 && v232 >= v162)
            {
              v233 = (v162 - 1);
            }

            else
            {
              v233 = v232;
            }
          }
        }
      }

      if (v233 >= v156)
      {
        v235 = v157;
      }

      else
      {
        v235 = v233;
      }

      if (v230)
      {
        v236 = 0;
      }

      else
      {
        v236 = v235 ^ v153;
      }

      if (v19 != 1)
      {
        v236 = v235;
      }

      *(v141 + v139 - 16) = v236;
      if (v168 != 7)
      {
        v237 = *(v245 + 4 * v177 + v140);
        v159 = v169 == v237;
        if (v154 | v237)
        {
          if (v166 >= v156 && (v167 ^ v237) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v158 = v156 - 1;
          }

          else
          {
            v158 = v151 + v149 * v237;
          }
        }

        else
        {
          v158 = 0;
        }
      }

      v238 = v158 + v154;
      v144 = v158 + v154;
      if (a3 == 4)
      {
        if (v238 < v161 || (v144 = (v161 - 1), v238 >= v163))
        {
          if (v238 < v163 || (v144 = v153, v238 >= v153))
          {
            if (v238 < v164 && v238 >= v162)
            {
              v144 = (v162 - 1);
            }

            else
            {
              v144 = v158 + v154;
            }
          }
        }
      }

      if (v144 >= v156)
      {
        LODWORD(v145) = v157;
      }

      else
      {
        LODWORD(v145) = v144;
      }

      v146 = v145 ^ v153;
      if (v159)
      {
        v146 = 0;
      }

      if (v19 == 1)
      {
        LODWORD(v145) = v146;
      }

      result = kDQuadParamTable;
    }

    else
    {
      v174 = v163 <= v154 && v154 < v153;
      v176 = v154 >= v162 && v164 > v154;
      if (a3 == 4)
      {
        if (v154 < v161 || v163 <= v154)
        {
          if (v174)
          {
            if (v156 <= v153)
            {
              LODWORD(v145) = v157;
            }

            else
            {
              LODWORD(v145) = v153;
            }
          }

          else
          {
            if (v176)
            {
              v145 = v165;
            }

            else
            {
              v145 = *(&v248 + v139);
            }

            if (v145 >= v156)
            {
              LODWORD(v145) = v157;
            }
          }
        }

        else if (v156 <= (v161 - 1))
        {
          LODWORD(v145) = v157;
        }

        else
        {
          LODWORD(v145) = v161 - 1;
        }
      }

      else
      {
        if (v156 <= v154)
        {
          LODWORD(v145) = v157;
        }

        else
        {
          LODWORD(v145) = *(&v248 + v139);
        }

        v178 = v145 ^ v153;
        if (v149 > v155)
        {
          v178 = 0;
        }

        if (v19 == 1)
        {
          LODWORD(v145) = v178;
        }
      }

      v179 = v141 + v139;
      *(v179 - 112) = v145;
      *(v179 - 96) = v145;
      *(v179 - 80) = v145;
      *(v179 - 64) = v145;
      *(v179 - 48) = v145;
      *(v179 - 32) = v145;
      *(v179 - 16) = v145;
    }

    *(v141 + v139) = v145;
    v140 += 28;
    v139 += 4;
    if (v140 != 112)
    {
      continue;
    }

    return result;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v457 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v7 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 127)
      {
        v27 = *a3;
        v28 = *(a3 + 16);
        v29 = *(a3 + 32);
        v30 = *(a3 + 48);
        v31 = *(a3 + 64);
        v32 = *(a3 + 80);
        v33 = *(a3 + 96);
        v34 = *(a3 + 112);
        v35 = (a1 + a2);
        *a1 = vzip1q_s64(*a3, v28);
        *(a1 + 16) = vzip1q_s64(v31, v32);
        v36 = (a1 + 2 * a2);
        *v35 = vzip2q_s64(v27, v28);
        v35[1] = vzip2q_s64(v31, v32);
        *v36 = vzip1q_s64(v29, v30);
        v36[1] = vzip1q_s64(v33, v34);
        v37 = (v36 + a2);
        *v37 = vzip2q_s64(v29, v30);
        v37[1] = vzip2q_s64(v33, v34);
        return 128;
      }

      else if (a4 == 3)
      {
        v14 = vld1q_dup_f32(a3);
        *a1 = v14;
        *(a1 + 16) = v14;
        v15 = (a1 + a2);
        *v15 = v14;
        v15[1] = v14;
        v16 = (a1 + 2 * a2);
        *v16 = v14;
        v16[1] = v14;
        v17 = (a1 + a2 + 2 * a2);
        *v17 = v14;
        v17[1] = v14;
        return 4;
      }

      else
      {
        v422.i8[8] = 0;
        v422.i64[0] = (8 * (a3 & 7)) | 0x380;
        v421.i64[0] = 8 * (a3 & 7);
        v421.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v446, v451, &v445, &v421, a4);
        v39.i64[0] = 0x3000300030003;
        v39.i64[1] = 0x3000300030003;
        v40 = v446;
        v41 = vandq_s8(v446, v39);
        v42 = vbicq_s8(v451[0], vceqq_s16(v41, v39));
        v451[0] = v42;
        v447 = v42;
        v448 = v42;
        v449 = v42;
        v450 = v42;
        v43.i64[0] = 0x202020202020202;
        v43.i64[1] = 0x202020202020202;
        v44 = vandq_s8(vmovl_s16(vtst_s16(*v446.i8, 0x4000400040004)), v43);
        v45 = v421.i64[0];
        if (vmaxvq_s8(v44) < 1)
        {
          v59.i64[0] = -1;
          v59.i64[1] = -1;
          v60.i64[0] = -1;
          v60.i64[1] = -1;
          v61.i64[0] = -1;
          v61.i64[1] = -1;
          v62.i64[0] = -1;
          v62.i64[1] = -1;
        }

        else
        {
          v46 = vmovl_u8(*&vpaddq_s8(v44, v44));
          v47 = vmovl_u16(*&vpaddq_s16(v46, v46));
          v48 = vpaddq_s32(v47, v47).u64[0];
          v49.i64[0] = v48;
          v49.i64[1] = HIDWORD(v48);
          v50 = v49;
          v51 = vaddvq_s64(v49);
          v52 = v51;
          v53 = v421.i64[0] + v51;
          if (v422.i64[0])
          {
            _CF = v422.i64[0] >= v53;
          }

          else
          {
            _CF = 1;
          }

          v55 = _CF;
          if (v51 <= 0x80 && (v55 & 1) != 0)
          {
            v38.i64[0] = 63;
            v56 = (v421.i64[1] + 8 * (v421.i64[0] >> 6));
            v57 = vaddq_s64(vdupq_lane_s64(vandq_s8(v421.u64[0], v38).i64[0], 0), vzip1q_s64(0, v50));
            v58 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
            if ((v421.i8[0] & 0x3F) + v52 >= 0x81)
            {
              v58 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v58);
            }

            v45 = v53;
          }

          else
          {
            v422.i8[8] = 1;
            v58 = 0uLL;
          }

          v63 = vzip1_s32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
          v64.i64[0] = v63.u32[0];
          v64.i64[1] = v63.u32[1];
          v65 = vshlq_u64(v58, vnegq_s64(v64));
          v66 = vuzp1q_s32(vzip1q_s64(v58, v65), vzip2q_s64(v58, v65));
          v67 = vshlq_u32(v66, vnegq_s32((*&v46 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v68 = vuzp1q_s16(vzip1q_s32(v66, v67), vzip2q_s32(v66, v67));
          v69 = vshlq_u16(v68, vnegq_s16((*&v44 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v70 = vuzp1q_s8(vzip1q_s16(v68, v69), vzip2q_s16(v68, v69));
          v69.i64[0] = 0x101010101010101;
          v69.i64[1] = 0x101010101010101;
          v71 = vshlq_s8(v69, v44);
          v69.i64[0] = -1;
          v69.i64[1] = -1;
          v72 = vqtbl1q_s8(vandq_s8(vaddq_s8(v71, v69), v70), xmmword_29D2F0F70);
          *v70.i8 = vdup_lane_s32(*v72.i8, 0);
          *v69.i8 = vdup_lane_s32(*v72.i8, 1);
          v73 = vdupq_laneq_s32(v72, 2).u64[0];
          v72.i64[0] = vdupq_laneq_s32(v72, 3).u64[0];
          v447 = vsubw_s8(v447, *v70.i8);
          v448 = vsubw_s8(v448, *v69.i8);
          v449 = vsubw_s8(v449, v73);
          v450 = vsubw_s8(v450, *v72.i8);
          v62 = vmovl_s8(vceqz_s8(*v70.i8));
          v61 = vmovl_s8(vceqz_s8(*v69.i8));
          v60 = vmovl_s8(vceqz_s8(v73));
          v59 = vmovl_s8(vceqz_s8(*v72.i8));
        }

        v74.i64[0] = 0x8000800080008;
        v74.i64[1] = 0x8000800080008;
        v75 = 0uLL;
        v76 = vandq_s8(vextq_s8(vtstq_s16(v446, v74), 0, 8uLL), v42);
        v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
        v78 = vpaddq_s32(v77, v77).u64[0];
        v79.i64[0] = v78;
        v79.i64[1] = HIDWORD(v78);
        v80 = v79;
        v81 = vaddvq_s64(v79);
        if (v422.i64[0])
        {
          v82 = v422.i64[0] >= v45 + v81;
        }

        else
        {
          v82 = 1;
        }

        v83 = v82;
        if (v81 <= 0x80 && (v83 & 1) != 0)
        {
          v84 = vaddq_s64(vdupq_n_s64(v45 & 0x3F), vzip1q_s64(0, v80));
          v85 = (v421.i64[1] + 8 * (v45 >> 6));
          v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
          if ((v45 & 0x3F) + v81 >= 0x81)
          {
            v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v75);
          }

          v45 += v81;
        }

        else
        {
          v422.i8[8] = 1;
        }

        v86 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
        v87.i64[0] = v86.u32[0];
        v87.i64[1] = v86.u32[1];
        v88 = vshlq_u64(v75, vnegq_s64(v87));
        v89 = vuzp1q_s32(vzip1q_s64(v75, v88), vzip2q_s64(v75, v88));
        v90.i64[0] = 0xFFFF0000FFFFLL;
        v90.i64[1] = 0xFFFF0000FFFFLL;
        v91 = vshlq_u32(v89, vnegq_s32(vandq_s8(v76, v90)));
        v92 = vuzp1q_s16(vzip1q_s32(v89, v91), vzip2q_s32(v89, v91));
        v91.i64[0] = 0xF000F000F000FLL;
        v91.i64[1] = 0xF000F000F000FLL;
        v93.i64[0] = 0x10001000100010;
        v93.i64[1] = 0x10001000100010;
        v94 = vshlq_s16(vshlq_s16(v92, vsubq_s16(v93, v76)), vaddq_s16(v76, v91));
        v453 = v94;
        v95 = v446.i8[0] & 3;
        if (v95 == 2)
        {
          if (v422.i64[0])
          {
            v96 = v45 + 8;
            v97 = v45 + 16;
            if (v422.i64[0] >= v45 + 8)
            {
              v45 += 8;
            }

            else
            {
              v97 = v45 + 8;
            }

            if (v422.i64[0] >= v97)
            {
              v45 = v97;
            }

            if (v422.i64[0] < v96 || v422.i64[0] < v97)
            {
              v422.i8[8] = 1;
            }
          }

          else
          {
            v45 += 16;
          }
        }

        v98 = 0uLL;
        v99 = vextq_s8(0, v447, 8uLL);
        v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
        v101 = vpaddq_s32(v100, v100).u64[0];
        v102.i64[0] = v101;
        v102.i64[1] = HIDWORD(v101);
        v103 = v102;
        v104 = vaddvq_s64(v102);
        v105 = v45 + v104;
        if (v422.i64[0])
        {
          v106 = v422.i64[0] >= v105;
        }

        else
        {
          v106 = 1;
        }

        v107 = v106;
        if (v104 <= 0x80 && (v107 & 1) != 0)
        {
          v108 = v45 & 0x3F;
          v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v103));
          v110 = v421.i64[1];
          v111 = (v421.i64[1] + 8 * (v45 >> 6));
          v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v109)));
          if (v108 + v104 >= 0x81)
          {
            v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v98);
          }

          v112 = v422.i8[8];
          v45 = v105;
        }

        else
        {
          v112 = 1;
          v110 = v421.i64[1];
        }

        v113 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
        v114.i64[0] = v113.u32[0];
        v114.i64[1] = v113.u32[1];
        v115 = vshlq_u64(v98, vnegq_s64(v114));
        v116 = vuzp1q_s32(vzip1q_s64(v98, v115), vzip2q_s64(v98, v115));
        v117.i64[0] = 0xFFFF0000FFFFLL;
        v117.i64[1] = 0xFFFF0000FFFFLL;
        v118 = vshlq_u32(v116, vnegq_s32(vandq_s8(v99, v117)));
        v119.i64[0] = 0xF000F000F000FLL;
        v119.i64[1] = 0xF000F000F000FLL;
        v120.i64[0] = 0x10001000100010;
        v120.i64[1] = 0x10001000100010;
        v121 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v116, v118), vzip2q_s32(v116, v118)), vsubq_s16(v120, v99)), vaddq_s16(v99, v119));
        v429 = v121;
        v122 = vmovl_u16(*&vpaddq_s16(v447, v447));
        v116.i64[0] = vpaddq_s32(v122, v122).u64[0];
        v114.i64[0] = v116.u32[0];
        v114.i64[1] = v116.u32[1];
        v123 = v114;
        v124 = vaddvq_s64(v114);
        v125 = v45 + v124;
        if (v422.i64[0])
        {
          v126 = v422.i64[0] >= v125;
        }

        else
        {
          v126 = 1;
        }

        v127 = v126;
        v128 = 0uLL;
        if (v124 <= 0x80 && v127)
        {
          v129 = v45 & 0x3F;
          v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v123));
          v131 = (v110 + 8 * (v45 >> 6));
          v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
          if (v129 + v124 >= 0x81)
          {
            v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
          }
        }

        else
        {
          v112 = 1;
          v125 = v45;
          v132 = 0uLL;
        }

        v133 = vzip1_s32(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
        v134.i64[0] = v133.u32[0];
        v134.i64[1] = v133.u32[1];
        v135 = vnegq_s64(v134);
        v136 = vshlq_u64(v132, v135);
        v137 = vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136));
        v138 = vnegq_s32(vandq_s8(v447, v117));
        v139 = vshlq_u32(v137, v138);
        v140 = vuzp1q_s16(vzip1q_s32(v137, v139), vzip2q_s32(v137, v139));
        v141 = vaddq_s16(v447, v119);
        v142 = vsubq_s16(v120, v447);
        v143 = vshlq_s16(vshlq_s16(v140, v142), v141);
        v430 = v143;
        v144 = v125 + v124;
        if (v422.i64[0])
        {
          v145 = v422.i64[0] >= v144;
        }

        else
        {
          v145 = 1;
        }

        v146 = v145;
        if (v124 <= 0x80 && v146)
        {
          v147 = v125 & 0x3F;
          v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v123));
          v149 = (v110 + 8 * (v125 >> 6));
          v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
          if (v147 + v124 >= 0x81)
          {
            v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v128);
          }
        }

        else
        {
          v112 = 1;
          v144 = v125;
        }

        v150 = vshlq_u64(v128, v135);
        v151 = vuzp1q_s32(vzip1q_s64(v128, v150), vzip2q_s64(v128, v150));
        v152 = vshlq_u32(v151, v138);
        v153 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v151, v152), vzip2q_s32(v151, v152)), v142), v141);
        v431 = v153;
        v154 = v144 + v124;
        if (v422.i64[0])
        {
          v155 = v422.i64[0] >= v154;
        }

        else
        {
          v155 = 1;
        }

        v156 = v155;
        v157 = 0uLL;
        if (v124 <= 0x80 && v156)
        {
          v158 = v144 & 0x3F;
          v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v123));
          v160 = (v110 + 8 * (v144 >> 6));
          v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
          if (v158 + v124 >= 0x81)
          {
            v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
          }
        }

        else
        {
          v112 = 1;
          v154 = v144;
          v161 = 0uLL;
        }

        v162 = vshlq_u64(v161, v135);
        v163 = vuzp1q_s32(vzip1q_s64(v161, v162), vzip2q_s64(v161, v162));
        v164 = vshlq_u32(v163, v138);
        v165 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v163, v164), vzip2q_s32(v163, v164)), v142), v141);
        v432 = v165;
        v166 = vmovl_u16(*&vpaddq_s16(v448, v448));
        v167 = vpaddq_s32(v166, v166).u64[0];
        v168.i64[0] = v167;
        v168.i64[1] = HIDWORD(v167);
        v169 = v168;
        v170 = vaddvq_s64(v168);
        v171 = v170;
        v172 = v154 + v170;
        if (v422.i64[0])
        {
          v173 = v422.i64[0] >= v172;
        }

        else
        {
          v173 = 1;
        }

        v174 = v173;
        if (v170 <= 0x80 && v174)
        {
          v175 = v154 & 0x3F;
          v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v169));
          v177 = (v110 + 8 * (v154 >> 6));
          v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
          if (v175 + v171 >= 0x81)
          {
            v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v157);
          }
        }

        else
        {
          v112 = 1;
          v172 = v154;
        }

        v178 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
        v179.i64[0] = v178.u32[0];
        v179.i64[1] = v178.u32[1];
        v180 = vnegq_s64(v179);
        v181 = vshlq_u64(v157, v180);
        v182 = vuzp1q_s32(vzip1q_s64(v157, v181), vzip2q_s64(v157, v181));
        v183.i64[0] = 0xFFFF0000FFFFLL;
        v183.i64[1] = 0xFFFF0000FFFFLL;
        v184 = vnegq_s32(vandq_s8(v448, v183));
        v185 = vshlq_u32(v182, v184);
        v186 = vuzp1q_s16(vzip1q_s32(v182, v185), vzip2q_s32(v182, v185));
        v185.i64[0] = 0xF000F000F000FLL;
        v185.i64[1] = 0xF000F000F000FLL;
        v187 = vaddq_s16(v448, v185);
        v185.i64[0] = 0x10001000100010;
        v185.i64[1] = 0x10001000100010;
        v188 = vsubq_s16(v185, v448);
        v189 = vshlq_s16(vshlq_s16(v186, v188), v187);
        v433 = v189;
        v190 = v172 + v171;
        if (v422.i64[0])
        {
          v191 = v422.i64[0] >= v190;
        }

        else
        {
          v191 = 1;
        }

        v192 = v191;
        v193 = 0uLL;
        if (v171 <= 0x80 && v192)
        {
          v194 = v172 & 0x3F;
          v195 = vaddq_s64(vdupq_n_s64(v194), vzip1q_s64(0, v169));
          v196 = (v110 + 8 * (v172 >> 6));
          v197 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v196, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v195)), vshlq_u64(vdupq_lane_s64(v196->i64[0], 0), vnegq_s64(v195)));
          if (v194 + v171 >= 0x81)
          {
            v197 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v196[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v195)), vshlq_u64(vdupq_laneq_s64(v196[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v195))), v197);
          }
        }

        else
        {
          v112 = 1;
          v190 = v172;
          v197 = 0uLL;
        }

        v198 = vshlq_u64(v197, v180);
        v199 = vuzp1q_s32(vzip1q_s64(v197, v198), vzip2q_s64(v197, v198));
        v200 = vshlq_u32(v199, v184);
        v201 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v199, v200), vzip2q_s32(v199, v200)), v188), v187);
        v434 = v201;
        v202 = v190 + v171;
        if (v422.i64[0])
        {
          v203 = v422.i64[0] >= v202;
        }

        else
        {
          v203 = 1;
        }

        v204 = v203;
        if (v171 <= 0x80 && v204)
        {
          v205 = v190 & 0x3F;
          v206 = vaddq_s64(vdupq_n_s64(v205), vzip1q_s64(0, v169));
          v207 = (v110 + 8 * (v190 >> 6));
          v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v207, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v206)), vshlq_u64(vdupq_lane_s64(v207->i64[0], 0), vnegq_s64(v206)));
          if (v205 + v171 >= 0x81)
          {
            v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v207[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v206)), vshlq_u64(vdupq_laneq_s64(v207[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v206))), v193);
          }
        }

        else
        {
          v112 = 1;
          v202 = v190;
        }

        v208 = vshlq_u64(v193, v180);
        v209 = vuzp1q_s32(vzip1q_s64(v193, v208), vzip2q_s64(v193, v208));
        v210 = vshlq_u32(v209, v184);
        v211 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v209, v210), vzip2q_s32(v209, v210)), v188), v187);
        v435 = v211;
        v212 = v202 + v171;
        if (v422.i64[0])
        {
          v213 = v422.i64[0] >= v212;
        }

        else
        {
          v213 = 1;
        }

        v214 = v213;
        v215 = 0uLL;
        if (v171 <= 0x80 && v214)
        {
          v216 = v202 & 0x3F;
          v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v169));
          v218 = (v110 + 8 * (v202 >> 6));
          v219 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
          if (v216 + v171 >= 0x81)
          {
            v219 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v219);
          }
        }

        else
        {
          v112 = 1;
          v212 = v202;
          v219 = 0uLL;
        }

        v220 = vshlq_u64(v219, v180);
        v221 = vuzp1q_s32(vzip1q_s64(v219, v220), vzip2q_s64(v219, v220));
        v222 = vshlq_u32(v221, v184);
        v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v221, v222), vzip2q_s32(v221, v222)), v188), v187);
        v436 = v223;
        v224 = vmovl_u16(*&vpaddq_s16(v449, v449));
        v225 = vpaddq_s32(v224, v224).u64[0];
        v226.i64[0] = v225;
        v226.i64[1] = HIDWORD(v225);
        v227 = v226;
        v228 = vaddvq_s64(v226);
        v229 = v228;
        v230 = v212 + v228;
        if (v422.i64[0])
        {
          v231 = v422.i64[0] >= v230;
        }

        else
        {
          v231 = 1;
        }

        v232 = v231;
        if (v228 <= 0x80 && v232)
        {
          v233 = v212 & 0x3F;
          v234 = vaddq_s64(vdupq_n_s64(v233), vzip1q_s64(0, v227));
          v235 = (v110 + 8 * (v212 >> 6));
          v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v235, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v234)), vshlq_u64(vdupq_lane_s64(v235->i64[0], 0), vnegq_s64(v234)));
          if (v233 + v229 >= 0x81)
          {
            v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v235[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v234)), vshlq_u64(vdupq_laneq_s64(v235[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v234))), v215);
          }
        }

        else
        {
          v112 = 1;
          v230 = v212;
        }

        v236 = vzip1_s32(*v224.i8, *&vextq_s8(v224, v224, 8uLL));
        v237.i64[0] = v236.u32[0];
        v237.i64[1] = v236.u32[1];
        v238 = vnegq_s64(v237);
        v239 = vshlq_u64(v215, v238);
        v240 = vuzp1q_s32(vzip1q_s64(v215, v239), vzip2q_s64(v215, v239));
        v241.i64[0] = 0xFFFF0000FFFFLL;
        v241.i64[1] = 0xFFFF0000FFFFLL;
        v242 = vnegq_s32(vandq_s8(v449, v241));
        v243 = vshlq_u32(v240, v242);
        v244 = vuzp1q_s16(vzip1q_s32(v240, v243), vzip2q_s32(v240, v243));
        v243.i64[0] = 0xF000F000F000FLL;
        v243.i64[1] = 0xF000F000F000FLL;
        v245 = vaddq_s16(v449, v243);
        v243.i64[0] = 0x10001000100010;
        v243.i64[1] = 0x10001000100010;
        v246 = vsubq_s16(v243, v449);
        v247 = vshlq_s16(vshlq_s16(v244, v246), v245);
        v437 = v247;
        v248 = v230 + v229;
        if (v422.i64[0])
        {
          v249 = v422.i64[0] >= v248;
        }

        else
        {
          v249 = 1;
        }

        v250 = v249;
        v251 = 0uLL;
        if (v229 <= 0x80 && v250)
        {
          v252 = v230 & 0x3F;
          v253 = vaddq_s64(vdupq_n_s64(v252), vzip1q_s64(0, v227));
          v254 = (v110 + 8 * (v230 >> 6));
          v255 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v254, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v253)), vshlq_u64(vdupq_lane_s64(v254->i64[0], 0), vnegq_s64(v253)));
          if (v252 + v229 >= 0x81)
          {
            v255 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v254[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v253)), vshlq_u64(vdupq_laneq_s64(v254[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v253))), v255);
          }
        }

        else
        {
          v112 = 1;
          v248 = v230;
          v255 = 0uLL;
        }

        v256 = vshlq_u64(v255, v238);
        v257 = vuzp1q_s32(vzip1q_s64(v255, v256), vzip2q_s64(v255, v256));
        v258 = vshlq_u32(v257, v242);
        v259 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v257, v258), vzip2q_s32(v257, v258)), v246), v245);
        v438 = v259;
        v260 = v248 + v229;
        if (v422.i64[0])
        {
          v261 = v422.i64[0] >= v260;
        }

        else
        {
          v261 = 1;
        }

        v262 = v261;
        if (v229 <= 0x80 && v262)
        {
          v263 = v248 & 0x3F;
          v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v227));
          v265 = (v110 + 8 * (v248 >> 6));
          v251 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
          if (v263 + v229 >= 0x81)
          {
            v251 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v251);
          }
        }

        else
        {
          v112 = 1;
          v260 = v248;
        }

        v266 = vshlq_u64(v251, v238);
        v267 = vuzp1q_s32(vzip1q_s64(v251, v266), vzip2q_s64(v251, v266));
        v268 = vshlq_u32(v267, v242);
        v269 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v267, v268), vzip2q_s32(v267, v268)), v246), v245);
        v439 = v269;
        v270 = v260 + v229;
        if (v422.i64[0])
        {
          v271 = v422.i64[0] >= v270;
        }

        else
        {
          v271 = 1;
        }

        v272 = v271;
        v273 = 0uLL;
        if (v229 <= 0x80 && v272)
        {
          v274 = v260 & 0x3F;
          v275 = vaddq_s64(vdupq_n_s64(v274), vzip1q_s64(0, v227));
          v276 = (v110 + 8 * (v260 >> 6));
          v277 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v275)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v275)));
          if (v274 + v229 >= 0x81)
          {
            v277 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v275)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v275))), v277);
          }
        }

        else
        {
          v112 = 1;
          v270 = v260;
          v277 = 0uLL;
        }

        v278 = vshlq_u64(v277, v238);
        v279 = vuzp1q_s32(vzip1q_s64(v277, v278), vzip2q_s64(v277, v278));
        v280 = vshlq_u32(v279, v242);
        v281 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v279, v280), vzip2q_s32(v279, v280)), v246), v245);
        v440 = v281;
        v282 = vmovl_u16(*&vpaddq_s16(v450, v450));
        v283 = vpaddq_s32(v282, v282).u64[0];
        v284.i64[0] = v283;
        v284.i64[1] = HIDWORD(v283);
        v285 = v284;
        v286 = vaddvq_s64(v284);
        v287 = v286;
        v288 = v270 + v286;
        if (v422.i64[0])
        {
          v289 = v422.i64[0] >= v288;
        }

        else
        {
          v289 = 1;
        }

        v290 = v289;
        if (v286 <= 0x80 && v290)
        {
          v291 = v270 & 0x3F;
          v292 = vaddq_s64(vdupq_n_s64(v291), vzip1q_s64(0, v285));
          v293 = (v110 + 8 * (v270 >> 6));
          v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v293, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v292)), vshlq_u64(vdupq_lane_s64(v293->i64[0], 0), vnegq_s64(v292)));
          if (v291 + v287 >= 0x81)
          {
            v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v293[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v292)), vshlq_u64(vdupq_laneq_s64(v293[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v292))), v273);
          }
        }

        else
        {
          v112 = 1;
          v288 = v270;
        }

        v294 = vzip1_s32(*v282.i8, *&vextq_s8(v282, v282, 8uLL));
        v295.i64[0] = v294.u32[0];
        v295.i64[1] = v294.u32[1];
        v296 = vnegq_s64(v295);
        v297 = vshlq_u64(v273, v296);
        v298 = vuzp1q_s32(vzip1q_s64(v273, v297), vzip2q_s64(v273, v297));
        v297.i64[0] = 0xFFFF0000FFFFLL;
        v297.i64[1] = 0xFFFF0000FFFFLL;
        v299 = vnegq_s32(vandq_s8(v450, v297));
        v300 = vshlq_u32(v298, v299);
        v301 = vuzp1q_s16(vzip1q_s32(v298, v300), vzip2q_s32(v298, v300));
        v298.i64[0] = 0xF000F000F000FLL;
        v298.i64[1] = 0xF000F000F000FLL;
        v302 = vaddq_s16(v450, v298);
        v300.i64[0] = 0x10001000100010;
        v300.i64[1] = 0x10001000100010;
        v303 = vsubq_s16(v300, v450);
        v304 = vshlq_s16(vshlq_s16(v301, v303), v302);
        v441 = v304;
        v305 = v288 + v287;
        if (v422.i64[0])
        {
          v306 = v422.i64[0] >= v305;
        }

        else
        {
          v306 = 1;
        }

        v307 = v306;
        v308 = 0uLL;
        if (v287 <= 0x80 && v307)
        {
          v309 = v288 & 0x3F;
          v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v285));
          v311 = (v110 + 8 * (v288 >> 6));
          v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
          if (v309 + v287 >= 0x81)
          {
            v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v312);
          }
        }

        else
        {
          v112 = 1;
          v305 = v288;
          v312 = 0uLL;
        }

        v313 = vshlq_u64(v312, v296);
        v314 = vuzp1q_s32(vzip1q_s64(v312, v313), vzip2q_s64(v312, v313));
        v315 = vshlq_u32(v314, v299);
        v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v314, v315), vzip2q_s32(v314, v315)), v303), v302);
        v442 = v316;
        v317 = v305 + v287;
        if (v422.i64[0])
        {
          v318 = v422.i64[0] >= v317;
        }

        else
        {
          v318 = 1;
        }

        v319 = v318;
        if (v287 <= 0x80 && v319)
        {
          v320 = v305 & 0x3F;
          v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v285));
          v322 = (v110 + 8 * (v305 >> 6));
          v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
          if (v320 + v287 >= 0x81)
          {
            v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v308);
          }
        }

        else
        {
          v112 = 1;
          v317 = v305;
        }

        v323 = vshlq_u64(v308, v296);
        v324 = vuzp1q_s32(vzip1q_s64(v308, v323), vzip2q_s64(v308, v323));
        v325 = vshlq_u32(v324, v299);
        v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v324, v325), vzip2q_s32(v324, v325)), v303), v302);
        v443 = v326;
        v327 = v317 + v287;
        if (v422.i64[0])
        {
          v328 = v422.i64[0] >= v327;
        }

        else
        {
          v328 = 1;
        }

        v329 = v328;
        if (v287 > 0x80 || !v329)
        {
          goto LABEL_242;
        }

        v330 = vaddq_s64(vdupq_n_s64(v317 & 0x3F), vzip1q_s64(0, v285));
        v331 = (v110 + 8 * (v317 >> 6));
        v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
        if ((v317 & 0x3F) + v287 >= 0x81)
        {
          v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
        }

        if ((v112 & 1) != 0 || v422.i64[0] + 8 * result - v327 - 896 >= 9 || v95 == 2)
        {
LABEL_242:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
          return 0;
        }

        else
        {
          v333 = vshlq_u64(v332, v296);
          v334 = vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333));
          v335 = vshlq_u32(v334, v299);
          v336 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v303), v302);
          v337 = vaddq_s16(vandq_s8(v94, v62), v121);
          v338 = vdupq_lane_s64(v94.i64[0], 0);
          v339 = vandq_s8(v62, v338);
          v340 = vsubq_s16(v337, v339);
          v341 = vsubq_s16(v143, v339);
          v342 = vsubq_s16(v153, v339);
          v343 = vsubq_s16(v165, v339);
          v344 = vandq_s8(v61, v338);
          v345 = vsubq_s16(v189, v344);
          v346 = vsubq_s16(v201, v344);
          v347 = vsubq_s16(v211, v344);
          v348 = vsubq_s16(v223, v344);
          v349 = vandq_s8(v60, v338);
          v350 = vsubq_s16(v247, v349);
          v351 = vsubq_s16(v259, v349);
          v352 = vsubq_s16(v269, v349);
          v353 = vsubq_s16(v281, v349);
          v354 = vandq_s8(v59, v338);
          v355 = vsubq_s16(v304, v354);
          v429 = v337;
          v356 = vsubq_s16(v316, v354);
          v357 = vsubq_s16(v326, v354);
          v441 = v355;
          v442 = v356;
          v358 = vsubq_s16(v336, v354);
          v443 = v357;
          v444 = v358;
          v359.i64[0] = 0x1000100010001;
          v359.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v41, v359)))
          {
            v360 = vnegq_s16(vandq_s8(v446, v359));
            v361.i64[0] = v343.i64[0];
            v362.i64[1] = v340.i64[1];
            v361.i64[1] = v340.i64[0];
            v362.i64[0] = v343.i64[1];
            v363 = vbslq_s8(v360, v362, v340);
            v364 = vbslq_s8(v360, v361, v343);
            v362.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v362.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v365 = vandq_s8(vqtbl4q_s8(*(&v341 - 1), v362), v360);
            v459.val[0] = vaddq_s16(v363, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10B0), v360));
            v459.val[1] = vaddq_s16(v341, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10C0), v360));
            v459.val[2] = vaddq_s16(v342, v365);
            v459.val[3] = vaddq_s16(v364, v365);
            v366 = vandq_s8(vqtbl4q_s8(v459, v362), v360);
            v340 = vaddq_s16(v459.val[0], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10D0), v360));
            v341 = vaddq_s16(v459.val[1], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10E0), v360));
            v429 = v340;
            v430 = v341;
            v342 = vaddq_s16(v459.val[2], v366);
            v343 = vaddq_s16(v459.val[3], v366);
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v360), v345);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10F0), v360), v346);
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, v362), v360), v347);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1100), v360), v348);
            v367 = vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F10D0), v360);
            v368 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v345 = vaddq_s16(v367, v458.val[0]);
            v346 = vaddq_s16(v458.val[1], v367);
            v347 = vaddq_s16(v458.val[2], v368);
            v348 = vaddq_s16(v458.val[3], v368);
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0EB0), v360), v350);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0FB0), v360), v351);
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10B0), v360), v352);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10C0), v360), v353);
            v369 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v350 = vaddq_s16(v458.val[0], v369);
            v351 = vaddq_s16(v458.val[1], v369);
            v352 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
            v353 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1110), v360));
            v459.val[0] = v441;
            v459.val[1] = v442;
            v40 = v446;
            v459.val[2] = v443;
            v459.val[3] = v444;
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F0EB0), v360), v441);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F1120), v360), v442);
            v431 = v342;
            v432 = v343;
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10B0), v360), v443);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10C0), v360), v444);
            v370 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v355 = vaddq_s16(v458.val[0], v370);
            v356 = vaddq_s16(v458.val[1], v370);
            v357 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
            v358 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1130), v360));
          }

          v371 = vaddq_s16(v445, v340);
          v372 = vaddq_s16(v341, v445);
          v373 = vaddq_s16(v342, v445);
          v374 = vaddq_s16(v343, v445);
          v375 = vaddq_s16(v345, v445);
          v376 = vaddq_s16(v346, v445);
          v377 = vaddq_s16(v347, v445);
          v378 = vaddq_s16(v348, v445);
          v379 = vaddq_s16(v350, v445);
          v380 = vaddq_s16(v351, v445);
          v381 = vaddq_s16(v352, v445);
          v382 = vaddq_s16(v353, v445);
          v383 = vaddq_s16(v355, v445);
          v384 = vaddq_s16(v356, v445);
          v385 = vaddq_s16(v357, v445);
          v386 = vaddq_s16(v358, v445);
          v387.i64[0] = 0x10001000100010;
          v387.i64[1] = 0x10001000100010;
          v388 = vceqzq_s16(vandq_s8(v40, v387));
          v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v388), v371);
          v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v388), v372);
          v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v388), v373);
          v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v388), v374);
          v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v388), v375);
          v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v388), v376);
          v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v388), v377);
          v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v388), v378);
          v397 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v388), v379);
          v398 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v388), v380);
          v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1270), v388), v381);
          v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1270), v388), v382);
          v401 = vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v388);
          v402 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1270), v388), v383);
          v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1270), v388), v384);
          v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1270), v388), v385);
          v405 = vaddq_s16(v401, v386);
          __asm { FMOV            V6.4S, #1.875 }

          v384.i64[0] = 0xC0000000C0000000;
          v384.i64[1] = 0xC0000000C0000000;
          v410 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
          v411 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
          v412 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
          v413 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
          v414 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v397, 0x12uLL), v398, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v397, 0xCuLL), v398, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v397, 6uLL), v398, 6uLL), vuzp1q_s32(v397, v398))));
          v415 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v399, 0x12uLL), v400, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v399, 0xCuLL), v400, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v399, 6uLL), v400, 6uLL), vuzp1q_s32(v399, v400))));
          v416 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v402, 0x12uLL), v403, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v402, 0xCuLL), v403, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v402, 6uLL), v403, 6uLL), vuzp1q_s32(v402, v403))));
          v417 = (a1 + a2);
          *a1 = vzip1q_s64(v410, v411);
          *(a1 + 16) = vzip1q_s64(v414, v415);
          v418 = (a1 + 2 * a2);
          *v417 = vzip2q_s64(v410, v411);
          v417[1] = vzip2q_s64(v414, v415);
          v419 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v404, 0x12uLL), v405, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v404, 0xCuLL), v405, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v404, 6uLL), v405, 6uLL), vuzp1q_s32(v404, v405))));
          *v418 = vzip1q_s64(v412, v413);
          v418[1] = vzip1q_s64(v416, v419);
          v420 = (v418 + a2);
          *v420 = vzip2q_s64(v412, v413);
          v420[1] = vzip2q_s64(v416, v419);
        }
      }
    }

    else
    {
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v421, a5);
      }

      v429 = v421;
      v430 = v423;
      v433 = v422;
      v434 = v424;
      v437 = v425;
      v438 = v427;
      v441 = v426;
      v442 = v428;
      v18 = a3 + 28;
      if ((v7 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v18, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v18, &v421, a5);
      }

      v431 = v421;
      v432 = v423;
      v435 = v422;
      v436 = v424;
      v439 = v425;
      v440 = v427;
      v443 = v426;
      v444 = v428;
      v19 = a3 + 56;
      if ((v7 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v19, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v19, &v421, a5);
      }

      v445 = v421;
      v446 = v423;
      v449 = v422;
      v450 = v424;
      v452 = v425;
      v453 = v427;
      *v456 = v426;
      *&v456[2] = v428;
      v20 = a3 + 84;
      if ((v7 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v421, a5);
      }

      v447 = v421;
      v448 = v423;
      v451[0] = v422;
      v451[1] = v424;
      v454 = v425;
      v455 = v427;
      v21 = (a1 + 16);
      v22 = -64;
      *&v456[4] = v426;
      *&v456[6] = v428;
      do
      {
        v23 = v437.i32[v22 / 4] & 0x3FF | ((v437.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v437.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v437.i32[v22 / 4 + 3] << 30);
        *(v21 - 4) = v433.i32[v22 / 4] & 0x3FF | ((v433.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v433.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v433.i32[v22 / 4 + 3] << 30);
        *(v21 - 3) = v23;
        v24 = v445.i32[v22 / 4] & 0x3FF | ((v445.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v445.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v445.i32[v22 / 4 + 3] << 30);
        *(v21 - 2) = v441.i32[v22 / 4] & 0x3FF | ((v441.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v441.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v441.i32[v22 / 4 + 3] << 30);
        *(v21 - 1) = v24;
        v25 = v452.i32[v22 / 4] & 0x3FF | ((v452.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v452.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v452.i32[v22 / 4 + 3] << 30);
        *v21 = v449.i32[v22 / 4] & 0x3FF | ((v449.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v449.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v449.i32[v22 / 4 + 3] << 30);
        v21[1] = v25;
        v26 = v456[v22 / 8 + 8] & 0x3FF | ((HIDWORD(v456[v22 / 8 + 8]) & 0x3FF) << 10) & 0xC00FFFFF | ((*(&v457 + v22) & 0x3FF) << 20) | (*(&v457 + v22 + 4) << 30);
        v21[2] = v456[v22 / 8] & 0x3FF | ((HIDWORD(v456[v22 / 8]) & 0x3FF) << 10) & 0xC00FFFFF | ((v456[v22 / 8 + 1] & 0x3FF) << 20) | (HIDWORD(v456[v22 / 8 + 1]) << 30);
        v21[3] = v26;
        v21 = (v21 + a2);
        v22 += 16;
      }

      while (v22);
      return 112;
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    *v13 = 0u;
    v13[1] = 0u;
  }

  return result;
}