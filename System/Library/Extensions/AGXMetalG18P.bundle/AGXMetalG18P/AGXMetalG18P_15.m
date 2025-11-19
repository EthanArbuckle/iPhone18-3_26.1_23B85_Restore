uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v387 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1->f64 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1->f64 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1->f64 + 2 * a2 + a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v383, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v383, a5);
    }

    v374 = v385;
    v376 = v383;
    v378 = v386;
    v380 = v384;
    v18 = a3 + 32;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v383, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v383, a5);
    }

    v366 = v385;
    v368 = v383;
    v370 = v386;
    v372 = v384;
    v59 = a3 + 64;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v59, &v383, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v59, &v383, a5);
    }

    v355 = v385;
    v357 = v383;
    v360 = v386;
    v363 = v384;
    v60 = a3 + 96;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v60, &v383, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v60, &v383, a5);
    }

    v61 = (a1->f64 + a2);
    v62 = (a1 + a2 + a2);
    v63 = (v62->f64 + a2);
    v65 = v383;
    v64 = v384;
    v67 = v385;
    v66 = v386;
    *a1 = v376;
    a1[1] = v374;
    a1[2] = v357;
    a1[3] = v355;
    *v61 = v380;
    v61[1] = v378;
    v61[2] = v363;
    v61[3] = v360;
    *v62 = v368;
    v62[1] = v366;
    v62[2] = v65;
    v62[3] = v67;
    *v63 = v372;
    v63[1] = v370;
    v10 = 128;
    v63[2] = v64;
    v63[3] = v66;
    return v10;
  }

  if (a4 == 7)
  {
    v14 = vld1q_dup_f64(a3);
    *a1 = v14;
    a1[1] = v14;
    a1[2] = v14;
    a1[3] = v14;
    v15 = (a1 + a2);
    *v15 = v14;
    v15[1] = v14;
    v15[2] = v14;
    v15[3] = v14;
    v16 = (a1 + 2 * a2);
    *v16 = v14;
    v16[1] = v14;
    v16[2] = v14;
    v16[3] = v14;
    v17 = (a1 + 2 * a2 + a2);
    *v17 = v14;
    v17[1] = v14;
    v10 = 8;
LABEL_153:
    v17[2] = v14;
    v17[3] = v14;
    return v10;
  }

  v19 = 8 * (a3 & 7);
  v20 = a3 & 0xFFFFFFFFFFFFFFF8;
  v21 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v19;
  if (v19 >= 0x2D)
  {
    v21 |= *(v20 + 8) << (-8 * (a3 & 7u));
  }

  v22 = (8 * (a3 & 7)) | 0x400;
  v23.i32[0] = v21;
  v23.i32[1] = (v21 >> 5) & 0x7FFF;
  *v24.i8 = vand_s8(v23, 0x1F0000001FLL);
  v25 = v19 + 84;
  v381 = *v24.i8;
  v24.i64[1] = v24.i64[0];
  v26.i64[0] = 0xFFFF0000FFFFLL;
  v26.i64[1] = 0xFFFF0000FFFFLL;
  v27 = vandq_s8(v24, v26);
  v26.i16[0] = (v21 >> 10) & 0x1F;
  v26.i16[1] = (v21 >> 15) & 0x1F;
  v26.i32[1] = v26.i32[0];
  v28 = vmovl_u16(vadd_s16(*v26.i8, 0x1000100010001));
  v29 = *&v27 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v30.i64[0] = 0x300000003;
  v30.i64[1] = 0x300000003;
  v31 = vbicq_s8(v28, vceqq_s32((*&v27 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v30));
  v30.i64[0] = 0x404040404040404;
  v30.i64[1] = 0x404040404040404;
  v32 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v27 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v30);
  if (vmaxvq_s8(v32) < 1)
  {
    v41 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v375 = v68;
    v377 = v68;
    v57 = v31;
    v56 = v31;
    v55 = v31;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v54 = v31;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v379 = v69;
  }

  else
  {
    v33 = vmovl_u8(*&vpaddq_s8(v32, v32));
    v34 = vmovl_u16(*&vpaddq_s16(v33, v33));
    v35 = vpaddq_s32(v34, v34).u64[0];
    v36.i64[0] = v35;
    v36.i64[1] = HIDWORD(v35);
    v37 = v36;
    v38 = vaddvq_s64(v36);
    v39 = v25 + v38;
    v40 = v38 <= 0x80 && v22 >= v39;
    v41 = !v40;
    v42 = 0uLL;
    if (v40)
    {
      v43 = v25 & 0x3C;
      v44 = vaddq_s64(vdupq_n_s64(v43), vzip1q_s64(0, v37));
      v45 = (v20 + ((v25 >> 3) & 0x18));
      v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v45, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v45->i64[0], 0), vnegq_s64(v44)));
      if (v43 + v38 >= 0x81)
      {
        v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v45[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v45[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v42);
      }

      v25 = v39;
    }

    v46 = vzip1_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
    v47.i64[0] = v46.u32[0];
    v47.i64[1] = v46.u32[1];
    v48 = vshlq_u64(v42, vnegq_s64(v47));
    v49 = vuzp1q_s32(vzip1q_s64(v42, v48), vzip2q_s64(v42, v48));
    v50 = vshlq_u32(v49, vnegq_s32((*&v33 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v51 = vuzp1q_s16(vzip1q_s32(v49, v50), vzip2q_s32(v49, v50));
    v49.i64[0] = 0x101010101010101;
    v49.i64[1] = 0x101010101010101;
    *v52.i8 = vand_s8(vadd_s8(*&vshlq_s8(v49, v32), -1), vmovn_s16(vzip1q_s16(v51, vshlq_u16(v51, vnegq_s16(vmovl_u8(vuzp1_s8(*v32.i8, v23)))))));
    v52.i64[1] = v52.i64[0];
    *v52.i8 = vqtbl1_s8(v52, 0x703060205010400);
    v51.i64[0] = vmovl_s8(vdup_lane_s16(*v52.i8, 0)).u64[0];
    v49.i64[0] = vmovl_s8(vdup_lane_s16(*v52.i8, 1)).u64[0];
    v53 = vmovl_s8(vdup_lane_s16(*v52.i8, 2)).u64[0];
    v52.i64[0] = vmovl_s8(vdup_lane_s16(*v52.i8, 3)).u64[0];
    v54 = vsubw_s16(v31, *v51.i8);
    v55 = vsubw_s16(v31, *v49.i8);
    v56 = vsubw_s16(v31, v53);
    v57 = vsubw_s16(v31, *v52.i8);
    v377 = vmovl_s16(vceqz_s16(*v51.i8));
    v379 = vmovl_s16(vceqz_s16(*v49.i8));
    v58 = vmovl_s16(vceqz_s16(v53));
    v375 = vmovl_s16(vceqz_s16(*v52.i8));
  }

  v70.i64[0] = 0x800000008;
  v70.i64[1] = 0x800000008;
  v71 = 0uLL;
  v72 = vandq_s8(vextq_s8(vtstq_s32(v27, v70), 0, 8uLL), v31);
  v70.i64[0] = vpaddq_s32(v72, v72).u64[0];
  v73.i64[0] = v70.u32[0];
  v73.i64[1] = v70.u32[1];
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v25 + v75;
  if (v75 <= 0x80 && v22 >= v76)
  {
    v78 = v25 & 0x3F;
    v79 = vaddq_s64(vdupq_n_s64(v78), vzip1q_s64(0, v74));
    v80 = (v20 + 8 * (v25 >> 6));
    v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v79)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v79)));
    if (v78 + v75 >= 0x81)
    {
      v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v79)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v79))), v71);
    }

    v25 = v76;
  }

  else
  {
    v41 = 1;
  }

  v81 = v381.i8[0] & 3;
  if (v81 == 2)
  {
    v82 = v25 + 32;
    if (v22 >= v25 + 16)
    {
      v25 += 16;
    }

    else
    {
      v41 = 1;
      v82 = v25 + 16;
    }

    if (v22 >= v82)
    {
      v25 = v82;
    }

    else
    {
      v41 = 1;
    }
  }

  v83 = 0uLL;
  v84 = vextq_s8(0, v54, 8uLL);
  v85 = vpaddq_s32(v84, v84).u64[0];
  v86.i64[0] = v85;
  v86.i64[1] = HIDWORD(v85);
  v87 = v86;
  v88 = vaddvq_s64(v86);
  v89 = v25 + v88;
  if (v88 <= 0x80 && v22 >= v89)
  {
    v92 = v25 & 0x3F;
    v93 = vaddq_s64(vdupq_n_s64(v92), vzip1q_s64(0, v87));
    v94 = (v20 + 8 * (v25 >> 6));
    v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v94, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v93)), vshlq_u64(vdupq_lane_s64(v94->i64[0], 0), vnegq_s64(v93)));
    if (v92 + v88 >= 0x81)
    {
      v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v94[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v93)), vshlq_u64(vdupq_laneq_s64(v94[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v93))), v91);
    }

    v25 = v89;
  }

  else
  {
    v41 = 1;
    v91 = 0uLL;
  }

  v95 = vpaddq_s32(v54, v54).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v25 + v98;
  if (v98 <= 0x80 && v22 >= v99)
  {
    v101 = v25 & 0x3F;
    v102 = vaddq_s64(vdupq_n_s64(v101), vzip1q_s64(0, v97));
    v103 = (v20 + 8 * (v25 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v102)));
    if (v101 + v98 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v83);
    }

    v25 = v99;
  }

  else
  {
    v41 = 1;
  }

  v104 = v25 + v98;
  v105 = 0uLL;
  if (v98 <= 0x80 && v22 >= v104)
  {
    v108 = v25 & 0x3F;
    v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v97));
    v110 = (v20 + 8 * (v25 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v108 + v98 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v25 = v104;
  }

  else
  {
    v41 = 1;
    v107 = 0uLL;
  }

  v111 = v25 + v98;
  if (v98 <= 0x80 && v22 >= v111)
  {
    v113 = v25 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v97));
    v115 = (v20 + 8 * (v25 >> 6));
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v98 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v105);
    }

    v25 = v111;
  }

  else
  {
    v41 = 1;
  }

  v116 = vpaddq_s32(v55, v55).u64[0];
  v117.i64[0] = v116;
  v117.i64[1] = HIDWORD(v116);
  v118 = v117;
  v119 = vaddvq_s64(v117);
  v120 = v25 + v119;
  v121 = 0uLL;
  if (v119 <= 0x80 && v22 >= v120)
  {
    v124 = v25 & 0x3F;
    v125 = vaddq_s64(vdupq_n_s64(v124), vzip1q_s64(0, v118));
    v126 = (v20 + 8 * (v25 >> 6));
    v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
    if (v124 + v119 >= 0x81)
    {
      v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v123);
    }

    v25 = v120;
  }

  else
  {
    v41 = 1;
    v123 = 0uLL;
  }

  v127 = v25 + v119;
  if (v119 <= 0x80 && v22 >= v127)
  {
    v129 = v25 & 0x3F;
    v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v118));
    v131 = (v20 + 8 * (v25 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if (v129 + v119 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v121);
    }

    v25 = v127;
  }

  else
  {
    v41 = 1;
  }

  v132 = 0uLL;
  if (v119 > 0x80 || (v133 = v25 + v119, v22 < v25 + v119))
  {
    v41 = 1;
    v133 = v25;
    v137 = 0uLL;
  }

  else
  {
    v134 = v25 & 0x3F;
    v135 = vaddq_s64(vdupq_n_s64(v134), vzip1q_s64(0, v118));
    v136 = (v20 + 8 * (v25 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v134 + v119 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v137);
    }
  }

  if (v119 > 0x80 || (v138 = v133 + v119, v22 < v133 + v119))
  {
    v141 = v54;
    v41 = 1;
    v138 = v133;
  }

  else
  {
    v139 = vaddq_s64(vdupq_n_s64(v133 & 0x3F), vzip1q_s64(0, v118));
    v140 = (v20 + 8 * (v133 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
    v141 = v54;
    if ((v133 & 0x3F) + v119 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v132);
    }
  }

  v142 = v56;
  v143 = vpaddq_s32(v56, v56).u64[0];
  v144.i64[0] = v143;
  v144.i64[1] = HIDWORD(v143);
  v145 = v144;
  v146 = vaddvq_s64(v144);
  v147 = v146;
  v148 = 0uLL;
  if (v146 > 0x80 || (v149 = v138 + v146, v22 < v138 + v146))
  {
    v41 = 1;
    v149 = v138;
    v152 = 0uLL;
  }

  else
  {
    v150 = vaddq_s64(vdupq_n_s64(v138 & 0x3F), vzip1q_s64(0, v145));
    v151 = (v20 + 8 * (v138 >> 6));
    v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if ((v138 & 0x3F) + v147 >= 0x81)
    {
      v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
    }
  }

  if (v147 > 0x80 || (v153 = v149 + v147, v22 < v149 + v147))
  {
    v41 = 1;
    v153 = v149;
  }

  else
  {
    v154 = vaddq_s64(vdupq_n_s64(v149 & 0x3F), vzip1q_s64(0, v145));
    v155 = (v20 + 8 * (v149 >> 6));
    v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v155, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v154)), vshlq_u64(vdupq_lane_s64(v155->i64[0], 0), vnegq_s64(v154)));
    if ((v149 & 0x3F) + v147 >= 0x81)
    {
      v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v155[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v154)), vshlq_u64(vdupq_laneq_s64(v155[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v154))), v148);
    }
  }

  v156 = 0uLL;
  if (v147 > 0x80 || (v157 = v153 + v147, v22 < v153 + v147))
  {
    v41 = 1;
    v157 = v153;
    v161 = 0uLL;
  }

  else
  {
    v158 = v153 & 0x3F;
    v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v145));
    v160 = (v20 + 8 * (v153 >> 6));
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
    if (v158 + v147 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }
  }

  if (v147 > 0x80 || (v162 = v157 + v147, v22 < v157 + v147))
  {
    v41 = 1;
    v162 = v157;
  }

  else
  {
    v163 = v157 & 0x3F;
    v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v145));
    v165 = (v20 + 8 * (v157 >> 6));
    v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
    if (v163 + v147 >= 0x81)
    {
      v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v156);
    }
  }

  v166 = vpaddq_s32(v57, v57).u64[0];
  v167.i64[0] = v166;
  v167.i64[1] = HIDWORD(v166);
  v168 = v167;
  v169 = vaddvq_s64(v167);
  v170 = v169;
  v171 = 0uLL;
  if (v169 > 0x80 || (v172 = v162 + v169, v22 < v162 + v169))
  {
    v41 = 1;
    v172 = v162;
    v176 = 0uLL;
  }

  else
  {
    v173 = v162 & 0x3F;
    v174 = vaddq_s64(vdupq_n_s64(v173), vzip1q_s64(0, v168));
    v175 = (v20 + 8 * (v162 >> 6));
    v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v175, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v175->i64[0], 0), vnegq_s64(v174)));
    if (v173 + v170 >= 0x81)
    {
      v176 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v175[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v175[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
    }
  }

  if (v170 > 0x80 || (v177 = v172 + v170, v22 < v172 + v170))
  {
    v41 = 1;
    v177 = v172;
  }

  else
  {
    v178 = v172 & 0x3F;
    v179 = vaddq_s64(vdupq_n_s64(v178), vzip1q_s64(0, v168));
    v180 = (v20 + 8 * (v172 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v180, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v179)), vshlq_u64(vdupq_lane_s64(v180->i64[0], 0), vnegq_s64(v179)));
    if (v178 + v170 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v180[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v179)), vshlq_u64(vdupq_laneq_s64(v180[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v179))), v171);
    }
  }

  v181 = 0uLL;
  if (v170 > 0x80 || (v182 = v177 + v170, v22 < v177 + v170))
  {
    v41 = 1;
    v182 = v177;
  }

  else
  {
    v183 = v177 & 0x3F;
    v184 = vaddq_s64(vdupq_n_s64(v183), vzip1q_s64(0, v168));
    v185 = (v20 + 8 * (v177 >> 6));
    v181 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v185, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v184)), vshlq_u64(vdupq_lane_s64(v185->i64[0], 0), vnegq_s64(v184)));
    if (v183 + v170 >= 0x81)
    {
      v181 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v185[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v184)), vshlq_u64(vdupq_laneq_s64(v185[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v184))), v181);
    }
  }

  if (v170 > 0x80 || v22 < v182 + v170)
  {
    goto LABEL_152;
  }

  v186 = v19 + 20;
  v187 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
  v188.i64[0] = v187.u32[0];
  v188.i64[1] = v187.u32[1];
  v189 = (v20 + ((v186 >> 3) & 8));
  v190 = vnegq_s64(v188);
  v191.i64[0] = 0x2000000020;
  v191.i64[1] = 0x2000000020;
  v192.i64[0] = 0x1F0000001FLL;
  v192.i64[1] = 0x1F0000001FLL;
  v193 = vsubq_s32(v191, v57);
  v194 = vaddq_s32(v57, v192);
  v195 = vaddq_s64(vdupq_n_s64(v182 & 0x3F), vzip1q_s64(0, v168));
  v196 = (v20 + 8 * (v182 >> 6));
  v197 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v196, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v195)), vshlq_u64(vdupq_lane_s64(v196->i64[0], 0), vnegq_s64(v195)));
  if ((v182 & 0x3F) + v170 < 0x81)
  {
    if ((v41 & 1) == 0)
    {
      v198 = v58;
      v202 = vshlq_u64(v197, v190);
      v201 = vuzp1q_s32(vzip1q_s64(v197, v202), vzip2q_s64(v197, v202));
      goto LABEL_150;
    }

LABEL_152:
    v10 = 0;
    *&v14.f64[0] = 0xFFFFFFFFLL;
    *&v14.f64[1] = 0xFFFFFFFFLL;
    *a1 = v14;
    a1[1] = v14;
    a1[2] = v14;
    a1[3] = v14;
    v204 = (a1 + a2);
    *v204 = v14;
    v204[1] = v14;
    v204[2] = v14;
    v204[3] = v14;
    v205 = (a1 + 2 * a2);
    *v205 = v14;
    v205[1] = v14;
    v205[2] = v14;
    v205[3] = v14;
    v17 = (a1 + 2 * a2 + a2);
    *v17 = v14;
    v17[1] = v14;
    goto LABEL_153;
  }

  if (v41)
  {
    goto LABEL_152;
  }

  v198 = v58;
  v199 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v196[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v195)), vshlq_u64(vdupq_laneq_s64(v196[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v195))), v197);
  v200 = vshlq_u64(v199, v190);
  v201 = vuzp1q_s32(vzip1q_s64(v199, v200), vzip2q_s64(v199, v200));
LABEL_150:
  v203 = vshlq_s32(vshlq_s32(v201, v193), v194);
  v10 = a4 + 1;
  if (v22 + 8 * v10 - (v182 + v170) - 1024 >= 9 || v81 == 2)
  {
    goto LABEL_152;
  }

  v346 = v27;
  v371 = v198;
  v373 = v203;
  v207 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
  v208.i64[0] = v207.u32[0];
  v208.i64[1] = v207.u32[1];
  v209 = vshlq_u64(v71, vnegq_s64(v208));
  v210 = vzip2q_s64(v71, v209);
  v364 = vzip1q_s64(v71, v209);
  v367 = v72;
  v211 = v84;
  *v209.i8 = vzip1_s32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
  v208.i64[0] = v209.u32[0];
  v208.i64[1] = v209.u32[1];
  v212 = vshlq_u64(v91, vnegq_s64(v208));
  v358 = vzip1q_s64(v91, v212);
  v361 = vzip2q_s64(v91, v212);
  v369 = v29;
  v213 = v141;
  v214 = vzip1_s32(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
  v208.i64[0] = v214.u32[0];
  v208.i64[1] = v214.u32[1];
  v215 = vnegq_s64(v208);
  v216 = vshlq_u64(v83, v215);
  v354 = vzip1q_s64(v83, v216);
  v356 = vzip2q_s64(v83, v216);
  v217 = vshlq_u64(v107, v215);
  v352 = vzip1q_s64(v107, v217);
  v353 = vzip2q_s64(v107, v217);
  v218 = vshlq_u64(v105, v215);
  v350 = vzip1q_s64(v105, v218);
  v351 = vzip2q_s64(v105, v218);
  v219 = vzip1_s32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  v208.i64[0] = v219.u32[0];
  v208.i64[1] = v219.u32[1];
  v220 = vnegq_s64(v208);
  v221 = vshlq_u64(v123, v220);
  v348 = vzip1q_s64(v123, v221);
  v349 = vzip2q_s64(v123, v221);
  v222 = vshlq_u64(v121, v220);
  v347 = vzip2q_s64(v121, v222);
  v223 = vzip1q_s64(v121, v222);
  v224 = vshlq_u64(v137, v220);
  v225 = vzip2q_s64(v137, v224);
  v226 = vzip1q_s64(v137, v224);
  v227 = vshlq_u64(v132, v220);
  v228 = vzip2q_s64(v132, v227);
  v229 = vzip1q_s64(v132, v227);
  v230 = v142;
  v231 = vzip1_s32(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
  v208.i64[0] = v231.u32[0];
  v208.i64[1] = v231.u32[1];
  v232 = vnegq_s64(v208);
  v233 = vshlq_u64(v152, v232);
  v234 = vzip2q_s64(v152, v233);
  v235 = vzip1q_s64(v152, v233);
  v236 = vshlq_u64(v148, v232);
  v237 = vzip2q_s64(v148, v236);
  v238 = vzip1q_s64(v148, v236);
  v239 = vshlq_u64(v161, v232);
  v240 = vzip2q_s64(v161, v239);
  v241 = vzip1q_s64(v161, v239);
  v242 = vshlq_u64(v156, v232);
  v243 = vzip2q_s64(v156, v242);
  v244 = vzip1q_s64(v156, v242);
  v245 = vshlq_u64(v176, v190);
  v246 = v55;
  v247 = vzip2q_s64(v176, v245);
  v248 = vzip1q_s64(v176, v245);
  v249 = vshlq_u64(v171, v190);
  v250 = vzip2q_s64(v171, v249);
  v251 = vzip1q_s64(v171, v249);
  v252 = vuzp1q_s32(v364, v210);
  v253 = vuzp1q_s32(v358, v361);
  v254 = vuzp1q_s32(v223, v347);
  v255 = vuzp1q_s32(v226, v225);
  v256 = vuzp1q_s32(v229, v228);
  v362 = vuzp1q_s32(v238, v237);
  v365 = vuzp1q_s32(v235, v234);
  v359 = vuzp1q_s32(v241, v240);
  v257 = vuzp1q_s32(v244, v243);
  v258 = vuzp1q_s32(v248, v247);
  v234.i64[0] = 0x2000000020;
  v234.i64[1] = 0x2000000020;
  v223.i64[0] = 0x1F0000001FLL;
  v223.i64[1] = 0x1F0000001FLL;
  v226.i64[0] = 0x2000000020;
  v226.i64[1] = 0x2000000020;
  v259 = vshlq_s32(v253, vsubq_s32(v226, v211));
  v260 = vsubq_s32(v226, v213);
  v244.i64[0] = 0x1F0000001FLL;
  v244.i64[1] = 0x1F0000001FLL;
  v261 = vaddq_s32(v211, v244);
  v262 = vaddq_s32(v213, v244);
  v244.i64[0] = 0x2000000020;
  v244.i64[1] = 0x2000000020;
  v263 = vsubq_s32(v244, v246);
  v238.i64[0] = 0x1F0000001FLL;
  v238.i64[1] = 0x1F0000001FLL;
  v264 = vaddq_s32(v246, v238);
  v265 = vshlq_s32(vuzp1q_s32(v348, v349), v263);
  v266 = vshlq_s32(v254, v263);
  v267 = vshlq_s32(v255, v263);
  v268 = vshlq_s32(v256, v263);
  v263.i64[0] = 0x2000000020;
  v263.i64[1] = 0x2000000020;
  v269 = vsubq_s32(v263, v230);
  v241.i64[0] = 0x1F0000001FLL;
  v241.i64[1] = 0x1F0000001FLL;
  v270 = vaddq_s32(v230, v241);
  v271 = vshlq_s32(v365, v269);
  v272 = vshlq_s32(v362, v269);
  v273 = vshlq_s32(v359, v269);
  v274 = vshlq_s32(v257, v269);
  v275 = vshlq_s32(vshlq_s32(v252, vsubq_s32(v234, v367)), vaddq_s32(v367, v223));
  v276 = vshlq_s32(v259, v261);
  v277 = vshlq_s32(vshlq_s32(vuzp1q_s32(v354, v356), v260), v262);
  v278 = vshlq_s32(vshlq_s32(vuzp1q_s32(v352, v353), v260), v262);
  v279 = vshlq_s32(vshlq_s32(vuzp1q_s32(v350, v351), v260), v262);
  v280 = vshlq_s32(v265, v264);
  v281 = vshlq_s32(v266, v264);
  v282 = vshlq_s32(v267, v264);
  v283 = vshlq_s32(v268, v264);
  v284 = vshlq_s32(v271, v270);
  v285 = vshlq_s32(v274, v270);
  v286 = vshlq_u64(v181, v190);
  v287 = vshlq_s32(vshlq_s32(v258, v193), v194);
  v288 = vshlq_s32(vshlq_s32(vuzp1q_s32(v251, v250), v193), v194);
  v289 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v181, v286), vzip2q_s64(v181, v286)), v193), v194);
  v290 = vaddq_s32(vandq_s8(v275, v377), v276);
  v291 = vdupq_lane_s64(v275.i64[0], 0);
  v292 = vandq_s8(v291, v379);
  v293 = vsubq_s32(v280, v292);
  v294 = vsubq_s32(v281, v292);
  v295 = vsubq_s32(v282, v292);
  v296 = vsubq_s32(v283, v292);
  v297 = vandq_s8(v291, v371);
  v298 = vsubq_s32(v284, v297);
  v299 = vsubq_s32(vshlq_s32(v272, v270), v297);
  v300 = vsubq_s32(vshlq_s32(v273, v270), v297);
  v301 = vandq_s8(v291, v377);
  v302 = vsubq_s32(v285, v297);
  v303 = vandq_s8(v291, v375);
  v304 = vsubq_s32(v287, v303);
  v305 = vsubq_s32(v288, v303);
  v306 = vsubq_s32(v289, v303);
  v307 = vsubq_s32(v373, v303);
  v308.i64[0] = 0x100000001;
  v308.i64[1] = 0x100000001;
  v309 = vsubq_s32(v277, v301);
  v310 = vsubq_s32(v278, v301);
  v311 = vuzp1_s16(v381, v381);
  v312 = vsubq_s32(v290, v301);
  v313 = vsubq_s32(v279, v301);
  v314 = vdupq_n_s64(((2 * v189[1]) << ~v186) | (*v189 >> v186));
  if (vaddvq_s32(vceqq_s32(v369, v308)))
  {
    v315 = vnegq_s32(vandq_s8(v346, v308));
    v316.i64[0] = v313.i64[0];
    v317.i64[1] = v312.i64[1];
    v316.i64[1] = v312.i64[0];
    v317.i64[0] = v313.i64[1];
    v318 = vbslq_s8(v315, v317, v312);
    v319 = vbslq_s8(v315, v316, v313);
    v320.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v320.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v321 = vandq_s8(vqtbl4q_s8(*(&v309 - 1), v320), v315);
    v382 = v311;
    v388.val[0] = vaddq_s32(v318, vandq_s8(vqtbl4q_s8(*(&v309 - 1), xmmword_29D2F10B0), v315));
    v388.val[1] = vaddq_s32(v309, vandq_s8(vqtbl4q_s8(*(&v309 - 1), xmmword_29D2F10C0), v315));
    v388.val[2] = vaddq_s32(v310, v321);
    v388.val[3] = vaddq_s32(v319, v321);
    v322 = vandq_s8(vqtbl4q_s8(v388, v320), v315);
    v312 = vaddq_s32(v388.val[0], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F10D0), v315));
    v309 = vaddq_s32(v388.val[1], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F10E0), v315));
    v310 = vaddq_s32(v388.val[2], v322);
    v313 = vaddq_s32(v388.val[3], v322);
    v389.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v293.i8, xmmword_29D2F10B0), v315), v293);
    v389.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v293.i8, xmmword_29D2F10F0), v315), v294);
    v389.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v293.i8, v320), v315), v295);
    v389.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v293.i8, xmmword_29D2F1100), v315), v296);
    v323 = vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F10D0), v315);
    v388.val[0] = vandq_s8(vqtbl4q_s8(v389, v320), v315);
    v293 = vaddq_s32(v323, v389.val[0]);
    v294 = vaddq_s32(v389.val[1], v323);
    v295 = vaddq_s32(v389.val[2], v388.val[0]);
    v296 = vaddq_s32(v389.val[3], v388.val[0]);
    v388.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F0EB0), v315), v298);
    v388.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F0FB0), v315), v299);
    v388.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F10B0), v315), v300);
    v388.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v298.i8, xmmword_29D2F10C0), v315), v302);
    v389.val[2] = vandq_s8(vqtbl4q_s8(v388, v320), v315);
    v298 = vaddq_s32(v388.val[0], v389.val[2]);
    v299 = vaddq_s32(v388.val[1], v389.val[2]);
    v300 = vaddq_s32(v388.val[2], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F0FE0), v315));
    v302 = vaddq_s32(v388.val[3], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F1110), v315));
    v324 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v304.i8, xmmword_29D2F0EB0), v315), v304);
    v388.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v304.i8, xmmword_29D2F1120), v315), v305);
    v388.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v304.i8, xmmword_29D2F10B0), v315), v306);
    v388.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v304.i8, xmmword_29D2F10C0), v315), v307);
    v325 = vandq_s8(vqtbl4q_s8(v388, v320), v315);
    v304 = vaddq_s32(v324, v325);
    v305 = vaddq_s32(v388.val[0], v325);
    v306 = vaddq_s32(v388.val[1], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F0FE0), v315));
    v307 = vaddq_s32(v388.val[2], vandq_s8(vqtbl4q_s8(v388, xmmword_29D2F1130), v315));
    v311 = v382;
  }

  v326 = vaddq_s32(v314, v312);
  v327 = vaddq_s32(v309, v314);
  v328 = vaddq_s32(v310, v314);
  v329 = vaddq_s32(v313, v314);
  v330 = vaddq_s32(v293, v314);
  v331 = vaddq_s32(v294, v314);
  v332 = vaddq_s32(v295, v314);
  v333 = vaddq_s32(v296, v314);
  v334 = vaddq_s32(v298, v314);
  v335 = vaddq_s32(v299, v314);
  v336 = vaddq_s32(v300, v314);
  v337 = vaddq_s32(v302, v314);
  v338 = vaddq_s32(v304, v314);
  v339 = vaddq_s32(v305, v314);
  v340 = vaddq_s32(v306, v314);
  v341 = vaddq_s32(v307, v314);
  v342 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v311 & 0xFF00FF00FF00FFLL)));
  v343 = (a1 + a2);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F11B0), v342), v326);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v328, xmmword_29D2F11B0), v342), v328);
  a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v342), v334);
  a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v342), v336);
  v344 = (a1 + 2 * a2);
  *v343 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v327, xmmword_29D2F11B0), v342), v327);
  v343[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v329, xmmword_29D2F11B0), v342), v329);
  v343[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v342), v335);
  v343[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v342), v337);
  *v344 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v330, xmmword_29D2F11B0), v342), v330);
  v344[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v342), v332);
  v344[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v338, xmmword_29D2F11B0), v342), v338);
  v344[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v340, xmmword_29D2F11B0), v342), v340);
  v345 = (v344 + a2);
  *v345 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v342), v331);
  v345[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v342), v333);
  v345[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v339, xmmword_29D2F11B0), v342), v339);
  v345[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v341, xmmword_29D2F11B0), v342), v341);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = 4 * a2;
  v15 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v15 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v8 - 4;
    }

    if (v9 >= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v18 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8;
    }

    if (v18 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v8 >= 5)
  {
    if (v15 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v18 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v8 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v26 = v8 - 12;
    if (!v9)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
  v11 += result;
  v26 = v8 - 12;
LABEL_47:
  if (v8 >= 0xD)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }

    if (v9 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12 * a2, a2, v28, v27, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v9 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v8 >= 9)
  {
    if (v23 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v23;
    }

    if (v18 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 8 * a2 + 64, a2, v30, v29, a7);
    v11 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v8 < 0xD)
  {
    goto LABEL_76;
  }

  if (v26 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v26;
  }

  if (v18 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 4, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 36, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 96, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 68, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 100, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = vdupq_lane_s64(a3->i64[0], 0);
  v9 = vsubq_s32(a3[1], v8);
  v544 = *(&a3[1] + a4);
  v543 = *(&a3[2] + a4);
  v534 = *(&a3[3] + a4);
  v564 = vsubq_s32(*a3, v8);
  v565 = vsubq_s32(*(a3 + a4), v8);
  v566 = vsubq_s32(v544, v8);
  v10 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v564, v9), v565), v566), xmmword_29D2F11C0);
  v11 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v564, v9), v565), v566), xmmword_29D2F11C0);
  v12 = vpmaxq_s32(v10, v10);
  v13 = vpminq_s32(v11, v11);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15 = vmaxq_s32(v12, v14);
  v16 = vminq_s32(v13, v14);
  v17 = vzip1q_s32(v12, v13);
  v18.i64[0] = 0x2000000020;
  v18.i64[1] = 0x2000000020;
  v19 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v17)), vceqzq_s32(v17));
  v556 = vsubq_s32(a3[2], v8);
  v558 = vsubq_s32(a3[3], v8);
  v562 = vsubq_s32(v543, v8);
  v563 = vsubq_s32(v534, v8);
  v20 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v556, v558), v562), v563), xmmword_29D2F11C0);
  v21 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v556, v558), v562), v563), xmmword_29D2F11C0);
  v22 = vpmaxq_s32(v20, v20);
  v23 = vpminq_s32(v21, v21);
  v24 = vmaxq_s32(v15, v22);
  v25 = vminq_s32(v16, v23);
  v26 = vzip1q_s32(v22, v23);
  v28 = *v7;
  v29 = v7[1];
  v30 = v7[2];
  v31 = v7[3];
  v27 = (v7 + a4);
  v32 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v26)), vceqzq_s32(v26));
  v33 = v30;
  v34 = *v27;
  v35 = vsubq_s32(v28, v8);
  v36 = vsubq_s32(v29, v8);
  v37 = vsubq_s32(*v27, v8);
  v560 = vsubq_s32(v27[1], v8);
  v38 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v35, v36), v37), v560), xmmword_29D2F11C0);
  v39 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v35, v36), v37), v560), xmmword_29D2F11C0);
  v40 = vpmaxq_s32(v38, v38);
  v41 = vpminq_s32(v39, v39);
  v42 = vmaxq_s32(v24, v40);
  v43 = vminq_s32(v25, v41);
  v44 = vzip1q_s32(v40, v41);
  v45 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v44)), vceqzq_s32(v44));
  v46 = vsubq_s32(v33, v8);
  v47 = vsubq_s32(v31, v8);
  v535 = v33;
  v537 = v31;
  v538 = v27[2];
  v48 = vsubq_s32(v538, v8);
  v540 = v27[1];
  v541 = v27[3];
  v49 = vsubq_s32(v541, v8);
  v50 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v46, v47), v48), v49), xmmword_29D2F11C0);
  v51 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v46, v47), v48), v49), xmmword_29D2F11C0);
  v52 = vpmaxq_s32(v50, v50);
  v53 = vpminq_s32(v51, v51);
  v54 = vmaxq_s32(v42, v52);
  v55 = vminq_s32(v43, v53);
  v56 = vzip1q_s32(v52, v53);
  v57 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v56)), vceqzq_s32(v56));
  v58 = vpmaxq_s32(v19, v19);
  v59 = vpmaxq_s32(v32, v32);
  v60 = vpmaxq_s32(v45, v45);
  v61 = vpmaxq_s32(v57, v57);
  v62 = vmaxq_s32(vmaxq_s32(v58, v59), vmaxq_s32(v60, v61));
  v63 = vclzq_s32(vsubq_s32(v54, v55));
  v64 = vsubq_s32(v18, v63);
  v65 = vminq_s32(v64, v62);
  if (!vmaxvq_s32(v65))
  {
    *a1 = a3->i64[0];
    *a2 = 7;
    return 8;
  }

  v567 = vcgtq_s32(v62, v64);
  v66.i64[0] = 0x800000008;
  v66.i64[1] = 0x800000008;
  v67.i64[0] = 0x300000003;
  v67.i64[1] = 0x300000003;
  v68 = vorrq_s8(vandq_s8(vceqzq_s32(v65), v67), vandq_s8(v567, v66));
  v69.i64[0] = 0xF0000000FLL;
  v69.i64[1] = 0xF0000000FLL;
  v525 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v58), v69), 0);
  v527 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v60), v69), 0);
  v529 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v59), v69), 0);
  v531 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v61), v69), 0);
  v67.i64[0] = 0x400000004;
  v67.i64[1] = 0x400000004;
  v554 = vorrq_s8(vbicq_s8(v67, vceqq_s32(vaddq_s32(v531, v527), vnegq_s32(vaddq_s32(v525, v529)))), v68);
  v523 = v55;
  v555 = v9;
  v70 = vsubq_s32(v566, vqtbl1q_s8(v566, xmmword_29D2F11B0));
  v71 = vsubq_s32(v562, vqtbl1q_s8(v562, xmmword_29D2F11B0));
  v72 = vsubq_s32(v563, vqtbl1q_s8(v563, xmmword_29D2F11B0));
  v553 = v35;
  v545 = v37;
  v73 = vsubq_s32(v37, vqtbl1q_s8(v37, xmmword_29D2F11B0));
  v518 = vsubq_s32(v9, vqtbl1q_s8(v9, xmmword_29D2F11B0));
  v520 = vsubq_s32(v564, vqtbl1q_s8(v564, xmmword_29D2F11B0));
  v503 = vsubq_s32(v565, vqtbl1q_s8(v565, xmmword_29D2F11B0));
  v74 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v520, v518), v503), v70), xmmword_29D2F11C0);
  v75 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v520, v518), v503), v70), xmmword_29D2F11C0);
  v76 = vpmaxq_s32(v74, v74);
  v77 = vpminq_s32(v75, v75);
  v78.i64[0] = 0x8000000080000000;
  v78.i64[1] = 0x8000000080000000;
  v79 = vmaxq_s32(v76, v78);
  v80 = vminq_s32(v77, v78);
  v81 = vzip1q_s32(v76, v77);
  v82 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v81)), vceqzq_s32(v81));
  v515 = vsubq_s32(v558, vqtbl1q_s8(v558, xmmword_29D2F11B0));
  v516 = vsubq_s32(v556, vqtbl1q_s8(v556, xmmword_29D2F11B0));
  v83 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v516, v515), v71), v72), xmmword_29D2F11C0);
  v84 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v516, v515), v71), v72), xmmword_29D2F11C0);
  v85 = vpmaxq_s32(v83, v83);
  v86 = vpminq_s32(v84, v84);
  v87 = vmaxq_s32(v79, v85);
  v88 = vminq_s32(v80, v86);
  v89 = vzip1q_s32(v85, v86);
  v90 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v89)), vceqzq_s32(v89));
  v511 = v73;
  v513 = vsubq_s32(v36, vqtbl1q_s8(v36, xmmword_29D2F11B0));
  v509 = vsubq_s32(v35, vqtbl1q_s8(v35, xmmword_29D2F11B0));
  v510 = vsubq_s32(v560, vqtbl1q_s8(v560, xmmword_29D2F11B0));
  v91 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v509, v513), v73), v510), xmmword_29D2F11C0);
  v92 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v509, v513), v73), v510), xmmword_29D2F11C0);
  v93 = vpmaxq_s32(v91, v91);
  v94 = vpminq_s32(v92, v92);
  v95 = vmaxq_s32(v87, v93);
  v96 = vzip1q_s32(v93, v94);
  v97 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v96)), vceqzq_s32(v96));
  v549 = v47;
  v551 = v49;
  v507 = vsubq_s32(v47, vqtbl1q_s8(v47, xmmword_29D2F11B0));
  v508 = vsubq_s32(v46, vqtbl1q_s8(v46, xmmword_29D2F11B0));
  v505 = vsubq_s32(v49, vqtbl1q_s8(v49, xmmword_29D2F11B0));
  v506 = vsubq_s32(v48, vqtbl1q_s8(v48, xmmword_29D2F11B0));
  v98 = v48;
  v99 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v508, v507), v506), v505), xmmword_29D2F11C0);
  v100 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v508, v507), v506), v505), xmmword_29D2F11C0);
  v101 = vpmaxq_s32(v99, v99);
  v102 = vpminq_s32(v100, v100);
  v103 = vmaxq_s32(v95, v101);
  v104 = vminq_s32(vminq_s32(v88, v94), v102);
  v105 = vzip1q_s32(v101, v102);
  v106 = vbicq_s8(vsubq_s32(v18, vclsq_s32(v105)), vceqzq_s32(v105));
  v107 = vpmaxq_s32(v82, v82);
  v108 = vpmaxq_s32(v90, v90);
  v109 = vpmaxq_s32(v97, v97);
  v110 = vpmaxq_s32(v106, v106);
  v547 = v46;
  v111 = vmaxq_s32(vmaxq_s32(v107, v108), vmaxq_s32(v109, v110));
  v504 = v104;
  v112 = vclzq_s32(vsubq_s32(v103, v104));
  v113 = vsubq_s32(v18, v112);
  v114 = vcgtq_s32(v111, v113);
  v115 = vminq_s32(v113, v111);
  v111.i64[0] = 0x1000000010;
  v111.i64[1] = 0x1000000010;
  v113.i64[0] = 0x1800000018;
  v113.i64[1] = 0x1800000018;
  v116 = v114;
  v117 = vbslq_s8(v114, v113, v111);
  v114.i64[0] = 0x300000003;
  v114.i64[1] = 0x300000003;
  v118 = vorrq_s8(vandq_s8(vceqzq_s32(v115), v114), v117);
  v119 = vminq_s32(vsubq_s32(v115, v108), v69);
  v120 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v107), v69), 0);
  v121 = vmaxq_s32(v119, 0);
  v122 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v109), v69), 0);
  v123 = vmaxq_s32(vminq_s32(vsubq_s32(v115, v110), v69), 0);
  v130.i64[0] = 0x400000004;
  v130.i64[1] = 0x400000004;
  v124 = vbicq_s8(v130, vceqq_s32(vaddq_s32(v123, v122), vnegq_s32(vaddq_s32(v120, v121))));
  v502 = vorrq_s8(v124, v118);
  *v124.i8 = vqmovn_u32(v502);
  v109.i64[0] = 0x8000800080008;
  v109.i64[1] = 0x8000800080008;
  *v119.i8 = vqmovn_u32(v115);
  v118.i64[0] = 0x10001000100010;
  v118.i64[1] = 0x10001000100010;
  v125 = vaddq_s16(vbicq_s8(v119, vceqzq_s16(vandq_s8(v124, v109))), vandq_s8(vshlq_n_s16(v124, 2uLL), v118));
  v119.i64[0] = 0x3000300030003;
  v119.i64[1] = 0x3000300030003;
  v126.i64[0] = 0x2000200020002;
  v126.i64[1] = 0x2000200020002;
  v95.i64[0] = 0x20002000200020;
  v95.i64[1] = 0x20002000200020;
  v127 = vandq_s8(vceqq_s16(vandq_s8(v124, v119), v126), v95);
  v128 = vsubq_s32(v115, v120);
  *v120.i8 = vqmovn_u32(v128);
  v94.i64[0] = 0x7000700070007;
  v94.i64[1] = 0x7000700070007;
  v129 = vmlaq_s16(vaddq_s16(v125, v127), v120, v94);
  v130.i64[1] = v554.i64[1];
  *v120.i8 = vqmovn_u32(v554);
  *v127.i8 = vqmovn_u32(v65);
  v131 = vbicq_s8(v127, vceqzq_s16(vandq_s8(v120, v109)));
  v132 = vandq_s8(vshlq_n_s16(v120, 2uLL), v118);
  v133 = vaddq_s16(vaddq_s16(v131, v132), vandq_s8(vceqq_s16(vandq_s8(v120, v119), v126), v95));
  v134 = vsubq_s32(v65, v525);
  *v132.i8 = vqmovn_u32(v134);
  v135 = vmlaq_s16(v133, v132, v94);
  v132.i64[0] = 0x1F0000001FLL;
  v132.i64[1] = 0x1F0000001FLL;
  v119.i64[0] = -1;
  v119.i64[1] = -1;
  v136 = vandq_s8(vsubq_s32(vshlq_s32(v119, vsubq_s32(v132, v63)), v523), v567);
  v137 = vsubq_s32(v115, v121);
  v138 = vsubq_s32(v115, v122);
  v139 = vsubq_s32(v115, v123);
  v140 = vaddq_s32(vaddq_s32(v138, v137), v139);
  *v140.i8 = vqmovn_u32(v140);
  v141 = vaddq_s16(v129, vshlq_n_s16(v140, 3uLL));
  v142 = vsubq_s32(v65, v529);
  v143 = vsubq_s32(v65, v527);
  v568 = vsubq_s32(v65, v531);
  v144 = vaddq_s32(vaddq_s32(v143, v142), v568);
  *v144.i8 = vqmovn_u32(v144);
  v145 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v135, vshlq_n_s16(v144, 3uLL)), v141)).i64[0], 0);
  v146 = vaddvq_s32(v145);
  v148 = a5 < 2 || a6 < 2;
  v149 = v65;
  if (v146)
  {
    v150.i64[0] = 0x1F0000001FLL;
    v150.i64[1] = 0x1F0000001FLL;
    v151.i64[0] = -1;
    v151.i64[1] = -1;
    v152 = vandq_s8(vsubq_s32(vshlq_s32(v151, vsubq_s32(v150, v112)), v504), v116);
    v153 = vcltzq_s32(vshlq_n_s32(v145, 0x1FuLL));
    v564 = vbslq_s8(v153, v520, v564);
    v555 = vbslq_s8(v153, v518, v555);
    v565 = vbslq_s8(v153, v503, v565);
    v566 = vbslq_s8(v153, v70, v566);
    v154 = vbslq_s8(v153, v516, v556);
    v112 = vbslq_s8(v153, v515, v558);
    v562 = vbslq_s8(v153, v71, v562);
    v563 = vbslq_s8(v153, v72, v563);
    v553 = vbslq_s8(v153, v509, v553);
    v532 = vbslq_s8(v153, v513, v36);
    v155 = vbslq_s8(v153, v511, v545);
    v156 = vbslq_s8(v153, v510, v560);
    v157 = vbslq_s8(v153, v505, v551);
    v526 = vbslq_s8(v153, v128, v134);
    v528 = vbslq_s8(v153, v137, v142);
    v530 = vbslq_s8(v153, v138, v143);
    v568 = vbslq_s8(v153, v139, v568);
    v149 = vbslq_s8(v153, v115, v149);
    v130 = vbslq_s8(v153, v502, v554);
    v554 = v130;
    v8 = vsubq_s32(v8, vandq_s8(vqtbl1q_s8(v8, xmmword_29D2F11B0), v153));
    v158 = vbslq_s8(v153, v506, v98);
    v159 = vbslq_s8(v153, v507, v549);
    v160 = vbslq_s8(v153, v508, v547);
    v161 = vbslq_s8(v153, v152, v136);
    v162 = v112;
    if (v148)
    {
LABEL_10:
      v163 = v562;
      v164 = v563;
      v165 = v530;
      v166 = v532;
      v167 = v553;
      v169 = v526;
      v168 = v528;
      v170 = v554;
      goto LABEL_16;
    }
  }

  else
  {
    v526 = v134;
    v528 = v142;
    v530 = v143;
    v532 = v36;
    v159 = v549;
    v157 = v551;
    v158 = v98;
    v155 = v545;
    v160 = v547;
    v161 = v136;
    v162 = v558;
    v156 = v560;
    v154 = v556;
    if (v148)
    {
      goto LABEL_10;
    }
  }

  v546 = v155;
  v557 = v154;
  v559 = v162;
  v522 = v161;
  v561 = v156;
  v548 = v160;
  v550 = v159;
  v524 = v158;
  v552 = v157;
  v570.val[0] = *a3;
  v570.val[1] = a3[1];
  v570.val[2] = *(a3 + a4);
  v570.val[3] = *(&a3[1] + a4);
  v172 = vqtbl4q_s8(v570, xmmword_29D2F1160);
  v519 = vsubq_s32(*a3, vqtbl4q_s8(v570, xmmword_29D2F10B0));
  v173 = vsubq_s32(v544, v172);
  v569.val[0] = a3[2];
  v569.val[1] = a3[3];
  v569.val[2] = *(&a3[2] + a4);
  v569.val[3].i64[0] = *(a3[3].i64 + a4);
  v569.val[3].i64[1] = *(&a3[1].i64[1] + a4);
  v542 = vsubq_s32(v569.val[0], vqtbl4q_s8(v569, xmmword_29D2F10B0));
  v521 = v149;
  v174 = vsubq_s32(v569.val[1], vqtbl4q_s8(v569, xmmword_29D2F10F0));
  v175 = vsubq_s32(v543, vqtbl4q_s8(v569, xmmword_29D2F1160));
  v176 = v540.i64[0];
  v177 = v569.val[3].i64[1];
  v178 = vsubq_s32(v534, vqtbl4q_s8(v569, xmmword_29D2F1100));
  v179 = vsubq_s32(v570.val[1], vqtbl4q_s8(v570, xmmword_29D2F10C0));
  v180 = vsubq_s32(v28, vqtbl4q_s8(*v28.i8, xmmword_29D2F1170));
  v181 = vsubq_s32(v29, vqtbl4q_s8(*v28.i8, xmmword_29D2F1180));
  v182 = vsubq_s32(v34, vqtbl4q_s8(*v28.i8, xmmword_29D2F10B0));
  v569.val[2] = vsubq_s32(v540, vqtbl4q_s8(*v28.i8, xmmword_29D2F10C0));
  v571.val[0] = v535;
  v571.val[1] = v537;
  v571.val[2] = v538;
  v571.val[3].i64[0] = v541.i64[0];
  v571.val[3].i64[1] = *(&a3[1].i64[1] + a4);
  v187.i64[1] = v519.i64[1];
  v183 = vqtbl4q_s8(v571, xmmword_29D2F10C0);
  v570.val[3] = vsubq_s32(v535, vqtbl4q_s8(v571, xmmword_29D2F1170));
  v184 = vsubq_s32(v537, vqtbl4q_s8(v571, xmmword_29D2F1120));
  v185 = vsubq_s32(v538, vqtbl4q_s8(v571, xmmword_29D2F10B0));
  v186.i64[0] = v173.i64[0];
  v186.i64[1] = v519.i64[0];
  v187.i64[0] = v173.i64[1];
  v188 = vsubq_s32(v541, v183);
  v533 = vsubq_s32(*(a3 + a4), v172);
  v570.val[0] = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v187, v179), v533), v186), xmmword_29D2F11C0);
  v570.val[1] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v187, v179), v533), v186), xmmword_29D2F11C0);
  v570.val[0] = vpmaxq_s32(v570.val[0], v570.val[0]);
  v570.val[1] = vpminq_s32(v570.val[1], v570.val[1]);
  v173.i64[0] = 0x8000000080000000;
  v173.i64[1] = 0x8000000080000000;
  v189 = vmaxq_s32(v570.val[0], v173);
  v183.i64[0] = 0x8000000080000000;
  v183.i64[1] = 0x8000000080000000;
  v190 = vminq_s32(v570.val[1], v183);
  v570.val[0] = vzip1q_s32(v570.val[0], v570.val[1]);
  v570.val[1].i64[0] = 0x2000000020;
  v570.val[1].i64[1] = 0x2000000020;
  v191 = vbicq_s8(vsubq_s32(v570.val[1], vclsq_s32(v570.val[0])), vceqzq_s32(v570.val[0]));
  v192 = vpmaxq_s32(v191, v191);
  v539 = v174;
  v536 = v175;
  v193 = v178;
  v194 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v542, v174), v175), v178), xmmword_29D2F11C0);
  v195 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v542, v174), v175), v178), xmmword_29D2F11C0);
  v196 = vpmaxq_s32(v194, v194);
  v197 = vpminq_s32(v195, v195);
  v198 = vmaxq_s32(v189, v196);
  v199 = vminq_s32(v190, v197);
  v200 = vzip1q_s32(v196, v197);
  v201 = vbicq_s8(vsubq_s32(v570.val[1], vclsq_s32(v200)), vceqzq_s32(v200));
  v202 = vpmaxq_s32(v201, v201);
  v517 = v569.val[2];
  v203 = v180;
  v204 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v180, v181), v182), v569.val[2]), xmmword_29D2F11C0);
  v205 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v180, v181), v182), v569.val[2]), xmmword_29D2F11C0);
  v206 = vpmaxq_s32(v204, v204);
  v207 = vpminq_s32(v205, v205);
  v208 = vmaxq_s32(v198, v206);
  v209 = vminq_s32(v199, v207);
  v210 = vzip1q_s32(v206, v207);
  v211 = vbicq_s8(vsubq_s32(v570.val[1], vclsq_s32(v210)), vceqzq_s32(v210));
  v212 = vpmaxq_s32(v211, v211);
  v512 = v184;
  v514 = v570.val[3];
  v213 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v570.val[3], v184), v185), v188), xmmword_29D2F11C0);
  v214 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v570.val[3], v184), v185), v188), xmmword_29D2F11C0);
  v215 = vpmaxq_s32(v213, v213);
  v216 = vpminq_s32(v214, v214);
  v217 = vmaxq_s32(v208, v215);
  v218 = vminq_s32(v209, v216);
  v219 = vzip1q_s32(v215, v216);
  v220 = vbicq_s8(vsubq_s32(v570.val[1], vclsq_s32(v219)), vceqzq_s32(v219));
  v221 = vpmaxq_s32(v220, v220);
  v222 = vmaxq_s32(vmaxq_s32(v192, v202), vmaxq_s32(v212, v221));
  v223 = vclzq_s32(vsubq_s32(v217, v218));
  v224 = vsubq_s32(v570.val[1], v223);
  v225 = vcgtq_s32(v222, v224);
  v226 = vminq_s32(v224, v222);
  v222.i64[0] = 0x900000009;
  v222.i64[1] = 0x900000009;
  v180.i64[0] = 0x200000002;
  v180.i64[1] = 0x200000002;
  v227 = vorrq_s8(vandq_s8(vceqzq_s32(v226), v180), vsubq_s32(vandq_s8(v225, v222), vmvnq_s8(v225)));
  v180.i64[0] = 0xF0000000FLL;
  v180.i64[1] = 0xF0000000FLL;
  v228 = vmaxq_s32(vminq_s32(vsubq_s32(v226, v192), v180), 0);
  v229 = vmaxq_s32(vminq_s32(vsubq_s32(v226, v202), v180), 0);
  v230 = vmaxq_s32(vminq_s32(vsubq_s32(v226, v212), v180), 0);
  v570.val[0] = vmaxq_s32(vminq_s32(vsubq_s32(v226, v221), v180), 0);
  v231 = vsubq_s32(v226, v228);
  v221.i64[0] = 0x400000004;
  v221.i64[1] = 0x400000004;
  v232 = vorrq_s8(vbicq_s8(v221, vceqq_s32(vaddq_s32(v570.val[0], v230), vnegq_s32(vaddq_s32(v228, v229)))), v227);
  *v221.i8 = vqmovn_u32(v232);
  v227.i64[0] = 0x8000800080008;
  v227.i64[1] = 0x8000800080008;
  *v228.i8 = vqmovn_u32(v226);
  v174.i64[0] = 0x2000200020002;
  v174.i64[1] = 0x2000200020002;
  v569.val[0].i64[0] = 0x10001000100010;
  v569.val[0].i64[1] = 0x10001000100010;
  v570.val[3].i64[0] = 0x3000300030003;
  v570.val[3].i64[1] = 0x3000300030003;
  v233 = vaddq_s16(vbicq_s8(v228, vceqzq_s16(vandq_s8(v221, v227))), vandq_s8(vshlq_n_s16(v221, 2uLL), v569.val[0]));
  v228.i64[0] = 0x20002000200020;
  v228.i64[1] = 0x20002000200020;
  v234 = vaddq_s16(v233, vandq_s8(vceqq_s16(vandq_s8(v221, v570.val[3]), v174), v228));
  *v233.i8 = vqmovn_u32(v231);
  v569.val[1].i64[0] = 0x7000700070007;
  v569.val[1].i64[1] = 0x7000700070007;
  v235 = vmlaq_s16(v234, v233, v569.val[1]);
  *v233.i8 = vqmovn_u32(v554);
  *v569.val[2].i8 = vqmovn_u32(v521);
  v569.val[2] = vbicq_s8(v569.val[2], vceqzq_s16(vandq_s8(v233, v227)));
  v569.val[0] = vaddq_s16(vaddq_s16(v569.val[2], vandq_s8(vshlq_n_s16(v233, 2uLL), v569.val[0])), vandq_s8(vceqq_s16(vandq_s8(v233, v570.val[3]), v174), v228));
  v169 = v526;
  v168 = v528;
  *v569.val[2].i8 = vqmovn_u32(v526);
  v569.val[0] = vmlaq_s16(v569.val[0], v569.val[2], v569.val[1]);
  v236 = vsubq_s32(v226, v229);
  v237 = vsubq_s32(v226, v230);
  v238 = vsubq_s32(v226, v570.val[0]);
  v569.val[1] = vaddq_s32(vaddq_s32(v237, v236), v238);
  *v569.val[1].i8 = vqmovn_u32(v569.val[1]);
  v166 = v532;
  v569.val[2] = vaddq_s32(vaddq_s32(v530, v528), v568);
  *v569.val[2].i8 = vqmovn_u32(v569.val[2]);
  v112 = vshlq_n_s16(v569.val[2], 3uLL);
  v239 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v569.val[0], v112), vaddq_s16(v235, vshlq_n_s16(v569.val[1], 3uLL)))).i64[0], 0);
  v167 = v553;
  if (vaddvq_s32(v239))
  {
    v240.i64[0] = 0x1F0000001FLL;
    v240.i64[1] = 0x1F0000001FLL;
    v241.i64[0] = -1;
    v241.i64[1] = -1;
    v242 = vandq_s8(vsubq_s32(vshlq_s32(v241, vsubq_s32(v240, v223)), v218), v225);
    v112 = vcltzq_s32(vshlq_n_s32(v239, 0x1FuLL));
    v8.i64[0] = vbslq_s8(v112, vextq_s8(v544, v544, 8uLL), v8).u64[0];
    v564 = vbslq_s8(v112, v187, v564);
    v555 = vbslq_s8(v112, v179, v555);
    v565 = vbslq_s8(v112, v533, v565);
    v566 = vbslq_s8(v112, v186, v566);
    v163 = vbslq_s8(v112, v536, v562);
    v164 = vbslq_s8(v112, v193, v563);
    v167 = vbslq_s8(v112, v203, v553);
    v166 = vbslq_s8(v112, v181, v532);
    v155 = vbslq_s8(v112, v182, v546);
    v156 = vbslq_s8(v112, v517, v561);
    v130 = vbslq_s8(v112, v514, v548);
    v159 = vbslq_s8(v112, v512, v550);
    v158 = vbslq_s8(v112, v185, v524);
    v169 = vbslq_s8(v112, v231, v526);
    v168 = vbslq_s8(v112, v236, v528);
    v243 = vbslq_s8(v112, v237, v530);
    v568 = vbslq_s8(v112, v238, v568);
    v161 = vbslq_s8(v112, v242, v522);
    v149 = vbslq_s8(v112, v226, v521);
    v160 = v130;
    v154 = vbslq_s8(v112, v542, v557);
    v162 = vbslq_s8(v112, v539, v559);
    v165 = v243;
    v170 = vbslq_s8(v112, v232, v554);
    v157 = vbslq_s8(v112, v188, v552);
  }

  else
  {
    v159 = v550;
    v130.i64[1] = v552.i64[1];
    v161 = v522;
    v158 = v524;
    v155 = v546;
    v160 = v548;
    v156 = v561;
    v163 = v562;
    v149 = v521;
    v164 = v563;
    v154 = v557;
    v162 = v559;
    v165 = v530;
    v170 = v554;
    v157 = v552;
  }

