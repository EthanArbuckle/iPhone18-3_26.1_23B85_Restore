unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v15 = a6;
  v16 = a5;
  v18 = a3;
  v20 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    *a4 = 0;
  }

  v21 = v16 - 8;
  if (v16 >= 9 && v15)
  {
    if (v15 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v15;
    }

    if (v21 >= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 1, v20 + 1, a2, v23, v22, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v24 = 4 * a2;
  v25 = v15 - 4;
  if (v16 && v15 >= 5)
  {
    if (v25 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v15 - 4;
    }

    if (v16 >= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 2, (v20 + v24), a2, v27, v26, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v15 >= 5)
  {
    if (v25 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v15 - 4;
    }

    if (v21 >= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 3, (v20 + v24 + 8), a2, v29, v28, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    v30 = v15 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v30 = v15 - 8;
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v15 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v16 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v30 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v30;
  }

  if (v16 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v16;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 4, &v20[a2], a2, v32, v31, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  if (v16 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v35 = v15 - 12;
    if (!v16)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v15 < 9)
  {
    goto LABEL_57;
  }

  if (v30 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v30;
  }

  if (v21 >= 8)
  {
    v34 = 8;
  }

  else
  {
    v34 = v16 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 5, &v20[a2 + 1], a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  v35 = v15 - 12;
LABEL_58:
  if (v15 >= 0xD)
  {
    if (v35 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v35;
    }

    if (v16 >= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 6, (v20 + 12 * a2), a2, v37, v36, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v16 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v15 < 0xD)
  {
    goto LABEL_78;
  }

  if (v35 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = v35;
  }

  if (v21 >= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v16 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v18, a4 + 7, (v20 + 12 * a2 + 8), a2, v39, v38, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(int8x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4, double a5, int8x8_t a6)
{
  v9 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 16, a2, *a3, a4, a5, a6);
  v12 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1, 16, v9, a3[1], a4, v10, v11);
  v15 = v12 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 8, 16, v12, a3[2], a4, v13, v14);
  v18 = v15 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 9, 16, v15, a3[3], a4, v16, v17);
  v21 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 16, v18, a3[4], a4, v19, v20);
  v24 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 17, 16, v21, a3[5], a4, v22, v23);
  v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 24, 16, v24, a3[6], a4, v25, v26);
  v30 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 25, 16, v24 + v27, v30, a4, v28, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(int8x8_t *a1, uint64_t a2, int8x8_t *a3, unsigned int a4, double a5, int8x8_t a6)
{
  switch(a4)
  {
    case 0x60u:
      v16 = vdup_lane_s8(*a3, 0);
      *a1 = v16;
      *(a1 + a2) = v16;
      *(a1 + 2 * a2) = v16;
      *(a1 + 3 * a2) = v16;
      return 1;
    case 0x1Fu:
      v11 = *a3;
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      *a1 = vuzp1_s16(*a3, v13);
      *(a1 + a2) = vuzp2_s16(v11, v13);
      v15 = (a1 + 2 * a2);
      *v15 = vuzp1_s16(v12, v14);
      *(v15 + a2) = vuzp2_s16(v12, v14);
      return 32;
    case 0u:
      *a1 = 0;
      *(a1 + a2) = 0;
      *(a1 + 2 * a2) = 0;
      *(a1 + 3 * a2) = 0;
      return 0;
  }

  v209[1] = v9;
  v209[2] = v8;
  v209[3] = v7;
  v209[4] = v6;
  v17 = 8 * (a3 & 7);
  v18 = a3 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 12;
  v20 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v17;
  if (v17 >= 0x35)
  {
    v20 |= *(v18 + 8) << (-8 * (a3 & 7u));
  }

  v21 = (8 * (a3 & 7)) | 0x100;
  v22 = (a4 >> 5) | (8 * v20);
  v23 = vdupq_n_s8(v22 & 0xF);
  v24.i64[0] = 0x303030303030303;
  v24.i64[1] = 0x303030303030303;
  a6.i32[0] = v22 & 0xF;
  v25 = vand_s8(a6, 0x4000400040004);
  v26 = vandq_s8(v23, v24);
  v27 = vbicq_s8(vdupq_n_s8(((v20 >> 1) & 7) + 1), vceqq_s8(v26, v24));
  v24.i64[0] = 0x202020202020202;
  v24.i64[1] = 0x202020202020202;
  v28 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v25, 0)))), v24);
  if (vmaxvq_s8(v28) < 1)
  {
    v36 = 0;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v55 = v27;
    v54 = v27;
    v53 = v27;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v52 = v27;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
  }

  else
  {
    v29 = vmovl_u8(*&vpaddq_s8(v28, v28));
    v30 = vmovl_u16(*&vpaddq_s16(v29, v29));
    v31 = vpaddq_s32(v30, v30).u64[0];
    v32.i64[0] = v31;
    v32.i64[1] = HIDWORD(v31);
    v33 = v32;
    v34 = vaddvq_s64(v32);
    v35 = v34 <= 0x80 && v21 >= v34 + v19;
    v36 = !v35;
    v37 = 0uLL;
    if (v35)
    {
      v38 = vaddq_s64(vzip1q_s64(0, v33), vdupq_n_s64(v19 & 0x3C));
      v39 = (v18 + ((v19 >> 3) & 8));
      v37 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v39, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v38)), vshlq_u64(vdupq_lane_s64(v39->i64[0], 0), vnegq_s64(v38)));
      if (v34 + (v19 & 0x3C) >= 0x81)
      {
        v37 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v39[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v38)), vshlq_u64(vdupq_laneq_s64(v39[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v38))), v37);
      }

      v19 += v34;
    }

    v40 = vzip1_s32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    v41.i64[0] = v40.u32[0];
    v41.i64[1] = v40.u32[1];
    v42 = vshlq_u64(v37, vnegq_s64(v41));
    v43 = vuzp1q_s32(vzip1q_s64(v37, v42), vzip2q_s64(v37, v42));
    v44 = vshlq_u32(v43, vnegq_s32((*&v29 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v45 = vuzp1q_s16(vzip1q_s32(v43, v44), vzip2q_s32(v43, v44));
    v46 = vzip1q_s16(v45, vshlq_u16(v45, vnegq_s16(vmovl_u8(vuzp1_s8(*v28.i8, *v23.i8)))));
    *v46.i8 = vmovn_s16(v46);
    v43.i64[0] = 0x101010101010101;
    v43.i64[1] = 0x101010101010101;
    v47 = vshlq_s8(v43, v28);
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v47.i64[0] = vandq_s8(vaddq_s8(v47, v43), v46).u64[0];
    v48 = vdupq_lane_s8(*v47.i8, 0);
    v49 = vdupq_lane_s8(*v47.i8, 1);
    v50 = vdupq_lane_s8(*v47.i8, 2);
    v51 = vdupq_lane_s8(*v47.i8, 3);
    v52 = vsubq_s8(v27, v48);
    v53 = vsubq_s8(v27, v49);
    v54 = vsubq_s8(v27, v50);
    v55 = vsubq_s8(v27, v51);
    v56 = vceqzq_s8(v48);
    v57 = vceqzq_s8(v49);
    v58 = vceqzq_s8(v50);
    v59 = vceqzq_s8(v51);
  }

  v60.i64[0] = 0x707070707070707;
  v60.i64[1] = 0x707070707070707;
  v61 = 0uLL;
  v62 = vandq_s8(vextq_s8(vcgtq_u8(v23, v60), 0, 0xFuLL), v27);
  v63 = vmovl_u8(*&vpaddq_s8(v62, v62));
  v64 = vmovl_u16(*&vpaddq_s16(v63, v63));
  v65 = vpaddq_s32(v64, v64).u64[0];
  v66.i64[0] = v65;
  v66.i64[1] = HIDWORD(v65);
  v67 = v66;
  v68 = vaddvq_s64(v66);
  v69 = v68 + v19;
  if (v68 <= 0x80 && v21 >= v69)
  {
    v71 = v19 & 0x3F;
    v72 = vaddq_s64(vzip1q_s64(0, v67), vdupq_n_s64(v71));
    v73 = (v18 + 8 * (v19 >> 6));
    v61 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
    if (v68 + v71 >= 0x81)
    {
      v61 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v61);
    }

    v19 = v69;
  }

  else
  {
    v36 = 1;
  }

  v74 = vandq_s8(v52, xmmword_29D2F0D40);
  v75 = (a4 >> 5) & 3;
  if (v75 == 2)
  {
    v76 = v19 + 4;
    if (v21 >= v19 + 4)
    {
      v82 = (v18 + 8 * (v19 >> 6));
      v83 = *v82 >> v19;
      if ((v19 & 0x3F) >= 0x3D)
      {
        v83 |= v82[1] << -(v19 & 0x3F);
      }

      v77 = (v83 << 28) >> 28;
      v81 = v19 + 8;
      if (v21 >= v19 + 8)
      {
        v78 = (v18 + 8 * (v76 >> 6));
        v79 = *v78 >> v76;
        if ((v76 & 0x3F) >= 0x3D)
        {
          v79 |= v78[1] << -(v76 & 0x3F);
        }

        v80 = (v79 << 28) >> 28;
        goto LABEL_42;
      }
    }

    else
    {
      v77 = 0;
      v76 = v19;
    }

    v80 = 0;
    v36 = 1;
    v81 = v76;
  }

  else
  {
    v80 = 0;
    v77 = 0;
    v81 = v19;
  }

LABEL_42:
  v84 = vandq_s8(v53, xmmword_29D2F0D50);
  v74.i8[0] = 0;
  v85 = vmovl_u8(*&vpaddq_s8(v74, v74));
  v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v90 + v81;
  v92 = 0uLL;
  if (v90 <= 0x80 && v21 >= v91)
  {
    v95 = v81 & 0x3F;
    v96 = vaddq_s64(vzip1q_s64(0, v89), vdupq_n_s64(v95));
    v97 = (v18 + 8 * (v81 >> 6));
    v94 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v96)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v96)));
    if (v90 + v95 >= 0x81)
    {
      v94 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v96)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v96))), v94);
    }

    v81 = v91;
  }

  else
  {
    v36 = 1;
    v94 = 0uLL;
  }

  v98 = vandq_s8(v54, xmmword_29D2F0D50);
  v99 = vmovl_u8(*&vpaddq_s8(v84, v84));
  v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  if (v104 >= 0x81)
  {
    v36 = 1;
  }

  else
  {
    v105 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v106.i64[0] = v105.u32[0];
    v106.i64[1] = v105.u32[1];
    v107 = v106;
    v108 = *&v99 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v109 = v104 + v81;
    if (v21 >= v104 + v81)
    {
      v110 = v81 & 0x3F;
      v111 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v110));
      v112 = (v18 + 8 * (v81 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
      if (v104 + v110 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v92);
      }

      v81 = v109;
    }

    else
    {
      v36 = 1;
    }

    v113 = vshlq_u64(v92, vnegq_s64(v107));
    v114 = vuzp1q_s32(vzip1q_s64(v92, v113), vzip2q_s64(v92, v113));
    v115 = vshlq_u32(v114, vnegq_s32(v108));
    v116 = vuzp1q_s16(vzip1q_s32(v114, v115), vzip2q_s32(v114, v115));
    v117 = vshlq_u16(v116, vnegq_s16((*&v84 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v92 = vuzp1q_s8(vzip1q_s16(v116, v117), vzip2q_s16(v116, v117));
  }

  v118 = vandq_s8(v55, xmmword_29D2F0D50);
  v119 = vmovl_u8(*&vpaddq_s8(v98, v98));
  v120 = vmovl_u16(*&vpaddq_s16(v119, v119));
  v121 = vpaddq_s32(v120, v120).u64[0];
  v122.i64[0] = v121;
  v122.i64[1] = HIDWORD(v121);
  v123 = v122;
  v124 = vaddvq_s64(v122);
  if (v124 >= 0x81)
  {
    v36 = 1;
    v131 = 0uLL;
  }

  else
  {
    v125 = vzip1_s32(*v120.i8, *&vextq_s8(v120, v120, 8uLL));
    v126.i64[0] = v125.u32[0];
    v126.i64[1] = v125.u32[1];
    v127 = v126;
    v128 = *&v119 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v129 = v124 + v81;
    if (v21 >= v124 + v81)
    {
      v132 = v81 & 0x3F;
      v133 = vaddq_s64(vzip1q_s64(0, v123), vdupq_n_s64(v132));
      v134 = (v18 + 8 * (v81 >> 6));
      v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v133)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v133)));
      if (v124 + v132 >= 0x81)
      {
        v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v133)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v133))), v130);
      }

      v81 = v129;
    }

    else
    {
      v130 = 0uLL;
      v36 = 1;
    }

    v135 = vshlq_u64(v130, vnegq_s64(v127));
    v136 = vuzp1q_s32(vzip1q_s64(v130, v135), vzip2q_s64(v130, v135));
    v137 = vshlq_u32(v136, vnegq_s32(v128));
    v138 = vuzp1q_s16(vzip1q_s32(v136, v137), vzip2q_s32(v136, v137));
    v139 = vshlq_u16(v138, vnegq_s16((*&v98 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v131 = vuzp1q_s8(vzip1q_s16(v138, v139), vzip2q_s16(v138, v139));
  }

  v140 = vmovl_u8(*&vpaddq_s8(v118, v118));
  v141 = vmovl_u16(*&vpaddq_s16(v140, v140));
  v142 = vpaddq_s32(v141, v141).u64[0];
  v143.i64[0] = v142;
  v143.i64[1] = HIDWORD(v142);
  v144 = v143;
  v145 = vaddvq_s64(v143);
  if (v145 >= 0x81 || v21 < v145 + v81)
  {
    goto LABEL_72;
  }

  v146 = vaddq_s64(vzip1q_s64(0, v144), vdupq_n_s64(v81 & 0x3F));
  v147 = (v18 + 8 * (v81 >> 6));
  v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
  if (v145 + (v81 & 0x3F) >= 0x81)
  {
    v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
  }

  if ((v36 & 1) != 0 || (v149 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v149) - (v145 + v81) >= 9))
  {
LABEL_72:
    v149 = 0;
    v209[0] |= 255 << (8 * ((v209 + 7) & 7u));
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
  }

  else
  {
    v150 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
    v151 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
    v152.i64[0] = v150.u32[0];
    v152.i64[1] = v150.u32[1];
    v153 = v152;
    v152.i64[0] = v151.u32[0];
    v152.i64[1] = v151.u32[1];
    v154 = vshlq_u64(v61, vnegq_s64(v153));
    v155 = vshlq_u64(v94, vnegq_s64(v152));
    v156 = vuzp1q_s32(vzip1q_s64(v61, v154), vzip2q_s64(v61, v154));
    v157 = vuzp1q_s32(vzip1q_s64(v94, v155), vzip2q_s64(v94, v155));
    v158 = vshlq_u32(v156, vnegq_s32((*&v63 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v159 = vshlq_u32(v157, vnegq_s32((*&v85 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v160 = vuzp1q_s16(vzip1q_s32(v156, v158), vzip2q_s32(v156, v158));
    v161 = vuzp1q_s16(vzip1q_s32(v157, v159), vzip2q_s32(v157, v159));
    v162 = vshlq_u16(v160, vnegq_s16((*&v62 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v163 = vshlq_u16(v161, vnegq_s16((*&v74 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v164 = vzip2q_s16(v160, v162);
    v165 = vzip1q_s16(v160, v162);
    v162.i64[0] = 0x808080808080808;
    v162.i64[1] = 0x808080808080808;
    v166 = vzip2q_s16(v161, v163);
    v167 = vzip1q_s16(v161, v163);
    v163.i64[0] = 0x808080808080808;
    v163.i64[1] = 0x808080808080808;
    v168 = v20 >> 4;
    v169 = vuzp1q_s8(v165, v164);
    v164.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v164.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v170 = vuzp1q_s8(v167, v166);
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v155.i8 = vzip1_s32(*v141.i8, *&vextq_s8(v141, v141, 8uLL));
    v171.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v171.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v172.i64[0] = 0x808080808080808;
    v172.i64[1] = 0x808080808080808;
    v173 = vshlq_s8(v169, vsubq_s8(v162, v62));
    v174 = vaddq_s8(v74, v166);
    v175 = vshlq_s8(v170, vsubq_s8(v163, v74));
    v152.i64[0] = v155.u32[0];
    v152.i64[1] = v155.u32[1];
    v176 = vshlq_s8(v173, vaddq_s8(v62, v164));
    v177 = vshlq_s8(v175, v174);
    v178 = vshlq_s8(vshlq_s8(v92, vsubq_s8(v163, v84)), vaddq_s8(v84, v166));
    v179 = vshlq_s8(vshlq_s8(v131, vsubq_s8(v163, v98)), vaddq_s8(v98, v166));
    v180 = vshlq_u64(v148, vnegq_s64(v152));
    v181 = vuzp1q_s32(vzip1q_s64(v148, v180), vzip2q_s64(v148, v180));
    v182 = vshlq_u32(v181, vnegq_s32((*&v140 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v183 = vuzp1q_s16(vzip1q_s32(v181, v182), vzip2q_s32(v181, v182));
    v184 = vshlq_u16(v183, vnegq_s16((*&v118 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v185 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v183, v184), vzip2q_s16(v183, v184)), vsubq_s8(v172, v118)), vaddq_s8(v118, v171));
    if (v75 == 2)
    {
      v186.i64[0] = 0xFFFF0000FFFF0000;
      v186.i64[1] = 0xFFFF0000FFFF0000;
      v187 = vmlaq_s8(vandq_s8(vdupq_n_s8(v80), v186), vdupq_n_s8(v77), xmmword_29D2F0D60);
      v177 = vaddq_s8(v177, v187);
      v178 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v80), v187), v178);
      v179 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v77), v187), v179);
      v185 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v77 + 2 * v80), v187), v185);
    }

    v188 = vdupq_n_s8(v168).u64[0];
    v189 = vaddq_s8(vandq_s8(v176, v56), v177);
    v190 = vdupq_lane_s8(*v176.i8, 0);
    v191 = vsubq_s8(v189, vandq_s8(v190, v56));
    v192 = vsubq_s8(v178, vandq_s8(v190, v57));
    v193 = vsubq_s8(v179, vandq_s8(v190, v58));
    v194 = vsubq_s8(v185, vandq_s8(v190, v59));
    v195.i64[0] = 0x101010101010101;
    v195.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v26, v195)))
    {
      v196 = vandq_s8(v23, v195);
      v197 = vnegq_s8(v196);
      v198 = v191;
      v198.i8[0] = v191.i8[7];
      v198.i8[7] = v191.i8[0];
      v199 = vorrq_s8(vandq_s8(v198, v197), vandq_s8(v191, vceqzq_s8(v196)));
      v200 = vaddq_s8(v199, vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0D70), v197));
      v191.i64[0] = vaddq_s8(v200, vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0D80), v197)).u64[0];
      v201 = vaddq_s8(vandq_s8(vqtbl1q_s8(v192, xmmword_29D2F0D90), v197), v192);
      v192.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v201, xmmword_29D2F0DA0), v197), v201).u64[0];
      v202 = vaddq_s8(vandq_s8(vqtbl1q_s8(v193, xmmword_29D2F0DB0), v197), v193);
      v193.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v202, xmmword_29D2F0DC0), v197), v202).u64[0];
      v203 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0DD0), v197), v194);
      v194.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v203, xmmword_29D2F0DE0), v197), v203).u64[0];
    }

    v204 = vadd_s8(v188, *v191.i8);
    v205 = vadd_s8(*v193.i8, v188);
    *a1 = vuzp1_s16(v204, v205);
    *(a1 + a2) = vuzp2_s16(v204, v205);
    v206 = (a1 + 2 * a2);
    v207 = vadd_s8(*v192.i8, v188);
    v208 = vadd_s8(*v194.i8, v188);
    *v206 = vuzp1_s16(v207, v208);
    *(v206 + a2) = vuzp2_s16(v207, v208);
  }

  return v149;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 181) <= 0xFFFFFFFFFFFFFF37)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 24;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
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
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
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
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
      v314 = vpaddq_s16(v311, v312);
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
      v338 = vpaddq_s16(v335, v336);
      v339 = vmovl_u16(*v338.i8);
      v340 = vmovl_high_u16(v338);
      v341 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v339)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v340)));
      v342 = vpaddq_s32(v339, v340);
      v343.i64[0] = v341.u32[0];
      v343.i64[1] = v341.u32[1];
      v344 = v343;
      v343.i64[0] = v341.u32[2];
      v343.i64[1] = v341.u32[3];
      v345 = v343;
      v343.i64[0] = v342.u32[0];
      v343.i64[1] = v342.u32[1];
      v346 = v343;
      v343.i64[0] = v342.u32[2];
      v343.i64[1] = v342.u32[3];
      v347 = vpaddq_s64(vshlq_u64(v344, vzip1q_s64(0, v346)), vshlq_u64(v345, vzip1q_s64(0, v343)));
      v348 = vpaddq_s64(v346, v343);
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v68 = *MEMORY[0x29EDCA608];
  v66 = 0u;
  v67 = 0u;
  v10 = a6;
  if (a5 <= 1)
  {
    v11 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v11 = a6 & 0xE0;
      v34 = (a3 + 16);
      v35 = &v67;
      v36 = v11;
      do
      {
        v37 = *v34;
        *(v35 - 1) = *(v34 - 1);
        *v35 = v37;
        v34 += 2;
        v35 += 2;
        v36 -= 32;
      }

      while (v36);
      if (v11 == a6)
      {
        goto LABEL_28;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_23:
        v38 = v11;
        v11 = a6 & 0xF8;
        v39 = (a3 + v38);
        v40 = (&v66 + v38);
        v41 = v38 - v11;
        do
        {
          v42 = *v39++;
          *v40++ = v42;
          v41 += 8;
        }

        while (v41);
        if (v11 == a6)
        {
          goto LABEL_28;
        }
      }
    }

    v43 = a6 - v11;
    v44 = &v66 + v11;
    v45 = (a3 + v11 * a4);
    do
    {
      *v44++ = *v45;
      v45 += a4;
      --v43;
    }

    while (v43);
    goto LABEL_28;
  }

  v12 = a5 & 0x7E;
  if (a5 == v12)
  {
    v13 = 0;
    v14 = &v66 + 4;
    v15 = (a3 + 1);
    do
    {
      v16 = v15;
      v17 = v14;
      v18 = a5;
      do
      {
        v19 = *(v16 - 1);
        v20 = *v16;
        v16 += 2;
        *(v17 - 4) = v19;
        *v17 = v20;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      ++v13;
      ++v14;
      v15 += a4;
    }

    while (v13 != a6);
  }

  else
  {
    v21 = 0;
    v22 = &v66 + 4;
    v23 = (a3 + 1);
    v24 = &v66 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v25 = v23;
      v26 = v22;
      v27 = a5 & 0x7E;
      do
      {
        v28 = *(v25 - 1);
        v29 = *v25;
        v25 += 2;
        *(v26 - 4) = v28;
        *v26 = v29;
        v26 += 8;
        v27 -= 2;
      }

      while (v27);
      v30 = (a3 + v21 * a4 + v12);
      v31 = v24;
      v32 = a5 - v12;
      do
      {
        v33 = *v30++;
        *v31 = v33;
        v31 += 4;
        --v32;
      }

      while (v32);
      ++v21;
      ++v22;
      v23 += a4;
      ++v24;
    }

    while (v21 != v10);
  }

