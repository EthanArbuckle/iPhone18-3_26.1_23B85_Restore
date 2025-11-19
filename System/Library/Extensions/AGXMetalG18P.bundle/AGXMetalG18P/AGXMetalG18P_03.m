uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v66 = *MEMORY[0x29EDCA608];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (a6 && a5)
  {
    if (a5 > 3)
    {
      v16 = a5 & 0x7C;
      if (v16 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v18 = &v62 + 16 * (i & 0x7F) + 8;
          v19 = a3;
          v20 = a5;
          do
          {
            v67 = vld2_s16(v19);
            v19 += 8;
            *(v18 - 8) = v67;
            v18 += 8;
            v20 -= 4;
          }

          while (v20);
          a3 += a4;
        }
      }

      else
      {
        v21 = 0;
        v22 = a5 - 4;
        v23 = a3;
        do
        {
          v24 = 16 * (v21 & 0x7F);
          v25 = (&v63 + v24);
          v26 = &v62 + v24 + 8;
          v27 = v23;
          v28 = a5 & 0x7C;
          do
          {
            v68 = vld2_s16(v27);
            v27 += 8;
            *(v26 - 8) = v68;
            v26 += 8;
            v28 -= 4;
          }

          while (v28);
          v29 = (a3 + v21 * a4 + 4 * v16);
          v30 = v22;
          do
          {
            *(v25 - 4) = *v29;
            *v25++ = v29[1];
            v29 += 2;
            --v30;
          }

          while (v30);
          ++v21;
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 6);
      do
      {
        *(&v62 + 4 * (v11 & 0xFE)) = *(v12 - 3);
        v13 = v11 & 0xFE | 1;
        *(&v62 + 4 * v13) = *(v12 - 2);
        if (a5 != 1)
        {
          v14 = &v62 + 8 * (v11 & 0xFE);
          *(v14 + 1) = *(v12 - 1);
          v15 = &v62 + 8 * v13;
          *(v15 + 1) = *v12;
          if (a5 != 2)
          {
            *(v14 + 2) = v12[1];
            *(v15 + 2) = v12[2];
          }
        }

        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v31 = 2 * (a5 & 0x7F);
  v46 = v62;
  v47 = BYTE1(v62);
  v48 = BYTE8(v62);
  v49 = BYTE9(v62);
  v50 = BYTE2(v62);
  v51 = BYTE3(v62);
  v52 = BYTE10(v62);
  v53 = BYTE11(v62);
  v54 = v63;
  v55 = BYTE1(v63);
  v56 = BYTE8(v63);
  v57 = BYTE9(v63);
  v58 = BYTE2(v63);
  v59 = BYTE3(v63);
  if (v31 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = 2 * (a5 & 0x7F);
  }

  if (v31 >= 4)
  {
    v33 = v31 - 4;
  }

  else
  {
    v33 = 0;
  }

  v60 = BYTE10(v63);
  v61 = BYTE11(v63);
  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v46, a7, v32, v34);
  v46 = BYTE4(v62);
  v47 = BYTE5(v62);
  v48 = BYTE12(v62);
  v49 = BYTE13(v62);
  v50 = BYTE6(v62);
  v51 = BYTE7(v62);
  v52 = BYTE14(v62);
  v53 = HIBYTE(v62);
  v54 = BYTE4(v63);
  v55 = BYTE5(v63);
  v56 = BYTE12(v63);
  v57 = BYTE13(v63);
  v58 = BYTE6(v63);
  v59 = BYTE7(v63);
  v60 = BYTE14(v63);
  v61 = HIBYTE(v63);
  if (a6 >= 4)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v46, a7, v32, v37);
  v46 = v64;
  v47 = BYTE1(v64);
  v48 = BYTE8(v64);
  v49 = BYTE9(v64);
  v50 = BYTE2(v64);
  v51 = BYTE3(v64);
  v52 = BYTE10(v64);
  v53 = BYTE11(v64);
  v54 = v65;
  v55 = BYTE1(v65);
  v56 = BYTE8(v65);
  v57 = BYTE9(v65);
  v58 = BYTE2(v65);
  v59 = BYTE3(v65);
  if (a5 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  v60 = BYTE10(v65);
  v61 = BYTE11(v65);
  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v46, a7, v39, v34);
  v46 = BYTE4(v64);
  v47 = BYTE5(v64);
  v48 = BYTE12(v64);
  v49 = BYTE13(v64);
  v50 = BYTE6(v64);
  v51 = BYTE7(v64);
  v52 = BYTE14(v64);
  v53 = HIBYTE(v64);
  v54 = BYTE4(v65);
  v55 = BYTE5(v65);
  v56 = BYTE12(v65);
  v57 = BYTE13(v65);
  v58 = BYTE6(v65);
  v59 = BYTE7(v65);
  v60 = BYTE14(v65);
  v61 = HIBYTE(v65);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v46, a7, v39, v37);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x100;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v230.val[1] = vdupq_lane_s8(v22, 4);
  v230.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v230, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v230.val[0].i64[0] = 0x707070707070707;
  v230.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v230.val[0]);
  v230.val[0].i64[0] = 0x101010101010101;
  v230.val[0].i64[1] = 0x101010101010101;
  v230.val[0] = vaddq_s8(v26, v230.val[0]);
  v230.val[1].i64[0] = 0x303030303030303;
  v230.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v230.val[1]);
  v28 = vbicq_s8(v230.val[0], vceqq_s8(v27, v230.val[1]));
  v230.val[1].i64[0] = 0x202020202020202;
  v230.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v230.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v224 = v11;
  v225 = v10;
  v226 = v9;
  v227 = v8;
  v228 = v7;
  v229 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v222;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    *(a1->i64 + 2 * a2) = 0;
    *(a1->i64 + 3 * a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v223;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  v216 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v217 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v218 = vzip2q_s64(v215, v216);
  v215.i64[1] = v216.i64[0];
  v219 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  *a1 = v215;
  *(a1 + a2) = v218;
  v220 = vzip2q_s64(v217, v219);
  v217.i64[1] = v219.i64[0];
  v221 = (a1 + 2 * a2);
  *v221 = v217;
  *(v221 + a2) = v220;
  return v134;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(__int16 *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v52, a5);
  }

  v51 = v52;
  v50 = v53;
  v47 = v54;
  v49 = v55;
  v44 = v56;
  v42 = v57;
  v36 = v58;
  v40 = v59;
  v10 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v52, a5);
  }

  v41 = v52;
  v39 = v53;
  v33 = v54;
  v35 = v55;
  v31 = v56;
  v30 = v57;
  v28 = v58;
  v29 = v59;
  v11 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v52, a5);
  }

  v38 = v52;
  v37 = v53;
  v32 = v54;
  v34 = v55;
  v48 = v56;
  v46 = v57;
  v43 = v58;
  v45 = v59;
  v12 = a3 + 24;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v52, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v52, a5);
  }

  v15.i64[0] = v30;
  v14.i64[0] = v31;
  v14.i64[1] = v28;
  v16.i64[0] = v44;
  v16.i64[1] = v36;
  v15.i64[1] = v29;
  v18.i64[0] = v41;
  v17.i64[0] = v42;
  v19.i64[0] = v39;
  v17.i64[1] = v40;
  v20 = vmovn_s16(vuzp1q_s16(v17, v15));
  *v17.i8 = vmovn_s16(vuzp1q_s16(v16, v14));
  v18.i64[1] = v33;
  v15.i64[0] = v51;
  v15.i64[1] = v47;
  v19.i64[1] = v35;
  v16.i64[0] = v50;
  v16.i64[1] = v49;
  *v14.i8 = vmovn_s16(vuzp1q_s16(v16, v19));
  *v16.i8 = vmovn_s16(vuzp1q_s16(v15, v18));
  v15.i64[0] = v52;
  v18.i64[0] = v53;
  v15.i64[1] = v54;
  v21.i64[0] = v38;
  v21.i64[1] = v32;
  v18.i64[1] = v55;
  v19.i64[0] = v37;
  v19.i64[1] = v34;
  *v19.i8 = vmovn_s16(vuzp1q_s16(v19, v18));
  *v18.i8 = vmovn_s16(vuzp1q_s16(v21, v15));
  v15.i64[0] = v56;
  v22.i64[0] = v57;
  v15.i64[1] = v58;
  v23.i64[0] = v48;
  v23.i64[1] = v43;
  v22.i64[1] = v59;
  v21.i64[0] = v46;
  v21.i64[1] = v45;
  v24 = vmovn_s16(vuzp1q_s16(v21, v22));
  vst2_s16(a1, *(&v14 - 8));
  v25 = (a1 + a2);
  vst2_s16(v25, v17);
  v26 = (v25 + a2);
  vst2_s16(v26, v18);
  v27 = (v26 + a2);
  *v21.i8 = vmovn_s16(vuzp1q_s16(v23, v15));
  vst2_s16(v27, v21);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 1, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 16), a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 3, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 32), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + v31 + 48), a2, v33, v32, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a5 < 2 || a6 == 0;
  v9 = *a3;
  v10 = vdupq_lane_s16(*a3, 0);
  v11 = vsubq_s8(*a3, v10);
  v12 = vsubq_s8(*(a3 + a4), v10);
  v13 = vsubq_s8(*(a3 + 16), v10);
  v14 = vsubq_s8(*(a3 + a4 + 16), v10);
  v15 = vqtbl1q_s8(v11, xmmword_29D2F0EF0);
  v16 = vpmaxq_s8(v15, v15);
  v17 = vpminq_s8(v15, v15);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vpmaxq_s8(v18, v18);
  v21 = vpminq_s8(v19, v19);
  v22 = vzip1q_s8(v20, v21);
  v23.i64[0] = 0x808080808080808;
  v23.i64[1] = 0x808080808080808;
  v24 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v22)), vceqzq_s8(v22));
  v25 = vpmaxq_s8(v24, v24);
  v26 = vqtbl1q_s8(v12, xmmword_29D2F0EF0);
  v27 = vpmaxq_s8(v26, v26);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vpmaxq_s8(v29, v29);
  v32 = vpminq_s8(v30, v30);
  v33 = vmaxq_s8(v20, v31);
  v34 = vminq_s8(v21, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v35)), vceqzq_s8(v35));
  v37 = vpmaxq_s8(v36, v36);
  v38 = vqtbl1q_s8(v13, xmmword_29D2F0EF0);
  v39 = vpmaxq_s8(v38, v38);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vmaxq_s8(v33, v43);
  v46 = vminq_s8(v34, v44);
  v47 = vzip1q_s8(v43, v44);
  v48 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v47)), vceqzq_s8(v47));
  v49 = vpmaxq_s8(v48, v48);
  v50 = vqtbl1q_s8(v14, xmmword_29D2F0EF0);
  v51 = vpmaxq_s8(v50, v50);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vpmaxq_s8(v53, v53);
  v56 = vpminq_s8(v54, v54);
  v57 = vmaxq_s8(v45, v55);
  v58 = vminq_s8(v46, v56);
  v59 = vzip1q_s8(v55, v56);
  v60 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v59)), vceqzq_s8(v59));
  v61 = vpmaxq_s8(v60, v60);
  v62 = vmaxq_s8(vmaxq_s8(v25, v37), vmaxq_s8(v49, v61));
  v63 = vclzq_s8(vsubq_s8(v57, v58));
  v64 = vsubq_s8(v23, v63);
  v65 = vminq_s8(v64, v62);
  if (!vmaxvq_s8(v65))
  {
    *a1 = *a3;
    *a2 = 1;
    return 2;
  }

  v66.i64[0] = -1;
  v66.i64[1] = -1;
  v67.i64[0] = 0x707070707070707;
  v67.i64[1] = 0x707070707070707;
  v68 = vcgtq_s8(v62, v64);
  v401 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v63)), v58), v68);
  v69.i64[0] = 0x303030303030303;
  v69.i64[1] = 0x303030303030303;
  v70 = vorrq_s8(vandq_s8(vceqzq_s8(v65), v69), vandq_s8(v68, v23));
  v71 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v25), v69), 0);
  v72 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v37), v69), 0);
  v73 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v49), v69), 0);
  v74 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v61), v69), 0);
  v75.i64[0] = 0x404040404040404;
  v75.i64[1] = 0x404040404040404;
  v76 = vorrq_s8(vbicq_s8(v75, vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)))), v70);
  v77 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F0EE0));
  v78 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F0EE0));
  v79 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F0EE0));
  v400 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F0EE0));
  v80 = vqtbl1q_s8(v400, xmmword_29D2F0EF0);
  v81 = vpmaxq_s8(v80, v80);
  v82 = vpminq_s8(v80, v80);
  v83 = vpmaxq_s8(v81, v81);
  v84 = vpminq_s8(v82, v82);
  v85 = vpmaxq_s8(v83, v83);
  v86 = vpminq_s8(v84, v84);
  v87 = vzip1q_s8(v85, v86);
  v88 = v13;
  v89 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v87)), vceqzq_s8(v87));
  v90 = vpmaxq_s8(v89, v89);
  v91 = vqtbl1q_s8(v77, xmmword_29D2F0EF0);
  v92 = vpmaxq_s8(v91, v91);
  v93 = vpminq_s8(v91, v91);
  v94 = vpmaxq_s8(v92, v92);
  v95 = vpminq_s8(v93, v93);
  v96 = vpmaxq_s8(v94, v94);
  v97 = vpminq_s8(v95, v95);
  v98 = vmaxq_s8(v85, v96);
  v99 = vminq_s8(v86, v97);
  v100 = vzip1q_s8(v96, v97);
  v101 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v100)), vceqzq_s8(v100));
  v102 = vpmaxq_s8(v101, v101);
  v103 = vqtbl1q_s8(v78, xmmword_29D2F0EF0);
  v104 = vpmaxq_s8(v103, v103);
  v105 = vpminq_s8(v103, v103);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vpmaxq_s8(v106, v106);
  v109 = vpminq_s8(v107, v107);
  v110 = vmaxq_s8(v98, v108);
  v111 = vminq_s8(v99, v109);
  v112 = vzip1q_s8(v108, v109);
  v113 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v112)), vceqzq_s8(v112));
  v114 = vpmaxq_s8(v113, v113);
  v115 = vqtbl1q_s8(v79, xmmword_29D2F0EF0);
  v116 = vpmaxq_s8(v115, v115);
  v117 = vpminq_s8(v115, v115);
  v118 = vpmaxq_s8(v116, v116);
  v119 = vpminq_s8(v117, v117);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = v14;
  v123 = vmaxq_s8(v110, v120);
  v124 = vminq_s8(v111, v121);
  v125 = vzip1q_s8(v120, v121);
  v126 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v125)), vceqzq_s8(v125));
  v127 = vpmaxq_s8(v126, v126);
  v128 = vmaxq_s8(vmaxq_s8(v90, v102), vmaxq_s8(v114, v127));
  v129 = vclzq_s8(vsubq_s8(v123, v124));
  v130 = vsubq_s8(v23, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v130.i64[0] = 0x1010101010101010;
  v130.i64[1] = 0x1010101010101010;
  v133.i64[0] = 0x1818181818181818;
  v133.i64[1] = 0x1818181818181818;
  v134 = vorrq_s8(vandq_s8(vceqzq_s8(v132), v69), vbslq_s8(v131, v133, v130));
  v135 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v90), v69), 0);
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v102), v69), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v114), v69), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v127), v69), 0);
  v139 = vsubq_s8(v132, v135);
  v140 = vsubq_s8(v132, v136);
  v141 = vsubq_s8(v132, v137);
  v142 = vsubq_s8(v132, v138);
  v143 = vorrq_s8(v134, vbicq_s8(v75, vceqq_s8(vaddq_s8(v138, v137), vnegq_s8(vaddq_s8(v135, v136)))));
  v144 = vmovl_u8(*v143.i8);
  v136.i64[0] = 0x8000800080008;
  v136.i64[1] = 0x8000800080008;
  v135.i64[0] = 0x2000200020002;
  v135.i64[1] = 0x2000200020002;
  v145 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v141.i8, *v140.i8), *v142.i8), 3uLL), *v139.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v143.i8, 1uLL), v136)), vbicq_s8(vmovl_s8(*v132.i8), vceqzq_s16((*&v144 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v144 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v135), v136));
  v146 = vceqq_s16((*&vmovl_u8(*v76.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v135);
  v147 = vsubq_s8(v65, v71);
  v148 = vsubq_s8(v65, v72);
  v149 = vsubq_s8(v65, v73);
  v150 = vsubq_s8(v65, v74);
  v151 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL), *v147.i8, 0x707070707070707), vbic_s8(*v65.i8, vcgt_u8(0x808080808080808, *v76.i8))), (*&vshll_n_u8(*v76.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v146, v136)), v145)), 0);
  if (vaddlvq_s8(v151))
  {
    v152.i64[0] = 0x707070707070707;
    v152.i64[1] = 0x707070707070707;
    v153.i64[0] = -1;
    v153.i64[1] = -1;
    v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, vsubq_s8(v152, v129)), v124), v131);
    v10 = vbslq_s8(v151, vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0EE0)), v10);
    v155 = vbslq_s8(v151, v400, v11);
    v156 = vbslq_s8(v151, v77, v12);
    v88 = vbslq_s8(v151, v78, v88);
    v122 = vbslq_s8(v151, v79, v122);
    v147 = vbslq_s8(v151, v139, v147);
    v148 = vbslq_s8(v151, v140, v148);
    v149 = vbslq_s8(v151, v141, v149);
    v150 = vbslq_s8(v151, v142, v150);
    v157 = vbslq_s8(v151, v154, v401);
    v65 = vbslq_s8(v151, v132, v65);
    v76 = vbslq_s8(v151, v143, v76);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v157 = v401;
    v156 = v12;
    v155 = v11;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v402 = v122;
  v159 = v156;
  v160 = v88;
  v161 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F0F00));
  v162 = *(a3 + a4);
  v162.i16[7] = HIWORD(*a3);
  v163 = vsubq_s8(*(a3 + a4), vqtbl1q_s8(v162, xmmword_29D2F0F10));
  v164 = *(a3 + 16);
  v164.i16[7] = HIWORD(*a3);
  v165 = *(a3 + a4 + 16);
  v165.i16[7] = v164.i16[7];
  v166 = vsubq_s8(*(a3 + 16), vqtbl1q_s8(v164, xmmword_29D2F0F20));
  v167 = vsubq_s8(*(a3 + a4 + 16), vqtbl1q_s8(v165, xmmword_29D2F0F30));
  v168 = v161;
  v168.i16[0] = v161.i16[7];
  v168.i16[7] = v161.i16[0];
  v169 = vqtbl1q_s8(v168, xmmword_29D2F0EF0);
  v170 = vpmaxq_s8(v169, v169);
  v171 = vpminq_s8(v169, v169);
  v172 = vpmaxq_s8(v170, v170);
  v173 = vpminq_s8(v171, v171);
  v174 = vpmaxq_s8(v172, v172);
  v175 = vpminq_s8(v173, v173);
  v176 = vzip1q_s8(v174, v175);
  v177.i64[0] = 0x808080808080808;
  v177.i64[1] = 0x808080808080808;
  v178 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v176)), vceqzq_s8(v176));
  v179 = vpmaxq_s8(v178, v178);
  v180 = vqtbl1q_s8(v163, xmmword_29D2F0EF0);
  v181 = vpmaxq_s8(v180, v180);
  v182 = vpminq_s8(v180, v180);
  v183 = vpmaxq_s8(v181, v181);
  v184 = vpminq_s8(v182, v182);
  v185 = vpmaxq_s8(v183, v183);
  v186 = vpminq_s8(v184, v184);
  v187 = vmaxq_s8(v174, v185);
  v188 = vminq_s8(v175, v186);
  v189 = vzip1q_s8(v185, v186);
  v190 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v189)), vceqzq_s8(v189));
  v191 = vpmaxq_s8(v190, v190);
  v192 = vqtbl1q_s8(v166, xmmword_29D2F0EF0);
  v193 = vpmaxq_s8(v192, v192);
  v194 = vpminq_s8(v192, v192);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vmaxq_s8(v187, v197);
  v200 = vminq_s8(v188, v198);
  v201 = vzip1q_s8(v197, v198);
  v202 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v201)), vceqzq_s8(v201));
  v203 = vpmaxq_s8(v202, v202);
  v204 = vqtbl1q_s8(v167, xmmword_29D2F0EF0);
  v205 = vpmaxq_s8(v204, v204);
  v206 = vpminq_s8(v204, v204);
  v207 = vpmaxq_s8(v205, v205);
  v208 = vpminq_s8(v206, v206);
  v209 = vpmaxq_s8(v207, v207);
  v210 = vpminq_s8(v208, v208);
  v211 = vmaxq_s8(v199, v209);
  v212 = vminq_s8(v200, v210);
  v213 = vzip1q_s8(v209, v210);
  v214 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v213)), vceqzq_s8(v213));
  v215 = vpmaxq_s8(v214, v214);
  v216 = vmaxq_s8(vmaxq_s8(v179, v191), vmaxq_s8(v203, v215));
  v217 = vclzq_s8(vsubq_s8(v211, v212));
  v218 = vsubq_s8(v177, v217);
  v219 = vcgtq_s8(v216, v218);
  v220 = vminq_s8(v218, v216);
  v218.i64[0] = 0x909090909090909;
  v218.i64[1] = 0x909090909090909;
  v221.i64[0] = 0x202020202020202;
  v221.i64[1] = 0x202020202020202;
  v222 = vorrq_s8(vandq_s8(vceqzq_s8(v220), v221), vsubq_s8(vandq_s8(v219, v218), vmvnq_s8(v219)));
  v177.i64[0] = 0x303030303030303;
  v177.i64[1] = 0x303030303030303;
  v223 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v179), v177), 0);
  v224 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v191), v177), 0);
  v225 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v203), v177), 0);
  v226 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v215), v177), 0);
  v227 = vsubq_s8(v220, v223);
  v228 = vsubq_s8(v220, v224);
  v229 = vsubq_s8(v220, v225);
  v230 = vsubq_s8(v220, v226);
  v231 = vceqq_s8(vaddq_s8(v226, v225), vnegq_s8(vaddq_s8(v223, v224)));
  v224.i64[0] = 0x404040404040404;
  v224.i64[1] = 0x404040404040404;
  v232 = vorrq_s8(v222, vbicq_s8(v224, v231));
  v233.i64[0] = 0x3000300030003;
  v233.i64[1] = 0x3000300030003;
  v234 = vmovl_s8(*v76.i8);
  v226.i64[0] = 0x8000800080008;
  v226.i64[1] = 0x8000800080008;
  v235 = vbicq_s8(vmovl_s8(*v65.i8), vceqzq_s16(vandq_s8(v234, v226)));
  v236 = vandq_s8(v234, v233);
  v233.i64[0] = 0x2000200020002;
  v233.i64[1] = 0x2000200020002;
  v237 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v235, vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v226)), vandq_s8(vceqq_s16(v236, v233), v226)), *v147.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v229.i8, *v228.i8), *v230.i8), 3uLL), *v227.i8, 0x707070707070707), vand_s8(vadd_s8(*v232.i8, *v232.i8), 0x808080808080808)), vbic_s8(*v220.i8, vcgt_u8(0x808080808080808, *v232.i8))))), 0);
  if (vaddlvq_s8(v237))
  {
    v238.i64[0] = 0x707070707070707;
    v238.i64[1] = 0x707070707070707;
    v239.i64[0] = -1;
    v239.i64[1] = -1;
    v240 = vandq_s8(vsubq_s8(vshlq_s8(v239, vsubq_s8(v238, v217)), v212), v219);
    v10.i16[0] = vbslq_s8(v237, vextq_s8(v9, v9, 0xEuLL), v10).u16[0];
    v155 = vbslq_s8(v237, v168, v155);
    v156 = vbslq_s8(v237, v163, v159);
    v88 = vbslq_s8(v237, v166, v160);
    v122 = vbslq_s8(v237, v167, v402);
    v147 = vbslq_s8(v237, v227, v147);
    v148 = vbslq_s8(v237, v228, v148);
    v149 = vbslq_s8(v237, v229, v149);
    v150 = vbslq_s8(v237, v230, v150);
    v157 = vbslq_s8(v237, v240, v157);
    v65 = vbslq_s8(v237, v220, v65);
    v76 = vbslq_s8(v237, v232, v76);
  }

  else
  {
    v88 = v160;
    v156 = v159;
    v122 = v402;
  }

