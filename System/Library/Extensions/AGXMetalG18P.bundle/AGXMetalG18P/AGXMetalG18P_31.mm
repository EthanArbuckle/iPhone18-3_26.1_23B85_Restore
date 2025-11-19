unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 1, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 16), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 16), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 16), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int8x8_t a5, double a6, int8x8_t a7)
{
  v10 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7);
  v14 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 32, v10, a3[1], a4, v11, v12, v13);
  v18 = v14 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 128, 32, v14, a3[2], a4, v15, v16, v17);
  v22 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 144, 32, v18, a3[3], a4, v19, v20, v21);
  v26 = v22 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 256, 32, v22, a3[4], a4, v23, v24, v25);
  v30 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 272, 32, v26, a3[5], a4, v27, v28, v29);
  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 384, 32, v30, a3[6], a4, v31, v32, v33);
  v38 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 400, 32, v30 + v34, v38, a4, v35, v36, v37);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  if ((vpaddq_s16(v252, v252).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v42, v44);
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

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 8, &v56, a7, v42, v47);
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
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 16, &v56, a7, v49, v44);
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
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v47);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
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
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v30 + 2);
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
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 2);
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

  v91 = v82 >> v86 > 0x10;
  v97 = v286;
  if (v91)
  {
    v97 = 1;
  }

  v98 = v97 | v92;
  v99 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v100 = *(v99 + 1);
  v101 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v77 + 2);
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
  if (v100 >> v104 > 0x10)
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
  *a1 = 0;
  if ((v283 | v284))
  {
    v173 = 0;
    v174 = 0;
    v175 = v317;
    v176 = v317 - 4;
    v177 = v316;
    v178 = v316 - 4;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v332 + 2 * v173) >> 4;
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

      if (v175 != 4 && v179 - v172 + (v174 << 6) + v176 <= 0x40)
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
        v188 = *(&v332 + 2 * v173 + 1) >> 4;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 4 && v179 - v172 + (v174 << 6) + v178 <= 0x40)
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

  if ((v218 - v172) <= 0x3D)
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
  if (v218 - v172 + v216 > 0x40)
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
  if (v218 - v172 + (v226 << 6) + v224 > 0x40)
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
      if (v304 <= 0x100 && v304 && v218 - v172 + (v226 << 6) + v304 <= 0x40)
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
  if (v305 <= 0x100 && v305 && v218 - v172 + (v226 << 6) + v305 <= 0x40)
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
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x40)
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
    if ((v218 - v172 + (v226 << 6) + 3) <= 0x40)
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

  v261 = 64 - v227;
  v262 = (64 - v227) / 7u;
  v263 = v261 % 7;
  if ((v263 - 257) >= 0xFFFFFF00 && v218 - v172 + (v226 << 6) + v263 <= 0x40)
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
    if (v249 && v249 <= 0x100 && v218 - v172 + (v226 << 6) + v249 <= 0x40)
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
      if (v255 <= 0x100 && v218 - v172 + (v226 << 6) + v255 <= 0x40)
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
        if (v278 <= 0x100 && v218 - v172 + (v226 << 6) + v278 <= 0x40)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v173 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x3D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x3D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 63) < 0xFFFFFFFFFFFFFFBFLL)
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
  if ((v8 - v4 + (v10 << 6) - 63) < 0xFFFFFFFFFFFFFFBFLL)
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
  v26 = v25 + 1;
  v27 = v24 + 1;
  v28 = v21 - v16;
  if (v28 >= 0)
  {
    if (!v28)
    {
      goto LABEL_28;
    }

    v27 += v28;
    goto LABEL_24;
  }

  v29 = &kDQuadParamTable[10 * v12];
  if (v29[7] < -v28)
  {
    if (!v29[8])
    {
      v28 = -1;
      v27 = v24;
LABEL_24:
      v26 += v28;
      goto LABEL_28;
    }

    v27 = v24;
  }

LABEL_28:
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
  v36 = v35 + 1;
  LODWORD(v37) = v34 + 1;
  v38 = v169 - v20;
  if (v38 < 0)
  {
    v39 = -v38;
    v40 = &kDQuadParamTable[10 * v19];
    if (v40[7] >= v39)
    {
      goto LABEL_41;
    }

    if (v40[8])
    {
      LODWORD(v37) = v34;
      goto LABEL_41;
    }

    v38 = -1;
    LODWORD(v37) = v34;
    goto LABEL_37;
  }

  if (v38)
  {
    LODWORD(v37) = v38 + v37;
LABEL_37:
    v36 += v38;
  }

