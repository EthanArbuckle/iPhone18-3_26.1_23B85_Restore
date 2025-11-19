uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = 0;
  v69 = *MEMORY[0x29EDCA608];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
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
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v29 = 0;
      v30 = (a3 + i * a4);
      v31 = (2 * i) | 1u;
      do
      {
        v32 = &v65 + (v29 & 0x7F);
        *(v32 + 2 * (i & 0x7F)) = *v30;
        v33 = &v65 + 8 * ((2 * v29) | 1u);
        *&v33[4 * (i & 0x7F)] = v30[1];
        *(v32 + v31) = v30[2];
        LOWORD(v32) = v30[3];
        v30 += 4;
        ++v29;
        *&v33[2 * v31] = v32;
      }

      while (a5 != v29);
    }

    v27 = v65;
    v26 = WORD4(v65);
    v25 = WORD1(v65);
    v24 = WORD5(v65);
    v23 = v66;
    v22 = WORD4(v66);
    v21 = WORD1(v66);
    v20 = WORD5(v66);
    v19 = WORD2(v65);
    v18 = WORD6(v65);
    v17 = WORD3(v65);
    v16 = HIWORD(v65);
    v15 = WORD2(v66);
    v14 = WORD6(v66);
    v13 = WORD3(v66);
    v12 = HIWORD(v66);
    v11 = v67;
    v10 = WORD4(v67);
    v9 = WORD1(v67);
    v8 = WORD5(v67);
  }

  v48 = v12;
  v51 = v10;
  v52 = v11;
  v57 = v9;
  v34 = a6 != 0;
  v53 = 2 * (a6 & 0x7F);
  v60.i64[0] = __PAIR64__(v26, v27);
  v35 = 2 * (a5 & 0x7F);
  v60.i64[1] = __PAIR64__(v24, v25);
  v61 = v23;
  v62 = v22;
  if (v35 >= 4)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2 * (a5 & 0x7F);
  }

  v63 = v21;
  v64 = v20;
  if (v35 >= 4)
  {
    v37 = v35 - 4;
  }

  else
  {
    v37 = 0;
  }

  v55 = 2 * v34;
  v56 = v37;
  v54 = a5;
  v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v60, a7, v36, 2 * v34);
  v60.i64[0] = __PAIR64__(v18, v19);
  v60.i64[1] = __PAIR64__(v16, v17);
  v61 = v15;
  v62 = v14;
  v39 = v53 - 2;
  if (v53 < 2)
  {
    v39 = 0;
  }

  v63 = v13;
  v64 = v48;
  if (a6 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v60, a7, v36, v40);
  v60.i64[0] = __PAIR64__(v51, v52);
  v60.i64[1] = __PAIR64__(v8, v57);
  v61 = v68;
  v62 = WORD4(v68);
  if (v54 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = v56;
  }

  v63 = WORD1(v68);
  v64 = WORD5(v68);
  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v60, a7, v42, v55);
  v60.i32[0] = WORD2(v67);
  v60.i32[1] = WORD6(v67);
  v60.i32[2] = WORD3(v67);
  v60.i32[3] = HIWORD(v67);
  v61 = WORD2(v68);
  v62 = WORD6(v68);
  v63 = WORD3(v68);
  v64 = HIWORD(v68);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v60, a7, v42, v40);
  if (v43)
  {
    v45 = 4;
  }

  else
  {
    v45 = 0;
  }

  if (v41)
  {
    v46 = 2;
  }

  else
  {
    v46 = 0;
  }

  if (result)
  {
    v47 = -8;
  }

  else
  {
    v47 = -16;
  }

  *a2 = v47 | v45 | v58 | v46;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 22;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x2B)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = ((a4 >> 6) | (4 * v13)) & 0xF;
  v16 = vdupq_n_s16(v15);
  a8.i32[0] = v15;
  v17.i64[0] = 0x3000300030003;
  v17.i64[1] = 0x3000300030003;
  v18 = vbicq_s8(vdupq_n_s16(((v13 >> 2) & 0xF) + 1), vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v17));
  v19 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v20.i64[0] = 0x202020202020202;
  v20.i64[1] = 0x202020202020202;
  v21 = vandq_s8(v19, v20);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v18;
    v47 = v18;
    v46 = v18;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v18;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3E));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3E) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i32[0] = vandq_s8(vaddq_s8(v40, v36), v39).u32[0];
    v41 = vdupq_n_s16(v40.i8[0]);
    v42 = vdupq_n_s16(v40.i8[1]);
    v43 = vdupq_n_s16(v40.i8[2]);
    v44 = vdupq_n_s16(v40.i8[3]);
    v45 = vsubq_s16(v18, v41);
    v46 = vsubq_s16(v18, v42);
    v47 = vsubq_s16(v18, v43);
    v48 = vsubq_s16(v18, v44);
    v49 = vceqzq_s16(v41);
    v50 = vceqzq_s16(v42);
    v51 = vceqzq_s16(v43);
    v52 = vceqzq_s16(v44);
  }

  v53.i64[0] = 0x7000700070007;
  v53.i64[1] = 0x7000700070007;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u16(v16, v53), 0, 0xEuLL), v18);
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  if (v60 <= 0x80 && v14 >= v60 + v12)
  {
    v62 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v12 & 0x3F));
    v63 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v63, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v62)), vshlq_u64(vdupq_lane_s64(v63->i64[0], 0), vnegq_s64(v62)));
    if (v60 + (v12 & 0x3F) >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v63[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v62)), vshlq_u64(vdupq_laneq_s64(v63[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v62))), v54);
    }

    v12 += v60;
  }

  else
  {
    v29 = 1;
  }

  v64 = v15 & 3;
  if (v64 != 2)
  {
    LODWORD(v68) = 0;
    LODWORD(v66) = 0;
    v69 = v12;
    goto LABEL_36;
  }

  v65 = v12 + 8;
  if (v14 < v12 + 8)
  {
    LODWORD(v66) = 0;
    v65 = v12;
LABEL_35:
    LODWORD(v68) = 0;
    v29 = 1;
    v69 = v65;
    goto LABEL_36;
  }

  v70 = (v11 + 8 * (v12 >> 6));
  v66 = *v70 >> v12;
  if ((v12 & 0x3F) >= 0x39)
  {
    v66 |= v70[1] << -(v12 & 0x3F);
  }

  LODWORD(v66) = v66;
  v69 = v12 + 16;
  if (v14 < v12 + 16)
  {
    goto LABEL_35;
  }

  v67 = (v11 + 8 * (v65 >> 6));
  v68 = *v67 >> v65;
  if ((v65 & 0x3F) >= 0x39)
  {
    v68 |= v67[1] << -(v65 & 0x3F);
  }

  LODWORD(v68) = v68;
LABEL_36:
  v71 = 0uLL;
  v72 = vextq_s8(0, v45, 0xEuLL);
  v73 = vmovl_u16(*&vpaddq_s16(v72, v72));
  v74 = vpaddq_s32(v73, v73).u64[0];
  v75.i64[0] = v74;
  v75.i64[1] = HIDWORD(v74);
  v76 = v75;
  v77 = vaddvq_s64(v75);
  v78 = v77 + v69;
  if (v77 <= 0x80 && v14 >= v78)
  {
    v81 = v69 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v76), vdupq_n_s64(v81));
    v83 = (v11 + 8 * (v69 >> 6));
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v77 + v81 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v80);
    }

    v69 = v78;
  }

  else
  {
    v29 = 1;
    v80 = 0uLL;
  }

  v84.i64[0] = 0xFFFF0000FFFFLL;
  v84.i64[1] = 0xFFFF0000FFFFLL;
  v85 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v86 = vpaddq_s32(v85, v85).u64[0];
  v87.i64[0] = v86;
  v87.i64[1] = HIDWORD(v86);
  v88 = v87;
  v89 = vaddvq_s64(v87);
  if (v89 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v90 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
    v91.i64[0] = v90.u32[0];
    v91.i64[1] = v90.u32[1];
    v92 = v91;
    v93 = vandq_s8(v46, v84);
    v94 = v89 + v69;
    if (v14 >= v89 + v69)
    {
      v95 = v69 & 0x3F;
      v96 = vaddq_s64(vzip1q_s64(0, v88), vdupq_n_s64(v95));
      v97 = (v11 + 8 * (v69 >> 6));
      v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v96)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v96)));
      if (v89 + v95 >= 0x81)
      {
        v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v96)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v96))), v71);
      }

      v69 = v94;
    }

    else
    {
      v29 = 1;
    }

    v98 = vshlq_u64(v71, vnegq_s64(v92));
    v99 = vuzp1q_s32(vzip1q_s64(v71, v98), vzip2q_s64(v71, v98));
    v100 = vshlq_u32(v99, vnegq_s32(v93));
    v71 = vuzp1q_s16(vzip1q_s32(v99, v100), vzip2q_s32(v99, v100));
  }

  v185 = v9;
  v186 = v8;
  v101 = vmovl_u16(*&vpaddq_s16(v47, v47));
  v102 = vpaddq_s32(v101, v101).u64[0];
  v103.i64[0] = v102;
  v103.i64[1] = HIDWORD(v102);
  v104 = v103;
  v105 = vaddvq_s64(v103);
  if (v105 >= 0x81)
  {
    v29 = 1;
    v112 = 0uLL;
  }

  else
  {
    v106 = vzip1_s32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
    v107.i64[0] = v106.u32[0];
    v107.i64[1] = v106.u32[1];
    v108 = v107;
    v109 = vandq_s8(v47, v84);
    v110 = v105 + v69;
    if (v14 >= v105 + v69)
    {
      v113 = v69 & 0x3F;
      v114 = vaddq_s64(vzip1q_s64(0, v104), vdupq_n_s64(v113));
      v115 = (v11 + 8 * (v69 >> 6));
      v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
      if (v105 + v113 >= 0x81)
      {
        v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v111);
      }

      v69 = v110;
    }

    else
    {
      v111 = 0uLL;
      v29 = 1;
    }

    v116 = vshlq_u64(v111, vnegq_s64(v108));
    v117 = vuzp1q_s32(vzip1q_s64(v111, v116), vzip2q_s64(v111, v116));
    v118 = vshlq_u32(v117, vnegq_s32(v109));
    v112 = vuzp1q_s16(vzip1q_s32(v117, v118), vzip2q_s32(v117, v118));
  }

  v119 = vmovl_u16(*&vpaddq_s16(v48, v48));
  v120 = vpaddq_s32(v119, v119).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  if (v123 >= 0x81 || v14 < v123 + v69)
  {
    goto LABEL_66;
  }

  v124 = vaddq_s64(vzip1q_s64(0, v122), vdupq_n_s64(v69 & 0x3F));
  v125 = (v11 + 8 * (v69 >> 6));
  v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
  if (v123 + (v69 & 0x3F) >= 0x81)
  {
    v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
  }

  if ((v29 & 1) != 0 || (v127 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v127) - (v123 + v69) >= 9))
  {
LABEL_66:
    v128 = 0;
    v129 = 0;
    v130 = 8 * (&v184 & 7);
    v131 = 16;
    do
    {
      v132 = 64 - v130;
      if (64 - v130 >= v131)
      {
        v132 = v131;
      }

      *&v183[8 * v128] |= ((0xFFFFFFFFFFFFFFFFLL >> v129) & ~(-1 << v132)) << v130;
      v129 += v132;
      v133 = v132 + v130;
      v128 += v133 >> 6;
      v130 = v133 & 0x3F;
      v131 -= v132;
    }

    while (v131);
    v127 = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
  }

  else
  {
    v135 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v136 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
    v137.i64[0] = v135.u32[0];
    v137.i64[1] = v135.u32[1];
    v138 = v137;
    v137.i64[0] = v136.u32[0];
    v137.i64[1] = v136.u32[1];
    v139 = vshlq_u64(v54, vnegq_s64(v138));
    v140 = vshlq_u64(v80, vnegq_s64(v137));
    v141 = vuzp1q_s32(vzip1q_s64(v54, v139), vzip2q_s64(v54, v139));
    v142 = vuzp1q_s32(vzip1q_s64(v80, v140), vzip2q_s64(v80, v140));
    v143 = vshlq_u32(v141, vnegq_s32((*&v55 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
    v144 = vshlq_u32(v142, vnegq_s32(vandq_s8(v72, v84)));
    v145 = vzip2q_s32(v141, v143);
    v146 = vzip1q_s32(v141, v143);
    v143.i64[0] = 0x10001000100010;
    v143.i64[1] = 0x10001000100010;
    v147 = vzip2q_s32(v142, v144);
    v148 = vzip1q_s32(v142, v144);
    v144.i64[0] = 0x10001000100010;
    v144.i64[1] = 0x10001000100010;
    v149 = v13 >> 6;
    v150 = vuzp1q_s16(v146, v145);
    v145.i64[0] = 0xF000F000F000FLL;
    v145.i64[1] = 0xF000F000F000FLL;
    v151 = vuzp1q_s16(v148, v147);
    v147.i64[0] = 0xF000F000F000FLL;
    v147.i64[1] = 0xF000F000F000FLL;
    v152 = vzip1_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
    v153.i64[0] = 0xFFFF0000FFFFLL;
    v153.i64[1] = 0xFFFF0000FFFFLL;
    v154.i64[0] = 0xF000F000F000FLL;
    v154.i64[1] = 0xF000F000F000FLL;
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    v137.i64[0] = v152.u32[0];
    v137.i64[1] = v152.u32[1];
    v156 = vshlq_s16(vshlq_s16(v150, vsubq_s16(v143, v55)), vaddq_s16(v55, v145));
    v157 = vshlq_s16(vshlq_s16(v151, vsubq_s16(v144, v72)), vaddq_s16(v72, v147));
    v158 = vshlq_s16(vshlq_s16(v71, vsubq_s16(v144, v46)), vaddq_s16(v46, v147));
    v159 = vshlq_s16(vshlq_s16(v112, vsubq_s16(v144, v47)), vaddq_s16(v47, v147));
    v160 = vshlq_u64(v126, vnegq_s64(v137));
    v161 = vuzp1q_s32(vzip1q_s64(v126, v160), vzip2q_s64(v126, v160));
    v162 = vshlq_u32(v161, vnegq_s32(vandq_s8(v48, v153)));
    v163 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v161, v162), vzip2q_s32(v161, v162)), vsubq_s16(v155, v48)), vaddq_s16(v48, v154));
    if (v64 == 2)
    {
      v164.i64[0] = 0xFFFFFFFF00000000;
      v164.i64[1] = 0xFFFFFFFF00000000;
      v165 = vmlal_s8(vandq_s8(vdupq_n_s16(v68), v164), vdup_n_s8(v66), 0x302030201000100);
      v157 = vaddq_s16(v157, v165);
      v158 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v68), v165), v158);
      v159 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66), v165), v159);
      v163 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66 + 2 * v68), v165), v163);
    }

    v166 = vdupq_n_s16(v149);
    v167 = vaddq_s16(vandq_s8(v156, v49), v157);
    v168 = vdupq_lane_s16(*v156.i8, 0);
    v169 = vsubq_s16(v167, vandq_s8(v168, v49));
    v170 = vsubq_s16(v158, vandq_s8(v168, v50));
    v171 = vsubq_s16(v159, vandq_s8(v168, v51));
    v172 = vsubq_s16(v163, vandq_s8(v168, v52));
    v173.i64[0] = 0x1000100010001;
    v173.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v173)))
    {
      v174 = *&v16 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
      v175 = vnegq_s16(v174);
      v176 = v169;
      v176.i16[0] = v169.i16[7];
      v176.i16[7] = v169.i16[0];
      v177 = vorrq_s8(vandq_s8(v176, v175), vandq_s8(v169, vceqzq_s16(v174)));
      v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v177, xmmword_29D2F0E60), v175), v177);
      v169 = vaddq_s16(vandq_s8(vqtbl1q_s8(v178, xmmword_29D2F0E70), v175), v178);
      v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v170, xmmword_29D2F0E80), v175), v170);
      v170 = vaddq_s16(vandq_s8(vqtbl1q_s8(v179, xmmword_29D2F0E90), v175), v179);
      v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v171, xmmword_29D2F0EA0), v175), v171);
      v171 = vaddq_s16(vandq_s8(vqtbl1q_s8(v180, xmmword_29D2F0EB0), v175), v180);
      v181 = vaddq_s16(vandq_s8(vqtbl1q_s8(v172, xmmword_29D2F0EC0), v175), v172);
      v172 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_29D2F0ED0), v175), v181);
    }

    *a1 = vaddq_s16(v166, v169);
    a1[1] = vaddq_s16(v171, v166);
    v182 = (a1 + a2);
    *v182 = vaddq_s16(v170, v166);
    v182[1] = vaddq_s16(v172, v166);
  }

  return v127;
}