LABEL_16:
  v241 = vmovl_s8(*v76.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v243 = vbicq_s8(vmovl_s8(*v65.i8), vceqzq_s16(vandq_s8(v241, v242)));
  v244.i64[0] = 0x3000300030003;
  v244.i64[1] = 0x3000300030003;
  v245 = vandq_s8(v241, v244);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v246 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL), *v147.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v242)), v243), vandq_s8(vceqq_s16(v245, v244), v242));
  if ((vpaddq_s16(v246, v246).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
  }

  else
  {
    v247 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v248 = 8 * (a1 & 7);
    if (v248)
    {
      v249 = *v247 & ~(-1 << v248);
    }

    else
    {
      v249 = 0;
    }

    v250 = ((v65.i8[0] - 1) & 7) << 10;
    if (!v65.i8[0])
    {
      v250 = 0;
    }

    if (v65.i8[1])
    {
      v251 = ((v65.u8[1] << 13) - 0x2000) & 0xE000;
    }

    else
    {
      v251 = 0;
    }

    *a2 = v76.i8[0] << 6;
    v252 = ((v250 | v251) & 0xFFFFFFFFFFFFFC1FLL | v76.i8[0] & 0x1C | (32 * (v76.i8[1] & 0x1F))) >> 2;
    v253 = v249 | (v252 << v248);
    if (v248 >= 0x32)
    {
      *v247 = v253;
      v253 = v252 >> (-8 * (a1 & 7u));
    }

    v254 = (v248 + 14) & 0x3E;
    v255 = v253 | (v10.u16[0] << v254);
    if (v254 >= 0x30)
    {
      *(v247 + (((v248 + 14) >> 3) & 8)) = v255;
      v255 = v10.u16[0] >> -v254;
    }

    v256 = v248 + 30;
    v257 = vsubq_s8(v65, v147);
    v258 = vsubq_s8(v65, v148);
    v259 = vsubq_s8(v65, v149);
    v260 = vsubq_s8(v65, v150);
    v257.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v257, v258), vzip1q_s8(v259, v260)), vzip1q_s16(vtrn2q_s8(v257, v258), vtrn2q_s8(v259, v260))).u64[0];
    v259.i64[0] = 0x202020202020202;
    v259.i64[1] = 0x202020202020202;
    v261 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v76.i8), 0x4000400040004)))), v259);
    v259.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v259.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v260.i64[0] = -1;
    v260.i64[1] = -1;
    v262 = vandq_s8(vshlq_u8(v260, vorrq_s8(v261, v259)), v257.u64[0]);
    v263 = vmovl_u8(*v261.i8);
    v264 = vpaddq_s16(vshlq_u16(vmovl_u8(*v262.i8), vtrn1q_s16(0, v263)), vmovl_high_u8(v262));
    v265 = vpaddq_s16(v263, vmovl_high_u8(v261));
    v266 = vmovl_u16(*v265.i8);
    v267 = vmovl_high_u16(v265);
    v268 = vpaddq_s32(vshlq_u32(vmovl_u16(*v264.i8), vtrn1q_s32(0, v266)), vshlq_u32(vmovl_high_u16(v264), vtrn1q_s32(0, v267)));
    v269 = vpaddq_s32(v266, v267);
    v270.i64[0] = v268.u32[0];
    v270.i64[1] = v268.u32[1];
    v271 = v270;
    v270.i64[0] = v268.u32[2];
    v270.i64[1] = v268.u32[3];
    v272 = v270;
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v273 = v270;
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v274 = vpaddq_s64(vshlq_u64(v271, vzip1q_s64(0, v273)), vshlq_u64(v272, vzip1q_s64(0, v270)));
    v275 = vpaddq_s64(v273, v270);
    v276 = (v248 + 30) & 0x3E;
    v277 = (v274.i64[0] << v276) | v255;
    if ((v275.i64[0] + v276) >= 0x40)
    {
      *(v247 + ((v256 >> 3) & 8)) = v277;
      v277 = v274.i64[0] >> -v276;
    }

    v278 = vceqq_s8(v65, v147);
    v279 = v275.i64[0] + v256;
    v280 = v277 | (v274.i64[1] << v279);
    if ((v279 & 0x3F) + v275.i64[1] >= 0x40)
    {
      *(v247 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
      v280 = v274.i64[1] >> -(v279 & 0x3F);
      if ((v279 & 0x3F) == 0)
      {
        v280 = 0;
      }
    }

    v281 = vandq_s8(v157, v278);
    v282 = v279 + v275.i64[1];
    v283.i64[0] = 0x808080808080808;
    v283.i64[1] = 0x808080808080808;
    v284.i64[0] = -1;
    v284.i64[1] = -1;
    v285 = vandq_s8(vextq_s8(vtstq_s8(v76, v283), 0, 0xEuLL), v65);
    v286.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v286.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v287 = vandq_s8(vshlq_u8(v284, vaddq_s8(v285, v286)), v157);
    v288 = vmovl_u8(*v285.i8);
    v289 = vpaddq_s16(vshlq_u16(vmovl_u8(*v287.i8), vtrn1q_s16(0, v288)), vmovl_high_u8(v287));
    v290 = vpaddq_s16(v288, vmovl_high_u8(v285));
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
    v301 = (v299.i64[0] << v282) | v280;
    if (v300.i64[0] + (v282 & 0x3F) >= 0x40)
    {
      *(v247 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
      v301 = v299.i64[0] >> -(v282 & 0x3F);
      if ((v282 & 0x3F) == 0)
      {
        v301 = 0;
      }
    }

    v302 = vceqq_s8(v65, v148);
    v303 = vaddq_s8(v281, v155);
    v304 = v300.i64[0] + v282;
    v305 = v301 | (v299.i64[1] << v304);
    if ((v304 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v247 + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
      v305 = v299.i64[1] >> -(v304 & 0x3F);
      if ((v304 & 0x3F) == 0)
      {
        v305 = 0;
      }
    }

    v306 = vandq_s8(v157, v302);
    v307 = v304 + v300.i64[1];
    v308 = vextq_s8(0, v147, 0xEuLL);
    v309.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v309.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[0] = -1;
    v310.i64[1] = -1;
    v311 = vandq_s8(vshlq_u8(v310, vaddq_s8(v308, v309)), v303);
    v312 = vmovl_u8(*v308.i8);
    v313 = vmovl_high_u8(v308);
    v314 = vpaddq_s16(vshlq_u16(vmovl_u8(*v311.i8), vtrn1q_s16(0, v312)), vshlq_u16(vmovl_high_u8(v311), vtrn1q_s16(0, v313)));
    v315 = vpaddq_s16(v312, v313);
    v316 = vmovl_u16(*v315.i8);
    v317 = vmovl_high_u16(v315);
    v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v317)));
    v319 = vpaddq_s32(v316, v317);
    v320.i64[0] = v318.u32[0];
    v320.i64[1] = v318.u32[1];
    v321 = v320;
    v320.i64[0] = v318.u32[2];
    v320.i64[1] = v318.u32[3];
    v322 = v320;
    v320.i64[0] = v319.u32[0];
    v320.i64[1] = v319.u32[1];
    v323 = v320;
    v320.i64[0] = v319.u32[2];
    v320.i64[1] = v319.u32[3];
    v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
    v325 = vpaddq_s64(v323, v320);
    v326 = (v324.i64[0] << v307) | v305;
    if (v325.i64[0] + (v307 & 0x3F) >= 0x40)
    {
      *(v247 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v307 & 0x3F);
      if ((v307 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s8(v65, v149);
    v328 = vaddq_s8(v156, v306);
    v329 = v325.i64[0] + v307;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v247 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v157, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v333.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u8(v334, vaddq_s8(v148, v333)), v328);
    v336 = vmovl_u8(*v148.i8);
    v337 = vmovl_high_u8(v148);
    v338 = vpaddq_s16(vshlq_u16(vmovl_u8(*v335.i8), vtrn1q_s16(0, v336)), vshlq_u16(vmovl_high_u8(v335), vtrn1q_s16(0, v337)));
    v339 = vpaddq_s16(v336, v337);
    v340 = vmovl_u16(*v339.i8);
    v341 = vmovl_high_u16(v339);
    v342 = vpaddq_s32(vshlq_u32(vmovl_u16(*v338.i8), vtrn1q_s32(0, v340)), vshlq_u32(vmovl_high_u16(v338), vtrn1q_s32(0, v341)));
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
    v350 = (v348.i64[0] << v332) | v330;
    if (v349.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v247 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
      v350 = v348.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v350 = 0;
      }
    }

    v351 = vceqq_s8(v65, v150);
    v352 = vaddq_s8(v88, v331);
    v353 = v349.i64[0] + v332;
    v354 = v350 | (v348.i64[1] << v353);
    if ((v353 & 0x3F) + v349.i64[1] >= 0x40)
    {
      *(v247 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v348.i64[1] >> -(v353 & 0x3F);
      if ((v353 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vandq_s8(v157, v351);
    v356 = v353 + v349.i64[1];
    v357.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v357.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v358.i64[0] = -1;
    v358.i64[1] = -1;
    v359 = vandq_s8(vshlq_u8(v358, vaddq_s8(v149, v357)), v352);
    v360 = vmovl_u8(*v149.i8);
    v361 = vmovl_high_u8(v149);
    v362 = vpaddq_s16(vshlq_u16(vmovl_u8(*v359.i8), vtrn1q_s16(0, v360)), vshlq_u16(vmovl_high_u8(v359), vtrn1q_s16(0, v361)));
    v363 = vpaddq_s16(v360, v361);
    v364 = vmovl_u16(*v363.i8);
    v365 = vmovl_high_u16(v363);
    v366 = vpaddq_s32(vshlq_u32(vmovl_u16(*v362.i8), vtrn1q_s32(0, v364)), vshlq_u32(vmovl_high_u16(v362), vtrn1q_s32(0, v365)));
    v367 = vpaddq_s32(v364, v365);
    v368.i64[0] = v366.u32[0];
    v368.i64[1] = v366.u32[1];
    v369 = v368;
    v368.i64[0] = v366.u32[2];
    v368.i64[1] = v366.u32[3];
    v370 = v368;
    v368.i64[0] = v367.u32[0];
    v368.i64[1] = v367.u32[1];
    v371 = v368;
    v368.i64[0] = v367.u32[2];
    v368.i64[1] = v367.u32[3];
    v372 = vpaddq_s64(vshlq_u64(v369, vzip1q_s64(0, v371)), vshlq_u64(v370, vzip1q_s64(0, v368)));
    v373 = vpaddq_s64(v371, v368);
    v374 = (v372.i64[0] << v356) | v354;
    if (v373.i64[0] + (v356 & 0x3F) >= 0x40)
    {
      *(v247 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
      v374 = v372.i64[0] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v374 = 0;
      }
    }

    v375 = vaddq_s8(v122, v355);
    v376 = v373.i64[0] + v356;
    v377 = v374 | (v372.i64[1] << v376);
    if ((v376 & 0x3F) + v373.i64[1] >= 0x40)
    {
      *(v247 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
      v377 = v372.i64[1] >> -(v376 & 0x3F);
      if ((v376 & 0x3F) == 0)
      {
        v377 = 0;
      }
    }

    v378 = v376 + v373.i64[1];
    v379.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v379.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v380.i64[0] = -1;
    v380.i64[1] = -1;
    v381 = vandq_s8(vshlq_u8(v380, vaddq_s8(v150, v379)), v375);
    v382 = vmovl_u8(*v150.i8);
    v383 = vmovl_high_u8(v150);
    v384 = vpaddq_s16(vshlq_u16(vmovl_u8(*v381.i8), vtrn1q_s16(0, v382)), vshlq_u16(vmovl_high_u8(v381), vtrn1q_s16(0, v383)));
    v385 = vpaddq_s16(v382, v383);
    v386 = vmovl_u16(*v385.i8);
    v387 = vmovl_high_u16(v385);
    v388 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v386)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v387)));
    v389 = vpaddq_s32(v386, v387);
    v390.i64[0] = v388.u32[0];
    v390.i64[1] = v388.u32[1];
    v391 = v390;
    v390.i64[0] = v388.u32[2];
    v390.i64[1] = v388.u32[3];
    v392 = v390;
    v390.i64[0] = v389.u32[0];
    v390.i64[1] = v389.u32[1];
    v393 = v390;
    v390.i64[0] = v389.u32[2];
    v390.i64[1] = v389.u32[3];
    v394 = vpaddq_s64(vshlq_u64(v391, vzip1q_s64(0, v393)), vshlq_u64(v392, vzip1q_s64(0, v390)));
    v395 = vpaddq_s64(v393, v390);
    v396 = (v394.i64[0] << v378) | v377;
    if (v395.i64[0] + (v378 & 0x3F) > 0x3F)
    {
      *(v247 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      if ((v378 & 0x3F) != 0)
      {
        v396 = v394.i64[0] >> -(v378 & 0x3F);
      }

      else
      {
        v396 = 0;
      }
    }

    v397 = v395.i64[0] + v378;
    v398 = v396 | (v394.i64[1] << v397);
    if ((v397 & 0x3F) + v395.i64[1] >= 0x40)
    {
      *(v247 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
      v398 = v394.i64[1] >> -(v397 & 0x3F);
      if ((v397 & 0x3F) == 0)
      {
        v398 = 0;
      }
    }

    v399 = v397 + v395.i64[1];
    if ((v399 & 0x3F) != 0)
    {
      *(v247 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
    }

    result = (v399 - v248 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = 0;
  v69 = *MEMORY[0x29EDCA608];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
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
  if (a6)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (a5)
    {
      v27 = 0;
      do
      {
        v28 = 0;
        v29 = (a3 + v27 * a4);
        v30 = (2 * v27) | 1u;
        do
        {
          v31 = &v65 + (v28 & 0x7F);
          *(v31 + 2 * (v27 & 0x7F)) = *v29;
          v32 = &v65 + 8 * ((2 * v28) | 1u);
          *&v32[4 * (v27 & 0x7F)] = v29[1];
          *(v31 + v30) = v29[2];
          LOWORD(v31) = v29[3];
          v29 += 4;
          ++v28;
          *&v32[2 * v30] = v31;
        }

        while (a5 != v28);
        ++v27;
      }

      while (v27 != a6);
      v26 = v65;
      v25 = BYTE1(v65);
      v24 = BYTE8(v65);
      v23 = BYTE9(v65);
      v22 = BYTE2(v65);
      v21 = BYTE3(v65);
      v20 = BYTE10(v65);
      v19 = BYTE11(v65);
      v18 = v66;
      v17 = BYTE1(v66);
      v16 = BYTE8(v66);
      v15 = BYTE9(v66);
      v14 = BYTE2(v66);
      v13 = BYTE3(v66);
      v12 = BYTE10(v66);
      v11 = BYTE11(v66);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v33 = 2 * (a6 & 0x7F);
  v49 = v26;
  v50 = v25;
  v34 = 2 * (a5 & 0x7F);
  v51 = v24;
  v52 = v23;
  v53 = v22;
  v54 = v21;
  v55 = v20;
  v56 = v19;
  v57 = v18;
  v58 = v17;
  v59 = v16;
  v60 = v15;
  v61 = v14;
  v62 = v13;
  if (v34 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = 2 * (a5 & 0x7F);
  }

  v63 = v12;
  v64 = v11;
  v36 = 2 * (a6 != 0);
  if (v34 >= 4)
  {
    v37 = v34 - 4;
  }

  else
  {
    v37 = 0;
  }

  v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v49, a7, v35, v36);
  v49 = BYTE4(v65);
  v50 = BYTE5(v65);
  v51 = BYTE12(v65);
  v52 = BYTE13(v65);
  v53 = BYTE6(v65);
  v54 = BYTE7(v65);
  v55 = BYTE14(v65);
  v56 = HIBYTE(v65);
  v57 = BYTE4(v66);
  v58 = BYTE5(v66);
  v59 = BYTE12(v66);
  v60 = BYTE13(v66);
  v61 = BYTE6(v66);
  v62 = BYTE7(v66);
  v39 = v33 - 2;
  if (v33 < 2)
  {
    v39 = 0;
  }

  v63 = BYTE14(v66);
  v64 = HIBYTE(v66);
  if (a6 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v49, a7, v35, v40);
  v49 = v67;
  v50 = BYTE1(v67);
  v51 = BYTE8(v67);
  v52 = BYTE9(v67);
  v53 = BYTE2(v67);
  v54 = BYTE3(v67);
  v55 = BYTE10(v67);
  v56 = BYTE11(v67);
  v57 = v68;
  v58 = BYTE1(v68);
  v59 = BYTE8(v68);
  v60 = BYTE9(v68);
  v61 = BYTE2(v68);
  v62 = BYTE3(v68);
  if (a5 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = v37;
  }

  v63 = BYTE10(v68);
  v64 = BYTE11(v68);
  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v49, a7, v42, v36);
  v49 = BYTE4(v67);
  v50 = BYTE5(v67);
  v51 = BYTE12(v67);
  v52 = BYTE13(v67);
  v53 = BYTE6(v67);
  v54 = BYTE7(v67);
  v55 = BYTE14(v67);
  v56 = HIBYTE(v67);
  v57 = BYTE4(v68);
  v58 = BYTE5(v68);
  v59 = BYTE12(v68);
  v60 = BYTE13(v68);
  v61 = BYTE6(v68);
  v62 = BYTE7(v68);
  v63 = BYTE14(v68);
  v64 = HIBYTE(v68);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v49, a7, v42, v40);
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

  *a2 = v47 | v45 | v38 | v46;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x100;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v224.val[1] = vdupq_lane_s8(v22, 4);
  v224.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v224, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v224.val[0].i64[0] = 0x707070707070707;
  v224.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v224.val[0]);
  v224.val[0].i64[0] = 0x101010101010101;
  v224.val[0].i64[1] = 0x101010101010101;
  v224.val[0] = vaddq_s8(v26, v224.val[0]);
  v224.val[1].i64[0] = 0x303030303030303;
  v224.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v224.val[1]);
  v28 = vbicq_s8(v224.val[0], vceqq_s8(v27, v224.val[1]));
  v224.val[1].i64[0] = 0x202020202020202;
  v224.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v224.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v218 = v11;
  v219 = v10;
  v220 = v9;
  v221 = v8;
  v222 = v7;
  v223 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v216;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v217;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  *a1 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  a1[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v215 = (a1 + a2);
  *v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v215[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  return v134;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_WORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v98 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v82, a5);
  }

  v60 = v83;
  v61 = v85;
  v62 = v82;
  v64 = v87;
  v65 = v84;
  v70 = v89;
  v71 = v86;
  v78 = v90;
  v75 = v91;
  v76 = v88;
  v80 = v92;
  v77 = v93;
  v55 = v94;
  v79 = v96;
  v52 = v97;
  v53 = v95;
  v9 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v82, a5);
  }

  v72 = v84;
  v49 = v85;
  v50 = v83;
  v73 = v86;
  v74 = v82;
  v47 = v89;
  v48 = v87;
  v68 = v88;
  v69 = v90;
  v45 = v93;
  v46 = v91;
  v66 = v92;
  v67 = v94;
  v63 = v96;
  v43 = v97;
  v44 = v95;
  v54 = a5;
  v51 = a3;
  v10 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v82, a5);
  }

  v56 = v82;
  v57 = v84;
  v41 = v85;
  v42 = v83;
  v58 = v88;
  v59 = v86;
  v39 = v89;
  v40 = v87;
  v12 = v90;
  v11 = v91;
  v13 = v92;
  v14 = v93;
  v16 = v94;
  v15 = v95;
  v17 = v96;
  v18 = v97;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v51 + 24, &v82, v54);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v51 + 24, &v82, v54);
  }

  a1[6] = v55 | (v53 << 8);
  v19 = v82;
  *a1 = v62 | (v60 << 8);
  v20 = v83;
  v21 = v84;
  a1[1] = v65 | (v61 << 8);
  v22 = v85;
  v23 = v86;
  a1[2] = v71 | (v64 << 8);
  v24 = v87;
  v25 = v88;
  a1[3] = v76 | (v70 << 8);
  v26 = v89;
  v27 = v90;
  a1[4] = v78 | (v75 << 8);
  v28 = v91;
  result = v92;
  a1[5] = v80 | (v77 << 8);
  v30 = v93;
  a1[7] = v79 | (v52 << 8);
  v31 = v94;
  a1[8] = v56 | (v42 << 8);
  v32 = v95;
  a1[9] = v57 | (v41 << 8);
  v33 = v96;
  v34 = v19 | (v20 << 8);
  v35 = v97;
  a1[10] = v59 | (v40 << 8);
  a1[11] = v58 | (v39 << 8);
  v36 = v21 | (v22 << 8);
  a1[12] = v12 | (v11 << 8);
  a1[13] = v13 | (v14 << 8);
  v37 = v23 | (v24 << 8);
  a1[14] = v16 | (v15 << 8);
  a1[15] = v17 | (v18 << 8);
  v38 = (a1 + a2);
  *v38 = v74 | (v50 << 8);
  v38[1] = v72 | (v49 << 8);
  v38[2] = v73 | (v48 << 8);
  v38[3] = v68 | (v47 << 8);
  v38[4] = v69 | (v46 << 8);
  v38[5] = v66 | (v45 << 8);
  v38[6] = v67 | (v44 << 8);
  v38[7] = v63 | (v43 << 8);
  v38[8] = v34;
  v38[9] = v36;
  v38[10] = v37;
  v38[11] = v25 | (v26 << 8);
  v38[12] = v27 | (v28 << 8);
  v38[13] = result | (v30 << 8);
  v38[14] = v31 | (v32 << 8);
  v38[15] = v33 | (v35 << 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 32, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 32, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 32, a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5)
  {
    v7 = a6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *a3;
  v10 = vdupq_lane_s16(*a3, 0);
  v11 = vsubq_s8(*a3, v10);
  v12 = vsubq_s8(*(a3 + 16), v10);
  v13 = vsubq_s8(*(a3 + a4), v10);
  v14 = vsubq_s8(*(a3 + a4 + 16), v10);
  v15 = vqtbl1q_s8(v11, xmmword_29D2F0EF0);
  v16 = vpmaxq_s8(v15, v15);
  v17 = vpminq_s8(v15, v15);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vpmaxq_s8(v18, v18);
  v21 = vpminq_s8(v19, v19);
  v22 = vzip1q_s8(v20, v21);
  v23.i64[0] = 0x808080808080808;
  v23.i64[1] = 0x808080808080808;
  v24 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v22)), vceqzq_s8(v22));
  v25 = vpmaxq_s8(v24, v24);
  v26 = vqtbl1q_s8(v12, xmmword_29D2F0EF0);
  v27 = vpmaxq_s8(v26, v26);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vpmaxq_s8(v29, v29);
  v32 = vpminq_s8(v30, v30);
  v33 = vmaxq_s8(v20, v31);
  v34 = vminq_s8(v21, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v35)), vceqzq_s8(v35));
  v37 = vpmaxq_s8(v36, v36);
  v38 = vqtbl1q_s8(v13, xmmword_29D2F0EF0);
  v39 = vpmaxq_s8(v38, v38);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vmaxq_s8(v33, v43);
  v46 = vminq_s8(v34, v44);
  v47 = vzip1q_s8(v43, v44);
  v48 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v47)), vceqzq_s8(v47));
  v49 = vpmaxq_s8(v48, v48);
  v50 = vqtbl1q_s8(v14, xmmword_29D2F0EF0);
  v51 = vpmaxq_s8(v50, v50);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vpmaxq_s8(v53, v53);
  v56 = vpminq_s8(v54, v54);
  v57 = vmaxq_s8(v45, v55);
  v58 = vminq_s8(v46, v56);
  v59 = vzip1q_s8(v55, v56);
  v60 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v59)), vceqzq_s8(v59));
  v61 = vpmaxq_s8(v60, v60);
  v62 = vmaxq_s8(vmaxq_s8(v25, v37), vmaxq_s8(v49, v61));
  v63 = vclzq_s8(vsubq_s8(v57, v58));
  v64 = vsubq_s8(v23, v63);
  v65 = vminq_s8(v64, v62);
  if (!vmaxvq_s8(v65))
  {
    *a1 = *a3;
    *a2 = 1;
    return 2;
  }

  v66.i64[0] = -1;
  v66.i64[1] = -1;
  v67.i64[0] = 0x707070707070707;
  v67.i64[1] = 0x707070707070707;
  v68 = vcgtq_s8(v62, v64);
  v401 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v63)), v58), v68);
  v69.i64[0] = 0x303030303030303;
  v69.i64[1] = 0x303030303030303;
  v70 = vorrq_s8(vandq_s8(vceqzq_s8(v65), v69), vandq_s8(v68, v23));
  v71 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v25), v69), 0);
  v72 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v37), v69), 0);
  v73 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v49), v69), 0);
  v74 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v61), v69), 0);
  v75.i64[0] = 0x404040404040404;
  v75.i64[1] = 0x404040404040404;
  v76 = vorrq_s8(vbicq_s8(v75, vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)))), v70);
  v77 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F0EE0));
  v78 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F0EE0));
  v79 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F0EE0));
  v400 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F0EE0));
  v80 = vqtbl1q_s8(v400, xmmword_29D2F0EF0);
  v81 = vpmaxq_s8(v80, v80);
  v82 = vpminq_s8(v80, v80);
  v83 = vpmaxq_s8(v81, v81);
  v84 = vpminq_s8(v82, v82);
  v85 = vpmaxq_s8(v83, v83);
  v86 = vpminq_s8(v84, v84);
  v87 = vzip1q_s8(v85, v86);
  v88 = v13;
  v89 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v87)), vceqzq_s8(v87));
  v90 = vpmaxq_s8(v89, v89);
  v91 = vqtbl1q_s8(v77, xmmword_29D2F0EF0);
  v92 = vpmaxq_s8(v91, v91);
  v93 = vpminq_s8(v91, v91);
  v94 = vpmaxq_s8(v92, v92);
  v95 = vpminq_s8(v93, v93);
  v96 = vpmaxq_s8(v94, v94);
  v97 = vpminq_s8(v95, v95);
  v98 = vmaxq_s8(v85, v96);
  v99 = vminq_s8(v86, v97);
  v100 = vzip1q_s8(v96, v97);
  v101 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v100)), vceqzq_s8(v100));
  v102 = vpmaxq_s8(v101, v101);
  v103 = vqtbl1q_s8(v78, xmmword_29D2F0EF0);
  v104 = vpmaxq_s8(v103, v103);
  v105 = vpminq_s8(v103, v103);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vpmaxq_s8(v106, v106);
  v109 = vpminq_s8(v107, v107);
  v110 = vmaxq_s8(v98, v108);
  v111 = vminq_s8(v99, v109);
  v112 = vzip1q_s8(v108, v109);
  v113 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v112)), vceqzq_s8(v112));
  v114 = vpmaxq_s8(v113, v113);
  v115 = vqtbl1q_s8(v79, xmmword_29D2F0EF0);
  v116 = vpmaxq_s8(v115, v115);
  v117 = vpminq_s8(v115, v115);
  v118 = vpmaxq_s8(v116, v116);
  v119 = vpminq_s8(v117, v117);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = v14;
  v123 = vmaxq_s8(v110, v120);
  v124 = vminq_s8(v111, v121);
  v125 = vzip1q_s8(v120, v121);
  v126 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v125)), vceqzq_s8(v125));
  v127 = vpmaxq_s8(v126, v126);
  v128 = vmaxq_s8(vmaxq_s8(v90, v102), vmaxq_s8(v114, v127));
  v129 = vclzq_s8(vsubq_s8(v123, v124));
  v130 = vsubq_s8(v23, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v130.i64[0] = 0x1010101010101010;
  v130.i64[1] = 0x1010101010101010;
  v133.i64[0] = 0x1818181818181818;
  v133.i64[1] = 0x1818181818181818;
  v134 = vorrq_s8(vandq_s8(vceqzq_s8(v132), v69), vbslq_s8(v131, v133, v130));
  v135 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v90), v69), 0);
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v102), v69), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v114), v69), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v127), v69), 0);
  v139 = vsubq_s8(v132, v135);
  v140 = vsubq_s8(v132, v136);
  v141 = vsubq_s8(v132, v137);
  v142 = vsubq_s8(v132, v138);
  v143 = vorrq_s8(v134, vbicq_s8(v75, vceqq_s8(vaddq_s8(v138, v137), vnegq_s8(vaddq_s8(v135, v136)))));
  v144 = vmovl_u8(*v143.i8);
  v136.i64[0] = 0x8000800080008;
  v136.i64[1] = 0x8000800080008;
  v135.i64[0] = 0x2000200020002;
  v135.i64[1] = 0x2000200020002;
  v145 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v141.i8, *v140.i8), *v142.i8), 3uLL), *v139.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v143.i8, 1uLL), v136)), vbicq_s8(vmovl_s8(*v132.i8), vceqzq_s16((*&v144 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v144 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v135), v136));
  v146 = vceqq_s16((*&vmovl_u8(*v76.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v135);
  v147 = vsubq_s8(v65, v71);
  v148 = vsubq_s8(v65, v72);
  v149 = vsubq_s8(v65, v73);
  v150 = vsubq_s8(v65, v74);
  v151 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL), *v147.i8, 0x707070707070707), vbic_s8(*v65.i8, vcgt_u8(0x808080808080808, *v76.i8))), (*&vshll_n_u8(*v76.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v146, v136)), v145)), 0);
  if (vaddlvq_s8(v151))
  {
    v152.i64[0] = 0x707070707070707;
    v152.i64[1] = 0x707070707070707;
    v153.i64[0] = -1;
    v153.i64[1] = -1;
    v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, vsubq_s8(v152, v129)), v124), v131);
    v10 = vbslq_s8(v151, vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0EE0)), v10);
    v155 = vbslq_s8(v151, v400, v11);
    v156 = vbslq_s8(v151, v77, v12);
    v88 = vbslq_s8(v151, v78, v88);
    v122 = vbslq_s8(v151, v79, v122);
    v147 = vbslq_s8(v151, v139, v147);
    v148 = vbslq_s8(v151, v140, v148);
    v149 = vbslq_s8(v151, v141, v149);
    v150 = vbslq_s8(v151, v142, v150);
    v157 = vbslq_s8(v151, v154, v401);
    v65 = vbslq_s8(v151, v132, v65);
    v76 = vbslq_s8(v151, v143, v76);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v157 = v401;
    v156 = v12;
    v155 = v11;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v402 = v122;
  v159 = v156;
  v160 = v88;
  v161 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F0F00));
  v162 = *(a3 + 16);
  v162.i16[7] = HIWORD(*a3);
  v163 = vsubq_s8(*(a3 + 16), vqtbl1q_s8(v162, xmmword_29D2F0F10));
  v164 = *(a3 + a4);
  v164.i16[7] = HIWORD(*a3);
  v165 = *(a3 + a4 + 16);
  v165.i16[7] = v164.i16[7];
  v166 = vsubq_s8(*(a3 + a4), vqtbl1q_s8(v164, xmmword_29D2F0F20));
  v167 = vsubq_s8(*(a3 + a4 + 16), vqtbl1q_s8(v165, xmmword_29D2F0F30));
  v168 = v161;
  v168.i16[0] = v161.i16[7];
  v168.i16[7] = v161.i16[0];
  v169 = vqtbl1q_s8(v168, xmmword_29D2F0EF0);
  v170 = vpmaxq_s8(v169, v169);
  v171 = vpminq_s8(v169, v169);
  v172 = vpmaxq_s8(v170, v170);
  v173 = vpminq_s8(v171, v171);
  v174 = vpmaxq_s8(v172, v172);
  v175 = vpminq_s8(v173, v173);
  v176 = vzip1q_s8(v174, v175);
  v177.i64[0] = 0x808080808080808;
  v177.i64[1] = 0x808080808080808;
  v178 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v176)), vceqzq_s8(v176));
  v179 = vpmaxq_s8(v178, v178);
  v180 = vqtbl1q_s8(v163, xmmword_29D2F0EF0);
  v181 = vpmaxq_s8(v180, v180);
  v182 = vpminq_s8(v180, v180);
  v183 = vpmaxq_s8(v181, v181);
  v184 = vpminq_s8(v182, v182);
  v185 = vpmaxq_s8(v183, v183);
  v186 = vpminq_s8(v184, v184);
  v187 = vmaxq_s8(v174, v185);
  v188 = vminq_s8(v175, v186);
  v189 = vzip1q_s8(v185, v186);
  v190 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v189)), vceqzq_s8(v189));
  v191 = vpmaxq_s8(v190, v190);
  v192 = vqtbl1q_s8(v166, xmmword_29D2F0EF0);
  v193 = vpmaxq_s8(v192, v192);
  v194 = vpminq_s8(v192, v192);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vmaxq_s8(v187, v197);
  v200 = vminq_s8(v188, v198);
  v201 = vzip1q_s8(v197, v198);
  v202 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v201)), vceqzq_s8(v201));
  v203 = vpmaxq_s8(v202, v202);
  v204 = vqtbl1q_s8(v167, xmmword_29D2F0EF0);
  v205 = vpmaxq_s8(v204, v204);
  v206 = vpminq_s8(v204, v204);
  v207 = vpmaxq_s8(v205, v205);
  v208 = vpminq_s8(v206, v206);
  v209 = vpmaxq_s8(v207, v207);
  v210 = vpminq_s8(v208, v208);
  v211 = vmaxq_s8(v199, v209);
  v212 = vminq_s8(v200, v210);
  v213 = vzip1q_s8(v209, v210);
  v214 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v213)), vceqzq_s8(v213));
  v215 = vpmaxq_s8(v214, v214);
  v216 = vmaxq_s8(vmaxq_s8(v179, v191), vmaxq_s8(v203, v215));
  v217 = vclzq_s8(vsubq_s8(v211, v212));
  v218 = vsubq_s8(v177, v217);
  v219 = vcgtq_s8(v216, v218);
  v220 = vminq_s8(v218, v216);
  v218.i64[0] = 0x909090909090909;
  v218.i64[1] = 0x909090909090909;
  v221.i64[0] = 0x202020202020202;
  v221.i64[1] = 0x202020202020202;
  v222 = vorrq_s8(vandq_s8(vceqzq_s8(v220), v221), vsubq_s8(vandq_s8(v219, v218), vmvnq_s8(v219)));
  v177.i64[0] = 0x303030303030303;
  v177.i64[1] = 0x303030303030303;
  v223 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v179), v177), 0);
  v224 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v191), v177), 0);
  v225 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v203), v177), 0);
  v226 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v215), v177), 0);
  v227 = vsubq_s8(v220, v223);
  v228 = vsubq_s8(v220, v224);
  v229 = vsubq_s8(v220, v225);
  v230 = vsubq_s8(v220, v226);
  v231 = vceqq_s8(vaddq_s8(v226, v225), vnegq_s8(vaddq_s8(v223, v224)));
  v224.i64[0] = 0x404040404040404;
  v224.i64[1] = 0x404040404040404;
  v232 = vorrq_s8(v222, vbicq_s8(v224, v231));
  v233.i64[0] = 0x3000300030003;
  v233.i64[1] = 0x3000300030003;
  v234 = vmovl_s8(*v76.i8);
  v226.i64[0] = 0x8000800080008;
  v226.i64[1] = 0x8000800080008;
  v235 = vbicq_s8(vmovl_s8(*v65.i8), vceqzq_s16(vandq_s8(v234, v226)));
  v236 = vandq_s8(v234, v233);
  v233.i64[0] = 0x2000200020002;
  v233.i64[1] = 0x2000200020002;
  v237 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v235, vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v226)), vandq_s8(vceqq_s16(v236, v233), v226)), *v147.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v229.i8, *v228.i8), *v230.i8), 3uLL), *v227.i8, 0x707070707070707), vand_s8(vadd_s8(*v232.i8, *v232.i8), 0x808080808080808)), vbic_s8(*v220.i8, vcgt_u8(0x808080808080808, *v232.i8))))), 0);
  if (vaddlvq_s8(v237))
  {
    v238.i64[0] = 0x707070707070707;
    v238.i64[1] = 0x707070707070707;
    v239.i64[0] = -1;
    v239.i64[1] = -1;
    v240 = vandq_s8(vsubq_s8(vshlq_s8(v239, vsubq_s8(v238, v217)), v212), v219);
    v10.i16[0] = vbslq_s8(v237, vextq_s8(v9, v9, 0xEuLL), v10).u16[0];
    v155 = vbslq_s8(v237, v168, v155);
    v156 = vbslq_s8(v237, v163, v159);
    v88 = vbslq_s8(v237, v166, v160);
    v122 = vbslq_s8(v237, v167, v402);
    v147 = vbslq_s8(v237, v227, v147);
    v148 = vbslq_s8(v237, v228, v148);
    v149 = vbslq_s8(v237, v229, v149);
    v150 = vbslq_s8(v237, v230, v150);
    v157 = vbslq_s8(v237, v240, v157);
    v65 = vbslq_s8(v237, v220, v65);
    v76 = vbslq_s8(v237, v232, v76);
  }

  else
  {
    v88 = v160;
    v156 = v159;
    v122 = v402;
  }

