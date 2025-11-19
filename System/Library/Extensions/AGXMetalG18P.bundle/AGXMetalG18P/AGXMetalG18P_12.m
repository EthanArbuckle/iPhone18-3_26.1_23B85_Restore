uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x7Fu:
      v8 = *(a3 + 16);
      v9 = *(a3 + 32);
      v10 = *(a3 + 48);
      v11 = *(a3 + 64);
      v12 = *(a3 + 80);
      v13 = *(a3 + 96);
      v14 = *(a3 + 112);
      v15 = (a1 + 32);
      *a1 = *a3;
      *(a1 + 16) = v8;
      v16 = (a1 + a2);
      *v15 = v11;
      v15[1] = v12;
      *v16 = v9;
      v16[1] = v10;
      v16 += 2;
      *v16 = v13;
      v16[1] = v14;
      return 128;
    case 3u:
      v6 = vld1q_dup_f32(a3);
      *a1 = v6;
      *(a1 + 16) = v6;
      *(a1 + 32) = v6;
      *(a1 + 48) = v6;
      v7 = (a1 + a2);
      *v7 = v6;
      v7[1] = v6;
      v7[2] = v6;
      v7[3] = v6;
      return 4;
    case 0u:
      v4 = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = (a1 + a2);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      return v4;
  }

  v17 = 8 * (a3 & 7);
  v18 = a3 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 42;
  v20 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v17;
  if (v17 >= 0x17)
  {
    v20 |= *(v18 + 8) << (-8 * (a3 & 7u));
  }

  v21 = vdupq_n_s32(v20 & 0x1F);
  v22 = (8 * (a3 & 7)) | 0x400;
  v23.i64[0] = 0x300000003;
  v23.i64[1] = 0x300000003;
  v24 = vbicq_s8(vdupq_n_s32(((v20 >> 5) & 0x1F) + 1), vceqq_s32((*&v21 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v23));
  v23.i64[0] = 0x404040404040404;
  v23.i64[1] = 0x404040404040404;
  v25 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v21 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v23);
  if (vmaxvq_s8(v25) < 1)
  {
    v34 = 0;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v54 = v24;
    v53 = v24;
    v52 = v24;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v51 = v24;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v55.i64[0] = -1;
    v55.i64[1] = -1;
  }

  else
  {
    v26 = vmovl_u8(*&vpaddq_s8(v25, v25));
    v27 = vmovl_u16(*&vpaddq_s16(v26, v26));
    v28 = vpaddq_s32(v27, v27).u64[0];
    v29.i64[0] = v28;
    v29.i64[1] = HIDWORD(v28);
    v30 = v29;
    v31 = vaddvq_s64(v29);
    v32 = v31 + v19;
    v33 = v31 <= 0x80 && v22 >= v32;
    v34 = !v33;
    v35 = 0uLL;
    if (v33)
    {
      v36 = v19 & 0x3A;
      v37 = vaddq_s64(vzip1q_s64(0, v30), vdupq_n_s64(v36));
      v38 = (v18 + ((v19 >> 3) & 8));
      v35 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v38, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v37)), vshlq_u64(vdupq_lane_s64(v38->i64[0], 0), vnegq_s64(v37)));
      if (v31 + v36 >= 0x81)
      {
        v35 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v38[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v37)), vshlq_u64(vdupq_laneq_s64(v38[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v37))), v35);
      }

      v19 = v32;
    }

    v39 = vzip1_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v40.i64[0] = v39.u32[0];
    v40.i64[1] = v39.u32[1];
    v41 = vshlq_u64(v35, vnegq_s64(v40));
    v42 = vuzp1q_s32(vzip1q_s64(v35, v41), vzip2q_s64(v35, v41));
    v43 = vshlq_u32(v42, vnegq_s32((*&v26 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v44 = vuzp1q_s16(vzip1q_s32(v42, v43), vzip2q_s32(v42, v43));
    v45 = vzip1q_s16(v44, vshlq_u16(v44, vnegq_s16(vmovl_u8(vuzp1_s8(*v25.i8, *v21.i8)))));
    *v45.i8 = vmovn_s16(v45);
    v42.i64[0] = 0x101010101010101;
    v42.i64[1] = 0x101010101010101;
    v46 = vshlq_s8(v42, v25);
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    v46.i32[0] = vandq_s8(vaddq_s8(v46, v42), v45).u32[0];
    v47 = vdupq_n_s32(v46.i8[0]);
    v48 = vdupq_n_s32(v46.i8[1]);
    v49 = vdupq_n_s32(v46.i8[2]);
    v50 = vdupq_n_s32(v46.i8[3]);
    v51 = vsubq_s32(v24, v47);
    v52 = vsubq_s32(v24, v48);
    v53 = vsubq_s32(v24, v49);
    v54 = vsubq_s32(v24, v50);
    v55 = vceqzq_s32(v47);
    v56 = vceqzq_s32(v48);
    v57 = vceqzq_s32(v49);
    v58 = vceqzq_s32(v50);
  }

  v59 = 0uLL;
  v60 = vandq_s8(vextq_s8(vtstq_s32((*&v21 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v21 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v24);
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v64 + v19;
  if (v64 <= 0x80 && v22 >= v65)
  {
    v67 = v19 & 0x3F;
    v68 = vaddq_s64(vzip1q_s64(0, v63), vdupq_n_s64(v67));
    v69 = (v18 + 8 * (v19 >> 6));
    v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v69, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v68)), vshlq_u64(vdupq_lane_s64(v69->i64[0], 0), vnegq_s64(v68)));
    if (v64 + v67 >= 0x81)
    {
      v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v69[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v68)), vshlq_u64(vdupq_laneq_s64(v69[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v68))), v59);
    }

    v19 = v65;
  }

  else
  {
    v34 = 1;
  }

  v70 = v20 & 3;
  v71 = 0uLL;
  if (v70 == 2)
  {
    v72 = v19 + 16;
    if (v22 >= v19 + 16)
    {
      v76 = (v18 + 8 * (v19 >> 6));
      v77 = *v76 >> v19;
      if ((v19 & 0x3F) >= 0x31)
      {
        v77 |= v76[1] << -(v19 & 0x3F);
      }

      v73 = v77;
      v74 = v19 + 32;
    }

    else
    {
      v73 = 0;
      v34 = 1;
      v74 = v19 + 16;
      v72 = v19;
    }

    v75 = v73;
    if (v22 >= v74)
    {
      v78 = (v18 + 8 * (v72 >> 6));
      v79 = *v78 >> v72;
      if ((v72 & 0x3F) >= 0x31)
      {
        v79 |= v78[1] << -(v72 & 0x3F);
      }

      v75.i32[1] = v79;
    }

    else
    {
      v34 = 1;
      v74 = v72;
    }
  }

  else
  {
    v74 = v19;
    v75 = 0;
  }

  v80 = vextq_s8(0, v51, 0xCuLL);
  v81 = vpaddq_s32(v80, v80).u64[0];
  v82.i64[0] = v81;
  v82.i64[1] = HIDWORD(v81);
  v83 = v82;
  v84 = vaddvq_s64(v82);
  v85 = v84 + v74;
  if (v84 <= 0x80 && v22 >= v85)
  {
    v87 = v74 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v83), vdupq_n_s64(v87));
    v89 = (v18 + 8 * (v74 >> 6));
    v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v84 + v87 >= 0x81)
    {
      v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v71);
    }

    v74 = v85;
  }

  else
  {
    v34 = 1;
  }

  v90 = vpaddq_s32(v51, v51).u64[0];
  v91.i64[0] = v90;
  v91.i64[1] = HIDWORD(v90);
  v92 = v91;
  v93 = vaddvq_s64(v91);
  v94 = v93 + v74;
  v95 = 0uLL;
  if (v93 <= 0x80 && v22 >= v94)
  {
    v98 = v74 & 0x3F;
    v99 = vaddq_s64(vzip1q_s64(0, v92), vdupq_n_s64(v98));
    v100 = (v18 + 8 * (v74 >> 6));
    v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v100, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v100->i64[0], 0), vnegq_s64(v99)));
    if (v93 + v98 >= 0x81)
    {
      v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v100[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v100[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v97);
    }

    v74 = v94;
  }

  else
  {
    v34 = 1;
    v97 = 0uLL;
  }

  v101 = vpaddq_s32(v52, v52).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v74;
  if (v104 <= 0x80 && v22 >= v105)
  {
    v107 = v74 & 0x3F;
    v108 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v107));
    v109 = (v18 + 8 * (v74 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
    if (v104 + v107 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v95);
    }

    v74 = v105;
  }

  else
  {
    v34 = 1;
  }

  v110 = 0uLL;
  if (v104 > 0x80 || (v111 = v104 + v74, v22 < v104 + v74))
  {
    v111 = v74;
    v34 = 1;
    v115 = 0uLL;
  }

  else
  {
    v112 = v74 & 0x3F;
    v113 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v112));
    v114 = (v18 + 8 * (v74 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v114, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v113)), vshlq_u64(vdupq_lane_s64(v114->i64[0], 0), vnegq_s64(v113)));
    if (v104 + v112 >= 0x81)
    {
      v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v114[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v113)), vshlq_u64(vdupq_laneq_s64(v114[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v113))), v115);
    }
  }

  v116 = vpaddq_s32(v53, v53).u64[0];
  v117.i64[0] = v116;
  v117.i64[1] = HIDWORD(v116);
  v118 = v117;
  v119 = vaddvq_s64(v117);
  v120 = v119;
  if (v119 > 0x80 || (v121 = v119 + v111, v22 < v119 + v111))
  {
    v121 = v111;
    v34 = 1;
  }

  else
  {
    v122 = v111 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v118), vdupq_n_s64(v122));
    v124 = (v18 + 8 * (v111 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + v122 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v110);
    }
  }

  v125 = 0uLL;
  if (v120 > 0x80 || (v126 = v120 + v121, v22 < v120 + v121))
  {
    v126 = v121;
    v34 = 1;
    v130 = 0uLL;
  }

  else
  {
    v127 = v121 & 0x3F;
    v128 = vaddq_s64(vzip1q_s64(0, v118), vdupq_n_s64(v127));
    v129 = (v18 + 8 * (v121 >> 6));
    v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
    if (v120 + v127 >= 0x81)
    {
      v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v130);
    }
  }

  v131 = vpaddq_s32(v54, v54).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  if (v134 > 0x80 || (v136 = v134 + v126, v22 < v134 + v126))
  {
    v136 = v126;
    v34 = 1;
  }

  else
  {
    v137 = v126 & 0x3F;
    v138 = vaddq_s64(vzip1q_s64(0, v133), vdupq_n_s64(v137));
    v139 = (v18 + 8 * (v126 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
    if (v135 + v137 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v125);
    }
  }

  if (v135 > 0x80 || v22 < v135 + v136)
  {
    goto LABEL_95;
  }

  v140 = vzip1_s32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
  v141.i64[0] = v140.u32[0];
  v141.i64[1] = v140.u32[1];
  v142.i64[0] = 0x1F0000001FLL;
  v142.i64[1] = 0x1F0000001FLL;
  v143 = vaddq_s32(v54, v142);
  v144.i64[0] = 0x2000000020;
  v144.i64[1] = 0x2000000020;
  v145 = vsubq_s32(v144, v54);
  v146 = (v18 + 8 * (v136 >> 6));
  v147 = vaddq_s64(vzip1q_s64(0, v133), vdupq_n_s64(v136 & 0x3F));
  v148 = vnegq_s64(v141);
  v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v147)));
  if (v135 + (v136 & 0x3F) < 0x81)
  {
    if (v34)
    {
      goto LABEL_95;
    }

    v154 = vshlq_u64(v149, v148);
    v152 = vzip2q_s64(v149, v154);
    v153 = vzip1q_s64(v149, v154);
  }

  else
  {
    if (v34)
    {
      goto LABEL_95;
    }

    v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v149);
    v151 = vshlq_u64(v150, v148);
    v152 = vzip2q_s64(v150, v151);
    v153 = vzip1q_s64(v150, v151);
  }

  v155 = vshlq_s32(vshlq_s32(vuzp1q_s32(v153, v152), v145), v143);
  v4 = a4 + 1;
  if (v22 + 8 * v4 - (v135 + v136) - 1024 >= 9)
  {
LABEL_95:
    v156 = 0;
    v157 = 0;
    v158 = 8 * (&v263 & 7);
    v159 = 32;
    do
    {
      v160 = 64 - v158;
      if (64 - v158 >= v159)
      {
        v160 = v159;
      }

      *&v262[8 * v156] |= ((0xFFFFFFFFFFFFFFFFLL >> v157) & ~(-1 << v160)) << v158;
      v157 += v160;
      v161 = v160 + v158;
      v156 += v161 >> 6;
      v158 = v161 & 0x3F;
      v159 -= v160;
    }

    while (v159);
    v4 = 0;
    v162 = (a1 + a2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *v162 = 0;
    v162[1] = 0;
    return v4;
  }

  v258 = v55;
  v259 = v56;
  v260 = v57;
  v261 = v58;
  v164 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v165 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
  v166 = vzip1_s32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  v167 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
  v168 = vzip1_s32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
  v169.i64[0] = v164.u32[0];
  v169.i64[1] = v164.u32[1];
  v170 = v169;
  v169.i64[0] = v165.u32[0];
  v169.i64[1] = v165.u32[1];
  v171 = v169;
  v169.i64[0] = v166.u32[0];
  v169.i64[1] = v166.u32[1];
  v172 = v169;
  v169.i64[0] = v167.u32[0];
  v169.i64[1] = v167.u32[1];
  v173 = v169;
  v169.i64[0] = v168.u32[0];
  v169.i64[1] = v168.u32[1];
  v174 = vnegq_s64(v173);
  v175 = vnegq_s64(v169);
  v176 = vshlq_u64(v59, vnegq_s64(v170));
  v177 = vshlq_u64(v71, vnegq_s64(v171));
  v178 = vshlq_u64(v97, vnegq_s64(v172));
  v179 = vshlq_u64(v95, v174);
  v180 = vshlq_u64(v115, v174);
  v181 = vshlq_u64(v110, v175);
  v182 = vshlq_u64(v130, v175);
  v183 = vzip2q_s64(v59, v176);
  v184 = vzip1q_s64(v59, v176);
  v176.i64[0] = 0x2000000020;
  v176.i64[1] = 0x2000000020;
  v185 = vzip2q_s64(v71, v177);
  v186 = vzip1q_s64(v71, v177);
  v177.i64[0] = 0x2000000020;
  v177.i64[1] = 0x2000000020;
  v187 = vzip2q_s64(v97, v178);
  v188 = vzip1q_s64(v97, v178);
  v189 = vzip2q_s64(v95, v179);
  v190 = vzip1q_s64(v95, v179);
  v179.i64[0] = 0x2000000020;
  v179.i64[1] = 0x2000000020;
  v191 = vzip2q_s64(v115, v180);
  v192 = vzip1q_s64(v115, v180);
  v193 = vzip2q_s64(v110, v181);
  v194 = vzip1q_s64(v110, v181);
  v181.i64[0] = 0x2000000020;
  v181.i64[1] = 0x2000000020;
  v195 = vzip2q_s64(v130, v182);
  v196 = vzip1q_s64(v130, v182);
  v197 = v20 >> 10;
  v198 = vuzp1q_s32(v184, v183);
  v182.i64[0] = 0x1F0000001FLL;
  v182.i64[1] = 0x1F0000001FLL;
  v199 = vuzp1q_s32(v186, v185);
  v186.i64[0] = 0x1F0000001FLL;
  v186.i64[1] = 0x1F0000001FLL;
  v200 = vsubq_s32(v177, v80);
  v201 = vuzp1q_s32(v188, v187);
  v202 = vsubq_s32(v177, v51);
  v203 = vuzp1q_s32(v190, v189);
  v177.i64[0] = 0x1F0000001FLL;
  v177.i64[1] = 0x1F0000001FLL;
  v204 = vsubq_s32(v179, v52);
  v205 = vuzp1q_s32(v192, v191);
  v206 = vuzp1q_s32(v194, v193);
  v192.i64[0] = 0x1F0000001FLL;
  v192.i64[1] = 0x1F0000001FLL;
  v207 = vsubq_s32(v181, v53);
  v208 = vaddq_s32(v80, v186);
  v209 = vaddq_s32(v51, v186);
  v210 = vshlq_s32(v201, v202);
  v211 = vaddq_s32(v52, v177);
  v212 = vaddq_s32(v53, v192);
  v213 = vshlq_s32(vshlq_s32(v198, vsubq_s32(v176, v60)), vaddq_s32(v60, v182));
  v214 = vshlq_s32(vshlq_s32(v199, v200), v208);
  v215 = vshlq_s32(v210, v209);
  v216 = vshlq_s32(vshlq_s32(v203, v204), v211);
  v217 = vshlq_s32(vshlq_s32(v205, v204), v211);
  v218 = vshlq_s32(vshlq_s32(v206, v207), v212);
  v219 = vshlq_s32(vshlq_s32(vuzp1q_s32(v196, v195), v207), v212);
  v220 = vshlq_u64(v125, v148);
  v221 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v125, v220), vzip2q_s64(v125, v220)), v145), v143);
  if (v70 == 2)
  {
    v222 = vdupq_lane_s32(v75, 1);
    v223.i64[0] = 0xFFFFFFFF00000000;
    v223.i64[1] = 0xFFFFFFFF00000000;
    v222.i64[0] = 0;
    v224 = vaddq_s32(vandq_s8(vdupq_lane_s32(v75, 0), v223), v222);
    v225 = vmlaq_lane_s32(v222, xmmword_29D2F11A0, v75, 0);
    v214 = vaddq_s32(v214, v224);
    *v223.i8 = vshl_u32(v75, 0x100000002);
    v226 = vdupq_lane_s32(*v223.i8, 1);
    v215 = vaddq_s32(v215, v225);
    v216 = vaddq_s32(vaddq_s32(v224, v226), v216);
    v227 = vdupq_lane_s32(*v223.i8, 0);
    v217 = vaddq_s32(vaddq_s32(v225, v226), v217);
    v218 = vaddq_s32(vaddq_s32(v224, v227), v218);
    v219 = vaddq_s32(vaddq_s32(v225, v227), v219);
    v228 = vdupq_lane_s32(vadd_s32(*v223.i8, *v226.i8), 0);
    v221 = vaddq_s32(vaddq_s32(v228, v224), v221);
    v155 = vaddq_s32(vaddq_s32(v228, v225), v155);
  }

  v229 = vdupq_n_s32(v197);
  v230 = vdupq_lane_s32(*v213.i8, 0);
  v231 = vandq_s8(v230, v258);
  v232 = vsubq_s32(vaddq_s32(vandq_s8(v213, v258), v214), v231);
  v233 = vsubq_s32(v215, v231);
  v234 = vandq_s8(v230, v259);
  v235 = vsubq_s32(v216, v234);
  v236 = vsubq_s32(v217, v234);
  v237 = vandq_s8(v230, v260);
  v238 = vsubq_s32(v218, v237);
  v239 = vsubq_s32(v219, v237);
  v240 = vandq_s8(v230, v261);
  v241 = vsubq_s32(v221, v240);
  v242 = vsubq_s32(v155, v240);
  v240.i64[0] = 0x100000001;
  v240.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v21 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v240)))
  {
    v243 = vnegq_s32((*&v21 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v244 = v233;
    v244.i32[3] = v232.i32[0];
    v245 = v232;
    v245.i32[0] = v233.i32[3];
    v264.val[0] = vbslq_s8(v243, v245, v232);
    v264.val[1] = vbslq_s8(v243, v244, v233);
    v244.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v244.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v265.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v264, xmmword_29D2F0F80), v243), v264.val[0]);
    v265.val[1] = vaddq_s32(v264.val[1], vandq_s8(vqtbl2q_s8(v264, v244), v243));
    v232 = vaddq_s32(vandq_s8(vqtbl2q_s8(v265, xmmword_29D2F0F90), v243), v265.val[0]);
    v233 = vaddq_s32(v265.val[1], vandq_s8(vqtbl2q_s8(v265, v244), v243));
    v265.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FA0), v243), v235);
    v265.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FB0), v243), v236);
    v235 = vaddq_s32(vandq_s8(vqtbl2q_s8(v265, xmmword_29D2F0FC0), v243), v265.val[0]);
    v236 = vaddq_s32(v265.val[1], vandq_s8(vqtbl2q_s8(v265, v244), v243));
    v265.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0FD0), v243), v238);
    v265.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v238.i8, xmmword_29D2F0F80), v243), v239);
    v238 = vaddq_s32(vandq_s8(vqtbl2q_s8(v265, v244), v243), v265.val[0]);
    v239 = vaddq_s32(v265.val[1], vandq_s8(vqtbl2q_s8(v265, xmmword_29D2F0FE0), v243));
    v264.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v241.i8, xmmword_29D2F0FF0), v243), v241);
    v264.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v241.i8, xmmword_29D2F0F80), v243), v242);
    v241 = vaddq_s32(vandq_s8(vqtbl2q_s8(v264, v244), v243), v264.val[0]);
    v242 = vaddq_s32(v264.val[1], vandq_s8(vqtbl2q_s8(v264, xmmword_29D2F1000), v243));
  }

  v246 = vaddq_s32(v229, v232);
  v247 = vaddq_s32(v233, v229);
  v248 = vaddq_s32(v235, v229);
  v249 = vaddq_s32(v236, v229);
  v250 = vaddq_s32(v238, v229);
  v251 = vaddq_s32(v239, v229);
  v252 = vaddq_s32(v241, v229);
  v253 = vaddq_s32(v242, v229);
  v254.i64[0] = 0x1000000010;
  v254.i64[1] = 0x1000000010;
  v255 = vcgtq_u32(v254, v21);
  v254.i64[0] = -1;
  v254.i64[1] = -1;
  v256 = (a1 + 32);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v246, v254), v255), v246);
  *(a1 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v247, v254), v255), v247);
  v257 = (a1 + a2);
  *v256 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v250, v254), v255), v250);
  v256[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v251, v254), v255), v251);
  *v257 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v248, v254), v255), v248);
  v257[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v249, v254), v255), v249);
  v257 += 2;
  *v257 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v252, v254), v255), v252);
  v257[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v253, v254), v255), v253);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 256, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 320, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 512, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 768, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 576, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 832, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 32);
  v11 = vdupq_lane_s32(*a3, 0);
  v12 = vsubq_s32(*a3, v11);
  v13 = vsubq_s32(v7, v11);
  v14 = vsubq_s32(v9, v11);
  v472 = *(a3 + a4 + 16);
  v15 = vsubq_s32(v472, v11);
  v16 = vsubq_s32(v8, v11);
  v474 = *(a3 + 48);
  v17 = vsubq_s32(v474, v11);
  v18 = vsubq_s32(v10, v11);
  v473 = *(a3 + a4 + 48);
  v19 = vsubq_s32(v473, v11);
  v20 = vmaxq_s32(v12, v13);
  v21 = vminq_s32(v12, v13);
  v20.i32[0] = vmaxvq_s32(v20);
  v21.i32[0] = vminvq_s32(v21);
  v22 = vdupq_lane_s32(*v20.i8, 0);
  v23 = vdupq_lane_s32(*v21.i8, 0);
  v24.i64[0] = 0x8000000080000000;
  v24.i64[1] = 0x8000000080000000;
  v25 = vmaxq_s32(v22, v24);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v27 = vminq_s32(v23, v26);
  v28 = vzip1q_s32(v22, v23);
  v29.i64[0] = 0x2000000020;
  v29.i64[1] = 0x2000000020;
  v30 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v28)), vceqzq_s32(v28));
  v31 = vpmaxq_s32(v30, v30);
  v32 = vmaxq_s32(v14, v15);
  v33 = vminq_s32(v14, v15);
  v32.i32[0] = vmaxvq_s32(v32);
  v33.i32[0] = vminvq_s32(v33);
  v34 = vdupq_lane_s32(*v32.i8, 0);
  v35 = vdupq_lane_s32(*v33.i8, 0);
  v36 = vmaxq_s32(v25, v34);
  v37 = vminq_s32(v27, v35);
  v38 = vzip1q_s32(v34, v35);
  v39 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v38)), vceqzq_s32(v38));
  v40 = vpmaxq_s32(v39, v39);
  v41 = vmaxq_s32(v16, v17);
  v42 = vminq_s32(v16, v17);
  v41.i32[0] = vmaxvq_s32(v41);
  v43 = vdupq_lane_s32(*v41.i8, 0);
  v42.i32[0] = vminvq_s32(v42);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v45 = vmaxq_s32(v36, v43);
  v46 = vminq_s32(v37, v44);
  v47 = vzip1q_s32(v43, v44);
  v48 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v47)), vceqzq_s32(v47));
  v49 = vmaxq_s32(v18, v19);
  v50 = vminq_s32(v18, v19);
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
    v75 = vsubq_s32(v61, v71);
    v76 = vsubq_s32(v61, v72);
    v77 = vsubq_s32(v61, v73);
    v78 = vsubq_s32(v61, v74);
    v79 = vceqq_s32(vaddq_s32(v74, v73), vnegq_s32(vaddq_s32(v71, v72)));
    v72.i64[0] = 0x400000004;
    v72.i64[1] = 0x400000004;
    v80 = vbicq_s8(v72, v79);
    v81 = vorrq_s8(v80, v70);
    if (a5 >= 2 && a6)
    {
      v464 = v67;
      v82 = vsub_s32(*&vextq_s8(v6, v6, 4uLL), vdup_lane_s32(*v6.i8, 0));
      v83 = vshl_n_s32(v82, 0x10uLL);
      v84 = v83.i32[1];
      v85 = vshl_s32(v83, 0xFFFFFFF1FFFFFFF2);
      v86 = v83.i32[1] >> 16;
      v87 = vdupq_n_s32(v83.i32[0] >> 16);
      v88 = v77;
      v89 = vdupq_n_s32(v86);
      v90.i64[0] = 0xFFFFFFFF00000000;
      v90.i64[1] = 0xFFFFFFFF00000000;
      v89.i64[0] = 0;
      v475 = v75;
      v91 = vaddq_s32(v89, vandq_s8(v87, v90));
      v92 = vmlaq_s32(v89, v87, xmmword_29D2F11A0);
      v93 = vsubq_s32(v12, v91);
      v94 = vsubq_s32(v13, v92);
      v95 = v85.i32[1];
      v96 = vdupq_n_s32(-v85.i32[1]);
      v97 = vsubq_s32(vaddq_s32(v96, v14), v91);
      v98 = vsubq_s32(vaddq_s32(v15, v96), v92);
      v99 = v85.i32[0];
      v100 = vdupq_n_s32(-v85.i32[0]);
      v101 = vsubq_s32(vaddq_s32(v100, v16), v91);
      v102 = vaddq_s32(vsubq_s32(v100, v92), v17);
      v103 = vdupq_n_s32(-v99 - v95);
      v104 = v18;
      v105 = vsubq_s32(vaddq_s32(v103, v18), v91);
      v106 = vaddq_s32(vsubq_s32(v103, v92), v19);
      v107 = vmaxq_s32(v93, v94);
      v460 = v94;
      v462 = v93;
      v108 = vminq_s32(v93, v94);
      v107.i32[0] = vmaxvq_s32(v107);
      v108.i32[0] = vminvq_s32(v108);
      v109 = vdupq_lane_s32(*v107.i8, 0);
      v110 = vdupq_lane_s32(*v108.i8, 0);
      v93.i64[0] = 0x8000000080000000;
      v93.i64[1] = 0x8000000080000000;
      v465 = v17;
      v466 = v19;
      v111 = vmaxq_s32(v109, v93);
      v112 = vminq_s32(v110, v93);
      v113 = vzip1q_s32(v109, v110);
      v90.i64[0] = 0x2000000020;
      v90.i64[1] = 0x2000000020;
      v114 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v113)), vceqzq_s32(v113));
      v115 = vpmaxq_s32(v114, v114);
      v116 = vmaxq_s32(v97, v98);
      v456 = v98;
      v458 = v97;
      v117 = vminq_s32(v97, v98);
      v116.i32[0] = vmaxvq_s32(v116);
      v117.i32[0] = vminvq_s32(v117);
      v118 = vdupq_lane_s32(*v116.i8, 0);
      v119 = vdupq_lane_s32(*v117.i8, 0);
      v120 = vmaxq_s32(v111, v118);
      v121 = vminq_s32(v112, v119);
      v122 = vzip1q_s32(v118, v119);
      v123 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v122)), vceqzq_s32(v122));
      v471 = v13;
      v124 = vpmaxq_s32(v123, v123);
      v125 = vmaxq_s32(v101, v102);
      v454 = v101;
      v448 = v105;
      v450 = v102;
      v126 = vminq_s32(v101, v102);
      v125.i32[0] = vmaxvq_s32(v125);
      v126.i32[0] = vminvq_s32(v126);
      v127 = vdupq_lane_s32(*v125.i8, 0);
      v128 = vdupq_lane_s32(*v126.i8, 0);
      v129 = vmaxq_s32(v120, v127);
      v130 = vminq_s32(v121, v128);
      v131 = vzip1q_s32(v127, v128);
      v132 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v131)), vceqzq_s32(v131));
      v133 = v76;
      v134 = vpmaxq_s32(v132, v132);
      v135 = vmaxq_s32(v105, v106);
      v446 = v106;
      v136 = vminq_s32(v105, v106);
      v135.i32[0] = vmaxvq_s32(v135);
      v136.i32[0] = vminvq_s32(v136);
      v137 = vdupq_lane_s32(*v135.i8, 0);
      v138 = vdupq_lane_s32(*v136.i8, 0);
      v139 = vmaxq_s32(v129, v137);
      v140 = vzip1q_s32(v137, v138);
      v141 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v140)), vceqzq_s32(v140));
      v142 = v12;
      v143 = vpmaxq_s32(v141, v141);
      v144 = vmaxq_s32(vmaxq_s32(v115, v124), vmaxq_s32(v134, v143));
      v452 = vminq_s32(v130, v138);
      v145 = vclzq_s32(vsubq_s32(v139, v452));
      v146 = vsubq_s32(v90, v145);
      v147 = vcgtq_s32(v144, v146);
      v148 = vminq_s32(v146, v144);
      v94.i64[0] = 0x200000002;
      v94.i64[1] = 0x200000002;
      v146.i64[0] = 0xA0000000ALL;
      v146.i64[1] = 0xA0000000ALL;
      v149 = vbslq_s8(v147, v146, v94);
      v146.i64[0] = 0x100000001;
      v146.i64[1] = 0x100000001;
      v150 = vmaxq_s32(v148, v146);
      v94.i64[0] = 0xF0000000FLL;
      v94.i64[1] = 0xF0000000FLL;
      v151 = v16;
      v152 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v115), v94), 0);
      v153 = v15;
      v154 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v124), v94), 0);
      v467 = v78;
      v155 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v134), v94), 0);
      v156 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v143), v94), 0);
      v157 = vsubq_s32(v150, v152);
      v158 = vsubq_s32(v150, v154);
      v159 = vsubq_s32(v150, v155);
      v160 = vsubq_s32(v150, v156);
      v161 = vnegq_s32(vaddq_s32(v152, v154));
      v93.i64[0] = 0x400000004;
      v93.i64[1] = 0x400000004;
      v162 = vorrq_s8(vbicq_s8(v93, vceqq_s32(vaddq_s32(v156, v155), v161)), v149);
      LOWORD(v95) = v82.i16[0];
      *v93.i8 = vqmovn_u32(v162);
      v154.i64[0] = 0x8000800080008;
      v154.i64[1] = 0x8000800080008;
      *v161.i8 = vqmovn_u32(v150);
      v163 = vbicq_s8(v161, vceqzq_s16(vandq_s8(v93, v154)));
      v94.i64[0] = 0x2000200020002;
      v94.i64[1] = 0x2000200020002;
      v164.i64[0] = 0x10001000100010;
      v164.i64[1] = 0x10001000100010;
      v165 = vandq_s8(vshlq_n_s16(v93, 2uLL), v164);
      v166.i64[0] = 0x3000300030003;
      v166.i64[1] = 0x3000300030003;
      v167.i64[0] = 0x20002000200020;
      v167.i64[1] = 0x20002000200020;
      v168 = vaddq_s16(v163, v165);
      *v165.i8 = vqmovn_u32(v157);
      v169.i64[0] = 0x7000700070007;
      v169.i64[1] = 0x7000700070007;
      v170 = vmlaq_s16(vaddq_s16(v168, vandq_s8(vceqq_s16(vandq_s8(v93, v166), v94), v167)), v165, v169);
      v171 = vaddq_s32(vaddq_s32(v159, v158), v160);
      *v171.i8 = vqmovn_u32(v171);
      v172 = vaddq_s16(v170, vshlq_n_s16(v171, 3uLL));
      v470 = v81;
      *v170.i8 = vqmovn_u32(v81);
      v173 = vceqzq_s16(vandq_s8(v170, v154));
      *v154.i8 = vqmovn_u32(v61);
      v174 = vbicq_s8(v154, v173);
      v175 = vandq_s8(vshlq_n_s16(v170, 2uLL), v164);
      v176 = vaddq_s16(vaddq_s16(v174, v175), vandq_s8(vceqq_s16(vandq_s8(v170, v166), v94), v167));
      v170.i64[1] = v475.i64[1];
      *v170.i8 = vqmovn_u32(v475);
      v177 = vmlaq_s16(v176, v170, v169);
      v178 = vaddq_s32(vaddq_s32(v88, v133), v467);
      *v175.i8 = vqmovn_u32(v178);
      v179 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v177, vshlq_n_s16(v175, 3uLL)), v172)), 0);
      v63 = v84 & 0xFFFF0000 | v95;
      v180 = vaddvq_s32(v179);
      if (v180)
      {
        v181.i64[0] = 0x1F0000001FLL;
        v181.i64[1] = 0x1F0000001FLL;
        v182 = vsubq_s32(v181, v145);
        v183.i64[0] = -1;
        v183.i64[1] = -1;
        v184 = vandq_s8(vsubq_s32(vshlq_s32(v183, v182), v452), v147);
        v185 = vcltzq_s32(vshlq_n_s32(v179, 0x1FuLL));
        v471 = vbslq_s8(v185, v460, v471);
        v453 = vbslq_s8(v185, v458, v14);
        v457 = vbslq_s8(v185, v456, v153);
        v459 = vbslq_s8(v185, v454, v151);
        v465 = vbslq_s8(v185, v450, v465);
        v461 = vbslq_s8(v185, v448, v104);
        v463 = vbslq_s8(v185, v462, v142);
        v475 = vbslq_s8(v185, v157, v475);
        v186 = vbslq_s8(v185, v158, v133);
        v464 = vbslq_s8(v185, v184, v464);
        v61 = vbslq_s8(v185, v150, v61);
        v470 = vbslq_s8(v185, v162, v81);
        v455 = vbslq_s8(v185, v159, v88);
        v466 = vbslq_s8(v185, v446, v466);
        v467 = vbslq_s8(v185, v160, v467);
        v449 = vaddq_s32(vaddq_s32(v455, v186), v467);
        v451 = v186;
        v187 = *(a3 + a4 + 32);
        v188 = *(a3 + 32);
      }

      else
      {
        v461 = v104;
        v463 = v142;
        v451 = v133;
        v453 = v14;
        v455 = v88;
        v457 = v153;
        v459 = v151;
        v187 = *(a3 + a4 + 32);
        v188 = *(a3 + 32);
        v449 = v178;
      }

      v202 = vsubq_s32(v6, vqtbl2q_s8(*v6.i8, xmmword_29D2F0F80));
      v191 = vsubq_s32(v7, vqtbl2q_s8(*v6.i8, xmmword_29D2F1030));
      v192 = *(a3 + a4 + 16);
      HIDWORD(v192) = HIDWORD(*(a3 + 16));
      v193 = vsubq_s32(v9, vqtbl2q_s8(*v9.i8, xmmword_29D2F0FA0));
      v194 = vsubq_s32(v472, vqtbl2q_s8(*v9.i8, xmmword_29D2F1040));
      v195 = *(a3 + 48);
      HIDWORD(v195) = HIDWORD(v192);
      v468 = v188;
      v196 = vsubq_s32(v188, vqtbl2q_s8(*v188.i8, xmmword_29D2F1050));
      v197 = *(a3 + a4 + 48);
      HIDWORD(v197) = HIDWORD(v192);
      v198 = vsubq_s32(v474, vqtbl2q_s8(*v188.i8, xmmword_29D2F0F80));
      v469 = v187;
      v199 = vsubq_s32(v187, vqtbl2q_s8(*v187.i8, xmmword_29D2F1060));
      v200 = vsubq_s32(v473, vqtbl2q_s8(*v187.i8, xmmword_29D2F0F80));
      v201 = v191;
      v201.i32[3] = v202.i32[0];
      v202.i32[0] = v191.i32[3];
      v203 = vmaxq_s32(v202, v201);
      v204 = vminq_s32(v202, v201);
      v203.i32[0] = vmaxvq_s32(v203);
      v204.i32[0] = vminvq_s32(v204);
      v205 = vdupq_lane_s32(*v203.i8, 0);
      v206 = vdupq_lane_s32(*v204.i8, 0);
      v207.i64[0] = 0x8000000080000000;
      v207.i64[1] = 0x8000000080000000;
      v208 = vmaxq_s32(v205, v207);
      v209 = vminq_s32(v206, v207);
      v210 = vzip1q_s32(v205, v206);
      v207.i64[0] = 0x2000000020;
      v207.i64[1] = 0x2000000020;
      v211 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v210)), vceqzq_s32(v210));
      v212 = vpmaxq_s32(v211, v211);
      v213 = vmaxq_s32(v193, v194);
      v445 = v194;
      v447 = v193;
      v214 = vminq_s32(v193, v194);
      v213.i32[0] = vmaxvq_s32(v213);
      v214.i32[0] = vminvq_s32(v214);
      v215 = vdupq_lane_s32(*v213.i8, 0);
      v216 = vdupq_lane_s32(*v214.i8, 0);
      v217 = vmaxq_s32(v208, v215);
      v218 = vminq_s32(v209, v216);
      v219 = vzip1q_s32(v215, v216);
      v220 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v219)), vceqzq_s32(v219));
      v221 = vpmaxq_s32(v220, v220);
      v222 = vmaxq_s32(v196, v198);
      v223 = vminq_s32(v196, v198);
      v222.i32[0] = vmaxvq_s32(v222);
      v223.i32[0] = vminvq_s32(v223);
      v224 = vdupq_lane_s32(*v222.i8, 0);
      v225 = vdupq_lane_s32(*v223.i8, 0);
      v226 = vmaxq_s32(v217, v224);
      v227 = vminq_s32(v218, v225);
      v228 = vzip1q_s32(v224, v225);
      v229 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v228)), vceqzq_s32(v228));
      v230 = vpmaxq_s32(v229, v229);
      v231 = vmaxq_s32(v199, v200);
      v232 = vminq_s32(v199, v200);
      v231.i32[0] = vmaxvq_s32(v231);
      v232.i32[0] = vminvq_s32(v232);
      v233 = vdupq_lane_s32(*v231.i8, 0);
      v234 = vdupq_lane_s32(*v232.i8, 0);
      v235 = vmaxq_s32(v226, v233);
      v236 = vminq_s32(v227, v234);
      v237 = vzip1q_s32(v233, v234);
      v238 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v237)), vceqzq_s32(v237));
      v239 = vpmaxq_s32(v238, v238);
      v240 = vmaxq_s32(vmaxq_s32(v212, v221), vmaxq_s32(v230, v239));
      v241 = vclzq_s32(vsubq_s32(v235, v236));
      v242 = vsubq_s32(v207, v241);
      v243 = vcgtq_s32(v240, v242);
      v244 = vminq_s32(v242, v240);
      v242.i64[0] = 0x900000009;
      v242.i64[1] = 0x900000009;
      v207.i64[0] = 0x200000002;
      v207.i64[1] = 0x200000002;
      v245 = vorrq_s8(vandq_s8(vceqzq_s32(v244), v207), vsubq_s32(vandq_s8(v243, v242), vmvnq_s8(v243)));
      v193.i64[0] = 0xF0000000FLL;
      v193.i64[1] = 0xF0000000FLL;
      v246 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v212), v193), 0);
      v247 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v221), v193), 0);
      v248 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v230), v193), 0);
      v249 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v239), v193), 0);
      v250 = vsubq_s32(v244, v246);
      v251 = vaddq_s32(v249, v248);
      v207.i64[0] = 0x400000004;
      v207.i64[1] = 0x400000004;
      v252 = vorrq_s8(vbicq_s8(v207, vceqq_s32(v251, vnegq_s32(vaddq_s32(v246, v247)))), v245);
      *v251.i8 = vqmovn_u32(v252);
      v194.i64[0] = 0x8000800080008;
      v194.i64[1] = 0x8000800080008;
      *v245.i8 = vqmovn_u32(v244);
      v253 = vbicq_s8(v245, vceqzq_s16(vandq_s8(v251, v194)));
      v254 = vandq_s8(vshlq_n_s16(v251, 2uLL), v164);
      v193.i64[0] = 0x2000200020002;
      v193.i64[1] = 0x2000200020002;
      v255 = vandq_s8(vceqq_s16(vandq_s8(v251, v166), v193), v167);
      v256 = vaddq_s16(v253, v254);
      *v254.i8 = vqmovn_u32(v250);
      v257.i64[0] = 0x7000700070007;
      v257.i64[1] = 0x7000700070007;
      v258 = vmlaq_s16(vaddq_s16(v256, v255), v254, v257);
      *v255.i8 = vqmovn_u32(v470);
      *v254.i8 = vqmovn_u32(v61);
      v259 = vaddq_s16(vaddq_s16(vbicq_s8(v254, vceqzq_s16(vandq_s8(v255, v194))), vandq_s8(vshlq_n_s16(v255, 2uLL), v164)), vandq_s8(vceqq_s16(vandq_s8(v255, v166), v193), v167));
      v255.i64[1] = v475.i64[1];
      *v255.i8 = vqmovn_u32(v475);
      v260 = vmlaq_s16(v259, v255, v257);
      v261 = vsubq_s32(v244, v247);
      v262 = vsubq_s32(v244, v248);
      v263 = vsubq_s32(v244, v249);
      v264 = vaddq_s32(vaddq_s32(v262, v261), v263);
      *v264.i8 = vqmovn_u32(v264);
      v265 = vshlq_n_s16(v264, 3uLL);
      v266 = vaddq_s16(v258, v265);
      *v265.i8 = vqmovn_u32(v449);
      v80 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v260, vshlq_n_s16(v265, 3uLL)), v266)), 0);
      v266.i16[0] = vaddvq_s32(v80);
      v267 = v266.u16[0];
      if (v266.i16[0])
      {
        v268.i64[0] = 0x1F0000001FLL;
        v268.i64[1] = 0x1F0000001FLL;
        v269 = vsubq_s32(v268, v241);
        v268.i64[0] = -1;
        v268.i64[1] = -1;
        v270 = vandq_s8(vsubq_s32(vshlq_s32(v268, v269), v236), v243);
        v80 = vcltzq_s32(vshlq_n_s32(v80, 0x1FuLL));
        v11.i32[0] = vbslq_s8(v80, vextq_s8(v7, v7, 0xCuLL), v11).u32[0];
        v463 = vbslq_s8(v80, v202, v463);
        v471 = vbslq_s8(v80, v201, v471);
        v14 = vbslq_s8(v80, v447, v453);
        v15 = vbslq_s8(v80, v445, v457);
        v16 = vbslq_s8(v80, v196, v459);
        v17 = vbslq_s8(v80, v198, v465);
        v18 = vbslq_s8(v80, v199, v461);
        v19 = vbslq_s8(v80, v200, v466);
        v73 = vbslq_s8(v80, v250, v475);
        v76 = vbslq_s8(v80, v261, v451);
        v77 = vbslq_s8(v80, v262, v455);
        v78 = vbslq_s8(v80, v263, v467);
        v67 = vbslq_s8(v80, v270, v464);
        v61 = vbslq_s8(v80, v244, v61);
        v81 = vbslq_s8(v80, v252, v470);
      }

      else
      {
        v73 = v475;
        v17 = v465;
        v19 = v466;
        v16 = v459;
        v18 = v461;
        v78 = v467;
        v67 = v464;
        v77 = v455;
        v15 = v457;
        v76 = v451;
        v14 = v453;
        v81 = v470;
      }

      if (v180)
      {
        v271 = v267 == 0;
      }

      else
      {
        v271 = 0;
      }

      v62 = v271;
      v13 = v471;
      v75 = v73;
      v12 = v463;
      v10 = v469;
      v8 = v468;
    }

    *v80.i8 = vqmovn_u32(v81);
    v272.i64[0] = 0x8000800080008;
    v272.i64[1] = 0x8000800080008;
    *v73.i8 = vqmovn_u32(v61);
    v272.i16[0] = vbicq_s8(v73, vceqzq_s16(vandq_s8(v80, v272))).u16[0];
    v273.i64[0] = 0x3000300030003;
    v273.i64[1] = 0x3000300030003;
    v274.i64[0] = 0x2000200020002;
    v274.i64[1] = 0x2000200020002;
    v275 = vceqq_s16(vandq_s8(v80, v273), v274);
    v274.i64[0] = 0x20002000200020;
    v274.i64[1] = 0x20002000200020;
    v275.i16[0] = vandq_s8(v275, v274).u16[0];
    v274.i16[0] = vqmovn_u32(v75).u16[0];
    if (((v272.i16[0] + ((4 * v80.i16[0]) & 0x10) + v275.i16[0] - v274.i16[0] + 8 * v274.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v77, v76), v78)).u16[0]) + 49) > 0x3FF)
    {
      *a1 = v6;
      a1[1] = v7;
      a1[2] = v9;
      a1[3] = v472;
      a1[4] = v8;
      a1[5] = v474;
      v279 = &a1[6];
      v189 = 127;
      result = 128;
      *v279 = v10;
      v279[1] = v473;
    }

    else
    {
      v276 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v277 = 8 * (a1 & 7);
      if (v277)
      {
        v278 = *v276 & ~(-1 << v277);
      }

      else
      {
        v278 = 0;
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

      v281 = v280 | v81.i8[0] & 0x1F | (v11.u32[0] << 10);
      v282 = (v281 << v277) | v278;
      if (v277 >= 0x16)
      {
        *v276 = v282;
        v282 = v281 >> (-8 * (a1 & 7u));
      }

      v283 = v277 + 42;
      v284 = vsubq_s32(v61, v75);
      v285 = vsubq_s32(v61, v76);
      v286 = vsubq_s32(v61, v77);
      v287 = vsubq_s32(v61, v78);
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
      v288 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v81, v285))), v286);
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
      v303 = (v277 + 42) & 0x3A;
      v304 = (v301.i64[0] << v303) | v282;
      if ((v302.i64[0] + v303) >= 0x40)
      {
        *(v276 + ((v283 >> 3) & 8)) = v304;
        v304 = v301.i64[0] >> -v303;
      }

      v305 = v302.i64[0] + v283;
      v306 = v304 | (v301.i64[1] << v305);
      if ((v305 & 0x3F) + v302.i64[1] >= 0x40)
      {
        *(v276 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v301.i64[1] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = vceqq_s32(v61, v75);
      v308 = v305 + v302.i64[1];
      v309.i64[0] = 0x800000008;
      v309.i64[1] = 0x800000008;
      v310 = vandq_s8(vextq_s8(vtstq_s32(v81, v309), 0, 0xCuLL), v61);
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
        *(v276 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
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
        *(v276 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v319.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vaddq_s32(v322, v12);
      v326 = v323 + v320.i64[1];
      if (v62)
      {
        v324 |= v63 << v326;
        if ((v326 & 0x3F) >= 0x20)
        {
          *(v276 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
          v324 = v63 >> -(v326 & 0x3F);
        }

        v326 += 32;
      }

      v327 = vextq_s8(0, v75, 0xCuLL);
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
        *(v276 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v336.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = vceqq_s32(v61, v76);
      v340 = vaddq_s32(v13, v322);
      v341 = v337.i64[0] + v326;
      v342 = (v337.i64[0] + v326) & 0x3F;
      v343 = v338 | (v336.i64[1] << v341);
      if ((v341 & 0x3F) + v337.i64[1] >= 0x40)
      {
        *(v276 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
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
      v348 = vandq_s8(vshlq_u32(v347, vaddq_s32(v75, v346)), v340);
      v349.i64[0] = v348.u32[0];
      v349.i64[1] = v348.u32[1];
      v350 = v349;
      v349.i64[0] = v348.u32[2];
      v349.i64[1] = v348.u32[3];
      v351 = v349;
      v349.i64[0] = v75.u32[0];
      v349.i64[1] = v75.u32[1];
      v352 = v349;
      v349.i64[0] = v75.u32[2];
      v349.i64[1] = v75.u32[3];
      v353 = vpaddq_s64(vshlq_u64(v350, vzip1q_s64(0, v352)), vshlq_u64(v351, vzip1q_s64(0, v349)));
      v354 = vpaddq_s64(v352, v349);
      v355 = (v353.i64[0] << v345) | v343;
      if (v354.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v276 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = vaddq_s32(v14, v344);
      v357 = v354.i64[0] + v345;
      v358 = v355 | (v353.i64[1] << v357);
      if ((v357 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v276 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
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
      v362 = vshlq_u32(v361, vaddq_s32(v76, v360));
      v363 = vandq_s8(v362, v356);
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v365 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v366 = v364;
      v364.i64[0] = v76.u32[0];
      v364.i64[1] = v76.u32[1];
      v367 = v364;
      v364.i64[0] = v76.u32[2];
      v364.i64[1] = v76.u32[3];
      v368 = vzip1q_s64(0, v367);
      v369 = vzip1q_s64(0, v364);
      v370 = vpaddq_s64(vshlq_u64(v365, v368), vshlq_u64(v366, v369));
      v371 = vpaddq_s64(v367, v364);
      v372 = (v370.i64[0] << v359) | v358;
      if (v371.i64[0] + (v359 & 0x3F) >= 0x40)
      {
        *(v276 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        if ((v359 & 0x3F) != 0)
        {
          v372 = v370.i64[0] >> -(v359 & 0x3F);
        }

        else
        {
          v372 = 0;
        }
      }

      v373 = vceqq_s32(v61, v77);
      v374 = vaddq_s32(v15, v344);
      v375 = v371.i64[0] + v359;
      v376 = v372 | (v370.i64[1] << v375);
      if ((v375 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v276 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
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
        *(v276 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v382.i64[0] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = vaddq_s32(v16, v377);
      v385 = v371.i64[0] + v378;
      v386 = (v371.i64[0] + v378) & 0x3F;
      v387 = v383 | (v382.i64[1] << v385);
      if ((v385 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v276 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
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
      v391 = vshlq_u32(v390, vaddq_s32(v77, v389));
      v392 = vandq_s8(v391, v384);
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v394 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v395 = v393;
      v393.i64[0] = v77.u32[0];
      v393.i64[1] = v77.u32[1];
      v396 = v393;
      v393.i64[0] = v77.u32[2];
      v393.i64[1] = v77.u32[3];
      v397 = vzip1q_s64(0, v396);
      v398 = vzip1q_s64(0, v393);
      v399 = vpaddq_s64(vshlq_u64(v394, v397), vshlq_u64(v395, v398));
      v400 = vpaddq_s64(v396, v393);
      v401 = (v399.i64[0] << v388) | v387;
      if (v400.i64[0] + (v388 & 0x3F) >= 0x40)
      {
        *(v276 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        if ((v388 & 0x3F) != 0)
        {
          v401 = v399.i64[0] >> -(v388 & 0x3F);
        }

        else
        {
          v401 = 0;
        }
      }

      v402 = vceqq_s32(v61, v78);
      v403 = vaddq_s32(v17, v377);
      v404 = v400.i64[0] + v388;
      v405 = v401 | (v399.i64[1] << v404);
      if ((v404 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v276 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
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
        *(v276 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v411.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = vaddq_s32(v18, v406);
      v414 = v400.i64[0] + v407;
      v415 = (v400.i64[0] + v407) & 0x3F;
      v416 = v412 | (v411.i64[1] << v414);
      if ((v414 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v276 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
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
      v420 = vshlq_u32(v419, vaddq_s32(v78, v418));
      v421 = vandq_s8(v420, v413);
      v422.i64[0] = v421.u32[0];
      v422.i64[1] = v421.u32[1];
      v423 = v422;
      v422.i64[0] = v421.u32[2];
      v422.i64[1] = v421.u32[3];
      v424 = v422;
      v422.i64[0] = v78.u32[0];
      v422.i64[1] = v78.u32[1];
      v425 = v422;
      v422.i64[0] = v78.u32[2];
      v422.i64[1] = v78.u32[3];
      v426 = vzip1q_s64(0, v425);
      v427 = vzip1q_s64(0, v422);
      v428 = vpaddq_s64(vshlq_u64(v423, v426), vshlq_u64(v424, v427));
      v429 = vpaddq_s64(v425, v422);
      v430 = (v414 + v400.i64[1]) & 0x3F;
      v431 = (v428.i64[0] << (v414 + v400.i8[8])) | v416;
      if ((v429.i64[0] + v430) > 0x3F)
      {
        *(v276 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        if (v430)
        {
          v431 = v428.i64[0] >> -v430;
        }

        else
        {
          v431 = 0;
        }
      }

      v432 = vaddq_s32(v19, v406);
      v433 = v429.i64[0] + v417;
      v434 = v431 | (v428.i64[1] << v433);
      if ((v433 & 0x3F) + v429.i64[1] >= 0x40)
      {
        *(v276 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
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
        *(v276 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
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
        *(v276 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
        v443 = v439.i64[1] >> -v442;
        if (!v442)
        {
          v443 = 0;
        }
      }

      v444 = v441 + v429.i64[1];
      if ((v444 & 0x3F) != 0)
      {
        *(v276 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
      }

      result = (v444 - v277 + 7) >> 3;
      v189 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = *a3;
    v189 = 3;
    result = 4;
  }

  *a2 = v189;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 64, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 64, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 64, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x7Fu:
      v8 = *(a3 + 16);
      v9 = *(a3 + 32);
      v10 = *(a3 + 48);
      v11 = *(a3 + 64);
      v12 = *(a3 + 80);
      v13 = *(a3 + 96);
      v14 = *(a3 + 112);
      f32 = a1[2].f32;
      *a1 = *a3;
      a1[1] = v8;
      v16 = (a1->f32 + a2);
      *f32 = v9;
      f32[1] = v10;
      *v16 = v11;
      v16[1] = v12;
      v16 += 2;
      *v16 = v13;
      v16[1] = v14;
      return 128;
    case 3u:
      v6 = vld1q_dup_f32(a3);
      *a1 = v6;
      a1[1] = v6;
      a1[2] = v6;
      a1[3] = v6;
      v7 = (a1 + a2);
      *v7 = v6;
      v7[1] = v6;
      v7[2] = v6;
      v7[3] = v6;
      return 4;
    case 0u:
      v4 = 0;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v5 = (a1->f32 + a2);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      return v4;
  }

  v17 = 8 * (a3 & 7);
  v18 = a3 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 42;
  v20 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v17;
  if (v17 >= 0x17)
  {
    v20 |= *(v18 + 8) << (-8 * (a3 & 7u));
  }

  v21 = vdupq_n_s32(v20 & 0x1F);
  v22 = (8 * (a3 & 7)) | 0x400;
  v23.i64[0] = 0x300000003;
  v23.i64[1] = 0x300000003;
  v24 = vbicq_s8(vdupq_n_s32(((v20 >> 5) & 0x1F) + 1), vceqq_s32((*&v21 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v23));
  v23.i64[0] = 0x404040404040404;
  v23.i64[1] = 0x404040404040404;
  v25 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v21 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v23);
  if (vmaxvq_s8(v25) < 1)
  {
    v34 = 0;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v54 = v24;
    v53 = v24;
    v52 = v24;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v51 = v24;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v55.i64[0] = -1;
    v55.i64[1] = -1;
  }

  else
  {
    v26 = vmovl_u8(*&vpaddq_s8(v25, v25));
    v27 = vmovl_u16(*&vpaddq_s16(v26, v26));
    v28 = vpaddq_s32(v27, v27).u64[0];
    v29.i64[0] = v28;
    v29.i64[1] = HIDWORD(v28);
    v30 = v29;
    v31 = vaddvq_s64(v29);
    v32 = v31 + v19;
    v33 = v31 <= 0x80 && v22 >= v32;
    v34 = !v33;
    v35 = 0uLL;
    if (v33)
    {
      v36 = v19 & 0x3A;
      v37 = vaddq_s64(vzip1q_s64(0, v30), vdupq_n_s64(v36));
      v38 = (v18 + ((v19 >> 3) & 8));
      v35 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v38, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v37)), vshlq_u64(vdupq_lane_s64(v38->i64[0], 0), vnegq_s64(v37)));
      if (v31 + v36 >= 0x81)
      {
        v35 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v38[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v37)), vshlq_u64(vdupq_laneq_s64(v38[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v37))), v35);
      }

      v19 = v32;
    }

    v39 = vzip1_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v40.i64[0] = v39.u32[0];
    v40.i64[1] = v39.u32[1];
    v41 = vshlq_u64(v35, vnegq_s64(v40));
    v42 = vuzp1q_s32(vzip1q_s64(v35, v41), vzip2q_s64(v35, v41));
    v43 = vshlq_u32(v42, vnegq_s32((*&v26 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v44 = vuzp1q_s16(vzip1q_s32(v42, v43), vzip2q_s32(v42, v43));
    v45 = vzip1q_s16(v44, vshlq_u16(v44, vnegq_s16(vmovl_u8(vuzp1_s8(*v25.i8, *v21.i8)))));
    *v45.i8 = vmovn_s16(v45);
    v42.i64[0] = 0x101010101010101;
    v42.i64[1] = 0x101010101010101;
    v46 = vshlq_s8(v42, v25);
    v42.i64[0] = -1;
    v42.i64[1] = -1;
    v46.i32[0] = vandq_s8(vaddq_s8(v46, v42), v45).u32[0];
    v47 = vdupq_n_s32(v46.i8[0]);
    v48 = vdupq_n_s32(v46.i8[1]);
    v49 = vdupq_n_s32(v46.i8[2]);
    v50 = vdupq_n_s32(v46.i8[3]);
    v51 = vsubq_s32(v24, v47);
    v52 = vsubq_s32(v24, v48);
    v53 = vsubq_s32(v24, v49);
    v54 = vsubq_s32(v24, v50);
    v55 = vceqzq_s32(v47);
    v56 = vceqzq_s32(v48);
    v57 = vceqzq_s32(v49);
    v58 = vceqzq_s32(v50);
  }

  v59 = 0uLL;
  v60 = vandq_s8(vextq_s8(vtstq_s32((*&v21 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v21 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v24);
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v64 + v19;
  if (v64 <= 0x80 && v22 >= v65)
  {
    v67 = v19 & 0x3F;
    v68 = vaddq_s64(vzip1q_s64(0, v63), vdupq_n_s64(v67));
    v69 = (v18 + 8 * (v19 >> 6));
    v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v69, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v68)), vshlq_u64(vdupq_lane_s64(v69->i64[0], 0), vnegq_s64(v68)));
    if (v64 + v67 >= 0x81)
    {
      v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v69[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v68)), vshlq_u64(vdupq_laneq_s64(v69[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v68))), v59);
    }

    v19 = v65;
  }

  else
  {
    v34 = 1;
  }

  v70 = v20 & 3;
  v71 = 0uLL;
  if (v70 == 2)
  {
    v72 = v19 + 16;
    if (v22 >= v19 + 16)
    {
      v76 = (v18 + 8 * (v19 >> 6));
      v77 = *v76 >> v19;
      if ((v19 & 0x3F) >= 0x31)
      {
        v77 |= v76[1] << -(v19 & 0x3F);
      }

      v73 = v77;
      v74 = v19 + 32;
    }

    else
    {
      v73 = 0;
      v34 = 1;
      v74 = v19 + 16;
      v72 = v19;
    }

    v75 = v73;
    if (v22 >= v74)
    {
      v78 = (v18 + 8 * (v72 >> 6));
      v79 = *v78 >> v72;
      if ((v72 & 0x3F) >= 0x31)
      {
        v79 |= v78[1] << -(v72 & 0x3F);
      }

      v75.i32[1] = v79;
    }

    else
    {
      v34 = 1;
      v74 = v72;
    }
  }

  else
  {
    v74 = v19;
    v75 = 0;
  }

  v80 = vextq_s8(0, v51, 0xCuLL);
  v81 = vpaddq_s32(v80, v80).u64[0];
  v82.i64[0] = v81;
  v82.i64[1] = HIDWORD(v81);
  v83 = v82;
  v84 = vaddvq_s64(v82);
  v85 = v84 + v74;
  if (v84 <= 0x80 && v22 >= v85)
  {
    v87 = v74 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v83), vdupq_n_s64(v87));
    v89 = (v18 + 8 * (v74 >> 6));
    v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v84 + v87 >= 0x81)
    {
      v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v71);
    }

    v74 = v85;
  }

  else
  {
    v34 = 1;
  }

  v90 = vpaddq_s32(v51, v51).u64[0];
  v91.i64[0] = v90;
  v91.i64[1] = HIDWORD(v90);
  v92 = v91;
  v93 = vaddvq_s64(v91);
  v94 = v93 + v74;
  v95 = 0uLL;
  if (v93 <= 0x80 && v22 >= v94)
  {
    v98 = v74 & 0x3F;
    v99 = vaddq_s64(vzip1q_s64(0, v92), vdupq_n_s64(v98));
    v100 = (v18 + 8 * (v74 >> 6));
    v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v100, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v100->i64[0], 0), vnegq_s64(v99)));
    if (v93 + v98 >= 0x81)
    {
      v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v100[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v100[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v97);
    }

    v74 = v94;
  }

  else
  {
    v34 = 1;
    v97 = 0uLL;
  }

  v101 = vpaddq_s32(v52, v52).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v74;
  if (v104 <= 0x80 && v22 >= v105)
  {
    v107 = v74 & 0x3F;
    v108 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v107));
    v109 = (v18 + 8 * (v74 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
    if (v104 + v107 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v95);
    }

    v74 = v105;
  }

  else
  {
    v34 = 1;
  }

  v110 = 0uLL;
  if (v104 > 0x80 || (v111 = v104 + v74, v22 < v104 + v74))
  {
    v111 = v74;
    v34 = 1;
    v115 = 0uLL;
  }

  else
  {
    v112 = v74 & 0x3F;
    v113 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v112));
    v114 = (v18 + 8 * (v74 >> 6));
    v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v114, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v113)), vshlq_u64(vdupq_lane_s64(v114->i64[0], 0), vnegq_s64(v113)));
    if (v104 + v112 >= 0x81)
    {
      v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v114[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v113)), vshlq_u64(vdupq_laneq_s64(v114[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v113))), v115);
    }
  }

  v116 = vpaddq_s32(v53, v53).u64[0];
  v117.i64[0] = v116;
  v117.i64[1] = HIDWORD(v116);
  v118 = v117;
  v119 = vaddvq_s64(v117);
  v120 = v119;
  if (v119 > 0x80 || (v121 = v119 + v111, v22 < v119 + v111))
  {
    v121 = v111;
    v34 = 1;
  }

  else
  {
    v122 = v111 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v118), vdupq_n_s64(v122));
    v124 = (v18 + 8 * (v111 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + v122 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v110);
    }
  }

  v125 = 0uLL;
  if (v120 > 0x80 || (v126 = v120 + v121, v22 < v120 + v121))
  {
    v126 = v121;
    v34 = 1;
    v130 = 0uLL;
  }

  else
  {
    v127 = v121 & 0x3F;
    v128 = vaddq_s64(vzip1q_s64(0, v118), vdupq_n_s64(v127));
    v129 = (v18 + 8 * (v121 >> 6));
    v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
    if (v120 + v127 >= 0x81)
    {
      v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v130);
    }
  }

  v131 = vpaddq_s32(v54, v54).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  if (v134 > 0x80 || (v136 = v134 + v126, v22 < v134 + v126))
  {
    v136 = v126;
    v34 = 1;
  }

  else
  {
    v137 = v126 & 0x3F;
    v138 = vaddq_s64(vzip1q_s64(0, v133), vdupq_n_s64(v137));
    v139 = (v18 + 8 * (v126 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
    if (v135 + v137 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v125);
    }
  }

  if (v135 > 0x80 || v22 < v135 + v136)
  {
    goto LABEL_95;
  }

  v140 = vzip1_s32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
  v141.i64[0] = v140.u32[0];
  v141.i64[1] = v140.u32[1];
  v142.i64[0] = 0x1F0000001FLL;
  v142.i64[1] = 0x1F0000001FLL;
  v143 = vaddq_s32(v54, v142);
  v144.i64[0] = 0x2000000020;
  v144.i64[1] = 0x2000000020;
  v145 = vsubq_s32(v144, v54);
  v146 = (v18 + 8 * (v136 >> 6));
  v147 = vaddq_s64(vzip1q_s64(0, v133), vdupq_n_s64(v136 & 0x3F));
  v148 = vnegq_s64(v141);
  v149 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v147)));
  if (v135 + (v136 & 0x3F) < 0x81)
  {
    if (v34)
    {
      goto LABEL_95;
    }

    v154 = vshlq_u64(v149, v148);
    v152 = vzip2q_s64(v149, v154);
    v153 = vzip1q_s64(v149, v154);
  }

  else
  {
    if (v34)
    {
      goto LABEL_95;
    }

    v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v149);
    v151 = vshlq_u64(v150, v148);
    v152 = vzip2q_s64(v150, v151);
    v153 = vzip1q_s64(v150, v151);
  }

  v155 = vshlq_s32(vshlq_s32(vuzp1q_s32(v153, v152), v145), v143);
  v4 = a4 + 1;
  if (v22 + 8 * v4 - (v135 + v136) - 1024 >= 9)
  {
LABEL_95:
    v156 = 0;
    v157 = 0;
    v158 = 8 * (&v262 & 7);
    v159 = 32;
    do
    {
      v160 = 64 - v158;
      if (64 - v158 >= v159)
      {
        v160 = v159;
      }

      *&v261[8 * v156] |= ((0xFFFFFFFFFFFFFFFFLL >> v157) & ~(-1 << v160)) << v158;
      v157 += v160;
      v161 = v160 + v158;
      v156 += v161 >> 6;
      v158 = v161 & 0x3F;
      v159 -= v160;
    }

    while (v159);
    v4 = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    return v4;
  }

  v257 = v55;
  v258 = v56;
  v259 = v57;
  v260 = v58;
  v163 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
  v164 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
  v165 = vzip1_s32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  v166 = vzip1_s32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
  v167 = vzip1_s32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
  v168.i64[0] = v163.u32[0];
  v168.i64[1] = v163.u32[1];
  v169 = v168;
  v168.i64[0] = v164.u32[0];
  v168.i64[1] = v164.u32[1];
  v170 = v168;
  v168.i64[0] = v165.u32[0];
  v168.i64[1] = v165.u32[1];
  v171 = v168;
  v168.i64[0] = v166.u32[0];
  v168.i64[1] = v166.u32[1];
  v172 = v168;
  v168.i64[0] = v167.u32[0];
  v168.i64[1] = v167.u32[1];
  v173 = vnegq_s64(v172);
  v174 = vnegq_s64(v168);
  v175 = vshlq_u64(v59, vnegq_s64(v169));
  v176 = vshlq_u64(v71, vnegq_s64(v170));
  v177 = vshlq_u64(v97, vnegq_s64(v171));
  v178 = vshlq_u64(v95, v173);
  v179 = vshlq_u64(v115, v173);
  v180 = vshlq_u64(v110, v174);
  v181 = vshlq_u64(v130, v174);
  v182 = vzip2q_s64(v59, v175);
  v183 = vzip1q_s64(v59, v175);
  v175.i64[0] = 0x2000000020;
  v175.i64[1] = 0x2000000020;
  v184 = vzip2q_s64(v71, v176);
  v185 = vzip1q_s64(v71, v176);
  v176.i64[0] = 0x2000000020;
  v176.i64[1] = 0x2000000020;
  v186 = vzip2q_s64(v97, v177);
  v187 = vzip1q_s64(v97, v177);
  v188 = vzip2q_s64(v95, v178);
  v189 = vzip1q_s64(v95, v178);
  v178.i64[0] = 0x2000000020;
  v178.i64[1] = 0x2000000020;
  v190 = vzip2q_s64(v115, v179);
  v191 = vzip1q_s64(v115, v179);
  v192 = vzip2q_s64(v110, v180);
  v193 = vzip1q_s64(v110, v180);
  v180.i64[0] = 0x2000000020;
  v180.i64[1] = 0x2000000020;
  v194 = vzip2q_s64(v130, v181);
  v195 = vzip1q_s64(v130, v181);
  v196 = v20 >> 10;
  v197 = vuzp1q_s32(v183, v182);
  v181.i64[0] = 0x1F0000001FLL;
  v181.i64[1] = 0x1F0000001FLL;
  v198 = vuzp1q_s32(v185, v184);
  v185.i64[0] = 0x1F0000001FLL;
  v185.i64[1] = 0x1F0000001FLL;
  v199 = vsubq_s32(v176, v80);
  v200 = vuzp1q_s32(v187, v186);
  v201 = vsubq_s32(v176, v51);
  v202 = vuzp1q_s32(v189, v188);
  v176.i64[0] = 0x1F0000001FLL;
  v176.i64[1] = 0x1F0000001FLL;
  v203 = vsubq_s32(v178, v52);
  v204 = vuzp1q_s32(v191, v190);
  v205 = vuzp1q_s32(v193, v192);
  v191.i64[0] = 0x1F0000001FLL;
  v191.i64[1] = 0x1F0000001FLL;
  v206 = vsubq_s32(v180, v53);
  v207 = vaddq_s32(v80, v185);
  v208 = vaddq_s32(v51, v185);
  v209 = vshlq_s32(v200, v201);
  v210 = vaddq_s32(v52, v176);
  v211 = vaddq_s32(v53, v191);
  v212 = vshlq_s32(vshlq_s32(v197, vsubq_s32(v175, v60)), vaddq_s32(v60, v181));
  v213 = vshlq_s32(vshlq_s32(v198, v199), v207);
  v214 = vshlq_s32(v209, v208);
  v215 = vshlq_s32(vshlq_s32(v202, v203), v210);
  v216 = vshlq_s32(vshlq_s32(v204, v203), v210);
  v217 = vshlq_s32(vshlq_s32(v205, v206), v211);
  v218 = vshlq_s32(vshlq_s32(vuzp1q_s32(v195, v194), v206), v211);
  v219 = vshlq_u64(v125, v148);
  v220 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v125, v219), vzip2q_s64(v125, v219)), v145), v143);
  if (v70 == 2)
  {
    v221 = vdupq_lane_s32(v75, 1);
    v222.i64[0] = 0xFFFFFFFF00000000;
    v222.i64[1] = 0xFFFFFFFF00000000;
    v221.i64[0] = 0;
    v223 = vaddq_s32(vandq_s8(vdupq_lane_s32(v75, 0), v222), v221);
    v224 = vmlaq_lane_s32(v221, xmmword_29D2F11A0, v75, 0);
    v213 = vaddq_s32(v213, v223);
    *v222.i8 = vshl_u32(v75, 0x100000002);
    v225 = vdupq_lane_s32(*v222.i8, 1);
    v214 = vaddq_s32(v214, v224);
    v215 = vaddq_s32(vaddq_s32(v223, v225), v215);
    v226 = vdupq_lane_s32(*v222.i8, 0);
    v216 = vaddq_s32(vaddq_s32(v224, v225), v216);
    v217 = vaddq_s32(vaddq_s32(v223, v226), v217);
    v218 = vaddq_s32(vaddq_s32(v224, v226), v218);
    v227 = vdupq_lane_s32(vadd_s32(*v222.i8, *v225.i8), 0);
    v220 = vaddq_s32(vaddq_s32(v227, v223), v220);
    v155 = vaddq_s32(vaddq_s32(v227, v224), v155);
  }

  v228 = vdupq_n_s32(v196);
  v229 = vdupq_lane_s32(*v212.i8, 0);
  v230 = vandq_s8(v229, v257);
  v231 = vsubq_s32(vaddq_s32(vandq_s8(v212, v257), v213), v230);
  v232 = vsubq_s32(v214, v230);
  v233 = vandq_s8(v229, v258);
  v234 = vsubq_s32(v215, v233);
  v235 = vsubq_s32(v216, v233);
  v236 = vandq_s8(v229, v259);
  v237 = vsubq_s32(v217, v236);
  v238 = vsubq_s32(v218, v236);
  v239 = vandq_s8(v229, v260);
  v240 = vsubq_s32(v220, v239);
  v241 = vsubq_s32(v155, v239);
  v239.i64[0] = 0x100000001;
  v239.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v21 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v239)))
  {
    v242 = vnegq_s32((*&v21 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v243 = v232;
    v243.i32[3] = v231.i32[0];
    v244 = v231;
    v244.i32[0] = v232.i32[3];
    v263.val[0] = vbslq_s8(v242, v244, v231);
    v263.val[1] = vbslq_s8(v242, v243, v232);
    v243.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v243.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v264.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v263, xmmword_29D2F0F80), v242), v263.val[0]);
    v264.val[1] = vaddq_s32(v263.val[1], vandq_s8(vqtbl2q_s8(v263, v243), v242));
    v231 = vaddq_s32(vandq_s8(vqtbl2q_s8(v264, xmmword_29D2F0F90), v242), v264.val[0]);
    v232 = vaddq_s32(v264.val[1], vandq_s8(vqtbl2q_s8(v264, v243), v242));
    v264.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0FA0), v242), v234);
    v264.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0FB0), v242), v235);
    v234 = vaddq_s32(vandq_s8(vqtbl2q_s8(v264, xmmword_29D2F0FC0), v242), v264.val[0]);
    v235 = vaddq_s32(v264.val[1], vandq_s8(vqtbl2q_s8(v264, v243), v242));
    v264.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v237.i8, xmmword_29D2F0FD0), v242), v237);
    v264.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v237.i8, xmmword_29D2F0F80), v242), v238);
    v237 = vaddq_s32(vandq_s8(vqtbl2q_s8(v264, v243), v242), v264.val[0]);
    v238 = vaddq_s32(v264.val[1], vandq_s8(vqtbl2q_s8(v264, xmmword_29D2F0FE0), v242));
    v263.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0FF0), v242), v240);
    v263.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0F80), v242), v241);
    v240 = vaddq_s32(vandq_s8(vqtbl2q_s8(v263, v243), v242), v263.val[0]);
    v241 = vaddq_s32(v263.val[1], vandq_s8(vqtbl2q_s8(v263, xmmword_29D2F1000), v242));
  }

  v245 = vaddq_s32(v228, v231);
  v246 = vaddq_s32(v232, v228);
  v247 = vaddq_s32(v234, v228);
  v248 = vaddq_s32(v235, v228);
  v249 = vaddq_s32(v237, v228);
  v250 = vaddq_s32(v238, v228);
  v251 = vaddq_s32(v240, v228);
  v252 = vaddq_s32(v241, v228);
  v253.i64[0] = 0x1000000010;
  v253.i64[1] = 0x1000000010;
  v254 = vcgtq_u32(v253, v21);
  v253.i64[0] = -1;
  v253.i64[1] = -1;
  v255 = &a1[2];
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v245, v253), v254), v245);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v246, v253), v254), v246);
  v256 = (a1 + a2);
  *v255 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v247, v253), v254), v247);
  v255[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v248, v253), v254), v248);
  *v256 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v249, v253), v254), v249);
  v256[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v250, v253), v254), v250);
  v256 += 2;
  *v256 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v251, v253), v254), v251);
  v256[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v252, v253), v254), v252);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 12, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 40, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 44, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *a3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 32);
  v11 = vdupq_lane_s32(*a3, 0);
  v12 = vsubq_s32(*a3, v11);
  v13 = vsubq_s32(v7, v11);
  v14 = vsubq_s32(v8, v11);
  v473 = *(a3 + 48);
  v15 = vsubq_s32(v473, v11);
  v16 = vsubq_s32(v9, v11);
  v472 = *(a3 + a4 + 16);
  v17 = vsubq_s32(v472, v11);
  v18 = vsubq_s32(v10, v11);
  v474 = *(a3 + a4 + 48);
  v19 = vsubq_s32(v474, v11);
  v20 = vmaxq_s32(v12, v13);
  v21 = vminq_s32(v12, v13);
  v20.i32[0] = vmaxvq_s32(v20);
  v21.i32[0] = vminvq_s32(v21);
  v22 = vdupq_lane_s32(*v20.i8, 0);
  v23 = vdupq_lane_s32(*v21.i8, 0);
  v24.i64[0] = 0x8000000080000000;
  v24.i64[1] = 0x8000000080000000;
  v25 = vmaxq_s32(v22, v24);
  v26.i64[0] = 0x8000000080000000;
  v26.i64[1] = 0x8000000080000000;
  v27 = vminq_s32(v23, v26);
  v28 = vzip1q_s32(v22, v23);
  v29.i64[0] = 0x2000000020;
  v29.i64[1] = 0x2000000020;
  v30 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v28)), vceqzq_s32(v28));
  v31 = vpmaxq_s32(v30, v30);
  v32 = vmaxq_s32(v14, v15);
  v33 = vminq_s32(v14, v15);
  v32.i32[0] = vmaxvq_s32(v32);
  v33.i32[0] = vminvq_s32(v33);
  v34 = vdupq_lane_s32(*v32.i8, 0);
  v35 = vdupq_lane_s32(*v33.i8, 0);
  v36 = vmaxq_s32(v25, v34);
  v37 = vminq_s32(v27, v35);
  v38 = vzip1q_s32(v34, v35);
  v39 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v38)), vceqzq_s32(v38));
  v40 = vpmaxq_s32(v39, v39);
  v41 = vmaxq_s32(v16, v17);
  v42 = vminq_s32(v16, v17);
  v41.i32[0] = vmaxvq_s32(v41);
  v43 = vdupq_lane_s32(*v41.i8, 0);
  v42.i32[0] = vminvq_s32(v42);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v45 = vmaxq_s32(v36, v43);
  v46 = vminq_s32(v37, v44);
  v47 = vzip1q_s32(v43, v44);
  v48 = vbicq_s8(vsubq_s32(v29, vclsq_s32(v47)), vceqzq_s32(v47));
  v49 = vmaxq_s32(v18, v19);
  v50 = vminq_s32(v18, v19);
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
    v75 = vsubq_s32(v61, v71);
    v76 = vsubq_s32(v61, v72);
    v77 = vsubq_s32(v61, v73);
    v78 = vsubq_s32(v61, v74);
    v79 = vceqq_s32(vaddq_s32(v74, v73), vnegq_s32(vaddq_s32(v71, v72)));
    v72.i64[0] = 0x400000004;
    v72.i64[1] = 0x400000004;
    v80 = vbicq_s8(v72, v79);
    v81 = vorrq_s8(v80, v70);
    if (a5 && a6)
    {
      v464 = v67;
      v82 = vsub_s32(*&vextq_s8(v6, v6, 4uLL), vdup_lane_s32(*v6.i8, 0));
      v83 = vshl_n_s32(v82, 0x10uLL);
      v84 = v83.i32[1];
      v85 = vshl_s32(v83, 0xFFFFFFF1FFFFFFF2);
      v86 = v83.i32[1] >> 16;
      v87 = vdupq_n_s32(v83.i32[0] >> 16);
      v88 = v77;
      v89 = vdupq_n_s32(v86);
      v90.i64[0] = 0xFFFFFFFF00000000;
      v90.i64[1] = 0xFFFFFFFF00000000;
      v89.i64[0] = 0;
      v475 = v75;
      v91 = vaddq_s32(v89, vandq_s8(v87, v90));
      v92 = vmlaq_s32(v89, v87, xmmword_29D2F11A0);
      v93 = vsubq_s32(v12, v91);
      v94 = vsubq_s32(v13, v92);
      v95 = v85.i32[1];
      v96 = vdupq_n_s32(-v85.i32[1]);
      v97 = vsubq_s32(vaddq_s32(v96, v14), v91);
      v98 = vsubq_s32(vaddq_s32(v15, v96), v92);
      v99 = v85.i32[0];
      v100 = vdupq_n_s32(-v85.i32[0]);
      v101 = vsubq_s32(vaddq_s32(v100, v16), v91);
      v102 = vaddq_s32(vsubq_s32(v100, v92), v17);
      v103 = vdupq_n_s32(-v99 - v95);
      v104 = v18;
      v105 = vsubq_s32(vaddq_s32(v103, v18), v91);
      v106 = vaddq_s32(vsubq_s32(v103, v92), v19);
      v107 = vmaxq_s32(v93, v94);
      v460 = v94;
      v462 = v93;
      v108 = vminq_s32(v93, v94);
      v107.i32[0] = vmaxvq_s32(v107);
      v108.i32[0] = vminvq_s32(v108);
      v109 = vdupq_lane_s32(*v107.i8, 0);
      v110 = vdupq_lane_s32(*v108.i8, 0);
      v93.i64[0] = 0x8000000080000000;
      v93.i64[1] = 0x8000000080000000;
      v465 = v17;
      v466 = v19;
      v111 = vmaxq_s32(v109, v93);
      v112 = vminq_s32(v110, v93);
      v113 = vzip1q_s32(v109, v110);
      v90.i64[0] = 0x2000000020;
      v90.i64[1] = 0x2000000020;
      v114 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v113)), vceqzq_s32(v113));
      v115 = vpmaxq_s32(v114, v114);
      v116 = vmaxq_s32(v97, v98);
      v456 = v98;
      v458 = v97;
      v117 = vminq_s32(v97, v98);
      v116.i32[0] = vmaxvq_s32(v116);
      v117.i32[0] = vminvq_s32(v117);
      v118 = vdupq_lane_s32(*v116.i8, 0);
      v119 = vdupq_lane_s32(*v117.i8, 0);
      v120 = vmaxq_s32(v111, v118);
      v121 = vminq_s32(v112, v119);
      v122 = vzip1q_s32(v118, v119);
      v123 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v122)), vceqzq_s32(v122));
      v471 = v13;
      v124 = vpmaxq_s32(v123, v123);
      v125 = vmaxq_s32(v101, v102);
      v454 = v101;
      v448 = v105;
      v450 = v102;
      v126 = vminq_s32(v101, v102);
      v125.i32[0] = vmaxvq_s32(v125);
      v126.i32[0] = vminvq_s32(v126);
      v127 = vdupq_lane_s32(*v125.i8, 0);
      v128 = vdupq_lane_s32(*v126.i8, 0);
      v129 = vmaxq_s32(v120, v127);
      v130 = vminq_s32(v121, v128);
      v131 = vzip1q_s32(v127, v128);
      v132 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v131)), vceqzq_s32(v131));
      v133 = v76;
      v134 = vpmaxq_s32(v132, v132);
      v135 = vmaxq_s32(v105, v106);
      v446 = v106;
      v136 = vminq_s32(v105, v106);
      v135.i32[0] = vmaxvq_s32(v135);
      v136.i32[0] = vminvq_s32(v136);
      v137 = vdupq_lane_s32(*v135.i8, 0);
      v138 = vdupq_lane_s32(*v136.i8, 0);
      v139 = vmaxq_s32(v129, v137);
      v140 = vzip1q_s32(v137, v138);
      v141 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v140)), vceqzq_s32(v140));
      v142 = v12;
      v143 = vpmaxq_s32(v141, v141);
      v144 = vmaxq_s32(vmaxq_s32(v115, v124), vmaxq_s32(v134, v143));
      v452 = vminq_s32(v130, v138);
      v145 = vclzq_s32(vsubq_s32(v139, v452));
      v146 = vsubq_s32(v90, v145);
      v147 = vcgtq_s32(v144, v146);
      v148 = vminq_s32(v146, v144);
      v94.i64[0] = 0x200000002;
      v94.i64[1] = 0x200000002;
      v146.i64[0] = 0xA0000000ALL;
      v146.i64[1] = 0xA0000000ALL;
      v149 = vbslq_s8(v147, v146, v94);
      v146.i64[0] = 0x100000001;
      v146.i64[1] = 0x100000001;
      v150 = vmaxq_s32(v148, v146);
      v94.i64[0] = 0xF0000000FLL;
      v94.i64[1] = 0xF0000000FLL;
      v151 = v16;
      v152 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v115), v94), 0);
      v153 = v15;
      v154 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v124), v94), 0);
      v467 = v78;
      v155 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v134), v94), 0);
      v156 = vmaxq_s32(vminq_s32(vsubq_s32(v150, v143), v94), 0);
      v157 = vsubq_s32(v150, v152);
      v158 = vsubq_s32(v150, v154);
      v159 = vsubq_s32(v150, v155);
      v160 = vsubq_s32(v150, v156);
      v161 = vnegq_s32(vaddq_s32(v152, v154));
      v93.i64[0] = 0x400000004;
      v93.i64[1] = 0x400000004;
      v162 = vorrq_s8(vbicq_s8(v93, vceqq_s32(vaddq_s32(v156, v155), v161)), v149);
      LOWORD(v95) = v82.i16[0];
      *v93.i8 = vqmovn_u32(v162);
      v154.i64[0] = 0x8000800080008;
      v154.i64[1] = 0x8000800080008;
      *v161.i8 = vqmovn_u32(v150);
      v163 = vbicq_s8(v161, vceqzq_s16(vandq_s8(v93, v154)));
      v94.i64[0] = 0x2000200020002;
      v94.i64[1] = 0x2000200020002;
      v164.i64[0] = 0x10001000100010;
      v164.i64[1] = 0x10001000100010;
      v165 = vandq_s8(vshlq_n_s16(v93, 2uLL), v164);
      v166.i64[0] = 0x3000300030003;
      v166.i64[1] = 0x3000300030003;
      v167.i64[0] = 0x20002000200020;
      v167.i64[1] = 0x20002000200020;
      v168 = vaddq_s16(v163, v165);
      *v165.i8 = vqmovn_u32(v157);
      v169.i64[0] = 0x7000700070007;
      v169.i64[1] = 0x7000700070007;
      v170 = vmlaq_s16(vaddq_s16(v168, vandq_s8(vceqq_s16(vandq_s8(v93, v166), v94), v167)), v165, v169);
      v171 = vaddq_s32(vaddq_s32(v159, v158), v160);
      *v171.i8 = vqmovn_u32(v171);
      v172 = vaddq_s16(v170, vshlq_n_s16(v171, 3uLL));
      v470 = v81;
      *v170.i8 = vqmovn_u32(v81);
      v173 = vceqzq_s16(vandq_s8(v170, v154));
      *v154.i8 = vqmovn_u32(v61);
      v174 = vbicq_s8(v154, v173);
      v175 = vandq_s8(vshlq_n_s16(v170, 2uLL), v164);
      v176 = vaddq_s16(vaddq_s16(v174, v175), vandq_s8(vceqq_s16(vandq_s8(v170, v166), v94), v167));
      v170.i64[1] = v475.i64[1];
      *v170.i8 = vqmovn_u32(v475);
      v177 = vmlaq_s16(v176, v170, v169);
      v178 = vaddq_s32(vaddq_s32(v88, v133), v467);
      *v175.i8 = vqmovn_u32(v178);
      v179 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v177, vshlq_n_s16(v175, 3uLL)), v172)), 0);
      v63 = v84 & 0xFFFF0000 | v95;
      v180 = vaddvq_s32(v179);
      if (v180)
      {
        v181.i64[0] = 0x1F0000001FLL;
        v181.i64[1] = 0x1F0000001FLL;
        v182 = vsubq_s32(v181, v145);
        v183.i64[0] = -1;
        v183.i64[1] = -1;
        v184 = vandq_s8(vsubq_s32(vshlq_s32(v183, v182), v452), v147);
        v185 = vcltzq_s32(vshlq_n_s32(v179, 0x1FuLL));
        v471 = vbslq_s8(v185, v460, v471);
        v453 = vbslq_s8(v185, v458, v14);
        v457 = vbslq_s8(v185, v456, v153);
        v459 = vbslq_s8(v185, v454, v151);
        v465 = vbslq_s8(v185, v450, v465);
        v461 = vbslq_s8(v185, v448, v104);
        v463 = vbslq_s8(v185, v462, v142);
        v475 = vbslq_s8(v185, v157, v475);
        v186 = vbslq_s8(v185, v158, v133);
        v464 = vbslq_s8(v185, v184, v464);
        v61 = vbslq_s8(v185, v150, v61);
        v470 = vbslq_s8(v185, v162, v81);
        v455 = vbslq_s8(v185, v159, v88);
        v466 = vbslq_s8(v185, v446, v466);
        v467 = vbslq_s8(v185, v160, v467);
        v449 = vaddq_s32(vaddq_s32(v455, v186), v467);
        v451 = v186;
        v187 = *(a3 + a4 + 32);
        v188 = *(a3 + 32);
      }

      else
      {
        v461 = v104;
        v463 = v142;
        v451 = v133;
        v453 = v14;
        v455 = v88;
        v457 = v153;
        v459 = v151;
        v187 = *(a3 + a4 + 32);
        v188 = *(a3 + 32);
        v449 = v178;
      }

      v202 = vsubq_s32(v6, vqtbl2q_s8(*v6.i8, xmmword_29D2F0F80));
      v191 = vsubq_s32(v7, vqtbl2q_s8(*v6.i8, xmmword_29D2F1030));
      v192 = *(a3 + 48);
      HIDWORD(v192) = HIDWORD(*(a3 + 16));
      v468 = v188;
      v193 = vsubq_s32(v188, vqtbl2q_s8(*v188.i8, xmmword_29D2F0FA0));
      v194 = vsubq_s32(v473, vqtbl2q_s8(*v188.i8, xmmword_29D2F1040));
      v195 = *(a3 + a4 + 16);
      HIDWORD(v195) = HIDWORD(v192);
      v196 = vsubq_s32(v9, vqtbl2q_s8(*v9.i8, xmmword_29D2F1050));
      v197 = *(a3 + a4 + 48);
      HIDWORD(v197) = HIDWORD(v192);
      v198 = vsubq_s32(v472, vqtbl2q_s8(*v9.i8, xmmword_29D2F0F80));
      v469 = v187;
      v199 = vsubq_s32(v187, vqtbl2q_s8(*v187.i8, xmmword_29D2F1060));
      v200 = vsubq_s32(v474, vqtbl2q_s8(*v187.i8, xmmword_29D2F0F80));
      v201 = v191;
      v201.i32[3] = v202.i32[0];
      v202.i32[0] = v191.i32[3];
      v203 = vmaxq_s32(v202, v201);
      v204 = vminq_s32(v202, v201);
      v203.i32[0] = vmaxvq_s32(v203);
      v204.i32[0] = vminvq_s32(v204);
      v205 = vdupq_lane_s32(*v203.i8, 0);
      v206 = vdupq_lane_s32(*v204.i8, 0);
      v207.i64[0] = 0x8000000080000000;
      v207.i64[1] = 0x8000000080000000;
      v208 = vmaxq_s32(v205, v207);
      v209 = vminq_s32(v206, v207);
      v210 = vzip1q_s32(v205, v206);
      v207.i64[0] = 0x2000000020;
      v207.i64[1] = 0x2000000020;
      v211 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v210)), vceqzq_s32(v210));
      v212 = vpmaxq_s32(v211, v211);
      v213 = vmaxq_s32(v193, v194);
      v445 = v194;
      v447 = v193;
      v214 = vminq_s32(v193, v194);
      v213.i32[0] = vmaxvq_s32(v213);
      v214.i32[0] = vminvq_s32(v214);
      v215 = vdupq_lane_s32(*v213.i8, 0);
      v216 = vdupq_lane_s32(*v214.i8, 0);
      v217 = vmaxq_s32(v208, v215);
      v218 = vminq_s32(v209, v216);
      v219 = vzip1q_s32(v215, v216);
      v220 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v219)), vceqzq_s32(v219));
      v221 = vpmaxq_s32(v220, v220);
      v222 = vmaxq_s32(v196, v198);
      v223 = vminq_s32(v196, v198);
      v222.i32[0] = vmaxvq_s32(v222);
      v223.i32[0] = vminvq_s32(v223);
      v224 = vdupq_lane_s32(*v222.i8, 0);
      v225 = vdupq_lane_s32(*v223.i8, 0);
      v226 = vmaxq_s32(v217, v224);
      v227 = vminq_s32(v218, v225);
      v228 = vzip1q_s32(v224, v225);
      v229 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v228)), vceqzq_s32(v228));
      v230 = vpmaxq_s32(v229, v229);
      v231 = vmaxq_s32(v199, v200);
      v232 = vminq_s32(v199, v200);
      v231.i32[0] = vmaxvq_s32(v231);
      v232.i32[0] = vminvq_s32(v232);
      v233 = vdupq_lane_s32(*v231.i8, 0);
      v234 = vdupq_lane_s32(*v232.i8, 0);
      v235 = vmaxq_s32(v226, v233);
      v236 = vminq_s32(v227, v234);
      v237 = vzip1q_s32(v233, v234);
      v238 = vbicq_s8(vsubq_s32(v207, vclsq_s32(v237)), vceqzq_s32(v237));
      v239 = vpmaxq_s32(v238, v238);
      v240 = vmaxq_s32(vmaxq_s32(v212, v221), vmaxq_s32(v230, v239));
      v241 = vclzq_s32(vsubq_s32(v235, v236));
      v242 = vsubq_s32(v207, v241);
      v243 = vcgtq_s32(v240, v242);
      v244 = vminq_s32(v242, v240);
      v242.i64[0] = 0x900000009;
      v242.i64[1] = 0x900000009;
      v207.i64[0] = 0x200000002;
      v207.i64[1] = 0x200000002;
      v245 = vorrq_s8(vandq_s8(vceqzq_s32(v244), v207), vsubq_s32(vandq_s8(v243, v242), vmvnq_s8(v243)));
      v193.i64[0] = 0xF0000000FLL;
      v193.i64[1] = 0xF0000000FLL;
      v246 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v212), v193), 0);
      v247 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v221), v193), 0);
      v248 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v230), v193), 0);
      v249 = vmaxq_s32(vminq_s32(vsubq_s32(v244, v239), v193), 0);
      v250 = vsubq_s32(v244, v246);
      v251 = vaddq_s32(v249, v248);
      v207.i64[0] = 0x400000004;
      v207.i64[1] = 0x400000004;
      v252 = vorrq_s8(vbicq_s8(v207, vceqq_s32(v251, vnegq_s32(vaddq_s32(v246, v247)))), v245);
      *v251.i8 = vqmovn_u32(v252);
      v194.i64[0] = 0x8000800080008;
      v194.i64[1] = 0x8000800080008;
      *v245.i8 = vqmovn_u32(v244);
      v253 = vbicq_s8(v245, vceqzq_s16(vandq_s8(v251, v194)));
      v254 = vandq_s8(vshlq_n_s16(v251, 2uLL), v164);
      v193.i64[0] = 0x2000200020002;
      v193.i64[1] = 0x2000200020002;
      v255 = vandq_s8(vceqq_s16(vandq_s8(v251, v166), v193), v167);
      v256 = vaddq_s16(v253, v254);
      *v254.i8 = vqmovn_u32(v250);
      v257.i64[0] = 0x7000700070007;
      v257.i64[1] = 0x7000700070007;
      v258 = vmlaq_s16(vaddq_s16(v256, v255), v254, v257);
      *v255.i8 = vqmovn_u32(v470);
      *v254.i8 = vqmovn_u32(v61);
      v259 = vaddq_s16(vaddq_s16(vbicq_s8(v254, vceqzq_s16(vandq_s8(v255, v194))), vandq_s8(vshlq_n_s16(v255, 2uLL), v164)), vandq_s8(vceqq_s16(vandq_s8(v255, v166), v193), v167));
      v255.i64[1] = v475.i64[1];
      *v255.i8 = vqmovn_u32(v475);
      v260 = vmlaq_s16(v259, v255, v257);
      v261 = vsubq_s32(v244, v247);
      v262 = vsubq_s32(v244, v248);
      v263 = vsubq_s32(v244, v249);
      v264 = vaddq_s32(vaddq_s32(v262, v261), v263);
      *v264.i8 = vqmovn_u32(v264);
      v265 = vshlq_n_s16(v264, 3uLL);
      v266 = vaddq_s16(v258, v265);
      *v265.i8 = vqmovn_u32(v449);
      v80 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v260, vshlq_n_s16(v265, 3uLL)), v266)), 0);
      v266.i16[0] = vaddvq_s32(v80);
      v267 = v266.u16[0];
      if (v266.i16[0])
      {
        v268.i64[0] = 0x1F0000001FLL;
        v268.i64[1] = 0x1F0000001FLL;
        v269 = vsubq_s32(v268, v241);
        v268.i64[0] = -1;
        v268.i64[1] = -1;
        v270 = vandq_s8(vsubq_s32(vshlq_s32(v268, v269), v236), v243);
        v80 = vcltzq_s32(vshlq_n_s32(v80, 0x1FuLL));
        v11.i32[0] = vbslq_s8(v80, vextq_s8(v7, v7, 0xCuLL), v11).u32[0];
        v463 = vbslq_s8(v80, v202, v463);
        v471 = vbslq_s8(v80, v201, v471);
        v14 = vbslq_s8(v80, v447, v453);
        v15 = vbslq_s8(v80, v445, v457);
        v16 = vbslq_s8(v80, v196, v459);
        v17 = vbslq_s8(v80, v198, v465);
        v18 = vbslq_s8(v80, v199, v461);
        v19 = vbslq_s8(v80, v200, v466);
        v73 = vbslq_s8(v80, v250, v475);
        v76 = vbslq_s8(v80, v261, v451);
        v77 = vbslq_s8(v80, v262, v455);
        v78 = vbslq_s8(v80, v263, v467);
        v67 = vbslq_s8(v80, v270, v464);
        v61 = vbslq_s8(v80, v244, v61);
        v81 = vbslq_s8(v80, v252, v470);
      }

      else
      {
        v73 = v475;
        v17 = v465;
        v19 = v466;
        v16 = v459;
        v18 = v461;
        v78 = v467;
        v67 = v464;
        v77 = v455;
        v15 = v457;
        v76 = v451;
        v14 = v453;
        v81 = v470;
      }

      if (v180)
      {
        v271 = v267 == 0;
      }

      else
      {
        v271 = 0;
      }

      v62 = v271;
      v13 = v471;
      v75 = v73;
      v12 = v463;
      v10 = v469;
      v8 = v468;
    }

    *v80.i8 = vqmovn_u32(v81);
    v272.i64[0] = 0x8000800080008;
    v272.i64[1] = 0x8000800080008;
    *v73.i8 = vqmovn_u32(v61);
    v272.i16[0] = vbicq_s8(v73, vceqzq_s16(vandq_s8(v80, v272))).u16[0];
    v273.i64[0] = 0x3000300030003;
    v273.i64[1] = 0x3000300030003;
    v274.i64[0] = 0x2000200020002;
    v274.i64[1] = 0x2000200020002;
    v275 = vceqq_s16(vandq_s8(v80, v273), v274);
    v274.i64[0] = 0x20002000200020;
    v274.i64[1] = 0x20002000200020;
    v275.i16[0] = vandq_s8(v275, v274).u16[0];
    v274.i16[0] = vqmovn_u32(v75).u16[0];
    if (((v272.i16[0] + ((4 * v80.i16[0]) & 0x10) + v275.i16[0] - v274.i16[0] + 8 * v274.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v77, v76), v78)).u16[0]) + 49) > 0x3FF)
    {
      *a1 = v6;
      a1[1] = v7;
      a1[2] = v8;
      a1[3] = v473;
      a1[4] = v9;
      a1[5] = v472;
      v279 = &a1[6];
      v189 = 127;
      result = 128;
      *v279 = v10;
      v279[1] = v474;
    }

    else
    {
      v276 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v277 = 8 * (a1 & 7);
      if (v277)
      {
        v278 = *v276 & ~(-1 << v277);
      }

      else
      {
        v278 = 0;
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

      v281 = v280 | v81.i8[0] & 0x1F | (v11.u32[0] << 10);
      v282 = (v281 << v277) | v278;
      if (v277 >= 0x16)
      {
        *v276 = v282;
        v282 = v281 >> (-8 * (a1 & 7u));
      }

      v283 = v277 + 42;
      v284 = vsubq_s32(v61, v75);
      v285 = vsubq_s32(v61, v76);
      v286 = vsubq_s32(v61, v77);
      v287 = vsubq_s32(v61, v78);
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
      v288 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v81, v285))), v286);
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
      v303 = (v277 + 42) & 0x3A;
      v304 = (v301.i64[0] << v303) | v282;
      if ((v302.i64[0] + v303) >= 0x40)
      {
        *(v276 + ((v283 >> 3) & 8)) = v304;
        v304 = v301.i64[0] >> -v303;
      }

      v305 = v302.i64[0] + v283;
      v306 = v304 | (v301.i64[1] << v305);
      if ((v305 & 0x3F) + v302.i64[1] >= 0x40)
      {
        *(v276 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v301.i64[1] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = vceqq_s32(v61, v75);
      v308 = v305 + v302.i64[1];
      v309.i64[0] = 0x800000008;
      v309.i64[1] = 0x800000008;
      v310 = vandq_s8(vextq_s8(vtstq_s32(v81, v309), 0, 0xCuLL), v61);
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
        *(v276 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
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
        *(v276 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v319.i64[1] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vaddq_s32(v322, v12);
      v326 = v323 + v320.i64[1];
      if (v62)
      {
        v324 |= v63 << v326;
        if ((v326 & 0x3F) >= 0x20)
        {
          *(v276 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
          v324 = v63 >> -(v326 & 0x3F);
        }

        v326 += 32;
      }

      v327 = vextq_s8(0, v75, 0xCuLL);
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
        *(v276 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v336.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = vceqq_s32(v61, v76);
      v340 = vaddq_s32(v13, v322);
      v341 = v337.i64[0] + v326;
      v342 = (v337.i64[0] + v326) & 0x3F;
      v343 = v338 | (v336.i64[1] << v341);
      if ((v341 & 0x3F) + v337.i64[1] >= 0x40)
      {
        *(v276 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
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
      v348 = vandq_s8(vshlq_u32(v347, vaddq_s32(v75, v346)), v340);
      v349.i64[0] = v348.u32[0];
      v349.i64[1] = v348.u32[1];
      v350 = v349;
      v349.i64[0] = v348.u32[2];
      v349.i64[1] = v348.u32[3];
      v351 = v349;
      v349.i64[0] = v75.u32[0];
      v349.i64[1] = v75.u32[1];
      v352 = v349;
      v349.i64[0] = v75.u32[2];
      v349.i64[1] = v75.u32[3];
      v353 = vpaddq_s64(vshlq_u64(v350, vzip1q_s64(0, v352)), vshlq_u64(v351, vzip1q_s64(0, v349)));
      v354 = vpaddq_s64(v352, v349);
      v355 = (v353.i64[0] << v345) | v343;
      if (v354.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v276 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = vaddq_s32(v14, v344);
      v357 = v354.i64[0] + v345;
      v358 = v355 | (v353.i64[1] << v357);
      if ((v357 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v276 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
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
      v362 = vshlq_u32(v361, vaddq_s32(v76, v360));
      v363 = vandq_s8(v362, v356);
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v365 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v366 = v364;
      v364.i64[0] = v76.u32[0];
      v364.i64[1] = v76.u32[1];
      v367 = v364;
      v364.i64[0] = v76.u32[2];
      v364.i64[1] = v76.u32[3];
      v368 = vzip1q_s64(0, v367);
      v369 = vzip1q_s64(0, v364);
      v370 = vpaddq_s64(vshlq_u64(v365, v368), vshlq_u64(v366, v369));
      v371 = vpaddq_s64(v367, v364);
      v372 = (v370.i64[0] << v359) | v358;
      if (v371.i64[0] + (v359 & 0x3F) >= 0x40)
      {
        *(v276 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        if ((v359 & 0x3F) != 0)
        {
          v372 = v370.i64[0] >> -(v359 & 0x3F);
        }

        else
        {
          v372 = 0;
        }
      }

      v373 = vceqq_s32(v61, v77);
      v374 = vaddq_s32(v15, v344);
      v375 = v371.i64[0] + v359;
      v376 = v372 | (v370.i64[1] << v375);
      if ((v375 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v276 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
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
        *(v276 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v382.i64[0] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = vaddq_s32(v16, v377);
      v385 = v371.i64[0] + v378;
      v386 = (v371.i64[0] + v378) & 0x3F;
      v387 = v383 | (v382.i64[1] << v385);
      if ((v385 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v276 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
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
      v391 = vshlq_u32(v390, vaddq_s32(v77, v389));
      v392 = vandq_s8(v391, v384);
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v394 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v395 = v393;
      v393.i64[0] = v77.u32[0];
      v393.i64[1] = v77.u32[1];
      v396 = v393;
      v393.i64[0] = v77.u32[2];
      v393.i64[1] = v77.u32[3];
      v397 = vzip1q_s64(0, v396);
      v398 = vzip1q_s64(0, v393);
      v399 = vpaddq_s64(vshlq_u64(v394, v397), vshlq_u64(v395, v398));
      v400 = vpaddq_s64(v396, v393);
      v401 = (v399.i64[0] << v388) | v387;
      if (v400.i64[0] + (v388 & 0x3F) >= 0x40)
      {
        *(v276 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        if ((v388 & 0x3F) != 0)
        {
          v401 = v399.i64[0] >> -(v388 & 0x3F);
        }

        else
        {
          v401 = 0;
        }
      }

      v402 = vceqq_s32(v61, v78);
      v403 = vaddq_s32(v17, v377);
      v404 = v400.i64[0] + v388;
      v405 = v401 | (v399.i64[1] << v404);
      if ((v404 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v276 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
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
        *(v276 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v411.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = vaddq_s32(v18, v406);
      v414 = v400.i64[0] + v407;
      v415 = (v400.i64[0] + v407) & 0x3F;
      v416 = v412 | (v411.i64[1] << v414);
      if ((v414 & 0x3F) + v400.i64[1] >= 0x40)
      {
        *(v276 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
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
      v420 = vshlq_u32(v419, vaddq_s32(v78, v418));
      v421 = vandq_s8(v420, v413);
      v422.i64[0] = v421.u32[0];
      v422.i64[1] = v421.u32[1];
      v423 = v422;
      v422.i64[0] = v421.u32[2];
      v422.i64[1] = v421.u32[3];
      v424 = v422;
      v422.i64[0] = v78.u32[0];
      v422.i64[1] = v78.u32[1];
      v425 = v422;
      v422.i64[0] = v78.u32[2];
      v422.i64[1] = v78.u32[3];
      v426 = vzip1q_s64(0, v425);
      v427 = vzip1q_s64(0, v422);
      v428 = vpaddq_s64(vshlq_u64(v423, v426), vshlq_u64(v424, v427));
      v429 = vpaddq_s64(v425, v422);
      v430 = (v414 + v400.i64[1]) & 0x3F;
      v431 = (v428.i64[0] << (v414 + v400.i8[8])) | v416;
      if ((v429.i64[0] + v430) > 0x3F)
      {
        *(v276 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        if (v430)
        {
          v431 = v428.i64[0] >> -v430;
        }

        else
        {
          v431 = 0;
        }
      }

      v432 = vaddq_s32(v19, v406);
      v433 = v429.i64[0] + v417;
      v434 = v431 | (v428.i64[1] << v433);
      if ((v433 & 0x3F) + v429.i64[1] >= 0x40)
      {
        *(v276 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
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
        *(v276 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
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
        *(v276 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
        v443 = v439.i64[1] >> -v442;
        if (!v442)
        {
          v443 = 0;
        }
      }

      v444 = v441 + v429.i64[1];
      if ((v444 & 0x3F) != 0)
      {
        *(v276 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
      }

      result = (v444 - v277 + 7) >> 3;
      v189 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = *a3;
    v189 = 3;
    result = 4;
  }

  *a2 = v189;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 64, a2, v14, v13);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 64, a2, v20, v19);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 128, a2, v23, v22);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 192, a2, v26, v25);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 128, a2, v28, v27);
    v9 = (v9 + result);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 192, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v13 = vzip1q_s64(v8, v10);
  v14 = vzip2q_s64(v8, v10);
  v16 = *v7;
  v17 = v7[1];
  v15 = (v7 + a4);
  v18 = v15[1];
  v19 = vzip1q_s64(v16, *v15);
  v20 = vzip2q_s64(v16, *v15);
  v21 = vzip1q_s64(v17, v18);
  v22 = vzip2q_s64(v17, v18);
  v23 = vdupq_lane_s32(*v11.i8, 0);
  v24 = vsubq_s32(v11, v23);
  v25 = vsubq_s32(v12, v23);
  v26 = vsubq_s32(v19, v23);
  v27 = vsubq_s32(v20, v23);
  v28 = vsubq_s32(v13, v23);
  v29 = vsubq_s32(v14, v23);
  v30 = vsubq_s32(v21, v23);
  v31 = vsubq_s32(v22, v23);
  v32 = vmaxq_s32(v24, v25);
  v33 = vminq_s32(v24, v25);
  v32.i32[0] = vmaxvq_s32(v32);
  v33.i32[0] = vminvq_s32(v33);
  v34 = vdupq_lane_s32(*v32.i8, 0);
  v35 = vdupq_lane_s32(*v33.i8, 0);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v36 = vmaxq_s32(v34, v9);
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  v37 = vminq_s32(v35, v18);
  v38 = vzip1q_s32(v34, v35);
  v39.i64[0] = 0x2000000020;
  v39.i64[1] = 0x2000000020;
  v40 = vbicq_s8(vsubq_s32(v39, vclsq_s32(v38)), vceqzq_s32(v38));
  v41 = vpmaxq_s32(v40, v40);
  v42 = vmaxq_s32(v26, v27);
  v43 = vminq_s32(v26, v27);
  v42.i32[0] = vmaxvq_s32(v42);
  v43.i32[0] = vminvq_s32(v43);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v45 = vdupq_lane_s32(*v43.i8, 0);
  v46 = vmaxq_s32(v36, v44);
  v47 = vminq_s32(v37, v45);
  v48 = vzip1q_s32(v44, v45);
  v49 = vbicq_s8(vsubq_s32(v39, vclsq_s32(v48)), vceqzq_s32(v48));
  v50 = vpmaxq_s32(v49, v49);
  v51 = vmaxq_s32(v28, v29);
  v52 = vminq_s32(v28, v29);
  v51.i32[0] = vmaxvq_s32(v51);
  v53 = vdupq_lane_s32(*v51.i8, 0);
  v52.i32[0] = vminvq_s32(v52);
  v54 = vdupq_lane_s32(*v52.i8, 0);
  v55 = vmaxq_s32(v46, v53);
  v56 = vminq_s32(v47, v54);
  v57 = vzip1q_s32(v53, v54);
  v58 = vbicq_s8(vsubq_s32(v39, vclsq_s32(v57)), vceqzq_s32(v57));
  v59 = vmaxq_s32(v30, v31);
  v472 = v30;
  v473 = v31;
  v60 = vminq_s32(v30, v31);
  v59.i32[0] = vmaxvq_s32(v59);
  v60.i32[0] = vminvq_s32(v60);
  v61 = vdupq_lane_s32(*v59.i8, 0);
  v62 = vdupq_lane_s32(*v60.i8, 0);
  v63 = vpmaxq_s32(v58, v58);
  v64 = vminq_s32(v56, v62);
  v65 = vzip1q_s32(v61, v62);
  v66 = vbicq_s8(vsubq_s32(v39, vclsq_s32(v65)), vceqzq_s32(v65));
  v67 = vpmaxq_s32(v66, v66);
  v68 = vmaxq_s32(vmaxq_s32(v41, v50), vmaxq_s32(v63, v67));
  v69 = vclzq_s32(vsubq_s32(vmaxq_s32(v55, v61), v64));
  v70 = vsubq_s32(v39, v69);
  v71 = vminq_s32(v70, v68);
  if (vmaxvq_s32(v71))
  {
    v464 = v20;
    v465 = v22;
    v466 = v14;
    v72 = 0;
    v73 = 0;
    v74.i64[0] = 0x1F0000001FLL;
    v74.i64[1] = 0x1F0000001FLL;
    v75 = vsubq_s32(v74, v69);
    v74.i64[0] = -1;
    v74.i64[1] = -1;
    v76 = vcgtq_s32(v68, v70);
    v77 = vandq_s8(vsubq_s32(vshlq_s32(v74, v75), v64), v76);
    v78.i64[0] = 0x800000008;
    v78.i64[1] = 0x800000008;
    v79.i64[0] = 0x300000003;
    v79.i64[1] = 0x300000003;
    v80 = vorrq_s8(vandq_s8(vceqzq_s32(v71), v79), vandq_s8(v76, v78));
    v76.i64[0] = 0xF0000000FLL;
    v76.i64[1] = 0xF0000000FLL;
    v81 = vmaxq_s32(vminq_s32(vsubq_s32(v71, v41), v76), 0);
    v82 = vmaxq_s32(vminq_s32(vsubq_s32(v71, v50), v76), 0);
    v83 = vmaxq_s32(vminq_s32(vsubq_s32(v71, v63), v76), 0);
    v84 = vmaxq_s32(vminq_s32(vsubq_s32(v71, v67), v76), 0);
    v85 = vsubq_s32(v71, v81);
    v86 = vsubq_s32(v71, v82);
    v87 = vsubq_s32(v71, v83);
    v474 = vsubq_s32(v71, v84);
    v88 = vceqq_s32(vaddq_s32(v84, v83), vnegq_s32(vaddq_s32(v81, v82)));
    v82.i64[0] = 0x400000004;
    v82.i64[1] = 0x400000004;
    v89 = vbicq_s8(v82, v88);
    v90 = vorrq_s8(v89, v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v463 = v77;
      v91 = vextq_s8(v11, v11, 4uLL);
      *v91.i8 = vsub_s32(*v91.i8, vdup_lane_s32(*v11.i8, 0));
      v467 = v91;
      *v91.i8 = vshl_n_s32(*v91.i8, 0x10uLL);
      v92 = v91.i32[1];
      v93 = vshl_s32(*v91.i8, 0xFFFFFFF1FFFFFFF2);
      v94 = v91.i32[1] >> 16;
      v95 = vdupq_n_s32(v91.i32[0] >> 16);
      v471 = v90;
      v96 = vdupq_n_s32(v94);
      v97.i64[0] = 0xFFFFFFFF00000000;
      v97.i64[1] = 0xFFFFFFFF00000000;
      v96.i64[0] = 0;
      v98 = vaddq_s32(v96, vandq_s8(v95, v97));
      v99 = vmlaq_s32(v96, v95, xmmword_29D2F11A0);
      v470 = v24;
      v100 = vsubq_s32(v24, v98);
      v101 = vsubq_s32(v25, v99);
      v102 = vdupq_n_s32(-v93.i32[1]);
      v103 = vsubq_s32(vaddq_s32(v102, v26), v98);
      v104 = vsubq_s32(vaddq_s32(v27, v102), v99);
      v105 = vdupq_n_s32(-v93.i32[0]);
      v106 = vsubq_s32(vaddq_s32(v105, v28), v98);
      v107 = vaddq_s32(vsubq_s32(v105, v99), v29);
      v108 = vdupq_n_s32(-v93.i32[0] - v93.i32[1]);
      v109 = vsubq_s32(vaddq_s32(v108, v30), v98);
      v110 = v29;
      v111 = vaddq_s32(vsubq_s32(v108, v99), v473);
      v112 = vmaxq_s32(v100, v101);
      v461 = v100;
      v113 = vminq_s32(v100, v101);
      v112.i32[0] = vmaxvq_s32(v112);
      v113.i32[0] = vminvq_s32(v113);
      v114 = vdupq_lane_s32(*v112.i8, 0);
      v115 = vdupq_lane_s32(*v113.i8, 0);
      v97.i64[0] = 0x8000000080000000;
      v97.i64[1] = 0x8000000080000000;
      v116 = vmaxq_s32(v114, v97);
      v117 = vminq_s32(v115, v97);
      v118 = vzip1q_s32(v114, v115);
      v97.i64[0] = 0x2000000020;
      v97.i64[1] = 0x2000000020;
      v119 = vbicq_s8(vsubq_s32(v97, vclsq_s32(v118)), vceqzq_s32(v118));
      v120 = vpmaxq_s32(v119, v119);
      v121 = vmaxq_s32(v103, v104);
      v458 = v103;
      v454 = v104;
      v122 = vminq_s32(v103, v104);
      v121.i32[0] = vmaxvq_s32(v121);
      v122.i32[0] = vminvq_s32(v122);
      v123 = vdupq_lane_s32(*v121.i8, 0);
      v124 = vdupq_lane_s32(*v122.i8, 0);
      v125 = vmaxq_s32(v116, v123);
      v126 = vminq_s32(v117, v124);
      v127 = vzip1q_s32(v123, v124);
      v128 = vbicq_s8(vsubq_s32(v97, vclsq_s32(v127)), vceqzq_s32(v127));
      v469 = v27;
      v129 = vpmaxq_s32(v128, v128);
      v130 = vmaxq_s32(v106, v107);
      v450 = v107;
      v452 = v106;
      v131 = vminq_s32(v106, v107);
      v130.i32[0] = vmaxvq_s32(v130);
      v131.i32[0] = vminvq_s32(v131);
      v132 = vdupq_lane_s32(*v130.i8, 0);
      v133 = vdupq_lane_s32(*v131.i8, 0);
      v134 = vmaxq_s32(v125, v132);
      v135 = vminq_s32(v126, v133);
      v136 = vzip1q_s32(v132, v133);
      v137 = vbicq_s8(vsubq_s32(v97, vclsq_s32(v136)), vceqzq_s32(v136));
      v138 = vpmaxq_s32(v137, v137);
      v139 = vmaxq_s32(v109, v111);
      v448 = v111;
      v449 = v109;
      v140 = vminq_s32(v109, v111);
      v139.i32[0] = vmaxvq_s32(v139);
      v140.i32[0] = vminvq_s32(v140);
      v141 = vdupq_lane_s32(*v139.i8, 0);
      v142 = vdupq_lane_s32(*v140.i8, 0);
      v143 = vmaxq_s32(v134, v141);
      v144 = vzip1q_s32(v141, v142);
      v145 = vbicq_s8(vsubq_s32(v97, vclsq_s32(v144)), vceqzq_s32(v144));
      v146 = vpmaxq_s32(v145, v145);
      v147 = vmaxq_s32(vmaxq_s32(v120, v129), vmaxq_s32(v138, v146));
      v456 = vminq_s32(v135, v142);
      v446 = vclzq_s32(vsubq_s32(v143, v456));
      v148 = vsubq_s32(v97, v446);
      v149 = vcgtq_s32(v147, v148);
      v150 = vminq_s32(v148, v147);
      v97.i64[0] = 0x200000002;
      v97.i64[1] = 0x200000002;
      v148.i64[0] = 0xA0000000ALL;
      v148.i64[1] = 0xA0000000ALL;
      v447 = v149;
      v151 = vbslq_s8(v149, v148, v97);
      v148.i64[0] = 0x100000001;
      v148.i64[1] = 0x100000001;
      v152 = vmaxq_s32(v150, v148);
      v149.i64[0] = 0xF0000000FLL;
      v149.i64[1] = 0xF0000000FLL;
      v153 = vmaxq_s32(vminq_s32(vsubq_s32(v152, v120), v149), 0);
      v154 = v110;
      v155 = vmaxq_s32(vminq_s32(vsubq_s32(v152, v129), v149), 0);
      v156 = vmaxq_s32(vminq_s32(vsubq_s32(v152, v138), v149), 0);
      v157 = vmaxq_s32(vminq_s32(vsubq_s32(v152, v146), v149), 0);
      v158 = vsubq_s32(v152, v153);
      v159 = vsubq_s32(v152, v155);
      v160 = vsubq_s32(v152, v156);
      v161 = vsubq_s32(v152, v157);
      v162 = vceqq_s32(vaddq_s32(v157, v156), vnegq_s32(vaddq_s32(v153, v155)));
      v156.i64[0] = 0x400000004;
      v156.i64[1] = 0x400000004;
      v163 = vorrq_s8(vbicq_s8(v156, v162), v151);
      v156.i64[1] = v467.i64[1];
      v443 = v158;
      v444 = v163;
      *v156.i8 = vqmovn_u32(v163);
      v110.i64[0] = 0x8000800080008;
      v110.i64[1] = 0x8000800080008;
      *v155.i8 = vqmovn_u32(v152);
      v164 = vbicq_s8(v155, vceqzq_s16(vandq_s8(v156, v110)));
      v163.i64[0] = 0x2000200020002;
      v163.i64[1] = 0x2000200020002;
      v142.i64[0] = 0x10001000100010;
      v142.i64[1] = 0x10001000100010;
      v165 = vandq_s8(vshlq_n_s16(v156, 2uLL), v142);
      v135.i64[0] = 0x3000300030003;
      v135.i64[1] = 0x3000300030003;
      v148.i64[0] = 0x20002000200020;
      v148.i64[1] = 0x20002000200020;
      v166 = vaddq_s16(v164, v165);
      *v165.i8 = vqmovn_u32(v158);
      v158.i64[0] = 0x7000700070007;
      v158.i64[1] = 0x7000700070007;
      v167 = vmlaq_s16(vaddq_s16(v166, vandq_s8(vceqq_s16(vandq_s8(v156, v135), v163), v148)), v165, v158);
      v445 = v159;
      v168 = vaddq_s32(vaddq_s32(v160, v159), v161);
      *v168.i8 = vqmovn_u32(v168);
      v169 = vshlq_n_s16(v168, 3uLL);
      v170 = vaddq_s16(v167, v169);
      *v169.i8 = vqmovn_u32(v471);
      v171 = vceqzq_s16(vandq_s8(v169, v110));
      *v110.i8 = vqmovn_u32(v71);
      v172 = vaddq_s16(vbicq_s8(v110, v171), vandq_s8(vshlq_n_s16(v169, 2uLL), v142));
      v173 = vaddq_s16(v172, vandq_s8(vceqq_s16(vandq_s8(v169, v135), v163), v148));
      *v172.i8 = vqmovn_u32(v85);
      v174 = vmlaq_s16(v173, v172, v158);
      v175 = vaddq_s32(v87, v86);
      v176 = vaddq_s32(v175, v474);
      *v175.i8 = vqmovn_u32(v176);
      v177 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v174, vshlq_n_s16(v175, 3uLL)), v170)), 0);
      v73 = v92 & 0xFFFF0000 | v467.u16[0];
      v178 = vaddvq_s32(v177);
      if (v178)
      {
        v179.i64[0] = 0x1F0000001FLL;
        v179.i64[1] = 0x1F0000001FLL;
        v180.i64[0] = -1;
        v180.i64[1] = -1;
        v181 = vandq_s8(vsubq_s32(vshlq_s32(v180, vsubq_s32(v179, v446)), v456), v447);
        v182 = vcltzq_s32(vshlq_n_s32(v177, 0x1FuLL));
        v470 = vbslq_s8(v182, v461, v470);
        v457 = vbslq_s8(v182, v101, v25);
        v468 = vbslq_s8(v182, v458, v26);
        v469 = vbslq_s8(v182, v454, v469);
        v460 = vbslq_s8(v182, v450, v154);
        v462 = vbslq_s8(v182, v452, v28);
        v472 = vbslq_s8(v182, v449, v472);
        v473 = vbslq_s8(v182, v448, v473);
        v451 = vbslq_s8(v182, v443, v85);
        v183 = vbslq_s8(v182, v445, v86);
        v474 = vbslq_s8(v182, v161, v474);
        v77 = vbslq_s8(v182, v181, v463);
        v71 = vbslq_s8(v182, v152, v71);
        v471 = vbslq_s8(v182, v444, v471);
        v459 = vbslq_s8(v182, v160, v87);
        v453 = vaddq_s32(vaddq_s32(v459, v183), v474);
        v455 = v183;
      }

      else
      {
        v455 = v86;
        v457 = v25;
        v468 = v26;
        v459 = v87;
        v460 = v154;
        v462 = v28;
        v77 = v463;
        v451 = v85;
        v453 = v176;
      }

      v89 = vsubq_s32(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
      v185 = vsubq_s32(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
      v186 = v464;
      v186.i32[3] = v12.i32[3];
      v187 = vsubq_s32(v19, vqtbl2q_s8(*v19.i8, xmmword_29D2F0FA0));
      v83 = vsubq_s32(v464, vqtbl2q_s8(*v19.i8, xmmword_29D2F1040));
      v188 = v466;
      v188.i32[3] = v12.i32[3];
      v189 = vsubq_s32(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F1050));
      v190 = v465;
      v190.i32[3] = v12.i32[3];
      v191 = vsubq_s32(v466, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
      v192 = vsubq_s32(v21, vqtbl2q_s8(*v21.i8, xmmword_29D2F1060));
      v193 = vsubq_s32(v465, vqtbl2q_s8(*v21.i8, xmmword_29D2F0F80));
      v194 = v185;
      v194.i32[3] = v89.i32[0];
      v89.i32[0] = v185.i32[3];
      v195 = vmaxq_s32(v89, v194);
      v196 = vminq_s32(v89, v194);
      v195.i32[0] = vmaxvq_s32(v195);
      v196.i32[0] = vminvq_s32(v196);
      v197 = vdupq_lane_s32(*v195.i8, 0);
      v198 = vdupq_lane_s32(*v196.i8, 0);
      v199.i64[0] = 0x8000000080000000;
      v199.i64[1] = 0x8000000080000000;
      v200 = vmaxq_s32(v197, v199);
      v201.i64[0] = 0x8000000080000000;
      v201.i64[1] = 0x8000000080000000;
      v202 = vminq_s32(v198, v201);
      v203 = vzip1q_s32(v197, v198);
      v204.i64[0] = 0x2000000020;
      v204.i64[1] = 0x2000000020;
      v205 = vbicq_s8(vsubq_s32(v204, vclsq_s32(v203)), vceqzq_s32(v203));
      v206 = vpmaxq_s32(v205, v205);
      v207 = vmaxq_s32(v187, v83);
      v208 = vminq_s32(v187, v83);
      v207.i32[0] = vmaxvq_s32(v207);
      v208.i32[0] = vminvq_s32(v208);
      v209 = vdupq_lane_s32(*v207.i8, 0);
      v210 = vdupq_lane_s32(*v208.i8, 0);
      v211 = vmaxq_s32(v200, v209);
      v212 = vminq_s32(v202, v210);
      v213 = vzip1q_s32(v209, v210);
      v214 = vbicq_s8(vsubq_s32(v204, vclsq_s32(v213)), vceqzq_s32(v213));
      v215 = vpmaxq_s32(v214, v214);
      v216 = vmaxq_s32(v189, v191);
      v217 = vminq_s32(v189, v191);
      v216.i32[0] = vmaxvq_s32(v216);
      v217.i32[0] = vminvq_s32(v217);
      v218 = vdupq_lane_s32(*v216.i8, 0);
      v219 = vdupq_lane_s32(*v217.i8, 0);
      v220 = vmaxq_s32(v211, v218);
      v221 = vminq_s32(v212, v219);
      v222 = vzip1q_s32(v218, v219);
      v223 = vbicq_s8(vsubq_s32(v204, vclsq_s32(v222)), vceqzq_s32(v222));
      v224 = vpmaxq_s32(v223, v223);
      v225 = vmaxq_s32(v192, v193);
      v226 = vminq_s32(v192, v193);
      v225.i32[0] = vmaxvq_s32(v225);
      v226.i32[0] = vminvq_s32(v226);
      v227 = vdupq_lane_s32(*v225.i8, 0);
      v228 = vdupq_lane_s32(*v226.i8, 0);
      v229 = vmaxq_s32(v220, v227);
      v230 = vminq_s32(v221, v228);
      v231 = vzip1q_s32(v227, v228);
      v232 = vbicq_s8(vsubq_s32(v204, vclsq_s32(v231)), vceqzq_s32(v231));
      v233 = vpmaxq_s32(v232, v232);
      v234 = vmaxq_s32(vmaxq_s32(v206, v215), vmaxq_s32(v224, v233));
      v235 = vclzq_s32(vsubq_s32(v229, v230));
      v236 = vsubq_s32(v204, v235);
      v237 = vcgtq_s32(v234, v236);
      v238 = vminq_s32(v236, v234);
      v236.i64[0] = 0x900000009;
      v236.i64[1] = 0x900000009;
      v239.i64[0] = 0x200000002;
      v239.i64[1] = 0x200000002;
      v240 = vorrq_s8(vandq_s8(vceqzq_s32(v238), v239), vsubq_s32(vandq_s8(v237, v236), vmvnq_s8(v237)));
      v239.i64[0] = 0xF0000000FLL;
      v239.i64[1] = 0xF0000000FLL;
      v241 = vmaxq_s32(vminq_s32(vsubq_s32(v238, v206), v239), 0);
      v242 = vmaxq_s32(vminq_s32(vsubq_s32(v238, v215), v239), 0);
      v243 = vmaxq_s32(vminq_s32(vsubq_s32(v238, v224), v239), 0);
      v244 = vmaxq_s32(vminq_s32(vsubq_s32(v238, v233), v239), 0);
      v245 = vsubq_s32(v238, v241);
      v239.i64[0] = 0x400000004;
      v239.i64[1] = 0x400000004;
      v246 = vorrq_s8(vbicq_s8(v239, vceqq_s32(vaddq_s32(v244, v243), vnegq_s32(vaddq_s32(v241, v242)))), v240);
      *v240.i8 = vqmovn_u32(v246);
      v247.i64[0] = 0x8000800080008;
      v247.i64[1] = 0x8000800080008;
      *v241.i8 = vqmovn_u32(v238);
      v248 = vbicq_s8(v241, vceqzq_s16(vandq_s8(v240, v247)));
      v239.i64[0] = 0x10001000100010;
      v239.i64[1] = 0x10001000100010;
      v249 = vandq_s8(vshlq_n_s16(v240, 2uLL), v239);
      v250.i64[0] = 0x3000300030003;
      v250.i64[1] = 0x3000300030003;
      v186.i64[0] = 0x2000200020002;
      v186.i64[1] = 0x2000200020002;
      v251.i64[0] = 0x20002000200020;
      v251.i64[1] = 0x20002000200020;
      v252 = vaddq_s16(v248, v249);
      *v249.i8 = vqmovn_u32(v245);
      v253.i64[0] = 0x7000700070007;
      v253.i64[1] = 0x7000700070007;
      v254 = vmlaq_s16(vaddq_s16(v252, vandq_s8(vceqq_s16(vandq_s8(v240, v250), v186), v251)), v249, v253);
      v240.i64[1] = v471.i64[1];
      *v240.i8 = vqmovn_u32(v471);
      *v249.i8 = vqmovn_u32(v71);
      v255 = vbicq_s8(v249, vceqzq_s16(vandq_s8(v240, v247)));
      v256 = vandq_s8(vshlq_n_s16(v240, 2uLL), v239);
      v257 = vandq_s8(vceqq_s16(vandq_s8(v240, v250), v186), v251);
      v258 = vaddq_s16(vaddq_s16(v255, v256), v257);
      *v257.i8 = vqmovn_u32(v451);
      v259 = vmlaq_s16(v258, v257, v253);
      v260 = vsubq_s32(v238, v242);
      v261 = vsubq_s32(v238, v243);
      v262 = vsubq_s32(v238, v244);
      v263 = vaddq_s32(vaddq_s32(v261, v260), v262);
      *v263.i8 = vqmovn_u32(v263);
      *v242.i8 = vqmovn_u32(v453);
      v264 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v259, vshlq_n_s16(v242, 3uLL)), vaddq_s16(v254, vshlq_n_s16(v263, 3uLL)))), 0);
      v263.i16[0] = vaddvq_s32(v264);
      v265 = v263.u16[0];
      v85 = v451;
      if (v263.i16[0])
      {
        v266.i64[0] = 0x1F0000001FLL;
        v266.i64[1] = 0x1F0000001FLL;
        v267 = vsubq_s32(v266, v235);
        v266.i64[0] = -1;
        v266.i64[1] = -1;
        v268 = vandq_s8(vsubq_s32(vshlq_s32(v266, v267), v230), v237);
        v269 = vcltzq_s32(vshlq_n_s32(v264, 0x1FuLL));
        v23.i32[0] = vbslq_s8(v269, vextq_s8(v12, v12, 0xCuLL), v23).u32[0];
        v470 = vbslq_s8(v269, v89, v470);
        v25 = vbslq_s8(v269, v194, v457);
        v468 = vbslq_s8(v269, v187, v468);
        v469 = vbslq_s8(v269, v83, v469);
        v28 = vbslq_s8(v269, v189, v462);
        v29 = vbslq_s8(v269, v191, v460);
        v472 = vbslq_s8(v269, v192, v472);
        v473 = vbslq_s8(v269, v193, v473);
        v85 = vbslq_s8(v269, v245, v451);
        v86 = vbslq_s8(v269, v260, v455);
        v87 = vbslq_s8(v269, v261, v459);
        v89 = vbslq_s8(v269, v262, v474);
        v474 = v89;
        v77 = vbslq_s8(v269, v268, v77);
        v71 = vbslq_s8(v269, v238, v71);
        v90 = vbslq_s8(v269, v246, v471);
      }

      else
      {
        v29 = v460;
        v28 = v462;
        v25 = v457;
        v87 = v459;
        v86 = v455;
        v90 = v471;
      }

      if (v178)
      {
        v270 = v265 == 0;
      }

      else
      {
        v270 = 0;
      }

      v72 = v270;
      v26 = v468;
      v27 = v469;
      v24 = v470;
    }

    *v89.i8 = vqmovn_u32(v90);
    v271.i64[0] = 0x8000800080008;
    v271.i64[1] = 0x8000800080008;
    *v83.i8 = vqmovn_u32(v71);
    v271.i16[0] = vbicq_s8(v83, vceqzq_s16(vandq_s8(v89, v271))).u16[0];
    v272.i64[0] = 0x3000300030003;
    v272.i64[1] = 0x3000300030003;
    v273.i64[0] = 0x2000200020002;
    v273.i64[1] = 0x2000200020002;
    v274 = vceqq_s16(vandq_s8(v89, v272), v273);
    v273.i64[0] = 0x20002000200020;
    v273.i64[1] = 0x20002000200020;
    v274.i16[0] = vandq_s8(v274, v273).u16[0];
    v273.i16[0] = vqmovn_u32(v85).u16[0];
    if (((v271.i16[0] + ((4 * v89.i16[0]) & 0x10) + v274.i16[0] - v273.i16[0] + 8 * v273.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v87, v86), v474)).u16[0]) - 471) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v275 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v276 = 8 * (a1 & 7);
      if (v276)
      {
        v277 = *v275 & ~(-1 << v276);
      }

      else
      {
        v277 = 0;
      }

      *a2 = 0;
      if (v71.i32[0])
      {
        v278 = (32 * v71.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v278 = 0;
      }

      v279 = v278 | v90.i8[0] & 0x1F | (v23.u32[0] << 10);
      v280 = (v279 << v276) | v277;
      if (v276 >= 0x16)
      {
        *v275 = v280;
        v280 = v279 >> (-8 * (a1 & 7u));
      }

      v281 = v276 + 42;
      v282 = vsubq_s32(v71, v85);
      v283 = vsubq_s32(v71, v86);
      v284 = vsubq_s32(v71, v87);
      v285 = vsubq_s32(v71, v474);
      *v282.i8 = vqmovn_u32(v282);
      *v282.i8 = vqmovn_u16(v282);
      *v283.i8 = vqmovn_u32(v283);
      *v283.i8 = vqmovn_u16(v283);
      *v284.i8 = vqmovn_u32(v284);
      *v284.i8 = vqmovn_u16(v284);
      *v285.i8 = vqmovn_u32(v285);
      *v285.i8 = vqmovn_u16(v285);
      v282.i32[0] = vzip1q_s16(vzip1q_s8(v282, v283), vzip1q_s8(v284, v285)).u32[0];
      v283.i64[0] = 0x400000004;
      v283.i64[1] = 0x400000004;
      v284.i64[0] = 0x404040404040404;
      v284.i64[1] = 0x404040404040404;
      v286 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v90, v283))), v284);
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v287 = vandq_s8(vshlq_u8(v285, vorrq_s8(v286, v284)), v282.u32[0]);
      v288 = vmovl_u8(*v286.i8);
      v289 = vpaddq_s16(vshlq_u16(vmovl_u8(*v287.i8), vtrn1q_s16(0, v288)), vmovl_high_u8(v287));
      v290 = vpaddq_s16(v288, vmovl_high_u8(v286));
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
      v301 = (v276 + 42) & 0x3A;
      v302 = (v299.i64[0] << v301) | v280;
      if ((v300.i64[0] + v301) >= 0x40)
      {
        *(v275 + ((v281 >> 3) & 8)) = v302;
        v302 = v299.i64[0] >> -v301;
      }

      v303 = v300.i64[0] + v281;
      v304 = v302 | (v299.i64[1] << v303);
      if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
      {
        *(v275 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v299.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s32(v71, v85);
      v306 = v303 + v300.i64[1];
      v307.i64[0] = 0x800000008;
      v307.i64[1] = 0x800000008;
      v308 = vandq_s8(vextq_s8(vtstq_s32(v90, v307), 0, 0xCuLL), v71);
      v309.i64[0] = 0x1F0000001FLL;
      v309.i64[1] = 0x1F0000001FLL;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v311 = vandq_s8(vshlq_u32(v310, vaddq_s32(v308, v309)), v77);
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
        *(v275 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
        v319 = v317.i64[0] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v319 = 0;
        }
      }

      v320 = vandq_s8(v77, v305);
      v321 = v318.i64[0] + v306;
      v322 = v319 | (v317.i64[1] << v321);
      if ((v321 & 0x3F) + v318.i64[1] >= 0x40)
      {
        *(v275 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v317.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = vaddq_s32(v320, v24);
      v324 = v321 + v318.i64[1];
      if (v72)
      {
        v322 |= v73 << v324;
        if ((v324 & 0x3F) >= 0x20)
        {
          *(v275 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
          v322 = v73 >> -(v324 & 0x3F);
        }

        v324 += 32;
      }

      v325 = vextq_s8(0, v85, 0xCuLL);
      v326.i64[0] = 0x1F0000001FLL;
      v326.i64[1] = 0x1F0000001FLL;
      v327.i64[0] = -1;
      v327.i64[1] = -1;
      v328 = vandq_s8(vshlq_u32(v327, vaddq_s32(v325, v326)), v323);
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v330 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v331 = v329;
      v329.i64[0] = v325.u32[2];
      v329.i64[1] = v325.u32[3];
      v332 = v329;
      v333 = vzip1q_s64(0, v329);
      v329.i64[0] = v325.u32[0];
      v329.i64[1] = v325.u32[1];
      v334 = vpaddq_s64(vshlq_u64(v330, 0), vshlq_u64(v331, v333));
      v335 = vpaddq_s64(v329, v332);
      v336 = (v334.i64[0] << v324) | v322;
      if (v335.i64[0] + (v324 & 0x3F) >= 0x40)
      {
        *(v275 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v334.i64[0] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = vceqq_s32(v71, v86);
      v338 = vaddq_s32(v25, v320);
      v339 = v335.i64[0] + v324;
      v340 = (v335.i64[0] + v324) & 0x3F;
      v341 = v336 | (v334.i64[1] << v339);
      if ((v339 & 0x3F) + v335.i64[1] >= 0x40)
      {
        *(v275 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v341;
        v341 = v334.i64[1] >> -v340;
        if (!v340)
        {
          v341 = 0;
        }
      }

      v342 = vandq_s8(v77, v337);
      v343 = v339 + v335.i64[1];
      v344.i64[0] = 0x1F0000001FLL;
      v344.i64[1] = 0x1F0000001FLL;
      v345.i64[0] = -1;
      v345.i64[1] = -1;
      v346 = vandq_s8(vshlq_u32(v345, vaddq_s32(v85, v344)), v338);
      v347.i64[0] = v346.u32[0];
      v347.i64[1] = v346.u32[1];
      v348 = v347;
      v347.i64[0] = v346.u32[2];
      v347.i64[1] = v346.u32[3];
      v349 = v347;
      v347.i64[0] = v85.u32[0];
      v347.i64[1] = v85.u32[1];
      v350 = v347;
      v347.i64[0] = v85.u32[2];
      v347.i64[1] = v85.u32[3];
      v351 = vpaddq_s64(vshlq_u64(v348, vzip1q_s64(0, v350)), vshlq_u64(v349, vzip1q_s64(0, v347)));
      v352 = vpaddq_s64(v350, v347);
      v353 = (v351.i64[0] << v343) | v341;
      if (v352.i64[0] + (v343 & 0x3F) >= 0x40)
      {
        *(v275 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v351.i64[0] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = vaddq_s32(v26, v342);
      v355 = v352.i64[0] + v343;
      v356 = v353 | (v351.i64[1] << v355);
      if ((v355 & 0x3F) + v352.i64[1] >= 0x40)
      {
        *(v275 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        v356 = v351.i64[1] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v356 = 0;
        }
      }

      v357 = v355 + v352.i64[1];
      v358.i64[0] = 0x1F0000001FLL;
      v358.i64[1] = 0x1F0000001FLL;
      v359.i64[0] = -1;
      v359.i64[1] = -1;
      v360 = vshlq_u32(v359, vaddq_s32(v86, v358));
      v361 = vandq_s8(v360, v354);
      v362.i64[0] = v361.u32[0];
      v362.i64[1] = v361.u32[1];
      v363 = v362;
      v362.i64[0] = v361.u32[2];
      v362.i64[1] = v361.u32[3];
      v364 = v362;
      v362.i64[0] = v86.u32[0];
      v362.i64[1] = v86.u32[1];
      v365 = v362;
      v362.i64[0] = v86.u32[2];
      v362.i64[1] = v86.u32[3];
      v366 = vzip1q_s64(0, v365);
      v367 = vzip1q_s64(0, v362);
      v368 = vpaddq_s64(vshlq_u64(v363, v366), vshlq_u64(v364, v367));
      v369 = vpaddq_s64(v365, v362);
      v370 = (v368.i64[0] << v357) | v356;
      if (v369.i64[0] + (v357 & 0x3F) >= 0x40)
      {
        *(v275 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        if ((v357 & 0x3F) != 0)
        {
          v370 = v368.i64[0] >> -(v357 & 0x3F);
        }

        else
        {
          v370 = 0;
        }
      }

      v371 = vceqq_s32(v71, v87);
      v372 = vaddq_s32(v27, v342);
      v373 = v369.i64[0] + v357;
      v374 = v370 | (v368.i64[1] << v373);
      if ((v373 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v275 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
        v374 = v368.i64[1] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v374 = 0;
        }
      }

      v375 = vandq_s8(v77, v371);
      v376 = v373 + v369.i64[1];
      v377 = vandq_s8(v360, v372);
      v378.i64[0] = v377.u32[0];
      v378.i64[1] = v377.u32[1];
      v379 = v378;
      v378.i64[0] = v377.u32[2];
      v378.i64[1] = v377.u32[3];
      v380 = vpaddq_s64(vshlq_u64(v379, v366), vshlq_u64(v378, v367));
      v381 = (v380.i64[0] << v376) | v374;
      if (v369.i64[0] + (v376 & 0x3F) >= 0x40)
      {
        *(v275 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
        v381 = v380.i64[0] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v381 = 0;
        }
      }

      v382 = vaddq_s32(v28, v375);
      v383 = v369.i64[0] + v376;
      v384 = (v369.i64[0] + v376) & 0x3F;
      v385 = v381 | (v380.i64[1] << v383);
      if ((v383 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v275 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
        v385 = v380.i64[1] >> -v384;
        if (!v384)
        {
          v385 = 0;
        }
      }

      v386 = v383 + v369.i64[1];
      v387.i64[0] = 0x1F0000001FLL;
      v387.i64[1] = 0x1F0000001FLL;
      v388.i64[0] = -1;
      v388.i64[1] = -1;
      v389 = vshlq_u32(v388, vaddq_s32(v87, v387));
      v390 = vandq_s8(v389, v382);
      v391.i64[0] = v390.u32[0];
      v391.i64[1] = v390.u32[1];
      v392 = v391;
      v391.i64[0] = v390.u32[2];
      v391.i64[1] = v390.u32[3];
      v393 = v391;
      v391.i64[0] = v87.u32[0];
      v391.i64[1] = v87.u32[1];
      v394 = v391;
      v391.i64[0] = v87.u32[2];
      v391.i64[1] = v87.u32[3];
      v395 = vzip1q_s64(0, v394);
      v396 = vzip1q_s64(0, v391);
      v397 = vpaddq_s64(vshlq_u64(v392, v395), vshlq_u64(v393, v396));
      v398 = vpaddq_s64(v394, v391);
      v399 = (v397.i64[0] << v386) | v385;
      if (v398.i64[0] + (v386 & 0x3F) >= 0x40)
      {
        *(v275 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        if ((v386 & 0x3F) != 0)
        {
          v399 = v397.i64[0] >> -(v386 & 0x3F);
        }

        else
        {
          v399 = 0;
        }
      }

      v400 = vceqq_s32(v71, v474);
      v401 = vaddq_s32(v29, v375);
      v402 = v398.i64[0] + v386;
      v403 = v399 | (v397.i64[1] << v402);
      if ((v402 & 0x3F) + v398.i64[1] >= 0x40)
      {
        *(v275 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v403;
        v403 = v397.i64[1] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v403 = 0;
        }
      }

      v404 = vandq_s8(v77, v400);
      v405 = v402 + v398.i64[1];
      v406 = vandq_s8(v389, v401);
      v407.i64[0] = v406.u32[0];
      v407.i64[1] = v406.u32[1];
      v408 = v407;
      v407.i64[0] = v406.u32[2];
      v407.i64[1] = v406.u32[3];
      v409 = vpaddq_s64(vshlq_u64(v408, v395), vshlq_u64(v407, v396));
      v410 = (v409.i64[0] << v405) | v403;
      if (v398.i64[0] + (v405 & 0x3F) >= 0x40)
      {
        *(v275 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
        v410 = v409.i64[0] >> -(v405 & 0x3F);
        if ((v405 & 0x3F) == 0)
        {
          v410 = 0;
        }
      }

      v411 = vaddq_s32(v472, v404);
      v412 = v398.i64[0] + v405;
      v413 = (v398.i64[0] + v405) & 0x3F;
      v414 = v410 | (v409.i64[1] << v412);
      if ((v412 & 0x3F) + v398.i64[1] >= 0x40)
      {
        *(v275 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
        v414 = v409.i64[1] >> -v413;
        if (!v413)
        {
          v414 = 0;
        }
      }

      v415 = v412 + v398.i64[1];
      v416.i64[0] = 0x1F0000001FLL;
      v416.i64[1] = 0x1F0000001FLL;
      v417.i64[0] = -1;
      v417.i64[1] = -1;
      v418 = vshlq_u32(v417, vaddq_s32(v474, v416));
      v419 = vandq_s8(v418, v411);
      v420.i64[0] = v419.u32[0];
      v420.i64[1] = v419.u32[1];
      v421 = v420;
      v420.i64[0] = v419.u32[2];
      v420.i64[1] = v419.u32[3];
      v422 = v420;
      v420.i64[0] = v474.u32[0];
      v420.i64[1] = v474.u32[1];
      v423 = v420;
      v420.i64[0] = v474.u32[2];
      v420.i64[1] = v474.u32[3];
      v424 = vzip1q_s64(0, v423);
      v425 = vzip1q_s64(0, v420);
      v426 = vpaddq_s64(vshlq_u64(v421, v424), vshlq_u64(v422, v425));
      v427 = vpaddq_s64(v423, v420);
      v428 = (v412 + v398.i64[1]) & 0x3F;
      v429 = (v426.i64[0] << (v412 + v398.i8[8])) | v414;
      if ((v427.i64[0] + v428) > 0x3F)
      {
        *(v275 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
        if (v428)
        {
          v429 = v426.i64[0] >> -v428;
        }

        else
        {
          v429 = 0;
        }
      }

      v430 = vaddq_s32(v473, v404);
      v431 = v427.i64[0] + v415;
      v432 = v429 | (v426.i64[1] << v431);
      if ((v431 & 0x3F) + v427.i64[1] >= 0x40)
      {
        *(v275 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
        v432 = v426.i64[1] >> -(v431 & 0x3F);
        if ((v431 & 0x3F) == 0)
        {
          v432 = 0;
        }
      }

      v433 = v431 + v427.i64[1];
      v434 = vandq_s8(v418, v430);
      v435.i64[0] = v434.u32[0];
      v435.i64[1] = v434.u32[1];
      v436 = v435;
      v435.i64[0] = v434.u32[2];
      v435.i64[1] = v434.u32[3];
      v437 = vpaddq_s64(vshlq_u64(v436, v424), vshlq_u64(v435, v425));
      v438 = (v437.i64[0] << v433) | v432;
      if (v427.i64[0] + (v433 & 0x3F) >= 0x40)
      {
        *(v275 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
        v438 = v437.i64[0] >> -(v433 & 0x3F);
        if ((v433 & 0x3F) == 0)
        {
          v438 = 0;
        }
      }

      v439 = v427.i64[0] + v433;
      v440 = (v427.i64[0] + v433) & 0x3F;
      v441 = v438 | (v437.i64[1] << (v427.i8[0] + v433));
      if ((v440 + v427.i64[1]) >= 0x40)
      {
        *(v275 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
        v441 = v437.i64[1] >> -v440;
        if (!v440)
        {
          v441 = 0;
        }
      }

      v442 = v439 + v427.i64[1];
      if ((v442 & 0x3F) != 0)
      {
        *(v275 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
      }

      result = (v442 - v276 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v60;
        v22 = (a3 + 4);
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
            v24 += 2;
            v23 += 2;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 = (v21 + 4);
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v27 = 0;
        v28 = &v60;
        v29 = (a3 + 4);
        v30 = &v59 + 2 * ((a5 >> 1) & 0x3F);
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
            v32 += 2;
            v31 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = (a3 + v27 * a4 + 4 * v19);
          v36 = v30;
          v37 = a5 - v19;
          do
          {
            v38 = *v35++;
            *v36++ = v38;
            --v37;
          }

          while (v37);
          ++v27;
          v28 = (v28 + 4);
          v29 = (v29 + a4);
          v30 = (v30 + 4);
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
      v12 = &v59 + 1;
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
        v17 = &v59 + v10;
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

  v54.i64[0] = __PAIR64__(v60, v59);
  v54.i64[1] = __PAIR64__(DWORD1(v60), DWORD1(v59));
  v55 = v61;
  v56 = v62;
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

  v57 = DWORD1(v61);
  v58 = DWORD1(v62);
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

  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v54, a7, v39, v41);
  v54.i64[0] = __PAIR64__(DWORD2(v60), DWORD2(v59));
  v54.i64[1] = __PAIR64__(HIDWORD(v60), HIDWORD(v59));
  v55 = DWORD2(v61);
  v56 = DWORD2(v62);
  v57 = HIDWORD(v61);
  v58 = HIDWORD(v62);
  if (a6 >= 4)
  {
    v45 = 2;
  }

  else
  {
    v45 = v42;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v54, a7, v39, v45);
  v54.i64[0] = __PAIR64__(v64, v63);
  v54.i64[1] = __PAIR64__(DWORD1(v64), DWORD1(v63));
  v55 = v65;
  v56 = v66;
  if (a5 >= 8)
  {
    v47 = 4;
  }

  else
  {
    v47 = v40;
  }

  v57 = DWORD1(v65);
  v58 = DWORD1(v66);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v54, a7, v47, v41);
  v54.i64[0] = __PAIR64__(DWORD2(v64), DWORD2(v63));
  v54.i64[1] = __PAIR64__(HIDWORD(v64), HIDWORD(v63));
  v55 = DWORD2(v65);
  v56 = DWORD2(v66);
  v57 = HIDWORD(v65);
  v58 = HIDWORD(v66);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v54, a7, v47, v45);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v122 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10 = vnegq_f32(v9);
    v6 = vbicq_s8(veorq_s8(*a2, v8), vceqq_s32(*a2, v10));
    v7 = vbicq_s8(veorq_s8(a2[1], v8), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v5.i64[0] = 0x8000000080000000;
    v5.i64[1] = 0x8000000080000000;
    v6 = veorq_s8(*a2, v5);
    v7 = veorq_s8(a2[1], v5);
LABEL_5:
    v120 = v6;
    v121 = v7;
    v11 = v6.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v120 = *a2;
  v121 = v12;
  v11 = v120.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = a4 < 2 || a5 == 0;
  if (v14)
  {
    v15 = 0;
    v16 = v11;
    v17 = v11;
  }

  else
  {
    v16 = v120.u32[1];
    v15 = v120.i32[1] < v11;
    if (v120.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v120.u32[1];
    }

    if (v11 > v120.i32[1])
    {
      v16 = v11;
    }
  }

  v18 = a5 < 2 || a4 == 0;
  v19 = v18;
  if (!v18)
  {
    if (v120.i32[2] < v17)
    {
      v15 = 2;
      v17 = v120.u32[2];
    }

    if (v16 <= v120.i32[2])
    {
      v16 = v120.u32[2];
    }
  }

  v20 = a5 >= 2 && a4 >= 2;
  v21 = !v20;
  if (v20)
  {
    if (v120.i32[3] < v17)
    {
      v15 = 3;
      v17 = v120.u32[3];
    }

    if (v16 <= v120.i32[3])
    {
      v16 = v120.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 >= 3;
  }

  else
  {
    v22 = 0;
  }

  v23 = !v22;
  if (v22)
  {
    if (v121.i32[0] < v17)
    {
      v15 = 4;
      v17 = v121.i32[0];
    }

    if (v16 <= v121.i32[0])
    {
      v16 = v121.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 >= 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = !v24;
  if (v24)
  {
    if (v121.i32[1] < v17)
    {
      v15 = 5;
      v17 = v121.u32[1];
    }

    if (v16 <= v121.i32[1])
    {
      v16 = v121.u32[1];
    }
  }

  v26 = a5 >= 2 && a4 >= 3;
  v27 = !v26;
  if (v26)
  {
    if (v121.i32[2] < v17)
    {
      v15 = 6;
      v17 = v121.u32[2];
    }

    if (v16 <= v121.i32[2])
    {
      v16 = v121.u32[2];
    }
  }

  v28 = a5 >= 2 && a4 >= 4;
  v29 = !v28;
  if (v28)
  {
    if (v121.i32[3] < v17)
    {
      v15 = 7;
      v17 = v121.u32[3];
    }

    if (v16 <= v121.i32[3])
    {
      v16 = v121.u32[3];
    }
  }

  v30 = v16 - v17;
  v31 = __clz(v16 - v17);
  v32 = 32 - v31 + ~((32 - v31) >> 1);
  v33 = v32 & ~(v32 >> 31);
  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if ((v17 & 0x80000000) == 0 && (v16 & 0x80000000) != 0)
    {
      v34 = kDQuadParamTable[10 * v33 + 648] == 0;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v32 > 12 || v34)
  {
    v36 = kDQuadParamTable[10 * v33 + 644];
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = -2;
    }

    if (v36 >= 0x20)
    {
      v38 = 0;
    }

    else
    {
      v38 = v17 & ~(-1 << -v36);
    }

    v39 = v38 + v37;
    if (v39 >= 1 && __clz(v39 + v30) < v31)
    {
      ++v33;
    }

    if (v33 >= 0xF)
    {
      v33 = 15;
    }
  }

  v40 = v33;
  v41 = &kDQuadParamTable[10 * v33];
  v42 = *(v41 + 321);
  v43 = v41[645];
  v44 = v42 >> v43;
  if (a3 != 4)
  {
    v46 = v44 > 0x10000 || v13;
    goto LABEL_147;
  }

  if (v13)
  {
    v45 = 0;
    if (v14)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v45 = (~v11 & 0x7F800000) == 0 || v11 == 0x80000000;
    if (v14)
    {
      goto LABEL_131;
    }
  }

  if ((~v120.i32[1] & 0x7F800000) == 0 || v120.i32[1] == 0x80000000)
  {
    v45 = 1;
  }

LABEL_131:
  if (v19)
  {
    if (v21)
    {
      goto LABEL_133;
    }
  }

  else
  {
    if ((~v120.i32[2] & 0x7F800000) == 0 || v120.i32[2] == 0x80000000)
    {
      v45 = 1;
    }

    if (v21)
    {
LABEL_133:
      if (v23)
      {
        goto LABEL_134;
      }

      goto LABEL_243;
    }
  }

  if ((~v120.i32[3] & 0x7F800000) == 0 || v120.i32[3] == 0x80000000)
  {
    v45 = 1;
  }

  if (v23)
  {
LABEL_134:
    if (v25)
    {
      goto LABEL_135;
    }

    goto LABEL_250;
  }

LABEL_243:
  if ((~v121.i32[0] & 0x7F800000) == 0 || v121.i32[0] == 0x80000000)
  {
    v45 = 1;
  }

  if (v25)
  {
LABEL_135:
    if (v27)
    {
      goto LABEL_136;
    }

LABEL_257:
    if ((~v121.i32[2] & 0x7F800000) == 0 || v121.i32[2] == 0x80000000)
    {
      v45 = 1;
    }

    if (v29)
    {
      goto LABEL_143;
    }

    goto LABEL_137;
  }

LABEL_250:
  if ((~v121.i32[1] & 0x7F800000) == 0 || v121.i32[1] == 0x80000000)
  {
    v45 = 1;
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_257;
  }

LABEL_136:
  if ((v29 & 1) == 0)
  {
LABEL_137:
    if ((~v121.i32[3] & 0x7F800000) == 0 || v121.i32[3] == 0x80000000)
    {
      v45 = 1;
    }
  }

LABEL_143:
  v50 = v44 > 0x10000 || v13;
  v46 = v50 | v45;
LABEL_147:
  v51 = 0;
  v52 = 0;
  v53 = kDQuadParamTable[10 * v40 + 644];
  if (v53 >= 0x20)
  {
    v54 = 32;
  }

  else
  {
    v54 = v53;
  }

  v55 = v17 & (-1 << (32 - v54));
  memset(v117, 0, sizeof(v117));
  v118 = 0;
  if (v43 >= 0x20)
  {
    v56 = 32;
  }

  else
  {
    v56 = v43;
  }

  v57 = v42 >> v56;
  v58 = v11 - v55;
  if (v13)
  {
    v58 = 0;
  }

  v18 = !v14;
  v59 = v120.i32[1] - v55;
  if (!v18)
  {
    v59 = 0;
  }

  v119[0] = v58;
  v119[1] = v59;
  v60 = v120.i32[2] - v55;
  if (v19)
  {
    v60 = 0;
  }

  v61 = v120.i32[3] - v55;
  if (v21)
  {
    v61 = 0;
  }

  v119[2] = v60;
  v119[3] = v61;
  v62 = v121.i32[0] - v55;
  if (v23)
  {
    v62 = 0;
  }

  v63 = v121.i32[1] - v55;
  if (v25)
  {
    v63 = 0;
  }

  v64 = v121.i32[2] - v55;
  if (v27)
  {
    v64 = 0;
  }

  v119[4] = v62;
  v119[5] = v63;
  if (v29)
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
  v67 = v15;
  v68 = 4 * v15;
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
              if ((a3 | 2) != 3 || (v73 = v120.u32[v51 / 4], v73 != 0x80000000) && ((a3 | 2) != 3 || v66 + 0x80000000 != v73))
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

      if (v70 >> v56 || v120.i32[v51 / 4] == -1)
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
  *(a1 + 8) = 0;
  if ((v46 & 1) == 0)
  {
    v86 = 0;
    *v74 |= (v40 & 0xF) << v75;
    v87 = v75 | 4;
    if (v53 && (v54 - v75 + v87) <= 0x80)
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

        v74[v86] |= (((v55 >> (32 - v54)) >> v88) & ~(-1 << v90)) << v87;
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
      if ((v87 - v75 + (v86 << 6) + 3) <= 0x80)
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

    v102 = 128 - v96;
    v103 = (((37 * (128 - v96)) >> 8) + (((0x80 - v96 - ((37 * (128 - v96)) >> 8)) & 0xFE) >> 1)) >> 2;
    v104 = -7 * v103 + v102;
    if ((v104 - 257) >= 0xFFFFFF00 && v87 - v75 + (v86 << 6) + v104 <= 0x80)
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
        goto LABEL_282;
      }

LABEL_272:
      if (++v107 == 7)
      {
        return v46 & 1;
      }
    }

    if ((v56 - v75 + v87 + (v86 << 6)) <= 0x80)
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
      goto LABEL_272;
    }

LABEL_282:
    if (v113 <= 0x100 && v87 - v75 + (v86 << 6) + v113 <= 0x80)
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

    goto LABEL_272;
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
      v81 = v120.u16[2 * v76 + 1];
    }

    if ((v78 - v75 + (v77 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v82 = 0;
      v83 = 16;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  if (a3 == 4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16;
    v9 = 8 * (a1 & 7);
    do
    {
      v10 = 64 - v9;
      if (64 - v9 >= v8)
      {
        v10 = v8;
      }

      result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v10)) << v7;
      v5 |= result;
      v7 += v10;
      v12 = v10 + v9;
      v6 += v12 >> 6;
      v9 = v12 & 0x3F;
      v8 -= v10;
    }

    while (v8);
    *a2 = v5 << 16;
    if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v26 = 0;
      v27 = 0;
      v28 = 16;
      do
      {
        v29 = 64 - v9;
        if (64 - v9 >= v28)
        {
          v29 = v28;
        }

        result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v29)) << v27;
        v26 |= result;
        v27 += v29;
        v30 = v29 + v9;
        v6 += v30 >> 6;
        v9 = v30 & 0x3F;
        v28 -= v29;
      }

      while (v28);
      a2[1] = v26 << 16;
      if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
      {
        v33 = 0;
        v34 = 0;
        v35 = 16;
        do
        {
          v36 = 64 - v9;
          if (64 - v9 >= v35)
          {
            v36 = v35;
          }

          result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v36)) << v34;
          v33 |= result;
          v34 += v36;
          v37 = v36 + v9;
          v6 += v37 >> 6;
          v9 = v37 & 0x3F;
          v35 -= v36;
        }

        while (v35);
        a2[2] = v33 << 16;
        if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
        {
          v38 = 0;
          v39 = 0;
          v40 = 16;
          do
          {
            v41 = 64 - v9;
            if (64 - v9 >= v40)
            {
              v41 = v40;
            }

            result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v41)) << v39;
            v38 |= result;
            v39 += v41;
            v42 = v41 + v9;
            v6 += v42 >> 6;
            v9 = v42 & 0x3F;
            v40 -= v41;
          }

          while (v40);
          a2[3] = v38 << 16;
          if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
          {
            v43 = 0;
            v44 = 0;
            v45 = 16;
            do
            {
              v46 = 64 - v9;
              if (64 - v9 >= v45)
              {
                v46 = v45;
              }

              result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v46)) << v44;
              v43 |= result;
              v44 += v46;
              v47 = v46 + v9;
              v6 += v47 >> 6;
              v9 = v47 & 0x3F;
              v45 -= v46;
            }

            while (v45);
            a2[4] = v43 << 16;
            if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
            {
              v48 = 0;
              v49 = 0;
              v50 = 16;
              do
              {
                v51 = 64 - v9;
                if (64 - v9 >= v50)
                {
                  v51 = v50;
                }

                result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v51)) << v49;
                v48 |= result;
                v49 += v51;
                v52 = v51 + v9;
                v6 += v52 >> 6;
                v9 = v52 & 0x3F;
                v50 -= v51;
              }

              while (v50);
              a2[5] = v48 << 16;
              if ((v9 - v4 + (v6 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
              {
                v53 = 0;
                v54 = 0;
                v55 = 16;
                do
                {
                  v56 = 64 - v9;
                  if (64 - v9 >= v55)
                  {
                    v56 = v55;
                  }

                  result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v56)) << v54;
                  v53 |= result;
                  v54 += v56;
                  v57 = v56 + v9;
                  v6 += v57 >> 6;
                  v9 = v57 & 0x3F;
                  v55 -= v56;
                }

                while (v55);
                v58 = v9 - v4 + (v6 << 6) - 113;
                a2[6] = v53 << 16;
                v32 = a2 + 7;
                if (v58 >= 0xFFFFFFFFFFFFFF7FLL)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 16;
                  do
                  {
                    v62 = 64 - v9;
                    if (64 - v9 >= v61)
                    {
                      v62 = v61;
                    }

                    result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v62)) << v60;
                    v59 |= result;
                    v60 += v62;
                    v63 = v62 + v9;
                    v6 += v63 >> 6;
                    v9 = v63 & 0x3F;
                    v61 -= v62;
                  }

                  while (v61);
                  v31 = v59 << 16;
                }

                else
                {
                  v31 = 0;
                }

                goto LABEL_36;
              }

LABEL_35:
              v31 = 0;
              a2[6] = 0;
              v32 = a2 + 7;
LABEL_36:
              *v32 = v31;
              return result;
            }

LABEL_34:
            a2[5] = 0;
            goto LABEL_35;
          }

LABEL_33:
          a2[4] = 0;
          goto LABEL_34;
        }

LABEL_32:
        a2[3] = 0;
        goto LABEL_33;
      }
    }

    else
    {
      a2[1] = 0;
    }

    a2[2] = 0;
    goto LABEL_32;
  }

  v13 = 0;
  v14 = 0;
  v15 = a3 & 0xFFFFFFFD;
  v16 = ((a3 & 0xFFFFFFFD) == 1) << 31;
  result = -1;
  v17 = v4;
  do
  {
    if ((v17 - v4 + (v14 << 6) - 113) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v18 = 0;
      v19 = 0;
      v20 = 16;
      do
      {
        v21 = 64 - v17;
        if (64 - v17 >= v20)
        {
          v21 = v20;
        }

        v18 |= ((*(v3 + 8 * v14) >> v17) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v17;
        v14 += v22 >> 6;
        v17 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
    }

    else
    {
      v18 = 0;
    }

    v23 = v18 << 16;
    if (v18 << 16 != 0x80000000 || v15 != 1)
    {
      if (v18 == 0xFFFF)
      {
        v25 = -1;
      }

      else
      {
        v25 = v23 - (v18 & 1) + 0x8000;
      }

      if (v23)
      {
        v23 = v25;
      }

      else
      {
        v23 = 0;
      }
    }

    a2[v13++] = v23 ^ v16;
  }

  while (v13 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, unsigned int *a2, int a3)
{
  v164 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = v4 | 4;
  v6 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 0xFLL;
  v7 = &kDQuadParamTable[10 * v6];
  v8 = v7[644];
  v9 = v7[645];
  if (v8 >= 0x20)
  {
    v10 = 32;
  }

  else
  {
    v10 = v8;
  }

  if (v9 >= 0x20)
  {
    v11 = 32;
  }

  else
  {
    v11 = v9;
  }

  v12 = 32 - v10;
  if (v8)
  {
    if ((v10 - v4 + v5) <= 0x80)
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

    v15 = 121 - v10;
    v16 = (v14 << v12);
    if (v9)
    {
      goto LABEL_17;
    }

LABEL_11:
    v17 = 0;
    v18 = 0;
    v160 = 0;
    v161 = 0;
    v163 = 0;
    v162 = 0;
    goto LABEL_66;
  }

  v13 = 0;
  v15 = 121;
  v16 = 0;
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_17:
  if ((v5 - v4 + (v13 << 6) + 3) <= 0x80)
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

  v27 = (147 * v15) >> 10;
  v28 = v11 - v4;
  v29 = (v5 | (v13 << 6)) + -7 * v27 + v15;
  v30 = v29 & 0x3F;
  v31 = v28 + v30 + (v29 & 0xFFFFFFFFFFFFFFC0);
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v162 = 0;
  v32 = v29 >> 6;
  if (v31 <= 0x80)
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

  LODWORD(v160) = v18;
  v37 = v30 | (v32 << 6);
  v38 = v27 - v11;
  v39 = v37 + v38;
  v40 = (v37 + v38) & 0x3F;
  v41 = (v37 + v38) >> 6;
  if (v28 + v40 + (v39 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  HIDWORD(v160) = v42;
  v47 = (v40 | (v41 << 6)) + v38;
  v48 = v47 & 0x3F;
  v49 = v47 >> 6;
  if (v28 + v48 + (v47 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  LODWORD(v161) = v50;
  v55 = (v48 | (v49 << 6)) + v38;
  v56 = v55 & 0x3F;
  v57 = v55 >> 6;
  if (v28 + v56 + (v55 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  HIDWORD(v161) = v58;
  v63 = (v56 | (v57 << 6)) + v38;
  v64 = v63 & 0x3F;
  v65 = v63 >> 6;
  if (v28 + v64 + (v63 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  LODWORD(v162) = v66;
  v71 = (v64 | (v65 << 6)) + v38;
  v72 = v71 & 0x3F;
  v73 = v71 >> 6;
  if (v28 + v72 + (v71 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  HIDWORD(v162) = v74;
  v79 = (v72 | (v73 << 6)) + v38;
  v80 = v79 & 0x3F;
  if (v28 + v80 + (v79 & 0xFFFFFFFFFFFFFFC0) <= 0x80)
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

  v163 = v81;
LABEL_66:
  v87 = *&kDQuadParamTable[10 * v6 + 642];
  v88 = v87 >> v11;
  if (v87 >> v11 <= 1)
  {
    v88 = 1;
  }

  v89 = v88 >> 1;
  v90 = (1 << v12) >> 1;
  if (v88 >> 1 >= v90)
  {
    v91 = v90;
  }

  else
  {
    v91 = v88 >> 1;
  }

  result = (0x80000000 - v16) / v88;
  v93 = v87 + v16;
  v94 = -1 << v11;
  if (v16)
  {
    v95 = v91;
  }

  else
  {
    v95 = 0;
  }

  v96 = v16 == 0x80000000;
  if (v9)
  {
    if (v17)
    {
      v97 = result == v18;
      if (!(v16 | v18))
      {
        v98 = 0;
LABEL_84:
        v99 = 1;
        goto LABEL_85;
      }

      if (!HIDWORD(v93) || (v94 ^ v18) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v98 = v89 + v88 * v18;
        goto LABEL_84;
      }

      v99 = 1;
      v98 = 0xFFFFFFFFLL;
    }

    else
    {
      v99 = 0;
      v98 = v95;
      v97 = v16 == 0x80000000;
    }
  }

  else
  {
    v99 = 0;
    v98 = 0;
    v97 = v88 > 0x80000000 - v16;
  }

LABEL_85:
  v100 = a3 & 0xFFFFFFFD;
  v101 = v98 + v16;
  v102 = v101;
  if (a3 == 4)
  {
    v103 = v101 & 0xFFFFFFFFFFC00000;
    v102 = 2139095039;
    if ((v101 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v103 == 2143289344)
      {
        v102 = 0x80000000;
      }

      else if (v103 == 4286578688)
      {
        v102 = 4286578687;
      }

      else
      {
        v102 = v101;
      }
    }
  }

  v104 = -1;
  if (v102 < 0xFFFFFFFF)
  {
    v104 = v102;
  }

  if (v97)
  {
    v105 = 0;
  }

  else
  {
    v105 = v104 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v105 = v104;
  }

  *a2 = v105;
  if (v9)
  {
    if (v17 == 1)
    {
      v106 = v95;
      v107 = v16 == 0x80000000;
    }

    else
    {
      v108 = *(&v160 | (4 * v99));
      v107 = result == v108;
      if (v16 | v108)
      {
        if (HIDWORD(v93) && (v94 ^ v108) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v106 = 0xFFFFFFFFLL;
        }

        else
        {
          v106 = v89 + v88 * v108;
        }
      }

      else
      {
        v106 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v106 = 0;
    v107 = v88 > 0x80000000 - v16;
  }

  v109 = v106 + v16;
  v110 = v109;
  if (a3 == 4)
  {
    v111 = v109 & 0xFFFFFFFFFFC00000;
    v110 = 2139095039;
    if ((v109 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v111 == 2143289344)
      {
        v110 = 0x80000000;
      }

      else if (v111 == 4286578688)
      {
        v110 = 4286578687;
      }

      else
      {
        v110 = v109;
      }
    }
  }

  v112 = -1;
  if (v110 < 0xFFFFFFFF)
  {
    v112 = v110;
  }

  if (v107)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v113 = v112;
  }

  a2[1] = v113;
  if (v9)
  {
    if (v17 == 2)
    {
      v114 = v95;
      v115 = v16 == 0x80000000;
    }

    else
    {
      v116 = *(&v160 + v99);
      v115 = result == v116;
      if (v16 | v116)
      {
        if (HIDWORD(v93) && (v94 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v114 = 0xFFFFFFFFLL;
        }

        else
        {
          v114 = v89 + v88 * v116;
        }
      }

      else
      {
        v114 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v114 = 0;
    v115 = v88 > 0x80000000 - v16;
  }

  v117 = v114 + v16;
  v118 = v117;
  if (a3 == 4)
  {
    v119 = v117 & 0xFFFFFFFFFFC00000;
    v118 = 2139095039;
    if ((v117 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v119 == 2143289344)
      {
        v118 = 0x80000000;
      }

      else if (v119 == 4286578688)
      {
        v118 = 4286578687;
      }

      else
      {
        v118 = v117;
      }
    }
  }

  v120 = -1;
  if (v118 < 0xFFFFFFFF)
  {
    v120 = v118;
  }

  if (v115)
  {
    v121 = 0;
  }

  else
  {
    v121 = v120 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v121 = v120;
  }

  a2[2] = v121;
  if (v9)
  {
    if (v17 == 3)
    {
      v122 = v95;
      v123 = v16 == 0x80000000;
    }

    else
    {
      v124 = *(&v160 + v99);
      v123 = result == v124;
      if (v16 | v124)
      {
        if (HIDWORD(v93) && (v94 ^ v124) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v122 = 0xFFFFFFFFLL;
        }

        else
        {
          v122 = v89 + v88 * v124;
        }
      }

      else
      {
        v122 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v122 = 0;
    v123 = v88 > 0x80000000 - v16;
  }

  v125 = v122 + v16;
  v126 = v125;
  if (a3 == 4)
  {
    v127 = v125 & 0xFFFFFFFFFFC00000;
    v126 = 2139095039;
    if ((v125 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v127 == 2143289344)
      {
        v126 = 0x80000000;
      }

      else if (v127 == 4286578688)
      {
        v126 = 4286578687;
      }

      else
      {
        v126 = v125;
      }
    }
  }

  v128 = -1;
  if (v126 < 0xFFFFFFFF)
  {
    v128 = v126;
  }

  if (v123)
  {
    v129 = 0;
  }

  else
  {
    v129 = v128 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v129 = v128;
  }

  a2[3] = v129;
  if (v9)
  {
    if (v17 == 4)
    {
      v130 = v95;
      v131 = v16 == 0x80000000;
    }

    else
    {
      v132 = *(&v160 + v99);
      v131 = result == v132;
      if (v16 | v132)
      {
        if (HIDWORD(v93) && (v94 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v130 = 0xFFFFFFFFLL;
        }

        else
        {
          v130 = v89 + v88 * v132;
        }
      }

      else
      {
        v130 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v130 = 0;
    v131 = v88 > 0x80000000 - v16;
  }

  v133 = v130 + v16;
  v134 = v133;
  if (a3 == 4)
  {
    v135 = v133 & 0xFFFFFFFFFFC00000;
    v134 = 2139095039;
    if ((v133 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v135 == 2143289344)
      {
        v134 = 0x80000000;
      }

      else if (v135 == 4286578688)
      {
        v134 = 4286578687;
      }

      else
      {
        v134 = v133;
      }
    }
  }

  v136 = -1;
  if (v134 < 0xFFFFFFFF)
  {
    v136 = v134;
  }

  if (v131)
  {
    v137 = 0;
  }

  else
  {
    v137 = v136 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v137 = v136;
  }

  a2[4] = v137;
  if (v9)
  {
    if (v17 == 5)
    {
      v138 = v95;
      v139 = v16 == 0x80000000;
    }

    else
    {
      v140 = *(&v160 + v99);
      v139 = result == v140;
      if (v16 | v140)
      {
        if (HIDWORD(v93) && (v94 ^ v140) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v138 = 0xFFFFFFFFLL;
        }

        else
        {
          v138 = v89 + v88 * v140;
        }
      }

      else
      {
        v138 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v138 = 0;
    v139 = v88 > 0x80000000 - v16;
  }

  v141 = v138 + v16;
  v142 = v141;
  if (a3 == 4)
  {
    v143 = v141 & 0xFFFFFFFFFFC00000;
    v142 = 2139095039;
    if ((v141 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v143 == 2143289344)
      {
        v142 = 0x80000000;
      }

      else if (v143 == 4286578688)
      {
        v142 = 4286578687;
      }

      else
      {
        v142 = v141;
      }
    }
  }

  v144 = -1;
  if (v142 < 0xFFFFFFFF)
  {
    v144 = v142;
  }

  if (v139)
  {
    v145 = 0;
  }

  else
  {
    v145 = v144 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v145 = v144;
  }

  a2[5] = v145;
  if (v9)
  {
    if (v17 == 6)
    {
      v146 = v95;
      v147 = v16 == 0x80000000;
    }

    else
    {
      v148 = *(&v160 + v99);
      v147 = result == v148;
      if (v16 | v148)
      {
        if (HIDWORD(v93) && (v94 ^ v148) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v146 = 0xFFFFFFFFLL;
        }

        else
        {
          v146 = v89 + v88 * v148;
        }
      }

      else
      {
        v146 = 0;
      }

      ++v99;
    }
  }

  else
  {
    v146 = 0;
    v147 = v88 > 0x80000000 - v16;
  }

  v149 = v146 + v16;
  v150 = v149;
  if (a3 == 4)
  {
    v151 = v149 & 0xFFFFFFFFFFC00000;
    v150 = 2139095039;
    if ((v149 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v151 == 2143289344)
      {
        v150 = 0x80000000;
      }

      else if (v151 == 4286578688)
      {
        v150 = 4286578687;
      }

      else
      {
        v150 = v149;
      }
    }
  }

  v152 = -1;
  if (v150 < 0xFFFFFFFF)
  {
    v152 = v150;
  }

  if (v147)
  {
    v153 = 0;
  }

  else
  {
    v153 = v152 ^ 0x80000000;
  }

  if (v100 != 1)
  {
    v153 = v152;
  }

  a2[6] = v153;
  if (v9)
  {
    if (v17 != 7)
    {
      v154 = *(&v160 + v99);
      v96 = result == v154;
      if (v16 | v154)
      {
        if (HIDWORD(v93) && (v94 ^ v154) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v95 = 0xFFFFFFFFLL;
        }

        else
        {
          v95 = v89 + v88 * v154;
        }
      }

      else
      {
        v95 = 0;
      }
    }
  }

  else
  {
    v95 = 0;
    v96 = v88 > 0x80000000 - v16;
  }

  v155 = v95 + v16;
  v156 = v95 + v16;
  if (a3 == 4)
  {
    v157 = v155 & 0xFFFFFFFFFFC00000;
    v156 = 2139095039;
    if ((v155 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if (v157 == 2143289344)
      {
        v156 = 0x80000000;
      }

      else if (v157 == 4286578688)
      {
        v156 = 4286578687;
      }

      else
      {
        v156 = v155;
      }
    }
  }

  v158 = -1;
  if (v156 < 0xFFFFFFFF)
  {
    v158 = v156;
  }

  v159 = v158 ^ 0x80000000;
  if (v96)
  {
    v159 = 0;
  }

  if (v100 == 1)
  {
    v158 = v159;
  }

  a2[7] = v158;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v317 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    v11 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v12 = (a1 + a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + 2 * a2);
    *v13 = 0u;
    v13[1] = 0u;
    v14 = (a1 + 2 * a2 + a2);
LABEL_6:
    *v14 = v11;
    v14[1] = v11;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v314, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v314, a5);
    }

    v310 = v315;
    v302 = v316;
    v304 = v314;
    v305 = *(&v316 + 1);
    v19 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v314, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v314, a5);
    }

    v312 = v315;
    v303 = v316;
    v306 = v314;
    v308 = *(&v316 + 1);
    v20 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v314, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v314, a5);
    }

    v21 = v316;
    v299 = v314;
    v300 = *(&v316 + 1);
    v301 = v315;
    v22 = a3 + 48;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v22, &v314, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v22, &v314, a5);
    }

    *&v23 = v314;
    v24 = v316;
    *&v25 = v315;
    v26 = *(&v316 + 1);
    *&v27 = v304;
    *(&v27 + 1) = v302;
    *&v28 = v299;
    *(&v28 + 1) = v21;
    *a1 = v27;
    a1[1] = v28;
    *&v27 = v310;
    *(&v27 + 1) = v305;
    *&v28 = v301;
    *(&v28 + 1) = v300;
    v29 = (a1 + a2);
    *v29 = v27;
    v29[1] = v28;
    v30 = (a1 + a2 + a2);
    *&v27 = v306;
    *(&v27 + 1) = v303;
    *(&v23 + 1) = v24;
    *v30 = v27;
    v30[1] = v23;
    *&v23 = v312;
    *(&v23 + 1) = v308;
    v31 = (v30 + a2);
    *(&v25 + 1) = v26;
    *v31 = v23;
    v31[1] = v25;
    return 64;
  }

  if (a4 == 127)
  {
    v32 = *a3;
    v33 = *(a3 + 16);
    v34 = *(a3 + 32);
    v35 = *(a3 + 48);
    v36 = *(a3 + 64);
    v37 = *(a3 + 80);
    v38 = *(a3 + 96);
    v39 = *(a3 + 112);
    v40 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v33);
    a1[1] = vzip1q_s64(v36, v37);
    v41 = (a1 + 2 * a2);
    *v40 = vzip2q_s64(v32, v33);
    v40[1] = vzip2q_s64(v36, v37);
    *v41 = vzip1q_s64(v34, v35);
    v41[1] = vzip1q_s64(v38, v39);
    v42 = (v41 + a2);
    *v42 = vzip2q_s64(v34, v35);
    v42[1] = vzip2q_s64(v38, v39);
    return 128;
  }

  if (a4 == 3)
  {
    v15 = vld1q_dup_f32(a3);
    *a1 = v15;
    a1[1] = v15;
    v16 = (a1 + a2);
    *v16 = v15;
    v16[1] = v15;
    v17 = (a1 + 2 * a2);
    *v17 = v15;
    v17[1] = v15;
    v18 = (a1 + 2 * a2 + a2);
    *v18 = v15;
    v18[1] = v15;
    return 4;
  }

  v44 = 8 * (a3 & 7);
  v45 = a3 & 0xFFFFFFFFFFFFFFF8;
  v46 = v44 + 42;
  v47 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v44;
  if (v44 >= 0x17)
  {
    v47 |= *(v45 + 8) << (-8 * (a3 & 7u));
  }

  v48 = vdupq_n_s32(v47 & 0x1F);
  v49 = (8 * (a3 & 7)) | 0x200;
  v50.i64[0] = 0x300000003;
  v50.i64[1] = 0x300000003;
  v51 = vbicq_s8(vdupq_n_s32(((v47 >> 5) & 0x1F) + 1), vceqq_s32((*&v48 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v50));
  v50.i64[0] = 0x404040404040404;
  v50.i64[1] = 0x404040404040404;
  v52 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v48 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v50);
  if (vmaxvq_s8(v52) < 1)
  {
    v61 = 0;
    v85.i64[0] = -1;
    v85.i64[1] = -1;
    v81 = v51;
    v80 = v51;
    v79 = v51;
    v84.i64[0] = -1;
    v84.i64[1] = -1;
    v78 = v51;
    v83.i64[0] = -1;
    v83.i64[1] = -1;
    v82.i64[0] = -1;
    v82.i64[1] = -1;
  }

  else
  {
    v53 = vmovl_u8(*&vpaddq_s8(v52, v52));
    v54 = vmovl_u16(*&vpaddq_s16(v53, v53));
    v55 = vpaddq_s32(v54, v54).u64[0];
    v56.i64[0] = v55;
    v56.i64[1] = HIDWORD(v55);
    v57 = v56;
    v58 = vaddvq_s64(v56);
    v59 = v58 + v46;
    v60 = v58 <= 0x80 && v49 >= v59;
    v61 = !v60;
    v62 = 0uLL;
    if (v60)
    {
      v63 = v46 & 0x3A;
      v64 = vaddq_s64(vzip1q_s64(0, v57), vdupq_n_s64(v63));
      v65 = (v45 + ((v46 >> 3) & 8));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
      if (v58 + v63 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v62);
      }

      v46 = v59;
    }

    v66 = vzip1_s32(*v54.i8, *&vextq_s8(v54, v54, 8uLL));
    v67.i64[0] = v66.u32[0];
    v67.i64[1] = v66.u32[1];
    v68 = vshlq_u64(v62, vnegq_s64(v67));
    v69 = vuzp1q_s32(vzip1q_s64(v62, v68), vzip2q_s64(v62, v68));
    v70 = vshlq_u32(v69, vnegq_s32((*&v53 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v71 = vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70));
    v72 = vzip1q_s16(v71, vshlq_u16(v71, vnegq_s16(vmovl_u8(vuzp1_s8(*v52.i8, *v48.i8)))));
    *v72.i8 = vmovn_s16(v72);
    v69.i64[0] = 0x101010101010101;
    v69.i64[1] = 0x101010101010101;
    v73 = vshlq_s8(v69, v52);
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v73.i32[0] = vandq_s8(vaddq_s8(v73, v69), v72).u32[0];
    v74 = vdupq_n_s32(v73.i8[0]);
    v75 = vdupq_n_s32(v73.i8[1]);
    v76 = vdupq_n_s32(v73.i8[2]);
    v77 = vdupq_n_s32(v73.i8[3]);
    v78 = vsubq_s32(v51, v74);
    v79 = vsubq_s32(v51, v75);
    v80 = vsubq_s32(v51, v76);
    v81 = vsubq_s32(v51, v77);
    v82 = vceqzq_s32(v74);
    v83 = vceqzq_s32(v75);
    v84 = vceqzq_s32(v76);
    v85 = vceqzq_s32(v77);
  }

  v86 = 0uLL;
  v87 = vandq_s8(vextq_s8(vtstq_s32((*&v48 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v48 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v51);
  v88 = vpaddq_s32(v87, v87).u64[0];
  v89.i64[0] = v88;
  v89.i64[1] = HIDWORD(v88);
  v90 = v89;
  v91 = vaddvq_s64(v89);
  v92 = v91 + v46;
  if (v91 <= 0x80 && v49 >= v92)
  {
    v94 = v46 & 0x3F;
    v95 = vaddq_s64(vzip1q_s64(0, v90), vdupq_n_s64(v94));
    v96 = (v45 + 8 * (v46 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v95)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v95)));
    if (v91 + v94 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v95)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v95))), v86);
    }

    v46 = v92;
  }

  else
  {
    v61 = 1;
  }

  v97 = v47 & 3;
  v98 = 0uLL;
  if (v97 == 2)
  {
    v99 = v46 + 16;
    if (v49 >= v46 + 16)
    {
      v103 = (v45 + 8 * (v46 >> 6));
      v104 = *v103 >> v46;
      if ((v46 & 0x3F) >= 0x31)
      {
        v104 |= v103[1] << -(v46 & 0x3F);
      }

      v100 = v104;
      v101 = v46 + 32;
    }

    else
    {
      v100 = 0;
      v61 = 1;
      v101 = v46 + 16;
      v99 = v46;
    }

    v102 = v100;
    if (v49 >= v101)
    {
      v105 = (v45 + 8 * (v99 >> 6));
      v106 = *v105 >> v99;
      if ((v99 & 0x3F) >= 0x31)
      {
        v106 |= v105[1] << -(v99 & 0x3F);
      }

      v102.i32[1] = v106;
    }

    else
    {
      v61 = 1;
      v101 = v99;
    }
  }

  else
  {
    v101 = v46;
    v102 = 0;
  }

  v107 = vextq_s8(0, v78, 0xCuLL);
  v108 = vpaddq_s32(v107, v107).u64[0];
  v109.i64[0] = v108;
  v109.i64[1] = HIDWORD(v108);
  v110 = v109;
  v111 = vaddvq_s64(v109);
  v112 = v111 + v101;
  if (v111 <= 0x80 && v49 >= v112)
  {
    v114 = v101 & 0x3F;
    v115 = vaddq_s64(vzip1q_s64(0, v110), vdupq_n_s64(v114));
    v116 = (v45 + 8 * (v101 >> 6));
    v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v115)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v115)));
    if (v111 + v114 >= 0x81)
    {
      v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v115)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v115))), v98);
    }

    v101 = v112;
  }

  else
  {
    v61 = 1;
  }

  v117 = vpaddq_s32(v78, v78).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = v120 + v101;
  v122 = 0uLL;
  if (v120 <= 0x80 && v49 >= v121)
  {
    v125 = v101 & 0x3F;
    v126 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v125));
    v127 = (v45 + 8 * (v101 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if (v120 + v125 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v124);
    }

    v101 = v121;
  }

  else
  {
    v61 = 1;
    v124 = 0uLL;
  }

  v128 = vpaddq_s32(v79, v79).u64[0];
  v129.i64[0] = v128;
  v129.i64[1] = HIDWORD(v128);
  v130 = v129;
  v131 = vaddvq_s64(v129);
  v132 = v131 + v101;
  if (v131 <= 0x80 && v49 >= v132)
  {
    v134 = v101 & 0x3F;
    v135 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v134));
    v136 = (v45 + 8 * (v101 >> 6));
    v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
    if (v131 + v134 >= 0x81)
    {
      v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v122);
    }

    v101 = v132;
  }

  else
  {
    v61 = 1;
  }

  v137 = 0uLL;
  if (v131 > 0x80 || (v138 = v131 + v101, v49 < v131 + v101))
  {
    v138 = v101;
    v61 = 1;
    v142 = 0uLL;
  }

  else
  {
    v139 = v101 & 0x3F;
    v140 = vaddq_s64(vzip1q_s64(0, v130), vdupq_n_s64(v139));
    v141 = (v45 + 8 * (v101 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v131 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }
  }

  v143 = vpaddq_s32(v80, v80).u64[0];
  v144.i64[0] = v143;
  v144.i64[1] = HIDWORD(v143);
  v145 = v144;
  v146 = vaddvq_s64(v144);
  v147 = v146;
  if (v146 > 0x80 || (v148 = v146 + v138, v49 < v146 + v138))
  {
    v148 = v138;
    v61 = 1;
  }

  else
  {
    v149 = v138 & 0x3F;
    v150 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v149));
    v151 = (v45 + 8 * (v138 >> 6));
    v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
    if (v147 + v149 >= 0x81)
    {
      v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v137);
    }
  }

  v152 = 0uLL;
  if (v147 > 0x80 || (v153 = v147 + v148, v49 < v147 + v148))
  {
    v153 = v148;
    v61 = 1;
    v157 = 0uLL;
  }

  else
  {
    v154 = v148 & 0x3F;
    v155 = vaddq_s64(vzip1q_s64(0, v145), vdupq_n_s64(v154));
    v156 = (v45 + 8 * (v148 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if (v147 + v154 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
    }
  }

  v158 = vpaddq_s32(v81, v81).u64[0];
  v159.i64[0] = v158;
  v159.i64[1] = HIDWORD(v158);
  v160 = v159;
  v161 = vaddvq_s64(v159);
  v162 = v161;
  if (v161 > 0x80 || (v163 = v161 + v153, v49 < v161 + v153))
  {
    v163 = v153;
    v61 = 1;
  }

  else
  {
    v164 = v153 & 0x3F;
    v165 = vaddq_s64(vzip1q_s64(0, v160), vdupq_n_s64(v164));
    v166 = (v45 + 8 * (v153 >> 6));
    v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v162 + v164 >= 0x81)
    {
      v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v152);
    }
  }

  if (v162 > 0x80 || v49 < v162 + v163)
  {
    goto LABEL_111;
  }

  v167 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
  v168.i64[0] = v167.u32[0];
  v168.i64[1] = v167.u32[1];
  v169.i64[0] = 0x1F0000001FLL;
  v169.i64[1] = 0x1F0000001FLL;
  v170 = vaddq_s32(v81, v169);
  v171.i64[0] = 0x2000000020;
  v171.i64[1] = 0x2000000020;
  v172 = vsubq_s32(v171, v81);
  v173 = (v45 + 8 * (v163 >> 6));
  v174 = vaddq_s64(vzip1q_s64(0, v160), vdupq_n_s64(v163 & 0x3F));
  v175 = vnegq_s64(v168);
  v176 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v173, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v174)), vshlq_u64(vdupq_lane_s64(v173->i64[0], 0), vnegq_s64(v174)));
  if (v162 + (v163 & 0x3F) < 0x81)
  {
    if (v61)
    {
      goto LABEL_111;
    }

    v181 = vshlq_u64(v176, v175);
    v179 = vzip2q_s64(v176, v181);
    v180 = vzip1q_s64(v176, v181);
  }

  else
  {
    if (v61)
    {
      goto LABEL_111;
    }

    v177 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v173[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v174)), vshlq_u64(vdupq_laneq_s64(v173[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v174))), v176);
    v178 = vshlq_u64(v177, v175);
    v179 = vzip2q_s64(v177, v178);
    v180 = vzip1q_s64(v177, v178);
  }

  v182 = vshlq_s32(vshlq_s32(vuzp1q_s32(v180, v179), v172), v170);
  v10 = a4 + 1;
  if (v49 + 8 * v10 - (v162 + v163) - 512 >= 9)
  {
LABEL_111:
    v183 = 0;
    v184 = 0;
    v185 = 8 * (&v314 & 7);
    v186 = 32;
    do
    {
      v187 = 64 - v185;
      if (64 - v185 >= v186)
      {
        v187 = v186;
      }

      *(&v314 + v183) |= ((0xFFFFFFFFFFFFFFFFLL >> v184) & ~(-1 << v187)) << v185;
      v184 += v187;
      v188 = v187 + v185;
      v183 += v188 >> 6;
      v185 = v188 & 0x3F;
      v186 -= v187;
    }

    while (v186);
    v10 = 0;
    v189 = (a1 + a2);
    v11 = 0uLL;
    *a1 = 0u;
    a1[1] = 0u;
    v190 = (a1 + 2 * a2);
    *v189 = 0u;
    v189[1] = 0u;
    v14 = (a1 + 2 * a2 + a2);
    *v190 = 0u;
    v190[1] = 0u;
    goto LABEL_6;
  }

  v307 = v82;
  v309 = v83;
  v311 = v84;
  v313 = v85;
  v191 = vzip1_s32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
  v192 = vzip1_s32(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
  v193 = vzip1_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
  v194 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v195 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
  v196.i64[0] = v191.u32[0];
  v196.i64[1] = v191.u32[1];
  v197 = v196;
  v196.i64[0] = v192.u32[0];
  v196.i64[1] = v192.u32[1];
  v198 = v196;
  v196.i64[0] = v193.u32[0];
  v196.i64[1] = v193.u32[1];
  v199 = v196;
  v196.i64[0] = v194.u32[0];
  v196.i64[1] = v194.u32[1];
  v200 = v196;
  v196.i64[0] = v195.u32[0];
  v196.i64[1] = v195.u32[1];
  v201 = vnegq_s64(v200);
  v202 = vnegq_s64(v196);
  v203 = vshlq_u64(v86, vnegq_s64(v197));
  v204 = vshlq_u64(v98, vnegq_s64(v198));
  v205 = vshlq_u64(v124, vnegq_s64(v199));
  v206 = vshlq_u64(v122, v201);
  v207 = vshlq_u64(v142, v201);
  v208 = vshlq_u64(v137, v202);
  v209 = vshlq_u64(v157, v202);
  v210 = vzip2q_s64(v86, v203);
  v211 = vzip1q_s64(v86, v203);
  v203.i64[0] = 0x2000000020;
  v203.i64[1] = 0x2000000020;
  v212 = vzip2q_s64(v98, v204);
  v213 = vzip1q_s64(v98, v204);
  v204.i64[0] = 0x2000000020;
  v204.i64[1] = 0x2000000020;
  v214 = vzip2q_s64(v124, v205);
  v215 = vzip1q_s64(v124, v205);
  v216 = vzip2q_s64(v122, v206);
  v217 = vzip1q_s64(v122, v206);
  v206.i64[0] = 0x2000000020;
  v206.i64[1] = 0x2000000020;
  v218 = vzip2q_s64(v142, v207);
  v219 = vzip1q_s64(v142, v207);
  v220 = vzip2q_s64(v137, v208);
  v221 = vzip1q_s64(v137, v208);
  v208.i64[0] = 0x2000000020;
  v208.i64[1] = 0x2000000020;
  v222 = vzip2q_s64(v157, v209);
  v223 = vzip1q_s64(v157, v209);
  v224 = v47 >> 10;
  v225 = vuzp1q_s32(v211, v210);
  v209.i64[0] = 0x1F0000001FLL;
  v209.i64[1] = 0x1F0000001FLL;
  v226 = vuzp1q_s32(v213, v212);
  v213.i64[0] = 0x1F0000001FLL;
  v213.i64[1] = 0x1F0000001FLL;
  v227 = vsubq_s32(v204, v107);
  v228 = vuzp1q_s32(v215, v214);
  v229 = vsubq_s32(v204, v78);
  v230 = vuzp1q_s32(v217, v216);
  v204.i64[0] = 0x1F0000001FLL;
  v204.i64[1] = 0x1F0000001FLL;
  v231 = vsubq_s32(v206, v79);
  v232 = vuzp1q_s32(v219, v218);
  v233 = vuzp1q_s32(v221, v220);
  v219.i64[0] = 0x1F0000001FLL;
  v219.i64[1] = 0x1F0000001FLL;
  v234 = vsubq_s32(v208, v80);
  v235 = vaddq_s32(v107, v213);
  v236 = vaddq_s32(v78, v213);
  v237 = vshlq_s32(v228, v229);
  v238 = vaddq_s32(v79, v204);
  v239 = vaddq_s32(v80, v219);
  v240 = vshlq_s32(vshlq_s32(v225, vsubq_s32(v203, v87)), vaddq_s32(v87, v209));
  v241 = vshlq_s32(vshlq_s32(v226, v227), v235);
  v242 = vshlq_s32(v237, v236);
  v243 = vshlq_s32(vshlq_s32(v230, v231), v238);
  v244 = vshlq_s32(vshlq_s32(v232, v231), v238);
  v245 = vshlq_s32(vshlq_s32(v233, v234), v239);
  v246 = vshlq_s32(vshlq_s32(vuzp1q_s32(v223, v222), v234), v239);
  v247 = vshlq_u64(v152, v175);
  v248 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v152, v247), vzip2q_s64(v152, v247)), v172), v170);
  if (v97 == 2)
  {
    v249 = vdupq_lane_s32(v102, 1);
    v250.i64[0] = 0xFFFFFFFF00000000;
    v250.i64[1] = 0xFFFFFFFF00000000;
    v249.i64[0] = 0;
    v251 = vaddq_s32(vandq_s8(vdupq_lane_s32(v102, 0), v250), v249);
    v252 = vmlaq_lane_s32(v249, xmmword_29D2F11A0, v102, 0);
    v241 = vaddq_s32(v241, v251);
    *v250.i8 = vshl_u32(v102, 0x100000002);
    v253 = vdupq_lane_s32(*v250.i8, 1);
    v242 = vaddq_s32(v242, v252);
    v243 = vaddq_s32(vaddq_s32(v251, v253), v243);
    v254 = vdupq_lane_s32(*v250.i8, 0);
    v244 = vaddq_s32(vaddq_s32(v252, v253), v244);
    v245 = vaddq_s32(vaddq_s32(v251, v254), v245);
    v246 = vaddq_s32(vaddq_s32(v252, v254), v246);
    v255 = vdupq_lane_s32(vadd_s32(*v250.i8, *v253.i8), 0);
    v248 = vaddq_s32(vaddq_s32(v255, v251), v248);
    v182 = vaddq_s32(vaddq_s32(v255, v252), v182);
  }

  v256 = vdupq_n_s32(v224);
  v257 = vdupq_lane_s32(*v240.i8, 0);
  v258 = vandq_s8(v257, v307);
  v259 = vsubq_s32(vaddq_s32(vandq_s8(v240, v307), v241), v258);
  v260 = vsubq_s32(v242, v258);
  v261 = vandq_s8(v257, v309);
  v262 = vsubq_s32(v243, v261);
  v263 = vsubq_s32(v244, v261);
  v264 = vandq_s8(v257, v311);
  v265 = vsubq_s32(v245, v264);
  v266 = vsubq_s32(v246, v264);
  v267 = vandq_s8(v257, v313);
  v268 = vsubq_s32(v248, v267);
  v269 = vsubq_s32(v182, v267);
  v267.i64[0] = 0x100000001;
  v267.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v48 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v267)))
  {
    v270 = vnegq_s32((*&v48 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v271 = v260;
    v271.i32[3] = v259.i32[0];
    v272 = v259;
    v272.i32[0] = v260.i32[3];
    v318.val[0] = vbslq_s8(v270, v272, v259);
    v318.val[1] = vbslq_s8(v270, v271, v260);
    v271.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v271.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v319.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v318, xmmword_29D2F0F80), v270), v318.val[0]);
    v319.val[1] = vaddq_s32(v318.val[1], vandq_s8(vqtbl2q_s8(v318, v271), v270));
    v259 = vaddq_s32(vandq_s8(vqtbl2q_s8(v319, xmmword_29D2F0F90), v270), v319.val[0]);
    v260 = vaddq_s32(v319.val[1], vandq_s8(vqtbl2q_s8(v319, v271), v270));
    v319.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v262.i8, xmmword_29D2F0FA0), v270), v262);
    v319.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v262.i8, xmmword_29D2F0FB0), v270), v263);
    v262 = vaddq_s32(vandq_s8(vqtbl2q_s8(v319, xmmword_29D2F0FC0), v270), v319.val[0]);
    v263 = vaddq_s32(v319.val[1], vandq_s8(vqtbl2q_s8(v319, v271), v270));
    v319.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v265.i8, xmmword_29D2F0FD0), v270), v265);
    v319.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v265.i8, xmmword_29D2F0F80), v270), v266);
    v265 = vaddq_s32(vandq_s8(vqtbl2q_s8(v319, v271), v270), v319.val[0]);
    v266 = vaddq_s32(v319.val[1], vandq_s8(vqtbl2q_s8(v319, xmmword_29D2F0FE0), v270));
    v318.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v268.i8, xmmword_29D2F0FF0), v270), v268);
    v318.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v268.i8, xmmword_29D2F0F80), v270), v269);
    v268 = vaddq_s32(vandq_s8(vqtbl2q_s8(v318, v271), v270), v318.val[0]);
    v269 = vaddq_s32(v318.val[1], vandq_s8(vqtbl2q_s8(v318, xmmword_29D2F1000), v270));
  }

  v273 = vaddq_s32(v256, v259);
  v274 = vaddq_s32(v260, v256);
  v275 = vaddq_s32(v262, v256);
  v276 = vaddq_s32(v263, v256);
  v277 = vaddq_s32(v265, v256);
  v278 = vaddq_s32(v266, v256);
  v279 = vaddq_s32(v268, v256);
  v280 = vaddq_s32(v269, v256);
  v281.i64[0] = 0x1000000010;
  v281.i64[1] = 0x1000000010;
  v282 = vcgtq_u32(v281, v48);
  v283.i64[0] = -1;
  v283.i64[1] = -1;
  v284 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v273, v283), v282), v273);
  v285 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v274, v283), v282), v274);
  v286 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v275, v283), v282), v275);
  v287 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v276, v283), v282), v276);
  v288 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v277, v283), v282), v277);
  v289 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v278, v283), v282), v278);
  v290 = vzip2q_s64(v284, v285);
  v284.i64[1] = v285.i64[0];
  v291 = vbicq_s8(vqtbl1q_s8(v279, v283), v282);
  *&v292 = v288.i64[0];
  *(&v292 + 1) = v289.i64[0];
  v293 = vbicq_s8(vqtbl1q_s8(v280, v283), v282);
  v294 = (a1 + a2);
  *a1 = v284;
  a1[1] = v292;
  v295 = (a1 + 2 * a2);
  v296 = vaddq_s32(v291, v279);
  v297 = vaddq_s32(v293, v280);
  *v294 = v290;
  v294[1] = vzip2q_s64(v288, v289);
  v278.i64[0] = v286.i64[0];
  v278.i64[1] = v287.i64[0];
  v279.i64[0] = v296.i64[0];
  v279.i64[1] = v297.i64[0];
  *v295 = v278;
  v295[1] = v279;
  v298 = &v295->i8[a2];
  *v298 = vzip2q_s64(v286, v287);
  v298[1] = vzip2q_s64(v296, v297);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 32, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 8 * a2 + 32, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 2, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 18, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 48, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 34, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 50, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *a3;
  v10 = *(a3 + a4);
  v11 = *(a3 + a4 + 16);
  v13 = *v7;
  v14 = v7[1];
  v12 = (v7 + a4);
  v15 = vdupq_lane_s32(*a3, 0);
  v16 = vsubq_s32(*a3, v15);
  v17 = vsubq_s32(v10, v15);
  v18 = vsubq_s32(v8, v15);
  v19 = vsubq_s32(v11, v15);
  v20 = vsubq_s32(v13, v15);
  v21 = vsubq_s32(*v12, v15);
  v22 = vsubq_s32(v14, v15);
  v23 = vsubq_s32(v12[1], v15);
  v24 = vmaxq_s32(v16, v17);
  v460 = v16;
  v461 = v17;
  v25 = vminq_s32(v16, v17);
  v24.i32[0] = vmaxvq_s32(v24);
  v25.i32[0] = vminvq_s32(v25);
  v26 = vdupq_lane_s32(*v24.i8, 0);
  v27 = vdupq_lane_s32(*v25.i8, 0);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v28 = vmaxq_s32(v26, v16);
  v29.i64[0] = 0x8000000080000000;
  v29.i64[1] = 0x8000000080000000;
  v30 = vminq_s32(v27, v29);
  v31 = vzip1q_s32(v26, v27);
  v32.i64[0] = 0x2000000020;
  v32.i64[1] = 0x2000000020;
  v33 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v31)), vceqzq_s32(v31));
  v34 = vpmaxq_s32(v33, v33);
  v35 = vmaxq_s32(v18, v19);
  v462 = v18;
  v463 = v19;
  v36 = vminq_s32(v18, v19);
  v35.i32[0] = vmaxvq_s32(v35);
  v36.i32[0] = vminvq_s32(v36);
  v37 = vdupq_lane_s32(*v35.i8, 0);
  v38 = vdupq_lane_s32(*v36.i8, 0);
  v39 = vmaxq_s32(v28, v37);
  v40 = vminq_s32(v30, v38);
  v41 = vzip1q_s32(v37, v38);
  v42 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v41)), vceqzq_s32(v41));
  v43 = vpmaxq_s32(v42, v42);
  v44 = vmaxq_s32(v20, v21);
  v45 = vminq_s32(v20, v21);
  v44.i32[0] = vmaxvq_s32(v44);
  v46 = vdupq_lane_s32(*v44.i8, 0);
  v45.i32[0] = vminvq_s32(v45);
  v47 = vdupq_lane_s32(*v45.i8, 0);
  v48 = vmaxq_s32(v39, v46);
  v49 = vminq_s32(v40, v47);
  v50 = vzip1q_s32(v46, v47);
  v51 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v50)), vceqzq_s32(v50));
  v52 = vmaxq_s32(v22, v23);
  v464 = v23;
  v53 = vminq_s32(v22, v23);
  v52.i32[0] = vmaxvq_s32(v52);
  v53.i32[0] = vminvq_s32(v53);
  v54 = vdupq_lane_s32(*v52.i8, 0);
  v55 = vdupq_lane_s32(*v53.i8, 0);
  v56 = vpmaxq_s32(v51, v51);
  v57 = vminq_s32(v49, v55);
  v58 = vzip1q_s32(v54, v55);
  v59 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v58)), vceqzq_s32(v58));
  v60 = vpmaxq_s32(v59, v59);
  v61 = vmaxq_s32(vmaxq_s32(v34, v43), vmaxq_s32(v56, v60));
  v62 = vclzq_s32(vsubq_s32(vmaxq_s32(v48, v54), v57));
  v63 = vsubq_s32(v32, v62);
  v64 = vminq_s32(v63, v61);
  if (vmaxvq_s32(v64))
  {
    v65 = 0;
    v66 = 0;
    v67.i64[0] = 0x1F0000001FLL;
    v67.i64[1] = 0x1F0000001FLL;
    v68 = vsubq_s32(v67, v62);
    v67.i64[0] = -1;
    v67.i64[1] = -1;
    v69 = vcgtq_s32(v61, v63);
    v466 = vandq_s8(vsubq_s32(vshlq_s32(v67, v68), v57), v69);
    v70.i64[0] = 0x800000008;
    v70.i64[1] = 0x800000008;
    v71.i64[0] = 0x300000003;
    v71.i64[1] = 0x300000003;
    v72 = vorrq_s8(vandq_s8(vceqzq_s32(v64), v71), vandq_s8(v69, v70));
    v69.i64[0] = 0xF0000000FLL;
    v69.i64[1] = 0xF0000000FLL;
    v73 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v34), v69), 0);
    v74 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v43), v69), 0);
    v75 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v56), v69), 0);
    v76 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v60), v69), 0);
    v467 = vsubq_s32(v64, v73);
    v77 = vsubq_s32(v64, v74);
    v78 = vsubq_s32(v64, v75);
    v465 = vsubq_s32(v64, v76);
    v79 = vceqq_s32(vaddq_s32(v76, v75), vnegq_s32(vaddq_s32(v73, v74)));
    v74.i64[0] = 0x400000004;
    v74.i64[1] = 0x400000004;
    v80 = vbicq_s8(v74, v79);
    v81 = vorrq_s8(v80, v72);
    if (a5 < 2 || a6 < 2)
    {
      v178 = v462;
      v177 = v463;
      v179 = v460;
      v180 = v461;
    }

    else
    {
      v82 = v13;
      v446 = *v12;
      v448 = v12[1];
      v83 = vextq_s8(v9, v9, 4uLL);
      *v83.i8 = vsub_s32(*v83.i8, vdup_lane_s32(*v9.i8, 0));
      v453 = v83;
      v84 = vshl_n_s32(*v83.i8, 0x10uLL);
      v85 = v84.i32[1];
      v86 = vshl_s32(v84, 0xFFFFFFF1FFFFFFF2);
      v87 = v84.i32[1] >> 16;
      v88 = vdupq_n_s32(v84.i32[0] >> 16);
      v89 = vdupq_n_s32(v87);
      v90.i64[0] = 0xFFFFFFFF00000000;
      v90.i64[1] = 0xFFFFFFFF00000000;
      v89.i64[0] = 0;
      v458 = v81;
      v91 = vaddq_s32(v89, vandq_s8(v88, v90));
      v92 = vmlaq_s32(v89, v88, xmmword_29D2F11A0);
      v93 = vsubq_s32(v460, v91);
      v94 = vsubq_s32(v461, v92);
      v95 = vdupq_n_s32(-v86.i32[1]);
      v96 = vsubq_s32(vaddq_s32(v95, v462), v91);
      v97 = vsubq_s32(vaddq_s32(v463, v95), v92);
      v98 = vdupq_n_s32(-v86.i32[0]);
      v459 = v20;
      v99 = vsubq_s32(vaddq_s32(v98, v20), v91);
      v100 = vaddq_s32(vsubq_s32(v98, v92), v21);
      v101 = vdupq_n_s32(-v86.i32[0] - v86.i32[1]);
      v102 = vsubq_s32(vaddq_s32(v101, v22), v91);
      v103 = vaddq_s32(vsubq_s32(v101, v92), v464);
      v104 = vmaxq_s32(v93, v94);
      v449 = v94;
      v451 = v93;
      v105 = vminq_s32(v93, v94);
      v104.i32[0] = vmaxvq_s32(v104);
      v105.i32[0] = vminvq_s32(v105);
      v106 = vdupq_lane_s32(*v104.i8, 0);
      v107 = vdupq_lane_s32(*v105.i8, 0);
      v92.i64[0] = 0x8000000080000000;
      v92.i64[1] = 0x8000000080000000;
      v108 = vmaxq_s32(v106, v92);
      v90.i64[0] = 0x8000000080000000;
      v90.i64[1] = 0x8000000080000000;
      v109 = vminq_s32(v107, v90);
      v110 = vzip1q_s32(v106, v107);
      v90.i64[0] = 0x2000000020;
      v90.i64[1] = 0x2000000020;
      v456 = v21;
      v457 = v22;
      v111 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v110)), vceqzq_s32(v110));
      v112 = vpmaxq_s32(v111, v111);
      v113 = vmaxq_s32(v96, v97);
      v445 = v97;
      v114 = vminq_s32(v96, v97);
      v113.i32[0] = vmaxvq_s32(v113);
      v114.i32[0] = vminvq_s32(v114);
      v115 = vdupq_lane_s32(*v113.i8, 0);
      v116 = vdupq_lane_s32(*v114.i8, 0);
      v117 = vmaxq_s32(v108, v115);
      v118 = vminq_s32(v109, v116);
      v119 = vzip1q_s32(v115, v116);
      v120 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v119)), vceqzq_s32(v119));
      v121 = vpmaxq_s32(v120, v120);
      v122 = vmaxq_s32(v99, v100);
      v443 = v100;
      v444 = v99;
      v123 = vminq_s32(v99, v100);
      v122.i32[0] = vmaxvq_s32(v122);
      v123.i32[0] = vminvq_s32(v123);
      v124 = vdupq_lane_s32(*v122.i8, 0);
      v125 = vdupq_lane_s32(*v123.i8, 0);
      v126 = vmaxq_s32(v117, v124);
      v127 = vminq_s32(v118, v125);
      v128 = vzip1q_s32(v124, v125);
      v129 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v128)), vceqzq_s32(v128));
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
      v138 = vbicq_s8(vsubq_s32(v90, vclsq_s32(v137)), vceqzq_s32(v137));
      v139 = vpmaxq_s32(v138, v138);
      v140 = vmaxq_s32(vmaxq_s32(v112, v121), vmaxq_s32(v130, v139));
      v442 = v136;
      v440 = vclzq_s32(vsubq_s32(v135, v136));
      v141 = vsubq_s32(v90, v440);
      v142 = vcgtq_s32(v140, v141);
      v143 = vminq_s32(v141, v140);
      v83.i64[0] = 0x200000002;
      v83.i64[1] = 0x200000002;
      v141.i64[0] = 0xA0000000ALL;
      v141.i64[1] = 0xA0000000ALL;
      v441 = v142;
      v144 = vbslq_s8(v142, v141, v83);
      v141.i64[0] = 0x100000001;
      v141.i64[1] = 0x100000001;
      v145 = vmaxq_s32(v143, v141);
      v142.i64[0] = 0xF0000000FLL;
      v142.i64[1] = 0xF0000000FLL;
      v146 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v112), v142), 0);
      v147 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v121), v142), 0);
      v148 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v130), v142), 0);
      v149 = vmaxq_s32(vminq_s32(vsubq_s32(v145, v139), v142), 0);
      v150 = vsubq_s32(v145, v146);
      v151 = vsubq_s32(v145, v147);
      v152 = vsubq_s32(v145, v148);
      v153 = vsubq_s32(v145, v149);
      v154 = vaddq_s32(v146, v147);
      v155 = vaddq_s32(v149, v148);
      v112.i64[0] = 0x400000004;
      v112.i64[1] = 0x400000004;
      v156 = vorrq_s8(vbicq_s8(v112, vceqq_s32(v155, vnegq_s32(v154))), v144);
      v154.i64[1] = v453.i64[1];
      v157 = v453.i16[0];
      *v154.i8 = vqmovn_u32(v156);
      v148.i64[0] = 0x8000800080008;
      v148.i64[1] = 0x8000800080008;
      *v155.i8 = vqmovn_u32(v145);
      v158 = vbicq_s8(v155, vceqzq_s16(vandq_s8(v154, v148)));
      v159.i64[0] = 0x2000200020002;
      v159.i64[1] = 0x2000200020002;
      v142.i64[0] = 0x10001000100010;
      v142.i64[1] = 0x10001000100010;
      v160 = vandq_s8(vshlq_n_s16(v154, 2uLL), v142);
      v138.i64[0] = 0x3000300030003;
      v138.i64[1] = 0x3000300030003;
      v112.i64[0] = 0x20002000200020;
      v112.i64[1] = 0x20002000200020;
      v161 = vaddq_s16(v158, v160);
      v454 = v150;
      *v160.i8 = vqmovn_u32(v150);
      v150.i64[0] = 0x7000700070007;
      v150.i64[1] = 0x7000700070007;
      v162 = vmlaq_s16(vaddq_s16(v161, vandq_s8(vceqq_s16(vandq_s8(v154, v138), v159), v112)), v160, v150);
      v163 = vaddq_s32(vaddq_s32(v152, v151), v153);
      *v163.i8 = vqmovn_u32(v163);
      v164 = vaddq_s16(v162, vshlq_n_s16(v163, 3uLL));
      v163.i64[1] = v458.i64[1];
      *v163.i8 = vqmovn_u32(v458);
      v165 = vceqzq_s16(vandq_s8(v163, v148));
      *v148.i8 = vqmovn_u32(v64);
      v166 = vaddq_s16(vbicq_s8(v148, v165), vandq_s8(vshlq_n_s16(v163, 2uLL), v142));
      v167 = vaddq_s16(v166, vandq_s8(vceqq_s16(vandq_s8(v163, v138), v159), v112));
      *v166.i8 = vqmovn_u32(v467);
      v168 = vmlaq_s16(v167, v166, v150);
      v169 = vaddq_s32(v78, v77);
      v170 = vaddq_s32(v169, v465);
      *v169.i8 = vqmovn_u32(v170);
      v171 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v168, vshlq_n_s16(v169, 3uLL)), v164)), 0);
      v66 = v85 & 0xFFFF0000 | v157;
      v172 = vaddvq_s32(v171);
      if (v172)
      {
        v173.i64[0] = 0x1F0000001FLL;
        v173.i64[1] = 0x1F0000001FLL;
        v174.i64[0] = -1;
        v174.i64[1] = -1;
        v175 = vcltzq_s32(vshlq_n_s32(v171, 0x1FuLL));
        v460 = vbslq_s8(v175, v451, v460);
        v461 = vbslq_s8(v175, v449, v461);
        v462 = vbslq_s8(v175, v96, v462);
        v463 = vbslq_s8(v175, v445, v463);
        v459 = vbslq_s8(v175, v444, v459);
        v456 = vbslq_s8(v175, v443, v456);
        v457 = vbslq_s8(v175, v102, v457);
        v464 = vbslq_s8(v175, v103, v464);
        v465 = vbslq_s8(v175, v153, v465);
        v466 = vbslq_s8(v175, vandq_s8(vsubq_s32(vshlq_s32(v174, vsubq_s32(v173, v440)), v442), v441), v466);
        v467 = vbslq_s8(v175, v454, v467);
        v64 = vbslq_s8(v175, v145, v64);
        v458 = vbslq_s8(v175, v156, v458);
        v452 = vbslq_s8(v175, v151, v77);
        v455 = vbslq_s8(v175, v152, v78);
        v450 = vaddq_s32(vaddq_s32(v455, v452), v465);
      }

      else
      {
        v452 = v77;
        v455 = v78;
        v450 = v170;
      }

      v192 = vsubq_s32(v9, vqtbl2q_s8(*v9.i8, xmmword_29D2F0F80));
      v181 = vsubq_s32(v10, vqtbl2q_s8(*v9.i8, xmmword_29D2F1030));
      v182 = *(a3 + a4 + 16);
      v182.i32[3] = HIDWORD(*(a3 + a4));
      v183 = vsubq_s32(v8, vqtbl2q_s8(*v8.i8, xmmword_29D2F0FA0));
      v184 = vsubq_s32(v11, vqtbl2q_s8(*v8.i8, xmmword_29D2F1040));
      v185 = v446;
      v185.i32[3] = v182.i32[3];
      v186 = vsubq_s32(v13, vqtbl2q_s8(*v82.i8, xmmword_29D2F1050));
      v187 = v448;
      v187.i32[3] = v182.i32[3];
      v188 = vsubq_s32(v446, vqtbl2q_s8(*v82.i8, xmmword_29D2F0F80));
      v189 = vsubq_s32(v14, vqtbl2q_s8(*v14.i8, xmmword_29D2F1060));
      v190 = vsubq_s32(v448, vqtbl2q_s8(*v14.i8, xmmword_29D2F0F80));
      v191 = v181;
      v191.i32[3] = v192.i32[0];
      v192.i32[0] = v181.i32[3];
      v193 = vmaxq_s32(v192, v191);
      v194 = vminq_s32(v192, v191);
      v193.i32[0] = vmaxvq_s32(v193);
      v194.i32[0] = vminvq_s32(v194);
      v195 = vdupq_lane_s32(*v193.i8, 0);
      v196 = vdupq_lane_s32(*v194.i8, 0);
      v197.i64[0] = 0x8000000080000000;
      v197.i64[1] = 0x8000000080000000;
      v198 = vmaxq_s32(v195, v197);
      v199 = vminq_s32(v196, v197);
      v200 = vzip1q_s32(v195, v196);
      v201.i64[0] = 0x2000000020;
      v201.i64[1] = 0x2000000020;
      v202 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v200)), vceqzq_s32(v200));
      v203 = vpmaxq_s32(v202, v202);
      v204 = vmaxq_s32(v183, v184);
      v447 = v184;
      v205 = vminq_s32(v183, v184);
      v204.i32[0] = vmaxvq_s32(v204);
      v205.i32[0] = vminvq_s32(v205);
      v206 = vdupq_lane_s32(*v204.i8, 0);
      v207 = vdupq_lane_s32(*v205.i8, 0);
      v208 = vmaxq_s32(v198, v206);
      v209 = vminq_s32(v199, v207);
      v210 = vzip1q_s32(v206, v207);
      v211 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v210)), vceqzq_s32(v210));
      v212 = vpmaxq_s32(v211, v211);
      v213 = vmaxq_s32(v186, v188);
      v214 = vminq_s32(v186, v188);
      v213.i32[0] = vmaxvq_s32(v213);
      v214.i32[0] = vminvq_s32(v214);
      v215 = vdupq_lane_s32(*v213.i8, 0);
      v216 = vdupq_lane_s32(*v214.i8, 0);
      v217 = vmaxq_s32(v208, v215);
      v218 = vminq_s32(v209, v216);
      v219 = vzip1q_s32(v215, v216);
      v220 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v219)), vceqzq_s32(v219));
      v221 = vpmaxq_s32(v220, v220);
      v222 = vmaxq_s32(v189, v190);
      v223 = vminq_s32(v189, v190);
      v222.i32[0] = vmaxvq_s32(v222);
      v223.i32[0] = vminvq_s32(v223);
      v224 = vdupq_lane_s32(*v222.i8, 0);
      v225 = vdupq_lane_s32(*v223.i8, 0);
      v226 = vmaxq_s32(v217, v224);
      v227 = vminq_s32(v218, v225);
      v228 = vzip1q_s32(v224, v225);
      v229 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v228)), vceqzq_s32(v228));
      v230 = vpmaxq_s32(v229, v229);
      v231 = vmaxq_s32(vmaxq_s32(v203, v212), vmaxq_s32(v221, v230));
      v232 = vclzq_s32(vsubq_s32(v226, v227));
      v233 = vsubq_s32(v201, v232);
      v234 = vcgtq_s32(v231, v233);
      v235 = vminq_s32(v233, v231);
      v233.i64[0] = 0x900000009;
      v233.i64[1] = 0x900000009;
      v197.i64[0] = 0x200000002;
      v197.i64[1] = 0x200000002;
      v236 = vorrq_s8(vandq_s8(vceqzq_s32(v235), v197), vsubq_s32(vandq_s8(v234, v233), vmvnq_s8(v234)));
      v197.i64[0] = 0xF0000000FLL;
      v197.i64[1] = 0xF0000000FLL;
      v237 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v203), v197), 0);
      v238 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v212), v197), 0);
      v239 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v221), v197), 0);
      v240 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v230), v197), 0);
      v241 = vsubq_s32(v235, v237);
      v197.i64[0] = 0x400000004;
      v197.i64[1] = 0x400000004;
      v242 = vbicq_s8(v197, vceqq_s32(vaddq_s32(v240, v239), vnegq_s32(vaddq_s32(v237, v238))));
      v243 = vorrq_s8(v242, v236);
      *v242.i8 = vqmovn_u32(v243);
      v182.i64[0] = 0x8000800080008;
      v182.i64[1] = 0x8000800080008;
      *v236.i8 = vqmovn_u32(v235);
      v244 = vbicq_s8(v236, vceqzq_s16(vandq_s8(v242, v182)));
      v245.i64[0] = 0x10001000100010;
      v245.i64[1] = 0x10001000100010;
      v246 = vandq_s8(vshlq_n_s16(v242, 2uLL), v245);
      v247.i64[0] = 0x3000300030003;
      v247.i64[1] = 0x3000300030003;
      v185.i64[0] = 0x2000200020002;
      v185.i64[1] = 0x2000200020002;
      v75.i64[0] = 0x20002000200020;
      v75.i64[1] = 0x20002000200020;
      v248 = vaddq_s16(v244, v246);
      *v246.i8 = vqmovn_u32(v241);
      v184.i64[0] = 0x7000700070007;
      v184.i64[1] = 0x7000700070007;
      v249 = vmlaq_s16(vaddq_s16(v248, vandq_s8(vceqq_s16(vandq_s8(v242, v247), v185), v75)), v246, v184);
      *v248.i8 = vqmovn_u32(v458);
      v250 = vceqzq_s16(vandq_s8(v248, v182));
      *v182.i8 = vqmovn_u32(v64);
      v251 = vbicq_s8(v182, v250);
      v252 = vandq_s8(vshlq_n_s16(v248, 2uLL), v245);
      v253 = vandq_s8(vceqq_s16(vandq_s8(v248, v247), v185), v75);
      v254 = vaddq_s16(vaddq_s16(v251, v252), v253);
      *v253.i8 = vqmovn_u32(v467);
      v255 = vmlaq_s16(v254, v253, v184);
      v256 = vsubq_s32(v235, v238);
      v257 = vsubq_s32(v235, v239);
      v258 = vsubq_s32(v235, v240);
      v259 = vaddq_s32(vaddq_s32(v257, v256), v258);
      *v259.i8 = vqmovn_u32(v259);
      v260 = vshlq_n_s16(v259, 3uLL);
      v261 = vaddq_s16(v249, v260);
      v75.i64[1] = v450.i64[1];
      *v260.i8 = vqmovn_u32(v450);
      v80 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v255, vshlq_n_s16(v260, 3uLL)), v261)), 0);
      v260.i16[0] = vaddvq_s32(v80);
      v262 = v260.u16[0];
      if (v260.i16[0])
      {
        v263 = vextq_s8(v10, v10, 0xCuLL);
        v264.i64[0] = 0x1F0000001FLL;
        v264.i64[1] = 0x1F0000001FLL;
        v265 = vsubq_s32(v264, v232);
        v264.i64[0] = -1;
        v264.i64[1] = -1;
        v266 = vandq_s8(vsubq_s32(vshlq_s32(v264, v265), v227), v234);
        v80 = vcltzq_s32(vshlq_n_s32(v80, 0x1FuLL));
        v15.i32[0] = vbslq_s8(v80, v263, v15).u32[0];
        v179 = vbslq_s8(v80, v192, v460);
        v180 = vbslq_s8(v80, v191, v461);
        v178 = vbslq_s8(v80, v183, v462);
        v177 = vbslq_s8(v80, v447, v463);
        v459 = vbslq_s8(v80, v186, v459);
        v21 = vbslq_s8(v80, v188, v456);
        v22 = vbslq_s8(v80, v189, v457);
        v464 = vbslq_s8(v80, v190, v464);
        v467 = vbslq_s8(v80, v241, v467);
        v77 = vbslq_s8(v80, v256, v452);
        v78 = vbslq_s8(v80, v257, v455);
        v465 = vbslq_s8(v80, v258, v465);
        v466 = vbslq_s8(v80, v266, v466);
        v64 = vbslq_s8(v80, v235, v64);
        v81 = vbslq_s8(v80, v243, v458);
      }

      else
      {
        v21 = v456;
        v22 = v457;
        v178 = v462;
        v177 = v463;
        v77 = v452;
        v78 = v455;
        v179 = v460;
        v180 = v461;
        v81 = v458;
      }

      if (v172)
      {
        v267 = v262 == 0;
      }

      else
      {
        v267 = 0;
      }

      v65 = v267;
      v20 = v459;
    }

    *v80.i8 = vqmovn_u32(v81);
    v268.i64[0] = 0x8000800080008;
    v268.i64[1] = 0x8000800080008;
    *v75.i8 = vqmovn_u32(v64);
    v268.i16[0] = vbicq_s8(v75, vceqzq_s16(vandq_s8(v80, v268))).u16[0];
    v269.i64[0] = 0x3000300030003;
    v269.i64[1] = 0x3000300030003;
    v270.i64[0] = 0x2000200020002;
    v270.i64[1] = 0x2000200020002;
    v271 = vceqq_s16(vandq_s8(v80, v269), v270);
    v270.i64[0] = 0x20002000200020;
    v270.i64[1] = 0x20002000200020;
    v271.i16[0] = vandq_s8(v271, v270).u16[0];
    v270.i16[0] = vqmovn_u32(v467).u16[0];
    if (((v268.i16[0] + ((4 * v80.i16[0]) & 0x10) + v271.i16[0] - v270.i16[0] + 8 * v270.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v78, v77), v465)).u16[0]) - 471) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v272 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v273 = 8 * (a1 & 7);
      if (v273)
      {
        v274 = *v272 & ~(-1 << v273);
      }

      else
      {
        v274 = 0;
      }

      *a2 = 0;
      if (v64.i32[0])
      {
        v275 = (32 * v64.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v275 = 0;
      }

      v276 = v275 | v81.i8[0] & 0x1F | (v15.u32[0] << 10);
      v277 = (v276 << v273) | v274;
      if (v273 >= 0x16)
      {
        *v272 = v277;
        v277 = v276 >> (-8 * (a1 & 7u));
      }

      v278 = v273 + 42;
      v279 = vsubq_s32(v64, v467);
      v280 = vsubq_s32(v64, v77);
      v281 = vsubq_s32(v64, v78);
      v282 = vsubq_s32(v64, v465);
      *v279.i8 = vqmovn_u32(v279);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u32(v280);
      *v280.i8 = vqmovn_u16(v280);
      *v281.i8 = vqmovn_u32(v281);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u32(v282);
      *v282.i8 = vqmovn_u16(v282);
      v279.i32[0] = vzip1q_s16(vzip1q_s8(v279, v280), vzip1q_s8(v281, v282)).u32[0];
      v280.i64[0] = 0x400000004;
      v280.i64[1] = 0x400000004;
      v281.i64[0] = 0x404040404040404;
      v281.i64[1] = 0x404040404040404;
      v283 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v81, v280))), v281);
      v281.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v284 = vandq_s8(vshlq_u8(v282, vorrq_s8(v283, v281)), v279.u32[0]);
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
      v298 = (v273 + 42) & 0x3A;
      v299 = (v296.i64[0] << v298) | v277;
      if ((v297.i64[0] + v298) >= 0x40)
      {
        *(v272 + ((v278 >> 3) & 8)) = v299;
        v299 = v296.i64[0] >> -v298;
      }

      v300 = v297.i64[0] + v278;
      v301 = v299 | (v296.i64[1] << v300);
      if ((v300 & 0x3F) + v297.i64[1] >= 0x40)
      {
        *(v272 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
        v301 = v296.i64[1] >> -(v300 & 0x3F);
        if ((v300 & 0x3F) == 0)
        {
          v301 = 0;
        }
      }

      v302 = vceqq_s32(v64, v467);
      v303 = v300 + v297.i64[1];
      v304.i64[0] = 0x800000008;
      v304.i64[1] = 0x800000008;
      v305 = vandq_s8(vextq_s8(vtstq_s32(v81, v304), 0, 0xCuLL), v64);
      v306.i64[0] = 0x1F0000001FLL;
      v306.i64[1] = 0x1F0000001FLL;
      v307.i64[0] = -1;
      v307.i64[1] = -1;
      v308 = vandq_s8(vshlq_u32(v307, vaddq_s32(v305, v306)), v466);
      v309.i64[0] = v308.u32[0];
      v309.i64[1] = v308.u32[1];
      v310 = v309;
      v309.i64[0] = v308.u32[2];
      v309.i64[1] = v308.u32[3];
      v311 = v309;
      v309.i64[0] = v305.u32[0];
      v309.i64[1] = v305.u32[1];
      v312 = v309;
      v313 = vzip1q_s64(0, v309);
      v309.i64[0] = v305.u32[2];
      v309.i64[1] = v305.u32[3];
      v314 = vpaddq_s64(vshlq_u64(v310, v313), vshlq_u64(v311, 0));
      v315 = vpaddq_s64(v312, v309);
      v316 = (v314.i64[0] << v303) | v301;
      if (v315.i64[0] + (v303 & 0x3F) >= 0x40)
      {
        *(v272 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
        v316 = v314.i64[0] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v316 = 0;
        }
      }

      v317 = vandq_s8(v466, v302);
      v318 = v315.i64[0] + v303;
      v319 = v316 | (v314.i64[1] << v318);
      if ((v318 & 0x3F) + v315.i64[1] >= 0x40)
      {
        *(v272 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
        v319 = v314.i64[1] >> -(v318 & 0x3F);
        if ((v318 & 0x3F) == 0)
        {
          v319 = 0;
        }
      }

      v320 = vaddq_s32(v317, v179);
      v321 = v318 + v315.i64[1];
      if (v65)
      {
        v319 |= v66 << v321;
        if ((v321 & 0x3F) >= 0x20)
        {
          *(v272 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
          v319 = v66 >> -(v321 & 0x3F);
        }

        v321 += 32;
      }

      v322 = vextq_s8(0, v467, 0xCuLL);
      v323.i64[0] = 0x1F0000001FLL;
      v323.i64[1] = 0x1F0000001FLL;
      v324.i64[0] = -1;
      v324.i64[1] = -1;
      v325 = vandq_s8(vshlq_u32(v324, vaddq_s32(v322, v323)), v320);
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
      v333 = (v331.i64[0] << v321) | v319;
      if (v332.i64[0] + (v321 & 0x3F) >= 0x40)
      {
        *(v272 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
        v333 = v331.i64[0] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v333 = 0;
        }
      }

      v334 = vceqq_s32(v64, v77);
      v335 = vaddq_s32(v180, v317);
      v336 = v332.i64[0] + v321;
      v337 = (v332.i64[0] + v321) & 0x3F;
      v338 = v333 | (v331.i64[1] << v336);
      if ((v336 & 0x3F) + v332.i64[1] >= 0x40)
      {
        *(v272 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v331.i64[1] >> -v337;
        if (!v337)
        {
          v338 = 0;
        }
      }

      v339 = vandq_s8(v466, v334);
      v340 = v336 + v332.i64[1];
      v341.i64[0] = 0x1F0000001FLL;
      v341.i64[1] = 0x1F0000001FLL;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
      v343 = vandq_s8(vshlq_u32(v342, vaddq_s32(v467, v341)), v335);
      v344.i64[0] = v343.u32[0];
      v344.i64[1] = v343.u32[1];
      v345 = v344;
      v344.i64[0] = v343.u32[2];
      v344.i64[1] = v343.u32[3];
      v346 = v344;
      v344.i64[0] = v467.u32[0];
      v344.i64[1] = v467.u32[1];
      v347 = v344;
      v344.i64[0] = v467.u32[2];
      v344.i64[1] = v467.u32[3];
      v348 = vpaddq_s64(vshlq_u64(v345, vzip1q_s64(0, v347)), vshlq_u64(v346, vzip1q_s64(0, v344)));
      v349 = vpaddq_s64(v347, v344);
      v350 = (v348.i64[0] << v340) | v338;
      if (v349.i64[0] + (v340 & 0x3F) >= 0x40)
      {
        *(v272 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
        v350 = v348.i64[0] >> -(v340 & 0x3F);
        if ((v340 & 0x3F) == 0)
        {
          v350 = 0;
        }
      }

      v351 = vaddq_s32(v178, v339);
      v352 = v349.i64[0] + v340;
      v353 = v350 | (v348.i64[1] << v352);
      if ((v352 & 0x3F) + v349.i64[1] >= 0x40)
      {
        *(v272 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v348.i64[1] >> -(v352 & 0x3F);
        if ((v352 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = v352 + v349.i64[1];
      v355.i64[0] = 0x1F0000001FLL;
      v355.i64[1] = 0x1F0000001FLL;
      v356.i64[0] = -1;
      v356.i64[1] = -1;
      v357 = vshlq_u32(v356, vaddq_s32(v77, v355));
      v358 = vandq_s8(v357, v351);
      v359.i64[0] = v358.u32[0];
      v359.i64[1] = v358.u32[1];
      v360 = v359;
      v359.i64[0] = v358.u32[2];
      v359.i64[1] = v358.u32[3];
      v361 = v359;
      v359.i64[0] = v77.u32[0];
      v359.i64[1] = v77.u32[1];
      v362 = v359;
      v359.i64[0] = v77.u32[2];
      v359.i64[1] = v77.u32[3];
      v363 = vzip1q_s64(0, v362);
      v364 = vzip1q_s64(0, v359);
      v365 = vpaddq_s64(vshlq_u64(v360, v363), vshlq_u64(v361, v364));
      v366 = vpaddq_s64(v362, v359);
      v367 = (v365.i64[0] << v354) | v353;
      if (v366.i64[0] + (v354 & 0x3F) >= 0x40)
      {
        *(v272 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        if ((v354 & 0x3F) != 0)
        {
          v367 = v365.i64[0] >> -(v354 & 0x3F);
        }

        else
        {
          v367 = 0;
        }
      }

      v368 = vceqq_s32(v64, v78);
      v369 = vaddq_s32(v177, v339);
      v370 = v366.i64[0] + v354;
      v371 = v367 | (v365.i64[1] << v370);
      if ((v370 & 0x3F) + v366.i64[1] >= 0x40)
      {
        *(v272 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        v371 = v365.i64[1] >> -(v370 & 0x3F);
        if ((v370 & 0x3F) == 0)
        {
          v371 = 0;
        }
      }

      v372 = vandq_s8(v466, v368);
      v373 = v370 + v366.i64[1];
      v374 = vandq_s8(v357, v369);
      v375.i64[0] = v374.u32[0];
      v375.i64[1] = v374.u32[1];
      v376 = v375;
      v375.i64[0] = v374.u32[2];
      v375.i64[1] = v374.u32[3];
      v377 = vpaddq_s64(vshlq_u64(v376, v363), vshlq_u64(v375, v364));
      v378 = (v377.i64[0] << v373) | v371;
      if (v366.i64[0] + (v373 & 0x3F) >= 0x40)
      {
        *(v272 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v377.i64[0] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = vaddq_s32(v20, v372);
      v380 = v366.i64[0] + v373;
      v381 = (v366.i64[0] + v373) & 0x3F;
      v382 = v378 | (v377.i64[1] << v380);
      if ((v380 & 0x3F) + v366.i64[1] >= 0x40)
      {
        *(v272 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v377.i64[1] >> -v381;
        if (!v381)
        {
          v382 = 0;
        }
      }

      v383 = v380 + v366.i64[1];
      v384.i64[0] = 0x1F0000001FLL;
      v384.i64[1] = 0x1F0000001FLL;
      v385.i64[0] = -1;
      v385.i64[1] = -1;
      v386 = vshlq_u32(v385, vaddq_s32(v78, v384));
      v387 = vandq_s8(v386, v379);
      v388.i64[0] = v387.u32[0];
      v388.i64[1] = v387.u32[1];
      v389 = v388;
      v388.i64[0] = v387.u32[2];
      v388.i64[1] = v387.u32[3];
      v390 = v388;
      v388.i64[0] = v78.u32[0];
      v388.i64[1] = v78.u32[1];
      v391 = v388;
      v388.i64[0] = v78.u32[2];
      v388.i64[1] = v78.u32[3];
      v392 = vzip1q_s64(0, v391);
      v393 = vzip1q_s64(0, v388);
      v394 = vpaddq_s64(vshlq_u64(v389, v392), vshlq_u64(v390, v393));
      v395 = vpaddq_s64(v391, v388);
      v396 = (v394.i64[0] << v383) | v382;
      if (v395.i64[0] + (v383 & 0x3F) >= 0x40)
      {
        *(v272 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        if ((v383 & 0x3F) != 0)
        {
          v396 = v394.i64[0] >> -(v383 & 0x3F);
        }

        else
        {
          v396 = 0;
        }
      }

      v397 = vceqq_s32(v64, v465);
      v398 = vaddq_s32(v21, v372);
      v399 = v395.i64[0] + v383;
      v400 = v396 | (v394.i64[1] << v399);
      if ((v399 & 0x3F) + v395.i64[1] >= 0x40)
      {
        *(v272 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
        v400 = v394.i64[1] >> -(v399 & 0x3F);
        if ((v399 & 0x3F) == 0)
        {
          v400 = 0;
        }
      }

      v401 = vandq_s8(v466, v397);
      v402 = v399 + v395.i64[1];
      v403 = vandq_s8(v386, v398);
      v404.i64[0] = v403.u32[0];
      v404.i64[1] = v403.u32[1];
      v405 = v404;
      v404.i64[0] = v403.u32[2];
      v404.i64[1] = v403.u32[3];
      v406 = vpaddq_s64(vshlq_u64(v405, v392), vshlq_u64(v404, v393));
      v407 = (v406.i64[0] << v402) | v400;
      if (v395.i64[0] + (v402 & 0x3F) >= 0x40)
      {
        *(v272 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
        v407 = v406.i64[0] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v407 = 0;
        }
      }

      v408 = vaddq_s32(v22, v401);
      v409 = v395.i64[0] + v402;
      v410 = (v395.i64[0] + v402) & 0x3F;
      v411 = v407 | (v406.i64[1] << v409);
      if ((v409 & 0x3F) + v395.i64[1] >= 0x40)
      {
        *(v272 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v411;
        v411 = v406.i64[1] >> -v410;
        if (!v410)
        {
          v411 = 0;
        }
      }

      v412 = v409 + v395.i64[1];
      v413.i64[0] = 0x1F0000001FLL;
      v413.i64[1] = 0x1F0000001FLL;
      v414.i64[0] = -1;
      v414.i64[1] = -1;
      v415 = vshlq_u32(v414, vaddq_s32(v465, v413));
      v416 = vandq_s8(v415, v408);
      v417.i64[0] = v416.u32[0];
      v417.i64[1] = v416.u32[1];
      v418 = v417;
      v417.i64[0] = v416.u32[2];
      v417.i64[1] = v416.u32[3];
      v419 = v417;
      v417.i64[0] = v465.u32[0];
      v417.i64[1] = v465.u32[1];
      v420 = v417;
      v417.i64[0] = v465.u32[2];
      v417.i64[1] = v465.u32[3];
      v421 = vzip1q_s64(0, v420);
      v422 = vzip1q_s64(0, v417);
      v423 = vpaddq_s64(vshlq_u64(v418, v421), vshlq_u64(v419, v422));
      v424 = vpaddq_s64(v420, v417);
      v425 = (v409 + v395.i64[1]) & 0x3F;
      v426 = (v423.i64[0] << (v409 + v395.i8[8])) | v411;
      if ((v424.i64[0] + v425) > 0x3F)
      {
        *(v272 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
        if (v425)
        {
          v426 = v423.i64[0] >> -v425;
        }

        else
        {
          v426 = 0;
        }
      }

      v427 = vaddq_s32(v464, v401);
      v428 = v424.i64[0] + v412;
      v429 = v426 | (v423.i64[1] << v428);
      if ((v428 & 0x3F) + v424.i64[1] >= 0x40)
      {
        *(v272 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
        v429 = v423.i64[1] >> -(v428 & 0x3F);
        if ((v428 & 0x3F) == 0)
        {
          v429 = 0;
        }
      }

      v430 = v428 + v424.i64[1];
      v431 = vandq_s8(v415, v427);
      v432.i64[0] = v431.u32[0];
      v432.i64[1] = v431.u32[1];
      v433 = v432;
      v432.i64[0] = v431.u32[2];
      v432.i64[1] = v431.u32[3];
      v434 = vpaddq_s64(vshlq_u64(v433, v421), vshlq_u64(v432, v422));
      v435 = (v434.i64[0] << v430) | v429;
      if (v424.i64[0] + (v430 & 0x3F) >= 0x40)
      {
        *(v272 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
        v435 = v434.i64[0] >> -(v430 & 0x3F);
        if ((v430 & 0x3F) == 0)
        {
          v435 = 0;
        }
      }

      v436 = v424.i64[0] + v430;
      v437 = (v424.i64[0] + v430) & 0x3F;
      v438 = v435 | (v434.i64[1] << (v424.i8[0] + v430));
      if ((v437 + v424.i64[1]) >= 0x40)
      {
        *(v272 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
        v438 = v434.i64[1] >> -v437;
        if (!v437)
        {
          v438 = 0;
        }
      }

      v439 = v436 + v424.i64[1];
      if ((v439 & 0x3F) != 0)
      {
        *(v272 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
      }

      result = (v439 - v273 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v64 = *MEMORY[0x29EDCA608];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  if (a6 && a5)
  {
    if (a5 > 3)
    {
      v19 = a5 & 0x7C;
      if (v19 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v21 = &v57 + 2 * (i & 0x7F);
          v22 = a3;
          v23 = a5;
          do
          {
            v65 = vld2q_f32(v22);
            v22 += 8;
            *(v21++ - 1) = v65;
            v23 -= 4;
          }

          while (v23);
          a3 += a4;
        }
      }

      else
      {
        v24 = 0;
        v25 = a5 - 4;
        v26 = a3;
        do
        {
          v27 = 32 * (v24 & 0x7F);
          v28 = (&v58 + v27);
          v29 = &v57 + v27;
          v30 = v26;
          v31 = a5 & 0x7C;
          do
          {
            v66 = vld2q_f32(v30);
            v30 += 8;
            *(v29 - 16) = v66;
            v29 += 16;
            v31 -= 4;
          }

          while (v31);
          v32 = (a3 + v24 * a4 + 8 * v19);
          v33 = v25;
          do
          {
            v34 = *v32;
            v35 = v32[1];
            v32 += 2;
            *(v28 - 4) = v34;
            *v28++ = v35;
            --v33;
          }

          while (v33);
          ++v24;
          v26 = (v26 + a4);
        }

        while (v24 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 12);
      do
      {
        v13 = v11 & 0xFE | 1;
        v14 = *(v12 - 2);
        *(&v56 + 4 * (v11 & 0xFE)) = *(v12 - 3);
        *(&v56 + 4 * v13) = v14;
        if (a5 != 1)
        {
          v15 = *v12;
          v16 = &v56 + (v11 & 0xFE);
          *(v16 + 1) = *(v12 - 1);
          v17 = &v56 + v13;
          *(v17 + 1) = v15;
          if (a5 != 2)
          {
            v18 = v12[2];
            *(v16 + 2) = v12[1];
            *(v17 + 2) = v18;
          }
        }

        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v36 = 2 * (a5 & 0x7F);
  v51.i64[0] = __PAIR64__(v57, v56);
  v51.i64[1] = __PAIR64__(DWORD1(v57), DWORD1(v56));
  v52 = v58;
  v53 = v59;
  if (v36 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2 * (a5 & 0x7F);
  }

  if (v36 >= 4)
  {
    v38 = v36 - 4;
  }

  else
  {
    v38 = 0;
  }

  v54 = DWORD1(v58);
  v55 = DWORD1(v59);
  if (a6 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = a6;
  }

  if (a6 >= 2)
  {
    v40 = a6 - 2;
  }

  else
  {
    v40 = 0;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v51, a7, v37, v39);
  v51.i64[0] = __PAIR64__(DWORD2(v57), DWORD2(v56));
  v51.i64[1] = __PAIR64__(HIDWORD(v57), HIDWORD(v56));
  v52 = DWORD2(v58);
  v53 = DWORD2(v59);
  v54 = HIDWORD(v58);
  v55 = HIDWORD(v59);
  if (a6 >= 4)
  {
    v42 = 2;
  }

  else
  {
    v42 = v40;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v51, a7, v37, v42);
  v51.i64[0] = __PAIR64__(v61, v60);
  v51.i64[1] = __PAIR64__(DWORD1(v61), DWORD1(v60));
  v52 = v62;
  v53 = v63;
  if (a5 >= 4)
  {
    v44 = 4;
  }

  else
  {
    v44 = v38;
  }

  v54 = DWORD1(v62);
  v55 = DWORD1(v63);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v51, a7, v44, v39);
  v51.i64[0] = __PAIR64__(DWORD2(v61), DWORD2(v60));
  v51.i64[1] = __PAIR64__(HIDWORD(v61), HIDWORD(v60));
  v52 = DWORD2(v62);
  v53 = DWORD2(v63);
  v54 = HIDWORD(v62);
  v55 = HIDWORD(v63);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v51, a7, v44, v42);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v43)
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

  *a2 = v49 | v47 | v41 | v48;
  return result;
}