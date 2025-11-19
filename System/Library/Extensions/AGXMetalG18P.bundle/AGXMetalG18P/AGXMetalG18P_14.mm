unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int32x4_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 8, a2, v23, v22);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 12, a2, v26, v25);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 128), a2, v28, v27);
    v9 = (v9 + result);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 192), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v9 = *(a3 + 16);
      v10 = *(a3 + 32);
      v11 = *(a3 + 48);
      v12 = *(a3 + 64);
      v13 = *(a3 + 80);
      v14 = *(a3 + 96);
      v15 = *(a3 + 112);
      v16 = *(a3 + 128);
      v17 = *(a3 + 144);
      v18 = *(a3 + 160);
      v19 = *(a3 + 176);
      v20 = *(a3 + 192);
      v21 = *(a3 + 208);
      v22 = *(a3 + 224);
      v23 = *(a3 + 240);
      f64 = a1[4].f64;
      *a1 = *a3;
      a1[1] = v9;
      a1[2] = v10;
      a1[3] = v11;
      v25 = (a1->f64 + a2);
      *f64 = v16;
      f64[1] = v17;
      f64[2] = v18;
      f64[3] = v19;
      *v25 = v12;
      v25[1] = v13;
      v25[2] = v14;
      v25[3] = v15;
      v25 += 4;
      v4 = 256;
      *v25 = v20;
      v25[1] = v21;
      v25[2] = v22;
      v25[3] = v23;
      return v4;
    case 7u:
      v7 = vld1q_dup_f64(a3);
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      a1[4] = v7;
      a1[5] = v7;
      a1[6] = v7;
      a1[7] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v4 = 8;
      v8[6] = v7;
      v8[7] = v7;
      return v4;
    case 0u:
      v4 = 0;
      v5 = 0uLL;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v6 = (a1 + a2);
      v6[6] = 0u;
      v6[7] = 0u;
      v6[4] = 0u;
      v6[5] = 0u;
      v6[2] = 0u;
      v6[3] = 0u;
LABEL_141:
      *v6 = v5;
      v6[1] = v5;
      return v4;
  }

  v26 = 8 * (a3 & 7);
  v27 = a3 & 0xFFFFFFFFFFFFFFF8;
  v28 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v26;
  if (v26 >= 0x2D)
  {
    v28 |= *(v27 + 8) << (-8 * (a3 & 7u));
  }

  v29 = (8 * (a3 & 7)) | 0x800;
  v30.i32[0] = v28;
  v30.i32[1] = (v28 >> 5) & 0x7FFF;
  *v31.i8 = vand_s8(v30, 0x1F0000001FLL);
  v32 = v26 + 84;
  v364 = *v31.i8;
  v31.i64[1] = v31.i64[0];
  v33.i64[0] = 0xFFFF0000FFFFLL;
  v33.i64[1] = 0xFFFF0000FFFFLL;
  v34 = vandq_s8(v31, v33);
  v33.i16[0] = (v28 >> 10) & 0x1F;
  v33.i16[1] = (v28 >> 15) & 0x1F;
  v33.i32[1] = v33.i32[0];
  v35 = vmovl_u16(vadd_s16(*v33.i8, 0x1000100010001));
  v36 = *&v34 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v37.i64[0] = 0x300000003;
  v37.i64[1] = 0x300000003;
  v38 = vbicq_s8(v35, vceqq_s32((*&v34 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v37));
  v37.i64[0] = 0x404040404040404;
  v37.i64[1] = 0x404040404040404;
  v39 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v34 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v37);
  if (vmaxvq_s8(v39) < 1)
  {
    v48 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v361 = v66;
    v362 = v66;
    v64 = v38;
    v63 = v38;
    v62 = v38;
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v61 = v38;
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v363 = v67;
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
    v46 = v32 + v45;
    v47 = v45 <= 0x80 && v29 >= v46;
    v48 = !v47;
    v49 = 0uLL;
    if (v47)
    {
      v50 = v32 & 0x3C;
      v51 = vaddq_s64(vdupq_n_s64(v50), vzip1q_s64(0, v44));
      v52 = (v27 + ((v32 >> 3) & 0x18));
      v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v50 + v45 >= 0x81)
      {
        v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v49);
      }

      v32 = v46;
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
    *v59.i8 = vand_s8(vadd_s8(*&vshlq_s8(v56, v39), -1), vmovn_s16(vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v39.i8, v30)))))));
    v59.i64[1] = v59.i64[0];
    *v59.i8 = vqtbl1_s8(v59, 0x703060205010400);
    v58.i64[0] = vmovl_s8(vdup_lane_s16(*v59.i8, 0)).u64[0];
    v56.i64[0] = vmovl_s8(vdup_lane_s16(*v59.i8, 1)).u64[0];
    v60 = vmovl_s8(vdup_lane_s16(*v59.i8, 2)).u64[0];
    v59.i64[0] = vmovl_s8(vdup_lane_s16(*v59.i8, 3)).u64[0];
    v61 = vsubw_s16(v38, *v58.i8);
    v62 = vsubw_s16(v38, *v56.i8);
    v63 = vsubw_s16(v38, v60);
    v64 = vsubw_s16(v38, *v59.i8);
    v362 = vmovl_s16(vceqz_s16(*v58.i8));
    v363 = vmovl_s16(vceqz_s16(*v56.i8));
    v65 = vmovl_s16(vceqz_s16(v60));
    v361 = vmovl_s16(vceqz_s16(*v59.i8));
  }

  v68.i64[0] = 0x800000008;
  v68.i64[1] = 0x800000008;
  v69 = 0uLL;
  v70 = vandq_s8(vextq_s8(vtstq_s32(v34, v68), 0, 8uLL), v38);
  v68.i64[0] = vpaddq_s32(v70, v70).u64[0];
  v71.i64[0] = v68.u32[0];
  v71.i64[1] = v68.u32[1];
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v32 + v73;
  if (v73 <= 0x80 && v29 >= v74)
  {
    v76 = v32 & 0x3F;
    v77 = vaddq_s64(vdupq_n_s64(v76), vzip1q_s64(0, v72));
    v78 = (v27 + 8 * (v32 >> 6));
    v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v77)));
    if (v76 + v73 >= 0x81)
    {
      v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v69);
    }

    v32 = v74;
  }

  else
  {
    v48 = 1;
  }

  v79 = v364.i8[0] & 3;
  if (v79 == 2)
  {
    v80 = v32 + 32;
    if (v29 >= v32 + 16)
    {
      v32 += 16;
    }

    else
    {
      v48 = 1;
      v80 = v32 + 16;
    }

    if (v29 >= v80)
    {
      v32 = v80;
    }

    else
    {
      v48 = 1;
    }
  }

  v81 = 0uLL;
  v82 = vextq_s8(0, v61, 8uLL);
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v32 + v86;
  if (v86 <= 0x80 && v29 >= v87)
  {
    v90 = v32 & 0x3F;
    v91 = vaddq_s64(vdupq_n_s64(v90), vzip1q_s64(0, v85));
    v92 = (v27 + 8 * (v32 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v90 + v86 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v32 = v87;
  }

  else
  {
    v48 = 1;
    v89 = 0uLL;
  }

  v93 = vpaddq_s32(v61, v61).u64[0];
  v94.i64[0] = v93;
  v94.i64[1] = HIDWORD(v93);
  v95 = v94;
  v96 = vaddvq_s64(v94);
  v97 = v32 + v96;
  if (v96 <= 0x80 && v29 >= v97)
  {
    v99 = v32 & 0x3F;
    v100 = vaddq_s64(vdupq_n_s64(v99), vzip1q_s64(0, v95));
    v101 = (v27 + 8 * (v32 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v101, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v101->i64[0], 0), vnegq_s64(v100)));
    if (v99 + v96 >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v101[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v101[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v81);
    }

    v32 = v97;
  }

  else
  {
    v48 = 1;
  }

  v102 = v32 + v96;
  v103 = 0uLL;
  if (v96 <= 0x80 && v29 >= v102)
  {
    v106 = v32 & 0x3F;
    v107 = vaddq_s64(vdupq_n_s64(v106), vzip1q_s64(0, v95));
    v108 = (v27 + 8 * (v32 >> 6));
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v107)));
    if (v106 + v96 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v105);
    }

    v32 = v102;
  }

  else
  {
    v48 = 1;
    v105 = 0uLL;
  }

  v109 = v32 + v96;
  if (v96 <= 0x80 && v29 >= v109)
  {
    v111 = v32 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v95));
    v113 = (v27 + 8 * (v32 >> 6));
    v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v96 >= 0x81)
    {
      v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v103);
    }

    v32 = v109;
  }

  else
  {
    v48 = 1;
  }

  v114 = vpaddq_s32(v62, v62).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  v118 = v32 + v117;
  v119 = 0uLL;
  if (v117 <= 0x80 && v29 >= v118)
  {
    v122 = v32 & 0x3F;
    v123 = vaddq_s64(vdupq_n_s64(v122), vzip1q_s64(0, v116));
    v124 = (v27 + 8 * (v32 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v122 + v117 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v32 = v118;
  }

  else
  {
    v48 = 1;
    v121 = 0uLL;
  }

  v125 = v32 + v117;
  if (v117 <= 0x80 && v29 >= v125)
  {
    v127 = v32 & 0x3F;
    v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v116));
    v129 = (v27 + 8 * (v32 >> 6));
    v119 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
    if (v127 + v117 >= 0x81)
    {
      v119 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v119);
    }

    v32 = v125;
  }

  else
  {
    v48 = 1;
  }

  v130 = 0uLL;
  if (v117 > 0x80 || (v131 = v32 + v117, v29 < v32 + v117))
  {
    v48 = 1;
    v131 = v32;
    v135 = 0uLL;
  }

  else
  {
    v132 = v32 & 0x3F;
    v133 = vaddq_s64(vdupq_n_s64(v132), vzip1q_s64(0, v116));
    v134 = (v27 + 8 * (v32 >> 6));
    v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v133)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v133)));
    if (v132 + v117 >= 0x81)
    {
      v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v133)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v133))), v135);
    }
  }

  if (v117 > 0x80 || (v136 = v131 + v117, v29 < v131 + v117))
  {
    v139 = v61;
    v48 = 1;
    v136 = v131;
  }

  else
  {
    v137 = vaddq_s64(vdupq_n_s64(v131 & 0x3F), vzip1q_s64(0, v116));
    v138 = (v27 + 8 * (v131 >> 6));
    v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    v139 = v61;
    if ((v131 & 0x3F) + v117 >= 0x81)
    {
      v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v130);
    }
  }

  v140 = v63;
  v141 = vpaddq_s32(v63, v63).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  v145 = v144;
  v146 = 0uLL;
  if (v144 > 0x80 || (v147 = v136 + v144, v29 < v136 + v144))
  {
    v48 = 1;
    v147 = v136;
    v150 = 0uLL;
  }

  else
  {
    v148 = vaddq_s64(vdupq_n_s64(v136 & 0x3F), vzip1q_s64(0, v143));
    v149 = (v27 + 8 * (v136 >> 6));
    v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if ((v136 & 0x3F) + v145 >= 0x81)
    {
      v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v150);
    }
  }

  if (v145 > 0x80 || (v151 = v147 + v145, v29 < v147 + v145))
  {
    v48 = 1;
    v151 = v147;
  }

  else
  {
    v152 = vaddq_s64(vdupq_n_s64(v147 & 0x3F), vzip1q_s64(0, v143));
    v153 = (v27 + 8 * (v147 >> 6));
    v146 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
    if ((v147 & 0x3F) + v145 >= 0x81)
    {
      v146 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v146);
    }
  }

  v154 = 0uLL;
  if (v145 > 0x80 || (v155 = v151 + v145, v29 < v151 + v145))
  {
    v48 = 1;
    v155 = v151;
    v159 = 0uLL;
  }

  else
  {
    v156 = v151 & 0x3F;
    v157 = vaddq_s64(vdupq_n_s64(v156), vzip1q_s64(0, v143));
    v158 = (v27 + 8 * (v151 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v157)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v157)));
    if (v156 + v145 >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v157)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v157))), v159);
    }
  }

  if (v145 > 0x80 || (v160 = v155 + v145, v29 < v155 + v145))
  {
    v48 = 1;
    v160 = v155;
  }

  else
  {
    v161 = v155 & 0x3F;
    v162 = vaddq_s64(vdupq_n_s64(v161), vzip1q_s64(0, v143));
    v163 = (v27 + 8 * (v155 >> 6));
    v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v163, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v162)), vshlq_u64(vdupq_lane_s64(v163->i64[0], 0), vnegq_s64(v162)));
    if (v161 + v145 >= 0x81)
    {
      v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v163[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v162)), vshlq_u64(vdupq_laneq_s64(v163[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v162))), v154);
    }
  }

  v164 = vpaddq_s32(v64, v64).u64[0];
  v165.i64[0] = v164;
  v165.i64[1] = HIDWORD(v164);
  v166 = v165;
  v167 = vaddvq_s64(v165);
  v168 = v167;
  v169 = 0uLL;
  if (v167 > 0x80 || (v170 = v160 + v167, v29 < v160 + v167))
  {
    v48 = 1;
    v170 = v160;
    v174 = 0uLL;
  }

  else
  {
    v171 = v160 & 0x3F;
    v172 = vaddq_s64(vdupq_n_s64(v171), vzip1q_s64(0, v166));
    v173 = (v27 + 8 * (v160 >> 6));
    v174 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v173, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v172)), vshlq_u64(vdupq_lane_s64(v173->i64[0], 0), vnegq_s64(v172)));
    if (v171 + v168 >= 0x81)
    {
      v174 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v173[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v172)), vshlq_u64(vdupq_laneq_s64(v173[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v172))), v174);
    }
  }

  if (v168 > 0x80 || (v175 = v170 + v168, v29 < v170 + v168))
  {
    v48 = 1;
    v175 = v170;
  }

  else
  {
    v176 = v170 & 0x3F;
    v177 = vaddq_s64(vdupq_n_s64(v176), vzip1q_s64(0, v166));
    v178 = (v27 + 8 * (v170 >> 6));
    v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v178, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v177)), vshlq_u64(vdupq_lane_s64(v178->i64[0], 0), vnegq_s64(v177)));
    if (v176 + v168 >= 0x81)
    {
      v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v178[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v177)), vshlq_u64(vdupq_laneq_s64(v178[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v177))), v169);
    }
  }

  v179 = 0uLL;
  if (v168 > 0x80 || (v180 = v175 + v168, v29 < v175 + v168))
  {
    v48 = 1;
    v180 = v175;
  }

  else
  {
    v181 = v175 & 0x3F;
    v182 = vaddq_s64(vdupq_n_s64(v181), vzip1q_s64(0, v166));
    v183 = (v27 + 8 * (v175 >> 6));
    v179 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v183, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v182)), vshlq_u64(vdupq_lane_s64(v183->i64[0], 0), vnegq_s64(v182)));
    if (v181 + v168 >= 0x81)
    {
      v179 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v183[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v182)), vshlq_u64(vdupq_laneq_s64(v183[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v182))), v179);
    }
  }

  if (v168 > 0x80 || v29 < v180 + v168)
  {
    goto LABEL_140;
  }

  v184 = v26 + 20;
  v185 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  v186.i64[0] = v185.u32[0];
  v186.i64[1] = v185.u32[1];
  v187 = (v27 + ((v184 >> 3) & 8));
  v188 = vnegq_s64(v186);
  v189.i64[0] = 0x2000000020;
  v189.i64[1] = 0x2000000020;
  v190.i64[0] = 0x1F0000001FLL;
  v190.i64[1] = 0x1F0000001FLL;
  v191 = vsubq_s32(v189, v64);
  v192 = vaddq_s32(v64, v190);
  v193 = vaddq_s64(vdupq_n_s64(v180 & 0x3F), vzip1q_s64(0, v166));
  v194 = (v27 + 8 * (v180 >> 6));
  v195 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v194, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v193)), vshlq_u64(vdupq_lane_s64(v194->i64[0], 0), vnegq_s64(v193)));
  if ((v180 & 0x3F) + v168 >= 0x81)
  {
    if ((v48 & 1) == 0)
    {
      v196 = v65;
      v197 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v194[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v193)), vshlq_u64(vdupq_laneq_s64(v194[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v193))), v195);
      v198 = vshlq_u64(v197, v188);
      v199 = vuzp1q_s32(vzip1q_s64(v197, v198), vzip2q_s64(v197, v198));
      goto LABEL_138;
    }

LABEL_140:
    v4 = 0;
    *&v5.f64[0] = 0xFFFFFFFFLL;
    *&v5.f64[1] = 0xFFFFFFFFLL;
    *a1 = v5;
    a1[1] = v5;
    v6 = (a1 + a2);
    goto LABEL_141;
  }

  if (v48)
  {
    goto LABEL_140;
  }

  v196 = v65;
  v200 = vshlq_u64(v195, v188);
  v199 = vuzp1q_s32(vzip1q_s64(v195, v200), vzip2q_s64(v195, v200));