LABEL_16:
  v241 = vmovl_s8(*v76.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v243 = vbicq_s8(vmovl_s8(*v65.i8), vceqzq_s16(vandq_s8(v241, v242)));
  v244.i64[0] = 0x3000300030003;
  v244.i64[1] = 0x3000300030003;
  v245 = vandq_s8(v241, v244);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v246 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL), *v147.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v76.i8, 1uLL), v242)), v243), vandq_s8(vceqq_s16(v245, v244), v242));
  if ((vpaddq_s16(v246, v246).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
  }

  else
  {
    v247 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v248 = 8 * (a1 & 7);
    if (v248)
    {
      v249 = *v247 & ~(-1 << v248);
    }

    else
    {
      v249 = 0;
    }

    v250 = ((v65.i8[0] - 1) & 7) << 10;
    if (!v65.i8[0])
    {
      v250 = 0;
    }

    if (v65.i8[1])
    {
      v251 = ((v65.u8[1] << 13) - 0x2000) & 0xE000;
    }

    else
    {
      v251 = 0;
    }

    *a2 = v76.i8[0] << 6;
    v252 = ((v250 | v251) & 0xFFFFFFFFFFFFFC1FLL | v76.i8[0] & 0x1C | (32 * (v76.i8[1] & 0x1F))) >> 2;
    v253 = v249 | (v252 << v248);
    if (v248 >= 0x32)
    {
      *v247 = v253;
      v253 = v252 >> (-8 * (a1 & 7u));
    }

    v254 = (v248 + 14) & 0x3E;
    v255 = v253 | (v10.u16[0] << v254);
    if (v254 >= 0x30)
    {
      *(v247 + (((v248 + 14) >> 3) & 8)) = v255;
      v255 = v10.u16[0] >> -v254;
    }

    v256 = v248 + 30;
    v257 = vsubq_s8(v65, v147);
    v258 = vsubq_s8(v65, v148);
    v259 = vsubq_s8(v65, v149);
    v260 = vsubq_s8(v65, v150);
    v257.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v257, v258), vzip1q_s8(v259, v260)), vzip1q_s16(vtrn2q_s8(v257, v258), vtrn2q_s8(v259, v260))).u64[0];
    v259.i64[0] = 0x202020202020202;
    v259.i64[1] = 0x202020202020202;
    v261 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v76.i8), 0x4000400040004)))), v259);
    v259.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v259.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v260.i64[0] = -1;
    v260.i64[1] = -1;
    v262 = vandq_s8(vshlq_u8(v260, vorrq_s8(v261, v259)), v257.u64[0]);
    v263 = vmovl_u8(*v261.i8);
    v264 = vpaddq_s16(vshlq_u16(vmovl_u8(*v262.i8), vtrn1q_s16(0, v263)), vmovl_high_u8(v262));
    v265 = vpaddq_s16(v263, vmovl_high_u8(v261));
    v266 = vmovl_u16(*v265.i8);
    v267 = vmovl_high_u16(v265);
    v268 = vpaddq_s32(vshlq_u32(vmovl_u16(*v264.i8), vtrn1q_s32(0, v266)), vshlq_u32(vmovl_high_u16(v264), vtrn1q_s32(0, v267)));
    v269 = vpaddq_s32(v266, v267);
    v270.i64[0] = v268.u32[0];
    v270.i64[1] = v268.u32[1];
    v271 = v270;
    v270.i64[0] = v268.u32[2];
    v270.i64[1] = v268.u32[3];
    v272 = v270;
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v273 = v270;
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v274 = vpaddq_s64(vshlq_u64(v271, vzip1q_s64(0, v273)), vshlq_u64(v272, vzip1q_s64(0, v270)));
    v275 = vpaddq_s64(v273, v270);
    v276 = (v248 + 30) & 0x3E;
    v277 = (v274.i64[0] << v276) | v255;
    if ((v275.i64[0] + v276) >= 0x40)
    {
      *(v247 + ((v256 >> 3) & 8)) = v277;
      v277 = v274.i64[0] >> -v276;
    }

    v278 = vceqq_s8(v65, v147);
    v279 = v275.i64[0] + v256;
    v280 = v277 | (v274.i64[1] << v279);
    if ((v279 & 0x3F) + v275.i64[1] >= 0x40)
    {
      *(v247 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
      v280 = v274.i64[1] >> -(v279 & 0x3F);
      if ((v279 & 0x3F) == 0)
      {
        v280 = 0;
      }
    }

    v281 = vandq_s8(v157, v278);
    v282 = v279 + v275.i64[1];
    v283.i64[0] = 0x808080808080808;
    v283.i64[1] = 0x808080808080808;
    v284.i64[0] = -1;
    v284.i64[1] = -1;
    v285 = vandq_s8(vextq_s8(vtstq_s8(v76, v283), 0, 0xEuLL), v65);
    v286.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v286.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v287 = vandq_s8(vshlq_u8(v284, vaddq_s8(v285, v286)), v157);
    v288 = vmovl_u8(*v285.i8);
    v289 = vpaddq_s16(vshlq_u16(vmovl_u8(*v287.i8), vtrn1q_s16(0, v288)), vmovl_high_u8(v287));
    v290 = vpaddq_s16(v288, vmovl_high_u8(v285));
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
    v301 = (v299.i64[0] << v282) | v280;
    if (v300.i64[0] + (v282 & 0x3F) >= 0x40)
    {
      *(v247 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
      v301 = v299.i64[0] >> -(v282 & 0x3F);
      if ((v282 & 0x3F) == 0)
      {
        v301 = 0;
      }
    }

    v302 = vceqq_s8(v65, v148);
    v303 = vaddq_s8(v281, v155);
    v304 = v300.i64[0] + v282;
    v305 = v301 | (v299.i64[1] << v304);
    if ((v304 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v247 + ((v304 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
      v305 = v299.i64[1] >> -(v304 & 0x3F);
      if ((v304 & 0x3F) == 0)
      {
        v305 = 0;
      }
    }

    v306 = vandq_s8(v157, v302);
    v307 = v304 + v300.i64[1];
    v308 = vextq_s8(0, v147, 0xEuLL);
    v309.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v309.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[0] = -1;
    v310.i64[1] = -1;
    v311 = vandq_s8(vshlq_u8(v310, vaddq_s8(v308, v309)), v303);
    v312 = vmovl_u8(*v308.i8);
    v313 = vmovl_high_u8(v308);
    v314 = vpaddq_s16(vshlq_u16(vmovl_u8(*v311.i8), vtrn1q_s16(0, v312)), vshlq_u16(vmovl_high_u8(v311), vtrn1q_s16(0, v313)));
    v315 = vpaddq_s16(v312, v313);
    v316 = vmovl_u16(*v315.i8);
    v317 = vmovl_high_u16(v315);
    v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v317)));
    v319 = vpaddq_s32(v316, v317);
    v320.i64[0] = v318.u32[0];
    v320.i64[1] = v318.u32[1];
    v321 = v320;
    v320.i64[0] = v318.u32[2];
    v320.i64[1] = v318.u32[3];
    v322 = v320;
    v320.i64[0] = v319.u32[0];
    v320.i64[1] = v319.u32[1];
    v323 = v320;
    v320.i64[0] = v319.u32[2];
    v320.i64[1] = v319.u32[3];
    v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
    v325 = vpaddq_s64(v323, v320);
    v326 = (v324.i64[0] << v307) | v305;
    if (v325.i64[0] + (v307 & 0x3F) >= 0x40)
    {
      *(v247 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v307 & 0x3F);
      if ((v307 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s8(v65, v149);
    v328 = vaddq_s8(v156, v306);
    v329 = v325.i64[0] + v307;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v247 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v157, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v333.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u8(v334, vaddq_s8(v148, v333)), v328);
    v336 = vmovl_u8(*v148.i8);
    v337 = vmovl_high_u8(v148);
    v338 = vpaddq_s16(vshlq_u16(vmovl_u8(*v335.i8), vtrn1q_s16(0, v336)), vshlq_u16(vmovl_high_u8(v335), vtrn1q_s16(0, v337)));
    v339 = vpaddq_s16(v336, v337);
    v340 = vmovl_u16(*v339.i8);
    v341 = vmovl_high_u16(v339);
    v342 = vpaddq_s32(vshlq_u32(vmovl_u16(*v338.i8), vtrn1q_s32(0, v340)), vshlq_u32(vmovl_high_u16(v338), vtrn1q_s32(0, v341)));
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
    v350 = (v348.i64[0] << v332) | v330;
    if (v349.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v247 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
      v350 = v348.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v350 = 0;
      }
    }

    v351 = vceqq_s8(v65, v150);
    v352 = vaddq_s8(v88, v331);
    v353 = v349.i64[0] + v332;
    v354 = v350 | (v348.i64[1] << v353);
    if ((v353 & 0x3F) + v349.i64[1] >= 0x40)
    {
      *(v247 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v348.i64[1] >> -(v353 & 0x3F);
      if ((v353 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vandq_s8(v157, v351);
    v356 = v353 + v349.i64[1];
    v357.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v357.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v358.i64[0] = -1;
    v358.i64[1] = -1;
    v359 = vandq_s8(vshlq_u8(v358, vaddq_s8(v149, v357)), v352);
    v360 = vmovl_u8(*v149.i8);
    v361 = vmovl_high_u8(v149);
    v362 = vpaddq_s16(vshlq_u16(vmovl_u8(*v359.i8), vtrn1q_s16(0, v360)), vshlq_u16(vmovl_high_u8(v359), vtrn1q_s16(0, v361)));
    v363 = vpaddq_s16(v360, v361);
    v364 = vmovl_u16(*v363.i8);
    v365 = vmovl_high_u16(v363);
    v366 = vpaddq_s32(vshlq_u32(vmovl_u16(*v362.i8), vtrn1q_s32(0, v364)), vshlq_u32(vmovl_high_u16(v362), vtrn1q_s32(0, v365)));
    v367 = vpaddq_s32(v364, v365);
    v368.i64[0] = v366.u32[0];
    v368.i64[1] = v366.u32[1];
    v369 = v368;
    v368.i64[0] = v366.u32[2];
    v368.i64[1] = v366.u32[3];
    v370 = v368;
    v368.i64[0] = v367.u32[0];
    v368.i64[1] = v367.u32[1];
    v371 = v368;
    v368.i64[0] = v367.u32[2];
    v368.i64[1] = v367.u32[3];
    v372 = vpaddq_s64(vshlq_u64(v369, vzip1q_s64(0, v371)), vshlq_u64(v370, vzip1q_s64(0, v368)));
    v373 = vpaddq_s64(v371, v368);
    v374 = (v372.i64[0] << v356) | v354;
    if (v373.i64[0] + (v356 & 0x3F) >= 0x40)
    {
      *(v247 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
      v374 = v372.i64[0] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v374 = 0;
      }
    }

    v375 = vaddq_s8(v122, v355);
    v376 = v373.i64[0] + v356;
    v377 = v374 | (v372.i64[1] << v376);
    if ((v376 & 0x3F) + v373.i64[1] >= 0x40)
    {
      *(v247 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
      v377 = v372.i64[1] >> -(v376 & 0x3F);
      if ((v376 & 0x3F) == 0)
      {
        v377 = 0;
      }
    }

    v378 = v376 + v373.i64[1];
    v379.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v379.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v380.i64[0] = -1;
    v380.i64[1] = -1;
    v381 = vandq_s8(vshlq_u8(v380, vaddq_s8(v150, v379)), v375);
    v382 = vmovl_u8(*v150.i8);
    v383 = vmovl_high_u8(v150);
    v384 = vpaddq_s16(vshlq_u16(vmovl_u8(*v381.i8), vtrn1q_s16(0, v382)), vshlq_u16(vmovl_high_u8(v381), vtrn1q_s16(0, v383)));
    v385 = vpaddq_s16(v382, v383);
    v386 = vmovl_u16(*v385.i8);
    v387 = vmovl_high_u16(v385);
    v388 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v386)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v387)));
    v389 = vpaddq_s32(v386, v387);
    v390.i64[0] = v388.u32[0];
    v390.i64[1] = v388.u32[1];
    v391 = v390;
    v390.i64[0] = v388.u32[2];
    v390.i64[1] = v388.u32[3];
    v392 = v390;
    v390.i64[0] = v389.u32[0];
    v390.i64[1] = v389.u32[1];
    v393 = v390;
    v390.i64[0] = v389.u32[2];
    v390.i64[1] = v389.u32[3];
    v394 = vpaddq_s64(vshlq_u64(v391, vzip1q_s64(0, v393)), vshlq_u64(v392, vzip1q_s64(0, v390)));
    v395 = vpaddq_s64(v393, v390);
    v396 = (v394.i64[0] << v378) | v377;
    if (v395.i64[0] + (v378 & 0x3F) > 0x3F)
    {
      *(v247 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      if ((v378 & 0x3F) != 0)
      {
        v396 = v394.i64[0] >> -(v378 & 0x3F);
      }

      else
      {
        v396 = 0;
      }
    }

    v397 = v395.i64[0] + v378;
    v398 = v396 | (v394.i64[1] << v397);
    if ((v397 & 0x3F) + v395.i64[1] >= 0x40)
    {
      *(v247 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
      v398 = v394.i64[1] >> -(v397 & 0x3F);
      if ((v397 & 0x3F) == 0)
      {
        v398 = 0;
      }
    }

    v399 = v397 + v395.i64[1];
    if ((v399 & 0x3F) != 0)
    {
      *(v247 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
    }

    result = (v399 - v248 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v12 = 0;
  v73 = *MEMORY[0x29EDCA608];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
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
  if (a6)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (a5)
    {
      v28 = 0;
      do
      {
        v29 = 0;
        v30 = (a3 + v28 * a4);
        v31 = &v69 + 2 * (v28 & 0x3F);
        v32 = &v69 + 8 * ((4 * v28) | 1u);
        v33 = &v69 + 8 * ((4 * v28) | 2u);
        v34 = &v69 + 8 * ((4 * v28) | 3u);
        do
        {
          *(v31 + 2 * (v29 & 0x7F)) = *v30;
          *&v32[4 * (v29 & 0x7F)] = v30[1];
          v35 = (2 * v29) | 1u;
          *(v31 + v35) = v30[2];
          *&v32[2 * v35] = v30[3];
          *&v33[4 * (v29 & 0x7F)] = v30[4];
          *&v34[4 * (v29 & 0x7F)] = v30[5];
          v36 = v30[6];
          v37 = v30[7];
          v30 += 8;
          ++v29;
          *&v33[2 * v35] = v36;
          *&v34[2 * v35] = v37;
        }

        while (a5 != v29);
        ++v28;
      }

      while (v28 != a6);
      v27 = v69;
      v26 = BYTE1(v69);
      v25 = BYTE8(v69);
      v24 = BYTE9(v69);
      v23 = BYTE2(v69);
      v22 = BYTE3(v69);
      v21 = BYTE10(v69);
      v20 = BYTE11(v69);
      v19 = v70;
      v18 = BYTE1(v70);
      v17 = BYTE8(v70);
      v16 = BYTE9(v70);
      v15 = BYTE2(v70);
      v14 = BYTE3(v70);
      v13 = BYTE10(v70);
      v12 = BYTE11(v70);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  v53 = v27;
  v54 = v26;
  v38 = 2 * (a6 & 0x7F);
  v39 = 4 * (a5 & 0x3F);
  v55 = v25;
  v56 = v24;
  v57 = v23;
  v58 = v22;
  v59 = v21;
  v60 = v20;
  v61 = v19;
  v62 = v18;
  v63 = v17;
  v64 = v16;
  v65 = v15;
  v66 = v14;
  v67 = v13;
  v68 = v12;
  v40 = 4 * (a5 != 0);
  v41 = 2 * (a6 != 0);
  v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v53, a7, v40, v41);
  v53 = BYTE4(v69);
  v54 = BYTE5(v69);
  v55 = BYTE12(v69);
  v56 = BYTE13(v69);
  v57 = BYTE6(v69);
  v58 = BYTE7(v69);
  v59 = BYTE14(v69);
  v60 = HIBYTE(v69);
  v61 = BYTE4(v70);
  v62 = BYTE5(v70);
  v63 = BYTE12(v70);
  v64 = BYTE13(v70);
  v65 = BYTE6(v70);
  v66 = BYTE7(v70);
  v43 = v38 - 2;
  if (v38 < 2)
  {
    v43 = 0;
  }

  if (a6 >= 2)
  {
    v44 = 2;
  }

  else
  {
    v44 = v43;
  }

  v67 = BYTE14(v70);
  v68 = HIBYTE(v70);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v53, a7, v40, v44);
  v53 = v71;
  v54 = BYTE1(v71);
  v55 = BYTE8(v71);
  v56 = BYTE9(v71);
  v57 = BYTE2(v71);
  v58 = BYTE3(v71);
  v59 = BYTE10(v71);
  v60 = BYTE11(v71);
  v61 = v72;
  v62 = BYTE1(v72);
  v63 = BYTE8(v72);
  v64 = BYTE9(v72);
  v65 = BYTE2(v72);
  v66 = BYTE3(v72);
  v46 = v39 - 4;
  if (v39 < 4)
  {
    v46 = 0;
  }

  if (a5 >= 2)
  {
    v47 = 4;
  }

  else
  {
    v47 = v46;
  }

  v67 = BYTE10(v72);
  v68 = BYTE11(v72);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v53, a7, v47, v41);
  v53 = BYTE4(v71);
  v54 = BYTE5(v71);
  v55 = BYTE12(v71);
  v56 = BYTE13(v71);
  v57 = BYTE6(v71);
  v58 = BYTE7(v71);
  v59 = BYTE14(v71);
  v60 = HIBYTE(v71);
  v61 = BYTE4(v72);
  v62 = BYTE5(v72);
  v63 = BYTE12(v72);
  v64 = BYTE13(v72);
  v65 = BYTE6(v72);
  v66 = BYTE7(v72);
  v67 = BYTE14(v72);
  v68 = HIBYTE(v72);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v53, a7, v47, v44);
  if (v48)
  {
    v50 = 4;
  }

  else
  {
    v50 = 0;
  }

  if (v45)
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

  *a2 = v52 | v50 | v42 | v51;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x100;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v224.val[1] = vdupq_lane_s8(v22, 4);
  v224.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v224, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v224.val[0].i64[0] = 0x707070707070707;
  v224.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v224.val[0]);
  v224.val[0].i64[0] = 0x101010101010101;
  v224.val[0].i64[1] = 0x101010101010101;
  v224.val[0] = vaddq_s8(v26, v224.val[0]);
  v224.val[1].i64[0] = 0x303030303030303;
  v224.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v224.val[1]);
  v28 = vbicq_s8(v224.val[0], vceqq_s8(v27, v224.val[1]));
  v224.val[1].i64[0] = 0x202020202020202;
  v224.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v224.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v218 = v11;
  v219 = v10;
  v220 = v9;
  v221 = v8;
  v222 = v7;
  v223 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v216;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v217;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  *a1 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  a1[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v215 = (a1 + a2);
  *v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v215[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  return v134;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_WORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v98 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v82, a5);
  }

  v60 = v83;
  v69 = v85;
  v70 = v82;
  v71 = v87;
  v72 = v84;
  v73 = v89;
  v74 = v86;
  v78 = v90;
  v75 = v91;
  v76 = v88;
  v80 = v92;
  v77 = v93;
  v55 = v94;
  v79 = v96;
  v52 = v97;
  v53 = v95;
  v9 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v82, a5);
  }

  v62 = v82;
  v63 = v84;
  v49 = v85;
  v50 = v83;
  v47 = v89;
  v48 = v87;
  v67 = v90;
  v68 = v86;
  v46 = v91;
  v64 = v92;
  v65 = v94;
  v66 = v88;
  v44 = v95;
  v45 = v93;
  v61 = v96;
  v43 = v97;
  v54 = a5;
  v51 = a3;
  v10 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v82, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v82, a5);
  }

  v58 = v84;
  v59 = v82;
  v41 = v85;
  v42 = v83;
  v56 = v88;
  v57 = v86;
  v39 = v89;
  v40 = v87;
  v12 = v90;
  v11 = v91;
  v13 = v92;
  v14 = v93;
  v16 = v94;
  v15 = v95;
  v17 = v96;
  v18 = v97;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v51 + 24, &v82, v54);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v51 + 24, &v82, v54);
  }

  a1[6] = v55 | (v53 << 8);
  v19 = v82;
  *a1 = v70 | (v60 << 8);
  v20 = v83;
  v21 = v84;
  a1[1] = v72 | (v69 << 8);
  v22 = v85;
  v23 = v86;
  a1[2] = v74 | (v71 << 8);
  v24 = v87;
  v25 = v88;
  a1[3] = v76 | (v73 << 8);
  v26 = v89;
  v27 = v90;
  a1[4] = v78 | (v75 << 8);
  v28 = v91;
  result = v92;
  a1[5] = v80 | (v77 << 8);
  v30 = v93;
  a1[7] = v79 | (v52 << 8);
  v31 = v94;
  a1[8] = v62 | (v50 << 8);
  v32 = v95;
  a1[9] = v63 | (v49 << 8);
  v33 = v96;
  v34 = v19 | (v20 << 8);
  v35 = v97;
  a1[10] = v68 | (v48 << 8);
  a1[11] = v66 | (v47 << 8);
  v36 = v21 | (v22 << 8);
  a1[12] = v67 | (v46 << 8);
  a1[13] = v64 | (v45 << 8);
  v37 = v23 | (v24 << 8);
  a1[14] = v65 | (v44 << 8);
  a1[15] = v61 | (v43 << 8);
  v38 = (a1 + a2);
  *v38 = v59 | (v42 << 8);
  v38[1] = v58 | (v41 << 8);
  v38[2] = v57 | (v40 << 8);
  v38[3] = v56 | (v39 << 8);
  v38[4] = v12 | (v11 << 8);
  v38[5] = v13 | (v14 << 8);
  v38[6] = v16 | (v15 << 8);
  v38[7] = v17 | (v18 << 8);
  v38[8] = v34;
  v38[9] = v36;
  v38[10] = v37;
  v38[11] = v25 | (v26 << 8);
  v38[12] = v27 | (v28 << 8);
  v38[13] = result | (v30 << 8);
  v38[14] = v31 | (v32 << 8);
  v38[15] = v33 | (v35 << 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 64, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 96, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 96, a2, v33, v32, a7);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_OWORD *a1, uint64_t a2)
{
  v2 = 8 * ((&v18 + 4) & 7);
  v18 |= 255 << v2;
  v3 = (v2 + 8) & 0x38;
  if (v3 - v2 + ((v2 + 8) & 0x40) + 8 <= 0x20)
  {
    v4 = v3 + 8;
    v5 = (v3 + 8) & 0x38;
    v6 = (v4 >> 6) + ((v2 + 8) >> 6);
    if (v5 - v2 + (v6 << 6) + 8 <= 0x20)
    {
      *(&v18 + v6) |= 255 << v5;
      v7 = v5 + 8;
      v8 = (v5 + 8) & 0x38;
      v9 = v6 + (v7 >> 6);
      if (v8 - v2 + (v9 << 6) + 8 <= 0x20)
      {
        v10 = 0;
        v11 = 8;
        do
        {
          v12 = 64 - v8;
          if (64 - v8 >= v11)
          {
            v12 = v11;
          }

          *(&v18 + v9) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v8;
          v10 += v12;
          v13 = v12 + v8;
          v9 += v13 >> 6;
          v8 = v13 & 0x3F;
          v11 -= v12;
        }

        while (v11);
      }
    }
  }

  v14 = (a1 + a2);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  v16 = (a1 + 2 * a2);
  *v14 = 0u;
  v14[1] = 0u;
  v17 = (a1 + 2 * a2 + a2);
  *v16 = 0u;
  v16[1] = 0u;
  *v17 = 0u;
  v17[1] = 0u;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = vdupq_n_s64(v7);
  v9 = vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F40));
  v10.i16[0] = v7;
  v10.i16[1] = v7 >> 5;
  v10.i16[2] = v9.i16[0];
  v10.i16[3] = v9.i16[2];
  *v8.i8 = vand_s8(vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F50)), 0x700000007);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = (v7 >> 26) & 7;
  v8.i16[3] = v7 >> 29;
  v11 = vuzp1_s8(vand_s8(v10, 0x1F001F001F001FLL), *v8.i8);
  *v8.i8 = vadd_s16(*v8.i8, 0x1000100010001);
  v12 = vuzp1_s8(*v8.i8, *v8.i8);
  v13 = v4 | 0x40;
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x400;
  v18 = vdupq_lane_s32(v11, 0);
  v19.i64[0] = 0x303030303030303;
  v19.i64[1] = 0x303030303030303;
  v306 = vandq_s8(v18, v19);
  v20 = vbicq_s8(vdupq_lane_s32(v12, 0), vceqq_s8(v306, v19));
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v11), 0x4000400040004)), v21);
  if (vmaxvq_s8(v22) < 1)
  {
    v30 = 0;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v304 = v51;
    v305 = v51;
    v48 = v20;
    v49 = v20;
    v50 = v20;
    v301 = v51;
    v302 = v51;
    v47 = v20;
  }

  else
  {
    v23 = vmovl_u8(*&vpaddq_s8(v22, v22));
    v24 = vmovl_u16(*&vpaddq_s16(v23, v23));
    v25 = vpaddq_s32(v24, v24).u64[0];
    v26.i64[0] = v25;
    v26.i64[1] = HIDWORD(v25);
    v27 = v26;
    v28 = vaddvq_s64(v26);
    v29 = v28 <= 0x80 && v17 >= v28 + v13;
    v30 = !v29;
    v31 = 0uLL;
    if (v29)
    {
      v32 = vaddq_s64(vzip1q_s64(0, v27), vdupq_n_s64(v4));
      v31 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v32)));
      if (v28 + v4 >= 0x81)
      {
        v31 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v31);
      }

      v13 += v28;
    }

    v33 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v31, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v31, v35), vzip2q_s64(v31, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v23 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vshlq_u16(v38, vnegq_s16((*&v22 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v40 = vuzp1q_s8(vzip1q_s16(v38, v39), vzip2q_s16(v38, v39));
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v39, v22);
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v42 = vqtbl1q_s8(vandq_s8(vaddq_s8(v41, v39), v40), xmmword_29D2F0F70);
    v43 = vdupq_lane_s32(*v42.i8, 0);
    v44 = vdupq_lane_s32(*v42.i8, 1);
    v45 = vdupq_laneq_s32(v42, 2);
    v46 = vdupq_laneq_s32(v42, 3);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vsubq_s8(v20, v45);
    v50 = vsubq_s8(v20, v46);
    v305 = vceqzq_s8(v43);
    v301 = vceqzq_s8(v44);
    v302 = vceqzq_s8(v45);
    v304 = vceqzq_s8(v46);
  }

  v52.i64[0] = 0x808080808080808;
  v52.i64[1] = 0x808080808080808;
  v53 = 0uLL;
  v54 = vandq_s8(vextq_s8(vtstq_s8(v18, v52), 0, 0xCuLL), v20);
  v55 = vmovl_u8(*&vpaddq_s8(v54, v54));
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  v61 = v60 + v13;
  if (v60 <= 0x80 && v17 >= v61)
  {
    v63 = v13 & 0x3F;
    v64 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v63));
    v65 = (v5 + 8 * (v13 >> 6));
    v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
    if (v60 + v63 >= 0x81)
    {
      v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v53);
    }

    v13 = v61;
  }

  else
  {
    v30 = 1;
  }

  v66 = v18.i8[0] & 3;
  if (v66 == 2)
  {
    if (v17 < v13 + 4)
    {
      v30 = 1;
    }

    else
    {
      v13 += 4;
    }

    v67 = v17 < v13 + 4;
    if (v17 >= v13 + 4)
    {
      v13 += 4;
    }

    v30 |= v67;
  }

  v68 = 0uLL;
  v69 = vextq_s8(0, v47, 0xCuLL);
  v70 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
  v72 = vpaddq_s32(v71, v71).u64[0];
  v73.i64[0] = v72;
  v73.i64[1] = HIDWORD(v72);
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v75 + v13;
  if (v75 <= 0x80 && v17 >= v76)
  {
    v79 = v13 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v74), vdupq_n_s64(v79));
    v81 = (v5 + 8 * (v13 >> 6));
    v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v75 + v79 >= 0x81)
    {
      v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v78);
    }

    v13 = v76;
  }

  else
  {
    v30 = 1;
    v78 = 0uLL;
  }

  v82 = vmovl_u8(*&vpaddq_s8(v47, v47));
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v13;
  if (v87 <= 0x80 && v17 >= v88)
  {
    v90 = v13 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v90));
    v92 = (v5 + 8 * (v13 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v87 + v90 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v68);
    }

    v13 = v88;
  }

  else
  {
    v30 = 1;
  }

  v93 = vmovl_u8(*&vpaddq_s8(v48, v48));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v98 + v13;
  v100 = 0uLL;
  if (v98 <= 0x80 && v17 >= v99)
  {
    v103 = v13 & 0x3F;
    v104 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v103));
    v105 = (v5 + 8 * (v13 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v98 + v103 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v102);
    }

    v13 = v99;
  }

  else
  {
    v30 = 1;
    v102 = 0uLL;
  }

  v106 = v98 + v13;
  if (v98 <= 0x80 && v17 >= v106)
  {
    v108 = v13 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v108));
    v110 = (v5 + 8 * (v13 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v98 + v108 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v100);
    }

    v13 = v106;
  }

  else
  {
    v30 = 1;
  }

  v111 = vmovl_u8(*&vpaddq_s8(v49, v49));
  v112 = vmovl_u16(*&vpaddq_s16(v111, v111));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v13;
  v118 = 0uLL;
  if (v116 <= 0x80 && v17 >= v117)
  {
    v121 = v13 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v121));
    v123 = (v5 + 8 * (v13 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v116 + v121 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v13 = v117;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v30 = 1;
    v120 = 0uLL;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  v124 = v116 + v13;
  if (v17 < v116 + v13)
  {
LABEL_78:
    v124 = v13;
    v30 = 1;
    goto LABEL_79;
  }

  v125 = v13 & 0x3F;
  v126 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v125));
  v127 = (v5 + 8 * (v13 >> 6));
  v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
  if (v116 + v125 >= 0x81)
  {
    v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v118);
  }

