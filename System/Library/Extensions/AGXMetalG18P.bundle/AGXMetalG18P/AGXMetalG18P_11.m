uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v75 = *MEMORY[0x29EDCA608];
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
      v15 = a5 & 0x7E;
      if (a5 == v15)
      {
        for (i = 0; i != a6; ++i)
        {
          v17 = (&v61 + 4 * (i & 0x7F));
          v18 = a3;
          v19 = a5;
          do
          {
            v76 = vld2q_f64(v18);
            v18 += 4;
            v17[-2] = v76.val[0];
            *v17++ = v76.val[1];
            v19 -= 2;
          }

          while (v19);
          a3 += a4;
        }
      }

      else
      {
        v20 = 0;
        v21 = &v61 + ((a5 >> 1) & 0x3F);
        v22 = a3;
        do
        {
          v23 = (v20 & 0x7F) << 6;
          v24 = (v21 + v23);
          v25 = (&v61 + v23);
          v26 = v22;
          v27 = a5 & 0x7E;
          do
          {
            v77 = vld2q_f64(v26);
            v26 += 4;
            v25[-2] = v77.val[0];
            *v25++ = v77.val[1];
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
        v13 = &v59 + 2 * (v11 & 0xFE);
        v14 = *v12;
        *v13 = *(v12 - 1);
        *(v13 + 4) = v14;
        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v51 = vmovl_u16(*&v59);
  v52 = vmovl_u16(*&v61);
  v53 = vmovl_u16(*(&v59 + 8));
  v54 = vmovl_u16(*(&v61 + 8));
  v55 = vmovl_u16(*&v63);
  v56 = vmovl_u16(*&v65);
  v32 = 2 * (a5 & 0x7F);
  v33 = vmovl_u16(*(&v63 + 8));
  v34 = vmovl_u16(*(&v65 + 8));
  if (v32 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = 2 * (a5 & 0x7F);
  }

  if (v32 >= 4)
  {
    v36 = v32 - 4;
  }

  else
  {
    v36 = 0;
  }

  if (a6 >= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = a6;
  }

  v57 = v33;
  v58 = v34;
  if (a6 >= 2)
  {
    v38 = a6 - 2;
  }

  else
  {
    v38 = 0;
  }

  v39 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v51, a7, v35, v37);
  v51 = vmovl_u16(*&v60);
  v52 = vmovl_u16(*&v62);
  v53 = vmovl_u16(*(&v60 + 8));
  v54 = vmovl_u16(*(&v62 + 8));
  v55 = vmovl_u16(*&v64);
  v56 = vmovl_u16(*&v66);
  v57 = vmovl_u16(*(&v64 + 8));
  v58 = vmovl_u16(*(&v66 + 8));
  if (a6 >= 4)
  {
    v40 = 2;
  }

  else
  {
    v40 = v38;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v51, a7, v35, v40);
  v51 = vmovl_u16(*&v67);
  v52 = vmovl_u16(*&v69);
  v53 = vmovl_u16(*(&v67 + 8));
  v54 = vmovl_u16(*(&v69 + 8));
  v55 = vmovl_u16(*&v71);
  v56 = vmovl_u16(*&v73);
  v42 = vmovl_u16(*(&v71 + 8));
  v43 = vmovl_u16(*(&v73 + 8));
  if (a5 >= 4)
  {
    v44 = 4;
  }

  else
  {
    v44 = v36;
  }

  v57 = v42;
  v58 = v43;
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v51, a7, v44, v37);
  v51 = vmovl_u16(*&v68);
  v52 = vmovl_u16(*&v70);
  v53 = vmovl_u16(*(&v68 + 8));
  v54 = vmovl_u16(*(&v70 + 8));
  v55 = vmovl_u16(*&v72);
  v56 = vmovl_u16(*&v74);
  v57 = vmovl_u16(*(&v72 + 8));
  v58 = vmovl_u16(*(&v74 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v51, a7, v44, v40);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v41)
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

  *a2 = v49 | v47 | v39 | v48;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v408 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v406 = v47;
    v407 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v404 = v47;
    v405 = v47;
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
    v406 = vmovl_s8(vceqz_s8(*v39.i8));
    v404 = vmovl_s8(vceqz_s8(*v38.i8));
    v405 = vmovl_s8(vceqz_s8(v42));
    v407 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v410 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v410, v410));
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
  v399 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v399, v399));
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

  v400 = v43;
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
  v409 = v12;
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

  v401 = v44;
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

  v402 = v45;
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
  v403 = v46;
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
    *(a1 + 16) = v178;
    v179 = (a1 + a2);
    *v179 = v178;
    v179[1] = v178;
    v180 = (a1 + 2 * a2);
    *v180 = v178;
    v180[1] = v178;
    v181 = (a1 + a2 + 2 * a2);
    *v181 = v178;
    v181[1] = v178;
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
    v394 = vzip1q_s64(v49, v191);
    v396 = vzip2q_s64(v49, v191);
    v190.i64[0] = v184.u32[0];
    v190.i64[1] = v184.u32[1];
    v192 = vshlq_u64(v70, vnegq_s64(v190));
    v390 = vzip1q_s64(v70, v192);
    v392 = vzip2q_s64(v70, v192);
    v190.i64[0] = v185.u32[0];
    v190.i64[1] = v185.u32[1];
    v193 = vnegq_s64(v190);
    v194 = vshlq_u64(v62, v193);
    v386 = vzip1q_s64(v62, v194);
    v388 = vzip2q_s64(v62, v194);
    v195 = vshlq_u64(v87, v193);
    v384 = vzip2q_s64(v87, v195);
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
    v398 = vnegq_s64(v190);
    v226 = vshlq_u64(v163, v398);
    v227 = vzip2q_s64(v163, v226);
    v228 = vzip1q_s64(v163, v226);
    v229 = vshlq_u64(v159, v398);
    v230 = vzip2q_s64(v159, v229);
    v231 = vzip1q_s64(v159, v229);
    v232 = vshlq_u64(v171, v398);
    v233 = vzip2q_s64(v171, v232);
    v234 = vzip1q_s64(v171, v232);
    v235 = vuzp1q_s32(v394, v396);
    v236 = vuzp1q_s32(v390, v392);
    v237 = vuzp1q_s32(v386, v388);
    v238 = vuzp1q_s32(v196, v384);
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
    v251 = vshlq_u32(v235, vnegq_s32(vandq_s8(v410, v228)));
    v395 = vzip1q_s32(v235, v251);
    v397 = vzip2q_s32(v235, v251);
    v233.i64[0] = 0xFFFF0000FFFFLL;
    v233.i64[1] = 0xFFFF0000FFFFLL;
    v252 = vshlq_u32(v236, vnegq_s32(vandq_s8(v399, v233)));
    v391 = vzip1q_s32(v236, v252);
    v393 = vzip2q_s32(v236, v252);
    v253 = vnegq_s32(vandq_s8(v400, v233));
    v254 = vshlq_u32(v237, v253);
    v387 = vzip1q_s32(v237, v254);
    v389 = vzip2q_s32(v237, v254);
    v255 = vshlq_u32(v238, v253);
    v383 = vzip1q_s32(v238, v255);
    v385 = vzip2q_s32(v238, v255);
    v256 = vshlq_u32(v239, v253);
    v381 = vzip1q_s32(v239, v256);
    v382 = vzip2q_s32(v239, v256);
    v215.i64[0] = 0xFFFF0000FFFFLL;
    v215.i64[1] = 0xFFFF0000FFFFLL;
    v257 = vnegq_s32(vandq_s8(v401, v215));
    v258 = vshlq_u32(v240, v257);
    v379 = vzip1q_s32(v240, v258);
    v380 = vzip2q_s32(v240, v258);
    v259 = vshlq_u32(v241, v257);
    v377 = vzip1q_s32(v241, v259);
    v378 = vzip2q_s32(v241, v259);
    v260 = vshlq_u32(v242, v257);
    v375 = vzip1q_s32(v242, v260);
    v376 = vzip2q_s32(v242, v260);
    v261 = vshlq_u32(v243, v257);
    v374 = vzip2q_s32(v243, v261);
    v262 = vzip1q_s32(v243, v261);
    v243.i64[0] = 0xFFFF0000FFFFLL;
    v243.i64[1] = 0xFFFF0000FFFFLL;
    v263 = vnegq_s32(vandq_s8(v402, v243));
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
    v276 = vnegq_s32(vandq_s8(v403, v247));
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
    v289 = vshlq_s16(vuzp1q_s16(v391, v393), vsubq_s16(v281, v399));
    v290 = vsubq_s16(v281, v400);
    v250.i64[0] = 0xF000F000F000FLL;
    v250.i64[1] = 0xF000F000F000FLL;
    v291 = vaddq_s16(v399, v250);
    v292 = vaddq_s16(v400, v250);
    v212.i64[0] = 0x10001000100010;
    v212.i64[1] = 0x10001000100010;
    v293 = vsubq_s16(v212, v401);
    v278.i64[0] = 0xF000F000F000FLL;
    v278.i64[1] = 0xF000F000F000FLL;
    v294 = vaddq_s16(v401, v278);
    v295 = vshlq_s16(vuzp1q_s16(v379, v380), v293);
    v296 = vshlq_s16(vuzp1q_s16(v377, v378), v293);
    v297 = vshlq_s16(vuzp1q_s16(v375, v376), v293);
    v298 = vshlq_s16(vuzp1q_s16(v262, v374), v293);
    v293.i64[0] = 0x10001000100010;
    v293.i64[1] = 0x10001000100010;
    v299 = vsubq_s16(v293, v402);
    v242.i64[0] = 0xF000F000F000FLL;
    v242.i64[1] = 0xF000F000F000FLL;
    v300 = vaddq_s16(v402, v242);
    v301 = vshlq_s16(v284, v299);
    v302 = vshlq_s16(v285, v299);
    v303 = vshlq_s16(vuzp1q_s16(v272, v271), v299);
    v304 = vshlq_s16(vuzp1q_s16(v275, v274), v299);
    v271.i64[0] = 0x10001000100010;
    v271.i64[1] = 0x10001000100010;
    v305 = vsubq_s16(v271, v403);
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v306 = vaddq_s16(v403, v237);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v395, v397), vsubq_s16(v283, v410)), vaddq_s16(v410, v254));
    v308 = vshlq_s16(v289, v291);
    v309 = vshlq_s16(vshlq_s16(vuzp1q_s16(v387, v389), v290), v292);
    v310 = vshlq_s16(vshlq_s16(vuzp1q_s16(v383, v385), v290), v292);
    v311 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v382), v290), v292);
    v312 = vshlq_s16(v302, v300);
    v313 = vshlq_s16(v304, v300);
    v314 = vshlq_u64(v176, v398);
    v315 = vuzp1q_s32(vzip1q_s64(v176, v314), vzip2q_s64(v176, v314));
    v316 = vshlq_u32(v315, v276);
    v317 = vshlq_s16(vshlq_s16(v288, v305), v306);
    v318 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v315, v316), vzip2q_s32(v315, v316)), v305), v306);
    v319 = vandq_s8(v307, v406);
    v320 = vdupq_lane_s64(v307.i64[0], 0);
    v321 = vaddq_s16(v319, v308);
    v322 = vandq_s8(v404, v320);
    v323 = vsubq_s16(vshlq_s16(v295, v294), v322);
    v324 = vsubq_s16(vshlq_s16(v296, v294), v322);
    v325 = vsubq_s16(vshlq_s16(v297, v294), v322);
    v326 = vsubq_s16(vshlq_s16(v298, v294), v322);
    v327 = vandq_s8(v405, v320);
    v328 = vsubq_s16(vshlq_s16(v301, v300), v327);
    v329 = vsubq_s16(v312, v327);
    v330 = vsubq_s16(vshlq_s16(v303, v300), v327);
    v331 = vandq_s8(v406, v320);
    v332 = vsubq_s16(v313, v327);
    v333 = vandq_s8(v407, v320);
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
    if (vaddvq_s16(vceqq_s16(v408, v340)))
    {
      v344 = vnegq_s16(vandq_s8(v409, v340));
      v345.i64[0] = v342.i64[0];
      v346.i64[1] = v341.i64[1];
      v345.i64[1] = v341.i64[0];
      v346.i64[0] = v342.i64[1];
      v347 = vbslq_s8(v344, v346, v341);
      v348 = vbslq_s8(v344, v345, v342);
      v346.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v346.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v349 = vandq_s8(vqtbl4q_s8(*(&v338 - 1), v346), v344);
      v411.val[0] = vaddq_s16(v347, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10B0), v344));
      v411.val[1] = vaddq_s16(v338, vandq_s8(vqtbl4q_s8(*(&v338 - 1), xmmword_29D2F10C0), v344));
      v411.val[2] = vaddq_s16(v339, v349);
      v411.val[3] = vaddq_s16(v348, v349);
      v350 = vandq_s8(vqtbl4q_s8(v411, v346), v344);
      v341 = vaddq_s16(v411.val[0], vandq_s8(vqtbl4q_s8(v411, xmmword_29D2F10D0), v344));
      v338 = vaddq_s16(v411.val[1], vandq_s8(vqtbl4q_s8(v411, xmmword_29D2F10E0), v344));
      v339 = vaddq_s16(v411.val[2], v350);
      v342 = vaddq_s16(v411.val[3], v350);
      v412.val[0] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10B0), v344));
      v412.val[1] = vaddq_s16(v324, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F10F0), v344));
      v412.val[2] = vaddq_s16(v325, vandq_s8(vqtbl4q_s8(*v323.i8, v346), v344));
      v412.val[3] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v323.i8, xmmword_29D2F1100), v344));
      v351 = vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F10D0), v344);
      v411.val[0] = vandq_s8(vqtbl4q_s8(v412, v346), v344);
      v323 = vaddq_s16(v351, v412.val[0]);
      v324 = vaddq_s16(v412.val[1], v351);
      v325 = vaddq_s16(v412.val[2], v411.val[0]);
      v326 = vaddq_s16(v412.val[3], v411.val[0]);
      v412.val[0] = vaddq_s16(v328, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0EB0), v344));
      v412.val[1] = vaddq_s16(v329, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F0FB0), v344));
      v412.val[2] = vaddq_s16(v330, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10B0), v344));
      v412.val[3] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v328.i8, xmmword_29D2F10C0), v344));
      v411.val[1] = vandq_s8(vqtbl4q_s8(v412, v346), v344);
      v328 = vaddq_s16(v412.val[0], v411.val[1]);
      v329 = vaddq_s16(v412.val[1], v411.val[1]);
      v330 = vaddq_s16(v412.val[2], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F0FE0), v344));
      v332 = vaddq_s16(v412.val[3], vandq_s8(vqtbl4q_s8(v412, xmmword_29D2F1110), v344));
      v411.val[2] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F0EB0), v344));
      v411.val[3] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F1120), v344));
      v412.val[0] = vaddq_s16(v336, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10B0), v344));
      v412.val[1] = vaddq_s16(v337, vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10C0), v344));
      v352 = vandq_s8(vqtbl4q_s8(*(&v411 + 32), v346), v344);
      v334 = vaddq_s16(v411.val[2], v352);
      v335 = vaddq_s16(v411.val[3], v352);
      v336 = vaddq_s16(v412.val[0], vandq_s8(vqtbl4q_s8(*(&v411 + 32), xmmword_29D2F0FE0), v344));
      v337 = vaddq_s16(v412.val[1], vandq_s8(vqtbl4q_s8(*(&v411 + 32), xmmword_29D2F1130), v344));
    }

    v353 = vaddq_s16(v341, v343);
    v354 = vaddq_s16(v338, v343);
    v355 = vaddq_s16(v339, v343);
    v356 = vaddq_s16(v342, v343);
    v357 = vaddq_s16(v323, v343);
    v358 = vaddq_s16(v324, v343);
    v359 = vaddq_s16(v325, v343);
    v360 = vaddq_s16(v326, v343);
    v361 = vaddq_s16(v328, v343);
    v362 = vaddq_s16(v329, v343);
    v363 = vaddq_s16(v330, v343);
    v364 = vaddq_s16(v332, v343);
    v365 = vaddq_s16(v334, v343);
    v366 = vaddq_s16(v335, v343);
    v367 = vaddq_s16(v336, v343);
    v368 = vaddq_s16(v337, v343);
    v369.i64[0] = 0x10001000100010;
    v369.i64[1] = 0x10001000100010;
    v370 = vcgtq_u16(v369, v409);
    v371 = (a1 + a2);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1140), v370), v353);
    *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v370), v354);
    *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v370), v357);
    *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v370), v358);
    v372 = (a1 + 2 * a2);
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v370), v355);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v370), v356);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v370), v359);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v370), v360);
    *v372 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v370), v361);
    v372[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v370), v362);
    v372[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v370), v365);
    v372[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v370), v366);
    v373 = (v372 + a2);
    *v373 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v370), v363);
    v373[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v370), v364);
    v373[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1140), v370), v367);
    v373[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v368, xmmword_29D2F1140), v370), v368);
  }

  return v177;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x4_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
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

  v41 = v50;
  v42 = v49;
  v45 = v51;
  v43 = v52;
  v47 = v54;
  v48 = v53;
  v46 = v55;
  v44 = v56;
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
  *a1 = vmovn_s32(v42);
  a1[1] = vmovn_s32(v41);
  a1[2] = vmovn_s32(v45);
  a1[3] = vmovn_s32(v43);
  a1[4] = vmovn_s32(v40);
  a1[5] = vmovn_s32(v39);
  a1[6] = vmovn_s32(v38);
  a1[7] = vmovn_s32(v37);
  v22 = (a1 + a2);
  *v22 = vmovn_s32(v48);
  v22[1] = vmovn_s32(v47);
  v22[2] = vmovn_s32(v46);
  v22[3] = vmovn_s32(v44);
  v22[4] = vmovn_s32(v36);
  v22[5] = vmovn_s32(v35);
  v22[6] = vmovn_s32(v34);
  v22[7] = vmovn_s32(v33);
  v23 = (a1 + a2 + a2);
  *v23 = vmovn_s32(v32);
  v23[1] = vmovn_s32(v31);
  v23[2] = vmovn_s32(v30);
  v23[3] = vmovn_s32(v29);
  v23[4] = vmovn_s32(v14);
  v23[5] = vmovn_s32(v15);
  v23[6] = vmovn_s32(v16);
  v23[7] = vmovn_s32(v17);
  v24 = (v23 + a2);
  *v24 = vmovn_s32(v28);
  v24[1] = vmovn_s32(v27);
  v24[2] = vmovn_s32(v26);
  v24[3] = vmovn_s32(v25);
  v24[4] = vmovn_s32(v18);
  v24[5] = vmovn_s32(v19);
  v24[6] = vmovn_s32(v20);
  v24[7] = vmovn_s32(v21);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 128, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 192, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 128, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 192, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, const double *a2, _BYTE *a3, int a4)
{
  v8 = 16;
  v9 = &byte_29D2F30D1;
  do
  {
    result = a1 + (*v9 << 10) + (*(v9 - 1) << 6);
    v12 = *a3;
    if (*a3)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 7)
        {
          v13 = vld1q_dup_f64(a2);
          *result = v13;
          *(result + 16) = v13;
          *(result + 32) = v13;
          *(result + 48) = v13;
          *(result + 256) = v13;
          *(result + 272) = v13;
          *(result + 288) = v13;
          *(result + 304) = v13;
          *(result + 512) = v13;
          *(result + 528) = v13;
          *(result + 544) = v13;
          *(result + 560) = v13;
          *(result + 768) = v13;
          *(result + 784) = v13;
          *(result + 800) = v13;
          *(result + 816) = v13;
          v10 = 8;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 256, a2, v12);
          v10 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 256, a2, v12, a4);
        v10 = 128;
      }
    }

    else
    {
      v10 = 0;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 512) = 0u;
      *(result + 528) = 0u;
      *(result + 544) = 0u;
      *(result + 560) = 0u;
      *(result + 768) = 0u;
      *(result + 784) = 0u;
      *(result + 800) = 0u;
      *(result + 816) = 0u;
    }

    a2 = (a2 + v10);
    ++a3;
    v9 += 2;
    v8 -= 2;
  }

  while (v8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s64(*a3, 0);
  v8 = vsubq_s16(*(a3 + 32), v7);
  v493.val[0] = *a3;
  v493.val[1] = *(a3 + 16);
  v493.val[2] = *(a3 + 32);
  v493.val[3] = *(a3 + 48);
  v9 = vsubq_s16(v493.val[3], v7);
  v10 = vsubq_s16(*(a3 + a4 + 16), v7);
  v471 = *(a3 + a4);
  v473 = *(a3 + a4 + 16);
  v474 = *(a3 + a4 + 32);
  v11 = vsubq_s16(v474, v7);
  v496 = vsubq_s16(*a3, v7);
  v498 = vsubq_s16(v493.val[1], v7);
  v12 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v498), v8), v9), xmmword_29D2F1150);
  v13 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v498), v8), v9), xmmword_29D2F1150);
  v14 = vpmaxq_s16(v12, v12);
  v15 = vpminq_s16(v13, v13);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v17 = vmaxq_s16(v14, v16);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v18 = vminq_s16(v15, v16);
  v19 = vzip1q_s16(v14, v15);
  v20.i64[0] = 0x10001000100010;
  v20.i64[1] = 0x10001000100010;
  v21 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v19)), vceqzq_s16(v19));
  v494 = vsubq_s16(v471, v7);
  v478 = *(a3 + a4 + 48);
  v22 = vsubq_s16(v478, v7);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v494, v10), v11), v22), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v494, v10), v11), v22), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vmaxq_s16(v17, v25);
  v28 = vminq_s16(v18, v26);
  v29 = vzip1q_s16(v25, v26);
  v30 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v29)), vceqzq_s16(v29));
  v31 = vsubq_s16(*(a3 + 64), v7);
  v32 = vsubq_s16(*(a3 + 80), v7);
  v467 = *(a3 + 64);
  v469 = *(a3 + 80);
  v470 = *(a3 + 96);
  v33 = vsubq_s16(v470, v7);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v480 = *(a3 + 112);
  v35 = vsubq_s16(v480, v7);
  v36 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v31, v32), v33), v35), xmmword_29D2F1150);
  v37 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v31, v32), v33), v35), xmmword_29D2F1150);
  v38 = vpmaxq_s16(v36, v36);
  v39 = vpminq_s16(v37, v37);
  v40 = vmaxq_s16(v27, v38);
  v41 = vminq_s16(v28, v39);
  v42 = vzip1q_s16(v38, v39);
  v43 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v42)), vceqzq_s16(v42));
  v44 = vsubq_s16(*(a3 + a4 + 64), v7);
  v45 = vsubq_s16(*(a3 + a4 + 80), v7);
  v463 = *(a3 + a4 + 64);
  v465 = *(a3 + a4 + 80);
  v466 = *(a3 + a4 + 96);
  v46 = vsubq_s16(v466, v7);
  v476 = *(a3 + a4 + 112);
  v47 = vsubq_s16(v476, v7);
  v48 = v10;
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v44, v45), v46), v47), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v44, v45), v46), v47), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vmaxq_s16(v40, v51);
  v54 = vminq_s16(v41, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v21, v21);
  v58 = vpmaxq_s16(v30, v30);
  v59 = vpmaxq_s16(v43, v43);
  v60 = vpmaxq_s16(v56, v56);
  v61 = vmaxq_s16(vmaxq_s16(v57, v58), vmaxq_s16(v59, v60));
  v62 = vclzq_s16(vsubq_s16(v53, v54));
  v63 = vsubq_s16(v34, v62);
  v64 = vcgtq_s16(v61, v63);
  v65 = vminq_s16(v63, v61);
  v63.i64[0] = 0x8000800080008;
  v63.i64[1] = 0x8000800080008;
  v66 = vandq_s8(v64, v63);
  v67.i64[0] = 0x3000300030003;
  v67.i64[1] = 0x3000300030003;
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v57), v67), 0);
  v69 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v58), v67), 0);
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v59), v67), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v60), v67), 0);
  v72 = v22;
  v22.i64[0] = 0x4000400040004;
  v22.i64[1] = 0x4000400040004;
  v73 = vbicq_s8(v22, vceqq_s16(vaddq_s16(v71, v70), vnegq_s16(vaddq_s16(v68, v69))));
  v74 = vorrq_s8(v73, vorrq_s8(vandq_s8(vceqzq_s16(v65), v67), v66));
  v520 = v7;
  v500 = v496;
  v502 = v498;
  v504 = v8;
  v506 = v9;
  v511 = v72;
  v512 = v31;
  v516 = v44;
  v75 = vmaxvq_s16(v65);
  v31.i64[0] = 0xF000F000F000FLL;
  v31.i64[1] = 0xF000F000F000FLL;
  v44.i64[0] = -1;
  v44.i64[1] = -1;
  v76 = vshlq_s16(v44, vsubq_s16(v31, v62));
  v508 = v494;
  v509 = v48;
  v490 = v11;
  v510 = v11;
  v483 = v33;
  v485 = v72;
  v495 = v32;
  v497 = v45;
  v513 = v32;
  v514 = v33;
  v492 = v35;
  v515 = v35;
  v517 = v45;
  v78 = a5 < 2 || a6 == 0;
  v487 = v46;
  v518 = v46;
  v519 = v47;
  v527 = v54;
  v526 = v65;
  v481 = v54;
  v79 = vandq_s8(vsubq_s16(v76, v54), v64);
  v528 = v53;
  v529 = v79;
  v80 = vsubq_s16(v65, v69);
  v499 = vsubq_s16(v65, v68);
  v522 = v499;
  v523 = v80;
  v81 = vsubq_s16(v65, v70);
  v82 = vsubq_s16(v65, v71);
  v524 = v81;
  v525 = v82;
  v521 = v74;
  if (v75)
  {
    v448 = v53;
    v449 = v79;
    v450 = vsubq_s16(v502, vqtbl1q_s8(v502, xmmword_29D2F1140));
    v461 = v73;
    v83 = vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1140));
    v84 = vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1140));
    v85 = vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1140));
    v86 = vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1140));
    v87 = vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1140));
    v88 = vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1140));
    v89 = vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1140));
    v451 = vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140));
    v452 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v453 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1140));
    v90 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v451, v450), v453), v452), xmmword_29D2F1150);
    v91 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v451, v450), v453), v452), xmmword_29D2F1150);
    v92 = vpmaxq_s16(v90, v90);
    v93 = vpminq_s16(v91, v91);
    v94.i64[0] = 0x8000800080008000;
    v94.i64[1] = 0x8000800080008000;
    v95 = vmaxq_s16(v92, v94);
    v96.i64[0] = 0x8000800080008000;
    v96.i64[1] = 0x8000800080008000;
    v97 = vminq_s16(v93, v96);
    v98 = vzip1q_s16(v92, v93);
    v99 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v98)), vceqzq_s16(v98));
    v100 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v86);
    v447 = v83;
    v101 = vminq_s16(v83, v84);
    v102 = v85;
    v103 = vqtbl1q_s8(v100, xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(v101, v85), v86), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v95, v105);
    v108 = vminq_s16(v97, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1140));
    v112 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v111, v87), v88), v89);
    v113 = v88;
    v114 = vminq_s16(vminq_s16(v111, v87), v88);
    v115 = v89;
    v116 = v82;
    v117 = vqtbl1q_s8(v112, xmmword_29D2F1150);
    v118 = vqtbl1q_s8(vminq_s16(v114, v115), xmmword_29D2F1150);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vmaxq_s16(v107, v119);
    v122 = vminq_s16(v108, v120);
    v123 = vzip1q_s16(v119, v120);
    v124 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v123)), vceqzq_s16(v123));
    v125 = vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1140));
    v457 = vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1140));
    v459 = vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1140));
    v455 = vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1140));
    v126 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v125, v459), v457), v455), xmmword_29D2F1150);
    v127 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v125, v459), v457), v455), xmmword_29D2F1150);
    v128 = vpmaxq_s16(v126, v126);
    v129 = vpminq_s16(v127, v127);
    v130 = vmaxq_s16(v121, v128);
    v131 = vminq_s16(v122, v129);
    v132 = vzip1q_s16(v128, v129);
    v133 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v132)), vceqzq_s16(v132));
    v134 = vpmaxq_s16(v99, v99);
    v135 = vpmaxq_s16(v110, v110);
    v136 = vpmaxq_s16(v124, v124);
    v137 = vpmaxq_s16(v133, v133);
    v138 = vmaxq_s16(vmaxq_s16(v134, v135), vmaxq_s16(v136, v137));
    v139 = vclzq_s16(vsubq_s16(v130, v131));
    v140 = vsubq_s16(v34, v139);
    v141 = vcgtq_s16(v138, v140);
    v142 = vminq_s16(v140, v138);
    v138.i64[0] = 0x18001800180018;
    v138.i64[1] = 0x18001800180018;
    v446 = v141;
    v143 = vbslq_s8(v141, v138, v34);
    v144 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v134), v67), 0);
    v145 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v135), v67), 0);
    v146 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v136), v67), 0);
    v147 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v137), v67), 0);
    v148.i64[0] = 0x4000400040004;
    v148.i64[1] = 0x4000400040004;
    v149 = vbicq_s8(v148, vceqq_s16(vaddq_s16(v147, v146), vnegq_s16(vaddq_s16(v144, v145))));
    v150 = vsubq_s16(v142, v144);
    v151 = vsubq_s16(v142, v145);
    v152 = vsubq_s16(v142, v146);
    v153 = vsubq_s16(v142, v147);
    v148.i64[0] = 0x7000700070007;
    v148.i64[1] = 0x7000700070007;
    v154 = v81;
    v155 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v65, v64), v499, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v81, v80), v116), 3uLL)), vaddq_s16(v461, v461)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v142, vceqzq_s16((*&v143 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v150, v148), vshlq_n_s16(vaddq_s16(vaddq_s16(v152, v151), v153), 3uLL)), vaddq_s16(v149, v149))).i64[0], 0);
    if (vaddvq_s16(v155))
    {
      v500 = vbslq_s8(v155, v451, v500);
      v502 = vbslq_s8(v155, v450, v502);
      v504 = vbslq_s8(v155, v453, v504);
      v506 = vbslq_s8(v155, v452, v9);
      v508 = vbslq_s8(v155, v447, v508);
      v509 = vbslq_s8(v155, v84, v48);
      v510 = vbslq_s8(v155, v102, v490);
      v511 = vbslq_s8(v155, v86, v485);
      v512 = vbslq_s8(v155, v111, v512);
      v513 = vbslq_s8(v155, v87, v495);
      v156.i64[0] = 0x3000300030003;
      v156.i64[1] = 0x3000300030003;
      v157 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v142), v156), v143), v149);
      v158.i64[0] = 0xF000F000F000FLL;
      v158.i64[1] = 0xF000F000F000FLL;
      v159 = vsubq_s16(v158, v139);
      v158.i64[0] = -1;
      v158.i64[1] = -1;
      v514 = vbslq_s8(v155, v113, v483);
      v515 = vbslq_s8(v155, v115, v492);
      v516 = vbslq_s8(v155, v125, v516);
      v517 = vbslq_s8(v155, v459, v497);
      v518 = vbslq_s8(v155, v457, v487);
      v519 = vbslq_s8(v155, v455, v47);
      v522 = vbslq_s8(v155, v150, v499);
      v523 = vbslq_s8(v155, v151, v80);
      v524 = vbslq_s8(v155, v152, v154);
      v525 = vbslq_s8(v155, v153, v116);
      v528 = vbslq_s8(v155, v130, v448);
      v529 = vbslq_s8(v155, vandq_s8(vsubq_s16(vshlq_s16(v158, v159), v131), v446), v449);
      v527 = vbslq_s8(v155, v131, v481);
      v526 = vbslq_s8(v155, v142, v65);
      v520 = vbslq_s8(v155, vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1140)), v520);
      v521 = vbslq_s8(v155, v157, v74);
    }

    if (v78)
    {
      v160 = v523;
      v161 = v524;
      v162 = v526;
      v163 = v525;
      v165 = v508;
      v164 = v509;
      v167 = v510;
      v166 = v511;
      v168 = v512;
      v169 = v513;
      v170 = v514;
      v171 = v515;
      v172 = v516;
      v173 = v517;
      v174 = v518;
      v175 = v519;
      v176 = v522;
      v177 = v521;
      v178 = v500;
      v179 = v502;
      v181 = v504;
      v180 = v506;
    }

    else
    {
      v531.val[0] = v471;
      v531.val[1] = v473;
      v531.val[2] = v474;
      v531.val[3].i64[0] = v478.i64[0];
      v531.val[3].i64[1] = v493.val[3].i64[1];
      v183 = vsubq_s16(v471, vqtbl4q_s8(v531, xmmword_29D2F10B0));
      v184 = vsubq_s16(v473, vqtbl4q_s8(v531, xmmword_29D2F10F0));
      v185 = vsubq_s16(v474, vqtbl4q_s8(v531, xmmword_29D2F1160));
      v186 = vqtbl4q_s8(v493, xmmword_29D2F1160);
      v200 = vsubq_s16(v493.val[0], vqtbl4q_s8(v493, xmmword_29D2F10B0));
      v187 = vsubq_s16(v493.val[3], v186);
      v530.val[0] = v467;
      v530.val[1] = v469;
      v530.val[2] = v470;
      v530.val[3].i64[0] = v480.i64[0];
      v530.val[3].i64[1] = v493.val[3].i64[1];
      v188 = vsubq_s16(v478, vqtbl4q_s8(v531, xmmword_29D2F1100));
      v189 = vsubq_s16(v467, vqtbl4q_s8(v530, xmmword_29D2F1170));
      v190 = vsubq_s16(v469, vqtbl4q_s8(v530, xmmword_29D2F1180));
      v191 = vsubq_s16(v470, vqtbl4q_s8(v530, xmmword_29D2F10B0));
      v192 = vsubq_s16(v480, vqtbl4q_s8(v530, xmmword_29D2F10C0));
      v531.val[1] = v463;
      v531.val[2] = v465;
      v531.val[3] = v466;
      v193 = v476.i64[0];
      v194 = v493.val[3].i64[1];
      v195 = vqtbl4q_s8(*(&v531 + 16), xmmword_29D2F10C0);
      v196 = vsubq_s16(v463, vqtbl4q_s8(*(&v531 + 16), xmmword_29D2F1170));
      v197 = vsubq_s16(v465, vqtbl4q_s8(*(&v531 + 16), xmmword_29D2F1120));
      v198 = vsubq_s16(v466, vqtbl4q_s8(*(&v531 + 16), xmmword_29D2F10B0));
      v199.i64[0] = v187.i64[0];
      v199.i64[1] = v200.i64[0];
      v200.i64[0] = v187.i64[1];
      v489 = vsubq_s16(v493.val[2], v186);
      v491 = vsubq_s16(v493.val[1], vqtbl4q_s8(v493, xmmword_29D2F10C0));
      v201 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v200, v491), v489), v199), xmmword_29D2F1150);
      v202 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v200, v491), v489), v199), xmmword_29D2F1150);
      v203 = vpmaxq_s16(v201, v201);
      v204 = vpminq_s16(v202, v202);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v530.val[0] = vmaxq_s16(v203, v186);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v530.val[1] = vminq_s16(v204, v186);
      v205 = vzip1q_s16(v203, v204);
      v186.i64[0] = 0x10001000100010;
      v186.i64[1] = 0x10001000100010;
      v206 = vbicq_s8(vsubq_s16(v186, vclsq_s16(v205)), vceqzq_s16(v205));
      v530.val[2] = vpmaxq_s16(v206, v206);
      v486 = v188;
      v488 = v185;
      v207 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v183, v184), v185), v188), xmmword_29D2F1150);
      v208 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v183, v184), v185), v188), xmmword_29D2F1150);
      v209 = vpmaxq_s16(v207, v207);
      v210 = vpminq_s16(v208, v208);
      v530.val[0] = vmaxq_s16(v530.val[0], v209);
      v530.val[1] = vminq_s16(v530.val[1], v210);
      v211 = vzip1q_s16(v209, v210);
      v212 = vbicq_s8(vsubq_s16(v186, vclsq_s16(v211)), vceqzq_s16(v211));
      v213 = vpmaxq_s16(v212, v212);
      v214 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v189, v190), v191), v192), xmmword_29D2F1150);
      v215 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v189, v190), v191), v192), xmmword_29D2F1150);
      v216 = vpmaxq_s16(v214, v214);
      v217 = vpminq_s16(v215, v215);
      v530.val[0] = vmaxq_s16(v530.val[0], v216);
      v530.val[1] = vminq_s16(v530.val[1], v217);
      v218 = vzip1q_s16(v216, v217);
      v219 = vbicq_s8(vsubq_s16(v186, vclsq_s16(v218)), vceqzq_s16(v218));
      v220 = vpmaxq_s16(v219, v219);
      v482 = v197;
      v484 = v196;
      v479 = vsubq_s16(v476, v195);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v196, v197), v198), v479), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v196, v197), v198), v479), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v225 = vmaxq_s16(v530.val[0], v223);
      v226 = vzip1q_s16(v223, v224);
      v227 = vbicq_s8(vsubq_s16(v186, vclsq_s16(v226)), vceqzq_s16(v226));
      v228 = vpmaxq_s16(v227, v227);
      v530.val[0] = vmaxq_s16(vmaxq_s16(v530.val[2], v213), vmaxq_s16(v220, v228));
      v477 = v225;
      v475 = vminq_s16(v530.val[1], v224);
      v462 = vclzq_s16(vsubq_s16(v225, v475));
      v530.val[1] = vsubq_s16(v186, v462);
      v229 = vcgtq_s16(v530.val[0], v530.val[1]);
      v230 = vminq_s16(v530.val[1], v530.val[0]);
      v530.val[0] = vsubq_s16(v230, v530.val[2]);
      v530.val[2].i64[0] = 0x3000300030003;
      v530.val[2].i64[1] = 0x3000300030003;
      v530.val[0] = vmaxq_s16(vminq_s16(v530.val[0], v530.val[2]), 0);
      v530.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v230, v213), v530.val[2]), 0);
      v231 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v220), v530.val[2]), 0);
      v232 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v228), v530.val[2]), 0);
      v233 = vsubq_s16(v230, v530.val[0]);
      v234 = vsubq_s16(v230, v231);
      v531.val[0] = vsubq_s16(v230, v232);
      v228.i64[0] = 0x4000400040004;
      v228.i64[1] = 0x4000400040004;
      v235 = vbicq_s8(v228, vceqq_s16(vaddq_s16(v232, v231), vnegq_s16(vaddq_s16(v530.val[0], v530.val[1]))));
      v231.i64[0] = 0x7000700070007;
      v231.i64[1] = 0x7000700070007;
      v472 = vsubq_s16(v230, v530.val[1]);
      v468 = v234;
      v464 = v531.val[0];
      v236 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v230, v229), v233, v231), vshlq_n_s16(vaddq_s16(vaddq_s16(v234, v472), v531.val[0]), 3uLL)), vaddq_s16(v235, v235));
      v177 = v521;
      v176 = v522;
      v530.val[0] = vandq_s8(v521, v530.val[2]);
      v530.val[2].i64[0] = 0x2000200020002;
      v530.val[2].i64[1] = 0x2000200020002;
      v237 = vandq_s8(vceqq_s16(v530.val[0], v530.val[2]), v186);
      v530.val[0].i64[0] = 0x8000800080008;
      v530.val[0].i64[1] = 0x8000800080008;
      v238 = vandq_s8(vaddq_s16(v177, v177), v530.val[0]);
      v531.val[0] = vceqzq_s16(vandq_s8(v521, v530.val[0]));
      v162 = v526;
      v163 = v525;
      v239 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v526, v531.val[0]), v238), v237), v522, v231);
      v160 = v523;
      v161 = v524;
      v240 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v239, vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), v236).i64[0], 0);
      v165 = v508;
      v169 = v513;
      v175 = v519;
      v178 = v500;
      v179 = v502;
      v181 = v504;
      v180 = v506;
      if (vaddvq_s16(v240))
      {
        v454 = v189;
        v456 = v190;
        v458 = v191;
        v241 = v198;
        v242.i64[0] = 0x2000200020002;
        v242.i64[1] = 0x2000200020002;
        v243.i64[0] = 0x9000900090009;
        v243.i64[1] = 0x9000900090009;
        v460 = v233;
        v493.val[0] = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v230), v242), vsubq_s16(vandq_s8(v229, v243), vmvnq_s8(v229))), v235);
        v244.i64[0] = 0xF000F000F000FLL;
        v244.i64[1] = 0xF000F000F000FLL;
        v245.i64[0] = -1;
        v245.i64[1] = -1;
        v246 = vandq_s8(vsubq_s16(vshlq_s16(v245, vsubq_s16(v244, v462)), v475), v229);
        v178 = vbslq_s8(v240, v200, v500);
        v179 = vbslq_s8(v240, v491, v502);
        v181 = vbslq_s8(v240, v489, v504);
        v180 = vbslq_s8(v240, v199, v506);
        v165 = vbslq_s8(v240, v183, v508);
        v247 = vbslq_s8(v240, v184, v509);
        v169 = vbslq_s8(v240, v456, v513);
        v172 = vbslq_s8(v240, v484, v516);
        v175 = vbslq_s8(v240, v479, v519);
        v176 = vbslq_s8(v240, v460, v522);
        v160 = vbslq_s8(v240, v472, v523);
        v161 = vbslq_s8(v240, v468, v524);
        v163 = vbslq_s8(v240, v464, v525);
        v162 = vbslq_s8(v240, v230, v526);
        v177 = vbslq_s8(v240, v493.val[0], v521);
        v520 = vbslq_s8(v240, vextq_s8(v493.val[3], v493.val[3], 8uLL), v520);
        v527 = vbslq_s8(v240, v475, v527);
        v528 = vbslq_s8(v240, v477, v528);
        v529 = vbslq_s8(v240, v246, v529);
        v508 = v165;
        v523 = v160;
        v524 = v161;
        v525 = v163;
        v526 = v162;
        v522 = v176;
        v521 = v177;
        v174 = vbslq_s8(v240, v241, v518);
        v173 = vbslq_s8(v240, v482, v517);
        v171 = vbslq_s8(v240, v192, v515);
        v170 = vbslq_s8(v240, v458, v514);
        v168 = vbslq_s8(v240, v454, v512);
        v166 = vbslq_s8(v240, v486, v511);
        v167 = vbslq_s8(v240, v488, v510);
        v164 = v247;
      }

      else
      {
        v174 = v518;
        v173 = v517;
        v172 = v516;
        v171 = v515;
        v170 = v514;
        v168 = v512;
        v166 = v511;
        v167 = v510;
        v164 = v509;
      }
    }

    v248 = vandq_s8(v529, vceqq_s16(v162, v176));
    v501 = vaddq_s16(v248, v178);
    v503 = vaddq_s16(v179, v248);
    v505 = vaddq_s16(v181, v248);
    v507 = vaddq_s16(v180, v248);
    v249 = vandq_s8(v529, vceqq_s16(v162, v160));
    v508 = vaddq_s16(v165, v249);
    v509 = vaddq_s16(v164, v249);
    v510 = vaddq_s16(v167, v249);
    v511 = vaddq_s16(v166, v249);
    v250 = vandq_s8(v529, vceqq_s16(v162, v161));
    v512 = vaddq_s16(v168, v250);
    v513 = vaddq_s16(v169, v250);
    v514 = vaddq_s16(v170, v250);
    v515 = vaddq_s16(v171, v250);
    v251 = vandq_s8(v529, vceqq_s16(v162, v163));
    v516 = vaddq_s16(v172, v251);
    v517 = vaddq_s16(v173, v251);
    v518 = vaddq_s16(v174, v251);
    v519 = vaddq_s16(v175, v251);
    v251.i64[0] = 0x8000800080008;
    v251.i64[1] = 0x8000800080008;
    v252.i64[0] = 0x3000300030003;
    v252.i64[1] = 0x3000300030003;
    v253.i64[0] = 0x2000200020002;
    v253.i64[1] = 0x2000200020002;
    v254 = vceqq_s16(vandq_s8(v177, v252), v253);
    v253.i64[0] = 0x10001000100010;
    v253.i64[1] = 0x10001000100010;
    v255 = vandq_s8(v254, v253);
    v253.i64[0] = 0x7000700070007;
    v253.i64[1] = 0x7000700070007;
    v256 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v161, v160), v163), 3uLL), v176, v253), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v177, v177), v251), vbicq_s8(v162, vceqzq_s16(vandq_s8(v177, v251)))), v255));
    v257 = vpaddq_s16(v256, v256);
    if ((vpaddq_s16(v257, v257).i16[0] - 925) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v258 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v259 = 8 * (a1 & 7);
      if (v259)
      {
        v260 = *v258 & ~(-1 << v259);
      }

      else
      {
        v260 = 0;
      }

      *a2 = 0;
      v261 = v520.i64[0];
      v262.i32[0] = v162.u16[0];
      v262.i32[1] = v162.u16[1];
      v263 = vceqz_s32(vand_s8(v262, 0xFFFF0000FFFFLL));
      v264.i64[0] = v263.i32[0];
      v264.i64[1] = v263.i32[1];
      v265 = v264;
      v266.i64[0] = -1;
      v266.i64[1] = -1;
      v267 = vand_s8(vadd_s32(v262, -1), 0xF0000000FLL);
      v264.i64[0] = v267.u32[0];
      v264.i64[1] = v267.u32[1];
      v268 = vbicq_s8(vshlq_u64(v264, xmmword_29D2F1190), v265);
      if (v162.i16[2])
      {
        v269 = (v162.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v269 = 0;
      }

      if (v162.i16[3])
      {
        v270 = ((v162.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v270 = 0;
      }

      v271 = vorrq_s8(vdupq_laneq_s64(v268, 1), v268).u64[0] | v269 | v270 | ((v177.i8[6] & 0x1F) << 15) | v177.i8[0] & 0x1F | (32 * (v177.i8[2] & 0x1F)) & 0x83FF | ((v177.i8[4] & 0x1F) << 10);
      v272 = v260 | (v271 << v259);
      if (v259 >= 0x1C)
      {
        *v258 = v272;
        v272 = v271 >> (-8 * (a1 & 7u));
      }

      v273 = v261 | (WORD1(v261) << 16) | (WORD2(v261) << 32) | (HIWORD(v261) << 48);
      v274 = (v259 + 36) & 0x3C;
      *(v258 + (((v259 + 36) >> 3) & 8)) = v272 | (v273 << v274);
      v275 = v259 + 100;
      v276 = vsubq_s16(v526, v522);
      v277 = vsubq_s16(v526, v523);
      v278 = vsubq_s16(v526, v524);
      v279 = vsubq_s16(v526, v525);
      *v276.i8 = vqmovn_u16(v276);
      *v277.i8 = vqmovn_u16(v277);
      *v278.i8 = vqmovn_u16(v278);
      *v279.i8 = vqmovn_u16(v279);
      v280 = vtrn1q_s8(v276, v277);
      v281 = vtrn2q_s8(v276, v277);
      v282 = vtrn1q_s8(v278, v279);
      v283 = vtrn2q_s8(v278, v279);
      v284 = vzip1q_s16(v281, v283);
      v285 = vtrn2q_s16(v281, v283);
      v281.i64[0] = vzip1q_s32(vzip1q_s16(v280, v282), v284).u64[0];
      v285.i64[0] = vzip1q_s32(vtrn2q_s16(v280, v282), v285).u64[0];
      v278.i64[0] = 0x202020202020202;
      v278.i64[1] = 0x202020202020202;
      v286 = vandq_s8(vmovl_s16(vtst_s16(*v521.i8, 0x4000400040004)), v278);
      v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v287 = vshlq_u8(v266, vorrq_s8(v286, v278));
      v288 = vmovl_u8(vand_s8(*v287.i8, *v281.i8));
      v289 = vmovl_u8(vand_s8(*&vextq_s8(v287, v287, 8uLL), *v285.i8));
      v290 = vmovl_u8(*v286.i8);
      v291 = vmovl_high_u8(v286);
      v292 = vpaddq_s16(vshlq_u16(v288, vtrn1q_s16(0, v290)), vshlq_u16(v289, vtrn1q_s16(0, v291)));
      v293 = vpaddq_s16(v290, v291);
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
      v304 = (v259 + 100) & 0x3C;
      v305 = (v302.i64[0] << v304) | (v273 >> -v274);
      if ((v303.i64[0] + v304) >= 0x40)
      {
        *(v258 + ((v275 >> 3) & 0x18)) = v305;
        v305 = v302.i64[0] >> -v304;
      }

      v306 = v303.i64[0] + v275;
      v307 = v305 | (v302.i64[1] << v306);
      if ((v306 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v258 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v302.i64[1] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v307 = 0;
        }
      }

      v308 = v306 + v303.i64[1];
      v309.i64[0] = 0x8000800080008;
      v309.i64[1] = 0x8000800080008;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v311 = vandq_s8(vextq_s8(vtstq_s16(v521, v309), 0, 8uLL), v526);
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313 = vandq_s8(vshlq_u16(v310, vaddq_s16(v311, v312)), v529);
      v314 = vmovl_u16(*v311.i8);
      v315 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), vtrn1q_s32(0, v314)), vmovl_high_u16(v313));
      v316 = vpaddq_s32(v314, vmovl_high_u16(v311));
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
      v323 = (v321.i64[0] << v308) | v307;
      if (v322.i64[0] + (v308 & 0x3F) >= 0x40)
      {
        *(v258 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v321.i64[0] >> -(v308 & 0x3F);
        if ((v308 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = v322.i64[0] + v308;
      v325 = v323 | (v321.i64[1] << v324);
      if ((v324 & 0x3F) + v322.i64[1] >= 0x40)
      {
        *(v258 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v321.i64[1] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = v324 + v322.i64[1];
      v327 = vextq_s8(0, v522, 8uLL);
      v328.i64[0] = 0xF000F000F000FLL;
      v328.i64[1] = 0xF000F000F000FLL;
      v329.i64[0] = -1;
      v329.i64[1] = -1;
      v330 = vandq_s8(vshlq_u16(v329, vaddq_s16(v327, v328)), v501);
      v331 = vmovl_u16(*v327.i8);
      v332 = vmovl_high_u16(v327);
      v333 = vpaddq_s32(vmovl_u16(*v330.i8), vshlq_u32(vmovl_high_u16(v330), vtrn1q_s32(0, v332)));
      v334 = vpaddq_s32(v331, v332);
      v335.i64[0] = v333.u32[0];
      v335.i64[1] = v333.u32[1];
      v336 = v335;
      v335.i64[0] = v333.u32[2];
      v335.i64[1] = v333.u32[3];
      v337 = v335;
      v335.i64[0] = v334.u32[0];
      v335.i64[1] = v334.u32[1];
      v338 = v335;
      v335.i64[0] = v334.u32[2];
      v335.i64[1] = v334.u32[3];
      v339 = vpaddq_s64(vshlq_u64(v336, vzip1q_s64(0, v338)), vshlq_u64(v337, vzip1q_s64(0, v335)));
      v340 = vpaddq_s64(v338, v335);
      v341 = (v339.i64[0] << v326) | v325;
      if (v340.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v258 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v341;
        v341 = v339.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v341 = 0;
        }
      }

      v342 = v340.i64[0] + v326;
      v343 = v341 | (v339.i64[1] << v342);
      if ((v342 & 0x3F) + v340.i64[1] >= 0x40)
      {
        *(v258 + ((v342 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v339.i64[1] >> -(v342 & 0x3F);
        if ((v342 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342 + v340.i64[1];
      v345.i64[0] = 0xF000F000F000FLL;
      v345.i64[1] = 0xF000F000F000FLL;
      v346.i64[0] = -1;
      v346.i64[1] = -1;
      v347 = vandq_s8(vshlq_u16(v346, vaddq_s16(v522, v345)), v503);
      v348 = vmovl_u16(*v522.i8);
      v349 = vmovl_high_u16(v522);
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
      if (v357.i64[0] + (v344 & 0x3F) >= 0x40)
      {
        *(v258 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v356.i64[0] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357.i64[0] + v344;
      v360 = v358 | (v356.i64[1] << v359);
      if ((v359 & 0x3F) + v357.i64[1] >= 0x40)
      {
        *(v258 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v356.i64[1] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359 + v357.i64[1];
      v362.i64[0] = 0xF000F000F000FLL;
      v362.i64[1] = 0xF000F000F000FLL;
      v363.i64[0] = -1;
      v363.i64[1] = -1;
      v364 = vandq_s8(vshlq_u16(v363, vaddq_s16(v522, v362)), v505);
      v365 = vmovl_u16(*v522.i8);
      v366 = vmovl_high_u16(v522);
      v367 = vpaddq_s32(vshlq_u32(vmovl_u16(*v364.i8), vtrn1q_s32(0, v365)), vshlq_u32(vmovl_high_u16(v364), vtrn1q_s32(0, v366)));
      v368 = vpaddq_s32(v365, v366);
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
      v373 = vpaddq_s64(vshlq_u64(v370, vzip1q_s64(0, v372)), vshlq_u64(v371, vzip1q_s64(0, v369)));
      v374 = vpaddq_s64(v372, v369);
      v375 = (v373.i64[0] << v361) | v360;
      if (v374.i64[0] + (v361 & 0x3F) >= 0x40)
      {
        *(v258 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v373.i64[0] >> -(v361 & 0x3F);
        if ((v361 & 0x3F) == 0)
        {
          v375 = 0;
        }
      }

      v376 = v374.i64[0] + v361;
      v377 = v375 | (v373.i64[1] << v376);
      if ((v376 & 0x3F) + v374.i64[1] >= 0x40)
      {
        *(v258 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        v377 = v373.i64[1] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v377 = 0;
        }
      }

      v378 = v376 + v374.i64[1];
      v379.i64[0] = 0xF000F000F000FLL;
      v379.i64[1] = 0xF000F000F000FLL;
      v380.i64[0] = -1;
      v380.i64[1] = -1;
      v381 = vandq_s8(vshlq_u16(v380, vaddq_s16(v522, v379)), v507);
      v382 = vmovl_u16(*v522.i8);
      v383 = vmovl_high_u16(v522);
      v384 = vpaddq_s32(vshlq_u32(vmovl_u16(*v381.i8), vtrn1q_s32(0, v382)), vshlq_u32(vmovl_high_u16(v381), vtrn1q_s32(0, v383)));
      v385 = vpaddq_s32(v382, v383);
      v386.i64[0] = v384.u32[0];
      v386.i64[1] = v384.u32[1];
      v387 = v386;
      v386.i64[0] = v384.u32[2];
      v386.i64[1] = v384.u32[3];
      v388 = v386;
      v386.i64[0] = v385.u32[0];
      v386.i64[1] = v385.u32[1];
      v389 = v386;
      v386.i64[0] = v385.u32[2];
      v386.i64[1] = v385.u32[3];
      v390 = vpaddq_s64(vshlq_u64(v387, vzip1q_s64(0, v389)), vshlq_u64(v388, vzip1q_s64(0, v386)));
      v391 = vpaddq_s64(v389, v386);
      v392 = (v390.i64[0] << v378) | v377;
      if (v391.i64[0] + (v378 & 0x3F) >= 0x40)
      {
        *(v258 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        v392 = v390.i64[0] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v392 = 0;
        }
      }

      v393 = v391.i64[1];
      v394 = v391.i64[0] + v378;
      v395 = (v391.i64[0] + v378) & 0x3F;
      v396 = v392 | (v390.i64[1] << v394);
      if ((v395 + v391.i64[1]) >= 0x40)
      {
        *(v258 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v390.i64[1] >> -v395;
        if (!v395)
        {
          v396 = 0;
        }
      }

      v397 = 0;
      v398.i64[0] = 0xF000F000F000FLL;
      v398.i64[1] = 0xF000F000F000FLL;
      v399.i64[0] = -1;
      v399.i64[1] = -1;
      v400 = v394 + v393;
      do
      {
        v401 = vandq_s8(vshlq_u16(v399, vaddq_s16(v523, v398)), *(&v508 + v397));
        v402 = vmovl_u16(*v523.i8);
        v403 = vmovl_high_u16(v523);
        v404 = vpaddq_s32(vshlq_u32(vmovl_u16(*v401.i8), vtrn1q_s32(0, v402)), vshlq_u32(vmovl_high_u16(v401), vtrn1q_s32(0, v403)));
        v405 = vpaddq_s32(v402, v403);
        v406.i64[0] = v404.u32[0];
        v406.i64[1] = v404.u32[1];
        v407 = v406;
        v406.i64[0] = v404.u32[2];
        v406.i64[1] = v404.u32[3];
        v408 = v406;
        v406.i64[0] = v405.u32[0];
        v406.i64[1] = v405.u32[1];
        v409 = v406;
        v406.i64[0] = v405.u32[2];
        v406.i64[1] = v405.u32[3];
        v410 = vpaddq_s64(vshlq_u64(v407, vzip1q_s64(0, v409)), vshlq_u64(v408, vzip1q_s64(0, v406)));
        v411 = vpaddq_s64(v409, v406);
        v412 = (v410.i64[0] << v400) | v396;
        if (v411.i64[0] + (v400 & 0x3F) >= 0x40)
        {
          *(v258 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
          v412 = v410.i64[0] >> -(v400 & 0x3F);
          if ((v400 & 0x3F) == 0)
          {
            v412 = 0;
          }
        }

        v413 = v411.i64[0] + v400;
        v396 = v412 | (v410.i64[1] << v413);
        if ((v413 & 0x3F) + v411.i64[1] >= 0x40)
        {
          *(v258 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
          v396 = v410.i64[1] >> -(v413 & 0x3F);
          if ((v413 & 0x3F) == 0)
          {
            v396 = 0;
          }
        }

        v400 = v413 + v411.i64[1];
        v397 += 16;
      }

      while (v397 != 64);
      v414 = 0;
      v415.i64[0] = 0xF000F000F000FLL;
      v415.i64[1] = 0xF000F000F000FLL;
      v416.i64[0] = -1;
      v416.i64[1] = -1;
      do
      {
        v417 = vandq_s8(vshlq_u16(v416, vaddq_s16(v524, v415)), *(&v512 + v414));
        v418 = vmovl_u16(*v524.i8);
        v419 = vmovl_high_u16(v524);
        v420 = vpaddq_s32(vshlq_u32(vmovl_u16(*v417.i8), vtrn1q_s32(0, v418)), vshlq_u32(vmovl_high_u16(v417), vtrn1q_s32(0, v419)));
        v421 = vpaddq_s32(v418, v419);
        v422.i64[0] = v420.u32[0];
        v422.i64[1] = v420.u32[1];
        v423 = v422;
        v422.i64[0] = v420.u32[2];
        v422.i64[1] = v420.u32[3];
        v424 = v422;
        v422.i64[0] = v421.u32[0];
        v422.i64[1] = v421.u32[1];
        v425 = v422;
        v422.i64[0] = v421.u32[2];
        v422.i64[1] = v421.u32[3];
        v426 = vpaddq_s64(vshlq_u64(v423, vzip1q_s64(0, v425)), vshlq_u64(v424, vzip1q_s64(0, v422)));
        v427 = vpaddq_s64(v425, v422);
        v428 = (v426.i64[0] << v400) | v396;
        if (v427.i64[0] + (v400 & 0x3F) >= 0x40)
        {
          *(v258 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
          v428 = v426.i64[0] >> -(v400 & 0x3F);
          if ((v400 & 0x3F) == 0)
          {
            v428 = 0;
          }
        }

        v429 = v427.i64[0] + v400;
        v396 = v428 | (v426.i64[1] << v429);
        if ((v429 & 0x3F) + v427.i64[1] >= 0x40)
        {
          *(v258 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
          v396 = v426.i64[1] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v396 = 0;
          }
        }

        v400 = v429 + v427.i64[1];
        v414 += 16;
      }

      while (v414 != 64);
      v430 = 0;
      v431.i64[0] = 0xF000F000F000FLL;
      v431.i64[1] = 0xF000F000F000FLL;
      v432.i64[0] = -1;
      v432.i64[1] = -1;
      do
      {
        v433 = vandq_s8(vshlq_u16(v432, vaddq_s16(v525, v431)), *(&v516 + v430));
        v434 = vmovl_u16(*v525.i8);
        v435 = vmovl_high_u16(v525);
        v436 = vpaddq_s32(vshlq_u32(vmovl_u16(*v433.i8), vtrn1q_s32(0, v434)), vshlq_u32(vmovl_high_u16(v433), vtrn1q_s32(0, v435)));
        v437 = vpaddq_s32(v434, v435);
        v438.i64[0] = v436.u32[0];
        v438.i64[1] = v436.u32[1];
        v439 = v438;
        v438.i64[0] = v436.u32[2];
        v438.i64[1] = v436.u32[3];
        v440 = v438;
        v438.i64[0] = v437.u32[0];
        v438.i64[1] = v437.u32[1];
        v441 = v438;
        v438.i64[0] = v437.u32[2];
        v438.i64[1] = v437.u32[3];
        v442 = vpaddq_s64(vshlq_u64(v439, vzip1q_s64(0, v441)), vshlq_u64(v440, vzip1q_s64(0, v438)));
        v443 = vpaddq_s64(v441, v438);
        v444 = (v442.i64[0] << v400) | v396;
        if (v443.i64[0] + (v400 & 0x3F) >= 0x40)
        {
          *(v258 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
          v444 = v442.i64[0] >> -(v400 & 0x3F);
          if ((v400 & 0x3F) == 0)
          {
            v444 = 0;
          }
        }

        v445 = v443.i64[0] + v400;
        v396 = v444 | (v442.i64[1] << v445);
        if ((v445 & 0x3F) + v443.i64[1] >= 0x40)
        {
          *(v258 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
          v396 = v442.i64[1] >> -(v445 & 0x3F);
          if ((v445 & 0x3F) == 0)
          {
            v396 = 0;
          }
        }

        v400 = v445 + v443.i64[1];
        v430 += 16;
      }

      while (v430 != 64);
      if ((v400 & 0x3F) != 0)
      {
        *(v258 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      }

      result = (v400 - v259 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v92 = *MEMORY[0x29EDCA608];
  v11 = 0uLL;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v32 = 0;
      v33 = (a3 + i * a4);
      v34 = (2 * i) | 1u;
      do
      {
        v35 = &v76 + 4 * (v32 & 0x7F);
        v36 = v33[1];
        *&v35[i & 0x7F] = *v33;
        v37 = v33[3];
        *(v35 + v34) = v33[2];
        v38 = &v76 + 2 * ((2 * v32) | 1u);
        *&v38[i & 0x7F] = v36;
        v33 += 4;
        ++v32;
        *(v38 + v34) = v37;
      }

      while (a5 != v32);
    }

    v30 = vmovl_u16(*&v76);
    v29 = vmovl_u16(*&v78);
    v28 = vmovl_u16(*(&v76 + 8));
    v27 = vmovl_u16(*(&v78 + 8));
    v26 = vmovl_u16(*&v80);
    v25 = vmovl_u16(*&v82);
    v24 = vmovl_u16(*(&v80 + 8));
    v23 = vmovl_u16(*(&v82 + 8));
    v22 = vmovl_u16(*&v77);
    v21 = vmovl_u16(*&v79);
    v20 = vmovl_u16(*(&v77 + 8));
    v19 = vmovl_u16(*(&v79 + 8));
    v18 = vmovl_u16(*&v81);
    v17 = vmovl_u16(*&v83);
    v16 = vmovl_u16(*(&v81 + 8));
    v15 = vmovl_u16(*(&v83 + 8));
    v14 = vmovl_u16(*&v84);
    v13 = vmovl_u16(*&v86);
    v12 = vmovl_u16(*(&v84 + 8));
    v11 = vmovl_u16(*(&v86 + 8));
  }

  v55 = v22;
  v56 = v21;
  v57 = v20;
  v58 = v19;
  v59 = v18;
  v60 = v17;
  v61 = v16;
  v62 = v15;
  v63 = v14;
  v64 = v13;
  v65 = v12;
  v66 = v11;
  v39 = a6 != 0;
  v40 = 2 * (a6 & 0x7F);
  v68 = v30;
  v69 = v29;
  v41 = 2 * (a5 & 0x7F);
  v70 = v28;
  v71 = v27;
  v72 = v26;
  v73 = v25;
  if (v41 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = 2 * (a5 & 0x7F);
  }

  v74 = v24;
  v75 = v23;
  v43 = 2 * v39;
  if (v41 >= 4)
  {
    v44 = v41 - 4;
  }

  else
  {
    v44 = 0;
  }

  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v68, a7, v42, 2 * v39);
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v73 = v60;
  v46 = v40 - 2;
  if (v40 < 2)
  {
    v46 = 0;
  }

  v74 = v61;
  v75 = v62;
  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v68, a7, v42, v47);
  v68 = v63;
  v69 = v64;
  v70 = v65;
  v71 = v66;
  v72 = vmovl_u16(*&v88);
  v73 = vmovl_u16(*&v90);
  v74 = vmovl_u16(*(&v88 + 8));
  v75 = vmovl_u16(*(&v90 + 8));
  if (a5 >= 4)
  {
    v49 = 4;
  }

  else
  {
    v49 = v44;
  }

  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v68, a7, v49, v43);
  v68 = vmovl_u16(*&v85);
  v69 = vmovl_u16(*&v87);
  v70 = vmovl_u16(*(&v85 + 8));
  v71 = vmovl_u16(*(&v87 + 8));
  v72 = vmovl_u16(*&v89);
  v73 = vmovl_u16(*&v91);
  v74 = vmovl_u16(*(&v89 + 8));
  v75 = vmovl_u16(*(&v91 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v68, a7, v49, v47);
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

  *a2 = v54 | v52 | v45 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
  v406 = v14;
  v17 = vbicq_s8(v15, vceqq_s16(v14, v16));
  v16.i64[0] = 0x202020202020202;
  v16.i64[1] = 0x202020202020202;
  v18 = vandq_s8(vmovl_s16(vtst_s16(v8, 0x4000400040004)), v16);
  if (vmaxvq_s8(v18) < 1)
  {
    v27 = 0;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v404 = v47;
    v405 = v47;
    v44 = v17;
    v45 = v17;
    v46 = v17;
    v402 = v47;
    v403 = v47;
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
    v404 = vmovl_s8(vceqz_s8(*v39.i8));
    v402 = vmovl_s8(vceqz_s8(*v38.i8));
    v403 = vmovl_s8(vceqz_s8(v42));
    v405 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v48.i64[0] = 0x8000800080008;
  v48.i64[1] = 0x8000800080008;
  v49 = 0uLL;
  v408 = vandq_s8(vextq_s8(vtstq_s16(v12, v48), 0, 8uLL), v17);
  v50 = vmovl_u16(*&vpaddq_s16(v408, v408));
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
  v397 = vextq_s8(0, v43, 8uLL);
  v63 = vmovl_u16(*&vpaddq_s16(v397, v397));
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

  v398 = v43;
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
  v407 = v12;
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

  v399 = v44;
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

  v400 = v45;
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
  v401 = v46;
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
    *(a1 + 16) = v178;
    v179 = (a1 + a2);
    *v179 = v178;
    v179[1] = v178;
  }

  else
  {
    v181 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v182 = vzip1_s32(*v63.i8, *&vextq_s8(v63, v63, 8uLL));
    v183 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v184 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
    v185 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v186 = vzip1_s32(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
    v187 = ((2 * *(v5 + (((v4 + 36) >> 3) & 8) + 8)) << ~(v4 + 36)) | (*(v5 + (((v4 + 36) >> 3) & 8)) >> (v4 + 36));
    v188.i64[0] = v181.u32[0];
    v188.i64[1] = v181.u32[1];
    v189 = vshlq_u64(v49, vnegq_s64(v188));
    v392 = vzip1q_s64(v49, v189);
    v394 = vzip2q_s64(v49, v189);
    v188.i64[0] = v182.u32[0];
    v188.i64[1] = v182.u32[1];
    v190 = vshlq_u64(v70, vnegq_s64(v188));
    v388 = vzip1q_s64(v70, v190);
    v390 = vzip2q_s64(v70, v190);
    v188.i64[0] = v183.u32[0];
    v188.i64[1] = v183.u32[1];
    v191 = vnegq_s64(v188);
    v192 = vshlq_u64(v62, v191);
    v384 = vzip1q_s64(v62, v192);
    v386 = vzip2q_s64(v62, v192);
    v193 = vshlq_u64(v87, v191);
    v382 = vzip2q_s64(v87, v193);
    v194 = vzip1q_s64(v87, v193);
    v195 = vshlq_u64(v85, v191);
    v196 = vzip2q_s64(v85, v195);
    v197 = vzip1q_s64(v85, v195);
    v188.i64[0] = v184.u32[0];
    v188.i64[1] = v184.u32[1];
    v198 = vnegq_s64(v188);
    v199 = vshlq_u64(v104, v198);
    v200 = vzip2q_s64(v104, v199);
    v201 = vzip1q_s64(v104, v199);
    v202 = vshlq_u64(v102, v198);
    v203 = vzip2q_s64(v102, v202);
    v204 = vzip1q_s64(v102, v202);
    v205 = vshlq_u64(v116, v198);
    v206 = vzip2q_s64(v116, v205);
    v207 = vzip1q_s64(v116, v205);
    v208 = vshlq_u64(v114, v198);
    v209 = vzip2q_s64(v114, v208);
    v210 = vzip1q_s64(v114, v208);
    v188.i64[0] = v185.u32[0];
    v188.i64[1] = v185.u32[1];
    v211 = vnegq_s64(v188);
    v212 = vshlq_u64(v133, v211);
    v213 = vzip2q_s64(v133, v212);
    v214 = vzip1q_s64(v133, v212);
    v215 = vshlq_u64(v131, v211);
    v216 = vzip2q_s64(v131, v215);
    v217 = vzip1q_s64(v131, v215);
    v218 = vshlq_u64(v145, v211);
    v219 = vzip2q_s64(v145, v218);
    v220 = vzip1q_s64(v145, v218);
    v221 = vshlq_u64(v143, v211);
    v222 = vzip2q_s64(v143, v221);
    v223 = vzip1q_s64(v143, v221);
    v188.i64[0] = v186.u32[0];
    v188.i64[1] = v186.u32[1];
    v396 = vnegq_s64(v188);
    v224 = vshlq_u64(v163, v396);
    v225 = vzip2q_s64(v163, v224);
    v226 = vzip1q_s64(v163, v224);
    v227 = vshlq_u64(v159, v396);
    v228 = vzip2q_s64(v159, v227);
    v229 = vzip1q_s64(v159, v227);
    v230 = vshlq_u64(v171, v396);
    v231 = vzip2q_s64(v171, v230);
    v232 = vzip1q_s64(v171, v230);
    v233 = vuzp1q_s32(v392, v394);
    v234 = vuzp1q_s32(v388, v390);
    v235 = vuzp1q_s32(v384, v386);
    v236 = vuzp1q_s32(v194, v382);
    v237 = vuzp1q_s32(v197, v196);
    v238 = vuzp1q_s32(v201, v200);
    v239 = vuzp1q_s32(v204, v203);
    v240 = vuzp1q_s32(v207, v206);
    v241 = vuzp1q_s32(v210, v209);
    v242 = vuzp1q_s32(v214, v213);
    v243 = vuzp1q_s32(v217, v216);
    v244 = vuzp1q_s32(v220, v219);
    v245 = vuzp1q_s32(v223, v222);
    v246 = vuzp1q_s32(v226, v225);
    v247 = vuzp1q_s32(v229, v228);
    v226.i64[0] = 0xFFFF0000FFFFLL;
    v226.i64[1] = 0xFFFF0000FFFFLL;
    v248 = vuzp1q_s32(v232, v231);
    v249 = vshlq_u32(v233, vnegq_s32(vandq_s8(v408, v226)));
    v393 = vzip1q_s32(v233, v249);
    v395 = vzip2q_s32(v233, v249);
    v231.i64[0] = 0xFFFF0000FFFFLL;
    v231.i64[1] = 0xFFFF0000FFFFLL;
    v250 = vshlq_u32(v234, vnegq_s32(vandq_s8(v397, v231)));
    v389 = vzip1q_s32(v234, v250);
    v391 = vzip2q_s32(v234, v250);
    v251 = vnegq_s32(vandq_s8(v398, v231));
    v252 = vshlq_u32(v235, v251);
    v385 = vzip1q_s32(v235, v252);
    v387 = vzip2q_s32(v235, v252);
    v253 = vshlq_u32(v236, v251);
    v381 = vzip1q_s32(v236, v253);
    v383 = vzip2q_s32(v236, v253);
    v254 = vshlq_u32(v237, v251);
    v379 = vzip1q_s32(v237, v254);
    v380 = vzip2q_s32(v237, v254);
    v213.i64[0] = 0xFFFF0000FFFFLL;
    v213.i64[1] = 0xFFFF0000FFFFLL;
    v255 = vnegq_s32(vandq_s8(v399, v213));
    v256 = vshlq_u32(v238, v255);
    v377 = vzip1q_s32(v238, v256);
    v378 = vzip2q_s32(v238, v256);
    v257 = vshlq_u32(v239, v255);
    v375 = vzip1q_s32(v239, v257);
    v376 = vzip2q_s32(v239, v257);
    v258 = vshlq_u32(v240, v255);
    v373 = vzip1q_s32(v240, v258);
    v374 = vzip2q_s32(v240, v258);
    v259 = vshlq_u32(v241, v255);
    v372 = vzip2q_s32(v241, v259);
    v260 = vzip1q_s32(v241, v259);
    v241.i64[0] = 0xFFFF0000FFFFLL;
    v241.i64[1] = 0xFFFF0000FFFFLL;
    v261 = vnegq_s32(vandq_s8(v400, v241));
    v262 = vshlq_u32(v242, v261);
    v263 = vzip2q_s32(v242, v262);
    v264 = vzip1q_s32(v242, v262);
    v265 = vshlq_u32(v243, v261);
    v266 = vzip2q_s32(v243, v265);
    v267 = vzip1q_s32(v243, v265);
    v268 = vshlq_u32(v244, v261);
    v269 = vzip2q_s32(v244, v268);
    v270 = vzip1q_s32(v244, v268);
    v271 = vshlq_u32(v245, v261);
    v272 = vzip2q_s32(v245, v271);
    v273 = vzip1q_s32(v245, v271);
    v245.i64[0] = 0xFFFF0000FFFFLL;
    v245.i64[1] = 0xFFFF0000FFFFLL;
    v274 = vnegq_s32(vandq_s8(v401, v245));
    v275 = vshlq_u32(v246, v274);
    v276 = vzip2q_s32(v246, v275);
    v277 = vzip1q_s32(v246, v275);
    v278 = vshlq_u32(v247, v274);
    v279 = vzip2q_s32(v247, v278);
    v280 = vzip1q_s32(v247, v278);
    *v249.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v187), xmmword_29D2F10A0));
    v278.i32[0] = v187;
    LOWORD(v187) = v249.i16[2];
    v278.i16[2] = v249.i16[0];
    v281 = vshlq_u32(v248, v274);
    v282 = vuzp1q_s16(v264, v263);
    v283 = vuzp1q_s16(v267, v266);
    v284 = vuzp1q_s16(v277, v276);
    v285 = vuzp1q_s16(v280, v279);
    v286 = vuzp1q_s16(vzip1q_s32(v248, v281), vzip2q_s32(v248, v281));
    v281.i64[0] = 0x10001000100010;
    v281.i64[1] = 0x10001000100010;
    v252.i64[0] = 0xF000F000F000FLL;
    v252.i64[1] = 0xF000F000F000FLL;
    v279.i64[0] = 0x10001000100010;
    v279.i64[1] = 0x10001000100010;
    v287 = vshlq_s16(vuzp1q_s16(v389, v391), vsubq_s16(v279, v397));
    v288 = vsubq_s16(v279, v398);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v289 = vaddq_s16(v397, v248);
    v290 = vaddq_s16(v398, v248);
    v210.i64[0] = 0x10001000100010;
    v210.i64[1] = 0x10001000100010;
    v291 = vsubq_s16(v210, v399);
    v276.i64[0] = 0xF000F000F000FLL;
    v276.i64[1] = 0xF000F000F000FLL;
    v292 = vaddq_s16(v399, v276);
    v293 = vshlq_s16(vuzp1q_s16(v377, v378), v291);
    v294 = vshlq_s16(vuzp1q_s16(v375, v376), v291);
    v295 = vshlq_s16(vuzp1q_s16(v373, v374), v291);
    v296 = vshlq_s16(vuzp1q_s16(v260, v372), v291);
    v291.i64[0] = 0x10001000100010;
    v291.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v291, v400);
    v240.i64[0] = 0xF000F000F000FLL;
    v240.i64[1] = 0xF000F000F000FLL;
    v298 = vaddq_s16(v400, v240);
    v299 = vshlq_s16(v282, v297);
    v300 = vshlq_s16(v283, v297);
    v301 = vshlq_s16(vuzp1q_s16(v270, v269), v297);
    v302 = vshlq_s16(vuzp1q_s16(v273, v272), v297);
    v269.i64[0] = 0x10001000100010;
    v269.i64[1] = 0x10001000100010;
    v303 = vsubq_s16(v269, v401);
    v235.i64[0] = 0xF000F000F000FLL;
    v235.i64[1] = 0xF000F000F000FLL;
    v304 = vaddq_s16(v401, v235);
    v305 = vshlq_s16(vshlq_s16(vuzp1q_s16(v393, v395), vsubq_s16(v281, v408)), vaddq_s16(v408, v252));
    v306 = vshlq_s16(v287, v289);
    v307 = vshlq_s16(vshlq_s16(vuzp1q_s16(v385, v387), v288), v290);
    v308 = vshlq_s16(vshlq_s16(vuzp1q_s16(v381, v383), v288), v290);
    v309 = vshlq_s16(vshlq_s16(vuzp1q_s16(v379, v380), v288), v290);
    v310 = vshlq_s16(v300, v298);
    v311 = vshlq_s16(v302, v298);
    v312 = vshlq_u64(v176, v396);
    v313 = vuzp1q_s32(vzip1q_s64(v176, v312), vzip2q_s64(v176, v312));
    v314 = vshlq_u32(v313, v274);
    v315 = vshlq_s16(vshlq_s16(v286, v303), v304);
    v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v313, v314), vzip2q_s32(v313, v314)), v303), v304);
    v317 = vandq_s8(v305, v404);
    v318 = vdupq_lane_s64(v305.i64[0], 0);
    v319 = vaddq_s16(v317, v306);
    v320 = vandq_s8(v402, v318);
    v321 = vsubq_s16(vshlq_s16(v293, v292), v320);
    v322 = vsubq_s16(vshlq_s16(v294, v292), v320);
    v323 = vsubq_s16(vshlq_s16(v295, v292), v320);
    v324 = vsubq_s16(vshlq_s16(v296, v292), v320);
    v325 = vandq_s8(v403, v318);
    v326 = vsubq_s16(vshlq_s16(v299, v298), v325);
    v327 = vsubq_s16(v310, v325);
    v328 = vsubq_s16(vshlq_s16(v301, v298), v325);
    v329 = vandq_s8(v404, v318);
    v330 = vsubq_s16(v311, v325);
    v331 = vandq_s8(v405, v318);
    v332 = vsubq_s16(vshlq_s16(vshlq_s16(v284, v303), v304), v331);
    v333 = vsubq_s16(vshlq_s16(vshlq_s16(v285, v303), v304), v331);
    v334 = vsubq_s16(v315, v331);
    v335 = vsubq_s16(v316, v331);
    v336 = vsubq_s16(v307, v329);
    v337 = vsubq_s16(v308, v329);
    v338.i64[0] = 0x1000100010001;
    v338.i64[1] = 0x1000100010001;
    v339 = vsubq_s16(v319, v329);
    v340 = vsubq_s16(v309, v329);
    v278.i16[3] = v187;
    v341 = vdupq_lane_s64(v278.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v406, v338)))
    {
      v342 = vnegq_s16(vandq_s8(v407, v338));
      v343.i64[0] = v340.i64[0];
      v344.i64[1] = v339.i64[1];
      v343.i64[1] = v339.i64[0];
      v344.i64[0] = v340.i64[1];
      v345 = vbslq_s8(v342, v344, v339);
      v346 = vbslq_s8(v342, v343, v340);
      v344.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v344.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v347 = vandq_s8(vqtbl4q_s8(*(&v336 - 1), v344), v342);
      v409.val[0] = vaddq_s16(v345, vandq_s8(vqtbl4q_s8(*(&v336 - 1), xmmword_29D2F10B0), v342));
      v409.val[1] = vaddq_s16(v336, vandq_s8(vqtbl4q_s8(*(&v336 - 1), xmmword_29D2F10C0), v342));
      v409.val[2] = vaddq_s16(v337, v347);
      v409.val[3] = vaddq_s16(v346, v347);
      v348 = vandq_s8(vqtbl4q_s8(v409, v344), v342);
      v339 = vaddq_s16(v409.val[0], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10D0), v342));
      v336 = vaddq_s16(v409.val[1], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10E0), v342));
      v337 = vaddq_s16(v409.val[2], v348);
      v340 = vaddq_s16(v409.val[3], v348);
      v410.val[0] = vaddq_s16(v321, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F10B0), v342));
      v410.val[1] = vaddq_s16(v322, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F10F0), v342));
      v410.val[2] = vaddq_s16(v323, vandq_s8(vqtbl4q_s8(*v321.i8, v344), v342));
      v410.val[3] = vaddq_s16(v324, vandq_s8(vqtbl4q_s8(*v321.i8, xmmword_29D2F1100), v342));
      v349 = vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F10D0), v342);
      v409.val[0] = vandq_s8(vqtbl4q_s8(v410, v344), v342);
      v321 = vaddq_s16(v349, v410.val[0]);
      v322 = vaddq_s16(v410.val[1], v349);
      v323 = vaddq_s16(v410.val[2], v409.val[0]);
      v324 = vaddq_s16(v410.val[3], v409.val[0]);
      v410.val[0] = vaddq_s16(v326, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F0EB0), v342));
      v410.val[1] = vaddq_s16(v327, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F0FB0), v342));
      v410.val[2] = vaddq_s16(v328, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F10B0), v342));
      v410.val[3] = vaddq_s16(v330, vandq_s8(vqtbl4q_s8(*v326.i8, xmmword_29D2F10C0), v342));
      v409.val[1] = vandq_s8(vqtbl4q_s8(v410, v344), v342);
      v326 = vaddq_s16(v410.val[0], v409.val[1]);
      v327 = vaddq_s16(v410.val[1], v409.val[1]);
      v328 = vaddq_s16(v410.val[2], vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F0FE0), v342));
      v330 = vaddq_s16(v410.val[3], vandq_s8(vqtbl4q_s8(v410, xmmword_29D2F1110), v342));
      v409.val[2] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F0EB0), v342));
      v409.val[3] = vaddq_s16(v333, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F1120), v342));
      v350 = v407;
      v410.val[0] = vaddq_s16(v334, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F10B0), v342));
      v410.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*v332.i8, xmmword_29D2F10C0), v342));
      v351 = vandq_s8(vqtbl4q_s8(*(&v409 + 32), v344), v342);
      v332 = vaddq_s16(v409.val[2], v351);
      v333 = vaddq_s16(v409.val[3], v351);
      v334 = vaddq_s16(v410.val[0], vandq_s8(vqtbl4q_s8(*(&v409 + 32), xmmword_29D2F0FE0), v342));
      v335 = vaddq_s16(v410.val[1], vandq_s8(vqtbl4q_s8(*(&v409 + 32), xmmword_29D2F1130), v342));
    }

    else
    {
      v350 = v407;
    }

    v352 = vaddq_s16(v339, v341);
    v353 = vaddq_s16(v336, v341);
    v354 = vaddq_s16(v337, v341);
    v355 = vaddq_s16(v340, v341);
    v356 = vaddq_s16(v321, v341);
    v357 = vaddq_s16(v322, v341);
    v358 = vaddq_s16(v323, v341);
    v359 = vaddq_s16(v324, v341);
    v360 = vaddq_s16(v326, v341);
    v361 = vaddq_s16(v327, v341);
    v362 = vaddq_s16(v328, v341);
    v363 = vaddq_s16(v330, v341);
    v364 = vaddq_s16(v332, v341);
    v365 = vaddq_s16(v333, v341);
    v366 = vaddq_s16(v334, v341);
    v367 = vaddq_s16(v335, v341);
    v368.i64[0] = 0x10001000100010;
    v368.i64[1] = 0x10001000100010;
    v369 = vcgtq_u16(v368, v350);
    v370 = (a1 + 64);
    *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v352, xmmword_29D2F1140), v369), v352);
    *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1140), v369), v353);
    *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1140), v369), v354);
    *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1140), v369), v355);
    v371 = (a1 + a2);
    *v370 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v360, xmmword_29D2F1140), v369), v360);
    v370[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v361, xmmword_29D2F1140), v369), v361);
    v370[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v362, xmmword_29D2F1140), v369), v362);
    v370[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v363, xmmword_29D2F1140), v369), v363);
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v356, xmmword_29D2F1140), v369), v356);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v357, xmmword_29D2F1140), v369), v357);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v358, xmmword_29D2F1140), v369), v358);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v359, xmmword_29D2F1140), v369), v359);
    v371 += 4;
    *v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v364, xmmword_29D2F1140), v369), v364);
    v371[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1140), v369), v365);
    v371[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1140), v369), v366);
    v371[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1140), v369), v367);
  }

  return v177;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x4_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v55 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v47, a5);
  }

  v39 = v48;
  v40 = v47;
  v41 = v50;
  v42 = v49;
  v44 = v51;
  v43 = v52;
  v45 = v54;
  v46 = v53;
  v10 = a3 + 32;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v47, a5);
  }

  v37 = v48;
  v38 = v47;
  v35 = v50;
  v36 = v49;
  v33 = v52;
  v34 = v51;
  v31 = v54;
  v32 = v53;
  v11 = a3 + 64;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v47, a5);
  }

  v29 = v48;
  v30 = v47;
  v27 = v50;
  v28 = v49;
  v25 = v52;
  v26 = v51;
  v23 = v54;
  v24 = v53;
  v12 = a3 + 96;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v47, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v47, a5);
  }

  v14 = v47;
  v15 = v48;
  v16 = v49;
  v17 = v50;
  v18 = v51;
  v19 = v52;
  v20 = v53;
  v21 = v54;
  *a1 = vmovn_s32(v40);
  a1[1] = vmovn_s32(v39);
  a1[2] = vmovn_s32(v42);
  a1[3] = vmovn_s32(v41);
  a1[4] = vmovn_s32(v44);
  a1[5] = vmovn_s32(v43);
  a1[6] = vmovn_s32(v46);
  a1[7] = vmovn_s32(v45);
  a1[8] = vmovn_s32(v30);
  a1[9] = vmovn_s32(v29);
  a1[10] = vmovn_s32(v28);
  a1[11] = vmovn_s32(v27);
  a1[12] = vmovn_s32(v26);
  a1[13] = vmovn_s32(v25);
  a1[14] = vmovn_s32(v24);
  a1[15] = vmovn_s32(v23);
  v22 = (a1 + a2);
  *v22 = vmovn_s32(v38);
  v22[1] = vmovn_s32(v37);
  v22[2] = vmovn_s32(v36);
  v22[3] = vmovn_s32(v35);
  v22[4] = vmovn_s32(v34);
  v22[5] = vmovn_s32(v33);
  v22[6] = vmovn_s32(v32);
  v22[7] = vmovn_s32(v31);
  v22[8] = vmovn_s32(v14);
  v22[9] = vmovn_s32(v15);
  v22[10] = vmovn_s32(v16);
  v22[11] = vmovn_s32(v17);
  v22[12] = vmovn_s32(v18);
  v22[13] = vmovn_s32(v19);
  v22[14] = vmovn_s32(v20);
  v22[15] = vmovn_s32(v21);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 128, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 128, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 128, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 128, a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s64(*a3, 0);
  v8 = vsubq_s16(*(a3 + 16), v7);
  v9 = vsubq_s16(*(a3 + 32), v7);
  v475.val[0] = *a3;
  v475.val[1] = *(a3 + 16);
  v475.val[2] = *(a3 + 32);
  v475.val[3] = *(a3 + 48);
  v10 = vsubq_s16(v475.val[3], v7);
  v448 = *(a3 + 64);
  v449 = *(a3 + 80);
  v450 = *(a3 + 96);
  v11 = vsubq_s16(v450, v7);
  v456 = *(a3 + 112);
  v485 = vsubq_s16(*a3, v7);
  v12 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v8), v9), v10), xmmword_29D2F1150);
  v13 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v8), v9), v10), xmmword_29D2F1150);
  v14 = vpmaxq_s16(v12, v12);
  v15 = vpminq_s16(v13, v13);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v17 = vmaxq_s16(v14, v16);
  v16.i64[0] = 0x8000800080008000;
  v16.i64[1] = 0x8000800080008000;
  v18 = vminq_s16(v15, v16);
  v19 = vzip1q_s16(v14, v15);
  v20.i64[0] = 0x10001000100010;
  v20.i64[1] = 0x10001000100010;
  v21 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v19)), vceqzq_s16(v19));
  v482 = vsubq_s16(v448, v7);
  v488 = vsubq_s16(v456, v7);
  v489 = vsubq_s16(v449, v7);
  v22 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v482, v489), v11), v488), xmmword_29D2F1150);
  v23 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v482, v489), v11), v488), xmmword_29D2F1150);
  v24 = vpmaxq_s16(v22, v22);
  v25 = vpminq_s16(v23, v23);
  v26 = vmaxq_s16(v17, v24);
  v27 = vminq_s16(v18, v25);
  v28 = vzip1q_s16(v24, v25);
  v29 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v28)), vceqzq_s16(v28));
  v30 = vsubq_s16(*(a3 + a4), v7);
  v31 = vsubq_s16(*(a3 + a4 + 16), v7);
  v444 = *(a3 + a4);
  v446 = *(a3 + a4 + 16);
  v447 = *(a3 + a4 + 32);
  v32 = vsubq_s16(v447, v7);
  v454 = *(a3 + a4 + 48);
  v33 = vsubq_s16(v454, v7);
  v34 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v35 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v30, v31), v32), v33), xmmword_29D2F1150);
  v36 = vpmaxq_s16(v34, v34);
  v37 = vpminq_s16(v35, v35);
  v38 = vmaxq_s16(v26, v36);
  v39 = vminq_s16(v27, v37);
  v40 = vzip1q_s16(v36, v37);
  v41 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v40)), vceqzq_s16(v40));
  v42 = *(a3 + a4 + 96);
  v43 = *(a3 + a4 + 80);
  v44 = *(a3 + a4 + 64);
  v45 = vsubq_s16(v44, v7);
  v46 = vsubq_s16(v43, v7);
  v47 = vsubq_s16(v42, v7);
  v452 = *(a3 + a4 + 112);
  v48 = vsubq_s16(v452, v7);
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v45, v46), v47), v48), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v45, v46), v47), v48), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vmaxq_s16(v38, v51);
  v54 = vminq_s16(v39, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v20, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v21, v21);
  v58 = vpmaxq_s16(v29, v29);
  v59 = vpmaxq_s16(v41, v41);
  v60 = vpmaxq_s16(v56, v56);
  v61 = vmaxq_s16(vmaxq_s16(v57, v58), vmaxq_s16(v59, v60));
  v62 = vclzq_s16(vsubq_s16(v53, v54));
  v63 = vsubq_s16(v20, v62);
  v64 = vcgtq_s16(v61, v63);
  v65 = vminq_s16(v63, v61);
  v61.i64[0] = 0x8000800080008;
  v61.i64[1] = 0x8000800080008;
  v66 = vandq_s8(v64, v61);
  v67.i64[0] = 0x3000300030003;
  v67.i64[1] = 0x3000300030003;
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v57), v67), 0);
  v69 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v58), v67), 0);
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v59), v67), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v60), v67), 0);
  v29.i64[0] = 0x4000400040004;
  v29.i64[1] = 0x4000400040004;
  v72 = vbicq_s8(v29, vceqq_s16(vaddq_s16(v71, v70), vnegq_s16(vaddq_s16(v68, v69))));
  v73 = vorrq_s8(v72, vorrq_s8(vandq_s8(vceqzq_s16(v65), v67), v66));
  v511 = v7;
  v491 = v485;
  v493 = v8;
  v495 = v9;
  v497 = v10;
  v503 = v30;
  v507 = v45;
  v74 = vmaxvq_s16(v65);
  v30.i64[0] = 0xF000F000F000FLL;
  v30.i64[1] = 0xF000F000F000FLL;
  v45.i64[0] = -1;
  v45.i64[1] = -1;
  v75 = vshlq_s16(v45, vsubq_s16(v30, v62));
  v499 = v482;
  v500 = v489;
  v501 = v11;
  v469 = v33;
  v471 = v11;
  v502 = v488;
  v465 = v31;
  v467 = v32;
  v504 = v31;
  v505 = v32;
  v506 = v33;
  v473 = v46;
  v508 = v46;
  if (a5)
  {
    v76 = a6 == 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v76;
  v457 = v47;
  v459 = v48;
  v509 = v47;
  v510 = v48;
  v518 = v54;
  v517 = v65;
  v78 = vandq_s8(vsubq_s16(v75, v54), v64);
  v461 = v53;
  v463 = v73;
  v519 = v53;
  v520 = v78;
  v476 = v64;
  v478 = vsubq_s16(v65, v68);
  v513 = v478;
  v483 = vsubq_s16(v65, v69);
  v514 = v483;
  v480 = vsubq_s16(v65, v70);
  v515 = v480;
  v486 = vsubq_s16(v65, v71);
  v516 = v486;
  v512 = v73;
  if (v74)
  {
    v79 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v80 = vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140));
    v81 = vsubq_s16(v501, vqtbl1q_s8(v501, xmmword_29D2F1140));
    v82 = vsubq_s16(v502, vqtbl1q_s8(v502, xmmword_29D2F1140));
    v83 = vsubq_s16(v504, vqtbl1q_s8(v504, xmmword_29D2F1140));
    v84 = vsubq_s16(v505, vqtbl1q_s8(v505, xmmword_29D2F1140));
    v85 = vsubq_s16(v506, vqtbl1q_s8(v506, xmmword_29D2F1140));
    v437 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1140));
    v438 = vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140));
    v439 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1140));
    v440 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1140));
    v86 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v438, v437), v440), v439), xmmword_29D2F1150);
    v87 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v438, v437), v440), v439), xmmword_29D2F1150);
    v88 = vpmaxq_s16(v86, v86);
    v89 = vpminq_s16(v87, v87);
    v90.i64[0] = 0x8000800080008000;
    v90.i64[1] = 0x8000800080008000;
    v91 = vmaxq_s16(v88, v90);
    v92.i64[0] = 0x8000800080008000;
    v92.i64[1] = 0x8000800080008000;
    v93 = vminq_s16(v89, v92);
    v94 = vzip1q_s16(v88, v89);
    v95.i64[0] = 0x10001000100010;
    v95.i64[1] = 0x10001000100010;
    v96 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v94)), vceqzq_s16(v94));
    v97 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v82);
    v435 = v80;
    v436 = v79;
    v98 = vminq_s16(v79, v80);
    v99 = v81;
    v100 = vqtbl1q_s8(v97, xmmword_29D2F1150);
    v101 = vqtbl1q_s8(vminq_s16(vminq_s16(v98, v81), v82), xmmword_29D2F1150);
    v102 = vpmaxq_s16(v100, v100);
    v103 = vpminq_s16(v101, v101);
    v104 = vmaxq_s16(v91, v102);
    v105 = vminq_s16(v93, v103);
    v106 = vzip1q_s16(v102, v103);
    v107 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v106)), vceqzq_s16(v106));
    v108 = vsubq_s16(v503, vqtbl1q_s8(v503, xmmword_29D2F1140));
    v109 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v108, v83), v84), v85);
    v110 = v72;
    v434 = v83;
    v111 = vminq_s16(v108, v83);
    v112 = v85;
    v113 = vqtbl1q_s8(v109, xmmword_29D2F1150);
    v114 = vqtbl1q_s8(vminq_s16(vminq_s16(v111, v84), v85), xmmword_29D2F1150);
    v115 = vpmaxq_s16(v113, v113);
    v116 = vpminq_s16(v114, v114);
    v117 = vmaxq_s16(v104, v115);
    v118 = vminq_s16(v105, v116);
    v119 = vzip1q_s16(v115, v116);
    v120 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v119)), vceqzq_s16(v119));
    v121 = vsubq_s16(v507, vqtbl1q_s8(v507, xmmword_29D2F1140));
    v442 = vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1140));
    v443 = vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1140));
    v79.i64[0] = 0x4000400040004;
    v79.i64[1] = 0x4000400040004;
    v441 = vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1140));
    v122 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v121, v443), v442), v441), xmmword_29D2F1150);
    v123 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v121, v443), v442), v441), xmmword_29D2F1150);
    v124 = vpmaxq_s16(v122, v122);
    v125 = vpminq_s16(v123, v123);
    v126 = vmaxq_s16(v117, v124);
    v127 = vminq_s16(v118, v125);
    v128 = vzip1q_s16(v124, v125);
    v129 = vbicq_s8(vsubq_s16(v95, vclsq_s16(v128)), vceqzq_s16(v128));
    v130 = vpmaxq_s16(v96, v96);
    v131 = vpmaxq_s16(v107, v107);
    v132 = vpmaxq_s16(v120, v120);
    v133 = vpmaxq_s16(v129, v129);
    v134 = vmaxq_s16(vmaxq_s16(v130, v131), vmaxq_s16(v132, v133));
    v135 = vclzq_s16(vsubq_s16(v126, v127));
    v136 = vsubq_s16(v95, v135);
    v137 = vcgtq_s16(v134, v136);
    v138 = vminq_s16(v136, v134);
    v134.i64[0] = 0x18001800180018;
    v134.i64[1] = 0x18001800180018;
    v139 = vbslq_s8(v137, v134, v95);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v138, v130), v67), 0);
    v141 = vmaxq_s16(vminq_s16(vsubq_s16(v138, v131), v67), 0);
    v142 = vmaxq_s16(vminq_s16(vsubq_s16(v138, v132), v67), 0);
    v143 = vmaxq_s16(vminq_s16(vsubq_s16(v138, v133), v67), 0);
    v144 = vbicq_s8(v79, vceqq_s16(vaddq_s16(v143, v142), vnegq_s16(vaddq_s16(v140, v141))));
    v145 = vsubq_s16(v138, v140);
    v146 = vsubq_s16(v138, v141);
    v147 = vsubq_s16(v138, v142);
    v148 = vsubq_s16(v138, v143);
    v149.i64[0] = 0x7000700070007;
    v149.i64[1] = 0x7000700070007;
    v150 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v65, v476), v478, v149), vshlq_n_s16(vaddq_s16(vaddq_s16(v480, v483), v486), 3uLL)), vaddq_s16(v110, v110)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v138, vceqzq_s16((*&v139 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v145, v149), vshlq_n_s16(vaddq_s16(vaddq_s16(v147, v146), v148), 3uLL)), vaddq_s16(v144, v144))).i64[0], 0);
    if (vaddvq_s16(v150))
    {
      v491 = vbslq_s8(v150, v438, v491);
      v493 = vbslq_s8(v150, v437, v8);
      v495 = vbslq_s8(v150, v440, v495);
      v497 = vbslq_s8(v150, v439, v497);
      v499 = vbslq_s8(v150, v436, v499);
      v500 = vbslq_s8(v150, v435, v489);
      v501 = vbslq_s8(v150, v99, v471);
      v502 = vbslq_s8(v150, v82, v488);
      v503 = vbslq_s8(v150, v108, v503);
      v504 = vbslq_s8(v150, v434, v465);
      v151.i64[0] = 0x3000300030003;
      v151.i64[1] = 0x3000300030003;
      v152 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v138), v151), v139), v144);
      v151.i64[0] = 0xF000F000F000FLL;
      v151.i64[1] = 0xF000F000F000FLL;
      v153 = vsubq_s16(v151, v135);
      v151.i64[0] = -1;
      v151.i64[1] = -1;
      v505 = vbslq_s8(v150, v84, v467);
      v506 = vbslq_s8(v150, v112, v469);
      v507 = vbslq_s8(v150, v121, v507);
      v508 = vbslq_s8(v150, v443, v473);
      v509 = vbslq_s8(v150, v442, v457);
      v510 = vbslq_s8(v150, v441, v459);
      v513 = vbslq_s8(v150, v145, v478);
      v514 = vbslq_s8(v150, v146, v483);
      v515 = vbslq_s8(v150, v147, v480);
      v516 = vbslq_s8(v150, v148, v486);
      v519 = vbslq_s8(v150, v126, v461);
      v520 = vbslq_s8(v150, vandq_s8(vsubq_s16(vshlq_s16(v151, v153), v127), v137), v78);
      v518 = vbslq_s8(v150, v127, v54);
      v517 = vbslq_s8(v150, v138, v65);
      v511 = vbslq_s8(v150, vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1140)), v511);
      v512 = vbslq_s8(v150, v152, v463);
    }

    if (v77)
    {
      v154 = v514;
      v155 = v515;
      v156 = v517;
      v157 = v516;
      v159 = v499;
      v158 = v500;
      v160 = v501;
      v161 = v502;
      v162 = v503;
      v163 = v504;
      v164 = v505;
      v165 = v506;
      v166 = v507;
      v167 = v508;
      v168 = v509;
      v169 = v510;
      v170 = v513;
      v171 = v512;
      v172 = v491;
      v173 = v493;
      v175 = v495;
      v174 = v497;
    }

    else
    {
      v522.val[0] = v448;
      v522.val[1] = v449;
      v522.val[2] = v450;
      v522.val[3].i64[0] = v456.i64[0];
      v522.val[3].i64[1] = v475.val[3].i64[1];
      v177 = vqtbl4q_s8(v522, xmmword_29D2F1100);
      v487 = vsubq_s16(v448, vqtbl4q_s8(v522, xmmword_29D2F10B0));
      v490 = vsubq_s16(v449, vqtbl4q_s8(v522, xmmword_29D2F10F0));
      v178 = vsubq_s16(v450, vqtbl4q_s8(v522, xmmword_29D2F1160));
      v179 = vqtbl4q_s8(v475, xmmword_29D2F1160);
      v180 = vsubq_s16(v475.val[0], vqtbl4q_s8(v475, xmmword_29D2F10B0));
      v181 = vsubq_s16(v475.val[3], v179);
      v521.val[0] = v444;
      v521.val[1] = v446;
      v521.val[2] = v447;
      v521.val[3].i64[0] = v454.i64[0];
      v521.val[3].i64[1] = v475.val[3].i64[1];
      v522.val[0] = vqtbl4q_s8(v521, xmmword_29D2F10C0);
      v182 = vsubq_s16(v444, vqtbl4q_s8(v521, xmmword_29D2F1170));
      v183 = vsubq_s16(v446, vqtbl4q_s8(v521, xmmword_29D2F1180));
      v521.val[3] = vsubq_s16(v447, vqtbl4q_s8(v521, xmmword_29D2F10B0));
      v184 = v452.i64[0];
      v185 = v475.val[3].i64[1];
      v186 = vsubq_s16(v44, vqtbl4q_s8(*v44.i8, xmmword_29D2F1170));
      v522.val[2] = vsubq_s16(v43, vqtbl4q_s8(*v44.i8, xmmword_29D2F1120));
      v187 = vsubq_s16(v42, vqtbl4q_s8(*v44.i8, xmmword_29D2F10B0));
      v188.i64[0] = v181.i64[0];
      v188.i64[1] = v180.i64[0];
      v180.i64[0] = v181.i64[1];
      v189 = vsubq_s16(v452, vqtbl4q_s8(*v44.i8, xmmword_29D2F10C0));
      v481 = vsubq_s16(v475.val[2], v179);
      v484 = vsubq_s16(v475.val[1], vqtbl4q_s8(v475, xmmword_29D2F10C0));
      v479 = v180;
      v190 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v180, v484), v481), v188), xmmword_29D2F1150);
      v191 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v180, v484), v481), v188), xmmword_29D2F1150);
      v192 = vpmaxq_s16(v190, v190);
      v193 = vpminq_s16(v191, v191);
      v179.i64[0] = 0x8000800080008000;
      v179.i64[1] = 0x8000800080008000;
      v521.val[0] = vmaxq_s16(v192, v179);
      v179.i64[0] = 0x8000800080008000;
      v179.i64[1] = 0x8000800080008000;
      v521.val[1] = vminq_s16(v193, v179);
      v194 = vzip1q_s16(v192, v193);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v195 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v194)), vceqzq_s16(v194));
      v521.val[2] = vpmaxq_s16(v195, v195);
      v196 = v178;
      v197 = vsubq_s16(v456, v177);
      v198 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v487, v490), v178), v197), xmmword_29D2F1150);
      v199 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v487, v490), v178), v197), xmmword_29D2F1150);
      v200 = vpmaxq_s16(v198, v198);
      v201 = vpminq_s16(v199, v199);
      v521.val[0] = vmaxq_s16(v521.val[0], v200);
      v521.val[1] = vminq_s16(v521.val[1], v201);
      v202 = vzip1q_s16(v200, v201);
      v203 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v202)), vceqzq_s16(v202));
      v204 = vpmaxq_s16(v203, v203);
      v477 = v182;
      v472 = v521.val[3];
      v474 = v183;
      v468 = v186;
      v470 = vsubq_s16(v454, v522.val[0]);
      v205 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v182, v183), v521.val[3]), v470), xmmword_29D2F1150);
      v206 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v182, v183), v521.val[3]), v470), xmmword_29D2F1150);
      v207 = vpmaxq_s16(v205, v205);
      v208 = vpminq_s16(v206, v206);
      v521.val[0] = vmaxq_s16(v521.val[0], v207);
      v521.val[1] = vminq_s16(v521.val[1], v208);
      v209 = vzip1q_s16(v207, v208);
      v210 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v209)), vceqzq_s16(v209));
      v211 = vpmaxq_s16(v210, v210);
      v464 = v187;
      v466 = v522.val[2];
      v212 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v186, v522.val[2]), v187), v189), xmmword_29D2F1150);
      v213 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v186, v522.val[2]), v187), v189), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v212, v212);
      v215 = vpminq_s16(v213, v213);
      v216 = vmaxq_s16(v521.val[0], v214);
      v217 = vzip1q_s16(v214, v215);
      v218 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v217)), vceqzq_s16(v217));
      v219 = vpmaxq_s16(v218, v218);
      v521.val[0] = vmaxq_s16(vmaxq_s16(v521.val[2], v204), vmaxq_s16(v211, v219));
      v460 = vminq_s16(v521.val[1], v215);
      v462 = v189;
      v451 = vclzq_s16(vsubq_s16(v216, v460));
      v521.val[1] = vsubq_s16(v179, v451);
      v220 = vcgtq_s16(v521.val[0], v521.val[1]);
      v221 = vminq_s16(v521.val[1], v521.val[0]);
      v521.val[0] = vsubq_s16(v221, v521.val[2]);
      v521.val[2].i64[0] = 0x3000300030003;
      v521.val[2].i64[1] = 0x3000300030003;
      v521.val[0] = vmaxq_s16(vminq_s16(v521.val[0], v521.val[2]), 0);
      v521.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v221, v204), v521.val[2]), 0);
      v222 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v211), v521.val[2]), 0);
      v223 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v219), v521.val[2]), 0);
      v224 = vsubq_s16(v221, v521.val[0]);
      v225 = vsubq_s16(v221, v222);
      v522.val[0] = vsubq_s16(v221, v223);
      v219.i64[0] = 0x4000400040004;
      v219.i64[1] = 0x4000400040004;
      v226 = vbicq_s8(v219, vceqq_s16(vaddq_s16(v223, v222), vnegq_s16(vaddq_s16(v521.val[0], v521.val[1]))));
      v222.i64[0] = 0x7000700070007;
      v222.i64[1] = 0x7000700070007;
      v458 = vsubq_s16(v221, v521.val[1]);
      v455 = v225;
      v453 = v522.val[0];
      v227 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v221, v220), v224, v222), vshlq_n_s16(vaddq_s16(vaddq_s16(v225, v458), v522.val[0]), 3uLL)), vaddq_s16(v226, v226));
      v171 = v512;
      v170 = v513;
      v521.val[0] = vandq_s8(v512, v521.val[2]);
      v521.val[2].i64[0] = 0x2000200020002;
      v521.val[2].i64[1] = 0x2000200020002;
      v228 = vandq_s8(vceqq_s16(v521.val[0], v521.val[2]), v179);
      v521.val[0].i64[0] = 0x8000800080008;
      v521.val[0].i64[1] = 0x8000800080008;
      v229 = vandq_s8(vaddq_s16(v171, v171), v521.val[0]);
      v522.val[0] = vceqzq_s16(vandq_s8(v512, v521.val[0]));
      v156 = v517;
      v157 = v516;
      v230 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v517, v522.val[0]), v229), v228), v513, v222);
      v154 = v514;
      v155 = v515;
      v231 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v230, vshlq_n_s16(vaddq_s16(vaddq_s16(v515, v514), v516), 3uLL)), v227).i64[0], 0);
      v159 = v499;
      v158 = v500;
      v160 = v501;
      v161 = v502;
      v162 = v503;
      v163 = v504;
      v164 = v505;
      v166 = v507;
      v167 = v508;
      v168 = v509;
      v169 = v510;
      v172 = v491;
      v173 = v493;
      v175 = v495;
      v174 = v497;
      if (vaddvq_s16(v231))
      {
        v445 = v224;
        v232.i64[0] = 0x2000200020002;
        v232.i64[1] = 0x2000200020002;
        v233.i64[0] = 0x9000900090009;
        v233.i64[1] = 0x9000900090009;
        v234 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v221), v232), vsubq_s16(vandq_s8(v220, v233), vmvnq_s8(v220))), v226);
        v232.i64[0] = 0xF000F000F000FLL;
        v232.i64[1] = 0xF000F000F000FLL;
        v235.i64[0] = -1;
        v235.i64[1] = -1;
        v172 = vbslq_s8(v231, v479, v491);
        v173 = vbslq_s8(v231, v484, v493);
        v175 = vbslq_s8(v231, v481, v495);
        v174 = vbslq_s8(v231, v188, v497);
        v159 = vbslq_s8(v231, v487, v499);
        v158 = vbslq_s8(v231, v490, v500);
        v160 = vbslq_s8(v231, v196, v501);
        v161 = vbslq_s8(v231, v197, v502);
        v162 = vbslq_s8(v231, v477, v503);
        v163 = vbslq_s8(v231, v474, v504);
        v164 = vbslq_s8(v231, v472, v505);
        v166 = vbslq_s8(v231, v468, v507);
        v167 = vbslq_s8(v231, v466, v508);
        v168 = vbslq_s8(v231, v464, v509);
        v169 = vbslq_s8(v231, v462, v510);
        v170 = vbslq_s8(v231, v445, v513);
        v154 = vbslq_s8(v231, v458, v514);
        v155 = vbslq_s8(v231, v455, v515);
        v157 = vbslq_s8(v231, v453, v516);
        v156 = vbslq_s8(v231, v221, v517);
        v171 = vbslq_s8(v231, v234, v512);
        v511 = vbslq_s8(v231, vextq_s8(v475.val[3], v475.val[3], 8uLL), v511);
        v518 = vbslq_s8(v231, v460, v518);
        v519 = vbslq_s8(v231, v216, v519);
        v520 = vbslq_s8(v231, vandq_s8(vsubq_s16(vshlq_s16(v235, vsubq_s16(v232, v451)), v460), v220), v520);
        v499 = v159;
        v514 = v154;
        v515 = v155;
        v516 = v157;
        v517 = v156;
        v513 = v170;
        v512 = v171;
        v165 = vbslq_s8(v231, v470, v506);
      }

      else
      {
        v165 = v506;
      }
    }

    v236 = vandq_s8(v520, vceqq_s16(v156, v170));
    v492 = vaddq_s16(v236, v172);
    v494 = vaddq_s16(v173, v236);
    v496 = vaddq_s16(v175, v236);
    v498 = vaddq_s16(v174, v236);
    v237 = vandq_s8(v520, vceqq_s16(v156, v154));
    v499 = vaddq_s16(v159, v237);
    v500 = vaddq_s16(v158, v237);
    v501 = vaddq_s16(v160, v237);
    v502 = vaddq_s16(v161, v237);
    v238 = vandq_s8(v520, vceqq_s16(v156, v155));
    v503 = vaddq_s16(v162, v238);
    v504 = vaddq_s16(v163, v238);
    v505 = vaddq_s16(v164, v238);
    v506 = vaddq_s16(v165, v238);
    v239 = vandq_s8(v520, vceqq_s16(v156, v157));
    v507 = vaddq_s16(v166, v239);
    v508 = vaddq_s16(v167, v239);
    v509 = vaddq_s16(v168, v239);
    v510 = vaddq_s16(v169, v239);
    v239.i64[0] = 0x8000800080008;
    v239.i64[1] = 0x8000800080008;
    v240.i64[0] = 0x3000300030003;
    v240.i64[1] = 0x3000300030003;
    v241.i64[0] = 0x2000200020002;
    v241.i64[1] = 0x2000200020002;
    v242 = vceqq_s16(vandq_s8(v171, v240), v241);
    v241.i64[0] = 0x10001000100010;
    v241.i64[1] = 0x10001000100010;
    v243 = vandq_s8(v242, v241);
    v241.i64[0] = 0x7000700070007;
    v241.i64[1] = 0x7000700070007;
    v244 = vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v155, v154), v157), 3uLL), v170, v241), vaddq_s16(vaddq_s16(vandq_s8(vaddq_s16(v171, v171), v239), vbicq_s8(v156, vceqzq_s16(vandq_s8(v171, v239)))), v243));
    v245 = vpaddq_s16(v244, v244);
    if ((vpaddq_s16(v245, v245).i16[0] - 925) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v246 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v247 = 8 * (a1 & 7);
      if (v247)
      {
        v248 = *v246 & ~(-1 << v247);
      }

      else
      {
        v248 = 0;
      }

      *a2 = 0;
      v249 = v511.i64[0];
      v250.i32[0] = v156.u16[0];
      v250.i32[1] = v156.u16[1];
      v251 = vceqz_s32(vand_s8(v250, 0xFFFF0000FFFFLL));
      v252.i64[0] = v251.i32[0];
      v252.i64[1] = v251.i32[1];
      v253 = v252;
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      v255 = vand_s8(vadd_s32(v250, -1), 0xF0000000FLL);
      v252.i64[0] = v255.u32[0];
      v252.i64[1] = v255.u32[1];
      v256 = vbicq_s8(vshlq_u64(v252, xmmword_29D2F1190), v253);
      if (v156.i16[2])
      {
        v257 = (v156.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v257 = 0;
      }

      if (v156.i16[3])
      {
        v258 = ((v156.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v258 = 0;
      }

      v259 = vorrq_s8(vdupq_laneq_s64(v256, 1), v256).u64[0] | v257 | v258 | ((v171.i8[6] & 0x1F) << 15) | v171.i8[0] & 0x1F | (32 * (v171.i8[2] & 0x1F)) & 0x83FF | ((v171.i8[4] & 0x1F) << 10);
      v260 = v248 | (v259 << v247);
      if (v247 >= 0x1C)
      {
        *v246 = v260;
        v260 = v259 >> (-8 * (a1 & 7u));
      }

      v261 = v249 | (WORD1(v249) << 16) | (WORD2(v249) << 32) | (HIWORD(v249) << 48);
      v262 = (v247 + 36) & 0x3C;
      *(v246 + (((v247 + 36) >> 3) & 8)) = v260 | (v261 << v262);
      v263 = v247 + 100;
      v264 = vsubq_s16(v517, v513);
      v265 = vsubq_s16(v517, v514);
      v266 = vsubq_s16(v517, v515);
      v267 = vsubq_s16(v517, v516);
      *v264.i8 = vqmovn_u16(v264);
      *v265.i8 = vqmovn_u16(v265);
      *v266.i8 = vqmovn_u16(v266);
      *v267.i8 = vqmovn_u16(v267);
      v268 = vtrn1q_s8(v264, v265);
      v269 = vtrn2q_s8(v264, v265);
      v270 = vtrn1q_s8(v266, v267);
      v271 = vtrn2q_s8(v266, v267);
      v272 = vzip1q_s16(v269, v271);
      v273 = vtrn2q_s16(v269, v271);
      v269.i64[0] = vzip1q_s32(vzip1q_s16(v268, v270), v272).u64[0];
      v273.i64[0] = vzip1q_s32(vtrn2q_s16(v268, v270), v273).u64[0];
      v266.i64[0] = 0x202020202020202;
      v266.i64[1] = 0x202020202020202;
      v274 = vandq_s8(vmovl_s16(vtst_s16(*v512.i8, 0x4000400040004)), v266);
      v266.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v266.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v275 = vshlq_u8(v254, vorrq_s8(v274, v266));
      v276 = vmovl_u8(vand_s8(*v275.i8, *v269.i8));
      v277 = vmovl_u8(vand_s8(*&vextq_s8(v275, v275, 8uLL), *v273.i8));
      v278 = vmovl_u8(*v274.i8);
      v279 = vmovl_high_u8(v274);
      v280 = vpaddq_s16(vshlq_u16(v276, vtrn1q_s16(0, v278)), vshlq_u16(v277, vtrn1q_s16(0, v279)));
      v281 = vpaddq_s16(v278, v279);
      v282 = vmovl_u16(*v281.i8);
      v283 = vmovl_high_u16(v281);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vtrn1q_s32(0, v282)), vshlq_u32(vmovl_high_u16(v280), vtrn1q_s32(0, v283)));
      v285 = vpaddq_s32(v282, v283);
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v247 + 100) & 0x3C;
      v293 = (v290.i64[0] << v292) | (v261 >> -v262);
      if ((v291.i64[0] + v292) >= 0x40)
      {
        *(v246 + ((v263 >> 3) & 0x18)) = v293;
        v293 = v290.i64[0] >> -v292;
      }

      v294 = v291.i64[0] + v263;
      v295 = v293 | (v290.i64[1] << v294);
      if ((v294 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v246 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v295;
        v295 = v290.i64[1] >> -(v294 & 0x3F);
        if ((v294 & 0x3F) == 0)
        {
          v295 = 0;
        }
      }

      v296 = v294 + v291.i64[1];
      v297.i64[0] = 0x8000800080008;
      v297.i64[1] = 0x8000800080008;
      v298.i64[0] = -1;
      v298.i64[1] = -1;
      v299 = vandq_s8(vextq_s8(vtstq_s16(v512, v297), 0, 8uLL), v517);
      v300.i64[0] = 0xF000F000F000FLL;
      v300.i64[1] = 0xF000F000F000FLL;
      v301 = vandq_s8(vshlq_u16(v298, vaddq_s16(v299, v300)), v520);
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
      v311 = (v309.i64[0] << v296) | v295;
      if (v310.i64[0] + (v296 & 0x3F) >= 0x40)
      {
        *(v246 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        v311 = v309.i64[0] >> -(v296 & 0x3F);
        if ((v296 & 0x3F) == 0)
        {
          v311 = 0;
        }
      }

      v312 = v310.i64[0] + v296;
      v313 = v311 | (v309.i64[1] << v312);
      if ((v312 & 0x3F) + v310.i64[1] >= 0x40)
      {
        *(v246 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
        v313 = v309.i64[1] >> -(v312 & 0x3F);
        if ((v312 & 0x3F) == 0)
        {
          v313 = 0;
        }
      }

      v314 = v312 + v310.i64[1];
      v315 = vextq_s8(0, v513, 8uLL);
      v316.i64[0] = 0xF000F000F000FLL;
      v316.i64[1] = 0xF000F000F000FLL;
      v317.i64[0] = -1;
      v317.i64[1] = -1;
      v318 = vandq_s8(vshlq_u16(v317, vaddq_s16(v315, v316)), v492);
      v319 = vmovl_u16(*v315.i8);
      v320 = vmovl_high_u16(v315);
      v321 = vpaddq_s32(vmovl_u16(*v318.i8), vshlq_u32(vmovl_high_u16(v318), vtrn1q_s32(0, v320)));
      v322 = vpaddq_s32(v319, v320);
      v323.i64[0] = v321.u32[0];
      v323.i64[1] = v321.u32[1];
      v324 = v323;
      v323.i64[0] = v321.u32[2];
      v323.i64[1] = v321.u32[3];
      v325 = v323;
      v323.i64[0] = v322.u32[0];
      v323.i64[1] = v322.u32[1];
      v326 = v323;
      v323.i64[0] = v322.u32[2];
      v323.i64[1] = v322.u32[3];
      v327 = vpaddq_s64(vshlq_u64(v324, vzip1q_s64(0, v326)), vshlq_u64(v325, vzip1q_s64(0, v323)));
      v328 = vpaddq_s64(v326, v323);
      v329 = (v327.i64[0] << v314) | v313;
      if (v328.i64[0] + (v314 & 0x3F) >= 0x40)
      {
        *(v246 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v327.i64[0] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = v328.i64[0] + v314;
      v331 = v329 | (v327.i64[1] << v330);
      if ((v330 & 0x3F) + v328.i64[1] >= 0x40)
      {
        *(v246 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v327.i64[1] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330 + v328.i64[1];
      v333.i64[0] = 0xF000F000F000FLL;
      v333.i64[1] = 0xF000F000F000FLL;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v513, v333)), v494);
      v336 = vmovl_u16(*v513.i8);
      v337 = vmovl_high_u16(v513);
      v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v335.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v335), vtrn1q_s32(0, v337)));
      v339 = vpaddq_s32(v336, v337);
      v340.i64[0] = v338.u32[0];
      v340.i64[1] = v338.u32[1];
      v341 = v340;
      v340.i64[0] = v338.u32[2];
      v340.i64[1] = v338.u32[3];
      v342 = v340;
      v340.i64[0] = v339.u32[0];
      v340.i64[1] = v339.u32[1];
      v343 = v340;
      v340.i64[0] = v339.u32[2];
      v340.i64[1] = v339.u32[3];
      v344 = vpaddq_s64(vshlq_u64(v341, vzip1q_s64(0, v343)), vshlq_u64(v342, vzip1q_s64(0, v340)));
      v345 = vpaddq_s64(v343, v340);
      v346 = (v344.i64[0] << v332) | v331;
      if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
      {
        *(v246 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v344.i64[0] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345.i64[0] + v332;
      v348 = v346 | (v344.i64[1] << v347);
      if ((v347 & 0x3F) + v345.i64[1] >= 0x40)
      {
        *(v246 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v344.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v345.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v513, v350)), v496);
      v353 = vmovl_u16(*v513.i8);
      v354 = vmovl_high_u16(v513);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) >= 0x40)
      {
        *(v246 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v361.i64[0] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v246 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      v367.i64[0] = 0xF000F000F000FLL;
      v367.i64[1] = 0xF000F000F000FLL;
      v368.i64[0] = -1;
      v368.i64[1] = -1;
      v369 = vandq_s8(vshlq_u16(v368, vaddq_s16(v513, v367)), v498);
      v370 = vmovl_u16(*v513.i8);
      v371 = vmovl_high_u16(v513);
      v372 = vpaddq_s32(vshlq_u32(vmovl_u16(*v369.i8), vtrn1q_s32(0, v370)), vshlq_u32(vmovl_high_u16(v369), vtrn1q_s32(0, v371)));
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
      v380 = (v378.i64[0] << v366) | v365;
      if (v379.i64[0] + (v366 & 0x3F) >= 0x40)
      {
        *(v246 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v378.i64[0] >> -(v366 & 0x3F);
        if ((v366 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379.i64[1];
      v382 = v379.i64[0] + v366;
      v383 = (v379.i64[0] + v366) & 0x3F;
      v384 = v380 | (v378.i64[1] << v382);
      if ((v383 + v379.i64[1]) >= 0x40)
      {
        *(v246 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
        v384 = v378.i64[1] >> -v383;
        if (!v383)
        {
          v384 = 0;
        }
      }

      v385 = 0;
      v386.i64[0] = 0xF000F000F000FLL;
      v386.i64[1] = 0xF000F000F000FLL;
      v387.i64[0] = -1;
      v387.i64[1] = -1;
      v388 = v382 + v381;
      do
      {
        v389 = vandq_s8(vshlq_u16(v387, vaddq_s16(v514, v386)), *(&v499 + v385));
        v390 = vmovl_u16(*v514.i8);
        v391 = vmovl_high_u16(v514);
        v392 = vpaddq_s32(vshlq_u32(vmovl_u16(*v389.i8), vtrn1q_s32(0, v390)), vshlq_u32(vmovl_high_u16(v389), vtrn1q_s32(0, v391)));
        v393 = vpaddq_s32(v390, v391);
        v394.i64[0] = v392.u32[0];
        v394.i64[1] = v392.u32[1];
        v395 = v394;
        v394.i64[0] = v392.u32[2];
        v394.i64[1] = v392.u32[3];
        v396 = v394;
        v394.i64[0] = v393.u32[0];
        v394.i64[1] = v393.u32[1];
        v397 = v394;
        v394.i64[0] = v393.u32[2];
        v394.i64[1] = v393.u32[3];
        v398 = vpaddq_s64(vshlq_u64(v395, vzip1q_s64(0, v397)), vshlq_u64(v396, vzip1q_s64(0, v394)));
        v399 = vpaddq_s64(v397, v394);
        v400 = (v398.i64[0] << v388) | v384;
        if (v399.i64[0] + (v388 & 0x3F) >= 0x40)
        {
          *(v246 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
          v400 = v398.i64[0] >> -(v388 & 0x3F);
          if ((v388 & 0x3F) == 0)
          {
            v400 = 0;
          }
        }

        v401 = v399.i64[0] + v388;
        v384 = v400 | (v398.i64[1] << v401);
        if ((v401 & 0x3F) + v399.i64[1] >= 0x40)
        {
          *(v246 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
          v384 = v398.i64[1] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v384 = 0;
          }
        }

        v388 = v401 + v399.i64[1];
        v385 += 16;
      }

      while (v385 != 64);
      v402 = 0;
      v403.i64[0] = 0xF000F000F000FLL;
      v403.i64[1] = 0xF000F000F000FLL;
      v404.i64[0] = -1;
      v404.i64[1] = -1;
      do
      {
        v405 = vandq_s8(vshlq_u16(v404, vaddq_s16(v515, v403)), *(&v503 + v402));
        v406 = vmovl_u16(*v515.i8);
        v407 = vmovl_high_u16(v515);
        v408 = vpaddq_s32(vshlq_u32(vmovl_u16(*v405.i8), vtrn1q_s32(0, v406)), vshlq_u32(vmovl_high_u16(v405), vtrn1q_s32(0, v407)));
        v409 = vpaddq_s32(v406, v407);
        v410.i64[0] = v408.u32[0];
        v410.i64[1] = v408.u32[1];
        v411 = v410;
        v410.i64[0] = v408.u32[2];
        v410.i64[1] = v408.u32[3];
        v412 = v410;
        v410.i64[0] = v409.u32[0];
        v410.i64[1] = v409.u32[1];
        v413 = v410;
        v410.i64[0] = v409.u32[2];
        v410.i64[1] = v409.u32[3];
        v414 = vpaddq_s64(vshlq_u64(v411, vzip1q_s64(0, v413)), vshlq_u64(v412, vzip1q_s64(0, v410)));
        v415 = vpaddq_s64(v413, v410);
        v416 = (v414.i64[0] << v388) | v384;
        if (v415.i64[0] + (v388 & 0x3F) >= 0x40)
        {
          *(v246 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v414.i64[0] >> -(v388 & 0x3F);
          if ((v388 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v417 = v415.i64[0] + v388;
        v384 = v416 | (v414.i64[1] << v417);
        if ((v417 & 0x3F) + v415.i64[1] >= 0x40)
        {
          *(v246 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
          v384 = v414.i64[1] >> -(v417 & 0x3F);
          if ((v417 & 0x3F) == 0)
          {
            v384 = 0;
          }
        }

        v388 = v417 + v415.i64[1];
        v402 += 16;
      }

      while (v402 != 64);
      v418 = 0;
      v419.i64[0] = 0xF000F000F000FLL;
      v419.i64[1] = 0xF000F000F000FLL;
      v420.i64[0] = -1;
      v420.i64[1] = -1;
      do
      {
        v421 = vandq_s8(vshlq_u16(v420, vaddq_s16(v516, v419)), *(&v507 + v418));
        v422 = vmovl_u16(*v516.i8);
        v423 = vmovl_high_u16(v516);
        v424 = vpaddq_s32(vshlq_u32(vmovl_u16(*v421.i8), vtrn1q_s32(0, v422)), vshlq_u32(vmovl_high_u16(v421), vtrn1q_s32(0, v423)));
        v425 = vpaddq_s32(v422, v423);
        v426.i64[0] = v424.u32[0];
        v426.i64[1] = v424.u32[1];
        v427 = v426;
        v426.i64[0] = v424.u32[2];
        v426.i64[1] = v424.u32[3];
        v428 = v426;
        v426.i64[0] = v425.u32[0];
        v426.i64[1] = v425.u32[1];
        v429 = v426;
        v426.i64[0] = v425.u32[2];
        v426.i64[1] = v425.u32[3];
        v430 = vpaddq_s64(vshlq_u64(v427, vzip1q_s64(0, v429)), vshlq_u64(v428, vzip1q_s64(0, v426)));
        v431 = vpaddq_s64(v429, v426);
        v432 = (v430.i64[0] << v388) | v384;
        if (v431.i64[0] + (v388 & 0x3F) >= 0x40)
        {
          *(v246 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
          v432 = v430.i64[0] >> -(v388 & 0x3F);
          if ((v388 & 0x3F) == 0)
          {
            v432 = 0;
          }
        }

        v433 = v431.i64[0] + v388;
        v384 = v432 | (v430.i64[1] << v433);
        if ((v433 & 0x3F) + v431.i64[1] >= 0x40)
        {
          *(v246 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
          v384 = v430.i64[1] >> -(v433 & 0x3F);
          if ((v433 & 0x3F) == 0)
          {
            v384 = 0;
          }
        }

        v388 = v433 + v431.i64[1];
        v418 += 16;
      }

      while (v418 != 64);
      if ((v388 & 0x3F) != 0)
      {
        *(v246 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      }

      result = (v388 - v247 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v96 = *MEMORY[0x29EDCA608];
  v12 = 0uLL;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v33 = 0;
      v34 = (a3 + i * a4);
      v35 = &v80 + 8 * (i & 0x3F);
      v36 = &v80 + 2 * ((4 * i) | 1u);
      v37 = &v80 + 2 * ((4 * i) | 2u);
      v38 = &v80 + 2 * ((4 * i) | 3u);
      do
      {
        v39 = v34[1];
        *&v35[v33 & 0x7F] = *v34;
        *&v36[v33 & 0x7F] = v39;
        v40 = (2 * v33) | 1u;
        v41 = v34[3];
        *(v35 + v40) = v34[2];
        *(v36 + v40) = v41;
        v42 = v34[5];
        *&v37[v33 & 0x7F] = v34[4];
        *&v38[v33 & 0x7F] = v42;
        v43 = v34[6];
        v44 = v34[7];
        v34 += 8;
        ++v33;
        *(v37 + v40) = v43;
        *(v38 + v40) = v44;
      }

      while (a5 != v33);
    }

    v31 = vmovl_u16(*&v80);
    v30 = vmovl_u16(*&v82);
    v29 = vmovl_u16(*(&v80 + 8));
    v28 = vmovl_u16(*(&v82 + 8));
    v27 = vmovl_u16(*&v84);
    v26 = vmovl_u16(*&v86);
    v25 = vmovl_u16(*(&v84 + 8));
    v24 = vmovl_u16(*(&v86 + 8));
    v23 = vmovl_u16(*&v81);
    v22 = vmovl_u16(*&v83);
    v21 = vmovl_u16(*(&v81 + 8));
    v20 = vmovl_u16(*(&v83 + 8));
    v19 = vmovl_u16(*&v85);
    v18 = vmovl_u16(*&v87);
    v17 = vmovl_u16(*(&v85 + 8));
    v16 = vmovl_u16(*(&v87 + 8));
    v15 = vmovl_u16(*&v88);
    v14 = vmovl_u16(*&v90);
    v13 = vmovl_u16(*(&v88 + 8));
    v12 = vmovl_u16(*(&v90 + 8));
  }

  v60 = v23;
  v61 = v22;
  v62 = v21;
  v63 = v20;
  v64 = v19;
  v65 = v18;
  v66 = v17;
  v67 = v16;
  v68 = v15;
  v69 = v14;
  v70 = v13;
  v71 = v12;
  v72 = v31;
  v73 = v30;
  v45 = 2 * (a6 & 0x7F);
  v46 = 4 * (a5 & 0x3F);
  v74 = v29;
  v75 = v28;
  v76 = v27;
  v77 = v26;
  v78 = v25;
  v79 = v24;
  v47 = 4 * (a5 != 0);
  v48 = 2 * (a6 != 0);
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v72, a7, v47, v48);
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v50 = v45 - 2;
  if (v45 < 2)
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

  v78 = v66;
  v79 = v67;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v72, a7, v47, v51);
  v72 = v68;
  v73 = v69;
  v74 = v70;
  v75 = v71;
  v76 = vmovl_u16(*&v92);
  v77 = vmovl_u16(*&v94);
  v78 = vmovl_u16(*(&v92 + 8));
  v79 = vmovl_u16(*(&v94 + 8));
  v53 = v46 - 4;
  if (v46 < 4)
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

  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v72, a7, v54, v48);
  v72 = vmovl_u16(*&v89);
  v73 = vmovl_u16(*&v91);
  v74 = vmovl_u16(*(&v89 + 8));
  v75 = vmovl_u16(*(&v91 + 8));
  v76 = vmovl_u16(*&v93);
  v77 = vmovl_u16(*&v95);
  v78 = vmovl_u16(*(&v93 + 8));
  v79 = vmovl_u16(*(&v95 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 96, &v72, a7, v54, v51);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

  if ((v27 & 1) != 0 || (v177 = a4 + 1, v7 + 8 * v177 - v172 - 1024 >= 9) || v60 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int16x4_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v55 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v47, a5);
  }

  v39 = v48;
  v40 = v47;
  v41 = v50;
  v42 = v49;
  v44 = v51;
  v43 = v52;
  v45 = v54;
  v46 = v53;
  v10 = a3 + 32;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v47, a5);
  }

  v37 = v48;
  v38 = v47;
  v35 = v50;
  v36 = v49;
  v33 = v52;
  v34 = v51;
  v31 = v54;
  v32 = v53;
  v11 = a3 + 64;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v47, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v47, a5);
  }

  v29 = v48;
  v30 = v47;
  v27 = v50;
  v28 = v49;
  v25 = v52;
  v26 = v51;
  v23 = v54;
  v24 = v53;
  v12 = a3 + 96;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v47, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v47, a5);
  }

  v14 = v47;
  v15 = v48;
  v16 = v49;
  v17 = v50;
  v18 = v51;
  v19 = v52;
  v20 = v53;
  v21 = v54;
  *a1 = vmovn_s32(v40);
  a1[1] = vmovn_s32(v39);
  a1[2] = vmovn_s32(v42);
  a1[3] = vmovn_s32(v41);
  a1[4] = vmovn_s32(v44);
  a1[5] = vmovn_s32(v43);
  a1[6] = vmovn_s32(v46);
  a1[7] = vmovn_s32(v45);
  a1[8] = vmovn_s32(v38);
  a1[9] = vmovn_s32(v37);
  a1[10] = vmovn_s32(v36);
  a1[11] = vmovn_s32(v35);
  a1[12] = vmovn_s32(v34);
  a1[13] = vmovn_s32(v33);
  a1[14] = vmovn_s32(v32);
  a1[15] = vmovn_s32(v31);
  v22 = (a1 + a2);
  *v22 = vmovn_s32(v30);
  v22[1] = vmovn_s32(v29);
  v22[2] = vmovn_s32(v28);
  v22[3] = vmovn_s32(v27);
  v22[4] = vmovn_s32(v26);
  v22[5] = vmovn_s32(v25);
  v22[6] = vmovn_s32(v24);
  v22[7] = vmovn_s32(v23);
  v22[8] = vmovn_s32(v14);
  v22[9] = vmovn_s32(v15);
  v22[10] = vmovn_s32(v16);
  v22[11] = vmovn_s32(v17);
  v22[12] = vmovn_s32(v18);
  v22[13] = vmovn_s32(v19);
  v22[14] = vmovn_s32(v20);
  v22[15] = vmovn_s32(v21);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 128, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 128, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 256, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 384, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 256, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 384, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
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
LABEL_100:
      *v8 = v5;
      *(v8 + 1) = v5;
      return v4;
    default:
      v24 = 8 * (a3 & 7);
      v25 = a3 & 0xFFFFFFFFFFFFFFF8;
      v26 = v24 + 42;
      v27 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v24;
      if (v24 >= 0x17)
      {
        v27 |= *(v25 + 8) << (-8 * (a3 & 7u));
      }

      v28 = vdupq_n_s32(v27 & 0x1F);
      v29 = (8 * (a3 & 7)) | 0x400;
      v30.i64[0] = 0x300000003;
      v30.i64[1] = 0x300000003;
      v31 = vbicq_s8(vdupq_n_s32(((v27 >> 5) & 0x1F) + 1), vceqq_s32((*&v28 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v30));
      v30.i64[0] = 0x404040404040404;
      v30.i64[1] = 0x404040404040404;
      v32 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v28 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v30);
      if (vmaxvq_s8(v32) < 1)
      {
        v41 = 0;
        v65.i64[0] = -1;
        v65.i64[1] = -1;
        v61 = v31;
        v60 = v31;
        v59 = v31;
        v64.i64[0] = -1;
        v64.i64[1] = -1;
        v58 = v31;
        v63.i64[0] = -1;
        v63.i64[1] = -1;
        v62.i64[0] = -1;
        v62.i64[1] = -1;
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
        v39 = v38 + v26;
        v40 = v38 <= 0x80 && v29 >= v39;
        v41 = !v40;
        v42 = 0uLL;
        if (v40)
        {
          v43 = v26 & 0x3A;
          v44 = vaddq_s64(vzip1q_s64(0, v37), vdupq_n_s64(v43));
          v45 = (v25 + ((v26 >> 3) & 8));
          v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v45, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v45->i64[0], 0), vnegq_s64(v44)));
          if (v38 + v43 >= 0x81)
          {
            v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v45[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v45[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v42);
          }

          v26 = v39;
        }

        v46 = vzip1_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
        v47.i64[0] = v46.u32[0];
        v47.i64[1] = v46.u32[1];
        v48 = vshlq_u64(v42, vnegq_s64(v47));
        v49 = vuzp1q_s32(vzip1q_s64(v42, v48), vzip2q_s64(v42, v48));
        v50 = vshlq_u32(v49, vnegq_s32((*&v33 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v51 = vuzp1q_s16(vzip1q_s32(v49, v50), vzip2q_s32(v49, v50));
        v52 = vzip1q_s16(v51, vshlq_u16(v51, vnegq_s16(vmovl_u8(vuzp1_s8(*v32.i8, *v28.i8)))));
        *v52.i8 = vmovn_s16(v52);
        v49.i64[0] = 0x101010101010101;
        v49.i64[1] = 0x101010101010101;
        v53 = vshlq_s8(v49, v32);
        v49.i64[0] = -1;
        v49.i64[1] = -1;
        v53.i32[0] = vandq_s8(vaddq_s8(v53, v49), v52).u32[0];
        v54 = vdupq_n_s32(v53.i8[0]);
        v55 = vdupq_n_s32(v53.i8[1]);
        v56 = vdupq_n_s32(v53.i8[2]);
        v57 = vdupq_n_s32(v53.i8[3]);
        v58 = vsubq_s32(v31, v54);
        v59 = vsubq_s32(v31, v55);
        v60 = vsubq_s32(v31, v56);
        v61 = vsubq_s32(v31, v57);
        v62 = vceqzq_s32(v54);
        v63 = vceqzq_s32(v55);
        v64 = vceqzq_s32(v56);
        v65 = vceqzq_s32(v57);
      }

      v66 = 0uLL;
      v67 = vandq_s8(vextq_s8(vtstq_s32((*&v28 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v28 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v31);
      v68 = vpaddq_s32(v67, v67).u64[0];
      v69.i64[0] = v68;
      v69.i64[1] = HIDWORD(v68);
      v70 = v69;
      v71 = vaddvq_s64(v69);
      v72 = v71 + v26;
      if (v71 <= 0x80 && v29 >= v72)
      {
        v74 = v26 & 0x3F;
        v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
        v76 = (v25 + 8 * (v26 >> 6));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
        if (v71 + v74 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v66);
        }

        v26 = v72;
      }

      else
      {
        v41 = 1;
      }

      v77 = v27 & 3;
      v78 = 0uLL;
      if (v77 == 2)
      {
        v79 = v26 + 16;
        if (v29 >= v26 + 16)
        {
          v83 = (v25 + 8 * (v26 >> 6));
          v84 = *v83 >> v26;
          if ((v26 & 0x3F) >= 0x31)
          {
            v84 |= v83[1] << -(v26 & 0x3F);
          }

          v80 = v84;
          v81 = v26 + 32;
        }

        else
        {
          v80 = 0;
          v41 = 1;
          v81 = v26 + 16;
          v79 = v26;
        }

        v82 = v80;
        if (v29 >= v81)
        {
          v85 = (v25 + 8 * (v79 >> 6));
          v86 = *v85 >> v79;
          if ((v79 & 0x3F) >= 0x31)
          {
            v86 |= v85[1] << -(v79 & 0x3F);
          }

          v82.i32[1] = v86;
        }

        else
        {
          v41 = 1;
          v81 = v79;
        }
      }

      else
      {
        v81 = v26;
        v82 = 0;
      }

      v87 = vextq_s8(0, v58, 0xCuLL);
      v88 = vpaddq_s32(v87, v87).u64[0];
      v89.i64[0] = v88;
      v89.i64[1] = HIDWORD(v88);
      v90 = v89;
      v91 = vaddvq_s64(v89);
      v92 = v91 + v81;
      if (v91 <= 0x80 && v29 >= v92)
      {
        v94 = v81 & 0x3F;
        v95 = vaddq_s64(vzip1q_s64(0, v90), vdupq_n_s64(v94));
        v96 = (v25 + 8 * (v81 >> 6));
        v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v95)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v95)));
        if (v91 + v94 >= 0x81)
        {
          v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v95)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v95))), v78);
        }

        v81 = v92;
      }

      else
      {
        v41 = 1;
      }

      v97 = vpaddq_s32(v58, v58).u64[0];
      v98.i64[0] = v97;
      v98.i64[1] = HIDWORD(v97);
      v99 = v98;
      v100 = vaddvq_s64(v98);
      v101 = v100 + v81;
      v102 = 0uLL;
      if (v100 <= 0x80 && v29 >= v101)
      {
        v105 = v81 & 0x3F;
        v106 = vaddq_s64(vzip1q_s64(0, v99), vdupq_n_s64(v105));
        v107 = (v25 + 8 * (v81 >> 6));
        v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
        if (v100 + v105 >= 0x81)
        {
          v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
        }

        v81 = v101;
      }

      else
      {
        v41 = 1;
        v104 = 0uLL;
      }

      v108 = vpaddq_s32(v59, v59).u64[0];
      v109.i64[0] = v108;
      v109.i64[1] = HIDWORD(v108);
      v110 = v109;
      v111 = vaddvq_s64(v109);
      v112 = v111 + v81;
      if (v111 <= 0x80 && v29 >= v112)
      {
        v114 = v81 & 0x3F;
        v115 = vaddq_s64(vzip1q_s64(0, v110), vdupq_n_s64(v114));
        v116 = (v25 + 8 * (v81 >> 6));
        v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v115)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v115)));
        if (v111 + v114 >= 0x81)
        {
          v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v115)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v115))), v102);
        }

        v81 = v112;
      }

      else
      {
        v41 = 1;
      }

      v117 = 0uLL;
      if (v111 > 0x80 || (v118 = v111 + v81, v29 < v111 + v81))
      {
        v118 = v81;
        v41 = 1;
        v122 = 0uLL;
      }

      else
      {
        v119 = v81 & 0x3F;
        v120 = vaddq_s64(vzip1q_s64(0, v110), vdupq_n_s64(v119));
        v121 = (v25 + 8 * (v81 >> 6));
        v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v121, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v120)), vshlq_u64(vdupq_lane_s64(v121->i64[0], 0), vnegq_s64(v120)));
        if (v111 + v119 >= 0x81)
        {
          v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v121[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v120)), vshlq_u64(vdupq_laneq_s64(v121[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v120))), v122);
        }
      }

      v123 = vpaddq_s32(v60, v60).u64[0];
      v124.i64[0] = v123;
      v124.i64[1] = HIDWORD(v123);
      v125 = v124;
      v126 = vaddvq_s64(v124);
      v127 = v126;
      if (v126 > 0x80 || (v128 = v126 + v118, v29 < v126 + v118))
      {
        v128 = v118;
        v41 = 1;
      }

      else
      {
        v129 = v118 & 0x3F;
        v130 = vaddq_s64(vzip1q_s64(0, v125), vdupq_n_s64(v129));
        v131 = (v25 + 8 * (v118 >> 6));
        v117 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
        if (v127 + v129 >= 0x81)
        {
          v117 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v117);
        }
      }

      v132 = 0uLL;
      if (v127 > 0x80 || (v133 = v127 + v128, v29 < v127 + v128))
      {
        v133 = v128;
        v41 = 1;
        v137 = 0uLL;
      }

      else
      {
        v134 = v128 & 0x3F;
        v135 = vaddq_s64(vzip1q_s64(0, v125), vdupq_n_s64(v134));
        v136 = (v25 + 8 * (v128 >> 6));
        v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v136, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v136->i64[0], 0), vnegq_s64(v135)));
        if (v127 + v134 >= 0x81)
        {
          v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v136[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v136[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v137);
        }
      }

      v138 = vpaddq_s32(v61, v61).u64[0];
      v139.i64[0] = v138;
      v139.i64[1] = HIDWORD(v138);
      v140 = v139;
      v141 = vaddvq_s64(v139);
      v142 = v141;
      if (v141 > 0x80 || (v143 = v141 + v133, v29 < v141 + v133))
      {
        v143 = v133;
        v41 = 1;
      }

      else
      {
        v144 = v133 & 0x3F;
        v145 = vaddq_s64(vzip1q_s64(0, v140), vdupq_n_s64(v144));
        v146 = (v25 + 8 * (v133 >> 6));
        v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
        if (v142 + v144 >= 0x81)
        {
          v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v132);
        }
      }

      if (v142 > 0x80 || v29 < v142 + v143)
      {
        goto LABEL_95;
      }

      v147 = vzip1_s32(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
      v148.i64[0] = v147.u32[0];
      v148.i64[1] = v147.u32[1];
      v149.i64[0] = 0x1F0000001FLL;
      v149.i64[1] = 0x1F0000001FLL;
      v150 = vaddq_s32(v61, v149);
      v151.i64[0] = 0x2000000020;
      v151.i64[1] = 0x2000000020;
      v152 = vsubq_s32(v151, v61);
      v153 = (v25 + 8 * (v143 >> 6));
      v154 = vaddq_s64(vzip1q_s64(0, v140), vdupq_n_s64(v143 & 0x3F));
      v155 = vnegq_s64(v148);
      v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v154)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v154)));
      if (v142 + (v143 & 0x3F) < 0x81)
      {
        if (v41)
        {
          goto LABEL_95;
        }

        v161 = vshlq_u64(v156, v155);
        v159 = vzip2q_s64(v156, v161);
        v160 = vzip1q_s64(v156, v161);
      }

      else
      {
        if (v41)
        {
          goto LABEL_95;
        }

        v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v154)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v154))), v156);
        v158 = vshlq_u64(v157, v155);
        v159 = vzip2q_s64(v157, v158);
        v160 = vzip1q_s64(v157, v158);
      }

      v162 = vshlq_s32(vshlq_s32(vuzp1q_s32(v160, v159), v152), v150);
      v4 = a4 + 1;
      if (v29 + 8 * v4 - (v142 + v143) - 1024 >= 9)
      {
LABEL_95:
        v163 = 0;
        v164 = 0;
        v165 = 8 * (&v285 & 7);
        v166 = 32;
        do
        {
          v167 = 64 - v165;
          if (64 - v165 >= v166)
          {
            v167 = v166;
          }

          *&v284[8 * v163] |= ((0xFFFFFFFFFFFFFFFFLL >> v164) & ~(-1 << v167)) << v165;
          v164 += v167;
          v168 = v167 + v165;
          v163 += v168 >> 6;
          v165 = v168 & 0x3F;
          v166 -= v167;
        }

        while (v166);
        v4 = 0;
        v169 = &a1->i8[a2];
        v5 = 0uLL;
        *a1 = 0u;
        a1[1] = 0u;
        v170 = &a1->i8[2 * a2];
        *v169 = 0u;
        *(v169 + 1) = 0u;
        v8 = &a1->i8[2 * a2 + a2];
        *v170 = 0u;
        *(v170 + 1) = 0u;
        goto LABEL_100;
      }

      v280 = v62;
      v281 = v63;
      v282 = v64;
      v283 = v65;
      v172 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
      v173 = vzip1_s32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
      v174 = vzip1_s32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
      v175 = vzip1_s32(*v59.i8, *&vextq_s8(v59, v59, 8uLL));
      v176 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
      v177.i64[0] = v172.u32[0];
      v177.i64[1] = v172.u32[1];
      v178 = v177;
      v177.i64[0] = v173.u32[0];
      v177.i64[1] = v173.u32[1];
      v179 = v177;
      v177.i64[0] = v174.u32[0];
      v177.i64[1] = v174.u32[1];
      v180 = v177;
      v177.i64[0] = v175.u32[0];
      v177.i64[1] = v175.u32[1];
      v181 = v177;
      v177.i64[0] = v176.u32[0];
      v177.i64[1] = v176.u32[1];
      v182 = vnegq_s64(v181);
      v183 = vnegq_s64(v177);
      v184 = vshlq_u64(v66, vnegq_s64(v178));
      v185 = vshlq_u64(v78, vnegq_s64(v179));
      v186 = vshlq_u64(v104, vnegq_s64(v180));
      v187 = vshlq_u64(v102, v182);
      v188 = vshlq_u64(v122, v182);
      v189 = vshlq_u64(v117, v183);
      v190 = vshlq_u64(v137, v183);
      v191 = vzip2q_s64(v66, v184);
      v192 = vzip1q_s64(v66, v184);
      v184.i64[0] = 0x2000000020;
      v184.i64[1] = 0x2000000020;
      v193 = vzip2q_s64(v78, v185);
      v194 = vzip1q_s64(v78, v185);
      v185.i64[0] = 0x2000000020;
      v185.i64[1] = 0x2000000020;
      v195 = vzip2q_s64(v104, v186);
      v196 = vzip1q_s64(v104, v186);
      v197 = vzip2q_s64(v102, v187);
      v198 = vzip1q_s64(v102, v187);
      v187.i64[0] = 0x2000000020;
      v187.i64[1] = 0x2000000020;
      v199 = vzip2q_s64(v122, v188);
      v200 = vzip1q_s64(v122, v188);
      v201 = vzip2q_s64(v117, v189);
      v202 = vzip1q_s64(v117, v189);
      v189.i64[0] = 0x2000000020;
      v189.i64[1] = 0x2000000020;
      v203 = vzip2q_s64(v137, v190);
      v204 = vzip1q_s64(v137, v190);
      v205 = v27 >> 10;
      v206 = vuzp1q_s32(v192, v191);
      v190.i64[0] = 0x1F0000001FLL;
      v190.i64[1] = 0x1F0000001FLL;
      v207 = vuzp1q_s32(v194, v193);
      v194.i64[0] = 0x1F0000001FLL;
      v194.i64[1] = 0x1F0000001FLL;
      v208 = vsubq_s32(v185, v87);
      v209 = vuzp1q_s32(v196, v195);
      v210 = vsubq_s32(v185, v58);
      v211 = vuzp1q_s32(v198, v197);
      v185.i64[0] = 0x1F0000001FLL;
      v185.i64[1] = 0x1F0000001FLL;
      v212 = vsubq_s32(v187, v59);
      v213 = vuzp1q_s32(v200, v199);
      v214 = vuzp1q_s32(v202, v201);
      v200.i64[0] = 0x1F0000001FLL;
      v200.i64[1] = 0x1F0000001FLL;
      v215 = vsubq_s32(v189, v60);
      v216 = vaddq_s32(v87, v194);
      v217 = vaddq_s32(v58, v194);
      v218 = vshlq_s32(v209, v210);
      v219 = vaddq_s32(v59, v185);
      v220 = vaddq_s32(v60, v200);
      v221 = vshlq_s32(vshlq_s32(v206, vsubq_s32(v184, v67)), vaddq_s32(v67, v190));
      v222 = vshlq_s32(vshlq_s32(v207, v208), v216);
      v223 = vshlq_s32(v218, v217);
      v224 = vshlq_s32(vshlq_s32(v211, v212), v219);
      v225 = vshlq_s32(vshlq_s32(v213, v212), v219);
      v226 = vshlq_s32(vshlq_s32(v214, v215), v220);
      v227 = vshlq_s32(vshlq_s32(vuzp1q_s32(v204, v203), v215), v220);
      v228 = vshlq_u64(v132, v155);
      v229 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v132, v228), vzip2q_s64(v132, v228)), v152), v150);
      if (v77 == 2)
      {
        v230 = vdupq_lane_s32(v82, 1);
        v231.i64[0] = 0xFFFFFFFF00000000;
        v231.i64[1] = 0xFFFFFFFF00000000;
        v230.i64[0] = 0;
        v232 = vaddq_s32(vandq_s8(vdupq_lane_s32(v82, 0), v231), v230);
        v233 = vmlaq_lane_s32(v230, xmmword_29D2F11A0, v82, 0);
        v222 = vaddq_s32(v222, v232);
        *v231.i8 = vshl_u32(v82, 0x100000002);
        v234 = vdupq_lane_s32(*v231.i8, 1);
        v223 = vaddq_s32(v223, v233);
        v224 = vaddq_s32(vaddq_s32(v232, v234), v224);
        v235 = vdupq_lane_s32(*v231.i8, 0);
        v225 = vaddq_s32(vaddq_s32(v233, v234), v225);
        v226 = vaddq_s32(vaddq_s32(v232, v235), v226);
        v227 = vaddq_s32(vaddq_s32(v233, v235), v227);
        v236 = vdupq_lane_s32(vadd_s32(*v231.i8, *v234.i8), 0);
        v229 = vaddq_s32(vaddq_s32(v236, v232), v229);
        v162 = vaddq_s32(vaddq_s32(v236, v233), v162);
      }

      v237 = vdupq_n_s32(v205);
      v238 = vdupq_lane_s32(*v221.i8, 0);
      v239 = vandq_s8(v238, v280);
      v240 = vsubq_s32(vaddq_s32(vandq_s8(v221, v280), v222), v239);
      v241 = vsubq_s32(v223, v239);
      v242 = vandq_s8(v238, v281);
      v243 = vsubq_s32(v224, v242);
      v244 = vsubq_s32(v225, v242);
      v245 = vandq_s8(v238, v282);
      v246 = vsubq_s32(v226, v245);
      v247 = vsubq_s32(v227, v245);
      v248 = vandq_s8(v238, v283);
      v249 = vsubq_s32(v229, v248);
      v250 = vsubq_s32(v162, v248);
      v248.i64[0] = 0x100000001;
      v248.i64[1] = 0x100000001;
      if (vaddvq_s32(vceqq_s32((*&v28 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v248)))
      {
        v251 = vnegq_s32((*&v28 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
        v252 = v241;
        v252.i32[3] = v240.i32[0];
        v253 = v240;
        v253.i32[0] = v241.i32[3];
        v286.val[0] = vbslq_s8(v251, v253, v240);
        v286.val[1] = vbslq_s8(v251, v252, v241);
        v252.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v252.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v287.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v286, xmmword_29D2F0F80), v251), v286.val[0]);
        v287.val[1] = vaddq_s32(v286.val[1], vandq_s8(vqtbl2q_s8(v286, v252), v251));
        v240 = vaddq_s32(vandq_s8(vqtbl2q_s8(v287, xmmword_29D2F0F90), v251), v287.val[0]);
        v241 = vaddq_s32(v287.val[1], vandq_s8(vqtbl2q_s8(v287, v252), v251));
        v287.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v243.i8, xmmword_29D2F0FA0), v251), v243);
        v287.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v243.i8, xmmword_29D2F0FB0), v251), v244);
        v243 = vaddq_s32(vandq_s8(vqtbl2q_s8(v287, xmmword_29D2F0FC0), v251), v287.val[0]);
        v244 = vaddq_s32(v287.val[1], vandq_s8(vqtbl2q_s8(v287, v252), v251));
        v287.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v246.i8, xmmword_29D2F0FD0), v251), v246);
        v287.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v246.i8, xmmword_29D2F0F80), v251), v247);
        v246 = vaddq_s32(vandq_s8(vqtbl2q_s8(v287, v252), v251), v287.val[0]);
        v247 = vaddq_s32(v287.val[1], vandq_s8(vqtbl2q_s8(v287, xmmword_29D2F0FE0), v251));
        v286.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v249.i8, xmmword_29D2F0FF0), v251), v249);
        v286.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v249.i8, xmmword_29D2F0F80), v251), v250);
        v249 = vaddq_s32(vandq_s8(vqtbl2q_s8(v286, v252), v251), v286.val[0]);
        v250 = vaddq_s32(v286.val[1], vandq_s8(vqtbl2q_s8(v286, xmmword_29D2F1000), v251));
      }

      v254 = vaddq_s32(v237, v240);
      v255 = vaddq_s32(v241, v237);
      v256 = vaddq_s32(v243, v237);
      v257 = vaddq_s32(v244, v237);
      v258 = vaddq_s32(v246, v237);
      v259 = vaddq_s32(v247, v237);
      v260 = vaddq_s32(v249, v237);
      v261 = vaddq_s32(v250, v237);
      v262.i64[0] = 0x1000000010;
      v262.i64[1] = 0x1000000010;
      v263 = vcgtq_u32(v262, v28);
      v264.i64[0] = -1;
      v264.i64[1] = -1;
      v265 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v254, v264), v263), v254);
      v266 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v255, v264), v263), v255);
      v267 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v256, v264), v263), v256);
      v268 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v257, v264), v263), v257);
      v269 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v258, v264), v263), v258);
      v270 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v259, v264), v263), v259);
      v271 = vzip2q_s64(v265, v266);
      v265.i64[1] = v266.i64[0];
      v272 = vbicq_s8(vqtbl1q_s8(v260, v264), v263);
      v273.i64[0] = v269.i64[0];
      v273.i64[1] = v270.i64[0];
      v274 = vbicq_s8(vqtbl1q_s8(v261, v264), v263);
      v275 = (a1 + a2);
      *a1 = v265;
      a1[1] = v273;
      v276 = (a1 + 2 * a2);
      v277 = vaddq_s32(v272, v260);
      v278 = vaddq_s32(v274, v261);
      *v275 = v271;
      v275[1] = vzip2q_s64(v269, v270);
      v259.i64[0] = v267.i64[0];
      v259.i64[1] = v268.i64[0];
      v260.i64[0] = v277.i64[0];
      v260.i64[1] = v278.i64[0];
      *v276 = v259;
      v276[1] = v260;
      v279 = &v276->i8[a2];
      *v279 = vzip2q_s64(v267, v268);
      v279[1] = vzip2q_s64(v277, v278);
      break;
  }

  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int32x4_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip2q_s64(*a3, v8);
  v12 = vzip1q_s64(v7, v9);
  v13 = vzip2q_s64(v7, v9);
  v15 = *v6;
  v16 = v6[1];
  v14 = &v6->i8[a4];
  v17 = v14[1];
  v18 = vzip1q_s64(v15, *v14);
  v19 = vzip2q_s64(v15, *v14);
  v20 = vzip1q_s64(v16, v17);
  v21 = vzip2q_s64(v16, v17);
  v22 = vdupq_lane_s32(*v10.i8, 0);
  v23 = vsubq_s32(v10, v22);
  v24 = vsubq_s32(v11, v22);
  v25 = vsubq_s32(v18, v22);
  v26 = vsubq_s32(v19, v22);
  v27 = vsubq_s32(v12, v22);
  v28 = vsubq_s32(v13, v22);
  v29 = vsubq_s32(v20, v22);
  v30 = vsubq_s32(v21, v22);
  v31 = vmaxq_s32(v23, v24);
  v32 = vminq_s32(v23, v24);
  v31.i32[0] = vmaxvq_s32(v31);
  v32.i32[0] = vminvq_s32(v32);
  v33 = vdupq_lane_s32(*v31.i8, 0);
  v34 = vdupq_lane_s32(*v32.i8, 0);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v35 = vmaxq_s32(v33, v8);
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v36 = vminq_s32(v34, v17);
  v37 = vzip1q_s32(v33, v34);
  v38.i64[0] = 0x2000000020;
  v38.i64[1] = 0x2000000020;
  v39 = vbicq_s8(vsubq_s32(v38, vclsq_s32(v37)), vceqzq_s32(v37));
  v40 = vpmaxq_s32(v39, v39);
  v41 = vmaxq_s32(v25, v26);
  v42 = vminq_s32(v25, v26);
  v41.i32[0] = vmaxvq_s32(v41);
  v42.i32[0] = vminvq_s32(v42);
  v43 = vdupq_lane_s32(*v41.i8, 0);
  v44 = vdupq_lane_s32(*v42.i8, 0);
  v45 = vmaxq_s32(v35, v43);
  v46 = vminq_s32(v36, v44);
  v47 = vzip1q_s32(v43, v44);
  v48 = vbicq_s8(vsubq_s32(v38, vclsq_s32(v47)), vceqzq_s32(v47));
  v49 = vpmaxq_s32(v48, v48);
  v50 = vmaxq_s32(v27, v28);
  v51 = vminq_s32(v27, v28);
  v50.i32[0] = vmaxvq_s32(v50);
  v52 = vdupq_lane_s32(*v50.i8, 0);
  v51.i32[0] = vminvq_s32(v51);
  v53 = vdupq_lane_s32(*v51.i8, 0);
  v54 = vmaxq_s32(v45, v52);
  v55 = vminq_s32(v46, v53);
  v56 = vzip1q_s32(v52, v53);
  v57 = vbicq_s8(vsubq_s32(v38, vclsq_s32(v56)), vceqzq_s32(v56));
  v58 = vmaxq_s32(v29, v30);
  v59 = vminq_s32(v29, v30);
  v58.i32[0] = vmaxvq_s32(v58);
  v59.i32[0] = vminvq_s32(v59);
  v60 = vdupq_lane_s32(*v58.i8, 0);
  v61 = vdupq_lane_s32(*v59.i8, 0);
  v62 = vpmaxq_s32(v57, v57);
  v63 = vminq_s32(v55, v61);
  v64 = vzip1q_s32(v60, v61);
  v65 = vbicq_s8(vsubq_s32(v38, vclsq_s32(v64)), vceqzq_s32(v64));
  v66 = vpmaxq_s32(v65, v65);
  v67 = vmaxq_s32(vmaxq_s32(v40, v49), vmaxq_s32(v62, v66));
  v68 = vclzq_s32(vsubq_s32(vmaxq_s32(v54, v60), v63));
  v69 = vsubq_s32(v38, v68);
  v70 = vminq_s32(v69, v67);
  if (vmaxvq_s32(v70))
  {
    v487 = v19;
    v488 = v21;
    v71 = 0;
    v72 = 0;
    v73.i64[0] = 0x1F0000001FLL;
    v73.i64[1] = 0x1F0000001FLL;
    v74 = vsubq_s32(v73, v68);
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    v75 = vcgtq_s32(v67, v69);
    v76 = vandq_s8(vsubq_s32(vshlq_s32(v73, v74), v63), v75);
    v77.i64[0] = 0x800000008;
    v77.i64[1] = 0x800000008;
    v78.i64[0] = 0x300000003;
    v78.i64[1] = 0x300000003;
    v79 = vorrq_s8(vandq_s8(vceqzq_s32(v70), v78), vandq_s8(v75, v77));
    v75.i64[0] = 0xF0000000FLL;
    v75.i64[1] = 0xF0000000FLL;
    v80 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v40), v75), 0);
    v81 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v49), v75), 0);
    v82 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v62), v75), 0);
    v83 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v66), v75), 0);
    v84 = vsubq_s32(v70, v80);
    v85 = vsubq_s32(v70, v81);
    v86 = vsubq_s32(v70, v82);
    v87 = vsubq_s32(v70, v83);
    v88 = vceqq_s32(vaddq_s32(v83, v82), vnegq_s32(vaddq_s32(v80, v81)));
    v81.i64[0] = 0x400000004;
    v81.i64[1] = 0x400000004;
    v89 = vbicq_s8(v81, v88);
    v90 = vorrq_s8(v89, v79);
    if (a5 >= 4 && a6 >= 2)
    {
      v483 = v20;
      v485 = v12;
      v473 = v13;
      v479 = v76;
      v91 = vextq_s8(v10, v10, 4uLL);
      *v91.i8 = vsub_s32(*v91.i8, vdup_lane_s32(*v10.i8, 0));
      v489 = v91;
      *v91.i8 = vshl_n_s32(*v91.i8, 0x10uLL);
      v92 = v91.i32[1];
      v93 = vshl_s32(*v91.i8, 0xFFFFFFF1FFFFFFF2);
      v94 = v91.i32[1] >> 16;
      v95 = vdupq_n_s32(v91.i32[0] >> 16);
      v96 = vdupq_n_s32(v94);
      v97.i64[0] = 0xFFFFFFFF00000000;
      v97.i64[1] = 0xFFFFFFFF00000000;
      v96.i64[0] = 0;
      v98 = vaddq_s32(v96, vandq_s8(v95, v97));
      v99 = vmlaq_s32(v96, v95, xmmword_29D2F11A0);
      v100 = vsubq_s32(v23, v98);
      v101 = vsubq_s32(v24, v99);
      v102 = vdupq_n_s32(-v93.i32[1]);
      v103 = vsubq_s32(vaddq_s32(v102, v25), v98);
      v104 = vsubq_s32(vaddq_s32(v26, v102), v99);
      v105 = vdupq_n_s32(-v93.i32[0]);
      v106 = vsubq_s32(vaddq_s32(v105, v27), v98);
      v107 = vaddq_s32(vsubq_s32(v105, v99), v28);
      v108 = v86;
      v109 = vdupq_n_s32(-v93.i32[0] - v93.i32[1]);
      v110 = v87;
      v111 = v90;
      v112 = v28;
      v113 = vsubq_s32(vaddq_s32(v109, v29), v98);
      v114 = vaddq_s32(vsubq_s32(v109, v99), v30);
      v115 = vmaxq_s32(v100, v101);
      v476 = v100;
      v471 = v101;
      v116 = vminq_s32(v100, v101);
      v115.i32[0] = vmaxvq_s32(v115);
      v116.i32[0] = vminvq_s32(v116);
      v117 = vdupq_lane_s32(*v115.i8, 0);
      v118 = vdupq_lane_s32(*v116.i8, 0);
      v119.i64[0] = 0x8000000080000000;
      v119.i64[1] = 0x8000000080000000;
      v120 = vmaxq_s32(v117, v119);
      v491 = v25;
      v121 = vminq_s32(v118, v119);
      v122 = vzip1q_s32(v117, v118);
      v100.i64[0] = 0x2000000020;
      v100.i64[1] = 0x2000000020;
      v123 = vbicq_s8(vsubq_s32(v100, vclsq_s32(v122)), vceqzq_s32(v122));
      v124 = vpmaxq_s32(v123, v123);
      v125 = vmaxq_s32(v103, v104);
      v478 = v26;
      v480 = v29;
      v467 = v104;
      v469 = v103;
      v126 = vminq_s32(v103, v104);
      v125.i32[0] = vmaxvq_s32(v125);
      v126.i32[0] = vminvq_s32(v126);
      v127 = vdupq_lane_s32(*v125.i8, 0);
      v128 = vdupq_lane_s32(*v126.i8, 0);
      v129 = vmaxq_s32(v120, v127);
      v130 = vminq_s32(v121, v128);
      v131 = vzip1q_s32(v127, v128);
      v132 = vbicq_s8(vsubq_s32(v100, vclsq_s32(v131)), vceqzq_s32(v131));
      v133 = vpmaxq_s32(v132, v132);
      v134 = vmaxq_s32(v106, v107);
      v135 = v24;
      v463 = v107;
      v465 = v106;
      v136 = vminq_s32(v106, v107);
      v134.i32[0] = vmaxvq_s32(v134);
      v136.i32[0] = vminvq_s32(v136);
      v137 = vdupq_lane_s32(*v134.i8, 0);
      v138 = vdupq_lane_s32(*v136.i8, 0);
      v139 = vmaxq_s32(v129, v137);
      v140 = vminq_s32(v130, v138);
      v141 = vzip1q_s32(v137, v138);
      v142 = vbicq_s8(vsubq_s32(v100, vclsq_s32(v141)), vceqzq_s32(v141));
      v143 = vpmaxq_s32(v142, v142);
      v144 = vmaxq_s32(v113, v114);
      v481 = v84;
      v460 = v114;
      v461 = v113;
      v145 = vminq_s32(v113, v114);
      v144.i32[0] = vmaxvq_s32(v144);
      v145.i32[0] = vminvq_s32(v145);
      v146 = vdupq_lane_s32(*v144.i8, 0);
      v147 = v85;
      v148 = vdupq_lane_s32(*v145.i8, 0);
      v149 = vmaxq_s32(v139, v146);
      v150 = vminq_s32(v140, v148);
      v151 = vzip1q_s32(v146, v148);
      v152 = vbicq_s8(vsubq_s32(v100, vclsq_s32(v151)), vceqzq_s32(v151));
      v153 = vpmaxq_s32(v152, v152);
      v154 = vmaxq_s32(vmaxq_s32(v124, v133), vmaxq_s32(v143, v153));
      v474 = v150;
      v155 = vclzq_s32(vsubq_s32(v149, v150));
      v156 = vsubq_s32(v100, v155);
      v157 = vcgtq_s32(v154, v156);
      v158 = vminq_s32(v156, v154);
      v103.i64[0] = 0x200000002;
      v103.i64[1] = 0x200000002;
      v154.i64[0] = 0xA0000000ALL;
      v154.i64[1] = 0xA0000000ALL;
      v159 = v30;
      v160 = vbslq_s8(v157, v154, v103);
      v154.i64[0] = 0x100000001;
      v154.i64[1] = 0x100000001;
      v161 = vmaxq_s32(v158, v154);
      v158.i64[0] = 0xF0000000FLL;
      v158.i64[1] = 0xF0000000FLL;
      v482 = v110;
      v162 = vmaxq_s32(vminq_s32(vsubq_s32(v161, v124), v158), 0);
      v163 = vmaxq_s32(vminq_s32(vsubq_s32(v161, v133), v158), 0);
      v164 = vmaxq_s32(vminq_s32(vsubq_s32(v161, v143), v158), 0);
      v165 = v112;
      v166 = vmaxq_s32(vminq_s32(vsubq_s32(v161, v153), v158), 0);
      v167 = vsubq_s32(v161, v162);
      v168 = vsubq_s32(v161, v163);
      v169 = vsubq_s32(v161, v164);
      v170 = vsubq_s32(v161, v166);
      v171 = vceqq_s32(vaddq_s32(v166, v164), vnegq_s32(vaddq_s32(v162, v163)));
      v164.i64[0] = 0x400000004;
      v164.i64[1] = 0x400000004;
      v172 = vbicq_s8(v164, v171);
      v173 = vorrq_s8(v172, v160);
      v112.i64[1] = v489.i64[1];
      v174 = v489.i16[0];
      *v112.i8 = vqmovn_u32(v173);
      v166.i64[0] = 0x8000800080008;
      v166.i64[1] = 0x8000800080008;
      *v172.i8 = vqmovn_u32(v161);
      v175 = vbicq_s8(v172, vceqzq_s16(vandq_s8(v112, v166)));
      v145.i64[0] = 0x2000200020002;
      v145.i64[1] = 0x2000200020002;
      v176.i64[0] = 0x10001000100010;
      v176.i64[1] = 0x10001000100010;
      v177 = vandq_s8(vshlq_n_s16(v112, 2uLL), v176);
      v178.i64[0] = 0x3000300030003;
      v178.i64[1] = 0x3000300030003;
      v179.i64[0] = 0x20002000200020;
      v179.i64[1] = 0x20002000200020;
      v180 = vaddq_s16(v175, v177);
      *v177.i8 = vqmovn_u32(v167);
      v107.i64[0] = 0x7000700070007;
      v107.i64[1] = 0x7000700070007;
      v181 = vmlaq_s16(vaddq_s16(v180, vandq_s8(vceqq_s16(vandq_s8(v112, v178), v145), v179)), v177, v107);
      v182 = vaddq_s32(vaddq_s32(v169, v168), v170);
      *v182.i8 = vqmovn_u32(v182);
      v183 = vaddq_s16(v181, vshlq_n_s16(v182, 3uLL));
      v490 = v111;
      *v181.i8 = vqmovn_u32(v111);
      v184 = vceqzq_s16(vandq_s8(v181, v166));
      *v166.i8 = vqmovn_u32(v70);
      v185 = vbicq_s8(v166, v184);
      v186 = vandq_s8(vshlq_n_s16(v181, 2uLL), v176);
      v187 = vandq_s8(vceqq_s16(vandq_s8(v181, v178), v145), v179);
      v188 = vaddq_s16(vaddq_s16(v185, v186), v187);
      *v187.i8 = vqmovn_u32(v481);
      v189 = vmlaq_s16(v188, v187, v107);
      v190 = vaddq_s32(vaddq_s32(v108, v147), v482);
      *v186.i8 = vqmovn_u32(v190);
      v191 = vshlq_n_s16(v186, 3uLL);
      v192 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v189, v191), v183)), 0);
      v72 = v92 & 0xFFFF0000 | v174;
      v193 = vaddvq_s32(v192);
      if (v193)
      {
        v194.i64[0] = 0x1F0000001FLL;
        v194.i64[1] = 0x1F0000001FLL;
        v195.i64[0] = -1;
        v195.i64[1] = -1;
        v196 = vandq_s8(vsubq_s32(vshlq_s32(v195, vsubq_s32(v194, v155)), v474), v157);
        v197 = vcltzq_s32(vshlq_n_s32(v192, 0x1FuLL));
        v475 = vbslq_s8(v197, v476, v23);
        v477 = vbslq_s8(v197, v471, v135);
        v491 = vbslq_s8(v197, v469, v491);
        v478 = vbslq_s8(v197, v467, v478);
        v468 = vbslq_s8(v197, v465, v27);
        v470 = vbslq_s8(v197, v463, v165);
        v472 = vbslq_s8(v197, v460, v159);
        v480 = vbslq_s8(v197, v461, v480);
        v481 = vbslq_s8(v197, v167, v481);
        v479 = vbslq_s8(v197, v196, v479);
        v70 = vbslq_s8(v197, v161, v70);
        v490 = vbslq_s8(v197, v173, v111);
        v464 = vbslq_s8(v197, v168, v147);
        v466 = vbslq_s8(v197, v169, v108);
        v482 = vbslq_s8(v197, v170, v482);
        v462 = vaddq_s32(vaddq_s32(v466, v464), v482);
        v198 = v485;
        v199 = v483;
      }

      else
      {
        v475 = v23;
        v477 = v135;
        v464 = v147;
        v466 = v108;
        v468 = v27;
        v470 = v165;
        v472 = v159;
        v198 = v485;
        v199 = v483;
        v462 = v190;
      }

      v212 = vsubq_s32(v10, vqtbl2q_s8(*v10.i8, xmmword_29D2F0F80));
      v202 = vsubq_s32(v11, vqtbl2q_s8(*v10.i8, xmmword_29D2F1030));
      v203 = v487;
      v203.i32[3] = v11.i32[3];
      v204 = vsubq_s32(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0));
      v205 = vsubq_s32(v487, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040));
      v206 = v473;
      v206.i32[3] = v11.i32[3];
      v486 = v198;
      v82 = vsubq_s32(v198, vqtbl2q_s8(*v198.i8, xmmword_29D2F1050));
      v207 = v488;
      v207.i32[3] = v11.i32[3];
      v208 = vsubq_s32(v473, vqtbl2q_s8(*v198.i8, xmmword_29D2F0F80));
      v484 = v199;
      v209 = vsubq_s32(v199, vqtbl2q_s8(*v199.i8, xmmword_29D2F1060));
      v210 = vsubq_s32(v488, vqtbl2q_s8(*v199.i8, xmmword_29D2F0F80));
      v211 = v202;
      v211.i32[3] = v212.i32[0];
      v212.i32[0] = v202.i32[3];
      v213 = vmaxq_s32(v212, v211);
      v214 = vminq_s32(v212, v211);
      v213.i32[0] = vmaxvq_s32(v213);
      v214.i32[0] = vminvq_s32(v214);
      v215 = vdupq_lane_s32(*v213.i8, 0);
      v216 = vdupq_lane_s32(*v214.i8, 0);
      v217.i64[0] = 0x8000000080000000;
      v217.i64[1] = 0x8000000080000000;
      v218 = vmaxq_s32(v215, v217);
      v219 = vminq_s32(v216, v217);
      v220 = vzip1q_s32(v215, v216);
      v221.i64[0] = 0x2000000020;
      v221.i64[1] = 0x2000000020;
      v222 = vbicq_s8(vsubq_s32(v221, vclsq_s32(v220)), vceqzq_s32(v220));
      v223 = vpmaxq_s32(v222, v222);
      v224 = vmaxq_s32(v204, v205);
      v225 = vminq_s32(v204, v205);
      v224.i32[0] = vmaxvq_s32(v224);
      v225.i32[0] = vminvq_s32(v225);
      v226 = vdupq_lane_s32(*v224.i8, 0);
      v227 = vdupq_lane_s32(*v225.i8, 0);
      v228 = vmaxq_s32(v218, v226);
      v229 = vminq_s32(v219, v227);
      v230 = vzip1q_s32(v226, v227);
      v231 = vbicq_s8(vsubq_s32(v221, vclsq_s32(v230)), vceqzq_s32(v230));
      v232 = vpmaxq_s32(v231, v231);
      v233 = vmaxq_s32(v82, v208);
      v234 = vminq_s32(v82, v208);
      v233.i32[0] = vmaxvq_s32(v233);
      v234.i32[0] = vminvq_s32(v234);
      v235 = vdupq_lane_s32(*v233.i8, 0);
      v236 = vdupq_lane_s32(*v234.i8, 0);
      v237 = vmaxq_s32(v228, v235);
      v238 = vminq_s32(v229, v236);
      v239 = vzip1q_s32(v235, v236);
      v240 = vbicq_s8(vsubq_s32(v221, vclsq_s32(v239)), vceqzq_s32(v239));
      v241 = vpmaxq_s32(v240, v240);
      v242 = vmaxq_s32(v209, v210);
      v243 = vminq_s32(v209, v210);
      v242.i32[0] = vmaxvq_s32(v242);
      v243.i32[0] = vminvq_s32(v243);
      v244 = vdupq_lane_s32(*v242.i8, 0);
      v245 = vdupq_lane_s32(*v243.i8, 0);
      v246 = vmaxq_s32(v237, v244);
      v247 = vminq_s32(v238, v245);
      v248 = vzip1q_s32(v244, v245);
      v249 = vbicq_s8(vsubq_s32(v221, vclsq_s32(v248)), vceqzq_s32(v248));
      v250 = vpmaxq_s32(v249, v249);
      v251 = vmaxq_s32(vmaxq_s32(v223, v232), vmaxq_s32(v241, v250));
      v252 = vclzq_s32(vsubq_s32(v246, v247));
      v253 = vsubq_s32(v221, v252);
      v254 = vcgtq_s32(v251, v253);
      v255 = vminq_s32(v253, v251);
      v253.i64[0] = 0x900000009;
      v253.i64[1] = 0x900000009;
      v217.i64[0] = 0x200000002;
      v217.i64[1] = 0x200000002;
      v256 = vorrq_s8(vandq_s8(vceqzq_s32(v255), v217), vsubq_s32(vandq_s8(v254, v253), vmvnq_s8(v254)));
      v217.i64[0] = 0xF0000000FLL;
      v217.i64[1] = 0xF0000000FLL;
      v257 = vmaxq_s32(vminq_s32(vsubq_s32(v255, v223), v217), 0);
      v258 = vmaxq_s32(vminq_s32(vsubq_s32(v255, v232), v217), 0);
      v259 = vmaxq_s32(vminq_s32(vsubq_s32(v255, v241), v217), 0);
      v260 = vmaxq_s32(vminq_s32(vsubq_s32(v255, v250), v217), 0);
      v261 = vsubq_s32(v255, v257);
      v217.i64[0] = 0x400000004;
      v217.i64[1] = 0x400000004;
      v262 = vbicq_s8(v217, vceqq_s32(vaddq_s32(v260, v259), vnegq_s32(vaddq_s32(v257, v258))));
      v263 = vorrq_s8(v262, v256);
      *v262.i8 = vqmovn_u32(v263);
      v264.i64[0] = 0x8000800080008;
      v264.i64[1] = 0x8000800080008;
      *v191.i8 = vqmovn_u32(v255);
      v265 = vbicq_s8(v191, vceqzq_s16(vandq_s8(v262, v264)));
      v266 = vandq_s8(vshlq_n_s16(v262, 2uLL), v176);
      v217.i64[0] = 0x2000200020002;
      v217.i64[1] = 0x2000200020002;
      v267 = vaddq_s16(v265, v266);
      *v266.i8 = vqmovn_u32(v261);
      v89.i64[0] = 0x7000700070007;
      v89.i64[1] = 0x7000700070007;
      v268 = vmlaq_s16(vaddq_s16(v267, vandq_s8(vceqq_s16(vandq_s8(v262, v178), v217), v179)), v266, v89);
      v267.i64[1] = v490.i64[1];
      *v267.i8 = vqmovn_u32(v490);
      v269 = vceqzq_s16(vandq_s8(v267, v264));
      *v264.i8 = vqmovn_u32(v70);
      v270 = vbicq_s8(v264, v269);
      v271 = vandq_s8(vshlq_n_s16(v267, 2uLL), v176);
      v272 = vandq_s8(vceqq_s16(vandq_s8(v267, v178), v217), v179);
      v273 = vaddq_s16(vaddq_s16(v270, v271), v272);
      *v272.i8 = vqmovn_u32(v481);
      v274 = vmlaq_s16(v273, v272, v89);
      v275 = vsubq_s32(v255, v258);
      v276 = vsubq_s32(v255, v259);
      v277 = vsubq_s32(v255, v260);
      v278 = vaddq_s32(vaddq_s32(v276, v275), v277);
      *v278.i8 = vqmovn_u32(v278);
      v89.i64[1] = v462.i64[1];
      *v217.i8 = vqmovn_u32(v462);
      v279 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v274, vshlq_n_s16(v217, 3uLL)), vaddq_s16(v268, vshlq_n_s16(v278, 3uLL)))), 0);
      v268.i16[0] = vaddvq_s32(v279);
      v280 = v268.u16[0];
      if (v268.i16[0])
      {
        v281.i64[0] = 0x1F0000001FLL;
        v281.i64[1] = 0x1F0000001FLL;
        v282 = vsubq_s32(v281, v252);
        v281.i64[0] = -1;
        v281.i64[1] = -1;
        v283 = vandq_s8(vsubq_s32(vshlq_s32(v281, v282), v247), v254);
        v284 = vcltzq_s32(vshlq_n_s32(v279, 0x1FuLL));
        v22.i32[0] = vbslq_s8(v284, vextq_s8(v11, v11, 0xCuLL), v22).u32[0];
        v475 = vbslq_s8(v284, v212, v475);
        v477 = vbslq_s8(v284, v211, v477);
        v491 = vbslq_s8(v284, v204, v491);
        v26 = vbslq_s8(v284, v205, v478);
        v27 = vbslq_s8(v284, v82, v468);
        v28 = vbslq_s8(v284, v208, v470);
        v29 = vbslq_s8(v284, v209, v480);
        v30 = vbslq_s8(v284, v210, v472);
        v285 = vbslq_s8(v284, v261, v481);
        v89.i64[1] = v464.i64[1];
        v85 = vbslq_s8(v284, v275, v464);
        v86 = vbslq_s8(v284, v276, v466);
        v87 = vbslq_s8(v284, v277, v482);
        v76 = vbslq_s8(v284, v283, v479);
        v70 = vbslq_s8(v284, v255, v70);
        v90 = vbslq_s8(v284, v263, v490);
      }

      else
      {
        v285 = v481;
        v28 = v470;
        v30 = v472;
        v76 = v479;
        v29 = v480;
        v87 = v482;
        v86 = v466;
        v27 = v468;
        v26 = v478;
        v85 = v464;
        v90 = v490;
      }

      if (v193)
      {
        v286 = v280 == 0;
      }

      else
      {
        v286 = 0;
      }

      v71 = v286;
      v25 = v491;
      v23 = v475;
      v24 = v477;
      v84 = v285;
      v13 = v473;
      v12 = v486;
      v20 = v484;
    }

    *v89.i8 = vqmovn_u32(v90);
    v287.i64[0] = 0x8000800080008;
    v287.i64[1] = 0x8000800080008;
    *v82.i8 = vqmovn_u32(v70);
    v287.i16[0] = vbicq_s8(v82, vceqzq_s16(vandq_s8(v89, v287))).u16[0];
    v288.i64[0] = 0x3000300030003;
    v288.i64[1] = 0x3000300030003;
    v289.i64[0] = 0x2000200020002;
    v289.i64[1] = 0x2000200020002;
    v290 = vceqq_s16(vandq_s8(v89, v288), v289);
    v289.i64[0] = 0x20002000200020;
    v289.i64[1] = 0x20002000200020;
    v290.i16[0] = vandq_s8(v290, v289).u16[0];
    v289.i16[0] = vqmovn_u32(v84).u16[0];
    if (((v287.i16[0] + ((4 * v89.i16[0]) & 0x10) + v290.i16[0] - v289.i16[0] + 8 * v289.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v86, v85), v87)).u16[0]) + 49) > 0x3FF)
    {
      *a1 = v10;
      a1[1] = v11;
      a1[2] = v18;
      a1[3] = v487;
      a1[4] = v12;
      a1[5] = v13;
      v294 = a1 + 6;
      v200 = 127;
      result = 128;
      *v294 = v20;
      v294[1] = v488;
    }

    else
    {
      v291 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v292 = 8 * (a1 & 7);
      if (v292)
      {
        v293 = *v291 & ~(-1 << v292);
      }

      else
      {
        v293 = 0;
      }

      *a2 = 0;
      if (v70.i32[0])
      {
        v295 = (32 * v70.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v295 = 0;
      }

      v296 = v295 | v90.i8[0] & 0x1F | (v22.u32[0] << 10);
      v297 = (v296 << v292) | v293;
      if (v292 >= 0x16)
      {
        *v291 = v297;
        v297 = v296 >> (-8 * (a1 & 7u));
      }

      v298 = v292 + 42;
      v299 = vsubq_s32(v70, v84);
      v300 = vsubq_s32(v70, v85);
      v301 = vsubq_s32(v70, v86);
      v302 = vsubq_s32(v70, v87);
      *v299.i8 = vqmovn_u32(v299);
      *v299.i8 = vqmovn_u16(v299);
      *v300.i8 = vqmovn_u32(v300);
      *v300.i8 = vqmovn_u16(v300);
      *v301.i8 = vqmovn_u32(v301);
      *v301.i8 = vqmovn_u16(v301);
      *v302.i8 = vqmovn_u32(v302);
      *v302.i8 = vqmovn_u16(v302);
      v299.i32[0] = vzip1q_s16(vzip1q_s8(v299, v300), vzip1q_s8(v301, v302)).u32[0];
      v300.i64[0] = 0x400000004;
      v300.i64[1] = 0x400000004;
      v301.i64[0] = 0x404040404040404;
      v301.i64[1] = 0x404040404040404;
      v303 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v90, v300))), v301);
      v301.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v304 = vandq_s8(vshlq_u8(v302, vorrq_s8(v303, v301)), v299.u32[0]);
      v305 = vmovl_u8(*v303.i8);
      v306 = vpaddq_s16(vshlq_u16(vmovl_u8(*v304.i8), vtrn1q_s16(0, v305)), vmovl_high_u8(v304));
      v307 = vpaddq_s16(v305, vmovl_high_u8(v303));
      v308 = vmovl_u16(*v307.i8);
      v309 = vmovl_high_u16(v307);
      v310 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v308)), vshlq_u32(vmovl_high_u16(v306), vtrn1q_s32(0, v309)));
      v311 = vpaddq_s32(v308, v309);
      v312.i64[0] = v310.u32[0];
      v312.i64[1] = v310.u32[1];
      v313 = v312;
      v312.i64[0] = v310.u32[2];
      v312.i64[1] = v310.u32[3];
      v314 = v312;
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v315 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v316 = vpaddq_s64(vshlq_u64(v313, vzip1q_s64(0, v315)), vshlq_u64(v314, vzip1q_s64(0, v312)));
      v317 = vpaddq_s64(v315, v312);
      v318 = (v292 + 42) & 0x3A;
      v319 = (v316.i64[0] << v318) | v297;
      if ((v317.i64[0] + v318) >= 0x40)
      {
        *(v291 + ((v298 >> 3) & 8)) = v319;
        v319 = v316.i64[0] >> -v318;
      }

      v320 = v317.i64[0] + v298;
      v321 = v319 | (v316.i64[1] << v320);
      if ((v320 & 0x3F) + v317.i64[1] >= 0x40)
      {
        *(v291 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
        v321 = v316.i64[1] >> -(v320 & 0x3F);
        if ((v320 & 0x3F) == 0)
        {
          v321 = 0;
        }
      }

      v322 = vceqq_s32(v70, v84);
      v323 = v320 + v317.i64[1];
      v324.i64[0] = 0x800000008;
      v324.i64[1] = 0x800000008;
      v325 = vandq_s8(vextq_s8(vtstq_s32(v90, v324), 0, 0xCuLL), v70);
      v326.i64[0] = 0x1F0000001FLL;
      v326.i64[1] = 0x1F0000001FLL;
      v327.i64[0] = -1;
      v327.i64[1] = -1;
      v328 = vandq_s8(vshlq_u32(v327, vaddq_s32(v325, v326)), v76);
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v330 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v331 = v329;
      v329.i64[0] = v325.u32[0];
      v329.i64[1] = v325.u32[1];
      v332 = v329;
      v333 = vzip1q_s64(0, v329);
      v329.i64[0] = v325.u32[2];
      v329.i64[1] = v325.u32[3];
      v334 = vpaddq_s64(vshlq_u64(v330, v333), vshlq_u64(v331, 0));
      v335 = vpaddq_s64(v332, v329);
      v336 = (v334.i64[0] << v323) | v321;
      if (v335.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v291 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v334.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = vandq_s8(v76, v322);
      v338 = v335.i64[0] + v323;
      v339 = v336 | (v334.i64[1] << v338);
      if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
      {
        *(v291 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v334.i64[1] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = vaddq_s32(v337, v23);
      v341 = v338 + v335.i64[1];
      if (v71)
      {
        v339 |= v72 << v341;
        if ((v341 & 0x3F) >= 0x20)
        {
          *(v291 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
          v339 = v72 >> -(v341 & 0x3F);
        }

        v341 += 32;
      }

      v342 = vextq_s8(0, v84, 0xCuLL);
      v343.i64[0] = 0x1F0000001FLL;
      v343.i64[1] = 0x1F0000001FLL;
      v344.i64[0] = -1;
      v344.i64[1] = -1;
      v345 = vandq_s8(vshlq_u32(v344, vaddq_s32(v342, v343)), v340);
      v346.i64[0] = v345.u32[0];
      v346.i64[1] = v345.u32[1];
      v347 = v346;
      v346.i64[0] = v345.u32[2];
      v346.i64[1] = v345.u32[3];
      v348 = v346;
      v346.i64[0] = v342.u32[2];
      v346.i64[1] = v342.u32[3];
      v349 = v346;
      v350 = vzip1q_s64(0, v346);
      v346.i64[0] = v342.u32[0];
      v346.i64[1] = v342.u32[1];
      v351 = vpaddq_s64(vshlq_u64(v347, 0), vshlq_u64(v348, v350));
      v352 = vpaddq_s64(v346, v349);
      v353 = (v351.i64[0] << v341) | v339;
      if (v352.i64[0] + (v341 & 0x3F) >= 0x40)
      {
        *(v291 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v351.i64[0] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = vceqq_s32(v70, v85);
      v355 = vaddq_s32(v24, v337);
      v356 = v352.i64[0] + v341;
      v357 = (v352.i64[0] + v341) & 0x3F;
      v358 = v353 | (v351.i64[1] << v356);
      if ((v356 & 0x3F) + v352.i64[1] >= 0x40)
      {
        *(v291 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v351.i64[1] >> -v357;
        if (!v357)
        {
          v358 = 0;
        }
      }

      v359 = vandq_s8(v76, v354);
      v360 = v356 + v352.i64[1];
      v361.i64[0] = 0x1F0000001FLL;
      v361.i64[1] = 0x1F0000001FLL;
      v362.i64[0] = -1;
      v362.i64[1] = -1;
      v363 = vandq_s8(vshlq_u32(v362, vaddq_s32(v84, v361)), v355);
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v365 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v366 = v364;
      v364.i64[0] = v84.u32[0];
      v364.i64[1] = v84.u32[1];
      v367 = v364;
      v364.i64[0] = v84.u32[2];
      v364.i64[1] = v84.u32[3];
      v368 = vpaddq_s64(vshlq_u64(v365, vzip1q_s64(0, v367)), vshlq_u64(v366, vzip1q_s64(0, v364)));
      v369 = vpaddq_s64(v367, v364);
      v370 = (v368.i64[0] << v360) | v358;
      if (v369.i64[0] + (v360 & 0x3F) >= 0x40)
      {
        *(v291 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v368.i64[0] >> -(v360 & 0x3F);
        if ((v360 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = vaddq_s32(v25, v359);
      v372 = v369.i64[0] + v360;
      v373 = v370 | (v368.i64[1] << v372);
      if ((v372 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v291 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v368.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v369.i64[1];
      v375.i64[0] = 0x1F0000001FLL;
      v375.i64[1] = 0x1F0000001FLL;
      v376.i64[0] = -1;
      v376.i64[1] = -1;
      v377 = vshlq_u32(v376, vaddq_s32(v85, v375));
      v378 = vandq_s8(v377, v371);
      v379.i64[0] = v378.u32[0];
      v379.i64[1] = v378.u32[1];
      v380 = v379;
      v379.i64[0] = v378.u32[2];
      v379.i64[1] = v378.u32[3];
      v381 = v379;
      v379.i64[0] = v85.u32[0];
      v379.i64[1] = v85.u32[1];
      v382 = v379;
      v379.i64[0] = v85.u32[2];
      v379.i64[1] = v85.u32[3];
      v383 = vzip1q_s64(0, v382);
      v384 = vzip1q_s64(0, v379);
      v385 = vpaddq_s64(vshlq_u64(v380, v383), vshlq_u64(v381, v384));
      v386 = vpaddq_s64(v382, v379);
      v387 = (v385.i64[0] << v374) | v373;
      if (v386.i64[0] + (v374 & 0x3F) >= 0x40)
      {
        *(v291 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        if ((v374 & 0x3F) != 0)
        {
          v387 = v385.i64[0] >> -(v374 & 0x3F);
        }

        else
        {
          v387 = 0;
        }
      }

      v388 = vceqq_s32(v70, v86);
      v389 = vaddq_s32(v26, v359);
      v390 = v386.i64[0] + v374;
      v391 = v387 | (v385.i64[1] << v390);
      if ((v390 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v291 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
        v391 = v385.i64[1] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v391 = 0;
        }
      }

      v392 = vandq_s8(v76, v388);
      v393 = v390 + v386.i64[1];
      v394 = vandq_s8(v377, v389);
      v395.i64[0] = v394.u32[0];
      v395.i64[1] = v394.u32[1];
      v396 = v395;
      v395.i64[0] = v394.u32[2];
      v395.i64[1] = v394.u32[3];
      v397 = vpaddq_s64(vshlq_u64(v396, v383), vshlq_u64(v395, v384));
      v398 = (v397.i64[0] << v393) | v391;
      if (v386.i64[0] + (v393 & 0x3F) >= 0x40)
      {
        *(v291 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
        v398 = v397.i64[0] >> -(v393 & 0x3F);
        if ((v393 & 0x3F) == 0)
        {
          v398 = 0;
        }
      }

      v399 = vaddq_s32(v27, v392);
      v400 = v386.i64[0] + v393;
      v401 = (v386.i64[0] + v393) & 0x3F;
      v402 = v398 | (v397.i64[1] << v400);
      if ((v400 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v291 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
        v402 = v397.i64[1] >> -v401;
        if (!v401)
        {
          v402 = 0;
        }
      }

      v403 = v400 + v386.i64[1];
      v404.i64[0] = 0x1F0000001FLL;
      v404.i64[1] = 0x1F0000001FLL;
      v405.i64[0] = -1;
      v405.i64[1] = -1;
      v406 = vshlq_u32(v405, vaddq_s32(v86, v404));
      v407 = vandq_s8(v406, v399);
      v408.i64[0] = v407.u32[0];
      v408.i64[1] = v407.u32[1];
      v409 = v408;
      v408.i64[0] = v407.u32[2];
      v408.i64[1] = v407.u32[3];
      v410 = v408;
      v408.i64[0] = v86.u32[0];
      v408.i64[1] = v86.u32[1];
      v411 = v408;
      v408.i64[0] = v86.u32[2];
      v408.i64[1] = v86.u32[3];
      v412 = vzip1q_s64(0, v411);
      v413 = vzip1q_s64(0, v408);
      v414 = vpaddq_s64(vshlq_u64(v409, v412), vshlq_u64(v410, v413));
      v415 = vpaddq_s64(v411, v408);
      v416 = (v414.i64[0] << v403) | v402;
      if (v415.i64[0] + (v403 & 0x3F) >= 0x40)
      {
        *(v291 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        if ((v403 & 0x3F) != 0)
        {
          v416 = v414.i64[0] >> -(v403 & 0x3F);
        }

        else
        {
          v416 = 0;
        }
      }

      v417 = vceqq_s32(v70, v87);
      v418 = vaddq_s32(v28, v392);
      v419 = v415.i64[0] + v403;
      v420 = v416 | (v414.i64[1] << v419);
      if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
      {
        *(v291 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v414.i64[1] >> -(v419 & 0x3F);
        if ((v419 & 0x3F) == 0)
        {
          v420 = 0;
        }
      }

      v421 = vandq_s8(v76, v417);
      v422 = v419 + v415.i64[1];
      v423 = vandq_s8(v406, v418);
      v424.i64[0] = v423.u32[0];
      v424.i64[1] = v423.u32[1];
      v425 = v424;
      v424.i64[0] = v423.u32[2];
      v424.i64[1] = v423.u32[3];
      v426 = vpaddq_s64(vshlq_u64(v425, v412), vshlq_u64(v424, v413));
      v427 = (v426.i64[0] << v422) | v420;
      if (v415.i64[0] + (v422 & 0x3F) >= 0x40)
      {
        *(v291 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v426.i64[0] >> -(v422 & 0x3F);
        if ((v422 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = vaddq_s32(v29, v421);
      v429 = v415.i64[0] + v422;
      v430 = (v415.i64[0] + v422) & 0x3F;
      v431 = v427 | (v426.i64[1] << v429);
      if ((v429 & 0x3F) + v415.i64[1] >= 0x40)
      {
        *(v291 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        v431 = v426.i64[1] >> -v430;
        if (!v430)
        {
          v431 = 0;
        }
      }

      v432 = v429 + v415.i64[1];
      v433.i64[0] = 0x1F0000001FLL;
      v433.i64[1] = 0x1F0000001FLL;
      v434.i64[0] = -1;
      v434.i64[1] = -1;
      v435 = vshlq_u32(v434, vaddq_s32(v87, v433));
      v436 = vandq_s8(v435, v428);
      v437.i64[0] = v436.u32[0];
      v437.i64[1] = v436.u32[1];
      v438 = v437;
      v437.i64[0] = v436.u32[2];
      v437.i64[1] = v436.u32[3];
      v439 = v437;
      v437.i64[0] = v87.u32[0];
      v437.i64[1] = v87.u32[1];
      v440 = v437;
      v437.i64[0] = v87.u32[2];
      v437.i64[1] = v87.u32[3];
      v441 = vzip1q_s64(0, v440);
      v442 = vzip1q_s64(0, v437);
      v443 = vpaddq_s64(vshlq_u64(v438, v441), vshlq_u64(v439, v442));
      v444 = vpaddq_s64(v440, v437);
      v445 = (v429 + v415.i64[1]) & 0x3F;
      v446 = (v443.i64[0] << (v429 + v415.i8[8])) | v431;
      if ((v444.i64[0] + v445) > 0x3F)
      {
        *(v291 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
        if (v445)
        {
          v446 = v443.i64[0] >> -v445;
        }

        else
        {
          v446 = 0;
        }
      }

      v447 = vaddq_s32(v30, v421);
      v448 = v444.i64[0] + v432;
      v449 = v446 | (v443.i64[1] << v448);
      if ((v448 & 0x3F) + v444.i64[1] >= 0x40)
      {
        *(v291 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
        v449 = v443.i64[1] >> -(v448 & 0x3F);
        if ((v448 & 0x3F) == 0)
        {
          v449 = 0;
        }
      }

      v450 = v448 + v444.i64[1];
      v451 = vandq_s8(v435, v447);
      v452.i64[0] = v451.u32[0];
      v452.i64[1] = v451.u32[1];
      v453 = v452;
      v452.i64[0] = v451.u32[2];
      v452.i64[1] = v451.u32[3];
      v454 = vpaddq_s64(vshlq_u64(v453, v441), vshlq_u64(v452, v442));
      v455 = (v454.i64[0] << v450) | v449;
      if (v444.i64[0] + (v450 & 0x3F) >= 0x40)
      {
        *(v291 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
        v455 = v454.i64[0] >> -(v450 & 0x3F);
        if ((v450 & 0x3F) == 0)
        {
          v455 = 0;
        }
      }

      v456 = v444.i64[0] + v450;
      v457 = (v444.i64[0] + v450) & 0x3F;
      v458 = v455 | (v454.i64[1] << (v444.i8[0] + v450));
      if ((v457 + v444.i64[1]) >= 0x40)
      {
        *(v291 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v458;
        v458 = v454.i64[1] >> -v457;
        if (!v457)
        {
          v458 = 0;
        }
      }

      v459 = v456 + v444.i64[1];
      if ((v459 & 0x3F) != 0)
      {
        *(v291 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v458;
      }

      result = (v459 - v292 + 7) >> 3;
      v200 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = a3->i32[0];
    v200 = 3;
    result = 4;
  }

  *a2 = v200;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int32x4_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 42;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x17)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16 = vdupq_n_s32(v15 & 0x1F);
  v17 = (8 * (a3 & 7)) | 0x400;
  v18.i64[0] = 0x300000003;
  v18.i64[1] = 0x300000003;
  v19 = vbicq_s8(vdupq_n_s32(((v15 >> 5) & 0x1F) + 1), vceqq_s32((*&v16 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v18));
  v18.i64[0] = 0x404040404040404;
  v18.i64[1] = 0x404040404040404;
  v20 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32((*&v16 & __PAIR128__(0xFFFFFFE4FFFFFFE4, 0xFFFFFFE4FFFFFFE4)))), v18);
  if (vmaxvq_s8(v20) < 1)
  {
    v29 = 0;
    v53.i64[0] = -1;
    v53.i64[1] = -1;
    v47 = v19;
    v48 = v19;
    v49 = v19;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v46 = v19;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
  }

  else
  {
    v21 = vmovl_u8(*&vpaddq_s8(v20, v20));
    v22 = vmovl_u16(*&vpaddq_s16(v21, v21));
    v23 = vpaddq_s32(v22, v22).u64[0];
    v24.i64[0] = v23;
    v24.i64[1] = HIDWORD(v23);
    v25 = v24;
    v26 = vaddvq_s64(v24);
    v27 = v26 + v14;
    v28 = v26 <= 0x80 && v17 >= v27;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = v14 & 0x3A;
      v32 = vaddq_s64(vzip1q_s64(0, v25), vdupq_n_s64(v31));
      v33 = (v13 + ((v14 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v33, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(v33->i64[0], 0), vnegq_s64(v32)));
      if (v26 + v31 >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v33[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(v33[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v30);
      }

      v14 = v27;
    }

    v34 = vzip1_s32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v35.i64[0] = v34.u32[0];
    v35.i64[1] = v34.u32[1];
    v36 = vshlq_u64(v30, vnegq_s64(v35));
    v37 = vuzp1q_s32(vzip1q_s64(v30, v36), vzip2q_s64(v30, v36));
    v38 = vshlq_u32(v37, vnegq_s32((*&v21 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v39 = vuzp1q_s16(vzip1q_s32(v37, v38), vzip2q_s32(v37, v38));
    v40 = vzip1q_s16(v39, vshlq_u16(v39, vnegq_s16(vmovl_u8(vuzp1_s8(*v20.i8, *v16.i8)))));
    *v40.i8 = vmovn_s16(v40);
    v37.i64[0] = 0x101010101010101;
    v37.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v37, v20);
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    v41.i32[0] = vandq_s8(vaddq_s8(v41, v37), v40).u32[0];
    v42 = vdupq_n_s32(v41.i8[0]);
    v43 = vdupq_n_s32(v41.i8[1]);
    v44 = vdupq_n_s32(v41.i8[2]);
    v45 = vdupq_n_s32(v41.i8[3]);
    v46 = vsubq_s32(v19, v42);
    v47 = vsubq_s32(v19, v43);
    v48 = vsubq_s32(v19, v44);
    v49 = vsubq_s32(v19, v45);
    v50 = vceqzq_s32(v42);
    v51 = vceqzq_s32(v43);
    v52 = vceqzq_s32(v44);
    v53 = vceqzq_s32(v45);
  }

  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vtstq_s32((*&v16 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8)), (*&v16 & __PAIR128__(0xFFFFFFE8FFFFFFE8, 0xFFFFFFE8FFFFFFE8))), 0, 0xCuLL), v19);
  v56 = vpaddq_s32(v55, v55).u64[0];
  v57.i64[0] = v56;
  v57.i64[1] = HIDWORD(v56);
  v58 = v57;
  v59 = vaddvq_s64(v57);
  v60 = v59 + v14;
  if (v59 <= 0x80 && v17 >= v60)
  {
    v62 = v14 & 0x3F;
    v63 = vaddq_s64(vzip1q_s64(0, v58), vdupq_n_s64(v62));
    v64 = (v13 + 8 * (v14 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v64, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v63)), vshlq_u64(vdupq_lane_s64(v64->i64[0], 0), vnegq_s64(v63)));
    if (v59 + v62 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v64[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v63)), vshlq_u64(vdupq_laneq_s64(v64[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v63))), v54);
    }

    v14 = v60;
  }

  else
  {
    v29 = 1;
  }

  v65 = v15 & 3;
  v66 = 0uLL;
  if (v65 == 2)
  {
    v67 = v14 + 16;
    if (v17 >= v14 + 16)
    {
      v71 = (v13 + 8 * (v14 >> 6));
      v72 = *v71 >> v14;
      if ((v14 & 0x3F) >= 0x31)
      {
        v72 |= v71[1] << -(v14 & 0x3F);
      }

      v68 = v72;
      v69 = v14 + 32;
    }

    else
    {
      v68 = 0;
      v29 = 1;
      v69 = v14 + 16;
      v67 = v14;
    }

    v70 = v68;
    if (v17 >= v69)
    {
      v73 = (v13 + 8 * (v67 >> 6));
      v74 = *v73 >> v67;
      if ((v67 & 0x3F) >= 0x31)
      {
        v74 |= v73[1] << -(v67 & 0x3F);
      }

      v70.i32[1] = v74;
    }

    else
    {
      v29 = 1;
      v69 = v67;
    }
  }

  else
  {
    v69 = v14;
    v70 = 0;
  }

  v75 = vextq_s8(0, v46, 0xCuLL);
  v76 = vpaddq_s32(v75, v75).u64[0];
  v77.i64[0] = v76;
  v77.i64[1] = HIDWORD(v76);
  v78 = v77;
  v79 = vaddvq_s64(v77);
  v80 = v79 + v69;
  if (v79 <= 0x80 && v17 >= v80)
  {
    v82 = v69 & 0x3F;
    v83 = vaddq_s64(vzip1q_s64(0, v78), vdupq_n_s64(v82));
    v84 = (v13 + 8 * (v69 >> 6));
    v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v83)));
    if (v79 + v82 >= 0x81)
    {
      v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v66);
    }

    v69 = v80;
  }

  else
  {
    v29 = 1;
  }

  v85 = vpaddq_s32(v46, v46).u64[0];
  v86.i64[0] = v85;
  v86.i64[1] = HIDWORD(v85);
  v87 = v86;
  v88 = vaddvq_s64(v86);
  v89 = v88 + v69;
  v90 = 0uLL;
  if (v88 <= 0x80 && v17 >= v89)
  {
    v93 = v69 & 0x3F;
    v94 = vaddq_s64(vzip1q_s64(0, v87), vdupq_n_s64(v93));
    v95 = (v13 + 8 * (v69 >> 6));
    v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
    if (v88 + v93 >= 0x81)
    {
      v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v92);
    }

    v69 = v89;
  }

  else
  {
    v29 = 1;
    v92 = 0uLL;
  }

  v96 = vpaddq_s32(v47, v47).u64[0];
  v97.i64[0] = v96;
  v97.i64[1] = HIDWORD(v96);
  v98 = v97;
  v99 = vaddvq_s64(v97);
  v100 = v99 + v69;
  if (v99 <= 0x80 && v17 >= v100)
  {
    v102 = v69 & 0x3F;
    v103 = vaddq_s64(vzip1q_s64(0, v98), vdupq_n_s64(v102));
    v104 = (v13 + 8 * (v69 >> 6));
    v90 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v104, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v104->i64[0], 0), vnegq_s64(v103)));
    if (v99 + v102 >= 0x81)
    {
      v90 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v104[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v104[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v90);
    }

    v69 = v100;
  }

  else
  {
    v29 = 1;
  }

  v105 = 0uLL;
  if (v99 > 0x80 || (v106 = v99 + v69, v17 < v99 + v69))
  {
    v106 = v69;
    v29 = 1;
    v110 = 0uLL;
  }

  else
  {
    v107 = v69 & 0x3F;
    v108 = vaddq_s64(vzip1q_s64(0, v98), vdupq_n_s64(v107));
    v109 = (v13 + 8 * (v69 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
    if (v99 + v107 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v110);
    }
  }

  v111 = vpaddq_s32(v48, v48).u64[0];
  v112.i64[0] = v111;
  v112.i64[1] = HIDWORD(v111);
  v113 = v112;
  v114 = vaddvq_s64(v112);
  v115 = v114;
  if (v114 > 0x80 || (v116 = v114 + v106, v17 < v114 + v106))
  {
    v116 = v106;
    v29 = 1;
  }

  else
  {
    v117 = v106 & 0x3F;
    v118 = vaddq_s64(vzip1q_s64(0, v113), vdupq_n_s64(v117));
    v119 = (v13 + 8 * (v106 >> 6));
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
    if (v115 + v117 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v105);
    }
  }

  v263 = v11;
  v264 = v10;
  v265 = v9;
  v266 = v8;
  v267 = v7;
  v268 = v6;
  v269 = v5;
  v270 = v4;
  v120 = 0uLL;
  if (v115 > 0x80 || (v121 = v115 + v116, v17 < v115 + v116))
  {
    v121 = v116;
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v122 = v116 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v113), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v116 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v115 + v122 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }
  }

  v126 = vpaddq_s32(v49, v49).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v129;
  if (v129 > 0x80 || (v131 = v129 + v121, v17 < v129 + v121))
  {
    v131 = v121;
    v29 = 1;
  }

  else
  {
    v132 = v121 & 0x3F;
    v133 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v132));
    v134 = (v13 + 8 * (v121 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v133)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v133)));
    if (v130 + v132 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v133)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v133))), v120);
    }
  }

  if (v130 > 0x80 || v17 < v130 + v131)
  {
    goto LABEL_89;
  }

  v135 = vzip1_s32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v136.i64[0] = v135.u32[0];
  v136.i64[1] = v135.u32[1];
  v137.i64[0] = 0x1F0000001FLL;
  v137.i64[1] = 0x1F0000001FLL;
  v138 = vaddq_s32(v49, v137);
  v139.i64[0] = 0x2000000020;
  v139.i64[1] = 0x2000000020;
  v140 = vsubq_s32(v139, v49);
  v141 = (v13 + 8 * (v131 >> 6));
  v142 = vaddq_s64(vzip1q_s64(0, v128), vdupq_n_s64(v131 & 0x3F));
  v143 = vnegq_s64(v136);
  v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v142)));
  if (v130 + (v131 & 0x3F) < 0x81)
  {
    if (v29)
    {
      goto LABEL_89;
    }

    v149 = vshlq_u64(v144, v143);
    v147 = vzip2q_s64(v144, v149);
    v148 = vzip1q_s64(v144, v149);
  }

  else
  {
    if (v29)
    {
      goto LABEL_89;
    }

    v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v144);
    v146 = vshlq_u64(v145, v143);
    v147 = vzip2q_s64(v145, v146);
    v148 = vzip1q_s64(v145, v146);
  }

  v150 = vshlq_s32(vshlq_s32(vuzp1q_s32(v148, v147), v140), v138);
  v151 = a4 + 1;
  if (v17 + 8 * v151 - (v130 + v131) - 1024 >= 9)
  {
LABEL_89:
    v152 = 0;
    v153 = 0;
    v154 = 8 * (&v262 & 7);
    v155 = 32;
    do
    {
      v156 = 64 - v154;
      if (64 - v154 >= v155)
      {
        v156 = v155;
      }

      *&v261[8 * v152] |= ((0xFFFFFFFFFFFFFFFFLL >> v153) & ~(-1 << v156)) << v154;
      v153 += v156;
      v157 = v156 + v154;
      v152 += v157 >> 6;
      v154 = v157 & 0x3F;
      v155 -= v156;
    }

    while (v155);
    v151 = 0;
    v158 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v159 = (a1->i64 + 2 * a2);
    *v158 = 0;
    v158[1] = 0;
    v160 = (a1->i64 + 2 * a2 + a2);
    *v159 = 0;
    v159[1] = 0;
    *v160 = 0;
    v160[1] = 0;
    return v151;
  }

  v257 = v50;
  v258 = v51;
  v259 = v52;
  v260 = v53;
  v162 = vzip1_s32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  v163 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
  v164 = vzip1_s32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  v165 = vzip1_s32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  v166 = vzip1_s32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
  v167.i64[0] = v162.u32[0];
  v167.i64[1] = v162.u32[1];
  v168 = v167;
  v167.i64[0] = v163.u32[0];
  v167.i64[1] = v163.u32[1];
  v169 = v167;
  v167.i64[0] = v164.u32[0];
  v167.i64[1] = v164.u32[1];
  v170 = v167;
  v167.i64[0] = v165.u32[0];
  v167.i64[1] = v165.u32[1];
  v171 = v167;
  v167.i64[0] = v166.u32[0];
  v167.i64[1] = v166.u32[1];
  v172 = vnegq_s64(v171);
  v173 = vnegq_s64(v167);
  v174 = vshlq_u64(v54, vnegq_s64(v168));
  v175 = vshlq_u64(v66, vnegq_s64(v169));
  v176 = vshlq_u64(v92, vnegq_s64(v170));
  v177 = vshlq_u64(v90, v172);
  v178 = vshlq_u64(v110, v172);
  v179 = vshlq_u64(v105, v173);
  v180 = vshlq_u64(v125, v173);
  v181 = vzip2q_s64(v54, v174);
  v182 = vzip1q_s64(v54, v174);
  v174.i64[0] = 0x2000000020;
  v174.i64[1] = 0x2000000020;
  v183 = vzip2q_s64(v66, v175);
  v184 = vzip1q_s64(v66, v175);
  v175.i64[0] = 0x2000000020;
  v175.i64[1] = 0x2000000020;
  v185 = vzip2q_s64(v92, v176);
  v186 = vzip1q_s64(v92, v176);
  v187 = vzip2q_s64(v90, v177);
  v188 = vzip1q_s64(v90, v177);
  v177.i64[0] = 0x2000000020;
  v177.i64[1] = 0x2000000020;
  v189 = vzip2q_s64(v110, v178);
  v190 = vzip1q_s64(v110, v178);
  v191 = vzip2q_s64(v105, v179);
  v192 = vzip1q_s64(v105, v179);
  v179.i64[0] = 0x2000000020;
  v179.i64[1] = 0x2000000020;
  v193 = vzip2q_s64(v125, v180);
  v194 = vzip1q_s64(v125, v180);
  v195 = v15 >> 10;
  v196 = vuzp1q_s32(v182, v181);
  v180.i64[0] = 0x1F0000001FLL;
  v180.i64[1] = 0x1F0000001FLL;
  v197 = vuzp1q_s32(v184, v183);
  v184.i64[0] = 0x1F0000001FLL;
  v184.i64[1] = 0x1F0000001FLL;
  v198 = vsubq_s32(v175, v75);
  v199 = vuzp1q_s32(v186, v185);
  v200 = vsubq_s32(v175, v46);
  v201 = vuzp1q_s32(v188, v187);
  v175.i64[0] = 0x1F0000001FLL;
  v175.i64[1] = 0x1F0000001FLL;
  v202 = vsubq_s32(v177, v47);
  v203 = vuzp1q_s32(v190, v189);
  v204 = vuzp1q_s32(v192, v191);
  v190.i64[0] = 0x1F0000001FLL;
  v190.i64[1] = 0x1F0000001FLL;
  v205 = vsubq_s32(v179, v48);
  v206 = vaddq_s32(v75, v184);
  v207 = vaddq_s32(v46, v184);
  v208 = vshlq_s32(v199, v200);
  v209 = vaddq_s32(v47, v175);
  v210 = vaddq_s32(v48, v190);
  v211 = vshlq_s32(vshlq_s32(v196, vsubq_s32(v174, v55)), vaddq_s32(v55, v180));
  v212 = vshlq_s32(vshlq_s32(v197, v198), v206);
  v213 = vshlq_s32(v208, v207);
  v214 = vshlq_s32(vshlq_s32(v201, v202), v209);
  v215 = vshlq_s32(vshlq_s32(v203, v202), v209);
  v216 = vshlq_s32(vshlq_s32(v204, v205), v210);
  v217 = vshlq_s32(vshlq_s32(vuzp1q_s32(v194, v193), v205), v210);
  v218 = vshlq_u64(v120, v143);
  v219 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v120, v218), vzip2q_s64(v120, v218)), v140), v138);
  if (v65 == 2)
  {
    v220 = vdupq_lane_s32(v70, 1);
    v221.i64[0] = 0xFFFFFFFF00000000;
    v221.i64[1] = 0xFFFFFFFF00000000;
    v220.i64[0] = 0;
    v222 = vaddq_s32(vandq_s8(vdupq_lane_s32(v70, 0), v221), v220);
    v223 = vmlaq_lane_s32(v220, xmmword_29D2F11A0, v70, 0);
    v212 = vaddq_s32(v212, v222);
    *v221.i8 = vshl_u32(v70, 0x100000002);
    v224 = vdupq_lane_s32(*v221.i8, 1);
    v213 = vaddq_s32(v213, v223);
    v214 = vaddq_s32(vaddq_s32(v222, v224), v214);
    v225 = vdupq_lane_s32(*v221.i8, 0);
    v215 = vaddq_s32(vaddq_s32(v223, v224), v215);
    v216 = vaddq_s32(vaddq_s32(v222, v225), v216);
    v217 = vaddq_s32(vaddq_s32(v223, v225), v217);
    v226 = vdupq_lane_s32(vadd_s32(*v221.i8, *v224.i8), 0);
    v219 = vaddq_s32(vaddq_s32(v226, v222), v219);
    v150 = vaddq_s32(vaddq_s32(v226, v223), v150);
  }

  v227 = vdupq_n_s32(v195);
  v228 = vdupq_lane_s32(*v211.i8, 0);
  v229 = vandq_s8(v228, v257);
  v230 = vsubq_s32(vaddq_s32(vandq_s8(v211, v257), v212), v229);
  v231 = vsubq_s32(v213, v229);
  v232 = vandq_s8(v228, v258);
  v233 = vsubq_s32(v214, v232);
  v234 = vsubq_s32(v215, v232);
  v235 = vandq_s8(v228, v259);
  v236 = vsubq_s32(v216, v235);
  v237 = vsubq_s32(v217, v235);
  v238 = vandq_s8(v228, v260);
  v239 = vsubq_s32(v219, v238);
  v240 = vsubq_s32(v150, v238);
  v238.i64[0] = 0x100000001;
  v238.i64[1] = 0x100000001;
  if (vaddvq_s32(vceqq_s32((*&v16 & __PAIR128__(0xFFFFFFE3FFFFFFE3, 0xFFFFFFE3FFFFFFE3)), v238)))
  {
    v241 = vnegq_s32((*&v16 & __PAIR128__(0xFFFFFFE1FFFFFFE1, 0xFFFFFFE1FFFFFFE1)));
    v242 = v231;
    v242.i32[3] = v230.i32[0];
    v243 = v230;
    v243.i32[0] = v231.i32[3];
    v271.val[0] = vbslq_s8(v241, v243, v230);
    v271.val[1] = vbslq_s8(v241, v242, v231);
    v242.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v242.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v272.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(v271, xmmword_29D2F0F80), v241), v271.val[0]);
    v272.val[1] = vaddq_s32(v271.val[1], vandq_s8(vqtbl2q_s8(v271, v242), v241));
    v230 = vaddq_s32(vandq_s8(vqtbl2q_s8(v272, xmmword_29D2F0F90), v241), v272.val[0]);
    v231 = vaddq_s32(v272.val[1], vandq_s8(vqtbl2q_s8(v272, v242), v241));
    v272.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v233.i8, xmmword_29D2F0FA0), v241), v233);
    v272.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v233.i8, xmmword_29D2F0FB0), v241), v234);
    v233 = vaddq_s32(vandq_s8(vqtbl2q_s8(v272, xmmword_29D2F0FC0), v241), v272.val[0]);
    v234 = vaddq_s32(v272.val[1], vandq_s8(vqtbl2q_s8(v272, v242), v241));
    v272.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v236.i8, xmmword_29D2F0FD0), v241), v236);
    v272.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v236.i8, xmmword_29D2F0F80), v241), v237);
    v236 = vaddq_s32(vandq_s8(vqtbl2q_s8(v272, v242), v241), v272.val[0]);
    v237 = vaddq_s32(v272.val[1], vandq_s8(vqtbl2q_s8(v272, xmmword_29D2F0FE0), v241));
    v271.val[0] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v239.i8, xmmword_29D2F0FF0), v241), v239);
    v271.val[1] = vaddq_s32(vandq_s8(vqtbl2q_s8(*v239.i8, xmmword_29D2F0F80), v241), v240);
    v239 = vaddq_s32(vandq_s8(vqtbl2q_s8(v271, v242), v241), v271.val[0]);
    v240 = vaddq_s32(v271.val[1], vandq_s8(vqtbl2q_s8(v271, xmmword_29D2F1000), v241));
  }

  v244 = vaddq_s32(v227, v230);
  v245 = vaddq_s32(v231, v227);
  v246 = vaddq_s32(v233, v227);
  v247 = vaddq_s32(v234, v227);
  v248 = vaddq_s32(v236, v227);
  v249 = vaddq_s32(v237, v227);
  v250 = vaddq_s32(v239, v227);
  v251 = vaddq_s32(v240, v227);
  v252.i64[0] = 0x1000000010;
  v252.i64[1] = 0x1000000010;
  v253 = vcgtq_u32(v252, v16);
  v252.i64[0] = -1;
  v252.i64[1] = -1;
  v254 = (a1 + a2);
  *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v244, v252), v253), v244);
  a1[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v246, v252), v253), v246);
  v255 = (a1 + 2 * a2);
  *v254 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v245, v252), v253), v245);
  v254[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v247, v252), v253), v247);
  *v255 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v248, v252), v253), v248);
  v255[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v250, v252), v253), v250);
  v256 = (v255 + a2);
  *v256 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v249, v252), v253), v249);
  v256[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v251, v252), v253), v251);
  return v151;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = *(a3 + 16);
  v6 = (a3 + 2 * a4);
  v8 = *a3;
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v12 = *v6;
  v13 = v6[1];
  v11 = (v6 + a4);
  v14 = vdupq_lane_s32(*a3, 0);
  v15 = vsubq_s32(*a3, v14);
  v16 = vsubq_s32(v9, v14);
  v17 = vsubq_s32(v7, v14);
  v18 = vsubq_s32(v10, v14);
  v19 = vsubq_s32(v12, v14);
  v20 = vsubq_s32(*v11, v14);
  v21 = vsubq_s32(v13, v14);
  v467 = *v11;
  v468 = v11[1];
  v22 = vsubq_s32(v468, v14);
  v23 = vmaxq_s32(v15, v16);
  v24 = vminq_s32(v15, v16);
  v23.i32[0] = vmaxvq_s32(v23);
  v24.i32[0] = vminvq_s32(v24);
  v25 = vdupq_lane_s32(*v23.i8, 0);
  v26 = vdupq_lane_s32(*v24.i8, 0);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v28 = vmaxq_s32(v25, v27);
  v29.i64[0] = 0x8000000080000000;
  v29.i64[1] = 0x8000000080000000;
  v30 = vminq_s32(v26, v29);
  v31 = vzip1q_s32(v25, v26);
  v32.i64[0] = 0x2000000020;
  v32.i64[1] = 0x2000000020;
  v33 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v31)), vceqzq_s32(v31));
  v34 = vpmaxq_s32(v33, v33);
  v35 = vmaxq_s32(v17, v18);
  v36 = vminq_s32(v17, v18);
  v35.i32[0] = vmaxvq_s32(v35);
  v36.i32[0] = vminvq_s32(v36);
  v37 = vdupq_lane_s32(*v35.i8, 0);
  v38 = vdupq_lane_s32(*v36.i8, 0);
  v39 = vmaxq_s32(v28, v37);
  v40 = vminq_s32(v30, v38);
  v41 = vzip1q_s32(v37, v38);
  v42 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v41)), vceqzq_s32(v41));
  v43 = vpmaxq_s32(v42, v42);
  v44 = vmaxq_s32(v19, v20);
  v45 = vminq_s32(v19, v20);
  v44.i32[0] = vmaxvq_s32(v44);
  v46 = vdupq_lane_s32(*v44.i8, 0);
  v45.i32[0] = vminvq_s32(v45);
  v47 = vdupq_lane_s32(*v45.i8, 0);
  v48 = vmaxq_s32(v39, v46);
  v49 = vminq_s32(v40, v47);
  v50 = vzip1q_s32(v46, v47);
  v51 = vbicq_s8(vsubq_s32(v32, vclsq_s32(v50)), vceqzq_s32(v50));
  v52 = vmaxq_s32(v21, v22);
  v53 = vminq_s32(v21, v22);
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
    v70 = vandq_s8(vsubq_s32(vshlq_s32(v67, v68), v57), v69);
    v71.i64[0] = 0x800000008;
    v71.i64[1] = 0x800000008;
    v72.i64[0] = 0x300000003;
    v72.i64[1] = 0x300000003;
    v73 = vorrq_s8(vandq_s8(vceqzq_s32(v64), v72), vandq_s8(v69, v71));
    v69.i64[0] = 0xF0000000FLL;
    v69.i64[1] = 0xF0000000FLL;
    v74 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v34), v69), 0);
    v75 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v43), v69), 0);
    v76 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v56), v69), 0);
    v77 = vmaxq_s32(vminq_s32(vsubq_s32(v64, v60), v69), 0);
    v78 = vsubq_s32(v64, v74);
    v469 = vsubq_s32(v64, v75);
    v470 = vsubq_s32(v64, v76);
    v79 = vsubq_s32(v64, v77);
    v80 = vceqq_s32(vaddq_s32(v77, v76), vnegq_s32(vaddq_s32(v74, v75)));
    v75.i64[0] = 0x400000004;
    v75.i64[1] = 0x400000004;
    v81 = vbicq_s8(v75, v80);
    v82 = vorrq_s8(v81, v73);
    if (a5 >= 2 && a6 >= 2)
    {
      v83 = vextq_s8(v8, v8, 4uLL);
      *v83.i8 = vsub_s32(*v83.i8, vdup_lane_s32(*v8.i8, 0));
      v458 = v83;
      v460 = v70;
      *v83.i8 = vshl_n_s32(*v83.i8, 0x10uLL);
      v84 = v83.i32[1];
      v85 = vshl_s32(*v83.i8, 0xFFFFFFF1FFFFFFF2);
      v86 = v83.i32[1] >> 16;
      v87 = vdupq_n_s32(v83.i32[0] >> 16);
      v88 = vdupq_n_s32(v86);
      v89.i64[0] = 0xFFFFFFFF00000000;
      v89.i64[1] = 0xFFFFFFFF00000000;
      v88.i64[0] = 0;
      v90 = vaddq_s32(v88, vandq_s8(v87, v89));
      v91 = vmlaq_s32(v88, v87, xmmword_29D2F11A0);
      v92 = vsubq_s32(v15, v90);
      v93 = vsubq_s32(v16, v91);
      v94 = vdupq_n_s32(-v85.i32[1]);
      v95 = vsubq_s32(vaddq_s32(v94, v17), v90);
      v457 = v17;
      v96 = vsubq_s32(vaddq_s32(v18, v94), v91);
      v97 = vdupq_n_s32(-v85.i32[0]);
      v98 = v22;
      v99 = vsubq_s32(vaddq_s32(v97, v19), v90);
      v466 = v18;
      v100 = vaddq_s32(vsubq_s32(v97, v91), v20);
      v101 = vdupq_n_s32(-v85.i32[0] - v85.i32[1]);
      v102 = v79;
      v103 = vsubq_s32(vaddq_s32(v101, v21), v90);
      v463 = v98;
      v464 = v82;
      v104 = vaddq_s32(vsubq_s32(v101, v91), v98);
      v105 = vmaxq_s32(v92, v93);
      v452 = v93;
      v454 = v92;
      v106 = vminq_s32(v92, v93);
      v105.i32[0] = vmaxvq_s32(v105);
      v106.i32[0] = vminvq_s32(v106);
      v107 = vdupq_lane_s32(*v105.i8, 0);
      v108 = vdupq_lane_s32(*v106.i8, 0);
      v98.i64[0] = 0x8000000080000000;
      v98.i64[1] = 0x8000000080000000;
      v109 = vmaxq_s32(v107, v98);
      v461 = v20;
      v462 = v21;
      v110 = vminq_s32(v108, v98);
      v111 = vzip1q_s32(v107, v108);
      v98.i64[0] = 0x2000000020;
      v98.i64[1] = 0x2000000020;
      v112 = vbicq_s8(vsubq_s32(v98, vclsq_s32(v111)), vceqzq_s32(v111));
      v113 = vpmaxq_s32(v112, v112);
      v114 = vmaxq_s32(v95, v96);
      v450 = v95;
      v115 = vminq_s32(v95, v96);
      v114.i32[0] = vmaxvq_s32(v114);
      v115.i32[0] = vminvq_s32(v115);
      v116 = vdupq_lane_s32(*v114.i8, 0);
      v117 = vdupq_lane_s32(*v115.i8, 0);
      v118 = vmaxq_s32(v109, v116);
      v119 = vminq_s32(v110, v117);
      v120 = vzip1q_s32(v116, v117);
      v121 = vbicq_s8(vsubq_s32(v98, vclsq_s32(v120)), vceqzq_s32(v120));
      v122 = vpmaxq_s32(v121, v121);
      v123 = vmaxq_s32(v99, v100);
      v445 = v100;
      v447 = v99;
      v124 = vminq_s32(v99, v100);
      v123.i32[0] = vmaxvq_s32(v123);
      v124.i32[0] = vminvq_s32(v124);
      v125 = vdupq_lane_s32(*v123.i8, 0);
      v126 = vdupq_lane_s32(*v124.i8, 0);
      v127 = vmaxq_s32(v118, v125);
      v128 = vminq_s32(v119, v126);
      v129 = vzip1q_s32(v125, v126);
      v130 = vbicq_s8(vsubq_s32(v98, vclsq_s32(v129)), vceqzq_s32(v129));
      v465 = v15;
      v456 = v16;
      v131 = vpmaxq_s32(v130, v130);
      v132 = vmaxq_s32(v103, v104);
      v441 = v104;
      v443 = v103;
      v133 = vminq_s32(v103, v104);
      v132.i32[0] = vmaxvq_s32(v132);
      v133.i32[0] = vminvq_s32(v133);
      v134 = v19;
      v135 = vdupq_lane_s32(*v132.i8, 0);
      v136 = vdupq_lane_s32(*v133.i8, 0);
      v137 = vmaxq_s32(v127, v135);
      v138 = vminq_s32(v128, v136);
      v139 = vzip1q_s32(v135, v136);
      v140 = vbicq_s8(vsubq_s32(v98, vclsq_s32(v139)), vceqzq_s32(v139));
      v141 = vpmaxq_s32(v140, v140);
      v142 = vmaxq_s32(vmaxq_s32(v113, v122), vmaxq_s32(v131, v141));
      v440 = v138;
      v438 = vclzq_s32(vsubq_s32(v137, v138));
      v143 = vsubq_s32(v98, v438);
      v144 = vcgtq_s32(v142, v143);
      v145 = vminq_s32(v143, v142);
      v98.i64[0] = 0x200000002;
      v98.i64[1] = 0x200000002;
      v143.i64[0] = 0xA0000000ALL;
      v143.i64[1] = 0xA0000000ALL;
      v439 = v144;
      v146 = vbslq_s8(v144, v143, v98);
      v143.i64[0] = 0x100000001;
      v143.i64[1] = 0x100000001;
      v147 = vmaxq_s32(v145, v143);
      v132.i64[0] = 0xF0000000FLL;
      v132.i64[1] = 0xF0000000FLL;
      v148 = vmaxq_s32(vminq_s32(vsubq_s32(v147, v113), v132), 0);
      v149 = vmaxq_s32(vminq_s32(vsubq_s32(v147, v122), v132), 0);
      v150 = vmaxq_s32(vminq_s32(vsubq_s32(v147, v131), v132), 0);
      v151 = vminq_s32(vsubq_s32(v147, v141), v132);
      v152 = v78;
      v153 = vmaxq_s32(v151, 0);
      v154 = vsubq_s32(v147, v148);
      v155 = vsubq_s32(v147, v149);
      v156 = vsubq_s32(v147, v150);
      v157 = vsubq_s32(v147, v153);
      v158 = vaddq_s32(v148, v149);
      v159 = vaddq_s32(v153, v150);
      v160 = v152;
      v161 = vceqq_s32(v159, vnegq_s32(v158));
      v159.i64[0] = 0x400000004;
      v159.i64[1] = 0x400000004;
      v162 = vorrq_s8(vbicq_s8(v159, v161), v146);
      v159.i64[1] = v458.i64[1];
      *v159.i8 = vqmovn_u32(v162);
      v163.i64[0] = 0x8000800080008;
      v163.i64[1] = 0x8000800080008;
      *v146.i8 = vqmovn_u32(v147);
      v164 = vbicq_s8(v146, vceqzq_s16(vandq_s8(v159, v163)));
      v152.i64[0] = 0x2000200020002;
      v152.i64[1] = 0x2000200020002;
      v136.i64[0] = 0x10001000100010;
      v136.i64[1] = 0x10001000100010;
      v165 = vandq_s8(vshlq_n_s16(v159, 2uLL), v136);
      v166.i64[0] = 0x3000300030003;
      v166.i64[1] = 0x3000300030003;
      v99.i64[0] = 0x20002000200020;
      v99.i64[1] = 0x20002000200020;
      v167 = vaddq_s16(v164, v165);
      *v165.i8 = vqmovn_u32(v154);
      v168.i64[0] = 0x7000700070007;
      v168.i64[1] = 0x7000700070007;
      v169 = vmlaq_s16(vaddq_s16(v167, vandq_s8(vceqq_s16(vandq_s8(v159, v166), v152), v99)), v165, v168);
      v170 = vaddq_s32(vaddq_s32(v156, v155), v157);
      *v170.i8 = vqmovn_u32(v170);
      v171 = vshlq_n_s16(v170, 3uLL);
      v172 = vaddq_s16(v169, v171);
      *v171.i8 = vqmovn_u32(v464);
      v173 = vceqzq_s16(vandq_s8(v171, v163));
      *v163.i8 = vqmovn_u32(v64);
      v174 = vaddq_s16(vbicq_s8(v163, v173), vandq_s8(vshlq_n_s16(v171, 2uLL), v136));
      v175 = vaddq_s16(v174, vandq_s8(vceqq_s16(vandq_s8(v171, v166), v152), v99));
      *v174.i8 = vqmovn_u32(v160);
      v176 = vmlaq_s16(v175, v174, v168);
      v177 = vaddq_s32(v470, v469);
      v178 = vaddq_s32(v177, v102);
      *v177.i8 = vqmovn_u32(v178);
      v179 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(vaddq_s16(v176, vshlq_n_s16(v177, 3uLL)), v172)), 0);
      v66 = v84 & 0xFFFF0000 | v458.u16[0];
      v180 = vaddvq_s32(v179);
      if (v180)
      {
        v181.i64[0] = 0x1F0000001FLL;
        v181.i64[1] = 0x1F0000001FLL;
        v182.i64[0] = -1;
        v182.i64[1] = -1;
        v183 = vandq_s8(vsubq_s32(vshlq_s32(v182, vsubq_s32(v181, v438)), v440), v439);
        v184 = vcltzq_s32(vshlq_n_s32(v179, 0x1FuLL));
        v465 = vbslq_s8(v184, v454, v15);
        v456 = vbslq_s8(v184, v452, v456);
        v457 = vbslq_s8(v184, v450, v457);
        v466 = vbslq_s8(v184, v96, v466);
        v459 = vbslq_s8(v184, v447, v134);
        v461 = vbslq_s8(v184, v445, v461);
        v462 = vbslq_s8(v184, v443, v462);
        v463 = vbslq_s8(v184, v441, v463);
        v469 = vbslq_s8(v184, v155, v469);
        v470 = vbslq_s8(v184, v156, v470);
        v460 = vbslq_s8(v184, v183, v460);
        v64 = vbslq_s8(v184, v147, v64);
        v464 = vbslq_s8(v184, v162, v464);
        v453 = vbslq_s8(v184, v154, v160);
        v455 = vbslq_s8(v184, v157, v102);
        v451 = vaddq_s32(vaddq_s32(v470, v469), v455);
      }

      else
      {
        v459 = v134;
        v453 = v160;
        v455 = v102;
        v451 = v178;
      }

      v81 = vsubq_s32(v8, vqtbl2q_s8(*v8.i8, xmmword_29D2F0F80));
      v187 = vsubq_s32(v9, vqtbl2q_s8(*v8.i8, xmmword_29D2F1030));
      v188 = *(a3 + a4 + 16);
      HIDWORD(v188) = HIDWORD(*(a3 + a4));
      v189 = vsubq_s32(v7, vqtbl2q_s8(*v7.i8, xmmword_29D2F0FA0));
      v190 = vsubq_s32(v10, vqtbl2q_s8(*v7.i8, xmmword_29D2F1040));
      v471.val[0] = v12;
      v471.val[1] = v467;
      v471.val[1].i32[3] = HIDWORD(v188);
      v191 = vsubq_s32(v12, vqtbl2q_s8(v471, xmmword_29D2F1050));
      v192 = v468;
      v192.i32[3] = HIDWORD(v188);
      v193 = vsubq_s32(v467, vqtbl2q_s8(v471, xmmword_29D2F0F80));
      v194 = vsubq_s32(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F1060));
      v195 = vsubq_s32(v468, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
      v196 = v187;
      v196.i32[3] = v81.i32[0];
      v81.i32[0] = v187.i32[3];
      v197 = vmaxq_s32(v81, v196);
      v198 = vminq_s32(v81, v196);
      v197.i32[0] = vmaxvq_s32(v197);
      v198.i32[0] = vminvq_s32(v198);
      v199 = vdupq_lane_s32(*v197.i8, 0);
      v200 = vdupq_lane_s32(*v198.i8, 0);
      v201.i64[0] = 0x8000000080000000;
      v201.i64[1] = 0x8000000080000000;
      v202 = vmaxq_s32(v199, v201);
      v471.val[0] = vminq_s32(v200, v201);
      v203 = vzip1q_s32(v199, v200);
      v201.i64[0] = 0x2000000020;
      v201.i64[1] = 0x2000000020;
      v204 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v203)), vceqzq_s32(v203));
      v205 = vpmaxq_s32(v204, v204);
      v206 = vmaxq_s32(v189, v190);
      v448 = v190;
      v449 = v189;
      v207 = vminq_s32(v189, v190);
      v206.i32[0] = vmaxvq_s32(v206);
      v207.i32[0] = vminvq_s32(v207);
      v208 = vdupq_lane_s32(*v206.i8, 0);
      v209 = vdupq_lane_s32(*v207.i8, 0);
      v210 = vmaxq_s32(v202, v208);
      v471.val[0] = vminq_s32(v471.val[0], v209);
      v211 = vzip1q_s32(v208, v209);
      v212 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v211)), vceqzq_s32(v211));
      v213 = vpmaxq_s32(v212, v212);
      v214 = vmaxq_s32(v191, v193);
      v444 = v193;
      v446 = v191;
      v215 = vminq_s32(v191, v193);
      v214.i32[0] = vmaxvq_s32(v214);
      v215.i32[0] = vminvq_s32(v215);
      v216 = vdupq_lane_s32(*v214.i8, 0);
      v217 = vdupq_lane_s32(*v215.i8, 0);
      v218 = vmaxq_s32(v210, v216);
      v471.val[0] = vminq_s32(v471.val[0], v217);
      v219 = vzip1q_s32(v216, v217);
      v220 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v219)), vceqzq_s32(v219));
      v221 = vpmaxq_s32(v220, v220);
      v222 = vmaxq_s32(v194, v195);
      v442 = v194;
      v223 = vminq_s32(v194, v195);
      v222.i32[0] = vmaxvq_s32(v222);
      v223.i32[0] = vminvq_s32(v223);
      v224 = vdupq_lane_s32(*v222.i8, 0);
      v225 = vdupq_lane_s32(*v223.i8, 0);
      v226 = vmaxq_s32(v218, v224);
      v227 = vminq_s32(v471.val[0], v225);
      v228 = vzip1q_s32(v224, v225);
      v229 = vbicq_s8(vsubq_s32(v201, vclsq_s32(v228)), vceqzq_s32(v228));
      v230 = vpmaxq_s32(v229, v229);
      v231 = vmaxq_s32(vmaxq_s32(v205, v213), vmaxq_s32(v221, v230));
      v232 = vclzq_s32(vsubq_s32(v226, v227));
      v233 = vsubq_s32(v201, v232);
      v234 = vcgtq_s32(v231, v233);
      v235 = vminq_s32(v233, v231);
      v231.i64[0] = 0x900000009;
      v231.i64[1] = 0x900000009;
      v201.i64[0] = 0x200000002;
      v201.i64[1] = 0x200000002;
      v236 = vorrq_s8(vandq_s8(vceqzq_s32(v235), v201), vsubq_s32(vandq_s8(v234, v231), vmvnq_s8(v234)));
      v191.i64[0] = 0xF0000000FLL;
      v191.i64[1] = 0xF0000000FLL;
      v237 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v205), v191), 0);
      v238 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v213), v191), 0);
      v239 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v221), v191), 0);
      v240 = vmaxq_s32(vminq_s32(vsubq_s32(v235, v230), v191), 0);
      v241 = vsubq_s32(v235, v237);
      v191.i64[0] = 0x400000004;
      v191.i64[1] = 0x400000004;
      v242 = vbicq_s8(v191, vceqq_s32(vaddq_s32(v240, v239), vnegq_s32(vaddq_s32(v237, v238))));
      v243 = vorrq_s8(v242, v236);
      *v242.i8 = vqmovn_u32(v243);
      v193.i64[0] = 0x8000800080008;
      v193.i64[1] = 0x8000800080008;
      *v191.i8 = vqmovn_u32(v235);
      v244.i64[0] = 0x10001000100010;
      v244.i64[1] = 0x10001000100010;
      v245 = vandq_s8(vshlq_n_s16(v242, 2uLL), v244);
      v246.i64[0] = 0x3000300030003;
      v246.i64[1] = 0x3000300030003;
      v247.i64[0] = 0x2000200020002;
      v247.i64[1] = 0x2000200020002;
      v248.i64[0] = 0x20002000200020;
      v248.i64[1] = 0x20002000200020;
      v249 = vaddq_s16(vbicq_s8(v191, vceqzq_s16(vandq_s8(v242, v193))), v245);
      *v245.i8 = vqmovn_u32(v241);
      v194.i64[0] = 0x7000700070007;
      v194.i64[1] = 0x7000700070007;
      v250 = vmlaq_s16(vaddq_s16(v249, vandq_s8(vceqq_s16(vandq_s8(v242, v246), v247), v248)), v245, v194);
      *v249.i8 = vqmovn_u32(v464);
      v251 = vceqzq_s16(vandq_s8(v249, v193));
      *v193.i8 = vqmovn_u32(v64);
      v252 = vaddq_s16(vbicq_s8(v193, v251), vandq_s8(vshlq_n_s16(v249, 2uLL), v244));
      v253 = vaddq_s16(v252, vandq_s8(vceqq_s16(vandq_s8(v249, v246), v247), v248));
      *v252.i8 = vqmovn_u32(v453);
      v254 = vsubq_s32(v235, v238);
      v255 = vsubq_s32(v235, v239);
      v256 = vsubq_s32(v235, v240);
      v257 = vaddq_s32(vaddq_s32(v255, v254), v256);
      *v257.i8 = vqmovn_u32(v257);
      v258 = vaddq_s16(v250, vshlq_n_s16(v257, 3uLL));
      v257.i64[1] = v451.i64[1];
      *v257.i8 = vqmovn_u32(v451);
      v76 = vaddq_s16(vmlaq_s16(v253, v252, v194), vshlq_n_s16(v257, 3uLL));
      v259 = vdupq_lane_s32(*&vmovl_s16(*&vcgtq_s16(v76, v258)), 0);
      v76.i16[0] = vaddvq_s32(v259);
      v260 = v76.u16[0];
      if (v76.i16[0])
      {
        v261.i64[0] = 0x1F0000001FLL;
        v261.i64[1] = 0x1F0000001FLL;
        v262.i64[0] = -1;
        v262.i64[1] = -1;
        v76 = vandq_s8(vsubq_s32(vshlq_s32(v262, vsubq_s32(v261, v232)), v227), v234);
        v263 = vcltzq_s32(vshlq_n_s32(v259, 0x1FuLL));
        v14.i32[0] = vbslq_s8(v263, vextq_s8(v9, v9, 0xCuLL), v14).u32[0];
        v465 = vbslq_s8(v263, v81, v465);
        v16 = vbslq_s8(v263, v196, v456);
        v17 = vbslq_s8(v263, v449, v457);
        v466 = vbslq_s8(v263, v448, v466);
        v459 = vbslq_s8(v263, v446, v459);
        v20 = vbslq_s8(v263, v444, v461);
        v21 = vbslq_s8(v263, v442, v462);
        v22 = vbslq_s8(v263, v195, v463);
        v78 = vbslq_s8(v263, v241, v453);
        v469 = vbslq_s8(v263, v254, v469);
        v81 = vbslq_s8(v263, v255, v470);
        v470 = v81;
        v79 = vbslq_s8(v263, v256, v455);
        v70 = vbslq_s8(v263, v76, v460);
        v64 = vbslq_s8(v263, v235, v64);
        v82 = vbslq_s8(v263, v243, v464);
      }

      else
      {
        v21 = v462;
        v22 = v463;
        v70 = v460;
        v20 = v461;
        v79 = v455;
        v16 = v456;
        v17 = v457;
        v78 = v453;
        v82 = v464;
      }

      if (v180)
      {
        v264 = v260 == 0;
      }

      else
      {
        v264 = 0;
      }

      v65 = v264;
      v19 = v459;
      v15 = v465;
      v18 = v466;
    }

    *v81.i8 = vqmovn_u32(v82);
    v265.i64[0] = 0x8000800080008;
    v265.i64[1] = 0x8000800080008;
    *v76.i8 = vqmovn_u32(v64);
    v265.i16[0] = vbicq_s8(v76, vceqzq_s16(vandq_s8(v81, v265))).u16[0];
    v266.i64[0] = 0x3000300030003;
    v266.i64[1] = 0x3000300030003;
    v267.i64[0] = 0x2000200020002;
    v267.i64[1] = 0x2000200020002;
    v268 = vceqq_s16(vandq_s8(v81, v266), v267);
    v267.i64[0] = 0x20002000200020;
    v267.i64[1] = 0x20002000200020;
    v268.i16[0] = vandq_s8(v268, v267).u16[0];
    v267.i16[0] = vqmovn_u32(v78).u16[0];
    if (((v265.i16[0] + ((4 * v81.i16[0]) & 0x10) + v268.i16[0] - v267.i16[0] + 8 * v267.i16[0] + 8 * vqmovn_u32(vaddq_s32(vaddq_s32(v470, v469), v79)).u16[0]) + 49) > 0x3FF)
    {
      *a1 = v8;
      a1[1] = v9;
      a1[2] = v7;
      a1[3] = v10;
      a1[4] = v12;
      a1[5] = v467;
      v272 = &a1[6];
      v185 = 127;
      result = 128;
      *v272 = v13;
      v272[1] = v468;
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
      if (v64.i32[0])
      {
        v273 = (32 * v64.i16[0] + 992) & 0x3E0;
      }

      else
      {
        v273 = 0;
      }

      v274 = v273 | v82.i8[0] & 0x1F | (v14.u32[0] << 10);
      v275 = (v274 << v270) | v271;
      if (v270 >= 0x16)
      {
        *v269 = v275;
        v275 = v274 >> (-8 * (a1 & 7u));
      }

      v276 = v270 + 42;
      v277 = vsubq_s32(v64, v78);
      v278 = vsubq_s32(v64, v469);
      v279 = vsubq_s32(v64, v470);
      v280 = vsubq_s32(v64, v79);
      *v277.i8 = vqmovn_u32(v277);
      *v277.i8 = vqmovn_u16(v277);
      *v278.i8 = vqmovn_u32(v278);
      *v278.i8 = vqmovn_u16(v278);
      *v279.i8 = vqmovn_u32(v279);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u32(v280);
      *v280.i8 = vqmovn_u16(v280);
      v277.i32[0] = vzip1q_s16(vzip1q_s8(v277, v278), vzip1q_s8(v279, v280)).u32[0];
      v278.i64[0] = 0x400000004;
      v278.i64[1] = 0x400000004;
      v279.i64[0] = 0x404040404040404;
      v279.i64[1] = 0x404040404040404;
      v281 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vceqzq_s32(vandq_s8(v82, v278))), v279);
      v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v280.i64[0] = -1;
      v280.i64[1] = -1;
      v282 = vandq_s8(vshlq_u8(v280, vorrq_s8(v281, v279)), v277.u32[0]);
      v283 = vmovl_u8(*v281.i8);
      v284 = vpaddq_s16(vshlq_u16(vmovl_u8(*v282.i8), vtrn1q_s16(0, v283)), vmovl_high_u8(v282));
      v285 = vpaddq_s16(v283, vmovl_high_u8(v281));
      v286 = vmovl_u16(*v285.i8);
      v287 = vmovl_high_u16(v285);
      v288 = vpaddq_s32(vshlq_u32(vmovl_u16(*v284.i8), vtrn1q_s32(0, v286)), vshlq_u32(vmovl_high_u16(v284), vtrn1q_s32(0, v287)));
      v289 = vpaddq_s32(v286, v287);
      v290.i64[0] = v288.u32[0];
      v290.i64[1] = v288.u32[1];
      v291 = v290;
      v290.i64[0] = v288.u32[2];
      v290.i64[1] = v288.u32[3];
      v292 = v290;
      v290.i64[0] = v289.u32[0];
      v290.i64[1] = v289.u32[1];
      v293 = v290;
      v290.i64[0] = v289.u32[2];
      v290.i64[1] = v289.u32[3];
      v294 = vpaddq_s64(vshlq_u64(v291, vzip1q_s64(0, v293)), vshlq_u64(v292, vzip1q_s64(0, v290)));
      v295 = vpaddq_s64(v293, v290);
      v296 = (v270 + 42) & 0x3A;
      v297 = (v294.i64[0] << v296) | v275;
      if ((v295.i64[0] + v296) >= 0x40)
      {
        *(v269 + ((v276 >> 3) & 8)) = v297;
        v297 = v294.i64[0] >> -v296;
      }

      v298 = v295.i64[0] + v276;
      v299 = v297 | (v294.i64[1] << v298);
      if ((v298 & 0x3F) + v295.i64[1] >= 0x40)
      {
        *(v269 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
        v299 = v294.i64[1] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v299 = 0;
        }
      }

      v300 = vceqq_s32(v64, v78);
      v301 = v298 + v295.i64[1];
      v302.i64[0] = 0x800000008;
      v302.i64[1] = 0x800000008;
      v303 = vandq_s8(vextq_s8(vtstq_s32(v82, v302), 0, 0xCuLL), v64);
      v304.i64[0] = 0x1F0000001FLL;
      v304.i64[1] = 0x1F0000001FLL;
      v305.i64[0] = -1;
      v305.i64[1] = -1;
      v306 = vandq_s8(vshlq_u32(v305, vaddq_s32(v303, v304)), v70);
      v307.i64[0] = v306.u32[0];
      v307.i64[1] = v306.u32[1];
      v308 = v307;
      v307.i64[0] = v306.u32[2];
      v307.i64[1] = v306.u32[3];
      v309 = v307;
      v307.i64[0] = v303.u32[0];
      v307.i64[1] = v303.u32[1];
      v310 = v307;
      v311 = vzip1q_s64(0, v307);
      v307.i64[0] = v303.u32[2];
      v307.i64[1] = v303.u32[3];
      v312 = vpaddq_s64(vshlq_u64(v308, v311), vshlq_u64(v309, 0));
      v313 = vpaddq_s64(v310, v307);
      v314 = (v312.i64[0] << v301) | v299;
      if (v313.i64[0] + (v301 & 0x3F) >= 0x40)
      {
        *(v269 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v312.i64[0] >> -(v301 & 0x3F);
        if ((v301 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = vandq_s8(v70, v300);
      v316 = v313.i64[0] + v301;
      v317 = v314 | (v312.i64[1] << v316);
      if ((v316 & 0x3F) + v313.i64[1] >= 0x40)
      {
        *(v269 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v312.i64[1] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = vaddq_s32(v315, v15);
      v319 = v316 + v313.i64[1];
      if (v65)
      {
        v317 |= v66 << v319;
        if ((v319 & 0x3F) >= 0x20)
        {
          *(v269 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
          v317 = v66 >> -(v319 & 0x3F);
        }

        v319 += 32;
      }

      v320 = vextq_s8(0, v78, 0xCuLL);
      v321.i64[0] = 0x1F0000001FLL;
      v321.i64[1] = 0x1F0000001FLL;
      v322.i64[0] = -1;
      v322.i64[1] = -1;
      v323 = vandq_s8(vshlq_u32(v322, vaddq_s32(v320, v321)), v318);
      v324.i64[0] = v323.u32[0];
      v324.i64[1] = v323.u32[1];
      v325 = v324;
      v324.i64[0] = v323.u32[2];
      v324.i64[1] = v323.u32[3];
      v326 = v324;
      v324.i64[0] = v320.u32[2];
      v324.i64[1] = v320.u32[3];
      v327 = v324;
      v328 = vzip1q_s64(0, v324);
      v324.i64[0] = v320.u32[0];
      v324.i64[1] = v320.u32[1];
      v329 = vpaddq_s64(vshlq_u64(v325, 0), vshlq_u64(v326, v328));
      v330 = vpaddq_s64(v324, v327);
      v331 = (v329.i64[0] << v319) | v317;
      if (v330.i64[0] + (v319 & 0x3F) >= 0x40)
      {
        *(v269 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vceqq_s32(v64, v469);
      v333 = vaddq_s32(v16, v315);
      v334 = v330.i64[0] + v319;
      v335 = (v330.i64[0] + v319) & 0x3F;
      v336 = v331 | (v329.i64[1] << v334);
      if ((v334 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v269 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v329.i64[1] >> -v335;
        if (!v335)
        {
          v336 = 0;
        }
      }

      v337 = vandq_s8(v70, v332);
      v338 = v334 + v330.i64[1];
      v339.i64[0] = 0x1F0000001FLL;
      v339.i64[1] = 0x1F0000001FLL;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341 = vandq_s8(vshlq_u32(v340, vaddq_s32(v78, v339)), v333);
      v342.i64[0] = v341.u32[0];
      v342.i64[1] = v341.u32[1];
      v343 = v342;
      v342.i64[0] = v341.u32[2];
      v342.i64[1] = v341.u32[3];
      v344 = v342;
      v342.i64[0] = v78.u32[0];
      v342.i64[1] = v78.u32[1];
      v345 = v342;
      v342.i64[0] = v78.u32[2];
      v342.i64[1] = v78.u32[3];
      v346 = vpaddq_s64(vshlq_u64(v343, vzip1q_s64(0, v345)), vshlq_u64(v344, vzip1q_s64(0, v342)));
      v347 = vpaddq_s64(v345, v342);
      v348 = (v346.i64[0] << v338) | v336;
      if (v347.i64[0] + (v338 & 0x3F) >= 0x40)
      {
        *(v269 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v346.i64[0] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = vaddq_s32(v17, v337);
      v350 = v347.i64[0] + v338;
      v351 = v348 | (v346.i64[1] << v350);
      if ((v350 & 0x3F) + v347.i64[1] >= 0x40)
      {
        *(v269 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v346.i64[1] >> -(v350 & 0x3F);
        if ((v350 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = v350 + v347.i64[1];
      v353.i64[0] = 0x1F0000001FLL;
      v353.i64[1] = 0x1F0000001FLL;
      v354.i64[0] = -1;
      v354.i64[1] = -1;
      v355 = vshlq_u32(v354, vaddq_s32(v469, v353));
      v356 = vandq_s8(v355, v349);
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v358 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v359 = v357;
      v357.i64[0] = v469.u32[0];
      v357.i64[1] = v469.u32[1];
      v360 = v357;
      v357.i64[0] = v469.u32[2];
      v357.i64[1] = v469.u32[3];
      v361 = vzip1q_s64(0, v360);
      v362 = vzip1q_s64(0, v357);
      v363 = vpaddq_s64(vshlq_u64(v358, v361), vshlq_u64(v359, v362));
      v364 = vpaddq_s64(v360, v357);
      v365 = (v363.i64[0] << v352) | v351;
      if (v364.i64[0] + (v352 & 0x3F) >= 0x40)
      {
        *(v269 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        if ((v352 & 0x3F) != 0)
        {
          v365 = v363.i64[0] >> -(v352 & 0x3F);
        }

        else
        {
          v365 = 0;
        }
      }

      v366 = vceqq_s32(v64, v470);
      v367 = vaddq_s32(v18, v337);
      v368 = v364.i64[0] + v352;
      v369 = v365 | (v363.i64[1] << v368);
      if ((v368 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v269 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
        v369 = v363.i64[1] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v369 = 0;
        }
      }

      v370 = vandq_s8(v70, v366);
      v371 = v368 + v364.i64[1];
      v372 = vandq_s8(v355, v367);
      v373.i64[0] = v372.u32[0];
      v373.i64[1] = v372.u32[1];
      v374 = v373;
      v373.i64[0] = v372.u32[2];
      v373.i64[1] = v372.u32[3];
      v375 = vpaddq_s64(vshlq_u64(v374, v361), vshlq_u64(v373, v362));
      v376 = (v375.i64[0] << v371) | v369;
      if (v364.i64[0] + (v371 & 0x3F) >= 0x40)
      {
        *(v269 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v375.i64[0] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = vaddq_s32(v19, v370);
      v378 = v364.i64[0] + v371;
      v379 = (v364.i64[0] + v371) & 0x3F;
      v380 = v376 | (v375.i64[1] << v378);
      if ((v378 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v269 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v375.i64[1] >> -v379;
        if (!v379)
        {
          v380 = 0;
        }
      }

      v381 = v378 + v364.i64[1];
      v382.i64[0] = 0x1F0000001FLL;
      v382.i64[1] = 0x1F0000001FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vshlq_u32(v383, vaddq_s32(v470, v382));
      v385 = vandq_s8(v384, v377);
      v386.i64[0] = v385.u32[0];
      v386.i64[1] = v385.u32[1];
      v387 = v386;
      v386.i64[0] = v385.u32[2];
      v386.i64[1] = v385.u32[3];
      v388 = v386;
      v386.i64[0] = v470.u32[0];
      v386.i64[1] = v470.u32[1];
      v389 = v386;
      v386.i64[0] = v470.u32[2];
      v386.i64[1] = v470.u32[3];
      v390 = vzip1q_s64(0, v389);
      v391 = vzip1q_s64(0, v386);
      v392 = vpaddq_s64(vshlq_u64(v387, v390), vshlq_u64(v388, v391));
      v393 = vpaddq_s64(v389, v386);
      v394 = (v392.i64[0] << v381) | v380;
      if (v393.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v269 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        if ((v381 & 0x3F) != 0)
        {
          v394 = v392.i64[0] >> -(v381 & 0x3F);
        }

        else
        {
          v394 = 0;
        }
      }

      v395 = vceqq_s32(v64, v79);
      v396 = vaddq_s32(v20, v370);
      v397 = v393.i64[0] + v381;
      v398 = v394 | (v392.i64[1] << v397);
      if ((v397 & 0x3F) + v393.i64[1] >= 0x40)
      {
        *(v269 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
        v398 = v392.i64[1] >> -(v397 & 0x3F);
        if ((v397 & 0x3F) == 0)
        {
          v398 = 0;
        }
      }

      v399 = vandq_s8(v70, v395);
      v400 = v397 + v393.i64[1];
      v401 = vandq_s8(v384, v396);
      v402.i64[0] = v401.u32[0];
      v402.i64[1] = v401.u32[1];
      v403 = v402;
      v402.i64[0] = v401.u32[2];
      v402.i64[1] = v401.u32[3];
      v404 = vpaddq_s64(vshlq_u64(v403, v390), vshlq_u64(v402, v391));
      v405 = (v404.i64[0] << v400) | v398;
      if (v393.i64[0] + (v400 & 0x3F) >= 0x40)
      {
        *(v269 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
        v405 = v404.i64[0] >> -(v400 & 0x3F);
        if ((v400 & 0x3F) == 0)
        {
          v405 = 0;
        }
      }

      v406 = vaddq_s32(v21, v399);
      v407 = v393.i64[0] + v400;
      v408 = (v393.i64[0] + v400) & 0x3F;
      v409 = v405 | (v404.i64[1] << v407);
      if ((v407 & 0x3F) + v393.i64[1] >= 0x40)
      {
        *(v269 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
        v409 = v404.i64[1] >> -v408;
        if (!v408)
        {
          v409 = 0;
        }
      }

      v410 = v407 + v393.i64[1];
      v411.i64[0] = 0x1F0000001FLL;
      v411.i64[1] = 0x1F0000001FLL;
      v412.i64[0] = -1;
      v412.i64[1] = -1;
      v413 = vshlq_u32(v412, vaddq_s32(v79, v411));
      v414 = vandq_s8(v413, v406);
      v415.i64[0] = v414.u32[0];
      v415.i64[1] = v414.u32[1];
      v416 = v415;
      v415.i64[0] = v414.u32[2];
      v415.i64[1] = v414.u32[3];
      v417 = v415;
      v415.i64[0] = v79.u32[0];
      v415.i64[1] = v79.u32[1];
      v418 = v415;
      v415.i64[0] = v79.u32[2];
      v415.i64[1] = v79.u32[3];
      v419 = vzip1q_s64(0, v418);
      v420 = vzip1q_s64(0, v415);
      v421 = vpaddq_s64(vshlq_u64(v416, v419), vshlq_u64(v417, v420));
      v422 = vpaddq_s64(v418, v415);
      v423 = (v407 + v393.i64[1]) & 0x3F;
      v424 = (v421.i64[0] << (v407 + v393.i8[8])) | v409;
      if ((v422.i64[0] + v423) > 0x3F)
      {
        *(v269 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v424;
        if (v423)
        {
          v424 = v421.i64[0] >> -v423;
        }

        else
        {
          v424 = 0;
        }
      }

      v425 = vaddq_s32(v22, v399);
      v426 = v422.i64[0] + v410;
      v427 = v424 | (v421.i64[1] << v426);
      if ((v426 & 0x3F) + v422.i64[1] >= 0x40)
      {
        *(v269 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v421.i64[1] >> -(v426 & 0x3F);
        if ((v426 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = v426 + v422.i64[1];
      v429 = vandq_s8(v413, v425);
      v430.i64[0] = v429.u32[0];
      v430.i64[1] = v429.u32[1];
      v431 = v430;
      v430.i64[0] = v429.u32[2];
      v430.i64[1] = v429.u32[3];
      v432 = vpaddq_s64(vshlq_u64(v431, v419), vshlq_u64(v430, v420));
      v433 = (v432.i64[0] << v428) | v427;
      if (v422.i64[0] + (v428 & 0x3F) >= 0x40)
      {
        *(v269 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
        v433 = v432.i64[0] >> -(v428 & 0x3F);
        if ((v428 & 0x3F) == 0)
        {
          v433 = 0;
        }
      }

      v434 = v422.i64[0] + v428;
      v435 = (v422.i64[0] + v428) & 0x3F;
      v436 = v433 | (v432.i64[1] << (v422.i8[0] + v428));
      if ((v435 + v422.i64[1]) >= 0x40)
      {
        *(v269 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
        v436 = v432.i64[1] >> -v435;
        if (!v435)
        {
          v436 = 0;
        }
      }

      v437 = v434 + v422.i64[1];
      if ((v437 & 0x3F) != 0)
      {
        *(v269 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
      }

      result = (v437 - v270 + 7) >> 3;
      v185 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = *a3;
    v185 = 3;
    result = 4;
  }

  *a2 = v185;
  return result;
}