LABEL_138:
  v201 = vshlq_s32(vshlq_s32(v199, v191), v192);
  v4 = a4 + 1;
  if (v29 + 8 * v4 - (v180 + v168) - 2048 >= 9 || v79 == 2)
  {
    goto LABEL_140;
  }

  v341 = v34;
  v359 = v196;
  v360 = v201;
  v203 = vzip1_s32(*v70.i8, *&vextq_s8(v70, v70, 8uLL));
  v204.i64[0] = v203.u32[0];
  v204.i64[1] = v203.u32[1];
  v205 = vshlq_u64(v69, vnegq_s64(v204));
  v206 = vzip2q_s64(v69, v205);
  v355 = vzip1q_s64(v69, v205);
  v357 = v70;
  v207 = v82;
  *v205.i8 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v204.i64[0] = v205.u32[0];
  v204.i64[1] = v205.u32[1];
  v208 = vshlq_u64(v89, vnegq_s64(v204));
  v351 = vzip1q_s64(v89, v208);
  v353 = vzip2q_s64(v89, v208);
  v358 = v36;
  v209 = v139;
  v210 = vzip1_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
  v204.i64[0] = v210.u32[0];
  v204.i64[1] = v210.u32[1];
  v211 = vnegq_s64(v204);
  v212 = vshlq_u64(v81, v211);
  v349 = vzip1q_s64(v81, v212);
  v350 = vzip2q_s64(v81, v212);
  v213 = vshlq_u64(v105, v211);
  v347 = vzip1q_s64(v105, v213);
  v348 = vzip2q_s64(v105, v213);
  v214 = vshlq_u64(v103, v211);
  v345 = vzip1q_s64(v103, v214);
  v346 = vzip2q_s64(v103, v214);
  v215 = vzip1_s32(*v62.i8, *&vextq_s8(v62, v62, 8uLL));
  v204.i64[0] = v215.u32[0];
  v204.i64[1] = v215.u32[1];
  v216 = vnegq_s64(v204);
  v217 = vshlq_u64(v121, v216);
  v343 = vzip1q_s64(v121, v217);
  v344 = vzip2q_s64(v121, v217);
  v218 = vshlq_u64(v119, v216);
  v342 = vzip2q_s64(v119, v218);
  v219 = vzip1q_s64(v119, v218);
  v220 = vshlq_u64(v135, v216);
  v221 = vzip2q_s64(v135, v220);
  v222 = vzip1q_s64(v135, v220);
  v223 = vshlq_u64(v130, v216);
  v224 = vzip2q_s64(v130, v223);
  v225 = vzip1q_s64(v130, v223);
  v226 = v140;
  v227 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
  v204.i64[0] = v227.u32[0];
  v204.i64[1] = v227.u32[1];
  v228 = vnegq_s64(v204);
  v229 = vshlq_u64(v150, v228);
  v230 = vzip2q_s64(v150, v229);
  v231 = vzip1q_s64(v150, v229);
  v232 = vshlq_u64(v146, v228);
  v233 = vzip2q_s64(v146, v232);
  v234 = vzip1q_s64(v146, v232);
  v235 = vshlq_u64(v159, v228);
  v236 = vzip2q_s64(v159, v235);
  v237 = vzip1q_s64(v159, v235);
  v238 = vshlq_u64(v154, v228);
  v239 = vzip2q_s64(v154, v238);
  v240 = vzip1q_s64(v154, v238);
  v241 = vshlq_u64(v174, v188);
  v242 = v62;
  v243 = vzip2q_s64(v174, v241);
  v244 = vzip1q_s64(v174, v241);
  v245 = vshlq_u64(v169, v188);
  v246 = vzip2q_s64(v169, v245);
  v247 = vzip1q_s64(v169, v245);
  v248 = vuzp1q_s32(v355, v206);
  v249 = vuzp1q_s32(v351, v353);
  v250 = vuzp1q_s32(v219, v342);
  v251 = vuzp1q_s32(v222, v221);
  v252 = vuzp1q_s32(v225, v224);
  v354 = vuzp1q_s32(v234, v233);
  v356 = vuzp1q_s32(v231, v230);
  v352 = vuzp1q_s32(v237, v236);
  v253 = vuzp1q_s32(v240, v239);
  v254 = vuzp1q_s32(v244, v243);
  v230.i64[0] = 0x2000000020;
  v230.i64[1] = 0x2000000020;
  v219.i64[0] = 0x1F0000001FLL;
  v219.i64[1] = 0x1F0000001FLL;
  v222.i64[0] = 0x2000000020;
  v222.i64[1] = 0x2000000020;
  v255 = vshlq_s32(v249, vsubq_s32(v222, v207));
  v256 = vsubq_s32(v222, v209);
  v240.i64[0] = 0x1F0000001FLL;
  v240.i64[1] = 0x1F0000001FLL;
  v257 = vaddq_s32(v207, v240);
  v258 = vaddq_s32(v209, v240);
  v240.i64[0] = 0x2000000020;
  v240.i64[1] = 0x2000000020;
  v259 = vsubq_s32(v240, v242);
  v234.i64[0] = 0x1F0000001FLL;
  v234.i64[1] = 0x1F0000001FLL;
  v260 = vaddq_s32(v242, v234);
  v261 = vshlq_s32(vuzp1q_s32(v343, v344), v259);
  v262 = vshlq_s32(v250, v259);
  v263 = vshlq_s32(v251, v259);
  v264 = vshlq_s32(v252, v259);
  v259.i64[0] = 0x2000000020;
  v259.i64[1] = 0x2000000020;
  v265 = vsubq_s32(v259, v226);
  v237.i64[0] = 0x1F0000001FLL;
  v237.i64[1] = 0x1F0000001FLL;
  v266 = vaddq_s32(v226, v237);
  v267 = vshlq_s32(v356, v265);
  v268 = vshlq_s32(v354, v265);
  v269 = vshlq_s32(v352, v265);
  v270 = vshlq_s32(v253, v265);
  v271 = vshlq_s32(vshlq_s32(v248, vsubq_s32(v230, v357)), vaddq_s32(v357, v219));
  v272 = vshlq_s32(v255, v257);
  v273 = vshlq_s32(vshlq_s32(vuzp1q_s32(v349, v350), v256), v258);
  v274 = vshlq_s32(vshlq_s32(vuzp1q_s32(v347, v348), v256), v258);
  v275 = vshlq_s32(vshlq_s32(vuzp1q_s32(v345, v346), v256), v258);
  v276 = vshlq_s32(v261, v260);
  v277 = vshlq_s32(v262, v260);
  v278 = vshlq_s32(v263, v260);
  v279 = vshlq_s32(v264, v260);
  v280 = vshlq_s32(v267, v266);
  v281 = vshlq_s32(v270, v266);
  v282 = vshlq_u64(v179, v188);
  v283 = vshlq_s32(vshlq_s32(v254, v191), v192);
  v284 = vshlq_s32(vshlq_s32(vuzp1q_s32(v247, v246), v191), v192);
  v285 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v179, v282), vzip2q_s64(v179, v282)), v191), v192);
  v286 = vaddq_s32(vandq_s8(v271, v362), v272);
  v287 = vdupq_lane_s64(v271.i64[0], 0);
  v288 = vandq_s8(v287, v363);
  v289 = vsubq_s32(v276, v288);
  v290 = vsubq_s32(v277, v288);
  v291 = vsubq_s32(v278, v288);
  v292 = vsubq_s32(v279, v288);
  v293 = vandq_s8(v287, v359);
  v294 = vsubq_s32(v280, v293);
  v295 = vsubq_s32(vshlq_s32(v268, v266), v293);
  v296 = vsubq_s32(vshlq_s32(v269, v266), v293);
  v297 = vandq_s8(v287, v362);
  v298 = vsubq_s32(v281, v293);
  v299 = vandq_s8(v287, v361);
  v300 = vsubq_s32(v283, v299);
  v301 = vsubq_s32(v284, v299);
  v302 = vsubq_s32(v285, v299);
  v303 = vsubq_s32(v360, v299);
  v304.i64[0] = 0x100000001;
  v304.i64[1] = 0x100000001;
  v305 = vsubq_s32(v273, v297);
  v306 = vsubq_s32(v274, v297);
  v307 = vuzp1_s16(v364, v364);
  v308 = vsubq_s32(v286, v297);
  v309 = vsubq_s32(v275, v297);
  v310 = vdupq_n_s64(((2 * v187[1]) << ~v184) | (*v187 >> v184));
  if (vaddvq_s32(vceqq_s32(v358, v304)))
  {
    v311 = vnegq_s32(vandq_s8(v341, v304));
    v312.i64[0] = v309.i64[0];
    v313.i64[1] = v308.i64[1];
    v312.i64[1] = v308.i64[0];
    v313.i64[0] = v309.i64[1];
    v314 = vbslq_s8(v311, v313, v308);
    v315 = vbslq_s8(v311, v312, v309);
    v316.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v316.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v317 = vandq_s8(vqtbl4q_s8(*(&v305 - 1), v316), v311);
    v365 = v307;
    v366.val[0] = vaddq_s32(v314, vandq_s8(vqtbl4q_s8(*(&v305 - 1), xmmword_29D2F10B0), v311));
    v366.val[1] = vaddq_s32(v305, vandq_s8(vqtbl4q_s8(*(&v305 - 1), xmmword_29D2F10C0), v311));
    v366.val[2] = vaddq_s32(v306, v317);
    v366.val[3] = vaddq_s32(v315, v317);
    v318 = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v308 = vaddq_s32(v366.val[0], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F10D0), v311));
    v305 = vaddq_s32(v366.val[1], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F10E0), v311));
    v306 = vaddq_s32(v366.val[2], v318);
    v309 = vaddq_s32(v366.val[3], v318);
    v367.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F10B0), v311), v289);
    v367.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F10F0), v311), v290);
    v367.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, v316), v311), v291);
    v367.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F1100), v311), v292);
    v319 = vandq_s8(vqtbl4q_s8(v367, xmmword_29D2F10D0), v311);
    v366.val[0] = vandq_s8(vqtbl4q_s8(v367, v316), v311);
    v289 = vaddq_s32(v319, v367.val[0]);
    v290 = vaddq_s32(v367.val[1], v319);
    v291 = vaddq_s32(v367.val[2], v366.val[0]);
    v292 = vaddq_s32(v367.val[3], v366.val[0]);
    v366.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F0EB0), v311), v294);
    v366.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F0FB0), v311), v295);
    v366.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10B0), v311), v296);
    v366.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10C0), v311), v298);
    v367.val[2] = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v294 = vaddq_s32(v366.val[0], v367.val[2]);
    v295 = vaddq_s32(v366.val[1], v367.val[2]);
    v296 = vaddq_s32(v366.val[2], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F0FE0), v311));
    v298 = vaddq_s32(v366.val[3], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F1110), v311));
    v320 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F0EB0), v311), v300);
    v366.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F1120), v311), v301);
    v366.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10B0), v311), v302);
    v366.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10C0), v311), v303);
    v321 = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v300 = vaddq_s32(v320, v321);
    v301 = vaddq_s32(v366.val[0], v321);
    v302 = vaddq_s32(v366.val[1], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F0FE0), v311));
    v303 = vaddq_s32(v366.val[2], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F1130), v311));
    v307 = v365;
  }

  v322 = vaddq_s32(v310, v308);
  v323 = vaddq_s32(v305, v310);
  v324 = vaddq_s32(v306, v310);
  v325 = vaddq_s32(v309, v310);
  v326 = vaddq_s32(v289, v310);
  v327 = vaddq_s32(v290, v310);
  v328 = vaddq_s32(v291, v310);
  v329 = vaddq_s32(v292, v310);
  v330 = vaddq_s32(v294, v310);
  v331 = vaddq_s32(v295, v310);
  v332 = vaddq_s32(v296, v310);
  v333 = vaddq_s32(v298, v310);
  v334 = vaddq_s32(v300, v310);
  v335 = vaddq_s32(v301, v310);
  v336 = vaddq_s32(v302, v310);
  v337 = vaddq_s32(v303, v310);
  v338 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v307 & 0xFF00FF00FF00FFLL)));
  v339 = &a1[4];
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v322, xmmword_29D2F11B0), v338), v322);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v323, xmmword_29D2F11B0), v338), v323);
  a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v324, xmmword_29D2F11B0), v338), v324);
  a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v325, xmmword_29D2F11B0), v338), v325);
  v340 = (a1 + a2);
  *v339 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v330, xmmword_29D2F11B0), v338), v330);
  v339[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v338), v331);
  v339[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v338), v332);
  v339[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v338), v333);
  *v340 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F11B0), v338), v326);
  v340[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v327, xmmword_29D2F11B0), v338), v327);
  v340[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v328, xmmword_29D2F11B0), v338), v328);
  v340[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v329, xmmword_29D2F11B0), v338), v329);
  v340 += 4;
  *v340 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v338), v334);
  v340[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v338), v335);
  v340[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v338), v336);
  v340[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v338), v337);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 16;
  v7 = &byte_29D2F2FE5;
  do
  {
    v28 = *v7;
    v29 = *(v7 - 1);
    if (a5 <= 4 * v29 || 2 * v28 >= a6)
    {
      v27 = 0;
    }

    else
    {
      v8 = (result + 2 * a2 * v28 + (v29 << 7));
      v9 = v8 + 4;
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v10 = (v8 + a2);
      v15 = *v9;
      v16 = v9[1];
      v17 = v9[2];
      v18 = v9[3];
      v19 = *v10;
      v20 = v10[1];
      v21 = v10[2];
      v22 = v10[3];
      v10 += 4;
      v23 = *v10;
      v24 = v10[1];
      v25 = v10[2];
      v26 = v10[3];
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v14;
      a3[4] = v19;
      a3[5] = v20;
      a3[6] = v21;
      a3[7] = v22;
      a3[8] = v15;
      a3[9] = v16;
      a3[10] = v17;
      a3[11] = v18;
      a3[12] = v23;
      a3[13] = v24;
      a3[14] = v25;
      a3[15] = v26;
      a3 += 16;
      v27 = -1;
    }

    *a4++ = v27;
    v7 += 2;
    v6 -= 2;
  }

  while (v6);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 40, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 104, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = vdupq_lane_s64(*a3, 0);
  v7 = vsubq_s32(*a3, v6);
  v8 = vsubq_s32(*(a3 + 32), v6);
  v553 = *a3;
  v554 = *(a3 + 16);
  v555 = *(a3 + 32);
  v556 = *(a3 + 48);
  v9 = vsubq_s32(v556, v6);
  v10 = vsubq_s32(*(a3 + a4), v6);
  v566 = *(a3 + a4);
  v567 = *(a3 + a4 + 16);
  v568 = *(a3 + a4 + 32);
  v580 = vsubq_s32(v554, v6);
  v11 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v7, v580), v8), v9), xmmword_29D2F11C0);
  v12 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v7, v580), v8), v9), xmmword_29D2F11C0);
  v13 = vpmaxq_s32(v11, v11);
  v14 = vpminq_s32(v12, v12);
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v16 = vmaxq_s32(v13, v15);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = vminq_s32(v14, v17);
  v19 = vzip1q_s32(v13, v14);
  v20.i64[0] = 0x2000000020;
  v20.i64[1] = 0x2000000020;
  v21 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v19)), vceqzq_s32(v19));
  v551 = *(a3 + a4 + 48);
  v574 = vsubq_s32(v567, v6);
  v576 = vsubq_s32(v551, v6);
  v581 = vsubq_s32(v568, v6);
  v22 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v10, v574), v581), v576), xmmword_29D2F11C0);
  v23 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v10, v574), v581), v576), xmmword_29D2F11C0);
  v24 = vpmaxq_s32(v22, v22);
  v25 = vpminq_s32(v23, v23);
  v26 = vmaxq_s32(v16, v24);
  v27 = vminq_s32(v18, v25);
  v28 = vzip1q_s32(v24, v25);
  v29 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v28)), vceqzq_s32(v28));
  v30 = vsubq_s32(*(a3 + 80), v6);
  v563 = *(a3 + 64);
  v564 = *(a3 + 80);
  v565 = *(a3 + 96);
  v31 = vsubq_s32(v565, v6);
  v552 = *(a3 + 112);
  v32 = vsubq_s32(v552, v6);
  v578 = vsubq_s32(v563, v6);
  v33 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v578, v30), v31), v32), xmmword_29D2F11C0);
  v34 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v578, v30), v31), v32), xmmword_29D2F11C0);
  v35 = vpmaxq_s32(v33, v33);
  v36 = vpminq_s32(v34, v34);
  v37 = vmaxq_s32(v26, v35);
  v38 = vminq_s32(v27, v36);
  v39 = vzip1q_s32(v35, v36);
  v40 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v39)), vceqzq_s32(v39));
  v41 = vsubq_s32(*(a3 + a4 + 64), v6);
  v42 = vsubq_s32(*(a3 + a4 + 80), v6);
  v43 = vsubq_s32(*(a3 + a4 + 96), v6);
  v550 = *(a3 + a4 + 112);
  v44 = vsubq_s32(v550, v6);
  v45 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v41, v42), v43), v44), xmmword_29D2F11C0);
  v46 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v41, v42), v43), v44), xmmword_29D2F11C0);
  v47 = vpmaxq_s32(v45, v45);
  v48 = vpminq_s32(v46, v46);
  v49 = vmaxq_s32(v37, v47);
  v50 = vminq_s32(v38, v48);
  v51 = vzip1q_s32(v47, v48);
  v52 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v51)), vceqzq_s32(v51));
  v53 = vpmaxq_s32(v21, v21);
  v54 = vpmaxq_s32(v29, v29);
  v55 = vpmaxq_s32(v40, v40);
  v56 = vpmaxq_s32(v52, v52);
  v57 = vmaxq_s32(vmaxq_s32(v53, v54), vmaxq_s32(v55, v56));
  v582 = v50;
  v58 = vclzq_s32(vsubq_s32(v49, v50));
  v59 = vsubq_s32(v20, v58);
  v60 = vminq_s32(v59, v57);
  if (!vmaxvq_s32(v60))
  {
    *a1 = *a3;
    v178 = 7;
    result = 8;
    goto LABEL_143;
  }

  v547 = *(a3 + a4 + 64);
  v548 = *(a3 + a4 + 80);
  v549 = *(a3 + a4 + 96);
  v545 = vcgtq_s32(v57, v59);
  v61.i64[0] = 0x800000008;
  v61.i64[1] = 0x800000008;
  v62.i64[0] = 0x300000003;
  v62.i64[1] = 0x300000003;
  v63 = v31;
  v64.i64[0] = 0xF0000000FLL;
  v64.i64[1] = 0xF0000000FLL;
  v584 = vmaxq_s32(vminq_s32(vsubq_s32(v60, v53), v64), 0);
  v539 = vmaxq_s32(vminq_s32(vsubq_s32(v60, v55), v64), 0);
  v541 = vmaxq_s32(vminq_s32(vsubq_s32(v60, v54), v64), 0);
  v543 = vmaxq_s32(vminq_s32(vsubq_s32(v60, v56), v64), 0);
  v65.i64[0] = 0x400000004;
  v65.i64[1] = 0x400000004;
  v537 = vorrq_s8(vbicq_s8(v65, vceqq_s32(vaddq_s32(v543, v539), vnegq_s32(vaddq_s32(v584, v541)))), vorrq_s8(vandq_s8(vceqzq_s32(v60), v62), vandq_s8(v545, v61)));
  v66 = vsubq_s32(v7, vqtbl1q_s8(v7, xmmword_29D2F11B0));
  v67 = vsubq_s32(v580, vqtbl1q_s8(v580, xmmword_29D2F11B0));
  v68 = vsubq_s32(v8, vqtbl1q_s8(v8, xmmword_29D2F11B0));
  v69 = vsubq_s32(v9, vqtbl1q_s8(v9, xmmword_29D2F11B0));
  v70 = vsubq_s32(v10, vqtbl1q_s8(v10, xmmword_29D2F11B0));
  v71 = vsubq_s32(v574, vqtbl1q_s8(v574, xmmword_29D2F11B0));
  v72 = vsubq_s32(v581, vqtbl1q_s8(v581, xmmword_29D2F11B0));
  v73 = vsubq_s32(v576, vqtbl1q_s8(v576, xmmword_29D2F11B0));
  v569 = v30;
  v570 = v63;
  v572 = v10;
  v573 = v9;
  v74 = vsubq_s32(v63, vqtbl1q_s8(v63, xmmword_29D2F11B0));
  v75 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v66, v67), v68), v69);
  v533 = v67;
  v535 = v66;
  v528 = v69;
  v531 = v68;
  v76 = vminq_s32(vminq_s32(vminq_s32(v66, v67), v68), v69);
  v77 = v70;
  v78 = vqtbl1q_s8(v75, xmmword_29D2F11C0);
  v79 = vqtbl1q_s8(v76, xmmword_29D2F11C0);
  v80 = vpmaxq_s32(v78, v78);
  v81 = vpminq_s32(v79, v79);
  v82.i64[0] = 0x8000000080000000;
  v82.i64[1] = 0x8000000080000000;
  v83 = vmaxq_s32(v80, v82);
  v61.i64[0] = 0x8000000080000000;
  v61.i64[1] = 0x8000000080000000;
  v84 = vminq_s32(v81, v61);
  v85 = vzip1q_s32(v80, v81);
  v86 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v85)), vceqzq_s32(v85));
  v87 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v70, v71), v72), v73);
  v525 = vsubq_s32(v30, vqtbl1q_s8(v30, xmmword_29D2F11B0));
  v526 = v72;
  v88 = vminq_s32(vminq_s32(v70, v71), v72);
  v89 = v73;
  v90 = vsubq_s32(v578, vqtbl1q_s8(v578, xmmword_29D2F11B0));
  v91 = vqtbl1q_s8(v87, xmmword_29D2F11C0);
  v92 = vqtbl1q_s8(vminq_s32(v88, v89), xmmword_29D2F11C0);
  v93 = vpmaxq_s32(v91, v91);
  v94 = vpminq_s32(v92, v92);
  v95 = vmaxq_s32(v83, v93);
  v96 = vminq_s32(v84, v94);
  v97 = vzip1q_s32(v93, v94);
  v98 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v97)), vceqzq_s32(v97));
  v99 = v74;
  v523 = vsubq_s32(v32, vqtbl1q_s8(v32, xmmword_29D2F11B0));
  v100 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v90, v525), v74), v523), xmmword_29D2F11C0);
  v101 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v90, v525), v74), v523), xmmword_29D2F11C0);
  v102 = vpmaxq_s32(v100, v100);
  v103 = vpminq_s32(v101, v101);
  v104 = vmaxq_s32(v95, v102);
  v105 = vminq_s32(v96, v103);
  v106 = vzip1q_s32(v102, v103);
  v571 = v32;
  v107 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v106)), vceqzq_s32(v106));
  v108 = vsubq_s32(v42, vqtbl1q_s8(v42, xmmword_29D2F11B0));
  v109 = vsubq_s32(v43, vqtbl1q_s8(v43, xmmword_29D2F11B0));
  v110 = v58;
  v111 = vsubq_s32(v44, vqtbl1q_s8(v44, xmmword_29D2F11B0));
  v559 = v43;
  v561 = v44;
  v520 = v108;
  v521 = vsubq_s32(v41, vqtbl1q_s8(v41, xmmword_29D2F11B0));
  v112 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v521, v108), v109), v111), xmmword_29D2F11C0);
  v113 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v521, v108), v109), v111), xmmword_29D2F11C0);
  v114 = vpmaxq_s32(v112, v112);
  v115 = vpminq_s32(v113, v113);
  v116 = vmaxq_s32(v104, v114);
  v117 = vminq_s32(v105, v115);
  v118 = vzip1q_s32(v114, v115);
  v119 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v118)), vceqzq_s32(v118));
  v120 = vpmaxq_s32(v86, v86);
  v121 = vpmaxq_s32(v98, v98);
  v122 = vpmaxq_s32(v107, v107);
  v123 = vpmaxq_s32(v119, v119);
  v124 = vmaxq_s32(vmaxq_s32(v120, v121), vmaxq_s32(v122, v123));
  v518 = v117;
  v516 = vclzq_s32(vsubq_s32(v116, v117));
  v125 = vsubq_s32(v20, v516);
  v126 = vcgtq_s32(v124, v125);
  v127 = vminq_s32(v125, v124);
  v124.i64[0] = 0x1000000010;
  v124.i64[1] = 0x1000000010;
  v557 = v42;
  v128.i64[0] = 0x1800000018;
  v128.i64[1] = 0x1800000018;
  v129 = v126;
  v130 = vbslq_s8(v126, v128, v124);
  v126.i64[0] = 0x300000003;
  v126.i64[1] = 0x300000003;
  v131 = vorrq_s8(vandq_s8(vceqzq_s32(v127), v126), v130);
  v132 = vminq_s32(vsubq_s32(v127, v120), v64);
  v133 = vminq_s32(vsubq_s32(v127, v121), v64);
  v134 = vminq_s32(vsubq_s32(v127, v122), v64);
  v135 = vminq_s32(vsubq_s32(v127, v123), v64);
  v136 = vmaxq_s32(v132, 0);
  v137 = vmaxq_s32(v133, 0);
  v138 = vmaxq_s32(v134, 0);
  v139 = vmaxq_s32(v135, 0);
  v140 = vaddq_s32(v139, v138);
  v126.i64[0] = 0x400000004;
  v126.i64[1] = 0x400000004;
  v514 = vorrq_s8(vbicq_s8(v126, vceqq_s32(v140, vnegq_s32(vaddq_s32(v136, v137)))), v131);
  *v140.i8 = vqmovn_u32(v514);
  v131.i64[0] = 0x8000800080008;
  v131.i64[1] = 0x8000800080008;
  v141 = v41;
  *v41.i8 = vqmovn_u32(v127);
  v112.i64[0] = 0x10001000100010;
  v112.i64[1] = 0x10001000100010;
  v142 = vaddq_s16(vbicq_s8(v41, vceqzq_s16(vandq_s8(v140, v131))), vandq_s8(vshlq_n_s16(v140, 2uLL), v112));
  v143.i64[0] = 0x3000300030003;
  v143.i64[1] = 0x3000300030003;
  v116.i64[0] = 0x2000200020002;
  v116.i64[1] = 0x2000200020002;
  v119.i64[0] = 0x20002000200020;
  v119.i64[1] = 0x20002000200020;
  v144 = vaddq_s16(v142, vandq_s8(vceqq_s16(vandq_s8(v140, v143), v116), v119));
  v145 = vsubq_s32(v127, v136);
  *v136.i8 = vqmovn_u32(v145);
  v135.i64[0] = 0x7000700070007;
  v135.i64[1] = 0x7000700070007;
  v146 = vmlaq_s16(v144, v136, v135);
  v147 = v537;
  *v136.i8 = vqmovn_u32(v537);
  *v108.i8 = vqmovn_u32(v60);
  v148 = vaddq_s16(vaddq_s16(vbicq_s8(v108, vceqzq_s16(vandq_s8(v136, v131))), vandq_s8(vshlq_n_s16(v136, 2uLL), v112)), vandq_s8(vceqq_s16(vandq_s8(v136, v143), v116), v119));
  v149 = vsubq_s32(v60, v584);
  v585 = v149;
  *v149.i8 = vqmovn_u32(v149);
  v150 = vmlaq_s16(v148, v149, v135);
  v149.i64[0] = 0x1F0000001FLL;
  v149.i64[1] = 0x1F0000001FLL;
  v119.i64[0] = -1;
  v119.i64[1] = -1;
  v151 = vandq_s8(vsubq_s32(vshlq_s32(v119, vsubq_s32(v149, v110)), v582), v545);
  v152 = vsubq_s32(v127, v137);
  v153 = vsubq_s32(v127, v138);
  v154 = vsubq_s32(v127, v139);
  v155 = vaddq_s32(vaddq_s32(v153, v152), v154);
  *v155.i8 = vqmovn_u32(v155);
  v156 = vsubq_s32(v60, v541);
  v157 = vsubq_s32(v60, v539);
  v583 = vsubq_s32(v60, v543);
  v158 = vaddq_s32(vaddq_s32(v157, v156), v583);
  *v158.i8 = vqmovn_u32(v158);
  v159 = vmovl_s16(*&vcgtq_s16(vaddq_s16(v150, vshlq_n_s16(v158, 3uLL)), vaddq_s16(v146, vshlq_n_s16(v155, 3uLL))));
  v160 = vdupq_lane_s64(v159.i64[0], 0);
  v161 = vaddvq_s32(v160);
  v163 = a5 < 2 || a6 == 0;
  v164 = v60;
  if (v161)
  {
    v165.i64[0] = 0x1F0000001FLL;
    v165.i64[1] = 0x1F0000001FLL;
    v166.i64[0] = -1;
    v166.i64[1] = -1;
    v159 = vandq_s8(vsubq_s32(vshlq_s32(v166, vsubq_s32(v165, v516)), v518), v129);
    v167 = vcltzq_s32(vshlq_n_s32(v160, 0x1FuLL));
    v546 = vbslq_s8(v167, v535, v7);
    v580 = vbslq_s8(v167, v533, v580);
    v544 = vbslq_s8(v167, v531, v8);
    v572 = vbslq_s8(v167, v77, v572);
    v573 = vbslq_s8(v167, v528, v573);
    v168 = vbslq_s8(v167, v71, v574);
    v581 = vbslq_s8(v167, v526, v581);
    v169 = vbslq_s8(v167, v89, v576);
    v170 = vbslq_s8(v167, v90, v578);
    v569 = vbslq_s8(v167, v525, v569);
    v570 = vbslq_s8(v167, v99, v570);
    v571 = vbslq_s8(v167, v523, v571);
    v141 = vbslq_s8(v167, v521, v141);
    v171 = vbslq_s8(v167, v111, v561);
    v585 = vbslq_s8(v167, v145, v585);
    v172 = vbslq_s8(v167, v152, v156);
    v173 = vbslq_s8(v167, v153, v157);
    v583 = vbslq_s8(v167, v154, v583);
    v164 = vbslq_s8(v167, v127, v164);
    v147 = vbslq_s8(v167, v514, v537);
    v153 = vandq_s8(vqtbl1q_s8(v6, xmmword_29D2F11B0), v167);
    v6 = vsubq_s32(v6, v153);
    v174 = vbslq_s8(v167, v109, v559);
    v175 = vbslq_s8(v167, v520, v557);
    v176 = vbslq_s8(v167, v159, v151);
    if (v163)
    {
LABEL_10:
      v177 = v544;
      goto LABEL_16;
    }
  }

  else
  {
    v544 = v8;
    v546 = v7;
    v174 = v559;
    v171 = v561;
    v175 = v557;
    v169 = v576;
    v170 = v578;
    v173 = v157;
    v176 = v151;
    v172 = v156;
    v168 = v574;
    if (v163)
    {
      goto LABEL_10;
    }
  }

  v575 = v168;
  v577 = v169;
  v534 = v6;
  v536 = v176;
  v579 = v170;
  v538 = v141;
  v558 = v175;
  v560 = v174;
  v562 = v171;
  v180 = vqtbl4q_s8(*a3, xmmword_29D2F1160);
  v181 = vsubq_s32(v553, vqtbl4q_s8(*a3, xmmword_29D2F10B0));
  v542 = vsubq_s32(v555, v180);
  v529 = vsubq_s32(v556, v180);
  v587.val[0] = *(a3 + a4);
  v587.val[1] = *(a3 + a4 + 16);
  v587.val[2] = *(a3 + a4 + 32);
  v587.val[3].i64[0] = *(a3 + a4 + 48);
  v587.val[3].i64[1] = *(a3 + 56);
  v527 = v173;
  v182 = vqtbl4q_s8(v587, xmmword_29D2F1100);
  v183 = vsubq_s32(v566, vqtbl4q_s8(v587, xmmword_29D2F10B0));
  v184 = vsubq_s32(v567, vqtbl4q_s8(v587, xmmword_29D2F10F0));
  v540 = vsubq_s32(v568, vqtbl4q_s8(v587, xmmword_29D2F1160));
  v532 = v164;
  v587.val[1] = v147;
  v587.val[3] = v172;
  v586.val[0] = *(a3 + 64);
  v586.val[1] = *(a3 + 80);
  v586.val[2] = *(a3 + 96);
  v586.val[3].i64[0] = *(a3 + 112);
  v586.val[3].i64[1] = *(a3 + 56);
  v185 = vsubq_s32(v551, v182);
  v587.val[0] = vqtbl4q_s8(v586, xmmword_29D2F10C0);
  v186 = vsubq_s32(v563, vqtbl4q_s8(v586, xmmword_29D2F1170));
  v587.val[2] = vsubq_s32(v564, vqtbl4q_s8(v586, xmmword_29D2F1180));
  v187 = vsubq_s32(v565, vqtbl4q_s8(v586, xmmword_29D2F10B0));
  v188 = v184;
  v189 = v183;
  v153 = v186;
  v172 = v587.val[3];
  v190 = v587.val[1];
  v6 = vsubq_s32(v552, v587.val[0]);
  v191 = v173;
  v192 = *(a3 + a4 + 64);
  v193 = *(a3 + a4 + 80);
  v587.val[0] = *(a3 + a4 + 96);
  v587.val[1].i64[0] = *(a3 + a4 + 112);
  v587.val[1].i64[1] = *(a3 + 56);
  v587.val[3] = vsubq_s32(v547, vqtbl4q_s8(v587, xmmword_29D2F1170));
  v194 = vsubq_s32(v548, vqtbl4q_s8(v587, xmmword_29D2F1120));
  v195 = vsubq_s32(v549, vqtbl4q_s8(v587, xmmword_29D2F10B0));
  v196.i64[0] = v529.i64[0];
  v196.i64[1] = v181.i64[0];
  v181.i64[0] = v529.i64[1];
  v197 = vsubq_s32(v550, vqtbl4q_s8(v587, xmmword_29D2F10C0));
  v530 = vsubq_s32(v554, vqtbl4q_s8(*a3, xmmword_29D2F10C0));
  v524 = v181;
  v198 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v181, v530), v542), v196), xmmword_29D2F11C0);
  v199 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v181, v530), v542), v196), xmmword_29D2F11C0);
  v200 = vpmaxq_s32(v198, v198);
  v201 = vpminq_s32(v199, v199);
  v202.i64[0] = 0x8000000080000000;
  v202.i64[1] = 0x8000000080000000;
  v203 = vmaxq_s32(v200, v202);
  v204 = vminq_s32(v201, v202);
  v205 = vzip1q_s32(v200, v201);
  v202.i64[0] = 0x2000000020;
  v202.i64[1] = 0x2000000020;
  v206 = vbicq_s8(vsubq_s32(v202, vclsq_s32(v205)), vceqzq_s32(v205));
  v207 = vpmaxq_s32(v206, v206);
  v208 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v189, v188), v540), v185), xmmword_29D2F11C0);
  v587.val[0] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v189, v188), v540), v185), xmmword_29D2F11C0);
  v209 = vpmaxq_s32(v208, v208);
  v587.val[0] = vpminq_s32(v587.val[0], v587.val[0]);
  v210 = vmaxq_s32(v203, v209);
  v211 = vminq_s32(v204, v587.val[0]);
  v212 = vzip1q_s32(v209, v587.val[0]);
  v213 = vbicq_s8(vsubq_s32(v202, vclsq_s32(v212)), vceqzq_s32(v212));
  v587.val[0] = vpmaxq_s32(v213, v213);
  v522 = v587.val[2];
  v214 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v153, v587.val[2]), v187), v6), xmmword_29D2F11C0);
  v587.val[1] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v153, v587.val[2]), v187), v6), xmmword_29D2F11C0);
  v215 = vpmaxq_s32(v214, v214);
  v587.val[1] = vpminq_s32(v587.val[1], v587.val[1]);
  v216 = vmaxq_s32(v210, v215);
  v217 = vminq_s32(v211, v587.val[1]);
  v218 = vzip1q_s32(v215, v587.val[1]);
  v219 = vbicq_s8(vsubq_s32(v202, vclsq_s32(v218)), vceqzq_s32(v218));
  v587.val[1] = vpmaxq_s32(v219, v219);
  v517 = v194;
  v519 = v587.val[3];
  v515 = v195;
  v220 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v587.val[3], v194), v195), v197), xmmword_29D2F11C0);
  v221 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v587.val[3], v194), v195), v197), xmmword_29D2F11C0);
  v222 = vpmaxq_s32(v220, v220);
  v223 = vpminq_s32(v221, v221);
  v224 = vmaxq_s32(v216, v222);
  v225 = vminq_s32(v217, v223);
  v226 = vzip1q_s32(v222, v223);
  v227 = vbicq_s8(vsubq_s32(v202, vclsq_s32(v226)), vceqzq_s32(v226));
  v228 = vpmaxq_s32(v227, v227);
  v229 = vmaxq_s32(vmaxq_s32(v207, v587.val[0]), vmaxq_s32(v587.val[1], v228));
  v230 = vclzq_s32(vsubq_s32(v224, v225));
  v231 = vsubq_s32(v202, v230);
  v232 = vcgtq_s32(v229, v231);
  v233 = vminq_s32(v231, v229);
  v231.i64[0] = 0x900000009;
  v231.i64[1] = 0x900000009;
  v234.i64[0] = 0x200000002;
  v234.i64[1] = 0x200000002;
  v235 = vorrq_s8(vandq_s8(vceqzq_s32(v233), v234), vsubq_s32(vandq_s8(v232, v231), vmvnq_s8(v232)));
  v234.i64[0] = 0xF0000000FLL;
  v234.i64[1] = 0xF0000000FLL;
  v236 = vmaxq_s32(vminq_s32(vsubq_s32(v233, v207), v234), 0);
  v237 = vmaxq_s32(vminq_s32(vsubq_s32(v233, v587.val[0]), v234), 0);
  v587.val[0] = vmaxq_s32(vminq_s32(vsubq_s32(v233, v587.val[1]), v234), 0);
  v587.val[1] = vmaxq_s32(vminq_s32(vsubq_s32(v233, v228), v234), 0);
  v238 = vsubq_s32(v233, v236);
  v228.i64[0] = 0x400000004;
  v228.i64[1] = 0x400000004;
  v159 = vorrq_s8(vbicq_s8(v228, vceqq_s32(vaddq_s32(v587.val[1], v587.val[0]), vnegq_s32(vaddq_s32(v236, v237)))), v235);
  *v228.i8 = vqmovn_u32(v159);
  v235.i64[0] = 0x8000800080008;
  v235.i64[1] = 0x8000800080008;
  *v236.i8 = vqmovn_u32(v233);
  v587.val[2].i64[0] = 0x2000200020002;
  v587.val[2].i64[1] = 0x2000200020002;
  v587.val[3].i64[0] = 0x10001000100010;
  v587.val[3].i64[1] = 0x10001000100010;
  v239.i64[0] = 0x3000300030003;
  v239.i64[1] = 0x3000300030003;
  v240 = vaddq_s16(vbicq_s8(v236, vceqzq_s16(vandq_s8(v228, v235))), vandq_s8(vshlq_n_s16(v228, 2uLL), v587.val[3]));
  v236.i64[0] = 0x20002000200020;
  v236.i64[1] = 0x20002000200020;
  v241 = vaddq_s16(v240, vandq_s8(vceqq_s16(vandq_s8(v228, v239), v587.val[2]), v236));
  *v240.i8 = vqmovn_u32(v238);
  v194.i64[0] = 0x7000700070007;
  v194.i64[1] = 0x7000700070007;
  v242 = vmlaq_s16(v241, v240, v194);
  *v240.i8 = vqmovn_u32(v190);
  *v220.i8 = vqmovn_u32(v532);
  v587.val[2] = vandq_s8(vceqq_s16(vandq_s8(v240, v239), v587.val[2]), v236);
  v243 = vaddq_s16(vaddq_s16(vbicq_s8(v220, vceqzq_s16(vandq_s8(v240, v235))), vandq_s8(vshlq_n_s16(v240, 2uLL), v587.val[3])), v587.val[2]);
  *v587.val[2].i8 = vqmovn_u32(v585);
  v244 = vmlaq_s16(v243, v587.val[2], v194);
  v245 = vsubq_s32(v233, v237);
  v246 = vsubq_s32(v233, v587.val[0]);
  v247 = vsubq_s32(v233, v587.val[1]);
  v587.val[2] = vaddq_s32(vaddq_s32(v246, v245), v247);
  *v587.val[2].i8 = vqmovn_u32(v587.val[2]);
  v587.val[3] = vaddq_s32(vaddq_s32(v191, v172), v583);
  *v587.val[3].i8 = vqmovn_u32(v587.val[3]);
  v248 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v244, vshlq_n_s16(v587.val[3], 3uLL)), vaddq_s16(v242, vshlq_n_s16(v587.val[2], 3uLL)))).i64[0], 0);
  if (vaddvq_s32(v248))
  {
    v249.i64[0] = 0x1F0000001FLL;
    v249.i64[1] = 0x1F0000001FLL;
    v250.i64[0] = -1;
    v250.i64[1] = -1;
    v251 = vandq_s8(vsubq_s32(vshlq_s32(v250, vsubq_s32(v249, v230)), v225), v232);
    v252 = vcltzq_s32(vshlq_n_s32(v248, 0x1FuLL));
    v253 = v6;
    v6.i64[0] = vbslq_s8(v252, vextq_s8(v556, v556, 8uLL), v534).u64[0];
    v546 = vbslq_s8(v252, v524, v546);
    v580 = vbslq_s8(v252, v530, v580);
    v177 = vbslq_s8(v252, v542, v544);
    v573 = vbslq_s8(v252, v196, v573);
    v572 = vbslq_s8(v252, v189, v572);
    v168 = vbslq_s8(v252, v188, v575);
    v581 = vbslq_s8(v252, v540, v581);
    v169 = vbslq_s8(v252, v185, v577);
    v170 = vbslq_s8(v252, v153, v579);
    v569 = vbslq_s8(v252, v522, v569);
    v570 = vbslq_s8(v252, v187, v570);
    v153 = vbslq_s8(v252, v253, v571);
    v571 = v153;
    v141 = vbslq_s8(v252, v519, v538);
    v175 = vbslq_s8(v252, v517, v558);
    v174 = vbslq_s8(v252, v515, v560);
    v254 = vbslq_s8(v252, v238, v585);
    v172 = vbslq_s8(v252, v245, v172);
    v173 = vbslq_s8(v252, v246, v527);
    v171 = vbslq_s8(v252, v197, v562);
    v583 = vbslq_s8(v252, v247, v583);
    v585 = v254;
    v176 = vbslq_s8(v252, v251, v536);
    v164 = vbslq_s8(v252, v233, v532);
    v147 = vbslq_s8(v252, v159, v190);
  }

  else
  {
    v174 = v560;
    v171 = v562;
    v175 = v558;
    v176 = v536;
    v141 = v538;
    v164 = v532;
    v169 = v577;
    v170 = v579;
    v173 = v527;
    v177 = v544;
    v147 = v190;
    v6.i64[0] = v534.i64[0];
    v168 = v575;
  }