LABEL_79:
  v303 = v50;
  v128 = vmovl_u8(*&vpaddq_s8(v50, v50));
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v133;
  if (v133 > 0x80 || (v135 = v133 + v124, v17 < v133 + v124))
  {
    v135 = v124;
    v30 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v124 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v136));
    v138 = (v5 + 8 * (v124 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v134 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || v17 < v134 + v135)
  {
    goto LABEL_93;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135 & 0x3F));
  v141 = (v5 + 8 * (v135 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v134 + (v135 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 1024 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v144 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v145 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v146 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v147 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v148 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v149 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v150.i64[0] = v144.u32[0];
    v150.i64[1] = v144.u32[1];
    v151 = vshlq_u64(v53, vnegq_s64(v150));
    v152 = vzip2q_s64(v53, v151);
    v153 = vzip1q_s64(v53, v151);
    v150.i64[0] = v145.u32[0];
    v150.i64[1] = v145.u32[1];
    v154 = vshlq_u64(v78, vnegq_s64(v150));
    v155 = vzip2q_s64(v78, v154);
    v156 = vzip1q_s64(v78, v154);
    v150.i64[0] = v146.u32[0];
    v150.i64[1] = v146.u32[1];
    v157 = vshlq_u64(v68, vnegq_s64(v150));
    v158 = vzip2q_s64(v68, v157);
    v159 = vzip1q_s64(v68, v157);
    v150.i64[0] = v147.u32[0];
    v150.i64[1] = v147.u32[1];
    v160 = vnegq_s64(v150);
    v161 = vshlq_u64(v102, v160);
    v162 = vzip2q_s64(v102, v161);
    v163 = vzip1q_s64(v102, v161);
    v164 = vshlq_u64(v100, v160);
    v165 = vzip2q_s64(v100, v164);
    v166 = vzip1q_s64(v100, v164);
    v150.i64[0] = v148.u32[0];
    v150.i64[1] = v148.u32[1];
    v167 = vnegq_s64(v150);
    v168 = vshlq_u64(v120, v167);
    v169 = vzip2q_s64(v120, v168);
    v170 = vzip1q_s64(v120, v168);
    v171 = vshlq_u64(v118, v167);
    v172 = vzip2q_s64(v118, v171);
    v173 = vzip1q_s64(v118, v171);
    v150.i64[0] = v149.u32[0];
    v150.i64[1] = v149.u32[1];
    v174 = vnegq_s64(v150);
    v175 = vshlq_u64(v139, v174);
    v176 = vzip2q_s64(v139, v175);
    v177 = vzip1q_s64(v139, v175);
    v178 = vuzp1q_s32(v153, v152);
    v179 = vuzp1q_s32(v156, v155);
    v180 = vuzp1q_s32(v159, v158);
    v181 = vuzp1q_s32(v163, v162);
    v182 = vnegq_s32((*&v55 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v184 = vuzp1q_s32(v166, v165);
    v185 = vuzp1q_s32(v170, v169);
    v186 = vnegq_s32((*&v111 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v187 = vuzp1q_s32(v173, v172);
    v188 = vuzp1q_s32(v177, v176);
    v189 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v190 = vshlq_u32(v178, v182);
    v191 = vshlq_u32(v181, v183);
    v192 = vshlq_u32(v184, v183);
    v193 = vshlq_u32(v185, v186);
    v194 = vshlq_u32(v187, v186);
    v195 = vshlq_u32(v188, v189);
    v196 = vuzp1q_s16(vzip1q_s32(v178, v190), vzip2q_s32(v178, v190));
    v197 = vuzp1q_s16(vzip1q_s32(v181, v191), vzip2q_s32(v181, v191));
    v198 = vuzp1q_s16(vzip1q_s32(v184, v192), vzip2q_s32(v184, v192));
    v199 = vuzp1q_s16(vzip1q_s32(v185, v193), vzip2q_s32(v185, v193));
    v200 = vnegq_s16((*&v48 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v201 = vuzp1q_s16(vzip1q_s32(v187, v194), vzip2q_s32(v187, v194));
    v202 = vuzp1q_s16(vzip1q_s32(v188, v195), vzip2q_s32(v188, v195));
    v203 = vshlq_u16(v196, vnegq_s16((*&v54 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v204 = vshlq_u16(v197, v200);
    v205 = vshlq_u16(v198, v200);
    v206 = vzip2q_s16(v196, v203);
    v207 = vzip1q_s16(v196, v203);
    v208 = vuzp1q_s8(vzip1q_s16(v198, v205), vzip2q_s16(v198, v205));
    v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v203.i64[0] = 0x808080808080808;
    v203.i64[1] = 0x808080808080808;
    v209 = vsubq_s8(v203, v54);
    v210 = vaddq_s8(v54, v205);
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v212 = vshlq_s8(vuzp1q_s8(v207, v206), v209);
    v209.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v209.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v213 = vsubq_s8(v211, v48);
    v214 = vaddq_s8(v48, v209);
    v215 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v197, v204), vzip2q_s16(v197, v204)), v213);
    v216 = vshlq_s8(v208, v213);
    v217 = vnegq_s16((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v218 = vshlq_s8(v212, v210);
    v219 = vshlq_s8(v215, v214);
    v220 = vshlq_s8(v216, v214);
    v221 = vdupq_lane_s32(*v218.i8, 0);
    v222 = vandq_s8(v301, v221);
    v223 = vsubq_s8(v219, v222);
    v224 = vsubq_s8(v220, v222);
    v225 = vshlq_u16(v199, v217);
    v226 = vshlq_u16(v201, v217);
    v227 = vuzp1q_s8(vzip1q_s16(v199, v225), vzip2q_s16(v199, v225));
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v228 = vsubq_s8(v222, v49);
    v229 = vaddq_s8(v49, v199);
    v230 = vshlq_s8(v227, v228);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v226), vzip2q_s16(v201, v226)), v228);
    v232 = vnegq_s16((*&v303 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vshlq_s8(v231, v229);
    v234 = vandq_s8(v302, v221);
    v235 = vsubq_s8(vshlq_s8(v230, v229), v234);
    v236 = vsubq_s8(v233, v234);
    v237 = vshlq_u16(v202, v232);
    v238 = vzip2q_s16(v202, v237);
    v239 = vzip1q_s16(v202, v237);
    v202.i64[0] = 0x808080808080808;
    v202.i64[1] = 0x808080808080808;
    v240 = vuzp1q_s8(v239, v238);
    v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v241 = vsubq_s8(v202, v303);
    v242 = vaddq_s8(v303, v238);
    v243 = vshlq_u64(v142, v174);
    v244 = vuzp1q_s32(vzip1q_s64(v142, v243), vzip2q_s64(v142, v243));
    v245 = vshlq_u32(v244, v189);
    v246 = vuzp1q_s16(vzip1q_s32(v244, v245), vzip2q_s32(v244, v245));
    v247 = vshlq_u16(v246, v232);
    v248 = vshlq_s8(vshlq_s8(v240, v241), v242);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v247), vzip2q_s16(v246, v247)), v241), v242);
    v250 = vandq_s8(v304, v221);
    v251 = vsubq_s8(v248, v250);
    v252 = vsubq_s8(v249, v250);
    v253 = vshlq_u32(v179, vnegq_s32((*&v70 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v254 = vshlq_u32(v180, vnegq_s32((*&v82 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vuzp1q_s16(vzip1q_s32(v179, v253), vzip2q_s32(v179, v253));
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v16), xmmword_29D2F0F60));
    v256 = vuzp1q_s16(vzip1q_s32(v180, v254), vzip2q_s32(v180, v254));
    v257 = vshlq_u16(v255, vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v258 = vshlq_u16(v256, vnegq_s16((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vzip2q_s16(v255, v257);
    v260 = vzip1q_s16(v255, v257);
    v261 = vzip2q_s16(v256, v258);
    v262 = vzip1q_s16(v256, v258);
    v258.i16[0] = v16;
    v263 = v248.i8[4];
    v258.i8[2] = v248.i8[0];
    v264 = vuzp1q_s8(v260, v259);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v265 = vuzp1q_s8(v262, v261);
    v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266 = vshlq_s8(vshlq_s8(v265, vsubq_s8(v260, v47)), vaddq_s8(v47, v261));
    v267 = vaddq_s8(vandq_s8(v218, v305), vshlq_s8(vshlq_s8(v264, vsubq_s8(v260, v69)), vaddq_s8(v69, v261)));
    v268 = vandq_s8(v305, v221);
    v269.i64[0] = 0x101010101010101;
    v269.i64[1] = 0x101010101010101;
    v270 = vsubq_s8(v267, v268);
    v271 = vsubq_s8(v266, v268);
    v258.i8[3] = v263;
    v272 = vdupq_lane_s32(*v258.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v306, v269)))
    {
      v273 = vnegq_s8(vandq_s8(v18, v269));
      v274 = v271;
      v274.i32[3] = v270.i32[0];
      v275 = v270;
      v275.i32[0] = v271.i32[3];
      v307.val[0] = vbslq_s8(v273, v275, v270);
      v307.val[1] = vbslq_s8(v273, v274, v271);
      v274.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v274.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0F80), v273), v307.val[0]);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, v274), v273), v307.val[1]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0F90), v273), v308.val[0]);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[1]);
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v273), v223);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v273), v224);
      v223 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0FC0), v273), v308.val[0]);
      v224 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[1]);
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FD0), v273), v235);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0F80), v273), v236);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[0]);
      v236 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0FE0), v273), v308.val[1]);
      v307.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0FF0), v273), v251);
      v307.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0F80), v273), v252);
      v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, v274), v273), v307.val[0]);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F1000), v273), v307.val[1]);
    }

    v276 = vaddq_s8(v270, v272);
    v277 = vaddq_s8(v271, v272);
    v278 = vaddq_s8(v223, v272);
    v279 = vaddq_s8(v224, v272);
    v280 = vaddq_s8(v235, v272);
    v281 = vaddq_s8(v236, v272);
    v282 = vaddq_s8(v251, v272);
    v283 = vaddq_s8(v252, v272);
    v284.i64[0] = 0x1010101010101010;
    v284.i64[1] = 0x1010101010101010;
    v285 = v18.i8[1];
    v286 = vtstq_s8(v18, v284);
    if ((v285 & 0x10) != 0)
    {
      v286.i8[1] = v286.i8[2];
      v286.i8[2] = 0;
      v286 = vdupq_lane_s32(*v286.i8, 0);
      v287 = xmmword_29D2F1020;
    }

    else
    {
      v287 = xmmword_29D2F1010;
    }

    v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v276, v287), v286), v276);
    v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v277, v287), v286), v277);
    v290 = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v291 = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    v292 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v293 = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    v294 = vzip2q_s64(v288, v289);
    v295.i64[0] = v288.i64[0];
    v295.i64[1] = v289.i64[0];
    v288.i64[0] = v292.i64[0];
    v288.i64[1] = v293.i64[0];
    v296 = (a1 + a2);
    *a1 = v295;
    a1[1] = v288;
    v297 = (a1 + 2 * a2);
    v298 = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v299 = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    *v296 = v294;
    v296[1] = vzip2q_s64(v292, v293);
    v292.i64[0] = v290.i64[0];
    v292.i64[1] = v291.i64[0];
    v295.i64[0] = v298.i64[0];
    v295.i64[1] = v299.i64[0];
    *v297 = v292;
    v297[1] = v295;
    v300 = (v297 + a2);
    *v300 = vzip2q_s64(v290, v291);
    v300[1] = vzip2q_s64(v298, v299);
    return a4 + 1;
  }
}

int64x2_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(int64x2_t *result, uint64_t a2, int64x2_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = result[1];
    v9 = *(result + a2);
    v10 = *(&result[1] + a2);
    v11 = vzip2q_s64(*result, v9);
    v12 = vzip1q_s64(v8, v10);
    v13 = vzip2q_s64(v8, v10);
    v15 = *(result + 2 * a2);
    v16 = *(&result[1] + v7);
    v14 = (result + v7 + a2);
    v17 = v14[1];
    v18 = vzip1q_s64(v15, *v14);
    v19 = vzip2q_s64(v15, *v14);
    *a3 = vzip1q_s64(*result, v9);
    a3[1] = v11;
    a3[2] = v18;
    a3[3] = v19;
    a3[4] = v12;
    a3[5] = v13;
    a3[6] = vzip1q_s64(v16, v17);
    a3[7] = vzip2q_s64(v16, v17);
    a3 += 8;
    v6 = 127;
  }

  v20 = 0;
  v21 = 4 * a2;
  *a4 = v6;
  if (a5 && a6 >= 5)
  {
    v22 = (result + v21 + a2);
    v24 = *(result + 4 * a2);
    v25 = *(&result[1] + v21);
    v23 = (result + v21 + v7);
    v26 = v22[1];
    v27 = vzip1q_s64(v24, *v22);
    v28 = vzip2q_s64(v24, *v22);
    v29 = vzip1q_s64(v25, v26);
    v30 = vzip2q_s64(v25, v26);
    v32 = *v23;
    v33 = v23[1];
    v31 = (v23 + a2);
    v34 = v31[1];
    v35 = vzip1q_s64(v32, *v31);
    v36 = vzip2q_s64(v32, *v31);
    *a3 = v27;
    a3[1] = v28;
    a3[2] = v35;
    a3[3] = v36;
    a3[4] = v29;
    a3[5] = v30;
    a3[6] = vzip1q_s64(v33, v34);
    a3[7] = vzip2q_s64(v33, v34);
    a3 += 8;
    v20 = 127;
  }

  v37 = 0;
  a4[1] = v20;
  if (a5 >= 9 && a6)
  {
    v38 = (result + a2 + 32);
    v40 = result[2];
    v41 = result[3];
    v39 = (result + v7 + 32);
    v42 = v38[1];
    v43 = vzip1q_s64(v40, *v38);
    v44 = vzip2q_s64(v40, *v38);
    v45 = vzip1q_s64(v41, v42);
    v46 = vzip2q_s64(v41, v42);
    v48 = *v39;
    v49 = v39[1];
    v47 = (v39 + a2);
    v50 = v47[1];
    v51 = vzip1q_s64(v48, *v47);
    v52 = vzip2q_s64(v48, *v47);
    *a3 = v43;
    a3[1] = v44;
    a3[2] = v51;
    a3[3] = v52;
    a3[4] = v45;
    a3[5] = v46;
    a3[6] = vzip1q_s64(v49, v50);
    a3[7] = vzip2q_s64(v49, v50);
    a3 += 8;
    v37 = 127;
  }

  v53 = 0;
  a4[2] = v37;
  if (a5 >= 9 && a6 >= 5)
  {
    v54 = (result + v21 + 32);
    v55 = (v54 + a2);
    v57 = *v54;
    v58 = v54[1];
    v56 = (v54 + v7);
    v59 = v55[1];
    v60 = vzip1q_s64(v57, *v55);
    v61 = vzip2q_s64(v57, *v55);
    v62 = vzip1q_s64(v58, v59);
    v63 = vzip2q_s64(v58, v59);
    v65 = *v56;
    v66 = v56[1];
    v64 = (v56 + a2);
    v67 = v64[1];
    v68 = vzip1q_s64(v65, *v64);
    v69 = vzip2q_s64(v65, *v64);
    *a3 = v60;
    a3[1] = v61;
    a3[2] = v68;
    a3[3] = v69;
    a3[4] = v62;
    a3[5] = v63;
    a3[6] = vzip1q_s64(v66, v67);
    a3[7] = vzip2q_s64(v66, v67);
    a3 += 8;
    v53 = 127;
  }

  v70 = 0;
  a4[3] = v53;
  if (a5 && a6 >= 9)
  {
    v71 = (result + 8 * a2);
    v72 = (v71 + a2);
    v74 = *v71;
    v75 = v71[1];
    v73 = (v71 + v7);
    v76 = v72[1];
    v77 = vzip1q_s64(v74, *v72);
    v78 = vzip2q_s64(v74, *v72);
    v79 = vzip1q_s64(v75, v76);
    v80 = vzip2q_s64(v75, v76);
    v82 = *v73;
    v83 = v73[1];
    v81 = (v73 + a2);
    v84 = v81[1];
    v85 = vzip1q_s64(v82, *v81);
    v86 = vzip2q_s64(v82, *v81);
    *a3 = v77;
    a3[1] = v78;
    a3[2] = v85;
    a3[3] = v86;
    a3[4] = v79;
    a3[5] = v80;
    a3[6] = vzip1q_s64(v83, v84);
    a3[7] = vzip2q_s64(v83, v84);
    a3 += 8;
    v70 = 127;
  }

  v87 = 0;
  a4[4] = v70;
  if (a5 && a6 >= 0xD)
  {
    v88 = (result + 12 * a2);
    v89 = (v88 + a2);
    v91 = *v88;
    v92 = v88[1];
    v90 = (v88 + v7);
    v93 = v89[1];
    v94 = vzip1q_s64(v91, *v89);
    v95 = vzip2q_s64(v91, *v89);
    v96 = vzip1q_s64(v92, v93);
    v97 = vzip2q_s64(v92, v93);
    v99 = *v90;
    v100 = v90[1];
    v98 = (v90 + a2);
    v101 = v98[1];
    v102 = vzip1q_s64(v99, *v98);
    v103 = vzip2q_s64(v99, *v98);
    *a3 = v94;
    a3[1] = v95;
    a3[2] = v102;
    a3[3] = v103;
    a3[4] = v96;
    a3[5] = v97;
    a3[6] = vzip1q_s64(v100, v101);
    a3[7] = vzip2q_s64(v100, v101);
    a3 += 8;
    v87 = 127;
  }

  v104 = 0;
  a4[5] = v87;
  if (a5 >= 9 && a6 >= 9)
  {
    v105 = (result + 8 * a2 + 32);
    v106 = (v105 + a2);
    v108 = *v105;
    v109 = *(result + 8 * a2 + 48);
    v107 = (v105 + v7);
    v110 = v106[1];
    v111 = vzip1q_s64(v108, *v106);
    v112 = vzip2q_s64(v108, *v106);
    v113 = vzip1q_s64(v109, v110);
    v114 = vzip2q_s64(v109, v110);
    v116 = *v107;
    v117 = v107[1];
    v115 = (v107 + a2);
    v118 = v115[1];
    v119 = vzip1q_s64(v116, *v115);
    v120 = vzip2q_s64(v116, *v115);
    *a3 = v111;
    a3[1] = v112;
    a3[2] = v119;
    a3[3] = v120;
    a3[4] = v113;
    a3[5] = v114;
    a3[6] = vzip1q_s64(v117, v118);
    a3[7] = vzip2q_s64(v117, v118);
    a3 += 8;
    v104 = 127;
  }

  v121 = 0;
  a4[6] = v104;
  if (a5 >= 9 && a6 >= 0xD)
  {
    v122 = (result + 12 * a2 + 32);
    v123 = (v122 + a2);
    v125 = *v122;
    v126 = *(result + 12 * a2 + 48);
    v124 = (v122 + v7);
    v127 = v123[1];
    v128 = vzip1q_s64(v125, *v123);
    v129 = vzip2q_s64(v125, *v123);
    v130 = vzip1q_s64(v126, v127);
    v132 = *v124;
    v133 = v124[1];
    v131 = (v124 + a2);
    v134 = v131[1];
    v135 = vzip2q_s64(v126, v127);
    v136 = vzip1q_s64(v132, *v131);
    v137 = vzip2q_s64(v132, *v131);
    *a3 = v128;
    a3[1] = v129;
    a3[2] = v136;
    a3[3] = v137;
    a3[4] = v130;
    a3[5] = v135;
    a3[6] = vzip1q_s64(v133, v134);
    a3[7] = vzip2q_s64(v133, v134);
    v121 = 127;
  }

  a4[7] = v121;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = a5 >= 4 && a6 >= 2;
  v8 = *a3;
  v9 = a3[1];
  v7 = (a3 + 2 * a4);
  v10 = !v6;
  v11 = *(a3 + a4);
  v12 = *(&a3[1] + a4);
  v13 = vzip1q_s64(v8, v11);
  v14 = vzip2q_s64(v8, v11);
  v15 = vzip1q_s64(v9, v12);
  v17 = *v7;
  v18 = v7[1];
  v16 = (v7 + a4);
  v19 = v16[1];
  v20 = vzip2q_s64(v9, v12);
  v21 = vzip2q_s64(v17, *v16);
  v22 = vdupq_lane_s32(*v13.i8, 0);
  v23 = vzip2q_s64(v18, v19);
  v24 = vsubq_s8(v13, v22);
  v25 = vsubq_s8(v14, v22);
  v516 = vzip1q_s64(v17, *v16);
  v26 = vsubq_s8(v516, v22);
  v27 = vsubq_s8(v21, v22);
  v28 = vsubq_s8(v15, v22);
  v29 = vsubq_s8(v20, v22);
  v517 = vzip1q_s64(v18, v19);
  v30 = vsubq_s8(v517, v22);
  v31 = vsubq_s8(v23, v22);
  v32 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v33 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v34 = vpmaxq_s8(v32, v32);
  v35 = vpminq_s8(v33, v33);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vzip1q_s8(v36, v37);
  v39.i64[0] = 0x808080808080808;
  v39.i64[1] = 0x808080808080808;
  v40 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v38)), vceqzq_s8(v38));
  v41 = vpmaxq_s8(v40, v40);
  v42 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v43 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vmaxq_s8(v36, v46);
  v49 = vminq_s8(v37, v47);
  v50 = vzip1q_s8(v46, v47);
  v51 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v50)), vceqzq_s8(v50));
  v52 = vpmaxq_s8(v51, v51);
  v53 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v54 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v55 = vpmaxq_s8(v53, v53);
  v56 = vpminq_s8(v54, v54);
  v57 = vpmaxq_s8(v55, v55);
  v58 = vpminq_s8(v56, v56);
  v59 = vmaxq_s8(v48, v57);
  v60 = vminq_s8(v49, v58);
  v61 = vzip1q_s8(v57, v58);
  v62 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v61)), vceqzq_s8(v61));
  v63 = vpmaxq_s8(v62, v62);
  v64 = vqtbl1q_s8(vmaxq_s8(v30, v31), xmmword_29D2F0F70);
  v65 = vqtbl1q_s8(vminq_s8(v30, v31), xmmword_29D2F0F70);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vpmaxq_s8(v66, v66);
  v69 = vpminq_s8(v67, v67);
  v70 = vmaxq_s8(v59, v68);
  v71 = vminq_s8(v60, v69);
  v72 = vzip1q_s8(v68, v69);
  v73 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v72)), vceqzq_s8(v72));
  v74 = vpmaxq_s8(v73, v73);
  v75 = vmaxq_s8(vmaxq_s8(v41, v52), vmaxq_s8(v63, v74));
  v76 = vclzq_s8(vsubq_s8(v70, v71));
  v77 = vsubq_s8(v39, v76);
  v78 = vminq_s8(v77, v75);
  if (!vmaxvq_s8(v78))
  {
    a1->i32[0] = a3->i32[0];
    v174 = 3;
    result = 4;
    goto LABEL_91;
  }

  v500 = v21;
  v501 = v23;
  v502 = v20;
  v505 = v15;
  v79.i64[0] = -1;
  v79.i64[1] = -1;
  v80.i64[0] = 0x707070707070707;
  v80.i64[1] = 0x707070707070707;
  v81 = vcgtq_s8(v75, v77);
  v514 = vandq_s8(vsubq_s8(vshlq_s8(v79, vsubq_s8(v80, v76)), v71), v81);
  v82.i64[0] = 0x303030303030303;
  v82.i64[1] = 0x303030303030303;
  v83 = vmaxq_s8(vminq_s8(vsubq_s8(v78, v41), v82), 0);
  v503 = vmaxq_s8(vminq_s8(vsubq_s8(v78, v52), v82), 0);
  v498 = vmaxq_s8(vminq_s8(vsubq_s8(v78, v63), v82), 0);
  v84 = vmaxq_s8(vminq_s8(vsubq_s8(v78, v74), v82), 0);
  v85.i64[0] = 0x404040404040404;
  v85.i64[1] = 0x404040404040404;
  v86 = vorrq_s8(vbicq_s8(v85, vceqq_s8(vaddq_s8(v84, v498), vnegq_s8(vaddq_s8(v83, v503)))), vorrq_s8(vandq_s8(vceqzq_s8(v78), v82), vandq_s8(v81, v39)));
  v87 = vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1010));
  v518 = v25;
  v506 = v26;
  v88 = vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1010));
  v89 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1010));
  v90 = vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1010));
  v91 = vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1010));
  v92 = vsubq_s8(v31, vqtbl1q_s8(v31, xmmword_29D2F1010));
  v496 = v87;
  v497 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
  v93 = vqtbl1q_s8(vmaxq_s8(v497, v87), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v497, v87), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vzip1q_s8(v97, v98);
  v519 = v27;
  v100 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v99)), vceqzq_s8(v99));
  v101 = vpmaxq_s8(v100, v100);
  v494 = v88;
  v495 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1010));
  v102 = vqtbl1q_s8(vmaxq_s8(v495, v88), xmmword_29D2F0F70);
  v103 = vqtbl1q_s8(vminq_s8(v495, v88), xmmword_29D2F0F70);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vmaxq_s8(v97, v106);
  v109 = vminq_s8(v98, v107);
  v110 = vzip1q_s8(v106, v107);
  v111 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v110)), vceqzq_s8(v110));
  v112 = vpmaxq_s8(v111, v111);
  v510 = v29;
  v512 = v30;
  v113 = vqtbl1q_s8(vmaxq_s8(v89, v90), xmmword_29D2F0F70);
  v114 = vqtbl1q_s8(vminq_s8(v89, v90), xmmword_29D2F0F70);
  v115 = vpmaxq_s8(v113, v113);
  v116 = vpminq_s8(v114, v114);
  v117 = vpmaxq_s8(v115, v115);
  v118 = vpminq_s8(v116, v116);
  v119 = vmaxq_s8(v108, v117);
  v120 = vminq_s8(v109, v118);
  v121 = vzip1q_s8(v117, v118);
  v122 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v121)), vceqzq_s8(v121));
  v123 = vpmaxq_s8(v122, v122);
  v124 = vqtbl1q_s8(vmaxq_s8(v91, v92), xmmword_29D2F0F70);
  v125 = vqtbl1q_s8(vminq_s8(v91, v92), xmmword_29D2F0F70);
  v126 = vpmaxq_s8(v124, v124);
  v127 = vpminq_s8(v125, v125);
  v128 = vpmaxq_s8(v126, v126);
  v129 = vpminq_s8(v127, v127);
  v508 = v28;
  v130 = vmaxq_s8(v119, v128);
  v131 = vminq_s8(v120, v129);
  v132 = vzip1q_s8(v128, v129);
  v133 = vbicq_s8(vsubq_s8(v39, vclsq_s8(v132)), vceqzq_s8(v132));
  v134 = vpmaxq_s8(v133, v133);
  v135 = v78;
  v136 = vmaxq_s8(vmaxq_s8(v101, v112), vmaxq_s8(v123, v134));
  v137 = vclzq_s8(vsubq_s8(v130, v131));
  v138 = vsubq_s8(v39, v137);
  v139 = vcgtq_s8(v136, v138);
  v140 = vminq_s8(v138, v136);
  v130.i64[0] = 0x1010101010101010;
  v130.i64[1] = 0x1010101010101010;
  v136.i64[0] = 0x1818181818181818;
  v136.i64[1] = 0x1818181818181818;
  v141 = vorrq_s8(vandq_s8(vceqzq_s8(v140), v82), vbslq_s8(v139, v136, v130));
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v140, v101), v82), 0);
  v143 = v31;
  v144 = vmaxq_s8(vminq_s8(vsubq_s8(v140, v112), v82), 0);
  v145 = vmaxq_s8(vminq_s8(vsubq_s8(v140, v123), v82), 0);
  v146 = vmaxq_s8(vminq_s8(vsubq_s8(v140, v134), v82), 0);
  v147 = vsubq_s8(v140, v142);
  v148 = vsubq_s8(v140, v144);
  v149 = vsubq_s8(v140, v145);
  v150 = vsubq_s8(v140, v146);
  v151 = vorrq_s8(v141, vbicq_s8(v85, vceqq_s8(vaddq_s8(v146, v145), vnegq_s8(vaddq_s8(v142, v144)))));
  v152 = vmovl_u8(*v151.i8);
  v146.i64[0] = 0x8000800080008;
  v146.i64[1] = 0x8000800080008;
  v145.i64[0] = 0x2000200020002;
  v145.i64[1] = 0x2000200020002;
  v153 = vsubq_s8(v135, v83);
  v154 = vsubq_s8(v135, v503);
  v155 = vsubq_s8(v135, v498);
  v156 = v24;
  v157 = vsubq_s8(v135, v84);
  v158 = v135;
  v159 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v157.i8), 3uLL), *v153.i8, 0x707070707070707), vbic_s8(*v135.i8, vcgt_u8(0x808080808080808, *v86.i8))), (*&vshll_n_u8(*v86.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v86.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v145), v146)), vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v149.i8, *v148.i8), *v150.i8), 3uLL), *v147.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v151.i8, 1uLL), v146)), vbicq_s8(vmovl_s8(*v140.i8), vceqzq_s16((*&v152 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v152 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v145), v146)))), 0);
  if (vaddlvq_s8(v159))
  {
    v160.i64[0] = 0x707070707070707;
    v160.i64[1] = 0x707070707070707;
    v161 = vsubq_s8(v160, v137);
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    v22 = vbslq_s8(v159, vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010)), v22);
    v504 = vbslq_s8(v159, v497, v156);
    v518 = vbslq_s8(v159, v496, v518);
    v162 = vbslq_s8(v159, v495, v506);
    v519 = vbslq_s8(v159, v494, v519);
    v163 = vbslq_s8(v159, v89, v508);
    v164 = vbslq_s8(v159, v90, v510);
    v165 = vbslq_s8(v159, v91, v512);
    v166 = vbslq_s8(v159, v92, v143);
    v167 = vbslq_s8(v159, v147, v153);
    v168 = vbslq_s8(v159, v148, v154);
    v155 = vbslq_s8(v159, v149, v155);
    v157 = vbslq_s8(v159, v150, v157);
    v169 = vbslq_s8(v159, vandq_s8(vsubq_s8(vshlq_s8(v160, v161), v131), v139), v514);
    v158 = vbslq_s8(v159, v140, v158);
    v170 = vbslq_s8(v159, v151, v86);
    v171 = v162;
    if (v10)
    {
LABEL_10:
      v172 = v518;
      v173 = v504;
      goto LABEL_16;
    }
  }

  else
  {
    v504 = v156;
    v166 = v143;
    v164 = v510;
    v165 = v512;
    v169 = v514;
    v171 = v506;
    v163 = v508;
    v168 = v154;
    v167 = v153;
    v170 = v86;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  v507 = v171;
  v509 = v163;
  v513 = v165;
  v515 = v169;
  v511 = v164;
  v499 = v166;
  v176 = v155;
  v185 = vsubq_s8(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
  v177 = vsubq_s8(v14, vqtbl2q_s8(*v13.i8, xmmword_29D2F1030));
  v520.val[0] = v516;
  v520.val[1] = v500;
  v520.val[1].i32[3] = v14.i32[3];
  v178 = vsubq_s8(v516, vqtbl2q_s8(v520, xmmword_29D2F0FA0));
  v179 = vsubq_s8(v500, vqtbl2q_s8(v520, xmmword_29D2F1040));
  v520.val[0] = v505;
  v520.val[1] = v502;
  v520.val[1].i32[3] = v14.i32[3];
  v180 = vsubq_s8(v505, vqtbl2q_s8(v520, xmmword_29D2F1050));
  v521.val[0] = v517;
  v521.val[1] = v501;
  v521.val[1].i32[3] = v14.i32[3];
  v181 = vsubq_s8(v502, vqtbl2q_s8(v520, xmmword_29D2F0F80));
  v182 = vsubq_s8(v517, vqtbl2q_s8(v521, xmmword_29D2F1060));
  v183 = vsubq_s8(v501, vqtbl2q_s8(v521, xmmword_29D2F0F80));
  v184 = v177;
  v184.i32[3] = v185.i32[0];
  v185.i32[0] = v177.i32[3];
  v186 = vqtbl1q_s8(vmaxq_s8(v185, v184), xmmword_29D2F0F70);
  v520.val[0] = vqtbl1q_s8(vminq_s8(v185, v184), xmmword_29D2F0F70);
  v187 = vpmaxq_s8(v186, v186);
  v520.val[0] = vpminq_s8(v520.val[0], v520.val[0]);
  v188 = vpmaxq_s8(v187, v187);
  v520.val[0] = vpminq_s8(v520.val[0], v520.val[0]);
  v521.val[0] = vzip1q_s8(v188, v520.val[0]);
  v189.i64[0] = 0x808080808080808;
  v189.i64[1] = 0x808080808080808;
  v521.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v521.val[0])), vceqzq_s8(v521.val[0]));
  v190 = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[0] = vqtbl1q_s8(vmaxq_s8(v178, v179), xmmword_29D2F0F70);
  v521.val[1] = vqtbl1q_s8(vminq_s8(v178, v179), xmmword_29D2F0F70);
  v521.val[0] = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v521.val[0] = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v191 = vmaxq_s8(v188, v521.val[0]);
  v520.val[0] = vminq_s8(v520.val[0], v521.val[1]);
  v521.val[0] = vzip1q_s8(v521.val[0], v521.val[1]);
  v521.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v521.val[0])), vceqzq_s8(v521.val[0]));
  v192 = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[0] = vqtbl1q_s8(vmaxq_s8(v180, v181), xmmword_29D2F0F70);
  v521.val[1] = vqtbl1q_s8(vminq_s8(v180, v181), xmmword_29D2F0F70);
  v521.val[0] = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v521.val[0] = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v193 = vmaxq_s8(v191, v521.val[0]);
  v520.val[0] = vminq_s8(v520.val[0], v521.val[1]);
  v521.val[0] = vzip1q_s8(v521.val[0], v521.val[1]);
  v521.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v521.val[0])), vceqzq_s8(v521.val[0]));
  v194 = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[0] = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v521.val[1] = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v521.val[0] = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v195 = vpmaxq_s8(v521.val[0], v521.val[0]);
  v521.val[1] = vpminq_s8(v521.val[1], v521.val[1]);
  v196 = vmaxq_s8(v193, v195);
  v197 = vminq_s8(v520.val[0], v521.val[1]);
  v520.val[0] = vzip1q_s8(v195, v521.val[1]);
  v520.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v520.val[0])), vceqzq_s8(v520.val[0]));
  v198 = vpmaxq_s8(v520.val[0], v520.val[0]);
  v520.val[0] = vmaxq_s8(vmaxq_s8(v190, v192), vmaxq_s8(v194, v198));
  v199 = vclzq_s8(vsubq_s8(v196, v197));
  v200 = vsubq_s8(v189, v199);
  v201 = vcgtq_s8(v520.val[0], v200);
  v202 = vminq_s8(v200, v520.val[0]);
  v200.i64[0] = 0x909090909090909;
  v200.i64[1] = 0x909090909090909;
  v203.i64[0] = 0x202020202020202;
  v203.i64[1] = 0x202020202020202;
  v204 = vorrq_s8(vandq_s8(vceqzq_s8(v202), v203), vsubq_s8(vandq_s8(v201, v200), vmvnq_s8(v201)));
  v200.i64[0] = 0x303030303030303;
  v200.i64[1] = 0x303030303030303;
  v205 = vmaxq_s8(vminq_s8(vsubq_s8(v202, v190), v200), 0);
  v206 = vmaxq_s8(vminq_s8(vsubq_s8(v202, v192), v200), 0);
  v207 = vmaxq_s8(vminq_s8(vsubq_s8(v202, v194), v200), 0);
  v208 = vmaxq_s8(vminq_s8(vsubq_s8(v202, v198), v200), 0);
  v209 = vsubq_s8(v202, v205);
  v210 = vsubq_s8(v202, v206);
  v211 = vsubq_s8(v202, v207);
  v212 = vsubq_s8(v202, v208);
  v213 = vceqq_s8(vaddq_s8(v208, v207), vnegq_s8(vaddq_s8(v205, v206)));
  v208.i64[0] = 0x404040404040404;
  v208.i64[1] = 0x404040404040404;
  v214 = vorrq_s8(v204, vbicq_s8(v208, v213));
  v215 = vmovl_s8(*v170.i8);
  v207.i64[0] = 0x8000800080008;
  v207.i64[1] = 0x8000800080008;
  v216 = v158;
  v217 = v170;
  v218 = vbicq_s8(vmovl_s8(*v158.i8), vceqzq_s16(vandq_s8(v215, v207)));
  v219.i64[0] = 0x3000300030003;
  v219.i64[1] = 0x3000300030003;
  v220 = vandq_s8(v215, v219);
  v219.i64[0] = 0x2000200020002;
  v219.i64[1] = 0x2000200020002;
  v221 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v218, vandq_s8(vshll_n_s8(*v217.i8, 1uLL), v207)), vandq_s8(vceqq_s16(v220, v219), v207)), *v167.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v176.i8, *v168.i8), *v157.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v211.i8, *v210.i8), *v212.i8), 3uLL), *v209.i8, 0x707070707070707), vand_s8(vadd_s8(*v214.i8, *v214.i8), 0x808080808080808)), vbic_s8(*v202.i8, vcgt_u8(0x808080808080808, *v214.i8))))), 0);
  if (vaddlvq_s8(v221))
  {
    v222.i64[0] = 0x707070707070707;
    v222.i64[1] = 0x707070707070707;
    v223 = vsubq_s8(v222, v199);
    v222.i64[0] = -1;
    v222.i64[1] = -1;
    v224 = vandq_s8(vsubq_s8(vshlq_s8(v222, v223), v197), v201);
    v22.i32[0] = vbslq_s8(v221, vextq_s8(v14, v14, 0xCuLL), v22).u32[0];
    v173 = vbslq_s8(v221, v185, v504);
    v172 = vbslq_s8(v221, v184, v518);
    v171 = vbslq_s8(v221, v178, v507);
    v519 = vbslq_s8(v221, v179, v519);
    v163 = vbslq_s8(v221, v180, v509);
    v164 = vbslq_s8(v221, v181, v511);
    v165 = vbslq_s8(v221, v182, v513);
    v166 = vbslq_s8(v221, v183, v499);
    v167 = vbslq_s8(v221, v209, v167);
    v168 = vbslq_s8(v221, v210, v168);
    v225 = vbslq_s8(v221, v211, v176);
    v157 = vbslq_s8(v221, v212, v157);
    v169 = vbslq_s8(v221, v224, v515);
    v158 = vbslq_s8(v221, v202, v216);
    v170 = vbslq_s8(v221, v214, v217);
    v155 = v225;
  }

  else
  {
    v166 = v499;
    v164 = v511;
    v165 = v513;
    v169 = v515;
    v171 = v507;
    v163 = v509;
    v158 = v216;
    v155 = v176;
    v172 = v518;
    v173 = v504;
    v170 = v217;
  }

