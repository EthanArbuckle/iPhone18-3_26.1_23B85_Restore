uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v463 = *MEMORY[0x29EDCA608];
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
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v455, a5);
    }

    v451 = v458;
    v453 = v457;
    v443 = v455;
    v445 = v459;
    v439 = v456;
    v441 = v460;
    v447 = v462;
    v449 = v461;
    v18 = a3 + 40;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v18, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v18, &v455, a5);
    }

    v435 = v456;
    v437 = v455;
    v431 = v458;
    v433 = v457;
    v428 = v460;
    v429 = v459;
    v422 = v462;
    v425 = v461;
    v59 = a3 + 80;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v59, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v59, &v455, a5);
    }

    v416 = v456;
    v419 = v455;
    v410 = v458;
    v413 = v457;
    v405 = v460;
    v407 = v459;
    v401 = v462;
    v403 = v461;
    v60 = a3 + 120;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v60, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v60, &v455, a5);
    }

    v61 = v455;
    v62 = v456;
    v63 = v457;
    v64 = v458;
    v65 = v459;
    v66 = v460;
    v67 = v461;
    v68 = v462;
    *a1 = vmovn_s32(v443);
    *(a1 + 8) = vmovn_s32(v439);
    *(a1 + 16) = vmovn_s32(v445);
    *(a1 + 24) = vmovn_s32(v441);
    *(a1 + 32) = vmovn_s32(v419);
    *(a1 + 40) = vmovn_s32(v416);
    *(a1 + 48) = vmovn_s32(v407);
    *(a1 + 56) = vmovn_s32(v405);
    v69 = (a1 + a2);
    *v69 = vmovn_s32(v453);
    v69[1] = vmovn_s32(v451);
    v69[2] = vmovn_s32(v449);
    v69[3] = vmovn_s32(v447);
    v69[4] = vmovn_s32(v413);
    v69[5] = vmovn_s32(v410);
    v69[6] = vmovn_s32(v403);
    v69[7] = vmovn_s32(v401);
    v70 = (a1 + a2 + a2);
    *v70 = vmovn_s32(v437);
    v70[1] = vmovn_s32(v435);
    v70[2] = vmovn_s32(v429);
    v70[3] = vmovn_s32(v428);
    v70[4] = vmovn_s32(v61);
    v70[5] = vmovn_s32(v62);
    v70[6] = vmovn_s32(v65);
    v70[7] = vmovn_s32(v66);
    v71 = (v70 + a2);
    *v71 = vmovn_s32(v433);
    v71[1] = vmovn_s32(v431);
    v71[2] = vmovn_s32(v425);
    v71[3] = vmovn_s32(v422);
    v71[4] = vmovn_s32(v63);
    v71[5] = vmovn_s32(v64);
    v10 = 160;
    v71[6] = vmovn_s32(v67);
    v71[7] = vmovn_s32(v68);
    return v10;
  }

  if (a4 == 7)
  {
    v14 = vld1q_dup_f64(a3);
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
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
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    v10 = 8;
LABEL_156:
    v17[2] = v14;
    v17[3] = v14;
    return v10;
  }

  v19 = 8 * (a3 & 7);
  v20 = a3 & 0xFFFFFFFFFFFFFFF8;
  v21 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v19;
  if (v19 >= 0x1D)
  {
    v21 |= *(v20 + 8) << (-8 * (a3 & 7u));
  }

  v22.i16[0] = v21;
  v22.i16[1] = v21 >> 5;
  v22.i16[2] = v21 >> 10;
  v22.i16[3] = v21 >> 15;
  v23 = vand_s8(vshl_u32(vdup_n_s32(v21), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v23.i16[1] = v23.i16[2];
  v23.i16[2] = v21 >> 28;
  v23.i16[3] = BYTE4(v21) & 0xF;
  v24 = (8 * (a3 & 7)) | 0x500;
  v25 = v19 + 100;
  v26 = vand_s8(v22, 0x1F001F001F001FLL);
  v27 = vdupq_lane_s64(v26, 0);
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v450 = *&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3);
  v29 = vbicq_s8(vdupq_lane_s64(*&vadd_s16(v23, 0x1000100010001), 0), vceqq_s16((*&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v30 = vandq_s8(vmovl_s16(vtst_s16((v26 & 0xFFE4FFE4FFE4FFE4), (v26 & 0xFFE4FFE4FFE4FFE4))), v28);
  if (vmaxvq_s8(v30) < 1)
  {
    v39 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v446 = v72;
    v448 = v72;
    v58 = v29;
    v57 = v29;
    v56 = v29;
    v442 = v72;
    v444 = v72;
    v55 = v29;
  }

  else
  {
    v31 = vmovl_u8(*&vpaddq_s8(v30, v30));
    v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
    v33 = vpaddq_s32(v32, v32).u64[0];
    v34.i64[0] = v33;
    v34.i64[1] = HIDWORD(v33);
    v35 = v34;
    v36 = vaddvq_s64(v34);
    v37 = v25 + v36;
    v38 = v36 <= 0x80 && v24 >= v37;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = v25 & 0x3C;
      v42 = vaddq_s64(vdupq_n_s64(v41), vzip1q_s64(0, v35));
      v43 = (v20 + ((v25 >> 3) & 0x18));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v42)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v42)));
      if (v41 + v36 >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v42)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v42))), v40);
      }

      v25 = v37;
    }

    v44 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v45.i64[0] = v44.u32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vshlq_u64(v40, vnegq_s64(v45));
    v47 = vuzp1q_s32(vzip1q_s64(v40, v46), vzip2q_s64(v40, v46));
    v48 = vshlq_u32(v47, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v49 = vuzp1q_s16(vzip1q_s32(v47, v48), vzip2q_s32(v47, v48));
    v50 = vshlq_u16(v49, vnegq_s16((*&v30 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v51 = vuzp1q_s8(vzip1q_s16(v49, v50), vzip2q_s16(v49, v50));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v50, v30);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v53 = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v50), v51), xmmword_29D2F0F70);
    *v51.i8 = vdup_lane_s32(*v53.i8, 0);
    *v50.i8 = vdup_lane_s32(*v53.i8, 1);
    v54 = vdupq_laneq_s32(v53, 2).u64[0];
    v53.i64[0] = vdupq_laneq_s32(v53, 3).u64[0];
    v55 = vsubw_s8(v29, *v51.i8);
    v56 = vsubw_s8(v29, *v50.i8);
    v57 = vsubw_s8(v29, v54);
    v58 = vsubw_s8(v29, *v53.i8);
    v446 = vmovl_s8(vceqz_s8(*v51.i8));
    v442 = vmovl_s8(vceqz_s8(*v50.i8));
    v444 = vmovl_s8(vceqz_s8(v54));
    v448 = vmovl_s8(vceqz_s8(*v53.i8));
  }

  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v74 = 0uLL;
  v454 = vandq_s8(vextq_s8(vtstq_s16(v27, v73), 0, 8uLL), v29);
  v75 = vmovl_u16(*&vpaddq_s16(v454, v454));
  v76 = vpaddq_s32(v75, v75).u64[0];
  v77.i64[0] = v76;
  v77.i64[1] = HIDWORD(v76);
  v78 = v77;
  v79 = vaddvq_s64(v77);
  v80 = v25 + v79;
  if (v79 <= 0x80 && v24 >= v80)
  {
    v82 = v25 & 0x3F;
    v83 = vaddq_s64(vdupq_n_s64(v82), vzip1q_s64(0, v78));
    v84 = (v20 + 8 * (v25 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v83)));
    if (v82 + v79 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v74);
    }

    v25 = v80;
  }

  else
  {
    v39 = 1;
  }

  v85 = v27.i8[0] & 3;
  if (v85 == 2)
  {
    v86 = v25 + 16;
    if (v24 >= v25 + 8)
    {
      v25 += 8;
    }

    else
    {
      v39 = 1;
      v86 = v25 + 8;
    }

    if (v24 >= v86)
    {
      v25 = v86;
    }

    else
    {
      v39 = 1;
    }
  }

  v87 = 0uLL;
  v432 = vextq_s8(0, v55, 8uLL);
  v88 = vmovl_u16(*&vpaddq_s16(v432, v432));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v25 + v92;
  if (v92 <= 0x80 && v24 >= v93)
  {
    v96 = v25 & 0x3F;
    v97 = vaddq_s64(vdupq_n_s64(v96), vzip1q_s64(0, v91));
    v98 = (v20 + 8 * (v25 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v97)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v97)));
    if (v96 + v92 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v97)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v97))), v95);
    }

    v25 = v93;
  }

  else
  {
    v39 = 1;
    v95 = 0uLL;
  }

  v99 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v25 + v103;
  if (v103 <= 0x80 && v24 >= v104)
  {
    v106 = v25 & 0x3F;
    v107 = vaddq_s64(vdupq_n_s64(v106), vzip1q_s64(0, v102));
    v108 = (v20 + 8 * (v25 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v107)));
    if (v106 + v103 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v87);
    }

    v25 = v104;
  }

  else
  {
    v39 = 1;
  }

  v109 = v25 + v103;
  v110 = 0uLL;
  if (v103 <= 0x80 && v24 >= v109)
  {
    v113 = v25 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v102));
    v115 = (v20 + 8 * (v25 >> 6));
    v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v103 >= 0x81)
    {
      v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v112);
    }

    v25 = v109;
  }

  else
  {
    v39 = 1;
    v112 = 0uLL;
  }

  v116 = v25 + v103;
  v117 = v103 <= 0x80 && v24 >= v116;
  v452 = v27;
  if (v117)
  {
    v118 = v25 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v102));
    v120 = (v20 + 8 * (v25 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v103 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v110);
    }

    v25 = v116;
  }

  else
  {
    v39 = 1;
  }

  v121 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v122 = vpaddq_s32(v121, v121).u64[0];
  v123.i64[0] = v122;
  v123.i64[1] = HIDWORD(v122);
  v124 = v123;
  v125 = vaddvq_s64(v123);
  v126 = v25 + v125;
  v127 = 0uLL;
  if (v125 <= 0x80 && v24 >= v126)
  {
    v130 = v25 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v124));
    v132 = (v20 + 8 * (v25 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v125 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v129);
    }

    v25 = v126;
  }

  else
  {
    v39 = 1;
    v129 = 0uLL;
  }

  v133 = v25 + v125;
  if (v125 <= 0x80 && v24 >= v133)
  {
    v135 = v25 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v124));
    v137 = (v20 + 8 * (v25 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v125 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v127);
    }

    v25 = v133;
  }

  else
  {
    v39 = 1;
  }

  v434 = v55;
  v138 = v25 + v125;
  v139 = 0uLL;
  if (v125 <= 0x80 && v24 >= v138)
  {
    v142 = v25 & 0x3F;
    v143 = vaddq_s64(vdupq_n_s64(v142), vzip1q_s64(0, v124));
    v144 = (v20 + 8 * (v25 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v144, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v143)), vshlq_u64(vdupq_lane_s64(v144->i64[0], 0), vnegq_s64(v143)));
    if (v142 + v125 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v144[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v143)), vshlq_u64(vdupq_laneq_s64(v144[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v143))), v141);
    }

    v25 = v138;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v39 = 1;
    v141 = 0uLL;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  v145 = v25 + v125;
  if (v24 < v25 + v125)
  {
LABEL_110:
    v39 = 1;
    v145 = v25;
    goto LABEL_111;
  }

  v146 = v25 & 0x3F;
  v147 = vaddq_s64(vdupq_n_s64(v146), vzip1q_s64(0, v124));
  v148 = (v20 + 8 * (v25 >> 6));
  v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
  if (v146 + v125 >= 0x81)
  {
    v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v139);
  }