LABEL_28:
  v61.i32[0] = v66;
  v61.i32[1] = BYTE4(v66);
  v61.i32[2] = BYTE1(v66);
  v61.i32[3] = BYTE5(v66);
  v62 = BYTE8(v66);
  v63 = BYTE12(v66);
  if (a5 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = a5;
  }

  if (a5 >= 4)
  {
    v47 = a5 - 4;
  }

  else
  {
    v47 = 0;
  }

  v64 = BYTE9(v66);
  v65 = BYTE13(v66);
  if (a6 >= 2)
  {
    v48 = 2;
  }

  else
  {
    v48 = a6;
  }

  if (a6 >= 2)
  {
    v49 = a6 - 2;
  }

  else
  {
    v49 = 0;
  }

  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v61, a7, v46, v48);
  v61.i32[0] = BYTE2(v66);
  v61.i32[1] = BYTE6(v66);
  v61.i32[2] = BYTE3(v66);
  v61.i32[3] = BYTE7(v66);
  v62 = BYTE10(v66);
  v63 = BYTE14(v66);
  v64 = BYTE11(v66);
  v65 = HIBYTE(v66);
  if (a6 >= 4)
  {
    v52 = 2;
  }

  else
  {
    v52 = v49;
  }

  v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 6, &v61, a7, v46, v52);
  v61.i32[0] = v67;
  v61.i32[1] = BYTE4(v67);
  v61.i32[2] = BYTE1(v67);
  v61.i32[3] = BYTE5(v67);
  v62 = BYTE8(v67);
  v63 = BYTE12(v67);
  if (a5 >= 8)
  {
    v54 = 4;
  }

  else
  {
    v54 = v47;
  }

  v64 = BYTE9(v67);
  v65 = BYTE13(v67);
  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 12, &v61, a7, v54, v48);
  v61.i32[0] = BYTE2(v67);
  v61.i32[1] = BYTE6(v67);
  v61.i32[2] = BYTE3(v67);
  v61.i32[3] = BYTE7(v67);
  v62 = BYTE10(v67);
  v63 = BYTE14(v67);
  v64 = BYTE11(v67);
  v65 = HIBYTE(v67);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 18, &v61, a7, v54, v52);
  if (v55)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if (v53)
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

  *a2 = v59 | v57 | v51 | v58;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 149) <= 0xFFFFFFFFFFFFFF57)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 20;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
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
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
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
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
      v314 = vpaddq_s16(v311, v312);
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
      v338 = vpaddq_s16(v335, v336);
      v339 = vmovl_u16(*v338.i8);
      v340 = vmovl_high_u16(v338);
      v341 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v339)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v340)));
      v342 = vpaddq_s32(v339, v340);
      v343.i64[0] = v341.u32[0];
      v343.i64[1] = v341.u32[1];
      v344 = v343;
      v343.i64[0] = v341.u32[2];
      v343.i64[1] = v341.u32[3];
      v345 = v343;
      v343.i64[0] = v342.u32[0];
      v343.i64[1] = v342.u32[1];
      v346 = v343;
      v343.i64[0] = v342.u32[2];
      v343.i64[1] = v342.u32[3];
      v347 = vpaddq_s64(vshlq_u64(v344, vzip1q_s64(0, v346)), vshlq_u64(v345, vzip1q_s64(0, v343)));
      v348 = vpaddq_s64(v346, v343);
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v68 = *MEMORY[0x29EDCA608];
  v66 = 0u;
  v67 = 0u;
  v10 = a6;
  if (a5 <= 1)
  {
    v11 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v11 = a6 & 0xE0;
      v34 = (a3 + 16);
      v35 = &v67;
      v36 = v11;
      do
      {
        v37 = *v34;
        *(v35 - 1) = *(v34 - 1);
        *v35 = v37;
        v34 += 2;
        v35 += 2;
        v36 -= 32;
      }

      while (v36);
      if (v11 == a6)
      {
        goto LABEL_28;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_23:
        v38 = v11;
        v11 = a6 & 0xF8;
        v39 = (a3 + v38);
        v40 = (&v66 + v38);
        v41 = v38 - v11;
        do
        {
          v42 = *v39++;
          *v40++ = v42;
          v41 += 8;
        }

        while (v41);
        if (v11 == a6)
        {
          goto LABEL_28;
        }
      }
    }

    v43 = a6 - v11;
    v44 = &v66 + v11;
    v45 = (a3 + v11 * a4);
    do
    {
      *v44++ = *v45;
      v45 += a4;
      --v43;
    }

    while (v43);
    goto LABEL_28;
  }

  v12 = a5 & 0x7E;
  if (a5 == v12)
  {
    v13 = 0;
    v14 = &v66 + 4;
    v15 = (a3 + 1);
    do
    {
      v16 = v15;
      v17 = v14;
      v18 = a5;
      do
      {
        v19 = *(v16 - 1);
        v20 = *v16;
        v16 += 2;
        *(v17 - 4) = v19;
        *v17 = v20;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      ++v13;
      ++v14;
      v15 += a4;
    }

    while (v13 != a6);
  }

  else
  {
    v21 = 0;
    v22 = &v66 + 4;
    v23 = (a3 + 1);
    v24 = &v66 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v25 = v23;
      v26 = v22;
      v27 = a5 & 0x7E;
      do
      {
        v28 = *(v25 - 1);
        v29 = *v25;
        v25 += 2;
        *(v26 - 4) = v28;
        *v26 = v29;
        v26 += 8;
        v27 -= 2;
      }

      while (v27);
      v30 = (a3 + v21 * a4 + v12);
      v31 = v24;
      v32 = a5 - v12;
      do
      {
        v33 = *v30++;
        *v31 = v33;
        v31 += 4;
        --v32;
      }

      while (v32);
      ++v21;
      ++v22;
      v23 += a4;
      ++v24;
    }

    while (v21 != v10);
  }

LABEL_28:
  v61.i32[0] = v66;
  v61.i32[1] = BYTE4(v66);
  v61.i32[2] = BYTE1(v66);
  v61.i32[3] = BYTE5(v66);
  v62 = BYTE8(v66);
  v63 = BYTE12(v66);
  if (a5 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = a5;
  }

  if (a5 >= 4)
  {
    v47 = a5 - 4;
  }

  else
  {
    v47 = 0;
  }

  v64 = BYTE9(v66);
  v65 = BYTE13(v66);
  if (a6 >= 2)
  {
    v48 = 2;
  }

  else
  {
    v48 = a6;
  }

  if (a6 >= 2)
  {
    v49 = a6 - 2;
  }

  else
  {
    v49 = 0;
  }

  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v61, a7, v46, v48);
  v61.i32[0] = BYTE2(v66);
  v61.i32[1] = BYTE6(v66);
  v61.i32[2] = BYTE3(v66);
  v61.i32[3] = BYTE7(v66);
  v62 = BYTE10(v66);
  v63 = BYTE14(v66);
  v64 = BYTE11(v66);
  v65 = HIBYTE(v66);
  if (a6 >= 4)
  {
    v52 = 2;
  }

  else
  {
    v52 = v49;
  }

  v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 5, &v61, a7, v46, v52);
  v61.i32[0] = v67;
  v61.i32[1] = BYTE4(v67);
  v61.i32[2] = BYTE1(v67);
  v61.i32[3] = BYTE5(v67);
  v62 = BYTE8(v67);
  v63 = BYTE12(v67);
  if (a5 >= 8)
  {
    v54 = 4;
  }

  else
  {
    v54 = v47;
  }

  v64 = BYTE9(v67);
  v65 = BYTE13(v67);
  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 10, &v61, a7, v54, v48);
  v61.i32[0] = BYTE2(v67);
  v61.i32[1] = BYTE6(v67);
  v61.i32[2] = BYTE3(v67);
  v61.i32[3] = BYTE7(v67);
  v62 = BYTE10(v67);
  v63 = BYTE14(v67);
  v64 = BYTE11(v67);
  v65 = HIBYTE(v67);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 15, &v61, a7, v54, v52);
  if (v55)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if (v53)
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

  *a2 = v59 | v57 | v51 | v58;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
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
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
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
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
      v314 = vpaddq_s16(v311, v312);
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
      v338 = vpaddq_s16(v335, v336);
      v339 = vmovl_u16(*v338.i8);
      v340 = vmovl_high_u16(v338);
      v341 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v339)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v340)));
      v342 = vpaddq_s32(v339, v340);
      v343.i64[0] = v341.u32[0];
      v343.i64[1] = v341.u32[1];
      v344 = v343;
      v343.i64[0] = v341.u32[2];
      v343.i64[1] = v341.u32[3];
      v345 = v343;
      v343.i64[0] = v342.u32[0];
      v343.i64[1] = v342.u32[1];
      v346 = v343;
      v343.i64[0] = v342.u32[2];
      v343.i64[1] = v342.u32[3];
      v347 = vpaddq_s64(vshlq_u64(v344, vzip1q_s64(0, v346)), vshlq_u64(v345, vzip1q_s64(0, v343)));
      v348 = vpaddq_s64(v346, v343);
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v68 = *MEMORY[0x29EDCA608];
  v66 = 0u;
  v67 = 0u;
  v10 = a6;
  if (a5 <= 1)
  {
    v11 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v11 = 0;
        goto LABEL_23;
      }

      v11 = a6 & 0xE0;
      v34 = (a3 + 16);
      v35 = &v67;
      v36 = v11;
      do
      {
        v37 = *v34;
        *(v35 - 1) = *(v34 - 1);
        *v35 = v37;
        v34 += 2;
        v35 += 2;
        v36 -= 32;
      }

      while (v36);
      if (v11 == a6)
      {
        goto LABEL_28;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_23:
        v38 = v11;
        v11 = a6 & 0xF8;
        v39 = (a3 + v38);
        v40 = (&v66 + v38);
        v41 = v38 - v11;
        do
        {
          v42 = *v39++;
          *v40++ = v42;
          v41 += 8;
        }

        while (v41);
        if (v11 == a6)
        {
          goto LABEL_28;
        }
      }
    }

    v43 = a6 - v11;
    v44 = &v66 + v11;
    v45 = (a3 + v11 * a4);
    do
    {
      *v44++ = *v45;
      v45 += a4;
      --v43;
    }

    while (v43);
    goto LABEL_28;
  }

  v12 = a5 & 0x7E;
  if (a5 == v12)
  {
    v13 = 0;
    v14 = &v66 + 4;
    v15 = (a3 + 1);
    do
    {
      v16 = v15;
      v17 = v14;
      v18 = a5;
      do
      {
        v19 = *(v16 - 1);
        v20 = *v16;
        v16 += 2;
        *(v17 - 4) = v19;
        *v17 = v20;
        v17 += 8;
        v18 -= 2;
      }

      while (v18);
      ++v13;
      ++v14;
      v15 += a4;
    }

    while (v13 != a6);
  }

  else
  {
    v21 = 0;
    v22 = &v66 + 4;
    v23 = (a3 + 1);
    v24 = &v66 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v25 = v23;
      v26 = v22;
      v27 = a5 & 0x7E;
      do
      {
        v28 = *(v25 - 1);
        v29 = *v25;
        v25 += 2;
        *(v26 - 4) = v28;
        *v26 = v29;
        v26 += 8;
        v27 -= 2;
      }

      while (v27);
      v30 = (a3 + v21 * a4 + v12);
      v31 = v24;
      v32 = a5 - v12;
      do
      {
        v33 = *v30++;
        *v31 = v33;
        v31 += 4;
        --v32;
      }

      while (v32);
      ++v21;
      ++v22;
      v23 += a4;
      ++v24;
    }

    while (v21 != v10);
  }