LABEL_16:
  v226 = vmovl_s8(*v170.i8);
  v227.i64[0] = 0x8000800080008;
  v227.i64[1] = 0x8000800080008;
  v228 = vbicq_s8(vmovl_s8(*v158.i8), vceqzq_s16(vandq_s8(v226, v227)));
  v229.i64[0] = 0x3000300030003;
  v229.i64[1] = 0x3000300030003;
  v230 = vandq_s8(v226, v229);
  v229.i64[0] = 0x2000200020002;
  v229.i64[1] = 0x2000200020002;
  v231 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v168.i8), *v157.i8), 3uLL), *v167.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v170.i8, 1uLL), v227)), v228), vandq_s8(vceqq_s16(v230, v229), v227));
  v232 = vpaddq_s16(v231, v231);
  v233 = vpaddq_s16(v232, v232).u64[0];
  if ((v233.i16[0] + 71) > 0x3FF)
  {
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v516;
    a1[3] = v500;
    a1[4] = v505;
    a1[5] = v502;
    v237 = a1 + 6;
    v174 = 127;
    result = 128;
    *v237 = v517;
    v237[1] = v501;
  }

  else
  {
    v234 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v235 = 8 * (a1 & 7);
    if (v235)
    {
      v236 = *v234 & ~(-1 << v235);
    }

    else
    {
      v236 = 0;
    }

    *a2 = 0;
    v238 = vzip1_s8(*v158.i8, v233);
    v239 = vadd_s16(v238, 0xFF00FF00FF00FFLL);
    v240 = vmovl_u16(vceqz_s16((*&v238 & 0xFF00FF00FF00FFLL)));
    v241.i64[0] = v240.u32[0];
    v241.i64[1] = v240.u32[1];
    v242 = vshrq_n_s64(vshlq_n_s64(v241, 0x38uLL), 0x38uLL);
    v241.i64[0] = v240.u32[2];
    v241.i64[1] = v240.u32[3];
    v243 = vshrq_n_s64(vshlq_n_s64(v241, 0x38uLL), 0x38uLL);
    v244 = vshlq_u32(vmovl_u16(vand_s8(v239, 0x7000700070007)), xmmword_29D2F1070);
    v241.i64[0] = v244.u32[0];
    v241.i64[1] = v244.u32[1];
    v245 = v241;
    v241.i64[0] = v244.u32[2];
    v241.i64[1] = v244.u32[3];
    v246 = vorrq_s8(vbicq_s8(v245, v242), vbicq_s8(v241, v243));
    v247 = *&vorr_s8(*v246.i8, *&vextq_s8(v246, v246, 8uLL)) | (32 * (v170.i8[1] & 0x1F)) | ((v170.i8[3] & 0x1F) << 15) | ((v170.i8[2] & 0x1F) << 10) | v170.i8[0] & 0x1F;
    v248 = v236 | (v247 << v235);
    if (v235 >= 0x20)
    {
      *v234 = v248;
      v248 = v247 >> (-8 * (a1 & 7u));
    }

    v249 = v22.u8[0] | (v22.u8[1] << 8) | (v22.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v22.u8[3] << 24);
    v250 = (v235 + 32) & 0x38;
    v251 = v248 | (v249 << v250);
    if (v250 >= 0x20)
    {
      *(v234 + (((v235 + 32) >> 3) & 8)) = v251;
      v251 = v249 >> -v250;
    }

    v252 = vsubq_s8(v158, v167);
    v253 = vsubq_s8(v158, v168);
    v254 = vsubq_s8(v158, v155);
    v255 = vsubq_s8(v158, v157);
    v256 = vtrn1q_s8(v252, v253);
    v257 = vtrn2q_s8(v252, v253);
    v258 = vtrn1q_s8(v254, v255);
    v259 = vtrn2q_s8(v254, v255);
    v260 = vzip1q_s16(v257, v259);
    v261 = vtrn2q_s16(v257, v259);
    v259.i64[0] = vzip1q_s32(vzip1q_s16(v256, v258), v260).u64[0];
    v261.i64[0] = vzip1q_s32(vtrn2q_s16(v256, v258), v261).u64[0];
    v255.i64[0] = 0x202020202020202;
    v255.i64[1] = 0x202020202020202;
    v262 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v170.i8), 0x4000400040004)), v255);
    v255.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v255.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v256.i64[0] = -1;
    v256.i64[1] = -1;
    v263 = vshlq_u8(v256, vorrq_s8(v262, v255));
    v264 = vmovl_u8(vand_s8(*v263.i8, *v259.i8));
    v265 = vmovl_u8(vand_s8(*&vextq_s8(v263, v263, 8uLL), *v261.i8));
    v266 = vmovl_u8(*v262.i8);
    v267 = vmovl_high_u8(v262);
    v268 = vpaddq_s16(vshlq_u16(v264, vtrn1q_s16(0, v266)), vshlq_u16(v265, vtrn1q_s16(0, v267)));
    v269 = vpaddq_s16(v266, v267);
    v270 = vmovl_u16(*v269.i8);
    v271 = vmovl_high_u16(v269);
    v272 = vpaddq_s32(vshlq_u32(vmovl_u16(*v268.i8), vtrn1q_s32(0, v270)), vshlq_u32(vmovl_high_u16(v268), vtrn1q_s32(0, v271)));
    v273 = vpaddq_s32(v270, v271);
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
    v280 = (v278.i64[0] << v235) | v251;
    if (v279.i64[0] + v235 >= 0x40)
    {
      v234[1] = v280;
      v280 = v278.i64[0] >> (-8 * (a1 & 7u));
      if (!v235)
      {
        v280 = 0;
      }
    }

    v281 = vceqq_s8(v158, v167);
    v282 = v279.i64[0] + (v235 | 0x40);
    v283 = v280 | (v278.i64[1] << v282);
    if ((v282 & 0x3F) + v279.i64[1] >= 0x40)
    {
      *(v234 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
      v283 = v278.i64[1] >> -(v282 & 0x3F);
      if ((v282 & 0x3F) == 0)
      {
        v283 = 0;
      }
    }

    v284 = vandq_s8(v169, v281);
    v285 = v282 + v279.i64[1];
    v286.i64[0] = 0x808080808080808;
    v286.i64[1] = 0x808080808080808;
    v287.i64[0] = -1;
    v287.i64[1] = -1;
    v288 = vandq_s8(vextq_s8(vtstq_s8(v170, v286), 0, 0xCuLL), v158);
    v289.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v289.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v290 = vandq_s8(vshlq_u8(v287, vaddq_s8(v288, v289)), v169);
    v291 = vmovl_u8(*v288.i8);
    v292 = vpaddq_s16(vshlq_u16(vmovl_u8(*v290.i8), vtrn1q_s16(0, v291)), vmovl_high_u8(v290));
    v293 = vpaddq_s16(v291, vmovl_high_u8(v288));
    v294 = vmovl_u16(*v293.i8);
    v295 = vmovl_high_u16(v293);
    v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v292.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v292), vtrn1q_s32(0, v295)));
    v297 = vpaddq_s32(v294, v295);
    v298.i64[0] = v296.u32[0];
    v298.i64[1] = v296.u32[1];
    v299 = v298;
    v298.i64[0] = v296.u32[2];
    v298.i64[1] = v296.u32[3];
    v300 = v298;
    v298.i64[0] = v297.u32[0];
    v298.i64[1] = v297.u32[1];
    v301 = v298;
    v298.i64[0] = v297.u32[2];
    v298.i64[1] = v297.u32[3];
    v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
    v303 = vpaddq_s64(v301, v298);
    v304 = (v302.i64[0] << v285) | v283;
    if (v303.i64[0] + (v285 & 0x3F) >= 0x40)
    {
      *(v234 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
      v304 = v302.i64[0] >> -(v285 & 0x3F);
      if ((v285 & 0x3F) == 0)
      {
        v304 = 0;
      }
    }

    v305 = vaddq_s8(v284, v173);
    v306 = v303.i64[0] + v285;
    v307 = v304 | (v302.i64[1] << v306);
    if ((v306 & 0x3F) + v303.i64[1] >= 0x40)
    {
      *(v234 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v302.i64[1] >> -(v306 & 0x3F);
      if ((v306 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = v306 + v303.i64[1];
    v309 = vextq_s8(0, v167, 0xCuLL);
    v310.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v311.i64[0] = -1;
    v311.i64[1] = -1;
    v312 = vandq_s8(vshlq_u8(v311, vaddq_s8(v309, v310)), v305);
    v313 = vmovl_u8(*v309.i8);
    v314 = vmovl_high_u8(v309);
    v315 = vpaddq_s16(vshlq_u16(vmovl_u8(*v312.i8), vtrn1q_s16(0, v313)), vshlq_u16(vmovl_high_u8(v312), vtrn1q_s16(0, v314)));
    v316 = vpaddq_s16(v313, v314);
    v317 = vmovl_u16(*v316.i8);
    v318 = vmovl_high_u16(v316);
    v319 = vpaddq_s32(vshlq_u32(vmovl_u16(*v315.i8), vtrn1q_s32(0, v317)), vshlq_u32(vmovl_high_u16(v315), vtrn1q_s32(0, v318)));
    v320 = vpaddq_s32(v317, v318);
    v321.i64[0] = v319.u32[0];
    v321.i64[1] = v319.u32[1];
    v322 = v321;
    v321.i64[0] = v319.u32[2];
    v321.i64[1] = v319.u32[3];
    v323 = v321;
    v321.i64[0] = v320.u32[0];
    v321.i64[1] = v320.u32[1];
    v324 = v321;
    v321.i64[0] = v320.u32[2];
    v321.i64[1] = v320.u32[3];
    v325 = vpaddq_s64(vshlq_u64(v322, vzip1q_s64(0, v324)), vshlq_u64(v323, vzip1q_s64(0, v321)));
    v326 = vpaddq_s64(v324, v321);
    v327 = (v325.i64[0] << v308) | v307;
    if (v326.i64[0] + (v308 & 0x3F) >= 0x40)
    {
      *(v234 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
      v327 = v325.i64[0] >> -(v308 & 0x3F);
      if ((v308 & 0x3F) == 0)
      {
        v327 = 0;
      }
    }

    v328 = vceqq_s8(v158, v168);
    v329 = vaddq_s8(v172, v284);
    v330 = v326.i64[0] + v308;
    v331 = v327 | (v325.i64[1] << v330);
    if ((v330 & 0x3F) + v326.i64[1] >= 0x40)
    {
      *(v234 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
      v331 = v325.i64[1] >> -(v330 & 0x3F);
      if ((v330 & 0x3F) == 0)
      {
        v331 = 0;
      }
    }

    v332 = vandq_s8(v169, v328);
    v333 = v330 + v326.i64[1];
    v334.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v334.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v335.i64[0] = -1;
    v335.i64[1] = -1;
    v336 = vandq_s8(vshlq_u8(v335, vaddq_s8(v167, v334)), v329);
    v337 = vmovl_u8(*v167.i8);
    v338 = vmovl_high_u8(v167);
    v339 = vpaddq_s16(vshlq_u16(vmovl_u8(*v336.i8), vtrn1q_s16(0, v337)), vshlq_u16(vmovl_high_u8(v336), vtrn1q_s16(0, v338)));
    v340 = vpaddq_s16(v337, v338);
    v341 = vmovl_u16(*v340.i8);
    v342 = vmovl_high_u16(v340);
    v343 = vpaddq_s32(vshlq_u32(vmovl_u16(*v339.i8), vtrn1q_s32(0, v341)), vshlq_u32(vmovl_high_u16(v339), vtrn1q_s32(0, v342)));
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
    v351 = (v349.i64[0] << v333) | v331;
    if (v350.i64[0] + (v333 & 0x3F) >= 0x40)
    {
      *(v234 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
      v351 = v349.i64[0] >> -(v333 & 0x3F);
      if ((v333 & 0x3F) == 0)
      {
        v351 = 0;
      }
    }

    v352 = vaddq_s8(v171, v332);
    v353 = v350.i64[0] + v333;
    v354 = v351 | (v349.i64[1] << v353);
    if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
    {
      *(v234 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v349.i64[1] >> -(v353 & 0x3F);
      if ((v353 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = v353 + v350.i64[1];
    v356.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v356.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v357.i64[0] = -1;
    v357.i64[1] = -1;
    v358 = vshlq_u8(v357, vaddq_s8(v168, v356));
    v359 = vandq_s8(v358, v352);
    v360 = vmovl_u8(*v359.i8);
    v361 = vmovl_high_u8(v359);
    v362 = vmovl_u8(*v168.i8);
    v363 = vmovl_high_u8(v168);
    v364 = vtrn1q_s16(0, v362);
    v365 = vtrn1q_s16(0, v363);
    v366 = vpaddq_s16(vshlq_u16(v360, v364), vshlq_u16(v361, v365));
    v367 = vpaddq_s16(v362, v363);
    v368 = vmovl_u16(*v366.i8);
    v369 = vmovl_high_u16(v366);
    v370 = vmovl_u16(*v367.i8);
    v371 = vmovl_high_u16(v367);
    v372 = vtrn1q_s32(0, v370);
    v373 = vtrn1q_s32(0, v371);
    v374 = vpaddq_s32(vshlq_u32(v368, v372), vshlq_u32(v369, v373));
    v375 = vpaddq_s32(v370, v371);
    v376.i64[0] = v374.u32[0];
    v376.i64[1] = v374.u32[1];
    v377 = v376;
    v376.i64[0] = v374.u32[2];
    v376.i64[1] = v374.u32[3];
    v378 = v376;
    v376.i64[0] = v375.u32[0];
    v376.i64[1] = v375.u32[1];
    v379 = v376;
    v376.i64[0] = v375.u32[2];
    v376.i64[1] = v375.u32[3];
    v380 = vzip1q_s64(0, v379);
    v381 = vzip1q_s64(0, v376);
    v382 = vpaddq_s64(vshlq_u64(v377, v380), vshlq_u64(v378, v381));
    v383 = vpaddq_s64(v379, v376);
    v384 = (v382.i64[0] << v355) | v354;
    if (v383.i64[0] + (v355 & 0x3F) >= 0x40)
    {
      *(v234 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      if ((v355 & 0x3F) != 0)
      {
        v384 = v382.i64[0] >> -(v355 & 0x3F);
      }

      else
      {
        v384 = 0;
      }
    }

    v385 = vceqq_s8(v158, v155);
    v386 = vaddq_s8(v519, v332);
    v387 = v383.i64[0] + v355;
    v388 = v384 | (v382.i64[1] << v387);
    if ((v387 & 0x3F) + v383.i64[1] >= 0x40)
    {
      *(v234 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
      v388 = v382.i64[1] >> -(v387 & 0x3F);
      if ((v387 & 0x3F) == 0)
      {
        v388 = 0;
      }
    }

    v389 = vandq_s8(v169, v385);
    v390 = v387 + v383.i64[1];
    v391 = vandq_s8(v358, v386);
    v392 = vpaddq_s16(vshlq_u16(vmovl_u8(*v391.i8), v364), vshlq_u16(vmovl_high_u8(v391), v365));
    v393 = vpaddq_s32(vshlq_u32(vmovl_u16(*v392.i8), v372), vshlq_u32(vmovl_high_u16(v392), v373));
    v394.i64[0] = v393.u32[0];
    v394.i64[1] = v393.u32[1];
    v395 = v394;
    v394.i64[0] = v393.u32[2];
    v394.i64[1] = v393.u32[3];
    v396 = vpaddq_s64(vshlq_u64(v395, v380), vshlq_u64(v394, v381));
    v397 = (v396.i64[0] << v390) | v388;
    if (v383.i64[0] + (v390 & 0x3F) >= 0x40)
    {
      *(v234 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      v397 = v396.i64[0] >> -(v390 & 0x3F);
      if ((v390 & 0x3F) == 0)
      {
        v397 = 0;
      }
    }

    v398 = vaddq_s8(v163, v389);
    v399 = v383.i64[0] + v390;
    v400 = (v383.i64[0] + v390) & 0x3F;
    v401 = v397 | (v396.i64[1] << v399);
    if ((v399 & 0x3F) + v383.i64[1] >= 0x40)
    {
      *(v234 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
      v401 = v396.i64[1] >> -v400;
      if (!v400)
      {
        v401 = 0;
      }
    }

    v402 = v399 + v383.i64[1];
    v403.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v403.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v404.i64[0] = -1;
    v404.i64[1] = -1;
    v405 = vshlq_u8(v404, vaddq_s8(v155, v403));
    v406 = vandq_s8(v405, v398);
    v407 = vmovl_u8(*v406.i8);
    v408 = vmovl_high_u8(v406);
    v409 = vmovl_u8(*v155.i8);
    v410 = vmovl_high_u8(v155);
    v411 = vtrn1q_s16(0, v409);
    v412 = vtrn1q_s16(0, v410);
    v413 = vpaddq_s16(vshlq_u16(v407, v411), vshlq_u16(v408, v412));
    v414 = vpaddq_s16(v409, v410);
    v415 = vmovl_u16(*v413.i8);
    v416 = vmovl_high_u16(v413);
    v417 = vmovl_u16(*v414.i8);
    v418 = vmovl_high_u16(v414);
    v419 = vtrn1q_s32(0, v417);
    v420 = vtrn1q_s32(0, v418);
    v421 = vpaddq_s32(vshlq_u32(v415, v419), vshlq_u32(v416, v420));
    v422 = vpaddq_s32(v417, v418);
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
    v427 = vzip1q_s64(0, v426);
    v428 = vzip1q_s64(0, v423);
    v429 = vpaddq_s64(vshlq_u64(v424, v427), vshlq_u64(v425, v428));
    v430 = vpaddq_s64(v426, v423);
    v431 = (v429.i64[0] << v402) | v401;
    if (v430.i64[0] + (v402 & 0x3F) >= 0x40)
    {
      *(v234 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
      if ((v402 & 0x3F) != 0)
      {
        v431 = v429.i64[0] >> -(v402 & 0x3F);
      }

      else
      {
        v431 = 0;
      }
    }

    v432 = vceqq_s8(v158, v157);
    v433 = vaddq_s8(v164, v389);
    v434 = v430.i64[0] + v402;
    v435 = v431 | (v429.i64[1] << v434);
    if ((v434 & 0x3F) + v430.i64[1] >= 0x40)
    {
      *(v234 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
      v435 = v429.i64[1] >> -(v434 & 0x3F);
      if ((v434 & 0x3F) == 0)
      {
        v435 = 0;
      }
    }

    v436 = vandq_s8(v169, v432);
    v437 = v434 + v430.i64[1];
    v438 = vandq_s8(v405, v433);
    v439 = vpaddq_s16(vshlq_u16(vmovl_u8(*v438.i8), v411), vshlq_u16(vmovl_high_u8(v438), v412));
    v440 = vpaddq_s32(vshlq_u32(vmovl_u16(*v439.i8), v419), vshlq_u32(vmovl_high_u16(v439), v420));
    v441.i64[0] = v440.u32[0];
    v441.i64[1] = v440.u32[1];
    v442 = v441;
    v441.i64[0] = v440.u32[2];
    v441.i64[1] = v440.u32[3];
    v443 = vpaddq_s64(vshlq_u64(v442, v427), vshlq_u64(v441, v428));
    v444 = (v443.i64[0] << v437) | v435;
    if (v430.i64[0] + (v437 & 0x3F) >= 0x40)
    {
      *(v234 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
      v444 = v443.i64[0] >> -(v437 & 0x3F);
      if ((v437 & 0x3F) == 0)
      {
        v444 = 0;
      }
    }

    v445 = vaddq_s8(v165, v436);
    v446 = v430.i64[0] + v437;
    v447 = (v430.i64[0] + v437) & 0x3F;
    v448 = v444 | (v443.i64[1] << v446);
    if ((v446 & 0x3F) + v430.i64[1] >= 0x40)
    {
      *(v234 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
      v448 = v443.i64[1] >> -v447;
      if (!v447)
      {
        v448 = 0;
      }
    }

    v449 = v446 + v430.i64[1];
    v450.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v450.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v451.i64[0] = -1;
    v451.i64[1] = -1;
    v452 = vshlq_u8(v451, vaddq_s8(v157, v450));
    v453 = vandq_s8(v452, v445);
    v454 = vmovl_u8(*v453.i8);
    v455 = vmovl_high_u8(v453);
    v456 = vmovl_u8(*v157.i8);
    v457 = vmovl_high_u8(v157);
    v458 = vtrn1q_s16(0, v456);
    v459 = vtrn1q_s16(0, v457);
    v460 = vpaddq_s16(vshlq_u16(v454, v458), vshlq_u16(v455, v459));
    v461 = vpaddq_s16(v456, v457);
    v462 = vmovl_u16(*v460.i8);
    v463 = vmovl_high_u16(v460);
    v464 = vmovl_u16(*v461.i8);
    v465 = vmovl_high_u16(v461);
    v466 = vtrn1q_s32(0, v464);
    v467 = vtrn1q_s32(0, v465);
    v468 = vpaddq_s32(vshlq_u32(v462, v466), vshlq_u32(v463, v467));
    v469 = vpaddq_s32(v464, v465);
    v470.i64[0] = v468.u32[0];
    v470.i64[1] = v468.u32[1];
    v471 = v470;
    v470.i64[0] = v468.u32[2];
    v470.i64[1] = v468.u32[3];
    v472 = v470;
    v470.i64[0] = v469.u32[0];
    v470.i64[1] = v469.u32[1];
    v473 = v470;
    v470.i64[0] = v469.u32[2];
    v470.i64[1] = v469.u32[3];
    v474 = vzip1q_s64(0, v473);
    v475 = vzip1q_s64(0, v470);
    v476 = vpaddq_s64(vshlq_u64(v471, v474), vshlq_u64(v472, v475));
    v477 = vpaddq_s64(v473, v470);
    v478 = (v476.i64[0] << v449) | v448;
    if (v477.i64[0] + (v449 & 0x3F) > 0x3F)
    {
      *(v234 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      if ((v449 & 0x3F) != 0)
      {
        v478 = v476.i64[0] >> -(v449 & 0x3F);
      }

      else
      {
        v478 = 0;
      }
    }

    v479 = vaddq_s8(v166, v436);
    v480 = v477.i64[0] + v449;
    v481 = v478 | (v476.i64[1] << v480);
    if ((v480 & 0x3F) + v477.i64[1] >= 0x40)
    {
      *(v234 + ((v480 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
      v481 = v476.i64[1] >> -(v480 & 0x3F);
      if ((v480 & 0x3F) == 0)
      {
        v481 = 0;
      }
    }

    v482 = v480 + v477.i64[1];
    v483 = vandq_s8(v452, v479);
    v484 = vpaddq_s16(vshlq_u16(vmovl_u8(*v483.i8), v458), vshlq_u16(vmovl_high_u8(v483), v459));
    v485 = vpaddq_s32(vshlq_u32(vmovl_u16(*v484.i8), v466), vshlq_u32(vmovl_high_u16(v484), v467));
    v486.i64[0] = v485.u32[0];
    v486.i64[1] = v485.u32[1];
    v487 = v486;
    v486.i64[0] = v485.u32[2];
    v486.i64[1] = v485.u32[3];
    v488 = vpaddq_s64(vshlq_u64(v487, v474), vshlq_u64(v486, v475));
    v489 = (v488.i64[0] << v482) | v481;
    if (v477.i64[0] + (v482 & 0x3F) >= 0x40)
    {
      *(v234 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
      v489 = v488.i64[0] >> -(v482 & 0x3F);
      if ((v482 & 0x3F) == 0)
      {
        v489 = 0;
      }
    }

    v490 = v477.i64[0] + v482;
    v491 = (v477.i64[0] + v482) & 0x3F;
    v492 = v489 | (v488.i64[1] << (v477.i8[0] + v482));
    if ((v491 + v477.i64[1]) >= 0x40)
    {
      *(v234 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
      v492 = v488.i64[1] >> -v491;
      if (!v491)
      {
        v492 = 0;
      }
    }

    v493 = v490 + v477.i64[1];
    if ((v493 & 0x3F) != 0)
    {
      *(v234 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
    }

    result = (v493 - v235 + 7) >> 3;
    v174 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v174;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v17 + 4) & 7);
  v17 |= 255 << v2;
  v3 = (v2 + 8) & 0x38;
  if (v3 - v2 + ((v2 + 8) & 0x40) + 8 <= 0x20)
  {
    v4 = v3 + 8;
    v5 = (v3 + 8) & 0x38;
    v6 = (v4 >> 6) + ((v2 + 8) >> 6);
    if (v5 - v2 + (v6 << 6) + 8 <= 0x20)
    {
      *(&v17 + v6) |= 255 << v5;
      v7 = v5 + 8;
      v8 = (v5 + 8) & 0x38;
      v9 = v6 + (v7 >> 6);
      if (v8 - v2 + (v9 << 6) + 8 <= 0x20)
      {
        v10 = 0;
        v11 = 8;
        do
        {
          v12 = 64 - v8;
          if (64 - v8 >= v11)
          {
            v12 = v11;
          }

          *(&v17 + v9) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v8;
          v10 += v12;
          v13 = v12 + v8;
          v9 += v13 >> 6;
          v8 = v13 & 0x3F;
          v11 -= v12;
        }

        while (v11);
      }
    }
  }

  v14 = (result + a2);
  *result = 0;
  result[1] = 0;
  v15 = (result + 2 * a2);
  *v14 = 0;
  v14[1] = 0;
  v16 = (result + 2 * a2 + a2);
  *v15 = 0;
  v15[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = vdupq_n_s64(v7);
  v9 = vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F40));
  v10.i16[0] = v7;
  v10.i16[1] = v7 >> 5;
  v10.i16[2] = v9.i16[0];
  v10.i16[3] = v9.i16[2];
  *v8.i8 = vand_s8(vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F50)), 0x700000007);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = (v7 >> 26) & 7;
  v8.i16[3] = v7 >> 29;
  v11 = vuzp1_s8(vand_s8(v10, 0x1F001F001F001FLL), *v8.i8);
  *v8.i8 = vadd_s16(*v8.i8, 0x1000100010001);
  v12 = vuzp1_s8(*v8.i8, *v8.i8);
  v13 = v4 | 0x40;
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x400;
  v18 = vdupq_lane_s32(v11, 0);
  v19.i64[0] = 0x303030303030303;
  v19.i64[1] = 0x303030303030303;
  v296 = vandq_s8(v18, v19);
  v20 = vbicq_s8(vdupq_lane_s32(v12, 0), vceqq_s8(v296, v19));
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v11), 0x4000400040004)), v21);
  if (vmaxvq_s8(v22) < 1)
  {
    v30 = 0;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v294 = v51;
    v295 = v51;
    v48 = v20;
    v49 = v20;
    v50 = v20;
    v291 = v51;
    v292 = v51;
    v47 = v20;
  }

  else
  {
    v23 = vmovl_u8(*&vpaddq_s8(v22, v22));
    v24 = vmovl_u16(*&vpaddq_s16(v23, v23));
    v25 = vpaddq_s32(v24, v24).u64[0];
    v26.i64[0] = v25;
    v26.i64[1] = HIDWORD(v25);
    v27 = v26;
    v28 = vaddvq_s64(v26);
    v29 = v28 <= 0x80 && v17 >= v28 + v13;
    v30 = !v29;
    v31 = 0uLL;
    if (v29)
    {
      v32 = vaddq_s64(vzip1q_s64(0, v27), vdupq_n_s64(v4));
      v31 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v32)));
      if (v28 + v4 >= 0x81)
      {
        v31 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v31);
      }

      v13 += v28;
    }

    v33 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v31, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v31, v35), vzip2q_s64(v31, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v23 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vshlq_u16(v38, vnegq_s16((*&v22 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v40 = vuzp1q_s8(vzip1q_s16(v38, v39), vzip2q_s16(v38, v39));
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v39, v22);
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v42 = vqtbl1q_s8(vandq_s8(vaddq_s8(v41, v39), v40), xmmword_29D2F0F70);
    v43 = vdupq_lane_s32(*v42.i8, 0);
    v44 = vdupq_lane_s32(*v42.i8, 1);
    v45 = vdupq_laneq_s32(v42, 2);
    v46 = vdupq_laneq_s32(v42, 3);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vsubq_s8(v20, v45);
    v50 = vsubq_s8(v20, v46);
    v295 = vceqzq_s8(v43);
    v291 = vceqzq_s8(v44);
    v292 = vceqzq_s8(v45);
    v294 = vceqzq_s8(v46);
  }

  v52.i64[0] = 0x808080808080808;
  v52.i64[1] = 0x808080808080808;
  v53 = 0uLL;
  v54 = vandq_s8(vextq_s8(vtstq_s8(v18, v52), 0, 0xCuLL), v20);
  v55 = vmovl_u8(*&vpaddq_s8(v54, v54));
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  v61 = v60 + v13;
  if (v60 <= 0x80 && v17 >= v61)
  {
    v63 = v13 & 0x3F;
    v64 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v63));
    v65 = (v5 + 8 * (v13 >> 6));
    v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
    if (v60 + v63 >= 0x81)
    {
      v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v53);
    }

    v13 = v61;
  }

  else
  {
    v30 = 1;
  }

  v66 = v18.i8[0] & 3;
  if (v66 == 2)
  {
    if (v17 < v13 + 4)
    {
      v30 = 1;
    }

    else
    {
      v13 += 4;
    }

    v67 = v17 < v13 + 4;
    if (v17 >= v13 + 4)
    {
      v13 += 4;
    }

    v30 |= v67;
  }

  v68 = 0uLL;
  v69 = vextq_s8(0, v47, 0xCuLL);
  v70 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
  v72 = vpaddq_s32(v71, v71).u64[0];
  v73.i64[0] = v72;
  v73.i64[1] = HIDWORD(v72);
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v75 + v13;
  if (v75 <= 0x80 && v17 >= v76)
  {
    v79 = v13 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v74), vdupq_n_s64(v79));
    v81 = (v5 + 8 * (v13 >> 6));
    v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v75 + v79 >= 0x81)
    {
      v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v78);
    }

    v13 = v76;
  }

  else
  {
    v30 = 1;
    v78 = 0uLL;
  }

  v82 = vmovl_u8(*&vpaddq_s8(v47, v47));
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v13;
  if (v87 <= 0x80 && v17 >= v88)
  {
    v90 = v13 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v90));
    v92 = (v5 + 8 * (v13 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v87 + v90 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v68);
    }

    v13 = v88;
  }

  else
  {
    v30 = 1;
  }

  v93 = vmovl_u8(*&vpaddq_s8(v48, v48));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v98 + v13;
  v100 = 0uLL;
  if (v98 <= 0x80 && v17 >= v99)
  {
    v103 = v13 & 0x3F;
    v104 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v103));
    v105 = (v5 + 8 * (v13 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v98 + v103 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v102);
    }

    v13 = v99;
  }

  else
  {
    v30 = 1;
    v102 = 0uLL;
  }

  v106 = v98 + v13;
  if (v98 <= 0x80 && v17 >= v106)
  {
    v108 = v13 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v108));
    v110 = (v5 + 8 * (v13 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v98 + v108 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v100);
    }

    v13 = v106;
  }

  else
  {
    v30 = 1;
  }

  v111 = vmovl_u8(*&vpaddq_s8(v49, v49));
  v112 = vmovl_u16(*&vpaddq_s16(v111, v111));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v13;
  v118 = 0uLL;
  if (v116 <= 0x80 && v17 >= v117)
  {
    v121 = v13 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v121));
    v123 = (v5 + 8 * (v13 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v116 + v121 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v13 = v117;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v30 = 1;
    v120 = 0uLL;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  v124 = v116 + v13;
  if (v17 < v116 + v13)
  {
LABEL_78:
    v124 = v13;
    v30 = 1;
    goto LABEL_79;
  }

  v125 = v13 & 0x3F;
  v126 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v125));
  v127 = (v5 + 8 * (v13 >> 6));
  v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
  if (v116 + v125 >= 0x81)
  {
    v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v118);
  }

LABEL_79:
  v293 = v50;
  v128 = vmovl_u8(*&vpaddq_s8(v50, v50));
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v133;
  if (v133 > 0x80 || (v135 = v133 + v124, v17 < v133 + v124))
  {
    v135 = v124;
    v30 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v124 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v136));
    v138 = (v5 + 8 * (v124 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v134 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || v17 < v134 + v135)
  {
    goto LABEL_93;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135 & 0x3F));
  v141 = (v5 + 8 * (v135 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v134 + (v135 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 1024 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v144 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v145 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v146 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v147 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v148 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v149 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v150.i64[0] = v144.u32[0];
    v150.i64[1] = v144.u32[1];
    v151 = vshlq_u64(v53, vnegq_s64(v150));
    v152 = vzip2q_s64(v53, v151);
    v153 = vzip1q_s64(v53, v151);
    v150.i64[0] = v145.u32[0];
    v150.i64[1] = v145.u32[1];
    v154 = vshlq_u64(v78, vnegq_s64(v150));
    v155 = vzip2q_s64(v78, v154);
    v156 = vzip1q_s64(v78, v154);
    v150.i64[0] = v146.u32[0];
    v150.i64[1] = v146.u32[1];
    v157 = vshlq_u64(v68, vnegq_s64(v150));
    v158 = vzip2q_s64(v68, v157);
    v159 = vzip1q_s64(v68, v157);
    v150.i64[0] = v147.u32[0];
    v150.i64[1] = v147.u32[1];
    v160 = vnegq_s64(v150);
    v161 = vshlq_u64(v102, v160);
    v162 = vzip2q_s64(v102, v161);
    v163 = vzip1q_s64(v102, v161);
    v164 = vshlq_u64(v100, v160);
    v165 = vzip2q_s64(v100, v164);
    v166 = vzip1q_s64(v100, v164);
    v150.i64[0] = v148.u32[0];
    v150.i64[1] = v148.u32[1];
    v167 = vnegq_s64(v150);
    v168 = vshlq_u64(v120, v167);
    v169 = vzip2q_s64(v120, v168);
    v170 = vzip1q_s64(v120, v168);
    v171 = vshlq_u64(v118, v167);
    v172 = vzip2q_s64(v118, v171);
    v173 = vzip1q_s64(v118, v171);
    v150.i64[0] = v149.u32[0];
    v150.i64[1] = v149.u32[1];
    v174 = vnegq_s64(v150);
    v175 = vshlq_u64(v139, v174);
    v176 = vzip2q_s64(v139, v175);
    v177 = vzip1q_s64(v139, v175);
    v178 = vuzp1q_s32(v153, v152);
    v179 = vuzp1q_s32(v156, v155);
    v180 = vuzp1q_s32(v159, v158);
    v181 = vuzp1q_s32(v163, v162);
    v182 = vnegq_s32((*&v55 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v184 = vuzp1q_s32(v166, v165);
    v185 = vuzp1q_s32(v170, v169);
    v186 = vnegq_s32((*&v111 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v187 = vuzp1q_s32(v173, v172);
    v188 = vuzp1q_s32(v177, v176);
    v189 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v190 = vshlq_u32(v178, v182);
    v191 = vshlq_u32(v181, v183);
    v192 = vshlq_u32(v184, v183);
    v193 = vshlq_u32(v185, v186);
    v194 = vshlq_u32(v187, v186);
    v195 = vshlq_u32(v188, v189);
    v196 = vuzp1q_s16(vzip1q_s32(v178, v190), vzip2q_s32(v178, v190));
    v197 = vuzp1q_s16(vzip1q_s32(v181, v191), vzip2q_s32(v181, v191));
    v198 = vuzp1q_s16(vzip1q_s32(v184, v192), vzip2q_s32(v184, v192));
    v199 = vuzp1q_s16(vzip1q_s32(v185, v193), vzip2q_s32(v185, v193));
    v200 = vnegq_s16((*&v48 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v201 = vuzp1q_s16(vzip1q_s32(v187, v194), vzip2q_s32(v187, v194));
    v202 = vuzp1q_s16(vzip1q_s32(v188, v195), vzip2q_s32(v188, v195));
    v203 = vshlq_u16(v196, vnegq_s16((*&v54 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v204 = vshlq_u16(v197, v200);
    v205 = vshlq_u16(v198, v200);
    v206 = vzip2q_s16(v196, v203);
    v207 = vzip1q_s16(v196, v203);
    v208 = vuzp1q_s8(vzip1q_s16(v198, v205), vzip2q_s16(v198, v205));
    v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v203.i64[0] = 0x808080808080808;
    v203.i64[1] = 0x808080808080808;
    v209 = vsubq_s8(v203, v54);
    v210 = vaddq_s8(v54, v205);
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v212 = vshlq_s8(vuzp1q_s8(v207, v206), v209);
    v209.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v209.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v213 = vsubq_s8(v211, v48);
    v214 = vaddq_s8(v48, v209);
    v215 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v197, v204), vzip2q_s16(v197, v204)), v213);
    v216 = vshlq_s8(v208, v213);
    v217 = vnegq_s16((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v218 = vshlq_s8(v212, v210);
    v219 = vshlq_s8(v215, v214);
    v220 = vshlq_s8(v216, v214);
    v221 = vdupq_lane_s32(*v218.i8, 0);
    v222 = vandq_s8(v291, v221);
    v223 = vsubq_s8(v219, v222);
    v224 = vsubq_s8(v220, v222);
    v225 = vshlq_u16(v199, v217);
    v226 = vshlq_u16(v201, v217);
    v227 = vuzp1q_s8(vzip1q_s16(v199, v225), vzip2q_s16(v199, v225));
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v228 = vsubq_s8(v222, v49);
    v229 = vaddq_s8(v49, v199);
    v230 = vshlq_s8(v227, v228);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v226), vzip2q_s16(v201, v226)), v228);
    v232 = vnegq_s16((*&v293 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vshlq_s8(v231, v229);
    v234 = vandq_s8(v292, v221);
    v235 = vsubq_s8(vshlq_s8(v230, v229), v234);
    v236 = vsubq_s8(v233, v234);
    v237 = vshlq_u16(v202, v232);
    v238 = vzip2q_s16(v202, v237);
    v239 = vzip1q_s16(v202, v237);
    v202.i64[0] = 0x808080808080808;
    v202.i64[1] = 0x808080808080808;
    v240 = vuzp1q_s8(v239, v238);
    v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v241 = vsubq_s8(v202, v293);
    v242 = vaddq_s8(v293, v238);
    v243 = vshlq_u64(v142, v174);
    v244 = vuzp1q_s32(vzip1q_s64(v142, v243), vzip2q_s64(v142, v243));
    v245 = vshlq_u32(v244, v189);
    v246 = vuzp1q_s16(vzip1q_s32(v244, v245), vzip2q_s32(v244, v245));
    v247 = vshlq_u16(v246, v232);
    v248 = vshlq_s8(vshlq_s8(v240, v241), v242);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v247), vzip2q_s16(v246, v247)), v241), v242);
    v250 = vandq_s8(v294, v221);
    v251 = vsubq_s8(v248, v250);
    v252 = vsubq_s8(v249, v250);
    v253 = vshlq_u32(v179, vnegq_s32((*&v70 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v254 = vshlq_u32(v180, vnegq_s32((*&v82 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vuzp1q_s16(vzip1q_s32(v179, v253), vzip2q_s32(v179, v253));
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v16), xmmword_29D2F0F60));
    v256 = vuzp1q_s16(vzip1q_s32(v180, v254), vzip2q_s32(v180, v254));
    v257 = vshlq_u16(v255, vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v258 = vshlq_u16(v256, vnegq_s16((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vzip2q_s16(v255, v257);
    v260 = vzip1q_s16(v255, v257);
    v261 = vzip2q_s16(v256, v258);
    v262 = vzip1q_s16(v256, v258);
    v258.i16[0] = v16;
    v263 = v248.i8[4];
    v258.i8[2] = v248.i8[0];
    v264 = vuzp1q_s8(v260, v259);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v265 = vuzp1q_s8(v262, v261);
    v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266 = vshlq_s8(vshlq_s8(v265, vsubq_s8(v260, v47)), vaddq_s8(v47, v261));
    v267 = vaddq_s8(vandq_s8(v218, v295), vshlq_s8(vshlq_s8(v264, vsubq_s8(v260, v69)), vaddq_s8(v69, v261)));
    v268 = vandq_s8(v295, v221);
    v269.i64[0] = 0x101010101010101;
    v269.i64[1] = 0x101010101010101;
    v270 = vsubq_s8(v267, v268);
    v271 = vsubq_s8(v266, v268);
    v258.i8[3] = v263;
    v272 = vdupq_lane_s32(*v258.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v296, v269)))
    {
      v273 = vnegq_s8(vandq_s8(v18, v269));
      v274 = v271;
      v274.i32[3] = v270.i32[0];
      v275 = v270;
      v275.i32[0] = v271.i32[3];
      v297.val[0] = vbslq_s8(v273, v275, v270);
      v297.val[1] = vbslq_s8(v273, v274, v271);
      v274.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v274.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v298.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0F80), v273), v297.val[0]);
      v298.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[1]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, xmmword_29D2F0F90), v273), v298.val[0]);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, v274), v273), v298.val[1]);
      v298.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v273), v223);
      v298.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v273), v224);
      v223 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, xmmword_29D2F0FC0), v273), v298.val[0]);
      v224 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, v274), v273), v298.val[1]);
      v298.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FD0), v273), v235);
      v298.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0F80), v273), v236);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, v274), v273), v298.val[0]);
      v236 = vaddq_s8(vandq_s8(vqtbl2q_s8(v298, xmmword_29D2F0FE0), v273), v298.val[1]);
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0FF0), v273), v251);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0F80), v273), v252);
      v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[0]);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F1000), v273), v297.val[1]);
    }

    v276 = vaddq_s8(v270, v272);
    v277 = vaddq_s8(v271, v272);
    v278 = vaddq_s8(v223, v272);
    v279 = vaddq_s8(v224, v272);
    v280 = vaddq_s8(v235, v272);
    v281 = vaddq_s8(v236, v272);
    v282 = vaddq_s8(v251, v272);
    v283 = vaddq_s8(v252, v272);
    v284.i64[0] = 0x1010101010101010;
    v284.i64[1] = 0x1010101010101010;
    v285 = v18.i8[1];
    v286 = vtstq_s8(v18, v284);
    if ((v285 & 0x10) != 0)
    {
      v286.i8[1] = v286.i8[2];
      v286.i8[2] = 0;
      v286 = vdupq_lane_s32(*v286.i8, 0);
      v287 = xmmword_29D2F1020;
    }

    else
    {
      v287 = xmmword_29D2F1010;
    }

    v288 = (a1 + a2);
    *a1 = vaddq_s8(vandq_s8(vqtbl1q_s8(v276, v287), v286), v276);
    a1[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v289 = (a1 + 2 * a2);
    *v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v277, v287), v286), v277);
    v288[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v290 = (v289 + a2);
    *v290 = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    v290[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    return a4 + 1;
  }
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = result[1];
    v9 = *(result + a2);
    v10 = *(result + a2 + 16);
    v12 = *(result + 2 * a2);
    v13 = *(result + v7 + 16);
    v11 = (result + v7 + a2);
    v14 = *v11;
    v15 = v11[1];
    *a3 = *result;
    a3[1] = v9;
    a3[2] = v8;
    a3[3] = v10;
    a3[4] = v12;
    a3[5] = v14;
    a3[6] = v13;
    a3[7] = v15;
    a3 += 8;
    v6 = 127;
  }

  v16 = 0;
  *a4 = v6;
  if (a5 >= 5 && a6)
  {
    v17 = (result + a2 + 32);
    v19 = result[3];
    v18 = (result + v7 + 32);
    v20 = *v17;
    v21 = v17[1];
    v23 = *v18;
    v24 = v18[1];
    v22 = (v18 + a2);
    v25 = *v22;
    v26 = v22[1];
    *a3 = result[2];
    a3[1] = v20;
    a3[2] = v19;
    a3[3] = v21;
    a3[4] = v23;
    a3[5] = v25;
    a3[6] = v24;
    a3[7] = v26;
    a3 += 8;
    v16 = 127;
  }

  v27 = 0;
  v28 = 4 * a2;
  a4[1] = v16;
  if (a5 && a6 >= 5)
  {
    v29 = (result + v28 + a2);
    v31 = *(result + v28 + 16);
    v30 = (result + v28 + v7);
    v32 = *v29;
    v33 = v29[1];
    v35 = *v30;
    v36 = v30[1];
    v34 = (v30 + a2);
    v37 = *v34;
    v38 = v34[1];
    *a3 = *(result + 4 * a2);
    a3[1] = v32;
    a3[2] = v31;
    a3[3] = v33;
    a3[4] = v35;
    a3[5] = v37;
    a3[6] = v36;
    a3[7] = v38;
    a3 += 8;
    v27 = 127;
  }

  v39 = 0;
  a4[2] = v27;
  if (a5 >= 5 && a6 >= 5)
  {
    v40 = (result + v28 + 32);
    v41 = (v40 + a2);
    v43 = *v40;
    v44 = *(result + v28 + 48);
    v42 = (v40 + v7);
    v45 = *v41;
    v46 = v41[1];
    v48 = *v42;
    v49 = v42[1];
    v47 = (v42 + a2);
    v50 = *v47;
    v51 = v47[1];
    *a3 = v43;
    a3[1] = v45;
    a3[2] = v44;
    a3[3] = v46;
    a3[4] = v48;
    a3[5] = v50;
    a3[6] = v49;
    a3[7] = v51;
    a3 += 8;
    v39 = 127;
  }

  v52 = 0;
  a4[3] = v39;
  if (a5 >= 9 && a6)
  {
    v53 = (result + a2 + 64);
    v55 = result[5];
    v54 = (result + v7 + 64);
    v56 = *v53;
    v57 = v53[1];
    v59 = *v54;
    v60 = v54[1];
    v58 = (v54 + a2);
    v61 = *v58;
    v62 = v58[1];
    *a3 = result[4];
    a3[1] = v56;
    a3[2] = v55;
    a3[3] = v57;
    a3[4] = v59;
    a3[5] = v61;
    a3[6] = v60;
    a3[7] = v62;
    a3 += 8;
    v52 = 127;
  }

  v63 = 0;
  a4[4] = v52;
  if (a5 >= 0xD && a6)
  {
    v64 = (result + a2 + 96);
    v66 = result[7];
    v65 = (result + v7 + 96);
    v67 = *v64;
    v68 = v64[1];
    v70 = *v65;
    v71 = v65[1];
    v69 = (v65 + a2);
    v72 = *v69;
    v73 = v69[1];
    *a3 = result[6];
    a3[1] = v67;
    a3[2] = v66;
    a3[3] = v68;
    a3[4] = v70;
    a3[5] = v72;
    a3[6] = v71;
    a3[7] = v73;
    a3 += 8;
    v63 = 127;
  }

  v74 = 0;
  a4[5] = v63;
  if (a5 >= 9 && a6 >= 5)
  {
    v75 = (result + v28 + 64);
    v76 = (v75 + a2);
    v78 = *v75;
    v79 = *(result + v28 + 80);
    v77 = (v75 + v7);
    v80 = *v76;
    v81 = v76[1];
    v83 = *v77;
    v84 = v77[1];
    v82 = (v77 + a2);
    v85 = *v82;
    v86 = v82[1];
    *a3 = v78;
    a3[1] = v80;
    a3[2] = v79;
    a3[3] = v81;
    a3[4] = v83;
    a3[5] = v85;
    a3[6] = v84;
    a3[7] = v86;
    a3 += 8;
    v74 = 127;
  }

  v87 = 0;
  a4[6] = v74;
  if (a5 >= 0xD && a6 >= 5)
  {
    v88 = (result + v28 + 96);
    v89 = (v88 + a2);
    v91 = *v88;
    v92 = v88[1];
    v90 = (v88 + v7);
    v93 = *v89;
    v94 = v89[1];
    v96 = *v90;
    v97 = v90[1];
    v95 = (v90 + a2);
    v98 = *v95;
    v99 = v95[1];
    *a3 = v91;
    a3[1] = v93;
    a3[2] = v92;
    a3[3] = v94;
    a3[4] = v96;
    a3[5] = v98;
    a3[6] = v97;
    a3[7] = v99;
    v87 = 127;
  }

  a4[7] = v87;
  return result;
}