LABEL_16:
  *v130.i8 = vqmovn_u32(v170);
  v244.i64[0] = 0x8000800080008;
  v244.i64[1] = 0x8000800080008;
  *v112.i8 = vqmovn_u32(v149);
  v245 = vbicq_s8(v112, vceqzq_s16(vandq_s8(v130, v244)));
  v246.i64[0] = 0x2000200020002;
  v246.i64[1] = 0x2000200020002;
  v247.i64[0] = 0x10001000100010;
  v247.i64[1] = 0x10001000100010;
  v248 = vandq_s8(vshlq_n_s16(v130, 2uLL), v247);
  v247.i64[0] = 0x3000300030003;
  v247.i64[1] = 0x3000300030003;
  v249 = vceqq_s16(vandq_s8(v130, v247), v246);
  v246.i64[0] = 0x20002000200020;
  v246.i64[1] = 0x20002000200020;
  v250 = vandq_s8(v249, v246);
  *v246.i8 = vqmovn_u32(v169);
  v247.i64[0] = 0x7000700070007;
  v247.i64[1] = 0x7000700070007;
  v251 = vaddq_s32(vaddq_s32(v165, v168), v568);
  *v251.i8 = vqmovn_u32(v251);
  v252 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v245, v248), v250), v246, v247), vshlq_n_s16(v251, 3uLL));
  if ((vpaddq_s16(v252, v252).i16[0] - 941) < 0xFFFFFFFFFFFFFBF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 128;
  }

  else
  {
    v253 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v254 = 8 * (a1 & 7);
    if (v254)
    {
      v255 = *v253 & ~(-1 << v254);
    }

    else
    {
      v255 = 0;
    }

    *a2 = 0;
    if (v149.i32[0])
    {
      v256 = ((v149.i16[0] << 10) + 31744) & 0x7C00;
    }

    else
    {
      v256 = 0;
    }

    if (v149.i32[1])
    {
      v257 = ((v149.i32[1] << 15) + 1015808) & 0xF8000;
    }

    else
    {
      v257 = 0;
    }

    v258 = v170.i8[0] & 0x1F | (32 * (v170.i8[4] & 0x1F)) | v256 | v257;
    v259 = (v258 << v254) | v255;
    v260 = v159;
    if (v254 >= 0x2C)
    {
      *v253 = v259;
      v259 = v258 >> (-8 * (a1 & 7u));
    }

    v261 = (v254 + 20) & 0x3C;
    *(v253 + (((v254 + 20) >> 3) & 8)) = v259 | (v8.i64[0] << v261);
    v262 = v254 + 84;
    v263 = vsubq_s32(v149, v169);
    v264 = vsubq_s32(v149, v168);
    v265 = vsubq_s32(v149, v165);
    v266 = vsubq_s32(v149, v568);
    *v263.i8 = vqmovn_u32(v263);
    *v263.i8 = vqmovn_u16(v263);
    *v264.i8 = vqmovn_u32(v264);
    *v264.i8 = vqmovn_u16(v264);
    *v265.i8 = vqmovn_u32(v265);
    *v265.i8 = vqmovn_u16(v265);
    *v266.i8 = vqmovn_u32(v266);
    *v266.i8 = vqmovn_u16(v266);
    v263.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v263, v264), vzip1q_s8(v265, v266)), vzip1q_s16(vtrn2q_s8(v263, v264), vtrn2q_s8(v265, v266))).u64[0];
    v264.i64[0] = 0x400000004;
    v264.i64[1] = 0x400000004;
    v265.i64[0] = 0x404040404040404;
    v265.i64[1] = 0x404040404040404;
    v267 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v170, v264))), v265);
    v265.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v265.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266.i64[0] = -1;
    v266.i64[1] = -1;
    v268 = vandq_s8(vshlq_u8(v266, vorrq_s8(v267, v265)), v263.u64[0]);
    v269 = vmovl_u8(*v267.i8);
    v270 = vpaddq_s16(vshlq_u16(vmovl_u8(*v268.i8), vtrn1q_s16(0, v269)), vmovl_high_u8(v268));
    v271 = vpaddq_s16(v269, vmovl_high_u8(v267));
    v272 = vmovl_u16(*v271.i8);
    v273 = vmovl_high_u16(v271);
    v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v272)), vshlq_u32(vmovl_high_u16(v270), vtrn1q_s32(0, v273)));
    v275 = vpaddq_s32(v272, v273);
    v276.i64[0] = v274.u32[0];
    v276.i64[1] = v274.u32[1];
    v277 = v276;
    v276.i64[0] = v274.u32[2];
    v276.i64[1] = v274.u32[3];
    v278 = v276;
    v276.i64[0] = v275.u32[0];
    v276.i64[1] = v275.u32[1];
    v279 = v276;
    v276.i64[0] = v275.u32[2];
    v276.i64[1] = v275.u32[3];
    v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
    v281 = vpaddq_s64(v279, v276);
    v282 = (v254 + 84) & 0x3C;
    v283 = (v280.i64[0] << v282) | (v8.i64[0] >> -v261);
    if ((v281.i64[0] + v282) >= 0x40)
    {
      *(v253 + ((v262 >> 3) & 0x18)) = v283;
      v283 = v280.i64[0] >> -v282;
    }

    v284 = vceqq_s32(v149, v169);
    v285 = v281.i64[0] + v262;
    v286 = v283 | (v280.i64[1] << v285);
    if ((v285 & 0x3F) + v281.i64[1] >= 0x40)
    {
      *(v253 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      v286 = v280.i64[1] >> -(v285 & 0x3F);
      if ((v285 & 0x3F) == 0)
      {
        v286 = 0;
      }
    }

    v287 = vandq_s8(v161, v284);
    v288 = v285 + v281.i64[1];
    v289.i64[0] = 0x800000008;
    v289.i64[1] = 0x800000008;
    v290 = vandq_s8(vextq_s8(vtstq_s32(v170, v289), 0, 8uLL), v149);
    v291.i64[0] = 0x1F0000001FLL;
    v291.i64[1] = 0x1F0000001FLL;
    v292.i64[0] = -1;
    v292.i64[1] = -1;
    v293 = vandq_s8(vshlq_u32(v292, vaddq_s32(v290, v291)), v161);
    v294.i64[0] = v293.u32[0];
    v294.i64[1] = v293.u32[1];
    v295 = v294;
    v294.i64[0] = v293.u32[2];
    v294.i64[1] = v293.u32[3];
    v296 = v294;
    v294.i64[0] = v290.u32[0];
    v294.i64[1] = v290.u32[1];
    v297 = v294;
    v298 = vzip1q_s64(0, v294);
    v294.i64[0] = v290.u32[2];
    v294.i64[1] = v290.u32[3];
    v299 = vpaddq_s64(vshlq_u64(v295, v298), vshlq_u64(v296, 0));
    v300 = vpaddq_s64(v297, v294);
    v301 = (v299.i64[0] << v288) | v286;
    if (v300.i64[0] + (v288 & 0x3F) >= 0x40)
    {
      *(v253 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
      v301 = v299.i64[0] >> -(v288 & 0x3F);
      if ((v288 & 0x3F) == 0)
      {
        v301 = 0;
      }
    }

    v302 = vaddq_s32(v287, v564);
    v303 = v300.i64[0] + v288;
    v304 = v301 | (v299.i64[1] << v303);
    if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v253 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
      v304 = v299.i64[1] >> -(v303 & 0x3F);
      if ((v303 & 0x3F) == 0)
      {
        v304 = 0;
      }
    }

    v305 = v303 + v300.i64[1];
    v306 = vextq_s8(0, v169, 8uLL);
    v307.i64[0] = 0x1F0000001FLL;
    v307.i64[1] = 0x1F0000001FLL;
    v308.i64[0] = -1;
    v308.i64[1] = -1;
    v309 = vandq_s8(vshlq_u32(v308, vaddq_s32(v306, v307)), v302);
    v310.i64[0] = v309.u32[0];
    v310.i64[1] = v309.u32[1];
    v311 = v310;
    v310.i64[0] = v309.u32[2];
    v310.i64[1] = v309.u32[3];
    v312 = v310;
    v310.i64[0] = v306.u32[2];
    v310.i64[1] = v306.u32[3];
    v313 = v310;
    v314 = vzip1q_s64(0, v310);
    v310.i64[0] = v306.u32[0];
    v310.i64[1] = v306.u32[1];
    v315 = vpaddq_s64(vshlq_u64(v311, 0), vshlq_u64(v312, v314));
    v316 = vpaddq_s64(v310, v313);
    v317 = (v315.i64[0] << v305) | v304;
    if (v316.i64[0] + (v305 & 0x3F) >= 0x40)
    {
      *(v253 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
      v317 = v315.i64[0] >> -(v305 & 0x3F);
      if ((v305 & 0x3F) == 0)
      {
        v317 = 0;
      }
    }

    v318 = vaddq_s32(v555, v287);
    v319 = v316.i64[0] + v305;
    v320 = v317 | (v315.i64[1] << v319);
    if ((v319 & 0x3F) + v316.i64[1] >= 0x40)
    {
      *(v253 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
      v320 = v315.i64[1] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v320 = 0;
      }
    }

    v321 = v319 + v316.i64[1];
    v322.i64[0] = 0x1F0000001FLL;
    v322.i64[1] = 0x1F0000001FLL;
    v323.i64[0] = -1;
    v323.i64[1] = -1;
    v324 = vshlq_u32(v323, vaddq_s32(v169, v322));
    v325 = vandq_s8(v324, v318);
    v326.i64[0] = v325.u32[0];
    v326.i64[1] = v325.u32[1];
    v327 = v326;
    v326.i64[0] = v325.u32[2];
    v326.i64[1] = v325.u32[3];
    v328 = v326;
    v326.i64[0] = v169.u32[0];
    v326.i64[1] = v169.u32[1];
    v329 = v326;
    v326.i64[0] = v169.u32[2];
    v326.i64[1] = v169.u32[3];
    v330 = vzip1q_s64(0, v329);
    v331 = vzip1q_s64(0, v326);
    v332 = vpaddq_s64(vshlq_u64(v327, v330), vshlq_u64(v328, v331));
    v333 = vpaddq_s64(v329, v326);
    v334 = v333.i64[0];
    v335 = (v332.i64[0] << v321) | v320;
    if (v333.i64[0] + (v321 & 0x3F) >= 0x40)
    {
      *(v253 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
      if ((v321 & 0x3F) != 0)
      {
        v335 = v332.i64[0] >> -(v321 & 0x3F);
      }

      else
      {
        v335 = 0;
      }
    }

    v336 = vaddq_s32(v565, v287);
    v337 = v333.i64[1];
    v338 = v333.i64[0] + v321;
    v339 = v335 | (v332.i64[1] << v338);
    if ((v338 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v253 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v332.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v333.i64[1];
    v341 = vandq_s8(v324, v336);
    v342.i64[0] = v341.u32[0];
    v342.i64[1] = v341.u32[1];
    v343 = v342;
    v342.i64[0] = v341.u32[2];
    v342.i64[1] = v341.u32[3];
    v344 = vpaddq_s64(vshlq_u64(v343, v330), vshlq_u64(v342, v331));
    v345 = (v344.i64[0] << v340) | v339;
    if (v333.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v253 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
      v345 = v344.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v345 = 0;
      }
    }

    v346 = vceqq_s32(v149, v168);
    v347 = vaddq_s32(v566, v287);
    v348 = v334 + v340;
    v349 = v345 | (v344.i64[1] << v348);
    if ((v348 & 0x3F) + v337 >= 0x40)
    {
      *(v253 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
      v349 = v344.i64[1] >> -(v348 & 0x3F);
      if ((v348 & 0x3F) == 0)
      {
        v349 = 0;
      }
    }

    v350 = vandq_s8(v161, v346);
    v351 = v348 + v337;
    v352 = vandq_s8(v324, v347);
    v353.i64[0] = v352.u32[0];
    v353.i64[1] = v352.u32[1];
    v354 = v353;
    v353.i64[0] = v352.u32[2];
    v353.i64[1] = v352.u32[3];
    v355 = vpaddq_s64(vshlq_u64(v354, v330), vshlq_u64(v353, v331));
    v356 = (v355.i64[0] << v351) | v349;
    if (v334 + (v351 & 0x3F) >= 0x40)
    {
      *(v253 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v355.i64[0] >> -(v351 & 0x3F);
      if ((v351 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vaddq_s32(v154, v350);
    v358 = v334 + v351;
    v359 = v356 | (v355.i64[1] << v358);
    if ((v358 & 0x3F) + v337 >= 0x40)
    {
      *(v253 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      v359 = v355.i64[1] >> -(v358 & 0x3F);
      if ((v358 & 0x3F) == 0)
      {
        v359 = 0;
      }
    }

    v360 = v358 + v337;
    v361.i64[0] = 0x1F0000001FLL;
    v361.i64[1] = 0x1F0000001FLL;
    v362.i64[0] = -1;
    v362.i64[1] = -1;
    v363 = vshlq_u32(v362, vaddq_s32(v168, v361));
    v364 = vandq_s8(v363, v357);
    v365.i64[0] = v364.u32[0];
    v365.i64[1] = v364.u32[1];
    v366 = v365;
    v365.i64[0] = v364.u32[2];
    v365.i64[1] = v364.u32[3];
    v367 = v365;
    v365.i64[0] = v168.u32[0];
    v365.i64[1] = v168.u32[1];
    v368 = v365;
    v365.i64[0] = v168.u32[2];
    v365.i64[1] = v168.u32[3];
    v369 = vzip1q_s64(0, v368);
    v370 = vzip1q_s64(0, v365);
    v371 = vpaddq_s64(vshlq_u64(v366, v369), vshlq_u64(v367, v370));
    v372 = vpaddq_s64(v368, v365);
    v373 = v372.i64[0];
    v374 = (v371.i64[0] << v360) | v359;
    if (v372.i64[0] + (v360 & 0x3F) >= 0x40)
    {
      *(v253 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
      if ((v360 & 0x3F) != 0)
      {
        v374 = v371.i64[0] >> -(v360 & 0x3F);
      }

      else
      {
        v374 = 0;
      }
    }

    v375 = vaddq_s32(v162, v350);
    v376 = v372.i64[1];
    v377 = v372.i64[0] + v360;
    v378 = v374 | (v371.i64[1] << v377);
    if ((v377 & 0x3F) + v372.i64[1] >= 0x40)
    {
      *(v253 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
      v378 = v371.i64[1] >> -(v377 & 0x3F);
      if ((v377 & 0x3F) == 0)
      {
        v378 = 0;
      }
    }

    v379 = v377 + v372.i64[1];
    v380 = vandq_s8(v363, v375);
    v381.i64[0] = v380.u32[0];
    v381.i64[1] = v380.u32[1];
    v382 = v381;
    v381.i64[0] = v380.u32[2];
    v381.i64[1] = v380.u32[3];
    v383 = vpaddq_s64(vshlq_u64(v382, v369), vshlq_u64(v381, v370));
    v384 = (v383.i64[0] << v379) | v378;
    if (v372.i64[0] + (v379 & 0x3F) >= 0x40)
    {
      *(v253 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      v384 = v383.i64[0] >> -(v379 & 0x3F);
      if ((v379 & 0x3F) == 0)
      {
        v384 = 0;
      }
    }

    v385 = vaddq_s32(v163, v350);
    v386 = v372.i64[0] + v379;
    v387 = v384 | (v383.i64[1] << v386);
    if ((v386 & 0x3F) + v372.i64[1] >= 0x40)
    {
      *(v253 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v383.i64[1] >> -(v386 & 0x3F);
      if ((v386 & 0x3F) == 0)
      {
        v387 = 0;
      }
    }

    v388 = v386 + v372.i64[1];
    v389 = vandq_s8(v363, v385);
    v390.i64[0] = v389.u32[0];
    v390.i64[1] = v389.u32[1];
    v391 = v390;
    v390.i64[0] = v389.u32[2];
    v390.i64[1] = v389.u32[3];
    v392 = vpaddq_s64(vshlq_u64(v391, v369), vshlq_u64(v390, v370));
    v393 = (v392.i64[0] << v388) | v387;
    if (v372.i64[0] + (v388 & 0x3F) >= 0x40)
    {
      *(v253 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
      v393 = v392.i64[0] >> -(v388 & 0x3F);
      if ((v388 & 0x3F) == 0)
      {
        v393 = 0;
      }
    }

    v394 = vceqq_s32(v149, v165);
    v395 = vaddq_s32(v164, v350);
    v396 = v373 + v388;
    v397 = v393 | (v392.i64[1] << v396);
    if ((v396 & 0x3F) + v376 >= 0x40)
    {
      *(v253 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      v397 = v392.i64[1] >> -(v396 & 0x3F);
      if ((v396 & 0x3F) == 0)
      {
        v397 = 0;
      }
    }

    v398 = vandq_s8(v161, v394);
    v399 = v396 + v376;
    v400 = vandq_s8(v363, v395);
    v401.i64[0] = v400.u32[0];
    v401.i64[1] = v400.u32[1];
    v402 = v401;
    v401.i64[0] = v400.u32[2];
    v401.i64[1] = v400.u32[3];
    v403 = vpaddq_s64(vshlq_u64(v402, v369), vshlq_u64(v401, v370));
    v404 = (v403.i64[0] << v399) | v397;
    if (v373 + (v399 & 0x3F) >= 0x40)
    {
      *(v253 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
      v404 = v403.i64[0] >> -(v399 & 0x3F);
      if ((v399 & 0x3F) == 0)
      {
        v404 = 0;
      }
    }

    v405 = vaddq_s32(v167, v398);
    v406 = v373 + v399;
    v407 = v404 | (v403.i64[1] << v406);
    if ((v406 & 0x3F) + v376 >= 0x40)
    {
      *(v253 + ((v406 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
      v407 = v403.i64[1] >> -(v406 & 0x3F);
      if ((v406 & 0x3F) == 0)
      {
        v407 = 0;
      }
    }

    v408 = v406 + v376;
    v409.i64[0] = 0x1F0000001FLL;
    v409.i64[1] = 0x1F0000001FLL;
    v410.i64[0] = -1;
    v410.i64[1] = -1;
    v411 = vshlq_u32(v410, vaddq_s32(v165, v409));
    v412 = vandq_s8(v411, v405);
    v413.i64[0] = v412.u32[0];
    v413.i64[1] = v412.u32[1];
    v414 = v413;
    v413.i64[0] = v412.u32[2];
    v413.i64[1] = v412.u32[3];
    v415 = v413;
    v413.i64[0] = v165.u32[0];
    v413.i64[1] = v165.u32[1];
    v416 = v413;
    v413.i64[0] = v165.u32[2];
    v413.i64[1] = v165.u32[3];
    v417 = vzip1q_s64(0, v416);
    v418 = vzip1q_s64(0, v413);
    v419 = vpaddq_s64(vshlq_u64(v414, v417), vshlq_u64(v415, v418));
    v420 = vpaddq_s64(v416, v413);
    v421 = v420.i64[0];
    v422 = (v419.i64[0] << v408) | v407;
    if (v420.i64[0] + (v408 & 0x3F) >= 0x40)
    {
      *(v253 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      if ((v408 & 0x3F) != 0)
      {
        v422 = v419.i64[0] >> -(v408 & 0x3F);
      }

      else
      {
        v422 = 0;
      }
    }

    v423 = vaddq_s32(v166, v398);
    v424 = v420.i64[1];
    v425 = v420.i64[0] + v408;
    v426 = v422 | (v419.i64[1] << v425);
    if ((v425 & 0x3F) + v420.i64[1] >= 0x40)
    {
      *(v253 + ((v425 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v419.i64[1] >> -(v425 & 0x3F);
      if ((v425 & 0x3F) == 0)
      {
        v426 = 0;
      }
    }

    v427 = v425 + v420.i64[1];
    v428 = vandq_s8(v411, v423);
    v429.i64[0] = v428.u32[0];
    v429.i64[1] = v428.u32[1];
    v430 = v429;
    v429.i64[0] = v428.u32[2];
    v429.i64[1] = v428.u32[3];
    v431 = vpaddq_s64(vshlq_u64(v430, v417), vshlq_u64(v429, v418));
    v432 = (v431.i64[0] << v427) | v426;
    if (v420.i64[0] + (v427 & 0x3F) >= 0x40)
    {
      *(v253 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
      v432 = v431.i64[0] >> -(v427 & 0x3F);
      if ((v427 & 0x3F) == 0)
      {
        v432 = 0;
      }
    }

    v433 = vaddq_s32(v155, v398);
    v434 = v420.i64[0] + v427;
    v435 = v432 | (v431.i64[1] << v434);
    if ((v434 & 0x3F) + v420.i64[1] >= 0x40)
    {
      *(v253 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
      v435 = v431.i64[1] >> -(v434 & 0x3F);
      if ((v434 & 0x3F) == 0)
      {
        v435 = 0;
      }
    }

    v436 = v434 + v420.i64[1];
    v437 = vandq_s8(v411, v433);
    v438.i64[0] = v437.u32[0];
    v438.i64[1] = v437.u32[1];
    v439 = v438;
    v438.i64[0] = v437.u32[2];
    v438.i64[1] = v437.u32[3];
    v440 = vpaddq_s64(vshlq_u64(v439, v417), vshlq_u64(v438, v418));
    v441 = (v440.i64[0] << v436) | v435;
    if (v420.i64[0] + (v436 & 0x3F) >= 0x40)
    {
      *(v253 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
      v441 = v440.i64[0] >> -(v436 & 0x3F);
      if ((v436 & 0x3F) == 0)
      {
        v441 = 0;
      }
    }

    v442 = vceqq_s32(v149, v568);
    v443 = vaddq_s32(v156, v398);
    v444 = v421 + v436;
    v445 = v441 | (v440.i64[1] << v444);
    if ((v444 & 0x3F) + v424 >= 0x40)
    {
      *(v253 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
      v445 = v440.i64[1] >> -(v444 & 0x3F);
      if ((v444 & 0x3F) == 0)
      {
        v445 = 0;
      }
    }

    v446 = vandq_s8(v161, v442);
    v447 = v444 + v424;
    v448 = vandq_s8(v411, v443);
    v449.i64[0] = v448.u32[0];
    v449.i64[1] = v448.u32[1];
    v450 = v449;
    v449.i64[0] = v448.u32[2];
    v449.i64[1] = v448.u32[3];
    v451 = vpaddq_s64(vshlq_u64(v450, v417), vshlq_u64(v449, v418));
    v452 = (v451.i64[0] << v447) | v445;
    if (v421 + (v447 & 0x3F) >= 0x40)
    {
      *(v253 + ((v447 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v451.i64[0] >> -(v447 & 0x3F);
      if ((v447 & 0x3F) == 0)
      {
        v452 = 0;
      }
    }

    v453 = vaddq_s32(v160, v446);
    v454 = v421 + v447;
    v455 = v452 | (v451.i64[1] << v454);
    if ((v454 & 0x3F) + v424 >= 0x40)
    {
      *(v253 + ((v454 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
      v455 = v451.i64[1] >> -(v454 & 0x3F);
      if ((v454 & 0x3F) == 0)
      {
        v455 = 0;
      }
    }

    v456 = v454 + v424;
    v457.i64[0] = 0x1F0000001FLL;
    v457.i64[1] = 0x1F0000001FLL;
    v458.i64[0] = -1;
    v458.i64[1] = -1;
    v459 = vshlq_u32(v458, vaddq_s32(v568, v457));
    v460 = vandq_s8(v459, v453);
    v461.i64[0] = v460.u32[0];
    v461.i64[1] = v460.u32[1];
    v462 = v461;
    v461.i64[0] = v460.u32[2];
    v461.i64[1] = v460.u32[3];
    v463 = v461;
    v461.i64[0] = v568.u32[0];
    v461.i64[1] = v568.u32[1];
    v464 = v461;
    v461.i64[0] = v568.u32[2];
    v461.i64[1] = v568.u32[3];
    v465 = vzip1q_s64(0, v464);
    v466 = vzip1q_s64(0, v461);
    v467 = vpaddq_s64(vshlq_u64(v462, v465), vshlq_u64(v463, v466));
    v468 = vpaddq_s64(v464, v461);
    v469 = (v454 + v424) & 0x3F;
    v470 = (v467.i64[0] << (v454 + v424)) | v455;
    if ((v468.i64[0] + v469) > 0x3F)
    {
      *(v253 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      if (v469)
      {
        v470 = v467.i64[0] >> -v469;
      }

      else
      {
        v470 = 0;
      }
    }

    v471 = vaddq_s32(v260, v446);
    v472 = v468.i64[0] + v456;
    v473 = v470 | (v467.i64[1] << v472);
    if ((v472 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v253 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
      v473 = v467.i64[1] >> -(v472 & 0x3F);
      if ((v472 & 0x3F) == 0)
      {
        v473 = 0;
      }
    }

    v474 = v472 + v468.i64[1];
    v475 = vandq_s8(v459, v471);
    v476.i64[0] = v475.u32[0];
    v476.i64[1] = v475.u32[1];
    v477 = v476;
    v476.i64[0] = v475.u32[2];
    v476.i64[1] = v475.u32[3];
    v478 = vpaddq_s64(vshlq_u64(v477, v465), vshlq_u64(v476, v466));
    v479 = (v478.i64[0] << v474) | v473;
    if (v468.i64[0] + (v474 & 0x3F) >= 0x40)
    {
      *(v253 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
      v479 = v478.i64[0] >> -(v474 & 0x3F);
      if ((v474 & 0x3F) == 0)
      {
        v479 = 0;
      }
    }

    v480 = vaddq_s32(v158, v446);
    v481 = v468.i64[0] + v474;
    v482 = v479 | (v478.i64[1] << v481);
    if ((v481 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v253 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      v482 = v478.i64[1] >> -(v481 & 0x3F);
      if ((v481 & 0x3F) == 0)
      {
        v482 = 0;
      }
    }

    v483 = v481 + v468.i64[1];
    v484 = vandq_s8(v459, v480);
    v485.i64[0] = v484.u32[0];
    v485.i64[1] = v484.u32[1];
    v486 = v485;
    v485.i64[0] = v484.u32[2];
    v485.i64[1] = v484.u32[3];
    v487 = vpaddq_s64(vshlq_u64(v486, v465), vshlq_u64(v485, v466));
    v488 = (v487.i64[0] << v483) | v482;
    if (v468.i64[0] + (v483 & 0x3F) >= 0x40)
    {
      *(v253 + ((v483 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
      v488 = v487.i64[0] >> -(v483 & 0x3F);
      if ((v483 & 0x3F) == 0)
      {
        v488 = 0;
      }
    }

    v489 = vaddq_s32(v157, v446);
    v490 = v468.i64[0] + v483;
    v491 = v488 | (v487.i64[1] << v490);
    if ((v490 & 0x3F) + v468.i64[1] >= 0x40)
    {
      *(v253 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
      v491 = v487.i64[1] >> -(v490 & 0x3F);
      if ((v490 & 0x3F) == 0)
      {
        v491 = 0;
      }
    }

    v492 = v490 + v468.i64[1];
    v493 = vandq_s8(v459, v489);
    v494.i64[0] = v493.u32[0];
    v494.i64[1] = v493.u32[1];
    v495 = v494;
    v494.i64[0] = v493.u32[2];
    v494.i64[1] = v493.u32[3];
    v496 = vpaddq_s64(vshlq_u64(v495, v465), vshlq_u64(v494, v466));
    v497 = (v496.i64[0] << v492) | v491;
    if (v468.i64[0] + (v492 & 0x3F) >= 0x40)
    {
      *(v253 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v497;
      v497 = v496.i64[0] >> -(v492 & 0x3F);
      if ((v492 & 0x3F) == 0)
      {
        v497 = 0;
      }
    }

    v498 = v468.i64[0] + v492;
    v499 = (v468.i64[0] + v492) & 0x3F;
    v500 = v497 | (v496.i64[1] << (v468.i8[0] + v492));
    if ((v499 + v468.i64[1]) >= 0x40)
    {
      *(v253 + ((v498 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
      v500 = v496.i64[1] >> -v499;
      if (!v499)
      {
        v500 = 0;
      }
    }

    v501 = v498 + v468.i64[1];
    if ((v501 & 0x3F) != 0)
    {
      *(v253 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
    }

    result = (v501 - v254 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v71 = *MEMORY[0x29EDCA608];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v15 = a5 & 0x7E;
      if (a5 == v15)
      {
        for (i = 0; i != a6; ++i)
        {
          v17 = (&v57 + 4 * (i & 0x7F));
          v18 = a3;
          v19 = a5;
          do
          {
            v72 = vld2q_f64(v18);
            v18 += 4;
            v17[-2] = v72.val[0];
            *v17++ = v72.val[1];
            v19 -= 2;
          }

          while (v19);
          a3 += a4;
        }
      }

      else
      {
        v20 = 0;
        v21 = &v57 + ((a5 >> 1) & 0x3F);
        v22 = a3;
        do
        {
          v23 = (v20 & 0x7F) << 6;
          v24 = (v21 + v23);
          v25 = (&v57 + v23);
          v26 = v22;
          v27 = a5 & 0x7E;
          do
          {
            v73 = vld2q_f64(v26);
            v26 += 4;
            v25[-2] = v73.val[0];
            *v25++ = v73.val[1];
            v27 -= 2;
          }

          while (v27);
          v28 = (a3 + v20 * a4 + 16 * v15);
          v29 = a5 - v15;
          do
          {
            v30 = *v28;
            v31 = v28[1];
            v28 += 2;
            *(v24 - 4) = v30;
            *v24++ = v31;
            --v29;
          }

          while (v29);
          ++v20;
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 8);
      do
      {
        v13 = &v55 + 2 * (v11 & 0xFE);
        v14 = *v12;
        *v13 = *(v12 - 1);
        *(v13 + 4) = v14;
        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v32 = 2 * (a5 & 0x7F);
  v47 = v55;
  v48 = v57;
  v49 = *(&v55 + 1);
  v50 = *(&v57 + 1);
  v51 = v59;
  v52 = v61;
  if (v32 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2 * (a5 & 0x7F);
  }

  if (v32 >= 4)
  {
    v34 = v32 - 4;
  }

  else
  {
    v34 = 0;
  }

  v53 = *(&v59 + 1);
  v54 = *(&v61 + 1);
  if (a6 >= 2)
  {
    v35 = 2;
  }

  else
  {
    v35 = a6;
  }

  if (a6 >= 2)
  {
    v36 = a6 - 2;
  }

  else
  {
    v36 = 0;
  }

  v37 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v47, a7, v33, v35);
  v47 = v56;
  v48 = v58;
  v49 = *(&v56 + 1);
  v50 = *(&v58 + 1);
  v51 = v60;
  v52 = v62;
  v53 = *(&v60 + 1);
  v54 = *(&v62 + 1);
  if (a6 >= 4)
  {
    v38 = 2;
  }

  else
  {
    v38 = v36;
  }

  v39 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v47, a7, v33, v38);
  v47 = v63;
  v48 = v65;
  v49 = *(&v63 + 1);
  v50 = *(&v65 + 1);
  v51 = v67;
  v52 = v69;
  if (a5 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = v34;
  }

  v53 = *(&v67 + 1);
  v54 = *(&v69 + 1);
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v47, a7, v40, v35);
  v47 = v64;
  v48 = v66;
  v49 = *(&v64 + 1);
  v50 = *(&v66 + 1);
  v51 = v68;
  v52 = v70;
  v53 = *(&v68 + 1);
  v54 = *(&v70 + 1);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v47, a7, v40, v38);
  if (v41)
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  if (v39)
  {
    v44 = 2;
  }

  else
  {
    v44 = 0;
  }

  if (result)
  {
    v45 = -8;
  }

  else
  {
    v45 = -16;
  }

  *a2 = v45 | v43 | v37 | v44;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v388 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    v11 = 0uLL;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v12 = (a1->f64 + a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1->f64 + 2 * a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    v14 = (a1 + 2 * a2 + a2);
    v14[2] = 0u;
    v14[3] = 0u;
LABEL_153:
    *v14 = v11;
    v14[1] = v11;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v384, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v384, a5);
    }

    v375 = v385;
    v377 = v384;
    v379 = v387;
    v381 = v386;
    v19 = a3 + 32;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v384, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v384, a5);
    }

    v367 = v385;
    v369 = v384;
    v371 = v387;
    v373 = v386;
    v60 = a3 + 64;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v60, &v384, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v60, &v384, a5);
    }

    v356 = v385;
    v358 = v384;
    v361 = v387;
    v364 = v386;
    v61 = a3 + 96;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v61, &v384, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v61, &v384, a5);
    }

    v62 = (a1->f64 + a2);
    v63 = (a1 + a2 + a2);
    v64 = (v63->f64 + a2);
    v65 = v386;
    v66 = v387;
    v67 = v384;
    v68 = v385;
    *a1 = v377;
    a1[1] = v375;
    a1[2] = v369;
    a1[3] = v367;
    *v62 = v381;
    v62[1] = v379;
    v62[2] = v373;
    v62[3] = v371;
    *v63 = v358;
    v63[1] = v356;
    v63[2] = v67;
    v63[3] = v68;
    *v64 = v364;
    v64[1] = v361;
    v10 = 128;
    v64[2] = v65;
    v64[3] = v66;
    return v10;
  }

  if (a4 == 7)
  {
    v15 = vld1q_dup_f64(a3);
    *a1 = v15;
    a1[1] = v15;
    a1[2] = v15;
    a1[3] = v15;
    v16 = (a1 + a2);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v15;
    v16[3] = v15;
    v17 = (a1 + 2 * a2);
    *v17 = v15;
    v17[1] = v15;
    v17[2] = v15;
    v17[3] = v15;
    v18 = (a1 + 2 * a2 + a2);
    *v18 = v15;
    v18[1] = v15;
    v10 = 8;
    v18[2] = v15;
    v18[3] = v15;
    return v10;
  }

  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x2D)
  {
    v22 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v23 = (8 * (a3 & 7)) | 0x400;
  v24.i32[0] = v22;
  v24.i32[1] = (v22 >> 5) & 0x7FFF;
  *v25.i8 = vand_s8(v24, 0x1F0000001FLL);
  v26 = v20 + 84;
  v382 = *v25.i8;
  v25.i64[1] = v25.i64[0];
  v27.i64[0] = 0xFFFF0000FFFFLL;
  v27.i64[1] = 0xFFFF0000FFFFLL;
  v28 = vandq_s8(v25, v27);
  v27.i16[0] = (v22 >> 10) & 0x1F;
  v27.i16[1] = (v22 >> 15) & 0x1F;
  v27.i32[1] = v27.i32[0];
  v29 = vmovl_u16(vadd_s16(*v27.i8, 0x1000100010001));
  v30 = *&v28 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v31.i64[0] = 0x300000003;
  v31.i64[1] = 0x300000003;
  v32 = vbicq_s8(v29, vceqq_s32((*&v28 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v31));
  v31.i64[0] = 0x404040404040404;
  v31.i64[1] = 0x404040404040404;
  v33 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v28 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v31);
  if (vmaxvq_s8(v33) < 1)
  {
    v42 = 0;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v376 = v69;
    v378 = v69;
    v58 = v32;
    v57 = v32;
    v56 = v32;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v55 = v32;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v380 = v70;
  }

  else
  {
    v34 = vmovl_u8(*&vpaddq_s8(v33, v33));
    v35 = vmovl_u16(*&vpaddq_s16(v34, v34));
    v36 = vpaddq_s32(v35, v35).u64[0];
    v37.i64[0] = v36;
    v37.i64[1] = HIDWORD(v36);
    v38 = v37;
    v39 = vaddvq_s64(v37);
    v40 = v26 + v39;
    v41 = v39 <= 0x80 && v23 >= v40;
    v42 = !v41;
    v43 = 0uLL;
    if (v41)
    {
      v44 = v26 & 0x3C;
      v45 = vaddq_s64(vdupq_n_s64(v44), vzip1q_s64(0, v38));
      v46 = (v21 + ((v26 >> 3) & 0x18));
      v43 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v46, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v45)), vshlq_u64(vdupq_lane_s64(v46->i64[0], 0), vnegq_s64(v45)));
      if (v44 + v39 >= 0x81)
      {
        v43 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v46[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v45)), vshlq_u64(vdupq_laneq_s64(v46[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v45))), v43);
      }

      v26 = v40;
    }

    v47 = vzip1_s32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    v48.i64[0] = v47.u32[0];
    v48.i64[1] = v47.u32[1];
    v49 = vshlq_u64(v43, vnegq_s64(v48));
    v50 = vuzp1q_s32(vzip1q_s64(v43, v49), vzip2q_s64(v43, v49));
    v51 = vshlq_u32(v50, vnegq_s32((*&v34 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v52 = vuzp1q_s16(vzip1q_s32(v50, v51), vzip2q_s32(v50, v51));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    *v53.i8 = vand_s8(vadd_s8(*&vshlq_s8(v50, v33), -1), vmovn_s16(vzip1q_s16(v52, vshlq_u16(v52, vnegq_s16(vmovl_u8(vuzp1_s8(*v33.i8, v24)))))));
    v53.i64[1] = v53.i64[0];
    *v53.i8 = vqtbl1_s8(v53, 0x703060205010400);
    v52.i64[0] = vmovl_s8(vdup_lane_s16(*v53.i8, 0)).u64[0];
    v50.i64[0] = vmovl_s8(vdup_lane_s16(*v53.i8, 1)).u64[0];
    v54 = vmovl_s8(vdup_lane_s16(*v53.i8, 2)).u64[0];
    v53.i64[0] = vmovl_s8(vdup_lane_s16(*v53.i8, 3)).u64[0];
    v55 = vsubw_s16(v32, *v52.i8);
    v56 = vsubw_s16(v32, *v50.i8);
    v57 = vsubw_s16(v32, v54);
    v58 = vsubw_s16(v32, *v53.i8);
    v378 = vmovl_s16(vceqz_s16(*v52.i8));
    v380 = vmovl_s16(vceqz_s16(*v50.i8));
    v59 = vmovl_s16(vceqz_s16(v54));
    v376 = vmovl_s16(vceqz_s16(*v53.i8));
  }

  v71.i64[0] = 0x800000008;
  v71.i64[1] = 0x800000008;
  v72 = 0uLL;
  v73 = vandq_s8(vextq_s8(vtstq_s32(v28, v71), 0, 8uLL), v32);
  v71.i64[0] = vpaddq_s32(v73, v73).u64[0];
  v74.i64[0] = v71.u32[0];
  v74.i64[1] = v71.u32[1];
  v75 = v74;
  v76 = vaddvq_s64(v74);
  v77 = v26 + v76;
  if (v76 <= 0x80 && v23 >= v77)
  {
    v79 = v26 & 0x3F;
    v80 = vaddq_s64(vdupq_n_s64(v79), vzip1q_s64(0, v75));
    v81 = (v21 + 8 * (v26 >> 6));
    v72 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v79 + v76 >= 0x81)
    {
      v72 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v72);
    }

    v26 = v77;
  }

  else
  {
    v42 = 1;
  }

  v82 = v382.i8[0] & 3;
  if (v82 == 2)
  {
    v83 = v26 + 32;
    if (v23 >= v26 + 16)
    {
      v26 += 16;
    }

    else
    {
      v42 = 1;
      v83 = v26 + 16;
    }

    if (v23 >= v83)
    {
      v26 = v83;
    }

    else
    {
      v42 = 1;
    }
  }

  v84 = 0uLL;
  v85 = vextq_s8(0, v55, 8uLL);
  v86 = vpaddq_s32(v85, v85).u64[0];
  v87.i64[0] = v86;
  v87.i64[1] = HIDWORD(v86);
  v88 = v87;
  v89 = vaddvq_s64(v87);
  v90 = v26 + v89;
  if (v89 <= 0x80 && v23 >= v90)
  {
    v93 = v26 & 0x3F;
    v94 = vaddq_s64(vdupq_n_s64(v93), vzip1q_s64(0, v88));
    v95 = (v21 + 8 * (v26 >> 6));
    v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v93 + v89 >= 0x81)
    {
      v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v92);
    }

    v26 = v90;
  }

  else
  {
    v42 = 1;
    v92 = 0uLL;
  }

  v96 = vpaddq_s32(v55, v55).u64[0];
  v97.i64[0] = v96;
  v97.i64[1] = HIDWORD(v96);
  v98 = v97;
  v99 = vaddvq_s64(v97);
  v100 = v26 + v99;
  if (v99 <= 0x80 && v23 >= v100)
  {
    v102 = v26 & 0x3F;
    v103 = vaddq_s64(vdupq_n_s64(v102), vzip1q_s64(0, v98));
    v104 = (v21 + 8 * (v26 >> 6));
    v84 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v104, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v104->i64[0], 0), vnegq_s64(v103)));
    if (v102 + v99 >= 0x81)
    {
      v84 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v104[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v104[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v84);
    }

    v26 = v100;
  }

  else
  {
    v42 = 1;
  }

  v105 = v26 + v99;
  v106 = 0uLL;
  if (v99 <= 0x80 && v23 >= v105)
  {
    v109 = v26 & 0x3F;
    v110 = vaddq_s64(vdupq_n_s64(v109), vzip1q_s64(0, v98));
    v111 = (v21 + 8 * (v26 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
    if (v109 + v99 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
    }

    v26 = v105;
  }

  else
  {
    v42 = 1;
    v108 = 0uLL;
  }

  v112 = v26 + v99;
  if (v99 <= 0x80 && v23 >= v112)
  {
    v114 = v26 & 0x3F;
    v115 = vaddq_s64(vdupq_n_s64(v114), vzip1q_s64(0, v98));
    v116 = (v21 + 8 * (v26 >> 6));
    v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v115)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v115)));
    if (v114 + v99 >= 0x81)
    {
      v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v115)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v115))), v106);
    }

    v26 = v112;
  }

  else
  {
    v42 = 1;
  }

  v117 = vpaddq_s32(v56, v56).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = v26 + v120;
  v122 = 0uLL;
  if (v120 <= 0x80 && v23 >= v121)
  {
    v125 = v26 & 0x3F;
    v126 = vaddq_s64(vdupq_n_s64(v125), vzip1q_s64(0, v119));
    v127 = (v21 + 8 * (v26 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if (v125 + v120 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v124);
    }

    v26 = v121;
  }

  else
  {
    v42 = 1;
    v124 = 0uLL;
  }

  v128 = v26 + v120;
  if (v120 <= 0x80 && v23 >= v128)
  {
    v130 = v26 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v119));
    v132 = (v21 + 8 * (v26 >> 6));
    v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v120 >= 0x81)
    {
      v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v122);
    }

    v26 = v128;
  }

  else
  {
    v42 = 1;
  }

  v133 = 0uLL;
  if (v120 > 0x80 || (v134 = v26 + v120, v23 < v26 + v120))
  {
    v42 = 1;
    v134 = v26;
    v138 = 0uLL;
  }

  else
  {
    v135 = v26 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v119));
    v137 = (v21 + 8 * (v26 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v120 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v120 > 0x80 || (v139 = v134 + v120, v23 < v134 + v120))
  {
    v142 = v55;
    v42 = 1;
    v139 = v134;
  }

  else
  {
    v140 = vaddq_s64(vdupq_n_s64(v134 & 0x3F), vzip1q_s64(0, v119));
    v141 = (v21 + 8 * (v134 >> 6));
    v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    v142 = v55;
    if ((v134 & 0x3F) + v120 >= 0x81)
    {
      v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v133);
    }
  }

  v143 = v57;
  v144 = vpaddq_s32(v57, v57).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  v148 = v147;
  v149 = 0uLL;
  if (v147 > 0x80 || (v150 = v139 + v147, v23 < v139 + v147))
  {
    v42 = 1;
    v150 = v139;
    v153 = 0uLL;
  }

  else
  {
    v151 = vaddq_s64(vdupq_n_s64(v139 & 0x3F), vzip1q_s64(0, v146));
    v152 = (v21 + 8 * (v139 >> 6));
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
    if ((v139 & 0x3F) + v148 >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
    }
  }

  if (v148 > 0x80 || (v154 = v150 + v148, v23 < v150 + v148))
  {
    v42 = 1;
    v154 = v150;
  }

  else
  {
    v155 = vaddq_s64(vdupq_n_s64(v150 & 0x3F), vzip1q_s64(0, v146));
    v156 = (v21 + 8 * (v150 >> 6));
    v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if ((v150 & 0x3F) + v148 >= 0x81)
    {
      v149 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v149);
    }
  }

  v157 = 0uLL;
  if (v148 > 0x80 || (v158 = v154 + v148, v23 < v154 + v148))
  {
    v42 = 1;
    v158 = v154;
    v162 = 0uLL;
  }

  else
  {
    v159 = v154 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v146));
    v161 = (v21 + 8 * (v154 >> 6));
    v162 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v148 >= 0x81)
    {
      v162 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v162);
    }
  }

  if (v148 > 0x80 || (v163 = v158 + v148, v23 < v158 + v148))
  {
    v42 = 1;
    v163 = v158;
  }

  else
  {
    v164 = v158 & 0x3F;
    v165 = vaddq_s64(vdupq_n_s64(v164), vzip1q_s64(0, v146));
    v166 = (v21 + 8 * (v158 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v164 + v148 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v157);
    }
  }

  v167 = vpaddq_s32(v58, v58).u64[0];
  v168.i64[0] = v167;
  v168.i64[1] = HIDWORD(v167);
  v169 = v168;
  v170 = vaddvq_s64(v168);
  v171 = v170;
  v172 = 0uLL;
  if (v170 > 0x80 || (v173 = v163 + v170, v23 < v163 + v170))
  {
    v42 = 1;
    v173 = v163;
    v177 = 0uLL;
  }

  else
  {
    v174 = v163 & 0x3F;
    v175 = vaddq_s64(vdupq_n_s64(v174), vzip1q_s64(0, v169));
    v176 = (v21 + 8 * (v163 >> 6));
    v177 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
    if (v174 + v171 >= 0x81)
    {
      v177 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v177);
    }
  }

  if (v171 > 0x80 || (v178 = v173 + v171, v23 < v173 + v171))
  {
    v42 = 1;
    v178 = v173;
  }

  else
  {
    v179 = v173 & 0x3F;
    v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v169));
    v181 = (v21 + 8 * (v173 >> 6));
    v172 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
    if (v179 + v171 >= 0x81)
    {
      v172 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v172);
    }
  }

  v182 = 0uLL;
  if (v171 > 0x80 || (v183 = v178 + v171, v23 < v178 + v171))
  {
    v42 = 1;
    v183 = v178;
  }

  else
  {
    v184 = v178 & 0x3F;
    v185 = vaddq_s64(vdupq_n_s64(v184), vzip1q_s64(0, v169));
    v186 = (v21 + 8 * (v178 >> 6));
    v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v186, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v185)), vshlq_u64(vdupq_lane_s64(v186->i64[0], 0), vnegq_s64(v185)));
    if (v184 + v171 >= 0x81)
    {
      v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v186[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v185)), vshlq_u64(vdupq_laneq_s64(v186[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v185))), v182);
    }
  }

  if (v171 > 0x80 || v23 < v183 + v171)
  {
    goto LABEL_152;
  }

  v187 = v20 + 20;
  v188 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  v189.i64[0] = v188.u32[0];
  v189.i64[1] = v188.u32[1];
  v190 = (v21 + ((v187 >> 3) & 8));
  v191 = vnegq_s64(v189);
  v192.i64[0] = 0x2000000020;
  v192.i64[1] = 0x2000000020;
  v193.i64[0] = 0x1F0000001FLL;
  v193.i64[1] = 0x1F0000001FLL;
  v194 = vsubq_s32(v192, v58);
  v195 = vaddq_s32(v58, v193);
  v196 = vaddq_s64(vdupq_n_s64(v183 & 0x3F), vzip1q_s64(0, v169));
  v197 = (v21 + 8 * (v183 >> 6));
  v198 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v197, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v196)), vshlq_u64(vdupq_lane_s64(v197->i64[0], 0), vnegq_s64(v196)));
  if ((v183 & 0x3F) + v171 < 0x81)
  {
    if ((v42 & 1) == 0)
    {
      v199 = v59;
      v203 = vshlq_u64(v198, v191);
      v202 = vuzp1q_s32(vzip1q_s64(v198, v203), vzip2q_s64(v198, v203));
      goto LABEL_150;
    }

LABEL_152:
    v10 = 0;
    *&v11.f64[0] = 0xFFFFFFFFLL;
    *&v11.f64[1] = 0xFFFFFFFFLL;
    *a1 = v11;
    a1[1] = v11;
    v205 = (a1 + a2);
    *v205 = v11;
    v205[1] = v11;
    v206 = (a1 + 2 * a2);
    *v206 = v11;
    v206[1] = v11;
    v14 = (a1 + 2 * a2 + a2);
    goto LABEL_153;
  }

  if (v42)
  {
    goto LABEL_152;
  }

  v199 = v59;
  v200 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v197[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v196)), vshlq_u64(vdupq_laneq_s64(v197[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v196))), v198);
  v201 = vshlq_u64(v200, v191);
  v202 = vuzp1q_s32(vzip1q_s64(v200, v201), vzip2q_s64(v200, v201));