LABEL_111:
  v149 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v150 = vpaddq_s32(v149, v149).u64[0];
  v151.i64[0] = v150;
  v151.i64[1] = HIDWORD(v150);
  v152 = v151;
  v153 = vaddvq_s64(v151);
  v154 = v153;
  v155 = 0uLL;
  v436 = v56;
  v438 = v57;
  if (v153 > 0x80 || (v156 = v145 + v153, v24 < v145 + v153))
  {
    v39 = 1;
    v156 = v145;
    v159 = 0uLL;
  }

  else
  {
    v157 = vaddq_s64(vdupq_n_s64(v145 & 0x3F), vzip1q_s64(0, v152));
    v158 = (v20 + 8 * (v145 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v157)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v157)));
    if ((v145 & 0x3F) + v154 >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v157)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v157))), v159);
    }
  }

  if (v154 > 0x80 || (v160 = v156 + v154, v24 < v156 + v154))
  {
    v39 = 1;
    v160 = v156;
  }

  else
  {
    v161 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v152));
    v162 = (v20 + 8 * (v156 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if ((v156 & 0x3F) + v154 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v155);
    }
  }

  v163 = 0uLL;
  if (v154 > 0x80 || (v164 = v160 + v154, v24 < v160 + v154))
  {
    v39 = 1;
    v164 = v160;
    v168 = 0uLL;
  }

  else
  {
    v165 = v160 & 0x3F;
    v166 = vaddq_s64(vdupq_n_s64(v165), vzip1q_s64(0, v152));
    v167 = (v20 + 8 * (v160 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v167, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v166)), vshlq_u64(vdupq_lane_s64(v167->i64[0], 0), vnegq_s64(v166)));
    if (v165 + v154 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v167[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v166)), vshlq_u64(vdupq_laneq_s64(v167[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v166))), v168);
    }
  }

  if (v154 > 0x80 || (v169 = v164 + v154, v24 < v164 + v154))
  {
    v39 = 1;
    v169 = v164;
  }

  else
  {
    v170 = v164 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v152));
    v172 = (v20 + 8 * (v164 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v154 >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v163);
    }
  }

  v440 = v58;
  v173 = vmovl_u16(*&vpaddq_s16(v58, v58));
  v174 = vpaddq_s32(v173, v173).u64[0];
  v175.i64[0] = v174;
  v175.i64[1] = HIDWORD(v174);
  v176 = v175;
  v177 = vaddvq_s64(v175);
  v178 = v177;
  v179 = 0uLL;
  if (v177 > 0x80 || (v180 = v169 + v177, v24 < v169 + v177))
  {
    v39 = 1;
    v180 = v169;
    v184 = 0uLL;
  }

  else
  {
    v181 = v169 & 0x3F;
    v182 = vaddq_s64(vdupq_n_s64(v181), vzip1q_s64(0, v176));
    v183 = (v20 + 8 * (v169 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v183, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v182)), vshlq_u64(vdupq_lane_s64(v183->i64[0], 0), vnegq_s64(v182)));
    if (v181 + v178 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v183[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v182)), vshlq_u64(vdupq_laneq_s64(v183[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v182))), v184);
    }
  }

  if (v178 > 0x80 || (v185 = v180 + v178, v24 < v180 + v178))
  {
    v39 = 1;
    v185 = v180;
  }

  else
  {
    v186 = v180 & 0x3F;
    v187 = vaddq_s64(vdupq_n_s64(v186), vzip1q_s64(0, v176));
    v188 = (v20 + 8 * (v180 >> 6));
    v179 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v188, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v188->i64[0], 0), vnegq_s64(v187)));
    if (v186 + v178 >= 0x81)
    {
      v179 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v188[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v188[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v179);
    }
  }

  if (v178 > 0x80 || (v189 = v185 + v178, v24 < v185 + v178))
  {
    v39 = 1;
    v189 = v185;
    v193 = 0uLL;
  }

  else
  {
    v190 = v185 & 0x3F;
    v191 = vaddq_s64(vdupq_n_s64(v190), vzip1q_s64(0, v176));
    v192 = (v20 + 8 * (v185 >> 6));
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v192, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v191)), vshlq_u64(vdupq_lane_s64(v192->i64[0], 0), vnegq_s64(v191)));
    if (v190 + v178 >= 0x81)
    {
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v192[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v191)), vshlq_u64(vdupq_laneq_s64(v192[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v191))), v193);
    }
  }

  if (v178 > 0x80)
  {
    goto LABEL_155;
  }

  v194 = v189 + v178;
  if (v24 < v189 + v178)
  {
    goto LABEL_155;
  }

  v195 = v189 & 0x3F;
  v196 = vaddq_s64(vdupq_n_s64(v195), vzip1q_s64(0, v176));
  v197 = (v20 + 8 * (v189 >> 6));
  v198 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v197, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v196)), vshlq_u64(vdupq_lane_s64(v197->i64[0], 0), vnegq_s64(v196)));
  if (v195 + v178 >= 0x81)
  {
    v198 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v197[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v196)), vshlq_u64(vdupq_laneq_s64(v197[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v196))), v198);
  }

  if ((v39 & 1) != 0 || (v10 = a4 + 1, v24 + 8 * v10 - v194 - 1280 >= 9) || v85 == 2)
  {
LABEL_155:
    v10 = 0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
    v199 = (a1 + a2);
    *v199 = v14;
    v199[1] = v14;
    v199[2] = v14;
    v199[3] = v14;
    v200 = (a1 + 2 * a2);
    *v200 = v14;
    v200[1] = v14;
    v200[2] = v14;
    v200[3] = v14;
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    goto LABEL_156;
  }

  v202 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
  v203 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
  v204 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v205 = vzip1_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
  v206 = vzip1_s32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
  v207 = vzip1_s32(*v173.i8, *&vextq_s8(v173, v173, 8uLL));
  v208 = ((2 * *(v20 + (((v19 + 36) >> 3) & 8) + 8)) << ~(v19 + 36)) | (*(v20 + (((v19 + 36) >> 3) & 8)) >> (v19 + 36));
  v209.i64[0] = v202.u32[0];
  v209.i64[1] = v202.u32[1];
  v210 = vshlq_u64(v74, vnegq_s64(v209));
  v423 = vzip1q_s64(v74, v210);
  v426 = vzip2q_s64(v74, v210);
  v209.i64[0] = v203.u32[0];
  v209.i64[1] = v203.u32[1];
  v211 = vshlq_u64(v95, vnegq_s64(v209));
  v417 = vzip1q_s64(v95, v211);
  v420 = vzip2q_s64(v95, v211);
  v209.i64[0] = v204.u32[0];
  v209.i64[1] = v204.u32[1];
  v212 = vnegq_s64(v209);
  v213 = vshlq_u64(v87, v212);
  v411 = vzip1q_s64(v87, v213);
  v414 = vzip2q_s64(v87, v213);
  v214 = vshlq_u64(v112, v212);
  v408 = vzip2q_s64(v112, v214);
  v215 = vzip1q_s64(v112, v214);
  v216 = vshlq_u64(v110, v212);
  v217 = vzip2q_s64(v110, v216);
  v218 = vzip1q_s64(v110, v216);
  v209.i64[0] = v205.u32[0];
  v209.i64[1] = v205.u32[1];
  v219 = vnegq_s64(v209);
  v220 = vshlq_u64(v129, v219);
  v221 = vzip2q_s64(v129, v220);
  v222 = vzip1q_s64(v129, v220);
  v223 = vshlq_u64(v127, v219);
  v224 = vzip2q_s64(v127, v223);
  v225 = vzip1q_s64(v127, v223);
  v226 = vshlq_u64(v141, v219);
  v227 = vzip2q_s64(v141, v226);
  v228 = vzip1q_s64(v141, v226);
  v229 = vshlq_u64(v139, v219);
  v230 = vzip2q_s64(v139, v229);
  v231 = vzip1q_s64(v139, v229);
  v209.i64[0] = v206.u32[0];
  v209.i64[1] = v206.u32[1];
  v232 = vnegq_s64(v209);
  v233 = vshlq_u64(v159, v232);
  v234 = vzip2q_s64(v159, v233);
  v235 = vzip1q_s64(v159, v233);
  v236 = vshlq_u64(v155, v232);
  v237 = vzip2q_s64(v155, v236);
  v238 = vzip1q_s64(v155, v236);
  v239 = vshlq_u64(v168, v232);
  v240 = vzip2q_s64(v168, v239);
  v241 = vzip1q_s64(v168, v239);
  v242 = vshlq_u64(v163, v232);
  v243 = vzip2q_s64(v163, v242);
  v244 = vzip1q_s64(v163, v242);
  v209.i64[0] = v207.u32[0];
  v209.i64[1] = v207.u32[1];
  v430 = vnegq_s64(v209);
  v245 = vshlq_u64(v184, v430);
  v246 = vzip2q_s64(v184, v245);
  v247 = vzip1q_s64(v184, v245);
  v248 = vshlq_u64(v179, v430);
  v249 = vzip2q_s64(v179, v248);
  v250 = vzip1q_s64(v179, v248);
  v251 = vshlq_u64(v193, v430);
  v252 = vzip2q_s64(v193, v251);
  v253 = vzip1q_s64(v193, v251);
  v254 = vuzp1q_s32(v423, v426);
  v255 = vuzp1q_s32(v417, v420);
  v256 = vuzp1q_s32(v411, v414);
  v257 = vuzp1q_s32(v215, v408);
  v258 = vuzp1q_s32(v218, v217);
  v259 = vuzp1q_s32(v222, v221);
  v260 = vuzp1q_s32(v225, v224);
  v261 = vuzp1q_s32(v228, v227);
  v262 = vuzp1q_s32(v231, v230);
  v263 = vuzp1q_s32(v235, v234);
  v264 = vuzp1q_s32(v238, v237);
  v265 = vuzp1q_s32(v241, v240);
  v266 = vuzp1q_s32(v244, v243);
  v267 = vuzp1q_s32(v247, v246);
  v268 = vuzp1q_s32(v250, v249);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vuzp1q_s32(v253, v252);
  v270 = vshlq_u32(v254, vnegq_s32(vandq_s8(v454, v247)));
  v424 = vzip1q_s32(v254, v270);
  v427 = vzip2q_s32(v254, v270);
  v252.i64[0] = 0xFFFF0000FFFFLL;
  v252.i64[1] = 0xFFFF0000FFFFLL;
  v271 = vshlq_u32(v255, vnegq_s32(vandq_s8(v432, v252)));
  v418 = vzip1q_s32(v255, v271);
  v421 = vzip2q_s32(v255, v271);
  v272 = vnegq_s32(vandq_s8(v434, v252));
  v273 = vshlq_u32(v256, v272);
  v412 = vzip1q_s32(v256, v273);
  v415 = vzip2q_s32(v256, v273);
  v274 = vshlq_u32(v257, v272);
  v406 = vzip1q_s32(v257, v274);
  v409 = vzip2q_s32(v257, v274);
  v275 = vshlq_u32(v258, v272);
  v402 = vzip1q_s32(v258, v275);
  v404 = vzip2q_s32(v258, v275);
  v234.i64[0] = 0xFFFF0000FFFFLL;
  v234.i64[1] = 0xFFFF0000FFFFLL;
  v276 = vnegq_s32(vandq_s8(v436, v234));
  v277 = vshlq_u32(v259, v276);
  v399 = vzip1q_s32(v259, v277);
  v400 = vzip2q_s32(v259, v277);
  v278 = vshlq_u32(v260, v276);
  v397 = vzip1q_s32(v260, v278);
  v398 = vzip2q_s32(v260, v278);
  v279 = vshlq_u32(v261, v276);
  v395 = vzip1q_s32(v261, v279);
  v396 = vzip2q_s32(v261, v279);
  v280 = vshlq_u32(v262, v276);
  v394 = vzip2q_s32(v262, v280);
  v281 = vzip1q_s32(v262, v280);
  v262.i64[0] = 0xFFFF0000FFFFLL;
  v262.i64[1] = 0xFFFF0000FFFFLL;
  v282 = vnegq_s32(vandq_s8(v438, v262));
  v283 = vshlq_u32(v263, v282);
  v284 = vzip2q_s32(v263, v283);
  v285 = vzip1q_s32(v263, v283);
  v286 = vshlq_u32(v264, v282);
  v287 = vzip2q_s32(v264, v286);
  v288 = vzip1q_s32(v264, v286);
  v289 = vshlq_u32(v265, v282);
  v290 = vzip2q_s32(v265, v289);
  v291 = vzip1q_s32(v265, v289);
  v292 = vshlq_u32(v266, v282);
  v293 = vzip2q_s32(v266, v292);
  v294 = vzip1q_s32(v266, v292);
  v266.i64[0] = 0xFFFF0000FFFFLL;
  v266.i64[1] = 0xFFFF0000FFFFLL;
  v295 = vnegq_s32(vandq_s8(v440, v266));
  v296 = vshlq_u32(v267, v295);
  v297 = vzip2q_s32(v267, v296);
  v298 = vzip1q_s32(v267, v296);
  v299 = vshlq_u32(v268, v295);
  v300 = vzip2q_s32(v268, v299);
  v301 = vzip1q_s32(v268, v299);
  *v270.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v208), xmmword_29D2F10A0));
  v299.i32[0] = v208;
  LOWORD(v208) = v270.i16[2];
  v299.i16[2] = v270.i16[0];
  v302 = vshlq_u32(v269, v295);
  v303 = vuzp1q_s16(v285, v284);
  v304 = vuzp1q_s16(v288, v287);
  v305 = vuzp1q_s16(v298, v297);
  v306 = vuzp1q_s16(v301, v300);
  v307 = vuzp1q_s16(vzip1q_s32(v269, v302), vzip2q_s32(v269, v302));
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v273.i64[0] = 0xF000F000F000FLL;
  v273.i64[1] = 0xF000F000F000FLL;
  v300.i64[0] = 0x10001000100010;
  v300.i64[1] = 0x10001000100010;
  v308 = vshlq_s16(vuzp1q_s16(v418, v421), vsubq_s16(v300, v432));
  v309 = vsubq_s16(v300, v434);
  v269.i64[0] = 0xF000F000F000FLL;
  v269.i64[1] = 0xF000F000F000FLL;
  v310 = vaddq_s16(v432, v269);
  v311 = vaddq_s16(v434, v269);
  v231.i64[0] = 0x10001000100010;
  v231.i64[1] = 0x10001000100010;
  v312 = vsubq_s16(v231, v436);
  v297.i64[0] = 0xF000F000F000FLL;
  v297.i64[1] = 0xF000F000F000FLL;
  v313 = vaddq_s16(v436, v297);
  v314 = vshlq_s16(vuzp1q_s16(v399, v400), v312);
  v315 = vshlq_s16(vuzp1q_s16(v397, v398), v312);
  v316 = vshlq_s16(vuzp1q_s16(v395, v396), v312);
  v317 = vshlq_s16(vuzp1q_s16(v281, v394), v312);
  v312.i64[0] = 0x10001000100010;
  v312.i64[1] = 0x10001000100010;
  v318 = vsubq_s16(v312, v438);
  v261.i64[0] = 0xF000F000F000FLL;
  v261.i64[1] = 0xF000F000F000FLL;
  v319 = vaddq_s16(v438, v261);
  v320 = vshlq_s16(v303, v318);
  v321 = vshlq_s16(v304, v318);
  v322 = vshlq_s16(vuzp1q_s16(v291, v290), v318);
  v323 = vshlq_s16(vuzp1q_s16(v294, v293), v318);
  v290.i64[0] = 0x10001000100010;
  v290.i64[1] = 0x10001000100010;
  v324 = vsubq_s16(v290, v440);
  v255.i64[0] = 0xF000F000F000FLL;
  v255.i64[1] = 0xF000F000F000FLL;
  v325 = vaddq_s16(v440, v255);
  v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(v424, v427), vsubq_s16(v302, v454)), vaddq_s16(v454, v273));
  v327 = vshlq_s16(v308, v310);
  v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v412, v415), v309), v311);
  v329 = vshlq_s16(vshlq_s16(vuzp1q_s16(v406, v409), v309), v311);
  v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(v402, v404), v309), v311);
  v331 = vshlq_s16(v321, v319);
  v332 = vshlq_s16(v323, v319);
  v333 = vshlq_u64(v198, v430);
  v334 = vuzp1q_s32(vzip1q_s64(v198, v333), vzip2q_s64(v198, v333));
  v335 = vshlq_u32(v334, v295);
  v336 = vshlq_s16(vshlq_s16(v307, v324), v325);
  v337 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v324), v325);
  v338 = vandq_s8(v326, v446);
  v339 = vdupq_lane_s64(v326.i64[0], 0);
  v340 = vaddq_s16(v338, v327);
  v341 = vandq_s8(v442, v339);
  v342 = vsubq_s16(vshlq_s16(v314, v313), v341);
  v343 = vsubq_s16(vshlq_s16(v315, v313), v341);
  v344 = vsubq_s16(vshlq_s16(v316, v313), v341);
  v345 = vsubq_s16(vshlq_s16(v317, v313), v341);
  v346 = vandq_s8(v444, v339);
  v347 = vsubq_s16(vshlq_s16(v320, v319), v346);
  v348 = vsubq_s16(v331, v346);
  v349 = vsubq_s16(vshlq_s16(v322, v319), v346);
  v350 = vandq_s8(v446, v339);
  v351 = vsubq_s16(v332, v346);
  v352 = vandq_s8(v448, v339);
  v353 = vsubq_s16(vshlq_s16(vshlq_s16(v305, v324), v325), v352);
  v354 = vsubq_s16(vshlq_s16(vshlq_s16(v306, v324), v325), v352);
  v355 = vsubq_s16(v336, v352);
  v356 = vsubq_s16(v337, v352);
  v357 = vsubq_s16(v328, v350);
  v358 = vsubq_s16(v329, v350);
  v359.i64[0] = 0x1000100010001;
  v359.i64[1] = 0x1000100010001;
  v360 = vsubq_s16(v340, v350);
  v361 = vsubq_s16(v330, v350);
  v299.i16[3] = v208;
  v362 = vdupq_lane_s64(v299.i64[0], 0);
  if (vaddvq_s16(vceqq_s16(v450, v359)))
  {
    v363 = vnegq_s16(vandq_s8(v452, v359));
    v364.i64[0] = v361.i64[0];
    v365.i64[1] = v360.i64[1];
    v364.i64[1] = v360.i64[0];
    v365.i64[0] = v361.i64[1];
    v366 = vbslq_s8(v363, v365, v360);
    v367 = vbslq_s8(v363, v364, v361);
    v365.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v365.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v368 = vandq_s8(vqtbl4q_s8(*(&v357 - 1), v365), v363);
    v464.val[0] = vaddq_s16(v366, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10B0), v363));
    v464.val[1] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10C0), v363));
    v464.val[2] = vaddq_s16(v358, v368);
    v464.val[3] = vaddq_s16(v367, v368);
    v369 = vandq_s8(vqtbl4q_s8(v464, v365), v363);
    v360 = vaddq_s16(v464.val[0], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10D0), v363));
    v357 = vaddq_s16(v464.val[1], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10E0), v363));
    v358 = vaddq_s16(v464.val[2], v369);
    v361 = vaddq_s16(v464.val[3], v369);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10B0), v363), v342);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10F0), v363), v343);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, v365), v363), v344);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F1100), v363), v345);
    v370 = vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F10D0), v363);
    v464.val[0] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v342 = vaddq_s16(v370, v465.val[0]);
    v343 = vaddq_s16(v465.val[1], v370);
    v344 = vaddq_s16(v465.val[2], v464.val[0]);
    v345 = vaddq_s16(v465.val[3], v464.val[0]);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0EB0), v363), v347);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0FB0), v363), v348);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10B0), v363), v349);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10C0), v363), v351);
    v464.val[1] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v347 = vaddq_s16(v465.val[0], v464.val[1]);
    v348 = vaddq_s16(v465.val[1], v464.val[1]);
    v349 = vaddq_s16(v465.val[2], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F0FE0), v363));
    v351 = vaddq_s16(v465.val[3], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F1110), v363));
    v464.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F0EB0), v363), v353);
    v464.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F1120), v363), v354);
    v371 = v452;
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10B0), v363), v355);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10C0), v363), v356);
    v372 = vandq_s8(vqtbl4q_s8(*(&v464 + 32), v365), v363);
    v353 = vaddq_s16(v464.val[2], v372);
    v354 = vaddq_s16(v464.val[3], v372);
    v355 = vaddq_s16(v465.val[0], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F0FE0), v363));
    v356 = vaddq_s16(v465.val[1], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F1130), v363));
  }

  else
  {
    v371 = v452;
  }

  v373 = vaddq_s16(v360, v362);
  v374 = vaddq_s16(v357, v362);
  v375 = vaddq_s16(v358, v362);
  v376 = vaddq_s16(v361, v362);
  v377 = vaddq_s16(v342, v362);
  v378 = vaddq_s16(v343, v362);
  v379 = vaddq_s16(v344, v362);
  v380 = vaddq_s16(v345, v362);
  v381 = vaddq_s16(v347, v362);
  v382 = vaddq_s16(v348, v362);
  v383 = vaddq_s16(v349, v362);
  v384 = vaddq_s16(v351, v362);
  v385 = vaddq_s16(v353, v362);
  v386 = vaddq_s16(v354, v362);
  v387 = vaddq_s16(v355, v362);
  v388 = vaddq_s16(v356, v362);
  v389.i64[0] = 0x10001000100010;
  v389.i64[1] = 0x10001000100010;
  v390 = vceqzq_s16(vandq_s8(v371, v389));
  v391 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1140), v390), v373);
  *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1140), v390), v375);
  *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1140), v390), v381);
  *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1140), v390), v383);
  v392 = (a1 + 2 * a2);
  *v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1140), v390), v374);
  v391[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1140), v390), v376);
  v391[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1140), v390), v382);
  v391[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1140), v390), v384);
  *v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1140), v390), v377);
  v392[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1140), v390), v379);
  v392[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1140), v390), v385);
  v392[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v387, xmmword_29D2F1140), v390), v387);
  v393 = (v392 + a2);
  *v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1140), v390), v378);
  v393[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1140), v390), v380);
  v393[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1140), v390), v386);
  v393[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v388, xmmword_29D2F1140), v390), v388);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 64, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 64, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 512, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 576, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1024, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1088, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1536, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1600, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = *(a3 + a4 + 32);
  v11 = *(a3 + a4 + 48);
  v13 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  v12 = (v7 + a4);
  v17 = v15;
  v18 = v14;
  v19 = v12[1];
  v20 = v12[2];
  v21 = v12[3];
  v22 = *v12;
  v23 = vdupq_lane_s64(*a3, 0);
  v476 = *a3;
  v477 = *(a3 + a4);
  v478 = *(a3 + 16);
  v479 = *(a3 + a4 + 16);
  v480 = vsubq_s16(*a3, v23);
  v482 = vsubq_s16(v477, v23);
  v484 = vsubq_s16(v478, v23);
  v486 = vsubq_s16(v479, v23);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vzip1q_s16(v26, v27);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v28)), vceqzq_s16(v28));
  v488 = vsubq_s16(v13, v23);
  v489 = vsubq_s16(v22, v23);
  v31 = vsubq_s16(v18, v23);
  v32 = vminq_s16(vminq_s16(v488, v489), v31);
  v490 = v31;
  v491 = vsubq_s16(v19, v23);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v26, v33);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v488, v489), v31), v491), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(v32, v491), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(v34, v37);
  v40 = vminq_s16(vminq_s16(v27, v33), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v41)), vceqzq_s16(v41));
  v492 = vsubq_s16(v9, v23);
  v493 = vsubq_s16(v10, v23);
  v466 = v9;
  v468 = v10;
  v469 = v8;
  v43 = vsubq_s16(v8, v23);
  v44 = vminq_s16(vminq_s16(v492, v493), v43);
  v471 = v11;
  v494 = v43;
  v495 = vsubq_s16(v11, v23);
  v45 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v493), v43), v495), xmmword_29D2F1150);
  v46 = vqtbl1q_s8(vminq_s16(v44, v495), xmmword_29D2F1150);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v39, v47);
  v50 = vminq_s16(v40, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v51)), vceqzq_s16(v51));
  v496 = vsubq_s16(v17, v23);
  v497 = vsubq_s16(v20, v23);
  v500 = v23;
  v472 = v17;
  v474 = v20;
  v475 = v16;
  v464 = v19;
  v465 = v21;
  v498 = vsubq_s16(v16, v23);
  v499 = vsubq_s16(v21, v23);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v30, v30);
  v62 = vpmaxq_s16(v42, v42);
  v63 = vpmaxq_s16(v52, v52);
  v64 = vpmaxq_s16(v60, v60);
  v65 = vmaxq_s16(vmaxq_s16(v61, v62), vmaxq_s16(v63, v64));
  v66 = vclzq_s16(vsubq_s16(v57, v58));
  v67.i64[0] = 0xF000F000F000FLL;
  v67.i64[1] = 0xF000F000F000FLL;
  v68.i64[0] = -1;
  v68.i64[1] = -1;
  v507 = v58;
  v508 = v57;
  v69 = vsubq_s16(vshlq_s16(v68, vsubq_s16(v67, v66)), v58);
  v70 = vsubq_s16(v29, v66);
  v71 = vcgtq_s16(v65, v70);
  v72 = vminq_s16(v70, v65);
  v509 = vandq_s8(v69, v71);
  v9.i64[0] = 0x8000800080008;
  v9.i64[1] = 0x8000800080008;
  v73.i64[0] = 0x3000300030003;
  v73.i64[1] = 0x3000300030003;
  v74 = vorrq_s8(vandq_s8(vceqzq_s16(v72), v73), vorrq_s8(vandq_s8(v71, v9), 0));
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v62), v73), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v63), v73), 0);
  v503 = vsubq_s16(v72, v75);
  v504 = vsubq_s16(v72, v76);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v64), v73), 0);
  v505 = vsubq_s16(v72, v77);
  v506 = v72;
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v61), v73), 0);
  v79.i64[0] = 0x4000400040004;
  v79.i64[1] = 0x4000400040004;
  v80 = vorrq_s8(vbicq_s8(v79, vceqq_s16(vaddq_s16(v77, v76), vnegq_s16(vaddq_s16(v78, v75)))), v74);
  v501 = v80;
  v502 = vsubq_s16(v72, v78);
  if (vmaxvq_s16(v72))
  {
    v448 = vsubq_s16(v480, vqtbl1q_s8(v480, xmmword_29D2F1140));
    v81 = vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140));
    v461 = v74;
    v82 = vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140));
    v83 = vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140));
    v84 = vsubq_s16(v489, vqtbl1q_s8(v489, xmmword_29D2F1140));
    v85 = vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140));
    v86 = vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140));
    v87 = vsubq_s16(v494, vqtbl1q_s8(v494, xmmword_29D2F1140));
    v88 = vsubq_s16(v495, vqtbl1q_s8(v495, xmmword_29D2F1140));
    v89 = vsubq_s16(v496, vqtbl1q_s8(v496, xmmword_29D2F1140));
    v90 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v81), v82), v83);
    v452 = v81;
    v454 = v83;
    v455 = v82;
    v91 = vminq_s16(vminq_s16(v448, v81), v82);
    v92 = vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140));
    v93 = vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140));
    v94 = vminq_s16(v91, v83);
    v95 = vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140));
    v96 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v97 = vqtbl1q_s8(v94, xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v100 = vmaxq_s16(v98, v81);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v101 = vminq_s16(v99, v81);
    v102 = vzip1q_s16(v98, v99);
    v81.i64[0] = 0x10001000100010;
    v81.i64[1] = 0x10001000100010;
    v103 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v100, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v457 = vsubq_s16(v497, vqtbl1q_s8(v497, xmmword_29D2F1140));
    v459 = vsubq_s16(v498, vqtbl1q_s8(v498, xmmword_29D2F1140));
    v447 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v123 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v124 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v125 = vpmaxq_s16(v123, v123);
    v126 = vpminq_s16(v124, v124);
    v127 = vmaxq_s16(v118, v125);
    v128 = vminq_s16(v119, v126);
    v129 = vzip1q_s16(v125, v126);
    v130 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v129)), vceqzq_s16(v129));
    v131 = vpmaxq_s16(v130, v130);
    v132 = vmaxq_s16(vmaxq_s16(v104, v113), vmaxq_s16(v122, v131));
    v133 = v128;
    v453 = v127;
    v134 = vclzq_s16(vsubq_s16(v127, v128));
    v135 = vsubq_s16(v81, v134);
    v136 = vcgtq_s16(v132, v135);
    v137 = vminq_s16(v135, v132);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v104), v73), 0);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v113), v73), 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v122), v73), 0);
    v141 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v131), v73), 0);
    v118.i64[0] = 0x4000400040004;
    v118.i64[1] = 0x4000400040004;
    v142 = vbicq_s8(v118, vceqq_s16(vaddq_s16(v141, v140), vnegq_s16(vaddq_s16(v138, v139))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v143 = v136;
    v144 = vbslq_s8(v136, v132, v81);
    v145 = vsubq_s16(v137, v138);
    v146 = vsubq_s16(v137, v141);
    v450 = vsubq_s16(v137, v139);
    v451 = vsubq_s16(v137, v140);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v449 = v145;
    v147 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v137, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v142, v142)), v145, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v451, v450), v146), 3uLL));
    v141.i64[0] = 0x8000800080008;
    v141.i64[1] = 0x8000800080008;
    v127.i64[0] = 0x2000200020002;
    v127.i64[1] = 0x2000200020002;
    v148 = vandq_s8(vceqq_s16(vandq_s8(v461, v73), v127), v81);
    v149 = v506;
    v150 = v502;
    v151 = v503;
    v152 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, vceqzq_s16(vandq_s8(v461, v141))), v148), vandq_s8(vaddq_s16(v80, v80), v141)), v502, v138);
    v153 = v504;
    v154 = v505;
    v155 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v152, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v147).i64[0], 0);
    v156 = vaddvq_s16(v155);
    v158 = a5 < 4 || a6 < 2;
    if (v156)
    {
      v159.i64[0] = 0x3000300030003;
      v159.i64[1] = 0x3000300030003;
      v160 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v137), v159), v144), v142);
      v161.i64[0] = 0xF000F000F000FLL;
      v161.i64[1] = 0xF000F000F000FLL;
      v162 = vsubq_s16(v161, v134);
      v480 = vbslq_s8(v155, v448, v480);
      v482 = vbslq_s8(v155, v452, v482);
      v161.i64[0] = -1;
      v161.i64[1] = -1;
      v484 = vbslq_s8(v155, v455, v484);
      v486 = vbslq_s8(v155, v454, v486);
      v163 = vandq_s8(vsubq_s16(vshlq_s16(v161, v162), v133), v143);
      v488 = vbslq_s8(v155, v93, v488);
      v489 = vbslq_s8(v155, v84, v489);
      v490 = vbslq_s8(v155, v92, v490);
      v491 = vbslq_s8(v155, v85, v491);
      v492 = vbslq_s8(v155, v95, v492);
      v493 = vbslq_s8(v155, v86, v493);
      v494 = vbslq_s8(v155, v87, v494);
      v495 = vbslq_s8(v155, v88, v495);
      v496 = vbslq_s8(v155, v89, v496);
      v497 = vbslq_s8(v155, v457, v497);
      v498 = vbslq_s8(v155, v459, v498);
      v499 = vbslq_s8(v155, v447, v499);
      v150 = vbslq_s8(v155, v449, v502);
      v151 = vbslq_s8(v155, v450, v503);
      v502 = v150;
      v503 = v151;
      v153 = vbslq_s8(v155, v451, v504);
      v154 = vbslq_s8(v155, v146, v505);
      v504 = v153;
      v505 = v154;
      v508 = vbslq_s8(v155, v453, v508);
      v509 = vbslq_s8(v155, v163, v509);
      v149 = vbslq_s8(v155, v137, v506);
      v506 = v149;
      v507 = vbslq_s8(v155, v133, v507);
      v80 = vbslq_s8(v155, v160, v501);
      v500 = vbslq_s8(v155, vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140)), v500);
      v501 = v80;
    }

    v164 = v476;
    v165 = v477;
    v166 = v478;
    v167 = v479;
    if (!v158)
    {
      v168 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v190 = vsubq_s16(v476, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v169 = vsubq_s16(v478, v168);
      v170 = vsubq_s16(v479, v168);
      v171 = v464.i64[0];
      v172 = v479.i64[1];
      v173 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v174 = vsubq_s16(v22, vqtbl4q_s8(*v13.i8, xmmword_29D2F10F0));
      v175 = vsubq_s16(v18, vqtbl4q_s8(*v13.i8, xmmword_29D2F1160));
      v176 = vsubq_s16(v464, vqtbl4q_s8(*v13.i8, xmmword_29D2F1100));
      v510.val[0] = v466;
      v510.val[1] = v468;
      v510.val[2] = v469;
      v510.val[3].i64[0] = v471.i64[0];
      v510.val[3].i64[1] = v479.i64[1];
      v177 = vsubq_s16(v466, vqtbl4q_s8(v510, xmmword_29D2F1170));
      v178 = vsubq_s16(v468, vqtbl4q_s8(v510, xmmword_29D2F1180));
      v179 = vsubq_s16(v469, vqtbl4q_s8(v510, xmmword_29D2F10B0));
      v180 = vsubq_s16(v471, vqtbl4q_s8(v510, xmmword_29D2F10C0));
      v510.val[3] = v472;
      v181 = v474;
      v182 = v475;
      v183 = v465.i64[0];
      v184 = v479.i64[1];
      v185 = vsubq_s16(v472, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1170));
      v186 = vsubq_s16(v474, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1120));
      v187 = vsubq_s16(v465, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10C0));
      v188 = v169;
      v189.i64[0] = v170.i64[0];
      v189.i64[1] = v190.i64[0];
      v190.i64[0] = v170.i64[1];
      v473 = vsubq_s16(v477, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195.i64[0] = 0x8000800080008000;
      v195.i64[1] = 0x8000800080008000;
      v196 = vmaxq_s16(v193, v195);
      v197.i64[0] = 0x8000800080008000;
      v197.i64[1] = 0x8000800080008000;
      v198 = vzip1q_s16(v193, v194);
      v170.i64[0] = 0x10001000100010;
      v170.i64[1] = 0x10001000100010;
      v199 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v198)), vceqzq_s16(v198));
      v200 = vpmaxq_s16(v199, v199);
      v201 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v173, v174), v175), v176);
      v462 = v174;
      v463 = v173;
      v202 = vminq_s16(v173, v174);
      v203 = v178;
      v470 = v175;
      v467 = v176;
      v204 = vqtbl1q_s8(v201, xmmword_29D2F1150);
      v205 = vqtbl1q_s8(vminq_s16(vminq_s16(v202, v175), v176), xmmword_29D2F1150);
      v206 = vpmaxq_s16(v204, v204);
      v207 = vpminq_s16(v205, v205);
      v208 = vmaxq_s16(v196, v206);
      v209 = vminq_s16(vminq_s16(v194, v197), v207);
      v210 = vzip1q_s16(v206, v207);
      v211 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v210)), vceqzq_s16(v210));
      v212 = vpmaxq_s16(v211, v211);
      v458 = vsubq_s16(v475, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10B0));
      v460 = v179;
      v213 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v510.val[3] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v213, v213);
      v510.val[3] = vpminq_s16(v510.val[3], v510.val[3]);
      v215 = vmaxq_s16(v208, v214);
      v216 = vminq_s16(v209, v510.val[3]);
      v217 = vzip1q_s16(v214, v510.val[3]);
      v218 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v217)), vceqzq_s16(v217));
      v510.val[3] = vpmaxq_s16(v218, v218);
      v219 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v220 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v221 = vpmaxq_s16(v219, v219);
      v222 = vpminq_s16(v220, v220);
      v223 = vmaxq_s16(v215, v221);
      v224 = vminq_s16(v216, v222);
      v225 = vzip1q_s16(v221, v222);
      v226 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v225)), vceqzq_s16(v225));
      v227 = vpmaxq_s16(v226, v226);
      v228 = vmaxq_s16(vmaxq_s16(v200, v212), vmaxq_s16(v510.val[3], v227));
      v456 = v223;
      v229 = vclzq_s16(vsubq_s16(v223, v224));
      v230 = vsubq_s16(v170, v229);
      v231 = vcgtq_s16(v228, v230);
      v232 = vminq_s16(v230, v228);
      v230.i64[0] = 0x3000300030003;
      v230.i64[1] = 0x3000300030003;
      v233 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v200), v230), 0);
      v234 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v212), v230), 0);
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v510.val[3]), v230), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v227), v230), 0);
      v237 = vsubq_s16(v232, v233);
      v238 = vsubq_s16(v232, v234);
      v239 = vsubq_s16(v232, v235);
      v240 = vsubq_s16(v232, v236);
      v194.i64[0] = 0x4000400040004;
      v194.i64[1] = 0x4000400040004;
      v241 = vbicq_s8(v194, vceqq_s16(vaddq_s16(v236, v235), vnegq_s16(vaddq_s16(v233, v234))));
      v175.i64[0] = 0x7000700070007;
      v175.i64[1] = 0x7000700070007;
      v242 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v232, v231), vaddq_s16(v241, v241)), v237, v175), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL));
      v80 = v501;
      v150 = v502;
      v243 = vandq_s8(v501, v230);
      v244.i64[0] = 0x2000200020002;
      v244.i64[1] = 0x2000200020002;
      v245 = vandq_s8(vceqq_s16(v243, v244), v170);
      v243.i64[0] = 0x8000800080008;
      v243.i64[1] = 0x8000800080008;
      v246 = vandq_s8(vaddq_s16(v80, v80), v243);
      v247 = vceqzq_s16(vandq_s8(v501, v243));
      v154 = v505;
      v149 = v506;
      v248 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, v247), v246), v245), v502, v175);
      v151 = v503;
      v153 = v504;
      v249 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v248, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v242).i64[0], 0);
      if (vaddvq_s16(v249))
      {
        v250.i64[0] = 0x9000900090009;
        v250.i64[1] = 0x9000900090009;
        v251 = vorrq_s8(vandq_s8(vceqzq_s16(v232), v244), vsubq_s16(vandq_s8(v231, v250), vmvnq_s8(v231)));
        v250.i64[0] = -1;
        v250.i64[1] = -1;
        v252.i64[0] = 0xF000F000F000FLL;
        v252.i64[1] = 0xF000F000F000FLL;
        v150 = vbslq_s8(v249, v237, v502);
        v151 = vbslq_s8(v249, v238, v503);
        v153 = vbslq_s8(v249, v239, v504);
        v154 = vbslq_s8(v249, v240, v505);
        v149 = vbslq_s8(v249, v232, v506);
        v80 = vbslq_s8(v249, vorrq_s8(v251, v241), v501);
        v499 = vbslq_s8(v249, v187, v499);
        v500 = vbslq_s8(v249, vextq_s8(v479, v479, 8uLL), v500);
        v480 = vbslq_s8(v249, v190, v480);
        v482 = vbslq_s8(v249, v473, v482);
        v484 = vbslq_s8(v249, v188, v484);
        v486 = vbslq_s8(v249, v189, v486);
        v488 = vbslq_s8(v249, v463, v488);
        v489 = vbslq_s8(v249, v462, v489);
        v490 = vbslq_s8(v249, v470, v490);
        v491 = vbslq_s8(v249, v467, v491);
        v492 = vbslq_s8(v249, v177, v492);
        v493 = vbslq_s8(v249, v203, v493);
        v494 = vbslq_s8(v249, v460, v494);
        v495 = vbslq_s8(v249, v180, v495);
        v496 = vbslq_s8(v249, v185, v496);
        v497 = vbslq_s8(v249, v186, v497);
        v498 = vbslq_s8(v249, v458, v498);
        v507 = vbslq_s8(v249, v224, v507);
        v508 = vbslq_s8(v249, v456, v508);
        v509 = vbslq_s8(v249, vandq_s8(vsubq_s16(vshlq_s16(v250, vsubq_s16(v252, v229)), v224), v231), v509);
        v502 = v150;
        v503 = v151;
        v504 = v153;
        v505 = v154;
        v506 = v149;
        v501 = v80;
      }
    }

    v253 = vandq_s8(v509, vceqq_s16(v149, v150));
    v481 = vaddq_s16(v253, v480);
    v483 = vaddq_s16(v482, v253);
    v485 = vaddq_s16(v484, v253);
    v487 = vaddq_s16(v486, v253);
    v254 = vandq_s8(v509, vceqq_s16(v149, v151));
    v488 = vaddq_s16(v488, v254);
    v489 = vaddq_s16(v489, v254);
    v490 = vaddq_s16(v490, v254);
    v491 = vaddq_s16(v491, v254);
    v255 = vandq_s8(v509, vceqq_s16(v149, v153));
    v492 = vaddq_s16(v492, v255);
    v493 = vaddq_s16(v493, v255);
    v494 = vaddq_s16(v494, v255);
    v495 = vaddq_s16(v495, v255);
    v256 = vandq_s8(v509, vceqq_s16(v149, v154));
    v496 = vaddq_s16(v496, v256);
    v497 = vaddq_s16(v497, v256);
    v498 = vaddq_s16(v498, v256);
    v499 = vaddq_s16(v499, v256);
    v256.i64[0] = 0x8000800080008;
    v256.i64[1] = 0x8000800080008;
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v80, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v149, vceqzq_s16(vandq_s8(v80, v256))), vandq_s8(vaddq_s16(v80, v80), v256)), v260), v150, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v151), v154), 3uLL));
    v262 = vpaddq_s16(v261, v261);
    if ((vpaddq_s16(v262, v262).i16[0] - 925) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v263 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v264 = 8 * (a1 & 7);
      if (v264)
      {
        v265 = *v263 & ~(-1 << v264);
      }

      else
      {
        v265 = 0;
      }

      *a2 = 0;
      v267 = v500.i64[0];
      if (v149.i16[0])
      {
        v268 = ((v149.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v268 = 0;
      }

      if (v149.i16[1])
      {
        v269 = ((v149.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v269 = 0;
      }

      if (v149.i16[2])
      {
        v270 = (v149.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v270 = 0;
      }

      if (v149.i16[3])
      {
        v271 = ((v149.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v271 = 0;
      }

      v272 = (v80.i8[0] & 0x1F | (32 * (v80.i8[2] & 0x1F)) & 0x83FF | ((v80.i8[4] & 0x1F) << 10) | ((v80.i8[6] & 0x1F) << 15) | v268 | v269 | v270) + v271;
      v273 = (v272 << v264) | v265;
      if (v264 >= 0x1C)
      {
        *v263 = v273;
        v273 = v272 >> (-8 * (a1 & 7u));
      }

      v274 = v267 | (WORD1(v267) << 16) | (WORD2(v267) << 32) | (HIWORD(v267) << 48);
      v275 = (v264 + 36) & 0x3C;
      *(v263 + (((v264 + 36) >> 3) & 8)) = v273 | (v274 << v275);
      v276 = v264 + 100;
      v277 = vsubq_s16(v506, v502);
      v278 = vsubq_s16(v506, v503);
      v279 = vsubq_s16(v506, v504);
      v280 = vsubq_s16(v506, v505);
      *v277.i8 = vqmovn_u16(v277);
      *v278.i8 = vqmovn_u16(v278);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u16(v280);
      v281 = vtrn1q_s8(v277, v278);
      v282 = vtrn2q_s8(v277, v278);
      v283 = vtrn1q_s8(v279, v280);
      v284 = vtrn2q_s8(v279, v280);
      v285 = vzip1q_s16(v282, v284);
      v286 = vtrn2q_s16(v282, v284);
      v282.i64[0] = vzip1q_s32(vzip1q_s16(v281, v283), v285).u64[0];
      v286.i64[0] = vzip1q_s32(vtrn2q_s16(v281, v283), v286).u64[0];
      v279.i64[0] = 0x202020202020202;
      v279.i64[1] = 0x202020202020202;
      v287 = vandq_s8(vmovl_s16(vtst_s16(*v501.i8, 0x4000400040004)), v279);
      v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[0] = -1;
      v281.i64[1] = -1;
      v288 = vshlq_u8(v281, vorrq_s8(v287, v279));
      v289 = vmovl_u8(vand_s8(*v288.i8, *v282.i8));
      v290 = vmovl_u8(vand_s8(*&vextq_s8(v288, v288, 8uLL), *v286.i8));
      v291 = vmovl_u8(*v287.i8);
      v292 = vmovl_high_u8(v287);
      v293 = vpaddq_s16(vshlq_u16(v289, vtrn1q_s16(0, v291)), vshlq_u16(v290, vtrn1q_s16(0, v292)));
      v294 = vpaddq_s16(v291, v292);
      v295 = vmovl_u16(*v294.i8);
      v296 = vmovl_high_u16(v294);
      v297 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v295)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v296)));
      v298 = vpaddq_s32(v295, v296);
      v299.i64[0] = v297.u32[0];
      v299.i64[1] = v297.u32[1];
      v300 = v299;
      v299.i64[0] = v297.u32[2];
      v299.i64[1] = v297.u32[3];
      v301 = v299;
      v299.i64[0] = v298.u32[0];
      v299.i64[1] = v298.u32[1];
      v302 = v299;
      v299.i64[0] = v298.u32[2];
      v299.i64[1] = v298.u32[3];
      v303 = vpaddq_s64(vshlq_u64(v300, vzip1q_s64(0, v302)), vshlq_u64(v301, vzip1q_s64(0, v299)));
      v304 = vpaddq_s64(v302, v299);
      v305 = (v264 + 100) & 0x3C;
      v306 = (v303.i64[0] << v305) | (v274 >> -v275);
      if ((v304.i64[0] + v305) >= 0x40)
      {
        *(v263 + ((v276 >> 3) & 0x18)) = v306;
        v306 = v303.i64[0] >> -v305;
      }

      v307 = v304.i64[0] + v276;
      v308 = v306 | (v303.i64[1] << v307);
      if ((v307 & 0x3F) + v304.i64[1] >= 0x40)
      {
        *(v263 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v303.i64[1] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v308 = 0;
        }
      }

      v309 = v307 + v304.i64[1];
      v310.i64[0] = 0x8000800080008;
      v310.i64[1] = 0x8000800080008;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vextq_s8(vtstq_s16(v501, v310), 0, 8uLL), v506);
      v313.i64[0] = 0xF000F000F000FLL;
      v313.i64[1] = 0xF000F000F000FLL;
      v314 = vandq_s8(vshlq_u16(v311, vaddq_s16(v312, v313)), v509);
      v315 = vmovl_u16(*v312.i8);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vmovl_high_u16(v314));
      v317 = vpaddq_s32(v315, vmovl_high_u16(v312));
      v318.i64[0] = v316.u32[0];
      v318.i64[1] = v316.u32[1];
      v319 = v318;
      v318.i64[0] = v316.u32[2];
      v318.i64[1] = v316.u32[3];
      v320 = v318;
      v318.i64[0] = v317.u32[0];
      v318.i64[1] = v317.u32[1];
      v321 = v318;
      v318.i64[0] = v317.u32[2];
      v318.i64[1] = v317.u32[3];
      v322 = vpaddq_s64(vshlq_u64(v319, vzip1q_s64(0, v321)), vshlq_u64(v320, vzip1q_s64(0, v318)));
      v323 = vpaddq_s64(v321, v318);
      v324 = (v322.i64[0] << v309) | v308;
      if (v323.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v263 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = v323.i64[0] + v309;
      v326 = v324 | (v322.i64[1] << v325);
      if ((v325 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v263 + ((v325 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v322.i64[1] >> -(v325 & 0x3F);
        if ((v325 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = v325 + v323.i64[1];
      v328 = vextq_s8(0, v502, 8uLL);
      v329.i64[0] = 0xF000F000F000FLL;
      v329.i64[1] = 0xF000F000F000FLL;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vshlq_u16(v330, vaddq_s16(v328, v329)), v481);
      v332 = vmovl_u16(*v328.i8);
      v333 = vmovl_high_u16(v328);
      v334 = vpaddq_s32(vmovl_u16(*v331.i8), vshlq_u32(vmovl_high_u16(v331), vtrn1q_s32(0, v333)));
      v335 = vpaddq_s32(v332, v333);
      v336.i64[0] = v334.u32[0];
      v336.i64[1] = v334.u32[1];
      v337 = v336;
      v336.i64[0] = v334.u32[2];
      v336.i64[1] = v334.u32[3];
      v338 = v336;
      v336.i64[0] = v335.u32[0];
      v336.i64[1] = v335.u32[1];
      v339 = v336;
      v336.i64[0] = v335.u32[2];
      v336.i64[1] = v335.u32[3];
      v340 = vpaddq_s64(vshlq_u64(v337, vzip1q_s64(0, v339)), vshlq_u64(v338, vzip1q_s64(0, v336)));
      v341 = vpaddq_s64(v339, v336);
      v342 = (v340.i64[0] << v327) | v326;
      if (v341.i64[0] + (v327 & 0x3F) >= 0x40)
      {
        *(v263 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341.i64[0] + v327;
      v344 = v342 | (v340.i64[1] << v343);
      if ((v343 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v263 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v340.i64[1] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343 + v341.i64[1];
      v346.i64[0] = 0xF000F000F000FLL;
      v346.i64[1] = 0xF000F000F000FLL;
      v347.i64[0] = -1;
      v347.i64[1] = -1;
      v348 = vandq_s8(vshlq_u16(v347, vaddq_s16(v502, v346)), v483);
      v349 = vmovl_u16(*v502.i8);
      v350 = vmovl_high_u16(v502);
      v351 = vpaddq_s32(vshlq_u32(vmovl_u16(*v348.i8), vtrn1q_s32(0, v349)), vshlq_u32(vmovl_high_u16(v348), vtrn1q_s32(0, v350)));
      v352 = vpaddq_s32(v349, v350);
      v353.i64[0] = v351.u32[0];
      v353.i64[1] = v351.u32[1];
      v354 = v353;
      v353.i64[0] = v351.u32[2];
      v353.i64[1] = v351.u32[3];
      v355 = v353;
      v353.i64[0] = v352.u32[0];
      v353.i64[1] = v352.u32[1];
      v356 = v353;
      v353.i64[0] = v352.u32[2];
      v353.i64[1] = v352.u32[3];
      v357 = vpaddq_s64(vshlq_u64(v354, vzip1q_s64(0, v356)), vshlq_u64(v355, vzip1q_s64(0, v353)));
      v358 = vpaddq_s64(v356, v353);
      v359 = (v357.i64[0] << v345) | v344;
      if (v358.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v263 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v357.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = v358.i64[0] + v345;
      v361 = v359 | (v357.i64[1] << v360);
      if ((v360 & 0x3F) + v358.i64[1] >= 0x40)
      {
        *(v263 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v357.i64[1] >> -(v360 & 0x3F);
        if ((v360 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360 + v358.i64[1];
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364.i64[0] = -1;
      v364.i64[1] = -1;
      v365 = vandq_s8(vshlq_u16(v364, vaddq_s16(v502, v363)), v485);
      v366 = vmovl_u16(*v502.i8);
      v367 = vmovl_high_u16(v502);
      v368 = vpaddq_s32(vshlq_u32(vmovl_u16(*v365.i8), vtrn1q_s32(0, v366)), vshlq_u32(vmovl_high_u16(v365), vtrn1q_s32(0, v367)));
      v369 = vpaddq_s32(v366, v367);
      v370.i64[0] = v368.u32[0];
      v370.i64[1] = v368.u32[1];
      v371 = v370;
      v370.i64[0] = v368.u32[2];
      v370.i64[1] = v368.u32[3];
      v372 = v370;
      v370.i64[0] = v369.u32[0];
      v370.i64[1] = v369.u32[1];
      v373 = v370;
      v370.i64[0] = v369.u32[2];
      v370.i64[1] = v369.u32[3];
      v374 = vpaddq_s64(vshlq_u64(v371, vzip1q_s64(0, v373)), vshlq_u64(v372, vzip1q_s64(0, v370)));
      v375 = vpaddq_s64(v373, v370);
      v376 = (v374.i64[0] << v362) | v361;
      if (v375.i64[0] + (v362 & 0x3F) >= 0x40)
      {
        *(v263 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v374.i64[0] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375.i64[0] + v362;
      v378 = v376 | (v374.i64[1] << v377);
      if ((v377 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v263 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v374.i64[1] >> -(v377 & 0x3F);
        if ((v377 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377 + v375.i64[1];
      v380.i64[0] = 0xF000F000F000FLL;
      v380.i64[1] = 0xF000F000F000FLL;
      v381.i64[0] = -1;
      v381.i64[1] = -1;
      v382 = vandq_s8(vshlq_u16(v381, vaddq_s16(v502, v380)), v487);
      v383 = vmovl_u16(*v502.i8);
      v384 = vmovl_high_u16(v502);
      v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v383)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v384)));
      v386 = vpaddq_s32(v383, v384);
      v387.i64[0] = v385.u32[0];
      v387.i64[1] = v385.u32[1];
      v388 = v387;
      v387.i64[0] = v385.u32[2];
      v387.i64[1] = v385.u32[3];
      v389 = v387;
      v387.i64[0] = v386.u32[0];
      v387.i64[1] = v386.u32[1];
      v390 = v387;
      v387.i64[0] = v386.u32[2];
      v387.i64[1] = v386.u32[3];
      v391 = vpaddq_s64(vshlq_u64(v388, vzip1q_s64(0, v390)), vshlq_u64(v389, vzip1q_s64(0, v387)));
      v392 = vpaddq_s64(v390, v387);
      v393 = (v391.i64[0] << v379) | v378;
      if (v392.i64[0] + (v379 & 0x3F) >= 0x40)
      {
        *(v263 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v391.i64[0] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v393 = 0;
        }
      }

      v394 = v392.i64[1];
      v395 = v392.i64[0] + v379;
      v396 = (v392.i64[0] + v379) & 0x3F;
      v397 = v393 | (v391.i64[1] << v395);
      if ((v396 + v392.i64[1]) >= 0x40)
      {
        *(v263 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v391.i64[1] >> -v396;
        if (!v396)
        {
          v397 = 0;
        }
      }

      v398 = 0;
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = v395 + v394;
      do
      {
        v402 = vandq_s8(vshlq_u16(v400, vaddq_s16(v503, v399)), *(&v488 + v398));
        v403 = vmovl_u16(*v503.i8);
        v404 = vmovl_high_u16(v503);
        v405 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), vtrn1q_s32(0, v403)), vshlq_u32(vmovl_high_u16(v402), vtrn1q_s32(0, v404)));
        v406 = vpaddq_s32(v403, v404);
        v407.i64[0] = v405.u32[0];
        v407.i64[1] = v405.u32[1];
        v408 = v407;
        v407.i64[0] = v405.u32[2];
        v407.i64[1] = v405.u32[3];
        v409 = v407;
        v407.i64[0] = v406.u32[0];
        v407.i64[1] = v406.u32[1];
        v410 = v407;
        v407.i64[0] = v406.u32[2];
        v407.i64[1] = v406.u32[3];
        v411 = vpaddq_s64(vshlq_u64(v408, vzip1q_s64(0, v410)), vshlq_u64(v409, vzip1q_s64(0, v407)));
        v412 = vpaddq_s64(v410, v407);
        v413 = (v411.i64[0] << v401) | v397;
        if (v412.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v401;
        v397 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v263 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v414 + v412.i64[1];
        v398 += 16;
      }

      while (v398 != 64);
      v415 = 0;
      v416.i64[0] = 0xF000F000F000FLL;
      v416.i64[1] = 0xF000F000F000FLL;
      v417.i64[0] = -1;
      v417.i64[1] = -1;
      do
      {
        v418 = vandq_s8(vshlq_u16(v417, vaddq_s16(v504, v416)), *(&v492 + v415));
        v419 = vmovl_u16(*v504.i8);
        v420 = vmovl_high_u16(v504);
        v421 = vpaddq_s32(vshlq_u32(vmovl_u16(*v418.i8), vtrn1q_s32(0, v419)), vshlq_u32(vmovl_high_u16(v418), vtrn1q_s32(0, v420)));
        v422 = vpaddq_s32(v419, v420);
        v423.i64[0] = v421.u32[0];
        v423.i64[1] = v421.u32[1];
        v424 = v423;
        v423.i64[0] = v421.u32[2];
        v423.i64[1] = v421.u32[3];
        v425 = v423;
        v423.i64[0] = v422.u32[0];
        v423.i64[1] = v422.u32[1];
        v426 = v423;
        v423.i64[0] = v422.u32[2];
        v423.i64[1] = v422.u32[3];
        v427 = vpaddq_s64(vshlq_u64(v424, vzip1q_s64(0, v426)), vshlq_u64(v425, vzip1q_s64(0, v423)));
        v428 = vpaddq_s64(v426, v423);
        v429 = (v427.i64[0] << v401) | v397;
        if (v428.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
          v429 = v427.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v429 = 0;
          }
        }

        v430 = v428.i64[0] + v401;
        v397 = v429 | (v427.i64[1] << v430);
        if ((v430 & 0x3F) + v428.i64[1] >= 0x40)
        {
          *(v263 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v427.i64[1] >> -(v430 & 0x3F);
          if ((v430 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v430 + v428.i64[1];
        v415 += 16;
      }

      while (v415 != 64);
      v431 = 0;
      v432.i64[0] = 0xF000F000F000FLL;
      v432.i64[1] = 0xF000F000F000FLL;
      v433.i64[0] = -1;
      v433.i64[1] = -1;
      do
      {
        v434 = vandq_s8(vshlq_u16(v433, vaddq_s16(v505, v432)), *(&v496 + v431));
        v435 = vmovl_u16(*v505.i8);
        v436 = vmovl_high_u16(v505);
        v437 = vpaddq_s32(vshlq_u32(vmovl_u16(*v434.i8), vtrn1q_s32(0, v435)), vshlq_u32(vmovl_high_u16(v434), vtrn1q_s32(0, v436)));
        v438 = vpaddq_s32(v435, v436);
        v439.i64[0] = v437.u32[0];
        v439.i64[1] = v437.u32[1];
        v440 = v439;
        v439.i64[0] = v437.u32[2];
        v439.i64[1] = v437.u32[3];
        v441 = v439;
        v439.i64[0] = v438.u32[0];
        v439.i64[1] = v438.u32[1];
        v442 = v439;
        v439.i64[0] = v438.u32[2];
        v439.i64[1] = v438.u32[3];
        v443 = vpaddq_s64(vshlq_u64(v440, vzip1q_s64(0, v442)), vshlq_u64(v441, vzip1q_s64(0, v439)));
        v444 = vpaddq_s64(v442, v439);
        v445 = (v443.i64[0] << v401) | v397;
        if (v444.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
          v445 = v443.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v445 = 0;
          }
        }

        v446 = v444.i64[0] + v401;
        v397 = v445 | (v443.i64[1] << v446);
        if ((v446 & 0x3F) + v444.i64[1] >= 0x40)
        {
          *(v263 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v443.i64[1] >> -(v446 & 0x3F);
          if ((v446 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v446 + v444.i64[1];
        v431 += 16;
      }

      while (v431 != 64);
      if ((v401 & 0x3F) != 0)
      {
        *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      }

      result = (v401 - v264 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v463 = *MEMORY[0x29EDCA608];
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
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v455, a5);
    }

    v451 = v458;
    v453 = v457;
    v443 = v455;
    v445 = v459;
    v439 = v456;
    v441 = v460;
    v447 = v462;
    v449 = v461;
    v18 = a3 + 32;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v455, a5);
    }

    v435 = v456;
    v437 = v455;
    v431 = v458;
    v433 = v457;
    v428 = v460;
    v429 = v459;
    v422 = v462;
    v425 = v461;
    v59 = a3 + 64;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v59, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v59, &v455, a5);
    }

    v416 = v456;
    v419 = v455;
    v410 = v458;
    v413 = v457;
    v405 = v460;
    v407 = v459;
    v401 = v462;
    v403 = v461;
    v60 = a3 + 96;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v60, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v60, &v455, a5);
    }

    v61 = v455;
    v62 = v456;
    v63 = v457;
    v64 = v458;
    v65 = v459;
    v66 = v460;
    v67 = v461;
    v68 = v462;
    *a1 = vmovn_s32(v443);
    *(a1 + 8) = vmovn_s32(v439);
    *(a1 + 16) = vmovn_s32(v445);
    *(a1 + 24) = vmovn_s32(v441);
    *(a1 + 32) = vmovn_s32(v419);
    *(a1 + 40) = vmovn_s32(v416);
    *(a1 + 48) = vmovn_s32(v407);
    *(a1 + 56) = vmovn_s32(v405);
    v69 = (a1 + a2);
    *v69 = vmovn_s32(v453);
    v69[1] = vmovn_s32(v451);
    v69[2] = vmovn_s32(v449);
    v69[3] = vmovn_s32(v447);
    v69[4] = vmovn_s32(v413);
    v69[5] = vmovn_s32(v410);
    v69[6] = vmovn_s32(v403);
    v69[7] = vmovn_s32(v401);
    v70 = (a1 + a2 + a2);
    *v70 = vmovn_s32(v437);
    v70[1] = vmovn_s32(v435);
    v70[2] = vmovn_s32(v429);
    v70[3] = vmovn_s32(v428);
    v70[4] = vmovn_s32(v61);
    v70[5] = vmovn_s32(v62);
    v70[6] = vmovn_s32(v65);
    v70[7] = vmovn_s32(v66);
    v71 = (v70 + a2);
    *v71 = vmovn_s32(v433);
    v71[1] = vmovn_s32(v431);
    v71[2] = vmovn_s32(v425);
    v71[3] = vmovn_s32(v422);
    v71[4] = vmovn_s32(v63);
    v71[5] = vmovn_s32(v64);
    v10 = 128;
    v71[6] = vmovn_s32(v67);
    v71[7] = vmovn_s32(v68);
    return v10;
  }

  if (a4 == 7)
  {
    v14 = vld1q_dup_f64(a3);
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
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
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    v10 = 8;
LABEL_156:
    v17[2] = v14;
    v17[3] = v14;
    return v10;
  }

  v19 = 8 * (a3 & 7);
  v20 = a3 & 0xFFFFFFFFFFFFFFF8;
  v21 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v19;
  if (v19 >= 0x1D)
  {
    v21 |= *(v20 + 8) << (-8 * (a3 & 7u));
  }

  v22.i16[0] = v21;
  v22.i16[1] = v21 >> 5;
  v22.i16[2] = v21 >> 10;
  v22.i16[3] = v21 >> 15;
  v23 = vand_s8(vshl_u32(vdup_n_s32(v21), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v23.i16[1] = v23.i16[2];
  v23.i16[2] = v21 >> 28;
  v23.i16[3] = BYTE4(v21) & 0xF;
  v24 = (8 * (a3 & 7)) | 0x400;
  v25 = v19 + 100;
  v26 = vand_s8(v22, 0x1F001F001F001FLL);
  v27 = vdupq_lane_s64(v26, 0);
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v450 = *&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3);
  v29 = vbicq_s8(vdupq_lane_s64(*&vadd_s16(v23, 0x1000100010001), 0), vceqq_s16((*&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v30 = vandq_s8(vmovl_s16(vtst_s16((v26 & 0xFFE4FFE4FFE4FFE4), (v26 & 0xFFE4FFE4FFE4FFE4))), v28);
  if (vmaxvq_s8(v30) < 1)
  {
    v39 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v446 = v72;
    v448 = v72;
    v58 = v29;
    v57 = v29;
    v56 = v29;
    v442 = v72;
    v444 = v72;
    v55 = v29;
  }

  else
  {
    v31 = vmovl_u8(*&vpaddq_s8(v30, v30));
    v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
    v33 = vpaddq_s32(v32, v32).u64[0];
    v34.i64[0] = v33;
    v34.i64[1] = HIDWORD(v33);
    v35 = v34;
    v36 = vaddvq_s64(v34);
    v37 = v25 + v36;
    v38 = v36 <= 0x80 && v24 >= v37;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = v25 & 0x3C;
      v42 = vaddq_s64(vdupq_n_s64(v41), vzip1q_s64(0, v35));
      v43 = (v20 + ((v25 >> 3) & 0x18));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v42)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v42)));
      if (v41 + v36 >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v42)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v42))), v40);
      }

      v25 = v37;
    }

    v44 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v45.i64[0] = v44.u32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vshlq_u64(v40, vnegq_s64(v45));
    v47 = vuzp1q_s32(vzip1q_s64(v40, v46), vzip2q_s64(v40, v46));
    v48 = vshlq_u32(v47, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v49 = vuzp1q_s16(vzip1q_s32(v47, v48), vzip2q_s32(v47, v48));
    v50 = vshlq_u16(v49, vnegq_s16((*&v30 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v51 = vuzp1q_s8(vzip1q_s16(v49, v50), vzip2q_s16(v49, v50));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v50, v30);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v53 = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v50), v51), xmmword_29D2F0F70);
    *v51.i8 = vdup_lane_s32(*v53.i8, 0);
    *v50.i8 = vdup_lane_s32(*v53.i8, 1);
    v54 = vdupq_laneq_s32(v53, 2).u64[0];
    v53.i64[0] = vdupq_laneq_s32(v53, 3).u64[0];
    v55 = vsubw_s8(v29, *v51.i8);
    v56 = vsubw_s8(v29, *v50.i8);
    v57 = vsubw_s8(v29, v54);
    v58 = vsubw_s8(v29, *v53.i8);
    v446 = vmovl_s8(vceqz_s8(*v51.i8));
    v442 = vmovl_s8(vceqz_s8(*v50.i8));
    v444 = vmovl_s8(vceqz_s8(v54));
    v448 = vmovl_s8(vceqz_s8(*v53.i8));
  }

  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v74 = 0uLL;
  v454 = vandq_s8(vextq_s8(vtstq_s16(v27, v73), 0, 8uLL), v29);
  v75 = vmovl_u16(*&vpaddq_s16(v454, v454));
  v76 = vpaddq_s32(v75, v75).u64[0];
  v77.i64[0] = v76;
  v77.i64[1] = HIDWORD(v76);
  v78 = v77;
  v79 = vaddvq_s64(v77);
  v80 = v25 + v79;
  if (v79 <= 0x80 && v24 >= v80)
  {
    v82 = v25 & 0x3F;
    v83 = vaddq_s64(vdupq_n_s64(v82), vzip1q_s64(0, v78));
    v84 = (v20 + 8 * (v25 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v83)));
    if (v82 + v79 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v74);
    }

    v25 = v80;
  }

  else
  {
    v39 = 1;
  }

  v85 = v27.i8[0] & 3;
  if (v85 == 2)
  {
    v86 = v25 + 16;
    if (v24 >= v25 + 8)
    {
      v25 += 8;
    }

    else
    {
      v39 = 1;
      v86 = v25 + 8;
    }

    if (v24 >= v86)
    {
      v25 = v86;
    }

    else
    {
      v39 = 1;
    }
  }

  v87 = 0uLL;
  v432 = vextq_s8(0, v55, 8uLL);
  v88 = vmovl_u16(*&vpaddq_s16(v432, v432));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v25 + v92;
  if (v92 <= 0x80 && v24 >= v93)
  {
    v96 = v25 & 0x3F;
    v97 = vaddq_s64(vdupq_n_s64(v96), vzip1q_s64(0, v91));
    v98 = (v20 + 8 * (v25 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v97)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v97)));
    if (v96 + v92 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v97)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v97))), v95);
    }

    v25 = v93;
  }

  else
  {
    v39 = 1;
    v95 = 0uLL;
  }

  v99 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v25 + v103;
  if (v103 <= 0x80 && v24 >= v104)
  {
    v106 = v25 & 0x3F;
    v107 = vaddq_s64(vdupq_n_s64(v106), vzip1q_s64(0, v102));
    v108 = (v20 + 8 * (v25 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v107)));
    if (v106 + v103 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v87);
    }

    v25 = v104;
  }

  else
  {
    v39 = 1;
  }

  v109 = v25 + v103;
  v110 = 0uLL;
  if (v103 <= 0x80 && v24 >= v109)
  {
    v113 = v25 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v102));
    v115 = (v20 + 8 * (v25 >> 6));
    v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v103 >= 0x81)
    {
      v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v112);
    }

    v25 = v109;
  }

  else
  {
    v39 = 1;
    v112 = 0uLL;
  }

  v116 = v25 + v103;
  v117 = v103 <= 0x80 && v24 >= v116;
  v452 = v27;
  if (v117)
  {
    v118 = v25 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v102));
    v120 = (v20 + 8 * (v25 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v103 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v110);
    }

    v25 = v116;
  }

  else
  {
    v39 = 1;
  }

  v121 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v122 = vpaddq_s32(v121, v121).u64[0];
  v123.i64[0] = v122;
  v123.i64[1] = HIDWORD(v122);
  v124 = v123;
  v125 = vaddvq_s64(v123);
  v126 = v25 + v125;
  v127 = 0uLL;
  if (v125 <= 0x80 && v24 >= v126)
  {
    v130 = v25 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v124));
    v132 = (v20 + 8 * (v25 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v125 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v129);
    }

    v25 = v126;
  }

  else
  {
    v39 = 1;
    v129 = 0uLL;
  }

  v133 = v25 + v125;
  if (v125 <= 0x80 && v24 >= v133)
  {
    v135 = v25 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v124));
    v137 = (v20 + 8 * (v25 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v125 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v127);
    }

    v25 = v133;
  }

  else
  {
    v39 = 1;
  }

  v434 = v55;
  v138 = v25 + v125;
  v139 = 0uLL;
  if (v125 <= 0x80 && v24 >= v138)
  {
    v142 = v25 & 0x3F;
    v143 = vaddq_s64(vdupq_n_s64(v142), vzip1q_s64(0, v124));
    v144 = (v20 + 8 * (v25 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v144, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v143)), vshlq_u64(vdupq_lane_s64(v144->i64[0], 0), vnegq_s64(v143)));
    if (v142 + v125 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v144[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v143)), vshlq_u64(vdupq_laneq_s64(v144[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v143))), v141);
    }

    v25 = v138;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v39 = 1;
    v141 = 0uLL;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  v145 = v25 + v125;
  if (v24 < v25 + v125)
  {
LABEL_110:
    v39 = 1;
    v145 = v25;
    goto LABEL_111;
  }

  v146 = v25 & 0x3F;
  v147 = vaddq_s64(vdupq_n_s64(v146), vzip1q_s64(0, v124));
  v148 = (v20 + 8 * (v25 >> 6));
  v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
  if (v146 + v125 >= 0x81)
  {
    v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v139);
  }