int16x8_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v22, a5);
  }

  v20 = v22;
  v21 = v23;
  v10 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v22, a5);
  }

  v18 = v22;
  v19 = v23;
  v11 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v22, a5);
  }

  v16 = v22;
  v17 = v23;
  v12 = a3 + 24;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v22, a5);
  }

  result = vuzp1q_s16(v16, v17);
  v14 = (a1 + a2);
  v15 = vuzp1q_s16(v22, v23);
  *a1 = vuzp1q_s16(v20, v21);
  a1[1] = result;
  *v14 = vuzp1q_s16(v18, v19);
  v14[1] = v15;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, int16x4_t a8, int16x4_t a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = 2 * a2;
  v23 = v16 - 2;
  if (v17 && v16 >= 3)
  {
    if (v23 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v16 - 2;
    }

    if (v17 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 1, v21 + v22, a2, v25, v24, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v26 = v17 - 4;
  if (v17 >= 5 && v16)
  {
    if (v16 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v16;
    }

    if (v26 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 2, v21 + 32, a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[2] = 0;
    if (v17 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v16 >= 3)
  {
    if (v23 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v16 - 2;
    }

    if (v26 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 3, v21 + v22 + 32, a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    v31 = v16 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v31 = v16 - 4;
  if (!v17)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v16 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v34 = v16 - 6;
    if (!v17)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v31 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v31;
  }

  if (v17 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v17;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 4, v21 + 4 * a2, a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  v34 = v16 - 6;
LABEL_47:
  if (v16 >= 7)
  {
    if (v34 >= 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v34;
    }

    if (v17 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 5, v21 + 6 * a2, a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v17 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v16 >= 5)
  {
    if (v31 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v31;
    }

    if (v26 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 6, v21 + 4 * a2 + 32, a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v17 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v16 < 7)
  {
    goto LABEL_76;
  }

  if (v34 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = v34;
  }

  if (v26 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = v17 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 7, v21 + 6 * a2 + 32, a2, v40, v39, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int16x4_t a8, int16x4_t a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v15 = *a3;
  v16 = *(a3 + 16);
  v17 = *(a3 + a4);
  v18 = vdupq_lane_s16(*a3, 0);
  v19 = vsubq_s16(*a3, v18);
  v20 = vsubq_s16(v16, v18);
  v21 = vsubq_s16(v17, v18);
  v22 = vsubq_s16(*(a3 + a4 + 16), v18);
  a8.i16[0] = vmaxvq_s16(v19);
  v23 = vdupq_lane_s16(a8, 0);
  a9.i16[0] = vminvq_s16(v19);
  v24 = vdupq_lane_s16(a9, 0);
  v25.i64[0] = 0x8000800080008000;
  v25.i64[1] = 0x8000800080008000;
  v26 = vmaxq_s16(v23, v25);
  v27.i64[0] = 0x8000800080008000;
  v27.i64[1] = 0x8000800080008000;
  v28 = vminq_s16(v24, v27);
  v29 = vzip1q_s16(v23, v24);
  v30.i64[0] = 0x10001000100010;
  v30.i64[1] = 0x10001000100010;
  v31 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v29)), vceqzq_s16(v29));
  v32 = vpmaxq_s16(v31, v31);
  v31.i16[0] = vmaxvq_s16(v20);
  a12.i16[0] = vminvq_s16(v20);
  v33 = vdupq_lane_s16(*v31.i8, 0);
  v34 = vdupq_lane_s16(a12, 0);
  v35 = vmaxq_s16(v26, v33);
  v36 = vminq_s16(v28, v34);
  v37 = vzip1q_s16(v33, v34);
  v38 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v37)), vceqzq_s16(v37));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v21);
  a15.i16[0] = vminvq_s16(v21);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a15, 0);
  v42 = vmaxq_s16(v35, v40);
  v43 = vminq_s16(v36, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vsubq_s16(v30, vclsq_s16(v44));
  v46 = vbicq_s8(v45, vceqzq_s16(v44));
  v47 = vpmaxq_s16(v46, v46);
  v45.i16[0] = vmaxvq_s16(v22);
  v48 = v22;
  v22.i16[0] = vminvq_s16(v22);
  v49 = vdupq_lane_s16(*v45.i8, 0);
  v50 = vdupq_lane_s16(*v22.i8, 0);
  v51 = vmaxq_s16(v42, v49);
  v52 = vminq_s16(v43, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v54, v54);
  v56 = vmaxq_s16(vmaxq_s16(v32, v39), vmaxq_s16(v47, v55));
  v57 = vclzq_s16(vsubq_s16(v51, v52));
  v58 = vsubq_s16(v30, v57);
  v59 = vminq_s16(v58, v56);
  if (vmaxvq_s16(v59))
  {
    v60 = 0;
    v61 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63.i64[0] = 0xF000F000F000FLL;
    v63.i64[1] = 0xF000F000F000FLL;
    v64 = vcgtq_s16(v56, v58);
    v65 = vandq_s8(vsubq_s16(vshlq_s16(v62, vsubq_s16(v63, v57)), v52), v64);
    v66.i64[0] = 0x8000800080008;
    v66.i64[1] = 0x8000800080008;
    v67.i64[0] = 0x3000300030003;
    v67.i64[1] = 0x3000300030003;
    v68 = vorrq_s8(vandq_s8(vceqzq_s16(v59), v67), vandq_s8(v64, v66));
    v69 = vmaxq_s16(vminq_s16(vsubq_s16(v59, v32), v67), 0);
    v70 = vmaxq_s16(vminq_s16(vsubq_s16(v59, v39), v67), 0);
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v59, v47), v67), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v59, v55), v67), 0);
    v73 = vsubq_s16(v59, v69);
    v74 = vsubq_s16(v59, v70);
    v75 = vsubq_s16(v59, v71);
    v76 = vsubq_s16(v59, v72);
    v77 = vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(vaddq_s16(v69, v70)));
    v69.i64[0] = 0x4000400040004;
    v69.i64[1] = 0x4000400040004;
    v78 = vbicq_s8(v69, v77);
    v79 = vorrq_s8(v78, v68);
    if (a5 && a6)
    {
      v362 = v65;
      v80 = v15.u16[1] - v15.u16[0];
      v81 = 0x302030201000100;
      v82.i64[0] = 0xFFFFFFFF00000000;
      v82.i64[1] = 0xFFFFFFFF00000000;
      v83 = vmlal_s8(vandq_s8(vdupq_n_s16((v15.i8[4] - v15.i8[0])), v82), vdup_n_s8(v80), 0x302030201000100);
      v84 = vsubq_s16(v19, v83);
      v85 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v15.i8[4] - v15.i8[0])), v20), v83);
      v86 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v80), v21), v83);
      v81.i16[0] = vmaxvq_s16(v84);
      v358 = v85;
      v360 = v84;
      v82.i16[0] = vminvq_s16(v84);
      v87 = vdupq_lane_s16(v81, 0);
      v88 = vdupq_lane_s16(*v82.i8, 0);
      v89 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v15.i8[4] - v15.i8[0]) + 4 * v80)), v48), v83);
      v90.i64[0] = 0x8000800080008000;
      v90.i64[1] = 0x8000800080008000;
      v91 = vmaxq_s16(v87, v90);
      v83.i64[0] = 0x8000800080008000;
      v83.i64[1] = 0x8000800080008000;
      v92 = vzip1q_s16(v87, v88);
      v93.i64[0] = 0x10001000100010;
      v93.i64[1] = 0x10001000100010;
      v94 = vsubq_s16(v93, vclsq_s16(v92));
      v95 = vbicq_s8(v94, vceqzq_s16(v92));
      v94.i16[0] = vmaxvq_s16(v85);
      v85.i16[0] = vminvq_s16(v85);
      v96 = vdupq_lane_s16(*v94.i8, 0);
      v97 = vdupq_lane_s16(*v85.i8, 0);
      v98 = vpmaxq_s16(v95, v95);
      v99 = vmaxq_s16(v91, v96);
      v100 = vminq_s16(vminq_s16(v88, v83), v97);
      v101 = vzip1q_s16(v96, v97);
      v102 = vsubq_s16(v93, vclsq_s16(v101));
      v103 = vbicq_s8(v102, vceqzq_s16(v101));
      v104 = vpmaxq_s16(v103, v103);
      v103.i16[0] = vmaxvq_s16(v86);
      v105 = vdupq_lane_s16(*v103.i8, 0);
      v102.i16[0] = vminvq_s16(v86);
      v106 = vdupq_lane_s16(*v102.i8, 0);
      v107 = vmaxq_s16(v99, v105);
      v108 = vminq_s16(v100, v106);
      v109 = vzip1q_s16(v105, v106);
      v110 = vsubq_s16(v93, vclsq_s16(v109));
      v111 = vbicq_s8(v110, vceqzq_s16(v109));
      v112 = vpmaxq_s16(v111, v111);
      v111.i16[0] = vmaxvq_s16(v89);
      v110.i16[0] = vminvq_s16(v89);
      v113 = vdupq_lane_s16(*v111.i8, 0);
      v114 = vdupq_lane_s16(*v110.i8, 0);
      v115 = vmaxq_s16(v107, v113);
      v116 = vminq_s16(v108, v114);
      v117 = vzip1q_s16(v113, v114);
      v118 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v117)), vceqzq_s16(v117));
      v119 = vpmaxq_s16(v118, v118);
      v120 = vmaxq_s16(vmaxq_s16(v98, v104), vmaxq_s16(v112, v119));
      v121 = vclzq_s16(vsubq_s16(v115, v116));
      v122 = vsubq_s16(v93, v121);
      v123 = v48;
      v124 = v21;
      v125 = vcgtq_s16(v120, v122);
      v126 = vminq_s16(v122, v120);
      v120.i64[0] = 0x1000100010001;
      v120.i64[1] = 0x1000100010001;
      v127 = vmaxq_s16(v126, v120);
      v120.i64[0] = 0x3000300030003;
      v120.i64[1] = 0x3000300030003;
      v128 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v98), v120), 0);
      v129 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v104), v120), 0);
      v130 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v112), v120), 0);
      v131 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v119), v120), 0);
      v132 = vsubq_s16(v127, v128);
      v133 = vsubq_s16(v127, v129);
      v134 = vsubq_s16(v127, v130);
      v135 = vsubq_s16(v127, v131);
      v136 = vceqq_s16(vaddq_s16(v131, v130), vnegq_s16(vaddq_s16(v128, v129)));
      v128.i64[0] = 0x4000400040004;
      v128.i64[1] = 0x4000400040004;
      v137 = vbicq_s8(v128, v136);
      v138.i64[0] = 0x7000700070007;
      v138.i64[1] = 0x7000700070007;
      v139 = vandq_s8(v59, v64);
      v140 = vaddq_s16(v78, v78);
      v141 = vmulq_s16(v73, v138);
      v142 = vshlq_n_s16(vaddq_s16(vaddq_s16(v75, v74), v76), 3uLL);
      v143 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v141, v139), v142), v140), vaddq_s16(vaddq_s16(vmlaq_s16(vbslq_s8(v125, vaddq_s16(v127, v93), v93), v132, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v134, v133), v135), 3uLL)), vaddq_s16(v137, v137))), 0);
      v139.i16[0] = vaddvq_s16(v143);
      v144 = v139.u16[0];
      if (v139.i16[0])
      {
        v145.i64[0] = 0x2000200020002;
        v145.i64[1] = 0x2000200020002;
        v146.i64[0] = 0xA000A000A000ALL;
        v146.i64[1] = 0xA000A000A000ALL;
        v147 = vbslq_s8(v125, v146, v145);
        v146.i64[0] = -1;
        v140.i64[1] = -1;
        v148 = vorrq_s8(v137, v147);
        v147.i64[0] = 0xF000F000F000FLL;
        v147.i64[1] = 0xF000F000F000FLL;
        v149 = vandq_s8(vsubq_s16(vshlq_s16(v140, vsubq_s16(v147, v121)), v116), v125);
        v150 = vcltzq_s16(vshlq_n_s16(v143, 0xFuLL));
        v140.i64[0] = v360.i64[0];
        v357 = vbslq_s8(v150, v360, v19);
        v21 = vbslq_s8(v150, v86, v124);
        v74 = vbslq_s8(v150, v133, v74);
        v75 = vbslq_s8(v150, v134, v75);
        v362 = vbslq_s8(v150, v149, v362);
        v59 = vbslq_s8(v150, v127, v59);
        v79 = vbslq_s8(v150, v148, v79);
        v356 = vbslq_s8(v150, v132, v73);
        v141 = vmulq_s16(v356, v138);
        v359 = vbslq_s8(v150, v358, v20);
        v361 = vbslq_s8(v150, v135, v76);
        v142 = vshlq_n_s16(vaddq_s16(vaddq_s16(v75, v74), v361), 3uLL);
        v48 = vbslq_s8(v150, v89, v123);
      }

      else
      {
        v356 = v73;
        v357 = v19;
        v359 = v20;
        v361 = v76;
        v48 = v123;
        v21 = v124;
      }

      v152.i64[0] = 0x7000700070007;
      v152.i64[1] = 0x7000700070007;
      v61 = ((v15.i8[2] - v15.i8[0]) | ((v15.i16[2] - v15.i16[0]) << 8));
      v153 = vsubq_s16(v15, vqtbl1q_s8(v15, xmmword_29D2F0F00));
      v154 = *(a3 + 16);
      v154.i16[7] = HIWORD(*a3);
      v155 = vsubq_s16(v16, vqtbl1q_s8(v154, xmmword_29D2F0F10));
      v156 = *(a3 + a4);
      v156.i16[7] = HIWORD(*a3);
      v157 = vsubq_s16(v17, vqtbl1q_s8(v156, xmmword_29D2F0F20));
      v158 = *(a3 + a4 + 16);
      v158.i16[7] = HIWORD(*a3);
      v159 = 0x100010001000F0ELL;
      v160 = v153;
      v160.i16[0] = v153.i16[7];
      v160.i16[7] = v153.i16[0];
      v153.i16[0] = vmaxvq_s16(v160);
      v159.i16[0] = vminvq_s16(v160);
      v161 = vdupq_lane_s16(*v153.i8, 0);
      v162 = vdupq_lane_s16(v159, 0);
      v163 = vsubq_s16(*(a3 + a4 + 16), vqtbl1q_s8(v158, xmmword_29D2F0F30));
      v164.i64[0] = 0x8000800080008000;
      v164.i64[1] = 0x8000800080008000;
      v165 = vmaxq_s16(v161, v164);
      v164.i64[0] = 0x8000800080008000;
      v164.i64[1] = 0x8000800080008000;
      v166 = vminq_s16(v162, v164);
      v167 = vzip1q_s16(v161, v162);
      v164.i64[0] = 0x10001000100010;
      v164.i64[1] = 0x10001000100010;
      v168 = vsubq_s16(v164, vclsq_s16(v167));
      v169 = vbicq_s8(v168, vceqzq_s16(v167));
      v170 = vpmaxq_s16(v169, v169);
      v168.i16[0] = vmaxvq_s16(v155);
      v171 = vdupq_lane_s16(*v168.i8, 0);
      v140.i16[0] = vminvq_s16(v155);
      v172 = vdupq_lane_s16(*v140.i8, 0);
      v173 = vmaxq_s16(v165, v171);
      v174 = vminq_s16(v166, v172);
      v175 = vzip1q_s16(v171, v172);
      v176 = vsubq_s16(v164, vclsq_s16(v175));
      v177 = vbicq_s8(v176, vceqzq_s16(v175));
      v178 = vpmaxq_s16(v177, v177);
      v176.i16[0] = vmaxvq_s16(v157);
      v121.i16[0] = vminvq_s16(v157);
      v179 = vdupq_lane_s16(*v176.i8, 0);
      v180 = vdupq_lane_s16(*v121.i8, 0);
      v181 = vmaxq_s16(v173, v179);
      v182 = vminq_s16(v174, v180);
      v183 = vzip1q_s16(v179, v180);
      v184 = vsubq_s16(v164, vclsq_s16(v183));
      v185 = vbicq_s8(v184, vceqzq_s16(v183));
      v184.i16[0] = vmaxvq_s16(v163);
      v132.i16[0] = vminvq_s16(v163);
      v186 = vdupq_lane_s16(*v184.i8, 0);
      v187 = vdupq_lane_s16(*v132.i8, 0);
      v188 = vpmaxq_s16(v185, v185);
      v189 = vmaxq_s16(v181, v186);
      v190 = vminq_s16(v182, v187);
      v191 = vzip1q_s16(v186, v187);
      v192 = vbicq_s8(vsubq_s16(v164, vclsq_s16(v191)), vceqzq_s16(v191));
      v193 = vpmaxq_s16(v192, v192);
      v194 = vmaxq_s16(vmaxq_s16(v170, v178), vmaxq_s16(v188, v193));
      v195 = vclzq_s16(vsubq_s16(v189, v190));
      v196 = vsubq_s16(v164, v195);
      v197 = vcgtq_s16(v194, v196);
      v198 = vminq_s16(v196, v194);
      v199.i64[0] = 0x3000300030003;
      v199.i64[1] = 0x3000300030003;
      v200 = vmaxq_s16(vminq_s16(vsubq_s16(v198, v170), v199), 0);
      v201 = vmaxq_s16(vminq_s16(vsubq_s16(v198, v178), v199), 0);
      v202 = vmaxq_s16(vminq_s16(vsubq_s16(v198, v188), v199), 0);
      v203 = vmaxq_s16(vminq_s16(vsubq_s16(v198, v193), v199), 0);
      v204 = vsubq_s16(v198, v200);
      v205 = vsubq_s16(v198, v201);
      v206 = vsubq_s16(v198, v202);
      v207 = vsubq_s16(v198, v203);
      v208 = vceqq_s16(vaddq_s16(v203, v202), vnegq_s16(vaddq_s16(v200, v201)));
      v201.i64[0] = 0x4000400040004;
      v201.i64[1] = 0x4000400040004;
      v209 = vbicq_s8(v201, v208);
      v202.i64[0] = 0x8000800080008;
      v202.i64[1] = 0x8000800080008;
      v210 = vbicq_s8(v59, vceqzq_s16(vandq_s8(v79, v202)));
      v211 = vandq_s8(vaddq_s16(v79, v79), v202);
      v212.i64[0] = 0x2000200020002;
      v212.i64[1] = 0x2000200020002;
      v213 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v210, v211), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v79, v199), v212), v164), v141)), v142), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v198, v197), v204, v152), vshlq_n_s16(vaddq_s16(vaddq_s16(v206, v205), v207), 3uLL)), vaddq_s16(v209, v209))), 0);
      v210.i16[0] = vaddvq_s16(v213);
      v214 = v210.u16[0];
      if (v210.i16[0])
      {
        v215.i64[0] = 0x9000900090009;
        v215.i64[1] = 0x9000900090009;
        v216.i64[0] = -1;
        v216.i64[1] = -1;
        v217 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v198), v212), vsubq_s16(vandq_s8(v197, v215), vmvnq_s8(v197))), v209);
        v218.i64[0] = 0xF000F000F000FLL;
        v218.i64[1] = 0xF000F000F000FLL;
        v219 = vcltzq_s16(vshlq_n_s16(v213, 0xFuLL));
        v18.i16[0] = vbslq_s8(v219, vextq_s8(v15, v15, 0xEuLL), v18).u16[0];
        v19 = vbslq_s8(v219, v160, v357);
        v20 = vbslq_s8(v219, v155, v359);
        v21 = vbslq_s8(v219, v157, v21);
        v48 = vbslq_s8(v219, v163, v48);
        v73 = vbslq_s8(v219, v204, v356);
        v74 = vbslq_s8(v219, v205, v74);
        v75 = vbslq_s8(v219, v206, v75);
        v76 = vbslq_s8(v219, v207, v361);
        v65 = vbslq_s8(v219, vandq_s8(vsubq_s16(vshlq_s16(v216, vsubq_s16(v218, v195)), v190), v197), v362);
        v59 = vbslq_s8(v219, v198, v59);
        v79 = vbslq_s8(v219, v217, v79);
      }

      else
      {
        v76 = v361;
        v65 = v362;
        v19 = v357;
        v20 = v359;
        v73 = v356;
      }

      if (v144)
      {
        v220 = v214 == 0;
      }

      else
      {
        v220 = 0;
      }

      v60 = v220;
    }

    v221.i64[0] = 0x8000800080008;
    v221.i64[1] = 0x8000800080008;
    v222 = vandq_s8(v79, v221);
    v223.i64[0] = 0x3000300030003;
    v223.i64[1] = 0x3000300030003;
    v224.i64[0] = 0x2000200020002;
    v224.i64[1] = 0x2000200020002;
    v225 = vceqq_s16(vandq_s8(v79, v223), v224);
    v224.i64[0] = 0x10001000100010;
    v224.i64[1] = 0x10001000100010;
    if (((7 * v73.i16[0] + 8 * vaddq_s16(vaddq_s16(v75, v74), v76).u16[0] + ((2 * v79.i16[0]) & 8) + vbicq_s8(v59, vceqzq_s16(v222)).u16[0] + vandq_s8(v225, v224).u16[0]) - 235) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v226 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v227 = 8 * (a1 & 7);
      if (v227)
      {
        v228 = *v226 & ~(-1 << v227);
      }

      else
      {
        v228 = 0;
      }

      if (v59.i16[0])
      {
        v229 = (16 * v59.i8[0] - 16) & 0xF0;
      }

      else
      {
        v229 = 0;
      }

      *a2 = v79.i8[0] << 6;
      v230 = (v229 & 0xFFFFFFFFFF0000F0 | (v18.u16[0] << 8) | v79.i8[0] & 0xF) >> 2;
      v231 = (v230 << v227) | v228;
      if (v227 >= 0x2A)
      {
        *v226 = v231;
        v231 = v230 >> (-8 * (a1 & 7u));
      }

      v232 = v227 + 22;
      v233 = vsubq_s16(v59, v73);
      v234 = vsubq_s16(v59, v74);
      v235 = vsubq_s16(v59, v75);
      v236 = vsubq_s16(v59, v76);
      *v233.i8 = vqmovn_u16(v233);
      *v234.i8 = vqmovn_u16(v234);
      *v235.i8 = vqmovn_u16(v235);
      *v236.i8 = vqmovn_u16(v236);
      v233.i32[0] = vzip1q_s16(vzip1q_s8(v233, v234), vzip1q_s8(v235, v236)).u32[0];
      v235.i64[0] = 0x202020202020202;
      v235.i64[1] = 0x202020202020202;
      v237 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v79.i8, 0x4000400040004)))), v235);
      v235.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v235.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v238 = vandq_s8(vshlq_u8(v236, vorrq_s8(v237, v235)), v233.u32[0]);
      v239 = vmovl_u8(*v237.i8);
      v240 = vpaddq_s16(vshlq_u16(vmovl_u8(*v238.i8), vtrn1q_s16(0, v239)), vmovl_high_u8(v238));
      v241 = vpaddq_s16(v239, vmovl_high_u8(v237));
      v242 = vmovl_u16(*v241.i8);
      v243 = vmovl_high_u16(v241);
      v244 = vpaddq_s32(vshlq_u32(vmovl_u16(*v240.i8), vtrn1q_s32(0, v242)), vshlq_u32(vmovl_high_u16(v240), vtrn1q_s32(0, v243)));
      v245 = vpaddq_s32(v242, v243);
      v246.i64[0] = v244.u32[0];
      v246.i64[1] = v244.u32[1];
      v247 = v246;
      v246.i64[0] = v244.u32[2];
      v246.i64[1] = v244.u32[3];
      v248 = v246;
      v246.i64[0] = v245.u32[0];
      v246.i64[1] = v245.u32[1];
      v249 = v246;
      v246.i64[0] = v245.u32[2];
      v246.i64[1] = v245.u32[3];
      v250 = vpaddq_s64(vshlq_u64(v247, vzip1q_s64(0, v249)), vshlq_u64(v248, vzip1q_s64(0, v246)));
      v251 = vpaddq_s64(v249, v246);
      v252 = (v227 + 22) & 0x3E;
      v253 = (v250.i64[0] << v252) | v231;
      if ((v251.i64[0] + v252) >= 0x40)
      {
        *(v226 + ((v232 >> 3) & 8)) = v253;
        v253 = v250.i64[0] >> -v252;
      }

      v254 = v251.i64[0] + v232;
      v255 = v253 | (v250.i64[1] << v254);
      if ((v254 & 0x3F) + v251.i64[1] >= 0x40)
      {
        *(v226 + ((v254 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v255;
        v255 = v250.i64[1] >> -(v254 & 0x3F);
        if ((v254 & 0x3F) == 0)
        {
          v255 = 0;
        }
      }

      v256 = vceqq_s16(v59, v73);
      v257 = v254 + v251.i64[1];
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s16(v222, v222), 0, 0xEuLL), v59);
      v260.i64[0] = 0xF000F000F000FLL;
      v260.i64[1] = 0xF000F000F000FLL;
      v261 = vandq_s8(vshlq_u16(v258, vaddq_s16(v259, v260)), v65);
      v262 = vmovl_u16(*v259.i8);
      v263 = vpaddq_s32(vshlq_u32(vmovl_u16(*v261.i8), vtrn1q_s32(0, v262)), vmovl_high_u16(v261));
      v264 = vpaddq_s32(v262, vmovl_high_u16(v259));
      v265.i64[0] = v263.u32[0];
      v265.i64[1] = v263.u32[1];
      v266 = v265;
      v265.i64[0] = v263.u32[2];
      v265.i64[1] = v263.u32[3];
      v267 = v265;
      v265.i64[0] = v264.u32[0];
      v265.i64[1] = v264.u32[1];
      v268 = v265;
      v265.i64[0] = v264.u32[2];
      v265.i64[1] = v264.u32[3];
      v269 = vpaddq_s64(vshlq_u64(v266, vzip1q_s64(0, v268)), vshlq_u64(v267, vzip1q_s64(0, v265)));
      v270 = vpaddq_s64(v268, v265);
      v271 = (v269.i64[0] << v257) | v255;
      if (v270.i64[0] + (v257 & 0x3F) >= 0x40)
      {
        *(v226 + ((v257 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
        v271 = v269.i64[0] >> -(v257 & 0x3F);
        if ((v257 & 0x3F) == 0)
        {
          v271 = 0;
        }
      }

      v272 = vandq_s8(v65, v256);
      v273 = v270.i64[0] + v257;
      v274 = v271 | (v269.i64[1] << v273);
      if ((v273 & 0x3F) + v270.i64[1] >= 0x40)
      {
        *(v226 + ((v273 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v274;
        v274 = v269.i64[1] >> -(v273 & 0x3F);
        if ((v273 & 0x3F) == 0)
        {
          v274 = 0;
        }
      }

      v275 = vceqq_s16(v59, v74);
      v276 = vaddq_s16(v272, v19);
      v277 = v273 + v270.i64[1];
      if (v60)
      {
        v274 |= v61 << v277;
        if ((v277 & 0x3F) >= 0x30)
        {
          *(v226 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v274;
          v274 = v61 >> -(v277 & 0x3F);
        }

        v277 += 16;
      }

      v278 = vandq_s8(v65, v275);
      v279 = vextq_s8(0, v73, 0xEuLL);
      v280.i64[0] = 0xF000F000F000FLL;
      v280.i64[1] = 0xF000F000F000FLL;
      v281.i64[0] = -1;
      v281.i64[1] = -1;
      v282 = vandq_s8(vshlq_u16(v281, vaddq_s16(v279, v280)), v276);
      v283 = vmovl_u16(*v279.i8);
      v284 = vmovl_high_u16(v279);
      v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v282), vtrn1q_s32(0, v284)));
      v286 = vpaddq_s32(v283, v284);
      v287.i64[0] = v285.u32[0];
      v287.i64[1] = v285.u32[1];
      v288 = v287;
      v287.i64[0] = v285.u32[2];
      v287.i64[1] = v285.u32[3];
      v289 = v287;
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v290 = v287;
      v287.i64[0] = v286.u32[2];
      v287.i64[1] = v286.u32[3];
      v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
      v292 = vpaddq_s64(v290, v287);
      v293 = (v291.i64[0] << v277) | v274;
      if (v292.i64[0] + (v277 & 0x3F) >= 0x40)
      {
        *(v226 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
        v293 = v291.i64[0] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v293 = 0;
        }
      }

      v294 = vceqq_s16(v59, v75);
      v295 = vaddq_s16(v20, v278);
      v296 = v292.i64[0] + v277;
      v297 = (v292.i64[0] + v277) & 0x3F;
      v298 = v293 | (v291.i64[1] << v296);
      if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
      {
        *(v226 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
        v298 = v291.i64[1] >> -v297;
        if (!v297)
        {
          v298 = 0;
        }
      }

      v299 = vandq_s8(v65, v294);
      v300 = v296 + v292.i64[1];
      v301.i64[0] = 0xF000F000F000FLL;
      v301.i64[1] = 0xF000F000F000FLL;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v303 = vandq_s8(vshlq_u16(v302, vaddq_s16(v74, v301)), v295);
      v304 = vmovl_u16(*v74.i8);
      v305 = vmovl_high_u16(v74);
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
      v314 = (v312.i64[0] << v300) | v298;
      if (v313.i64[0] + (v300 & 0x3F) >= 0x40)
      {
        *(v226 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v312.i64[0] >> -(v300 & 0x3F);
        if ((v300 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = vceqq_s16(v59, v76);
      v316 = vaddq_s16(v21, v299);
      v317 = v313.i64[0] + v300;
      v318 = v314 | (v312.i64[1] << v317);
      if ((v317 & 0x3F) + v313.i64[1] >= 0x40)
      {
        *(v226 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v312.i64[1] >> -(v317 & 0x3F);
        if ((v317 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = vandq_s8(v65, v315);
      v320 = v317 + v313.i64[1];
      v321.i64[0] = 0xF000F000F000FLL;
      v321.i64[1] = 0xF000F000F000FLL;
      v322.i64[0] = -1;
      v322.i64[1] = -1;
      v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v75, v321)), v316);
      v324 = vmovl_u16(*v75.i8);
      v325 = vmovl_high_u16(v75);
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
        *(v226 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v332.i64[0] >> -(v320 & 0x3F);
        if ((v320 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vaddq_s16(v48, v319);
      v336 = v333.i64[0] + v320;
      v337 = v334 | (v332.i64[1] << v336);
      if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v226 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
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
      v341 = vandq_s8(vshlq_u16(v340, vaddq_s16(v76, v339)), v335);
      v342 = vmovl_u16(*v76.i8);
      v343 = vmovl_high_u16(v76);
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
      if (v351.i64[0] + (v338 & 0x3F) > 0x3F)
      {
        *(v226 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        if ((v338 & 0x3F) != 0)
        {
          v352 = v350.i64[0] >> -(v338 & 0x3F);
        }

        else
        {
          v352 = 0;
        }
      }

      v353 = v351.i64[0] + v338;
      v354 = v352 | (v350.i64[1] << v353);
      if ((v353 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v226 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v350.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v351.i64[1];
      if ((v355 & 0x3F) != 0)
      {
        *(v226 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      }

      result = (v355 - v227 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v9 = 0;
  v71 = *MEMORY[0x29EDCA608];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a6)
  {
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
    if (a5)
    {
      v29 = 0;
      do
      {
        v30 = 0;
        v31 = (a3 + v29 * a4);
        v32 = &v67 + 2 * (v29 & 0x3F);
        v33 = &v67 + 8 * ((4 * v29) | 1u);
        v34 = &v67 + 8 * ((4 * v29) | 2u);
        v35 = &v67 + 8 * ((4 * v29) | 3u);
        do
        {
          *(v32 + 2 * (v30 & 0x7F)) = *v31;
          *&v33[4 * (v30 & 0x7F)] = v31[1];
          v36 = (2 * v30) | 1u;
          *(v32 + v36) = v31[2];
          *&v33[2 * v36] = v31[3];
          *&v34[4 * (v30 & 0x7F)] = v31[4];
          *&v35[4 * (v30 & 0x7F)] = v31[5];
          v37 = v31[6];
          v38 = v31[7];
          v31 += 8;
          ++v30;
          *&v34[2 * v36] = v37;
          *&v35[2 * v36] = v38;
        }

        while (a5 != v30);
        ++v29;
      }

      while (v29 != a6);
      v28 = v67;
      v27 = WORD4(v67);
      v26 = WORD1(v67);
      v25 = WORD5(v67);
      v24 = v68;
      v23 = WORD4(v68);
      v22 = WORD1(v68);
      v21 = WORD5(v68);
      v20 = WORD2(v67);
      v19 = WORD6(v67);
      v18 = WORD3(v67);
      v17 = HIWORD(v67);
      v16 = WORD2(v68);
      v15 = WORD6(v68);
      v14 = WORD3(v68);
      v13 = HIWORD(v68);
      v12 = v69;
      v11 = WORD4(v69);
      v10 = WORD1(v69);
      v9 = WORD5(v69);
    }
  }

  else
  {
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
  }

  v50 = v13;
  v55 = v12;
  v57 = v10;
  v62.i64[0] = __PAIR64__(v27, v28);
  v53 = v11;
  v54 = 2 * (a6 & 0x7F);
  v58 = 4 * (a5 & 0x3F);
  v62.i64[1] = __PAIR64__(v25, v26);
  v63 = v24;
  v64 = v23;
  v65 = v22;
  v66 = v21;
  v39 = 4 * (a5 != 0);
  v56 = 2 * (a6 != 0);
  v52 = a7;
  v60 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v62, a7, v39, v56);
  v62.i64[0] = __PAIR64__(v19, v20);
  v62.i64[1] = __PAIR64__(v17, v18);
  v63 = v16;
  v64 = v15;
  v40 = v54 - 2;
  if (v54 < 2)
  {
    v40 = 0;
  }

  if (a6 >= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = v40;
  }

  v65 = v14;
  v66 = v50;
  v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v62, v52, v39, v41);
  v62.i64[0] = __PAIR64__(v53, v55);
  v62.i64[1] = __PAIR64__(v9, v57);
  v63 = v70;
  v64 = WORD4(v70);
  v43 = v58 - 4;
  if (v58 < 4)
  {
    v43 = 0;
  }

  if (a5 >= 2)
  {
    v44 = 4;
  }

  else
  {
    v44 = v43;
  }

  v65 = WORD1(v70);
  v66 = WORD5(v70);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v62, v52, v44, v56);
  v62.i32[0] = WORD2(v69);
  v62.i32[1] = WORD6(v69);
  v62.i32[2] = WORD3(v69);
  v62.i32[3] = HIWORD(v69);
  v63 = WORD2(v70);
  v64 = WORD6(v70);
  v65 = WORD3(v70);
  v66 = HIWORD(v70);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v62, v52, v44, v41);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v42)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  if (result)
  {
    v49 = -8;
  }

  else
  {
    v49 = -16;
  }

  *a2 = v49 | v47 | v60 | v48;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 22;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x2B)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
  v15 = ((a4 >> 6) | (4 * v13)) & 0xF;
  v16 = vdupq_n_s16(v15);
  a8.i32[0] = v15;
  v17.i64[0] = 0x3000300030003;
  v17.i64[1] = 0x3000300030003;
  v18 = vbicq_s8(vdupq_n_s16(((v13 >> 2) & 0xF) + 1), vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v17));
  v19 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v20.i64[0] = 0x202020202020202;
  v20.i64[1] = 0x202020202020202;
  v21 = vandq_s8(v19, v20);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v18;
    v47 = v18;
    v46 = v18;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v18;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3E));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3E) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i32[0] = vandq_s8(vaddq_s8(v40, v36), v39).u32[0];
    v41 = vdupq_n_s16(v40.i8[0]);
    v42 = vdupq_n_s16(v40.i8[1]);
    v43 = vdupq_n_s16(v40.i8[2]);
    v44 = vdupq_n_s16(v40.i8[3]);
    v45 = vsubq_s16(v18, v41);
    v46 = vsubq_s16(v18, v42);
    v47 = vsubq_s16(v18, v43);
    v48 = vsubq_s16(v18, v44);
    v49 = vceqzq_s16(v41);
    v50 = vceqzq_s16(v42);
    v51 = vceqzq_s16(v43);
    v52 = vceqzq_s16(v44);
  }

  v53.i64[0] = 0x7000700070007;
  v53.i64[1] = 0x7000700070007;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u16(v16, v53), 0, 0xEuLL), v18);
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  if (v60 <= 0x80 && v14 >= v60 + v12)
  {
    v62 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v12 & 0x3F));
    v63 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v63, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v62)), vshlq_u64(vdupq_lane_s64(v63->i64[0], 0), vnegq_s64(v62)));
    if (v60 + (v12 & 0x3F) >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v63[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v62)), vshlq_u64(vdupq_laneq_s64(v63[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v62))), v54);
    }

    v12 += v60;
  }

  else
  {
    v29 = 1;
  }

  v64 = v15 & 3;
  if (v64 != 2)
  {
    LODWORD(v68) = 0;
    LODWORD(v66) = 0;
    v69 = v12;
    goto LABEL_36;
  }

  v65 = v12 + 8;
  if (v14 < v12 + 8)
  {
    LODWORD(v66) = 0;
    v65 = v12;
LABEL_35:
    LODWORD(v68) = 0;
    v29 = 1;
    v69 = v65;
    goto LABEL_36;
  }

  v70 = (v11 + 8 * (v12 >> 6));
  v66 = *v70 >> v12;
  if ((v12 & 0x3F) >= 0x39)
  {
    v66 |= v70[1] << -(v12 & 0x3F);
  }

  LODWORD(v66) = v66;
  v69 = v12 + 16;
  if (v14 < v12 + 16)
  {
    goto LABEL_35;
  }

  v67 = (v11 + 8 * (v65 >> 6));
  v68 = *v67 >> v65;
  if ((v65 & 0x3F) >= 0x39)
  {
    v68 |= v67[1] << -(v65 & 0x3F);
  }

  LODWORD(v68) = v68;