LABEL_150:
  v204 = vshlq_s32(vshlq_s32(v202, v194), v195);
  v10 = a4 + 1;
  if (v23 + 8 * v10 - (v183 + v171) - 1024 >= 9 || v82 == 2)
  {
    goto LABEL_152;
  }

  v347 = v28;
  v372 = v199;
  v374 = v204;
  v208 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
  v209.i64[0] = v208.u32[0];
  v209.i64[1] = v208.u32[1];
  v210 = vshlq_u64(v72, vnegq_s64(v209));
  v211 = vzip2q_s64(v72, v210);
  v365 = vzip1q_s64(v72, v210);
  v368 = v73;
  v212 = v85;
  *v210.i8 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
  v209.i64[0] = v210.u32[0];
  v209.i64[1] = v210.u32[1];
  v213 = vshlq_u64(v92, vnegq_s64(v209));
  v359 = vzip1q_s64(v92, v213);
  v362 = vzip2q_s64(v92, v213);
  v370 = v30;
  v214 = v142;
  v215 = vzip1_s32(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
  v209.i64[0] = v215.u32[0];
  v209.i64[1] = v215.u32[1];
  v216 = vnegq_s64(v209);
  v217 = vshlq_u64(v84, v216);
  v355 = vzip1q_s64(v84, v217);
  v357 = vzip2q_s64(v84, v217);
  v218 = vshlq_u64(v108, v216);
  v353 = vzip1q_s64(v108, v218);
  v354 = vzip2q_s64(v108, v218);
  v219 = vshlq_u64(v106, v216);
  v351 = vzip1q_s64(v106, v219);
  v352 = vzip2q_s64(v106, v219);
  v220 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
  v209.i64[0] = v220.u32[0];
  v209.i64[1] = v220.u32[1];
  v221 = vnegq_s64(v209);
  v222 = vshlq_u64(v124, v221);
  v349 = vzip1q_s64(v124, v222);
  v350 = vzip2q_s64(v124, v222);
  v223 = vshlq_u64(v122, v221);
  v348 = vzip2q_s64(v122, v223);
  v224 = vzip1q_s64(v122, v223);
  v225 = vshlq_u64(v138, v221);
  v226 = vzip2q_s64(v138, v225);
  v227 = vzip1q_s64(v138, v225);
  v228 = vshlq_u64(v133, v221);
  v229 = vzip2q_s64(v133, v228);
  v230 = vzip1q_s64(v133, v228);
  v231 = v143;
  v232 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
  v209.i64[0] = v232.u32[0];
  v209.i64[1] = v232.u32[1];
  v233 = vnegq_s64(v209);
  v234 = vshlq_u64(v153, v233);
  v235 = vzip2q_s64(v153, v234);
  v236 = vzip1q_s64(v153, v234);
  v237 = vshlq_u64(v149, v233);
  v238 = vzip2q_s64(v149, v237);
  v239 = vzip1q_s64(v149, v237);
  v240 = vshlq_u64(v162, v233);
  v241 = vzip2q_s64(v162, v240);
  v242 = vzip1q_s64(v162, v240);
  v243 = vshlq_u64(v157, v233);
  v244 = vzip2q_s64(v157, v243);
  v245 = vzip1q_s64(v157, v243);
  v246 = vshlq_u64(v177, v191);
  v247 = v56;
  v248 = vzip2q_s64(v177, v246);
  v249 = vzip1q_s64(v177, v246);
  v250 = vshlq_u64(v172, v191);
  v251 = vzip2q_s64(v172, v250);
  v252 = vzip1q_s64(v172, v250);
  v253 = vuzp1q_s32(v365, v211);
  v254 = vuzp1q_s32(v359, v362);
  v255 = vuzp1q_s32(v224, v348);
  v256 = vuzp1q_s32(v227, v226);
  v257 = vuzp1q_s32(v230, v229);
  v363 = vuzp1q_s32(v239, v238);
  v366 = vuzp1q_s32(v236, v235);
  v360 = vuzp1q_s32(v242, v241);
  v258 = vuzp1q_s32(v245, v244);
  v259 = vuzp1q_s32(v249, v248);
  v235.i64[0] = 0x2000000020;
  v235.i64[1] = 0x2000000020;
  v224.i64[0] = 0x1F0000001FLL;
  v224.i64[1] = 0x1F0000001FLL;
  v227.i64[0] = 0x2000000020;
  v227.i64[1] = 0x2000000020;
  v260 = vshlq_s32(v254, vsubq_s32(v227, v212));
  v261 = vsubq_s32(v227, v214);
  v245.i64[0] = 0x1F0000001FLL;
  v245.i64[1] = 0x1F0000001FLL;
  v262 = vaddq_s32(v212, v245);
  v263 = vaddq_s32(v214, v245);
  v245.i64[0] = 0x2000000020;
  v245.i64[1] = 0x2000000020;
  v264 = vsubq_s32(v245, v247);
  v239.i64[0] = 0x1F0000001FLL;
  v239.i64[1] = 0x1F0000001FLL;
  v265 = vaddq_s32(v247, v239);
  v266 = vshlq_s32(vuzp1q_s32(v349, v350), v264);
  v267 = vshlq_s32(v255, v264);
  v268 = vshlq_s32(v256, v264);
  v269 = vshlq_s32(v257, v264);
  v264.i64[0] = 0x2000000020;
  v264.i64[1] = 0x2000000020;
  v270 = vsubq_s32(v264, v231);
  v242.i64[0] = 0x1F0000001FLL;
  v242.i64[1] = 0x1F0000001FLL;
  v271 = vaddq_s32(v231, v242);
  v272 = vshlq_s32(v366, v270);
  v273 = vshlq_s32(v363, v270);
  v274 = vshlq_s32(v360, v270);
  v275 = vshlq_s32(v258, v270);
  v276 = vshlq_s32(vshlq_s32(v253, vsubq_s32(v235, v368)), vaddq_s32(v368, v224));
  v277 = vshlq_s32(v260, v262);
  v278 = vshlq_s32(vshlq_s32(vuzp1q_s32(v355, v357), v261), v263);
  v279 = vshlq_s32(vshlq_s32(vuzp1q_s32(v353, v354), v261), v263);
  v280 = vshlq_s32(vshlq_s32(vuzp1q_s32(v351, v352), v261), v263);
  v281 = vshlq_s32(v266, v265);
  v282 = vshlq_s32(v267, v265);
  v283 = vshlq_s32(v268, v265);
  v284 = vshlq_s32(v269, v265);
  v285 = vshlq_s32(v272, v271);
  v286 = vshlq_s32(v275, v271);
  v287 = vshlq_u64(v182, v191);
  v288 = vshlq_s32(vshlq_s32(v259, v194), v195);
  v289 = vshlq_s32(vshlq_s32(vuzp1q_s32(v252, v251), v194), v195);
  v290 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v182, v287), vzip2q_s64(v182, v287)), v194), v195);
  v291 = vaddq_s32(vandq_s8(v276, v378), v277);
  v292 = vdupq_lane_s64(v276.i64[0], 0);
  v293 = vandq_s8(v292, v380);
  v294 = vsubq_s32(v281, v293);
  v295 = vsubq_s32(v282, v293);
  v296 = vsubq_s32(v283, v293);
  v297 = vsubq_s32(v284, v293);
  v298 = vandq_s8(v292, v372);
  v299 = vsubq_s32(v285, v298);
  v300 = vsubq_s32(vshlq_s32(v273, v271), v298);
  v301 = vsubq_s32(vshlq_s32(v274, v271), v298);
  v302 = vandq_s8(v292, v378);
  v303 = vsubq_s32(v286, v298);
  v304 = vandq_s8(v292, v376);
  v305 = vsubq_s32(v288, v304);
  v306 = vsubq_s32(v289, v304);
  v307 = vsubq_s32(v290, v304);
  v308 = vsubq_s32(v374, v304);
  v309.i64[0] = 0x100000001;
  v309.i64[1] = 0x100000001;
  v310 = vsubq_s32(v278, v302);
  v311 = vsubq_s32(v279, v302);
  v312 = vuzp1_s16(v382, v382);
  v313 = vsubq_s32(v291, v302);
  v314 = vsubq_s32(v280, v302);
  v315 = vdupq_n_s64(((2 * v190[1]) << ~v187) | (*v190 >> v187));
  if (vaddvq_s32(vceqq_s32(v370, v309)))
  {
    v316 = vnegq_s32(vandq_s8(v347, v309));
    v317.i64[0] = v314.i64[0];
    v318.i64[1] = v313.i64[1];
    v317.i64[1] = v313.i64[0];
    v318.i64[0] = v314.i64[1];
    v319 = vbslq_s8(v316, v318, v313);
    v320 = vbslq_s8(v316, v317, v314);
    v321.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v321.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v322 = vandq_s8(vqtbl4q_s8(*(&v310 - 1), v321), v316);
    v383 = v312;
    v389.val[0] = vaddq_s32(v319, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10B0), v316));
    v389.val[1] = vaddq_s32(v310, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10C0), v316));
    v389.val[2] = vaddq_s32(v311, v322);
    v389.val[3] = vaddq_s32(v320, v322);
    v323 = vandq_s8(vqtbl4q_s8(v389, v321), v316);
    v313 = vaddq_s32(v389.val[0], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F10D0), v316));
    v310 = vaddq_s32(v389.val[1], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F10E0), v316));
    v311 = vaddq_s32(v389.val[2], v323);
    v314 = vaddq_s32(v389.val[3], v323);
    v390.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10B0), v316), v294);
    v390.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10F0), v316), v295);
    v390.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, v321), v316), v296);
    v390.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F1100), v316), v297);
    v324 = vandq_s8(vqtbl4q_s8(v390, xmmword_29D2F10D0), v316);
    v389.val[0] = vandq_s8(vqtbl4q_s8(v390, v321), v316);
    v294 = vaddq_s32(v324, v390.val[0]);
    v295 = vaddq_s32(v390.val[1], v324);
    v296 = vaddq_s32(v390.val[2], v389.val[0]);
    v297 = vaddq_s32(v390.val[3], v389.val[0]);
    v389.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v299.i8, xmmword_29D2F0EB0), v316), v299);
    v389.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v299.i8, xmmword_29D2F0FB0), v316), v300);
    v389.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v299.i8, xmmword_29D2F10B0), v316), v301);
    v389.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v299.i8, xmmword_29D2F10C0), v316), v303);
    v390.val[2] = vandq_s8(vqtbl4q_s8(v389, v321), v316);
    v299 = vaddq_s32(v389.val[0], v390.val[2]);
    v300 = vaddq_s32(v389.val[1], v390.val[2]);
    v301 = vaddq_s32(v389.val[2], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F0FE0), v316));
    v303 = vaddq_s32(v389.val[3], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F1110), v316));
    v325 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v305.i8, xmmword_29D2F0EB0), v316), v305);
    v389.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v305.i8, xmmword_29D2F1120), v316), v306);
    v389.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v305.i8, xmmword_29D2F10B0), v316), v307);
    v389.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v305.i8, xmmword_29D2F10C0), v316), v308);
    v326 = vandq_s8(vqtbl4q_s8(v389, v321), v316);
    v305 = vaddq_s32(v325, v326);
    v306 = vaddq_s32(v389.val[0], v326);
    v307 = vaddq_s32(v389.val[1], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F0FE0), v316));
    v308 = vaddq_s32(v389.val[2], vandq_s8(vqtbl4q_s8(v389, xmmword_29D2F1130), v316));
    v312 = v383;
  }

  v327 = vaddq_s32(v315, v313);
  v328 = vaddq_s32(v310, v315);
  v329 = vaddq_s32(v311, v315);
  v330 = vaddq_s32(v314, v315);
  v331 = vaddq_s32(v294, v315);
  v332 = vaddq_s32(v295, v315);
  v333 = vaddq_s32(v296, v315);
  v334 = vaddq_s32(v297, v315);
  v335 = vaddq_s32(v299, v315);
  v336 = vaddq_s32(v300, v315);
  v337 = vaddq_s32(v301, v315);
  v338 = vaddq_s32(v303, v315);
  v339 = vaddq_s32(v305, v315);
  v340 = vaddq_s32(v306, v315);
  v341 = vaddq_s32(v307, v315);
  v342 = vaddq_s32(v308, v315);
  v343 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v312 & 0xFF00FF00FF00FFLL)));
  v344 = (a1 + a2);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v327, xmmword_29D2F11B0), v343), v327);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v328, xmmword_29D2F11B0), v343), v328);
  a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v343), v331);
  a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v343), v332);
  v345 = (a1 + 2 * a2);
  *v344 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v329, xmmword_29D2F11B0), v343), v329);
  v344[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v330, xmmword_29D2F11B0), v343), v330);
  v344[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v343), v333);
  v344[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v343), v334);
  *v345 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v343), v335);
  v345[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v343), v336);
  v345[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v339, xmmword_29D2F11B0), v343), v339);
  v345[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v340, xmmword_29D2F11B0), v343), v340);
  v346 = (v345 + a2);
  *v346 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v343), v337);
  v346[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v338, xmmword_29D2F11B0), v343), v338);
  v346[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v341, xmmword_29D2F11B0), v343), v341);
  v346[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v342, xmmword_29D2F11B0), v343), v342);
  return v10;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 128), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + v31 + 192), a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 256, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 4, 256, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 256, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 68, 256, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 8, 256, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 12, 256, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 72, 256, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 76, 256, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s64(*a3, 0);
  v550 = *(a3 + 48);
  v544 = *(a3 + a4 + 32);
  v567 = vsubq_s32(*a3, v7);
  v568 = vsubq_s32(*(a3 + 16), v7);
  v569 = vsubq_s32(*(a3 + 32), v7);
  v570 = vsubq_s32(v550, v7);
  v8 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v567, v568), v569), v570), xmmword_29D2F11C0);
  v9 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v567, v568), v569), v570), xmmword_29D2F11C0);
  v10 = vpmaxq_s32(v8, v8);
  v11 = vpminq_s32(v9, v9);
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v13 = vmaxq_s32(v10, v12);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15 = vminq_s32(v11, v14);
  v16 = vzip1q_s32(v10, v11);
  v17.i64[0] = 0x2000000020;
  v17.i64[1] = 0x2000000020;
  v18 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v16)), vceqzq_s32(v16));
  v547 = *(a3 + a4 + 48);
  v571 = vsubq_s32(*(a3 + a4), v7);
  v572 = vsubq_s32(*(a3 + a4 + 16), v7);
  v573 = vsubq_s32(v544, v7);
  v563 = vsubq_s32(v547, v7);
  v19 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v571, v572), v573), v563), xmmword_29D2F11C0);
  v20 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v571, v572), v573), v563), xmmword_29D2F11C0);
  v21 = vpmaxq_s32(v19, v19);
  v22 = vpminq_s32(v20, v20);
  v23 = vmaxq_s32(v13, v21);
  v24 = vzip1q_s32(v21, v22);
  v25 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v24)), vceqzq_s32(v24));
  v26 = vsubq_s32(*(a3 + 80), v7);
  v540 = *(a3 + 64);
  v542 = *(a3 + 96);
  v27 = vsubq_s32(v542, v7);
  v549 = *(a3 + 112);
  v565 = vsubq_s32(v540, v7);
  v558 = vsubq_s32(v549, v7);
  v28 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v565, v26), v27), v558), xmmword_29D2F11C0);
  v29 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v565, v26), v27), v558), xmmword_29D2F11C0);
  v30 = vpmaxq_s32(v28, v28);
  v31 = vpminq_s32(v29, v29);
  v32 = vmaxq_s32(v23, v30);
  v33 = vminq_s32(vminq_s32(v15, v22), v31);
  v34 = vzip1q_s32(v30, v31);
  v35 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v34)), vceqzq_s32(v34));
  v36 = *(a3 + a4 + 96);
  v37 = *(a3 + a4 + 80);
  v38 = *(a3 + a4 + 64);
  v39 = vsubq_s32(v38, v7);
  v40 = vsubq_s32(v37, v7);
  v41 = vsubq_s32(v36, v7);
  v545 = *(a3 + a4 + 112);
  v42 = vsubq_s32(v545, v7);
  v43 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v39, v40), v41), v42), xmmword_29D2F11C0);
  v44 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v39, v40), v41), v42), xmmword_29D2F11C0);
  v45 = vpmaxq_s32(v43, v43);
  v46 = vpminq_s32(v44, v44);
  v47 = vmaxq_s32(v32, v45);
  v48 = vminq_s32(v33, v46);
  v49 = vzip1q_s32(v45, v46);
  v50 = vbicq_s8(vsubq_s32(v17, vclsq_s32(v49)), vceqzq_s32(v49));
  v51 = vpmaxq_s32(v18, v18);
  v52 = vpmaxq_s32(v25, v25);
  v53 = vpmaxq_s32(v35, v35);
  v54 = vpmaxq_s32(v50, v50);
  v55 = vmaxq_s32(vmaxq_s32(v51, v52), vmaxq_s32(v53, v54));
  v56 = vclzq_s32(vsubq_s32(v47, v48));
  v57 = vsubq_s32(v17, v56);
  v58 = vminq_s32(v57, v55);
  if (!vmaxvq_s32(v58))
  {
    *a1 = *a3;
    *a2 = 7;
    return 8;
  }

  v574 = vcgtq_s32(v55, v57);
  v59.i64[0] = 0x800000008;
  v59.i64[1] = 0x800000008;
  v60.i64[0] = 0x300000003;
  v60.i64[1] = 0x300000003;
  v61 = vorrq_s8(vandq_s8(vceqzq_s32(v58), v60), vandq_s8(v574, v59));
  v62 = vsubq_s32(v58, v51);
  v63.i64[0] = 0xF0000000FLL;
  v63.i64[1] = 0xF0000000FLL;
  v536 = vmaxq_s32(vminq_s32(v62, v63), 0);
  v538 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v53), v63), 0);
  v551 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v52), v63), 0);
  v553 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v54), v63), 0);
  v60.i64[0] = 0x400000004;
  v60.i64[1] = 0x400000004;
  v561 = vorrq_s8(vbicq_s8(v60, vceqq_s32(vaddq_s32(v553, v538), vnegq_s32(vaddq_s32(v536, v551)))), v61);
  v533 = v56;
  v64 = vsubq_s32(v567, vqtbl1q_s8(v567, xmmword_29D2F11B0));
  v65 = vsubq_s32(v568, vqtbl1q_s8(v568, xmmword_29D2F11B0));
  v66 = vsubq_s32(v569, vqtbl1q_s8(v569, xmmword_29D2F11B0));
  v67 = vsubq_s32(v570, vqtbl1q_s8(v570, xmmword_29D2F11B0));
  v68 = vsubq_s32(v573, vqtbl1q_s8(v573, xmmword_29D2F11B0));
  v69 = vsubq_s32(v563, vqtbl1q_s8(v563, xmmword_29D2F11B0));
  v70 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v64, v65), v66), v67);
  v529 = v65;
  v531 = v64;
  v515 = v66;
  v525 = vsubq_s32(v572, vqtbl1q_s8(v572, xmmword_29D2F11B0));
  v527 = v67;
  v71 = vminq_s32(vminq_s32(vminq_s32(v64, v65), v66), v67);
  v72 = vsubq_s32(v571, vqtbl1q_s8(v571, xmmword_29D2F11B0));
  v73 = vqtbl1q_s8(v70, xmmword_29D2F11C0);
  v74 = vqtbl1q_s8(v71, xmmword_29D2F11C0);
  v75 = vpmaxq_s32(v73, v73);
  v76 = vpminq_s32(v74, v74);
  v64.i64[0] = 0x8000000080000000;
  v64.i64[1] = 0x8000000080000000;
  v77 = vmaxq_s32(v75, v64);
  v66.i64[0] = 0x8000000080000000;
  v66.i64[1] = 0x8000000080000000;
  v78 = vminq_s32(v76, v66);
  v79 = vzip1q_s32(v75, v76);
  v80.i64[0] = 0x2000000020;
  v80.i64[1] = 0x2000000020;
  v81 = vbicq_s8(vsubq_s32(v80, vclsq_s32(v79)), vceqzq_s32(v79));
  v82 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v72, v525), v68), v69);
  v523 = v68;
  v83 = vminq_s32(vminq_s32(v72, v525), v68);
  v84 = v69;
  v85 = vsubq_s32(v565, vqtbl1q_s8(v565, xmmword_29D2F11B0));
  v86 = vsubq_s32(v558, vqtbl1q_s8(v558, xmmword_29D2F11B0));
  v87 = vqtbl1q_s8(v82, xmmword_29D2F11C0);
  v88 = vqtbl1q_s8(vminq_s32(v83, v84), xmmword_29D2F11C0);
  v89 = vpmaxq_s32(v87, v87);
  v90 = vpminq_s32(v88, v88);
  v91 = vmaxq_s32(v77, v89);
  v92 = vminq_s32(v78, v90);
  v93 = vzip1q_s32(v89, v90);
  v65.i64[0] = 0x2000000020;
  v65.i64[1] = 0x2000000020;
  v94 = vbicq_s8(vsubq_s32(v80, vclsq_s32(v93)), vceqzq_s32(v93));
  v521 = vsubq_s32(v26, vqtbl1q_s8(v26, xmmword_29D2F11B0));
  v514 = vsubq_s32(v27, vqtbl1q_s8(v27, xmmword_29D2F11B0));
  v95 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v85, v521), v514), v86), xmmword_29D2F11C0);
  v96 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v85, v521), v514), v86), xmmword_29D2F11C0);
  v97 = vpmaxq_s32(v95, v95);
  v98 = vpminq_s32(v96, v96);
  v99 = vmaxq_s32(v91, v97);
  v560 = v26;
  v100 = vminq_s32(v92, v98);
  v101 = vzip1q_s32(v97, v98);
  v102 = vbicq_s8(vsubq_s32(v65, vclsq_s32(v101)), vceqzq_s32(v101));
  v555 = v27;
  v556 = v42;
  v518 = vsubq_s32(v40, vqtbl1q_s8(v40, xmmword_29D2F11B0));
  v520 = vsubq_s32(v39, vqtbl1q_s8(v39, xmmword_29D2F11B0));
  v516 = vsubq_s32(v42, vqtbl1q_s8(v42, xmmword_29D2F11B0));
  v517 = vsubq_s32(v41, vqtbl1q_s8(v41, xmmword_29D2F11B0));
  v103 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v520, v518), v517), v516), xmmword_29D2F11C0);
  v104 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v520, v518), v517), v516), xmmword_29D2F11C0);
  v105 = vpmaxq_s32(v103, v103);
  v106 = vpminq_s32(v104, v104);
  v107 = vmaxq_s32(v99, v105);
  v108 = vminq_s32(v100, v106);
  v109 = vzip1q_s32(v105, v106);
  v110 = vbicq_s8(vsubq_s32(v65, vclsq_s32(v109)), vceqzq_s32(v109));
  v111 = vpmaxq_s32(v81, v81);
  v112 = vpmaxq_s32(v94, v94);
  v113 = vpmaxq_s32(v102, v102);
  v114 = vpmaxq_s32(v110, v110);
  v115 = vmaxq_s32(vmaxq_s32(v111, v112), vmaxq_s32(v113, v114));
  v512 = vclzq_s32(vsubq_s32(v107, v108));
  v513 = v108;
  v116 = vsubq_s32(v65, v512);
  v117 = vcgtq_s32(v115, v116);
  v118 = vminq_s32(v116, v115);
  v115.i64[0] = 0x1000000010;
  v115.i64[1] = 0x1000000010;
  v116.i64[0] = 0x1800000018;
  v116.i64[1] = 0x1800000018;
  v119 = v117;
  v101.i64[0] = 0x300000003;
  v101.i64[1] = 0x300000003;
  v120 = vorrq_s8(vandq_s8(vceqzq_s32(v118), v101), vbslq_s8(v117, v116, v115));
  v121 = vminq_s32(vsubq_s32(v118, v111), v63);
  v122 = vminq_s32(vsubq_s32(v118, v112), v63);
  v123 = vminq_s32(vsubq_s32(v118, v113), v63);
  v124 = vmaxq_s32(v121, 0);
  v125 = vmaxq_s32(v122, 0);
  v126 = vmaxq_s32(v123, 0);
  v127 = vmaxq_s32(vminq_s32(vsubq_s32(v118, v114), v63), 0);
  v101.i64[0] = 0x400000004;
  v101.i64[1] = 0x400000004;
  v128 = vbicq_s8(v101, vceqq_s32(vaddq_s32(v127, v126), vnegq_s32(vaddq_s32(v124, v125))));
  v511 = vorrq_s8(v128, v120);
  *v128.i8 = vqmovn_u32(v511);
  v120.i64[0] = 0x8000800080008;
  v120.i64[1] = 0x8000800080008;
  *v123.i8 = vqmovn_u32(v118);
  v63.i64[0] = 0x10001000100010;
  v63.i64[1] = 0x10001000100010;
  v129 = vaddq_s16(vbicq_s8(v123, vceqzq_s16(vandq_s8(v128, v120))), vandq_s8(vshlq_n_s16(v128, 2uLL), v63));
  v123.i64[0] = 0x3000300030003;
  v123.i64[1] = 0x3000300030003;
  v130 = v41;
  v131.i64[0] = 0x2000200020002;
  v131.i64[1] = 0x2000200020002;
  v132 = v40;
  v133.i64[0] = 0x20002000200020;
  v133.i64[1] = 0x20002000200020;
  v134 = vaddq_s16(v129, vandq_s8(vceqq_s16(vandq_s8(v128, v123), v131), v133));
  v135 = vsubq_s32(v118, v124);
  *v124.i8 = vqmovn_u32(v135);
  v136 = v39;
  v101.i64[0] = 0x7000700070007;
  v101.i64[1] = 0x7000700070007;
  v137 = vmlaq_s16(v134, v124, v101);
  *v124.i8 = vqmovn_u32(v561);
  *v39.i8 = vqmovn_u32(v58);
  v138 = vaddq_s16(vaddq_s16(vbicq_s8(v39, vceqzq_s16(vandq_s8(v124, v120))), vandq_s8(vshlq_n_s16(v124, 2uLL), v63)), vandq_s8(vceqq_s16(vandq_s8(v124, v123), v131), v133));
  v63.i64[1] = v536.i64[1];
  v139 = vsubq_s32(v58, v536);
  *v63.i8 = vqmovn_u32(v139);
  v140 = vmlaq_s16(v138, v63, v101);
  v63.i64[0] = 0x1F0000001FLL;
  v63.i64[1] = 0x1F0000001FLL;
  v124.i64[0] = -1;
  v124.i64[1] = -1;
  v141 = vandq_s8(vsubq_s32(vshlq_s32(v124, vsubq_s32(v63, v533)), v48), v574);
  v142 = vsubq_s32(v118, v125);
  v143 = vsubq_s32(v118, v126);
  v144 = vsubq_s32(v118, v127);
  v145 = vaddq_s32(vaddq_s32(v143, v142), v144);
  *v145.i8 = vqmovn_u32(v145);
  v146 = vsubq_s32(v58, v551);
  v147 = vsubq_s32(v58, v538);
  v575 = vsubq_s32(v58, v553);
  v148 = vaddq_s32(vaddq_s32(v147, v146), v575);
  *v148.i8 = vqmovn_u32(v148);
  v149 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v140, vshlq_n_s16(v148, 3uLL)), vaddq_s16(v137, vshlq_n_s16(v145, 3uLL)))).i64[0], 0);
  v150 = vaddvq_s32(v149);
  v152 = a5 < 2 || a6 == 0;
  if (v150)
  {
    v153.i64[0] = 0x1F0000001FLL;
    v153.i64[1] = 0x1F0000001FLL;
    v154.i64[0] = -1;
    v154.i64[1] = -1;
    v155 = vandq_s8(vsubq_s32(vshlq_s32(v154, vsubq_s32(v153, v512)), v513), v119);
    v156 = vcltzq_s32(vshlq_n_s32(v149, 0x1FuLL));
    v567 = vbslq_s8(v156, v531, v567);
    v568 = vbslq_s8(v156, v529, v568);
    v569 = vbslq_s8(v156, v515, v569);
    v570 = vbslq_s8(v156, v527, v570);
    v571 = vbslq_s8(v156, v72, v571);
    v572 = vbslq_s8(v156, v525, v572);
    v573 = vbslq_s8(v156, v523, v573);
    v157 = vbslq_s8(v156, v84, v563);
    v158 = vbslq_s8(v156, v85, v565);
    v560 = vbslq_s8(v156, v521, v560);
    v85 = vbslq_s8(v156, v514, v555);
    v159 = vbslq_s8(v156, v520, v136);
    v160 = vbslq_s8(v156, v516, v556);
    v554 = vbslq_s8(v156, v135, v139);
    v537 = vbslq_s8(v156, v142, v146);
    v539 = vbslq_s8(v156, v143, v147);
    v575 = vbslq_s8(v156, v144, v575);
    v161 = vbslq_s8(v156, v155, v141);
    v162 = vbslq_s8(v156, v118, v58);
    v119.i64[1] = v511.i64[1];
    v163 = vbslq_s8(v156, v511, v561);
    v7 = vsubq_s32(v7, vandq_s8(vqtbl1q_s8(v7, xmmword_29D2F11B0), v156));
    v164 = vbslq_s8(v156, v517, v130);
    v165 = vbslq_s8(v156, v518, v132);
    v166 = vbslq_s8(v156, v86, v558);
    v167 = v85;
    v168 = v158;
    v169 = v157;
    v552 = v159;
    if (v152)
    {
LABEL_10:
      v170 = v572;
      v171 = v573;
      v172 = v570;
      v173 = v571;
      v175 = v537;
      v174 = v539;
      v176 = v568;
      v177 = v569;
      v178 = v567;
      goto LABEL_16;
    }
  }

  else
  {
    v554 = v139;
    v537 = v146;
    v539 = v147;
    v164 = v130;
    v165 = v132;
    v166 = v558;
    v162 = v58;
    v167 = v555;
    v160 = v556;
    v169 = v563;
    v168 = v565;
    v161 = v141;
    v163 = v561;
    v552 = v136;
    if (v152)
    {
      goto LABEL_10;
    }
  }

  v530 = v161;
  v564 = v169;
  v566 = v168;
  v557 = v160;
  v559 = v166;
  v532 = v165;
  v534 = v164;
  v576.val[0] = *(a3 + 64);
  v576.val[1] = *(a3 + 80);
  v576.val[2] = *(a3 + 96);
  v119 = *a3;
  v180 = *(a3 + 16);
  v181 = *(a3 + 32);
  v182 = *(a3 + 48);
  v577.val[0] = *(a3 + a4);
  v577.val[1] = *(a3 + a4 + 16);
  v577.val[2] = *(a3 + a4 + 32);
  v577.val[3].i64[0] = *(a3 + a4 + 48);
  v577.val[3].i64[1] = *(a3 + 56);
  v562 = v163;
  v526 = vsubq_s32(v577.val[0], vqtbl4q_s8(v577, xmmword_29D2F10B0));
  v528 = v162;
  v543 = vsubq_s32(v577.val[1], vqtbl4q_s8(v577, xmmword_29D2F10F0));
  v535 = vsubq_s32(v544, vqtbl4q_s8(v577, xmmword_29D2F1160));
  v183 = vqtbl4q_s8(*v119.i8, xmmword_29D2F1160);
  v184 = vsubq_s32(*a3, vqtbl4q_s8(*v119.i8, xmmword_29D2F10B0));
  v185 = vsubq_s32(v180, vqtbl4q_s8(*v119.i8, xmmword_29D2F10C0));
  v186 = vsubq_s32(v181, v183);
  v187 = vsubq_s32(v550, v183);
  v576.val[3].i64[0] = *(a3 + 112);
  v576.val[3].i64[1] = v577.val[3].i64[1];
  v188 = vsubq_s32(v547, vqtbl4q_s8(v577, xmmword_29D2F1100));
  v189 = vsubq_s32(v540, vqtbl4q_s8(v576, xmmword_29D2F1170));
  v190 = *(a3 + a4 + 112);
  v191 = v577.val[3].i64[1];
  v119.i64[1] = v526.i64[1];
  v85 = vsubq_s32(v38, vqtbl4q_s8(*v38.i8, xmmword_29D2F1170));
  v192 = vsubq_s32(v37, vqtbl4q_s8(*v38.i8, xmmword_29D2F1120));
  v193 = vsubq_s32(v36, vqtbl4q_s8(*v38.i8, xmmword_29D2F10B0));
  v194.i64[0] = v187.i64[0];
  v194.i64[1] = v184.i64[0];
  v184.i64[0] = v187.i64[1];
  v195 = vsubq_s32(v545, vqtbl4q_s8(*v38.i8, xmmword_29D2F10C0));
  v548 = v185;
  v541 = v184;
  v196 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v184, v185), v186), v194), xmmword_29D2F11C0);
  v197 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v184, v185), v186), v194), xmmword_29D2F11C0);
  v198 = vpmaxq_s32(v196, v196);
  v199 = vpminq_s32(v197, v197);
  v577.val[2].i64[0] = 0x8000000080000000;
  v577.val[2].i64[1] = 0x8000000080000000;
  v577.val[2] = vmaxq_s32(v198, v577.val[2]);
  v577.val[3].i64[0] = 0x8000000080000000;
  v577.val[3].i64[1] = 0x8000000080000000;
  v577.val[3] = vminq_s32(v199, v577.val[3]);
  v200 = vzip1q_s32(v198, v199);
  v199.i64[0] = 0x2000000020;
  v199.i64[1] = 0x2000000020;
  v201 = vbicq_s8(vsubq_s32(v199, vclsq_s32(v200)), vceqzq_s32(v200));
  v202 = vpmaxq_s32(v201, v201);
  v546 = v188;
  v203 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v526, v543), v535), v188), xmmword_29D2F11C0);
  v204 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v526, v543), v535), v188), xmmword_29D2F11C0);
  v205 = vpmaxq_s32(v203, v203);
  v206 = vpminq_s32(v204, v204);
  v577.val[2] = vmaxq_s32(v577.val[2], v205);
  v577.val[3] = vminq_s32(v577.val[3], v206);
  v207 = vzip1q_s32(v205, v206);
  v208 = vbicq_s8(vsubq_s32(v199, vclsq_s32(v207)), vceqzq_s32(v207));
  v209 = vpmaxq_s32(v208, v208);
  v522 = vsubq_s32(v542, vqtbl4q_s8(v576, xmmword_29D2F10B0));
  v524 = vsubq_s32(v576.val[1], vqtbl4q_s8(v576, xmmword_29D2F1180));
  v519 = vsubq_s32(v549, vqtbl4q_s8(v576, xmmword_29D2F10C0));
  v210 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v189, v524), v522), v519), xmmword_29D2F11C0);
  v211 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v189, v524), v522), v519), xmmword_29D2F11C0);
  v212 = vpmaxq_s32(v210, v210);
  v213 = vpminq_s32(v211, v211);
  v577.val[2] = vmaxq_s32(v577.val[2], v212);
  v577.val[3] = vminq_s32(v577.val[3], v213);
  v214 = vzip1q_s32(v212, v213);
  v215 = vbicq_s8(vsubq_s32(v199, vclsq_s32(v214)), vceqzq_s32(v214));
  v216 = vpmaxq_s32(v215, v215);
  v217 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v85, v192), v193), v195), xmmword_29D2F11C0);
  v218 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v85, v192), v193), v195), xmmword_29D2F11C0);
  v219 = vpmaxq_s32(v217, v217);
  v220 = vpminq_s32(v218, v218);
  v577.val[2] = vmaxq_s32(v577.val[2], v219);
  v221 = vminq_s32(v577.val[3], v220);
  v222 = vzip1q_s32(v219, v220);
  v223 = vbicq_s8(vsubq_s32(v199, vclsq_s32(v222)), vceqzq_s32(v222));
  v224 = vpmaxq_s32(v223, v223);
  v225 = vmaxq_s32(vmaxq_s32(v202, v209), vmaxq_s32(v216, v224));
  v226 = vclzq_s32(vsubq_s32(v577.val[2], v221));
  v577.val[2] = vsubq_s32(v199, v226);
  v227 = vcgtq_s32(v225, v577.val[2]);
  v228 = vminq_s32(v577.val[2], v225);
  v225.i64[0] = 0x900000009;
  v225.i64[1] = 0x900000009;
  v576.val[3].i64[0] = 0x200000002;
  v576.val[3].i64[1] = 0x200000002;
  v576.val[2] = vorrq_s8(vandq_s8(vceqzq_s32(v228), v576.val[3]), vsubq_s32(vandq_s8(v227, v225), vmvnq_s8(v227)));
  v576.val[3].i64[0] = 0xF0000000FLL;
  v576.val[3].i64[1] = 0xF0000000FLL;
  v229 = vmaxq_s32(vminq_s32(vsubq_s32(v228, v202), v576.val[3]), 0);
  v230 = vmaxq_s32(vminq_s32(vsubq_s32(v228, v209), v576.val[3]), 0);
  v231 = vmaxq_s32(vminq_s32(vsubq_s32(v228, v216), v576.val[3]), 0);
  v232 = vmaxq_s32(vminq_s32(vsubq_s32(v228, v224), v576.val[3]), 0);
  v233 = vsubq_s32(v228, v229);
  v224.i64[0] = 0x400000004;
  v224.i64[1] = 0x400000004;
  v234 = vorrq_s8(vbicq_s8(v224, vceqq_s32(vaddq_s32(v232, v231), vnegq_s32(vaddq_s32(v229, v230)))), v576.val[2]);
  *v224.i8 = vqmovn_u32(v234);
  v576.val[2].i64[0] = 0x8000800080008;
  v576.val[2].i64[1] = 0x8000800080008;
  *v229.i8 = vqmovn_u32(v228);
  v576.val[1].i64[0] = 0x2000200020002;
  v576.val[1].i64[1] = 0x2000200020002;
  v235.i64[0] = 0x10001000100010;
  v235.i64[1] = 0x10001000100010;
  v236.i64[0] = 0x3000300030003;
  v236.i64[1] = 0x3000300030003;
  v576.val[3] = vaddq_s16(vbicq_s8(v229, vceqzq_s16(vandq_s8(v224, v576.val[2]))), vandq_s8(vshlq_n_s16(v224, 2uLL), v235));
  v229.i64[0] = 0x20002000200020;
  v229.i64[1] = 0x20002000200020;
  v237 = vaddq_s16(v576.val[3], vandq_s8(vceqq_s16(vandq_s8(v224, v236), v576.val[1]), v229));
  *v576.val[3].i8 = vqmovn_u32(v233);
  v576.val[0].i64[0] = 0x7000700070007;
  v576.val[0].i64[1] = 0x7000700070007;
  v238 = vmlaq_s16(v237, v576.val[3], v576.val[0]);
  *v576.val[3].i8 = vqmovn_u32(v562);
  v239.i64[1] = v528.i64[1];
  *v239.i8 = vqmovn_u32(v528);
  v240 = vbicq_s8(v239, vceqzq_s16(vandq_s8(v576.val[3], v576.val[2])));
  v576.val[2] = vandq_s8(vshlq_n_s16(v576.val[3], 2uLL), v235);
  v241 = vaddq_s16(vaddq_s16(v240, v576.val[2]), vandq_s8(vceqq_s16(vandq_s8(v576.val[3], v236), v576.val[1]), v229));
  *v576.val[2].i8 = vqmovn_u32(v554);
  v242 = vmlaq_s16(v241, v576.val[2], v576.val[0]);
  v243 = vsubq_s32(v228, v230);
  v244 = vsubq_s32(v228, v231);
  v245 = vsubq_s32(v228, v232);
  v576.val[0] = vaddq_s32(vaddq_s32(v244, v243), v245);
  *v576.val[0].i8 = vqmovn_u32(v576.val[0]);
  v576.val[0] = vaddq_s16(v238, vshlq_n_s16(v576.val[0], 3uLL));
  v175 = v537;
  v174 = v539;
  v246 = vaddq_s32(vaddq_s32(v539, v537), v575);
  *v246.i8 = vqmovn_u32(v246);
  v247 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v242, vshlq_n_s16(v246, 3uLL)), v576.val[0])).i64[0], 0);
  if (vaddvq_s32(v247))
  {
    v248.i64[0] = 0x1F0000001FLL;
    v248.i64[1] = 0x1F0000001FLL;
    v249 = vsubq_s32(v248, v226);
    v250.i64[0] = -1;
    v250.i64[1] = -1;
    v251 = vandq_s8(vsubq_s32(vshlq_s32(v250, v249), v221), v227);
    v252 = vcltzq_s32(vshlq_n_s32(v247, 0x1FuLL));
    v7.i64[0] = vbslq_s8(v252, vextq_s8(v550, v550, 8uLL), v7).u64[0];
    v178 = vbslq_s8(v252, v541, v567);
    v176 = vbslq_s8(v252, v548, v568);
    v177 = vbslq_s8(v252, v186, v569);
    v172 = vbslq_s8(v252, v194, v570);
    v173 = vbslq_s8(v252, v526, v571);
    v170 = vbslq_s8(v252, v543, v572);
    v171 = vbslq_s8(v252, v535, v573);
    v169 = vbslq_s8(v252, v546, v564);
    v168 = vbslq_s8(v252, v189, v566);
    v560 = vbslq_s8(v252, v524, v560);
    v167 = vbslq_s8(v252, v522, v167);
    v552 = vbslq_s8(v252, v85, v552);
    v165 = vbslq_s8(v252, v192, v532);
    v119 = vbslq_s8(v252, v193, v534);
    v160 = vbslq_s8(v252, v195, v557);
    v166 = vbslq_s8(v252, v519, v559);
    v554 = vbslq_s8(v252, v233, v554);
    v175 = vbslq_s8(v252, v243, v537);
    v174 = vbslq_s8(v252, v244, v539);
    v575 = vbslq_s8(v252, v245, v575);
    v161 = vbslq_s8(v252, v251, v530);
    v162 = vbslq_s8(v252, v228, v528);
    v163 = vbslq_s8(v252, v234, v562);
    v164 = v119;
  }

  else
  {
    v160 = v557;
    v166 = v559;
    v165 = v532;
    v164 = v534;
    v162 = v528;
    v169 = v564;
    v168 = v566;
    v170 = v572;
    v171 = v573;
    v161 = v530;
    v172 = v570;
    v173 = v571;
    v176 = v568;
    v177 = v569;
    v178 = v567;
    v163 = v562;
  }