int8x16_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
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
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v6);
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
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 128, v16, v18);
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
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 128, v28, v30);
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
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 128, v40, v42);
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
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 128, v52, v54);
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
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 128, v64, v66);
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
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 128, v76, v78);
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

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v90, v89);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int8x16_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
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
  v17 = vsubq_s8(*a3, v16);
  v18 = vsubq_s8(v8, v16);
  v525 = a3[1];
  v19 = vsubq_s8(v525, v16);
  v20 = vsubq_s8(v9, v16);
  v21 = vsubq_s8(v11, v16);
  v22 = vsubq_s8(*v10, v16);
  v526 = v12;
  v23 = vsubq_s8(v12, v16);
  v24 = vsubq_s8(v15, v16);
  v25 = vqtbl1q_s8(vmaxq_s8(v17, v18), xmmword_29D2F0F70);
  v26 = vqtbl1q_s8(vminq_s8(v17, v18), xmmword_29D2F0F70);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vzip1q_s8(v29, v30);
  v32.i64[0] = 0x808080808080808;
  v32.i64[1] = 0x808080808080808;
  v33 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v31)), vceqzq_s8(v31));
  v34 = vpmaxq_s8(v33, v33);
  v35 = vqtbl1q_s8(vmaxq_s8(v19, v20), xmmword_29D2F0F70);
  v36 = vqtbl1q_s8(vminq_s8(v19, v20), xmmword_29D2F0F70);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vmaxq_s8(v29, v39);
  v42 = vminq_s8(v30, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v43)), vceqzq_s8(v43));
  v45 = vpmaxq_s8(v44, v44);
  v46 = vqtbl1q_s8(vmaxq_s8(v21, v22), xmmword_29D2F0F70);
  v47 = vqtbl1q_s8(vminq_s8(v21, v22), xmmword_29D2F0F70);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vpmaxq_s8(v48, v48);
  v51 = vpminq_s8(v49, v49);
  v52 = vmaxq_s8(v41, v50);
  v53 = vminq_s8(v42, v51);
  v54 = vzip1q_s8(v50, v51);
  v55 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v54)), vceqzq_s8(v54));
  v56 = vpmaxq_s8(v55, v55);
  v57 = vqtbl1q_s8(vmaxq_s8(v23, v24), xmmword_29D2F0F70);
  v58 = vqtbl1q_s8(vminq_s8(v23, v24), xmmword_29D2F0F70);
  v59 = vpmaxq_s8(v57, v57);
  v60 = vpminq_s8(v58, v58);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vmaxq_s8(v52, v61);
  v64 = vminq_s8(v53, v62);
  v65 = vzip1q_s8(v61, v62);
  v66 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v65)), vceqzq_s8(v65));
  v67 = vpmaxq_s8(v66, v66);
  v68 = vmaxq_s8(vmaxq_s8(v34, v45), vmaxq_s8(v56, v67));
  v69 = vclzq_s8(vsubq_s8(v63, v64));
  v70 = vsubq_s8(v32, v69);
  v71 = vminq_s8(v70, v68);
  v72 = vmaxvq_s8(v71);
  v74 = a5 < 2 || a6 < 2;
  if (!v72)
  {
    a1->i32[0] = a3->i32[0];
    v165 = 3;
    result = 4;
    goto LABEL_91;
  }

  v516 = v13;
  v512 = v14;
  v513 = v15;
  v75.i64[0] = -1;
  v75.i64[1] = -1;
  v76.i64[0] = 0x707070707070707;
  v76.i64[1] = 0x707070707070707;
  v77 = vcgtq_s8(v68, v70);
  v523 = vandq_s8(vsubq_s8(vshlq_s8(v75, vsubq_s8(v76, v69)), v64), v77);
  v78.i64[0] = 0x303030303030303;
  v78.i64[1] = 0x303030303030303;
  v510 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v34), v78), 0);
  v514 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v45), v78), 0);
  v79 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v56), v78), 0);
  v80 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v67), v78), 0);
  v81.i64[0] = 0x404040404040404;
  v81.i64[1] = 0x404040404040404;
  v82 = vorrq_s8(vbicq_s8(v81, vceqq_s8(vaddq_s8(v80, v79), vnegq_s8(vaddq_s8(v510, v514)))), vorrq_s8(vandq_s8(vceqzq_s8(v71), v78), vandq_s8(v77, v32)));
  v83 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F1010));
  v84 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F1010));
  v85 = vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010));
  v86 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1010));
  v87 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
  v528 = v18;
  v529 = v19;
  v508 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F1010));
  v509 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F1010));
  v88 = vqtbl1q_s8(vmaxq_s8(v509, v508), xmmword_29D2F0F70);
  v89 = vqtbl1q_s8(vminq_s8(v509, v508), xmmword_29D2F0F70);
  v90 = vpmaxq_s8(v88, v88);
  v91 = vpminq_s8(v89, v89);
  v92 = vpmaxq_s8(v90, v90);
  v93 = vpminq_s8(v91, v91);
  v527 = v17;
  v94 = vzip1q_s8(v92, v93);
  v95 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v94)), vceqzq_s8(v94));
  v96 = vpmaxq_s8(v95, v95);
  v530 = v24;
  v506 = vsubq_s8(v20, vqtbl1q_s8(v20, xmmword_29D2F1010));
  v507 = v83;
  v97 = vqtbl1q_s8(vmaxq_s8(v83, v506), xmmword_29D2F0F70);
  v98 = vqtbl1q_s8(vminq_s8(v83, v506), xmmword_29D2F0F70);
  v99 = vpmaxq_s8(v97, v97);
  v100 = vpminq_s8(v98, v98);
  v101 = vpmaxq_s8(v99, v99);
  v102 = vpminq_s8(v100, v100);
  v103 = vmaxq_s8(v92, v101);
  v104 = vzip1q_s8(v101, v102);
  v105 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v104)), vceqzq_s8(v104));
  v519 = v22;
  v521 = v21;
  v106 = v71;
  v107 = vpmaxq_s8(v105, v105);
  v517 = v20;
  v108 = vqtbl1q_s8(vmaxq_s8(v84, v85), xmmword_29D2F0F70);
  v109 = vqtbl1q_s8(vminq_s8(v84, v85), xmmword_29D2F0F70);
  v110 = vpmaxq_s8(v108, v108);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vmaxq_s8(v103, v112);
  v115 = vminq_s8(vminq_s8(v93, v102), v113);
  v116 = vzip1q_s8(v112, v113);
  v117 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v116)), vceqzq_s8(v116));
  v118 = vpmaxq_s8(v117, v117);
  v119 = vqtbl1q_s8(vmaxq_s8(v86, v87), xmmword_29D2F0F70);
  v120 = vqtbl1q_s8(vminq_s8(v86, v87), xmmword_29D2F0F70);
  v121 = vpmaxq_s8(v119, v119);
  v122 = vpminq_s8(v120, v120);
  v123 = vpmaxq_s8(v121, v121);
  v124 = vpminq_s8(v122, v122);
  v125 = vmaxq_s8(v114, v123);
  v126 = vminq_s8(v115, v124);
  v127 = vzip1q_s8(v123, v124);
  v128 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v127)), vceqzq_s8(v127));
  v129 = vpmaxq_s8(v128, v128);
  v130 = vmaxq_s8(vmaxq_s8(v96, v107), vmaxq_s8(v118, v129));
  v131 = v23;
  v132 = vclzq_s8(vsubq_s8(v125, v126));
  v133 = vsubq_s8(v32, v132);
  v134 = vcgtq_s8(v130, v133);
  v135 = vminq_s8(v133, v130);
  v133.i64[0] = 0x1010101010101010;
  v133.i64[1] = 0x1010101010101010;
  v130.i64[0] = 0x1818181818181818;
  v130.i64[1] = 0x1818181818181818;
  v136 = vorrq_s8(vandq_s8(vceqzq_s8(v135), v78), vbslq_s8(v134, v130, v133));
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v96), v78), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v107), v78), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v118), v78), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v129), v78), 0);
  v141 = vsubq_s8(v135, v137);
  v142 = vsubq_s8(v135, v138);
  v143 = vsubq_s8(v135, v139);
  v144 = vsubq_s8(v135, v140);
  v145.i64[0] = 0x404040404040404;
  v145.i64[1] = 0x404040404040404;
  v146 = vorrq_s8(v136, vbicq_s8(v145, vceqq_s8(vaddq_s8(v140, v139), vnegq_s8(vaddq_s8(v137, v138)))));
  v147 = vmovl_u8(*v146.i8);
  v139.i64[0] = 0x8000800080008;
  v139.i64[1] = 0x8000800080008;
  v138.i64[0] = 0x2000200020002;
  v138.i64[1] = 0x2000200020002;
  v148 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v142.i8), *v144.i8), 3uLL), *v141.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v146.i8, 1uLL), v139)), vbicq_s8(vmovl_s8(*v135.i8), vceqzq_s16((*&v147 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v147 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v138), v139));
  v149 = vsubq_s8(v106, v510);
  v150 = vsubq_s8(v106, v514);
  v151 = vsubq_s8(v106, v79);
  v152 = vsubq_s8(v106, v80);
  v153 = vandq_s8(vceqq_s16((*&vmovl_u8(*v82.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v138), v139);
  v154 = v106;
  v155 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v150.i8), *v152.i8), 3uLL), *v149.i8, 0x707070707070707), vbic_s8(*v106.i8, vcgt_u8(0x808080808080808, *v82.i8))), (*&vshll_n_u8(*v82.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v153), v148)), 0);
  if (vaddlvq_s8(v155))
  {
    v156.i64[0] = 0x707070707070707;
    v156.i64[1] = 0x707070707070707;
    v157.i64[0] = -1;
    v157.i64[1] = -1;
    v16 = vbslq_s8(v155, vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F1010)), v16);
    v527 = vbslq_s8(v155, v509, v527);
    v528 = vbslq_s8(v155, v508, v528);
    v529 = vbslq_s8(v155, v507, v529);
    v158 = vbslq_s8(v155, v84, v521);
    v159 = vbslq_s8(v155, v86, v131);
    v530 = vbslq_s8(v155, v87, v530);
    v149 = vbslq_s8(v155, v141, v149);
    v150 = vbslq_s8(v155, v142, v150);
    v151 = vbslq_s8(v155, v143, v151);
    v515 = vbslq_s8(v155, v144, v152);
    v160 = vbslq_s8(v155, vandq_s8(vsubq_s8(vshlq_s8(v157, vsubq_s8(v156, v132)), v126), v134), v523);
    v154 = vbslq_s8(v155, v135, v106);
    v161 = vbslq_s8(v155, v146, v82);
    v162 = vbslq_s8(v155, v85, v519);
    v163 = vbslq_s8(v155, v506, v517);
    if (v74)
    {
LABEL_10:
      v164 = v515;
      goto LABEL_16;
    }
  }

  else
  {
    v515 = v152;
    v159 = v131;
    v162 = v519;
    v158 = v521;
    v160 = v523;
    v163 = v517;
    v161 = v82;
    if (v74)
    {
      goto LABEL_10;
    }
  }

  v511 = v159;
  v518 = v163;
  v520 = v162;
  v522 = v158;
  v524 = v160;
  v177 = vsubq_s8(v7, vqtbl2q_s8(*v7.i8, xmmword_29D2F0F80));
  v167 = vsubq_s8(v8, vqtbl2q_s8(*v7.i8, xmmword_29D2F1030));
  v531.val[0] = a3[1];
  v531.val[1] = *(&a3[1] + a4);
  v531.val[1].i32[3] = HIDWORD(*(a3 + a4));
  v168 = v151;
  v169 = vsubq_s8(v525, vqtbl2q_s8(v531, xmmword_29D2F0FA0));
  v170 = vsubq_s8(v9, vqtbl2q_s8(v531, xmmword_29D2F1040));
  v171 = v516;
  v531.val[0] = v512;
  v531.val[0].i32[3] = v531.val[1].i32[3];
  v172 = vsubq_s8(v516, vqtbl2q_s8(v531, xmmword_29D2F1050));
  v532.val[0] = v526;
  v532.val[1] = v513;
  v532.val[1].i32[3] = v531.val[1].i32[3];
  v173 = vsubq_s8(v512, vqtbl2q_s8(v531, xmmword_29D2F0F80));
  v174 = vsubq_s8(v526, vqtbl2q_s8(v532, xmmword_29D2F1060));
  v175 = vsubq_s8(v513, vqtbl2q_s8(v532, xmmword_29D2F0F80));
  v176 = v167;
  v176.i32[3] = v177.i32[0];
  v177.i32[0] = v167.i32[3];
  v178 = vqtbl1q_s8(vmaxq_s8(v177, v176), xmmword_29D2F0F70);
  v531.val[1] = vqtbl1q_s8(vminq_s8(v177, v176), xmmword_29D2F0F70);
  v179 = vpmaxq_s8(v178, v178);
  v531.val[1] = vpminq_s8(v531.val[1], v531.val[1]);
  v180 = vpmaxq_s8(v179, v179);
  v531.val[1] = vpminq_s8(v531.val[1], v531.val[1]);
  v181 = vzip1q_s8(v180, v531.val[1]);
  v182 = v150;
  v183.i64[0] = 0x808080808080808;
  v183.i64[1] = 0x808080808080808;
  v184 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v181)), vceqzq_s8(v181));
  v532.val[1] = vpmaxq_s8(v184, v184);
  v185 = vqtbl1q_s8(vmaxq_s8(v169, v170), xmmword_29D2F0F70);
  v186 = vqtbl1q_s8(vminq_s8(v169, v170), xmmword_29D2F0F70);
  v187 = vpmaxq_s8(v185, v185);
  v188 = vpminq_s8(v186, v186);
  v189 = vpmaxq_s8(v187, v187);
  v190 = vpminq_s8(v188, v188);
  v191 = vmaxq_s8(v180, v189);
  v531.val[1] = vminq_s8(v531.val[1], v190);
  v192 = vzip1q_s8(v189, v190);
  v193 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v192)), vceqzq_s8(v192));
  v194 = vpmaxq_s8(v193, v193);
  v195 = vqtbl1q_s8(vmaxq_s8(v172, v173), xmmword_29D2F0F70);
  v196 = vqtbl1q_s8(vminq_s8(v172, v173), xmmword_29D2F0F70);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vpmaxq_s8(v197, v197);
  v200 = vpminq_s8(v198, v198);
  v201 = vmaxq_s8(v191, v199);
  v531.val[1] = vminq_s8(v531.val[1], v200);
  v202 = vzip1q_s8(v199, v200);
  v203 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v202)), vceqzq_s8(v202));
  v204 = vpmaxq_s8(v203, v203);
  v205 = vqtbl1q_s8(vmaxq_s8(v174, v175), xmmword_29D2F0F70);
  v206 = vqtbl1q_s8(vminq_s8(v174, v175), xmmword_29D2F0F70);
  v207 = vpmaxq_s8(v205, v205);
  v208 = vpminq_s8(v206, v206);
  v209 = vpmaxq_s8(v207, v207);
  v210 = vpminq_s8(v208, v208);
  v211 = vminq_s8(v531.val[1], v210);
  v531.val[1] = vzip1q_s8(v209, v210);
  v531.val[1] = vbicq_s8(vsubq_s8(v183, vclsq_s8(v531.val[1])), vceqzq_s8(v531.val[1]));
  v212 = v154;
  v213 = vpmaxq_s8(v531.val[1], v531.val[1]);
  v531.val[1] = vmaxq_s8(vmaxq_s8(v532.val[1], v194), vmaxq_s8(v204, v213));
  v214 = vclzq_s8(vsubq_s8(vmaxq_s8(v201, v209), v211));
  v215 = vsubq_s8(v183, v214);
  v216 = vcgtq_s8(v531.val[1], v215);
  v217 = vminq_s8(v215, v531.val[1]);
  v215.i64[0] = 0x909090909090909;
  v215.i64[1] = 0x909090909090909;
  v218.i64[0] = 0x202020202020202;
  v218.i64[1] = 0x202020202020202;
  v219 = vorrq_s8(vandq_s8(vceqzq_s8(v217), v218), vsubq_s8(vandq_s8(v216, v215), vmvnq_s8(v216)));
  v183.i64[0] = 0x303030303030303;
  v183.i64[1] = 0x303030303030303;
  v220 = vmaxq_s8(vminq_s8(vsubq_s8(v217, v532.val[1]), v183), 0);
  v221 = vmaxq_s8(vminq_s8(vsubq_s8(v217, v194), v183), 0);
  v222 = vmaxq_s8(vminq_s8(vsubq_s8(v217, v204), v183), 0);
  v223 = vmaxq_s8(vminq_s8(vsubq_s8(v217, v213), v183), 0);
  v224 = vsubq_s8(v217, v220);
  v225 = vsubq_s8(v217, v221);
  v226 = vsubq_s8(v217, v222);
  v227 = vsubq_s8(v217, v223);
  v228 = vceqq_s8(vaddq_s8(v223, v222), vnegq_s8(vaddq_s8(v220, v221)));
  v223.i64[0] = 0x404040404040404;
  v223.i64[1] = 0x404040404040404;
  v229 = vorrq_s8(v219, vbicq_s8(v223, v228));
  v230 = vmovl_s8(*v161.i8);
  v221.i64[0] = 0x8000800080008;
  v221.i64[1] = 0x8000800080008;
  v231 = vbicq_s8(vmovl_s8(*v212.i8), vceqzq_s16(vandq_s8(v230, v221)));
  v232.i64[0] = 0x3000300030003;
  v232.i64[1] = 0x3000300030003;
  v233 = vandq_s8(v230, v232);
  v232.i64[0] = 0x2000200020002;
  v232.i64[1] = 0x2000200020002;
  v234 = vmlal_s8(vaddq_s16(vaddq_s16(v231, vandq_s8(vshll_n_s8(*v161.i8, 1uLL), v221)), vandq_s8(vceqq_s16(v233, v232), v221)), *v149.i8, 0x707070707070707);
  v164 = v515;
  v235 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(v234, vshll_n_s8(vadd_s8(vadd_s8(*v168.i8, *v182.i8), *v515.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v226.i8, *v225.i8), *v227.i8), 3uLL), *v224.i8, 0x707070707070707), vand_s8(vadd_s8(*v229.i8, *v229.i8), 0x808080808080808)), vbic_s8(*v217.i8, vcgt_u8(0x808080808080808, *v229.i8))))), 0);
  if (vaddlvq_s8(v235))
  {
    v236.i64[0] = 0x707070707070707;
    v236.i64[1] = 0x707070707070707;
    v237 = vsubq_s8(v236, v214);
    v238.i64[0] = -1;
    v238.i64[1] = -1;
    v239 = vandq_s8(vsubq_s8(vshlq_s8(v238, v237), v211), v216);
    v16.i32[0] = vbslq_s8(v235, vextq_s8(v8, v8, 0xCuLL), v16).u32[0];
    v527 = vbslq_s8(v235, v177, v527);
    v528 = vbslq_s8(v235, v176, v528);
    v529 = vbslq_s8(v235, v169, v529);
    v163 = vbslq_s8(v235, v170, v518);
    v158 = vbslq_s8(v235, v172, v522);
    v162 = vbslq_s8(v235, v173, v520);
    v159 = vbslq_s8(v235, v174, v511);
    v530 = vbslq_s8(v235, v175, v530);
    v149 = vbslq_s8(v235, v224, v149);
    v150 = vbslq_s8(v235, v225, v182);
    v240 = vbslq_s8(v235, v226, v168);
    v164 = vbslq_s8(v235, v227, v515);
    v160 = vbslq_s8(v235, v239, v524);
    v154 = vbslq_s8(v235, v217, v212);
    v161 = vbslq_s8(v235, v229, v161);
    v151 = v240;
  }

  else
  {
    v162 = v520;
    v158 = v522;
    v160 = v524;
    v154 = v212;
    v163 = v518;
    v159 = v511;
    v151 = v168;
    v150 = v182;
  }