LABEL_41:
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
    if (v26 && (v8 - v4 + (v10 << 6) + v30) <= 0x40)
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
    if (v36 && (v8 - v4 + (v10 << 6) + v41) <= 0x40)
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
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x40)
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
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x40)
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
  v65 = 64 - v13;
  v66 = (64 - v13) / 7u;
  v167 = 0;
  v67 = (v8 | (v10 << 6)) + v65 % 7;
  memset(v166, 0, sizeof(v166));
  do
  {
    v69 = v67 >> 6;
    v70 = v67 & 0x3F;
    if (v32)
    {
      if (v70 - v4 + (v67 & 0xFFFFFFFFFFFFFFC0) + v32 <= 0x40)
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
      if (v70 - v4 + (v69 << 6) + v37 <= 0x40)
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
        goto LABEL_139;
      }

      v105 = *v86;
      v106 = v104 == v105;
      if (v95 | v105)
      {
        if (v101 >= 0x100 && (v102 ^ v105) == -1)
        {
          v108 = 1;
          v107 = 255;
LABEL_139:
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
          goto LABEL_107;
        }

        v107 = v93 + v92 * v105;
      }

      else
      {
        v107 = 0;
      }

      v108 = 1;
      goto LABEL_139;
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
LABEL_107:
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int8x8_t a6, double a7, int8x8_t a8)
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v306, a5);
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
    v16 = a3 + 8;
    if ((v8 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v16, &v306, a5);
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
    v17 = a3 + 16;
    if ((v8 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v17, &v306, a5);
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
    v25 = a3 + 24;
    if ((v8 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v25, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v25, &v306, a5);
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
    v11 = 32;
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

  v64 = (8 * (a3 & 7)) | 0x100;
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

  if ((v79 & 1) != 0 || (v11 = (a4 & 0x3F) + 1, v64 + 8 * v11 - v173 - 256 >= 9) || v118 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 1, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, (v13 + v17 + 16), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 16), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 16), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int8x8_t a5, double a6, int8x8_t a7)
{
  v10 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7);
  v14 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 32, v10, a3[1], a4, v11, v12, v13);
  v18 = v14 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 128, 32, v14, a3[2], a4, v15, v16, v17);
  v22 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 144, 32, v18, a3[3], a4, v19, v20, v21);
  v26 = v22 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 256, 32, v22, a3[4], a4, v23, v24, v25);
  v30 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 272, 32, v26, a3[5], a4, v27, v28, v29);
  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 384, 32, v30, a3[6], a4, v31, v32, v33);
  v38 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 400, 32, v30 + v34, v38, a4, v35, v36, v37);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  if ((vpaddq_s16(v252, v252).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int8x8_t a6, double a7, int8x8_t a8)
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v306, a5);
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
    v16 = a3 + 8;
    if ((v8 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v306, a5);
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
    v17 = a3 + 16;
    if ((v8 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, &v306, a5);
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
    v25 = a3 + 24;
    if ((v8 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v25, &v306, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v25, &v306, a5);
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
    v11 = 32;
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

  v64 = (8 * (a3 & 7)) | 0x100;
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

  if ((v79 & 1) != 0 || (v11 = (a4 & 0x3F) + 1, v64 + 8 * v11 - v173 - 256 >= 9) || v118 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 1, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 16), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 16), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 16), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int8x8_t a5, double a6, int8x8_t a7)
{
  v10 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7);
  v14 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 32, v10, a3[1], a4, v11, v12, v13);
  v18 = v14 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 128, 32, v14, a3[2], a4, v15, v16, v17);
  v22 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 144, 32, v18, a3[3], a4, v19, v20, v21);
  v26 = v22 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 32, v22, a3[4], a4, v23, v24, v25);
  v30 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 272, 32, v26, a3[5], a4, v27, v28, v29);
  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 384, 32, v30, a3[6], a4, v31, v32, v33);
  v38 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 400, 32, v30 + v34, v38, a4, v35, v36, v37);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(uint64_t a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
{
  switch(a4)
  {
    case 0x7Fu:
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
    case 3u:
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
    case 0u:
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
      return result;
  }

  v23 = 8 * (a3 & 7);
  v24 = a3 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 + 32;
  v26 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v23;
  if (v23 >= 0x21)
  {
    v26 |= *(v24 + 8) << (-8 * (a3 & 7u));
  }

  v27 = v23 | 0x40;
  v28 = vdupq_n_s64(v26);
  v29 = vmovn_s64(vshlq_u64(v28, xmmword_29D2F0F40));
  v30.i16[0] = v26;
  v30.i16[1] = v26 >> 5;
  v30.i16[2] = v29.i16[0];
  v30.i16[3] = v29.i16[2];
  v31 = vuzp1_s8(vand_s8(v30, 0x1F001F001F001FLL), *v28.i8);
  *v28.i8 = vand_s8(vmovn_s64(vshlq_u64(v28, xmmword_29D2F0F50)), 0x700000007);
  v28.i16[1] = v28.i16[2];
  v28.i16[2] = (v26 >> 26) & 7;
  v28.i16[3] = v26 >> 29;
  *v28.i8 = vadd_s16(*v28.i8, 0x1000100010001);
  v32 = vuzp1_s8(*v28.i8, *v28.i8);
  v33 = v25 & 0x38;
  v34 = (v24 + ((v25 >> 3) & 8));
  v35 = *v34 >> (v25 & 0x38);
  if (v33 >= 0x21)
  {
    v35 |= v34[1] << -v33;
  }

  v36 = (8 * (a3 & 7)) | 0x400;
  v37 = vdupq_lane_s32(v31, 0);
  v38.i64[0] = 0x303030303030303;
  v38.i64[1] = 0x303030303030303;
  v326 = vandq_s8(v37, v38);
  v39 = vbicq_s8(vdupq_lane_s32(v32, 0), vceqq_s8(v326, v38));
  v40.i64[0] = 0x202020202020202;
  v40.i64[1] = 0x202020202020202;
  v41 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v31), 0x4000400040004)), v40);
  if (vmaxvq_s8(v41) < 1)
  {
    v49 = 0;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v324 = v70;
    v325 = v70;
    v69 = v39;
    v68 = v39;
    v67 = v39;
    v321 = v70;
    v322 = v70;
    v66 = v39;
  }

  else
  {
    v42 = vmovl_u8(*&vpaddq_s8(v41, v41));
    v43 = vmovl_u16(*&vpaddq_s16(v42, v42));
    v44 = vpaddq_s32(v43, v43).u64[0];
    v45.i64[0] = v44;
    v45.i64[1] = HIDWORD(v44);
    v46 = v45;
    v47 = vaddvq_s64(v45);
    v48 = v47 <= 0x80 && v36 >= v27 + v47;
    v49 = !v48;
    v50 = 0uLL;
    if (v48)
    {
      v51 = vaddq_s64(vdupq_n_s64(v23), vzip1q_s64(0, v46));
      v50 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v24 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(*(v24 + 8), 0), vnegq_s64(v51)));
      if (v23 + v47 >= 0x81)
      {
        v50 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v24 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(*(v24 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v50);
      }

      v27 += v47;
    }

    v52 = vzip1_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54 = vshlq_u64(v50, vnegq_s64(v53));
    v55 = vuzp1q_s32(vzip1q_s64(v50, v54), vzip2q_s64(v50, v54));
    v56 = vshlq_u32(v55, vnegq_s32((*&v42 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v57 = vuzp1q_s16(vzip1q_s32(v55, v56), vzip2q_s32(v55, v56));
    v58 = vshlq_u16(v57, vnegq_s16((*&v41 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v59 = vuzp1q_s8(vzip1q_s16(v57, v58), vzip2q_s16(v57, v58));
    v58.i64[0] = 0x101010101010101;
    v58.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v58, v41);
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v61 = vqtbl1q_s8(vandq_s8(vaddq_s8(v60, v58), v59), xmmword_29D2F0F70);
    v62 = vdupq_lane_s32(*v61.i8, 0);
    v63 = vdupq_lane_s32(*v61.i8, 1);
    v64 = vdupq_laneq_s32(v61, 2);
    v65 = vdupq_laneq_s32(v61, 3);
    v66 = vsubq_s8(v39, v62);
    v67 = vsubq_s8(v39, v63);
    v68 = vsubq_s8(v39, v64);
    v69 = vsubq_s8(v39, v65);
    v325 = vceqzq_s8(v62);
    v321 = vceqzq_s8(v63);
    v322 = vceqzq_s8(v64);
    v324 = vceqzq_s8(v65);
  }

  v71.i64[0] = 0x808080808080808;
  v71.i64[1] = 0x808080808080808;
  v72 = 0uLL;
  v73 = vandq_s8(vextq_s8(vtstq_s8(v37, v71), 0, 0xCuLL), v39);
  v74 = vmovl_u8(*&vpaddq_s8(v73, v73));
  v75 = vmovl_u16(*&vpaddq_s16(v74, v74));
  v76 = vpaddq_s32(v75, v75).u64[0];
  v77.i64[0] = v76;
  v77.i64[1] = HIDWORD(v76);
  v78 = v77;
  v79 = vaddvq_s64(v77);
  v80 = v27 + v79;
  if (v79 <= 0x80 && v36 >= v80)
  {
    v82 = v27 & 0x3F;
    v83 = vaddq_s64(vdupq_n_s64(v82), vzip1q_s64(0, v78));
    v84 = (v24 + 8 * (v27 >> 6));
    v72 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v83)));
    if (v82 + v79 >= 0x81)
    {
      v72 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v72);
    }

    v27 = v80;
  }

  else
  {
    v49 = 1;
  }

  v85 = v37.i8[0] & 3;
  if (v85 == 2)
  {
    v86 = v36 < v27 + 4;
    v87 = v27 + 8;
    if (v36 >= v27 + 4)
    {
      v27 += 4;
    }

    else
    {
      v87 = v27 + 4;
    }

    if (v36 < v87)
    {
      v88 = 1;
    }

    else
    {
      v27 = v87;
      v88 = v86;
    }

    v49 |= v88;
  }

  v89 = 0uLL;
  v90 = vextq_s8(0, v66, 0xCuLL);
  v91 = vmovl_u8(*&vpaddq_s8(v90, v90));
  v92 = vmovl_u16(*&vpaddq_s16(v91, v91));
  v93 = vpaddq_s32(v92, v92).u64[0];
  v94.i64[0] = v93;
  v94.i64[1] = HIDWORD(v93);
  v95 = v94;
  v96 = vaddvq_s64(v94);
  v97 = v27 + v96;
  if (v96 <= 0x80 && v36 >= v97)
  {
    v100 = v27 & 0x3F;
    v101 = vaddq_s64(vdupq_n_s64(v100), vzip1q_s64(0, v95));
    v102 = (v24 + 8 * (v27 >> 6));
    v99 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v102, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v101)), vshlq_u64(vdupq_lane_s64(v102->i64[0], 0), vnegq_s64(v101)));
    if (v100 + v96 >= 0x81)
    {
      v99 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v102[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v101)), vshlq_u64(vdupq_laneq_s64(v102[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v101))), v99);
    }

    v27 = v97;
  }

  else
  {
    v49 = 1;
    v99 = 0uLL;
  }

  v103 = vmovl_u8(*&vpaddq_s8(v66, v66));
  v104 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v105 = vpaddq_s32(v104, v104).u64[0];
  v106.i64[0] = v105;
  v106.i64[1] = HIDWORD(v105);
  v107 = v106;
  v108 = vaddvq_s64(v106);
  v109 = v27 + v108;
  if (v108 <= 0x80 && v36 >= v109)
  {
    v111 = v27 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v107));
    v113 = (v24 + 8 * (v27 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v108 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v89);
    }

    v27 = v109;
  }

  else
  {
    v49 = 1;
  }

  v114 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v115 = vmovl_u16(*&vpaddq_s16(v114, v114));
  v116 = vpaddq_s32(v115, v115).u64[0];
  v117.i64[0] = v116;
  v117.i64[1] = HIDWORD(v116);
  v118 = v117;
  v119 = vaddvq_s64(v117);
  v120 = v27 + v119;
  v121 = 0uLL;
  if (v119 <= 0x80 && v36 >= v120)
  {
    v124 = v27 & 0x3F;
    v125 = vaddq_s64(vdupq_n_s64(v124), vzip1q_s64(0, v118));
    v126 = (v24 + 8 * (v27 >> 6));
    v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
    if (v124 + v119 >= 0x81)
    {
      v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v123);
    }

    v27 = v120;
  }

  else
  {
    v49 = 1;
    v123 = 0uLL;
  }

  v127 = v27 + v119;
  if (v119 <= 0x80 && v36 >= v127)
  {
    v129 = v27 & 0x3F;
    v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v118));
    v131 = (v24 + 8 * (v27 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
    if (v129 + v119 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v121);
    }

    v27 = v127;
  }

  else
  {
    v49 = 1;
  }

  v132 = vmovl_u8(*&vpaddq_s8(v68, v68));
  v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
  v134 = vpaddq_s32(v133, v133).u64[0];
  v135.i64[0] = v134;
  v135.i64[1] = HIDWORD(v134);
  v136 = v135;
  v137 = vaddvq_s64(v135);
  v138 = v27 + v137;
  v139 = 0uLL;
  if (v137 <= 0x80 && v36 >= v138)
  {
    v142 = v27 & 0x3F;
    v143 = vaddq_s64(vdupq_n_s64(v142), vzip1q_s64(0, v136));
    v144 = (v24 + 8 * (v27 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v144, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v143)), vshlq_u64(vdupq_lane_s64(v144->i64[0], 0), vnegq_s64(v143)));
    if (v142 + v137 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v144[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v143)), vshlq_u64(vdupq_laneq_s64(v144[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v143))), v141);
    }

    v27 = v138;
    if (v137 > 0x80)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v49 = 1;
    v141 = 0uLL;
    if (v137 > 0x80)
    {
      goto LABEL_85;
    }
  }

  v145 = v27 + v137;
  if (v36 >= v27 + v137)
  {
    v146 = v27 & 0x3F;
    v147 = vaddq_s64(vdupq_n_s64(v146), vzip1q_s64(0, v136));
    v148 = (v24 + 8 * (v27 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
    if (v146 + v137 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v139);
    }

    goto LABEL_86;
  }

LABEL_85:
  v49 = 1;
  v145 = v27;
LABEL_86:
  v323 = v69;
  v149 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
  v151 = vpaddq_s32(v150, v150).u64[0];
  v152.i64[0] = v151;
  v152.i64[1] = HIDWORD(v151);
  v153 = v152;
  v154 = vaddvq_s64(v152);
  v155 = v154;
  if (v154 > 0x80 || (v156 = v145 + v154, v36 < v145 + v154))
  {
    v49 = 1;
    v156 = v145;
    v160 = 0uLL;
  }

  else
  {
    v157 = v145 & 0x3F;
    v158 = vaddq_s64(vdupq_n_s64(v157), vzip1q_s64(0, v153));
    v159 = (v24 + 8 * (v145 >> 6));
    v160 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v158)));
    if (v157 + v155 >= 0x81)
    {
      v160 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v160);
    }
  }

  if (v155 > 0x80 || v36 < v156 + v155)
  {
    goto LABEL_100;
  }

  v161 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v153));
  v162 = (v24 + 8 * (v156 >> 6));
  v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
  if ((v156 & 0x3F) + v155 >= 0x81)
  {
    v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v163);
  }

  if ((v49 & 1) != 0 || v36 + 8 * (a4 + 1) - (v156 + v155) - 1024 >= 9 || v85 == 2)
  {
LABEL_100:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v164 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
    v165 = vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL));
    v166 = vzip1_s32(*v104.i8, *&vextq_s8(v104, v104, 8uLL));
    v167 = vzip1_s32(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
    v168 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
    v169 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
    v170.i64[0] = v164.u32[0];
    v170.i64[1] = v164.u32[1];
    v171 = vshlq_u64(v72, vnegq_s64(v170));
    v172 = vzip2q_s64(v72, v171);
    v173 = vzip1q_s64(v72, v171);
    v170.i64[0] = v165.u32[0];
    v170.i64[1] = v165.u32[1];
    v174 = vshlq_u64(v99, vnegq_s64(v170));
    v175 = vzip2q_s64(v99, v174);
    v176 = vzip1q_s64(v99, v174);
    v170.i64[0] = v166.u32[0];
    v170.i64[1] = v166.u32[1];
    v177 = vshlq_u64(v89, vnegq_s64(v170));
    v178 = vzip2q_s64(v89, v177);
    v179 = vzip1q_s64(v89, v177);
    v170.i64[0] = v167.u32[0];
    v170.i64[1] = v167.u32[1];
    v180 = vnegq_s64(v170);
    v181 = vshlq_u64(v123, v180);
    v182 = vzip2q_s64(v123, v181);
    v183 = vzip1q_s64(v123, v181);
    v184 = vshlq_u64(v121, v180);
    v185 = vzip2q_s64(v121, v184);
    v186 = vzip1q_s64(v121, v184);
    v170.i64[0] = v168.u32[0];
    v170.i64[1] = v168.u32[1];
    v187 = vnegq_s64(v170);
    v188 = vshlq_u64(v141, v187);
    v189 = vzip2q_s64(v141, v188);
    v190 = vzip1q_s64(v141, v188);
    v191 = vshlq_u64(v139, v187);
    v192 = vzip2q_s64(v139, v191);
    v193 = vzip1q_s64(v139, v191);
    v170.i64[0] = v169.u32[0];
    v170.i64[1] = v169.u32[1];
    v194 = vnegq_s64(v170);
    v195 = vshlq_u64(v160, v194);
    v196 = vzip2q_s64(v160, v195);
    v197 = vzip1q_s64(v160, v195);
    v198 = vuzp1q_s32(v173, v172);
    v199 = vuzp1q_s32(v176, v175);
    v200 = vuzp1q_s32(v179, v178);
    v201 = vuzp1q_s32(v183, v182);
    v202 = vnegq_s32((*&v74 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v203 = vnegq_s32((*&v114 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v204 = vuzp1q_s32(v186, v185);
    v205 = vuzp1q_s32(v190, v189);
    v206 = vnegq_s32((*&v132 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v207 = vuzp1q_s32(v193, v192);
    v208 = vuzp1q_s32(v197, v196);
    v209 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v210 = vshlq_u32(v198, v202);
    v211 = vshlq_u32(v201, v203);
    v212 = vshlq_u32(v204, v203);
    v213 = vshlq_u32(v205, v206);
    v214 = vshlq_u32(v207, v206);
    v215 = vshlq_u32(v208, v209);
    v216 = vuzp1q_s16(vzip1q_s32(v198, v210), vzip2q_s32(v198, v210));
    v217 = vuzp1q_s16(vzip1q_s32(v201, v211), vzip2q_s32(v201, v211));
    v218 = vuzp1q_s16(vzip1q_s32(v204, v212), vzip2q_s32(v204, v212));
    v219 = vuzp1q_s16(vzip1q_s32(v205, v213), vzip2q_s32(v205, v213));
    v220 = vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v221 = vuzp1q_s16(vzip1q_s32(v207, v214), vzip2q_s32(v207, v214));
    v222 = vuzp1q_s16(vzip1q_s32(v208, v215), vzip2q_s32(v208, v215));
    v223 = vshlq_u16(v216, vnegq_s16((*&v73 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v224 = vshlq_u16(v217, v220);
    v225 = vshlq_u16(v218, v220);
    v226 = vzip2q_s16(v216, v223);
    v227 = vzip1q_s16(v216, v223);
    v228 = vuzp1q_s8(vzip1q_s16(v218, v225), vzip2q_s16(v218, v225));
    v225.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v225.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v223.i64[0] = 0x808080808080808;
    v223.i64[1] = 0x808080808080808;
    v229 = vsubq_s8(v223, v73);
    v230 = vaddq_s8(v73, v225);
    v231.i64[0] = 0x808080808080808;
    v231.i64[1] = 0x808080808080808;
    v232 = vshlq_s8(vuzp1q_s8(v227, v226), v229);
    v229.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v229.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v233 = vsubq_s8(v231, v67);
    v234 = vaddq_s8(v67, v229);
    v235 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v217, v224), vzip2q_s16(v217, v224)), v233);
    v236 = vshlq_s8(v228, v233);
    v237 = vnegq_s16((*&v68 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v238 = vshlq_s8(v232, v230);
    v239 = vshlq_s8(v235, v234);
    v240 = vshlq_s8(v236, v234);
    v241 = vdupq_lane_s32(*v238.i8, 0);
    v242 = vandq_s8(v321, v241);
    v243 = vsubq_s8(v239, v242);
    v244 = vsubq_s8(v240, v242);
    v245 = vshlq_u16(v219, v237);
    v246 = vshlq_u16(v221, v237);
    v247 = vuzp1q_s8(vzip1q_s16(v219, v245), vzip2q_s16(v219, v245));
    v242.i64[0] = 0x808080808080808;
    v242.i64[1] = 0x808080808080808;
    v219.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v219.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v248 = vsubq_s8(v242, v68);
    v249 = vaddq_s8(v68, v219);
    v250 = vshlq_s8(v247, v248);
    v251 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v221, v246), vzip2q_s16(v221, v246)), v248);
    v252 = vnegq_s16((*&v323 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v253 = vshlq_s8(v251, v249);
    v254 = vandq_s8(v322, v241);
    v255 = vsubq_s8(vshlq_s8(v250, v249), v254);
    v256 = vsubq_s8(v253, v254);
    v257 = vshlq_u16(v222, v252);
    v258 = vzip2q_s16(v222, v257);
    v259 = vzip1q_s16(v222, v257);
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v260 = vuzp1q_s8(v259, v258);
    v258.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v258.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v261 = vsubq_s8(v222, v323);
    v262 = vaddq_s8(v323, v258);
    v263 = vshlq_u64(v163, v194);
    v264 = vuzp1q_s32(vzip1q_s64(v163, v263), vzip2q_s64(v163, v263));
    v265 = vshlq_u32(v264, v209);
    v266 = vuzp1q_s16(vzip1q_s32(v264, v265), vzip2q_s32(v264, v265));
    v267 = vshlq_u16(v266, v252);
    v268 = vshlq_s8(vshlq_s8(v260, v261), v262);
    v269 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v266, v267), vzip2q_s16(v266, v267)), v261), v262);
    v270 = vandq_s8(v324, v241);
    v271 = vsubq_s8(v268, v270);
    v272 = vsubq_s8(v269, v270);
    v273 = vshlq_u32(v199, vnegq_s32((*&v91 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v274 = vshlq_u32(v200, vnegq_s32((*&v103 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v275 = vuzp1q_s16(vzip1q_s32(v199, v273), vzip2q_s32(v199, v273));
    *v268.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v35), xmmword_29D2F0F60));
    v276 = vuzp1q_s16(vzip1q_s32(v200, v274), vzip2q_s32(v200, v274));
    v277 = vshlq_u16(v275, vnegq_s16((*&v90 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v278 = vshlq_u16(v276, vnegq_s16((*&v66 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v279 = vzip2q_s16(v275, v277);
    v280 = vzip1q_s16(v275, v277);
    v281 = vzip2q_s16(v276, v278);
    v282 = vzip1q_s16(v276, v278);
    v278.i16[0] = v35;
    v283 = v268.i8[4];
    v278.i8[2] = v268.i8[0];
    v284 = vuzp1q_s8(v280, v279);
    v280.i64[0] = 0x808080808080808;
    v280.i64[1] = 0x808080808080808;
    v285 = vuzp1q_s8(v282, v281);
    v281.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v281.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v286 = vshlq_s8(vshlq_s8(v285, vsubq_s8(v280, v66)), vaddq_s8(v66, v281));
    v287 = vaddq_s8(vandq_s8(v238, v325), vshlq_s8(vshlq_s8(v284, vsubq_s8(v280, v90)), vaddq_s8(v90, v281)));
    v288 = vandq_s8(v325, v241);
    v289.i64[0] = 0x101010101010101;
    v289.i64[1] = 0x101010101010101;
    v290 = vsubq_s8(v287, v288);
    v291 = vsubq_s8(v286, v288);
    v278.i8[3] = v283;
    v292 = vdupq_lane_s32(*v278.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v326, v289)))
    {
      v293 = vnegq_s8(vandq_s8(v37, v289));
      v294 = v291;
      v294.i32[3] = v290.i32[0];
      v295 = v290;
      v295.i32[0] = v291.i32[3];
      v327.val[0] = vbslq_s8(v293, v295, v290);
      v327.val[1] = vbslq_s8(v293, v294, v291);
      v294.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v294.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v328.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v327, xmmword_29D2F0F80), v293), v327.val[0]);
      v328.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v327, v294), v293), v327.val[1]);
      v290 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, xmmword_29D2F0F90), v293), v328.val[0]);
      v291 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, v294), v293), v328.val[1]);
      v328.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v243.i8, xmmword_29D2F0FA0), v293), v243);
      v328.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v243.i8, xmmword_29D2F0FB0), v293), v244);
      v243 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, xmmword_29D2F0FC0), v293), v328.val[0]);
      v244 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, v294), v293), v328.val[1]);
      v328.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v255.i8, xmmword_29D2F0FD0), v293), v255);
      v328.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v255.i8, xmmword_29D2F0F80), v293), v256);
      v255 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, v294), v293), v328.val[0]);
      v256 = vaddq_s8(vandq_s8(vqtbl2q_s8(v328, xmmword_29D2F0FE0), v293), v328.val[1]);
      v327.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v271.i8, xmmword_29D2F0FF0), v293), v271);
      v327.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v271.i8, xmmword_29D2F0F80), v293), v272);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v327, v294), v293), v327.val[0]);
      v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v327, xmmword_29D2F1000), v293), v327.val[1]);
    }

    v296 = v37.i8[1];
    v297 = vaddq_s8(v290, v292);
    v298 = vaddq_s8(v291, v292);
    v299 = vaddq_s8(v243, v292);
    v300 = vaddq_s8(v244, v292);
    v301 = vaddq_s8(v255, v292);
    v302 = vaddq_s8(v256, v292);
    v303 = vaddq_s8(v271, v292);
    v304 = vaddq_s8(v272, v292);
    v305.i64[0] = 0x1010101010101010;
    v305.i64[1] = 0x1010101010101010;
    v306 = vtstq_s8(v37, v305);
    if ((v296 & 0x10) != 0)
    {
      v306.i8[1] = v306.i8[2];
      v306.i8[2] = 0;
      v306 = vdupq_lane_s32(*v306.i8, 0);
      v307 = xmmword_29D2F1020;
    }

    else
    {
      v307 = xmmword_29D2F1010;
    }

    v308 = vaddq_s8(vandq_s8(v306, vqtbl1q_s8(v297, v307)), v297);
    v309 = vaddq_s8(vandq_s8(v306, vqtbl1q_s8(v298, v307)), v298);
    v310 = vaddq_s8(vandq_s8(vqtbl1q_s8(v299, v307), v306), v299);
    v311 = vaddq_s8(vandq_s8(vqtbl1q_s8(v300, v307), v306), v300);
    v312 = vaddq_s8(vandq_s8(vqtbl1q_s8(v301, v307), v306), v301);
    v313 = vaddq_s8(vandq_s8(vqtbl1q_s8(v302, v307), v306), v302);
    v314 = vzip2q_s64(v308, v309);
    v315.i64[0] = v308.i64[0];
    v315.i64[1] = v309.i64[0];
    v308.i64[0] = v312.i64[0];
    v308.i64[1] = v313.i64[0];
    v316 = (a1 + a2);
    *a1 = v315;
    *(a1 + 16) = v308;
    v317 = (a1 + 2 * a2);
    v318 = vaddq_s8(vandq_s8(vqtbl1q_s8(v303, v307), v306), v303);
    v319 = vaddq_s8(vandq_s8(vqtbl1q_s8(v304, v307), v306), v304);
    *v316 = v314;
    v316[1] = vzip2q_s64(v312, v313);
    v312.i64[0] = v310.i64[0];
    v312.i64[1] = v311.i64[0];
    v315.i64[0] = v318.i64[0];
    v315.i64[1] = v319.i64[0];
    *v317 = v312;
    v317[1] = v315;
    v320 = (v317 + a2);
    *v320 = vzip2q_s64(v310, v311);
    v320[1] = vzip2q_s64(v318, v319);
    return a4 + 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 256, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 288, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 512, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 544, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 768, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 800, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
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
  v19 = vzip1q_s64(v15, v16);
  v20 = vdupq_lane_s32(*v10.i8, 0);
  v21 = vzip2q_s64(v15, v16);
  v22 = vsubq_s8(v10, v20);
  v23 = vsubq_s8(v11, v20);
  v24 = vsubq_s8(v18, v20);
  v516 = vzip2q_s64(v14, *v13);
  v25 = vsubq_s8(v516, v20);
  v26 = vsubq_s8(v12, v20);
  v27 = vsubq_s8(v17, v20);
  v28 = vsubq_s8(v19, v20);
  v29 = vsubq_s8(v21, v20);
  v30 = vqtbl1q_s8(vmaxq_s8(v22, v23), xmmword_29D2F0F70);
  v31 = vqtbl1q_s8(vminq_s8(v22, v23), xmmword_29D2F0F70);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vpmaxq_s8(v32, v32);
  v35 = vpminq_s8(v33, v33);
  v36 = vzip1q_s8(v34, v35);
  v37.i64[0] = 0x808080808080808;
  v37.i64[1] = 0x808080808080808;
  v38 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v36)), vceqzq_s8(v36));
  v39 = vpmaxq_s8(v38, v38);
  v40 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v41 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v42 = vpmaxq_s8(v40, v40);
  v43 = vpminq_s8(v41, v41);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vmaxq_s8(v34, v44);
  v47 = vminq_s8(v35, v45);
  v48 = vzip1q_s8(v44, v45);
  v49 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v48)), vceqzq_s8(v48));
  v50 = vpmaxq_s8(v49, v49);
  v51 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v52 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vpmaxq_s8(v53, v53);
  v56 = vpminq_s8(v54, v54);
  v57 = vmaxq_s8(v46, v55);
  v58 = vminq_s8(v47, v56);
  v59 = vzip1q_s8(v55, v56);
  v60 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v59)), vceqzq_s8(v59));
  v61 = vpmaxq_s8(v60, v60);
  v62 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v63 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v64 = vpmaxq_s8(v62, v62);
  v65 = vpminq_s8(v63, v63);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vmaxq_s8(v57, v66);
  v69 = vminq_s8(v58, v67);
  v70 = vzip1q_s8(v66, v67);
  v71 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v70)), vceqzq_s8(v70));
  v72 = vpmaxq_s8(v71, v71);
  v73 = vmaxq_s8(vmaxq_s8(v39, v50), vmaxq_s8(v61, v72));
  v74 = vclzq_s8(vsubq_s8(v68, v69));
  v75 = vsubq_s8(v37, v74);
  v76 = vminq_s8(v75, v73);
  if (vmaxvq_s8(v76))
  {
    v517 = v18;
    v506 = v21;
    v507 = v17;
    v514 = v19;
    v515 = v12;
    v77.i64[0] = -1;
    v77.i64[1] = -1;
    v78.i64[0] = 0x707070707070707;
    v78.i64[1] = 0x707070707070707;
    v79 = vcgtq_s8(v73, v75);
    v522 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v78, v74)), v69), v79);
    v80 = vandq_s8(v79, v37);
    v79.i64[0] = 0x303030303030303;
    v79.i64[1] = 0x303030303030303;
    v512 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v50), v79), 0);
    v508 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v39), v79), 0);
    v510 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v61), v79), 0);
    v81 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v79), 0);
    v82.i64[0] = 0x404040404040404;
    v82.i64[1] = 0x404040404040404;
    v83 = vorrq_s8(vbicq_s8(v82, vceqq_s8(vaddq_s8(v81, v510), vnegq_s8(vaddq_s8(v508, v512)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v79), v80));
    v84 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1010));
    v85 = vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1010));
    v502 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1010));
    v504 = vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010));
    v86 = vqtbl1q_s8(vmaxq_s8(v504, v502), xmmword_29D2F0F70);
    v87 = vqtbl1q_s8(vminq_s8(v504, v502), xmmword_29D2F0F70);
    v88 = vpmaxq_s8(v86, v86);
    v89 = vpminq_s8(v87, v87);
    v90 = vpmaxq_s8(v88, v88);
    v91 = vpminq_s8(v89, v89);
    v92 = vzip1q_s8(v90, v91);
    v93 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v92)), vceqzq_s8(v92));
    v94 = vpmaxq_s8(v93, v93);
    v95 = v23;
    v499 = vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1010));
    v500 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
    v96 = vqtbl1q_s8(vmaxq_s8(v500, v499), xmmword_29D2F0F70);
    v97 = vqtbl1q_s8(vminq_s8(v500, v499), xmmword_29D2F0F70);
    v98 = vpmaxq_s8(v96, v96);
    v99 = vpminq_s8(v97, v97);
    v100 = vpmaxq_s8(v98, v98);
    v101 = vpminq_s8(v99, v99);
    v102 = vmaxq_s8(v90, v100);
    v103 = vminq_s8(v91, v101);
    v104 = vzip1q_s8(v100, v101);
    v105 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v104)), vceqzq_s8(v104));
    v106 = vpmaxq_s8(v105, v105);
    v107 = v22;
    v497 = vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1010));
    v498 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1010));
    v108 = vqtbl1q_s8(vmaxq_s8(v498, v497), xmmword_29D2F0F70);
    v109 = vqtbl1q_s8(vminq_s8(v498, v497), xmmword_29D2F0F70);
    v110 = vpmaxq_s8(v108, v108);
    v111 = vpminq_s8(v109, v109);
    v112 = vpmaxq_s8(v110, v110);
    v113 = vpminq_s8(v111, v111);
    v114 = vmaxq_s8(v102, v112);
    v115 = vminq_s8(v103, v113);
    v116 = vzip1q_s8(v112, v113);
    v117 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v116)), vceqzq_s8(v116));
    v118 = vpmaxq_s8(v117, v117);
    v518 = v27;
    v520 = v28;
    v119 = vqtbl1q_s8(vmaxq_s8(v84, v85), xmmword_29D2F0F70);
    v120 = vqtbl1q_s8(vminq_s8(v84, v85), xmmword_29D2F0F70);
    v121 = vpmaxq_s8(v119, v119);
    v122 = vpminq_s8(v120, v120);
    v123 = vpmaxq_s8(v121, v121);
    v124 = vpminq_s8(v122, v122);
    v125 = vmaxq_s8(v114, v123);
    v126 = vminq_s8(v115, v124);
    v127 = vzip1q_s8(v123, v124);
    v128 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v127)), vceqzq_s8(v127));
    v129 = vpmaxq_s8(v128, v128);
    v130 = vmaxq_s8(vmaxq_s8(v94, v106), vmaxq_s8(v118, v129));
    v131 = vclzq_s8(vsubq_s8(v125, v126));
    v132 = vsubq_s8(v37, v131);
    v133 = vcgtq_s8(v130, v132);
    v134 = vminq_s8(v132, v130);
    v130.i64[0] = 0x1010101010101010;
    v130.i64[1] = 0x1010101010101010;
    v135 = v26;
    v136.i64[0] = 0x1818181818181818;
    v136.i64[1] = 0x1818181818181818;
    v137 = vorrq_s8(vandq_s8(vceqzq_s8(v134), v79), vbslq_s8(v133, v136, v130));
    v138 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v94), v79), 0);
    v139 = v24;
    v140 = v25;
    v141 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v106), v79), 0);
    v142 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v118), v79), 0);
    v143 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v129), v79), 0);
    v144 = vsubq_s8(v134, v138);
    v145 = vsubq_s8(v134, v141);
    v146 = vsubq_s8(v134, v142);
    v147 = vsubq_s8(v134, v143);
    v82.i64[0] = 0x404040404040404;
    v82.i64[1] = 0x404040404040404;
    v148 = vorrq_s8(vbicq_s8(v82, vceqq_s8(vaddq_s8(v143, v142), vnegq_s8(vaddq_s8(v138, v141)))), v137);
    v149 = vmovl_u8(*v148.i8);
    v138.i64[0] = 0x8000800080008;
    v138.i64[1] = 0x8000800080008;
    v150 = v29;
    v151.i64[0] = 0x2000200020002;
    v151.i64[1] = 0x2000200020002;
    v152 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v134.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v138)), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v151), v138)), *v144.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL));
    v153 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v83.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v83.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v83.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v151), v138));
    v154 = vsubq_s8(v76, v508);
    v155 = vsubq_s8(v76, v512);
    v156 = vsubq_s8(v76, v510);
    v157 = vsubq_s8(v76, v81);
    v158 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v153, *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v155.i8), *v157.i8), 3uLL)), v152)), 0);
    v159 = vaddlvq_s8(v158);
    v161 = a5 < 4 || a6 < 2;
    if (v159)
    {
      v162.i64[0] = 0x707070707070707;
      v162.i64[1] = 0x707070707070707;
      v163 = vsubq_s8(v162, v131);
      v162.i64[0] = -1;
      v162.i64[1] = -1;
      v164 = vandq_s8(vsubq_s8(vshlq_s8(v162, v163), v126), v133);
      v20 = vbslq_s8(v158, vsubq_s8(v20, vqtbl1q_s8(v20, xmmword_29D2F1010)), v20);
      v511 = vbslq_s8(v158, v504, v107);
      v513 = vbslq_s8(v158, v502, v95);
      v139 = vbslq_s8(v158, v500, v139);
      v140 = vbslq_s8(v158, v499, v140);
      v135 = vbslq_s8(v158, v498, v135);
      v165 = vbslq_s8(v158, v497, v518);
      v166 = vbslq_s8(v158, v84, v520);
      v167 = vbslq_s8(v158, v85, v150);
      v509 = vbslq_s8(v158, v144, v154);
      v168 = vbslq_s8(v158, v145, v155);
      v156 = vbslq_s8(v158, v146, v156);
      v157 = vbslq_s8(v158, v147, v157);
      v169 = vbslq_s8(v158, v164, v522);
      v76 = vbslq_s8(v158, v134, v76);
      v170 = vbslq_s8(v158, v148, v83);
    }

    else
    {
      v509 = v154;
      v511 = v107;
      v513 = v95;
      v167 = v150;
      v165 = v518;
      v166 = v520;
      v169 = v522;
      v168 = v155;
      v170 = v83;
    }

    v173 = v517;
    if (v161)
    {
      v174 = v509;
    }

    else
    {
      v501 = v140;
      v503 = v135;
      v521 = v166;
      v523 = v169;
      v519 = v165;
      v505 = v167;
      v185 = vsubq_s8(v10, vqtbl2q_s8(*v10.i8, xmmword_29D2F0F80));
      v175 = vsubq_s8(v11, vqtbl2q_s8(*v10.i8, xmmword_29D2F1030));
      v176 = v516;
      v176.i32[3] = v11.i32[3];
      v177 = v156;
      v178 = vsubq_s8(v517, vqtbl2q_s8(*v173.i8, xmmword_29D2F0FA0));
      v179 = vsubq_s8(v516, vqtbl2q_s8(*v173.i8, xmmword_29D2F1040));
      v524.val[0] = v515;
      v524.val[1] = v507;
      v524.val[1].i32[3] = v11.i32[3];
      v180 = vsubq_s8(v515, vqtbl2q_s8(v524, xmmword_29D2F1050));
      v181 = vsubq_s8(v507, vqtbl2q_s8(v524, xmmword_29D2F0F80));
      v525.val[0] = v514;
      v525.val[1] = v506;
      v525.val[1].i32[3] = v11.i32[3];
      v182 = vsubq_s8(v514, vqtbl2q_s8(v525, xmmword_29D2F1060));
      v183 = vsubq_s8(v506, vqtbl2q_s8(v525, xmmword_29D2F0F80));
      v184 = v175;
      v184.i32[3] = v185.i32[0];
      v185.i32[0] = v175.i32[3];
      v186 = vqtbl1q_s8(vmaxq_s8(v185, v184), xmmword_29D2F0F70);
      v524.val[0] = vqtbl1q_s8(vminq_s8(v185, v184), xmmword_29D2F0F70);
      v187 = vpmaxq_s8(v186, v186);
      v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
      v188 = vpmaxq_s8(v187, v187);
      v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
      v525.val[0] = vzip1q_s8(v188, v524.val[0]);
      v189.i64[0] = 0x808080808080808;
      v189.i64[1] = 0x808080808080808;
      v190 = v168;
      v525.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v525.val[0])), vceqzq_s8(v525.val[0]));
      v191 = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[0] = vqtbl1q_s8(vmaxq_s8(v178, v179), xmmword_29D2F0F70);
      v525.val[1] = vqtbl1q_s8(vminq_s8(v178, v179), xmmword_29D2F0F70);
      v525.val[0] = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v525.val[0] = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v192 = vmaxq_s8(v188, v525.val[0]);
      v524.val[0] = vminq_s8(v524.val[0], v525.val[1]);
      v525.val[0] = vzip1q_s8(v525.val[0], v525.val[1]);
      v525.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v525.val[0])), vceqzq_s8(v525.val[0]));
      v193 = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[0] = vqtbl1q_s8(vmaxq_s8(v180, v181), xmmword_29D2F0F70);
      v525.val[1] = vqtbl1q_s8(vminq_s8(v180, v181), xmmword_29D2F0F70);
      v525.val[0] = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v525.val[0] = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v194 = vmaxq_s8(v192, v525.val[0]);
      v524.val[0] = vminq_s8(v524.val[0], v525.val[1]);
      v525.val[0] = vzip1q_s8(v525.val[0], v525.val[1]);
      v525.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v525.val[0])), vceqzq_s8(v525.val[0]));
      v195 = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[0] = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
      v525.val[1] = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
      v525.val[0] = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v196 = vpmaxq_s8(v525.val[0], v525.val[0]);
      v525.val[1] = vpminq_s8(v525.val[1], v525.val[1]);
      v197 = vmaxq_s8(v194, v196);
      v198 = vminq_s8(v524.val[0], v525.val[1]);
      v524.val[0] = vzip1q_s8(v196, v525.val[1]);
      v524.val[0] = vbicq_s8(vsubq_s8(v189, vclsq_s8(v524.val[0])), vceqzq_s8(v524.val[0]));
      v199 = vpmaxq_s8(v524.val[0], v524.val[0]);
      v200 = vmaxq_s8(vmaxq_s8(v191, v193), vmaxq_s8(v195, v199));
      v201 = vclzq_s8(vsubq_s8(v197, v198));
      v202 = vsubq_s8(v189, v201);
      v203 = vcgtq_s8(v200, v202);
      v204 = vminq_s8(v202, v200);
      v189.i64[0] = 0x909090909090909;
      v189.i64[1] = 0x909090909090909;
      v205.i64[0] = 0x202020202020202;
      v205.i64[1] = 0x202020202020202;
      v206 = vorrq_s8(vandq_s8(vceqzq_s8(v204), v205), vsubq_s8(vandq_s8(v203, v189), vmvnq_s8(v203)));
      v189.i64[0] = 0x303030303030303;
      v189.i64[1] = 0x303030303030303;
      v207 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v191), v189), 0);
      v208 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v193), v189), 0);
      v209 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v195), v189), 0);
      v210 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v199), v189), 0);
      v211 = vsubq_s8(v204, v207);
      v212 = vsubq_s8(v204, v208);
      v213 = vsubq_s8(v204, v209);
      v214 = vsubq_s8(v204, v210);
      v215 = vceqq_s8(vaddq_s8(v210, v209), vnegq_s8(vaddq_s8(v207, v208)));
      v210.i64[0] = 0x404040404040404;
      v210.i64[1] = 0x404040404040404;
      v216 = vorrq_s8(vbicq_s8(v210, v215), v206);
      v217 = vmovl_s8(*v170.i8);
      v209.i64[0] = 0x8000800080008;
      v209.i64[1] = 0x8000800080008;
      v218 = v157;
      v219 = v170;
      v220 = vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v217, v209)));
      v221.i64[0] = 0x3000300030003;
      v221.i64[1] = 0x3000300030003;
      v222 = vandq_s8(v217, v221);
      v221.i64[0] = 0x2000200020002;
      v221.i64[1] = 0x2000200020002;
      v223 = vandq_s8(vceqq_s16(v222, v221), v209);
      v224 = vaddq_s16(v220, vandq_s8(vshll_n_s8(*v219.i8, 1uLL), v209));
      v157 = v218;
      v225 = vaddq_s16(v224, v223);
      v174 = v509;
      v226 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v225, *v509.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v177.i8, *v190.i8), *v218.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v204.i8, vcgt_u8(0x808080808080808, *v216.i8))), vand_s8(vadd_s8(*v216.i8, *v216.i8), 0x808080808080808)), *v211.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v213.i8, *v212.i8), *v214.i8), 3uLL)))), 0);
      if (vaddlvq_s8(v226))
      {
        v227.i64[0] = 0x707070707070707;
        v227.i64[1] = 0x707070707070707;
        v228 = vsubq_s8(v227, v201);
        v227.i64[0] = -1;
        v227.i64[1] = -1;
        v229 = vandq_s8(vsubq_s8(vshlq_s8(v227, v228), v198), v203);
        v20.i32[0] = vbslq_s8(v226, vextq_s8(v11, v11, 0xCuLL), v20).u32[0];
        v511 = vbslq_s8(v226, v185, v511);
        v513 = vbslq_s8(v226, v184, v513);
        v139 = vbslq_s8(v226, v178, v139);
        v140 = vbslq_s8(v226, v179, v501);
        v135 = vbslq_s8(v226, v180, v503);
        v165 = vbslq_s8(v226, v181, v519);
        v166 = vbslq_s8(v226, v182, v521);
        v167 = vbslq_s8(v226, v183, v505);
        v174 = vbslq_s8(v226, v211, v509);
        v168 = vbslq_s8(v226, v212, v190);
        v230 = vbslq_s8(v226, v213, v177);
        v157 = vbslq_s8(v226, v214, v218);
        v169 = vbslq_s8(v226, v229, v523);
        v76 = vbslq_s8(v226, v204, v76);
        v170 = vbslq_s8(v226, v216, v219);
        v156 = v230;
      }

      else
      {
        v135 = v503;
        v167 = v505;
        v165 = v519;
        v166 = v521;
        v169 = v523;
        v140 = v501;
        v156 = v177;
        v168 = v190;
        v170 = v219;
      }

      v173 = v517;
    }

    v231 = vmovl_s8(*v170.i8);
    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233.i64[0] = 0x3000300030003;
    v233.i64[1] = 0x3000300030003;
    v234.i64[0] = 0x2000200020002;
    v234.i64[1] = 0x2000200020002;
    v235 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v231, v232))), vandq_s8(vshll_n_s8(*v170.i8, 1uLL), v232)), vandq_s8(vceqq_s16(vandq_s8(v231, v233), v234), v232)), *v174.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v168.i8), *v157.i8), 3uLL));
    v236 = vpaddq_s16(v235, v235);
    if ((vpaddq_s16(v236, v236).i16[0] + 71) > 0x3FF)
    {
      *a1 = v10;
      a1[1] = v11;
      a1[2] = v173;
      a1[3] = v516;
      a1[4] = v515;
      a1[5] = v507;
      v240 = a1 + 6;
      v171 = 127;
      result = 128;
      *v240 = v514;
      v240[1] = v506;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      *a2 = 0;
      v241 = vzip1_s8(*v76.i8, *v231.i8);
      v242 = vadd_s16(v241, 0xFF00FF00FF00FFLL);
      v243 = vmovl_u16(vceqz_s16((*&v241 & 0xFF00FF00FF00FFLL)));
      v244.i64[0] = v243.u32[0];
      v244.i64[1] = v243.u32[1];
      v245 = vshrq_n_s64(vshlq_n_s64(v244, 0x38uLL), 0x38uLL);
      v244.i64[0] = v243.u32[2];
      v244.i64[1] = v243.u32[3];
      v246 = vshrq_n_s64(vshlq_n_s64(v244, 0x38uLL), 0x38uLL);
      v247 = vshlq_u32(vmovl_u16(vand_s8(v242, 0x7000700070007)), xmmword_29D2F1070);
      v244.i64[0] = v247.u32[0];
      v244.i64[1] = v247.u32[1];
      v248 = v244;
      v244.i64[0] = v247.u32[2];
      v244.i64[1] = v247.u32[3];
      v249 = vorrq_s8(vbicq_s8(v248, v245), vbicq_s8(v244, v246));
      v250 = *&vorr_s8(*v249.i8, *&vextq_s8(v249, v249, 8uLL)) | (32 * (v170.i8[1] & 0x1F)) | ((v170.i8[3] & 0x1F) << 15) | ((v170.i8[2] & 0x1F) << 10) | v170.i8[0] & 0x1F;
      v251 = (v250 << v238) | v239;
      if (v238 >= 0x20)
      {
        *v237 = v251;
        v251 = v250 >> (-8 * (a1 & 7u));
      }

      v252 = v20.u8[0] | (v20.u8[1] << 8) | (v20.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v20.u8[3] << 24);
      v253 = (v238 + 32) & 0x38;
      v254 = v251 | (v252 << v253);
      if (v253 >= 0x20)
      {
        *(v237 + (((v238 + 32) >> 3) & 8)) = v254;
        v254 = v252 >> -v253;
      }

      v255 = vsubq_s8(v76, v174);
      v256 = vsubq_s8(v76, v168);
      v257 = vsubq_s8(v76, v156);
      v258 = vsubq_s8(v76, v157);
      v259 = vtrn1q_s8(v255, v256);
      v260 = vtrn2q_s8(v255, v256);
      v261 = vtrn1q_s8(v257, v258);
      v262 = vtrn2q_s8(v257, v258);
      v263 = vzip1q_s16(v260, v262);
      v264 = vtrn2q_s16(v260, v262);
      v262.i64[0] = vzip1q_s32(vzip1q_s16(v259, v261), v263).u64[0];
      v264.i64[0] = vzip1q_s32(vtrn2q_s16(v259, v261), v264).u64[0];
      v261.i64[0] = 0x202020202020202;
      v261.i64[1] = 0x202020202020202;
      v265 = vandq_s8(vmovl_s16(vtst_s16(*v231.i8, 0x4000400040004)), v261);
      v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v266 = vshlq_u8(v258, vorrq_s8(v265, v261));
      v267 = vmovl_u8(vand_s8(*v266.i8, *v262.i8));
      v268 = vmovl_u8(vand_s8(*&vextq_s8(v266, v266, 8uLL), *v264.i8));
      v269 = vmovl_u8(*v265.i8);
      v270 = vmovl_high_u8(v265);
      v271 = vpaddq_s16(vshlq_u16(v267, vtrn1q_s16(0, v269)), vshlq_u16(v268, vtrn1q_s16(0, v270)));
      v272 = vpaddq_s16(v269, v270);
      v273 = vmovl_u16(*v272.i8);
      v274 = vmovl_high_u16(v272);
      v275 = vpaddq_s32(vshlq_u32(vmovl_u16(*v271.i8), vtrn1q_s32(0, v273)), vshlq_u32(vmovl_high_u16(v271), vtrn1q_s32(0, v274)));
      v276 = vpaddq_s32(v273, v274);
      v277.i64[0] = v275.u32[0];
      v277.i64[1] = v275.u32[1];
      v278 = v277;
      v277.i64[0] = v275.u32[2];
      v277.i64[1] = v275.u32[3];
      v279 = v277;
      v277.i64[0] = v276.u32[0];
      v277.i64[1] = v276.u32[1];
      v280 = v277;
      v277.i64[0] = v276.u32[2];
      v277.i64[1] = v276.u32[3];
      v281 = vpaddq_s64(vshlq_u64(v278, vzip1q_s64(0, v280)), vshlq_u64(v279, vzip1q_s64(0, v277)));
      v282 = vpaddq_s64(v280, v277);
      v283 = (v281.i64[0] << v238) | v254;
      if (v282.i64[0] + v238 >= 0x40)
      {
        v237[1] = v283;
        v283 = v281.i64[0] >> (-8 * (a1 & 7u));
        if (!v238)
        {
          v283 = 0;
        }
      }

      v284 = vceqq_s8(v76, v174);
      v285 = v282.i64[0] + (v238 | 0x40);
      v286 = v283 | (v281.i64[1] << v285);
      if ((v285 & 0x3F) + v282.i64[1] >= 0x40)
      {
        *(v237 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v281.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = vandq_s8(v169, v284);
      v288 = v285 + v282.i64[1];
      v289.i64[0] = 0x808080808080808;
      v289.i64[1] = 0x808080808080808;
      v290.i64[0] = -1;
      v290.i64[1] = -1;
      v291 = vandq_s8(vextq_s8(vtstq_s8(v170, v289), 0, 0xCuLL), v76);
      v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v293 = vandq_s8(vshlq_u8(v290, vaddq_s8(v291, v292)), v169);
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
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v305.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v307 = 0;
        }
      }

      v308 = vaddq_s8(v287, v511);
      v309 = v306.i64[0] + v288;
      v310 = v307 | (v305.i64[1] << v309);
      if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
      {
        *(v237 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v305.i64[1] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309 + v306.i64[1];
      v312 = vextq_s8(0, v174, 0xCuLL);
      v313.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v313.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v314.i64[0] = -1;
      v314.i64[1] = -1;
      v315 = vandq_s8(vshlq_u8(v314, vaddq_s8(v312, v313)), v308);
      v316 = vmovl_u8(*v312.i8);
      v317 = vmovl_high_u8(v312);
      v318 = vpaddq_s16(vshlq_u16(vmovl_u8(*v315.i8), vtrn1q_s16(0, v316)), vshlq_u16(vmovl_high_u8(v315), vtrn1q_s16(0, v317)));
      v319 = vpaddq_s16(v316, v317);
      v320 = vmovl_u16(*v319.i8);
      v321 = vmovl_high_u16(v319);
      v322 = vpaddq_s32(vshlq_u32(vmovl_u16(*v318.i8), vtrn1q_s32(0, v320)), vshlq_u32(vmovl_high_u16(v318), vtrn1q_s32(0, v321)));
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
      v330 = (v328.i64[0] << v311) | v310;
      if (v329.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
        v330 = v328.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v330 = 0;
        }
      }

      v331 = vceqq_s8(v76, v168);
      v332 = vaddq_s8(v513, v287);
      v333 = v329.i64[0] + v311;
      v334 = v330 | (v328.i64[1] << v333);
      if ((v333 & 0x3F) + v329.i64[1] >= 0x40)
      {
        *(v237 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v328.i64[1] >> -(v333 & 0x3F);
        if ((v333 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vandq_s8(v169, v331);
      v336 = v333 + v329.i64[1];
      v337.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v337.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v338.i64[0] = -1;
      v338.i64[1] = -1;
      v339 = vandq_s8(vshlq_u8(v338, vaddq_s8(v174, v337)), v332);
      v340 = vmovl_u8(*v174.i8);
      v341 = vmovl_high_u8(v174);
      v342 = vpaddq_s16(vshlq_u16(vmovl_u8(*v339.i8), vtrn1q_s16(0, v340)), vshlq_u16(vmovl_high_u8(v339), vtrn1q_s16(0, v341)));
      v343 = vpaddq_s16(v340, v341);
      v344 = vmovl_u16(*v343.i8);
      v345 = vmovl_high_u16(v343);
      v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v342), vtrn1q_s32(0, v345)));
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
      v354 = (v352.i64[0] << v336) | v334;
      if (v353.i64[0] + (v336 & 0x3F) >= 0x40)
      {
        *(v237 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v352.i64[0] >> -(v336 & 0x3F);
        if ((v336 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = vaddq_s8(v139, v335);
      v356 = v353.i64[0] + v336;
      v357 = v354 | (v352.i64[1] << v356);
      if ((v356 & 0x3F) + v353.i64[1] >= 0x40)
      {
        *(v237 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v352.i64[1] >> -(v356 & 0x3F);
        if ((v356 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356 + v353.i64[1];
      v359.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v359.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v360.i64[0] = -1;
      v360.i64[1] = -1;
      v361 = vshlq_u8(v360, vaddq_s8(v168, v359));
      v362 = vandq_s8(v361, v355);
      v363 = vmovl_u8(*v362.i8);
      v364 = vmovl_high_u8(v362);
      v365 = vmovl_u8(*v168.i8);
      v366 = vmovl_high_u8(v168);
      v367 = vtrn1q_s16(0, v365);
      v368 = vtrn1q_s16(0, v366);
      v369 = vpaddq_s16(vshlq_u16(v363, v367), vshlq_u16(v364, v368));
      v370 = vpaddq_s16(v365, v366);
      v371 = vmovl_u16(*v369.i8);
      v372 = vmovl_high_u16(v369);
      v373 = vmovl_u16(*v370.i8);
      v374 = vmovl_high_u16(v370);
      v375 = vtrn1q_s32(0, v373);
      v376 = vtrn1q_s32(0, v374);
      v377 = vpaddq_s32(vshlq_u32(v371, v375), vshlq_u32(v372, v376));
      v378 = vpaddq_s32(v373, v374);
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
      v383 = vzip1q_s64(0, v382);
      v384 = vzip1q_s64(0, v379);
      v385 = vpaddq_s64(vshlq_u64(v380, v383), vshlq_u64(v381, v384));
      v386 = vpaddq_s64(v382, v379);
      v387 = (v385.i64[0] << v358) | v357;
      if (v386.i64[0] + (v358 & 0x3F) >= 0x40)
      {
        *(v237 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        if ((v358 & 0x3F) != 0)
        {
          v387 = v385.i64[0] >> -(v358 & 0x3F);
        }

        else
        {
          v387 = 0;
        }
      }

      v388 = vceqq_s8(v76, v156);
      v389 = vaddq_s8(v140, v335);
      v390 = v386.i64[0] + v358;
      v391 = v387 | (v385.i64[1] << v390);
      if ((v390 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v237 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
        v391 = v385.i64[1] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v391 = 0;
        }
      }

      v392 = vandq_s8(v169, v388);
      v393 = v390 + v386.i64[1];
      v394 = vandq_s8(v361, v389);
      v395 = vpaddq_s16(vshlq_u16(vmovl_u8(*v394.i8), v367), vshlq_u16(vmovl_high_u8(v394), v368));
      v396 = vpaddq_s32(vshlq_u32(vmovl_u16(*v395.i8), v375), vshlq_u32(vmovl_high_u16(v395), v376));
      v397.i64[0] = v396.u32[0];
      v397.i64[1] = v396.u32[1];
      v398 = v397;
      v397.i64[0] = v396.u32[2];
      v397.i64[1] = v396.u32[3];
      v399 = vpaddq_s64(vshlq_u64(v398, v383), vshlq_u64(v397, v384));
      v400 = (v399.i64[0] << v393) | v391;
      if (v386.i64[0] + (v393 & 0x3F) >= 0x40)
      {
        *(v237 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
        v400 = v399.i64[0] >> -(v393 & 0x3F);
        if ((v393 & 0x3F) == 0)
        {
          v400 = 0;
        }
      }

      v401 = vaddq_s8(v135, v392);
      v402 = v386.i64[0] + v393;
      v403 = (v386.i64[0] + v393) & 0x3F;
      v404 = v400 | (v399.i64[1] << v402);
      if ((v402 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v237 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        v404 = v399.i64[1] >> -v403;
        if (!v403)
        {
          v404 = 0;
        }
      }

      v405 = v402 + v386.i64[1];
      v406.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v406.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v407.i64[0] = -1;
      v407.i64[1] = -1;
      v408 = vshlq_u8(v407, vaddq_s8(v156, v406));
      v409 = vandq_s8(v408, v401);
      v410 = vmovl_u8(*v409.i8);
      v411 = vmovl_high_u8(v409);
      v412 = vmovl_u8(*v156.i8);
      v413 = vmovl_high_u8(v156);
      v414 = vtrn1q_s16(0, v412);
      v415 = vtrn1q_s16(0, v413);
      v416 = vpaddq_s16(vshlq_u16(v410, v414), vshlq_u16(v411, v415));
      v417 = vpaddq_s16(v412, v413);
      v418 = vmovl_u16(*v416.i8);
      v419 = vmovl_high_u16(v416);
      v420 = vmovl_u16(*v417.i8);
      v421 = vmovl_high_u16(v417);
      v422 = vtrn1q_s32(0, v420);
      v423 = vtrn1q_s32(0, v421);
      v424 = vpaddq_s32(vshlq_u32(v418, v422), vshlq_u32(v419, v423));
      v425 = vpaddq_s32(v420, v421);
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
      v430 = vzip1q_s64(0, v429);
      v431 = vzip1q_s64(0, v426);
      v432 = vpaddq_s64(vshlq_u64(v427, v430), vshlq_u64(v428, v431));
      v433 = vpaddq_s64(v429, v426);
      v434 = (v432.i64[0] << v405) | v404;
      if (v433.i64[0] + (v405 & 0x3F) >= 0x40)
      {
        *(v237 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
        if ((v405 & 0x3F) != 0)
        {
          v434 = v432.i64[0] >> -(v405 & 0x3F);
        }

        else
        {
          v434 = 0;
        }
      }

      v435 = vceqq_s8(v76, v157);
      v436 = vaddq_s8(v165, v392);
      v437 = v433.i64[0] + v405;
      v438 = v434 | (v432.i64[1] << v437);
      if ((v437 & 0x3F) + v433.i64[1] >= 0x40)
      {
        *(v237 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
        v438 = v432.i64[1] >> -(v437 & 0x3F);
        if ((v437 & 0x3F) == 0)
        {
          v438 = 0;
        }
      }

      v439 = vandq_s8(v169, v435);
      v440 = v437 + v433.i64[1];
      v441 = vandq_s8(v408, v436);
      v442 = vpaddq_s16(vshlq_u16(vmovl_u8(*v441.i8), v414), vshlq_u16(vmovl_high_u8(v441), v415));
      v443 = vpaddq_s32(vshlq_u32(vmovl_u16(*v442.i8), v422), vshlq_u32(vmovl_high_u16(v442), v423));
      v444.i64[0] = v443.u32[0];
      v444.i64[1] = v443.u32[1];
      v445 = v444;
      v444.i64[0] = v443.u32[2];
      v444.i64[1] = v443.u32[3];
      v446 = vpaddq_s64(vshlq_u64(v445, v430), vshlq_u64(v444, v431));
      v447 = (v446.i64[0] << v440) | v438;
      if (v433.i64[0] + (v440 & 0x3F) >= 0x40)
      {
        *(v237 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
        v447 = v446.i64[0] >> -(v440 & 0x3F);
        if ((v440 & 0x3F) == 0)
        {
          v447 = 0;
        }
      }

      v448 = vaddq_s8(v166, v439);
      v449 = v433.i64[0] + v440;
      v450 = (v433.i64[0] + v440) & 0x3F;
      v451 = v447 | (v446.i64[1] << v449);
      if ((v449 & 0x3F) + v433.i64[1] >= 0x40)
      {
        *(v237 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v451;
        v451 = v446.i64[1] >> -v450;
        if (!v450)
        {
          v451 = 0;
        }
      }

      v452 = v449 + v433.i64[1];
      v453.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v453.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v454.i64[0] = -1;
      v454.i64[1] = -1;
      v455 = vshlq_u8(v454, vaddq_s8(v157, v453));
      v456 = vandq_s8(v455, v448);
      v457 = vmovl_u8(*v456.i8);
      v458 = vmovl_high_u8(v456);
      v459 = vmovl_u8(*v157.i8);
      v460 = vmovl_high_u8(v157);
      v461 = vtrn1q_s16(0, v459);
      v462 = vtrn1q_s16(0, v460);
      v463 = vpaddq_s16(vshlq_u16(v457, v461), vshlq_u16(v458, v462));
      v464 = vpaddq_s16(v459, v460);
      v465 = vmovl_u16(*v463.i8);
      v466 = vmovl_high_u16(v463);
      v467 = vmovl_u16(*v464.i8);
      v468 = vmovl_high_u16(v464);
      v469 = vtrn1q_s32(0, v467);
      v470 = vtrn1q_s32(0, v468);
      v471 = vpaddq_s32(vshlq_u32(v465, v469), vshlq_u32(v466, v470));
      v472 = vpaddq_s32(v467, v468);
      v473.i64[0] = v471.u32[0];
      v473.i64[1] = v471.u32[1];
      v474 = v473;
      v473.i64[0] = v471.u32[2];
      v473.i64[1] = v471.u32[3];
      v475 = v473;
      v473.i64[0] = v472.u32[0];
      v473.i64[1] = v472.u32[1];
      v476 = v473;
      v473.i64[0] = v472.u32[2];
      v473.i64[1] = v472.u32[3];
      v477 = vzip1q_s64(0, v476);
      v478 = vzip1q_s64(0, v473);
      v479 = vpaddq_s64(vshlq_u64(v474, v477), vshlq_u64(v475, v478));
      v480 = vpaddq_s64(v476, v473);
      v481 = (v479.i64[0] << v452) | v451;
      if (v480.i64[0] + (v452 & 0x3F) > 0x3F)
      {
        *(v237 + ((v452 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
        if ((v452 & 0x3F) != 0)
        {
          v481 = v479.i64[0] >> -(v452 & 0x3F);
        }

        else
        {
          v481 = 0;
        }
      }

      v482 = vaddq_s8(v167, v439);
      v483 = v480.i64[0] + v452;
      v484 = v481 | (v479.i64[1] << v483);
      if ((v483 & 0x3F) + v480.i64[1] >= 0x40)
      {
        *(v237 + ((v483 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v484;
        v484 = v479.i64[1] >> -(v483 & 0x3F);
        if ((v483 & 0x3F) == 0)
        {
          v484 = 0;
        }
      }

      v485 = v483 + v480.i64[1];
      v486 = vandq_s8(v455, v482);
      v487 = vpaddq_s16(vshlq_u16(vmovl_u8(*v486.i8), v461), vshlq_u16(vmovl_high_u8(v486), v462));
      v488 = vpaddq_s32(vshlq_u32(vmovl_u16(*v487.i8), v469), vshlq_u32(vmovl_high_u16(v487), v470));
      v489.i64[0] = v488.u32[0];
      v489.i64[1] = v488.u32[1];
      v490 = v489;
      v489.i64[0] = v488.u32[2];
      v489.i64[1] = v488.u32[3];
      v491 = vpaddq_s64(vshlq_u64(v490, v477), vshlq_u64(v489, v478));
      v492 = (v491.i64[0] << v485) | v484;
      if (v480.i64[0] + (v485 & 0x3F) >= 0x40)
      {
        *(v237 + ((v485 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
        v492 = v491.i64[0] >> -(v485 & 0x3F);
        if ((v485 & 0x3F) == 0)
        {
          v492 = 0;
        }
      }

      v493 = v480.i64[0] + v485;
      v494 = (v480.i64[0] + v485) & 0x3F;
      v495 = v492 | (v491.i64[1] << (v480.i8[0] + v485));
      if ((v494 + v480.i64[1]) >= 0x40)
      {
        *(v237 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v495;
        v495 = v491.i64[1] >> -v494;
        if (!v494)
        {
          v495 = 0;
        }
      }

      v496 = v493 + v480.i64[1];
      if ((v496 & 0x3F) != 0)
      {
        *(v237 + ((v496 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v495;
      }

      result = (v496 - v238 + 7) >> 3;
      v171 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i32[0] = a3->i32[0];
    v171 = 3;
    result = 4;
  }

  *a2 = v171;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 32), a2, v25, v24);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v17 = v14[1];
  v18 = vzip2q_s64(v8, v10);
  v19 = vzip1q_s64(v15, *v14);
  v20 = vzip2q_s64(v15, *v14);
  v21 = vzip1q_s64(v16, v17);
  v22 = vdupq_lane_s32(*v11.i8, 0);
  v23 = vzip2q_s64(v16, v17);
  v24 = vsubq_s8(v11, v22);
  v25 = vsubq_s8(v12, v22);
  v26 = vsubq_s8(v19, v22);
  v27 = vsubq_s8(v20, v22);
  v28 = vsubq_s8(v13, v22);
  v29 = vsubq_s8(v18, v22);
  v30 = vsubq_s8(v21, v22);
  v31 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v32 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v33 = vpmaxq_s8(v31, v31);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vzip1q_s8(v35, v36);
  v38.i64[0] = 0x808080808080808;
  v38.i64[1] = 0x808080808080808;
  v39 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v37)), vceqzq_s8(v37));
  v40 = vpmaxq_s8(v39, v39);
  v41 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v42 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vpmaxq_s8(v43, v43);
  v46 = vpminq_s8(v44, v44);
  v47 = vmaxq_s8(v35, v45);
  v48 = vminq_s8(v36, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v49)), vceqzq_s8(v49));
  v51 = vpmaxq_s8(v50, v50);
  v52 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v53 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vpmaxq_s8(v54, v54);
  v57 = vpminq_s8(v55, v55);
  v58 = vmaxq_s8(v47, v56);
  v59 = vminq_s8(v48, v57);
  v60 = vzip1q_s8(v56, v57);
  v61 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v60)), vceqzq_s8(v60));
  v62 = vpmaxq_s8(v61, v61);
  v540 = vsubq_s8(v23, v22);
  v63 = vqtbl1q_s8(vmaxq_s8(v30, v540), xmmword_29D2F0F70);
  v64 = vqtbl1q_s8(vminq_s8(v30, v540), xmmword_29D2F0F70);
  v65 = vpmaxq_s8(v63, v63);
  v66 = vpminq_s8(v64, v64);
  v67 = vpmaxq_s8(v65, v65);
  v68 = vpminq_s8(v66, v66);
  v69 = vmaxq_s8(v58, v67);
  v70 = vminq_s8(v59, v68);
  v71 = vzip1q_s8(v67, v68);
  v72 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v71)), vceqzq_s8(v71));
  v73 = vpmaxq_s8(v72, v72);
  v74 = vmaxq_s8(vmaxq_s8(v40, v51), vmaxq_s8(v62, v73));
  v75 = vclzq_s8(vsubq_s8(v69, v70));
  v76 = vsubq_s8(v38, v75);
  v77 = vminq_s8(v76, v74);
  if (!vmaxvq_s8(v77))
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v515 = v19;
  v516 = v20;
  v517 = v18;
  v518 = v23;
  v519 = v21;
  v520 = v13;
  v78.i64[0] = -1;
  v78.i64[1] = -1;
  v79.i64[0] = 0x707070707070707;
  v79.i64[1] = 0x707070707070707;
  v80 = vcgtq_s8(v74, v76);
  v538 = vandq_s8(vsubq_s8(vshlq_s8(v78, vsubq_s8(v79, v75)), v70), v80);
  v81.i64[0] = 0x303030303030303;
  v81.i64[1] = 0x303030303030303;
  v82 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v40), v81), 0);
  v522 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v62), v81), 0);
  v524 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v51), v81), 0);
  v83 = vmaxq_s8(vminq_s8(vsubq_s8(v77, v73), v81), 0);
  v84.i64[0] = 0x404040404040404;
  v84.i64[1] = 0x404040404040404;
  v85 = vorrq_s8(vbicq_s8(v84, vceqq_s8(vaddq_s8(v83, v522), vnegq_s8(vaddq_s8(v82, v524)))), vorrq_s8(vandq_s8(vceqzq_s8(v77), v81), vandq_s8(v80, v38)));
  v526 = v24;
  v86 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
  v528 = v25;
  v87 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1010));
  v88 = vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1010));
  v89 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1010));
  v90 = vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1010));
  v91 = vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1010));
  v92 = vsubq_s8(v540, vqtbl1q_s8(v540, xmmword_29D2F1010));
  v521 = vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1010));
  v93 = vqtbl1q_s8(vmaxq_s8(v86, v521), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v86, v521), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vzip1q_s8(v97, v98);
  v100 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v99)), vceqzq_s8(v99));
  v101 = vpmaxq_s8(v100, v100);
  v534 = v29;
  v536 = v30;
  v102 = vqtbl1q_s8(vmaxq_s8(v87, v88), xmmword_29D2F0F70);
  v103 = vqtbl1q_s8(vminq_s8(v87, v88), xmmword_29D2F0F70);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vmaxq_s8(v97, v106);
  v109 = vzip1q_s8(v106, v107);
  v110 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v109)), vceqzq_s8(v109));
  v111 = vpmaxq_s8(v110, v110);
  v530 = v26;
  v112 = vqtbl1q_s8(vmaxq_s8(v89, v90), xmmword_29D2F0F70);
  v113 = vqtbl1q_s8(vminq_s8(v89, v90), xmmword_29D2F0F70);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vpmaxq_s8(v114, v114);
  v117 = vpminq_s8(v115, v115);
  v118 = vmaxq_s8(v108, v116);
  v119 = vminq_s8(vminq_s8(v98, v107), v117);
  v120 = vzip1q_s8(v116, v117);
  v121 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v120)), vceqzq_s8(v120));
  v122 = vpmaxq_s8(v121, v121);
  v123 = vqtbl1q_s8(vmaxq_s8(v91, v92), xmmword_29D2F0F70);
  v124 = vqtbl1q_s8(vminq_s8(v91, v92), xmmword_29D2F0F70);
  v125 = vpmaxq_s8(v123, v123);
  v126 = vpminq_s8(v124, v124);
  v532 = v28;
  v127 = vpmaxq_s8(v125, v125);
  v128 = vpminq_s8(v126, v126);
  v129 = vminq_s8(v119, v128);
  v130 = vzip1q_s8(v127, v128);
  v131 = vbicq_s8(vsubq_s8(v38, vclsq_s8(v130)), vceqzq_s8(v130));
  v132 = vpmaxq_s8(v131, v131);
  v133 = vmaxq_s8(vmaxq_s8(v101, v111), vmaxq_s8(v122, v132));
  v134 = vclzq_s8(vsubq_s8(vmaxq_s8(v118, v127), v129));
  v135 = vsubq_s8(v38, v134);
  v136 = vcgtq_s8(v133, v135);
  v137 = vminq_s8(v135, v133);
  v135.i64[0] = 0x1010101010101010;
  v135.i64[1] = 0x1010101010101010;
  v138.i64[0] = 0x1818181818181818;
  v138.i64[1] = 0x1818181818181818;
  v139 = vorrq_s8(vandq_s8(vceqzq_s8(v137), v81), vbslq_s8(v136, v138, v135));
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v101), v81), 0);
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v111), v81), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v122), v81), 0);
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v132), v81), 0);
  v144 = vsubq_s8(v137, v140);
  v145 = vsubq_s8(v137, v141);
  v146 = vsubq_s8(v137, v142);
  v147 = vsubq_s8(v137, v143);
  v80.i64[0] = 0x404040404040404;
  v80.i64[1] = 0x404040404040404;
  v148 = vorrq_s8(vbicq_s8(v80, vceqq_s8(vaddq_s8(v143, v142), vnegq_s8(vaddq_s8(v140, v141)))), v139);
  v149 = vmovl_u8(*v148.i8);
  v143.i64[0] = 0x8000800080008;
  v143.i64[1] = 0x8000800080008;
  v150 = v27;
  v151.i64[0] = 0x2000200020002;
  v151.i64[1] = 0x2000200020002;
  v152 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v137.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v143)), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v151), v143)), *v144.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL));
  v153 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v85.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v77.i8, vcgt_u8(0x808080808080808, *v85.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v85.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v151), v143));
  v154 = vsubq_s8(v77, v82);
  v155 = vsubq_s8(v77, v524);
  v156 = vsubq_s8(v77, v522);
  v157 = vsubq_s8(v77, v83);
  v158 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v153, *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v155.i8), *v157.i8), 3uLL)), v152)), 0);
  v159 = vaddlvq_s8(v158);
  v161 = a5 < 4 || a6 < 2;
  if (v159)
  {
    v162.i64[0] = 0x707070707070707;
    v162.i64[1] = 0x707070707070707;
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    v164 = vandq_s8(vsubq_s8(vshlq_s8(v163, vsubq_s8(v162, v134)), v129), v136);
    v22 = vbslq_s8(v158, vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010)), v22);
    v165 = vbslq_s8(v158, v88, v150);
    v166 = vbslq_s8(v158, v89, v532);
    v167 = vbslq_s8(v158, v90, v534);
    v540 = vbslq_s8(v158, v92, v540);
    v154 = vbslq_s8(v158, v144, v154);
    v155 = vbslq_s8(v158, v145, v155);
    v156 = vbslq_s8(v158, v146, v156);
    v157 = vbslq_s8(v158, v147, v157);
    v168 = vbslq_s8(v158, v164, v538);
    v77 = vbslq_s8(v158, v137, v77);
    v85 = vbslq_s8(v158, v148, v85);
    v169 = vbslq_s8(v158, v91, v536);
    v170 = vbslq_s8(v158, v87, v530);
    v171 = vbslq_s8(v158, v521, v528);
    v172 = vbslq_s8(v158, v86, v526);
    if (v161)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v167 = v534;
    v169 = v30;
    v168 = v538;
    v170 = v530;
    v166 = v532;
    v165 = v150;
    v171 = v528;
    v172 = v526;
    if (v161)
    {
      goto LABEL_16;
    }
  }

  v174 = v172;
  v529 = v171;
  v531 = v170;
  v527 = v165;
  v533 = v166;
  v535 = v167;
  v537 = v169;
  v539 = v168;
  v185 = vsubq_s8(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v175 = vsubq_s8(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v542.val[0] = v515;
  v542.val[1] = v516;
  v542.val[1].i32[3] = v12.i32[3];
  v176 = vsubq_s8(v515, vqtbl2q_s8(v542, xmmword_29D2F0FA0));
  v177 = vsubq_s8(v516, vqtbl2q_s8(v542, xmmword_29D2F1040));
  v541.val[0] = v520;
  v541.val[1] = v517;
  v541.val[1].i32[3] = v12.i32[3];
  v178 = vqtbl2q_s8(v541, xmmword_29D2F0F80);
  v179 = vsubq_s8(v520, vqtbl2q_s8(v541, xmmword_29D2F1050));
  v180 = vsubq_s8(v517, v178);
  v541.val[1] = v519;
  v181 = v518;
  v181.i32[3] = v12.i32[3];
  v182 = vsubq_s8(v519, vqtbl2q_s8(*(&v541 + 16), xmmword_29D2F1060));
  v183 = vsubq_s8(v518, vqtbl2q_s8(*(&v541 + 16), xmmword_29D2F0F80));
  v184 = v175;
  v184.i32[3] = v185.i32[0];
  v185.i32[0] = v175.i32[3];
  v186 = vqtbl1q_s8(vmaxq_s8(v185, v184), xmmword_29D2F0F70);
  v542.val[1] = vqtbl1q_s8(vminq_s8(v185, v184), xmmword_29D2F0F70);
  v187 = vpmaxq_s8(v186, v186);
  v542.val[1] = vpminq_s8(v542.val[1], v542.val[1]);
  v188 = vpmaxq_s8(v187, v187);
  v542.val[1] = vpminq_s8(v542.val[1], v542.val[1]);
  v189 = vzip1q_s8(v188, v542.val[1]);
  v190.i64[0] = 0x808080808080808;
  v190.i64[1] = 0x808080808080808;
  v191 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v189)), vceqzq_s8(v189));
  v192 = vpmaxq_s8(v191, v191);
  v523 = v176;
  v525 = v177;
  v193 = vqtbl1q_s8(vmaxq_s8(v176, v177), xmmword_29D2F0F70);
  v194 = vqtbl1q_s8(vminq_s8(v176, v177), xmmword_29D2F0F70);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vpmaxq_s8(v195, v195);
  v198 = vpminq_s8(v196, v196);
  v199 = vmaxq_s8(v188, v197);
  v542.val[1] = vminq_s8(v542.val[1], v198);
  v200 = vzip1q_s8(v197, v198);
  v201 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v200)), vceqzq_s8(v200));
  v202 = v156;
  v203 = vpmaxq_s8(v201, v201);
  v204 = vqtbl1q_s8(vmaxq_s8(v179, v180), xmmword_29D2F0F70);
  v205 = vqtbl1q_s8(vminq_s8(v179, v180), xmmword_29D2F0F70);
  v206 = vpmaxq_s8(v204, v204);
  v207 = vpminq_s8(v205, v205);
  v208 = vpmaxq_s8(v206, v206);
  v209 = vpminq_s8(v207, v207);
  v210 = vmaxq_s8(v199, v208);
  v542.val[1] = vminq_s8(v542.val[1], v209);
  v211 = vzip1q_s8(v208, v209);
  v212 = vbicq_s8(vsubq_s8(v190, vclsq_s8(v211)), vceqzq_s8(v211));
  v213 = v155;
  v214 = vpmaxq_s8(v212, v212);
  v215 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v216 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v217 = vpmaxq_s8(v215, v215);
  v218 = vpminq_s8(v216, v216);
  v219 = vpmaxq_s8(v217, v217);
  v220 = vpminq_s8(v218, v218);
  v221 = vmaxq_s8(v210, v219);
  v222 = vminq_s8(v542.val[1], v220);
  v542.val[1] = vzip1q_s8(v219, v220);
  v542.val[1] = vbicq_s8(vsubq_s8(v190, vclsq_s8(v542.val[1])), vceqzq_s8(v542.val[1]));
  v223 = vpmaxq_s8(v542.val[1], v542.val[1]);
  v542.val[1] = vmaxq_s8(vmaxq_s8(v192, v203), vmaxq_s8(v214, v223));
  v224 = vclzq_s8(vsubq_s8(v221, v222));
  v225 = vsubq_s8(v190, v224);
  v226 = vcgtq_s8(v542.val[1], v225);
  v227 = vminq_s8(v225, v542.val[1]);
  v225.i64[0] = 0x909090909090909;
  v225.i64[1] = 0x909090909090909;
  v176.i64[0] = 0x202020202020202;
  v176.i64[1] = 0x202020202020202;
  v228 = vorrq_s8(vandq_s8(vceqzq_s8(v227), v176), vsubq_s8(vandq_s8(v226, v225), vmvnq_s8(v226)));
  v229 = vsubq_s8(v227, v192);
  v192.i64[0] = 0x303030303030303;
  v192.i64[1] = 0x303030303030303;
  v230 = vmaxq_s8(vminq_s8(v229, v192), 0);
  v231 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v203), v192), 0);
  v232 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v214), v192), 0);
  v233 = vmaxq_s8(vminq_s8(vsubq_s8(v227, v223), v192), 0);
  v234 = vsubq_s8(v227, v230);
  v235 = vsubq_s8(v227, v231);
  v236 = vsubq_s8(v227, v232);
  v237 = vsubq_s8(v227, v233);
  v238 = vceqq_s8(vaddq_s8(v233, v232), vnegq_s8(vaddq_s8(v230, v231)));
  v232.i64[0] = 0x404040404040404;
  v232.i64[1] = 0x404040404040404;
  v239 = vorrq_s8(vbicq_s8(v232, v238), v228);
  v240 = v157;
  v241.i64[0] = 0x3000300030003;
  v241.i64[1] = 0x3000300030003;
  v242 = vmovl_s8(*v85.i8);
  v230.i64[0] = 0x8000800080008;
  v230.i64[1] = 0x8000800080008;
  v243 = vbicq_s8(vmovl_s8(*v77.i8), vceqzq_s16(vandq_s8(v242, v230)));
  v244 = vandq_s8(v242, v241);
  v241.i64[0] = 0x2000200020002;
  v241.i64[1] = 0x2000200020002;
  v245 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v243, vandq_s8(vshll_n_s8(*v85.i8, 1uLL), v230)), vandq_s8(vceqq_s16(v244, v241), v230)), *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v202.i8, *v213.i8), *v240.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v227.i8, vcgt_u8(0x808080808080808, *v239.i8))), vand_s8(vadd_s8(*v239.i8, *v239.i8), 0x808080808080808)), *v234.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v236.i8, *v235.i8), *v237.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v245))
  {
    v246.i64[0] = 0x707070707070707;
    v246.i64[1] = 0x707070707070707;
    v247 = vsubq_s8(v246, v224);
    v246.i64[0] = -1;
    v246.i64[1] = -1;
    v248 = vandq_s8(vsubq_s8(vshlq_s8(v246, v247), v222), v226);
    v22.i32[0] = vbslq_s8(v245, vextq_s8(v12, v12, 0xCuLL), v22).u32[0];
    v172 = vbslq_s8(v245, v185, v174);
    v171 = vbslq_s8(v245, v184, v529);
    v170 = vbslq_s8(v245, v523, v531);
    v165 = vbslq_s8(v245, v525, v527);
    v166 = vbslq_s8(v245, v179, v533);
    v167 = vbslq_s8(v245, v180, v535);
    v169 = vbslq_s8(v245, v182, v537);
    v540 = vbslq_s8(v245, v183, v540);
    v154 = vbslq_s8(v245, v234, v154);
    v249 = vbslq_s8(v245, v236, v202);
    v157 = vbslq_s8(v245, v237, v240);
    v168 = vbslq_s8(v245, v248, v539);
    v77 = vbslq_s8(v245, v227, v77);
    v85 = vbslq_s8(v245, v239, v85);
    v156 = v249;
    v155 = vbslq_s8(v245, v235, v213);
  }

  else
  {
    v167 = v535;
    v169 = v537;
    v168 = v539;
    v170 = v531;
    v166 = v533;
    v165 = v527;
    v157 = v240;
    v171 = v529;
    v156 = v202;
    v172 = v174;
    v155 = v213;
  }

