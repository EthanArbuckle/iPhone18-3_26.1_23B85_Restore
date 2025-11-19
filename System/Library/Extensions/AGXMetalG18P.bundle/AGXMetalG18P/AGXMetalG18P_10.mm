uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 128, a2, v18, v17);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 128, a2, v20, v19);
    v9 += result;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
  v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 128, a2, v28, v27);
    v9 += result;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 128, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v405 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v403 = v47;
    v404 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v401 = v47;
    v402 = v47;
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
    v403 = vmovl_s8(vceqz_s8(*v39.i8));
    v401 = vmovl_s8(vceqz_s8(*v38.i8));
    v402 = vmovl_s8(vceqz_s8(v42));
    v404 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v407 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v407, v407));
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
  v396 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v396, v396));
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

  v397 = v43;
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
  v406 = v12;
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

  v398 = v44;
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

  v399 = v45;
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
  v400 = v46;
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
    *(a1 + a2) = v178;
  }

  else
  {
    v180 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v181 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v182 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v183 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
    v184 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v185 = vzip1_s32(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
    v186 = ((2 * *(v5 + (((v4 + 36) >> 3) & 8) + 8)) << ~(v4 + 36)) | (*(v5 + (((v4 + 36) >> 3) & 8)) >> (v4 + 36));
    v187.i64[0] = v180.u32[0];
    v187.i64[1] = v180.u32[1];
    v188 = vshlq_u64(v49, vnegq_s64(v187));
    v391 = vzip1q_s64(v49, v188);
    v393 = vzip2q_s64(v49, v188);
    v187.i64[0] = v181.u32[0];
    v187.i64[1] = v181.u32[1];
    v189 = vshlq_u64(v70, vnegq_s64(v187));
    v387 = vzip1q_s64(v70, v189);
    v389 = vzip2q_s64(v70, v189);
    v187.i64[0] = v182.u32[0];
    v187.i64[1] = v182.u32[1];
    v190 = vnegq_s64(v187);
    v191 = vshlq_u64(v62, v190);
    v383 = vzip1q_s64(v62, v191);
    v385 = vzip2q_s64(v62, v191);
    v192 = vshlq_u64(v87, v190);
    v381 = vzip2q_s64(v87, v192);
    v193 = vzip1q_s64(v87, v192);
    v194 = vshlq_u64(v85, v190);
    v195 = vzip2q_s64(v85, v194);
    v196 = vzip1q_s64(v85, v194);
    v187.i64[0] = v183.u32[0];
    v187.i64[1] = v183.u32[1];
    v197 = vnegq_s64(v187);
    v198 = vshlq_u64(v104, v197);
    v199 = vzip2q_s64(v104, v198);
    v200 = vzip1q_s64(v104, v198);
    v201 = vshlq_u64(v102, v197);
    v202 = vzip2q_s64(v102, v201);
    v203 = vzip1q_s64(v102, v201);
    v204 = vshlq_u64(v116, v197);
    v205 = vzip2q_s64(v116, v204);
    v206 = vzip1q_s64(v116, v204);
    v207 = vshlq_u64(v114, v197);
    v208 = vzip2q_s64(v114, v207);
    v209 = vzip1q_s64(v114, v207);
    v187.i64[0] = v184.u32[0];
    v187.i64[1] = v184.u32[1];
    v210 = vnegq_s64(v187);
    v211 = vshlq_u64(v133, v210);
    v212 = vzip2q_s64(v133, v211);
    v213 = vzip1q_s64(v133, v211);
    v214 = vshlq_u64(v131, v210);
    v215 = vzip2q_s64(v131, v214);
    v216 = vzip1q_s64(v131, v214);
    v217 = vshlq_u64(v145, v210);
    v218 = vzip2q_s64(v145, v217);
    v219 = vzip1q_s64(v145, v217);
    v220 = vshlq_u64(v143, v210);
    v221 = vzip2q_s64(v143, v220);
    v222 = vzip1q_s64(v143, v220);
    v187.i64[0] = v185.u32[0];
    v187.i64[1] = v185.u32[1];
    v395 = vnegq_s64(v187);
    v223 = vshlq_u64(v163, v395);
    v224 = vzip2q_s64(v163, v223);
    v225 = vzip1q_s64(v163, v223);
    v226 = vshlq_u64(v159, v395);
    v227 = vzip2q_s64(v159, v226);
    v228 = vzip1q_s64(v159, v226);
    v229 = vshlq_u64(v171, v395);
    v230 = vzip2q_s64(v171, v229);
    v231 = vzip1q_s64(v171, v229);
    v232 = vuzp1q_s32(v391, v393);
    v233 = vuzp1q_s32(v387, v389);
    v234 = vuzp1q_s32(v383, v385);
    v235 = vuzp1q_s32(v193, v381);
    v236 = vuzp1q_s32(v196, v195);
    v237 = vuzp1q_s32(v200, v199);
    v238 = vuzp1q_s32(v203, v202);
    v239 = vuzp1q_s32(v206, v205);
    v240 = vuzp1q_s32(v209, v208);
    v241 = vuzp1q_s32(v213, v212);
    v242 = vuzp1q_s32(v216, v215);
    v243 = vuzp1q_s32(v219, v218);
    v244 = vuzp1q_s32(v222, v221);
    v245 = vuzp1q_s32(v225, v224);
    v246 = vuzp1q_s32(v228, v227);
    v225.i64[0] = 0xFFFF0000FFFFLL;
    v225.i64[1] = 0xFFFF0000FFFFLL;
    v247 = vuzp1q_s32(v231, v230);
    v248 = vshlq_u32(v232, vnegq_s32(vandq_s8(v407, v225)));
    v392 = vzip1q_s32(v232, v248);
    v394 = vzip2q_s32(v232, v248);
    v230.i64[0] = 0xFFFF0000FFFFLL;
    v230.i64[1] = 0xFFFF0000FFFFLL;
    v249 = vshlq_u32(v233, vnegq_s32(vandq_s8(v396, v230)));
    v388 = vzip1q_s32(v233, v249);
    v390 = vzip2q_s32(v233, v249);
    v250 = vnegq_s32(vandq_s8(v397, v230));
    v251 = vshlq_u32(v234, v250);
    v384 = vzip1q_s32(v234, v251);
    v386 = vzip2q_s32(v234, v251);
    v252 = vshlq_u32(v235, v250);
    v380 = vzip1q_s32(v235, v252);
    v382 = vzip2q_s32(v235, v252);
    v253 = vshlq_u32(v236, v250);
    v378 = vzip1q_s32(v236, v253);
    v379 = vzip2q_s32(v236, v253);
    v212.i64[0] = 0xFFFF0000FFFFLL;
    v212.i64[1] = 0xFFFF0000FFFFLL;
    v254 = vnegq_s32(vandq_s8(v398, v212));
    v255 = vshlq_u32(v237, v254);
    v376 = vzip1q_s32(v237, v255);
    v377 = vzip2q_s32(v237, v255);
    v256 = vshlq_u32(v238, v254);
    v374 = vzip1q_s32(v238, v256);
    v375 = vzip2q_s32(v238, v256);
    v257 = vshlq_u32(v239, v254);
    v372 = vzip1q_s32(v239, v257);
    v373 = vzip2q_s32(v239, v257);
    v258 = vshlq_u32(v240, v254);
    v371 = vzip2q_s32(v240, v258);
    v259 = vzip1q_s32(v240, v258);
    v240.i64[0] = 0xFFFF0000FFFFLL;
    v240.i64[1] = 0xFFFF0000FFFFLL;
    v260 = vnegq_s32(vandq_s8(v399, v240));
    v261 = vshlq_u32(v241, v260);
    v262 = vzip2q_s32(v241, v261);
    v263 = vzip1q_s32(v241, v261);
    v264 = vshlq_u32(v242, v260);
    v265 = vzip2q_s32(v242, v264);
    v266 = vzip1q_s32(v242, v264);
    v267 = vshlq_u32(v243, v260);
    v268 = vzip2q_s32(v243, v267);
    v269 = vzip1q_s32(v243, v267);
    v270 = vshlq_u32(v244, v260);
    v271 = vzip2q_s32(v244, v270);
    v272 = vzip1q_s32(v244, v270);
    v244.i64[0] = 0xFFFF0000FFFFLL;
    v244.i64[1] = 0xFFFF0000FFFFLL;
    v273 = vnegq_s32(vandq_s8(v400, v244));
    v274 = vshlq_u32(v245, v273);
    v275 = vzip2q_s32(v245, v274);
    v276 = vzip1q_s32(v245, v274);
    v277 = vshlq_u32(v246, v273);
    v278 = vzip2q_s32(v246, v277);
    v279 = vzip1q_s32(v246, v277);
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v186), xmmword_29D2F10A0));
    v277.i32[0] = v186;
    LOWORD(v186) = v248.i16[2];
    v277.i16[2] = v248.i16[0];
    v280 = vshlq_u32(v247, v273);
    v281 = vuzp1q_s16(v263, v262);
    v282 = vuzp1q_s16(v266, v265);
    v283 = vuzp1q_s16(v276, v275);
    v284 = vuzp1q_s16(v279, v278);
    v285 = vuzp1q_s16(vzip1q_s32(v247, v280), vzip2q_s32(v247, v280));
    v280.i64[0] = 0x10001000100010;
    v280.i64[1] = 0x10001000100010;
    v251.i64[0] = 0xF000F000F000FLL;
    v251.i64[1] = 0xF000F000F000FLL;
    v278.i64[0] = 0x10001000100010;
    v278.i64[1] = 0x10001000100010;
    v286 = vshlq_s16(vuzp1q_s16(v388, v390), vsubq_s16(v278, v396));
    v287 = vsubq_s16(v278, v397);
    v247.i64[0] = 0xF000F000F000FLL;
    v247.i64[1] = 0xF000F000F000FLL;
    v288 = vaddq_s16(v396, v247);
    v289 = vaddq_s16(v397, v247);
    v209.i64[0] = 0x10001000100010;
    v209.i64[1] = 0x10001000100010;
    v290 = vsubq_s16(v209, v398);
    v275.i64[0] = 0xF000F000F000FLL;
    v275.i64[1] = 0xF000F000F000FLL;
    v291 = vaddq_s16(v398, v275);
    v292 = vshlq_s16(vuzp1q_s16(v376, v377), v290);
    v293 = vshlq_s16(vuzp1q_s16(v374, v375), v290);
    v294 = vshlq_s16(vuzp1q_s16(v372, v373), v290);
    v295 = vshlq_s16(vuzp1q_s16(v259, v371), v290);
    v290.i64[0] = 0x10001000100010;
    v290.i64[1] = 0x10001000100010;
    v296 = vsubq_s16(v290, v399);
    v239.i64[0] = 0xF000F000F000FLL;
    v239.i64[1] = 0xF000F000F000FLL;
    v297 = vaddq_s16(v399, v239);
    v298 = vshlq_s16(v281, v296);
    v299 = vshlq_s16(v282, v296);
    v300 = vshlq_s16(vuzp1q_s16(v269, v268), v296);
    v301 = vshlq_s16(vuzp1q_s16(v272, v271), v296);
    v268.i64[0] = 0x10001000100010;
    v268.i64[1] = 0x10001000100010;
    v302 = vsubq_s16(v268, v400);
    v234.i64[0] = 0xF000F000F000FLL;
    v234.i64[1] = 0xF000F000F000FLL;
    v303 = vaddq_s16(v400, v234);
    v304 = vshlq_s16(vshlq_s16(vuzp1q_s16(v392, v394), vsubq_s16(v280, v407)), vaddq_s16(v407, v251));
    v305 = vshlq_s16(v286, v288);
    v306 = vshlq_s16(vshlq_s16(vuzp1q_s16(v384, v386), v287), v289);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v380, v382), v287), v289);
    v308 = vshlq_s16(vshlq_s16(vuzp1q_s16(v378, v379), v287), v289);
    v309 = vshlq_s16(v299, v297);
    v310 = vshlq_s16(v301, v297);
    v311 = vshlq_u64(v176, v395);
    v312 = vuzp1q_s32(vzip1q_s64(v176, v311), vzip2q_s64(v176, v311));
    v313 = vshlq_u32(v312, v273);
    v314 = vshlq_s16(vshlq_s16(v285, v302), v303);
    v315 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v312, v313), vzip2q_s32(v312, v313)), v302), v303);
    v316 = vandq_s8(v304, v403);
    v317 = vdupq_lane_s64(v304.i64[0], 0);
    v318 = vaddq_s16(v316, v305);
    v319 = vandq_s8(v401, v317);
    v320 = vsubq_s16(vshlq_s16(v292, v291), v319);
    v321 = vsubq_s16(vshlq_s16(v293, v291), v319);
    v322 = vsubq_s16(vshlq_s16(v294, v291), v319);
    v323 = vsubq_s16(vshlq_s16(v295, v291), v319);
    v324 = vandq_s8(v402, v317);
    v325 = vsubq_s16(vshlq_s16(v298, v297), v324);
    v326 = vsubq_s16(v309, v324);
    v327 = vsubq_s16(vshlq_s16(v300, v297), v324);
    v328 = vandq_s8(v403, v317);
    v329 = vsubq_s16(v310, v324);
    v330 = vandq_s8(v404, v317);
    v331 = vsubq_s16(vshlq_s16(vshlq_s16(v283, v302), v303), v330);
    v332 = vsubq_s16(vshlq_s16(vshlq_s16(v284, v302), v303), v330);
    v333 = vsubq_s16(v314, v330);
    v334 = vsubq_s16(v315, v330);
    v335 = vsubq_s16(v306, v328);
    v336 = vsubq_s16(v307, v328);
    v337.i64[0] = 0x1000100010001;
    v337.i64[1] = 0x1000100010001;
    v338 = vsubq_s16(v318, v328);
    v339 = vsubq_s16(v308, v328);
    v277.i16[3] = v186;
    v340 = vdupq_lane_s64(v277.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v405, v337)))
    {
      v341 = vnegq_s16(vandq_s8(v406, v337));
      v342.i64[0] = v339.i64[0];
      v343.i64[1] = v338.i64[1];
      v342.i64[1] = v338.i64[0];
      v343.i64[0] = v339.i64[1];
      v344 = vbslq_s8(v341, v343, v338);
      v345 = vbslq_s8(v341, v342, v339);
      v343.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v343.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v346 = vandq_s8(vqtbl4q_s8(*(&v335 - 1), v343), v341);
      v408.val[0] = vaddq_s16(v344, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10B0), v341));
      v408.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10C0), v341));
      v408.val[2] = vaddq_s16(v336, v346);
      v408.val[3] = vaddq_s16(v345, v346);
      v347 = vandq_s8(vqtbl4q_s8(v408, v343), v341);
      v338 = vaddq_s16(v408.val[0], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F10D0), v341));
      v335 = vaddq_s16(v408.val[1], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F10E0), v341));
      v336 = vaddq_s16(v408.val[2], v347);
      v339 = vaddq_s16(v408.val[3], v347);
      v409.val[0] = vaddq_s16(v320, vandq_s8(vqtbl4q_s8(*v320.i8, xmmword_29D2F10B0), v341));
      v409.val[1] = vaddq_s16(v321, vandq_s8(vqtbl4q_s8(*v320.i8, xmmword_29D2F10F0), v341));
      v409.val[2] = vaddq_s16(v322, vandq_s8(vqtbl4q_s8(*v320.i8, v343), v341));
      v409.val[3] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v320.i8, xmmword_29D2F1100), v341));
      v348 = vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10D0), v341);
      v408.val[0] = vandq_s8(vqtbl4q_s8(v409, v343), v341);
      v320 = vaddq_s16(v348, v409.val[0]);
      v321 = vaddq_s16(v409.val[1], v348);
      v322 = vaddq_s16(v409.val[2], v408.val[0]);
      v323 = vaddq_s16(v409.val[3], v408.val[0]);
      v409.val[0] = vaddq_s16(v325, vandq_s8(vqtbl4q_s8(*v325.i8, xmmword_29D2F0EB0), v341));
      v409.val[1] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v325.i8, xmmword_29D2F0FB0), v341));
      v409.val[2] = vaddq_s16(v327, vandq_s8(vqtbl4q_s8(*v325.i8, xmmword_29D2F10B0), v341));
      v409.val[3] = vaddq_s16(v329, vandq_s8(vqtbl4q_s8(*v325.i8, xmmword_29D2F10C0), v341));
      v408.val[1] = vandq_s8(vqtbl4q_s8(v409, v343), v341);
      v325 = vaddq_s16(v409.val[0], v408.val[1]);
      v326 = vaddq_s16(v409.val[1], v408.val[1]);
      v327 = vaddq_s16(v409.val[2], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F0FE0), v341));
      v329 = vaddq_s16(v409.val[3], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F1110), v341));
      v408.val[2] = vaddq_s16(v331, vandq_s8(vqtbl4q_s8(*v331.i8, xmmword_29D2F0EB0), v341));
      v408.val[3] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v331.i8, xmmword_29D2F1120), v341));
      v349 = v406;
      v409.val[0] = vaddq_s16(v333, vandq_s8(vqtbl4q_s8(*v331.i8, xmmword_29D2F10B0), v341));
      v409.val[1] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v331.i8, xmmword_29D2F10C0), v341));
      v350 = vandq_s8(vqtbl4q_s8(*(&v408 + 32), v343), v341);
      v331 = vaddq_s16(v408.val[2], v350);
      v332 = vaddq_s16(v408.val[3], v350);
      v333 = vaddq_s16(v409.val[0], vandq_s8(vqtbl4q_s8(*(&v408 + 32), xmmword_29D2F0FE0), v341));
      v334 = vaddq_s16(v409.val[1], vandq_s8(vqtbl4q_s8(*(&v408 + 32), xmmword_29D2F1130), v341));
    }

    else
    {
      v349 = v406;
    }

    v351 = vaddq_s16(v338, v340);
    v352 = vaddq_s16(v335, v340);
    v353 = vaddq_s16(v336, v340);
    v354 = vaddq_s16(v339, v340);
    v355 = vaddq_s16(v320, v340);
    v356 = vaddq_s16(v321, v340);
    v357 = vaddq_s16(v322, v340);
    v358 = vaddq_s16(v323, v340);
    v359 = vaddq_s16(v325, v340);
    v360 = vaddq_s16(v326, v340);
    v361 = vaddq_s16(v327, v340);
    v362 = vaddq_s16(v329, v340);
    v363 = vaddq_s16(v331, v340);
    v364 = vaddq_s16(v332, v340);
    v365 = vaddq_s16(v333, v340);
    v366 = vaddq_s16(v334, v340);
    v367.i64[0] = 0x10001000100010;
    v367.i64[1] = 0x10001000100010;
    v368 = vcgtq_u16(v367, v349);
    v369 = (a1 + 64);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v351, xmmword_29D2F1140), v368), v351);
    *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v352, xmmword_29D2F1140), v368), v352);
    *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1140), v368), v353);
    *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v368), v354);
    v370 = (a1 + a2);
    *v369 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v368), v355);
    v369[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v368), v356);
    v369[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v368), v357);
    v369[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v368), v358);
    *v370 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v368), v359);
    v370[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v368), v360);
    v370[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v368), v361);
    v370[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v368), v362);
    v370 += 4;
    *v370 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v368), v363);
    v370[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v368), v364);
    v370[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v368), v365);
    v370[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v368), v366);
  }

  return v177;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
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
    a3[4] = v10;
    a3[5] = v11;
    a3[6] = v12;
    a3[7] = v13;
    a3[8] = v14;
    a3[9] = v15;
    a3[10] = v16;
    a3[11] = v17;
    a3[12] = v18;
    a3[13] = v19;
    a3[14] = v20;
    a3[15] = v21;
    a3 += 16;
    v6 = -1;
  }

  v22 = 0;
  *a4 = v6;
  if (a5 >= 3 && a6)
  {
    v24 = result[9];
    v25 = result[10];
    v26 = result[11];
    v23 = (result + a2 + 128);
    v27 = result[12];
    v28 = result[13];
    v29 = result[14];
    v30 = result[15];
    v31 = *v23;
    v32 = v23[1];
    v33 = v23[2];
    v34 = v23[3];
    v23 += 4;
    v35 = *v23;
    v36 = v23[1];
    v37 = v23[2];
    v38 = v23[3];
    *a3 = result[8];
    a3[1] = v24;
    a3[2] = v25;
    a3[3] = v26;
    a3[4] = v27;
    a3[5] = v28;
    a3[6] = v29;
    a3[7] = v30;
    a3[8] = v31;
    a3[9] = v32;
    a3[10] = v33;
    a3[11] = v34;
    a3[12] = v35;
    a3[13] = v36;
    a3[14] = v37;
    a3[15] = v38;
    a3 += 16;
    v22 = -1;
  }

  v39 = 0;
  v40 = 2 * a2;
  a4[1] = v22;
  if (a5 && a6 >= 3)
  {
    v42 = *(result + v40 + 16);
    v43 = *(result + v40 + 32);
    v44 = *(result + v40 + 48);
    v41 = (result + v40 + a2);
    v45 = *(result + v40 + 64);
    v46 = *(result + v40 + 80);
    v47 = *(result + v40 + 96);
    v48 = *(result + v40 + 112);
    v49 = *v41;
    v50 = v41[1];
    v51 = v41[2];
    v52 = v41[3];
    v41 += 4;
    v53 = *v41;
    v54 = v41[1];
    v55 = v41[2];
    v56 = v41[3];
    *a3 = *(result + 2 * a2);
    a3[1] = v42;
    a3[2] = v43;
    a3[3] = v44;
    a3[4] = v45;
    a3[5] = v46;
    a3[6] = v47;
    a3[7] = v48;
    a3[8] = v49;
    a3[9] = v50;
    a3[10] = v51;
    a3[11] = v52;
    a3[12] = v53;
    a3[13] = v54;
    a3[14] = v55;
    a3[15] = v56;
    a3 += 16;
    v39 = -1;
  }

  v57 = 0;
  a4[2] = v39;
  if (a5 >= 3 && a6 >= 3)
  {
    v58 = (result + v40 + 128);
    v60 = *v58;
    v61 = *(result + v40 + 144);
    v62 = *(result + v40 + 160);
    v63 = *(result + v40 + 176);
    v59 = (v58 + a2);
    v64 = *(result + v40 + 192);
    v65 = *(result + v40 + 208);
    v66 = *(result + v40 + 224);
    v67 = *(result + v40 + 240);
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
    a3[4] = v64;
    a3[5] = v65;
    a3[6] = v66;
    a3[7] = v67;
    a3[8] = v68;
    a3[9] = v69;
    a3[10] = v70;
    a3[11] = v71;
    a3[12] = v72;
    a3[13] = v73;
    a3[14] = v74;
    a3[15] = v75;
    a3 += 16;
    v57 = -1;
  }

  v76 = 0;
  a4[3] = v57;
  if (a5 >= 5 && a6)
  {
    v78 = result[17];
    v79 = result[18];
    v80 = result[19];
    v77 = (result + a2 + 256);
    v81 = result[20];
    v82 = result[21];
    v83 = result[22];
    v84 = result[23];
    v85 = *v77;
    v86 = v77[1];
    v87 = v77[2];
    v88 = v77[3];
    v77 += 4;
    v89 = *v77;
    v90 = v77[1];
    v91 = v77[2];
    v92 = v77[3];
    *a3 = result[16];
    a3[1] = v78;
    a3[2] = v79;
    a3[3] = v80;
    a3[4] = v81;
    a3[5] = v82;
    a3[6] = v83;
    a3[7] = v84;
    a3[8] = v85;
    a3[9] = v86;
    a3[10] = v87;
    a3[11] = v88;
    a3[12] = v89;
    a3[13] = v90;
    a3[14] = v91;
    a3[15] = v92;
    a3 += 16;
    v76 = -1;
  }

  v93 = 0;
  a4[4] = v76;
  if (a5 >= 7 && a6)
  {
    v95 = result[25];
    v96 = result[26];
    v97 = result[27];
    v94 = (result + a2 + 384);
    v98 = result[28];
    v99 = result[29];
    v100 = result[30];
    v101 = result[31];
    v102 = *v94;
    v103 = v94[1];
    v104 = v94[2];
    v105 = v94[3];
    v94 += 4;
    v106 = *v94;
    v107 = v94[1];
    v108 = v94[2];
    v109 = v94[3];
    *a3 = result[24];
    a3[1] = v95;
    a3[2] = v96;
    a3[3] = v97;
    a3[4] = v98;
    a3[5] = v99;
    a3[6] = v100;
    a3[7] = v101;
    a3[8] = v102;
    a3[9] = v103;
    a3[10] = v104;
    a3[11] = v105;
    a3[12] = v106;
    a3[13] = v107;
    a3[14] = v108;
    a3[15] = v109;
    a3 += 16;
    v93 = -1;
  }

  v110 = 0;
  a4[5] = v93;
  if (a5 >= 5 && a6 >= 3)
  {
    v111 = (result + v40 + 256);
    v113 = *v111;
    v114 = *(result + v40 + 272);
    v115 = *(result + v40 + 288);
    v116 = *(result + v40 + 304);
    v112 = (v111 + a2);
    v117 = *(result + v40 + 320);
    v118 = *(result + v40 + 336);
    v119 = *(result + v40 + 352);
    v120 = *(result + v40 + 368);
    v121 = *v112;
    v122 = v112[1];
    v123 = v112[2];
    v124 = v112[3];
    v112 += 4;
    v125 = *v112;
    v126 = v112[1];
    v127 = v112[2];
    v128 = v112[3];
    *a3 = v113;
    a3[1] = v114;
    a3[2] = v115;
    a3[3] = v116;
    a3[4] = v117;
    a3[5] = v118;
    a3[6] = v119;
    a3[7] = v120;
    a3[8] = v121;
    a3[9] = v122;
    a3[10] = v123;
    a3[11] = v124;
    a3[12] = v125;
    a3[13] = v126;
    a3[14] = v127;
    a3[15] = v128;
    a3 += 16;
    v110 = -1;
  }

  v129 = 0;
  a4[6] = v110;
  if (a5 >= 7 && a6 >= 3)
  {
    v130 = (result + v40);
    v132 = v130[24];
    v133 = v130[25];
    v134 = v130[26];
    v135 = v130[27];
    v131 = (v130 + a2 + 384);
    v130 += 28;
    v136 = *v130;
    v137 = v130[1];
    v138 = v130[2];
    v139 = v130[3];
    v140 = *v131;
    v141 = v131[1];
    v142 = v131[2];
    v143 = v131[3];
    v131 += 4;
    v144 = *v131;
    v145 = v131[1];
    v146 = v131[2];
    v147 = v131[3];
    *a3 = v132;
    a3[1] = v133;
    a3[2] = v134;
    a3[3] = v135;
    a3[4] = v136;
    a3[5] = v137;
    a3[6] = v138;
    a3[7] = v139;
    a3[8] = v140;
    a3[9] = v141;
    a3[10] = v142;
    a3[11] = v143;
    a3[12] = v144;
    a3[13] = v145;
    a3[14] = v146;
    a3[15] = v147;
    v129 = -1;
  }

  a4[7] = v129;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = vdupq_lane_s64(*a3, 0);
  v7 = vsubq_s16(*a3, v6);
  v8 = vsubq_s16(*(a3 + 16), v6);
  v9 = vsubq_s16(*(a3 + 32), v6);
  v491.val[0] = *a3;
  v491.val[1] = *(a3 + 16);
  v491.val[2] = *(a3 + 32);
  v491.val[3] = *(a3 + 48);
  v10 = vsubq_s16(v491.val[3], v6);
  v492 = *(a3 + 64);
  v493 = *(a3 + 80);
  v494 = *(a3 + 96);
  v11 = vsubq_s16(v494, v6);
  v490 = *(a3 + 112);
  v12 = vsubq_s16(v490, v6);
  v13 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v7, v8), v9), v10), xmmword_29D2F1150);
  v14 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v7, v8), v9), v10), xmmword_29D2F1150);
  v15 = vpmaxq_s16(v13, v13);
  v16 = vpminq_s16(v14, v14);
  v17.i64[0] = 0x8000800080008000;
  v17.i64[1] = 0x8000800080008000;
  v18 = vmaxq_s16(v15, v17);
  v17.i64[0] = 0x8000800080008000;
  v17.i64[1] = 0x8000800080008000;
  v19 = vminq_s16(v16, v17);
  v20 = vzip1q_s16(v15, v16);
  v21.i64[0] = 0x10001000100010;
  v21.i64[1] = 0x10001000100010;
  v22 = vbicq_s8(vsubq_s16(v21, vclsq_s16(v20)), vceqzq_s16(v20));
  v499 = vsubq_s16(v492, v6);
  v495 = vsubq_s16(v493, v6);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v499, v495), v11), v12), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v499, v495), v11), v12), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vmaxq_s16(v18, v25);
  v28 = vzip1q_s16(v25, v26);
  v29 = vbicq_s8(vsubq_s16(v21, vclsq_s16(v28)), vceqzq_s16(v28));
  v30 = vsubq_s16(*(a3 + a4), v6);
  v31 = vsubq_s16(*(a3 + a4 + 16), v6);
  v501 = *(a3 + a4);
  v502 = *(a3 + a4 + 16);
  v503 = *(a3 + a4 + 32);
  v32 = vsubq_s16(v503, v6);
  v489 = *(a3 + a4 + 48);
  v33 = vsubq_s16(v489, v6);
  v34 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v35 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38 = vmaxq_s16(v27, v36);
  v39 = vminq_s16(vminq_s16(v19, v26), v37);
  v40 = vzip1q_s16(v36, v37);
  v41 = vbicq_s8(vsubq_s16(v21, vclsq_s16(v40)), vceqzq_s16(v40));
  v42 = v11;
  v43 = vsubq_s16(*(a3 + a4 + 64), v6);
  v44 = vsubq_s16(*(a3 + a4 + 80), v6);
  v485 = *(a3 + a4 + 64);
  v486 = *(a3 + a4 + 80);
  v487 = *(a3 + a4 + 96);
  v45 = vsubq_s16(v487, v6);
  v488 = *(a3 + a4 + 112);
  v46 = vsubq_s16(v488, v6);
  v47 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v43, v44), v45), v46), xmmword_29D2F1150);
  v48 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v43, v44), v45), v46), xmmword_29D2F1150);
  v49 = vpmaxq_s16(v47, v47);
  v50 = vpminq_s16(v48, v48);
  v51 = vmaxq_s16(v38, v49);
  v52 = vminq_s16(v39, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v21, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v22, v22);
  v56 = vpmaxq_s16(v29, v29);
  v57 = vpmaxq_s16(v41, v41);
  v58 = vpmaxq_s16(v54, v54);
  v59 = vmaxq_s16(vmaxq_s16(v55, v56), vmaxq_s16(v57, v58));
  v60 = vclzq_s16(vsubq_s16(v51, v52));
  v61 = vsubq_s16(v21, v60);
  v62 = vcgtq_s16(v59, v61);
  v63 = vminq_s16(v61, v59);
  v59.i64[0] = 0x8000800080008;
  v59.i64[1] = 0x8000800080008;
  v64.i64[0] = 0x3000300030003;
  v64.i64[1] = 0x3000300030003;
  v65 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v55), v64), 0);
  v66 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v56), v64), 0);
  v67 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v57), v64), 0);
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v58), v64), 0);
  v69.i64[0] = 0x4000400040004;
  v69.i64[1] = 0x4000400040004;
  v70 = vbicq_s8(v69, vceqq_s16(vaddq_s16(v68, v67), vnegq_s16(vaddq_s16(v65, v66))));
  v71 = vorrq_s8(v70, vorrq_s8(vandq_s8(vceqzq_s16(v63), v64), vandq_s8(v62, v59)));
  v524 = v6;
  v504 = v7;
  v506 = v8;
  v508 = v9;
  v510 = v10;
  v516 = v30;
  v520 = v43;
  v72 = vmaxvq_s16(v63);
  v6.i64[0] = 0xF000F000F000FLL;
  v6.i64[1] = 0xF000F000F000FLL;
  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v73 = vshlq_s16(v7, vsubq_s16(v6, v60));
  v512 = v499;
  v513 = v495;
  v481 = v42;
  v483 = v12;
  v514 = v42;
  v515 = v12;
  v517 = v31;
  v475 = v32;
  v518 = v32;
  v484 = v33;
  v519 = v33;
  v479 = v44;
  v521 = v44;
  if (a5)
  {
    v74 = a6 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = v74;
  v522 = v45;
  v523 = v46;
  v531 = v52;
  v530 = v63;
  v76 = vandq_s8(vsubq_s16(v73, v52), v62);
  v532 = v51;
  v533 = v76;
  v496 = vsubq_s16(v63, v65);
  v526 = v496;
  v498 = vsubq_s16(v63, v66);
  v527 = v498;
  v497 = vsubq_s16(v63, v67);
  v528 = v497;
  v500 = vsubq_s16(v63, v68);
  v529 = v500;
  v477 = v71;
  v525 = v71;
  if (v72)
  {
    v77 = v31;
    v448 = v51;
    v449 = v76;
    v473 = v70;
    v78 = vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1140));
    v79 = vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1140));
    v80 = vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1140));
    v81 = vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1140));
    v82 = vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1140));
    v83 = vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1140));
    v455 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1140));
    v457 = vsubq_s16(v504, vqtbl1q_s8(v504, xmmword_29D2F1140));
    v459 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1140));
    v461 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v84 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v457, v455), v461), v459), xmmword_29D2F1150);
    v85 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v457, v455), v461), v459), xmmword_29D2F1150);
    v86 = vpmaxq_s16(v84, v84);
    v87 = vpminq_s16(v85, v85);
    v88.i64[0] = 0x8000800080008000;
    v88.i64[1] = 0x8000800080008000;
    v89 = vmaxq_s16(v86, v88);
    v90.i64[0] = 0x8000800080008000;
    v90.i64[1] = 0x8000800080008000;
    v91 = vminq_s16(v87, v90);
    v92 = vzip1q_s16(v86, v87);
    v93.i64[0] = 0x10001000100010;
    v93.i64[1] = 0x10001000100010;
    v94 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v92)), vceqzq_s16(v92));
    v95 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v78, v79), v80), v81);
    v451 = v79;
    v453 = v78;
    v96 = vminq_s16(v78, v79);
    v97 = v80;
    v98 = vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1140));
    v99 = vqtbl1q_s8(v95, xmmword_29D2F1150);
    v100 = vqtbl1q_s8(vminq_s16(vminq_s16(v96, v97), v81), xmmword_29D2F1150);
    v101 = vpmaxq_s16(v99, v99);
    v102 = vpminq_s16(v100, v100);
    v103 = vmaxq_s16(v89, v101);
    v104 = vminq_s16(v91, v102);
    v105 = vzip1q_s16(v101, v102);
    v106 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v105)), vceqzq_s16(v105));
    v107 = vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1140));
    v108 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v107, v98), v82), v83), xmmword_29D2F1150);
    v109 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v107, v98), v82), v83), xmmword_29D2F1150);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v103, v110);
    v113 = vminq_s16(v104, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1140));
    v117.i64[0] = 0x4000400040004;
    v117.i64[1] = 0x4000400040004;
    v470 = vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1140));
    v471 = vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1140));
    v468 = vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1140));
    v118 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v116, v471), v470), v468), xmmword_29D2F1150);
    v119 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v116, v471), v470), v468), xmmword_29D2F1150);
    v120 = vpmaxq_s16(v118, v118);
    v121 = vpminq_s16(v119, v119);
    v122 = vmaxq_s16(v112, v120);
    v123 = vminq_s16(v113, v121);
    v124 = vzip1q_s16(v120, v121);
    v125 = vbicq_s8(vsubq_s16(v93, vclsq_s16(v124)), vceqzq_s16(v124));
    v126 = vpmaxq_s16(v94, v94);
    v127 = vpmaxq_s16(v106, v106);
    v128 = vpmaxq_s16(v115, v115);
    v129 = vpmaxq_s16(v125, v125);
    v130 = vmaxq_s16(vmaxq_s16(v126, v127), vmaxq_s16(v128, v129));
    v446 = v123;
    v131 = vclzq_s16(vsubq_s16(v122, v123));
    v132 = vsubq_s16(v93, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v130.i64[0] = 0x18001800180018;
    v130.i64[1] = 0x18001800180018;
    v445 = v133;
    v135 = vbslq_s8(v133, v130, v93);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v126), v64), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v127), v64), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v128), v64), 0);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v64), 0);
    v140 = vbicq_s8(v117, vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137))));
    v141 = vsubq_s16(v134, v136);
    v142 = vsubq_s16(v134, v137);
    v143 = vsubq_s16(v134, v138);
    v144 = vsubq_s16(v134, v139);
    v129.i64[0] = 0x7000700070007;
    v129.i64[1] = 0x7000700070007;
    v145 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v63, v62), v496, v129), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v498), v500), 3uLL)), vaddq_s16(v473, v473)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v134, vceqzq_s16((*&v135 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v141, v129), vshlq_n_s16(vaddq_s16(vaddq_s16(v143, v142), v144), 3uLL)), vaddq_s16(v140, v140))).i64[0], 0);
    if (vaddvq_s16(v145))
    {
      v504 = vbslq_s8(v145, v457, v504);
      v506 = vbslq_s8(v145, v455, v506);
      v508 = vbslq_s8(v145, v461, v508);
      v510 = vbslq_s8(v145, v459, v510);
      v512 = vbslq_s8(v145, v453, v512);
      v513 = vbslq_s8(v145, v451, v495);
      v514 = vbslq_s8(v145, v97, v481);
      v515 = vbslq_s8(v145, v81, v483);
      v516 = vbslq_s8(v145, v107, v516);
      v517 = vbslq_s8(v145, v98, v77);
      v146.i64[0] = 0x3000300030003;
      v146.i64[1] = 0x3000300030003;
      v147 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v146), v135), v140);
      v146.i64[0] = 0xF000F000F000FLL;
      v146.i64[1] = 0xF000F000F000FLL;
      v148 = vsubq_s16(v146, v131);
      v146.i64[0] = -1;
      v146.i64[1] = -1;
      v518 = vbslq_s8(v145, v82, v475);
      v519 = vbslq_s8(v145, v83, v484);
      v520 = vbslq_s8(v145, v116, v520);
      v521 = vbslq_s8(v145, v471, v479);
      v522 = vbslq_s8(v145, v470, v45);
      v523 = vbslq_s8(v145, v468, v46);
      v526 = vbslq_s8(v145, v141, v496);
      v527 = vbslq_s8(v145, v142, v498);
      v528 = vbslq_s8(v145, v143, v497);
      v529 = vbslq_s8(v145, v144, v500);
      v532 = vbslq_s8(v145, v122, v448);
      v533 = vbslq_s8(v145, vandq_s8(vsubq_s16(vshlq_s16(v146, v148), v446), v445), v449);
      v531 = vbslq_s8(v145, v446, v52);
      v530 = vbslq_s8(v145, v134, v63);
      v524 = vbslq_s8(v145, vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1140)), v524);
      v525 = vbslq_s8(v145, v147, v477);
    }

    v149 = v501;
    v150 = v502;
    v151 = v503;
    if (v75)
    {
      v152 = v527;
      v153 = v528;
      v154 = v530;
      v155 = v529;
      v157 = v510;
      v156 = v512;
      v158 = v513;
      v159 = v514;
      v160 = v515;
      v161 = v516;
      v162 = v517;
      v163 = v518;
      v164 = v519;
      v165 = v520;
      v166 = v521;
      v167 = v522;
      v168 = v523;
      v169 = v526;
      v170 = v525;
      v172 = v504;
      v171 = v506;
      v173 = v508;
      v174 = v485;
      v175 = v486;
      v176 = v487;
    }

    else
    {
      v179 = vqtbl4q_s8(v491, xmmword_29D2F1160);
      v190 = vsubq_s16(v491.val[0], vqtbl4q_s8(v491, xmmword_29D2F10B0));
      v180 = vsubq_s16(v491.val[3], v179);
      v534.val[0] = v492;
      v534.val[1] = v493;
      v534.val[2] = v494;
      v534.val[3].i64[0] = v490.i64[0];
      v534.val[3].i64[1] = v491.val[3].i64[1];
      v181 = v489.i64[0];
      v182 = v491.val[3].i64[1];
      v183 = vqtbl4q_s8(*v149.i8, xmmword_29D2F10C0);
      v184 = vsubq_s16(v501, vqtbl4q_s8(*v149.i8, xmmword_29D2F1170));
      v185 = vsubq_s16(v502, vqtbl4q_s8(*v149.i8, xmmword_29D2F1180));
      v186 = vsubq_s16(v503, vqtbl4q_s8(*v149.i8, xmmword_29D2F10B0));
      v174 = v485;
      v175 = v486;
      v176 = v487;
      v187 = v488.i64[0];
      v188 = v491.val[3].i64[1];
      v189.i64[0] = v180.i64[0];
      v189.i64[1] = v190.i64[0];
      v190.i64[0] = v180.i64[1];
      v482 = vsubq_s16(v491.val[1], vqtbl4q_s8(v491, xmmword_29D2F10C0));
      v469 = vsubq_s16(v491.val[2], v179);
      v460 = v189;
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v190, v482), v469), v189), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v190, v482), v469), v189), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195.i64[0] = 0x8000800080008000;
      v195.i64[1] = 0x8000800080008000;
      v196 = vmaxq_s16(v193, v195);
      v189.i64[0] = 0x8000800080008000;
      v189.i64[1] = 0x8000800080008000;
      v197 = vminq_s16(v194, v189);
      v198 = vzip1q_s16(v193, v194);
      v193.i64[0] = 0x10001000100010;
      v193.i64[1] = 0x10001000100010;
      v199 = vbicq_s8(vsubq_s16(v193, vclsq_s16(v198)), vceqzq_s16(v198));
      v200 = vpmaxq_s16(v199, v199);
      v472 = vsubq_s16(v493, vqtbl4q_s8(v534, xmmword_29D2F10F0));
      v463 = vsubq_s16(v492, vqtbl4q_s8(v534, xmmword_29D2F10B0));
      v478 = vsubq_s16(v490, vqtbl4q_s8(v534, xmmword_29D2F1100));
      v480 = vsubq_s16(v494, vqtbl4q_s8(v534, xmmword_29D2F1160));
      v201 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v463, v472), v480), v478), xmmword_29D2F1150);
      v202 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v463, v472), v480), v478), xmmword_29D2F1150);
      v203 = vpmaxq_s16(v201, v201);
      v204 = vpminq_s16(v202, v202);
      v205 = vmaxq_s16(v196, v203);
      v206 = vminq_s16(v197, v204);
      v207 = vzip1q_s16(v203, v204);
      v208 = vbicq_s8(vsubq_s16(v193, vclsq_s16(v207)), vceqzq_s16(v207));
      v209 = vpmaxq_s16(v208, v208);
      v474 = v185;
      v476 = v184;
      v466 = vsubq_s16(v489, v183);
      v467 = v186;
      v210 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v184, v185), v186), v466), xmmword_29D2F1150);
      v211 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v184, v185), v186), v466), xmmword_29D2F1150);
      v212 = vpmaxq_s16(v210, v210);
      v213 = vpminq_s16(v211, v211);
      v214 = vmaxq_s16(v205, v212);
      v215 = vminq_s16(v206, v213);
      v216 = vzip1q_s16(v212, v213);
      v217 = vbicq_s8(vsubq_s16(v193, vclsq_s16(v216)), vceqzq_s16(v216));
      v218 = vpmaxq_s16(v217, v217);
      v464 = vsubq_s16(v487, vqtbl4q_s8(*v174.i8, xmmword_29D2F10B0));
      v465 = vsubq_s16(v486, vqtbl4q_s8(*v174.i8, xmmword_29D2F1120));
      v452 = vsubq_s16(v485, vqtbl4q_s8(*v174.i8, xmmword_29D2F1170));
      v462 = vsubq_s16(v488, vqtbl4q_s8(*v174.i8, xmmword_29D2F10C0));
      v219 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v452, v465), v464), v462), xmmword_29D2F1150);
      v534.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v452, v465), v464), v462), xmmword_29D2F1150);
      v220 = vpmaxq_s16(v219, v219);
      v534.val[2] = vpminq_s16(v534.val[2], v534.val[2]);
      v221 = vmaxq_s16(v214, v220);
      v222 = vminq_s16(v215, v534.val[2]);
      v223 = vzip1q_s16(v220, v534.val[2]);
      v224 = vbicq_s8(vsubq_s16(v193, vclsq_s16(v223)), vceqzq_s16(v223));
      v225 = vpmaxq_s16(v224, v224);
      v226 = vmaxq_s16(vmaxq_s16(v200, v209), vmaxq_s16(v218, v225));
      v458 = v222;
      v227 = vclzq_s16(vsubq_s16(v221, v222));
      v228 = vsubq_s16(v193, v227);
      v229 = vcgtq_s16(v226, v228);
      v230 = vminq_s16(v228, v226);
      v228.i64[0] = 0x3000300030003;
      v228.i64[1] = 0x3000300030003;
      v231 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v200), v228), 0);
      v232 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v209), v228), 0);
      v233 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v218), v228), 0);
      v234 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v225), v228), 0);
      v235 = vsubq_s16(v230, v231);
      v236 = vsubq_s16(v230, v233);
      v237 = vsubq_s16(v230, v234);
      v225.i64[0] = 0x4000400040004;
      v225.i64[1] = 0x4000400040004;
      v238 = vbicq_s8(v225, vceqq_s16(vaddq_s16(v234, v233), vnegq_s16(vaddq_s16(v231, v232))));
      v231.i64[0] = 0x7000700070007;
      v231.i64[1] = 0x7000700070007;
      v454 = vsubq_s16(v230, v232);
      v456 = v235;
      v239 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v230, v229), v235, v231), vshlq_n_s16(vaddq_s16(vaddq_s16(v236, v454), v237), 3uLL)), vaddq_s16(v238, v238));
      v170 = v525;
      v169 = v526;
      v233.i64[0] = 0x2000200020002;
      v233.i64[1] = 0x2000200020002;
      v240 = vandq_s8(vceqq_s16(vandq_s8(v525, v228), v233), v193);
      v234.i64[0] = 0x8000800080008;
      v234.i64[1] = 0x8000800080008;
      v154 = v530;
      v155 = v529;
      v534.val[2] = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v530, vceqzq_s16(vandq_s8(v525, v234))), vandq_s8(vaddq_s16(v170, v170), v234)), v240), v526, v231);
      v152 = v527;
      v153 = v528;
      v241 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v534.val[2], vshlq_n_s16(vaddq_s16(vaddq_s16(v528, v527), v529), 3uLL)), v239).i64[0], 0);
      v156 = v512;
      v167 = v522;
      v168 = v523;
      v172 = v504;
      v171 = v506;
      v173 = v508;
      v157 = v510;
      if (vaddvq_s16(v241))
      {
        v242.i64[0] = 0x2000200020002;
        v242.i64[1] = 0x2000200020002;
        v243 = vandq_s8(vceqzq_s16(v230), v242);
        v242.i64[0] = 0x9000900090009;
        v242.i64[1] = 0x9000900090009;
        v244 = vorrq_s8(v243, vsubq_s16(vandq_s8(v229, v242), vmvnq_s8(v229)));
        v242.i64[0] = -1;
        v242.i64[1] = -1;
        v450 = vorrq_s8(v244, v238);
        v244.i64[0] = 0xF000F000F000FLL;
        v244.i64[1] = 0xF000F000F000FLL;
        v443 = v236;
        v444 = v237;
        v447 = vandq_s8(vsubq_s16(vshlq_s16(v242, vsubq_s16(v244, v227)), v458), v229);
        v172 = vbslq_s8(v241, v190, v504);
        v173 = vbslq_s8(v241, v469, v508);
        v157 = vbslq_s8(v241, v460, v510);
        v156 = vbslq_s8(v241, v463, v512);
        v158 = vbslq_s8(v241, v472, v513);
        v160 = vbslq_s8(v241, v478, v515);
        v162 = vbslq_s8(v241, v474, v517);
        v163 = vbslq_s8(v241, v467, v518);
        v164 = vbslq_s8(v241, v466, v519);
        v165 = vbslq_s8(v241, v452, v520);
        v166 = vbslq_s8(v241, v465, v521);
        v167 = vbslq_s8(v241, v464, v522);
        v168 = vbslq_s8(v241, v462, v523);
        v169 = vbslq_s8(v241, v456, v526);
        v152 = vbslq_s8(v241, v454, v527);
        v153 = vbslq_s8(v241, v443, v528);
        v155 = vbslq_s8(v241, v444, v529);
        v154 = vbslq_s8(v241, v230, v530);
        v170 = vbslq_s8(v241, v450, v525);
        v524 = vbslq_s8(v241, vextq_s8(v491.val[3], v491.val[3], 8uLL), v524);
        v531 = vbslq_s8(v241, v458, v531);
        v532 = vbslq_s8(v241, v221, v532);
        v533 = vbslq_s8(v241, v447, v533);
        v512 = v156;
        v527 = v152;
        v528 = v153;
        v529 = v155;
        v530 = v154;
        v526 = v169;
        v525 = v170;
        v161 = vbslq_s8(v241, v476, v516);
        v171 = vbslq_s8(v241, v482, v506);
        v159 = vbslq_s8(v241, v480, v514);
      }

      else
      {
        v166 = v521;
        v161 = v516;
        v165 = v520;
        v164 = v519;
        v163 = v518;
        v162 = v517;
        v160 = v515;
        v159 = v514;
        v158 = v513;
      }
    }

    v245 = vandq_s8(v533, vceqq_s16(v154, v169));
    v505 = vaddq_s16(v245, v172);
    v507 = vaddq_s16(v171, v245);
    v509 = vaddq_s16(v173, v245);
    v511 = vaddq_s16(v157, v245);
    v246 = vandq_s8(v533, vceqq_s16(v154, v152));
    v512 = vaddq_s16(v156, v246);
    v513 = vaddq_s16(v158, v246);
    v514 = vaddq_s16(v159, v246);
    v515 = vaddq_s16(v160, v246);
    v247 = vandq_s8(v533, vceqq_s16(v154, v153));
    v516 = vaddq_s16(v161, v247);
    v517 = vaddq_s16(v162, v247);
    v518 = vaddq_s16(v163, v247);
    v519 = vaddq_s16(v164, v247);
    v248 = vandq_s8(v533, vceqq_s16(v154, v155));
    v520 = vaddq_s16(v165, v248);
    v521 = vaddq_s16(v166, v248);
    v522 = vaddq_s16(v167, v248);
    v523 = vaddq_s16(v168, v248);
    v248.i64[0] = 0x8000800080008;
    v248.i64[1] = 0x8000800080008;
    v245.i64[0] = 0x3000300030003;
    v245.i64[1] = 0x3000300030003;
    v249.i64[0] = 0x2000200020002;
    v249.i64[1] = 0x2000200020002;
    v250 = vceqq_s16(vandq_s8(v170, v245), v249);
    v249.i64[0] = 0x10001000100010;
    v249.i64[1] = 0x10001000100010;
    v251 = vandq_s8(v250, v249);
    v249.i64[0] = 0x7000700070007;
    v249.i64[1] = 0x7000700070007;
    v252 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v155), 3uLL), v169, v249), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v170, v170), v248), vbicq_s8(v154, vceqzq_s16(vandq_s8(v170, v248)))), v251));
    v253 = vpaddq_s16(v252, v252);
    if ((vpaddq_s16(v253, v253).i16[0] + 107) > 0x7FF)
    {
      *a1 = v491.val[0];
      *(a1 + 16) = v491.val[1];
      *(a1 + 32) = v491.val[2];
      *(a1 + 48) = v491.val[3];
      *(a1 + 64) = v492;
      *(a1 + 80) = v493;
      *(a1 + 96) = v494;
      *(a1 + 112) = v490;
      *(a1 + 128) = v501;
      *(a1 + 144) = v502;
      *(a1 + 160) = v503;
      *(a1 + 176) = v489;
      v257 = (a1 + 192);
      v177 = -1;
      result = 256;
      *v257 = v174;
      v257[1] = v175;
      v257[2] = v176;
      v257[3] = v488;
    }

    else
    {
      v254 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v255 = 8 * (a1 & 7);
      if (v255)
      {
        v256 = *v254 & ~(-1 << v255);
      }

      else
      {
        v256 = 0;
      }

      *a2 = 0;
      v258 = v524.i64[0];
      v259.i32[0] = v154.u16[0];
      v259.i32[1] = v154.u16[1];
      v260 = vceqz_s32(vand_s8(v259, 0xFFFF0000FFFFLL));
      v261.i64[0] = v260.i32[0];
      v261.i64[1] = v260.i32[1];
      v262 = v261;
      v263.i64[0] = -1;
      v263.i64[1] = -1;
      v264 = vand_s8(vadd_s32(v259, -1), 0xF0000000FLL);
      v261.i64[0] = v264.u32[0];
      v261.i64[1] = v264.u32[1];
      v265 = vbicq_s8(vshlq_u64(v261, xmmword_29D2F1190), v262);
      if (v154.i16[2])
      {
        v266 = (v154.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v266 = 0;
      }

      if (v154.i16[3])
      {
        v267 = ((v154.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v267 = 0;
      }

      v268 = vorrq_s8(vdupq_laneq_s64(v265, 1), v265).u64[0] | v266 | v267 | ((v170.i8[6] & 0x1F) << 15) | v170.i8[0] & 0x1F | (32 * (v170.i8[2] & 0x1F)) & 0x83FF | ((v170.i8[4] & 0x1F) << 10);
      v269 = v256 | (v268 << v255);
      if (v255 >= 0x1C)
      {
        *v254 = v269;
        v269 = v268 >> (-8 * (a1 & 7u));
      }

      v270 = v258 | (WORD1(v258) << 16) | (WORD2(v258) << 32) | (HIWORD(v258) << 48);
      v271 = (v255 + 36) & 0x3C;
      *(v254 + (((v255 + 36) >> 3) & 8)) = v269 | (v270 << v271);
      v272 = v255 + 100;
      v273 = vsubq_s16(v530, v526);
      v274 = vsubq_s16(v530, v527);
      v275 = vsubq_s16(v530, v528);
      v276 = vsubq_s16(v530, v529);
      *v273.i8 = vqmovn_u16(v273);
      *v274.i8 = vqmovn_u16(v274);
      *v275.i8 = vqmovn_u16(v275);
      *v276.i8 = vqmovn_u16(v276);
      v277 = vtrn1q_s8(v273, v274);
      v278 = vtrn2q_s8(v273, v274);
      v279 = vtrn1q_s8(v275, v276);
      v280 = vtrn2q_s8(v275, v276);
      v281 = vzip1q_s16(v278, v280);
      v282 = vtrn2q_s16(v278, v280);
      v278.i64[0] = vzip1q_s32(vzip1q_s16(v277, v279), v281).u64[0];
      v282.i64[0] = vzip1q_s32(vtrn2q_s16(v277, v279), v282).u64[0];
      v275.i64[0] = 0x202020202020202;
      v275.i64[1] = 0x202020202020202;
      v283 = vandq_s8(vmovl_s16(vtst_s16(*v525.i8, 0x4000400040004)), v275);
      v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v284 = vshlq_u8(v263, vorrq_s8(v283, v275));
      v285 = vmovl_u8(vand_s8(*v284.i8, *v278.i8));
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
      v301 = (v255 + 100) & 0x3C;
      v302 = (v299.i64[0] << v301) | (v270 >> -v271);
      if ((v300.i64[0] + v301) >= 0x40)
      {
        *(v254 + ((v272 >> 3) & 0x18)) = v302;
        v302 = v299.i64[0] >> -v301;
      }

      v303 = v300.i64[0] + v272;
      v304 = v302 | (v299.i64[1] << v303);
      if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
      {
        *(v254 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v299.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = v303 + v300.i64[1];
      v306.i64[0] = 0x8000800080008;
      v306.i64[1] = 0x8000800080008;
      v307.i64[0] = -1;
      v307.i64[1] = -1;
      v308 = vandq_s8(vextq_s8(vtstq_s16(v525, v306), 0, 8uLL), v530);
      v309.i64[0] = 0xF000F000F000FLL;
      v309.i64[1] = 0xF000F000F000FLL;
      v310 = vandq_s8(vshlq_u16(v307, vaddq_s16(v308, v309)), v533);
      v311 = vmovl_u16(*v308.i8);
      v312 = vpaddq_s32(vshlq_u32(vmovl_u16(*v310.i8), vtrn1q_s32(0, v311)), vmovl_high_u16(v310));
      v313 = vpaddq_s32(v311, vmovl_high_u16(v308));
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
      v320 = (v318.i64[0] << v305) | v304;
      if (v319.i64[0] + (v305 & 0x3F) >= 0x40)
      {
        *(v254 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = v319.i64[0] + v305;
      v322 = v320 | (v318.i64[1] << v321);
      if ((v321 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v254 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v318.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = v321 + v319.i64[1];
      v324 = vextq_s8(0, v526, 8uLL);
      v325.i64[0] = 0xF000F000F000FLL;
      v325.i64[1] = 0xF000F000F000FLL;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vandq_s8(vshlq_u16(v326, vaddq_s16(v324, v325)), v505);
      v328 = vmovl_u16(*v324.i8);
      v329 = vmovl_high_u16(v324);
      v330 = vpaddq_s32(vmovl_u16(*v327.i8), vshlq_u32(vmovl_high_u16(v327), vtrn1q_s32(0, v329)));
      v331 = vpaddq_s32(v328, v329);
      v332.i64[0] = v330.u32[0];
      v332.i64[1] = v330.u32[1];
      v333 = v332;
      v332.i64[0] = v330.u32[2];
      v332.i64[1] = v330.u32[3];
      v334 = v332;
      v332.i64[0] = v331.u32[0];
      v332.i64[1] = v331.u32[1];
      v335 = v332;
      v332.i64[0] = v331.u32[2];
      v332.i64[1] = v331.u32[3];
      v336 = vpaddq_s64(vshlq_u64(v333, vzip1q_s64(0, v335)), vshlq_u64(v334, vzip1q_s64(0, v332)));
      v337 = vpaddq_s64(v335, v332);
      v338 = (v336.i64[0] << v323) | v322;
      if (v337.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v254 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v336.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = v337.i64[0] + v323;
      v340 = v338 | (v336.i64[1] << v339);
      if ((v339 & 0x3F) + v337.i64[1] >= 0x40)
      {
        *(v254 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v336.i64[1] >> -(v339 & 0x3F);
        if ((v339 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = v339 + v337.i64[1];
      v342.i64[0] = 0xF000F000F000FLL;
      v342.i64[1] = 0xF000F000F000FLL;
      v343.i64[0] = -1;
      v343.i64[1] = -1;
      v344 = vandq_s8(vshlq_u16(v343, vaddq_s16(v526, v342)), v507);
      v345 = vmovl_u16(*v526.i8);
      v346 = vmovl_high_u16(v526);
      v347 = vpaddq_s32(vshlq_u32(vmovl_u16(*v344.i8), vtrn1q_s32(0, v345)), vshlq_u32(vmovl_high_u16(v344), vtrn1q_s32(0, v346)));
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
      v355 = (v353.i64[0] << v341) | v340;
      if (v354.i64[0] + (v341 & 0x3F) >= 0x40)
      {
        *(v254 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = v354.i64[0] + v341;
      v357 = v355 | (v353.i64[1] << v356);
      if ((v356 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v254 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
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
      v361 = vandq_s8(vshlq_u16(v360, vaddq_s16(v526, v359)), v509);
      v362 = vmovl_u16(*v526.i8);
      v363 = vmovl_high_u16(v526);
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
        *(v254 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
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
        *(v254 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
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
      v378 = vandq_s8(vshlq_u16(v377, vaddq_s16(v526, v376)), v511);
      v379 = vmovl_u16(*v526.i8);
      v380 = vmovl_high_u16(v526);
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
        *(v254 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v387.i64[0] >> -(v375 & 0x3F);
        if ((v375 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388.i64[1];
      v391 = v388.i64[0] + v375;
      v392 = (v388.i64[0] + v375) & 0x3F;
      v393 = v389 | (v387.i64[1] << v391);
      if ((v392 + v388.i64[1]) >= 0x40)
      {
        *(v254 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v387.i64[1] >> -v392;
        if (!v392)
        {
          v393 = 0;
        }
      }

      v394 = 0;
      v395.i64[0] = 0xF000F000F000FLL;
      v395.i64[1] = 0xF000F000F000FLL;
      v396.i64[0] = -1;
      v396.i64[1] = -1;
      v397 = v391 + v390;
      do
      {
        v398 = vandq_s8(vshlq_u16(v396, vaddq_s16(v527, v395)), *(&v512 + v394));
        v399 = vmovl_u16(*v527.i8);
        v400 = vmovl_high_u16(v527);
        v401 = vpaddq_s32(vshlq_u32(vmovl_u16(*v398.i8), vtrn1q_s32(0, v399)), vshlq_u32(vmovl_high_u16(v398), vtrn1q_s32(0, v400)));
        v402 = vpaddq_s32(v399, v400);
        v403.i64[0] = v401.u32[0];
        v403.i64[1] = v401.u32[1];
        v404 = v403;
        v403.i64[0] = v401.u32[2];
        v403.i64[1] = v401.u32[3];
        v405 = v403;
        v403.i64[0] = v402.u32[0];
        v403.i64[1] = v402.u32[1];
        v406 = v403;
        v403.i64[0] = v402.u32[2];
        v403.i64[1] = v402.u32[3];
        v407 = vpaddq_s64(vshlq_u64(v404, vzip1q_s64(0, v406)), vshlq_u64(v405, vzip1q_s64(0, v403)));
        v408 = vpaddq_s64(v406, v403);
        v409 = (v407.i64[0] << v397) | v393;
        if (v408.i64[0] + (v397 & 0x3F) >= 0x40)
        {
          *(v254 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v407.i64[0] >> -(v397 & 0x3F);
          if ((v397 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v410 = v408.i64[0] + v397;
        v393 = v409 | (v407.i64[1] << v410);
        if ((v410 & 0x3F) + v408.i64[1] >= 0x40)
        {
          *(v254 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
          v393 = v407.i64[1] >> -(v410 & 0x3F);
          if ((v410 & 0x3F) == 0)
          {
            v393 = 0;
          }
        }

        v397 = v410 + v408.i64[1];
        v394 += 16;
      }

      while (v394 != 64);
      v411 = 0;
      v412.i64[0] = 0xF000F000F000FLL;
      v412.i64[1] = 0xF000F000F000FLL;
      v413.i64[0] = -1;
      v413.i64[1] = -1;
      do
      {
        v414 = vandq_s8(vshlq_u16(v413, vaddq_s16(v528, v412)), *(&v516 + v411));
        v415 = vmovl_u16(*v528.i8);
        v416 = vmovl_high_u16(v528);
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
        v425 = (v423.i64[0] << v397) | v393;
        if (v424.i64[0] + (v397 & 0x3F) >= 0x40)
        {
          *(v254 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v423.i64[0] >> -(v397 & 0x3F);
          if ((v397 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v426 = v424.i64[0] + v397;
        v393 = v425 | (v423.i64[1] << v426);
        if ((v426 & 0x3F) + v424.i64[1] >= 0x40)
        {
          *(v254 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
          v393 = v423.i64[1] >> -(v426 & 0x3F);
          if ((v426 & 0x3F) == 0)
          {
            v393 = 0;
          }
        }

        v397 = v426 + v424.i64[1];
        v411 += 16;
      }

      while (v411 != 64);
      v427 = 0;
      v428.i64[0] = 0xF000F000F000FLL;
      v428.i64[1] = 0xF000F000F000FLL;
      v429.i64[0] = -1;
      v429.i64[1] = -1;
      do
      {
        v430 = vandq_s8(vshlq_u16(v429, vaddq_s16(v529, v428)), *(&v520 + v427));
        v431 = vmovl_u16(*v529.i8);
        v432 = vmovl_high_u16(v529);
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
        v441 = (v439.i64[0] << v397) | v393;
        if (v440.i64[0] + (v397 & 0x3F) >= 0x40)
        {
          *(v254 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v439.i64[0] >> -(v397 & 0x3F);
          if ((v397 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v442 = v440.i64[0] + v397;
        v393 = v441 | (v439.i64[1] << v442);
        if ((v442 & 0x3F) + v440.i64[1] >= 0x40)
        {
          *(v254 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
          v393 = v439.i64[1] >> -(v442 & 0x3F);
          if ((v442 & 0x3F) == 0)
          {
            v393 = 0;
          }
        }

        v397 = v442 + v440.i64[1];
        v427 += 16;
      }

      while (v427 != 64);
      if ((v397 & 0x3F) != 0)
      {
        *(v254 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
      }

      result = (v397 - v255 + 7) >> 3;
      v177 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = *a3;
    v177 = 7;
    result = 8;
  }

  *a2 = v177;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    if (a5 >= 2)
    {
      a5 = 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 2;
  if (v7 >= 3 && v6)
  {
    if (v6 >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v7 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 128, a2, v14, v13);
    v9 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v15 = 2 * a2;
  v16 = v6 - 2;
  if (v7 && v6 >= 3)
  {
    if (v16 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v6 - 2;
    }

    if (v7 >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
    v9 += result;
    if (v7 < 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 3)
    {
      goto LABEL_38;
    }
  }

  if (v6 >= 3)
  {
    if (v16 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v6 - 2;
    }

    if (v12 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v7 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 128, a2, v20, v19);
    v9 += result;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v21 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v6;
    }

    if (v21 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 256, a2, v23, v22);
    v9 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v24 = v7 - 6;
  if (v7 >= 7 && v6)
  {
    if (v6 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v6;
    }

    if (v24 >= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v7 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 384, a2, v26, v25);
    v9 += result;
  }

  else
  {
    a4[5] = 0;
    if (v7 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v6 >= 3)
  {
    if (v16 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v6 - 2;
    }

    if (v21 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 256, a2, v28, v27);
    v9 += result;
    if (v7 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v7 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v6 < 3)
  {
    goto LABEL_79;
  }

  if (v16 >= 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = v6 - 2;
  }

  if (v24 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v7 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 384, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v522 = *(a3 + a4 + 48);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = v12;
  v14 = v11;
  v15 = vdupq_lane_s64(*a3, 0);
  v502 = *a3;
  v503 = *(a3 + a4);
  v504 = *(a3 + 16);
  v505 = *(a3 + a4 + 16);
  v512 = vsubq_s16(v503, v15);
  v514 = vsubq_s16(*a3, v15);
  v518 = vsubq_s16(v504, v15);
  v509 = vsubq_s16(v505, v15);
  v16 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v514, v512), v518), v509), xmmword_29D2F1150);
  v17 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v514, v512), v518), v509), xmmword_29D2F1150);
  v18 = vpmaxq_s16(v16, v16);
  v19 = vpminq_s16(v17, v17);
  v20 = vzip1q_s16(v18, v19);
  v21.i64[0] = 0x10001000100010;
  v21.i64[1] = 0x10001000100010;
  v22.i64[0] = 0x10001000100010;
  v22.i64[1] = 0x10001000100010;
  v506 = vbicq_s8(vsubq_s16(v21, vclsq_s16(v20)), vceqzq_s16(v20));
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  v24 = vmaxq_s16(v18, v23);
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  v25 = vminq_s16(v19, v23);
  v26 = vsubq_s16(v9, v15);
  v27 = vsubq_s16(*v8, v15);
  v480 = v9;
  v482 = *v8;
  v483 = v10;
  v28 = vsubq_s16(v10, v15);
  v29 = vsubq_s16(v8[1], v15);
  v30 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v26, v27), v28), v29), xmmword_29D2F1150);
  v31 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v26, v27), v28), v29), xmmword_29D2F1150);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vmaxq_s16(v24, v32);
  v35 = vminq_s16(v25, v33);
  v36 = vzip1q_s16(v32, v33);
  v37 = vbicq_s8(vsubq_s16(v22, vclsq_s16(v36)), vceqzq_s16(v36));
  v38 = vsubq_s16(*(a3 + 32), v15);
  v39 = vsubq_s16(*(a3 + a4 + 32), v15);
  v487 = *(a3 + 32);
  v489 = *(a3 + a4 + 32);
  v490 = *(a3 + 48);
  v40 = vsubq_s16(v490, v15);
  v41 = vsubq_s16(v522, v15);
  v42 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v43 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v38, v39), v40), v41), xmmword_29D2F1150);
  v44 = vpmaxq_s16(v42, v42);
  v45 = vpminq_s16(v43, v43);
  v46 = vmaxq_s16(v34, v44);
  v47 = vminq_s16(v35, v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v22, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vsubq_s16(v14, v15);
  v51 = vsubq_s16(v8[2], v15);
  v491 = v14;
  v493 = v8[2];
  v494 = v13;
  v52 = vsubq_s16(v13, v15);
  v485 = v8[1];
  v486 = v8[3];
  v53 = vsubq_s16(v486, v15);
  v54 = v29;
  v55 = v28;
  v56 = v27;
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v50, v51), v52), v53), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v50, v51), v52), v53), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vmaxq_s16(v46, v59);
  v62 = vminq_s16(v47, v60);
  v63 = vzip1q_s16(v59, v60);
  v64 = vbicq_s8(vsubq_s16(v22, vclsq_s16(v63)), vceqzq_s16(v63));
  v65 = vpmaxq_s16(v506, v506);
  v66 = vpmaxq_s16(v37, v37);
  v67 = vpmaxq_s16(v49, v49);
  v68 = vpmaxq_s16(v64, v64);
  v69 = vmaxq_s16(vmaxq_s16(v65, v66), vmaxq_s16(v67, v68));
  v70 = vclzq_s16(vsubq_s16(v61, v62));
  v71 = vsubq_s16(v22, v70);
  v72 = v40;
  v73 = vcgtq_s16(v69, v71);
  v74 = vminq_s16(v71, v69);
  v69.i64[0] = 0x8000800080008;
  v69.i64[1] = 0x8000800080008;
  v75.i64[0] = 0x3000300030003;
  v75.i64[1] = 0x3000300030003;
  v76 = vorrq_s8(vandq_s8(vceqzq_s16(v74), v75), vandq_s8(v73, v69));
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v74, v65), v75), 0);
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v74, v66), v75), 0);
  v79 = vmaxq_s16(vminq_s16(vsubq_s16(v74, v67), v75), 0);
  v80 = vmaxq_s16(vminq_s16(vsubq_s16(v74, v68), v75), 0);
  v27.i64[0] = 0x4000400040004;
  v27.i64[1] = 0x4000400040004;
  v81 = vbicq_s8(v27, vceqq_s16(vaddq_s16(v80, v79), vnegq_s16(vaddq_s16(v77, v78))));
  v82 = vorrq_s8(v81, v76);
  v543 = v15;
  v523 = v514;
  v525 = v512;
  v527 = v518;
  v529 = v509;
  v534 = v54;
  v535 = v38;
  v539 = v50;
  v83 = vmaxvq_s16(v74);
  v15.i64[0] = 0xF000F000F000FLL;
  v15.i64[1] = 0xF000F000F000FLL;
  v27.i64[0] = -1;
  v27.i64[1] = -1;
  v84 = vshlq_s16(v27, vsubq_s16(v15, v70));
  v531 = v26;
  v532 = v56;
  v499 = v56;
  v533 = v55;
  v507 = v54;
  v510 = v73;
  v536 = v39;
  v537 = v72;
  v495 = v72;
  v497 = v41;
  v538 = v41;
  v540 = v51;
  v86 = a5 < 4 || a6 < 2;
  v541 = v52;
  v542 = v53;
  v550 = v62;
  v549 = v74;
  v87 = vandq_s8(vsubq_s16(v84, v62), v73);
  v551 = v61;
  v552 = v87;
  v545 = vsubq_s16(v74, v77);
  v519 = vsubq_s16(v74, v78);
  v546 = v519;
  v88 = vsubq_s16(v74, v80);
  v515 = vsubq_s16(v74, v79);
  v547 = v515;
  v548 = v88;
  v544 = v82;
  if (v83)
  {
    v461 = v62;
    v462 = v61;
    v476 = v82;
    v478 = v87;
    v89 = vsubq_s16(v531, vqtbl1q_s8(v531, xmmword_29D2F1140));
    v463 = vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1140));
    v90 = vsubq_s16(v533, vqtbl1q_s8(v533, xmmword_29D2F1140));
    v91 = vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1140));
    v92 = vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1140));
    v93 = vsubq_s16(v537, vqtbl1q_s8(v537, xmmword_29D2F1140));
    v94 = vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1140));
    v465 = vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1140));
    v466 = vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1140));
    v467 = vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1140));
    v468 = vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1140));
    v95 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v466, v465), v468), v467), xmmword_29D2F1150);
    v96 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v466, v465), v468), v467), xmmword_29D2F1150);
    v97 = vpmaxq_s16(v95, v95);
    v98 = vpminq_s16(v96, v96);
    v99.i64[0] = 0x8000800080008000;
    v99.i64[1] = 0x8000800080008000;
    v100 = vmaxq_s16(v97, v99);
    v99.i64[0] = 0x8000800080008000;
    v99.i64[1] = 0x8000800080008000;
    v101 = vminq_s16(v98, v99);
    v102 = vzip1q_s16(v97, v98);
    v103.i64[0] = 0x10001000100010;
    v103.i64[1] = 0x10001000100010;
    v104 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v102)), vceqzq_s16(v102));
    v105 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v89, v463), v90), v91);
    v464 = v89;
    v106 = vminq_s16(v89, v463);
    v107 = v90;
    v108 = v91;
    v109 = vqtbl1q_s8(v105, xmmword_29D2F1150);
    v110 = vqtbl1q_s8(vminq_s16(vminq_s16(v106, v107), v91), xmmword_29D2F1150);
    v111 = vpmaxq_s16(v109, v109);
    v112 = vpminq_s16(v110, v110);
    v113 = vmaxq_s16(v100, v111);
    v114 = vminq_s16(v101, v112);
    v115 = vzip1q_s16(v111, v112);
    v116 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v115)), vceqzq_s16(v115));
    v117 = vsubq_s16(v535, vqtbl1q_s8(v535, xmmword_29D2F1140));
    v118 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v117, v92), v93), v94);
    v119 = v92;
    v120 = vminq_s16(v117, v92);
    v121 = v93;
    v122 = vqtbl1q_s8(v118, xmmword_29D2F1150);
    v123 = vqtbl1q_s8(vminq_s16(vminq_s16(v120, v93), v94), xmmword_29D2F1150);
    v124 = vpmaxq_s16(v122, v122);
    v125 = vpminq_s16(v123, v123);
    v126 = vmaxq_s16(v113, v124);
    v127 = vminq_s16(v114, v125);
    v128 = vzip1q_s16(v124, v125);
    v129 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v128)), vceqzq_s16(v128));
    v130 = vsubq_s16(v539, vqtbl1q_s8(v539, xmmword_29D2F1140));
    v472 = vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1140));
    v474 = vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1140));
    v470 = vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1140));
    v131 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v130, v474), v472), v470), xmmword_29D2F1150);
    v132 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v130, v474), v472), v470), xmmword_29D2F1150);
    v133 = vpmaxq_s16(v131, v131);
    v134 = vpminq_s16(v132, v132);
    v135 = vmaxq_s16(v126, v133);
    v136 = vminq_s16(v127, v134);
    v137 = vzip1q_s16(v133, v134);
    v138 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v137)), vceqzq_s16(v137));
    v139 = vpmaxq_s16(v104, v104);
    v140 = vpmaxq_s16(v116, v116);
    v141 = vpmaxq_s16(v129, v129);
    v142 = vpmaxq_s16(v138, v138);
    v143 = vmaxq_s16(vmaxq_s16(v139, v140), vmaxq_s16(v141, v142));
    v144 = vclzq_s16(vsubq_s16(v135, v136));
    v145 = vsubq_s16(v103, v144);
    v146 = vcgtq_s16(v143, v145);
    v147 = vminq_s16(v145, v143);
    v143.i64[0] = 0x18001800180018;
    v143.i64[1] = 0x18001800180018;
    v459 = v146;
    v460 = v136;
    v148 = vbslq_s8(v146, v143, v103);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v139), v75), 0);
    v150 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v140), v75), 0);
    v151 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v141), v75), 0);
    v152 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v142), v75), 0);
    v153.i64[0] = 0x4000400040004;
    v153.i64[1] = 0x4000400040004;
    v154 = vbicq_s8(v153, vceqq_s16(vaddq_s16(v152, v151), vnegq_s16(vaddq_s16(v149, v150))));
    v155 = vsubq_s16(v147, v149);
    v156 = vsubq_s16(v147, v150);
    v157 = vsubq_s16(v147, v151);
    v158 = vsubq_s16(v147, v152);
    v151.i64[0] = 0x7000700070007;
    v151.i64[1] = 0x7000700070007;
    v159 = v88;
    v160 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v74, v510), v545, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v515, v519), v88), 3uLL)), vaddq_s16(v81, v81)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v147, vceqzq_s16((*&v148 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v155, v151), vshlq_n_s16(vaddq_s16(vaddq_s16(v157, v156), v158), 3uLL)), vaddq_s16(v154, v154))).i64[0], 0);
    if (vaddvq_s16(v160))
    {
      v523 = vbslq_s8(v160, v466, v523);
      v525 = vbslq_s8(v160, v465, v512);
      v527 = vbslq_s8(v160, v468, v527);
      v529 = vbslq_s8(v160, v467, v529);
      v531 = vbslq_s8(v160, v464, v531);
      v532 = vbslq_s8(v160, v463, v499);
      v533 = vbslq_s8(v160, v107, v55);
      v534 = vbslq_s8(v160, v108, v507);
      v535 = vbslq_s8(v160, v117, v535);
      v536 = vbslq_s8(v160, v119, v39);
      v161.i64[0] = 0x3000300030003;
      v161.i64[1] = 0x3000300030003;
      v162 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v147), v161), v148), v154);
      v161.i64[0] = 0xF000F000F000FLL;
      v161.i64[1] = 0xF000F000F000FLL;
      v163.i64[0] = -1;
      v163.i64[1] = -1;
      v537 = vbslq_s8(v160, v121, v495);
      v538 = vbslq_s8(v160, v94, v497);
      v539 = vbslq_s8(v160, v130, v539);
      v540 = vbslq_s8(v160, v474, v51);
      v541 = vbslq_s8(v160, v472, v52);
      v542 = vbslq_s8(v160, v470, v53);
      v545 = vbslq_s8(v160, v155, v545);
      v546 = vbslq_s8(v160, v156, v519);
      v547 = vbslq_s8(v160, v157, v515);
      v548 = vbslq_s8(v160, v158, v159);
      v551 = vbslq_s8(v160, v135, v462);
      v552 = vbslq_s8(v160, vandq_s8(vsubq_s16(vshlq_s16(v163, vsubq_s16(v161, v144)), v460), v459), v478);
      v550 = vbslq_s8(v160, v460, v461);
      v549 = vbslq_s8(v160, v147, v74);
      v543 = vbslq_s8(v160, vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1140)), v543);
      v544 = vbslq_s8(v160, v162, v476);
    }

    v164 = v502;
    v165 = v503;
    v166 = v504;
    v167 = v505;
    if (v86)
    {
      v168 = v546;
      v169 = v547;
      v170 = v549;
      v171 = v548;
      v173 = v531;
      v172 = v532;
      v175 = v533;
      v174 = v534;
      v177 = v535;
      v176 = v536;
      v179 = v537;
      v178 = v538;
      v180 = v539;
      v181 = v540;
      v182 = v541;
      v183 = v542;
      v184 = v545;
      v185 = v544;
      v187 = v523;
      v186 = v525;
      v189 = v527;
      v188 = v529;
    }

    else
    {
      v191 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v192 = vsubq_s16(v502, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v193 = vsubq_s16(v503, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v194 = vsubq_s16(v504, v191);
      v516 = vsubq_s16(v505, v191);
      v553.val[0] = v480;
      v553.val[1] = v482;
      v553.val[2] = v483;
      v553.val[3].i64[0] = v485.i64[0];
      v553.val[3].i64[1] = v505.i64[1];
      v195 = vqtbl4q_s8(v553, xmmword_29D2F1100);
      v520 = vsubq_s16(v480, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v196 = vsubq_s16(v482, vqtbl4q_s8(v553, xmmword_29D2F10F0));
      v197 = vsubq_s16(v483, vqtbl4q_s8(v553, xmmword_29D2F1160));
      v553.val[0] = v487;
      v553.val[1] = v489;
      v553.val[2] = v490;
      v553.val[3].i64[0] = v522.i64[0];
      v553.val[3].i64[1] = v505.i64[1];
      v198 = vsubq_s16(v485, v195);
      v199 = vqtbl4q_s8(v553, xmmword_29D2F10C0);
      v200 = vsubq_s16(v487, vqtbl4q_s8(v553, xmmword_29D2F1170));
      v488 = vsubq_s16(v489, vqtbl4q_s8(v553, xmmword_29D2F1180));
      v553.val[2] = vsubq_s16(v490, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v201 = v491;
      v202 = v493;
      v553.val[0] = v494;
      v553.val[1].i64[0] = v486.i64[0];
      v553.val[1].i64[1] = v505.i64[1];
      v203 = vsubq_s16(v491, vqtbl4q_s8(v553, xmmword_29D2F1170));
      v204 = vsubq_s16(v493, vqtbl4q_s8(v553, xmmword_29D2F1120));
      v205 = vsubq_s16(v494, vqtbl4q_s8(v553, xmmword_29D2F10B0));
      v206.i64[0] = v516.i64[0];
      v206.i64[1] = v192.i64[0];
      v192.i64[0] = v516.i64[1];
      v207 = vsubq_s16(v486, vqtbl4q_s8(v553, xmmword_29D2F10C0));
      v521 = v193;
      v500 = v192;
      v517 = v194;
      v208 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v192, v193), v194), v206), xmmword_29D2F1150);
      v209 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v192, v193), v194), v206), xmmword_29D2F1150);
      v210 = vpmaxq_s16(v208, v208);
      v211 = vpminq_s16(v209, v209);
      v212.i64[0] = 0x8000800080008000;
      v212.i64[1] = 0x8000800080008000;
      v213 = vmaxq_s16(v210, v212);
      v214.i64[0] = 0x8000800080008000;
      v214.i64[1] = 0x8000800080008000;
      v215 = vminq_s16(v211, v214);
      v216 = vzip1q_s16(v210, v211);
      v210.i64[0] = 0x10001000100010;
      v210.i64[1] = 0x10001000100010;
      v217 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v216)), vceqzq_s16(v216));
      v218 = vpmaxq_s16(v217, v217);
      v511 = v197;
      v513 = v196;
      v508 = v198;
      v219 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v520, v196), v197), v198), xmmword_29D2F1150);
      v220 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v520, v196), v197), v198), xmmword_29D2F1150);
      v221 = vpmaxq_s16(v219, v219);
      v222 = vpminq_s16(v220, v220);
      v223 = vmaxq_s16(v213, v221);
      v224 = vminq_s16(v215, v222);
      v225 = vzip1q_s16(v221, v222);
      v226 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v225)), vceqzq_s16(v225));
      v227 = vpmaxq_s16(v226, v226);
      v501 = v200;
      v496 = vsubq_s16(v522, v199);
      v498 = v553.val[2];
      v228 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v200, v488), v553.val[2]), v496), xmmword_29D2F1150);
      v553.val[0] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v200, v488), v553.val[2]), v496), xmmword_29D2F1150);
      v229 = vpmaxq_s16(v228, v228);
      v553.val[0] = vpminq_s16(v553.val[0], v553.val[0]);
      v230 = vmaxq_s16(v223, v229);
      v231 = vminq_s16(v224, v553.val[0]);
      v232 = vzip1q_s16(v229, v553.val[0]);
      v233 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v232)), vceqzq_s16(v232));
      v234 = vpmaxq_s16(v233, v233);
      v553.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v203, v204), v205), v207), xmmword_29D2F1150);
      v235 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v203, v204), v205), v207), xmmword_29D2F1150);
      v553.val[0] = vpmaxq_s16(v553.val[0], v553.val[0]);
      v236 = vpminq_s16(v235, v235);
      v237 = vmaxq_s16(v230, v553.val[0]);
      v553.val[1] = vminq_s16(v231, v236);
      v238 = vzip1q_s16(v553.val[0], v236);
      v239 = vbicq_s8(vsubq_s16(v210, vclsq_s16(v238)), vceqzq_s16(v238));
      v240 = vpmaxq_s16(v239, v239);
      v241 = vmaxq_s16(vmaxq_s16(v218, v227), vmaxq_s16(v234, v240));
      v492 = v553.val[1];
      v475 = vclzq_s16(vsubq_s16(v237, v553.val[1]));
      v242 = vsubq_s16(v210, v475);
      v243 = vcgtq_s16(v241, v242);
      v244 = vminq_s16(v242, v241);
      v242.i64[0] = 0x3000300030003;
      v242.i64[1] = 0x3000300030003;
      v245 = vmaxq_s16(vminq_s16(vsubq_s16(v244, v218), v242), 0);
      v246 = vmaxq_s16(vminq_s16(vsubq_s16(v244, v227), v242), 0);
      v247 = vmaxq_s16(vminq_s16(vsubq_s16(v244, v234), v242), 0);
      v248 = vmaxq_s16(vminq_s16(vsubq_s16(v244, v240), v242), 0);
      v553.val[0] = vsubq_s16(v244, v246);
      v216.i64[0] = 0x4000400040004;
      v216.i64[1] = 0x4000400040004;
      v249 = vbicq_s8(v216, vceqq_s16(vaddq_s16(v248, v247), vnegq_s16(vaddq_s16(v245, v246))));
      v246.i64[0] = 0x7000700070007;
      v246.i64[1] = 0x7000700070007;
      v479 = vsubq_s16(v244, v247);
      v481 = v553.val[0];
      v477 = vsubq_s16(v244, v248);
      v484 = vsubq_s16(v244, v245);
      v250 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v244, v243), v484, v246), vshlq_n_s16(vaddq_s16(vaddq_s16(v479, v553.val[0]), v477), 3uLL)), vaddq_s16(v249, v249));
      v185 = v544;
      v184 = v545;
      v251 = vandq_s8(v544, v242);
      v242.i64[0] = 0x2000200020002;
      v242.i64[1] = 0x2000200020002;
      v252 = vandq_s8(vceqq_s16(v251, v242), v210);
      v210.i64[0] = 0x8000800080008;
      v210.i64[1] = 0x8000800080008;
      v253 = vandq_s8(vaddq_s16(v185, v185), v210);
      v553.val[0] = vceqzq_s16(vandq_s8(v544, v210));
      v170 = v549;
      v171 = v548;
      v254 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v549, v553.val[0]), v253), v252), v545, v246);
      v168 = v546;
      v169 = v547;
      v255 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v254, vshlq_n_s16(vaddq_s16(vaddq_s16(v547, v546), v548), 3uLL)), v250).i64[0], 0);
      v173 = v531;
      v172 = v532;
      v175 = v533;
      v174 = v534;
      v177 = v535;
      v176 = v536;
      v179 = v537;
      v178 = v538;
      v180 = v539;
      v181 = v540;
      v182 = v541;
      v183 = v542;
      v187 = v523;
      v186 = v525;
      v189 = v527;
      v188 = v529;
      if (vaddvq_s16(v255))
      {
        v471 = v207;
        v473 = v237;
        v256 = v203;
        v469 = v205;
        v257.i64[0] = 0x2000200020002;
        v257.i64[1] = 0x2000200020002;
        v258 = vandq_s8(vceqzq_s16(v244), v257);
        v257.i64[0] = 0x9000900090009;
        v257.i64[1] = 0x9000900090009;
        v259 = vorrq_s8(vorrq_s8(v258, vsubq_s16(vandq_s8(v243, v257), vmvnq_s8(v243))), v249);
        v257.i64[0] = 0xF000F000F000FLL;
        v257.i64[1] = 0xF000F000F000FLL;
        v260.i64[0] = -1;
        v260.i64[1] = -1;
        v187 = vbslq_s8(v255, v500, v523);
        v186 = vbslq_s8(v255, v521, v525);
        v189 = vbslq_s8(v255, v517, v527);
        v188 = vbslq_s8(v255, v206, v529);
        v173 = vbslq_s8(v255, v520, v531);
        v172 = vbslq_s8(v255, v513, v532);
        v175 = vbslq_s8(v255, v511, v533);
        v174 = vbslq_s8(v255, v508, v534);
        v177 = vbslq_s8(v255, v501, v535);
        v176 = vbslq_s8(v255, v488, v536);
        v179 = vbslq_s8(v255, v498, v537);
        v178 = vbslq_s8(v255, v496, v538);
        v180 = vbslq_s8(v255, v256, v539);
        v181 = vbslq_s8(v255, v204, v540);
        v182 = vbslq_s8(v255, v469, v541);
        v183 = vbslq_s8(v255, v471, v542);
        v184 = vbslq_s8(v255, v484, v545);
        v168 = vbslq_s8(v255, v481, v546);
        v169 = vbslq_s8(v255, v479, v547);
        v171 = vbslq_s8(v255, v477, v548);
        v170 = vbslq_s8(v255, v244, v549);
        v185 = vbslq_s8(v255, v259, v544);
        v543 = vbslq_s8(v255, vextq_s8(v505, v505, 8uLL), v543);
        v550 = vbslq_s8(v255, v492, v550);
        v551 = vbslq_s8(v255, v473, v551);
        v552 = vbslq_s8(v255, vandq_s8(vsubq_s16(vshlq_s16(v260, vsubq_s16(v257, v475)), v492), v243), v552);
        v531 = v173;
        v546 = v168;
        v547 = v169;
        v548 = v171;
        v549 = v170;
        v545 = v184;
        v544 = v185;
      }
    }

    v261 = vandq_s8(v552, vceqq_s16(v170, v184));
    v524 = vaddq_s16(v261, v187);
    v526 = vaddq_s16(v186, v261);
    v528 = vaddq_s16(v189, v261);
    v530 = vaddq_s16(v188, v261);
    v262 = vandq_s8(v552, vceqq_s16(v170, v168));
    v531 = vaddq_s16(v173, v262);
    v532 = vaddq_s16(v172, v262);
    v533 = vaddq_s16(v175, v262);
    v534 = vaddq_s16(v174, v262);
    v263 = vandq_s8(v552, vceqq_s16(v170, v169));
    v535 = vaddq_s16(v177, v263);
    v536 = vaddq_s16(v176, v263);
    v537 = vaddq_s16(v179, v263);
    v538 = vaddq_s16(v178, v263);
    v264 = vandq_s8(v552, vceqq_s16(v170, v171));
    v539 = vaddq_s16(v180, v264);
    v540 = vaddq_s16(v181, v264);
    v541 = vaddq_s16(v182, v264);
    v542 = vaddq_s16(v183, v264);
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
    if ((vpaddq_s16(v270, v270).i16[0] - 925) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
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
      v274 = v543.i64[0];
      v275.i32[0] = v170.u16[0];
      v275.i32[1] = v170.u16[1];
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
      if (v170.i16[2])
      {
        v282 = (v170.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v282 = 0;
      }

      if (v170.i16[3])
      {
        v283 = ((v170.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v283 = 0;
      }

      v284 = vorrq_s8(vdupq_laneq_s64(v281, 1), v281).u64[0] | v282 | v283 | ((v185.i8[6] & 0x1F) << 15) | v185.i8[0] & 0x1F | (32 * (v185.i8[2] & 0x1F)) & 0x83FF | ((v185.i8[4] & 0x1F) << 10);
      v285 = v273 | (v284 << v272);
      if (v272 >= 0x1C)
      {
        *v271 = v285;
        v285 = v284 >> (-8 * (a1 & 7u));
      }

      v286 = v274 | (WORD1(v274) << 16) | (WORD2(v274) << 32) | (HIWORD(v274) << 48);
      v287 = (v272 + 36) & 0x3C;
      *(v271 + (((v272 + 36) >> 3) & 8)) = v285 | (v286 << v287);
      v288 = v272 + 100;
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
      v317 = (v272 + 100) & 0x3C;
      v318 = (v315.i64[0] << v317) | (v286 >> -v287);
      if ((v316.i64[0] + v317) >= 0x40)
      {
        *(v271 + ((v288 >> 3) & 0x18)) = v318;
        v318 = v315.i64[0] >> -v317;
      }

      v319 = v316.i64[0] + v288;
      v320 = v318 | (v315.i64[1] << v319);
      if ((v319 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v271 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
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
        *(v271 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
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
        *(v271 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
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
        *(v271 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
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
        *(v271 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
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
        *(v271 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
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
        *(v271 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
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
        *(v271 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
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
        *(v271 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
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
        *(v271 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
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
        *(v271 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
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
          *(v271 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
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
          *(v271 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
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
          *(v271 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
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
          *(v271 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
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
          *(v271 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
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
          *(v271 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
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
        *(v271 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
      }

      result = (v413 - v272 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v82 = *MEMORY[0x29EDCA608];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v68;
        v23 = (a3 + 8);
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
            v25 += 4;
            v24 += 2;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 = (v22 + 8);
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v68;
        v30 = (a3 + 8);
        v31 = &v66 + 4 * ((a5 >> 1) & 0x3F);
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
            v33 += 4;
            v32 += 2;
            v34 -= 2;
          }

          while (v34);
          v36 = (a3 + v28 * a4 + 8 * v20);
          v37 = v31;
          v38 = a5 - v20;
          do
          {
            v39 = *v36++;
            *v37 = v39;
            v37 += 2;
            --v38;
          }

          while (v38);
          ++v28;
          v29 = (v29 + 8);
          v30 = (v30 + a4);
          v31 = (v31 + 8);
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
      v13 = &v66 + 1;
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
        v18 = &v66 + v11;
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

  v58 = vmovl_u16(*&v66);
  v59 = vmovl_u16(*&v68);
  v60 = vmovl_u16(*(&v66 + 8));
  v61 = vmovl_u16(*(&v68 + 8));
  v62 = vmovl_u16(*&v70);
  v63 = vmovl_u16(*&v72);
  v40 = vmovl_u16(*(&v70 + 8));
  v41 = vmovl_u16(*(&v72 + 8));
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

  v64 = v40;
  v65 = v41;
  if (a6 >= 2)
  {
    v45 = a6 - 2;
  }

  else
  {
    v45 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v42, v44);
  v58 = vmovl_u16(*&v67);
  v59 = vmovl_u16(*&v69);
  v60 = vmovl_u16(*(&v67 + 8));
  v61 = vmovl_u16(*(&v69 + 8));
  v62 = vmovl_u16(*&v71);
  v63 = vmovl_u16(*&v73);
  v64 = vmovl_u16(*(&v71 + 8));
  v65 = vmovl_u16(*(&v73 + 8));
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v45;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v58, a7, v42, v47);
  v58 = vmovl_u16(*&v74);
  v59 = vmovl_u16(*&v76);
  v60 = vmovl_u16(*(&v74 + 8));
  v61 = vmovl_u16(*(&v76 + 8));
  v62 = vmovl_u16(*&v78);
  v63 = vmovl_u16(*&v80);
  v49 = vmovl_u16(*(&v78 + 8));
  v50 = vmovl_u16(*(&v80 + 8));
  if (a5 >= 8)
  {
    v51 = 4;
  }

  else
  {
    v51 = v43;
  }

  v64 = v49;
  v65 = v50;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v58, a7, v51, v44);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v58, a7, v51, v47);
  if (v52)
  {
    v54 = 4;
  }

  else
  {
    v54 = 0;
  }

  if (v48)
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  if (result)
  {
    v56 = -8;
  }

  else
  {
    v56 = -16;
  }

  *a2 = v56 | v54 | v46 | v55;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v291 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F2700, 0x10uLL);
  memset_pattern16(v280, &unk_29D2F2710, 0x10uLL);
  memset_pattern16(v279, &unk_29D2F26F0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v263 = v10;
  v11 = a4 < 2 || a5 == 0;
  v262 = v11;
  v12 = a4 < 2 || a5 < 2;
  v261 = v12;
  v13 = a4 < 3 || a5 == 0;
  v260 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v18 = (v17 + v9 * 4);
    v19 = *(a2 + v9 * 4);
    if (a3 == 1)
    {
      v28 = &v282[v9];
      if (v19 == 32769)
      {
        v19 = 0;
      }

      else
      {
        v19 ^= 0x8000u;
      }

      *v28 = v19;
      v29 = *(v18 - 12);
      if (v29 == 32769)
      {
        v21 = 0;
      }

      else
      {
        v21 = v29 ^ 0x8000;
      }

      v28[4] = v21;
      v30 = *(v18 - 8);
      if (v30 == 32769)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30 ^ 0x8000;
      }

      v28[8] = v22;
      v31 = *(v18 - 4);
      v23 = v31 ^ 0x8000;
      if (v31 == 32769)
      {
        v23 = 0;
      }

      v28[12] = v23;
      if (*v18 == 32769)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v18 ^ 0x8000;
      }

      v28[16] = v24;
      v32 = v18[4];
      if (v32 == 32769)
      {
        v25 = 0;
      }

      else
      {
        v25 = v32 ^ 0x8000;
      }

      v28[20] = v25;
      v33 = v18[8];
      v26 = v33 ^ 0x8000;
      if (v33 == 32769)
      {
        v26 = 0;
      }

      v28[24] = v26;
      v34 = v18[12];
      v27 = v34 ^ 0x8000;
      if (v34 == 32769)
      {
        v27 = 0;
      }

      v28[28] = v27;
    }

    else
    {
      if (a3 == 3)
      {
        v19 ^= 0x8000u;
        v20 = &v282[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48) ^ 0x8000;
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32) ^ 0x8000;
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16) ^ 0x8000;
        v20[12] = v23;
        v24 = *(v17 + v9 * 4) ^ 0x8000;
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16) ^ 0x8000;
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32) ^ 0x8000;
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48) ^ 0x8000;
      }

      else
      {
        v20 = &v282[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48);
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32);
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16);
        v20[12] = v23;
        v24 = *(v17 + v9 * 4);
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16);
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32);
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48);
      }

      v20[28] = v27;
    }

    v35 = &v286[v9 + 4];
    v286[v9 + 4] = v19;
    v286[v9 + 8] = v19;
    v286[v9] = 0;
    if (v262)
    {
      v36 = v19;
      if (v263)
      {
        goto LABEL_65;
      }

LABEL_60:
      if (v22 < v36)
      {
        v286[v9] = 2;
        v286[v9 + 8] = v22;
        v36 = v22;
      }

      v38 = &v282[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v286[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_65;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v286[v9] = 1;
      v286[v9 + 8] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v286[v9 + 4];
    }

    else
    {
      v37 = &v282[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v263)
    {
      goto LABEL_60;
    }

LABEL_65:
    if (v261)
    {
      if (v13)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v286[v9] = 3;
        v286[v9 + 8] = v23;
        v36 = v23;
      }

      v39 = &v282[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v286[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_67:
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    if (v24 < v36)
    {
      v286[v9] = 4;
      v286[v9 + 8] = v24;
      v36 = v24;
    }

    v40 = &v282[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v286[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_68:
      if (v14)
      {
        goto LABEL_69;
      }

      goto LABEL_86;
    }

LABEL_81:
    if (v25 < v36)
    {
      v286[v9] = 5;
      v286[v9 + 8] = v25;
      v36 = v25;
    }

    v41 = &v282[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v286[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_69:
      if (v16)
      {
        goto LABEL_96;
      }

LABEL_91:
      if (v27 < v36)
      {
        v286[v9] = 7;
        v286[v9 + 8] = v27;
        v36 = v27;
      }

      v43 = &v282[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v286[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_96;
    }

LABEL_86:
    if (v26 < v36)
    {
      v286[v9] = 6;
      v286[v9 + 8] = v26;
      v36 = v26;
    }

    v42 = &v282[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v286[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_91;
    }

LABEL_96:
    v44 = __clz(v19 - v36);
    v45 = 32 - v44;
    if (32 - v44 <= 1)
    {
      v45 = 1;
    }

    v46 = v45 - 1;
    if (v44 == 31 && v19 == 0xFFFF)
    {
      v46 = 1;
    }

    v283[v9] = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (!(v36 >> 15) && v19 >= 0x8000)
      {
        v48 = kDQuadParamTable[10 * v46 + 488] == 0;
      }

      if (v46 <= 0xC)
      {
LABEL_111:
        if (!v48)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v48 = 0;
      if (v46 <= 0xC)
      {
        goto LABEL_111;
      }
    }

    v49 = kDQuadParamTable[10 * v46 + 484] - v48;
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = -2;
    }

    if (v49 >= 0x10)
    {
      v51 = 0;
    }

    else
    {
      v51 = v36 & ~(-1 << (16 - v49));
    }

    v52 = v51 + v50;
    v53 = __clz(v52 + v19 - v36);
    if (v52 >= 1 && v53 < v44)
    {
      v283[v9] = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v278[0] = 0;
  v278[1] = 0;
  v277[0] = 0;
  v277[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v280, v283, v278, v277);
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
  v58 = 0x30u;
  while (2)
  {
    v60 = *(v277 + v58);
    v61 = v282[v58 / 4 + 20];
    v62 = &kDQuadParamTable[160 * v60 + 10 * v61];
    v63 = *(v62 + 1);
    v65 = v62[4];
    v64 = v62[5];
    *(&v266 + v58) = v65;
    v66 = &v269 + v58;
    *(&v265 + v58) = v64;
    v67 = *(&v267 + v58) - *(&v269 + v58);
    if (v67 < 0)
    {
      v69 = &kDQuadParamTable[160 * v60 + 10 * v61];
      if (v69[7] < (*(&v269 + v58) - *(&v267 + v58)))
      {
        *(v66 - 12) = --v64;
        if (!v69[8])
        {
          v68 = -1;
LABEL_137:
          *(&v266 + v58) = v68 + v65;
        }
      }
    }

    else if (v67)
    {
      v64 += v67;
      *(v66 - 12) = v64;
      v68 = v67;
      goto LABEL_137;
    }

    if (v60 == 5 && v61 == 1)
    {
      v55 |= v67 < 2;
    }

    if (a3 == 4)
    {
      v70 = 1 << (v286[v58 / 4] - 1);
      if (v60 == 3)
      {
        v71 = -31745;
      }

      else
      {
        v71 = -1;
      }

      if (v60 == 4)
      {
        v72 = -2139095041;
      }

      else
      {
        v72 = v71;
      }

      if (v57)
      {
        if (v262)
        {
          goto LABEL_152;
        }

LABEL_166:
        v76 = *(&v281[6] + v58);
        v78 = (v76 | v72) == 0xFFFFFFFF || v76 == v70;
        v55 |= v78;
        if (!v263)
        {
          goto LABEL_173;
        }

LABEL_153:
        if (v261)
        {
          goto LABEL_154;
        }

LABEL_180:
        v82 = v282[v58 / 4];
        v84 = (v82 | v72) == 0xFFFFFFFF || v82 == v70;
        v55 |= v84;
        if (!v260)
        {
          goto LABEL_187;
        }

LABEL_155:
        if (v15)
        {
          goto LABEL_156;
        }

LABEL_194:
        v88 = v282[v58 / 4 + 8];
        v90 = (v88 | v72) == 0xFFFFFFFF || v88 == v70;
        v55 |= v90;
        if (!v14)
        {
          goto LABEL_201;
        }

LABEL_157:
        if (!v16)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v73 = *(&v281[5] + v58);
        v75 = (v73 | v72) == 0xFFFFFFFF || v73 == v70;
        v55 |= v75;
        if (!v262)
        {
          goto LABEL_166;
        }

LABEL_152:
        if (v263)
        {
          goto LABEL_153;
        }

LABEL_173:
        v79 = *(&v281[7] + v58);
        v81 = (v79 | v72) == 0xFFFFFFFF || v79 == v70;
        v55 |= v81;
        if (!v261)
        {
          goto LABEL_180;
        }

LABEL_154:
        if (v260)
        {
          goto LABEL_155;
        }

LABEL_187:
        v85 = v282[v58 / 4 + 4];
        v87 = (v85 | v72) == 0xFFFFFFFF || v85 == v70;
        v55 |= v87;
        if (!v15)
        {
          goto LABEL_194;
        }

LABEL_156:
        if (v14)
        {
          goto LABEL_157;
        }

LABEL_201:
        v91 = v282[v58 / 4 + 12];
        v93 = (v91 | v72) == 0xFFFFFFFF || v91 == v70;
        v55 |= v93;
        if (!v16)
        {
LABEL_208:
          v94 = v282[v58 / 4 + 16];
          v96 = (v94 | v72) == 0xFFFFFFFF || v94 == v70;
          v55 |= v96;
        }
      }
    }

    if (v63 >> v64 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)18,(AGXTextureFootprint)3>::lossyFallBackInfo + v58))
    {
      v59 = 1;
    }

    else
    {
      v59 = v57;
    }

    v55 |= v59;
    v58 += 4;
    if (v58 != 64)
    {
      continue;
    }

    break;
  }

  v97 = 0;
  v267 = 0;
  v268 = 0;
  v265 = 0u;
  v266 = 0u;
  memset(v264, 0, sizeof(v264));
  v98 = v282;
  v99 = v281;
  do
  {
    v100 = 0;
    v101 = 0;
    v102 = *(&__b + v97);
    if (v102 >= *(&v273 + v97))
    {
      v103 = *(&v273 + v97);
    }

    else
    {
      v103 = *(&__b + v97);
    }

    *(&v273 + v97) = v103;
    v104 = -1 << v102;
    v105 = &kDQuadParamTable[160 * v280[v97] + 10 * v283[v97]];
    if (v105[5])
    {
      v106 = v102;
    }

    else
    {
      v106 = 0;
    }

    if (v106 >= *(&v269 + v97))
    {
      v106 = *(&v269 + v97);
    }

    *(&v269 + v97) = v106;
    v107 = *(v105 + 1);
    v108 = v286[v97 + 8] & (-1 << (v102 - v103));
    *(&v267 + v97) = v108;
    v109 = v107 >> v106;
    v110 = &v282[v97];
    v111 = *v110 - v108;
    v112 = &v281[2 * v97];
    if (v57)
    {
      v111 = 0;
    }

    v113 = v110[4] - v108;
    if (v262)
    {
      v113 = 0;
    }

    *v112 = v111;
    v112[1] = v113;
    v114 = v110[8] - v108;
    if (v263)
    {
      v114 = 0;
    }

    v115 = v110[12] - v108;
    if (v261)
    {
      v115 = 0;
    }

    v112[2] = v114;
    v112[3] = v115;
    v116 = v110[16] - v108;
    if (v260)
    {
      v116 = 0;
    }

    v117 = v110[20] - v108;
    if (v15)
    {
      v117 = 0;
    }

    v112[4] = v116;
    v112[5] = v117;
    v118 = v110[24] - v108;
    if (v14)
    {
      v118 = 0;
    }

    v119 = v110[28] - v108;
    if (v16)
    {
      v119 = 0;
    }

    v112[6] = v118;
    v112[7] = v119;
    if (v109 <= 1)
    {
      v120 = 1;
    }

    else
    {
      v120 = v109;
    }

    v121 = 4 * v286[v97];
    v122 = v264 + 28 * v97;
    v123 = &byte_29D2F3081;
    do
    {
      if (v121 != v100)
      {
        if (v106)
        {
          v124 = *(v99 + v100) / v120;
        }

        else
        {
          LODWORD(v124) = 0;
        }

        *&v122[4 * v101] = v124;
        if (v109 >= 2)
        {
          v125 = *(v99 + v100);
          if (v125)
          {
            if (v125 / v120 * v120 == v125 && ((v125 / v120) & 1) != 0)
            {
              if (v108 || v124 != 1)
              {
                if ((a3 | 2) != 3 || (v127 = v98[v100], v128 = v279[v97], v127 != v128) && ((a3 | 2) != 3 || v120 + v128 != v127))
                {
                  LODWORD(v124) = v124 - 1;
                  *&v122[4 * v101] = v124;
                }
              }

              else
              {
                LODWORD(v124) = 1;
              }
            }
          }
        }

        if (v124 >> v106 || (v98[v100] ^ v104) == 0xFFFFFFFF)
        {
          *&v122[4 * v101] = ~(-1 << v106);
        }

        if (*v123 >= a5 || *(v123 - 1) >= a4)
        {
          *&v122[4 * v101] = 0;
        }

        ++v101;
      }

      v100 += 4;
      v123 += 2;
    }

    while (v100 != 32);
    ++v97;
    v99 += 2;
    ++v98;
  }

  while (v97 != 4);
  v129 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v130 = 8 * (a1 & 7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v55)
  {
    v131 = 0;
    v132 = 0;
    v133 = __b;
    v134 = v288;
    v135 = __b - 8;
    v136 = v288 - 8;
    v138 = v289;
    v137 = v290;
    v139 = v289 - 8;
    v140 = v290 - 8;
    v141 = 8 * (a1 & 7);
    while (1)
    {
      v142 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v131;
      v143 = v142[1] < a5 && a4 > *v142;
      v144 = !v143;
      if (v143)
      {
        v145 = v282[4 * v131] >> 8;
        if (v135 > 0x100)
        {
          goto LABEL_292;
        }
      }

      else
      {
        v145 = 0;
        if (v135 > 0x100)
        {
          goto LABEL_292;
        }
      }

      if (v133 != 8 && (v141 - v130 + (v132 << 6) + v135) <= 0x100)
      {
        v146 = 0;
        v147 = v133 - 8;
        do
        {
          v148 = 64 - v141;
          if (64 - v141 >= v147)
          {
            v148 = v147;
          }

          v129[v132] |= ((v145 >> v146) & ~(-1 << v148)) << v141;
          v146 += v148;
          v149 = v148 + v141;
          v132 += v149 >> 6;
          v141 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

LABEL_292:
      v150 = &v282[4 * v131];
      if (v144)
      {
        v151 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_302;
        }
      }

      else
      {
        v151 = v150[1] >> 8;
        if (v136 > 0x100)
        {
          goto LABEL_302;
        }
      }

      if (v134 != 8 && (v141 - v130 + (v132 << 6) + v136) <= 0x100)
      {
        v152 = 0;
        v153 = v134 - 8;
        do
        {
          v154 = 64 - v141;
          if (64 - v141 >= v153)
          {
            v154 = v153;
          }

          v129[v132] |= ((v151 >> v152) & ~(-1 << v154)) << v141;
          v152 += v154;
          v155 = v154 + v141;
          v132 += v155 >> 6;
          v141 = v155 & 0x3F;
          v153 -= v154;
        }

        while (v153);
      }

LABEL_302:
      if (v144)
      {
        v156 = 0;
        if (v139 > 0x100)
        {
          goto LABEL_312;
        }
      }

      else
      {
        v156 = v150[2] >> 8;
        if (v139 > 0x100)
        {
          goto LABEL_312;
        }
      }

      if (v138 != 8 && (v141 - v130 + (v132 << 6) + v139) <= 0x100)
      {
        v157 = 0;
        v158 = v138 - 8;
        do
        {
          v159 = 64 - v141;
          if (64 - v141 >= v158)
          {
            v159 = v158;
          }

          v129[v132] |= ((v156 >> v157) & ~(-1 << v159)) << v141;
          v157 += v159;
          v160 = v159 + v141;
          v132 += v160 >> 6;
          v141 = v160 & 0x3F;
          v158 -= v159;
        }

        while (v158);
      }

LABEL_312:
      if (v144)
      {
        v161 = 0;
        if (v140 <= 0x100)
        {
          goto LABEL_316;
        }
      }

      else
      {
        v161 = v150[3] >> 8;
        if (v140 <= 0x100)
        {
LABEL_316:
          if (v137 != 8 && (v141 - v130 + (v132 << 6) + v140) <= 0x100)
          {
            v162 = 0;
            v163 = v137 - 8;
            do
            {
              v164 = 64 - v141;
              if (64 - v141 >= v163)
              {
                v164 = v163;
              }

              v129[v132] |= ((v161 >> v162) & ~(-1 << v164)) << v141;
              v162 += v164;
              v165 = v164 + v141;
              v132 += v165 >> 6;
              v141 = v165 & 0x3F;
              v163 -= v164;
            }

            while (v163);
          }
        }
      }

      if (++v131 == 8)
      {
        return v55 & 1;
      }
    }
  }

  v166 = v283[0];
  v167 = v283[1];
  v168 = ((v283[0] & 0xF) << v130) | *v129;
  *v129 = v168;
  v169 = v130 | 4;
  if ((v130 | 4uLL) - v130 - 253 <= 0xFFFFFFFFFFFFFEFELL)
  {
    v170 = 0;
    v171 = v284;
    goto LABEL_326;
  }

  *v129 = ((v167 & 0xF) << v169) | v168;
  v169 = (v130 + 8) & 0x38;
  v170 = (v130 + 8) >> 6;
  v172 = (v130 + 8) & 0x40;
  v171 = v284;
  if ((v172 + v169 - v130 + 4) < 0x101)
  {
    v257 = ((v284 & 0xF) << v169) | v129[v170];
    v129[v170] = v257;
    v174 = v169 | 4;
    v258 = (v169 | 4) - v130 + v172 + 4;
    v173 = v285;
    if (v258 <= 0x100)
    {
      v129[v170] = ((v285 & 0xF) << v174) | v257;
      v170 += (v169 + 8) >> 6;
      v174 = (v169 + 8) & 0x38;
    }
  }

  else
  {
LABEL_326:
    v173 = v285;
    v174 = v169;
  }

  if (v166 || __b == 2 || __b >= 0x10)
  {
    v175 = v273;
    if (v273 <= 0x100 && v273 && v174 - v130 + (v170 << 6) + v273 <= 0x100)
    {
      v176 = 0;
      v177 = v267 >> (__b - v273);
      v178 = v273;
      do
      {
        v179 = 64 - v174;
        if (64 - v174 >= v178)
        {
          v179 = v178;
        }

        v129[v170] |= ((v177 >> v176) & ~(-1 << v179)) << v174;
        v176 += v179;
        v180 = v179 + v174;
        v170 += v180 >> 6;
        v174 = v180 & 0x3F;
        v178 -= v179;
      }

      while (v178);
    }

    v181 = v175 + 16;
    v182 = v288;
    if (v167)
    {
      goto LABEL_336;
    }

LABEL_440:
    if (v182 == 2 || v182 >= 0x10)
    {
      goto LABEL_336;
    }
  }

  else
  {
    v181 = 16;
    v182 = v288;
    if (!v167)
    {
      goto LABEL_440;
    }

LABEL_336:
    v183 = v274;
    if (v274 <= 0x100 && v274 && v174 - v130 + (v170 << 6) + v274 <= 0x100)
    {
      v184 = 0;
      v185 = (HIDWORD(v267) >> (v182 - v274));
      v186 = v274;
      do
      {
        v187 = 64 - v174;
        if (64 - v174 >= v186)
        {
          v187 = v186;
        }

        v129[v170] |= ((v185 >> v184) & ~(-1 << v187)) << v174;
        v184 += v187;
        v188 = v187 + v174;
        v170 += v188 >> 6;
        v174 = v188 & 0x3F;
        v186 -= v187;
      }

      while (v186);
    }

    v181 += v183;
  }

  if (v171 || v289 == 2 || v289 >= 0x10)
  {
    v189 = v275;
    if (v275 <= 0x100 && v275 && v174 - v130 + (v170 << 6) + v275 <= 0x100)
    {
      v190 = 0;
      v191 = v268 >> (v289 - v275);
      v192 = v275;
      do
      {
        v193 = 64 - v174;
        if (64 - v174 >= v192)
        {
          v193 = v192;
        }

        v129[v170] |= ((v191 >> v190) & ~(-1 << v193)) << v174;
        v190 += v193;
        v194 = v193 + v174;
        v170 += v194 >> 6;
        v174 = v194 & 0x3F;
        v192 -= v193;
      }

      while (v192);
    }

    v181 += v189;
  }

  if (v173 || v290 == 2 || v290 >= 0x10)
  {
    v195 = v276;
    if (v276 <= 0x100 && v276 && v174 - v130 + (v170 << 6) + v276 <= 0x100)
    {
      v196 = 0;
      v197 = (HIDWORD(v268) >> (v290 - v276));
      v198 = v276;
      do
      {
        v199 = 64 - v174;
        if (64 - v174 >= v198)
        {
          v199 = v198;
        }

        v129[v170] |= ((v197 >> v196) & ~(-1 << v199)) << v174;
        v196 += v199;
        v200 = v199 + v174;
        v170 += v200 >> 6;
        v174 = v200 & 0x3F;
        v198 -= v199;
      }

      while (v198);
    }

    v181 += v195;
  }

  v201 = v269;
  if (v269)
  {
    if (v174 - v130 + (v170 << 6) + 3 <= 0x100)
    {
      v202 = 0;
      v203 = v286[0];
      v204 = 3;
      do
      {
        v205 = 64 - v174;
        if (64 - v174 >= v204)
        {
          v205 = v204;
        }

        v129[v170] |= ((v203 >> v202) & ~(-1 << v205)) << v174;
        v202 += v205;
        v206 = v205 + v174;
        v170 += v206 >> 6;
        v174 = v206 & 0x3F;
        v204 -= v205;
      }

      while (v204);
    }

    v181 += 3;
  }

  v207 = v270;
  if (v270)
  {
    if (v174 - v130 + (v170 << 6) + 3 <= 0x100)
    {
      v208 = 0;
      v209 = v286[1];
      v210 = 3;
      do
      {
        v211 = 64 - v174;
        if (64 - v174 >= v210)
        {
          v211 = v210;
        }

        v129[v170] |= ((v209 >> v208) & ~(-1 << v211)) << v174;
        v208 += v211;
        v212 = v211 + v174;
        v170 += v212 >> 6;
        v174 = v212 & 0x3F;
        v210 -= v211;
      }

      while (v210);
    }

    v181 += 3;
  }

  v213 = v271;
  if (v271)
  {
    if (v174 - v130 + (v170 << 6) + 3 <= 0x100)
    {
      v214 = 0;
      v215 = v286[2];
      v216 = 3;
      do
      {
        v217 = 64 - v174;
        if (64 - v174 >= v216)
        {
          v217 = v216;
        }

        v129[v170] |= ((v215 >> v214) & ~(-1 << v217)) << v174;
        v214 += v217;
        v218 = v217 + v174;
        v170 += v218 >> 6;
        v174 = v218 & 0x3F;
        v216 -= v217;
      }

      while (v216);
    }

    v181 += 3;
  }

  v219 = v272;
  if (v272)
  {
    if (v174 - v130 + (v170 << 6) + 3 <= 0x100)
    {
      v220 = 0;
      v221 = v286[3];
      v222 = 3;
      do
      {
        v223 = 64 - v174;
        if (64 - v174 >= v222)
        {
          v223 = v222;
        }

        v129[v170] |= ((v221 >> v220) & ~(-1 << v223)) << v174;
        v220 += v223;
        v224 = v223 + v174;
        v170 += v224 >> 6;
        v174 = v224 & 0x3F;
        v222 -= v223;
      }

      while (v222);
    }

    v181 += 3;
  }

  v225 = 256 - v181;
  v226 = (256 - v181) / 7u;
  v227 = v225 % 7;
  if ((v227 - 257) >= 0xFFFFFF00 && v174 - v130 + (v170 << 6) + v227 <= 0x100)
  {
    do
    {
      v228 = 64 - v174;
      if (64 - v174 >= v227)
      {
        v228 = v227;
      }

      v229 = v228 + v174;
      v170 += v229 >> 6;
      v174 = v229 & 0x3F;
      v227 -= v228;
    }

    while (v227);
  }

  v230 = 0;
  while (2)
  {
    if (v201 && v201 <= 0x100 && v174 - v130 + (v170 << 6) + v201 <= 0x100)
    {
      v231 = 0;
      v232 = *(v264 + v230);
      v233 = v201;
      do
      {
        v234 = 64 - v174;
        if (64 - v174 >= v233)
        {
          v234 = v233;
        }

        v129[v170] |= ((v232 >> v231) & ~(-1 << v234)) << v174;
        v231 += v234;
        v235 = v234 + v174;
        v170 += v235 >> 6;
        v174 = v235 & 0x3F;
        v233 -= v234;
      }

      while (v233);
    }

    v236 = v264 + v230;
    if (!v207)
    {
      v242 = v201;
      if (!v213)
      {
        goto LABEL_421;
      }

      goto LABEL_414;
    }

    if (v207 <= 0x100 && v174 - v130 + (v170 << 6) + v207 <= 0x100)
    {
      v237 = 0;
      v238 = v236[7];
      v239 = v207;
      do
      {
        v240 = 64 - v174;
        if (64 - v174 >= v239)
        {
          v240 = v239;
        }

        v129[v170] |= ((v238 >> v237) & ~(-1 << v240)) << v174;
        v237 += v240;
        v241 = v240 + v174;
        v170 += v241 >> 6;
        v174 = v241 & 0x3F;
        v239 -= v240;
      }

      while (v239);
    }

    v242 = v207 + v201;
    if (v213)
    {
LABEL_414:
      if (v213 <= 0x100 && v174 - v130 + (v170 << 6) + v213 <= 0x100)
      {
        v243 = 0;
        v244 = v236[14];
        v245 = v213;
        do
        {
          v246 = 64 - v174;
          if (64 - v174 >= v245)
          {
            v246 = v245;
          }

          v129[v170] |= ((v244 >> v243) & ~(-1 << v246)) << v174;
          v243 += v246;
          v247 = v246 + v174;
          v170 += v247 >> 6;
          v174 = v247 & 0x3F;
          v245 -= v246;
        }

        while (v245);
      }

      v242 += v213;
    }

LABEL_421:
    if (v219)
    {
      if (v219 <= 0x100 && v174 - v130 + (v170 << 6) + v219 <= 0x100)
      {
        v248 = 0;
        v249 = v236[21];
        v250 = v219;
        do
        {
          v251 = 64 - v174;
          if (64 - v174 >= v250)
          {
            v251 = v250;
          }

          v129[v170] |= ((v249 >> v248) & ~(-1 << v251)) << v174;
          v248 += v251;
          v252 = v251 + v174;
          v170 += v252 >> 6;
          v174 = v252 & 0x3F;
          v250 -= v251;
        }

        while (v250);
      }

      v242 += v219;
    }

    v253 = v226 - v242;
    if (v253 && v253 <= 0x100 && v174 - v130 + (v170 << 6) + v253 <= 0x100)
    {
      do
      {
        v254 = 64 - v174;
        if (64 - v174 >= v253)
        {
          v254 = v253;
        }

        v255 = v254 + v174;
        v170 += v255 >> 6;
        v174 = v255 & 0x3F;
        v253 -= v254;
      }

      while (v253);
    }

    if (++v230 != 7)
    {
      continue;
    }

    return v55 & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x1D)
  {
    v6 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v7 = (8 * (a3 & 7)) | 0x400;
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

  if ((v27 & 1) != 0 || (v177 = a4 + 1, v7 + 8 * v177 - v172 - 1024 >= 9) || v60 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x4_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v57 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v49, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v49, a5);
  }

  v43 = v49;
  v41 = v50;
  v47 = v52;
  v48 = v51;
  v44 = v53;
  v42 = v54;
  v46 = v55;
  v45 = v56;
  v10 = a3 + 32;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v49, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v49, a5);
  }

  v39 = v50;
  v40 = v49;
  v37 = v52;
  v38 = v51;
  v35 = v54;
  v36 = v53;
  v33 = v56;
  v34 = v55;
  v11 = a3 + 64;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v49, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v49, a5);
  }

  v31 = v50;
  v32 = v49;
  v29 = v52;
  v30 = v51;
  v27 = v54;
  v28 = v53;
  v25 = v56;
  v26 = v55;
  v12 = a3 + 96;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v49, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v49, a5);
  }

  v14 = v49;
  v15 = v50;
  v16 = v51;
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v20 = v55;
  v21 = v56;
  *a1 = vmovn_s32(v43);
  a1[1] = vmovn_s32(v41);
  a1[2] = vmovn_s32(v44);
  a1[3] = vmovn_s32(v42);
  a1[4] = vmovn_s32(v32);
  a1[5] = vmovn_s32(v31);
  a1[6] = vmovn_s32(v28);
  a1[7] = vmovn_s32(v27);
  v22 = (a1 + a2);
  *v22 = vmovn_s32(v48);
  v22[1] = vmovn_s32(v47);
  v22[2] = vmovn_s32(v46);
  v22[3] = vmovn_s32(v45);
  v22[4] = vmovn_s32(v30);
  v22[5] = vmovn_s32(v29);
  v22[6] = vmovn_s32(v26);
  v22[7] = vmovn_s32(v25);
  v23 = (a1 + a2 + a2);
  *v23 = vmovn_s32(v40);
  v23[1] = vmovn_s32(v39);
  v23[2] = vmovn_s32(v36);
  v23[3] = vmovn_s32(v35);
  v23[4] = vmovn_s32(v14);
  v23[5] = vmovn_s32(v15);
  v23[6] = vmovn_s32(v18);
  v23[7] = vmovn_s32(v19);
  v24 = (v23 + a2);
  *v24 = vmovn_s32(v38);
  v24[1] = vmovn_s32(v37);
  v24[2] = vmovn_s32(v34);
  v24[3] = vmovn_s32(v33);
  v24[4] = vmovn_s32(v16);
  v24[5] = vmovn_s32(v17);
  v24[6] = vmovn_s32(v20);
  v24[7] = vmovn_s32(v21);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = a3 & 0xFFFFFFFD;
  v6 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  if (a3 == 4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * (a1 & 7);
    while (1)
    {
      result = v9 - v4 + (v8 << 6) - 249;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFEFFLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v8 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      result = (v13 << 8) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 249) < 0xFFFFFFFFFFFFFEFFLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 8;
      do
      {
        v21 = 64 - v9;
        if (64 - v9 >= v20)
        {
          v21 = v20;
        }

        v18 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v9;
        v8 += v22 >> 6;
        v9 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
      result = v9 - v4 + (v8 << 6) - 249;
      v12[1] = (v18 << 8) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFEFFLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 8;
        do
        {
          v26 = 64 - v9;
          if (64 - v9 >= v25)
          {
            v26 = v25;
          }

          v23 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v26)) << v24;
          v24 += v26;
          v27 = v26 + v9;
          v8 += v27 >> 6;
          v9 = v27 & 0x3F;
          v25 -= v26;
        }

        while (v25);
        result = v9 - v4 + (v8 << 6) - 249;
        v12[2] = (v23 << 8) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFEFFLL)
        {
          v28 = 0;
          result = 0;
          v29 = 8;
          do
          {
            v30 = 64 - v9;
            if (64 - v9 >= v29)
            {
              v30 = v29;
            }

            v28 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v30)) << result;
            result += v30;
            v31 = v30 + v9;
            v8 += v31 >> 6;
            v9 = v31 & 0x3F;
            v29 -= v30;
          }

          while (v29);
          v10 = v28 << 8;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_6;
      }

LABEL_5:
      v10 = 0;
      v12[2] = v6;
LABEL_6:
      v12[3] = v10 ^ v6;
      if (++v7 == 8)
      {
        return result;
      }
    }

    *(a2 + 16 * v7) = v6;
LABEL_4:
    v12[1] = v6;
    goto LABEL_5;
  }

  v32 = 0;
  v33 = 0;
  result = 8 * (a1 & 7);
  do
  {
    if (result - v4 + (v33 << 6) - 249 >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v36 = 0;
      v37 = 0;
      v38 = 8;
      do
      {
        v39 = 64 - result;
        if (64 - result >= v38)
        {
          v39 = v38;
        }

        v36 |= ((*(v3 + 8 * v33) >> result) & ~(-1 << v39)) << v37;
        v37 += v39;
        v40 = v39 + result;
        v33 += v40 >> 6;
        result = v40 & 0x3F;
        v38 -= v39;
      }

      while (v38);
      v35 = v36 << 8;
      if ((v35 != 0x8000 || v5 != 1) && v35 != 0)
      {
        if (v35 == 65280)
        {
          v35 = 0xFFFF;
        }

        else
        {
          v35 = v35 - (v36 & 1) + 128;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    *(a2 + 16 * v32) = v35 ^ v6;
    if (result - v4 + (v33 << 6) - 249 >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v44 = 0;
      v45 = 0;
      v46 = 8;
      do
      {
        v47 = 64 - result;
        if (64 - result >= v46)
        {
          v47 = v46;
        }

        v44 |= ((*(v3 + 8 * v33) >> result) & ~(-1 << v47)) << v45;
        v45 += v47;
        v48 = v47 + result;
        v33 += v48 >> 6;
        result = v48 & 0x3F;
        v46 -= v47;
      }

      while (v46);
      v43 = v44 << 8;
      if ((v43 != 0x8000 || v5 != 1) && v43 != 0)
      {
        if (v43 == 65280)
        {
          v43 = 0xFFFF;
        }

        else
        {
          v43 = v43 - (v44 & 1) + 128;
        }
      }
    }

    else
    {
      v43 = 0;
    }

    v51 = (a2 + 16 * v32);
    v51[1] = v43 ^ v6;
    if (result - v4 + (v33 << 6) - 249 >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 8;
      do
      {
        v56 = 64 - result;
        if (64 - result >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v33) >> result) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + result;
        v33 += v57 >> 6;
        result = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
      v52 = v53 << 8;
      if ((v52 != 0x8000 || v5 != 1) && v52 != 0)
      {
        if (v52 == 65280)
        {
          v52 = 0xFFFF;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 128;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v51[2] = v52 ^ v6;
    if (result - v4 + (v33 << 6) - 249 < 0xFFFFFFFFFFFFFEFFLL)
    {
      v34 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 8;
      do
      {
        v63 = 64 - result;
        if (64 - result >= v62)
        {
          v63 = v62;
        }

        v60 |= ((*(v3 + 8 * v33) >> result) & ~(-1 << v63)) << v61;
        v61 += v63;
        v64 = v63 + result;
        v33 += v64 >> 6;
        result = v64 & 0x3F;
        v62 -= v63;
      }

      while (v62);
      v34 = v60 << 8;
      if ((v34 != 0x8000 || v5 != 1) && v34 != 0)
      {
        v67 = v34 - (v60 & 1) + 128;
        if (v34 == 65280)
        {
          v34 = 0xFFFF;
        }

        else
        {
          v34 = v67;
        }
      }
    }

    v51[3] = v34 ^ v6;
    ++v32;
  }

  while (v32 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v232 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 >> v5;
  v8 = (v6 >> v5) & 0xF;
  v9 = v5 | 4;
  if ((v5 | 4uLL) - v5 - 253 >= 0xFFFFFFFFFFFFFEFFLL)
  {
    v14 = (v5 + 8) & 0x38;
    v12 = (v5 + 8) >> 6;
    v11 = (v6 >> v9) & 0xF;
    v15 = (v5 + 8) & 0x40;
    if ((v15 + v14 - v5 + 4) <= 0x100)
    {
      v9 = v14 | 4;
      v16 = *(v4 + 8 * v12);
      v10 = (v16 >> v14) & 0xF;
      if ((v14 | 4uLL) - v5 + v15 + 4 <= 0x100)
      {
        v17 = v14 + 8;
        v18 = v16 >> v9;
        v9 = v17 & 0x38;
        v12 += v17 >> 6;
        v13 = v18 & 0xF;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      LODWORD(v10) = 0;
      v13 = 0;
      v9 = (v5 + 8) & 0x38;
    }
  }

  else
  {
    LODWORD(v10) = 0;
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
  }

  memset_pattern16(&__b, &unk_29D2F2700, 0x10uLL);
  memset_pattern16(&v227, &unk_29D2F2710, 0x10uLL);
  v231[0] = v8;
  v231[1] = v11;
  v231[2] = v10;
  v231[3] = v13;
  v221 = 0;
  v222 = 0;
  v219 = 0;
  v220 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v227, v231, &v221, &v219);
  v19 = &kDQuadParamTable[160 * v227 + 10 * (v7 & 0xF)];
  LODWORD(v20) = v19[4];
  v21 = v19[5];
  v22 = v219 - v221;
  if (v219 - v221 >= 0)
  {
    v23 = v21;
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = v22 + v21;
    goto LABEL_11;
  }

  v24 = &kDQuadParamTable[160 * v227 + 10 * (v7 & 0xF)];
  if (v24[7] >= v221 - v219)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 - 1;
    if (!v24[8])
    {
      v22 = -1;
LABEL_11:
      LODWORD(v20) = v22 + v20;
    }
  }

LABEL_16:
  if (__b >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = __b;
  }

  v218[0] = v20;
  if (v21)
  {
    LODWORD(v25) = __b;
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v25;
  }

  v217[0] = v25;
  v26 = &kDQuadParamTable[160 * v228 + 10 * v11];
  v28 = v26[4];
  v27 = v26[5];
  v29 = HIDWORD(v219) - HIDWORD(v221);
  if (HIDWORD(v219) - HIDWORD(v221) >= 0)
  {
    v30 = v27;
    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = v29 + v27;
    goto LABEL_28;
  }

  v31 = &kDQuadParamTable[160 * v228 + 10 * v11];
  if (v31[7] >= HIDWORD(v221) - HIDWORD(v219))
  {
    v30 = v27;
  }

  else
  {
    v30 = v27 - 1;
    if (!v31[8])
    {
      v29 = -1;
LABEL_28:
      v28 += v29;
    }
  }

LABEL_33:
  if (v224 >= v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = v224;
  }

  v218[1] = v32;
  if (v27)
  {
    LODWORD(v33) = v224;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v33 >= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v33;
  }

  v217[1] = v33;
  v34 = &kDQuadParamTable[160 * v229 + 10 * v10];
  v36 = v34[4];
  v35 = v34[5];
  v37 = v220 - v222;
  if (v220 - v222 >= 0)
  {
    v38 = v35;
    if (!v37)
    {
      goto LABEL_50;
    }

    v38 = v37 + v35;
    goto LABEL_45;
  }

  v39 = &kDQuadParamTable[160 * v229 + 10 * v10];
  if (v39[7] >= v222 - v220)
  {
    v38 = v35;
  }

  else
  {
    v38 = v35 - 1;
    if (!v39[8])
    {
      v37 = -1;
LABEL_45:
      v36 += v37;
    }
  }

LABEL_50:
  if (v225 >= v36)
  {
    v40 = v36;
  }

  else
  {
    v40 = v225;
  }

  v218[2] = v40;
  if (v35)
  {
    v41 = v225;
  }

  else
  {
    v41 = 0;
  }

  if (v41 >= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v41;
  }

  v217[2] = v42;
  v43 = &kDQuadParamTable[160 * v230 + 10 * v13];
  LODWORD(v44) = v43[4];
  v45 = v43[5];
  v46 = HIDWORD(v220) - HIDWORD(v222);
  if (HIDWORD(v220) - HIDWORD(v222) >= 0)
  {
    v47 = v45;
    if (!v46)
    {
      goto LABEL_67;
    }

    v47 = v46 + v45;
    goto LABEL_62;
  }

  v48 = &kDQuadParamTable[160 * v230 + 10 * v13];
  if (v48[7] >= HIDWORD(v222) - HIDWORD(v220))
  {
    v47 = v45;
  }

  else
  {
    v47 = v45 - 1;
    if (!v48[8])
    {
      v46 = -1;
LABEL_62:
      LODWORD(v44) = v46 + v44;
    }
  }

LABEL_67:
  if (v226 >= v44)
  {
    v44 = v44;
  }

  else
  {
    v44 = v226;
  }

  v218[3] = v44;
  if (v45)
  {
    LODWORD(v49) = v226;
  }

  else
  {
    LODWORD(v49) = 0;
  }

  if (v49 >= v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v49;
  }

  v217[3] = v49;
  v215 = 0;
  v216 = 0;
  if (v8 || __b - 8 >= 5)
  {
    if (v20 <= 0x20)
    {
      v51 = 0;
      if (v20 && v9 - v5 + (v12 << 6) + v20 <= 0x100)
      {
        v51 = 0;
        v52 = 0;
        v53 = v20;
        do
        {
          v54 = 64 - v9;
          if (64 - v9 >= v53)
          {
            v54 = v53;
          }

          v51 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v54)) << v52;
          v52 += v54;
          v12 += (v54 + v9) >> 6;
          v9 = (v54 + v9) & 0x3F;
          v53 -= v54;
        }

        while (v53);
      }
    }

    else
    {
      v51 = 0;
    }

    LODWORD(v215) = v51 << (__b - v20);
    v50 = v20 + 16;
    if (v11)
    {
LABEL_92:
      if (v32 <= 0x20)
      {
        v55 = 0;
        if (v32 && v9 - v5 + (v12 << 6) + v32 <= 0x100)
        {
          v55 = 0;
          v56 = 0;
          v57 = v32;
          do
          {
            v58 = 64 - v9;
            if (64 - v9 >= v57)
            {
              v58 = v57;
            }

            v55 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v58)) << v56;
            v56 += v58;
            v12 += (v58 + v9) >> 6;
            v9 = (v58 + v9) & 0x3F;
            v57 -= v58;
          }

          while (v57);
        }
      }

      else
      {
        v55 = 0;
      }

      HIDWORD(v215) = v55 << (v224 - v32);
      v50 += v32;
      if (v10)
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }
  }

  else
  {
    v50 = 16;
    if (v11)
    {
      goto LABEL_92;
    }
  }

  if (v224 - 8 >= 5)
  {
    goto LABEL_92;
  }

  HIDWORD(v215) = 0;
  if (v10)
  {
    goto LABEL_104;
  }

LABEL_101:
  if (v225 - 8 < 5)
  {
    LODWORD(v216) = 0;
    if (v13)
    {
      goto LABEL_116;
    }

    goto LABEL_113;
  }

LABEL_104:
  if (v40 <= 0x20)
  {
    v59 = 0;
    if (v40 && v9 - v5 + (v12 << 6) + v40 <= 0x100)
    {
      v59 = 0;
      v60 = 0;
      v61 = v40;
      do
      {
        v62 = 64 - v9;
        if (64 - v9 >= v61)
        {
          v62 = v61;
        }

        v59 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v62)) << v60;
        v60 += v62;
        v12 += (v62 + v9) >> 6;
        v9 = (v62 + v9) & 0x3F;
        v61 -= v62;
      }

      while (v61);
    }
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v216) = v59 << (v225 - v40);
  v50 += v40;
  if (v13)
  {
LABEL_116:
    if (v44 <= 0x20)
    {
      v63 = 0;
      if (v44 && v9 - v5 + (v12 << 6) + v44 <= 0x100)
      {
        v63 = 0;
        v64 = 0;
        v65 = v44;
        do
        {
          v66 = 64 - v9;
          if (64 - v9 >= v65)
          {
            v66 = v65;
          }

          v63 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v66)) << v64;
          v64 += v66;
          v12 += (v66 + v9) >> 6;
          v9 = (v66 + v9) & 0x3F;
          v65 -= v66;
        }

        while (v65);
      }
    }

    else
    {
      v63 = 0;
    }

    HIDWORD(v216) = v63 << (v226 - v44);
    v50 += v44;
    v213 = 0;
    v214 = 0;
    if (!v25)
    {
      goto LABEL_132;
    }

    goto LABEL_125;
  }

LABEL_113:
  if (v226 - 8 >= 5)
  {
    goto LABEL_116;
  }

  HIDWORD(v216) = 0;
  v213 = 0;
  v214 = 0;
  if (v25)
  {
LABEL_125:
    if (v9 - v5 + (v12 << 6) + 3 <= 0x100)
    {
      v67 = 0;
      v68 = 0;
      v69 = 3;
      do
      {
        v70 = 64 - v9;
        if (64 - v9 >= v69)
        {
          v70 = v69;
        }

        v67 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v70)) << v68;
        v68 += v70;
        v12 += (v70 + v9) >> 6;
        v9 = (v70 + v9) & 0x3F;
        v69 -= v70;
      }

      while (v69);
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v213) = v67;
    v50 += 3;
  }

LABEL_132:
  if (v33)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x100)
    {
      v71 = 0;
      v72 = 0;
      v73 = 3;
      do
      {
        v74 = 64 - v9;
        if (64 - v9 >= v73)
        {
          v74 = v73;
        }

        v71 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v74)) << v72;
        v72 += v74;
        v12 += (v74 + v9) >> 6;
        v9 = (v74 + v9) & 0x3F;
        v73 -= v74;
      }

      while (v73);
    }

    else
    {
      v71 = 0;
    }

    HIDWORD(v213) = v71;
    v50 += 3;
  }

  if (v42)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x100)
    {
      v75 = 0;
      v76 = 0;
      v77 = 3;
      do
      {
        v78 = 64 - v9;
        if (64 - v9 >= v77)
        {
          v78 = v77;
        }

        v75 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v78)) << v76;
        v76 += v78;
        v12 += (v78 + v9) >> 6;
        v9 = (v78 + v9) & 0x3F;
        v77 -= v78;
      }

      while (v77);
    }

    else
    {
      v75 = 0;
    }

    LODWORD(v214) = v75;
    v50 += 3;
  }

  if (v49)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x100)
    {
      v79 = 0;
      v80 = 0;
      v81 = 3;
      do
      {
        v82 = 64 - v9;
        if (64 - v9 >= v81)
        {
          v82 = v81;
        }

        v79 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v82)) << v80;
        v80 += v82;
        v12 += (v82 + v9) >> 6;
        v9 = (v82 + v9) & 0x3F;
        v81 -= v82;
      }

      while (v81);
    }

    else
    {
      v79 = 0;
    }

    HIDWORD(v214) = v79;
    v50 += 3;
  }

  v83 = 0;
  v84 = a3 & 0xFFFFFFFD;
  v85 = 256 - v50;
  v86 = (256 - v50) / 7u;
  v87 = (v9 | (v12 << 6)) + v85 % 7;
  memset(v212, 0, sizeof(v212));
  do
  {
    v90 = v87 >> 6;
    v91 = v87 & 0x3F;
    if (v25)
    {
      if (v25 <= 0x20 && v91 - v5 + (v87 & 0xFFFFFFFFFFFFFFC0) + v25 <= 0x100)
      {
        v92 = 0;
        v93 = 0;
        v94 = v25;
        do
        {
          v95 = 64 - v91;
          if (64 - v91 >= v94)
          {
            v95 = v94;
          }

          v92 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v95)) << v93;
          v93 += v95;
          v96 = v95 + v91;
          v90 += v96 >> 6;
          v91 = v96 & 0x3F;
          v94 -= v95;
        }

        while (v94);
      }

      else
      {
        v92 = 0;
      }

      *(v212 + v83) = v92;
    }

    v97 = v212 + v83;
    if (!v33)
    {
      v89 = v25;
      if (!v42)
      {
        goto LABEL_188;
      }

LABEL_180:
      if (v42 <= 0x20 && v91 - v5 + (v90 << 6) + v42 <= 0x100)
      {
        v103 = 0;
        v104 = 0;
        v105 = v42;
        do
        {
          v106 = 64 - v91;
          if (64 - v91 >= v105)
          {
            v106 = v105;
          }

          v103 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v106)) << v104;
          v104 += v106;
          v107 = v106 + v91;
          v90 += v107 >> 6;
          v91 = v107 & 0x3F;
          v105 -= v106;
        }

        while (v105);
      }

      else
      {
        v103 = 0;
      }

      v97[14] = v103;
      v89 += v42;
      goto LABEL_188;
    }

    if (v33 <= 0x20 && v91 - v5 + (v90 << 6) + v33 <= 0x100)
    {
      v98 = 0;
      v99 = 0;
      v100 = v33;
      do
      {
        v101 = 64 - v91;
        if (64 - v91 >= v100)
        {
          v101 = v100;
        }

        v98 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v101)) << v99;
        v99 += v101;
        v102 = v101 + v91;
        v90 += v102 >> 6;
        v91 = v102 & 0x3F;
        v100 -= v101;
      }

      while (v100);
    }

    else
    {
      v98 = 0;
    }

    v97[7] = v98;
    v89 = v33 + v25;
    if (v42)
    {
      goto LABEL_180;
    }

