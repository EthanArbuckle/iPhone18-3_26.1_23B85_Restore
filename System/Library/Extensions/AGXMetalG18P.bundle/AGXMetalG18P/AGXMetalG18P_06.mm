unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = a6;
  v15 = a5;
  v17 = a3;
  v19 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    *a4 = 0;
  }

  v20 = v15 - 4;
  if (v15 >= 5 && v14)
  {
    if (v14 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v14;
    }

    if (v20 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 1, v19 + 1, a2, v22, v21, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v23 = 4 * a2;
  v24 = v14 - 4;
  if (v15 && v14 >= 5)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v14 - 4;
    }

    if (v15 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 2, (v19 + v23), a2, v26, v25, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 5)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v15 < 5)
    {
      goto LABEL_38;
    }
  }

  if (v14 >= 5)
  {
    if (v24 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v14 - 4;
    }

    if (v20 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 3, (v19 + v23 + 16), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v29 = v15 - 8;
  if (v15 >= 9 && v14)
  {
    if (v14 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v14;
    }

    if (v29 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 4, v19 + 2, a2, v31, v30, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v32 = v15 - 12;
  if (v15 >= 0xD && v14)
  {
    if (v14 >= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = v14;
    }

    if (v32 >= 4)
    {
      v34 = 4;
    }

    else
    {
      v34 = v15 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 5, v19 + 3, a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[5] = 0;
    if (v15 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v14 >= 5)
  {
    if (v24 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v14 - 4;
    }

    if (v29 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 6, (v19 + v23 + 32), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v15 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v14 < 5)
  {
    goto LABEL_79;
  }

  if (v24 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = v14 - 4;
  }

  if (v32 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = v15 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 7, (v19 + v23 + 48), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 22;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x2B)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x200;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, __n128 *a2, unsigned __int8 *a3, double a4, __n128 a5, __n128 a6, __n128 a7)
{
  v10 = *a3;
  if (v10 == 63)
  {
    v12 = *a2;
    a5 = a2[1];
    a6 = a2[2];
    a7 = a2[3];
    *a1 = *a2;
    *(a1 + 16) = a6;
    *(a1 + 64) = a5;
    *(a1 + 80) = a7;
    v11 = 64;
  }

  else if (v10 == 1)
  {
    v12 = vld1q_dup_s16(a2);
    *a1 = v12;
    *(a1 + 16) = v12;
    *(a1 + 64) = v12;
    *(a1 + 80) = v12;
    v11 = 2;
  }

  else if (*a3)
  {
    v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 64, a2, v10, a4, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
  }

  else
  {
    v11 = 0;
    v12.i64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  v13 = (a2 + v11);
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      v15 = vld1q_dup_s16(v13);
      *(a1 + 128) = v15;
      *(a1 + 144) = v15;
      *(a1 + 192) = v15;
      *(a1 + 208) = v15;
      v16 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = v13[1];
      a6 = v13[2];
      a7 = v13[3];
      *(a1 + 128) = *v13;
      *(a1 + 144) = a6;
      *(a1 + 192) = a5;
      *(a1 + 208) = a7;
      v16 = 64;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 64, v13, v14, *v12.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v16 = 0;
    v15.i64[0] = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
  }

  v17 = (v13 + v16);
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 1)
    {
      v19 = vld1q_dup_s16(v17);
      *(a1 + 32) = v19;
      *(a1 + 48) = v19;
      *(a1 + 96) = v19;
      *(a1 + 112) = v19;
      v20 = 2;
    }

    else if (v18 == 63)
    {
      v19 = *v17;
      a5 = v17[1];
      a6 = v17[2];
      a7 = v17[3];
      *(a1 + 32) = *v17;
      *(a1 + 48) = a6;
      *(a1 + 96) = a5;
      *(a1 + 112) = a7;
      v20 = 64;
    }

    else
    {
      v20 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 64, v17, v18, *v15.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v20 = 0;
    v19.i64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  v21 = (v17 + v20);
  v22 = a3[3];
  if (a3[3])
  {
    if (v22 == 1)
    {
      v23 = vld1q_dup_s16(v21);
      *(a1 + 160) = v23;
      *(a1 + 176) = v23;
      *(a1 + 224) = v23;
      *(a1 + 240) = v23;
      v24 = 2;
    }

    else if (v22 == 63)
    {
      v23 = *v21;
      a5 = v21[1];
      a6 = v21[2];
      a7 = v21[3];
      *(a1 + 160) = *v21;
      *(a1 + 176) = a6;
      *(a1 + 224) = a5;
      *(a1 + 240) = a7;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 160), 64, v21, v22, *v19.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v24 = 0;
    v23.i64[0] = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v25 = (v21 + v24);
  v26 = a3[4];
  if (a3[4])
  {
    if (v26 == 1)
    {
      v27 = vld1q_dup_s16(v25);
      *(a1 + 256) = v27;
      *(a1 + 272) = v27;
      *(a1 + 320) = v27;
      *(a1 + 336) = v27;
      v28 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = v25[1];
      a6 = v25[2];
      a7 = v25[3];
      *(a1 + 256) = *v25;
      *(a1 + 272) = a6;
      *(a1 + 320) = a5;
      *(a1 + 336) = a7;
      v28 = 64;
    }

    else
    {
      v28 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 64, v25, v26, *v23.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v28 = 0;
    v27.i64[0] = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
  }

  v29 = (v25 + v28);
  v30 = a3[5];
  if (a3[5])
  {
    if (v30 == 1)
    {
      v31 = vld1q_dup_s16(v29);
      *(a1 + 384) = v31;
      *(a1 + 400) = v31;
      *(a1 + 448) = v31;
      *(a1 + 464) = v31;
      v32 = 2;
    }

    else if (v30 == 63)
    {
      v31 = *v29;
      a5 = v29[1];
      a6 = v29[2];
      a7 = v29[3];
      *(a1 + 384) = *v29;
      *(a1 + 400) = a6;
      *(a1 + 448) = a5;
      *(a1 + 464) = a7;
      v32 = 64;
    }

    else
    {
      v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 384), 64, v29, v30, *v27.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v32 = 0;
    v31.i64[0] = 0;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
  }

  v33 = (v29 + v32);
  v34 = a3[6];
  if (!a3[6])
  {
    result = 0;
    v35.i64[0] = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

LABEL_54:
    v42 = 0uLL;
    goto LABEL_55;
  }

  if (v34 == 1)
  {
    v35 = vld1q_dup_s16(v33);
    *(a1 + 288) = v35;
    *(a1 + 304) = v35;
    *(a1 + 352) = v35;
    *(a1 + 368) = v35;
    result = 2;
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v34 == 63)
  {
    v35 = *v33;
    a5 = v33[1];
    a6 = v33[2];
    a7 = v33[3];
    *(a1 + 288) = *v33;
    *(a1 + 304) = a6;
    *(a1 + 352) = a5;
    *(a1 + 368) = a7;
    result = 64;
    v37 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 64, v33, v34, *v31.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    v37 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

LABEL_49:
  v38 = v33 + result;
  if (v37 == 1)
  {
    v42 = vld1q_dup_s16(v38);
LABEL_55:
    *(a1 + 416) = v42;
    *(a1 + 432) = v42;
    *(a1 + 480) = v42;
    *(a1 + 496) = v42;
    return result;
  }

  if (v37 == 63)
  {
    v39 = *(v38 + 16);
    v40 = *(v38 + 32);
    v41 = *(v38 + 48);
    *(a1 + 416) = *v38;
    *(a1 + 432) = v40;
    *(a1 + 480) = v39;
    *(a1 + 496) = v41;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 416), 64, v38, v37, *v35.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, int a6, int16x4_t a7, int16x4_t a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v15 = *a3;
  v14 = a3[1];
  v17 = *(a3 + a4);
  v16 = *(&a3[1] + a4);
  v18 = vdupq_lane_s16(*a3->i8, 0);
  v19 = vsubq_s16(*a3, v18);
  v20 = vsubq_s16(v17, v18);
  v21 = vsubq_s16(v14, v18);
  v22 = vsubq_s16(v16, v18);
  a7.i16[0] = vmaxvq_s16(v19);
  v23 = vdupq_lane_s16(a7, 0);
  a8.i16[0] = vminvq_s16(v19);
  v24 = vdupq_lane_s16(a8, 0);
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
  a14.i16[0] = vminvq_s16(v20);
  v33 = vdupq_lane_s16(*v31.i8, 0);
  v34 = vdupq_lane_s16(a14, 0);
  v35 = vmaxq_s16(v26, v33);
  v36 = vminq_s16(v28, v34);
  v37 = vzip1q_s16(v33, v34);
  v38 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v37)), vceqzq_s16(v37));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v21);
  v34.i16[0] = vminvq_s16(v21);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(*v34.i8, 0);
  v42 = vmaxq_s16(v35, v40);
  v43 = vminq_s16(v36, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v22);
  v41.i16[0] = vminvq_s16(v22);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(*v41.i8, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vmaxq_s16(vmaxq_s16(v32, v39), vmaxq_s16(v46, v53));
  v55 = vclzq_s16(vsubq_s16(v49, v50));
  v56 = vsubq_s16(v30, v55);
  v57 = vminq_s16(v56, v54);
  if (vmaxvq_s16(v57))
  {
    v58 = 0;
    v59 = 0;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61.i64[0] = 0xF000F000F000FLL;
    v61.i64[1] = 0xF000F000F000FLL;
    v62 = vcgtq_s16(v54, v56);
    v63 = vandq_s8(vsubq_s16(vshlq_s16(v60, vsubq_s16(v61, v55)), v50), v62);
    v64.i64[0] = 0x8000800080008;
    v64.i64[1] = 0x8000800080008;
    v65.i64[0] = 0x3000300030003;
    v65.i64[1] = 0x3000300030003;
    v66 = vorrq_s8(vandq_s8(vceqzq_s16(v57), v65), vandq_s8(v62, v64));
    v67 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v32), v65), 0);
    v68 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v39), v65), 0);
    v69 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v46), v65), 0);
    v70 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v53), v65), 0);
    v71 = vsubq_s16(v57, v67);
    v72 = vsubq_s16(v57, v68);
    v73 = vsubq_s16(v57, v69);
    v74 = vsubq_s16(v57, v70);
    v75 = vceqq_s16(vaddq_s16(v70, v69), vnegq_s16(vaddq_s16(v67, v68)));
    v68.i64[0] = 0x4000400040004;
    v68.i64[1] = 0x4000400040004;
    v76 = vbicq_s8(v68, v75);
    v77 = vorrq_s8(v76, v66);
    if (a5 >= 2 && a6)
    {
      v366 = v63;
      v78 = v15.u16[1] - v15.u16[0];
      v79 = 0x302030201000100;
      v80.i64[0] = 0xFFFFFFFF00000000;
      v80.i64[1] = 0xFFFFFFFF00000000;
      v81 = vmlal_s8(vandq_s8(vdupq_n_s16((v15.i8[4] - v15.i8[0])), v80), vdup_n_s8(v78), 0x302030201000100);
      v82 = vsubq_s16(v19, v81);
      v83 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v15.i8[4] - v15.i8[0])), v20), v81);
      v84 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v78), v21), v81);
      v79.i16[0] = vmaxvq_s16(v82);
      v80.i16[0] = vminvq_s16(v82);
      v85 = vdupq_lane_s16(v79, 0);
      v86 = vdupq_lane_s16(*v80.i8, 0);
      v87 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v15.i8[4] - v15.i8[0]) + 4 * v78)), v22), v81);
      v88.i64[0] = 0x8000800080008000;
      v88.i64[1] = 0x8000800080008000;
      v89 = vmaxq_s16(v85, v88);
      v81.i64[0] = 0x8000800080008000;
      v81.i64[1] = 0x8000800080008000;
      v90 = vminq_s16(v86, v81);
      v91 = vzip1q_s16(v85, v86);
      v92 = v74;
      v93.i64[0] = 0x10001000100010;
      v93.i64[1] = 0x10001000100010;
      v94 = v72;
      v95 = v73;
      v96 = vsubq_s16(v93, vclsq_s16(v91));
      v97 = vbicq_s8(v96, vceqzq_s16(v91));
      v96.i16[0] = vmaxvq_s16(v83);
      v61.i16[0] = vminvq_s16(v83);
      v98 = vdupq_lane_s16(*v96.i8, 0);
      v99 = vdupq_lane_s16(*v61.i8, 0);
      v100 = vpmaxq_s16(v97, v97);
      v101 = vmaxq_s16(v89, v98);
      v102 = vminq_s16(v90, v99);
      v103 = vzip1q_s16(v98, v99);
      v104 = vsubq_s16(v93, vclsq_s16(v103));
      v105 = vbicq_s8(v104, vceqzq_s16(v103));
      v106 = v22;
      v107 = vpmaxq_s16(v105, v105);
      v105.i16[0] = vmaxvq_s16(v84);
      v108 = vdupq_lane_s16(*v105.i8, 0);
      v104.i16[0] = vminvq_s16(v84);
      v109 = vdupq_lane_s16(*v104.i8, 0);
      v110 = vmaxq_s16(v101, v108);
      v111 = vminq_s16(v102, v109);
      v112 = vzip1q_s16(v108, v109);
      v113 = vsubq_s16(v93, vclsq_s16(v112));
      v114 = vbicq_s8(v113, vceqzq_s16(v112));
      v115 = vpmaxq_s16(v114, v114);
      v114.i16[0] = vmaxvq_s16(v87);
      v113.i16[0] = vminvq_s16(v87);
      v116 = vdupq_lane_s16(*v114.i8, 0);
      v117 = vdupq_lane_s16(*v113.i8, 0);
      v118 = vmaxq_s16(v110, v116);
      v119 = vminq_s16(v111, v117);
      v120 = vzip1q_s16(v116, v117);
      v121 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v120)), vceqzq_s16(v120));
      v122 = vpmaxq_s16(v121, v121);
      v123 = vmaxq_s16(vmaxq_s16(v100, v107), vmaxq_s16(v115, v122));
      v124 = vclzq_s16(vsubq_s16(v118, v119));
      v125 = vsubq_s16(v93, v124);
      v126 = vcgtq_s16(v123, v125);
      v127 = vminq_s16(v125, v123);
      v123.i64[0] = 0x1000100010001;
      v123.i64[1] = 0x1000100010001;
      v128 = vmaxq_s16(v127, v123);
      v123.i64[0] = 0x3000300030003;
      v123.i64[1] = 0x3000300030003;
      v129 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v100), v123), 0);
      v130 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v107), v123), 0);
      v131 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v115), v123), 0);
      v132 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v122), v123), 0);
      v133 = vsubq_s16(v128, v129);
      v134 = vsubq_s16(v128, v130);
      v135 = vsubq_s16(v128, v131);
      v136 = vsubq_s16(v128, v132);
      v137 = vceqq_s16(vaddq_s16(v132, v131), vnegq_s16(vaddq_s16(v129, v130)));
      v132.i64[0] = 0x4000400040004;
      v132.i64[1] = 0x4000400040004;
      v138 = vbicq_s8(v132, v137);
      v139 = v19;
      v140.i64[0] = 0x7000700070007;
      v140.i64[1] = 0x7000700070007;
      v141 = vandq_s8(v57, v62);
      v142 = vaddq_s16(v76, v76);
      v143 = vmulq_s16(v71, v140);
      v144 = vshlq_n_s16(vaddq_s16(vaddq_s16(v95, v94), v92), 3uLL);
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v143, v141), v144), v142), vaddq_s16(vaddq_s16(vmlaq_s16(vbslq_s8(v126, vaddq_s16(v128, v93), v93), v133, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v135, v134), v136), 3uLL)), vaddq_s16(v138, v138))), 0);
      v141.i16[0] = vaddvq_s16(v145);
      v146 = v141.u16[0];
      if (v141.i16[0])
      {
        v147.i64[0] = 0x2000200020002;
        v147.i64[1] = 0x2000200020002;
        v148.i64[0] = 0xA000A000A000ALL;
        v148.i64[1] = 0xA000A000A000ALL;
        v149 = vbslq_s8(v126, v148, v147);
        v142.i64[0] = -1;
        v142.i64[1] = -1;
        v150 = vorrq_s8(v138, v149);
        v149.i64[0] = 0xF000F000F000FLL;
        v149.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v19 = vbslq_s8(v151, v82, v139);
        v152 = vbslq_s8(v151, v83, v20);
        v153 = vbslq_s8(v151, v84, v21);
        v369 = vbslq_s8(v151, v87, v106);
        v71 = vbslq_s8(v151, v133, v71);
        v154 = vbslq_s8(v151, v134, v94);
        v155 = vbslq_s8(v151, v135, v95);
        v156 = vbslq_s8(v151, v136, v92);
        v63 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v142, vsubq_s16(v149, v124)), v119), v126), v366);
        v57 = vbslq_s8(v151, v128, v57);
        v77 = vbslq_s8(v151, v150, v77);
        v151.i64[0] = 0x7000700070007;
        v151.i64[1] = 0x7000700070007;
        v143 = vmulq_s16(v71, v151);
        v364 = v152;
        v365 = v155;
        v367 = v153;
        v368 = v156;
        v144 = vshlq_n_s16(vaddq_s16(vaddq_s16(v155, v154), v156), 3uLL);
        v72 = v154;
      }

      else
      {
        v364 = v20;
        v365 = v95;
        v367 = v21;
        v368 = v92;
        v369 = v106;
        v63 = v366;
        v72 = v94;
        v19 = v139;
      }

      v59 = ((v15.i8[2] - v15.i8[0]) | ((v15.i16[2] - v15.i16[0]) << 8));
      v158 = vsubq_s16(v15, vqtbl1q_s8(v15, xmmword_29D2F0F00));
      v159 = *(a3 + a4);
      v159.i16[7] = HIWORD(*a3);
      v160 = vsubq_s16(*(a3 + a4), vqtbl1q_s8(v159, xmmword_29D2F0F10));
      v16 = *(&a3[1] + a4);
      v14 = a3[1];
      v161 = v14;
      v161.i16[7] = HIWORD(*a3);
      v162 = vsubq_s16(v14, vqtbl1q_s8(v161, xmmword_29D2F0F20));
      v163 = v16;
      v163.i16[7] = HIWORD(*a3);
      v164 = 0x100010001000F0ELL;
      v165 = v158;
      v165.i16[0] = v158.i16[7];
      v165.i16[7] = v158.i16[0];
      v158.i16[0] = vmaxvq_s16(v165);
      v164.i16[0] = vminvq_s16(v165);
      v166 = vdupq_lane_s16(*v158.i8, 0);
      v167 = vdupq_lane_s16(v164, 0);
      v168 = vsubq_s16(v16, vqtbl1q_s8(v163, xmmword_29D2F0F30));
      v163.i64[0] = 0x8000800080008000;
      v163.i64[1] = 0x8000800080008000;
      v169 = vmaxq_s16(v166, v163);
      v170.i64[0] = 0x8000800080008000;
      v170.i64[1] = 0x8000800080008000;
      v171 = vminq_s16(v167, v170);
      v172 = vzip1q_s16(v166, v167);
      v173 = vsubq_s16(v93, vclsq_s16(v172));
      v174 = vbicq_s8(v173, vceqzq_s16(v172));
      v175 = vpmaxq_s16(v174, v174);
      v173.i16[0] = vmaxvq_s16(v160);
      v176 = vdupq_lane_s16(*v173.i8, 0);
      v142.i16[0] = vminvq_s16(v160);
      v177 = vdupq_lane_s16(*v142.i8, 0);
      v178 = vmaxq_s16(v169, v176);
      v179 = vminq_s16(v171, v177);
      v180 = vzip1q_s16(v176, v177);
      v181 = vsubq_s16(v93, vclsq_s16(v180));
      v182 = vbicq_s8(v181, vceqzq_s16(v180));
      v183 = vpmaxq_s16(v182, v182);
      v181.i16[0] = vmaxvq_s16(v162);
      v124.i16[0] = vminvq_s16(v162);
      v184 = vdupq_lane_s16(*v181.i8, 0);
      v185 = vdupq_lane_s16(*v124.i8, 0);
      v186 = vmaxq_s16(v178, v184);
      v187 = vminq_s16(v179, v185);
      v188 = vzip1q_s16(v184, v185);
      v189 = vsubq_s16(v93, vclsq_s16(v188));
      v190 = vbicq_s8(v189, vceqzq_s16(v188));
      v189.i16[0] = vmaxvq_s16(v168);
      v135.i16[0] = vminvq_s16(v168);
      v191 = vdupq_lane_s16(*v189.i8, 0);
      v192 = vdupq_lane_s16(*v135.i8, 0);
      v193 = vpmaxq_s16(v190, v190);
      v194 = vmaxq_s16(v186, v191);
      v195 = vminq_s16(v187, v192);
      v196 = vzip1q_s16(v191, v192);
      v197 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v196)), vceqzq_s16(v196));
      v198 = vpmaxq_s16(v197, v197);
      v199 = vmaxq_s16(vmaxq_s16(v175, v183), vmaxq_s16(v193, v198));
      v200 = vclzq_s16(vsubq_s16(v194, v195));
      v201 = vsubq_s16(v93, v200);
      v202 = vcgtq_s16(v199, v201);
      v203 = vminq_s16(v201, v199);
      v204.i64[0] = 0x3000300030003;
      v204.i64[1] = 0x3000300030003;
      v205 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v175), v204), 0);
      v206 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v183), v204), 0);
      v207 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v193), v204), 0);
      v208 = vmaxq_s16(vminq_s16(vsubq_s16(v203, v198), v204), 0);
      v209 = vsubq_s16(v203, v205);
      v210 = vsubq_s16(v203, v206);
      v211 = vsubq_s16(v203, v207);
      v212 = vsubq_s16(v203, v208);
      v213 = vceqq_s16(vaddq_s16(v208, v207), vnegq_s16(vaddq_s16(v205, v206)));
      v206.i64[0] = 0x4000400040004;
      v206.i64[1] = 0x4000400040004;
      v214 = vbicq_s8(v206, v213);
      v208.i64[0] = 0x7000700070007;
      v208.i64[1] = 0x7000700070007;
      v215 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v203, v202), v209, v208), vshlq_n_s16(vaddq_s16(vaddq_s16(v211, v210), v212), 3uLL)), vaddq_s16(v214, v214));
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v216 = vbicq_s8(v57, vceqzq_s16(vandq_s8(v77, v213)));
      v217 = vandq_s8(vaddq_s16(v77, v77), v213);
      v218.i64[0] = 0x2000200020002;
      v218.i64[1] = 0x2000200020002;
      v219 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v216, v217), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v77, v204), v218), v93), v143)), v144), v215), 0);
      v216.i16[0] = vaddvq_s16(v219);
      v220 = v216.u16[0];
      if (v216.i16[0])
      {
        v221.i64[0] = 0x9000900090009;
        v221.i64[1] = 0x9000900090009;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v223 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v203), v218), vsubq_s16(vandq_s8(v202, v221), vmvnq_s8(v202))), v214);
        v221.i64[0] = 0xF000F000F000FLL;
        v221.i64[1] = 0xF000F000F000FLL;
        v224 = vandq_s8(vsubq_s16(vshlq_s16(v222, vsubq_s16(v221, v200)), v195), v202);
        v225 = vcltzq_s16(vshlq_n_s16(v219, 0xFuLL));
        v18.i16[0] = vbslq_s8(v225, vextq_s8(v15, v15, 0xEuLL), v18).u16[0];
        v19 = vbslq_s8(v225, v165, v19);
        v20 = vbslq_s8(v225, v160, v364);
        v21 = vbslq_s8(v225, v162, v367);
        v22 = vbslq_s8(v225, v168, v369);
        v71 = vbslq_s8(v225, v209, v71);
        v72 = vbslq_s8(v225, v210, v72);
        v73 = vbslq_s8(v225, v211, v365);
        v74 = vbslq_s8(v225, v212, v368);
        v63 = vbslq_s8(v225, v224, v63);
        v57 = vbslq_s8(v225, v203, v57);
        v77 = vbslq_s8(v225, v223, v77);
      }

      else
      {
        v74 = v368;
        v22 = v369;
        v21 = v367;
        v20 = v364;
        v73 = v365;
      }

      if (v146)
      {
        v226 = v220 == 0;
      }

      else
      {
        v226 = 0;
      }

      v58 = v226;
      v17 = *(a3 + a4);
    }

    v227.i64[0] = 0x8000800080008;
    v227.i64[1] = 0x8000800080008;
    v228 = vandq_s8(v77, v227);
    v229.i64[0] = 0x3000300030003;
    v229.i64[1] = 0x3000300030003;
    v230.i64[0] = 0x2000200020002;
    v230.i64[1] = 0x2000200020002;
    v231 = vceqq_s16(vandq_s8(v77, v229), v230);
    v230.i64[0] = 0x10001000100010;
    v230.i64[1] = 0x10001000100010;
    if (((7 * v71.i16[0] + 8 * vaddq_s16(vaddq_s16(v73, v72), v74).u16[0] + ((2 * v77.i16[0]) & 8) + vbicq_s8(v57, vceqzq_s16(v228)).u16[0] + vandq_s8(v231, v230).u16[0]) + 29) >= 0x200)
    {
      *a1 = v15;
      a1[1] = v17;
      v235 = 63;
      a1[2] = v14;
      a1[3] = v16;
      result = 64;
    }

    else
    {
      v232 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v233 = 8 * (a1 & 7);
      if (v233)
      {
        v234 = *v232 & ~(-1 << v233);
      }

      else
      {
        v234 = 0;
      }

      if (v57.i16[0])
      {
        v236 = (16 * v57.i8[0] - 16) & 0xF0;
      }

      else
      {
        v236 = 0;
      }

      *a2 = v77.i8[0] << 6;
      v237 = (v236 & 0xFFFFFFFFFF0000F0 | (v18.u16[0] << 8) | v77.i8[0] & 0xF) >> 2;
      v238 = (v237 << v233) | v234;
      if (v233 >= 0x2A)
      {
        *v232 = v238;
        v238 = v237 >> (-8 * (a1 & 7u));
      }

      v239 = v233 + 22;
      v240 = vsubq_s16(v57, v71);
      v241 = vsubq_s16(v57, v72);
      v242 = vsubq_s16(v57, v73);
      v243 = vsubq_s16(v57, v74);
      *v240.i8 = vqmovn_u16(v240);
      *v241.i8 = vqmovn_u16(v241);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      v240.i32[0] = vzip1q_s16(vzip1q_s8(v240, v241), vzip1q_s8(v242, v243)).u32[0];
      v242.i64[0] = 0x202020202020202;
      v242.i64[1] = 0x202020202020202;
      v244 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v77.i8, 0x4000400040004)))), v242);
      v242.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v242.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v243.i64[0] = -1;
      v243.i64[1] = -1;
      v245 = vandq_s8(vshlq_u8(v243, vorrq_s8(v244, v242)), v240.u32[0]);
      v246 = vmovl_u8(*v244.i8);
      v247 = vpaddq_s16(vshlq_u16(vmovl_u8(*v245.i8), vtrn1q_s16(0, v246)), vmovl_high_u8(v245));
      v248 = vpaddq_s16(v246, vmovl_high_u8(v244));
      v249 = vmovl_u16(*v248.i8);
      v250 = vmovl_high_u16(v248);
      v251 = vpaddq_s32(vshlq_u32(vmovl_u16(*v247.i8), vtrn1q_s32(0, v249)), vshlq_u32(vmovl_high_u16(v247), vtrn1q_s32(0, v250)));
      v252 = vpaddq_s32(v249, v250);
      v253.i64[0] = v251.u32[0];
      v253.i64[1] = v251.u32[1];
      v254 = v253;
      v253.i64[0] = v251.u32[2];
      v253.i64[1] = v251.u32[3];
      v255 = v253;
      v253.i64[0] = v252.u32[0];
      v253.i64[1] = v252.u32[1];
      v256 = v253;
      v253.i64[0] = v252.u32[2];
      v253.i64[1] = v252.u32[3];
      v257 = vpaddq_s64(vshlq_u64(v254, vzip1q_s64(0, v256)), vshlq_u64(v255, vzip1q_s64(0, v253)));
      v258 = vpaddq_s64(v256, v253);
      v259 = (v233 + 22) & 0x3E;
      v260 = (v257.i64[0] << v259) | v238;
      if ((v258.i64[0] + v259) >= 0x40)
      {
        *(v232 + ((v239 >> 3) & 8)) = v260;
        v260 = v257.i64[0] >> -v259;
      }

      v261 = v258.i64[1];
      v262 = v258.i64[0] + v239;
      v263 = v260 | (v257.i64[1] << v262);
      if ((v262 & 0x3F) + v258.i64[1] >= 0x40)
      {
        *(v232 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
        v263 = v257.i64[1] >> -(v262 & 0x3F);
        if ((v262 & 0x3F) == 0)
        {
          v263 = 0;
        }
      }

      v264 = vceqq_s16(v57, v71);
      v265 = v262 + v261;
      v266.i64[0] = -1;
      v266.i64[1] = -1;
      v267 = vandq_s8(vextq_s8(vtstq_s16(v228, v228), 0, 0xEuLL), v57);
      v268.i64[0] = 0xF000F000F000FLL;
      v268.i64[1] = 0xF000F000F000FLL;
      v269 = vandq_s8(vshlq_u16(v266, vaddq_s16(v267, v268)), v63);
      v270 = vmovl_u16(*v267.i8);
      v271 = vpaddq_s32(vshlq_u32(vmovl_u16(*v269.i8), vtrn1q_s32(0, v270)), vmovl_high_u16(v269));
      v272 = vpaddq_s32(v270, vmovl_high_u16(v267));
      v273.i64[0] = v271.u32[0];
      v273.i64[1] = v271.u32[1];
      v274 = v273;
      v273.i64[0] = v271.u32[2];
      v273.i64[1] = v271.u32[3];
      v275 = v273;
      v273.i64[0] = v272.u32[0];
      v273.i64[1] = v272.u32[1];
      v276 = v273;
      v273.i64[0] = v272.u32[2];
      v273.i64[1] = v272.u32[3];
      v277 = vpaddq_s64(vshlq_u64(v274, vzip1q_s64(0, v276)), vshlq_u64(v275, vzip1q_s64(0, v273)));
      v278 = vpaddq_s64(v276, v273);
      v279 = (v277.i64[0] << v265) | v263;
      if (v278.i64[0] + (v265 & 0x3F) >= 0x40)
      {
        *(v232 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v279;
        v279 = v277.i64[0] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v279 = 0;
        }
      }

      v280 = vandq_s8(v63, v264);
      v281 = v278.i64[0] + v265;
      v282 = v279 | (v277.i64[1] << v281);
      if ((v281 & 0x3F) + v278.i64[1] >= 0x40)
      {
        *(v232 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v277.i64[1] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vceqq_s16(v57, v72);
      v284 = vaddq_s16(v280, v19);
      v285 = v281 + v278.i64[1];
      if (v58)
      {
        v282 |= v59 << v285;
        if ((v285 & 0x3F) >= 0x30)
        {
          *(v232 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
          v282 = v59 >> -(v285 & 0x3F);
        }

        v285 += 16;
      }

      v286 = vandq_s8(v63, v283);
      v287 = vextq_s8(0, v71, 0xEuLL);
      v288.i64[0] = 0xF000F000F000FLL;
      v288.i64[1] = 0xF000F000F000FLL;
      v289.i64[0] = -1;
      v289.i64[1] = -1;
      v290 = vandq_s8(vshlq_u16(v289, vaddq_s16(v287, v288)), v284);
      v291 = vmovl_u16(*v287.i8);
      v292 = vmovl_high_u16(v287);
      v293 = vpaddq_s32(vshlq_u32(vmovl_u16(*v290.i8), vtrn1q_s32(0, v291)), vshlq_u32(vmovl_high_u16(v290), vtrn1q_s32(0, v292)));
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
      v301 = (v299.i64[0] << v285) | v282;
      if (v300.i64[0] + (v285 & 0x3F) >= 0x40)
      {
        *(v232 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
        v301 = v299.i64[0] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v301 = 0;
        }
      }

      v302 = vceqq_s16(v57, v73);
      v303 = vaddq_s16(v20, v286);
      v304 = v300.i64[0] + v285;
      v305 = (v300.i64[0] + v285) & 0x3F;
      v306 = v301 | (v299.i64[1] << v304);
      if ((v304 & 0x3F) + v300.i64[1] >= 0x40)
      {
        *(v232 + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v299.i64[1] >> -v305;
        if (!v305)
        {
          v306 = 0;
        }
      }

      v307 = vandq_s8(v63, v302);
      v308 = v304 + v300.i64[1];
      v309.i64[0] = 0xF000F000F000FLL;
      v309.i64[1] = 0xF000F000F000FLL;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v311 = vandq_s8(vshlq_u16(v310, vaddq_s16(v72, v309)), v303);
      v312 = vmovl_u16(*v72.i8);
      v313 = vmovl_high_u16(v72);
      v314 = vpaddq_s32(vshlq_u32(vmovl_u16(*v311.i8), vtrn1q_s32(0, v312)), vshlq_u32(vmovl_high_u16(v311), vtrn1q_s32(0, v313)));
      v315 = vpaddq_s32(v312, v313);
      v316.i64[0] = v314.u32[0];
      v316.i64[1] = v314.u32[1];
      v317 = v316;
      v316.i64[0] = v314.u32[2];
      v316.i64[1] = v314.u32[3];
      v318 = v316;
      v316.i64[0] = v315.u32[0];
      v316.i64[1] = v315.u32[1];
      v319 = v316;
      v316.i64[0] = v315.u32[2];
      v316.i64[1] = v315.u32[3];
      v320 = vpaddq_s64(vshlq_u64(v317, vzip1q_s64(0, v319)), vshlq_u64(v318, vzip1q_s64(0, v316)));
      v321 = vpaddq_s64(v319, v316);
      v322 = (v320.i64[0] << v308) | v306;
      if (v321.i64[0] + (v308 & 0x3F) >= 0x40)
      {
        *(v232 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v320.i64[0] >> -(v308 & 0x3F);
        if ((v308 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = vceqq_s16(v57, v74);
      v324 = vaddq_s16(v21, v307);
      v325 = v321.i64[0] + v308;
      v326 = v322 | (v320.i64[1] << v325);
      if ((v325 & 0x3F) + v321.i64[1] >= 0x40)
      {
        *(v232 + ((v325 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v320.i64[1] >> -(v325 & 0x3F);
        if ((v325 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = vandq_s8(v63, v323);
      v328 = v325 + v321.i64[1];
      v329.i64[0] = 0xF000F000F000FLL;
      v329.i64[1] = 0xF000F000F000FLL;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vshlq_u16(v330, vaddq_s16(v73, v329)), v324);
      v332 = vmovl_u16(*v73.i8);
      v333 = vmovl_high_u16(v73);
      v334 = vpaddq_s32(vshlq_u32(vmovl_u16(*v331.i8), vtrn1q_s32(0, v332)), vshlq_u32(vmovl_high_u16(v331), vtrn1q_s32(0, v333)));
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
      v342 = (v340.i64[0] << v328) | v326;
      if (v341.i64[0] + (v328 & 0x3F) >= 0x40)
      {
        *(v232 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = vaddq_s16(v22, v327);
      v344 = v341.i64[0] + v328;
      v345 = v342 | (v340.i64[1] << v344);
      if ((v344 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v232 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v340.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v341.i64[1];
      v347.i64[0] = 0xF000F000F000FLL;
      v347.i64[1] = 0xF000F000F000FLL;
      v348.i64[0] = -1;
      v348.i64[1] = -1;
      v349 = vandq_s8(vshlq_u16(v348, vaddq_s16(v74, v347)), v343);
      v350 = vmovl_u16(*v74.i8);
      v351 = vmovl_high_u16(v74);
      v352 = vpaddq_s32(vshlq_u32(vmovl_u16(*v349.i8), vtrn1q_s32(0, v350)), vshlq_u32(vmovl_high_u16(v349), vtrn1q_s32(0, v351)));
      v353 = vpaddq_s32(v350, v351);
      v354.i64[0] = v352.u32[0];
      v354.i64[1] = v352.u32[1];
      v355 = v354;
      v354.i64[0] = v352.u32[2];
      v354.i64[1] = v352.u32[3];
      v356 = v354;
      v354.i64[0] = v353.u32[0];
      v354.i64[1] = v353.u32[1];
      v357 = v354;
      v354.i64[0] = v353.u32[2];
      v354.i64[1] = v353.u32[3];
      v358 = vpaddq_s64(vshlq_u64(v355, vzip1q_s64(0, v357)), vshlq_u64(v356, vzip1q_s64(0, v354)));
      v359 = vpaddq_s64(v357, v354);
      v360 = (v358.i64[0] << v346) | v345;
      if (v359.i64[0] + (v346 & 0x3F) > 0x3F)
      {
        *(v232 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        if ((v346 & 0x3F) != 0)
        {
          v360 = v358.i64[0] >> -(v346 & 0x3F);
        }

        else
        {
          v360 = 0;
        }
      }

      v361 = v359.i64[0] + v346;
      v362 = v360 | (v358.i64[1] << v361);
      if ((v361 & 0x3F) + v359.i64[1] >= 0x40)
      {
        *(v232 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
        v362 = v358.i64[1] >> -(v361 & 0x3F);
        if ((v361 & 0x3F) == 0)
        {
          v362 = 0;
        }
      }

      v363 = v361 + v359.i64[1];
      if ((v363 & 0x3F) != 0)
      {
        *(v232 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
      }

      result = (v363 - v233 + 7) >> 3;
      v235 = *a2 | (result - 1);
    }

    *a2 = v235;
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    result = 2;
    *a2 = 1;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6, int16x4_t a7, int16x4_t a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = a6;
  v15 = a5;
  v17 = a3;
  v19 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    *a4 = 0;
  }

  v20 = 2 * a2;
  v21 = v14 - 2;
  if (v15 && v14 >= 3)
  {
    if (v21 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v14 - 2;
    }

    if (v15 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 1, (v19 + v20), a2, v23, v22, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v24 = v15 - 4;
  if (v15 >= 5 && v14)
  {
    if (v14 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v14;
    }

    if (v24 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 2, v19 + 2, a2, v26, v25, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[2] = 0;
    if (v15 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v14 >= 3)
  {
    if (v21 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v14 - 2;
    }

    if (v24 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 3, (v19 + v20 + 32), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    v29 = v14 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v29 = v14 - 4;
  if (!v15)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v14 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v32 = v14 - 6;
    if (!v15)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v29 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29;
  }

  if (v15 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v15;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 4, (v19 + 4 * a2), a2, v31, v30, a7, a8, a9, a10, a11, a12, a13, a14);
  v17 = (v17 + result);
  v32 = v14 - 6;
LABEL_47:
  if (v14 >= 7)
  {
    if (v32 >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v32;
    }

    if (v15 >= 4)
    {
      v34 = 4;
    }

    else
    {
      v34 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 5, (v19 + 6 * a2), a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v15 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v14 >= 5)
  {
    if (v29 >= 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v29;
    }

    if (v24 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 6, (v19 + 4 * a2 + 32), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v15 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v14 < 7)
  {
    goto LABEL_76;
  }

  if (v32 >= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = v32;
  }

  if (v24 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = v15 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 7, (v19 + 6 * a2 + 32), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 22;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x2B)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x200;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, __n128 *a2, unsigned __int8 *a3, double a4, __n128 a5, __n128 a6, __n128 a7)
{
  v10 = *a3;
  if (v10 == 63)
  {
    v12 = *a2;
    a5 = a2[1];
    a6 = a2[2];
    a7 = a2[3];
    *a1 = *a2;
    *(a1 + 16) = a5;
    *(a1 + 128) = a6;
    *(a1 + 144) = a7;
    v11 = 64;
  }

  else if (v10 == 1)
  {
    v12 = vld1q_dup_s16(a2);
    *a1 = v12;
    *(a1 + 16) = v12;
    *(a1 + 128) = v12;
    *(a1 + 144) = v12;
    v11 = 2;
  }

  else if (*a3)
  {
    v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v10, a4, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
  }

  else
  {
    v11 = 0;
    v12.i64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  v13 = (a2 + v11);
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      v15 = vld1q_dup_s16(v13);
      *(a1 + 32) = v15;
      *(a1 + 48) = v15;
      *(a1 + 160) = v15;
      *(a1 + 176) = v15;
      v16 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = v13[1];
      a6 = v13[2];
      a7 = v13[3];
      *(a1 + 32) = *v13;
      *(a1 + 48) = a5;
      *(a1 + 160) = a6;
      *(a1 + 176) = a7;
      v16 = 64;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 128, v13, v14, *v12.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v16 = 0;
    v15.i64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  v17 = (v13 + v16);
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 1)
    {
      v19 = vld1q_dup_s16(v17);
      *(a1 + 256) = v19;
      *(a1 + 272) = v19;
      *(a1 + 384) = v19;
      *(a1 + 400) = v19;
      v20 = 2;
    }

    else if (v18 == 63)
    {
      v19 = *v17;
      a5 = v17[1];
      a6 = v17[2];
      a7 = v17[3];
      *(a1 + 256) = *v17;
      *(a1 + 272) = a5;
      *(a1 + 384) = a6;
      *(a1 + 400) = a7;
      v20 = 64;
    }

    else
    {
      v20 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 128, v17, v18, *v15.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v20 = 0;
    v19.i64[0] = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
  }

  v21 = (v17 + v20);
  v22 = a3[3];
  if (a3[3])
  {
    if (v22 == 1)
    {
      v23 = vld1q_dup_s16(v21);
      *(a1 + 288) = v23;
      *(a1 + 304) = v23;
      *(a1 + 416) = v23;
      *(a1 + 432) = v23;
      v24 = 2;
    }

    else if (v22 == 63)
    {
      v23 = *v21;
      a5 = v21[1];
      a6 = v21[2];
      a7 = v21[3];
      *(a1 + 288) = *v21;
      *(a1 + 304) = a5;
      *(a1 + 416) = a6;
      *(a1 + 432) = a7;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 128, v21, v22, *v19.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v24 = 0;
    v23.i64[0] = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v25 = (v21 + v24);
  v26 = a3[4];
  if (a3[4])
  {
    if (v26 == 1)
    {
      v27 = vld1q_dup_s16(v25);
      *(a1 + 64) = v27;
      *(a1 + 80) = v27;
      *(a1 + 192) = v27;
      *(a1 + 208) = v27;
      v28 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = v25[1];
      a6 = v25[2];
      a7 = v25[3];
      *(a1 + 64) = *v25;
      *(a1 + 80) = a5;
      *(a1 + 192) = a6;
      *(a1 + 208) = a7;
      v28 = 64;
    }

    else
    {
      v28 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 64), 128, v25, v26, *v23.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v28 = 0;
    v27.i64[0] = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
  }

  v29 = (v25 + v28);
  v30 = a3[5];
  if (a3[5])
  {
    if (v30 == 1)
    {
      v31 = vld1q_dup_s16(v29);
      *(a1 + 96) = v31;
      *(a1 + 112) = v31;
      *(a1 + 224) = v31;
      *(a1 + 240) = v31;
      v32 = 2;
    }

    else if (v30 == 63)
    {
      v31 = *v29;
      a5 = v29[1];
      a6 = v29[2];
      a7 = v29[3];
      *(a1 + 96) = *v29;
      *(a1 + 112) = a5;
      *(a1 + 224) = a6;
      *(a1 + 240) = a7;
      v32 = 64;
    }

    else
    {
      v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 96), 128, v29, v30, *v27.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v32 = 0;
    v31.i64[0] = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v33 = (v29 + v32);
  v34 = a3[6];
  if (!a3[6])
  {
    result = 0;
    v35.i64[0] = 0;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

LABEL_54:
    v42 = 0uLL;
    goto LABEL_55;
  }

  if (v34 == 1)
  {
    v35 = vld1q_dup_s16(v33);
    *(a1 + 320) = v35;
    *(a1 + 336) = v35;
    *(a1 + 448) = v35;
    *(a1 + 464) = v35;
    result = 2;
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v34 == 63)
  {
    v35 = *v33;
    a5 = v33[1];
    a6 = v33[2];
    a7 = v33[3];
    *(a1 + 320) = *v33;
    *(a1 + 336) = a5;
    *(a1 + 448) = a6;
    *(a1 + 464) = a7;
    result = 64;
    v37 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 320), 128, v33, v34, *v31.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
    v37 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

LABEL_49:
  v38 = v33 + result;
  if (v37 == 1)
  {
    v42 = vld1q_dup_s16(v38);
LABEL_55:
    *(a1 + 352) = v42;
    *(a1 + 368) = v42;
    *(a1 + 480) = v42;
    *(a1 + 496) = v42;
    return result;
  }

  if (v37 == 63)
  {
    v39 = *(v38 + 16);
    v40 = *(v38 + 32);
    v41 = *(v38 + 48);
    *(a1 + 352) = *v38;
    *(a1 + 368) = v39;
    *(a1 + 480) = v40;
    *(a1 + 496) = v41;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 352), 128, v38, v37, *v35.i64, a5.n128_f64[0], a6.n128_f64[0], a7.n128_u64[0]);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int16x8_t *a3, uint64_t a4, int a5, int a6, int16x4_t a7, int16x4_t a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = *a3;
  v15 = a3[1];
  v16 = *(a3 + a4);
  v17 = *(&a3[1] + a4);
  v18 = vdupq_lane_s16(*a3->i8, 0);
  v19 = vsubq_s16(*a3, v18);
  v20 = vsubq_s16(v15, v18);
  v21 = vsubq_s16(v16, v18);
  v22 = vsubq_s16(v17, v18);
  a7.i16[0] = vmaxvq_s16(v19);
  v23 = vdupq_lane_s16(a7, 0);
  a8.i16[0] = vminvq_s16(v19);
  v24 = vdupq_lane_s16(a8, 0);
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
  a14.i16[0] = vminvq_s16(v20);
  v33 = vdupq_lane_s16(*v31.i8, 0);
  v34 = vdupq_lane_s16(a14, 0);
  v35 = vmaxq_s16(v26, v33);
  v36 = vminq_s16(v28, v34);
  v37 = vzip1q_s16(v33, v34);
  v38 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v37)), vceqzq_s16(v37));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v21);
  v34.i16[0] = vminvq_s16(v21);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(*v34.i8, 0);
  v42 = vmaxq_s16(v35, v40);
  v43 = vminq_s16(v36, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v22);
  v41.i16[0] = vminvq_s16(v22);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(*v41.i8, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v30, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vmaxq_s16(vmaxq_s16(v32, v39), vmaxq_s16(v46, v53));
  v55 = vclzq_s16(vsubq_s16(v49, v50));
  v56 = vsubq_s16(v30, v55);
  v57 = vminq_s16(v56, v54);
  if (vmaxvq_s16(v57))
  {
    v58 = 0;
    v59 = 0;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61.i64[0] = 0xF000F000F000FLL;
    v61.i64[1] = 0xF000F000F000FLL;
    v62 = vcgtq_s16(v54, v56);
    v63 = vandq_s8(vsubq_s16(vshlq_s16(v60, vsubq_s16(v61, v55)), v50), v62);
    v64.i64[0] = 0x8000800080008;
    v64.i64[1] = 0x8000800080008;
    v65.i64[0] = 0x3000300030003;
    v65.i64[1] = 0x3000300030003;
    v66 = vorrq_s8(vandq_s8(vceqzq_s16(v57), v65), vandq_s8(v62, v64));
    v67 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v32), v65), 0);
    v68 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v39), v65), 0);
    v69 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v46), v65), 0);
    v70 = vmaxq_s16(vminq_s16(vsubq_s16(v57, v53), v65), 0);
    v71 = vsubq_s16(v57, v67);
    v72 = vsubq_s16(v57, v68);
    v73 = vsubq_s16(v57, v69);
    v74 = vsubq_s16(v57, v70);
    v75 = vceqq_s16(vaddq_s16(v70, v69), vnegq_s16(vaddq_s16(v67, v68)));
    v69.i64[0] = 0x4000400040004;
    v69.i64[1] = 0x4000400040004;
    v76 = vbicq_s8(v69, v75);
    v77 = vorrq_s8(v76, v66);
    if (a5 && a6)
    {
      v364 = v63;
      v78 = v14.u16[1] - v14.u16[0];
      v79 = 0x302030201000100;
      v80.i64[0] = 0xFFFFFFFF00000000;
      v80.i64[1] = 0xFFFFFFFF00000000;
      v81 = vmlal_s8(vandq_s8(vdupq_n_s16((v14.i8[4] - v14.i8[0])), v80), vdup_n_s8(v78), 0x302030201000100);
      v82 = vsubq_s16(v19, v81);
      v83 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v14.i8[4] - v14.i8[0])), v20), v81);
      v84 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v78), v21), v81);
      v79.i16[0] = vmaxvq_s16(v82);
      v80.i16[0] = vminvq_s16(v82);
      v85 = vdupq_lane_s16(v79, 0);
      v86 = vdupq_lane_s16(*v80.i8, 0);
      v87 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v14.i8[4] - v14.i8[0]) + 4 * v78)), v22), v81);
      v88.i64[0] = 0x8000800080008000;
      v88.i64[1] = 0x8000800080008000;
      v89 = vmaxq_s16(v85, v88);
      v81.i64[0] = 0x8000800080008000;
      v81.i64[1] = 0x8000800080008000;
      v90 = vminq_s16(v86, v81);
      v91 = vzip1q_s16(v85, v86);
      v92 = v74;
      v93.i64[0] = 0x10001000100010;
      v93.i64[1] = 0x10001000100010;
      v94 = v73;
      v95 = vsubq_s16(v93, vclsq_s16(v91));
      v96 = vbicq_s8(v95, vceqzq_s16(v91));
      v95.i16[0] = vmaxvq_s16(v83);
      v61.i16[0] = vminvq_s16(v83);
      v97 = vdupq_lane_s16(*v95.i8, 0);
      v98 = vdupq_lane_s16(*v61.i8, 0);
      v99 = vpmaxq_s16(v96, v96);
      v100 = vmaxq_s16(v89, v97);
      v101 = vminq_s16(v90, v98);
      v102 = vzip1q_s16(v97, v98);
      v103 = vsubq_s16(v93, vclsq_s16(v102));
      v104 = vbicq_s8(v103, vceqzq_s16(v102));
      v105 = v22;
      v106 = vpmaxq_s16(v104, v104);
      v104.i16[0] = vmaxvq_s16(v84);
      v107 = vdupq_lane_s16(*v104.i8, 0);
      v103.i16[0] = vminvq_s16(v84);
      v108 = vdupq_lane_s16(*v103.i8, 0);
      v109 = vmaxq_s16(v100, v107);
      v110 = vminq_s16(v101, v108);
      v111 = vzip1q_s16(v107, v108);
      v112 = vsubq_s16(v93, vclsq_s16(v111));
      v113 = vbicq_s8(v112, vceqzq_s16(v111));
      v114 = vpmaxq_s16(v113, v113);
      v113.i16[0] = vmaxvq_s16(v87);
      v112.i16[0] = vminvq_s16(v87);
      v115 = vdupq_lane_s16(*v113.i8, 0);
      v116 = vdupq_lane_s16(*v112.i8, 0);
      v117 = vmaxq_s16(v109, v115);
      v118 = vminq_s16(v110, v116);
      v119 = vzip1q_s16(v115, v116);
      v120 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v119)), vceqzq_s16(v119));
      v121 = vpmaxq_s16(v120, v120);
      v122 = vmaxq_s16(vmaxq_s16(v99, v106), vmaxq_s16(v114, v121));
      v123 = vclzq_s16(vsubq_s16(v117, v118));
      v124 = vsubq_s16(v93, v123);
      v125 = vcgtq_s16(v122, v124);
      v126 = vminq_s16(v124, v122);
      v122.i64[0] = 0x1000100010001;
      v122.i64[1] = 0x1000100010001;
      v127 = vmaxq_s16(v126, v122);
      v122.i64[0] = 0x3000300030003;
      v122.i64[1] = 0x3000300030003;
      v128 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v99), v122), 0);
      v129 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v106), v122), 0);
      v130 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v114), v122), 0);
      v131 = vmaxq_s16(vminq_s16(vsubq_s16(v127, v121), v122), 0);
      v132 = vsubq_s16(v127, v128);
      v133 = vsubq_s16(v127, v129);
      v134 = vsubq_s16(v127, v130);
      v135 = vsubq_s16(v127, v131);
      v136 = vceqq_s16(vaddq_s16(v131, v130), vnegq_s16(vaddq_s16(v128, v129)));
      v131.i64[0] = 0x4000400040004;
      v131.i64[1] = 0x4000400040004;
      v137 = vbicq_s8(v131, v136);
      v138 = v19;
      v139.i64[0] = 0x7000700070007;
      v139.i64[1] = 0x7000700070007;
      v140 = vandq_s8(v57, v62);
      v141 = vaddq_s16(v76, v76);
      v142 = vmulq_s16(v71, v139);
      v143 = vshlq_n_s16(vaddq_s16(vaddq_s16(v94, v72), v92), 3uLL);
      v144 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v142, v140), v143), v141), vaddq_s16(vaddq_s16(vmlaq_s16(vbslq_s8(v125, vaddq_s16(v127, v93), v93), v132, v139), vshlq_n_s16(vaddq_s16(vaddq_s16(v134, v133), v135), 3uLL)), vaddq_s16(v137, v137))), 0);
      v140.i16[0] = vaddvq_s16(v144);
      v145 = v140.u16[0];
      if (v140.i16[0])
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147.i64[0] = 0xA000A000A000ALL;
        v147.i64[1] = 0xA000A000A000ALL;
        v148 = vbslq_s8(v125, v147, v146);
        v141.i64[0] = -1;
        v141.i64[1] = -1;
        v149 = vorrq_s8(v137, v148);
        v148.i64[0] = 0xF000F000F000FLL;
        v148.i64[1] = 0xF000F000F000FLL;
        v150 = vcltzq_s16(vshlq_n_s16(v144, 0xFuLL));
        v19 = vbslq_s8(v150, v82, v138);
        v151 = vbslq_s8(v150, v83, v20);
        v152 = vbslq_s8(v150, v84, v21);
        v367 = vbslq_s8(v150, v87, v105);
        v71 = vbslq_s8(v150, v132, v71);
        v72 = vbslq_s8(v150, v133, v72);
        v153 = vbslq_s8(v150, v134, v94);
        v154 = vbslq_s8(v150, v135, v92);
        v63 = vbslq_s8(v150, vandq_s8(vsubq_s16(vshlq_s16(v141, vsubq_s16(v148, v123)), v118), v125), v364);
        v57 = vbslq_s8(v150, v127, v57);
        v77 = vbslq_s8(v150, v149, v77);
        v150.i64[0] = 0x7000700070007;
        v150.i64[1] = 0x7000700070007;
        v142 = vmulq_s16(v71, v150);
        v362 = v151;
        v363 = v153;
        v365 = v152;
        v366 = v154;
        v143 = vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v72), v154), 3uLL);
      }

      else
      {
        v362 = v20;
        v363 = v94;
        v365 = v21;
        v366 = v92;
        v367 = v105;
        v63 = v364;
        v19 = v138;
      }

      v59 = ((v14.i8[2] - v14.i8[0]) | ((v14.i16[2] - v14.i16[0]) << 8));
      v156 = vsubq_s16(v14, vqtbl1q_s8(v14, xmmword_29D2F0F00));
      v157 = a3[1];
      v157.i16[7] = HIWORD(*a3);
      v158 = vsubq_s16(a3[1], vqtbl1q_s8(v157, xmmword_29D2F0F10));
      v17 = *(&a3[1] + a4);
      v16 = *(a3 + a4);
      v159 = v16;
      v159.i16[7] = HIWORD(*a3);
      v160 = vsubq_s16(v16, vqtbl1q_s8(v159, xmmword_29D2F0F20));
      v161 = v17;
      v161.i16[7] = HIWORD(*a3);
      v162 = 0x100010001000F0ELL;
      v163 = v156;
      v163.i16[0] = v156.i16[7];
      v163.i16[7] = v156.i16[0];
      v156.i16[0] = vmaxvq_s16(v163);
      v162.i16[0] = vminvq_s16(v163);
      v164 = vdupq_lane_s16(*v156.i8, 0);
      v165 = vdupq_lane_s16(v162, 0);
      v166 = vsubq_s16(v17, vqtbl1q_s8(v161, xmmword_29D2F0F30));
      v161.i64[0] = 0x8000800080008000;
      v161.i64[1] = 0x8000800080008000;
      v167 = vmaxq_s16(v164, v161);
      v168.i64[0] = 0x8000800080008000;
      v168.i64[1] = 0x8000800080008000;
      v169 = vminq_s16(v165, v168);
      v170 = vzip1q_s16(v164, v165);
      v171 = vsubq_s16(v93, vclsq_s16(v170));
      v172 = vbicq_s8(v171, vceqzq_s16(v170));
      v173 = vpmaxq_s16(v172, v172);
      v171.i16[0] = vmaxvq_s16(v158);
      v174 = vdupq_lane_s16(*v171.i8, 0);
      v141.i16[0] = vminvq_s16(v158);
      v175 = vdupq_lane_s16(*v141.i8, 0);
      v176 = vmaxq_s16(v167, v174);
      v177 = vminq_s16(v169, v175);
      v178 = vzip1q_s16(v174, v175);
      v179 = vsubq_s16(v93, vclsq_s16(v178));
      v180 = vbicq_s8(v179, vceqzq_s16(v178));
      v181 = vpmaxq_s16(v180, v180);
      v179.i16[0] = vmaxvq_s16(v160);
      v123.i16[0] = vminvq_s16(v160);
      v182 = vdupq_lane_s16(*v179.i8, 0);
      v183 = vdupq_lane_s16(*v123.i8, 0);
      v184 = vmaxq_s16(v176, v182);
      v185 = vminq_s16(v177, v183);
      v186 = vzip1q_s16(v182, v183);
      v187 = vsubq_s16(v93, vclsq_s16(v186));
      v188 = vbicq_s8(v187, vceqzq_s16(v186));
      v187.i16[0] = vmaxvq_s16(v166);
      v134.i16[0] = vminvq_s16(v166);
      v189 = vdupq_lane_s16(*v187.i8, 0);
      v190 = vdupq_lane_s16(*v134.i8, 0);
      v191 = vpmaxq_s16(v188, v188);
      v192 = vmaxq_s16(v184, v189);
      v193 = vminq_s16(v185, v190);
      v194 = vzip1q_s16(v189, v190);
      v195 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v194)), vceqzq_s16(v194));
      v196 = vpmaxq_s16(v195, v195);
      v197 = vmaxq_s16(vmaxq_s16(v173, v181), vmaxq_s16(v191, v196));
      v198 = vclzq_s16(vsubq_s16(v192, v193));
      v199 = vsubq_s16(v93, v198);
      v200 = vcgtq_s16(v197, v199);
      v201 = vminq_s16(v199, v197);
      v202.i64[0] = 0x3000300030003;
      v202.i64[1] = 0x3000300030003;
      v203 = vmaxq_s16(vminq_s16(vsubq_s16(v201, v173), v202), 0);
      v204 = vmaxq_s16(vminq_s16(vsubq_s16(v201, v181), v202), 0);
      v205 = vmaxq_s16(vminq_s16(vsubq_s16(v201, v191), v202), 0);
      v206 = vmaxq_s16(vminq_s16(vsubq_s16(v201, v196), v202), 0);
      v207 = vsubq_s16(v201, v203);
      v208 = vsubq_s16(v201, v204);
      v209 = vsubq_s16(v201, v205);
      v210 = vsubq_s16(v201, v206);
      v211 = vceqq_s16(vaddq_s16(v206, v205), vnegq_s16(vaddq_s16(v203, v204)));
      v204.i64[0] = 0x4000400040004;
      v204.i64[1] = 0x4000400040004;
      v212 = vbicq_s8(v204, v211);
      v206.i64[0] = 0x7000700070007;
      v206.i64[1] = 0x7000700070007;
      v213 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v201, v200), v207, v206), vshlq_n_s16(vaddq_s16(vaddq_s16(v209, v208), v210), 3uLL)), vaddq_s16(v212, v212));
      v211.i64[0] = 0x8000800080008;
      v211.i64[1] = 0x8000800080008;
      v214 = vbicq_s8(v57, vceqzq_s16(vandq_s8(v77, v211)));
      v215 = vandq_s8(vaddq_s16(v77, v77), v211);
      v216.i64[0] = 0x2000200020002;
      v216.i64[1] = 0x2000200020002;
      v217 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v214, v215), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v77, v202), v216), v93), v142)), v143), v213), 0);
      v214.i16[0] = vaddvq_s16(v217);
      v218 = v214.u16[0];
      if (v214.i16[0])
      {
        v219.i64[0] = 0x9000900090009;
        v219.i64[1] = 0x9000900090009;
        v220.i64[0] = -1;
        v220.i64[1] = -1;
        v221 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v201), v216), vsubq_s16(vandq_s8(v200, v219), vmvnq_s8(v200))), v212);
        v219.i64[0] = 0xF000F000F000FLL;
        v219.i64[1] = 0xF000F000F000FLL;
        v222 = vandq_s8(vsubq_s16(vshlq_s16(v220, vsubq_s16(v219, v198)), v193), v200);
        v223 = vcltzq_s16(vshlq_n_s16(v217, 0xFuLL));
        v18.i16[0] = vbslq_s8(v223, vextq_s8(v14, v14, 0xEuLL), v18).u16[0];
        v19 = vbslq_s8(v223, v163, v19);
        v20 = vbslq_s8(v223, v158, v362);
        v21 = vbslq_s8(v223, v160, v365);
        v22 = vbslq_s8(v223, v166, v367);
        v71 = vbslq_s8(v223, v207, v71);
        v72 = vbslq_s8(v223, v208, v72);
        v73 = vbslq_s8(v223, v209, v363);
        v74 = vbslq_s8(v223, v210, v366);
        v63 = vbslq_s8(v223, v222, v63);
        v57 = vbslq_s8(v223, v201, v57);
        v77 = vbslq_s8(v223, v221, v77);
      }

      else
      {
        v74 = v366;
        v22 = v367;
        v21 = v365;
        v20 = v362;
        v73 = v363;
      }

      if (v145)
      {
        v224 = v218 == 0;
      }

      else
      {
        v224 = 0;
      }

      v58 = v224;
      v15 = a3[1];
    }

    v225.i64[0] = 0x8000800080008;
    v225.i64[1] = 0x8000800080008;
    v226 = vandq_s8(v77, v225);
    v227.i64[0] = 0x3000300030003;
    v227.i64[1] = 0x3000300030003;
    v228.i64[0] = 0x2000200020002;
    v228.i64[1] = 0x2000200020002;
    v229 = vceqq_s16(vandq_s8(v77, v227), v228);
    v228.i64[0] = 0x10001000100010;
    v228.i64[1] = 0x10001000100010;
    if (((7 * v71.i16[0] + 8 * vaddq_s16(vaddq_s16(v73, v72), v74).u16[0] + ((2 * v77.i16[0]) & 8) + vbicq_s8(v57, vceqzq_s16(v226)).u16[0] + vandq_s8(v229, v228).u16[0]) + 29) >= 0x200)
    {
      *a1 = v14;
      a1[1] = v15;
      v233 = 63;
      a1[2] = v16;
      a1[3] = v17;
      result = 64;
    }

    else
    {
      v230 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v231 = 8 * (a1 & 7);
      if (v231)
      {
        v232 = *v230 & ~(-1 << v231);
      }

      else
      {
        v232 = 0;
      }

      if (v57.i16[0])
      {
        v234 = (16 * v57.i8[0] - 16) & 0xF0;
      }

      else
      {
        v234 = 0;
      }

      *a2 = v77.i8[0] << 6;
      v235 = (v234 & 0xFFFFFFFFFF0000F0 | (v18.u16[0] << 8) | v77.i8[0] & 0xF) >> 2;
      v236 = (v235 << v231) | v232;
      if (v231 >= 0x2A)
      {
        *v230 = v236;
        v236 = v235 >> (-8 * (a1 & 7u));
      }

      v237 = v231 + 22;
      v238 = vsubq_s16(v57, v71);
      v239 = vsubq_s16(v57, v72);
      v240 = vsubq_s16(v57, v73);
      v241 = vsubq_s16(v57, v74);
      *v238.i8 = vqmovn_u16(v238);
      *v239.i8 = vqmovn_u16(v239);
      *v240.i8 = vqmovn_u16(v240);
      *v241.i8 = vqmovn_u16(v241);
      v238.i32[0] = vzip1q_s16(vzip1q_s8(v238, v239), vzip1q_s8(v240, v241)).u32[0];
      v240.i64[0] = 0x202020202020202;
      v240.i64[1] = 0x202020202020202;
      v242 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v77.i8, 0x4000400040004)))), v240);
      v240.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v240.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v241.i64[0] = -1;
      v241.i64[1] = -1;
      v243 = vandq_s8(vshlq_u8(v241, vorrq_s8(v242, v240)), v238.u32[0]);
      v244 = vmovl_u8(*v242.i8);
      v245 = vpaddq_s16(vshlq_u16(vmovl_u8(*v243.i8), vtrn1q_s16(0, v244)), vmovl_high_u8(v243));
      v246 = vpaddq_s16(v244, vmovl_high_u8(v242));
      v247 = vmovl_u16(*v246.i8);
      v248 = vmovl_high_u16(v246);
      v249 = vpaddq_s32(vshlq_u32(vmovl_u16(*v245.i8), vtrn1q_s32(0, v247)), vshlq_u32(vmovl_high_u16(v245), vtrn1q_s32(0, v248)));
      v250 = vpaddq_s32(v247, v248);
      v251.i64[0] = v249.u32[0];
      v251.i64[1] = v249.u32[1];
      v252 = v251;
      v251.i64[0] = v249.u32[2];
      v251.i64[1] = v249.u32[3];
      v253 = v251;
      v251.i64[0] = v250.u32[0];
      v251.i64[1] = v250.u32[1];
      v254 = v251;
      v251.i64[0] = v250.u32[2];
      v251.i64[1] = v250.u32[3];
      v255 = vpaddq_s64(vshlq_u64(v252, vzip1q_s64(0, v254)), vshlq_u64(v253, vzip1q_s64(0, v251)));
      v256 = vpaddq_s64(v254, v251);
      v257 = (v231 + 22) & 0x3E;
      v258 = (v255.i64[0] << v257) | v236;
      if ((v256.i64[0] + v257) >= 0x40)
      {
        *(v230 + ((v237 >> 3) & 8)) = v258;
        v258 = v255.i64[0] >> -v257;
      }

      v259 = v256.i64[1];
      v260 = v256.i64[0] + v237;
      v261 = v258 | (v255.i64[1] << v260);
      if ((v260 & 0x3F) + v256.i64[1] >= 0x40)
      {
        *(v230 + ((v260 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v261;
        v261 = v255.i64[1] >> -(v260 & 0x3F);
        if ((v260 & 0x3F) == 0)
        {
          v261 = 0;
        }
      }

      v262 = vceqq_s16(v57, v71);
      v263 = v260 + v259;
      v264.i64[0] = -1;
      v264.i64[1] = -1;
      v265 = vandq_s8(vextq_s8(vtstq_s16(v226, v226), 0, 0xEuLL), v57);
      v266.i64[0] = 0xF000F000F000FLL;
      v266.i64[1] = 0xF000F000F000FLL;
      v267 = vandq_s8(vshlq_u16(v264, vaddq_s16(v265, v266)), v63);
      v268 = vmovl_u16(*v265.i8);
      v269 = vpaddq_s32(vshlq_u32(vmovl_u16(*v267.i8), vtrn1q_s32(0, v268)), vmovl_high_u16(v267));
      v270 = vpaddq_s32(v268, vmovl_high_u16(v265));
      v271.i64[0] = v269.u32[0];
      v271.i64[1] = v269.u32[1];
      v272 = v271;
      v271.i64[0] = v269.u32[2];
      v271.i64[1] = v269.u32[3];
      v273 = v271;
      v271.i64[0] = v270.u32[0];
      v271.i64[1] = v270.u32[1];
      v274 = v271;
      v271.i64[0] = v270.u32[2];
      v271.i64[1] = v270.u32[3];
      v275 = vpaddq_s64(vshlq_u64(v272, vzip1q_s64(0, v274)), vshlq_u64(v273, vzip1q_s64(0, v271)));
      v276 = vpaddq_s64(v274, v271);
      v277 = (v275.i64[0] << v263) | v261;
      if (v276.i64[0] + (v263 & 0x3F) >= 0x40)
      {
        *(v230 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v277;
        v277 = v275.i64[0] >> -(v263 & 0x3F);
        if ((v263 & 0x3F) == 0)
        {
          v277 = 0;
        }
      }

      v278 = vandq_s8(v63, v262);
      v279 = v276.i64[0] + v263;
      v280 = v277 | (v275.i64[1] << v279);
      if ((v279 & 0x3F) + v276.i64[1] >= 0x40)
      {
        *(v230 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
        v280 = v275.i64[1] >> -(v279 & 0x3F);
        if ((v279 & 0x3F) == 0)
        {
          v280 = 0;
        }
      }

      v281 = vceqq_s16(v57, v72);
      v282 = vaddq_s16(v278, v19);
      v283 = v279 + v276.i64[1];
      if (v58)
      {
        v280 |= v59 << v283;
        if ((v283 & 0x3F) >= 0x30)
        {
          *(v230 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
          v280 = v59 >> -(v283 & 0x3F);
        }

        v283 += 16;
      }

      v284 = vandq_s8(v63, v281);
      v285 = vextq_s8(0, v71, 0xEuLL);
      v286.i64[0] = 0xF000F000F000FLL;
      v286.i64[1] = 0xF000F000F000FLL;
      v287.i64[0] = -1;
      v287.i64[1] = -1;
      v288 = vandq_s8(vshlq_u16(v287, vaddq_s16(v285, v286)), v282);
      v289 = vmovl_u16(*v285.i8);
      v290 = vmovl_high_u16(v285);
      v291 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v289)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v290)));
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
      v299 = (v297.i64[0] << v283) | v280;
      if (v298.i64[0] + (v283 & 0x3F) >= 0x40)
      {
        *(v230 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
        v299 = v297.i64[0] >> -(v283 & 0x3F);
        if ((v283 & 0x3F) == 0)
        {
          v299 = 0;
        }
      }

      v300 = vceqq_s16(v57, v73);
      v301 = vaddq_s16(v20, v284);
      v302 = v298.i64[0] + v283;
      v303 = (v298.i64[0] + v283) & 0x3F;
      v304 = v299 | (v297.i64[1] << v302);
      if ((v302 & 0x3F) + v298.i64[1] >= 0x40)
      {
        *(v230 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v297.i64[1] >> -v303;
        if (!v303)
        {
          v304 = 0;
        }
      }

      v305 = vandq_s8(v63, v300);
      v306 = v302 + v298.i64[1];
      v307.i64[0] = 0xF000F000F000FLL;
      v307.i64[1] = 0xF000F000F000FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u16(v308, vaddq_s16(v72, v307)), v301);
      v310 = vmovl_u16(*v72.i8);
      v311 = vmovl_high_u16(v72);
      v312 = vpaddq_s32(vshlq_u32(vmovl_u16(*v309.i8), vtrn1q_s32(0, v310)), vshlq_u32(vmovl_high_u16(v309), vtrn1q_s32(0, v311)));
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
      v320 = (v318.i64[0] << v306) | v304;
      if (v319.i64[0] + (v306 & 0x3F) >= 0x40)
      {
        *(v230 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = vceqq_s16(v57, v74);
      v322 = vaddq_s16(v21, v305);
      v323 = v319.i64[0] + v306;
      v324 = v320 | (v318.i64[1] << v323);
      if ((v323 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v230 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v318.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vandq_s8(v63, v321);
      v326 = v323 + v319.i64[1];
      v327.i64[0] = 0xF000F000F000FLL;
      v327.i64[1] = 0xF000F000F000FLL;
      v328.i64[0] = -1;
      v328.i64[1] = -1;
      v329 = vandq_s8(vshlq_u16(v328, vaddq_s16(v73, v327)), v322);
      v330 = vmovl_u16(*v73.i8);
      v331 = vmovl_high_u16(v73);
      v332 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v330)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v331)));
      v333 = vpaddq_s32(v330, v331);
      v334.i64[0] = v332.u32[0];
      v334.i64[1] = v332.u32[1];
      v335 = v334;
      v334.i64[0] = v332.u32[2];
      v334.i64[1] = v332.u32[3];
      v336 = v334;
      v334.i64[0] = v333.u32[0];
      v334.i64[1] = v333.u32[1];
      v337 = v334;
      v334.i64[0] = v333.u32[2];
      v334.i64[1] = v333.u32[3];
      v338 = vpaddq_s64(vshlq_u64(v335, vzip1q_s64(0, v337)), vshlq_u64(v336, vzip1q_s64(0, v334)));
      v339 = vpaddq_s64(v337, v334);
      v340 = (v338.i64[0] << v326) | v324;
      if (v339.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v230 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v338.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = vaddq_s16(v22, v325);
      v342 = v339.i64[0] + v326;
      v343 = v340 | (v338.i64[1] << v342);
      if ((v342 & 0x3F) + v339.i64[1] >= 0x40)
      {
        *(v230 + ((v342 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v338.i64[1] >> -(v342 & 0x3F);
        if ((v342 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342 + v339.i64[1];
      v345.i64[0] = 0xF000F000F000FLL;
      v345.i64[1] = 0xF000F000F000FLL;
      v346.i64[0] = -1;
      v346.i64[1] = -1;
      v347 = vandq_s8(vshlq_u16(v346, vaddq_s16(v74, v345)), v341);
      v348 = vmovl_u16(*v74.i8);
      v349 = vmovl_high_u16(v74);
      v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v347.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v347), vtrn1q_s32(0, v349)));
      v351 = vpaddq_s32(v348, v349);
      v352.i64[0] = v350.u32[0];
      v352.i64[1] = v350.u32[1];
      v353 = v352;
      v352.i64[0] = v350.u32[2];
      v352.i64[1] = v350.u32[3];
      v354 = v352;
      v352.i64[0] = v351.u32[0];
      v352.i64[1] = v351.u32[1];
      v355 = v352;
      v352.i64[0] = v351.u32[2];
      v352.i64[1] = v351.u32[3];
      v356 = vpaddq_s64(vshlq_u64(v353, vzip1q_s64(0, v355)), vshlq_u64(v354, vzip1q_s64(0, v352)));
      v357 = vpaddq_s64(v355, v352);
      v358 = (v356.i64[0] << v344) | v343;
      if (v357.i64[0] + (v344 & 0x3F) > 0x3F)
      {
        *(v230 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        if ((v344 & 0x3F) != 0)
        {
          v358 = v356.i64[0] >> -(v344 & 0x3F);
        }

        else
        {
          v358 = 0;
        }
      }

      v359 = v357.i64[0] + v344;
      v360 = v358 | (v356.i64[1] << v359);
      if ((v359 & 0x3F) + v357.i64[1] >= 0x40)
      {
        *(v230 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v356.i64[1] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359 + v357.i64[1];
      if ((v361 & 0x3F) != 0)
      {
        *(v230 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      }

      result = (v361 - v231 + 7) >> 3;
      v233 = *a2 | (result - 1);
    }

    *a2 = v233;
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    result = 2;
    *a2 = 1;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6, int16x4_t a7, int16x4_t a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = a6;
  v15 = a5;
  v17 = a3;
  v19 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    *a4 = 0;
  }

  v20 = v15 - 2;
  if (v15 >= 3 && v14)
  {
    if (v14 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v14;
    }

    if (v20 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v15 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 1, v19 + 2, a2, v22, v21, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v23 = 2 * a2;
  v24 = v14 - 2;
  if (v15 && v14 >= 3)
  {
    if (v24 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v14 - 2;
    }

    if (v15 >= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 2, (v19 + v23), a2, v26, v25, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v15 < 3)
    {
      goto LABEL_38;
    }
  }

  if (v14 >= 3)
  {
    if (v24 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v14 - 2;
    }

    if (v20 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v15 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 3, (v19 + v23 + 32), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v29 = v15 - 4;
  if (v15 >= 5 && v14)
  {
    if (v14 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v14;
    }

    if (v29 >= 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 4, v19 + 4, a2, v31, v30, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v32 = v15 - 6;
  if (v15 >= 7 && v14)
  {
    if (v14 >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v14;
    }

    if (v32 >= 2)
    {
      v34 = 2;
    }

    else
    {
      v34 = v15 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 5, v19 + 6, a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[5] = 0;
    if (v15 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v14 >= 3)
  {
    if (v24 >= 2)
    {
      v35 = 2;
    }

    else
    {
      v35 = v14 - 2;
    }

    if (v29 >= 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = v15 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 6, (v19 + v23 + 64), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v15 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v14 < 3)
  {
    goto LABEL_79;
  }

  if (v24 >= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = v14 - 2;
  }

  if (v32 >= 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = v15 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 7, (v19 + v23 + 96), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = v29;
    v67 = 0;
    v68 = 0;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70.i64[0] = 0xF000F000F000FLL;
    v70.i64[1] = 0xF000F000F000FLL;
    v71 = vcgtq_s16(v62, v64);
    v72 = vandq_s8(vsubq_s16(vshlq_s16(v69, vsubq_s16(v70, v63)), v58), v71);
    v73.i64[0] = 0x8000800080008;
    v73.i64[1] = 0x8000800080008;
    v74.i64[0] = 0x3000300030003;
    v74.i64[1] = 0x3000300030003;
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v74), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v74), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v74), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v74), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v75.i64[0] = 0x4000400040004;
    v75.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v75, v83);
    v85 = vorrq_s8(v84, vorrq_s8(vandq_s8(vceqzq_s16(v65), v74), vandq_s8(v71, v73)));
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v371 = v72;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v93 = v66;
      v87.i16[0] = vmaxvq_s16(v90);
      v369 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v94 = vdupq_lane_s16(v87, 0);
      v95 = vdupq_lane_s16(*v88.i8, 0);
      v96 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v66), v89);
      v97.i64[0] = 0x8000800080008000;
      v97.i64[1] = 0x8000800080008000;
      v98 = vmaxq_s16(v94, v97);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v99 = vzip1q_s16(v94, v95);
      v100.i64[0] = 0x10001000100010;
      v100.i64[1] = 0x10001000100010;
      v101 = vsubq_s16(v100, vclsq_s16(v99));
      v102 = vbicq_s8(v101, vceqzq_s16(v99));
      v101.i16[0] = vmaxvq_s16(v91);
      v365 = v91;
      v16.i16[0] = vminvq_s16(v91);
      v103 = vdupq_lane_s16(*v101.i8, 0);
      v104 = vdupq_lane_s16(v16, 0);
      v105 = vpmaxq_s16(v102, v102);
      v106 = vmaxq_s16(v98, v103);
      v107 = vminq_s16(vminq_s16(v95, v89), v104);
      v108 = vzip1q_s16(v103, v104);
      v109 = vsubq_s16(v100, vclsq_s16(v108));
      v110 = vbicq_s8(v109, vceqzq_s16(v108));
      v111 = v28;
      v112 = vpmaxq_s16(v110, v110);
      v110.i16[0] = vmaxvq_s16(v92);
      v113 = vdupq_lane_s16(*v110.i8, 0);
      v109.i16[0] = vminvq_s16(v92);
      v114 = vdupq_lane_s16(*v109.i8, 0);
      v115 = vmaxq_s16(v106, v113);
      v116 = vminq_s16(v107, v114);
      v117 = vzip1q_s16(v113, v114);
      v118 = vsubq_s16(v100, vclsq_s16(v117));
      v119 = vbicq_s8(v118, vceqzq_s16(v117));
      v120 = v27;
      v121 = vpmaxq_s16(v119, v119);
      v119.i16[0] = vmaxvq_s16(v96);
      v118.i16[0] = vminvq_s16(v96);
      v122 = vdupq_lane_s16(*v119.i8, 0);
      v123 = vdupq_lane_s16(*v118.i8, 0);
      v124 = vmaxq_s16(v115, v122);
      v125 = vminq_s16(v116, v123);
      v126 = vzip1q_s16(v122, v123);
      v127 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v126)), vceqzq_s16(v126));
      v128 = vpmaxq_s16(v127, v127);
      v129 = vmaxq_s16(vmaxq_s16(v105, v112), vmaxq_s16(v121, v128));
      v130 = vclzq_s16(vsubq_s16(v124, v125));
      v131 = vsubq_s16(v100, v130);
      v132 = vcgtq_s16(v129, v131);
      v133 = vminq_s16(v131, v129);
      v129.i64[0] = 0x1000100010001;
      v129.i64[1] = 0x1000100010001;
      v134 = vmaxq_s16(v133, v129);
      v135.i64[0] = 0x3000300030003;
      v135.i64[1] = 0x3000300030003;
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v105), v135), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v112), v135), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v121), v135), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v128), v135), 0);
      v140 = vsubq_s16(v134, v136);
      v141 = vsubq_s16(v134, v137);
      v142 = vsubq_s16(v134, v138);
      v143 = vsubq_s16(v134, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137)));
      v136.i64[0] = 0x4000400040004;
      v136.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v136, v144);
      v146 = vbslq_s8(v132, vaddq_s16(v134, v100), v100);
      v147.i64[0] = 0x7000700070007;
      v147.i64[1] = 0x7000700070007;
      v148 = vandq_s8(v65, v71);
      v149 = vaddq_s16(v84, v84);
      v150 = vmulq_s16(v79, v147);
      v151 = vshlq_n_s16(vaddq_s16(vaddq_s16(v81, v80), v82), 3uLL);
      v152 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v148), v151), v149), vaddq_s16(vaddq_s16(vmlaq_s16(v146, v140, v147), vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL)), vaddq_s16(v145, v145))), 0);
      v148.i16[0] = vaddvq_s16(v152);
      v153 = v148.u16[0];
      if (v148.i16[0])
      {
        v154.i64[0] = 0x2000200020002;
        v154.i64[1] = 0x2000200020002;
        v155.i64[0] = 0xA000A000A000ALL;
        v155.i64[1] = 0xA000A000A000ALL;
        v156 = vbslq_s8(v132, v155, v154);
        v149.i64[0] = -1;
        v149.i64[1] = -1;
        v157 = vorrq_s8(v145, v156);
        v156.i64[0] = 0xF000F000F000FLL;
        v156.i64[1] = 0xF000F000F000FLL;
        v158 = vcltzq_s16(vshlq_n_s16(v152, 0xFuLL));
        v368 = vbslq_s8(v158, v369, v26);
        v370 = vbslq_s8(v158, v365, v120);
        v366 = vbslq_s8(v158, v92, v111);
        v93 = vbslq_s8(v158, v96, v93);
        v79 = vbslq_s8(v158, v140, v79);
        v80 = vbslq_s8(v158, v141, v80);
        v81 = vbslq_s8(v158, v142, v81);
        v82 = vbslq_s8(v158, v143, v82);
        v371 = vbslq_s8(v158, vandq_s8(vsubq_s16(vshlq_s16(v149, vsubq_s16(v156, v130)), v125), v132), v371);
        v65 = vbslq_s8(v158, v134, v65);
        v85 = vbslq_s8(v158, v157, v85);
        v150 = vmulq_s16(v79, v147);
        v151 = vshlq_n_s16(vaddq_s16(vaddq_s16(v81, v80), v82), 3uLL);
      }

      else
      {
        v368 = v26;
        v370 = v120;
        v366 = v111;
      }

      v66 = v93;
      v160.i64[0] = 0x7000700070007;
      v160.i64[1] = 0x7000700070007;
      v68 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v161 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v162 = v23;
      v162.i16[7] = v18.i16[7];
      v163 = vsubq_s16(v23, vqtbl1q_s8(v162, xmmword_29D2F0F10));
      v164 = v19;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v19, vqtbl1q_s8(v164, xmmword_29D2F0F20));
      v166 = v367;
      v166.i16[7] = v18.i16[7];
      v167 = 0x100010001000F0ELL;
      v168 = v161;
      v168.i16[0] = v161.i16[7];
      v168.i16[7] = v161.i16[0];
      v161.i16[0] = vmaxvq_s16(v168);
      v167.i16[0] = vminvq_s16(v168);
      v169 = vdupq_lane_s16(*v161.i8, 0);
      v170 = vdupq_lane_s16(v167, 0);
      v171 = vsubq_s16(v367, vqtbl1q_s8(v166, xmmword_29D2F0F30));
      v166.i64[0] = 0x8000800080008000;
      v166.i64[1] = 0x8000800080008000;
      v172 = vmaxq_s16(v169, v166);
      v173.i64[0] = 0x8000800080008000;
      v173.i64[1] = 0x8000800080008000;
      v174 = vminq_s16(v170, v173);
      v175 = vzip1q_s16(v169, v170);
      v176.i64[0] = 0x10001000100010;
      v176.i64[1] = 0x10001000100010;
      v177 = vsubq_s16(v176, vclsq_s16(v175));
      v178 = vbicq_s8(v177, vceqzq_s16(v175));
      v179 = vpmaxq_s16(v178, v178);
      v177.i16[0] = vmaxvq_s16(v163);
      v180 = vdupq_lane_s16(*v177.i8, 0);
      v149.i16[0] = vminvq_s16(v163);
      v181 = vdupq_lane_s16(*v149.i8, 0);
      v182 = vmaxq_s16(v172, v180);
      v183 = vminq_s16(v174, v181);
      v184 = vzip1q_s16(v180, v181);
      v185 = vsubq_s16(v176, vclsq_s16(v184));
      v186 = vbicq_s8(v185, vceqzq_s16(v184));
      v187 = vpmaxq_s16(v186, v186);
      v185.i16[0] = vmaxvq_s16(v165);
      v130.i16[0] = vminvq_s16(v165);
      v188 = vdupq_lane_s16(*v185.i8, 0);
      v189 = vdupq_lane_s16(*v130.i8, 0);
      v190 = vmaxq_s16(v182, v188);
      v191 = vminq_s16(v183, v189);
      v192 = vzip1q_s16(v188, v189);
      v193 = vsubq_s16(v176, vclsq_s16(v192));
      v194 = vbicq_s8(v193, vceqzq_s16(v192));
      v193.i16[0] = vmaxvq_s16(v171);
      v140.i16[0] = vminvq_s16(v171);
      v195 = vdupq_lane_s16(*v193.i8, 0);
      v196 = vdupq_lane_s16(*v140.i8, 0);
      v197 = vpmaxq_s16(v194, v194);
      v198 = vmaxq_s16(v190, v195);
      v199 = vminq_s16(v191, v196);
      v200 = vzip1q_s16(v195, v196);
      v201 = vbicq_s8(vsubq_s16(v176, vclsq_s16(v200)), vceqzq_s16(v200));
      v202 = vpmaxq_s16(v201, v201);
      v203 = vmaxq_s16(vmaxq_s16(v179, v187), vmaxq_s16(v197, v202));
      v204 = vclzq_s16(vsubq_s16(v198, v199));
      v205 = vsubq_s16(v176, v204);
      v206 = vcgtq_s16(v203, v205);
      v207 = vminq_s16(v205, v203);
      v208 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v179), v135), 0);
      v209 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v187), v135), 0);
      v210 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v197), v135), 0);
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v202), v135), 0);
      v212 = vsubq_s16(v207, v208);
      v213 = vsubq_s16(v207, v209);
      v214 = vsubq_s16(v207, v210);
      v215 = vsubq_s16(v207, v211);
      v216 = vceqq_s16(vaddq_s16(v211, v210), vnegq_s16(vaddq_s16(v208, v209)));
      v209.i64[0] = 0x4000400040004;
      v209.i64[1] = 0x4000400040004;
      v217 = vbicq_s8(v209, v216);
      v210.i64[0] = 0x8000800080008;
      v210.i64[1] = 0x8000800080008;
      v218 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v210)));
      v219 = vandq_s8(vaddq_s16(v85, v85), v210);
      v220.i64[0] = 0x2000200020002;
      v220.i64[1] = 0x2000200020002;
      v221 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v218, v219), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v135), v220), v176), v150)), v151), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v207, v206), v212, v160), vshlq_n_s16(vaddq_s16(vaddq_s16(v214, v213), v215), 3uLL)), vaddq_s16(v217, v217))), 0);
      v218.i16[0] = vaddvq_s16(v221);
      v222 = v218.u16[0];
      if (v218.i16[0])
      {
        v223.i64[0] = 0x9000900090009;
        v223.i64[1] = 0x9000900090009;
        v224.i64[0] = -1;
        v224.i64[1] = -1;
        v225 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v207), v220), vsubq_s16(vandq_s8(v206, v223), vmvnq_s8(v206))), v217);
        v226.i64[0] = 0xF000F000F000FLL;
        v226.i64[1] = 0xF000F000F000FLL;
        v227 = vandq_s8(vsubq_s16(vshlq_s16(v224, vsubq_s16(v226, v204)), v199), v206);
        v228 = vcltzq_s16(vshlq_n_s16(v221, 0xFuLL));
        v25.i16[0] = vbslq_s8(v228, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v228, v168, v368);
        v27 = vbslq_s8(v228, v163, v370);
        v28 = vbslq_s8(v228, v165, v366);
        v66 = vbslq_s8(v228, v171, v66);
        v79 = vbslq_s8(v228, v212, v79);
        v80 = vbslq_s8(v228, v213, v80);
        v81 = vbslq_s8(v228, v214, v81);
        v82 = vbslq_s8(v228, v215, v82);
        v72 = vbslq_s8(v228, v227, v371);
        v65 = vbslq_s8(v228, v207, v65);
        v85 = vbslq_s8(v228, v225, v85);
      }

      else
      {
        v28 = v366;
        v27 = v370;
        v72 = v371;
        v26 = v368;
      }

      if (v153)
      {
        v229 = v222 == 0;
      }

      else
      {
        v229 = 0;
      }

      v67 = v229;
    }

    v230.i64[0] = 0x8000800080008;
    v230.i64[1] = 0x8000800080008;
    v231 = vandq_s8(v85, v230);
    v232.i64[0] = 0x3000300030003;
    v232.i64[1] = 0x3000300030003;
    v233.i64[0] = 0x2000200020002;
    v233.i64[1] = 0x2000200020002;
    v234 = vceqq_s16(vandq_s8(v85, v232), v233);
    v233.i64[0] = 0x10001000100010;
    v233.i64[1] = 0x10001000100010;
    if (((7 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0] + ((2 * v85.i16[0]) & 8) + vbicq_s8(v65, vceqzq_s16(v231)).u16[0] + vandq_s8(v234, v233).u16[0]) - 235) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v235 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v236 = 8 * (a1 & 7);
      if (v236)
      {
        v237 = *v235 & ~(-1 << v236);
      }

      else
      {
        v237 = 0;
      }

      if (v65.i16[0])
      {
        v238 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v238 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v239 = (v238 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v240 = (v239 << v236) | v237;
      if (v236 >= 0x2A)
      {
        *v235 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v236 + 22;
      v242 = vsubq_s16(v65, v79);
      v243 = vsubq_s16(v65, v80);
      v244 = vsubq_s16(v65, v81);
      v245 = vsubq_s16(v65, v82);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      v242.i32[0] = vzip1q_s16(vzip1q_s8(v242, v243), vzip1q_s8(v244, v245)).u32[0];
      v244.i64[0] = 0x202020202020202;
      v244.i64[1] = 0x202020202020202;
      v246 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v244);
      v244.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v244.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[0] = -1;
      v245.i64[1] = -1;
      v247 = vandq_s8(vshlq_u8(v245, vorrq_s8(v246, v244)), v242.u32[0]);
      v248 = vmovl_u8(*v246.i8);
      v249 = vpaddq_s16(vshlq_u16(vmovl_u8(*v247.i8), vtrn1q_s16(0, v248)), vmovl_high_u8(v247));
      v250 = vpaddq_s16(v248, vmovl_high_u8(v246));
      v251 = vmovl_u16(*v250.i8);
      v252 = vmovl_high_u16(v250);
      v253 = vpaddq_s32(vshlq_u32(vmovl_u16(*v249.i8), vtrn1q_s32(0, v251)), vshlq_u32(vmovl_high_u16(v249), vtrn1q_s32(0, v252)));
      v254 = vpaddq_s32(v251, v252);
      v255.i64[0] = v253.u32[0];
      v255.i64[1] = v253.u32[1];
      v256 = v255;
      v255.i64[0] = v253.u32[2];
      v255.i64[1] = v253.u32[3];
      v257 = v255;
      v255.i64[0] = v254.u32[0];
      v255.i64[1] = v254.u32[1];
      v258 = v255;
      v255.i64[0] = v254.u32[2];
      v255.i64[1] = v254.u32[3];
      v259 = vpaddq_s64(vshlq_u64(v256, vzip1q_s64(0, v258)), vshlq_u64(v257, vzip1q_s64(0, v255)));
      v260 = vpaddq_s64(v258, v255);
      v261 = (v236 + 22) & 0x3E;
      v262 = (v259.i64[0] << v261) | v240;
      if ((v260.i64[0] + v261) >= 0x40)
      {
        *(v235 + ((v241 >> 3) & 8)) = v262;
        v262 = v259.i64[0] >> -v261;
      }

      v263 = v260.i64[0] + v241;
      v264 = v262 | (v259.i64[1] << v263);
      if ((v263 & 0x3F) + v260.i64[1] >= 0x40)
      {
        *(v235 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
        v264 = v259.i64[1] >> -(v263 & 0x3F);
        if ((v263 & 0x3F) == 0)
        {
          v264 = 0;
        }
      }

      v265 = vceqq_s16(v65, v79);
      v266 = v263 + v260.i64[1];
      v267.i64[0] = -1;
      v267.i64[1] = -1;
      v268 = vandq_s8(vextq_s8(vtstq_s16(v231, v231), 0, 0xEuLL), v65);
      v269.i64[0] = 0xF000F000F000FLL;
      v269.i64[1] = 0xF000F000F000FLL;
      v270 = vandq_s8(vshlq_u16(v267, vaddq_s16(v268, v269)), v72);
      v271 = vmovl_u16(*v268.i8);
      v272 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v271)), vmovl_high_u16(v270));
      v273 = vpaddq_s32(v271, vmovl_high_u16(v268));
      v274.i64[0] = v272.u32[0];
      v274.i64[1] = v272.u32[1];
      v275 = v274;
      v274.i64[0] = v272.u32[2];
      v274.i64[1] = v272.u32[3];
      v276 = v274;
      v274.i64[0] = v273.u32[0];
      v274.i64[1] = v273.u32[1];
      v277 = v274;
      v274.i64[0] = v273.u32[2];
      v274.i64[1] = v273.u32[3];
      v278 = vpaddq_s64(vshlq_u64(v275, vzip1q_s64(0, v277)), vshlq_u64(v276, vzip1q_s64(0, v274)));
      v279 = vpaddq_s64(v277, v274);
      v280 = (v278.i64[0] << v266) | v264;
      if (v279.i64[0] + (v266 & 0x3F) >= 0x40)
      {
        *(v235 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
        v280 = v278.i64[0] >> -(v266 & 0x3F);
        if ((v266 & 0x3F) == 0)
        {
          v280 = 0;
        }
      }

      v281 = vandq_s8(v72, v265);
      v282 = v279.i64[0] + v266;
      v283 = v280 | (v278.i64[1] << v282);
      if ((v282 & 0x3F) + v279.i64[1] >= 0x40)
      {
        *(v235 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
        v283 = v278.i64[1] >> -(v282 & 0x3F);
        if ((v282 & 0x3F) == 0)
        {
          v283 = 0;
        }
      }

      v284 = vceqq_s16(v65, v80);
      v285 = vaddq_s16(v281, v26);
      v286 = v282 + v279.i64[1];
      if (v67)
      {
        v283 |= v68 << v286;
        if ((v286 & 0x3F) >= 0x30)
        {
          *(v235 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
          v283 = v68 >> -(v286 & 0x3F);
        }

        v286 += 16;
      }

      v287 = vandq_s8(v72, v284);
      v288 = vextq_s8(0, v79, 0xEuLL);
      v289.i64[0] = 0xF000F000F000FLL;
      v289.i64[1] = 0xF000F000F000FLL;
      v290.i64[0] = -1;
      v290.i64[1] = -1;
      v291 = vandq_s8(vshlq_u16(v290, vaddq_s16(v288, v289)), v285);
      v292 = vmovl_u16(*v288.i8);
      v293 = vmovl_high_u16(v288);
      v294 = vpaddq_s32(vshlq_u32(vmovl_u16(*v291.i8), vtrn1q_s32(0, v292)), vshlq_u32(vmovl_high_u16(v291), vtrn1q_s32(0, v293)));
      v295 = vpaddq_s32(v292, v293);
      v296.i64[0] = v294.u32[0];
      v296.i64[1] = v294.u32[1];
      v297 = v296;
      v296.i64[0] = v294.u32[2];
      v296.i64[1] = v294.u32[3];
      v298 = v296;
      v296.i64[0] = v295.u32[0];
      v296.i64[1] = v295.u32[1];
      v299 = v296;
      v296.i64[0] = v295.u32[2];
      v296.i64[1] = v295.u32[3];
      v300 = vpaddq_s64(vshlq_u64(v297, vzip1q_s64(0, v299)), vshlq_u64(v298, vzip1q_s64(0, v296)));
      v301 = vpaddq_s64(v299, v296);
      v302 = (v300.i64[0] << v286) | v283;
      if (v301.i64[0] + (v286 & 0x3F) >= 0x40)
      {
        *(v235 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v300.i64[0] >> -(v286 & 0x3F);
        if ((v286 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = vceqq_s16(v65, v81);
      v304 = vaddq_s16(v27, v287);
      v305 = v301.i64[0] + v286;
      v306 = (v301.i64[0] + v286) & 0x3F;
      v307 = v302 | (v300.i64[1] << v305);
      if ((v305 & 0x3F) + v301.i64[1] >= 0x40)
      {
        *(v235 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v300.i64[1] >> -v306;
        if (!v306)
        {
          v307 = 0;
        }
      }

      v308 = vandq_s8(v72, v303);
      v309 = v305 + v301.i64[1];
      v310.i64[0] = 0xF000F000F000FLL;
      v310.i64[1] = 0xF000F000F000FLL;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vshlq_u16(v311, vaddq_s16(v80, v310)), v304);
      v313 = vmovl_u16(*v80.i8);
      v314 = vmovl_high_u16(v80);
      v315 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v313)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v314)));
      v316 = vpaddq_s32(v313, v314);
      v317.i64[0] = v315.u32[0];
      v317.i64[1] = v315.u32[1];
      v318 = v317;
      v317.i64[0] = v315.u32[2];
      v317.i64[1] = v315.u32[3];
      v319 = v317;
      v317.i64[0] = v316.u32[0];
      v317.i64[1] = v316.u32[1];
      v320 = v317;
      v317.i64[0] = v316.u32[2];
      v317.i64[1] = v316.u32[3];
      v321 = vpaddq_s64(vshlq_u64(v318, vzip1q_s64(0, v320)), vshlq_u64(v319, vzip1q_s64(0, v317)));
      v322 = vpaddq_s64(v320, v317);
      v323 = (v321.i64[0] << v309) | v307;
      if (v322.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v235 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v321.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = vceqq_s16(v65, v82);
      v325 = vaddq_s16(v28, v308);
      v326 = v322.i64[0] + v309;
      v327 = v323 | (v321.i64[1] << v326);
      if ((v326 & 0x3F) + v322.i64[1] >= 0x40)
      {
        *(v235 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v321.i64[1] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = vandq_s8(v72, v324);
      v329 = v326 + v322.i64[1];
      v330.i64[0] = 0xF000F000F000FLL;
      v330.i64[1] = 0xF000F000F000FLL;
      v331.i64[0] = -1;
      v331.i64[1] = -1;
      v332 = vandq_s8(vshlq_u16(v331, vaddq_s16(v81, v330)), v325);
      v333 = vmovl_u16(*v81.i8);
      v334 = vmovl_high_u16(v81);
      v335 = vpaddq_s32(vshlq_u32(vmovl_u16(*v332.i8), vtrn1q_s32(0, v333)), vshlq_u32(vmovl_high_u16(v332), vtrn1q_s32(0, v334)));
      v336 = vpaddq_s32(v333, v334);
      v337.i64[0] = v335.u32[0];
      v337.i64[1] = v335.u32[1];
      v338 = v337;
      v337.i64[0] = v335.u32[2];
      v337.i64[1] = v335.u32[3];
      v339 = v337;
      v337.i64[0] = v336.u32[0];
      v337.i64[1] = v336.u32[1];
      v340 = v337;
      v337.i64[0] = v336.u32[2];
      v337.i64[1] = v336.u32[3];
      v341 = vpaddq_s64(vshlq_u64(v338, vzip1q_s64(0, v340)), vshlq_u64(v339, vzip1q_s64(0, v337)));
      v342 = vpaddq_s64(v340, v337);
      v343 = (v341.i64[0] << v329) | v327;
      if (v342.i64[0] + (v329 & 0x3F) >= 0x40)
      {
        *(v235 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v341.i64[0] >> -(v329 & 0x3F);
        if ((v329 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = vaddq_s16(v66, v328);
      v345 = v342.i64[0] + v329;
      v346 = v343 | (v341.i64[1] << v345);
      if ((v345 & 0x3F) + v342.i64[1] >= 0x40)
      {
        *(v235 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v341.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v342.i64[1];
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v82, v348)), v344);
      v351 = vmovl_u16(*v82.i8);
      v352 = vmovl_high_u16(v82);
      v353 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v347) | v346;
      if (v360.i64[0] + (v347 & 0x3F) > 0x3F)
      {
        *(v235 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        if ((v347 & 0x3F) != 0)
        {
          v361 = v359.i64[0] >> -(v347 & 0x3F);
        }

        else
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v347;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v235 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      if ((v364 & 0x3F) != 0)
      {
        *(v235 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      }

      result = (v364 - v236 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v61 + 8;
        v22 = (a3 + 2);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = *(v23 - 1);
            v27 = *v23;
            v23 += 2;
            *(v24 - 4) = v26;
            *v24 = v27;
            v24 += 8;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 += 2;
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v61 + 8;
        v30 = (a3 + 2);
        v31 = &v61 + ((a5 >> 1) & 0x3F);
        do
        {
          v32 = v30;
          v33 = v29;
          v34 = a5 & 0x7E;
          do
          {
            v35 = *(v32 - 1);
            v36 = *v32;
            v32 += 2;
            *(v33 - 4) = v35;
            *v33 = v36;
            v33 += 8;
            v34 -= 2;
          }

          while (v34);
          v37 = (a3 + v28 * a4 + 2 * v19);
          v38 = v31;
          v39 = a5 - v19;
          do
          {
            v40 = *v37++;
            *v38 = v40;
            v38 = (v38 + 8);
            --v39;
          }

          while (v39);
          ++v28;
          v29 += 2;
          v30 = (v30 + a4);
          v31 = (v31 + 2);
        }

        while (v28 != a6);
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
      v12 = &v61 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11++;
        *(v12 - 1) = v14;
        *v12 = v15;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v61 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = *v18;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v122 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v8.i64[0] = 0x800000008000;
    v8.i64[1] = 0x800000008000;
    v9 = vdupq_n_s32(0x8001u);
    v6 = vbicq_s8(veorq_s8(*a2, v8), vceqq_s32(*a2, v9));
    v7 = vbicq_s8(veorq_s8(a2[1], v8), vceqq_s32(a2[1], v9));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v5.i64[0] = 0x800000008000;
    v5.i64[1] = 0x800000008000;
    v6 = veorq_s8(*a2, v5);
    v7 = veorq_s8(a2[1], v5);
LABEL_5:
    v120 = v6;
    v121 = v7;
    v10 = v6.i32[0];
    goto LABEL_7;
  }

  v11 = a2[1];
  v120 = *a2;
  v121 = v11;
  v10 = v120.i32[0];
LABEL_7:
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = a4 < 2 || a5 == 0;
  if (v13)
  {
    v14 = 0;
    v15 = v10;
    v16 = v10;
  }

  else
  {
    v15 = v120.u32[1];
    v14 = v120.i32[1] < v10;
    if (v120.i32[1] >= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v120.u32[1];
    }

    if (v10 > v120.i32[1])
    {
      v15 = v10;
    }
  }

  v17 = a5 < 2 || a4 == 0;
  v18 = v17;
  if (!v17)
  {
    if (v120.i32[2] < v16)
    {
      v14 = 2;
      v16 = v120.u32[2];
    }

    if (v15 <= v120.i32[2])
    {
      v15 = v120.u32[2];
    }
  }

  v19 = a5 >= 2 && a4 >= 2;
  v20 = !v19;
  if (v19)
  {
    if (v120.i32[3] < v16)
    {
      v14 = 3;
      v16 = v120.u32[3];
    }

    if (v15 <= v120.i32[3])
    {
      v15 = v120.u32[3];
    }
  }

  if (a5)
  {
    v21 = a4 >= 3;
  }

  else
  {
    v21 = 0;
  }

  v22 = !v21;
  if (v21)
  {
    if (v121.i32[0] < v16)
    {
      v14 = 4;
      v16 = v121.i32[0];
    }

    if (v15 <= v121.i32[0])
    {
      v15 = v121.i32[0];
    }
  }

  if (a5)
  {
    v23 = a4 >= 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v23)
  {
    if (v121.i32[1] < v16)
    {
      v14 = 5;
      v16 = v121.u32[1];
    }

    if (v15 <= v121.i32[1])
    {
      v15 = v121.u32[1];
    }
  }

  v25 = a5 >= 2 && a4 >= 3;
  v26 = !v25;
  if (v25)
  {
    if (v121.i32[2] < v16)
    {
      v14 = 6;
      v16 = v121.u32[2];
    }

    if (v15 <= v121.i32[2])
    {
      v15 = v121.u32[2];
    }
  }

  v27 = a5 >= 2 && a4 >= 4;
  v28 = !v27;
  if (v27)
  {
    if (v121.i32[3] < v16)
    {
      v14 = 7;
      v16 = v121.u32[3];
    }

    if (v15 <= v121.i32[3])
    {
      v15 = v121.u32[3];
    }
  }

  v29 = v15 - v16;
  v30 = __clz(v15 - v16);
  if (v30 == 31 && v15 == 0xFFFF)
  {
    v32 = 1;
  }

  else
  {
    v32 = 31 - v30;
  }

  v33 = v32 & ~(v32 >> 31);
  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (!(v16 >> 15) && v15 >= 0x8000)
    {
      v34 = kDQuadParamTable[10 * v33 + 488] == 0;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v32 > 12 || v34)
  {
    v36 = kDQuadParamTable[10 * v33 + 484];
    v37 = v34 ? 0 : -2;
    v38 = v36 >= 0x10 ? 0 : v16 & ~(-1 << (16 - v36));
    v39 = v38 + v37;
    if (v39 >= 1 && __clz(v39 + v29) < v30)
    {
      ++v33;
    }
  }

  v40 = v33;
  v41 = &kDQuadParamTable[10 * v33];
  v42 = *(v41 + 241);
  v43 = v41[485];
  v44 = v42 >> v43;
  if (a3 != 4)
  {
    v46 = v44 > 0x100 || v12;
    goto LABEL_151;
  }

  if (v12)
  {
    v45 = 0;
    if (v13)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v45 = (~v10 & 0x7C00) == 0 || v10 == 0x8000;
    if (v13)
    {
      goto LABEL_135;
    }
  }

  if ((~v120.i32[1] & 0x7C00) == 0 || v120.i32[1] == 0x8000)
  {
    v45 = 1;
  }

LABEL_135:
  if (v18)
  {
    if (v20)
    {
      goto LABEL_137;
    }
  }

  else
  {
    if ((~v120.i32[2] & 0x7C00) == 0 || v120.i32[2] == 0x8000)
    {
      v45 = 1;
    }

    if (v20)
    {
LABEL_137:
      if (v22)
      {
        goto LABEL_138;
      }

      goto LABEL_247;
    }
  }

  if ((~v120.i32[3] & 0x7C00) == 0 || v120.i32[3] == 0x8000)
  {
    v45 = 1;
  }

  if (v22)
  {
LABEL_138:
    if (v24)
    {
      goto LABEL_139;
    }

    goto LABEL_254;
  }

LABEL_247:
  if ((~v121.i32[0] & 0x7C00) == 0 || v121.i32[0] == 0x8000)
  {
    v45 = 1;
  }

  if (v24)
  {
LABEL_139:
    if (v26)
    {
      goto LABEL_140;
    }

LABEL_261:
    if ((~v121.i32[2] & 0x7C00) == 0 || v121.i32[2] == 0x8000)
    {
      v45 = 1;
    }

    if (v28)
    {
      goto LABEL_147;
    }

    goto LABEL_141;
  }

LABEL_254:
  if ((~v121.i32[1] & 0x7C00) == 0 || v121.i32[1] == 0x8000)
  {
    v45 = 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_261;
  }

LABEL_140:
  if ((v28 & 1) == 0)
  {
LABEL_141:
    if ((~v121.i32[3] & 0x7C00) == 0 || v121.i32[3] == 0x8000)
    {
      v45 = 1;
    }
  }

LABEL_147:
  v50 = v44 > 0x100 || v12;
  v46 = v50 | v45;
LABEL_151:
  v51 = 0;
  v52 = 0;
  v53 = kDQuadParamTable[10 * v40 + 484];
  if (v53 >= 0x10)
  {
    v54 = 16;
  }

  else
  {
    v54 = v53;
  }

  v55 = (-1 << (16 - v54)) & v16;
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  if (v43 >= 0x10)
  {
    v56 = 16;
  }

  else
  {
    v56 = v43;
  }

  v57 = v42 >> v56;
  v58 = v10 - v55;
  if (v12)
  {
    v58 = 0;
  }

  v17 = !v13;
  v59 = v120.i32[1] - v55;
  if (!v17)
  {
    v59 = 0;
  }

  v119[0] = v58;
  v119[1] = v59;
  v60 = v120.i32[2] - v55;
  if (v18)
  {
    v60 = 0;
  }

  v61 = v120.i32[3] - v55;
  if (v20)
  {
    v61 = 0;
  }

  v119[2] = v60;
  v119[3] = v61;
  v62 = v121.i32[0] - v55;
  if (v22)
  {
    v62 = 0;
  }

  v63 = v121.i32[1] - v55;
  if (v24)
  {
    v63 = 0;
  }

  v64 = v121.i32[2] - v55;
  if (v26)
  {
    v64 = 0;
  }

  v119[4] = v62;
  v119[5] = v63;
  if (v28)
  {
    v65 = 0;
  }

  else
  {
    v65 = v121.i32[3] - v55;
  }

  if (v57 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v57;
  }

  v119[6] = v64;
  v119[7] = v65;
  v67 = v14;
  v68 = 4 * v14;
  v69 = &byte_29D2F3081;
  do
  {
    if (v68 != v51)
    {
      if (v43)
      {
        v70 = v119[v51 / 4] / v66;
      }

      else
      {
        LODWORD(v70) = 0;
      }

      *(v117 + v52) = v70;
      if (v57 >= 2)
      {
        v71 = v119[v51 / 4];
        if (v71)
        {
          if (v71 / v66 * v66 == v71 && ((v71 / v66) & 1) != 0)
          {
            if (v55 || v70 != 1)
            {
              if ((a3 | 2) != 3 || (v73 = v120.u32[v51 / 4], v73 != 0x8000) && ((a3 | 2) != 3 || v66 + 0x8000 != v73))
              {
                LODWORD(v70) = v70 - 1;
                *(v117 + v52) = v70;
              }
            }

            else
            {
              LODWORD(v70) = 1;
            }
          }
        }
      }

      if (v70 >> v56 || v120.i32[v51 / 4] == 0xFFFF)
      {
        *(v117 + v52) = ~(-1 << v56);
      }

      if (*v69 >= a5 || *(v69 - 1) >= a4)
      {
        *(v117 + v52) = 0;
      }

      ++v52;
    }

    v51 += 4;
    v69 += 2;
  }

  while (v51 != 32);
  v74 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v75 = 8 * (a1 & 7);
  *a1 = 0;
  if ((v46 & 1) == 0)
  {
    v86 = 0;
    *v74 |= (v40 & 0xF) << v75;
    v87 = v75 | 4;
    if (v53 && (v54 - v75 + v87) <= 0x40)
    {
      v86 = 0;
      v88 = 0;
      v89 = v54;
      do
      {
        v90 = 64 - v87;
        if (64 - v87 >= v89)
        {
          v90 = v89;
        }

        v74[v86] |= (((v55 >> (16 - v54)) >> v88) & ~(-1 << v90)) << v87;
        v88 += v90;
        v91 = v90 + v87;
        v86 += v91 >> 6;
        v87 = v91 & 0x3F;
        v89 -= v90;
      }

      while (v89);
    }

    if (v43)
    {
      if ((v87 - v75 + (v86 << 6) + 3) <= 0x40)
      {
        v92 = 0;
        v93 = 3;
        do
        {
          v94 = 64 - v87;
          if (64 - v87 >= v93)
          {
            v94 = v93;
          }

          v74[v86] |= ((v67 >> v92) & ~(-1 << v94)) << v87;
          v92 += v94;
          v95 = v94 + v87;
          v86 += v95 >> 6;
          v87 = v95 & 0x3F;
          v93 -= v94;
        }

        while (v93);
      }

      v96 = v54 + 7;
    }

    else
    {
      v96 = v54 + 4;
    }

    v102 = 64 - v96;
    v103 = (147 * (64 - v96)) >> 10;
    v104 = -7 * v103 + v102;
    if ((v104 - 257) >= 0xFFFFFF00 && v87 - v75 + (v86 << 6) + v104 <= 0x40)
    {
      do
      {
        v105 = 64 - v87;
        if (64 - v87 >= v104)
        {
          v105 = v104;
        }

        v106 = v105 + v87;
        v86 += v106 >> 6;
        v87 = v106 & 0x3F;
        v104 -= v105;
      }

      while (v104);
    }

    v107 = 0;
    while (!v43)
    {
      v113 = v103;
      if (v103)
      {
        goto LABEL_286;
      }

LABEL_276:
      if (++v107 == 7)
      {
        return v46 & 1;
      }
    }

    if ((v56 - v75 + v87 + (v86 << 6)) <= 0x40)
    {
      v108 = 0;
      v109 = *(v117 + v107);
      v110 = v56;
      do
      {
        v111 = 64 - v87;
        if (64 - v87 >= v110)
        {
          v111 = v110;
        }

        v74[v86] |= ((v109 >> v108) & ~(-1 << v111)) << v87;
        v108 += v111;
        v112 = v111 + v87;
        v86 += v112 >> 6;
        v87 = v112 & 0x3F;
        v110 -= v111;
      }

      while (v110);
    }

    v113 = v103 - v56;
    if (v103 == v56)
    {
      goto LABEL_276;
    }

LABEL_286:
    if (v113 <= 0x100 && v87 - v75 + (v86 << 6) + v113 <= 0x40)
    {
      do
      {
        v114 = 64 - v87;
        if (64 - v87 >= v113)
        {
          v114 = v113;
        }

        v115 = v114 + v87;
        v86 += v115 >> 6;
        v87 = v115 & 0x3F;
        v113 -= v114;
      }

      while (v113);
    }

    goto LABEL_276;
  }

  v76 = 0;
  v77 = 0;
  v78 = 8 * (a1 & 7);
  do
  {
    v79 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v76;
    if (v79[1] >= a5 || *v79 >= a4)
    {
      v81 = 0;
    }

    else
    {
      v81 = v120.u32[v76] >> 8;
    }

    if ((v78 - v75 + (v77 << 6) - 57) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v82 = 0;
      v83 = 8;
      do
      {
        v84 = 64 - v78;
        if (64 - v78 >= v83)
        {
          v84 = v83;
        }

        v74[v77] |= ((v81 >> v82) & ~(-1 << v84)) << v78;
        v82 += v84;
        v85 = v84 + v78;
        v77 += v85 >> 6;
        v78 = v85 & 0x3F;
        v83 -= v84;
      }

      while (v83);
    }

    ++v76;
  }

  while (v76 != 8);
  return v46 & 1;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
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

  v192 = v9;
  v193 = v8;
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
    v130 = 8 * (&v191 & 7);
    v131 = 16;
    do
    {
      v132 = 64 - v130;
      if (64 - v130 >= v131)
      {
        v132 = v131;
      }

      *&v190[8 * v128] |= ((0xFFFFFFFFFFFFFFFFLL >> v129) & ~(-1 << v132)) << v130;
      v129 += v132;
      v133 = v132 + v130;
      v128 += v133 >> 6;
      v130 = v133 & 0x3F;
      v131 -= v132;
    }

    while (v131);
    v127 = 0;
    v134 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v135 = (a1->i64 + 2 * a2);
    *v134 = 0;
    v134[1] = 0;
    v136 = (a1->i64 + 2 * a2 + a2);
    *v135 = 0;
    v135[1] = 0;
    *v136 = 0;
    v136[1] = 0;
  }

  else
  {
    v138 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v139 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
    v140.i64[0] = v138.u32[0];
    v140.i64[1] = v138.u32[1];
    v141 = v140;
    v140.i64[0] = v139.u32[0];
    v140.i64[1] = v139.u32[1];
    v142 = vshlq_u64(v54, vnegq_s64(v141));
    v143 = vshlq_u64(v80, vnegq_s64(v140));
    v144 = vuzp1q_s32(vzip1q_s64(v54, v142), vzip2q_s64(v54, v142));
    v145 = vuzp1q_s32(vzip1q_s64(v80, v143), vzip2q_s64(v80, v143));
    v146 = vshlq_u32(v144, vnegq_s32((*&v55 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
    v147 = vshlq_u32(v145, vnegq_s32(vandq_s8(v72, v84)));
    v148 = vzip2q_s32(v144, v146);
    v149 = vzip1q_s32(v144, v146);
    v146.i64[0] = 0x10001000100010;
    v146.i64[1] = 0x10001000100010;
    v150 = vzip2q_s32(v145, v147);
    v151 = vzip1q_s32(v145, v147);
    v147.i64[0] = 0x10001000100010;
    v147.i64[1] = 0x10001000100010;
    v152 = v13 >> 6;
    v153 = vuzp1q_s16(v149, v148);
    v148.i64[0] = 0xF000F000F000FLL;
    v148.i64[1] = 0xF000F000F000FLL;
    v154 = vuzp1q_s16(v151, v150);
    v150.i64[0] = 0xF000F000F000FLL;
    v150.i64[1] = 0xF000F000F000FLL;
    v155 = vzip1_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
    v156.i64[0] = 0xFFFF0000FFFFLL;
    v156.i64[1] = 0xFFFF0000FFFFLL;
    v157.i64[0] = 0xF000F000F000FLL;
    v157.i64[1] = 0xF000F000F000FLL;
    v158.i64[0] = 0x10001000100010;
    v158.i64[1] = 0x10001000100010;
    v140.i64[0] = v155.u32[0];
    v140.i64[1] = v155.u32[1];
    v159 = vshlq_s16(vshlq_s16(v153, vsubq_s16(v146, v55)), vaddq_s16(v55, v148));
    v160 = vshlq_s16(vshlq_s16(v154, vsubq_s16(v147, v72)), vaddq_s16(v72, v150));
    v161 = vshlq_s16(vshlq_s16(v71, vsubq_s16(v147, v46)), vaddq_s16(v46, v150));
    v162 = vshlq_s16(vshlq_s16(v112, vsubq_s16(v147, v47)), vaddq_s16(v47, v150));
    v163 = vshlq_u64(v126, vnegq_s64(v140));
    v164 = vuzp1q_s32(vzip1q_s64(v126, v163), vzip2q_s64(v126, v163));
    v165 = vshlq_u32(v164, vnegq_s32(vandq_s8(v48, v156)));
    v166 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v164, v165), vzip2q_s32(v164, v165)), vsubq_s16(v158, v48)), vaddq_s16(v48, v157));
    if (v64 == 2)
    {
      v167.i64[0] = 0xFFFFFFFF00000000;
      v167.i64[1] = 0xFFFFFFFF00000000;
      v168 = vmlal_s8(vandq_s8(vdupq_n_s16(v68), v167), vdup_n_s8(v66), 0x302030201000100);
      v160 = vaddq_s16(v160, v168);
      v161 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v68), v168), v161);
      v162 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66), v168), v162);
      v166 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v66 + 2 * v68), v168), v166);
    }

    v169 = vdupq_n_s16(v152);
    v170 = vaddq_s16(vandq_s8(v159, v49), v160);
    v171 = vdupq_lane_s16(*v159.i8, 0);
    v172 = vsubq_s16(v170, vandq_s8(v171, v49));
    v173 = vsubq_s16(v161, vandq_s8(v171, v50));
    v174 = vsubq_s16(v162, vandq_s8(v171, v51));
    v175 = vsubq_s16(v166, vandq_s8(v171, v52));
    v176.i64[0] = 0x1000100010001;
    v176.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16((*&v16 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v176)))
    {
      v177 = *&v16 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
      v178 = vnegq_s16(v177);
      v179 = v172;
      v179.i16[0] = v172.i16[7];
      v179.i16[7] = v172.i16[0];
      v180 = vorrq_s8(vandq_s8(v179, v178), vandq_s8(v172, vceqzq_s16(v177)));
      v181 = vaddq_s16(vandq_s8(vqtbl1q_s8(v180, xmmword_29D2F0E60), v178), v180);
      v172 = vaddq_s16(vandq_s8(vqtbl1q_s8(v181, xmmword_29D2F0E70), v178), v181);
      v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v173, xmmword_29D2F0E80), v178), v173);
      v173 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_29D2F0E90), v178), v182);
      v183 = vaddq_s16(vandq_s8(vqtbl1q_s8(v174, xmmword_29D2F0EA0), v178), v174);
      v174 = vaddq_s16(vandq_s8(vqtbl1q_s8(v183, xmmword_29D2F0EB0), v178), v183);
      v184 = vaddq_s16(vandq_s8(vqtbl1q_s8(v175, xmmword_29D2F0EC0), v178), v175);
      v175 = vaddq_s16(vandq_s8(vqtbl1q_s8(v184, xmmword_29D2F0ED0), v178), v184);
    }

    v185 = vaddq_s16(v169, v172);
    v186 = vaddq_s16(v173, v169);
    v187 = vaddq_s16(v174, v169);
    v188 = vaddq_s16(v175, v169);
    *a1 = vuzp1q_s32(v185, v187);
    *(a1 + a2) = vuzp2q_s32(v185, v187);
    v189 = (a1 + 2 * a2);
    *v189 = vuzp1q_s32(v186, v188);
    *(v189 + a2) = vuzp2q_s32(v186, v188);
  }

  return v127;
}