LABEL_111:
  v149 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v150 = vpaddq_s32(v149, v149).u64[0];
  v151.i64[0] = v150;
  v151.i64[1] = HIDWORD(v150);
  v152 = v151;
  v153 = vaddvq_s64(v151);
  v154 = v153;
  v155 = 0uLL;
  v436 = v56;
  v438 = v57;
  if (v153 > 0x80 || (v156 = v145 + v153, v24 < v145 + v153))
  {
    v39 = 1;
    v156 = v145;
    v159 = 0uLL;
  }

  else
  {
    v157 = vaddq_s64(vdupq_n_s64(v145 & 0x3F), vzip1q_s64(0, v152));
    v158 = (v20 + 8 * (v145 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v157)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v157)));
    if ((v145 & 0x3F) + v154 >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v157)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v157))), v159);
    }
  }

  if (v154 > 0x80 || (v160 = v156 + v154, v24 < v156 + v154))
  {
    v39 = 1;
    v160 = v156;
  }

  else
  {
    v161 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v152));
    v162 = (v20 + 8 * (v156 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if ((v156 & 0x3F) + v154 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v155);
    }
  }

  v163 = 0uLL;
  if (v154 > 0x80 || (v164 = v160 + v154, v24 < v160 + v154))
  {
    v39 = 1;
    v164 = v160;
    v168 = 0uLL;
  }

  else
  {
    v165 = v160 & 0x3F;
    v166 = vaddq_s64(vdupq_n_s64(v165), vzip1q_s64(0, v152));
    v167 = (v20 + 8 * (v160 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v167, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v166)), vshlq_u64(vdupq_lane_s64(v167->i64[0], 0), vnegq_s64(v166)));
    if (v165 + v154 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v167[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v166)), vshlq_u64(vdupq_laneq_s64(v167[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v166))), v168);
    }
  }

  if (v154 > 0x80 || (v169 = v164 + v154, v24 < v164 + v154))
  {
    v39 = 1;
    v169 = v164;
  }

  else
  {
    v170 = v164 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v152));
    v172 = (v20 + 8 * (v164 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v154 >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v163);
    }
  }

  v440 = v58;
  v173 = vmovl_u16(*&vpaddq_s16(v58, v58));
  v174 = vpaddq_s32(v173, v173).u64[0];
  v175.i64[0] = v174;
  v175.i64[1] = HIDWORD(v174);
  v176 = v175;
  v177 = vaddvq_s64(v175);
  v178 = v177;
  v179 = 0uLL;
  if (v177 > 0x80 || (v180 = v169 + v177, v24 < v169 + v177))
  {
    v39 = 1;
    v180 = v169;
    v184 = 0uLL;
  }

  else
  {
    v181 = v169 & 0x3F;
    v182 = vaddq_s64(vdupq_n_s64(v181), vzip1q_s64(0, v176));
    v183 = (v20 + 8 * (v169 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v183, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v182)), vshlq_u64(vdupq_lane_s64(v183->i64[0], 0), vnegq_s64(v182)));
    if (v181 + v178 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v183[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v182)), vshlq_u64(vdupq_laneq_s64(v183[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v182))), v184);
    }
  }

  if (v178 > 0x80 || (v185 = v180 + v178, v24 < v180 + v178))
  {
    v39 = 1;
    v185 = v180;
  }

  else
  {
    v186 = v180 & 0x3F;
    v187 = vaddq_s64(vdupq_n_s64(v186), vzip1q_s64(0, v176));
    v188 = (v20 + 8 * (v180 >> 6));
    v179 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v188, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v188->i64[0], 0), vnegq_s64(v187)));
    if (v186 + v178 >= 0x81)
    {
      v179 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v188[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v188[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v179);
    }
  }

  if (v178 > 0x80 || (v189 = v185 + v178, v24 < v185 + v178))
  {
    v39 = 1;
    v189 = v185;
    v193 = 0uLL;
  }

  else
  {
    v190 = v185 & 0x3F;
    v191 = vaddq_s64(vdupq_n_s64(v190), vzip1q_s64(0, v176));
    v192 = (v20 + 8 * (v185 >> 6));
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v192, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v191)), vshlq_u64(vdupq_lane_s64(v192->i64[0], 0), vnegq_s64(v191)));
    if (v190 + v178 >= 0x81)
    {
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v192[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v191)), vshlq_u64(vdupq_laneq_s64(v192[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v191))), v193);
    }
  }

  if (v178 > 0x80)
  {
    goto LABEL_155;
  }

  v194 = v189 + v178;
  if (v24 < v189 + v178)
  {
    goto LABEL_155;
  }

  v195 = v189 & 0x3F;
  v196 = vaddq_s64(vdupq_n_s64(v195), vzip1q_s64(0, v176));
  v197 = (v20 + 8 * (v189 >> 6));
  v198 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v197, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v196)), vshlq_u64(vdupq_lane_s64(v197->i64[0], 0), vnegq_s64(v196)));
  if (v195 + v178 >= 0x81)
  {
    v198 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v197[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v196)), vshlq_u64(vdupq_laneq_s64(v197[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v196))), v198);
  }

  if ((v39 & 1) != 0 || (v10 = a4 + 1, v24 + 8 * v10 - v194 - 1024 >= 9) || v85 == 2)
  {
LABEL_155:
    v10 = 0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
    v199 = (a1 + a2);
    *v199 = v14;
    v199[1] = v14;
    v199[2] = v14;
    v199[3] = v14;
    v200 = (a1 + 2 * a2);
    *v200 = v14;
    v200[1] = v14;
    v200[2] = v14;
    v200[3] = v14;
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    goto LABEL_156;
  }

  v202 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
  v203 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
  v204 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v205 = vzip1_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
  v206 = vzip1_s32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
  v207 = vzip1_s32(*v173.i8, *&vextq_s8(v173, v173, 8uLL));
  v208 = ((2 * *(v20 + (((v19 + 36) >> 3) & 8) + 8)) << ~(v19 + 36)) | (*(v20 + (((v19 + 36) >> 3) & 8)) >> (v19 + 36));
  v209.i64[0] = v202.u32[0];
  v209.i64[1] = v202.u32[1];
  v210 = vshlq_u64(v74, vnegq_s64(v209));
  v423 = vzip1q_s64(v74, v210);
  v426 = vzip2q_s64(v74, v210);
  v209.i64[0] = v203.u32[0];
  v209.i64[1] = v203.u32[1];
  v211 = vshlq_u64(v95, vnegq_s64(v209));
  v417 = vzip1q_s64(v95, v211);
  v420 = vzip2q_s64(v95, v211);
  v209.i64[0] = v204.u32[0];
  v209.i64[1] = v204.u32[1];
  v212 = vnegq_s64(v209);
  v213 = vshlq_u64(v87, v212);
  v411 = vzip1q_s64(v87, v213);
  v414 = vzip2q_s64(v87, v213);
  v214 = vshlq_u64(v112, v212);
  v408 = vzip2q_s64(v112, v214);
  v215 = vzip1q_s64(v112, v214);
  v216 = vshlq_u64(v110, v212);
  v217 = vzip2q_s64(v110, v216);
  v218 = vzip1q_s64(v110, v216);
  v209.i64[0] = v205.u32[0];
  v209.i64[1] = v205.u32[1];
  v219 = vnegq_s64(v209);
  v220 = vshlq_u64(v129, v219);
  v221 = vzip2q_s64(v129, v220);
  v222 = vzip1q_s64(v129, v220);
  v223 = vshlq_u64(v127, v219);
  v224 = vzip2q_s64(v127, v223);
  v225 = vzip1q_s64(v127, v223);
  v226 = vshlq_u64(v141, v219);
  v227 = vzip2q_s64(v141, v226);
  v228 = vzip1q_s64(v141, v226);
  v229 = vshlq_u64(v139, v219);
  v230 = vzip2q_s64(v139, v229);
  v231 = vzip1q_s64(v139, v229);
  v209.i64[0] = v206.u32[0];
  v209.i64[1] = v206.u32[1];
  v232 = vnegq_s64(v209);
  v233 = vshlq_u64(v159, v232);
  v234 = vzip2q_s64(v159, v233);
  v235 = vzip1q_s64(v159, v233);
  v236 = vshlq_u64(v155, v232);
  v237 = vzip2q_s64(v155, v236);
  v238 = vzip1q_s64(v155, v236);
  v239 = vshlq_u64(v168, v232);
  v240 = vzip2q_s64(v168, v239);
  v241 = vzip1q_s64(v168, v239);
  v242 = vshlq_u64(v163, v232);
  v243 = vzip2q_s64(v163, v242);
  v244 = vzip1q_s64(v163, v242);
  v209.i64[0] = v207.u32[0];
  v209.i64[1] = v207.u32[1];
  v430 = vnegq_s64(v209);
  v245 = vshlq_u64(v184, v430);
  v246 = vzip2q_s64(v184, v245);
  v247 = vzip1q_s64(v184, v245);
  v248 = vshlq_u64(v179, v430);
  v249 = vzip2q_s64(v179, v248);
  v250 = vzip1q_s64(v179, v248);
  v251 = vshlq_u64(v193, v430);
  v252 = vzip2q_s64(v193, v251);
  v253 = vzip1q_s64(v193, v251);
  v254 = vuzp1q_s32(v423, v426);
  v255 = vuzp1q_s32(v417, v420);
  v256 = vuzp1q_s32(v411, v414);
  v257 = vuzp1q_s32(v215, v408);
  v258 = vuzp1q_s32(v218, v217);
  v259 = vuzp1q_s32(v222, v221);
  v260 = vuzp1q_s32(v225, v224);
  v261 = vuzp1q_s32(v228, v227);
  v262 = vuzp1q_s32(v231, v230);
  v263 = vuzp1q_s32(v235, v234);
  v264 = vuzp1q_s32(v238, v237);
  v265 = vuzp1q_s32(v241, v240);
  v266 = vuzp1q_s32(v244, v243);
  v267 = vuzp1q_s32(v247, v246);
  v268 = vuzp1q_s32(v250, v249);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vuzp1q_s32(v253, v252);
  v270 = vshlq_u32(v254, vnegq_s32(vandq_s8(v454, v247)));
  v424 = vzip1q_s32(v254, v270);
  v427 = vzip2q_s32(v254, v270);
  v252.i64[0] = 0xFFFF0000FFFFLL;
  v252.i64[1] = 0xFFFF0000FFFFLL;
  v271 = vshlq_u32(v255, vnegq_s32(vandq_s8(v432, v252)));
  v418 = vzip1q_s32(v255, v271);
  v421 = vzip2q_s32(v255, v271);
  v272 = vnegq_s32(vandq_s8(v434, v252));
  v273 = vshlq_u32(v256, v272);
  v412 = vzip1q_s32(v256, v273);
  v415 = vzip2q_s32(v256, v273);
  v274 = vshlq_u32(v257, v272);
  v406 = vzip1q_s32(v257, v274);
  v409 = vzip2q_s32(v257, v274);
  v275 = vshlq_u32(v258, v272);
  v402 = vzip1q_s32(v258, v275);
  v404 = vzip2q_s32(v258, v275);
  v234.i64[0] = 0xFFFF0000FFFFLL;
  v234.i64[1] = 0xFFFF0000FFFFLL;
  v276 = vnegq_s32(vandq_s8(v436, v234));
  v277 = vshlq_u32(v259, v276);
  v399 = vzip1q_s32(v259, v277);
  v400 = vzip2q_s32(v259, v277);
  v278 = vshlq_u32(v260, v276);
  v397 = vzip1q_s32(v260, v278);
  v398 = vzip2q_s32(v260, v278);
  v279 = vshlq_u32(v261, v276);
  v395 = vzip1q_s32(v261, v279);
  v396 = vzip2q_s32(v261, v279);
  v280 = vshlq_u32(v262, v276);
  v394 = vzip2q_s32(v262, v280);
  v281 = vzip1q_s32(v262, v280);
  v262.i64[0] = 0xFFFF0000FFFFLL;
  v262.i64[1] = 0xFFFF0000FFFFLL;
  v282 = vnegq_s32(vandq_s8(v438, v262));
  v283 = vshlq_u32(v263, v282);
  v284 = vzip2q_s32(v263, v283);
  v285 = vzip1q_s32(v263, v283);
  v286 = vshlq_u32(v264, v282);
  v287 = vzip2q_s32(v264, v286);
  v288 = vzip1q_s32(v264, v286);
  v289 = vshlq_u32(v265, v282);
  v290 = vzip2q_s32(v265, v289);
  v291 = vzip1q_s32(v265, v289);
  v292 = vshlq_u32(v266, v282);
  v293 = vzip2q_s32(v266, v292);
  v294 = vzip1q_s32(v266, v292);
  v266.i64[0] = 0xFFFF0000FFFFLL;
  v266.i64[1] = 0xFFFF0000FFFFLL;
  v295 = vnegq_s32(vandq_s8(v440, v266));
  v296 = vshlq_u32(v267, v295);
  v297 = vzip2q_s32(v267, v296);
  v298 = vzip1q_s32(v267, v296);
  v299 = vshlq_u32(v268, v295);
  v300 = vzip2q_s32(v268, v299);
  v301 = vzip1q_s32(v268, v299);
  *v270.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v208), xmmword_29D2F10A0));
  v299.i32[0] = v208;
  LOWORD(v208) = v270.i16[2];
  v299.i16[2] = v270.i16[0];
  v302 = vshlq_u32(v269, v295);
  v303 = vuzp1q_s16(v285, v284);
  v304 = vuzp1q_s16(v288, v287);
  v305 = vuzp1q_s16(v298, v297);
  v306 = vuzp1q_s16(v301, v300);
  v307 = vuzp1q_s16(vzip1q_s32(v269, v302), vzip2q_s32(v269, v302));
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v273.i64[0] = 0xF000F000F000FLL;
  v273.i64[1] = 0xF000F000F000FLL;
  v300.i64[0] = 0x10001000100010;
  v300.i64[1] = 0x10001000100010;
  v308 = vshlq_s16(vuzp1q_s16(v418, v421), vsubq_s16(v300, v432));
  v309 = vsubq_s16(v300, v434);
  v269.i64[0] = 0xF000F000F000FLL;
  v269.i64[1] = 0xF000F000F000FLL;
  v310 = vaddq_s16(v432, v269);
  v311 = vaddq_s16(v434, v269);
  v231.i64[0] = 0x10001000100010;
  v231.i64[1] = 0x10001000100010;
  v312 = vsubq_s16(v231, v436);
  v297.i64[0] = 0xF000F000F000FLL;
  v297.i64[1] = 0xF000F000F000FLL;
  v313 = vaddq_s16(v436, v297);
  v314 = vshlq_s16(vuzp1q_s16(v399, v400), v312);
  v315 = vshlq_s16(vuzp1q_s16(v397, v398), v312);
  v316 = vshlq_s16(vuzp1q_s16(v395, v396), v312);
  v317 = vshlq_s16(vuzp1q_s16(v281, v394), v312);
  v312.i64[0] = 0x10001000100010;
  v312.i64[1] = 0x10001000100010;
  v318 = vsubq_s16(v312, v438);
  v261.i64[0] = 0xF000F000F000FLL;
  v261.i64[1] = 0xF000F000F000FLL;
  v319 = vaddq_s16(v438, v261);
  v320 = vshlq_s16(v303, v318);
  v321 = vshlq_s16(v304, v318);
  v322 = vshlq_s16(vuzp1q_s16(v291, v290), v318);
  v323 = vshlq_s16(vuzp1q_s16(v294, v293), v318);
  v290.i64[0] = 0x10001000100010;
  v290.i64[1] = 0x10001000100010;
  v324 = vsubq_s16(v290, v440);
  v255.i64[0] = 0xF000F000F000FLL;
  v255.i64[1] = 0xF000F000F000FLL;
  v325 = vaddq_s16(v440, v255);
  v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(v424, v427), vsubq_s16(v302, v454)), vaddq_s16(v454, v273));
  v327 = vshlq_s16(v308, v310);
  v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v412, v415), v309), v311);
  v329 = vshlq_s16(vshlq_s16(vuzp1q_s16(v406, v409), v309), v311);
  v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(v402, v404), v309), v311);
  v331 = vshlq_s16(v321, v319);
  v332 = vshlq_s16(v323, v319);
  v333 = vshlq_u64(v198, v430);
  v334 = vuzp1q_s32(vzip1q_s64(v198, v333), vzip2q_s64(v198, v333));
  v335 = vshlq_u32(v334, v295);
  v336 = vshlq_s16(vshlq_s16(v307, v324), v325);
  v337 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v324), v325);
  v338 = vandq_s8(v326, v446);
  v339 = vdupq_lane_s64(v326.i64[0], 0);
  v340 = vaddq_s16(v338, v327);
  v341 = vandq_s8(v442, v339);
  v342 = vsubq_s16(vshlq_s16(v314, v313), v341);
  v343 = vsubq_s16(vshlq_s16(v315, v313), v341);
  v344 = vsubq_s16(vshlq_s16(v316, v313), v341);
  v345 = vsubq_s16(vshlq_s16(v317, v313), v341);
  v346 = vandq_s8(v444, v339);
  v347 = vsubq_s16(vshlq_s16(v320, v319), v346);
  v348 = vsubq_s16(v331, v346);
  v349 = vsubq_s16(vshlq_s16(v322, v319), v346);
  v350 = vandq_s8(v446, v339);
  v351 = vsubq_s16(v332, v346);
  v352 = vandq_s8(v448, v339);
  v353 = vsubq_s16(vshlq_s16(vshlq_s16(v305, v324), v325), v352);
  v354 = vsubq_s16(vshlq_s16(vshlq_s16(v306, v324), v325), v352);
  v355 = vsubq_s16(v336, v352);
  v356 = vsubq_s16(v337, v352);
  v357 = vsubq_s16(v328, v350);
  v358 = vsubq_s16(v329, v350);
  v359.i64[0] = 0x1000100010001;
  v359.i64[1] = 0x1000100010001;
  v360 = vsubq_s16(v340, v350);
  v361 = vsubq_s16(v330, v350);
  v299.i16[3] = v208;
  v362 = vdupq_lane_s64(v299.i64[0], 0);
  if (vaddvq_s16(vceqq_s16(v450, v359)))
  {
    v363 = vnegq_s16(vandq_s8(v452, v359));
    v364.i64[0] = v361.i64[0];
    v365.i64[1] = v360.i64[1];
    v364.i64[1] = v360.i64[0];
    v365.i64[0] = v361.i64[1];
    v366 = vbslq_s8(v363, v365, v360);
    v367 = vbslq_s8(v363, v364, v361);
    v365.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v365.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v368 = vandq_s8(vqtbl4q_s8(*(&v357 - 1), v365), v363);
    v464.val[0] = vaddq_s16(v366, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10B0), v363));
    v464.val[1] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10C0), v363));
    v464.val[2] = vaddq_s16(v358, v368);
    v464.val[3] = vaddq_s16(v367, v368);
    v369 = vandq_s8(vqtbl4q_s8(v464, v365), v363);
    v360 = vaddq_s16(v464.val[0], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10D0), v363));
    v357 = vaddq_s16(v464.val[1], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10E0), v363));
    v358 = vaddq_s16(v464.val[2], v369);
    v361 = vaddq_s16(v464.val[3], v369);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10B0), v363), v342);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10F0), v363), v343);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, v365), v363), v344);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F1100), v363), v345);
    v370 = vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F10D0), v363);
    v464.val[0] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v342 = vaddq_s16(v370, v465.val[0]);
    v343 = vaddq_s16(v465.val[1], v370);
    v344 = vaddq_s16(v465.val[2], v464.val[0]);
    v345 = vaddq_s16(v465.val[3], v464.val[0]);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0EB0), v363), v347);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0FB0), v363), v348);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10B0), v363), v349);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10C0), v363), v351);
    v464.val[1] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v347 = vaddq_s16(v465.val[0], v464.val[1]);
    v348 = vaddq_s16(v465.val[1], v464.val[1]);
    v349 = vaddq_s16(v465.val[2], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F0FE0), v363));
    v351 = vaddq_s16(v465.val[3], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F1110), v363));
    v464.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F0EB0), v363), v353);
    v464.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F1120), v363), v354);
    v371 = v452;
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10B0), v363), v355);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10C0), v363), v356);
    v372 = vandq_s8(vqtbl4q_s8(*(&v464 + 32), v365), v363);
    v353 = vaddq_s16(v464.val[2], v372);
    v354 = vaddq_s16(v464.val[3], v372);
    v355 = vaddq_s16(v465.val[0], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F0FE0), v363));
    v356 = vaddq_s16(v465.val[1], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F1130), v363));
  }

  else
  {
    v371 = v452;
  }

  v373 = vaddq_s16(v360, v362);
  v374 = vaddq_s16(v357, v362);
  v375 = vaddq_s16(v358, v362);
  v376 = vaddq_s16(v361, v362);
  v377 = vaddq_s16(v342, v362);
  v378 = vaddq_s16(v343, v362);
  v379 = vaddq_s16(v344, v362);
  v380 = vaddq_s16(v345, v362);
  v381 = vaddq_s16(v347, v362);
  v382 = vaddq_s16(v348, v362);
  v383 = vaddq_s16(v349, v362);
  v384 = vaddq_s16(v351, v362);
  v385 = vaddq_s16(v353, v362);
  v386 = vaddq_s16(v354, v362);
  v387 = vaddq_s16(v355, v362);
  v388 = vaddq_s16(v356, v362);
  v389.i64[0] = 0x10001000100010;
  v389.i64[1] = 0x10001000100010;
  v390 = vceqzq_s16(vandq_s8(v371, v389));
  v391 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1140), v390), v373);
  *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1140), v390), v375);
  *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1140), v390), v381);
  *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1140), v390), v383);
  v392 = (a1 + 2 * a2);
  *v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1140), v390), v374);
  v391[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1140), v390), v376);
  v391[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1140), v390), v382);
  v391[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1140), v390), v384);
  *v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1140), v390), v377);
  v392[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1140), v390), v379);
  v392[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1140), v390), v385);
  v392[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v387, xmmword_29D2F1140), v390), v387);
  v393 = (v392 + a2);
  *v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1140), v390), v378);
  v393[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1140), v390), v380);
  v393[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1140), v390), v386);
  v393[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v388, xmmword_29D2F1140), v390), v388);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 64, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1024, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1088, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1536, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1600, 128, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x7Fu:
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      v17 = a3[4];
      v18 = a3[5];
      v19 = a3[6];
      v20 = a3[7];
      v21 = (a1 + a2);
      *a1 = vzip1q_s64(*a3, v14);
      a1[1] = vzip1q_s64(v17, v18);
      v22 = (a1 + 2 * a2);
      *v21 = vzip2q_s64(v13, v14);
      v21[1] = vzip2q_s64(v17, v18);
      *v22 = vzip1q_s64(v15, v16);
      v22[1] = vzip1q_s64(v19, v20);
      v23 = (v22 + a2);
      *v23 = vzip2q_s64(v15, v16);
      v23[1] = vzip2q_s64(v19, v20);
      return 128;
    case 3u:
      v9 = vld1q_dup_f32(a3->i32);
      *a1 = v9;
      a1[1] = v9;
      v10 = &a1->i8[a2];
      *v10 = v9;
      v10[1] = v9;
      v11 = (a1 + 2 * a2);
      *v11 = v9;
      v11[1] = v9;
      v12 = (a1 + 2 * a2 + a2);
      *v12 = v9;
      v12[1] = v9;
      return 4;
    case 0u:
      v4 = 0;
      v5 = 0uLL;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = &a1->i8[a2];
      *v6 = 0u;
      *(v6 + 1) = 0u;
      v7 = &a1->i8[2 * a2];
      *v7 = 0u;
      *(v7 + 1) = 0u;
      v8 = &a1->i8[2 * a2 + a2];