LABEL_16:
  *v119.i8 = vqmovn_u32(v163);
  v253.i64[0] = 0x8000800080008;
  v253.i64[1] = 0x8000800080008;
  *v85.i8 = vqmovn_u32(v162);
  v254 = vbicq_s8(v85, vceqzq_s16(vandq_s8(v119, v253)));
  v255.i64[0] = 0x2000200020002;
  v255.i64[1] = 0x2000200020002;
  v256.i64[0] = 0x10001000100010;
  v256.i64[1] = 0x10001000100010;
  v257 = vandq_s8(vshlq_n_s16(v119, 2uLL), v256);
  v256.i64[0] = 0x3000300030003;
  v256.i64[1] = 0x3000300030003;
  v258 = vceqq_s16(vandq_s8(v119, v256), v255);
  v255.i64[0] = 0x20002000200020;
  v255.i64[1] = 0x20002000200020;
  v259 = vandq_s8(v258, v255);
  *v255.i8 = vqmovn_u32(v554);
  v256.i64[0] = 0x7000700070007;
  v256.i64[1] = 0x7000700070007;
  v260 = vaddq_s32(vaddq_s32(v174, v175), v575);
  *v260.i8 = vqmovn_u32(v260);
  v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v254, v257), v259), v255, v256), vshlq_n_s16(v260, 3uLL));
  if ((vpaddq_s16(v261, v261).i16[0] - 941) < 0xFFFFFFFFFFFFFBF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 128;
  }

  else
  {
    v262 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v263 = 8 * (a1 & 7);
    if (v263)
    {
      v264 = *v262 & ~(-1 << v263);
    }

    else
    {
      v264 = 0;
    }

    *a2 = 0;
    if (v162.i32[0])
    {
      v265 = ((v162.i16[0] << 10) + 31744) & 0x7C00;
    }

    else
    {
      v265 = 0;
    }

    if (v162.i32[1])
    {
      v266 = ((v162.i32[1] << 15) + 1015808) & 0xF8000;
    }

    else
    {
      v266 = 0;
    }

    v267 = v163.i8[0] & 0x1F | (32 * (v163.i8[4] & 0x1F)) | v265 | v266;
    v268 = (v267 << v263) | v264;
    v269 = v165;
    if (v263 >= 0x2C)
    {
      *v262 = v268;
      v268 = v267 >> (-8 * (a1 & 7u));
    }

    v270 = (v263 + 20) & 0x3C;
    *(v262 + (((v263 + 20) >> 3) & 8)) = v268 | (v7.i64[0] << v270);
    v271 = v263 + 84;
    v272 = vsubq_s32(v162, v554);
    v273 = vsubq_s32(v162, v175);
    v274 = vsubq_s32(v162, v174);
    v275 = vsubq_s32(v162, v575);
    *v272.i8 = vqmovn_u32(v272);
    *v272.i8 = vqmovn_u16(v272);
    *v273.i8 = vqmovn_u32(v273);
    *v273.i8 = vqmovn_u16(v273);
    *v274.i8 = vqmovn_u32(v274);
    *v274.i8 = vqmovn_u16(v274);
    *v275.i8 = vqmovn_u32(v275);
    *v275.i8 = vqmovn_u16(v275);
    v272.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v272, v273), vzip1q_s8(v274, v275)), vzip1q_s16(vtrn2q_s8(v272, v273), vtrn2q_s8(v274, v275))).u64[0];
    v273.i64[0] = 0x400000004;
    v273.i64[1] = 0x400000004;
    v274.i64[0] = 0x404040404040404;
    v274.i64[1] = 0x404040404040404;
    v276 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v163, v273))), v274);
    v274.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v274.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v275.i64[0] = -1;
    v275.i64[1] = -1;
    v277 = vandq_s8(vshlq_u8(v275, vorrq_s8(v276, v274)), v272.u64[0]);
    v278 = vmovl_u8(*v276.i8);
    v279 = vpaddq_s16(vshlq_u16(vmovl_u8(*v277.i8), vtrn1q_s16(0, v278)), vmovl_high_u8(v277));
    v280 = vpaddq_s16(v278, vmovl_high_u8(v276));
    v281 = vmovl_u16(*v280.i8);
    v282 = vmovl_high_u16(v280);
    v283 = vpaddq_s32(vshlq_u32(vmovl_u16(*v279.i8), vtrn1q_s32(0, v281)), vshlq_u32(vmovl_high_u16(v279), vtrn1q_s32(0, v282)));
    v284 = vpaddq_s32(v281, v282);
    v285.i64[0] = v283.u32[0];
    v285.i64[1] = v283.u32[1];
    v286 = v285;
    v285.i64[0] = v283.u32[2];
    v285.i64[1] = v283.u32[3];
    v287 = v285;
    v285.i64[0] = v284.u32[0];
    v285.i64[1] = v284.u32[1];
    v288 = v285;
    v285.i64[0] = v284.u32[2];
    v285.i64[1] = v284.u32[3];
    v289 = vpaddq_s64(vshlq_u64(v286, vzip1q_s64(0, v288)), vshlq_u64(v287, vzip1q_s64(0, v285)));
    v290 = vpaddq_s64(v288, v285);
    v291 = (v263 + 84) & 0x3C;
    v292 = (v289.i64[0] << v291) | (v7.i64[0] >> -v270);
    if ((v290.i64[0] + v291) >= 0x40)
    {
      *(v262 + ((v271 >> 3) & 0x18)) = v292;
      v292 = v289.i64[0] >> -v291;
    }

    v293 = vceqq_s32(v162, v554);
    v294 = v290.i64[0] + v271;
    v295 = v292 | (v289.i64[1] << v294);
    if ((v294 & 0x3F) + v290.i64[1] >= 0x40)
    {
      *(v262 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v295;
      v295 = v289.i64[1] >> -(v294 & 0x3F);
      if ((v294 & 0x3F) == 0)
      {
        v295 = 0;
      }
    }

    v296 = vandq_s8(v161, v293);
    v297 = v294 + v290.i64[1];
    v298.i64[0] = 0x800000008;
    v298.i64[1] = 0x800000008;
    v299 = vandq_s8(vextq_s8(vtstq_s32(v163, v298), 0, 8uLL), v162);
    v300.i64[0] = 0x1F0000001FLL;
    v300.i64[1] = 0x1F0000001FLL;
    v301.i64[0] = -1;
    v301.i64[1] = -1;
    v302 = vandq_s8(vshlq_u32(v301, vaddq_s32(v299, v300)), v161);
    v303.i64[0] = v302.u32[0];
    v303.i64[1] = v302.u32[1];
    v304 = v303;
    v303.i64[0] = v302.u32[2];
    v303.i64[1] = v302.u32[3];
    v305 = v303;
    v303.i64[0] = v299.u32[0];
    v303.i64[1] = v299.u32[1];
    v306 = v303;
    v307 = vzip1q_s64(0, v303);
    v303.i64[0] = v299.u32[2];
    v303.i64[1] = v299.u32[3];
    v308 = vpaddq_s64(vshlq_u64(v304, v307), vshlq_u64(v305, 0));
    v309 = vpaddq_s64(v306, v303);
    v310 = (v308.i64[0] << v297) | v295;
    if (v309.i64[0] + (v297 & 0x3F) >= 0x40)
    {
      *(v262 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
      v310 = v308.i64[0] >> -(v297 & 0x3F);
      if ((v297 & 0x3F) == 0)
      {
        v310 = 0;
      }
    }

    v311 = vaddq_s32(v296, v178);
    v312 = v309.i64[0] + v297;
    v313 = v310 | (v308.i64[1] << v312);
    if ((v312 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v262 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v308.i64[1] >> -(v312 & 0x3F);
      if ((v312 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = v312 + v309.i64[1];
    v315 = vextq_s8(0, v554, 8uLL);
    v316.i64[0] = 0x1F0000001FLL;
    v316.i64[1] = 0x1F0000001FLL;
    v317.i64[0] = -1;
    v317.i64[1] = -1;
    v318 = vandq_s8(vshlq_u32(v317, vaddq_s32(v315, v316)), v311);
    v319.i64[0] = v318.u32[0];
    v319.i64[1] = v318.u32[1];
    v320 = v319;
    v319.i64[0] = v318.u32[2];
    v319.i64[1] = v318.u32[3];
    v321 = v319;
    v319.i64[0] = v315.u32[2];
    v319.i64[1] = v315.u32[3];
    v322 = v319;
    v323 = vzip1q_s64(0, v319);
    v319.i64[0] = v315.u32[0];
    v319.i64[1] = v315.u32[1];
    v324 = vpaddq_s64(vshlq_u64(v320, 0), vshlq_u64(v321, v323));
    v325 = vpaddq_s64(v319, v322);
    v326 = (v324.i64[0] << v314) | v313;
    if (v325.i64[0] + (v314 & 0x3F) >= 0x40)
    {
      *(v262 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vaddq_s32(v176, v296);
    v328 = v325.i64[0] + v314;
    v329 = v326 | (v324.i64[1] << v328);
    if ((v328 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v262 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
      v329 = v324.i64[1] >> -(v328 & 0x3F);
      if ((v328 & 0x3F) == 0)
      {
        v329 = 0;
      }
    }

    v330 = v328 + v325.i64[1];
    v331.i64[0] = 0x1F0000001FLL;
    v331.i64[1] = 0x1F0000001FLL;
    v332.i64[0] = -1;
    v332.i64[1] = -1;
    v333 = vshlq_u32(v332, vaddq_s32(v554, v331));
    v334 = vandq_s8(v333, v327);
    v335.i64[0] = v334.u32[0];
    v335.i64[1] = v334.u32[1];
    v336 = v335;
    v335.i64[0] = v334.u32[2];
    v335.i64[1] = v334.u32[3];
    v337 = v335;
    v335.i64[0] = v554.u32[0];
    v335.i64[1] = v554.u32[1];
    v338 = v335;
    v335.i64[0] = v554.u32[2];
    v335.i64[1] = v554.u32[3];
    v339 = vzip1q_s64(0, v338);
    v340 = vzip1q_s64(0, v335);
    v341 = vpaddq_s64(vshlq_u64(v336, v339), vshlq_u64(v337, v340));
    v342 = vpaddq_s64(v338, v335);
    v343 = v342.i64[0];
    v344 = (v341.i64[0] << v330) | v329;
    if (v342.i64[0] + (v330 & 0x3F) >= 0x40)
    {
      *(v262 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
      if ((v330 & 0x3F) != 0)
      {
        v344 = v341.i64[0] >> -(v330 & 0x3F);
      }

      else
      {
        v344 = 0;
      }
    }

    v345 = vaddq_s32(v177, v296);
    v346 = v342.i64[1];
    v347 = v342.i64[0] + v330;
    v348 = v344 | (v341.i64[1] << v347);
    if ((v347 & 0x3F) + v342.i64[1] >= 0x40)
    {
      *(v262 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v341.i64[1] >> -(v347 & 0x3F);
      if ((v347 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = v347 + v342.i64[1];
    v350 = vandq_s8(v333, v345);
    v351.i64[0] = v350.u32[0];
    v351.i64[1] = v350.u32[1];
    v352 = v351;
    v351.i64[0] = v350.u32[2];
    v351.i64[1] = v350.u32[3];
    v353 = vpaddq_s64(vshlq_u64(v352, v339), vshlq_u64(v351, v340));
    v354 = (v353.i64[0] << v349) | v348;
    if (v342.i64[0] + (v349 & 0x3F) >= 0x40)
    {
      *(v262 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v353.i64[0] >> -(v349 & 0x3F);
      if ((v349 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vceqq_s32(v162, v175);
    v356 = vaddq_s32(v172, v296);
    v357 = v343 + v349;
    v358 = v354 | (v353.i64[1] << v357);
    if ((v357 & 0x3F) + v346 >= 0x40)
    {
      *(v262 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
      v358 = v353.i64[1] >> -(v357 & 0x3F);
      if ((v357 & 0x3F) == 0)
      {
        v358 = 0;
      }
    }

    v359 = vandq_s8(v161, v355);
    v360 = v357 + v346;
    v361 = vandq_s8(v333, v356);
    v362.i64[0] = v361.u32[0];
    v362.i64[1] = v361.u32[1];
    v363 = v362;
    v362.i64[0] = v361.u32[2];
    v362.i64[1] = v361.u32[3];
    v364 = vpaddq_s64(vshlq_u64(v363, v339), vshlq_u64(v362, v340));
    v365 = (v364.i64[0] << v360) | v358;
    if (v343 + (v360 & 0x3F) >= 0x40)
    {
      *(v262 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      v365 = v364.i64[0] >> -(v360 & 0x3F);
      if ((v360 & 0x3F) == 0)
      {
        v365 = 0;
      }
    }

    v366 = vaddq_s32(v173, v359);
    v367 = v343 + v360;
    v368 = v365 | (v364.i64[1] << v367);
    if ((v367 & 0x3F) + v346 >= 0x40)
    {
      *(v262 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
      v368 = v364.i64[1] >> -(v367 & 0x3F);
      if ((v367 & 0x3F) == 0)
      {
        v368 = 0;
      }
    }

    v369 = v367 + v346;
    v370.i64[0] = 0x1F0000001FLL;
    v370.i64[1] = 0x1F0000001FLL;
    v371.i64[0] = -1;
    v371.i64[1] = -1;
    v372 = vshlq_u32(v371, vaddq_s32(v175, v370));
    v373 = vandq_s8(v372, v366);
    v374.i64[0] = v373.u32[0];
    v374.i64[1] = v373.u32[1];
    v375 = v374;
    v374.i64[0] = v373.u32[2];
    v374.i64[1] = v373.u32[3];
    v376 = v374;
    v374.i64[0] = v175.u32[0];
    v374.i64[1] = v175.u32[1];
    v377 = v374;
    v374.i64[0] = v175.u32[2];
    v374.i64[1] = v175.u32[3];
    v378 = vzip1q_s64(0, v377);
    v379 = vzip1q_s64(0, v374);
    v380 = vpaddq_s64(vshlq_u64(v375, v378), vshlq_u64(v376, v379));
    v381 = vpaddq_s64(v377, v374);
    v382 = v381.i64[0];
    v383 = (v380.i64[0] << v369) | v368;
    if (v381.i64[0] + (v369 & 0x3F) >= 0x40)
    {
      *(v262 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      if ((v369 & 0x3F) != 0)
      {
        v383 = v380.i64[0] >> -(v369 & 0x3F);
      }

      else
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s32(v170, v359);
    v385 = v381.i64[1];
    v386 = v381.i64[0] + v369;
    v387 = v383 | (v380.i64[1] << v386);
    if ((v386 & 0x3F) + v381.i64[1] >= 0x40)
    {
      *(v262 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v380.i64[1] >> -(v386 & 0x3F);
      if ((v386 & 0x3F) == 0)
      {
        v387 = 0;
      }
    }

    v388 = v386 + v381.i64[1];
    v389 = vandq_s8(v372, v384);
    v390.i64[0] = v389.u32[0];
    v390.i64[1] = v389.u32[1];
    v391 = v390;
    v390.i64[0] = v389.u32[2];
    v390.i64[1] = v389.u32[3];
    v392 = vpaddq_s64(vshlq_u64(v391, v378), vshlq_u64(v390, v379));
    v393 = (v392.i64[0] << v388) | v387;
    if (v381.i64[0] + (v388 & 0x3F) >= 0x40)
    {
      *(v262 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
      v393 = v392.i64[0] >> -(v388 & 0x3F);
      if ((v388 & 0x3F) == 0)
      {
        v393 = 0;
      }
    }

    v394 = vaddq_s32(v171, v359);
    v395 = v381.i64[0] + v388;
    v396 = v393 | (v392.i64[1] << v395);
    if ((v395 & 0x3F) + v381.i64[1] >= 0x40)
    {
      *(v262 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      v396 = v392.i64[1] >> -(v395 & 0x3F);
      if ((v395 & 0x3F) == 0)
      {
        v396 = 0;
      }
    }

    v397 = v395 + v381.i64[1];
    v398 = vandq_s8(v372, v394);
    v399.i64[0] = v398.u32[0];
    v399.i64[1] = v398.u32[1];
    v400 = v399;
    v399.i64[0] = v398.u32[2];
    v399.i64[1] = v398.u32[3];
    v401 = vpaddq_s64(vshlq_u64(v400, v378), vshlq_u64(v399, v379));
    v402 = (v401.i64[0] << v397) | v396;
    if (v381.i64[0] + (v397 & 0x3F) >= 0x40)
    {
      *(v262 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      v402 = v401.i64[0] >> -(v397 & 0x3F);
      if ((v397 & 0x3F) == 0)
      {
        v402 = 0;
      }
    }

    v403 = vceqq_s32(v162, v174);
    v404 = vaddq_s32(v169, v359);
    v405 = v382 + v397;
    v406 = v402 | (v401.i64[1] << v405);
    if ((v405 & 0x3F) + v385 >= 0x40)
    {
      *(v262 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
      v406 = v401.i64[1] >> -(v405 & 0x3F);
      if ((v405 & 0x3F) == 0)
      {
        v406 = 0;
      }
    }

    v407 = vandq_s8(v161, v403);
    v408 = v405 + v385;
    v409 = vandq_s8(v372, v404);
    v410.i64[0] = v409.u32[0];
    v410.i64[1] = v409.u32[1];
    v411 = v410;
    v410.i64[0] = v409.u32[2];
    v410.i64[1] = v409.u32[3];
    v412 = vpaddq_s64(vshlq_u64(v411, v378), vshlq_u64(v410, v379));
    v413 = (v412.i64[0] << v408) | v406;
    if (v382 + (v408 & 0x3F) >= 0x40)
    {
      *(v262 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
      v413 = v412.i64[0] >> -(v408 & 0x3F);
      if ((v408 & 0x3F) == 0)
      {
        v413 = 0;
      }
    }

    v414 = vaddq_s32(v168, v407);
    v415 = v382 + v408;
    v416 = v413 | (v412.i64[1] << v415);
    if ((v415 & 0x3F) + v385 >= 0x40)
    {
      *(v262 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      v416 = v412.i64[1] >> -(v415 & 0x3F);
      if ((v415 & 0x3F) == 0)
      {
        v416 = 0;
      }
    }

    v417 = v415 + v385;
    v418.i64[0] = 0x1F0000001FLL;
    v418.i64[1] = 0x1F0000001FLL;
    v419.i64[0] = -1;
    v419.i64[1] = -1;
    v420 = vshlq_u32(v419, vaddq_s32(v174, v418));
    v421 = vandq_s8(v420, v414);
    v422.i64[0] = v421.u32[0];
    v422.i64[1] = v421.u32[1];
    v423 = v422;
    v422.i64[0] = v421.u32[2];
    v422.i64[1] = v421.u32[3];
    v424 = v422;
    v422.i64[0] = v174.u32[0];
    v422.i64[1] = v174.u32[1];
    v425 = v422;
    v422.i64[0] = v174.u32[2];
    v422.i64[1] = v174.u32[3];
    v426 = vzip1q_s64(0, v425);
    v427 = vzip1q_s64(0, v422);
    v428 = vpaddq_s64(vshlq_u64(v423, v426), vshlq_u64(v424, v427));
    v429 = vpaddq_s64(v425, v422);
    v430 = v429.i64[0];
    v431 = (v428.i64[0] << v417) | v416;
    if (v429.i64[0] + (v417 & 0x3F) >= 0x40)
    {
      *(v262 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
      if ((v417 & 0x3F) != 0)
      {
        v431 = v428.i64[0] >> -(v417 & 0x3F);
      }

      else
      {
        v431 = 0;
      }
    }

    v432 = vaddq_s32(v560, v407);
    v433 = v429.i64[1];
    v434 = v429.i64[0] + v417;
    v435 = v431 | (v428.i64[1] << v434);
    if ((v434 & 0x3F) + v429.i64[1] >= 0x40)
    {
      *(v262 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
      v435 = v428.i64[1] >> -(v434 & 0x3F);
      if ((v434 & 0x3F) == 0)
      {
        v435 = 0;
      }
    }

    v436 = v434 + v429.i64[1];
    v437 = vandq_s8(v420, v432);
    v438.i64[0] = v437.u32[0];
    v438.i64[1] = v437.u32[1];
    v439 = v438;
    v438.i64[0] = v437.u32[2];
    v438.i64[1] = v437.u32[3];
    v440 = vpaddq_s64(vshlq_u64(v439, v426), vshlq_u64(v438, v427));
    v441 = (v440.i64[0] << v436) | v435;
    if (v429.i64[0] + (v436 & 0x3F) >= 0x40)
    {
      *(v262 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
      v441 = v440.i64[0] >> -(v436 & 0x3F);
      if ((v436 & 0x3F) == 0)
      {
        v441 = 0;
      }
    }

    v442 = vaddq_s32(v167, v407);
    v443 = v429.i64[0] + v436;
    v444 = v441 | (v440.i64[1] << v443);
    if ((v443 & 0x3F) + v429.i64[1] >= 0x40)
    {
      *(v262 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
      v444 = v440.i64[1] >> -(v443 & 0x3F);
      if ((v443 & 0x3F) == 0)
      {
        v444 = 0;
      }
    }

    v445 = v443 + v429.i64[1];
    v446 = vandq_s8(v420, v442);
    v447.i64[0] = v446.u32[0];
    v447.i64[1] = v446.u32[1];
    v448 = v447;
    v447.i64[0] = v446.u32[2];
    v447.i64[1] = v446.u32[3];
    v449 = vpaddq_s64(vshlq_u64(v448, v426), vshlq_u64(v447, v427));
    v450 = (v449.i64[0] << v445) | v444;
    if (v429.i64[0] + (v445 & 0x3F) >= 0x40)
    {
      *(v262 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v450;
      v450 = v449.i64[0] >> -(v445 & 0x3F);
      if ((v445 & 0x3F) == 0)
      {
        v450 = 0;
      }
    }

    v451 = vceqq_s32(v162, v575);
    v452 = vaddq_s32(v166, v407);
    v453 = v430 + v445;
    v454 = v450 | (v449.i64[1] << v453);
    if ((v453 & 0x3F) + v433 >= 0x40)
    {
      *(v262 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
      v454 = v449.i64[1] >> -(v453 & 0x3F);
      if ((v453 & 0x3F) == 0)
      {
        v454 = 0;
      }
    }

    v455 = vandq_s8(v161, v451);
    v456 = v453 + v433;
    v457 = vandq_s8(v420, v452);
    v458.i64[0] = v457.u32[0];
    v458.i64[1] = v457.u32[1];
    v459 = v458;
    v458.i64[0] = v457.u32[2];
    v458.i64[1] = v457.u32[3];
    v460 = vpaddq_s64(vshlq_u64(v459, v426), vshlq_u64(v458, v427));
    v461 = (v460.i64[0] << v456) | v454;
    if (v430 + (v456 & 0x3F) >= 0x40)
    {
      *(v262 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v461;
      v461 = v460.i64[0] >> -(v456 & 0x3F);
      if ((v456 & 0x3F) == 0)
      {
        v461 = 0;
      }
    }

    v462 = vaddq_s32(v552, v455);
    v463 = v430 + v456;
    v464 = v461 | (v460.i64[1] << v463);
    if ((v463 & 0x3F) + v433 >= 0x40)
    {
      *(v262 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v460.i64[1] >> -(v463 & 0x3F);
      if ((v463 & 0x3F) == 0)
      {
        v464 = 0;
      }
    }

    v465 = v463 + v433;
    v466.i64[0] = 0x1F0000001FLL;
    v466.i64[1] = 0x1F0000001FLL;
    v467.i64[0] = -1;
    v467.i64[1] = -1;
    v468 = vshlq_u32(v467, vaddq_s32(v575, v466));
    v469 = vandq_s8(v468, v462);
    v470.i64[0] = v469.u32[0];
    v470.i64[1] = v469.u32[1];
    v471 = v470;
    v470.i64[0] = v469.u32[2];
    v470.i64[1] = v469.u32[3];
    v472 = v470;
    v470.i64[0] = v575.u32[0];
    v470.i64[1] = v575.u32[1];
    v473 = v470;
    v470.i64[0] = v575.u32[2];
    v470.i64[1] = v575.u32[3];
    v474 = vzip1q_s64(0, v473);
    v475 = vzip1q_s64(0, v470);
    v476 = vpaddq_s64(vshlq_u64(v471, v474), vshlq_u64(v472, v475));
    v477 = vpaddq_s64(v473, v470);
    v478 = (v463 + v433) & 0x3F;
    v479 = (v476.i64[0] << (v463 + v433)) | v464;
    if ((v477.i64[0] + v478) > 0x3F)
    {
      *(v262 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
      if (v478)
      {
        v479 = v476.i64[0] >> -v478;
      }

      else
      {
        v479 = 0;
      }
    }

    v480 = vaddq_s32(v269, v455);
    v481 = v477.i64[0] + v465;
    v482 = v479 | (v476.i64[1] << v481);
    if ((v481 & 0x3F) + v477.i64[1] >= 0x40)
    {
      *(v262 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      v482 = v476.i64[1] >> -(v481 & 0x3F);
      if ((v481 & 0x3F) == 0)
      {
        v482 = 0;
      }
    }

    v483 = v481 + v477.i64[1];
    v484 = vandq_s8(v468, v480);
    v485.i64[0] = v484.u32[0];
    v485.i64[1] = v484.u32[1];
    v486 = v485;
    v485.i64[0] = v484.u32[2];
    v485.i64[1] = v484.u32[3];
    v487 = vpaddq_s64(vshlq_u64(v486, v474), vshlq_u64(v485, v475));
    v488 = (v487.i64[0] << v483) | v482;
    if (v477.i64[0] + (v483 & 0x3F) >= 0x40)
    {
      *(v262 + ((v483 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
      v488 = v487.i64[0] >> -(v483 & 0x3F);
      if ((v483 & 0x3F) == 0)
      {
        v488 = 0;
      }
    }

    v489 = vaddq_s32(v164, v455);
    v490 = v477.i64[0] + v483;
    v491 = v488 | (v487.i64[1] << v490);
    if ((v490 & 0x3F) + v477.i64[1] >= 0x40)
    {
      *(v262 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
      v491 = v487.i64[1] >> -(v490 & 0x3F);
      if ((v490 & 0x3F) == 0)
      {
        v491 = 0;
      }
    }

    v492 = v490 + v477.i64[1];
    v493 = vandq_s8(v468, v489);
    v494.i64[0] = v493.u32[0];
    v494.i64[1] = v493.u32[1];
    v495 = v494;
    v494.i64[0] = v493.u32[2];
    v494.i64[1] = v493.u32[3];
    v496 = vpaddq_s64(vshlq_u64(v495, v474), vshlq_u64(v494, v475));
    v497 = (v496.i64[0] << v492) | v491;
    if (v477.i64[0] + (v492 & 0x3F) >= 0x40)
    {
      *(v262 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v497;
      v497 = v496.i64[0] >> -(v492 & 0x3F);
      if ((v492 & 0x3F) == 0)
      {
        v497 = 0;
      }
    }

    v498 = vaddq_s32(v160, v455);
    v499 = v477.i64[0] + v492;
    v500 = v497 | (v496.i64[1] << v499);
    if ((v499 & 0x3F) + v477.i64[1] >= 0x40)
    {
      *(v262 + ((v499 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
      v500 = v496.i64[1] >> -(v499 & 0x3F);
      if ((v499 & 0x3F) == 0)
      {
        v500 = 0;
      }
    }

    v501 = v499 + v477.i64[1];
    v502 = vandq_s8(v468, v498);
    v503.i64[0] = v502.u32[0];
    v503.i64[1] = v502.u32[1];
    v504 = v503;
    v503.i64[0] = v502.u32[2];
    v503.i64[1] = v502.u32[3];
    v505 = vpaddq_s64(vshlq_u64(v504, v474), vshlq_u64(v503, v475));
    v506 = (v505.i64[0] << v501) | v500;
    if (v477.i64[0] + (v501 & 0x3F) >= 0x40)
    {
      *(v262 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v506;
      v506 = v505.i64[0] >> -(v501 & 0x3F);
      if ((v501 & 0x3F) == 0)
      {
        v506 = 0;
      }
    }

    v507 = v477.i64[0] + v501;
    v508 = (v477.i64[0] + v501) & 0x3F;
    v509 = v506 | (v505.i64[1] << (v477.i8[0] + v501));
    if ((v508 + v477.i64[1]) >= 0x40)
    {
      *(v262 + ((v507 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v509;
      v509 = v505.i64[1] >> -v508;
      if (!v508)
      {
        v509 = 0;
      }
    }

    v510 = v507 + v477.i64[1];
    if ((v510 & 0x3F) != 0)
    {
      *(v262 + ((v510 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v509;
    }

    result = (v510 - v263 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = 0;
  v93 = *MEMORY[0x29EDCA608];
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
        v35 = &v77 + 4 * (v32 & 0x7F);
        v36 = v33[1];
        *&v35[i & 0x7F] = *v33;
        v37 = v33[3];
        *(v35 + v34) = v33[2];
        v38 = &v77 + 2 * ((2 * v32) | 1u);
        *&v38[i & 0x7F] = v36;
        v33 += 4;
        ++v32;
        *(v38 + v34) = v37;
      }

      while (a5 != v32);
    }

    v28 = *(&v77 + 1);
    v30 = v77;
    v27 = *(&v79 + 1);
    v29 = v79;
    v24 = *(&v81 + 1);
    v26 = v81;
    v23 = *(&v83 + 1);
    v25 = v83;
    v20 = *(&v78 + 1);
    v22 = v78;
    v19 = *(&v80 + 1);
    v21 = v80;
    v16 = *(&v82 + 1);
    v18 = v82;
    v15 = *(&v84 + 1);
    v17 = v84;
    v12 = *(&v85 + 1);
    v14 = v85;
    v11 = *(&v87 + 1);
    v13 = v87;
    v8 = *(&v89 + 1);
    v10 = v89;
    v7 = *(&v91 + 1);
    v9 = v91;
  }

  v54 = v20;
  v55 = v17;
  v56 = v14;
  v57 = v10;
  v58 = v13;
  v59 = v12;
  v60 = v11;
  v64 = v8;
  v39 = a6 != 0;
  v69 = v30;
  v70 = v29;
  v40 = 2 * (a5 & 0x7F);
  v71 = v28;
  v72 = v27;
  v73 = v26;
  v74 = v25;
  if (v40 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = 2 * (a5 & 0x7F);
  }

  v75 = v24;
  v76 = v23;
  v61 = 2 * (a6 & 0x7F);
  v62 = 2 * v39;
  if (v40 >= 4)
  {
    v42 = v40 - 4;
  }

  else
  {
    v42 = 0;
  }

  v63 = v42;
  v65 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v69, a7, v41, 2 * v39);
  v69 = v22;
  v70 = v21;
  v71 = v54;
  v72 = v19;
  v73 = v18;
  v74 = v55;
  v45 = v61 - 2;
  if (v61 < 2)
  {
    v45 = 0;
  }

  v75 = v16;
  v76 = v15;
  if (a6 >= 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = v45;
  }

  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v69, a7, v41, v46);
  v69 = v56;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v73 = v57;
  v74 = v9;
  if (a5 >= 4)
  {
    v48 = 4;
  }

  else
  {
    v48 = v63;
  }

  v75 = v64;
  v76 = v7;
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v69, a7, v48, v62);
  v69 = v86;
  v70 = v88;
  v71 = *(&v86 + 1);
  v72 = *(&v88 + 1);
  v73 = v90;
  v74 = v92;
  v75 = *(&v90 + 1);
  v76 = *(&v92 + 1);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v69, a7, v48, v46);
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

  *a2 = v53 | v51 | v65 | v52;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x2D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x400;
  v8.i32[0] = v6;
  v8.i32[1] = (v6 >> 5) & 0x7FFF;
  *v9.i8 = vand_s8(v8, 0x1F0000001FLL);
  v10 = v4 + 84;
  v345 = *v9.i8;
  v9.i64[1] = v9.i64[0];
  v11.i64[0] = 0xFFFF0000FFFFLL;
  v11.i64[1] = 0xFFFF0000FFFFLL;
  v12 = vandq_s8(v9, v11);
  v11.i16[0] = (v6 >> 10) & 0x1F;
  v11.i16[1] = (v6 >> 15) & 0x1F;
  v11.i32[1] = v11.i32[0];
  v13 = vmovl_u16(vadd_s16(*v11.i8, 0x1000100010001));
  v14 = *&v12 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v15.i64[0] = 0x300000003;
  v15.i64[1] = 0x300000003;
  v16 = vbicq_s8(v13, vceqq_s32((*&v12 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v15));
  v15.i64[0] = 0x404040404040404;
  v15.i64[1] = 0x404040404040404;
  v17 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v12 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v15);
  if (vmaxvq_s8(v17) < 1)
  {
    v26 = 0;
    v44.i64[0] = -1;
    v44.i64[1] = -1;
    v342 = v44;
    v343 = v44;
    v42 = v16;
    v41 = v16;
    v40 = v16;
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v39 = v16;
    v45.i64[0] = -1;
    v45.i64[1] = -1;
    v344 = v45;
  }

  else
  {
    v18 = vmovl_u8(*&vpaddq_s8(v17, v17));
    v19 = vmovl_u16(*&vpaddq_s16(v18, v18));
    v20 = vpaddq_s32(v19, v19).u64[0];
    v21.i64[0] = v20;
    v21.i64[1] = HIDWORD(v20);
    v22 = v21;
    v23 = vaddvq_s64(v21);
    v24 = v10 + v23;
    v25 = v23 <= 0x80 && v7 >= v24;
    v26 = !v25;
    v27 = 0uLL;
    if (v25)
    {
      v28 = v10 & 0x3C;
      v29 = vaddq_s64(vdupq_n_s64(v28), vzip1q_s64(0, v22));
      v30 = (v5 + ((v10 >> 3) & 0x18));
      v27 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v30, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v29)), vshlq_u64(vdupq_lane_s64(v30->i64[0], 0), vnegq_s64(v29)));
      if (v28 + v23 >= 0x81)
      {
        v27 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v30[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v29)), vshlq_u64(vdupq_laneq_s64(v30[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v29))), v27);
      }

      v10 = v24;
    }

    v31 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    v33 = vshlq_u64(v27, vnegq_s64(v32));
    v34 = vuzp1q_s32(vzip1q_s64(v27, v33), vzip2q_s64(v27, v33));
    v35 = vshlq_u32(v34, vnegq_s32((*&v18 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v36 = vuzp1q_s16(vzip1q_s32(v34, v35), vzip2q_s32(v34, v35));
    v34.i64[0] = 0x101010101010101;
    v34.i64[1] = 0x101010101010101;
    *v37.i8 = vand_s8(vadd_s8(*&vshlq_s8(v34, v17), -1), vmovn_s16(vzip1q_s16(v36, vshlq_u16(v36, vnegq_s16(vmovl_u8(vuzp1_s8(*v17.i8, v8)))))));
    v37.i64[1] = v37.i64[0];
    *v37.i8 = vqtbl1_s8(v37, 0x703060205010400);
    v36.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 0)).u64[0];
    v34.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 1)).u64[0];
    v38 = vmovl_s8(vdup_lane_s16(*v37.i8, 2)).u64[0];
    v37.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 3)).u64[0];
    v39 = vsubw_s16(v16, *v36.i8);
    v40 = vsubw_s16(v16, *v34.i8);
    v41 = vsubw_s16(v16, v38);
    v42 = vsubw_s16(v16, *v37.i8);
    v343 = vmovl_s16(vceqz_s16(*v36.i8));
    v344 = vmovl_s16(vceqz_s16(*v34.i8));
    v43 = vmovl_s16(vceqz_s16(v38));
    v342 = vmovl_s16(vceqz_s16(*v37.i8));
  }

  v46.i64[0] = 0x800000008;
  v46.i64[1] = 0x800000008;
  v47 = 0uLL;
  v48 = vandq_s8(vextq_s8(vtstq_s32(v12, v46), 0, 8uLL), v16);
  v46.i64[0] = vpaddq_s32(v48, v48).u64[0];
  v49.i64[0] = v46.u32[0];
  v49.i64[1] = v46.u32[1];
  v50 = v49;
  v51 = vaddvq_s64(v49);
  v52 = v10 + v51;
  if (v51 <= 0x80 && v7 >= v52)
  {
    v54 = v10 & 0x3F;
    v55 = vaddq_s64(vdupq_n_s64(v54), vzip1q_s64(0, v50));
    v56 = (v5 + 8 * (v10 >> 6));
    v47 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
    if (v54 + v51 >= 0x81)
    {
      v47 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v47);
    }

    v10 = v52;
  }

  else
  {
    v26 = 1;
  }

  v57 = v345.i8[0] & 3;
  if (v57 == 2)
  {
    v58 = v10 + 32;
    if (v7 >= v10 + 16)
    {
      v10 += 16;
    }

    else
    {
      v26 = 1;
      v58 = v10 + 16;
    }

    if (v7 >= v58)
    {
      v10 = v58;
    }

    else
    {
      v26 = 1;
    }
  }

  v59 = 0uLL;
  v60 = vextq_s8(0, v39, 8uLL);
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v10 + v64;
  if (v64 <= 0x80 && v7 >= v65)
  {
    v68 = v10 & 0x3F;
    v69 = vaddq_s64(vdupq_n_s64(v68), vzip1q_s64(0, v63));
    v70 = (v5 + 8 * (v10 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v67);
    }

    v10 = v65;
  }

  else
  {
    v26 = 1;
    v67 = 0uLL;
  }

  v71 = vpaddq_s32(v39, v39).u64[0];
  v72.i64[0] = v71;
  v72.i64[1] = HIDWORD(v71);
  v73 = v72;
  v74 = vaddvq_s64(v72);
  v75 = v10 + v74;
  if (v74 <= 0x80 && v7 >= v75)
  {
    v77 = v10 & 0x3F;
    v78 = vaddq_s64(vdupq_n_s64(v77), vzip1q_s64(0, v73));
    v79 = (v5 + 8 * (v10 >> 6));
    v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
    if (v77 + v74 >= 0x81)
    {
      v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v59);
    }

    v10 = v75;
  }

  else
  {
    v26 = 1;
  }

  v80 = v10 + v74;
  v81 = 0uLL;
  if (v74 <= 0x80 && v7 >= v80)
  {
    v84 = v10 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v73));
    v86 = (v5 + 8 * (v10 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v74 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v83);
    }

    v10 = v80;
  }

  else
  {
    v26 = 1;
    v83 = 0uLL;
  }

  v87 = v10 + v74;
  if (v74 <= 0x80 && v7 >= v87)
  {
    v89 = v10 & 0x3F;
    v90 = vaddq_s64(vdupq_n_s64(v89), vzip1q_s64(0, v73));
    v91 = (v5 + 8 * (v10 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v90)));
    if (v89 + v74 >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v81);
    }

    v10 = v87;
  }

  else
  {
    v26 = 1;
  }

  v92 = vpaddq_s32(v40, v40).u64[0];
  v93.i64[0] = v92;
  v93.i64[1] = HIDWORD(v92);
  v94 = v93;
  v95 = vaddvq_s64(v93);
  v96 = v10 + v95;
  v97 = 0uLL;
  if (v95 <= 0x80 && v7 >= v96)
  {
    v100 = v10 & 0x3F;
    v101 = vaddq_s64(vdupq_n_s64(v100), vzip1q_s64(0, v94));
    v102 = (v5 + 8 * (v10 >> 6));
    v99 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v102, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v101)), vshlq_u64(vdupq_lane_s64(v102->i64[0], 0), vnegq_s64(v101)));
    if (v100 + v95 >= 0x81)
    {
      v99 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v102[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v101)), vshlq_u64(vdupq_laneq_s64(v102[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v101))), v99);
    }

    v10 = v96;
  }

  else
  {
    v26 = 1;
    v99 = 0uLL;
  }

  v103 = v10 + v95;
  if (v95 <= 0x80 && v7 >= v103)
  {
    v105 = v10 & 0x3F;
    v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v94));
    v107 = (v5 + 8 * (v10 >> 6));
    v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v105 + v95 >= 0x81)
    {
      v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v97);
    }

    v10 = v103;
  }

  else
  {
    v26 = 1;
  }

  v108 = 0uLL;
  if (v95 > 0x80 || (v109 = v10 + v95, v7 < v10 + v95))
  {
    v26 = 1;
    v109 = v10;
    v113 = 0uLL;
  }

  else
  {
    v110 = v10 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v94));
    v112 = (v5 + 8 * (v10 >> 6));
    v113 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v95 >= 0x81)
    {
      v113 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v113);
    }
  }

  if (v95 > 0x80 || (v114 = v109 + v95, v7 < v109 + v95))
  {
    v117 = v39;
    v26 = 1;
    v114 = v109;
  }

  else
  {
    v115 = vaddq_s64(vdupq_n_s64(v109 & 0x3F), vzip1q_s64(0, v94));
    v116 = (v5 + 8 * (v109 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v115)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v115)));
    v117 = v39;
    if ((v109 & 0x3F) + v95 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v115)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v115))), v108);
    }
  }

  v118 = v41;
  v119 = vpaddq_s32(v41, v41).u64[0];
  v120.i64[0] = v119;
  v120.i64[1] = HIDWORD(v119);
  v121 = v120;
  v122 = vaddvq_s64(v120);
  v123 = v122;
  v124 = 0uLL;
  if (v122 > 0x80 || (v125 = v114 + v122, v7 < v114 + v122))
  {
    v26 = 1;
    v125 = v114;
    v128 = 0uLL;
  }

  else
  {
    v126 = vaddq_s64(vdupq_n_s64(v114 & 0x3F), vzip1q_s64(0, v121));
    v127 = (v5 + 8 * (v114 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if ((v114 & 0x3F) + v123 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v128);
    }
  }

  if (v123 > 0x80 || (v129 = v125 + v123, v7 < v125 + v123))
  {
    v26 = 1;
    v129 = v125;
  }

  else
  {
    v130 = vaddq_s64(vdupq_n_s64(v125 & 0x3F), vzip1q_s64(0, v121));
    v131 = (v5 + 8 * (v125 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if ((v125 & 0x3F) + v123 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v124);
    }
  }

  v132 = 0uLL;
  if (v123 > 0x80 || (v133 = v129 + v123, v7 < v129 + v123))
  {
    v26 = 1;
    v133 = v129;
    v137 = 0uLL;
  }

  else
  {
    v134 = v129 & 0x3F;
    v135 = vaddq_s64(vdupq_n_s64(v134), vzip1q_s64(0, v121));
    v136 = (v5 + 8 * (v129 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v134 + v123 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v137);
    }
  }

  if (v123 > 0x80 || (v138 = v133 + v123, v7 < v133 + v123))
  {
    v26 = 1;
    v138 = v133;
  }

  else
  {
    v139 = v133 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v121));
    v141 = (v5 + 8 * (v133 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v123 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v132);
    }
  }

  v142 = vpaddq_s32(v42, v42).u64[0];
  v143.i64[0] = v142;
  v143.i64[1] = HIDWORD(v142);
  v144 = v143;
  v145 = vaddvq_s64(v143);
  v146 = v145;
  v147 = 0uLL;
  if (v145 > 0x80 || (v148 = v138 + v145, v7 < v138 + v145))
  {
    v26 = 1;
    v148 = v138;
    v152 = 0uLL;
  }

  else
  {
    v149 = v138 & 0x3F;
    v150 = vaddq_s64(vdupq_n_s64(v149), vzip1q_s64(0, v144));
    v151 = (v5 + 8 * (v138 >> 6));
    v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v149 + v146 >= 0x81)
    {
      v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
    }
  }

  if (v146 > 0x80 || (v153 = v148 + v146, v7 < v148 + v146))
  {
    v26 = 1;
    v153 = v148;
  }

  else
  {
    v154 = v148 & 0x3F;
    v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v144));
    v156 = (v5 + 8 * (v148 >> 6));
    v147 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if (v154 + v146 >= 0x81)
    {
      v147 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v147);
    }
  }

  v157 = 0uLL;
  if (v146 > 0x80 || (v158 = v153 + v146, v7 < v153 + v146))
  {
    v26 = 1;
    v158 = v153;
  }

  else
  {
    v159 = v153 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v144));
    v161 = (v5 + 8 * (v153 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v146 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v157);
    }
  }

  if (v146 > 0x80 || v7 < v158 + v146)
  {
    goto LABEL_134;
  }

  v162 = v4 + 20;
  v163 = vzip1_s32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v165 = (v5 + ((v162 >> 3) & 8));
  v166 = vnegq_s64(v164);
  v167.i64[0] = 0x2000000020;
  v167.i64[1] = 0x2000000020;
  v168.i64[0] = 0x1F0000001FLL;
  v168.i64[1] = 0x1F0000001FLL;
  v169 = vsubq_s32(v167, v42);
  v170 = vaddq_s32(v42, v168);
  v171 = vaddq_s64(vdupq_n_s64(v158 & 0x3F), vzip1q_s64(0, v144));
  v172 = (v5 + 8 * (v158 >> 6));
  v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
  if ((v158 & 0x3F) + v146 < 0x81)
  {
    if ((v26 & 1) == 0)
    {
      v174 = v43;
      v178 = vshlq_u64(v173, v166);
      v177 = vuzp1q_s32(vzip1q_s64(v173, v178), vzip2q_s64(v173, v178));
      goto LABEL_132;
    }

LABEL_134:
    v180 = 0;
    *&v181 = 0xFFFFFFFFLL;
    *(&v181 + 1) = 0xFFFFFFFFLL;
    *a1 = v181;
    *(a1 + 16) = v181;
    v182 = (a1 + a2);
    *v182 = v181;
    v182[1] = v181;
    return v180;
  }

  if (v26)
  {
    goto LABEL_134;
  }

  v174 = v43;
  v175 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
  v176 = vshlq_u64(v175, v166);
  v177 = vuzp1q_s32(vzip1q_s64(v175, v176), vzip2q_s64(v175, v176));
LABEL_132:
  v179 = vshlq_s32(vshlq_s32(v177, v169), v170);
  v180 = a4 + 1;
  if (v7 + 8 * v180 - (v158 + v146) - 1024 >= 9 || v57 == 2)
  {
    goto LABEL_134;
  }

  v322 = v12;
  v340 = v174;
  v341 = v179;
  v184 = vzip1_s32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
  v185.i64[0] = v184.u32[0];
  v185.i64[1] = v184.u32[1];
  v186 = vshlq_u64(v47, vnegq_s64(v185));
  v187 = vzip2q_s64(v47, v186);
  v336 = vzip1q_s64(v47, v186);
  v338 = v48;
  v188 = v60;
  *v186.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v185.i64[0] = v186.u32[0];
  v185.i64[1] = v186.u32[1];
  v189 = vshlq_u64(v67, vnegq_s64(v185));
  v332 = vzip1q_s64(v67, v189);
  v334 = vzip2q_s64(v67, v189);
  v339 = v14;
  v190 = v117;
  v191 = vzip1_s32(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
  v185.i64[0] = v191.u32[0];
  v185.i64[1] = v191.u32[1];
  v192 = vnegq_s64(v185);
  v193 = vshlq_u64(v59, v192);
  v330 = vzip1q_s64(v59, v193);
  v331 = vzip2q_s64(v59, v193);
  v194 = vshlq_u64(v83, v192);
  v328 = vzip1q_s64(v83, v194);
  v329 = vzip2q_s64(v83, v194);
  v195 = vshlq_u64(v81, v192);
  v326 = vzip1q_s64(v81, v195);
  v327 = vzip2q_s64(v81, v195);
  v196 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
  v185.i64[0] = v196.u32[0];
  v185.i64[1] = v196.u32[1];
  v197 = vnegq_s64(v185);
  v198 = vshlq_u64(v99, v197);
  v324 = vzip1q_s64(v99, v198);
  v325 = vzip2q_s64(v99, v198);
  v199 = vshlq_u64(v97, v197);
  v323 = vzip2q_s64(v97, v199);
  v200 = vzip1q_s64(v97, v199);
  v201 = vshlq_u64(v113, v197);
  v202 = vzip2q_s64(v113, v201);
  v203 = vzip1q_s64(v113, v201);
  v204 = vshlq_u64(v108, v197);
  v205 = vzip2q_s64(v108, v204);
  v206 = vzip1q_s64(v108, v204);
  v207 = v118;
  v208 = vzip1_s32(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
  v185.i64[0] = v208.u32[0];
  v185.i64[1] = v208.u32[1];
  v209 = vnegq_s64(v185);
  v210 = vshlq_u64(v128, v209);
  v211 = vzip2q_s64(v128, v210);
  v212 = vzip1q_s64(v128, v210);
  v213 = vshlq_u64(v124, v209);
  v214 = vzip2q_s64(v124, v213);
  v215 = vzip1q_s64(v124, v213);
  v216 = vshlq_u64(v137, v209);
  v217 = vzip2q_s64(v137, v216);
  v218 = vzip1q_s64(v137, v216);
  v219 = vshlq_u64(v132, v209);
  v220 = vzip2q_s64(v132, v219);
  v221 = vzip1q_s64(v132, v219);
  v222 = vshlq_u64(v152, v166);
  v223 = v40;
  v224 = vzip2q_s64(v152, v222);
  v225 = vzip1q_s64(v152, v222);
  v226 = vshlq_u64(v147, v166);
  v227 = vzip2q_s64(v147, v226);
  v228 = vzip1q_s64(v147, v226);
  v229 = vuzp1q_s32(v336, v187);
  v230 = vuzp1q_s32(v332, v334);
  v231 = vuzp1q_s32(v200, v323);
  v232 = vuzp1q_s32(v203, v202);
  v233 = vuzp1q_s32(v206, v205);
  v335 = vuzp1q_s32(v215, v214);
  v337 = vuzp1q_s32(v212, v211);
  v333 = vuzp1q_s32(v218, v217);
  v234 = vuzp1q_s32(v221, v220);
  v235 = vuzp1q_s32(v225, v224);
  v211.i64[0] = 0x2000000020;
  v211.i64[1] = 0x2000000020;
  v200.i64[0] = 0x1F0000001FLL;
  v200.i64[1] = 0x1F0000001FLL;
  v203.i64[0] = 0x2000000020;
  v203.i64[1] = 0x2000000020;
  v236 = vshlq_s32(v230, vsubq_s32(v203, v188));
  v237 = vsubq_s32(v203, v190);
  v221.i64[0] = 0x1F0000001FLL;
  v221.i64[1] = 0x1F0000001FLL;
  v238 = vaddq_s32(v188, v221);
  v239 = vaddq_s32(v190, v221);
  v221.i64[0] = 0x2000000020;
  v221.i64[1] = 0x2000000020;
  v240 = vsubq_s32(v221, v223);
  v215.i64[0] = 0x1F0000001FLL;
  v215.i64[1] = 0x1F0000001FLL;
  v241 = vaddq_s32(v223, v215);
  v242 = vshlq_s32(vuzp1q_s32(v324, v325), v240);
  v243 = vshlq_s32(v231, v240);
  v244 = vshlq_s32(v232, v240);
  v245 = vshlq_s32(v233, v240);
  v240.i64[0] = 0x2000000020;
  v240.i64[1] = 0x2000000020;
  v246 = vsubq_s32(v240, v207);
  v218.i64[0] = 0x1F0000001FLL;
  v218.i64[1] = 0x1F0000001FLL;
  v247 = vaddq_s32(v207, v218);
  v248 = vshlq_s32(v337, v246);
  v249 = vshlq_s32(v335, v246);
  v250 = vshlq_s32(v333, v246);
  v251 = vshlq_s32(v234, v246);
  v252 = vshlq_s32(vshlq_s32(v229, vsubq_s32(v211, v338)), vaddq_s32(v338, v200));
  v253 = vshlq_s32(v236, v238);
  v254 = vshlq_s32(vshlq_s32(vuzp1q_s32(v330, v331), v237), v239);
  v255 = vshlq_s32(vshlq_s32(vuzp1q_s32(v328, v329), v237), v239);
  v256 = vshlq_s32(vshlq_s32(vuzp1q_s32(v326, v327), v237), v239);
  v257 = vshlq_s32(v242, v241);
  v258 = vshlq_s32(v243, v241);
  v259 = vshlq_s32(v244, v241);
  v260 = vshlq_s32(v245, v241);
  v261 = vshlq_s32(v248, v247);
  v262 = vshlq_s32(v251, v247);
  v263 = vshlq_u64(v157, v166);
  v264 = vshlq_s32(vshlq_s32(v235, v169), v170);
  v265 = vshlq_s32(vshlq_s32(vuzp1q_s32(v228, v227), v169), v170);
  v266 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v157, v263), vzip2q_s64(v157, v263)), v169), v170);
  v267 = vaddq_s32(vandq_s8(v252, v343), v253);
  v268 = vdupq_lane_s64(v252.i64[0], 0);
  v269 = vandq_s8(v268, v344);
  v270 = vsubq_s32(v257, v269);
  v271 = vsubq_s32(v258, v269);
  v272 = vsubq_s32(v259, v269);
  v273 = vsubq_s32(v260, v269);
  v274 = vandq_s8(v268, v340);
  v275 = vsubq_s32(v261, v274);
  v276 = vsubq_s32(vshlq_s32(v249, v247), v274);
  v277 = vsubq_s32(vshlq_s32(v250, v247), v274);
  v278 = vandq_s8(v268, v343);
  v279 = vsubq_s32(v262, v274);
  v280 = vandq_s8(v268, v342);
  v281 = vsubq_s32(v264, v280);
  v282 = vsubq_s32(v265, v280);
  v283 = vsubq_s32(v266, v280);
  v284 = vsubq_s32(v341, v280);
  v285.i64[0] = 0x100000001;
  v285.i64[1] = 0x100000001;
  v286 = vsubq_s32(v254, v278);
  v287 = vsubq_s32(v255, v278);
  v288 = vuzp1_s16(v345, v345);
  v289 = vsubq_s32(v267, v278);
  v290 = vsubq_s32(v256, v278);
  v291 = vdupq_n_s64(((2 * v165[1]) << ~v162) | (*v165 >> v162));
  if (vaddvq_s32(vceqq_s32(v339, v285)))
  {
    v292 = vnegq_s32(vandq_s8(v322, v285));
    v293.i64[0] = v290.i64[0];
    v294.i64[1] = v289.i64[1];
    v293.i64[1] = v289.i64[0];
    v294.i64[0] = v290.i64[1];
    v295 = vbslq_s8(v292, v294, v289);
    v296 = vbslq_s8(v292, v293, v290);
    v297.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v297.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v298 = vandq_s8(vqtbl4q_s8(*(&v286 - 1), v297), v292);
    v346 = v288;
    v347.val[0] = vaddq_s32(v295, vandq_s8(vqtbl4q_s8(*(&v286 - 1), xmmword_29D2F10B0), v292));
    v347.val[1] = vaddq_s32(v286, vandq_s8(vqtbl4q_s8(*(&v286 - 1), xmmword_29D2F10C0), v292));
    v347.val[2] = vaddq_s32(v287, v298);
    v347.val[3] = vaddq_s32(v296, v298);
    v299 = vandq_s8(vqtbl4q_s8(v347, v297), v292);
    v289 = vaddq_s32(v347.val[0], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F10D0), v292));
    v286 = vaddq_s32(v347.val[1], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F10E0), v292));
    v287 = vaddq_s32(v347.val[2], v299);
    v290 = vaddq_s32(v347.val[3], v299);
    v348.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v270.i8, xmmword_29D2F10B0), v292), v270);
    v348.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v270.i8, xmmword_29D2F10F0), v292), v271);
    v348.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v270.i8, v297), v292), v272);
    v348.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v270.i8, xmmword_29D2F1100), v292), v273);
    v300 = vandq_s8(vqtbl4q_s8(v348, xmmword_29D2F10D0), v292);
    v347.val[0] = vandq_s8(vqtbl4q_s8(v348, v297), v292);
    v270 = vaddq_s32(v300, v348.val[0]);
    v271 = vaddq_s32(v348.val[1], v300);
    v272 = vaddq_s32(v348.val[2], v347.val[0]);
    v273 = vaddq_s32(v348.val[3], v347.val[0]);
    v347.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v275.i8, xmmword_29D2F0EB0), v292), v275);
    v347.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v275.i8, xmmword_29D2F0FB0), v292), v276);
    v347.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v275.i8, xmmword_29D2F10B0), v292), v277);
    v347.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v275.i8, xmmword_29D2F10C0), v292), v279);
    v348.val[2] = vandq_s8(vqtbl4q_s8(v347, v297), v292);
    v275 = vaddq_s32(v347.val[0], v348.val[2]);
    v276 = vaddq_s32(v347.val[1], v348.val[2]);
    v277 = vaddq_s32(v347.val[2], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F0FE0), v292));
    v279 = vaddq_s32(v347.val[3], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F1110), v292));
    v301 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v281.i8, xmmword_29D2F0EB0), v292), v281);
    v347.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v281.i8, xmmword_29D2F1120), v292), v282);
    v347.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v281.i8, xmmword_29D2F10B0), v292), v283);
    v347.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v281.i8, xmmword_29D2F10C0), v292), v284);
    v302 = vandq_s8(vqtbl4q_s8(v347, v297), v292);
    v281 = vaddq_s32(v301, v302);
    v282 = vaddq_s32(v347.val[0], v302);
    v283 = vaddq_s32(v347.val[1], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F0FE0), v292));
    v284 = vaddq_s32(v347.val[2], vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F1130), v292));
    v288 = v346;
  }

  v303 = vaddq_s32(v291, v289);
  v304 = vaddq_s32(v286, v291);
  v305 = vaddq_s32(v287, v291);
  v306 = vaddq_s32(v290, v291);
  v307 = vaddq_s32(v270, v291);
  v308 = vaddq_s32(v271, v291);
  v309 = vaddq_s32(v272, v291);
  v310 = vaddq_s32(v273, v291);
  v311 = vaddq_s32(v275, v291);
  v312 = vaddq_s32(v276, v291);
  v313 = vaddq_s32(v277, v291);
  v314 = vaddq_s32(v279, v291);
  v315 = vaddq_s32(v281, v291);
  v316 = vaddq_s32(v282, v291);
  v317 = vaddq_s32(v283, v291);
  v318 = vaddq_s32(v284, v291);
  v319 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v288 & 0xFF00FF00FF00FFLL)));
  v320 = (a1 + 64);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v303, xmmword_29D2F11B0), v319), v303);
  *(a1 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v304, xmmword_29D2F11B0), v319), v304);
  *(a1 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v305, xmmword_29D2F11B0), v319), v305);
  *(a1 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v306, xmmword_29D2F11B0), v319), v306);
  v321 = (a1 + a2);
  *v320 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v311, xmmword_29D2F11B0), v319), v311);
  v320[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v312, xmmword_29D2F11B0), v319), v312);
  v320[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v313, xmmword_29D2F11B0), v319), v313);
  v320[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v314, xmmword_29D2F11B0), v319), v314);
  *v321 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v307, xmmword_29D2F11B0), v319), v307);
  v321[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v308, xmmword_29D2F11B0), v319), v308);
  v321[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v309, xmmword_29D2F11B0), v319), v309);
  v321[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v310, xmmword_29D2F11B0), v319), v310);
  v321 += 4;
  *v321 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v315, xmmword_29D2F11B0), v319), v315);
  v321[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v316, xmmword_29D2F11B0), v319), v316);
  v321[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v317, xmmword_29D2F11B0), v319), v317);
  v321[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v318, xmmword_29D2F11B0), v319), v318);
  return v180;
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(__n128 *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v30, a5);
  }

  v29 = v30;
  v27 = v32;
  v28 = v31;
  v26 = v33;
  v10 = a3 + 32;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v30, a5);
  }

  v24 = v31;
  v25 = v30;
  v22 = v33;
  v23 = v32;
  v11 = a3 + 64;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v30, a5);
  }

  v20 = v31;
  v21 = v30;
  v18 = v33;
  v19 = v32;
  v12 = a3 + 96;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v30, a5);
  }

  v13 = (a1 + a2);
  result = v30;
  v15 = v31;
  v16 = v32;
  v17 = v33;
  *a1 = v29;
  a1[1] = v28;
  a1[2] = v27;
  a1[3] = v26;
  a1[4] = v21;
  a1[5] = v20;
  a1[6] = v19;
  a1[7] = v18;
  *v13 = v25;
  v13[1] = v24;
  v13[2] = v23;
  v13[3] = v22;
  v13[4] = result;
  v13[5] = v15;
  v13[6] = v16;
  v13[7] = v17;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 128, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 128, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 128, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 128, a2, v32, v31, a7);
}

void AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, const double *a2, _BYTE *a3, int a4)
{
  v8 = 16;
  v9 = &byte_29D2F2FE5;
  do
  {
    v11 = a1 + (*v9 << 9) + (*(v9 - 1) << 7);
    v12 = *a3;
    if (*a3)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 7)
        {
          v13 = vld1q_dup_f64(a2);
          *v11 = v13;
          *(v11 + 16) = v13;
          *(v11 + 32) = v13;
          *(v11 + 48) = v13;
          *(v11 + 64) = v13;
          *(v11 + 80) = v13;
          *(v11 + 96) = v13;
          *(v11 + 112) = v13;
          *(v11 + 256) = v13;
          *(v11 + 272) = v13;
          *(v11 + 288) = v13;
          *(v11 + 304) = v13;
          *(v11 + 320) = v13;
          *(v11 + 336) = v13;
          *(v11 + 352) = v13;
          *(v11 + 368) = v13;
          v10 = 8;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 256, a2, v12);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 256, a2, v12, a4);
        v10 = 128;
      }
    }

    else
    {
      v10 = 0;
      *(v11 + 96) = 0u;
      *(v11 + 112) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 256) = 0u;
      *(v11 + 272) = 0u;
      *(v11 + 288) = 0u;
      *(v11 + 304) = 0u;
      *(v11 + 320) = 0u;
      *(v11 + 336) = 0u;
      *(v11 + 352) = 0u;
      *(v11 + 368) = 0u;
    }

    a2 = (a2 + v10);
    ++a3;
    v9 += 2;
    v8 -= 2;
  }

  while (v8);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *(a3 + 80);
  v8 = vdupq_lane_s64(*a3, 0);
  v551 = *(a3 + 48);
  v550 = *(a3 + 112);
  v572 = vsubq_s32(*a3, v8);
  v573 = vsubq_s32(*(a3 + 32), v8);
  v569 = vsubq_s32(*(a3 + 16), v8);
  v563 = vsubq_s32(v551, v8);
  v9 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v572, v569), v573), v563), xmmword_29D2F11C0);
  v10 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v572, v569), v573), v563), xmmword_29D2F11C0);
  v11 = vpmaxq_s32(v9, v9);
  v12 = vpminq_s32(v10, v10);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v13 = vmaxq_s32(v11, v10);
  v14 = vminq_s32(v12, v10);
  v15 = vzip1q_s32(v11, v12);
  v16.i64[0] = 0x2000000020;
  v16.i64[1] = 0x2000000020;
  v17 = vbicq_s8(vsubq_s32(v16, vclsq_s32(v15)), vceqzq_s32(v15));
  v570 = vsubq_s32(*(a3 + 64), v8);
  v571 = vsubq_s32(v7, v8);
  v18 = vsubq_s32(*(a3 + 96), v8);
  v565 = vsubq_s32(v550, v8);
  v19 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v570, v571), v18), v565), xmmword_29D2F11C0);
  v20 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v570, v571), v18), v565), xmmword_29D2F11C0);
  v21 = vpmaxq_s32(v19, v19);
  v22 = vpminq_s32(v20, v20);
  v23 = vmaxq_s32(v13, v21);
  v24 = vminq_s32(v14, v22);
  v25 = vzip1q_s32(v21, v22);
  v26 = vbicq_s8(vsubq_s32(v16, vclsq_s32(v25)), vceqzq_s32(v25));
  v27 = *(a3 + a4 + 32);
  v28 = *(a3 + a4 + 16);
  v29 = *(a3 + a4);
  v30 = vsubq_s32(v28, v8);
  v31 = vsubq_s32(v27, v8);
  v548 = *(a3 + a4 + 48);
  v32 = vsubq_s32(v548, v8);
  v567 = vsubq_s32(v29, v8);
  v33 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v567, v30), v31), v32), xmmword_29D2F11C0);
  v34 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v567, v30), v31), v32), xmmword_29D2F11C0);
  v35 = vpmaxq_s32(v33, v33);
  v36 = vpminq_s32(v34, v34);
  v37 = vminq_s32(v24, v36);
  v38 = vzip1q_s32(v35, v36);
  v39 = vbicq_s8(vsubq_s32(v16, vclsq_s32(v38)), vceqzq_s32(v38));
  v40 = vsubq_s32(*(a3 + a4 + 80), v8);
  v545 = *(a3 + a4 + 96);
  v41 = vsubq_s32(v545, v8);
  v547 = *(a3 + a4 + 112);
  v42 = vsubq_s32(v547, v8);
  v559 = vsubq_s32(*(a3 + a4 + 64), v8);
  v43 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v559, v40), v41), v42), xmmword_29D2F11C0);
  v44 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v559, v40), v41), v42), xmmword_29D2F11C0);
  v45 = vpmaxq_s32(v43, v43);
  v46 = vpminq_s32(v44, v44);
  v47 = vmaxq_s32(vmaxq_s32(v23, v35), v45);
  v48 = vminq_s32(v37, v46);
  v49 = vzip1q_s32(v45, v46);
  v50 = vbicq_s8(vsubq_s32(v16, vclsq_s32(v49)), vceqzq_s32(v49));
  v51 = vpmaxq_s32(v17, v17);
  v52 = vpmaxq_s32(v26, v26);
  v53 = vpmaxq_s32(v39, v39);
  v54 = vpmaxq_s32(v50, v50);
  v55 = vmaxq_s32(vmaxq_s32(v51, v52), vmaxq_s32(v53, v54));
  v56 = vclzq_s32(vsubq_s32(v47, v48));
  v57 = vsubq_s32(v16, v56);
  v58 = vminq_s32(v57, v55);
  if (vmaxvq_s32(v58))
  {
    v59 = vcgtq_s32(v55, v57);
    v60.i64[0] = 0x800000008;
    v60.i64[1] = 0x800000008;
    v61.i64[0] = 0x300000003;
    v61.i64[1] = 0x300000003;
    v62 = vorrq_s8(vandq_s8(vceqzq_s32(v58), v61), vandq_s8(v59, v60));
    v63 = vsubq_s32(v58, v51);
    v64.i64[0] = 0xF0000000FLL;
    v64.i64[1] = 0xF0000000FLL;
    v540 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v52), v64), 0);
    v542 = v59;
    v556 = v42;
    v535 = vmaxq_s32(vminq_s32(v63, v64), 0);
    v537 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v53), v64), 0);
    v530 = vmaxq_s32(vminq_s32(vsubq_s32(v58, v54), v64), 0);
    v61.i64[0] = 0x400000004;
    v61.i64[1] = 0x400000004;
    v561 = vorrq_s8(vbicq_s8(v61, vceqq_s32(vaddq_s32(v530, v537), vnegq_s32(vaddq_s32(v535, v540)))), v62);
    v533 = v48;
    v59.i64[0] = 0x2000000020;
    v59.i64[1] = 0x2000000020;
    v552 = v18;
    v554 = v41;
    v65 = vsubq_s32(v18, vqtbl1q_s8(v18, xmmword_29D2F11B0));
    v526 = vsubq_s32(v569, vqtbl1q_s8(v569, xmmword_29D2F11B0));
    v528 = vsubq_s32(v572, vqtbl1q_s8(v572, xmmword_29D2F11B0));
    v522 = vsubq_s32(v570, vqtbl1q_s8(v570, xmmword_29D2F11B0));
    v524 = vsubq_s32(v573, vqtbl1q_s8(v573, xmmword_29D2F11B0));
    v507 = vsubq_s32(v563, vqtbl1q_s8(v563, xmmword_29D2F11B0));
    v66 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v528, v526), v524), v507), xmmword_29D2F11C0);
    v67 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v528, v526), v524), v507), xmmword_29D2F11C0);
    v68 = vpmaxq_s32(v66, v66);
    v69 = vpminq_s32(v67, v67);
    v70.i64[0] = 0x8000000080000000;
    v70.i64[1] = 0x8000000080000000;
    v71 = vmaxq_s32(v68, v70);
    v72.i64[0] = 0x8000000080000000;
    v72.i64[1] = 0x8000000080000000;
    v73 = vminq_s32(v69, v72);
    v74 = vzip1q_s32(v68, v69);
    v75 = vbicq_s8(vsubq_s32(v59, vclsq_s32(v74)), vceqzq_s32(v74));
    v520 = vsubq_s32(v571, vqtbl1q_s8(v571, xmmword_29D2F11B0));
    v516 = vsubq_s32(v567, vqtbl1q_s8(v567, xmmword_29D2F11B0));
    v517 = vsubq_s32(v565, vqtbl1q_s8(v565, xmmword_29D2F11B0));
    v76 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v522, v520), v65), v517), xmmword_29D2F11C0);
    v77 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v522, v520), v65), v517), xmmword_29D2F11C0);
    v78 = vpmaxq_s32(v76, v76);
    v79 = vpminq_s32(v77, v77);
    v80 = vmaxq_s32(v71, v78);
    v81 = vminq_s32(v73, v79);
    v82 = vzip1q_s32(v78, v79);
    v83 = vbicq_s8(vsubq_s32(v59, vclsq_s32(v82)), vceqzq_s32(v82));
    v515 = vsubq_s32(v30, vqtbl1q_s8(v30, xmmword_29D2F11B0));
    v509 = vsubq_s32(v32, vqtbl1q_s8(v32, xmmword_29D2F11B0));
    v510 = vsubq_s32(v31, vqtbl1q_s8(v31, xmmword_29D2F11B0));
    v84 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v516, v515), v510), v509), xmmword_29D2F11C0);
    v85 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v516, v515), v510), v509), xmmword_29D2F11C0);
    v86 = vpmaxq_s32(v84, v84);
    v87 = vpminq_s32(v85, v85);
    v562 = v30;
    v88 = vmaxq_s32(v80, v86);
    v558 = v31;
    v89 = vminq_s32(v81, v87);
    v90 = vzip1q_s32(v86, v87);
    v91 = vbicq_s8(vsubq_s32(v59, vclsq_s32(v90)), vceqzq_s32(v90));
    v92 = v559;
    v93 = v32;
    v513 = vsubq_s32(v40, vqtbl1q_s8(v40, xmmword_29D2F11B0));
    v514 = vsubq_s32(v559, vqtbl1q_s8(v559, xmmword_29D2F11B0));
    v511 = vsubq_s32(v556, vqtbl1q_s8(v556, xmmword_29D2F11B0));
    v512 = vsubq_s32(v554, vqtbl1q_s8(v554, xmmword_29D2F11B0));
    v94 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v514, v513), v512), v511), xmmword_29D2F11C0);
    v95 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v514, v513), v512), v511), xmmword_29D2F11C0);
    v96 = vpmaxq_s32(v94, v94);
    v97 = vpminq_s32(v95, v95);
    v98 = vmaxq_s32(v88, v96);
    v99 = vminq_s32(v89, v97);
    v100 = vzip1q_s32(v96, v97);
    v101 = vbicq_s8(vsubq_s32(v59, vclsq_s32(v100)), vceqzq_s32(v100));
    v102 = vpmaxq_s32(v75, v75);
    v103 = vpmaxq_s32(v83, v83);
    v104 = vpmaxq_s32(v91, v91);
    v105 = vpmaxq_s32(v101, v101);
    v106 = vmaxq_s32(vmaxq_s32(v102, v103), vmaxq_s32(v104, v105));
    v508 = v99;
    v107 = vsubq_s32(v98, v99);
    v506 = vclzq_s32(v107);
    v108 = vsubq_s32(v59, v506);
    v109 = vcgtq_s32(v106, v108);
    v110 = vminq_s32(v108, v106);
    v106.i64[0] = 0x1000000010;
    v106.i64[1] = 0x1000000010;
    v98.i64[0] = 0x1800000018;
    v98.i64[1] = 0x1800000018;
    v59.i64[0] = 0x300000003;
    v59.i64[1] = 0x300000003;
    v111 = vorrq_s8(vandq_s8(vceqzq_s32(v110), v59), vbslq_s8(v109, v98, v106));
    v112 = vminq_s32(vsubq_s32(v110, v102), v64);
    v113 = vminq_s32(vsubq_s32(v110, v103), v64);
    v114 = vminq_s32(vsubq_s32(v110, v104), v64);
    v115 = vminq_s32(vsubq_s32(v110, v105), v64);
    v116 = vmaxq_s32(v112, 0);
    v117 = vmaxq_s32(v113, 0);
    v118 = vmaxq_s32(v114, 0);
    v119 = vmaxq_s32(v115, 0);
    v90.i64[0] = 0x400000004;
    v90.i64[1] = 0x400000004;
    v120 = vbicq_s8(v90, vceqq_s32(vaddq_s32(v119, v118), vnegq_s32(vaddq_s32(v116, v117))));
    v505 = vorrq_s8(v120, v111);
    *v120.i8 = vqmovn_u32(v505);
    v111.i64[0] = 0x8000800080008;
    v111.i64[1] = 0x8000800080008;
    *v107.i8 = vqmovn_u32(v110);
    v115.i64[0] = 0x10001000100010;
    v115.i64[1] = 0x10001000100010;
    v104.i64[0] = 0x3000300030003;
    v104.i64[1] = 0x3000300030003;
    v121.i64[0] = 0x2000200020002;
    v121.i64[1] = 0x2000200020002;
    v122.i64[0] = 0x20002000200020;
    v122.i64[1] = 0x20002000200020;
    v123 = vaddq_s16(vaddq_s16(vbicq_s8(v107, vceqzq_s16(vandq_s8(v120, v111))), vandq_s8(vshlq_n_s16(v120, 2uLL), v115)), vandq_s8(vceqq_s16(vandq_s8(v120, v104), v121), v122));
    v124 = vsubq_s32(v110, v116);
    *v116.i8 = vqmovn_u32(v124);
    v125 = v40;
    v90.i64[0] = 0x7000700070007;
    v90.i64[1] = 0x7000700070007;
    v126 = vmlaq_s16(v123, v116, v90);
    *v116.i8 = vqmovn_u32(v561);
    *v40.i8 = vqmovn_u32(v58);
    v127 = vbicq_s8(v40, vceqzq_s16(vandq_s8(v116, v111)));
    v128 = vaddq_s16(vaddq_s16(v127, vandq_s8(vshlq_n_s16(v116, 2uLL), v115)), vandq_s8(vceqq_s16(vandq_s8(v116, v104), v121), v122));
    v129 = vsubq_s32(v58, v535);
    *v127.i8 = vqmovn_u32(v129);
    v130 = vmlaq_s16(v128, v127, v90);
    v127.i64[0] = 0x1F0000001FLL;
    v127.i64[1] = 0x1F0000001FLL;
    v116.i64[0] = -1;
    v116.i64[1] = -1;
    v131 = vandq_s8(vsubq_s32(vshlq_s32(v116, vsubq_s32(v127, v56)), v533), v542);
    v132 = vsubq_s32(v110, v117);
    v133 = vsubq_s32(v110, v118);
    v134 = vsubq_s32(v110, v119);
    v135 = vaddq_s32(vaddq_s32(v133, v132), v134);
    *v135.i8 = vqmovn_u32(v135);
    v136 = vaddq_s16(v126, vshlq_n_s16(v135, 3uLL));
    v137 = vsubq_s32(v58, v540);
    v138 = vsubq_s32(v58, v537);
    v139 = vsubq_s32(v58, v530);
    v140 = vaddq_s32(vaddq_s32(v138, v137), v139);
    *v140.i8 = vqmovn_u32(v140);
    v141 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v130, vshlq_n_s16(v140, 3uLL)), v136)).i64[0], 0);
    v142 = vaddvq_s32(v141);
    if (a5)
    {
      v143 = a6 == 0;
    }

    else
    {
      v143 = 1;
    }

    v144 = v143;
    if (v142)
    {
      v145.i64[0] = 0x1F0000001FLL;
      v145.i64[1] = 0x1F0000001FLL;
      v146.i64[0] = -1;
      v146.i64[1] = -1;
      v147 = vandq_s8(vsubq_s32(vshlq_s32(v146, vsubq_s32(v145, v506)), v508), v109);
      v148 = vcltzq_s32(vshlq_n_s32(v141, 0x1FuLL));
      v572 = vbslq_s8(v148, v528, v572);
      v569 = vbslq_s8(v148, v526, v569);
      v573 = vbslq_s8(v148, v524, v573);
      v149 = vbslq_s8(v148, v507, v563);
      v570 = vbslq_s8(v148, v522, v570);
      v571 = vbslq_s8(v148, v520, v571);
      v150 = vbslq_s8(v148, v65, v552);
      v151 = vbslq_s8(v148, v517, v565);
      v152 = vbslq_s8(v148, v516, v567);
      v562 = vbslq_s8(v148, v515, v562);
      v558 = vbslq_s8(v148, v510, v558);
      v153 = vbslq_s8(v148, v509, v93);
      v154 = vbslq_s8(v148, v514, v559);
      v125 = vbslq_s8(v148, v513, v125);
      v155 = vbslq_s8(v148, v512, v554);
      v541 = vbslq_s8(v148, v124, v129);
      v543 = vbslq_s8(v148, v132, v137);
      v138 = vbslq_s8(v148, v133, v138);
      v156 = vbslq_s8(v148, v134, v139);
      v157 = vbslq_s8(v148, v147, v131);
      v158 = vbslq_s8(v148, v110, v58);
      v561 = vbslq_s8(v148, v505, v561);
      v8 = vsubq_s32(v8, vandq_s8(vqtbl1q_s8(v8, xmmword_29D2F11B0), v148));
      v159 = vbslq_s8(v148, v511, v556);
      v160 = v155;
      v92 = v154;
      v161 = v153;
      v162 = v152;
      v163 = v151;
      v164 = v149;
    }

    else
    {
      v541 = v129;
      v543 = v137;
      v159 = v556;
      v160 = v554;
      v161 = v93;
      v158 = v58;
      v163 = v565;
      v162 = v567;
      v156 = v139;
      v150 = v552;
      v157 = v131;
      v164 = v563;
    }

    v166 = v138;
    v167 = *(a3 + 64);
    v168 = *(a3 + 96);
    if (v144)
    {
      v169 = v125;
      v170 = v160;
      v171 = v558;
      v172 = v570;
      v173 = v571;
      v174 = v569;
      v176 = v541;
      v175 = v543;
      v177 = v561;
    }

    else
    {
      v529 = v8;
      v564 = v164;
      v531 = v157;
      v553 = v150;
      v566 = v163;
      v568 = v162;
      v532 = v161;
      v560 = v92;
      v534 = v125;
      v555 = v160;
      v557 = v159;
      v574 = *a3;
      v525 = v156;
      v178 = *(a3 + 112);
      v179 = *(a3 + 56);
      v180 = vqtbl4q_s8(*(&v7 - 1), xmmword_29D2F1100);
      v538 = vsubq_s32(*(a3 + 80), vqtbl4q_s8(*(&v7 - 1), xmmword_29D2F10F0));
      v539 = vsubq_s32(*(a3 + 64), vqtbl4q_s8(*(&v7 - 1), xmmword_29D2F10B0));
      v521 = vsubq_s32(*(a3 + 96), vqtbl4q_s8(*(&v7 - 1), xmmword_29D2F1160));
      v523 = v158;
      v181 = vqtbl4q_s8(*a3, xmmword_29D2F1160);
      v182 = vsubq_s32(*a3, vqtbl4q_s8(*a3, xmmword_29D2F10B0));
      v183 = vsubq_s32(v574.val[1], vqtbl4q_s8(*a3, xmmword_29D2F10C0));
      v184 = vsubq_s32(v551, v181);
      v185 = *(a3 + a4 + 48);
      v186 = *(a3 + 56);
      v187 = vsubq_s32(v550, v180);
      v527 = v138;
      v188 = vqtbl4q_s8(*v29.i8, xmmword_29D2F10C0);
      v549 = vsubq_s32(v29, vqtbl4q_s8(*v29.i8, xmmword_29D2F1170));
      v536 = vsubq_s32(v28, vqtbl4q_s8(*v29.i8, xmmword_29D2F1180));
      v189 = vsubq_s32(v27, vqtbl4q_s8(*v29.i8, xmmword_29D2F10B0));
      v190 = vsubq_s32(v548, v188);
      v575.val[0] = *(a3 + a4 + 64);
      v575.val[1] = *(a3 + a4 + 80);
      v575.val[2] = *(a3 + a4 + 96);
      v575.val[3].i64[0] = *(a3 + a4 + 112);
      v575.val[3].i64[1] = v186;
      v191 = vqtbl4q_s8(v575, xmmword_29D2F10C0);
      v192 = vsubq_s32(v575.val[0], vqtbl4q_s8(v575, xmmword_29D2F1170));
      v193 = vsubq_s32(v575.val[1], vqtbl4q_s8(v575, xmmword_29D2F1120));
      v194 = vsubq_s32(v545, vqtbl4q_s8(v575, xmmword_29D2F10B0));
      v195.i64[0] = v184.i64[0];
      v195.i64[1] = v182.i64[0];
      v182.i64[0] = v184.i64[1];
      v196 = vsubq_s32(v547, v191);
      v519 = v182;
      v546 = vsubq_s32(v574.val[2], v181);
      v574.val[0] = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v182, v183), v546), v195), xmmword_29D2F11C0);
      v574.val[1] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v182, v183), v546), v195), xmmword_29D2F11C0);
      v574.val[0] = vpmaxq_s32(v574.val[0], v574.val[0]);
      v574.val[1] = vpminq_s32(v574.val[1], v574.val[1]);
      v575.val[2].i64[0] = 0x8000000080000000;
      v575.val[2].i64[1] = 0x8000000080000000;
      v575.val[2] = vmaxq_s32(v574.val[0], v575.val[2]);
      v575.val[3].i64[0] = 0x8000000080000000;
      v575.val[3].i64[1] = 0x8000000080000000;
      v575.val[3] = vminq_s32(v574.val[1], v575.val[3]);
      v574.val[0] = vzip1q_s32(v574.val[0], v574.val[1]);
      v574.val[1].i64[0] = 0x2000000020;
      v574.val[1].i64[1] = 0x2000000020;
      v197 = vbicq_s8(vsubq_s32(v574.val[1], vclsq_s32(v574.val[0])), vceqzq_s32(v574.val[0]));
      v198 = vpmaxq_s32(v197, v197);
      v544 = v187;
      v199 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v539, v538), v521), v187), xmmword_29D2F11C0);
      v200 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v539, v538), v521), v187), xmmword_29D2F11C0);
      v201 = vpmaxq_s32(v199, v199);
      v202 = vpminq_s32(v200, v200);
      v575.val[2] = vmaxq_s32(v575.val[2], v201);
      v575.val[3] = vminq_s32(v575.val[3], v202);
      v203 = vzip1q_s32(v201, v202);
      v204 = vbicq_s8(vsubq_s32(v574.val[1], vclsq_s32(v203)), vceqzq_s32(v203));
      v205 = vpmaxq_s32(v204, v204);
      v518 = v189;
      v206 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v549, v536), v189), v190), xmmword_29D2F11C0);
      v207 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v549, v536), v189), v190), xmmword_29D2F11C0);
      v208 = vpmaxq_s32(v206, v206);
      v209 = vpminq_s32(v207, v207);
      v575.val[2] = vmaxq_s32(v575.val[2], v208);
      v575.val[3] = vminq_s32(v575.val[3], v209);
      v210 = vzip1q_s32(v208, v209);
      v211 = vbicq_s8(vsubq_s32(v574.val[1], vclsq_s32(v210)), vceqzq_s32(v210));
      v212 = vpmaxq_s32(v211, v211);
      v213 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v192, v193), v194), v196), xmmword_29D2F11C0);
      v214 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v192, v193), v194), v196), xmmword_29D2F11C0);
      v215 = vpmaxq_s32(v213, v213);
      v216 = vpminq_s32(v214, v214);
      v217 = vmaxq_s32(v575.val[2], v215);
      v218 = vminq_s32(v575.val[3], v216);
      v575.val[3] = vzip1q_s32(v215, v216);
      v575.val[3] = vbicq_s8(vsubq_s32(v574.val[1], vclsq_s32(v575.val[3])), vceqzq_s32(v575.val[3]));
      v219 = vpmaxq_s32(v575.val[3], v575.val[3]);
      v220 = vmaxq_s32(vmaxq_s32(v198, v205), vmaxq_s32(v212, v219));
      v221 = vclzq_s32(vsubq_s32(v217, v218));
      v574.val[1] = vsubq_s32(v574.val[1], v221);
      v222 = vcgtq_s32(v220, v574.val[1]);
      v223 = vminq_s32(v574.val[1], v220);
      v220.i64[0] = 0x900000009;
      v220.i64[1] = 0x900000009;
      v224.i64[0] = 0x200000002;
      v224.i64[1] = 0x200000002;
      v225 = vorrq_s8(vandq_s8(vceqzq_s32(v223), v224), vsubq_s32(vandq_s8(v222, v220), vmvnq_s8(v222)));
      v224.i64[0] = 0xF0000000FLL;
      v224.i64[1] = 0xF0000000FLL;
      v226 = vmaxq_s32(vminq_s32(vsubq_s32(v223, v198), v224), 0);
      v227 = vmaxq_s32(vminq_s32(vsubq_s32(v223, v205), v224), 0);
      v228 = vmaxq_s32(vminq_s32(vsubq_s32(v223, v212), v224), 0);
      v574.val[0] = vmaxq_s32(vminq_s32(vsubq_s32(v223, v219), v224), 0);
      v229 = vsubq_s32(v223, v226);
      v212.i64[0] = 0x400000004;
      v212.i64[1] = 0x400000004;
      v230 = vorrq_s8(vbicq_s8(v212, vceqq_s32(vaddq_s32(v574.val[0], v228), vnegq_s32(vaddq_s32(v226, v227)))), v225);
      *v212.i8 = vqmovn_u32(v230);
      v225.i64[0] = 0x8000800080008;
      v225.i64[1] = 0x8000800080008;
      *v224.i8 = vqmovn_u32(v223);
      v226.i64[0] = 0x2000200020002;
      v226.i64[1] = 0x2000200020002;
      v168.i64[0] = 0x10001000100010;
      v168.i64[1] = 0x10001000100010;
      v231.i64[0] = 0x3000300030003;
      v231.i64[1] = 0x3000300030003;
      v232 = vaddq_s16(vbicq_s8(v224, vceqzq_s16(vandq_s8(v212, v225))), vandq_s8(vshlq_n_s16(v212, 2uLL), v168));
      v224.i64[0] = 0x20002000200020;
      v224.i64[1] = 0x20002000200020;
      v233 = vaddq_s16(v232, vandq_s8(vceqq_s16(vandq_s8(v212, v231), v226), v224));
      *v232.i8 = vqmovn_u32(v229);
      v167.i64[0] = 0x7000700070007;
      v167.i64[1] = 0x7000700070007;
      v234 = vmlaq_s16(v233, v232, v167);
      v177 = v561;
      *v232.i8 = vqmovn_u32(v561);
      *v574.val[2].i8 = vqmovn_u32(v523);
      v574.val[2] = vbicq_s8(v574.val[2], vceqzq_s16(vandq_s8(v232, v225)));
      v235 = vandq_s8(vshlq_n_s16(v232, 2uLL), v168);
      v156 = v525;
      v168.i64[1] = v138.i64[1];
      v574.val[2] = vaddq_s16(vaddq_s16(v574.val[2], v235), vandq_s8(vceqq_s16(vandq_s8(v232, v231), v226), v224));
      v176 = v541;
      v175 = v543;
      *v235.i8 = vqmovn_u32(v541);
      v574.val[2] = vmlaq_s16(v574.val[2], v235, v167);
      v236 = vsubq_s32(v223, v227);
      v237 = vsubq_s32(v223, v228);
      v238 = vsubq_s32(v223, v574.val[0]);
      v239 = vaddq_s32(vaddq_s32(v237, v236), v238);
      *v239.i8 = vqmovn_u32(v239);
      v240 = vaddq_s16(v234, vshlq_n_s16(v239, 3uLL));
      v241 = vaddq_s32(vaddq_s32(v138, v543), v525);
      *v241.i8 = vqmovn_u32(v241);
      v167 = vmovl_s16(*&vcgtq_s16(vaddq_s16(v574.val[2], vshlq_n_s16(v241, 3uLL)), v240));
      v242 = vdupq_lane_s64(v167.i64[0], 0);
      if (vaddvq_s32(v242))
      {
        v243.i64[0] = 0x1F0000001FLL;
        v243.i64[1] = 0x1F0000001FLL;
        v244 = vsubq_s32(v243, v221);
        v245.i64[0] = -1;
        v245.i64[1] = -1;
        v246 = vandq_s8(vsubq_s32(vshlq_s32(v245, v244), v218), v222);
        v247 = vcltzq_s32(vshlq_n_s32(v242, 0x1FuLL));
        v8.i64[0] = vbslq_s8(v247, vextq_s8(v551, v551, 8uLL), v529).u64[0];
        v572 = vbslq_s8(v247, v519, v572);
        v174 = vbslq_s8(v247, v183, v569);
        v573 = vbslq_s8(v247, v546, v573);
        v168 = vbslq_s8(v247, v195, v564);
        v172 = vbslq_s8(v247, v539, v570);
        v173 = vbslq_s8(v247, v538, v571);
        v150 = vbslq_s8(v247, v521, v553);
        v163 = vbslq_s8(v247, v544, v566);
        v162 = vbslq_s8(v247, v549, v568);
        v562 = vbslq_s8(v247, v536, v562);
        v161 = vbslq_s8(v247, v190, v532);
        v169 = vbslq_s8(v247, v193, v534);
        v170 = vbslq_s8(v247, v194, v555);
        v171 = vbslq_s8(v247, v518, v558);
        v167 = vbslq_s8(v247, v196, v557);
        v176 = vbslq_s8(v247, v229, v541);
        v175 = vbslq_s8(v247, v236, v543);
        v164 = v168;
        v166 = vbslq_s8(v247, v237, v527);
        v156 = vbslq_s8(v247, v238, v525);
        v157 = vbslq_s8(v247, v246, v531);
        v158 = vbslq_s8(v247, v223, v523);
        v177 = vbslq_s8(v247, v230, v561);
        v92 = vbslq_s8(v247, v192, v560);
        v159 = v167;
      }

      else
      {
        v170 = v555;
        v159 = v557;
        v161 = v532;
        v169 = v534;
        v92 = v560;
        v158 = v523;
        v171 = v558;
        v163 = v566;
        v162 = v568;
        v150 = v553;
        v8.i64[0] = v529.i64[0];
        v157 = v531;
        v172 = v570;
        v173 = v571;
        v164 = v564;
        v166 = v527;
        v174 = v569;
      }
    }

    *v167.i8 = vqmovn_u32(v177);
    v248.i64[0] = 0x8000800080008;
    v248.i64[1] = 0x8000800080008;
    *v168.i8 = vqmovn_u32(v158);
    v249 = vbicq_s8(v168, vceqzq_s16(vandq_s8(v167, v248)));
    v250.i64[0] = 0x2000200020002;
    v250.i64[1] = 0x2000200020002;
    v251.i64[0] = 0x10001000100010;
    v251.i64[1] = 0x10001000100010;
    v252 = vandq_s8(vshlq_n_s16(v167, 2uLL), v251);
    v251.i64[0] = 0x3000300030003;
    v251.i64[1] = 0x3000300030003;
    v253 = vceqq_s16(vandq_s8(v167, v251), v250);
    v250.i64[0] = 0x20002000200020;
    v250.i64[1] = 0x20002000200020;
    v254 = vandq_s8(v253, v250);
    *v250.i8 = vqmovn_u32(v176);
    v251.i64[0] = 0x7000700070007;
    v251.i64[1] = 0x7000700070007;
    v255 = vaddq_s32(vaddq_s32(v166, v175), v156);
    *v255.i8 = vqmovn_u32(v255);
    v256 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v249, v252), v254), v250, v251), vshlq_n_s16(v255, 3uLL));
    if ((vpaddq_s16(v256, v256).i16[0] - 941) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
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
      if (v158.i32[0])
      {
        v260 = ((v158.i16[0] << 10) + 31744) & 0x7C00;
      }

      else
      {
        v260 = 0;
      }

      if (v158.i32[1])
      {
        v261 = ((v158.i32[1] << 15) + 1015808) & 0xF8000;
      }

      else
      {
        v261 = 0;
      }

      v262 = v177.i8[0] & 0x1F | (32 * (v177.i8[4] & 0x1F)) | v260 | v261;
      v263 = (v262 << v258) | v259;
      if (v258 >= 0x2C)
      {
        *v257 = v263;
        v263 = v262 >> (-8 * (a1 & 7u));
      }

      v264 = (v258 + 20) & 0x3C;
      *(v257 + (((v258 + 20) >> 3) & 8)) = v263 | (v8.i64[0] << v264);
      v265 = v258 + 84;
      v266 = vsubq_s32(v158, v176);
      v267 = vsubq_s32(v158, v175);
      v268 = vsubq_s32(v158, v166);
      v269 = vsubq_s32(v158, v156);
      *v266.i8 = vqmovn_u32(v266);
      *v266.i8 = vqmovn_u16(v266);
      *v267.i8 = vqmovn_u32(v267);
      *v267.i8 = vqmovn_u16(v267);
      *v268.i8 = vqmovn_u32(v268);
      *v268.i8 = vqmovn_u16(v268);
      *v269.i8 = vqmovn_u32(v269);
      *v269.i8 = vqmovn_u16(v269);
      v266.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v266, v267), vzip1q_s8(v268, v269)), vzip1q_s16(vtrn2q_s8(v266, v267), vtrn2q_s8(v268, v269))).u64[0];
      v267.i64[0] = 0x400000004;
      v267.i64[1] = 0x400000004;
      v268.i64[0] = 0x404040404040404;
      v268.i64[1] = 0x404040404040404;
      v270 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v177, v267))), v268);
      v268.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v268.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v271 = vandq_s8(vshlq_u8(v269, vorrq_s8(v270, v268)), v266.u64[0]);
      v272 = vmovl_u8(*v270.i8);
      v273 = vpaddq_s16(vshlq_u16(vmovl_u8(*v271.i8), vtrn1q_s16(0, v272)), vmovl_high_u8(v271));
      v274 = vpaddq_s16(v272, vmovl_high_u8(v270));
      v275 = vmovl_u16(*v274.i8);
      v276 = vmovl_high_u16(v274);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v276)));
      v278 = vpaddq_s32(v275, v276);
      v279.i64[0] = v277.u32[0];
      v279.i64[1] = v277.u32[1];
      v280 = v279;
      v279.i64[0] = v277.u32[2];
      v279.i64[1] = v277.u32[3];
      v281 = v279;
      v279.i64[0] = v278.u32[0];
      v279.i64[1] = v278.u32[1];
      v282 = v279;
      v279.i64[0] = v278.u32[2];
      v279.i64[1] = v278.u32[3];
      v283 = vpaddq_s64(vshlq_u64(v280, vzip1q_s64(0, v282)), vshlq_u64(v281, vzip1q_s64(0, v279)));
      v284 = vpaddq_s64(v282, v279);
      v285 = (v258 + 84) & 0x3C;
      v286 = (v283.i64[0] << v285) | (v8.i64[0] >> -v264);
      if ((v284.i64[0] + v285) >= 0x40)
      {
        *(v257 + ((v265 >> 3) & 0x18)) = v286;
        v286 = v283.i64[0] >> -v285;
      }

      v287 = vceqq_s32(v158, v176);
      v288 = v284.i64[0] + v265;
      v289 = v286 | (v283.i64[1] << v288);
      if ((v288 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v257 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v289;
        v289 = v283.i64[1] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v289 = 0;
        }
      }

      v290 = vandq_s8(v157, v287);
      v291 = v288 + v284.i64[1];
      v292.i64[0] = 0x800000008;
      v292.i64[1] = 0x800000008;
      v293 = vandq_s8(vextq_s8(vtstq_s32(v177, v292), 0, 8uLL), v158);
      v294.i64[0] = 0x1F0000001FLL;
      v294.i64[1] = 0x1F0000001FLL;
      v295.i64[0] = -1;
      v295.i64[1] = -1;
      v296 = vandq_s8(vshlq_u32(v295, vaddq_s32(v293, v294)), v157);
      v297.i64[0] = v296.u32[0];
      v297.i64[1] = v296.u32[1];
      v298 = v297;
      v297.i64[0] = v296.u32[2];
      v297.i64[1] = v296.u32[3];
      v299 = v297;
      v297.i64[0] = v293.u32[0];
      v297.i64[1] = v293.u32[1];
      v300 = v297;
      v301 = vzip1q_s64(0, v297);
      v297.i64[0] = v293.u32[2];
      v297.i64[1] = v293.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v298, v301), vshlq_u64(v299, 0));
      v303 = vpaddq_s64(v300, v297);
      v304 = (v302.i64[0] << v291) | v289;
      if (v303.i64[0] + (v291 & 0x3F) >= 0x40)
      {
        *(v257 + ((v291 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v291 & 0x3F);
        if ((v291 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vaddq_s32(v290, v572);
      v306 = v303.i64[0] + v291;
      v307 = v304 | (v302.i64[1] << v306);
      if ((v306 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v257 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v302.i64[1] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v307 = 0;
        }
      }

      v308 = v306 + v303.i64[1];
      v309 = vextq_s8(0, v176, 8uLL);
      v310.i64[0] = 0x1F0000001FLL;
      v310.i64[1] = 0x1F0000001FLL;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vshlq_u32(v311, vaddq_s32(v309, v310)), v305);
      v313.i64[0] = v312.u32[0];
      v313.i64[1] = v312.u32[1];
      v314 = v313;
      v313.i64[0] = v312.u32[2];
      v313.i64[1] = v312.u32[3];
      v315 = v313;
      v313.i64[0] = v309.u32[2];
      v313.i64[1] = v309.u32[3];
      v316 = v313;
      v317 = vzip1q_s64(0, v313);
      v313.i64[0] = v309.u32[0];
      v313.i64[1] = v309.u32[1];
      v318 = vpaddq_s64(vshlq_u64(v314, 0), vshlq_u64(v315, v317));
      v319 = vpaddq_s64(v313, v316);
      v320 = (v318.i64[0] << v308) | v307;
      if (v319.i64[0] + (v308 & 0x3F) >= 0x40)
      {
        *(v257 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v308 & 0x3F);
        if ((v308 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = vaddq_s32(v174, v290);
      v322 = v319.i64[0] + v308;
      v323 = v320 | (v318.i64[1] << v322);
      if ((v322 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v257 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v318.i64[1] >> -(v322 & 0x3F);
        if ((v322 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = v322 + v319.i64[1];
      v325.i64[0] = 0x1F0000001FLL;
      v325.i64[1] = 0x1F0000001FLL;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vshlq_u32(v326, vaddq_s32(v176, v325));
      v328 = vandq_s8(v327, v321);
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v330 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v331 = v329;
      v329.i64[0] = v176.u32[0];
      v329.i64[1] = v176.u32[1];
      v332 = v329;
      v329.i64[0] = v176.u32[2];
      v329.i64[1] = v176.u32[3];
      v333 = vzip1q_s64(0, v332);
      v334 = vzip1q_s64(0, v329);
      v335 = vpaddq_s64(vshlq_u64(v330, v333), vshlq_u64(v331, v334));
      v336 = vpaddq_s64(v332, v329);
      v337 = v336.i64[0];
      v338 = (v335.i64[0] << v324) | v323;
      if (v336.i64[0] + (v324 & 0x3F) >= 0x40)
      {
        *(v257 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        if ((v324 & 0x3F) != 0)
        {
          v338 = v335.i64[0] >> -(v324 & 0x3F);
        }

        else
        {
          v338 = 0;
        }
      }

      v339 = vaddq_s32(v573, v290);
      v340 = v336.i64[1];
      v341 = v336.i64[0] + v324;
      v342 = v338 | (v335.i64[1] << v341);
      if ((v341 & 0x3F) + v336.i64[1] >= 0x40)
      {
        *(v257 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v335.i64[1] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341 + v336.i64[1];
      v344 = vandq_s8(v327, v339);
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v346 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v347 = vpaddq_s64(vshlq_u64(v346, v333), vshlq_u64(v345, v334));
      v348 = (v347.i64[0] << v343) | v342;
      if (v336.i64[0] + (v343 & 0x3F) >= 0x40)
      {
        *(v257 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v347.i64[0] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = vceqq_s32(v158, v175);
      v350 = vaddq_s32(v164, v290);
      v351 = v337 + v343;
      v352 = v348 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v340 >= 0x40)
      {
        *(v257 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = vandq_s8(v157, v349);
      v354 = v351 + v340;
      v355 = vandq_s8(v327, v350);
      v356.i64[0] = v355.u32[0];
      v356.i64[1] = v355.u32[1];
      v357 = v356;
      v356.i64[0] = v355.u32[2];
      v356.i64[1] = v355.u32[3];
      v358 = vpaddq_s64(vshlq_u64(v357, v333), vshlq_u64(v356, v334));
      v359 = (v358.i64[0] << v354) | v352;
      if (v337 + (v354 & 0x3F) >= 0x40)
      {
        *(v257 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v358.i64[0] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = vaddq_s32(v172, v353);
      v361 = v337 + v354;
      v362 = v359 | (v358.i64[1] << v361);
      if ((v361 & 0x3F) + v340 >= 0x40)
      {
        *(v257 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
        v362 = v358.i64[1] >> -(v361 & 0x3F);
        if ((v361 & 0x3F) == 0)
        {
          v362 = 0;
        }
      }

      v363 = v361 + v340;
      v364.i64[0] = 0x1F0000001FLL;
      v364.i64[1] = 0x1F0000001FLL;
      v365.i64[0] = -1;
      v365.i64[1] = -1;
      v366 = vshlq_u32(v365, vaddq_s32(v175, v364));
      v367 = vandq_s8(v366, v360);
      v368.i64[0] = v367.u32[0];
      v368.i64[1] = v367.u32[1];
      v369 = v368;
      v368.i64[0] = v367.u32[2];
      v368.i64[1] = v367.u32[3];
      v370 = v368;
      v368.i64[0] = v175.u32[0];
      v368.i64[1] = v175.u32[1];
      v371 = v368;
      v368.i64[0] = v175.u32[2];
      v368.i64[1] = v175.u32[3];
      v372 = vzip1q_s64(0, v371);
      v373 = vzip1q_s64(0, v368);
      v374 = vpaddq_s64(vshlq_u64(v369, v372), vshlq_u64(v370, v373));
      v375 = vpaddq_s64(v371, v368);
      v376 = v375.i64[0];
      v377 = (v374.i64[0] << v363) | v362;
      if (v375.i64[0] + (v363 & 0x3F) >= 0x40)
      {
        *(v257 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        if ((v363 & 0x3F) != 0)
        {
          v377 = v374.i64[0] >> -(v363 & 0x3F);
        }

        else
        {
          v377 = 0;
        }
      }

      v378 = vaddq_s32(v173, v353);
      v379 = v375.i64[1];
      v380 = v375.i64[0] + v363;
      v381 = v377 | (v374.i64[1] << v380);
      if ((v380 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v257 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
        v381 = v374.i64[1] >> -(v380 & 0x3F);
        if ((v380 & 0x3F) == 0)
        {
          v381 = 0;
        }
      }

      v382 = v380 + v375.i64[1];
      v383 = vandq_s8(v366, v378);
      v384.i64[0] = v383.u32[0];
      v384.i64[1] = v383.u32[1];
      v385 = v384;
      v384.i64[0] = v383.u32[2];
      v384.i64[1] = v383.u32[3];
      v386 = vpaddq_s64(vshlq_u64(v385, v372), vshlq_u64(v384, v373));
      v387 = (v386.i64[0] << v382) | v381;
      if (v375.i64[0] + (v382 & 0x3F) >= 0x40)
      {
        *(v257 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v386.i64[0] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = vaddq_s32(v150, v353);
      v389 = v375.i64[0] + v382;
      v390 = v387 | (v386.i64[1] << v389);
      if ((v389 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v257 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
        v390 = v386.i64[1] >> -(v389 & 0x3F);
        if ((v389 & 0x3F) == 0)
        {
          v390 = 0;
        }
      }

      v391 = v389 + v375.i64[1];
      v392 = vandq_s8(v366, v388);
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v394 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v395 = vpaddq_s64(vshlq_u64(v394, v372), vshlq_u64(v393, v373));
      v396 = (v395.i64[0] << v391) | v390;
      if (v375.i64[0] + (v391 & 0x3F) >= 0x40)
      {
        *(v257 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v395.i64[0] >> -(v391 & 0x3F);
        if ((v391 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = vceqq_s32(v158, v166);
      v398 = vaddq_s32(v163, v353);
      v399 = v376 + v391;
      v400 = v396 | (v395.i64[1] << v399);
      if ((v399 & 0x3F) + v379 >= 0x40)
      {
        *(v257 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
        v400 = v395.i64[1] >> -(v399 & 0x3F);
        if ((v399 & 0x3F) == 0)
        {
          v400 = 0;
        }
      }

      v401 = vandq_s8(v157, v397);
      v402 = v399 + v379;
      v403 = vandq_s8(v366, v398);
      v404.i64[0] = v403.u32[0];
      v404.i64[1] = v403.u32[1];
      v405 = v404;
      v404.i64[0] = v403.u32[2];
      v404.i64[1] = v403.u32[3];
      v406 = vpaddq_s64(vshlq_u64(v405, v372), vshlq_u64(v404, v373));
      v407 = (v406.i64[0] << v402) | v400;
      if (v376 + (v402 & 0x3F) >= 0x40)
      {
        *(v257 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
        v407 = v406.i64[0] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v407 = 0;
        }
      }

      v408 = vaddq_s32(v162, v401);
      v409 = v376 + v402;
      v410 = v407 | (v406.i64[1] << v409);
      if ((v409 & 0x3F) + v379 >= 0x40)
      {
        *(v257 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
        v410 = v406.i64[1] >> -(v409 & 0x3F);
        if ((v409 & 0x3F) == 0)
        {
          v410 = 0;
        }
      }

      v411 = v409 + v379;
      v412.i64[0] = 0x1F0000001FLL;
      v412.i64[1] = 0x1F0000001FLL;
      v413.i64[0] = -1;
      v413.i64[1] = -1;
      v414 = vshlq_u32(v413, vaddq_s32(v166, v412));
      v415 = vandq_s8(v414, v408);
      v416.i64[0] = v415.u32[0];
      v416.i64[1] = v415.u32[1];
      v417 = v416;
      v416.i64[0] = v415.u32[2];
      v416.i64[1] = v415.u32[3];
      v418 = v416;
      v416.i64[0] = v166.u32[0];
      v416.i64[1] = v166.u32[1];
      v419 = v416;
      v416.i64[0] = v166.u32[2];
      v416.i64[1] = v166.u32[3];
      v420 = vzip1q_s64(0, v419);
      v421 = vzip1q_s64(0, v416);
      v422 = vpaddq_s64(vshlq_u64(v417, v420), vshlq_u64(v418, v421));
      v423 = vpaddq_s64(v419, v416);
      v424 = v423.i64[0];
      v425 = (v422.i64[0] << v411) | v410;
      if (v423.i64[0] + (v411 & 0x3F) >= 0x40)
      {
        *(v257 + ((v411 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        if ((v411 & 0x3F) != 0)
        {
          v425 = v422.i64[0] >> -(v411 & 0x3F);
        }

        else
        {
          v425 = 0;
        }
      }

      v426 = vaddq_s32(v562, v401);
      v427 = v423.i64[1];
      v428 = v423.i64[0] + v411;
      v429 = v425 | (v422.i64[1] << v428);
      if ((v428 & 0x3F) + v423.i64[1] >= 0x40)
      {
        *(v257 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
        v429 = v422.i64[1] >> -(v428 & 0x3F);
        if ((v428 & 0x3F) == 0)
        {
          v429 = 0;
        }
      }

      v430 = v428 + v423.i64[1];
      v431 = vandq_s8(v414, v426);
      v432.i64[0] = v431.u32[0];
      v432.i64[1] = v431.u32[1];
      v433 = v432;
      v432.i64[0] = v431.u32[2];
      v432.i64[1] = v431.u32[3];
      v434 = vpaddq_s64(vshlq_u64(v433, v420), vshlq_u64(v432, v421));
      v435 = (v434.i64[0] << v430) | v429;
      if (v423.i64[0] + (v430 & 0x3F) >= 0x40)
      {
        *(v257 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
        v435 = v434.i64[0] >> -(v430 & 0x3F);
        if ((v430 & 0x3F) == 0)
        {
          v435 = 0;
        }
      }

      v436 = vaddq_s32(v171, v401);
      v437 = v423.i64[0] + v430;
      v438 = v435 | (v434.i64[1] << v437);
      if ((v437 & 0x3F) + v423.i64[1] >= 0x40)
      {
        *(v257 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
        v438 = v434.i64[1] >> -(v437 & 0x3F);
        if ((v437 & 0x3F) == 0)
        {
          v438 = 0;
        }
      }

      v439 = v437 + v423.i64[1];
      v440 = vandq_s8(v414, v436);
      v441.i64[0] = v440.u32[0];
      v441.i64[1] = v440.u32[1];
      v442 = v441;
      v441.i64[0] = v440.u32[2];
      v441.i64[1] = v440.u32[3];
      v443 = vpaddq_s64(vshlq_u64(v442, v420), vshlq_u64(v441, v421));
      v444 = (v443.i64[0] << v439) | v438;
      if (v423.i64[0] + (v439 & 0x3F) >= 0x40)
      {
        *(v257 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
        v444 = v443.i64[0] >> -(v439 & 0x3F);
        if ((v439 & 0x3F) == 0)
        {
          v444 = 0;
        }
      }

      v445 = vceqq_s32(v158, v156);
      v446 = vaddq_s32(v161, v401);
      v447 = v424 + v439;
      v448 = v444 | (v443.i64[1] << v447);
      if ((v447 & 0x3F) + v427 >= 0x40)
      {
        *(v257 + ((v447 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
        v448 = v443.i64[1] >> -(v447 & 0x3F);
        if ((v447 & 0x3F) == 0)
        {
          v448 = 0;
        }
      }

      v449 = vandq_s8(v157, v445);
      v450 = v447 + v427;
      v451 = vandq_s8(v414, v446);
      v452.i64[0] = v451.u32[0];
      v452.i64[1] = v451.u32[1];
      v453 = v452;
      v452.i64[0] = v451.u32[2];
      v452.i64[1] = v451.u32[3];
      v454 = vpaddq_s64(vshlq_u64(v453, v420), vshlq_u64(v452, v421));
      v455 = (v454.i64[0] << v450) | v448;
      if (v424 + (v450 & 0x3F) >= 0x40)
      {
        *(v257 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
        v455 = v454.i64[0] >> -(v450 & 0x3F);
        if ((v450 & 0x3F) == 0)
        {
          v455 = 0;
        }
      }

      v456 = vaddq_s32(v92, v449);
      v457 = v424 + v450;
      v458 = v455 | (v454.i64[1] << v457);
      if ((v457 & 0x3F) + v427 >= 0x40)
      {
        *(v257 + ((v457 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v458;
        v458 = v454.i64[1] >> -(v457 & 0x3F);
        if ((v457 & 0x3F) == 0)
        {
          v458 = 0;
        }
      }

      v459 = v457 + v427;
      v460.i64[0] = 0x1F0000001FLL;
      v460.i64[1] = 0x1F0000001FLL;
      v461.i64[0] = -1;
      v461.i64[1] = -1;
      v462 = vshlq_u32(v461, vaddq_s32(v156, v460));
      v463 = vandq_s8(v462, v456);
      v464.i64[0] = v463.u32[0];
      v464.i64[1] = v463.u32[1];
      v465 = v464;
      v464.i64[0] = v463.u32[2];
      v464.i64[1] = v463.u32[3];
      v466 = v464;
      v464.i64[0] = v156.u32[0];
      v464.i64[1] = v156.u32[1];
      v467 = v464;
      v464.i64[0] = v156.u32[2];
      v464.i64[1] = v156.u32[3];
      v468 = vzip1q_s64(0, v467);
      v469 = vzip1q_s64(0, v464);
      v470 = vpaddq_s64(vshlq_u64(v465, v468), vshlq_u64(v466, v469));
      v471 = vpaddq_s64(v467, v464);
      v472 = (v457 + v427) & 0x3F;
      v473 = (v470.i64[0] << (v457 + v427)) | v458;
      if ((v471.i64[0] + v472) > 0x3F)
      {
        *(v257 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
        if (v472)
        {
          v473 = v470.i64[0] >> -v472;
        }

        else
        {
          v473 = 0;
        }
      }

      v474 = vaddq_s32(v169, v449);
      v475 = v471.i64[0] + v459;
      v476 = v473 | (v470.i64[1] << v475);
      if ((v475 & 0x3F) + v471.i64[1] >= 0x40)
      {
        *(v257 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
        v476 = v470.i64[1] >> -(v475 & 0x3F);
        if ((v475 & 0x3F) == 0)
        {
          v476 = 0;
        }
      }

      v477 = v475 + v471.i64[1];
      v478 = vandq_s8(v462, v474);
      v479.i64[0] = v478.u32[0];
      v479.i64[1] = v478.u32[1];
      v480 = v479;
      v479.i64[0] = v478.u32[2];
      v479.i64[1] = v478.u32[3];
      v481 = vpaddq_s64(vshlq_u64(v480, v468), vshlq_u64(v479, v469));
      v482 = (v481.i64[0] << v477) | v476;
      if (v471.i64[0] + (v477 & 0x3F) >= 0x40)
      {
        *(v257 + ((v477 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
        v482 = v481.i64[0] >> -(v477 & 0x3F);
        if ((v477 & 0x3F) == 0)
        {
          v482 = 0;
        }
      }

      v483 = vaddq_s32(v170, v449);
      v484 = v471.i64[0] + v477;
      v485 = v482 | (v481.i64[1] << v484);
      if ((v484 & 0x3F) + v471.i64[1] >= 0x40)
      {
        *(v257 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
        v485 = v481.i64[1] >> -(v484 & 0x3F);
        if ((v484 & 0x3F) == 0)
        {
          v485 = 0;
        }
      }

      v486 = v484 + v471.i64[1];
      v487 = vandq_s8(v462, v483);
      v488.i64[0] = v487.u32[0];
      v488.i64[1] = v487.u32[1];
      v489 = v488;
      v488.i64[0] = v487.u32[2];
      v488.i64[1] = v487.u32[3];
      v490 = vpaddq_s64(vshlq_u64(v489, v468), vshlq_u64(v488, v469));
      v491 = (v490.i64[0] << v486) | v485;
      if (v471.i64[0] + (v486 & 0x3F) >= 0x40)
      {
        *(v257 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
        v491 = v490.i64[0] >> -(v486 & 0x3F);
        if ((v486 & 0x3F) == 0)
        {
          v491 = 0;
        }
      }

      v492 = vaddq_s32(v159, v449);
      v493 = v471.i64[0] + v486;
      v494 = v491 | (v490.i64[1] << v493);
      if ((v493 & 0x3F) + v471.i64[1] >= 0x40)
      {
        *(v257 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v494;
        v494 = v490.i64[1] >> -(v493 & 0x3F);
        if ((v493 & 0x3F) == 0)
        {
          v494 = 0;
        }
      }

      v495 = v493 + v471.i64[1];
      v496 = vandq_s8(v462, v492);
      v497.i64[0] = v496.u32[0];
      v497.i64[1] = v496.u32[1];
      v498 = v497;
      v497.i64[0] = v496.u32[2];
      v497.i64[1] = v496.u32[3];
      v499 = vpaddq_s64(vshlq_u64(v498, v468), vshlq_u64(v497, v469));
      v500 = (v499.i64[0] << v495) | v494;
      if (v471.i64[0] + (v495 & 0x3F) >= 0x40)
      {
        *(v257 + ((v495 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
        v500 = v499.i64[0] >> -(v495 & 0x3F);
        if ((v495 & 0x3F) == 0)
        {
          v500 = 0;
        }
      }

      v501 = v471.i64[0] + v495;
      v502 = (v471.i64[0] + v495) & 0x3F;
      v503 = v500 | (v499.i64[1] << (v471.i8[0] + v495));
      if ((v502 + v471.i64[1]) >= 0x40)
      {
        *(v257 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v503;
        v503 = v499.i64[1] >> -v502;
        if (!v502)
        {
          v503 = 0;
        }
      }

      v504 = v501 + v471.i64[1];
      if ((v504 & 0x3F) != 0)
      {
        *(v257 + ((v504 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v503;
      }

      result = (v504 - v258 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 7;
    return 8;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = 0;
  v99 = *MEMORY[0x29EDCA608];
  v97 = 0u;
  v98 = 0u;
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
      v34 = &v83 + 8 * (i & 0x3F);
      v35 = &v83 + 2 * ((4 * i) | 1u);
      v36 = &v83 + 2 * ((4 * i) | 2u);
      v37 = &v83 + 2 * ((4 * i) | 3u);
      do
      {
        v38 = v33[1];
        *&v34[v32 & 0x7F] = *v33;
        *&v35[v32 & 0x7F] = v38;
        v39 = (2 * v32) | 1u;
        v40 = v33[3];
        *(v34 + v39) = v33[2];
        *(v35 + v39) = v40;
        v41 = v33[5];
        *&v36[v32 & 0x7F] = v33[4];
        *&v37[v32 & 0x7F] = v41;
        v43 = v33[6];
        v42 = v33[7];
        v33 += 8;
        ++v32;
        *(v36 + v39) = v43;
        *(v37 + v39) = v42;
      }

      while (a5 != v32);
    }

    v28 = *(&v83 + 1);
    v30 = v83;
    v27 = *(&v85 + 1);
    v29 = v85;
    v24 = *(&v87 + 1);
    v26 = v87;
    v23 = *(&v89 + 1);
    v25 = v89;
    v20 = *(&v84 + 1);
    v22 = v84;
    v19 = *(&v86 + 1);
    v21 = v86;
    v16 = *(&v88 + 1);
    v18 = v88;
    v15 = *(&v90 + 1);
    v17 = v90;
    v12 = *(&v91 + 1);
    v14 = v91;
    v11 = *(&v93 + 1);
    v13 = v93;
    v8 = *(&v95 + 1);
    v10 = v95;
    v7 = *(&v97 + 1);
    v9 = v97;
  }

  v60 = v22;
  v61 = v17;
  v62 = v14;
  v64 = v10;
  v65 = v9;
  v66 = v12;
  v67 = v11;
  v68 = v13;
  v72 = v8;
  v75 = v30;
  v76 = v29;
  v63 = 2 * (a6 & 0x7F);
  v70 = 4 * (a5 & 0x3F);
  v77 = v28;
  v78 = v27;
  v79 = v26;
  v80 = v25;
  v81 = v24;
  v82 = v23;
  v45 = v19;
  v46 = 4 * (a5 != 0);
  v69 = 2 * (a6 != 0);
  v47 = v21;
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v75, a7, v46, v69);
  v75 = v60;
  v76 = v47;
  v77 = v20;
  v78 = v45;
  v79 = v18;
  v80 = v61;
  v50 = v63 - 2;
  if (v63 < 2)
  {
    v50 = 0;
  }

  if (a6 >= 2)
  {
    v51 = 2;
  }

  else
  {
    v51 = v50;
  }

  v81 = v16;
  v82 = v15;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v75, a7, v46, v51);
  v75 = v62;
  v76 = v68;
  v77 = v66;
  v78 = v67;
  v79 = v64;
  v80 = v65;
  v53 = v70 - 4;
  if (v70 < 4)
  {
    v53 = 0;
  }

  if (a5 >= 2)
  {
    v54 = 4;
  }

  else
  {
    v54 = v53;
  }

  v81 = v72;
  v82 = v7;
  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v75, a7, v54, v69);
  v75 = v92;
  v76 = v94;
  v77 = *(&v92 + 1);
  v78 = *(&v94 + 1);
  v79 = v96;
  v80 = v98;
  v81 = *(&v96 + 1);
  v82 = *(&v98 + 1);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v75, a7, v54, v51);
  if (v55)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if (v52)
  {
    v58 = 2;
  }

  else
  {
    v58 = 0;
  }

  if (result)
  {
    v59 = -8;
  }

  else
  {
    v59 = -16;
  }

  *a2 = v59 | v57 | v49 | v58;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x2D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x400;
  v8.i32[0] = v6;
  v8.i32[1] = (v6 >> 5) & 0x7FFF;
  *v9.i8 = vand_s8(v8, 0x1F0000001FLL);
  v10 = v4 + 84;
  v344 = *v9.i8;
  v9.i64[1] = v9.i64[0];
  v11.i64[0] = 0xFFFF0000FFFFLL;
  v11.i64[1] = 0xFFFF0000FFFFLL;
  v12 = vandq_s8(v9, v11);
  v11.i16[0] = (v6 >> 10) & 0x1F;
  v11.i16[1] = (v6 >> 15) & 0x1F;
  v11.i32[1] = v11.i32[0];
  v13 = vmovl_u16(vadd_s16(*v11.i8, 0x1000100010001));
  v14 = *&v12 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v15.i64[0] = 0x300000003;
  v15.i64[1] = 0x300000003;
  v16 = vbicq_s8(v13, vceqq_s32((*&v12 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v15));
  v15.i64[0] = 0x404040404040404;
  v15.i64[1] = 0x404040404040404;
  v17 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v12 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v15);
  if (vmaxvq_s8(v17) < 1)
  {
    v26 = 0;
    v44.i64[0] = -1;
    v44.i64[1] = -1;
    v341 = v44;
    v342 = v44;
    v42 = v16;
    v41 = v16;
    v40 = v16;
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v39 = v16;
    v45.i64[0] = -1;
    v45.i64[1] = -1;
    v343 = v45;
  }

  else
  {
    v18 = vmovl_u8(*&vpaddq_s8(v17, v17));
    v19 = vmovl_u16(*&vpaddq_s16(v18, v18));
    v20 = vpaddq_s32(v19, v19).u64[0];
    v21.i64[0] = v20;
    v21.i64[1] = HIDWORD(v20);
    v22 = v21;
    v23 = vaddvq_s64(v21);
    v24 = v10 + v23;
    v25 = v23 <= 0x80 && v7 >= v24;
    v26 = !v25;
    v27 = 0uLL;
    if (v25)
    {
      v28 = v10 & 0x3C;
      v29 = vaddq_s64(vdupq_n_s64(v28), vzip1q_s64(0, v22));
      v30 = (v5 + ((v10 >> 3) & 0x18));
      v27 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v30, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v29)), vshlq_u64(vdupq_lane_s64(v30->i64[0], 0), vnegq_s64(v29)));
      if (v28 + v23 >= 0x81)
      {
        v27 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v30[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v29)), vshlq_u64(vdupq_laneq_s64(v30[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v29))), v27);
      }

      v10 = v24;
    }

    v31 = vzip1_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    v33 = vshlq_u64(v27, vnegq_s64(v32));
    v34 = vuzp1q_s32(vzip1q_s64(v27, v33), vzip2q_s64(v27, v33));
    v35 = vshlq_u32(v34, vnegq_s32((*&v18 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v36 = vuzp1q_s16(vzip1q_s32(v34, v35), vzip2q_s32(v34, v35));
    v34.i64[0] = 0x101010101010101;
    v34.i64[1] = 0x101010101010101;
    *v37.i8 = vand_s8(vadd_s8(*&vshlq_s8(v34, v17), -1), vmovn_s16(vzip1q_s16(v36, vshlq_u16(v36, vnegq_s16(vmovl_u8(vuzp1_s8(*v17.i8, v8)))))));
    v37.i64[1] = v37.i64[0];
    *v37.i8 = vqtbl1_s8(v37, 0x703060205010400);
    v36.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 0)).u64[0];
    v34.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 1)).u64[0];
    v38 = vmovl_s8(vdup_lane_s16(*v37.i8, 2)).u64[0];
    v37.i64[0] = vmovl_s8(vdup_lane_s16(*v37.i8, 3)).u64[0];
    v39 = vsubw_s16(v16, *v36.i8);
    v40 = vsubw_s16(v16, *v34.i8);
    v41 = vsubw_s16(v16, v38);
    v42 = vsubw_s16(v16, *v37.i8);
    v342 = vmovl_s16(vceqz_s16(*v36.i8));
    v343 = vmovl_s16(vceqz_s16(*v34.i8));
    v43 = vmovl_s16(vceqz_s16(v38));
    v341 = vmovl_s16(vceqz_s16(*v37.i8));
  }

  v46.i64[0] = 0x800000008;
  v46.i64[1] = 0x800000008;
  v47 = 0uLL;
  v48 = vandq_s8(vextq_s8(vtstq_s32(v12, v46), 0, 8uLL), v16);
  v46.i64[0] = vpaddq_s32(v48, v48).u64[0];
  v49.i64[0] = v46.u32[0];
  v49.i64[1] = v46.u32[1];
  v50 = v49;
  v51 = vaddvq_s64(v49);
  v52 = v10 + v51;
  if (v51 <= 0x80 && v7 >= v52)
  {
    v54 = v10 & 0x3F;
    v55 = vaddq_s64(vdupq_n_s64(v54), vzip1q_s64(0, v50));
    v56 = (v5 + 8 * (v10 >> 6));
    v47 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
    if (v54 + v51 >= 0x81)
    {
      v47 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v47);
    }

    v10 = v52;
  }

  else
  {
    v26 = 1;
  }

  v57 = v344.i8[0] & 3;
  if (v57 == 2)
  {
    v58 = v10 + 32;
    if (v7 >= v10 + 16)
    {
      v10 += 16;
    }

    else
    {
      v26 = 1;
      v58 = v10 + 16;
    }

    if (v7 >= v58)
    {
      v10 = v58;
    }

    else
    {
      v26 = 1;
    }
  }

  v59 = 0uLL;
  v60 = vextq_s8(0, v39, 8uLL);
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v10 + v64;
  if (v64 <= 0x80 && v7 >= v65)
  {
    v68 = v10 & 0x3F;
    v69 = vaddq_s64(vdupq_n_s64(v68), vzip1q_s64(0, v63));
    v70 = (v5 + 8 * (v10 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v67);
    }

    v10 = v65;
  }

  else
  {
    v26 = 1;
    v67 = 0uLL;
  }

  v71 = vpaddq_s32(v39, v39).u64[0];
  v72.i64[0] = v71;
  v72.i64[1] = HIDWORD(v71);
  v73 = v72;
  v74 = vaddvq_s64(v72);
  v75 = v10 + v74;
  if (v74 <= 0x80 && v7 >= v75)
  {
    v77 = v10 & 0x3F;
    v78 = vaddq_s64(vdupq_n_s64(v77), vzip1q_s64(0, v73));
    v79 = (v5 + 8 * (v10 >> 6));
    v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
    if (v77 + v74 >= 0x81)
    {
      v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v59);
    }

    v10 = v75;
  }

  else
  {
    v26 = 1;
  }

  v80 = v10 + v74;
  v81 = 0uLL;
  if (v74 <= 0x80 && v7 >= v80)
  {
    v84 = v10 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v73));
    v86 = (v5 + 8 * (v10 >> 6));
    v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v74 >= 0x81)
    {
      v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v83);
    }

    v10 = v80;
  }

  else
  {
    v26 = 1;
    v83 = 0uLL;
  }

  v87 = v10 + v74;
  if (v74 <= 0x80 && v7 >= v87)
  {
    v89 = v10 & 0x3F;
    v90 = vaddq_s64(vdupq_n_s64(v89), vzip1q_s64(0, v73));
    v91 = (v5 + 8 * (v10 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v90)));
    if (v89 + v74 >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v81);
    }

    v10 = v87;
  }

  else
  {
    v26 = 1;
  }

  v92 = vpaddq_s32(v40, v40).u64[0];
  v93.i64[0] = v92;
  v93.i64[1] = HIDWORD(v92);
  v94 = v93;
  v95 = vaddvq_s64(v93);
  v96 = v10 + v95;
  v97 = 0uLL;
  if (v95 <= 0x80 && v7 >= v96)
  {
    v100 = v10 & 0x3F;
    v101 = vaddq_s64(vdupq_n_s64(v100), vzip1q_s64(0, v94));
    v102 = (v5 + 8 * (v10 >> 6));
    v99 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v102, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v101)), vshlq_u64(vdupq_lane_s64(v102->i64[0], 0), vnegq_s64(v101)));
    if (v100 + v95 >= 0x81)
    {
      v99 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v102[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v101)), vshlq_u64(vdupq_laneq_s64(v102[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v101))), v99);
    }

    v10 = v96;
  }

  else
  {
    v26 = 1;
    v99 = 0uLL;
  }

  v103 = v10 + v95;
  if (v95 <= 0x80 && v7 >= v103)
  {
    v105 = v10 & 0x3F;
    v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v94));
    v107 = (v5 + 8 * (v10 >> 6));
    v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v105 + v95 >= 0x81)
    {
      v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v97);
    }

    v10 = v103;
  }

  else
  {
    v26 = 1;
  }

  v108 = 0uLL;
  if (v95 > 0x80 || (v109 = v10 + v95, v7 < v10 + v95))
  {
    v26 = 1;
    v109 = v10;
    v113 = 0uLL;
  }

  else
  {
    v110 = v10 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v94));
    v112 = (v5 + 8 * (v10 >> 6));
    v113 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v95 >= 0x81)
    {
      v113 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v113);
    }
  }

  if (v95 > 0x80 || (v114 = v109 + v95, v7 < v109 + v95))
  {
    v117 = v39;
    v26 = 1;
    v114 = v109;
  }

  else
  {
    v115 = vaddq_s64(vdupq_n_s64(v109 & 0x3F), vzip1q_s64(0, v94));
    v116 = (v5 + 8 * (v109 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v115)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v115)));
    v117 = v39;
    if ((v109 & 0x3F) + v95 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v115)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v115))), v108);
    }
  }

  v118 = v41;
  v119 = vpaddq_s32(v41, v41).u64[0];
  v120.i64[0] = v119;
  v120.i64[1] = HIDWORD(v119);
  v121 = v120;
  v122 = vaddvq_s64(v120);
  v123 = v122;
  v124 = 0uLL;
  if (v122 > 0x80 || (v125 = v114 + v122, v7 < v114 + v122))
  {
    v26 = 1;
    v125 = v114;
    v128 = 0uLL;
  }

  else
  {
    v126 = vaddq_s64(vdupq_n_s64(v114 & 0x3F), vzip1q_s64(0, v121));
    v127 = (v5 + 8 * (v114 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if ((v114 & 0x3F) + v123 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v128);
    }
  }

  if (v123 > 0x80 || (v129 = v125 + v123, v7 < v125 + v123))
  {
    v26 = 1;
    v129 = v125;
  }

  else
  {
    v130 = vaddq_s64(vdupq_n_s64(v125 & 0x3F), vzip1q_s64(0, v121));
    v131 = (v5 + 8 * (v125 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if ((v125 & 0x3F) + v123 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v124);
    }
  }

  v132 = 0uLL;
  if (v123 > 0x80 || (v133 = v129 + v123, v7 < v129 + v123))
  {
    v26 = 1;
    v133 = v129;
    v137 = 0uLL;
  }

  else
  {
    v134 = v129 & 0x3F;
    v135 = vaddq_s64(vdupq_n_s64(v134), vzip1q_s64(0, v121));
    v136 = (v5 + 8 * (v129 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v134 + v123 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v137);
    }
  }

  if (v123 > 0x80 || (v138 = v133 + v123, v7 < v133 + v123))
  {
    v26 = 1;
    v138 = v133;
  }

  else
  {
    v139 = v133 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v121));
    v141 = (v5 + 8 * (v133 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v123 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v132);
    }
  }

  v142 = vpaddq_s32(v42, v42).u64[0];
  v143.i64[0] = v142;
  v143.i64[1] = HIDWORD(v142);
  v144 = v143;
  v145 = vaddvq_s64(v143);
  v146 = v145;
  v147 = 0uLL;
  if (v145 > 0x80 || (v148 = v138 + v145, v7 < v138 + v145))
  {
    v26 = 1;
    v148 = v138;
    v152 = 0uLL;
  }

  else
  {
    v149 = v138 & 0x3F;
    v150 = vaddq_s64(vdupq_n_s64(v149), vzip1q_s64(0, v144));
    v151 = (v5 + 8 * (v138 >> 6));
    v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v149 + v146 >= 0x81)
    {
      v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
    }
  }

  if (v146 > 0x80 || (v153 = v148 + v146, v7 < v148 + v146))
  {
    v26 = 1;
    v153 = v148;
  }

  else
  {
    v154 = v148 & 0x3F;
    v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v144));
    v156 = (v5 + 8 * (v148 >> 6));
    v147 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if (v154 + v146 >= 0x81)
    {
      v147 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v147);
    }
  }

  v157 = 0uLL;
  if (v146 > 0x80 || (v158 = v153 + v146, v7 < v153 + v146))
  {
    v26 = 1;
    v158 = v153;
  }

  else
  {
    v159 = v153 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v144));
    v161 = (v5 + 8 * (v153 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v146 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v157);
    }
  }

  if (v146 > 0x80 || v7 < v158 + v146)
  {
    goto LABEL_134;
  }

  v162 = v4 + 20;
  v163 = vzip1_s32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v165 = (v5 + ((v162 >> 3) & 8));
  v166 = vnegq_s64(v164);
  v167.i64[0] = 0x2000000020;
  v167.i64[1] = 0x2000000020;
  v168.i64[0] = 0x1F0000001FLL;
  v168.i64[1] = 0x1F0000001FLL;
  v169 = vsubq_s32(v167, v42);
  v170 = vaddq_s32(v42, v168);
  v171 = vaddq_s64(vdupq_n_s64(v158 & 0x3F), vzip1q_s64(0, v144));
  v172 = (v5 + 8 * (v158 >> 6));
  v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
  if ((v158 & 0x3F) + v146 < 0x81)
  {
    if ((v26 & 1) == 0)
    {
      v174 = v43;
      v178 = vshlq_u64(v173, v166);
      v177 = vuzp1q_s32(vzip1q_s64(v173, v178), vzip2q_s64(v173, v178));
      goto LABEL_132;
    }

LABEL_134:
    v180 = 0;
    *&v181 = 0xFFFFFFFFLL;
    *(&v181 + 1) = 0xFFFFFFFFLL;
    *a1 = v181;
    *(a1 + a2) = v181;
    return v180;
  }

  if (v26)
  {
    goto LABEL_134;
  }

  v174 = v43;
  v175 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
  v176 = vshlq_u64(v175, v166);
  v177 = vuzp1q_s32(vzip1q_s64(v175, v176), vzip2q_s64(v175, v176));
LABEL_132:
  v179 = vshlq_s32(vshlq_s32(v177, v169), v170);
  v180 = a4 + 1;
  if (v7 + 8 * v180 - (v158 + v146) - 1024 >= 9 || v57 == 2)
  {
    goto LABEL_134;
  }

  v321 = v12;
  v339 = v174;
  v340 = v179;
  v183 = vzip1_s32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
  v184.i64[0] = v183.u32[0];
  v184.i64[1] = v183.u32[1];
  v185 = vshlq_u64(v47, vnegq_s64(v184));
  v186 = vzip2q_s64(v47, v185);
  v335 = vzip1q_s64(v47, v185);
  v337 = v48;
  v187 = v60;
  *v185.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v184.i64[0] = v185.u32[0];
  v184.i64[1] = v185.u32[1];
  v188 = vshlq_u64(v67, vnegq_s64(v184));
  v331 = vzip1q_s64(v67, v188);
  v333 = vzip2q_s64(v67, v188);
  v338 = v14;
  v189 = v117;
  v190 = vzip1_s32(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
  v184.i64[0] = v190.u32[0];
  v184.i64[1] = v190.u32[1];
  v191 = vnegq_s64(v184);
  v192 = vshlq_u64(v59, v191);
  v329 = vzip1q_s64(v59, v192);
  v330 = vzip2q_s64(v59, v192);
  v193 = vshlq_u64(v83, v191);
  v327 = vzip1q_s64(v83, v193);
  v328 = vzip2q_s64(v83, v193);
  v194 = vshlq_u64(v81, v191);
  v325 = vzip1q_s64(v81, v194);
  v326 = vzip2q_s64(v81, v194);
  v195 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
  v184.i64[0] = v195.u32[0];
  v184.i64[1] = v195.u32[1];
  v196 = vnegq_s64(v184);
  v197 = vshlq_u64(v99, v196);
  v323 = vzip1q_s64(v99, v197);
  v324 = vzip2q_s64(v99, v197);
  v198 = vshlq_u64(v97, v196);
  v322 = vzip2q_s64(v97, v198);
  v199 = vzip1q_s64(v97, v198);
  v200 = vshlq_u64(v113, v196);
  v201 = vzip2q_s64(v113, v200);
  v202 = vzip1q_s64(v113, v200);
  v203 = vshlq_u64(v108, v196);
  v204 = vzip2q_s64(v108, v203);
  v205 = vzip1q_s64(v108, v203);
  v206 = v118;
  v207 = vzip1_s32(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
  v184.i64[0] = v207.u32[0];
  v184.i64[1] = v207.u32[1];
  v208 = vnegq_s64(v184);
  v209 = vshlq_u64(v128, v208);
  v210 = vzip2q_s64(v128, v209);
  v211 = vzip1q_s64(v128, v209);
  v212 = vshlq_u64(v124, v208);
  v213 = vzip2q_s64(v124, v212);
  v214 = vzip1q_s64(v124, v212);
  v215 = vshlq_u64(v137, v208);
  v216 = vzip2q_s64(v137, v215);
  v217 = vzip1q_s64(v137, v215);
  v218 = vshlq_u64(v132, v208);
  v219 = vzip2q_s64(v132, v218);
  v220 = vzip1q_s64(v132, v218);
  v221 = vshlq_u64(v152, v166);
  v222 = v40;
  v223 = vzip2q_s64(v152, v221);
  v224 = vzip1q_s64(v152, v221);
  v225 = vshlq_u64(v147, v166);
  v226 = vzip2q_s64(v147, v225);
  v227 = vzip1q_s64(v147, v225);
  v228 = vuzp1q_s32(v335, v186);
  v229 = vuzp1q_s32(v331, v333);
  v230 = vuzp1q_s32(v199, v322);
  v231 = vuzp1q_s32(v202, v201);
  v232 = vuzp1q_s32(v205, v204);
  v334 = vuzp1q_s32(v214, v213);
  v336 = vuzp1q_s32(v211, v210);
  v332 = vuzp1q_s32(v217, v216);
  v233 = vuzp1q_s32(v220, v219);
  v234 = vuzp1q_s32(v224, v223);
  v210.i64[0] = 0x2000000020;
  v210.i64[1] = 0x2000000020;
  v199.i64[0] = 0x1F0000001FLL;
  v199.i64[1] = 0x1F0000001FLL;
  v202.i64[0] = 0x2000000020;
  v202.i64[1] = 0x2000000020;
  v235 = vshlq_s32(v229, vsubq_s32(v202, v187));
  v236 = vsubq_s32(v202, v189);
  v220.i64[0] = 0x1F0000001FLL;
  v220.i64[1] = 0x1F0000001FLL;
  v237 = vaddq_s32(v187, v220);
  v238 = vaddq_s32(v189, v220);
  v220.i64[0] = 0x2000000020;
  v220.i64[1] = 0x2000000020;
  v239 = vsubq_s32(v220, v222);
  v214.i64[0] = 0x1F0000001FLL;
  v214.i64[1] = 0x1F0000001FLL;
  v240 = vaddq_s32(v222, v214);
  v241 = vshlq_s32(vuzp1q_s32(v323, v324), v239);
  v242 = vshlq_s32(v230, v239);
  v243 = vshlq_s32(v231, v239);
  v244 = vshlq_s32(v232, v239);
  v239.i64[0] = 0x2000000020;
  v239.i64[1] = 0x2000000020;
  v245 = vsubq_s32(v239, v206);
  v217.i64[0] = 0x1F0000001FLL;
  v217.i64[1] = 0x1F0000001FLL;
  v246 = vaddq_s32(v206, v217);
  v247 = vshlq_s32(v336, v245);
  v248 = vshlq_s32(v334, v245);
  v249 = vshlq_s32(v332, v245);
  v250 = vshlq_s32(v233, v245);
  v251 = vshlq_s32(vshlq_s32(v228, vsubq_s32(v210, v337)), vaddq_s32(v337, v199));
  v252 = vshlq_s32(v235, v237);
  v253 = vshlq_s32(vshlq_s32(vuzp1q_s32(v329, v330), v236), v238);
  v254 = vshlq_s32(vshlq_s32(vuzp1q_s32(v327, v328), v236), v238);
  v255 = vshlq_s32(vshlq_s32(vuzp1q_s32(v325, v326), v236), v238);
  v256 = vshlq_s32(v241, v240);
  v257 = vshlq_s32(v242, v240);
  v258 = vshlq_s32(v243, v240);
  v259 = vshlq_s32(v244, v240);
  v260 = vshlq_s32(v247, v246);
  v261 = vshlq_s32(v250, v246);
  v262 = vshlq_u64(v157, v166);
  v263 = vshlq_s32(vshlq_s32(v234, v169), v170);
  v264 = vshlq_s32(vshlq_s32(vuzp1q_s32(v227, v226), v169), v170);
  v265 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v157, v262), vzip2q_s64(v157, v262)), v169), v170);
  v266 = vaddq_s32(vandq_s8(v251, v342), v252);
  v267 = vdupq_lane_s64(v251.i64[0], 0);
  v268 = vandq_s8(v267, v343);
  v269 = vsubq_s32(v256, v268);
  v270 = vsubq_s32(v257, v268);
  v271 = vsubq_s32(v258, v268);
  v272 = vsubq_s32(v259, v268);
  v273 = vandq_s8(v267, v339);
  v274 = vsubq_s32(v260, v273);
  v275 = vsubq_s32(vshlq_s32(v248, v246), v273);
  v276 = vsubq_s32(vshlq_s32(v249, v246), v273);
  v277 = vandq_s8(v267, v342);
  v278 = vsubq_s32(v261, v273);
  v279 = vandq_s8(v267, v341);
  v280 = vsubq_s32(v263, v279);
  v281 = vsubq_s32(v264, v279);
  v282 = vsubq_s32(v265, v279);
  v283 = vsubq_s32(v340, v279);
  v284.i64[0] = 0x100000001;
  v284.i64[1] = 0x100000001;
  v285 = vsubq_s32(v253, v277);
  v286 = vsubq_s32(v254, v277);
  v287 = vuzp1_s16(v344, v344);
  v288 = vsubq_s32(v266, v277);
  v289 = vsubq_s32(v255, v277);
  v290 = vdupq_n_s64(((2 * v165[1]) << ~v162) | (*v165 >> v162));
  if (vaddvq_s32(vceqq_s32(v338, v284)))
  {
    v291 = vnegq_s32(vandq_s8(v321, v284));
    v292.i64[0] = v289.i64[0];
    v293.i64[1] = v288.i64[1];
    v292.i64[1] = v288.i64[0];
    v293.i64[0] = v289.i64[1];
    v294 = vbslq_s8(v291, v293, v288);
    v295 = vbslq_s8(v291, v292, v289);
    v296.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v296.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v297 = vandq_s8(vqtbl4q_s8(*(&v285 - 1), v296), v291);
    v345 = v287;
    v346.val[0] = vaddq_s32(v294, vandq_s8(vqtbl4q_s8(*(&v285 - 1), xmmword_29D2F10B0), v291));
    v346.val[1] = vaddq_s32(v285, vandq_s8(vqtbl4q_s8(*(&v285 - 1), xmmword_29D2F10C0), v291));
    v346.val[2] = vaddq_s32(v286, v297);
    v346.val[3] = vaddq_s32(v295, v297);
    v298 = vandq_s8(vqtbl4q_s8(v346, v296), v291);
    v288 = vaddq_s32(v346.val[0], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F10D0), v291));
    v285 = vaddq_s32(v346.val[1], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F10E0), v291));
    v286 = vaddq_s32(v346.val[2], v298);
    v289 = vaddq_s32(v346.val[3], v298);
    v347.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v269.i8, xmmword_29D2F10B0), v291), v269);
    v347.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v269.i8, xmmword_29D2F10F0), v291), v270);
    v347.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v269.i8, v296), v291), v271);
    v347.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v269.i8, xmmword_29D2F1100), v291), v272);
    v299 = vandq_s8(vqtbl4q_s8(v347, xmmword_29D2F10D0), v291);
    v346.val[0] = vandq_s8(vqtbl4q_s8(v347, v296), v291);
    v269 = vaddq_s32(v299, v347.val[0]);
    v270 = vaddq_s32(v347.val[1], v299);
    v271 = vaddq_s32(v347.val[2], v346.val[0]);
    v272 = vaddq_s32(v347.val[3], v346.val[0]);
    v346.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v274.i8, xmmword_29D2F0EB0), v291), v274);
    v346.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v274.i8, xmmword_29D2F0FB0), v291), v275);
    v346.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v274.i8, xmmword_29D2F10B0), v291), v276);
    v346.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v274.i8, xmmword_29D2F10C0), v291), v278);
    v347.val[2] = vandq_s8(vqtbl4q_s8(v346, v296), v291);
    v274 = vaddq_s32(v346.val[0], v347.val[2]);
    v275 = vaddq_s32(v346.val[1], v347.val[2]);
    v276 = vaddq_s32(v346.val[2], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F0FE0), v291));
    v278 = vaddq_s32(v346.val[3], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F1110), v291));
    v300 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v280.i8, xmmword_29D2F0EB0), v291), v280);
    v346.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v280.i8, xmmword_29D2F1120), v291), v281);
    v346.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v280.i8, xmmword_29D2F10B0), v291), v282);
    v346.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v280.i8, xmmword_29D2F10C0), v291), v283);
    v301 = vandq_s8(vqtbl4q_s8(v346, v296), v291);
    v280 = vaddq_s32(v300, v301);
    v281 = vaddq_s32(v346.val[0], v301);
    v282 = vaddq_s32(v346.val[1], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F0FE0), v291));
    v283 = vaddq_s32(v346.val[2], vandq_s8(vqtbl4q_s8(v346, xmmword_29D2F1130), v291));
    v287 = v345;
  }

  v302 = vaddq_s32(v290, v288);
  v303 = vaddq_s32(v285, v290);
  v304 = vaddq_s32(v286, v290);
  v305 = vaddq_s32(v289, v290);
  v306 = vaddq_s32(v269, v290);
  v307 = vaddq_s32(v270, v290);
  v308 = vaddq_s32(v271, v290);
  v309 = vaddq_s32(v272, v290);
  v310 = vaddq_s32(v274, v290);
  v311 = vaddq_s32(v275, v290);
  v312 = vaddq_s32(v276, v290);
  v313 = vaddq_s32(v278, v290);
  v314 = vaddq_s32(v280, v290);
  v315 = vaddq_s32(v281, v290);
  v316 = vaddq_s32(v282, v290);
  v317 = vaddq_s32(v283, v290);
  v318 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v287 & 0xFF00FF00FF00FFLL)));
  v319 = (a1 + 64);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v302, xmmword_29D2F11B0), v318), v302);
  *(a1 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v303, xmmword_29D2F11B0), v318), v303);
  *(a1 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v304, xmmword_29D2F11B0), v318), v304);
  *(a1 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v305, xmmword_29D2F11B0), v318), v305);
  v320 = (a1 + a2);
  *v319 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v306, xmmword_29D2F11B0), v318), v306);
  v319[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v307, xmmword_29D2F11B0), v318), v307);
  v319[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v308, xmmword_29D2F11B0), v318), v308);
  v319[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v309, xmmword_29D2F11B0), v318), v309);
  *v320 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v310, xmmword_29D2F11B0), v318), v310);
  v320[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v311, xmmword_29D2F11B0), v318), v311);
  v320[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v312, xmmword_29D2F11B0), v318), v312);
  v320[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v313, xmmword_29D2F11B0), v318), v313);
  v320 += 4;
  *v320 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v314, xmmword_29D2F11B0), v318), v314);
  v320[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v315, xmmword_29D2F11B0), v318), v315);
  v320[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v316, xmmword_29D2F11B0), v318), v316);
  v320[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v317, xmmword_29D2F11B0), v318), v317);
  return v180;
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(__n128 *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v30, a5);
  }

  v29 = v30;
  v27 = v32;
  v28 = v31;
  v26 = v33;
  v10 = a3 + 32;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v30, a5);
  }

  v24 = v31;
  v25 = v30;
  v22 = v33;
  v23 = v32;
  v11 = a3 + 64;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v30, a5);
  }

  v20 = v31;
  v21 = v30;
  v18 = v33;
  v19 = v32;
  v12 = a3 + 96;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v30, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v30, a5);
  }

  v13 = (a1 + a2);
  result = v30;
  v15 = v31;
  v16 = v32;
  v17 = v33;
  *a1 = v29;
  a1[1] = v28;
  a1[2] = v27;
  a1[3] = v26;
  a1[4] = v25;
  a1[5] = v24;
  a1[6] = v23;
  a1[7] = v22;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v19;
  v13[3] = v18;
  v13[4] = result;
  v13[5] = v15;
  v13[6] = v16;
  v13[7] = v17;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 128, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 128, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 256, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 384, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 256, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 384, a2, v33, v32, a7);
}

void AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, const double *a2, _BYTE *a3, int a4)
{
  v8 = 16;
  v9 = &byte_29D2F30E1;
  do
  {
    v11 = a1 + (*v9 << 10) + (*(v9 - 1) << 7);
    v12 = *a3;
    if (*a3)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 7)
        {
          v13 = vld1q_dup_f64(a2);
          *v11 = v13;
          *(v11 + 16) = v13;
          *(v11 + 32) = v13;
          *(v11 + 48) = v13;
          *(v11 + 64) = v13;
          *(v11 + 80) = v13;
          *(v11 + 96) = v13;
          *(v11 + 112) = v13;
          *(v11 + 512) = v13;
          *(v11 + 528) = v13;
          *(v11 + 544) = v13;
          *(v11 + 560) = v13;
          *(v11 + 576) = v13;
          *(v11 + 592) = v13;
          *(v11 + 608) = v13;
          *(v11 + 624) = v13;
          v10 = 8;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 512, a2, v12);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 512, a2, v12, a4);
        v10 = 128;
      }
    }

    else
    {
      v10 = 0;
      *(v11 + 96) = 0u;
      *(v11 + 112) = 0u;
      *(v11 + 64) = 0u;
      *(v11 + 80) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 48) = 0u;
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 512) = 0u;
      *(v11 + 528) = 0u;
      *(v11 + 544) = 0u;
      *(v11 + 560) = 0u;
      *(v11 + 576) = 0u;
      *(v11 + 592) = 0u;
      *(v11 + 608) = 0u;
      *(v11 + 624) = 0u;
    }

    a2 = (a2 + v10);
    ++a3;
    v9 += 2;
    v8 -= 2;
  }

  while (v8);
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(uint64_t a1, int32x2_t *a2, void *a3, unint64_t *a4, unsigned int a5)
{
  v5 = a4[2];
  v6 = *a4;
  v7 = *a4 + 40;
  if (v5)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4 & 0x3F;
    v10 = (a4[1] + 8 * (v6 >> 6));
    v11 = *v10 >> v6;
    if (v9 >= 0x19)
    {
      v11 |= v10[1] << -v9;
    }

    *a4 = v7;
  }

  else
  {
    v11 = 0;
    *(a4 + 24) = 1;
  }

  v12 = vdup_n_s32(v11);
  *a1 = v11 & 0x1F;
  *(a1 + 4) = vand_s8(vshl_u32(v12, 0xFFFFFFF6FFFFFFFBLL), 0x1F0000001FLL);
  *(a1 + 12) = (v11 >> 15) & 0x1F;
  *a2 = vadd_s32(vand_s8(vshl_u32(v12, 0xFFFFFFE7FFFFFFECLL), 0x1F0000001FLL), 0x100000001);
  a2[1].i32[0] = ((v11 >> 30) & 0x1F) + 1;
  a2[1].i32[1] = ((v11 >> 35) & 0x1F) + 1;
  v13 = a4[2];
  v14 = *a4;
  if (v13 && v13 < v14 + 64)
  {
    v15 = 0;
    *(a4 + 24) = 1;
LABEL_17:
    v19 = 0;
    *(a4 + 24) = 1;
    goto LABEL_21;
  }

  v16 = a4[1];
  v17 = (v16 + 8 * (v14 >> 6));
  v15 = *v17 >> v14;
  if ((v14 & 0x3F) != 0)
  {
    v15 |= v17[1] << -(v14 & 0x3F);
  }

  v18 = v14 + 64;
  *a4 = v14 + 64;
  if (v13)
  {
    if (v13 < v14 + 128)
    {
      goto LABEL_17;
    }

    v16 = a4[1];
  }

  v20 = (v16 + 8 * (v18 >> 6));
  v19 = *v20 >> v18;
  if ((v18 & 0x3F) != 0)
  {
    v19 |= v20[1] << -(v18 & 0x3F);
  }

  *a4 = v18 + 64;
