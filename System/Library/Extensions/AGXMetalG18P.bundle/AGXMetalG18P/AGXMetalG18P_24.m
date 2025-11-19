uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 32, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 32, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 32, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 32, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x3Fu:
      v16 = *(a3 + 16);
      v17 = *(a3 + 32);
      v18 = *(a3 + 48);
      *a1 = *a3;
      a1[1] = v16;
      v19 = &a1->i8[a2];
      *v19 = v17;
      *(v19 + 1) = v18;
      return 64;
    case 1u:
      v14 = vld1q_dup_s16(a3);
      *a1 = v14;
      a1[1] = v14;
      v15 = (a1 + a2);
      *v15 = v14;
      v15[1] = v14;
      return 2;
    case 0u:
      *a1 = 0u;
      a1[1] = 0u;
      v12 = &a1->i8[a2];
      *v12 = 0u;
      *(v12 + 1) = 0u;
      return 0;
  }

  v348[1] = v11;
  v348[2] = v10;
  v348[3] = v9;
  v348[4] = v8;
  v348[5] = v7;
  v348[6] = v6;
  v348[7] = v5;
  v348[8] = v4;
  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 24;
  v23 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x29)
  {
    v23 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v24.i64[0] = 0x303030303030303;
  v24.i64[1] = 0x303030303030303;
  v25.i8[3] = 3;
  v25.i32[1] = 50529027;
  v25.i8[0] = v23 & 0x1F;
  v25.i8[1] = (v23 >> 5) & 0x1F;
  v25.i8[2] = (v23 >> 10) & 0x1F;
  v26.i32[0] = v23 >> 15;
  v26.i32[1] = (v23 >> 18) & 0x3F;
  v27 = vadd_s32(vand_s8(v26, 0x700000007), 0x100000001);
  v28 = v27.u8[0];
  v28.i8[1] = v27.i8[4];
  v28.i8[2] = ((v23 >> 21) & 7) + 1;
  v29 = v20 + 40;
  v30 = v22 & 0x38;
  v31 = (v21 + ((v22 >> 3) & 8));
  v32 = *v31 >> v30;
  if (v30 >= 0x31)
  {
    v32 |= v31[1] << -v30;
  }

  v33 = (8 * (a3 & 7)) | 0x200;
  v34 = vdupq_lane_s32(v25, 0);
  v35 = vandq_s8(v34, v24);
  v36 = vbicq_s8(vdupq_lane_s32(v28, 0), vceqq_s8(v35, v24));
  v37.i64[0] = 0x202020202020202;
  v37.i64[1] = 0x202020202020202;
  v38 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v25), 0x4000400040004)), v37);
  if (vmaxvq_s8(v38) < 1)
  {
    v47 = 0;
    v73.i64[0] = -1;
    v73.i64[1] = -1;
    v69 = v36;
    v68 = v36;
    v67 = v36;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v66 = v36;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
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
    v45 = v29 + v44;
    v46 = v44 <= 0x80 && v33 >= v45;
    v47 = !v46;
    v48 = 0uLL;
    if (v46)
    {
      v49 = v29 & 0x38;
      v50 = vaddq_s64(vdupq_n_s64(v49), vzip1q_s64(0, v43));
      v51 = (v21 + ((v29 >> 3) & 8));
      v48 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v51, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v51->i64[0], 0), vnegq_s64(v50)));
      if (v49 + v44 >= 0x81)
      {
        v48 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v51[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v51[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v48);
      }

      v29 = v45;
    }

    v52 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54 = vshlq_u64(v48, vnegq_s64(v53));
    v55 = vuzp1q_s32(vzip1q_s64(v48, v54), vzip2q_s64(v48, v54));
    v56 = vshlq_u32(v55, vnegq_s32((*&v39 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v57 = vuzp1q_s16(vzip1q_s32(v55, v56), vzip2q_s32(v55, v56));
    v58 = vshlq_u16(v57, vnegq_s16((*&v38 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v59 = vuzp1q_s8(vzip1q_s16(v57, v58), vzip2q_s16(v57, v58));
    v58.i64[0] = 0x101010101010101;
    v58.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v58, v38);
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v61 = vqtbl1q_s8(vandq_s8(vaddq_s8(v60, v58), v59), xmmword_29D2F0F70);
    v62 = vdupq_lane_s32(*v61.i8, 0);
    v63 = vdupq_lane_s32(*v61.i8, 1);
    v64 = vdupq_laneq_s32(v61, 2);
    v65 = vdupq_laneq_s32(v61, 3);
    v66 = vsubq_s8(v36, v62);
    v67 = vsubq_s8(v36, v63);
    v68 = vsubq_s8(v36, v64);
    v69 = vsubq_s8(v36, v65);
    v70 = vceqzq_s8(v62);
    v71 = vceqzq_s8(v63);
    v72 = vceqzq_s8(v64);
    v73 = vceqzq_s8(v65);
  }

  v74.i64[0] = 0x808080808080808;
  v74.i64[1] = 0x808080808080808;
  v75 = 0uLL;
  v76 = vandq_s8(vextq_s8(vtstq_s8(v34, v74), 0, 0xCuLL), v36);
  v77 = vmovl_u8(*&vpaddq_s8(v76, v76));
  v78 = vmovl_u16(*&vpaddq_s16(v77, v77));
  v74.i64[0] = vpaddq_s32(v78, v78).u64[0];
  v79.i64[0] = v74.u32[0];
  v79.i64[1] = v74.u32[1];
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v29 + v81;
  if (v81 <= 0x80 && v33 >= v82)
  {
    v84 = v29 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v80));
    v86 = (v21 + 8 * (v29 >> 6));
    v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v81 >= 0x81)
    {
      v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v75);
    }

    v29 = v82;
  }

  else
  {
    v47 = 1;
  }

  v87 = v34.i8[0] & 3;
  v346 = v70;
  v347 = v35;
  v344 = v72;
  v345 = v73;
  v343 = v71;
  if (v87 == 2)
  {
    v88 = v33 < v29 + 4;
    v89 = v29 + 8;
    if (v33 >= v29 + 4)
    {
      v29 += 4;
    }

    else
    {
      v89 = v29 + 4;
    }

    if (v33 < v89)
    {
      v90 = 1;
    }

    else
    {
      v29 = v89;
      v90 = v88;
    }

    v47 |= v90;
  }

  v91 = 0uLL;
  v92 = vextq_s8(0, v66, 0xCuLL);
  v93 = vmovl_u8(*&vpaddq_s8(v92, v92));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v29 + v98;
  if (v98 <= 0x80 && v33 >= v99)
  {
    v101 = v29 & 0x3F;
    v102 = vaddq_s64(vdupq_n_s64(v101), vzip1q_s64(0, v97));
    v103 = (v21 + 8 * (v29 >> 6));
    v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v102)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v102)));
    if (v101 + v98 >= 0x81)
    {
      v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v102)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v102))), v104);
    }

    v342 = v104;
    v29 = v99;
  }

  else
  {
    v47 = 1;
    v342 = 0u;
  }

  v105 = vmovl_u8(*&vpaddq_s8(v66, v66));
  v106 = vmovl_u16(*&vpaddq_s16(v105, v105));
  v107 = vpaddq_s32(v106, v106).u64[0];
  v108.i64[0] = v107;
  v108.i64[1] = HIDWORD(v107);
  v109 = v108;
  v110 = vaddvq_s64(v108);
  v111 = v29 + v110;
  if (v110 <= 0x80 && v33 >= v111)
  {
    v113 = v29 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v109));
    v115 = (v21 + 8 * (v29 >> 6));
    v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v110 >= 0x81)
    {
      v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v91);
    }

    v29 = v111;
  }

  else
  {
    v47 = 1;
  }

  v116 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v117 = vmovl_u16(*&vpaddq_s16(v116, v116));
  v118 = vpaddq_s32(v117, v117).u64[0];
  v119.i64[0] = v118;
  v119.i64[1] = HIDWORD(v118);
  v120 = v119;
  v121 = vaddvq_s64(v119);
  v122 = v29 + v121;
  v123 = 0uLL;
  if (v121 <= 0x80 && v33 >= v122)
  {
    v126 = v29 & 0x3F;
    v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v120));
    v128 = (v21 + 8 * (v29 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v126 + v121 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v125);
    }

    v29 = v122;
  }

  else
  {
    v47 = 1;
    v125 = 0uLL;
  }

  v129 = v29 + v121;
  if (v121 <= 0x80 && v33 >= v129)
  {
    v131 = v29 & 0x3F;
    v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v120));
    v133 = (v21 + 8 * (v29 >> 6));
    v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
    if (v131 + v121 >= 0x81)
    {
      v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v123);
    }

    v29 = v129;
  }

  else
  {
    v47 = 1;
  }

  v134 = vmovl_u8(*&vpaddq_s8(v68, v68));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  v140 = v139;
  v141 = 0uLL;
  if (v139 > 0x80 || (v142 = v29 + v139, v33 < v29 + v139))
  {
    v47 = 1;
    v142 = v29;
    v146 = 0uLL;
  }

  else
  {
    v143 = v29 & 0x3F;
    v144 = vaddq_s64(vdupq_n_s64(v143), vzip1q_s64(0, v138));
    v145 = (v21 + 8 * (v29 >> 6));
    v146 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v145, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v144)), vshlq_u64(vdupq_lane_s64(v145->i64[0], 0), vnegq_s64(v144)));
    if (v143 + v140 >= 0x81)
    {
      v146 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v145[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v144)), vshlq_u64(vdupq_laneq_s64(v145[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v144))), v146);
    }
  }

  if (v140 > 0x80 || (v147 = v142 + v140, v33 < v142 + v140))
  {
    v47 = 1;
    v147 = v142;
  }

  else
  {
    v148 = vaddq_s64(vdupq_n_s64(v142 & 0x3F), vzip1q_s64(0, v138));
    v149 = (v21 + 8 * (v142 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if ((v142 & 0x3F) + v140 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v141);
    }
  }

  v150 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v151 = vmovl_u16(*&vpaddq_s16(v150, v150));
  v152 = vpaddq_s32(v151, v151).u64[0];
  v153.i64[0] = v152;
  v153.i64[1] = HIDWORD(v152);
  v154 = v153;
  v155 = vaddvq_s64(v153);
  v156 = v155;
  if (v155 > 0x80 || (v157 = v147 + v155, v33 < v147 + v155))
  {
    v47 = 1;
    v157 = v147;
    v161 = 0uLL;
  }

  else
  {
    v158 = v147 & 0x3F;
    v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v154));
    v160 = (v21 + 8 * (v147 >> 6));
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
    if (v158 + v156 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }
  }

  if (v156 > 0x80 || v33 < v157 + v156)
  {
    goto LABEL_96;
  }

  v162 = vaddq_s64(vdupq_n_s64(v157 & 0x3F), vzip1q_s64(0, v154));
  v163 = (v21 + 8 * (v157 >> 6));
  v164 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v163, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v162)), vshlq_u64(vdupq_lane_s64(v163->i64[0], 0), vnegq_s64(v162)));
  if ((v157 & 0x3F) + v156 >= 0x81)
  {
    v164 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v163[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v162)), vshlq_u64(vdupq_laneq_s64(v163[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v162))), v164);
  }

  if ((v47 & 1) != 0 || (v165 = a4 + 1, v33 + 8 * v165 - (v157 + v156) - 512 >= 9))
  {
LABEL_96:
    v166 = 8 * ((v348 + 4) & 7);
    v348[0] |= 31 << v166;
    v167 = v166 | 5;
    v168 = (v166 | 5) - v166;
    if (v168 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v169 = 0;
      v170 = 6;
      do
      {
        v171 = 64 - v167;
        if (64 - v167 >= v170)
        {
          v171 = v170;
        }

        v172 = v171 + v167;
        v169 += v172 >> 6;
        v167 = v172 & 0x3F;
        v170 -= v171;
      }

      while (v170);
      v168 = v167 - v166 + (v169 << 6);
    }

    else
    {
      v169 = 0;
    }

    if (v168 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v173 = 0;
      v174 = 5;
      do
      {
        v175 = 64 - v167;
        if (64 - v167 >= v174)
        {
          v175 = v174;
        }

        v348[v169] |= ((0xFFFFFFFFFFFFFFFFLL >> v173) & ~(-1 << v175)) << v167;
        v173 += v175;
        v176 = v175 + v167;
        v169 += v176 >> 6;
        v167 = v176 & 0x3F;
        v174 -= v175;
      }

      while (v174);
    }
  }

  else
  {
    if (v87 != 2)
    {
      v181 = vzip1_s32(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
      v182 = vzip1_s32(*v117.i8, *&vextq_s8(v117, v117, 8uLL));
      v183 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
      v184 = vzip1_s32(*v151.i8, *&vextq_s8(v151, v151, 8uLL));
      v185.i64[0] = v181.u32[0];
      v185.i64[1] = v181.u32[1];
      v186 = vshlq_u64(v75, vnegq_s64(v185));
      v187 = vzip2q_s64(v75, v186);
      v188 = vzip1q_s64(v75, v186);
      v185.i64[0] = v182.u32[0];
      v185.i64[1] = v182.u32[1];
      v189 = vnegq_s64(v185);
      v190 = vshlq_u64(v125, v189);
      v191 = vzip2q_s64(v125, v190);
      v192 = vzip1q_s64(v125, v190);
      v193 = vshlq_u64(v123, v189);
      v194 = vzip2q_s64(v123, v193);
      v195 = vzip1q_s64(v123, v193);
      v185.i64[0] = v183.u32[0];
      v185.i64[1] = v183.u32[1];
      v196 = vnegq_s64(v185);
      v197 = vshlq_u64(v146, v196);
      v198 = vzip2q_s64(v146, v197);
      v199 = vzip1q_s64(v146, v197);
      v200 = vshlq_u64(v141, v196);
      v201 = vzip2q_s64(v141, v200);
      v202 = vzip1q_s64(v141, v200);
      v185.i64[0] = v184.u32[0];
      v185.i64[1] = v184.u32[1];
      v203 = vnegq_s64(v185);
      v204 = vshlq_u64(v161, v203);
      v205 = vzip2q_s64(v161, v204);
      v206 = vzip1q_s64(v161, v204);
      v207 = vuzp1q_s32(v188, v187);
      v208 = vuzp1q_s32(v192, v191);
      v209 = vuzp1q_s32(v195, v194);
      v210 = vuzp1q_s32(v199, v198);
      v211 = vuzp1q_s32(v202, v201);
      v212 = vnegq_s32((*&v77 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v213 = vnegq_s32((*&v116 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v214 = vuzp1q_s32(v206, v205);
      v215 = vshlq_u32(v207, v212);
      v216 = vzip2q_s32(v207, v215);
      v217 = vzip1q_s32(v207, v215);
      v218 = vshlq_u32(v208, v213);
      v219 = vzip2q_s32(v208, v218);
      v220 = vzip1q_s32(v208, v218);
      v221 = vshlq_u32(v209, v213);
      v222 = vzip2q_s32(v209, v221);
      v223 = vzip1q_s32(v209, v221);
      v224 = vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v225 = vshlq_u32(v210, v224);
      v226 = vzip2q_s32(v210, v225);
      v227 = vzip1q_s32(v210, v225);
      v228 = vshlq_u32(v211, v224);
      v229 = vzip2q_s32(v211, v228);
      v230 = vzip1q_s32(v211, v228);
      v231 = vnegq_s32((*&v150 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v232 = vshlq_u32(v214, v231);
      v233 = vuzp1q_s16(v217, v216);
      v234 = vuzp1q_s16(v220, v219);
      v235 = vuzp1q_s16(v223, v222);
      v236 = vuzp1q_s16(v227, v226);
      v237 = vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v238 = vuzp1q_s16(v230, v229);
      v239 = vuzp1q_s16(vzip1q_s32(v214, v232), vzip2q_s32(v214, v232));
      v240 = vshlq_u16(v233, vnegq_s16((*&v76 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v241 = vshlq_u16(v234, v237);
      v242 = vshlq_u16(v235, v237);
      v243 = vzip2q_s16(v233, v240);
      v244 = vzip1q_s16(v233, v240);
      v245 = vuzp1q_s8(vzip1q_s16(v234, v241), vzip2q_s16(v234, v241));
      v246 = vuzp1q_s8(vzip1q_s16(v235, v242), vzip2q_s16(v235, v242));
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v242.i64[0] = 0x808080808080808;
      v242.i64[1] = 0x808080808080808;
      v247 = vsubq_s8(v242, v76);
      v248 = vaddq_s8(v76, v234);
      v249.i64[0] = 0x808080808080808;
      v249.i64[1] = 0x808080808080808;
      v250 = vshlq_s8(vuzp1q_s8(v244, v243), v247);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v251 = vsubq_s8(v249, v67);
      v252 = vaddq_s8(v67, v247);
      v253 = vshlq_s8(v245, v251);
      v254 = vshlq_s8(v246, v251);
      v255 = vnegq_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v256 = vshlq_s8(v250, v248);
      v257 = vshlq_s8(v253, v252);
      v258 = vdupq_lane_s32(*v256.i8, 0);
      v259 = vandq_s8(v343, v258);
      v260 = vsubq_s8(v257, v259);
      v261 = vsubq_s8(vshlq_s8(v254, v252), v259);
      v262 = vshlq_u16(v236, v255);
      v263 = vshlq_u16(v238, v255);
      v259.i64[0] = 0x808080808080808;
      v259.i64[1] = 0x808080808080808;
      v255.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v255.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v264 = vsubq_s8(v259, v68);
      v265 = vaddq_s8(v68, v255);
      v266 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v236, v262), vzip2q_s16(v236, v262)), v264);
      v267 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v238, v263), vzip2q_s16(v238, v263)), v264);
      v268 = vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v269 = vshlq_s8(v266, v265);
      v270 = vshlq_s8(v267, v265);
      v271 = vandq_s8(v344, v258);
      v272 = vsubq_s8(v269, v271);
      v273 = vsubq_s8(v270, v271);
      v274 = vshlq_u16(v239, v268);
      v271.i64[0] = 0x808080808080808;
      v271.i64[1] = 0x808080808080808;
      v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v275 = vsubq_s8(v271, v69);
      v276 = vaddq_s8(v69, v270);
      v277 = vshlq_u64(v164, v203);
      v278 = vuzp1q_s32(vzip1q_s64(v164, v277), vzip2q_s64(v164, v277));
      v279 = vshlq_u32(v278, v231);
      v280 = vuzp1q_s16(vzip1q_s32(v278, v279), vzip2q_s32(v278, v279));
      v281 = vshlq_u16(v280, v268);
      v282 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v239, v274), vzip2q_s16(v239, v274)), v275), v276);
      v283 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v280, v281), vzip2q_s16(v280, v281)), v275), v276);
      v284 = vandq_s8(v345, v258);
      v285 = vsubq_s8(v282, v284);
      v286 = vsubq_s8(v283, v284);
      *v282.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      *v283.i8 = vzip1_s32(*v106.i8, *&vextq_s8(v106, v106, 8uLL));
      v185.i64[0] = v282.u32[0];
      v185.i64[1] = v282.u32[1];
      v287 = v185;
      v185.i64[0] = v283.u32[0];
      v185.i64[1] = v283.u32[1];
      v288 = vshlq_u64(v342, vnegq_s64(v287));
      v289 = vshlq_u64(v91, vnegq_s64(v185));
      v290 = vuzp1q_s32(vzip1q_s64(v342, v288), vzip2q_s64(v342, v288));
      v291 = vuzp1q_s32(vzip1q_s64(v91, v289), vzip2q_s64(v91, v289));
      v292 = vshlq_u32(v290, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v293 = vshlq_u32(v291, vnegq_s32((*&v105 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v294 = vuzp1q_s16(vzip1q_s32(v290, v292), vzip2q_s32(v290, v292));
      v295 = vuzp1q_s16(vzip1q_s32(v291, v293), vzip2q_s32(v291, v293));
      v296 = vshlq_u16(v294, vnegq_s16((*&v92 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v297 = vshlq_u16(v295, vnegq_s16((*&v66 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v298 = vzip2q_s16(v294, v296);
      v299 = vzip1q_s16(v294, v296);
      v300 = vzip2q_s16(v295, v297);
      v301 = vzip1q_s16(v295, v297);
      v297.i64[0] = 0x808080808080808;
      v297.i64[1] = 0x808080808080808;
      v302 = vuzp1q_s8(v301, v300);
      v300.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v300.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v303 = vshlq_s8(vshlq_s8(v302, vsubq_s8(v297, v66)), vaddq_s8(v66, v300));
      v304 = vaddq_s8(vandq_s8(v256, v346), vshlq_s8(vshlq_s8(vuzp1q_s8(v299, v298), vsubq_s8(v297, v92)), vaddq_s8(v92, v300)));
      v305.i64[0] = 0x101010101010101;
      v305.i64[1] = 0x101010101010101;
      v306 = vandq_s8(v346, v258);
      v307 = vsubq_s8(v304, v306);
      v308 = vsubq_s8(v303, v306);
      v304.i64[0] = v32 & 0x1F;
      *(v304.i32 + 1) = (v32 >> 5) & 0x3F;
      v304.i16[1] = v32 >> 11;
      v309 = vdupq_lane_s32(*v304.i8, 0);
      if (vaddlvq_s8(vceqq_s8(v347, v305)))
      {
        v310 = vnegq_s8(vandq_s8(v34, v305));
        v311 = v308;
        v311.i32[3] = v307.i32[0];
        v312 = v307;
        v312.i32[0] = v308.i32[3];
        v349.val[0] = vbslq_s8(v310, v312, v307);
        v349.val[1] = vbslq_s8(v310, v311, v308);
        v311.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v311.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F0F80), v310), v349.val[0]);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v311), v310), v349.val[1]);
        v307 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0F90), v310), v350.val[0]);
        v308 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[1]);
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v260.i8, xmmword_29D2F0FA0), v310), v260);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v260.i8, xmmword_29D2F0FB0), v310), v261);
        v260 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FC0), v310), v350.val[0]);
        v261 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[1]);
        v350.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FD0), v310), v272);
        v350.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0F80), v310), v273);
        v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, v311), v310), v350.val[0]);
        v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v350, xmmword_29D2F0FE0), v310), v350.val[1]);
        v349.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v285.i8, xmmword_29D2F0FF0), v310), v285);
        v349.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v285.i8, xmmword_29D2F0F80), v310), v286);
        v285 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, v311), v310), v349.val[0]);
        v286 = vaddq_s8(vandq_s8(vqtbl2q_s8(v349, xmmword_29D2F1000), v310), v349.val[1]);
      }

      v313 = vaddq_s8(v307, v309);
      v314 = vaddq_s8(v308, v309);
      v315 = vaddq_s8(v260, v309);
      v316 = vaddq_s8(v261, v309);
      v317 = vaddq_s8(v272, v309);
      v318 = vaddq_s8(v273, v309);
      v319 = vaddq_s8(v285, v309);
      v320 = vaddq_s8(v286, v309);
      v321.i64[0] = 0x1010101010101010;
      v321.i64[1] = 0x1010101010101010;
      v322 = vceqzq_s8(vandq_s8(v34, v321));
      v323.i64[0] = 0xFF00FF00FF00FFLL;
      v323.i64[1] = 0xFF00FF00FF00FFLL;
      v324 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v313, xmmword_29D2F1010), v323), v322), v313);
      v325 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v314, xmmword_29D2F1010), v323), v322), v314);
      v326 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v315, xmmword_29D2F1010), v323), v322), v315);
      v327 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v316, xmmword_29D2F1010), v323), v322), v316);
      v328 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v317, xmmword_29D2F1010), v323), v322), v317);
      v329 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v318, xmmword_29D2F1010), v323), v322), v318);
      v330 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v319, xmmword_29D2F1010), v323), v322), v319);
      v331 = vaddq_s8(vbicq_s8(vshlq_s8(vqtbl1q_s8(v320, xmmword_29D2F1010), v323), v322), v320);
      v332 = vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v324, 3uLL), v325, 3uLL), vuzp1q_s16(v324, v325));
      v333 = vshrn_high_n_s32(vshrn_n_s32(v324, 5uLL), v325, 5uLL);
      v325.i64[0] = 0xF800F800F800F800;
      v325.i64[1] = 0xF800F800F800F800;
      *a1 = vbslq_s8(v325, v333, v332);
      a1[1] = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v326, 5uLL), v327, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v326, 3uLL), v327, 3uLL), vuzp1q_s16(v326, v327)));
      v334 = &a1->i8[a2];
      *v334 = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v328, 5uLL), v329, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v328, 3uLL), v329, 3uLL), vuzp1q_s16(v328, v329)));
      v334[1] = vbslq_s8(v325, vshrn_high_n_s32(vshrn_n_s32(v330, 5uLL), v331, 5uLL), vbslq_s8(xmmword_29D2F1300, vshrn_high_n_s32(vshrn_n_s32(v330, 3uLL), v331, 3uLL), vuzp1q_s16(v330, v331)));
      return v165;
    }

    v177 = 8 * ((v348 + 6) & 7);
    v348[0] |= 31 << v177;
    v178 = v177 | 5;
    v179 = (v177 | 5) - v177;
    if (v179 - 11 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v180 = 0;
      v335 = 6;
      do
      {
        v336 = 64 - v178;
        if (64 - v178 >= v335)
        {
          v336 = v335;
        }

        v337 = v336 + v178;
        v180 += v337 >> 6;
        v178 = v337 & 0x3F;
        v335 -= v336;
      }

      while (v335);
      v179 = v178 - v177 + (v180 << 6);
    }

    else
    {
      v180 = 0;
    }

    if (v179 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v338 = 0;
      v339 = 5;
      do
      {
        v340 = 64 - v178;
        if (64 - v178 >= v339)
        {
          v340 = v339;
        }

        v348[v180] |= ((0xFFFFFFFFFFFFFFFFLL >> v338) & ~(-1 << v340)) << v178;
        v338 += v340;
        v341 = v340 + v178;
        v180 += v341 >> 6;
        v178 = v341 & 0x3F;
        v339 -= v340;
      }

      while (v339);
    }
  }

  v165 = 0;
  a1->i32[0] = 0;
  *(a1->i32 + a2) = 0;
  return v165;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int16x8_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 6, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 22, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + a4);
  v8 = *(a3 + a4 + 16);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x3F0000003F00;
  v10.i64[1] = 0x3F0000003F00;
  v11.i64[0] = 0x1F0000001F0000;
  v11.i64[1] = 0x1F0000001F0000;
  v12 = vbslq_s8(v11, vshll_n_u16(*a3, 5uLL), vbslq_s8(v10, vshll_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_u16(*a3), 0)));
  v13 = vbslq_s8(v11, vshll_high_n_u16(*a3, 5uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0)));
  v542 = v6;
  v14 = vbslq_s8(v11, vshll_n_u16(*v6.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0)));
  v15 = vbslq_s8(v11, vshll_high_n_u16(v6, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 3uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0)));
  v544 = v7;
  v16 = vbslq_s8(v11, vshll_n_u16(*v7.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0)));
  v17 = vbslq_s8(v11, vshll_high_n_u16(v7, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0)));
  v543 = v8;
  v18 = vbslq_s8(v11, vshll_n_u16(*v8.i8, 5uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0)));
  v19 = vbslq_s8(v11, vshll_high_n_u16(v8, 5uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0)));
  v20 = vdupq_lane_s32(*v12.i8, 0);
  v21 = vshlq_s8(vshlq_s8(vsubq_s8(v14, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v22 = vshlq_s8(vshlq_s8(vsubq_s8(v15, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v23 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v24 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v12, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v556 = vshlq_s8(vshlq_s8(vsubq_s8(v13, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v25 = vqtbl1q_s8(vmaxq_s8(v555, v556), xmmword_29D2F0F70);
  v26 = vqtbl1q_s8(vminq_s8(v555, v556), xmmword_29D2F0F70);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vzip1q_s8(v29, v30);
  v32.i64[0] = 0x808080808080808;
  v32.i64[1] = 0x808080808080808;
  v33 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v31)), vceqzq_s8(v31));
  v34 = vqtbl1q_s8(vmaxq_s8(v21, v22), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v21, v22), xmmword_29D2F0F70);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vpmaxq_s8(v36, v36);
  v39 = vpminq_s8(v37, v37);
  v40 = vmaxq_s8(v29, v38);
  v41 = vminq_s8(v30, v39);
  v42 = vzip1q_s8(v38, v39);
  v43 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v42)), vceqzq_s8(v42));
  v44 = vqtbl1q_s8(vmaxq_s8(v23, v24), xmmword_29D2F0F70);
  v45 = vqtbl1q_s8(vminq_s8(v23, v24), xmmword_29D2F0F70);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vmaxq_s8(v40, v48);
  v51 = vminq_s8(v41, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v55 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v20), xmmword_29D2F1310), xmmword_29D2F1320);
  v56 = vqtbl1q_s8(vmaxq_s8(v54, v55), xmmword_29D2F0F70);
  v57 = vqtbl1q_s8(vminq_s8(v54, v55), xmmword_29D2F0F70);
  v58 = vpmaxq_s8(v56, v56);
  v59 = vpminq_s8(v57, v57);
  v60 = vpmaxq_s8(v58, v58);
  v61 = vpminq_s8(v59, v59);
  v62 = vmaxq_s8(v50, v60);
  v63 = vminq_s8(v51, v61);
  v64 = vzip1q_s8(v60, v61);
  v65 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v64)), vceqzq_s8(v64));
  v66 = vpmaxq_s8(v33, v33);
  v67 = vpmaxq_s8(v43, v43);
  v68 = vpmaxq_s8(v53, v53);
  v69 = vpmaxq_s8(v65, v65);
  v70 = vmaxq_s8(vmaxq_s8(v66, v67), vmaxq_s8(v68, v69));
  v71 = vclzq_s8(vsubq_s8(v62, v63));
  v72 = vsubq_s8(v32, v71);
  v73 = vminq_s8(v72, v70);
  if (!vmaxvq_s8(v73))
  {
    a1->i16[0] = *a3;
    v172 = 1;
    result = 2;
    goto LABEL_100;
  }

  v550 = v21;
  v551 = v22;
  v552 = v23;
  v553 = v24;
  v554 = v54;
  v547 = v55;
  v74.i64[0] = -1;
  v74.i64[1] = -1;
  v75.i64[0] = 0x707070707070707;
  v75.i64[1] = 0x707070707070707;
  v76 = vcgtq_s8(v70, v72);
  v545 = vandq_s8(vsubq_s8(vshlq_s8(v74, vsubq_s8(v75, v71)), v63), v76);
  v77.i64[0] = 0x303030303030303;
  v77.i64[1] = 0x303030303030303;
  v533 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v66), v77), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v68), v77), 0);
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v67), v77), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v69), v77), 0);
  v78.i64[0] = 0x404040404040404;
  v78.i64[1] = 0x404040404040404;
  v79 = v20;
  v80 = vorrq_s8(vbicq_s8(v78, vceqq_s8(vaddq_s8(v540, v536), vnegq_s8(vaddq_s8(v533, v538)))), vorrq_s8(vandq_s8(vceqzq_s8(v73), v77), vandq_s8(v76, v32)));
  v81.i64[0] = 0xFF00FF00FF00FFLL;
  v81.i64[1] = 0xFF00FF00FF00FFLL;
  v549 = v79;
  v82 = vsubq_s8(v79, vshlq_s8(vqtbl1q_s8(v79, xmmword_29D2F1010), v81));
  v534 = v17;
  v535 = v15;
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v14, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v14, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v15, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v15, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v16, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v86 = vshlq_s8(vshlq_s8(vsubq_s8(v17, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v17, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v87 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v18, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v88 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v19, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v531 = vshlq_s8(vshlq_s8(vsubq_s8(v13, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v13, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v532 = vshlq_s8(vshlq_s8(vsubq_s8(v12, vaddq_s8(v82, vshlq_s8(vqtbl1q_s8(v12, xmmword_29D2F1010), v81))), xmmword_29D2F1310), xmmword_29D2F1320);
  v89 = vqtbl1q_s8(vmaxq_s8(v532, v531), xmmword_29D2F0F70);
  v90 = vqtbl1q_s8(vminq_s8(v532, v531), xmmword_29D2F0F70);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vzip1q_s8(v93, v94);
  v96 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v95)), vceqzq_s8(v95));
  v97 = vpmaxq_s8(v96, v96);
  v529 = v84;
  v530 = v83;
  v98 = vqtbl1q_s8(vmaxq_s8(v83, v84), xmmword_29D2F0F70);
  v99 = vqtbl1q_s8(vminq_s8(v83, v84), xmmword_29D2F0F70);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vmaxq_s8(v93, v102);
  v105 = vminq_s8(v94, v103);
  v106 = vzip1q_s8(v102, v103);
  v107 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v106)), vceqzq_s8(v106));
  v108 = v73;
  v109 = vpmaxq_s8(v107, v107);
  v527 = v86;
  v528 = v85;
  v110 = vqtbl1q_s8(vmaxq_s8(v85, v86), xmmword_29D2F0F70);
  v111 = vqtbl1q_s8(vminq_s8(v85, v86), xmmword_29D2F0F70);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v104, v114);
  v117 = vminq_s8(v105, v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v526 = v87;
  v121 = vqtbl1q_s8(vmaxq_s8(v87, v88), xmmword_29D2F0F70);
  v122 = vqtbl1q_s8(vminq_s8(v87, v88), xmmword_29D2F0F70);
  v123 = vpmaxq_s8(v121, v121);
  v124 = vpminq_s8(v122, v122);
  v125 = vpmaxq_s8(v123, v123);
  v126 = vpminq_s8(v124, v124);
  v127 = vminq_s8(v117, v126);
  v128 = vzip1q_s8(v125, v126);
  v129 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v128)), vceqzq_s8(v128));
  v130 = vpmaxq_s8(v129, v129);
  v131 = vmaxq_s8(vmaxq_s8(v97, v109), vmaxq_s8(v120, v130));
  v132 = vclzq_s8(vsubq_s8(vmaxq_s8(v116, v125), v127));
  v133 = vsubq_s8(v32, v132);
  v134 = vcgtq_s8(v131, v133);
  v135 = vminq_s8(v133, v131);
  v133.i64[0] = 0x1010101010101010;
  v133.i64[1] = 0x1010101010101010;
  v131.i64[0] = 0x1818181818181818;
  v131.i64[1] = 0x1818181818181818;
  v136 = vorrq_s8(vandq_s8(vceqzq_s8(v135), v77), vbslq_s8(v134, v131, v133));
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v97), v77), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v109), v77), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v120), v77), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v130), v77), 0);
  v141 = vsubq_s8(v135, v137);
  v142 = vsubq_s8(v135, v138);
  v143 = vsubq_s8(v135, v139);
  v144 = vsubq_s8(v135, v140);
  v145 = vceqq_s8(vaddq_s8(v140, v139), vnegq_s8(vaddq_s8(v137, v138)));
  v139.i64[0] = 0x404040404040404;
  v139.i64[1] = 0x404040404040404;
  v146 = vorrq_s8(vbicq_s8(v139, v145), v136);
  v147 = vmovl_u8(*v146.i8);
  v138.i64[0] = 0x8000800080008;
  v138.i64[1] = 0x8000800080008;
  v85.i64[0] = 0x2000200020002;
  v85.i64[1] = 0x2000200020002;
  v148 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v135.i8), vceqzq_s16((*&v147 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v146.i8, 1uLL), v138)), vandq_s8(vceqq_s16((*&v147 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v85), v138)), *v141.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v142.i8), *v144.i8), 3uLL));
  v149 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v108.i8, vcgt_u8(0x808080808080808, *v80.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v80.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v138));
  v150 = vsubq_s8(v108, v533);
  v151 = vsubq_s8(v108, v536);
  v152 = vsubq_s8(v108, v540);
  v153 = vsubq_s8(v108, v538);
  v154 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v149, *v150.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v153.i8), *v152.i8), 3uLL)), v148)), 0);
  v155 = vaddlvq_s8(v154);
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
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159.i64[0] = -1;
    v159.i64[1] = -1;
    v160 = vandq_s8(vsubq_s8(vshlq_s8(v159, vsubq_s8(v158, v132)), v127), v134);
    v549 = vbslq_s8(v154, v82, v549);
    v555 = vbslq_s8(v154, v532, v555);
    v556 = vbslq_s8(v154, v531, v556);
    v550 = vbslq_s8(v154, v530, v550);
    v551 = vbslq_s8(v154, v529, v551);
    v552 = vbslq_s8(v154, v528, v552);
    v553 = vbslq_s8(v154, v527, v553);
    v554 = vbslq_s8(v154, v526, v554);
    v161 = vbslq_s8(v154, v88, v547);
    v153 = vbslq_s8(v154, v142, v153);
    v537 = vbslq_s8(v154, v141, v150);
    v539 = vbslq_s8(v154, v143, v151);
    v541 = vbslq_s8(v154, v144, v152);
    v162 = vbslq_s8(v154, v160, v545);
    v163 = vbslq_s8(v154, v135, v108);
    v80 = vbslq_s8(v154, v146, v80);
    v165 = v534;
    v164 = v535;
    if (v157)
    {
LABEL_10:
      v167 = v539;
      v166 = v541;
      v169 = v555;
      v168 = v556;
      v170 = v80;
      v80.i32[0] = v549.i32[0];
      v171 = v537;
      goto LABEL_16;
    }
  }

  else
  {
    v537 = v150;
    v539 = v151;
    v541 = v152;
    v162 = v545;
    v161 = v547;
    v163 = v108;
    v165 = v534;
    v164 = v535;
    if (v157)
    {
      goto LABEL_10;
    }
  }

  v546 = v162;
  v548 = v161;
  v174 = vsubq_s8(v12, vqtbl2q_s8(*v12.i8, xmmword_29D2F0F80));
  v175 = vsubq_s8(v13, vqtbl2q_s8(*v12.i8, xmmword_29D2F1030));
  v176 = v164;
  v176.i32[3] = v13.i32[3];
  v177 = v165;
  v177.i32[3] = v13.i32[3];
  v178 = v19;
  v178.i32[3] = v13.i32[3];
  v179 = vqtbl2q_s8(*v18.i8, xmmword_29D2F0F80);
  v180 = vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F1060));
  v181 = v153;
  v182 = v175;
  v182.i32[3] = v174.i32[0];
  v174.i32[0] = v175.i32[3];
  v183 = vshlq_s8(v182, xmmword_29D2F1310);
  v184 = vshlq_s8(vsubq_s8(v165, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80)), xmmword_29D2F1310);
  v185 = vshlq_s8(v180, xmmword_29D2F1310);
  v186 = vshlq_s8(vsubq_s8(v19, v179), xmmword_29D2F1310);
  v187 = vshlq_s8(vshlq_s8(v174, xmmword_29D2F1310), xmmword_29D2F1320);
  v188 = vshlq_s8(v183, xmmword_29D2F1320);
  v189 = vshlq_s8(vshlq_s8(vsubq_s8(v14, vqtbl2q_s8(*v14.i8, xmmword_29D2F0FA0)), xmmword_29D2F1310), xmmword_29D2F1320);
  v190 = vshlq_s8(vshlq_s8(vsubq_s8(v164, vqtbl2q_s8(*v14.i8, xmmword_29D2F1040)), xmmword_29D2F1310), xmmword_29D2F1320);
  v191 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F1050)), xmmword_29D2F1310), xmmword_29D2F1320);
  v192 = vshlq_s8(v184, xmmword_29D2F1320);
  v193 = vshlq_s8(v185, xmmword_29D2F1320);
  v194 = vshlq_s8(v186, xmmword_29D2F1320);
  v195 = vqtbl1q_s8(vmaxq_s8(v187, v188), xmmword_29D2F0F70);
  v196 = vqtbl1q_s8(vminq_s8(v187, v188), xmmword_29D2F0F70);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vpmaxq_s8(v197, v197);
  v200 = vpminq_s8(v198, v198);
  v201 = vzip1q_s8(v199, v200);
  v202.i64[0] = 0x808080808080808;
  v202.i64[1] = 0x808080808080808;
  v203 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v201)), vceqzq_s8(v201));
  v204 = vpmaxq_s8(v203, v203);
  v205 = vqtbl1q_s8(vmaxq_s8(v189, v190), xmmword_29D2F0F70);
  v206 = vqtbl1q_s8(vminq_s8(v189, v190), xmmword_29D2F0F70);
  v207 = vpmaxq_s8(v205, v205);
  v208 = vpminq_s8(v206, v206);
  v209 = vpmaxq_s8(v207, v207);
  v210 = vpminq_s8(v208, v208);
  v211 = vmaxq_s8(v199, v209);
  v212 = vminq_s8(v200, v210);
  v213 = vzip1q_s8(v209, v210);
  v214 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v213)), vceqzq_s8(v213));
  v215 = vpmaxq_s8(v214, v214);
  v216 = vqtbl1q_s8(vmaxq_s8(v191, v192), xmmword_29D2F0F70);
  v217 = vqtbl1q_s8(vminq_s8(v191, v192), xmmword_29D2F0F70);
  v218 = vpmaxq_s8(v216, v216);
  v219 = vpminq_s8(v217, v217);
  v220 = vpmaxq_s8(v218, v218);
  v221 = vpminq_s8(v219, v219);
  v222 = vmaxq_s8(v211, v220);
  v223 = vminq_s8(v212, v221);
  v224 = vzip1q_s8(v220, v221);
  v225 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v224)), vceqzq_s8(v224));
  v226 = v163;
  v227 = vpmaxq_s8(v225, v225);
  v228 = vqtbl1q_s8(vmaxq_s8(v193, v194), xmmword_29D2F0F70);
  v229 = vqtbl1q_s8(vminq_s8(v193, v194), xmmword_29D2F0F70);
  v230 = vpmaxq_s8(v228, v228);
  v231 = vpminq_s8(v229, v229);
  v232 = vpmaxq_s8(v230, v230);
  v233 = vpminq_s8(v231, v231);
  v234 = vmaxq_s8(v222, v232);
  v235 = vminq_s8(v223, v233);
  v236 = vzip1q_s8(v232, v233);
  v237 = vbicq_s8(vsubq_s8(v202, vclsq_s8(v236)), vceqzq_s8(v236));
  v238 = vpmaxq_s8(v237, v237);
  v239 = vmaxq_s8(vmaxq_s8(v204, v215), vmaxq_s8(v227, v238));
  v240 = vclzq_s8(vsubq_s8(v234, v235));
  v241 = vsubq_s8(v202, v240);
  v242 = vcgtq_s8(v239, v241);
  v243 = vminq_s8(v241, v239);
  v241.i64[0] = 0x909090909090909;
  v241.i64[1] = 0x909090909090909;
  v244.i64[0] = 0x202020202020202;
  v244.i64[1] = 0x202020202020202;
  v245 = vorrq_s8(vandq_s8(vceqzq_s8(v243), v244), vsubq_s8(vandq_s8(v242, v241), vmvnq_s8(v242)));
  v241.i64[0] = 0x303030303030303;
  v241.i64[1] = 0x303030303030303;
  v246 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v204), v241), 0);
  v247 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v215), v241), 0);
  v248 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v227), v241), 0);
  v249 = vmaxq_s8(vminq_s8(vsubq_s8(v243, v238), v241), 0);
  v250 = vsubq_s8(v243, v246);
  v251 = vsubq_s8(v243, v247);
  v252 = vsubq_s8(v243, v248);
  v253 = vsubq_s8(v243, v249);
  v254 = vceqq_s8(vaddq_s8(v249, v248), vnegq_s8(vaddq_s8(v246, v247)));
  v249.i64[0] = 0x404040404040404;
  v249.i64[1] = 0x404040404040404;
  v255 = vorrq_s8(vbicq_s8(v249, v254), v245);
  v256.i64[0] = 0x3000300030003;
  v256.i64[1] = 0x3000300030003;
  v170 = v80;
  v257 = vmovl_s8(*v80.i8);
  v247.i64[0] = 0x8000800080008;
  v247.i64[1] = 0x8000800080008;
  v258 = vbicq_s8(vmovl_s8(*v226.i8), vceqzq_s16(vandq_s8(v257, v247)));
  v259 = vandq_s8(v257, v256);
  v256.i64[0] = 0x2000200020002;
  v256.i64[1] = 0x2000200020002;
  v167 = v539;
  v166 = v541;
  v171 = v537;
  v260 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v258, vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v247)), vandq_s8(vceqq_s16(v259, v256), v247)), *v537.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v539.i8, *v181.i8), *v541.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v243.i8, vcgt_u8(0x808080808080808, *v255.i8))), vand_s8(vadd_s8(*v255.i8, *v255.i8), 0x808080808080808)), *v250.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v252.i8, *v251.i8), *v253.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v260))
  {
    v261.i64[0] = 0x707070707070707;
    v261.i64[1] = 0x707070707070707;
    v262 = vsubq_s8(v261, v240);
    v261.i64[0] = -1;
    v261.i64[1] = -1;
    v263 = vandq_s8(vsubq_s8(vshlq_s8(v261, v262), v235), v242);
    v80 = vbslq_s8(v260, vextq_s8(v13, v13, 0xCuLL), v549);
    v169 = vbslq_s8(v260, v187, v555);
    v168 = vbslq_s8(v260, v188, v556);
    v550 = vbslq_s8(v260, v189, v550);
    v551 = vbslq_s8(v260, v190, v551);
    v552 = vbslq_s8(v260, v191, v552);
    v553 = vbslq_s8(v260, v192, v553);
    v554 = vbslq_s8(v260, v193, v554);
    v161 = vbslq_s8(v260, v194, v548);
    v171 = vbslq_s8(v260, v250, v537);
    v153 = vbslq_s8(v260, v251, v181);
    v167 = vbslq_s8(v260, v252, v539);
    v166 = vbslq_s8(v260, v253, v541);
    v162 = vbslq_s8(v260, v263, v546);
    v170 = vbslq_s8(v260, v255, v170);
    v163 = vbslq_s8(v260, v243, v226);
  }

  else
  {
    v162 = v546;
    v161 = v548;
    v163 = v226;
    v169 = v555;
    v168 = v556;
    v153 = v181;
    v80.i32[0] = v549.i32[0];
  }

LABEL_16:
  v264 = vmovl_s8(*v170.i8);
  v265.i64[0] = 0x8000800080008;
  v265.i64[1] = 0x8000800080008;
  v266.i64[0] = 0x3000300030003;
  v266.i64[1] = 0x3000300030003;
  v267.i64[0] = 0x2000200020002;
  v267.i64[1] = 0x2000200020002;
  v268 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v163.i8), vceqzq_s16(vandq_s8(v264, v265))), vandq_s8(vshll_n_s8(*v170.i8, 1uLL), v265)), vandq_s8(vceqq_s16(vandq_s8(v264, v266), v267), v265)), *v171.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v167.i8, *v153.i8), *v166.i8), 3uLL));
  v269 = vpaddq_s16(v268, v268);
  if ((vpaddq_s16(v269, v269).i16[0] + 47) > 0x1FF)
  {
    *a1 = *a3;
    a1[1] = v542;
    v172 = 63;
    a1[2] = v544;
    a1[3] = v543;
    result = 64;
  }

  else
  {
    v270 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v271 = 8 * (a1 & 7);
    if (v271)
    {
      v272 = *v270 & ~(-1 << v271);
    }

    else
    {
      v272 = 0;
    }

    *a2 = 0;
    if (v163.i8[0])
    {
      v273 = ((v163.u8[0] << 15) + 229376) & 0x38000;
    }

    else
    {
      v273 = 0;
    }

    if (v163.i8[1])
    {
      v274 = ((v163.u8[1] << 18) + 1835008) & 0x1C0000;
    }

    else
    {
      v274 = 0;
    }

    if (v163.i8[2])
    {
      v275 = ((v163.u8[2] << 21) + 14680064) & 0xE00000;
    }

    else
    {
      v275 = 0;
    }

    v276 = v80.i8[0] & 0x1F | (32 * (v80.i8[1] & 0x3F)) | ((v80.i8[2] & 0x1F) << 11);
    v277 = v170.i8[0] & 0x1F | ((32 * (v170.i8[1] & 0x1F)) & 0x83FF) | ((v170.i8[2] & 0x1F) << 10) | v273 | v274 | v275;
    v278 = (v277 << v271) | v272;
    if (v271 >= 0x28)
    {
      *v270 = v278;
      v278 = v277 >> (-8 * (a1 & 7u));
    }

    v279 = (v271 + 24) & 0x38;
    v280 = v278 | (v276 << v279);
    if (v279 >= 0x30)
    {
      *(v270 + (((v271 + 24) >> 3) & 8)) = v280;
      v280 = v276 >> -v279;
    }

    v281 = v271 + 40;
    v282 = vsubq_s8(v163, v171);
    v283 = vsubq_s8(v163, v153);
    v284 = vsubq_s8(v163, v167);
    v285 = vsubq_s8(v163, v166);
    v286 = vtrn1q_s8(v282, v283);
    v287 = vtrn2q_s8(v282, v283);
    v288 = vtrn1q_s8(v284, v285);
    v289 = vtrn2q_s8(v284, v285);
    v290 = vzip1q_s16(v287, v289);
    v291 = vtrn2q_s16(v287, v289);
    v289.i64[0] = vzip1q_s32(vzip1q_s16(v286, v288), v290).u64[0];
    v291.i64[0] = vzip1q_s32(vtrn2q_s16(v286, v288), v291).u64[0];
    v288.i64[0] = 0x202020202020202;
    v288.i64[1] = 0x202020202020202;
    v292 = vandq_s8(vmovl_s16(vtst_s16(*v264.i8, 0x4000400040004)), v288);
    v288.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v288.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v285.i64[0] = -1;
    v285.i64[1] = -1;
    v293 = vshlq_u8(v285, vorrq_s8(v292, v288));
    v294 = vmovl_u8(vand_s8(*v293.i8, *v289.i8));
    v295 = vmovl_u8(vand_s8(*&vextq_s8(v293, v293, 8uLL), *v291.i8));
    v296 = vmovl_u8(*v292.i8);
    v297 = vmovl_high_u8(v292);
    v298 = vpaddq_s16(vshlq_u16(v294, vtrn1q_s16(0, v296)), vshlq_u16(v295, vtrn1q_s16(0, v297)));
    v299 = vpaddq_s16(v296, v297);
    v300 = vmovl_u16(*v299.i8);
    v301 = vmovl_high_u16(v299);
    v302 = vpaddq_s32(vshlq_u32(vmovl_u16(*v298.i8), vtrn1q_s32(0, v300)), vshlq_u32(vmovl_high_u16(v298), vtrn1q_s32(0, v301)));
    v303 = vpaddq_s32(v300, v301);
    v304.i64[0] = v302.u32[0];
    v304.i64[1] = v302.u32[1];
    v305 = v304;
    v304.i64[0] = v302.u32[2];
    v304.i64[1] = v302.u32[3];
    v306 = v304;
    v304.i64[0] = v303.u32[0];
    v304.i64[1] = v303.u32[1];
    v307 = v304;
    v304.i64[0] = v303.u32[2];
    v304.i64[1] = v303.u32[3];
    v308 = vpaddq_s64(vshlq_u64(v305, vzip1q_s64(0, v307)), vshlq_u64(v306, vzip1q_s64(0, v304)));
    v309 = vpaddq_s64(v307, v304);
    v310 = (v271 + 40) & 0x38;
    v311 = (v308.i64[0] << v310) | v280;
    if ((v309.i64[0] + v310) >= 0x40)
    {
      *(v270 + ((v281 >> 3) & 8)) = v311;
      v311 = v308.i64[0] >> -v310;
      if (!v310)
      {
        v311 = 0;
      }
    }

    v312 = vceqq_s8(v163, v171);
    v313 = v309.i64[0] + v281;
    v314 = v311 | (v308.i64[1] << v313);
    if ((v313 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v270 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
      v314 = v308.i64[1] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v314 = 0;
      }
    }

    v315 = vandq_s8(v162, v312);
    v316 = v313 + v309.i64[1];
    v317.i64[0] = 0x808080808080808;
    v317.i64[1] = 0x808080808080808;
    v318.i64[0] = -1;
    v318.i64[1] = -1;
    v319 = vandq_s8(vextq_s8(vtstq_s8(v170, v317), 0, 0xCuLL), v163);
    v320.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v320.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v321 = vandq_s8(vshlq_u8(v318, vaddq_s8(v319, v320)), v162);
    v322 = vmovl_u8(*v319.i8);
    v323 = vpaddq_s16(vshlq_u16(vmovl_u8(*v321.i8), vtrn1q_s16(0, v322)), vmovl_high_u8(v321));
    v324 = vpaddq_s16(v322, vmovl_high_u8(v319));
    v325 = vmovl_u16(*v324.i8);
    v326 = vmovl_high_u16(v324);
    v327 = vpaddq_s32(vshlq_u32(vmovl_u16(*v323.i8), vtrn1q_s32(0, v325)), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v326)));
    v328 = vpaddq_s32(v325, v326);
    v329.i64[0] = v327.u32[0];
    v329.i64[1] = v327.u32[1];
    v330 = v329;
    v329.i64[0] = v327.u32[2];
    v329.i64[1] = v327.u32[3];
    v331 = v329;
    v329.i64[0] = v328.u32[0];
    v329.i64[1] = v328.u32[1];
    v332 = v329;
    v329.i64[0] = v328.u32[2];
    v329.i64[1] = v328.u32[3];
    v333 = vpaddq_s64(vshlq_u64(v330, vzip1q_s64(0, v332)), vshlq_u64(v331, vzip1q_s64(0, v329)));
    v334 = vpaddq_s64(v332, v329);
    v335 = (v333.i64[0] << v316) | v314;
    if (v334.i64[0] + (v316 & 0x3F) >= 0x40)
    {
      *(v270 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
      v335 = v333.i64[0] >> -(v316 & 0x3F);
      if ((v316 & 0x3F) == 0)
      {
        v335 = 0;
      }
    }

    v336 = vaddq_s8(v315, v169);
    v337 = v334.i64[0] + v316;
    v338 = v335 | (v333.i64[1] << v337);
    if ((v337 & 0x3F) + v334.i64[1] >= 0x40)
    {
      *(v270 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v333.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = v337 + v334.i64[1];
    v340 = vextq_s8(0, v171, 0xCuLL);
    v341.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v341.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u8(v342, vaddq_s8(v340, v341)), v336);
    v344 = vmovl_u8(*v340.i8);
    v345 = vmovl_high_u8(v340);
    v346 = vpaddq_s16(vshlq_u16(vmovl_u8(*v343.i8), vtrn1q_s16(0, v344)), vshlq_u16(vmovl_high_u8(v343), vtrn1q_s16(0, v345)));
    v347 = vpaddq_s16(v344, v345);
    v348 = vmovl_u16(*v347.i8);
    v349 = vmovl_high_u16(v347);
    v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v349)));
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
    v358 = (v356.i64[0] << v339) | v338;
    if (v357.i64[0] + (v339 & 0x3F) >= 0x40)
    {
      *(v270 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
      v358 = v356.i64[0] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v358 = 0;
      }
    }

    v359 = vceqq_s8(v163, v153);
    v360 = vaddq_s8(v168, v315);
    v361 = v357.i64[0] + v339;
    v362 = v358 | (v356.i64[1] << v361);
    if ((v361 & 0x3F) + v357.i64[1] >= 0x40)
    {
      *(v270 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
      v362 = v356.i64[1] >> -(v361 & 0x3F);
      if ((v361 & 0x3F) == 0)
      {
        v362 = 0;
      }
    }

    v363 = vandq_s8(v162, v359);
    v364 = v361 + v357.i64[1];
    v365.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v365.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[0] = -1;
    v366.i64[1] = -1;
    v367 = vandq_s8(vshlq_u8(v366, vaddq_s8(v171, v365)), v360);
    v368 = vmovl_u8(*v171.i8);
    v369 = vmovl_high_u8(v171);
    v370 = vpaddq_s16(vshlq_u16(vmovl_u8(*v367.i8), vtrn1q_s16(0, v368)), vshlq_u16(vmovl_high_u8(v367), vtrn1q_s16(0, v369)));
    v371 = vpaddq_s16(v368, v369);
    v372 = vmovl_u16(*v371.i8);
    v373 = vmovl_high_u16(v371);
    v374 = vpaddq_s32(vshlq_u32(vmovl_u16(*v370.i8), vtrn1q_s32(0, v372)), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v373)));
    v375 = vpaddq_s32(v372, v373);
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
    v380 = vpaddq_s64(vshlq_u64(v377, vzip1q_s64(0, v379)), vshlq_u64(v378, vzip1q_s64(0, v376)));
    v381 = vpaddq_s64(v379, v376);
    v382 = (v380.i64[0] << v364) | v362;
    if (v381.i64[0] + (v364 & 0x3F) >= 0x40)
    {
      *(v270 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
      v382 = v380.i64[0] >> -(v364 & 0x3F);
      if ((v364 & 0x3F) == 0)
      {
        v382 = 0;
      }
    }

    v383 = vaddq_s8(v550, v363);
    v384 = v381.i64[0] + v364;
    v385 = v382 | (v380.i64[1] << v384);
    v386 = v161;
    if ((v384 & 0x3F) + v381.i64[1] >= 0x40)
    {
      *(v270 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
      v385 = v380.i64[1] >> -(v384 & 0x3F);
      if ((v384 & 0x3F) == 0)
      {
        v385 = 0;
      }
    }

    v387 = v384 + v381.i64[1];
    v388.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v388.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[0] = -1;
    v389.i64[1] = -1;
    v390 = vshlq_u8(v389, vaddq_s8(v153, v388));
    v391 = vandq_s8(v390, v383);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v153.i8);
    v395 = vmovl_high_u8(v153);
    v396 = vtrn1q_s16(0, v394);
    v397 = vtrn1q_s16(0, v395);
    v398 = vpaddq_s16(vshlq_u16(v392, v396), vshlq_u16(v393, v397));
    v399 = vpaddq_s16(v394, v395);
    v400 = vmovl_u16(*v398.i8);
    v401 = vmovl_high_u16(v398);
    v402 = vmovl_u16(*v399.i8);
    v403 = vmovl_high_u16(v399);
    v404 = vtrn1q_s32(0, v402);
    v405 = vtrn1q_s32(0, v403);
    v406 = vpaddq_s32(vshlq_u32(v400, v404), vshlq_u32(v401, v405));
    v407 = vpaddq_s32(v402, v403);
    v408.i64[0] = v406.u32[0];
    v408.i64[1] = v406.u32[1];
    v409 = v408;
    v408.i64[0] = v406.u32[2];
    v408.i64[1] = v406.u32[3];
    v410 = v408;
    v408.i64[0] = v407.u32[0];
    v408.i64[1] = v407.u32[1];
    v411 = v408;
    v408.i64[0] = v407.u32[2];
    v408.i64[1] = v407.u32[3];
    v412 = vzip1q_s64(0, v411);
    v413 = vzip1q_s64(0, v408);
    v414 = vpaddq_s64(vshlq_u64(v409, v412), vshlq_u64(v410, v413));
    v415 = vpaddq_s64(v411, v408);
    v416 = (v414.i64[0] << v387) | v385;
    if (v415.i64[0] + (v387 & 0x3F) >= 0x40)
    {
      *(v270 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v163, v167);
    v418 = vaddq_s8(v551, v363);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v270 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v162, v417);
    v422 = v419 + v415.i64[1];
    v423 = vandq_s8(v390, v418);
    v424 = vpaddq_s16(vshlq_u16(vmovl_u8(*v423.i8), v396), vshlq_u16(vmovl_high_u8(v423), v397));
    v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v424.i8), v404), vshlq_u32(vmovl_high_u16(v424), v405));
    v426.i64[0] = v425.u32[0];
    v426.i64[1] = v425.u32[1];
    v427 = v426;
    v426.i64[0] = v425.u32[2];
    v426.i64[1] = v425.u32[3];
    v428 = vpaddq_s64(vshlq_u64(v427, v412), vshlq_u64(v426, v413));
    v429 = (v428.i64[0] << v422) | v420;
    if (v415.i64[0] + (v422 & 0x3F) >= 0x40)
    {
      *(v270 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v552, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v270 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
      v433 = v428.i64[1] >> -v432;
      if (!v432)
      {
        v433 = 0;
      }
    }

    v434 = v431 + v415.i64[1];
    v435.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v435.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v436.i64[0] = -1;
    v436.i64[1] = -1;
    v437 = vshlq_u8(v436, vaddq_s8(v167, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v167.i8);
    v442 = vmovl_high_u8(v167);
    v443 = vtrn1q_s16(0, v441);
    v444 = vtrn1q_s16(0, v442);
    v445 = vpaddq_s16(vshlq_u16(v439, v443), vshlq_u16(v440, v444));
    v446 = vpaddq_s16(v441, v442);
    v447 = vmovl_u16(*v445.i8);
    v448 = vmovl_high_u16(v445);
    v449 = vmovl_u16(*v446.i8);
    v450 = vmovl_high_u16(v446);
    v451 = vtrn1q_s32(0, v449);
    v452 = vtrn1q_s32(0, v450);
    v453 = vpaddq_s32(vshlq_u32(v447, v451), vshlq_u32(v448, v452));
    v454 = vpaddq_s32(v449, v450);
    v455.i64[0] = v453.u32[0];
    v455.i64[1] = v453.u32[1];
    v456 = v455;
    v455.i64[0] = v453.u32[2];
    v455.i64[1] = v453.u32[3];
    v457 = v455;
    v455.i64[0] = v454.u32[0];
    v455.i64[1] = v454.u32[1];
    v458 = v455;
    v455.i64[0] = v454.u32[2];
    v455.i64[1] = v454.u32[3];
    v459 = vzip1q_s64(0, v458);
    v460 = vzip1q_s64(0, v455);
    v461 = vpaddq_s64(vshlq_u64(v456, v459), vshlq_u64(v457, v460));
    v462 = vpaddq_s64(v458, v455);
    v463 = (v461.i64[0] << v434) | v433;
    if (v462.i64[0] + (v434 & 0x3F) >= 0x40)
    {
      *(v270 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v163, v166);
    v465 = vaddq_s8(v553, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v270 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v162, v464);
    v469 = v466 + v462.i64[1];
    v470 = vandq_s8(v437, v465);
    v471 = vpaddq_s16(vshlq_u16(vmovl_u8(*v470.i8), v443), vshlq_u16(vmovl_high_u8(v470), v444));
    v472 = vpaddq_s32(vshlq_u32(vmovl_u16(*v471.i8), v451), vshlq_u32(vmovl_high_u16(v471), v452));
    v473.i64[0] = v472.u32[0];
    v473.i64[1] = v472.u32[1];
    v474 = v473;
    v473.i64[0] = v472.u32[2];
    v473.i64[1] = v472.u32[3];
    v475 = vpaddq_s64(vshlq_u64(v474, v459), vshlq_u64(v473, v460));
    v476 = (v475.i64[0] << v469) | v467;
    if (v462.i64[0] + (v469 & 0x3F) >= 0x40)
    {
      *(v270 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v554, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v270 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
      v480 = v475.i64[1] >> -v479;
      if (!v479)
      {
        v480 = 0;
      }
    }

    v481 = v478 + v462.i64[1];
    v482.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v482.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v483.i64[0] = -1;
    v483.i64[1] = -1;
    v484 = vshlq_u8(v483, vaddq_s8(v166, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v166.i8);
    v489 = vmovl_high_u8(v166);
    v490 = vtrn1q_s16(0, v488);
    v491 = vtrn1q_s16(0, v489);
    v492 = vpaddq_s16(vshlq_u16(v486, v490), vshlq_u16(v487, v491));
    v493 = vpaddq_s16(v488, v489);
    v494 = vmovl_u16(*v492.i8);
    v495 = vmovl_high_u16(v492);
    v496 = vmovl_u16(*v493.i8);
    v497 = vmovl_high_u16(v493);
    v498 = vtrn1q_s32(0, v496);
    v499 = vtrn1q_s32(0, v497);
    v500 = vpaddq_s32(vshlq_u32(v494, v498), vshlq_u32(v495, v499));
    v501 = vpaddq_s32(v496, v497);
    v502.i64[0] = v500.u32[0];
    v502.i64[1] = v500.u32[1];
    v503 = v502;
    v502.i64[0] = v500.u32[2];
    v502.i64[1] = v500.u32[3];
    v504 = v502;
    v502.i64[0] = v501.u32[0];
    v502.i64[1] = v501.u32[1];
    v505 = v502;
    v502.i64[0] = v501.u32[2];
    v502.i64[1] = v501.u32[3];
    v506 = vzip1q_s64(0, v505);
    v507 = vzip1q_s64(0, v502);
    v508 = vpaddq_s64(vshlq_u64(v503, v506), vshlq_u64(v504, v507));
    v509 = vpaddq_s64(v505, v502);
    v510 = (v508.i64[0] << v481) | v480;
    if (v509.i64[0] + (v481 & 0x3F) > 0x3F)
    {
      *(v270 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v386, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v270 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      v513 = v508.i64[1] >> -(v512 & 0x3F);
      if ((v512 & 0x3F) == 0)
      {
        v513 = 0;
      }
    }

    v514 = v512 + v509.i64[1];
    v515 = vandq_s8(v484, v511);
    v516 = vpaddq_s16(vshlq_u16(vmovl_u8(*v515.i8), v490), vshlq_u16(vmovl_high_u8(v515), v491));
    v517 = vpaddq_s32(vshlq_u32(vmovl_u16(*v516.i8), v498), vshlq_u32(vmovl_high_u16(v516), v499));
    v518.i64[0] = v517.u32[0];
    v518.i64[1] = v517.u32[1];
    v519 = v518;
    v518.i64[0] = v517.u32[2];
    v518.i64[1] = v517.u32[3];
    v520 = vpaddq_s64(vshlq_u64(v519, v506), vshlq_u64(v518, v507));
    v521 = (v520.i64[0] << v514) | v513;
    if (v509.i64[0] + (v514 & 0x3F) >= 0x40)
    {
      *(v270 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
      v521 = v520.i64[0] >> -(v514 & 0x3F);
      if ((v514 & 0x3F) == 0)
      {
        v521 = 0;
      }
    }

    v522 = v509.i64[0] + v514;
    v523 = (v509.i64[0] + v514) & 0x3F;
    v524 = v521 | (v520.i64[1] << (v509.i8[0] + v514));
    if ((v523 + v509.i64[1]) >= 0x40)
    {
      *(v270 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v270 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v271 + 7) >> 3;
    v172 = *a2 | (result - 1);
  }

LABEL_100:
  *a2 = v172;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_OWORD *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v22 & 7);
  v5 = 11;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v21[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 22 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 11;
    do
    {
      v11 = 64 - v6;
      if (64 - v6 >= v10)
      {
        v11 = v10;
      }

      v12 = v11 + v6;
      v2 += v12 >> 6;
      v6 = v12 & 0x3F;
      v10 -= v11;
    }

    while (v10);
    v9 = v6 - v4 + (v2 << 6);
  }

  if (v9 - 23 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v13 = 0;
    v14 = 10;
    do
    {
      v15 = 64 - v6;
      if (64 - v6 >= v14)
      {
        v15 = v14;
      }

      *&v21[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
      v13 += v15;
      v16 = v15 + v6;
      v2 += v16 >> 6;
      v6 = v16 & 0x3F;
      v14 -= v15;
    }

    while (v14);
  }

  v17 = (a1 + a2);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  v19 = (a1 + 2 * a2);
  *v17 = 0u;
  v17[1] = 0u;
  v20 = (a1 + 2 * a2 + a2);
  *v19 = 0u;
  v19[1] = 0u;
  *v20 = 0u;
  v20[1] = 0u;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
{
  if (a4 == 127)
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[2];
    v15 = a3[3];
    v16 = a3[4];
    v17 = a3[5];
    v18 = a3[6];
    v19 = a3[7];
    v20 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v13);
    *(a1 + 16) = vzip1q_s64(v16, v17);
    v21 = (a1 + 2 * a2);
    *v20 = vzip2q_s64(v12, v13);
    v20[1] = vzip2q_s64(v16, v17);
    *v21 = vzip1q_s64(v14, v15);
    v21[1] = vzip1q_s64(v18, v19);
    v22 = (v21 + a2);
    *v22 = vzip2q_s64(v14, v15);
    v22[1] = vzip2q_s64(v18, v19);
    return 128;
  }

  else if (a4 == 3)
  {
    v8 = vld1q_dup_f32(a3->i32);
    *a1 = v8;
    *(a1 + 16) = v8;
    v9 = (a1 + a2);
    *v9 = v8;
    v9[1] = v8;
    v10 = (a1 + 2 * a2);
    *v10 = v8;
    v10[1] = v8;
    v11 = (a1 + a2 + 2 * a2);
    *v11 = v8;
    v11[1] = v8;
    return 4;
  }

  else if (a4)
  {
    v23 = 8 * (a3 & 7);
    v24 = a3 & 0xFFFFFFFFFFFFFFF8;
    v25 = v23 + 32;
    v26 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v23;
    if (v23 >= 0x21)
    {
      v26 |= *(v24 + 8) << (-8 * (a3 & 7u));
    }

    v27 = v23 | 0x40;
    HIWORD(v28) = 3;
    LOWORD(v28) = v26 & 0x1F;
    WORD1(v28) = (v26 >> 5) & 0x1F;
    WORD2(v28) = (v26 >> 10) & 0x1F;
    v29.i64[0] = 0x3000300030003;
    v29.i64[1] = 0x3000300030003;
    v30.i32[0] = v26 >> 15;
    v30.i32[1] = v26 >> 19;
    v31 = vadd_s32(vand_s8(v30, 0xF0000000FLL), 0x100000001);
    LOWORD(v32) = v31.i16[0];
    WORD1(v32) = v31.i16[2];
    HIDWORD(v32) = (((v26 >> 23) & 0xF) + 1);
    v33 = v25 & 0x38;
    v34 = (v24 + ((v25 >> 3) & 8));
    v35 = *v34 >> (v25 & 0x38);
    if (v33 >= 0x21)
    {
      v35 |= v34[1] << -v33;
    }

    v36 = (8 * (a3 & 7)) | 0x400;
    v37 = vdupq_lane_s64(v28, 0);
    v38 = vandq_s8(v37, v29);
    v39 = vbicq_s8(vdupq_lane_s64(v32, 0), vceqq_s16(v38, v29));
    v40 = vmovl_s16(vtst_s16(v28, 0x4000400040004));
    v41.i64[0] = 0x202020202020202;
    v41.i64[1] = 0x202020202020202;
    v42 = vandq_s8(v40, v41);
    if (vmaxvq_s8(v42) < 1)
    {
      v50 = 0;
      v68.i64[0] = -1;
      v68.i64[1] = -1;
      v67 = v39;
      v66 = v39;
      v65 = v39;
      v69.i64[0] = -1;
      v69.i64[1] = -1;
      v455 = v69;
      v456 = v69;
      v64 = v39;
      v457 = v69;
    }

    else
    {
      v43 = vmovl_u8(*&vpaddq_s8(v42, v42));
      v44 = vmovl_u16(*&vpaddq_s16(v43, v43));
      v45 = vpaddq_s32(v44, v44).u64[0];
      v46.i64[0] = v45;
      v46.i64[1] = HIDWORD(v45);
      v47 = v46;
      v48 = vaddvq_s64(v46);
      v49 = v48 <= 0x80 && v36 >= v27 + v48;
      v50 = !v49;
      v51 = 0uLL;
      if (v49)
      {
        v52 = vaddq_s64(vdupq_n_s64(v23), vzip1q_s64(0, v47));
        v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v24 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(*(v24 + 8), 0), vnegq_s64(v52)));
        if (v23 + v48 >= 0x81)
        {
          v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v24 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(*(v24 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v51);
        }

        v27 += v48;
      }

      v53 = vzip1_s32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
      v54.i64[0] = v53.u32[0];
      v54.i64[1] = v53.u32[1];
      v55 = vshlq_u64(v51, vnegq_s64(v54));
      v56 = vuzp1q_s32(vzip1q_s64(v51, v55), vzip2q_s64(v51, v55));
      v57 = vshlq_u32(v56, vnegq_s32((*&v43 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
      v59 = vshlq_u16(v58, vnegq_s16((*&v42 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v60 = vuzp1q_s8(vzip1q_s16(v58, v59), vzip2q_s16(v58, v59));
      v59.i64[0] = 0x101010101010101;
      v59.i64[1] = 0x101010101010101;
      v61 = vshlq_s8(v59, v42);
      v59.i64[0] = -1;
      v59.i64[1] = -1;
      v62 = vqtbl1q_s8(vandq_s8(vaddq_s8(v61, v59), v60), xmmword_29D2F0F70);
      *v61.i8 = vdup_lane_s32(*v62.i8, 0);
      *v59.i8 = vdup_lane_s32(*v62.i8, 1);
      v63 = vdupq_laneq_s32(v62, 2).u64[0];
      v62.i64[0] = vdupq_laneq_s32(v62, 3).u64[0];
      v64 = vsubw_s8(v39, *v61.i8);
      v65 = vsubw_s8(v39, *v59.i8);
      v66 = vsubw_s8(v39, v63);
      v67 = vsubw_s8(v39, *v62.i8);
      v455 = vmovl_s8(vceqz_s8(*v59.i8));
      v456 = vmovl_s8(vceqz_s8(v63));
      v457 = vmovl_s8(vceqz_s8(*v61.i8));
      v68 = vmovl_s8(vceqz_s8(*v62.i8));
    }

    v70.i64[0] = 0x8000800080008;
    v70.i64[1] = 0x8000800080008;
    v71 = 0uLL;
    v458 = vandq_s8(vextq_s8(vtstq_s16(v37, v70), 0, 8uLL), v39);
    v72 = vmovl_u16(*&vpaddq_s16(v458, v458));
    v73 = vpaddq_s32(v72, v72).u64[0];
    v74.i64[0] = v73;
    v74.i64[1] = HIDWORD(v73);
    v75 = v74;
    v76 = vaddvq_s64(v74);
    v77 = v27 + v76;
    if (v76 <= 0x80 && v36 >= v77)
    {
      v79 = v27 & 0x3F;
      v80 = vaddq_s64(vdupq_n_s64(v79), vzip1q_s64(0, v75));
      v81 = (v24 + 8 * (v27 >> 6));
      v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
      if (v79 + v76 >= 0x81)
      {
        v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v71);
      }

      v27 = v77;
    }

    else
    {
      v50 = 1;
    }

    v82 = v37.i8[0] & 3;
    if (v82 == 2)
    {
      v83 = v27 + 16;
      if (v36 >= v27 + 8)
      {
        v27 += 8;
      }

      else
      {
        v50 = 1;
        v83 = v27 + 8;
      }

      if (v36 >= v83)
      {
        v27 = v83;
      }

      else
      {
        v50 = 1;
      }
    }

    v84 = 0uLL;
    v450 = vextq_s8(0, v64, 8uLL);
    v85 = vmovl_u16(*&vpaddq_s16(v450, v450));
    v86 = vpaddq_s32(v85, v85).u64[0];
    v87.i64[0] = v86;
    v87.i64[1] = HIDWORD(v86);
    v88 = v87;
    v89 = vaddvq_s64(v87);
    v90 = v27 + v89;
    if (v89 <= 0x80 && v36 >= v90)
    {
      v93 = v27 & 0x3F;
      v94 = vaddq_s64(vdupq_n_s64(v93), vzip1q_s64(0, v88));
      v95 = (v24 + 8 * (v27 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v95, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v95->i64[0], 0), vnegq_s64(v94)));
      if (v93 + v89 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v95[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v95[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v92);
      }

      v27 = v90;
    }

    else
    {
      v50 = 1;
      v92 = 0uLL;
    }

    v451 = v64;
    v96 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v97 = vpaddq_s32(v96, v96).u64[0];
    v98.i64[0] = v97;
    v98.i64[1] = HIDWORD(v97);
    v99 = v98;
    v100 = vaddvq_s64(v98);
    v101 = v27 + v100;
    if (v100 <= 0x80 && v36 >= v101)
    {
      v103 = v27 & 0x3F;
      v104 = vaddq_s64(vdupq_n_s64(v103), vzip1q_s64(0, v99));
      v105 = (v24 + 8 * (v27 >> 6));
      v84 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
      if (v103 + v100 >= 0x81)
      {
        v84 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v84);
      }

      v27 = v101;
    }

    else
    {
      v50 = 1;
    }

    v106 = v27 + v100;
    v107 = 0uLL;
    if (v100 <= 0x80 && v36 >= v106)
    {
      v110 = v27 & 0x3F;
      v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v99));
      v112 = (v24 + 8 * (v27 >> 6));
      v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v111)));
      if (v110 + v100 >= 0x81)
      {
        v109 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v109);
      }

      v27 = v106;
    }

    else
    {
      v50 = 1;
      v109 = 0uLL;
    }

    v113 = v27 + v100;
    if (v100 <= 0x80 && v36 >= v113)
    {
      v115 = v27 & 0x3F;
      v116 = vaddq_s64(vdupq_n_s64(v115), vzip1q_s64(0, v99));
      v117 = (v24 + 8 * (v27 >> 6));
      v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v117, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v116)), vshlq_u64(vdupq_lane_s64(v117->i64[0], 0), vnegq_s64(v116)));
      if (v115 + v100 >= 0x81)
      {
        v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v117[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v116)), vshlq_u64(vdupq_laneq_s64(v117[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v116))), v107);
      }

      v27 = v113;
    }

    else
    {
      v50 = 1;
    }

    v118 = vmovl_u16(*&vpaddq_s16(v65, v65));
    v119 = vpaddq_s32(v118, v118).u64[0];
    v120.i64[0] = v119;
    v120.i64[1] = HIDWORD(v119);
    v121 = v120;
    v122 = vaddvq_s64(v120);
    v123 = v27 + v122;
    v124 = 0uLL;
    if (v122 <= 0x80 && v36 >= v123)
    {
      v127 = v27 & 0x3F;
      v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v121));
      v129 = (v24 + 8 * (v27 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
      if (v127 + v122 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v126);
      }

      v27 = v123;
    }

    else
    {
      v50 = 1;
      v126 = 0uLL;
    }

    v130 = v27 + v122;
    if (v122 <= 0x80 && v36 >= v130)
    {
      v132 = v27 & 0x3F;
      v133 = vaddq_s64(vdupq_n_s64(v132), vzip1q_s64(0, v121));
      v134 = (v24 + 8 * (v27 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v133)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v133)));
      if (v132 + v122 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v133)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v133))), v124);
      }

      v27 = v130;
    }

    else
    {
      v50 = 1;
    }

    v135 = 0uLL;
    if (v122 > 0x80 || (v136 = v27 + v122, v36 < v27 + v122))
    {
      v50 = 1;
      v136 = v27;
      v140 = 0uLL;
    }

    else
    {
      v137 = v27 & 0x3F;
      v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v121));
      v139 = (v24 + 8 * (v27 >> 6));
      v140 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
      if (v137 + v122 >= 0x81)
      {
        v140 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v140);
      }
    }

    if (v122 > 0x80 || (v141 = v136 + v122, v36 < v136 + v122))
    {
      v50 = 1;
      v141 = v136;
    }

    else
    {
      v142 = vaddq_s64(vdupq_n_s64(v136 & 0x3F), vzip1q_s64(0, v121));
      v143 = (v24 + 8 * (v136 >> 6));
      v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
      if ((v136 & 0x3F) + v122 >= 0x81)
      {
        v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v135);
      }
    }

    v144 = vmovl_u16(*&vpaddq_s16(v66, v66));
    v145 = vpaddq_s32(v144, v144).u64[0];
    v146.i64[0] = v145;
    v146.i64[1] = HIDWORD(v145);
    v147 = v146;
    v148 = vaddvq_s64(v146);
    v149 = v148;
    v150 = 0uLL;
    if (v148 > 0x80 || (v151 = v141 + v148, v36 < v141 + v148))
    {
      v50 = 1;
      v151 = v141;
      v154 = 0uLL;
    }

    else
    {
      v152 = vaddq_s64(vdupq_n_s64(v141 & 0x3F), vzip1q_s64(0, v147));
      v153 = (v24 + 8 * (v141 >> 6));
      v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v153, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v153->i64[0], 0), vnegq_s64(v152)));
      if ((v141 & 0x3F) + v149 >= 0x81)
      {
        v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v153[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v153[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
      }
    }

    if (v149 > 0x80 || (v155 = v151 + v149, v36 < v151 + v149))
    {
      v50 = 1;
      v155 = v151;
    }

    else
    {
      v156 = vaddq_s64(vdupq_n_s64(v151 & 0x3F), vzip1q_s64(0, v147));
      v157 = (v24 + 8 * (v151 >> 6));
      v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
      if ((v151 & 0x3F) + v149 >= 0x81)
      {
        v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v150);
      }
    }

    v158 = 0uLL;
    if (v149 > 0x80 || (v159 = v155 + v149, v36 < v155 + v149))
    {
      v50 = 1;
      v159 = v155;
      v163 = 0uLL;
    }

    else
    {
      v160 = v155 & 0x3F;
      v161 = vaddq_s64(vdupq_n_s64(v160), vzip1q_s64(0, v147));
      v162 = (v24 + 8 * (v155 >> 6));
      v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
      if (v160 + v149 >= 0x81)
      {
        v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
      }
    }

    if (v149 > 0x80 || (v164 = v159 + v149, v36 < v159 + v149))
    {
      v50 = 1;
      v164 = v159;
    }

    else
    {
      v165 = v159 & 0x3F;
      v166 = vaddq_s64(vdupq_n_s64(v165), vzip1q_s64(0, v147));
      v167 = (v24 + 8 * (v159 >> 6));
      v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v167, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v166)), vshlq_u64(vdupq_lane_s64(v167->i64[0], 0), vnegq_s64(v166)));
      if (v165 + v149 >= 0x81)
      {
        v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v167[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v166)), vshlq_u64(vdupq_laneq_s64(v167[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v166))), v158);
      }
    }

    v168 = vmovl_u16(*&vpaddq_s16(v67, v67));
    v169 = vpaddq_s32(v168, v168).u64[0];
    v170.i64[0] = v169;
    v170.i64[1] = HIDWORD(v169);
    v171 = v170;
    v172 = vaddvq_s64(v170);
    v173 = v172;
    v174 = 0uLL;
    if (v172 > 0x80 || (v175 = v164 + v172, v36 < v164 + v172))
    {
      v50 = 1;
      v175 = v164;
      v179 = 0uLL;
    }

    else
    {
      v176 = v164 & 0x3F;
      v177 = vaddq_s64(vdupq_n_s64(v176), vzip1q_s64(0, v171));
      v178 = (v24 + 8 * (v164 >> 6));
      v179 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v178, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v177)), vshlq_u64(vdupq_lane_s64(v178->i64[0], 0), vnegq_s64(v177)));
      if (v176 + v172 >= 0x81)
      {
        v179 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v178[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v177)), vshlq_u64(vdupq_laneq_s64(v178[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v177))), v179);
      }
    }

    v453 = v66;
    v454 = v67;
    v452 = v65;
    if (v172 > 0x80 || (v180 = v175 + v172, v36 < v175 + v172))
    {
      v50 = 1;
      v180 = v175;
    }

    else
    {
      v181 = v175 & 0x3F;
      v182 = vaddq_s64(vdupq_n_s64(v181), vzip1q_s64(0, v171));
      v183 = (v24 + 8 * (v175 >> 6));
      v174 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v183, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v182)), vshlq_u64(vdupq_lane_s64(v183->i64[0], 0), vnegq_s64(v182)));
      if (v181 + v172 >= 0x81)
      {
        v174 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v183[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v182)), vshlq_u64(vdupq_laneq_s64(v183[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v182))), v174);
      }
    }

    if (v172 > 0x80 || (v184 = v180 + v172, v36 < v180 + v172))
    {
      v50 = 1;
      v184 = v180;
      v188 = 0uLL;
    }

    else
    {
      v185 = v180 & 0x3F;
      v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v171));
      v187 = (v24 + 8 * (v180 >> 6));
      v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
      if (v185 + v173 >= 0x81)
      {
        v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
      }
    }

    if (v173 > 0x80 || v36 < v184 + v173)
    {
      goto LABEL_142;
    }

    v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v171));
    v190 = (v24 + 8 * (v184 >> 6));
    v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
    if ((v184 & 0x3F) + v173 >= 0x81)
    {
      v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
    }

    if ((v50 & 1) != 0 || v36 + 8 * (a4 + 1) - (v184 + v173) - 1024 >= 9 || v82 == 2)
    {
LABEL_142:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
      return 0;
    }

    else
    {
      v449 = v37;
      v192 = vzip1_s32(*v72.i8, *&vextq_s8(v72, v72, 8uLL));
      v193 = vzip1_s32(*v85.i8, *&vextq_s8(v85, v85, 8uLL));
      v194 = vzip1_s32(*v96.i8, *&vextq_s8(v96, v96, 8uLL));
      v195 = vzip1_s32(*v118.i8, *&vextq_s8(v118, v118, 8uLL));
      v196 = vzip1_s32(*v144.i8, *&vextq_s8(v144, v144, 8uLL));
      v197 = vzip1_s32(*v168.i8, *&vextq_s8(v168, v168, 8uLL));
      v198.i64[0] = v192.u32[0];
      v198.i64[1] = v192.u32[1];
      v199 = vshlq_u64(v71, vnegq_s64(v198));
      v200 = vzip2q_s64(v71, v199);
      v443 = vzip1q_s64(v71, v199);
      v198.i64[0] = v193.u32[0];
      v198.i64[1] = v193.u32[1];
      v201 = vshlq_u64(v92, vnegq_s64(v198));
      v441 = vzip2q_s64(v92, v201);
      v202 = vzip1q_s64(v92, v201);
      v198.i64[0] = v194.u32[0];
      v198.i64[1] = v194.u32[1];
      v203 = vnegq_s64(v198);
      v204 = vshlq_u64(v84, v203);
      v205 = vzip2q_s64(v84, v204);
      v206 = vzip1q_s64(v84, v204);
      v207 = vshlq_u64(v109, v203);
      v208 = vzip2q_s64(v109, v207);
      v209 = vzip1q_s64(v109, v207);
      v210 = vshlq_u64(v107, v203);
      v211 = vzip2q_s64(v107, v210);
      v212 = vzip1q_s64(v107, v210);
      v198.i64[0] = v195.u32[0];
      v198.i64[1] = v195.u32[1];
      v213 = vnegq_s64(v198);
      v214 = vshlq_u64(v126, v213);
      v215 = vzip2q_s64(v126, v214);
      v216 = vzip1q_s64(v126, v214);
      v217 = vshlq_u64(v124, v213);
      v218 = vzip2q_s64(v124, v217);
      v219 = vzip1q_s64(v124, v217);
      v220 = vshlq_u64(v140, v213);
      v221 = vzip2q_s64(v140, v220);
      v222 = vzip1q_s64(v140, v220);
      v223 = vshlq_u64(v135, v213);
      v224 = vzip2q_s64(v135, v223);
      v225 = vzip1q_s64(v135, v223);
      v198.i64[0] = v196.u32[0];
      v198.i64[1] = v196.u32[1];
      v226 = vnegq_s64(v198);
      v227 = vshlq_u64(v154, v226);
      v447 = v68;
      v448 = v38;
      v228 = vzip2q_s64(v154, v227);
      v229 = vzip1q_s64(v154, v227);
      v230 = vshlq_u64(v150, v226);
      v231 = vzip2q_s64(v150, v230);
      v232 = vzip1q_s64(v150, v230);
      v233 = vshlq_u64(v163, v226);
      v234 = vzip2q_s64(v163, v233);
      v235 = vzip1q_s64(v163, v233);
      v236 = vshlq_u64(v158, v226);
      v237 = vzip2q_s64(v158, v236);
      v238 = vzip1q_s64(v158, v236);
      v198.i64[0] = v197.u32[0];
      v198.i64[1] = v197.u32[1];
      v446 = vnegq_s64(v198);
      v239 = vshlq_u64(v179, v446);
      v240 = vzip2q_s64(v179, v239);
      v241 = vzip1q_s64(v179, v239);
      v242 = vshlq_u64(v174, v446);
      v243 = vzip2q_s64(v174, v242);
      v244 = vzip1q_s64(v174, v242);
      v245 = vshlq_u64(v188, v446);
      v246 = vzip2q_s64(v188, v245);
      v247 = vzip1q_s64(v188, v245);
      v248 = vuzp1q_s32(v443, v200);
      v249 = vuzp1q_s32(v202, v441);
      v250 = vuzp1q_s32(v206, v205);
      v251 = vuzp1q_s32(v209, v208);
      v252 = vuzp1q_s32(v212, v211);
      v253 = vuzp1q_s32(v216, v215);
      v254 = vuzp1q_s32(v219, v218);
      v255 = vuzp1q_s32(v222, v221);
      v256 = vuzp1q_s32(v225, v224);
      v257 = vuzp1q_s32(v229, v228);
      v258 = vuzp1q_s32(v232, v231);
      v259 = vuzp1q_s32(v235, v234);
      v260 = vuzp1q_s32(v238, v237);
      v261 = vuzp1q_s32(v241, v240);
      v262 = vuzp1q_s32(v244, v243);
      v244.i64[0] = 0xFFFF0000FFFFLL;
      v244.i64[1] = 0xFFFF0000FFFFLL;
      v263 = vuzp1q_s32(v247, v246);
      v264 = vshlq_u32(v248, vnegq_s32(vandq_s8(v458, v244)));
      v442 = vzip1q_s32(v248, v264);
      v444 = vzip2q_s32(v248, v264);
      v264.i64[0] = 0xFFFF0000FFFFLL;
      v264.i64[1] = 0xFFFF0000FFFFLL;
      v265 = vshlq_u32(v249, vnegq_s32(vandq_s8(v450, v264)));
      v440 = vzip2q_s32(v249, v265);
      v266 = vzip1q_s32(v249, v265);
      v267 = vnegq_s32(vandq_s8(v451, v264));
      v268 = vshlq_u32(v250, v267);
      v269 = vzip2q_s32(v250, v268);
      v270 = vzip1q_s32(v250, v268);
      v271 = vshlq_u32(v251, v267);
      v439 = vzip2q_s32(v251, v271);
      v272 = vzip1q_s32(v251, v271);
      v273 = vshlq_u32(v252, v267);
      v437 = vzip1q_s32(v252, v273);
      v438 = vzip2q_s32(v252, v273);
      v273.i64[0] = 0xFFFF0000FFFFLL;
      v273.i64[1] = 0xFFFF0000FFFFLL;
      v274 = vnegq_s32(vandq_s8(v452, v273));
      v275 = vshlq_u32(v253, v274);
      v435 = vzip1q_s32(v253, v275);
      v436 = vzip2q_s32(v253, v275);
      v276 = vshlq_u32(v254, v274);
      v433 = vzip1q_s32(v254, v276);
      v434 = vzip2q_s32(v254, v276);
      v277 = vshlq_u32(v255, v274);
      v432 = vzip2q_s32(v255, v277);
      v278 = vzip1q_s32(v255, v277);
      v279 = vshlq_u32(v256, v274);
      v280 = vzip2q_s32(v256, v279);
      v281 = vzip1q_s32(v256, v279);
      v279.i64[0] = 0xFFFF0000FFFFLL;
      v279.i64[1] = 0xFFFF0000FFFFLL;
      v282 = vnegq_s32(vandq_s8(v453, v279));
      v283 = vshlq_u32(v257, v282);
      v284 = vzip2q_s32(v257, v283);
      v285 = vzip1q_s32(v257, v283);
      v286 = vshlq_u32(v258, v282);
      v287 = vzip2q_s32(v258, v286);
      v288 = vzip1q_s32(v258, v286);
      v289 = vshlq_u32(v259, v282);
      v290 = vzip2q_s32(v259, v289);
      v291 = vzip1q_s32(v259, v289);
      v292 = vshlq_u32(v260, v282);
      v293 = vzip2q_s32(v260, v292);
      v294 = vzip1q_s32(v260, v292);
      v292.i64[0] = 0xFFFF0000FFFFLL;
      v292.i64[1] = 0xFFFF0000FFFFLL;
      v295 = vnegq_s32(vandq_s8(v454, v292));
      v296 = vshlq_u32(v261, v295);
      v297 = vzip2q_s32(v261, v296);
      v298 = vzip1q_s32(v261, v296);
      v299 = vshlq_u32(v262, v295);
      v300 = vzip2q_s32(v262, v299);
      v301 = vzip1q_s32(v262, v299);
      v302 = vshlq_u32(v263, v295);
      v303 = vzip2q_s32(v263, v302);
      v304 = vzip1q_s32(v263, v302);
      v305 = vuzp1q_s16(v442, v444);
      v445 = vuzp1q_s16(v285, v284);
      v306 = vuzp1q_s16(v288, v287);
      v307 = vuzp1q_s16(v291, v290);
      v308 = vuzp1q_s16(v294, v293);
      v309 = vuzp1q_s16(v298, v297);
      v310 = vuzp1q_s16(v301, v300);
      v311 = vuzp1q_s16(v304, v303);
      v303.i64[0] = 0x10001000100010;
      v303.i64[1] = 0x10001000100010;
      v301.i64[0] = 0xF000F000F000FLL;
      v301.i64[1] = 0xF000F000F000FLL;
      v312 = vshlq_s16(v305, vsubq_s16(v303, v458));
      v305.i64[0] = 0x10001000100010;
      v305.i64[1] = 0x10001000100010;
      v313 = vshlq_s16(vuzp1q_s16(v266, v440), vsubq_s16(v305, v450));
      v314 = vsubq_s16(v305, v451);
      v288.i64[0] = 0xF000F000F000FLL;
      v288.i64[1] = 0xF000F000F000FLL;
      v315 = vaddq_s16(v450, v288);
      v316 = vaddq_s16(v451, v288);
      v297.i64[0] = 0x10001000100010;
      v297.i64[1] = 0x10001000100010;
      v317 = vsubq_s16(v297, v452);
      v285.i64[0] = 0xF000F000F000FLL;
      v285.i64[1] = 0xF000F000F000FLL;
      v318 = vaddq_s16(v452, v285);
      v319 = vshlq_s16(vuzp1q_s16(v435, v436), v317);
      v320 = vshlq_s16(vuzp1q_s16(v433, v434), v317);
      v321 = vshlq_s16(vuzp1q_s16(v278, v432), v317);
      v322 = vshlq_s16(vuzp1q_s16(v281, v280), v317);
      v281.i64[0] = 0x10001000100010;
      v281.i64[1] = 0x10001000100010;
      v323 = vsubq_s16(v281, v453);
      v280.i64[0] = 0xF000F000F000FLL;
      v280.i64[1] = 0xF000F000F000FLL;
      v324 = vaddq_s16(v453, v280);
      v325 = vshlq_s16(v445, v323);
      v326 = vshlq_s16(v306, v323);
      v327 = vshlq_s16(v307, v323);
      v328 = vshlq_s16(v308, v323);
      v323.i64[0] = 0x10001000100010;
      v323.i64[1] = 0x10001000100010;
      v329 = vsubq_s16(v323, v454);
      v229.i64[0] = 0xF000F000F000FLL;
      v229.i64[1] = 0xF000F000F000FLL;
      v330 = vaddq_s16(v454, v229);
      v331 = vshlq_s16(v312, vaddq_s16(v458, v301));
      v332 = vshlq_s16(v313, v315);
      v333 = vshlq_s16(vshlq_s16(vuzp1q_s16(v270, v269), v314), v316);
      v334 = vshlq_s16(vshlq_s16(vuzp1q_s16(v272, v439), v314), v316);
      v335 = vshlq_s16(vshlq_s16(vuzp1q_s16(v437, v438), v314), v316);
      v336 = vshlq_s16(v319, v318);
      v337 = vshlq_s16(v320, v318);
      v338 = vshlq_s16(v321, v318);
      v339 = vshlq_s16(v325, v324);
      v340 = vshlq_s16(v326, v324);
      v341 = vshlq_s16(v327, v324);
      v342 = vshlq_u64(v191, v446);
      v343 = vuzp1q_s32(vzip1q_s64(v191, v342), vzip2q_s64(v191, v342));
      v344 = vshlq_u32(v343, v295);
      v345 = vshlq_s16(vshlq_s16(v309, v329), v330);
      v346 = vshlq_s16(vshlq_s16(v310, v329), v330);
      v347 = vshlq_s16(vshlq_s16(v311, v329), v330);
      v348 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v343, v344), vzip2q_s32(v343, v344)), v329), v330);
      v349 = vaddq_s16(vandq_s8(v331, v457), v332);
      v350 = vdupq_lane_s64(v331.i64[0], 0);
      v351 = vandq_s8(v455, v350);
      v352 = vsubq_s16(v336, v351);
      v353 = vsubq_s16(v337, v351);
      v354 = vsubq_s16(v338, v351);
      v355 = vsubq_s16(vshlq_s16(v322, v318), v351);
      v356 = vandq_s8(v456, v350);
      v357 = vsubq_s16(v339, v356);
      v358 = vsubq_s16(v340, v356);
      v359 = vsubq_s16(v341, v356);
      v360 = vandq_s8(v457, v350);
      v361 = vsubq_s16(vshlq_s16(v328, v324), v356);
      v362 = vandq_s8(v447, v350);
      v363 = vsubq_s16(v345, v362);
      v364 = vsubq_s16(v346, v362);
      v365 = vsubq_s16(v347, v362);
      v366 = vsubq_s16(v348, v362);
      v367.i64[0] = 0x1000100010001;
      v367.i64[1] = 0x1000100010001;
      v368 = vsubq_s16(v333, v360);
      v369 = vsubq_s16(v334, v360);
      v370 = vsubq_s16(v349, v360);
      v371 = vsubq_s16(v335, v360);
      v362.i16[0] = v35 & 0x7FF;
      v362.i16[1] = (v35 >> 11) & 0x7FF;
      v362.i32[1] = v35 >> 22;
      v372 = vdupq_lane_s64(v362.i64[0], 0);
      if (vaddvq_s16(vceqq_s16(v448, v367)))
      {
        v373 = vnegq_s16(vandq_s8(v449, v367));
        v374.i64[0] = v371.i64[0];
        v375.i64[1] = v370.i64[1];
        v374.i64[1] = v370.i64[0];
        v375.i64[0] = v371.i64[1];
        v376 = vbslq_s8(v373, v375, v370);
        v377 = vbslq_s8(v373, v374, v371);
        v375.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v375.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v378 = vandq_s8(vqtbl4q_s8(*(&v368 - 1), v375), v373);
        v459.val[0] = vaddq_s16(v376, vandq_s8(vqtbl4q_s8(*(&v368 - 1), xmmword_29D2F10B0), v373));
        v459.val[1] = vaddq_s16(v368, vandq_s8(vqtbl4q_s8(*(&v368 - 1), xmmword_29D2F10C0), v373));
        v459.val[2] = vaddq_s16(v369, v378);
        v459.val[3] = vaddq_s16(v377, v378);
        v379 = vandq_s8(vqtbl4q_s8(v459, v375), v373);
        v370 = vaddq_s16(v459.val[0], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10D0), v373));
        v368 = vaddq_s16(v459.val[1], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10E0), v373));
        v369 = vaddq_s16(v459.val[2], v379);
        v371 = vaddq_s16(v459.val[3], v379);
        v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v352.i8, xmmword_29D2F10B0), v373), v352);
        v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v352.i8, xmmword_29D2F10F0), v373), v353);
        v460.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v352.i8, v375), v373), v354);
        v460.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v352.i8, xmmword_29D2F1100), v373), v355);
        v380 = vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F10D0), v373);
        v459.val[0] = vandq_s8(vqtbl4q_s8(v460, v375), v373);
        v352 = vaddq_s16(v380, v460.val[0]);
        v353 = vaddq_s16(v460.val[1], v380);
        v354 = vaddq_s16(v460.val[2], v459.val[0]);
        v355 = vaddq_s16(v460.val[3], v459.val[0]);
        v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F0EB0), v373), v357);
        v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F0FB0), v373), v358);
        v460.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10B0), v373), v359);
        v460.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10C0), v373), v361);
        v459.val[1] = vandq_s8(vqtbl4q_s8(v460, v375), v373);
        v357 = vaddq_s16(v460.val[0], v459.val[1]);
        v358 = vaddq_s16(v460.val[1], v459.val[1]);
        v359 = vaddq_s16(v460.val[2], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F0FE0), v373));
        v361 = vaddq_s16(v460.val[3], vandq_s8(vqtbl4q_s8(v460, xmmword_29D2F1110), v373));
        v459.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v363.i8, xmmword_29D2F0EB0), v373), v363);
        v459.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v363.i8, xmmword_29D2F1120), v373), v364);
        v381 = v449;
        v460.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v363.i8, xmmword_29D2F10B0), v373), v365);
        v460.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v363.i8, xmmword_29D2F10C0), v373), v366);
        v382 = vandq_s8(vqtbl4q_s8(*(&v459 + 32), v375), v373);
        v363 = vaddq_s16(v459.val[2], v382);
        v364 = vaddq_s16(v459.val[3], v382);
        v365 = vaddq_s16(v460.val[0], vandq_s8(vqtbl4q_s8(*(&v459 + 32), xmmword_29D2F0FE0), v373));
        v366 = vaddq_s16(v460.val[1], vandq_s8(vqtbl4q_s8(*(&v459 + 32), xmmword_29D2F1130), v373));
      }

      else
      {
        v381 = v449;
      }

      v383 = vaddq_s16(v370, v372);
      v384 = vaddq_s16(v368, v372);
      v385 = vaddq_s16(v369, v372);
      v386 = vaddq_s16(v371, v372);
      v387 = vaddq_s16(v352, v372);
      v388 = vaddq_s16(v353, v372);
      v389 = vaddq_s16(v354, v372);
      v390 = vaddq_s16(v355, v372);
      v391 = vaddq_s16(v357, v372);
      v392 = vaddq_s16(v358, v372);
      v393 = vaddq_s16(v359, v372);
      v394 = vaddq_s16(v361, v372);
      v395 = vaddq_s16(v363, v372);
      v396 = vaddq_s16(v364, v372);
      v397 = vaddq_s16(v365, v372);
      v398 = vaddq_s16(v366, v372);
      v399.i64[0] = 0x10001000100010;
      v399.i64[1] = 0x10001000100010;
      v400 = vceqzq_s16(vandq_s8(v381, v399));
      v401.i64[0] = 0xFFFF00000000;
      v401.i64[1] = 0xFFFF00000000;
      v402 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v383, xmmword_29D2F1140), v401), v400), v383);
      v403 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v384, xmmword_29D2F1140), v401), v400), v384);
      v404 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v385, xmmword_29D2F1140), v401), v400), v385);
      v405 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v386, xmmword_29D2F1140), v401), v400), v386);
      v406 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v387, xmmword_29D2F1140), v401), v400), v387);
      v407 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v388, xmmword_29D2F1140), v401), v400), v388);
      v408 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v389, xmmword_29D2F1140), v401), v400), v389);
      v409 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v390, xmmword_29D2F1140), v401), v400), v390);
      v410 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v391, xmmword_29D2F1140), v401), v400), v391);
      v411 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v392, xmmword_29D2F1140), v401), v400), v392);
      v412 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v393, xmmword_29D2F1140), v401), v400), v393);
      v413 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v394, xmmword_29D2F1140), v401), v400), v394);
      v414 = vbicq_s8(vshlq_s16(vqtbl1q_s8(v396, xmmword_29D2F1140), v401), v400);
      v415 = vbicq_s8(vshlq_s16(vqtbl1q_s8(v397, xmmword_29D2F1140), v401), v400);
      v416 = vbicq_s8(vshlq_s16(vqtbl1q_s8(v398, xmmword_29D2F1140), v401), v400);
      v417 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v395, xmmword_29D2F1140), v401), v400), v395);
      v418 = vaddq_s16(v414, v396);
      v419 = vaddq_s16(v415, v397);
      v420 = vaddq_s16(v416, v398);
      v396.i64[0] = 0x3F0000003FLL;
      v396.i64[1] = 0x3F0000003FLL;
      v421 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v402, 0xAuLL), v403, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v402, 5uLL), v403, 5uLL), vuzp1q_s32(v402, v403)));
      v422 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v404, 0xAuLL), v405, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v404, 5uLL), v405, 5uLL), vuzp1q_s32(v404, v405)));
      v423 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v406, 0xAuLL), v407, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v406, 5uLL), v407, 5uLL), vuzp1q_s32(v406, v407)));
      v424 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v408, 0xAuLL), v409, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v408, 5uLL), v409, 5uLL), vuzp1q_s32(v408, v409)));
      v425 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v410, 0xAuLL), v411, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v410, 5uLL), v411, 5uLL), vuzp1q_s32(v410, v411)));
      v426 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v412, 0xAuLL), v413, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v412, 5uLL), v413, 5uLL), vuzp1q_s32(v412, v413)));
      v427 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v417, 0xAuLL), v418, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v417, 5uLL), v418, 5uLL), vuzp1q_s32(v417, v418)));
      v428 = (a1 + a2);
      *a1 = vzip1q_s64(v421, v422);
      *(a1 + 16) = vzip1q_s64(v425, v426);
      v429 = (a1 + 2 * a2);
      *v428 = vzip2q_s64(v421, v422);
      v428[1] = vzip2q_s64(v425, v426);
      v430 = vbslq_s8(v396, vshrn_high_n_s64(vshrn_n_s64(v419, 0xAuLL), v420, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v419, 5uLL), v420, 5uLL), vuzp1q_s32(v419, v420)));
      *v429 = vzip1q_s64(v423, v424);
      v429[1] = vzip1q_s64(v427, v430);
      v431 = (v429 + a2);
      *v431 = vzip2q_s64(v423, v424);
      v431[1] = vzip2q_s64(v427, v430);
      return a4 + 1;
    }
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v4 = (a1 + a2);
    *v4 = 0u;
    v4[1] = 0u;
    v5 = (a1 + 2 * a2);
    result = 0;
    *v5 = 0u;
    v5[1] = 0u;
    v7 = (v4 + 2 * a2);
    *v7 = 0u;
    v7[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 256, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 288, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 512, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 768, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 544, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 800, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip2q_s64(*a3, v8);
  v12 = vzip1q_s64(v7, v9);
  v14 = *v6;
  v15 = v6[1];
  v13 = (v6 + a4);
  v16 = v13[1];
  v17 = vzip2q_s64(v7, v9);
  v18 = vzip1q_s64(v14, *v13);
  v19 = vzip2q_s64(v14, *v13);
  v20 = vzip1q_s64(v15, v16);
  v21 = vzip2q_s64(v15, v16);
  v22.i64[0] = v10.u32[0];
  v22.i64[1] = v10.u32[1];
  v23 = v22;
  v22.i64[0] = v10.u32[2];
  v22.i64[1] = v10.u32[3];
  v24 = vbslq_s8(xmmword_29D2F1340, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v22.i64[0] = v11.u32[0];
  v22.i64[1] = v11.u32[1];
  v26 = v22;
  v22.i64[0] = v11.u32[2];
  v22.i64[1] = v11.u32[3];
  v27 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v10.i8, 5uLL), v24));
  v28 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v10, 5uLL), v25));
  v525 = v10;
  v526 = v11;
  v29 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v11.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v26, 0)));
  v30 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v11, 5uLL), vbslq_s8(xmmword_29D2F1340, v22, 0)));
  v22.i64[0] = v18.u32[0];
  v22.i64[1] = v18.u32[1];
  v31 = v22;
  v22.i64[0] = v18.u32[2];
  v22.i64[1] = v18.u32[3];
  v32 = vbslq_s8(xmmword_29D2F1340, v31, 0);
  v33 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v22.i64[0] = v19.u32[0];
  v22.i64[1] = v19.u32[1];
  v34 = v22;
  v22.i64[0] = v19.u32[2];
  v22.i64[1] = v19.u32[3];
  v35 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v18.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v18.i8, 5uLL), v32));
  v36 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v18, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v18, 5uLL), v33));
  v523 = v18;
  v524 = v19;
  v37 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v19.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v19.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v34, 0)));
  v38 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v19, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v19, 5uLL), vbslq_s8(xmmword_29D2F1340, v22, 0)));
  v22.i64[0] = v12.u32[0];
  v22.i64[1] = v12.u32[1];
  v39 = v22;
  v22.i64[0] = v12.u32[2];
  v22.i64[1] = v12.u32[3];
  v40 = vbslq_s8(xmmword_29D2F1340, v39, 0);
  v41 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v22.i64[0] = v17.u32[0];
  v22.i64[1] = v17.u32[1];
  v42 = v22;
  v22.i64[0] = v17.u32[2];
  v22.i64[1] = v17.u32[3];
  v43 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v12.i8, 5uLL), v40));
  v44 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v12, 5uLL), v41));
  v527 = v12;
  v528 = v17;
  v45 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v17.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v17.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v42, 0)));
  v46 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v17, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v17, 5uLL), vbslq_s8(xmmword_29D2F1340, v22, 0)));
  v22.i64[0] = v20.u32[0];
  v22.i64[1] = v20.u32[1];
  v47 = v22;
  v22.i64[0] = v20.u32[2];
  v22.i64[1] = v20.u32[3];
  v48 = vbslq_s8(xmmword_29D2F1340, v47, 0);
  v49 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v22.i64[0] = v21.u32[0];
  v22.i64[1] = v21.u32[1];
  v50 = v22;
  v22.i64[0] = v21.u32[2];
  v22.i64[1] = v21.u32[3];
  v51 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v20.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v20.i8, 5uLL), v48));
  v52 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v20, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v20, 5uLL), v49));
  v53 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v21.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v21.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v50, 0)));
  v54 = vdupq_lane_s64(v27.i64[0], 0);
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v538 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v55 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v56 = vminq_s16(vminq_s16(v536, v538), v55);
  v540 = v55;
  v542 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v536, v538), v55), v542), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(v56, v542), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vzip1q_s16(v59, v60);
  v62.i64[0] = 0x10001000100010;
  v62.i64[1] = 0x10001000100010;
  v63 = vbicq_s8(vsubq_s16(v62, vclsq_s16(v61)), vceqzq_s16(v61));
  v544 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v532 = v38;
  v64 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v65 = vminq_s16(vminq_s16(v544, v545), v64);
  v546 = v64;
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v66.i64[0] = 0x8000800080008000;
  v66.i64[1] = 0x8000800080008000;
  v67 = vmaxq_s16(v59, v66);
  v66.i64[0] = 0x8000800080008000;
  v66.i64[1] = 0x8000800080008000;
  v68 = vminq_s16(v60, v66);
  v69 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v544, v545), v64), v547), xmmword_29D2F1150);
  v70 = vqtbl1q_s8(vminq_s16(v65, v547), xmmword_29D2F1150);
  v71 = vpmaxq_s16(v69, v69);
  v72 = vpminq_s16(v70, v70);
  v73 = vmaxq_s16(v67, v71);
  v74 = vminq_s16(v68, v72);
  v75 = vzip1q_s16(v71, v72);
  v76 = vbicq_s8(vsubq_s16(v62, vclsq_s16(v75)), vceqzq_s16(v75));
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v531 = v46;
  v77 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v78 = vminq_s16(vminq_s16(v548, v549), v77);
  v550 = v77;
  v551 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v79 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v548, v549), v77), v551), xmmword_29D2F1150);
  v80 = vqtbl1q_s8(vminq_s16(v78, v551), xmmword_29D2F1150);
  v81 = vpmaxq_s16(v79, v79);
  v82 = vpminq_s16(v80, v80);
  v83 = vmaxq_s16(v73, v81);
  v84 = vminq_s16(v74, v82);
  v85 = vzip1q_s16(v81, v82);
  v86 = vbicq_s8(vsubq_s16(v62, vclsq_s16(v85)), vceqzq_s16(v85));
  v552 = vshlq_s16(vshlq_s16(vsubq_s16(v51, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v553 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v556 = v54;
  v534 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v21, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v21, 5uLL), vbslq_s8(xmmword_29D2F1340, v22, 0)));
  v554 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v555 = vshlq_s16(vshlq_s16(vsubq_s16(v534, v54), xmmword_29D2F1360), xmmword_29D2F1370);
  v87 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v552, v553), v554), v555), xmmword_29D2F1150);
  v88 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v552, v553), v554), v555), xmmword_29D2F1150);
  v89 = vpmaxq_s16(v87, v87);
  v90 = vpminq_s16(v88, v88);
  v91 = vmaxq_s16(v83, v89);
  v92 = vminq_s16(v84, v90);
  v93 = vzip1q_s16(v89, v90);
  v94 = vbicq_s8(vsubq_s16(v62, vclsq_s16(v93)), vceqzq_s16(v93));
  v95 = vpmaxq_s16(v63, v63);
  v96 = vpmaxq_s16(v76, v76);
  v97 = vpmaxq_s16(v86, v86);
  v98 = vpmaxq_s16(v94, v94);
  v99 = vmaxq_s16(vmaxq_s16(v95, v96), vmaxq_s16(v97, v98));
  v100 = vclzq_s16(vsubq_s16(v91, v92));
  v46.i64[0] = 0xF000F000F000FLL;
  v46.i64[1] = 0xF000F000F000FLL;
  v101.i64[0] = -1;
  v101.i64[1] = -1;
  v564 = v91;
  v563 = v92;
  v102 = vsubq_s16(vshlq_s16(v101, vsubq_s16(v46, v100)), v92);
  v103 = vsubq_s16(v62, v100);
  v104 = vcgtq_s16(v99, v103);
  v105 = vminq_s16(v103, v99);
  v565 = vandq_s8(v102, v104);
  v102.i64[0] = 0x8000800080008;
  v102.i64[1] = 0x8000800080008;
  v106 = vorrq_s8(vandq_s8(v104, v102), 0);
  v104.i64[0] = 0x3000300030003;
  v104.i64[1] = 0x3000300030003;
  v107 = vorrq_s8(vandq_s8(vceqzq_s16(v105), v104), v106);
  v108 = vmaxq_s16(vminq_s16(vsubq_s16(v105, v96), v104), 0);
  v109 = vmaxq_s16(vminq_s16(vsubq_s16(v105, v97), v104), 0);
  v559 = vsubq_s16(v105, v108);
  v560 = vsubq_s16(v105, v109);
  v110 = vmaxq_s16(vminq_s16(vsubq_s16(v105, v98), v104), 0);
  v561 = vsubq_s16(v105, v110);
  v562 = v105;
  v111 = vmaxq_s16(vminq_s16(vsubq_s16(v105, v95), v104), 0);
  v112 = vceqq_s16(vaddq_s16(v110, v109), vnegq_s16(vaddq_s16(v111, v108)));
  v108.i64[0] = 0x4000400040004;
  v108.i64[1] = 0x4000400040004;
  v113 = vorrq_s8(vbicq_s8(v108, v112), v107);
  v557 = v113;
  v558 = vsubq_s16(v105, v111);
  if (vmaxvq_s16(v105))
  {
    v499 = v20;
    v500 = v21;
    v114.i64[0] = 0xFFFF00000000;
    v114.i64[1] = 0xFFFF00000000;
    v516 = v113;
    v115 = vsubq_s16(v556, vshlq_s16(vqtbl1q_s8(v556, xmmword_29D2F1140), v114));
    v529 = v29;
    v530 = v30;
    v520 = v35;
    v521 = v36;
    v522 = v37;
    v116 = vsubq_s16(v37, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v37, xmmword_29D2F1140), v114)));
    v117.i64[0] = 0x10001000100010;
    v117.i64[1] = 0x10001000100010;
    v515 = v107;
    v118 = vsubq_s16(v43, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v43, xmmword_29D2F1140), v114)));
    v517 = v43;
    v518 = v44;
    v519 = v45;
    v119 = vshlq_s16(vshlq_s16(vsubq_s16(v27, vaddq_s16(vshlq_s16(vqtbl1q_s8(v27, xmmword_29D2F1140), v114), v115)), xmmword_29D2F1360), xmmword_29D2F1370);
    v120 = vshlq_s16(vshlq_s16(vsubq_s16(v30, vaddq_s16(vshlq_s16(vqtbl1q_s8(v30, xmmword_29D2F1140), v114), v115)), xmmword_29D2F1360), xmmword_29D2F1370);
    v121 = vshlq_s16(vshlq_s16(vsubq_s16(v35, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v35, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v122 = vshlq_s16(vshlq_s16(vsubq_s16(v36, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v36, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v123 = vshlq_s16(vshlq_s16(v116, xmmword_29D2F1360), xmmword_29D2F1370);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v532, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v125 = vshlq_s16(vshlq_s16(vsubq_s16(v44, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v44, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v126 = vshlq_s16(vshlq_s16(vsubq_s16(v45, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v45, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v127 = vshlq_s16(vshlq_s16(vsubq_s16(v51, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v51, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v52, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v52, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v129 = v558;
    v130 = vshlq_s16(vshlq_s16(vsubq_s16(v53, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v53, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v131 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v534, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v132 = vshlq_s16(vshlq_s16(vsubq_s16(v531, vaddq_s16(v115, vshlq_s16(vqtbl1q_s8(v531, xmmword_29D2F1140), v114))), xmmword_29D2F1360), xmmword_29D2F1370);
    v505 = vshlq_s16(vshlq_s16(vsubq_s16(v28, vaddq_s16(vshlq_s16(vqtbl1q_s8(v28, xmmword_29D2F1140), v114), v115)), xmmword_29D2F1360), xmmword_29D2F1370);
    v506 = v120;
    v507 = vshlq_s16(vshlq_s16(vsubq_s16(v29, vaddq_s16(vshlq_s16(vqtbl1q_s8(v29, xmmword_29D2F1140), v114), v115)), xmmword_29D2F1360), xmmword_29D2F1370);
    v133 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v119, v505), v507), v120), xmmword_29D2F1150);
    v134 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v119, v505), v507), v120), xmmword_29D2F1150);
    v135 = vpmaxq_s16(v133, v133);
    v136 = vpminq_s16(v134, v134);
    v137.i64[0] = 0x8000800080008000;
    v137.i64[1] = 0x8000800080008000;
    v138 = vmaxq_s16(v135, v137);
    v114.i64[0] = 0x8000800080008000;
    v114.i64[1] = 0x8000800080008000;
    v139 = vminq_s16(v136, v114);
    v140 = vzip1q_s16(v135, v136);
    v141 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v140)), vceqzq_s16(v140));
    v142 = vpmaxq_s16(v141, v141);
    v509 = v122;
    v510 = v121;
    v511 = v124;
    v512 = v123;
    v143 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v121, v122), v123), v124), xmmword_29D2F1150);
    v144 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v121, v122), v123), v124), xmmword_29D2F1150);
    v145 = vpmaxq_s16(v143, v143);
    v146 = vpminq_s16(v144, v144);
    v147 = vmaxq_s16(v138, v145);
    v148 = vminq_s16(v139, v146);
    v149 = vzip1q_s16(v145, v146);
    v150 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v149)), vceqzq_s16(v149));
    v151 = vpmaxq_s16(v150, v150);
    v513 = v125;
    v514 = vshlq_s16(vshlq_s16(v118, xmmword_29D2F1360), xmmword_29D2F1370);
    v152 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v514, v125), v126), v132), xmmword_29D2F1150);
    v153 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v514, v125), v126), v132), xmmword_29D2F1150);
    v154 = vpmaxq_s16(v152, v152);
    v155 = vpminq_s16(v153, v153);
    v156 = vmaxq_s16(v147, v154);
    v157 = vminq_s16(v148, v155);
    v158 = vzip1q_s16(v154, v155);
    v159 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v158)), vceqzq_s16(v158));
    v160 = vpmaxq_s16(v159, v159);
    v161 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v127, v128), v130), v131), xmmword_29D2F1150);
    v162 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v127, v128), v130), v131), xmmword_29D2F1150);
    v163 = vpmaxq_s16(v161, v161);
    v164 = vpminq_s16(v162, v162);
    v165 = vmaxq_s16(v156, v163);
    v166 = vzip1q_s16(v163, v164);
    v167 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v166)), vceqzq_s16(v166));
    v168 = vpmaxq_s16(v167, v167);
    v169 = vmaxq_s16(vmaxq_s16(v142, v151), vmaxq_s16(v160, v168));
    v170 = vminq_s16(v157, v164);
    v508 = v165;
    v171 = vclzq_s16(vsubq_s16(v165, v170));
    v172 = vsubq_s16(v117, v171);
    v173 = vcgtq_s16(v169, v172);
    v174 = vminq_s16(v172, v169);
    v175.i64[0] = 0x3000300030003;
    v175.i64[1] = 0x3000300030003;
    v176 = vmaxq_s16(vminq_s16(vsubq_s16(v174, v142), v175), 0);
    v177 = vmaxq_s16(vminq_s16(vsubq_s16(v174, v151), v175), 0);
    v178 = vmaxq_s16(vminq_s16(vsubq_s16(v174, v160), v175), 0);
    v124.i64[0] = 0x3000300030003;
    v124.i64[1] = 0x3000300030003;
    v179 = vmaxq_s16(vminq_s16(vsubq_s16(v174, v168), v175), 0);
    v160.i64[0] = 0x4000400040004;
    v160.i64[1] = 0x4000400040004;
    v180 = vbicq_s8(v160, vceqq_s16(vaddq_s16(v179, v178), vnegq_s16(vaddq_s16(v176, v177))));
    v160.i64[0] = 0x18001800180018;
    v160.i64[1] = 0x18001800180018;
    v181 = vbslq_s8(v173, v160, v117);
    v502 = vsubq_s16(v174, v177);
    v503 = vsubq_s16(v174, v178);
    v504 = vsubq_s16(v174, v179);
    v179.i64[0] = 0x7000700070007;
    v179.i64[1] = 0x7000700070007;
    v501 = vsubq_s16(v174, v176);
    v182 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v174, vceqzq_s16((*&v181 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v180, v180)), v501, v179), vshlq_n_s16(vaddq_s16(vaddq_s16(v503, v502), v504), 3uLL));
    v183 = v516;
    v165.i64[0] = 0x8000800080008;
    v165.i64[1] = 0x8000800080008;
    v184 = vandq_s8(vaddq_s16(v183, v183), v165);
    v185 = vandq_s8(v515, v165);
    v165.i64[0] = 0x2000200020002;
    v165.i64[1] = 0x2000200020002;
    v186 = v562;
    v187 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v562, vceqzq_s16(v185)), vandq_s8(vceqq_s16(vandq_s8(v515, v124), v165), v117)), v184), v558, v179);
    v188 = v559;
    v190 = v560;
    v189 = v561;
    v191 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v187, vshlq_n_s16(vaddq_s16(vaddq_s16(v560, v559), v561), 3uLL)), v182).i64[0], 0);
    v192 = vaddvq_s16(v191);
    v194 = a5 < 4 || a6 < 2;
    if (v192)
    {
      v195.i64[0] = 0x3000300030003;
      v195.i64[1] = 0x3000300030003;
      v196 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v174), v195), v181), v180);
      v197.i64[0] = 0xF000F000F000FLL;
      v197.i64[1] = 0xF000F000F000FLL;
      v536 = vbslq_s8(v191, v119, v536);
      v538 = vbslq_s8(v191, v505, v538);
      v195.i64[0] = -1;
      v195.i64[1] = -1;
      v540 = vbslq_s8(v191, v507, v540);
      v542 = vbslq_s8(v191, v506, v542);
      v198 = vandq_s8(vsubq_s16(vshlq_s16(v195, vsubq_s16(v197, v171)), v170), v173);
      v544 = vbslq_s8(v191, v510, v544);
      v545 = vbslq_s8(v191, v509, v545);
      v546 = vbslq_s8(v191, v512, v546);
      v547 = vbslq_s8(v191, v511, v547);
      v548 = vbslq_s8(v191, v514, v548);
      v549 = vbslq_s8(v191, v513, v549);
      v550 = vbslq_s8(v191, v126, v550);
      v551 = vbslq_s8(v191, v132, v551);
      v552 = vbslq_s8(v191, v127, v552);
      v553 = vbslq_s8(v191, v128, v553);
      v554 = vbslq_s8(v191, v130, v554);
      v555 = vbslq_s8(v191, v131, v555);
      v129 = vbslq_s8(v191, v501, v558);
      v188 = vbslq_s8(v191, v502, v559);
      v558 = v129;
      v559 = v188;
      v190 = vbslq_s8(v191, v503, v560);
      v189 = vbslq_s8(v191, v504, v561);
      v560 = v190;
      v561 = v189;
      v564 = vbslq_s8(v191, v508, v564);
      v565 = vbslq_s8(v191, v198, v565);
      v186 = vbslq_s8(v191, v174, v562);
      v563 = vbslq_s8(v191, v170, v563);
      v562 = v186;
      v183 = vbslq_s8(v191, v196, v557);
      v556 = vbslq_s8(v191, v115, v556);
      v557 = v183;
    }

    v199 = v35;
    v200 = v521;
    v201 = v522;
    v202 = v517;
    v203 = v518;
    v204 = v519;
    v205 = v27;
    v206 = v28;
    v207 = v529;
    v208 = v530;
    if (!v194)
    {
      v209 = vqtbl4q_s8(*v205.i8, xmmword_29D2F1160);
      v210 = vsubq_s16(v27, vqtbl4q_s8(*v205.i8, xmmword_29D2F10B0));
      v211 = vsubq_s16(v529, v209);
      v212 = vsubq_s16(v530, v209);
      v213.i64[0] = v532.i64[0];
      v213.i64[1] = v530.i64[1];
      v214 = vqtbl4q_s8(*v199.i8, xmmword_29D2F10B0);
      v566.val[3] = v213;
      v566.val[2] = v522;
      v566.val[1] = v521;
      v566.val[0] = v520;
      v215 = vsubq_s16(v521, vqtbl4q_s8(v566, xmmword_29D2F10F0));
      v216 = vsubq_s16(v522, vqtbl4q_s8(v566, xmmword_29D2F1160));
      v217 = vsubq_s16(v532, vqtbl4q_s8(v566, xmmword_29D2F1100));
      v218.i64[0] = v531.i64[0];
      v218.i64[1] = v530.i64[1];
      v566.val[1] = vqtbl4q_s8(*v202.i8, xmmword_29D2F1170);
      v566.val[2] = vqtbl4q_s8(*v202.i8, xmmword_29D2F1180);
      v566.val[3] = v517;
      v219 = v518;
      v220 = v519;
      v221 = v218;
      v222 = vqtbl4q_s8(*(&v566 + 48), xmmword_29D2F10C0);
      v566.val[3] = vsubq_s16(v519, vqtbl4q_s8(*(&v566 + 48), xmmword_29D2F10B0));
      v223 = v534.i64[0];
      v224 = v530.i64[1];
      v221.i64[0] = v212.i64[0];
      v221.i64[1] = v210.i64[0];
      v210.i64[0] = v212.i64[1];
      v225 = vshlq_s16(vsubq_s16(v28, vqtbl4q_s8(*v205.i8, xmmword_29D2F10C0)), xmmword_29D2F1360);
      v226 = vshlq_s16(vsubq_s16(v531, v222), xmmword_29D2F1360);
      v566.val[0] = vshlq_s16(vsubq_s16(v51, vqtbl4q_s8(*v51.i8, xmmword_29D2F1170)), xmmword_29D2F1360);
      v227 = vshlq_s16(vsubq_s16(v52, vqtbl4q_s8(*v51.i8, xmmword_29D2F1120)), xmmword_29D2F1360);
      v228 = vshlq_s16(vsubq_s16(v53, vqtbl4q_s8(*v51.i8, xmmword_29D2F10B0)), xmmword_29D2F1360);
      v229 = vshlq_s16(vsubq_s16(v534, vqtbl4q_s8(*v51.i8, xmmword_29D2F10C0)), xmmword_29D2F1360);
      v230 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F1360), xmmword_29D2F1370);
      v231 = vshlq_s16(v225, xmmword_29D2F1370);
      v232 = vshlq_s16(vshlq_s16(v211, xmmword_29D2F1360), xmmword_29D2F1370);
      v233 = vshlq_s16(vshlq_s16(v221, xmmword_29D2F1360), xmmword_29D2F1370);
      v234 = vshlq_s16(vshlq_s16(vsubq_s16(v520, v214), xmmword_29D2F1360), xmmword_29D2F1370);
      v235 = vshlq_s16(vshlq_s16(v215, xmmword_29D2F1360), xmmword_29D2F1370);
      v236 = vshlq_s16(vshlq_s16(v216, xmmword_29D2F1360), xmmword_29D2F1370);
      v237 = vshlq_s16(vshlq_s16(v217, xmmword_29D2F1360), xmmword_29D2F1370);
      v238 = vshlq_s16(vshlq_s16(vsubq_s16(v517, v566.val[1]), xmmword_29D2F1360), xmmword_29D2F1370);
      v239 = vshlq_s16(vshlq_s16(vsubq_s16(v518, v566.val[2]), xmmword_29D2F1360), xmmword_29D2F1370);
      v240 = vshlq_s16(vshlq_s16(v566.val[3], xmmword_29D2F1360), xmmword_29D2F1370);
      v241 = vshlq_s16(v226, xmmword_29D2F1370);
      v242 = vshlq_s16(v566.val[0], xmmword_29D2F1370);
      v243 = vshlq_s16(v227, xmmword_29D2F1370);
      v244 = vshlq_s16(v228, xmmword_29D2F1370);
      v245 = vshlq_s16(v229, xmmword_29D2F1370);
      v246 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v230, v231), v232), v233), xmmword_29D2F1150);
      v247 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v230, v231), v232), v233), xmmword_29D2F1150);
      v248 = vpmaxq_s16(v246, v246);
      v249 = vpminq_s16(v247, v247);
      v210.i64[0] = 0x8000800080008000;
      v210.i64[1] = 0x8000800080008000;
      v250 = vmaxq_s16(v248, v210);
      v228.i64[0] = 0x8000800080008000;
      v228.i64[1] = 0x8000800080008000;
      v251 = vminq_s16(v249, v228);
      v252 = vzip1q_s16(v248, v249);
      v249.i64[0] = 0x10001000100010;
      v249.i64[1] = 0x10001000100010;
      v253 = vbicq_s8(vsubq_s16(v249, vclsq_s16(v252)), vceqzq_s16(v252));
      v254 = vpmaxq_s16(v253, v253);
      v255 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v234, v235), v236), v237), xmmword_29D2F1150);
      v256 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v234, v235), v236), v237), xmmword_29D2F1150);
      v257 = vpmaxq_s16(v255, v255);
      v258 = vpminq_s16(v256, v256);
      v259 = vmaxq_s16(v250, v257);
      v260 = vminq_s16(v251, v258);
      v261 = vzip1q_s16(v257, v258);
      v262 = vbicq_s8(vsubq_s16(v249, vclsq_s16(v261)), vceqzq_s16(v261));
      v263 = vpmaxq_s16(v262, v262);
      v264 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v238, v239), v240), v241), xmmword_29D2F1150);
      v265 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v238, v239), v240), v241), xmmword_29D2F1150);
      v266 = vpmaxq_s16(v264, v264);
      v267 = vpminq_s16(v265, v265);
      v268 = vmaxq_s16(v259, v266);
      v269 = vminq_s16(v260, v267);
      v270 = vzip1q_s16(v266, v267);
      v271 = vbicq_s8(vsubq_s16(v249, vclsq_s16(v270)), vceqzq_s16(v270));
      v272 = vpmaxq_s16(v271, v271);
      v273 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v242, v243), v244), v245), xmmword_29D2F1150);
      v274 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v242, v243), v244), v245), xmmword_29D2F1150);
      v275 = vpmaxq_s16(v273, v273);
      v276 = vpminq_s16(v274, v274);
      v277 = vmaxq_s16(v268, v275);
      v278 = vminq_s16(v269, v276);
      v279 = vzip1q_s16(v275, v276);
      v280 = vbicq_s8(vsubq_s16(v249, vclsq_s16(v279)), vceqzq_s16(v279));
      v281 = vpmaxq_s16(v280, v280);
      v282 = vmaxq_s16(vmaxq_s16(v254, v263), vmaxq_s16(v272, v281));
      v535 = v277;
      v283 = vclzq_s16(vsubq_s16(v277, v278));
      v284 = vsubq_s16(v249, v283);
      v285 = vcgtq_s16(v282, v284);
      v286 = vminq_s16(v284, v282);
      v287 = vsubq_s16(v286, v254);
      v254.i64[0] = 0x3000300030003;
      v254.i64[1] = 0x3000300030003;
      v288 = vmaxq_s16(vminq_s16(v287, v254), 0);
      v289 = vmaxq_s16(vminq_s16(vsubq_s16(v286, v263), v254), 0);
      v290 = vmaxq_s16(vminq_s16(vsubq_s16(v286, v272), v254), 0);
      v291 = vmaxq_s16(vminq_s16(vsubq_s16(v286, v281), v254), 0);
      v292 = vsubq_s16(v286, v288);
      v293 = vsubq_s16(v286, v289);
      v294 = vsubq_s16(v286, v291);
      v295 = vceqq_s16(vaddq_s16(v291, v290), vnegq_s16(vaddq_s16(v288, v289)));
      v288.i64[0] = 0x4000400040004;
      v288.i64[1] = 0x4000400040004;
      v296 = vbicq_s8(v288, v295);
      v252.i64[0] = 0x7000700070007;
      v252.i64[1] = 0x7000700070007;
      v533 = vsubq_s16(v286, v290);
      v297.i64[0] = 0x2000200020002;
      v297.i64[1] = 0x2000200020002;
      v298 = vandq_s8(vceqq_s16(vandq_s8(v557, v254), v297), v249);
      v249.i64[0] = 0x8000800080008;
      v249.i64[1] = 0x8000800080008;
      v186 = v562;
      v299 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v562, vceqzq_s16(vandq_s8(v557, v249))), vandq_s8(vaddq_s16(v557, v557), v249)), v298), v558, v252);
      v188 = v559;
      v190 = v560;
      v189 = v561;
      v300 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v299, vshlq_n_s16(vaddq_s16(vaddq_s16(v560, v559), v561), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v286, v285), vaddq_s16(v296, v296)), v292, v252), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v293), v294), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v300))
      {
        v301.i64[0] = 0x9000900090009;
        v301.i64[1] = 0x9000900090009;
        v302 = vorrq_s8(vandq_s8(vceqzq_s16(v286), v297), vsubq_s16(vandq_s8(v285, v301), vmvnq_s8(v285)));
        v301.i64[0] = -1;
        v301.i64[1] = -1;
        v303 = vorrq_s8(v302, v296);
        v302.i64[0] = 0xF000F000F000FLL;
        v302.i64[1] = 0xF000F000F000FLL;
        v304 = vandq_s8(vsubq_s16(vshlq_s16(v301, vsubq_s16(v302, v283)), v278), v285);
        v188 = vbslq_s8(v300, v293, v559);
        v190 = vbslq_s8(v300, v533, v560);
        v189 = vbslq_s8(v300, v294, v561);
        v186 = vbslq_s8(v300, v286, v562);
        v555 = vbslq_s8(v300, v245, v555);
        v556 = vbslq_s8(v300, vextq_s8(v530, v530, 8uLL), v556);
        v536 = vbslq_s8(v300, v230, v536);
        v538 = vbslq_s8(v300, v231, v538);
        v540 = vbslq_s8(v300, v232, v540);
        v542 = vbslq_s8(v300, v233, v542);
        v544 = vbslq_s8(v300, v234, v544);
        v545 = vbslq_s8(v300, v235, v545);
        v546 = vbslq_s8(v300, v236, v546);
        v547 = vbslq_s8(v300, v237, v547);
        v548 = vbslq_s8(v300, v238, v548);
        v549 = vbslq_s8(v300, v239, v549);
        v550 = vbslq_s8(v300, v240, v550);
        v551 = vbslq_s8(v300, v241, v551);
        v183 = vbslq_s8(v300, v303, v557);
        v552 = vbslq_s8(v300, v242, v552);
        v553 = vbslq_s8(v300, v243, v553);
        v554 = vbslq_s8(v300, v244, v554);
        v563 = vbslq_s8(v300, v278, v563);
        v564 = vbslq_s8(v300, v535, v564);
        v565 = vbslq_s8(v300, v304, v565);
        v558 = vbslq_s8(v300, v292, v558);
        v559 = v188;
        v560 = v190;
        v561 = v189;
        v562 = v186;
        v557 = v183;
        v129 = v558;
      }

      else
      {
        v129 = v558;
        v183 = v557;
      }
    }

    v307 = vandq_s8(v565, vceqq_s16(v186, v129));
    v537 = vaddq_s16(v307, v536);
    v539 = vaddq_s16(v538, v307);
    v541 = vaddq_s16(v540, v307);
    v543 = vaddq_s16(v542, v307);
    v308 = vandq_s8(v565, vceqq_s16(v186, v188));
    v544 = vaddq_s16(v544, v308);
    v545 = vaddq_s16(v545, v308);
    v546 = vaddq_s16(v546, v308);
    v547 = vaddq_s16(v547, v308);
    v309 = vandq_s8(v565, vceqq_s16(v186, v190));
    v548 = vaddq_s16(v548, v309);
    v549 = vaddq_s16(v549, v309);
    v550 = vaddq_s16(v550, v309);
    v551 = vaddq_s16(v551, v309);
    v310 = vandq_s8(v565, vceqq_s16(v186, v189));
    v552 = vaddq_s16(v552, v310);
    v553 = vaddq_s16(v553, v310);
    v554 = vaddq_s16(v554, v310);
    v555 = vaddq_s16(v555, v310);
    v310.i64[0] = 0x8000800080008;
    v310.i64[1] = 0x8000800080008;
    v311.i64[0] = 0x3000300030003;
    v311.i64[1] = 0x3000300030003;
    v312.i64[0] = 0x2000200020002;
    v312.i64[1] = 0x2000200020002;
    v313 = vceqq_s16(vandq_s8(v183, v311), v312);
    v312.i64[0] = 0x10001000100010;
    v312.i64[1] = 0x10001000100010;
    v314 = vandq_s8(v313, v312);
    v312.i64[0] = 0x7000700070007;
    v312.i64[1] = 0x7000700070007;
    v315 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v186, vceqzq_s16(vandq_s8(v183, v310))), vandq_s8(vaddq_s16(v183, v183), v310)), v314), v129, v312), vshlq_n_s16(vaddq_s16(vaddq_s16(v190, v188), v189), 3uLL));
    v316 = vpaddq_s16(v315, v315);
    if ((vpaddq_s16(v316, v316).i16[0] + 71) > 0x3FF)
    {
      *a1 = v525;
      *(a1 + 16) = v526;
      *(a1 + 32) = v523;
      *(a1 + 48) = v524;
      *(a1 + 64) = v527;
      *(a1 + 80) = v528;
      v320 = (a1 + 96);
      v305 = 127;
      result = 128;
      *v320 = v499;
      v320[1] = v500;
    }

    else
    {
      v317 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v318 = 8 * (a1 & 7);
      if (v318)
      {
        v319 = *v317 & ~(-1 << v318);
      }

      else
      {
        v319 = 0;
      }

      *a2 = 0;
      v321 = ((v186.i8[0] - 1) & 0xF) << 15;
      if (!v186.i16[0])
      {
        v321 = 0;
      }

      if (v186.i16[1])
      {
        v322 = ((v186.i8[2] - 1) & 0xF) << 19;
      }

      else
      {
        v322 = 0;
      }

      if (v186.i16[2])
      {
        v323 = ((v186.i8[4] - 1) & 0xF) << 23;
      }

      else
      {
        v323 = 0;
      }

      v324 = v321 | v322;
      v325 = v556.i16[0] & 0x7FF | ((v556.i16[1] & 0x7FF) << 11) | ((v556.i16[2] & 0x3FF) << 22);
      v326 = v324 | v323 | v183.i8[0] & 0x1F | (32 * (v183.i8[2] & 0x1F)) & 0x83FF | ((v183.i8[4] & 0x1F) << 10);
      v327 = (v326 << v318) | v319;
      if (v318 >= 0x20)
      {
        *v317 = v327;
        v327 = v326 >> (-8 * (a1 & 7u));
      }

      v328 = (v318 + 32) & 0x38;
      v329 = v327 | (v325 << v328);
      if (v328 >= 0x20)
      {
        *(v317 + (((v318 + 32) >> 3) & 8)) = v329;
        v329 = v325 >> -v328;
      }

      v330 = vsubq_s16(v562, v558);
      v331 = vsubq_s16(v562, v559);
      v332 = vsubq_s16(v562, v560);
      v333 = vsubq_s16(v562, v561);
      *v330.i8 = vqmovn_u16(v330);
      *v331.i8 = vqmovn_u16(v331);
      *v332.i8 = vqmovn_u16(v332);
      *v333.i8 = vqmovn_u16(v333);
      v334 = vtrn1q_s8(v330, v331);
      v335 = vtrn2q_s8(v330, v331);
      v336 = vtrn1q_s8(v332, v333);
      v337 = vtrn2q_s8(v332, v333);
      v338 = vzip1q_s16(v335, v337);
      v339 = vtrn2q_s16(v335, v337);
      v335.i64[0] = vzip1q_s32(vzip1q_s16(v334, v336), v338).u64[0];
      v339.i64[0] = vzip1q_s32(vtrn2q_s16(v334, v336), v339).u64[0];
      v332.i64[0] = 0x202020202020202;
      v332.i64[1] = 0x202020202020202;
      v340 = vandq_s8(vmovl_s16(vtst_s16(*v557.i8, 0x4000400040004)), v332);
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v341 = vshlq_u8(v334, vorrq_s8(v340, v332));
      v342 = vmovl_u8(vand_s8(*v341.i8, *v335.i8));
      v343 = vmovl_u8(vand_s8(*&vextq_s8(v341, v341, 8uLL), *v339.i8));
      v344 = vmovl_u8(*v340.i8);
      v345 = vmovl_high_u8(v340);
      v346 = vpaddq_s16(vshlq_u16(v342, vtrn1q_s16(0, v344)), vshlq_u16(v343, vtrn1q_s16(0, v345)));
      v347 = vpaddq_s16(v344, v345);
      v348 = vmovl_u16(*v347.i8);
      v349 = vmovl_high_u16(v347);
      v350 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v348)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v349)));
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
      v358 = (v356.i64[0] << v318) | v329;
      if (v357.i64[0] + v318 >= 0x40)
      {
        v317[1] = v358;
        v358 = v356.i64[0] >> (-8 * (a1 & 7u));
        if (!v318)
        {
          v358 = 0;
        }
      }

      v359 = v357.i64[0] + (v318 | 0x40);
      v360 = v358 | (v356.i64[1] << v359);
      if ((v359 & 0x3F) + v357.i64[1] >= 0x40)
      {
        *(v317 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v356.i64[1] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359 + v357.i64[1];
      v362.i64[0] = 0x8000800080008;
      v362.i64[1] = 0x8000800080008;
      v363.i64[0] = -1;
      v363.i64[1] = -1;
      v364 = vandq_s8(vextq_s8(vtstq_s16(v557, v362), 0, 8uLL), v562);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366 = vandq_s8(vshlq_u16(v363, vaddq_s16(v364, v365)), v565);
      v367 = vmovl_u16(*v364.i8);
      v368 = vpaddq_s32(vshlq_u32(vmovl_u16(*v366.i8), vtrn1q_s32(0, v367)), vmovl_high_u16(v366));
      v369 = vpaddq_s32(v367, vmovl_high_u16(v364));
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
      v376 = (v374.i64[0] << v361) | v360;
      if (v375.i64[0] + (v361 & 0x3F) >= 0x40)
      {
        *(v317 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v374.i64[0] >> -(v361 & 0x3F);
        if ((v361 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375.i64[0] + v361;
      v378 = v376 | (v374.i64[1] << v377);
      if ((v377 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v317 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v374.i64[1] >> -(v377 & 0x3F);
        if ((v377 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377 + v375.i64[1];
      v380 = vextq_s8(0, v558, 8uLL);
      v381.i64[0] = 0xF000F000F000FLL;
      v381.i64[1] = 0xF000F000F000FLL;
      v382.i64[0] = -1;
      v382.i64[1] = -1;
      v383 = vandq_s8(vshlq_u16(v382, vaddq_s16(v380, v381)), v537);
      v384 = vmovl_u16(*v380.i8);
      v385 = vmovl_high_u16(v380);
      v386 = vpaddq_s32(vmovl_u16(*v383.i8), vshlq_u32(vmovl_high_u16(v383), vtrn1q_s32(0, v385)));
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
      v394 = (v392.i64[0] << v379) | v378;
      if (v393.i64[0] + (v379 & 0x3F) >= 0x40)
      {
        *(v317 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        v394 = v392.i64[0] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v394 = 0;
        }
      }

      v395 = v393.i64[0] + v379;
      v396 = v394 | (v392.i64[1] << v395);
      if ((v395 & 0x3F) + v393.i64[1] >= 0x40)
      {
        *(v317 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v392.i64[1] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = v395 + v393.i64[1];
      v398.i64[0] = 0xF000F000F000FLL;
      v398.i64[1] = 0xF000F000F000FLL;
      v399.i64[0] = -1;
      v399.i64[1] = -1;
      v400 = vandq_s8(vshlq_u16(v399, vaddq_s16(v558, v398)), v539);
      v401 = vmovl_u16(*v558.i8);
      v402 = vmovl_high_u16(v558);
      v403 = vpaddq_s32(vshlq_u32(vmovl_u16(*v400.i8), vtrn1q_s32(0, v401)), vshlq_u32(vmovl_high_u16(v400), vtrn1q_s32(0, v402)));
      v404 = vpaddq_s32(v401, v402);
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
      v409 = vpaddq_s64(vshlq_u64(v406, vzip1q_s64(0, v408)), vshlq_u64(v407, vzip1q_s64(0, v405)));
      v410 = vpaddq_s64(v408, v405);
      v411 = (v409.i64[0] << v397) | v396;
      if (v410.i64[0] + (v397 & 0x3F) >= 0x40)
      {
        *(v317 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v411;
        v411 = v409.i64[0] >> -(v397 & 0x3F);
        if ((v397 & 0x3F) == 0)
        {
          v411 = 0;
        }
      }

      v412 = v410.i64[0] + v397;
      v413 = v411 | (v409.i64[1] << v412);
      if ((v412 & 0x3F) + v410.i64[1] >= 0x40)
      {
        *(v317 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
        v413 = v409.i64[1] >> -(v412 & 0x3F);
        if ((v412 & 0x3F) == 0)
        {
          v413 = 0;
        }
      }

      v414 = v412 + v410.i64[1];
      v415.i64[0] = 0xF000F000F000FLL;
      v415.i64[1] = 0xF000F000F000FLL;
      v416.i64[0] = -1;
      v416.i64[1] = -1;
      v417 = vandq_s8(vshlq_u16(v416, vaddq_s16(v558, v415)), v541);
      v418 = vmovl_u16(*v558.i8);
      v419 = vmovl_high_u16(v558);
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
      v428 = (v426.i64[0] << v414) | v413;
      if (v427.i64[0] + (v414 & 0x3F) >= 0x40)
      {
        *(v317 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
        v428 = v426.i64[0] >> -(v414 & 0x3F);
        if ((v414 & 0x3F) == 0)
        {
          v428 = 0;
        }
      }

      v429 = v427.i64[0] + v414;
      v430 = v428 | (v426.i64[1] << v429);
      if ((v429 & 0x3F) + v427.i64[1] >= 0x40)
      {
        *(v317 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
        v430 = v426.i64[1] >> -(v429 & 0x3F);
        if ((v429 & 0x3F) == 0)
        {
          v430 = 0;
        }
      }

      v431 = v429 + v427.i64[1];
      v432.i64[0] = 0xF000F000F000FLL;
      v432.i64[1] = 0xF000F000F000FLL;
      v433.i64[0] = -1;
      v433.i64[1] = -1;
      v434 = vandq_s8(vshlq_u16(v433, vaddq_s16(v558, v432)), v543);
      v435 = vmovl_u16(*v558.i8);
      v436 = vmovl_high_u16(v558);
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
      v445 = (v443.i64[0] << v431) | v430;
      if (v444.i64[0] + (v431 & 0x3F) >= 0x40)
      {
        *(v317 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
        v445 = v443.i64[0] >> -(v431 & 0x3F);
        if ((v431 & 0x3F) == 0)
        {
          v445 = 0;
        }
      }

      v446 = v444.i64[1];
      v447 = v444.i64[0] + v431;
      v448 = (v444.i64[0] + v431) & 0x3F;
      v449 = v445 | (v443.i64[1] << v447);
      if ((v448 + v444.i64[1]) >= 0x40)
      {
        *(v317 + ((v447 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
        v449 = v443.i64[1] >> -v448;
        if (!v448)
        {
          v449 = 0;
        }
      }

      v450 = 0;
      v451.i64[0] = 0xF000F000F000FLL;
      v451.i64[1] = 0xF000F000F000FLL;
      v452.i64[0] = -1;
      v452.i64[1] = -1;
      v453 = v447 + v446;
      do
      {
        v454 = vandq_s8(vshlq_u16(v452, vaddq_s16(v559, v451)), *(&v544 + v450));
        v455 = vmovl_u16(*v559.i8);
        v456 = vmovl_high_u16(v559);
        v457 = vpaddq_s32(vshlq_u32(vmovl_u16(*v454.i8), vtrn1q_s32(0, v455)), vshlq_u32(vmovl_high_u16(v454), vtrn1q_s32(0, v456)));
        v458 = vpaddq_s32(v455, v456);
        v459.i64[0] = v457.u32[0];
        v459.i64[1] = v457.u32[1];
        v460 = v459;
        v459.i64[0] = v457.u32[2];
        v459.i64[1] = v457.u32[3];
        v461 = v459;
        v459.i64[0] = v458.u32[0];
        v459.i64[1] = v458.u32[1];
        v462 = v459;
        v459.i64[0] = v458.u32[2];
        v459.i64[1] = v458.u32[3];
        v463 = vpaddq_s64(vshlq_u64(v460, vzip1q_s64(0, v462)), vshlq_u64(v461, vzip1q_s64(0, v459)));
        v464 = vpaddq_s64(v462, v459);
        v465 = (v463.i64[0] << v453) | v449;
        if (v464.i64[0] + (v453 & 0x3F) >= 0x40)
        {
          *(v317 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
          v465 = v463.i64[0] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v465 = 0;
          }
        }

        v466 = v464.i64[0] + v453;
        v449 = v465 | (v463.i64[1] << v466);
        if ((v466 & 0x3F) + v464.i64[1] >= 0x40)
        {
          *(v317 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
          v449 = v463.i64[1] >> -(v466 & 0x3F);
          if ((v466 & 0x3F) == 0)
          {
            v449 = 0;
          }
        }

        v453 = v466 + v464.i64[1];
        v450 += 16;
      }

      while (v450 != 64);
      v467 = 0;
      v468.i64[0] = 0xF000F000F000FLL;
      v468.i64[1] = 0xF000F000F000FLL;
      v469.i64[0] = -1;
      v469.i64[1] = -1;
      do
      {
        v470 = vandq_s8(vshlq_u16(v469, vaddq_s16(v560, v468)), *(&v548 + v467));
        v471 = vmovl_u16(*v560.i8);
        v472 = vmovl_high_u16(v560);
        v473 = vpaddq_s32(vshlq_u32(vmovl_u16(*v470.i8), vtrn1q_s32(0, v471)), vshlq_u32(vmovl_high_u16(v470), vtrn1q_s32(0, v472)));
        v474 = vpaddq_s32(v471, v472);
        v475.i64[0] = v473.u32[0];
        v475.i64[1] = v473.u32[1];
        v476 = v475;
        v475.i64[0] = v473.u32[2];
        v475.i64[1] = v473.u32[3];
        v477 = v475;
        v475.i64[0] = v474.u32[0];
        v475.i64[1] = v474.u32[1];
        v478 = v475;
        v475.i64[0] = v474.u32[2];
        v475.i64[1] = v474.u32[3];
        v479 = vpaddq_s64(vshlq_u64(v476, vzip1q_s64(0, v478)), vshlq_u64(v477, vzip1q_s64(0, v475)));
        v480 = vpaddq_s64(v478, v475);
        v481 = (v479.i64[0] << v453) | v449;
        if (v480.i64[0] + (v453 & 0x3F) >= 0x40)
        {
          *(v317 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
          v481 = v479.i64[0] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v481 = 0;
          }
        }

        v482 = v480.i64[0] + v453;
        v449 = v481 | (v479.i64[1] << v482);
        if ((v482 & 0x3F) + v480.i64[1] >= 0x40)
        {
          *(v317 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
          v449 = v479.i64[1] >> -(v482 & 0x3F);
          if ((v482 & 0x3F) == 0)
          {
            v449 = 0;
          }
        }

        v453 = v482 + v480.i64[1];
        v467 += 16;
      }

      while (v467 != 64);
      v483 = 0;
      v484.i64[0] = 0xF000F000F000FLL;
      v484.i64[1] = 0xF000F000F000FLL;
      v485.i64[0] = -1;
      v485.i64[1] = -1;
      do
      {
        v486 = vandq_s8(vshlq_u16(v485, vaddq_s16(v561, v484)), *(&v552 + v483));
        v487 = vmovl_u16(*v561.i8);
        v488 = vmovl_high_u16(v561);
        v489 = vpaddq_s32(vshlq_u32(vmovl_u16(*v486.i8), vtrn1q_s32(0, v487)), vshlq_u32(vmovl_high_u16(v486), vtrn1q_s32(0, v488)));
        v490 = vpaddq_s32(v487, v488);
        v491.i64[0] = v489.u32[0];
        v491.i64[1] = v489.u32[1];
        v492 = v491;
        v491.i64[0] = v489.u32[2];
        v491.i64[1] = v489.u32[3];
        v493 = v491;
        v491.i64[0] = v490.u32[0];
        v491.i64[1] = v490.u32[1];
        v494 = v491;
        v491.i64[0] = v490.u32[2];
        v491.i64[1] = v490.u32[3];
        v495 = vpaddq_s64(vshlq_u64(v492, vzip1q_s64(0, v494)), vshlq_u64(v493, vzip1q_s64(0, v491)));
        v496 = vpaddq_s64(v494, v491);
        v497 = (v495.i64[0] << v453) | v449;
        if (v496.i64[0] + (v453 & 0x3F) >= 0x40)
        {
          *(v317 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v497;
          v497 = v495.i64[0] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v497 = 0;
          }
        }

        v498 = v496.i64[0] + v453;
        v449 = v497 | (v495.i64[1] << v498);
        if ((v498 & 0x3F) + v496.i64[1] >= 0x40)
        {
          *(v317 + ((v498 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
          v449 = v495.i64[1] >> -(v498 & 0x3F);
          if ((v498 & 0x3F) == 0)
          {
            v449 = 0;
          }
        }

        v453 = v498 + v496.i64[1];
        v483 += 16;
      }

      while (v483 != 64);
      if ((v453 & 0x3F) != 0)
      {
        *(v317 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      }

      result = (v453 - v318 + 7) >> 3;
      v305 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v305 = 3;
    result = 4;
  }

  *a2 = v305;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
    v9 += result;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
    v9 += result;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v21 & 7);
  v5 = 11;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v20[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 22 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 11;
    do
    {
      v11 = 64 - v6;
      if (64 - v6 >= v10)
      {
        v11 = v10;
      }

      v12 = v11 + v6;
      v2 += v12 >> 6;
      v6 = v12 & 0x3F;
      v10 -= v11;
    }

    while (v10);
    v9 = v6 - v4 + (v2 << 6);
  }

  if (v9 - 23 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v13 = 0;
    v14 = 10;
    do
    {
      v15 = 64 - v6;
      if (64 - v6 >= v14)
      {
        v15 = v14;
      }

      *&v20[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
      v13 += v15;
      v16 = v15 + v6;
      v2 += v16 >> 6;
      v6 = v16 & 0x3F;
      v14 -= v15;
    }

    while (v14);
  }

  v17 = (result + a2);
  *result = 0;
  result[1] = 0;
  v18 = (result + 2 * a2);
  *v17 = 0;
  v17[1] = 0;
  v19 = (result + 2 * a2 + a2);
  *v18 = 0;
  v18[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = v4 | 0x40;
  HIWORD(v9) = 3;
  LOWORD(v9) = v7 & 0x1F;
  WORD1(v9) = (v7 >> 5) & 0x1F;
  WORD2(v9) = (v7 >> 10) & 0x1F;
  v10.i64[0] = 0x3000300030003;
  v10.i64[1] = 0x3000300030003;
  v11.i32[0] = v7 >> 15;
  v11.i32[1] = v7 >> 19;
  v12 = vadd_s32(vand_s8(v11, 0xF0000000FLL), 0x100000001);
  LOWORD(v13) = v12.i16[0];
  WORD1(v13) = v12.i16[2];
  HIDWORD(v13) = (((v7 >> 23) & 0xF) + 1);
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x400;
  v18 = vdupq_lane_s64(v9, 0);
  v19 = vandq_s8(v18, v10);
  v20 = vbicq_s8(vdupq_lane_s64(v13, 0), vceqq_s16(v19, v10));
  v21 = vmovl_s16(vtst_s16(v9, 0x4000400040004));
  v22.i64[0] = 0x202020202020202;
  v22.i64[1] = 0x202020202020202;
  v23 = vandq_s8(v21, v22);
  if (vmaxvq_s8(v23) < 1)
  {
    v31 = 0;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v425 = v50;
    v426 = v50;
    v45 = v20;
    v427 = v50;
  }

  else
  {
    v24 = vmovl_u8(*&vpaddq_s8(v23, v23));
    v25 = vmovl_u16(*&vpaddq_s16(v24, v24));
    v26 = vpaddq_s32(v25, v25).u64[0];
    v27.i64[0] = v26;
    v27.i64[1] = HIDWORD(v26);
    v28 = v27;
    v29 = vaddvq_s64(v27);
    v30 = v29 <= 0x80 && v17 >= v8 + v29;
    v31 = !v30;
    v32 = 0uLL;
    if (v30)
    {
      v33 = vaddq_s64(vdupq_n_s64(v4), vzip1q_s64(0, v28));
      v32 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v33)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v33)));
      if (v4 + v29 >= 0x81)
      {
        v32 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v33)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v33))), v32);
      }

      v8 += v29;
    }

    v34 = vzip1_s32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v35.i64[0] = v34.u32[0];
    v35.i64[1] = v34.u32[1];
    v36 = vshlq_u64(v32, vnegq_s64(v35));
    v37 = vuzp1q_s32(vzip1q_s64(v32, v36), vzip2q_s64(v32, v36));
    v38 = vshlq_u32(v37, vnegq_s32((*&v24 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v39 = vuzp1q_s16(vzip1q_s32(v37, v38), vzip2q_s32(v37, v38));
    v40 = vshlq_u16(v39, vnegq_s16((*&v23 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v41 = vuzp1q_s8(vzip1q_s16(v39, v40), vzip2q_s16(v39, v40));
    v40.i64[0] = 0x101010101010101;
    v40.i64[1] = 0x101010101010101;
    v42 = vshlq_s8(v40, v23);
    v40.i64[0] = -1;
    v40.i64[1] = -1;
    v43 = vqtbl1q_s8(vandq_s8(vaddq_s8(v42, v40), v41), xmmword_29D2F0F70);
    *v42.i8 = vdup_lane_s32(*v43.i8, 0);
    *v40.i8 = vdup_lane_s32(*v43.i8, 1);
    v44 = vdupq_laneq_s32(v43, 2).u64[0];
    v43.i64[0] = vdupq_laneq_s32(v43, 3).u64[0];
    v45 = vsubw_s8(v20, *v42.i8);
    v46 = vsubw_s8(v20, *v40.i8);
    v47 = vsubw_s8(v20, v44);
    v48 = vsubw_s8(v20, *v43.i8);
    v425 = vmovl_s8(vceqz_s8(*v40.i8));
    v426 = vmovl_s8(vceqz_s8(v44));
    v427 = vmovl_s8(vceqz_s8(*v42.i8));
    v49 = vmovl_s8(vceqz_s8(*v43.i8));
  }

  v51.i64[0] = 0x8000800080008;
  v51.i64[1] = 0x8000800080008;
  v52 = 0uLL;
  v428 = vandq_s8(vextq_s8(vtstq_s16(v18, v51), 0, 8uLL), v20);
  v53 = vmovl_u16(*&vpaddq_s16(v428, v428));
  v54 = vpaddq_s32(v53, v53).u64[0];
  v55.i64[0] = v54;
  v55.i64[1] = HIDWORD(v54);
  v56 = v55;
  v57 = vaddvq_s64(v55);
  v58 = v8 + v57;
  if (v57 <= 0x80 && v17 >= v58)
  {
    v60 = v8 & 0x3F;
    v61 = vaddq_s64(vdupq_n_s64(v60), vzip1q_s64(0, v56));
    v62 = (v5 + 8 * (v8 >> 6));
    v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v62, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v61)), vshlq_u64(vdupq_lane_s64(v62->i64[0], 0), vnegq_s64(v61)));
    if (v60 + v57 >= 0x81)
    {
      v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v62[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v61)), vshlq_u64(vdupq_laneq_s64(v62[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v61))), v52);
    }

    v8 = v58;
  }

  else
  {
    v31 = 1;
  }

  v63 = v18.i8[0] & 3;
  if (v63 == 2)
  {
    v64 = v8 + 16;
    if (v17 >= v8 + 8)
    {
      v8 += 8;
    }

    else
    {
      v31 = 1;
      v64 = v8 + 8;
    }

    if (v17 >= v64)
    {
      v8 = v64;
    }

    else
    {
      v31 = 1;
    }
  }

  v65 = 0uLL;
  v420 = vextq_s8(0, v45, 8uLL);
  v66 = vmovl_u16(*&vpaddq_s16(v420, v420));
  v67 = vpaddq_s32(v66, v66).u64[0];
  v68.i64[0] = v67;
  v68.i64[1] = HIDWORD(v67);
  v69 = v68;
  v70 = vaddvq_s64(v68);
  v71 = v8 + v70;
  if (v70 <= 0x80 && v17 >= v71)
  {
    v74 = v8 & 0x3F;
    v75 = vaddq_s64(vdupq_n_s64(v74), vzip1q_s64(0, v69));
    v76 = (v5 + 8 * (v8 >> 6));
    v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v74 + v70 >= 0x81)
    {
      v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v73);
    }

    v8 = v71;
  }

  else
  {
    v31 = 1;
    v73 = 0uLL;
  }

  v421 = v45;
  v77 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v78 = vpaddq_s32(v77, v77).u64[0];
  v79.i64[0] = v78;
  v79.i64[1] = HIDWORD(v78);
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v8 + v81;
  if (v81 <= 0x80 && v17 >= v82)
  {
    v84 = v8 & 0x3F;
    v85 = vaddq_s64(vdupq_n_s64(v84), vzip1q_s64(0, v80));
    v86 = (v5 + 8 * (v8 >> 6));
    v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v84 + v81 >= 0x81)
    {
      v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v65);
    }

    v8 = v82;
  }

  else
  {
    v31 = 1;
  }

  v87 = v8 + v81;
  v88 = 0uLL;
  if (v81 <= 0x80 && v17 >= v87)
  {
    v91 = v8 & 0x3F;
    v92 = vaddq_s64(vdupq_n_s64(v91), vzip1q_s64(0, v80));
    v93 = (v5 + 8 * (v8 >> 6));
    v90 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v92)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v92)));
    if (v91 + v81 >= 0x81)
    {
      v90 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v92)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v92))), v90);
    }

    v8 = v87;
  }

  else
  {
    v31 = 1;
    v90 = 0uLL;
  }

  v94 = v8 + v81;
  if (v81 <= 0x80 && v17 >= v94)
  {
    v96 = v8 & 0x3F;
    v97 = vaddq_s64(vdupq_n_s64(v96), vzip1q_s64(0, v80));
    v98 = (v5 + 8 * (v8 >> 6));
    v88 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v97)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v97)));
    if (v96 + v81 >= 0x81)
    {
      v88 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v97)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v97))), v88);
    }

    v8 = v94;
  }

  else
  {
    v31 = 1;
  }

  v99 = vmovl_u16(*&vpaddq_s16(v46, v46));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v8 + v103;
  v105 = 0uLL;
  if (v103 <= 0x80 && v17 >= v104)
  {
    v108 = v8 & 0x3F;
    v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v102));
    v110 = (v5 + 8 * (v8 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v108 + v103 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v8 = v104;
  }

  else
  {
    v31 = 1;
    v107 = 0uLL;
  }

  v111 = v8 + v103;
  if (v103 <= 0x80 && v17 >= v111)
  {
    v113 = v8 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v102));
    v115 = (v5 + 8 * (v8 >> 6));
    v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v103 >= 0x81)
    {
      v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v105);
    }

    v8 = v111;
  }

  else
  {
    v31 = 1;
  }

  v116 = 0uLL;
  if (v103 > 0x80 || (v117 = v8 + v103, v17 < v8 + v103))
  {
    v31 = 1;
    v117 = v8;
    v121 = 0uLL;
  }

  else
  {
    v118 = v8 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v102));
    v120 = (v5 + 8 * (v8 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v103 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v121);
    }
  }

  if (v103 > 0x80 || (v122 = v117 + v103, v17 < v117 + v103))
  {
    v31 = 1;
    v122 = v117;
  }

  else
  {
    v123 = vaddq_s64(vdupq_n_s64(v117 & 0x3F), vzip1q_s64(0, v102));
    v124 = (v5 + 8 * (v117 >> 6));
    v116 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if ((v117 & 0x3F) + v103 >= 0x81)
    {
      v116 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v116);
    }
  }

  v125 = vmovl_u16(*&vpaddq_s16(v47, v47));
  v126 = vpaddq_s32(v125, v125).u64[0];
  v127.i64[0] = v126;
  v127.i64[1] = HIDWORD(v126);
  v128 = v127;
  v129 = vaddvq_s64(v127);
  v130 = v129;
  v131 = 0uLL;
  if (v129 > 0x80 || (v132 = v122 + v129, v17 < v122 + v129))
  {
    v31 = 1;
    v132 = v122;
    v135 = 0uLL;
  }

  else
  {
    v133 = vaddq_s64(vdupq_n_s64(v122 & 0x3F), vzip1q_s64(0, v128));
    v134 = (v5 + 8 * (v122 >> 6));
    v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v133)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v133)));
    if ((v122 & 0x3F) + v130 >= 0x81)
    {
      v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v133)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v133))), v135);
    }
  }

  if (v130 > 0x80 || (v136 = v132 + v130, v17 < v132 + v130))
  {
    v31 = 1;
    v136 = v132;
  }

  else
  {
    v137 = vaddq_s64(vdupq_n_s64(v132 & 0x3F), vzip1q_s64(0, v128));
    v138 = (v5 + 8 * (v132 >> 6));
    v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if ((v132 & 0x3F) + v130 >= 0x81)
    {
      v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v131);
    }
  }

  v139 = 0uLL;
  if (v130 > 0x80 || (v140 = v136 + v130, v17 < v136 + v130))
  {
    v31 = 1;
    v140 = v136;
    v144 = 0uLL;
  }

  else
  {
    v141 = v136 & 0x3F;
    v142 = vaddq_s64(vdupq_n_s64(v141), vzip1q_s64(0, v128));
    v143 = (v5 + 8 * (v136 >> 6));
    v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
    if (v141 + v130 >= 0x81)
    {
      v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v144);
    }
  }

  if (v130 > 0x80 || (v145 = v140 + v130, v17 < v140 + v130))
  {
    v31 = 1;
    v145 = v140;
  }

  else
  {
    v146 = v140 & 0x3F;
    v147 = vaddq_s64(vdupq_n_s64(v146), vzip1q_s64(0, v128));
    v148 = (v5 + 8 * (v140 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v146 + v130 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v139);
    }
  }

  v149 = vmovl_u16(*&vpaddq_s16(v48, v48));
  v150 = vpaddq_s32(v149, v149).u64[0];
  v151.i64[0] = v150;
  v151.i64[1] = HIDWORD(v150);
  v152 = v151;
  v153 = vaddvq_s64(v151);
  v154 = v153;
  v155 = 0uLL;
  if (v153 > 0x80 || (v156 = v145 + v153, v17 < v145 + v153))
  {
    v31 = 1;
    v156 = v145;
    v160 = 0uLL;
  }

  else
  {
    v157 = v145 & 0x3F;
    v158 = vaddq_s64(vdupq_n_s64(v157), vzip1q_s64(0, v152));
    v159 = (v5 + 8 * (v145 >> 6));
    v160 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v158)));
    if (v157 + v153 >= 0x81)
    {
      v160 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v160);
    }
  }

  v423 = v47;
  v424 = v48;
  v422 = v46;
  if (v153 > 0x80 || (v161 = v156 + v153, v17 < v156 + v153))
  {
    v31 = 1;
    v161 = v156;
  }

  else
  {
    v162 = v156 & 0x3F;
    v163 = vaddq_s64(vdupq_n_s64(v162), vzip1q_s64(0, v152));
    v164 = (v5 + 8 * (v156 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v164, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v163)), vshlq_u64(vdupq_lane_s64(v164->i64[0], 0), vnegq_s64(v163)));
    if (v162 + v153 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v164[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v163)), vshlq_u64(vdupq_laneq_s64(v164[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v163))), v155);
    }
  }

  if (v153 > 0x80 || (v165 = v161 + v153, v17 < v161 + v153))
  {
    v31 = 1;
    v165 = v161;
    v169 = 0uLL;
  }

  else
  {
    v166 = v161 & 0x3F;
    v167 = vaddq_s64(vdupq_n_s64(v166), vzip1q_s64(0, v152));
    v168 = (v5 + 8 * (v161 >> 6));
    v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v168, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v167)), vshlq_u64(vdupq_lane_s64(v168->i64[0], 0), vnegq_s64(v167)));
    if (v166 + v154 >= 0x81)
    {
      v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v168[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v167)), vshlq_u64(vdupq_laneq_s64(v168[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v167))), v169);
    }
  }

  if (v154 > 0x80 || v17 < v165 + v154)
  {
    goto LABEL_136;
  }

  v170 = vaddq_s64(vdupq_n_s64(v165 & 0x3F), vzip1q_s64(0, v152));
  v171 = (v5 + 8 * (v165 >> 6));
  v172 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
  if ((v165 & 0x3F) + v154 >= 0x81)
  {
    v172 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v172);
  }

  if ((v31 & 1) != 0 || v17 + 8 * (a4 + 1) - (v165 + v154) - 1024 >= 9 || v63 == 2)
  {
LABEL_136:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v419 = v18;
    v174 = vzip1_s32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
    v175 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
    v176 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
    v177 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
    v178 = vzip1_s32(*v125.i8, *&vextq_s8(v125, v125, 8uLL));
    v179 = vzip1_s32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
    v180.i64[0] = v174.u32[0];
    v180.i64[1] = v174.u32[1];
    v181 = vshlq_u64(v52, vnegq_s64(v180));
    v182 = vzip2q_s64(v52, v181);
    v413 = vzip1q_s64(v52, v181);
    v180.i64[0] = v175.u32[0];
    v180.i64[1] = v175.u32[1];
    v183 = vshlq_u64(v73, vnegq_s64(v180));
    v411 = vzip2q_s64(v73, v183);
    v184 = vzip1q_s64(v73, v183);
    v180.i64[0] = v176.u32[0];
    v180.i64[1] = v176.u32[1];
    v185 = vnegq_s64(v180);
    v186 = vshlq_u64(v65, v185);
    v187 = vzip2q_s64(v65, v186);
    v188 = vzip1q_s64(v65, v186);
    v189 = vshlq_u64(v90, v185);
    v190 = vzip2q_s64(v90, v189);
    v191 = vzip1q_s64(v90, v189);
    v192 = vshlq_u64(v88, v185);
    v193 = vzip2q_s64(v88, v192);
    v194 = vzip1q_s64(v88, v192);
    v180.i64[0] = v177.u32[0];
    v180.i64[1] = v177.u32[1];
    v195 = vnegq_s64(v180);
    v196 = vshlq_u64(v107, v195);
    v197 = vzip2q_s64(v107, v196);
    v198 = vzip1q_s64(v107, v196);
    v199 = vshlq_u64(v105, v195);
    v200 = vzip2q_s64(v105, v199);
    v201 = vzip1q_s64(v105, v199);
    v202 = vshlq_u64(v121, v195);
    v203 = vzip2q_s64(v121, v202);
    v204 = vzip1q_s64(v121, v202);
    v205 = vshlq_u64(v116, v195);
    v206 = vzip2q_s64(v116, v205);
    v207 = vzip1q_s64(v116, v205);
    v180.i64[0] = v178.u32[0];
    v180.i64[1] = v178.u32[1];
    v208 = vnegq_s64(v180);
    v209 = vshlq_u64(v135, v208);
    v417 = v49;
    v418 = v19;
    v210 = vzip2q_s64(v135, v209);
    v211 = vzip1q_s64(v135, v209);
    v212 = vshlq_u64(v131, v208);
    v213 = vzip2q_s64(v131, v212);
    v214 = vzip1q_s64(v131, v212);
    v215 = vshlq_u64(v144, v208);
    v216 = vzip2q_s64(v144, v215);
    v217 = vzip1q_s64(v144, v215);
    v218 = vshlq_u64(v139, v208);
    v219 = vzip2q_s64(v139, v218);
    v220 = vzip1q_s64(v139, v218);
    v180.i64[0] = v179.u32[0];
    v180.i64[1] = v179.u32[1];
    v416 = vnegq_s64(v180);
    v221 = vshlq_u64(v160, v416);
    v222 = vzip2q_s64(v160, v221);
    v223 = vzip1q_s64(v160, v221);
    v224 = vshlq_u64(v155, v416);
    v225 = vzip2q_s64(v155, v224);
    v226 = vzip1q_s64(v155, v224);
    v227 = vshlq_u64(v169, v416);
    v228 = vzip2q_s64(v169, v227);
    v229 = vzip1q_s64(v169, v227);
    v230 = vuzp1q_s32(v413, v182);
    v231 = vuzp1q_s32(v184, v411);
    v232 = vuzp1q_s32(v188, v187);
    v233 = vuzp1q_s32(v191, v190);
    v234 = vuzp1q_s32(v194, v193);
    v235 = vuzp1q_s32(v198, v197);
    v236 = vuzp1q_s32(v201, v200);
    v237 = vuzp1q_s32(v204, v203);
    v238 = vuzp1q_s32(v207, v206);
    v239 = vuzp1q_s32(v211, v210);
    v240 = vuzp1q_s32(v214, v213);
    v241 = vuzp1q_s32(v217, v216);
    v242 = vuzp1q_s32(v220, v219);
    v243 = vuzp1q_s32(v223, v222);
    v244 = vuzp1q_s32(v226, v225);
    v226.i64[0] = 0xFFFF0000FFFFLL;
    v226.i64[1] = 0xFFFF0000FFFFLL;
    v245 = vuzp1q_s32(v229, v228);
    v246 = vshlq_u32(v230, vnegq_s32(vandq_s8(v428, v226)));
    v412 = vzip1q_s32(v230, v246);
    v414 = vzip2q_s32(v230, v246);
    v246.i64[0] = 0xFFFF0000FFFFLL;
    v246.i64[1] = 0xFFFF0000FFFFLL;
    v247 = vshlq_u32(v231, vnegq_s32(vandq_s8(v420, v246)));
    v410 = vzip2q_s32(v231, v247);
    v248 = vzip1q_s32(v231, v247);
    v249 = vnegq_s32(vandq_s8(v421, v246));
    v250 = vshlq_u32(v232, v249);
    v251 = vzip2q_s32(v232, v250);
    v252 = vzip1q_s32(v232, v250);
    v253 = vshlq_u32(v233, v249);
    v409 = vzip2q_s32(v233, v253);
    v254 = vzip1q_s32(v233, v253);
    v255 = vshlq_u32(v234, v249);
    v407 = vzip1q_s32(v234, v255);
    v408 = vzip2q_s32(v234, v255);
    v255.i64[0] = 0xFFFF0000FFFFLL;
    v255.i64[1] = 0xFFFF0000FFFFLL;
    v256 = vnegq_s32(vandq_s8(v422, v255));
    v257 = vshlq_u32(v235, v256);
    v405 = vzip1q_s32(v235, v257);
    v406 = vzip2q_s32(v235, v257);
    v258 = vshlq_u32(v236, v256);
    v403 = vzip1q_s32(v236, v258);
    v404 = vzip2q_s32(v236, v258);
    v259 = vshlq_u32(v237, v256);
    v402 = vzip2q_s32(v237, v259);
    v260 = vzip1q_s32(v237, v259);
    v261 = vshlq_u32(v238, v256);
    v262 = vzip2q_s32(v238, v261);
    v263 = vzip1q_s32(v238, v261);
    v261.i64[0] = 0xFFFF0000FFFFLL;
    v261.i64[1] = 0xFFFF0000FFFFLL;
    v264 = vnegq_s32(vandq_s8(v423, v261));
    v265 = vshlq_u32(v239, v264);
    v266 = vzip2q_s32(v239, v265);
    v267 = vzip1q_s32(v239, v265);
    v268 = vshlq_u32(v240, v264);
    v269 = vzip2q_s32(v240, v268);
    v270 = vzip1q_s32(v240, v268);
    v271 = vshlq_u32(v241, v264);
    v272 = vzip2q_s32(v241, v271);
    v273 = vzip1q_s32(v241, v271);
    v274 = vshlq_u32(v242, v264);
    v275 = vzip2q_s32(v242, v274);
    v276 = vzip1q_s32(v242, v274);
    v274.i64[0] = 0xFFFF0000FFFFLL;
    v274.i64[1] = 0xFFFF0000FFFFLL;
    v277 = vnegq_s32(vandq_s8(v424, v274));
    v278 = vshlq_u32(v243, v277);
    v279 = vzip2q_s32(v243, v278);
    v280 = vzip1q_s32(v243, v278);
    v281 = vshlq_u32(v244, v277);
    v282 = vzip2q_s32(v244, v281);
    v283 = vzip1q_s32(v244, v281);
    v284 = vshlq_u32(v245, v277);
    v285 = vzip2q_s32(v245, v284);
    v286 = vzip1q_s32(v245, v284);
    v287 = vuzp1q_s16(v412, v414);
    v415 = vuzp1q_s16(v267, v266);
    v288 = vuzp1q_s16(v270, v269);
    v289 = vuzp1q_s16(v273, v272);
    v290 = vuzp1q_s16(v276, v275);
    v291 = vuzp1q_s16(v280, v279);
    v292 = vuzp1q_s16(v283, v282);
    v293 = vuzp1q_s16(v286, v285);
    v285.i64[0] = 0x10001000100010;
    v285.i64[1] = 0x10001000100010;
    v283.i64[0] = 0xF000F000F000FLL;
    v283.i64[1] = 0xF000F000F000FLL;
    v294 = vshlq_s16(v287, vsubq_s16(v285, v428));
    v287.i64[0] = 0x10001000100010;
    v287.i64[1] = 0x10001000100010;
    v295 = vshlq_s16(vuzp1q_s16(v248, v410), vsubq_s16(v287, v420));
    v296 = vsubq_s16(v287, v421);
    v270.i64[0] = 0xF000F000F000FLL;
    v270.i64[1] = 0xF000F000F000FLL;
    v297 = vaddq_s16(v420, v270);
    v298 = vaddq_s16(v421, v270);
    v279.i64[0] = 0x10001000100010;
    v279.i64[1] = 0x10001000100010;
    v299 = vsubq_s16(v279, v422);
    v267.i64[0] = 0xF000F000F000FLL;
    v267.i64[1] = 0xF000F000F000FLL;
    v300 = vaddq_s16(v422, v267);
    v301 = vshlq_s16(vuzp1q_s16(v405, v406), v299);
    v302 = vshlq_s16(vuzp1q_s16(v403, v404), v299);
    v303 = vshlq_s16(vuzp1q_s16(v260, v402), v299);
    v304 = vshlq_s16(vuzp1q_s16(v263, v262), v299);
    v263.i64[0] = 0x10001000100010;
    v263.i64[1] = 0x10001000100010;
    v305 = vsubq_s16(v263, v423);
    v262.i64[0] = 0xF000F000F000FLL;
    v262.i64[1] = 0xF000F000F000FLL;
    v306 = vaddq_s16(v423, v262);
    v307 = vshlq_s16(v415, v305);
    v308 = vshlq_s16(v288, v305);
    v309 = vshlq_s16(v289, v305);
    v310 = vshlq_s16(v290, v305);
    v305.i64[0] = 0x10001000100010;
    v305.i64[1] = 0x10001000100010;
    v311 = vsubq_s16(v305, v424);
    v211.i64[0] = 0xF000F000F000FLL;
    v211.i64[1] = 0xF000F000F000FLL;
    v312 = vaddq_s16(v424, v211);
    v313 = vshlq_s16(v294, vaddq_s16(v428, v283));
    v314 = vshlq_s16(v295, v297);
    v315 = vshlq_s16(vshlq_s16(vuzp1q_s16(v252, v251), v296), v298);
    v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(v254, v409), v296), v298);
    v317 = vshlq_s16(vshlq_s16(vuzp1q_s16(v407, v408), v296), v298);
    v318 = vshlq_s16(v301, v300);
    v319 = vshlq_s16(v302, v300);
    v320 = vshlq_s16(v303, v300);
    v321 = vshlq_s16(v307, v306);
    v322 = vshlq_s16(v308, v306);
    v323 = vshlq_s16(v309, v306);
    v324 = vshlq_u64(v172, v416);
    v325 = vuzp1q_s32(vzip1q_s64(v172, v324), vzip2q_s64(v172, v324));
    v326 = vshlq_u32(v325, v277);
    v327 = vshlq_s16(vshlq_s16(v291, v311), v312);
    v328 = vshlq_s16(vshlq_s16(v292, v311), v312);
    v329 = vshlq_s16(vshlq_s16(v293, v311), v312);
    v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v325, v326), vzip2q_s32(v325, v326)), v311), v312);
    v331 = vaddq_s16(vandq_s8(v313, v427), v314);
    v332 = vdupq_lane_s64(v313.i64[0], 0);
    v333 = vandq_s8(v425, v332);
    v334 = vsubq_s16(v318, v333);
    v335 = vsubq_s16(v319, v333);
    v336 = vsubq_s16(v320, v333);
    v337 = vsubq_s16(vshlq_s16(v304, v300), v333);
    v338 = vandq_s8(v426, v332);
    v339 = vsubq_s16(v321, v338);
    v340 = vsubq_s16(v322, v338);
    v341 = vsubq_s16(v323, v338);
    v342 = vandq_s8(v427, v332);
    v343 = vsubq_s16(vshlq_s16(v310, v306), v338);
    v344 = vandq_s8(v417, v332);
    v345 = vsubq_s16(v327, v344);
    v346 = vsubq_s16(v328, v344);
    v347 = vsubq_s16(v329, v344);
    v348 = vsubq_s16(v330, v344);
    v349.i64[0] = 0x1000100010001;
    v349.i64[1] = 0x1000100010001;
    v350 = vsubq_s16(v315, v342);
    v351 = vsubq_s16(v316, v342);
    v352 = vsubq_s16(v331, v342);
    v353 = vsubq_s16(v317, v342);
    v344.i16[0] = v16 & 0x7FF;
    v344.i16[1] = (v16 >> 11) & 0x7FF;
    v344.i32[1] = v16 >> 22;
    v354 = vdupq_lane_s64(v344.i64[0], 0);
    if (vaddvq_s16(vceqq_s16(v418, v349)))
    {
      v355 = vnegq_s16(vandq_s8(v419, v349));
      v356.i64[0] = v353.i64[0];
      v357.i64[1] = v352.i64[1];
      v356.i64[1] = v352.i64[0];
      v357.i64[0] = v353.i64[1];
      v358 = vbslq_s8(v355, v357, v352);
      v359 = vbslq_s8(v355, v356, v353);
      v357.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v357.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v360 = vandq_s8(vqtbl4q_s8(*(&v350 - 1), v357), v355);
      v429.val[0] = vaddq_s16(v358, vandq_s8(vqtbl4q_s8(*(&v350 - 1), xmmword_29D2F10B0), v355));
      v429.val[1] = vaddq_s16(v350, vandq_s8(vqtbl4q_s8(*(&v350 - 1), xmmword_29D2F10C0), v355));
      v429.val[2] = vaddq_s16(v351, v360);
      v429.val[3] = vaddq_s16(v359, v360);
      v361 = vandq_s8(vqtbl4q_s8(v429, v357), v355);
      v352 = vaddq_s16(v429.val[0], vandq_s8(vqtbl4q_s8(v429, xmmword_29D2F10D0), v355));
      v350 = vaddq_s16(v429.val[1], vandq_s8(vqtbl4q_s8(v429, xmmword_29D2F10E0), v355));
      v351 = vaddq_s16(v429.val[2], v361);
      v353 = vaddq_s16(v429.val[3], v361);
      v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10B0), v355), v334);
      v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F10F0), v355), v335);
      v430.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v334.i8, v357), v355), v336);
      v430.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v334.i8, xmmword_29D2F1100), v355), v337);
      v362 = vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F10D0), v355);
      v429.val[0] = vandq_s8(vqtbl4q_s8(v430, v357), v355);
      v334 = vaddq_s16(v362, v430.val[0]);
      v335 = vaddq_s16(v430.val[1], v362);
      v336 = vaddq_s16(v430.val[2], v429.val[0]);
      v337 = vaddq_s16(v430.val[3], v429.val[0]);
      v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F0EB0), v355), v339);
      v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F0FB0), v355), v340);
      v430.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10B0), v355), v341);
      v430.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10C0), v355), v343);
      v429.val[1] = vandq_s8(vqtbl4q_s8(v430, v357), v355);
      v339 = vaddq_s16(v430.val[0], v429.val[1]);
      v340 = vaddq_s16(v430.val[1], v429.val[1]);
      v341 = vaddq_s16(v430.val[2], vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F0FE0), v355));
      v343 = vaddq_s16(v430.val[3], vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F1110), v355));
      v429.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F0EB0), v355), v345);
      v429.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1120), v355), v346);
      v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v355), v347);
      v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10C0), v355), v348);
      v363 = vandq_s8(vqtbl4q_s8(*(&v429 + 32), v357), v355);
      v345 = vaddq_s16(v429.val[2], v363);
      v346 = vaddq_s16(v429.val[3], v363);
      v347 = vaddq_s16(v430.val[0], vandq_s8(vqtbl4q_s8(*(&v429 + 32), xmmword_29D2F0FE0), v355));
      v348 = vaddq_s16(v430.val[1], vandq_s8(vqtbl4q_s8(*(&v429 + 32), xmmword_29D2F1130), v355));
    }

    v364 = vaddq_s16(v352, v354);
    v365 = vaddq_s16(v350, v354);
    v366 = vaddq_s16(v351, v354);
    v367 = vaddq_s16(v353, v354);
    v368 = vaddq_s16(v334, v354);
    v369 = vaddq_s16(v335, v354);
    v370 = vaddq_s16(v336, v354);
    v371 = vaddq_s16(v337, v354);
    v372 = vaddq_s16(v339, v354);
    v373 = vaddq_s16(v340, v354);
    v374 = vaddq_s16(v341, v354);
    v375 = vaddq_s16(v343, v354);
    v376 = vaddq_s16(v345, v354);
    v377 = vaddq_s16(v346, v354);
    v378 = vaddq_s16(v347, v354);
    v379 = vaddq_s16(v348, v354);
    v380.i64[0] = 0x10001000100010;
    v380.i64[1] = 0x10001000100010;
    v381 = vceqzq_s16(vandq_s8(v419, v380));
    v382.i64[0] = 0xFFFF00000000;
    v382.i64[1] = 0xFFFF00000000;
    v383 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v364, xmmword_29D2F1140), v382), v381), v364);
    v384 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v365, xmmword_29D2F1140), v382), v381), v365);
    v385 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v366, xmmword_29D2F1140), v382), v381), v366);
    v386 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v367, xmmword_29D2F1140), v382), v381), v367);
    v387 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v368, xmmword_29D2F1140), v382), v381), v368);
    v388 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v369, xmmword_29D2F1140), v382), v381), v369);
    v389 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v370, xmmword_29D2F1140), v382), v381), v370);
    v390 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v371, xmmword_29D2F1140), v382), v381), v371);
    v391 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v372, xmmword_29D2F1140), v382), v381), v372);
    v392 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v373, xmmword_29D2F1140), v382), v381), v373);
    v393 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v374, xmmword_29D2F1140), v382), v381), v374);
    v394 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v375, xmmword_29D2F1140), v382), v381), v375);
    v395 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v376, xmmword_29D2F1140), v382), v381), v376);
    v396 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v377, xmmword_29D2F1140), v382), v381), v377);
    v377.i64[0] = 0x3F0000003FLL;
    v377.i64[1] = 0x3F0000003FLL;
    v397 = (a1 + a2);
    *a1 = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v383, 0xAuLL), v384, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v383, 5uLL), v384, 5uLL), vuzp1q_s32(v383, v384)));
    a1[1] = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v387, 0xAuLL), v388, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v387, 5uLL), v388, 5uLL), vuzp1q_s32(v387, v388)));
    v398 = (a1 + 2 * a2);
    *v397 = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v385, 0xAuLL), v386, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v385, 5uLL), v386, 5uLL), vuzp1q_s32(v385, v386)));
    v397[1] = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v389, 0xAuLL), v390, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v389, 5uLL), v390, 5uLL), vuzp1q_s32(v389, v390)));
    v399 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v378, xmmword_29D2F1140), v382), v381), v378);
    v400 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v379, xmmword_29D2F1140), v382), v381), v379);
    *v398 = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v391, 0xAuLL), v392, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v391, 5uLL), v392, 5uLL), vuzp1q_s32(v391, v392)));
    v398[1] = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v395, 0xAuLL), v396, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v395, 5uLL), v396, 5uLL), vuzp1q_s32(v395, v396)));
    v401 = (v398 + a2);
    *v401 = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v393, 0xAuLL), v394, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v393, 5uLL), v394, 5uLL), vuzp1q_s32(v393, v394)));
    v401[1] = vbslq_s8(v377, vshrn_high_n_s64(vshrn_n_s64(v399, 0xAuLL), v400, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v399, 5uLL), v400, 5uLL), vuzp1q_s32(v399, v400)));
    return a4 + 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = (a3 + 2 * a4);
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v11 = *v6;
  v12 = v6[1];
  v10 = (v6 + a4);
  v13.i64[0] = a3->u32[0];
  v13.i64[1] = HIDWORD(a3->i64[0]);
  v14 = v13;
  v13.i64[0] = a3->i64[1];
  v13.i64[1] = HIDWORD(*a3);
  v15 = vbslq_s8(xmmword_29D2F1340, v14, 0);
  v16 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v17 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v18 = vbslq_s8(xmmword_29D2F1340, v17, 0);
  v19 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v20 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v21 = vbslq_s8(xmmword_29D2F1340, v20, 0);
  v22 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v23 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v24 = vbslq_s8(xmmword_29D2F1340, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v11.u32[0];
  v13.i64[1] = v11.u32[1];
  v26 = v13;
  v13.i64[0] = v11.u32[2];
  v13.i64[1] = v11.u32[3];
  v27 = vbslq_s8(xmmword_29D2F1340, v26, 0);
  v28 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v524 = *v10;
  v525 = v10[1];
  v13.i64[0] = v10->u32[0];
  v13.i64[1] = HIDWORD(v10->i64[0]);
  v29 = v13;
  v13.i64[0] = v10->i64[1];
  v13.i64[1] = HIDWORD(*v10);
  v30 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v31 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v12.u32[2];
  v13.i64[1] = v12.u32[3];
  v32 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v525.u32[0];
  v13.i64[1] = v525.u32[1];
  v33 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v10[1].i64[1];
  v13.i64[1] = v525.u32[3];
  v514 = *a3;
  v515 = v7;
  v512 = v8;
  v513 = v9;
  v34 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3->i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*a3->i8, 5uLL), v15));
  v35 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(*a3, 5uLL), v16));
  v36 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v7.i8, 5uLL), v21));
  v37 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v7, 5uLL), v22));
  v38 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v9.i8, 5uLL), v24));
  v526 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v11.i8, 5uLL), v27));
  v528 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v11, 5uLL), v28));
  v529 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10->i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v10->i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v29, 0)));
  v39 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*v10, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(*v10, 5uLL), v30));
  v40 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v12.i8, 5uLL), v31));
  v41 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v12, 5uLL), v32));
  v42 = vdupq_lane_s64(v34.i64[0], 0);
  v530 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v532 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v523.val[0] = v34;
  v523.val[1] = v35;
  v523.val[2] = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v8.i8, 5uLL), v18));
  v523.val[3] = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v8, 5uLL), v19));
  v43 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[2], v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v44 = vminq_s16(vminq_s16(v530, v532), v43);
  v534 = v43;
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[3], v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v45 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530, v532), v43), v536), xmmword_29D2F1150);
  v46 = vqtbl1q_s8(vminq_s16(v44, v536), xmmword_29D2F1150);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vzip1q_s16(v47, v48);
  v18.i64[0] = 0x10001000100010;
  v18.i64[1] = 0x10001000100010;
  v50 = vbicq_s8(vsubq_s16(v18, vclsq_s16(v49)), vceqzq_s16(v49));
  v538 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v539 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v516 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v9, 5uLL), v25));
  v51 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v52 = vminq_s16(vminq_s16(v538, v539), v51);
  v540 = v51;
  v541 = vshlq_s16(vshlq_s16(vsubq_s16(v516, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v7.i64[0] = 0x8000800080008000;
  v7.i64[1] = 0x8000800080008000;
  v53 = vmaxq_s16(v47, v7);
  v7.i64[0] = 0x8000800080008000;
  v7.i64[1] = 0x8000800080008000;
  v54 = vminq_s16(v48, v7);
  v55 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v538, v539), v51), v541), xmmword_29D2F1150);
  v56 = vqtbl1q_s8(vminq_s16(v52, v541), xmmword_29D2F1150);
  v57 = vpmaxq_s16(v55, v55);
  v58 = vpminq_s16(v56, v56);
  v59 = vmaxq_s16(v53, v57);
  v60 = vminq_s16(v54, v58);
  v61 = vzip1q_s16(v57, v58);
  v62 = vbicq_s8(vsubq_s16(v18, vclsq_s16(v61)), vceqzq_s16(v61));
  v542 = vshlq_s16(vshlq_s16(vsubq_s16(v526, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v528, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v522 = v39;
  v63 = vshlq_s16(vshlq_s16(vsubq_s16(v529, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v64 = vminq_s16(vminq_s16(v542, v543), v63);
  v544 = v63;
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v39, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v65 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v542, v543), v63), v545), xmmword_29D2F1150);
  v66 = vqtbl1q_s8(vminq_s16(v64, v545), xmmword_29D2F1150);
  v67 = vpmaxq_s16(v65, v65);
  v68 = vpminq_s16(v66, v66);
  v69 = vmaxq_s16(v59, v67);
  v70 = vminq_s16(v60, v68);
  v71 = vzip1q_s16(v67, v68);
  v72 = vbicq_s8(vsubq_s16(v18, vclsq_s16(v71)), vceqzq_s16(v71));
  v546 = vshlq_s16(vshlq_s16(vsubq_s16(v40, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v41, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v550 = v42;
  v517 = v40;
  v518 = v41;
  v519 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v525.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v525.i8, 5uLL), v33));
  v521 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v525, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v525, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v519, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v521, v42), xmmword_29D2F1360), xmmword_29D2F1370);
  v73 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v546, v547), v548), v549), xmmword_29D2F1150);
  v74 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v546, v547), v548), v549), xmmword_29D2F1150);
  v75 = vpmaxq_s16(v73, v73);
  v76 = vpminq_s16(v74, v74);
  v77 = vmaxq_s16(v69, v75);
  v78 = vminq_s16(v70, v76);
  v79 = vzip1q_s16(v75, v76);
  v80 = vbicq_s8(vsubq_s16(v18, vclsq_s16(v79)), vceqzq_s16(v79));
  v81 = vpmaxq_s16(v50, v50);
  v82 = vpmaxq_s16(v62, v62);
  v83 = vpmaxq_s16(v72, v72);
  v84 = vpmaxq_s16(v80, v80);
  v85 = vmaxq_s16(vmaxq_s16(v81, v82), vmaxq_s16(v83, v84));
  v86 = vclzq_s16(vsubq_s16(v77, v78));
  v34.i64[0] = 0xF000F000F000FLL;
  v34.i64[1] = 0xF000F000F000FLL;
  v35.i64[0] = -1;
  v35.i64[1] = -1;
  v558 = v77;
  v557 = v78;
  v87 = vsubq_s16(vshlq_s16(v35, vsubq_s16(v34, v86)), v78);
  v88 = vsubq_s16(v18, v86);
  v89 = vcgtq_s16(v85, v88);
  v90 = vminq_s16(v88, v85);
  v559 = vandq_s8(v87, v89);
  v85.i64[0] = 0x8000800080008;
  v85.i64[1] = 0x8000800080008;
  v91 = vorrq_s8(vandq_s8(v89, v85), 0);
  v85.i64[0] = 0x3000300030003;
  v85.i64[1] = 0x3000300030003;
  v92 = vorrq_s8(vandq_s8(vceqzq_s16(v90), v85), v91);
  v93 = vmaxq_s16(vminq_s16(vsubq_s16(v90, v82), v85), 0);
  v94 = vmaxq_s16(vminq_s16(vsubq_s16(v90, v83), v85), 0);
  v553 = vsubq_s16(v90, v93);
  v554 = vsubq_s16(v90, v94);
  v95 = vmaxq_s16(vminq_s16(vsubq_s16(v90, v84), v85), 0);
  v555 = vsubq_s16(v90, v95);
  v96 = vaddq_s16(v95, v94);
  v556 = v90;
  v97 = vmaxq_s16(vminq_s16(vsubq_s16(v90, v81), v85), 0);
  v85.i64[0] = 0x4000400040004;
  v85.i64[1] = 0x4000400040004;
  v98 = vorrq_s8(vbicq_s8(v85, vceqq_s16(v96, vnegq_s16(vaddq_s16(v97, v93)))), v92);
  v552 = vsubq_s16(v90, v97);
  v551 = v98;
  if (vmaxvq_s16(v90))
  {
    v510 = v11;
    v511 = v12;
    v506 = v98;
    v99.i64[0] = 0xFFFF00000000;
    v99.i64[1] = 0xFFFF00000000;
    v100 = vsubq_s16(v550, vshlq_s16(vqtbl1q_s8(v550, xmmword_29D2F1140), v99));
    v101.i64[0] = 0x10001000100010;
    v101.i64[1] = 0x10001000100010;
    v507 = v36;
    v508 = v37;
    v509 = v38;
    v505 = v92;
    v102 = v40;
    v103 = v41;
    v104 = v519;
    v105 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[0], vaddq_s16(vshlq_s16(vqtbl1q_s8(v523.val[0], xmmword_29D2F1140), v99), v100)), xmmword_29D2F1360), xmmword_29D2F1370);
    v106 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[1], vaddq_s16(vshlq_s16(vqtbl1q_s8(v523.val[1], xmmword_29D2F1140), v99), v100)), xmmword_29D2F1360), xmmword_29D2F1370);
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[2], vaddq_s16(vshlq_s16(vqtbl1q_s8(v523.val[2], xmmword_29D2F1140), v99), v100)), xmmword_29D2F1360), xmmword_29D2F1370);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v523.val[3], vaddq_s16(vshlq_s16(vqtbl1q_s8(v523.val[3], xmmword_29D2F1140), v99), v100)), xmmword_29D2F1360), xmmword_29D2F1370);
    v109 = v552;
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v36, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v36, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v37, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v37, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v38, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v38, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v516, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v526, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v528, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v116 = vshlq_s16(vshlq_s16(vsubq_s16(v39, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v39, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v117 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v517, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v118 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v519, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v119 = vshlq_s16(vshlq_s16(vsubq_s16(v521, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v521, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v120 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v105, v106), v107), v108);
    v494 = v106;
    v495 = v108;
    v496 = v107;
    v121 = vminq_s16(vminq_s16(v105, v106), v107);
    v122 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v518, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v123 = vminq_s16(v121, v108);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v529, vaddq_s16(v100, vshlq_s16(vqtbl1q_s8(v529, xmmword_29D2F1140), v99))), xmmword_29D2F1360), xmmword_29D2F1370);
    v125 = vqtbl1q_s8(v120, xmmword_29D2F1150);
    v126 = vqtbl1q_s8(v123, xmmword_29D2F1150);
    v127 = vpmaxq_s16(v125, v125);
    v128 = vpminq_s16(v126, v126);
    v129.i64[0] = 0x8000800080008000;
    v129.i64[1] = 0x8000800080008000;
    v130 = vmaxq_s16(v127, v129);
    v99.i64[0] = 0x8000800080008000;
    v99.i64[1] = 0x8000800080008000;
    v131 = vminq_s16(v128, v99);
    v132 = vzip1q_s16(v127, v128);
    v133 = vbicq_s8(vsubq_s16(v101, vclsq_s16(v132)), vceqzq_s16(v132));
    v134 = vpmaxq_s16(v133, v133);
    v499 = v110;
    v500 = v113;
    v501 = v112;
    v135 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v110, v111), v112), v113), xmmword_29D2F1150);
    v136 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v110, v111), v112), v113), xmmword_29D2F1150);
    v137 = vpmaxq_s16(v135, v135);
    v138 = vpminq_s16(v136, v136);
    v139 = vmaxq_s16(v130, v137);
    v140 = vminq_s16(v131, v138);
    v141 = vzip1q_s16(v137, v138);
    v142 = vbicq_s8(vsubq_s16(v101, vclsq_s16(v141)), vceqzq_s16(v141));
    v143 = vpmaxq_s16(v142, v142);
    v502 = v115;
    v503 = v114;
    v504 = v116;
    v144 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v114, v115), v124), v116), xmmword_29D2F1150);
    v145 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v114, v115), v124), v116), xmmword_29D2F1150);
    v146 = vpmaxq_s16(v144, v144);
    v147 = vpminq_s16(v145, v145);
    v148 = vmaxq_s16(v139, v146);
    v149 = vminq_s16(v140, v147);
    v150 = vzip1q_s16(v146, v147);
    v151 = vbicq_s8(vsubq_s16(v101, vclsq_s16(v150)), vceqzq_s16(v150));
    v152 = vpmaxq_s16(v151, v151);
    v153 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v117, v122), v118), v119), xmmword_29D2F1150);
    v154 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v117, v122), v118), v119), xmmword_29D2F1150);
    v155 = vpmaxq_s16(v153, v153);
    v156 = vpminq_s16(v154, v154);
    v157 = vmaxq_s16(v148, v155);
    v158 = vminq_s16(v149, v156);
    v159 = vzip1q_s16(v155, v156);
    v160 = vbicq_s8(vsubq_s16(v101, vclsq_s16(v159)), vceqzq_s16(v159));
    v161 = vpmaxq_s16(v160, v160);
    v162 = vmaxq_s16(vmaxq_s16(v134, v143), vmaxq_s16(v152, v161));
    v497 = v118;
    v498 = v157;
    v163 = v158;
    v164 = vclzq_s16(vsubq_s16(v157, v158));
    v165 = vsubq_s16(v101, v164);
    v166 = vcgtq_s16(v162, v165);
    v167 = vminq_s16(v165, v162);
    v157.i64[0] = 0x3000300030003;
    v157.i64[1] = 0x3000300030003;
    v168 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v134), v157), 0);
    v169 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v143), v157), 0);
    v170 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v152), v157), 0);
    v171 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v161), v157), 0);
    v152.i64[0] = 0x4000400040004;
    v152.i64[1] = 0x4000400040004;
    v172 = vbicq_s8(v152, vceqq_s16(vaddq_s16(v171, v170), vnegq_s16(vaddq_s16(v168, v169))));
    v152.i64[0] = 0x18001800180018;
    v152.i64[1] = 0x18001800180018;
    v173 = vbslq_s8(v166, v152, v101);
    v174 = vsubq_s16(v167, v171);
    v492 = vsubq_s16(v167, v169);
    v493 = vsubq_s16(v167, v170);
    v169.i64[0] = 0x7000700070007;
    v169.i64[1] = 0x7000700070007;
    v491 = vsubq_s16(v167, v168);
    v175 = v506;
    v112.i64[0] = 0x8000800080008;
    v112.i64[1] = 0x8000800080008;
    v176 = vandq_s8(vaddq_s16(v175, v175), v112);
    v177 = vandq_s8(v505, v112);
    v112.i64[0] = 0x2000200020002;
    v112.i64[1] = 0x2000200020002;
    v178 = vceqzq_s16(v177);
    v179 = v556;
    v180 = v555;
    v181 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v556, v178), vandq_s8(vceqq_s16(vandq_s8(v505, v157), v112), v101)), v176), v552, v169);
    v182 = v553;
    v183 = v554;
    v184 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v181, vshlq_n_s16(vaddq_s16(vaddq_s16(v554, v553), v555), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v167, vceqzq_s16((*&v173 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v172, v172)), v491, v169), vshlq_n_s16(vaddq_s16(vaddq_s16(v493, v492), v174), 3uLL))).i64[0], 0);
    v185 = vaddvq_s16(v184);
    v187 = a5 < 2 || a6 < 2;
    if (v185)
    {
      v188.i64[0] = 0x3000300030003;
      v188.i64[1] = 0x3000300030003;
      v189 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v167), v188), v173), v172);
      v190.i64[0] = 0xF000F000F000FLL;
      v190.i64[1] = 0xF000F000F000FLL;
      v191 = vsubq_s16(v190, v164);
      v530 = vbslq_s8(v184, v105, v530);
      v532 = vbslq_s8(v184, v494, v532);
      v190.i64[0] = -1;
      v190.i64[1] = -1;
      v534 = vbslq_s8(v184, v496, v534);
      v536 = vbslq_s8(v184, v495, v536);
      v538 = vbslq_s8(v184, v499, v538);
      v539 = vbslq_s8(v184, v111, v539);
      v540 = vbslq_s8(v184, v501, v540);
      v541 = vbslq_s8(v184, v500, v541);
      v542 = vbslq_s8(v184, v503, v542);
      v543 = vbslq_s8(v184, v502, v543);
      v544 = vbslq_s8(v184, v124, v544);
      v545 = vbslq_s8(v184, v504, v545);
      v546 = vbslq_s8(v184, v117, v546);
      v547 = vbslq_s8(v184, v122, v547);
      v548 = vbslq_s8(v184, v497, v548);
      v549 = vbslq_s8(v184, v119, v549);
      v109 = vbslq_s8(v184, v491, v552);
      v182 = vbslq_s8(v184, v492, v553);
      v552 = v109;
      v553 = v182;
      v183 = vbslq_s8(v184, v493, v554);
      v180 = vbslq_s8(v184, v174, v555);
      v554 = v183;
      v555 = v180;
      v558 = vbslq_s8(v184, v498, v558);
      v559 = vbslq_s8(v184, vandq_s8(vsubq_s16(vshlq_s16(v190, v191), v163), v166), v559);
      v179 = vbslq_s8(v184, v167, v556);
      v557 = vbslq_s8(v184, v163, v557);
      v556 = v179;
      v175 = vbslq_s8(v184, v189, v551);
      v550 = vbslq_s8(v184, v100, v550);
      v551 = v175;
    }

    v192 = v507;
    v193 = v508;
    v194 = v509;
    v195 = v523.val[0];
    v196 = v523.val[1];
    v197 = v523.val[2];
    v198 = v523.val[3];
    if (!v187)
    {
      v199 = vqtbl4q_s8(*v195.i8, xmmword_29D2F10B0);
      v200 = vqtbl4q_s8(*v195.i8, xmmword_29D2F10C0);
      v201 = vqtbl4q_s8(v523, xmmword_29D2F1160);
      v202 = vsubq_s16(v523.val[0], v199);
      v203 = vsubq_s16(v523.val[1], v200);
      v204 = vsubq_s16(v523.val[2], v201);
      v205 = vsubq_s16(v523.val[3], v201);
      v206 = v516.i64[0];
      v207 = v523.val[3].i64[1];
      v208 = vsubq_s16(v507, vqtbl4q_s8(*v192.i8, xmmword_29D2F10B0));
      v209 = vsubq_s16(v508, vqtbl4q_s8(*v192.i8, xmmword_29D2F10F0));
      v210 = vsubq_s16(v509, vqtbl4q_s8(*v192.i8, xmmword_29D2F1160));
      v211 = vsubq_s16(v516, vqtbl4q_s8(*v192.i8, xmmword_29D2F1100));
      v560.val[0] = v526;
      v560.val[1] = v528;
      v560.val[2] = v529;
      v560.val[3].i64[0] = v522.i64[0];
      v560.val[3].i64[1] = v523.val[3].i64[1];
      v212 = vsubq_s16(v526, vqtbl4q_s8(v560, xmmword_29D2F1170));
      v213 = v521.i64[0];
      v214 = v523.val[3].i64[1];
      v215.i64[0] = v205.i64[0];
      v215.i64[1] = v202.i64[0];
      v202.i64[0] = v205.i64[1];
      v216 = vshlq_s16(vsubq_s16(v528, vqtbl4q_s8(v560, xmmword_29D2F1180)), xmmword_29D2F1360);
      v217 = vshlq_s16(vsubq_s16(v529, vqtbl4q_s8(v560, xmmword_29D2F10B0)), xmmword_29D2F1360);
      v218 = vshlq_s16(vsubq_s16(v522, vqtbl4q_s8(v560, xmmword_29D2F10C0)), xmmword_29D2F1360);
      v219 = vshlq_s16(vsubq_s16(v519, vqtbl4q_s8(*v102.i8, xmmword_29D2F10B0)), xmmword_29D2F1360);
      v220 = vshlq_s16(vsubq_s16(v521, vqtbl4q_s8(*v102.i8, xmmword_29D2F10C0)), xmmword_29D2F1360);
      v221 = vshlq_s16(vshlq_s16(v202, xmmword_29D2F1360), xmmword_29D2F1370);
      v222 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F1360), xmmword_29D2F1370);
      v223 = vshlq_s16(vshlq_s16(v204, xmmword_29D2F1360), xmmword_29D2F1370);
      v224 = vshlq_s16(vshlq_s16(v215, xmmword_29D2F1360), xmmword_29D2F1370);
      v225 = vshlq_s16(vshlq_s16(v208, xmmword_29D2F1360), xmmword_29D2F1370);
      v226 = vshlq_s16(vshlq_s16(v209, xmmword_29D2F1360), xmmword_29D2F1370);
      v227 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F1360), xmmword_29D2F1370);
      v228 = vshlq_s16(vshlq_s16(v211, xmmword_29D2F1360), xmmword_29D2F1370);
      v229 = vshlq_s16(vshlq_s16(v212, xmmword_29D2F1360), xmmword_29D2F1370);
      v230 = vshlq_s16(v216, xmmword_29D2F1370);
      v231 = vshlq_s16(v217, xmmword_29D2F1370);
      v232 = vshlq_s16(v218, xmmword_29D2F1370);
      v233 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl4q_s8(*v102.i8, xmmword_29D2F1170)), xmmword_29D2F1360), xmmword_29D2F1370);
      v234 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl4q_s8(*v102.i8, xmmword_29D2F1120)), xmmword_29D2F1360), xmmword_29D2F1370);
      v235 = vshlq_s16(v219, xmmword_29D2F1370);
      v236 = vshlq_s16(v220, xmmword_29D2F1370);
      v237 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v238 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v239 = vpmaxq_s16(v237, v237);
      v240 = vpminq_s16(v238, v238);
      v203.i64[0] = 0x8000800080008000;
      v203.i64[1] = 0x8000800080008000;
      v241 = vmaxq_s16(v239, v203);
      v203.i64[0] = 0x8000800080008000;
      v203.i64[1] = 0x8000800080008000;
      v242 = vminq_s16(v240, v203);
      v243 = vzip1q_s16(v239, v240);
      v204.i64[0] = 0x10001000100010;
      v204.i64[1] = 0x10001000100010;
      v244 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v243)), vceqzq_s16(v243));
      v245 = vpmaxq_s16(v244, v244);
      v246 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v225, v226), v227), v228), xmmword_29D2F1150);
      v247 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v225, v226), v227), v228), xmmword_29D2F1150);
      v248 = vpmaxq_s16(v246, v246);
      v249 = vpminq_s16(v247, v247);
      v250 = vmaxq_s16(v241, v248);
      v251 = vminq_s16(v242, v249);
      v252 = vzip1q_s16(v248, v249);
      v253 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v252)), vceqzq_s16(v252));
      v254 = vpmaxq_s16(v253, v253);
      v255 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v229, v230), v231), v232), xmmword_29D2F1150);
      v256 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v229, v230), v231), v232), xmmword_29D2F1150);
      v257 = vpmaxq_s16(v255, v255);
      v258 = vpminq_s16(v256, v256);
      v259 = vmaxq_s16(v250, v257);
      v260 = vminq_s16(v251, v258);
      v261 = vzip1q_s16(v257, v258);
      v262 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v261)), vceqzq_s16(v261));
      v263 = vpmaxq_s16(v262, v262);
      v264 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v233, v234), v235), v236), xmmword_29D2F1150);
      v265 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v233, v234), v235), v236), xmmword_29D2F1150);
      v266 = vpmaxq_s16(v264, v264);
      v267 = vpminq_s16(v265, v265);
      v268 = vmaxq_s16(v259, v266);
      v269 = vminq_s16(v260, v267);
      v270 = vzip1q_s16(v266, v267);
      v271 = vbicq_s8(vsubq_s16(v204, vclsq_s16(v270)), vceqzq_s16(v270));
      v272 = vpmaxq_s16(v271, v271);
      v273 = vmaxq_s16(vmaxq_s16(v245, v254), vmaxq_s16(v263, v272));
      v527 = v268;
      v274 = vclzq_s16(vsubq_s16(v268, v269));
      v275 = vsubq_s16(v204, v274);
      v276 = vcgtq_s16(v273, v275);
      v277 = vminq_s16(v275, v273);
      v273.i64[0] = 0x3000300030003;
      v273.i64[1] = 0x3000300030003;
      v278 = vmaxq_s16(vminq_s16(vsubq_s16(v277, v245), v273), 0);
      v279 = vmaxq_s16(vminq_s16(vsubq_s16(v277, v254), v273), 0);
      v280 = vmaxq_s16(vminq_s16(vsubq_s16(v277, v263), v273), 0);
      v281 = vmaxq_s16(vminq_s16(vsubq_s16(v277, v272), v273), 0);
      v282 = vsubq_s16(v277, v278);
      v283 = vsubq_s16(v277, v279);
      v284 = vsubq_s16(v277, v281);
      v285 = vceqq_s16(vaddq_s16(v281, v280), vnegq_s16(vaddq_s16(v278, v279)));
      v281.i64[0] = 0x4000400040004;
      v281.i64[1] = 0x4000400040004;
      v286 = vbicq_s8(v281, v285);
      v279.i64[0] = 0x7000700070007;
      v279.i64[1] = 0x7000700070007;
      v520 = vsubq_s16(v277, v280);
      v109 = v552;
      v287.i64[0] = 0x2000200020002;
      v287.i64[1] = 0x2000200020002;
      v288 = vandq_s8(vceqq_s16(vandq_s8(v551, v273), v287), v204);
      v204.i64[0] = 0x8000800080008;
      v204.i64[1] = 0x8000800080008;
      v289 = vandq_s8(vaddq_s16(v551, v551), v204);
      v290 = vceqzq_s16(vandq_s8(v551, v204));
      v179 = v556;
      v180 = v555;
      v291 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v556, v290), v289), v288), v552, v279);
      v182 = v553;
      v183 = v554;
      v292 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v291, vshlq_n_s16(vaddq_s16(vaddq_s16(v554, v553), v555), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v277, v276), vaddq_s16(v286, v286)), v282, v279), vshlq_n_s16(vaddq_s16(vaddq_s16(v520, v283), v284), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v292))
      {
        v293.i64[0] = 0x9000900090009;
        v293.i64[1] = 0x9000900090009;
        v294 = vorrq_s8(vandq_s8(vceqzq_s16(v277), v287), vsubq_s16(vandq_s8(v276, v293), vmvnq_s8(v276)));
        v293.i64[0] = -1;
        v293.i64[1] = -1;
        v295 = vorrq_s8(v294, v286);
        v294.i64[0] = 0xF000F000F000FLL;
        v294.i64[1] = 0xF000F000F000FLL;
        v296 = vandq_s8(vsubq_s16(vshlq_s16(v293, vsubq_s16(v294, v274)), v269), v276);
        v109 = vbslq_s8(v292, v282, v552);
        v182 = vbslq_s8(v292, v283, v553);
        v183 = vbslq_s8(v292, v520, v554);
        v180 = vbslq_s8(v292, v284, v555);
        v179 = vbslq_s8(v292, v277, v556);
        v175 = vbslq_s8(v292, v295, v551);
        v550 = vbslq_s8(v292, vextq_s8(v523.val[3], v523.val[3], 8uLL), v550);
        v530 = vbslq_s8(v292, v221, v530);
        v532 = vbslq_s8(v292, v222, v532);
        v534 = vbslq_s8(v292, v223, v534);
        v536 = vbslq_s8(v292, v224, v536);
        v538 = vbslq_s8(v292, v225, v538);
        v539 = vbslq_s8(v292, v226, v539);
        v540 = vbslq_s8(v292, v227, v540);
        v541 = vbslq_s8(v292, v228, v541);
        v542 = vbslq_s8(v292, v229, v542);
        v543 = vbslq_s8(v292, v230, v543);
        v544 = vbslq_s8(v292, v231, v544);
        v545 = vbslq_s8(v292, v232, v545);
        v546 = vbslq_s8(v292, v233, v546);
        v547 = vbslq_s8(v292, v234, v547);
        v548 = vbslq_s8(v292, v235, v548);
        v549 = vbslq_s8(v292, v236, v549);
        v557 = vbslq_s8(v292, v269, v557);
        v558 = vbslq_s8(v292, v527, v558);
        v559 = vbslq_s8(v292, v296, v559);
        v552 = v109;
        v553 = v182;
        v554 = v183;
        v555 = v180;
        v556 = v179;
        v551 = v175;
      }

      else
      {
        v175 = v551;
      }
    }

    v299 = vandq_s8(v559, vceqq_s16(v179, v109));
    v531 = vaddq_s16(v299, v530);
    v533 = vaddq_s16(v532, v299);
    v535 = vaddq_s16(v534, v299);
    v537 = vaddq_s16(v536, v299);
    v300 = vandq_s8(v559, vceqq_s16(v179, v182));
    v538 = vaddq_s16(v538, v300);
    v539 = vaddq_s16(v539, v300);
    v540 = vaddq_s16(v540, v300);
    v541 = vaddq_s16(v541, v300);
    v301 = vandq_s8(v559, vceqq_s16(v179, v183));
    v542 = vaddq_s16(v542, v301);
    v543 = vaddq_s16(v543, v301);
    v544 = vaddq_s16(v544, v301);
    v545 = vaddq_s16(v545, v301);
    v302 = vandq_s8(v559, vceqq_s16(v179, v180));
    v546 = vaddq_s16(v546, v302);
    v547 = vaddq_s16(v547, v302);
    v548 = vaddq_s16(v548, v302);
    v549 = vaddq_s16(v549, v302);
    v302.i64[0] = 0x8000800080008;
    v302.i64[1] = 0x8000800080008;
    v303.i64[0] = 0x3000300030003;
    v303.i64[1] = 0x3000300030003;
    v304.i64[0] = 0x2000200020002;
    v304.i64[1] = 0x2000200020002;
    v305 = vceqq_s16(vandq_s8(v175, v303), v304);
    v304.i64[0] = 0x10001000100010;
    v304.i64[1] = 0x10001000100010;
    v306 = vandq_s8(v305, v304);
    v304.i64[0] = 0x7000700070007;
    v304.i64[1] = 0x7000700070007;
    v307 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v179, vceqzq_s16(vandq_s8(v175, v302))), vandq_s8(vaddq_s16(v175, v175), v302)), v306), v109, v304), vshlq_n_s16(vaddq_s16(vaddq_s16(v183, v182), v180), 3uLL));
    v308 = vpaddq_s16(v307, v307);
    if ((vpaddq_s16(v308, v308).i16[0] + 71) > 0x3FF)
    {
      *a1 = v514;
      *(a1 + 16) = v512;
      *(a1 + 32) = v515;
      *(a1 + 48) = v513;
      *(a1 + 64) = v510;
      *(a1 + 80) = v524;
      v312 = (a1 + 96);
      v297 = 127;
      result = 128;
      *v312 = v511;
      v312[1] = v525;
    }

    else
    {
      v309 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v310 = 8 * (a1 & 7);
      if (v310)
      {
        v311 = *v309 & ~(-1 << v310);
      }

      else
      {
        v311 = 0;
      }

      *a2 = 0;
      v313 = ((v179.i8[0] - 1) & 0xF) << 15;
      if (!v179.i16[0])
      {
        v313 = 0;
      }

      if (v179.i16[1])
      {
        v314 = ((v179.i8[2] - 1) & 0xF) << 19;
      }

      else
      {
        v314 = 0;
      }

      if (v179.i16[2])
      {
        v315 = ((v179.i8[4] - 1) & 0xF) << 23;
      }

      else
      {
        v315 = 0;
      }

      v316 = v313 | v314;
      v317 = v550.i16[0] & 0x7FF | ((v550.i16[1] & 0x7FF) << 11) | ((v550.i16[2] & 0x3FF) << 22);
      v318 = v316 | v315 | v175.i8[0] & 0x1F | (32 * (v175.i8[2] & 0x1F)) & 0x83FF | ((v175.i8[4] & 0x1F) << 10);
      v319 = (v318 << v310) | v311;
      if (v310 >= 0x20)
      {
        *v309 = v319;
        v319 = v318 >> (-8 * (a1 & 7u));
      }

      v320 = (v310 + 32) & 0x38;
      v321 = v319 | (v317 << v320);
      if (v320 >= 0x20)
      {
        *(v309 + (((v310 + 32) >> 3) & 8)) = v321;
        v321 = v317 >> -v320;
      }

      v322 = vsubq_s16(v556, v552);
      v323 = vsubq_s16(v556, v553);
      v324 = vsubq_s16(v556, v554);
      v325 = vsubq_s16(v556, v555);
      *v322.i8 = vqmovn_u16(v322);
      *v323.i8 = vqmovn_u16(v323);
      *v324.i8 = vqmovn_u16(v324);
      *v325.i8 = vqmovn_u16(v325);
      v326 = vtrn1q_s8(v322, v323);
      v327 = vtrn2q_s8(v322, v323);
      v328 = vtrn1q_s8(v324, v325);
      v329 = vtrn2q_s8(v324, v325);
      v330 = vzip1q_s16(v327, v329);
      v331 = vtrn2q_s16(v327, v329);
      v327.i64[0] = vzip1q_s32(vzip1q_s16(v326, v328), v330).u64[0];
      v331.i64[0] = vzip1q_s32(vtrn2q_s16(v326, v328), v331).u64[0];
      v324.i64[0] = 0x202020202020202;
      v324.i64[1] = 0x202020202020202;
      v332 = vandq_s8(vmovl_s16(vtst_s16(*v551.i8, 0x4000400040004)), v324);
      v324.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v324.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v333 = vshlq_u8(v326, vorrq_s8(v332, v324));
      v334 = vmovl_u8(vand_s8(*v333.i8, *v327.i8));
      v335 = vmovl_u8(vand_s8(*&vextq_s8(v333, v333, 8uLL), *v331.i8));
      v336 = vmovl_u8(*v332.i8);
      v337 = vmovl_high_u8(v332);
      v338 = vpaddq_s16(vshlq_u16(v334, vtrn1q_s16(0, v336)), vshlq_u16(v335, vtrn1q_s16(0, v337)));
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
      v350 = (v348.i64[0] << v310) | v321;
      if (v349.i64[0] + v310 >= 0x40)
      {
        v309[1] = v350;
        v350 = v348.i64[0] >> (-8 * (a1 & 7u));
        if (!v310)
        {
          v350 = 0;
        }
      }

      v351 = v349.i64[0] + (v310 | 0x40);
      v352 = v350 | (v348.i64[1] << v351);
      if ((v351 & 0x3F) + v349.i64[1] >= 0x40)
      {
        *(v309 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v348.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v349.i64[1];
      v354.i64[0] = 0x8000800080008;
      v354.i64[1] = 0x8000800080008;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vextq_s8(vtstq_s16(v551, v354), 0, 8uLL), v556);
      v357.i64[0] = 0xF000F000F000FLL;
      v357.i64[1] = 0xF000F000F000FLL;
      v358 = vandq_s8(vshlq_u16(v355, vaddq_s16(v356, v357)), v559);
      v359 = vmovl_u16(*v356.i8);
      v360 = vpaddq_s32(vshlq_u32(vmovl_u16(*v358.i8), vtrn1q_s32(0, v359)), vmovl_high_u16(v358));
      v361 = vpaddq_s32(v359, vmovl_high_u16(v356));
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
      v368 = (v366.i64[0] << v353) | v352;
      if (v367.i64[0] + (v353 & 0x3F) >= 0x40)
      {
        *(v309 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
        v368 = v366.i64[0] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v368 = 0;
        }
      }

      v369 = v367.i64[0] + v353;
      v370 = v368 | (v366.i64[1] << v369);
      if ((v369 & 0x3F) + v367.i64[1] >= 0x40)
      {
        *(v309 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v366.i64[1] >> -(v369 & 0x3F);
        if ((v369 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = v369 + v367.i64[1];
      v372 = vextq_s8(0, v552, 8uLL);
      v373.i64[0] = 0xF000F000F000FLL;
      v373.i64[1] = 0xF000F000F000FLL;
      v374.i64[0] = -1;
      v374.i64[1] = -1;
      v375 = vandq_s8(vshlq_u16(v374, vaddq_s16(v372, v373)), v531);
      v376 = vmovl_u16(*v372.i8);
      v377 = vmovl_high_u16(v372);
      v378 = vpaddq_s32(vmovl_u16(*v375.i8), vshlq_u32(vmovl_high_u16(v375), vtrn1q_s32(0, v377)));
      v379 = vpaddq_s32(v376, v377);
      v380.i64[0] = v378.u32[0];
      v380.i64[1] = v378.u32[1];
      v381 = v380;
      v380.i64[0] = v378.u32[2];
      v380.i64[1] = v378.u32[3];
      v382 = v380;
      v380.i64[0] = v379.u32[0];
      v380.i64[1] = v379.u32[1];
      v383 = v380;
      v380.i64[0] = v379.u32[2];
      v380.i64[1] = v379.u32[3];
      v384 = vpaddq_s64(vshlq_u64(v381, vzip1q_s64(0, v383)), vshlq_u64(v382, vzip1q_s64(0, v380)));
      v385 = vpaddq_s64(v383, v380);
      v386 = (v384.i64[0] << v371) | v370;
      if (v385.i64[0] + (v371 & 0x3F) >= 0x40)
      {
        *(v309 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
        v386 = v384.i64[0] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v386 = 0;
        }
      }

      v387 = v385.i64[0] + v371;
      v388 = v386 | (v384.i64[1] << v387);
      if ((v387 & 0x3F) + v385.i64[1] >= 0x40)
      {
        *(v309 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v384.i64[1] >> -(v387 & 0x3F);
        if ((v387 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = v387 + v385.i64[1];
      v390.i64[0] = 0xF000F000F000FLL;
      v390.i64[1] = 0xF000F000F000FLL;
      v391.i64[0] = -1;
      v391.i64[1] = -1;
      v392 = vandq_s8(vshlq_u16(v391, vaddq_s16(v552, v390)), v533);
      v393 = vmovl_u16(*v552.i8);
      v394 = vmovl_high_u16(v552);
      v395 = vpaddq_s32(vshlq_u32(vmovl_u16(*v392.i8), vtrn1q_s32(0, v393)), vshlq_u32(vmovl_high_u16(v392), vtrn1q_s32(0, v394)));
      v396 = vpaddq_s32(v393, v394);
      v397.i64[0] = v395.u32[0];
      v397.i64[1] = v395.u32[1];
      v398 = v397;
      v397.i64[0] = v395.u32[2];
      v397.i64[1] = v395.u32[3];
      v399 = v397;
      v397.i64[0] = v396.u32[0];
      v397.i64[1] = v396.u32[1];
      v400 = v397;
      v397.i64[0] = v396.u32[2];
      v397.i64[1] = v396.u32[3];
      v401 = vpaddq_s64(vshlq_u64(v398, vzip1q_s64(0, v400)), vshlq_u64(v399, vzip1q_s64(0, v397)));
      v402 = vpaddq_s64(v400, v397);
      v403 = (v401.i64[0] << v389) | v388;
      if (v402.i64[0] + (v389 & 0x3F) >= 0x40)
      {
        *(v309 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v403;
        v403 = v401.i64[0] >> -(v389 & 0x3F);
        if ((v389 & 0x3F) == 0)
        {
          v403 = 0;
        }
      }

      v404 = v402.i64[0] + v389;
      v405 = v403 | (v401.i64[1] << v404);
      if ((v404 & 0x3F) + v402.i64[1] >= 0x40)
      {
        *(v309 + ((v404 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
        v405 = v401.i64[1] >> -(v404 & 0x3F);
        if ((v404 & 0x3F) == 0)
        {
          v405 = 0;
        }
      }

      v406 = v404 + v402.i64[1];
      v407.i64[0] = 0xF000F000F000FLL;
      v407.i64[1] = 0xF000F000F000FLL;
      v408.i64[0] = -1;
      v408.i64[1] = -1;
      v409 = vandq_s8(vshlq_u16(v408, vaddq_s16(v552, v407)), v535);
      v410 = vmovl_u16(*v552.i8);
      v411 = vmovl_high_u16(v552);
      v412 = vpaddq_s32(vshlq_u32(vmovl_u16(*v409.i8), vtrn1q_s32(0, v410)), vshlq_u32(vmovl_high_u16(v409), vtrn1q_s32(0, v411)));
      v413 = vpaddq_s32(v410, v411);
      v414.i64[0] = v412.u32[0];
      v414.i64[1] = v412.u32[1];
      v415 = v414;
      v414.i64[0] = v412.u32[2];
      v414.i64[1] = v412.u32[3];
      v416 = v414;
      v414.i64[0] = v413.u32[0];
      v414.i64[1] = v413.u32[1];
      v417 = v414;
      v414.i64[0] = v413.u32[2];
      v414.i64[1] = v413.u32[3];
      v418 = vpaddq_s64(vshlq_u64(v415, vzip1q_s64(0, v417)), vshlq_u64(v416, vzip1q_s64(0, v414)));
      v419 = vpaddq_s64(v417, v414);
      v420 = (v418.i64[0] << v406) | v405;
      if (v419.i64[0] + (v406 & 0x3F) >= 0x40)
      {
        *(v309 + ((v406 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v418.i64[0] >> -(v406 & 0x3F);
        if ((v406 & 0x3F) == 0)
        {
          v420 = 0;
        }
      }

      v421 = v419.i64[0] + v406;
      v422 = v420 | (v418.i64[1] << v421);
      if ((v421 & 0x3F) + v419.i64[1] >= 0x40)
      {
        *(v309 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
        v422 = v418.i64[1] >> -(v421 & 0x3F);
        if ((v421 & 0x3F) == 0)
        {
          v422 = 0;
        }
      }

      v423 = v421 + v419.i64[1];
      v424.i64[0] = 0xF000F000F000FLL;
      v424.i64[1] = 0xF000F000F000FLL;
      v425.i64[0] = -1;
      v425.i64[1] = -1;
      v426 = vandq_s8(vshlq_u16(v425, vaddq_s16(v552, v424)), v537);
      v427 = vmovl_u16(*v552.i8);
      v428 = vmovl_high_u16(v552);
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
      v437 = (v435.i64[0] << v423) | v422;
      if (v436.i64[0] + (v423 & 0x3F) >= 0x40)
      {
        *(v309 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
        v437 = v435.i64[0] >> -(v423 & 0x3F);
        if ((v423 & 0x3F) == 0)
        {
          v437 = 0;
        }
      }

      v438 = v436.i64[1];
      v439 = v436.i64[0] + v423;
      v440 = (v436.i64[0] + v423) & 0x3F;
      v441 = v437 | (v435.i64[1] << v439);
      if ((v440 + v436.i64[1]) >= 0x40)
      {
        *(v309 + ((v439 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
        v441 = v435.i64[1] >> -v440;
        if (!v440)
        {
          v441 = 0;
        }
      }

      v442 = 0;
      v443.i64[0] = 0xF000F000F000FLL;
      v443.i64[1] = 0xF000F000F000FLL;
      v444.i64[0] = -1;
      v444.i64[1] = -1;
      v445 = v439 + v438;
      do
      {
        v446 = vandq_s8(vshlq_u16(v444, vaddq_s16(v553, v443)), *(&v538 + v442));
        v447 = vmovl_u16(*v553.i8);
        v448 = vmovl_high_u16(v553);
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
        v457 = (v455.i64[0] << v445) | v441;
        if (v456.i64[0] + (v445 & 0x3F) >= 0x40)
        {
          *(v309 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
          v457 = v455.i64[0] >> -(v445 & 0x3F);
          if ((v445 & 0x3F) == 0)
          {
            v457 = 0;
          }
        }

        v458 = v456.i64[0] + v445;
        v441 = v457 | (v455.i64[1] << v458);
        if ((v458 & 0x3F) + v456.i64[1] >= 0x40)
        {
          *(v309 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v455.i64[1] >> -(v458 & 0x3F);
          if ((v458 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v445 = v458 + v456.i64[1];
        v442 += 16;
      }

      while (v442 != 64);
      v459 = 0;
      v460.i64[0] = 0xF000F000F000FLL;
      v460.i64[1] = 0xF000F000F000FLL;
      v461.i64[0] = -1;
      v461.i64[1] = -1;
      do
      {
        v462 = vandq_s8(vshlq_u16(v461, vaddq_s16(v554, v460)), *(&v542 + v459));
        v463 = vmovl_u16(*v554.i8);
        v464 = vmovl_high_u16(v554);
        v465 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), vtrn1q_s32(0, v463)), vshlq_u32(vmovl_high_u16(v462), vtrn1q_s32(0, v464)));
        v466 = vpaddq_s32(v463, v464);
        v467.i64[0] = v465.u32[0];
        v467.i64[1] = v465.u32[1];
        v468 = v467;
        v467.i64[0] = v465.u32[2];
        v467.i64[1] = v465.u32[3];
        v469 = v467;
        v467.i64[0] = v466.u32[0];
        v467.i64[1] = v466.u32[1];
        v470 = v467;
        v467.i64[0] = v466.u32[2];
        v467.i64[1] = v466.u32[3];
        v471 = vpaddq_s64(vshlq_u64(v468, vzip1q_s64(0, v470)), vshlq_u64(v469, vzip1q_s64(0, v467)));
        v472 = vpaddq_s64(v470, v467);
        v473 = (v471.i64[0] << v445) | v441;
        if (v472.i64[0] + (v445 & 0x3F) >= 0x40)
        {
          *(v309 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
          v473 = v471.i64[0] >> -(v445 & 0x3F);
          if ((v445 & 0x3F) == 0)
          {
            v473 = 0;
          }
        }

        v474 = v472.i64[0] + v445;
        v441 = v473 | (v471.i64[1] << v474);
        if ((v474 & 0x3F) + v472.i64[1] >= 0x40)
        {
          *(v309 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v471.i64[1] >> -(v474 & 0x3F);
          if ((v474 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v445 = v474 + v472.i64[1];
        v459 += 16;
      }

      while (v459 != 64);
      v475 = 0;
      v476.i64[0] = 0xF000F000F000FLL;
      v476.i64[1] = 0xF000F000F000FLL;
      v477.i64[0] = -1;
      v477.i64[1] = -1;
      do
      {
        v478 = vandq_s8(vshlq_u16(v477, vaddq_s16(v555, v476)), *(&v546 + v475));
        v479 = vmovl_u16(*v555.i8);
        v480 = vmovl_high_u16(v555);
        v481 = vpaddq_s32(vshlq_u32(vmovl_u16(*v478.i8), vtrn1q_s32(0, v479)), vshlq_u32(vmovl_high_u16(v478), vtrn1q_s32(0, v480)));
        v482 = vpaddq_s32(v479, v480);
        v483.i64[0] = v481.u32[0];
        v483.i64[1] = v481.u32[1];
        v484 = v483;
        v483.i64[0] = v481.u32[2];
        v483.i64[1] = v481.u32[3];
        v485 = v483;
        v483.i64[0] = v482.u32[0];
        v483.i64[1] = v482.u32[1];
        v486 = v483;
        v483.i64[0] = v482.u32[2];
        v483.i64[1] = v482.u32[3];
        v487 = vpaddq_s64(vshlq_u64(v484, vzip1q_s64(0, v486)), vshlq_u64(v485, vzip1q_s64(0, v483)));
        v488 = vpaddq_s64(v486, v483);
        v489 = (v487.i64[0] << v445) | v441;
        if (v488.i64[0] + (v445 & 0x3F) >= 0x40)
        {
          *(v309 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
          v489 = v487.i64[0] >> -(v445 & 0x3F);
          if ((v445 & 0x3F) == 0)
          {
            v489 = 0;
          }
        }

        v490 = v488.i64[0] + v445;
        v441 = v489 | (v487.i64[1] << v490);
        if ((v490 & 0x3F) + v488.i64[1] >= 0x40)
        {
          *(v309 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v487.i64[1] >> -(v490 & 0x3F);
          if ((v490 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v445 = v490 + v488.i64[1];
        v475 += 16;
      }

      while (v475 != 64);
      if ((v445 & 0x3F) != 0)
      {
        *(v309 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
      }

      result = (v445 - v310 + 7) >> 3;
      v297 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v297 = 3;
    result = 4;
  }

  *a2 = v297;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 96), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v19 & 7);
  v5 = 11;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v18[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 22 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 11;
    do
    {
      v11 = 64 - v6;
      if (64 - v6 >= v10)
      {
        v11 = v10;
      }

      v12 = v11 + v6;
      v2 += v12 >> 6;
      v6 = v12 & 0x3F;
      v10 -= v11;
    }

    while (v10);
    v9 = v6 - v4 + (v2 << 6);
  }

  if (v9 - 23 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v13 = 0;
    v14 = 10;
    do
    {
      v15 = 64 - v6;
      if (64 - v6 >= v14)
      {
        v15 = v14;
      }

      *&v18[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
      v13 += v15;
      v16 = v15 + v6;
      v2 += v16 >> 6;
      v6 = v16 & 0x3F;
      v14 -= v15;
    }

    while (v14);
  }

  v17 = (result + a2);
  *result = 0;
  result[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 127)
  {
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
  }

  else if (a4 == 3)
  {
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
  }

  else if (a4)
  {
    v17 = 8 * (a3 & 7);
    v18 = a3 & 0xFFFFFFFFFFFFFFF8;
    v19 = v17 + 32;
    v20 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v17;
    if (v17 >= 0x21)
    {
      v20 |= *(v18 + 8) << (-8 * (a3 & 7u));
    }

    v21 = v17 | 0x40;
    HIWORD(v22) = 3;
    LOWORD(v22) = v20 & 0x1F;
    WORD1(v22) = (v20 >> 5) & 0x1F;
    WORD2(v22) = (v20 >> 10) & 0x1F;
    v23.i64[0] = 0x3000300030003;
    v23.i64[1] = 0x3000300030003;
    v24.i32[0] = v20 >> 15;
    v24.i32[1] = v20 >> 19;
    v25 = vadd_s32(vand_s8(v24, 0xF0000000FLL), 0x100000001);
    LOWORD(v26) = v25.i16[0];
    WORD1(v26) = v25.i16[2];
    HIDWORD(v26) = (((v20 >> 23) & 0xF) + 1);
    v27 = v19 & 0x38;
    v28 = (v18 + ((v19 >> 3) & 8));
    v29 = *v28 >> (v19 & 0x38);
    if (v27 >= 0x21)
    {
      v29 |= v28[1] << -v27;
    }

    v30 = (8 * (a3 & 7)) | 0x400;
    v31 = vdupq_lane_s64(v22, 0);
    v32 = vandq_s8(v31, v23);
    v33 = vbicq_s8(vdupq_lane_s64(v26, 0), vceqq_s16(v32, v23));
    v34 = vmovl_s16(vtst_s16(v22, 0x4000400040004));
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(v34, v35);
    if (vmaxvq_s8(v36) < 1)
    {
      v44 = 0;
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v61 = v33;
      v60 = v33;
      v59 = v33;
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      v436 = v63;
      v437 = v63;
      v58 = v33;
      v438 = v63;
    }

    else
    {
      v37 = vmovl_u8(*&vpaddq_s8(v36, v36));
      v38 = vmovl_u16(*&vpaddq_s16(v37, v37));
      v39 = vpaddq_s32(v38, v38).u64[0];
      v40.i64[0] = v39;
      v40.i64[1] = HIDWORD(v39);
      v41 = v40;
      v42 = vaddvq_s64(v40);
      v43 = v42 <= 0x80 && v30 >= v21 + v42;
      v44 = !v43;
      v45 = 0uLL;
      if (v43)
      {
        v46 = vaddq_s64(vdupq_n_s64(v17), vzip1q_s64(0, v41));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v18 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(v18 + 8), 0), vnegq_s64(v46)));
        if (v17 + v42 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v18 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(*(v18 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v45);
        }

        v21 += v42;
      }

      v47 = vzip1_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
      v48.i64[0] = v47.u32[0];
      v48.i64[1] = v47.u32[1];
      v49 = vshlq_u64(v45, vnegq_s64(v48));
      v50 = vuzp1q_s32(vzip1q_s64(v45, v49), vzip2q_s64(v45, v49));
      v51 = vshlq_u32(v50, vnegq_s32((*&v37 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v52 = vuzp1q_s16(vzip1q_s32(v50, v51), vzip2q_s32(v50, v51));
      v53 = vshlq_u16(v52, vnegq_s16((*&v36 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v54 = vuzp1q_s8(vzip1q_s16(v52, v53), vzip2q_s16(v52, v53));
      v53.i64[0] = 0x101010101010101;
      v53.i64[1] = 0x101010101010101;
      v55 = vshlq_s8(v53, v36);
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v56 = vqtbl1q_s8(vandq_s8(vaddq_s8(v55, v53), v54), xmmword_29D2F0F70);
      *v55.i8 = vdup_lane_s32(*v56.i8, 0);
      *v53.i8 = vdup_lane_s32(*v56.i8, 1);
      v57 = vdupq_laneq_s32(v56, 2).u64[0];
      v56.i64[0] = vdupq_laneq_s32(v56, 3).u64[0];
      v58 = vsubw_s8(v33, *v55.i8);
      v59 = vsubw_s8(v33, *v53.i8);
      v60 = vsubw_s8(v33, v57);
      v61 = vsubw_s8(v33, *v56.i8);
      v436 = vmovl_s8(vceqz_s8(*v53.i8));
      v437 = vmovl_s8(vceqz_s8(v57));
      v438 = vmovl_s8(vceqz_s8(*v55.i8));
      v62 = vmovl_s8(vceqz_s8(*v56.i8));
    }

    v64.i64[0] = 0x8000800080008;
    v64.i64[1] = 0x8000800080008;
    v65 = 0uLL;
    v439 = vandq_s8(vextq_s8(vtstq_s16(v31, v64), 0, 8uLL), v33);
    v66 = vmovl_u16(*&vpaddq_s16(v439, v439));
    v67 = vpaddq_s32(v66, v66).u64[0];
    v68.i64[0] = v67;
    v68.i64[1] = HIDWORD(v67);
    v69 = v68;
    v70 = vaddvq_s64(v68);
    v71 = v21 + v70;
    if (v70 <= 0x80 && v30 >= v71)
    {
      v73 = v21 & 0x3F;
      v74 = vaddq_s64(vdupq_n_s64(v73), vzip1q_s64(0, v69));
      v75 = (v18 + 8 * (v21 >> 6));
      v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v75, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v74)), vshlq_u64(vdupq_lane_s64(v75->i64[0], 0), vnegq_s64(v74)));
      if (v73 + v70 >= 0x81)
      {
        v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v75[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v74)), vshlq_u64(vdupq_laneq_s64(v75[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v74))), v65);
      }

      v21 = v71;
    }

    else
    {
      v44 = 1;
    }

    v76 = v31.i8[0] & 3;
    if (v76 == 2)
    {
      v77 = v21 + 16;
      if (v30 >= v21 + 8)
      {
        v21 += 8;
      }

      else
      {
        v44 = 1;
        v77 = v21 + 8;
      }

      if (v30 >= v77)
      {
        v21 = v77;
      }

      else
      {
        v44 = 1;
      }
    }

    v78 = 0uLL;
    v431 = vextq_s8(0, v58, 8uLL);
    v79 = vmovl_u16(*&vpaddq_s16(v431, v431));
    v80 = vpaddq_s32(v79, v79).u64[0];
    v81.i64[0] = v80;
    v81.i64[1] = HIDWORD(v80);
    v82 = v81;
    v83 = vaddvq_s64(v81);
    v84 = v21 + v83;
    if (v83 <= 0x80 && v30 >= v84)
    {
      v87 = v21 & 0x3F;
      v88 = vaddq_s64(vdupq_n_s64(v87), vzip1q_s64(0, v82));
      v89 = (v18 + 8 * (v21 >> 6));
      v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
      if (v87 + v83 >= 0x81)
      {
        v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
      }

      v21 = v84;
    }

    else
    {
      v44 = 1;
      v86 = 0uLL;
    }

    v432 = v58;
    v90 = vmovl_u16(*&vpaddq_s16(v58, v58));
    v91 = vpaddq_s32(v90, v90).u64[0];
    v92.i64[0] = v91;
    v92.i64[1] = HIDWORD(v91);
    v93 = v92;
    v94 = vaddvq_s64(v92);
    v95 = v21 + v94;
    if (v94 <= 0x80 && v30 >= v95)
    {
      v97 = v21 & 0x3F;
      v98 = vaddq_s64(vdupq_n_s64(v97), vzip1q_s64(0, v93));
      v99 = (v18 + 8 * (v21 >> 6));
      v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
      if (v97 + v94 >= 0x81)
      {
        v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v78);
      }

      v21 = v95;
    }

    else
    {
      v44 = 1;
    }

    v100 = v21 + v94;
    v101 = 0uLL;
    if (v94 <= 0x80 && v30 >= v100)
    {
      v104 = v21 & 0x3F;
      v105 = vaddq_s64(vdupq_n_s64(v104), vzip1q_s64(0, v93));
      v106 = (v18 + 8 * (v21 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v104 + v94 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v21 = v100;
    }

    else
    {
      v44 = 1;
      v103 = 0uLL;
    }

    v107 = v21 + v94;
    if (v94 <= 0x80 && v30 >= v107)
    {
      v109 = v21 & 0x3F;
      v110 = vaddq_s64(vdupq_n_s64(v109), vzip1q_s64(0, v93));
      v111 = (v18 + 8 * (v21 >> 6));
      v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
      if (v109 + v94 >= 0x81)
      {
        v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v101);
      }

      v21 = v107;
    }

    else
    {
      v44 = 1;
    }

    v112 = vmovl_u16(*&vpaddq_s16(v59, v59));
    v113 = vpaddq_s32(v112, v112).u64[0];
    v114.i64[0] = v113;
    v114.i64[1] = HIDWORD(v113);
    v115 = v114;
    v116 = vaddvq_s64(v114);
    v117 = v21 + v116;
    v118 = 0uLL;
    if (v116 <= 0x80 && v30 >= v117)
    {
      v121 = v21 & 0x3F;
      v122 = vaddq_s64(vdupq_n_s64(v121), vzip1q_s64(0, v115));
      v123 = (v18 + 8 * (v21 >> 6));
      v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
      if (v121 + v116 >= 0x81)
      {
        v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
      }

      v21 = v117;
    }

    else
    {
      v44 = 1;
      v120 = 0uLL;
    }

    v124 = v21 + v116;
    if (v116 <= 0x80 && v30 >= v124)
    {
      v126 = v21 & 0x3F;
      v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v115));
      v128 = (v18 + 8 * (v21 >> 6));
      v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v126 + v116 >= 0x81)
      {
        v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v118);
      }

      v21 = v124;
    }

    else
    {
      v44 = 1;
    }

    v129 = 0uLL;
    if (v116 > 0x80 || (v130 = v21 + v116, v30 < v21 + v116))
    {
      v44 = 1;
      v130 = v21;
      v134 = 0uLL;
    }

    else
    {
      v131 = v21 & 0x3F;
      v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v115));
      v133 = (v18 + 8 * (v21 >> 6));
      v134 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
      if (v131 + v116 >= 0x81)
      {
        v134 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v134);
      }
    }

    if (v116 > 0x80 || (v135 = v130 + v116, v30 < v130 + v116))
    {
      v44 = 1;
      v135 = v130;
    }

    else
    {
      v136 = vaddq_s64(vdupq_n_s64(v130 & 0x3F), vzip1q_s64(0, v115));
      v137 = (v18 + 8 * (v130 >> 6));
      v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
      if ((v130 & 0x3F) + v116 >= 0x81)
      {
        v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v129);
      }
    }

    v138 = vmovl_u16(*&vpaddq_s16(v60, v60));
    v139 = vpaddq_s32(v138, v138).u64[0];
    v140.i64[0] = v139;
    v140.i64[1] = HIDWORD(v139);
    v141 = v140;
    v142 = vaddvq_s64(v140);
    v143 = v142;
    v144 = 0uLL;
    if (v142 > 0x80 || (v145 = v135 + v142, v30 < v135 + v142))
    {
      v44 = 1;
      v145 = v135;
      v148 = 0uLL;
    }

    else
    {
      v146 = vaddq_s64(vdupq_n_s64(v135 & 0x3F), vzip1q_s64(0, v141));
      v147 = (v18 + 8 * (v135 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if ((v135 & 0x3F) + v143 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    if (v143 > 0x80 || (v149 = v145 + v143, v30 < v145 + v143))
    {
      v44 = 1;
      v149 = v145;
    }

    else
    {
      v150 = vaddq_s64(vdupq_n_s64(v145 & 0x3F), vzip1q_s64(0, v141));
      v151 = (v18 + 8 * (v145 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
      if ((v145 & 0x3F) + v143 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v144);
      }
    }

    v152 = 0uLL;
    if (v143 > 0x80 || (v153 = v149 + v143, v30 < v149 + v143))
    {
      v44 = 1;
      v153 = v149;
      v157 = 0uLL;
    }

    else
    {
      v154 = v149 & 0x3F;
      v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v141));
      v156 = (v18 + 8 * (v149 >> 6));
      v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
      if (v154 + v143 >= 0x81)
      {
        v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
      }
    }

    if (v143 > 0x80 || (v158 = v153 + v143, v30 < v153 + v143))
    {
      v44 = 1;
      v158 = v153;
    }

    else
    {
      v159 = v153 & 0x3F;
      v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v141));
      v161 = (v18 + 8 * (v153 >> 6));
      v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
      if (v159 + v143 >= 0x81)
      {
        v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v152);
      }
    }

    v162 = vmovl_u16(*&vpaddq_s16(v61, v61));
    v163 = vpaddq_s32(v162, v162).u64[0];
    v164.i64[0] = v163;
    v164.i64[1] = HIDWORD(v163);
    v165 = v164;
    v166 = vaddvq_s64(v164);
    v167 = v166;
    v168 = 0uLL;
    if (v166 > 0x80 || (v169 = v158 + v166, v30 < v158 + v166))
    {
      v44 = 1;
      v169 = v158;
      v173 = 0uLL;
    }

    else
    {
      v170 = v158 & 0x3F;
      v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v165));
      v172 = (v18 + 8 * (v158 >> 6));
      v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
      if (v170 + v166 >= 0x81)
      {
        v173 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
      }
    }

    v434 = v60;
    v435 = v61;
    v433 = v59;
    if (v166 > 0x80 || (v174 = v169 + v166, v30 < v169 + v166))
    {
      v44 = 1;
      v174 = v169;
    }

    else
    {
      v175 = v169 & 0x3F;
      v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v165));
      v177 = (v18 + 8 * (v169 >> 6));
      v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
      if (v175 + v166 >= 0x81)
      {
        v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v168);
      }
    }

    if (v166 > 0x80 || (v178 = v174 + v166, v30 < v174 + v166))
    {
      v44 = 1;
      v178 = v174;
      v182 = 0uLL;
    }

    else
    {
      v179 = v174 & 0x3F;
      v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v165));
      v181 = (v18 + 8 * (v174 >> 6));
      v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
      if (v179 + v167 >= 0x81)
      {
        v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v182);
      }
    }

    if (v167 > 0x80 || v30 < v178 + v167)
    {
      goto LABEL_142;
    }

    v183 = vaddq_s64(vdupq_n_s64(v178 & 0x3F), vzip1q_s64(0, v165));
    v184 = (v18 + 8 * (v178 >> 6));
    v185 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v184, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v183)), vshlq_u64(vdupq_lane_s64(v184->i64[0], 0), vnegq_s64(v183)));
    if ((v178 & 0x3F) + v167 >= 0x81)
    {
      v185 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v184[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v183)), vshlq_u64(vdupq_laneq_s64(v184[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v183))), v185);
    }

    if ((v44 & 1) != 0 || v30 + 8 * (a4 + 1) - (v178 + v167) - 1024 >= 9 || v76 == 2)
    {
LABEL_142:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
      return 0;
    }

    else
    {
      v430 = v31;
      v186 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
      v187 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
      v188 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
      v189 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
      v190 = vzip1_s32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
      v191 = vzip1_s32(*v162.i8, *&vextq_s8(v162, v162, 8uLL));
      v192.i64[0] = v186.u32[0];
      v192.i64[1] = v186.u32[1];
      v193 = vshlq_u64(v65, vnegq_s64(v192));
      v194 = vzip2q_s64(v65, v193);
      v424 = vzip1q_s64(v65, v193);
      v192.i64[0] = v187.u32[0];
      v192.i64[1] = v187.u32[1];
      v195 = vshlq_u64(v86, vnegq_s64(v192));
      v422 = vzip2q_s64(v86, v195);
      v196 = vzip1q_s64(v86, v195);
      v192.i64[0] = v188.u32[0];
      v192.i64[1] = v188.u32[1];
      v197 = vnegq_s64(v192);
      v198 = vshlq_u64(v78, v197);
      v199 = vzip2q_s64(v78, v198);
      v200 = vzip1q_s64(v78, v198);
      v201 = vshlq_u64(v103, v197);
      v202 = vzip2q_s64(v103, v201);
      v203 = vzip1q_s64(v103, v201);
      v204 = vshlq_u64(v101, v197);
      v205 = vzip2q_s64(v101, v204);
      v206 = vzip1q_s64(v101, v204);
      v192.i64[0] = v189.u32[0];
      v192.i64[1] = v189.u32[1];
      v207 = vnegq_s64(v192);
      v208 = vshlq_u64(v120, v207);
      v209 = vzip2q_s64(v120, v208);
      v210 = vzip1q_s64(v120, v208);
      v211 = vshlq_u64(v118, v207);
      v212 = vzip2q_s64(v118, v211);
      v213 = vzip1q_s64(v118, v211);
      v214 = vshlq_u64(v134, v207);
      v215 = vzip2q_s64(v134, v214);
      v216 = vzip1q_s64(v134, v214);
      v217 = vshlq_u64(v129, v207);
      v218 = vzip2q_s64(v129, v217);
      v219 = vzip1q_s64(v129, v217);
      v192.i64[0] = v190.u32[0];
      v192.i64[1] = v190.u32[1];
      v220 = vnegq_s64(v192);
      v221 = vshlq_u64(v148, v220);
      v428 = v62;
      v429 = v32;
      v222 = vzip2q_s64(v148, v221);
      v223 = vzip1q_s64(v148, v221);
      v224 = vshlq_u64(v144, v220);
      v225 = vzip2q_s64(v144, v224);
      v226 = vzip1q_s64(v144, v224);
      v227 = vshlq_u64(v157, v220);
      v228 = vzip2q_s64(v157, v227);
      v229 = vzip1q_s64(v157, v227);
      v230 = vshlq_u64(v152, v220);
      v231 = vzip2q_s64(v152, v230);
      v232 = vzip1q_s64(v152, v230);
      v192.i64[0] = v191.u32[0];
      v192.i64[1] = v191.u32[1];
      v427 = vnegq_s64(v192);
      v233 = vshlq_u64(v173, v427);
      v234 = vzip2q_s64(v173, v233);
      v235 = vzip1q_s64(v173, v233);
      v236 = vshlq_u64(v168, v427);
      v237 = vzip2q_s64(v168, v236);
      v238 = vzip1q_s64(v168, v236);
      v239 = vshlq_u64(v182, v427);
      v240 = vzip2q_s64(v182, v239);
      v241 = vzip1q_s64(v182, v239);
      v242 = vuzp1q_s32(v424, v194);
      v243 = vuzp1q_s32(v196, v422);
      v244 = vuzp1q_s32(v200, v199);
      v245 = vuzp1q_s32(v203, v202);
      v246 = vuzp1q_s32(v206, v205);
      v247 = vuzp1q_s32(v210, v209);
      v248 = vuzp1q_s32(v213, v212);
      v249 = vuzp1q_s32(v216, v215);
      v250 = vuzp1q_s32(v219, v218);
      v251 = vuzp1q_s32(v223, v222);
      v252 = vuzp1q_s32(v226, v225);
      v253 = vuzp1q_s32(v229, v228);
      v254 = vuzp1q_s32(v232, v231);
      v255 = vuzp1q_s32(v235, v234);
      v256 = vuzp1q_s32(v238, v237);
      v238.i64[0] = 0xFFFF0000FFFFLL;
      v238.i64[1] = 0xFFFF0000FFFFLL;
      v257 = vuzp1q_s32(v241, v240);
      v258 = vshlq_u32(v242, vnegq_s32(vandq_s8(v439, v238)));
      v423 = vzip1q_s32(v242, v258);
      v425 = vzip2q_s32(v242, v258);
      v258.i64[0] = 0xFFFF0000FFFFLL;
      v258.i64[1] = 0xFFFF0000FFFFLL;
      v259 = vshlq_u32(v243, vnegq_s32(vandq_s8(v431, v258)));
      v421 = vzip2q_s32(v243, v259);
      v260 = vzip1q_s32(v243, v259);
      v261 = vnegq_s32(vandq_s8(v432, v258));
      v262 = vshlq_u32(v244, v261);
      v263 = vzip2q_s32(v244, v262);
      v264 = vzip1q_s32(v244, v262);
      v265 = vshlq_u32(v245, v261);
      v420 = vzip2q_s32(v245, v265);
      v266 = vzip1q_s32(v245, v265);
      v267 = vshlq_u32(v246, v261);
      v418 = vzip1q_s32(v246, v267);
      v419 = vzip2q_s32(v246, v267);
      v267.i64[0] = 0xFFFF0000FFFFLL;
      v267.i64[1] = 0xFFFF0000FFFFLL;
      v268 = vnegq_s32(vandq_s8(v433, v267));
      v269 = vshlq_u32(v247, v268);
      v416 = vzip1q_s32(v247, v269);
      v417 = vzip2q_s32(v247, v269);
      v270 = vshlq_u32(v248, v268);
      v414 = vzip1q_s32(v248, v270);
      v415 = vzip2q_s32(v248, v270);
      v271 = vshlq_u32(v249, v268);
      v413 = vzip2q_s32(v249, v271);
      v272 = vzip1q_s32(v249, v271);
      v273 = vshlq_u32(v250, v268);
      v274 = vzip2q_s32(v250, v273);
      v275 = vzip1q_s32(v250, v273);
      v273.i64[0] = 0xFFFF0000FFFFLL;
      v273.i64[1] = 0xFFFF0000FFFFLL;
      v276 = vnegq_s32(vandq_s8(v434, v273));
      v277 = vshlq_u32(v251, v276);
      v278 = vzip2q_s32(v251, v277);
      v279 = vzip1q_s32(v251, v277);
      v280 = vshlq_u32(v252, v276);
      v281 = vzip2q_s32(v252, v280);
      v282 = vzip1q_s32(v252, v280);
      v283 = vshlq_u32(v253, v276);
      v284 = vzip2q_s32(v253, v283);
      v285 = vzip1q_s32(v253, v283);
      v286 = vshlq_u32(v254, v276);
      v287 = vzip2q_s32(v254, v286);
      v288 = vzip1q_s32(v254, v286);
      v286.i64[0] = 0xFFFF0000FFFFLL;
      v286.i64[1] = 0xFFFF0000FFFFLL;
      v289 = vnegq_s32(vandq_s8(v435, v286));
      v290 = vshlq_u32(v255, v289);
      v291 = vzip2q_s32(v255, v290);
      v292 = vzip1q_s32(v255, v290);
      v293 = vshlq_u32(v256, v289);
      v294 = vzip2q_s32(v256, v293);
      v295 = vzip1q_s32(v256, v293);
      v296 = vshlq_u32(v257, v289);
      v297 = vzip2q_s32(v257, v296);
      v298 = vzip1q_s32(v257, v296);
      v299 = vuzp1q_s16(v423, v425);
      v426 = vuzp1q_s16(v279, v278);
      v300 = vuzp1q_s16(v282, v281);
      v301 = vuzp1q_s16(v285, v284);
      v302 = vuzp1q_s16(v288, v287);
      v303 = vuzp1q_s16(v292, v291);
      v304 = vuzp1q_s16(v295, v294);
      v305 = vuzp1q_s16(v298, v297);
      v297.i64[0] = 0x10001000100010;
      v297.i64[1] = 0x10001000100010;
      v295.i64[0] = 0xF000F000F000FLL;
      v295.i64[1] = 0xF000F000F000FLL;
      v306 = vshlq_s16(v299, vsubq_s16(v297, v439));
      v299.i64[0] = 0x10001000100010;
      v299.i64[1] = 0x10001000100010;
      v307 = vshlq_s16(vuzp1q_s16(v260, v421), vsubq_s16(v299, v431));
      v308 = vsubq_s16(v299, v432);
      v282.i64[0] = 0xF000F000F000FLL;
      v282.i64[1] = 0xF000F000F000FLL;
      v309 = vaddq_s16(v431, v282);
      v310 = vaddq_s16(v432, v282);
      v291.i64[0] = 0x10001000100010;
      v291.i64[1] = 0x10001000100010;
      v311 = vsubq_s16(v291, v433);
      v279.i64[0] = 0xF000F000F000FLL;
      v279.i64[1] = 0xF000F000F000FLL;
      v312 = vaddq_s16(v433, v279);
      v313 = vshlq_s16(vuzp1q_s16(v416, v417), v311);
      v314 = vshlq_s16(vuzp1q_s16(v414, v415), v311);
      v315 = vshlq_s16(vuzp1q_s16(v272, v413), v311);
      v316 = vshlq_s16(vuzp1q_s16(v275, v274), v311);
      v275.i64[0] = 0x10001000100010;
      v275.i64[1] = 0x10001000100010;
      v317 = vsubq_s16(v275, v434);
      v274.i64[0] = 0xF000F000F000FLL;
      v274.i64[1] = 0xF000F000F000FLL;
      v318 = vaddq_s16(v434, v274);
      v319 = vshlq_s16(v426, v317);
      v320 = vshlq_s16(v300, v317);
      v321 = vshlq_s16(v301, v317);
      v322 = vshlq_s16(v302, v317);
      v317.i64[0] = 0x10001000100010;
      v317.i64[1] = 0x10001000100010;
      v323 = vsubq_s16(v317, v435);
      v223.i64[0] = 0xF000F000F000FLL;
      v223.i64[1] = 0xF000F000F000FLL;
      v324 = vaddq_s16(v435, v223);
      v325 = vshlq_s16(v306, vaddq_s16(v439, v295));
      v326 = vshlq_s16(v307, v309);
      v327 = vshlq_s16(vshlq_s16(vuzp1q_s16(v264, v263), v308), v310);
      v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v266, v420), v308), v310);
      v329 = vshlq_s16(vshlq_s16(vuzp1q_s16(v418, v419), v308), v310);
      v330 = vshlq_s16(v313, v312);
      v331 = vshlq_s16(v314, v312);
      v332 = vshlq_s16(v315, v312);
      v333 = vshlq_s16(v319, v318);
      v334 = vshlq_s16(v320, v318);
      v335 = vshlq_s16(v321, v318);
      v336 = vshlq_u64(v185, v427);
      v337 = vuzp1q_s32(vzip1q_s64(v185, v336), vzip2q_s64(v185, v336));
      v338 = vshlq_u32(v337, v289);
      v339 = vshlq_s16(vshlq_s16(v303, v323), v324);
      v340 = vshlq_s16(vshlq_s16(v304, v323), v324);
      v341 = vshlq_s16(vshlq_s16(v305, v323), v324);
      v342 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v337, v338), vzip2q_s32(v337, v338)), v323), v324);
      v343 = vaddq_s16(vandq_s8(v325, v438), v326);
      v344 = vdupq_lane_s64(v325.i64[0], 0);
      v345 = vandq_s8(v436, v344);
      v346 = vsubq_s16(v330, v345);
      v347 = vsubq_s16(v331, v345);
      v348 = vsubq_s16(v332, v345);
      v349 = vsubq_s16(vshlq_s16(v316, v312), v345);
      v350 = vandq_s8(v437, v344);
      v351 = vsubq_s16(v333, v350);
      v352 = vsubq_s16(v334, v350);
      v353 = vsubq_s16(v335, v350);
      v354 = vandq_s8(v438, v344);
      v355 = vsubq_s16(vshlq_s16(v322, v318), v350);
      v356 = vandq_s8(v428, v344);
      v357 = vsubq_s16(v339, v356);
      v358 = vsubq_s16(v340, v356);
      v359 = vsubq_s16(v341, v356);
      v360 = vsubq_s16(v342, v356);
      v361.i64[0] = 0x1000100010001;
      v361.i64[1] = 0x1000100010001;
      v362 = vsubq_s16(v327, v354);
      v363 = vsubq_s16(v328, v354);
      v364 = vsubq_s16(v343, v354);
      v365 = vsubq_s16(v329, v354);
      v356.i16[0] = v29 & 0x7FF;
      v356.i16[1] = (v29 >> 11) & 0x7FF;
      v356.i32[1] = v29 >> 22;
      v366 = vdupq_lane_s64(v356.i64[0], 0);
      if (vaddvq_s16(vceqq_s16(v429, v361)))
      {
        v367 = vnegq_s16(vandq_s8(v430, v361));
        v368.i64[0] = v365.i64[0];
        v369.i64[1] = v364.i64[1];
        v368.i64[1] = v364.i64[0];
        v369.i64[0] = v365.i64[1];
        v370 = vbslq_s8(v367, v369, v364);
        v371 = vbslq_s8(v367, v368, v365);
        v369.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v369.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v372 = vandq_s8(vqtbl4q_s8(*(&v362 - 1), v369), v367);
        v440.val[0] = vaddq_s16(v370, vandq_s8(vqtbl4q_s8(*(&v362 - 1), xmmword_29D2F10B0), v367));
        v440.val[1] = vaddq_s16(v362, vandq_s8(vqtbl4q_s8(*(&v362 - 1), xmmword_29D2F10C0), v367));
        v440.val[2] = vaddq_s16(v363, v372);
        v440.val[3] = vaddq_s16(v371, v372);
        v373 = vandq_s8(vqtbl4q_s8(v440, v369), v367);
        v364 = vaddq_s16(v440.val[0], vandq_s8(vqtbl4q_s8(v440, xmmword_29D2F10D0), v367));
        v362 = vaddq_s16(v440.val[1], vandq_s8(vqtbl4q_s8(v440, xmmword_29D2F10E0), v367));
        v363 = vaddq_s16(v440.val[2], v373);
        v365 = vaddq_s16(v440.val[3], v373);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F10B0), v367), v346);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F10F0), v367), v347);
        v441.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, v369), v367), v348);
        v441.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F1100), v367), v349);
        v374 = vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F10D0), v367);
        v440.val[0] = vandq_s8(vqtbl4q_s8(v441, v369), v367);
        v346 = vaddq_s16(v374, v441.val[0]);
        v347 = vaddq_s16(v441.val[1], v374);
        v348 = vaddq_s16(v441.val[2], v440.val[0]);
        v349 = vaddq_s16(v441.val[3], v440.val[0]);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F0EB0), v367), v351);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F0FB0), v367), v352);
        v441.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10B0), v367), v353);
        v441.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10C0), v367), v355);
        v440.val[1] = vandq_s8(vqtbl4q_s8(v441, v369), v367);
        v351 = vaddq_s16(v441.val[0], v440.val[1]);
        v352 = vaddq_s16(v441.val[1], v440.val[1]);
        v353 = vaddq_s16(v441.val[2], vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F0FE0), v367));
        v355 = vaddq_s16(v441.val[3], vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F1110), v367));
        v440.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F0EB0), v367), v357);
        v440.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F1120), v367), v358);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10B0), v367), v359);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10C0), v367), v360);
        v375 = vandq_s8(vqtbl4q_s8(*(&v440 + 32), v369), v367);
        v357 = vaddq_s16(v440.val[2], v375);
        v358 = vaddq_s16(v440.val[3], v375);
        v359 = vaddq_s16(v441.val[0], vandq_s8(vqtbl4q_s8(*(&v440 + 32), xmmword_29D2F0FE0), v367));
        v360 = vaddq_s16(v441.val[1], vandq_s8(vqtbl4q_s8(*(&v440 + 32), xmmword_29D2F1130), v367));
      }

      v376 = vaddq_s16(v364, v366);
      v377 = vaddq_s16(v362, v366);
      v378 = vaddq_s16(v363, v366);
      v379 = vaddq_s16(v365, v366);
      v380 = vaddq_s16(v346, v366);
      v381 = vaddq_s16(v347, v366);
      v382 = vaddq_s16(v348, v366);
      v383 = vaddq_s16(v349, v366);
      v384 = vaddq_s16(v351, v366);
      v385 = vaddq_s16(v352, v366);
      v386 = vaddq_s16(v353, v366);
      v387 = vaddq_s16(v355, v366);
      v388 = vaddq_s16(v357, v366);
      v389 = vaddq_s16(v358, v366);
      v390 = vaddq_s16(v359, v366);
      v391 = vaddq_s16(v360, v366);
      v392.i64[0] = 0x10001000100010;
      v392.i64[1] = 0x10001000100010;
      v393 = vceqzq_s16(vandq_s8(v430, v392));
      v394.i64[0] = 0xFFFF00000000;
      v394.i64[1] = 0xFFFF00000000;
      v395 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v376, xmmword_29D2F1140), v394), v393), v376);
      v396 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v377, xmmword_29D2F1140), v394), v393), v377);
      v397 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v378, xmmword_29D2F1140), v394), v393), v378);
      v398 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v379, xmmword_29D2F1140), v394), v393), v379);
      v399 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v380, xmmword_29D2F1140), v394), v393), v380);
      v400 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v381, xmmword_29D2F1140), v394), v393), v381);
      v401 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v382, xmmword_29D2F1140), v394), v393), v382);
      v402 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v383, xmmword_29D2F1140), v394), v393), v383);
      v403 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v384, xmmword_29D2F1140), v394), v393), v384);
      v404 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v385, xmmword_29D2F1140), v394), v393), v385);
      v405 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v386, xmmword_29D2F1140), v394), v393), v386);
      v406 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v387, xmmword_29D2F1140), v394), v393), v387);
      v407 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v388, xmmword_29D2F1140), v394), v393), v388);
      v408 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v389, xmmword_29D2F1140), v394), v393), v389);
      v389.i64[0] = 0x3F0000003FLL;
      v389.i64[1] = 0x3F0000003FLL;
      v409 = (a1 + 32);
      *a1 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v395, 0xAuLL), v396, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v395, 5uLL), v396, 5uLL), vuzp1q_s32(v395, v396)));
      *(a1 + 16) = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v397, 0xAuLL), v398, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v397, 5uLL), v398, 5uLL), vuzp1q_s32(v397, v398)));
      v410 = (a1 + a2);
      *v409 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v403, 0xAuLL), v404, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v403, 5uLL), v404, 5uLL), vuzp1q_s32(v403, v404)));
      v409[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v405, 0xAuLL), v406, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v405, 5uLL), v406, 5uLL), vuzp1q_s32(v405, v406)));
      v411 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v390, xmmword_29D2F1140), v394), v393), v390);
      v412 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v391, xmmword_29D2F1140), v394), v393), v391);
      *v410 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v399, 0xAuLL), v400, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v399, 5uLL), v400, 5uLL), vuzp1q_s32(v399, v400)));
      v410[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v401, 0xAuLL), v402, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v401, 5uLL), v402, 5uLL), vuzp1q_s32(v401, v402)));
      v410 += 2;
      *v410 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v407, 0xAuLL), v408, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v407, 5uLL), v408, 5uLL), vuzp1q_s32(v407, v408)));
      v410[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v411, 0xAuLL), v412, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v411, 5uLL), v412, 5uLL), vuzp1q_s32(v411, v412)));
      return a4 + 1;
    }
  }

  else
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v4 = (a1 + a2);
    result = 0;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 256, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 320, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 512, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 768, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 576, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 832, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = *(a3 + a4);
  v10 = *(&a3[1] + a4);
  v11 = *(&a3[2] + a4);
  v12 = *(&a3[3] + a4);
  v13.i64[0] = a3->u32[0];
  v13.i64[1] = HIDWORD(a3->i64[0]);
  v14 = v13;
  v13.i64[0] = a3->i64[1];
  v13.i64[1] = HIDWORD(*a3);
  v15 = vbslq_s8(xmmword_29D2F1340, v14, 0);
  v16 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v6.u32[0];
  v13.i64[1] = v6.u32[1];
  v17 = v13;
  v13.i64[0] = v6.u32[2];
  v13.i64[1] = v6.u32[3];
  v18 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3->i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*a3->i8, 5uLL), v15));
  v19 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(*a3, 5uLL), v16));
  v523 = *a3;
  v524 = v6;
  v20 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v6.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v6.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v17, 0)));
  v21 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v6, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v6, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v22 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v23 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v25 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v26 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v9.i8, 5uLL), v23));
  v27 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v9, 5uLL), v24));
  v521 = v9;
  v522 = v10;
  v28 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v10.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v25, 0)));
  v29 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v10, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v30 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v31 = vbslq_s8(xmmword_29D2F1340, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v33 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v34 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v7.i8, 5uLL), v31));
  v35 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v7, 5uLL), v32));
  v525 = v7;
  v526 = v8;
  v36 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v8.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v33, 0)));
  v37 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v8, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v13.i64[0] = v11.u32[0];
  v13.i64[1] = v11.u32[1];
  v38 = v13;
  v13.i64[0] = v11.u32[2];
  v13.i64[1] = v11.u32[3];
  v39 = vbslq_s8(xmmword_29D2F1340, v38, 0);
  v40 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v41 = v13;
  v13.i64[0] = v12.u32[2];
  v13.i64[1] = v12.u32[3];
  v42 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v11.i8, 5uLL), v39));
  v43 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v11, 5uLL), v40));
  v44 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v12.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v41, 0)));
  v45 = vdupq_lane_s64(v18.i64[0], 0);
  v535 = vshlq_s16(vshlq_s16(vsubq_s16(v18, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v537 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v46 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v47 = vminq_s16(vminq_s16(v535, v537), v46);
  v539 = v46;
  v541 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v535, v537), v46), v541), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(v47, v541), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vzip1q_s16(v50, v51);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v52)), vceqzq_s16(v52));
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v26, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v544 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v533 = v29;
  v55 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v56 = vminq_s16(vminq_s16(v543, v544), v55);
  v545 = v55;
  v546 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v6.i64[0] = 0x8000800080008000;
  v6.i64[1] = 0x8000800080008000;
  v57 = vmaxq_s16(v50, v6);
  v6.i64[0] = 0x8000800080008000;
  v6.i64[1] = 0x8000800080008000;
  v58 = vminq_s16(v51, v6);
  v59 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v543, v544), v55), v546), xmmword_29D2F1150);
  v60 = vqtbl1q_s8(vminq_s16(v56, v546), xmmword_29D2F1150);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v57, v61);
  v64 = vminq_s16(v58, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v65)), vceqzq_s16(v65));
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v531 = v37;
  v67 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v68 = vminq_s16(vminq_s16(v547, v548), v67);
  v549 = v67;
  v550 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v69 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v547, v548), v67), v550), xmmword_29D2F1150);
  v70 = vqtbl1q_s8(vminq_s16(v68, v550), xmmword_29D2F1150);
  v71 = vpmaxq_s16(v69, v69);
  v72 = vpminq_s16(v70, v70);
  v73 = vmaxq_s16(v63, v71);
  v74 = vminq_s16(v64, v72);
  v75 = vzip1q_s16(v71, v72);
  v76 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v75)), vceqzq_s16(v75));
  v551 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v552 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v555 = v45;
  v529 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v12, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v553 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v554 = vshlq_s16(vshlq_s16(vsubq_s16(v529, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v77 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v551, v552), v553), v554), xmmword_29D2F1150);
  v78 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v551, v552), v553), v554), xmmword_29D2F1150);
  v79 = vpmaxq_s16(v77, v77);
  v80 = vpminq_s16(v78, v78);
  v81 = vmaxq_s16(v73, v79);
  v82 = vminq_s16(v74, v80);
  v83 = vzip1q_s16(v79, v80);
  v84 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v83)), vceqzq_s16(v83));
  v85 = vpmaxq_s16(v54, v54);
  v86 = vpmaxq_s16(v66, v66);
  v87 = vpmaxq_s16(v76, v76);
  v88 = vpmaxq_s16(v84, v84);
  v89 = vmaxq_s16(vmaxq_s16(v85, v86), vmaxq_s16(v87, v88));
  v90 = vclzq_s16(vsubq_s16(v81, v82));
  v37.i64[0] = 0xF000F000F000FLL;
  v37.i64[1] = 0xF000F000F000FLL;
  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v562 = v82;
  v563 = v81;
  v91 = vsubq_s16(vshlq_s16(v7, vsubq_s16(v37, v90)), v82);
  v92 = vsubq_s16(v53, v90);
  v93 = vcgtq_s16(v89, v92);
  v94 = vminq_s16(v92, v89);
  v564 = vandq_s8(v91, v93);
  v89.i64[0] = 0x8000800080008;
  v89.i64[1] = 0x8000800080008;
  v95 = vorrq_s8(vandq_s8(v93, v89), 0);
  v89.i64[0] = 0x3000300030003;
  v89.i64[1] = 0x3000300030003;
  v96 = vorrq_s8(vandq_s8(vceqzq_s16(v94), v89), v95);
  v97 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v86), v89), 0);
  v98 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v87), v89), 0);
  v558 = vsubq_s16(v94, v97);
  v559 = vsubq_s16(v94, v98);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v88), v89), 0);
  v560 = vsubq_s16(v94, v99);
  v561 = v94;
  v100 = vaddq_s16(v99, v98);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v85), v89), 0);
  v89.i64[0] = 0x4000400040004;
  v89.i64[1] = 0x4000400040004;
  v556 = vorrq_s8(vbicq_s8(v89, vceqq_s16(v100, vnegq_s16(vaddq_s16(v101, v97)))), v96);
  v557 = vsubq_s16(v94, v101);
  if (vmaxvq_s16(v94))
  {
    v496 = v11;
    v497 = v12;
    v102.i64[0] = 0xFFFF00000000;
    v102.i64[1] = 0xFFFF00000000;
    v103 = vsubq_s16(v555, vshlq_s16(vqtbl1q_s8(v555, xmmword_29D2F1140), v102));
    v104 = vsubq_s16(v27, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v27, xmmword_29D2F1140), v102)));
    v518 = v26;
    v519 = v27;
    v520 = v28;
    v513 = v96;
    v105 = vsubq_s16(v34, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v34, xmmword_29D2F1140), v102)));
    v514 = v34;
    v516 = v35;
    v517 = v36;
    v106 = vsubq_s16(v36, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v36, xmmword_29D2F1140), v102)));
    v107 = vshlq_s16(vsubq_s16(v35, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v35, xmmword_29D2F1140), v102))), xmmword_29D2F1360);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v18, vaddq_s16(vshlq_s16(vqtbl1q_s8(v18, xmmword_29D2F1140), v102), v103)), xmmword_29D2F1360), xmmword_29D2F1370);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v19, vaddq_s16(vshlq_s16(vqtbl1q_s8(v19, xmmword_29D2F1140), v102), v103)), xmmword_29D2F1360), xmmword_29D2F1370);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v20, vaddq_s16(vshlq_s16(vqtbl1q_s8(v20, xmmword_29D2F1140), v102), v103)), xmmword_29D2F1360), xmmword_29D2F1370);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v21, vaddq_s16(vshlq_s16(vqtbl1q_s8(v21, xmmword_29D2F1140), v102), v103)), xmmword_29D2F1360), xmmword_29D2F1370);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v26, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v26, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v113 = vshlq_s16(vshlq_s16(v104, xmmword_29D2F1360), xmmword_29D2F1370);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v28, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v28, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v533, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v533, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v116 = vshlq_s16(vshlq_s16(v105, xmmword_29D2F1360), xmmword_29D2F1370);
    v117 = vshlq_s16(v107, xmmword_29D2F1370);
    v118 = vshlq_s16(vshlq_s16(v106, xmmword_29D2F1360), xmmword_29D2F1370);
    v119 = vshlq_s16(vshlq_s16(vsubq_s16(v531, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v531, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v120 = vshlq_s16(vshlq_s16(vsubq_s16(v42, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v42, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v121 = vshlq_s16(vshlq_s16(vsubq_s16(v43, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v43, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v122 = vshlq_s16(vshlq_s16(vsubq_s16(v44, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v44, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v123 = vshlq_s16(vshlq_s16(vsubq_s16(v529, vaddq_s16(v103, vshlq_s16(vqtbl1q_s8(v529, xmmword_29D2F1140), v102))), xmmword_29D2F1360), xmmword_29D2F1370);
    v124 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v108, v109), v110), v111);
    v502 = v111;
    v499 = v108;
    v125 = vminq_s16(v108, v109);
    v126 = v113;
    v503 = v110;
    v127 = vqtbl1q_s8(v124, xmmword_29D2F1150);
    v128 = vqtbl1q_s8(vminq_s16(vminq_s16(v125, v110), v111), xmmword_29D2F1150);
    v129 = vpmaxq_s16(v127, v127);
    v130 = vpminq_s16(v128, v128);
    v131.i64[0] = 0x8000800080008000;
    v131.i64[1] = 0x8000800080008000;
    v132 = vmaxq_s16(v129, v131);
    v110.i64[0] = 0x8000800080008000;
    v110.i64[1] = 0x8000800080008000;
    v133 = vminq_s16(v130, v110);
    v134 = vzip1q_s16(v129, v130);
    v135.i64[0] = 0x10001000100010;
    v135.i64[1] = 0x10001000100010;
    v136 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v134)), vceqzq_s16(v134));
    v137 = vpmaxq_s16(v136, v136);
    v138 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v112, v113), v114), v115);
    v504 = v114;
    v505 = v117;
    v139 = vminq_s16(vminq_s16(v112, v113), v114);
    v140 = v115;
    v141 = vqtbl1q_s8(v138, xmmword_29D2F1150);
    v142 = vqtbl1q_s8(vminq_s16(v139, v115), xmmword_29D2F1150);
    v143 = vpmaxq_s16(v141, v141);
    v144 = vpminq_s16(v142, v142);
    v145 = vmaxq_s16(v132, v143);
    v146 = vminq_s16(v133, v144);
    v147 = vzip1q_s16(v143, v144);
    v148 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v147)), vceqzq_s16(v147));
    v149 = vpmaxq_s16(v148, v148);
    v506 = v116;
    v507 = v119;
    v508 = v118;
    v509 = v121;
    v150 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v116, v117), v118), v119), xmmword_29D2F1150);
    v151 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v116, v117), v118), v119), xmmword_29D2F1150);
    v152 = vpmaxq_s16(v150, v150);
    v153 = vpminq_s16(v151, v151);
    v154 = vmaxq_s16(v145, v152);
    v155 = vminq_s16(v146, v153);
    v156 = vzip1q_s16(v152, v153);
    v157 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v156)), vceqzq_s16(v156));
    v158 = vpmaxq_s16(v157, v157);
    v510 = v120;
    v511 = v123;
    v512 = v122;
    v159 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v120, v121), v122), v123), xmmword_29D2F1150);
    v160 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v120, v121), v122), v123), xmmword_29D2F1150);
    v161 = vpmaxq_s16(v159, v159);
    v162 = vpminq_s16(v160, v160);
    v163 = vmaxq_s16(v154, v161);
    v164 = vminq_s16(v155, v162);
    v165 = vzip1q_s16(v161, v162);
    v166 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v165)), vceqzq_s16(v165));
    v167 = vpmaxq_s16(v166, v166);
    v168 = vmaxq_s16(vmaxq_s16(v137, v149), vmaxq_s16(v158, v167));
    v169 = vclzq_s16(vsubq_s16(v163, v164));
    v170 = vsubq_s16(v135, v169);
    v171 = vcgtq_s16(v168, v170);
    v172 = vminq_s16(v170, v168);
    v122.i64[0] = 0x3000300030003;
    v122.i64[1] = 0x3000300030003;
    v173 = vmaxq_s16(vminq_s16(vsubq_s16(v172, v137), v122), 0);
    v174 = vmaxq_s16(vminq_s16(vsubq_s16(v172, v149), v122), 0);
    v175 = vmaxq_s16(vminq_s16(vsubq_s16(v172, v158), v122), 0);
    v121.i64[0] = 0x3000300030003;
    v121.i64[1] = 0x3000300030003;
    v176 = vmaxq_s16(vminq_s16(vsubq_s16(v172, v167), v122), 0);
    v158.i64[0] = 0x4000400040004;
    v158.i64[1] = 0x4000400040004;
    v177 = vbicq_s8(v158, vceqq_s16(vaddq_s16(v176, v175), vnegq_s16(vaddq_s16(v173, v174))));
    v158.i64[0] = 0x18001800180018;
    v158.i64[1] = 0x18001800180018;
    v178 = vbslq_s8(v171, v158, v135);
    v179 = vsubq_s16(v172, v174);
    v500 = vsubq_s16(v172, v175);
    v501 = vsubq_s16(v172, v176);
    v174.i64[0] = 0x7000700070007;
    v174.i64[1] = 0x7000700070007;
    v498 = vsubq_s16(v172, v173);
    v180 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v172, vceqzq_s16((*&v178 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v177, v177)), v498, v174), vshlq_n_s16(vaddq_s16(vaddq_s16(v500, v179), v501), 3uLL));
    v123.i64[0] = 0x8000800080008;
    v123.i64[1] = 0x8000800080008;
    v181 = vandq_s8(vaddq_s16(v556, v556), v123);
    v182 = vandq_s8(v513, v123);
    v123.i64[0] = 0x2000200020002;
    v123.i64[1] = 0x2000200020002;
    v183 = vandq_s8(vceqq_s16(vandq_s8(v513, v121), v123), v135);
    v184 = vceqzq_s16(v182);
    v185 = v560;
    v186 = v561;
    v187 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v561, v184), v183), v181), v557, v174);
    v188 = v558;
    v189 = v559;
    v190 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v187, vshlq_n_s16(vaddq_s16(vaddq_s16(v559, v558), v560), 3uLL)), v180).i64[0], 0);
    v191 = vaddvq_s16(v190);
    v193 = a5 < 2 || a6 == 0;
    if (v191)
    {
      v194.i64[0] = 0x3000300030003;
      v194.i64[1] = 0x3000300030003;
      v527 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v172), v194), v178), v177);
      v195.i64[0] = 0xF000F000F000FLL;
      v195.i64[1] = 0xF000F000F000FLL;
      v535 = vbslq_s8(v190, v499, v535);
      v537 = vbslq_s8(v190, v109, v537);
      v194.i64[0] = -1;
      v194.i64[1] = -1;
      v539 = vbslq_s8(v190, v503, v539);
      v541 = vbslq_s8(v190, v502, v541);
      v196 = vandq_s8(vsubq_s16(vshlq_s16(v194, vsubq_s16(v195, v169)), v164), v171);
      v543 = vbslq_s8(v190, v112, v543);
      v544 = vbslq_s8(v190, v126, v544);
      v545 = vbslq_s8(v190, v504, v545);
      v546 = vbslq_s8(v190, v140, v546);
      v547 = vbslq_s8(v190, v506, v547);
      v548 = vbslq_s8(v190, v505, v548);
      v549 = vbslq_s8(v190, v508, v549);
      v550 = vbslq_s8(v190, v507, v550);
      v551 = vbslq_s8(v190, v510, v551);
      v552 = vbslq_s8(v190, v509, v552);
      v553 = vbslq_s8(v190, v512, v553);
      v554 = vbslq_s8(v190, v511, v554);
      v188 = vbslq_s8(v190, v179, v558);
      v557 = vbslq_s8(v190, v498, v557);
      v558 = v188;
      v189 = vbslq_s8(v190, v500, v559);
      v185 = vbslq_s8(v190, v501, v560);
      v559 = v189;
      v560 = v185;
      v562 = vbslq_s8(v190, v164, v562);
      v563 = vbslq_s8(v190, v163, v563);
      v564 = vbslq_s8(v190, v196, v564);
      v186 = vbslq_s8(v190, v172, v561);
      v561 = v186;
      v197 = vbslq_s8(v190, v527, v556);
      v555 = vbslq_s8(v190, v103, v555);
      v556 = v197;
      v198 = v557;
    }

    else
    {
      v198 = v557;
      v197 = v556;
    }

    v201 = v518;
    v202 = v519;
    v203 = v520;
    v204 = v514;
    v205 = v516;
    v206 = v517;
    if (!v193)
    {
      v207 = vqtbl4q_s8(*v18.i8, xmmword_29D2F1160);
      v208 = vsubq_s16(v18, vqtbl4q_s8(*v18.i8, xmmword_29D2F10B0));
      v209 = vsubq_s16(v20, v207);
      v210 = vsubq_s16(v21, v207);
      v211.i64[0] = v533.i64[0];
      v211.i64[1] = v21.i64[1];
      v212 = vqtbl4q_s8(*v201.i8, xmmword_29D2F10B0);
      v565.val[0] = v518;
      v565.val[1] = v519;
      v565.val[2] = v520;
      v565.val[3] = v211;
      v213 = vsubq_s16(v519, vqtbl4q_s8(v565, xmmword_29D2F10F0));
      v214 = vsubq_s16(v520, vqtbl4q_s8(v565, xmmword_29D2F1160));
      v215 = vsubq_s16(v533, vqtbl4q_s8(v565, xmmword_29D2F1100));
      v216 = v531.i64[0];
      v217 = v21.i64[1];
      v565.val[1] = vqtbl4q_s8(*v204.i8, xmmword_29D2F10C0);
      v218 = vsubq_s16(v514, vqtbl4q_s8(*v204.i8, xmmword_29D2F1170));
      v219 = vsubq_s16(v516, vqtbl4q_s8(*v204.i8, xmmword_29D2F1180));
      v220 = vsubq_s16(v517, vqtbl4q_s8(*v204.i8, xmmword_29D2F10B0));
      v221 = v529.i64[0];
      v222 = v21.i64[1];
      v223 = vsubq_s16(v42, vqtbl4q_s8(*v42.i8, xmmword_29D2F1170));
      v224 = vsubq_s16(v43, vqtbl4q_s8(*v42.i8, xmmword_29D2F1120));
      v225 = vsubq_s16(v44, vqtbl4q_s8(*v42.i8, xmmword_29D2F10B0));
      v226.i64[0] = v210.i64[0];
      v226.i64[1] = v208.i64[0];
      v227 = vsubq_s16(v529, vqtbl4q_s8(*v42.i8, xmmword_29D2F10C0));
      v208.i64[0] = v210.i64[1];
      v228 = vshlq_s16(v226, xmmword_29D2F1360);
      v565.val[2] = vshlq_s16(v219, xmmword_29D2F1360);
      v229 = vshlq_s16(v220, xmmword_29D2F1360);
      v230 = vshlq_s16(vsubq_s16(v531, v565.val[1]), xmmword_29D2F1360);
      v231 = vshlq_s16(v223, xmmword_29D2F1360);
      v232 = vshlq_s16(v224, xmmword_29D2F1360);
      v233 = vshlq_s16(v225, xmmword_29D2F1360);
      v234 = vshlq_s16(vshlq_s16(v208, xmmword_29D2F1360), xmmword_29D2F1370);
      v235 = vshlq_s16(vshlq_s16(vsubq_s16(v19, vqtbl4q_s8(*v18.i8, xmmword_29D2F10C0)), xmmword_29D2F1360), xmmword_29D2F1370);
      v236 = vshlq_s16(vshlq_s16(v209, xmmword_29D2F1360), xmmword_29D2F1370);
      v237 = vshlq_s16(v228, xmmword_29D2F1370);
      v238 = vshlq_s16(vshlq_s16(vsubq_s16(v518, v212), xmmword_29D2F1360), xmmword_29D2F1370);
      v239 = vshlq_s16(vshlq_s16(v213, xmmword_29D2F1360), xmmword_29D2F1370);
      v240 = vshlq_s16(vshlq_s16(v214, xmmword_29D2F1360), xmmword_29D2F1370);
      v241 = vshlq_s16(vshlq_s16(v215, xmmword_29D2F1360), xmmword_29D2F1370);
      v242 = vshlq_s16(vshlq_s16(v218, xmmword_29D2F1360), xmmword_29D2F1370);
      v243 = vshlq_s16(v565.val[2], xmmword_29D2F1370);
      v244 = vshlq_s16(v229, xmmword_29D2F1370);
      v245 = vshlq_s16(v230, xmmword_29D2F1370);
      v246 = vshlq_s16(v231, xmmword_29D2F1370);
      v247 = vshlq_s16(v232, xmmword_29D2F1370);
      v248 = vshlq_s16(vshlq_s16(v227, xmmword_29D2F1360), xmmword_29D2F1370);
      v565.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v234, v235), v236), v237), xmmword_29D2F1150);
      v249 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v234, v235), v236), v237), xmmword_29D2F1150);
      v565.val[3] = vpmaxq_s16(v565.val[3], v565.val[3]);
      v250 = vpminq_s16(v249, v249);
      v227.i64[0] = 0x8000800080008000;
      v227.i64[1] = 0x8000800080008000;
      v251 = vmaxq_s16(v565.val[3], v227);
      v214.i64[0] = 0x8000800080008000;
      v214.i64[1] = 0x8000800080008000;
      v252 = vminq_s16(v250, v214);
      v253 = vzip1q_s16(v565.val[3], v250);
      v565.val[3].i64[0] = 0x10001000100010;
      v565.val[3].i64[1] = 0x10001000100010;
      v254 = vbicq_s8(vsubq_s16(v565.val[3], vclsq_s16(v253)), vceqzq_s16(v253));
      v255 = vpmaxq_s16(v254, v254);
      v256 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v238, v239), v240), v241), xmmword_29D2F1150);
      v565.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v238, v239), v240), v241), xmmword_29D2F1150);
      v257 = vpmaxq_s16(v256, v256);
      v565.val[2] = vpminq_s16(v565.val[2], v565.val[2]);
      v258 = vmaxq_s16(v251, v257);
      v259 = vminq_s16(v252, v565.val[2]);
      v260 = vzip1q_s16(v257, v565.val[2]);
      v261 = vbicq_s8(vsubq_s16(v565.val[3], vclsq_s16(v260)), vceqzq_s16(v260));
      v565.val[2] = vpmaxq_s16(v261, v261);
      v262 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v242, v243), v244), v245), xmmword_29D2F1150);
      v263 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v242, v243), v244), v245), xmmword_29D2F1150);
      v264 = vpmaxq_s16(v262, v262);
      v265 = vpminq_s16(v263, v263);
      v266 = vmaxq_s16(v258, v264);
      v267 = vminq_s16(v259, v265);
      v268 = vzip1q_s16(v264, v265);
      v269 = vbicq_s8(vsubq_s16(v565.val[3], vclsq_s16(v268)), vceqzq_s16(v268));
      v270 = vpmaxq_s16(v269, v269);
      v530 = v246;
      v532 = v248;
      v534 = vshlq_s16(v233, xmmword_29D2F1370);
      v271 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v246, v247), v534), v248), xmmword_29D2F1150);
      v272 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v246, v247), v534), v248), xmmword_29D2F1150);
      v273 = vpmaxq_s16(v271, v271);
      v274 = vpminq_s16(v272, v272);
      v275 = vmaxq_s16(v266, v273);
      v276 = vminq_s16(v267, v274);
      v277 = vzip1q_s16(v273, v274);
      v278 = vbicq_s8(vsubq_s16(v565.val[3], vclsq_s16(v277)), vceqzq_s16(v277));
      v279 = vpmaxq_s16(v278, v278);
      v280 = vmaxq_s16(vmaxq_s16(v255, v565.val[2]), vmaxq_s16(v270, v279));
      v528 = v275;
      v281 = vclzq_s16(vsubq_s16(v275, v276));
      v282 = vsubq_s16(v565.val[3], v281);
      v283 = vcgtq_s16(v280, v282);
      v284 = vminq_s16(v282, v280);
      v285.i64[0] = 0x3000300030003;
      v285.i64[1] = 0x3000300030003;
      v286 = vmaxq_s16(vminq_s16(vsubq_s16(v284, v255), v285), 0);
      v565.val[2] = vmaxq_s16(vminq_s16(vsubq_s16(v284, v565.val[2]), v285), 0);
      v287 = vmaxq_s16(vminq_s16(vsubq_s16(v284, v270), v285), 0);
      v288 = vmaxq_s16(vminq_s16(vsubq_s16(v284, v279), v285), 0);
      v289 = vsubq_s16(v284, v286);
      v290 = vsubq_s16(v284, v565.val[2]);
      v291 = vsubq_s16(v284, v288);
      v292 = vceqq_s16(vaddq_s16(v288, v287), vnegq_s16(vaddq_s16(v286, v565.val[2])));
      v286.i64[0] = 0x4000400040004;
      v286.i64[1] = 0x4000400040004;
      v293 = vbicq_s8(v286, v292);
      v565.val[2].i64[0] = 0x7000700070007;
      v565.val[2].i64[1] = 0x7000700070007;
      v515 = vsubq_s16(v284, v287);
      v294.i64[0] = 0x2000200020002;
      v294.i64[1] = 0x2000200020002;
      v295 = vandq_s8(vceqq_s16(vandq_s8(v556, v285), v294), v565.val[3]);
      v565.val[3].i64[0] = 0x8000800080008;
      v565.val[3].i64[1] = 0x8000800080008;
      v296 = vandq_s8(vaddq_s16(v556, v556), v565.val[3]);
      v297 = vceqzq_s16(vandq_s8(v556, v565.val[3]));
      v185 = v560;
      v186 = v561;
      v298 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v561, v297), v296), v295), v557, v565.val[2]);
      v188 = v558;
      v189 = v559;
      v299 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v298, vshlq_n_s16(vaddq_s16(vaddq_s16(v559, v558), v560), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v284, v283), vaddq_s16(v293, v293)), v289, v565.val[2]), vshlq_n_s16(vaddq_s16(vaddq_s16(v515, v290), v291), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v299))
      {
        v300.i64[0] = 0x9000900090009;
        v300.i64[1] = 0x9000900090009;
        v301 = vorrq_s8(vandq_s8(vceqzq_s16(v284), v294), vsubq_s16(vandq_s8(v283, v300), vmvnq_s8(v283)));
        v300.i64[0] = -1;
        v300.i64[1] = -1;
        v302 = vorrq_s8(v301, v293);
        v301.i64[0] = 0xF000F000F000FLL;
        v301.i64[1] = 0xF000F000F000FLL;
        v303 = vandq_s8(vsubq_s16(vshlq_s16(v300, vsubq_s16(v301, v281)), v276), v283);
        v188 = vbslq_s8(v299, v290, v558);
        v189 = vbslq_s8(v299, v515, v559);
        v185 = vbslq_s8(v299, v291, v560);
        v186 = vbslq_s8(v299, v284, v561);
        v554 = vbslq_s8(v299, v532, v554);
        v555 = vbslq_s8(v299, vextq_s8(v21, v21, 8uLL), v555);
        v535 = vbslq_s8(v299, v234, v535);
        v537 = vbslq_s8(v299, v235, v537);
        v197 = vbslq_s8(v299, v302, v556);
        v539 = vbslq_s8(v299, v236, v539);
        v541 = vbslq_s8(v299, v237, v541);
        v543 = vbslq_s8(v299, v238, v543);
        v544 = vbslq_s8(v299, v239, v544);
        v545 = vbslq_s8(v299, v240, v545);
        v546 = vbslq_s8(v299, v241, v546);
        v547 = vbslq_s8(v299, v242, v547);
        v548 = vbslq_s8(v299, v243, v548);
        v549 = vbslq_s8(v299, v244, v549);
        v550 = vbslq_s8(v299, v245, v550);
        v551 = vbslq_s8(v299, v530, v551);
        v552 = vbslq_s8(v299, v247, v552);
        v553 = vbslq_s8(v299, v534, v553);
        v562 = vbslq_s8(v299, v276, v562);
        v563 = vbslq_s8(v299, v528, v563);
        v564 = vbslq_s8(v299, v303, v564);
        v557 = vbslq_s8(v299, v289, v557);
        v558 = v188;
        v559 = v189;
        v560 = v185;
        v561 = v186;
        v556 = v197;
        v198 = v557;
      }

      else
      {
        v198 = v557;
        v197 = v556;
      }
    }

    v304 = vandq_s8(v564, vceqq_s16(v186, v198));
    v536 = vaddq_s16(v304, v535);
    v538 = vaddq_s16(v537, v304);
    v540 = vaddq_s16(v539, v304);
    v542 = vaddq_s16(v541, v304);
    v305 = vandq_s8(v564, vceqq_s16(v186, v188));
    v543 = vaddq_s16(v543, v305);
    v544 = vaddq_s16(v544, v305);
    v545 = vaddq_s16(v545, v305);
    v546 = vaddq_s16(v546, v305);
    v306 = vandq_s8(v564, vceqq_s16(v186, v189));
    v547 = vaddq_s16(v547, v306);
    v548 = vaddq_s16(v548, v306);
    v549 = vaddq_s16(v549, v306);
    v550 = vaddq_s16(v550, v306);
    v307 = vandq_s8(v564, vceqq_s16(v186, v185));
    v551 = vaddq_s16(v551, v307);
    v552 = vaddq_s16(v552, v307);
    v553 = vaddq_s16(v553, v307);
    v554 = vaddq_s16(v554, v307);
    v307.i64[0] = 0x8000800080008;
    v307.i64[1] = 0x8000800080008;
    v308.i64[0] = 0x3000300030003;
    v308.i64[1] = 0x3000300030003;
    v309.i64[0] = 0x2000200020002;
    v309.i64[1] = 0x2000200020002;
    v310 = vceqq_s16(vandq_s8(v197, v308), v309);
    v309.i64[0] = 0x10001000100010;
    v309.i64[1] = 0x10001000100010;
    v311 = vandq_s8(v310, v309);
    v309.i64[0] = 0x7000700070007;
    v309.i64[1] = 0x7000700070007;
    v312 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v186, vceqzq_s16(vandq_s8(v197, v307))), vandq_s8(vaddq_s16(v197, v197), v307)), v311), v198, v309), vshlq_n_s16(vaddq_s16(vaddq_s16(v189, v188), v185), 3uLL));
    v313 = vpaddq_s16(v312, v312);
    if ((vpaddq_s16(v313, v313).i16[0] + 71) > 0x3FF)
    {
      *a1 = v523;
      *(a1 + 16) = v524;
      *(a1 + 32) = v521;
      *(a1 + 48) = v522;
      *(a1 + 64) = v525;
      *(a1 + 80) = v526;
      v317 = (a1 + 96);
      v199 = 127;
      result = 128;
      *v317 = v496;
      v317[1] = v497;
    }

    else
    {
      v314 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v315 = 8 * (a1 & 7);
      if (v315)
      {
        v316 = *v314 & ~(-1 << v315);
      }

      else
      {
        v316 = 0;
      }

      *a2 = 0;
      v318 = ((v186.i8[0] - 1) & 0xF) << 15;
      if (!v186.i16[0])
      {
        v318 = 0;
      }

      if (v186.i16[1])
      {
        v319 = ((v186.i8[2] - 1) & 0xF) << 19;
      }

      else
      {
        v319 = 0;
      }

      if (v186.i16[2])
      {
        v320 = ((v186.i8[4] - 1) & 0xF) << 23;
      }

      else
      {
        v320 = 0;
      }

      v321 = v318 | v319;
      v322 = v555.i16[0] & 0x7FF | ((v555.i16[1] & 0x7FF) << 11) | ((v555.i16[2] & 0x3FF) << 22);
      v323 = v321 | v320 | v197.i8[0] & 0x1F | (32 * (v197.i8[2] & 0x1F)) & 0x83FF | ((v197.i8[4] & 0x1F) << 10);
      v324 = (v323 << v315) | v316;
      if (v315 >= 0x20)
      {
        *v314 = v324;
        v324 = v323 >> (-8 * (a1 & 7u));
      }

      v325 = (v315 + 32) & 0x38;
      v326 = v324 | (v322 << v325);
      if (v325 >= 0x20)
      {
        *(v314 + (((v315 + 32) >> 3) & 8)) = v326;
        v326 = v322 >> -v325;
      }

      v327 = vsubq_s16(v561, v557);
      v328 = vsubq_s16(v561, v558);
      v329 = vsubq_s16(v561, v559);
      v330 = vsubq_s16(v561, v560);
      *v327.i8 = vqmovn_u16(v327);
      *v328.i8 = vqmovn_u16(v328);
      *v329.i8 = vqmovn_u16(v329);
      *v330.i8 = vqmovn_u16(v330);
      v331 = vtrn1q_s8(v327, v328);
      v332 = vtrn2q_s8(v327, v328);
      v333 = vtrn1q_s8(v329, v330);
      v334 = vtrn2q_s8(v329, v330);
      v335 = vzip1q_s16(v332, v334);
      v336 = vtrn2q_s16(v332, v334);
      v332.i64[0] = vzip1q_s32(vzip1q_s16(v331, v333), v335).u64[0];
      v336.i64[0] = vzip1q_s32(vtrn2q_s16(v331, v333), v336).u64[0];
      v329.i64[0] = 0x202020202020202;
      v329.i64[1] = 0x202020202020202;
      v337 = vandq_s8(vmovl_s16(vtst_s16(*v556.i8, 0x4000400040004)), v329);
      v329.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v329.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v331.i64[0] = -1;
      v331.i64[1] = -1;
      v338 = vshlq_u8(v331, vorrq_s8(v337, v329));
      v339 = vmovl_u8(vand_s8(*v338.i8, *v332.i8));
      v340 = vmovl_u8(vand_s8(*&vextq_s8(v338, v338, 8uLL), *v336.i8));
      v341 = vmovl_u8(*v337.i8);
      v342 = vmovl_high_u8(v337);
      v343 = vpaddq_s16(vshlq_u16(v339, vtrn1q_s16(0, v341)), vshlq_u16(v340, vtrn1q_s16(0, v342)));
      v344 = vpaddq_s16(v341, v342);
      v345 = vmovl_u16(*v344.i8);
      v346 = vmovl_high_u16(v344);
      v347 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v345)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v346)));
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
      v355 = (v353.i64[0] << v315) | v326;
      if (v354.i64[0] + v315 >= 0x40)
      {
        v314[1] = v355;
        v355 = v353.i64[0] >> (-8 * (a1 & 7u));
        if (!v315)
        {
          v355 = 0;
        }
      }

      v356 = v354.i64[0] + (v315 | 0x40);
      v357 = v355 | (v353.i64[1] << v356);
      if ((v356 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v314 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v353.i64[1] >> -(v356 & 0x3F);
        if ((v356 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356 + v354.i64[1];
      v359.i64[0] = 0x8000800080008;
      v359.i64[1] = 0x8000800080008;
      v360.i64[0] = -1;
      v360.i64[1] = -1;
      v361 = vandq_s8(vextq_s8(vtstq_s16(v556, v359), 0, 8uLL), v561);
      v362.i64[0] = 0xF000F000F000FLL;
      v362.i64[1] = 0xF000F000F000FLL;
      v363 = vandq_s8(vshlq_u16(v360, vaddq_s16(v361, v362)), v564);
      v364 = vmovl_u16(*v361.i8);
      v365 = vpaddq_s32(vshlq_u32(vmovl_u16(*v363.i8), vtrn1q_s32(0, v364)), vmovl_high_u16(v363));
      v366 = vpaddq_s32(v364, vmovl_high_u16(v361));
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
      v371 = vpaddq_s64(vshlq_u64(v368, vzip1q_s64(0, v370)), vshlq_u64(v369, vzip1q_s64(0, v367)));
      v372 = vpaddq_s64(v370, v367);
      v373 = (v371.i64[0] << v358) | v357;
      if (v372.i64[0] + (v358 & 0x3F) >= 0x40)
      {
        *(v314 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v371.i64[0] >> -(v358 & 0x3F);
        if ((v358 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372.i64[0] + v358;
      v375 = v373 | (v371.i64[1] << v374);
      if ((v374 & 0x3F) + v372.i64[1] >= 0x40)
      {
        *(v314 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v371.i64[1] >> -(v374 & 0x3F);
        if ((v374 & 0x3F) == 0)
        {
          v375 = 0;
        }
      }

      v376 = v374 + v372.i64[1];
      v377 = vextq_s8(0, v557, 8uLL);
      v378.i64[0] = 0xF000F000F000FLL;
      v378.i64[1] = 0xF000F000F000FLL;
      v379.i64[0] = -1;
      v379.i64[1] = -1;
      v380 = vandq_s8(vshlq_u16(v379, vaddq_s16(v377, v378)), v536);
      v381 = vmovl_u16(*v377.i8);
      v382 = vmovl_high_u16(v377);
      v383 = vpaddq_s32(vmovl_u16(*v380.i8), vshlq_u32(vmovl_high_u16(v380), vtrn1q_s32(0, v382)));
      v384 = vpaddq_s32(v381, v382);
      v385.i64[0] = v383.u32[0];
      v385.i64[1] = v383.u32[1];
      v386 = v385;
      v385.i64[0] = v383.u32[2];
      v385.i64[1] = v383.u32[3];
      v387 = v385;
      v385.i64[0] = v384.u32[0];
      v385.i64[1] = v384.u32[1];
      v388 = v385;
      v385.i64[0] = v384.u32[2];
      v385.i64[1] = v384.u32[3];
      v389 = vpaddq_s64(vshlq_u64(v386, vzip1q_s64(0, v388)), vshlq_u64(v387, vzip1q_s64(0, v385)));
      v390 = vpaddq_s64(v388, v385);
      v391 = (v389.i64[0] << v376) | v375;
      if (v390.i64[0] + (v376 & 0x3F) >= 0x40)
      {
        *(v314 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
        v391 = v389.i64[0] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v391 = 0;
        }
      }

      v392 = v390.i64[0] + v376;
      v393 = v391 | (v389.i64[1] << v392);
      if ((v392 & 0x3F) + v390.i64[1] >= 0x40)
      {
        *(v314 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v389.i64[1] >> -(v392 & 0x3F);
        if ((v392 & 0x3F) == 0)
        {
          v393 = 0;
        }
      }

      v394 = v392 + v390.i64[1];
      v395.i64[0] = 0xF000F000F000FLL;
      v395.i64[1] = 0xF000F000F000FLL;
      v396.i64[0] = -1;
      v396.i64[1] = -1;
      v397 = vandq_s8(vshlq_u16(v396, vaddq_s16(v557, v395)), v538);
      v398 = vmovl_u16(*v557.i8);
      v399 = vmovl_high_u16(v557);
      v400 = vpaddq_s32(vshlq_u32(vmovl_u16(*v397.i8), vtrn1q_s32(0, v398)), vshlq_u32(vmovl_high_u16(v397), vtrn1q_s32(0, v399)));
      v401 = vpaddq_s32(v398, v399);
      v402.i64[0] = v400.u32[0];
      v402.i64[1] = v400.u32[1];
      v403 = v402;
      v402.i64[0] = v400.u32[2];
      v402.i64[1] = v400.u32[3];
      v404 = v402;
      v402.i64[0] = v401.u32[0];
      v402.i64[1] = v401.u32[1];
      v405 = v402;
      v402.i64[0] = v401.u32[2];
      v402.i64[1] = v401.u32[3];
      v406 = vpaddq_s64(vshlq_u64(v403, vzip1q_s64(0, v405)), vshlq_u64(v404, vzip1q_s64(0, v402)));
      v407 = vpaddq_s64(v405, v402);
      v408 = (v406.i64[0] << v394) | v393;
      if (v407.i64[0] + (v394 & 0x3F) >= 0x40)
      {
        *(v314 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v408;
        v408 = v406.i64[0] >> -(v394 & 0x3F);
        if ((v394 & 0x3F) == 0)
        {
          v408 = 0;
        }
      }

      v409 = v407.i64[0] + v394;
      v410 = v408 | (v406.i64[1] << v409);
      if ((v409 & 0x3F) + v407.i64[1] >= 0x40)
      {
        *(v314 + ((v409 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v410;
        v410 = v406.i64[1] >> -(v409 & 0x3F);
        if ((v409 & 0x3F) == 0)
        {
          v410 = 0;
        }
      }

      v411 = v409 + v407.i64[1];
      v412.i64[0] = 0xF000F000F000FLL;
      v412.i64[1] = 0xF000F000F000FLL;
      v413.i64[0] = -1;
      v413.i64[1] = -1;
      v414 = vandq_s8(vshlq_u16(v413, vaddq_s16(v557, v412)), v540);
      v415 = vmovl_u16(*v557.i8);
      v416 = vmovl_high_u16(v557);
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
      v425 = (v423.i64[0] << v411) | v410;
      if (v424.i64[0] + (v411 & 0x3F) >= 0x40)
      {
        *(v314 + ((v411 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v423.i64[0] >> -(v411 & 0x3F);
        if ((v411 & 0x3F) == 0)
        {
          v425 = 0;
        }
      }

      v426 = v424.i64[0] + v411;
      v427 = v425 | (v423.i64[1] << v426);
      if ((v426 & 0x3F) + v424.i64[1] >= 0x40)
      {
        *(v314 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
        v427 = v423.i64[1] >> -(v426 & 0x3F);
        if ((v426 & 0x3F) == 0)
        {
          v427 = 0;
        }
      }

      v428 = v426 + v424.i64[1];
      v429.i64[0] = 0xF000F000F000FLL;
      v429.i64[1] = 0xF000F000F000FLL;
      v430.i64[0] = -1;
      v430.i64[1] = -1;
      v431 = vandq_s8(vshlq_u16(v430, vaddq_s16(v557, v429)), v542);
      v432 = vmovl_u16(*v557.i8);
      v433 = vmovl_high_u16(v557);
      v434 = vpaddq_s32(vshlq_u32(vmovl_u16(*v431.i8), vtrn1q_s32(0, v432)), vshlq_u32(vmovl_high_u16(v431), vtrn1q_s32(0, v433)));
      v435 = vpaddq_s32(v432, v433);
      v436.i64[0] = v434.u32[0];
      v436.i64[1] = v434.u32[1];
      v437 = v436;
      v436.i64[0] = v434.u32[2];
      v436.i64[1] = v434.u32[3];
      v438 = v436;
      v436.i64[0] = v435.u32[0];
      v436.i64[1] = v435.u32[1];
      v439 = v436;
      v436.i64[0] = v435.u32[2];
      v436.i64[1] = v435.u32[3];
      v440 = vpaddq_s64(vshlq_u64(v437, vzip1q_s64(0, v439)), vshlq_u64(v438, vzip1q_s64(0, v436)));
      v441 = vpaddq_s64(v439, v436);
      v442 = (v440.i64[0] << v428) | v427;
      if (v441.i64[0] + (v428 & 0x3F) >= 0x40)
      {
        *(v314 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
        v442 = v440.i64[0] >> -(v428 & 0x3F);
        if ((v428 & 0x3F) == 0)
        {
          v442 = 0;
        }
      }

      v443 = v441.i64[1];
      v444 = v441.i64[0] + v428;
      v445 = (v441.i64[0] + v428) & 0x3F;
      v446 = v442 | (v440.i64[1] << v444);
      if ((v445 + v441.i64[1]) >= 0x40)
      {
        *(v314 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
        v446 = v440.i64[1] >> -v445;
        if (!v445)
        {
          v446 = 0;
        }
      }

      v447 = 0;
      v448.i64[0] = 0xF000F000F000FLL;
      v448.i64[1] = 0xF000F000F000FLL;
      v449.i64[0] = -1;
      v449.i64[1] = -1;
      v450 = v444 + v443;
      do
      {
        v451 = vandq_s8(vshlq_u16(v449, vaddq_s16(v558, v448)), *(&v543 + v447));
        v452 = vmovl_u16(*v558.i8);
        v453 = vmovl_high_u16(v558);
        v454 = vpaddq_s32(vshlq_u32(vmovl_u16(*v451.i8), vtrn1q_s32(0, v452)), vshlq_u32(vmovl_high_u16(v451), vtrn1q_s32(0, v453)));
        v455 = vpaddq_s32(v452, v453);
        v456.i64[0] = v454.u32[0];
        v456.i64[1] = v454.u32[1];
        v457 = v456;
        v456.i64[0] = v454.u32[2];
        v456.i64[1] = v454.u32[3];
        v458 = v456;
        v456.i64[0] = v455.u32[0];
        v456.i64[1] = v455.u32[1];
        v459 = v456;
        v456.i64[0] = v455.u32[2];
        v456.i64[1] = v455.u32[3];
        v460 = vpaddq_s64(vshlq_u64(v457, vzip1q_s64(0, v459)), vshlq_u64(v458, vzip1q_s64(0, v456)));
        v461 = vpaddq_s64(v459, v456);
        v462 = (v460.i64[0] << v450) | v446;
        if (v461.i64[0] + (v450 & 0x3F) >= 0x40)
        {
          *(v314 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
          v462 = v460.i64[0] >> -(v450 & 0x3F);
          if ((v450 & 0x3F) == 0)
          {
            v462 = 0;
          }
        }

        v463 = v461.i64[0] + v450;
        v446 = v462 | (v460.i64[1] << v463);
        if ((v463 & 0x3F) + v461.i64[1] >= 0x40)
        {
          *(v314 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
          v446 = v460.i64[1] >> -(v463 & 0x3F);
          if ((v463 & 0x3F) == 0)
          {
            v446 = 0;
          }
        }

        v450 = v463 + v461.i64[1];
        v447 += 16;
      }

      while (v447 != 64);
      v464 = 0;
      v465.i64[0] = 0xF000F000F000FLL;
      v465.i64[1] = 0xF000F000F000FLL;
      v466.i64[0] = -1;
      v466.i64[1] = -1;
      do
      {
        v467 = vandq_s8(vshlq_u16(v466, vaddq_s16(v559, v465)), *(&v547 + v464));
        v468 = vmovl_u16(*v559.i8);
        v469 = vmovl_high_u16(v559);
        v470 = vpaddq_s32(vshlq_u32(vmovl_u16(*v467.i8), vtrn1q_s32(0, v468)), vshlq_u32(vmovl_high_u16(v467), vtrn1q_s32(0, v469)));
        v471 = vpaddq_s32(v468, v469);
        v472.i64[0] = v470.u32[0];
        v472.i64[1] = v470.u32[1];
        v473 = v472;
        v472.i64[0] = v470.u32[2];
        v472.i64[1] = v470.u32[3];
        v474 = v472;
        v472.i64[0] = v471.u32[0];
        v472.i64[1] = v471.u32[1];
        v475 = v472;
        v472.i64[0] = v471.u32[2];
        v472.i64[1] = v471.u32[3];
        v476 = vpaddq_s64(vshlq_u64(v473, vzip1q_s64(0, v475)), vshlq_u64(v474, vzip1q_s64(0, v472)));
        v477 = vpaddq_s64(v475, v472);
        v478 = (v476.i64[0] << v450) | v446;
        if (v477.i64[0] + (v450 & 0x3F) >= 0x40)
        {
          *(v314 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
          v478 = v476.i64[0] >> -(v450 & 0x3F);
          if ((v450 & 0x3F) == 0)
          {
            v478 = 0;
          }
        }

        v479 = v477.i64[0] + v450;
        v446 = v478 | (v476.i64[1] << v479);
        if ((v479 & 0x3F) + v477.i64[1] >= 0x40)
        {
          *(v314 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
          v446 = v476.i64[1] >> -(v479 & 0x3F);
          if ((v479 & 0x3F) == 0)
          {
            v446 = 0;
          }
        }

        v450 = v479 + v477.i64[1];
        v464 += 16;
      }

      while (v464 != 64);
      v480 = 0;
      v481.i64[0] = 0xF000F000F000FLL;
      v481.i64[1] = 0xF000F000F000FLL;
      v482.i64[0] = -1;
      v482.i64[1] = -1;
      do
      {
        v483 = vandq_s8(vshlq_u16(v482, vaddq_s16(v560, v481)), *(&v551 + v480));
        v484 = vmovl_u16(*v560.i8);
        v485 = vmovl_high_u16(v560);
        v486 = vpaddq_s32(vshlq_u32(vmovl_u16(*v483.i8), vtrn1q_s32(0, v484)), vshlq_u32(vmovl_high_u16(v483), vtrn1q_s32(0, v485)));
        v487 = vpaddq_s32(v484, v485);
        v488.i64[0] = v486.u32[0];
        v488.i64[1] = v486.u32[1];
        v489 = v488;
        v488.i64[0] = v486.u32[2];
        v488.i64[1] = v486.u32[3];
        v490 = v488;
        v488.i64[0] = v487.u32[0];
        v488.i64[1] = v487.u32[1];
        v491 = v488;
        v488.i64[0] = v487.u32[2];
        v488.i64[1] = v487.u32[3];
        v492 = vpaddq_s64(vshlq_u64(v489, vzip1q_s64(0, v491)), vshlq_u64(v490, vzip1q_s64(0, v488)));
        v493 = vpaddq_s64(v491, v488);
        v494 = (v492.i64[0] << v450) | v446;
        if (v493.i64[0] + (v450 & 0x3F) >= 0x40)
        {
          *(v314 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v494;
          v494 = v492.i64[0] >> -(v450 & 0x3F);
          if ((v450 & 0x3F) == 0)
          {
            v494 = 0;
          }
        }

        v495 = v493.i64[0] + v450;
        v446 = v494 | (v492.i64[1] << v495);
        if ((v495 & 0x3F) + v493.i64[1] >= 0x40)
        {
          *(v314 + ((v495 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
          v446 = v492.i64[1] >> -(v495 & 0x3F);
          if ((v495 & 0x3F) == 0)
          {
            v446 = 0;
          }
        }

        v450 = v495 + v493.i64[1];
        v480 += 16;
      }

      while (v480 != 64);
      if ((v450 & 0x3F) != 0)
      {
        *(v314 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v446;
      }

      result = (v450 - v315 + 7) >> 3;
      v199 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v199 = 3;
    result = 4;
  }

  *a2 = v199;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 4 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 6 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 4 * a2 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 6 * a2 + 64), a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v19 & 7);
  v5 = 11;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v18[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 22 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 11;
    do
    {
      v11 = 64 - v6;
      if (64 - v6 >= v10)
      {
        v11 = v10;
      }

      v12 = v11 + v6;
      v2 += v12 >> 6;
      v6 = v12 & 0x3F;
      v10 -= v11;
    }

    while (v10);
    v9 = v6 - v4 + (v2 << 6);
  }

  if (v9 - 23 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v13 = 0;
    v14 = 10;
    do
    {
      v15 = 64 - v6;
      if (64 - v6 >= v14)
      {
        v15 = v14;
      }

      *&v18[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
      v13 += v15;
      v16 = v15 + v6;
      v2 += v16 >> 6;
      v6 = v16 & 0x3F;
      v14 -= v15;
    }

    while (v14);
  }

  result = 0.0;
  *a1 = 0;
  *(a1 + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 127)
  {
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
    *v15 = v9;
    v15[1] = v10;
    *v16 = v11;
    v16[1] = v12;
    v16 += 2;
    *v16 = v13;
    v16[1] = v14;
    return 128;
  }

  else if (a4 == 3)
  {
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
  }

  else if (a4)
  {
    v17 = 8 * (a3 & 7);
    v18 = a3 & 0xFFFFFFFFFFFFFFF8;
    v19 = v17 + 32;
    v20 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v17;
    if (v17 >= 0x21)
    {
      v20 |= *(v18 + 8) << (-8 * (a3 & 7u));
    }

    v21 = v17 | 0x40;
    HIWORD(v22) = 3;
    LOWORD(v22) = v20 & 0x1F;
    WORD1(v22) = (v20 >> 5) & 0x1F;
    WORD2(v22) = (v20 >> 10) & 0x1F;
    v23.i64[0] = 0x3000300030003;
    v23.i64[1] = 0x3000300030003;
    v24.i32[0] = v20 >> 15;
    v24.i32[1] = v20 >> 19;
    v25 = vadd_s32(vand_s8(v24, 0xF0000000FLL), 0x100000001);
    LOWORD(v26) = v25.i16[0];
    WORD1(v26) = v25.i16[2];
    HIDWORD(v26) = (((v20 >> 23) & 0xF) + 1);
    v27 = v19 & 0x38;
    v28 = (v18 + ((v19 >> 3) & 8));
    v29 = *v28 >> (v19 & 0x38);
    if (v27 >= 0x21)
    {
      v29 |= v28[1] << -v27;
    }

    v30 = (8 * (a3 & 7)) | 0x400;
    v31 = vdupq_lane_s64(v22, 0);
    v32 = vandq_s8(v31, v23);
    v33 = vbicq_s8(vdupq_lane_s64(v26, 0), vceqq_s16(v32, v23));
    v34 = vmovl_s16(vtst_s16(v22, 0x4000400040004));
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(v34, v35);
    if (vmaxvq_s8(v36) < 1)
    {
      v44 = 0;
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v61 = v33;
      v60 = v33;
      v59 = v33;
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      v436 = v63;
      v437 = v63;
      v58 = v33;
      v438 = v63;
    }

    else
    {
      v37 = vmovl_u8(*&vpaddq_s8(v36, v36));
      v38 = vmovl_u16(*&vpaddq_s16(v37, v37));
      v39 = vpaddq_s32(v38, v38).u64[0];
      v40.i64[0] = v39;
      v40.i64[1] = HIDWORD(v39);
      v41 = v40;
      v42 = vaddvq_s64(v40);
      v43 = v42 <= 0x80 && v30 >= v21 + v42;
      v44 = !v43;
      v45 = 0uLL;
      if (v43)
      {
        v46 = vaddq_s64(vdupq_n_s64(v17), vzip1q_s64(0, v41));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v18 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(v18 + 8), 0), vnegq_s64(v46)));
        if (v17 + v42 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v18 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(*(v18 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v45);
        }

        v21 += v42;
      }

      v47 = vzip1_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
      v48.i64[0] = v47.u32[0];
      v48.i64[1] = v47.u32[1];
      v49 = vshlq_u64(v45, vnegq_s64(v48));
      v50 = vuzp1q_s32(vzip1q_s64(v45, v49), vzip2q_s64(v45, v49));
      v51 = vshlq_u32(v50, vnegq_s32((*&v37 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v52 = vuzp1q_s16(vzip1q_s32(v50, v51), vzip2q_s32(v50, v51));
      v53 = vshlq_u16(v52, vnegq_s16((*&v36 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v54 = vuzp1q_s8(vzip1q_s16(v52, v53), vzip2q_s16(v52, v53));
      v53.i64[0] = 0x101010101010101;
      v53.i64[1] = 0x101010101010101;
      v55 = vshlq_s8(v53, v36);
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v56 = vqtbl1q_s8(vandq_s8(vaddq_s8(v55, v53), v54), xmmword_29D2F0F70);
      *v55.i8 = vdup_lane_s32(*v56.i8, 0);
      *v53.i8 = vdup_lane_s32(*v56.i8, 1);
      v57 = vdupq_laneq_s32(v56, 2).u64[0];
      v56.i64[0] = vdupq_laneq_s32(v56, 3).u64[0];
      v58 = vsubw_s8(v33, *v55.i8);
      v59 = vsubw_s8(v33, *v53.i8);
      v60 = vsubw_s8(v33, v57);
      v61 = vsubw_s8(v33, *v56.i8);
      v436 = vmovl_s8(vceqz_s8(*v53.i8));
      v437 = vmovl_s8(vceqz_s8(v57));
      v438 = vmovl_s8(vceqz_s8(*v55.i8));
      v62 = vmovl_s8(vceqz_s8(*v56.i8));
    }

    v64.i64[0] = 0x8000800080008;
    v64.i64[1] = 0x8000800080008;
    v65 = 0uLL;
    v439 = vandq_s8(vextq_s8(vtstq_s16(v31, v64), 0, 8uLL), v33);
    v66 = vmovl_u16(*&vpaddq_s16(v439, v439));
    v67 = vpaddq_s32(v66, v66).u64[0];
    v68.i64[0] = v67;
    v68.i64[1] = HIDWORD(v67);
    v69 = v68;
    v70 = vaddvq_s64(v68);
    v71 = v21 + v70;
    if (v70 <= 0x80 && v30 >= v71)
    {
      v73 = v21 & 0x3F;
      v74 = vaddq_s64(vdupq_n_s64(v73), vzip1q_s64(0, v69));
      v75 = (v18 + 8 * (v21 >> 6));
      v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v75, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v74)), vshlq_u64(vdupq_lane_s64(v75->i64[0], 0), vnegq_s64(v74)));
      if (v73 + v70 >= 0x81)
      {
        v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v75[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v74)), vshlq_u64(vdupq_laneq_s64(v75[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v74))), v65);
      }

      v21 = v71;
    }

    else
    {
      v44 = 1;
    }

    v76 = v31.i8[0] & 3;
    if (v76 == 2)
    {
      v77 = v21 + 16;
      if (v30 >= v21 + 8)
      {
        v21 += 8;
      }

      else
      {
        v44 = 1;
        v77 = v21 + 8;
      }

      if (v30 >= v77)
      {
        v21 = v77;
      }

      else
      {
        v44 = 1;
      }
    }

    v78 = 0uLL;
    v431 = vextq_s8(0, v58, 8uLL);
    v79 = vmovl_u16(*&vpaddq_s16(v431, v431));
    v80 = vpaddq_s32(v79, v79).u64[0];
    v81.i64[0] = v80;
    v81.i64[1] = HIDWORD(v80);
    v82 = v81;
    v83 = vaddvq_s64(v81);
    v84 = v21 + v83;
    if (v83 <= 0x80 && v30 >= v84)
    {
      v87 = v21 & 0x3F;
      v88 = vaddq_s64(vdupq_n_s64(v87), vzip1q_s64(0, v82));
      v89 = (v18 + 8 * (v21 >> 6));
      v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
      if (v87 + v83 >= 0x81)
      {
        v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
      }

      v21 = v84;
    }

    else
    {
      v44 = 1;
      v86 = 0uLL;
    }

    v432 = v58;
    v90 = vmovl_u16(*&vpaddq_s16(v58, v58));
    v91 = vpaddq_s32(v90, v90).u64[0];
    v92.i64[0] = v91;
    v92.i64[1] = HIDWORD(v91);
    v93 = v92;
    v94 = vaddvq_s64(v92);
    v95 = v21 + v94;
    if (v94 <= 0x80 && v30 >= v95)
    {
      v97 = v21 & 0x3F;
      v98 = vaddq_s64(vdupq_n_s64(v97), vzip1q_s64(0, v93));
      v99 = (v18 + 8 * (v21 >> 6));
      v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
      if (v97 + v94 >= 0x81)
      {
        v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v78);
      }

      v21 = v95;
    }

    else
    {
      v44 = 1;
    }

    v100 = v21 + v94;
    v101 = 0uLL;
    if (v94 <= 0x80 && v30 >= v100)
    {
      v104 = v21 & 0x3F;
      v105 = vaddq_s64(vdupq_n_s64(v104), vzip1q_s64(0, v93));
      v106 = (v18 + 8 * (v21 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v104 + v94 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v21 = v100;
    }

    else
    {
      v44 = 1;
      v103 = 0uLL;
    }

    v107 = v21 + v94;
    if (v94 <= 0x80 && v30 >= v107)
    {
      v109 = v21 & 0x3F;
      v110 = vaddq_s64(vdupq_n_s64(v109), vzip1q_s64(0, v93));
      v111 = (v18 + 8 * (v21 >> 6));
      v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
      if (v109 + v94 >= 0x81)
      {
        v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v101);
      }

      v21 = v107;
    }

    else
    {
      v44 = 1;
    }

    v112 = vmovl_u16(*&vpaddq_s16(v59, v59));
    v113 = vpaddq_s32(v112, v112).u64[0];
    v114.i64[0] = v113;
    v114.i64[1] = HIDWORD(v113);
    v115 = v114;
    v116 = vaddvq_s64(v114);
    v117 = v21 + v116;
    v118 = 0uLL;
    if (v116 <= 0x80 && v30 >= v117)
    {
      v121 = v21 & 0x3F;
      v122 = vaddq_s64(vdupq_n_s64(v121), vzip1q_s64(0, v115));
      v123 = (v18 + 8 * (v21 >> 6));
      v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
      if (v121 + v116 >= 0x81)
      {
        v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
      }

      v21 = v117;
    }

    else
    {
      v44 = 1;
      v120 = 0uLL;
    }

    v124 = v21 + v116;
    if (v116 <= 0x80 && v30 >= v124)
    {
      v126 = v21 & 0x3F;
      v127 = vaddq_s64(vdupq_n_s64(v126), vzip1q_s64(0, v115));
      v128 = (v18 + 8 * (v21 >> 6));
      v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v126 + v116 >= 0x81)
      {
        v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v118);
      }

      v21 = v124;
    }

    else
    {
      v44 = 1;
    }

    v129 = 0uLL;
    if (v116 > 0x80 || (v130 = v21 + v116, v30 < v21 + v116))
    {
      v44 = 1;
      v130 = v21;
      v134 = 0uLL;
    }

    else
    {
      v131 = v21 & 0x3F;
      v132 = vaddq_s64(vdupq_n_s64(v131), vzip1q_s64(0, v115));
      v133 = (v18 + 8 * (v21 >> 6));
      v134 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v133, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v132)), vshlq_u64(vdupq_lane_s64(v133->i64[0], 0), vnegq_s64(v132)));
      if (v131 + v116 >= 0x81)
      {
        v134 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v133[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v132)), vshlq_u64(vdupq_laneq_s64(v133[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v132))), v134);
      }
    }

    if (v116 > 0x80 || (v135 = v130 + v116, v30 < v130 + v116))
    {
      v44 = 1;
      v135 = v130;
    }

    else
    {
      v136 = vaddq_s64(vdupq_n_s64(v130 & 0x3F), vzip1q_s64(0, v115));
      v137 = (v18 + 8 * (v130 >> 6));
      v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
      if ((v130 & 0x3F) + v116 >= 0x81)
      {
        v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v129);
      }
    }

    v138 = vmovl_u16(*&vpaddq_s16(v60, v60));
    v139 = vpaddq_s32(v138, v138).u64[0];
    v140.i64[0] = v139;
    v140.i64[1] = HIDWORD(v139);
    v141 = v140;
    v142 = vaddvq_s64(v140);
    v143 = v142;
    v144 = 0uLL;
    if (v142 > 0x80 || (v145 = v135 + v142, v30 < v135 + v142))
    {
      v44 = 1;
      v145 = v135;
      v148 = 0uLL;
    }

    else
    {
      v146 = vaddq_s64(vdupq_n_s64(v135 & 0x3F), vzip1q_s64(0, v141));
      v147 = (v18 + 8 * (v135 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if ((v135 & 0x3F) + v143 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    if (v143 > 0x80 || (v149 = v145 + v143, v30 < v145 + v143))
    {
      v44 = 1;
      v149 = v145;
    }

    else
    {
      v150 = vaddq_s64(vdupq_n_s64(v145 & 0x3F), vzip1q_s64(0, v141));
      v151 = (v18 + 8 * (v145 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
      if ((v145 & 0x3F) + v143 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v144);
      }
    }

    v152 = 0uLL;
    if (v143 > 0x80 || (v153 = v149 + v143, v30 < v149 + v143))
    {
      v44 = 1;
      v153 = v149;
      v157 = 0uLL;
    }

    else
    {
      v154 = v149 & 0x3F;
      v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v141));
      v156 = (v18 + 8 * (v149 >> 6));
      v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
      if (v154 + v143 >= 0x81)
      {
        v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
      }
    }

    if (v143 > 0x80 || (v158 = v153 + v143, v30 < v153 + v143))
    {
      v44 = 1;
      v158 = v153;
    }

    else
    {
      v159 = v153 & 0x3F;
      v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v141));
      v161 = (v18 + 8 * (v153 >> 6));
      v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
      if (v159 + v143 >= 0x81)
      {
        v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v152);
      }
    }

    v162 = vmovl_u16(*&vpaddq_s16(v61, v61));
    v163 = vpaddq_s32(v162, v162).u64[0];
    v164.i64[0] = v163;
    v164.i64[1] = HIDWORD(v163);
    v165 = v164;
    v166 = vaddvq_s64(v164);
    v167 = v166;
    v168 = 0uLL;
    if (v166 > 0x80 || (v169 = v158 + v166, v30 < v158 + v166))
    {
      v44 = 1;
      v169 = v158;
      v173 = 0uLL;
    }

    else
    {
      v170 = v158 & 0x3F;
      v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v165));
      v172 = (v18 + 8 * (v158 >> 6));
      v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
      if (v170 + v166 >= 0x81)
      {
        v173 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
      }
    }

    v434 = v60;
    v435 = v61;
    v433 = v59;
    if (v166 > 0x80 || (v174 = v169 + v166, v30 < v169 + v166))
    {
      v44 = 1;
      v174 = v169;
    }

    else
    {
      v175 = v169 & 0x3F;
      v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v165));
      v177 = (v18 + 8 * (v169 >> 6));
      v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
      if (v175 + v166 >= 0x81)
      {
        v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v168);
      }
    }

    if (v166 > 0x80 || (v178 = v174 + v166, v30 < v174 + v166))
    {
      v44 = 1;
      v178 = v174;
      v182 = 0uLL;
    }

    else
    {
      v179 = v174 & 0x3F;
      v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v165));
      v181 = (v18 + 8 * (v174 >> 6));
      v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
      if (v179 + v167 >= 0x81)
      {
        v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v182);
      }
    }

    if (v167 > 0x80 || v30 < v178 + v167)
    {
      goto LABEL_142;
    }

    v183 = vaddq_s64(vdupq_n_s64(v178 & 0x3F), vzip1q_s64(0, v165));
    v184 = (v18 + 8 * (v178 >> 6));
    v185 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v184, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v183)), vshlq_u64(vdupq_lane_s64(v184->i64[0], 0), vnegq_s64(v183)));
    if ((v178 & 0x3F) + v167 >= 0x81)
    {
      v185 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v184[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v183)), vshlq_u64(vdupq_laneq_s64(v184[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v183))), v185);
    }

    if ((v44 & 1) != 0 || v30 + 8 * (a4 + 1) - (v178 + v167) - 1024 >= 9 || v76 == 2)
    {
LABEL_142:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
      return 0;
    }

    else
    {
      v430 = v31;
      v186 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
      v187 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
      v188 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
      v189 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
      v190 = vzip1_s32(*v138.i8, *&vextq_s8(v138, v138, 8uLL));
      v191 = vzip1_s32(*v162.i8, *&vextq_s8(v162, v162, 8uLL));
      v192.i64[0] = v186.u32[0];
      v192.i64[1] = v186.u32[1];
      v193 = vshlq_u64(v65, vnegq_s64(v192));
      v194 = vzip2q_s64(v65, v193);
      v424 = vzip1q_s64(v65, v193);
      v192.i64[0] = v187.u32[0];
      v192.i64[1] = v187.u32[1];
      v195 = vshlq_u64(v86, vnegq_s64(v192));
      v422 = vzip2q_s64(v86, v195);
      v196 = vzip1q_s64(v86, v195);
      v192.i64[0] = v188.u32[0];
      v192.i64[1] = v188.u32[1];
      v197 = vnegq_s64(v192);
      v198 = vshlq_u64(v78, v197);
      v199 = vzip2q_s64(v78, v198);
      v200 = vzip1q_s64(v78, v198);
      v201 = vshlq_u64(v103, v197);
      v202 = vzip2q_s64(v103, v201);
      v203 = vzip1q_s64(v103, v201);
      v204 = vshlq_u64(v101, v197);
      v205 = vzip2q_s64(v101, v204);
      v206 = vzip1q_s64(v101, v204);
      v192.i64[0] = v189.u32[0];
      v192.i64[1] = v189.u32[1];
      v207 = vnegq_s64(v192);
      v208 = vshlq_u64(v120, v207);
      v209 = vzip2q_s64(v120, v208);
      v210 = vzip1q_s64(v120, v208);
      v211 = vshlq_u64(v118, v207);
      v212 = vzip2q_s64(v118, v211);
      v213 = vzip1q_s64(v118, v211);
      v214 = vshlq_u64(v134, v207);
      v215 = vzip2q_s64(v134, v214);
      v216 = vzip1q_s64(v134, v214);
      v217 = vshlq_u64(v129, v207);
      v218 = vzip2q_s64(v129, v217);
      v219 = vzip1q_s64(v129, v217);
      v192.i64[0] = v190.u32[0];
      v192.i64[1] = v190.u32[1];
      v220 = vnegq_s64(v192);
      v221 = vshlq_u64(v148, v220);
      v428 = v62;
      v429 = v32;
      v222 = vzip2q_s64(v148, v221);
      v223 = vzip1q_s64(v148, v221);
      v224 = vshlq_u64(v144, v220);
      v225 = vzip2q_s64(v144, v224);
      v226 = vzip1q_s64(v144, v224);
      v227 = vshlq_u64(v157, v220);
      v228 = vzip2q_s64(v157, v227);
      v229 = vzip1q_s64(v157, v227);
      v230 = vshlq_u64(v152, v220);
      v231 = vzip2q_s64(v152, v230);
      v232 = vzip1q_s64(v152, v230);
      v192.i64[0] = v191.u32[0];
      v192.i64[1] = v191.u32[1];
      v427 = vnegq_s64(v192);
      v233 = vshlq_u64(v173, v427);
      v234 = vzip2q_s64(v173, v233);
      v235 = vzip1q_s64(v173, v233);
      v236 = vshlq_u64(v168, v427);
      v237 = vzip2q_s64(v168, v236);
      v238 = vzip1q_s64(v168, v236);
      v239 = vshlq_u64(v182, v427);
      v240 = vzip2q_s64(v182, v239);
      v241 = vzip1q_s64(v182, v239);
      v242 = vuzp1q_s32(v424, v194);
      v243 = vuzp1q_s32(v196, v422);
      v244 = vuzp1q_s32(v200, v199);
      v245 = vuzp1q_s32(v203, v202);
      v246 = vuzp1q_s32(v206, v205);
      v247 = vuzp1q_s32(v210, v209);
      v248 = vuzp1q_s32(v213, v212);
      v249 = vuzp1q_s32(v216, v215);
      v250 = vuzp1q_s32(v219, v218);
      v251 = vuzp1q_s32(v223, v222);
      v252 = vuzp1q_s32(v226, v225);
      v253 = vuzp1q_s32(v229, v228);
      v254 = vuzp1q_s32(v232, v231);
      v255 = vuzp1q_s32(v235, v234);
      v256 = vuzp1q_s32(v238, v237);
      v238.i64[0] = 0xFFFF0000FFFFLL;
      v238.i64[1] = 0xFFFF0000FFFFLL;
      v257 = vuzp1q_s32(v241, v240);
      v258 = vshlq_u32(v242, vnegq_s32(vandq_s8(v439, v238)));
      v423 = vzip1q_s32(v242, v258);
      v425 = vzip2q_s32(v242, v258);
      v258.i64[0] = 0xFFFF0000FFFFLL;
      v258.i64[1] = 0xFFFF0000FFFFLL;
      v259 = vshlq_u32(v243, vnegq_s32(vandq_s8(v431, v258)));
      v421 = vzip2q_s32(v243, v259);
      v260 = vzip1q_s32(v243, v259);
      v261 = vnegq_s32(vandq_s8(v432, v258));
      v262 = vshlq_u32(v244, v261);
      v263 = vzip2q_s32(v244, v262);
      v264 = vzip1q_s32(v244, v262);
      v265 = vshlq_u32(v245, v261);
      v420 = vzip2q_s32(v245, v265);
      v266 = vzip1q_s32(v245, v265);
      v267 = vshlq_u32(v246, v261);
      v418 = vzip1q_s32(v246, v267);
      v419 = vzip2q_s32(v246, v267);
      v267.i64[0] = 0xFFFF0000FFFFLL;
      v267.i64[1] = 0xFFFF0000FFFFLL;
      v268 = vnegq_s32(vandq_s8(v433, v267));
      v269 = vshlq_u32(v247, v268);
      v416 = vzip1q_s32(v247, v269);
      v417 = vzip2q_s32(v247, v269);
      v270 = vshlq_u32(v248, v268);
      v414 = vzip1q_s32(v248, v270);
      v415 = vzip2q_s32(v248, v270);
      v271 = vshlq_u32(v249, v268);
      v413 = vzip2q_s32(v249, v271);
      v272 = vzip1q_s32(v249, v271);
      v273 = vshlq_u32(v250, v268);
      v274 = vzip2q_s32(v250, v273);
      v275 = vzip1q_s32(v250, v273);
      v273.i64[0] = 0xFFFF0000FFFFLL;
      v273.i64[1] = 0xFFFF0000FFFFLL;
      v276 = vnegq_s32(vandq_s8(v434, v273));
      v277 = vshlq_u32(v251, v276);
      v278 = vzip2q_s32(v251, v277);
      v279 = vzip1q_s32(v251, v277);
      v280 = vshlq_u32(v252, v276);
      v281 = vzip2q_s32(v252, v280);
      v282 = vzip1q_s32(v252, v280);
      v283 = vshlq_u32(v253, v276);
      v284 = vzip2q_s32(v253, v283);
      v285 = vzip1q_s32(v253, v283);
      v286 = vshlq_u32(v254, v276);
      v287 = vzip2q_s32(v254, v286);
      v288 = vzip1q_s32(v254, v286);
      v286.i64[0] = 0xFFFF0000FFFFLL;
      v286.i64[1] = 0xFFFF0000FFFFLL;
      v289 = vnegq_s32(vandq_s8(v435, v286));
      v290 = vshlq_u32(v255, v289);
      v291 = vzip2q_s32(v255, v290);
      v292 = vzip1q_s32(v255, v290);
      v293 = vshlq_u32(v256, v289);
      v294 = vzip2q_s32(v256, v293);
      v295 = vzip1q_s32(v256, v293);
      v296 = vshlq_u32(v257, v289);
      v297 = vzip2q_s32(v257, v296);
      v298 = vzip1q_s32(v257, v296);
      v299 = vuzp1q_s16(v423, v425);
      v426 = vuzp1q_s16(v279, v278);
      v300 = vuzp1q_s16(v282, v281);
      v301 = vuzp1q_s16(v285, v284);
      v302 = vuzp1q_s16(v288, v287);
      v303 = vuzp1q_s16(v292, v291);
      v304 = vuzp1q_s16(v295, v294);
      v305 = vuzp1q_s16(v298, v297);
      v297.i64[0] = 0x10001000100010;
      v297.i64[1] = 0x10001000100010;
      v295.i64[0] = 0xF000F000F000FLL;
      v295.i64[1] = 0xF000F000F000FLL;
      v306 = vshlq_s16(v299, vsubq_s16(v297, v439));
      v299.i64[0] = 0x10001000100010;
      v299.i64[1] = 0x10001000100010;
      v307 = vshlq_s16(vuzp1q_s16(v260, v421), vsubq_s16(v299, v431));
      v308 = vsubq_s16(v299, v432);
      v282.i64[0] = 0xF000F000F000FLL;
      v282.i64[1] = 0xF000F000F000FLL;
      v309 = vaddq_s16(v431, v282);
      v310 = vaddq_s16(v432, v282);
      v291.i64[0] = 0x10001000100010;
      v291.i64[1] = 0x10001000100010;
      v311 = vsubq_s16(v291, v433);
      v279.i64[0] = 0xF000F000F000FLL;
      v279.i64[1] = 0xF000F000F000FLL;
      v312 = vaddq_s16(v433, v279);
      v313 = vshlq_s16(vuzp1q_s16(v416, v417), v311);
      v314 = vshlq_s16(vuzp1q_s16(v414, v415), v311);
      v315 = vshlq_s16(vuzp1q_s16(v272, v413), v311);
      v316 = vshlq_s16(vuzp1q_s16(v275, v274), v311);
      v275.i64[0] = 0x10001000100010;
      v275.i64[1] = 0x10001000100010;
      v317 = vsubq_s16(v275, v434);
      v274.i64[0] = 0xF000F000F000FLL;
      v274.i64[1] = 0xF000F000F000FLL;
      v318 = vaddq_s16(v434, v274);
      v319 = vshlq_s16(v426, v317);
      v320 = vshlq_s16(v300, v317);
      v321 = vshlq_s16(v301, v317);
      v322 = vshlq_s16(v302, v317);
      v317.i64[0] = 0x10001000100010;
      v317.i64[1] = 0x10001000100010;
      v323 = vsubq_s16(v317, v435);
      v223.i64[0] = 0xF000F000F000FLL;
      v223.i64[1] = 0xF000F000F000FLL;
      v324 = vaddq_s16(v435, v223);
      v325 = vshlq_s16(v306, vaddq_s16(v439, v295));
      v326 = vshlq_s16(v307, v309);
      v327 = vshlq_s16(vshlq_s16(vuzp1q_s16(v264, v263), v308), v310);
      v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v266, v420), v308), v310);
      v329 = vshlq_s16(vshlq_s16(vuzp1q_s16(v418, v419), v308), v310);
      v330 = vshlq_s16(v313, v312);
      v331 = vshlq_s16(v314, v312);
      v332 = vshlq_s16(v315, v312);
      v333 = vshlq_s16(v319, v318);
      v334 = vshlq_s16(v320, v318);
      v335 = vshlq_s16(v321, v318);
      v336 = vshlq_u64(v185, v427);
      v337 = vuzp1q_s32(vzip1q_s64(v185, v336), vzip2q_s64(v185, v336));
      v338 = vshlq_u32(v337, v289);
      v339 = vshlq_s16(vshlq_s16(v303, v323), v324);
      v340 = vshlq_s16(vshlq_s16(v304, v323), v324);
      v341 = vshlq_s16(vshlq_s16(v305, v323), v324);
      v342 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v337, v338), vzip2q_s32(v337, v338)), v323), v324);
      v343 = vaddq_s16(vandq_s8(v325, v438), v326);
      v344 = vdupq_lane_s64(v325.i64[0], 0);
      v345 = vandq_s8(v436, v344);
      v346 = vsubq_s16(v330, v345);
      v347 = vsubq_s16(v331, v345);
      v348 = vsubq_s16(v332, v345);
      v349 = vsubq_s16(vshlq_s16(v316, v312), v345);
      v350 = vandq_s8(v437, v344);
      v351 = vsubq_s16(v333, v350);
      v352 = vsubq_s16(v334, v350);
      v353 = vsubq_s16(v335, v350);
      v354 = vandq_s8(v438, v344);
      v355 = vsubq_s16(vshlq_s16(v322, v318), v350);
      v356 = vandq_s8(v428, v344);
      v357 = vsubq_s16(v339, v356);
      v358 = vsubq_s16(v340, v356);
      v359 = vsubq_s16(v341, v356);
      v360 = vsubq_s16(v342, v356);
      v361.i64[0] = 0x1000100010001;
      v361.i64[1] = 0x1000100010001;
      v362 = vsubq_s16(v327, v354);
      v363 = vsubq_s16(v328, v354);
      v364 = vsubq_s16(v343, v354);
      v365 = vsubq_s16(v329, v354);
      v356.i16[0] = v29 & 0x7FF;
      v356.i16[1] = (v29 >> 11) & 0x7FF;
      v356.i32[1] = v29 >> 22;
      v366 = vdupq_lane_s64(v356.i64[0], 0);
      if (vaddvq_s16(vceqq_s16(v429, v361)))
      {
        v367 = vnegq_s16(vandq_s8(v430, v361));
        v368.i64[0] = v365.i64[0];
        v369.i64[1] = v364.i64[1];
        v368.i64[1] = v364.i64[0];
        v369.i64[0] = v365.i64[1];
        v370 = vbslq_s8(v367, v369, v364);
        v371 = vbslq_s8(v367, v368, v365);
        v369.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v369.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v372 = vandq_s8(vqtbl4q_s8(*(&v362 - 1), v369), v367);
        v440.val[0] = vaddq_s16(v370, vandq_s8(vqtbl4q_s8(*(&v362 - 1), xmmword_29D2F10B0), v367));
        v440.val[1] = vaddq_s16(v362, vandq_s8(vqtbl4q_s8(*(&v362 - 1), xmmword_29D2F10C0), v367));
        v440.val[2] = vaddq_s16(v363, v372);
        v440.val[3] = vaddq_s16(v371, v372);
        v373 = vandq_s8(vqtbl4q_s8(v440, v369), v367);
        v364 = vaddq_s16(v440.val[0], vandq_s8(vqtbl4q_s8(v440, xmmword_29D2F10D0), v367));
        v362 = vaddq_s16(v440.val[1], vandq_s8(vqtbl4q_s8(v440, xmmword_29D2F10E0), v367));
        v363 = vaddq_s16(v440.val[2], v373);
        v365 = vaddq_s16(v440.val[3], v373);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F10B0), v367), v346);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F10F0), v367), v347);
        v441.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, v369), v367), v348);
        v441.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v346.i8, xmmword_29D2F1100), v367), v349);
        v374 = vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F10D0), v367);
        v440.val[0] = vandq_s8(vqtbl4q_s8(v441, v369), v367);
        v346 = vaddq_s16(v374, v441.val[0]);
        v347 = vaddq_s16(v441.val[1], v374);
        v348 = vaddq_s16(v441.val[2], v440.val[0]);
        v349 = vaddq_s16(v441.val[3], v440.val[0]);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F0EB0), v367), v351);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F0FB0), v367), v352);
        v441.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10B0), v367), v353);
        v441.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10C0), v367), v355);
        v440.val[1] = vandq_s8(vqtbl4q_s8(v441, v369), v367);
        v351 = vaddq_s16(v441.val[0], v440.val[1]);
        v352 = vaddq_s16(v441.val[1], v440.val[1]);
        v353 = vaddq_s16(v441.val[2], vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F0FE0), v367));
        v355 = vaddq_s16(v441.val[3], vandq_s8(vqtbl4q_s8(v441, xmmword_29D2F1110), v367));
        v440.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F0EB0), v367), v357);
        v440.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F1120), v367), v358);
        v441.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10B0), v367), v359);
        v441.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v357.i8, xmmword_29D2F10C0), v367), v360);
        v375 = vandq_s8(vqtbl4q_s8(*(&v440 + 32), v369), v367);
        v357 = vaddq_s16(v440.val[2], v375);
        v358 = vaddq_s16(v440.val[3], v375);
        v359 = vaddq_s16(v441.val[0], vandq_s8(vqtbl4q_s8(*(&v440 + 32), xmmword_29D2F0FE0), v367));
        v360 = vaddq_s16(v441.val[1], vandq_s8(vqtbl4q_s8(*(&v440 + 32), xmmword_29D2F1130), v367));
      }

      v376 = vaddq_s16(v364, v366);
      v377 = vaddq_s16(v362, v366);
      v378 = vaddq_s16(v363, v366);
      v379 = vaddq_s16(v365, v366);
      v380 = vaddq_s16(v346, v366);
      v381 = vaddq_s16(v347, v366);
      v382 = vaddq_s16(v348, v366);
      v383 = vaddq_s16(v349, v366);
      v384 = vaddq_s16(v351, v366);
      v385 = vaddq_s16(v352, v366);
      v386 = vaddq_s16(v353, v366);
      v387 = vaddq_s16(v355, v366);
      v388 = vaddq_s16(v357, v366);
      v389 = vaddq_s16(v358, v366);
      v390 = vaddq_s16(v359, v366);
      v391 = vaddq_s16(v360, v366);
      v392.i64[0] = 0x10001000100010;
      v392.i64[1] = 0x10001000100010;
      v393 = vceqzq_s16(vandq_s8(v430, v392));
      v394.i64[0] = 0xFFFF00000000;
      v394.i64[1] = 0xFFFF00000000;
      v395 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v376, xmmword_29D2F1140), v394), v393), v376);
      v396 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v377, xmmword_29D2F1140), v394), v393), v377);
      v397 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v378, xmmword_29D2F1140), v394), v393), v378);
      v398 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v379, xmmword_29D2F1140), v394), v393), v379);
      v399 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v380, xmmword_29D2F1140), v394), v393), v380);
      v400 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v381, xmmword_29D2F1140), v394), v393), v381);
      v401 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v382, xmmword_29D2F1140), v394), v393), v382);
      v402 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v383, xmmword_29D2F1140), v394), v393), v383);
      v403 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v384, xmmword_29D2F1140), v394), v393), v384);
      v404 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v385, xmmword_29D2F1140), v394), v393), v385);
      v405 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v386, xmmword_29D2F1140), v394), v393), v386);
      v406 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v387, xmmword_29D2F1140), v394), v393), v387);
      v407 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v388, xmmword_29D2F1140), v394), v393), v388);
      v408 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v389, xmmword_29D2F1140), v394), v393), v389);
      v389.i64[0] = 0x3F0000003FLL;
      v389.i64[1] = 0x3F0000003FLL;
      v409 = (a1 + 32);
      *a1 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v395, 0xAuLL), v396, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v395, 5uLL), v396, 5uLL), vuzp1q_s32(v395, v396)));
      *(a1 + 16) = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v397, 0xAuLL), v398, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v397, 5uLL), v398, 5uLL), vuzp1q_s32(v397, v398)));
      v410 = (a1 + a2);
      *v409 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v399, 0xAuLL), v400, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v399, 5uLL), v400, 5uLL), vuzp1q_s32(v399, v400)));
      v409[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v401, 0xAuLL), v402, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v401, 5uLL), v402, 5uLL), vuzp1q_s32(v401, v402)));
      v411 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v390, xmmword_29D2F1140), v394), v393), v390);
      v412 = vaddq_s16(vbicq_s8(vshlq_s16(vqtbl1q_s8(v391, xmmword_29D2F1140), v394), v393), v391);
      *v410 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v403, 0xAuLL), v404, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v403, 5uLL), v404, 5uLL), vuzp1q_s32(v403, v404)));
      v410[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v405, 0xAuLL), v406, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v405, 5uLL), v406, 5uLL), vuzp1q_s32(v405, v406)));
      v410 += 2;
      *v410 = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v407, 0xAuLL), v408, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v407, 5uLL), v408, 5uLL), vuzp1q_s32(v407, v408)));
      v410[1] = vbslq_s8(v389, vshrn_high_n_s64(vshrn_n_s64(v411, 0xAuLL), v412, 0xAuLL), vbslq_s8(xmmword_29D2F1330, vshrn_high_n_s64(vshrn_n_s64(v411, 5uLL), v412, 5uLL), vuzp1q_s32(v411, v412)));
      return a4 + 1;
    }
  }

  else
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v4 = (a1 + a2);
    result = 0;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  return result;
}