LABEL_36:
  v71 = 0uLL;
  v72 = vextq_s8(0, v45, 0xEuLL);
  v73 = vmovl_u16(*&vpaddq_s16(v72, v72));
  v74 = vpaddq_s32(v73, v73).u64[0];
  v75.i64[0] = v74;
  v75.i64[1] = HIDWORD(v74);
  v76 = v75;
  v77 = vaddvq_s64(v75);
  v78 = v77 + v69;
  if (v77 <= 0x80 && v14 >= v78)
  {
    v81 = v69 & 0x3F;
    v82 = vaddq_s64(vzip1q_s64(0, v76), vdupq_n_s64(v81));
    v83 = (v11 + 8 * (v69 >> 6));
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
    if (v77 + v81 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v80);
    }

    v69 = v78;
  }

  else
  {
    v29 = 1;
    v80 = 0uLL;
  }

  v84.i64[0] = 0xFFFF0000FFFFLL;
  v84.i64[1] = 0xFFFF0000FFFFLL;
  v85 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v86 = vpaddq_s32(v85, v85).u64[0];
  v87.i64[0] = v86;
  v87.i64[1] = HIDWORD(v86);
  v88 = v87;
  v89 = vaddvq_s64(v87);
  if (v89 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v90 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
    v91.i64[0] = v90.u32[0];
    v91.i64[1] = v90.u32[1];
    v92 = v91;
    v93 = vandq_s8(v46, v84);
    v94 = v89 + v69;
    if (v14 >= v89 + v69)
    {
      v95 = v69 & 0x3F;
      v96 = vaddq_s64(vzip1q_s64(0, v88), vdupq_n_s64(v95));
      v97 = (v11 + 8 * (v69 >> 6));
      v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v96)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v96)));
      if (v89 + v95 >= 0x81)
      {
        v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v96)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v96))), v71);
      }

      v69 = v94;
    }

    else
    {
      v29 = 1;
    }

    v98 = vshlq_u64(v71, vnegq_s64(v92));
    v99 = vuzp1q_s32(vzip1q_s64(v71, v98), vzip2q_s64(v71, v98));
    v100 = vshlq_u32(v99, vnegq_s32(v93));
    v71 = vuzp1q_s16(vzip1q_s32(v99, v100), vzip2q_s32(v99, v100));
  }

  v185 = v9;
  v186 = v8;
  v101 = vmovl_u16(*&vpaddq_s16(v47, v47));
  v102 = vpaddq_s32(v101, v101).u64[0];
  v103.i64[0] = v102;
  v103.i64[1] = HIDWORD(v102);
  v104 = v103;
  v105 = vaddvq_s64(v103);
  if (v105 >= 0x81)
  {
    v29 = 1;
    v112 = 0uLL;
  }

  else
  {
    v106 = vzip1_s32(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
    v107.i64[0] = v106.u32[0];
    v107.i64[1] = v106.u32[1];
    v108 = v107;
    v109 = vandq_s8(v47, v84);
    v110 = v105 + v69;
    if (v14 >= v105 + v69)
    {
      v113 = v69 & 0x3F;
      v114 = vaddq_s64(vzip1q_s64(0, v104), vdupq_n_s64(v113));
      v115 = (v11 + 8 * (v69 >> 6));
      v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
      if (v105 + v113 >= 0x81)
      {
        v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v111);
      }

      v69 = v110;
    }

    else
    {
      v111 = 0uLL;
      v29 = 1;
    }

    v116 = vshlq_u64(v111, vnegq_s64(v108));
    v117 = vuzp1q_s32(vzip1q_s64(v111, v116), vzip2q_s64(v111, v116));
    v118 = vshlq_u32(v117, vnegq_s32(v109));
    v112 = vuzp1q_s16(vzip1q_s32(v117, v118), vzip2q_s32(v117, v118));
  }

  v119 = vmovl_u16(*&vpaddq_s16(v48, v48));
  v120 = vpaddq_s32(v119, v119).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  if (v123 >= 0x81 || v14 < v123 + v69)
  {
    goto LABEL_66;
  }

  v124 = vaddq_s64(vzip1q_s64(0, v122), vdupq_n_s64(v69 & 0x3F));
  v125 = (v11 + 8 * (v69 >> 6));
  v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
  if (v123 + (v69 & 0x3F) >= 0x81)
  {
    v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
  }

  if ((v29 & 1) != 0 || (v127 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v127) - (v123 + v69) >= 9))
  {
LABEL_66:
    v128 = 0;
    v129 = 0;
    v130 = 8 * (&v184 & 7);
    v131 = 16;
    do
    {
      v132 = 64 - v130;
      if (64 - v130 >= v131)
      {
        v132 = v131;
      }

      *&v183[8 * v128] |= ((0xFFFFFFFFFFFFFFFFLL >> v129) & ~(-1 << v132)) << v130;
      v129 += v132;
      v133 = v132 + v130;
      v128 += v133 >> 6;
      v130 = v133 & 0x3F;
      v131 -= v132;
    }

    while (v131);
    v127 = 0;
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
  }

  else
  {
    v135 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v136 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
    v137.i64[0] = v135.u32[0];
    v137.i64[1] = v135.u32[1];
    v138 = v137;
    v137.i64[0] = v136.u32[0];
    v137.i64[1] = v136.u32[1];
    v139 = vshlq_u64(v54, vnegq_s64(v138));
    v140 = vshlq_u64(v80, vnegq_s64(v137));
    v141 = vuzp1q_s32(vzip1q_s64(v54, v139), vzip2q_s64(v54, v139));
    v142 = vuzp1q_s32(vzip1q_s64(v80, v140), vzip2q_s64(v80, v140));
    v143 = vshlq_u32(v141, vnegq_s32((*&v55 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
    v144 = vshlq_u32(v142, vnegq_s32(vandq_s8(v72, v84)));
    v145 = vzip2q_s32(v141, v143);
    v146 = vzip1q_s32(v141, v143);
    v143.i64[0] = 0x10001000100010;
    v143.i64[1] = 0x10001000100010;
    v147 = vzip2q_s32(v142, v144);
    v148 = vzip1q_s32(v142, v144);
    v144.i64[0] = 0x10001000100010;
    v144.i64[1] = 0x10001000100010;
    v149 = v13 >> 6;
    v150 = vuzp1q_s16(v146, v145);
    v145.i64[0] = 0xF000F000F000FLL;
    v145.i64[1] = 0xF000F000F000FLL;
    v151 = vuzp1q_s16(v148, v147);
    v147.i64[0] = 0xF000F000F000FLL;
    v147.i64[1] = 0xF000F000F000FLL;
    v152 = vzip1_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
    v153.i64[0] = 0xFFFF0000FFFFLL;
    v153.i64[1] = 0xFFFF0000FFFFLL;
    v154.i64[0] = 0xF000F000F000FLL;
    v154.i64[1] = 0xF000F000F000FLL;
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    v137.i64[0] = v152.u32[0];
    v137.i64[1] = v152.u32[1];
    v156 = vshlq_s16(vshlq_s16(v150, vsubq_s16(v143, v55)), vaddq_s16(v55, v145));
    v157 = vshlq_s16(vshlq_s16(v151, vsubq_s16(v144, v72)), vaddq_s16(v72, v147));
    v158 = vshlq_s16(vshlq_s16(v71, vsubq_s16(v144, v46)), vaddq_s16(v46, v147));
    v159 = vshlq_s16(vshlq_s16(v112, vsubq_s16(v144, v47)), vaddq_s16(v47, v147));
    v160 = vshlq_u64(v126, vnegq_s64(v137));
    v161 = vuzp1q_s32(vzip1q_s64(v126, v160), vzip2q_s64(v126, v160));
    v162 = vshlq_u32(v161, vnegq_s32(vandq_s8(v48, v153)));
    v163 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v161, v162), vzip2q_s32(v161, v162)), vsubq_s16(v155, v48)), vaddq_s16(v48, v154));
    if (v64 == 2)
    {
      v164.i64[0] = 0xFFFFFFFF00000000;
      v164.i64[1] = 0xFFFFFFFF00000000;
      v165 = vmlal_s8(vandq_s8(vdupq_n_s16(v68), v164), vdup_n_s8(v66), 0x302030201000100);
      v157 = vaddq_s16(v157, v165);
      v158 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v68), v165), v158);
      v159 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66), v165), v159);
      v163 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66 + 2 * v68), v165), v163);
    }

    v166 = vdupq_n_s16(v149);
    v167 = vaddq_s16(vandq_s8(v156, v49), v157);
    v168 = vdupq_lane_s16(*v156.i8, 0);
    v169 = vsubq_s16(v167, vandq_s8(v168, v49));
    v170 = vsubq_s16(v158, vandq_s8(v168, v50));
    v171 = vsubq_s16(v159, vandq_s8(v168, v51));
    v172 = vsubq_s16(v163, vandq_s8(v168, v52));
    v173.i64[0] = 0x1000100010001;
    v173.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v173)))
    {
      v174 = *&v16 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
      v175 = vnegq_s16(v174);
      v176 = v169;
      v176.i16[0] = v169.i16[7];
      v176.i16[7] = v169.i16[0];
      v177 = vorrq_s8(vandq_s8(v176, v175), vandq_s8(v169, vceqzq_s16(v174)));
      v178 = vaddq_s16(vandq_s8(vqtbl1q_s8(v177, xmmword_29D2F0E60), v175), v177);
      v169 = vaddq_s16(vandq_s8(vqtbl1q_s8(v178, xmmword_29D2F0E70), v175), v178);
      v179 = vaddq_s16(vandq_s8(vqtbl1q_s8(v170, xmmword_29D2F0E80), v175), v170);
      v170 = vaddq_s16(vandq_s8(vqtbl1q_s8(v179, xmmword_29D2F0E90), v175), v179);
      v180 = vaddq_s16(vandq_s8(vqtbl1q_s8(v171, xmmword_29D2F0EA0), v175), v171);
      v171 = vaddq_s16(vandq_s8(vqtbl1q_s8(v180, xmmword_29D2F0EB0), v175), v180);
      v181 = vaddq_s16(vandq_s8(vqtbl1q_s8(v172, xmmword_29D2F0EC0), v175), v172);
      v172 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_29D2F0ED0), v175), v181);
    }

    *a1 = vaddq_s16(v166, v169);
    a1[1] = vaddq_s16(v170, v166);
    v182 = (a1 + a2);
    *v182 = vaddq_s16(v171, v166);
    v182[1] = vaddq_s16(v172, v166);
  }

  return v127;
}