LABEL_28:
  v61.i32[0] = v66;
  v61.i32[1] = BYTE4(v66);
  v61.i32[2] = BYTE1(v66);
  v61.i32[3] = BYTE5(v66);
  v62 = BYTE8(v66);
  v63 = BYTE12(v66);
  if (a5 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = a5;
  }

  if (a5 >= 4)
  {
    v47 = a5 - 4;
  }

  else
  {
    v47 = 0;
  }

  v64 = BYTE9(v66);
  v65 = BYTE13(v66);
  if (a6 >= 2)
  {
    v48 = 2;
  }

  else
  {
    v48 = a6;
  }

  if (a6 >= 2)
  {
    v49 = a6 - 2;
  }

  else
  {
    v49 = 0;
  }

  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v61, a7, v46, v48);
  v61.i32[0] = BYTE2(v66);
  v61.i32[1] = BYTE6(v66);
  v61.i32[2] = BYTE3(v66);
  v61.i32[3] = BYTE7(v66);
  v62 = BYTE10(v66);
  v63 = BYTE14(v66);
  v64 = BYTE11(v66);
  v65 = HIBYTE(v66);
  if (a6 >= 4)
  {
    v52 = 2;
  }

  else
  {
    v52 = v49;
  }

  v53 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 4, &v61, a7, v46, v52);
  v61.i32[0] = v67;
  v61.i32[1] = BYTE4(v67);
  v61.i32[2] = BYTE1(v67);
  v61.i32[3] = BYTE5(v67);
  v62 = BYTE8(v67);
  v63 = BYTE12(v67);
  if (a5 >= 8)
  {
    v54 = 4;
  }

  else
  {
    v54 = v47;
  }

  v64 = BYTE9(v67);
  v65 = BYTE13(v67);
  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v61, a7, v54, v48);
  v61.i32[0] = BYTE2(v67);
  v61.i32[1] = BYTE6(v67);
  v61.i32[2] = BYTE3(v67);
  v61.i32[3] = BYTE7(v67);
  v62 = BYTE10(v67);
  v63 = BYTE14(v67);
  v64 = BYTE11(v67);
  v65 = HIBYTE(v67);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v61, a7, v54, v52);
  if (v55)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if (v53)
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

  *a2 = v59 | v57 | v51 | v58;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, double a6, int8x8_t a7)
{
  v13 = 8 * (a3 & 7);
  v14 = a3 & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 + 14;
  v16 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v13;
  if (v13 >= 0x33)
  {
    v16 |= *(v14 + 8) << (-8 * (a3 & 7u));
  }

  v17 = 4 * v16;
  v18 = vdup_n_s32(v17);
  a5.i32[0] = v17;
  a7.i32[0] = a4 >> 6;
  v19.i32[0] = vorr_s8(a5, a7).u32[0];
  v19.i32[1] = vshr_n_u32(v18, 5uLL).i32[1];
  v20 = vadd_s32(vand_s8(vshl_u32(v18, 0xFFFFFFF3FFFFFFF6), 0x700000007), 0x100000001);
  v21 = v13 + 30;
  v22 = v15 & 0x3E;
  v23 = (v14 + ((v15 >> 3) & 8));
  v24 = *v23 >> v22;
  if (v22 >= 0x31)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = (8 * (a3 & 7)) | 0x200;
  v19.i8[1] = v19.i8[4];
  v26 = vdupq_lane_s16(vand_s8(v19, 0x1F1F1F1F1F1F1F1FLL), 0);
  v20.i8[1] = v20.i8[4];
  v27 = vdupq_lane_s16(v20, 0);
  v28.i64[0] = 0x303030303030303;
  v28.i64[1] = 0x303030303030303;
  v29 = vandq_s8(v26, v28);
  v30 = vbicq_s8(v27, vceqq_s8(v29, v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v31 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v26.i8), 0x4000400040004)))), v28);
  if (vmaxvq_s8(v31) < 1)
  {
    v40 = 0;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v60 = v30;
    v59 = v30;
    v58 = v30;
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v57 = v30;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
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
    v38 = v21 + v37;
    v39 = v37 <= 0x80 && v25 >= v38;
    v40 = !v39;
    v41 = 0uLL;
    if (v39)
    {
      v42 = v21 & 0x3E;
      v43 = vaddq_s64(vdupq_n_s64(v42), vzip1q_s64(0, v36));
      v44 = (v14 + ((v21 >> 3) & 8));
      v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v43)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v43)));
      if (v42 + v37 >= 0x81)
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
    v51 = vzip1q_s16(v50, vshlq_u16(v50, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v26.i8)))));
    *v51.i8 = vmovn_s16(v51);
    v48.i64[0] = 0x101010101010101;
    v48.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v48, v31);
    v48.i64[0] = -1;
    v48.i64[1] = -1;
    v52.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v48), v51), xmmword_29D2F0E50).u64[0];
    v53 = vdupq_lane_s16(*v52.i8, 0);
    v54 = vdupq_lane_s16(*v52.i8, 1);
    v55 = vdupq_lane_s16(*v52.i8, 2);
    v56 = vdupq_lane_s16(*v52.i8, 3);
    v57 = vsubq_s8(v30, v53);
    v58 = vsubq_s8(v30, v54);
    v59 = vsubq_s8(v30, v55);
    v60 = vsubq_s8(v30, v56);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
    v63 = vceqzq_s8(v55);
    v64 = vceqzq_s8(v56);
  }

  v65.i64[0] = 0x808080808080808;
  v65.i64[1] = 0x808080808080808;
  v66 = 0uLL;
  v67 = vandq_s8(vextq_s8(vtstq_s8(v26, v65), 0, 0xEuLL), v30);
  v68 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v69 = vmovl_u16(*&vpaddq_s16(v68, v68));
  v70 = vpaddq_s32(v69, v69).u64[0];
  v71.i64[0] = v70;
  v71.i64[1] = HIDWORD(v70);
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v21 + v73;
  if (v73 <= 0x80 && v25 >= v74)
  {
    v76 = v21 & 0x3F;
    v77 = vaddq_s64(vdupq_n_s64(v76), vzip1q_s64(0, v72));
    v78 = (v14 + 8 * (v21 >> 6));
    v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v77)));
    if (v76 + v73 >= 0x81)
    {
      v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v66);
    }

    v21 = v74;
  }

  else
  {
    v40 = 1;
  }

  v79 = v26.i8[0] & 3;
  if (v79 == 2)
  {
    v80 = v25 < v21 + 4;
    v81 = v21 + 8;
    if (v25 >= v21 + 4)
    {
      v21 += 4;
    }

    else
    {
      v81 = v21 + 4;
    }

    if (v25 < v81)
    {
      v82 = 1;
    }

    else
    {
      v21 = v81;
      v82 = v80;
    }

    v40 |= v82;
  }

  v83 = 0uLL;
  v84 = vextq_s8(0, v57, 0xEuLL);
  v85 = vmovl_u8(*&vpaddq_s8(v84, v84));
  v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v21 + v90;
  if (v90 <= 0x80 && v25 >= v91)
  {
    v94 = v21 & 0x3F;
    v95 = vaddq_s64(vdupq_n_s64(v94), vzip1q_s64(0, v89));
    v96 = (v14 + 8 * (v21 >> 6));
    v93 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v95)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v95)));
    if (v94 + v90 >= 0x81)
    {
      v93 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v95)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v95))), v93);
    }

    v21 = v91;
  }

  else
  {
    v40 = 1;
    v93 = 0uLL;
  }

  v231 = v12;
  v232 = v11;
  v233 = v10;
  v234 = v9;
  v235 = v8;
  v236 = v7;
  v97 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
  v99 = vpaddq_s32(v98, v98).u64[0];
  v100.i64[0] = v99;
  v100.i64[1] = HIDWORD(v99);
  v101 = v100;
  v102 = vaddvq_s64(v100);
  if (v102 >= 0x81)
  {
    v40 = 1;
  }

  else
  {
    v103 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
    v104.i64[0] = v103.u32[0];
    v104.i64[1] = v103.u32[1];
    v105 = v104;
    v106 = *&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v107 = v21 + v102;
    if (v25 >= v21 + v102)
    {
      v109 = v21 & 0x3F;
      v110 = vaddq_s64(vdupq_n_s64(v109), vzip1q_s64(0, v101));
      v111 = (v14 + 8 * (v21 >> 6));
      v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
      if (v109 + v102 >= 0x81)
      {
        v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
      }

      v21 = v107;
    }

    else
    {
      v108 = 0uLL;
      v40 = 1;
    }

    v112 = vshlq_u64(v108, vnegq_s64(v105));
    v113 = vuzp1q_s32(vzip1q_s64(v108, v112), vzip2q_s64(v108, v112));
    v114 = vshlq_u32(v113, vnegq_s32(v106));
    v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
    v116 = vshlq_u16(v115, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v83 = vuzp1q_s8(vzip1q_s16(v115, v116), vzip2q_s16(v115, v116));
  }

  v117 = vmovl_u8(*&vpaddq_s8(v59, v59));
  v118 = vmovl_u16(*&vpaddq_s16(v117, v117));
  v119 = vpaddq_s32(v118, v118).u64[0];
  v120.i64[0] = v119;
  v120.i64[1] = HIDWORD(v119);
  v121 = v120;
  v122 = vaddvq_s64(v120);
  v123 = v21 + v122;
  if (v122 <= 0x80 && v25 >= v123)
  {
    v126 = v21 & 0x3F;
    v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v121));
    v128 = (v14 + 8 * (v21 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v126 + v122 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v125);
    }

    v21 = v123;
  }

  else
  {
    v40 = 1;
    v125 = 0uLL;
  }

  v129 = vmovl_u8(*&vpaddq_s8(v60, v60));
  v130 = vmovl_u16(*&vpaddq_s16(v129, v129));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v21 + v134;
  if (v134 > 0x80 || v25 < v135)
  {
    goto LABEL_68;
  }

  v137 = vaddq_s64(vdupq_n_s64(v21 & 0x3F), vzip1q_s64(0, v133));
  v138 = (v14 + 8 * (v21 >> 6));
  v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
  if ((v21 & 0x3F) + v134 >= 0x81)
  {
    v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
  }

  if ((v40 & 1) != 0 || (v140 = (a4 & 0x3F) + 1, v25 + 8 * v140 - v135 - 512 >= 9))
  {
LABEL_68:
    v140 = 0;
    v141 = &v229;
LABEL_69:
    *(v141 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v141 & 7u));
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v142 = (a1->i64 + a2);
    v143 = (a1->i64 + 2 * a2);
    *v142 = 0;
    v142[1] = 0;
    v144 = (a1->i64 + 2 * a2 + a2);
    *v143 = 0;
    v143[1] = 0;
    *v144 = 0;
    v144[1] = 0;
    return v140;
  }

  if (v79 == 2)
  {
    v140 = 0;
    v141 = &v230;
    goto LABEL_69;
  }

  v146 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
  v147 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
  v148 = vzip1_s32(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
  v149.i64[0] = v146.u32[0];
  v149.i64[1] = v146.u32[1];
  v150 = v149;
  v149.i64[0] = v147.u32[0];
  v149.i64[1] = v147.u32[1];
  v151 = v149;
  v149.i64[0] = v148.u32[0];
  v149.i64[1] = v148.u32[1];
  v152 = vshlq_u64(v66, vnegq_s64(v150));
  v153 = vshlq_u64(v93, vnegq_s64(v151));
  v154 = vshlq_u64(v125, vnegq_s64(v149));
  v155 = vuzp1q_s32(vzip1q_s64(v66, v152), vzip2q_s64(v66, v152));
  v156 = vuzp1q_s32(vzip1q_s64(v93, v153), vzip2q_s64(v93, v153));
  v157 = vuzp1q_s32(vzip1q_s64(v125, v154), vzip2q_s64(v125, v154));
  v158 = vshlq_u32(v155, vnegq_s32((*&v68 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v159 = vshlq_u32(v156, vnegq_s32((*&v85 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v160 = vshlq_u32(v157, vnegq_s32((*&v117 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v161 = vzip2q_s32(v156, v159);
  v162 = vuzp1q_s16(vzip1q_s32(v155, v158), vzip2q_s32(v155, v158));
  v163 = vuzp1q_s16(vzip1q_s32(v156, v159), v161);
  v164 = vuzp1q_s16(vzip1q_s32(v157, v160), vzip2q_s32(v157, v160));
  v165 = vshlq_u16(v162, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v166 = vshlq_u16(v163, vnegq_s16((*&v84 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v167 = vshlq_u16(v164, vnegq_s16((*&v59 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v161.i32[0] = v24;
  v168 = vzip2q_s16(v162, v165);
  v169 = vzip1q_s16(v162, v165);
  v170 = vzip2q_s16(v163, v166);
  v171 = vzip1q_s16(v163, v166);
  v166.i64[0] = 0x808080808080808;
  v166.i64[1] = 0x808080808080808;
  v172 = vzip2q_s16(v164, v167);
  v173 = vzip1q_s16(v164, v167);
  v174 = vuzp1q_s8(v169, v168);
  v167.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v167.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v175 = vsubq_s8(v65, v67);
  v176 = vuzp1q_s8(v171, v170);
  v171.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v171.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v177 = vsubq_s8(v166, v84);
  v178 = vsubq_s8(v166, v58);
  v179 = vsubq_s8(v166, v59);
  v180 = vuzp1q_s8(v173, v172);
  v181 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
  v182.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v182.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v172.i64[0] = 0x808080808080808;
  v172.i64[1] = 0x808080808080808;
  v161.i8[1] = BYTE1(v24);
  v183 = vaddq_s8(v67, v167);
  v184 = vshlq_s8(v174, v175);
  v185 = vaddq_s8(v84, v171);
  v186 = vaddq_s8(v58, v171);
  v187 = vshlq_s8(v83, v178);
  v188 = vaddq_s8(v59, v171);
  v189 = vshlq_s8(v180, v179);
  v149.i64[0] = v181.u32[0];
  v149.i64[1] = v181.u32[1];
  v190 = *&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v191 = vaddq_s8(v60, v182);
  v192 = vsubq_s8(v172, v60);
  v193 = vdupq_lane_s16(*v161.i8, 0);
  v194 = vshlq_s8(v184, v183);
  v195 = vshlq_s8(vshlq_s8(v176, v177), v185);
  v196 = vshlq_u64(v139, vnegq_s64(v149));
  v197 = vuzp1q_s32(vzip1q_s64(v139, v196), vzip2q_s64(v139, v196));
  v198 = vshlq_u32(v197, vnegq_s32((*&v129 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v199 = vuzp1q_s16(vzip1q_s32(v197, v198), vzip2q_s32(v197, v198));
  v200 = vshlq_u16(v199, vnegq_s16(v190));
  v201 = vaddq_s8(vandq_s8(v194, v61), v195);
  v202 = vdupq_lane_s16(*v194.i8, 0);
  v203 = vsubq_s8(v201, vandq_s8(v61, v202));
  v204 = vsubq_s8(vshlq_s8(v187, v186), vandq_s8(v62, v202));
  v205 = vsubq_s8(vshlq_s8(v189, v188), vandq_s8(v63, v202));
  v206 = vandq_s8(v64, v202);
  v207.i64[0] = 0x101010101010101;
  v207.i64[1] = 0x101010101010101;
  v208 = vaddlvq_s8(vceqq_s8(v29, v207));
  v209 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v199, v200), vzip2q_s16(v199, v200)), v192), v191), v206);
  if (v208)
  {
    v210 = vandq_s8(v26, v207);
    v211 = vnegq_s8(v210);
    v212 = v203;
    v212.i16[0] = v203.i16[7];
    v212.i16[7] = v203.i16[0];
    v213 = vorrq_s8(vandq_s8(v212, v211), vandq_s8(v203, vceqzq_s8(v210)));
    v214 = vaddq_s8(v213, vandq_s8(vqtbl1q_s8(v213, xmmword_29D2F0E60), v211));
    v203 = vaddq_s8(v214, vandq_s8(vqtbl1q_s8(v214, xmmword_29D2F0E70), v211));
    v215 = vaddq_s8(vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E80), v211), v204);
    v204 = vaddq_s8(vandq_s8(vqtbl1q_s8(v215, xmmword_29D2F0E90), v211), v215);
    v216 = vaddq_s8(vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0EA0), v211), v205);
    v205 = vaddq_s8(vandq_s8(vqtbl1q_s8(v216, xmmword_29D2F0EB0), v211), v216);
    v217 = vaddq_s8(vandq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EC0), v211), v209);
    v209 = vaddq_s8(vandq_s8(vqtbl1q_s8(v217, xmmword_29D2F0ED0), v211), v217);
  }

  v218 = vaddq_s8(v203, v193);
  v219 = vaddq_s8(v204, v193);
  v220 = vaddq_s8(v205, v193);
  v221 = vaddq_s8(v209, v193);
  v222.i64[0] = 0x1010101010101010;
  v222.i64[1] = 0x1010101010101010;
  v223 = vceqzq_s8(vandq_s8(v26, v222));
  v224 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v218, xmmword_29D2F0EE0), v223), v218);
  v225 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v219, xmmword_29D2F0EE0), v223), v219);
  v226 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v220, xmmword_29D2F0EE0), v223), v220);
  v227 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v221, xmmword_29D2F0EE0), v223), v221);
  *a1 = vuzp1q_s32(v224, v226);
  *(a1 + a2) = vuzp2q_s32(v224, v226);
  v228 = (a1 + 2 * a2);
  *v228 = vuzp1q_s32(v225, v227);
  *(v228 + a2) = vuzp2q_s32(v225, v227);
  return v140;
}