LABEL_188:
    if (v49)
    {
      if (v49 > 0x20 || v91 - v5 + (v90 << 6) + v49 > 0x100)
      {
        v88 = 0;
      }

      else
      {
        v88 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = 64 - v91;
          if (64 - v91 >= v109)
          {
            v110 = v109;
          }

          v88 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v110)) << v108;
          v108 += v110;
          v111 = v110 + v91;
          v90 += v111 >> 6;
          v91 = v111 & 0x3F;
          v109 -= v110;
        }

        while (v109);
      }

      v97[21] = v88;
      v89 += v49;
    }

    v87 = (v91 | (v90 << 6)) + v86 - v89;
    ++v83;
  }

  while (v83 != 7);
  v112 = 0;
  v113 = 0;
  v114 = a2 + 112;
  do
  {
    v119 = *&kDQuadParamTable[160 * *(&v227 + v112) + 2 + 10 * v231[v112 / 4]];
    v120 = v217[v112 / 4];
    if (v119 >> v120 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v119 >> v120;
    }

    v121 = *(&__b + v112);
    v122 = result >> 1;
    if (result >> 1 >= (1 << (v121 - v218[v112 / 4])) >> 1)
    {
      v123 = (1 << (v121 - v218[v112 / 4])) >> 1;
    }

    else
    {
      v123 = result >> 1;
    }

    v124 = (1 << (v121 - 1));
    v125 = *(&v215 + v112);
    v126 = v124 - v125;
    v127 = 1 << v121;
    v128 = (1 << v121) + 0xFFFFFFFFLL;
    if (v125)
    {
      v129 = v123;
    }

    else
    {
      v129 = 0;
    }

    v130 = v125 == v124;
    v131 = v121 == 16;
    if (v121 == 16)
    {
      v132 = 31744;
    }

    else
    {
      v132 = 2139095040;
    }

    if (v121 == 16)
    {
      v133 = 64512;
    }

    else
    {
      v133 = 4286578688;
    }

    v134 = 2143289344;
    if (v131)
    {
      v134 = 32256;
    }

    v135 = 65024;
    if (!v131)
    {
      v135 = 4290772992;
    }

    v136 = (v133 - 1);
    if (v120)
    {
      v137 = v119 + v125;
      v138 = -1 << v120;
      v139 = *(&v213 + v112);
      v140 = v126 / result;
      if (!v139)
      {
        v148 = 0;
        v143 = v129;
        v142 = v125 == v124;
        goto LABEL_266;
      }

      v141 = *(v212 + v113);
      v142 = v140 == v141;
      if (v125 | v141)
      {
        if (v137 >= v127 && (v138 ^ v141) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v148 = 1;
          v143 = v127 - 1;
          goto LABEL_266;
        }

        v143 = v122 + result * v141;
      }

      else
      {
        v143 = 0;
      }

      v148 = 1;
LABEL_266:
      v151 = v143 + v125;
      v152 = v151;
      if (a3 == 4)
      {
        v153 = v151 < v132 || v151 >= v134;
        v152 = (v132 - 1);
        if (v153)
        {
          v154 = v151 < v134 || v151 >= v124;
          v152 = v124;
          if (v154)
          {
            if (v151 < v135 && v151 >= v133)
            {
              v152 = (v133 - 1);
            }

            else
            {
              v152 = v151;
            }
          }
        }
      }

      if (v152 >= v127)
      {
        v156 = v127 - 1;
      }

      else
      {
        v156 = v152;
      }

      if (v142)
      {
        v157 = 0;
      }

      else
      {
        v157 = v156 ^ v124;
      }

      if (v84 != 1)
      {
        v157 = v156;
      }

      *(a2 + v112) = v157;
      if (v139 == 1)
      {
        v158 = v129;
        v159 = v125 == v124;
      }

      else
      {
        v160 = *((v212 | (4 * v148)) + v113);
        v159 = v140 == v160;
        if (v125 | v160)
        {
          if (v137 < v127 || (v158 = v127 - 1, (v138 ^ v160) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v158 = v122 + result * v160;
          }
        }

        else
        {
          v158 = 0;
        }

        ++v148;
      }

      v161 = v158 + v125;
      v162 = v161;
      if (a3 == 4)
      {
        v163 = v161 < v132 || v161 >= v134;
        v162 = (v132 - 1);
        if (v163)
        {
          v164 = v161 < v134 || v161 >= v124;
          v162 = v124;
          if (v164)
          {
            if (v161 < v135 && v161 >= v133)
            {
              v162 = (v133 - 1);
            }

            else
            {
              v162 = v161;
            }
          }
        }
      }

      if (v162 >= v127)
      {
        v166 = v127 - 1;
      }

      else
      {
        v166 = v162;
      }

      if (v159)
      {
        v167 = 0;
      }

      else
      {
        v167 = v166 ^ v124;
      }

      if (v84 != 1)
      {
        v167 = v166;
      }

      *(v114 + v112 - 96) = v167;
      if (v139 == 2)
      {
        v168 = v129;
        v169 = v125 == v124;
      }

      else
      {
        v170 = *((v212 | (4 * v148)) + v113);
        v169 = v140 == v170;
        if (v125 | v170)
        {
          if (v137 < v127 || (v168 = v127 - 1, (v138 ^ v170) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v168 = v122 + result * v170;
          }
        }

        else
        {
          v168 = 0;
        }

        ++v148;
      }

      v171 = v168 + v125;
      v172 = v171;
      if (a3 == 4)
      {
        if (v171 < v132 || (v172 = (v132 - 1), v171 >= v134))
        {
          if (v171 < v134 || (v172 = v124, v171 >= v124))
          {
            if (v171 < v135 && v171 >= v133)
            {
              v172 = (v133 - 1);
            }

            else
            {
              v172 = v171;
            }
          }
        }
      }

      if (v172 >= v127)
      {
        v174 = v127 - 1;
      }

      else
      {
        v174 = v172;
      }

      if (v169)
      {
        v175 = 0;
      }

      else
      {
        v175 = v174 ^ v124;
      }

      if (v84 != 1)
      {
        v175 = v174;
      }

      *(v114 + v112 - 80) = v175;
      if (v139 == 3)
      {
        v176 = v129;
        v177 = v125 == v124;
      }

      else
      {
        v178 = *(v212 + 4 * v148 + v113);
        v177 = v140 == v178;
        if (v125 | v178)
        {
          if (v137 < v127 || (v176 = v127 - 1, (v138 ^ v178) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v176 = v122 + result * v178;
          }
        }

        else
        {
          v176 = 0;
        }

        ++v148;
      }

      v179 = v176 + v125;
      v180 = v179;
      if (a3 == 4)
      {
        if (v179 < v132 || (v180 = (v132 - 1), v179 >= v134))
        {
          if (v179 < v134 || (v180 = v124, v179 >= v124))
          {
            if (v179 < v135 && v179 >= v133)
            {
              v180 = (v133 - 1);
            }

            else
            {
              v180 = v179;
            }
          }
        }
      }

      if (v180 >= v127)
      {
        v182 = v127 - 1;
      }

      else
      {
        v182 = v180;
      }

      if (v177)
      {
        v183 = 0;
      }

      else
      {
        v183 = v182 ^ v124;
      }

      if (v84 != 1)
      {
        v183 = v182;
      }

      *(v114 + v112 - 64) = v183;
      if (v139 == 4)
      {
        v184 = v129;
        v185 = v125 == v124;
      }

      else
      {
        v186 = *(v212 + 4 * v148 + v113);
        v185 = v140 == v186;
        if (v125 | v186)
        {
          if (v137 < v127 || (v184 = v127 - 1, (v138 ^ v186) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v122 + result * v186;
          }
        }

        else
        {
          v184 = 0;
        }

        ++v148;
      }

      v187 = v184 + v125;
      v188 = v187;
      if (a3 == 4)
      {
        if (v187 < v132 || (v188 = (v132 - 1), v187 >= v134))
        {
          if (v187 < v134 || (v188 = v124, v187 >= v124))
          {
            if (v187 < v135 && v187 >= v133)
            {
              v188 = (v133 - 1);
            }

            else
            {
              v188 = v187;
            }
          }
        }
      }

      if (v188 >= v127)
      {
        v190 = v127 - 1;
      }

      else
      {
        v190 = v188;
      }

      if (v185)
      {
        v191 = 0;
      }

      else
      {
        v191 = v190 ^ v124;
      }

      if (v84 != 1)
      {
        v191 = v190;
      }

      *(v114 + v112 - 48) = v191;
      if (v139 == 5)
      {
        v192 = v129;
        v193 = v125 == v124;
      }

      else
      {
        v194 = *(v212 + 4 * v148 + v113);
        v193 = v140 == v194;
        if (v125 | v194)
        {
          if (v137 < v127 || (v192 = v127 - 1, (v138 ^ v194) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v122 + result * v194;
          }
        }

        else
        {
          v192 = 0;
        }

        ++v148;
      }

      v195 = v192 + v125;
      v196 = v195;
      if (a3 == 4)
      {
        if (v195 < v132 || (v196 = (v132 - 1), v195 >= v134))
        {
          if (v195 < v134 || (v196 = v124, v195 >= v124))
          {
            if (v195 < v135 && v195 >= v133)
            {
              v196 = (v133 - 1);
            }

            else
            {
              v196 = v195;
            }
          }
        }
      }

      if (v196 >= v127)
      {
        v198 = v127 - 1;
      }

      else
      {
        v198 = v196;
      }

      if (v193)
      {
        v199 = 0;
      }

      else
      {
        v199 = v198 ^ v124;
      }

      if (v84 != 1)
      {
        v199 = v198;
      }

      *(v114 + v112 - 32) = v199;
      if (v139 == 6)
      {
        v200 = v129;
        v201 = v125 == v124;
      }

      else
      {
        v202 = *(v212 + 4 * v148 + v113);
        v201 = v140 == v202;
        if (v125 | v202)
        {
          if (v137 < v127 || (v200 = v127 - 1, (v138 ^ v202) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v122 + result * v202;
          }
        }

        else
        {
          v200 = 0;
        }

        ++v148;
      }

      v203 = v200 + v125;
      v204 = v203;
      if (a3 == 4)
      {
        if (v203 < v132 || (v204 = (v132 - 1), v203 >= v134))
        {
          if (v203 < v134 || (v204 = v124, v203 >= v124))
          {
            if (v203 < v135 && v203 >= v133)
            {
              v204 = (v133 - 1);
            }

            else
            {
              v204 = v203;
            }
          }
        }
      }

      if (v204 >= v127)
      {
        v206 = v127 - 1;
      }

      else
      {
        v206 = v204;
      }

      if (v201)
      {
        v207 = 0;
      }

      else
      {
        v207 = v206 ^ v124;
      }

      if (v84 != 1)
      {
        v207 = v206;
      }

      *(v114 + v112 - 16) = v207;
      if (v139 != 7)
      {
        v208 = *(v212 + 4 * v148 + v113);
        v130 = v140 == v208;
        if (v125 | v208)
        {
          if (v137 >= v127 && (v138 ^ v208) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v129 = v127 - 1;
          }

          else
          {
            v129 = v122 + result * v208;
          }
        }

        else
        {
          v129 = 0;
        }
      }

      v209 = v129 + v125;
      result = v129 + v125;
      if (a3 == 4)
      {
        if (v209 < v132 || (result = (v132 - 1), v209 >= v134))
        {
          if (v209 < v134 || (result = v124, v209 >= v124))
          {
            if (v209 < v135 && v209 >= v133)
            {
              result = (v133 - 1);
            }

            else
            {
              result = v129 + v125;
            }
          }
        }
      }

      if (result >= v127)
      {
        v117 = v127 - 1;
      }

      else
      {
        v117 = result;
      }

      v118 = v117 ^ v124;
      if (v130)
      {
        v118 = 0;
      }

      if (v84 == 1)
      {
        v117 = v118;
      }

      goto LABEL_210;
    }

    v145 = v134 <= v125 && v125 < v124;
    v147 = v125 >= v133 && v135 > v125;
    if (a3 == 4)
    {
      if (v125 < v132 || v134 <= v125)
      {
        if (v145)
        {
          if (v127 <= v124)
          {
            v117 = v128;
          }

          else
          {
            v117 = v124;
          }
        }

        else
        {
          if (v147)
          {
            v210 = v136;
          }

          else
          {
            v210 = *(&v215 + v112);
          }

          if (v210 >= v127)
          {
            v117 = v128;
          }

          else
          {
            v117 = v210;
          }
        }
      }

      else if (v127 <= (v132 - 1))
      {
        v117 = v128;
      }

      else
      {
        v117 = v132 - 1;
      }
    }

    else
    {
      if (v127 <= v125)
      {
        v117 = v127 - 1;
      }

      else
      {
        v117 = *(&v215 + v112);
      }

      v149 = v117 ^ v124;
      if (result > v126)
      {
        v149 = 0;
      }

      if (v84 == 1)
      {
        v117 = v149;
      }
    }

    v150 = v114 + v112;
    *(v150 - 112) = v117;
    *(v150 - 96) = v117;
    *(v150 - 80) = v117;
    *(v150 - 64) = v117;
    *(v150 - 48) = v117;
    *(v150 - 32) = v117;
    *(v150 - 16) = v117;
LABEL_210:
    *(v114 + v112) = v117;
    v113 += 28;
    v112 += 4;
  }

  while (v113 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 8 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 64, a2, v32, v31, a7);
}

int16x4_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, const double *a2, _BYTE *a3, int a4)
{
  v8 = 16;
  v9 = &byte_29D2F2FD5;
  do
  {
    result = (a1 + (*v9 << 9) + (*(v9 - 1) << 6));
    v12 = *a3;
    if (*a3)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 7)
        {
          v13 = vld1q_dup_f64(a2);
          *result->i8 = v13;
          *result[2].i8 = v13;
          *result[4].i8 = v13;
          *result[6].i8 = v13;
          *result[16].i8 = v13;
          *result[18].i8 = v13;
          *result[20].i8 = v13;
          *result[22].i8 = v13;
          *result[32].i8 = v13;
          *result[34].i8 = v13;
          *result[36].i8 = v13;
          *result[38].i8 = v13;
          *result[48].i8 = v13;
          *result[50].i8 = v13;
          *result[52].i8 = v13;
          *result[54].i8 = v13;
          v10 = 8;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, a2, v12);
          v10 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, a2, v12, a4);
        v10 = 128;
      }
    }

    else
    {
      v10 = 0;
      *result[4].i8 = 0u;
      *result[6].i8 = 0u;
      *result->i8 = 0u;
      *result[2].i8 = 0u;
      *result[16].i8 = 0u;
      *result[18].i8 = 0u;
      *result[20].i8 = 0u;
      *result[22].i8 = 0u;
      *result[32].i8 = 0u;
      *result[34].i8 = 0u;
      *result[36].i8 = 0u;
      *result[38].i8 = 0u;
      *result[48].i8 = 0u;
      *result[50].i8 = 0u;
      *result[52].i8 = 0u;
      *result[54].i8 = 0u;
    }

    a2 = (a2 + v10);
    ++a3;
    v9 += 2;
    v8 -= 2;
  }

  while (v8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = vdupq_lane_s64(*a3, 0);
  v9 = vsubq_s16(*a3, v8);
  v10 = vsubq_s16(*(a3 + 16), v8);
  v11 = vsubq_s16(*(a3 + a4), v8);
  v476.val[0] = *a3;
  v476.val[1] = *(a3 + 16);
  v476.val[2] = *(a3 + a4);
  v476.val[3] = *(a3 + a4 + 16);
  v12 = vsubq_s16(v476.val[3], v8);
  v13 = vsubq_s16(*(a3 + 48), v8);
  v464 = *(a3 + 32);
  v466 = *(a3 + 48);
  v467 = *(a3 + a4 + 32);
  v14 = vsubq_s16(v467, v8);
  v475 = *(a3 + a4 + 48);
  v15 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v9, v10), v11), v12), xmmword_29D2F1150);
  v16 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v9, v10), v11), v12), xmmword_29D2F1150);
  v17 = vpmaxq_s16(v15, v15);
  v18 = vpminq_s16(v16, v16);
  v19.i64[0] = 0x8000800080008000;
  v19.i64[1] = 0x8000800080008000;
  v20 = vmaxq_s16(v17, v19);
  v19.i64[0] = 0x8000800080008000;
  v19.i64[1] = 0x8000800080008000;
  v21 = vminq_s16(v18, v19);
  v22 = vzip1q_s16(v17, v18);
  v19.i64[0] = 0x10001000100010;
  v19.i64[1] = 0x10001000100010;
  v23 = vbicq_s8(vsubq_s16(v19, vclsq_s16(v22)), vceqzq_s16(v22));
  v492 = vsubq_s16(v464, v8);
  v495 = vsubq_s16(v475, v8);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v13), v14), v495), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v492, v13), v14), v495), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vmaxq_s16(v20, v26);
  v29 = vminq_s16(v21, v27);
  v30 = vzip1q_s16(v26, v27);
  v32 = *v7;
  v33 = *(v7 + 1);
  v34 = *(v7 + 2);
  v35 = *(v7 + 3);
  v31 = (v7 + a4);
  v36 = vbicq_s8(vsubq_s16(v19, vclsq_s16(v30)), vceqzq_s16(v30));
  v37 = v34;
  v38 = vsubq_s16(v32, v8);
  v39 = vsubq_s16(v33, v8);
  v460 = v32;
  v462 = v33;
  v463 = *v31;
  v40 = vsubq_s16(*v31, v8);
  v41.i64[0] = 0x10001000100010;
  v41.i64[1] = 0x10001000100010;
  v42 = vsubq_s16(v31[1], v8);
  v43 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v38, v39), v40), v42), xmmword_29D2F1150);
  v44 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v38, v39), v40), v42), xmmword_29D2F1150);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vmaxq_s16(v28, v45);
  v48 = vminq_s16(v29, v46);
  v49 = vzip1q_s16(v45, v46);
  v50 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v49)), vceqzq_s16(v49));
  v51 = vsubq_s16(v37, v8);
  v52 = vsubq_s16(v35, v8);
  v471 = v37;
  v472 = v35;
  v473 = v31[2];
  v53 = vsubq_s16(v473, v8);
  v469 = v31[1];
  v470 = v31[3];
  v54 = vsubq_s16(v470, v8);
  v55 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v51, v52), v53), v54), xmmword_29D2F1150);
  v56 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v51, v52), v53), v54), xmmword_29D2F1150);
  v57 = vpmaxq_s16(v55, v55);
  v58 = vpminq_s16(v56, v56);
  v59 = vmaxq_s16(v47, v57);
  v60 = vminq_s16(v48, v58);
  v61 = vzip1q_s16(v57, v58);
  v62 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v61)), vceqzq_s16(v61));
  v63 = vpmaxq_s16(v23, v23);
  v64 = vpmaxq_s16(v36, v36);
  v65 = vpmaxq_s16(v50, v50);
  v66 = vpmaxq_s16(v62, v62);
  v67 = vmaxq_s16(vmaxq_s16(v63, v64), vmaxq_s16(v65, v66));
  v68 = vclzq_s16(vsubq_s16(v59, v60));
  v69 = vsubq_s16(v41, v68);
  v70 = vcgtq_s16(v67, v69);
  v71 = vminq_s16(v69, v67);
  v69.i64[0] = 0x8000800080008;
  v69.i64[1] = 0x8000800080008;
  v33.i64[0] = 0x3000300030003;
  v33.i64[1] = 0x3000300030003;
  v72 = vorrq_s8(vandq_s8(vceqzq_s16(v71), v33), vandq_s8(v70, v69));
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v63), v33), 0);
  v74 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v64), v33), 0);
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v65), v33), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v66), v33), 0);
  v33.i64[0] = 0x4000400040004;
  v33.i64[1] = 0x4000400040004;
  v77 = vbicq_s8(v33, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v73, v74))));
  v78 = vorrq_s8(v77, v72);
  v518 = v8;
  v498 = v9;
  v500 = v10;
  v502 = v11;
  v504 = v12;
  v514 = v51;
  v79 = vmaxvq_s16(v71);
  v72.i64[0] = 0xF000F000F000FLL;
  v72.i64[1] = 0xF000F000F000FLL;
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v80 = vshlq_s16(v10, vsubq_s16(v72, v68));
  v506 = v492;
  v507 = v13;
  v483 = v14;
  v485 = v13;
  v508 = v14;
  v509 = v495;
  v510 = v38;
  v511 = v39;
  v477 = v40;
  v479 = v52;
  v512 = v40;
  v513 = v42;
  v515 = v52;
  v82 = a5 < 2 || a6 < 2;
  v516 = v53;
  v517 = v54;
  v525 = v60;
  v524 = v71;
  v83 = vandq_s8(vsubq_s16(v80, v60), v70);
  v481 = v59;
  v526 = v59;
  v527 = v83;
  v84 = vsubq_s16(v71, v74);
  v490 = v70;
  v493 = vsubq_s16(v71, v73);
  v520 = v493;
  v521 = v84;
  v85 = vsubq_s16(v71, v76);
  v488 = vsubq_s16(v71, v75);
  v522 = v488;
  v523 = v85;
  v519 = v78;
  if (v79)
  {
    v440 = v60;
    v456 = v83;
    v458 = v78;
    v86 = vsubq_s16(v506, vqtbl1q_s8(v506, xmmword_29D2F1140));
    v87 = vsubq_s16(v507, vqtbl1q_s8(v507, xmmword_29D2F1140));
    v88 = vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1140));
    v89 = vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1140));
    v90 = v85;
    v91 = vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1140));
    v92 = vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1140));
    v443 = vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140));
    v444 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v445 = vsubq_s16(v504, vqtbl1q_s8(v504, xmmword_29D2F1140));
    v446 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1140));
    v93 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v444, v443), v446), v445), xmmword_29D2F1150);
    v94 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v444, v443), v446), v445), xmmword_29D2F1150);
    v95 = vpmaxq_s16(v93, v93);
    v96 = vpminq_s16(v94, v94);
    v97.i64[0] = 0x8000800080008000;
    v97.i64[1] = 0x8000800080008000;
    v98 = vmaxq_s16(v95, v97);
    v99.i64[0] = 0x8000800080008000;
    v99.i64[1] = 0x8000800080008000;
    v100 = vminq_s16(v96, v99);
    v101 = vzip1q_s16(v95, v96);
    v102 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v101)), vceqzq_s16(v101));
    v103 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v86, v87), v88), v89);
    v442 = v87;
    v104 = vminq_s16(v86, v87);
    v105 = v88;
    v441 = v89;
    v106 = vminq_s16(vminq_s16(v104, v88), v89);
    v107 = vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1140));
    v108 = v90;
    v109 = vqtbl1q_s8(v103, xmmword_29D2F1150);
    v110 = vqtbl1q_s8(v106, xmmword_29D2F1150);
    v111 = vpmaxq_s16(v109, v109);
    v112 = vpminq_s16(v110, v110);
    v113 = vmaxq_s16(v98, v111);
    v114 = vminq_s16(v100, v112);
    v115 = vzip1q_s16(v111, v112);
    v116 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v115)), vceqzq_s16(v115));
    v117 = vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1140));
    v118 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v117, v107), v91), v92), xmmword_29D2F1150);
    v119 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v117, v107), v91), v92), xmmword_29D2F1150);
    v120 = vpmaxq_s16(v118, v118);
    v121 = vpminq_s16(v119, v119);
    v122 = vmaxq_s16(v113, v120);
    v123 = vminq_s16(v114, v121);
    v124 = vzip1q_s16(v120, v121);
    v125 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v124)), vceqzq_s16(v124));
    v126 = vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1140));
    v452 = vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1140));
    v454 = vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1140));
    v450 = vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1140));
    v127 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v126, v454), v452), v450), xmmword_29D2F1150);
    v128 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v126, v454), v452), v450), xmmword_29D2F1150);
    v129 = vpmaxq_s16(v127, v127);
    v130 = vpminq_s16(v128, v128);
    v131 = vmaxq_s16(v122, v129);
    v132 = vminq_s16(v123, v130);
    v133 = vzip1q_s16(v129, v130);
    v134 = vbicq_s8(vsubq_s16(v41, vclsq_s16(v133)), vceqzq_s16(v133));
    v135 = vpmaxq_s16(v102, v102);
    v136 = vpmaxq_s16(v116, v116);
    v137 = vpmaxq_s16(v125, v125);
    v138 = vpmaxq_s16(v134, v134);
    v139 = vmaxq_s16(vmaxq_s16(v135, v136), vmaxq_s16(v137, v138));
    v439 = v132;
    v140 = vclzq_s16(vsubq_s16(v131, v132));
    v141 = vsubq_s16(v41, v140);
    v142 = vcgtq_s16(v139, v141);
    v143 = vminq_s16(v141, v139);
    v139.i64[0] = 0x18001800180018;
    v139.i64[1] = 0x18001800180018;
    v144 = vbslq_s8(v142, v139, v41);
    v145.i64[0] = 0x3000300030003;
    v145.i64[1] = 0x3000300030003;
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v135), v145), 0);
    v147 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v136), v145), 0);
    v148 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v137), v145), 0);
    v149 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v138), v145), 0);
    v145.i64[0] = 0x4000400040004;
    v145.i64[1] = 0x4000400040004;
    v150 = vbicq_s8(v145, vceqq_s16(vaddq_s16(v149, v148), vnegq_s16(vaddq_s16(v146, v147))));
    v151 = vsubq_s16(v143, v146);
    v152 = vsubq_s16(v143, v147);
    v153 = v77;
    v154 = vsubq_s16(v143, v148);
    v155 = vsubq_s16(v143, v149);
    v149.i64[0] = 0x7000700070007;
    v149.i64[1] = 0x7000700070007;
    v156 = v84;
    v157 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v71, v490), v493, v149), vshlq_n_s16(vaddq_s16(vaddq_s16(v488, v84), v108), 3uLL)), vaddq_s16(v153, v153)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v143, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v151, v149), vshlq_n_s16(vaddq_s16(vaddq_s16(v154, v152), v155), 3uLL)), vaddq_s16(v150, v150))).i64[0], 0);
    if (vaddvq_s16(v157))
    {
      v498 = vbslq_s8(v157, v444, v498);
      v500 = vbslq_s8(v157, v443, v500);
      v502 = vbslq_s8(v157, v446, v11);
      v504 = vbslq_s8(v157, v445, v504);
      v506 = vbslq_s8(v157, v86, v506);
      v507 = vbslq_s8(v157, v442, v485);
      v508 = vbslq_s8(v157, v105, v483);
      v509 = vbslq_s8(v157, v441, v495);
      v510 = vbslq_s8(v157, v117, v510);
      v511 = vbslq_s8(v157, v107, v39);
      v158.i64[0] = 0x3000300030003;
      v158.i64[1] = 0x3000300030003;
      v159 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v143), v158), v144), v150);
      v160.i64[0] = 0xF000F000F000FLL;
      v160.i64[1] = 0xF000F000F000FLL;
      v158.i64[0] = -1;
      v158.i64[1] = -1;
      v512 = vbslq_s8(v157, v91, v477);
      v513 = vbslq_s8(v157, v92, v42);
      v514 = vbslq_s8(v157, v126, v514);
      v515 = vbslq_s8(v157, v454, v479);
      v516 = vbslq_s8(v157, v452, v53);
      v517 = vbslq_s8(v157, v450, v54);
      v520 = vbslq_s8(v157, v151, v493);
      v521 = vbslq_s8(v157, v152, v156);
      v522 = vbslq_s8(v157, v154, v488);
      v523 = vbslq_s8(v157, v155, v108);
      v526 = vbslq_s8(v157, v131, v481);
      v527 = vbslq_s8(v157, vandq_s8(vsubq_s16(vshlq_s16(v158, vsubq_s16(v160, v140)), v439), v142), v456);
      v525 = vbslq_s8(v157, v439, v440);
      v524 = vbslq_s8(v157, v143, v71);
      v518 = vbslq_s8(v157, vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1140)), v518);
      v519 = vbslq_s8(v157, v159, v458);
    }

    if (v82)
    {
      v161 = v521;
      v162 = v522;
      v163 = v524;
      v164 = v523;
      v166 = v506;
      v165 = v507;
      v168 = v508;
      v167 = v509;
      v169 = v510;
      v170 = v511;
      v171 = v512;
      v172 = v513;
      v173 = v514;
      v174 = v515;
      v175 = v516;
      v176 = v517;
      v177 = v520;
      v178 = v519;
      v180 = v498;
      v179 = v500;
      v182 = v502;
      v181 = v504;
    }

    else
    {
      v184 = vqtbl4q_s8(v476, xmmword_29D2F1160);
      v185 = vsubq_s16(v476.val[0], vqtbl4q_s8(v476, xmmword_29D2F10B0));
      v186 = vsubq_s16(v476.val[2], v184);
      v496 = vsubq_s16(v476.val[3], v184);
      v529.val[0] = v464;
      v529.val[1] = v466;
      v529.val[2] = v467;
      v529.val[3].i64[0] = v475.i64[0];
      v529.val[3].i64[1] = v476.val[3].i64[1];
      v187 = vsubq_s16(v464, vqtbl4q_s8(v529, xmmword_29D2F10B0));
      v188 = vsubq_s16(v466, vqtbl4q_s8(v529, xmmword_29D2F10F0));
      v189 = vsubq_s16(v467, vqtbl4q_s8(v529, xmmword_29D2F1160));
      v528.val[0] = v460;
      v528.val[1] = v462;
      v528.val[2] = v463;
      v528.val[3].i64[0] = v469.i64[0];
      v528.val[3].i64[1] = v476.val[3].i64[1];
      v190 = vsubq_s16(v475, vqtbl4q_s8(v529, xmmword_29D2F1100));
      v529.val[3] = vqtbl4q_s8(v528, xmmword_29D2F10C0);
      v191 = vsubq_s16(v460, vqtbl4q_s8(v528, xmmword_29D2F1170));
      v192 = vsubq_s16(v462, vqtbl4q_s8(v528, xmmword_29D2F1180));
      v528.val[3] = vsubq_s16(v463, vqtbl4q_s8(v528, xmmword_29D2F10B0));
      v193 = vsubq_s16(v469, v529.val[3]);
      v529.val[0] = v471;
      v529.val[1] = v472;
      v529.val[2] = v473;
      v529.val[3].i64[0] = v470.i64[0];
      v529.val[3].i64[1] = v476.val[3].i64[1];
      v194 = vqtbl4q_s8(v529, xmmword_29D2F10C0);
      v195 = vsubq_s16(v471, vqtbl4q_s8(v529, xmmword_29D2F1170));
      v196 = vsubq_s16(v472, vqtbl4q_s8(v529, xmmword_29D2F1120));
      v529.val[2] = vsubq_s16(v473, vqtbl4q_s8(v529, xmmword_29D2F10B0));
      v197.i64[0] = v496.i64[0];
      v197.i64[1] = v185.i64[0];
      v185.i64[0] = v496.i64[1];
      v198 = vsubq_s16(v470, v194);
      v494 = v186;
      v497 = vsubq_s16(v476.val[1], vqtbl4q_s8(v476, xmmword_29D2F10C0));
      v468 = v185;
      v199 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v185, v497), v186), v197), xmmword_29D2F1150);
      v200 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v185, v497), v186), v197), xmmword_29D2F1150);
      v201 = vpmaxq_s16(v199, v199);
      v202 = vpminq_s16(v200, v200);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v203 = vmaxq_s16(v201, v194);
      v204.i64[0] = 0x8000800080008000;
      v204.i64[1] = 0x8000800080008000;
      v205 = vminq_s16(v202, v204);
      v206 = vzip1q_s16(v201, v202);
      v528.val[0].i64[0] = 0x10001000100010;
      v528.val[0].i64[1] = 0x10001000100010;
      v207 = vbicq_s8(vsubq_s16(v528.val[0], vclsq_s16(v206)), vceqzq_s16(v206));
      v208 = vpmaxq_s16(v207, v207);
      v489 = v188;
      v491 = v187;
      v486 = v190;
      v487 = v189;
      v209 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v187, v188), v189), v190), xmmword_29D2F1150);
      v528.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v187, v188), v189), v190), xmmword_29D2F1150);
      v210 = vpmaxq_s16(v209, v209);
      v528.val[2] = vpminq_s16(v528.val[2], v528.val[2]);
      v211 = vmaxq_s16(v203, v210);
      v212 = vminq_s16(v205, v528.val[2]);
      v213 = vzip1q_s16(v210, v528.val[2]);
      v214 = vbicq_s8(vsubq_s16(v528.val[0], vclsq_s16(v213)), vceqzq_s16(v213));
      v215 = vpmaxq_s16(v214, v214);
      v482 = v192;
      v484 = v191;
      v478 = v193;
      v480 = v528.val[3];
      v528.val[2] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v191, v192), v528.val[3]), v193), xmmword_29D2F1150);
      v529.val[0] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v191, v192), v528.val[3]), v193), xmmword_29D2F1150);
      v528.val[2] = vpmaxq_s16(v528.val[2], v528.val[2]);
      v529.val[0] = vpminq_s16(v529.val[0], v529.val[0]);
      v216 = vmaxq_s16(v211, v528.val[2]);
      v217 = vminq_s16(v212, v529.val[0]);
      v528.val[2] = vzip1q_s16(v528.val[2], v529.val[0]);
      v528.val[2] = vbicq_s8(vsubq_s16(v528.val[0], vclsq_s16(v528.val[2])), vceqzq_s16(v528.val[2]));
      v528.val[2] = vpmaxq_s16(v528.val[2], v528.val[2]);
      v474 = v195;
      v448 = v529.val[2];
      v465 = v198;
      v529.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v195, v196), v529.val[2]), v198), xmmword_29D2F1150);
      v218 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v195, v196), v529.val[2]), v198), xmmword_29D2F1150);
      v529.val[0] = vpmaxq_s16(v529.val[0], v529.val[0]);
      v219 = vpminq_s16(v218, v218);
      v529.val[1] = vmaxq_s16(v216, v529.val[0]);
      v529.val[2] = vminq_s16(v217, v219);
      v220 = vzip1q_s16(v529.val[0], v219);
      v221 = vbicq_s8(vsubq_s16(v528.val[0], vclsq_s16(v220)), vceqzq_s16(v220));
      v222 = vpmaxq_s16(v221, v221);
      v223 = vmaxq_s16(vmaxq_s16(v208, v215), vmaxq_s16(v528.val[2], v222));
      v459 = v529.val[2];
      v461 = v529.val[1];
      v449 = vclzq_s16(vsubq_s16(v529.val[1], v529.val[2]));
      v224 = vsubq_s16(v528.val[0], v449);
      v225 = vcgtq_s16(v223, v224);
      v226 = vminq_s16(v224, v223);
      v223.i64[0] = 0x3000300030003;
      v223.i64[1] = 0x3000300030003;
      v227 = vmaxq_s16(vminq_s16(vsubq_s16(v226, v208), v223), 0);
      v228 = vmaxq_s16(vminq_s16(vsubq_s16(v226, v215), v223), 0);
      v229 = vmaxq_s16(vminq_s16(vsubq_s16(v226, v528.val[2]), v223), 0);
      v230 = vmaxq_s16(vminq_s16(vsubq_s16(v226, v222), v223), 0);
      v528.val[1] = vsubq_s16(v226, v227);
      v528.val[2] = vsubq_s16(v226, v228);
      v529.val[1] = vsubq_s16(v226, v230);
      v231 = vceqq_s16(vaddq_s16(v230, v229), vnegq_s16(vaddq_s16(v227, v228)));
      v228.i64[0] = 0x4000400040004;
      v228.i64[1] = 0x4000400040004;
      v232 = vbicq_s8(v228, v231);
      v230.i64[0] = 0x7000700070007;
      v230.i64[1] = 0x7000700070007;
      v453 = vsubq_s16(v226, v229);
      v455 = v528.val[2];
      v451 = v529.val[1];
      v457 = v528.val[1];
      v233 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v226, v225), v528.val[1], v230), vshlq_n_s16(vaddq_s16(vaddq_s16(v453, v528.val[2]), v529.val[1]), 3uLL)), vaddq_s16(v232, v232));
      v178 = v519;
      v177 = v520;
      v234 = vandq_s8(v519, v223);
      v223.i64[0] = 0x2000200020002;
      v223.i64[1] = 0x2000200020002;
      v235 = vandq_s8(vceqq_s16(v234, v223), v528.val[0]);
      v223.i64[0] = 0x8000800080008;
      v223.i64[1] = 0x8000800080008;
      v163 = v524;
      v164 = v523;
      v161 = v521;
      v162 = v522;
      v236 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v524, vceqzq_s16(vandq_s8(v519, v223))), vandq_s8(vaddq_s16(v178, v178), v223)), v235), v520, v230), vshlq_n_s16(vaddq_s16(vaddq_s16(v522, v521), v523), 3uLL)), v233).i64[0], 0);
      v166 = v506;
      v165 = v507;
      v168 = v508;
      v167 = v509;
      v169 = v510;
      v170 = v511;
      v171 = v512;
      v172 = v513;
      v180 = v498;
      v179 = v500;
      v182 = v502;
      v181 = v504;
      if (vaddvq_s16(v236))
      {
        v447 = v197;
        v237.i64[0] = 0x2000200020002;
        v237.i64[1] = 0x2000200020002;
        v238.i64[0] = 0x9000900090009;
        v238.i64[1] = 0x9000900090009;
        v239 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v226), v237), vsubq_s16(vandq_s8(v225, v238), vmvnq_s8(v225))), v232);
        v238.i64[0] = 0xF000F000F000FLL;
        v238.i64[1] = 0xF000F000F000FLL;
        v240.i64[0] = -1;
        v240.i64[1] = -1;
        v180 = vbslq_s8(v236, v468, v498);
        v179 = vbslq_s8(v236, v497, v500);
        v182 = vbslq_s8(v236, v494, v502);
        v181 = vbslq_s8(v236, v447, v504);
        v166 = vbslq_s8(v236, v491, v506);
        v165 = vbslq_s8(v236, v489, v507);
        v168 = vbslq_s8(v236, v487, v508);
        v167 = vbslq_s8(v236, v486, v509);
        v169 = vbslq_s8(v236, v484, v510);
        v170 = vbslq_s8(v236, v482, v511);
        v171 = vbslq_s8(v236, v480, v512);
        v172 = vbslq_s8(v236, v478, v513);
        v173 = vbslq_s8(v236, v474, v514);
        v175 = vbslq_s8(v236, v448, v516);
        v177 = vbslq_s8(v236, v457, v520);
        v161 = vbslq_s8(v236, v455, v521);
        v162 = vbslq_s8(v236, v453, v522);
        v164 = vbslq_s8(v236, v451, v523);
        v163 = vbslq_s8(v236, v226, v524);
        v178 = vbslq_s8(v236, v239, v519);
        v518 = vbslq_s8(v236, vextq_s8(v476.val[3], v476.val[3], 8uLL), v518);
        v525 = vbslq_s8(v236, v459, v525);
        v526 = vbslq_s8(v236, v461, v526);
        v527 = vbslq_s8(v236, vandq_s8(vsubq_s16(vshlq_s16(v240, vsubq_s16(v238, v449)), v459), v225), v527);
        v506 = v166;
        v521 = v161;
        v522 = v162;
        v523 = v164;
        v524 = v163;
        v520 = v177;
        v519 = v178;
        v176 = vbslq_s8(v236, v465, v517);
        v174 = vbslq_s8(v236, v196, v515);
      }

      else
      {
        v176 = v517;
        v175 = v516;
        v174 = v515;
        v173 = v514;
      }
    }

    v241 = vandq_s8(v527, vceqq_s16(v163, v177));
    v499 = vaddq_s16(v241, v180);
    v501 = vaddq_s16(v179, v241);
    v503 = vaddq_s16(v182, v241);
    v505 = vaddq_s16(v181, v241);
    v242 = vandq_s8(v527, vceqq_s16(v163, v161));
    v506 = vaddq_s16(v166, v242);
    v507 = vaddq_s16(v165, v242);
    v508 = vaddq_s16(v168, v242);
    v509 = vaddq_s16(v167, v242);
    v243 = vandq_s8(v527, vceqq_s16(v163, v162));
    v510 = vaddq_s16(v169, v243);
    v511 = vaddq_s16(v170, v243);
    v512 = vaddq_s16(v171, v243);
    v513 = vaddq_s16(v172, v243);
    v244 = vandq_s8(v527, vceqq_s16(v163, v164));
    v514 = vaddq_s16(v173, v244);
    v515 = vaddq_s16(v174, v244);
    v516 = vaddq_s16(v175, v244);
    v517 = vaddq_s16(v176, v244);
    v244.i64[0] = 0x8000800080008;
    v244.i64[1] = 0x8000800080008;
    v245.i64[0] = 0x3000300030003;
    v245.i64[1] = 0x3000300030003;
    v246.i64[0] = 0x2000200020002;
    v246.i64[1] = 0x2000200020002;
    v247 = vceqq_s16(vandq_s8(v178, v245), v246);
    v246.i64[0] = 0x10001000100010;
    v246.i64[1] = 0x10001000100010;
    v248 = vandq_s8(v247, v246);
    v246.i64[0] = 0x7000700070007;
    v246.i64[1] = 0x7000700070007;
    v249 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v162, v161), v164), 3uLL), v177, v246), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v178, v178), v244), vbicq_s8(v163, vceqzq_s16(vandq_s8(v178, v244)))), v248));
    v250 = vpaddq_s16(v249, v249);
    if ((vpaddq_s16(v250, v250).i16[0] - 925) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
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
      v254 = v518.i64[0];
      v255.i32[0] = v163.u16[0];
      v255.i32[1] = v163.u16[1];
      v256 = vceqz_s32(vand_s8(v255, 0xFFFF0000FFFFLL));
      v257.i64[0] = v256.i32[0];
      v257.i64[1] = v256.i32[1];
      v258 = v257;
      v259.i64[0] = -1;
      v259.i64[1] = -1;
      v260 = vand_s8(vadd_s32(v255, -1), 0xF0000000FLL);
      v257.i64[0] = v260.u32[0];
      v257.i64[1] = v260.u32[1];
      v261 = vbicq_s8(vshlq_u64(v257, xmmword_29D2F1190), v258);
      if (v163.i16[2])
      {
        v262 = (v163.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v262 = 0;
      }

      if (v163.i16[3])
      {
        v263 = ((v163.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v263 = 0;
      }

      v264 = vorrq_s8(vdupq_laneq_s64(v261, 1), v261).u64[0] | v262 | v263 | ((v178.i8[6] & 0x1F) << 15) | v178.i8[0] & 0x1F | (32 * (v178.i8[2] & 0x1F)) & 0x83FF | ((v178.i8[4] & 0x1F) << 10);
      v265 = v253 | (v264 << v252);
      if (v252 >= 0x1C)
      {
        *v251 = v265;
        v265 = v264 >> (-8 * (a1 & 7u));
      }

      v266 = v254 | (WORD1(v254) << 16) | (WORD2(v254) << 32) | (HIWORD(v254) << 48);
      v267 = (v252 + 36) & 0x3C;
      *(v251 + (((v252 + 36) >> 3) & 8)) = v265 | (v266 << v267);
      v268 = v252 + 100;
      v269 = vsubq_s16(v524, v520);
      v270 = vsubq_s16(v524, v521);
      v271 = vsubq_s16(v524, v522);
      v272 = vsubq_s16(v524, v523);
      *v269.i8 = vqmovn_u16(v269);
      *v270.i8 = vqmovn_u16(v270);
      *v271.i8 = vqmovn_u16(v271);
      *v272.i8 = vqmovn_u16(v272);
      v273 = vtrn1q_s8(v269, v270);
      v274 = vtrn2q_s8(v269, v270);
      v275 = vtrn1q_s8(v271, v272);
      v276 = vtrn2q_s8(v271, v272);
      v277 = vzip1q_s16(v274, v276);
      v278 = vtrn2q_s16(v274, v276);
      v274.i64[0] = vzip1q_s32(vzip1q_s16(v273, v275), v277).u64[0];
      v278.i64[0] = vzip1q_s32(vtrn2q_s16(v273, v275), v278).u64[0];
      v271.i64[0] = 0x202020202020202;
      v271.i64[1] = 0x202020202020202;
      v279 = vandq_s8(vmovl_s16(vtst_s16(*v519.i8, 0x4000400040004)), v271);
      v271.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v271.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v280 = vshlq_u8(v259, vorrq_s8(v279, v271));
      v281 = vmovl_u8(vand_s8(*v280.i8, *v274.i8));
      v282 = vmovl_u8(vand_s8(*&vextq_s8(v280, v280, 8uLL), *v278.i8));
      v283 = vmovl_u8(*v279.i8);
      v284 = vmovl_high_u8(v279);
      v285 = vpaddq_s16(vshlq_u16(v281, vtrn1q_s16(0, v283)), vshlq_u16(v282, vtrn1q_s16(0, v284)));
      v286 = vpaddq_s16(v283, v284);
      v287 = vmovl_u16(*v286.i8);
      v288 = vmovl_high_u16(v286);
      v289 = vpaddq_s32(vshlq_u32(vmovl_u16(*v285.i8), vtrn1q_s32(0, v287)), vshlq_u32(vmovl_high_u16(v285), vtrn1q_s32(0, v288)));
      v290 = vpaddq_s32(v287, v288);
      v291.i64[0] = v289.u32[0];
      v291.i64[1] = v289.u32[1];
      v292 = v291;
      v291.i64[0] = v289.u32[2];
      v291.i64[1] = v289.u32[3];
      v293 = v291;
      v291.i64[0] = v290.u32[0];
      v291.i64[1] = v290.u32[1];
      v294 = v291;
      v291.i64[0] = v290.u32[2];
      v291.i64[1] = v290.u32[3];
      v295 = vpaddq_s64(vshlq_u64(v292, vzip1q_s64(0, v294)), vshlq_u64(v293, vzip1q_s64(0, v291)));
      v296 = vpaddq_s64(v294, v291);
      v297 = (v252 + 100) & 0x3C;
      v298 = (v295.i64[0] << v297) | (v266 >> -v267);
      if ((v296.i64[0] + v297) >= 0x40)
      {
        *(v251 + ((v268 >> 3) & 0x18)) = v298;
        v298 = v295.i64[0] >> -v297;
      }

      v299 = v296.i64[0] + v268;
      v300 = v298 | (v295.i64[1] << v299);
      if ((v299 & 0x3F) + v296.i64[1] >= 0x40)
      {
        *(v251 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v295.i64[1] >> -(v299 & 0x3F);
        if ((v299 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = v299 + v296.i64[1];
      v302.i64[0] = 0x8000800080008;
      v302.i64[1] = 0x8000800080008;
      v303.i64[0] = -1;
      v303.i64[1] = -1;
      v304 = vandq_s8(vextq_s8(vtstq_s16(v519, v302), 0, 8uLL), v524);
      v305.i64[0] = 0xF000F000F000FLL;
      v305.i64[1] = 0xF000F000F000FLL;
      v306 = vandq_s8(vshlq_u16(v303, vaddq_s16(v304, v305)), v527);
      v307 = vmovl_u16(*v304.i8);
      v308 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v307)), vmovl_high_u16(v306));
      v309 = vpaddq_s32(v307, vmovl_high_u16(v304));
      v310.i64[0] = v308.u32[0];
      v310.i64[1] = v308.u32[1];
      v311 = v310;
      v310.i64[0] = v308.u32[2];
      v310.i64[1] = v308.u32[3];
      v312 = v310;
      v310.i64[0] = v309.u32[0];
      v310.i64[1] = v309.u32[1];
      v313 = v310;
      v310.i64[0] = v309.u32[2];
      v310.i64[1] = v309.u32[3];
      v314 = vpaddq_s64(vshlq_u64(v311, vzip1q_s64(0, v313)), vshlq_u64(v312, vzip1q_s64(0, v310)));
      v315 = vpaddq_s64(v313, v310);
      v316 = (v314.i64[0] << v301) | v300;
      if (v315.i64[0] + (v301 & 0x3F) >= 0x40)
      {
        *(v251 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
        v316 = v314.i64[0] >> -(v301 & 0x3F);
        if ((v301 & 0x3F) == 0)
        {
          v316 = 0;
        }
      }

      v317 = v315.i64[0] + v301;
      v318 = v316 | (v314.i64[1] << v317);
      if ((v317 & 0x3F) + v315.i64[1] >= 0x40)
      {
        *(v251 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v314.i64[1] >> -(v317 & 0x3F);
        if ((v317 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = v317 + v315.i64[1];
      v320 = vextq_s8(0, v520, 8uLL);
      v321.i64[0] = 0xF000F000F000FLL;
      v321.i64[1] = 0xF000F000F000FLL;
      v322.i64[0] = -1;
      v322.i64[1] = -1;
      v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v320, v321)), v499);
      v324 = vmovl_u16(*v320.i8);
      v325 = vmovl_high_u16(v320);
      v326 = vpaddq_s32(vmovl_u16(*v323.i8), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v325)));
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
        *(v251 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v332.i64[0] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = v333.i64[0] + v319;
      v336 = v334 | (v332.i64[1] << v335);
      if ((v335 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v251 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v332.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335 + v333.i64[1];
      v338.i64[0] = 0xF000F000F000FLL;
      v338.i64[1] = 0xF000F000F000FLL;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vshlq_u16(v339, vaddq_s16(v520, v338)), v501);
      v341 = vmovl_u16(*v520.i8);
      v342 = vmovl_high_u16(v520);
      v343 = vpaddq_s32(vshlq_u32(vmovl_u16(*v340.i8), vtrn1q_s32(0, v341)), vshlq_u32(vmovl_high_u16(v340), vtrn1q_s32(0, v342)));
      v344 = vpaddq_s32(v341, v342);
      v345.i64[0] = v343.u32[0];
      v345.i64[1] = v343.u32[1];
      v346 = v345;
      v345.i64[0] = v343.u32[2];
      v345.i64[1] = v343.u32[3];
      v347 = v345;
      v345.i64[0] = v344.u32[0];
      v345.i64[1] = v344.u32[1];
      v348 = v345;
      v345.i64[0] = v344.u32[2];
      v345.i64[1] = v344.u32[3];
      v349 = vpaddq_s64(vshlq_u64(v346, vzip1q_s64(0, v348)), vshlq_u64(v347, vzip1q_s64(0, v345)));
      v350 = vpaddq_s64(v348, v345);
      v351 = (v349.i64[0] << v337) | v336;
      if (v350.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v251 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = v350.i64[0] + v337;
      v353 = v351 | (v349.i64[1] << v352);
      if ((v352 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v251 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v349.i64[1] >> -(v352 & 0x3F);
        if ((v352 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = v352 + v350.i64[1];
      v355.i64[0] = 0xF000F000F000FLL;
      v355.i64[1] = 0xF000F000F000FLL;
      v356.i64[0] = -1;
      v356.i64[1] = -1;
      v357 = vandq_s8(vshlq_u16(v356, vaddq_s16(v520, v355)), v503);
      v358 = vmovl_u16(*v520.i8);
      v359 = vmovl_high_u16(v520);
      v360 = vpaddq_s32(vshlq_u32(vmovl_u16(*v357.i8), vtrn1q_s32(0, v358)), vshlq_u32(vmovl_high_u16(v357), vtrn1q_s32(0, v359)));
      v361 = vpaddq_s32(v358, v359);
      v362.i64[0] = v360.u32[0];
      v362.i64[1] = v360.u32[1];
      v363 = v362;
      v362.i64[0] = v360.u32[2];
      v362.i64[1] = v360.u32[3];
      v364 = v362;
      v362.i64[0] = v361.u32[0];
      v362.i64[1] = v361.u32[1];
      v365 = v362;
      v362.i64[0] = v361.u32[2];
      v362.i64[1] = v361.u32[3];
      v366 = vpaddq_s64(vshlq_u64(v363, vzip1q_s64(0, v365)), vshlq_u64(v364, vzip1q_s64(0, v362)));
      v367 = vpaddq_s64(v365, v362);
      v368 = (v366.i64[0] << v354) | v353;
      if (v367.i64[0] + (v354 & 0x3F) >= 0x40)
      {
        *(v251 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
        v368 = v366.i64[0] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v368 = 0;
        }
      }

      v369 = v367.i64[0] + v354;
      v370 = v368 | (v366.i64[1] << v369);
      if ((v369 & 0x3F) + v367.i64[1] >= 0x40)
      {
        *(v251 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v366.i64[1] >> -(v369 & 0x3F);
        if ((v369 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = v369 + v367.i64[1];
      v372.i64[0] = 0xF000F000F000FLL;
      v372.i64[1] = 0xF000F000F000FLL;
      v373.i64[0] = -1;
      v373.i64[1] = -1;
      v374 = vandq_s8(vshlq_u16(v373, vaddq_s16(v520, v372)), v505);
      v375 = vmovl_u16(*v520.i8);
      v376 = vmovl_high_u16(v520);
      v377 = vpaddq_s32(vshlq_u32(vmovl_u16(*v374.i8), vtrn1q_s32(0, v375)), vshlq_u32(vmovl_high_u16(v374), vtrn1q_s32(0, v376)));
      v378 = vpaddq_s32(v375, v376);
      v379.i64[0] = v377.u32[0];
      v379.i64[1] = v377.u32[1];
      v380 = v379;
      v379.i64[0] = v377.u32[2];
      v379.i64[1] = v377.u32[3];
      v381 = v379;
      v379.i64[0] = v378.u32[0];
      v379.i64[1] = v378.u32[1];
      v382 = v379;
      v379.i64[0] = v378.u32[2];
      v379.i64[1] = v378.u32[3];
      v383 = vpaddq_s64(vshlq_u64(v380, vzip1q_s64(0, v382)), vshlq_u64(v381, vzip1q_s64(0, v379)));
      v384 = vpaddq_s64(v382, v379);
      v385 = (v383.i64[0] << v371) | v370;
      if (v384.i64[0] + (v371 & 0x3F) >= 0x40)
      {
        *(v251 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
        v385 = v383.i64[0] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v385 = 0;
        }
      }

      v386 = v384.i64[1];
      v387 = v384.i64[0] + v371;
      v388 = (v384.i64[0] + v371) & 0x3F;
      v389 = v385 | (v383.i64[1] << v387);
      if ((v388 + v384.i64[1]) >= 0x40)
      {
        *(v251 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v383.i64[1] >> -v388;
        if (!v388)
        {
          v389 = 0;
        }
      }

      v390 = 0;
      v391.i64[0] = 0xF000F000F000FLL;
      v391.i64[1] = 0xF000F000F000FLL;
      v392.i64[0] = -1;
      v392.i64[1] = -1;
      v393 = v387 + v386;
      do
      {
        v394 = vandq_s8(vshlq_u16(v392, vaddq_s16(v521, v391)), *(&v506 + v390));
        v395 = vmovl_u16(*v521.i8);
        v396 = vmovl_high_u16(v521);
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
        v405 = (v403.i64[0] << v393) | v389;
        if (v404.i64[0] + (v393 & 0x3F) >= 0x40)
        {
          *(v251 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
          v405 = v403.i64[0] >> -(v393 & 0x3F);
          if ((v393 & 0x3F) == 0)
          {
            v405 = 0;
          }
        }

        v406 = v404.i64[0] + v393;
        v389 = v405 | (v403.i64[1] << v406);
        if ((v406 & 0x3F) + v404.i64[1] >= 0x40)
        {
          *(v251 + ((v406 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
          v389 = v403.i64[1] >> -(v406 & 0x3F);
          if ((v406 & 0x3F) == 0)
          {
            v389 = 0;
          }
        }

        v393 = v406 + v404.i64[1];
        v390 += 16;
      }

      while (v390 != 64);
      v407 = 0;
      v408.i64[0] = 0xF000F000F000FLL;
      v408.i64[1] = 0xF000F000F000FLL;
      v409.i64[0] = -1;
      v409.i64[1] = -1;
      do
      {
        v410 = vandq_s8(vshlq_u16(v409, vaddq_s16(v522, v408)), *(&v510 + v407));
        v411 = vmovl_u16(*v522.i8);
        v412 = vmovl_high_u16(v522);
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
        v421 = (v419.i64[0] << v393) | v389;
        if (v420.i64[0] + (v393 & 0x3F) >= 0x40)
        {
          *(v251 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
          v421 = v419.i64[0] >> -(v393 & 0x3F);
          if ((v393 & 0x3F) == 0)
          {
            v421 = 0;
          }
        }

        v422 = v420.i64[0] + v393;
        v389 = v421 | (v419.i64[1] << v422);
        if ((v422 & 0x3F) + v420.i64[1] >= 0x40)
        {
          *(v251 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
          v389 = v419.i64[1] >> -(v422 & 0x3F);
          if ((v422 & 0x3F) == 0)
          {
            v389 = 0;
          }
        }

        v393 = v422 + v420.i64[1];
        v407 += 16;
      }

      while (v407 != 64);
      v423 = 0;
      v424.i64[0] = 0xF000F000F000FLL;
      v424.i64[1] = 0xF000F000F000FLL;
      v425.i64[0] = -1;
      v425.i64[1] = -1;
      do
      {
        v426 = vandq_s8(vshlq_u16(v425, vaddq_s16(v523, v424)), *(&v514 + v423));
        v427 = vmovl_u16(*v523.i8);
        v428 = vmovl_high_u16(v523);
        v429 = vpaddq_s32(vshlq_u32(vmovl_u16(*v426.i8), vtrn1q_s32(0, v427)), vshlq_u32(vmovl_high_u16(v426), vtrn1q_s32(0, v428)));
        v430 = vpaddq_s32(v427, v428);
        v431.i64[0] = v429.u32[0];
        v431.i64[1] = v429.u32[1];
        v432 = v431;
        v431.i64[0] = v429.u32[2];
        v431.i64[1] = v429.u32[3];
        v433 = v431;
        v431.i64[0] = v430.u32[0];
        v431.i64[1] = v430.u32[1];
        v434 = v431;
        v431.i64[0] = v430.u32[2];
        v431.i64[1] = v430.u32[3];
        v435 = vpaddq_s64(vshlq_u64(v432, vzip1q_s64(0, v434)), vshlq_u64(v433, vzip1q_s64(0, v431)));
        v436 = vpaddq_s64(v434, v431);
        v437 = (v435.i64[0] << v393) | v389;
        if (v436.i64[0] + (v393 & 0x3F) >= 0x40)
        {
          *(v251 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
          v437 = v435.i64[0] >> -(v393 & 0x3F);
          if ((v393 & 0x3F) == 0)
          {
            v437 = 0;
          }
        }

        v438 = v436.i64[0] + v393;
        v389 = v437 | (v435.i64[1] << v438);
        if ((v438 & 0x3F) + v436.i64[1] >= 0x40)
        {
          *(v251 + ((v438 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
          v389 = v435.i64[1] >> -(v438 & 0x3F);
          if ((v438 & 0x3F) == 0)
          {
            v389 = 0;
          }
        }

        v393 = v438 + v436.i64[1];
        v423 += 16;
      }

      while (v423 != 64);
      if ((v393 & 0x3F) != 0)
      {
        *(v251 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      }

      result = (v393 - v252 + 7) >> 3;
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