int16x8_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v22, a5);
  }

  v20 = v22;
  v21 = v23;
  v10 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v22, a5);
  }

  v18 = v22;
  v19 = v23;
  v11 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v22, a5);
  }

  v16 = v22;
  v17 = v23;
  v12 = a3 + 24;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v22, a5);
  }

  result = vuzp1q_s16(v16, v17);
  v14 = (a1 + a2);
  v15 = vuzp1q_s16(v22, v23);
  *a1 = vuzp1q_s16(v20, v21);
  a1[1] = vuzp1q_s16(v18, v19);
  *v14 = result;
  v14[1] = v15;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, int16x4_t a8, int16x4_t a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = v17 - 2;
  if (v17 >= 3 && v16)
  {
    if (v16 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v16;
    }

    if (v22 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v17 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 1, v21 + 32, a2, v24, v23, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v25 = 2 * a2;
  v26 = v16 - 2;
  if (v17 && v16 >= 3)
  {
    if (v26 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v16 - 2;
    }

    if (v17 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 2, v21 + v25, a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v17 < 3 || v16 < 3)
  {
    a4[3] = 0;
  }

  else
  {
    if (v26 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v16 - 2;
    }

    if (v22 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v17 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 3, v21 + v25 + 32, a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  v31 = v17 - 4;
  if (v17 >= 5 && v16)
  {
    if (v16 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v16;
    }

    if (v31 >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 4, v21 + 64, a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v34 = v17 - 6;
  if (v17 >= 7 && v16)
  {
    if (v16 >= 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v16;
    }

    if (v34 >= 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = v17 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 5, v21 + 96, a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[5] = 0;
    if (v17 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v16 >= 3)
  {
    if (v26 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v16 - 2;
    }

    if (v31 >= 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = v17 - 4;
    }

    v39 = 2 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 6, v21 + 2 * a2 + 64, a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v39 = 2 * a2;
  if (v17 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v16 < 3)
  {
    goto LABEL_79;
  }

  if (v26 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v16 - 2;
  }

  if (v34 >= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = v17 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 7, v21 + v39 + 96, a2, v41, v40, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v27 = (8 * (a3 & 7)) | 0x400;
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

  v298 = v11;
  v299 = v10;
  v300 = v9;
  v301 = v8;
  v302 = v7;
  v303 = v6;
  v304 = v5;
  v305 = v4;
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

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 1024 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v296 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v296[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
      v144 += v147;
      v148 = v147 + v145;
      v143 += v148 >> 6;
      v145 = v148 & 0x3F;
      v146 -= v147;
    }

    while (v146);
LABEL_90:
    v142 = 0;
    v149 = (a1 + a2);
    *a1 = 0u;
    a1[1] = 0u;
    v150 = (a1 + 2 * a2);
    *v149 = 0u;
    v149[1] = 0u;
    v151 = (a1 + 2 * a2 + a2);
    *v150 = 0u;
    v150[1] = 0u;
    *v151 = 0u;
    v151[1] = 0u;
    return v142;
  }

  if (v75 == 2)
  {
    v153 = 0;
    v154 = 0;
    v155 = 8 * (&v297 & 7);
    v156 = 16;
    do
    {
      v157 = 64 - v155;
      if (64 - v155 >= v156)
      {
        v157 = v156;
      }

      *&v296[8 * v153] |= ((0xFFFFFFFFFFFFFFFFLL >> v154) & ~(-1 << v157)) << v155;
      v154 += v157;
      v158 = v157 + v155;
      v153 += v158 >> 6;
      v155 = v158 & 0x3F;
      v156 -= v157;
    }

    while (v156);
    goto LABEL_90;
  }

  v159 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v160 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v161 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v162 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v163.i64[0] = v159.u32[0];
  v163.i64[1] = v159.u32[1];
  v164 = v163;
  v163.i64[0] = v160.u32[0];
  v163.i64[1] = v160.u32[1];
  v165 = v163;
  v163.i64[0] = v161.u32[0];
  v163.i64[1] = v161.u32[1];
  v166 = v163;
  v163.i64[0] = v162.u32[0];
  v163.i64[1] = v162.u32[1];
  v167 = vnegq_s64(v164);
  v168 = vnegq_s64(v165);
  v169 = vnegq_s64(v166);
  v170 = vnegq_s64(v163);
  v171 = vshlq_u64(v63, v167);
  v172 = vshlq_u64(v108, v168);
  v173 = vshlq_u64(v106, v168);
  v174 = vshlq_u64(v125, v169);
  v175 = vshlq_u64(v121, v169);
  v176 = vshlq_u64(v138, v170);
  v177 = vzip2q_s64(v63, v171);
  v178 = vzip1q_s64(v63, v171);
  v179 = vzip2q_s64(v108, v172);
  v180 = vzip1q_s64(v108, v172);
  v181 = vzip2q_s64(v106, v173);
  v182 = vzip1q_s64(v106, v173);
  v183 = vzip2q_s64(v125, v174);
  v184 = vzip1q_s64(v125, v174);
  v185 = vzip2q_s64(v121, v175);
  v186 = vzip1q_s64(v121, v175);
  v187 = vzip2q_s64(v138, v176);
  v188 = vzip1q_s64(v138, v176);
  v189 = vuzp1q_s32(v178, v177);
  v190 = vuzp1q_s32(v180, v179);
  v191 = vuzp1q_s32(v182, v181);
  v178.i64[0] = 0xFFFF0000FFFFLL;
  v178.i64[1] = 0xFFFF0000FFFFLL;
  v192 = vuzp1q_s32(v184, v183);
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v193 = vnegq_s32(vandq_s8(v64, v178));
  v194 = vnegq_s32(vandq_s8(v55, v180));
  v195 = vuzp1q_s32(v186, v185);
  v196 = vuzp1q_s32(v188, v187);
  v197 = vshlq_u32(v189, v193);
  v198 = vshlq_u32(v190, v194);
  v199 = vshlq_u32(v191, v194);
  v194.i64[0] = 0x10001000100010;
  v194.i64[1] = 0x10001000100010;
  v188.i64[0] = 0xF000F000F000FLL;
  v188.i64[1] = 0xF000F000F000FLL;
  v200 = vsubq_s16(v194, v64);
  v201 = vaddq_s16(v64, v188);
  v188.i64[0] = 0x10001000100010;
  v188.i64[1] = 0x10001000100010;
  v202 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v189, v197), vzip2q_s32(v189, v197)), v200);
  v200.i64[0] = 0xF000F000F000FLL;
  v200.i64[1] = 0xF000F000F000FLL;
  v203 = vsubq_s16(v188, v55);
  v204 = vaddq_s16(v55, v200);
  v200.i64[0] = 0xFFFF0000FFFFLL;
  v200.i64[1] = 0xFFFF0000FFFFLL;
  v205 = vnegq_s32(vandq_s8(v56, v200));
  v206 = vshlq_s16(v202, v201);
  v207 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v190, v198), vzip2q_s32(v190, v198)), v203), v204);
  v208 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v191, v199), vzip2q_s32(v191, v199)), v203), v204);
  v209 = vdupq_lane_s32(*v206.i8, 0);
  v210 = vandq_s8(v59, v209);
  v211 = vsubq_s16(v207, v210);
  v212 = vsubq_s16(v208, v210);
  v213 = vshlq_u32(v192, v205);
  v214 = vshlq_u32(v195, v205);
  v215 = vzip2q_s32(v192, v213);
  v216 = vzip1q_s32(v192, v213);
  v217 = vzip2q_s32(v195, v214);
  v218 = vzip1q_s32(v195, v214);
  v214.i64[0] = 0x10001000100010;
  v214.i64[1] = 0x10001000100010;
  v219 = vuzp1q_s16(v218, v217);
  v217.i64[0] = 0xF000F000F000FLL;
  v217.i64[1] = 0xF000F000F000FLL;
  v220 = vsubq_s16(v214, v56);
  v221 = vaddq_s16(v56, v217);
  v217.i64[0] = 0xFFFF0000FFFFLL;
  v217.i64[1] = 0xFFFF0000FFFFLL;
  v222 = vnegq_s32(vandq_s8(v57, v217));
  v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(v216, v215), v220), v221);
  v224 = vshlq_s16(vshlq_s16(v219, v220), v221);
  v225 = vandq_s8(v60, v209);
  v226 = vsubq_s16(v223, v225);
  v227 = vsubq_s16(v224, v225);
  v228 = vshlq_u32(v196, v222);
  v229 = vzip2q_s32(v196, v228);
  v230 = vzip1q_s32(v196, v228);
  v228.i64[0] = 0x10001000100010;
  v228.i64[1] = 0x10001000100010;
  v231 = vuzp1q_s16(v230, v229);
  v229.i64[0] = 0xF000F000F000FLL;
  v229.i64[1] = 0xF000F000F000FLL;
  v232 = vsubq_s16(v228, v57);
  v233 = vaddq_s16(v57, v229);
  v234 = vshlq_u64(v141, v170);
  v235 = vuzp1q_s32(vzip1q_s64(v141, v234), vzip2q_s64(v141, v234));
  v236 = vshlq_u32(v235, v222);
  v237 = vshlq_s16(vshlq_s16(v231, v232), v233);
  v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v235, v236), vzip2q_s32(v235, v236)), v232), v233);
  v239 = vandq_s8(v61, v209);
  v240 = vsubq_s16(v237, v239);
  v241 = vsubq_s16(v238, v239);
  v242 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v243 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v163.i64[0] = v242.u32[0];
  v163.i64[1] = v242.u32[1];
  v244 = v163;
  v163.i64[0] = v243.u32[0];
  v163.i64[1] = v243.u32[1];
  v245 = vshlq_u64(v86, vnegq_s64(v244));
  v246 = vshlq_u64(v77, vnegq_s64(v163));
  v247 = vzip2q_s64(v86, v245);
  v248 = vzip1q_s64(v86, v245);
  v249 = vzip2q_s64(v77, v246);
  v250 = vzip1q_s64(v77, v246);
  v246.i64[0] = 0xFFFF0000FFFFLL;
  v246.i64[1] = 0xFFFF0000FFFFLL;
  v251 = vuzp1q_s32(v248, v247);
  v252 = vuzp1q_s32(v250, v249);
  v253 = vnegq_s32(vandq_s8(v54, v246));
  v254 = vshlq_u32(v251, vnegq_s32(vandq_s8(v78, v246)));
  v255 = vshlq_u32(v252, v253);
  v256 = vzip2q_s32(v251, v254);
  v257 = vzip1q_s32(v251, v254);
  v258 = vzip2q_s32(v252, v255);
  v259 = vzip1q_s32(v252, v255);
  v255.i64[0] = 0x10001000100010;
  v255.i64[1] = 0x10001000100010;
  v260 = vuzp1q_s16(v259, v258);
  v258.i64[0] = 0xF000F000F000FLL;
  v258.i64[1] = 0xF000F000F000FLL;
  v261 = vaddq_s16(vandq_s8(v206, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v257, v256), vsubq_s16(v255, v78)), vaddq_s16(v78, v258)));
  v262 = vandq_s8(v58, v209);
  v263.i64[0] = 0x1000100010001;
  v263.i64[1] = 0x1000100010001;
  v264 = vceqq_s16(v29, v263);
  v265 = vaddvq_s16(v264);
  v266 = vsubq_s16(v261, v262);
  v267 = vsubq_s16(vshlq_s16(vshlq_s16(v260, vsubq_s16(v255, v54)), vaddq_s16(v54, v258)), v262);
  v264.i32[0] = v24;
  v268 = vdupq_lane_s32(*v264.i8, 0);
  if (v265)
  {
    v269 = vnegq_s16(vandq_s8(v25, v263));
    v270 = v267;
    v270.i32[3] = v266.i32[0];
    v271 = v266;
    v271.i32[0] = v267.i32[3];
    v306.val[0] = vbslq_s8(v269, v271, v266);
    v306.val[1] = vbslq_s8(v269, v270, v267);
    v270.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v270.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v306, xmmword_29D2F0F80), v269), v306.val[0]);
    v307.val[1] = vaddq_s16(v306.val[1], vandq_s8(vqtbl2q_s8(v306, v270), v269));
    v266 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0F90), v269), v307.val[0]);
    v267 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, v270), v269));
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FA0), v269), v211);
    v307.val[1] = vaddq_s16(v212, vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FB0), v269));
    v211 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0FC0), v269), v307.val[0]);
    v212 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, v270), v269));
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0FD0), v269), v226);
    v307.val[1] = vaddq_s16(v227, vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0F80), v269));
    v226 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, v270), v269), v307.val[0]);
    v227 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0FE0), v269));
    v306.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0FF0), v269), v240);
    v306.val[1] = vaddq_s16(v241, vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0F80), v269));
    v240 = vaddq_s16(vandq_s8(vqtbl2q_s8(v306, v270), v269), v306.val[0]);
    v241 = vaddq_s16(v306.val[1], vandq_s8(vqtbl2q_s8(v306, xmmword_29D2F1000), v269));
  }

  v272 = vaddq_s16(v266, v268);
  v273 = vaddq_s16(v267, v268);
  v274 = vaddq_s16(v211, v268);
  v275 = vaddq_s16(v212, v268);
  v276 = vaddq_s16(v226, v268);
  v277 = vaddq_s16(v227, v268);
  v278 = vaddq_s16(v240, v268);
  v279 = vaddq_s16(v241, v268);
  v280.i64[0] = 0x10001000100010;
  v280.i64[1] = 0x10001000100010;
  v281 = vceqzq_s16(vandq_s8(v25, v280));
  v282 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v281), v272);
  v283 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v281), v273);
  v284 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v281), v274);
  v285 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v281), v275);
  v286 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v281), v276);
  v287 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1080), v281), v277);
  v288 = vzip2q_s64(v282, v283);
  *&v289 = v282.i64[0];
  *(&v289 + 1) = v283.i64[0];
  *&v290 = v286.i64[0];
  *(&v290 + 1) = v287.i64[0];
  v291 = (a1 + a2);
  *a1 = v289;
  a1[1] = v290;
  v292 = (a1 + 2 * a2);
  v293 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1080), v281), v278);
  v294 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1080), v281), v279);
  *v291 = v288;
  v291[1] = vzip2q_s64(v286, v287);
  v287.i64[0] = v284.i64[0];
  v287.i64[1] = v285.i64[0];
  v278.i64[0] = v293.i64[0];
  v278.i64[1] = v294.i64[0];
  *v292 = v287;
  v292[1] = v278;
  v295 = (v292 + a2);
  *v295 = vzip2q_s64(v284, v285);
  v295[1] = vzip2q_s64(v293, v294);
  return v142;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip1q_s64(v7, v9);
  v12 = vzip2q_s64(v7, v9);
  v14 = *v6;
  v15 = v6[1];
  v13 = (v6 + a4);
  v16 = v13[1];
  v17 = vzip2q_s64(v14, *v13);
  v18 = vzip1q_s64(v15, v16);
  v19 = vzip2q_s64(v15, v16);
  v20 = vdupq_lane_s32(*v10.i8, 0);
  v21 = vsubq_s16(v10, v20);
  v493 = v10;
  v494 = vzip2q_s64(*a3, v8);
  v22 = vsubq_s16(v494, v20);
  v491 = vzip1q_s64(v14, *v13);
  v23 = vsubq_s16(v491, v20);
  v24 = vsubq_s16(v17, v20);
  v25 = vsubq_s16(v11, v20);
  v26 = vsubq_s16(v12, v20);
  v27 = vsubq_s16(v18, v20);
  v28 = vsubq_s16(v19, v20);
  v29 = vqtbl1q_s8(vmaxq_s16(v21, v22), xmmword_29D2F1090);
  v30 = vqtbl1q_s8(vminq_s16(v21, v22), xmmword_29D2F1090);
  v31 = vpmaxq_s16(v29, v29);
  v32 = vpminq_s16(v30, v30);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35.i64[0] = 0x8000800080008000;
  v35.i64[1] = 0x8000800080008000;
  v36 = vmaxq_s16(v33, v35);
  v37.i64[0] = 0x8000800080008000;
  v37.i64[1] = 0x8000800080008000;
  v38 = vminq_s16(v34, v37);
  v39 = vzip1q_s16(v33, v34);
  v40.i64[0] = 0x10001000100010;
  v40.i64[1] = 0x10001000100010;
  v41 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v39)), vceqzq_s16(v39));
  v42 = vpmaxq_s16(v41, v41);
  v43 = vqtbl1q_s8(vmaxq_s16(v23, v24), xmmword_29D2F1090);
  v44 = vqtbl1q_s8(vminq_s16(v23, v24), xmmword_29D2F1090);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v36, v47);
  v50 = vminq_s16(v38, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vqtbl1q_s8(vmaxq_s16(v25, v26), xmmword_29D2F1090);
  v55 = vqtbl1q_s8(vminq_s16(v25, v26), xmmword_29D2F1090);
  v56 = vpmaxq_s16(v54, v54);
  v57 = vpminq_s16(v55, v55);
  v58 = vpmaxq_s16(v56, v56);
  v59 = vpminq_s16(v57, v57);
  v60 = vmaxq_s16(v49, v58);
  v61 = vminq_s16(v50, v59);
  v62 = vzip1q_s16(v58, v59);
  v63 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v62)), vceqzq_s16(v62));
  v64 = vpmaxq_s16(v63, v63);
  v65 = vqtbl1q_s8(vmaxq_s16(v27, v28), xmmword_29D2F1090);
  v66 = vqtbl1q_s8(vminq_s16(v27, v28), xmmword_29D2F1090);
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
  v80 = vmaxvq_s16(v79);
  v82 = a5 < 4 || a6 < 2;
  if (v80)
  {
    v476 = v17;
    v477 = v19;
    v481 = v18;
    v478 = v12;
    v482 = v11;
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v84.i64[0] = 0xF000F000F000FLL;
    v84.i64[1] = 0xF000F000F000FLL;
    v472 = vsubq_s16(vshlq_s16(v83, vsubq_s16(v84, v77)), v72);
    v85 = vcgtq_s16(v76, v78);
    v86.i64[0] = 0x8000800080008;
    v86.i64[1] = 0x8000800080008;
    v87 = vandq_s8(v85, v86);
    v86.i64[0] = 0x3000300030003;
    v86.i64[1] = 0x3000300030003;
    v479 = vorrq_s8(vandq_s8(vceqzq_s16(v79), v86), v87);
    v470 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v42), v86), 0);
    v471 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v53), v86), 0);
    v88 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v64), v86), 0);
    v89 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v75), v86), 0);
    v90.i64[0] = 0x4000400040004;
    v90.i64[1] = 0x4000400040004;
    v91 = vbicq_s8(v90, vceqq_s16(vaddq_s16(v89, v88), vnegq_s16(vaddq_s16(v470, v471))));
    v92 = vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080));
    v474 = v23;
    v483 = v24;
    v93 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
    v487 = v25;
    v94 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
    v95 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
    v492 = v21;
    v96 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
    v97 = vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080));
    v468 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
    v469 = v92;
    v98 = vqtbl1q_s8(vmaxq_s16(v92, v468), xmmword_29D2F1090);
    v99 = vqtbl1q_s8(vminq_s16(v92, v468), xmmword_29D2F1090);
    v100 = vpmaxq_s16(v98, v98);
    v101 = vpminq_s16(v99, v99);
    v102 = vpmaxq_s16(v100, v100);
    v103 = vpminq_s16(v101, v101);
    v104 = vmaxq_s16(v102, v35);
    v105 = vminq_s16(v103, v37);
    v106 = vzip1q_s16(v102, v103);
    v107 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v106)), vceqzq_s16(v106));
    v108 = vpmaxq_s16(v107, v107);
    v467 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
    v109 = vqtbl1q_s8(vmaxq_s16(v467, v93), xmmword_29D2F1090);
    v110 = vqtbl1q_s8(vminq_s16(v467, v93), xmmword_29D2F1090);
    v111 = vpmaxq_s16(v109, v109);
    v112 = vpminq_s16(v110, v110);
    v113 = vpmaxq_s16(v111, v111);
    v114 = vpminq_s16(v112, v112);
    v115 = vmaxq_s16(v104, v113);
    v116 = vminq_s16(v105, v114);
    v117 = vzip1q_s16(v113, v114);
    v118 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v117)), vceqzq_s16(v117));
    v489 = v27;
    v119 = vpmaxq_s16(v118, v118);
    v120 = vqtbl1q_s8(vmaxq_s16(v94, v95), xmmword_29D2F1090);
    v121 = vqtbl1q_s8(vminq_s16(v94, v95), xmmword_29D2F1090);
    v122 = vpmaxq_s16(v120, v120);
    v123 = vpminq_s16(v121, v121);
    v124 = vpmaxq_s16(v122, v122);
    v125 = vpminq_s16(v123, v123);
    v126 = vmaxq_s16(v115, v124);
    v127 = vminq_s16(v116, v125);
    v128 = vzip1q_s16(v124, v125);
    v129 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v128)), vceqzq_s16(v128));
    v485 = v26;
    v130 = vpmaxq_s16(v129, v129);
    v131 = vqtbl1q_s8(vmaxq_s16(v96, v97), xmmword_29D2F1090);
    v132 = vqtbl1q_s8(vminq_s16(v96, v97), xmmword_29D2F1090);
    v133 = vpmaxq_s16(v131, v131);
    v134 = vpminq_s16(v132, v132);
    v135 = vpmaxq_s16(v133, v133);
    v136 = vpminq_s16(v134, v134);
    v137 = vmaxq_s16(v126, v135);
    v138 = vminq_s16(v127, v136);
    v139 = vzip1q_s16(v135, v136);
    v140 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v139)), vceqzq_s16(v139));
    v141 = vpmaxq_s16(v140, v140);
    v142 = v28;
    v143 = vmaxq_s16(vmaxq_s16(v108, v119), vmaxq_s16(v130, v141));
    v144 = vclzq_s16(vsubq_s16(v137, v138));
    v145 = vsubq_s16(v40, v144);
    v146 = vcgtq_s16(v143, v145);
    v147 = vminq_s16(v145, v143);
    v143.i64[0] = 0x18001800180018;
    v143.i64[1] = 0x18001800180018;
    v148 = vbslq_s8(v146, v143, v40);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v108), v86), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v119), v86), 0);
    v151 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v130), v86), 0);
    v152 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v141), v86), 0);
    v153 = vsubq_s16(v147, v149);
    v154 = vsubq_s16(v147, v150);
    v155 = vsubq_s16(v147, v151);
    v156 = vsubq_s16(v147, v152);
    v157 = vbicq_s8(v90, vceqq_s16(vaddq_s16(v152, v151), vnegq_s16(vaddq_s16(v149, v150))));
    v151.i64[0] = 0x7000700070007;
    v151.i64[1] = 0x7000700070007;
    v158 = vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v147, vceqzq_s16((*&v148 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v153, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v155, v154), v156), 3uLL)), vaddq_s16(v157, v157));
    v159 = vandq_s8(v472, v85);
    v160 = vsubq_s16(v79, v470);
    v161 = vsubq_s16(v79, v471);
    v162 = vsubq_s16(v79, v88);
    v163 = vsubq_s16(v79, v89);
    v164 = vaddq_s16(vmlaq_s16(vandq_s8(v79, v85), v160, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v163), 3uLL));
    v165 = vorrq_s8(v91, v479);
    v166 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v164, vaddq_s16(v91, v91)), v158), 0);
    if (vaddvq_s16(v166))
    {
      v167.i64[0] = 0x3000300030003;
      v167.i64[1] = 0x3000300030003;
      v168 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v147), v167), v148), v157);
      v167.i64[0] = 0xF000F000F000FLL;
      v167.i64[1] = 0xF000F000F000FLL;
      v169.i64[0] = -1;
      v169.i64[1] = -1;
      v170 = vandq_s8(vsubq_s16(vshlq_s16(v169, vsubq_s16(v167, v144)), v138), v146);
      v20 = vbslq_s8(v166, vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F1080)), v20);
      v492 = vbslq_s8(v166, v469, v492);
      v480 = vbslq_s8(v166, v468, v22);
      v171 = vbslq_s8(v166, v467, v474);
      v172 = vbslq_s8(v166, v93, v483);
      v173 = vbslq_s8(v166, v95, v485);
      v174 = vbslq_s8(v166, v96, v489);
      v142 = vbslq_s8(v166, v97, v142);
      v160 = vbslq_s8(v166, v153, v160);
      v161 = vbslq_s8(v166, v154, v161);
      v162 = vbslq_s8(v166, v155, v162);
      v163 = vbslq_s8(v166, v156, v163);
      v159 = vbslq_s8(v166, v170, v159);
      v79 = vbslq_s8(v166, v147, v79);
      v165 = vbslq_s8(v166, v168, v165);
      v175 = vbslq_s8(v166, v94, v487);
    }

    else
    {
      v480 = v22;
      v175 = v487;
      v174 = v489;
      v172 = v483;
      v173 = v485;
      v171 = v474;
    }

    v178 = v493;
    v179 = v494;
    if (v82)
    {
      v180 = v161;
    }

    else
    {
      v484 = v172;
      v486 = v173;
      v488 = v175;
      v490 = v174;
      v181 = v171;
      v473 = v142;
      v475 = v159;
      v189 = vsubq_s16(v493, vqtbl2q_s8(*v178.i8, xmmword_29D2F0F80));
      v182 = vsubq_s16(v494, vqtbl2q_s8(*v178.i8, xmmword_29D2F1030));
      v495.val[0] = v491;
      v495.val[1] = v476;
      v495.val[1].i32[3] = v494.i32[3];
      v183 = vsubq_s16(v491, vqtbl2q_s8(v495, xmmword_29D2F0FA0));
      v184 = vsubq_s16(v476, vqtbl2q_s8(v495, xmmword_29D2F1040));
      v495.val[0] = v482;
      v495.val[1] = v478;
      v495.val[1].i32[3] = v494.i32[3];
      v185 = vsubq_s16(v482, vqtbl2q_s8(v495, xmmword_29D2F1050));
      v186 = vsubq_s16(v478, vqtbl2q_s8(v495, xmmword_29D2F0F80));
      v495.val[0] = v481;
      v495.val[1] = v477;
      v495.val[1].i32[3] = v494.i32[3];
      v187 = vsubq_s16(v481, vqtbl2q_s8(v495, xmmword_29D2F1060));
      v188 = v182;
      v188.i32[3] = v189.i32[0];
      v189.i32[0] = v182.i32[3];
      v190 = vsubq_s16(v477, vqtbl2q_s8(v495, xmmword_29D2F0F80));
      v191 = vqtbl1q_s8(vmaxq_s16(v189, v188), xmmword_29D2F1090);
      v192 = vqtbl1q_s8(vminq_s16(v189, v188), xmmword_29D2F1090);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195 = vpmaxq_s16(v193, v193);
      v196 = vpminq_s16(v194, v194);
      v495.val[0].i64[0] = 0x8000800080008000;
      v495.val[0].i64[1] = 0x8000800080008000;
      v495.val[0] = vmaxq_s16(v195, v495.val[0]);
      v495.val[1].i64[0] = 0x8000800080008000;
      v495.val[1].i64[1] = 0x8000800080008000;
      v495.val[1] = vminq_s16(v196, v495.val[1]);
      v197 = vzip1q_s16(v195, v196);
      v195.i64[0] = 0x10001000100010;
      v195.i64[1] = 0x10001000100010;
      v198 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v197)), vceqzq_s16(v197));
      v199 = vpmaxq_s16(v198, v198);
      v200 = vqtbl1q_s8(vmaxq_s16(v183, v184), xmmword_29D2F1090);
      v201 = vqtbl1q_s8(vminq_s16(v183, v184), xmmword_29D2F1090);
      v202 = vpmaxq_s16(v200, v200);
      v203 = vpminq_s16(v201, v201);
      v204 = vpmaxq_s16(v202, v202);
      v205 = vpminq_s16(v203, v203);
      v495.val[0] = vmaxq_s16(v495.val[0], v204);
      v495.val[1] = vminq_s16(v495.val[1], v205);
      v206 = vzip1q_s16(v204, v205);
      v207 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v206)), vceqzq_s16(v206));
      v208 = vpmaxq_s16(v207, v207);
      v209 = vqtbl1q_s8(vmaxq_s16(v185, v186), xmmword_29D2F1090);
      v210 = vqtbl1q_s8(vminq_s16(v185, v186), xmmword_29D2F1090);
      v211 = vpmaxq_s16(v209, v209);
      v212 = vpminq_s16(v210, v210);
      v213 = vpmaxq_s16(v211, v211);
      v214 = vpminq_s16(v212, v212);
      v495.val[0] = vmaxq_s16(v495.val[0], v213);
      v495.val[1] = vminq_s16(v495.val[1], v214);
      v215 = vzip1q_s16(v213, v214);
      v216 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v215)), vceqzq_s16(v215));
      v217 = vpmaxq_s16(v216, v216);
      v218 = vqtbl1q_s8(vmaxq_s16(v187, v190), xmmword_29D2F1090);
      v219 = vqtbl1q_s8(vminq_s16(v187, v190), xmmword_29D2F1090);
      v220 = vpmaxq_s16(v218, v218);
      v221 = vpminq_s16(v219, v219);
      v222 = vpmaxq_s16(v220, v220);
      v223 = vpminq_s16(v221, v221);
      v495.val[0] = vmaxq_s16(v495.val[0], v222);
      v224 = vminq_s16(v495.val[1], v223);
      v225 = vzip1q_s16(v222, v223);
      v226 = vbicq_s8(vsubq_s16(v195, vclsq_s16(v225)), vceqzq_s16(v225));
      v227 = vpmaxq_s16(v226, v226);
      v228 = vmaxq_s16(vmaxq_s16(v199, v208), vmaxq_s16(v217, v227));
      v229 = vclzq_s16(vsubq_s16(v495.val[0], v224));
      v495.val[0] = vsubq_s16(v195, v229);
      v230 = vcgtq_s16(v228, v495.val[0]);
      v231 = vminq_s16(v495.val[0], v228);
      v228.i64[0] = 0x3000300030003;
      v228.i64[1] = 0x3000300030003;
      v232 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v199), v228), 0);
      v233 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v208), v228), 0);
      v234 = v162;
      v235 = v163;
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v217), v228), 0);
      v237 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v227), v228), 0);
      v238 = vsubq_s16(v231, v232);
      v239 = vsubq_s16(v231, v233);
      v240 = vsubq_s16(v231, v236);
      v241 = vsubq_s16(v231, v237);
      v242 = vceqq_s16(vaddq_s16(v237, v236), vnegq_s16(vaddq_s16(v232, v233)));
      v237.i64[0] = 0x4000400040004;
      v237.i64[1] = 0x4000400040004;
      v243 = vbicq_s8(v237, v242);
      v227.i64[0] = 0x7000700070007;
      v227.i64[1] = 0x7000700070007;
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      v244.i64[0] = 0x2000200020002;
      v244.i64[1] = 0x2000200020002;
      v245 = vandq_s8(vceqq_s16(vandq_s8(v165, v228), v244), v195);
      v246 = vaddq_s16(vbicq_s8(v79, vceqzq_s16(vandq_s8(v165, v236))), vandq_s8(vaddq_s16(v165, v165), v236));
      v163 = v235;
      v162 = v234;
      v180 = v161;
      v247 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(v246, v245), v160, v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v234, v161), v163), 3uLL)), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v231, v230), v238, v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v240, v239), v241), 3uLL)), vaddq_s16(v243, v243))), 0);
      if (vaddvq_s16(v247))
      {
        v248 = vandq_s8(vceqzq_s16(v231), v244);
        v249.i64[0] = 0x9000900090009;
        v249.i64[1] = 0x9000900090009;
        v250 = vorrq_s8(vorrq_s8(v248, vsubq_s16(vandq_s8(v230, v249), vmvnq_s8(v230))), v243);
        v251.i64[0] = 0xF000F000F000FLL;
        v251.i64[1] = 0xF000F000F000FLL;
        v249.i64[0] = -1;
        v249.i64[1] = -1;
        v252 = vandq_s8(vsubq_s16(vshlq_s16(v249, vsubq_s16(v251, v229)), v224), v230);
        v20.i32[0] = vbslq_s8(v247, vextq_s8(v494, v494, 0xCuLL), v20).u32[0];
        v492 = vbslq_s8(v247, v189, v492);
        v480 = vbslq_s8(v247, v188, v480);
        v171 = vbslq_s8(v247, v183, v181);
        v172 = vbslq_s8(v247, v184, v484);
        v175 = vbslq_s8(v247, v185, v488);
        v173 = vbslq_s8(v247, v186, v486);
        v174 = vbslq_s8(v247, v187, v490);
        v142 = vbslq_s8(v247, v190, v473);
        v160 = vbslq_s8(v247, v238, v160);
        v180 = vbslq_s8(v247, v239, v161);
        v162 = vbslq_s8(v247, v240, v162);
        v163 = vbslq_s8(v247, v241, v163);
        v159 = vbslq_s8(v247, v252, v475);
        v79 = vbslq_s8(v247, v231, v79);
        v165 = vbslq_s8(v247, v250, v165);
      }

      else
      {
        v175 = v488;
        v174 = v490;
        v142 = v473;
        v159 = v475;
        v171 = v181;
        v172 = v484;
        v173 = v486;
      }
    }

    v253.i64[0] = 0x8000800080008;
    v253.i64[1] = 0x8000800080008;
    v254 = vandq_s8(v165, v253);
    v255.i64[0] = 0x3000300030003;
    v255.i64[1] = 0x3000300030003;
    v256.i64[0] = 0x2000200020002;
    v256.i64[1] = 0x2000200020002;
    v257 = vceqq_s16(vandq_s8(v165, v255), v256);
    v256.i64[0] = 0x10001000100010;
    v256.i64[1] = 0x10001000100010;
    v258 = vandq_s8(v257, v256);
    v256.i64[0] = 0x7000700070007;
    v256.i64[1] = 0x7000700070007;
    v259 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v180), v163), 3uLL), v160, v256), vandq_s8(vaddq_s16(v165, v165), v253)), vbicq_s8(v79, vceqzq_s16(v254))), v258);
    if ((vpaddq_s16(v259, v259).i16[0] + 57) > 0x3FF)
    {
      *a1 = v493;
      a1[1] = v494;
      a1[2] = v491;
      a1[3] = v476;
      a1[4] = v482;
      a1[5] = v478;
      v263 = a1 + 6;
      v176 = 127;
      result = 128;
      *v263 = v481;
      v263[1] = v477;
    }

    else
    {
      v260 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v261 = 8 * (a1 & 7);
      if (v261)
      {
        v262 = *v260 & ~(-1 << v261);
      }

      else
      {
        v262 = 0;
      }

      *a2 = 0;
      v264.i32[0] = v79.u16[0];
      v264.i32[1] = v79.u16[1];
      v265 = vshr_n_s32(vshl_n_s32(v264, 0x10uLL), 0x10uLL);
      v266 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v265, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v265)), 0x3C00000003C00);
      v267 = vorr_s8(vdup_lane_s32(v266, 1), v266).u32[0] | v165.i8[0] & 0x1F | (32 * (v165.i8[2] & 0x1F));
      v268 = v262 | (v267 << v261);
      if (v261 >= 0x2E)
      {
        *v260 = v268;
        v268 = v267 >> (-8 * (a1 & 7u));
      }

      v269 = (v261 + 18) & 0x3A;
      v270 = v268 | (v20.u32[0] << v269);
      if (v269 >= 0x20)
      {
        *(v260 + (((v261 + 18) >> 3) & 8)) = v270;
        v270 = v20.u32[0] >> -v269;
      }

      v271 = v261 + 50;
      v272 = vsubq_s16(v79, v160);
      v273 = vsubq_s16(v79, v180);
      v274 = vsubq_s16(v79, v162);
      v275 = vsubq_s16(v79, v163);
      *v272.i8 = vqmovn_u16(v272);
      *v273.i8 = vqmovn_u16(v273);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      v272.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v272, v273), vzip1q_s8(v274, v275)), vzip1q_s16(vtrn2q_s8(v272, v273), vtrn2q_s8(v274, v275))).u64[0];
      v274.i64[0] = 0x202020202020202;
      v274.i64[1] = 0x202020202020202;
      v276 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v165.i8, 0x4000400040004)))), v274);
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
      v291 = (v261 + 50) & 0x3A;
      v292 = (v289.i64[0] << v291) | v270;
      if ((v290.i64[0] + v291) >= 0x40)
      {
        *(v260 + ((v271 >> 3) & 8)) = v292;
        v292 = v289.i64[0] >> -v291;
      }

      v293 = vceqq_s16(v79, v160);
      v294 = v290.i64[0] + v271;
      v295 = v292 | (v289.i64[1] << v294);
      if ((v294 & 0x3F) + v290.i64[1] >= 0x40)
      {
        *(v260 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v295;
        v295 = v289.i64[1] >> -(v294 & 0x3F);
        if ((v294 & 0x3F) == 0)
        {
          v295 = 0;
        }
      }

      v296 = vandq_s8(v159, v293);
      v297 = v294 + v290.i64[1];
      v298.i64[0] = -1;
      v298.i64[1] = -1;
      v299 = vandq_s8(vextq_s8(vtstq_s16(v254, v254), 0, 0xCuLL), v79);
      v300.i64[0] = 0xF000F000F000FLL;
      v300.i64[1] = 0xF000F000F000FLL;
      v301 = vandq_s8(vshlq_u16(v298, vaddq_s16(v299, v300)), v159);
      v302 = vmovl_u16(*v299.i8);
      v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v301.i8), vtrn1q_s32(0, v302)), vmovl_high_u16(v301));
      v304 = vpaddq_s32(v302, vmovl_high_u16(v299));
      v305.i64[0] = v303.u32[0];
      v305.i64[1] = v303.u32[1];
      v306 = v305;
      v305.i64[0] = v303.u32[2];
      v305.i64[1] = v303.u32[3];
      v307 = v305;
      v305.i64[0] = v304.u32[0];
      v305.i64[1] = v304.u32[1];
      v308 = v305;
      v305.i64[0] = v304.u32[2];
      v305.i64[1] = v304.u32[3];
      v309 = vpaddq_s64(vshlq_u64(v306, vzip1q_s64(0, v308)), vshlq_u64(v307, vzip1q_s64(0, v305)));
      v310 = vpaddq_s64(v308, v305);
      v311 = (v309.i64[0] << v297) | v295;
      if (v310.i64[0] + (v297 & 0x3F) >= 0x40)
      {
        *(v260 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        v311 = v309.i64[0] >> -(v297 & 0x3F);
        if ((v297 & 0x3F) == 0)
        {
          v311 = 0;
        }
      }

      v312 = vaddq_s16(v296, v492);
      v313 = v310.i64[0] + v297;
      v314 = v311 | (v309.i64[1] << v313);
      if ((v313 & 0x3F) + v310.i64[1] >= 0x40)
      {
        *(v260 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v309.i64[1] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = v313 + v310.i64[1];
      v316 = vextq_s8(0, v160, 0xCuLL);
      v317.i64[0] = 0xF000F000F000FLL;
      v317.i64[1] = 0xF000F000F000FLL;
      v318.i64[0] = -1;
      v318.i64[1] = -1;
      v319 = vandq_s8(vshlq_u16(v318, vaddq_s16(v316, v317)), v312);
      v320 = vmovl_u16(*v316.i8);
      v321 = vmovl_high_u16(v316);
      v322 = vpaddq_s32(vshlq_u32(vmovl_u16(*v319.i8), vtrn1q_s32(0, v320)), vshlq_u32(vmovl_high_u16(v319), vtrn1q_s32(0, v321)));
      v323 = vpaddq_s32(v320, v321);
      v324.i64[0] = v322.u32[0];
      v324.i64[1] = v322.u32[1];
      v325 = v324;
      v324.i64[0] = v322.u32[2];
      v324.i64[1] = v322.u32[3];
      v326 = v324;
      v324.i64[0] = v323.u32[0];
      v324.i64[1] = v323.u32[1];
      v327 = v324;
      v324.i64[0] = v323.u32[2];
      v324.i64[1] = v323.u32[3];
      v328 = vpaddq_s64(vshlq_u64(v325, vzip1q_s64(0, v327)), vshlq_u64(v326, vzip1q_s64(0, v324)));
      v329 = vpaddq_s64(v327, v324);
      v330 = (v328.i64[0] << v315) | v314;
      if (v329.i64[0] + (v315 & 0x3F) >= 0x40)
      {
        *(v260 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
        v330 = v328.i64[0] >> -(v315 & 0x3F);
        if ((v315 & 0x3F) == 0)
        {
          v330 = 0;
        }
      }

      v331 = vceqq_s16(v79, v180);
      v332 = vaddq_s16(v480, v296);
      v333 = v329.i64[0] + v315;
      v334 = v330 | (v328.i64[1] << v333);
      if ((v333 & 0x3F) + v329.i64[1] >= 0x40)
      {
        *(v260 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v328.i64[1] >> -(v333 & 0x3F);
        if ((v333 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vandq_s8(v159, v331);
      v336 = v333 + v329.i64[1];
      v337.i64[0] = 0xF000F000F000FLL;
      v337.i64[1] = 0xF000F000F000FLL;
      v338.i64[0] = -1;
      v338.i64[1] = -1;
      v339 = vandq_s8(vshlq_u16(v338, vaddq_s16(v160, v337)), v332);
      v340 = vmovl_u16(*v160.i8);
      v341 = vmovl_high_u16(v160);
      v342 = vpaddq_s32(vshlq_u32(vmovl_u16(*v339.i8), vtrn1q_s32(0, v340)), vshlq_u32(vmovl_high_u16(v339), vtrn1q_s32(0, v341)));
      v343 = vpaddq_s32(v340, v341);
      v344.i64[0] = v342.u32[0];
      v344.i64[1] = v342.u32[1];
      v345 = v344;
      v344.i64[0] = v342.u32[2];
      v344.i64[1] = v342.u32[3];
      v346 = v344;
      v344.i64[0] = v343.u32[0];
      v344.i64[1] = v343.u32[1];
      v347 = v344;
      v344.i64[0] = v343.u32[2];
      v344.i64[1] = v343.u32[3];
      v348 = vpaddq_s64(vshlq_u64(v345, vzip1q_s64(0, v347)), vshlq_u64(v346, vzip1q_s64(0, v344)));
      v349 = vpaddq_s64(v347, v344);
      v350 = (v348.i64[0] << v336) | v334;
      if (v349.i64[0] + (v336 & 0x3F) >= 0x40)
      {
        *(v260 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
        v350 = v348.i64[0] >> -(v336 & 0x3F);
        if ((v336 & 0x3F) == 0)
        {
          v350 = 0;
        }
      }

      v351 = vaddq_s16(v171, v335);
      v352 = v349.i64[0] + v336;
      v353 = v350 | (v348.i64[1] << v352);
      if ((v352 & 0x3F) + v349.i64[1] >= 0x40)
      {
        *(v260 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v348.i64[1] >> -(v352 & 0x3F);
        if ((v352 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = v352 + v349.i64[1];
      v355.i64[0] = 0xF000F000F000FLL;
      v355.i64[1] = 0xF000F000F000FLL;
      v356.i64[0] = -1;
      v356.i64[1] = -1;
      v357 = vshlq_u16(v356, vaddq_s16(v180, v355));
      v358 = vandq_s8(v357, v351);
      v359 = vmovl_u16(*v358.i8);
      v360 = vmovl_high_u16(v358);
      v361 = vmovl_u16(*v180.i8);
      v362 = vmovl_high_u16(v180);
      v363 = vtrn1q_s32(0, v361);
      v364 = vtrn1q_s32(0, v362);
      v365 = vpaddq_s32(vshlq_u32(v359, v363), vshlq_u32(v360, v364));
      v366 = vpaddq_s32(v361, v362);
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
      v371 = vzip1q_s64(0, v370);
      v372 = vzip1q_s64(0, v367);
      v373 = vpaddq_s64(vshlq_u64(v368, v371), vshlq_u64(v369, v372));
      v374 = vpaddq_s64(v370, v367);
      v375 = (v373.i64[0] << v354) | v353;
      if (v374.i64[0] + (v354 & 0x3F) >= 0x40)
      {
        *(v260 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        if ((v354 & 0x3F) != 0)
        {
          v375 = v373.i64[0] >> -(v354 & 0x3F);
        }

        else
        {
          v375 = 0;
        }
      }

      v376 = vceqq_s16(v79, v162);
      v377 = vaddq_s16(v172, v335);
      v378 = v374.i64[0] + v354;
      v379 = v375 | (v373.i64[1] << v378);
      if ((v378 & 0x3F) + v374.i64[1] >= 0x40)
      {
        *(v260 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
        v379 = v373.i64[1] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v379 = 0;
        }
      }

      v380 = vandq_s8(v159, v376);
      v381 = v378 + v374.i64[1];
      v382 = vandq_s8(v357, v377);
      v383 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), v363), vshlq_u32(vmovl_high_u16(v382), v364));
      v384.i64[0] = v383.u32[0];
      v384.i64[1] = v383.u32[1];
      v385 = v384;
      v384.i64[0] = v383.u32[2];
      v384.i64[1] = v383.u32[3];
      v386 = vpaddq_s64(vshlq_u64(v385, v371), vshlq_u64(v384, v372));
      v387 = (v386.i64[0] << v381) | v379;
      if (v374.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v260 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v386.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = vaddq_s16(v175, v380);
      v389 = v374.i64[0] + v381;
      v390 = (v374.i64[0] + v381) & 0x3F;
      v391 = v387 | (v386.i64[1] << v389);
      if ((v389 & 0x3F) + v374.i64[1] >= 0x40)
      {
        *(v260 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
        v391 = v386.i64[1] >> -v390;
        if (!v390)
        {
          v391 = 0;
        }
      }

      v392 = v389 + v374.i64[1];
      v393.i64[0] = 0xF000F000F000FLL;
      v393.i64[1] = 0xF000F000F000FLL;
      v394.i64[0] = -1;
      v394.i64[1] = -1;
      v395 = vshlq_u16(v394, vaddq_s16(v162, v393));
      v396 = vandq_s8(v395, v388);
      v397 = vmovl_u16(*v396.i8);
      v398 = vmovl_high_u16(v396);
      v399 = vmovl_u16(*v162.i8);
      v400 = vmovl_high_u16(v162);
      v401 = vtrn1q_s32(0, v399);
      v402 = vtrn1q_s32(0, v400);
      v403 = vpaddq_s32(vshlq_u32(v397, v401), vshlq_u32(v398, v402));
      v404 = vpaddq_s32(v399, v400);
      v405.i64[0] = v403.u32[0];
      v405.i64[1] = v403.u32[1];
      v406 = v405;
      v405.i64[0] = v403.u32[2];
      v405.i64[1] = v403.u32[3];
      v407 = v405;
      v405.i64[0] = v404.u32[0];
      v405.i64[1] = v404.u32[1];
      v408 = v405;
      v405.i64[0] = v404.u32[2];
      v405.i64[1] = v404.u32[3];
      v409 = vzip1q_s64(0, v408);
      v410 = vzip1q_s64(0, v405);
      v411 = vpaddq_s64(vshlq_u64(v406, v409), vshlq_u64(v407, v410));
      v412 = vpaddq_s64(v408, v405);
      v413 = (v411.i64[0] << v392) | v391;
      if (v412.i64[0] + (v392 & 0x3F) >= 0x40)
      {
        *(v260 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
        if ((v392 & 0x3F) != 0)
        {
          v413 = v411.i64[0] >> -(v392 & 0x3F);
        }

        else
        {
          v413 = 0;
        }
      }

      v414 = vceqq_s16(v79, v163);
      v415 = vaddq_s16(v173, v380);
      v416 = v412.i64[0] + v392;
      v417 = v413 | (v411.i64[1] << v416);
      if ((v416 & 0x3F) + v412.i64[1] >= 0x40)
      {
        *(v260 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
        v417 = v411.i64[1] >> -(v416 & 0x3F);
        if ((v416 & 0x3F) == 0)
        {
          v417 = 0;
        }
      }

      v418 = vandq_s8(v159, v414);
      v419 = v416 + v412.i64[1];
      v420 = vandq_s8(v395, v415);
      v421 = vpaddq_s32(vshlq_u32(vmovl_u16(*v420.i8), v401), vshlq_u32(vmovl_high_u16(v420), v402));
      v422.i64[0] = v421.u32[0];
      v422.i64[1] = v421.u32[1];
      v423 = v422;
      v422.i64[0] = v421.u32[2];
      v422.i64[1] = v421.u32[3];
      v424 = vpaddq_s64(vshlq_u64(v423, v409), vshlq_u64(v422, v410));
      v425 = (v424.i64[0] << v419) | v417;
      if (v412.i64[0] + (v419 & 0x3F) >= 0x40)
      {
        *(v260 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v424.i64[0] >> -(v419 & 0x3F);
        if ((v419 & 0x3F) == 0)
        {
          v425 = 0;
        }
      }

      v426 = vaddq_s16(v174, v418);
      v427 = v412.i64[0] + v419;
      v428 = (v412.i64[0] + v419) & 0x3F;
      v429 = v425 | (v424.i64[1] << v427);
      if ((v427 & 0x3F) + v412.i64[1] >= 0x40)
      {
        *(v260 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
        v429 = v424.i64[1] >> -v428;
        if (!v428)
        {
          v429 = 0;
        }
      }

      v430 = v427 + v412.i64[1];
      v431.i64[0] = 0xF000F000F000FLL;
      v431.i64[1] = 0xF000F000F000FLL;
      v432.i64[0] = -1;
      v432.i64[1] = -1;
      v433 = vshlq_u16(v432, vaddq_s16(v163, v431));
      v434 = vandq_s8(v433, v426);
      v435 = vmovl_u16(*v434.i8);
      v436 = vmovl_high_u16(v434);
      v437 = vmovl_u16(*v163.i8);
      v438 = vmovl_high_u16(v163);
      v439 = vtrn1q_s32(0, v437);
      v440 = vtrn1q_s32(0, v438);
      v441 = vpaddq_s32(vshlq_u32(v435, v439), vshlq_u32(v436, v440));
      v442 = vpaddq_s32(v437, v438);
      v443.i64[0] = v441.u32[0];
      v443.i64[1] = v441.u32[1];
      v444 = v443;
      v443.i64[0] = v441.u32[2];
      v443.i64[1] = v441.u32[3];
      v445 = v443;
      v443.i64[0] = v442.u32[0];
      v443.i64[1] = v442.u32[1];
      v446 = v443;
      v443.i64[0] = v442.u32[2];
      v443.i64[1] = v442.u32[3];
      v447 = vzip1q_s64(0, v446);
      v448 = vzip1q_s64(0, v443);
      v449 = vpaddq_s64(vshlq_u64(v444, v447), vshlq_u64(v445, v448));
      v450 = vpaddq_s64(v446, v443);
      v451 = (v427 + v412.i64[1]) & 0x3F;
      v452 = (v449.i64[0] << (v427 + v412.i8[8])) | v429;
      if ((v450.i64[0] + v451) > 0x3F)
      {
        *(v260 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
        if (v451)
        {
          v452 = v449.i64[0] >> -v451;
        }

        else
        {
          v452 = 0;
        }
      }

      v453 = vaddq_s16(v142, v418);
      v454 = v450.i64[0] + v430;
      v455 = v452 | (v449.i64[1] << v454);
      if ((v454 & 0x3F) + v450.i64[1] >= 0x40)
      {
        *(v260 + ((v454 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
        v455 = v449.i64[1] >> -(v454 & 0x3F);
        if ((v454 & 0x3F) == 0)
        {
          v455 = 0;
        }
      }

      v456 = v454 + v450.i64[1];
      v457 = vandq_s8(v433, v453);
      v458 = vpaddq_s32(vshlq_u32(vmovl_u16(*v457.i8), v439), vshlq_u32(vmovl_high_u16(v457), v440));
      v459.i64[0] = v458.u32[0];
      v459.i64[1] = v458.u32[1];
      v460 = v459;
      v459.i64[0] = v458.u32[2];
      v459.i64[1] = v458.u32[3];
      v461 = vpaddq_s64(vshlq_u64(v460, v447), vshlq_u64(v459, v448));
      v462 = (v461.i64[0] << v456) | v455;
      if (v450.i64[0] + (v456 & 0x3F) >= 0x40)
      {
        *(v260 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
        v462 = v461.i64[0] >> -(v456 & 0x3F);
        if ((v456 & 0x3F) == 0)
        {
          v462 = 0;
        }
      }

      v463 = v450.i64[0] + v456;
      v464 = (v450.i64[0] + v456) & 0x3F;
      v465 = v462 | (v461.i64[1] << (v450.i8[0] + v456));
      if ((v464 + v450.i64[1]) >= 0x40)
      {
        *(v260 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
        v465 = v461.i64[1] >> -v464;
        if (!v464)
        {
          v465 = 0;
        }
      }

      v466 = v463 + v450.i64[1];
      if ((v466 & 0x3F) != 0)
      {
        *(v260 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
      }

      result = (v466 - v261 + 7) >> 3;
      v176 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = a3->i32[0];
    v176 = 3;
    result = 4;
  }

  *a2 = v176;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v27 = (8 * (a3 & 7)) | 0x400;
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

  v287 = v11;
  v288 = v10;
  v289 = v9;
  v290 = v8;
  v291 = v7;
  v292 = v6;
  v293 = v5;
  v294 = v4;
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

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 1024 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v285 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v285[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
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
    v150 = (a1->i64 + 2 * a2);
    *v149 = 0;
    v149[1] = 0;
    v151 = (a1->i64 + 2 * a2 + a2);
    *v150 = 0;
    v150[1] = 0;
    *v151 = 0;
    v151[1] = 0;
    return v142;
  }

  if (v75 == 2)
  {
    v153 = 0;
    v154 = 0;
    v155 = 8 * (&v286 & 7);
    v156 = 16;
    do
    {
      v157 = 64 - v155;
      if (64 - v155 >= v156)
      {
        v157 = v156;
      }

      *&v285[8 * v153] |= ((0xFFFFFFFFFFFFFFFFLL >> v154) & ~(-1 << v157)) << v155;
      v154 += v157;
      v158 = v157 + v155;
      v153 += v158 >> 6;
      v155 = v158 & 0x3F;
      v156 -= v157;
    }

    while (v156);
    goto LABEL_90;
  }

  v159 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v160 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v161 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v162 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v163.i64[0] = v159.u32[0];
  v163.i64[1] = v159.u32[1];
  v164 = v163;
  v163.i64[0] = v160.u32[0];
  v163.i64[1] = v160.u32[1];
  v165 = v163;
  v163.i64[0] = v161.u32[0];
  v163.i64[1] = v161.u32[1];
  v166 = v163;
  v163.i64[0] = v162.u32[0];
  v163.i64[1] = v162.u32[1];
  v167 = vnegq_s64(v164);
  v168 = vnegq_s64(v165);
  v169 = vnegq_s64(v166);
  v170 = vnegq_s64(v163);
  v171 = vshlq_u64(v63, v167);
  v172 = vshlq_u64(v108, v168);
  v173 = vshlq_u64(v106, v168);
  v174 = vshlq_u64(v125, v169);
  v175 = vshlq_u64(v121, v169);
  v176 = vshlq_u64(v138, v170);
  v177 = vzip2q_s64(v63, v171);
  v178 = vzip1q_s64(v63, v171);
  v179 = vzip2q_s64(v108, v172);
  v180 = vzip1q_s64(v108, v172);
  v181 = vzip2q_s64(v106, v173);
  v182 = vzip1q_s64(v106, v173);
  v183 = vzip2q_s64(v125, v174);
  v184 = vzip1q_s64(v125, v174);
  v185 = vzip2q_s64(v121, v175);
  v186 = vzip1q_s64(v121, v175);
  v187 = vzip2q_s64(v138, v176);
  v188 = vzip1q_s64(v138, v176);
  v189 = vuzp1q_s32(v178, v177);
  v190 = vuzp1q_s32(v180, v179);
  v191 = vuzp1q_s32(v182, v181);
  v178.i64[0] = 0xFFFF0000FFFFLL;
  v178.i64[1] = 0xFFFF0000FFFFLL;
  v192 = vuzp1q_s32(v184, v183);
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v193 = vnegq_s32(vandq_s8(v64, v178));
  v194 = vnegq_s32(vandq_s8(v55, v180));
  v195 = vuzp1q_s32(v186, v185);
  v196 = vuzp1q_s32(v188, v187);
  v197 = vshlq_u32(v189, v193);
  v198 = vshlq_u32(v190, v194);
  v199 = vshlq_u32(v191, v194);
  v194.i64[0] = 0x10001000100010;
  v194.i64[1] = 0x10001000100010;
  v188.i64[0] = 0xF000F000F000FLL;
  v188.i64[1] = 0xF000F000F000FLL;
  v200 = vsubq_s16(v194, v64);
  v201 = vaddq_s16(v64, v188);
  v188.i64[0] = 0x10001000100010;
  v188.i64[1] = 0x10001000100010;
  v202 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v189, v197), vzip2q_s32(v189, v197)), v200);
  v200.i64[0] = 0xF000F000F000FLL;
  v200.i64[1] = 0xF000F000F000FLL;
  v203 = vsubq_s16(v188, v55);
  v204 = vaddq_s16(v55, v200);
  v200.i64[0] = 0xFFFF0000FFFFLL;
  v200.i64[1] = 0xFFFF0000FFFFLL;
  v205 = vnegq_s32(vandq_s8(v56, v200));
  v206 = vshlq_s16(v202, v201);
  v207 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v190, v198), vzip2q_s32(v190, v198)), v203), v204);
  v208 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v191, v199), vzip2q_s32(v191, v199)), v203), v204);
  v209 = vdupq_lane_s32(*v206.i8, 0);
  v210 = vandq_s8(v59, v209);
  v211 = vsubq_s16(v207, v210);
  v212 = vsubq_s16(v208, v210);
  v213 = vshlq_u32(v192, v205);
  v214 = vshlq_u32(v195, v205);
  v215 = vzip2q_s32(v192, v213);
  v216 = vzip1q_s32(v192, v213);
  v217 = vzip2q_s32(v195, v214);
  v218 = vzip1q_s32(v195, v214);
  v214.i64[0] = 0x10001000100010;
  v214.i64[1] = 0x10001000100010;
  v219 = vuzp1q_s16(v218, v217);
  v217.i64[0] = 0xF000F000F000FLL;
  v217.i64[1] = 0xF000F000F000FLL;
  v220 = vsubq_s16(v214, v56);
  v221 = vaddq_s16(v56, v217);
  v217.i64[0] = 0xFFFF0000FFFFLL;
  v217.i64[1] = 0xFFFF0000FFFFLL;
  v222 = vnegq_s32(vandq_s8(v57, v217));
  v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(v216, v215), v220), v221);
  v224 = vshlq_s16(vshlq_s16(v219, v220), v221);
  v225 = vandq_s8(v60, v209);
  v226 = vsubq_s16(v223, v225);
  v227 = vsubq_s16(v224, v225);
  v228 = vshlq_u32(v196, v222);
  v229 = vzip2q_s32(v196, v228);
  v230 = vzip1q_s32(v196, v228);
  v228.i64[0] = 0x10001000100010;
  v228.i64[1] = 0x10001000100010;
  v231 = vuzp1q_s16(v230, v229);
  v229.i64[0] = 0xF000F000F000FLL;
  v229.i64[1] = 0xF000F000F000FLL;
  v232 = vsubq_s16(v228, v57);
  v233 = vaddq_s16(v57, v229);
  v234 = vshlq_u64(v141, v170);
  v235 = vuzp1q_s32(vzip1q_s64(v141, v234), vzip2q_s64(v141, v234));
  v236 = vshlq_u32(v235, v222);
  v237 = vshlq_s16(vshlq_s16(v231, v232), v233);
  v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v235, v236), vzip2q_s32(v235, v236)), v232), v233);
  v239 = vandq_s8(v61, v209);
  v240 = vsubq_s16(v237, v239);
  v241 = vsubq_s16(v238, v239);
  v242 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v243 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v163.i64[0] = v242.u32[0];
  v163.i64[1] = v242.u32[1];
  v244 = v163;
  v163.i64[0] = v243.u32[0];
  v163.i64[1] = v243.u32[1];
  v245 = vshlq_u64(v86, vnegq_s64(v244));
  v246 = vshlq_u64(v77, vnegq_s64(v163));
  v247 = vzip2q_s64(v86, v245);
  v248 = vzip1q_s64(v86, v245);
  v249 = vzip2q_s64(v77, v246);
  v250 = vzip1q_s64(v77, v246);
  v246.i64[0] = 0xFFFF0000FFFFLL;
  v246.i64[1] = 0xFFFF0000FFFFLL;
  v251 = vuzp1q_s32(v248, v247);
  v252 = vuzp1q_s32(v250, v249);
  v253 = vnegq_s32(vandq_s8(v54, v246));
  v254 = vshlq_u32(v251, vnegq_s32(vandq_s8(v78, v246)));
  v255 = vshlq_u32(v252, v253);
  v256 = vzip2q_s32(v251, v254);
  v257 = vzip1q_s32(v251, v254);
  v258 = vzip2q_s32(v252, v255);
  v259 = vzip1q_s32(v252, v255);
  v255.i64[0] = 0x10001000100010;
  v255.i64[1] = 0x10001000100010;
  v260 = vuzp1q_s16(v259, v258);
  v258.i64[0] = 0xF000F000F000FLL;
  v258.i64[1] = 0xF000F000F000FLL;
  v261 = vaddq_s16(vandq_s8(v206, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v257, v256), vsubq_s16(v255, v78)), vaddq_s16(v78, v258)));
  v262 = vandq_s8(v58, v209);
  v263.i64[0] = 0x1000100010001;
  v263.i64[1] = 0x1000100010001;
  v264 = vceqq_s16(v29, v263);
  v265 = vaddvq_s16(v264);
  v266 = vsubq_s16(v261, v262);
  v267 = vsubq_s16(vshlq_s16(vshlq_s16(v260, vsubq_s16(v255, v54)), vaddq_s16(v54, v258)), v262);
  v264.i32[0] = v24;
  v268 = vdupq_lane_s32(*v264.i8, 0);
  if (v265)
  {
    v269 = vnegq_s16(vandq_s8(v25, v263));
    v270 = v267;
    v270.i32[3] = v266.i32[0];
    v271 = v266;
    v271.i32[0] = v267.i32[3];
    v295.val[0] = vbslq_s8(v269, v271, v266);
    v295.val[1] = vbslq_s8(v269, v270, v267);
    v270.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v270.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v295, xmmword_29D2F0F80), v269), v295.val[0]);
    v296.val[1] = vaddq_s16(v295.val[1], vandq_s8(vqtbl2q_s8(v295, v270), v269));
    v266 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0F90), v269), v296.val[0]);
    v267 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, v270), v269));
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FA0), v269), v211);
    v296.val[1] = vaddq_s16(v212, vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FB0), v269));
    v211 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0FC0), v269), v296.val[0]);
    v212 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, v270), v269));
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0FD0), v269), v226);
    v296.val[1] = vaddq_s16(v227, vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0F80), v269));
    v226 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, v270), v269), v296.val[0]);
    v227 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0FE0), v269));
    v295.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0FF0), v269), v240);
    v295.val[1] = vaddq_s16(v241, vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0F80), v269));
    v240 = vaddq_s16(vandq_s8(vqtbl2q_s8(v295, v270), v269), v295.val[0]);
    v241 = vaddq_s16(v295.val[1], vandq_s8(vqtbl2q_s8(v295, xmmword_29D2F1000), v269));
  }

  v272 = vaddq_s16(v266, v268);
  v273 = vaddq_s16(v267, v268);
  v274 = vaddq_s16(v211, v268);
  v275 = vaddq_s16(v212, v268);
  v276 = vaddq_s16(v226, v268);
  v277 = vaddq_s16(v227, v268);
  v278 = vaddq_s16(v240, v268);
  v279 = vaddq_s16(v241, v268);
  v280.i64[0] = 0x10001000100010;
  v280.i64[1] = 0x10001000100010;
  v281 = vceqzq_s16(vandq_s8(v25, v280));
  v282 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v281), v272);
  a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v281), v274);
  v283 = (a1 + 2 * a2);
  *v282 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v281), v273);
  v282[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v281), v275);
  *v283 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v281), v276);
  v283[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1080), v281), v278);
  v284 = (v283 + a2);
  *v284 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1080), v281), v277);
  v284[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1080), v281), v279);
  return v142;
}