LABEL_98:
      *v8 = v5;
      *(v8 + 1) = v5;
      return v4;
  }

  v24 = 8 * (a3 & 7);
  v25 = a3 & 0xFFFFFFFFFFFFFFF8;
  v26 = v24 + 18;
  v27 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v24;
  if (v24 >= 0x2F)
  {
    v27 |= *(v25 + 8) << (-8 * (a3 & 7u));
  }

  v28.i32[0] = v27;
  v28.i32[1] = v27 >> 5;
  v29 = vand_s8(v28, 0x1F0000001FLL);
  v30 = vuzp1_s16(v29, v29);
  v31.i32[0] = v27 >> 10;
  v31.i32[1] = v27 >> 14;
  v32 = vuzp1_s16(vadd_s32(vand_s8(v31, 0xF0000000FLL), 0x100000001), v30);
  v33 = v24 + 50;
  v34 = v26 & 0x3A;
  v35 = (v25 + ((v26 >> 3) & 8));
  v36 = *v35 >> (v26 & 0x3A);
  if (v34 >= 0x21)
  {
    v36 |= v35[1] << -v34;
  }

  v37 = vdupq_lane_s32(v30, 0);
  v38 = vdupq_lane_s32(v32, 0);
  v39 = (8 * (a3 & 7)) | 0x400;
  v40.i64[0] = 0x3000300030003;
  v40.i64[1] = 0x3000300030003;
  v41 = vandq_s8(v37, v40);
  v42 = vbicq_s8(v38, vceqq_s16(v41, v40));
  v40.i64[0] = 0x202020202020202;
  v40.i64[1] = 0x202020202020202;
  v43 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v37.i8, 0x4000400040004)))), v40);
  if (vmaxvq_s8(v43) < 1)
  {
    v52 = 0;
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    v69 = v42;
    v68 = v42;
    v67 = v42;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v66 = v42;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
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
    v50 = v33 + v49;
    v51 = v49 <= 0x80 && v39 >= v50;
    v52 = !v51;
    v53 = 0uLL;
    if (v51)
    {
      v54 = v33 & 0x3A;
      v55 = vaddq_s64(vdupq_n_s64(v54), vzip1q_s64(0, v48));
      v56 = (v25 + ((v33 >> 3) & 8));
      v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
      if (v54 + v49 >= 0x81)
      {
        v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v53);
      }

      v33 = v50;
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
    *v63.i8 = vand_s8(vadd_s8(*&vshlq_s8(v60, v43), -1), vmovn_s16(vzip1q_s16(v62, vshlq_u16(v62, vnegq_s16(vmovl_u8(vuzp1_s8(*v43.i8, *v37.i8)))))));
    v63.i64[1] = v63.i64[0];
    *v63.i8 = vqtbl1_s8(v63, 0x703060205010400);
    *v62.i8 = vdup_lane_s16(*v63.i8, 0);
    *v60.i8 = vdup_lane_s16(*v63.i8, 1);
    v64 = vdup_lane_s16(*v63.i8, 2);
    v65 = vdup_lane_s16(*v63.i8, 3);
    v66 = vsubw_s8(v42, *v62.i8);
    v67 = vsubw_s8(v42, *v60.i8);
    v68 = vsubw_s8(v42, v64);
    v69 = vsubw_s8(v42, v65);
    v70 = vmovl_s8(vceqz_s8(*v62.i8));
    v71 = vmovl_s8(vceqz_s8(*v60.i8));
    v72 = vmovl_s8(vceqz_s8(v64));
    v73 = vmovl_s8(vceqz_s8(v65));
  }

  v74.i64[0] = 0x8000800080008;
  v74.i64[1] = 0x8000800080008;
  v75 = 0uLL;
  v76 = vandq_s8(vextq_s8(vtstq_s16(v37, v74), 0, 0xCuLL), v42);
  v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
  v78 = vpaddq_s32(v77, v77).u64[0];
  v79.i64[0] = v78;
  v79.i64[1] = HIDWORD(v78);
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v33 + v81;
  if (v81 <= 0x80 && v39 >= v82)
  {
    v84 = v33 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v80));
    v86 = (v25 + 8 * (v33 >> 6));
    v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v81 >= 0x81)
    {
      v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v75);
    }

    v33 = v82;
  }

  else
  {
    v52 = 1;
  }

  v87 = v37.i8[0] & 3;
  if (v87 == 2)
  {
    v88 = v39 < v33 + 8;
    v89 = v33 + 16;
    if (v39 >= v33 + 8)
    {
      v33 += 8;
    }

    else
    {
      v89 = v33 + 8;
    }

    if (v39 < v89)
    {
      v90 = 1;
    }

    else
    {
      v33 = v89;
      v90 = v88;
    }

    v52 |= v90;
  }

  v91 = 0uLL;
  v92 = vextq_s8(0, v66, 0xCuLL);
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  v98 = v33 + v97;
  if (v97 <= 0x80 && v39 >= v98)
  {
    v101 = v33 & 0x3F;
    v102 = vaddq_s64(vdupq_n_s64(v101), vzip1q_s64(0, v96));
    v103 = (v25 + 8 * (v33 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v102)));
    if (v101 + v97 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v100);
    }

    v33 = v98;
  }

  else
  {
    v52 = 1;
    v100 = 0uLL;
  }

  v104 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v105 = vpaddq_s32(v104, v104).u64[0];
  v106.i64[0] = v105;
  v106.i64[1] = HIDWORD(v105);
  v107 = v106;
  v108 = vaddvq_s64(v106);
  v109 = v33 + v108;
  if (v108 <= 0x80 && v39 >= v109)
  {
    v111 = v33 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v107));
    v113 = (v25 + 8 * (v33 >> 6));
    v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v108 >= 0x81)
    {
      v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v91);
    }

    v33 = v109;
  }

  else
  {
    v52 = 1;
  }

  v114 = vmovl_u16(*&vpaddq_s16(v67, v67));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v33 + v118;
  v120 = 0uLL;
  if (v118 <= 0x80 && v39 >= v119)
  {
    v123 = v33 & 0x3F;
    v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v117));
    v125 = (v25 + 8 * (v33 >> 6));
    v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
    if (v123 + v118 >= 0x81)
    {
      v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v122);
    }

    v33 = v119;
    if (v118 > 0x80)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v52 = 1;
    v122 = 0uLL;
    if (v118 > 0x80)
    {
      goto LABEL_69;
    }
  }

  v126 = v33 + v118;
  if (v39 >= v33 + v118)
  {
    v127 = v33 & 0x3F;
    v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v117));
    v129 = (v25 + 8 * (v33 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
    if (v127 + v118 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v120);
    }

    goto LABEL_70;
  }

LABEL_69:
  v52 = 1;
  v126 = v33;
LABEL_70:
  v130 = vmovl_u16(*&vpaddq_s16(v68, v68));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = 0uLL;
  if (v134 > 0x80 || (v136 = v126 + v134, v39 < v126 + v134))
  {
    v52 = 1;
    v136 = v126;
    v139 = 0uLL;
  }

  else
  {
    v137 = vaddq_s64(vdupq_n_s64(v126 & 0x3F), vzip1q_s64(0, v133));
    v138 = (v25 + 8 * (v126 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if ((v126 & 0x3F) + v134 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || (v140 = v136 + v134, v39 < v136 + v134))
  {
    v52 = 1;
    v140 = v136;
  }

  else
  {
    v141 = vaddq_s64(vdupq_n_s64(v136 & 0x3F), vzip1q_s64(0, v133));
    v142 = (v25 + 8 * (v136 >> 6));
    v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
    if ((v136 & 0x3F) + v134 >= 0x81)
    {
      v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v135);
    }
  }

  v143 = vmovl_u16(*&vpaddq_s16(v69, v69));
  v144 = vpaddq_s32(v143, v143).u64[0];
  v145.i64[0] = v144;
  v145.i64[1] = HIDWORD(v144);
  v146 = v145;
  v147 = vaddvq_s64(v145);
  if (v147 > 0x80 || (v148 = v140 + v147, v39 < v140 + v147))
  {
    v52 = 1;
    v148 = v140;
    v152 = 0uLL;
  }

  else
  {
    v149 = v140 & 0x3F;
    v150 = vaddq_s64(vdupq_n_s64(v149), vzip1q_s64(0, v146));
    v151 = (v25 + 8 * (v140 >> 6));
    v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v149 + v147 >= 0x81)
    {
      v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
    }
  }

  if (v147 > 0x80 || v39 < v148 + v147)
  {
    goto LABEL_93;
  }

  v153 = vaddq_s64(vdupq_n_s64(v148 & 0x3F), vzip1q_s64(0, v146));
  v154 = (v25 + 8 * (v148 >> 6));
  v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
  if ((v148 & 0x3F) + v147 >= 0x81)
  {
    v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v155);
  }

  if ((v52 & 1) != 0 || (v4 = a4 + 1, v39 + 8 * v4 - (v148 + v147) - 1024 >= 9))
  {
LABEL_93:
    v156 = 0;
    v157 = 0;
    v158 = 8 * (v308 & 7);
    v159 = 16;
    do
    {
      v160 = 64 - v158;
      if (64 - v158 >= v159)
      {
        v160 = v159;
      }

      *&v308[8 * v156] |= ((0xFFFFFFFFFFFFFFFFLL >> v157) & ~(-1 << v160)) << v158;
      v157 += v160;
      v161 = v160 + v158;
      v156 += v161 >> 6;
      v158 = v161 & 0x3F;
      v159 -= v160;
    }

    while (v159);
LABEL_97:
    v4 = 0;
    v162 = &a1->i8[a2];
    v5 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v163 = &a1->i8[2 * a2];
    *v162 = 0u;
    *(v162 + 1) = 0u;
    v8 = &a1->i8[2 * a2 + a2];
    *v163 = 0u;
    *(v163 + 1) = 0u;
    goto LABEL_98;
  }

  if (v87 == 2)
  {
    v165 = 0;
    v166 = 0;
    v167 = 8 * (&v309 & 7);
    v168 = 16;
    do
    {
      v169 = 64 - v167;
      if (64 - v167 >= v168)
      {
        v169 = v168;
      }

      *&v308[8 * v165] |= ((0xFFFFFFFFFFFFFFFFLL >> v166) & ~(-1 << v169)) << v167;
      v166 += v169;
      v170 = v169 + v167;
      v165 += v170 >> 6;
      v167 = v170 & 0x3F;
      v168 -= v169;
    }

    while (v168);
    goto LABEL_97;
  }

  v171 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v172 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v173 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
  v174 = vzip1_s32(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
  v175.i64[0] = v171.u32[0];
  v175.i64[1] = v171.u32[1];
  v176 = v175;
  v175.i64[0] = v172.u32[0];
  v175.i64[1] = v172.u32[1];
  v177 = v175;
  v175.i64[0] = v173.u32[0];
  v175.i64[1] = v173.u32[1];
  v178 = v175;
  v175.i64[0] = v174.u32[0];
  v175.i64[1] = v174.u32[1];
  v179 = vnegq_s64(v176);
  v180 = vnegq_s64(v177);
  v181 = vnegq_s64(v178);
  v182 = vnegq_s64(v175);
  v183 = vshlq_u64(v75, v179);
  v184 = vshlq_u64(v122, v180);
  v185 = vshlq_u64(v120, v180);
  v186 = vshlq_u64(v139, v181);
  v187 = vshlq_u64(v135, v181);
  v188 = vshlq_u64(v152, v182);
  v189 = vzip2q_s64(v75, v183);
  v190 = vzip1q_s64(v75, v183);
  v191 = vzip2q_s64(v122, v184);
  v192 = vzip1q_s64(v122, v184);
  v193 = vzip2q_s64(v120, v185);
  v194 = vzip1q_s64(v120, v185);
  v195 = vzip2q_s64(v139, v186);
  v196 = vzip1q_s64(v139, v186);
  v197 = vzip2q_s64(v135, v187);
  v198 = vzip1q_s64(v135, v187);
  v199 = vzip2q_s64(v152, v188);
  v200 = vzip1q_s64(v152, v188);
  v201 = vuzp1q_s32(v190, v189);
  v202 = vuzp1q_s32(v192, v191);
  v203 = vuzp1q_s32(v194, v193);
  v190.i64[0] = 0xFFFF0000FFFFLL;
  v190.i64[1] = 0xFFFF0000FFFFLL;
  v204 = vuzp1q_s32(v196, v195);
  v192.i64[0] = 0xFFFF0000FFFFLL;
  v192.i64[1] = 0xFFFF0000FFFFLL;
  v205 = vnegq_s32(vandq_s8(v76, v190));
  v206 = vnegq_s32(vandq_s8(v67, v192));
  v207 = vuzp1q_s32(v198, v197);
  v208 = vuzp1q_s32(v200, v199);
  v209 = vshlq_u32(v201, v205);
  v210 = vshlq_u32(v202, v206);
  v211 = vshlq_u32(v203, v206);
  v206.i64[0] = 0x10001000100010;
  v206.i64[1] = 0x10001000100010;
  v200.i64[0] = 0xF000F000F000FLL;
  v200.i64[1] = 0xF000F000F000FLL;
  v212 = vsubq_s16(v206, v76);
  v213 = vaddq_s16(v76, v200);
  v200.i64[0] = 0x10001000100010;
  v200.i64[1] = 0x10001000100010;
  v214 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v201, v209), vzip2q_s32(v201, v209)), v212);
  v212.i64[0] = 0xF000F000F000FLL;
  v212.i64[1] = 0xF000F000F000FLL;
  v215 = vsubq_s16(v200, v67);
  v216 = vaddq_s16(v67, v212);
  v212.i64[0] = 0xFFFF0000FFFFLL;
  v212.i64[1] = 0xFFFF0000FFFFLL;
  v217 = vnegq_s32(vandq_s8(v68, v212));
  v218 = vshlq_s16(v214, v213);
  v219 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v202, v210), vzip2q_s32(v202, v210)), v215), v216);
  v220 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v203, v211), vzip2q_s32(v203, v211)), v215), v216);
  v221 = vdupq_lane_s32(*v218.i8, 0);
  v222 = vandq_s8(v71, v221);
  v223 = vsubq_s16(v219, v222);
  v224 = vsubq_s16(v220, v222);
  v225 = vshlq_u32(v204, v217);
  v226 = vshlq_u32(v207, v217);
  v227 = vzip2q_s32(v204, v225);
  v228 = vzip1q_s32(v204, v225);
  v229 = vzip2q_s32(v207, v226);
  v230 = vzip1q_s32(v207, v226);
  v226.i64[0] = 0x10001000100010;
  v226.i64[1] = 0x10001000100010;
  v231 = vuzp1q_s16(v230, v229);
  v229.i64[0] = 0xF000F000F000FLL;
  v229.i64[1] = 0xF000F000F000FLL;
  v232 = vsubq_s16(v226, v68);
  v233 = vaddq_s16(v68, v229);
  v229.i64[0] = 0xFFFF0000FFFFLL;
  v229.i64[1] = 0xFFFF0000FFFFLL;
  v234 = vnegq_s32(vandq_s8(v69, v229));
  v235 = vshlq_s16(vshlq_s16(vuzp1q_s16(v228, v227), v232), v233);
  v236 = vshlq_s16(vshlq_s16(v231, v232), v233);
  v237 = vandq_s8(v72, v221);
  v238 = vsubq_s16(v235, v237);
  v239 = vsubq_s16(v236, v237);
  v240 = vshlq_u32(v208, v234);
  v241 = vzip2q_s32(v208, v240);
  v242 = vzip1q_s32(v208, v240);
  v240.i64[0] = 0x10001000100010;
  v240.i64[1] = 0x10001000100010;
  v243 = vuzp1q_s16(v242, v241);
  v241.i64[0] = 0xF000F000F000FLL;
  v241.i64[1] = 0xF000F000F000FLL;
  v244 = vsubq_s16(v240, v69);
  v245 = vaddq_s16(v69, v241);
  v246 = vshlq_u64(v155, v182);
  v247 = vuzp1q_s32(vzip1q_s64(v155, v246), vzip2q_s64(v155, v246));
  v248 = vshlq_u32(v247, v234);
  v249 = vshlq_s16(vshlq_s16(v243, v244), v245);
  v250 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v244), v245);
  v251 = vandq_s8(v73, v221);
  v252 = vsubq_s16(v249, v251);
  v253 = vsubq_s16(v250, v251);
  v254 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
  v255 = vzip1_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL));
  v175.i64[0] = v254.u32[0];
  v175.i64[1] = v254.u32[1];
  v256 = v175;
  v175.i64[0] = v255.u32[0];
  v175.i64[1] = v255.u32[1];
  v257 = vshlq_u64(v100, vnegq_s64(v256));
  v258 = vshlq_u64(v91, vnegq_s64(v175));
  v259 = vzip2q_s64(v100, v257);
  v260 = vzip1q_s64(v100, v257);
  v261 = vzip2q_s64(v91, v258);
  v262 = vzip1q_s64(v91, v258);
  v258.i64[0] = 0xFFFF0000FFFFLL;
  v258.i64[1] = 0xFFFF0000FFFFLL;
  v263 = vuzp1q_s32(v260, v259);
  v264 = vuzp1q_s32(v262, v261);
  v265 = vnegq_s32(vandq_s8(v66, v258));
  v266 = vshlq_u32(v263, vnegq_s32(vandq_s8(v92, v258)));
  v267 = vshlq_u32(v264, v265);
  v268 = vzip2q_s32(v263, v266);
  v269 = vzip1q_s32(v263, v266);
  v270 = vzip2q_s32(v264, v267);
  v271 = vzip1q_s32(v264, v267);
  v267.i64[0] = 0x10001000100010;
  v267.i64[1] = 0x10001000100010;
  v272 = vuzp1q_s16(v271, v270);
  v270.i64[0] = 0xF000F000F000FLL;
  v270.i64[1] = 0xF000F000F000FLL;
  v273 = vaddq_s16(vandq_s8(v218, v70), vshlq_s16(vshlq_s16(vuzp1q_s16(v269, v268), vsubq_s16(v267, v92)), vaddq_s16(v92, v270)));
  v274 = vandq_s8(v70, v221);
  v275.i64[0] = 0x1000100010001;
  v275.i64[1] = 0x1000100010001;
  v276 = vceqq_s16(v41, v275);
  v277 = vaddvq_s16(v276);
  v278 = vsubq_s16(v273, v274);
  v279 = vsubq_s16(vshlq_s16(vshlq_s16(v272, vsubq_s16(v267, v66)), vaddq_s16(v66, v270)), v274);
  v276.i32[0] = v36;
  v280 = vdupq_lane_s32(*v276.i8, 0);
  if (v277)
  {
    v281 = vnegq_s16(vandq_s8(v37, v275));
    v282 = v279;
    v282.i32[3] = v278.i32[0];
    v283 = v278;
    v283.i32[0] = v279.i32[3];
    v310.val[0] = vbslq_s8(v281, v283, v278);
    v310.val[1] = vbslq_s8(v281, v282, v279);
    v282.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v282.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v311.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v310, xmmword_29D2F0F80), v281), v310.val[0]);
    v311.val[1] = vaddq_s16(v310.val[1], vandq_s8(vqtbl2q_s8(v310, v282), v281));
    v278 = vaddq_s16(vandq_s8(vqtbl2q_s8(v311, xmmword_29D2F0F90), v281), v311.val[0]);
    v279 = vaddq_s16(v311.val[1], vandq_s8(vqtbl2q_s8(v311, v282), v281));
    v311.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v281), v223);
    v311.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v281), v224);
    v223 = vaddq_s16(vandq_s8(vqtbl2q_s8(v311, xmmword_29D2F0FC0), v281), v311.val[0]);
    v224 = vaddq_s16(v311.val[1], vandq_s8(vqtbl2q_s8(v311, v282), v281));
    v311.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0FD0), v281), v238);
    v311.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0F80), v281), v239);
    v238 = vaddq_s16(vandq_s8(vqtbl2q_s8(v311, v282), v281), v311.val[0]);
    v239 = vaddq_s16(v311.val[1], vandq_s8(vqtbl2q_s8(v311, xmmword_29D2F0FE0), v281));
    v310.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0FF0), v281), v252);
    v310.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0F80), v281), v253);
    v252 = vaddq_s16(vandq_s8(vqtbl2q_s8(v310, v282), v281), v310.val[0]);
    v253 = vaddq_s16(v310.val[1], vandq_s8(vqtbl2q_s8(v310, xmmword_29D2F1000), v281));
  }

  v284 = vaddq_s16(v278, v280);
  v285 = vaddq_s16(v279, v280);
  v286 = vaddq_s16(v223, v280);
  v287 = vaddq_s16(v224, v280);
  v288 = vaddq_s16(v238, v280);
  v289 = vaddq_s16(v239, v280);
  v290 = vaddq_s16(v252, v280);
  v291 = vaddq_s16(v253, v280);
  v292.i64[0] = 0x10001000100010;
  v292.i64[1] = 0x10001000100010;
  v293 = vceqzq_s16(vandq_s8(v37, v292));
  v294 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v284, xmmword_29D2F1080), v293), v284);
  v295 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v285, xmmword_29D2F1080), v293), v285);
  v296 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v286, xmmword_29D2F1080), v293), v286);
  v297 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v287, xmmword_29D2F1080), v293), v287);
  v298 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v288, xmmword_29D2F1080), v293), v288);
  v299 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v289, xmmword_29D2F1080), v293), v289);
  v300 = vzip2q_s64(v294, v295);
  v301.i64[0] = v294.i64[0];
  v301.i64[1] = v295.i64[0];
  v302.i64[0] = v298.i64[0];
  v302.i64[1] = v299.i64[0];
  v303 = (a1 + a2);
  *a1 = v301;
  a1[1] = v302;
  v304 = (a1 + 2 * a2);
  v305 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v290, xmmword_29D2F1080), v293), v290);
  v306 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v291, xmmword_29D2F1080), v293), v291);
  *v303 = v300;
  v303[1] = vzip2q_s64(v298, v299);
  v299.i64[0] = v296.i64[0];
  v299.i64[1] = v297.i64[0];
  v290.i64[0] = v305.i64[0];
  v290.i64[1] = v306.i64[0];
  *v304 = v299;
  v304[1] = v290;
  v307 = (v304 + a2);
  *v307 = vzip2q_s64(v296, v297);
  v307[1] = vzip2q_s64(v305, v306);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip1q_s64(v7, v9);
  v13 = *v6;
  v14 = v6[1];
  v12 = (v6 + a4);
  v15 = vzip2q_s64(v7, v9);
  v16 = v12[1];
  v17 = vzip1q_s64(v14, v16);
  v18 = vzip2q_s64(v14, v16);
  v19 = vdupq_lane_s32(*v10.i8, 0);
  v20 = vsubq_s16(v10, v19);
  v492.val[0] = v10;
  v492.val[1] = vzip2q_s64(*a3, v8);
  v21 = vsubq_s16(v492.val[1], v19);
  v491 = vzip1q_s64(v13, *v12);
  v22 = vsubq_s16(v491, v19);
  v485 = vzip2q_s64(v13, *v12);
  v23 = vsubq_s16(v485, v19);
  v24 = vsubq_s16(v11, v19);
  v25 = vsubq_s16(v15, v19);
  v26 = vsubq_s16(v17, v19);
  v27 = vsubq_s16(v18, v19);
  v28 = vqtbl1q_s8(vmaxq_s16(v20, v21), xmmword_29D2F1090);
  v29 = vqtbl1q_s8(vminq_s16(v20, v21), xmmword_29D2F1090);
  v30 = vpmaxq_s16(v28, v28);
  v31 = vpminq_s16(v29, v29);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vmaxq_s16(v32, v34);
  v36.i64[0] = 0x8000800080008000;
  v36.i64[1] = 0x8000800080008000;
  v37 = vminq_s16(v33, v36);
  v38 = vzip1q_s16(v32, v33);
  v39.i64[0] = 0x10001000100010;
  v39.i64[1] = 0x10001000100010;
  v40 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v38)), vceqzq_s16(v38));
  v41 = vpmaxq_s16(v40, v40);
  v42 = vqtbl1q_s8(vmaxq_s16(v22, v23), xmmword_29D2F1090);
  v43 = vqtbl1q_s8(vminq_s16(v22, v23), xmmword_29D2F1090);
  v44 = vpmaxq_s16(v42, v42);
  v45 = vpminq_s16(v43, v43);
  v46 = vpmaxq_s16(v44, v44);
  v47 = vpminq_s16(v45, v45);
  v48 = vmaxq_s16(v35, v46);
  v49 = vminq_s16(v37, v47);
  v50 = vzip1q_s16(v46, v47);
  v51 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v50)), vceqzq_s16(v50));
  v52 = vpmaxq_s16(v51, v51);
  v53 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v54 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vpmaxq_s16(v55, v55);
  v58 = vpminq_s16(v56, v56);
  v59 = vmaxq_s16(v48, v57);
  v60 = vminq_s16(v49, v58);
  v61 = vzip1q_s16(v57, v58);
  v62 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v61)), vceqzq_s16(v61));
  v63 = vpmaxq_s16(v62, v62);
  v64 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v65 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v66 = vpmaxq_s16(v64, v64);
  v67 = vpminq_s16(v65, v65);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(v59, v68);
  v71 = vminq_s16(v60, v69);
  v72 = vzip1q_s16(v68, v69);
  v73 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v72)), vceqzq_s16(v72));
  v74 = vpmaxq_s16(v73, v73);
  v75 = vmaxq_s16(vmaxq_s16(v41, v52), vmaxq_s16(v63, v74));
  v76 = vclzq_s16(vsubq_s16(v70, v71));
  v77 = vsubq_s16(v39, v76);
  v78 = vminq_s16(v77, v75);
  if (!vmaxvq_s16(v78))
  {
    *a1 = a3->i32[0];
    v177 = 3;
    result = 4;
    goto LABEL_97;
  }

  v481 = v18;
  v482 = v15;
  v489 = v17;
  v490 = v11;
  v79.i64[0] = -1;
  v79.i64[1] = -1;
  v80.i64[0] = 0xF000F000F000FLL;
  v80.i64[1] = 0xF000F000F000FLL;
  v483 = vsubq_s16(vshlq_s16(v79, vsubq_s16(v80, v76)), v71);
  v81 = vcgtq_s16(v75, v77);
  v82.i64[0] = 0x8000800080008;
  v82.i64[1] = 0x8000800080008;
  v83 = vandq_s8(v81, v82);
  v84.i64[0] = 0x3000300030003;
  v84.i64[1] = 0x3000300030003;
  v477 = vmaxq_s16(vminq_s16(vsubq_s16(v78, v41), v84), 0);
  v479 = vmaxq_s16(vminq_s16(vsubq_s16(v78, v52), v84), 0);
  v85 = vmaxq_s16(vminq_s16(vsubq_s16(v78, v63), v84), 0);
  v86 = vmaxq_s16(vminq_s16(vsubq_s16(v78, v74), v84), 0);
  v87.i64[0] = 0x4000400040004;
  v87.i64[1] = 0x4000400040004;
  v88 = vbicq_s8(v87, vceqq_s16(vaddq_s16(v86, v85), vnegq_s16(vaddq_s16(v477, v479))));
  v475 = vorrq_s8(vandq_s8(vceqzq_s16(v78), v84), v83);
  v89 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F1080));
  v90 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v493 = v22;
  v494 = v24;
  v486 = v23;
  v495 = v20;
  v91 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v92 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
  v93 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
  v94 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
  v473 = vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080));
  v474 = v89;
  v95 = vqtbl1q_s8(vmaxq_s16(v89, v473), xmmword_29D2F1090);
  v96 = vqtbl1q_s8(vminq_s16(v89, v473), xmmword_29D2F1090);
  v97 = vpmaxq_s16(v95, v95);
  v98 = vpminq_s16(v96, v96);
  v99 = vpmaxq_s16(v97, v97);
  v100 = vpminq_s16(v98, v98);
  v101 = vmaxq_s16(v99, v34);
  v102 = vminq_s16(v100, v36);
  v103 = vzip1q_s16(v99, v100);
  v104 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v103)), vceqzq_s16(v103));
  v105 = vpmaxq_s16(v104, v104);
  v471 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v472 = v90;
  v106 = vqtbl1q_s8(vmaxq_s16(v90, v471), xmmword_29D2F1090);
  v107 = vqtbl1q_s8(vminq_s16(v90, v471), xmmword_29D2F1090);
  v108 = vpmaxq_s16(v106, v106);
  v109 = vpminq_s16(v107, v107);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vmaxq_s16(v101, v110);
  v113 = vminq_s16(v102, v111);
  v114 = vzip1q_s16(v110, v111);
  v115 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v114)), vceqzq_s16(v114));
  v116 = v21;
  v117 = vpmaxq_s16(v115, v115);
  v118 = vqtbl1q_s8(vmaxq_s16(v91, v92), xmmword_29D2F1090);
  v119 = vqtbl1q_s8(vminq_s16(v91, v92), xmmword_29D2F1090);
  v120 = vpmaxq_s16(v118, v118);
  v121 = vpminq_s16(v119, v119);
  v122 = vpmaxq_s16(v120, v120);
  v123 = vpminq_s16(v121, v121);
  v124 = vmaxq_s16(v112, v122);
  v125 = vminq_s16(v113, v123);
  v126 = vzip1q_s16(v122, v123);
  v127 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v126)), vceqzq_s16(v126));
  v488 = v25;
  v128 = vpmaxq_s16(v127, v127);
  v129 = vqtbl1q_s8(vmaxq_s16(v93, v94), xmmword_29D2F1090);
  v130 = vqtbl1q_s8(vminq_s16(v93, v94), xmmword_29D2F1090);
  v131 = vpmaxq_s16(v129, v129);
  v132 = vpminq_s16(v130, v130);
  v133 = vpmaxq_s16(v131, v131);
  v134 = vpminq_s16(v132, v132);
  v135 = vmaxq_s16(v124, v133);
  v136 = vminq_s16(v125, v134);
  v137 = vzip1q_s16(v133, v134);
  v138 = vbicq_s8(vsubq_s16(v39, vclsq_s16(v137)), vceqzq_s16(v137));
  v139 = vpmaxq_s16(v138, v138);
  v140 = v27;
  v141 = v26;
  v142 = vmaxq_s16(vmaxq_s16(v105, v117), vmaxq_s16(v128, v139));
  v143 = vclzq_s16(vsubq_s16(v135, v136));
  v144 = vsubq_s16(v39, v143);
  v145 = vcgtq_s16(v142, v144);
  v146 = vminq_s16(v144, v142);
  v142.i64[0] = 0x18001800180018;
  v142.i64[1] = 0x18001800180018;
  v147 = vbslq_s8(v145, v142, v39);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v146, v105), v84), 0);
  v149 = vmaxq_s16(vminq_s16(vsubq_s16(v146, v117), v84), 0);
  v150 = vmaxq_s16(vminq_s16(vsubq_s16(v146, v128), v84), 0);
  v151 = vmaxq_s16(vminq_s16(vsubq_s16(v146, v139), v84), 0);
  v152 = vsubq_s16(v146, v148);
  v153 = vsubq_s16(v146, v149);
  v154 = vsubq_s16(v146, v150);
  v155 = vaddq_s16(v148, v149);
  v156 = vsubq_s16(v146, v151);
  v157 = vbicq_s8(v87, vceqq_s16(vaddq_s16(v151, v150), vnegq_s16(v155)));
  v158.i64[0] = 0x7000700070007;
  v158.i64[1] = 0x7000700070007;
  v159 = vandq_s8(v483, v81);
  v160 = vorrq_s8(v475, v88);
  v161 = vaddq_s16(vandq_s8(v78, v81), vaddq_s16(v88, v88));
  v162 = vsubq_s16(v78, v477);
  v163 = vsubq_s16(v78, v479);
  v164 = vsubq_s16(v78, v85);
  v165 = vsubq_s16(v78, v86);
  v166 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(v161, v162, v158), vshlq_n_s16(vaddq_s16(vaddq_s16(v164, v163), v165), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v146, vceqzq_s16((*&v147 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v157, v157)), v152, v158), vshlq_n_s16(vaddq_s16(vaddq_s16(v154, v153), v156), 3uLL))), 0);
  v167 = vaddvq_s16(v166);
  v169 = a5 < 4 || a6 < 2;
  if (v167)
  {
    v170.i64[0] = 0x3000300030003;
    v170.i64[1] = 0x3000300030003;
    v171 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v146), v170), v147), v157);
    v170.i64[0] = 0xF000F000F000FLL;
    v170.i64[1] = 0xF000F000F000FLL;
    v172.i64[0] = -1;
    v172.i64[1] = -1;
    v19 = vbslq_s8(v166, vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F1080)), v19);
    v495 = vbslq_s8(v166, v474, v495);
    v484 = vbslq_s8(v166, v473, v116);
    v493 = vbslq_s8(v166, v472, v493);
    v494 = vbslq_s8(v166, v91, v494);
    v173 = vbslq_s8(v166, v92, v488);
    v141 = vbslq_s8(v166, v93, v141);
    v162 = vbslq_s8(v166, v152, v162);
    v163 = vbslq_s8(v166, v153, v163);
    v164 = vbslq_s8(v166, v154, v164);
    v165 = vbslq_s8(v166, v156, v165);
    v159 = vbslq_s8(v166, vandq_s8(vsubq_s16(vshlq_s16(v172, vsubq_s16(v170, v143)), v136), v145), v159);
    v174 = vbslq_s8(v166, v146, v78);
    v160 = vbslq_s8(v166, v171, v160);
    v175 = vbslq_s8(v166, v94, v140);
    v176 = vbslq_s8(v166, v471, v486);
  }

  else
  {
    v484 = v116;
    v175 = v140;
    v176 = v486;
    v173 = v488;
    v174 = v78;
  }

  v179 = v163;
  v180 = v492.val[0];
  v181 = v492.val[1];
  if (!v169)
  {
    v476 = v141;
    v478 = v159;
    v487 = v176;
    v480 = v175;
    v189 = vsubq_s16(v492.val[0], vqtbl2q_s8(*v180.i8, xmmword_29D2F0F80));
    v182 = vsubq_s16(v492.val[1], vqtbl2q_s8(v492, xmmword_29D2F1030));
    v496.val[0] = v491;
    v496.val[1] = v485;
    v496.val[1].i32[3] = v492.val[1].i32[3];
    v183 = vsubq_s16(v491, vqtbl2q_s8(v496, xmmword_29D2F0FA0));
    v184 = vsubq_s16(v485, vqtbl2q_s8(v496, xmmword_29D2F1040));
    v496.val[0] = v490;
    v496.val[1] = v482;
    v496.val[1].i32[3] = v492.val[1].i32[3];
    v185 = vsubq_s16(v490, vqtbl2q_s8(v496, xmmword_29D2F1050));
    v186 = vsubq_s16(v482, vqtbl2q_s8(v496, xmmword_29D2F0F80));
    v496.val[0] = v489;
    v496.val[1] = v481;
    v496.val[1].i32[3] = v492.val[1].i32[3];
    v187 = vsubq_s16(v489, vqtbl2q_s8(v496, xmmword_29D2F1060));
    v188 = v182;
    v188.i32[3] = v189.i32[0];
    v189.i32[0] = v182.i32[3];
    v190 = vsubq_s16(v481, vqtbl2q_s8(v496, xmmword_29D2F0F80));
    v191 = vqtbl1q_s8(vmaxq_s16(v189, v188), xmmword_29D2F1090);
    v192 = vqtbl1q_s8(vminq_s16(v189, v188), xmmword_29D2F1090);
    v193 = vpmaxq_s16(v191, v191);
    v194 = vpminq_s16(v192, v192);
    v195 = vpmaxq_s16(v193, v193);
    v196 = vpminq_s16(v194, v194);
    v496.val[0].i64[0] = 0x8000800080008000;
    v496.val[0].i64[1] = 0x8000800080008000;
    v496.val[0] = vmaxq_s16(v195, v496.val[0]);
    v496.val[1].i64[0] = 0x8000800080008000;
    v496.val[1].i64[1] = 0x8000800080008000;
    v496.val[1] = vminq_s16(v196, v496.val[1]);
    v197 = vzip1q_s16(v195, v196);
    v195.i64[0] = 0x10001000100010;
    v195.i64[1] = 0x10001000100010;
    v198 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v197)), vceqzq_s16(v197));
    v199 = vpmaxq_s16(v198, v198);
    v200 = v184;
    v201 = vqtbl1q_s8(vmaxq_s16(v183, v184), xmmword_29D2F1090);
    v202 = vqtbl1q_s8(vminq_s16(v183, v184), xmmword_29D2F1090);
    v203 = vpmaxq_s16(v201, v201);
    v204 = vpminq_s16(v202, v202);
    v205 = vpmaxq_s16(v203, v203);
    v206 = vpminq_s16(v204, v204);
    v496.val[0] = vmaxq_s16(v496.val[0], v205);
    v496.val[1] = vminq_s16(v496.val[1], v206);
    v207 = vzip1q_s16(v205, v206);
    v208 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v207)), vceqzq_s16(v207));
    v209 = vpmaxq_s16(v208, v208);
    v210 = vqtbl1q_s8(vmaxq_s16(v185, v186), xmmword_29D2F1090);
    v211 = vqtbl1q_s8(vminq_s16(v185, v186), xmmword_29D2F1090);
    v212 = vpmaxq_s16(v210, v210);
    v213 = vpminq_s16(v211, v211);
    v214 = vpmaxq_s16(v212, v212);
    v215 = vpminq_s16(v213, v213);
    v496.val[0] = vmaxq_s16(v496.val[0], v214);
    v496.val[1] = vminq_s16(v496.val[1], v215);
    v216 = vzip1q_s16(v214, v215);
    v217 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v216)), vceqzq_s16(v216));
    v218 = vpmaxq_s16(v217, v217);
    v219 = vqtbl1q_s8(vmaxq_s16(v187, v190), xmmword_29D2F1090);
    v220 = vqtbl1q_s8(vminq_s16(v187, v190), xmmword_29D2F1090);
    v221 = vpmaxq_s16(v219, v219);
    v222 = vpminq_s16(v220, v220);
    v223 = vpmaxq_s16(v221, v221);
    v224 = vpminq_s16(v222, v222);
    v496.val[0] = vmaxq_s16(v496.val[0], v223);
    v225 = vminq_s16(v496.val[1], v224);
    v226 = vzip1q_s16(v223, v224);
    v227 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v226)), vceqzq_s16(v226));
    v228 = vpmaxq_s16(v227, v227);
    v229 = vmaxq_s16(vmaxq_s16(v199, v209), vmaxq_s16(v218, v228));
    v230 = vclzq_s16(vsubq_s16(v496.val[0], v225));
    v496.val[0] = vsubq_s16(v195, v230);
    v231 = vcgtq_s16(v229, v496.val[0]);
    v232 = vminq_s16(v496.val[0], v229);
    v229.i64[0] = 0x3000300030003;
    v229.i64[1] = 0x3000300030003;
    v233 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v199), v229), 0);
    v234 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v209), v229), 0);
    v235 = v164;
    v236 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v218), v229), 0);
    v237 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v228), v229), 0);
    v238 = vsubq_s16(v232, v233);
    v239 = vsubq_s16(v232, v234);
    v240 = vsubq_s16(v232, v236);
    v241 = vsubq_s16(v232, v237);
    v242 = vceqq_s16(vaddq_s16(v237, v236), vnegq_s16(vaddq_s16(v233, v234)));
    v237.i64[0] = 0x4000400040004;
    v237.i64[1] = 0x4000400040004;
    v243 = vbicq_s8(v237, v242);
    v236.i64[0] = 0x7000700070007;
    v236.i64[1] = 0x7000700070007;
    v244 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v232, v231), vaddq_s16(v243, v243)), v238, v236), vshlq_n_s16(vaddq_s16(vaddq_s16(v240, v239), v241), 3uLL));
    v234.i64[0] = 0x8000800080008;
    v234.i64[1] = 0x8000800080008;
    v245 = vandq_s8(v160, v229);
    v246.i64[0] = 0x2000200020002;
    v246.i64[1] = 0x2000200020002;
    v247 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v174, vceqzq_s16(vandq_s8(v160, v234))), vandq_s8(vaddq_s16(v160, v160), v234)), vandq_s8(vceqq_s16(v245, v246), v195)), v162, v236);
    v164 = v235;
    v248 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v247, vshlq_n_s16(vaddq_s16(vaddq_s16(v235, v179), v165), 3uLL)), v244), 0);
    if (vaddvq_s16(v248))
    {
      v249 = vandq_s8(vceqzq_s16(v232), v246);
      v250.i64[0] = 0x9000900090009;
      v250.i64[1] = 0x9000900090009;
      v251 = vorrq_s8(vorrq_s8(v249, vsubq_s16(vandq_s8(v231, v250), vmvnq_s8(v231))), v243);
      v252.i64[0] = 0xF000F000F000FLL;
      v252.i64[1] = 0xF000F000F000FLL;
      v253 = vsubq_s16(v252, v230);
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      v255 = vandq_s8(vsubq_s16(vshlq_s16(v254, v253), v225), v231);
      v19.i32[0] = vbslq_s8(v248, vextq_s8(v492.val[1], v492.val[1], 0xCuLL), v19).u32[0];
      v495 = vbslq_s8(v248, v189, v495);
      v484 = vbslq_s8(v248, v188, v484);
      v256 = vbslq_s8(v248, v183, v493);
      v176 = vbslq_s8(v248, v200, v487);
      v257 = vbslq_s8(v248, v185, v494);
      v173 = vbslq_s8(v248, v186, v173);
      v141 = vbslq_s8(v248, v187, v476);
      v175 = vbslq_s8(v248, v190, v480);
      v162 = vbslq_s8(v248, v238, v162);
      v179 = vbslq_s8(v248, v239, v179);
      v164 = vbslq_s8(v248, v240, v235);
      v165 = vbslq_s8(v248, v241, v165);
      v159 = vbslq_s8(v248, v255, v478);
      v174 = vbslq_s8(v248, v232, v174);
      v160 = vbslq_s8(v248, v251, v160);
      goto LABEL_17;
    }

    v159 = v478;
    v175 = v480;
    v141 = v476;
    v176 = v487;
  }

  v256 = v493;
  v257 = v494;