LABEL_16:
  v250 = vmovl_s8(*v85.i8);
  v251.i64[0] = 0x8000800080008;
  v251.i64[1] = 0x8000800080008;
  v252.i64[0] = 0x3000300030003;
  v252.i64[1] = 0x3000300030003;
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v254 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v77.i8), vceqzq_s16(vandq_s8(v250, v251))), vandq_s8(vshll_n_s8(*v85.i8, 1uLL), v251)), vandq_s8(vceqq_s16(vandq_s8(v250, v252), v253), v251)), *v154.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v156.i8, *v155.i8), *v157.i8), 3uLL));
  v255 = vpaddq_s16(v254, v254);
  if ((vpaddq_s16(v255, v255).i16[0] - 705) < 0xFFFFFFFFFFFFFCF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 96;
  }

  else
  {
    v256 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v257 = 8 * (a1 & 7);
    if (v257)
    {
      v258 = *v256 & ~(-1 << v257);
    }

    else
    {
      v258 = 0;
    }

    *a2 = 0;
    v259 = vzip1_s8(*v77.i8, *v250.i8);
    v260 = vadd_s16(v259, 0xFF00FF00FF00FFLL);
    v261 = vmovl_u16(vceqz_s16((*&v259 & 0xFF00FF00FF00FFLL)));
    v262.i64[0] = v261.u32[0];
    v262.i64[1] = v261.u32[1];
    v263 = vshrq_n_s64(vshlq_n_s64(v262, 0x38uLL), 0x38uLL);
    v262.i64[0] = v261.u32[2];
    v262.i64[1] = v261.u32[3];
    v264 = vshrq_n_s64(vshlq_n_s64(v262, 0x38uLL), 0x38uLL);
    v265 = vshlq_u32(vmovl_u16(vand_s8(v260, 0x7000700070007)), xmmword_29D2F1070);
    v262.i64[0] = v265.u32[0];
    v262.i64[1] = v265.u32[1];
    v266 = v262;
    v262.i64[0] = v265.u32[2];
    v262.i64[1] = v265.u32[3];
    v267 = vorrq_s8(vbicq_s8(v266, v263), vbicq_s8(v262, v264));
    v268 = *&vorr_s8(*v267.i8, *&vextq_s8(v267, v267, 8uLL)) | (32 * (v85.i8[1] & 0x1F)) | ((v85.i8[3] & 0x1F) << 15) | ((v85.i8[2] & 0x1F) << 10) | v85.i8[0] & 0x1F;
    v269 = (v268 << v257) | v258;
    if (v257 >= 0x20)
    {
      *v256 = v269;
      v269 = v268 >> (-8 * (a1 & 7u));
    }

    v270 = v22.u8[0] | (v22.u8[1] << 8) | (v22.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v22.u8[3] << 24);
    v271 = (v257 + 32) & 0x38;
    v272 = v269 | (v270 << v271);
    if (v271 >= 0x20)
    {
      *(v256 + (((v257 + 32) >> 3) & 8)) = v272;
      v272 = v270 >> -v271;
    }

    v273 = vsubq_s8(v77, v154);
    v274 = vsubq_s8(v77, v155);
    v275 = vsubq_s8(v77, v156);
    v276 = vsubq_s8(v77, v157);
    v277 = vtrn1q_s8(v273, v274);
    v278 = vtrn2q_s8(v273, v274);
    v279 = vtrn1q_s8(v275, v276);
    v280 = vtrn2q_s8(v275, v276);
    v281 = vzip1q_s16(v278, v280);
    v282 = vtrn2q_s16(v278, v280);
    v280.i64[0] = vzip1q_s32(vzip1q_s16(v277, v279), v281).u64[0];
    v282.i64[0] = vzip1q_s32(vtrn2q_s16(v277, v279), v282).u64[0];
    v279.i64[0] = 0x202020202020202;
    v279.i64[1] = 0x202020202020202;
    v283 = vandq_s8(vmovl_s16(vtst_s16(*v250.i8, 0x4000400040004)), v279);
    v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v276.i64[0] = -1;
    v276.i64[1] = -1;
    v284 = vshlq_u8(v276, vorrq_s8(v283, v279));
    v285 = vmovl_u8(vand_s8(*v284.i8, *v280.i8));
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
    v301 = (v299.i64[0] << v257) | v272;
    if (v300.i64[0] + v257 >= 0x40)
    {
      v256[1] = v301;
      v301 = v299.i64[0] >> (-8 * (a1 & 7u));
      if (!v257)
      {
        v301 = 0;
      }
    }

    v302 = vceqq_s8(v77, v154);
    v303 = v300.i64[0] + (v257 | 0x40);
    v304 = v301 | (v299.i64[1] << v303);
    if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v256 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
      v304 = v299.i64[1] >> -(v303 & 0x3F);
      if ((v303 & 0x3F) == 0)
      {
        v304 = 0;
      }
    }

    v305 = vandq_s8(v168, v302);
    v306 = v303 + v300.i64[1];
    v307.i64[0] = 0x808080808080808;
    v307.i64[1] = 0x808080808080808;
    v308.i64[0] = -1;
    v308.i64[1] = -1;
    v309 = vandq_s8(vextq_s8(vtstq_s8(v85, v307), 0, 0xCuLL), v77);
    v310.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v311 = vandq_s8(vshlq_u8(v308, vaddq_s8(v309, v310)), v168);
    v312 = vmovl_u8(*v309.i8);
    v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v311.i8), vtrn1q_s16(0, v312)), vmovl_high_u8(v311));
    v314 = vpaddq_s16(v312, vmovl_high_u8(v309));
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
    v325 = (v323.i64[0] << v306) | v304;
    if (v324.i64[0] + (v306 & 0x3F) >= 0x40)
    {
      *(v256 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
      v325 = v323.i64[0] >> -(v306 & 0x3F);
      if ((v306 & 0x3F) == 0)
      {
        v325 = 0;
      }
    }

    v326 = vaddq_s8(v305, v172);
    v327 = v324.i64[0] + v306;
    v328 = v325 | (v323.i64[1] << v327);
    if ((v327 & 0x3F) + v324.i64[1] >= 0x40)
    {
      *(v256 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
      v328 = v323.i64[1] >> -(v327 & 0x3F);
      if ((v327 & 0x3F) == 0)
      {
        v328 = 0;
      }
    }

    v329 = v327 + v324.i64[1];
    v330 = vextq_s8(0, v154, 0xCuLL);
    v331.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v331.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v332.i64[0] = -1;
    v332.i64[1] = -1;
    v333 = vandq_s8(vshlq_u8(v332, vaddq_s8(v330, v331)), v326);
    v334 = vmovl_u8(*v330.i8);
    v335 = vmovl_high_u8(v330);
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
    v348 = (v346.i64[0] << v329) | v328;
    if (v347.i64[0] + (v329 & 0x3F) >= 0x40)
    {
      *(v256 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v346.i64[0] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = vceqq_s8(v77, v155);
    v350 = vaddq_s8(v171, v305);
    v351 = v347.i64[0] + v329;
    v352 = v348 | (v346.i64[1] << v351);
    if ((v351 & 0x3F) + v347.i64[1] >= 0x40)
    {
      *(v256 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
      v352 = v346.i64[1] >> -(v351 & 0x3F);
      if ((v351 & 0x3F) == 0)
      {
        v352 = 0;
      }
    }

    v353 = vandq_s8(v168, v349);
    v354 = v351 + v347.i64[1];
    v355.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v355.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v356.i64[0] = -1;
    v356.i64[1] = -1;
    v357 = vandq_s8(vshlq_u8(v356, vaddq_s8(v154, v355)), v350);
    v358 = vmovl_u8(*v154.i8);
    v359 = vmovl_high_u8(v154);
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
      *(v256 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
      v372 = v370.i64[0] >> -(v354 & 0x3F);
      if ((v354 & 0x3F) == 0)
      {
        v372 = 0;
      }
    }

    v373 = vaddq_s8(v170, v353);
    v374 = v371.i64[0] + v354;
    v375 = v372 | (v370.i64[1] << v374);
    if ((v374 & 0x3F) + v371.i64[1] >= 0x40)
    {
      *(v256 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
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
    v379 = vshlq_u8(v378, vaddq_s8(v155, v377));
    v380 = vandq_s8(v379, v373);
    v381 = vmovl_u8(*v380.i8);
    v382 = vmovl_high_u8(v380);
    v383 = vmovl_u8(*v155.i8);
    v384 = vmovl_high_u8(v155);
    v385 = vtrn1q_s16(0, v383);
    v386 = vtrn1q_s16(0, v384);
    v387 = vpaddq_s16(vshlq_u16(v381, v385), vshlq_u16(v382, v386));
    v388 = vpaddq_s16(v383, v384);
    v389 = vmovl_u16(*v387.i8);
    v390 = vmovl_high_u16(v387);
    v391 = vmovl_u16(*v388.i8);
    v392 = vmovl_high_u16(v388);
    v393 = vtrn1q_s32(0, v391);
    v394 = vtrn1q_s32(0, v392);
    v395 = vpaddq_s32(vshlq_u32(v389, v393), vshlq_u32(v390, v394));
    v396 = vpaddq_s32(v391, v392);
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
    v401 = vzip1q_s64(0, v400);
    v402 = vzip1q_s64(0, v397);
    v403 = vpaddq_s64(vshlq_u64(v398, v401), vshlq_u64(v399, v402));
    v404 = vpaddq_s64(v400, v397);
    v405 = (v403.i64[0] << v376) | v375;
    if (v404.i64[0] + (v376 & 0x3F) >= 0x40)
    {
      *(v256 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v405;
      if ((v376 & 0x3F) != 0)
      {
        v405 = v403.i64[0] >> -(v376 & 0x3F);
      }

      else
      {
        v405 = 0;
      }
    }

    v406 = vceqq_s8(v77, v156);
    v407 = vaddq_s8(v165, v353);
    v408 = v404.i64[0] + v376;
    v409 = v405 | (v403.i64[1] << v408);
    if ((v408 & 0x3F) + v404.i64[1] >= 0x40)
    {
      *(v256 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
      v409 = v403.i64[1] >> -(v408 & 0x3F);
      if ((v408 & 0x3F) == 0)
      {
        v409 = 0;
      }
    }

    v410 = vandq_s8(v168, v406);
    v411 = v408 + v404.i64[1];
    v412 = vandq_s8(v379, v407);
    v413 = vpaddq_s16(vshlq_u16(vmovl_u8(*v412.i8), v385), vshlq_u16(vmovl_high_u8(v412), v386));
    v414 = vpaddq_s32(vshlq_u32(vmovl_u16(*v413.i8), v393), vshlq_u32(vmovl_high_u16(v413), v394));
    v415.i64[0] = v414.u32[0];
    v415.i64[1] = v414.u32[1];
    v416 = v415;
    v415.i64[0] = v414.u32[2];
    v415.i64[1] = v414.u32[3];
    v417 = vpaddq_s64(vshlq_u64(v416, v401), vshlq_u64(v415, v402));
    v418 = (v417.i64[0] << v411) | v409;
    if (v404.i64[0] + (v411 & 0x3F) >= 0x40)
    {
      *(v256 + ((v411 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      v418 = v417.i64[0] >> -(v411 & 0x3F);
      if ((v411 & 0x3F) == 0)
      {
        v418 = 0;
      }
    }

    v419 = vaddq_s8(v166, v410);
    v420 = v404.i64[0] + v411;
    v421 = (v404.i64[0] + v411) & 0x3F;
    v422 = v418 | (v417.i64[1] << v420);
    if ((v420 & 0x3F) + v404.i64[1] >= 0x40)
    {
      *(v256 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v417.i64[1] >> -v421;
      if (!v421)
      {
        v422 = 0;
      }
    }

    v423 = v420 + v404.i64[1];
    v424.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v424.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v425.i64[0] = -1;
    v425.i64[1] = -1;
    v426 = vshlq_u8(v425, vaddq_s8(v156, v424));
    v427 = vandq_s8(v426, v419);
    v428 = vmovl_u8(*v427.i8);
    v429 = vmovl_high_u8(v427);
    v430 = vmovl_u8(*v156.i8);
    v431 = vmovl_high_u8(v156);
    v432 = vtrn1q_s16(0, v430);
    v433 = vtrn1q_s16(0, v431);
    v434 = vpaddq_s16(vshlq_u16(v428, v432), vshlq_u16(v429, v433));
    v435 = vpaddq_s16(v430, v431);
    v436 = vmovl_u16(*v434.i8);
    v437 = vmovl_high_u16(v434);
    v438 = vmovl_u16(*v435.i8);
    v439 = vmovl_high_u16(v435);
    v440 = vtrn1q_s32(0, v438);
    v441 = vtrn1q_s32(0, v439);
    v442 = vpaddq_s32(vshlq_u32(v436, v440), vshlq_u32(v437, v441));
    v443 = vpaddq_s32(v438, v439);
    v444.i64[0] = v442.u32[0];
    v444.i64[1] = v442.u32[1];
    v445 = v444;
    v444.i64[0] = v442.u32[2];
    v444.i64[1] = v442.u32[3];
    v446 = v444;
    v444.i64[0] = v443.u32[0];
    v444.i64[1] = v443.u32[1];
    v447 = v444;
    v444.i64[0] = v443.u32[2];
    v444.i64[1] = v443.u32[3];
    v448 = vzip1q_s64(0, v447);
    v449 = vzip1q_s64(0, v444);
    v450 = vpaddq_s64(vshlq_u64(v445, v448), vshlq_u64(v446, v449));
    v451 = vpaddq_s64(v447, v444);
    v452 = (v450.i64[0] << v423) | v422;
    if (v451.i64[0] + (v423 & 0x3F) >= 0x40)
    {
      *(v256 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      if ((v423 & 0x3F) != 0)
      {
        v452 = v450.i64[0] >> -(v423 & 0x3F);
      }

      else
      {
        v452 = 0;
      }
    }

    v453 = vceqq_s8(v77, v157);
    v454 = vaddq_s8(v167, v410);
    v455 = v451.i64[0] + v423;
    v456 = v452 | (v450.i64[1] << v455);
    if ((v455 & 0x3F) + v451.i64[1] >= 0x40)
    {
      *(v256 + ((v455 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
      v456 = v450.i64[1] >> -(v455 & 0x3F);
      if ((v455 & 0x3F) == 0)
      {
        v456 = 0;
      }
    }

    v457 = vandq_s8(v168, v453);
    v458 = v455 + v451.i64[1];
    v459 = vandq_s8(v426, v454);
    v460 = vpaddq_s16(vshlq_u16(vmovl_u8(*v459.i8), v432), vshlq_u16(vmovl_high_u8(v459), v433));
    v461 = vpaddq_s32(vshlq_u32(vmovl_u16(*v460.i8), v440), vshlq_u32(vmovl_high_u16(v460), v441));
    v462.i64[0] = v461.u32[0];
    v462.i64[1] = v461.u32[1];
    v463 = v462;
    v462.i64[0] = v461.u32[2];
    v462.i64[1] = v461.u32[3];
    v464 = vpaddq_s64(vshlq_u64(v463, v448), vshlq_u64(v462, v449));
    v465 = (v464.i64[0] << v458) | v456;
    if (v451.i64[0] + (v458 & 0x3F) >= 0x40)
    {
      *(v256 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
      v465 = v464.i64[0] >> -(v458 & 0x3F);
      if ((v458 & 0x3F) == 0)
      {
        v465 = 0;
      }
    }

    v466 = vaddq_s8(v169, v457);
    v467 = v451.i64[0] + v458;
    v468 = (v451.i64[0] + v458) & 0x3F;
    v469 = v465 | (v464.i64[1] << v467);
    if ((v467 & 0x3F) + v451.i64[1] >= 0x40)
    {
      *(v256 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      v469 = v464.i64[1] >> -v468;
      if (!v468)
      {
        v469 = 0;
      }
    }

    v470 = v467 + v451.i64[1];
    v471.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v471.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v472.i64[0] = -1;
    v472.i64[1] = -1;
    v473 = vshlq_u8(v472, vaddq_s8(v157, v471));
    v474 = vandq_s8(v473, v466);
    v475 = vmovl_u8(*v474.i8);
    v476 = vmovl_high_u8(v474);
    v477 = vmovl_u8(*v157.i8);
    v478 = vmovl_high_u8(v157);
    v479 = vtrn1q_s16(0, v477);
    v480 = vtrn1q_s16(0, v478);
    v481 = vpaddq_s16(vshlq_u16(v475, v479), vshlq_u16(v476, v480));
    v482 = vpaddq_s16(v477, v478);
    v483 = vmovl_u16(*v481.i8);
    v484 = vmovl_high_u16(v481);
    v485 = vmovl_u16(*v482.i8);
    v486 = vmovl_high_u16(v482);
    v487 = vtrn1q_s32(0, v485);
    v488 = vtrn1q_s32(0, v486);
    v489 = vpaddq_s32(vshlq_u32(v483, v487), vshlq_u32(v484, v488));
    v490 = vpaddq_s32(v485, v486);
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
    v495 = vzip1q_s64(0, v494);
    v496 = vzip1q_s64(0, v491);
    v497 = vpaddq_s64(vshlq_u64(v492, v495), vshlq_u64(v493, v496));
    v498 = vpaddq_s64(v494, v491);
    v499 = (v497.i64[0] << v470) | v469;
    if (v498.i64[0] + (v470 & 0x3F) > 0x3F)
    {
      *(v256 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v499;
      if ((v470 & 0x3F) != 0)
      {
        v499 = v497.i64[0] >> -(v470 & 0x3F);
      }

      else
      {
        v499 = 0;
      }
    }

    v500 = vaddq_s8(v540, v457);
    v501 = v498.i64[0] + v470;
    v502 = v499 | (v497.i64[1] << v501);
    if ((v501 & 0x3F) + v498.i64[1] >= 0x40)
    {
      *(v256 + ((v501 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v502;
      v502 = v497.i64[1] >> -(v501 & 0x3F);
      if ((v501 & 0x3F) == 0)
      {
        v502 = 0;
      }
    }

    v503 = v501 + v498.i64[1];
    v504 = vandq_s8(v473, v500);
    v505 = vpaddq_s16(vshlq_u16(vmovl_u8(*v504.i8), v479), vshlq_u16(vmovl_high_u8(v504), v480));
    v506 = vpaddq_s32(vshlq_u32(vmovl_u16(*v505.i8), v487), vshlq_u32(vmovl_high_u16(v505), v488));
    v507.i64[0] = v506.u32[0];
    v507.i64[1] = v506.u32[1];
    v508 = v507;
    v507.i64[0] = v506.u32[2];
    v507.i64[1] = v506.u32[3];
    v509 = vpaddq_s64(vshlq_u64(v508, v495), vshlq_u64(v507, v496));
    v510 = (v509.i64[0] << v503) | v502;
    if (v498.i64[0] + (v503 & 0x3F) >= 0x40)
    {
      *(v256 + ((v503 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      v510 = v509.i64[0] >> -(v503 & 0x3F);
      if ((v503 & 0x3F) == 0)
      {
        v510 = 0;
      }
    }

    v511 = v498.i64[0] + v503;
    v512 = (v498.i64[0] + v503) & 0x3F;
    v513 = v510 | (v509.i64[1] << (v498.i8[0] + v503));
    if ((v512 + v498.i64[1]) >= 0x40)
    {
      *(v256 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      v513 = v509.i64[1] >> -v512;
      if (!v512)
      {
        v513 = 0;
      }
    }

    v514 = v511 + v498.i64[1];
    if ((v514 & 0x3F) != 0)
    {
      *(v256 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
    }

    result = (v514 - v257 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v105 = *MEMORY[0x29EDCA608];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v98;
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
        v29 = &v98;
        v30 = (a3 + 4);
        v31 = &v97 + 2 * ((a5 >> 1) & 0x3F);
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
      v13 = &v97 + 1;
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
        v18 = &v97 + v11;
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

  v40 = vmovl_u8(v97).u64[0];
  v41 = vmovl_u16(v40);
  v40.i32[0] = v98;
  v42 = vmovl_u16(*&vmovl_u8(v40));
  v89 = v41;
  v90 = v42;
  v42.i32[0] = DWORD1(v97);
  v42.i64[0] = vmovl_u8(*v42.i8).u64[0];
  v43 = vmovl_u16(*v42.i8);
  v42.i32[0] = DWORD1(v98);
  v44 = vmovl_u16(*&vmovl_u8(*v42.i8));
  v91 = v43;
  v92 = v44;
  v44.i32[0] = v99;
  v44.i64[0] = vmovl_u8(*v44.i8).u64[0];
  v45 = vmovl_u16(*v44.i8);
  v44.i32[0] = v100;
  v46 = vmovl_u16(*&vmovl_u8(*v44.i8));
  v93 = v45;
  v94 = v46;
  v46.i32[0] = DWORD1(v99);
  v46.i64[0] = vmovl_u8(*v46.i8).u64[0];
  v47 = vmovl_u16(*v46.i8);
  v46.i32[0] = DWORD1(v100);
  v95 = v47;
  v96 = vmovl_u16(*&vmovl_u8(*v46.i8));
  if (a5 >= 4)
  {
    v48 = 4;
  }

  else
  {
    v48 = a5;
  }

  if (a5 >= 4)
  {
    v49 = a5 - 4;
  }

  else
  {
    v49 = 0;
  }

  if (a6 >= 2)
  {
    v50 = 2;
  }

  else
  {
    v50 = a6;
  }

  if (a6 >= 2)
  {
    v51 = a6 - 2;
  }

  else
  {
    v51 = 0;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v89, a7, v48, v50);
  v53.i32[0] = DWORD2(v97);
  v54 = vmovl_u8(v53).u64[0];
  v55 = vmovl_u16(v54);
  v54.i32[0] = DWORD2(v98);
  v56 = vmovl_u16(*&vmovl_u8(v54));
  v89 = v55;
  v90 = v56;
  v56.i32[0] = HIDWORD(v97);
  v56.i64[0] = vmovl_u8(*v56.i8).u64[0];
  v57 = vmovl_u16(*v56.i8);
  v56.i32[0] = HIDWORD(v98);
  v58 = vmovl_u16(*&vmovl_u8(*v56.i8));
  v91 = v57;
  v92 = v58;
  v58.i32[0] = DWORD2(v99);
  v58.i64[0] = vmovl_u8(*v58.i8).u64[0];
  v59 = vmovl_u16(*v58.i8);
  v58.i32[0] = DWORD2(v100);
  v60 = vmovl_u16(*&vmovl_u8(*v58.i8));
  v93 = v59;
  v94 = v60;
  v60.i32[0] = HIDWORD(v99);
  v60.i64[0] = vmovl_u8(*v60.i8).u64[0];
  v61 = vmovl_u16(*v60.i8);
  v60.i32[0] = HIDWORD(v100);
  v95 = v61;
  v96 = vmovl_u16(*&vmovl_u8(*v60.i8));
  if (a6 >= 4)
  {
    v62 = 2;
  }

  else
  {
    v62 = v51;
  }

  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v89, a7, v48, v62);
  v64.i32[0] = v101;
  v65 = vmovl_u8(v64).u64[0];
  v66 = vmovl_u16(v65);
  v65.i32[0] = v102;
  v67 = vmovl_u16(*&vmovl_u8(v65));
  v89 = v66;
  v90 = v67;
  v67.i32[0] = DWORD1(v101);
  v67.i64[0] = vmovl_u8(*v67.i8).u64[0];
  v68 = vmovl_u16(*v67.i8);
  v67.i32[0] = DWORD1(v102);
  v69 = vmovl_u16(*&vmovl_u8(*v67.i8));
  v91 = v68;
  v92 = v69;
  v69.i32[0] = v103;
  v69.i64[0] = vmovl_u8(*v69.i8).u64[0];
  v70 = vmovl_u16(*v69.i8);
  v69.i32[0] = v104;
  v71 = vmovl_u16(*&vmovl_u8(*v69.i8));
  v93 = v70;
  v94 = v71;
  v71.i32[0] = DWORD1(v103);
  v71.i64[0] = vmovl_u8(*v71.i8).u64[0];
  v72 = vmovl_u16(*v71.i8);
  v71.i32[0] = DWORD1(v104);
  v95 = v72;
  v96 = vmovl_u16(*&vmovl_u8(*v71.i8));
  if (a5 >= 8)
  {
    v73 = 4;
  }

  else
  {
    v73 = v49;
  }

  v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 48, &v89, a7, v73, v50);
  v75.i32[0] = DWORD2(v101);
  v76 = vmovl_u8(v75).u64[0];
  v77 = vmovl_u16(v76);
  v76.i32[0] = DWORD2(v102);
  v78 = vmovl_u16(*&vmovl_u8(v76));
  v89 = v77;
  v90 = v78;
  v78.i32[0] = HIDWORD(v101);
  v78.i64[0] = vmovl_u8(*v78.i8).u64[0];
  v79 = vmovl_u16(*v78.i8);
  v78.i32[0] = HIDWORD(v102);
  v80 = vmovl_u16(*&vmovl_u8(*v78.i8));
  v91 = v79;
  v92 = v80;
  v80.i32[0] = DWORD2(v103);
  v80.i64[0] = vmovl_u8(*v80.i8).u64[0];
  v81 = vmovl_u16(*v80.i8);
  v80.i32[0] = DWORD2(v104);
  v82 = vmovl_u16(*&vmovl_u8(*v80.i8));
  v93 = v81;
  v94 = v82;
  v82.i32[0] = HIDWORD(v103);
  v82.i64[0] = vmovl_u8(*v82.i8).u64[0];
  v83 = vmovl_u16(*v82.i8);
  v82.i32[0] = HIDWORD(v104);
  v95 = v83;
  v96 = vmovl_u16(*&vmovl_u8(*v82.i8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 72, &v89, a7, v73, v62);
  if (v74)
  {
    v85 = 4;
  }

  else
  {
    v85 = 0;
  }

  if (v63)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  if (result)
  {
    v87 = -8;
  }

  else
  {
    v87 = -16;
  }

  *a2 = v87 | v85 | v52 | v86;
  return result;
}