int16x8_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 127)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 80);
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    v15 = *(a2 + 64);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 128) = v9;
    *(a1 + 144) = v11;
    *(a1 + 256) = v15;
    *(a1 + 272) = v13;
    *(a1 + 384) = v12;
    *(a1 + 400) = v14;
    v7 = 128;
  }

  else if (v6 == 3)
  {
    v8 = vld1q_dup_f32(a2);
    *a1 = v8;
    *(a1 + 16) = v8;
    *(a1 + 128) = v8;
    *(a1 + 144) = v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = v8;
    *(a1 + 384) = v8;
    *(a1 + 400) = v8;
    v7 = 4;
  }

  else if (*a3)
  {
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v6);
  }

  else
  {
    v7 = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
  }

  v16 = a2 + v7;
  v17 = (a1 + 32);
  v18 = a3[1];
  if (a3[1])
  {
    if (v18 == 3)
    {
      v27 = vld1q_dup_f32(v16);
      *(a1 + 32) = v27;
      *(a1 + 48) = v27;
      *(a1 + 160) = v27;
      *(a1 + 176) = v27;
      *(a1 + 288) = v27;
      *(a1 + 304) = v27;
      *(a1 + 416) = v27;
      *(a1 + 432) = v27;
      v26 = 4;
    }

    else if (v18 == 127)
    {
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 48);
      v22 = *(v16 + 80);
      v23 = *(v16 + 96);
      v24 = *(v16 + 112);
      v25 = *(v16 + 64);
      *v17 = *v16;
      *(a1 + 48) = v20;
      *(a1 + 160) = v19;
      *(a1 + 176) = v21;
      *(a1 + 288) = v25;
      *(a1 + 304) = v23;
      *(a1 + 416) = v22;
      *(a1 + 432) = v24;
      v26 = 128;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 128, v16, v18);
    }
  }

  else
  {
    v26 = 0;
    *v17 = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v28 = v16 + v26;
  v29 = (a1 + 512);
  v30 = a3[2];
  if (a3[2])
  {
    if (v30 == 3)
    {
      v39 = vld1q_dup_f32(v28);
      *(a1 + 512) = v39;
      *(a1 + 528) = v39;
      *(a1 + 640) = v39;
      *(a1 + 656) = v39;
      *(a1 + 768) = v39;
      *(a1 + 784) = v39;
      *(a1 + 896) = v39;
      *(a1 + 912) = v39;
      v38 = 4;
    }

    else if (v30 == 127)
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      v34 = *(v28 + 80);
      v35 = *(v28 + 96);
      v36 = *(v28 + 112);
      v37 = *(v28 + 64);
      *v29 = *v28;
      *(a1 + 528) = v32;
      *(a1 + 640) = v31;
      *(a1 + 656) = v33;
      *(a1 + 768) = v37;
      *(a1 + 784) = v35;
      *(a1 + 896) = v34;
      *(a1 + 912) = v36;
      v38 = 128;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 128, v28, v30);
    }
  }

  else
  {
    v38 = 0;
    *v29 = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 768) = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
  }

  v40 = v28 + v38;
  v41 = (a1 + 544);
  v42 = a3[3];
  if (a3[3])
  {
    if (v42 == 3)
    {
      v51 = vld1q_dup_f32(v40);
      *(a1 + 544) = v51;
      *(a1 + 560) = v51;
      *(a1 + 672) = v51;
      *(a1 + 688) = v51;
      *(a1 + 800) = v51;
      *(a1 + 816) = v51;
      *(a1 + 928) = v51;
      *(a1 + 944) = v51;
      v50 = 4;
    }

    else if (v42 == 127)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 32);
      v45 = *(v40 + 48);
      v46 = *(v40 + 80);
      v47 = *(v40 + 96);
      v48 = *(v40 + 112);
      v49 = *(v40 + 64);
      *v41 = *v40;
      *(a1 + 560) = v44;
      *(a1 + 672) = v43;
      *(a1 + 688) = v45;
      *(a1 + 800) = v49;
      *(a1 + 816) = v47;
      *(a1 + 928) = v46;
      *(a1 + 944) = v48;
      v50 = 128;
    }

    else
    {
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 128, v40, v42);
    }
  }

  else
  {
    v50 = 0;
    *v41 = 0u;
    *(a1 + 560) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
  }

  v52 = v40 + v50;
  v53 = (a1 + 64);
  v54 = a3[4];
  if (a3[4])
  {
    if (v54 == 3)
    {
      v63 = vld1q_dup_f32(v52);
      *(a1 + 64) = v63;
      *(a1 + 80) = v63;
      *(a1 + 192) = v63;
      *(a1 + 208) = v63;
      *(a1 + 320) = v63;
      *(a1 + 336) = v63;
      *(a1 + 448) = v63;
      *(a1 + 464) = v63;
      v62 = 4;
    }

    else if (v54 == 127)
    {
      v55 = *(v52 + 16);
      v56 = *(v52 + 32);
      v57 = *(v52 + 48);
      v58 = *(v52 + 80);
      v59 = *(v52 + 96);
      v60 = *(v52 + 112);
      v61 = *(v52 + 64);
      *v53 = *v52;
      *(a1 + 80) = v56;
      *(a1 + 192) = v55;
      *(a1 + 208) = v57;
      *(a1 + 320) = v61;
      *(a1 + 336) = v59;
      *(a1 + 448) = v58;
      *(a1 + 464) = v60;
      v62 = 128;
    }

    else
    {
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 128, v52, v54);
    }
  }

  else
  {
    v62 = 0;
    *v53 = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
  }

  v64 = v52 + v62;
  v65 = (a1 + 96);
  v66 = a3[5];
  if (a3[5])
  {
    if (v66 == 3)
    {
      v75 = vld1q_dup_f32(v64);
      *(a1 + 96) = v75;
      *(a1 + 112) = v75;
      *(a1 + 224) = v75;
      *(a1 + 240) = v75;
      *(a1 + 352) = v75;
      *(a1 + 368) = v75;
      *(a1 + 480) = v75;
      *(a1 + 496) = v75;
      v74 = 4;
    }

    else if (v66 == 127)
    {
      v67 = *(v64 + 16);
      v68 = *(v64 + 32);
      v69 = *(v64 + 48);
      v70 = *(v64 + 80);
      v71 = *(v64 + 96);
      v72 = *(v64 + 112);
      v73 = *(v64 + 64);
      *v65 = *v64;
      *(a1 + 112) = v68;
      *(a1 + 224) = v67;
      *(a1 + 240) = v69;
      *(a1 + 352) = v73;
      *(a1 + 368) = v71;
      *(a1 + 480) = v70;
      *(a1 + 496) = v72;
      v74 = 128;
    }

    else
    {
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 128, v64, v66);
    }
  }

  else
  {
    v74 = 0;
    *v65 = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  v76 = v64 + v74;
  v77 = (a1 + 576);
  v78 = a3[6];
  if (a3[6])
  {
    if (v78 == 3)
    {
      v87 = vld1q_dup_f32(v76);
      *(a1 + 576) = v87;
      *(a1 + 592) = v87;
      *(a1 + 704) = v87;
      *(a1 + 720) = v87;
      *(a1 + 832) = v87;
      *(a1 + 848) = v87;
      *(a1 + 960) = v87;
      *(a1 + 976) = v87;
      v86 = 4;
    }

    else if (v78 == 127)
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 32);
      v81 = *(v76 + 48);
      v82 = *(v76 + 80);
      v83 = *(v76 + 96);
      v84 = *(v76 + 112);
      v85 = *(v76 + 64);
      *v77 = *v76;
      *(a1 + 592) = v80;
      *(a1 + 704) = v79;
      *(a1 + 720) = v81;
      *(a1 + 832) = v85;
      *(a1 + 848) = v83;
      *(a1 + 960) = v82;
      *(a1 + 976) = v84;
      v86 = 128;
    }

    else
    {
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 128, v76, v78);
    }
  }

  else
  {
    v86 = 0;
    *v77 = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 704) = 0u;
    *(a1 + 720) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  result = (a1 + 608);
  v89 = a3[7];
  if (!a3[7])
  {
    v98 = 0uLL;
    *result = 0u;
    *(a1 + 624) = 0u;
    goto LABEL_56;
  }

  v90 = v76 + v86;
  if (v89 == 3)
  {
    v98 = vld1q_dup_f32(v90);
    *(a1 + 608) = v98;
    *(a1 + 624) = v98;
LABEL_56:
    *(a1 + 736) = v98;
    *(a1 + 752) = v98;
    *(a1 + 864) = v98;
    *(a1 + 880) = v98;
    *(a1 + 992) = v98;
    *(a1 + 1008) = v98;
    return result;
  }

  if (v89 == 127)
  {
    v91 = *(v90 + 16);
    v92 = *(v90 + 32);
    v93 = *(v90 + 48);
    v94 = *(v90 + 80);
    v95 = *(v90 + 96);
    v96 = *(v90 + 112);
    v97 = *(v90 + 64);
    *result = *v90;
    *(a1 + 624) = v92;
    *(a1 + 736) = v91;
    *(a1 + 752) = v93;
    *(a1 + 864) = v97;
    *(a1 + 880) = v95;
    *(a1 + 992) = v94;
    *(a1 + 1008) = v96;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v90, v89);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v7 = *a3;
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v11 = *v6;
  v12 = v6[1];
  v10 = (v6 + a4);
  v13 = v11;
  v14 = *v10;
  v15 = v10[1];
  v16 = vdupq_lane_s32(*a3->i8, 0);
  v17 = vsubq_s16(*a3, v16);
  v18 = vsubq_s16(v8, v16);
  v495 = a3[1];
  v19 = vsubq_s16(v495, v16);
  v20 = vsubq_s16(v9, v16);
  v21 = vsubq_s16(v11, v16);
  v22 = vsubq_s16(*v10, v16);
  v496 = v12;
  v23 = vsubq_s16(v12, v16);
  v24 = vsubq_s16(v15, v16);
  v25 = vqtbl1q_s8(vmaxq_s16(v17, v18), xmmword_29D2F1090);
  v26 = vqtbl1q_s8(vminq_s16(v17, v18), xmmword_29D2F1090);
  v27 = vpmaxq_s16(v25, v25);
  v28 = vpminq_s16(v26, v26);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vmaxq_s16(v29, v31);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vminq_s16(v30, v33);
  v35 = vzip1q_s16(v29, v30);
  v36.i64[0] = 0x10001000100010;
  v36.i64[1] = 0x10001000100010;
  v37 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v35)), vceqzq_s16(v35));
  v38 = vqtbl1q_s8(vmaxq_s16(v19, v20), xmmword_29D2F1090);
  v39 = vqtbl1q_s8(vminq_s16(v19, v20), xmmword_29D2F1090);
  v40 = vpmaxq_s16(v38, v38);
  v41 = vpminq_s16(v39, v39);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(v32, v42);
  v45 = vminq_s16(v34, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vqtbl1q_s8(vmaxq_s16(v21, v22), xmmword_29D2F1090);
  v49 = vqtbl1q_s8(vminq_s16(v21, v22), xmmword_29D2F1090);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vmaxq_s16(v44, v52);
  v55 = vminq_s16(v45, v53);
  v56 = vzip1q_s16(v52, v53);
  v57 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v56)), vceqzq_s16(v56));
  v58 = vqtbl1q_s8(vmaxq_s16(v23, v24), xmmword_29D2F1090);
  v59 = vqtbl1q_s8(vminq_s16(v23, v24), xmmword_29D2F1090);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vmaxq_s16(v54, v62);
  v65 = vminq_s16(v55, v63);
  v66 = vzip1q_s16(v62, v63);
  v67 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v66)), vceqzq_s16(v66));
  v68 = vpmaxq_s16(v37, v37);
  v69 = vpmaxq_s16(v47, v47);
  v70 = vpmaxq_s16(v57, v57);
  v71 = vpmaxq_s16(v67, v67);
  v72 = vmaxq_s16(vmaxq_s16(v68, v69), vmaxq_s16(v70, v71));
  v73 = vclzq_s16(vsubq_s16(v64, v65));
  v74 = vsubq_s16(v36, v73);
  v75 = vminq_s16(v74, v72);
  v76 = vmaxvq_s16(v75);
  v78 = a5 < 2 || a6 < 2;
  if (!v76)
  {
    *a1 = a3->i32[0];
    v178 = 3;
    result = 4;
    goto LABEL_91;
  }

  v482 = v13;
  v478 = v14;
  v479 = v15;
  v79.i64[0] = -1;
  v79.i64[1] = -1;
  v80.i64[0] = 0xF000F000F000FLL;
  v80.i64[1] = 0xF000F000F000FLL;
  v476 = vsubq_s16(vshlq_s16(v79, vsubq_s16(v80, v73)), v65);
  v81 = vcgtq_s16(v72, v74);
  v82.i64[0] = 0x8000800080008;
  v82.i64[1] = 0x8000800080008;
  v83.i64[0] = 0x3000300030003;
  v83.i64[1] = 0x3000300030003;
  v480 = vorrq_s8(vandq_s8(vceqzq_s16(v75), v83), vandq_s8(v81, v82));
  v84 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v68), v83), 0);
  v85 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v69), v83), 0);
  v86 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v70), v83), 0);
  v87 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v71), v83), 0);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v474 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v87, v86), vnegq_s16(vaddq_s16(v84, v85))));
  v497 = v17;
  v498 = v18;
  v483 = v19;
  v485 = v20;
  v89 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F1080));
  v90 = vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080));
  v91 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v92 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v93 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v491 = v22;
  v493 = v23;
  v470 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F1080));
  v472 = vsubq_s16(v17, vqtbl1q_s8(v17, xmmword_29D2F1080));
  v94 = vqtbl1q_s8(vmaxq_s16(v472, v470), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v472, v470), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v31);
  v101 = vminq_s16(v99, v33);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v102)), vceqzq_s16(v102));
  v487 = v24;
  v489 = v21;
  v104 = vpmaxq_s16(v103, v103);
  v469 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F1080));
  v105 = vqtbl1q_s8(vmaxq_s16(v469, v89), xmmword_29D2F1090);
  v106 = vqtbl1q_s8(vminq_s16(v469, v89), xmmword_29D2F1090);
  v107 = vpmaxq_s16(v105, v105);
  v108 = vpminq_s16(v106, v106);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vmaxq_s16(v100, v109);
  v112 = vminq_s16(v101, v110);
  v113 = vzip1q_s16(v109, v110);
  v114 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v113)), vceqzq_s16(v113));
  v115 = vpmaxq_s16(v114, v114);
  v116 = vqtbl1q_s8(vmaxq_s16(v90, v91), xmmword_29D2F1090);
  v117 = vqtbl1q_s8(vminq_s16(v90, v91), xmmword_29D2F1090);
  v118 = vpmaxq_s16(v116, v116);
  v119 = vpminq_s16(v117, v117);
  v120 = vpmaxq_s16(v118, v118);
  v121 = vpminq_s16(v119, v119);
  v122 = vmaxq_s16(v111, v120);
  v123 = vminq_s16(v112, v121);
  v124 = vzip1q_s16(v120, v121);
  v125 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v124)), vceqzq_s16(v124));
  v126 = vpmaxq_s16(v125, v125);
  v127 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
  v128 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
  v129 = vpmaxq_s16(v127, v127);
  v130 = vpminq_s16(v128, v128);
  v131 = vpmaxq_s16(v129, v129);
  v132 = vpminq_s16(v130, v130);
  v133 = vmaxq_s16(v122, v131);
  v134 = vminq_s16(v123, v132);
  v135 = vzip1q_s16(v131, v132);
  v136 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v135)), vceqzq_s16(v135));
  v137 = vpmaxq_s16(v136, v136);
  v138 = vmaxq_s16(vmaxq_s16(v104, v115), vmaxq_s16(v126, v137));
  v139 = vclzq_s16(vsubq_s16(v133, v134));
  v140 = vsubq_s16(v36, v139);
  v141 = vcgtq_s16(v138, v140);
  v142 = vminq_s16(v140, v138);
  v140.i64[0] = 0x18001800180018;
  v140.i64[1] = 0x18001800180018;
  v143 = vbslq_s8(v141, v140, v36);
  v144 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v104), v83), 0);
  v145 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v115), v83), 0);
  v146 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v126), v83), 0);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v137), v83), 0);
  v148 = vsubq_s16(v142, v144);
  v149 = vsubq_s16(v142, v145);
  v150 = vsubq_s16(v142, v146);
  v151 = vsubq_s16(v142, v147);
  v152 = vceqq_s16(vaddq_s16(v147, v146), vnegq_s16(vaddq_s16(v144, v145)));
  v146.i64[0] = 0x4000400040004;
  v146.i64[1] = 0x4000400040004;
  v153 = vbicq_s8(v146, v152);
  v145.i64[0] = 0x7000700070007;
  v145.i64[1] = 0x7000700070007;
  v154 = vandq_s8(v476, v81);
  v155 = vsubq_s16(v75, v84);
  v156 = vsubq_s16(v75, v85);
  v157 = vsubq_s16(v75, v86);
  v158 = vsubq_s16(v75, v87);
  v159 = vorrq_s8(v474, v480);
  v160 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v75, v81), v155, v145), vshlq_n_s16(vaddq_s16(vaddq_s16(v157, v156), v158), 3uLL)), vaddq_s16(v474, v474)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v142, vceqzq_s16((*&v143 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v148, v145), vshlq_n_s16(vaddq_s16(vaddq_s16(v150, v149), v151), 3uLL)), vaddq_s16(v153, v153))), 0);
  if (vaddvq_s16(v160))
  {
    v161.i64[0] = 0x3000300030003;
    v161.i64[1] = 0x3000300030003;
    v162 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v142), v161), v143), v153);
    v161.i64[0] = 0xF000F000F000FLL;
    v161.i64[1] = 0xF000F000F000FLL;
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    v164 = vandq_s8(vsubq_s16(vshlq_s16(v163, vsubq_s16(v161, v139)), v134), v141);
    v16 = vbslq_s8(v160, vsubq_s16(v16, vqtbl1q_s8(v16, xmmword_29D2F1080)), v16);
    v497 = vbslq_s8(v160, v472, v497);
    v498 = vbslq_s8(v160, v470, v498);
    v165 = vbslq_s8(v160, v89, v485);
    v166 = vbslq_s8(v160, v90, v489);
    v167 = vbslq_s8(v160, v91, v491);
    v168 = vbslq_s8(v160, v93, v487);
    v169 = vbslq_s8(v160, v148, v155);
    v156 = vbslq_s8(v160, v149, v156);
    v481 = vbslq_s8(v160, v150, v157);
    v158 = vbslq_s8(v160, v151, v158);
    v154 = vbslq_s8(v160, v164, v154);
    v170 = vbslq_s8(v160, v142, v75);
    v477 = vbslq_s8(v160, v162, v159);
    v171 = vbslq_s8(v160, v92, v493);
    v172 = v165;
    v173 = vbslq_s8(v160, v469, v483);
    if (v78)
    {
LABEL_10:
      v174 = v481;
      v176 = v497;
      v175 = v498;
      v177 = v477;
      goto LABEL_17;
    }
  }

  else
  {
    v477 = v159;
    v481 = v157;
    v168 = v487;
    v166 = v489;
    v167 = v491;
    v171 = v493;
    v173 = v483;
    v172 = v485;
    v169 = v155;
    v170 = v75;
    if (v78)
    {
      goto LABEL_10;
    }
  }

  v475 = v154;
  v484 = v173;
  v486 = v172;
  v488 = v168;
  v490 = v166;
  v492 = v167;
  v494 = v171;
  v188 = vsubq_s16(v7, vqtbl2q_s8(*v7.i8, xmmword_29D2F0F80));
  v180 = vsubq_s16(v8, vqtbl2q_s8(*v7.i8, xmmword_29D2F1030));
  v500.val[0] = a3[1];
  v500.val[1] = *(&a3[1] + a4);
  v500.val[1].i32[3] = HIDWORD(*(a3 + a4));
  v473 = v156;
  v181 = vsubq_s16(v495, vqtbl2q_s8(v500, xmmword_29D2F0FA0));
  v182 = vsubq_s16(v9, vqtbl2q_s8(v500, xmmword_29D2F1040));
  v499.val[0] = v482;
  v499.val[1] = v478;
  v499.val[1].i32[3] = v500.val[1].i32[3];
  v183 = vsubq_s16(v482, vqtbl2q_s8(v499, xmmword_29D2F1050));
  v184 = vsubq_s16(v478, vqtbl2q_s8(v499, xmmword_29D2F0F80));
  v185 = v496;
  v500.val[0] = v479;
  v500.val[0].i32[3] = v500.val[1].i32[3];
  v186 = vsubq_s16(v496, vqtbl2q_s8(v500, xmmword_29D2F1060));
  v187 = v180;
  v187.i32[3] = v188.i32[0];
  v188.i32[0] = v180.i32[3];
  v189 = vsubq_s16(v479, vqtbl2q_s8(v500, xmmword_29D2F0F80));
  v190 = vqtbl1q_s8(vmaxq_s16(v188, v187), xmmword_29D2F1090);
  v191 = vqtbl1q_s8(vminq_s16(v188, v187), xmmword_29D2F1090);
  v192 = vpmaxq_s16(v190, v190);
  v193 = vpminq_s16(v191, v191);
  v194 = vpmaxq_s16(v192, v192);
  v195 = vpminq_s16(v193, v193);
  v196.i64[0] = 0x8000800080008000;
  v196.i64[1] = 0x8000800080008000;
  v197 = vmaxq_s16(v194, v196);
  v185.i64[0] = 0x8000800080008000;
  v185.i64[1] = 0x8000800080008000;
  v198 = vminq_s16(v195, v185);
  v199 = vzip1q_s16(v194, v195);
  v194.i64[0] = 0x10001000100010;
  v194.i64[1] = 0x10001000100010;
  v200 = vbicq_s8(vsubq_s16(v194, vclsq_s16(v199)), vceqzq_s16(v199));
  v201 = vpmaxq_s16(v200, v200);
  v471 = v182;
  v202 = vqtbl1q_s8(vmaxq_s16(v181, v182), xmmword_29D2F1090);
  v500.val[0] = vqtbl1q_s8(vminq_s16(v181, v182), xmmword_29D2F1090);
  v203 = vpmaxq_s16(v202, v202);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v204 = vpmaxq_s16(v203, v203);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v205 = vmaxq_s16(v197, v204);
  v206 = vminq_s16(v198, v500.val[0]);
  v207 = vzip1q_s16(v204, v500.val[0]);
  v208 = vbicq_s8(vsubq_s16(v194, vclsq_s16(v207)), vceqzq_s16(v207));
  v209 = vpmaxq_s16(v208, v208);
  v210 = vqtbl1q_s8(vmaxq_s16(v183, v184), xmmword_29D2F1090);
  v500.val[0] = vqtbl1q_s8(vminq_s16(v183, v184), xmmword_29D2F1090);
  v211 = vpmaxq_s16(v210, v210);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v212 = vpmaxq_s16(v211, v211);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v213 = vmaxq_s16(v205, v212);
  v214 = vminq_s16(v206, v500.val[0]);
  v215 = vzip1q_s16(v212, v500.val[0]);
  v216 = vbicq_s8(vsubq_s16(v194, vclsq_s16(v215)), vceqzq_s16(v215));
  v217 = vpmaxq_s16(v216, v216);
  v218 = vqtbl1q_s8(vmaxq_s16(v186, v189), xmmword_29D2F1090);
  v500.val[0] = vqtbl1q_s8(vminq_s16(v186, v189), xmmword_29D2F1090);
  v219 = vpmaxq_s16(v218, v218);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v220 = vpmaxq_s16(v219, v219);
  v500.val[0] = vpminq_s16(v500.val[0], v500.val[0]);
  v221 = vmaxq_s16(v213, v220);
  v222 = vminq_s16(v214, v500.val[0]);
  v223 = vzip1q_s16(v220, v500.val[0]);
  v224 = vbicq_s8(vsubq_s16(v194, vclsq_s16(v223)), vceqzq_s16(v223));
  v225 = v158;
  v226 = vpmaxq_s16(v224, v224);
  v227 = vmaxq_s16(vmaxq_s16(v201, v209), vmaxq_s16(v217, v226));
  v228 = vclzq_s16(vsubq_s16(v221, v222));
  v229 = vsubq_s16(v194, v228);
  v230 = vcgtq_s16(v227, v229);
  v231 = vminq_s16(v229, v227);
  v229.i64[0] = 0x3000300030003;
  v229.i64[1] = 0x3000300030003;
  v232 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v201), v229), 0);
  v233 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v209), v229), 0);
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v217), v229), 0);
  v235 = vmaxq_s16(vminq_s16(vsubq_s16(v231, v226), v229), 0);
  v236 = vsubq_s16(v231, v232);
  v237 = v170;
  v238 = vsubq_s16(v231, v233);
  v239 = vsubq_s16(v231, v234);
  v240 = vsubq_s16(v231, v235);
  v241 = vceqq_s16(vaddq_s16(v235, v234), vnegq_s16(vaddq_s16(v232, v233)));
  v233.i64[0] = 0x4000400040004;
  v233.i64[1] = 0x4000400040004;
  v242 = vbicq_s8(v233, v241);
  v235.i64[0] = 0x7000700070007;
  v235.i64[1] = 0x7000700070007;
  v243 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v231, v230), v236, v235), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL)), vaddq_s16(v242, v242));
  v244.i64[0] = 0x8000800080008;
  v244.i64[1] = 0x8000800080008;
  v177 = v477;
  v245.i64[0] = 0x2000200020002;
  v245.i64[1] = 0x2000200020002;
  v246 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v237, vceqzq_s16(vandq_s8(v477, v244))), vandq_s8(vaddq_s16(v177, v177), v244)), vandq_s8(vceqq_s16(vandq_s8(v477, v229), v245), v194)), v169, v235);
  v158 = v225;
  v174 = v481;
  v247 = v473;
  v248 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v246, vshlq_n_s16(vaddq_s16(vaddq_s16(v481, v473), v158), 3uLL)), v243), 0);
  if (vaddvq_s16(v248))
  {
    v249 = vandq_s8(vceqzq_s16(v231), v245);
    v250.i64[0] = 0x9000900090009;
    v250.i64[1] = 0x9000900090009;
    v251 = vorrq_s8(vorrq_s8(v249, vsubq_s16(vandq_s8(v230, v250), vmvnq_s8(v230))), v242);
    v252.i64[0] = 0xF000F000F000FLL;
    v252.i64[1] = 0xF000F000F000FLL;
    v253 = vsubq_s16(v252, v228);
    v252.i64[0] = -1;
    v252.i64[1] = -1;
    v254 = vandq_s8(vsubq_s16(vshlq_s16(v252, v253), v222), v230);
    v16.i32[0] = vbslq_s8(v248, vextq_s8(v8, v8, 0xCuLL), v16).u32[0];
    v176 = vbslq_s8(v248, v188, v497);
    v175 = vbslq_s8(v248, v187, v498);
    v173 = vbslq_s8(v248, v181, v484);
    v172 = vbslq_s8(v248, v471, v486);
    v166 = vbslq_s8(v248, v183, v490);
    v167 = vbslq_s8(v248, v184, v492);
    v171 = vbslq_s8(v248, v186, v494);
    v168 = vbslq_s8(v248, v189, v488);
    v169 = vbslq_s8(v248, v236, v169);
    v247 = vbslq_s8(v248, v238, v473);
    v174 = vbslq_s8(v248, v239, v481);
    v158 = vbslq_s8(v248, v240, v158);
    v154 = vbslq_s8(v248, v254, v475);
    v170 = vbslq_s8(v248, v231, v237);
    v177 = vbslq_s8(v248, v251, v477);
  }

  else
  {
    v167 = v492;
    v171 = v494;
    v168 = v488;
    v166 = v490;
    v170 = v237;
    v173 = v484;
    v172 = v486;
    v154 = v475;
    v176 = v497;
    v175 = v498;
  }

  v156 = v247;