LABEL_17:
  v258.i64[0] = 0x8000800080008;
  v258.i64[1] = 0x8000800080008;
  v259 = vandq_s8(v160, v258);
  v260.i64[0] = 0x3000300030003;
  v260.i64[1] = 0x3000300030003;
  v261.i64[0] = 0x2000200020002;
  v261.i64[1] = 0x2000200020002;
  v262 = vceqq_s16(vandq_s8(v160, v260), v261);
  v261.i64[0] = 0x10001000100010;
  v261.i64[1] = 0x10001000100010;
  v263 = vandq_s8(v262, v261);
  v261.i64[0] = 0x7000700070007;
  v261.i64[1] = 0x7000700070007;
  v264 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v174, vceqzq_s16(v259)), vandq_s8(vaddq_s16(v160, v160), v258)), v263), v162, v261), vshlq_n_s16(vaddq_s16(vaddq_s16(v164, v179), v165), 3uLL));
  if ((vpaddq_s16(v264, v264).i16[0] + 57) > 0x3FF)
  {
    *a1 = v492.val[0];
    *(a1 + 16) = v492.val[1];
    *(a1 + 32) = v491;
    *(a1 + 48) = v485;
    *(a1 + 64) = v490;
    *(a1 + 80) = v482;
    v268 = (a1 + 96);
    v177 = 127;
    result = 128;
    *v268 = v489;
    v268[1] = v481;
  }

  else
  {
    v265 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v266 = 8 * (a1 & 7);
    if (v266)
    {
      v267 = *v265 & ~(-1 << v266);
    }

    else
    {
      v267 = 0;
    }

    *a2 = 0;
    if (v174.i16[0])
    {
      v269 = ((v174.i16[0] << 10) + 15360) & 0x3C00;
    }

    else
    {
      v269 = 0;
    }

    if (v174.i16[1])
    {
      v270 = ((v174.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v270 = 0;
    }

    v271 = v269 | v270 | v160.i8[0] & 0x1F | (32 * (v160.i8[2] & 0x1Fu));
    v272 = (v271 << v266) | v267;
    if (v266 >= 0x2E)
    {
      *v265 = v272;
      v272 = v271 >> (-8 * (a1 & 7u));
    }

    v273 = (v266 + 18) & 0x3A;
    v274 = v272 | (v19.u32[0] << v273);
    if (v273 >= 0x20)
    {
      *(v265 + (((v266 + 18) >> 3) & 8)) = v274;
      v274 = v19.u32[0] >> -v273;
    }

    v275 = v266 + 50;
    v276 = vsubq_s16(v174, v162);
    v277 = vsubq_s16(v174, v179);
    v278 = vsubq_s16(v174, v164);
    v279 = vsubq_s16(v174, v165);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u16(v278);
    *v279.i8 = vqmovn_u16(v279);
    v276.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v276, v277), vzip1q_s8(v278, v279)), vzip1q_s16(vtrn2q_s8(v276, v277), vtrn2q_s8(v278, v279))).u64[0];
    v278.i64[0] = 0x202020202020202;
    v278.i64[1] = 0x202020202020202;
    v280 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v160.i8, 0x4000400040004)))), v278);
    v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v281 = vandq_s8(vshlq_u8(v279, vorrq_s8(v280, v278)), v276.u64[0]);
    v282 = vmovl_u8(*v280.i8);
    v283 = vpaddq_s16(vshlq_u16(vmovl_u8(*v281.i8), vtrn1q_s16(0, v282)), vmovl_high_u8(v281));
    v284 = vpaddq_s16(v282, vmovl_high_u8(v280));
    v285 = vmovl_u16(*v284.i8);
    v286 = vmovl_high_u16(v284);
    v287 = vpaddq_s32(vshlq_u32(vmovl_u16(*v283.i8), vtrn1q_s32(0, v285)), vshlq_u32(vmovl_high_u16(v283), vtrn1q_s32(0, v286)));
    v288 = vpaddq_s32(v285, v286);
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
    v295 = (v266 + 50) & 0x3A;
    v296 = (v293.i64[0] << v295) | v274;
    if ((v294.i64[0] + v295) >= 0x40)
    {
      *(v265 + ((v275 >> 3) & 8)) = v296;
      v296 = v293.i64[0] >> -v295;
    }

    v297 = vceqq_s16(v174, v162);
    v298 = v294.i64[0] + v275;
    v299 = v296 | (v293.i64[1] << v298);
    if ((v298 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v265 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
      v299 = v293.i64[1] >> -(v298 & 0x3F);
      if ((v298 & 0x3F) == 0)
      {
        v299 = 0;
      }
    }

    v300 = vandq_s8(v159, v297);
    v301 = v298 + v294.i64[1];
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vextq_s8(vtstq_s16(v259, v259), 0, 0xCuLL), v174);
    v304.i64[0] = 0xF000F000F000FLL;
    v304.i64[1] = 0xF000F000F000FLL;
    v305 = vandq_s8(vshlq_u16(v302, vaddq_s16(v303, v304)), v159);
    v306 = vmovl_u16(*v303.i8);
    v307 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v306)), vmovl_high_u16(v305));
    v308 = vpaddq_s32(v306, vmovl_high_u16(v303));
    v309.i64[0] = v307.u32[0];
    v309.i64[1] = v307.u32[1];
    v310 = v309;
    v309.i64[0] = v307.u32[2];
    v309.i64[1] = v307.u32[3];
    v311 = v309;
    v309.i64[0] = v308.u32[0];
    v309.i64[1] = v308.u32[1];
    v312 = v309;
    v309.i64[0] = v308.u32[2];
    v309.i64[1] = v308.u32[3];
    v313 = vpaddq_s64(vshlq_u64(v310, vzip1q_s64(0, v312)), vshlq_u64(v311, vzip1q_s64(0, v309)));
    v314 = vpaddq_s64(v312, v309);
    v315 = (v313.i64[0] << v301) | v299;
    if (v314.i64[0] + (v301 & 0x3F) >= 0x40)
    {
      *(v265 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v313.i64[0] >> -(v301 & 0x3F);
      if ((v301 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vaddq_s16(v300, v495);
    v317 = v314.i64[0] + v301;
    v318 = v315 | (v313.i64[1] << v317);
    if ((v317 & 0x3F) + v314.i64[1] >= 0x40)
    {
      *(v265 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v313.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = v317 + v314.i64[1];
    v320 = vextq_s8(0, v162, 0xCuLL);
    v321.i64[0] = 0xF000F000F000FLL;
    v321.i64[1] = 0xF000F000F000FLL;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v320, v321)), v316);
    v324 = vmovl_u16(*v320.i8);
    v325 = vmovl_high_u16(v320);
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
    v334 = (v332.i64[0] << v319) | v318;
    if (v333.i64[0] + (v319 & 0x3F) >= 0x40)
    {
      *(v265 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vceqq_s16(v174, v179);
    v336 = vaddq_s16(v484, v300);
    v337 = v333.i64[0] + v319;
    v338 = v334 | (v332.i64[1] << v337);
    if ((v337 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v265 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v332.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = vandq_s8(v159, v335);
    v340 = v337 + v333.i64[1];
    v341.i64[0] = 0xF000F000F000FLL;
    v341.i64[1] = 0xF000F000F000FLL;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v162, v341)), v336);
    v344 = vmovl_u16(*v162.i8);
    v345 = vmovl_high_u16(v162);
    v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
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
    v354 = (v352.i64[0] << v340) | v338;
    if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v265 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v352.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vaddq_s16(v256, v339);
    v356 = v353.i64[0] + v340;
    v357 = v354 | (v352.i64[1] << v356);
    if ((v356 & 0x3F) + v353.i64[1] >= 0x40)
    {
      *(v265 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v352.i64[1] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = v356 + v353.i64[1];
    v359.i64[0] = 0xF000F000F000FLL;
    v359.i64[1] = 0xF000F000F000FLL;
    v360.i64[0] = -1;
    v360.i64[1] = -1;
    v361 = vshlq_u16(v360, vaddq_s16(v179, v359));
    v362 = vandq_s8(v361, v355);
    v363 = vmovl_u16(*v362.i8);
    v364 = vmovl_high_u16(v362);
    v365 = vmovl_u16(*v179.i8);
    v366 = vmovl_high_u16(v179);
    v367 = vtrn1q_s32(0, v365);
    v368 = vtrn1q_s32(0, v366);
    v369 = vpaddq_s32(vshlq_u32(v363, v367), vshlq_u32(v364, v368));
    v370 = vpaddq_s32(v365, v366);
    v371.i64[0] = v369.u32[0];
    v371.i64[1] = v369.u32[1];
    v372 = v371;
    v371.i64[0] = v369.u32[2];
    v371.i64[1] = v369.u32[3];
    v373 = v371;
    v371.i64[0] = v370.u32[0];
    v371.i64[1] = v370.u32[1];
    v374 = v371;
    v371.i64[0] = v370.u32[2];
    v371.i64[1] = v370.u32[3];
    v375 = vzip1q_s64(0, v374);
    v376 = vzip1q_s64(0, v371);
    v377 = vpaddq_s64(vshlq_u64(v372, v375), vshlq_u64(v373, v376));
    v378 = vpaddq_s64(v374, v371);
    v379 = (v377.i64[0] << v358) | v357;
    if (v378.i64[0] + (v358 & 0x3F) >= 0x40)
    {
      *(v265 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
      if ((v358 & 0x3F) != 0)
      {
        v379 = v377.i64[0] >> -(v358 & 0x3F);
      }

      else
      {
        v379 = 0;
      }
    }

    v380 = vceqq_s16(v174, v164);
    v381 = vaddq_s16(v176, v339);
    v382 = v378.i64[0] + v358;
    v383 = v379 | (v377.i64[1] << v382);
    if ((v382 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v265 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v377.i64[1] >> -(v382 & 0x3F);
      if ((v382 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vandq_s8(v159, v380);
    v385 = v382 + v378.i64[1];
    v386 = vandq_s8(v361, v381);
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), v367), vshlq_u32(vmovl_high_u16(v386), v368));
    v388.i64[0] = v387.u32[0];
    v388.i64[1] = v387.u32[1];
    v389 = v388;
    v388.i64[0] = v387.u32[2];
    v388.i64[1] = v387.u32[3];
    v390 = vpaddq_s64(vshlq_u64(v389, v375), vshlq_u64(v388, v376));
    v391 = (v390.i64[0] << v385) | v383;
    if (v378.i64[0] + (v385 & 0x3F) >= 0x40)
    {
      *(v265 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v390.i64[0] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v392 = vaddq_s16(v257, v384);
    v393 = v378.i64[0] + v385;
    v394 = (v378.i64[0] + v385) & 0x3F;
    v395 = v391 | (v390.i64[1] << v393);
    if ((v393 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v265 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      v395 = v390.i64[1] >> -v394;
      if (!v394)
      {
        v395 = 0;
      }
    }

    v396 = v393 + v378.i64[1];
    v397.i64[0] = 0xF000F000F000FLL;
    v397.i64[1] = 0xF000F000F000FLL;
    v398.i64[0] = -1;
    v398.i64[1] = -1;
    v399 = vshlq_u16(v398, vaddq_s16(v164, v397));
    v400 = vandq_s8(v399, v392);
    v401 = vmovl_u16(*v400.i8);
    v402 = vmovl_high_u16(v400);
    v403 = vmovl_u16(*v164.i8);
    v404 = vmovl_high_u16(v164);
    v405 = vtrn1q_s32(0, v403);
    v406 = vtrn1q_s32(0, v404);
    v407 = vpaddq_s32(vshlq_u32(v401, v405), vshlq_u32(v402, v406));
    v408 = vpaddq_s32(v403, v404);
    v409.i64[0] = v407.u32[0];
    v409.i64[1] = v407.u32[1];
    v410 = v409;
    v409.i64[0] = v407.u32[2];
    v409.i64[1] = v407.u32[3];
    v411 = v409;
    v409.i64[0] = v408.u32[0];
    v409.i64[1] = v408.u32[1];
    v412 = v409;
    v409.i64[0] = v408.u32[2];
    v409.i64[1] = v408.u32[3];
    v413 = vzip1q_s64(0, v412);
    v414 = vzip1q_s64(0, v409);
    v415 = vpaddq_s64(vshlq_u64(v410, v413), vshlq_u64(v411, v414));
    v416 = vpaddq_s64(v412, v409);
    v417 = (v415.i64[0] << v396) | v395;
    if (v416.i64[0] + (v396 & 0x3F) >= 0x40)
    {
      *(v265 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      if ((v396 & 0x3F) != 0)
      {
        v417 = v415.i64[0] >> -(v396 & 0x3F);
      }

      else
      {
        v417 = 0;
      }
    }

    v418 = vceqq_s16(v174, v165);
    v419 = vaddq_s16(v173, v384);
    v420 = v416.i64[0] + v396;
    v421 = v417 | (v415.i64[1] << v420);
    if ((v420 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v265 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
      v421 = v415.i64[1] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v421 = 0;
      }
    }

    v422 = vandq_s8(v159, v418);
    v423 = v420 + v416.i64[1];
    v424 = vandq_s8(v399, v419);
    v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v424.i8), v405), vshlq_u32(vmovl_high_u16(v424), v406));
    v426.i64[0] = v425.u32[0];
    v426.i64[1] = v425.u32[1];
    v427 = v426;
    v426.i64[0] = v425.u32[2];
    v426.i64[1] = v425.u32[3];
    v428 = vpaddq_s64(vshlq_u64(v427, v413), vshlq_u64(v426, v414));
    v429 = (v428.i64[0] << v423) | v421;
    if (v416.i64[0] + (v423 & 0x3F) >= 0x40)
    {
      *(v265 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v423 & 0x3F);
      if ((v423 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s16(v141, v422);
    v431 = v416.i64[0] + v423;
    v432 = (v416.i64[0] + v423) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v265 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
      v433 = v428.i64[1] >> -v432;
      if (!v432)
      {
        v433 = 0;
      }
    }

    v434 = v431 + v416.i64[1];
    v435.i64[0] = 0xF000F000F000FLL;
    v435.i64[1] = 0xF000F000F000FLL;
    v436.i64[0] = -1;
    v436.i64[1] = -1;
    v437 = vshlq_u16(v436, vaddq_s16(v165, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u16(*v438.i8);
    v440 = vmovl_high_u16(v438);
    v441 = vmovl_u16(*v165.i8);
    v442 = vmovl_high_u16(v165);
    v443 = vtrn1q_s32(0, v441);
    v444 = vtrn1q_s32(0, v442);
    v445 = vpaddq_s32(vshlq_u32(v439, v443), vshlq_u32(v440, v444));
    v446 = vpaddq_s32(v441, v442);
    v447.i64[0] = v445.u32[0];
    v447.i64[1] = v445.u32[1];
    v448 = v447;
    v447.i64[0] = v445.u32[2];
    v447.i64[1] = v445.u32[3];
    v449 = v447;
    v447.i64[0] = v446.u32[0];
    v447.i64[1] = v446.u32[1];
    v450 = v447;
    v447.i64[0] = v446.u32[2];
    v447.i64[1] = v446.u32[3];
    v451 = vzip1q_s64(0, v450);
    v452 = vzip1q_s64(0, v447);
    v453 = vpaddq_s64(vshlq_u64(v448, v451), vshlq_u64(v449, v452));
    v454 = vpaddq_s64(v450, v447);
    v455 = (v431 + v416.i64[1]) & 0x3F;
    v456 = (v453.i64[0] << (v431 + v416.i8[8])) | v433;
    if ((v454.i64[0] + v455) > 0x3F)
    {
      *(v265 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
      if (v455)
      {
        v456 = v453.i64[0] >> -v455;
      }

      else
      {
        v456 = 0;
      }
    }

    v457 = vaddq_s16(v175, v422);
    v458 = v454.i64[0] + v434;
    v459 = v456 | (v453.i64[1] << v458);
    if ((v458 & 0x3F) + v454.i64[1] >= 0x40)
    {
      *(v265 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
      v459 = v453.i64[1] >> -(v458 & 0x3F);
      if ((v458 & 0x3F) == 0)
      {
        v459 = 0;
      }
    }

    v460 = v458 + v454.i64[1];
    v461 = vandq_s8(v437, v457);
    v462 = vpaddq_s32(vshlq_u32(vmovl_u16(*v461.i8), v443), vshlq_u32(vmovl_high_u16(v461), v444));
    v463.i64[0] = v462.u32[0];
    v463.i64[1] = v462.u32[1];
    v464 = v463;
    v463.i64[0] = v462.u32[2];
    v463.i64[1] = v462.u32[3];
    v465 = vpaddq_s64(vshlq_u64(v464, v451), vshlq_u64(v463, v452));
    v466 = (v465.i64[0] << v460) | v459;
    if (v454.i64[0] + (v460 & 0x3F) >= 0x40)
    {
      *(v265 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v466;
      v466 = v465.i64[0] >> -(v460 & 0x3F);
      if ((v460 & 0x3F) == 0)
      {
        v466 = 0;
      }
    }

    v467 = v454.i64[0] + v460;
    v468 = (v454.i64[0] + v460) & 0x3F;
    v469 = v466 | (v465.i64[1] << (v454.i8[0] + v460));
    if ((v468 + v454.i64[1]) >= 0x40)
    {
      *(v265 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      v469 = v465.i64[1] >> -v468;
      if (!v468)
      {
        v469 = 0;
      }
    }

    v470 = v467 + v454.i64[1];
    if ((v470 & 0x3F) != 0)
    {
      *(v265 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
    }

    result = (v470 - v266 + 7) >> 3;
    v177 = *a2 | (result - 1);
  }

LABEL_97:
  *a2 = v177;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 32), a2, v25, v24);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v19 = vzip2q_s64(v15, *v14);
  v20 = vzip2q_s64(v16, v18);
  v21 = vdupq_lane_s32(*v11.i8, 0);
  v22 = vsubq_s16(v11, v21);
  v23 = vsubq_s16(v12, v21);
  v486 = vzip1q_s64(v15, *v14);
  v24 = vsubq_s16(v486, v21);
  v25 = vsubq_s16(v19, v21);
  v26 = vsubq_s16(v13, v21);
  v27 = vsubq_s16(v17, v21);
  v488 = vzip1q_s64(v16, v18);
  v28 = vsubq_s16(v488, v21);
  v29 = vsubq_s16(v20, v21);
  v30 = vqtbl1q_s8(vmaxq_s16(v22, v23), xmmword_29D2F1090);
  v31 = vqtbl1q_s8(vminq_s16(v22, v23), xmmword_29D2F1090);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36.i64[0] = 0x8000800080008000;
  v36.i64[1] = 0x8000800080008000;
  v37 = vmaxq_s16(v34, v36);
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v38 = vminq_s16(v35, v10);
  v39 = vzip1q_s16(v34, v35);
  v40.i64[0] = 0x10001000100010;
  v40.i64[1] = 0x10001000100010;
  v41 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v39)), vceqzq_s16(v39));
  v42 = vpmaxq_s16(v41, v41);
  v43 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v44 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v37, v47);
  v50 = vminq_s16(v38, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v55 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v56 = vpmaxq_s16(v54, v54);
  v57 = vpminq_s16(v55, v55);
  v58 = vpmaxq_s16(v56, v56);
  v59 = vpminq_s16(v57, v57);
  v60 = vmaxq_s16(v49, v58);
  v61 = vminq_s16(v50, v59);
  v62 = vzip1q_s16(v58, v59);
  v63 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v62)), vceqzq_s16(v62));
  v64 = vpmaxq_s16(v63, v63);
  v65 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v66 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
  v67 = vpmaxq_s16(v65, v65);
  v68 = vpminq_s16(v66, v66);
  v69 = vpmaxq_s16(v67, v67);
  v70 = vpminq_s16(v68, v68);
  v71 = vmaxq_s16(v60, v69);
  v72 = vminq_s16(v61, v70);
  v73 = vzip1q_s16(v69, v70);
  v74 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v73)), vceqzq_s16(v73));
  v75 = vpmaxq_s16(v74, v74);
  v76 = vmaxq_s16(vmaxq_s16(v42, v53), vmaxq_s16(v64, v75));
  v77 = vclzq_s16(vsubq_s16(v71, v72));
  v78 = vsubq_s16(v40, v77);
  v79 = vminq_s16(v78, v76);
  if (!vmaxvq_s16(v79))
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v472 = v19;
  v473 = v17;
  v474 = v20;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81.i64[0] = 0xF000F000F000FLL;
  v81.i64[1] = 0xF000F000F000FLL;
  v490 = vsubq_s16(vshlq_s16(v80, vsubq_s16(v81, v77)), v72);
  v82 = vcgtq_s16(v76, v78);
  v83.i64[0] = 0x8000800080008;
  v83.i64[1] = 0x8000800080008;
  v84.i64[0] = 0x3000300030003;
  v84.i64[1] = 0x3000300030003;
  v482 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v42), v84), 0);
  v484 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v53), v84), 0);
  v85 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v64), v84), 0);
  v86.i64[0] = 0x8000800080008000;
  v86.i64[1] = 0x8000800080008000;
  v87 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v75), v84), 0);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v89 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v87, v85), vnegq_s16(vaddq_s16(v482, v484))));
  v481 = vorrq_s8(vandq_s8(vceqzq_s16(v79), v84), vandq_s8(v82, v83));
  v492 = v24;
  v90 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v91 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
  v92 = vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080));
  v93 = vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080));
  v500 = v29;
  v478 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v479 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v94 = vqtbl1q_s8(vmaxq_s16(v479, v478), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v479, v478), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v36);
  v101 = vminq_s16(v99, v86);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = v22;
  v105 = vpmaxq_s16(v103, v103);
  v476 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
  v477 = v90;
  v106 = vqtbl1q_s8(vmaxq_s16(v90, v476), xmmword_29D2F1090);
  v107 = vqtbl1q_s8(vminq_s16(v90, v476), xmmword_29D2F1090);
  v108 = vpmaxq_s16(v106, v106);
  v109 = vpminq_s16(v107, v107);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vmaxq_s16(v100, v110);
  v113 = vminq_s16(v101, v111);
  v114 = vzip1q_s16(v110, v111);
  v115 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v114)), vceqzq_s16(v114));
  v496 = v27;
  v116 = vpmaxq_s16(v115, v115);
  v475 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
  v117 = vqtbl1q_s8(vmaxq_s16(v475, v91), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v475, v91), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v112, v121);
  v124 = vminq_s16(v113, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v125)), vceqzq_s16(v125));
  v494 = v26;
  v127 = vpmaxq_s16(v126, v126);
  v128 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
  v129 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
  v130 = vpmaxq_s16(v128, v128);
  v131 = vpminq_s16(v129, v129);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v498 = v28;
  v134 = vmaxq_s16(v123, v132);
  v135 = vminq_s16(v124, v133);
  v136 = vzip1q_s16(v132, v133);
  v137 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v136)), vceqzq_s16(v136));
  v138 = vpmaxq_s16(v137, v137);
  v139 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v138));
  v140 = vclzq_s16(vsubq_s16(v134, v135));
  v141 = vsubq_s16(v40, v140);
  v142 = vcgtq_s16(v139, v141);
  v143 = vminq_s16(v141, v139);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v144 = vbslq_s8(v142, v141, v40);
  v145 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v105), v84), 0);
  v146 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v116), v84), 0);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v127), v84), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v138), v84), 0);
  v149 = vsubq_s16(v143, v145);
  v150 = vsubq_s16(v143, v146);
  v151 = vsubq_s16(v143, v147);
  v152 = vaddq_s16(v145, v146);
  v153 = vsubq_s16(v143, v148);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v154 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v148, v147), vnegq_s16(v152)));
  v155 = v25;
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v157 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v143, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v154, v154)), v149, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v153), 3uLL));
  v158 = vandq_s8(v490, v82);
  v159 = vorrq_s8(v481, v89);
  v160 = vaddq_s16(vandq_s8(v79, v82), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v79, v482);
  v162 = vsubq_s16(v79, v484);
  v163 = vsubq_s16(v79, v85);
  v164 = vmlaq_s16(v160, v161, v156);
  v165 = vsubq_s16(v79, v87);
  v166 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v164, vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v165), 3uLL)), v157), 0);
  v167 = vaddvq_s16(v166);
  v169 = a5 < 4 || a6 < 2;
  if (v167)
  {
    v170.i64[0] = 0x3000300030003;
    v170.i64[1] = 0x3000300030003;
    v171 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v143), v170), v144), v154);
    v170.i64[0] = 0xF000F000F000FLL;
    v170.i64[1] = 0xF000F000F000FLL;
    v172 = vsubq_s16(v170, v140);
    v173.i64[0] = -1;
    v173.i64[1] = -1;
    v174 = vandq_s8(vsubq_s16(vshlq_s16(v173, v172), v135), v142);
    v21 = vbslq_s8(v166, vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080)), v21);
    v491 = vbslq_s8(v166, v479, v104);
    v485 = vbslq_s8(v166, v478, v23);
    v175 = vbslq_s8(v166, v476, v155);
    v176 = vbslq_s8(v166, v475, v494);
    v177 = vbslq_s8(v166, v93, v500);
    v178 = vbslq_s8(v166, v149, v161);
    v483 = vbslq_s8(v166, v150, v162);
    v179 = vbslq_s8(v166, v151, v163);
    v165 = vbslq_s8(v166, v153, v165);
    v158 = vbslq_s8(v166, v174, v158);
    v79 = vbslq_s8(v166, v143, v79);
    v180 = vbslq_s8(v166, v171, v159);
    v181 = vbslq_s8(v166, v92, v498);
    v182 = vbslq_s8(v166, v91, v496);
    v183 = vbslq_s8(v166, v477, v492);
    v184 = v178;
    if (v169)
    {
LABEL_10:
      v185 = v483;
      v186 = v485;
      goto LABEL_16;
    }
  }

  else
  {
    v483 = v162;
    v491 = v104;
    v485 = v23;
    v181 = v498;
    v177 = v500;
    v176 = v494;
    v182 = v496;
    v175 = v155;
    v183 = v492;
    v179 = v163;
    v184 = v161;
    v180 = v159;
    if (v169)
    {
      goto LABEL_10;
    }
  }

  v480 = v158;
  v493 = v183;
  v495 = v176;
  v497 = v182;
  v499 = v181;
  v501 = v177;
  v188 = v165;
  v197 = vsubq_s16(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v189 = vsubq_s16(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v502.val[0] = v486;
  v502.val[1] = v472;
  v502.val[1].i32[3] = v12.i32[3];
  v190 = vsubq_s16(v486, vqtbl2q_s8(v502, xmmword_29D2F0FA0));
  v191 = vsubq_s16(v472, vqtbl2q_s8(v502, xmmword_29D2F1040));
  v192 = v13;
  v502.val[0] = v473;
  v502.val[0].i32[3] = v12.i32[3];
  v193 = vsubq_s16(v13, vqtbl2q_s8(v502, xmmword_29D2F1050));
  v194 = vsubq_s16(v473, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v502.val[0] = v488;
  v502.val[1] = v474;
  v502.val[1].i32[3] = v12.i32[3];
  v195 = vsubq_s16(v488, vqtbl2q_s8(v502, xmmword_29D2F1060));
  v196 = v189;
  v196.i32[3] = v197.i32[0];
  v197.i32[0] = v189.i32[3];
  v198 = vsubq_s16(v474, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v199 = vqtbl1q_s8(vmaxq_s16(v197, v196), xmmword_29D2F1090);
  v200 = vqtbl1q_s8(vminq_s16(v197, v196), xmmword_29D2F1090);
  v201 = vpmaxq_s16(v199, v199);
  v202 = vpminq_s16(v200, v200);
  v203 = vpmaxq_s16(v201, v201);
  v204 = vpminq_s16(v202, v202);
  v502.val[0].i64[0] = 0x8000800080008000;
  v502.val[0].i64[1] = 0x8000800080008000;
  v502.val[0] = vmaxq_s16(v203, v502.val[0]);
  v502.val[1].i64[0] = 0x8000800080008000;
  v502.val[1].i64[1] = 0x8000800080008000;
  v502.val[1] = vminq_s16(v204, v502.val[1]);
  v205 = vzip1q_s16(v203, v204);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v206 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v205)), vceqzq_s16(v205));
  v207 = vpmaxq_s16(v206, v206);
  v489 = v190;
  v487 = v191;
  v208 = vqtbl1q_s8(vmaxq_s16(v190, v191), xmmword_29D2F1090);
  v209 = vqtbl1q_s8(vminq_s16(v190, v191), xmmword_29D2F1090);
  v210 = vpmaxq_s16(v208, v208);
  v211 = vpminq_s16(v209, v209);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v502.val[0] = vmaxq_s16(v502.val[0], v212);
  v502.val[1] = vminq_s16(v502.val[1], v213);
  v214 = vzip1q_s16(v212, v213);
  v215 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v214)), vceqzq_s16(v214));
  v216 = vpmaxq_s16(v215, v215);
  v217 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
  v218 = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
  v219 = vpmaxq_s16(v217, v217);
  v220 = vpminq_s16(v218, v218);
  v221 = vpmaxq_s16(v219, v219);
  v222 = vpminq_s16(v220, v220);
  v502.val[0] = vmaxq_s16(v502.val[0], v221);
  v502.val[1] = vminq_s16(v502.val[1], v222);
  v223 = vzip1q_s16(v221, v222);
  v224 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v223)), vceqzq_s16(v223));
  v225 = vpmaxq_s16(v224, v224);
  v226 = vqtbl1q_s8(vmaxq_s16(v195, v198), xmmword_29D2F1090);
  v227 = vqtbl1q_s8(vminq_s16(v195, v198), xmmword_29D2F1090);
  v228 = vpmaxq_s16(v226, v226);
  v229 = vpminq_s16(v227, v227);
  v230 = vpmaxq_s16(v228, v228);
  v231 = vpminq_s16(v229, v229);
  v502.val[0] = vmaxq_s16(v502.val[0], v230);
  v232 = vminq_s16(v502.val[1], v231);
  v233 = vzip1q_s16(v230, v231);
  v234 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v233)), vceqzq_s16(v233));
  v235 = vpmaxq_s16(v234, v234);
  v236 = vmaxq_s16(vmaxq_s16(v207, v216), vmaxq_s16(v225, v235));
  v237 = vclzq_s16(vsubq_s16(v502.val[0], v232));
  v238 = vsubq_s16(v203, v237);
  v239 = vcgtq_s16(v236, v238);
  v240 = vminq_s16(v238, v236);
  v241.i64[0] = 0x3000300030003;
  v241.i64[1] = 0x3000300030003;
  v242 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v207), v241), 0);
  v243 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v216), v241), 0);
  v244 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v225), v241), 0);
  v245 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v235), v241), 0);
  v246 = vsubq_s16(v240, v242);
  v247 = vsubq_s16(v240, v243);
  v248 = vsubq_s16(v240, v244);
  v249 = vsubq_s16(v240, v245);
  v250 = vceqq_s16(vaddq_s16(v245, v244), vnegq_s16(vaddq_s16(v242, v243)));
  v243.i64[0] = 0x4000400040004;
  v243.i64[1] = 0x4000400040004;
  v251 = vbicq_s8(v243, v250);
  v245.i64[0] = 0x7000700070007;
  v245.i64[1] = 0x7000700070007;
  v243.i64[0] = 0x8000800080008;
  v243.i64[1] = 0x8000800080008;
  v252 = vandq_s8(v180, v241);
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v185 = v483;
  v254 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(vandq_s8(v180, v243))), vandq_s8(vaddq_s16(v180, v180), v243)), vandq_s8(vceqq_s16(v252, v253), v203)), v184, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v483), v188), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v240, v239), vaddq_s16(v251, v251)), v246, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v248, v247), v249), 3uLL))), 0);
  if (vaddvq_s16(v254))
  {
    v255.i64[0] = 0x9000900090009;
    v255.i64[1] = 0x9000900090009;
    v256 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v240), v253), vsubq_s16(vandq_s8(v239, v255), vmvnq_s8(v239))), v251);
    v255.i64[0] = 0xF000F000F000FLL;
    v255.i64[1] = 0xF000F000F000FLL;
    v257 = vsubq_s16(v255, v237);
    v255.i64[0] = -1;
    v255.i64[1] = -1;
    v258 = vandq_s8(vsubq_s16(vshlq_s16(v255, v257), v232), v239);
    v21.i32[0] = vbslq_s8(v254, vextq_s8(v12, v12, 0xCuLL), v21).u32[0];
    v491 = vbslq_s8(v254, v197, v491);
    v186 = vbslq_s8(v254, v196, v485);
    v175 = vbslq_s8(v254, v487, v175);
    v176 = vbslq_s8(v254, v193, v495);
    v182 = vbslq_s8(v254, v194, v497);
    v181 = vbslq_s8(v254, v195, v499);
    v177 = vbslq_s8(v254, v198, v501);
    v184 = vbslq_s8(v254, v246, v184);
    v185 = vbslq_s8(v254, v247, v483);
    v179 = vbslq_s8(v254, v248, v179);
    v165 = vbslq_s8(v254, v249, v188);
    v158 = vbslq_s8(v254, v258, v480);
    v79 = vbslq_s8(v254, v240, v79);
    v180 = vbslq_s8(v254, v256, v180);
    v183 = vbslq_s8(v254, v489, v493);
  }

  else
  {
    v181 = v499;
    v177 = v501;
    v176 = v495;
    v182 = v497;
    v158 = v480;
    v165 = v188;
    v183 = v493;
    v186 = v485;
  }