float32x2x2_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(float32x2x2_t *result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = *result;
    v9 = *(result + a2);
    v10 = *(result + 2 * a2);
    v11 = *(result + v7 + a2);
    v12 = vzip2q_s32(*result, v9);
    v13 = a3;
    vst2_f32(v13, v8);
    v13 += 4;
    vst2_f32(v13, v10);
    *(a3 + 32) = v12;
    *(a3 + 48) = vzip2q_s32(v10, v11);
    a3 += 64;
    v6 = 63;
  }

  v14 = 0;
  *a4 = v6;
  if (a5 >= 9 && a6)
  {
    v15 = result[1];
    v16 = *(&result[1] + a2);
    v17 = (&result[1] + v7);
    v18 = *v17;
    v19 = *(v17 + a2);
    v20 = vzip2q_s32(*v17, v19);
    v21 = a3;
    vst2_f32(v21, v15);
    v21 += 4;
    vst2_f32(v21, v18);
    *(a3 + 32) = vzip2q_s32(v15, v16);
    *(a3 + 48) = v20;
    a3 += 64;
    v14 = 63;
  }

  v22 = 0;
  v23 = 4 * a2;
  a4[1] = v14;
  if (a5 && a6 >= 5)
  {
    v24 = *(result + 4 * a2);
    v25 = *(result + v23 + a2);
    v26 = (result + v23 + v7);
    v27 = *v26;
    v28 = *(v26 + a2);
    v29 = vzip2q_s32(*v26, v28);
    v30 = a3;
    vst2_f32(v30, v24);
    v30 += 4;
    vst2_f32(v30, v27);
    *(a3 + 32) = vzip2q_s32(v24, v25);
    *(a3 + 48) = v29;
    a3 += 64;
    v22 = 63;
  }

  v31 = 0;
  a4[2] = v22;
  if (a5 >= 9 && a6 >= 5)
  {
    v32 = (result + v23);
    v33 = v32[1];
    ++v32;
    v34 = v33.i64[0];
    v35 = *(v32 + a2);
    v36 = (v32 + v7);
    v37 = *v36;
    v38 = *(v36 + a2);
    v39 = vzip2q_s32(*v36, v38);
    v40 = a3;
    vst2_f32(v40, *&v34);
    v40 += 4;
    vst2_f32(v40, v37);
    *(a3 + 32) = vzip2q_s32(v33, v35);
    *(a3 + 48) = v39;
    a3 += 64;
    v31 = 63;
  }

  v41 = 0;
  a4[3] = v31;
  if (a5 && a6 >= 9)
  {
    v42 = (result + 8 * a2);
    v43 = *v42;
    v44 = *(v42 + a2);
    v45 = (v42 + v7);
    v46 = *v45;
    v47 = *(v45 + a2);
    v48 = vzip2q_s32(*v45, v47);
    v49 = a3;
    vst2_f32(v49, v43);
    v49 += 4;
    vst2_f32(v49, v46);
    *(a3 + 32) = vzip2q_s32(v43, v44);
    *(a3 + 48) = v48;
    a3 += 64;
    v41 = 63;
  }

  v50 = 0;
  a4[4] = v41;
  if (a5 >= 9 && a6 >= 9)
  {
    v51 = &result->val[a2];
    v52 = v51[1];
    ++v51;
    v53 = v52.i64[0];
    v54 = *(v51 + a2);
    v55 = (v51 + v7);
    v56 = *v55;
    v57 = *(v55 + a2);
    v58 = vzip2q_s32(*v55, v57);
    v59 = a3;
    vst2_f32(v59, *&v53);
    v59 += 4;
    vst2_f32(v59, v56);
    *(a3 + 32) = vzip2q_s32(v52, v54);
    *(a3 + 48) = v58;
    a3 += 64;
    v50 = 63;
  }

  v60 = 0;
  a4[5] = v50;
  if (a5 && a6 >= 0xD)
  {
    v61 = (result + 12 * a2);
    v62 = *v61;
    v63 = *(v61 + a2);
    v64 = (v61 + v7);
    v65 = *v64;
    v66 = *(v64 + a2);
    v67 = vzip2q_s32(*v64, v66);
    v68 = a3;
    vst2_f32(v68, v62);
    v68 += 4;
    vst2_f32(v68, v65);
    *(a3 + 32) = vzip2q_s32(v62, v63);
    *(a3 + 48) = v67;
    a3 += 64;
    v60 = 63;
  }

  v69 = 0;
  a4[6] = v60;
  if (a5 >= 9 && a6 >= 0xD)
  {
    v70 = (result + 12 * a2);
    v71 = v70[1];
    ++v70;
    v72 = v71.i64[0];
    v73 = *(v70 + a2);
    v74 = &v70->i8[v7];
    v75 = *v74;
    v76 = *(v74 + a2);
    v77 = a3;
    vst2_f32(v77, *&v72);
    v77 += 4;
    vst2_f32(v77, v75);
    *(a3 + 32) = vzip2q_s32(v71, v73);
    *(a3 + 48) = vzip2q_s32(v75, v76);
    v69 = 63;
  }

  a4[7] = v69;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s32(*a3, v6);
  v8 = vzip2q_s32(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s32(*v9, v10);
  v12 = vzip2q_s32(*v9, v10);
  v13 = vdupq_lane_s16(*v7.i8, 0);
  v14 = vsubq_s8(v7, v13);
  v15 = vsubq_s8(v11, v13);
  v16 = vsubq_s8(v8, v13);
  v17 = vsubq_s8(v12, v13);
  v18 = vqtbl1q_s8(v14, xmmword_29D2F0EF0);
  v19 = vpmaxq_s8(v18, v18);
  v20 = vpminq_s8(v18, v18);
  v21 = vpmaxq_s8(v19, v19);
  v22 = vpminq_s8(v20, v20);
  v23 = vpmaxq_s8(v21, v21);
  v24 = vpminq_s8(v22, v22);
  v25 = vzip1q_s8(v23, v24);
  v26.i64[0] = 0x808080808080808;
  v26.i64[1] = 0x808080808080808;
  v27 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v25)), vceqzq_s8(v25));
  v28 = vpmaxq_s8(v27, v27);
  v29 = vqtbl1q_s8(v15, xmmword_29D2F0EF0);
  v30 = vpmaxq_s8(v29, v29);
  v31 = vpminq_s8(v29, v29);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vpmaxq_s8(v32, v32);
  v35 = vpminq_s8(v33, v33);
  v36 = vmaxq_s8(v23, v34);
  v37 = vminq_s8(v24, v35);
  v38 = vzip1q_s8(v34, v35);
  v39 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v38)), vceqzq_s8(v38));
  v40 = vpmaxq_s8(v39, v39);
  v41 = vqtbl1q_s8(v16, xmmword_29D2F0EF0);
  v42 = vpmaxq_s8(v41, v41);
  v43 = vpminq_s8(v41, v41);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vmaxq_s8(v36, v46);
  v49 = vminq_s8(v37, v47);
  v50 = vzip1q_s8(v46, v47);
  v51 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v50)), vceqzq_s8(v50));
  v52 = vpmaxq_s8(v51, v51);
  v53 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v54 = vpmaxq_s8(v53, v53);
  v55 = vpminq_s8(v53, v53);
  v56 = vpmaxq_s8(v54, v54);
  v57 = vpminq_s8(v55, v55);
  v58 = vpmaxq_s8(v56, v56);
  v59 = vpminq_s8(v57, v57);
  v60 = vmaxq_s8(v48, v58);
  v61 = vminq_s8(v49, v59);
  v62 = vzip1q_s8(v58, v59);
  v63 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v62)), vceqzq_s8(v62));
  v64 = vpmaxq_s8(v63, v63);
  v65 = vmaxq_s8(vmaxq_s8(v28, v40), vmaxq_s8(v52, v64));
  v66 = vclzq_s8(vsubq_s8(v60, v61));
  v67 = vsubq_s8(v26, v66);
  v68 = vminq_s8(v67, v65);
  if (vmaxvq_s8(v68))
  {
    v399 = v11;
    v400 = v7;
    v401 = v12;
    v402 = v8;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
    v70.i64[0] = 0x707070707070707;
    v70.i64[1] = 0x707070707070707;
    v71 = vcgtq_s8(v65, v67);
    v403 = vandq_s8(vsubq_s8(vshlq_s8(v69, vsubq_s8(v70, v66)), v61), v71);
    v72.i64[0] = 0x303030303030303;
    v72.i64[1] = 0x303030303030303;
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v68, v28), v72), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v68, v40), v72), 0);
    v75 = vmaxq_s8(vminq_s8(vsubq_s8(v68, v52), v72), 0);
    v76 = vmaxq_s8(vminq_s8(vsubq_s8(v68, v64), v72), 0);
    v77.i64[0] = 0x404040404040404;
    v77.i64[1] = 0x404040404040404;
    v78 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v76, v75), vnegq_s8(vaddq_s8(v73, v74)))), vorrq_s8(vandq_s8(vceqzq_s8(v68), v72), vandq_s8(v71, v26)));
    v79 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F0EE0));
    v80 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0EE0));
    v81 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0));
    v82 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
    v83 = vqtbl1q_s8(v79, xmmword_29D2F0EF0);
    v84 = vpmaxq_s8(v83, v83);
    v85 = vpminq_s8(v83, v83);
    v86 = vpmaxq_s8(v84, v84);
    v87 = vpminq_s8(v85, v85);
    v88 = vpmaxq_s8(v86, v86);
    v89 = vpminq_s8(v87, v87);
    v90 = vzip1q_s8(v88, v89);
    v91 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v90)), vceqzq_s8(v90));
    v92 = v17;
    v93 = vpmaxq_s8(v91, v91);
    v94 = vqtbl1q_s8(v80, xmmword_29D2F0EF0);
    v95 = vpmaxq_s8(v94, v94);
    v96 = vpminq_s8(v94, v94);
    v97 = vpmaxq_s8(v95, v95);
    v98 = vpminq_s8(v96, v96);
    v99 = vpmaxq_s8(v97, v97);
    v100 = vpminq_s8(v98, v98);
    v101 = vmaxq_s8(v88, v99);
    v102 = vminq_s8(v89, v100);
    v103 = vzip1q_s8(v99, v100);
    v104 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v103)), vceqzq_s8(v103));
    v105 = vpmaxq_s8(v104, v104);
    v106 = vqtbl1q_s8(v81, xmmword_29D2F0EF0);
    v107 = vpmaxq_s8(v106, v106);
    v108 = vpminq_s8(v106, v106);
    v109 = vpmaxq_s8(v107, v107);
    v110 = vpminq_s8(v108, v108);
    v111 = vpmaxq_s8(v109, v109);
    v112 = vpminq_s8(v110, v110);
    v113 = vmaxq_s8(v101, v111);
    v114 = vminq_s8(v102, v112);
    v115 = vzip1q_s8(v111, v112);
    v116 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v115)), vceqzq_s8(v115));
    v117 = vpmaxq_s8(v116, v116);
    v118 = vqtbl1q_s8(v82, xmmword_29D2F0EF0);
    v119 = vpmaxq_s8(v118, v118);
    v120 = vpminq_s8(v118, v118);
    v121 = vpmaxq_s8(v119, v119);
    v122 = vpminq_s8(v120, v120);
    v123 = vpmaxq_s8(v121, v121);
    v124 = vpminq_s8(v122, v122);
    v125 = vmaxq_s8(v113, v123);
    v126 = vminq_s8(v114, v124);
    v127 = vzip1q_s8(v123, v124);
    v128 = vbicq_s8(vsubq_s8(v26, vclsq_s8(v127)), vceqzq_s8(v127));
    v129 = vpmaxq_s8(v128, v128);
    v130 = vmaxq_s8(vmaxq_s8(v93, v105), vmaxq_s8(v117, v129));
    v131 = vclzq_s8(vsubq_s8(v125, v126));
    v132 = vsubq_s8(v26, v131);
    v133 = vcgtq_s8(v130, v132);
    v134 = vminq_s8(v132, v130);
    v132.i64[0] = 0x1010101010101010;
    v132.i64[1] = 0x1010101010101010;
    v135.i64[0] = 0x1818181818181818;
    v135.i64[1] = 0x1818181818181818;
    v136 = vorrq_s8(vandq_s8(vceqzq_s8(v134), v72), vbslq_s8(v133, v135, v132));
    v137 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v93), v72), 0);
    v138 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v105), v72), 0);
    v139 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v117), v72), 0);
    v140 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v129), v72), 0);
    v141 = vsubq_s8(v134, v137);
    v142 = vsubq_s8(v134, v138);
    v143 = vsubq_s8(v134, v139);
    v144 = vsubq_s8(v134, v140);
    v145 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v140, v139), vnegq_s8(vaddq_s8(v137, v138)))), v136);
    v146 = vmovl_u8(*v145.i8);
    v137.i64[0] = 0x8000800080008;
    v137.i64[1] = 0x8000800080008;
    v138.i64[0] = 0x2000200020002;
    v138.i64[1] = 0x2000200020002;
    v147 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v134.i8), vceqzq_s16((*&v146 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v145.i8, 1uLL), v137)), vandq_s8(vceqq_s16((*&v146 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v138), v137)), *v141.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v142.i8), *v144.i8), 3uLL));
    v148 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v78.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v68.i8, vcgt_u8(0x808080808080808, *v78.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v78.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v138), v137));
    v149 = vsubq_s8(v68, v73);
    v150 = vsubq_s8(v68, v74);
    v151 = vsubq_s8(v68, v75);
    v152 = vsubq_s8(v68, v76);
    v153 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v148, *v149.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v150.i8), *v152.i8), 3uLL)), v147)), 0);
    v154 = vaddlvq_s8(v153);
    v156 = a5 < 4 || a6 < 2;
    if (v154)
    {
      v157.i64[0] = 0x707070707070707;
      v157.i64[1] = 0x707070707070707;
      v158.i64[0] = -1;
      v158.i64[1] = -1;
      v13 = vbslq_s8(v153, vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F0EE0)), v13);
      v14 = vbslq_s8(v153, v79, v14);
      v15 = vbslq_s8(v153, v80, v15);
      v16 = vbslq_s8(v153, v81, v16);
      v92 = vbslq_s8(v153, v82, v92);
      v149 = vbslq_s8(v153, v141, v149);
      v150 = vbslq_s8(v153, v142, v150);
      v151 = vbslq_s8(v153, v143, v151);
      v152 = vbslq_s8(v153, v144, v152);
      v159 = vbslq_s8(v153, vandq_s8(vsubq_s8(vshlq_s8(v158, vsubq_s8(v157, v131)), v126), v133), v403);
      v68 = vbslq_s8(v153, v134, v68);
      v78 = vbslq_s8(v153, v145, v78);
    }

    else
    {
      v159 = v403;
    }

    if (!v156)
    {
      v404 = v159;
      v162 = vsubq_s8(v7, vqtbl1q_s8(v7, xmmword_29D2F0F00));
      v163 = v399;
      v163.i16[7] = v7.i16[7];
      v164 = vsubq_s8(v399, vqtbl1q_s8(v163, xmmword_29D2F0F10));
      v165 = v402;
      v165.i16[7] = v7.i16[7];
      v166 = vsubq_s8(v402, vqtbl1q_s8(v165, xmmword_29D2F0F20));
      v167 = v401;
      v167.i16[7] = v7.i16[7];
      v169 = v162;
      v169.i16[0] = v162.i16[7];
      v168 = vsubq_s8(v401, vqtbl1q_s8(v167, xmmword_29D2F0F30));
      v169.i16[7] = v162.i16[0];
      v170 = vqtbl1q_s8(v169, xmmword_29D2F0EF0);
      v171 = vpmaxq_s8(v170, v170);
      v172 = vpminq_s8(v170, v170);
      v173 = vpmaxq_s8(v171, v171);
      v174 = vpminq_s8(v172, v172);
      v175 = vpmaxq_s8(v173, v173);
      v176 = vpminq_s8(v174, v174);
      v177 = vzip1q_s8(v175, v176);
      v178.i64[0] = 0x808080808080808;
      v178.i64[1] = 0x808080808080808;
      v179 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v177)), vceqzq_s8(v177));
      v180 = vpmaxq_s8(v179, v179);
      v398 = v164;
      v181 = vqtbl1q_s8(v164, xmmword_29D2F0EF0);
      v182 = vpmaxq_s8(v181, v181);
      v183 = vpminq_s8(v181, v181);
      v184 = vpmaxq_s8(v182, v182);
      v185 = vpminq_s8(v183, v183);
      v186 = vpmaxq_s8(v184, v184);
      v187 = vpminq_s8(v185, v185);
      v188 = vmaxq_s8(v175, v186);
      v189 = vminq_s8(v176, v187);
      v190 = vzip1q_s8(v186, v187);
      v191 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v190)), vceqzq_s8(v190));
      v192 = vpmaxq_s8(v191, v191);
      v193 = vqtbl1q_s8(v166, xmmword_29D2F0EF0);
      v194 = vpmaxq_s8(v193, v193);
      v195 = vpminq_s8(v193, v193);
      v196 = vpmaxq_s8(v194, v194);
      v197 = vpminq_s8(v195, v195);
      v198 = vpmaxq_s8(v196, v196);
      v199 = vpminq_s8(v197, v197);
      v200 = vmaxq_s8(v188, v198);
      v201 = vminq_s8(v189, v199);
      v202 = vzip1q_s8(v198, v199);
      v203 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v202)), vceqzq_s8(v202));
      v204 = vpmaxq_s8(v203, v203);
      v205 = vqtbl1q_s8(v168, xmmword_29D2F0EF0);
      v206 = vpmaxq_s8(v205, v205);
      v207 = vpminq_s8(v205, v205);
      v208 = vpmaxq_s8(v206, v206);
      v209 = vpminq_s8(v207, v207);
      v210 = vpmaxq_s8(v208, v208);
      v211 = vpminq_s8(v209, v209);
      v212 = vmaxq_s8(v200, v210);
      v213 = vminq_s8(v201, v211);
      v214 = vzip1q_s8(v210, v211);
      v215 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v214)), vceqzq_s8(v214));
      v216 = vpmaxq_s8(v215, v215);
      v217 = vmaxq_s8(vmaxq_s8(v180, v192), vmaxq_s8(v204, v216));
      v218 = vclzq_s8(vsubq_s8(v212, v213));
      v219 = vsubq_s8(v178, v218);
      v220 = vcgtq_s8(v217, v219);
      v221 = vminq_s8(v219, v217);
      v219.i64[0] = 0x909090909090909;
      v219.i64[1] = 0x909090909090909;
      v222.i64[0] = 0x202020202020202;
      v222.i64[1] = 0x202020202020202;
      v223 = vorrq_s8(vandq_s8(vceqzq_s8(v221), v222), vsubq_s8(vandq_s8(v220, v219), vmvnq_s8(v220)));
      v178.i64[0] = 0x303030303030303;
      v178.i64[1] = 0x303030303030303;
      v224 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v180), v178), 0);
      v225 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v192), v178), 0);
      v226 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v204), v178), 0);
      v227 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v216), v178), 0);
      v228 = vsubq_s8(v221, v224);
      v229 = vsubq_s8(v221, v225);
      v230 = vsubq_s8(v221, v226);
      v231 = vsubq_s8(v221, v227);
      v232 = vceqq_s8(vaddq_s8(v227, v226), vnegq_s8(vaddq_s8(v224, v225)));
      v224.i64[0] = 0x404040404040404;
      v224.i64[1] = 0x404040404040404;
      v233 = vorrq_s8(vbicq_s8(v224, v232), v223);
      v226.i64[0] = 0x3000300030003;
      v226.i64[1] = 0x3000300030003;
      v234 = vmovl_s8(*v78.i8);
      v178.i64[0] = 0x8000800080008;
      v178.i64[1] = 0x8000800080008;
      v235 = vbicq_s8(vmovl_s8(*v68.i8), vceqzq_s16(vandq_s8(v234, v178)));
      v236 = vandq_s8(v234, v226);
      v226.i64[0] = 0x2000200020002;
      v226.i64[1] = 0x2000200020002;
      v237 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v235, vandq_s8(vshll_n_s8(*v78.i8, 1uLL), v178)), vandq_s8(vceqq_s16(v236, v226), v178)), *v149.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v150.i8), *v152.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v221.i8, vcgt_u8(0x808080808080808, *v233.i8))), vand_s8(vadd_s8(*v233.i8, *v233.i8), 0x808080808080808)), *v228.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v230.i8, *v229.i8), *v231.i8), 3uLL)))), 0);
      if (vaddlvq_s8(v237))
      {
        v238.i64[0] = 0x707070707070707;
        v238.i64[1] = 0x707070707070707;
        v239.i64[0] = -1;
        v239.i64[1] = -1;
        v13.i16[0] = vbslq_s8(v237, vextq_s8(v400, v400, 0xEuLL), v13).u16[0];
        v14 = vbslq_s8(v237, v169, v14);
        v15 = vbslq_s8(v237, v398, v15);
        v16 = vbslq_s8(v237, v166, v16);
        v92 = vbslq_s8(v237, v168, v92);
        v149 = vbslq_s8(v237, v228, v149);
        v150 = vbslq_s8(v237, v229, v150);
        v151 = vbslq_s8(v237, v230, v151);
        v152 = vbslq_s8(v237, v231, v152);
        v159 = vbslq_s8(v237, vandq_s8(vsubq_s8(vshlq_s8(v239, vsubq_s8(v238, v218)), v213), v220), v404);
        v68 = vbslq_s8(v237, v221, v68);
        v78 = vbslq_s8(v237, v233, v78);
      }

      else
      {
        v159 = v404;
      }
    }

    v240 = vmovl_s8(*v78.i8);
    v241.i64[0] = 0x8000800080008;
    v241.i64[1] = 0x8000800080008;
    v242.i64[0] = 0x3000300030003;
    v242.i64[1] = 0x3000300030003;
    v243.i64[0] = 0x2000200020002;
    v243.i64[1] = 0x2000200020002;
    v244 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v68.i8), vceqzq_s16(vandq_s8(v240, v241))), vandq_s8(vshll_n_s8(*v78.i8, 1uLL), v241)), vandq_s8(vceqq_s16(vandq_s8(v240, v242), v243), v241)), *v149.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v150.i8), *v152.i8), 3uLL));
    if ((vpaddq_s16(v244, v244).i16[0] + 37) >= 0x200)
    {
      *a1 = v400;
      a1[1] = v399;
      v160 = 63;
      a1[2] = v402;
      a1[3] = v401;
      result = 64;
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

      v248 = ((v68.i8[0] - 1) & 7) << 10;
      if (!v68.i8[0])
      {
        v248 = 0;
      }

      if (v68.i8[1])
      {
        v249 = ((v68.u8[1] << 13) - 0x2000) & 0xE000;
      }

      else
      {
        v249 = 0;
      }

      *a2 = v78.i8[0] << 6;
      v250 = (v78.i8[0] & 0x1C | (32 * (v78.i8[1] & 0x1F)) | v249 | v248) >> 2;
      v251 = (v250 << v246) | v247;
      if (v246 >= 0x32)
      {
        *v245 = v251;
        v251 = v250 >> (-8 * (a1 & 7u));
      }

      v252 = (v246 + 14) & 0x3E;
      v253 = v251 | (v13.u16[0] << v252);
      if (v252 >= 0x30)
      {
        *(v245 + (((v246 + 14) >> 3) & 8)) = v253;
        v253 = v13.u16[0] >> -v252;
      }

      v254 = v246 + 30;
      v255 = vsubq_s8(v68, v149);
      v256 = vsubq_s8(v68, v150);
      v257 = vsubq_s8(v68, v151);
      v258 = vsubq_s8(v68, v152);
      v255.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v255, v256), vzip1q_s8(v257, v258)), vzip1q_s16(vtrn2q_s8(v255, v256), vtrn2q_s8(v257, v258))).u64[0];
      v257.i64[0] = 0x202020202020202;
      v257.i64[1] = 0x202020202020202;
      v259 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v240.i8, 0x4000400040004)))), v257);
      v257.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v257.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v260 = vandq_s8(vshlq_u8(v258, vorrq_s8(v259, v257)), v255.u64[0]);
      v261 = vmovl_u8(*v259.i8);
      v262 = vpaddq_s16(vshlq_u16(vmovl_u8(*v260.i8), vtrn1q_s16(0, v261)), vmovl_high_u8(v260));
      v263 = vpaddq_s16(v261, vmovl_high_u8(v259));
      v264 = vmovl_u16(*v263.i8);
      v265 = vmovl_high_u16(v263);
      v266 = vpaddq_s32(vshlq_u32(vmovl_u16(*v262.i8), vtrn1q_s32(0, v264)), vshlq_u32(vmovl_high_u16(v262), vtrn1q_s32(0, v265)));
      v267 = vpaddq_s32(v264, v265);
      v268.i64[0] = v266.u32[0];
      v268.i64[1] = v266.u32[1];
      v269 = v268;
      v268.i64[0] = v266.u32[2];
      v268.i64[1] = v266.u32[3];
      v270 = v268;
      v268.i64[0] = v267.u32[0];
      v268.i64[1] = v267.u32[1];
      v271 = v268;
      v268.i64[0] = v267.u32[2];
      v268.i64[1] = v267.u32[3];
      v272 = vpaddq_s64(vshlq_u64(v269, vzip1q_s64(0, v271)), vshlq_u64(v270, vzip1q_s64(0, v268)));
      v273 = vpaddq_s64(v271, v268);
      v274 = (v246 + 30) & 0x3E;
      v275 = (v272.i64[0] << v274) | v253;
      if ((v273.i64[0] + v274) >= 0x40)
      {
        *(v245 + ((v254 >> 3) & 8)) = v275;
        v275 = v272.i64[0] >> -v274;
      }

      v276 = vceqq_s8(v68, v149);
      v277 = v273.i64[0] + v254;
      v278 = v275 | (v272.i64[1] << v277);
      if ((v277 & 0x3F) + v273.i64[1] >= 0x40)
      {
        *(v245 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v272.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vandq_s8(v159, v276);
      v280 = v277 + v273.i64[1];
      v281.i64[0] = 0x808080808080808;
      v281.i64[1] = 0x808080808080808;
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v283 = vandq_s8(vextq_s8(vtstq_s8(v78, v281), 0, 0xEuLL), v68);
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285 = vandq_s8(vshlq_u8(v282, vaddq_s8(v283, v284)), v159);
      v286 = vmovl_u8(*v283.i8);
      v287 = vpaddq_s16(vshlq_u16(vmovl_u8(*v285.i8), vtrn1q_s16(0, v286)), vmovl_high_u8(v285));
      v288 = vpaddq_s16(v286, vmovl_high_u8(v283));
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
      v299 = (v297.i64[0] << v280) | v278;
      if (v298.i64[0] + (v280 & 0x3F) >= 0x40)
      {
        *(v245 + ((v280 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
        v299 = v297.i64[0] >> -(v280 & 0x3F);
        if ((v280 & 0x3F) == 0)
        {
          v299 = 0;
        }
      }

      v300 = vceqq_s8(v68, v150);
      v301 = vaddq_s8(v279, v14);
      v302 = v298.i64[0] + v280;
      v303 = v299 | (v297.i64[1] << v302);
      if ((v302 & 0x3F) + v298.i64[1] >= 0x40)
      {
        *(v245 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v303;
        v303 = v297.i64[1] >> -(v302 & 0x3F);
        if ((v302 & 0x3F) == 0)
        {
          v303 = 0;
        }
      }

      v304 = vandq_s8(v159, v300);
      v305 = v302 + v298.i64[1];
      v306 = vextq_s8(0, v149, 0xEuLL);
      v307.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v307.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u8(v308, vaddq_s8(v306, v307)), v301);
      v310 = vmovl_u8(*v306.i8);
      v311 = vmovl_high_u8(v306);
      v312 = vpaddq_s16(vshlq_u16(vmovl_u8(*v309.i8), vtrn1q_s16(0, v310)), vshlq_u16(vmovl_high_u8(v309), vtrn1q_s16(0, v311)));
      v313 = vpaddq_s16(v310, v311);
      v314 = vmovl_u16(*v313.i8);
      v315 = vmovl_high_u16(v313);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v314)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v315)));
      v317 = vpaddq_s32(v314, v315);
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
      v324 = (v322.i64[0] << v305) | v303;
      if (v323.i64[0] + (v305 & 0x3F) >= 0x40)
      {
        *(v245 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vceqq_s8(v68, v151);
      v326 = vaddq_s8(v15, v304);
      v327 = v323.i64[0] + v305;
      v328 = v324 | (v322.i64[1] << v327);
      if ((v327 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v245 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v322.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = vandq_s8(v159, v325);
      v330 = v327 + v323.i64[1];
      v331.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v331.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u8(v332, vaddq_s8(v150, v331)), v326);
      v334 = vmovl_u8(*v150.i8);
      v335 = vmovl_high_u8(v150);
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
      v348 = (v346.i64[0] << v330) | v328;
      if (v347.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v245 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v346.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = vceqq_s8(v68, v152);
      v350 = vaddq_s8(v16, v329);
      v351 = v347.i64[0] + v330;
      v352 = v348 | (v346.i64[1] << v351);
      if ((v351 & 0x3F) + v347.i64[1] >= 0x40)
      {
        *(v245 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v346.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = vandq_s8(v159, v349);
      v354 = v351 + v347.i64[1];
      v355.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v356.i64[0] = -1;
      v356.i64[1] = -1;
      v357 = vandq_s8(vshlq_u8(v356, vaddq_s8(v151, v355)), v350);
      v358 = vmovl_u8(*v151.i8);
      v359 = vmovl_high_u8(v151);
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
        *(v245 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v370.i64[0] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = vaddq_s8(v92, v353);
      v374 = v371.i64[0] + v354;
      v375 = v372 | (v370.i64[1] << v374);
      if ((v374 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v245 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
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
      v379 = vandq_s8(vshlq_u8(v378, vaddq_s8(v152, v377)), v373);
      v380 = vmovl_u8(*v152.i8);
      v381 = vmovl_high_u8(v152);
      v382 = vpaddq_s16(vshlq_u16(vmovl_u8(*v379.i8), vtrn1q_s16(0, v380)), vshlq_u16(vmovl_high_u8(v379), vtrn1q_s16(0, v381)));
      v383 = vpaddq_s16(v380, v381);
      v384 = vmovl_u16(*v383.i8);
      v385 = vmovl_high_u16(v383);
      v386 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v384)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v385)));
      v387 = vpaddq_s32(v384, v385);
      v388.i64[0] = v386.u32[0];
      v388.i64[1] = v386.u32[1];
      v389 = v388;
      v388.i64[0] = v386.u32[2];
      v388.i64[1] = v386.u32[3];
      v390 = v388;
      v388.i64[0] = v387.u32[0];
      v388.i64[1] = v387.u32[1];
      v391 = v388;
      v388.i64[0] = v387.u32[2];
      v388.i64[1] = v387.u32[3];
      v392 = vpaddq_s64(vshlq_u64(v389, vzip1q_s64(0, v391)), vshlq_u64(v390, vzip1q_s64(0, v388)));
      v393 = vpaddq_s64(v391, v388);
      v394 = (v392.i64[0] << v376) | v375;
      if (v393.i64[0] + (v376 & 0x3F) > 0x3F)
      {
        *(v245 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        if ((v376 & 0x3F) != 0)
        {
          v394 = v392.i64[0] >> -(v376 & 0x3F);
        }

        else
        {
          v394 = 0;
        }
      }

      v395 = v393.i64[0] + v376;
      v396 = v394 | (v392.i64[1] << v395);
      if ((v395 & 0x3F) + v393.i64[1] >= 0x40)
      {
        *(v245 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v392.i64[1] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = v395 + v393.i64[1];
      if ((v397 & 0x3F) != 0)
      {
        *(v245 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      }

      result = (v397 - v246 + 7) >> 3;
      v160 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    v160 = 1;
    result = 2;
  }

  *a2 = v160;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
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

    if (v7 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
    v9 = (v9 + result);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 = (v9 + result);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 16), a2, v25, v24);
  v9 = (v9 + result);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
    v9 = (v9 + result);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *(a3 + a4);
  v8 = vzip1q_s32(*a3, v7);
  v9 = vzip2q_s32(*a3, v7);
  v10 = (a3 + 2 * a4);
  v11 = *(v10 + a4);
  v12 = vzip1q_s32(*v10, v11);
  v13 = vzip2q_s32(*v10, v11);
  v14 = vdupq_lane_s16(*v8.i8, 0);
  v15 = vsubq_s8(v8, v14);
  v16 = vsubq_s8(v12, v14);
  v17 = vsubq_s8(v9, v14);
  v18 = vsubq_s8(v13, v14);
  v19 = vqtbl1q_s8(v15, xmmword_29D2F0EF0);
  v20 = vpmaxq_s8(v19, v19);
  v21 = vpminq_s8(v19, v19);
  v22 = vpmaxq_s8(v20, v20);
  v23 = vpminq_s8(v21, v21);
  v24 = vpmaxq_s8(v22, v22);
  v25 = vpminq_s8(v23, v23);
  v26 = vzip1q_s8(v24, v25);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v26)), vceqzq_s8(v26));
  v29 = vpmaxq_s8(v28, v28);
  v30 = vqtbl1q_s8(v16, xmmword_29D2F0EF0);
  v31 = vpmaxq_s8(v30, v30);
  v32 = vpminq_s8(v30, v30);
  v33 = vpmaxq_s8(v31, v31);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vmaxq_s8(v24, v35);
  v38 = vminq_s8(v25, v36);
  v39 = vzip1q_s8(v35, v36);
  v40 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v39)), vceqzq_s8(v39));
  v41 = vpmaxq_s8(v40, v40);
  v42 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v43 = vpmaxq_s8(v42, v42);
  v44 = vpminq_s8(v42, v42);
  v45 = vpmaxq_s8(v43, v43);
  v46 = vpminq_s8(v44, v44);
  v47 = vpmaxq_s8(v45, v45);
  v48 = vpminq_s8(v46, v46);
  v49 = vmaxq_s8(v37, v47);
  v50 = vminq_s8(v38, v48);
  v51 = vzip1q_s8(v47, v48);
  v52 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v51)), vceqzq_s8(v51));
  v53 = vpmaxq_s8(v52, v52);
  v54 = vqtbl1q_s8(v18, xmmword_29D2F0EF0);
  v55 = vpmaxq_s8(v54, v54);
  v56 = vpminq_s8(v54, v54);
  v57 = vpmaxq_s8(v55, v55);
  v58 = vpminq_s8(v56, v56);
  v59 = vpmaxq_s8(v57, v57);
  v60 = vpminq_s8(v58, v58);
  v61 = vmaxq_s8(v49, v59);
  v62 = vminq_s8(v50, v60);
  v63 = vzip1q_s8(v59, v60);
  v64 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v63)), vceqzq_s8(v63));
  v65 = vpmaxq_s8(v64, v64);
  v66 = vmaxq_s8(vmaxq_s8(v29, v41), vmaxq_s8(v53, v65));
  v67 = vclzq_s8(vsubq_s8(v61, v62));
  v68 = vsubq_s8(v27, v67);
  v69 = vminq_s8(v68, v66);
  if (!vmaxvq_s8(v69))
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  v406 = v12;
  v407 = v9;
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v71.i64[0] = 0x707070707070707;
  v71.i64[1] = 0x707070707070707;
  v72 = vcgtq_s8(v66, v68);
  v409 = vandq_s8(vsubq_s8(vshlq_s8(v70, vsubq_s8(v71, v67)), v62), v72);
  v73.i64[0] = 0x303030303030303;
  v73.i64[1] = 0x303030303030303;
  v74 = vorrq_s8(vandq_s8(vceqzq_s8(v69), v73), vandq_s8(v72, v27));
  v75 = vmaxq_s8(vminq_s8(vsubq_s8(v69, v29), v73), 0);
  v76 = vmaxq_s8(vminq_s8(vsubq_s8(v69, v41), v73), 0);
  v77 = vmaxq_s8(vminq_s8(vsubq_s8(v69, v53), v73), 0);
  v78 = vmaxq_s8(vminq_s8(vsubq_s8(v69, v65), v73), 0);
  v79.i64[0] = 0x404040404040404;
  v79.i64[1] = 0x404040404040404;
  v80 = vorrq_s8(vbicq_s8(v79, vceqq_s8(vaddq_s8(v78, v77), vnegq_s8(vaddq_s8(v75, v76)))), v74);
  v81 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0));
  v82 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
  v83 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F0EE0));
  v408 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0EE0));
  v84 = vqtbl1q_s8(v408, xmmword_29D2F0EF0);
  v85 = vpmaxq_s8(v84, v84);
  v86 = vpminq_s8(v84, v84);
  v87 = vpmaxq_s8(v85, v85);
  v88 = vpminq_s8(v86, v86);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vzip1q_s8(v89, v90);
  v92 = v17;
  v93 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v91)), vceqzq_s8(v91));
  v94 = vpmaxq_s8(v93, v93);
  v95 = vqtbl1q_s8(v81, xmmword_29D2F0EF0);
  v96 = vpmaxq_s8(v95, v95);
  v97 = vpminq_s8(v95, v95);
  v98 = vpmaxq_s8(v96, v96);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vmaxq_s8(v89, v100);
  v103 = vminq_s8(v90, v101);
  v104 = vzip1q_s8(v100, v101);
  v105 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v104)), vceqzq_s8(v104));
  v106 = vpmaxq_s8(v105, v105);
  v107 = vqtbl1q_s8(v82, xmmword_29D2F0EF0);
  v108 = vpmaxq_s8(v107, v107);
  v109 = vpminq_s8(v107, v107);
  v110 = vpmaxq_s8(v108, v108);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vmaxq_s8(v102, v112);
  v115 = vminq_s8(v103, v113);
  v116 = vzip1q_s8(v112, v113);
  v117 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v116)), vceqzq_s8(v116));
  v118 = vpmaxq_s8(v117, v117);
  v119 = vqtbl1q_s8(v83, xmmword_29D2F0EF0);
  v120 = vpmaxq_s8(v119, v119);
  v121 = vpminq_s8(v119, v119);
  v122 = vpmaxq_s8(v120, v120);
  v123 = vpminq_s8(v121, v121);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = v18;
  v127 = vmaxq_s8(v114, v124);
  v128 = vminq_s8(v115, v125);
  v129 = vzip1q_s8(v124, v125);
  v130 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v129)), vceqzq_s8(v129));
  v131 = vpmaxq_s8(v130, v130);
  v132 = vmaxq_s8(vmaxq_s8(v94, v106), vmaxq_s8(v118, v131));
  v133 = vclzq_s8(vsubq_s8(v127, v128));
  v134 = vsubq_s8(v27, v133);
  v135 = vcgtq_s8(v132, v134);
  v136 = vminq_s8(v134, v132);
  v134.i64[0] = 0x1010101010101010;
  v134.i64[1] = 0x1010101010101010;
  v137.i64[0] = 0x1818181818181818;
  v137.i64[1] = 0x1818181818181818;
  v138 = vorrq_s8(vandq_s8(vceqzq_s8(v136), v73), vbslq_s8(v135, v137, v134));
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v94), v73), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v106), v73), 0);
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v118), v73), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v131), v73), 0);
  v143 = vsubq_s8(v136, v139);
  v144 = vsubq_s8(v136, v140);
  v145 = vsubq_s8(v136, v141);
  v146 = vsubq_s8(v136, v142);
  v147 = vorrq_s8(vbicq_s8(v79, vceqq_s8(vaddq_s8(v142, v141), vnegq_s8(vaddq_s8(v139, v140)))), v138);
  v148 = vmovl_u8(*v147.i8);
  v140.i64[0] = 0x8000800080008;
  v140.i64[1] = 0x8000800080008;
  v142.i64[0] = 0x2000200020002;
  v142.i64[1] = 0x2000200020002;
  v149 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v136.i8), vceqzq_s16((*&v148 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v147.i8, 1uLL), v140)), vandq_s8(vceqq_s16((*&v148 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v142), v140)), *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL));
  v150 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v69.i8, vcgt_u8(0x808080808080808, *v80.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v80.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v142), v140));
  v151 = vsubq_s8(v69, v75);
  v152 = vsubq_s8(v69, v76);
  v153 = vsubq_s8(v69, v77);
  v154 = vsubq_s8(v69, v78);
  v155 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v150, *v151.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL)), v149)), 0);
  v156 = vaddlvq_s8(v155);
  v158 = a5 < 4 || a6 < 2;
  if (v156)
  {
    v159.i64[0] = 0x707070707070707;
    v159.i64[1] = 0x707070707070707;
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    v161 = vandq_s8(vsubq_s8(vshlq_s8(v160, vsubq_s8(v159, v133)), v128), v135);
    v14 = vbslq_s8(v155, vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F0EE0)), v14);
    v162 = vbslq_s8(v155, v408, v15);
    v163 = vbslq_s8(v155, v81, v16);
    v92 = vbslq_s8(v155, v82, v92);
    v126 = vbslq_s8(v155, v83, v126);
    v151 = vbslq_s8(v155, v143, v151);
    v152 = vbslq_s8(v155, v144, v152);
    v153 = vbslq_s8(v155, v145, v153);
    v154 = vbslq_s8(v155, v146, v154);
    v164 = vbslq_s8(v155, v161, v409);
    v69 = vbslq_s8(v155, v136, v69);
    v80 = vbslq_s8(v155, v147, v80);
    if (v158)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v164 = v409;
    v163 = v16;
    v162 = v15;
    if (v158)
    {
      goto LABEL_16;
    }
  }

  v410 = v126;
  v166 = v163;
  v167 = v92;
  v168 = vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F0F00));
  v169 = v406;
  v169.i16[7] = v8.i16[7];
  v170 = vsubq_s8(v406, vqtbl1q_s8(v169, xmmword_29D2F0F10));
  v171 = v407;
  v171.i16[7] = v8.i16[7];
  v172 = vsubq_s8(v407, vqtbl1q_s8(v171, xmmword_29D2F0F20));
  v173 = v13;
  v173.i16[7] = v8.i16[7];
  v175 = v168;
  v175.i16[0] = v168.i16[7];
  v174 = vsubq_s8(v13, vqtbl1q_s8(v173, xmmword_29D2F0F30));
  v175.i16[7] = v168.i16[0];
  v176 = vqtbl1q_s8(v175, xmmword_29D2F0EF0);
  v177 = vpmaxq_s8(v176, v176);
  v178 = vpminq_s8(v176, v176);
  v179 = vpmaxq_s8(v177, v177);
  v180 = vpminq_s8(v178, v178);
  v181 = vpmaxq_s8(v179, v179);
  v182 = vpminq_s8(v180, v180);
  v183 = vzip1q_s8(v181, v182);
  v184.i64[0] = 0x808080808080808;
  v184.i64[1] = 0x808080808080808;
  v185 = vbicq_s8(vsubq_s8(v184, vclsq_s8(v183)), vceqzq_s8(v183));
  v186 = vpmaxq_s8(v185, v185);
  v187 = vqtbl1q_s8(v170, xmmword_29D2F0EF0);
  v188 = vpmaxq_s8(v187, v187);
  v189 = vpminq_s8(v187, v187);
  v190 = vpmaxq_s8(v188, v188);
  v191 = vpminq_s8(v189, v189);
  v192 = vpmaxq_s8(v190, v190);
  v193 = vpminq_s8(v191, v191);
  v194 = vmaxq_s8(v181, v192);
  v195 = vminq_s8(v182, v193);
  v196 = vzip1q_s8(v192, v193);
  v197 = vbicq_s8(vsubq_s8(v184, vclsq_s8(v196)), vceqzq_s8(v196));
  v198 = vpmaxq_s8(v197, v197);
  v199 = vqtbl1q_s8(v172, xmmword_29D2F0EF0);
  v200 = vpmaxq_s8(v199, v199);
  v201 = vpminq_s8(v199, v199);
  v202 = vpmaxq_s8(v200, v200);
  v203 = vpminq_s8(v201, v201);
  v204 = vpmaxq_s8(v202, v202);
  v205 = vpminq_s8(v203, v203);
  v206 = vmaxq_s8(v194, v204);
  v207 = vminq_s8(v195, v205);
  v208 = vzip1q_s8(v204, v205);
  v209 = vbicq_s8(vsubq_s8(v184, vclsq_s8(v208)), vceqzq_s8(v208));
  v210 = vpmaxq_s8(v209, v209);
  v211 = vqtbl1q_s8(v174, xmmword_29D2F0EF0);
  v212 = vpmaxq_s8(v211, v211);
  v213 = vpminq_s8(v211, v211);
  v214 = vpmaxq_s8(v212, v212);
  v215 = vpminq_s8(v213, v213);
  v216 = vpmaxq_s8(v214, v214);
  v217 = vpminq_s8(v215, v215);
  v218 = vmaxq_s8(v206, v216);
  v219 = vminq_s8(v207, v217);
  v220 = vzip1q_s8(v216, v217);
  v221 = vbicq_s8(vsubq_s8(v184, vclsq_s8(v220)), vceqzq_s8(v220));
  v222 = vpmaxq_s8(v221, v221);
  v223 = vmaxq_s8(vmaxq_s8(v186, v198), vmaxq_s8(v210, v222));
  v224 = vclzq_s8(vsubq_s8(v218, v219));
  v225 = vsubq_s8(v184, v224);
  v226 = vcgtq_s8(v223, v225);
  v227 = vminq_s8(v225, v223);
  v225.i64[0] = 0x909090909090909;
  v225.i64[1] = 0x909090909090909;
  v228.i64[0] = 0x202020202020202;
  v228.i64[1] = 0x202020202020202;
  v229 = vorrq_s8(vandq_s8(vceqzq_s8(v227), v228), vsubq_s8(vandq_s8(v226, v225), vmvnq_s8(v226)));
  v184.i64[0] = 0x303030303030303;
  v184.i64[1] = 0x303030303030303;
  v230 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v186), v184), 0);
  v231 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v198), v184), 0);
  v232 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v210), v184), 0);
  v233 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v222), v184), 0);
  v234 = vsubq_s8(v227, v230);
  v235 = vsubq_s8(v227, v231);
  v236 = vsubq_s8(v227, v232);
  v237 = vsubq_s8(v227, v233);
  v238 = vceqq_s8(vaddq_s8(v233, v232), vnegq_s8(vaddq_s8(v230, v231)));
  v231.i64[0] = 0x404040404040404;
  v231.i64[1] = 0x404040404040404;
  v239 = vorrq_s8(vbicq_s8(v231, v238), v229);
  v240.i64[0] = 0x3000300030003;
  v240.i64[1] = 0x3000300030003;
  v241 = vmovl_s8(*v80.i8);
  v233.i64[0] = 0x8000800080008;
  v233.i64[1] = 0x8000800080008;
  v242 = vbicq_s8(vmovl_s8(*v69.i8), vceqzq_s16(vandq_s8(v241, v233)));
  v243 = vandq_s8(v241, v240);
  v240.i64[0] = 0x2000200020002;
  v240.i64[1] = 0x2000200020002;
  v244 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v242, vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v233)), vandq_s8(vceqq_s16(v243, v240), v233)), *v151.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v227.i8, vcgt_u8(0x808080808080808, *v239.i8))), vand_s8(vadd_s8(*v239.i8, *v239.i8), 0x808080808080808)), *v234.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v236.i8, *v235.i8), *v237.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v244))
  {
    v245.i64[0] = 0x707070707070707;
    v245.i64[1] = 0x707070707070707;
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v247 = vandq_s8(vsubq_s8(vshlq_s8(v246, vsubq_s8(v245, v224)), v219), v226);
    v14.i16[0] = vbslq_s8(v244, vextq_s8(v8, v8, 0xEuLL), v14).u16[0];
    v162 = vbslq_s8(v244, v175, v162);
    v163 = vbslq_s8(v244, v170, v166);
    v92 = vbslq_s8(v244, v172, v167);
    v126 = vbslq_s8(v244, v174, v410);
    v151 = vbslq_s8(v244, v234, v151);
    v152 = vbslq_s8(v244, v235, v152);
    v153 = vbslq_s8(v244, v236, v153);
    v154 = vbslq_s8(v244, v237, v154);
    v164 = vbslq_s8(v244, v247, v164);
    v69 = vbslq_s8(v244, v227, v69);
    v80 = vbslq_s8(v244, v239, v80);
  }

  else
  {
    v92 = v167;
    v163 = v166;
    v126 = v410;
  }