LABEL_17:
  v255.i64[0] = 0x8000800080008;
  v255.i64[1] = 0x8000800080008;
  v256 = vandq_s8(v177, v255);
  v257.i64[0] = 0x3000300030003;
  v257.i64[1] = 0x3000300030003;
  v258.i64[0] = 0x2000200020002;
  v258.i64[1] = 0x2000200020002;
  v259 = vceqq_s16(vandq_s8(v177, v257), v258);
  v258.i64[0] = 0x10001000100010;
  v258.i64[1] = 0x10001000100010;
  v260 = vandq_s8(v259, v258);
  v258.i64[0] = 0x7000700070007;
  v258.i64[1] = 0x7000700070007;
  v261 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v174, v156), v158), 3uLL), v169, v258), vandq_s8(vaddq_s16(v177, v177), v255)), vbicq_s8(v170, vceqzq_s16(v256))), v260);
  if ((vpaddq_s16(v261, v261).i16[0] + 57) > 0x3FF)
  {
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v495;
    *(a1 + 48) = v9;
    *(a1 + 64) = v482;
    *(a1 + 80) = v478;
    v265 = (a1 + 96);
    v178 = 127;
    result = 128;
    *v265 = v496;
    v265[1] = v479;
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
    v266.i32[0] = v170.u16[0];
    v266.i32[1] = v170.u16[1];
    v267 = vshr_n_s32(vshl_n_s32(v266, 0x10uLL), 0x10uLL);
    v268 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v267, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v267)), 0x3C00000003C00);
    v269 = vorr_s8(vdup_lane_s32(v268, 1), v268).u32[0] | v177.i8[0] & 0x1F | (32 * (v177.i8[2] & 0x1F));
    v270 = v264 | (v269 << v263);
    if (v263 >= 0x2E)
    {
      *v262 = v270;
      v270 = v269 >> (-8 * (a1 & 7u));
    }

    v271 = (v263 + 18) & 0x3A;
    v272 = v270 | (v16.u32[0] << v271);
    if (v271 >= 0x20)
    {
      *(v262 + (((v263 + 18) >> 3) & 8)) = v272;
      v272 = v16.u32[0] >> -v271;
    }

    v273 = v263 + 50;
    v274 = vsubq_s16(v170, v169);
    v275 = vsubq_s16(v170, v156);
    v276 = vsubq_s16(v170, v174);
    v277 = vsubq_s16(v170, v158);
    *v274.i8 = vqmovn_u16(v274);
    *v275.i8 = vqmovn_u16(v275);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    v274.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v274, v275), vzip1q_s8(v276, v277)), vzip1q_s16(vtrn2q_s8(v274, v275), vtrn2q_s8(v276, v277))).u64[0];
    v276.i64[0] = 0x202020202020202;
    v276.i64[1] = 0x202020202020202;
    v278 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v177.i8, 0x4000400040004)))), v276);
    v276.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v276.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v277.i64[0] = -1;
    v277.i64[1] = -1;
    v279 = vandq_s8(vshlq_u8(v277, vorrq_s8(v278, v276)), v274.u64[0]);
    v280 = vmovl_u8(*v278.i8);
    v281 = vpaddq_s16(vshlq_u16(vmovl_u8(*v279.i8), vtrn1q_s16(0, v280)), vmovl_high_u8(v279));
    v282 = vpaddq_s16(v280, vmovl_high_u8(v278));
    v283 = vmovl_u16(*v282.i8);
    v284 = vmovl_high_u16(v282);
    v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v281.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v281), vtrn1q_s32(0, v284)));
    v286 = vpaddq_s32(v283, v284);
    v287.i64[0] = v285.u32[0];
    v287.i64[1] = v285.u32[1];
    v288 = v287;
    v287.i64[0] = v285.u32[2];
    v287.i64[1] = v285.u32[3];
    v289 = v287;
    v287.i64[0] = v286.u32[0];
    v287.i64[1] = v286.u32[1];
    v290 = v287;
    v287.i64[0] = v286.u32[2];
    v287.i64[1] = v286.u32[3];
    v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
    v292 = vpaddq_s64(v290, v287);
    v293 = (v263 + 50) & 0x3A;
    v294 = (v291.i64[0] << v293) | v272;
    if ((v292.i64[0] + v293) >= 0x40)
    {
      *(v262 + ((v273 >> 3) & 8)) = v294;
      v294 = v291.i64[0] >> -v293;
    }

    v295 = vceqq_s16(v170, v169);
    v296 = v292.i64[0] + v273;
    v297 = v294 | (v291.i64[1] << v296);
    if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
    {
      *(v262 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
      v297 = v291.i64[1] >> -(v296 & 0x3F);
      if ((v296 & 0x3F) == 0)
      {
        v297 = 0;
      }
    }

    v298 = vandq_s8(v154, v295);
    v299 = v296 + v292.i64[1];
    v300.i64[0] = -1;
    v300.i64[1] = -1;
    v301 = vandq_s8(vextq_s8(vtstq_s16(v256, v256), 0, 0xCuLL), v170);
    v302.i64[0] = 0xF000F000F000FLL;
    v302.i64[1] = 0xF000F000F000FLL;
    v303 = vandq_s8(vshlq_u16(v300, vaddq_s16(v301, v302)), v154);
    v304 = vmovl_u16(*v301.i8);
    v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v303.i8), vtrn1q_s32(0, v304)), vmovl_high_u16(v303));
    v306 = vpaddq_s32(v304, vmovl_high_u16(v301));
    v307.i64[0] = v305.u32[0];
    v307.i64[1] = v305.u32[1];
    v308 = v307;
    v307.i64[0] = v305.u32[2];
    v307.i64[1] = v305.u32[3];
    v309 = v307;
    v307.i64[0] = v306.u32[0];
    v307.i64[1] = v306.u32[1];
    v310 = v307;
    v307.i64[0] = v306.u32[2];
    v307.i64[1] = v306.u32[3];
    v311 = vpaddq_s64(vshlq_u64(v308, vzip1q_s64(0, v310)), vshlq_u64(v309, vzip1q_s64(0, v307)));
    v312 = vpaddq_s64(v310, v307);
    v313 = (v311.i64[0] << v299) | v297;
    if (v312.i64[0] + (v299 & 0x3F) >= 0x40)
    {
      *(v262 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v311.i64[0] >> -(v299 & 0x3F);
      if ((v299 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = vaddq_s16(v298, v176);
    v315 = v312.i64[0] + v299;
    v316 = v313 | (v311.i64[1] << v315);
    if ((v315 & 0x3F) + v312.i64[1] >= 0x40)
    {
      *(v262 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
      v316 = v311.i64[1] >> -(v315 & 0x3F);
      if ((v315 & 0x3F) == 0)
      {
        v316 = 0;
      }
    }

    v317 = v315 + v312.i64[1];
    v318 = vextq_s8(0, v169, 0xCuLL);
    v319.i64[0] = 0xF000F000F000FLL;
    v319.i64[1] = 0xF000F000F000FLL;
    v320.i64[0] = -1;
    v320.i64[1] = -1;
    v321 = vandq_s8(vshlq_u16(v320, vaddq_s16(v318, v319)), v314);
    v322 = vmovl_u16(*v318.i8);
    v323 = vmovl_high_u16(v318);
    v324 = vpaddq_s32(vshlq_u32(vmovl_u16(*v321.i8), vtrn1q_s32(0, v322)), vshlq_u32(vmovl_high_u16(v321), vtrn1q_s32(0, v323)));
    v325 = vpaddq_s32(v322, v323);
    v326.i64[0] = v324.u32[0];
    v326.i64[1] = v324.u32[1];
    v327 = v326;
    v326.i64[0] = v324.u32[2];
    v326.i64[1] = v324.u32[3];
    v328 = v326;
    v326.i64[0] = v325.u32[0];
    v326.i64[1] = v325.u32[1];
    v329 = v326;
    v326.i64[0] = v325.u32[2];
    v326.i64[1] = v325.u32[3];
    v330 = vpaddq_s64(vshlq_u64(v327, vzip1q_s64(0, v329)), vshlq_u64(v328, vzip1q_s64(0, v326)));
    v331 = vpaddq_s64(v329, v326);
    v332 = (v330.i64[0] << v317) | v316;
    if (v331.i64[0] + (v317 & 0x3F) >= 0x40)
    {
      *(v262 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v330.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = vceqq_s16(v170, v156);
    v334 = vaddq_s16(v175, v298);
    v335 = v331.i64[0] + v317;
    v336 = v332 | (v330.i64[1] << v335);
    if ((v335 & 0x3F) + v331.i64[1] >= 0x40)
    {
      *(v262 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v330.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vandq_s8(v154, v333);
    v338 = v335 + v331.i64[1];
    v339.i64[0] = 0xF000F000F000FLL;
    v339.i64[1] = 0xF000F000F000FLL;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u16(v340, vaddq_s16(v169, v339)), v334);
    v342 = vmovl_u16(*v169.i8);
    v343 = vmovl_high_u16(v169);
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
    v352 = (v350.i64[0] << v338) | v336;
    if (v351.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v262 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
      v352 = v350.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v352 = 0;
      }
    }

    v353 = vaddq_s16(v173, v337);
    v354 = v351.i64[0] + v338;
    v355 = v352 | (v350.i64[1] << v354);
    if ((v354 & 0x3F) + v351.i64[1] >= 0x40)
    {
      *(v262 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
      v355 = v350.i64[1] >> -(v354 & 0x3F);
      if ((v354 & 0x3F) == 0)
      {
        v355 = 0;
      }
    }

    v356 = v354 + v351.i64[1];
    v357.i64[0] = 0xF000F000F000FLL;
    v357.i64[1] = 0xF000F000F000FLL;
    v358.i64[0] = -1;
    v358.i64[1] = -1;
    v359 = vshlq_u16(v358, vaddq_s16(v156, v357));
    v360 = vandq_s8(v359, v353);
    v361 = vmovl_u16(*v360.i8);
    v362 = vmovl_high_u16(v360);
    v363 = vmovl_u16(*v156.i8);
    v364 = vmovl_high_u16(v156);
    v365 = vtrn1q_s32(0, v363);
    v366 = vtrn1q_s32(0, v364);
    v367 = vpaddq_s32(vshlq_u32(v361, v365), vshlq_u32(v362, v366));
    v368 = vpaddq_s32(v363, v364);
    v369.i64[0] = v367.u32[0];
    v369.i64[1] = v367.u32[1];
    v370 = v369;
    v369.i64[0] = v367.u32[2];
    v369.i64[1] = v367.u32[3];
    v371 = v369;
    v369.i64[0] = v368.u32[0];
    v369.i64[1] = v368.u32[1];
    v372 = v369;
    v369.i64[0] = v368.u32[2];
    v369.i64[1] = v368.u32[3];
    v373 = vzip1q_s64(0, v372);
    v374 = vzip1q_s64(0, v369);
    v375 = vpaddq_s64(vshlq_u64(v370, v373), vshlq_u64(v371, v374));
    v376 = vpaddq_s64(v372, v369);
    v377 = (v375.i64[0] << v356) | v355;
    if (v376.i64[0] + (v356 & 0x3F) >= 0x40)
    {
      *(v262 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
      if ((v356 & 0x3F) != 0)
      {
        v377 = v375.i64[0] >> -(v356 & 0x3F);
      }

      else
      {
        v377 = 0;
      }
    }

    v378 = vceqq_s16(v170, v174);
    v379 = vaddq_s16(v172, v337);
    v380 = v376.i64[0] + v356;
    v381 = v377 | (v375.i64[1] << v380);
    if ((v380 & 0x3F) + v376.i64[1] >= 0x40)
    {
      *(v262 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
      v381 = v375.i64[1] >> -(v380 & 0x3F);
      if ((v380 & 0x3F) == 0)
      {
        v381 = 0;
      }
    }

    v382 = vandq_s8(v154, v378);
    v383 = v380 + v376.i64[1];
    v384 = vandq_s8(v359, v379);
    v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), v365), vshlq_u32(vmovl_high_u16(v384), v366));
    v386.i64[0] = v385.u32[0];
    v386.i64[1] = v385.u32[1];
    v387 = v386;
    v386.i64[0] = v385.u32[2];
    v386.i64[1] = v385.u32[3];
    v388 = vpaddq_s64(vshlq_u64(v387, v373), vshlq_u64(v386, v374));
    v389 = (v388.i64[0] << v383) | v381;
    if (v376.i64[0] + (v383 & 0x3F) >= 0x40)
    {
      *(v262 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      v389 = v388.i64[0] >> -(v383 & 0x3F);
      if ((v383 & 0x3F) == 0)
      {
        v389 = 0;
      }
    }

    v390 = vaddq_s16(v166, v382);
    v391 = v376.i64[0] + v383;
    v392 = (v376.i64[0] + v383) & 0x3F;
    v393 = v389 | (v388.i64[1] << v391);
    if ((v391 & 0x3F) + v376.i64[1] >= 0x40)
    {
      *(v262 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
      v393 = v388.i64[1] >> -v392;
      if (!v392)
      {
        v393 = 0;
      }
    }

    v394 = v391 + v376.i64[1];
    v395.i64[0] = 0xF000F000F000FLL;
    v395.i64[1] = 0xF000F000F000FLL;
    v396.i64[0] = -1;
    v396.i64[1] = -1;
    v397 = vshlq_u16(v396, vaddq_s16(v174, v395));
    v398 = vandq_s8(v397, v390);
    v399 = vmovl_u16(*v398.i8);
    v400 = vmovl_high_u16(v398);
    v401 = vmovl_u16(*v174.i8);
    v402 = vmovl_high_u16(v174);
    v403 = vtrn1q_s32(0, v401);
    v404 = vtrn1q_s32(0, v402);
    v405 = vpaddq_s32(vshlq_u32(v399, v403), vshlq_u32(v400, v404));
    v406 = vpaddq_s32(v401, v402);
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
    v411 = vzip1q_s64(0, v410);
    v412 = vzip1q_s64(0, v407);
    v413 = vpaddq_s64(vshlq_u64(v408, v411), vshlq_u64(v409, v412));
    v414 = vpaddq_s64(v410, v407);
    v415 = (v413.i64[0] << v394) | v393;
    if (v414.i64[0] + (v394 & 0x3F) >= 0x40)
    {
      *(v262 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
      if ((v394 & 0x3F) != 0)
      {
        v415 = v413.i64[0] >> -(v394 & 0x3F);
      }

      else
      {
        v415 = 0;
      }
    }

    v416 = vceqq_s16(v170, v158);
    v417 = vaddq_s16(v167, v382);
    v418 = v414.i64[0] + v394;
    v419 = v415 | (v413.i64[1] << v418);
    if ((v418 & 0x3F) + v414.i64[1] >= 0x40)
    {
      *(v262 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
      v419 = v413.i64[1] >> -(v418 & 0x3F);
      if ((v418 & 0x3F) == 0)
      {
        v419 = 0;
      }
    }

    v420 = vandq_s8(v154, v416);
    v421 = v418 + v414.i64[1];
    v422 = vandq_s8(v397, v417);
    v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), v403), vshlq_u32(vmovl_high_u16(v422), v404));
    v424.i64[0] = v423.u32[0];
    v424.i64[1] = v423.u32[1];
    v425 = v424;
    v424.i64[0] = v423.u32[2];
    v424.i64[1] = v423.u32[3];
    v426 = vpaddq_s64(vshlq_u64(v425, v411), vshlq_u64(v424, v412));
    v427 = (v426.i64[0] << v421) | v419;
    if (v414.i64[0] + (v421 & 0x3F) >= 0x40)
    {
      *(v262 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
      v427 = v426.i64[0] >> -(v421 & 0x3F);
      if ((v421 & 0x3F) == 0)
      {
        v427 = 0;
      }
    }

    v428 = vaddq_s16(v171, v420);
    v429 = v414.i64[0] + v421;
    v430 = (v414.i64[0] + v421) & 0x3F;
    v431 = v427 | (v426.i64[1] << v429);
    if ((v429 & 0x3F) + v414.i64[1] >= 0x40)
    {
      *(v262 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
      v431 = v426.i64[1] >> -v430;
      if (!v430)
      {
        v431 = 0;
      }
    }

    v432 = v429 + v414.i64[1];
    v433.i64[0] = 0xF000F000F000FLL;
    v433.i64[1] = 0xF000F000F000FLL;
    v434.i64[0] = -1;
    v434.i64[1] = -1;
    v435 = vshlq_u16(v434, vaddq_s16(v158, v433));
    v436 = vandq_s8(v435, v428);
    v437 = vmovl_u16(*v436.i8);
    v438 = vmovl_high_u16(v436);
    v439 = vmovl_u16(*v158.i8);
    v440 = vmovl_high_u16(v158);
    v441 = vtrn1q_s32(0, v439);
    v442 = vtrn1q_s32(0, v440);
    v443 = vpaddq_s32(vshlq_u32(v437, v441), vshlq_u32(v438, v442));
    v444 = vpaddq_s32(v439, v440);
    v445.i64[0] = v443.u32[0];
    v445.i64[1] = v443.u32[1];
    v446 = v445;
    v445.i64[0] = v443.u32[2];
    v445.i64[1] = v443.u32[3];
    v447 = v445;
    v445.i64[0] = v444.u32[0];
    v445.i64[1] = v444.u32[1];
    v448 = v445;
    v445.i64[0] = v444.u32[2];
    v445.i64[1] = v444.u32[3];
    v449 = vzip1q_s64(0, v448);
    v450 = vzip1q_s64(0, v445);
    v451 = vpaddq_s64(vshlq_u64(v446, v449), vshlq_u64(v447, v450));
    v452 = vpaddq_s64(v448, v445);
    v453 = (v429 + v414.i64[1]) & 0x3F;
    v454 = (v451.i64[0] << (v429 + v414.i8[8])) | v431;
    if ((v452.i64[0] + v453) > 0x3F)
    {
      *(v262 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
      if (v453)
      {
        v454 = v451.i64[0] >> -v453;
      }

      else
      {
        v454 = 0;
      }
    }

    v455 = vaddq_s16(v168, v420);
    v456 = v452.i64[0] + v432;
    v457 = v454 | (v451.i64[1] << v456);
    if ((v456 & 0x3F) + v452.i64[1] >= 0x40)
    {
      *(v262 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
      v457 = v451.i64[1] >> -(v456 & 0x3F);
      if ((v456 & 0x3F) == 0)
      {
        v457 = 0;
      }
    }

    v458 = v456 + v452.i64[1];
    v459 = vandq_s8(v435, v455);
    v460 = vpaddq_s32(vshlq_u32(vmovl_u16(*v459.i8), v441), vshlq_u32(vmovl_high_u16(v459), v442));
    v461.i64[0] = v460.u32[0];
    v461.i64[1] = v460.u32[1];
    v462 = v461;
    v461.i64[0] = v460.u32[2];
    v461.i64[1] = v460.u32[3];
    v463 = vpaddq_s64(vshlq_u64(v462, v449), vshlq_u64(v461, v450));
    v464 = (v463.i64[0] << v458) | v457;
    if (v452.i64[0] + (v458 & 0x3F) >= 0x40)
    {
      *(v262 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v463.i64[0] >> -(v458 & 0x3F);
      if ((v458 & 0x3F) == 0)
      {
        v464 = 0;
      }
    }

    v465 = v452.i64[0] + v458;
    v466 = (v452.i64[0] + v458) & 0x3F;
    v467 = v464 | (v463.i64[1] << (v452.i8[0] + v458));
    if ((v466 + v452.i64[1]) >= 0x40)
    {
      *(v262 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v463.i64[1] >> -v466;
      if (!v466)
      {
        v467 = 0;
      }
    }

    v468 = v465 + v452.i64[1];
    if ((v468 & 0x3F) != 0)
    {
      *(v262 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
    }

    result = (v468 - v263 + 7) >> 3;
    v178 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v178;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 96), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v27 = (8 * (a3 & 7)) | 0x400;
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

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 1024 >= 9))
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

int16x8_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 127)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    v15 = *(a2 + 112);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
    *(a1 + 48) = v13;
    *(a1 + 128) = v10;
    *(a1 + 144) = v11;
    *(a1 + 160) = v14;
    *(a1 + 176) = v15;
    v7 = 128;
  }

  else if (v6 == 3)
  {
    v8 = vld1q_dup_f32(a2);
    *a1 = v8;
    *(a1 + 16) = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v8;
    *(a1 + 128) = v8;
    *(a1 + 144) = v8;
    *(a1 + 160) = v8;
    *(a1 + 176) = v8;
    v7 = 4;
  }

  else if (*a3)
  {
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v6);
  }

  else
  {
    v7 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  v16 = a2 + v7;
  v17 = (a1 + 256);
  v18 = a3[1];
  if (a3[1])
  {
    if (v18 == 3)
    {
      v27 = vld1q_dup_f32(v16);
      *(a1 + 256) = v27;
      *(a1 + 272) = v27;
      *(a1 + 288) = v27;
      *(a1 + 304) = v27;
      *(a1 + 384) = v27;
      *(a1 + 400) = v27;
      *(a1 + 416) = v27;
      *(a1 + 432) = v27;
      v26 = 4;
    }

    else if (v18 == 127)
    {
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 48);
      v22 = *(v16 + 64);
      v23 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      *v17 = *v16;
      *(a1 + 272) = v19;
      *(a1 + 288) = v22;
      *(a1 + 304) = v23;
      *(a1 + 384) = v20;
      *(a1 + 400) = v21;
      *(a1 + 416) = v24;
      *(a1 + 432) = v25;
      v26 = 128;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 128, v16, v18);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *v17 = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v28 = v16 + v26;
  v29 = (a1 + 64);
  v30 = a3[2];
  if (a3[2])
  {
    if (v30 == 3)
    {
      v39 = vld1q_dup_f32(v28);
      *(a1 + 64) = v39;
      *(a1 + 80) = v39;
      *(a1 + 96) = v39;
      *(a1 + 112) = v39;
      *(a1 + 192) = v39;
      *(a1 + 208) = v39;
      *(a1 + 224) = v39;
      *(a1 + 240) = v39;
      v38 = 4;
    }

    else if (v30 == 127)
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      v34 = *(v28 + 64);
      v35 = *(v28 + 80);
      v36 = *(v28 + 96);
      v37 = *(v28 + 112);
      *v29 = *v28;
      *(a1 + 80) = v31;
      *(a1 + 96) = v34;
      *(a1 + 112) = v35;
      *(a1 + 192) = v32;
      *(a1 + 208) = v33;
      *(a1 + 224) = v36;
      *(a1 + 240) = v37;
      v38 = 128;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 128, v28, v30);
    }
  }

  else
  {
    v38 = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *v29 = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v40 = v28 + v38;
  v41 = (a1 + 320);
  v42 = a3[3];
  if (a3[3])
  {
    if (v42 == 3)
    {
      v51 = vld1q_dup_f32(v40);
      *(a1 + 320) = v51;
      *(a1 + 336) = v51;
      *(a1 + 352) = v51;
      *(a1 + 368) = v51;
      *(a1 + 448) = v51;
      *(a1 + 464) = v51;
      *(a1 + 480) = v51;
      *(a1 + 496) = v51;
      v50 = 4;
    }

    else if (v42 == 127)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 32);
      v45 = *(v40 + 48);
      v46 = *(v40 + 64);
      v47 = *(v40 + 80);
      v48 = *(v40 + 96);
      v49 = *(v40 + 112);
      *v41 = *v40;
      *(a1 + 336) = v43;
      *(a1 + 352) = v46;
      *(a1 + 368) = v47;
      *(a1 + 448) = v44;
      *(a1 + 464) = v45;
      *(a1 + 480) = v48;
      *(a1 + 496) = v49;
      v50 = 128;
    }

    else
    {
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 128, v40, v42);
    }
  }

  else
  {
    v50 = 0;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *v41 = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  v52 = v40 + v50;
  v53 = (a1 + 512);
  v54 = a3[4];
  if (a3[4])
  {
    if (v54 == 3)
    {
      v63 = vld1q_dup_f32(v52);
      *(a1 + 512) = v63;
      *(a1 + 528) = v63;
      *(a1 + 544) = v63;
      *(a1 + 560) = v63;
      *(a1 + 640) = v63;
      *(a1 + 656) = v63;
      *(a1 + 672) = v63;
      *(a1 + 688) = v63;
      v62 = 4;
    }

    else if (v54 == 127)
    {
      v55 = *(v52 + 16);
      v56 = *(v52 + 32);
      v57 = *(v52 + 48);
      v58 = *(v52 + 64);
      v59 = *(v52 + 80);
      v60 = *(v52 + 96);
      v61 = *(v52 + 112);
      *v53 = *v52;
      *(a1 + 528) = v55;
      *(a1 + 544) = v58;
      *(a1 + 560) = v59;
      *(a1 + 640) = v56;
      *(a1 + 656) = v57;
      *(a1 + 672) = v60;
      *(a1 + 688) = v61;
      v62 = 128;
    }

    else
    {
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 128, v52, v54);
    }
  }

  else
  {
    v62 = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *v53 = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
  }

  v64 = v52 + v62;
  v65 = (a1 + 768);
  v66 = a3[5];
  if (a3[5])
  {
    if (v66 == 3)
    {
      v75 = vld1q_dup_f32(v64);
      *(a1 + 768) = v75;
      *(a1 + 784) = v75;
      *(a1 + 800) = v75;
      *(a1 + 816) = v75;
      *(a1 + 896) = v75;
      *(a1 + 912) = v75;
      *(a1 + 928) = v75;
      *(a1 + 944) = v75;
      v74 = 4;
    }

    else if (v66 == 127)
    {
      v67 = *(v64 + 16);
      v68 = *(v64 + 32);
      v69 = *(v64 + 48);
      v70 = *(v64 + 64);
      v71 = *(v64 + 80);
      v72 = *(v64 + 96);
      v73 = *(v64 + 112);
      *v65 = *v64;
      *(a1 + 784) = v67;
      *(a1 + 800) = v70;
      *(a1 + 816) = v71;
      *(a1 + 896) = v68;
      *(a1 + 912) = v69;
      *(a1 + 928) = v72;
      *(a1 + 944) = v73;
      v74 = 128;
    }

    else
    {
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 128, v64, v66);
    }
  }

  else
  {
    v74 = 0;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *v65 = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
  }

  v76 = v64 + v74;
  v77 = (a1 + 576);
  v78 = a3[6];
  if (a3[6])
  {
    if (v78 == 3)
    {
      v87 = vld1q_dup_f32(v76);
      *(a1 + 576) = v87;
      *(a1 + 592) = v87;
      *(a1 + 608) = v87;
      *(a1 + 624) = v87;
      *(a1 + 704) = v87;
      *(a1 + 720) = v87;
      *(a1 + 736) = v87;
      *(a1 + 752) = v87;
      v86 = 4;
    }

    else if (v78 == 127)
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 32);
      v81 = *(v76 + 48);
      v82 = *(v76 + 64);
      v83 = *(v76 + 80);
      v84 = *(v76 + 96);
      v85 = *(v76 + 112);
      *v77 = *v76;
      *(a1 + 592) = v79;
      *(a1 + 608) = v82;
      *(a1 + 624) = v83;
      *(a1 + 704) = v80;
      *(a1 + 720) = v81;
      *(a1 + 736) = v84;
      *(a1 + 752) = v85;
      v86 = 128;
    }

    else
    {
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 128, v76, v78);
    }
  }

  else
  {
    v86 = 0;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *v77 = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 704) = 0u;
    *(a1 + 720) = 0u;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
  }

  result = (a1 + 832);
  v89 = a3[7];
  if (!a3[7])
  {
    v98 = 0uLL;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 0u;
    *result = 0u;
    *(a1 + 848) = 0u;
    goto LABEL_56;
  }

  v90 = v76 + v86;
  if (v89 == 3)
  {
    v98 = vld1q_dup_f32(v90);
    *(a1 + 832) = v98;
    *(a1 + 848) = v98;
    *(a1 + 864) = v98;
    *(a1 + 880) = v98;
LABEL_56:
    *(a1 + 960) = v98;
    *(a1 + 976) = v98;
    *(a1 + 992) = v98;
    *(a1 + 1008) = v98;
    return result;
  }

  if (v89 == 127)
  {
    v91 = *(v90 + 16);
    v92 = *(v90 + 32);
    v93 = *(v90 + 48);
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 96);
    v97 = *(v90 + 112);
    *result = *v90;
    *(a1 + 848) = v91;
    *(a1 + 864) = v94;
    *(a1 + 880) = v95;
    *(a1 + 960) = v92;
    *(a1 + 976) = v93;
    *(a1 + 992) = v96;
    *(a1 + 1008) = v97;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v90, v89);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = vdupq_lane_s32(*a3->i8, 0);
  v7 = vsubq_s16(*a3, v6);
  v492 = *a3;
  v493 = a3[1];
  v8 = vsubq_s16(v493, v6);
  v490 = *(a3 + a4);
  v9 = vsubq_s16(v490, v6);
  v478 = *(&a3[1] + a4);
  v10 = vsubq_s16(v478, v6);
  v491 = a3[2];
  v11 = vsubq_s16(v491, v6);
  v12 = vsubq_s16(a3[3], v6);
  v13 = vsubq_s16(*(&a3[2] + a4), v6);
  v14 = vqtbl1q_s8(vmaxq_s16(v7, v8), xmmword_29D2F1090);
  v15 = vqtbl1q_s8(vminq_s16(v7, v8), xmmword_29D2F1090);
  v16 = vpmaxq_s16(v14, v14);
  v17 = vpminq_s16(v15, v15);
  v18 = vpmaxq_s16(v16, v16);
  v19 = vpminq_s16(v17, v17);
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  v21 = vmaxq_s16(v18, v20);
  v22.i64[0] = 0x8000800080008000;
  v22.i64[1] = 0x8000800080008000;
  v23 = vminq_s16(v19, v22);
  v24 = vzip1q_s16(v18, v19);
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v24)), vceqzq_s16(v24));
  v27 = vqtbl1q_s8(vmaxq_s16(v9, v10), xmmword_29D2F1090);
  v28 = vqtbl1q_s8(vminq_s16(v9, v10), xmmword_29D2F1090);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vpmaxq_s16(v29, v29);
  v32 = vpminq_s16(v30, v30);
  v33 = vmaxq_s16(v21, v31);
  v34 = vminq_s16(v23, v32);
  v35 = vzip1q_s16(v31, v32);
  v36 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v35)), vceqzq_s16(v35));
  v37 = vqtbl1q_s8(vmaxq_s16(v11, v12), xmmword_29D2F1090);
  v38 = vqtbl1q_s8(vminq_s16(v11, v12), xmmword_29D2F1090);
  v39 = vpmaxq_s16(v37, v37);
  v40 = vpminq_s16(v38, v38);
  v41 = vpmaxq_s16(v39, v39);
  v42 = vpminq_s16(v40, v40);
  v43 = vmaxq_s16(v33, v41);
  v44 = vminq_s16(v34, v42);
  v45 = vzip1q_s16(v41, v42);
  v46 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v45)), vceqzq_s16(v45));
  v479 = *(&a3[3] + a4);
  v47 = vsubq_s16(v479, v6);
  v48 = vqtbl1q_s8(vmaxq_s16(v13, v47), xmmword_29D2F1090);
  v49 = vqtbl1q_s8(vminq_s16(v13, v47), xmmword_29D2F1090);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vmaxq_s16(v43, v52);
  v55 = vminq_s16(v44, v53);
  v56 = vzip1q_s16(v52, v53);
  v57 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v56)), vceqzq_s16(v56));
  v58 = vpmaxq_s16(v26, v26);
  v59 = vpmaxq_s16(v36, v36);
  v60 = vpmaxq_s16(v46, v46);
  v61 = vpmaxq_s16(v57, v57);
  v62 = vmaxq_s16(vmaxq_s16(v58, v59), vmaxq_s16(v60, v61));
  v63 = vclzq_s16(vsubq_s16(v54, v55));
  v64 = vsubq_s16(v25, v63);
  v65 = vminq_s16(v64, v62);
  v66 = vmaxvq_s16(v65);
  v68 = a5 < 2 || a6 == 0;
  if (v66)
  {
    v477 = *(&a3[2] + a4);
    v476 = a3[3];
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70.i64[0] = 0xF000F000F000FLL;
    v70.i64[1] = 0xF000F000F000FLL;
    v495 = vsubq_s16(vshlq_s16(v69, vsubq_s16(v70, v63)), v55);
    v71 = vcgtq_s16(v62, v64);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73 = vandq_s8(v71, v72);
    v72.i64[0] = 0x3000300030003;
    v72.i64[1] = 0x3000300030003;
    v474 = vorrq_s8(vandq_s8(vceqzq_s16(v65), v72), v73);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v58), v72), 0);
    v470 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v60), v72), 0);
    v471 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v59), v72), 0);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v72), 0);
    v76.i64[0] = 0x4000400040004;
    v76.i64[1] = 0x4000400040004;
    v472 = vbicq_s8(v76, vceqq_s16(vaddq_s16(v75, v470), vnegq_s16(vaddq_s16(v74, v471))));
    v77 = vsubq_s16(v7, vqtbl1q_s8(v7, xmmword_29D2F1080));
    v78 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1080));
    v79 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1080));
    v473 = v8;
    v80 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1080));
    v81 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1080));
    v82 = vsubq_s16(v12, vqtbl1q_s8(v12, xmmword_29D2F1080));
    v83 = vsubq_s16(v13, vqtbl1q_s8(v13, xmmword_29D2F1080));
    v84 = vsubq_s16(v47, vqtbl1q_s8(v47, xmmword_29D2F1080));
    v486 = v11;
    v85 = vqtbl1q_s8(vmaxq_s16(v77, v78), xmmword_29D2F1090);
    v86 = vqtbl1q_s8(vminq_s16(v77, v78), xmmword_29D2F1090);
    v87 = vpmaxq_s16(v85, v85);
    v88 = vpminq_s16(v86, v86);
    v89 = vpmaxq_s16(v87, v87);
    v90 = vpminq_s16(v88, v88);
    v91 = vmaxq_s16(v89, v20);
    v480 = v9;
    v482 = v10;
    v92 = vminq_s16(v90, v22);
    v93 = vzip1q_s16(v89, v90);
    v94 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v93)), vceqzq_s16(v93));
    v95 = vpmaxq_s16(v94, v94);
    v96 = vqtbl1q_s8(vmaxq_s16(v79, v80), xmmword_29D2F1090);
    v97 = vqtbl1q_s8(vminq_s16(v79, v80), xmmword_29D2F1090);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v100 = vpmaxq_s16(v98, v98);
    v101 = vpminq_s16(v99, v99);
    v102 = vmaxq_s16(v91, v100);
    v103 = vminq_s16(v92, v101);
    v104 = vzip1q_s16(v100, v101);
    v105 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v104)), vceqzq_s16(v104));
    v488 = v13;
    v484 = v12;
    v106 = vpmaxq_s16(v105, v105);
    v107 = vqtbl1q_s8(vmaxq_s16(v81, v82), xmmword_29D2F1090);
    v108 = vqtbl1q_s8(vminq_s16(v81, v82), xmmword_29D2F1090);
    v109 = vpmaxq_s16(v107, v107);
    v110 = vpminq_s16(v108, v108);
    v111 = vpmaxq_s16(v109, v109);
    v112 = vpminq_s16(v110, v110);
    v113 = vmaxq_s16(v102, v111);
    v114 = vminq_s16(v103, v112);
    v115 = vzip1q_s16(v111, v112);
    v116 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v115)), vceqzq_s16(v115));
    v117 = vpmaxq_s16(v116, v116);
    v118 = vqtbl1q_s8(vmaxq_s16(v83, v84), xmmword_29D2F1090);
    v119 = vqtbl1q_s8(vminq_s16(v83, v84), xmmword_29D2F1090);
    v120 = vpmaxq_s16(v118, v118);
    v121 = vpminq_s16(v119, v119);
    v122 = vpmaxq_s16(v120, v120);
    v123 = vpminq_s16(v121, v121);
    v124 = vmaxq_s16(v113, v122);
    v125 = vminq_s16(v114, v123);
    v126 = vzip1q_s16(v122, v123);
    v127 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v126)), vceqzq_s16(v126));
    v128 = vpmaxq_s16(v127, v127);
    v129 = vmaxq_s16(vmaxq_s16(v95, v106), vmaxq_s16(v117, v128));
    v130 = vclzq_s16(vsubq_s16(v124, v125));
    v131 = vsubq_s16(v25, v130);
    v132 = vcgtq_s16(v129, v131);
    v133 = vminq_s16(v131, v129);
    v131.i64[0] = 0x18001800180018;
    v131.i64[1] = 0x18001800180018;
    v134 = vbslq_s8(v132, v131, v25);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v95), v72), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v106), v72), 0);
    v137 = vminq_s16(vsubq_s16(v133, v117), v72);
    v138 = v47;
    v139 = vmaxq_s16(v137, 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v128), v72), 0);
    v141 = vsubq_s16(v133, v135);
    v142 = vsubq_s16(v133, v136);
    v143 = vsubq_s16(v133, v139);
    v144 = vaddq_s16(v135, v136);
    v145 = vsubq_s16(v133, v140);
    v146 = vbicq_s8(v76, vceqq_s16(vaddq_s16(v140, v139), vnegq_s16(v144)));
    v139.i64[0] = 0x7000700070007;
    v139.i64[1] = 0x7000700070007;
    v147 = vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v133, vceqzq_s16((*&v134 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v141, v139), vshlq_n_s16(vaddq_s16(vaddq_s16(v143, v142), v145), 3uLL)), vaddq_s16(v146, v146));
    v494 = vandq_s8(v495, v71);
    v148 = vsubq_s16(v65, v74);
    v149 = vsubq_s16(v65, v471);
    v150 = vsubq_s16(v65, v470);
    v496 = vsubq_s16(v65, v75);
    v151 = vaddq_s16(vmlaq_s16(vandq_s8(v65, v71), v148, v139), vshlq_n_s16(vaddq_s16(vaddq_s16(v150, v149), v496), 3uLL));
    v152 = vorrq_s8(v472, v474);
    v153 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v151, vaddq_s16(v472, v472)), v147), 0);
    if (vaddvq_s16(v153))
    {
      v154.i64[0] = 0x3000300030003;
      v154.i64[1] = 0x3000300030003;
      v155 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v133), v154), v134), v146);
      v156.i64[0] = 0xF000F000F000FLL;
      v156.i64[1] = 0xF000F000F000FLL;
      v157 = vsubq_s16(v156, v130);
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v158 = vandq_s8(vsubq_s16(vshlq_s16(v156, v157), v125), v132);
      v6 = vbslq_s8(v153, vsubq_s16(v6, vqtbl1q_s8(v6, xmmword_29D2F1080)), v6);
      v159 = vbslq_s8(v153, v77, v7);
      v160 = vbslq_s8(v153, v78, v473);
      v161 = vbslq_s8(v153, v79, v480);
      v162 = vbslq_s8(v153, v80, v482);
      v163 = vbslq_s8(v153, v82, v484);
      v164 = vbslq_s8(v153, v84, v138);
      v165 = vbslq_s8(v153, v141, v148);
      v149 = vbslq_s8(v153, v142, v149);
      v150 = vbslq_s8(v153, v143, v150);
      v496 = vbslq_s8(v153, v145, v496);
      v494 = vbslq_s8(v153, v158, v494);
      v65 = vbslq_s8(v153, v133, v65);
      v152 = vbslq_s8(v153, v155, v152);
      v166 = vbslq_s8(v153, v83, v488);
      v167 = vbslq_s8(v153, v81, v486);
    }

    else
    {
      v159 = v7;
      v160 = v473;
      v164 = v138;
      v167 = v486;
      v166 = v488;
      v162 = v482;
      v163 = v484;
      v161 = v480;
      v165 = v148;
    }

    v170 = *a3;
    v171 = a3[1];
    if (!v68)
    {
      v483 = v162;
      v485 = v163;
      v487 = v167;
      v489 = v166;
      v481 = v161;
      v475 = v164;
      v183 = vsubq_s16(v492, vqtbl2q_s8(*v170.i8, xmmword_29D2F0F80));
      v172 = vsubq_s16(v493, vqtbl2q_s8(*v170.i8, xmmword_29D2F1030));
      v497 = *&a3->i8[a4];
      v497.val[1].i32[3] = HIDWORD(*&a3[1]);
      v173 = vqtbl2q_s8(v497, xmmword_29D2F1040);
      v174 = vsubq_s16(v490, vqtbl2q_s8(v497, xmmword_29D2F0FA0));
      v175 = vsubq_s16(v478, v173);
      v497.val[1] = a3[2];
      v176 = a3[3];
      v176.i32[3] = HIDWORD(*&a3[1]);
      v177 = vsubq_s16(v491, vqtbl2q_s8(*(&v497 + 16), xmmword_29D2F1050));
      v178 = vsubq_s16(v476, vqtbl2q_s8(*(&v497 + 16), xmmword_29D2F0F80));
      v497.val[1] = *(&a3[2] + a4);
      v179 = *(&a3[3] + a4);
      v179.i32[3] = HIDWORD(*&a3[1]);
      v180 = vqtbl2q_s8(*(&v497 + 16), xmmword_29D2F0F80);
      v181 = vsubq_s16(v477, vqtbl2q_s8(*(&v497 + 16), xmmword_29D2F1060));
      v182 = v172;
      v182.i32[3] = v183.i32[0];
      v183.i32[0] = v172.i32[3];
      v184 = vsubq_s16(v479, v180);
      v185 = vqtbl1q_s8(vmaxq_s16(v183, v182), xmmword_29D2F1090);
      v186 = vqtbl1q_s8(vminq_s16(v183, v182), xmmword_29D2F1090);
      v187 = vpmaxq_s16(v185, v185);
      v188 = vpminq_s16(v186, v186);
      v189 = vpmaxq_s16(v187, v187);
      v190 = vpminq_s16(v188, v188);
      v179.i64[0] = 0x8000800080008000;
      v179.i64[1] = 0x8000800080008000;
      v191 = vmaxq_s16(v189, v179);
      v192.i64[0] = 0x8000800080008000;
      v192.i64[1] = 0x8000800080008000;
      v193 = vminq_s16(v190, v192);
      v194 = vzip1q_s16(v189, v190);
      v189.i64[0] = 0x10001000100010;
      v189.i64[1] = 0x10001000100010;
      v195 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v194)), vceqzq_s16(v194));
      v196 = vpmaxq_s16(v195, v195);
      v197 = vqtbl1q_s8(vmaxq_s16(v174, v175), xmmword_29D2F1090);
      v198 = vqtbl1q_s8(vminq_s16(v174, v175), xmmword_29D2F1090);
      v199 = vpmaxq_s16(v197, v197);
      v200 = vpminq_s16(v198, v198);
      v201 = vpmaxq_s16(v199, v199);
      v202 = vpminq_s16(v200, v200);
      v203 = vmaxq_s16(v191, v201);
      v204 = vminq_s16(v193, v202);
      v205 = vzip1q_s16(v201, v202);
      v206 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v205)), vceqzq_s16(v205));
      v207 = vpmaxq_s16(v206, v206);
      v208 = vqtbl1q_s8(vmaxq_s16(v177, v178), xmmword_29D2F1090);
      v209 = vqtbl1q_s8(vminq_s16(v177, v178), xmmword_29D2F1090);
      v210 = vpmaxq_s16(v208, v208);
      v211 = vpminq_s16(v209, v209);
      v212 = vpmaxq_s16(v210, v210);
      v213 = vpminq_s16(v211, v211);
      v214 = vmaxq_s16(v203, v212);
      v215 = vminq_s16(v204, v213);
      v216 = vzip1q_s16(v212, v213);
      v217 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v216)), vceqzq_s16(v216));
      v218 = vpmaxq_s16(v217, v217);
      v219 = vqtbl1q_s8(vmaxq_s16(v181, v184), xmmword_29D2F1090);
      v220 = vqtbl1q_s8(vminq_s16(v181, v184), xmmword_29D2F1090);
      v221 = vpmaxq_s16(v219, v219);
      v222 = vpminq_s16(v220, v220);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v225 = vmaxq_s16(v214, v223);
      v226 = vminq_s16(v215, v224);
      v227 = vzip1q_s16(v223, v224);
      v228 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = v150;
      v230 = vpmaxq_s16(v228, v228);
      v231 = vmaxq_s16(vmaxq_s16(v196, v207), vmaxq_s16(v218, v230));
      v232 = vclzq_s16(vsubq_s16(v225, v226));
      v233 = vsubq_s16(v189, v232);
      v234 = vcgtq_s16(v231, v233);
      v235 = vminq_s16(v233, v231);
      v233.i64[0] = 0x3000300030003;
      v233.i64[1] = 0x3000300030003;
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v235, v196), v233), 0);
      v237 = vmaxq_s16(vminq_s16(vsubq_s16(v235, v207), v233), 0);
      v238 = vmaxq_s16(vminq_s16(vsubq_s16(v235, v218), v233), 0);
      v239 = vmaxq_s16(vminq_s16(vsubq_s16(v235, v230), v233), 0);
      v240 = vsubq_s16(v235, v236);
      v241 = vsubq_s16(v235, v237);
      v242 = vsubq_s16(v235, v238);
      v243 = vsubq_s16(v235, v239);
      v244 = vceqq_s16(vaddq_s16(v239, v238), vnegq_s16(vaddq_s16(v236, v237)));
      v237.i64[0] = 0x4000400040004;
      v237.i64[1] = 0x4000400040004;
      v245 = vbicq_s8(v237, v244);
      v230.i64[0] = 0x7000700070007;
      v230.i64[1] = 0x7000700070007;
      v246 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v235, v234), v240, v230), vshlq_n_s16(vaddq_s16(vaddq_s16(v242, v241), v243), 3uLL)), vaddq_s16(v245, v245));
      v236.i64[0] = 0x8000800080008;
      v236.i64[1] = 0x8000800080008;
      v247.i64[0] = 0x2000200020002;
      v247.i64[1] = 0x2000200020002;
      v248 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v65, vceqzq_s16(vandq_s8(v152, v236))), vandq_s8(vaddq_s16(v152, v152), v236)), vandq_s8(vceqq_s16(vandq_s8(v152, v233), v247), v189)), v165, v230);
      v150 = v229;
      v249 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v248, vshlq_n_s16(vaddq_s16(vaddq_s16(v229, v149), v496), 3uLL)), v246), 0);
      if (vaddvq_s16(v249))
      {
        v250.i64[0] = 0x9000900090009;
        v250.i64[1] = 0x9000900090009;
        v251 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v235), v247), vsubq_s16(vandq_s8(v234, v250), vmvnq_s8(v234))), v245);
        v252.i64[0] = 0xF000F000F000FLL;
        v252.i64[1] = 0xF000F000F000FLL;
        v253 = vsubq_s16(v252, v232);
        v252.i64[0] = -1;
        v252.i64[1] = -1;
        v254 = vandq_s8(vsubq_s16(vshlq_s16(v252, v253), v226), v234);
        v6.i32[0] = vbslq_s8(v249, vextq_s8(v493, v493, 0xCuLL), v6).u32[0];
        v159 = vbslq_s8(v249, v183, v159);
        v160 = vbslq_s8(v249, v182, v160);
        v161 = vbslq_s8(v249, v174, v481);
        v162 = vbslq_s8(v249, v175, v483);
        v167 = vbslq_s8(v249, v177, v487);
        v163 = vbslq_s8(v249, v178, v485);
        v166 = vbslq_s8(v249, v181, v489);
        v164 = vbslq_s8(v249, v184, v475);
        v165 = vbslq_s8(v249, v240, v165);
        v149 = vbslq_s8(v249, v241, v149);
        v150 = vbslq_s8(v249, v242, v150);
        v494 = vbslq_s8(v249, v254, v494);
        v496 = vbslq_s8(v249, v243, v496);
        v65 = vbslq_s8(v249, v235, v65);
        v152 = vbslq_s8(v249, v251, v152);
      }

      else
      {
        v167 = v487;
        v166 = v489;
        v161 = v481;
        v162 = v483;
        v164 = v475;
        v163 = v485;
      }
    }

    v255.i64[0] = 0x8000800080008;
    v255.i64[1] = 0x8000800080008;
    v256 = vandq_s8(v152, v255);
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v152, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v150, v149), v496), 3uLL), v165, v258), vandq_s8(vaddq_s16(v152, v152), v255)), vbicq_s8(v65, vceqzq_s16(v256))), v260);
    if ((vpaddq_s16(v261, v261).i16[0] + 57) > 0x3FF)
    {
      *a1 = v492;
      a1[1] = v493;
      a1[2] = v490;
      a1[3] = v478;
      a1[4] = v491;
      a1[5] = v476;
      v265 = a1 + 6;
      v168 = 127;
      result = 128;
      *v265 = v477;
      v265[1] = v479;
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
      v266.i32[0] = v65.u16[0];
      v266.i32[1] = v65.u16[1];
      v267 = vshr_n_s32(vshl_n_s32(v266, 0x10uLL), 0x10uLL);
      v268 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v267, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v267)), 0x3C00000003C00);
      v269 = vorr_s8(vdup_lane_s32(v268, 1), v268).u32[0] | v152.i8[0] & 0x1F | (32 * (v152.i8[2] & 0x1F));
      v270 = v264 | (v269 << v263);
      if (v263 >= 0x2E)
      {
        *v262 = v270;
        v270 = v269 >> (-8 * (a1 & 7u));
      }

      v271 = (v263 + 18) & 0x3A;
      v272 = v270 | (v6.u32[0] << v271);
      if (v271 >= 0x20)
      {
        *(v262 + (((v263 + 18) >> 3) & 8)) = v272;
        v272 = v6.u32[0] >> -v271;
      }

      v273 = v263 + 50;
      v274 = vsubq_s16(v65, v165);
      v275 = vsubq_s16(v65, v149);
      v276 = vsubq_s16(v65, v150);
      v277 = vsubq_s16(v65, v496);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      *v276.i8 = vqmovn_u16(v276);
      *v277.i8 = vqmovn_u16(v277);
      v274.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v274, v275), vzip1q_s8(v276, v277)), vzip1q_s16(vtrn2q_s8(v274, v275), vtrn2q_s8(v276, v277))).u64[0];
      v276.i64[0] = 0x202020202020202;
      v276.i64[1] = 0x202020202020202;
      v278 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v152.i8, 0x4000400040004)))), v276);
      v276.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v276.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v277.i64[0] = -1;
      v277.i64[1] = -1;
      v279 = vandq_s8(vshlq_u8(v277, vorrq_s8(v278, v276)), v274.u64[0]);
      v280 = vmovl_u8(*v278.i8);
      v281 = vpaddq_s16(vshlq_u16(vmovl_u8(*v279.i8), vtrn1q_s16(0, v280)), vmovl_high_u8(v279));
      v282 = vpaddq_s16(v280, vmovl_high_u8(v278));
      v283 = vmovl_u16(*v282.i8);
      v284 = vmovl_high_u16(v282);
      v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v281.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v281), vtrn1q_s32(0, v284)));
      v286 = vpaddq_s32(v283, v284);
      v287.i64[0] = v285.u32[0];
      v287.i64[1] = v285.u32[1];
      v288 = v287;
      v287.i64[0] = v285.u32[2];
      v287.i64[1] = v285.u32[3];
      v289 = v287;
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v290 = v287;
      v287.i64[0] = v286.u32[2];
      v287.i64[1] = v286.u32[3];
      v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
      v292 = vpaddq_s64(v290, v287);
      v293 = (v263 + 50) & 0x3A;
      v294 = (v291.i64[0] << v293) | v272;
      if ((v292.i64[0] + v293) >= 0x40)
      {
        *(v262 + ((v273 >> 3) & 8)) = v294;
        v294 = v291.i64[0] >> -v293;
      }

      v295 = vceqq_s16(v65, v165);
      v296 = v292.i64[0] + v273;
      v297 = v294 | (v291.i64[1] << v296);
      if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
      {
        *(v262 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
        v297 = v291.i64[1] >> -(v296 & 0x3F);
        if ((v296 & 0x3F) == 0)
        {
          v297 = 0;
        }
      }

      v298 = vandq_s8(v494, v295);
      v299 = v296 + v292.i64[1];
      v300.i64[0] = -1;
      v300.i64[1] = -1;
      v301 = vandq_s8(vextq_s8(vtstq_s16(v256, v256), 0, 0xCuLL), v65);
      v302.i64[0] = 0xF000F000F000FLL;
      v302.i64[1] = 0xF000F000F000FLL;
      v303 = vandq_s8(vshlq_u16(v300, vaddq_s16(v301, v302)), v494);
      v304 = vmovl_u16(*v301.i8);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v303.i8), vtrn1q_s32(0, v304)), vmovl_high_u16(v303));
      v306 = vpaddq_s32(v304, vmovl_high_u16(v301));
      v307.i64[0] = v305.u32[0];
      v307.i64[1] = v305.u32[1];
      v308 = v307;
      v307.i64[0] = v305.u32[2];
      v307.i64[1] = v305.u32[3];
      v309 = v307;
      v307.i64[0] = v306.u32[0];
      v307.i64[1] = v306.u32[1];
      v310 = v307;
      v307.i64[0] = v306.u32[2];
      v307.i64[1] = v306.u32[3];
      v311 = vpaddq_s64(vshlq_u64(v308, vzip1q_s64(0, v310)), vshlq_u64(v309, vzip1q_s64(0, v307)));
      v312 = vpaddq_s64(v310, v307);
      v313 = (v311.i64[0] << v299) | v297;
      if (v312.i64[0] + (v299 & 0x3F) >= 0x40)
      {
        *(v262 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
        v313 = v311.i64[0] >> -(v299 & 0x3F);
        if ((v299 & 0x3F) == 0)
        {
          v313 = 0;
        }
      }

      v314 = vaddq_s16(v298, v159);
      v315 = v312.i64[0] + v299;
      v316 = v313 | (v311.i64[1] << v315);
      if ((v315 & 0x3F) + v312.i64[1] >= 0x40)
      {
        *(v262 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
        v316 = v311.i64[1] >> -(v315 & 0x3F);
        if ((v315 & 0x3F) == 0)
        {
          v316 = 0;
        }
      }

      v317 = v315 + v312.i64[1];
      v318 = vextq_s8(0, v165, 0xCuLL);
      v319.i64[0] = 0xF000F000F000FLL;
      v319.i64[1] = 0xF000F000F000FLL;
      v320.i64[0] = -1;
      v320.i64[1] = -1;
      v321 = vandq_s8(vshlq_u16(v320, vaddq_s16(v318, v319)), v314);
      v322 = vmovl_u16(*v318.i8);
      v323 = vmovl_high_u16(v318);
      v324 = vpaddq_s32(vshlq_u32(vmovl_u16(*v321.i8), vtrn1q_s32(0, v322)), vshlq_u32(vmovl_high_u16(v321), vtrn1q_s32(0, v323)));
      v325 = vpaddq_s32(v322, v323);
      v326.i64[0] = v324.u32[0];
      v326.i64[1] = v324.u32[1];
      v327 = v326;
      v326.i64[0] = v324.u32[2];
      v326.i64[1] = v324.u32[3];
      v328 = v326;
      v326.i64[0] = v325.u32[0];
      v326.i64[1] = v325.u32[1];
      v329 = v326;
      v326.i64[0] = v325.u32[2];
      v326.i64[1] = v325.u32[3];
      v330 = vpaddq_s64(vshlq_u64(v327, vzip1q_s64(0, v329)), vshlq_u64(v328, vzip1q_s64(0, v326)));
      v331 = vpaddq_s64(v329, v326);
      v332 = (v330.i64[0] << v317) | v316;
      if (v331.i64[0] + (v317 & 0x3F) >= 0x40)
      {
        *(v262 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
        v332 = v330.i64[0] >> -(v317 & 0x3F);
        if ((v317 & 0x3F) == 0)
        {
          v332 = 0;
        }
      }

      v333 = vceqq_s16(v65, v149);
      v334 = vaddq_s16(v160, v298);
      v335 = v331.i64[0] + v317;
      v336 = v332 | (v330.i64[1] << v335);
      if ((v335 & 0x3F) + v331.i64[1] >= 0x40)
      {
        *(v262 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v330.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = vandq_s8(v494, v333);
      v338 = v335 + v331.i64[1];
      v339.i64[0] = 0xF000F000F000FLL;
      v339.i64[1] = 0xF000F000F000FLL;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341 = vandq_s8(vshlq_u16(v340, vaddq_s16(v165, v339)), v334);
      v342 = vmovl_u16(*v165.i8);
      v343 = vmovl_high_u16(v165);
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
      v352 = (v350.i64[0] << v338) | v336;
      if (v351.i64[0] + (v338 & 0x3F) >= 0x40)
      {
        *(v262 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v350.i64[0] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = vaddq_s16(v161, v337);
      v354 = v351.i64[0] + v338;
      v355 = v352 | (v350.i64[1] << v354);
      if ((v354 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v262 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v350.i64[1] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = v354 + v351.i64[1];
      v357.i64[0] = 0xF000F000F000FLL;
      v357.i64[1] = 0xF000F000F000FLL;
      v358.i64[0] = -1;
      v358.i64[1] = -1;
      v359 = vshlq_u16(v358, vaddq_s16(v149, v357));
      v360 = vandq_s8(v359, v353);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vmovl_u16(*v149.i8);
      v364 = vmovl_high_u16(v149);
      v365 = vtrn1q_s32(0, v363);
      v366 = vtrn1q_s32(0, v364);
      v367 = vpaddq_s32(vshlq_u32(v361, v365), vshlq_u32(v362, v366));
      v368 = vpaddq_s32(v363, v364);
      v369.i64[0] = v367.u32[0];
      v369.i64[1] = v367.u32[1];
      v370 = v369;
      v369.i64[0] = v367.u32[2];
      v369.i64[1] = v367.u32[3];
      v371 = v369;
      v369.i64[0] = v368.u32[0];
      v369.i64[1] = v368.u32[1];
      v372 = v369;
      v369.i64[0] = v368.u32[2];
      v369.i64[1] = v368.u32[3];
      v373 = vzip1q_s64(0, v372);
      v374 = vzip1q_s64(0, v369);
      v375 = vpaddq_s64(vshlq_u64(v370, v373), vshlq_u64(v371, v374));
      v376 = vpaddq_s64(v372, v369);
      v377 = (v375.i64[0] << v356) | v355;
      if (v376.i64[0] + (v356 & 0x3F) >= 0x40)
      {
        *(v262 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        if ((v356 & 0x3F) != 0)
        {
          v377 = v375.i64[0] >> -(v356 & 0x3F);
        }

        else
        {
          v377 = 0;
        }
      }

      v378 = vceqq_s16(v65, v150);
      v379 = vaddq_s16(v162, v337);
      v380 = v376.i64[0] + v356;
      v381 = v377 | (v375.i64[1] << v380);
      if ((v380 & 0x3F) + v376.i64[1] >= 0x40)
      {
        *(v262 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
        v381 = v375.i64[1] >> -(v380 & 0x3F);
        if ((v380 & 0x3F) == 0)
        {
          v381 = 0;
        }
      }

      v382 = vandq_s8(v494, v378);
      v383 = v380 + v376.i64[1];
      v384 = vandq_s8(v359, v379);
      v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), v365), vshlq_u32(vmovl_high_u16(v384), v366));
      v386.i64[0] = v385.u32[0];
      v386.i64[1] = v385.u32[1];
      v387 = v386;
      v386.i64[0] = v385.u32[2];
      v386.i64[1] = v385.u32[3];
      v388 = vpaddq_s64(vshlq_u64(v387, v373), vshlq_u64(v386, v374));
      v389 = (v388.i64[0] << v383) | v381;
      if (v376.i64[0] + (v383 & 0x3F) >= 0x40)
      {
        *(v262 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v388.i64[0] >> -(v383 & 0x3F);
        if ((v383 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = vaddq_s16(v167, v382);
      v391 = v376.i64[0] + v383;
      v392 = (v376.i64[0] + v383) & 0x3F;
      v393 = v389 | (v388.i64[1] << v391);
      if ((v391 & 0x3F) + v376.i64[1] >= 0x40)
      {
        *(v262 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v388.i64[1] >> -v392;
        if (!v392)
        {
          v393 = 0;
        }
      }

      v394 = v391 + v376.i64[1];
      v395.i64[0] = 0xF000F000F000FLL;
      v395.i64[1] = 0xF000F000F000FLL;
      v396.i64[0] = -1;
      v396.i64[1] = -1;
      v397 = vshlq_u16(v396, vaddq_s16(v150, v395));
      v398 = vandq_s8(v397, v390);
      v399 = vmovl_u16(*v398.i8);
      v400 = vmovl_high_u16(v398);
      v401 = vmovl_u16(*v150.i8);
      v402 = vmovl_high_u16(v150);
      v403 = vtrn1q_s32(0, v401);
      v404 = vtrn1q_s32(0, v402);
      v405 = vpaddq_s32(vshlq_u32(v399, v403), vshlq_u32(v400, v404));
      v406 = vpaddq_s32(v401, v402);
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
      v411 = vzip1q_s64(0, v410);
      v412 = vzip1q_s64(0, v407);
      v413 = vpaddq_s64(vshlq_u64(v408, v411), vshlq_u64(v409, v412));
      v414 = vpaddq_s64(v410, v407);
      v415 = (v391 + v376.i64[1]) & 0x3F;
      v416 = (v413.i64[0] << (v391 + v376.i8[8])) | v393;
      if ((v414.i64[0] + v415) >= 0x40)
      {
        *(v262 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        if (v415)
        {
          v416 = v413.i64[0] >> -v415;
        }

        else
        {
          v416 = 0;
        }
      }

      v417 = vceqq_s16(v65, v496);
      v418 = vaddq_s16(v163, v382);
      v419 = v414.i64[0] + v394;
      v420 = v416 | (v413.i64[1] << v419);
      if ((v419 & 0x3F) + v414.i64[1] >= 0x40)
      {
        *(v262 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v413.i64[1] >> -(v419 & 0x3F);
        if ((v419 & 0x3F) == 0)
        {
          v420 = 0;
        }
      }

      v421 = vandq_s8(v494, v417);
      v422 = v419 + v414.i64[1];
      v423 = vandq_s8(v397, v418);
      v424 = vpaddq_s32(vshlq_u32(vmovl_u16(*v423.i8), v403), vshlq_u32(vmovl_high_u16(v423), v404));
      v425.i64[0] = v424.u32[0];
      v425.i64[1] = v424.u32[1];
      v426 = v425;
      v425.i64[0] = v424.u32[2];
      v425.i64[1] = v424.u32[3];
      v427 = vpaddq_s64(vshlq_u64(v426, v411), vshlq_u64(v425, v412));
      v428 = (v427.i64[0] << v422) | v420;
      if (v414.i64[0] + (v422 & 0x3F) >= 0x40)
      {
        *(v262 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
        v428 = v427.i64[0] >> -(v422 & 0x3F);
        if ((v422 & 0x3F) == 0)
        {
          v428 = 0;
        }
      }

      v429 = vaddq_s16(v166, v421);
      v430 = v414.i64[0] + v422;
      v431 = (v414.i64[0] + v422) & 0x3F;
      v432 = v428 | (v427.i64[1] << v430);
      if ((v430 & 0x3F) + v414.i64[1] >= 0x40)
      {
        *(v262 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
        v432 = v427.i64[1] >> -v431;
        if (!v431)
        {
          v432 = 0;
        }
      }

      v433 = v430 + v414.i64[1];
      v434.i64[0] = 0xF000F000F000FLL;
      v434.i64[1] = 0xF000F000F000FLL;
      v435.i64[0] = -1;
      v435.i64[1] = -1;
      v436 = vshlq_u16(v435, vaddq_s16(v496, v434));
      v437 = vandq_s8(v436, v429);
      v438 = vmovl_u16(*v437.i8);
      v439 = vmovl_high_u16(v437);
      v440 = vmovl_u16(*v496.i8);
      v441 = vmovl_high_u16(v496);
      v442 = vtrn1q_s32(0, v440);
      v443 = vtrn1q_s32(0, v441);
      v444 = vpaddq_s32(vshlq_u32(v438, v442), vshlq_u32(v439, v443));
      v445 = vpaddq_s32(v440, v441);
      v446.i64[0] = v444.u32[0];
      v446.i64[1] = v444.u32[1];
      v447 = v446;
      v446.i64[0] = v444.u32[2];
      v446.i64[1] = v444.u32[3];
      v448 = v446;
      v446.i64[0] = v445.u32[0];
      v446.i64[1] = v445.u32[1];
      v449 = v446;
      v446.i64[0] = v445.u32[2];
      v446.i64[1] = v445.u32[3];
      v450 = vzip1q_s64(0, v449);
      v451 = vzip1q_s64(0, v446);
      v452 = vpaddq_s64(vshlq_u64(v447, v450), vshlq_u64(v448, v451));
      v453 = vpaddq_s64(v449, v446);
      v454 = (v430 + v414.i64[1]) & 0x3F;
      v455 = (v452.i64[0] << (v430 + v414.i8[8])) | v432;
      if ((v453.i64[0] + v454) > 0x3F)
      {
        *(v262 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
        if (v454)
        {
          v455 = v452.i64[0] >> -v454;
        }

        else
        {
          v455 = 0;
        }
      }

      v456 = vaddq_s16(v164, v421);
      v457 = v453.i64[0] + v433;
      v458 = v455 | (v452.i64[1] << v457);
      if ((v457 & 0x3F) + v453.i64[1] >= 0x40)
      {
        *(v262 + ((v457 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v458;
        v458 = v452.i64[1] >> -(v457 & 0x3F);
        if ((v457 & 0x3F) == 0)
        {
          v458 = 0;
        }
      }

      v459 = v457 + v453.i64[1];
      v460 = vandq_s8(v436, v456);
      v461 = vpaddq_s32(vshlq_u32(vmovl_u16(*v460.i8), v442), vshlq_u32(vmovl_high_u16(v460), v443));
      v462.i64[0] = v461.u32[0];
      v462.i64[1] = v461.u32[1];
      v463 = v462;
      v462.i64[0] = v461.u32[2];
      v462.i64[1] = v461.u32[3];
      v464 = vpaddq_s64(vshlq_u64(v463, v450), vshlq_u64(v462, v451));
      v465 = (v464.i64[0] << v459) | v458;
      if (v453.i64[0] + (v459 & 0x3F) >= 0x40)
      {
        *(v262 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
        v465 = v464.i64[0] >> -(v459 & 0x3F);
        if ((v459 & 0x3F) == 0)
        {
          v465 = 0;
        }
      }

      v466 = v453.i64[0] + v459;
      v467 = (v453.i64[0] + v459) & 0x3F;
      v468 = v465 | (v464.i64[1] << (v453.i8[0] + v459));
      if ((v467 + v453.i64[1]) >= 0x40)
      {
        *(v262 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
        v468 = v464.i64[1] >> -v467;
        if (!v467)
        {
          v468 = 0;
        }
      }

      v469 = v466 + v453.i64[1];
      if ((v469 & 0x3F) != 0)
      {
        *(v262 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
      }

      result = (v469 - v263 + 7) >> 3;
      v168 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = a3->i32[0];
    v168 = 3;
    result = 4;
  }

  *a2 = v168;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = 2 * a2;
  v13 = v6 - 2;
  if (v7 && v6 >= 3)
  {
    if (v13 >= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v6 - 2;
    }

    if (v7 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
    v9 = (v9 + result);
  }

  else
  {
    a4[2] = 0;
    if (v7 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 3)
  {
    if (v13 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v6 - 2;
    }

    if (v16 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
    v9 = (v9 + result);
    v21 = v6 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 4;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 6;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v21 >= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 4 * a2), a2, v23, v22);
  v9 = (v9 + result);
  v24 = v6 - 6;
LABEL_47:
  if (v6 >= 7)
  {
    if (v24 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 6 * a2), a2, v26, v25);
    v9 = (v9 + result);
    if (v7 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 5)
  {
    if (v21 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 4 * a2 + 64), a2, v28, v27);
    v9 = (v9 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 7)
  {
    goto LABEL_76;
  }

  if (v24 >= 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v7 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 6 * a2 + 64), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v27 = (8 * (a3 & 7)) | 0x400;
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

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 1024 >= 9))
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

int16x8_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 127)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    v15 = *(a2 + 112);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    *(a1 + 288) = v14;
    *(a1 + 304) = v15;
    v7 = 128;
  }

  else if (v6 == 3)
  {
    v8 = vld1q_dup_f32(a2);
    *a1 = v8;
    *(a1 + 16) = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = v8;
    *(a1 + 288) = v8;
    *(a1 + 304) = v8;
    v7 = 4;
  }

  else if (*a3)
  {
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 256, a2, v6);
  }

  else
  {
    v7 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
  }

  v16 = a2 + v7;
  v17 = (a1 + 64);
  v18 = a3[1];
  if (a3[1])
  {
    if (v18 == 3)
    {
      v27 = vld1q_dup_f32(v16);
      *(a1 + 64) = v27;
      *(a1 + 80) = v27;
      *(a1 + 96) = v27;
      *(a1 + 112) = v27;
      *(a1 + 320) = v27;
      *(a1 + 336) = v27;
      *(a1 + 352) = v27;
      *(a1 + 368) = v27;
      v26 = 4;
    }

    else if (v18 == 127)
    {
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 48);
      v22 = *(v16 + 64);
      v23 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      *v17 = *v16;
      *(a1 + 80) = v19;
      *(a1 + 96) = v20;
      *(a1 + 112) = v21;
      *(a1 + 320) = v22;
      *(a1 + 336) = v23;
      *(a1 + 352) = v24;
      *(a1 + 368) = v25;
      v26 = 128;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 256, v16, v18);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *v17 = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
  }

  v28 = v16 + v26;
  v29 = (a1 + 512);
  v30 = a3[2];
  if (a3[2])
  {
    if (v30 == 3)
    {
      v39 = vld1q_dup_f32(v28);
      *(a1 + 512) = v39;
      *(a1 + 528) = v39;
      *(a1 + 544) = v39;
      *(a1 + 560) = v39;
      *(a1 + 768) = v39;
      *(a1 + 784) = v39;
      *(a1 + 800) = v39;
      *(a1 + 816) = v39;
      v38 = 4;
    }

    else if (v30 == 127)
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      v34 = *(v28 + 64);
      v35 = *(v28 + 80);
      v36 = *(v28 + 96);
      v37 = *(v28 + 112);
      *v29 = *v28;
      *(a1 + 528) = v31;
      *(a1 + 544) = v32;
      *(a1 + 560) = v33;
      *(a1 + 768) = v34;
      *(a1 + 784) = v35;
      *(a1 + 800) = v36;
      *(a1 + 816) = v37;
      v38 = 128;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 256, v28, v30);
    }
  }

  else
  {
    v38 = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *v29 = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 768) = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
  }

  v40 = v28 + v38;
  v41 = (a1 + 576);
  v42 = a3[3];
  if (a3[3])
  {
    if (v42 == 3)
    {
      v51 = vld1q_dup_f32(v40);
      *(a1 + 576) = v51;
      *(a1 + 592) = v51;
      *(a1 + 608) = v51;
      *(a1 + 624) = v51;
      *(a1 + 832) = v51;
      *(a1 + 848) = v51;
      *(a1 + 864) = v51;
      *(a1 + 880) = v51;
      v50 = 4;
    }

    else if (v42 == 127)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 32);
      v45 = *(v40 + 48);
      v46 = *(v40 + 64);
      v47 = *(v40 + 80);
      v48 = *(v40 + 96);
      v49 = *(v40 + 112);
      *v41 = *v40;
      *(a1 + 592) = v43;
      *(a1 + 608) = v44;
      *(a1 + 624) = v45;
      *(a1 + 832) = v46;
      *(a1 + 848) = v47;
      *(a1 + 864) = v48;
      *(a1 + 880) = v49;
      v50 = 128;
    }

    else
    {
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 256, v40, v42);
    }
  }

  else
  {
    v50 = 0;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *v41 = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 0u;
  }

  v52 = v40 + v50;
  v53 = (a1 + 128);
  v54 = a3[4];
  if (a3[4])
  {
    if (v54 == 3)
    {
      v63 = vld1q_dup_f32(v52);
      *(a1 + 128) = v63;
      *(a1 + 144) = v63;
      *(a1 + 160) = v63;
      *(a1 + 176) = v63;
      *(a1 + 384) = v63;
      *(a1 + 400) = v63;
      *(a1 + 416) = v63;
      *(a1 + 432) = v63;
      v62 = 4;
    }

    else if (v54 == 127)
    {
      v55 = *(v52 + 16);
      v56 = *(v52 + 32);
      v57 = *(v52 + 48);
      v58 = *(v52 + 64);
      v59 = *(v52 + 80);
      v60 = *(v52 + 96);
      v61 = *(v52 + 112);
      *v53 = *v52;
      *(a1 + 144) = v55;
      *(a1 + 160) = v56;
      *(a1 + 176) = v57;
      *(a1 + 384) = v58;
      *(a1 + 400) = v59;
      *(a1 + 416) = v60;
      *(a1 + 432) = v61;
      v62 = 128;
    }

    else
    {
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 256, v52, v54);
    }
  }

  else
  {
    v62 = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *v53 = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v64 = v52 + v62;
  v65 = (a1 + 192);
  v66 = a3[5];
  if (a3[5])
  {
    if (v66 == 3)
    {
      v75 = vld1q_dup_f32(v64);
      *(a1 + 192) = v75;
      *(a1 + 208) = v75;
      *(a1 + 224) = v75;
      *(a1 + 240) = v75;
      *(a1 + 448) = v75;
      *(a1 + 464) = v75;
      *(a1 + 480) = v75;
      *(a1 + 496) = v75;
      v74 = 4;
    }

    else if (v66 == 127)
    {
      v67 = *(v64 + 16);
      v68 = *(v64 + 32);
      v69 = *(v64 + 48);
      v70 = *(v64 + 64);
      v71 = *(v64 + 80);
      v72 = *(v64 + 96);
      v73 = *(v64 + 112);
      *v65 = *v64;
      *(a1 + 208) = v67;
      *(a1 + 224) = v68;
      *(a1 + 240) = v69;
      *(a1 + 448) = v70;
      *(a1 + 464) = v71;
      *(a1 + 480) = v72;
      *(a1 + 496) = v73;
      v74 = 128;
    }

    else
    {
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 256, v64, v66);
    }
  }

  else
  {
    v74 = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *v65 = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  v76 = v64 + v74;
  v77 = (a1 + 640);
  v78 = a3[6];
  if (a3[6])
  {
    if (v78 == 3)
    {
      v87 = vld1q_dup_f32(v76);
      *(a1 + 640) = v87;
      *(a1 + 656) = v87;
      *(a1 + 672) = v87;
      *(a1 + 688) = v87;
      *(a1 + 896) = v87;
      *(a1 + 912) = v87;
      *(a1 + 928) = v87;
      *(a1 + 944) = v87;
      v86 = 4;
    }

    else if (v78 == 127)
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 32);
      v81 = *(v76 + 48);
      v82 = *(v76 + 64);
      v83 = *(v76 + 80);
      v84 = *(v76 + 96);
      v85 = *(v76 + 112);
      *v77 = *v76;
      *(a1 + 656) = v79;
      *(a1 + 672) = v80;
      *(a1 + 688) = v81;
      *(a1 + 896) = v82;
      *(a1 + 912) = v83;
      *(a1 + 928) = v84;
      *(a1 + 944) = v85;
      v86 = 128;
    }

    else
    {
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 256, v76, v78);
    }
  }

  else
  {
    v86 = 0;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *v77 = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
  }

  result = (a1 + 704);
  v89 = a3[7];
  if (!a3[7])
  {
    v98 = 0uLL;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
    *result = 0u;
    *(a1 + 720) = 0u;
    goto LABEL_56;
  }

  v90 = v76 + v86;
  if (v89 == 3)
  {
    v98 = vld1q_dup_f32(v90);
    *(a1 + 704) = v98;
    *(a1 + 720) = v98;
    *(a1 + 736) = v98;
    *(a1 + 752) = v98;
LABEL_56:
    *(a1 + 960) = v98;
    *(a1 + 976) = v98;
    *(a1 + 992) = v98;
    *(a1 + 1008) = v98;
    return result;
  }

  if (v89 == 127)
  {
    v91 = *(v90 + 16);
    v92 = *(v90 + 32);
    v93 = *(v90 + 48);
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 96);
    v97 = *(v90 + 112);
    *result = *v90;
    *(a1 + 720) = v91;
    *(a1 + 736) = v92;
    *(a1 + 752) = v93;
    *(a1 + 960) = v94;
    *(a1 + 976) = v95;
    *(a1 + 992) = v96;
    *(a1 + 1008) = v97;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v90, v89);
  }

  return result;
}