LABEL_16:
  v259.i64[0] = 0x8000800080008;
  v259.i64[1] = 0x8000800080008;
  v260 = vandq_s8(v180, v259);
  v261.i64[0] = 0x3000300030003;
  v261.i64[1] = 0x3000300030003;
  v262.i64[0] = 0x2000200020002;
  v262.i64[1] = 0x2000200020002;
  v263 = vceqq_s16(vandq_s8(v180, v261), v262);
  v262.i64[0] = 0x10001000100010;
  v262.i64[1] = 0x10001000100010;
  v264 = vandq_s8(v263, v262);
  v262.i64[0] = 0x7000700070007;
  v262.i64[1] = 0x7000700070007;
  v265 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(v260)), vandq_s8(vaddq_s16(v180, v180), v259)), v264), v184, v262), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v185), v165), 3uLL));
  if ((vpaddq_s16(v265, v265).i16[0] - 719) < 0xFFFFFFFFFFFFFCF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 96;
  }

  else
  {
    v266 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v267 = 8 * (a1 & 7);
    if (v267)
    {
      v268 = *v266 & ~(-1 << v267);
    }

    else
    {
      v268 = 0;
    }

    *a2 = 0;
    if (v79.i16[0])
    {
      v269 = ((v79.i16[0] << 10) + 15360) & 0x3C00;
    }

    else
    {
      v269 = 0;
    }

    if (v79.i16[1])
    {
      v270 = ((v79.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v270 = 0;
    }

    v271 = v269 | v270 | v180.i8[0] & 0x1F | (32 * (v180.i8[2] & 0x1Fu));
    v272 = (v271 << v267) | v268;
    if (v267 >= 0x2E)
    {
      *v266 = v272;
      v272 = v271 >> (-8 * (a1 & 7u));
    }

    v273 = (v267 + 18) & 0x3A;
    v274 = v272 | (v21.u32[0] << v273);
    if (v273 >= 0x20)
    {
      *(v266 + (((v267 + 18) >> 3) & 8)) = v274;
      v274 = v21.u32[0] >> -v273;
    }

    v275 = v267 + 50;
    v276 = vsubq_s16(v79, v184);
    v277 = vsubq_s16(v79, v185);
    v278 = vsubq_s16(v79, v179);
    v279 = vsubq_s16(v79, v165);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u16(v278);
    *v279.i8 = vqmovn_u16(v279);
    v276.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v276, v277), vzip1q_s8(v278, v279)), vzip1q_s16(vtrn2q_s8(v276, v277), vtrn2q_s8(v278, v279))).u64[0];
    v278.i64[0] = 0x202020202020202;
    v278.i64[1] = 0x202020202020202;
    v280 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v180.i8, 0x4000400040004)))), v278);
    v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v281 = vandq_s8(vshlq_u8(v279, vorrq_s8(v280, v278)), v276.u64[0]);
    v282 = vmovl_u8(*v280.i8);
    v283 = vpaddq_s16(vshlq_u16(vmovl_u8(*v281.i8), vtrn1q_s16(0, v282)), vmovl_high_u8(v281));
    v284 = vpaddq_s16(v282, vmovl_high_u8(v280));
    v285 = vmovl_u16(*v284.i8);
    v286 = vmovl_high_u16(v284);
    v287 = vpaddq_s32(vshlq_u32(vmovl_u16(*v283.i8), vtrn1q_s32(0, v285)), vshlq_u32(vmovl_high_u16(v283), vtrn1q_s32(0, v286)));
    v288 = vpaddq_s32(v285, v286);
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
    v295 = (v267 + 50) & 0x3A;
    v296 = (v293.i64[0] << v295) | v274;
    if ((v294.i64[0] + v295) >= 0x40)
    {
      *(v266 + ((v275 >> 3) & 8)) = v296;
      v296 = v293.i64[0] >> -v295;
    }

    v297 = vceqq_s16(v79, v184);
    v298 = v294.i64[0] + v275;
    v299 = v296 | (v293.i64[1] << v298);
    if ((v298 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v266 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
      v299 = v293.i64[1] >> -(v298 & 0x3F);
      if ((v298 & 0x3F) == 0)
      {
        v299 = 0;
      }
    }

    v300 = vandq_s8(v158, v297);
    v301 = v298 + v294.i64[1];
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vextq_s8(vtstq_s16(v260, v260), 0, 0xCuLL), v79);
    v304.i64[0] = 0xF000F000F000FLL;
    v304.i64[1] = 0xF000F000F000FLL;
    v305 = vandq_s8(vshlq_u16(v302, vaddq_s16(v303, v304)), v158);
    v306 = vmovl_u16(*v303.i8);
    v307 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v306)), vmovl_high_u16(v305));
    v308 = vpaddq_s32(v306, vmovl_high_u16(v303));
    v309.i64[0] = v307.u32[0];
    v309.i64[1] = v307.u32[1];
    v310 = v309;
    v309.i64[0] = v307.u32[2];
    v309.i64[1] = v307.u32[3];
    v311 = v309;
    v309.i64[0] = v308.u32[0];
    v309.i64[1] = v308.u32[1];
    v312 = v309;
    v309.i64[0] = v308.u32[2];
    v309.i64[1] = v308.u32[3];
    v313 = vpaddq_s64(vshlq_u64(v310, vzip1q_s64(0, v312)), vshlq_u64(v311, vzip1q_s64(0, v309)));
    v314 = vpaddq_s64(v312, v309);
    v315 = (v313.i64[0] << v301) | v299;
    if (v314.i64[0] + (v301 & 0x3F) >= 0x40)
    {
      *(v266 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v313.i64[0] >> -(v301 & 0x3F);
      if ((v301 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vaddq_s16(v300, v491);
    v317 = v314.i64[0] + v301;
    v318 = v315 | (v313.i64[1] << v317);
    if ((v317 & 0x3F) + v314.i64[1] >= 0x40)
    {
      *(v266 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v313.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = v317 + v314.i64[1];
    v320 = vextq_s8(0, v184, 0xCuLL);
    v321.i64[0] = 0xF000F000F000FLL;
    v321.i64[1] = 0xF000F000F000FLL;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v320, v321)), v316);
    v324 = vmovl_u16(*v320.i8);
    v325 = vmovl_high_u16(v320);
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
    v334 = (v332.i64[0] << v319) | v318;
    if (v333.i64[0] + (v319 & 0x3F) >= 0x40)
    {
      *(v266 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vceqq_s16(v79, v185);
    v336 = vaddq_s16(v186, v300);
    v337 = v333.i64[0] + v319;
    v338 = v334 | (v332.i64[1] << v337);
    if ((v337 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v266 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v332.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = vandq_s8(v158, v335);
    v340 = v337 + v333.i64[1];
    v341.i64[0] = 0xF000F000F000FLL;
    v341.i64[1] = 0xF000F000F000FLL;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v184, v341)), v336);
    v344 = vmovl_u16(*v184.i8);
    v345 = vmovl_high_u16(v184);
    v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
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
    v354 = (v352.i64[0] << v340) | v338;
    if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v266 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v352.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vaddq_s16(v183, v339);
    v356 = v353.i64[0] + v340;
    v357 = v354 | (v352.i64[1] << v356);
    if ((v356 & 0x3F) + v353.i64[1] >= 0x40)
    {
      *(v266 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v352.i64[1] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = v356 + v353.i64[1];
    v359.i64[0] = 0xF000F000F000FLL;
    v359.i64[1] = 0xF000F000F000FLL;
    v360.i64[0] = -1;
    v360.i64[1] = -1;
    v361 = vshlq_u16(v360, vaddq_s16(v185, v359));
    v362 = vandq_s8(v361, v355);
    v363 = vmovl_u16(*v362.i8);
    v364 = vmovl_high_u16(v362);
    v365 = vmovl_u16(*v185.i8);
    v366 = vmovl_high_u16(v185);
    v367 = vtrn1q_s32(0, v365);
    v368 = vtrn1q_s32(0, v366);
    v369 = vpaddq_s32(vshlq_u32(v363, v367), vshlq_u32(v364, v368));
    v370 = vpaddq_s32(v365, v366);
    v371.i64[0] = v369.u32[0];
    v371.i64[1] = v369.u32[1];
    v372 = v371;
    v371.i64[0] = v369.u32[2];
    v371.i64[1] = v369.u32[3];
    v373 = v371;
    v371.i64[0] = v370.u32[0];
    v371.i64[1] = v370.u32[1];
    v374 = v371;
    v371.i64[0] = v370.u32[2];
    v371.i64[1] = v370.u32[3];
    v375 = vzip1q_s64(0, v374);
    v376 = vzip1q_s64(0, v371);
    v377 = vpaddq_s64(vshlq_u64(v372, v375), vshlq_u64(v373, v376));
    v378 = vpaddq_s64(v374, v371);
    v379 = (v377.i64[0] << v358) | v357;
    if (v378.i64[0] + (v358 & 0x3F) >= 0x40)
    {
      *(v266 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
      if ((v358 & 0x3F) != 0)
      {
        v379 = v377.i64[0] >> -(v358 & 0x3F);
      }

      else
      {
        v379 = 0;
      }
    }

    v380 = vceqq_s16(v79, v179);
    v381 = vaddq_s16(v175, v339);
    v382 = v378.i64[0] + v358;
    v383 = v379 | (v377.i64[1] << v382);
    if ((v382 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v377.i64[1] >> -(v382 & 0x3F);
      if ((v382 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vandq_s8(v158, v380);
    v385 = v382 + v378.i64[1];
    v386 = vandq_s8(v361, v381);
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), v367), vshlq_u32(vmovl_high_u16(v386), v368));
    v388.i64[0] = v387.u32[0];
    v388.i64[1] = v387.u32[1];
    v389 = v388;
    v388.i64[0] = v387.u32[2];
    v388.i64[1] = v387.u32[3];
    v390 = vpaddq_s64(vshlq_u64(v389, v375), vshlq_u64(v388, v376));
    v391 = (v390.i64[0] << v385) | v383;
    if (v378.i64[0] + (v385 & 0x3F) >= 0x40)
    {
      *(v266 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v390.i64[0] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v392 = vaddq_s16(v176, v384);
    v393 = v378.i64[0] + v385;
    v394 = (v378.i64[0] + v385) & 0x3F;
    v395 = v391 | (v390.i64[1] << v393);
    if ((v393 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      v395 = v390.i64[1] >> -v394;
      if (!v394)
      {
        v395 = 0;
      }
    }

    v396 = v393 + v378.i64[1];
    v397.i64[0] = 0xF000F000F000FLL;
    v397.i64[1] = 0xF000F000F000FLL;
    v398.i64[0] = -1;
    v398.i64[1] = -1;
    v399 = vshlq_u16(v398, vaddq_s16(v179, v397));
    v400 = vandq_s8(v399, v392);
    v401 = vmovl_u16(*v400.i8);
    v402 = vmovl_high_u16(v400);
    v403 = vmovl_u16(*v179.i8);
    v404 = vmovl_high_u16(v179);
    v405 = vtrn1q_s32(0, v403);
    v406 = vtrn1q_s32(0, v404);
    v407 = vpaddq_s32(vshlq_u32(v401, v405), vshlq_u32(v402, v406));
    v408 = vpaddq_s32(v403, v404);
    v409.i64[0] = v407.u32[0];
    v409.i64[1] = v407.u32[1];
    v410 = v409;
    v409.i64[0] = v407.u32[2];
    v409.i64[1] = v407.u32[3];
    v411 = v409;
    v409.i64[0] = v408.u32[0];
    v409.i64[1] = v408.u32[1];
    v412 = v409;
    v409.i64[0] = v408.u32[2];
    v409.i64[1] = v408.u32[3];
    v413 = vzip1q_s64(0, v412);
    v414 = vzip1q_s64(0, v409);
    v415 = vpaddq_s64(vshlq_u64(v410, v413), vshlq_u64(v411, v414));
    v416 = vpaddq_s64(v412, v409);
    v417 = (v393 + v378.i64[1]) & 0x3F;
    v418 = (v415.i64[0] << (v393 + v378.i8[8])) | v395;
    if ((v416.i64[0] + v417) >= 0x40)
    {
      *(v266 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      if (v417)
      {
        v418 = v415.i64[0] >> -v417;
      }

      else
      {
        v418 = 0;
      }
    }

    v419 = vceqq_s16(v79, v165);
    v420 = vaddq_s16(v182, v384);
    v421 = v416.i64[0] + v396;
    v422 = v418 | (v415.i64[1] << v421);
    if ((v421 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v415.i64[1] >> -(v421 & 0x3F);
      if ((v421 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vandq_s8(v158, v419);
    v424 = v421 + v416.i64[1];
    v425 = vandq_s8(v399, v420);
    v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), v405), vshlq_u32(vmovl_high_u16(v425), v406));
    v427.i64[0] = v426.u32[0];
    v427.i64[1] = v426.u32[1];
    v428 = v427;
    v427.i64[0] = v426.u32[2];
    v427.i64[1] = v426.u32[3];
    v429 = vpaddq_s64(vshlq_u64(v428, v413), vshlq_u64(v427, v414));
    v430 = (v429.i64[0] << v424) | v422;
    if (v416.i64[0] + (v424 & 0x3F) >= 0x40)
    {
      *(v266 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v424 & 0x3F);
      if ((v424 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s16(v181, v423);
    v432 = v416.i64[0] + v424;
    v433 = (v416.i64[0] + v424) & 0x3F;
    v434 = v430 | (v429.i64[1] << v432);
    if ((v432 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      v434 = v429.i64[1] >> -v433;
      if (!v433)
      {
        v434 = 0;
      }
    }

    v435 = v432 + v416.i64[1];
    v436.i64[0] = 0xF000F000F000FLL;
    v436.i64[1] = 0xF000F000F000FLL;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u16(v437, vaddq_s16(v165, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u16(*v439.i8);
    v441 = vmovl_high_u16(v439);
    v442 = vmovl_u16(*v165.i8);
    v443 = vmovl_high_u16(v165);
    v444 = vtrn1q_s32(0, v442);
    v445 = vtrn1q_s32(0, v443);
    v446 = vpaddq_s32(vshlq_u32(v440, v444), vshlq_u32(v441, v445));
    v447 = vpaddq_s32(v442, v443);
    v448.i64[0] = v446.u32[0];
    v448.i64[1] = v446.u32[1];
    v449 = v448;
    v448.i64[0] = v446.u32[2];
    v448.i64[1] = v446.u32[3];
    v450 = v448;
    v448.i64[0] = v447.u32[0];
    v448.i64[1] = v447.u32[1];
    v451 = v448;
    v448.i64[0] = v447.u32[2];
    v448.i64[1] = v447.u32[3];
    v452 = vzip1q_s64(0, v451);
    v453 = vzip1q_s64(0, v448);
    v454 = vpaddq_s64(vshlq_u64(v449, v452), vshlq_u64(v450, v453));
    v455 = vpaddq_s64(v451, v448);
    v456 = (v432 + v416.i64[1]) & 0x3F;
    v457 = (v454.i64[0] << (v432 + v416.i8[8])) | v434;
    if ((v455.i64[0] + v456) > 0x3F)
    {
      *(v266 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
      if (v456)
      {
        v457 = v454.i64[0] >> -v456;
      }

      else
      {
        v457 = 0;
      }
    }

    v458 = vaddq_s16(v177, v423);
    v459 = v455.i64[0] + v435;
    v460 = v457 | (v454.i64[1] << v459);
    if ((v459 & 0x3F) + v455.i64[1] >= 0x40)
    {
      *(v266 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      v460 = v454.i64[1] >> -(v459 & 0x3F);
      if ((v459 & 0x3F) == 0)
      {
        v460 = 0;
      }
    }

    v461 = v459 + v455.i64[1];
    v462 = vandq_s8(v438, v458);
    v463 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), v444), vshlq_u32(vmovl_high_u16(v462), v445));
    v464.i64[0] = v463.u32[0];
    v464.i64[1] = v463.u32[1];
    v465 = v464;
    v464.i64[0] = v463.u32[2];
    v464.i64[1] = v463.u32[3];
    v466 = vpaddq_s64(vshlq_u64(v465, v452), vshlq_u64(v464, v453));
    v467 = (v466.i64[0] << v461) | v460;
    if (v455.i64[0] + (v461 & 0x3F) >= 0x40)
    {
      *(v266 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v466.i64[0] >> -(v461 & 0x3F);
      if ((v461 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = v455.i64[0] + v461;
    v469 = (v455.i64[0] + v461) & 0x3F;
    v470 = v467 | (v466.i64[1] << (v455.i8[0] + v461));
    if ((v469 + v455.i64[1]) >= 0x40)
    {
      *(v266 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      v470 = v466.i64[1] >> -v469;
      if (!v469)
      {
        v470 = 0;
      }
    }

    v471 = v468 + v455.i64[1];
    if ((v471 & 0x3F) != 0)
    {
      *(v266 + ((v471 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
    }

    result = (v471 - v267 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v78 = *MEMORY[0x29EDCA608];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v71;
        v23 = (a3 + 4);
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
          do
          {
            v27 = *v24;
            *(v25 - 4) = *(v24 - 1);
            *v25 = v27;
            v25 += 2;
            v24 += 2;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 = (v22 + 4);
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v71;
        v30 = (a3 + 4);
        v31 = &v70 + 2 * ((a5 >> 1) & 0x3F);
        do
        {
          v32 = v30;
          v33 = v29;
          v34 = a5 & 0x7E;
          do
          {
            v35 = *v32;
            *(v33 - 4) = *(v32 - 1);
            *v33 = v35;
            v33 += 2;
            v32 += 2;
            v34 -= 2;
          }

          while (v34);
          v36 = (a3 + v28 * a4 + 4 * v20);
          v37 = v31;
          v38 = a5 - v20;
          do
          {
            v39 = *v36++;
            *v37++ = v39;
            --v38;
          }

          while (v38);
          ++v28;
          v29 = (v29 + 4);
          v30 = (v30 + a4);
          v31 = (v31 + 4);
        }

        while (v28 != a6);
      }
    }

    else
    {
      v11 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v11 = a6 & 0xFE;
      v12 = (a3 + 1);
      v13 = &v70 + 1;
      v14 = v11;
      do
      {
        v15 = *(v12 - 1);
        v16 = *v12;
        v12 = (v12 + 2);
        *(v13 - 1) = v15;
        *v13 = v16;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v11 != a6)
      {
LABEL_9:
        v17 = a6 - v11;
        v18 = &v70 + v11;
        v19 = (a3 + v11 * a4);
        do
        {
          *v18++ = *v19;
          v19 = (v19 + a4);
          --v17;
        }

        while (v17);
      }
    }
  }

  v54 = v70;
  v55 = WORD1(v70);
  v56 = v71;
  v57 = WORD1(v71);
  v58 = WORD2(v70);
  v59 = WORD3(v70);
  v60 = WORD2(v71);
  v61 = WORD3(v71);
  v62 = v72;
  v63 = WORD1(v72);
  v64 = v73;
  v65 = WORD1(v73);
  v66 = WORD2(v72);
  v67 = WORD3(v72);
  if (a5 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = a5;
  }

  if (a5 >= 4)
  {
    v41 = a5 - 4;
  }

  else
  {
    v41 = 0;
  }

  v68 = WORD2(v73);
  v69 = WORD3(v73);
  if (a6 >= 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = a6;
  }

  if (a6 >= 2)
  {
    v43 = a6 - 2;
  }

  else
  {
    v43 = 0;
  }

  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v54, a7, v40, v42);
  v54 = WORD4(v70);
  v55 = WORD5(v70);
  v56 = WORD4(v71);
  v57 = WORD5(v71);
  v58 = WORD6(v70);
  v59 = HIWORD(v70);
  v60 = WORD6(v71);
  v61 = HIWORD(v71);
  v62 = WORD4(v72);
  v63 = WORD5(v72);
  v64 = WORD4(v73);
  v65 = WORD5(v73);
  v66 = WORD6(v72);
  v67 = HIWORD(v72);
  v68 = WORD6(v73);
  v69 = HIWORD(v73);
  if (a6 >= 4)
  {
    v45 = 2;
  }

  else
  {
    v45 = v43;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v54, a7, v40, v45);
  v54 = v74;
  v55 = WORD1(v74);
  v56 = v75;
  v57 = WORD1(v75);
  v58 = WORD2(v74);
  v59 = WORD3(v74);
  v60 = WORD2(v75);
  v61 = WORD3(v75);
  v62 = v76;
  v63 = WORD1(v76);
  v64 = v77;
  v65 = WORD1(v77);
  v66 = WORD2(v76);
  v67 = WORD3(v76);
  if (a5 >= 8)
  {
    v47 = 4;
  }

  else
  {
    v47 = v41;
  }

  v68 = WORD2(v77);
  v69 = WORD3(v77);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 48, &v54, a7, v47, v42);
  v54 = WORD4(v74);
  v55 = WORD5(v74);
  v56 = WORD4(v75);
  v57 = WORD5(v75);
  v58 = WORD6(v74);
  v59 = HIWORD(v74);
  v60 = WORD6(v75);
  v61 = HIWORD(v75);
  v62 = WORD4(v76);
  v63 = WORD5(v76);
  v64 = WORD4(v77);
  v65 = WORD5(v77);
  v66 = WORD6(v76);
  v67 = HIWORD(v76);
  v68 = WORD6(v77);
  v69 = HIWORD(v77);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 72, &v54, a7, v47, v45);
  if (v48)
  {
    v50 = 4;
  }

  else
  {
    v50 = 0;
  }

  if (v46)
  {
    v51 = 2;
  }

  else
  {
    v51 = 0;
  }

  if (result)
  {
    v52 = -8;
  }

  else
  {
    v52 = -16;
  }

  *a2 = v52 | v50 | v44 | v51;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v332 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v281 = v7;
  v8 = a4 < 2 || a5 == 0;
  v280 = v8;
  v9 = a4 < 2 || a5 < 2;
  v279 = v9;
  v10 = a4 < 3 || a5 == 0;
  v278 = v10;
  v11 = a4 < 3 || a5 < 2;
  v277 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v276 = v6;
  v12 = a4 < 4 || a5 < 2;
  v275 = v12;
  v13 = &v314;
  v14 = &v316;
  v15 = &v320;
  v16 = &v324;
  v17 = &v328;
  v18 = &v330;
  v19 = &v299;
  v20 = v297;
  v21 = &v295;
  v22 = &v293;
  v23 = &v291;
  v24 = v289;
  v25 = 1;
  v26 = &v318;
  v27 = &v322;
  v28 = &v326;
  v274 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v280)
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
    if (v281)
    {
      if (v279)
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
      if (v279)
      {
LABEL_69:
        if (v278)
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
    if (v278)
    {
LABEL_70:
      if (v276)
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
    if (!v276)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v274;
    if (!v277)
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

    if (!v275)
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
    if ((v274 | 2) == 3)
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
    v19 = &v298;
    v20 = v296;
    v21 = &v294;
    v22 = &v292;
    v23 = &v290;
    v24 = v288;
    v14 = &v317;
    v13 = &v315;
    v15 = &v321;
    v26 = &v319;
    v16 = &v325;
    v27 = &v323;
    v17 = &v329;
    v28 = &v327;
    v18 = &v331;
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
  v268 = v71;
  v72 = v291;
  v73 = v330;
  v74 = v331;
  v76 = v331 >= v330;
  v77 = v290;
  v78 = kDQuadParamTable[160 * v290 + 6 + 10 * v331];
  v302 = kDQuadParamTable[160 * v291 + 6 + 10 * v330];
  v75 = v302;
  v303 = v78;
  v304[0] = v302;
  v304[1] = v78;
  if (*(&v330 + (v331 >= v330)) == *(&v330 + (v331 < v330)))
  {
    v79 = v302;
  }

  else
  {
    v80 = v304[v331 < v330];
    v79 = v302;
    if (v80 >= 1)
    {
      *(&v302 + (v331 < v330)) = 0;
      *(&v302 + v76) += v80;
      v79 = v302;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 1);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v287 = v85;
  v86 = v81 + v83;
  v285 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v285 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v287 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v285 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v274 == 4)
  {
    v93 = 1 << (v299 - 1);
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

    if (v268)
    {
      if (v280)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v316 | v95) == 0xFFFFFFFF || v316 == v93)
      {
        v92 = 1;
      }

      if (!v281)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v279)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v320 | v95) == 0xFFFFFFFF || v320 == v93)
      {
        v92 = 1;
      }

      if (!v278)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v276)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v324 | v95) == 0xFFFFFFFF || v324 == v93)
      {
        v92 = 1;
      }

      if (!v277)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v275)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v314 | v95) == 0xFFFFFFFF || v314 == v93)
      {
        v92 = 1;
      }

      if (!v280)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v281)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v318 | v95) == 0xFFFFFFFF || v318 == v93)
      {
        v92 = 1;
      }

      if (!v279)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v278)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v322 | v95) == 0xFFFFFFFF || v322 == v93)
      {
        v92 = 1;
      }

      if (!v276)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v277)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v326 | v95) == 0xFFFFFFFF || v326 == v93)
      {
        v92 = 1;
      }

      if (!v275)
      {
LABEL_204:
        if ((v328 | v95) == 0xFFFFFFFF || v328 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 0x10;
  v97 = v268;
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
  v286 = v103;
  v104 = v102 + v101;
  v284 = v102 + v101;
  v105 = v303 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v284 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v286 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v284 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v264 = v73;
  if (v274 == 4)
  {
    v108 = 1 << (v298 - 1);
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

    if (v268)
    {
      if (v280)
      {
        goto LABEL_231;
      }

LABEL_402:
      v208 = (v317 | v110) == 0xFFFFFFFF || v317 == v108;
      v98 |= v208;
      if (!v281)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v279)
      {
        goto LABEL_233;
      }

LABEL_416:
      v212 = (v321 | v110) == 0xFFFFFFFF || v321 == v108;
      v98 |= v212;
      if (!v278)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v276)
      {
        goto LABEL_235;
      }

LABEL_430:
      v216 = (v325 | v110) == 0xFFFFFFFF || v325 == v108;
      v98 |= v216;
      if (v277)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v327 | v110) == 0xFFFFFFFF || v327 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v206 = (v315 | v110) == 0xFFFFFFFF || v315 == v108;
    v98 |= v206;
    if (!v280)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v281)
    {
      goto LABEL_232;
    }

LABEL_409:
    v210 = (v319 | v110) == 0xFFFFFFFF || v319 == v108;
    v98 |= v210;
    if (!v279)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v278)
    {
      goto LABEL_234;
    }

LABEL_423:
    v214 = (v323 | v110) == 0xFFFFFFFF || v323 == v108;
    v98 |= v214;
    if (!v276)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v277)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v318;
    v114 = v306;
    if (!v275)
    {
      v116 = (v329 | v110) == 0xFFFFFFFF || v329 == v108;
      v98 |= v116;
    }

    v266 = v98;
  }

  else
  {
    v266 = v98;
    v113 = &v318;
    v114 = v306;
  }

  v117 = 0;
  v118 = v268;
  if (v100 >> v104 > 0x10)
  {
    v118 = 1;
  }

  v265 = v118;
  v283 = 0;
  v282 = 0;
  v119 = &v299;
  v120 = v297;
  v301 = 0;
  v273 = &v293;
  v121 = &v330;
  v122 = &v291;
  v271 = v289;
  v123 = &v287;
  v124 = &v285;
  memset(v300, 0, sizeof(v300));
  v125 = &v283;
  v126 = 1;
  v127 = v305;
  v128 = &v314;
  v129 = &v309 + 4;
  v130 = &v308 + 4;
  v131 = &v309;
  v133 = &v307 + 4;
  v132 = &v308;
  v134 = &v320;
  v135 = &v307;
  v136 = &v316;
  v138 = &v324;
  v137 = &v322;
  v140 = &v328;
  v139 = &v326;
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

    v272 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v268)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v280)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v281)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v279)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v278)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v276)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v277)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v275)
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

    v161 = &v305[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v273;
    v164 = v300 + 28 * v117;
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
                if ((v274 | 2) != 3 || (v169 = *(&v314 + v162), v170 = *v271, v169 != v170) && ((v274 | 2) != 3 || v160 + v170 != v169))
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

        if (v166 >> v147 || (*(&v314 + v162) ^ v148) == 0xFFFFFFFF)
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
    v119 = &v298;
    v120 = v296;
    v273 = &v292;
    v122 = &v290;
    v271 = v288;
    v123 = &v286;
    v124 = &v284;
    v125 = &v282;
    v114 = &v310 + 4;
    v127 = &v310;
    v133 = &v311 + 4;
    v135 = &v311;
    v130 = &v312 + 4;
    v132 = &v312;
    v129 = &v313 + 4;
    v131 = &v313;
    v136 = &v317;
    v128 = &v315;
    v134 = &v321;
    v113 = &v319;
    v138 = &v325;
    v137 = &v323;
    v140 = &v329;
    v139 = &v327;
    v121 = &v331;
    v117 = 1;
  }

  while ((v272 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if ((v265 | v266))
  {
    v173 = 0;
    v174 = 0;
    v175 = v299;
    v176 = v299 - 4;
    v177 = v298;
    v178 = v298 - 4;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v314 + 2 * v173) >> 4;
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

      if (v175 != 4 && v179 - v172 + (v174 << 6) + v176 <= 0xC0)
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
        v188 = *(&v314 + 2 * v173 + 1) >> 4;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 4 && v179 - v172 + (v174 << 6) + v178 <= 0xC0)
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
        return (v265 | v266) & 1;
      }
    }
  }

  v193 = ((v264 & 0xF) << v172) | *v171;
  *v171 = v193;
  v194 = v172 | 4;
  v195 = v331;
  if ((v172 | 4uLL) - v172 - 189 < 0xFFFFFFFFFFFFFF3FLL)
  {
    v196 = 0;
    v197 = v299;
    if (!v264)
    {
      goto LABEL_439;
    }

    goto LABEL_443;
  }

  *v171 = ((v331 & 0xF) << v194) | v193;
  v194 = (v172 + 8) & 0x38;
  v196 = (v172 + 8) >> 6;
  v197 = v299;
  if (v264)
  {
    goto LABEL_443;
  }