LABEL_16:
  v248 = vmovl_s8(*v80.i8);
  v249.i64[0] = 0x8000800080008;
  v249.i64[1] = 0x8000800080008;
  v250.i64[0] = 0x3000300030003;
  v250.i64[1] = 0x3000300030003;
  v251.i64[0] = 0x2000200020002;
  v251.i64[1] = 0x2000200020002;
  v252 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v69.i8), vceqzq_s16(vandq_s8(v248, v249))), vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v249)), vandq_s8(vceqq_s16(vandq_s8(v248, v250), v251), v249)), *v151.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL));
  if ((vpaddq_s16(v252, v252).i16[0] - 355) <= 0xFFFFFFFFFFFFFE77)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 48;
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

    v256 = ((v69.i8[0] - 1) & 7) << 10;
    if (!v69.i8[0])
    {
      v256 = 0;
    }

    if (v69.i8[1])
    {
      v257 = ((v69.u8[1] << 13) - 0x2000) & 0xE000;
    }

    else
    {
      v257 = 0;
    }

    *a2 = v80.i8[0] << 6;
    v258 = (v80.i8[0] & 0x1C | (32 * (v80.i8[1] & 0x1F)) | v257 | v256) >> 2;
    v259 = (v258 << v254) | v255;
    if (v254 >= 0x32)
    {
      *v253 = v259;
      v259 = v258 >> (-8 * (a1 & 7u));
    }

    v260 = (v254 + 14) & 0x3E;
    v261 = v259 | (v14.u16[0] << v260);
    if (v260 >= 0x30)
    {
      *(v253 + (((v254 + 14) >> 3) & 8)) = v261;
      v261 = v14.u16[0] >> -v260;
    }

    v262 = v254 + 30;
    v263 = vsubq_s8(v69, v151);
    v264 = vsubq_s8(v69, v152);
    v265 = vsubq_s8(v69, v153);
    v266 = vsubq_s8(v69, v154);
    v263.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v263, v264), vzip1q_s8(v265, v266)), vzip1q_s16(vtrn2q_s8(v263, v264), vtrn2q_s8(v265, v266))).u64[0];
    v265.i64[0] = 0x202020202020202;
    v265.i64[1] = 0x202020202020202;
    v267 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v248.i8, 0x4000400040004)))), v265);
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
    v282 = (v254 + 30) & 0x3E;
    v283 = (v280.i64[0] << v282) | v261;
    if ((v281.i64[0] + v282) >= 0x40)
    {
      *(v253 + ((v262 >> 3) & 8)) = v283;
      v283 = v280.i64[0] >> -v282;
    }

    v284 = vceqq_s8(v69, v151);
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

    v287 = vandq_s8(v164, v284);
    v288 = v285 + v281.i64[1];
    v289.i64[0] = 0x808080808080808;
    v289.i64[1] = 0x808080808080808;
    v290.i64[0] = -1;
    v290.i64[1] = -1;
    v291 = vandq_s8(vextq_s8(vtstq_s8(v80, v289), 0, 0xEuLL), v69);
    v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v293 = vandq_s8(vshlq_u8(v290, vaddq_s8(v291, v292)), v164);
    v294 = vmovl_u8(*v291.i8);
    v295 = vpaddq_s16(vshlq_u16(vmovl_u8(*v293.i8), vtrn1q_s16(0, v294)), vmovl_high_u8(v293));
    v296 = vpaddq_s16(v294, vmovl_high_u8(v291));
    v297 = vmovl_u16(*v296.i8);
    v298 = vmovl_high_u16(v296);
    v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v295.i8), vtrn1q_s32(0, v297)), vshlq_u32(vmovl_high_u16(v295), vtrn1q_s32(0, v298)));
    v300 = vpaddq_s32(v297, v298);
    v301.i64[0] = v299.u32[0];
    v301.i64[1] = v299.u32[1];
    v302 = v301;
    v301.i64[0] = v299.u32[2];
    v301.i64[1] = v299.u32[3];
    v303 = v301;
    v301.i64[0] = v300.u32[0];
    v301.i64[1] = v300.u32[1];
    v304 = v301;
    v301.i64[0] = v300.u32[2];
    v301.i64[1] = v300.u32[3];
    v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
    v306 = vpaddq_s64(v304, v301);
    v307 = (v305.i64[0] << v288) | v286;
    if (v306.i64[0] + (v288 & 0x3F) >= 0x40)
    {
      *(v253 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v288 & 0x3F);
      if ((v288 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vceqq_s8(v69, v152);
    v309 = vaddq_s8(v287, v162);
    v310 = v306.i64[0] + v288;
    v311 = v307 | (v305.i64[1] << v310);
    if ((v310 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v253 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
      v311 = v305.i64[1] >> -(v310 & 0x3F);
      if ((v310 & 0x3F) == 0)
      {
        v311 = 0;
      }
    }

    v312 = vandq_s8(v164, v308);
    v313 = v310 + v306.i64[1];
    v314 = vextq_s8(0, v151, 0xEuLL);
    v315.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v315.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vshlq_u8(v316, vaddq_s8(v314, v315)), v309);
    v318 = vmovl_u8(*v314.i8);
    v319 = vmovl_high_u8(v314);
    v320 = vpaddq_s16(vshlq_u16(vmovl_u8(*v317.i8), vtrn1q_s16(0, v318)), vshlq_u16(vmovl_high_u8(v317), vtrn1q_s16(0, v319)));
    v321 = vpaddq_s16(v318, v319);
    v322 = vmovl_u16(*v321.i8);
    v323 = vmovl_high_u16(v321);
    v324 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v322)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v323)));
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
    v332 = (v330.i64[0] << v313) | v311;
    if (v331.i64[0] + (v313 & 0x3F) >= 0x40)
    {
      *(v253 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v330.i64[0] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = vceqq_s8(v69, v153);
    v334 = vaddq_s8(v163, v312);
    v335 = v331.i64[0] + v313;
    v336 = v332 | (v330.i64[1] << v335);
    if ((v335 & 0x3F) + v331.i64[1] >= 0x40)
    {
      *(v253 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v330.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vandq_s8(v164, v333);
    v338 = v335 + v331.i64[1];
    v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v152, v339)), v334);
    v342 = vmovl_u8(*v152.i8);
    v343 = vmovl_high_u8(v152);
    v344 = vpaddq_s16(vshlq_u16(vmovl_u8(*v341.i8), vtrn1q_s16(0, v342)), vshlq_u16(vmovl_high_u8(v341), vtrn1q_s16(0, v343)));
    v345 = vpaddq_s16(v342, v343);
    v346 = vmovl_u16(*v345.i8);
    v347 = vmovl_high_u16(v345);
    v348 = vpaddq_s32(vshlq_u32(vmovl_u16(*v344.i8), vtrn1q_s32(0, v346)), vshlq_u32(vmovl_high_u16(v344), vtrn1q_s32(0, v347)));
    v349 = vpaddq_s32(v346, v347);
    v350.i64[0] = v348.u32[0];
    v350.i64[1] = v348.u32[1];
    v351 = v350;
    v350.i64[0] = v348.u32[2];
    v350.i64[1] = v348.u32[3];
    v352 = v350;
    v350.i64[0] = v349.u32[0];
    v350.i64[1] = v349.u32[1];
    v353 = v350;
    v350.i64[0] = v349.u32[2];
    v350.i64[1] = v349.u32[3];
    v354 = vpaddq_s64(vshlq_u64(v351, vzip1q_s64(0, v353)), vshlq_u64(v352, vzip1q_s64(0, v350)));
    v355 = vpaddq_s64(v353, v350);
    v356 = (v354.i64[0] << v338) | v336;
    if (v355.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v253 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v354.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vceqq_s8(v69, v154);
    v358 = vaddq_s8(v92, v337);
    v359 = v355.i64[0] + v338;
    v360 = v356 | (v354.i64[1] << v359);
    if ((v359 & 0x3F) + v355.i64[1] >= 0x40)
    {
      *(v253 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      v360 = v354.i64[1] >> -(v359 & 0x3F);
      if ((v359 & 0x3F) == 0)
      {
        v360 = 0;
      }
    }

    v361 = vandq_s8(v164, v357);
    v362 = v359 + v355.i64[1];
    v363.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v363.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v364.i64[0] = -1;
    v364.i64[1] = -1;
    v365 = vandq_s8(vshlq_u8(v364, vaddq_s8(v153, v363)), v358);
    v366 = vmovl_u8(*v153.i8);
    v367 = vmovl_high_u8(v153);
    v368 = vpaddq_s16(vshlq_u16(vmovl_u8(*v365.i8), vtrn1q_s16(0, v366)), vshlq_u16(vmovl_high_u8(v365), vtrn1q_s16(0, v367)));
    v369 = vpaddq_s16(v366, v367);
    v370 = vmovl_u16(*v369.i8);
    v371 = vmovl_high_u16(v369);
    v372 = vpaddq_s32(vshlq_u32(vmovl_u16(*v368.i8), vtrn1q_s32(0, v370)), vshlq_u32(vmovl_high_u16(v368), vtrn1q_s32(0, v371)));
    v373 = vpaddq_s32(v370, v371);
    v374.i64[0] = v372.u32[0];
    v374.i64[1] = v372.u32[1];
    v375 = v374;
    v374.i64[0] = v372.u32[2];
    v374.i64[1] = v372.u32[3];
    v376 = v374;
    v374.i64[0] = v373.u32[0];
    v374.i64[1] = v373.u32[1];
    v377 = v374;
    v374.i64[0] = v373.u32[2];
    v374.i64[1] = v373.u32[3];
    v378 = vpaddq_s64(vshlq_u64(v375, vzip1q_s64(0, v377)), vshlq_u64(v376, vzip1q_s64(0, v374)));
    v379 = vpaddq_s64(v377, v374);
    v380 = (v378.i64[0] << v362) | v360;
    if (v379.i64[0] + (v362 & 0x3F) >= 0x40)
    {
      *(v253 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
      v380 = v378.i64[0] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v380 = 0;
      }
    }

    v381 = vaddq_s8(v126, v361);
    v382 = v379.i64[0] + v362;
    v383 = v380 | (v378.i64[1] << v382);
    if ((v382 & 0x3F) + v379.i64[1] >= 0x40)
    {
      *(v253 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v378.i64[1] >> -(v382 & 0x3F);
      if ((v382 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = v382 + v379.i64[1];
    v385.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v385.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v386.i64[0] = -1;
    v386.i64[1] = -1;
    v387 = vandq_s8(vshlq_u8(v386, vaddq_s8(v154, v385)), v381);
    v388 = vmovl_u8(*v154.i8);
    v389 = vmovl_high_u8(v154);
    v390 = vpaddq_s16(vshlq_u16(vmovl_u8(*v387.i8), vtrn1q_s16(0, v388)), vshlq_u16(vmovl_high_u8(v387), vtrn1q_s16(0, v389)));
    v391 = vpaddq_s16(v388, v389);
    v392 = vmovl_u16(*v391.i8);
    v393 = vmovl_high_u16(v391);
    v394 = vpaddq_s32(vshlq_u32(vmovl_u16(*v390.i8), vtrn1q_s32(0, v392)), vshlq_u32(vmovl_high_u16(v390), vtrn1q_s32(0, v393)));
    v395 = vpaddq_s32(v392, v393);
    v396.i64[0] = v394.u32[0];
    v396.i64[1] = v394.u32[1];
    v397 = v396;
    v396.i64[0] = v394.u32[2];
    v396.i64[1] = v394.u32[3];
    v398 = v396;
    v396.i64[0] = v395.u32[0];
    v396.i64[1] = v395.u32[1];
    v399 = v396;
    v396.i64[0] = v395.u32[2];
    v396.i64[1] = v395.u32[3];
    v400 = vpaddq_s64(vshlq_u64(v397, vzip1q_s64(0, v399)), vshlq_u64(v398, vzip1q_s64(0, v396)));
    v401 = vpaddq_s64(v399, v396);
    v402 = (v400.i64[0] << v384) | v383;
    if (v401.i64[0] + (v384 & 0x3F) > 0x3F)
    {
      *(v253 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      if ((v384 & 0x3F) != 0)
      {
        v402 = v400.i64[0] >> -(v384 & 0x3F);
      }

      else
      {
        v402 = 0;
      }
    }

    v403 = v401.i64[0] + v384;
    v404 = v402 | (v400.i64[1] << v403);
    if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
    {
      *(v253 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
      v404 = v400.i64[1] >> -(v403 & 0x3F);
      if ((v403 & 0x3F) == 0)
      {
        v404 = 0;
      }
    }

    v405 = v403 + v401.i64[1];
    if ((v405 & 0x3F) != 0)
    {
      *(v253 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
    }

    result = (v405 - v254 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v76 = *MEMORY[0x29EDCA608];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v72 + 8;
        v23 = (a3 + 2);
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
          do
          {
            v27 = *(v24 - 1);
            v28 = *v24;
            v24 += 2;
            *(v25 - 4) = v27;
            *v25 = v28;
            v25 += 8;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 += 2;
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }

      else
      {
        v29 = 0;
        v30 = &v72 + 8;
        v31 = (a3 + 2);
        v32 = &v72 + ((a5 >> 1) & 0x3F);
        do
        {
          v33 = v31;
          v34 = v30;
          v35 = a5 & 0x7E;
          do
          {
            v36 = *(v33 - 1);
            v37 = *v33;
            v33 += 2;
            *(v34 - 4) = v36;
            *v34 = v37;
            v34 += 8;
            v35 -= 2;
          }

          while (v35);
          v38 = (a3 + v29 * a4 + 2 * v20);
          v39 = v32;
          v40 = a5 - v20;
          do
          {
            v41 = *v38++;
            *v39 = v41;
            v39 = (v39 + 8);
            --v40;
          }

          while (v40);
          ++v29;
          v30 += 2;
          v31 = (v31 + a4);
          v32 = (v32 + 2);
        }

        while (v29 != a6);
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
      v13 = &v72 + 1;
      v14 = v11;
      do
      {
        v15 = *(v12 - 1);
        v16 = *v12++;
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
        v18 = &v72 + v11;
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

  v56 = v72;
  v57 = BYTE1(v72);
  v58 = BYTE8(v72);
  v59 = BYTE9(v72);
  v60 = BYTE2(v72);
  v61 = BYTE3(v72);
  v62 = BYTE10(v72);
  v63 = BYTE11(v72);
  v64 = v73;
  v65 = BYTE1(v73);
  v66 = BYTE8(v73);
  v67 = BYTE9(v73);
  v68 = BYTE2(v73);
  v69 = BYTE3(v73);
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

  v70 = BYTE10(v73);
  v71 = BYTE11(v73);
  if (a6 >= 2)
  {
    v44 = 2;
  }

  else
  {
    v44 = a6;
  }

  if (a6 >= 2)
  {
    v45 = a6 - 2;
  }

  else
  {
    v45 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v42, v44);
  v56 = BYTE4(v72);
  v57 = BYTE5(v72);
  v58 = BYTE12(v72);
  v59 = BYTE13(v72);
  v60 = BYTE6(v72);
  v61 = BYTE7(v72);
  v62 = BYTE14(v72);
  v63 = HIBYTE(v72);
  v64 = BYTE4(v73);
  v65 = BYTE5(v73);
  v66 = BYTE12(v73);
  v67 = BYTE13(v73);
  v68 = BYTE6(v73);
  v69 = BYTE7(v73);
  v70 = BYTE14(v73);
  v71 = HIBYTE(v73);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v45;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 12, &v56, a7, v42, v47);
  v56 = v74;
  v57 = BYTE1(v74);
  v58 = BYTE8(v74);
  v59 = BYTE9(v74);
  v60 = BYTE2(v74);
  v61 = BYTE3(v74);
  v62 = BYTE10(v74);
  v63 = BYTE11(v74);
  v64 = v75;
  v65 = BYTE1(v75);
  v66 = BYTE8(v75);
  v67 = BYTE9(v75);
  v68 = BYTE2(v75);
  v69 = BYTE3(v75);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v43;
  }

  v70 = BYTE10(v75);
  v71 = BYTE11(v75);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v44);
  v56 = BYTE4(v74);
  v57 = BYTE5(v74);
  v58 = BYTE12(v74);
  v59 = BYTE13(v74);
  v60 = BYTE6(v74);
  v61 = BYTE7(v74);
  v62 = BYTE14(v74);
  v63 = HIBYTE(v74);
  v64 = BYTE4(v75);
  v65 = BYTE5(v75);
  v66 = BYTE12(v75);
  v67 = BYTE13(v75);
  v68 = BYTE6(v75);
  v69 = BYTE7(v75);
  v70 = BYTE14(v75);
  v71 = HIBYTE(v75);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 36, &v56, a7, v49, v47);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v350 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v299 = v7;
  v8 = a4 < 2 || a5 == 0;
  v298 = v8;
  v9 = a4 < 2 || a5 < 2;
  v297 = v9;
  v10 = a4 < 3 || a5 == 0;
  v296 = v10;
  v11 = a4 < 3 || a5 < 2;
  v295 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v294 = v6;
  v12 = a4 < 4 || a5 < 2;
  v293 = v12;
  v13 = &v332;
  v14 = &v334;
  v15 = &v338;
  v16 = &v342;
  v17 = &v346;
  v18 = &v348;
  v19 = &v317;
  v20 = &v315;
  v21 = &v313;
  v22 = &v311;
  v23 = &v309;
  v24 = v307;
  v25 = 1;
  v26 = &v336;
  v27 = &v340;
  v28 = &v344;
  v292 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)4,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v298)
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
    if (v299)
    {
      if (v297)
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
      if (v297)
      {
LABEL_69:
        if (v296)
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
    if (v296)
    {
LABEL_70:
      if (v294)
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
    if (!v294)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v292;
    if (!v295)
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

    if (!v293)
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
    if ((v292 | 2) == 3)
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
    v19 = &v316;
    v20 = &v314;
    v21 = &v312;
    v22 = &v310;
    v23 = &v308;
    v24 = v306;
    v14 = &v335;
    v13 = &v333;
    v15 = &v339;
    v26 = &v337;
    v16 = &v343;
    v27 = &v341;
    v17 = &v347;
    v28 = &v345;
    v18 = &v349;
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
  v286 = v71;
  v72 = v309;
  v73 = v348;
  v74 = v349;
  v76 = v349 >= v348;
  v77 = v308;
  v78 = kDQuadParamTable[160 * v308 + 6 + 10 * v349];
  v320 = kDQuadParamTable[160 * v309 + 6 + 10 * v348];
  v75 = v320;
  v321 = v78;
  v322[0] = v320;
  v322[1] = v78;
  if (*(&v348 + (v349 >= v348)) == *(&v348 + (v349 < v348)))
  {
    v79 = v320;
  }

  else
  {
    v80 = v322[v349 < v348];
    v79 = v320;
    if (v80 >= 1)
    {
      *(&v320 + (v349 < v348)) = 0;
      *(&v320 + v76) += v80;
      v79 = v320;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 1);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v305 = v85;
  v86 = v81 + v83;
  v303 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v303 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v305 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v303 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v292 == 4)
  {
    v93 = 1 << (v317 - 1);
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

    if (v286)
    {
      if (v298)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v334 | v95) == 0xFFFFFFFF || v334 == v93)
      {
        v92 = 1;
      }

      if (!v299)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v297)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v338 | v95) == 0xFFFFFFFF || v338 == v93)
      {
        v92 = 1;
      }

      if (!v296)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v294)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v342 | v95) == 0xFFFFFFFF || v342 == v93)
      {
        v92 = 1;
      }

      if (!v295)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v293)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v332 | v95) == 0xFFFFFFFF || v332 == v93)
      {
        v92 = 1;
      }

      if (!v298)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v299)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v336 | v95) == 0xFFFFFFFF || v336 == v93)
      {
        v92 = 1;
      }

      if (!v297)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v296)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v340 | v95) == 0xFFFFFFFF || v340 == v93)
      {
        v92 = 1;
      }

      if (!v294)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v295)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v344 | v95) == 0xFFFFFFFF || v344 == v93)
      {
        v92 = 1;
      }

      if (!v293)
      {
LABEL_204:
        if ((v346 | v95) == 0xFFFFFFFF || v346 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 4;
  v97 = v286;
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
  v304 = v103;
  v104 = v102 + v101;
  v302 = v102 + v101;
  v105 = v321 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v302 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v304 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v302 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v282 = v73;
  if (v292 == 4)
  {
    v108 = 1 << (v316 - 1);
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

    if (v286)
    {
      if (v298)
      {
        goto LABEL_231;
      }

LABEL_402:
      v206 = (v335 | v110) == 0xFFFFFFFF || v335 == v108;
      v98 |= v206;
      if (!v299)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v297)
      {
        goto LABEL_233;
      }

LABEL_416:
      v210 = (v339 | v110) == 0xFFFFFFFF || v339 == v108;
      v98 |= v210;
      if (!v296)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v294)
      {
        goto LABEL_235;
      }

LABEL_430:
      v214 = (v343 | v110) == 0xFFFFFFFF || v343 == v108;
      v98 |= v214;
      if (v295)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v345 | v110) == 0xFFFFFFFF || v345 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v204 = (v333 | v110) == 0xFFFFFFFF || v333 == v108;
    v98 |= v204;
    if (!v298)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v299)
    {
      goto LABEL_232;
    }