int16x8_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v39 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v35, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v35, a5);
  }

  v33 = v35;
  v29 = v36;
  v31 = v37;
  v27 = v38;
  v10 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v35, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v35, a5);
  }

  v30 = v35;
  v34 = v36;
  v28 = v37;
  v32 = v38;
  v11 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v35, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v35, a5);
  }

  v26 = v35;
  v24 = v36;
  v25 = v37;
  v23 = v38;
  v12 = a3 + 24;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v35, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v35, a5);
  }

  v13.i64[0] = v24;
  v13.i64[1] = v23;
  v14.i64[0] = v29;
  v15.i64[0] = v26;
  v14.i64[1] = v27;
  v16 = vuzp1q_s16(v14, v13);
  v15.i64[1] = v25;
  v17.i64[0] = v33;
  v17.i64[1] = v31;
  v18 = vuzp1q_s16(v17, v15);
  v13.i64[0] = v35;
  v15.i64[0] = v36;
  v19 = v37;
  v20 = v38;
  *a1 = v18;
  *(a1 + a2) = v16;
  v21 = (a1 + a2 + a2);
  v13.i64[1] = v19;
  v16.i64[0] = v30;
  v16.i64[1] = v28;
  *v21 = vuzp1q_s16(v16, v13);
  v15.i64[1] = v20;
  v16.i64[0] = v34;
  v16.i64[1] = v32;
  result = vuzp1q_s16(v16, v15);
  *(v21 + a2) = result;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 + 8) >> 6;
    v6 = (v4 + 8) & 0x38;
    *a2 = (*v3 >> v4) << 8;
    v7 = v6 - v4;
    if (v6 - v4 + ((v4 + 8) & 0x40uLL) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v21 = v3[v5];
      v5 += (v6 + 8) >> 6;
      v22 = v21 >> v6;
      v6 = (v6 + 8) & 0x38;
      v8 = v22 << 8;
      v7 = v6 - v4;
    }

    else
    {
      v8 = 0;
    }

    a2[1] = v8;
    if (v7 + (v5 << 6) - 57 > 0xFFFFFFFFFFFFFFBELL)
    {
      v23 = (v6 + 8) & 0x38;
      v24 = v5 + ((v6 + 8) >> 6);
      a2[2] = (v3[v5] >> v6) << 8;
      if (v23 - v4 + (v24 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
      {
        v27 = 0;
        v28 = 0;
        v29 = 8;
        do
        {
          v30 = 64 - v23;
          if (64 - v23 >= v29)
          {
            v30 = v29;
          }

          result = ((v3[v24] >> v23) & ~(-1 << v30)) << v28;
          v27 |= result;
          v28 += v30;
          v31 = v30 + v23;
          v24 += v31 >> 6;
          v23 = v31 & 0x3F;
          v29 -= v30;
        }

        while (v29);
        a2[3] = v27 << 8;
        if (v23 - v4 + (v24 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
        {
          v32 = 0;
          v33 = 0;
          v34 = 8;
          do
          {
            v35 = 64 - v23;
            if (64 - v23 >= v34)
            {
              v35 = v34;
            }

            result = ((v3[v24] >> v23) & ~(-1 << v35)) << v33;
            v32 |= result;
            v33 += v35;
            v36 = v35 + v23;
            v24 += v36 >> 6;
            v23 = v36 & 0x3F;
            v34 -= v35;
          }

          while (v34);
          a2[4] = v32 << 8;
          if (v23 - v4 + (v24 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
          {
            v37 = 0;
            v38 = 0;
            v39 = 8;
            do
            {
              v40 = 64 - v23;
              if (64 - v23 >= v39)
              {
                v40 = v39;
              }

              result = ((v3[v24] >> v23) & ~(-1 << v40)) << v38;
              v37 |= result;
              v38 += v40;
              v41 = v40 + v23;
              v24 += v41 >> 6;
              v23 = v41 & 0x3F;
              v39 -= v40;
            }

            while (v39);
            a2[5] = v37 << 8;
            if (v23 - v4 + (v24 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
            {
              v42 = 0;
              v43 = 0;
              v44 = 8;
              do
              {
                v45 = 64 - v23;
                if (64 - v23 >= v44)
                {
                  v45 = v44;
                }

                result = ((v3[v24] >> v23) & ~(-1 << v45)) << v43;
                v42 |= result;
                v43 += v45;
                v46 = v45 + v23;
                v24 += v46 >> 6;
                v23 = v46 & 0x3F;
                v44 -= v45;
              }

              while (v44);
              v47 = v23 - v4 + (v24 << 6) - 57;
              a2[6] = v42 << 8;
              v26 = a2 + 7;
              if (v47 >= 0xFFFFFFFFFFFFFFBFLL)
              {
                v48 = 0;
                v49 = 0;
                v50 = 8;
                do
                {
                  v51 = 64 - v23;
                  if (64 - v23 >= v50)
                  {
                    v51 = v50;
                  }

                  result = ((v3[v24] >> v23) & ~(-1 << v51)) << v49;
                  v48 |= result;
                  v49 += v51;
                  v52 = v51 + v23;
                  v24 += v52 >> 6;
                  v23 = v52 & 0x3F;
                  v50 -= v51;
                }

                while (v50);
                v25 = v48 << 8;
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_29;
            }

LABEL_28:
            v25 = 0;
            a2[6] = 0;
            v26 = a2 + 7;
LABEL_29:
            *v26 = v25;
            return result;
          }

LABEL_27:
          a2[5] = 0;
          goto LABEL_28;
        }

LABEL_26:
        a2[4] = 0;
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  result = 8 * (result & 7);
  do
  {
    if (result - v4 + (v10 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = 64 - result;
        if (64 - result >= v15)
        {
          v16 = v15;
        }

        v13 |= ((v3[v10] >> result) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + result;
        v10 += v17 >> 6;
        result = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
    }

    v18 = v13 << 8;
    if (v18 != 0x8000 || v11 != 1)
    {
      v20 = v18 - (v13 & 1) + 128;
      if (v18 == 65280)
      {
        v20 = 0xFFFF;
      }

      if (v18)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }
    }

    a2[v9++] = v18 ^ v12;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, _DWORD *a2, int a3)
{
  v147 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = v4 | 4;
  v6 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 0xFLL;
  v7 = &kDQuadParamTable[10 * v6];
  v8 = v7[484];
  v9 = v7[485];
  if (v8 >= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v8;
  }

  if (v9 >= 0x10)
  {
    v11 = 16;
  }

  else
  {
    v11 = v9;
  }

  v12 = 16 - v10;
  if (v8)
  {
    if ((v10 - v4 + v5) <= 0x40)
    {
      v14 = 0;
      v13 = 0;
      v19 = 0;
      v20 = v10;
      do
      {
        v21 = 64 - v5;
        if (64 - v5 >= v20)
        {
          v21 = v20;
        }

        v14 |= ((*(v3 + 8 * v13) >> v5) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v5;
        v13 += v22 >> 6;
        v5 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = 57 - v10;
    v16 = (v14 << v12);
    if (v9)
    {
      goto LABEL_17;
    }

LABEL_11:
    v17 = 0;
    v18 = 0;
    v143 = 0;
    v144 = 0;
    v146 = 0;
    v145 = 0;
    goto LABEL_66;
  }

  v13 = 0;
  v15 = 57;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_17:
  if ((v5 - v4 + (v13 << 6) + 3) <= 0x40)
  {
    LODWORD(v17) = 0;
    v23 = 0;
    v24 = 3;
    do
    {
      v25 = 64 - v5;
      if (64 - v5 >= v24)
      {
        v25 = v24;
      }

      v17 = v17 | (((*(v3 + 8 * v13) >> v5) & ~(-1 << v25)) << v23);
      v23 += v25;
      v26 = v25 + v5;
      v13 += v26 >> 6;
      v5 = v26 & 0x3F;
      v24 -= v25;
    }

    while (v24);
  }

  else
  {
    v17 = 0;
  }

  v27 = (37 * v15) >> 8;
  v28 = v11 - v4;
  v29 = (v5 | (v13 << 6)) + -7 * v27 + v15;
  v30 = v29 & 0x3F;
  v31 = v28 + v30 + (v29 & 0xFFFFFFFFFFFFFFC0);
  v143 = 0;
  v144 = 0;
  v146 = 0;
  v145 = 0;
  v32 = v29 >> 6;
  if (v31 <= 0x40)
  {
    v18 = 0;
    v33 = 0;
    v34 = v11;
    do
    {
      v35 = 64 - v30;
      if (64 - v30 >= v34)
      {
        v35 = v34;
      }

      v18 |= ((*(v3 + 8 * v32) >> v30) & ~(-1 << v35)) << v33;
      v33 += v35;
      v36 = v35 + v30;
      v32 += v36 >> 6;
      v30 = v36 & 0x3F;
      v34 -= v35;
    }

    while (v34);
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v143) = v18;
  v37 = v30 | (v32 << 6);
  v38 = v27 - v11;
  v39 = v37 + v38;
  v40 = (v37 + v38) & 0x3F;
  v41 = (v37 + v38) >> 6;
  if (v28 + v40 + (v39 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v42 = 0;
    v43 = 0;
    v44 = v11;
    do
    {
      v45 = 64 - v40;
      if (64 - v40 >= v44)
      {
        v45 = v44;
      }

      v42 |= ((*(v3 + 8 * v41) >> v40) & ~(-1 << v45)) << v43;
      v43 += v45;
      v46 = v45 + v40;
      v41 += v46 >> 6;
      v40 = v46 & 0x3F;
      v44 -= v45;
    }

    while (v44);
  }

  else
  {
    v42 = 0;
  }

  HIDWORD(v143) = v42;
  v47 = (v40 | (v41 << 6)) + v38;
  v48 = v47 & 0x3F;
  v49 = v47 >> 6;
  if (v28 + v48 + (v47 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v50 = 0;
    v51 = 0;
    v52 = v11;
    do
    {
      v53 = 64 - v48;
      if (64 - v48 >= v52)
      {
        v53 = v52;
      }

      v50 |= ((*(v3 + 8 * v49) >> v48) & ~(-1 << v53)) << v51;
      v51 += v53;
      v54 = v53 + v48;
      v49 += v54 >> 6;
      v48 = v54 & 0x3F;
      v52 -= v53;
    }

    while (v52);
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v144) = v50;
  v55 = (v48 | (v49 << 6)) + v38;
  v56 = v55 & 0x3F;
  v57 = v55 >> 6;
  if (v28 + v56 + (v55 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v58 = 0;
    v59 = 0;
    v60 = v11;
    do
    {
      v61 = 64 - v56;
      if (64 - v56 >= v60)
      {
        v61 = v60;
      }

      v58 |= ((*(v3 + 8 * v57) >> v56) & ~(-1 << v61)) << v59;
      v59 += v61;
      v62 = v61 + v56;
      v57 += v62 >> 6;
      v56 = v62 & 0x3F;
      v60 -= v61;
    }

    while (v60);
  }

  else
  {
    v58 = 0;
  }

  HIDWORD(v144) = v58;
  v63 = (v56 | (v57 << 6)) + v38;
  v64 = v63 & 0x3F;
  v65 = v63 >> 6;
  if (v28 + v64 + (v63 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v66 = 0;
    v67 = 0;
    v68 = v11;
    do
    {
      v69 = 64 - v64;
      if (64 - v64 >= v68)
      {
        v69 = v68;
      }

      v66 |= ((*(v3 + 8 * v65) >> v64) & ~(-1 << v69)) << v67;
      v67 += v69;
      v70 = v69 + v64;
      v65 += v70 >> 6;
      v64 = v70 & 0x3F;
      v68 -= v69;
    }

    while (v68);
  }

  else
  {
    v66 = 0;
  }

  LODWORD(v145) = v66;
  v71 = (v64 | (v65 << 6)) + v38;
  v72 = v71 & 0x3F;
  v73 = v71 >> 6;
  if (v28 + v72 + (v71 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v74 = 0;
    v75 = 0;
    v76 = v11;
    do
    {
      v77 = 64 - v72;
      if (64 - v72 >= v76)
      {
        v77 = v76;
      }

      v74 |= ((*(v3 + 8 * v73) >> v72) & ~(-1 << v77)) << v75;
      v75 += v77;
      v78 = v77 + v72;
      v73 += v78 >> 6;
      v72 = v78 & 0x3F;
      v76 -= v77;
    }

    while (v76);
  }

  else
  {
    v74 = 0;
  }

  HIDWORD(v145) = v74;
  v79 = (v72 | (v73 << 6)) + v38;
  v80 = v79 & 0x3F;
  if (v28 + v80 + (v79 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v81 = 0;
    v82 = 0;
    v83 = v79 >> 6;
    v84 = v11;
    do
    {
      v85 = 64 - v80;
      if (64 - v80 >= v84)
      {
        v85 = v84;
      }

      v81 |= ((*(v3 + 8 * v83) >> v80) & ~(-1 << v85)) << v82;
      v82 += v85;
      v86 = v85 + v80;
      v83 += v86 >> 6;
      v80 = v86 & 0x3F;
      v84 -= v85;
    }

    while (v84);
  }

  else
  {
    v81 = 0;
  }

  v146 = v81;
LABEL_66:
  v87 = *&kDQuadParamTable[10 * v6 + 482];
  v88 = v87 >> v11;
  if (v87 >> v11 <= 1)
  {
    v88 = 1;
  }

  v89 = v88 >> 1;
  v90 = (1 << v12) >> 1;
  if (v88 >> 1 < v90)
  {
    v90 = v88 >> 1;
  }

  result = (0x8000 - v16) / v88;
  v92 = v87 + v16;
  v93 = -1 << v11;
  if (v16)
  {
    v94 = v90;
  }

  else
  {
    v94 = 0;
  }

  v95 = v16 == 0x8000;
  if (!v9)
  {
    v98 = 0;
    v97 = 0;
    v96 = v88 > 0x8000 - v16;
    goto LABEL_84;
  }

  if (!v17)
  {
    v98 = 0;
    v97 = v94;
    v96 = v16 == 0x8000;
    goto LABEL_84;
  }

  v96 = result == v18;
  if (v16 | v18)
  {
    if (v92 >= 0x10000 && (v93 ^ v18) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v98 = 1;
      v97 = 0xFFFFLL;
      goto LABEL_84;
    }

    v97 = v89 + v88 * v18;
  }

  else
  {
    v97 = 0;
  }

  v98 = 1;
LABEL_84:
  v99 = a3 & 0xFFFFFFFD;
  v100 = v97 + v16;
  if (a3 == 4)
  {
    v101 = v100 & 0xFFFFFFFFFFFFFE00;
    if ((v100 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v100 = 31743;
    }

    else if (v101 == 32256)
    {
      v100 = 0x8000;
    }

    else if (v101 == 64512)
    {
      v100 = 64511;
    }
  }

  if (v100 >= 0xFFFF)
  {
    LODWORD(v100) = 0xFFFF;
  }

  if (v96)
  {
    v102 = 0;
  }

  else
  {
    v102 = v100 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v102 = v100;
  }

  *a2 = v102;
  if (v9)
  {
    if (v17 == 1)
    {
      v103 = v94;
      v104 = v16 == 0x8000;
    }

    else
    {
      v105 = *(&v143 | (4 * v98));
      v104 = result == v105;
      if (v16 | v105)
      {
        if (v92 >= 0x10000 && (v93 ^ v105) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v103 = 0xFFFFLL;
        }

        else
        {
          v103 = v89 + v88 * v105;
        }
      }

      else
      {
        v103 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v103 = 0;
    v104 = v88 > 0x8000 - v16;
  }

  v106 = v103 + v16;
  if (a3 == 4)
  {
    v107 = v106 & 0xFFFFFFFFFFFFFE00;
    if ((v106 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v106 = 31743;
    }

    else if (v107 == 32256)
    {
      v106 = 0x8000;
    }

    else if (v107 == 64512)
    {
      v106 = 64511;
    }
  }

  if (v106 >= 0xFFFF)
  {
    LODWORD(v106) = 0xFFFF;
  }

  if (v104)
  {
    v108 = 0;
  }

  else
  {
    v108 = v106 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v108 = v106;
  }

  a2[1] = v108;
  if (v9)
  {
    if (v17 == 2)
    {
      v109 = v94;
      v110 = v16 == 0x8000;
    }

    else
    {
      v111 = *(&v143 + v98);
      v110 = result == v111;
      if (v16 | v111)
      {
        if (v92 >= 0x10000 && (v93 ^ v111) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v109 = 0xFFFFLL;
        }

        else
        {
          v109 = v89 + v88 * v111;
        }
      }

      else
      {
        v109 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v109 = 0;
    v110 = v88 > 0x8000 - v16;
  }

  v112 = v109 + v16;
  if (a3 == 4)
  {
    v113 = v112 & 0xFFFFFFFFFFFFFE00;
    if ((v112 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v112 = 31743;
    }

    else if (v113 == 32256)
    {
      v112 = 0x8000;
    }

    else if (v113 == 64512)
    {
      v112 = 64511;
    }
  }

  if (v112 >= 0xFFFF)
  {
    LODWORD(v112) = 0xFFFF;
  }

  if (v110)
  {
    v114 = 0;
  }

  else
  {
    v114 = v112 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v114 = v112;
  }

  a2[2] = v114;
  if (v9)
  {
    if (v17 == 3)
    {
      v115 = v94;
      v116 = v16 == 0x8000;
    }

    else
    {
      v117 = *(&v143 + v98);
      v116 = result == v117;
      if (v16 | v117)
      {
        if (v92 >= 0x10000 && (v93 ^ v117) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v115 = 0xFFFFLL;
        }

        else
        {
          v115 = v89 + v88 * v117;
        }
      }

      else
      {
        v115 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v115 = 0;
    v116 = v88 > 0x8000 - v16;
  }

  v118 = v115 + v16;
  if (a3 == 4)
  {
    v119 = v118 & 0xFFFFFFFFFFFFFE00;
    if ((v118 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v118 = 31743;
    }

    else if (v119 == 32256)
    {
      v118 = 0x8000;
    }

    else if (v119 == 64512)
    {
      v118 = 64511;
    }
  }

  if (v118 >= 0xFFFF)
  {
    LODWORD(v118) = 0xFFFF;
  }

  if (v116)
  {
    v120 = 0;
  }

  else
  {
    v120 = v118 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v120 = v118;
  }

  a2[3] = v120;
  if (v9)
  {
    if (v17 == 4)
    {
      v121 = v94;
      v122 = v16 == 0x8000;
    }

    else
    {
      v123 = *(&v143 + v98);
      v122 = result == v123;
      if (v16 | v123)
      {
        if (v92 >= 0x10000 && (v93 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v121 = 0xFFFFLL;
        }

        else
        {
          v121 = v89 + v88 * v123;
        }
      }

      else
      {
        v121 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v121 = 0;
    v122 = v88 > 0x8000 - v16;
  }

  v124 = v121 + v16;
  if (a3 == 4)
  {
    v125 = v124 & 0xFFFFFFFFFFFFFE00;
    if ((v124 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v124 = 31743;
    }

    else if (v125 == 32256)
    {
      v124 = 0x8000;
    }

    else if (v125 == 64512)
    {
      v124 = 64511;
    }
  }

  if (v124 >= 0xFFFF)
  {
    LODWORD(v124) = 0xFFFF;
  }

  if (v122)
  {
    v126 = 0;
  }

  else
  {
    v126 = v124 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v126 = v124;
  }

  a2[4] = v126;
  if (v9)
  {
    if (v17 == 5)
    {
      v127 = v94;
      v128 = v16 == 0x8000;
    }

    else
    {
      v129 = *(&v143 + v98);
      v128 = result == v129;
      if (v16 | v129)
      {
        if (v92 >= 0x10000 && (v93 ^ v129) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v127 = 0xFFFFLL;
        }

        else
        {
          v127 = v89 + v88 * v129;
        }
      }

      else
      {
        v127 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v127 = 0;
    v128 = v88 > 0x8000 - v16;
  }

  v130 = v127 + v16;
  if (a3 == 4)
  {
    v131 = v130 & 0xFFFFFFFFFFFFFE00;
    if ((v130 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v130 = 31743;
    }

    else if (v131 == 32256)
    {
      v130 = 0x8000;
    }

    else if (v131 == 64512)
    {
      v130 = 64511;
    }
  }

  if (v130 >= 0xFFFF)
  {
    LODWORD(v130) = 0xFFFF;
  }

  if (v128)
  {
    v132 = 0;
  }

  else
  {
    v132 = v130 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v132 = v130;
  }

  a2[5] = v132;
  if (v9)
  {
    if (v17 == 6)
    {
      v133 = v94;
      v134 = v16 == 0x8000;
    }

    else
    {
      v135 = *(&v143 + v98);
      v134 = result == v135;
      if (v16 | v135)
      {
        if (v92 >= 0x10000 && (v93 ^ v135) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v133 = 0xFFFFLL;
        }

        else
        {
          v133 = v89 + v88 * v135;
        }
      }

      else
      {
        v133 = 0;
      }

      ++v98;
    }
  }

  else
  {
    v133 = 0;
    v134 = v88 > 0x8000 - v16;
  }

  v136 = v133 + v16;
  if (a3 == 4)
  {
    v137 = v136 & 0xFFFFFFFFFFFFFE00;
    if ((v136 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v136 = 31743;
    }

    else if (v137 == 32256)
    {
      v136 = 0x8000;
    }

    else if (v137 == 64512)
    {
      v136 = 64511;
    }
  }

  if (v136 >= 0xFFFF)
  {
    LODWORD(v136) = 0xFFFF;
  }

  if (v134)
  {
    v138 = 0;
  }

  else
  {
    v138 = v136 ^ 0x8000;
  }

  if (v99 != 1)
  {
    v138 = v136;
  }

  a2[6] = v138;
  if (v9)
  {
    if (v17 != 7)
    {
      v139 = *(&v143 + v98);
      v95 = result == v139;
      if (v16 | v139)
      {
        if (v92 >= 0x10000 && (v93 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v94 = 0xFFFFLL;
        }

        else
        {
          v94 = v89 + v88 * v139;
        }
      }

      else
      {
        v94 = 0;
      }
    }
  }

  else
  {
    v94 = 0;
    v95 = v88 > 0x8000 - v16;
  }

  v140 = v94 + v16;
  if (a3 == 4)
  {
    v141 = v140 & 0xFFFFFFFFFFFFFE00;
    if ((v140 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v140 = 31743;
    }

    else if (v141 == 32256)
    {
      v140 = 0x8000;
    }

    else if (v141 == 64512)
    {
      v140 = 64511;
    }
  }

  if (v140 >= 0xFFFF)
  {
    LODWORD(v140) = 0xFFFF;
  }

  v142 = v140 ^ 0x8000;
  if (v95)
  {
    v142 = 0;
  }

  if (v99 == 1)
  {
    LODWORD(v140) = v142;
  }

  a2[7] = v140;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = 4 * a2;
  v23 = v16 - 4;
  if (v17 && v16 >= 5)
  {
    if (v23 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v16 - 4;
    }

    if (v17 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 1, (v21 + v22), a2, v25, v24, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v26 = v17 - 8;
  if (v17 >= 9 && v16)
  {
    if (v16 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v16;
    }

    if (v26 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 2, v21 + 1, a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[2] = 0;
    if (v17 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v16 >= 5)
  {
    if (v23 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v16 - 4;
    }

    if (v26 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 3, (v21 + v22 + 16), a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    v31 = v16 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v31 = v16 - 8;
  if (!v17)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v16 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v34 = v16 - 12;
    if (!v17)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v31 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v31;
  }

  if (v17 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v17;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 4, (v21 + 8 * a2), a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  v34 = v16 - 12;
LABEL_47:
  if (v16 >= 0xD)
  {
    if (v34 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v34;
    }

    if (v17 >= 8)
    {
      v36 = 8;
    }

    else
    {
      v36 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 5, (v21 + 12 * a2), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v17 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v16 >= 9)
  {
    if (v31 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v31;
    }

    if (v26 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 6, (v21 + 8 * a2 + 16), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v17 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v16 < 0xD)
  {
    goto LABEL_76;
  }

  if (v34 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v34;
  }

  if (v26 >= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v17 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 7, (v21 + 12 * a2 + 16), a2, v40, v39, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s64(*a3, v17);
  v19 = vzip2q_s64(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s64(*v20, v21);
  v24 = vzip2q_s64(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v19, v25);
  v28 = vsubq_s16(v23, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = v29;
    v67 = 0;
    v68 = 0;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70.i64[0] = 0xF000F000F000FLL;
    v70.i64[1] = 0xF000F000F000FLL;
    v71 = vcgtq_s16(v62, v64);
    v72 = vandq_s8(vsubq_s16(vshlq_s16(v69, vsubq_s16(v70, v63)), v58), v71);
    v73.i64[0] = 0x8000800080008;
    v73.i64[1] = 0x8000800080008;
    v74.i64[0] = 0x3000300030003;
    v74.i64[1] = 0x3000300030003;
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v74), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v74), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v74), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v74), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v75.i64[0] = 0x4000400040004;
    v75.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v75, v83);
    v85 = vorrq_s8(v84, vorrq_s8(vandq_s8(vceqzq_s16(v65), v74), vandq_s8(v71, v73)));
    if (a5 >= 2 && a6 >= 2)
    {
      v367 = v24;
      v371 = v72;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v93 = v66;
      v87.i16[0] = vmaxvq_s16(v90);
      v369 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v94 = vdupq_lane_s16(v87, 0);
      v95 = vdupq_lane_s16(*v88.i8, 0);
      v96 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v66), v89);
      v97.i64[0] = 0x8000800080008000;
      v97.i64[1] = 0x8000800080008000;
      v98 = vmaxq_s16(v94, v97);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v99 = vzip1q_s16(v94, v95);
      v100.i64[0] = 0x10001000100010;
      v100.i64[1] = 0x10001000100010;
      v101 = vsubq_s16(v100, vclsq_s16(v99));
      v102 = vbicq_s8(v101, vceqzq_s16(v99));
      v101.i16[0] = vmaxvq_s16(v91);
      v365 = v91;
      v16.i16[0] = vminvq_s16(v91);
      v103 = vdupq_lane_s16(*v101.i8, 0);
      v104 = vdupq_lane_s16(v16, 0);
      v105 = vpmaxq_s16(v102, v102);
      v106 = vmaxq_s16(v98, v103);
      v107 = vminq_s16(vminq_s16(v95, v89), v104);
      v108 = vzip1q_s16(v103, v104);
      v109 = vsubq_s16(v100, vclsq_s16(v108));
      v110 = vbicq_s8(v109, vceqzq_s16(v108));
      v111 = v28;
      v112 = vpmaxq_s16(v110, v110);
      v110.i16[0] = vmaxvq_s16(v92);
      v113 = vdupq_lane_s16(*v110.i8, 0);
      v109.i16[0] = vminvq_s16(v92);
      v114 = vdupq_lane_s16(*v109.i8, 0);
      v115 = vmaxq_s16(v106, v113);
      v116 = vminq_s16(v107, v114);
      v117 = vzip1q_s16(v113, v114);
      v118 = vsubq_s16(v100, vclsq_s16(v117));
      v119 = vbicq_s8(v118, vceqzq_s16(v117));
      v120 = v27;
      v121 = vpmaxq_s16(v119, v119);
      v119.i16[0] = vmaxvq_s16(v96);
      v118.i16[0] = vminvq_s16(v96);
      v122 = vdupq_lane_s16(*v119.i8, 0);
      v123 = vdupq_lane_s16(*v118.i8, 0);
      v124 = vmaxq_s16(v115, v122);
      v125 = vminq_s16(v116, v123);
      v126 = vzip1q_s16(v122, v123);
      v127 = vbicq_s8(vsubq_s16(v100, vclsq_s16(v126)), vceqzq_s16(v126));
      v128 = vpmaxq_s16(v127, v127);
      v129 = vmaxq_s16(vmaxq_s16(v105, v112), vmaxq_s16(v121, v128));
      v130 = vclzq_s16(vsubq_s16(v124, v125));
      v131 = vsubq_s16(v100, v130);
      v132 = vcgtq_s16(v129, v131);
      v133 = vminq_s16(v131, v129);
      v129.i64[0] = 0x1000100010001;
      v129.i64[1] = 0x1000100010001;
      v134 = vmaxq_s16(v133, v129);
      v135.i64[0] = 0x3000300030003;
      v135.i64[1] = 0x3000300030003;
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v105), v135), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v112), v135), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v121), v135), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v128), v135), 0);
      v140 = vsubq_s16(v134, v136);
      v141 = vsubq_s16(v134, v137);
      v142 = vsubq_s16(v134, v138);
      v143 = vsubq_s16(v134, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137)));
      v136.i64[0] = 0x4000400040004;
      v136.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v136, v144);
      v146 = vbslq_s8(v132, vaddq_s16(v134, v100), v100);
      v147.i64[0] = 0x7000700070007;
      v147.i64[1] = 0x7000700070007;
      v148 = vandq_s8(v65, v71);
      v149 = vaddq_s16(v84, v84);
      v150 = vmulq_s16(v79, v147);
      v151 = vshlq_n_s16(vaddq_s16(vaddq_s16(v81, v80), v82), 3uLL);
      v152 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v148), v151), v149), vaddq_s16(vaddq_s16(vmlaq_s16(v146, v140, v147), vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL)), vaddq_s16(v145, v145))), 0);
      v148.i16[0] = vaddvq_s16(v152);
      v153 = v148.u16[0];
      if (v148.i16[0])
      {
        v154.i64[0] = 0x2000200020002;
        v154.i64[1] = 0x2000200020002;
        v155.i64[0] = 0xA000A000A000ALL;
        v155.i64[1] = 0xA000A000A000ALL;
        v156 = vbslq_s8(v132, v155, v154);
        v149.i64[0] = -1;
        v149.i64[1] = -1;
        v157 = vorrq_s8(v145, v156);
        v156.i64[0] = 0xF000F000F000FLL;
        v156.i64[1] = 0xF000F000F000FLL;
        v158 = vcltzq_s16(vshlq_n_s16(v152, 0xFuLL));
        v368 = vbslq_s8(v158, v369, v26);
        v370 = vbslq_s8(v158, v365, v120);
        v366 = vbslq_s8(v158, v92, v111);
        v93 = vbslq_s8(v158, v96, v93);
        v79 = vbslq_s8(v158, v140, v79);
        v80 = vbslq_s8(v158, v141, v80);
        v81 = vbslq_s8(v158, v142, v81);
        v82 = vbslq_s8(v158, v143, v82);
        v371 = vbslq_s8(v158, vandq_s8(vsubq_s16(vshlq_s16(v149, vsubq_s16(v156, v130)), v125), v132), v371);
        v65 = vbslq_s8(v158, v134, v65);
        v85 = vbslq_s8(v158, v157, v85);
        v150 = vmulq_s16(v79, v147);
        v151 = vshlq_n_s16(vaddq_s16(vaddq_s16(v81, v80), v82), 3uLL);
      }

      else
      {
        v368 = v26;
        v370 = v120;
        v366 = v111;
      }

      v66 = v93;
      v160.i64[0] = 0x7000700070007;
      v160.i64[1] = 0x7000700070007;
      v68 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v161 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v162 = v19;
      v162.i16[7] = v18.i16[7];
      v163 = vsubq_s16(v19, vqtbl1q_s8(v162, xmmword_29D2F0F10));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F20));
      v166 = v367;
      v166.i16[7] = v18.i16[7];
      v167 = 0x100010001000F0ELL;
      v168 = v161;
      v168.i16[0] = v161.i16[7];
      v168.i16[7] = v161.i16[0];
      v161.i16[0] = vmaxvq_s16(v168);
      v167.i16[0] = vminvq_s16(v168);
      v169 = vdupq_lane_s16(*v161.i8, 0);
      v170 = vdupq_lane_s16(v167, 0);
      v171 = vsubq_s16(v367, vqtbl1q_s8(v166, xmmword_29D2F0F30));
      v166.i64[0] = 0x8000800080008000;
      v166.i64[1] = 0x8000800080008000;
      v172 = vmaxq_s16(v169, v166);
      v173.i64[0] = 0x8000800080008000;
      v173.i64[1] = 0x8000800080008000;
      v174 = vminq_s16(v170, v173);
      v175 = vzip1q_s16(v169, v170);
      v176.i64[0] = 0x10001000100010;
      v176.i64[1] = 0x10001000100010;
      v177 = vsubq_s16(v176, vclsq_s16(v175));
      v178 = vbicq_s8(v177, vceqzq_s16(v175));
      v179 = vpmaxq_s16(v178, v178);
      v177.i16[0] = vmaxvq_s16(v163);
      v180 = vdupq_lane_s16(*v177.i8, 0);
      v149.i16[0] = vminvq_s16(v163);
      v181 = vdupq_lane_s16(*v149.i8, 0);
      v182 = vmaxq_s16(v172, v180);
      v183 = vminq_s16(v174, v181);
      v184 = vzip1q_s16(v180, v181);
      v185 = vsubq_s16(v176, vclsq_s16(v184));
      v186 = vbicq_s8(v185, vceqzq_s16(v184));
      v187 = vpmaxq_s16(v186, v186);
      v185.i16[0] = vmaxvq_s16(v165);
      v130.i16[0] = vminvq_s16(v165);
      v188 = vdupq_lane_s16(*v185.i8, 0);
      v189 = vdupq_lane_s16(*v130.i8, 0);
      v190 = vmaxq_s16(v182, v188);
      v191 = vminq_s16(v183, v189);
      v192 = vzip1q_s16(v188, v189);
      v193 = vsubq_s16(v176, vclsq_s16(v192));
      v194 = vbicq_s8(v193, vceqzq_s16(v192));
      v193.i16[0] = vmaxvq_s16(v171);
      v140.i16[0] = vminvq_s16(v171);
      v195 = vdupq_lane_s16(*v193.i8, 0);
      v196 = vdupq_lane_s16(*v140.i8, 0);
      v197 = vpmaxq_s16(v194, v194);
      v198 = vmaxq_s16(v190, v195);
      v199 = vminq_s16(v191, v196);
      v200 = vzip1q_s16(v195, v196);
      v201 = vbicq_s8(vsubq_s16(v176, vclsq_s16(v200)), vceqzq_s16(v200));
      v202 = vpmaxq_s16(v201, v201);
      v203 = vmaxq_s16(vmaxq_s16(v179, v187), vmaxq_s16(v197, v202));
      v204 = vclzq_s16(vsubq_s16(v198, v199));
      v205 = vsubq_s16(v176, v204);
      v206 = vcgtq_s16(v203, v205);
      v207 = vminq_s16(v205, v203);
      v208 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v179), v135), 0);
      v209 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v187), v135), 0);
      v210 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v197), v135), 0);
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v202), v135), 0);
      v212 = vsubq_s16(v207, v208);
      v213 = vsubq_s16(v207, v209);
      v214 = vsubq_s16(v207, v210);
      v215 = vsubq_s16(v207, v211);
      v216 = vceqq_s16(vaddq_s16(v211, v210), vnegq_s16(vaddq_s16(v208, v209)));
      v209.i64[0] = 0x4000400040004;
      v209.i64[1] = 0x4000400040004;
      v217 = vbicq_s8(v209, v216);
      v210.i64[0] = 0x8000800080008;
      v210.i64[1] = 0x8000800080008;
      v218 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v210)));
      v219 = vandq_s8(vaddq_s16(v85, v85), v210);
      v220.i64[0] = 0x2000200020002;
      v220.i64[1] = 0x2000200020002;
      v221 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v218, v219), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v135), v220), v176), v150)), v151), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v207, v206), v212, v160), vshlq_n_s16(vaddq_s16(vaddq_s16(v214, v213), v215), 3uLL)), vaddq_s16(v217, v217))), 0);
      v218.i16[0] = vaddvq_s16(v221);
      v222 = v218.u16[0];
      if (v218.i16[0])
      {
        v223.i64[0] = 0x9000900090009;
        v223.i64[1] = 0x9000900090009;
        v224.i64[0] = -1;
        v224.i64[1] = -1;
        v225 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v207), v220), vsubq_s16(vandq_s8(v206, v223), vmvnq_s8(v206))), v217);
        v226.i64[0] = 0xF000F000F000FLL;
        v226.i64[1] = 0xF000F000F000FLL;
        v227 = vandq_s8(vsubq_s16(vshlq_s16(v224, vsubq_s16(v226, v204)), v199), v206);
        v228 = vcltzq_s16(vshlq_n_s16(v221, 0xFuLL));
        v25.i16[0] = vbslq_s8(v228, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v228, v168, v368);
        v27 = vbslq_s8(v228, v163, v370);
        v28 = vbslq_s8(v228, v165, v366);
        v66 = vbslq_s8(v228, v171, v66);
        v79 = vbslq_s8(v228, v212, v79);
        v80 = vbslq_s8(v228, v213, v80);
        v81 = vbslq_s8(v228, v214, v81);
        v82 = vbslq_s8(v228, v215, v82);
        v72 = vbslq_s8(v228, v227, v371);
        v65 = vbslq_s8(v228, v207, v65);
        v85 = vbslq_s8(v228, v225, v85);
      }

      else
      {
        v28 = v366;
        v27 = v370;
        v72 = v371;
        v26 = v368;
      }

      if (v153)
      {
        v229 = v222 == 0;
      }

      else
      {
        v229 = 0;
      }

      v67 = v229;
    }

    v230.i64[0] = 0x8000800080008;
    v230.i64[1] = 0x8000800080008;
    v231 = vandq_s8(v85, v230);
    v232.i64[0] = 0x3000300030003;
    v232.i64[1] = 0x3000300030003;
    v233.i64[0] = 0x2000200020002;
    v233.i64[1] = 0x2000200020002;
    v234 = vceqq_s16(vandq_s8(v85, v232), v233);
    v233.i64[0] = 0x10001000100010;
    v233.i64[1] = 0x10001000100010;
    if (((7 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0] + ((2 * v85.i16[0]) & 8) + vbicq_s8(v65, vceqzq_s16(v231)).u16[0] + vandq_s8(v234, v233).u16[0]) - 235) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v235 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v236 = 8 * (a1 & 7);
      if (v236)
      {
        v237 = *v235 & ~(-1 << v236);
      }

      else
      {
        v237 = 0;
      }

      if (v65.i16[0])
      {
        v238 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v238 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v239 = (v238 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v240 = (v239 << v236) | v237;
      if (v236 >= 0x2A)
      {
        *v235 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v236 + 22;
      v242 = vsubq_s16(v65, v79);
      v243 = vsubq_s16(v65, v80);
      v244 = vsubq_s16(v65, v81);
      v245 = vsubq_s16(v65, v82);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      v242.i32[0] = vzip1q_s16(vzip1q_s8(v242, v243), vzip1q_s8(v244, v245)).u32[0];
      v244.i64[0] = 0x202020202020202;
      v244.i64[1] = 0x202020202020202;
      v246 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v244);
      v244.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v244.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[0] = -1;
      v245.i64[1] = -1;
      v247 = vandq_s8(vshlq_u8(v245, vorrq_s8(v246, v244)), v242.u32[0]);
      v248 = vmovl_u8(*v246.i8);
      v249 = vpaddq_s16(vshlq_u16(vmovl_u8(*v247.i8), vtrn1q_s16(0, v248)), vmovl_high_u8(v247));
      v250 = vpaddq_s16(v248, vmovl_high_u8(v246));
      v251 = vmovl_u16(*v250.i8);
      v252 = vmovl_high_u16(v250);
      v253 = vpaddq_s32(vshlq_u32(vmovl_u16(*v249.i8), vtrn1q_s32(0, v251)), vshlq_u32(vmovl_high_u16(v249), vtrn1q_s32(0, v252)));
      v254 = vpaddq_s32(v251, v252);
      v255.i64[0] = v253.u32[0];
      v255.i64[1] = v253.u32[1];
      v256 = v255;
      v255.i64[0] = v253.u32[2];
      v255.i64[1] = v253.u32[3];
      v257 = v255;
      v255.i64[0] = v254.u32[0];
      v255.i64[1] = v254.u32[1];
      v258 = v255;
      v255.i64[0] = v254.u32[2];
      v255.i64[1] = v254.u32[3];
      v259 = vpaddq_s64(vshlq_u64(v256, vzip1q_s64(0, v258)), vshlq_u64(v257, vzip1q_s64(0, v255)));
      v260 = vpaddq_s64(v258, v255);
      v261 = (v236 + 22) & 0x3E;
      v262 = (v259.i64[0] << v261) | v240;
      if ((v260.i64[0] + v261) >= 0x40)
      {
        *(v235 + ((v241 >> 3) & 8)) = v262;
        v262 = v259.i64[0] >> -v261;
      }

      v263 = v260.i64[0] + v241;
      v264 = v262 | (v259.i64[1] << v263);
      if ((v263 & 0x3F) + v260.i64[1] >= 0x40)
      {
        *(v235 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
        v264 = v259.i64[1] >> -(v263 & 0x3F);
        if ((v263 & 0x3F) == 0)
        {
          v264 = 0;
        }
      }

      v265 = vceqq_s16(v65, v79);
      v266 = v263 + v260.i64[1];
      v267.i64[0] = -1;
      v267.i64[1] = -1;
      v268 = vandq_s8(vextq_s8(vtstq_s16(v231, v231), 0, 0xEuLL), v65);
      v269.i64[0] = 0xF000F000F000FLL;
      v269.i64[1] = 0xF000F000F000FLL;
      v270 = vandq_s8(vshlq_u16(v267, vaddq_s16(v268, v269)), v72);
      v271 = vmovl_u16(*v268.i8);
      v272 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v271)), vmovl_high_u16(v270));
      v273 = vpaddq_s32(v271, vmovl_high_u16(v268));
      v274.i64[0] = v272.u32[0];
      v274.i64[1] = v272.u32[1];
      v275 = v274;
      v274.i64[0] = v272.u32[2];
      v274.i64[1] = v272.u32[3];
      v276 = v274;
      v274.i64[0] = v273.u32[0];
      v274.i64[1] = v273.u32[1];
      v277 = v274;
      v274.i64[0] = v273.u32[2];
      v274.i64[1] = v273.u32[3];
      v278 = vpaddq_s64(vshlq_u64(v275, vzip1q_s64(0, v277)), vshlq_u64(v276, vzip1q_s64(0, v274)));
      v279 = vpaddq_s64(v277, v274);
      v280 = (v278.i64[0] << v266) | v264;
      if (v279.i64[0] + (v266 & 0x3F) >= 0x40)
      {
        *(v235 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
        v280 = v278.i64[0] >> -(v266 & 0x3F);
        if ((v266 & 0x3F) == 0)
        {
          v280 = 0;
        }
      }

      v281 = vandq_s8(v72, v265);
      v282 = v279.i64[0] + v266;
      v283 = v280 | (v278.i64[1] << v282);
      if ((v282 & 0x3F) + v279.i64[1] >= 0x40)
      {
        *(v235 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
        v283 = v278.i64[1] >> -(v282 & 0x3F);
        if ((v282 & 0x3F) == 0)
        {
          v283 = 0;
        }
      }

      v284 = vceqq_s16(v65, v80);
      v285 = vaddq_s16(v281, v26);
      v286 = v282 + v279.i64[1];
      if (v67)
      {
        v283 |= v68 << v286;
        if ((v286 & 0x3F) >= 0x30)
        {
          *(v235 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
          v283 = v68 >> -(v286 & 0x3F);
        }

        v286 += 16;
      }

      v287 = vandq_s8(v72, v284);
      v288 = vextq_s8(0, v79, 0xEuLL);
      v289.i64[0] = 0xF000F000F000FLL;
      v289.i64[1] = 0xF000F000F000FLL;
      v290.i64[0] = -1;
      v290.i64[1] = -1;
      v291 = vandq_s8(vshlq_u16(v290, vaddq_s16(v288, v289)), v285);
      v292 = vmovl_u16(*v288.i8);
      v293 = vmovl_high_u16(v288);
      v294 = vpaddq_s32(vshlq_u32(vmovl_u16(*v291.i8), vtrn1q_s32(0, v292)), vshlq_u32(vmovl_high_u16(v291), vtrn1q_s32(0, v293)));
      v295 = vpaddq_s32(v292, v293);
      v296.i64[0] = v294.u32[0];
      v296.i64[1] = v294.u32[1];
      v297 = v296;
      v296.i64[0] = v294.u32[2];
      v296.i64[1] = v294.u32[3];
      v298 = v296;
      v296.i64[0] = v295.u32[0];
      v296.i64[1] = v295.u32[1];
      v299 = v296;
      v296.i64[0] = v295.u32[2];
      v296.i64[1] = v295.u32[3];
      v300 = vpaddq_s64(vshlq_u64(v297, vzip1q_s64(0, v299)), vshlq_u64(v298, vzip1q_s64(0, v296)));
      v301 = vpaddq_s64(v299, v296);
      v302 = (v300.i64[0] << v286) | v283;
      if (v301.i64[0] + (v286 & 0x3F) >= 0x40)
      {
        *(v235 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v300.i64[0] >> -(v286 & 0x3F);
        if ((v286 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = vceqq_s16(v65, v81);
      v304 = vaddq_s16(v27, v287);
      v305 = v301.i64[0] + v286;
      v306 = (v301.i64[0] + v286) & 0x3F;
      v307 = v302 | (v300.i64[1] << v305);
      if ((v305 & 0x3F) + v301.i64[1] >= 0x40)
      {
        *(v235 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v300.i64[1] >> -v306;
        if (!v306)
        {
          v307 = 0;
        }
      }

      v308 = vandq_s8(v72, v303);
      v309 = v305 + v301.i64[1];
      v310.i64[0] = 0xF000F000F000FLL;
      v310.i64[1] = 0xF000F000F000FLL;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vshlq_u16(v311, vaddq_s16(v80, v310)), v304);
      v313 = vmovl_u16(*v80.i8);
      v314 = vmovl_high_u16(v80);
      v315 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v313)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v314)));
      v316 = vpaddq_s32(v313, v314);
      v317.i64[0] = v315.u32[0];
      v317.i64[1] = v315.u32[1];
      v318 = v317;
      v317.i64[0] = v315.u32[2];
      v317.i64[1] = v315.u32[3];
      v319 = v317;
      v317.i64[0] = v316.u32[0];
      v317.i64[1] = v316.u32[1];
      v320 = v317;
      v317.i64[0] = v316.u32[2];
      v317.i64[1] = v316.u32[3];
      v321 = vpaddq_s64(vshlq_u64(v318, vzip1q_s64(0, v320)), vshlq_u64(v319, vzip1q_s64(0, v317)));
      v322 = vpaddq_s64(v320, v317);
      v323 = (v321.i64[0] << v309) | v307;
      if (v322.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v235 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v321.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = vceqq_s16(v65, v82);
      v325 = vaddq_s16(v28, v308);
      v326 = v322.i64[0] + v309;
      v327 = v323 | (v321.i64[1] << v326);
      if ((v326 & 0x3F) + v322.i64[1] >= 0x40)
      {
        *(v235 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v321.i64[1] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = vandq_s8(v72, v324);
      v329 = v326 + v322.i64[1];
      v330.i64[0] = 0xF000F000F000FLL;
      v330.i64[1] = 0xF000F000F000FLL;
      v331.i64[0] = -1;
      v331.i64[1] = -1;
      v332 = vandq_s8(vshlq_u16(v331, vaddq_s16(v81, v330)), v325);
      v333 = vmovl_u16(*v81.i8);
      v334 = vmovl_high_u16(v81);
      v335 = vpaddq_s32(vshlq_u32(vmovl_u16(*v332.i8), vtrn1q_s32(0, v333)), vshlq_u32(vmovl_high_u16(v332), vtrn1q_s32(0, v334)));
      v336 = vpaddq_s32(v333, v334);
      v337.i64[0] = v335.u32[0];
      v337.i64[1] = v335.u32[1];
      v338 = v337;
      v337.i64[0] = v335.u32[2];
      v337.i64[1] = v335.u32[3];
      v339 = v337;
      v337.i64[0] = v336.u32[0];
      v337.i64[1] = v336.u32[1];
      v340 = v337;
      v337.i64[0] = v336.u32[2];
      v337.i64[1] = v336.u32[3];
      v341 = vpaddq_s64(vshlq_u64(v338, vzip1q_s64(0, v340)), vshlq_u64(v339, vzip1q_s64(0, v337)));
      v342 = vpaddq_s64(v340, v337);
      v343 = (v341.i64[0] << v329) | v327;
      if (v342.i64[0] + (v329 & 0x3F) >= 0x40)
      {
        *(v235 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v341.i64[0] >> -(v329 & 0x3F);
        if ((v329 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = vaddq_s16(v66, v328);
      v345 = v342.i64[0] + v329;
      v346 = v343 | (v341.i64[1] << v345);
      if ((v345 & 0x3F) + v342.i64[1] >= 0x40)
      {
        *(v235 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v341.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v342.i64[1];
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v82, v348)), v344);
      v351 = vmovl_u16(*v82.i8);
      v352 = vmovl_high_u16(v82);
      v353 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v347) | v346;
      if (v360.i64[0] + (v347 & 0x3F) > 0x3F)
      {
        *(v235 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        if ((v347 & 0x3F) != 0)
        {
          v361 = v359.i64[0] >> -(v347 & 0x3F);
        }

        else
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v347;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v235 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      if ((v364 & 0x3F) != 0)
      {
        *(v235 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      }

      result = (v364 - v236 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v55 = *MEMORY[0x29EDCA608];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  if (a6 && a5)
  {
    if (a5 > 3)
    {
      v15 = a5 & 0x7C;
      if (v15 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v17 = &v51 + 16 * (i & 0x7F) + 8;
          v18 = a3;
          v19 = a5;
          do
          {
            v56 = vld2_s16(v18);
            v18 += 8;
            *(v17 - 8) = v56;
            v17 += 8;
            v19 -= 4;
          }

          while (v19);
          a3 += a4;
        }
      }

      else
      {
        v20 = 0;
        v21 = a5 - 4;
        v22 = a3;
        do
        {
          v23 = 16 * (v20 & 0x7F);
          v24 = (&v52 + v23);
          v25 = &v51 + v23 + 8;
          v26 = v22;
          v27 = a5 & 0x7C;
          do
          {
            v57 = vld2_s16(v26);
            v26 += 8;
            *(v25 - 8) = v57;
            v25 += 8;
            v27 -= 4;
          }

          while (v27);
          v28 = (a3 + v20 * a4 + 4 * v15);
          v29 = v21;
          do
          {
            *(v24 - 4) = *v28;
            *v24++ = v28[1];
            v28 += 2;
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
      v10 = 0;
      v11 = (a3 + 6);
      do
      {
        *(&v51 + 4 * (v10 & 0xFE)) = *(v11 - 3);
        v12 = v10 & 0xFE | 1;
        *(&v51 + 4 * v12) = *(v11 - 2);
        if (a5 != 1)
        {
          v13 = &v51 + 8 * (v10 & 0xFE);
          *(v13 + 1) = *(v11 - 1);
          v14 = &v51 + 8 * v12;
          *(v14 + 1) = *v11;
          if (a5 != 2)
          {
            *(v13 + 2) = v11[1];
            *(v14 + 2) = v11[2];
          }
        }

        v10 += 2;
        v11 = (v11 + a4);
      }

      while (2 * a6 != v10);
    }
  }

  v30 = 2 * (a5 & 0x7F);
  v46.i32[0] = v51;
  v46.i32[1] = WORD4(v51);
  v46.i32[2] = WORD1(v51);
  v46.i32[3] = WORD5(v51);
  v47 = v52;
  v48 = WORD4(v52);
  if (v30 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2 * (a5 & 0x7F);
  }

  if (v30 >= 4)
  {
    v32 = v30 - 4;
  }

  else
  {
    v32 = 0;
  }

  v49 = WORD1(v52);
  v50 = WORD5(v52);
  if (a6 >= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = a6;
  }

  if (a6 >= 2)
  {
    v34 = a6 - 2;
  }

  else
  {
    v34 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v31, v33);
  v46.i32[0] = WORD2(v51);
  v46.i32[1] = WORD6(v51);
  v46.i32[2] = WORD3(v51);
  v46.i32[3] = HIWORD(v51);
  v47 = WORD2(v52);
  v48 = WORD6(v52);
  v49 = WORD3(v52);
  v50 = HIWORD(v52);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v34;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v46, a7, v31, v37);
  v46.i32[0] = v53;
  v46.i32[1] = WORD4(v53);
  v46.i32[2] = WORD1(v53);
  v46.i32[3] = WORD5(v53);
  v47 = v54;
  v48 = WORD4(v54);
  if (a5 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v32;
  }

  v49 = WORD1(v54);
  v50 = WORD5(v54);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v46, a7, v39, v33);
  v46.i32[0] = WORD2(v53);
  v46.i32[1] = WORD6(v53);
  v46.i32[2] = WORD3(v53);
  v46.i32[3] = HIWORD(v53);
  v47 = WORD2(v54);
  v48 = WORD6(v54);
  v49 = WORD3(v54);
  v50 = HIWORD(v54);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v46, a7, v39, v37);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
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

  v191 = v9;
  v192 = v8;
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
    v130 = 8 * (&v190 & 7);
    v131 = 16;
    do
    {
      v132 = 64 - v130;
      if (64 - v130 >= v131)
      {
        v132 = v131;
      }

      *&v189[8 * v128] |= ((0xFFFFFFFFFFFFFFFFLL >> v129) & ~(-1 << v132)) << v130;
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
    *(a1->i64 + 2 * a2) = 0;
    *(a1->i64 + 3 * a2) = 0;
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

    v182 = vaddq_s16(v166, v169);
    v183 = vaddq_s16(v170, v166);
    v184 = vzip2q_s64(v182, v183);
    v182.i64[1] = v183.i64[0];
    v185 = vaddq_s16(v171, v166);
    v186 = vaddq_s16(v172, v166);
    *a1 = v182;
    *(a1 + a2) = v184;
    v187 = vzip2q_s64(v185, v186);
    v185.i64[1] = v186.i64[0];
    v188 = (a1 + 2 * a2);
    *v188 = v185;
    *(v188 + a2) = v187;
  }

  return v127;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(__int16 *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v42, a5);
  }

  v29 = v42;
  v30 = v44;
  v33 = v43;
  v34 = v45;
  v37 = v46;
  v38 = v48;
  v39 = v47;
  v40 = v49;
  v9 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v42, a5);
  }

  v25 = v42;
  v26 = v44;
  v27 = v43;
  v28 = v45;
  v31 = v46;
  v32 = v48;
  v35 = v47;
  v36 = v49;
  v10 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v42, a5);
  }

  v12 = v42;
  v11 = v43;
  v14 = v44;
  v13 = v45;
  v15 = v46;
  v16 = v48;
  v23 = v47;
  v24 = v49;
  v17 = a3 + 24;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v42, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, &v42, a5);
  }

  v51.val[0].i16[0] = v12;
  v51.val[0].i16[1] = v14;
  v51.val[0].i16[2] = v42;
  v51.val[0].i16[3] = v44;
  v51.val[1].i16[0] = v11;
  v51.val[1].i16[1] = v13;
  v51.val[1].i16[2] = v43;
  v51.val[1].i16[3] = v45;
  v52.val[0].i16[0] = v15;
  v52.val[0].i16[1] = v16;
  v52.val[0].i16[2] = v46;
  v52.val[0].i16[3] = v48;
  v52.val[1].i16[0] = v23;
  v52.val[1].i16[1] = v24;
  v52.val[1].i16[2] = v47;
  v52.val[1].i16[3] = v49;
  v53.val[0].i16[0] = v29;
  v53.val[0].i16[1] = v30;
  v53.val[0].i16[2] = v25;
  v53.val[0].i16[3] = v26;
  v53.val[1].i16[0] = v33;
  v53.val[1].i16[1] = v34;
  v53.val[1].i16[2] = v27;
  v53.val[1].i16[3] = v28;
  v54.val[0].i16[0] = v37;
  v54.val[0].i16[1] = v38;
  v54.val[0].i16[2] = v31;
  v54.val[0].i16[3] = v32;
  v54.val[1].i16[0] = v39;
  v54.val[1].i16[1] = v40;
  v54.val[1].i16[2] = v35;
  v54.val[1].i16[3] = v36;
  v19 = a2;
  vst2_s16(a1, v53);
  v20 = (a1 + v19);
  vst2_s16(v20, v54);
  v21 = (v20 + v19);
  vst2_s16(v21, v51);
  v22 = (v21 + v19);
  vst2_s16(v22, v52);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = v17 - 4;
  if (v17 >= 5 && v16)
  {
    if (v16 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v16;
    }

    if (v22 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 1, v21 + 1, a2, v24, v23, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v25 = 4 * a2;
  v26 = v16 - 4;
  if (v17 && v16 >= 5)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v16 - 4;
    }

    if (v17 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 2, (v21 + v25), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v17 < 5 || v16 < 5)
  {
    a4[3] = 0;
  }

  else
  {
    if (v26 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v16 - 4;
    }

    if (v22 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v17 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 3, (v21 + v25 + 16), a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  v31 = v17 - 8;
  if (v17 >= 9 && v16)
  {
    if (v16 >= 4)
    {
      v32 = 4;
    }

    else
    {
      v32 = v16;
    }

    if (v31 >= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 4, v21 + 2, a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v34 = v17 - 12;
  if (v17 >= 0xD && v16)
  {
    if (v16 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v16;
    }

    if (v34 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v17 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 5, v21 + 3, a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[5] = 0;
    if (v17 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v16 >= 5)
  {
    if (v26 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v16 - 4;
    }

    if (v31 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v17 - 8;
    }

    v39 = 4 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 6, (v21 + 4 * a2 + 32), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v39 = 4 * a2;
  if (v17 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v16 < 5)
  {
    goto LABEL_79;
  }

  if (v26 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = v16 - 4;
  }

  if (v34 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = v17 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 7, (v21 + v39 + 48), a2, v41, v40, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int16x4_t a8, int16x4_t a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v15 = *a3;
  v16 = *(a3 + 16);
  v17 = *(a3 + a4);
  v18 = vdupq_lane_s16(*a3, 0);
  v19 = vsubq_s16(*a3, v18);
  v20 = vsubq_s16(v17, v18);
  v21 = vsubq_s16(v16, v18);
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
    if (a5 >= 2 && a6)
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
      v154 = *(a3 + a4);
      v154.i16[7] = HIWORD(*a3);
      v155 = vsubq_s16(v17, vqtbl1q_s8(v154, xmmword_29D2F0F10));
      v156 = *(a3 + 16);
      v156.i16[7] = HIWORD(*a3);
      v157 = vsubq_s16(v16, vqtbl1q_s8(v156, xmmword_29D2F0F20));
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
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