LABEL_16:
  v241 = vmovl_s8(*v161.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v243 = vbicq_s8(vmovl_s8(*v154.i8), vceqzq_s16(vandq_s8(v241, v242)));
  v244.i64[0] = 0x3000300030003;
  v244.i64[1] = 0x3000300030003;
  v245 = vandq_s8(v241, v244);
  v244.i64[0] = 0x2000200020002;
  v244.i64[1] = 0x2000200020002;
  v246 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v150.i8), *v164.i8), 3uLL), *v149.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v161.i8, 1uLL), v242)), v243), vandq_s8(vceqq_s16(v245, v244), v242));
  v247 = vpaddq_s16(v246, v246);
  v248 = vpaddq_s16(v247, v247).u64[0];
  if ((v248.i16[0] + 71) > 0x3FF)
  {
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v525;
    a1[3] = v9;
    a1[4] = v516;
    a1[5] = v512;
    v252 = a1 + 6;
    v165 = 127;
    result = 128;
    *v252 = v526;
    v252[1] = v513;
  }

  else
  {
    v249 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v250 = 8 * (a1 & 7);
    if (v250)
    {
      v251 = *v249 & ~(-1 << v250);
    }

    else
    {
      v251 = 0;
    }

    *a2 = 0;
    v253 = vzip1_s8(*v154.i8, v248);
    v254 = vadd_s16(v253, 0xFF00FF00FF00FFLL);
    v255 = vmovl_u16(vceqz_s16((*&v253 & 0xFF00FF00FF00FFLL)));
    v256.i64[0] = v255.u32[0];
    v256.i64[1] = v255.u32[1];
    v257 = vshrq_n_s64(vshlq_n_s64(v256, 0x38uLL), 0x38uLL);
    v256.i64[0] = v255.u32[2];
    v256.i64[1] = v255.u32[3];
    v258 = vshrq_n_s64(vshlq_n_s64(v256, 0x38uLL), 0x38uLL);
    v259 = vshlq_u32(vmovl_u16(vand_s8(v254, 0x7000700070007)), xmmword_29D2F1070);
    v256.i64[0] = v259.u32[0];
    v256.i64[1] = v259.u32[1];
    v260 = v256;
    v256.i64[0] = v259.u32[2];
    v256.i64[1] = v259.u32[3];
    v261 = vorrq_s8(vbicq_s8(v260, v257), vbicq_s8(v256, v258));
    v262 = *&vorr_s8(*v261.i8, *&vextq_s8(v261, v261, 8uLL)) | (32 * (v161.i8[1] & 0x1F)) | ((v161.i8[3] & 0x1F) << 15) | ((v161.i8[2] & 0x1F) << 10) | v161.i8[0] & 0x1F;
    v263 = v251 | (v262 << v250);
    if (v250 >= 0x20)
    {
      *v249 = v263;
      v263 = v262 >> (-8 * (a1 & 7u));
    }

    v264 = v16.u8[0] | (v16.u8[1] << 8) | (v16.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v16.u8[3] << 24);
    v265 = (v250 + 32) & 0x38;
    v266 = v263 | (v264 << v265);
    if (v265 >= 0x20)
    {
      *(v249 + (((v250 + 32) >> 3) & 8)) = v266;
      v266 = v264 >> -v265;
    }

    v267 = vsubq_s8(v154, v149);
    v268 = vsubq_s8(v154, v150);
    v269 = vsubq_s8(v154, v151);
    v270 = vsubq_s8(v154, v164);
    v271 = vtrn1q_s8(v267, v268);
    v272 = vtrn2q_s8(v267, v268);
    v273 = vtrn1q_s8(v269, v270);
    v274 = vtrn2q_s8(v269, v270);
    v275 = vzip1q_s16(v272, v274);
    v276 = vtrn2q_s16(v272, v274);
    v274.i64[0] = vzip1q_s32(vzip1q_s16(v271, v273), v275).u64[0];
    v276.i64[0] = vzip1q_s32(vtrn2q_s16(v271, v273), v276).u64[0];
    v270.i64[0] = 0x202020202020202;
    v270.i64[1] = 0x202020202020202;
    v277 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v161.i8), 0x4000400040004)), v270);
    v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v271.i64[0] = -1;
    v271.i64[1] = -1;
    v278 = vshlq_u8(v271, vorrq_s8(v277, v270));
    v279 = vmovl_u8(vand_s8(*v278.i8, *v274.i8));
    v280 = vmovl_u8(vand_s8(*&vextq_s8(v278, v278, 8uLL), *v276.i8));
    v281 = vmovl_u8(*v277.i8);
    v282 = vmovl_high_u8(v277);
    v283 = vpaddq_s16(vshlq_u16(v279, vtrn1q_s16(0, v281)), vshlq_u16(v280, vtrn1q_s16(0, v282)));
    v284 = vpaddq_s16(v281, v282);
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
    v295 = (v293.i64[0] << v250) | v266;
    if (v294.i64[0] + v250 >= 0x40)
    {
      v249[1] = v295;
      v295 = v293.i64[0] >> (-8 * (a1 & 7u));
      if (!v250)
      {
        v295 = 0;
      }
    }

    v296 = vceqq_s8(v154, v149);
    v297 = v294.i64[0] + (v250 | 0x40);
    v298 = v295 | (v293.i64[1] << v297);
    if ((v297 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v249 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
      v298 = v293.i64[1] >> -(v297 & 0x3F);
      if ((v297 & 0x3F) == 0)
      {
        v298 = 0;
      }
    }

    v299 = vandq_s8(v160, v296);
    v300 = v297 + v294.i64[1];
    v301.i64[0] = 0x808080808080808;
    v301.i64[1] = 0x808080808080808;
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vextq_s8(vtstq_s8(v161, v301), 0, 0xCuLL), v154);
    v304.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v304.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v305 = vandq_s8(vshlq_u8(v302, vaddq_s8(v303, v304)), v160);
    v306 = vmovl_u8(*v303.i8);
    v307 = vpaddq_s16(vshlq_u16(vmovl_u8(*v305.i8), vtrn1q_s16(0, v306)), vmovl_high_u8(v305));
    v308 = vpaddq_s16(v306, vmovl_high_u8(v303));
    v309 = vmovl_u16(*v308.i8);
    v310 = vmovl_high_u16(v308);
    v311 = vpaddq_s32(vshlq_u32(vmovl_u16(*v307.i8), vtrn1q_s32(0, v309)), vshlq_u32(vmovl_high_u16(v307), vtrn1q_s32(0, v310)));
    v312 = vpaddq_s32(v309, v310);
    v313.i64[0] = v311.u32[0];
    v313.i64[1] = v311.u32[1];
    v314 = v313;
    v313.i64[0] = v311.u32[2];
    v313.i64[1] = v311.u32[3];
    v315 = v313;
    v313.i64[0] = v312.u32[0];
    v313.i64[1] = v312.u32[1];
    v316 = v313;
    v313.i64[0] = v312.u32[2];
    v313.i64[1] = v312.u32[3];
    v317 = vpaddq_s64(vshlq_u64(v314, vzip1q_s64(0, v316)), vshlq_u64(v315, vzip1q_s64(0, v313)));
    v318 = vpaddq_s64(v316, v313);
    v319 = (v317.i64[0] << v300) | v298;
    if (v318.i64[0] + (v300 & 0x3F) >= 0x40)
    {
      *(v249 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v319;
      v319 = v317.i64[0] >> -(v300 & 0x3F);
      if ((v300 & 0x3F) == 0)
      {
        v319 = 0;
      }
    }

    v320 = vaddq_s8(v299, v527);
    v321 = v318.i64[0] + v300;
    v322 = v319 | (v317.i64[1] << v321);
    if ((v321 & 0x3F) + v318.i64[1] >= 0x40)
    {
      *(v249 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
      v322 = v317.i64[1] >> -(v321 & 0x3F);
      if ((v321 & 0x3F) == 0)
      {
        v322 = 0;
      }
    }

    v323 = v321 + v318.i64[1];
    v324 = vextq_s8(0, v149, 0xCuLL);
    v325.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v325.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v326.i64[0] = -1;
    v326.i64[1] = -1;
    v327 = vandq_s8(vshlq_u8(v326, vaddq_s8(v324, v325)), v320);
    v328 = vmovl_u8(*v324.i8);
    v329 = vmovl_high_u8(v324);
    v330 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vshlq_u16(vmovl_high_u8(v327), vtrn1q_s16(0, v329)));
    v331 = vpaddq_s16(v328, v329);
    v332 = vmovl_u16(*v331.i8);
    v333 = vmovl_high_u16(v331);
    v334 = vpaddq_s32(vshlq_u32(vmovl_u16(*v330.i8), vtrn1q_s32(0, v332)), vshlq_u32(vmovl_high_u16(v330), vtrn1q_s32(0, v333)));
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
    v342 = (v340.i64[0] << v323) | v322;
    if (v341.i64[0] + (v323 & 0x3F) >= 0x40)
    {
      *(v249 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
      v342 = v340.i64[0] >> -(v323 & 0x3F);
      if ((v323 & 0x3F) == 0)
      {
        v342 = 0;
      }
    }

    v343 = vceqq_s8(v154, v150);
    v344 = vaddq_s8(v528, v299);
    v345 = v341.i64[0] + v323;
    v346 = v342 | (v340.i64[1] << v345);
    if ((v345 & 0x3F) + v341.i64[1] >= 0x40)
    {
      *(v249 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
      v346 = v340.i64[1] >> -(v345 & 0x3F);
      if ((v345 & 0x3F) == 0)
      {
        v346 = 0;
      }
    }

    v347 = vandq_s8(v160, v343);
    v348 = v345 + v341.i64[1];
    v349.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v349.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v350.i64[0] = -1;
    v350.i64[1] = -1;
    v351 = vandq_s8(vshlq_u8(v350, vaddq_s8(v149, v349)), v344);
    v352 = vmovl_u8(*v149.i8);
    v353 = vmovl_high_u8(v149);
    v354 = vpaddq_s16(vshlq_u16(vmovl_u8(*v351.i8), vtrn1q_s16(0, v352)), vshlq_u16(vmovl_high_u8(v351), vtrn1q_s16(0, v353)));
    v355 = vpaddq_s16(v352, v353);
    v356 = vmovl_u16(*v355.i8);
    v357 = vmovl_high_u16(v355);
    v358 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v356)), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v357)));
    v359 = vpaddq_s32(v356, v357);
    v360.i64[0] = v358.u32[0];
    v360.i64[1] = v358.u32[1];
    v361 = v360;
    v360.i64[0] = v358.u32[2];
    v360.i64[1] = v358.u32[3];
    v362 = v360;
    v360.i64[0] = v359.u32[0];
    v360.i64[1] = v359.u32[1];
    v363 = v360;
    v360.i64[0] = v359.u32[2];
    v360.i64[1] = v359.u32[3];
    v364 = vpaddq_s64(vshlq_u64(v361, vzip1q_s64(0, v363)), vshlq_u64(v362, vzip1q_s64(0, v360)));
    v365 = vpaddq_s64(v363, v360);
    v366 = (v364.i64[0] << v348) | v346;
    if (v365.i64[0] + (v348 & 0x3F) >= 0x40)
    {
      *(v249 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      v366 = v364.i64[0] >> -(v348 & 0x3F);
      if ((v348 & 0x3F) == 0)
      {
        v366 = 0;
      }
    }

    v367 = vaddq_s8(v529, v347);
    v368 = v365.i64[0] + v348;
    v369 = v366 | (v364.i64[1] << v368);
    if ((v368 & 0x3F) + v365.i64[1] >= 0x40)
    {
      *(v249 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
      v369 = v364.i64[1] >> -(v368 & 0x3F);
      if ((v368 & 0x3F) == 0)
      {
        v369 = 0;
      }
    }

    v370 = v368 + v365.i64[1];
    v371.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v371.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v372.i64[0] = -1;
    v372.i64[1] = -1;
    v373 = vshlq_u8(v372, vaddq_s8(v150, v371));
    v374 = vandq_s8(v373, v367);
    v375 = vmovl_u8(*v374.i8);
    v376 = vmovl_high_u8(v374);
    v377 = vmovl_u8(*v150.i8);
    v378 = vmovl_high_u8(v150);
    v379 = vtrn1q_s16(0, v377);
    v380 = vtrn1q_s16(0, v378);
    v381 = vpaddq_s16(vshlq_u16(v375, v379), vshlq_u16(v376, v380));
    v382 = vpaddq_s16(v377, v378);
    v383 = vmovl_u16(*v382.i8);
    v384 = vmovl_high_u16(v382);
    v385 = vtrn1q_s32(0, v383);
    v386 = vtrn1q_s32(0, v384);
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v381.i8), v385), vshlq_u32(vmovl_high_u16(v381), v386));
    v388 = vpaddq_s32(v383, v384);
    v389.i64[0] = v387.u32[0];
    v389.i64[1] = v387.u32[1];
    v390 = v389;
    v389.i64[0] = v387.u32[2];
    v389.i64[1] = v387.u32[3];
    v391 = v389;
    v389.i64[0] = v388.u32[0];
    v389.i64[1] = v388.u32[1];
    v392 = v389;
    v389.i64[0] = v388.u32[2];
    v389.i64[1] = v388.u32[3];
    v393 = vzip1q_s64(0, v392);
    v394 = vzip1q_s64(0, v389);
    v395 = vpaddq_s64(vshlq_u64(v390, v393), vshlq_u64(v391, v394));
    v396 = vpaddq_s64(v392, v389);
    v397 = (v395.i64[0] << v370) | v369;
    if (v396.i64[0] + (v370 & 0x3F) >= 0x40)
    {
      *(v249 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      if ((v370 & 0x3F) != 0)
      {
        v397 = v395.i64[0] >> -(v370 & 0x3F);
      }

      else
      {
        v397 = 0;
      }
    }

    v398 = vceqq_s8(v154, v151);
    v399 = vaddq_s8(v163, v347);
    v400 = v396.i64[0] + v370;
    v401 = v397 | (v395.i64[1] << v400);
    if ((v400 & 0x3F) + v396.i64[1] >= 0x40)
    {
      *(v249 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
      v401 = v395.i64[1] >> -(v400 & 0x3F);
      if ((v400 & 0x3F) == 0)
      {
        v401 = 0;
      }
    }

    v402 = vandq_s8(v160, v398);
    v403 = v400 + v396.i64[1];
    v404 = vandq_s8(v373, v399);
    v405 = vpaddq_s16(vshlq_u16(vmovl_u8(*v404.i8), v379), vshlq_u16(vmovl_high_u8(v404), v380));
    v406 = vpaddq_s32(vshlq_u32(vmovl_u16(*v405.i8), v385), vshlq_u32(vmovl_high_u16(v405), v386));
    v407.i64[0] = v406.u32[0];
    v407.i64[1] = v406.u32[1];
    v408 = v407;
    v407.i64[0] = v406.u32[2];
    v407.i64[1] = v406.u32[3];
    v409 = vpaddq_s64(vshlq_u64(v408, v393), vshlq_u64(v407, v394));
    v410 = (v409.i64[0] << v403) | v401;
    if (v396.i64[0] + (v403 & 0x3F) >= 0x40)
    {
      *(v249 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
      v410 = v409.i64[0] >> -(v403 & 0x3F);
      if ((v403 & 0x3F) == 0)
      {
        v410 = 0;
      }
    }

    v411 = vaddq_s8(v158, v402);
    v412 = v396.i64[0] + v403;
    v413 = (v396.i64[0] + v403) & 0x3F;
    v414 = v410 | (v409.i64[1] << v412);
    if ((v412 & 0x3F) + v396.i64[1] >= 0x40)
    {
      *(v249 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      v414 = v409.i64[1] >> -v413;
      if (!v413)
      {
        v414 = 0;
      }
    }

    v415 = v412 + v396.i64[1];
    v416.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v416.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v417.i64[0] = -1;
    v417.i64[1] = -1;
    v418 = vshlq_u8(v417, vaddq_s8(v151, v416));
    v419 = vandq_s8(v418, v411);
    v420 = vmovl_u8(*v419.i8);
    v421 = vmovl_high_u8(v419);
    v422 = vmovl_u8(*v151.i8);
    v423 = vmovl_high_u8(v151);
    v424 = vtrn1q_s16(0, v422);
    v425 = vtrn1q_s16(0, v423);
    v426 = vpaddq_s16(vshlq_u16(v420, v424), vshlq_u16(v421, v425));
    v427 = vpaddq_s16(v422, v423);
    v428 = vmovl_u16(*v427.i8);
    v429 = vmovl_high_u16(v427);
    v430 = vtrn1q_s32(0, v428);
    v431 = vtrn1q_s32(0, v429);
    v432 = vpaddq_s32(vshlq_u32(vmovl_u16(*v426.i8), v430), vshlq_u32(vmovl_high_u16(v426), v431));
    v433 = vpaddq_s32(v428, v429);
    v434.i64[0] = v432.u32[0];
    v434.i64[1] = v432.u32[1];
    v435 = v434;
    v434.i64[0] = v432.u32[2];
    v434.i64[1] = v432.u32[3];
    v436 = v434;
    v434.i64[0] = v433.u32[0];
    v434.i64[1] = v433.u32[1];
    v437 = v434;
    v434.i64[0] = v433.u32[2];
    v434.i64[1] = v433.u32[3];
    v438 = vzip1q_s64(0, v437);
    v439 = vzip1q_s64(0, v434);
    v440 = vpaddq_s64(vshlq_u64(v435, v438), vshlq_u64(v436, v439));
    v441 = vpaddq_s64(v437, v434);
    v442 = (v412 + v396.i64[1]) & 0x3F;
    v443 = (v440.i64[0] << (v412 + v396.i8[8])) | v414;
    if ((v441.i64[0] + v442) >= 0x40)
    {
      *(v249 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
      if (v442)
      {
        v443 = v440.i64[0] >> -v442;
      }

      else
      {
        v443 = 0;
      }
    }

    v444 = vceqq_s8(v154, v164);
    v445 = vaddq_s8(v162, v402);
    v446 = v441.i64[0] + v415;
    v447 = v443 | (v440.i64[1] << v446);
    if ((v446 & 0x3F) + v441.i64[1] >= 0x40)
    {
      *(v249 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
      v447 = v440.i64[1] >> -(v446 & 0x3F);
      if ((v446 & 0x3F) == 0)
      {
        v447 = 0;
      }
    }

    v448 = vandq_s8(v160, v444);
    v449 = v446 + v441.i64[1];
    v450 = vandq_s8(v418, v445);
    v451 = vpaddq_s16(vshlq_u16(vmovl_u8(*v450.i8), v424), vshlq_u16(vmovl_high_u8(v450), v425));
    v452 = vpaddq_s32(vshlq_u32(vmovl_u16(*v451.i8), v430), vshlq_u32(vmovl_high_u16(v451), v431));
    v453.i64[0] = v452.u32[0];
    v453.i64[1] = v452.u32[1];
    v454 = v453;
    v453.i64[0] = v452.u32[2];
    v453.i64[1] = v452.u32[3];
    v455 = vpaddq_s64(vshlq_u64(v454, v438), vshlq_u64(v453, v439));
    v456 = (v455.i64[0] << v449) | v447;
    if (v441.i64[0] + (v449 & 0x3F) >= 0x40)
    {
      *(v249 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
      v456 = v455.i64[0] >> -(v449 & 0x3F);
      if ((v449 & 0x3F) == 0)
      {
        v456 = 0;
      }
    }

    v457 = vaddq_s8(v159, v448);
    v458 = v441.i64[0] + v449;
    v459 = (v441.i64[0] + v449) & 0x3F;
    v460 = v456 | (v455.i64[1] << v458);
    if ((v458 & 0x3F) + v441.i64[1] >= 0x40)
    {
      *(v249 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      v460 = v455.i64[1] >> -v459;
      if (!v459)
      {
        v460 = 0;
      }
    }

    v461 = v458 + v441.i64[1];
    v462.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v462.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v463.i64[0] = -1;
    v463.i64[1] = -1;
    v464 = vshlq_u8(v463, vaddq_s8(v164, v462));
    v465 = vandq_s8(v464, v457);
    v466 = vmovl_u8(*v465.i8);
    v467 = vmovl_high_u8(v465);
    v468 = vmovl_u8(*v164.i8);
    v469 = vmovl_high_u8(v164);
    v470 = vtrn1q_s16(0, v468);
    v471 = vtrn1q_s16(0, v469);
    v472 = vpaddq_s16(vshlq_u16(v466, v470), vshlq_u16(v467, v471));
    v473 = vpaddq_s16(v468, v469);
    v474 = vmovl_u16(*v472.i8);
    v475 = vmovl_high_u16(v472);
    v476 = vmovl_u16(*v473.i8);
    v477 = vmovl_high_u16(v473);
    v478 = vtrn1q_s32(0, v476);
    v479 = vtrn1q_s32(0, v477);
    v480 = vpaddq_s32(vshlq_u32(v474, v478), vshlq_u32(v475, v479));
    v481 = vpaddq_s32(v476, v477);
    v482.i64[0] = v480.u32[0];
    v482.i64[1] = v480.u32[1];
    v483 = v482;
    v482.i64[0] = v480.u32[2];
    v482.i64[1] = v480.u32[3];
    v484 = v482;
    v482.i64[0] = v481.u32[0];
    v482.i64[1] = v481.u32[1];
    v485 = v482;
    v482.i64[0] = v481.u32[2];
    v482.i64[1] = v481.u32[3];
    v486 = vzip1q_s64(0, v485);
    v487 = vzip1q_s64(0, v482);
    v488 = vpaddq_s64(vshlq_u64(v483, v486), vshlq_u64(v484, v487));
    v489 = vpaddq_s64(v485, v482);
    v490 = (v488.i64[0] << v461) | v460;
    if (v489.i64[0] + (v461 & 0x3F) > 0x3F)
    {
      *(v249 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v490;
      if ((v461 & 0x3F) != 0)
      {
        v490 = v488.i64[0] >> -(v461 & 0x3F);
      }

      else
      {
        v490 = 0;
      }
    }

    v491 = vaddq_s8(v530, v448);
    v492 = v489.i64[0] + v461;
    v493 = v490 | (v488.i64[1] << v492);
    if ((v492 & 0x3F) + v489.i64[1] >= 0x40)
    {
      *(v249 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v493;
      v493 = v488.i64[1] >> -(v492 & 0x3F);
      if ((v492 & 0x3F) == 0)
      {
        v493 = 0;
      }
    }

    v494 = v492 + v489.i64[1];
    v495 = vandq_s8(v464, v491);
    v496 = vpaddq_s16(vshlq_u16(vmovl_u8(*v495.i8), v470), vshlq_u16(vmovl_high_u8(v495), v471));
    v497 = vpaddq_s32(vshlq_u32(vmovl_u16(*v496.i8), v478), vshlq_u32(vmovl_high_u16(v496), v479));
    v498.i64[0] = v497.u32[0];
    v498.i64[1] = v497.u32[1];
    v499 = v498;
    v498.i64[0] = v497.u32[2];
    v498.i64[1] = v497.u32[3];
    v500 = vpaddq_s64(vshlq_u64(v499, v486), vshlq_u64(v498, v487));
    v501 = (v500.i64[0] << v494) | v493;
    if (v489.i64[0] + (v494 & 0x3F) >= 0x40)
    {
      *(v249 + ((v494 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v501;
      v501 = v500.i64[0] >> -(v494 & 0x3F);
      if ((v494 & 0x3F) == 0)
      {
        v501 = 0;
      }
    }

    v502 = v489.i64[0] + v494;
    v503 = (v489.i64[0] + v494) & 0x3F;
    v504 = v501 | (v500.i64[1] << (v489.i8[0] + v494));
    if ((v503 + v489.i64[1]) >= 0x40)
    {
      *(v249 + ((v502 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v504;
      v504 = v500.i64[1] >> -v503;
      if (!v503)
      {
        v504 = 0;
      }
    }

    v505 = v502 + v489.i64[1];
    if ((v505 & 0x3F) != 0)
    {
      *(v249 + ((v505 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v504;
    }

    result = (v505 - v250 + 7) >> 3;
    v165 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v165;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 96), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v15 + 4) & 7);
  v15 |= 255 << v2;
  v3 = (v2 + 8) & 0x38;
  if (v3 - v2 + ((v2 + 8) & 0x40) + 8 <= 0x20)
  {
    v4 = v3 + 8;
    v5 = (v3 + 8) & 0x38;
    v6 = (v4 >> 6) + ((v2 + 8) >> 6);
    if (v5 - v2 + (v6 << 6) + 8 <= 0x20)
    {
      *(&v15 + v6) |= 255 << v5;
      v7 = v5 + 8;
      v8 = (v5 + 8) & 0x38;
      v9 = v6 + (v7 >> 6);
      if (v8 - v2 + (v9 << 6) + 8 <= 0x20)
      {
        v10 = 0;
        v11 = 8;
        do
        {
          v12 = 64 - v8;
          if (64 - v8 >= v11)
          {
            v12 = v11;
          }

          *(&v15 + v9) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v8;
          v10 += v12;
          v13 = v12 + v8;
          v9 += v13 >> 6;
          v8 = v13 & 0x3F;
          v11 -= v12;
        }

        while (v11);
      }
    }
  }

  v14 = (result + a2);
  *result = 0;
  result[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = vdupq_n_s64(v7);
  v9 = vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F40));
  v10.i16[0] = v7;
  v10.i16[1] = v7 >> 5;
  v10.i16[2] = v9.i16[0];
  v10.i16[3] = v9.i16[2];
  *v8.i8 = vand_s8(vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F50)), 0x700000007);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = (v7 >> 26) & 7;
  v8.i16[3] = v7 >> 29;
  v11 = vuzp1_s8(vand_s8(v10, 0x1F001F001F001FLL), *v8.i8);
  *v8.i8 = vadd_s16(*v8.i8, 0x1000100010001);
  v12 = vuzp1_s8(*v8.i8, *v8.i8);
  v13 = v4 | 0x40;
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x400;
  v18 = vdupq_lane_s32(v11, 0);
  v19.i64[0] = 0x303030303030303;
  v19.i64[1] = 0x303030303030303;
  v295 = vandq_s8(v18, v19);
  v20 = vbicq_s8(vdupq_lane_s32(v12, 0), vceqq_s8(v295, v19));
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v11), 0x4000400040004)), v21);
  if (vmaxvq_s8(v22) < 1)
  {
    v30 = 0;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v293 = v51;
    v294 = v51;
    v48 = v20;
    v49 = v20;
    v50 = v20;
    v290 = v51;
    v291 = v51;
    v47 = v20;
  }

  else
  {
    v23 = vmovl_u8(*&vpaddq_s8(v22, v22));
    v24 = vmovl_u16(*&vpaddq_s16(v23, v23));
    v25 = vpaddq_s32(v24, v24).u64[0];
    v26.i64[0] = v25;
    v26.i64[1] = HIDWORD(v25);
    v27 = v26;
    v28 = vaddvq_s64(v26);
    v29 = v28 <= 0x80 && v17 >= v28 + v13;
    v30 = !v29;
    v31 = 0uLL;
    if (v29)
    {
      v32 = vaddq_s64(vzip1q_s64(0, v27), vdupq_n_s64(v4));
      v31 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v32)));
      if (v28 + v4 >= 0x81)
      {
        v31 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v31);
      }

      v13 += v28;
    }

    v33 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v31, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v31, v35), vzip2q_s64(v31, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v23 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vshlq_u16(v38, vnegq_s16((*&v22 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v40 = vuzp1q_s8(vzip1q_s16(v38, v39), vzip2q_s16(v38, v39));
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v39, v22);
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v42 = vqtbl1q_s8(vandq_s8(vaddq_s8(v41, v39), v40), xmmword_29D2F0F70);
    v43 = vdupq_lane_s32(*v42.i8, 0);
    v44 = vdupq_lane_s32(*v42.i8, 1);
    v45 = vdupq_laneq_s32(v42, 2);
    v46 = vdupq_laneq_s32(v42, 3);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vsubq_s8(v20, v45);
    v50 = vsubq_s8(v20, v46);
    v294 = vceqzq_s8(v43);
    v290 = vceqzq_s8(v44);
    v291 = vceqzq_s8(v45);
    v293 = vceqzq_s8(v46);
  }

  v52.i64[0] = 0x808080808080808;
  v52.i64[1] = 0x808080808080808;
  v53 = 0uLL;
  v54 = vandq_s8(vextq_s8(vtstq_s8(v18, v52), 0, 0xCuLL), v20);
  v55 = vmovl_u8(*&vpaddq_s8(v54, v54));
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  v61 = v60 + v13;
  if (v60 <= 0x80 && v17 >= v61)
  {
    v63 = v13 & 0x3F;
    v64 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v63));
    v65 = (v5 + 8 * (v13 >> 6));
    v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
    if (v60 + v63 >= 0x81)
    {
      v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v53);
    }

    v13 = v61;
  }

  else
  {
    v30 = 1;
  }

  v66 = v18.i8[0] & 3;
  if (v66 == 2)
  {
    if (v17 < v13 + 4)
    {
      v30 = 1;
    }

    else
    {
      v13 += 4;
    }

    v67 = v17 < v13 + 4;
    if (v17 >= v13 + 4)
    {
      v13 += 4;
    }

    v30 |= v67;
  }

  v68 = 0uLL;
  v69 = vextq_s8(0, v47, 0xCuLL);
  v70 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
  v72 = vpaddq_s32(v71, v71).u64[0];
  v73.i64[0] = v72;
  v73.i64[1] = HIDWORD(v72);
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v75 + v13;
  if (v75 <= 0x80 && v17 >= v76)
  {
    v79 = v13 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v74), vdupq_n_s64(v79));
    v81 = (v5 + 8 * (v13 >> 6));
    v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v75 + v79 >= 0x81)
    {
      v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v78);
    }

    v13 = v76;
  }

  else
  {
    v30 = 1;
    v78 = 0uLL;
  }

  v82 = vmovl_u8(*&vpaddq_s8(v47, v47));
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v13;
  if (v87 <= 0x80 && v17 >= v88)
  {
    v90 = v13 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v90));
    v92 = (v5 + 8 * (v13 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v87 + v90 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v68);
    }

    v13 = v88;
  }

  else
  {
    v30 = 1;
  }

  v93 = vmovl_u8(*&vpaddq_s8(v48, v48));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v98 + v13;
  v100 = 0uLL;
  if (v98 <= 0x80 && v17 >= v99)
  {
    v103 = v13 & 0x3F;
    v104 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v103));
    v105 = (v5 + 8 * (v13 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v98 + v103 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v102);
    }

    v13 = v99;
  }

  else
  {
    v30 = 1;
    v102 = 0uLL;
  }

  v106 = v98 + v13;
  if (v98 <= 0x80 && v17 >= v106)
  {
    v108 = v13 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v108));
    v110 = (v5 + 8 * (v13 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v98 + v108 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v100);
    }

    v13 = v106;
  }

  else
  {
    v30 = 1;
  }

  v111 = vmovl_u8(*&vpaddq_s8(v49, v49));
  v112 = vmovl_u16(*&vpaddq_s16(v111, v111));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v13;
  v118 = 0uLL;
  if (v116 <= 0x80 && v17 >= v117)
  {
    v121 = v13 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v121));
    v123 = (v5 + 8 * (v13 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v116 + v121 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v13 = v117;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v30 = 1;
    v120 = 0uLL;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  v124 = v116 + v13;
  if (v17 < v116 + v13)
  {
LABEL_78:
    v124 = v13;
    v30 = 1;
    goto LABEL_79;
  }

  v125 = v13 & 0x3F;
  v126 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v125));
  v127 = (v5 + 8 * (v13 >> 6));
  v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
  if (v116 + v125 >= 0x81)
  {
    v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v118);
  }