LABEL_16:
  *v153.i8 = vqmovn_u32(v147);
  v255.i64[0] = 0x8000800080008;
  v255.i64[1] = 0x8000800080008;
  *v159.i8 = vqmovn_u32(v164);
  v256 = vbicq_s8(v159, vceqzq_s16(vandq_s8(v153, v255)));
  v257.i64[0] = 0x2000200020002;
  v257.i64[1] = 0x2000200020002;
  v258.i64[0] = 0x10001000100010;
  v258.i64[1] = 0x10001000100010;
  v259 = vandq_s8(vshlq_n_s16(v153, 2uLL), v258);
  v258.i64[0] = 0x3000300030003;
  v258.i64[1] = 0x3000300030003;
  v260 = vceqq_s16(vandq_s8(v153, v258), v257);
  v257.i64[0] = 0x20002000200020;
  v257.i64[1] = 0x20002000200020;
  v261 = vandq_s8(v260, v257);
  *v257.i8 = vqmovn_u32(v585);
  v258.i64[0] = 0x7000700070007;
  v258.i64[1] = 0x7000700070007;
  v262 = vaddq_s32(vaddq_s32(v173, v172), v583);
  *v262.i8 = vqmovn_u32(v262);
  v263 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v256, v259), v261), v257, v258), vshlq_n_s16(v262, 3uLL));
  if ((vpaddq_s16(v263, v263).i16[0] + 91) > 0x7FF)
  {
    *a1 = v553;
    *(a1 + 16) = v554;
    *(a1 + 32) = v555;
    *(a1 + 48) = v556;
    *(a1 + 64) = v566;
    *(a1 + 80) = v567;
    *(a1 + 96) = v568;
    *(a1 + 112) = v551;
    *(a1 + 128) = v563;
    *(a1 + 144) = v564;
    *(a1 + 160) = v565;
    *(a1 + 176) = v552;
    v267 = (a1 + 192);
    v178 = -1;
    result = 256;
    *v267 = v547;
    v267[1] = v548;
    v267[2] = v549;
    v267[3] = v550;
  }

  else
  {
    v264 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v265 = 8 * (a1 & 7);
    if (v265)
    {
      v266 = *v264 & ~(-1 << v265);
    }

    else
    {
      v266 = 0;
    }

    *a2 = 0;
    if (v164.i32[0])
    {
      v268 = ((v164.i16[0] << 10) + 31744) & 0x7C00;
    }

    else
    {
      v268 = 0;
    }

    if (v164.i32[1])
    {
      v269 = ((v164.i32[1] << 15) + 1015808) & 0xF8000;
    }

    else
    {
      v269 = 0;
    }

    v270 = v147.i8[0] & 0x1F | (32 * (v147.i8[4] & 0x1F)) | v268 | v269;
    v271 = (v270 << v265) | v266;
    v272 = v168;
    if (v265 >= 0x2C)
    {
      *v264 = v271;
      v271 = v270 >> (-8 * (a1 & 7u));
    }

    v273 = (v265 + 20) & 0x3C;
    *(v264 + (((v265 + 20) >> 3) & 8)) = v271 | (v6.i64[0] << v273);
    v274 = v265 + 84;
    v275 = vsubq_s32(v164, v585);
    v276 = vsubq_s32(v164, v172);
    v277 = vsubq_s32(v164, v173);
    v278 = vsubq_s32(v164, v583);
    *v275.i8 = vqmovn_u32(v275);
    *v275.i8 = vqmovn_u16(v275);
    *v276.i8 = vqmovn_u32(v276);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u32(v277);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u32(v278);
    *v278.i8 = vqmovn_u16(v278);
    v275.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v275, v276), vzip1q_s8(v277, v278)), vzip1q_s16(vtrn2q_s8(v275, v276), vtrn2q_s8(v277, v278))).u64[0];
    v276.i64[0] = 0x400000004;
    v276.i64[1] = 0x400000004;
    v277.i64[0] = 0x404040404040404;
    v277.i64[1] = 0x404040404040404;
    v279 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v147, v276))), v277);
    v277.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v277.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[0] = -1;
    v278.i64[1] = -1;
    v280 = vandq_s8(vshlq_u8(v278, vorrq_s8(v279, v277)), v275.u64[0]);
    v281 = vmovl_u8(*v279.i8);
    v282 = vpaddq_s16(vshlq_u16(vmovl_u8(*v280.i8), vtrn1q_s16(0, v281)), vmovl_high_u8(v280));
    v283 = vpaddq_s16(v281, vmovl_high_u8(v279));
    v284 = vmovl_u16(*v283.i8);
    v285 = vmovl_high_u16(v283);
    v286 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v284)), vshlq_u32(vmovl_high_u16(v282), vtrn1q_s32(0, v285)));
    v287 = vpaddq_s32(v284, v285);
    v288.i64[0] = v286.u32[0];
    v288.i64[1] = v286.u32[1];
    v289 = v288;
    v288.i64[0] = v286.u32[2];
    v288.i64[1] = v286.u32[3];
    v290 = v288;
    v288.i64[0] = v287.u32[0];
    v288.i64[1] = v287.u32[1];
    v291 = v288;
    v288.i64[0] = v287.u32[2];
    v288.i64[1] = v287.u32[3];
    v292 = vpaddq_s64(vshlq_u64(v289, vzip1q_s64(0, v291)), vshlq_u64(v290, vzip1q_s64(0, v288)));
    v293 = vpaddq_s64(v291, v288);
    v294 = (v265 + 84) & 0x3C;
    v295 = (v292.i64[0] << v294) | (v6.i64[0] >> -v273);
    if ((v293.i64[0] + v294) >= 0x40)
    {
      *(v264 + ((v274 >> 3) & 0x18)) = v295;
      v295 = v292.i64[0] >> -v294;
    }

    v296 = vceqq_s32(v164, v585);
    v297 = v293.i64[0] + v274;
    v298 = v295 | (v292.i64[1] << v297);
    if ((v297 & 0x3F) + v293.i64[1] >= 0x40)
    {
      *(v264 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
      v298 = v292.i64[1] >> -(v297 & 0x3F);
      if ((v297 & 0x3F) == 0)
      {
        v298 = 0;
      }
    }

    v299 = vandq_s8(v176, v296);
    v300 = v297 + v293.i64[1];
    v301.i64[0] = 0x800000008;
    v301.i64[1] = 0x800000008;
    v302 = vandq_s8(vextq_s8(vtstq_s32(v147, v301), 0, 8uLL), v164);
    v303.i64[0] = 0x1F0000001FLL;
    v303.i64[1] = 0x1F0000001FLL;
    v304.i64[0] = -1;
    v304.i64[1] = -1;
    v305 = vandq_s8(vshlq_u32(v304, vaddq_s32(v302, v303)), v176);
    v306.i64[0] = v305.u32[0];
    v306.i64[1] = v305.u32[1];
    v307 = v306;
    v306.i64[0] = v305.u32[2];
    v306.i64[1] = v305.u32[3];
    v308 = v306;
    v306.i64[0] = v302.u32[0];
    v306.i64[1] = v302.u32[1];
    v309 = v306;
    v310 = vzip1q_s64(0, v306);
    v306.i64[0] = v302.u32[2];
    v306.i64[1] = v302.u32[3];
    v311 = vpaddq_s64(vshlq_u64(v307, v310), vshlq_u64(v308, 0));
    v312 = vpaddq_s64(v309, v306);
    v313 = (v311.i64[0] << v300) | v298;
    if (v312.i64[0] + (v300 & 0x3F) >= 0x40)
    {
      *(v264 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v311.i64[0] >> -(v300 & 0x3F);
      if ((v300 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = vaddq_s32(v299, v546);
    v315 = v312.i64[0] + v300;
    v316 = v313 | (v311.i64[1] << v315);
    if ((v315 & 0x3F) + v312.i64[1] >= 0x40)
    {
      *(v264 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
      v316 = v311.i64[1] >> -(v315 & 0x3F);
      if ((v315 & 0x3F) == 0)
      {
        v316 = 0;
      }
    }

    v317 = v315 + v312.i64[1];
    v318 = vextq_s8(0, v585, 8uLL);
    v319.i64[0] = 0x1F0000001FLL;
    v319.i64[1] = 0x1F0000001FLL;
    v320.i64[0] = -1;
    v320.i64[1] = -1;
    v321 = vandq_s8(vshlq_u32(v320, vaddq_s32(v318, v319)), v314);
    v322.i64[0] = v321.u32[0];
    v322.i64[1] = v321.u32[1];
    v323 = v322;
    v322.i64[0] = v321.u32[2];
    v322.i64[1] = v321.u32[3];
    v324 = v322;
    v322.i64[0] = v318.u32[2];
    v322.i64[1] = v318.u32[3];
    v325 = v322;
    v326 = vzip1q_s64(0, v322);
    v322.i64[0] = v318.u32[0];
    v322.i64[1] = v318.u32[1];
    v327 = vpaddq_s64(vshlq_u64(v323, 0), vshlq_u64(v324, v326));
    v328 = vpaddq_s64(v322, v325);
    v329 = (v327.i64[0] << v317) | v316;
    if (v328.i64[0] + (v317 & 0x3F) >= 0x40)
    {
      *(v264 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
      v329 = v327.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v329 = 0;
      }
    }

    v330 = vaddq_s32(v580, v299);
    v331 = v328.i64[0] + v317;
    v332 = v329 | (v327.i64[1] << v331);
    if ((v331 & 0x3F) + v328.i64[1] >= 0x40)
    {
      *(v264 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v327.i64[1] >> -(v331 & 0x3F);
      if ((v331 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = v331 + v328.i64[1];
    v334.i64[0] = 0x1F0000001FLL;
    v334.i64[1] = 0x1F0000001FLL;
    v335.i64[0] = -1;
    v335.i64[1] = -1;
    v336 = vshlq_u32(v335, vaddq_s32(v585, v334));
    v337 = vandq_s8(v336, v330);
    v338.i64[0] = v337.u32[0];
    v338.i64[1] = v337.u32[1];
    v339 = v338;
    v338.i64[0] = v337.u32[2];
    v338.i64[1] = v337.u32[3];
    v340 = v338;
    v338.i64[0] = v585.u32[0];
    v338.i64[1] = v585.u32[1];
    v341 = v338;
    v338.i64[0] = v585.u32[2];
    v338.i64[1] = v585.u32[3];
    v342 = vzip1q_s64(0, v341);
    v343 = vzip1q_s64(0, v338);
    v344 = vpaddq_s64(vshlq_u64(v339, v342), vshlq_u64(v340, v343));
    v345 = vpaddq_s64(v341, v338);
    v346 = v345.i64[0];
    v347 = (v344.i64[0] << v333) | v332;
    if (v345.i64[0] + (v333 & 0x3F) >= 0x40)
    {
      *(v264 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
      if ((v333 & 0x3F) != 0)
      {
        v347 = v344.i64[0] >> -(v333 & 0x3F);
      }

      else
      {
        v347 = 0;
      }
    }

    v348 = vaddq_s32(v177, v299);
    v349 = v345.i64[1];
    v350 = v345.i64[0] + v333;
    v351 = v347 | (v344.i64[1] << v350);
    if ((v350 & 0x3F) + v345.i64[1] >= 0x40)
    {
      *(v264 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
      v351 = v344.i64[1] >> -(v350 & 0x3F);
      if ((v350 & 0x3F) == 0)
      {
        v351 = 0;
      }
    }

    v352 = v350 + v345.i64[1];
    v353 = vandq_s8(v336, v348);
    v354.i64[0] = v353.u32[0];
    v354.i64[1] = v353.u32[1];
    v355 = v354;
    v354.i64[0] = v353.u32[2];
    v354.i64[1] = v353.u32[3];
    v356 = vpaddq_s64(vshlq_u64(v355, v342), vshlq_u64(v354, v343));
    v357 = (v356.i64[0] << v352) | v351;
    if (v345.i64[0] + (v352 & 0x3F) >= 0x40)
    {
      *(v264 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v356.i64[0] >> -(v352 & 0x3F);
      if ((v352 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = vceqq_s32(v164, v172);
    v359 = vaddq_s32(v573, v299);
    v360 = v346 + v352;
    v361 = v357 | (v356.i64[1] << v360);
    if ((v360 & 0x3F) + v349 >= 0x40)
    {
      *(v264 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
      v361 = v356.i64[1] >> -(v360 & 0x3F);
      if ((v360 & 0x3F) == 0)
      {
        v361 = 0;
      }
    }

    v362 = vandq_s8(v176, v358);
    v363 = v360 + v349;
    v364 = vandq_s8(v336, v359);
    v365.i64[0] = v364.u32[0];
    v365.i64[1] = v364.u32[1];
    v366 = v365;
    v365.i64[0] = v364.u32[2];
    v365.i64[1] = v364.u32[3];
    v367 = vpaddq_s64(vshlq_u64(v366, v342), vshlq_u64(v365, v343));
    v368 = (v367.i64[0] << v363) | v361;
    if (v346 + (v363 & 0x3F) >= 0x40)
    {
      *(v264 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
      v368 = v367.i64[0] >> -(v363 & 0x3F);
      if ((v363 & 0x3F) == 0)
      {
        v368 = 0;
      }
    }

    v369 = vaddq_s32(v572, v362);
    v370 = v346 + v363;
    v371 = v368 | (v367.i64[1] << v370);
    if ((v370 & 0x3F) + v349 >= 0x40)
    {
      *(v264 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
      v371 = v367.i64[1] >> -(v370 & 0x3F);
      if ((v370 & 0x3F) == 0)
      {
        v371 = 0;
      }
    }

    v372 = v370 + v349;
    v373.i64[0] = 0x1F0000001FLL;
    v373.i64[1] = 0x1F0000001FLL;
    v374.i64[0] = -1;
    v374.i64[1] = -1;
    v375 = vshlq_u32(v374, vaddq_s32(v172, v373));
    v376 = vandq_s8(v375, v369);
    v377.i64[0] = v376.u32[0];
    v377.i64[1] = v376.u32[1];
    v378 = v377;
    v377.i64[0] = v376.u32[2];
    v377.i64[1] = v376.u32[3];
    v379 = v377;
    v377.i64[0] = v172.u32[0];
    v377.i64[1] = v172.u32[1];
    v380 = v377;
    v377.i64[0] = v172.u32[2];
    v377.i64[1] = v172.u32[3];
    v381 = vzip1q_s64(0, v380);
    v382 = vzip1q_s64(0, v377);
    v383 = vpaddq_s64(vshlq_u64(v378, v381), vshlq_u64(v379, v382));
    v384 = vpaddq_s64(v380, v377);
    v385 = v384.i64[0];
    v386 = (v383.i64[0] << v372) | v371;
    if (v384.i64[0] + (v372 & 0x3F) >= 0x40)
    {
      *(v264 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      if ((v372 & 0x3F) != 0)
      {
        v386 = v383.i64[0] >> -(v372 & 0x3F);
      }

      else
      {
        v386 = 0;
      }
    }

    v387 = vaddq_s32(v272, v362);
    v388 = v384.i64[1];
    v389 = v384.i64[0] + v372;
    v390 = v386 | (v383.i64[1] << v389);
    if ((v389 & 0x3F) + v384.i64[1] >= 0x40)
    {
      *(v264 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
      v390 = v383.i64[1] >> -(v389 & 0x3F);
      if ((v389 & 0x3F) == 0)
      {
        v390 = 0;
      }
    }

    v391 = v389 + v384.i64[1];
    v392 = vandq_s8(v375, v387);
    v393.i64[0] = v392.u32[0];
    v393.i64[1] = v392.u32[1];
    v394 = v393;
    v393.i64[0] = v392.u32[2];
    v393.i64[1] = v392.u32[3];
    v395 = vpaddq_s64(vshlq_u64(v394, v381), vshlq_u64(v393, v382));
    v396 = (v395.i64[0] << v391) | v390;
    if (v384.i64[0] + (v391 & 0x3F) >= 0x40)
    {
      *(v264 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      v396 = v395.i64[0] >> -(v391 & 0x3F);
      if ((v391 & 0x3F) == 0)
      {
        v396 = 0;
      }
    }

    v397 = vaddq_s32(v581, v362);
    v398 = v384.i64[0] + v391;
    v399 = v396 | (v395.i64[1] << v398);
    if ((v398 & 0x3F) + v384.i64[1] >= 0x40)
    {
      *(v264 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
      v399 = v395.i64[1] >> -(v398 & 0x3F);
      if ((v398 & 0x3F) == 0)
      {
        v399 = 0;
      }
    }

    v400 = v398 + v384.i64[1];
    v401 = vandq_s8(v375, v397);
    v402.i64[0] = v401.u32[0];
    v402.i64[1] = v401.u32[1];
    v403 = v402;
    v402.i64[0] = v401.u32[2];
    v402.i64[1] = v401.u32[3];
    v404 = vpaddq_s64(vshlq_u64(v403, v381), vshlq_u64(v402, v382));
    v405 = (v404.i64[0] << v400) | v399;
    if (v384.i64[0] + (v400 & 0x3F) >= 0x40)
    {
      *(v264 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
      v405 = v404.i64[0] >> -(v400 & 0x3F);
      if ((v400 & 0x3F) == 0)
      {
        v405 = 0;
      }
    }

    v406 = vceqq_s32(v164, v173);
    v407 = vaddq_s32(v169, v362);
    v408 = v385 + v400;
    v409 = v405 | (v404.i64[1] << v408);
    if ((v408 & 0x3F) + v388 >= 0x40)
    {
      *(v264 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
      v409 = v404.i64[1] >> -(v408 & 0x3F);
      if ((v408 & 0x3F) == 0)
      {
        v409 = 0;
      }
    }

    v410 = vandq_s8(v176, v406);
    v411 = v408 + v388;
    v412 = vandq_s8(v375, v407);
    v413.i64[0] = v412.u32[0];
    v413.i64[1] = v412.u32[1];
    v414 = v413;
    v413.i64[0] = v412.u32[2];
    v413.i64[1] = v412.u32[3];
    v415 = vpaddq_s64(vshlq_u64(v414, v381), vshlq_u64(v413, v382));
    v416 = (v415.i64[0] << v411) | v409;
    if (v385 + (v411 & 0x3F) >= 0x40)
    {
      *(v264 + ((v411 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      v416 = v415.i64[0] >> -(v411 & 0x3F);
      if ((v411 & 0x3F) == 0)
      {
        v416 = 0;
      }
    }

    v417 = vaddq_s32(v170, v410);
    v418 = v385 + v411;
    v419 = v416 | (v415.i64[1] << v418);
    if ((v418 & 0x3F) + v388 >= 0x40)
    {
      *(v264 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
      v419 = v415.i64[1] >> -(v418 & 0x3F);
      if ((v418 & 0x3F) == 0)
      {
        v419 = 0;
      }
    }

    v420 = v418 + v388;
    v421.i64[0] = 0x1F0000001FLL;
    v421.i64[1] = 0x1F0000001FLL;
    v422.i64[0] = -1;
    v422.i64[1] = -1;
    v423 = vshlq_u32(v422, vaddq_s32(v173, v421));
    v424 = vandq_s8(v423, v417);
    v425.i64[0] = v424.u32[0];
    v425.i64[1] = v424.u32[1];
    v426 = v425;
    v425.i64[0] = v424.u32[2];
    v425.i64[1] = v424.u32[3];
    v427 = v425;
    v425.i64[0] = v173.u32[0];
    v425.i64[1] = v173.u32[1];
    v428 = v425;
    v425.i64[0] = v173.u32[2];
    v425.i64[1] = v173.u32[3];
    v429 = vzip1q_s64(0, v428);
    v430 = vzip1q_s64(0, v425);
    v431 = vpaddq_s64(vshlq_u64(v426, v429), vshlq_u64(v427, v430));
    v432 = vpaddq_s64(v428, v425);
    v433 = v432.i64[0];
    v434 = (v431.i64[0] << v420) | v419;
    if (v432.i64[0] + (v420 & 0x3F) >= 0x40)
    {
      *(v264 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      if ((v420 & 0x3F) != 0)
      {
        v434 = v431.i64[0] >> -(v420 & 0x3F);
      }

      else
      {
        v434 = 0;
      }
    }

    v435 = vaddq_s32(v569, v410);
    v436 = v432.i64[1];
    v437 = v432.i64[0] + v420;
    v438 = v434 | (v431.i64[1] << v437);
    if ((v437 & 0x3F) + v432.i64[1] >= 0x40)
    {
      *(v264 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
      v438 = v431.i64[1] >> -(v437 & 0x3F);
      if ((v437 & 0x3F) == 0)
      {
        v438 = 0;
      }
    }

    v439 = v437 + v432.i64[1];
    v440 = vandq_s8(v423, v435);
    v441.i64[0] = v440.u32[0];
    v441.i64[1] = v440.u32[1];
    v442 = v441;
    v441.i64[0] = v440.u32[2];
    v441.i64[1] = v440.u32[3];
    v443 = vpaddq_s64(vshlq_u64(v442, v429), vshlq_u64(v441, v430));
    v444 = (v443.i64[0] << v439) | v438;
    if (v432.i64[0] + (v439 & 0x3F) >= 0x40)
    {
      *(v264 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
      v444 = v443.i64[0] >> -(v439 & 0x3F);
      if ((v439 & 0x3F) == 0)
      {
        v444 = 0;
      }
    }

    v445 = vaddq_s32(v570, v410);
    v446 = v432.i64[0] + v439;
    v447 = v444 | (v443.i64[1] << v446);
    if ((v446 & 0x3F) + v432.i64[1] >= 0x40)
    {
      *(v264 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
      v447 = v443.i64[1] >> -(v446 & 0x3F);
      if ((v446 & 0x3F) == 0)
      {
        v447 = 0;
      }
    }

    v448 = v446 + v432.i64[1];
    v449 = vandq_s8(v423, v445);
    v450.i64[0] = v449.u32[0];
    v450.i64[1] = v449.u32[1];
    v451 = v450;
    v450.i64[0] = v449.u32[2];
    v450.i64[1] = v449.u32[3];
    v452 = vpaddq_s64(vshlq_u64(v451, v429), vshlq_u64(v450, v430));
    v453 = (v452.i64[0] << v448) | v447;
    if (v432.i64[0] + (v448 & 0x3F) >= 0x40)
    {
      *(v264 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v453;
      v453 = v452.i64[0] >> -(v448 & 0x3F);
      if ((v448 & 0x3F) == 0)
      {
        v453 = 0;
      }
    }

    v454 = vceqq_s32(v164, v583);
    v455 = vaddq_s32(v571, v410);
    v456 = v433 + v448;
    v457 = v453 | (v452.i64[1] << v456);
    if ((v456 & 0x3F) + v436 >= 0x40)
    {
      *(v264 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
      v457 = v452.i64[1] >> -(v456 & 0x3F);
      if ((v456 & 0x3F) == 0)
      {
        v457 = 0;
      }
    }

    v458 = vandq_s8(v176, v454);
    v459 = v456 + v436;
    v460 = vandq_s8(v423, v455);
    v461.i64[0] = v460.u32[0];
    v461.i64[1] = v460.u32[1];
    v462 = v461;
    v461.i64[0] = v460.u32[2];
    v461.i64[1] = v460.u32[3];
    v463 = vpaddq_s64(vshlq_u64(v462, v429), vshlq_u64(v461, v430));
    v464 = (v463.i64[0] << v459) | v457;
    if (v433 + (v459 & 0x3F) >= 0x40)
    {
      *(v264 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v463.i64[0] >> -(v459 & 0x3F);
      if ((v459 & 0x3F) == 0)
      {
        v464 = 0;
      }
    }

    v465 = vaddq_s32(v141, v458);
    v466 = v433 + v459;
    v467 = v464 | (v463.i64[1] << v466);
    if ((v466 & 0x3F) + v436 >= 0x40)
    {
      *(v264 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v463.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = v466 + v436;
    v469.i64[0] = 0x1F0000001FLL;
    v469.i64[1] = 0x1F0000001FLL;
    v470.i64[0] = -1;
    v470.i64[1] = -1;
    v471 = vshlq_u32(v470, vaddq_s32(v583, v469));
    v472 = vandq_s8(v471, v465);
    v473.i64[0] = v472.u32[0];
    v473.i64[1] = v472.u32[1];
    v474 = v473;
    v473.i64[0] = v472.u32[2];
    v473.i64[1] = v472.u32[3];
    v475 = v473;
    v473.i64[0] = v583.u32[0];
    v473.i64[1] = v583.u32[1];
    v476 = v473;
    v473.i64[0] = v583.u32[2];
    v473.i64[1] = v583.u32[3];
    v477 = vzip1q_s64(0, v476);
    v478 = vzip1q_s64(0, v473);
    v479 = vpaddq_s64(vshlq_u64(v474, v477), vshlq_u64(v475, v478));
    v480 = vpaddq_s64(v476, v473);
    v481 = (v466 + v436) & 0x3F;
    v482 = (v479.i64[0] << (v466 + v436)) | v467;
    if ((v480.i64[0] + v481) > 0x3F)
    {
      *(v264 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
      if (v481)
      {
        v482 = v479.i64[0] >> -v481;
      }

      else
      {
        v482 = 0;
      }
    }

    v483 = vaddq_s32(v175, v458);
    v484 = v480.i64[0] + v468;
    v485 = v482 | (v479.i64[1] << v484);
    if ((v484 & 0x3F) + v480.i64[1] >= 0x40)
    {
      *(v264 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
      v485 = v479.i64[1] >> -(v484 & 0x3F);
      if ((v484 & 0x3F) == 0)
      {
        v485 = 0;
      }
    }

    v486 = v484 + v480.i64[1];
    v487 = vandq_s8(v471, v483);
    v488.i64[0] = v487.u32[0];
    v488.i64[1] = v487.u32[1];
    v489 = v488;
    v488.i64[0] = v487.u32[2];
    v488.i64[1] = v487.u32[3];
    v490 = vpaddq_s64(vshlq_u64(v489, v477), vshlq_u64(v488, v478));
    v491 = (v490.i64[0] << v486) | v485;
    if (v480.i64[0] + (v486 & 0x3F) >= 0x40)
    {
      *(v264 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
      v491 = v490.i64[0] >> -(v486 & 0x3F);
      if ((v486 & 0x3F) == 0)
      {
        v491 = 0;
      }
    }

    v492 = vaddq_s32(v174, v458);
    v493 = v480.i64[0] + v486;
    v494 = v491 | (v490.i64[1] << v493);
    if ((v493 & 0x3F) + v480.i64[1] >= 0x40)
    {
      *(v264 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v494;
      v494 = v490.i64[1] >> -(v493 & 0x3F);
      if ((v493 & 0x3F) == 0)
      {
        v494 = 0;
      }
    }

    v495 = v493 + v480.i64[1];
    v496 = vandq_s8(v471, v492);
    v497.i64[0] = v496.u32[0];
    v497.i64[1] = v496.u32[1];
    v498 = v497;
    v497.i64[0] = v496.u32[2];
    v497.i64[1] = v496.u32[3];
    v499 = vpaddq_s64(vshlq_u64(v498, v477), vshlq_u64(v497, v478));
    v500 = (v499.i64[0] << v495) | v494;
    if (v480.i64[0] + (v495 & 0x3F) >= 0x40)
    {
      *(v264 + ((v495 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
      v500 = v499.i64[0] >> -(v495 & 0x3F);
      if ((v495 & 0x3F) == 0)
      {
        v500 = 0;
      }
    }

    v501 = vaddq_s32(v171, v458);
    v502 = v480.i64[0] + v495;
    v503 = v500 | (v499.i64[1] << v502);
    if ((v502 & 0x3F) + v480.i64[1] >= 0x40)
    {
      *(v264 + ((v502 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v503;
      v503 = v499.i64[1] >> -(v502 & 0x3F);
      if ((v502 & 0x3F) == 0)
      {
        v503 = 0;
      }
    }

    v504 = v502 + v480.i64[1];
    v505 = vandq_s8(v471, v501);
    v506.i64[0] = v505.u32[0];
    v506.i64[1] = v505.u32[1];
    v507 = v506;
    v506.i64[0] = v505.u32[2];
    v506.i64[1] = v505.u32[3];
    v508 = vpaddq_s64(vshlq_u64(v507, v477), vshlq_u64(v506, v478));
    v509 = (v508.i64[0] << v504) | v503;
    if (v480.i64[0] + (v504 & 0x3F) >= 0x40)
    {
      *(v264 + ((v504 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v509;
      v509 = v508.i64[0] >> -(v504 & 0x3F);
      if ((v504 & 0x3F) == 0)
      {
        v509 = 0;
      }
    }

    v510 = v480.i64[0] + v504;
    v511 = (v480.i64[0] + v504) & 0x3F;
    v512 = v509 | (v508.i64[1] << (v480.i8[0] + v504));
    if ((v511 + v480.i64[1]) >= 0x40)
    {
      *(v264 + ((v510 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v512;
      v512 = v508.i64[1] >> -v511;
      if (!v511)
      {
        v512 = 0;
      }
    }

    v513 = v510 + v480.i64[1];
    if ((v513 & 0x3F) != 0)
    {
      *(v264 + ((v513 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v512;
    }

    result = (v513 - v265 + 7) >> 3;
    v178 = *a2 | (result - 1);
  }

LABEL_143:
  *a2 = v178;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 128, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 128, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 128, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 128, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v8 = *(a3 + 16);
      v9 = *(a3 + 32);
      v10 = *(a3 + 48);
      v11 = *(a3 + 64);
      v12 = *(a3 + 80);
      v13 = *(a3 + 96);
      v14 = *(a3 + 112);
      v15 = *(a3 + 128);
      v16 = *(a3 + 144);
      v17 = *(a3 + 160);
      v18 = *(a3 + 176);
      v19 = *(a3 + 192);
      v20 = *(a3 + 208);
      v21 = *(a3 + 224);
      v22 = *(a3 + 240);
      f64 = a1[4].f64;
      *a1 = *a3;
      a1[1] = v8;
      a1[2] = v9;
      a1[3] = v10;
      v24 = (a1->f64 + a2);
      *f64 = v11;
      f64[1] = v12;
      f64[2] = v13;
      f64[3] = v14;
      *v24 = v15;
      v24[1] = v16;
      v24[2] = v17;
      v24[3] = v18;
      v24 += 4;
      v4 = 256;
      *v24 = v19;
      v24[1] = v20;
      v24[2] = v21;
      v24[3] = v22;
      return v4;
    case 7u:
      v6 = vld1q_dup_f64(a3);
      *a1 = v6;
      a1[1] = v6;
      a1[2] = v6;
      a1[3] = v6;
      a1[4] = v6;
      a1[5] = v6;
      a1[6] = v6;
      a1[7] = v6;
      v7 = (a1 + a2);
      *v7 = v6;
      v7[1] = v6;
      v7[2] = v6;
      v7[3] = v6;
      v7[4] = v6;
      v7[5] = v6;
      v4 = 8;
      v7[6] = v6;
      v7[7] = v6;
      return v4;
    case 0u:
      v4 = 0;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v5 = (a1->f64 + a2);
      v5[6] = 0u;
      v5[7] = 0u;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      return v4;
  }

  v25 = 8 * (a3 & 7);
  v26 = a3 & 0xFFFFFFFFFFFFFFF8;
  v27 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v25;
  if (v25 >= 0x2D)
  {
    v27 |= *(v26 + 8) << (-8 * (a3 & 7u));
  }

  v28 = (8 * (a3 & 7)) | 0x800;
  v29.i32[0] = v27;
  v29.i32[1] = (v27 >> 5) & 0x7FFF;
  *v30.i8 = vand_s8(v29, 0x1F0000001FLL);
  v31 = v25 + 84;
  v364 = *v30.i8;
  v30.i64[1] = v30.i64[0];
  v32.i64[0] = 0xFFFF0000FFFFLL;
  v32.i64[1] = 0xFFFF0000FFFFLL;
  v33 = vandq_s8(v30, v32);
  v32.i16[0] = (v27 >> 10) & 0x1F;
  v32.i16[1] = (v27 >> 15) & 0x1F;
  v32.i32[1] = v32.i32[0];
  v34 = vmovl_u16(vadd_s16(*v32.i8, 0x1000100010001));
  v35 = *&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3);
  v36.i64[0] = 0x300000003;
  v36.i64[1] = 0x300000003;
  v37 = vbicq_s8(v34, vceqq_s32((*&v33 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v36));
  v36.i64[0] = 0x404040404040404;
  v36.i64[1] = 0x404040404040404;
  v38 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32((*&v33 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v36);
  if (vmaxvq_s8(v38) < 1)
  {
    v47 = 0;
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v361 = v65;
    v362 = v65;
    v63 = v37;
    v62 = v37;
    v61 = v37;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v60 = v37;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v363 = v66;
  }

  else
  {
    v39 = vmovl_u8(*&vpaddq_s8(v38, v38));
    v40 = vmovl_u16(*&vpaddq_s16(v39, v39));
    v41 = vpaddq_s32(v40, v40).u64[0];
    v42.i64[0] = v41;
    v42.i64[1] = HIDWORD(v41);
    v43 = v42;
    v44 = vaddvq_s64(v42);
    v45 = v31 + v44;
    v46 = v44 <= 0x80 && v28 >= v45;
    v47 = !v46;
    v48 = 0uLL;
    if (v46)
    {
      v49 = v31 & 0x3C;
      v50 = vaddq_s64(vdupq_n_s64(v49), vzip1q_s64(0, v43));
      v51 = (v26 + ((v31 >> 3) & 0x18));
      v48 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v51, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v51->i64[0], 0), vnegq_s64(v50)));
      if (v49 + v44 >= 0x81)
      {
        v48 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v51[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v51[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v48);
      }

      v31 = v45;
    }

    v52 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54 = vshlq_u64(v48, vnegq_s64(v53));
    v55 = vuzp1q_s32(vzip1q_s64(v48, v54), vzip2q_s64(v48, v54));
    v56 = vshlq_u32(v55, vnegq_s32((*&v39 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v57 = vuzp1q_s16(vzip1q_s32(v55, v56), vzip2q_s32(v55, v56));
    v55.i64[0] = 0x101010101010101;
    v55.i64[1] = 0x101010101010101;
    *v58.i8 = vand_s8(vadd_s8(*&vshlq_s8(v55, v38), -1), vmovn_s16(vzip1q_s16(v57, vshlq_u16(v57, vnegq_s16(vmovl_u8(vuzp1_s8(*v38.i8, v29)))))));
    v58.i64[1] = v58.i64[0];
    *v58.i8 = vqtbl1_s8(v58, 0x703060205010400);
    v57.i64[0] = vmovl_s8(vdup_lane_s16(*v58.i8, 0)).u64[0];
    v55.i64[0] = vmovl_s8(vdup_lane_s16(*v58.i8, 1)).u64[0];
    v59 = vmovl_s8(vdup_lane_s16(*v58.i8, 2)).u64[0];
    v58.i64[0] = vmovl_s8(vdup_lane_s16(*v58.i8, 3)).u64[0];
    v60 = vsubw_s16(v37, *v57.i8);
    v61 = vsubw_s16(v37, *v55.i8);
    v62 = vsubw_s16(v37, v59);
    v63 = vsubw_s16(v37, *v58.i8);
    v362 = vmovl_s16(vceqz_s16(*v57.i8));
    v363 = vmovl_s16(vceqz_s16(*v55.i8));
    v64 = vmovl_s16(vceqz_s16(v59));
    v361 = vmovl_s16(vceqz_s16(*v58.i8));
  }

  v67.i64[0] = 0x800000008;
  v67.i64[1] = 0x800000008;
  v68 = 0uLL;
  v69 = vandq_s8(vextq_s8(vtstq_s32(v33, v67), 0, 8uLL), v37);
  v67.i64[0] = vpaddq_s32(v69, v69).u64[0];
  v70.i64[0] = v67.u32[0];
  v70.i64[1] = v67.u32[1];
  v71 = v70;
  v72 = vaddvq_s64(v70);
  v73 = v31 + v72;
  if (v72 <= 0x80 && v28 >= v73)
  {
    v75 = v31 & 0x3F;
    v76 = vaddq_s64(vdupq_n_s64(v75), vzip1q_s64(0, v71));
    v77 = (v26 + 8 * (v31 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v77, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v76)), vshlq_u64(vdupq_lane_s64(v77->i64[0], 0), vnegq_s64(v76)));
    if (v75 + v72 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v77[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v76)), vshlq_u64(vdupq_laneq_s64(v77[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v76))), v68);
    }

    v31 = v73;
  }

  else
  {
    v47 = 1;
  }

  v78 = v364.i8[0] & 3;
  if (v78 == 2)
  {
    v79 = v31 + 32;
    if (v28 >= v31 + 16)
    {
      v31 += 16;
    }

    else
    {
      v47 = 1;
      v79 = v31 + 16;
    }

    if (v28 >= v79)
    {
      v31 = v79;
    }

    else
    {
      v47 = 1;
    }
  }

  v80 = 0uLL;
  v81 = vextq_s8(0, v60, 8uLL);
  v82 = vpaddq_s32(v81, v81).u64[0];
  v83.i64[0] = v82;
  v83.i64[1] = HIDWORD(v82);
  v84 = v83;
  v85 = vaddvq_s64(v83);
  v86 = v31 + v85;
  if (v85 <= 0x80 && v28 >= v86)
  {
    v89 = v31 & 0x3F;
    v90 = vaddq_s64(vdupq_n_s64(v89), vzip1q_s64(0, v84));
    v91 = (v26 + 8 * (v31 >> 6));
    v88 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v90)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v90)));
    if (v89 + v85 >= 0x81)
    {
      v88 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v90)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v90))), v88);
    }

    v31 = v86;
  }

  else
  {
    v47 = 1;
    v88 = 0uLL;
  }

  v92 = vpaddq_s32(v60, v60).u64[0];
  v93.i64[0] = v92;
  v93.i64[1] = HIDWORD(v92);
  v94 = v93;
  v95 = vaddvq_s64(v93);
  v96 = v31 + v95;
  if (v95 <= 0x80 && v28 >= v96)
  {
    v98 = v31 & 0x3F;
    v99 = vaddq_s64(vdupq_n_s64(v98), vzip1q_s64(0, v94));
    v100 = (v26 + 8 * (v31 >> 6));
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v100, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v100->i64[0], 0), vnegq_s64(v99)));
    if (v98 + v95 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v100[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v100[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v80);
    }

    v31 = v96;
  }

  else
  {
    v47 = 1;
  }

  v101 = v31 + v95;
  v102 = 0uLL;
  if (v95 <= 0x80 && v28 >= v101)
  {
    v105 = v31 & 0x3F;
    v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v94));
    v107 = (v26 + 8 * (v31 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
    if (v105 + v95 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
    }

    v31 = v101;
  }

  else
  {
    v47 = 1;
    v104 = 0uLL;
  }

  v108 = v31 + v95;
  if (v95 <= 0x80 && v28 >= v108)
  {
    v110 = v31 & 0x3F;
    v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v94));
    v112 = (v26 + 8 * (v31 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
    if (v110 + v95 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v102);
    }

    v31 = v108;
  }

  else
  {
    v47 = 1;
  }

  v113 = vpaddq_s32(v61, v61).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v31 + v116;
  v118 = 0uLL;
  if (v116 <= 0x80 && v28 >= v117)
  {
    v121 = v31 & 0x3F;
    v122 = vaddq_s64(vdupq_n_s64(v121), vzip1q_s64(0, v115));
    v123 = (v26 + 8 * (v31 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v121 + v116 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v31 = v117;
  }

  else
  {
    v47 = 1;
    v120 = 0uLL;
  }

  v124 = v31 + v116;
  if (v116 <= 0x80 && v28 >= v124)
  {
    v126 = v31 & 0x3F;
    v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v115));
    v128 = (v26 + 8 * (v31 >> 6));
    v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v126 + v116 >= 0x81)
    {
      v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v118);
    }

    v31 = v124;
  }

  else
  {
    v47 = 1;
  }

  v129 = 0uLL;
  if (v116 > 0x80 || (v130 = v31 + v116, v28 < v31 + v116))
  {
    v47 = 1;
    v130 = v31;
    v134 = 0uLL;
  }

  else
  {
    v131 = v31 & 0x3F;
    v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v115));
    v133 = (v26 + 8 * (v31 >> 6));
    v134 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
    if (v131 + v116 >= 0x81)
    {
      v134 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v134);
    }
  }

  if (v116 > 0x80 || (v135 = v130 + v116, v28 < v130 + v116))
  {
    v138 = v60;
    v47 = 1;
    v135 = v130;
  }

  else
  {
    v136 = vaddq_s64(vdupq_n_s64(v130 & 0x3F), vzip1q_s64(0, v115));
    v137 = (v26 + 8 * (v130 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    v138 = v60;
    if ((v130 & 0x3F) + v116 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v129);
    }
  }

  v139 = v62;
  v140 = vpaddq_s32(v62, v62).u64[0];
  v141.i64[0] = v140;
  v141.i64[1] = HIDWORD(v140);
  v142 = v141;
  v143 = vaddvq_s64(v141);
  v144 = v143;
  v145 = 0uLL;
  if (v143 > 0x80 || (v146 = v135 + v143, v28 < v135 + v143))
  {
    v47 = 1;
    v146 = v135;
    v149 = 0uLL;
  }

  else
  {
    v147 = vaddq_s64(vdupq_n_s64(v135 & 0x3F), vzip1q_s64(0, v142));
    v148 = (v26 + 8 * (v135 >> 6));
    v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if ((v135 & 0x3F) + v144 >= 0x81)
    {
      v149 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v149);
    }
  }

  if (v144 > 0x80 || (v150 = v146 + v144, v28 < v146 + v144))
  {
    v47 = 1;
    v150 = v146;
  }

  else
  {
    v151 = vaddq_s64(vdupq_n_s64(v146 & 0x3F), vzip1q_s64(0, v142));
    v152 = (v26 + 8 * (v146 >> 6));
    v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
    if ((v146 & 0x3F) + v144 >= 0x81)
    {
      v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v145);
    }
  }

  v153 = 0uLL;
  if (v144 > 0x80 || (v154 = v150 + v144, v28 < v150 + v144))
  {
    v47 = 1;
    v154 = v150;
    v158 = 0uLL;
  }

  else
  {
    v155 = v150 & 0x3F;
    v156 = vaddq_s64(vdupq_n_s64(v155), vzip1q_s64(0, v142));
    v157 = (v26 + 8 * (v150 >> 6));
    v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
    if (v155 + v144 >= 0x81)
    {
      v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v158);
    }
  }

  if (v144 > 0x80 || (v159 = v154 + v144, v28 < v154 + v144))
  {
    v47 = 1;
    v159 = v154;
  }

  else
  {
    v160 = v154 & 0x3F;
    v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v142));
    v162 = (v26 + 8 * (v154 >> 6));
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if (v160 + v144 >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v153);
    }
  }

  v163 = vpaddq_s32(v63, v63).u64[0];
  v164.i64[0] = v163;
  v164.i64[1] = HIDWORD(v163);
  v165 = v164;
  v166 = vaddvq_s64(v164);
  v167 = v166;
  v168 = 0uLL;
  if (v166 > 0x80 || (v169 = v159 + v166, v28 < v159 + v166))
  {
    v47 = 1;
    v169 = v159;
    v173 = 0uLL;
  }

  else
  {
    v170 = v159 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v165));
    v172 = (v26 + 8 * (v159 >> 6));
    v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v167 >= 0x81)
    {
      v173 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
    }
  }

  if (v167 > 0x80 || (v174 = v169 + v167, v28 < v169 + v167))
  {
    v47 = 1;
    v174 = v169;
  }

  else
  {
    v175 = v169 & 0x3F;
    v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v165));
    v177 = (v26 + 8 * (v169 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
    if (v175 + v167 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v168);
    }
  }

  v178 = 0uLL;
  if (v167 > 0x80 || (v179 = v174 + v167, v28 < v174 + v167))
  {
    v47 = 1;
    v179 = v174;
  }

  else
  {
    v180 = v174 & 0x3F;
    v181 = vaddq_s64(vdupq_n_s64(v180), vzip1q_s64(0, v165));
    v182 = (v26 + 8 * (v174 >> 6));
    v178 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v182, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v181)), vshlq_u64(vdupq_lane_s64(v182->i64[0], 0), vnegq_s64(v181)));
    if (v180 + v167 >= 0x81)
    {
      v178 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v182[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v181)), vshlq_u64(vdupq_laneq_s64(v182[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v181))), v178);
    }
  }

  if (v167 > 0x80 || v28 < v179 + v167)
  {
    goto LABEL_140;
  }

  v183 = v25 + 20;
  v184 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
  v185.i64[0] = v184.u32[0];
  v185.i64[1] = v184.u32[1];
  v186 = (v26 + ((v183 >> 3) & 8));
  v187 = vnegq_s64(v185);
  v188.i64[0] = 0x2000000020;
  v188.i64[1] = 0x2000000020;
  v189.i64[0] = 0x1F0000001FLL;
  v189.i64[1] = 0x1F0000001FLL;
  v190 = vsubq_s32(v188, v63);
  v191 = vaddq_s32(v63, v189);
  v192 = vaddq_s64(vdupq_n_s64(v179 & 0x3F), vzip1q_s64(0, v165));
  v193 = (v26 + 8 * (v179 >> 6));
  v194 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v193, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v192)), vshlq_u64(vdupq_lane_s64(v193->i64[0], 0), vnegq_s64(v192)));
  if ((v179 & 0x3F) + v167 < 0x81)
  {
    if ((v47 & 1) == 0)
    {
      v195 = v64;
      v199 = vshlq_u64(v194, v187);
      v198 = vuzp1q_s32(vzip1q_s64(v194, v199), vzip2q_s64(v194, v199));
      goto LABEL_138;
    }

LABEL_140:
    v4 = 0;
    *&v201.f64[0] = 0xFFFFFFFFLL;
    *&v201.f64[1] = 0xFFFFFFFFLL;
    *a1 = v201;
    *(a1 + a2) = v201;
    return v4;
  }

  if (v47)
  {
    goto LABEL_140;
  }

  v195 = v64;
  v196 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v193[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v192)), vshlq_u64(vdupq_laneq_s64(v193[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v192))), v194);
  v197 = vshlq_u64(v196, v187);
  v198 = vuzp1q_s32(vzip1q_s64(v196, v197), vzip2q_s64(v196, v197));
LABEL_138:
  v200 = vshlq_s32(vshlq_s32(v198, v190), v191);
  v4 = a4 + 1;
  if (v28 + 8 * v4 - (v179 + v167) - 2048 >= 9 || v78 == 2)
  {
    goto LABEL_140;
  }

  v341 = v33;
  v359 = v195;
  v360 = v200;
  v203 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
  v204.i64[0] = v203.u32[0];
  v204.i64[1] = v203.u32[1];
  v205 = vshlq_u64(v68, vnegq_s64(v204));
  v206 = vzip2q_s64(v68, v205);
  v355 = vzip1q_s64(v68, v205);
  v357 = v69;
  v207 = v81;
  *v205.i8 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
  v204.i64[0] = v205.u32[0];
  v204.i64[1] = v205.u32[1];
  v208 = vshlq_u64(v88, vnegq_s64(v204));
  v351 = vzip1q_s64(v88, v208);
  v353 = vzip2q_s64(v88, v208);
  v358 = v35;
  v209 = v138;
  v210 = vzip1_s32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
  v204.i64[0] = v210.u32[0];
  v204.i64[1] = v210.u32[1];
  v211 = vnegq_s64(v204);
  v212 = vshlq_u64(v80, v211);
  v349 = vzip1q_s64(v80, v212);
  v350 = vzip2q_s64(v80, v212);
  v213 = vshlq_u64(v104, v211);
  v347 = vzip1q_s64(v104, v213);
  v348 = vzip2q_s64(v104, v213);
  v214 = vshlq_u64(v102, v211);
  v345 = vzip1q_s64(v102, v214);
  v346 = vzip2q_s64(v102, v214);
  v215 = vzip1_s32(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
  v204.i64[0] = v215.u32[0];
  v204.i64[1] = v215.u32[1];
  v216 = vnegq_s64(v204);
  v217 = vshlq_u64(v120, v216);
  v343 = vzip1q_s64(v120, v217);
  v344 = vzip2q_s64(v120, v217);
  v218 = vshlq_u64(v118, v216);
  v342 = vzip2q_s64(v118, v218);
  v219 = vzip1q_s64(v118, v218);
  v220 = vshlq_u64(v134, v216);
  v221 = vzip2q_s64(v134, v220);
  v222 = vzip1q_s64(v134, v220);
  v223 = vshlq_u64(v129, v216);
  v224 = vzip2q_s64(v129, v223);
  v225 = vzip1q_s64(v129, v223);
  v226 = v139;
  v227 = vzip1_s32(*v139.i8, *&vextq_s8(v139, v139, 8uLL));
  v204.i64[0] = v227.u32[0];
  v204.i64[1] = v227.u32[1];
  v228 = vnegq_s64(v204);
  v229 = vshlq_u64(v149, v228);
  v230 = vzip2q_s64(v149, v229);
  v231 = vzip1q_s64(v149, v229);
  v232 = vshlq_u64(v145, v228);
  v233 = vzip2q_s64(v145, v232);
  v234 = vzip1q_s64(v145, v232);
  v235 = vshlq_u64(v158, v228);
  v236 = vzip2q_s64(v158, v235);
  v237 = vzip1q_s64(v158, v235);
  v238 = vshlq_u64(v153, v228);
  v239 = vzip2q_s64(v153, v238);
  v240 = vzip1q_s64(v153, v238);
  v241 = vshlq_u64(v173, v187);
  v242 = v61;
  v243 = vzip2q_s64(v173, v241);
  v244 = vzip1q_s64(v173, v241);
  v245 = vshlq_u64(v168, v187);
  v246 = vzip2q_s64(v168, v245);
  v247 = vzip1q_s64(v168, v245);
  v248 = vuzp1q_s32(v355, v206);
  v249 = vuzp1q_s32(v351, v353);
  v250 = vuzp1q_s32(v219, v342);
  v251 = vuzp1q_s32(v222, v221);
  v252 = vuzp1q_s32(v225, v224);
  v354 = vuzp1q_s32(v234, v233);
  v356 = vuzp1q_s32(v231, v230);
  v352 = vuzp1q_s32(v237, v236);
  v253 = vuzp1q_s32(v240, v239);
  v254 = vuzp1q_s32(v244, v243);
  v230.i64[0] = 0x2000000020;
  v230.i64[1] = 0x2000000020;
  v219.i64[0] = 0x1F0000001FLL;
  v219.i64[1] = 0x1F0000001FLL;
  v222.i64[0] = 0x2000000020;
  v222.i64[1] = 0x2000000020;
  v255 = vshlq_s32(v249, vsubq_s32(v222, v207));
  v256 = vsubq_s32(v222, v209);
  v240.i64[0] = 0x1F0000001FLL;
  v240.i64[1] = 0x1F0000001FLL;
  v257 = vaddq_s32(v207, v240);
  v258 = vaddq_s32(v209, v240);
  v240.i64[0] = 0x2000000020;
  v240.i64[1] = 0x2000000020;
  v259 = vsubq_s32(v240, v242);
  v234.i64[0] = 0x1F0000001FLL;
  v234.i64[1] = 0x1F0000001FLL;
  v260 = vaddq_s32(v242, v234);
  v261 = vshlq_s32(vuzp1q_s32(v343, v344), v259);
  v262 = vshlq_s32(v250, v259);
  v263 = vshlq_s32(v251, v259);
  v264 = vshlq_s32(v252, v259);
  v259.i64[0] = 0x2000000020;
  v259.i64[1] = 0x2000000020;
  v265 = vsubq_s32(v259, v226);
  v237.i64[0] = 0x1F0000001FLL;
  v237.i64[1] = 0x1F0000001FLL;
  v266 = vaddq_s32(v226, v237);
  v267 = vshlq_s32(v356, v265);
  v268 = vshlq_s32(v354, v265);
  v269 = vshlq_s32(v352, v265);
  v270 = vshlq_s32(v253, v265);
  v271 = vshlq_s32(vshlq_s32(v248, vsubq_s32(v230, v357)), vaddq_s32(v357, v219));
  v272 = vshlq_s32(v255, v257);
  v273 = vshlq_s32(vshlq_s32(vuzp1q_s32(v349, v350), v256), v258);
  v274 = vshlq_s32(vshlq_s32(vuzp1q_s32(v347, v348), v256), v258);
  v275 = vshlq_s32(vshlq_s32(vuzp1q_s32(v345, v346), v256), v258);
  v276 = vshlq_s32(v261, v260);
  v277 = vshlq_s32(v262, v260);
  v278 = vshlq_s32(v263, v260);
  v279 = vshlq_s32(v264, v260);
  v280 = vshlq_s32(v267, v266);
  v281 = vshlq_s32(v270, v266);
  v282 = vshlq_u64(v178, v187);
  v283 = vshlq_s32(vshlq_s32(v254, v190), v191);
  v284 = vshlq_s32(vshlq_s32(vuzp1q_s32(v247, v246), v190), v191);
  v285 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v178, v282), vzip2q_s64(v178, v282)), v190), v191);
  v286 = vaddq_s32(vandq_s8(v271, v362), v272);
  v287 = vdupq_lane_s64(v271.i64[0], 0);
  v288 = vandq_s8(v287, v363);
  v289 = vsubq_s32(v276, v288);
  v290 = vsubq_s32(v277, v288);
  v291 = vsubq_s32(v278, v288);
  v292 = vsubq_s32(v279, v288);
  v293 = vandq_s8(v287, v359);
  v294 = vsubq_s32(v280, v293);
  v295 = vsubq_s32(vshlq_s32(v268, v266), v293);
  v296 = vsubq_s32(vshlq_s32(v269, v266), v293);
  v297 = vandq_s8(v287, v362);
  v298 = vsubq_s32(v281, v293);
  v299 = vandq_s8(v287, v361);
  v300 = vsubq_s32(v283, v299);
  v301 = vsubq_s32(v284, v299);
  v302 = vsubq_s32(v285, v299);
  v303 = vsubq_s32(v360, v299);
  v304.i64[0] = 0x100000001;
  v304.i64[1] = 0x100000001;
  v305 = vsubq_s32(v273, v297);
  v306 = vsubq_s32(v274, v297);
  v307 = vuzp1_s16(v364, v364);
  v308 = vsubq_s32(v286, v297);
  v309 = vsubq_s32(v275, v297);
  v310 = vdupq_n_s64(((2 * v186[1]) << ~v183) | (*v186 >> v183));
  if (vaddvq_s32(vceqq_s32(v358, v304)))
  {
    v311 = vnegq_s32(vandq_s8(v341, v304));
    v312.i64[0] = v309.i64[0];
    v313.i64[1] = v308.i64[1];
    v312.i64[1] = v308.i64[0];
    v313.i64[0] = v309.i64[1];
    v314 = vbslq_s8(v311, v313, v308);
    v315 = vbslq_s8(v311, v312, v309);
    v316.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v316.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v317 = vandq_s8(vqtbl4q_s8(*(&v305 - 1), v316), v311);
    v365 = v307;
    v366.val[0] = vaddq_s32(v314, vandq_s8(vqtbl4q_s8(*(&v305 - 1), xmmword_29D2F10B0), v311));
    v366.val[1] = vaddq_s32(v305, vandq_s8(vqtbl4q_s8(*(&v305 - 1), xmmword_29D2F10C0), v311));
    v366.val[2] = vaddq_s32(v306, v317);
    v366.val[3] = vaddq_s32(v315, v317);
    v318 = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v308 = vaddq_s32(v366.val[0], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F10D0), v311));
    v305 = vaddq_s32(v366.val[1], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F10E0), v311));
    v306 = vaddq_s32(v366.val[2], v318);
    v309 = vaddq_s32(v366.val[3], v318);
    v367.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F10B0), v311), v289);
    v367.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F10F0), v311), v290);
    v367.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, v316), v311), v291);
    v367.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v289.i8, xmmword_29D2F1100), v311), v292);
    v319 = vandq_s8(vqtbl4q_s8(v367, xmmword_29D2F10D0), v311);
    v366.val[0] = vandq_s8(vqtbl4q_s8(v367, v316), v311);
    v289 = vaddq_s32(v319, v367.val[0]);
    v290 = vaddq_s32(v367.val[1], v319);
    v291 = vaddq_s32(v367.val[2], v366.val[0]);
    v292 = vaddq_s32(v367.val[3], v366.val[0]);
    v366.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F0EB0), v311), v294);
    v366.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F0FB0), v311), v295);
    v366.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10B0), v311), v296);
    v366.val[3] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v294.i8, xmmword_29D2F10C0), v311), v298);
    v367.val[2] = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v294 = vaddq_s32(v366.val[0], v367.val[2]);
    v295 = vaddq_s32(v366.val[1], v367.val[2]);
    v296 = vaddq_s32(v366.val[2], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F0FE0), v311));
    v298 = vaddq_s32(v366.val[3], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F1110), v311));
    v320 = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F0EB0), v311), v300);
    v366.val[0] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F1120), v311), v301);
    v366.val[1] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10B0), v311), v302);
    v366.val[2] = vaddq_s32(vandq_s8(vqtbl4q_s8(*v300.i8, xmmword_29D2F10C0), v311), v303);
    v321 = vandq_s8(vqtbl4q_s8(v366, v316), v311);
    v300 = vaddq_s32(v320, v321);
    v301 = vaddq_s32(v366.val[0], v321);
    v302 = vaddq_s32(v366.val[1], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F0FE0), v311));
    v303 = vaddq_s32(v366.val[2], vandq_s8(vqtbl4q_s8(v366, xmmword_29D2F1130), v311));
    v307 = v365;
  }

  v322 = vaddq_s32(v310, v308);
  v323 = vaddq_s32(v305, v310);
  v324 = vaddq_s32(v306, v310);
  v325 = vaddq_s32(v309, v310);
  v326 = vaddq_s32(v289, v310);
  v327 = vaddq_s32(v290, v310);
  v328 = vaddq_s32(v291, v310);
  v329 = vaddq_s32(v292, v310);
  v330 = vaddq_s32(v294, v310);
  v331 = vaddq_s32(v295, v310);
  v332 = vaddq_s32(v296, v310);
  v333 = vaddq_s32(v298, v310);
  v334 = vaddq_s32(v300, v310);
  v335 = vaddq_s32(v301, v310);
  v336 = vaddq_s32(v302, v310);
  v337 = vaddq_s32(v303, v310);
  v338 = vmovl_s16(vcgt_u16(0x10001000100010, (*&v307 & 0xFF00FF00FF00FFLL)));
  v339 = &a1[4];
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v322, xmmword_29D2F11B0), v338), v322);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v323, xmmword_29D2F11B0), v338), v323);
  a1[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v324, xmmword_29D2F11B0), v338), v324);
  a1[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v325, xmmword_29D2F11B0), v338), v325);
  v340 = (a1 + a2);
  *v339 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F11B0), v338), v326);
  v339[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v327, xmmword_29D2F11B0), v338), v327);
  v339[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v328, xmmword_29D2F11B0), v338), v328);
  v339[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v329, xmmword_29D2F11B0), v338), v329);
  *v340 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v330, xmmword_29D2F11B0), v338), v330);
  v340[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v331, xmmword_29D2F11B0), v338), v331);
  v340[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v332, xmmword_29D2F11B0), v338), v332);
  v340[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v333, xmmword_29D2F11B0), v338), v333);
  v340 += 4;
  *v340 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v334, xmmword_29D2F11B0), v338), v334);
  v340[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v335, xmmword_29D2F11B0), v338), v335);
  v340[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v336, xmmword_29D2F11B0), v338), v336);
  v340[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v337, xmmword_29D2F11B0), v338), v337);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 16;
  v7 = &byte_29D2F30E1;
  do
  {
    v28 = *v7;
    v29 = *(v7 - 1);
    if (a5 <= 2 * v29 || 2 * v28 >= a6)
    {
      v27 = 0;
    }

    else
    {
      v8 = (result + 2 * a2 * v28 + (v29 << 7));
      v9 = v8 + 4;
      v11 = *v8;
      v12 = v8[1];
      v13 = v8[2];
      v14 = v8[3];
      v10 = (v8 + a2);
      v15 = *v9;
      v16 = v9[1];
      v17 = v9[2];
      v18 = v9[3];
      v19 = *v10;
      v20 = v10[1];
      v21 = v10[2];
      v22 = v10[3];
      v10 += 4;
      v23 = *v10;
      v24 = v10[1];
      v25 = v10[2];
      v26 = v10[3];
      *a3 = v11;
      a3[1] = v12;
      a3[2] = v13;
      a3[3] = v14;
      a3[4] = v15;
      a3[5] = v16;
      a3[6] = v17;
      a3[7] = v18;
      a3[8] = v19;
      a3[9] = v20;
      a3[10] = v21;
      a3[11] = v22;
      a3[12] = v23;
      a3[13] = v24;
      a3[14] = v25;
      a3[15] = v26;
      a3 += 16;
      v27 = -1;
    }

    *a4++ = v27;
    v7 += 2;
    v6 -= 2;
  }

  while (v6);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 512, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 512, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 512, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 512, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 512, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 512, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 80, 512, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 88, 512, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = vdupq_lane_s64(*a3, 0);
  v565 = *(a3 + 16);
  v566 = *(a3 + 32);
  v567 = *(a3 + 48);
  v559 = *(a3 + 64);
  v560 = *(a3 + 80);
  v561 = *(a3 + 96);
  v550 = *(a3 + 112);
  v575 = vsubq_s32(v565, v6);
  v576 = vsubq_s32(v567, v6);
  v578 = vsubq_s32(*a3, v6);
  v570 = vsubq_s32(v566, v6);
  v7 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v578, v575), v570), v576), xmmword_29D2F11C0);
  v8 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v578, v575), v570), v576), xmmword_29D2F11C0);
  v9 = vpmaxq_s32(v7, v7);
  v10 = vpminq_s32(v8, v8);
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v11 = vmaxq_s32(v9, v7);
  v12 = vminq_s32(v10, v7);
  v13 = vzip1q_s32(v9, v10);
  v14.i64[0] = 0x2000000020;
  v14.i64[1] = 0x2000000020;
  v15 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v13)), vceqzq_s32(v13));
  v579 = vsubq_s32(v560, v6);
  v577 = vsubq_s32(v559, v6);
  v571 = vsubq_s32(v561, v6);
  v16 = vsubq_s32(v550, v6);
  v17 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v577, v579), v571), v16), xmmword_29D2F11C0);
  v18 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v577, v579), v571), v16), xmmword_29D2F11C0);
  v19 = vpmaxq_s32(v17, v17);
  v20 = vpminq_s32(v18, v18);
  v21 = vmaxq_s32(v11, v19);
  v22 = vminq_s32(v12, v20);
  v23 = vzip1q_s32(v19, v20);
  v24 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v23)), vceqzq_s32(v23));
  v25 = vsubq_s32(*(a3 + a4 + 16), v6);
  v26 = vsubq_s32(*(a3 + a4 + 32), v6);
  v549 = *(a3 + a4 + 48);
  v27 = vsubq_s32(v549, v6);
  v573 = vsubq_s32(*(a3 + a4), v6);
  v28 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v573, v25), v26), v27), xmmword_29D2F11C0);
  v29 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v573, v25), v26), v27), xmmword_29D2F11C0);
  v30 = vpmaxq_s32(v28, v28);
  v31 = vpminq_s32(v29, v29);
  v32 = vmaxq_s32(v21, v30);
  v33 = vminq_s32(v22, v31);
  v34 = vzip1q_s32(v30, v31);
  v35 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v34)), vceqzq_s32(v34));
  v36 = vsubq_s32(*(a3 + a4 + 64), v6);
  v37 = vsubq_s32(*(a3 + a4 + 80), v6);
  v38 = vsubq_s32(*(a3 + a4 + 96), v6);
  v548 = *(a3 + a4 + 112);
  v39 = vsubq_s32(v548, v6);
  v40 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v36, v37), v38), v39), xmmword_29D2F11C0);
  v41 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v36, v37), v38), v39), xmmword_29D2F11C0);
  v42 = vpmaxq_s32(v40, v40);
  v43 = vpminq_s32(v41, v41);
  v44 = vmaxq_s32(v32, v42);
  v45 = vminq_s32(v33, v43);
  v46 = vzip1q_s32(v42, v43);
  v47 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v46)), vceqzq_s32(v46));
  v48 = vpmaxq_s32(v15, v15);
  v49 = vpmaxq_s32(v24, v24);
  v50 = vpmaxq_s32(v35, v35);
  v51 = vpmaxq_s32(v47, v47);
  v52 = vmaxq_s32(vmaxq_s32(v48, v49), vmaxq_s32(v50, v51));
  v53 = vclzq_s32(vsubq_s32(v44, v45));
  v54 = vsubq_s32(v14, v53);
  v55 = vminq_s32(v54, v52);
  if (vmaxvq_s32(v55))
  {
    v545 = *(a3 + a4 + 64);
    v546 = *(a3 + a4 + 80);
    v547 = *(a3 + a4 + 96);
    v535 = vcgtq_s32(v52, v54);
    v56.i64[0] = 0x800000008;
    v56.i64[1] = 0x800000008;
    v57.i64[0] = 0x300000003;
    v57.i64[1] = 0x300000003;
    v58 = vorrq_s8(vandq_s8(vceqzq_s32(v55), v57), vandq_s8(v535, v56));
    v59 = vsubq_s32(v55, v48);
    v60.i64[0] = 0xF0000000FLL;
    v60.i64[1] = 0xF0000000FLL;
    v61.i64[0] = 0x8000000080000000;
    v61.i64[1] = 0x8000000080000000;
    v551 = vmaxq_s32(vminq_s32(vsubq_s32(v55, v49), v60), 0);
    v541 = vmaxq_s32(vminq_s32(v59, v60), 0);
    v543 = vmaxq_s32(vminq_s32(vsubq_s32(v55, v50), v60), 0);
    v580 = vmaxq_s32(vminq_s32(vsubq_s32(v55, v51), v60), 0);
    v57.i64[0] = 0x400000004;
    v57.i64[1] = 0x400000004;
    v568 = vorrq_s8(vbicq_s8(v57, vceqq_s32(vaddq_s32(v580, v543), vnegq_s32(vaddq_s32(v541, v551)))), v58);
    v537 = v53;
    v539 = v45;
    v62 = vsubq_s32(v578, vqtbl1q_s8(v578, xmmword_29D2F11B0));
    v531 = vsubq_s32(v575, vqtbl1q_s8(v575, xmmword_29D2F11B0));
    v63 = vsubq_s32(v570, vqtbl1q_s8(v570, xmmword_29D2F11B0));
    v64 = vsubq_s32(v576, vqtbl1q_s8(v576, xmmword_29D2F11B0));
    v65 = vsubq_s32(v577, vqtbl1q_s8(v577, xmmword_29D2F11B0));
    v553 = v16;
    v66 = vsubq_s32(v16, vqtbl1q_s8(v16, xmmword_29D2F11B0));
    v563 = v25;
    v67 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v62, v531), v63), v64);
    v533 = v62;
    v68 = vminq_s32(v62, v531);
    v69 = vsubq_s32(v579, vqtbl1q_s8(v579, xmmword_29D2F11B0));
    v528 = v63;
    v70 = vminq_s32(v68, v63);
    v71 = v64;
    v72 = vsubq_s32(v573, vqtbl1q_s8(v573, xmmword_29D2F11B0));
    v73 = vqtbl1q_s8(v67, xmmword_29D2F11C0);
    v74 = vqtbl1q_s8(vminq_s32(v70, v71), xmmword_29D2F11C0);
    v75 = vpmaxq_s32(v73, v73);
    v76 = vpminq_s32(v74, v74);
    v77 = vmaxq_s32(v75, v61);
    v78.i64[0] = 0x8000000080000000;
    v78.i64[1] = 0x8000000080000000;
    v79 = vminq_s32(v76, v78);
    v80 = vzip1q_s32(v75, v76);
    v81 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v80)), vceqzq_s32(v80));
    v525 = vsubq_s32(v26, vqtbl1q_s8(v26, xmmword_29D2F11B0));
    v526 = vsubq_s32(v571, vqtbl1q_s8(v571, xmmword_29D2F11B0));
    v522 = vsubq_s32(v25, vqtbl1q_s8(v25, xmmword_29D2F11B0));
    v82 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v65, v69), v526), v66), xmmword_29D2F11C0);
    v83 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v65, v69), v526), v66), xmmword_29D2F11C0);
    v84 = vpmaxq_s32(v82, v82);
    v85 = vpminq_s32(v83, v83);
    v86 = vmaxq_s32(v77, v84);
    v87 = vminq_s32(v79, v85);
    v88 = vzip1q_s32(v84, v85);
    v89 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v88)), vceqzq_s32(v88));
    v90 = vsubq_s32(v27, vqtbl1q_s8(v27, xmmword_29D2F11B0));
    v91 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v72, v522), v525), v90), xmmword_29D2F11C0);
    v92 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v72, v522), v525), v90), xmmword_29D2F11C0);
    v93 = vpmaxq_s32(v91, v91);
    v94 = vpminq_s32(v92, v92);
    v95 = vmaxq_s32(v86, v93);
    v564 = v26;
    v96 = vminq_s32(v87, v94);
    v97 = vzip1q_s32(v93, v94);
    v562 = v27;
    v98 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v97)), vceqzq_s32(v97));
    v99 = vsubq_s32(v38, vqtbl1q_s8(v38, xmmword_29D2F11B0));
    v100 = vsubq_s32(v39, vqtbl1q_s8(v39, xmmword_29D2F11B0));
    v101 = v39;
    v519 = vsubq_s32(v37, vqtbl1q_s8(v37, xmmword_29D2F11B0));
    v520 = vsubq_s32(v36, vqtbl1q_s8(v36, xmmword_29D2F11B0));
    v102 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v520, v519), v99), v100), xmmword_29D2F11C0);
    v103 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v520, v519), v99), v100), xmmword_29D2F11C0);
    v557 = v38;
    v104 = vpmaxq_s32(v102, v102);
    v105 = vpminq_s32(v103, v103);
    v106 = vmaxq_s32(v95, v104);
    v107 = vminq_s32(v96, v105);
    v108 = vzip1q_s32(v104, v105);
    v109 = vbicq_s8(vsubq_s32(v14, vclsq_s32(v108)), vceqzq_s32(v108));
    v110 = vpmaxq_s32(v81, v81);
    v111 = vpmaxq_s32(v89, v89);
    v112 = vpmaxq_s32(v98, v98);
    v113 = vpmaxq_s32(v109, v109);
    v114 = vmaxq_s32(vmaxq_s32(v110, v111), vmaxq_s32(v112, v113));
    v115 = vclzq_s32(vsubq_s32(v106, v107));
    v116 = vsubq_s32(v14, v115);
    v117 = vcgtq_s32(v114, v116);
    v118 = vminq_s32(v116, v114);
    v114.i64[0] = 0x1000000010;
    v114.i64[1] = 0x1000000010;
    v555 = v37;
    v119.i64[0] = 0x1800000018;
    v119.i64[1] = 0x1800000018;
    v120 = v117;
    v121 = vbslq_s8(v117, v119, v114);
    v117.i64[0] = 0x300000003;
    v117.i64[1] = 0x300000003;
    v122 = vorrq_s8(vandq_s8(vceqzq_s32(v118), v117), v121);
    v123 = vminq_s32(vsubq_s32(v118, v110), v60);
    v124 = vminq_s32(vsubq_s32(v118, v111), v60);
    v125 = vminq_s32(vsubq_s32(v118, v112), v60);
    v126 = vminq_s32(vsubq_s32(v118, v113), v60);
    v127 = vmaxq_s32(v123, 0);
    v128 = vmaxq_s32(v124, 0);
    v129 = vmaxq_s32(v125, 0);
    v130 = vmaxq_s32(v126, 0);
    v131 = vaddq_s32(v130, v129);
    v117.i64[0] = 0x400000004;
    v117.i64[1] = 0x400000004;
    v518 = vorrq_s8(vbicq_s8(v117, vceqq_s32(v131, vnegq_s32(vaddq_s32(v127, v128)))), v122);
    *v131.i8 = vqmovn_u32(v518);
    v124.i64[0] = 0x8000800080008;
    v124.i64[1] = 0x8000800080008;
    v132 = v36;
    *v36.i8 = vqmovn_u32(v118);
    v102.i64[0] = 0x10001000100010;
    v102.i64[1] = 0x10001000100010;
    v133 = vaddq_s16(vbicq_s8(v36, vceqzq_s16(vandq_s8(v131, v124))), vandq_s8(vshlq_n_s16(v131, 2uLL), v102));
    v134.i64[0] = 0x3000300030003;
    v134.i64[1] = 0x3000300030003;
    v89.i64[0] = 0x2000200020002;
    v89.i64[1] = 0x2000200020002;
    v106.i64[0] = 0x20002000200020;
    v106.i64[1] = 0x20002000200020;
    v135 = vaddq_s16(v133, vandq_s8(vceqq_s16(vandq_s8(v131, v134), v89), v106));
    v136 = vsubq_s32(v118, v127);
    *v127.i8 = vqmovn_u32(v136);
    v126.i64[0] = 0x7000700070007;
    v126.i64[1] = 0x7000700070007;
    v137 = vmlaq_s16(v135, v127, v126);
    *v127.i8 = vqmovn_u32(v568);
    v138 = v55;
    *v55.i8 = vqmovn_u32(v55);
    v139 = vandq_s8(vceqq_s16(vandq_s8(v127, v134), v89), v106);
    v140 = vaddq_s16(vbicq_s8(v55, vceqzq_s16(vandq_s8(v127, v124))), vandq_s8(vshlq_n_s16(v127, 2uLL), v102));
    v141 = v138;
    v142 = vaddq_s16(v140, v139);
    v143 = vsubq_s32(v138, v541);
    *v139.i8 = vqmovn_u32(v143);
    v144 = vmlaq_s16(v142, v139, v126);
    v126.i64[0] = 0x1F0000001FLL;
    v126.i64[1] = 0x1F0000001FLL;
    v139.i64[0] = -1;
    v139.i64[1] = -1;
    v145 = vandq_s8(vsubq_s32(vshlq_s32(v139, vsubq_s32(v126, v537)), v539), v535);
    v146 = vsubq_s32(v118, v128);
    v147 = vsubq_s32(v118, v129);
    v148 = vsubq_s32(v118, v130);
    v149 = vaddq_s32(vaddq_s32(v147, v146), v148);
    *v149.i8 = vqmovn_u32(v149);
    v150 = vaddq_s16(v137, vshlq_n_s16(v149, 3uLL));
    v151 = vsubq_s32(v141, v551);
    v152 = vsubq_s32(v141, v543);
    v581 = vsubq_s32(v141, v580);
    v153 = vaddq_s32(vaddq_s32(v152, v151), v581);
    *v153.i8 = vqmovn_u32(v153);
    v154 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v144, vshlq_n_s16(v153, 3uLL)), v150)).i64[0], 0);
    v155 = vaddvq_s32(v154);
    if (a5)
    {
      v156 = a6 == 0;
    }

    else
    {
      v156 = 1;
    }

    v157 = v156;
    if (v155)
    {
      v158.i64[0] = 0x1F0000001FLL;
      v158.i64[1] = 0x1F0000001FLL;
      v159.i64[0] = -1;
      v159.i64[1] = -1;
      v160 = vandq_s8(vsubq_s32(vshlq_s32(v159, vsubq_s32(v158, v115)), v107), v120);
      v161 = vcltzq_s32(vshlq_n_s32(v154, 0x1FuLL));
      v578 = vbslq_s8(v161, v533, v578);
      v575 = vbslq_s8(v161, v531, v575);
      v570 = vbslq_s8(v161, v528, v570);
      v576 = vbslq_s8(v161, v71, v576);
      v577 = vbslq_s8(v161, v65, v577);
      v579 = vbslq_s8(v161, v69, v579);
      v162 = vbslq_s8(v161, v526, v571);
      v163 = vbslq_s8(v161, v72, v573);
      v563 = vbslq_s8(v161, v522, v563);
      v564 = vbslq_s8(v161, v525, v564);
      v562 = vbslq_s8(v161, v90, v562);
      v164 = vbslq_s8(v161, v520, v132);
      v165 = vbslq_s8(v161, v519, v555);
      v552 = vbslq_s8(v161, v136, v143);
      v540 = vbslq_s8(v161, v146, v151);
      v542 = vbslq_s8(v161, v147, v152);
      v581 = vbslq_s8(v161, v148, v581);
      v544 = vbslq_s8(v161, v160, v145);
      v141 = vbslq_s8(v161, v118, v141);
      v166 = vbslq_s8(v161, v518, v568);
      v145 = vandq_s8(vqtbl1q_s8(v6, xmmword_29D2F11B0), v161);
      v6 = vsubq_s32(v6, v145);
      v167 = vbslq_s8(v161, v100, v101);
      v168 = vbslq_s8(v161, v99, v557);
      v169 = vbslq_s8(v161, v66, v553);
      v170 = *a3;
      v171 = *(a3 + 16);
      v172 = *(a3 + 32);
      v173 = *(a3 + 48);
    }

    else
    {
      v552 = v143;
      v540 = v151;
      v542 = v152;
      v544 = v145;
      v167 = v101;
      v165 = v555;
      v168 = v557;
      v164 = v132;
      v162 = v571;
      v163 = v573;
      v169 = v553;
      v170 = *a3;
      v171 = *(a3 + 16);
      v172 = *(a3 + 32);
      v173 = *(a3 + 48);
      v166 = v568;
    }

    v176 = *(a3 + a4);
    v177 = *(a3 + a4 + 16);
    v178 = *(a3 + a4 + 32);
    if (v157)
    {
      v179 = v562;
      v180 = v575;
      v181 = v576;
      v182 = v577;
      v183 = v540;
      v184 = v542;
    }

    else
    {
      v572 = v162;
      v574 = v163;
      v554 = v169;
      v556 = v165;
      v534 = v164;
      v536 = v167;
      v558 = v168;
      v185 = vqtbl4q_s8(*v170.i8, xmmword_29D2F1160);
      v199 = vsubq_s32(v170, vqtbl4q_s8(*v170.i8, xmmword_29D2F10B0));
      v569 = v166;
      v529 = vsubq_s32(v173, v185);
      v532 = v141;
      v582.val[0] = *(a3 + 64);
      v582.val[1] = *(a3 + 80);
      v582.val[2] = *(a3 + 96);
      v582.val[3].i64[0] = *(a3 + 112);
      v582.val[3].i64[1] = v173.i64[1];
      v538 = vsubq_s32(v559, vqtbl4q_s8(v582, xmmword_29D2F10B0));
      v186 = *(a3 + a4 + 48);
      v187 = v173.i64[1];
      v188 = vqtbl4q_s8(*&v176, xmmword_29D2F10C0);
      v189 = vsubq_s32(*(a3 + a4), vqtbl4q_s8(*&v176, xmmword_29D2F1170));
      v583.val[0] = *(a3 + a4 + 64);
      v583.val[1] = *(a3 + a4 + 80);
      v583.val[2] = *(a3 + a4 + 96);
      v190 = vsubq_s32(*(a3 + a4 + 16), vqtbl4q_s8(*&v176, xmmword_29D2F1180));
      v191 = vsubq_s32(*(a3 + a4 + 32), vqtbl4q_s8(*&v176, xmmword_29D2F10B0));
      v192 = vsubq_s32(v550, vqtbl4q_s8(v582, xmmword_29D2F1100));
      v193 = vsubq_s32(v561, vqtbl4q_s8(v582, xmmword_29D2F1160));
      v194 = vsubq_s32(v560, vqtbl4q_s8(v582, xmmword_29D2F10F0));
      v582.val[3] = vsubq_s32(v549, v188);
      v583.val[3].i64[0] = *(a3 + a4 + 112);
      v583.val[3].i64[1] = v173.i64[1];
      v195 = vsubq_s32(v545, vqtbl4q_s8(v583, xmmword_29D2F1170));
      v196 = vsubq_s32(v546, vqtbl4q_s8(v583, xmmword_29D2F1120));
      v197 = vsubq_s32(v547, vqtbl4q_s8(v583, xmmword_29D2F10B0));
      v198.i64[0] = v529.i64[0];
      v198.i64[1] = v199.i64[0];
      v199.i64[0] = v529.i64[1];
      v200 = vsubq_s32(v548, vqtbl4q_s8(v583, xmmword_29D2F10C0));
      v527 = vsubq_s32(v172, v185);
      v530 = vsubq_s32(v171, vqtbl4q_s8(*v170.i8, xmmword_29D2F10C0));
      v201 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v199, v530), v527), v198), xmmword_29D2F11C0);
      v202 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v199, v530), v527), v198), xmmword_29D2F11C0);
      v203 = vpmaxq_s32(v201, v201);
      v204 = vpminq_s32(v202, v202);
      v205.i64[0] = 0x8000000080000000;
      v205.i64[1] = 0x8000000080000000;
      v206 = vmaxq_s32(v203, v205);
      v207 = vminq_s32(v204, v205);
      v208 = vzip1q_s32(v203, v204);
      v209.i64[0] = 0x2000000020;
      v209.i64[1] = 0x2000000020;
      v210 = vbicq_s8(vsubq_s32(v209, vclsq_s32(v208)), vceqzq_s32(v208));
      v211 = vpmaxq_s32(v210, v210);
      v212 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v538, v194), v193), v192), xmmword_29D2F11C0);
      v583.val[0] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v538, v194), v193), v192), xmmword_29D2F11C0);
      v213 = vpmaxq_s32(v212, v212);
      v583.val[0] = vpminq_s32(v583.val[0], v583.val[0]);
      v214 = vmaxq_s32(v206, v213);
      v215 = vminq_s32(v207, v583.val[0]);
      v216 = vzip1q_s32(v213, v583.val[0]);
      v217 = vbicq_s8(vsubq_s32(v209, vclsq_s32(v216)), vceqzq_s32(v216));
      v582.val[0] = vpmaxq_s32(v217, v217);
      v218 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v189, v190), v191), v582.val[3]);
      v583.val[1] = v191;
      v219 = v196;
      v523 = v583.val[1];
      v524 = v190;
      v521 = v582.val[3];
      v220 = vqtbl1q_s8(v218, xmmword_29D2F11C0);
      v583.val[0] = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v189, v190), v583.val[1]), v582.val[3]), xmmword_29D2F11C0);
      v221 = vpmaxq_s32(v220, v220);
      v583.val[0] = vpminq_s32(v583.val[0], v583.val[0]);
      v222 = vmaxq_s32(v214, v221);
      v223 = vminq_s32(v215, v583.val[0]);
      v224 = vzip1q_s32(v221, v583.val[0]);
      v225 = vbicq_s8(vsubq_s32(v209, vclsq_s32(v224)), vceqzq_s32(v224));
      v582.val[1] = vpmaxq_s32(v225, v225);
      v583.val[0] = vminq_s32(vminq_s32(vminq_s32(v195, v196), v197), v200);
      v226 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v195, v196), v197), v200), xmmword_29D2F11C0);
      v227 = vqtbl1q_s8(v583.val[0], xmmword_29D2F11C0);
      v228 = vpmaxq_s32(v226, v226);
      v229 = vpminq_s32(v227, v227);
      v230 = vmaxq_s32(v222, v228);
      v231 = vminq_s32(v223, v229);
      v232 = vzip1q_s32(v228, v229);
      v233 = vbicq_s8(vsubq_s32(v209, vclsq_s32(v232)), vceqzq_s32(v232));
      v582.val[2] = vpmaxq_s32(v233, v233);
      v234 = vmaxq_s32(vmaxq_s32(v211, v582.val[0]), vmaxq_s32(v582.val[1], v582.val[2]));
      v145 = vclzq_s32(vsubq_s32(v230, v231));
      v235 = vsubq_s32(v209, v145);
      v236 = vcgtq_s32(v234, v235);
      v237 = vminq_s32(v235, v234);
      v235.i64[0] = 0x900000009;
      v235.i64[1] = 0x900000009;
      v234.i64[0] = 0x200000002;
      v234.i64[1] = 0x200000002;
      v238 = v166;
      v582.val[3] = vorrq_s8(vandq_s8(vceqzq_s32(v237), v234), vsubq_s32(vandq_s8(v236, v235), vmvnq_s8(v236)));
      v230.i64[0] = 0xF0000000FLL;
      v230.i64[1] = 0xF0000000FLL;
      v239 = vmaxq_s32(vminq_s32(vsubq_s32(v237, v211), v230), 0);
      v240 = vmaxq_s32(vminq_s32(vsubq_s32(v237, v582.val[0]), v230), 0);
      v241 = vmaxq_s32(vminq_s32(vsubq_s32(v237, v582.val[1]), v230), 0);
      v242 = vmaxq_s32(vminq_s32(vsubq_s32(v237, v582.val[2]), v230), 0);
      v243 = vsubq_s32(v237, v239);
      v582.val[0].i64[0] = 0x400000004;
      v582.val[0].i64[1] = 0x400000004;
      v171 = vorrq_s8(vbicq_s8(v582.val[0], vceqq_s32(vaddq_s32(v242, v241), vnegq_s32(vaddq_s32(v239, v240)))), v582.val[3]);
      *v582.val[0].i8 = vqmovn_u32(v171);
      v582.val[1].i64[0] = 0x8000800080008;
      v582.val[1].i64[1] = 0x8000800080008;
      *v582.val[3].i8 = vqmovn_u32(v237);
      v583.val[2].i64[0] = 0x2000200020002;
      v583.val[2].i64[1] = 0x2000200020002;
      v583.val[3].i64[0] = 0x10001000100010;
      v583.val[3].i64[1] = 0x10001000100010;
      v244.i64[0] = 0x3000300030003;
      v244.i64[1] = 0x3000300030003;
      v582.val[2] = vaddq_s16(vbicq_s8(v582.val[3], vceqzq_s16(vandq_s8(v582.val[0], v582.val[1]))), vandq_s8(vshlq_n_s16(v582.val[0], 2uLL), v583.val[3]));
      v582.val[3].i64[0] = 0x20002000200020;
      v582.val[3].i64[1] = 0x20002000200020;
      v582.val[0] = vaddq_s16(v582.val[2], vandq_s8(vceqq_s16(vandq_s8(v582.val[0], v244), v583.val[2]), v582.val[3]));
      *v582.val[2].i8 = vqmovn_u32(v243);
      v245.i64[0] = 0x7000700070007;
      v245.i64[1] = 0x7000700070007;
      v582.val[0] = vmlaq_s16(v582.val[0], v582.val[2], v245);
      *v582.val[2].i8 = vqmovn_u32(v238);
      *v583.val[0].i8 = vqmovn_u32(v532);
      v583.val[2] = vandq_s8(vceqq_s16(vandq_s8(v582.val[2], v244), v583.val[2]), v582.val[3]);
      v583.val[0] = vaddq_s16(vaddq_s16(vbicq_s8(v583.val[0], vceqzq_s16(vandq_s8(v582.val[2], v582.val[1]))), vandq_s8(vshlq_n_s16(v582.val[2], 2uLL), v583.val[3])), v583.val[2]);
      *v583.val[2].i8 = vqmovn_u32(v552);
      v583.val[0] = vmlaq_s16(v583.val[0], v583.val[2], v245);
      v246 = vsubq_s32(v237, v240);
      v247 = vsubq_s32(v237, v241);
      v248 = vsubq_s32(v237, v242);
      v583.val[2] = vaddq_s32(vaddq_s32(v247, v246), v248);
      *v583.val[2].i8 = vqmovn_u32(v583.val[2]);
      v583.val[3] = vaddq_s32(vaddq_s32(v542, v540), v581);
      *v583.val[3].i8 = vqmovn_u32(v583.val[3]);
      v249 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v583.val[0], vshlq_n_s16(v583.val[3], 3uLL)), vaddq_s16(v582.val[0], vshlq_n_s16(v583.val[2], 3uLL)))).i64[0], 0);
      v180 = v575;
      v181 = v576;
      if (vaddvq_s32(v249))
      {
        v250.i64[0] = 0x1F0000001FLL;
        v250.i64[1] = 0x1F0000001FLL;
        v251 = vsubq_s32(v250, v145);
        v250.i64[0] = -1;
        v250.i64[1] = -1;
        v145 = vandq_s8(vsubq_s32(vshlq_s32(v250, v251), v231), v236);
        v252 = v197;
        v253 = vcltzq_s32(vshlq_n_s32(v249, 0x1FuLL));
        v6.i64[0] = vbslq_s8(v253, vextq_s8(v567, v567, 8uLL), v6).u64[0];
        v254 = v200;
        v578 = vbslq_s8(v253, v199, v578);
        v180 = vbslq_s8(v253, v530, v575);
        v570 = vbslq_s8(v253, v527, v570);
        v255 = vbslq_s8(v253, v198, v576);
        v182 = vbslq_s8(v253, v538, v577);
        v579 = vbslq_s8(v253, v194, v579);
        v162 = vbslq_s8(v253, v193, v572);
        v169 = vbslq_s8(v253, v192, v554);
        v163 = vbslq_s8(v253, v189, v574);
        v563 = vbslq_s8(v253, v524, v563);
        v564 = vbslq_s8(v253, v523, v564);
        v256 = vbslq_s8(v253, v521, v562);
        v164 = vbslq_s8(v253, v195, v534);
        v165 = vbslq_s8(v253, v219, v556);
        v257 = vbslq_s8(v253, v252, v558);
        v258 = vbslq_s8(v253, v254, v536);
        v552 = vbslq_s8(v253, v243, v552);
        v259 = vbslq_s8(v253, v246, v540);
        v184 = vbslq_s8(v253, v247, v542);
        v581 = vbslq_s8(v253, v248, v581);
        v544 = vbslq_s8(v253, v145, v544);
        v238 = vbslq_s8(v253, v171, v569);
        v141 = vbslq_s8(v253, v237, v532);
        v181 = v255;
        v168 = v257;
        v183 = v259;
        v167 = v258;
        v179 = v256;
      }

      else
      {
        v164 = v534;
        v167 = v536;
        v165 = v556;
        v171.i64[1] = v558.i64[1];
        v179 = v562;
        v141 = v532;
        v162 = v572;
        v163 = v574;
        v169 = v554;
        v182 = v577;
        v184 = v542;
        v168 = v558;
        v183 = v540;
      }

      v166 = v238;
      v176 = *(a3 + a4);
      v177 = *(a3 + a4 + 16);
      v178 = *(a3 + a4 + 32);
    }

    *v145.i8 = vqmovn_u32(v166);
    v260.i64[0] = 0x8000800080008;
    v260.i64[1] = 0x8000800080008;
    *v171.i8 = vqmovn_u32(v141);
    v261 = vbicq_s8(v171, vceqzq_s16(vandq_s8(v145, v260)));
    v262.i64[0] = 0x2000200020002;
    v262.i64[1] = 0x2000200020002;
    v263.i64[0] = 0x10001000100010;
    v263.i64[1] = 0x10001000100010;
    v264 = vandq_s8(vshlq_n_s16(v145, 2uLL), v263);
    v263.i64[0] = 0x3000300030003;
    v263.i64[1] = 0x3000300030003;
    v265 = vceqq_s16(vandq_s8(v145, v263), v262);
    v262.i64[0] = 0x20002000200020;
    v262.i64[1] = 0x20002000200020;
    v266 = vandq_s8(v265, v262);
    *v262.i8 = vqmovn_u32(v552);
    v263.i64[0] = 0x7000700070007;
    v263.i64[1] = 0x7000700070007;
    v267 = vaddq_s32(vaddq_s32(v184, v183), v581);
    *v267.i8 = vqmovn_u32(v267);
    v268 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v261, v264), v266), v262, v263), vshlq_n_s16(v267, 3uLL));
    if ((vpaddq_s16(v268, v268).i16[0] + 91) > 0x7FF)
    {
      *a1 = *a3;
      *(a1 + 16) = v565;
      *(a1 + 32) = v566;
      *(a1 + 48) = v567;
      *(a1 + 64) = v559;
      *(a1 + 80) = v560;
      *(a1 + 96) = v561;
      *(a1 + 112) = v550;
      *(a1 + 128) = v176;
      *(a1 + 144) = v177;
      *(a1 + 160) = v178;
      *(a1 + 176) = v549;
      v272 = (a1 + 192);
      v174 = -1;
      result = 256;
      *v272 = v545;
      v272[1] = v546;
      v272[2] = v547;
      v272[3] = v548;
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
      if (v141.i32[0])
      {
        v273 = ((v141.i16[0] << 10) + 31744) & 0x7C00;
      }

      else
      {
        v273 = 0;
      }

      if (v141.i32[1])
      {
        v274 = ((v141.i32[1] << 15) + 1015808) & 0xF8000;
      }

      else
      {
        v274 = 0;
      }

      v275 = v166.i8[0] & 0x1F | (32 * (v166.i8[4] & 0x1F)) | v273 | v274;
      v276 = (v275 << v270) | v271;
      if (v270 >= 0x2C)
      {
        *v269 = v276;
        v276 = v275 >> (-8 * (a1 & 7u));
      }

      v277 = (v270 + 20) & 0x3C;
      *(v269 + (((v270 + 20) >> 3) & 8)) = v276 | (v6.i64[0] << v277);
      v278 = v270 + 84;
      v279 = vsubq_s32(v141, v552);
      v280 = vsubq_s32(v141, v183);
      v281 = vsubq_s32(v141, v184);
      v282 = vsubq_s32(v141, v581);
      *v279.i8 = vqmovn_u32(v279);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u32(v280);
      *v280.i8 = vqmovn_u16(v280);
      *v281.i8 = vqmovn_u32(v281);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u32(v282);
      *v282.i8 = vqmovn_u16(v282);
      v279.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v279, v280), vzip1q_s8(v281, v282)), vzip1q_s16(vtrn2q_s8(v279, v280), vtrn2q_s8(v281, v282))).u64[0];
      v280.i64[0] = 0x400000004;
      v280.i64[1] = 0x400000004;
      v281.i64[0] = 0x404040404040404;
      v281.i64[1] = 0x404040404040404;
      v283 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v166, v280))), v281);
      v281.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v284 = vandq_s8(vshlq_u8(v282, vorrq_s8(v283, v281)), v279.u64[0]);
      v285 = vmovl_u8(*v283.i8);
      v286 = vpaddq_s16(vshlq_u16(vmovl_u8(*v284.i8), vtrn1q_s16(0, v285)), vmovl_high_u8(v284));
      v287 = vpaddq_s16(v285, vmovl_high_u8(v283));
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
      v298 = (v270 + 84) & 0x3C;
      v299 = (v296.i64[0] << v298) | (v6.i64[0] >> -v277);
      if ((v297.i64[0] + v298) >= 0x40)
      {
        *(v269 + ((v278 >> 3) & 0x18)) = v299;
        v299 = v296.i64[0] >> -v298;
      }

      v300 = vceqq_s32(v141, v552);
      v301 = v297.i64[0] + v278;
      v302 = v299 | (v296.i64[1] << v301);
      if ((v301 & 0x3F) + v297.i64[1] >= 0x40)
      {
        *(v269 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v296.i64[1] >> -(v301 & 0x3F);
        if ((v301 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = vandq_s8(v544, v300);
      v304 = v301 + v297.i64[1];
      v305.i64[0] = 0x800000008;
      v305.i64[1] = 0x800000008;
      v306 = vandq_s8(vextq_s8(vtstq_s32(v166, v305), 0, 8uLL), v141);
      v307.i64[0] = 0x1F0000001FLL;
      v307.i64[1] = 0x1F0000001FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u32(v308, vaddq_s32(v306, v307)), v544);
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
        *(v269 + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v315.i64[0] >> -(v304 & 0x3F);
        if ((v304 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = vaddq_s32(v303, v578);
      v319 = v316.i64[0] + v304;
      v320 = v317 | (v315.i64[1] << v319);
      if ((v319 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v269 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v315.i64[1] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = v319 + v316.i64[1];
      v322 = vextq_s8(0, v552, 8uLL);
      v323.i64[0] = 0x1F0000001FLL;
      v323.i64[1] = 0x1F0000001FLL;
      v324.i64[0] = -1;
      v324.i64[1] = -1;
      v325 = vandq_s8(vshlq_u32(v324, vaddq_s32(v322, v323)), v318);
      v326.i64[0] = v325.u32[0];
      v326.i64[1] = v325.u32[1];
      v327 = v326;
      v326.i64[0] = v325.u32[2];
      v326.i64[1] = v325.u32[3];
      v328 = v326;
      v326.i64[0] = v322.u32[2];
      v326.i64[1] = v322.u32[3];
      v329 = v326;
      v330 = vzip1q_s64(0, v326);
      v326.i64[0] = v322.u32[0];
      v326.i64[1] = v322.u32[1];
      v331 = vpaddq_s64(vshlq_u64(v327, 0), vshlq_u64(v328, v330));
      v332 = vpaddq_s64(v326, v329);
      v333 = (v331.i64[0] << v321) | v320;
      if (v332.i64[0] + (v321 & 0x3F) >= 0x40)
      {
        *(v269 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
        v333 = v331.i64[0] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v333 = 0;
        }
      }

      v334 = vaddq_s32(v180, v303);
      v335 = v332.i64[0] + v321;
      v336 = v333 | (v331.i64[1] << v335);
      if ((v335 & 0x3F) + v332.i64[1] >= 0x40)
      {
        *(v269 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v331.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335 + v332.i64[1];
      v338.i64[0] = 0x1F0000001FLL;
      v338.i64[1] = 0x1F0000001FLL;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vshlq_u32(v339, vaddq_s32(v552, v338));
      v341 = vandq_s8(v340, v334);
      v342.i64[0] = v341.u32[0];
      v342.i64[1] = v341.u32[1];
      v343 = v342;
      v342.i64[0] = v341.u32[2];
      v342.i64[1] = v341.u32[3];
      v344 = v342;
      v342.i64[0] = v552.u32[0];
      v342.i64[1] = v552.u32[1];
      v345 = v342;
      v342.i64[0] = v552.u32[2];
      v342.i64[1] = v552.u32[3];
      v346 = vzip1q_s64(0, v345);
      v347 = vzip1q_s64(0, v342);
      v348 = vpaddq_s64(vshlq_u64(v343, v346), vshlq_u64(v344, v347));
      v349 = vpaddq_s64(v345, v342);
      v350 = v349.i64[0];
      v351 = (v348.i64[0] << v337) | v336;
      if (v349.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v269 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        if ((v337 & 0x3F) != 0)
        {
          v351 = v348.i64[0] >> -(v337 & 0x3F);
        }

        else
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s32(v570, v303);
      v353 = v349.i64[1];
      v354 = v349.i64[0] + v337;
      v355 = v351 | (v348.i64[1] << v354);
      if ((v354 & 0x3F) + v349.i64[1] >= 0x40)
      {
        *(v269 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v348.i64[1] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = v354 + v349.i64[1];
      v357 = vandq_s8(v340, v352);
      v358.i64[0] = v357.u32[0];
      v358.i64[1] = v357.u32[1];
      v359 = v358;
      v358.i64[0] = v357.u32[2];
      v358.i64[1] = v357.u32[3];
      v360 = vpaddq_s64(vshlq_u64(v359, v346), vshlq_u64(v358, v347));
      v361 = (v360.i64[0] << v356) | v355;
      if (v349.i64[0] + (v356 & 0x3F) >= 0x40)
      {
        *(v269 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v360.i64[0] >> -(v356 & 0x3F);
        if ((v356 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = vceqq_s32(v141, v183);
      v363 = vaddq_s32(v181, v303);
      v364 = v350 + v356;
      v365 = v361 | (v360.i64[1] << v364);
      if ((v364 & 0x3F) + v353 >= 0x40)
      {
        *(v269 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v360.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = vandq_s8(v544, v362);
      v367 = v364 + v353;
      v368 = vandq_s8(v340, v363);
      v369.i64[0] = v368.u32[0];
      v369.i64[1] = v368.u32[1];
      v370 = v369;
      v369.i64[0] = v368.u32[2];
      v369.i64[1] = v368.u32[3];
      v371 = vpaddq_s64(vshlq_u64(v370, v346), vshlq_u64(v369, v347));
      v372 = (v371.i64[0] << v367) | v365;
      if (v350 + (v367 & 0x3F) >= 0x40)
      {
        *(v269 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v371.i64[0] >> -(v367 & 0x3F);
        if ((v367 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = vaddq_s32(v182, v366);
      v374 = v350 + v367;
      v375 = v372 | (v371.i64[1] << v374);
      if ((v374 & 0x3F) + v353 >= 0x40)
      {
        *(v269 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v371.i64[1] >> -(v374 & 0x3F);
        if ((v374 & 0x3F) == 0)
        {
          v375 = 0;
        }
      }

      v376 = v374 + v353;
      v377.i64[0] = 0x1F0000001FLL;
      v377.i64[1] = 0x1F0000001FLL;
      v378.i64[0] = -1;
      v378.i64[1] = -1;
      v379 = vshlq_u32(v378, vaddq_s32(v183, v377));
      v380 = vandq_s8(v379, v373);
      v381.i64[0] = v380.u32[0];
      v381.i64[1] = v380.u32[1];
      v382 = v381;
      v381.i64[0] = v380.u32[2];
      v381.i64[1] = v380.u32[3];
      v383 = v381;
      v381.i64[0] = v183.u32[0];
      v381.i64[1] = v183.u32[1];
      v384 = v381;
      v381.i64[0] = v183.u32[2];
      v381.i64[1] = v183.u32[3];
      v385 = vzip1q_s64(0, v384);
      v386 = vzip1q_s64(0, v381);
      v387 = vpaddq_s64(vshlq_u64(v382, v385), vshlq_u64(v383, v386));
      v388 = vpaddq_s64(v384, v381);
      v389 = v388.i64[0];
      v390 = (v387.i64[0] << v376) | v375;
      if (v388.i64[0] + (v376 & 0x3F) >= 0x40)
      {
        *(v269 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
        if ((v376 & 0x3F) != 0)
        {
          v390 = v387.i64[0] >> -(v376 & 0x3F);
        }

        else
        {
          v390 = 0;
        }
      }

      v391 = vaddq_s32(v579, v366);
      v392 = v388.i64[1];
      v393 = v388.i64[0] + v376;
      v394 = v390 | (v387.i64[1] << v393);
      if ((v393 & 0x3F) + v388.i64[1] >= 0x40)
      {
        *(v269 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        v394 = v387.i64[1] >> -(v393 & 0x3F);
        if ((v393 & 0x3F) == 0)
        {
          v394 = 0;
        }
      }

      v395 = v393 + v388.i64[1];
      v396 = vandq_s8(v379, v391);
      v397.i64[0] = v396.u32[0];
      v397.i64[1] = v396.u32[1];
      v398 = v397;
      v397.i64[0] = v396.u32[2];
      v397.i64[1] = v396.u32[3];
      v399 = vpaddq_s64(vshlq_u64(v398, v385), vshlq_u64(v397, v386));
      v400 = (v399.i64[0] << v395) | v394;
      if (v388.i64[0] + (v395 & 0x3F) >= 0x40)
      {
        *(v269 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
        v400 = v399.i64[0] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v400 = 0;
        }
      }

      v401 = vaddq_s32(v162, v366);
      v402 = v388.i64[0] + v395;
      v403 = v400 | (v399.i64[1] << v402);
      if ((v402 & 0x3F) + v388.i64[1] >= 0x40)
      {
        *(v269 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v403;
        v403 = v399.i64[1] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v403 = 0;
        }
      }

      v404 = v402 + v388.i64[1];
      v405 = vandq_s8(v379, v401);
      v406.i64[0] = v405.u32[0];
      v406.i64[1] = v405.u32[1];
      v407 = v406;
      v406.i64[0] = v405.u32[2];
      v406.i64[1] = v405.u32[3];
      v408 = vpaddq_s64(vshlq_u64(v407, v385), vshlq_u64(v406, v386));
      v409 = (v408.i64[0] << v404) | v403;
      if (v388.i64[0] + (v404 & 0x3F) >= 0x40)
      {
        *(v269 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
        v409 = v408.i64[0] >> -(v404 & 0x3F);
        if ((v404 & 0x3F) == 0)
        {
          v409 = 0;
        }
      }

      v410 = vceqq_s32(v141, v184);
      v411 = vaddq_s32(v169, v366);
      v412 = v389 + v404;
      v413 = v409 | (v408.i64[1] << v412);
      if ((v412 & 0x3F) + v392 >= 0x40)
      {
        *(v269 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
        v413 = v408.i64[1] >> -(v412 & 0x3F);
        if ((v412 & 0x3F) == 0)
        {
          v413 = 0;
        }
      }

      v414 = vandq_s8(v544, v410);
      v415 = v412 + v392;
      v416 = vandq_s8(v379, v411);
      v417.i64[0] = v416.u32[0];
      v417.i64[1] = v416.u32[1];
      v418 = v417;
      v417.i64[0] = v416.u32[2];
      v417.i64[1] = v416.u32[3];
      v419 = vpaddq_s64(vshlq_u64(v418, v385), vshlq_u64(v417, v386));
      v420 = (v419.i64[0] << v415) | v413;
      if (v389 + (v415 & 0x3F) >= 0x40)
      {
        *(v269 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v419.i64[0] >> -(v415 & 0x3F);
        if ((v415 & 0x3F) == 0)
        {
          v420 = 0;
        }
      }

      v421 = vaddq_s32(v163, v414);
      v422 = v389 + v415;
      v423 = v420 | (v419.i64[1] << v422);
      if ((v422 & 0x3F) + v392 >= 0x40)
      {
        *(v269 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
        v423 = v419.i64[1] >> -(v422 & 0x3F);
        if ((v422 & 0x3F) == 0)
        {
          v423 = 0;
        }
      }

      v424 = v422 + v392;
      v425.i64[0] = 0x1F0000001FLL;
      v425.i64[1] = 0x1F0000001FLL;
      v426.i64[0] = -1;
      v426.i64[1] = -1;
      v427 = vshlq_u32(v426, vaddq_s32(v184, v425));
      v428 = vandq_s8(v427, v421);
      v429.i64[0] = v428.u32[0];
      v429.i64[1] = v428.u32[1];
      v430 = v429;
      v429.i64[0] = v428.u32[2];
      v429.i64[1] = v428.u32[3];
      v431 = v429;
      v429.i64[0] = v184.u32[0];
      v429.i64[1] = v184.u32[1];
      v432 = v429;
      v429.i64[0] = v184.u32[2];
      v429.i64[1] = v184.u32[3];
      v433 = vzip1q_s64(0, v432);
      v434 = vzip1q_s64(0, v429);
      v435 = vpaddq_s64(vshlq_u64(v430, v433), vshlq_u64(v431, v434));
      v436 = vpaddq_s64(v432, v429);
      v437 = v436.i64[0];
      v438 = (v435.i64[0] << v424) | v423;
      if (v436.i64[0] + (v424 & 0x3F) >= 0x40)
      {
        *(v269 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
        if ((v424 & 0x3F) != 0)
        {
          v438 = v435.i64[0] >> -(v424 & 0x3F);
        }

        else
        {
          v438 = 0;
        }
      }

      v439 = vaddq_s32(v563, v414);
      v440 = v436.i64[1];
      v441 = v436.i64[0] + v424;
      v442 = v438 | (v435.i64[1] << v441);
      if ((v441 & 0x3F) + v436.i64[1] >= 0x40)
      {
        *(v269 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
        v442 = v435.i64[1] >> -(v441 & 0x3F);
        if ((v441 & 0x3F) == 0)
        {
          v442 = 0;
        }
      }

      v443 = v441 + v436.i64[1];
      v444 = vandq_s8(v427, v439);
      v445.i64[0] = v444.u32[0];
      v445.i64[1] = v444.u32[1];
      v446 = v445;
      v445.i64[0] = v444.u32[2];
      v445.i64[1] = v444.u32[3];
      v447 = vpaddq_s64(vshlq_u64(v446, v433), vshlq_u64(v445, v434));
      v448 = (v447.i64[0] << v443) | v442;
      if (v436.i64[0] + (v443 & 0x3F) >= 0x40)
      {
        *(v269 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
        v448 = v447.i64[0] >> -(v443 & 0x3F);
        if ((v443 & 0x3F) == 0)
        {
          v448 = 0;
        }
      }

      v449 = vaddq_s32(v564, v414);
      v450 = v436.i64[0] + v443;
      v451 = v448 | (v447.i64[1] << v450);
      if ((v450 & 0x3F) + v436.i64[1] >= 0x40)
      {
        *(v269 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v451;
        v451 = v447.i64[1] >> -(v450 & 0x3F);
        if ((v450 & 0x3F) == 0)
        {
          v451 = 0;
        }
      }

      v452 = v450 + v436.i64[1];
      v453 = vandq_s8(v427, v449);
      v454.i64[0] = v453.u32[0];
      v454.i64[1] = v453.u32[1];
      v455 = v454;
      v454.i64[0] = v453.u32[2];
      v454.i64[1] = v453.u32[3];
      v456 = vpaddq_s64(vshlq_u64(v455, v433), vshlq_u64(v454, v434));
      v457 = (v456.i64[0] << v452) | v451;
      if (v436.i64[0] + (v452 & 0x3F) >= 0x40)
      {
        *(v269 + ((v452 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
        v457 = v456.i64[0] >> -(v452 & 0x3F);
        if ((v452 & 0x3F) == 0)
        {
          v457 = 0;
        }
      }

      v458 = vceqq_s32(v141, v581);
      v459 = vaddq_s32(v179, v414);
      v460 = v437 + v452;
      v461 = v457 | (v456.i64[1] << v460);
      if ((v460 & 0x3F) + v440 >= 0x40)
      {
        *(v269 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v461;
        v461 = v456.i64[1] >> -(v460 & 0x3F);
        if ((v460 & 0x3F) == 0)
        {
          v461 = 0;
        }
      }

      v462 = vandq_s8(v544, v458);
      v463 = v460 + v440;
      v464 = vandq_s8(v427, v459);
      v465.i64[0] = v464.u32[0];
      v465.i64[1] = v464.u32[1];
      v466 = v465;
      v465.i64[0] = v464.u32[2];
      v465.i64[1] = v464.u32[3];
      v467 = vpaddq_s64(vshlq_u64(v466, v433), vshlq_u64(v465, v434));
      v468 = (v467.i64[0] << v463) | v461;
      if (v437 + (v463 & 0x3F) >= 0x40)
      {
        *(v269 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
        v468 = v467.i64[0] >> -(v463 & 0x3F);
        if ((v463 & 0x3F) == 0)
        {
          v468 = 0;
        }
      }

      v469 = vaddq_s32(v164, v462);
      v470 = v437 + v463;
      v471 = v468 | (v467.i64[1] << v470);
      if ((v470 & 0x3F) + v440 >= 0x40)
      {
        *(v269 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v471;
        v471 = v467.i64[1] >> -(v470 & 0x3F);
        if ((v470 & 0x3F) == 0)
        {
          v471 = 0;
        }
      }

      v472 = v470 + v440;
      v473.i64[0] = 0x1F0000001FLL;
      v473.i64[1] = 0x1F0000001FLL;
      v474.i64[0] = -1;
      v474.i64[1] = -1;
      v475 = vshlq_u32(v474, vaddq_s32(v581, v473));
      v476 = vandq_s8(v475, v469);
      v477.i64[0] = v476.u32[0];
      v477.i64[1] = v476.u32[1];
      v478 = v477;
      v477.i64[0] = v476.u32[2];
      v477.i64[1] = v476.u32[3];
      v479 = v477;
      v477.i64[0] = v581.u32[0];
      v477.i64[1] = v581.u32[1];
      v480 = v477;
      v477.i64[0] = v581.u32[2];
      v477.i64[1] = v581.u32[3];
      v481 = vzip1q_s64(0, v480);
      v482 = vzip1q_s64(0, v477);
      v483 = vpaddq_s64(vshlq_u64(v478, v481), vshlq_u64(v479, v482));
      v484 = vpaddq_s64(v480, v477);
      v485 = (v470 + v440) & 0x3F;
      v486 = (v483.i64[0] << (v470 + v440)) | v471;
      if ((v484.i64[0] + v485) > 0x3F)
      {
        *(v269 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
        if (v485)
        {
          v486 = v483.i64[0] >> -v485;
        }

        else
        {
          v486 = 0;
        }
      }

      v487 = vaddq_s32(v165, v462);
      v488 = v484.i64[0] + v472;
      v489 = v486 | (v483.i64[1] << v488);
      if ((v488 & 0x3F) + v484.i64[1] >= 0x40)
      {
        *(v269 + ((v488 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
        v489 = v483.i64[1] >> -(v488 & 0x3F);
        if ((v488 & 0x3F) == 0)
        {
          v489 = 0;
        }
      }

      v490 = v488 + v484.i64[1];
      v491 = vandq_s8(v475, v487);
      v492.i64[0] = v491.u32[0];
      v492.i64[1] = v491.u32[1];
      v493 = v492;
      v492.i64[0] = v491.u32[2];
      v492.i64[1] = v491.u32[3];
      v494 = vpaddq_s64(vshlq_u64(v493, v481), vshlq_u64(v492, v482));
      v495 = (v494.i64[0] << v490) | v489;
      if (v484.i64[0] + (v490 & 0x3F) >= 0x40)
      {
        *(v269 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v495;
        v495 = v494.i64[0] >> -(v490 & 0x3F);
        if ((v490 & 0x3F) == 0)
        {
          v495 = 0;
        }
      }

      v496 = vaddq_s32(v168, v462);
      v497 = v484.i64[0] + v490;
      v498 = v495 | (v494.i64[1] << v497);
      if ((v497 & 0x3F) + v484.i64[1] >= 0x40)
      {
        *(v269 + ((v497 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v498;
        v498 = v494.i64[1] >> -(v497 & 0x3F);
        if ((v497 & 0x3F) == 0)
        {
          v498 = 0;
        }
      }

      v499 = v497 + v484.i64[1];
      v500 = vandq_s8(v475, v496);
      v501.i64[0] = v500.u32[0];
      v501.i64[1] = v500.u32[1];
      v502 = v501;
      v501.i64[0] = v500.u32[2];
      v501.i64[1] = v500.u32[3];
      v503 = vpaddq_s64(vshlq_u64(v502, v481), vshlq_u64(v501, v482));
      v504 = (v503.i64[0] << v499) | v498;
      if (v484.i64[0] + (v499 & 0x3F) >= 0x40)
      {
        *(v269 + ((v499 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v504;
        v504 = v503.i64[0] >> -(v499 & 0x3F);
        if ((v499 & 0x3F) == 0)
        {
          v504 = 0;
        }
      }

      v505 = vaddq_s32(v167, v462);
      v506 = v484.i64[0] + v499;
      v507 = v504 | (v503.i64[1] << v506);
      if ((v506 & 0x3F) + v484.i64[1] >= 0x40)
      {
        *(v269 + ((v506 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v507;
        v507 = v503.i64[1] >> -(v506 & 0x3F);
        if ((v506 & 0x3F) == 0)
        {
          v507 = 0;
        }
      }

      v508 = v506 + v484.i64[1];
      v509 = vandq_s8(v475, v505);
      v510.i64[0] = v509.u32[0];
      v510.i64[1] = v509.u32[1];
      v511 = v510;
      v510.i64[0] = v509.u32[2];
      v510.i64[1] = v509.u32[3];
      v512 = vpaddq_s64(vshlq_u64(v511, v481), vshlq_u64(v510, v482));
      v513 = (v512.i64[0] << v508) | v507;
      if (v484.i64[0] + (v508 & 0x3F) >= 0x40)
      {
        *(v269 + ((v508 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
        v513 = v512.i64[0] >> -(v508 & 0x3F);
        if ((v508 & 0x3F) == 0)
        {
          v513 = 0;
        }
      }

      v514 = v484.i64[0] + v508;
      v515 = (v484.i64[0] + v508) & 0x3F;
      v516 = v513 | (v512.i64[1] << (v484.i8[0] + v508));
      if ((v515 + v484.i64[1]) >= 0x40)
      {
        *(v269 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
        v516 = v512.i64[1] >> -v515;
        if (!v515)
        {
          v516 = 0;
        }
      }

      v517 = v514 + v484.i64[1];
      if ((v517 & 0x3F) != 0)
      {
        *(v269 + ((v517 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
      }

      result = (v517 - v270 + 7) >> 3;
      v174 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = *a3;
    v174 = 7;
    result = 8;
  }

  *a2 = v174;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 128, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 128, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 256, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 384, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 256, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 384, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = v11;
  v14 = vdupq_lane_s64(*a3, 0);
  v580 = *(a3 + a4 + 16);
  v581 = vsubq_s32(*(a3 + a4), v14);
  v585 = vsubq_s32(*a3, v14);
  v586 = vsubq_s32(*(a3 + 16), v14);
  v587 = vsubq_s32(v580, v14);
  v15 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v585, v581), v586), v587), xmmword_29D2F11C0);
  v16 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v585, v581), v586), v587), xmmword_29D2F11C0);
  v17 = vpmaxq_s32(v15, v15);
  v18 = vpminq_s32(v16, v16);
  v19 = vzip1q_s32(v17, v18);
  v20.i64[0] = 0x2000000020;
  v20.i64[1] = 0x2000000020;
  v21 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v19)), vceqzq_s32(v19));
  v22 = v10;
  v23 = *v8;
  v24.i64[0] = 0x8000000080000000;
  v24.i64[1] = 0x8000000080000000;
  v25 = vmaxq_s32(v17, v24);
  v26 = vminq_s32(v18, v24);
  v27 = vsubq_s32(v9, v14);
  v28 = vsubq_s32(*v8, v14);
  v29 = vsubq_s32(v22, v14);
  v30 = vsubq_s32(v8[1], v14);
  v31 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v27, v28), v29), v30);
  v588 = v27;
  v589 = v28;
  v32 = vminq_s32(v27, v28);
  v33 = v29;
  v590 = v30;
  v34 = vqtbl1q_s8(v31, xmmword_29D2F11C0);
  v35 = vqtbl1q_s8(vminq_s32(vminq_s32(v32, v29), v30), xmmword_29D2F11C0);
  v36 = vpmaxq_s32(v34, v34);
  v37 = vpminq_s32(v35, v35);
  v38 = vmaxq_s32(v25, v36);
  v39 = vminq_s32(v26, v37);
  v40 = vzip1q_s32(v36, v37);
  v41 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v40)), vceqzq_s32(v40));
  v563 = *(a3 + 48);
  v42 = vsubq_s32(v563, v14);
  v567 = *(a3 + a4 + 48);
  v43 = vsubq_s32(v567, v14);
  v591 = vsubq_s32(*(a3 + 32), v14);
  v592 = vsubq_s32(*(a3 + a4 + 32), v14);
  v44 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v591, v592), v42), v43), xmmword_29D2F11C0);
  v45 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v591, v592), v42), v43), xmmword_29D2F11C0);
  v46 = vpmaxq_s32(v44, v44);
  v47 = vpminq_s32(v45, v45);
  v48 = vmaxq_s32(v38, v46);
  v49 = vminq_s32(v39, v47);
  v50 = vzip1q_s32(v46, v47);
  v51 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v50)), vceqzq_s32(v50));
  v52 = vsubq_s32(v13, v14);
  v568 = v13;
  v570 = v8[2];
  v571 = v12;
  v53 = vsubq_s32(v12, v14);
  v565 = v8[1];
  v566 = v8[3];
  v54 = vsubq_s32(v566, v14);
  v583 = vsubq_s32(v570, v14);
  v55 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v52, v583), v53), v54), xmmword_29D2F11C0);
  v56 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v52, v583), v53), v54), xmmword_29D2F11C0);
  v57 = vpmaxq_s32(v55, v55);
  v58 = vpminq_s32(v56, v56);
  v59 = vmaxq_s32(v48, v57);
  v60 = vminq_s32(v49, v58);
  v61 = vzip1q_s32(v57, v58);
  v62 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v61)), vceqzq_s32(v61));
  v63 = vpmaxq_s32(v21, v21);
  v64 = vpmaxq_s32(v41, v41);
  v65 = vpmaxq_s32(v51, v51);
  v66 = vpmaxq_s32(v62, v62);
  v67 = vmaxq_s32(vmaxq_s32(v63, v64), vmaxq_s32(v65, v66));
  v68 = vclzq_s32(vsubq_s32(v59, v60));
  v69 = vsubq_s32(v20, v68);
  v70 = vminq_s32(v69, v67);
  if (vmaxvq_s32(v70))
  {
    v593 = vcgtq_s32(v67, v69);
    v71.i64[0] = 0x800000008;
    v71.i64[1] = 0x800000008;
    v72.i64[0] = 0x300000003;
    v72.i64[1] = 0x300000003;
    v73 = vorrq_s8(vandq_s8(vceqzq_s32(v70), v72), vandq_s8(v593, v71));
    v74 = vsubq_s32(v70, v63);
    v75.i64[0] = 0xF0000000FLL;
    v75.i64[1] = 0xF0000000FLL;
    v555 = vmaxq_s32(vminq_s32(v74, v75), 0);
    v557 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v65), v75), 0);
    v559 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v64), v75), 0);
    v561 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v66), v75), 0);
    v72.i64[0] = 0x400000004;
    v72.i64[1] = 0x400000004;
    v572 = vorrq_s8(vbicq_s8(v72, vceqq_s32(vaddq_s32(v561, v557), vnegq_s32(vaddq_s32(v555, v559)))), v73);
    v553 = v60;
    v551 = v68;
    v546 = vsubq_s32(v581, vqtbl1q_s8(v581, xmmword_29D2F11B0));
    v76 = vsubq_s32(v588, vqtbl1q_s8(v588, xmmword_29D2F11B0));
    v77 = vsubq_s32(v589, vqtbl1q_s8(v589, xmmword_29D2F11B0));
    v578 = v33;
    v78 = vsubq_s32(v33, vqtbl1q_s8(v33, xmmword_29D2F11B0));
    v79 = vsubq_s32(v590, vqtbl1q_s8(v590, xmmword_29D2F11B0));
    v80 = vsubq_s32(v592, vqtbl1q_s8(v592, xmmword_29D2F11B0));
    v81 = vsubq_s32(v42, vqtbl1q_s8(v42, xmmword_29D2F11B0));
    v547 = vsubq_s32(v586, vqtbl1q_s8(v586, xmmword_29D2F11B0));
    v549 = vsubq_s32(v585, vqtbl1q_s8(v585, xmmword_29D2F11B0));
    v532 = vsubq_s32(v587, vqtbl1q_s8(v587, xmmword_29D2F11B0));
    v82 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v549, v546), v547), v532), xmmword_29D2F11C0);
    v83 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v549, v546), v547), v532), xmmword_29D2F11C0);
    v84 = vpmaxq_s32(v82, v82);
    v85 = vpminq_s32(v83, v83);
    v86.i64[0] = 0x8000000080000000;
    v86.i64[1] = 0x8000000080000000;
    v87 = vmaxq_s32(v84, v86);
    v88 = vminq_s32(v85, v86);
    v89 = vzip1q_s32(v84, v85);
    v90 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v89)), vceqzq_s32(v89));
    v91 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v76, v77), v78), v79);
    v535 = v76;
    v543 = v78;
    v544 = v77;
    v92 = vminq_s32(vminq_s32(v76, v77), v78);
    v93 = v79;
    v94 = vsubq_s32(v591, vqtbl1q_s8(v591, xmmword_29D2F11B0));
    v95 = vsubq_s32(v43, vqtbl1q_s8(v43, xmmword_29D2F11B0));
    v96 = vqtbl1q_s8(v91, xmmword_29D2F11C0);
    v97 = vqtbl1q_s8(vminq_s32(v92, v93), xmmword_29D2F11C0);
    v98 = vpmaxq_s32(v96, v96);
    v99 = vpminq_s32(v97, v97);
    v100 = vmaxq_s32(v87, v98);
    v101 = vminq_s32(v88, v99);
    v102 = vzip1q_s32(v98, v99);
    v103 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v102)), vceqzq_s32(v102));
    v104 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v94, v80), v81), v95), xmmword_29D2F11C0);
    v105 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v94, v80), v81), v95), xmmword_29D2F11C0);
    v106 = vpmaxq_s32(v104, v104);
    v107 = vpminq_s32(v105, v105);
    v108 = vmaxq_s32(v100, v106);
    v579 = v43;
    v109 = vminq_s32(v101, v107);
    v110 = vzip1q_s32(v106, v107);
    v111 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v110)), vceqzq_s32(v110));
    v574 = v53;
    v576 = v54;
    v539 = vsubq_s32(v583, vqtbl1q_s8(v583, xmmword_29D2F11B0));
    v541 = vsubq_s32(v52, vqtbl1q_s8(v52, xmmword_29D2F11B0));
    v536 = vsubq_s32(v54, vqtbl1q_s8(v54, xmmword_29D2F11B0));
    v537 = vsubq_s32(v53, vqtbl1q_s8(v53, xmmword_29D2F11B0));
    v112 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v541, v539), v537), v536), xmmword_29D2F11C0);
    v113 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v541, v539), v537), v536), xmmword_29D2F11C0);
    v114 = vpmaxq_s32(v112, v112);
    v115 = vpminq_s32(v113, v113);
    v116 = vmaxq_s32(v108, v114);
    v117 = vminq_s32(v109, v115);
    v118 = vzip1q_s32(v114, v115);
    v119 = vbicq_s8(vsubq_s32(v20, vclsq_s32(v118)), vceqzq_s32(v118));
    v120 = vpmaxq_s32(v90, v90);
    v121 = vpmaxq_s32(v103, v103);
    v122 = vpmaxq_s32(v111, v111);
    v123 = vpmaxq_s32(v119, v119);
    v124 = vmaxq_s32(vmaxq_s32(v120, v121), vmaxq_s32(v122, v123));
    v534 = v117;
    v125 = vclzq_s32(vsubq_s32(v116, v117));
    v126 = vsubq_s32(v20, v125);
    v127 = vcgtq_s32(v124, v126);
    v128 = vminq_s32(v126, v124);
    v126.i64[0] = 0x1000000010;
    v126.i64[1] = 0x1000000010;
    v129.i64[0] = 0x1800000018;
    v129.i64[1] = 0x1800000018;
    v130 = v127;
    v131 = vbslq_s8(v127, v129, v126);
    v127.i64[0] = 0x300000003;
    v127.i64[1] = 0x300000003;
    v132 = vorrq_s8(vandq_s8(vceqzq_s32(v128), v127), v131);
    v133 = vminq_s32(vsubq_s32(v128, v120), v75);
    v134 = vminq_s32(vsubq_s32(v128, v121), v75);
    v135 = vminq_s32(vsubq_s32(v128, v122), v75);
    v136 = vminq_s32(vsubq_s32(v128, v123), v75);
    v137 = vmaxq_s32(v133, 0);
    v138 = vmaxq_s32(v134, 0);
    v139 = vmaxq_s32(v135, 0);
    v140 = vmaxq_s32(v136, 0);
    v127.i64[0] = 0x400000004;
    v127.i64[1] = 0x400000004;
    v533 = vorrq_s8(vbicq_s8(v127, vceqq_s32(vaddq_s32(v140, v139), vnegq_s32(vaddq_s32(v137, v138)))), v132);
    *v132.i8 = vqmovn_u32(v533);
    v134.i64[0] = 0x8000800080008;
    v134.i64[1] = 0x8000800080008;
    *v121.i8 = vqmovn_u32(v128);
    v141.i64[0] = 0x10001000100010;
    v141.i64[1] = 0x10001000100010;
    v142 = vaddq_s16(vbicq_s8(v121, vceqzq_s16(vandq_s8(v132, v134))), vandq_s8(vshlq_n_s16(v132, 2uLL), v141));
    v121.i64[0] = 0x3000300030003;
    v121.i64[1] = 0x3000300030003;
    v110.i64[0] = 0x2000200020002;
    v110.i64[1] = 0x2000200020002;
    v101.i64[0] = 0x20002000200020;
    v101.i64[1] = 0x20002000200020;
    v143 = vsubq_s32(v128, v137);
    *v137.i8 = vqmovn_u32(v143);
    v106.i64[0] = 0x7000700070007;
    v106.i64[1] = 0x7000700070007;
    v144 = vmlaq_s16(vaddq_s16(v142, vandq_s8(vceqq_s16(vandq_s8(v132, v121), v110), v101)), v137, v106);
    *v137.i8 = vqmovn_u32(v572);
    *v142.i8 = vqmovn_u32(v70);
    v145 = vandq_s8(vceqq_s16(vandq_s8(v137, v121), v110), v101);
    v146 = vaddq_s16(vaddq_s16(vbicq_s8(v142, vceqzq_s16(vandq_s8(v137, v134))), vandq_s8(vshlq_n_s16(v137, 2uLL), v141)), v145);
    v147 = vsubq_s32(v70, v555);
    *v145.i8 = vqmovn_u32(v147);
    v148 = vmlaq_s16(v146, v145, v106);
    v145.i64[0] = 0x1F0000001FLL;
    v145.i64[1] = 0x1F0000001FLL;
    v101.i64[0] = -1;
    v101.i64[1] = -1;
    v149 = vandq_s8(vsubq_s32(vshlq_s32(v101, vsubq_s32(v145, v551)), v553), v593);
    v150 = vsubq_s32(v128, v138);
    v151 = vsubq_s32(v128, v139);
    v152 = vsubq_s32(v128, v140);
    v153 = vaddq_s32(vaddq_s32(v151, v150), v152);
    *v153.i8 = vqmovn_u32(v153);
    v154 = vaddq_s16(v144, vshlq_n_s16(v153, 3uLL));
    v155 = vsubq_s32(v70, v559);
    v156 = vsubq_s32(v70, v557);
    v594 = vsubq_s32(v70, v561);
    v157 = vaddq_s32(vaddq_s32(v156, v155), v594);
    *v157.i8 = vqmovn_u32(v157);
    v158 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v148, vshlq_n_s16(v157, 3uLL)), v154)).i64[0], 0);
    v159 = vaddvq_s32(v158);
    v161 = a5 < 4 || a6 < 2;
    v162 = v70;
    if (v159)
    {
      v163.i64[0] = 0x1F0000001FLL;
      v163.i64[1] = 0x1F0000001FLL;
      v164.i64[0] = -1;
      v164.i64[1] = -1;
      v165 = vandq_s8(vsubq_s32(vshlq_s32(v164, vsubq_s32(v163, v125)), v534), v130);
      v166 = vcltzq_s32(vshlq_n_s32(v158, 0x1FuLL));
      v585 = vbslq_s8(v166, v549, v585);
      v167 = vbslq_s8(v166, v546, v581);
      v586 = vbslq_s8(v166, v547, v586);
      v587 = vbslq_s8(v166, v532, v587);
      v588 = vbslq_s8(v166, v535, v588);
      v589 = vbslq_s8(v166, v544, v589);
      v578 = vbslq_s8(v166, v543, v578);
      v590 = vbslq_s8(v166, v93, v590);
      v591 = vbslq_s8(v166, v94, v591);
      v592 = vbslq_s8(v166, v80, v592);
      v42 = vbslq_s8(v166, v81, v42);
      v579 = vbslq_s8(v166, v95, v579);
      v558 = vbslq_s8(v166, v143, v147);
      v560 = vbslq_s8(v166, v150, v155);
      v562 = vbslq_s8(v166, v151, v156);
      v594 = vbslq_s8(v166, v152, v594);
      v149 = vbslq_s8(v166, v165, v149);
      v162 = vbslq_s8(v166, v128, v70);
      v168 = vbslq_s8(v166, v533, v572);
      v14 = vsubq_s32(v14, vandq_s8(vqtbl1q_s8(v14, xmmword_29D2F11B0), v166));
      v169 = vbslq_s8(v166, v536, v576);
      v170 = vbslq_s8(v166, v537, v574);
      v171 = vbslq_s8(v166, v539, v583);
      v172 = vbslq_s8(v166, v541, v52);
    }

    else
    {
      v558 = v147;
      v560 = v155;
      v562 = v156;
      v170 = v574;
      v169 = v576;
      v167 = v581;
      v171 = v583;
      v172 = v52;
      v168 = v572;
    }

    v174 = *a3;
    v175 = *(a3 + a4);
    v176 = *(a3 + 16);
    v177 = *(a3 + a4 + 16);
    v573 = v42;
    if (v161)
    {
      v179 = v589;
      v178 = v590;
      v180 = v578;
      v182 = v587;
      v181 = v588;
      v183 = v585;
      v184 = v586;
      v186 = v560;
      v185 = v562;
      v187 = v558;
    }

    else
    {
      v552 = v14;
      v582 = v167;
      v554 = v149;
      v556 = v172;
      v584 = v171;
      v575 = v170;
      v577 = v169;
      v550 = v162;
      v188 = vqtbl4q_s8(*v174.i8, xmmword_29D2F1160);
      v189 = vsubq_s32(*a3, vqtbl4q_s8(*v174.i8, xmmword_29D2F10B0));
      v190 = vsubq_s32(*(a3 + a4), vqtbl4q_s8(*v174.i8, xmmword_29D2F10C0));
      v191 = vsubq_s32(v580, v188);
      v192.i64[1] = v566.i64[1];
      v193 = v565.i64[0];
      v194 = *(a3 + a4 + 24);
      v195 = vsubq_s32(v9, vqtbl4q_s8(*v9.i8, xmmword_29D2F10B0));
      v196 = vsubq_s32(v23, vqtbl4q_s8(*v9.i8, xmmword_29D2F10F0));
      v548 = vsubq_s32(v22, vqtbl4q_s8(*v9.i8, xmmword_29D2F1160));
      v197 = *(a3 + 32);
      v198 = *(a3 + a4 + 32);
      v199 = *(a3 + 48);
      *&v177 = *(a3 + a4 + 48);
      *(&v177 + 1) = v194;
      v200 = vsubq_s32(v565, vqtbl4q_s8(*v9.i8, xmmword_29D2F1100));
      v201 = v168;
      v202 = vsubq_s32(v197, vqtbl4q_s8(*(&v177 - 3), xmmword_29D2F1170));
      v545 = vsubq_s32(v198, vqtbl4q_s8(*(&v177 - 3), xmmword_29D2F1180));
      v203 = vsubq_s32(v563, vqtbl4q_s8(*(&v177 - 3), xmmword_29D2F10B0));
      v204 = vsubq_s32(v567, vqtbl4q_s8(*(&v177 - 3), xmmword_29D2F10C0));
      v595.val[0] = v568;
      v595.val[1] = v570;
      v595.val[2] = v571;
      v595.val[3].i64[0] = v566.i64[0];
      v595.val[3].i64[1] = *(a3 + a4 + 24);
      v205 = vqtbl4q_s8(v595, xmmword_29D2F10C0);
      v206 = vsubq_s32(v568, vqtbl4q_s8(v595, xmmword_29D2F1170));
      v207 = vsubq_s32(v570, vqtbl4q_s8(v595, xmmword_29D2F1120));
      v208 = vsubq_s32(v571, vqtbl4q_s8(v595, xmmword_29D2F10B0));
      v176.i64[0] = v191.i64[0];
      v176.i64[1] = v189.i64[0];
      v189.i64[0] = v191.i64[1];
      v174 = vsubq_s32(v566, v205);
      v540 = vsubq_s32(*(a3 + 16), v188);
      v542 = v189;
      v209 = v190;
      v595.val[3] = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v189, v190), v540), v176), xmmword_29D2F11C0);
      v210 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v189, v190), v540), v176), xmmword_29D2F11C0);
      v595.val[3] = vpmaxq_s32(v595.val[3], v595.val[3]);
      v211 = vpminq_s32(v210, v210);
      v191.i64[0] = 0x8000000080000000;
      v191.i64[1] = 0x8000000080000000;
      v212 = vmaxq_s32(v595.val[3], v191);
      v188.i64[0] = 0x8000000080000000;
      v188.i64[1] = 0x8000000080000000;
      v213 = vminq_s32(v211, v188);
      v214 = vzip1q_s32(v595.val[3], v211);
      v595.val[3].i64[0] = 0x2000000020;
      v595.val[3].i64[1] = 0x2000000020;
      v215 = vbicq_s8(vsubq_s32(v595.val[3], vclsq_s32(v214)), vceqzq_s32(v214));
      v216 = vpmaxq_s32(v215, v215);
      v569 = v195;
      v538 = v200;
      v217 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v195, v196), v548), v200), xmmword_29D2F11C0);
      v218 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v195, v196), v548), v200), xmmword_29D2F11C0);
      v219 = vpmaxq_s32(v217, v217);
      v220 = vpminq_s32(v218, v218);
      v221 = vmaxq_s32(v212, v219);
      v222 = vminq_s32(v213, v220);
      v223 = vzip1q_s32(v219, v220);
      v224 = vbicq_s8(vsubq_s32(v595.val[3], vclsq_s32(v223)), vceqzq_s32(v223));
      v225 = vpmaxq_s32(v224, v224);
      v564 = v203;
      v226 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v202, v545), v203), v204), xmmword_29D2F11C0);
      v227 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v202, v545), v203), v204), xmmword_29D2F11C0);
      v228 = vpmaxq_s32(v226, v226);
      v229 = vpminq_s32(v227, v227);
      v230 = vmaxq_s32(v221, v228);
      v231 = vminq_s32(v222, v229);
      v232 = vzip1q_s32(v228, v229);
      v233 = vbicq_s8(vsubq_s32(v595.val[3], vclsq_s32(v232)), vceqzq_s32(v232));
      v234 = vpmaxq_s32(v233, v233);
      v235 = vqtbl1q_s8(vmaxq_s32(vmaxq_s32(vmaxq_s32(v206, v207), v208), v174), xmmword_29D2F11C0);
      v236 = vqtbl1q_s8(vminq_s32(vminq_s32(vminq_s32(v206, v207), v208), v174), xmmword_29D2F11C0);
      v237 = vpmaxq_s32(v235, v235);
      v238 = vpminq_s32(v236, v236);
      v239 = vmaxq_s32(v230, v237);
      v240 = vminq_s32(v231, v238);
      v241 = vzip1q_s32(v237, v238);
      v242 = vbicq_s8(vsubq_s32(v595.val[3], vclsq_s32(v241)), vceqzq_s32(v241));
      v243 = vpmaxq_s32(v242, v242);
      v244 = vmaxq_s32(vmaxq_s32(v216, v225), vmaxq_s32(v234, v243));
      v245 = vclzq_s32(vsubq_s32(v239, v240));
      v595.val[3] = vsubq_s32(v595.val[3], v245);
      v246 = vcgtq_s32(v244, v595.val[3]);
      v247 = vminq_s32(v595.val[3], v244);
      v244.i64[0] = 0x900000009;
      v244.i64[1] = 0x900000009;
      v248.i64[0] = 0x200000002;
      v248.i64[1] = 0x200000002;
      v249 = vorrq_s8(vandq_s8(vceqzq_s32(v247), v248), vsubq_s32(vandq_s8(v246, v244), vmvnq_s8(v246)));
      v248.i64[0] = 0xF0000000FLL;
      v248.i64[1] = 0xF0000000FLL;
      v250 = vmaxq_s32(vminq_s32(vsubq_s32(v247, v216), v248), 0);
      v251 = vmaxq_s32(vminq_s32(vsubq_s32(v247, v225), v248), 0);
      v252 = vmaxq_s32(vminq_s32(vsubq_s32(v247, v234), v248), 0);
      v253 = vmaxq_s32(vminq_s32(vsubq_s32(v247, v243), v248), 0);
      v254 = vsubq_s32(v247, v250);
      v243.i64[0] = 0x400000004;
      v243.i64[1] = 0x400000004;
      v255 = vorrq_s8(vbicq_s8(v243, vceqq_s32(vaddq_s32(v253, v252), vnegq_s32(vaddq_s32(v250, v251)))), v249);
      *v243.i8 = vqmovn_u32(v255);
      v249.i64[0] = 0x8000800080008;
      v249.i64[1] = 0x8000800080008;
      *v250.i8 = vqmovn_u32(v247);
      v256.i64[0] = 0x2000200020002;
      v256.i64[1] = 0x2000200020002;
      v257.i64[0] = 0x10001000100010;
      v257.i64[1] = 0x10001000100010;
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v258 = vaddq_s16(vbicq_s8(v250, vceqzq_s16(vandq_s8(v243, v249))), vandq_s8(vshlq_n_s16(v243, 2uLL), v257));
      v250.i64[0] = 0x20002000200020;
      v250.i64[1] = 0x20002000200020;
      v259 = vaddq_s16(v258, vandq_s8(vceqq_s16(vandq_s8(v243, v200), v256), v250));
      *v258.i8 = vqmovn_u32(v254);
      v203.i64[0] = 0x7000700070007;
      v203.i64[1] = 0x7000700070007;
      v260 = vmlaq_s16(v259, v258, v203);
      *v258.i8 = vqmovn_u32(v201);
      *v192.i8 = vqmovn_u32(v550);
      v261 = vbicq_s8(v192, vceqzq_s16(vandq_s8(v258, v249)));
      v262 = vaddq_s16(vaddq_s16(v261, vandq_s8(vshlq_n_s16(v258, 2uLL), v257)), vandq_s8(vceqq_s16(vandq_s8(v258, v200), v256), v250));
      v187 = v558;
      v186 = v560;
      *v261.i8 = vqmovn_u32(v558);
      v263 = vmlaq_s16(v262, v261, v203);
      v264 = vsubq_s32(v247, v251);
      v265 = vsubq_s32(v247, v252);
      v266 = vsubq_s32(v247, v253);
      v267 = vaddq_s32(vaddq_s32(v265, v264), v266);
      *v267.i8 = vqmovn_u32(v267);
      v185 = v562;
      v268 = vaddq_s32(vaddq_s32(v562, v560), v594);
      *v268.i8 = vqmovn_u32(v268);
      v269 = vdupq_lane_s64(vmovl_s16(*&vcgtq_s16(vaddq_s16(v263, vshlq_n_s16(v268, 3uLL)), vaddq_s16(v260, vshlq_n_s16(v267, 3uLL)))).i64[0], 0);
      if (vaddvq_s32(v269))
      {
        v270.i64[0] = 0x1F0000001FLL;
        v270.i64[1] = 0x1F0000001FLL;
        v271 = vsubq_s32(v270, v245);
        v270.i64[0] = -1;
        v270.i64[1] = -1;
        v272 = vandq_s8(vsubq_s32(vshlq_s32(v270, v271), v240), v246);
        v273 = vcltzq_s32(vshlq_n_s32(v269, 0x1FuLL));
        v14.i64[0] = vbslq_s8(v273, vextq_s8(v580, v580, 8uLL), v552).u64[0];
        v183 = vbslq_s8(v273, v542, v585);
        v167 = vbslq_s8(v273, v209, v582);
        v184 = vbslq_s8(v273, v540, v586);
        v182 = vbslq_s8(v273, v176, v587);
        v181 = vbslq_s8(v273, v569, v588);
        v179 = vbslq_s8(v273, v196, v589);
        v180 = vbslq_s8(v273, v548, v578);
        v178 = vbslq_s8(v273, v538, v590);
        v591 = vbslq_s8(v273, v202, v591);
        v592 = vbslq_s8(v273, v545, v592);
        v573 = vbslq_s8(v273, v564, v573);
        v579 = vbslq_s8(v273, v204, v579);
        v274 = vbslq_s8(v273, v206, v556);
        v176 = vbslq_s8(v273, v207, v584);
        v170 = vbslq_s8(v273, v208, v575);
        v169 = vbslq_s8(v273, v174, v577);
        v187 = vbslq_s8(v273, v254, v558);
        v171 = v176;
        v186 = vbslq_s8(v273, v264, v560);
        v172 = v274;
        v185 = vbslq_s8(v273, v265, v562);
        v594 = vbslq_s8(v273, v266, v594);
        v174.i64[1] = v554.i64[1];
        v149 = vbslq_s8(v273, v272, v554);
        v162 = vbslq_s8(v273, v247, v550);
        v168 = vbslq_s8(v273, v255, v201);
      }

      else
      {
        v170 = v575;
        v169 = v577;
        v167 = v582;
        v171 = v584;
        v149 = v554;
        v172 = v556;
        v162 = v550;
        v179 = v589;
        v178 = v590;
        v180 = v578;
        v182 = v587;
        v181 = v588;
        v183 = v585;
        v184 = v586;
        v168 = v201;
        v14.i64[0] = v552.i64[0];
      }
    }

    *v174.i8 = vqmovn_u32(v168);
    v275.i64[0] = 0x8000800080008;
    v275.i64[1] = 0x8000800080008;
    *v176.i8 = vqmovn_u32(v162);
    v276 = vbicq_s8(v176, vceqzq_s16(vandq_s8(v174, v275)));
    v277.i64[0] = 0x2000200020002;
    v277.i64[1] = 0x2000200020002;
    v278.i64[0] = 0x10001000100010;
    v278.i64[1] = 0x10001000100010;
    v279 = vandq_s8(vshlq_n_s16(v174, 2uLL), v278);
    v278.i64[0] = 0x3000300030003;
    v278.i64[1] = 0x3000300030003;
    v280 = vceqq_s16(vandq_s8(v174, v278), v277);
    v277.i64[0] = 0x20002000200020;
    v277.i64[1] = 0x20002000200020;
    v281 = vandq_s8(v280, v277);
    *v277.i8 = vqmovn_u32(v187);
    v278.i64[0] = 0x7000700070007;
    v278.i64[1] = 0x7000700070007;
    v282 = vaddq_s32(vaddq_s32(v185, v186), v594);
    *v282.i8 = vqmovn_u32(v282);
    v283 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v276, v279), v281), v277, v278), vshlq_n_s16(v282, 3uLL));
    if ((vpaddq_s16(v283, v283).i16[0] - 941) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v284 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v285 = 8 * (a1 & 7);
      if (v285)
      {
        v286 = *v284 & ~(-1 << v285);
      }

      else
      {
        v286 = 0;
      }

      *a2 = 0;
      if (v162.i32[0])
      {
        v287 = ((v162.i16[0] << 10) + 31744) & 0x7C00;
      }

      else
      {
        v287 = 0;
      }

      if (v162.i32[1])
      {
        v288 = ((v162.i32[1] << 15) + 1015808) & 0xF8000;
      }

      else
      {
        v288 = 0;
      }

      v289 = v168.i8[0] & 0x1F | (32 * (v168.i8[4] & 0x1F)) | v287 | v288;
      v290 = (v289 << v285) | v286;
      if (v285 >= 0x2C)
      {
        *v284 = v290;
        v290 = v289 >> (-8 * (a1 & 7u));
      }

      v291 = (v285 + 20) & 0x3C;
      *(v284 + (((v285 + 20) >> 3) & 8)) = v290 | (v14.i64[0] << v291);
      v292 = v285 + 84;
      v293 = vsubq_s32(v162, v187);
      v294 = vsubq_s32(v162, v186);
      v295 = vsubq_s32(v162, v185);
      v296 = vsubq_s32(v162, v594);
      *v293.i8 = vqmovn_u32(v293);
      *v293.i8 = vqmovn_u16(v293);
      *v294.i8 = vqmovn_u32(v294);
      *v294.i8 = vqmovn_u16(v294);
      *v295.i8 = vqmovn_u32(v295);
      *v295.i8 = vqmovn_u16(v295);
      *v296.i8 = vqmovn_u32(v296);
      *v296.i8 = vqmovn_u16(v296);
      v293.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v293, v294), vzip1q_s8(v295, v296)), vzip1q_s16(vtrn2q_s8(v293, v294), vtrn2q_s8(v295, v296))).u64[0];
      v294.i64[0] = 0x400000004;
      v294.i64[1] = 0x400000004;
      v295.i64[0] = 0x404040404040404;
      v295.i64[1] = 0x404040404040404;
      v297 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vceqzq_s32(vandq_s8(v168, v294))), v295);
      v295.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v295.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v296.i64[0] = -1;
      v296.i64[1] = -1;
      v298 = vandq_s8(vshlq_u8(v296, vorrq_s8(v297, v295)), v293.u64[0]);
      v299 = vmovl_u8(*v297.i8);
      v300 = vpaddq_s16(vshlq_u16(vmovl_u8(*v298.i8), vtrn1q_s16(0, v299)), vmovl_high_u8(v298));
      v301 = vpaddq_s16(v299, vmovl_high_u8(v297));
      v302 = vmovl_u16(*v301.i8);
      v303 = vmovl_high_u16(v301);
      v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v300.i8), vtrn1q_s32(0, v302)), vshlq_u32(vmovl_high_u16(v300), vtrn1q_s32(0, v303)));
      v305 = vpaddq_s32(v302, v303);
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v285 + 84) & 0x3C;
      v313 = (v310.i64[0] << v312) | (v14.i64[0] >> -v291);
      if ((v311.i64[0] + v312) >= 0x40)
      {
        *(v284 + ((v292 >> 3) & 0x18)) = v313;
        v313 = v310.i64[0] >> -v312;
      }

      v314 = vceqq_s32(v162, v187);
      v315 = v311.i64[0] + v292;
      v316 = v313 | (v310.i64[1] << v315);
      if ((v315 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v284 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
        v316 = v310.i64[1] >> -(v315 & 0x3F);
        if ((v315 & 0x3F) == 0)
        {
          v316 = 0;
        }
      }

      v317 = vandq_s8(v149, v314);
      v318 = v315 + v311.i64[1];
      v319.i64[0] = 0x800000008;
      v319.i64[1] = 0x800000008;
      v320 = vandq_s8(vextq_s8(vtstq_s32(v168, v319), 0, 8uLL), v162);
      v321.i64[0] = 0x1F0000001FLL;
      v321.i64[1] = 0x1F0000001FLL;
      v322.i64[0] = -1;
      v322.i64[1] = -1;
      v323 = vandq_s8(vshlq_u32(v322, vaddq_s32(v320, v321)), v149);
      v324.i64[0] = v323.u32[0];
      v324.i64[1] = v323.u32[1];
      v325 = v324;
      v324.i64[0] = v323.u32[2];
      v324.i64[1] = v323.u32[3];
      v326 = v324;
      v324.i64[0] = v320.u32[0];
      v324.i64[1] = v320.u32[1];
      v327 = v324;
      v328 = vzip1q_s64(0, v324);
      v324.i64[0] = v320.u32[2];
      v324.i64[1] = v320.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v325, v328), vshlq_u64(v326, 0));
      v330 = vpaddq_s64(v327, v324);
      v331 = (v329.i64[0] << v318) | v316;
      if (v330.i64[0] + (v318 & 0x3F) >= 0x40)
      {
        *(v284 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v318 & 0x3F);
        if ((v318 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vaddq_s32(v317, v183);
      v333 = v330.i64[0] + v318;
      v334 = v331 | (v329.i64[1] << v333);
      if ((v333 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v284 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v329.i64[1] >> -(v333 & 0x3F);
        if ((v333 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = v333 + v330.i64[1];
      v336 = vextq_s8(0, v187, 8uLL);
      v337.i64[0] = 0x1F0000001FLL;
      v337.i64[1] = 0x1F0000001FLL;
      v338.i64[0] = -1;
      v338.i64[1] = -1;
      v339 = vandq_s8(vshlq_u32(v338, vaddq_s32(v336, v337)), v332);
      v340.i64[0] = v339.u32[0];
      v340.i64[1] = v339.u32[1];
      v341 = v340;
      v340.i64[0] = v339.u32[2];
      v340.i64[1] = v339.u32[3];
      v342 = v340;
      v340.i64[0] = v336.u32[2];
      v340.i64[1] = v336.u32[3];
      v343 = v340;
      v344 = vzip1q_s64(0, v340);
      v340.i64[0] = v336.u32[0];
      v340.i64[1] = v336.u32[1];
      v345 = vpaddq_s64(vshlq_u64(v341, 0), vshlq_u64(v342, v344));
      v346 = vpaddq_s64(v340, v343);
      v347 = (v345.i64[0] << v335) | v334;
      if (v346.i64[0] + (v335 & 0x3F) >= 0x40)
      {
        *(v284 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v345.i64[0] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = vaddq_s32(v167, v317);
      v349 = v346.i64[0] + v335;
      v350 = v347 | (v345.i64[1] << v349);
      if ((v349 & 0x3F) + v346.i64[1] >= 0x40)
      {
        *(v284 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
        v350 = v345.i64[1] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v350 = 0;
        }
      }

      v351 = v349 + v346.i64[1];
      v352.i64[0] = 0x1F0000001FLL;
      v352.i64[1] = 0x1F0000001FLL;
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = vshlq_u32(v353, vaddq_s32(v187, v352));
      v355 = vandq_s8(v354, v348);
      v356.i64[0] = v355.u32[0];
      v356.i64[1] = v355.u32[1];
      v357 = v356;
      v356.i64[0] = v355.u32[2];
      v356.i64[1] = v355.u32[3];
      v358 = v356;
      v356.i64[0] = v187.u32[0];
      v356.i64[1] = v187.u32[1];
      v359 = v356;
      v356.i64[0] = v187.u32[2];
      v356.i64[1] = v187.u32[3];
      v360 = vzip1q_s64(0, v359);
      v361 = vzip1q_s64(0, v356);
      v362 = vpaddq_s64(vshlq_u64(v357, v360), vshlq_u64(v358, v361));
      v363 = vpaddq_s64(v359, v356);
      v364 = v363.i64[0];
      v365 = (v362.i64[0] << v351) | v350;
      if (v363.i64[0] + (v351 & 0x3F) >= 0x40)
      {
        *(v284 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        if ((v351 & 0x3F) != 0)
        {
          v365 = v362.i64[0] >> -(v351 & 0x3F);
        }

        else
        {
          v365 = 0;
        }
      }

      v366 = vaddq_s32(v184, v317);
      v367 = v363.i64[1];
      v368 = v363.i64[0] + v351;
      v369 = v365 | (v362.i64[1] << v368);
      if ((v368 & 0x3F) + v363.i64[1] >= 0x40)
      {
        *(v284 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
        v369 = v362.i64[1] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v369 = 0;
        }
      }

      v370 = v368 + v363.i64[1];
      v371 = vandq_s8(v354, v366);
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v373 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v374 = vpaddq_s64(vshlq_u64(v373, v360), vshlq_u64(v372, v361));
      v375 = (v374.i64[0] << v370) | v369;
      if (v363.i64[0] + (v370 & 0x3F) >= 0x40)
      {
        *(v284 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v374.i64[0] >> -(v370 & 0x3F);
        if ((v370 & 0x3F) == 0)
        {
          v375 = 0;
        }
      }

      v376 = vceqq_s32(v162, v186);
      v377 = vaddq_s32(v182, v317);
      v378 = v364 + v370;
      v379 = v375 | (v374.i64[1] << v378);
      if ((v378 & 0x3F) + v367 >= 0x40)
      {
        *(v284 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
        v379 = v374.i64[1] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v379 = 0;
        }
      }

      v380 = vandq_s8(v149, v376);
      v381 = v378 + v367;
      v382 = vandq_s8(v354, v377);
      v383.i64[0] = v382.u32[0];
      v383.i64[1] = v382.u32[1];
      v384 = v383;
      v383.i64[0] = v382.u32[2];
      v383.i64[1] = v382.u32[3];
      v385 = vpaddq_s64(vshlq_u64(v384, v360), vshlq_u64(v383, v361));
      v386 = (v385.i64[0] << v381) | v379;
      if (v364 + (v381 & 0x3F) >= 0x40)
      {
        *(v284 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
        v386 = v385.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v386 = 0;
        }
      }

      v387 = vaddq_s32(v181, v380);
      v388 = v364 + v381;
      v389 = v386 | (v385.i64[1] << v388);
      if ((v388 & 0x3F) + v367 >= 0x40)
      {
        *(v284 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v385.i64[1] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388 + v367;
      v391.i64[0] = 0x1F0000001FLL;
      v391.i64[1] = 0x1F0000001FLL;
      v392.i64[0] = -1;
      v392.i64[1] = -1;
      v393 = vshlq_u32(v392, vaddq_s32(v186, v391));
      v394 = vandq_s8(v393, v387);
      v395.i64[0] = v394.u32[0];
      v395.i64[1] = v394.u32[1];
      v396 = v395;
      v395.i64[0] = v394.u32[2];
      v395.i64[1] = v394.u32[3];
      v397 = v395;
      v395.i64[0] = v186.u32[0];
      v395.i64[1] = v186.u32[1];
      v398 = v395;
      v395.i64[0] = v186.u32[2];
      v395.i64[1] = v186.u32[3];
      v399 = vzip1q_s64(0, v398);
      v400 = vzip1q_s64(0, v395);
      v401 = vpaddq_s64(vshlq_u64(v396, v399), vshlq_u64(v397, v400));
      v402 = vpaddq_s64(v398, v395);
      v403 = v402.i64[0];
      v404 = (v401.i64[0] << v390) | v389;
      if (v402.i64[0] + (v390 & 0x3F) >= 0x40)
      {
        *(v284 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        if ((v390 & 0x3F) != 0)
        {
          v404 = v401.i64[0] >> -(v390 & 0x3F);
        }

        else
        {
          v404 = 0;
        }
      }

      v405 = vaddq_s32(v179, v380);
      v406 = v402.i64[1];
      v407 = v402.i64[0] + v390;
      v408 = v404 | (v401.i64[1] << v407);
      if ((v407 & 0x3F) + v402.i64[1] >= 0x40)
      {
        *(v284 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v408;
        v408 = v401.i64[1] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v408 = 0;
        }
      }

      v409 = v407 + v402.i64[1];
      v410 = vandq_s8(v393, v405);
      v411.i64[0] = v410.u32[0];
      v411.i64[1] = v410.u32[1];
      v412 = v411;
      v411.i64[0] = v410.u32[2];
      v411.i64[1] = v410.u32[3];
      v413 = vpaddq_s64(vshlq_u64(v412, v399), vshlq_u64(v411, v400));
      v414 = (v413.i64[0] << v409) | v408;
      if (v402.i64[0] + (v409 & 0x3F) >= 0x40)
      {
        *(v284 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
        v414 = v413.i64[0] >> -(v409 & 0x3F);
        if ((v409 & 0x3F) == 0)
        {
          v414 = 0;
        }
      }

      v415 = vaddq_s32(v180, v380);
      v416 = v402.i64[0] + v409;
      v417 = v414 | (v413.i64[1] << v416);
      if ((v416 & 0x3F) + v402.i64[1] >= 0x40)
      {
        *(v284 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
        v417 = v413.i64[1] >> -(v416 & 0x3F);
        if ((v416 & 0x3F) == 0)
        {
          v417 = 0;
        }
      }

      v418 = v416 + v402.i64[1];
      v419 = vandq_s8(v393, v415);
      v420.i64[0] = v419.u32[0];
      v420.i64[1] = v419.u32[1];
      v421 = v420;
      v420.i64[0] = v419.u32[2];
      v420.i64[1] = v419.u32[3];
      v422 = vpaddq_s64(vshlq_u64(v421, v399), vshlq_u64(v420, v400));
      v423 = (v422.i64[0] << v418) | v417;
      if (v402.i64[0] + (v418 & 0x3F) >= 0x40)
      {
        *(v284 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
        v423 = v422.i64[0] >> -(v418 & 0x3F);
        if ((v418 & 0x3F) == 0)
        {
          v423 = 0;
        }
      }

      v424 = vceqq_s32(v162, v185);
      v425 = vaddq_s32(v178, v380);
      v426 = v403 + v418;
      v427 = v423 | (v422.i64[1] << v426);
      if ((v426 & 0x3F) + v406 >= 0x40)
      {
        *(v284 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v422.i64[1] >> -(v426 & 0x3F);
        if ((v426 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = vandq_s8(v149, v424);
      v429 = v426 + v406;
      v430 = vandq_s8(v393, v425);
      v431.i64[0] = v430.u32[0];
      v431.i64[1] = v430.u32[1];
      v432 = v431;
      v431.i64[0] = v430.u32[2];
      v431.i64[1] = v430.u32[3];
      v433 = vpaddq_s64(vshlq_u64(v432, v399), vshlq_u64(v431, v400));
      v434 = (v433.i64[0] << v429) | v427;
      if (v403 + (v429 & 0x3F) >= 0x40)
      {
        *(v284 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
        v434 = v433.i64[0] >> -(v429 & 0x3F);
        if ((v429 & 0x3F) == 0)
        {
          v434 = 0;
        }
      }

      v435 = vaddq_s32(v591, v428);
      v436 = v403 + v429;
      v437 = v434 | (v433.i64[1] << v436);
      if ((v436 & 0x3F) + v406 >= 0x40)
      {
        *(v284 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
        v437 = v433.i64[1] >> -(v436 & 0x3F);
        if ((v436 & 0x3F) == 0)
        {
          v437 = 0;
        }
      }

      v438 = v436 + v406;
      v439.i64[0] = 0x1F0000001FLL;
      v439.i64[1] = 0x1F0000001FLL;
      v440.i64[0] = -1;
      v440.i64[1] = -1;
      v441 = vshlq_u32(v440, vaddq_s32(v185, v439));
      v442 = vandq_s8(v441, v435);
      v443.i64[0] = v442.u32[0];
      v443.i64[1] = v442.u32[1];
      v444 = v443;
      v443.i64[0] = v442.u32[2];
      v443.i64[1] = v442.u32[3];
      v445 = v443;
      v443.i64[0] = v185.u32[0];
      v443.i64[1] = v185.u32[1];
      v446 = v443;
      v443.i64[0] = v185.u32[2];
      v443.i64[1] = v185.u32[3];
      v447 = vzip1q_s64(0, v446);
      v448 = vzip1q_s64(0, v443);
      v449 = vpaddq_s64(vshlq_u64(v444, v447), vshlq_u64(v445, v448));
      v450 = vpaddq_s64(v446, v443);
      v451 = v450.i64[0];
      v452 = (v449.i64[0] << v438) | v437;
      if (v450.i64[0] + (v438 & 0x3F) >= 0x40)
      {
        *(v284 + ((v438 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
        if ((v438 & 0x3F) != 0)
        {
          v452 = v449.i64[0] >> -(v438 & 0x3F);
        }

        else
        {
          v452 = 0;
        }
      }

      v453 = vaddq_s32(v592, v428);
      v454 = v450.i64[1];
      v455 = v450.i64[0] + v438;
      v456 = v452 | (v449.i64[1] << v455);
      if ((v455 & 0x3F) + v450.i64[1] >= 0x40)
      {
        *(v284 + ((v455 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
        v456 = v449.i64[1] >> -(v455 & 0x3F);
        if ((v455 & 0x3F) == 0)
        {
          v456 = 0;
        }
      }

      v457 = v455 + v450.i64[1];
      v458 = vandq_s8(v441, v453);
      v459.i64[0] = v458.u32[0];
      v459.i64[1] = v458.u32[1];
      v460 = v459;
      v459.i64[0] = v458.u32[2];
      v459.i64[1] = v458.u32[3];
      v461 = vpaddq_s64(vshlq_u64(v460, v447), vshlq_u64(v459, v448));
      v462 = (v461.i64[0] << v457) | v456;
      if (v450.i64[0] + (v457 & 0x3F) >= 0x40)
      {
        *(v284 + ((v457 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
        v462 = v461.i64[0] >> -(v457 & 0x3F);
        if ((v457 & 0x3F) == 0)
        {
          v462 = 0;
        }
      }

      v463 = vaddq_s32(v573, v428);
      v464 = v450.i64[0] + v457;
      v465 = v462 | (v461.i64[1] << v464);
      if ((v464 & 0x3F) + v450.i64[1] >= 0x40)
      {
        *(v284 + ((v464 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
        v465 = v461.i64[1] >> -(v464 & 0x3F);
        if ((v464 & 0x3F) == 0)
        {
          v465 = 0;
        }
      }

      v466 = v464 + v450.i64[1];
      v467 = vandq_s8(v441, v463);
      v468.i64[0] = v467.u32[0];
      v468.i64[1] = v467.u32[1];
      v469 = v468;
      v468.i64[0] = v467.u32[2];
      v468.i64[1] = v467.u32[3];
      v470 = vpaddq_s64(vshlq_u64(v469, v447), vshlq_u64(v468, v448));
      v471 = (v470.i64[0] << v466) | v465;
      if (v450.i64[0] + (v466 & 0x3F) >= 0x40)
      {
        *(v284 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v471;
        v471 = v470.i64[0] >> -(v466 & 0x3F);
        if ((v466 & 0x3F) == 0)
        {
          v471 = 0;
        }
      }

      v472 = vceqq_s32(v162, v594);
      v473 = vaddq_s32(v579, v428);
      v474 = v451 + v466;
      v475 = v471 | (v470.i64[1] << v474);
      if ((v474 & 0x3F) + v454 >= 0x40)
      {
        *(v284 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
        v475 = v470.i64[1] >> -(v474 & 0x3F);
        if ((v474 & 0x3F) == 0)
        {
          v475 = 0;
        }
      }

      v476 = vandq_s8(v149, v472);
      v477 = v474 + v454;
      v478 = vandq_s8(v441, v473);
      v479.i64[0] = v478.u32[0];
      v479.i64[1] = v478.u32[1];
      v480 = v479;
      v479.i64[0] = v478.u32[2];
      v479.i64[1] = v478.u32[3];
      v481 = vpaddq_s64(vshlq_u64(v480, v447), vshlq_u64(v479, v448));
      v482 = (v481.i64[0] << v477) | v475;
      if (v451 + (v477 & 0x3F) >= 0x40)
      {
        *(v284 + ((v477 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v482;
        v482 = v481.i64[0] >> -(v477 & 0x3F);
        if ((v477 & 0x3F) == 0)
        {
          v482 = 0;
        }
      }

      v483 = vaddq_s32(v172, v476);
      v484 = v451 + v477;
      v485 = v482 | (v481.i64[1] << v484);
      if ((v484 & 0x3F) + v454 >= 0x40)
      {
        *(v284 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
        v485 = v481.i64[1] >> -(v484 & 0x3F);
        if ((v484 & 0x3F) == 0)
        {
          v485 = 0;
        }
      }

      v486 = v484 + v454;
      v487.i64[0] = 0x1F0000001FLL;
      v487.i64[1] = 0x1F0000001FLL;
      v488.i64[0] = -1;
      v488.i64[1] = -1;
      v489 = vshlq_u32(v488, vaddq_s32(v594, v487));
      v490 = vandq_s8(v489, v483);
      v491.i64[0] = v490.u32[0];
      v491.i64[1] = v490.u32[1];
      v492 = v491;
      v491.i64[0] = v490.u32[2];
      v491.i64[1] = v490.u32[3];
      v493 = v491;
      v491.i64[0] = v594.u32[0];
      v491.i64[1] = v594.u32[1];
      v494 = v491;
      v491.i64[0] = v594.u32[2];
      v491.i64[1] = v594.u32[3];
      v495 = vzip1q_s64(0, v494);
      v496 = vzip1q_s64(0, v491);
      v497 = vpaddq_s64(vshlq_u64(v492, v495), vshlq_u64(v493, v496));
      v498 = vpaddq_s64(v494, v491);
      v499 = (v484 + v454) & 0x3F;
      v500 = (v497.i64[0] << (v484 + v454)) | v485;
      if ((v498.i64[0] + v499) > 0x3F)
      {
        *(v284 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v500;
        if (v499)
        {
          v500 = v497.i64[0] >> -v499;
        }

        else
        {
          v500 = 0;
        }
      }

      v501 = vaddq_s32(v171, v476);
      v502 = v498.i64[0] + v486;
      v503 = v500 | (v497.i64[1] << v502);
      if ((v502 & 0x3F) + v498.i64[1] >= 0x40)
      {
        *(v284 + ((v502 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v503;
        v503 = v497.i64[1] >> -(v502 & 0x3F);
        if ((v502 & 0x3F) == 0)
        {
          v503 = 0;
        }
      }

      v504 = v502 + v498.i64[1];
      v505 = vandq_s8(v489, v501);
      v506.i64[0] = v505.u32[0];
      v506.i64[1] = v505.u32[1];
      v507 = v506;
      v506.i64[0] = v505.u32[2];
      v506.i64[1] = v505.u32[3];
      v508 = vpaddq_s64(vshlq_u64(v507, v495), vshlq_u64(v506, v496));
      v509 = (v508.i64[0] << v504) | v503;
      if (v498.i64[0] + (v504 & 0x3F) >= 0x40)
      {
        *(v284 + ((v504 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v509;
        v509 = v508.i64[0] >> -(v504 & 0x3F);
        if ((v504 & 0x3F) == 0)
        {
          v509 = 0;
        }
      }

      v510 = vaddq_s32(v170, v476);
      v511 = v498.i64[0] + v504;
      v512 = v509 | (v508.i64[1] << v511);
      if ((v511 & 0x3F) + v498.i64[1] >= 0x40)
      {
        *(v284 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v512;
        v512 = v508.i64[1] >> -(v511 & 0x3F);
        if ((v511 & 0x3F) == 0)
        {
          v512 = 0;
        }
      }

      v513 = v511 + v498.i64[1];
      v514 = vandq_s8(v489, v510);
      v515.i64[0] = v514.u32[0];
      v515.i64[1] = v514.u32[1];
      v516 = v515;
      v515.i64[0] = v514.u32[2];
      v515.i64[1] = v514.u32[3];
      v517 = vpaddq_s64(vshlq_u64(v516, v495), vshlq_u64(v515, v496));
      v518 = (v517.i64[0] << v513) | v512;
      if (v498.i64[0] + (v513 & 0x3F) >= 0x40)
      {
        *(v284 + ((v513 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v518;
        v518 = v517.i64[0] >> -(v513 & 0x3F);
        if ((v513 & 0x3F) == 0)
        {
          v518 = 0;
        }
      }

      v519 = vaddq_s32(v169, v476);
      v520 = v498.i64[0] + v513;
      v521 = v518 | (v517.i64[1] << v520);
      if ((v520 & 0x3F) + v498.i64[1] >= 0x40)
      {
        *(v284 + ((v520 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
        v521 = v517.i64[1] >> -(v520 & 0x3F);
        if ((v520 & 0x3F) == 0)
        {
          v521 = 0;
        }
      }

      v522 = v520 + v498.i64[1];
      v523 = vandq_s8(v489, v519);
      v524.i64[0] = v523.u32[0];
      v524.i64[1] = v523.u32[1];
      v525 = v524;
      v524.i64[0] = v523.u32[2];
      v524.i64[1] = v523.u32[3];
      v526 = vpaddq_s64(vshlq_u64(v525, v495), vshlq_u64(v524, v496));
      v527 = (v526.i64[0] << v522) | v521;
      if (v498.i64[0] + (v522 & 0x3F) >= 0x40)
      {
        *(v284 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
        v527 = v526.i64[0] >> -(v522 & 0x3F);
        if ((v522 & 0x3F) == 0)
        {
          v527 = 0;
        }
      }

      v528 = v498.i64[0] + v522;
      v529 = (v498.i64[0] + v522) & 0x3F;
      v530 = v527 | (v526.i64[1] << (v498.i8[0] + v522));
      if ((v529 + v498.i64[1]) >= 0x40)
      {
        *(v284 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
        v530 = v526.i64[1] >> -v529;
        if (!v529)
        {
          v530 = 0;
        }
      }

      v531 = v528 + v498.i64[1];
      if ((v531 & 0x3F) != 0)
      {
        *(v284 + ((v531 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v530;
      }

      result = (v531 - v285 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v64;
        v22 = (a3 + 8);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = *v23;
            *(v24 - 4) = *(v23 - 1);
            *v24 = v26;
            v24 += 4;
            v23 += 2;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 = (v21 + 8);
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v27 = 0;
        v28 = &v64;
        v29 = (a3 + 8);
        v30 = &v62 + 4 * ((a5 >> 1) & 0x3F);
        do
        {
          v31 = v29;
          v32 = v28;
          v33 = a5 & 0x7E;
          do
          {
            v34 = *v31;
            *(v32 - 4) = *(v31 - 1);
            *v32 = v34;
            v32 += 4;
            v31 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = (a3 + v27 * a4 + 8 * v19);
          v36 = v30;
          v37 = a5 - v19;
          do
          {
            v38 = *v35++;
            *v36 = v38;
            v36 += 2;
            --v37;
          }

          while (v37);
          ++v27;
          v28 = (v28 + 8);
          v29 = (v29 + a4);
          v30 = (v30 + 8);
        }

        while (v27 != a6);
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
      v12 = &v62 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
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
        v17 = &v62 + v10;
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

  v54 = v62;
  v55 = v64;
  v56 = *(&v62 + 1);
  v57 = *(&v64 + 1);
  v58 = v66;
  v59 = v68;
  if (a5 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = a5;
  }

  if (a5 >= 4)
  {
    v40 = a5 - 4;
  }

  else
  {
    v40 = 0;
  }

  v60 = *(&v66 + 1);
  v61 = *(&v68 + 1);
  if (a6 >= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = a6;
  }

  if (a6 >= 2)
  {
    v42 = a6 - 2;
  }

  else
  {
    v42 = 0;
  }

  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v54, a7, v39, v41);
  v54 = v63;
  v55 = v65;
  v56 = *(&v63 + 1);
  v57 = *(&v65 + 1);
  v58 = v67;
  v59 = v69;
  v60 = *(&v67 + 1);
  v61 = *(&v69 + 1);
  if (a6 >= 4)
  {
    v45 = 2;
  }

  else
  {
    v45 = v42;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v54, a7, v39, v45);
  v54 = v70;
  v55 = v72;
  v56 = *(&v70 + 1);
  v57 = *(&v72 + 1);
  v58 = v74;
  v59 = v76;
  if (a5 >= 8)
  {
    v47 = 4;
  }

  else
  {
    v47 = v40;
  }

  v60 = *(&v74 + 1);
  v61 = *(&v76 + 1);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v54, a7, v47, v41);
  v54 = v71;
  v55 = v73;
  v56 = *(&v71 + 1);
  v57 = *(&v73 + 1);
  v58 = v75;
  v59 = v77;
  v60 = *(&v75 + 1);
  v61 = *(&v77 + 1);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v54, a7, v47, v45);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v329 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v278 = v7;
  v8 = a4 < 2 || a5 == 0;
  v277 = v8;
  v9 = a4 < 2 || a5 < 2;
  v276 = v9;
  v10 = a4 < 3 || a5 == 0;
  v275 = v10;
  v11 = a4 < 3 || a5 < 2;
  v274 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v273 = v6;
  v12 = a4 < 4 || a5 < 2;
  v272 = v12;
  v13 = &v311;
  v14 = &v313;
  v15 = &v317;
  v16 = &v321;
  v17 = &v325;
  v18 = &v327;
  v19 = &v296;
  v20 = v294;
  v21 = &v292;
  v22 = &v290;
  v23 = &v288;
  v24 = v286;
  v25 = 1;
  v26 = &v315;
  v27 = &v319;
  v28 = &v323;
  v271 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)17,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v277)
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
    if (v278)
    {
      if (v276)
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
      if (v276)
      {
LABEL_69:
        if (v275)
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
    if (v275)
    {
LABEL_70:
      if (v273)
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
    if (!v273)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v271;
    if (!v274)
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

    if (!v272)
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
    if ((v271 | 2) == 3)
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
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61;
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
      v89 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v89)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v89 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v89 || v67 >= v55;
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
    v19 = &v295;
    v20 = v293;
    v21 = &v291;
    v22 = &v289;
    v23 = &v287;
    v24 = v285;
    v14 = &v314;
    v13 = &v312;
    v15 = &v318;
    v26 = &v316;
    v16 = &v322;
    v27 = &v320;
    v17 = &v326;
    v28 = &v324;
    v18 = &v328;
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
  v265 = v71;
  v72 = v288;
  v73 = v327;
  v74 = v328;
  v76 = v328 >= v327;
  v77 = v287;
  v78 = kDQuadParamTable[160 * v287 + 6 + 10 * v328];
  v299 = kDQuadParamTable[160 * v288 + 6 + 10 * v327];
  v75 = v299;
  v300 = v78;
  v301[0] = v299;
  v301[1] = v78;
  if (*(&v327 + (v328 >= v327)) == *(&v327 + (v328 < v327)))
  {
    v79 = v299;
  }

  else
  {
    v80 = v301[v328 < v327];
    v79 = v299;
    if (v80 >= 1)
    {
      *(&v299 + (v328 < v327)) = 0;
      *(&v299 + v76) += v80;
      v79 = v299;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v84 = v81[4];
  v83 = v81[5];
  v284 = v84;
  v282 = v83;
  v85 = v79 - v75;
  if (v85 < 0)
  {
    v87 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v87[7] < -v85)
    {
      v282 = --v83;
      if (!v87[8])
      {
        v86 = -1;
LABEL_177:
        v284 = v86 + v84;
      }
    }
  }

  else if (v85)
  {
    v83 += v85;
    v282 = v83;
    v86 = v85;
    goto LABEL_177;
  }

  v89 = v72 == 5 && v73 == 1 && v85 < 2;
  v90 = v89;
  if (v271 == 4)
  {
    v91 = 1 << (v296 - 1);
    if (v72 == 3)
    {
      v92 = -31745;
    }

    else
    {
      v92 = -1;
    }

    if (v72 == 4)
    {
      v93 = -2139095041;
    }

    else
    {
      v93 = v92;
    }

    if (v265)
    {
      if (v277)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v313 | v93) == 0xFFFFFFFF || v313 == v91)
      {
        v90 = 1;
      }

      if (!v278)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v276)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v317 | v93) == 0xFFFFFFFF || v317 == v91)
      {
        v90 = 1;
      }

      if (!v275)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v273)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v321 | v93) == 0xFFFFFFFF || v321 == v91)
      {
        v90 = 1;
      }

      if (!v274)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v272)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v311 | v93) == 0xFFFFFFFF || v311 == v91)
      {
        v90 = 1;
      }

      if (!v277)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v278)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v315 | v93) == 0xFFFFFFFF || v315 == v91)
      {
        v90 = 1;
      }

      if (!v276)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v275)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v319 | v93) == 0xFFFFFFFF || v319 == v91)
      {
        v90 = 1;
      }

      if (!v273)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v274)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v323 | v93) == 0xFFFFFFFF || v323 == v91)
      {
        v90 = 1;
      }

      if (!v272)
      {
LABEL_204:
        if ((v325 | v93) == 0xFFFFFFFF || v325 == v91)
        {
          v90 = 1;
        }
      }
    }
  }

  v89 = v82 >> v83 > 0x10000;
  v95 = v265;
  if (v89)
  {
    v95 = 1;
  }

  v96 = v95 | v90;
  v97 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v98 = *(v97 + 1);
  v99 = v97[4];
  v100 = v97[5];
  v283 = v99;
  v281 = v100;
  v101 = v300 - v78;
  if (v101 < 0)
  {
    v103 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v103[7] < -v101)
    {
      v281 = --v100;
      if (!v103[8])
      {
        v102 = -1;
LABEL_216:
        v283 = v102 + v99;
      }
    }
  }

  else if (v101)
  {
    v100 += v101;
    v281 = v100;
    v102 = v101;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v96 |= v101 < 2;
  }

  v261 = v73;
  if (v271 == 4)
  {
    v104 = 1 << (v295 - 1);
    if (v77 == 3)
    {
      v105 = -31745;
    }

    else
    {
      v105 = -1;
    }

    if (v77 == 4)
    {
      v106 = -2139095041;
    }

    else
    {
      v106 = v105;
    }

    if (v265)
    {
      if (v277)
      {
        goto LABEL_231;
      }

LABEL_402:
      v205 = (v314 | v106) == 0xFFFFFFFF || v314 == v104;
      v96 |= v205;
      if (!v278)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v276)
      {
        goto LABEL_233;
      }

LABEL_416:
      v209 = (v318 | v106) == 0xFFFFFFFF || v318 == v104;
      v96 |= v209;
      if (!v275)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v273)
      {
        goto LABEL_235;
      }

LABEL_430:
      v213 = (v322 | v106) == 0xFFFFFFFF || v322 == v104;
      v96 |= v213;
      if (v274)
      {
        goto LABEL_243;
      }

LABEL_236:
      v108 = (v324 | v106) == 0xFFFFFFFF || v324 == v104;
      v96 |= v108;
      goto LABEL_243;
    }

    v203 = (v312 | v106) == 0xFFFFFFFF || v312 == v104;
    v96 |= v203;
    if (!v277)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v278)
    {
      goto LABEL_232;
    }

LABEL_409:
    v207 = (v316 | v106) == 0xFFFFFFFF || v316 == v104;
    v96 |= v207;
    if (!v276)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v275)
    {
      goto LABEL_234;
    }

LABEL_423:
    v211 = (v320 | v106) == 0xFFFFFFFF || v320 == v104;
    v96 |= v211;
    if (!v273)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v274)
    {
      goto LABEL_236;
    }

LABEL_243:
    v109 = &v315;
    v110 = v303;
    if (!v272)
    {
      v112 = (v326 | v106) == 0xFFFFFFFF || v326 == v104;
      v96 |= v112;
    }

    v263 = v96;
  }

  else
  {
    v263 = v96;
    v109 = &v315;
    v110 = v303;
  }

  v113 = 0;
  v114 = v265;
  if (v98 >> v100 > 0x10000)
  {
    v114 = 1;
  }

  v262 = v114;
  v280 = 0;
  v279 = 0;
  v115 = &v296;
  v116 = v294;
  v298 = 0;
  v270 = &v290;
  v117 = &v327;
  v118 = &v288;
  v268 = v286;
  v119 = &v284;
  v120 = &v282;
  memset(v297, 0, sizeof(v297));
  v121 = &v280;
  v122 = 1;
  v123 = v302;
  v124 = &v311;
  v125 = &v306 + 4;
  v126 = &v305 + 4;
  v127 = &v306;
  v129 = &v304 + 4;
  v128 = &v305;
  v130 = &v317;
  v131 = &v304;
  v132 = &v313;
  v134 = &v321;
  v133 = &v319;
  v136 = &v325;
  v135 = &v323;
  do
  {
    v137 = 0;
    v138 = 0;
    v139 = *v115;
    if (v139 >= *v119)
    {
      v140 = *v119;
    }

    else
    {
      v140 = v139;
    }

    *v119 = v140;
    v141 = &kDQuadParamTable[160 * *v118 + 10 * *v117];
    if (v141[5])
    {
      v142 = v139;
    }

    else
    {
      v142 = 0;
    }

    v143 = *v120;
    if (v142 < *v120)
    {
      v143 = v142;
    }

    v269 = v122;
    *v120 = v143;
    v144 = -1 << v139;
    v145 = *(v141 + 1);
    v146 = *v116 & (-1 << (v139 - v140));
    *v121 = v146;
    v147 = v145 >> v143;
    v148 = *v124 - v146;
    if (v265)
    {
      v148 = 0;
    }

    *v123 = v148;
    v149 = *v132 - v146;
    if (v277)
    {
      v149 = 0;
    }

    *v110 = v149;
    v150 = *v109 - v146;
    if (v278)
    {
      v150 = 0;
    }

    *v131 = v150;
    v151 = *v130 - v146;
    if (v276)
    {
      v151 = 0;
    }

    *v129 = v151;
    v152 = *v133 - v146;
    if (v275)
    {
      v152 = 0;
    }

    *v128 = v152;
    v153 = *v134 - v146;
    if (v273)
    {
      v153 = 0;
    }

    *v126 = v153;
    v154 = *v135 - v146;
    if (v274)
    {
      v154 = 0;
    }

    *v127 = v154;
    v155 = *v136 - v146;
    if (v272)
    {
      v155 = 0;
    }

    *v125 = v155;
    if (v147 <= 1)
    {
      v156 = 1;
    }

    else
    {
      v156 = v145 >> v143;
    }

    v157 = &v302[32 * v113];
    v158 = 4 * v113;
    v159 = 4 * *v270;
    v160 = v297 + 28 * v113;
    v161 = &byte_29D2F3081;
    do
    {
      if (v159 != v137)
      {
        if (v143)
        {
          v162 = *&v157[v137] / v156;
        }

        else
        {
          LODWORD(v162) = 0;
        }

        *&v160[4 * v138] = v162;
        if (v147 >= 2)
        {
          v163 = *&v157[v137];
          if (v163)
          {
            if (v163 / v156 * v156 == v163 && ((v163 / v156) & 1) != 0)
            {
              if (v146 || v162 != 1)
              {
                if ((v271 | 2) != 3 || (v165 = *(&v311 + v158), v166 = *v268, v165 != v166) && ((v271 | 2) != 3 || v156 + v166 != v165))
                {
                  LODWORD(v162) = v162 - 1;
                  *&v160[4 * v138] = v162;
                }
              }

              else
              {
                LODWORD(v162) = 1;
              }
            }
          }
        }

        if (v162 >> v143 || (*(&v311 + v158) ^ v144) == 0xFFFFFFFF)
        {
          *&v160[4 * v138] = ~(-1 << v143);
        }

        if (*v161 >= a5 || *(v161 - 1) >= a4)
        {
          *&v160[4 * v138] = 0;
        }

        ++v138;
      }

      v137 += 4;
      v158 += 8;
      v161 += 2;
    }

    while (v137 != 32);
    v122 = 0;
    v115 = &v295;
    v116 = v293;
    v270 = &v289;
    v118 = &v287;
    v268 = v285;
    v119 = &v283;
    v120 = &v281;
    v121 = &v279;
    v110 = &v307 + 4;
    v123 = &v307;
    v129 = &v308 + 4;
    v131 = &v308;
    v126 = &v309 + 4;
    v128 = &v309;
    v125 = &v310 + 4;
    v127 = &v310;
    v132 = &v314;
    v124 = &v312;
    v130 = &v318;
    v109 = &v316;
    v134 = &v322;
    v133 = &v320;
    v136 = &v326;
    v135 = &v324;
    v117 = &v328;
    v113 = 1;
  }

  while ((v269 & 1) != 0);
  v167 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v168 = 8 * (a1 & 7);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if ((v262 | v263))
  {
    v169 = 0;
    v170 = 0;
    v171 = v296;
    v172 = v296 - 16;
    v173 = v295;
    v174 = v295 - 16;
    v175 = 8 * (a1 & 7);
    while (1)
    {
      v176 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v169;
      v177 = v176[1] < a5 && a4 > *v176;
      v178 = !v177;
      v179 = &v311 + 2 * v169;
      if (v177)
      {
        v180 = *(v179 + 1);
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v180 = 0;
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v171 != 16 && v175 - v168 + (v170 << 6) + v172 <= 0x100)
      {
        v181 = 0;
        v182 = v172;
        do
        {
          v183 = 64 - v175;
          if (64 - v175 >= v182)
          {
            v183 = v182;
          }

          v167[v170] |= ((v180 >> v181) & ~(-1 << v183)) << v175;
          v181 += v183;
          v184 = v183 + v175;
          v170 += v184 >> 6;
          v175 = v184 & 0x3F;
          v182 -= v183;
        }

        while (v182);
      }

LABEL_331:
      if (v178)
      {
        v185 = 0;
        if (v174 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v185 = *(v179 + 3);
        if (v174 <= 0x100)
        {
LABEL_335:
          if (v173 != 16 && v175 - v168 + (v170 << 6) + v174 <= 0x100)
          {
            v186 = 0;
            v187 = v174;
            do
            {
              v188 = 64 - v175;
              if (64 - v175 >= v187)
              {
                v188 = v187;
              }

              v167[v170] |= ((v185 >> v186) & ~(-1 << v188)) << v175;
              v186 += v188;
              v189 = v188 + v175;
              v170 += v189 >> 6;
              v175 = v189 & 0x3F;
              v187 -= v188;
            }

            while (v187);
          }
        }
      }

      if (++v169 == 8)
      {
        return (v262 | v263) & 1;
      }
    }
  }

  v190 = ((v261 & 0xF) << v168) | *v167;
  *v167 = v190;
  v191 = v168 | 4;
  v192 = v328;
  if ((v168 | 4uLL) - v168 - 253 < 0xFFFFFFFFFFFFFEFFLL)
  {
    v193 = 0;
    v194 = v296;
    if (!v261)
    {
      goto LABEL_439;
    }

    goto LABEL_443;
  }

  *v167 = ((v328 & 0xF) << v191) | v190;
  v191 = (v168 + 8) & 0x38;
  v193 = (v168 + 8) >> 6;
  v194 = v296;
  if (v261)
  {
    goto LABEL_443;
  }

LABEL_439:
  if (v194 == 2 || v194 >= 0x10)
  {
LABEL_443:
    v216 = v284;
    if (v284 <= 0x100 && v284 && v191 - v168 + (v193 << 6) + v284 <= 0x100)
    {
      v217 = 0;
      v218 = v280 >> (v194 - v284);
      v219 = v284;
      do
      {
        v220 = 64 - v191;
        if (64 - v191 >= v219)
        {
          v220 = v219;
        }

        v167[v193] |= ((v218 >> v217) & ~(-1 << v220)) << v191;
        v217 += v220;
        v221 = v220 + v191;
        v193 += v221 >> 6;
        v191 = v221 & 0x3F;
        v219 -= v220;
      }

      while (v219);
    }

    v214 = v216 + 8;
    v215 = v295;
    if (v192)
    {
      goto LABEL_451;
    }

LABEL_504:
    if (v215 == 2 || v215 >= 0x10)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v214 = 8;
    v215 = v295;
    if (!v192)
    {
      goto LABEL_504;
    }

LABEL_451:
    v222 = v283;
    if (v283 <= 0x100 && v283 && v191 - v168 + (v193 << 6) + v283 <= 0x100)
    {
      v223 = 0;
      v224 = v279 >> (v215 - v283);
      v225 = v283;
      do
      {
        v226 = 64 - v191;
        if (64 - v191 >= v225)
        {
          v226 = v225;
        }

        v167[v193] |= ((v224 >> v223) & ~(-1 << v226)) << v191;
        v223 += v226;
        v227 = v226 + v191;
        v193 += v227 >> 6;
        v191 = v227 & 0x3F;
        v225 -= v226;
      }

      while (v225);
    }

    v214 += v222;
  }

  v228 = v282;
  if (v282)
  {
    if (v191 - v168 + (v193 << 6) + 3 <= 0x100)
    {
      v229 = 0;
      v230 = v290;
      v231 = 3;
      do
      {
        v232 = 64 - v191;
        if (64 - v191 >= v231)
        {
          v232 = v231;
        }

        v167[v193] |= ((v230 >> v229) & ~(-1 << v232)) << v191;
        v229 += v232;
        v233 = v232 + v191;
        v193 += v233 >> 6;
        v191 = v233 & 0x3F;
        v231 -= v232;
      }

      while (v231);
    }

    v214 += 3;
  }

  v234 = v281;
  if (v281)
  {
    if (v191 - v168 + (v193 << 6) + 3 <= 0x100)
    {
      v235 = 0;
      v236 = v289;
      v237 = 3;
      do
      {
        v238 = 64 - v191;
        if (64 - v191 >= v237)
        {
          v238 = v237;
        }

        v167[v193] |= ((v236 >> v235) & ~(-1 << v238)) << v191;
        v235 += v238;
        v239 = v238 + v191;
        v193 += v239 >> 6;
        v191 = v239 & 0x3F;
        v237 -= v238;
      }

      while (v237);
    }

    v214 += 3;
  }

  v240 = 256 - v214;
  v241 = (256 - v214) / 7u;
  v242 = v240 % 7;
  if ((v242 - 257) >= 0xFFFFFF00 && v191 - v168 + (v193 << 6) + v242 <= 0x100)
  {
    do
    {
      v243 = 64 - v191;
      if (64 - v191 >= v242)
      {
        v243 = v242;
      }

      v244 = v243 + v191;
      v193 += v244 >> 6;
      v191 = v244 & 0x3F;
      v242 -= v243;
    }

    while (v242);
  }

  v245 = 0;
  v246 = v234 + v228;
  while (2)
  {
    if (v228 && v228 <= 0x100 && v191 - v168 + (v193 << 6) + v228 <= 0x100)
    {
      v247 = 0;
      v248 = *(v297 + v245);
      v249 = v228;
      do
      {
        v250 = 64 - v191;
        if (64 - v191 >= v249)
        {
          v250 = v249;
        }

        v167[v193] |= ((v248 >> v247) & ~(-1 << v250)) << v191;
        v247 += v250;
        v251 = v250 + v191;
        v193 += v251 >> 6;
        v191 = v251 & 0x3F;
        v249 -= v250;
      }

      while (v249);
    }

    if (v234)
    {
      if (v234 <= 0x100 && v191 - v168 + (v193 << 6) + v234 <= 0x100)
      {
        v252 = 0;
        v253 = *(&v297[1] + v245 + 3);
        v254 = v234;
        do
        {
          v255 = 64 - v191;
          if (64 - v191 >= v254)
          {
            v255 = v254;
          }

          v167[v193] |= ((v253 >> v252) & ~(-1 << v255)) << v191;
          v252 += v255;
          v256 = v255 + v191;
          v193 += v256 >> 6;
          v191 = v256 & 0x3F;
          v254 -= v255;
        }

        while (v254);
      }

      v257 = v241 - v246;
      if (v241 != v246)
      {
LABEL_497:
        if (v257 <= 0x100 && v191 - v168 + (v193 << 6) + v257 <= 0x100)
        {
          do
          {
            v258 = 64 - v191;
            if (64 - v191 >= v257)
            {
              v258 = v257;
            }

            v259 = v258 + v191;
            v193 += v259 >> 6;
            v191 = v259 & 0x3F;
            v257 -= v258;
          }

          while (v257);
        }
      }
    }

    else
    {
      v257 = v241 - v228;
      if (v241 != v228)
      {
        goto LABEL_497;
      }
    }

    if (++v245 != 7)
    {
      continue;
    }

    return (v262 | v263) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 31;
  result = v6;
  do
  {
    if ((result - v6 + (v4 << 6) - 241) >= 0xFFFFFFFFFFFFFEFFLL)
    {
      v12 = 0;
      v13 = 0;
      v14 = 16;
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
      v11 = v12 << 16;
    }

    else
    {
      v11 = 0;
    }

    v17 = ((v11 << 15 >> 31) + 0x8000) | v11;
    if (v11 == -65536)
    {
      v17 = -1;
    }

    if (!v11)
    {
      v17 = 0;
    }

    if (v11 == 0x80000000 && v7 == 1)
    {
      v17 = v11;
    }

    if (a3 != 4)
    {
      v11 = v17;
    }

    *(a2 + 8 * v3) = v11 ^ v8;
    if ((result - v6 + (v4 << 6) - 241) < 0xFFFFFFFFFFFFFEFFLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v24 = v10 == 0x80000000 && v7 == 1;
      if (!v24 && v10)
      {
        if (v10 == -65536)
        {
          v10 = -1;
        }

        else
        {
          v10 |= (v10 << 15 >> 31) + 0x8000;
        }
      }

      goto LABEL_3;
    }

    v19 = 0;
    v20 = 0;
    v21 = 16;
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
    v10 = v19 << 16;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> v4) & 0xF;
  v8 = (v4 | 4) - v4 - 253;
  v9 = (v5 >> (v4 | 4u)) & 0xF;
  if (v8 >= 0xFFFFFFFFFFFFFEFFLL)
  {
    v10 = (v4 + 8) & 0x38;
  }

  else
  {
    v10 = (8 * (a1 & 7)) | 4;
  }

  if (v8 >= 0xFFFFFFFFFFFFFEFFLL)
  {
    v11 = (v4 + 8) >> 6;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 0xFFFFFFFFFFFFFEFFLL)
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
  v14 = dword_29D2F3AF0[10 * (v6 & 0xF) + 6];
  v15 = v14;
  v16 = v12 >= v7;
  v17 = v12 >= v7;
  v18 = !v16;
  v19 = dword_29D2F3AF0[10 * v12 + 6];
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
  v22 = v21[644];
  v23 = v21[645];
  v24 = v15 - v14;
  if (v24 >= 0)
  {
    v25 = v23;
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = v24 + v23;
    goto LABEL_19;
  }

  v26 = &kDQuadParamTable[10 * v13];
  if (v26[647] >= -v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 - 1;
    if (!v26[648])
    {
      v24 = -1;
LABEL_19:
      v22 += v24;
    }
  }

LABEL_24:
  if (v22 >= 0x20)
  {
    v27 = 32;
  }

  else
  {
    v27 = v22;
  }

  v28 = 32 * (v23 != 0);
  if (v28 >= v25)
  {
    result = v25;
  }

  else
  {
    result = v28;
  }

  v30 = &kDQuadParamTable[10 * v12];
  v31 = v30[644];
  v32 = v30[645];
  v34 = v161 - v19;
  v33 = v161 == v19;
  if (v161 - v19 < 0)
  {
    v36 = &kDQuadParamTable[10 * v12];
    if (v36[647] >= v19 - v161)
    {
      LODWORD(v35) = v32;
      goto LABEL_38;
    }

    LODWORD(v35) = v32 - 1;
    if (!v36[648])
    {
      v34 = -1;
      goto LABEL_33;
    }
  }

  else
  {
    LODWORD(v35) = v32;
    if (!v33)
    {
      LODWORD(v35) = v34 + v32;
LABEL_33:
      v31 += v34;
    }
  }

LABEL_38:
  v37 = 0;
  if (v31 >= 0x20)
  {
    v38 = 32;
  }

  else
  {
    v38 = v31;
  }

  v39 = 32 * (v32 != 0);
  if (v39 >= v35)
  {
    v35 = v35;
  }

  else
  {
    v35 = v39;
  }

  v40 = v10 - v4 + (v11 << 6);
  if (v22 && v40 + v27 <= 0x100)
  {
    v37 = 0;
    v41 = 0;
    v42 = v27;
    do
    {
      v43 = 64 - v10;
      if (64 - v10 >= v42)
      {
        v43 = v42;
      }

      v37 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v43)) << v41;
      v41 += v43;
      v44 = v43 + v10;
      v11 += v44 >> 6;
      v10 = v44 & 0x3F;
      v42 -= v43;
    }

    while (v42);
    v40 = v10 - v4 + (v11 << 6);
  }

  if (v31 && v40 + v38 <= 0x100)
  {
    v45 = 0;
    v46 = 0;
    v47 = v38;
    do
    {
      v48 = 64 - v10;
      if (64 - v10 >= v47)
      {
        v48 = v47;
      }

      v45 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v48)) << v46;
      v46 += v48;
      v49 = v48 + v10;
      v11 += v49 >> 6;
      v10 = v49 & 0x3F;
      v47 -= v48;
    }

    while (v47);
  }

  else
  {
    v45 = 0;
  }

  v50 = v38 + v27 + 8;
  v156 = 0;
  v157 = 0;
  if (result)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0x100)
    {
      v51 = 0;
      v52 = 0;
      v53 = 3;
      do
      {
        v54 = 64 - v10;
        if (64 - v10 >= v53)
        {
          v54 = v53;
        }

        v51 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v54)) << v52;
        v52 += v54;
        v55 = v54 + v10;
        v11 += v55 >> 6;
        v10 = v55 & 0x3F;
        v53 -= v54;
      }

      while (v53);
    }

    else
    {
      v51 = 0;
    }

    v157 = v51;
    v50 += 3;
  }

  v56 = v37 << -v27;
  v57 = v45 << -v38;
  if (v35)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0x100)
    {
      v58 = 0;
      v59 = 0;
      v60 = 3;
      do
      {
        v61 = 64 - v10;
        if (64 - v10 >= v60)
        {
          v61 = v60;
        }

        v58 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v61)) << v59;
        v59 += v61;
        v62 = v61 + v10;
        v11 += v62 >> 6;
        v10 = v62 & 0x3F;
        v60 -= v61;
      }

      while (v60);
    }

    else
    {
      v58 = 0;
    }

    v156 = v58;
    v50 += 3;
  }

  v63 = 0;
  v64 = a3 & 0xFFFFFFFD;
  v65 = 256 - v50;
  v66 = (9363 * (256 - v50)) >> 16;
  v67 = (v10 | (v11 << 6)) + -7 * v66 + v65;
  v159 = 0;
  memset(v158, 0, sizeof(v158));
  do
  {
    v69 = v67 >> 6;
    v70 = v67 & 0x3F;
    if (result)
    {
      if (v70 - v4 + (v67 & 0xFFFFFFFFFFFFFFC0) + result <= 0x100)
      {
        v71 = 0;
        v72 = 0;
        v73 = result;
        do
        {
          v74 = 64 - v70;
          if (64 - v70 >= v73)
          {
            v74 = v73;
          }

          v71 |= ((*(v3 + 8 * v69) >> v70) & ~(-1 << v74)) << v72;
          v72 += v74;
          v75 = v74 + v70;
          v69 += v75 >> 6;
          v70 = v75 & 0x3F;
          v73 -= v74;
        }

        while (v73);
      }

      else
      {
        v71 = 0;
      }

      *(v158 + v63) = v71;
    }

    if (v35)
    {
      if (v70 - v4 + (v69 << 6) + v35 <= 0x100)
      {
        v76 = 0;
        v77 = 0;
        v78 = v35;
        do
        {
          v79 = 64 - v70;
          if (64 - v70 >= v78)
          {
            v79 = v78;
          }

          v76 |= ((*(v3 + 8 * v69) >> v70) & ~(-1 << v79)) << v77;
          v77 += v79;
          v80 = v79 + v70;
          v69 += v80 >> 6;
          v70 = v80 & 0x3F;
          v78 -= v79;
        }

        while (v78);
      }

      else
      {
        v76 = 0;
      }

      *(&v158[1] + v63 + 3) = v76;
      v68 = v35 + result;
    }

    else
    {
      v68 = result;
    }

    v67 = (v70 | (v69 << 6)) + v66 - v68;
    ++v63;
  }

  while (v63 != 7);
  v81 = 0;
  v82 = &v163;
  v83 = &v157;
  v84 = 1;
  v85 = v158;
  do
  {
    v87 = v38;
    v88 = v84;
    v89 = *&kDQuadParamTable[10 * *v82 + 642];
    if (v89 >> result <= 1)
    {
      v90 = 1;
    }

    else
    {
      v90 = v89 >> result;
    }

    v91 = v90 >> 1;
    v92 = (1 << (32 - v27)) >> 1;
    if (v90 >> 1 < v92)
    {
      v92 = v90 >> 1;
    }

    v93 = v56;
    v94 = 0x80000000 - v56;
    if (v56)
    {
      v95 = v92;
    }

    else
    {
      v95 = 0;
    }

    v96 = v56 == 0x80000000;
    v97 = (a2 + 4 * v81);
    if (result)
    {
      v98 = v89 + v56;
      v99 = -1 << result;
      v100 = *v83;
      v101 = v94 / v90;
      if (!v100)
      {
        v105 = 0;
        v104 = v95;
        v103 = v96;
        goto LABEL_130;
      }

      v102 = *v85;
      v103 = v101 == v102;
      if (v93 | v102)
      {
        if (HIDWORD(v98))
        {
          v106 = (v99 ^ v102) == -1;
        }

        else
        {
          v106 = 0;
        }

        if (v106)
        {
          v105 = 1;
          v104 = 0xFFFFFFFFLL;
LABEL_130:
          v107 = v104 + v93;
          if (a3 == 4)
          {
            v108 = v107 & 0xFFFFFFFFFFC00000;
            v109 = 2139095039;
            if ((v107 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_140;
            }

            if (v108 == 2143289344)
            {
              v109 = 0x80000000;
              goto LABEL_140;
            }

            if (v108 == 4286578688)
            {
              v109 = -8388609;
              goto LABEL_140;
            }
          }

          v109 = v107;
          if (HIDWORD(v107))
          {
            v109 = -1;
          }

LABEL_140:
          v110 = v109 ^ 0x80000000;
          if (v103)
          {
            v110 = 0;
          }

          if (v64 != 1)
          {
            v110 = v109;
          }

          *(a2 + 4 * v81) = v110;
          if (v100 == 1)
          {
            v111 = v95;
            v112 = v96;
          }

          else
          {
            v113 = *(v158 + 7 * v81 + v105);
            v112 = v101 == v113;
            if (v93 | v113)
            {
              if (HIDWORD(v98) && (v99 ^ v113) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v111 = 0xFFFFFFFFLL;
              }

              else
              {
                v111 = v91 + v90 * v113;
              }
            }

            else
            {
              v111 = 0;
            }

            ++v105;
          }

          v114 = v111 + v93;
          if (a3 == 4)
          {
            v115 = v114 & 0xFFFFFFFFFFC00000;
            v116 = 2139095039;
            if ((v114 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_161;
            }

            if (v115 == 2143289344)
            {
              v116 = 0x80000000;
              goto LABEL_161;
            }

            if (v115 == 4286578688)
            {
              v116 = -8388609;
              goto LABEL_161;
            }
          }

          v116 = v114;
          if (HIDWORD(v114))
          {
            v116 = -1;
          }

LABEL_161:
          v117 = v116 ^ 0x80000000;
          if (v112)
          {
            v117 = 0;
          }

          if (v64 != 1)
          {
            v117 = v116;
          }

          v97[2] = v117;
          if (v100 == 2)
          {
            v118 = v95;
            v119 = v96;
          }

          else
          {
            v120 = *(v158 + 7 * v81 + v105);
            v119 = v101 == v120;
            if (v93 | v120)
            {
              if (HIDWORD(v98) && (v99 ^ v120) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v118 = 0xFFFFFFFFLL;
              }

              else
              {
                v118 = v91 + v90 * v120;
              }
            }

            else
            {
              v118 = 0;
            }

            ++v105;
          }

          v121 = v118 + v93;
          if (a3 == 4)
          {
            v122 = v121 & 0xFFFFFFFFFFC00000;
            v123 = 2139095039;
            if ((v121 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_182;
            }

            if (v122 == 2143289344)
            {
              v123 = 0x80000000;
              goto LABEL_182;
            }

            if (v122 == 4286578688)
            {
              v123 = -8388609;
              goto LABEL_182;
            }
          }

          v123 = v121;
          if (HIDWORD(v121))
          {
            v123 = -1;
          }

LABEL_182:
          v124 = v123 ^ 0x80000000;
          if (v119)
          {
            v124 = 0;
          }

          if (v64 != 1)
          {
            v124 = v123;
          }

          v97[4] = v124;
          if (v100 == 3)
          {
            v125 = v95;
            v126 = v96;
          }

          else
          {
            v127 = *(v158 + 7 * v81 + v105);
            v126 = v101 == v127;
            if (v93 | v127)
            {
              if (HIDWORD(v98) && (v99 ^ v127) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v125 = 0xFFFFFFFFLL;
              }

              else
              {
                v125 = v91 + v90 * v127;
              }
            }

            else
            {
              v125 = 0;
            }

            ++v105;
          }

          v128 = v125 + v93;
          if (a3 == 4)
          {
            v129 = v128 & 0xFFFFFFFFFFC00000;
            v130 = 2139095039;
            if ((v128 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_203;
            }

            if (v129 == 2143289344)
            {
              v130 = 0x80000000;
              goto LABEL_203;
            }

            if (v129 == 4286578688)
            {
              v130 = -8388609;
              goto LABEL_203;
            }
          }

          v130 = v128;
          if (HIDWORD(v128))
          {
            v130 = -1;
          }

LABEL_203:
          v131 = v130 ^ 0x80000000;
          if (v126)
          {
            v131 = 0;
          }

          if (v64 != 1)
          {
            v131 = v130;
          }

          v97[6] = v131;
          if (v100 == 4)
          {
            v132 = v95;
            v133 = v96;
          }

          else
          {
            v134 = *(v158 + 7 * v81 + v105);
            v133 = v101 == v134;
            if (v93 | v134)
            {
              if (HIDWORD(v98) && (v99 ^ v134) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v132 = 0xFFFFFFFFLL;
              }

              else
              {
                v132 = v91 + v90 * v134;
              }
            }

            else
            {
              v132 = 0;
            }

            ++v105;
          }

          v135 = v132 + v93;
          if (a3 == 4)
          {
            v136 = v135 & 0xFFFFFFFFFFC00000;
            v137 = 2139095039;
            if ((v135 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_224;
            }

            if (v136 == 2143289344)
            {
              v137 = 0x80000000;
              goto LABEL_224;
            }

            if (v136 == 4286578688)
            {
              v137 = -8388609;
              goto LABEL_224;
            }
          }

          v137 = v135;
          if (HIDWORD(v135))
          {
            v137 = -1;
          }

LABEL_224:
          v138 = v137 ^ 0x80000000;
          if (v133)
          {
            v138 = 0;
          }

          if (v64 != 1)
          {
            v138 = v137;
          }

          v97[8] = v138;
          if (v100 == 5)
          {
            v139 = v95;
            v140 = v96;
          }

          else
          {
            v141 = *(v158 + 7 * v81 + v105);
            v140 = v101 == v141;
            if (v93 | v141)
            {
              if (HIDWORD(v98) && (v99 ^ v141) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v139 = 0xFFFFFFFFLL;
              }

              else
              {
                v139 = v91 + v90 * v141;
              }
            }

            else
            {
              v139 = 0;
            }

            ++v105;
          }

          v142 = v139 + v93;
          if (a3 == 4)
          {
            v143 = v142 & 0xFFFFFFFFFFC00000;
            v144 = 2139095039;
            if ((v142 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_245;
            }

            if (v143 == 2143289344)
            {
              v144 = 0x80000000;
              goto LABEL_245;
            }

            if (v143 == 4286578688)
            {
              v144 = -8388609;
              goto LABEL_245;
            }
          }

          v144 = v142;
          if (HIDWORD(v142))
          {
            v144 = -1;
          }

LABEL_245:
          v145 = v144 ^ 0x80000000;
          if (v140)
          {
            v145 = 0;
          }

          if (v64 != 1)
          {
            v145 = v144;
          }

          v97[10] = v145;
          if (v100 == 6)
          {
            v146 = v95;
            v147 = v96;
          }

          else
          {
            v148 = *(v158 + 7 * v81 + v105);
            v147 = v101 == v148;
            if (v93 | v148)
            {
              if (HIDWORD(v98) && (v99 ^ v148) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v146 = 0xFFFFFFFFLL;
              }

              else
              {
                v146 = v91 + v90 * v148;
              }
            }

            else
            {
              v146 = 0;
            }

            ++v105;
          }

          v149 = v146 + v93;
          if (a3 == 4)
          {
            v150 = v149 & 0xFFFFFFFFFFC00000;
            v151 = 2139095039;
            if ((v149 & 0xFFFFFFFFFFC00000) == 0x7F800000)
            {
              goto LABEL_266;
            }

            if (v150 == 2143289344)
            {
              v151 = 0x80000000;
              goto LABEL_266;
            }

            if (v150 == 4286578688)
            {
              v151 = -8388609;
              goto LABEL_266;
            }
          }

          v151 = v149;
          if (HIDWORD(v149))
          {
            v151 = -1;
          }

LABEL_266:
          v152 = v151 ^ 0x80000000;
          if (v147)
          {
            v152 = 0;
          }

          if (v64 != 1)
          {
            v152 = v151;
          }

          v97[12] = v152;
          if (v100 != 7)
          {
            v153 = *(v158 + 7 * v81 + v105);
            v96 = v101 == v153;
            if (v93 | v153)
            {
              if (HIDWORD(v98) && (v99 ^ v153) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v95 = 0xFFFFFFFFLL;
              }

              else
              {
                v95 = v91 + v90 * v153;
              }
            }

            else
            {
              v95 = 0;
            }
          }

          v154 = v95 + v93;
          v38 = v87;
          if (a3 != 4)
          {
            goto LABEL_282;
          }

          v155 = v154 & 0xFFFFFFFFFFC00000;
          v86 = 2139095039;
          if ((v154 & 0xFFFFFFFFFFC00000) != 0x7F800000)
          {
            if (v155 != 2143289344)
            {
              if (v155 == 4286578688)
              {
                v86 = -8388609;
                goto LABEL_96;
              }

LABEL_282:
              v86 = v95 + v93;
              if (HIDWORD(v154))
              {
                v86 = -1;
              }

              goto LABEL_96;
            }

            v86 = 0x80000000;
          }

LABEL_96:
          LODWORD(v27) = v86 ^ 0x80000000;
          if (v96)
          {
            LODWORD(v27) = 0;
          }

          if (v64 != 1)
          {
            LODWORD(v27) = v86;
          }

          goto LABEL_100;
        }

        v104 = v91 + v90 * v102;
      }

      else
      {
        v104 = 0;
      }

      v105 = 1;
      goto LABEL_130;
    }

    if (a3 != 4)
    {
      LODWORD(v27) = v56 ^ 0x80000000;
      if (v90 > v94)
      {
        LODWORD(v27) = 0;
      }

      if (v64 != 1)
      {
        LODWORD(v27) = v56;
      }

      *v97 = v27;
      v97[2] = v27;
      v97[4] = v27;
      v97[6] = v27;
      v97[8] = v27;
      v97[10] = v27;
      v97[12] = v27;
      goto LABEL_128;
    }

    if ((v56 & 0xFFC00000) == 0x7F800000)
    {
      *v97 = 2139095039;
      v97[2] = 2139095039;
      v97[4] = 2139095039;
      v97[6] = 2139095039;
      v97[8] = 2139095039;
      v97[10] = 2139095039;
      LODWORD(v27) = 2139095039;
      v97[12] = 2139095039;
LABEL_128:
      v38 = v87;
      goto LABEL_100;
    }

    v38 = v87;
    if (v56 <= 2143289343)
    {
      if ((v56 & 0xFFC00000) == 0xFF800000)
      {
        LODWORD(v27) = -8388609;
      }

      else
      {
        LODWORD(v27) = v56;
      }
    }

    else
    {
      LODWORD(v27) = 0x80000000;
    }

    *v97 = v27;
    v97[2] = v27;
    v97[4] = v27;
    v97[6] = v27;
    v97[8] = v27;
    v97[10] = v27;
    v97[12] = v27;
LABEL_100:
    v84 = 0;
    v97[14] = v27;
    v83 = &v156;
    v85 = &v158[1] + 3;
    v56 = v57;
    result = v35;
    LOBYTE(v27) = v38;
    v82 = &v164;
    v81 = 1;
  }

  while ((v88 & 1) != 0);
  return result;
}