LABEL_21:
  *a3 = v15;
  a3[1] = v19;
  return 2 * a5 + 2;
}

int8x16_t AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 528);
  v3 = *(a2 + 544);
  *v2.i8 = vqmovn_u32(v2);
  v4.i64[0] = 0x8000800080008;
  v4.i64[1] = 0x8000800080008;
  v5 = *(a2 + 608);
  *v5.i8 = vqmovn_u32(v5);
  v6.i64[0] = 0x2000200020002;
  v6.i64[1] = 0x2000200020002;
  v7.i64[0] = 0x10001000100010;
  v7.i64[1] = 0x10001000100010;
  v8.i64[0] = 0x3000300030003;
  v8.i64[1] = 0x3000300030003;
  v9.i64[0] = 0x20002000200020;
  v9.i64[1] = 0x20002000200020;
  *v3.i8 = vqmovn_u32(v3);
  v10.i64[0] = 0x7000700070007;
  v10.i64[1] = 0x7000700070007;
  v11 = vaddq_s32(vaddq_s32(*(a2 + 576), *(a2 + 560)), *(a2 + 592));
  *v11.i8 = vqmovn_u32(v11);
  v12 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v5, vceqzq_s16(vandq_s8(v2, v4))), vandq_s8(vshlq_n_s16(v2, 2uLL), v7)), vandq_s8(vceqq_s16(vandq_s8(v2, v8), v6), v9)), v3, v10), vshlq_n_s16(v11, 3uLL));
  v13 = *(a1 + 528);
  v14 = *(a1 + 544);
  *v13.i8 = vqmovn_u32(v13);
  v15 = *(a1 + 608);
  *v15.i8 = vqmovn_u32(v15);
  *v14.i8 = vqmovn_u32(v14);
  v16 = vaddq_s32(vaddq_s32(*(a1 + 576), *(a1 + 560)), *(a1 + 592));
  *v16.i8 = vqmovn_u32(v16);
  result = vmovl_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v15, vceqzq_s16(vandq_s8(v13, v4))), vandq_s8(vshlq_n_s16(v13, 2uLL), v7)), vandq_s8(vceqq_s16(vandq_s8(v13, v8), v6), v9)), v14, v10), vshlq_n_s16(v16, 3uLL)), v12));
  if (vaddvq_s32(result))
  {
    v18 = *(a1 + 528);
    *(a1 + 512) = vbslq_s8(result, *(a2 + 512), *(a1 + 512));
    v19 = vbslq_s8(result, *(a2 + 16), *(a1 + 16));
    v20 = vbslq_s8(result, *(a2 + 32), *(a1 + 32));
    v21 = vbslq_s8(result, *(a2 + 48), *(a1 + 48));
    v22 = vbslq_s8(result, *(a2 + 64), *(a1 + 64));
    v23 = vbslq_s8(result, *(a2 + 80), *(a1 + 80));
    v24 = vbslq_s8(result, *(a2 + 96), *(a1 + 96));
    v25 = vbslq_s8(result, *(a2 + 112), *(a1 + 112));
    *a1 = vbslq_s8(result, *a2, *a1);
    *(a1 + 16) = v19;
    *(a1 + 32) = v20;
    *(a1 + 48) = v21;
    *(a1 + 64) = v22;
    *(a1 + 80) = v23;
    *(a1 + 96) = v24;
    *(a1 + 112) = v25;
    v26 = vbslq_s8(result, *(a2 + 144), *(a1 + 144));
    v27 = vbslq_s8(result, *(a2 + 160), *(a1 + 160));
    v28 = vbslq_s8(result, *(a2 + 176), *(a1 + 176));
    v29 = vbslq_s8(result, *(a2 + 192), *(a1 + 192));
    v30 = vbslq_s8(result, *(a2 + 208), *(a1 + 208));
    v31 = vbslq_s8(result, *(a2 + 224), *(a1 + 224));
    v32 = vbslq_s8(result, *(a2 + 240), *(a1 + 240));
    *(a1 + 128) = vbslq_s8(result, *(a2 + 128), *(a1 + 128));
    *(a1 + 144) = v26;
    *(a1 + 160) = v27;
    *(a1 + 176) = v28;
    *(a1 + 192) = v29;
    *(a1 + 208) = v30;
    *(a1 + 224) = v31;
    *(a1 + 240) = v32;
    v33 = vbslq_s8(result, *(a2 + 272), *(a1 + 272));
    v34 = vbslq_s8(result, *(a2 + 288), *(a1 + 288));
    v35 = vbslq_s8(result, *(a2 + 304), *(a1 + 304));
    v36 = vbslq_s8(result, *(a2 + 320), *(a1 + 320));
    v37 = vbslq_s8(result, *(a2 + 336), *(a1 + 336));
    v38 = vbslq_s8(result, *(a2 + 352), *(a1 + 352));
    v39 = vbslq_s8(result, *(a2 + 368), *(a1 + 368));
    *(a1 + 256) = vbslq_s8(result, *(a2 + 256), *(a1 + 256));
    *(a1 + 272) = v33;
    *(a1 + 288) = v34;
    *(a1 + 304) = v35;
    *(a1 + 320) = v36;
    *(a1 + 336) = v37;
    *(a1 + 352) = v38;
    *(a1 + 368) = v39;
    v40 = vbslq_s8(result, *(a2 + 400), *(a1 + 400));
    v41 = vbslq_s8(result, *(a2 + 416), *(a1 + 416));
    v42 = vbslq_s8(result, *(a2 + 432), *(a1 + 432));
    v43 = vbslq_s8(result, *(a2 + 448), *(a1 + 448));
    v44 = vbslq_s8(result, *(a2 + 464), *(a1 + 464));
    v45 = vbslq_s8(result, *(a2 + 480), *(a1 + 480));
    v46 = vbslq_s8(result, *(a2 + 496), *(a1 + 496));
    *(a1 + 384) = vbslq_s8(result, *(a2 + 384), *(a1 + 384));
    *(a1 + 400) = v40;
    *(a1 + 416) = v41;
    *(a1 + 432) = v42;
    *(a1 + 448) = v43;
    *(a1 + 464) = v44;
    *(a1 + 480) = v45;
    *(a1 + 496) = v46;
    v47 = *(a1 + 608);
    *(a1 + 624) = vbslq_s8(result, *(a2 + 624), *(a1 + 624));
    v48 = *(a1 + 656);
    *(a1 + 640) = vbslq_s8(result, *(a2 + 640), *(a1 + 640));
    v49 = *(a1 + 560);
    *(a1 + 544) = vbslq_s8(result, *(a2 + 544), *(a1 + 544));
    *(a1 + 560) = vbslq_s8(result, *(a2 + 560), v49);
    v50 = *(a1 + 592);
    *(a1 + 576) = vbslq_s8(result, *(a2 + 576), *(a1 + 576));
    *(a1 + 592) = vbslq_s8(result, *(a2 + 592), v50);
    *(a1 + 656) = vbslq_s8(result, *(a2 + 656), v48);
    *(a1 + 608) = vbslq_s8(result, *(a2 + 608), v47);
    result = vbslq_s8(result, *(a2 + 528), v18);
    *(a1 + 528) = result;
  }

  return result;
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(__n128 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v40 = *MEMORY[0x29EDCA608];
  v39 = 0uLL;
  v5 = 32;
  do
  {
    v6 = 64 - v3;
    if (64 - v3 >= v5)
    {
      v6 = v5;
    }

    v39.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v4) & ~(-1 << v6)) << v3;
    v4 += v6;
    v7 = v6 + v3;
    v2 += v7 >> 6;
    v3 = v7 & 0x3F;
    v5 -= v6;
  }

  while (v5);
  if ((v3 | (v2 << 6)) + 32 <= 0x80)
  {
    v8 = 32;
    do
    {
      v9 = 64 - v3;
      if (64 - v3 >= v8)
      {
        v9 = v8;
      }

      v10 = v9 + v3;
      v2 += v10 >> 6;
      v3 = v10 & 0x3F;
      v8 -= v9;
    }

    while (v8);
    if ((v3 | (v2 << 6)) + 32 <= 0x80)
    {
      v11 = 0;
      v12 = 32;
      do
      {
        v13 = 64 - v3;
        if (64 - v3 >= v12)
        {
          v13 = v12;
        }

        v39.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v11) & ~(-1 << v13)) << v3;
        v11 += v13;
        v14 = v13 + v3;
        v2 += v14 >> 6;
        v3 = v14 & 0x3F;
        v12 -= v13;
      }

      while (v12);
      if ((v3 | (v2 << 6)) + 32 <= 0x80)
      {
        v15 = 0;
        v16 = 32;
        do
        {
          v17 = 64 - v3;
          if (64 - v3 >= v16)
          {
            v17 = v16;
          }

          v39.n128_u64[v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v15) & ~(-1 << v17)) << v3;
          v15 += v17;
          v18 = v17 + v3;
          v2 += v18 >> 6;
          v3 = v18 & 0x3F;
          v16 -= v17;
        }

        while (v16);
      }
    }
  }

  v19 = v39;
  v20 = v39;
  *a1 = v39;
  a1[1] = v19;
  a1[2] = v19;
  a1[3] = v19;
  a1[4] = v19;
  a1[5] = v19;
  a1[6] = v19;
  a1[7] = v19;
  v21 = (a1 + a2);
  *v21 = v19;
  v21[1] = v19;
  v21[2] = v19;
  v21[3] = v19;
  v21[4] = v19;
  v21[5] = v19;
  v21[6] = v19;
  v21[7] = v19;
  v22 = (a1 + 2 * a2);
  v23 = v39;
  v24 = v39;
  *v22 = v20;
  v22[1] = v23;
  v25 = v39;
  v26 = v39;
  v22[2] = v24;
  v22[3] = v25;
  v27 = v39;
  v28 = v39;
  v22[4] = v26;
  v22[5] = v27;
  v29 = v39;
  v30 = v39;
  v22[6] = v28;
  v22[7] = v29;
  v31 = a1 + 2 * a2 + a2;
  v32 = v39;
  v33 = v39;
  *v31 = v30;
  *(v31 + 16) = v32;
  v34 = v39;
  v35 = v39;
  *(v31 + 32) = v33;
  *(v31 + 48) = v34;
  v36 = v39;
  v37 = v39;
  *(v31 + 64) = v35;
  *(v31 + 80) = v36;
  result = v39;
  *(v31 + 96) = v37;
  *(v31 + 112) = result;
  return result;
}