LABEL_79:
  v292 = v50;
  v128 = vmovl_u8(*&vpaddq_s8(v50, v50));
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v133;
  if (v133 > 0x80 || (v135 = v133 + v124, v17 < v133 + v124))
  {
    v135 = v124;
    v30 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v124 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v136));
    v138 = (v5 + 8 * (v124 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v134 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || v17 < v134 + v135)
  {
    goto LABEL_93;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135 & 0x3F));
  v141 = (v5 + 8 * (v135 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v134 + (v135 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 1024 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v144 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v145 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v146 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v147 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v148 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v149 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v150.i64[0] = v144.u32[0];
    v150.i64[1] = v144.u32[1];
    v151 = vshlq_u64(v53, vnegq_s64(v150));
    v152 = vzip2q_s64(v53, v151);
    v153 = vzip1q_s64(v53, v151);
    v150.i64[0] = v145.u32[0];
    v150.i64[1] = v145.u32[1];
    v154 = vshlq_u64(v78, vnegq_s64(v150));
    v155 = vzip2q_s64(v78, v154);
    v156 = vzip1q_s64(v78, v154);
    v150.i64[0] = v146.u32[0];
    v150.i64[1] = v146.u32[1];
    v157 = vshlq_u64(v68, vnegq_s64(v150));
    v158 = vzip2q_s64(v68, v157);
    v159 = vzip1q_s64(v68, v157);
    v150.i64[0] = v147.u32[0];
    v150.i64[1] = v147.u32[1];
    v160 = vnegq_s64(v150);
    v161 = vshlq_u64(v102, v160);
    v162 = vzip2q_s64(v102, v161);
    v163 = vzip1q_s64(v102, v161);
    v164 = vshlq_u64(v100, v160);
    v165 = vzip2q_s64(v100, v164);
    v166 = vzip1q_s64(v100, v164);
    v150.i64[0] = v148.u32[0];
    v150.i64[1] = v148.u32[1];
    v167 = vnegq_s64(v150);
    v168 = vshlq_u64(v120, v167);
    v169 = vzip2q_s64(v120, v168);
    v170 = vzip1q_s64(v120, v168);
    v171 = vshlq_u64(v118, v167);
    v172 = vzip2q_s64(v118, v171);
    v173 = vzip1q_s64(v118, v171);
    v150.i64[0] = v149.u32[0];
    v150.i64[1] = v149.u32[1];
    v174 = vnegq_s64(v150);
    v175 = vshlq_u64(v139, v174);
    v176 = vzip2q_s64(v139, v175);
    v177 = vzip1q_s64(v139, v175);
    v178 = vuzp1q_s32(v153, v152);
    v179 = vuzp1q_s32(v156, v155);
    v180 = vuzp1q_s32(v159, v158);
    v181 = vuzp1q_s32(v163, v162);
    v182 = vnegq_s32((*&v55 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v184 = vuzp1q_s32(v166, v165);
    v185 = vuzp1q_s32(v170, v169);
    v186 = vnegq_s32((*&v111 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v187 = vuzp1q_s32(v173, v172);
    v188 = vuzp1q_s32(v177, v176);
    v189 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v190 = vshlq_u32(v178, v182);
    v191 = vshlq_u32(v181, v183);
    v192 = vshlq_u32(v184, v183);
    v193 = vshlq_u32(v185, v186);
    v194 = vshlq_u32(v187, v186);
    v195 = vshlq_u32(v188, v189);
    v196 = vuzp1q_s16(vzip1q_s32(v178, v190), vzip2q_s32(v178, v190));
    v197 = vuzp1q_s16(vzip1q_s32(v181, v191), vzip2q_s32(v181, v191));
    v198 = vuzp1q_s16(vzip1q_s32(v184, v192), vzip2q_s32(v184, v192));
    v199 = vuzp1q_s16(vzip1q_s32(v185, v193), vzip2q_s32(v185, v193));
    v200 = vnegq_s16((*&v48 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v201 = vuzp1q_s16(vzip1q_s32(v187, v194), vzip2q_s32(v187, v194));
    v202 = vuzp1q_s16(vzip1q_s32(v188, v195), vzip2q_s32(v188, v195));
    v203 = vshlq_u16(v196, vnegq_s16((*&v54 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v204 = vshlq_u16(v197, v200);
    v205 = vshlq_u16(v198, v200);
    v206 = vzip2q_s16(v196, v203);
    v207 = vzip1q_s16(v196, v203);
    v208 = vuzp1q_s8(vzip1q_s16(v198, v205), vzip2q_s16(v198, v205));
    v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v203.i64[0] = 0x808080808080808;
    v203.i64[1] = 0x808080808080808;
    v209 = vsubq_s8(v203, v54);
    v210 = vaddq_s8(v54, v205);
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v212 = vshlq_s8(vuzp1q_s8(v207, v206), v209);
    v209.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v209.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v213 = vsubq_s8(v211, v48);
    v214 = vaddq_s8(v48, v209);
    v215 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v197, v204), vzip2q_s16(v197, v204)), v213);
    v216 = vshlq_s8(v208, v213);
    v217 = vnegq_s16((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v218 = vshlq_s8(v212, v210);
    v219 = vshlq_s8(v215, v214);
    v220 = vshlq_s8(v216, v214);
    v221 = vdupq_lane_s32(*v218.i8, 0);
    v222 = vandq_s8(v290, v221);
    v223 = vsubq_s8(v219, v222);
    v224 = vsubq_s8(v220, v222);
    v225 = vshlq_u16(v199, v217);
    v226 = vshlq_u16(v201, v217);
    v227 = vuzp1q_s8(vzip1q_s16(v199, v225), vzip2q_s16(v199, v225));
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v228 = vsubq_s8(v222, v49);
    v229 = vaddq_s8(v49, v199);
    v230 = vshlq_s8(v227, v228);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v226), vzip2q_s16(v201, v226)), v228);
    v232 = vnegq_s16((*&v292 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vshlq_s8(v231, v229);
    v234 = vandq_s8(v291, v221);
    v235 = vsubq_s8(vshlq_s8(v230, v229), v234);
    v236 = vsubq_s8(v233, v234);
    v237 = vshlq_u16(v202, v232);
    v238 = vzip2q_s16(v202, v237);
    v239 = vzip1q_s16(v202, v237);
    v202.i64[0] = 0x808080808080808;
    v202.i64[1] = 0x808080808080808;
    v240 = vuzp1q_s8(v239, v238);
    v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v241 = vsubq_s8(v202, v292);
    v242 = vaddq_s8(v292, v238);
    v243 = vshlq_u64(v142, v174);
    v244 = vuzp1q_s32(vzip1q_s64(v142, v243), vzip2q_s64(v142, v243));
    v245 = vshlq_u32(v244, v189);
    v246 = vuzp1q_s16(vzip1q_s32(v244, v245), vzip2q_s32(v244, v245));
    v247 = vshlq_u16(v246, v232);
    v248 = vshlq_s8(vshlq_s8(v240, v241), v242);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v247), vzip2q_s16(v246, v247)), v241), v242);
    v250 = vandq_s8(v293, v221);
    v251 = vsubq_s8(v248, v250);
    v252 = vsubq_s8(v249, v250);
    v253 = vshlq_u32(v179, vnegq_s32((*&v70 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v254 = vshlq_u32(v180, vnegq_s32((*&v82 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vuzp1q_s16(vzip1q_s32(v179, v253), vzip2q_s32(v179, v253));
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v16), xmmword_29D2F0F60));
    v256 = vuzp1q_s16(vzip1q_s32(v180, v254), vzip2q_s32(v180, v254));
    v257 = vshlq_u16(v255, vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v258 = vshlq_u16(v256, vnegq_s16((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vzip2q_s16(v255, v257);
    v260 = vzip1q_s16(v255, v257);
    v261 = vzip2q_s16(v256, v258);
    v262 = vzip1q_s16(v256, v258);
    v258.i16[0] = v16;
    v263 = v248.i8[4];
    v258.i8[2] = v248.i8[0];
    v264 = vuzp1q_s8(v260, v259);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v265 = vuzp1q_s8(v262, v261);
    v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266 = vshlq_s8(vshlq_s8(v265, vsubq_s8(v260, v47)), vaddq_s8(v47, v261));
    v267 = vaddq_s8(vandq_s8(v218, v294), vshlq_s8(vshlq_s8(v264, vsubq_s8(v260, v69)), vaddq_s8(v69, v261)));
    v268 = vandq_s8(v294, v221);
    v269.i64[0] = 0x101010101010101;
    v269.i64[1] = 0x101010101010101;
    v270 = vsubq_s8(v267, v268);
    v271 = vsubq_s8(v266, v268);
    v258.i8[3] = v263;
    v272 = vdupq_lane_s32(*v258.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v295, v269)))
    {
      v273 = vnegq_s8(vandq_s8(v18, v269));
      v274 = v271;
      v274.i32[3] = v270.i32[0];
      v275 = v270;
      v275.i32[0] = v271.i32[3];
      v296.val[0] = vbslq_s8(v273, v275, v270);
      v296.val[1] = vbslq_s8(v273, v274, v271);
      v274.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v274.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0F80), v273), v296.val[0]);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, v274), v273), v296.val[1]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0F90), v273), v297.val[0]);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[1]);
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v273), v223);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v273), v224);
      v223 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0FC0), v273), v297.val[0]);
      v224 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[1]);
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FD0), v273), v235);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0F80), v273), v236);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[0]);
      v236 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0FE0), v273), v297.val[1]);
      v296.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0FF0), v273), v251);
      v296.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0F80), v273), v252);
      v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, v274), v273), v296.val[0]);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F1000), v273), v296.val[1]);
    }

    v276 = vaddq_s8(v270, v272);
    v277 = vaddq_s8(v271, v272);
    v278 = vaddq_s8(v223, v272);
    v279 = vaddq_s8(v224, v272);
    v280 = vaddq_s8(v235, v272);
    v281 = vaddq_s8(v236, v272);
    v282 = vaddq_s8(v251, v272);
    v283 = vaddq_s8(v252, v272);
    v284.i64[0] = 0x1010101010101010;
    v284.i64[1] = 0x1010101010101010;
    v285 = v18.i8[1];
    v286 = vtstq_s8(v18, v284);
    if ((v285 & 0x10) != 0)
    {
      v286.i8[1] = v286.i8[2];
      v286.i8[2] = 0;
      v286 = vdupq_lane_s32(*v286.i8, 0);
      v287 = xmmword_29D2F1020;
    }

    else
    {
      v287 = xmmword_29D2F1010;
    }

    v288 = a1 + 2;
    *a1 = vaddq_s8(vandq_s8(vqtbl1q_s8(v276, v287), v286), v276);
    a1[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v277, v287), v286), v277);
    v289 = (a1 + a2);
    *v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v288[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    v289 += 2;
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    return a4 + 1;
  }
}