LABEL_409:
    v208 = (v337 | v110) == 0xFFFFFFFF || v337 == v108;
    v98 |= v208;
    if (!v297)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v296)
    {
      goto LABEL_234;
    }

LABEL_423:
    v212 = (v341 | v110) == 0xFFFFFFFF || v341 == v108;
    v98 |= v212;
    if (!v294)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v295)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v336;
    v114 = v324;
    if (!v293)
    {
      v116 = (v347 | v110) == 0xFFFFFFFF || v347 == v108;
      v98 |= v116;
    }

    v284 = v98;
  }

  else
  {
    v284 = v98;
    v113 = &v336;
    v114 = v324;
  }

  v117 = 0;
  v118 = v286;
  if (v100 >> v104 > 4)
  {
    v118 = 1;
  }

  v283 = v118;
  v301 = 0;
  v300 = 0;
  v119 = &v317;
  v120 = &v315;
  v319 = 0;
  v291 = &v311;
  v121 = &v348;
  v122 = &v309;
  v289 = v307;
  v123 = &v305;
  v124 = &v303;
  memset(v318, 0, sizeof(v318));
  v125 = &v301;
  v126 = 1;
  v127 = v323;
  v128 = &v332;
  v129 = &v327 + 4;
  v130 = &v326 + 4;
  v131 = &v327;
  v133 = &v325 + 4;
  v132 = &v326;
  v134 = &v338;
  v135 = &v325;
  v136 = &v334;
  v138 = &v342;
  v137 = &v340;
  v140 = &v346;
  v139 = &v344;
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

    v290 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v286)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v298)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v299)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v297)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v296)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v294)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v295)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v293)
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

    v161 = &v323[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v291;
    v164 = v318 + 28 * v117;
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
                if ((v292 | 2) != 3 || (v169 = *(&v332 + v162), v170 = *v289, v169 != v170) && ((v292 | 2) != 3 || v160 + v170 != v169))
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

        if (v166 >> v147 || (*(&v332 + v162) ^ v148) == 0xFFFFFFFF)
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
    v119 = &v316;
    v120 = &v314;
    v291 = &v310;
    v122 = &v308;
    v289 = v306;
    v123 = &v304;
    v124 = &v302;
    v125 = &v300;
    v114 = &v328 + 4;
    v127 = &v328;
    v133 = &v329 + 4;
    v135 = &v329;
    v130 = &v330 + 4;
    v132 = &v330;
    v129 = &v331 + 4;
    v131 = &v331;
    v136 = &v335;
    v128 = &v333;
    v134 = &v339;
    v113 = &v337;
    v138 = &v343;
    v137 = &v341;
    v140 = &v347;
    v139 = &v345;
    v121 = &v349;
    v117 = 1;
  }

  while ((v290 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if ((v283 | v284))
  {
    v173 = 0;
    v174 = 0;
    v175 = v317;
    v176 = v317 - 2;
    v177 = v316;
    v178 = v316 - 2;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v332 + 2 * v173) >> 2;
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

      if (v175 != 2 && v179 - v172 + (v174 << 6) + v176 <= 0x60)
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
        v188 = *(&v332 + 2 * v173 + 1) >> 2;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 2 && v179 - v172 + (v174 << 6) + v178 <= 0x60)
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
        return (v283 | v284) & 1;
      }
    }
  }

  if (v315 | v282)
  {
    if (v282 <= 2)
    {
      v193 = 0;
      v194 = 0;
      v195 = v282 + 1;
      goto LABEL_439;
    }

    v216 = 0;
    v195 = 0;
    v215 = 0;
    v193 = (v282 + 6) & 7;
    v194 = 1;
  }

  else
  {
    v193 = 0;
    v194 = 0;
    v195 = 0;
LABEL_439:
    v215 = 1;
    v216 = 2;
  }

  v217 = (v193 << v172) | *v171;
  *v171 = v217;
  v218 = v172 | 3;
  v219 = v349;
  if (v314 | v349)
  {
    if (v349 < 3)
    {
      v220 = 0;
      v221 = 0;
      v222 = v349 + 1;
      goto LABEL_445;
    }

    v224 = 0;
    v222 = 0;
    v223 = 0;
    v220 = (v349 + 6) & 7;
    v221 = 1;
  }

  else
  {
    v220 = 0;
    v221 = 0;
    v222 = 0;
LABEL_445:
    v223 = 1;
    v224 = 2;
  }

  if ((v218 - v172) <= 0x5D)
  {
    *v171 = (v220 << v218) | v217;
    v218 = v172 | 6;
  }

  if (!v215)
  {
    v226 = 0;
    v227 = 6;
    if (v223)
    {
      goto LABEL_462;
    }

LABEL_455:
    v228 = v317;
    if (!v282)
    {
      goto LABEL_470;
    }

    goto LABEL_474;
  }

  v225 = v216;
  if (v218 - v172 + v216 > 0x60)
  {
    v194 = 1;
  }

  if (v194)
  {
    v226 = 0;
  }

  else
  {
    v226 = 0;
    v229 = 0;
    do
    {
      v230 = 64 - v218;
      if (64 - v218 >= v225)
      {
        v230 = v225;
      }

      v171[v226] |= ((v195 >> v229) & ~(-1 << v230)) << v218;
      v229 += v230;
      v231 = v230 + v218;
      v226 += v231 >> 6;
      v218 = v231 & 0x3F;
      v225 -= v230;
    }

    while (v225);
  }

  v227 = v216 + 6;
  if (!v223)
  {
    goto LABEL_455;
  }

LABEL_462:
  v232 = v224;
  if (v218 - v172 + (v226 << 6) + v224 > 0x60)
  {
    v221 = 1;
  }

  if ((v221 & 1) == 0)
  {
    v233 = 0;
    do
    {
      v234 = 64 - v218;
      if (64 - v218 >= v232)
      {
        v234 = v232;
      }

      v171[v226] |= ((v222 >> v233) & ~(-1 << v234)) << v218;
      v233 += v234;
      v235 = v234 + v218;
      v226 += v235 >> 6;
      v218 = v235 & 0x3F;
      v232 -= v234;
    }

    while (v232);
  }

  v227 += v224;
  v228 = v317;
  if (!v282)
  {
LABEL_470:
    if (v228 != 2 && v228 < 0x10)
    {
      v236 = v316;
      if (!v219)
      {
        goto LABEL_535;
      }

LABEL_482:
      v243 = v304;
      if (v304 <= 0x100 && v304 && v218 - v172 + (v226 << 6) + v304 <= 0x60)
      {
        v244 = 0;
        v245 = v300 >> (v236 - v304);
        v246 = v304;
        do
        {
          v247 = 64 - v218;
          if (64 - v218 >= v246)
          {
            v247 = v246;
          }

          v171[v226] |= ((v245 >> v244) & ~(-1 << v247)) << v218;
          v244 += v247;
          v248 = v247 + v218;
          v226 += v248 >> 6;
          v218 = v248 & 0x3F;
          v246 -= v247;
        }

        while (v246);
      }

      v227 += v243;
      goto LABEL_490;
    }
  }

LABEL_474:
  v237 = v305;
  if (v305 <= 0x100 && v305 && v218 - v172 + (v226 << 6) + v305 <= 0x60)
  {
    v238 = 0;
    v239 = v301 >> (v228 - v305);
    v240 = v305;
    do
    {
      v241 = 64 - v218;
      if (64 - v218 >= v240)
      {
        v241 = v240;
      }

      v171[v226] |= ((v239 >> v238) & ~(-1 << v241)) << v218;
      v238 += v241;
      v242 = v241 + v218;
      v226 += v242 >> 6;
      v218 = v242 & 0x3F;
      v240 -= v241;
    }

    while (v240);
  }

  v227 += v237;
  v236 = v316;
  if (v219)
  {
    goto LABEL_482;
  }

LABEL_535:
  if (v236 == 2 || v236 >= 0x10)
  {
    goto LABEL_482;
  }