LABEL_439:
  if (v197 == 2 || v197 >= 0x10)
  {
LABEL_443:
    v219 = v287;
    if (v287 <= 0x100 && v287 && v194 - v172 + (v196 << 6) + v287 <= 0xC0)
    {
      v220 = 0;
      v221 = v283 >> (v197 - v287);
      v222 = v287;
      do
      {
        v223 = 64 - v194;
        if (64 - v194 >= v222)
        {
          v223 = v222;
        }

        v171[v196] |= ((v221 >> v220) & ~(-1 << v223)) << v194;
        v220 += v223;
        v224 = v223 + v194;
        v196 += v224 >> 6;
        v194 = v224 & 0x3F;
        v222 -= v223;
      }

      while (v222);
    }

    v217 = v219 + 8;
    v218 = v298;
    if (v195)
    {
      goto LABEL_451;
    }

LABEL_504:
    if (v218 == 2 || v218 >= 0x10)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v217 = 8;
    v218 = v298;
    if (!v195)
    {
      goto LABEL_504;
    }

LABEL_451:
    v225 = v286;
    if (v286 <= 0x100 && v286 && v194 - v172 + (v196 << 6) + v286 <= 0xC0)
    {
      v226 = 0;
      v227 = v282 >> (v218 - v286);
      v228 = v286;
      do
      {
        v229 = 64 - v194;
        if (64 - v194 >= v228)
        {
          v229 = v228;
        }

        v171[v196] |= ((v227 >> v226) & ~(-1 << v229)) << v194;
        v226 += v229;
        v230 = v229 + v194;
        v196 += v230 >> 6;
        v194 = v230 & 0x3F;
        v228 -= v229;
      }

      while (v228);
    }

    v217 += v225;
  }

  v231 = v285;
  if (v285)
  {
    if (v194 - v172 + (v196 << 6) + 3 <= 0xC0)
    {
      v232 = 0;
      v233 = v293;
      v234 = 3;
      do
      {
        v235 = 64 - v194;
        if (64 - v194 >= v234)
        {
          v235 = v234;
        }

        v171[v196] |= ((v233 >> v232) & ~(-1 << v235)) << v194;
        v232 += v235;
        v236 = v235 + v194;
        v196 += v236 >> 6;
        v194 = v236 & 0x3F;
        v234 -= v235;
      }

      while (v234);
    }

    v217 += 3;
  }

  v237 = v284;
  if (v284)
  {
    if (v194 - v172 + (v196 << 6) + 3 <= 0xC0)
    {
      v238 = 0;
      v239 = v292;
      v240 = 3;
      do
      {
        v241 = 64 - v194;
        if (64 - v194 >= v240)
        {
          v241 = v240;
        }

        v171[v196] |= ((v239 >> v238) & ~(-1 << v241)) << v194;
        v238 += v241;
        v242 = v241 + v194;
        v196 += v242 >> 6;
        v194 = v242 & 0x3F;
        v240 -= v241;
      }

      while (v240);
    }

    v217 += 3;
  }

  v243 = 192 - v217;
  v244 = (192 - v217) / 7u;
  v245 = v243 % 7;
  if ((v245 - 257) >= 0xFFFFFF00 && v194 - v172 + (v196 << 6) + v245 <= 0xC0)
  {
    do
    {
      v246 = 64 - v194;
      if (64 - v194 >= v245)
      {
        v246 = v245;
      }

      v247 = v246 + v194;
      v196 += v247 >> 6;
      v194 = v247 & 0x3F;
      v245 -= v246;
    }

    while (v245);
  }

  v248 = 0;
  v249 = v237 + v231;
  while (2)
  {
    if (v231 && v231 <= 0x100 && v194 - v172 + (v196 << 6) + v231 <= 0xC0)
    {
      v250 = 0;
      v251 = *(v300 + v248);
      v252 = v231;
      do
      {
        v253 = 64 - v194;
        if (64 - v194 >= v252)
        {
          v253 = v252;
        }

        v171[v196] |= ((v251 >> v250) & ~(-1 << v253)) << v194;
        v250 += v253;
        v254 = v253 + v194;
        v196 += v254 >> 6;
        v194 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    if (v237)
    {
      if (v237 <= 0x100 && v194 - v172 + (v196 << 6) + v237 <= 0xC0)
      {
        v255 = 0;
        v256 = *(&v300[1] + v248 + 3);
        v257 = v237;
        do
        {
          v258 = 64 - v194;
          if (64 - v194 >= v257)
          {
            v258 = v257;
          }

          v171[v196] |= ((v256 >> v255) & ~(-1 << v258)) << v194;
          v255 += v258;
          v259 = v258 + v194;
          v196 += v259 >> 6;
          v194 = v259 & 0x3F;
          v257 -= v258;
        }

        while (v257);
      }

      v260 = v244 - v249;
      if (v244 != v249)
      {
LABEL_497:
        if (v260 <= 0x100 && v194 - v172 + (v196 << 6) + v260 <= 0xC0)
        {
          do
          {
            v261 = 64 - v194;
            if (64 - v194 >= v260)
            {
              v261 = v260;
            }

            v262 = v261 + v194;
            v196 += v262 >> 6;
            v194 = v262 & 0x3F;
            v260 -= v261;
          }

          while (v260);
        }
      }
    }

    else
    {
      v260 = v244 - v231;
      if (v244 != v231)
      {
        goto LABEL_497;
      }
    }

    if (++v248 != 7)
    {
      continue;
    }

    return (v265 | v266) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  result = v6;
  do
  {
    if ((result - v6 + (v4 << 6) - 181) >= 0xFFFFFFFFFFFFFF3FLL)
    {
      v12 = 0;
      v13 = 0;
      v14 = 12;
      do
      {
        v15 = 64 - result;
        if (64 - result >= v14)
        {
          v15 = v14;
        }

        v12 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v15)) << v13;
        v13 += v15;
        v16 = v15 + result;
        v4 += v16 >> 6;
        result = v16 & 0x3F;
        v14 -= v15;
      }

      while (v14);
      v11 = 16 * (v12 & 0xFFF);
    }

    else
    {
      v11 = 0;
    }

    v17 = ((v11 << 27 >> 31) + 8) | v11;
    if (v11 == 65520)
    {
      v17 = 0xFFFF;
    }

    if (!v11)
    {
      v17 = 0;
    }

    if (v11 == 0x8000 && v7 == 1)
    {
      v17 = v11;
    }

    if (a3 != 4)
    {
      v11 = v17;
    }

    *(a2 + 8 * v3) = v11 ^ v8;
    if ((result - v6 + (v4 << 6) - 181) < 0xFFFFFFFFFFFFFF3FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v24 = v10 == 0x8000 && v7 == 1;
      if (!v24 && v10)
      {
        if (v10 == 65520)
        {
          v10 = 0xFFFF;
        }

        else
        {
          v10 |= (v10 << 27 >> 31) + 8;
        }
      }

      goto LABEL_3;
    }

    v19 = 0;
    v20 = 0;
    v21 = 12;
    do
    {
      v22 = 64 - result;
      if (64 - result >= v21)
      {
        v22 = v21;
      }

      v19 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v22)) << v20;
      v20 += v22;
      v23 = v22 + result;
      v4 += v23 >> 6;
      result = v23 & 0x3F;
      v21 -= v22;
    }

    while (v21);
    v10 = 16 * (v19 & 0xFFF);
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    *(a2 + 8 * v3++ + 4) = v10 ^ v8;
  }

  while (v3 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> v4) & 0xF;
  v8 = (v4 | 4) - v4 - 189;
  v9 = (v5 >> (v4 | 4u)) & 0xF;
  if (v8 >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v10 = (v4 + 8) & 0x38;
  }

  else
  {
    v10 = (8 * (a1 & 7)) | 4;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v11 = (v4 + 8) >> 6;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v163 = v7;
  v164 = v12;
  v13 = v6 & 0xF;
  v14 = dword_29D2F3870[10 * (v6 & 0xF) + 6];
  v15 = v14;
  v16 = v12 >= v7;
  v17 = v12 >= v7;
  v18 = !v16;
  v19 = dword_29D2F3870[10 * v12 + 6];
  v160 = v14;
  v161 = v19;
  v162[0] = v14;
  v162[1] = v19;
  if (*(&v163 + v17) != *(&v163 + v18))
  {
    v20 = v162[v18];
    if (v20 >= 1)
    {
      *(&v160 + v18) = 0;
      *(&v160 + v17) += v20;
      v15 = v160;
    }
  }

  v21 = &kDQuadParamTable[10 * v13];
  v22 = v21[484] + 4;
  v23 = v21[485];
  v24 = v23 + 4;
  v25 = v15 - v14;
  if (v25 < 0)
  {
    v26 = &kDQuadParamTable[10 * v13];
    if (v26[487] >= -v25)
    {
      goto LABEL_22;
    }

    v24 = v23 + 3;
    if (v26[488])
    {
      goto LABEL_22;
    }

    v25 = -1;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_22;
    }

    v24 += v25;
  }

  v22 += v25;