LABEL_490:
  v249 = v303;
  if (v303)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x60)
    {
      v250 = 0;
      v251 = v311;
      v252 = 3;
      do
      {
        v253 = 64 - v218;
        if (64 - v218 >= v252)
        {
          v253 = v252;
        }

        v171[v226] |= ((v251 >> v250) & ~(-1 << v253)) << v218;
        v250 += v253;
        v254 = v253 + v218;
        v226 += v254 >> 6;
        v218 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    v227 += 3;
  }

  v255 = v302;
  if (v302)
  {
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x60)
    {
      v256 = 0;
      v257 = v310;
      v258 = 3;
      do
      {
        v259 = 64 - v218;
        if (64 - v218 >= v258)
        {
          v259 = v258;
        }

        v171[v226] |= ((v257 >> v256) & ~(-1 << v259)) << v218;
        v256 += v259;
        v260 = v259 + v218;
        v226 += v260 >> 6;
        v218 = v260 & 0x3F;
        v258 -= v259;
      }

      while (v258);
    }

    v227 += 3;
  }

  v261 = 96 - v227;
  v262 = (96 - v227) / 7u;
  v263 = v261 % 7;
  if ((v263 - 257) >= 0xFFFFFF00 && v218 - v172 + (v226 << 6) + v263 <= 0x60)
  {
    do
    {
      v264 = 64 - v218;
      if (64 - v218 >= v263)
      {
        v264 = v263;
      }

      v265 = v264 + v218;
      v226 += v265 >> 6;
      v218 = v265 & 0x3F;
      v263 -= v264;
    }

    while (v263);
  }

  v266 = 0;
  v267 = v255 + v249;
  while (2)
  {
    if (v249 && v249 <= 0x100 && v218 - v172 + (v226 << 6) + v249 <= 0x60)
    {
      v268 = 0;
      v269 = *(v318 + v266);
      v270 = v249;
      do
      {
        v271 = 64 - v218;
        if (64 - v218 >= v270)
        {
          v271 = v270;
        }

        v171[v226] |= ((v269 >> v268) & ~(-1 << v271)) << v218;
        v268 += v271;
        v272 = v271 + v218;
        v226 += v272 >> 6;
        v218 = v272 & 0x3F;
        v270 -= v271;
      }

      while (v270);
    }

    if (v255)
    {
      if (v255 <= 0x100 && v218 - v172 + (v226 << 6) + v255 <= 0x60)
      {
        v273 = 0;
        v274 = *(&v318[1] + v266 + 3);
        v275 = v255;
        do
        {
          v276 = 64 - v218;
          if (64 - v218 >= v275)
          {
            v276 = v275;
          }

          v171[v226] |= ((v274 >> v273) & ~(-1 << v276)) << v218;
          v273 += v276;
          v277 = v276 + v218;
          v226 += v277 >> 6;
          v218 = v277 & 0x3F;
          v275 -= v276;
        }

        while (v275);
      }

      v278 = v262 - v267;
      if (v262 != v267)
      {
LABEL_528:
        if (v278 <= 0x100 && v218 - v172 + (v226 << 6) + v278 <= 0x60)
        {
          do
          {
            v279 = 64 - v218;
            if (64 - v218 >= v278)
            {
              v279 = v278;
            }

            v280 = v279 + v218;
            v226 += v280 >> 6;
            v218 = v280 & 0x3F;
            v278 -= v279;
          }

          while (v278);
        }
      }
    }

    else
    {
      v278 = v262 - v249;
      if (v262 != v249)
      {
        goto LABEL_528;
      }
    }

    if (++v266 != 7)
    {
      continue;
    }

    return (v283 | v284) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 91) >= 0xFFFFFFFFFFFFFF9FLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 6;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v4 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      v12 = 4 * (v13 & 0x3F);
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 29 >> 31) + 2) | v12;
    if (v12 == 252)
    {
      v18 = 255;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 128 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 91) < 0xFFFFFFFFFFFFFF9FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 128 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 252)
        {
          v10 = 255;
        }

        else
        {
          v10 |= (v10 << 29 >> 31) + 2;
        }
      }

      goto LABEL_3;
    }

    v20 = 0;
    v21 = 0;
    v22 = 6;
    do
    {
      v23 = 64 - v9;
      if (64 - v9 >= v22)
      {
        v23 = v22;
      }

      v20 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v23)) << v21;
      v21 += v23;
      v24 = v23 + v9;
      v4 += v24 >> 6;
      v9 = v24 & 0x3F;
      v22 -= v23;
    }

    while (v22);
    v10 = 4 * (v20 & 0x3F);
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    result = v10 ^ v8;
    *(a2 + 8 * v3++ + 4) = result;
  }

  while (v3 != 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v173 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x5D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 95) < 0xFFFFFFFFFFFFFF9FLL)
    {
      v10 = 0;
LABEL_12:
      v11 = 0;
      v12 = 0;
      goto LABEL_13;
    }

    v10 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 2;
    do
    {
      v155 = 64 - v8;
      if (64 - v8 >= v154)
      {
        v155 = v154;
      }

      v152 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v155)) << v153;
      v153 += v155;
      v10 += (v155 + v8) >> 6;
      v8 = (v155 + v8) & 0x3F;
      v154 -= v155;
    }

    while (v154);
    v156 = v152 & 3;
    if (v156 > 1)
    {
      v11 = 0;
      if (v156 == 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      if (!v156)
      {
        goto LABEL_12;
      }

      v12 = 0;
      v11 = 255;
    }

LABEL_13:
    v13 = 8;
    v171 = v12;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v6 & 7) + 2;
  v13 = 6;
  v171 = v12;
  if (v9)
  {
LABEL_9:
    v163 = 0;
    v14 = v9 + 2;
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 - v4 + (v10 << 6) - 95) < 0xFFFFFFFFFFFFFF9FLL)
  {
    v13 += 2;
LABEL_16:
    v163 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v157 = 0;
  v158 = 0;
  v159 = 2;
  do
  {
    v160 = 64 - v8;
    if (64 - v8 >= v159)
    {
      v160 = v159;
    }

    v157 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v160)) << v158;
    v158 += v160;
    v161 = v160 + v8;
    v10 += v161 >> 6;
    v8 = v161 & 0x3F;
    v159 -= v160;
  }

  while (v159);
  v13 += 2;
  v162 = v157 & 3;
  if (v162 > 1)
  {
    v163 = 0;
    if (v162 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    if (!v162)
    {
      goto LABEL_16;
    }

    v14 = 0;
    v163 = 255;
  }

LABEL_17:
  v172 = v14;
  v15 = kDQuadParamTable;
  v17 = v14 >= v12;
  v18 = v14 < v12;
  v19 = v14;
  v20 = kDQuadParamTable[10 * v14 + 6];
  v168 = kDQuadParamTable[10 * v12 + 6];
  v16 = v168;
  v169 = v20;
  v170[0] = v168;
  v170[1] = v20;
  if (*(&v171 + (v14 >= v12)) == *(&v171 + (v14 < v12)))
  {
    v21 = v168;
  }

  else
  {
    v22 = v170[v14 < v12];
    v21 = v168;
    if (v22 >= 1)
    {
      *(&v168 + v18) = 0;
      *(&v168 + v17) += v22;
      v21 = v168;
    }
  }

  v23 = &kDQuadParamTable[10 * v12];
  v25 = v23[4];
  v24 = v23[5];
  v26 = v25 + 2;
  v27 = v24 + 2;
  v28 = v21 - v16;
  if (v28 < 0)
  {
    v29 = &kDQuadParamTable[10 * v12];
    if (v29[7] >= -v28)
    {
      goto LABEL_27;
    }

    v27 = v24 + 1;
    if (v29[8])
    {
      goto LABEL_27;
    }

    v28 = -1;
  }

  else
  {
    if (!v28)
    {
      goto LABEL_27;
    }

    v27 += v28;
  }

  v26 += v28;
LABEL_27:
  if (v26 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v26;
  }

  v31 = 8 * (v24 != 0);
  if (v31 >= v27)
  {
    v32 = v27;
  }

  else
  {
    v32 = v31;
  }

  v33 = &kDQuadParamTable[10 * v19];
  v35 = v33[4];
  v34 = v33[5];
  v36 = v35 + 2;
  LODWORD(v37) = v34 + 2;
  v38 = v169 - v20;
  if (v38 < 0)
  {
    v39 = -v38;
    v40 = &kDQuadParamTable[10 * v19];
    if (v40[7] < v39)
    {
      LODWORD(v37) = v34 + 1;
      if (!v40[8])
      {
        v38 = -1;
        goto LABEL_36;
      }
    }
  }

  else if (v38)
  {
    LODWORD(v37) = v38 + v37;
LABEL_36:
    v36 += v38;
  }

  if (v36 >= 8)
  {
    v41 = 8;
  }

  else
  {
    v41 = v36;
  }

  v42 = 8 * (v34 != 0);
  if (v42 >= v37)
  {
    v37 = v37;
  }

  else
  {
    v37 = v42;
  }

  if (v12)
  {
    v43 = 0;
    if (v26 && (v8 - v4 + (v10 << 6) + v30) <= 0x60)
    {
      v43 = 0;
      v44 = 0;
      v45 = v30;
      do
      {
        v46 = 64 - v8;
        if (64 - v8 >= v45)
        {
          v46 = v45;
        }

        v43 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v46)) << v44;
        v44 += v46;
        v47 = v46 + v8;
        v10 += v47 >> 6;
        v8 = v47 & 0x3F;
        v45 -= v46;
      }

      while (v45);
    }

    v11 = v43 << (8 - v30);
    v13 += v30;
  }

  if (v19)
  {
    v48 = 0;
    if (v36 && (v8 - v4 + (v10 << 6) + v41) <= 0x60)
    {
      v48 = 0;
      v49 = 0;
      v50 = v41;
      do
      {
        v51 = 64 - v8;
        if (64 - v8 >= v50)
        {
          v51 = v50;
        }

        v48 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v51)) << v49;
        v49 += v51;
        v52 = v51 + v8;
        v10 += v52 >> 6;
        v8 = v52 & 0x3F;
        v50 -= v51;
      }

      while (v50);
    }

    v163 = v48 << (8 - v41);
    v13 += v41;
  }

  v164 = 0;
  v165 = 0;
  if (v32)
  {
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x60)
    {
      v53 = 0;
      v54 = 0;
      v55 = 3;
      do
      {
        v56 = 64 - v8;
        if (64 - v8 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v8;
        v10 += v57 >> 6;
        v8 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
    }

    else
    {
      v53 = 0;
    }

    v165 = v53;
    v13 += 3;
  }

  if (v37)
  {
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x60)
    {
      v58 = 0;
      v59 = 0;
      v60 = 3;
      do
      {
        v61 = 64 - v8;
        if (64 - v8 >= v60)
        {
          v61 = v60;
        }

        v58 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v61)) << v59;
        v59 += v61;
        v62 = v61 + v8;
        v10 += v62 >> 6;
        v8 = v62 & 0x3F;
        v60 -= v61;
      }

      while (v60);
    }

    else
    {
      v58 = 0;
    }

    v164 = v58;
    v13 += 3;
  }

  v63 = 0;
  v64 = a3 & 0xFFFFFFFD;
  v65 = 96 - v13;
  v66 = (96 - v13) / 7u;
  v67 = (v8 | (v10 << 6)) + v65 % 7;
  v167 = 0;
  memset(v166, 0, sizeof(v166));
  do
  {
    v69 = v67 >> 6;
    v70 = v67 & 0x3F;
    if (v32)
    {
      if (v70 - v4 + (v67 & 0xFFFFFFFFFFFFFFC0) + v32 <= 0x60)
      {
        v71 = 0;
        v72 = 0;
        v73 = v32;
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

      *(v166 + v63) = v71;
    }

    if (v37)
    {
      if (v70 - v4 + (v69 << 6) + v37 <= 0x60)
      {
        v76 = 0;
        v77 = 0;
        v78 = v37;
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

      *(&v166[1] + v63 + 3) = v76;
      v68 = v37 + v32;
    }

    else
    {
      v68 = v32;
    }

    v67 = (v70 | (v69 << 6)) + v66 - v68;
    ++v63;
  }

  while (v63 != 7);
  v81 = 0;
  v82 = &v171;
  v83 = &v165;
  result = 0x1000000FFLL;
  v85 = 1;
  v86 = v166;
  v87 = v32;
  do
  {
    v90 = v85;
    v91 = *&v15[10 * *v82 + 2];
    if (v91 >> v87 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v91 >> v87;
    }

    v93 = v92 >> 1;
    v94 = (1 << (8 - v30)) >> 1;
    if (v92 >> 1 < v94)
    {
      v94 = v92 >> 1;
    }

    v95 = v11;
    v96 = 128 - v11;
    if (v11)
    {
      v97 = v94;
    }

    else
    {
      v97 = 0;
    }

    v98 = v11 == 128;
    v99 = (a2 + 4 * v81);
    if (v87)
    {
      v100 = v15;
      v101 = v91 + v95;
      v102 = -1 << v87;
      v103 = *v83;
      v104 = v96 / v92;
      if (!*v83)
      {
        v108 = 0;
        v107 = v97;
        v106 = v98;
        goto LABEL_137;
      }

      v105 = *v86;
      v106 = v104 == v105;
      if (v95 | v105)
      {
        if (v101 >= 0x100 && (v102 ^ v105) == -1)
        {
          v108 = 1;
          v107 = 255;
LABEL_137:
          v111 = v107 + v95;
          if (a3 != 4 || (v112 = 255, (v111 | 0x80000000) >> 22 != 1022))
          {
            if (v111 >= 0x100)
            {
              v112 = 255;
            }

            else
            {
              v112 = v111;
            }
          }

          v113 = v112 ^ 0x80;
          if (v106)
          {
            v113 = 0;
          }

          if (v64 != 1)
          {
            v113 = v112;
          }

          *(a2 + 4 * v81) = v113;
          if (v103 == 1)
          {
            v114 = v97;
            v115 = v98;
          }

          else
          {
            v116 = *(v166 + 7 * v81 + v108);
            v115 = v104 == v116;
            if (v95 | v116)
            {
              if (v101 >= 0x100 && (v102 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v114 = 255;
              }

              else
              {
                v114 = v93 + v92 * v116;
              }
            }

            else
            {
              v114 = 0;
            }

            ++v108;
          }

          v117 = v114 + v95;
          if (a3 != 4 || (v118 = 255, (v117 | 0x80000000) >> 22 != 1022))
          {
            if (v117 >= 0x100)
            {
              v118 = 255;
            }

            else
            {
              v118 = v117;
            }
          }

          v119 = v118 ^ 0x80;
          if (v115)
          {
            v119 = 0;
          }

          if (v64 != 1)
          {
            v119 = v118;
          }

          v99[2] = v119;
          if (v103 == 2)
          {
            v120 = v97;
            v121 = v98;
          }

          else
          {
            v122 = *(v166 + 7 * v81 + v108);
            v121 = v104 == v122;
            if (v95 | v122)
            {
              if (v101 >= 0x100 && (v102 ^ v122) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v120 = 255;
              }

              else
              {
                v120 = v93 + v92 * v122;
              }
            }

            else
            {
              v120 = 0;
            }

            ++v108;
          }

          v123 = v120 + v95;
          if (a3 != 4 || (v124 = 255, (v123 | 0x80000000) >> 22 != 1022))
          {
            if (v123 >= 0x100)
            {
              v124 = 255;
            }

            else
            {
              v124 = v123;
            }
          }

          v125 = v124 ^ 0x80;
          if (v121)
          {
            v125 = 0;
          }

          if (v64 != 1)
          {
            v125 = v124;
          }

          v99[4] = v125;
          if (v103 == 3)
          {
            v126 = v97;
            v127 = v98;
          }

          else
          {
            v128 = *(v166 + 7 * v81 + v108);
            v127 = v104 == v128;
            if (v95 | v128)
            {
              if (v101 >= 0x100 && (v102 ^ v128) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v126 = 255;
              }

              else
              {
                v126 = v93 + v92 * v128;
              }
            }

            else
            {
              v126 = 0;
            }

            ++v108;
          }

          v129 = v126 + v95;
          if (a3 != 4 || (v130 = 255, (v129 | 0x80000000) >> 22 != 1022))
          {
            if (v129 >= 0x100)
            {
              v130 = 255;
            }

            else
            {
              v130 = v129;
            }
          }

          v131 = v130 ^ 0x80;
          if (v127)
          {
            v131 = 0;
          }

          if (v64 != 1)
          {
            v131 = v130;
          }

          v99[6] = v131;
          if (v103 == 4)
          {
            v132 = v97;
            v133 = v98;
          }

          else
          {
            v134 = *(v166 + 7 * v81 + v108);
            v133 = v104 == v134;
            if (v95 | v134)
            {
              if (v101 >= 0x100 && (v102 ^ v134) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v132 = 255;
              }

              else
              {
                v132 = v93 + v92 * v134;
              }
            }

            else
            {
              v132 = 0;
            }

            ++v108;
          }

          v135 = v132 + v95;
          if (a3 != 4 || (v136 = 255, (v135 | 0x80000000) >> 22 != 1022))
          {
            if (v135 >= 0x100)
            {
              v136 = 255;
            }

            else
            {
              v136 = v135;
            }
          }

          v137 = v136 ^ 0x80;
          if (v133)
          {
            v137 = 0;
          }

          if (v64 != 1)
          {
            v137 = v136;
          }

          v99[8] = v137;
          if (v103 == 5)
          {
            v138 = v97;
            v139 = v98;
          }

          else
          {
            v140 = *(v166 + 7 * v81 + v108);
            v139 = v104 == v140;
            if (v95 | v140)
            {
              if (v101 >= 0x100 && (v102 ^ v140) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v138 = 255;
              }

              else
              {
                v138 = v93 + v92 * v140;
              }
            }

            else
            {
              v138 = 0;
            }

            ++v108;
          }

          v141 = v138 + v95;
          if (a3 != 4 || (v142 = 255, (v141 | 0x80000000) >> 22 != 1022))
          {
            if (v141 >= 0x100)
            {
              v142 = 255;
            }

            else
            {
              v142 = v141;
            }
          }

          v143 = v142 ^ 0x80;
          if (v139)
          {
            v143 = 0;
          }

          if (v64 != 1)
          {
            v143 = v142;
          }

          v99[10] = v143;
          if (v103 == 6)
          {
            v144 = v97;
            v145 = v98;
          }

          else
          {
            v146 = *(v166 + 7 * v81 + v108);
            v145 = v104 == v146;
            if (v95 | v146)
            {
              if (v101 >= 0x100 && (v102 ^ v146) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v144 = 255;
              }

              else
              {
                v144 = v93 + v92 * v146;
              }
            }

            else
            {
              v144 = 0;
            }

            ++v108;
          }

          v147 = v144 + v95;
          if (a3 != 4 || (v148 = 255, (v147 | 0x80000000) >> 22 != 1022))
          {
            if (v147 >= 0x100)
            {
              v148 = 255;
            }

            else
            {
              v148 = v147;
            }
          }

          v149 = v148 ^ 0x80;
          if (v145)
          {
            v149 = 0;
          }

          if (v64 != 1)
          {
            v149 = v148;
          }

          v99[12] = v149;
          if (v103 != 7)
          {
            v150 = *(v166 + 7 * v81 + v108);
            v98 = v104 == v150;
            if (v95 | v150)
            {
              if (v101 >= 0x100 && (v102 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v97 = 255;
              }

              else
              {
                v97 = v93 + v92 * v150;
              }
            }

            else
            {
              v97 = 0;
            }
          }

          v151 = v97 + v95;
          if (a3 != 4 || (LODWORD(v88) = 255, (v151 | 0x80000000) >> 22 != 1022))
          {
            if (v151 >= 0x100)
            {
              LODWORD(v88) = 255;
            }

            else
            {
              LODWORD(v88) = v97 + v95;
            }
          }

          v89 = v88 ^ 0x80;
          if (v98)
          {
            v89 = 0;
          }

          if (v64 == 1)
          {
            LODWORD(v88) = v89;
          }

          v15 = v100;
          goto LABEL_105;
        }

        v107 = v93 + v92 * v105;
      }

      else
      {
        v107 = 0;
      }

      v108 = 1;
      goto LABEL_137;
    }

    if (a3 == 4)
    {
      if ((v95 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v88) = 255;
      }

      else
      {
        v88 = 4286578687;
        if ((v95 & 0xFFC00000) != 0xFF800000)
        {
          v88 = v95;
        }

        if (v88 >= 0x100)
        {
          LODWORD(v88) = 255;
        }
      }
    }

    else
    {
      if (v95 >= 0xFF)
      {
        LODWORD(v88) = 255;
      }

      else
      {
        LODWORD(v88) = v95;
      }

      v110 = v88 ^ 0x80;
      if (v92 > v96)
      {
        v110 = 0;
      }

      if (v64 == 1)
      {
        LODWORD(v88) = v110;
      }
    }

    *v99 = v88;
    v99[2] = v88;
    v99[4] = v88;
    v99[6] = v88;
    v99[8] = v88;
    v99[10] = v88;
    v99[12] = v88;
LABEL_105:
    v85 = 0;
    v99[14] = v88;
    v83 = &v164;
    v86 = &v166[1] + 3;
    v11 = v163;
    v87 = v37;
    LOBYTE(v30) = v41;
    v82 = &v172;
    v81 = 1;
  }

  while ((v90 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int8x8_t a6, double a7, int8x8_t a8)
{
  v321 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v11 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    v12 = (a1 + a2);
    *v12 = 0;
    v12[1] = 0;
    v13 = (a1 + 2 * a2);
    *v13 = 0;
    v13[1] = 0;
    v14 = (a1 + a2 + 2 * a2);
LABEL_6:
    *v14 = 0;
    v14[1] = 0;
    return v11;
  }

  v8 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v306, a5);
    }

    v285 = v308;
    v286 = v306;
    v297 = v310;
    v302 = v311;
    v299 = v312;
    v300 = v309;
    v287 = v313;
    v282 = WORD2(v306);
    v283 = v314;
    v290 = v307;
    v291 = v315;
    v284 = v316;
    v301 = v317;
    v298 = v319;
    v278 = v320;
    v279 = v318;
    v16 = a3 + 12;
    if ((v8 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v16, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v16, &v306, a5);
    }

    v292 = v307;
    v293 = v306;
    v274 = v308;
    v275 = WORD2(v306);
    v295 = v311;
    v296 = v309;
    v272 = v312;
    v273 = v310;
    v288 = v315;
    v289 = v313;
    v270 = v316;
    v271 = v314;
    v294 = v317;
    v305 = v319;
    v268 = v320;
    v269 = v318;
    v17 = a3 + 24;
    if ((v8 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v17, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v17, &v306, a5);
    }

    v18 = v306;
    v266 = v308;
    v267 = WORD2(v306);
    v280 = v311;
    v281 = v309;
    v264 = v312;
    v265 = v310;
    v276 = v313;
    v277 = v307;
    v19 = v315;
    v263 = v314;
    v20 = v316;
    v21 = v317;
    v22 = v318;
    v23 = v319;
    v24 = v320;
    v25 = a3 + 36;
    if ((v8 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v25, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v25, &v306, a5);
    }

    *(a1 + 8) = v18 | (v267 << 8);
    v26 = v306;
    *a1 = v286 | (v282 << 8);
    v27 = WORD2(v306);
    v28 = v307;
    *(a1 + 2) = v290 | (v285 << 8);
    v29 = v308;
    v30 = v309;
    *(a1 + 4) = v287 | (v283 << 8);
    v31 = v310;
    v32 = v311;
    *(a1 + 6) = v291 | (v284 << 8);
    v33 = v312;
    *(a1 + 10) = v277 | (v266 << 8);
    v34 = v313;
    *(a1 + 12) = v276 | (v263 << 8);
    v35 = v314;
    *(a1 + 14) = v19 | (v20 << 8);
    v36 = v315;
    v37 = v316;
    v38 = (a1 + a2);
    *v38 = v300 | (v297 << 8);
    v39 = v317;
    v40 = v318;
    v38[1] = v302 | (v299 << 8);
    v41 = v319;
    v42 = v26 | (v27 << 8);
    v43 = v320;
    v38[2] = v301 | (v279 << 8);
    v38[3] = v298 | (v278 << 8);
    v38[4] = v281 | (v265 << 8);
    v38[5] = v280 | (v264 << 8);
    v38[6] = v21 | (v22 << 8);
    v38[7] = v23 | (v24 << 8);
    v44 = (a1 + a2 + a2);
    *v44 = v293 | (v275 << 8);
    v44[1] = v292 | (v274 << 8);
    v44[2] = v289 | (v271 << 8);
    v44[3] = v288 | (v270 << 8);
    v44[4] = v42;
    v44[5] = v28 | (v29 << 8);
    v44[6] = v34 | (v35 << 8);
    v44[7] = v36 | (v37 << 8);
    v45 = (v44 + a2);
    *v45 = v296 | (v273 << 8);
    v45[1] = v295 | (v272 << 8);
    v45[2] = v294 | (v269 << 8);
    v45[3] = v305 | (v268 << 8);
    v45[4] = v30 | (v31 << 8);
    v45[5] = v32 | (v33 << 8);
    v45[6] = v39 | (v40 << 8);
    v11 = 48;
    v45[7] = v41 | (v43 << 8);
    return v11;
  }

  if (a4 == 63)
  {
    v46 = *a3;
    v47 = *(a3 + 16);
    v48 = *(a3 + 32);
    v49 = *(a3 + 48);
    *a1 = vuzp1q_s32(*a3, v48);
    *(a1 + a2) = vuzp2q_s32(v46, v48);
    v50 = (a1 + 2 * a2);
    *v50 = vuzp1q_s32(v47, v49);
    *(v50 + a2) = vuzp2q_s32(v47, v49);
    return 64;
  }

  if (a4 == 1)
  {
    v15 = vld1q_dup_s16(a3);
    *a1 = v15;
    *(a1 + a2) = v15;
    *(a1 + 2 * a2) = v15;
    *(a1 + 3 * a2) = v15;
    return 2;
  }

  v52 = 8 * (a3 & 7);
  v53 = a3 & 0xFFFFFFFFFFFFFFF8;
  v54 = v52 + 14;
  v55 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v52;
  if (v52 >= 0x33)
  {
    v55 |= *(v53 + 8) << (-8 * (a3 & 7u));
  }

  v56 = 4 * v55;
  v57 = vdup_n_s32(v56);
  a6.i32[0] = v56;
  a8.i32[0] = a4 >> 6;
  v58.i32[0] = vorr_s8(a6, a8).u32[0];
  v58.i32[1] = vshr_n_u32(v57, 5uLL).i32[1];
  v59 = vadd_s32(vand_s8(vshl_u32(v57, 0xFFFFFFF3FFFFFFF6), 0x700000007), 0x100000001);
  v60 = v52 + 30;
  v61 = v54 & 0x3E;
  v62 = (v53 + ((v54 >> 3) & 8));
  v63 = *v62 >> v61;
  if (v61 >= 0x31)
  {
    v63 |= v62[1] << -v61;
  }

  v64 = (8 * (a3 & 7)) | 0x180;
  v58.i8[1] = v58.i8[4];
  v65 = vdupq_lane_s16(vand_s8(v58, 0x1F1F1F1F1F1F1F1FLL), 0);
  v59.i8[1] = v59.i8[4];
  v66 = vdupq_lane_s16(v59, 0);
  v67.i64[0] = 0x303030303030303;
  v67.i64[1] = 0x303030303030303;
  v68 = vandq_s8(v65, v67);
  v69 = vbicq_s8(v66, vceqq_s8(v68, v67));
  v67.i64[0] = 0x202020202020202;
  v67.i64[1] = 0x202020202020202;
  v70 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v65.i8), 0x4000400040004)))), v67);
  if (vmaxvq_s8(v70) < 1)
  {
    v79 = 0;
    v103.i64[0] = -1;
    v103.i64[1] = -1;
    v99 = v69;
    v98 = v69;
    v97 = v69;
    v102.i64[0] = -1;
    v102.i64[1] = -1;
    v96 = v69;
    v101.i64[0] = -1;
    v101.i64[1] = -1;
    v100.i64[0] = -1;
    v100.i64[1] = -1;
  }

  else
  {
    v71 = vmovl_u8(*&vpaddq_s8(v70, v70));
    v72 = vmovl_u16(*&vpaddq_s16(v71, v71));
    v73 = vpaddq_s32(v72, v72).u64[0];
    v74.i64[0] = v73;
    v74.i64[1] = HIDWORD(v73);
    v75 = v74;
    v76 = vaddvq_s64(v74);
    v77 = v60 + v76;
    v78 = v76 <= 0x80 && v64 >= v77;
    v79 = !v78;
    v80 = 0uLL;
    if (v78)
    {
      v81 = v60 & 0x3E;
      v82 = vaddq_s64(vdupq_n_s64(v81), vzip1q_s64(0, v75));
      v83 = (v53 + ((v60 >> 3) & 8));
      v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v82)));
      if (v81 + v76 >= 0x81)
      {
        v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v80);
      }

      v60 = v77;
    }

    v84 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
    v85.i64[0] = v84.u32[0];
    v85.i64[1] = v84.u32[1];
    v86 = vshlq_u64(v80, vnegq_s64(v85));
    v87 = vuzp1q_s32(vzip1q_s64(v80, v86), vzip2q_s64(v80, v86));
    v88 = vshlq_u32(v87, vnegq_s32((*&v71 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v89 = vuzp1q_s16(vzip1q_s32(v87, v88), vzip2q_s32(v87, v88));
    v90 = vzip1q_s16(v89, vshlq_u16(v89, vnegq_s16(vmovl_u8(vuzp1_s8(*v70.i8, *v65.i8)))));
    *v90.i8 = vmovn_s16(v90);
    v87.i64[0] = 0x101010101010101;
    v87.i64[1] = 0x101010101010101;
    v91 = vshlq_s8(v87, v70);
    v87.i64[0] = -1;
    v87.i64[1] = -1;
    v91.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v91, v87), v90), xmmword_29D2F0E50).u64[0];
    v92 = vdupq_lane_s16(*v91.i8, 0);
    v93 = vdupq_lane_s16(*v91.i8, 1);
    v94 = vdupq_lane_s16(*v91.i8, 2);
    v95 = vdupq_lane_s16(*v91.i8, 3);
    v96 = vsubq_s8(v69, v92);
    v97 = vsubq_s8(v69, v93);
    v98 = vsubq_s8(v69, v94);
    v99 = vsubq_s8(v69, v95);
    v100 = vceqzq_s8(v92);
    v101 = vceqzq_s8(v93);
    v102 = vceqzq_s8(v94);
    v103 = vceqzq_s8(v95);
  }

  v104.i64[0] = 0x808080808080808;
  v104.i64[1] = 0x808080808080808;
  v105 = 0uLL;
  v106 = vandq_s8(vextq_s8(vtstq_s8(v65, v104), 0, 0xEuLL), v69);
  v107 = vmovl_u8(*&vpaddq_s8(v106, v106));
  v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
  v109 = vpaddq_s32(v108, v108).u64[0];
  v110.i64[0] = v109;
  v110.i64[1] = HIDWORD(v109);
  v111 = v110;
  v112 = vaddvq_s64(v110);
  v113 = v60 + v112;
  if (v112 <= 0x80 && v64 >= v113)
  {
    v115 = v60 & 0x3F;
    v116 = vaddq_s64(vdupq_n_s64(v115), vzip1q_s64(0, v111));
    v117 = (v53 + 8 * (v60 >> 6));
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v117, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v116)), vshlq_u64(vdupq_lane_s64(v117->i64[0], 0), vnegq_s64(v116)));
    if (v115 + v112 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v117[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v116)), vshlq_u64(vdupq_laneq_s64(v117[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v116))), v105);
    }

    v60 = v113;
  }

  else
  {
    v79 = 1;
  }

  v118 = v65.i8[0] & 3;
  if (v118 == 2)
  {
    v119 = v64 < v60 + 4;
    v120 = v60 + 8;
    if (v64 >= v60 + 4)
    {
      v60 += 4;
    }

    else
    {
      v120 = v60 + 4;
    }

    if (v64 < v120)
    {
      v121 = 1;
    }

    else
    {
      v60 = v120;
      v121 = v119;
    }

    v79 |= v121;
  }

  v122 = 0uLL;
  v123 = vextq_s8(0, v96, 0xEuLL);
  v124 = vmovl_u8(*&vpaddq_s8(v123, v123));
  v125 = vmovl_u16(*&vpaddq_s16(v124, v124));
  v126 = vpaddq_s32(v125, v125).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v60 + v129;
  if (v129 <= 0x80 && v64 >= v130)
  {
    v133 = v60 & 0x3F;
    v134 = vaddq_s64(vdupq_n_s64(v133), vzip1q_s64(0, v128));
    v135 = (v53 + 8 * (v60 >> 6));
    v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v135, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v134)), vshlq_u64(vdupq_lane_s64(v135->i64[0], 0), vnegq_s64(v134)));
    if (v133 + v129 >= 0x81)
    {
      v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v135[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v134)), vshlq_u64(vdupq_laneq_s64(v135[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v134))), v132);
    }

    v60 = v130;
  }

  else
  {
    v79 = 1;
    v132 = 0uLL;
  }

  v136 = vmovl_u8(*&vpaddq_s8(v97, v97));
  v137 = vmovl_u16(*&vpaddq_s16(v136, v136));
  v138 = vpaddq_s32(v137, v137).u64[0];
  v139.i64[0] = v138;
  v139.i64[1] = HIDWORD(v138);
  v140 = v139;
  v141 = vaddvq_s64(v139);
  if (v141 >= 0x81)
  {
    v79 = 1;
  }

  else
  {
    v142 = vzip1_s32(*v137.i8, *&vextq_s8(v137, v137, 8uLL));
    v143.i64[0] = v142.u32[0];
    v143.i64[1] = v142.u32[1];
    v144 = v143;
    v145 = *&v136 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v146 = v60 + v141;
    if (v64 >= v60 + v141)
    {
      v147 = v60 & 0x3F;
      v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v140));
      v149 = (v53 + 8 * (v60 >> 6));
      v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
      if (v147 + v141 >= 0x81)
      {
        v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v122);
      }

      v60 = v146;
    }

    else
    {
      v79 = 1;
    }

    v150 = vshlq_u64(v122, vnegq_s64(v144));
    v151 = vuzp1q_s32(vzip1q_s64(v122, v150), vzip2q_s64(v122, v150));
    v152 = vshlq_u32(v151, vnegq_s32(v145));
    v153 = vuzp1q_s16(vzip1q_s32(v151, v152), vzip2q_s32(v151, v152));
    v154 = vshlq_u16(v153, vnegq_s16((*&v97 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v122 = vuzp1q_s8(vzip1q_s16(v153, v154), vzip2q_s16(v153, v154));
  }

  v155 = vmovl_u8(*&vpaddq_s8(v98, v98));
  v156 = vmovl_u16(*&vpaddq_s16(v155, v155));
  v157 = vpaddq_s32(v156, v156).u64[0];
  v158.i64[0] = v157;
  v158.i64[1] = HIDWORD(v157);
  v159 = v158;
  v160 = vaddvq_s64(v158);
  v161 = v60 + v160;
  if (v160 <= 0x80 && v64 >= v161)
  {
    v164 = v60 & 0x3F;
    v165 = vaddq_s64(vdupq_n_s64(v164), vzip1q_s64(0, v159));
    v166 = (v53 + 8 * (v60 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if (v164 + v160 >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v163);
    }

    v60 = v161;
  }

  else
  {
    v79 = 1;
    v163 = 0uLL;
  }

  v167 = vmovl_u8(*&vpaddq_s8(v99, v99));
  v168 = vmovl_u16(*&vpaddq_s16(v167, v167));
  v169 = vpaddq_s32(v168, v168).u64[0];
  v170.i64[0] = v169;
  v170.i64[1] = HIDWORD(v169);
  v171 = v170;
  v172 = vaddvq_s64(v170);
  v173 = v60 + v172;
  if (v172 > 0x80 || v64 < v173)
  {
    goto LABEL_91;
  }

  v175 = vaddq_s64(vdupq_n_s64(v60 & 0x3F), vzip1q_s64(0, v171));
  v176 = (v53 + 8 * (v60 >> 6));
  v177 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
  if ((v60 & 0x3F) + v172 >= 0x81)
  {
    v177 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v177);
  }

  if ((v79 & 1) != 0 || (v11 = (a4 & 0x3F) + 1, v64 + 8 * v11 - v173 - 384 >= 9) || v118 == 2)
  {
LABEL_91:
    v11 = 0;
    v306 |= 255 << (8 * (&v306 & 7u));
    *a1 = 0;
    *(a1 + 8) = 0;
    v178 = (a1 + a2);
    v179 = (a1 + 2 * a2);
    *v178 = 0;
    v178[1] = 0;
    v14 = (a1 + a2 + 2 * a2);
    *v179 = 0;
    v179[1] = 0;
    goto LABEL_6;
  }

  v180 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
  v181 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
  v182 = vzip1_s32(*v156.i8, *&vextq_s8(v156, v156, 8uLL));
  v183.i64[0] = v180.u32[0];
  v183.i64[1] = v180.u32[1];
  v184 = v183;
  v183.i64[0] = v181.u32[0];
  v183.i64[1] = v181.u32[1];
  v185 = v183;
  v183.i64[0] = v182.u32[0];
  v183.i64[1] = v182.u32[1];
  v186 = vshlq_u64(v105, vnegq_s64(v184));
  v187 = vshlq_u64(v132, vnegq_s64(v185));
  v188 = vshlq_u64(v163, vnegq_s64(v183));
  v189 = vuzp1q_s32(vzip1q_s64(v105, v186), vzip2q_s64(v105, v186));
  v190 = vuzp1q_s32(vzip1q_s64(v132, v187), vzip2q_s64(v132, v187));
  v191 = vuzp1q_s32(vzip1q_s64(v163, v188), vzip2q_s64(v163, v188));
  v192 = vshlq_u32(v189, vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v193 = vshlq_u32(v190, vnegq_s32((*&v124 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v194 = vshlq_u32(v191, vnegq_s32((*&v155 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v195 = vzip2q_s32(v190, v193);
  v196 = vuzp1q_s16(vzip1q_s32(v189, v192), vzip2q_s32(v189, v192));
  v197 = vuzp1q_s16(vzip1q_s32(v190, v193), v195);
  v198 = vuzp1q_s16(vzip1q_s32(v191, v194), vzip2q_s32(v191, v194));
  v199 = vshlq_u16(v196, vnegq_s16((*&v106 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v200 = vshlq_u16(v197, vnegq_s16((*&v123 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v201 = vshlq_u16(v198, vnegq_s16((*&v98 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v195.i32[0] = v63;
  v202 = vzip2q_s16(v196, v199);
  v203 = vzip1q_s16(v196, v199);
  v204 = vzip2q_s16(v197, v200);
  v205 = vzip1q_s16(v197, v200);
  v200.i64[0] = 0x808080808080808;
  v200.i64[1] = 0x808080808080808;
  v206 = vzip2q_s16(v198, v201);
  v207 = vzip1q_s16(v198, v201);
  v208 = vuzp1q_s8(v203, v202);
  v201.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v201.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v209 = vsubq_s8(v104, v106);
  v210 = vuzp1q_s8(v205, v204);
  v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v211 = vsubq_s8(v200, v123);
  v212 = vsubq_s8(v200, v97);
  v213 = vsubq_s8(v200, v98);
  v214 = vuzp1q_s8(v207, v206);
  v215 = vzip1_s32(*v168.i8, *&vextq_s8(v168, v168, 8uLL));
  v216.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v216.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v206.i64[0] = 0x808080808080808;
  v206.i64[1] = 0x808080808080808;
  v195.i8[1] = BYTE1(v63);
  v217 = vaddq_s8(v106, v201);
  v218 = vshlq_s8(v208, v209);
  v219 = vaddq_s8(v123, v205);
  v220 = vaddq_s8(v97, v205);
  v221 = vshlq_s8(v122, v212);
  v222 = vaddq_s8(v98, v205);
  v223 = vshlq_s8(v214, v213);
  v183.i64[0] = v215.u32[0];
  v183.i64[1] = v215.u32[1];
  v224 = *&v99 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v225 = vaddq_s8(v99, v216);
  v226 = vsubq_s8(v206, v99);
  v227 = vdupq_lane_s16(*v195.i8, 0);
  v228 = vshlq_s8(v218, v217);
  v229 = vshlq_s8(vshlq_s8(v210, v211), v219);
  v230 = vshlq_u64(v177, vnegq_s64(v183));
  v231 = vuzp1q_s32(vzip1q_s64(v177, v230), vzip2q_s64(v177, v230));
  v232 = vshlq_u32(v231, vnegq_s32((*&v167 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v233 = vuzp1q_s16(vzip1q_s32(v231, v232), vzip2q_s32(v231, v232));
  v234 = vshlq_u16(v233, vnegq_s16(v224));
  v235 = vaddq_s8(vandq_s8(v228, v100), v229);
  v236 = vdupq_lane_s16(*v228.i8, 0);
  v237 = vsubq_s8(v235, vandq_s8(v100, v236));
  v238 = vsubq_s8(vshlq_s8(v221, v220), vandq_s8(v101, v236));
  v239 = vsubq_s8(vshlq_s8(v223, v222), vandq_s8(v102, v236));
  v240 = vandq_s8(v103, v236);
  v241.i64[0] = 0x101010101010101;
  v241.i64[1] = 0x101010101010101;
  v242 = vaddlvq_s8(vceqq_s8(v68, v241));
  v243 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v233, v234), vzip2q_s16(v233, v234)), v226), v225), v240);
  if (v242)
  {
    v244 = vandq_s8(v65, v241);
    v245 = vnegq_s8(v244);
    v246 = v237;
    v246.i16[0] = v237.i16[7];
    v246.i16[7] = v237.i16[0];
    v247 = vorrq_s8(vandq_s8(v246, v245), vandq_s8(v237, vceqzq_s8(v244)));
    v248 = vaddq_s8(v247, vandq_s8(vqtbl1q_s8(v247, xmmword_29D2F0E60), v245));
    v237 = vaddq_s8(v248, vandq_s8(vqtbl1q_s8(v248, xmmword_29D2F0E70), v245));
    v249 = vaddq_s8(vandq_s8(vqtbl1q_s8(v238, xmmword_29D2F0E80), v245), v238);
    v238 = vaddq_s8(vandq_s8(vqtbl1q_s8(v249, xmmword_29D2F0E90), v245), v249);
    v250 = vaddq_s8(vandq_s8(vqtbl1q_s8(v239, xmmword_29D2F0EA0), v245), v239);
    v239 = vaddq_s8(vandq_s8(vqtbl1q_s8(v250, xmmword_29D2F0EB0), v245), v250);
    v251 = vaddq_s8(vandq_s8(vqtbl1q_s8(v243, xmmword_29D2F0EC0), v245), v243);
    v243 = vaddq_s8(vandq_s8(vqtbl1q_s8(v251, xmmword_29D2F0ED0), v245), v251);
  }

  v252 = vaddq_s8(v237, v227);
  v253 = vaddq_s8(v238, v227);
  v254 = vaddq_s8(v239, v227);
  v255 = vaddq_s8(v243, v227);
  v256.i64[0] = 0x1010101010101010;
  v256.i64[1] = 0x1010101010101010;
  v257 = vceqzq_s8(vandq_s8(v65, v256));
  v258 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v252, xmmword_29D2F0EE0), v257), v252);
  v259 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EE0), v257), v253);
  v260 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EE0), v257), v254);
  v261 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v255, xmmword_29D2F0EE0), v257), v255);
  *a1 = vuzp1q_s32(v258, v260);
  *(a1 + a2) = vuzp2q_s32(v258, v260);
  v262 = (a1 + 2 * a2);
  *v262 = vuzp1q_s32(v259, v261);
  *(v262 + a2) = vuzp2q_s32(v259, v261);
  return v11;
}