LABEL_22:
  if (v22 >= 0x10)
  {
    v27 = 16;
  }

  else
  {
    v27 = v22;
  }

  v28 = 16 * (v23 != 0);
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = &kDQuadParamTable[10 * v12];
  v31 = v30[484] + 4;
  v32 = v30[485];
  v33 = v32 + 4;
  v34 = v161 - v19;
  if (v34 < 0)
  {
    v35 = &kDQuadParamTable[10 * v12];
    if (v35[487] < -v34)
    {
      v33 = v32 + 3;
      if (!v35[488])
      {
        v34 = -1;
        goto LABEL_31;
      }
    }
  }

  else if (v34)
  {
    v33 += v34;
LABEL_31:
    v31 += v34;
  }

  v36 = 0;
  if (v31 >= 0x10)
  {
    v37 = 16;
  }

  else
  {
    v37 = v31;
  }

  LODWORD(v38) = 16 * (v32 != 0);
  if (v38 >= v33)
  {
    v38 = v33;
  }

  else
  {
    v38 = v38;
  }

  v39 = v10 - v4 + (v11 << 6);
  if (v22 && v39 + v27 <= 0xC0)
  {
    v36 = 0;
    v40 = 0;
    v41 = v27;
    do
    {
      v42 = 64 - v10;
      if (64 - v10 >= v41)
      {
        v42 = v41;
      }

      v36 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v42)) << v40;
      v40 += v42;
      v43 = v42 + v10;
      v11 += v43 >> 6;
      v10 = v43 & 0x3F;
      v41 -= v42;
    }

    while (v41);
    v39 = v10 - v4 + (v11 << 6);
  }

  v44 = 0;
  if (v31 && v39 + v37 <= 0xC0)
  {
    v44 = 0;
    v45 = 0;
    v46 = v37;
    do
    {
      v47 = 64 - v10;
      if (64 - v10 >= v46)
      {
        v47 = v46;
      }

      v44 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v47)) << v45;
      v45 += v47;
      v48 = v47 + v10;
      v11 += v48 >> 6;
      v10 = v48 & 0x3F;
      v46 -= v47;
    }

    while (v46);
  }

  v49 = v37 + v27 + 8;
  v156 = 0;
  v157 = 0;
  if (v29)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0xC0)
    {
      v50 = 0;
      v51 = 0;
      v52 = 3;
      do
      {
        v53 = 64 - v10;
        if (64 - v10 >= v52)
        {
          v53 = v52;
        }

        v50 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v53)) << v51;
        v51 += v53;
        v54 = v53 + v10;
        v11 += v54 >> 6;
        v10 = v54 & 0x3F;
        v52 -= v53;
      }

      while (v52);
    }

    else
    {
      v50 = 0;
    }

    v157 = v50;
    v49 += 3;
  }

  v55 = v36 << (16 - v27);
  v56 = v44 << (16 - v37);
  if (v38)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0xC0)
    {
      v57 = 0;
      v58 = 0;
      v59 = 3;
      do
      {
        v60 = 64 - v10;
        if (64 - v10 >= v59)
        {
          v60 = v59;
        }

        v57 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v60)) << v58;
        v58 += v60;
        v61 = v60 + v10;
        v11 += v61 >> 6;
        v10 = v61 & 0x3F;
        v59 -= v60;
      }

      while (v59);
    }

    else
    {
      v57 = 0;
    }

    v156 = v57;
    v49 += 3;
  }

  v62 = 0;
  v63 = a3 & 0xFFFFFFFD;
  v64 = 192 - v49;
  v65 = (((37 * (192 - v49)) >> 8) + (((-64 - v49 - ((37 * (192 - v49)) >> 8)) & 0xFE) >> 1)) >> 2;
  v66 = (v10 | (v11 << 6)) + -7 * v65 + v64;
  v159 = 0;
  memset(v158, 0, sizeof(v158));
  do
  {
    v68 = v66 >> 6;
    v69 = v66 & 0x3F;
    if (v29)
    {
      if (v69 - v4 + (v66 & 0xFFFFFFFFFFFFFFC0) + v29 <= 0xC0)
      {
        v70 = 0;
        v71 = 0;
        v72 = v29;
        do
        {
          v73 = 64 - v69;
          if (64 - v69 >= v72)
          {
            v73 = v72;
          }

          v70 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v73)) << v71;
          v71 += v73;
          v74 = v73 + v69;
          v68 += v74 >> 6;
          v69 = v74 & 0x3F;
          v72 -= v73;
        }

        while (v72);
      }

      else
      {
        v70 = 0;
      }

      *(v158 + v62) = v70;
    }

    if (v38)
    {
      if (v69 - v4 + (v68 << 6) + v38 <= 0xC0)
      {
        v75 = 0;
        v76 = 0;
        v77 = v38;
        do
        {
          v78 = 64 - v69;
          if (64 - v69 >= v77)
          {
            v78 = v77;
          }

          v75 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v78)) << v76;
          v76 += v78;
          v79 = v78 + v69;
          v68 += v79 >> 6;
          v69 = v79 & 0x3F;
          v77 -= v78;
        }

        while (v77);
      }

      else
      {
        v75 = 0;
      }

      *(&v158[1] + v62 + 3) = v75;
      v67 = v38 + v29;
    }

    else
    {
      v67 = v29;
    }

    v66 = (v69 | (v68 << 6)) + v65 - v67;
    ++v62;
  }

  while (v62 != 7);
  v80 = 0;
  v81 = &v163;
  v82 = &v157;
  v83 = 1;
  v84 = v158;
  do
  {
    v87 = v83;
    result = *&kDQuadParamTable[10 * *v81 + 482];
    if (result >> v29 <= 1)
    {
      v89 = 1;
    }

    else
    {
      v89 = result >> v29;
    }

    v90 = v89 >> 1;
    v91 = (1 << (16 - v27)) >> 1;
    if (v89 >> 1 >= v91)
    {
      v92 = v91;
    }

    else
    {
      v92 = v89 >> 1;
    }

    v93 = v55;
    v94 = 0x8000 - v55;
    if (v55)
    {
      v95 = v92;
    }

    else
    {
      v95 = 0;
    }

    v96 = v55 == 0x8000;
    v97 = (a2 + 4 * v80);
    if (v29)
    {
      v98 = result + v55;
      v99 = -1 << v29;
      v100 = *v82;
      v101 = v94 / v89;
      if (*v82)
      {
        v102 = *v84;
        v103 = v101 == v102;
        if (v93 | v102)
        {
          v107 = v98 >= 0x10000 && (v99 ^ v102) == -1;
          if (v107)
          {
            v106 = 1;
            v104 = 0xFFFFLL;
            goto LABEL_129;
          }

          v104 = v90 + v89 * v102;
        }

        else
        {
          v104 = 0;
        }

        v106 = 1;
      }

      else
      {
        v106 = 0;
        v104 = v95;
        v103 = v96;
      }

LABEL_129:
      v109 = v104 + v93;
      if (a3 != 4)
      {
        goto LABEL_134;
      }

      v110 = v109 & 0xFFFFFFFFFFFFFE00;
      if ((v109 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
      {
        LODWORD(v109) = 31743;
        goto LABEL_138;
      }

      if (v110 == 32256)
      {
        LODWORD(v109) = 0x8000;
        goto LABEL_138;
      }

      if (v110 == 64512)
      {
        LODWORD(v109) = 64511;
      }

      else
      {
LABEL_134:
        v111 = 0xFFFF;
        if (v109 >= 0x10000)
        {
LABEL_139:
          v112 = v111 ^ 0x8000;
          if (v103)
          {
            v112 = 0;
          }

          if (v63 == 1)
          {
            v111 = v112;
          }

          *(a2 + 4 * v80) = v111;
          if (v100 == 1)
          {
            v113 = v95;
            v114 = v96;
          }

          else
          {
            v115 = *(v158 + 7 * v80 + v106);
            v114 = v101 == v115;
            if (v93 | v115)
            {
              if (v98 >= 0x10000 && (v99 ^ v115) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v113 = 0xFFFFLL;
              }

              else
              {
                v113 = v90 + v89 * v115;
              }
            }

            else
            {
              v113 = 0;
            }

            ++v106;
          }

          v116 = v113 + v93;
          if (a3 == 4)
          {
            v117 = v116 & 0xFFFFFFFFFFFFFE00;
            if ((v116 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
            {
              LODWORD(v116) = 31743;
              goto LABEL_161;
            }

            if (v117 == 32256)
            {
              LODWORD(v116) = 0x8000;
              goto LABEL_161;
            }

            if (v117 == 64512)
            {
              LODWORD(v116) = 64511;
LABEL_161:
              v118 = v116;
LABEL_162:
              v119 = v118 ^ 0x8000;
              if (v114)
              {
                v119 = 0;
              }

              if (v63 != 1)
              {
                v119 = v118;
              }

              v97[2] = v119;
              if (v100 == 2)
              {
                v120 = v95;
                v121 = v96;
              }

              else
              {
                v122 = *(v158 + 7 * v80 + v106);
                v121 = v101 == v122;
                if (v93 | v122)
                {
                  if (v98 >= 0x10000 && (v99 ^ v122) == 0xFFFFFFFFFFFFFFFFLL)
                  {
                    v120 = 0xFFFFLL;
                  }

                  else
                  {
                    v120 = v90 + v89 * v122;
                  }
                }

                else
                {
                  v120 = 0;
                }

                ++v106;
              }

              v123 = v120 + v93;
              if (a3 != 4)
              {
                goto LABEL_180;
              }

              v124 = v123 & 0xFFFFFFFFFFFFFE00;
              if ((v123 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
              {
                LODWORD(v123) = 31743;
                goto LABEL_184;
              }

              if (v124 == 32256)
              {
                LODWORD(v123) = 0x8000;
                goto LABEL_184;
              }

              if (v124 == 64512)
              {
                LODWORD(v123) = 64511;
              }

              else
              {
LABEL_180:
                v125 = 0xFFFF;
                if (v123 >= 0x10000)
                {
LABEL_185:
                  v126 = v125 ^ 0x8000;
                  if (v121)
                  {
                    v126 = 0;
                  }

                  if (v63 != 1)
                  {
                    v126 = v125;
                  }

                  v97[4] = v126;
                  if (v100 == 3)
                  {
                    v127 = v95;
                    v128 = v96;
                  }

                  else
                  {
                    v129 = *(v158 + 7 * v80 + v106);
                    v128 = v101 == v129;
                    if (v93 | v129)
                    {
                      if (v98 >= 0x10000 && (v99 ^ v129) == 0xFFFFFFFFFFFFFFFFLL)
                      {
                        v127 = 0xFFFFLL;
                      }

                      else
                      {
                        v127 = v90 + v89 * v129;
                      }
                    }

                    else
                    {
                      v127 = 0;
                    }

                    ++v106;
                  }

                  v130 = v127 + v93;
                  if (a3 == 4)
                  {
                    v131 = v130 & 0xFFFFFFFFFFFFFE00;
                    if ((v130 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                    {
                      LODWORD(v130) = 31743;
                      goto LABEL_207;
                    }

                    if (v131 == 32256)
                    {
                      LODWORD(v130) = 0x8000;
                      goto LABEL_207;
                    }

                    if (v131 == 64512)
                    {
                      LODWORD(v130) = 64511;
LABEL_207:
                      v132 = v130;
LABEL_208:
                      v133 = v132 ^ 0x8000;
                      if (v128)
                      {
                        v133 = 0;
                      }

                      if (v63 != 1)
                      {
                        v133 = v132;
                      }

                      v97[6] = v133;
                      if (v100 == 4)
                      {
                        v134 = v95;
                        v135 = v96;
                      }

                      else
                      {
                        v136 = *(v158 + 7 * v80 + v106);
                        v135 = v101 == v136;
                        if (v93 | v136)
                        {
                          if (v98 >= 0x10000 && (v99 ^ v136) == 0xFFFFFFFFFFFFFFFFLL)
                          {
                            v134 = 0xFFFFLL;
                          }

                          else
                          {
                            v134 = v90 + v89 * v136;
                          }
                        }

                        else
                        {
                          v134 = 0;
                        }

                        ++v106;
                      }

                      v137 = v134 + v93;
                      if (a3 != 4)
                      {
                        goto LABEL_226;
                      }

                      v138 = v137 & 0xFFFFFFFFFFFFFE00;
                      if ((v137 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                      {
                        LODWORD(v137) = 31743;
                        goto LABEL_230;
                      }

                      if (v138 == 32256)
                      {
                        LODWORD(v137) = 0x8000;
                        goto LABEL_230;
                      }

                      if (v138 == 64512)
                      {
                        LODWORD(v137) = 64511;
                      }

                      else
                      {
LABEL_226:
                        v139 = 0xFFFF;
                        if (v137 >= 0x10000)
                        {
LABEL_231:
                          v140 = v139 ^ 0x8000;
                          if (v135)
                          {
                            v140 = 0;
                          }

                          if (v63 != 1)
                          {
                            v140 = v139;
                          }

                          v97[8] = v140;
                          if (v100 == 5)
                          {
                            v141 = v95;
                            v142 = v96;
                          }

                          else
                          {
                            v143 = *(v158 + 7 * v80 + v106);
                            v142 = v101 == v143;
                            if (v93 | v143)
                            {
                              if (v98 >= 0x10000 && (v99 ^ v143) == 0xFFFFFFFFFFFFFFFFLL)
                              {
                                v141 = 0xFFFFLL;
                              }

                              else
                              {
                                v141 = v90 + v89 * v143;
                              }
                            }

                            else
                            {
                              v141 = 0;
                            }

                            ++v106;
                          }

                          v144 = v141 + v93;
                          if (a3 == 4)
                          {
                            v145 = v144 & 0xFFFFFFFFFFFFFE00;
                            if ((v144 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                            {
                              LODWORD(v144) = 31743;
                              goto LABEL_253;
                            }

                            if (v145 == 32256)
                            {
                              LODWORD(v144) = 0x8000;
                              goto LABEL_253;
                            }

                            if (v145 == 64512)
                            {
                              LODWORD(v144) = 64511;
LABEL_253:
                              v146 = v144;
LABEL_254:
                              v147 = v146 ^ 0x8000;
                              if (v142)
                              {
                                v147 = 0;
                              }

                              if (v63 != 1)
                              {
                                v147 = v146;
                              }

                              v97[10] = v147;
                              if (v100 == 6)
                              {
                                v148 = v95;
                                v149 = v96;
                              }

                              else
                              {
                                v150 = *(v158 + 7 * v80 + v106);
                                v149 = v101 == v150;
                                if (v93 | v150)
                                {
                                  if (v98 >= 0x10000 && (v99 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
                                  {
                                    v148 = 0xFFFFLL;
                                  }

                                  else
                                  {
                                    v148 = v90 + v89 * v150;
                                  }
                                }

                                else
                                {
                                  v148 = 0;
                                }

                                ++v106;
                              }

                              v151 = v148 + v93;
                              if (a3 != 4)
                              {
                                goto LABEL_272;
                              }

                              v152 = v151 & 0xFFFFFFFFFFFFFE00;
                              if ((v151 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                              {
                                v151 = 31743;
                                goto LABEL_276;
                              }

                              if (v152 == 32256)
                              {
                                v151 = 0x8000;
                                goto LABEL_276;
                              }

                              if (v152 == 64512)
                              {
                                v151 = 64511;
                              }

                              else
                              {
LABEL_272:
                                v153 = 0x10000FFFFLL;
                                if (v151 >= 0x10000)
                                {
LABEL_277:
                                  result = v153 ^ 0x8000;
                                  if (v149)
                                  {
                                    result = 0;
                                  }

                                  if (v63 != 1)
                                  {
                                    result = v153;
                                  }

                                  v97[12] = result;
                                  if (v100 != 7)
                                  {
                                    v154 = *(v158 + 7 * v80 + v106);
                                    v96 = v101 == v154;
                                    if (v93 | v154)
                                    {
                                      if (v98 >= 0x10000 && (v99 ^ v154) == 0xFFFFFFFFFFFFFFFFLL)
                                      {
                                        v95 = 0xFFFFLL;
                                      }

                                      else
                                      {
                                        v95 = v90 + v89 * v154;
                                      }
                                    }

                                    else
                                    {
                                      v95 = 0;
                                    }
                                  }

                                  v85 = v95 + v93;
                                  if (a3 == 4)
                                  {
                                    v155 = v85 & 0xFFFFFFFFFFFFFE00;
                                    if ((v85 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                                    {
                                      LODWORD(v85) = 31743;
                                      goto LABEL_90;
                                    }

                                    if (v155 == 32256)
                                    {
                                      LODWORD(v85) = 0x8000;
LABEL_90:
                                      v86 = v85;
LABEL_91:
                                      LODWORD(v27) = v86 ^ 0x8000;
                                      if (v96)
                                      {
                                        LODWORD(v27) = 0;
                                      }

                                      if (v63 != 1)
                                      {
                                        LODWORD(v27) = v86;
                                      }

                                      goto LABEL_95;
                                    }

                                    if (v155 == 64512)
                                    {
                                      LODWORD(v85) = 64511;
                                      goto LABEL_90;
                                    }
                                  }

                                  v86 = 0xFFFF;
                                  if (v85 >= 0x10000)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_90;
                                }
                              }

LABEL_276:
                              v153 = v151;
                              goto LABEL_277;
                            }
                          }

                          v146 = 0xFFFF;
                          if (v144 >= 0x10000)
                          {
                            goto LABEL_254;
                          }

                          goto LABEL_253;
                        }
                      }

LABEL_230:
                      v139 = v137;
                      goto LABEL_231;
                    }
                  }

                  v132 = 0xFFFF;
                  if (v130 >= 0x10000)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_207;
                }
              }

LABEL_184:
              v125 = v123;
              goto LABEL_185;
            }
          }

          v118 = 0xFFFF;
          if (v116 >= 0x10000)
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }
      }

LABEL_138:
      v111 = v109;
      goto LABEL_139;
    }

    if (a3 == 4)
    {
      v105 = v55 & 0xFFFFFE00;
      if ((v55 & 0xFFFFFE00) == 0x7E00)
      {
        LODWORD(v27) = 0x8000;
      }

      else if (v105 == 31744)
      {
        LODWORD(v27) = 31743;
      }

      else
      {
        v107 = v105 == 64512;
        v27 = 64511;
        if (!v107)
        {
          v27 = v55;
        }

        if (v27 >= 0x10000)
        {
          LODWORD(v27) = 0xFFFF;
        }
      }
    }

    else
    {
      if (v55 >= 0xFFFF)
      {
        v108 = 0xFFFF;
      }

      else
      {
        v108 = v55;
      }

      if (v89 <= v94)
      {
        LODWORD(v27) = v108 ^ 0x8000;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      if (v63 != 1)
      {
        LODWORD(v27) = v108;
      }
    }

    *v97 = v27;
    v97[2] = v27;
    v97[4] = v27;
    v97[6] = v27;
    v97[8] = v27;
    v97[10] = v27;
    v97[12] = v27;
LABEL_95:
    v83 = 0;
    v97[14] = v27;
    v82 = &v156;
    v84 = &v158[1] + 3;
    v55 = v56;
    LODWORD(v29) = v38;
    LOBYTE(v27) = v37;
    v81 = &v164;
    v80 = 1;
  }

  while ((v87 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v402 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v10 = (a1 + a2);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (a1 + 2 * a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
LABEL_6:
    *v12 = v9;
    v12[1] = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, v386, a5);
    }

    v367 = v387;
    v368 = v386[0];
    v365 = v389;
    v366 = v388;
    v376 = v392;
    v377 = v391;
    v375 = v393;
    v373 = v394;
    v370 = v396;
    v371 = v395;
    v369 = v397;
    v381 = v399;
    v382 = v398;
    v379 = v390;
    v380 = v400;
    v378 = v401;
    v17 = a3 + 24;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v17, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v17, v386, a5);
    }

    v374 = v386[0];
    v372 = v387;
    v363 = v389;
    v364 = v388;
    v361 = v391;
    v362 = v390;
    v359 = v393;
    v360 = v392;
    v357 = v395;
    v358 = v394;
    v355 = v397;
    v356 = v396;
    v353 = v399;
    v354 = v398;
    v351 = v401;
    v352 = v400;
    v383 = v5;
    v18 = a3 + 48;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v18, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v18, v386, a5);
    }

    v349 = v387;
    v350 = v386[0];
    v347 = v389;
    v348 = v388;
    v345 = v391;
    v346 = v390;
    v343 = v393;
    v344 = v392;
    v19 = v394;
    v20 = v395;
    v21 = v396;
    v22 = v397;
    v23 = v398;
    v24 = v399;
    v25 = v400;
    v26 = v401;
    if ((v383 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3 + 72, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3 + 72, v386, a5);
    }

    v27 = v25 | (v26 << 16);
    v28 = v23 | (v24 << 16);
    *(a1 + 16) = v350 | (v349 << 16);
    *(a1 + 20) = v348 | (v347 << 16);
    *(a1 + 24) = v19 | (v20 << 16);
    *(a1 + 28) = v21 | (v22 << 16);
    v29 = v386[0];
    v30 = v387;
    *a1 = v368 | (v367 << 16);
    *(a1 + 4) = v366 | (v365 << 16);
    v31 = v388;
    v32 = v389;
    v33 = v390;
    v34 = v391;
    *(a1 + 8) = v373 | (v371 << 16);
    *(a1 + 12) = v370 | (v369 << 16);
    v35 = v392;
    v36 = v393;
    v37 = v394;
    v38 = v395;
    v39 = (a1 + a2);
    *v39 = v379 | (v377 << 16);
    v39[1] = v376 | (v375 << 16);
    v40 = v396;
    v41 = v397;
    v42 = v398;
    v43 = v399;
    v39[2] = v382 | (v381 << 16);
    v39[3] = v380 | (v378 << 16);
    v44 = v400;
    v45 = v401;
    v39[4] = v346 | (v345 << 16);
    v39[5] = v344 | (v343 << 16);
    v39[6] = v28;
    v39[7] = v27;
    v46 = (a1 + a2 + a2);
    *v46 = v374 | (v372 << 16);
    v46[1] = v364 | (v363 << 16);
    v46[2] = v358 | (v357 << 16);
    v46[3] = v356 | (v355 << 16);
    v46[4] = v29 | (v30 << 16);
    v46[5] = v31 | (v32 << 16);
    v46[6] = v37 | (v38 << 16);
    v46[7] = v40 | (v41 << 16);
    v47 = (v46 + a2);
    *v47 = v362 | (v361 << 16);
    v47[1] = v360 | (v359 << 16);
    v47[2] = v354 | (v353 << 16);
    v47[3] = v352 | (v351 << 16);
    v47[4] = v33 | (v34 << 16);
    v47[5] = v35 | (v36 << 16);
    v47[6] = v42 | (v43 << 16);
    v47[7] = v44 | (v45 << 16);
    return 96;
  }

  if (a4 == 127)
  {
    v48 = *a3;
    v49 = *(a3 + 16);
    v50 = *(a3 + 32);
    v51 = *(a3 + 48);
    v52 = *(a3 + 64);
    v53 = *(a3 + 80);
    v54 = *(a3 + 96);
    v55 = *(a3 + 112);
    v56 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v49);
    *(a1 + 16) = vzip1q_s64(v52, v53);
    v57 = (a1 + 2 * a2);
    *v56 = vzip2q_s64(v48, v49);
    v56[1] = vzip2q_s64(v52, v53);
    *v57 = vzip1q_s64(v50, v51);
    v57[1] = vzip1q_s64(v54, v55);
    v58 = (v57 + a2);
    *v58 = vzip2q_s64(v50, v51);
    v58[1] = vzip2q_s64(v54, v55);
    return 128;
  }

  if (a4 == 3)
  {
    v13 = vld1q_dup_f32(a3);
    *a1 = v13;
    *(a1 + 16) = v13;
    v14 = (a1 + a2);
    *v14 = v13;
    v14[1] = v13;
    v15 = (a1 + 2 * a2);
    *v15 = v13;
    v15[1] = v13;
    v16 = (a1 + a2 + 2 * a2);
    *v16 = v13;
    v16[1] = v13;
    return 4;
  }

  v60 = 8 * (a3 & 7);
  v61 = a3 & 0xFFFFFFFFFFFFFFF8;
  v62 = v60 + 18;
  v63 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v60;
  if (v60 >= 0x2F)
  {
    v63 |= *(v61 + 8) << (-8 * (a3 & 7u));
  }

  v64.i32[0] = v63;
  v64.i32[1] = v63 >> 5;
  v65 = vand_s8(v64, 0x1F0000001FLL);
  v66 = vuzp1_s16(v65, v65);
  v67.i32[0] = v63 >> 10;
  v67.i32[1] = v63 >> 14;
  v68 = vuzp1_s16(vadd_s32(vand_s8(v67, 0xF0000000FLL), 0x100000001), v66);
  v69 = v60 + 50;
  v70 = v62 & 0x3A;
  v71 = (v61 + ((v62 >> 3) & 8));
  v72 = *v71 >> (v62 & 0x3A);
  if (v70 >= 0x21)
  {
    v72 |= v71[1] << -v70;
  }

  v73 = vdupq_lane_s32(v66, 0);
  v74 = vdupq_lane_s32(v68, 0);
  v75 = (8 * (a3 & 7)) | 0x300;
  v76.i64[0] = 0x3000300030003;
  v76.i64[1] = 0x3000300030003;
  v77 = vandq_s8(v73, v76);
  v78 = vbicq_s8(v74, vceqq_s16(v77, v76));
  v76.i64[0] = 0x202020202020202;
  v76.i64[1] = 0x202020202020202;
  v79 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v73.i8, 0x4000400040004)))), v76);
  if (vmaxvq_s8(v79) < 1)
  {
    v88 = 0;
    v109.i64[0] = -1;
    v109.i64[1] = -1;
    v105 = v78;
    v104 = v78;
    v103 = v78;
    v108.i64[0] = -1;
    v108.i64[1] = -1;
    v102 = v78;
    v107.i64[0] = -1;
    v107.i64[1] = -1;
    v106.i64[0] = -1;
    v106.i64[1] = -1;
  }

  else
  {
    v80 = vmovl_u8(*&vpaddq_s8(v79, v79));
    v81 = vmovl_u16(*&vpaddq_s16(v80, v80));
    v82 = vpaddq_s32(v81, v81).u64[0];
    v83.i64[0] = v82;
    v83.i64[1] = HIDWORD(v82);
    v84 = v83;
    v85 = vaddvq_s64(v83);
    v86 = v69 + v85;
    v87 = v85 <= 0x80 && v75 >= v86;
    v88 = !v87;
    v89 = 0uLL;
    if (v87)
    {
      v90 = v69 & 0x3A;
      v91 = vaddq_s64(vdupq_n_s64(v90), vzip1q_s64(0, v84));
      v92 = (v61 + ((v69 >> 3) & 8));
      v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
      if (v90 + v85 >= 0x81)
      {
        v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
      }

      v69 = v86;
    }

    v93 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v94.i64[0] = v93.u32[0];
    v94.i64[1] = v93.u32[1];
    v95 = vshlq_u64(v89, vnegq_s64(v94));
    v96 = vuzp1q_s32(vzip1q_s64(v89, v95), vzip2q_s64(v89, v95));
    v97 = vshlq_u32(v96, vnegq_s32((*&v80 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v98 = vuzp1q_s16(vzip1q_s32(v96, v97), vzip2q_s32(v96, v97));
    v96.i64[0] = 0x101010101010101;
    v96.i64[1] = 0x101010101010101;
    *v99.i8 = vand_s8(vadd_s8(*&vshlq_s8(v96, v79), -1), vmovn_s16(vzip1q_s16(v98, vshlq_u16(v98, vnegq_s16(vmovl_u8(vuzp1_s8(*v79.i8, *v73.i8)))))));
    v99.i64[1] = v99.i64[0];
    *v99.i8 = vqtbl1_s8(v99, 0x703060205010400);
    *v98.i8 = vdup_lane_s16(*v99.i8, 0);
    *v96.i8 = vdup_lane_s16(*v99.i8, 1);
    v100 = vdup_lane_s16(*v99.i8, 2);
    v101 = vdup_lane_s16(*v99.i8, 3);
    v102 = vsubw_s8(v78, *v98.i8);
    v103 = vsubw_s8(v78, *v96.i8);
    v104 = vsubw_s8(v78, v100);
    v105 = vsubw_s8(v78, v101);
    v106 = vmovl_s8(vceqz_s8(*v98.i8));
    v107 = vmovl_s8(vceqz_s8(*v96.i8));
    v108 = vmovl_s8(vceqz_s8(v100));
    v109 = vmovl_s8(vceqz_s8(v101));
  }

  v110.i64[0] = 0x8000800080008;
  v110.i64[1] = 0x8000800080008;
  v111 = 0uLL;
  v112 = vandq_s8(vextq_s8(vtstq_s16(v73, v110), 0, 0xCuLL), v78);
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  v118 = v69 + v117;
  if (v117 <= 0x80 && v75 >= v118)
  {
    v120 = v69 & 0x3F;
    v121 = vaddq_s64(vdupq_n_s64(v120), vzip1q_s64(0, v116));
    v122 = (v61 + 8 * (v69 >> 6));
    v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v121)));
    if (v120 + v117 >= 0x81)
    {
      v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v111);
    }

    v69 = v118;
  }

  else
  {
    v88 = 1;
  }

  v123 = v73.i8[0] & 3;
  if (v123 == 2)
  {
    v124 = v75 < v69 + 8;
    v125 = v69 + 16;
    if (v75 >= v69 + 8)
    {
      v69 += 8;
    }

    else
    {
      v125 = v69 + 8;
    }

    if (v75 < v125)
    {
      v126 = 1;
    }

    else
    {
      v69 = v125;
      v126 = v124;
    }

    v88 |= v126;
  }

  v127 = 0uLL;
  v128 = vextq_s8(0, v102, 0xCuLL);
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v69 + v133;
  if (v133 <= 0x80 && v75 >= v134)
  {
    v137 = v69 & 0x3F;
    v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v132));
    v139 = (v61 + 8 * (v69 >> 6));
    v136 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
    if (v137 + v133 >= 0x81)
    {
      v136 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v136);
    }

    v69 = v134;
  }

  else
  {
    v88 = 1;
    v136 = 0uLL;
  }

  v140 = vmovl_u16(*&vpaddq_s16(v102, v102));
  v141 = vpaddq_s32(v140, v140).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  v145 = v69 + v144;
  if (v144 <= 0x80 && v75 >= v145)
  {
    v147 = v69 & 0x3F;
    v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v143));
    v149 = (v61 + 8 * (v69 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if (v147 + v144 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v127);
    }

    v69 = v145;
  }

  else
  {
    v88 = 1;
  }

  v150 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v151 = vpaddq_s32(v150, v150).u64[0];
  v152.i64[0] = v151;
  v152.i64[1] = HIDWORD(v151);
  v153 = v152;
  v154 = vaddvq_s64(v152);
  v155 = v69 + v154;
  v156 = 0uLL;
  if (v154 <= 0x80 && v75 >= v155)
  {
    v159 = v69 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v153));
    v161 = (v61 + 8 * (v69 >> 6));
    v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v154 >= 0x81)
    {
      v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v158);
    }

    v69 = v155;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v88 = 1;
    v158 = 0uLL;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  v162 = v69 + v154;
  if (v75 < v69 + v154)
  {
LABEL_85:
    v88 = 1;
    v162 = v69;
    goto LABEL_86;
  }

  v163 = v69 & 0x3F;
  v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v153));
  v165 = (v61 + 8 * (v69 >> 6));
  v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
  if (v163 + v154 >= 0x81)
  {
    v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v156);
  }

LABEL_86:
  v166 = vmovl_u16(*&vpaddq_s16(v104, v104));
  v167 = vpaddq_s32(v166, v166).u64[0];
  v168.i64[0] = v167;
  v168.i64[1] = HIDWORD(v167);
  v169 = v168;
  v170 = vaddvq_s64(v168);
  v171 = 0uLL;
  if (v170 > 0x80 || (v172 = v162 + v170, v75 < v162 + v170))
  {
    v88 = 1;
    v172 = v162;
    v175 = 0uLL;
  }

  else
  {
    v173 = vaddq_s64(vdupq_n_s64(v162 & 0x3F), vzip1q_s64(0, v169));
    v174 = (v61 + 8 * (v162 >> 6));
    v175 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v174, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v173)), vshlq_u64(vdupq_lane_s64(v174->i64[0], 0), vnegq_s64(v173)));
    if ((v162 & 0x3F) + v170 >= 0x81)
    {
      v175 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v174[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v173)), vshlq_u64(vdupq_laneq_s64(v174[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v173))), v175);
    }
  }

  if (v170 > 0x80 || (v176 = v172 + v170, v75 < v172 + v170))
  {
    v88 = 1;
    v176 = v172;
  }

  else
  {
    v177 = vaddq_s64(vdupq_n_s64(v172 & 0x3F), vzip1q_s64(0, v169));
    v178 = (v61 + 8 * (v172 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v178, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v177)), vshlq_u64(vdupq_lane_s64(v178->i64[0], 0), vnegq_s64(v177)));
    if ((v172 & 0x3F) + v170 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v178[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v177)), vshlq_u64(vdupq_laneq_s64(v178[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v177))), v171);
    }
  }

  v179 = vmovl_u16(*&vpaddq_s16(v105, v105));
  v180 = vpaddq_s32(v179, v179).u64[0];
  v181.i64[0] = v180;
  v181.i64[1] = HIDWORD(v180);
  v182 = v181;
  v183 = vaddvq_s64(v181);
  if (v183 > 0x80 || (v184 = v176 + v183, v75 < v176 + v183))
  {
    v88 = 1;
    v184 = v176;
    v188 = 0uLL;
  }

  else
  {
    v185 = v176 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v182));
    v187 = (v61 + 8 * (v176 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v183 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  if (v183 > 0x80 || v75 < v184 + v183)
  {
    goto LABEL_109;
  }

  v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v182));
  v190 = (v61 + 8 * (v184 >> 6));
  v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
  if ((v184 & 0x3F) + v183 >= 0x81)
  {
    v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
  }

  if ((v88 & 1) != 0 || (v8 = a4 + 1, v75 + 8 * v8 - (v184 + v183) - 768 >= 9))
  {
LABEL_109:
    v192 = 0;
    v193 = 0;
    v194 = 8 * (v386 & 7);
    v195 = 16;
    do
    {
      v196 = 64 - v194;
      if (64 - v194 >= v195)
      {
        v196 = v195;
      }

      *&v386[4 * v192] |= ((0xFFFFFFFFFFFFFFFFLL >> v193) & ~(-1 << v196)) << v194;
      v193 += v196;
      v197 = v196 + v194;
      v192 += v197 >> 6;
      v194 = v197 & 0x3F;
      v195 -= v196;
    }

    while (v195);
LABEL_113:
    v8 = 0;
    v198 = (a1 + a2);
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v199 = (a1 + 2 * a2);
    *v198 = 0u;
    v198[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
    *v199 = 0u;
    v199[1] = 0u;
    goto LABEL_6;
  }

  if (v123 == 2)
  {
    v200 = 0;
    v201 = 0;
    v202 = 8 * (v386 & 7);
    v203 = 16;
    do
    {
      v204 = 64 - v202;
      if (64 - v202 >= v203)
      {
        v204 = v203;
      }

      *&v386[4 * v200] |= ((0xFFFFFFFFFFFFFFFFLL >> v201) & ~(-1 << v204)) << v202;
      v201 += v204;
      v205 = v204 + v202;
      v200 += v205 >> 6;
      v202 = v205 & 0x3F;
      v203 -= v204;
    }

    while (v203);
    goto LABEL_113;
  }

  v206 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
  v207 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
  v208 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
  v209 = vzip1_s32(*v179.i8, *&vextq_s8(v179, v179, 8uLL));
  v210.i64[0] = v206.u32[0];
  v210.i64[1] = v206.u32[1];
  v211 = v210;
  v210.i64[0] = v207.u32[0];
  v210.i64[1] = v207.u32[1];
  v212 = v210;
  v210.i64[0] = v208.u32[0];
  v210.i64[1] = v208.u32[1];
  v213 = v210;
  v210.i64[0] = v209.u32[0];
  v210.i64[1] = v209.u32[1];
  v214 = vnegq_s64(v211);
  v215 = vnegq_s64(v212);
  v216 = vnegq_s64(v213);
  v217 = vnegq_s64(v210);
  v218 = vshlq_u64(v111, v214);
  v219 = vshlq_u64(v158, v215);
  v220 = vshlq_u64(v156, v215);
  v221 = vshlq_u64(v175, v216);
  v222 = vshlq_u64(v171, v216);
  v223 = vshlq_u64(v188, v217);
  v224 = vzip2q_s64(v111, v218);
  v225 = vzip1q_s64(v111, v218);
  v226 = vzip2q_s64(v158, v219);
  v227 = vzip1q_s64(v158, v219);
  v228 = vzip2q_s64(v156, v220);
  v229 = vzip1q_s64(v156, v220);
  v230 = vzip2q_s64(v175, v221);
  v231 = vzip1q_s64(v175, v221);
  v232 = vzip2q_s64(v171, v222);
  v233 = vzip1q_s64(v171, v222);
  v234 = vzip2q_s64(v188, v223);
  v235 = vzip1q_s64(v188, v223);
  v236 = vuzp1q_s32(v225, v224);
  v237 = vuzp1q_s32(v227, v226);
  v238 = vuzp1q_s32(v229, v228);
  v225.i64[0] = 0xFFFF0000FFFFLL;
  v225.i64[1] = 0xFFFF0000FFFFLL;
  v239 = vuzp1q_s32(v231, v230);
  v227.i64[0] = 0xFFFF0000FFFFLL;
  v227.i64[1] = 0xFFFF0000FFFFLL;
  v240 = vnegq_s32(vandq_s8(v112, v225));
  v241 = vnegq_s32(vandq_s8(v103, v227));
  v242 = vuzp1q_s32(v233, v232);
  v243 = vuzp1q_s32(v235, v234);
  v244 = vshlq_u32(v236, v240);
  v245 = vshlq_u32(v237, v241);
  v246 = vshlq_u32(v238, v241);
  v241.i64[0] = 0x10001000100010;
  v241.i64[1] = 0x10001000100010;
  v235.i64[0] = 0xF000F000F000FLL;
  v235.i64[1] = 0xF000F000F000FLL;
  v247 = vsubq_s16(v241, v112);
  v248 = vaddq_s16(v112, v235);
  v235.i64[0] = 0x10001000100010;
  v235.i64[1] = 0x10001000100010;
  v249 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v236, v244), vzip2q_s32(v236, v244)), v247);
  v247.i64[0] = 0xF000F000F000FLL;
  v247.i64[1] = 0xF000F000F000FLL;
  v250 = vsubq_s16(v235, v103);
  v251 = vaddq_s16(v103, v247);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v252 = vnegq_s32(vandq_s8(v104, v247));
  v253 = vshlq_s16(v249, v248);
  v254 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v237, v245), vzip2q_s32(v237, v245)), v250), v251);
  v255 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v238, v246), vzip2q_s32(v238, v246)), v250), v251);
  v256 = vdupq_lane_s32(*v253.i8, 0);
  v257 = vandq_s8(v107, v256);
  v258 = vsubq_s16(v254, v257);
  v259 = vsubq_s16(v255, v257);
  v260 = vshlq_u32(v239, v252);
  v261 = vshlq_u32(v242, v252);
  v262 = vzip2q_s32(v239, v260);
  v263 = vzip1q_s32(v239, v260);
  v264 = vzip2q_s32(v242, v261);
  v265 = vzip1q_s32(v242, v261);
  v261.i64[0] = 0x10001000100010;
  v261.i64[1] = 0x10001000100010;
  v266 = vuzp1q_s16(v265, v264);
  v264.i64[0] = 0xF000F000F000FLL;
  v264.i64[1] = 0xF000F000F000FLL;
  v267 = vsubq_s16(v261, v104);
  v268 = vaddq_s16(v104, v264);
  v264.i64[0] = 0xFFFF0000FFFFLL;
  v264.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vnegq_s32(vandq_s8(v105, v264));
  v270 = vshlq_s16(vshlq_s16(vuzp1q_s16(v263, v262), v267), v268);
  v271 = vshlq_s16(vshlq_s16(v266, v267), v268);
  v272 = vandq_s8(v108, v256);
  v273 = vsubq_s16(v270, v272);
  v274 = vsubq_s16(v271, v272);
  v275 = vshlq_u32(v243, v269);
  v276 = vzip2q_s32(v243, v275);
  v277 = vzip1q_s32(v243, v275);
  v275.i64[0] = 0x10001000100010;
  v275.i64[1] = 0x10001000100010;
  v278 = vuzp1q_s16(v277, v276);
  v276.i64[0] = 0xF000F000F000FLL;
  v276.i64[1] = 0xF000F000F000FLL;
  v279 = vsubq_s16(v275, v105);
  v280 = vaddq_s16(v105, v276);
  v281 = vshlq_u64(v191, v217);
  v282 = vuzp1q_s32(vzip1q_s64(v191, v281), vzip2q_s64(v191, v281));
  v283 = vshlq_u32(v282, v269);
  v284 = vshlq_s16(vshlq_s16(v278, v279), v280);
  v285 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v282, v283), vzip2q_s32(v282, v283)), v279), v280);
  v286 = vandq_s8(v109, v256);
  v287 = vsubq_s16(v284, v286);
  v288 = vsubq_s16(v285, v286);
  v289 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v290 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
  v210.i64[0] = v289.u32[0];
  v210.i64[1] = v289.u32[1];
  v291 = v210;
  v210.i64[0] = v290.u32[0];
  v210.i64[1] = v290.u32[1];
  v292 = vshlq_u64(v136, vnegq_s64(v291));
  v293 = vshlq_u64(v127, vnegq_s64(v210));
  v294 = vzip2q_s64(v136, v292);
  v295 = vzip1q_s64(v136, v292);
  v296 = vzip2q_s64(v127, v293);
  v297 = vzip1q_s64(v127, v293);
  v293.i64[0] = 0xFFFF0000FFFFLL;
  v293.i64[1] = 0xFFFF0000FFFFLL;
  v298 = vuzp1q_s32(v295, v294);
  v299 = vuzp1q_s32(v297, v296);
  v300 = vnegq_s32(vandq_s8(v102, v293));
  v301 = vshlq_u32(v298, vnegq_s32(vandq_s8(v128, v293)));
  v302 = vshlq_u32(v299, v300);
  v303 = vzip2q_s32(v298, v301);
  v304 = vzip1q_s32(v298, v301);
  v305 = vzip2q_s32(v299, v302);
  v306 = vzip1q_s32(v299, v302);
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v307 = vuzp1q_s16(v306, v305);
  v305.i64[0] = 0xF000F000F000FLL;
  v305.i64[1] = 0xF000F000F000FLL;
  v308 = vaddq_s16(vandq_s8(v253, v106), vshlq_s16(vshlq_s16(vuzp1q_s16(v304, v303), vsubq_s16(v302, v128)), vaddq_s16(v128, v305)));
  v309 = vandq_s8(v106, v256);
  v310.i64[0] = 0x1000100010001;
  v310.i64[1] = 0x1000100010001;
  v311 = vceqq_s16(v77, v310);
  v312 = vaddvq_s16(v311);
  v313 = vsubq_s16(v308, v309);
  v314 = vsubq_s16(vshlq_s16(vshlq_s16(v307, vsubq_s16(v302, v102)), vaddq_s16(v102, v305)), v309);
  v311.i32[0] = v72;
  v315 = vdupq_lane_s32(*v311.i8, 0);
  if (v312)
  {
    v316 = vnegq_s16(vandq_s8(v73, v310));
    v317 = v314;
    v317.i32[3] = v313.i32[0];
    v318 = v313;
    v318.i32[0] = v314.i32[3];
    v403.val[0] = vbslq_s8(v316, v318, v313);
    v403.val[1] = vbslq_s8(v316, v317, v314);
    v317.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v317.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F0F80), v316), v403.val[0]);
    v404.val[1] = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, v317), v316));
    v313 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0F90), v316), v404.val[0]);
    v314 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FA0), v316), v258);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FB0), v316), v259);
    v258 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FC0), v316), v404.val[0]);
    v259 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0FD0), v316), v273);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0F80), v316), v274);
    v273 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, v317), v316), v404.val[0]);
    v274 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FE0), v316));
    v403.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0FF0), v316), v287);
    v403.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0F80), v316), v288);
    v287 = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, v317), v316), v403.val[0]);
    v288 = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F1000), v316));
  }

  v319 = vaddq_s16(v313, v315);
  v320 = vaddq_s16(v314, v315);
  v321 = vaddq_s16(v258, v315);
  v322 = vaddq_s16(v259, v315);
  v323 = vaddq_s16(v273, v315);
  v324 = vaddq_s16(v274, v315);
  v325 = vaddq_s16(v287, v315);
  v326 = vaddq_s16(v288, v315);
  v327.i64[0] = 0x10001000100010;
  v327.i64[1] = 0x10001000100010;
  v328 = vceqzq_s16(vandq_s8(v73, v327));
  v329 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v319, xmmword_29D2F1080), v328), v319);
  v330 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v320, xmmword_29D2F1080), v328), v320);
  v331 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v321, xmmword_29D2F1080), v328), v321);
  v332 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v322, xmmword_29D2F1080), v328), v322);
  v333 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v323, xmmword_29D2F1080), v328), v323);
  v334 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v324, xmmword_29D2F1080), v328), v324);
  v335 = vzip2q_s64(v329, v330);
  *&v336 = v329.i64[0];
  *(&v336 + 1) = v330.i64[0];
  *&v337 = v333.i64[0];
  *(&v337 + 1) = v334.i64[0];
  v338 = (a1 + a2);
  *a1 = v336;
  *(a1 + 16) = v337;
  v339 = (a1 + 2 * a2);
  v340 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v325, xmmword_29D2F1080), v328), v325);
  v341 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F1080), v328), v326);
  *v338 = v335;
  v338[1] = vzip2q_s64(v333, v334);
  v334.i64[0] = v331.i64[0];
  v334.i64[1] = v332.i64[0];
  v325.i64[0] = v340.i64[0];
  v325.i64[1] = v341.i64[0];
  *v339 = v334;
  v339[1] = v325;
  v342 = (v339 + a2);
  *v342 = vzip2q_s64(v331, v332);
  v342[1] = vzip2q_s64(v340, v341);
  return v8;
}