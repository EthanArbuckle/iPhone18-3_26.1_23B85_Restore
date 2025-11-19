uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v17 = vzip2q_s64(v8, v10);
  v18 = v14[1];
  v19 = vzip2q_s64(v15, *v14);
  v20 = vzip2q_s64(v16, v18);
  v21 = vdupq_lane_s32(*v11.i8, 0);
  v22 = vsubq_s16(v11, v21);
  v23 = vsubq_s16(v12, v21);
  v486 = vzip1q_s64(v15, *v14);
  v24 = vsubq_s16(v486, v21);
  v25 = vsubq_s16(v19, v21);
  v26 = vsubq_s16(v13, v21);
  v27 = vsubq_s16(v17, v21);
  v488 = vzip1q_s64(v16, v18);
  v28 = vsubq_s16(v488, v21);
  v29 = vsubq_s16(v20, v21);
  v30 = vqtbl1q_s8(vmaxq_s16(v22, v23), xmmword_29D2F1090);
  v31 = vqtbl1q_s8(vminq_s16(v22, v23), xmmword_29D2F1090);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36.i64[0] = 0x8000800080008000;
  v36.i64[1] = 0x8000800080008000;
  v37 = vmaxq_s16(v34, v36);
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v38 = vminq_s16(v35, v10);
  v39 = vzip1q_s16(v34, v35);
  v40.i64[0] = 0x10001000100010;
  v40.i64[1] = 0x10001000100010;
  v41 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v39)), vceqzq_s16(v39));
  v42 = vpmaxq_s16(v41, v41);
  v43 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v44 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v37, v47);
  v50 = vminq_s16(v38, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v55 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v56 = vpmaxq_s16(v54, v54);
  v57 = vpminq_s16(v55, v55);
  v58 = vpmaxq_s16(v56, v56);
  v59 = vpminq_s16(v57, v57);
  v60 = vmaxq_s16(v49, v58);
  v61 = vminq_s16(v50, v59);
  v62 = vzip1q_s16(v58, v59);
  v63 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v62)), vceqzq_s16(v62));
  v64 = vpmaxq_s16(v63, v63);
  v65 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v66 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
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
  if (!vmaxvq_s16(v79))
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v472 = v19;
  v473 = v17;
  v474 = v20;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81.i64[0] = 0xF000F000F000FLL;
  v81.i64[1] = 0xF000F000F000FLL;
  v490 = vsubq_s16(vshlq_s16(v80, vsubq_s16(v81, v77)), v72);
  v82 = vcgtq_s16(v76, v78);
  v83.i64[0] = 0x8000800080008;
  v83.i64[1] = 0x8000800080008;
  v84.i64[0] = 0x3000300030003;
  v84.i64[1] = 0x3000300030003;
  v482 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v42), v84), 0);
  v484 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v53), v84), 0);
  v85 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v64), v84), 0);
  v86.i64[0] = 0x8000800080008000;
  v86.i64[1] = 0x8000800080008000;
  v87 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v75), v84), 0);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v89 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v87, v85), vnegq_s16(vaddq_s16(v482, v484))));
  v481 = vorrq_s8(vandq_s8(vceqzq_s16(v79), v84), vandq_s8(v82, v83));
  v492 = v24;
  v90 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v91 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
  v92 = vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080));
  v93 = vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080));
  v500 = v29;
  v478 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v479 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v94 = vqtbl1q_s8(vmaxq_s16(v479, v478), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v479, v478), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v36);
  v101 = vminq_s16(v99, v86);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = v22;
  v105 = vpmaxq_s16(v103, v103);
  v476 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
  v477 = v90;
  v106 = vqtbl1q_s8(vmaxq_s16(v90, v476), xmmword_29D2F1090);
  v107 = vqtbl1q_s8(vminq_s16(v90, v476), xmmword_29D2F1090);
  v108 = vpmaxq_s16(v106, v106);
  v109 = vpminq_s16(v107, v107);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vmaxq_s16(v100, v110);
  v113 = vminq_s16(v101, v111);
  v114 = vzip1q_s16(v110, v111);
  v115 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v114)), vceqzq_s16(v114));
  v496 = v27;
  v116 = vpmaxq_s16(v115, v115);
  v475 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
  v117 = vqtbl1q_s8(vmaxq_s16(v475, v91), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v475, v91), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v112, v121);
  v124 = vminq_s16(v113, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v125)), vceqzq_s16(v125));
  v494 = v26;
  v127 = vpmaxq_s16(v126, v126);
  v128 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
  v129 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
  v130 = vpmaxq_s16(v128, v128);
  v131 = vpminq_s16(v129, v129);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v498 = v28;
  v134 = vmaxq_s16(v123, v132);
  v135 = vminq_s16(v124, v133);
  v136 = vzip1q_s16(v132, v133);
  v137 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v136)), vceqzq_s16(v136));
  v138 = vpmaxq_s16(v137, v137);
  v139 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v138));
  v140 = vclzq_s16(vsubq_s16(v134, v135));
  v141 = vsubq_s16(v40, v140);
  v142 = vcgtq_s16(v139, v141);
  v143 = vminq_s16(v141, v139);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v144 = vbslq_s8(v142, v141, v40);
  v145 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v105), v84), 0);
  v146 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v116), v84), 0);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v127), v84), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v138), v84), 0);
  v149 = vsubq_s16(v143, v145);
  v150 = vsubq_s16(v143, v146);
  v151 = vsubq_s16(v143, v147);
  v152 = vaddq_s16(v145, v146);
  v153 = vsubq_s16(v143, v148);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v154 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v148, v147), vnegq_s16(v152)));
  v155 = v25;
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v157 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v143, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v154, v154)), v149, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v153), 3uLL));
  v158 = vandq_s8(v490, v82);
  v159 = vorrq_s8(v481, v89);
  v160 = vaddq_s16(vandq_s8(v79, v82), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v79, v482);
  v162 = vsubq_s16(v79, v484);
  v163 = vsubq_s16(v79, v85);
  v164 = vmlaq_s16(v160, v161, v156);
  v165 = vsubq_s16(v79, v87);
  v166 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v164, vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v165), 3uLL)), v157), 0);
  v167 = vaddvq_s16(v166);
  v169 = a5 < 4 || a6 < 2;
  if (v167)
  {
    v170.i64[0] = 0x3000300030003;
    v170.i64[1] = 0x3000300030003;
    v171 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v143), v170), v144), v154);
    v170.i64[0] = 0xF000F000F000FLL;
    v170.i64[1] = 0xF000F000F000FLL;
    v172 = vsubq_s16(v170, v140);
    v173.i64[0] = -1;
    v173.i64[1] = -1;
    v174 = vandq_s8(vsubq_s16(vshlq_s16(v173, v172), v135), v142);
    v21 = vbslq_s8(v166, vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080)), v21);
    v491 = vbslq_s8(v166, v479, v104);
    v485 = vbslq_s8(v166, v478, v23);
    v175 = vbslq_s8(v166, v476, v155);
    v176 = vbslq_s8(v166, v475, v494);
    v177 = vbslq_s8(v166, v93, v500);
    v178 = vbslq_s8(v166, v149, v161);
    v483 = vbslq_s8(v166, v150, v162);
    v179 = vbslq_s8(v166, v151, v163);
    v165 = vbslq_s8(v166, v153, v165);
    v158 = vbslq_s8(v166, v174, v158);
    v79 = vbslq_s8(v166, v143, v79);
    v180 = vbslq_s8(v166, v171, v159);
    v181 = vbslq_s8(v166, v92, v498);
    v182 = vbslq_s8(v166, v91, v496);
    v183 = vbslq_s8(v166, v477, v492);
    v184 = v178;
    if (v169)
    {
LABEL_10:
      v185 = v483;
      v186 = v485;
      goto LABEL_16;
    }
  }

  else
  {
    v483 = v162;
    v491 = v104;
    v485 = v23;
    v181 = v498;
    v177 = v500;
    v176 = v494;
    v182 = v496;
    v175 = v155;
    v183 = v492;
    v179 = v163;
    v184 = v161;
    v180 = v159;
    if (v169)
    {
      goto LABEL_10;
    }
  }

  v480 = v158;
  v493 = v183;
  v495 = v176;
  v497 = v182;
  v499 = v181;
  v501 = v177;
  v188 = v165;
  v197 = vsubq_s16(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v189 = vsubq_s16(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v502.val[0] = v486;
  v502.val[1] = v472;
  v502.val[1].i32[3] = v12.i32[3];
  v190 = vsubq_s16(v486, vqtbl2q_s8(v502, xmmword_29D2F0FA0));
  v191 = vsubq_s16(v472, vqtbl2q_s8(v502, xmmword_29D2F1040));
  v192 = v13;
  v502.val[0] = v473;
  v502.val[0].i32[3] = v12.i32[3];
  v193 = vsubq_s16(v13, vqtbl2q_s8(v502, xmmword_29D2F1050));
  v194 = vsubq_s16(v473, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v502.val[0] = v488;
  v502.val[1] = v474;
  v502.val[1].i32[3] = v12.i32[3];
  v195 = vsubq_s16(v488, vqtbl2q_s8(v502, xmmword_29D2F1060));
  v196 = v189;
  v196.i32[3] = v197.i32[0];
  v197.i32[0] = v189.i32[3];
  v198 = vsubq_s16(v474, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v199 = vqtbl1q_s8(vmaxq_s16(v197, v196), xmmword_29D2F1090);
  v200 = vqtbl1q_s8(vminq_s16(v197, v196), xmmword_29D2F1090);
  v201 = vpmaxq_s16(v199, v199);
  v202 = vpminq_s16(v200, v200);
  v203 = vpmaxq_s16(v201, v201);
  v204 = vpminq_s16(v202, v202);
  v502.val[0].i64[0] = 0x8000800080008000;
  v502.val[0].i64[1] = 0x8000800080008000;
  v502.val[0] = vmaxq_s16(v203, v502.val[0]);
  v502.val[1].i64[0] = 0x8000800080008000;
  v502.val[1].i64[1] = 0x8000800080008000;
  v502.val[1] = vminq_s16(v204, v502.val[1]);
  v205 = vzip1q_s16(v203, v204);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v206 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v205)), vceqzq_s16(v205));
  v207 = vpmaxq_s16(v206, v206);
  v489 = v190;
  v487 = v191;
  v208 = vqtbl1q_s8(vmaxq_s16(v190, v191), xmmword_29D2F1090);
  v209 = vqtbl1q_s8(vminq_s16(v190, v191), xmmword_29D2F1090);
  v210 = vpmaxq_s16(v208, v208);
  v211 = vpminq_s16(v209, v209);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v502.val[0] = vmaxq_s16(v502.val[0], v212);
  v502.val[1] = vminq_s16(v502.val[1], v213);
  v214 = vzip1q_s16(v212, v213);
  v215 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v214)), vceqzq_s16(v214));
  v216 = vpmaxq_s16(v215, v215);
  v217 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
  v218 = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
  v219 = vpmaxq_s16(v217, v217);
  v220 = vpminq_s16(v218, v218);
  v221 = vpmaxq_s16(v219, v219);
  v222 = vpminq_s16(v220, v220);
  v502.val[0] = vmaxq_s16(v502.val[0], v221);
  v502.val[1] = vminq_s16(v502.val[1], v222);
  v223 = vzip1q_s16(v221, v222);
  v224 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v223)), vceqzq_s16(v223));
  v225 = vpmaxq_s16(v224, v224);
  v226 = vqtbl1q_s8(vmaxq_s16(v195, v198), xmmword_29D2F1090);
  v227 = vqtbl1q_s8(vminq_s16(v195, v198), xmmword_29D2F1090);
  v228 = vpmaxq_s16(v226, v226);
  v229 = vpminq_s16(v227, v227);
  v230 = vpmaxq_s16(v228, v228);
  v231 = vpminq_s16(v229, v229);
  v502.val[0] = vmaxq_s16(v502.val[0], v230);
  v232 = vminq_s16(v502.val[1], v231);
  v233 = vzip1q_s16(v230, v231);
  v234 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v233)), vceqzq_s16(v233));
  v235 = vpmaxq_s16(v234, v234);
  v236 = vmaxq_s16(vmaxq_s16(v207, v216), vmaxq_s16(v225, v235));
  v237 = vclzq_s16(vsubq_s16(v502.val[0], v232));
  v238 = vsubq_s16(v203, v237);
  v239 = vcgtq_s16(v236, v238);
  v240 = vminq_s16(v238, v236);
  v241.i64[0] = 0x3000300030003;
  v241.i64[1] = 0x3000300030003;
  v242 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v207), v241), 0);
  v243 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v216), v241), 0);
  v244 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v225), v241), 0);
  v245 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v235), v241), 0);
  v246 = vsubq_s16(v240, v242);
  v247 = vsubq_s16(v240, v243);
  v248 = vsubq_s16(v240, v244);
  v249 = vsubq_s16(v240, v245);
  v250 = vceqq_s16(vaddq_s16(v245, v244), vnegq_s16(vaddq_s16(v242, v243)));
  v243.i64[0] = 0x4000400040004;
  v243.i64[1] = 0x4000400040004;
  v251 = vbicq_s8(v243, v250);
  v245.i64[0] = 0x7000700070007;
  v245.i64[1] = 0x7000700070007;
  v243.i64[0] = 0x8000800080008;
  v243.i64[1] = 0x8000800080008;
  v252 = vandq_s8(v180, v241);
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v185 = v483;
  v254 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(vandq_s8(v180, v243))), vandq_s8(vaddq_s16(v180, v180), v243)), vandq_s8(vceqq_s16(v252, v253), v203)), v184, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v483), v188), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v240, v239), vaddq_s16(v251, v251)), v246, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v248, v247), v249), 3uLL))), 0);
  if (vaddvq_s16(v254))
  {
    v255.i64[0] = 0x9000900090009;
    v255.i64[1] = 0x9000900090009;
    v256 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v240), v253), vsubq_s16(vandq_s8(v239, v255), vmvnq_s8(v239))), v251);
    v255.i64[0] = 0xF000F000F000FLL;
    v255.i64[1] = 0xF000F000F000FLL;
    v257 = vsubq_s16(v255, v237);
    v255.i64[0] = -1;
    v255.i64[1] = -1;
    v258 = vandq_s8(vsubq_s16(vshlq_s16(v255, v257), v232), v239);
    v21.i32[0] = vbslq_s8(v254, vextq_s8(v12, v12, 0xCuLL), v21).u32[0];
    v491 = vbslq_s8(v254, v197, v491);
    v186 = vbslq_s8(v254, v196, v485);
    v175 = vbslq_s8(v254, v487, v175);
    v176 = vbslq_s8(v254, v193, v495);
    v182 = vbslq_s8(v254, v194, v497);
    v181 = vbslq_s8(v254, v195, v499);
    v177 = vbslq_s8(v254, v198, v501);
    v184 = vbslq_s8(v254, v246, v184);
    v185 = vbslq_s8(v254, v247, v483);
    v179 = vbslq_s8(v254, v248, v179);
    v165 = vbslq_s8(v254, v249, v188);
    v158 = vbslq_s8(v254, v258, v480);
    v79 = vbslq_s8(v254, v240, v79);
    v180 = vbslq_s8(v254, v256, v180);
    v183 = vbslq_s8(v254, v489, v493);
  }

  else
  {
    v181 = v499;
    v177 = v501;
    v176 = v495;
    v182 = v497;
    v158 = v480;
    v165 = v188;
    v183 = v493;
    v186 = v485;
  }

LABEL_16:
  v259.i64[0] = 0x8000800080008;
  v259.i64[1] = 0x8000800080008;
  v260 = vandq_s8(v180, v259);
  v261.i64[0] = 0x3000300030003;
  v261.i64[1] = 0x3000300030003;
  v262.i64[0] = 0x2000200020002;
  v262.i64[1] = 0x2000200020002;
  v263 = vceqq_s16(vandq_s8(v180, v261), v262);
  v262.i64[0] = 0x10001000100010;
  v262.i64[1] = 0x10001000100010;
  v264 = vandq_s8(v263, v262);
  v262.i64[0] = 0x7000700070007;
  v262.i64[1] = 0x7000700070007;
  v265 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(v260)), vandq_s8(vaddq_s16(v180, v180), v259)), v264), v184, v262), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v185), v165), 3uLL));
  if ((vpaddq_s16(v265, v265).i16[0] - 591) < 0xFFFFFFFFFFFFFD78)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 80;
  }

  else
  {
    v266 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v267 = 8 * (a1 & 7);
    if (v267)
    {
      v268 = *v266 & ~(-1 << v267);
    }

    else
    {
      v268 = 0;
    }

    *a2 = 0;
    if (v79.i16[0])
    {
      v269 = ((v79.i16[0] << 10) + 15360) & 0x3C00;
    }

    else
    {
      v269 = 0;
    }

    if (v79.i16[1])
    {
      v270 = ((v79.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v270 = 0;
    }

    v271 = v269 | v270 | v180.i8[0] & 0x1F | (32 * (v180.i8[2] & 0x1Fu));
    v272 = (v271 << v267) | v268;
    if (v267 >= 0x2E)
    {
      *v266 = v272;
      v272 = v271 >> (-8 * (a1 & 7u));
    }

    v273 = (v267 + 18) & 0x3A;
    v274 = v272 | (v21.u32[0] << v273);
    if (v273 >= 0x20)
    {
      *(v266 + (((v267 + 18) >> 3) & 8)) = v274;
      v274 = v21.u32[0] >> -v273;
    }

    v275 = v267 + 50;
    v276 = vsubq_s16(v79, v184);
    v277 = vsubq_s16(v79, v185);
    v278 = vsubq_s16(v79, v179);
    v279 = vsubq_s16(v79, v165);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u16(v278);
    *v279.i8 = vqmovn_u16(v279);
    v276.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v276, v277), vzip1q_s8(v278, v279)), vzip1q_s16(vtrn2q_s8(v276, v277), vtrn2q_s8(v278, v279))).u64[0];
    v278.i64[0] = 0x202020202020202;
    v278.i64[1] = 0x202020202020202;
    v280 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v180.i8, 0x4000400040004)))), v278);
    v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v281 = vandq_s8(vshlq_u8(v279, vorrq_s8(v280, v278)), v276.u64[0]);
    v282 = vmovl_u8(*v280.i8);
    v283 = vpaddq_s16(vshlq_u16(vmovl_u8(*v281.i8), vtrn1q_s16(0, v282)), vmovl_high_u8(v281));
    v284 = vpaddq_s16(v282, vmovl_high_u8(v280));
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
    v295 = (v267 + 50) & 0x3A;
    v296 = (v293.i64[0] << v295) | v274;
    if ((v294.i64[0] + v295) >= 0x40)
    {
      *(v266 + ((v275 >> 3) & 8)) = v296;
      v296 = v293.i64[0] >> -v295;
    }

    v297 = vceqq_s16(v79, v184);
    v298 = v294.i64[0] + v275;
    v299 = v296 | (v293.i64[1] << v298);
    if ((v298 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v266 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
      v299 = v293.i64[1] >> -(v298 & 0x3F);
      if ((v298 & 0x3F) == 0)
      {
        v299 = 0;
      }
    }

    v300 = vandq_s8(v158, v297);
    v301 = v298 + v294.i64[1];
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vextq_s8(vtstq_s16(v260, v260), 0, 0xCuLL), v79);
    v304.i64[0] = 0xF000F000F000FLL;
    v304.i64[1] = 0xF000F000F000FLL;
    v305 = vandq_s8(vshlq_u16(v302, vaddq_s16(v303, v304)), v158);
    v306 = vmovl_u16(*v303.i8);
    v307 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v306)), vmovl_high_u16(v305));
    v308 = vpaddq_s32(v306, vmovl_high_u16(v303));
    v309.i64[0] = v307.u32[0];
    v309.i64[1] = v307.u32[1];
    v310 = v309;
    v309.i64[0] = v307.u32[2];
    v309.i64[1] = v307.u32[3];
    v311 = v309;
    v309.i64[0] = v308.u32[0];
    v309.i64[1] = v308.u32[1];
    v312 = v309;
    v309.i64[0] = v308.u32[2];
    v309.i64[1] = v308.u32[3];
    v313 = vpaddq_s64(vshlq_u64(v310, vzip1q_s64(0, v312)), vshlq_u64(v311, vzip1q_s64(0, v309)));
    v314 = vpaddq_s64(v312, v309);
    v315 = (v313.i64[0] << v301) | v299;
    if (v314.i64[0] + (v301 & 0x3F) >= 0x40)
    {
      *(v266 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v313.i64[0] >> -(v301 & 0x3F);
      if ((v301 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vaddq_s16(v300, v491);
    v317 = v314.i64[0] + v301;
    v318 = v315 | (v313.i64[1] << v317);
    if ((v317 & 0x3F) + v314.i64[1] >= 0x40)
    {
      *(v266 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v313.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = v317 + v314.i64[1];
    v320 = vextq_s8(0, v184, 0xCuLL);
    v321.i64[0] = 0xF000F000F000FLL;
    v321.i64[1] = 0xF000F000F000FLL;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v320, v321)), v316);
    v324 = vmovl_u16(*v320.i8);
    v325 = vmovl_high_u16(v320);
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
    v334 = (v332.i64[0] << v319) | v318;
    if (v333.i64[0] + (v319 & 0x3F) >= 0x40)
    {
      *(v266 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vceqq_s16(v79, v185);
    v336 = vaddq_s16(v186, v300);
    v337 = v333.i64[0] + v319;
    v338 = v334 | (v332.i64[1] << v337);
    if ((v337 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v266 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v332.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = vandq_s8(v158, v335);
    v340 = v337 + v333.i64[1];
    v341.i64[0] = 0xF000F000F000FLL;
    v341.i64[1] = 0xF000F000F000FLL;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v184, v341)), v336);
    v344 = vmovl_u16(*v184.i8);
    v345 = vmovl_high_u16(v184);
    v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
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
    v354 = (v352.i64[0] << v340) | v338;
    if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v266 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v352.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vaddq_s16(v183, v339);
    v356 = v353.i64[0] + v340;
    v357 = v354 | (v352.i64[1] << v356);
    if ((v356 & 0x3F) + v353.i64[1] >= 0x40)
    {
      *(v266 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v352.i64[1] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = v356 + v353.i64[1];
    v359.i64[0] = 0xF000F000F000FLL;
    v359.i64[1] = 0xF000F000F000FLL;
    v360.i64[0] = -1;
    v360.i64[1] = -1;
    v361 = vshlq_u16(v360, vaddq_s16(v185, v359));
    v362 = vandq_s8(v361, v355);
    v363 = vmovl_u16(*v362.i8);
    v364 = vmovl_high_u16(v362);
    v365 = vmovl_u16(*v185.i8);
    v366 = vmovl_high_u16(v185);
    v367 = vtrn1q_s32(0, v365);
    v368 = vtrn1q_s32(0, v366);
    v369 = vpaddq_s32(vshlq_u32(v363, v367), vshlq_u32(v364, v368));
    v370 = vpaddq_s32(v365, v366);
    v371.i64[0] = v369.u32[0];
    v371.i64[1] = v369.u32[1];
    v372 = v371;
    v371.i64[0] = v369.u32[2];
    v371.i64[1] = v369.u32[3];
    v373 = v371;
    v371.i64[0] = v370.u32[0];
    v371.i64[1] = v370.u32[1];
    v374 = v371;
    v371.i64[0] = v370.u32[2];
    v371.i64[1] = v370.u32[3];
    v375 = vzip1q_s64(0, v374);
    v376 = vzip1q_s64(0, v371);
    v377 = vpaddq_s64(vshlq_u64(v372, v375), vshlq_u64(v373, v376));
    v378 = vpaddq_s64(v374, v371);
    v379 = (v377.i64[0] << v358) | v357;
    if (v378.i64[0] + (v358 & 0x3F) >= 0x40)
    {
      *(v266 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
      if ((v358 & 0x3F) != 0)
      {
        v379 = v377.i64[0] >> -(v358 & 0x3F);
      }

      else
      {
        v379 = 0;
      }
    }

    v380 = vceqq_s16(v79, v179);
    v381 = vaddq_s16(v175, v339);
    v382 = v378.i64[0] + v358;
    v383 = v379 | (v377.i64[1] << v382);
    if ((v382 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v377.i64[1] >> -(v382 & 0x3F);
      if ((v382 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vandq_s8(v158, v380);
    v385 = v382 + v378.i64[1];
    v386 = vandq_s8(v361, v381);
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), v367), vshlq_u32(vmovl_high_u16(v386), v368));
    v388.i64[0] = v387.u32[0];
    v388.i64[1] = v387.u32[1];
    v389 = v388;
    v388.i64[0] = v387.u32[2];
    v388.i64[1] = v387.u32[3];
    v390 = vpaddq_s64(vshlq_u64(v389, v375), vshlq_u64(v388, v376));
    v391 = (v390.i64[0] << v385) | v383;
    if (v378.i64[0] + (v385 & 0x3F) >= 0x40)
    {
      *(v266 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v390.i64[0] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v392 = vaddq_s16(v176, v384);
    v393 = v378.i64[0] + v385;
    v394 = (v378.i64[0] + v385) & 0x3F;
    v395 = v391 | (v390.i64[1] << v393);
    if ((v393 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      v395 = v390.i64[1] >> -v394;
      if (!v394)
      {
        v395 = 0;
      }
    }

    v396 = v393 + v378.i64[1];
    v397.i64[0] = 0xF000F000F000FLL;
    v397.i64[1] = 0xF000F000F000FLL;
    v398.i64[0] = -1;
    v398.i64[1] = -1;
    v399 = vshlq_u16(v398, vaddq_s16(v179, v397));
    v400 = vandq_s8(v399, v392);
    v401 = vmovl_u16(*v400.i8);
    v402 = vmovl_high_u16(v400);
    v403 = vmovl_u16(*v179.i8);
    v404 = vmovl_high_u16(v179);
    v405 = vtrn1q_s32(0, v403);
    v406 = vtrn1q_s32(0, v404);
    v407 = vpaddq_s32(vshlq_u32(v401, v405), vshlq_u32(v402, v406));
    v408 = vpaddq_s32(v403, v404);
    v409.i64[0] = v407.u32[0];
    v409.i64[1] = v407.u32[1];
    v410 = v409;
    v409.i64[0] = v407.u32[2];
    v409.i64[1] = v407.u32[3];
    v411 = v409;
    v409.i64[0] = v408.u32[0];
    v409.i64[1] = v408.u32[1];
    v412 = v409;
    v409.i64[0] = v408.u32[2];
    v409.i64[1] = v408.u32[3];
    v413 = vzip1q_s64(0, v412);
    v414 = vzip1q_s64(0, v409);
    v415 = vpaddq_s64(vshlq_u64(v410, v413), vshlq_u64(v411, v414));
    v416 = vpaddq_s64(v412, v409);
    v417 = (v393 + v378.i64[1]) & 0x3F;
    v418 = (v415.i64[0] << (v393 + v378.i8[8])) | v395;
    if ((v416.i64[0] + v417) >= 0x40)
    {
      *(v266 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      if (v417)
      {
        v418 = v415.i64[0] >> -v417;
      }

      else
      {
        v418 = 0;
      }
    }

    v419 = vceqq_s16(v79, v165);
    v420 = vaddq_s16(v182, v384);
    v421 = v416.i64[0] + v396;
    v422 = v418 | (v415.i64[1] << v421);
    if ((v421 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v415.i64[1] >> -(v421 & 0x3F);
      if ((v421 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vandq_s8(v158, v419);
    v424 = v421 + v416.i64[1];
    v425 = vandq_s8(v399, v420);
    v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), v405), vshlq_u32(vmovl_high_u16(v425), v406));
    v427.i64[0] = v426.u32[0];
    v427.i64[1] = v426.u32[1];
    v428 = v427;
    v427.i64[0] = v426.u32[2];
    v427.i64[1] = v426.u32[3];
    v429 = vpaddq_s64(vshlq_u64(v428, v413), vshlq_u64(v427, v414));
    v430 = (v429.i64[0] << v424) | v422;
    if (v416.i64[0] + (v424 & 0x3F) >= 0x40)
    {
      *(v266 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v424 & 0x3F);
      if ((v424 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s16(v181, v423);
    v432 = v416.i64[0] + v424;
    v433 = (v416.i64[0] + v424) & 0x3F;
    v434 = v430 | (v429.i64[1] << v432);
    if ((v432 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      v434 = v429.i64[1] >> -v433;
      if (!v433)
      {
        v434 = 0;
      }
    }

    v435 = v432 + v416.i64[1];
    v436.i64[0] = 0xF000F000F000FLL;
    v436.i64[1] = 0xF000F000F000FLL;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u16(v437, vaddq_s16(v165, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u16(*v439.i8);
    v441 = vmovl_high_u16(v439);
    v442 = vmovl_u16(*v165.i8);
    v443 = vmovl_high_u16(v165);
    v444 = vtrn1q_s32(0, v442);
    v445 = vtrn1q_s32(0, v443);
    v446 = vpaddq_s32(vshlq_u32(v440, v444), vshlq_u32(v441, v445));
    v447 = vpaddq_s32(v442, v443);
    v448.i64[0] = v446.u32[0];
    v448.i64[1] = v446.u32[1];
    v449 = v448;
    v448.i64[0] = v446.u32[2];
    v448.i64[1] = v446.u32[3];
    v450 = v448;
    v448.i64[0] = v447.u32[0];
    v448.i64[1] = v447.u32[1];
    v451 = v448;
    v448.i64[0] = v447.u32[2];
    v448.i64[1] = v447.u32[3];
    v452 = vzip1q_s64(0, v451);
    v453 = vzip1q_s64(0, v448);
    v454 = vpaddq_s64(vshlq_u64(v449, v452), vshlq_u64(v450, v453));
    v455 = vpaddq_s64(v451, v448);
    v456 = (v432 + v416.i64[1]) & 0x3F;
    v457 = (v454.i64[0] << (v432 + v416.i8[8])) | v434;
    if ((v455.i64[0] + v456) > 0x3F)
    {
      *(v266 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
      if (v456)
      {
        v457 = v454.i64[0] >> -v456;
      }

      else
      {
        v457 = 0;
      }
    }

    v458 = vaddq_s16(v177, v423);
    v459 = v455.i64[0] + v435;
    v460 = v457 | (v454.i64[1] << v459);
    if ((v459 & 0x3F) + v455.i64[1] >= 0x40)
    {
      *(v266 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      v460 = v454.i64[1] >> -(v459 & 0x3F);
      if ((v459 & 0x3F) == 0)
      {
        v460 = 0;
      }
    }

    v461 = v459 + v455.i64[1];
    v462 = vandq_s8(v438, v458);
    v463 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), v444), vshlq_u32(vmovl_high_u16(v462), v445));
    v464.i64[0] = v463.u32[0];
    v464.i64[1] = v463.u32[1];
    v465 = v464;
    v464.i64[0] = v463.u32[2];
    v464.i64[1] = v463.u32[3];
    v466 = vpaddq_s64(vshlq_u64(v465, v452), vshlq_u64(v464, v453));
    v467 = (v466.i64[0] << v461) | v460;
    if (v455.i64[0] + (v461 & 0x3F) >= 0x40)
    {
      *(v266 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v466.i64[0] >> -(v461 & 0x3F);
      if ((v461 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = v455.i64[0] + v461;
    v469 = (v455.i64[0] + v461) & 0x3F;
    v470 = v467 | (v466.i64[1] << (v455.i8[0] + v461));
    if ((v469 + v455.i64[1]) >= 0x40)
    {
      *(v266 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      v470 = v466.i64[1] >> -v469;
      if (!v469)
      {
        v470 = 0;
      }
    }

    v471 = v468 + v455.i64[1];
    if ((v471 & 0x3F) != 0)
    {
      *(v266 + ((v471 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
    }

    result = (v471 - v267 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v71;
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
        v29 = &v71;
        v30 = (a3 + 4);
        v31 = &v70 + 2 * ((a5 >> 1) & 0x3F);
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
      v13 = &v70 + 1;
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
        v18 = &v70 + v11;
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

  v54 = v70;
  v55 = WORD1(v70);
  v56 = v71;
  v57 = WORD1(v71);
  v58 = WORD2(v70);
  v59 = WORD3(v70);
  v60 = WORD2(v71);
  v61 = WORD3(v71);
  v62 = v72;
  v63 = WORD1(v72);
  v64 = v73;
  v65 = WORD1(v73);
  v66 = WORD2(v72);
  v67 = WORD3(v72);
  if (a5 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = a5;
  }

  if (a5 >= 4)
  {
    v41 = a5 - 4;
  }

  else
  {
    v41 = 0;
  }

  v68 = WORD2(v73);
  v69 = WORD3(v73);
  if (a6 >= 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = a6;
  }

  if (a6 >= 2)
  {
    v43 = a6 - 2;
  }

  else
  {
    v43 = 0;
  }

  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v54, a7, v40, v42);
  v54 = WORD4(v70);
  v55 = WORD5(v70);
  v56 = WORD4(v71);
  v57 = WORD5(v71);
  v58 = WORD6(v70);
  v59 = HIWORD(v70);
  v60 = WORD6(v71);
  v61 = HIWORD(v71);
  v62 = WORD4(v72);
  v63 = WORD5(v72);
  v64 = WORD4(v73);
  v65 = WORD5(v73);
  v66 = WORD6(v72);
  v67 = HIWORD(v72);
  v68 = WORD6(v73);
  v69 = HIWORD(v73);
  if (a6 >= 4)
  {
    v45 = 2;
  }

  else
  {
    v45 = v43;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 20, &v54, a7, v40, v45);
  v54 = v74;
  v55 = WORD1(v74);
  v56 = v75;
  v57 = WORD1(v75);
  v58 = WORD2(v74);
  v59 = WORD3(v74);
  v60 = WORD2(v75);
  v61 = WORD3(v75);
  v62 = v76;
  v63 = WORD1(v76);
  v64 = v77;
  v65 = WORD1(v77);
  v66 = WORD2(v76);
  v67 = WORD3(v76);
  if (a5 >= 8)
  {
    v47 = 4;
  }

  else
  {
    v47 = v41;
  }

  v68 = WORD2(v77);
  v69 = WORD3(v77);
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 40, &v54, a7, v47, v42);
  v54 = WORD4(v74);
  v55 = WORD5(v74);
  v56 = WORD4(v75);
  v57 = WORD5(v75);
  v58 = WORD6(v74);
  v59 = HIWORD(v74);
  v60 = WORD6(v75);
  v61 = HIWORD(v75);
  v62 = WORD4(v76);
  v63 = WORD5(v76);
  v64 = WORD4(v77);
  v65 = WORD5(v77);
  v66 = WORD6(v76);
  v67 = HIWORD(v76);
  v68 = WORD6(v77);
  v69 = HIWORD(v77);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 60, &v54, a7, v47, v45);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v332 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v281 = v7;
  v8 = a4 < 2 || a5 == 0;
  v280 = v8;
  v9 = a4 < 2 || a5 < 2;
  v279 = v9;
  v10 = a4 < 3 || a5 == 0;
  v278 = v10;
  v11 = a4 < 3 || a5 < 2;
  v277 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v276 = v6;
  v12 = a4 < 4 || a5 < 2;
  v275 = v12;
  v13 = &v314;
  v14 = &v316;
  v15 = &v320;
  v16 = &v324;
  v17 = &v328;
  v18 = &v330;
  v19 = &v299;
  v20 = v297;
  v21 = &v295;
  v22 = &v293;
  v23 = &v291;
  v24 = v289;
  v25 = 1;
  v26 = &v318;
  v27 = &v322;
  v28 = &v326;
  v274 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v280)
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
    if (v281)
    {
      if (v279)
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
      if (v279)
      {
LABEL_69:
        if (v278)
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
    if (v278)
    {
LABEL_70:
      if (v276)
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
    if (!v276)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v274;
    if (!v277)
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

    if (!v275)
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
    if ((v274 | 2) == 3)
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
    v19 = &v298;
    v20 = v296;
    v21 = &v294;
    v22 = &v292;
    v23 = &v290;
    v24 = v288;
    v14 = &v317;
    v13 = &v315;
    v15 = &v321;
    v26 = &v319;
    v16 = &v325;
    v27 = &v323;
    v17 = &v329;
    v28 = &v327;
    v18 = &v331;
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
  v268 = v71;
  v72 = v291;
  v73 = v330;
  v74 = v331;
  v76 = v331 >= v330;
  v77 = v290;
  v78 = kDQuadParamTable[160 * v290 + 6 + 10 * v331];
  v302 = kDQuadParamTable[160 * v291 + 6 + 10 * v330];
  v75 = v302;
  v303 = v78;
  v304[0] = v302;
  v304[1] = v78;
  if (*(&v330 + (v331 >= v330)) == *(&v330 + (v331 < v330)))
  {
    v79 = v302;
  }

  else
  {
    v80 = v304[v331 < v330];
    v79 = v302;
    if (v80 >= 1)
    {
      *(&v302 + (v331 < v330)) = 0;
      *(&v302 + v76) += v80;
      v79 = v302;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v83 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v72 + 2);
  v84 = v81[4];
  LODWORD(v81) = v81[5];
  v85 = v84 + v83;
  v287 = v85;
  v86 = v81 + v83;
  v285 = v86;
  v87 = v79 - v75;
  if (v87 < 0)
  {
    v89 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v89[7] < -v87)
    {
      v285 = --v86;
      if (!v89[8])
      {
        v88 = -1;
LABEL_177:
        v287 = v88 + v85;
      }
    }
  }

  else if (v87)
  {
    v86 += v87;
    v285 = v86;
    v88 = v87;
    goto LABEL_177;
  }

  v91 = v72 == 5 && v73 == 1 && v87 < 2;
  v92 = v91;
  if (v274 == 4)
  {
    v93 = 1 << (v299 - 1);
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

    if (v268)
    {
      if (v280)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v316 | v95) == 0xFFFFFFFF || v316 == v93)
      {
        v92 = 1;
      }

      if (!v281)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v279)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v320 | v95) == 0xFFFFFFFF || v320 == v93)
      {
        v92 = 1;
      }

      if (!v278)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v276)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v324 | v95) == 0xFFFFFFFF || v324 == v93)
      {
        v92 = 1;
      }

      if (!v277)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v275)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v314 | v95) == 0xFFFFFFFF || v314 == v93)
      {
        v92 = 1;
      }

      if (!v280)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v281)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v318 | v95) == 0xFFFFFFFF || v318 == v93)
      {
        v92 = 1;
      }

      if (!v279)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v278)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v322 | v95) == 0xFFFFFFFF || v322 == v93)
      {
        v92 = 1;
      }

      if (!v276)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v277)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v326 | v95) == 0xFFFFFFFF || v326 == v93)
      {
        v92 = 1;
      }

      if (!v275)
      {
LABEL_204:
        if ((v328 | v95) == 0xFFFFFFFF || v328 == v93)
        {
          v92 = 1;
        }
      }
    }
  }

  v91 = v82 >> v86 > 0x40;
  v97 = v268;
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
  v286 = v103;
  v104 = v102 + v101;
  v284 = v102 + v101;
  v105 = v303 - v78;
  if (v105 < 0)
  {
    v107 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v107[7] < -v105)
    {
      v284 = --v104;
      if (!v107[8])
      {
        v106 = -1;
LABEL_216:
        v286 = v106 + v103;
      }
    }
  }

  else if (v105)
  {
    v104 += v105;
    v284 = v104;
    v106 = v105;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v98 |= v105 < 2;
  }

  v264 = v73;
  if (v274 == 4)
  {
    v108 = 1 << (v298 - 1);
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

    if (v268)
    {
      if (v280)
      {
        goto LABEL_231;
      }

LABEL_402:
      v208 = (v317 | v110) == 0xFFFFFFFF || v317 == v108;
      v98 |= v208;
      if (!v281)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v279)
      {
        goto LABEL_233;
      }

LABEL_416:
      v212 = (v321 | v110) == 0xFFFFFFFF || v321 == v108;
      v98 |= v212;
      if (!v278)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v276)
      {
        goto LABEL_235;
      }

LABEL_430:
      v216 = (v325 | v110) == 0xFFFFFFFF || v325 == v108;
      v98 |= v216;
      if (v277)
      {
        goto LABEL_243;
      }

LABEL_236:
      v112 = (v327 | v110) == 0xFFFFFFFF || v327 == v108;
      v98 |= v112;
      goto LABEL_243;
    }

    v206 = (v315 | v110) == 0xFFFFFFFF || v315 == v108;
    v98 |= v206;
    if (!v280)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v281)
    {
      goto LABEL_232;
    }

LABEL_409:
    v210 = (v319 | v110) == 0xFFFFFFFF || v319 == v108;
    v98 |= v210;
    if (!v279)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v278)
    {
      goto LABEL_234;
    }

LABEL_423:
    v214 = (v323 | v110) == 0xFFFFFFFF || v323 == v108;
    v98 |= v214;
    if (!v276)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v277)
    {
      goto LABEL_236;
    }

LABEL_243:
    v113 = &v318;
    v114 = v306;
    if (!v275)
    {
      v116 = (v329 | v110) == 0xFFFFFFFF || v329 == v108;
      v98 |= v116;
    }

    v266 = v98;
  }

  else
  {
    v266 = v98;
    v113 = &v318;
    v114 = v306;
  }

  v117 = 0;
  v118 = v268;
  if (v100 >> v104 > 0x40)
  {
    v118 = 1;
  }

  v265 = v118;
  v283 = 0;
  v282 = 0;
  v119 = &v299;
  v120 = v297;
  v301 = 0;
  v273 = &v293;
  v121 = &v330;
  v122 = &v291;
  v271 = v289;
  v123 = &v287;
  v124 = &v285;
  memset(v300, 0, sizeof(v300));
  v125 = &v283;
  v126 = 1;
  v127 = v305;
  v128 = &v314;
  v129 = &v309 + 4;
  v130 = &v308 + 4;
  v131 = &v309;
  v133 = &v307 + 4;
  v132 = &v308;
  v134 = &v320;
  v135 = &v307;
  v136 = &v316;
  v138 = &v324;
  v137 = &v322;
  v140 = &v328;
  v139 = &v326;
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

    v272 = v126;
    *v124 = v147;
    v148 = -1 << v143;
    v149 = *(v145 + 1);
    v150 = *v120 & (-1 << (v143 - v144));
    *v125 = v150;
    v151 = v149 >> v147;
    v152 = *v128 - v150;
    if (v268)
    {
      v152 = 0;
    }

    *v127 = v152;
    v153 = *v136 - v150;
    if (v280)
    {
      v153 = 0;
    }

    *v114 = v153;
    v154 = *v113 - v150;
    if (v281)
    {
      v154 = 0;
    }

    *v135 = v154;
    v155 = *v134 - v150;
    if (v279)
    {
      v155 = 0;
    }

    *v133 = v155;
    v156 = *v137 - v150;
    if (v278)
    {
      v156 = 0;
    }

    *v132 = v156;
    v157 = *v138 - v150;
    if (v276)
    {
      v157 = 0;
    }

    *v130 = v157;
    v158 = *v139 - v150;
    if (v277)
    {
      v158 = 0;
    }

    *v131 = v158;
    v159 = *v140 - v150;
    if (v275)
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

    v161 = &v305[32 * v117];
    v162 = 4 * v117;
    v163 = 4 * *v273;
    v164 = v300 + 28 * v117;
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
                if ((v274 | 2) != 3 || (v169 = *(&v314 + v162), v170 = *v271, v169 != v170) && ((v274 | 2) != 3 || v160 + v170 != v169))
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

        if (v166 >> v147 || (*(&v314 + v162) ^ v148) == 0xFFFFFFFF)
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
    v119 = &v298;
    v120 = v296;
    v273 = &v292;
    v122 = &v290;
    v271 = v288;
    v123 = &v286;
    v124 = &v284;
    v125 = &v282;
    v114 = &v310 + 4;
    v127 = &v310;
    v133 = &v311 + 4;
    v135 = &v311;
    v130 = &v312 + 4;
    v132 = &v312;
    v129 = &v313 + 4;
    v131 = &v313;
    v136 = &v317;
    v128 = &v315;
    v134 = &v321;
    v113 = &v319;
    v138 = &v325;
    v137 = &v323;
    v140 = &v329;
    v139 = &v327;
    v121 = &v331;
    v117 = 1;
  }

  while ((v272 & 1) != 0);
  v171 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v172 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if ((v265 | v266))
  {
    v173 = 0;
    v174 = 0;
    v175 = v299;
    v176 = v299 - 6;
    v177 = v298;
    v178 = v298 - 6;
    v179 = 8 * (a1 & 7);
    while (1)
    {
      v180 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v173;
      v181 = v180[1] < a5 && a4 > *v180;
      v182 = !v181;
      if (v181)
      {
        v183 = *(&v314 + 2 * v173) >> 6;
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

      if (v175 != 6 && v179 - v172 + (v174 << 6) + v176 <= 0xA0)
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
        v188 = *(&v314 + 2 * v173 + 1) >> 6;
        if (v178 <= 0x100)
        {
LABEL_335:
          if (v177 != 6 && v179 - v172 + (v174 << 6) + v178 <= 0xA0)
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
        return (v265 | v266) & 1;
      }
    }
  }

  v193 = ((v264 & 0xF) << v172) | *v171;
  *v171 = v193;
  v194 = v172 | 4;
  v195 = v331;
  if ((v172 | 4uLL) - v172 - 157 < 0xFFFFFFFFFFFFFF5FLL)
  {
    v196 = 0;
    v197 = v299;
    if (!v264)
    {
      goto LABEL_439;
    }

    goto LABEL_443;
  }

  *v171 = ((v331 & 0xF) << v194) | v193;
  v194 = (v172 + 8) & 0x38;
  v196 = (v172 + 8) >> 6;
  v197 = v299;
  if (v264)
  {
    goto LABEL_443;
  }

LABEL_439:
  if (v197 == 2 || v197 >= 0x10)
  {
LABEL_443:
    v219 = v287;
    if (v287 <= 0x100 && v287 && v194 - v172 + (v196 << 6) + v287 <= 0xA0)
    {
      v220 = 0;
      v221 = v283 >> (v197 - v287);
      v222 = v287;
      do
      {
        v223 = 64 - v194;
        if (64 - v194 >= v222)
        {
          v223 = v222;
        }

        v171[v196] |= ((v221 >> v220) & ~(-1 << v223)) << v194;
        v220 += v223;
        v224 = v223 + v194;
        v196 += v224 >> 6;
        v194 = v224 & 0x3F;
        v222 -= v223;
      }

      while (v222);
    }

    v217 = v219 + 8;
    v218 = v298;
    if (v195)
    {
      goto LABEL_451;
    }

LABEL_504:
    if (v218 == 2 || v218 >= 0x10)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v217 = 8;
    v218 = v298;
    if (!v195)
    {
      goto LABEL_504;
    }

LABEL_451:
    v225 = v286;
    if (v286 <= 0x100 && v286 && v194 - v172 + (v196 << 6) + v286 <= 0xA0)
    {
      v226 = 0;
      v227 = v282 >> (v218 - v286);
      v228 = v286;
      do
      {
        v229 = 64 - v194;
        if (64 - v194 >= v228)
        {
          v229 = v228;
        }

        v171[v196] |= ((v227 >> v226) & ~(-1 << v229)) << v194;
        v226 += v229;
        v230 = v229 + v194;
        v196 += v230 >> 6;
        v194 = v230 & 0x3F;
        v228 -= v229;
      }

      while (v228);
    }

    v217 += v225;
  }

  v231 = v285;
  if (v285)
  {
    if (v194 - v172 + (v196 << 6) + 3 <= 0xA0)
    {
      v232 = 0;
      v233 = v293;
      v234 = 3;
      do
      {
        v235 = 64 - v194;
        if (64 - v194 >= v234)
        {
          v235 = v234;
        }

        v171[v196] |= ((v233 >> v232) & ~(-1 << v235)) << v194;
        v232 += v235;
        v236 = v235 + v194;
        v196 += v236 >> 6;
        v194 = v236 & 0x3F;
        v234 -= v235;
      }

      while (v234);
    }

    v217 += 3;
  }

  v237 = v284;
  if (v284)
  {
    if (v194 - v172 + (v196 << 6) + 3 <= 0xA0)
    {
      v238 = 0;
      v239 = v292;
      v240 = 3;
      do
      {
        v241 = 64 - v194;
        if (64 - v194 >= v240)
        {
          v241 = v240;
        }

        v171[v196] |= ((v239 >> v238) & ~(-1 << v241)) << v194;
        v238 += v241;
        v242 = v241 + v194;
        v196 += v242 >> 6;
        v194 = v242 & 0x3F;
        v240 -= v241;
      }

      while (v240);
    }

    v217 += 3;
  }

  v243 = 160 - v217;
  v244 = (160 - v217) / 7u;
  v245 = v243 % 7;
  if ((v245 - 257) >= 0xFFFFFF00 && v194 - v172 + (v196 << 6) + v245 <= 0xA0)
  {
    do
    {
      v246 = 64 - v194;
      if (64 - v194 >= v245)
      {
        v246 = v245;
      }

      v247 = v246 + v194;
      v196 += v247 >> 6;
      v194 = v247 & 0x3F;
      v245 -= v246;
    }

    while (v245);
  }

  v248 = 0;
  v249 = v237 + v231;
  while (2)
  {
    if (v231 && v231 <= 0x100 && v194 - v172 + (v196 << 6) + v231 <= 0xA0)
    {
      v250 = 0;
      v251 = *(v300 + v248);
      v252 = v231;
      do
      {
        v253 = 64 - v194;
        if (64 - v194 >= v252)
        {
          v253 = v252;
        }

        v171[v196] |= ((v251 >> v250) & ~(-1 << v253)) << v194;
        v250 += v253;
        v254 = v253 + v194;
        v196 += v254 >> 6;
        v194 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    if (v237)
    {
      if (v237 <= 0x100 && v194 - v172 + (v196 << 6) + v237 <= 0xA0)
      {
        v255 = 0;
        v256 = *(&v300[1] + v248 + 3);
        v257 = v237;
        do
        {
          v258 = 64 - v194;
          if (64 - v194 >= v257)
          {
            v258 = v257;
          }

          v171[v196] |= ((v256 >> v255) & ~(-1 << v258)) << v194;
          v255 += v258;
          v259 = v258 + v194;
          v196 += v259 >> 6;
          v194 = v259 & 0x3F;
          v257 -= v258;
        }

        while (v257);
      }

      v260 = v244 - v249;
      if (v244 != v249)
      {
LABEL_497:
        if (v260 <= 0x100 && v194 - v172 + (v196 << 6) + v260 <= 0xA0)
        {
          do
          {
            v261 = 64 - v194;
            if (64 - v194 >= v260)
            {
              v261 = v260;
            }

            v262 = v261 + v194;
            v196 += v262 >> 6;
            v194 = v262 & 0x3F;
            v260 -= v261;
          }

          while (v260);
        }
      }
    }

    else
    {
      v260 = v244 - v231;
      if (v244 != v231)
      {
        goto LABEL_497;
      }
    }

    if (++v248 != 7)
    {
      continue;
    }

    return (v265 | v266) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  result = v6;
  do
  {
    if ((result - v6 + (v4 << 6) - 151) >= 0xFFFFFFFFFFFFFF5FLL)
    {
      v12 = 0;
      v13 = 0;
      v14 = 10;
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
      v11 = (v12 & 0x3FF) << 6;
    }

    else
    {
      v11 = 0;
    }

    v17 = ((v11 << 25 >> 31) + 32) | v11;
    if (v11 == 65472)
    {
      v17 = 0xFFFF;
    }

    if (!v11)
    {
      v17 = 0;
    }

    if (v11 == 0x8000 && v7 == 1)
    {
      v17 = v11;
    }

    if (a3 != 4)
    {
      v11 = v17;
    }

    *(a2 + 8 * v3) = v11 ^ v8;
    if ((result - v6 + (v4 << 6) - 151) < 0xFFFFFFFFFFFFFF5FLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v24 = v10 == 0x8000 && v7 == 1;
      if (!v24 && v10)
      {
        if (v10 == 65472)
        {
          v10 = 0xFFFF;
        }

        else
        {
          v10 |= (v10 << 25 >> 31) + 32;
        }
      }

      goto LABEL_3;
    }

    v19 = 0;
    v20 = 0;
    v21 = 10;
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
    v10 = (v19 & 0x3FF) << 6;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> v4) & 0xF;
  v8 = (v4 | 4) - v4 - 157;
  v9 = (v5 >> (v4 | 4u)) & 0xF;
  if (v8 >= 0xFFFFFFFFFFFFFF5FLL)
  {
    v10 = (v4 + 8) & 0x38;
  }

  else
  {
    v10 = (8 * (a1 & 7)) | 4;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF5FLL)
  {
    v11 = (v4 + 8) >> 6;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF5FLL)
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
  v14 = dword_29D2F3870[10 * (v6 & 0xF) + 6];
  v15 = v14;
  v16 = v12 >= v7;
  v17 = v12 >= v7;
  v18 = !v16;
  v19 = dword_29D2F3870[10 * v12 + 6];
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
  v22 = v21[484] + 2;
  v23 = v21[485];
  v24 = v23 + 2;
  v25 = v15 - v14;
  if (v25 < 0)
  {
    v26 = &kDQuadParamTable[10 * v13];
    if (v26[487] >= -v25)
    {
      goto LABEL_22;
    }

    v24 = v23 + 1;
    if (v26[488])
    {
      goto LABEL_22;
    }

    v25 = -1;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_22;
    }

    v24 += v25;
  }

  v22 += v25;
LABEL_22:
  if (v22 >= 0x10)
  {
    v27 = 16;
  }

  else
  {
    v27 = v22;
  }

  v28 = 16 * (v23 != 0);
  if (v28 >= v24)
  {
    v29 = v24;
  }

  else
  {
    v29 = v28;
  }

  v30 = &kDQuadParamTable[10 * v12];
  v31 = v30[484] + 2;
  v32 = v30[485];
  v33 = v32 + 2;
  v34 = v161 - v19;
  if (v34 < 0)
  {
    v35 = &kDQuadParamTable[10 * v12];
    if (v35[487] < -v34)
    {
      v33 = v32 + 1;
      if (!v35[488])
      {
        v34 = -1;
        goto LABEL_31;
      }
    }
  }

  else if (v34)
  {
    v33 += v34;
LABEL_31:
    v31 += v34;
  }

  v36 = 0;
  if (v31 >= 0x10)
  {
    v37 = 16;
  }

  else
  {
    v37 = v31;
  }

  LODWORD(v38) = 16 * (v32 != 0);
  if (v38 >= v33)
  {
    v38 = v33;
  }

  else
  {
    v38 = v38;
  }

  v39 = v10 - v4 + (v11 << 6);
  if (v22 && v39 + v27 <= 0xA0)
  {
    v36 = 0;
    v40 = 0;
    v41 = v27;
    do
    {
      v42 = 64 - v10;
      if (64 - v10 >= v41)
      {
        v42 = v41;
      }

      v36 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v42)) << v40;
      v40 += v42;
      v43 = v42 + v10;
      v11 += v43 >> 6;
      v10 = v43 & 0x3F;
      v41 -= v42;
    }

    while (v41);
    v39 = v10 - v4 + (v11 << 6);
  }

  v44 = 0;
  if (v31 && v39 + v37 <= 0xA0)
  {
    v44 = 0;
    v45 = 0;
    v46 = v37;
    do
    {
      v47 = 64 - v10;
      if (64 - v10 >= v46)
      {
        v47 = v46;
      }

      v44 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v47)) << v45;
      v45 += v47;
      v48 = v47 + v10;
      v11 += v48 >> 6;
      v10 = v48 & 0x3F;
      v46 -= v47;
    }

    while (v46);
  }

  v49 = v37 + v27 + 8;
  v156 = 0;
  v157 = 0;
  if (v29)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0xA0)
    {
      v50 = 0;
      v51 = 0;
      v52 = 3;
      do
      {
        v53 = 64 - v10;
        if (64 - v10 >= v52)
        {
          v53 = v52;
        }

        v50 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v53)) << v51;
        v51 += v53;
        v54 = v53 + v10;
        v11 += v54 >> 6;
        v10 = v54 & 0x3F;
        v52 -= v53;
      }

      while (v52);
    }

    else
    {
      v50 = 0;
    }

    v157 = v50;
    v49 += 3;
  }

  v55 = v36 << (16 - v27);
  v56 = v44 << (16 - v37);
  if (v38)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0xA0)
    {
      v57 = 0;
      v58 = 0;
      v59 = 3;
      do
      {
        v60 = 64 - v10;
        if (64 - v10 >= v59)
        {
          v60 = v59;
        }

        v57 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v60)) << v58;
        v58 += v60;
        v61 = v60 + v10;
        v11 += v61 >> 6;
        v10 = v61 & 0x3F;
        v59 -= v60;
      }

      while (v59);
    }

    else
    {
      v57 = 0;
    }

    v156 = v57;
    v49 += 3;
  }

  v62 = 0;
  v63 = a3 & 0xFFFFFFFD;
  v64 = 160 - v49;
  v65 = (((37 * (160 - v49)) >> 8) + (((-96 - v49 - ((37 * (160 - v49)) >> 8)) & 0xFE) >> 1)) >> 2;
  v66 = (v10 | (v11 << 6)) + -7 * v65 + v64;
  v159 = 0;
  memset(v158, 0, sizeof(v158));
  do
  {
    v68 = v66 >> 6;
    v69 = v66 & 0x3F;
    if (v29)
    {
      if (v69 - v4 + (v66 & 0xFFFFFFFFFFFFFFC0) + v29 <= 0xA0)
      {
        v70 = 0;
        v71 = 0;
        v72 = v29;
        do
        {
          v73 = 64 - v69;
          if (64 - v69 >= v72)
          {
            v73 = v72;
          }

          v70 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v73)) << v71;
          v71 += v73;
          v74 = v73 + v69;
          v68 += v74 >> 6;
          v69 = v74 & 0x3F;
          v72 -= v73;
        }

        while (v72);
      }

      else
      {
        v70 = 0;
      }

      *(v158 + v62) = v70;
    }

    if (v38)
    {
      if (v69 - v4 + (v68 << 6) + v38 <= 0xA0)
      {
        v75 = 0;
        v76 = 0;
        v77 = v38;
        do
        {
          v78 = 64 - v69;
          if (64 - v69 >= v77)
          {
            v78 = v77;
          }

          v75 |= ((*(v3 + 8 * v68) >> v69) & ~(-1 << v78)) << v76;
          v76 += v78;
          v79 = v78 + v69;
          v68 += v79 >> 6;
          v69 = v79 & 0x3F;
          v77 -= v78;
        }

        while (v77);
      }

      else
      {
        v75 = 0;
      }

      *(&v158[1] + v62 + 3) = v75;
      v67 = v38 + v29;
    }

    else
    {
      v67 = v29;
    }

    v66 = (v69 | (v68 << 6)) + v65 - v67;
    ++v62;
  }

  while (v62 != 7);
  v80 = 0;
  v81 = &v163;
  v82 = &v157;
  v83 = 1;
  v84 = v158;
  do
  {
    v87 = v83;
    result = *&kDQuadParamTable[10 * *v81 + 482];
    if (result >> v29 <= 1)
    {
      v89 = 1;
    }

    else
    {
      v89 = result >> v29;
    }

    v90 = v89 >> 1;
    v91 = (1 << (16 - v27)) >> 1;
    if (v89 >> 1 >= v91)
    {
      v92 = v91;
    }

    else
    {
      v92 = v89 >> 1;
    }

    v93 = v55;
    v94 = 0x8000 - v55;
    if (v55)
    {
      v95 = v92;
    }

    else
    {
      v95 = 0;
    }

    v96 = v55 == 0x8000;
    v97 = (a2 + 4 * v80);
    if (v29)
    {
      v98 = result + v55;
      v99 = -1 << v29;
      v100 = *v82;
      v101 = v94 / v89;
      if (*v82)
      {
        v102 = *v84;
        v103 = v101 == v102;
        if (v93 | v102)
        {
          v107 = v98 >= 0x10000 && (v99 ^ v102) == -1;
          if (v107)
          {
            v106 = 1;
            v104 = 0xFFFFLL;
            goto LABEL_129;
          }

          v104 = v90 + v89 * v102;
        }

        else
        {
          v104 = 0;
        }

        v106 = 1;
      }

      else
      {
        v106 = 0;
        v104 = v95;
        v103 = v96;
      }

LABEL_129:
      v109 = v104 + v93;
      if (a3 != 4)
      {
        goto LABEL_134;
      }

      v110 = v109 & 0xFFFFFFFFFFFFFE00;
      if ((v109 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
      {
        LODWORD(v109) = 31743;
        goto LABEL_138;
      }

      if (v110 == 32256)
      {
        LODWORD(v109) = 0x8000;
        goto LABEL_138;
      }

      if (v110 == 64512)
      {
        LODWORD(v109) = 64511;
      }

      else
      {
LABEL_134:
        v111 = 0xFFFF;
        if (v109 >= 0x10000)
        {
LABEL_139:
          v112 = v111 ^ 0x8000;
          if (v103)
          {
            v112 = 0;
          }

          if (v63 == 1)
          {
            v111 = v112;
          }

          *(a2 + 4 * v80) = v111;
          if (v100 == 1)
          {
            v113 = v95;
            v114 = v96;
          }

          else
          {
            v115 = *(v158 + 7 * v80 + v106);
            v114 = v101 == v115;
            if (v93 | v115)
            {
              if (v98 >= 0x10000 && (v99 ^ v115) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v113 = 0xFFFFLL;
              }

              else
              {
                v113 = v90 + v89 * v115;
              }
            }

            else
            {
              v113 = 0;
            }

            ++v106;
          }

          v116 = v113 + v93;
          if (a3 == 4)
          {
            v117 = v116 & 0xFFFFFFFFFFFFFE00;
            if ((v116 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
            {
              LODWORD(v116) = 31743;
              goto LABEL_161;
            }

            if (v117 == 32256)
            {
              LODWORD(v116) = 0x8000;
              goto LABEL_161;
            }

            if (v117 == 64512)
            {
              LODWORD(v116) = 64511;
LABEL_161:
              v118 = v116;
LABEL_162:
              v119 = v118 ^ 0x8000;
              if (v114)
              {
                v119 = 0;
              }

              if (v63 != 1)
              {
                v119 = v118;
              }

              v97[2] = v119;
              if (v100 == 2)
              {
                v120 = v95;
                v121 = v96;
              }

              else
              {
                v122 = *(v158 + 7 * v80 + v106);
                v121 = v101 == v122;
                if (v93 | v122)
                {
                  if (v98 >= 0x10000 && (v99 ^ v122) == 0xFFFFFFFFFFFFFFFFLL)
                  {
                    v120 = 0xFFFFLL;
                  }

                  else
                  {
                    v120 = v90 + v89 * v122;
                  }
                }

                else
                {
                  v120 = 0;
                }

                ++v106;
              }

              v123 = v120 + v93;
              if (a3 != 4)
              {
                goto LABEL_180;
              }

              v124 = v123 & 0xFFFFFFFFFFFFFE00;
              if ((v123 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
              {
                LODWORD(v123) = 31743;
                goto LABEL_184;
              }

              if (v124 == 32256)
              {
                LODWORD(v123) = 0x8000;
                goto LABEL_184;
              }

              if (v124 == 64512)
              {
                LODWORD(v123) = 64511;
              }

              else
              {
LABEL_180:
                v125 = 0xFFFF;
                if (v123 >= 0x10000)
                {
LABEL_185:
                  v126 = v125 ^ 0x8000;
                  if (v121)
                  {
                    v126 = 0;
                  }

                  if (v63 != 1)
                  {
                    v126 = v125;
                  }

                  v97[4] = v126;
                  if (v100 == 3)
                  {
                    v127 = v95;
                    v128 = v96;
                  }

                  else
                  {
                    v129 = *(v158 + 7 * v80 + v106);
                    v128 = v101 == v129;
                    if (v93 | v129)
                    {
                      if (v98 >= 0x10000 && (v99 ^ v129) == 0xFFFFFFFFFFFFFFFFLL)
                      {
                        v127 = 0xFFFFLL;
                      }

                      else
                      {
                        v127 = v90 + v89 * v129;
                      }
                    }

                    else
                    {
                      v127 = 0;
                    }

                    ++v106;
                  }

                  v130 = v127 + v93;
                  if (a3 == 4)
                  {
                    v131 = v130 & 0xFFFFFFFFFFFFFE00;
                    if ((v130 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                    {
                      LODWORD(v130) = 31743;
                      goto LABEL_207;
                    }

                    if (v131 == 32256)
                    {
                      LODWORD(v130) = 0x8000;
                      goto LABEL_207;
                    }

                    if (v131 == 64512)
                    {
                      LODWORD(v130) = 64511;
LABEL_207:
                      v132 = v130;
LABEL_208:
                      v133 = v132 ^ 0x8000;
                      if (v128)
                      {
                        v133 = 0;
                      }

                      if (v63 != 1)
                      {
                        v133 = v132;
                      }

                      v97[6] = v133;
                      if (v100 == 4)
                      {
                        v134 = v95;
                        v135 = v96;
                      }

                      else
                      {
                        v136 = *(v158 + 7 * v80 + v106);
                        v135 = v101 == v136;
                        if (v93 | v136)
                        {
                          if (v98 >= 0x10000 && (v99 ^ v136) == 0xFFFFFFFFFFFFFFFFLL)
                          {
                            v134 = 0xFFFFLL;
                          }

                          else
                          {
                            v134 = v90 + v89 * v136;
                          }
                        }

                        else
                        {
                          v134 = 0;
                        }

                        ++v106;
                      }

                      v137 = v134 + v93;
                      if (a3 != 4)
                      {
                        goto LABEL_226;
                      }

                      v138 = v137 & 0xFFFFFFFFFFFFFE00;
                      if ((v137 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                      {
                        LODWORD(v137) = 31743;
                        goto LABEL_230;
                      }

                      if (v138 == 32256)
                      {
                        LODWORD(v137) = 0x8000;
                        goto LABEL_230;
                      }

                      if (v138 == 64512)
                      {
                        LODWORD(v137) = 64511;
                      }

                      else
                      {
LABEL_226:
                        v139 = 0xFFFF;
                        if (v137 >= 0x10000)
                        {
LABEL_231:
                          v140 = v139 ^ 0x8000;
                          if (v135)
                          {
                            v140 = 0;
                          }

                          if (v63 != 1)
                          {
                            v140 = v139;
                          }

                          v97[8] = v140;
                          if (v100 == 5)
                          {
                            v141 = v95;
                            v142 = v96;
                          }

                          else
                          {
                            v143 = *(v158 + 7 * v80 + v106);
                            v142 = v101 == v143;
                            if (v93 | v143)
                            {
                              if (v98 >= 0x10000 && (v99 ^ v143) == 0xFFFFFFFFFFFFFFFFLL)
                              {
                                v141 = 0xFFFFLL;
                              }

                              else
                              {
                                v141 = v90 + v89 * v143;
                              }
                            }

                            else
                            {
                              v141 = 0;
                            }

                            ++v106;
                          }

                          v144 = v141 + v93;
                          if (a3 == 4)
                          {
                            v145 = v144 & 0xFFFFFFFFFFFFFE00;
                            if ((v144 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                            {
                              LODWORD(v144) = 31743;
                              goto LABEL_253;
                            }

                            if (v145 == 32256)
                            {
                              LODWORD(v144) = 0x8000;
                              goto LABEL_253;
                            }

                            if (v145 == 64512)
                            {
                              LODWORD(v144) = 64511;
LABEL_253:
                              v146 = v144;
LABEL_254:
                              v147 = v146 ^ 0x8000;
                              if (v142)
                              {
                                v147 = 0;
                              }

                              if (v63 != 1)
                              {
                                v147 = v146;
                              }

                              v97[10] = v147;
                              if (v100 == 6)
                              {
                                v148 = v95;
                                v149 = v96;
                              }

                              else
                              {
                                v150 = *(v158 + 7 * v80 + v106);
                                v149 = v101 == v150;
                                if (v93 | v150)
                                {
                                  if (v98 >= 0x10000 && (v99 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
                                  {
                                    v148 = 0xFFFFLL;
                                  }

                                  else
                                  {
                                    v148 = v90 + v89 * v150;
                                  }
                                }

                                else
                                {
                                  v148 = 0;
                                }

                                ++v106;
                              }

                              v151 = v148 + v93;
                              if (a3 != 4)
                              {
                                goto LABEL_272;
                              }

                              v152 = v151 & 0xFFFFFFFFFFFFFE00;
                              if ((v151 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                              {
                                v151 = 31743;
                                goto LABEL_276;
                              }

                              if (v152 == 32256)
                              {
                                v151 = 0x8000;
                                goto LABEL_276;
                              }

                              if (v152 == 64512)
                              {
                                v151 = 64511;
                              }

                              else
                              {
LABEL_272:
                                v153 = 0x10000FFFFLL;
                                if (v151 >= 0x10000)
                                {
LABEL_277:
                                  result = v153 ^ 0x8000;
                                  if (v149)
                                  {
                                    result = 0;
                                  }

                                  if (v63 != 1)
                                  {
                                    result = v153;
                                  }

                                  v97[12] = result;
                                  if (v100 != 7)
                                  {
                                    v154 = *(v158 + 7 * v80 + v106);
                                    v96 = v101 == v154;
                                    if (v93 | v154)
                                    {
                                      if (v98 >= 0x10000 && (v99 ^ v154) == 0xFFFFFFFFFFFFFFFFLL)
                                      {
                                        v95 = 0xFFFFLL;
                                      }

                                      else
                                      {
                                        v95 = v90 + v89 * v154;
                                      }
                                    }

                                    else
                                    {
                                      v95 = 0;
                                    }
                                  }

                                  v85 = v95 + v93;
                                  if (a3 == 4)
                                  {
                                    v155 = v85 & 0xFFFFFFFFFFFFFE00;
                                    if ((v85 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                                    {
                                      LODWORD(v85) = 31743;
                                      goto LABEL_90;
                                    }

                                    if (v155 == 32256)
                                    {
                                      LODWORD(v85) = 0x8000;
LABEL_90:
                                      v86 = v85;
LABEL_91:
                                      LODWORD(v27) = v86 ^ 0x8000;
                                      if (v96)
                                      {
                                        LODWORD(v27) = 0;
                                      }

                                      if (v63 != 1)
                                      {
                                        LODWORD(v27) = v86;
                                      }

                                      goto LABEL_95;
                                    }

                                    if (v155 == 64512)
                                    {
                                      LODWORD(v85) = 64511;
                                      goto LABEL_90;
                                    }
                                  }

                                  v86 = 0xFFFF;
                                  if (v85 >= 0x10000)
                                  {
                                    goto LABEL_91;
                                  }

                                  goto LABEL_90;
                                }
                              }

LABEL_276:
                              v153 = v151;
                              goto LABEL_277;
                            }
                          }

                          v146 = 0xFFFF;
                          if (v144 >= 0x10000)
                          {
                            goto LABEL_254;
                          }

                          goto LABEL_253;
                        }
                      }

LABEL_230:
                      v139 = v137;
                      goto LABEL_231;
                    }
                  }

                  v132 = 0xFFFF;
                  if (v130 >= 0x10000)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_207;
                }
              }

LABEL_184:
              v125 = v123;
              goto LABEL_185;
            }
          }

          v118 = 0xFFFF;
          if (v116 >= 0x10000)
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }
      }

LABEL_138:
      v111 = v109;
      goto LABEL_139;
    }

    if (a3 == 4)
    {
      v105 = v55 & 0xFFFFFE00;
      if ((v55 & 0xFFFFFE00) == 0x7E00)
      {
        LODWORD(v27) = 0x8000;
      }

      else if (v105 == 31744)
      {
        LODWORD(v27) = 31743;
      }

      else
      {
        v107 = v105 == 64512;
        v27 = 64511;
        if (!v107)
        {
          v27 = v55;
        }

        if (v27 >= 0x10000)
        {
          LODWORD(v27) = 0xFFFF;
        }
      }
    }

    else
    {
      if (v55 >= 0xFFFF)
      {
        v108 = 0xFFFF;
      }

      else
      {
        v108 = v55;
      }

      if (v89 <= v94)
      {
        LODWORD(v27) = v108 ^ 0x8000;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      if (v63 != 1)
      {
        LODWORD(v27) = v108;
      }
    }

    *v97 = v27;
    v97[2] = v27;
    v97[4] = v27;
    v97[6] = v27;
    v97[8] = v27;
    v97[10] = v27;
    v97[12] = v27;
LABEL_95:
    v83 = 0;
    v97[14] = v27;
    v82 = &v156;
    v84 = &v158[1] + 3;
    v55 = v56;
    LODWORD(v29) = v38;
    LOBYTE(v27) = v37;
    v81 = &v164;
    v80 = 1;
  }

  while ((v87 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v402 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v10 = (a1 + a2);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (a1 + 2 * a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
LABEL_6:
    *v12 = v9;
    v12[1] = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, v386, a5);
    }

    v367 = v387;
    v368 = v386[0];
    v365 = v389;
    v366 = v388;
    v376 = v392;
    v377 = v391;
    v375 = v393;
    v373 = v394;
    v370 = v396;
    v371 = v395;
    v369 = v397;
    v381 = v399;
    v382 = v398;
    v379 = v390;
    v380 = v400;
    v378 = v401;
    v17 = a3 + 20;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v17, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v17, v386, a5);
    }

    v374 = v386[0];
    v372 = v387;
    v363 = v389;
    v364 = v388;
    v361 = v391;
    v362 = v390;
    v359 = v393;
    v360 = v392;
    v357 = v395;
    v358 = v394;
    v355 = v397;
    v356 = v396;
    v353 = v399;
    v354 = v398;
    v351 = v401;
    v352 = v400;
    v383 = v5;
    v18 = a3 + 40;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v18, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v18, v386, a5);
    }

    v349 = v387;
    v350 = v386[0];
    v347 = v389;
    v348 = v388;
    v345 = v391;
    v346 = v390;
    v343 = v393;
    v344 = v392;
    v19 = v394;
    v20 = v395;
    v21 = v396;
    v22 = v397;
    v23 = v398;
    v24 = v399;
    v25 = v400;
    v26 = v401;
    if ((v383 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3 + 60, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3 + 60, v386, a5);
    }

    v27 = v25 | (v26 << 16);
    v28 = v23 | (v24 << 16);
    *(a1 + 16) = v350 | (v349 << 16);
    *(a1 + 20) = v348 | (v347 << 16);
    *(a1 + 24) = v19 | (v20 << 16);
    *(a1 + 28) = v21 | (v22 << 16);
    v29 = v386[0];
    v30 = v387;
    *a1 = v368 | (v367 << 16);
    *(a1 + 4) = v366 | (v365 << 16);
    v31 = v388;
    v32 = v389;
    v33 = v390;
    v34 = v391;
    *(a1 + 8) = v373 | (v371 << 16);
    *(a1 + 12) = v370 | (v369 << 16);
    v35 = v392;
    v36 = v393;
    v37 = v394;
    v38 = v395;
    v39 = (a1 + a2);
    *v39 = v379 | (v377 << 16);
    v39[1] = v376 | (v375 << 16);
    v40 = v396;
    v41 = v397;
    v42 = v398;
    v43 = v399;
    v39[2] = v382 | (v381 << 16);
    v39[3] = v380 | (v378 << 16);
    v44 = v400;
    v45 = v401;
    v39[4] = v346 | (v345 << 16);
    v39[5] = v344 | (v343 << 16);
    v39[6] = v28;
    v39[7] = v27;
    v46 = (a1 + a2 + a2);
    *v46 = v374 | (v372 << 16);
    v46[1] = v364 | (v363 << 16);
    v46[2] = v358 | (v357 << 16);
    v46[3] = v356 | (v355 << 16);
    v46[4] = v29 | (v30 << 16);
    v46[5] = v31 | (v32 << 16);
    v46[6] = v37 | (v38 << 16);
    v46[7] = v40 | (v41 << 16);
    v47 = (v46 + a2);
    *v47 = v362 | (v361 << 16);
    v47[1] = v360 | (v359 << 16);
    v47[2] = v354 | (v353 << 16);
    v47[3] = v352 | (v351 << 16);
    v47[4] = v33 | (v34 << 16);
    v47[5] = v35 | (v36 << 16);
    v47[6] = v42 | (v43 << 16);
    v47[7] = v44 | (v45 << 16);
    return 80;
  }

  if (a4 == 127)
  {
    v48 = *a3;
    v49 = *(a3 + 16);
    v50 = *(a3 + 32);
    v51 = *(a3 + 48);
    v52 = *(a3 + 64);
    v53 = *(a3 + 80);
    v54 = *(a3 + 96);
    v55 = *(a3 + 112);
    v56 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v49);
    *(a1 + 16) = vzip1q_s64(v52, v53);
    v57 = (a1 + 2 * a2);
    *v56 = vzip2q_s64(v48, v49);
    v56[1] = vzip2q_s64(v52, v53);
    *v57 = vzip1q_s64(v50, v51);
    v57[1] = vzip1q_s64(v54, v55);
    v58 = (v57 + a2);
    *v58 = vzip2q_s64(v50, v51);
    v58[1] = vzip2q_s64(v54, v55);
    return 128;
  }

  if (a4 == 3)
  {
    v13 = vld1q_dup_f32(a3);
    *a1 = v13;
    *(a1 + 16) = v13;
    v14 = (a1 + a2);
    *v14 = v13;
    v14[1] = v13;
    v15 = (a1 + 2 * a2);
    *v15 = v13;
    v15[1] = v13;
    v16 = (a1 + a2 + 2 * a2);
    *v16 = v13;
    v16[1] = v13;
    return 4;
  }

  v60 = 8 * (a3 & 7);
  v61 = a3 & 0xFFFFFFFFFFFFFFF8;
  v62 = v60 + 18;
  v63 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v60;
  if (v60 >= 0x2F)
  {
    v63 |= *(v61 + 8) << (-8 * (a3 & 7u));
  }

  v64.i32[0] = v63;
  v64.i32[1] = v63 >> 5;
  v65 = vand_s8(v64, 0x1F0000001FLL);
  v66 = vuzp1_s16(v65, v65);
  v67.i32[0] = v63 >> 10;
  v67.i32[1] = v63 >> 14;
  v68 = vuzp1_s16(vadd_s32(vand_s8(v67, 0xF0000000FLL), 0x100000001), v66);
  v69 = v60 + 50;
  v70 = v62 & 0x3A;
  v71 = (v61 + ((v62 >> 3) & 8));
  v72 = *v71 >> (v62 & 0x3A);
  if (v70 >= 0x21)
  {
    v72 |= v71[1] << -v70;
  }

  v73 = vdupq_lane_s32(v66, 0);
  v74 = vdupq_lane_s32(v68, 0);
  v75 = (8 * (a3 & 7)) | 0x280;
  v76.i64[0] = 0x3000300030003;
  v76.i64[1] = 0x3000300030003;
  v77 = vandq_s8(v73, v76);
  v78 = vbicq_s8(v74, vceqq_s16(v77, v76));
  v76.i64[0] = 0x202020202020202;
  v76.i64[1] = 0x202020202020202;
  v79 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v73.i8, 0x4000400040004)))), v76);
  if (vmaxvq_s8(v79) < 1)
  {
    v88 = 0;
    v109.i64[0] = -1;
    v109.i64[1] = -1;
    v105 = v78;
    v104 = v78;
    v103 = v78;
    v108.i64[0] = -1;
    v108.i64[1] = -1;
    v102 = v78;
    v107.i64[0] = -1;
    v107.i64[1] = -1;
    v106.i64[0] = -1;
    v106.i64[1] = -1;
  }

  else
  {
    v80 = vmovl_u8(*&vpaddq_s8(v79, v79));
    v81 = vmovl_u16(*&vpaddq_s16(v80, v80));
    v82 = vpaddq_s32(v81, v81).u64[0];
    v83.i64[0] = v82;
    v83.i64[1] = HIDWORD(v82);
    v84 = v83;
    v85 = vaddvq_s64(v83);
    v86 = v69 + v85;
    v87 = v85 <= 0x80 && v75 >= v86;
    v88 = !v87;
    v89 = 0uLL;
    if (v87)
    {
      v90 = v69 & 0x3A;
      v91 = vaddq_s64(vdupq_n_s64(v90), vzip1q_s64(0, v84));
      v92 = (v61 + ((v69 >> 3) & 8));
      v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
      if (v90 + v85 >= 0x81)
      {
        v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
      }

      v69 = v86;
    }

    v93 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v94.i64[0] = v93.u32[0];
    v94.i64[1] = v93.u32[1];
    v95 = vshlq_u64(v89, vnegq_s64(v94));
    v96 = vuzp1q_s32(vzip1q_s64(v89, v95), vzip2q_s64(v89, v95));
    v97 = vshlq_u32(v96, vnegq_s32((*&v80 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v98 = vuzp1q_s16(vzip1q_s32(v96, v97), vzip2q_s32(v96, v97));
    v96.i64[0] = 0x101010101010101;
    v96.i64[1] = 0x101010101010101;
    *v99.i8 = vand_s8(vadd_s8(*&vshlq_s8(v96, v79), -1), vmovn_s16(vzip1q_s16(v98, vshlq_u16(v98, vnegq_s16(vmovl_u8(vuzp1_s8(*v79.i8, *v73.i8)))))));
    v99.i64[1] = v99.i64[0];
    *v99.i8 = vqtbl1_s8(v99, 0x703060205010400);
    *v98.i8 = vdup_lane_s16(*v99.i8, 0);
    *v96.i8 = vdup_lane_s16(*v99.i8, 1);
    v100 = vdup_lane_s16(*v99.i8, 2);
    v101 = vdup_lane_s16(*v99.i8, 3);
    v102 = vsubw_s8(v78, *v98.i8);
    v103 = vsubw_s8(v78, *v96.i8);
    v104 = vsubw_s8(v78, v100);
    v105 = vsubw_s8(v78, v101);
    v106 = vmovl_s8(vceqz_s8(*v98.i8));
    v107 = vmovl_s8(vceqz_s8(*v96.i8));
    v108 = vmovl_s8(vceqz_s8(v100));
    v109 = vmovl_s8(vceqz_s8(v101));
  }

  v110.i64[0] = 0x8000800080008;
  v110.i64[1] = 0x8000800080008;
  v111 = 0uLL;
  v112 = vandq_s8(vextq_s8(vtstq_s16(v73, v110), 0, 0xCuLL), v78);
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  v118 = v69 + v117;
  if (v117 <= 0x80 && v75 >= v118)
  {
    v120 = v69 & 0x3F;
    v121 = vaddq_s64(vdupq_n_s64(v120), vzip1q_s64(0, v116));
    v122 = (v61 + 8 * (v69 >> 6));
    v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v121)));
    if (v120 + v117 >= 0x81)
    {
      v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v111);
    }

    v69 = v118;
  }

  else
  {
    v88 = 1;
  }

  v123 = v73.i8[0] & 3;
  if (v123 == 2)
  {
    v124 = v75 < v69 + 8;
    v125 = v69 + 16;
    if (v75 >= v69 + 8)
    {
      v69 += 8;
    }

    else
    {
      v125 = v69 + 8;
    }

    if (v75 < v125)
    {
      v126 = 1;
    }

    else
    {
      v69 = v125;
      v126 = v124;
    }

    v88 |= v126;
  }

  v127 = 0uLL;
  v128 = vextq_s8(0, v102, 0xCuLL);
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v69 + v133;
  if (v133 <= 0x80 && v75 >= v134)
  {
    v137 = v69 & 0x3F;
    v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v132));
    v139 = (v61 + 8 * (v69 >> 6));
    v136 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
    if (v137 + v133 >= 0x81)
    {
      v136 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v136);
    }

    v69 = v134;
  }

  else
  {
    v88 = 1;
    v136 = 0uLL;
  }

  v140 = vmovl_u16(*&vpaddq_s16(v102, v102));
  v141 = vpaddq_s32(v140, v140).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  v145 = v69 + v144;
  if (v144 <= 0x80 && v75 >= v145)
  {
    v147 = v69 & 0x3F;
    v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v143));
    v149 = (v61 + 8 * (v69 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if (v147 + v144 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v127);
    }

    v69 = v145;
  }

  else
  {
    v88 = 1;
  }

  v150 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v151 = vpaddq_s32(v150, v150).u64[0];
  v152.i64[0] = v151;
  v152.i64[1] = HIDWORD(v151);
  v153 = v152;
  v154 = vaddvq_s64(v152);
  v155 = v69 + v154;
  v156 = 0uLL;
  if (v154 <= 0x80 && v75 >= v155)
  {
    v159 = v69 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v153));
    v161 = (v61 + 8 * (v69 >> 6));
    v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v154 >= 0x81)
    {
      v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v158);
    }

    v69 = v155;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v88 = 1;
    v158 = 0uLL;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  v162 = v69 + v154;
  if (v75 < v69 + v154)
  {
LABEL_85:
    v88 = 1;
    v162 = v69;
    goto LABEL_86;
  }

  v163 = v69 & 0x3F;
  v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v153));
  v165 = (v61 + 8 * (v69 >> 6));
  v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
  if (v163 + v154 >= 0x81)
  {
    v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v156);
  }

LABEL_86:
  v166 = vmovl_u16(*&vpaddq_s16(v104, v104));
  v167 = vpaddq_s32(v166, v166).u64[0];
  v168.i64[0] = v167;
  v168.i64[1] = HIDWORD(v167);
  v169 = v168;
  v170 = vaddvq_s64(v168);
  v171 = 0uLL;
  if (v170 > 0x80 || (v172 = v162 + v170, v75 < v162 + v170))
  {
    v88 = 1;
    v172 = v162;
    v175 = 0uLL;
  }

  else
  {
    v173 = vaddq_s64(vdupq_n_s64(v162 & 0x3F), vzip1q_s64(0, v169));
    v174 = (v61 + 8 * (v162 >> 6));
    v175 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v174, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v173)), vshlq_u64(vdupq_lane_s64(v174->i64[0], 0), vnegq_s64(v173)));
    if ((v162 & 0x3F) + v170 >= 0x81)
    {
      v175 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v174[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v173)), vshlq_u64(vdupq_laneq_s64(v174[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v173))), v175);
    }
  }

  if (v170 > 0x80 || (v176 = v172 + v170, v75 < v172 + v170))
  {
    v88 = 1;
    v176 = v172;
  }

  else
  {
    v177 = vaddq_s64(vdupq_n_s64(v172 & 0x3F), vzip1q_s64(0, v169));
    v178 = (v61 + 8 * (v172 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v178, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v177)), vshlq_u64(vdupq_lane_s64(v178->i64[0], 0), vnegq_s64(v177)));
    if ((v172 & 0x3F) + v170 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v178[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v177)), vshlq_u64(vdupq_laneq_s64(v178[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v177))), v171);
    }
  }

  v179 = vmovl_u16(*&vpaddq_s16(v105, v105));
  v180 = vpaddq_s32(v179, v179).u64[0];
  v181.i64[0] = v180;
  v181.i64[1] = HIDWORD(v180);
  v182 = v181;
  v183 = vaddvq_s64(v181);
  if (v183 > 0x80 || (v184 = v176 + v183, v75 < v176 + v183))
  {
    v88 = 1;
    v184 = v176;
    v188 = 0uLL;
  }

  else
  {
    v185 = v176 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v182));
    v187 = (v61 + 8 * (v176 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v183 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  if (v183 > 0x80 || v75 < v184 + v183)
  {
    goto LABEL_109;
  }

  v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v182));
  v190 = (v61 + 8 * (v184 >> 6));
  v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
  if ((v184 & 0x3F) + v183 >= 0x81)
  {
    v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
  }

  if ((v88 & 1) != 0 || (v8 = a4 + 1, v75 + 8 * v8 - (v184 + v183) - 640 >= 9))
  {
LABEL_109:
    v192 = 0;
    v193 = 0;
    v194 = 8 * (v386 & 7);
    v195 = 16;
    do
    {
      v196 = 64 - v194;
      if (64 - v194 >= v195)
      {
        v196 = v195;
      }

      *&v386[4 * v192] |= ((0xFFFFFFFFFFFFFFFFLL >> v193) & ~(-1 << v196)) << v194;
      v193 += v196;
      v197 = v196 + v194;
      v192 += v197 >> 6;
      v194 = v197 & 0x3F;
      v195 -= v196;
    }

    while (v195);
LABEL_113:
    v8 = 0;
    v198 = (a1 + a2);
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v199 = (a1 + 2 * a2);
    *v198 = 0u;
    v198[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
    *v199 = 0u;
    v199[1] = 0u;
    goto LABEL_6;
  }

  if (v123 == 2)
  {
    v200 = 0;
    v201 = 0;
    v202 = 8 * (v386 & 7);
    v203 = 16;
    do
    {
      v204 = 64 - v202;
      if (64 - v202 >= v203)
      {
        v204 = v203;
      }

      *&v386[4 * v200] |= ((0xFFFFFFFFFFFFFFFFLL >> v201) & ~(-1 << v204)) << v202;
      v201 += v204;
      v205 = v204 + v202;
      v200 += v205 >> 6;
      v202 = v205 & 0x3F;
      v203 -= v204;
    }

    while (v203);
    goto LABEL_113;
  }

  v206 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
  v207 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
  v208 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
  v209 = vzip1_s32(*v179.i8, *&vextq_s8(v179, v179, 8uLL));
  v210.i64[0] = v206.u32[0];
  v210.i64[1] = v206.u32[1];
  v211 = v210;
  v210.i64[0] = v207.u32[0];
  v210.i64[1] = v207.u32[1];
  v212 = v210;
  v210.i64[0] = v208.u32[0];
  v210.i64[1] = v208.u32[1];
  v213 = v210;
  v210.i64[0] = v209.u32[0];
  v210.i64[1] = v209.u32[1];
  v214 = vnegq_s64(v211);
  v215 = vnegq_s64(v212);
  v216 = vnegq_s64(v213);
  v217 = vnegq_s64(v210);
  v218 = vshlq_u64(v111, v214);
  v219 = vshlq_u64(v158, v215);
  v220 = vshlq_u64(v156, v215);
  v221 = vshlq_u64(v175, v216);
  v222 = vshlq_u64(v171, v216);
  v223 = vshlq_u64(v188, v217);
  v224 = vzip2q_s64(v111, v218);
  v225 = vzip1q_s64(v111, v218);
  v226 = vzip2q_s64(v158, v219);
  v227 = vzip1q_s64(v158, v219);
  v228 = vzip2q_s64(v156, v220);
  v229 = vzip1q_s64(v156, v220);
  v230 = vzip2q_s64(v175, v221);
  v231 = vzip1q_s64(v175, v221);
  v232 = vzip2q_s64(v171, v222);
  v233 = vzip1q_s64(v171, v222);
  v234 = vzip2q_s64(v188, v223);
  v235 = vzip1q_s64(v188, v223);
  v236 = vuzp1q_s32(v225, v224);
  v237 = vuzp1q_s32(v227, v226);
  v238 = vuzp1q_s32(v229, v228);
  v225.i64[0] = 0xFFFF0000FFFFLL;
  v225.i64[1] = 0xFFFF0000FFFFLL;
  v239 = vuzp1q_s32(v231, v230);
  v227.i64[0] = 0xFFFF0000FFFFLL;
  v227.i64[1] = 0xFFFF0000FFFFLL;
  v240 = vnegq_s32(vandq_s8(v112, v225));
  v241 = vnegq_s32(vandq_s8(v103, v227));
  v242 = vuzp1q_s32(v233, v232);
  v243 = vuzp1q_s32(v235, v234);
  v244 = vshlq_u32(v236, v240);
  v245 = vshlq_u32(v237, v241);
  v246 = vshlq_u32(v238, v241);
  v241.i64[0] = 0x10001000100010;
  v241.i64[1] = 0x10001000100010;
  v235.i64[0] = 0xF000F000F000FLL;
  v235.i64[1] = 0xF000F000F000FLL;
  v247 = vsubq_s16(v241, v112);
  v248 = vaddq_s16(v112, v235);
  v235.i64[0] = 0x10001000100010;
  v235.i64[1] = 0x10001000100010;
  v249 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v236, v244), vzip2q_s32(v236, v244)), v247);
  v247.i64[0] = 0xF000F000F000FLL;
  v247.i64[1] = 0xF000F000F000FLL;
  v250 = vsubq_s16(v235, v103);
  v251 = vaddq_s16(v103, v247);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v252 = vnegq_s32(vandq_s8(v104, v247));
  v253 = vshlq_s16(v249, v248);
  v254 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v237, v245), vzip2q_s32(v237, v245)), v250), v251);
  v255 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v238, v246), vzip2q_s32(v238, v246)), v250), v251);
  v256 = vdupq_lane_s32(*v253.i8, 0);
  v257 = vandq_s8(v107, v256);
  v258 = vsubq_s16(v254, v257);
  v259 = vsubq_s16(v255, v257);
  v260 = vshlq_u32(v239, v252);
  v261 = vshlq_u32(v242, v252);
  v262 = vzip2q_s32(v239, v260);
  v263 = vzip1q_s32(v239, v260);
  v264 = vzip2q_s32(v242, v261);
  v265 = vzip1q_s32(v242, v261);
  v261.i64[0] = 0x10001000100010;
  v261.i64[1] = 0x10001000100010;
  v266 = vuzp1q_s16(v265, v264);
  v264.i64[0] = 0xF000F000F000FLL;
  v264.i64[1] = 0xF000F000F000FLL;
  v267 = vsubq_s16(v261, v104);
  v268 = vaddq_s16(v104, v264);
  v264.i64[0] = 0xFFFF0000FFFFLL;
  v264.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vnegq_s32(vandq_s8(v105, v264));
  v270 = vshlq_s16(vshlq_s16(vuzp1q_s16(v263, v262), v267), v268);
  v271 = vshlq_s16(vshlq_s16(v266, v267), v268);
  v272 = vandq_s8(v108, v256);
  v273 = vsubq_s16(v270, v272);
  v274 = vsubq_s16(v271, v272);
  v275 = vshlq_u32(v243, v269);
  v276 = vzip2q_s32(v243, v275);
  v277 = vzip1q_s32(v243, v275);
  v275.i64[0] = 0x10001000100010;
  v275.i64[1] = 0x10001000100010;
  v278 = vuzp1q_s16(v277, v276);
  v276.i64[0] = 0xF000F000F000FLL;
  v276.i64[1] = 0xF000F000F000FLL;
  v279 = vsubq_s16(v275, v105);
  v280 = vaddq_s16(v105, v276);
  v281 = vshlq_u64(v191, v217);
  v282 = vuzp1q_s32(vzip1q_s64(v191, v281), vzip2q_s64(v191, v281));
  v283 = vshlq_u32(v282, v269);
  v284 = vshlq_s16(vshlq_s16(v278, v279), v280);
  v285 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v282, v283), vzip2q_s32(v282, v283)), v279), v280);
  v286 = vandq_s8(v109, v256);
  v287 = vsubq_s16(v284, v286);
  v288 = vsubq_s16(v285, v286);
  v289 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v290 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
  v210.i64[0] = v289.u32[0];
  v210.i64[1] = v289.u32[1];
  v291 = v210;
  v210.i64[0] = v290.u32[0];
  v210.i64[1] = v290.u32[1];
  v292 = vshlq_u64(v136, vnegq_s64(v291));
  v293 = vshlq_u64(v127, vnegq_s64(v210));
  v294 = vzip2q_s64(v136, v292);
  v295 = vzip1q_s64(v136, v292);
  v296 = vzip2q_s64(v127, v293);
  v297 = vzip1q_s64(v127, v293);
  v293.i64[0] = 0xFFFF0000FFFFLL;
  v293.i64[1] = 0xFFFF0000FFFFLL;
  v298 = vuzp1q_s32(v295, v294);
  v299 = vuzp1q_s32(v297, v296);
  v300 = vnegq_s32(vandq_s8(v102, v293));
  v301 = vshlq_u32(v298, vnegq_s32(vandq_s8(v128, v293)));
  v302 = vshlq_u32(v299, v300);
  v303 = vzip2q_s32(v298, v301);
  v304 = vzip1q_s32(v298, v301);
  v305 = vzip2q_s32(v299, v302);
  v306 = vzip1q_s32(v299, v302);
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v307 = vuzp1q_s16(v306, v305);
  v305.i64[0] = 0xF000F000F000FLL;
  v305.i64[1] = 0xF000F000F000FLL;
  v308 = vaddq_s16(vandq_s8(v253, v106), vshlq_s16(vshlq_s16(vuzp1q_s16(v304, v303), vsubq_s16(v302, v128)), vaddq_s16(v128, v305)));
  v309 = vandq_s8(v106, v256);
  v310.i64[0] = 0x1000100010001;
  v310.i64[1] = 0x1000100010001;
  v311 = vceqq_s16(v77, v310);
  v312 = vaddvq_s16(v311);
  v313 = vsubq_s16(v308, v309);
  v314 = vsubq_s16(vshlq_s16(vshlq_s16(v307, vsubq_s16(v302, v102)), vaddq_s16(v102, v305)), v309);
  v311.i32[0] = v72;
  v315 = vdupq_lane_s32(*v311.i8, 0);
  if (v312)
  {
    v316 = vnegq_s16(vandq_s8(v73, v310));
    v317 = v314;
    v317.i32[3] = v313.i32[0];
    v318 = v313;
    v318.i32[0] = v314.i32[3];
    v403.val[0] = vbslq_s8(v316, v318, v313);
    v403.val[1] = vbslq_s8(v316, v317, v314);
    v317.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v317.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F0F80), v316), v403.val[0]);
    v404.val[1] = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, v317), v316));
    v313 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0F90), v316), v404.val[0]);
    v314 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FA0), v316), v258);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FB0), v316), v259);
    v258 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FC0), v316), v404.val[0]);
    v259 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0FD0), v316), v273);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0F80), v316), v274);
    v273 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, v317), v316), v404.val[0]);
    v274 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FE0), v316));
    v403.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0FF0), v316), v287);
    v403.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0F80), v316), v288);
    v287 = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, v317), v316), v403.val[0]);
    v288 = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F1000), v316));
  }

  v319 = vaddq_s16(v313, v315);
  v320 = vaddq_s16(v314, v315);
  v321 = vaddq_s16(v258, v315);
  v322 = vaddq_s16(v259, v315);
  v323 = vaddq_s16(v273, v315);
  v324 = vaddq_s16(v274, v315);
  v325 = vaddq_s16(v287, v315);
  v326 = vaddq_s16(v288, v315);
  v327.i64[0] = 0x10001000100010;
  v327.i64[1] = 0x10001000100010;
  v328 = vceqzq_s16(vandq_s8(v73, v327));
  v329 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v319, xmmword_29D2F1080), v328), v319);
  v330 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v320, xmmword_29D2F1080), v328), v320);
  v331 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v321, xmmword_29D2F1080), v328), v321);
  v332 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v322, xmmword_29D2F1080), v328), v322);
  v333 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v323, xmmword_29D2F1080), v328), v323);
  v334 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v324, xmmword_29D2F1080), v328), v324);
  v335 = vzip2q_s64(v329, v330);
  *&v336 = v329.i64[0];
  *(&v336 + 1) = v330.i64[0];
  *&v337 = v333.i64[0];
  *(&v337 + 1) = v334.i64[0];
  v338 = (a1 + a2);
  *a1 = v336;
  *(a1 + 16) = v337;
  v339 = (a1 + 2 * a2);
  v340 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v325, xmmword_29D2F1080), v328), v325);
  v341 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F1080), v328), v326);
  *v338 = v335;
  v338[1] = vzip2q_s64(v333, v334);
  v334.i64[0] = v331.i64[0];
  v334.i64[1] = v332.i64[0];
  v325.i64[0] = v340.i64[0];
  v325.i64[1] = v341.i64[0];
  *v339 = v334;
  v339[1] = v325;
  v342 = (v339 + a2);
  *v342 = vzip2q_s64(v331, v332);
  v342[1] = vzip2q_s64(v340, v341);
  return v8;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v17 = vzip2q_s64(v8, v10);
  v18 = v14[1];
  v19 = vzip2q_s64(v15, *v14);
  v20 = vzip2q_s64(v16, v18);
  v21 = vdupq_lane_s32(*v11.i8, 0);
  v22 = vsubq_s16(v11, v21);
  v23 = vsubq_s16(v12, v21);
  v486 = vzip1q_s64(v15, *v14);
  v24 = vsubq_s16(v486, v21);
  v25 = vsubq_s16(v19, v21);
  v26 = vsubq_s16(v13, v21);
  v27 = vsubq_s16(v17, v21);
  v488 = vzip1q_s64(v16, v18);
  v28 = vsubq_s16(v488, v21);
  v29 = vsubq_s16(v20, v21);
  v30 = vqtbl1q_s8(vmaxq_s16(v22, v23), xmmword_29D2F1090);
  v31 = vqtbl1q_s8(vminq_s16(v22, v23), xmmword_29D2F1090);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vpmaxq_s16(v32, v32);
  v35 = vpminq_s16(v33, v33);
  v36.i64[0] = 0x8000800080008000;
  v36.i64[1] = 0x8000800080008000;
  v37 = vmaxq_s16(v34, v36);
  v10.i64[0] = 0x8000800080008000;
  v10.i64[1] = 0x8000800080008000;
  v38 = vminq_s16(v35, v10);
  v39 = vzip1q_s16(v34, v35);
  v40.i64[0] = 0x10001000100010;
  v40.i64[1] = 0x10001000100010;
  v41 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v39)), vceqzq_s16(v39));
  v42 = vpmaxq_s16(v41, v41);
  v43 = vqtbl1q_s8(vmaxq_s16(v24, v25), xmmword_29D2F1090);
  v44 = vqtbl1q_s8(vminq_s16(v24, v25), xmmword_29D2F1090);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v37, v47);
  v50 = vminq_s16(v38, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v54 = vqtbl1q_s8(vmaxq_s16(v26, v27), xmmword_29D2F1090);
  v55 = vqtbl1q_s8(vminq_s16(v26, v27), xmmword_29D2F1090);
  v56 = vpmaxq_s16(v54, v54);
  v57 = vpminq_s16(v55, v55);
  v58 = vpmaxq_s16(v56, v56);
  v59 = vpminq_s16(v57, v57);
  v60 = vmaxq_s16(v49, v58);
  v61 = vminq_s16(v50, v59);
  v62 = vzip1q_s16(v58, v59);
  v63 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v62)), vceqzq_s16(v62));
  v64 = vpmaxq_s16(v63, v63);
  v65 = vqtbl1q_s8(vmaxq_s16(v28, v29), xmmword_29D2F1090);
  v66 = vqtbl1q_s8(vminq_s16(v28, v29), xmmword_29D2F1090);
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
  if (!vmaxvq_s16(v79))
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v472 = v19;
  v473 = v17;
  v474 = v20;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81.i64[0] = 0xF000F000F000FLL;
  v81.i64[1] = 0xF000F000F000FLL;
  v490 = vsubq_s16(vshlq_s16(v80, vsubq_s16(v81, v77)), v72);
  v82 = vcgtq_s16(v76, v78);
  v83.i64[0] = 0x8000800080008;
  v83.i64[1] = 0x8000800080008;
  v84.i64[0] = 0x3000300030003;
  v84.i64[1] = 0x3000300030003;
  v482 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v42), v84), 0);
  v484 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v53), v84), 0);
  v85 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v64), v84), 0);
  v86.i64[0] = 0x8000800080008000;
  v86.i64[1] = 0x8000800080008000;
  v87 = vmaxq_s16(vminq_s16(vsubq_s16(v79, v75), v84), 0);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v89 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v87, v85), vnegq_s16(vaddq_s16(v482, v484))));
  v481 = vorrq_s8(vandq_s8(vceqzq_s16(v79), v84), vandq_s8(v82, v83));
  v492 = v24;
  v90 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v91 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
  v92 = vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080));
  v93 = vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080));
  v500 = v29;
  v478 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v479 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v94 = vqtbl1q_s8(vmaxq_s16(v479, v478), xmmword_29D2F1090);
  v95 = vqtbl1q_s8(vminq_s16(v479, v478), xmmword_29D2F1090);
  v96 = vpmaxq_s16(v94, v94);
  v97 = vpminq_s16(v95, v95);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vmaxq_s16(v98, v36);
  v101 = vminq_s16(v99, v86);
  v102 = vzip1q_s16(v98, v99);
  v103 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = v22;
  v105 = vpmaxq_s16(v103, v103);
  v476 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
  v477 = v90;
  v106 = vqtbl1q_s8(vmaxq_s16(v90, v476), xmmword_29D2F1090);
  v107 = vqtbl1q_s8(vminq_s16(v90, v476), xmmword_29D2F1090);
  v108 = vpmaxq_s16(v106, v106);
  v109 = vpminq_s16(v107, v107);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vmaxq_s16(v100, v110);
  v113 = vminq_s16(v101, v111);
  v114 = vzip1q_s16(v110, v111);
  v115 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v114)), vceqzq_s16(v114));
  v496 = v27;
  v116 = vpmaxq_s16(v115, v115);
  v475 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
  v117 = vqtbl1q_s8(vmaxq_s16(v475, v91), xmmword_29D2F1090);
  v118 = vqtbl1q_s8(vminq_s16(v475, v91), xmmword_29D2F1090);
  v119 = vpmaxq_s16(v117, v117);
  v120 = vpminq_s16(v118, v118);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vmaxq_s16(v112, v121);
  v124 = vminq_s16(v113, v122);
  v125 = vzip1q_s16(v121, v122);
  v126 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v125)), vceqzq_s16(v125));
  v494 = v26;
  v127 = vpmaxq_s16(v126, v126);
  v128 = vqtbl1q_s8(vmaxq_s16(v92, v93), xmmword_29D2F1090);
  v129 = vqtbl1q_s8(vminq_s16(v92, v93), xmmword_29D2F1090);
  v130 = vpmaxq_s16(v128, v128);
  v131 = vpminq_s16(v129, v129);
  v132 = vpmaxq_s16(v130, v130);
  v133 = vpminq_s16(v131, v131);
  v498 = v28;
  v134 = vmaxq_s16(v123, v132);
  v135 = vminq_s16(v124, v133);
  v136 = vzip1q_s16(v132, v133);
  v137 = vbicq_s8(vsubq_s16(v40, vclsq_s16(v136)), vceqzq_s16(v136));
  v138 = vpmaxq_s16(v137, v137);
  v139 = vmaxq_s16(vmaxq_s16(v105, v116), vmaxq_s16(v127, v138));
  v140 = vclzq_s16(vsubq_s16(v134, v135));
  v141 = vsubq_s16(v40, v140);
  v142 = vcgtq_s16(v139, v141);
  v143 = vminq_s16(v141, v139);
  v141.i64[0] = 0x18001800180018;
  v141.i64[1] = 0x18001800180018;
  v144 = vbslq_s8(v142, v141, v40);
  v145 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v105), v84), 0);
  v146 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v116), v84), 0);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v127), v84), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v143, v138), v84), 0);
  v149 = vsubq_s16(v143, v145);
  v150 = vsubq_s16(v143, v146);
  v151 = vsubq_s16(v143, v147);
  v152 = vaddq_s16(v145, v146);
  v153 = vsubq_s16(v143, v148);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v154 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v148, v147), vnegq_s16(v152)));
  v155 = v25;
  v156.i64[0] = 0x7000700070007;
  v156.i64[1] = 0x7000700070007;
  v157 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v143, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v154, v154)), v149, v156), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v153), 3uLL));
  v158 = vandq_s8(v490, v82);
  v159 = vorrq_s8(v481, v89);
  v160 = vaddq_s16(vandq_s8(v79, v82), vaddq_s16(v89, v89));
  v161 = vsubq_s16(v79, v482);
  v162 = vsubq_s16(v79, v484);
  v163 = vsubq_s16(v79, v85);
  v164 = vmlaq_s16(v160, v161, v156);
  v165 = vsubq_s16(v79, v87);
  v166 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v164, vshlq_n_s16(vaddq_s16(vaddq_s16(v163, v162), v165), 3uLL)), v157), 0);
  v167 = vaddvq_s16(v166);
  v169 = a5 < 4 || a6 < 2;
  if (v167)
  {
    v170.i64[0] = 0x3000300030003;
    v170.i64[1] = 0x3000300030003;
    v171 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v143), v170), v144), v154);
    v170.i64[0] = 0xF000F000F000FLL;
    v170.i64[1] = 0xF000F000F000FLL;
    v172 = vsubq_s16(v170, v140);
    v173.i64[0] = -1;
    v173.i64[1] = -1;
    v174 = vandq_s8(vsubq_s16(vshlq_s16(v173, v172), v135), v142);
    v21 = vbslq_s8(v166, vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080)), v21);
    v491 = vbslq_s8(v166, v479, v104);
    v485 = vbslq_s8(v166, v478, v23);
    v175 = vbslq_s8(v166, v476, v155);
    v176 = vbslq_s8(v166, v475, v494);
    v177 = vbslq_s8(v166, v93, v500);
    v178 = vbslq_s8(v166, v149, v161);
    v483 = vbslq_s8(v166, v150, v162);
    v179 = vbslq_s8(v166, v151, v163);
    v165 = vbslq_s8(v166, v153, v165);
    v158 = vbslq_s8(v166, v174, v158);
    v79 = vbslq_s8(v166, v143, v79);
    v180 = vbslq_s8(v166, v171, v159);
    v181 = vbslq_s8(v166, v92, v498);
    v182 = vbslq_s8(v166, v91, v496);
    v183 = vbslq_s8(v166, v477, v492);
    v184 = v178;
    if (v169)
    {
LABEL_10:
      v185 = v483;
      v186 = v485;
      goto LABEL_16;
    }
  }

  else
  {
    v483 = v162;
    v491 = v104;
    v485 = v23;
    v181 = v498;
    v177 = v500;
    v176 = v494;
    v182 = v496;
    v175 = v155;
    v183 = v492;
    v179 = v163;
    v184 = v161;
    v180 = v159;
    if (v169)
    {
      goto LABEL_10;
    }
  }

  v480 = v158;
  v493 = v183;
  v495 = v176;
  v497 = v182;
  v499 = v181;
  v501 = v177;
  v188 = v165;
  v197 = vsubq_s16(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v189 = vsubq_s16(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v502.val[0] = v486;
  v502.val[1] = v472;
  v502.val[1].i32[3] = v12.i32[3];
  v190 = vsubq_s16(v486, vqtbl2q_s8(v502, xmmword_29D2F0FA0));
  v191 = vsubq_s16(v472, vqtbl2q_s8(v502, xmmword_29D2F1040));
  v192 = v13;
  v502.val[0] = v473;
  v502.val[0].i32[3] = v12.i32[3];
  v193 = vsubq_s16(v13, vqtbl2q_s8(v502, xmmword_29D2F1050));
  v194 = vsubq_s16(v473, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v502.val[0] = v488;
  v502.val[1] = v474;
  v502.val[1].i32[3] = v12.i32[3];
  v195 = vsubq_s16(v488, vqtbl2q_s8(v502, xmmword_29D2F1060));
  v196 = v189;
  v196.i32[3] = v197.i32[0];
  v197.i32[0] = v189.i32[3];
  v198 = vsubq_s16(v474, vqtbl2q_s8(v502, xmmword_29D2F0F80));
  v199 = vqtbl1q_s8(vmaxq_s16(v197, v196), xmmword_29D2F1090);
  v200 = vqtbl1q_s8(vminq_s16(v197, v196), xmmword_29D2F1090);
  v201 = vpmaxq_s16(v199, v199);
  v202 = vpminq_s16(v200, v200);
  v203 = vpmaxq_s16(v201, v201);
  v204 = vpminq_s16(v202, v202);
  v502.val[0].i64[0] = 0x8000800080008000;
  v502.val[0].i64[1] = 0x8000800080008000;
  v502.val[0] = vmaxq_s16(v203, v502.val[0]);
  v502.val[1].i64[0] = 0x8000800080008000;
  v502.val[1].i64[1] = 0x8000800080008000;
  v502.val[1] = vminq_s16(v204, v502.val[1]);
  v205 = vzip1q_s16(v203, v204);
  v203.i64[0] = 0x10001000100010;
  v203.i64[1] = 0x10001000100010;
  v206 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v205)), vceqzq_s16(v205));
  v207 = vpmaxq_s16(v206, v206);
  v489 = v190;
  v487 = v191;
  v208 = vqtbl1q_s8(vmaxq_s16(v190, v191), xmmword_29D2F1090);
  v209 = vqtbl1q_s8(vminq_s16(v190, v191), xmmword_29D2F1090);
  v210 = vpmaxq_s16(v208, v208);
  v211 = vpminq_s16(v209, v209);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v502.val[0] = vmaxq_s16(v502.val[0], v212);
  v502.val[1] = vminq_s16(v502.val[1], v213);
  v214 = vzip1q_s16(v212, v213);
  v215 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v214)), vceqzq_s16(v214));
  v216 = vpmaxq_s16(v215, v215);
  v217 = vqtbl1q_s8(vmaxq_s16(v193, v194), xmmword_29D2F1090);
  v218 = vqtbl1q_s8(vminq_s16(v193, v194), xmmword_29D2F1090);
  v219 = vpmaxq_s16(v217, v217);
  v220 = vpminq_s16(v218, v218);
  v221 = vpmaxq_s16(v219, v219);
  v222 = vpminq_s16(v220, v220);
  v502.val[0] = vmaxq_s16(v502.val[0], v221);
  v502.val[1] = vminq_s16(v502.val[1], v222);
  v223 = vzip1q_s16(v221, v222);
  v224 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v223)), vceqzq_s16(v223));
  v225 = vpmaxq_s16(v224, v224);
  v226 = vqtbl1q_s8(vmaxq_s16(v195, v198), xmmword_29D2F1090);
  v227 = vqtbl1q_s8(vminq_s16(v195, v198), xmmword_29D2F1090);
  v228 = vpmaxq_s16(v226, v226);
  v229 = vpminq_s16(v227, v227);
  v230 = vpmaxq_s16(v228, v228);
  v231 = vpminq_s16(v229, v229);
  v502.val[0] = vmaxq_s16(v502.val[0], v230);
  v232 = vminq_s16(v502.val[1], v231);
  v233 = vzip1q_s16(v230, v231);
  v234 = vbicq_s8(vsubq_s16(v203, vclsq_s16(v233)), vceqzq_s16(v233));
  v235 = vpmaxq_s16(v234, v234);
  v236 = vmaxq_s16(vmaxq_s16(v207, v216), vmaxq_s16(v225, v235));
  v237 = vclzq_s16(vsubq_s16(v502.val[0], v232));
  v238 = vsubq_s16(v203, v237);
  v239 = vcgtq_s16(v236, v238);
  v240 = vminq_s16(v238, v236);
  v241.i64[0] = 0x3000300030003;
  v241.i64[1] = 0x3000300030003;
  v242 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v207), v241), 0);
  v243 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v216), v241), 0);
  v244 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v225), v241), 0);
  v245 = vmaxq_s16(vminq_s16(vsubq_s16(v240, v235), v241), 0);
  v246 = vsubq_s16(v240, v242);
  v247 = vsubq_s16(v240, v243);
  v248 = vsubq_s16(v240, v244);
  v249 = vsubq_s16(v240, v245);
  v250 = vceqq_s16(vaddq_s16(v245, v244), vnegq_s16(vaddq_s16(v242, v243)));
  v243.i64[0] = 0x4000400040004;
  v243.i64[1] = 0x4000400040004;
  v251 = vbicq_s8(v243, v250);
  v245.i64[0] = 0x7000700070007;
  v245.i64[1] = 0x7000700070007;
  v243.i64[0] = 0x8000800080008;
  v243.i64[1] = 0x8000800080008;
  v252 = vandq_s8(v180, v241);
  v253.i64[0] = 0x2000200020002;
  v253.i64[1] = 0x2000200020002;
  v185 = v483;
  v254 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(vandq_s8(v180, v243))), vandq_s8(vaddq_s16(v180, v180), v243)), vandq_s8(vceqq_s16(v252, v253), v203)), v184, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v483), v188), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v240, v239), vaddq_s16(v251, v251)), v246, v245), vshlq_n_s16(vaddq_s16(vaddq_s16(v248, v247), v249), 3uLL))), 0);
  if (vaddvq_s16(v254))
  {
    v255.i64[0] = 0x9000900090009;
    v255.i64[1] = 0x9000900090009;
    v256 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v240), v253), vsubq_s16(vandq_s8(v239, v255), vmvnq_s8(v239))), v251);
    v255.i64[0] = 0xF000F000F000FLL;
    v255.i64[1] = 0xF000F000F000FLL;
    v257 = vsubq_s16(v255, v237);
    v255.i64[0] = -1;
    v255.i64[1] = -1;
    v258 = vandq_s8(vsubq_s16(vshlq_s16(v255, v257), v232), v239);
    v21.i32[0] = vbslq_s8(v254, vextq_s8(v12, v12, 0xCuLL), v21).u32[0];
    v491 = vbslq_s8(v254, v197, v491);
    v186 = vbslq_s8(v254, v196, v485);
    v175 = vbslq_s8(v254, v487, v175);
    v176 = vbslq_s8(v254, v193, v495);
    v182 = vbslq_s8(v254, v194, v497);
    v181 = vbslq_s8(v254, v195, v499);
    v177 = vbslq_s8(v254, v198, v501);
    v184 = vbslq_s8(v254, v246, v184);
    v185 = vbslq_s8(v254, v247, v483);
    v179 = vbslq_s8(v254, v248, v179);
    v165 = vbslq_s8(v254, v249, v188);
    v158 = vbslq_s8(v254, v258, v480);
    v79 = vbslq_s8(v254, v240, v79);
    v180 = vbslq_s8(v254, v256, v180);
    v183 = vbslq_s8(v254, v489, v493);
  }

  else
  {
    v181 = v499;
    v177 = v501;
    v176 = v495;
    v182 = v497;
    v158 = v480;
    v165 = v188;
    v183 = v493;
    v186 = v485;
  }

LABEL_16:
  v259.i64[0] = 0x8000800080008;
  v259.i64[1] = 0x8000800080008;
  v260 = vandq_s8(v180, v259);
  v261.i64[0] = 0x3000300030003;
  v261.i64[1] = 0x3000300030003;
  v262.i64[0] = 0x2000200020002;
  v262.i64[1] = 0x2000200020002;
  v263 = vceqq_s16(vandq_s8(v180, v261), v262);
  v262.i64[0] = 0x10001000100010;
  v262.i64[1] = 0x10001000100010;
  v264 = vandq_s8(v263, v262);
  v262.i64[0] = 0x7000700070007;
  v262.i64[1] = 0x7000700070007;
  v265 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v79, vceqzq_s16(v260)), vandq_s8(vaddq_s16(v180, v180), v259)), v264), v184, v262), vshlq_n_s16(vaddq_s16(vaddq_s16(v179, v185), v165), 3uLL));
  if ((vpaddq_s16(v265, v265).i16[0] - 463) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v266 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v267 = 8 * (a1 & 7);
    if (v267)
    {
      v268 = *v266 & ~(-1 << v267);
    }

    else
    {
      v268 = 0;
    }

    *a2 = 0;
    if (v79.i16[0])
    {
      v269 = ((v79.i16[0] << 10) + 15360) & 0x3C00;
    }

    else
    {
      v269 = 0;
    }

    if (v79.i16[1])
    {
      v270 = ((v79.u16[1] << 14) + 245760) & 0x3C000;
    }

    else
    {
      v270 = 0;
    }

    v271 = v269 | v270 | v180.i8[0] & 0x1F | (32 * (v180.i8[2] & 0x1Fu));
    v272 = (v271 << v267) | v268;
    if (v267 >= 0x2E)
    {
      *v266 = v272;
      v272 = v271 >> (-8 * (a1 & 7u));
    }

    v273 = (v267 + 18) & 0x3A;
    v274 = v272 | (v21.u32[0] << v273);
    if (v273 >= 0x20)
    {
      *(v266 + (((v267 + 18) >> 3) & 8)) = v274;
      v274 = v21.u32[0] >> -v273;
    }

    v275 = v267 + 50;
    v276 = vsubq_s16(v79, v184);
    v277 = vsubq_s16(v79, v185);
    v278 = vsubq_s16(v79, v179);
    v279 = vsubq_s16(v79, v165);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u16(v278);
    *v279.i8 = vqmovn_u16(v279);
    v276.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v276, v277), vzip1q_s8(v278, v279)), vzip1q_s16(vtrn2q_s8(v276, v277), vtrn2q_s8(v278, v279))).u64[0];
    v278.i64[0] = 0x202020202020202;
    v278.i64[1] = 0x202020202020202;
    v280 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v180.i8, 0x4000400040004)))), v278);
    v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v281 = vandq_s8(vshlq_u8(v279, vorrq_s8(v280, v278)), v276.u64[0]);
    v282 = vmovl_u8(*v280.i8);
    v283 = vpaddq_s16(vshlq_u16(vmovl_u8(*v281.i8), vtrn1q_s16(0, v282)), vmovl_high_u8(v281));
    v284 = vpaddq_s16(v282, vmovl_high_u8(v280));
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
    v295 = (v267 + 50) & 0x3A;
    v296 = (v293.i64[0] << v295) | v274;
    if ((v294.i64[0] + v295) >= 0x40)
    {
      *(v266 + ((v275 >> 3) & 8)) = v296;
      v296 = v293.i64[0] >> -v295;
    }

    v297 = vceqq_s16(v79, v184);
    v298 = v294.i64[0] + v275;
    v299 = v296 | (v293.i64[1] << v298);
    if ((v298 & 0x3F) + v294.i64[1] >= 0x40)
    {
      *(v266 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
      v299 = v293.i64[1] >> -(v298 & 0x3F);
      if ((v298 & 0x3F) == 0)
      {
        v299 = 0;
      }
    }

    v300 = vandq_s8(v158, v297);
    v301 = v298 + v294.i64[1];
    v302.i64[0] = -1;
    v302.i64[1] = -1;
    v303 = vandq_s8(vextq_s8(vtstq_s16(v260, v260), 0, 0xCuLL), v79);
    v304.i64[0] = 0xF000F000F000FLL;
    v304.i64[1] = 0xF000F000F000FLL;
    v305 = vandq_s8(vshlq_u16(v302, vaddq_s16(v303, v304)), v158);
    v306 = vmovl_u16(*v303.i8);
    v307 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v306)), vmovl_high_u16(v305));
    v308 = vpaddq_s32(v306, vmovl_high_u16(v303));
    v309.i64[0] = v307.u32[0];
    v309.i64[1] = v307.u32[1];
    v310 = v309;
    v309.i64[0] = v307.u32[2];
    v309.i64[1] = v307.u32[3];
    v311 = v309;
    v309.i64[0] = v308.u32[0];
    v309.i64[1] = v308.u32[1];
    v312 = v309;
    v309.i64[0] = v308.u32[2];
    v309.i64[1] = v308.u32[3];
    v313 = vpaddq_s64(vshlq_u64(v310, vzip1q_s64(0, v312)), vshlq_u64(v311, vzip1q_s64(0, v309)));
    v314 = vpaddq_s64(v312, v309);
    v315 = (v313.i64[0] << v301) | v299;
    if (v314.i64[0] + (v301 & 0x3F) >= 0x40)
    {
      *(v266 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v313.i64[0] >> -(v301 & 0x3F);
      if ((v301 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vaddq_s16(v300, v491);
    v317 = v314.i64[0] + v301;
    v318 = v315 | (v313.i64[1] << v317);
    if ((v317 & 0x3F) + v314.i64[1] >= 0x40)
    {
      *(v266 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v313.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = v317 + v314.i64[1];
    v320 = vextq_s8(0, v184, 0xCuLL);
    v321.i64[0] = 0xF000F000F000FLL;
    v321.i64[1] = 0xF000F000F000FLL;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vshlq_u16(v322, vaddq_s16(v320, v321)), v316);
    v324 = vmovl_u16(*v320.i8);
    v325 = vmovl_high_u16(v320);
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
    v334 = (v332.i64[0] << v319) | v318;
    if (v333.i64[0] + (v319 & 0x3F) >= 0x40)
    {
      *(v266 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vceqq_s16(v79, v185);
    v336 = vaddq_s16(v186, v300);
    v337 = v333.i64[0] + v319;
    v338 = v334 | (v332.i64[1] << v337);
    if ((v337 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v266 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
      v338 = v332.i64[1] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v338 = 0;
      }
    }

    v339 = vandq_s8(v158, v335);
    v340 = v337 + v333.i64[1];
    v341.i64[0] = 0xF000F000F000FLL;
    v341.i64[1] = 0xF000F000F000FLL;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v184, v341)), v336);
    v344 = vmovl_u16(*v184.i8);
    v345 = vmovl_high_u16(v184);
    v346 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v344)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v345)));
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
    v354 = (v352.i64[0] << v340) | v338;
    if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v266 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
      v354 = v352.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v354 = 0;
      }
    }

    v355 = vaddq_s16(v183, v339);
    v356 = v353.i64[0] + v340;
    v357 = v354 | (v352.i64[1] << v356);
    if ((v356 & 0x3F) + v353.i64[1] >= 0x40)
    {
      *(v266 + ((v356 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v352.i64[1] >> -(v356 & 0x3F);
      if ((v356 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = v356 + v353.i64[1];
    v359.i64[0] = 0xF000F000F000FLL;
    v359.i64[1] = 0xF000F000F000FLL;
    v360.i64[0] = -1;
    v360.i64[1] = -1;
    v361 = vshlq_u16(v360, vaddq_s16(v185, v359));
    v362 = vandq_s8(v361, v355);
    v363 = vmovl_u16(*v362.i8);
    v364 = vmovl_high_u16(v362);
    v365 = vmovl_u16(*v185.i8);
    v366 = vmovl_high_u16(v185);
    v367 = vtrn1q_s32(0, v365);
    v368 = vtrn1q_s32(0, v366);
    v369 = vpaddq_s32(vshlq_u32(v363, v367), vshlq_u32(v364, v368));
    v370 = vpaddq_s32(v365, v366);
    v371.i64[0] = v369.u32[0];
    v371.i64[1] = v369.u32[1];
    v372 = v371;
    v371.i64[0] = v369.u32[2];
    v371.i64[1] = v369.u32[3];
    v373 = v371;
    v371.i64[0] = v370.u32[0];
    v371.i64[1] = v370.u32[1];
    v374 = v371;
    v371.i64[0] = v370.u32[2];
    v371.i64[1] = v370.u32[3];
    v375 = vzip1q_s64(0, v374);
    v376 = vzip1q_s64(0, v371);
    v377 = vpaddq_s64(vshlq_u64(v372, v375), vshlq_u64(v373, v376));
    v378 = vpaddq_s64(v374, v371);
    v379 = (v377.i64[0] << v358) | v357;
    if (v378.i64[0] + (v358 & 0x3F) >= 0x40)
    {
      *(v266 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
      if ((v358 & 0x3F) != 0)
      {
        v379 = v377.i64[0] >> -(v358 & 0x3F);
      }

      else
      {
        v379 = 0;
      }
    }

    v380 = vceqq_s16(v79, v179);
    v381 = vaddq_s16(v175, v339);
    v382 = v378.i64[0] + v358;
    v383 = v379 | (v377.i64[1] << v382);
    if ((v382 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v377.i64[1] >> -(v382 & 0x3F);
      if ((v382 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vandq_s8(v158, v380);
    v385 = v382 + v378.i64[1];
    v386 = vandq_s8(v361, v381);
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), v367), vshlq_u32(vmovl_high_u16(v386), v368));
    v388.i64[0] = v387.u32[0];
    v388.i64[1] = v387.u32[1];
    v389 = v388;
    v388.i64[0] = v387.u32[2];
    v388.i64[1] = v387.u32[3];
    v390 = vpaddq_s64(vshlq_u64(v389, v375), vshlq_u64(v388, v376));
    v391 = (v390.i64[0] << v385) | v383;
    if (v378.i64[0] + (v385 & 0x3F) >= 0x40)
    {
      *(v266 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v390.i64[0] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v392 = vaddq_s16(v176, v384);
    v393 = v378.i64[0] + v385;
    v394 = (v378.i64[0] + v385) & 0x3F;
    v395 = v391 | (v390.i64[1] << v393);
    if ((v393 & 0x3F) + v378.i64[1] >= 0x40)
    {
      *(v266 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      v395 = v390.i64[1] >> -v394;
      if (!v394)
      {
        v395 = 0;
      }
    }

    v396 = v393 + v378.i64[1];
    v397.i64[0] = 0xF000F000F000FLL;
    v397.i64[1] = 0xF000F000F000FLL;
    v398.i64[0] = -1;
    v398.i64[1] = -1;
    v399 = vshlq_u16(v398, vaddq_s16(v179, v397));
    v400 = vandq_s8(v399, v392);
    v401 = vmovl_u16(*v400.i8);
    v402 = vmovl_high_u16(v400);
    v403 = vmovl_u16(*v179.i8);
    v404 = vmovl_high_u16(v179);
    v405 = vtrn1q_s32(0, v403);
    v406 = vtrn1q_s32(0, v404);
    v407 = vpaddq_s32(vshlq_u32(v401, v405), vshlq_u32(v402, v406));
    v408 = vpaddq_s32(v403, v404);
    v409.i64[0] = v407.u32[0];
    v409.i64[1] = v407.u32[1];
    v410 = v409;
    v409.i64[0] = v407.u32[2];
    v409.i64[1] = v407.u32[3];
    v411 = v409;
    v409.i64[0] = v408.u32[0];
    v409.i64[1] = v408.u32[1];
    v412 = v409;
    v409.i64[0] = v408.u32[2];
    v409.i64[1] = v408.u32[3];
    v413 = vzip1q_s64(0, v412);
    v414 = vzip1q_s64(0, v409);
    v415 = vpaddq_s64(vshlq_u64(v410, v413), vshlq_u64(v411, v414));
    v416 = vpaddq_s64(v412, v409);
    v417 = (v393 + v378.i64[1]) & 0x3F;
    v418 = (v415.i64[0] << (v393 + v378.i8[8])) | v395;
    if ((v416.i64[0] + v417) >= 0x40)
    {
      *(v266 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      if (v417)
      {
        v418 = v415.i64[0] >> -v417;
      }

      else
      {
        v418 = 0;
      }
    }

    v419 = vceqq_s16(v79, v165);
    v420 = vaddq_s16(v182, v384);
    v421 = v416.i64[0] + v396;
    v422 = v418 | (v415.i64[1] << v421);
    if ((v421 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v422;
      v422 = v415.i64[1] >> -(v421 & 0x3F);
      if ((v421 & 0x3F) == 0)
      {
        v422 = 0;
      }
    }

    v423 = vandq_s8(v158, v419);
    v424 = v421 + v416.i64[1];
    v425 = vandq_s8(v399, v420);
    v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), v405), vshlq_u32(vmovl_high_u16(v425), v406));
    v427.i64[0] = v426.u32[0];
    v427.i64[1] = v426.u32[1];
    v428 = v427;
    v427.i64[0] = v426.u32[2];
    v427.i64[1] = v426.u32[3];
    v429 = vpaddq_s64(vshlq_u64(v428, v413), vshlq_u64(v427, v414));
    v430 = (v429.i64[0] << v424) | v422;
    if (v416.i64[0] + (v424 & 0x3F) >= 0x40)
    {
      *(v266 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v424 & 0x3F);
      if ((v424 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s16(v181, v423);
    v432 = v416.i64[0] + v424;
    v433 = (v416.i64[0] + v424) & 0x3F;
    v434 = v430 | (v429.i64[1] << v432);
    if ((v432 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      v434 = v429.i64[1] >> -v433;
      if (!v433)
      {
        v434 = 0;
      }
    }

    v435 = v432 + v416.i64[1];
    v436.i64[0] = 0xF000F000F000FLL;
    v436.i64[1] = 0xF000F000F000FLL;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u16(v437, vaddq_s16(v165, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u16(*v439.i8);
    v441 = vmovl_high_u16(v439);
    v442 = vmovl_u16(*v165.i8);
    v443 = vmovl_high_u16(v165);
    v444 = vtrn1q_s32(0, v442);
    v445 = vtrn1q_s32(0, v443);
    v446 = vpaddq_s32(vshlq_u32(v440, v444), vshlq_u32(v441, v445));
    v447 = vpaddq_s32(v442, v443);
    v448.i64[0] = v446.u32[0];
    v448.i64[1] = v446.u32[1];
    v449 = v448;
    v448.i64[0] = v446.u32[2];
    v448.i64[1] = v446.u32[3];
    v450 = v448;
    v448.i64[0] = v447.u32[0];
    v448.i64[1] = v447.u32[1];
    v451 = v448;
    v448.i64[0] = v447.u32[2];
    v448.i64[1] = v447.u32[3];
    v452 = vzip1q_s64(0, v451);
    v453 = vzip1q_s64(0, v448);
    v454 = vpaddq_s64(vshlq_u64(v449, v452), vshlq_u64(v450, v453));
    v455 = vpaddq_s64(v451, v448);
    v456 = (v432 + v416.i64[1]) & 0x3F;
    v457 = (v454.i64[0] << (v432 + v416.i8[8])) | v434;
    if ((v455.i64[0] + v456) > 0x3F)
    {
      *(v266 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
      if (v456)
      {
        v457 = v454.i64[0] >> -v456;
      }

      else
      {
        v457 = 0;
      }
    }

    v458 = vaddq_s16(v177, v423);
    v459 = v455.i64[0] + v435;
    v460 = v457 | (v454.i64[1] << v459);
    if ((v459 & 0x3F) + v455.i64[1] >= 0x40)
    {
      *(v266 + ((v459 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      v460 = v454.i64[1] >> -(v459 & 0x3F);
      if ((v459 & 0x3F) == 0)
      {
        v460 = 0;
      }
    }

    v461 = v459 + v455.i64[1];
    v462 = vandq_s8(v438, v458);
    v463 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), v444), vshlq_u32(vmovl_high_u16(v462), v445));
    v464.i64[0] = v463.u32[0];
    v464.i64[1] = v463.u32[1];
    v465 = v464;
    v464.i64[0] = v463.u32[2];
    v464.i64[1] = v463.u32[3];
    v466 = vpaddq_s64(vshlq_u64(v465, v452), vshlq_u64(v464, v453));
    v467 = (v466.i64[0] << v461) | v460;
    if (v455.i64[0] + (v461 & 0x3F) >= 0x40)
    {
      *(v266 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v466.i64[0] >> -(v461 & 0x3F);
      if ((v461 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = v455.i64[0] + v461;
    v469 = (v455.i64[0] + v461) & 0x3F;
    v470 = v467 | (v466.i64[1] << (v455.i8[0] + v461));
    if ((v469 + v455.i64[1]) >= 0x40)
    {
      *(v266 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      v470 = v466.i64[1] >> -v469;
      if (!v469)
      {
        v470 = 0;
      }
    }

    v471 = v468 + v455.i64[1];
    if ((v471 & 0x3F) != 0)
    {
      *(v266 + ((v471 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
    }

    result = (v471 - v267 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v402 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v8 = 0;
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v10 = (a1 + a2);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (a1 + 2 * a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
LABEL_6:
    *v12 = v9;
    v12[1] = v9;
    return v8;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, v386, a5);
    }

    v367 = v387;
    v368 = v386[0];
    v365 = v389;
    v366 = v388;
    v376 = v392;
    v377 = v391;
    v375 = v393;
    v373 = v394;
    v370 = v396;
    v371 = v395;
    v369 = v397;
    v381 = v399;
    v382 = v398;
    v379 = v390;
    v380 = v400;
    v378 = v401;
    v17 = a3 + 16;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, v386, a5);
    }

    v374 = v386[0];
    v372 = v387;
    v363 = v389;
    v364 = v388;
    v361 = v391;
    v362 = v390;
    v359 = v393;
    v360 = v392;
    v357 = v395;
    v358 = v394;
    v355 = v397;
    v356 = v396;
    v353 = v399;
    v354 = v398;
    v351 = v401;
    v352 = v400;
    v383 = v5;
    v18 = a3 + 32;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, v386, a5);
    }

    v349 = v387;
    v350 = v386[0];
    v347 = v389;
    v348 = v388;
    v345 = v391;
    v346 = v390;
    v343 = v393;
    v344 = v392;
    v19 = v394;
    v20 = v395;
    v21 = v396;
    v22 = v397;
    v23 = v398;
    v24 = v399;
    v25 = v400;
    v26 = v401;
    if ((v383 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3 + 48, v386, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3 + 48, v386, a5);
    }

    v27 = v25 | (v26 << 16);
    v28 = v23 | (v24 << 16);
    *(a1 + 16) = v350 | (v349 << 16);
    *(a1 + 20) = v348 | (v347 << 16);
    *(a1 + 24) = v19 | (v20 << 16);
    *(a1 + 28) = v21 | (v22 << 16);
    v29 = v386[0];
    v30 = v387;
    *a1 = v368 | (v367 << 16);
    *(a1 + 4) = v366 | (v365 << 16);
    v31 = v388;
    v32 = v389;
    v33 = v390;
    v34 = v391;
    *(a1 + 8) = v373 | (v371 << 16);
    *(a1 + 12) = v370 | (v369 << 16);
    v35 = v392;
    v36 = v393;
    v37 = v394;
    v38 = v395;
    v39 = (a1 + a2);
    *v39 = v379 | (v377 << 16);
    v39[1] = v376 | (v375 << 16);
    v40 = v396;
    v41 = v397;
    v42 = v398;
    v43 = v399;
    v39[2] = v382 | (v381 << 16);
    v39[3] = v380 | (v378 << 16);
    v44 = v400;
    v45 = v401;
    v39[4] = v346 | (v345 << 16);
    v39[5] = v344 | (v343 << 16);
    v39[6] = v28;
    v39[7] = v27;
    v46 = (a1 + a2 + a2);
    *v46 = v374 | (v372 << 16);
    v46[1] = v364 | (v363 << 16);
    v46[2] = v358 | (v357 << 16);
    v46[3] = v356 | (v355 << 16);
    v46[4] = v29 | (v30 << 16);
    v46[5] = v31 | (v32 << 16);
    v46[6] = v37 | (v38 << 16);
    v46[7] = v40 | (v41 << 16);
    v47 = (v46 + a2);
    *v47 = v362 | (v361 << 16);
    v47[1] = v360 | (v359 << 16);
    v47[2] = v354 | (v353 << 16);
    v47[3] = v352 | (v351 << 16);
    v47[4] = v33 | (v34 << 16);
    v47[5] = v35 | (v36 << 16);
    v47[6] = v42 | (v43 << 16);
    v47[7] = v44 | (v45 << 16);
    return 64;
  }

  if (a4 == 127)
  {
    v48 = *a3;
    v49 = *(a3 + 16);
    v50 = *(a3 + 32);
    v51 = *(a3 + 48);
    v52 = *(a3 + 64);
    v53 = *(a3 + 80);
    v54 = *(a3 + 96);
    v55 = *(a3 + 112);
    v56 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v49);
    *(a1 + 16) = vzip1q_s64(v52, v53);
    v57 = (a1 + 2 * a2);
    *v56 = vzip2q_s64(v48, v49);
    v56[1] = vzip2q_s64(v52, v53);
    *v57 = vzip1q_s64(v50, v51);
    v57[1] = vzip1q_s64(v54, v55);
    v58 = (v57 + a2);
    *v58 = vzip2q_s64(v50, v51);
    v58[1] = vzip2q_s64(v54, v55);
    return 128;
  }

  if (a4 == 3)
  {
    v13 = vld1q_dup_f32(a3);
    *a1 = v13;
    *(a1 + 16) = v13;
    v14 = (a1 + a2);
    *v14 = v13;
    v14[1] = v13;
    v15 = (a1 + 2 * a2);
    *v15 = v13;
    v15[1] = v13;
    v16 = (a1 + a2 + 2 * a2);
    *v16 = v13;
    v16[1] = v13;
    return 4;
  }

  v60 = 8 * (a3 & 7);
  v61 = a3 & 0xFFFFFFFFFFFFFFF8;
  v62 = v60 + 18;
  v63 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v60;
  if (v60 >= 0x2F)
  {
    v63 |= *(v61 + 8) << (-8 * (a3 & 7u));
  }

  v64.i32[0] = v63;
  v64.i32[1] = v63 >> 5;
  v65 = vand_s8(v64, 0x1F0000001FLL);
  v66 = vuzp1_s16(v65, v65);
  v67.i32[0] = v63 >> 10;
  v67.i32[1] = v63 >> 14;
  v68 = vuzp1_s16(vadd_s32(vand_s8(v67, 0xF0000000FLL), 0x100000001), v66);
  v69 = v60 + 50;
  v70 = v62 & 0x3A;
  v71 = (v61 + ((v62 >> 3) & 8));
  v72 = *v71 >> (v62 & 0x3A);
  if (v70 >= 0x21)
  {
    v72 |= v71[1] << -v70;
  }

  v73 = vdupq_lane_s32(v66, 0);
  v74 = vdupq_lane_s32(v68, 0);
  v75 = (8 * (a3 & 7)) | 0x200;
  v76.i64[0] = 0x3000300030003;
  v76.i64[1] = 0x3000300030003;
  v77 = vandq_s8(v73, v76);
  v78 = vbicq_s8(v74, vceqq_s16(v77, v76));
  v76.i64[0] = 0x202020202020202;
  v76.i64[1] = 0x202020202020202;
  v79 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v73.i8, 0x4000400040004)))), v76);
  if (vmaxvq_s8(v79) < 1)
  {
    v88 = 0;
    v109.i64[0] = -1;
    v109.i64[1] = -1;
    v105 = v78;
    v104 = v78;
    v103 = v78;
    v108.i64[0] = -1;
    v108.i64[1] = -1;
    v102 = v78;
    v107.i64[0] = -1;
    v107.i64[1] = -1;
    v106.i64[0] = -1;
    v106.i64[1] = -1;
  }

  else
  {
    v80 = vmovl_u8(*&vpaddq_s8(v79, v79));
    v81 = vmovl_u16(*&vpaddq_s16(v80, v80));
    v82 = vpaddq_s32(v81, v81).u64[0];
    v83.i64[0] = v82;
    v83.i64[1] = HIDWORD(v82);
    v84 = v83;
    v85 = vaddvq_s64(v83);
    v86 = v69 + v85;
    v87 = v85 <= 0x80 && v75 >= v86;
    v88 = !v87;
    v89 = 0uLL;
    if (v87)
    {
      v90 = v69 & 0x3A;
      v91 = vaddq_s64(vdupq_n_s64(v90), vzip1q_s64(0, v84));
      v92 = (v61 + ((v69 >> 3) & 8));
      v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
      if (v90 + v85 >= 0x81)
      {
        v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
      }

      v69 = v86;
    }

    v93 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v94.i64[0] = v93.u32[0];
    v94.i64[1] = v93.u32[1];
    v95 = vshlq_u64(v89, vnegq_s64(v94));
    v96 = vuzp1q_s32(vzip1q_s64(v89, v95), vzip2q_s64(v89, v95));
    v97 = vshlq_u32(v96, vnegq_s32((*&v80 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v98 = vuzp1q_s16(vzip1q_s32(v96, v97), vzip2q_s32(v96, v97));
    v96.i64[0] = 0x101010101010101;
    v96.i64[1] = 0x101010101010101;
    *v99.i8 = vand_s8(vadd_s8(*&vshlq_s8(v96, v79), -1), vmovn_s16(vzip1q_s16(v98, vshlq_u16(v98, vnegq_s16(vmovl_u8(vuzp1_s8(*v79.i8, *v73.i8)))))));
    v99.i64[1] = v99.i64[0];
    *v99.i8 = vqtbl1_s8(v99, 0x703060205010400);
    *v98.i8 = vdup_lane_s16(*v99.i8, 0);
    *v96.i8 = vdup_lane_s16(*v99.i8, 1);
    v100 = vdup_lane_s16(*v99.i8, 2);
    v101 = vdup_lane_s16(*v99.i8, 3);
    v102 = vsubw_s8(v78, *v98.i8);
    v103 = vsubw_s8(v78, *v96.i8);
    v104 = vsubw_s8(v78, v100);
    v105 = vsubw_s8(v78, v101);
    v106 = vmovl_s8(vceqz_s8(*v98.i8));
    v107 = vmovl_s8(vceqz_s8(*v96.i8));
    v108 = vmovl_s8(vceqz_s8(v100));
    v109 = vmovl_s8(vceqz_s8(v101));
  }

  v110.i64[0] = 0x8000800080008;
  v110.i64[1] = 0x8000800080008;
  v111 = 0uLL;
  v112 = vandq_s8(vextq_s8(vtstq_s16(v73, v110), 0, 0xCuLL), v78);
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  v118 = v69 + v117;
  if (v117 <= 0x80 && v75 >= v118)
  {
    v120 = v69 & 0x3F;
    v121 = vaddq_s64(vdupq_n_s64(v120), vzip1q_s64(0, v116));
    v122 = (v61 + 8 * (v69 >> 6));
    v111 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v121)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v121)));
    if (v120 + v117 >= 0x81)
    {
      v111 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v121)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v121))), v111);
    }

    v69 = v118;
  }

  else
  {
    v88 = 1;
  }

  v123 = v73.i8[0] & 3;
  if (v123 == 2)
  {
    v124 = v75 < v69 + 8;
    v125 = v69 + 16;
    if (v75 >= v69 + 8)
    {
      v69 += 8;
    }

    else
    {
      v125 = v69 + 8;
    }

    if (v75 < v125)
    {
      v126 = 1;
    }

    else
    {
      v69 = v125;
      v126 = v124;
    }

    v88 |= v126;
  }

  v127 = 0uLL;
  v128 = vextq_s8(0, v102, 0xCuLL);
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v69 + v133;
  if (v133 <= 0x80 && v75 >= v134)
  {
    v137 = v69 & 0x3F;
    v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v132));
    v139 = (v61 + 8 * (v69 >> 6));
    v136 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
    if (v137 + v133 >= 0x81)
    {
      v136 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v136);
    }

    v69 = v134;
  }

  else
  {
    v88 = 1;
    v136 = 0uLL;
  }

  v140 = vmovl_u16(*&vpaddq_s16(v102, v102));
  v141 = vpaddq_s32(v140, v140).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  v145 = v69 + v144;
  if (v144 <= 0x80 && v75 >= v145)
  {
    v147 = v69 & 0x3F;
    v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v143));
    v149 = (v61 + 8 * (v69 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
    if (v147 + v144 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v127);
    }

    v69 = v145;
  }

  else
  {
    v88 = 1;
  }

  v150 = vmovl_u16(*&vpaddq_s16(v103, v103));
  v151 = vpaddq_s32(v150, v150).u64[0];
  v152.i64[0] = v151;
  v152.i64[1] = HIDWORD(v151);
  v153 = v152;
  v154 = vaddvq_s64(v152);
  v155 = v69 + v154;
  v156 = 0uLL;
  if (v154 <= 0x80 && v75 >= v155)
  {
    v159 = v69 & 0x3F;
    v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v153));
    v161 = (v61 + 8 * (v69 >> 6));
    v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
    if (v159 + v154 >= 0x81)
    {
      v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v158);
    }

    v69 = v155;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v88 = 1;
    v158 = 0uLL;
    if (v154 > 0x80)
    {
      goto LABEL_85;
    }
  }

  v162 = v69 + v154;
  if (v75 < v69 + v154)
  {
LABEL_85:
    v88 = 1;
    v162 = v69;
    goto LABEL_86;
  }

  v163 = v69 & 0x3F;
  v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v153));
  v165 = (v61 + 8 * (v69 >> 6));
  v156 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
  if (v163 + v154 >= 0x81)
  {
    v156 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v156);
  }

LABEL_86:
  v166 = vmovl_u16(*&vpaddq_s16(v104, v104));
  v167 = vpaddq_s32(v166, v166).u64[0];
  v168.i64[0] = v167;
  v168.i64[1] = HIDWORD(v167);
  v169 = v168;
  v170 = vaddvq_s64(v168);
  v171 = 0uLL;
  if (v170 > 0x80 || (v172 = v162 + v170, v75 < v162 + v170))
  {
    v88 = 1;
    v172 = v162;
    v175 = 0uLL;
  }

  else
  {
    v173 = vaddq_s64(vdupq_n_s64(v162 & 0x3F), vzip1q_s64(0, v169));
    v174 = (v61 + 8 * (v162 >> 6));
    v175 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v174, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v173)), vshlq_u64(vdupq_lane_s64(v174->i64[0], 0), vnegq_s64(v173)));
    if ((v162 & 0x3F) + v170 >= 0x81)
    {
      v175 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v174[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v173)), vshlq_u64(vdupq_laneq_s64(v174[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v173))), v175);
    }
  }

  if (v170 > 0x80 || (v176 = v172 + v170, v75 < v172 + v170))
  {
    v88 = 1;
    v176 = v172;
  }

  else
  {
    v177 = vaddq_s64(vdupq_n_s64(v172 & 0x3F), vzip1q_s64(0, v169));
    v178 = (v61 + 8 * (v172 >> 6));
    v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v178, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v177)), vshlq_u64(vdupq_lane_s64(v178->i64[0], 0), vnegq_s64(v177)));
    if ((v172 & 0x3F) + v170 >= 0x81)
    {
      v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v178[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v177)), vshlq_u64(vdupq_laneq_s64(v178[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v177))), v171);
    }
  }

  v179 = vmovl_u16(*&vpaddq_s16(v105, v105));
  v180 = vpaddq_s32(v179, v179).u64[0];
  v181.i64[0] = v180;
  v181.i64[1] = HIDWORD(v180);
  v182 = v181;
  v183 = vaddvq_s64(v181);
  if (v183 > 0x80 || (v184 = v176 + v183, v75 < v176 + v183))
  {
    v88 = 1;
    v184 = v176;
    v188 = 0uLL;
  }

  else
  {
    v185 = v176 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v182));
    v187 = (v61 + 8 * (v176 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v183 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  if (v183 > 0x80 || v75 < v184 + v183)
  {
    goto LABEL_109;
  }

  v189 = vaddq_s64(vdupq_n_s64(v184 & 0x3F), vzip1q_s64(0, v182));
  v190 = (v61 + 8 * (v184 >> 6));
  v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
  if ((v184 & 0x3F) + v183 >= 0x81)
  {
    v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
  }

  if ((v88 & 1) != 0 || (v8 = a4 + 1, v75 + 8 * v8 - (v184 + v183) - 512 >= 9))
  {
LABEL_109:
    v192 = 0;
    v193 = 0;
    v194 = 8 * (v386 & 7);
    v195 = 16;
    do
    {
      v196 = 64 - v194;
      if (64 - v194 >= v195)
      {
        v196 = v195;
      }

      *&v386[4 * v192] |= ((0xFFFFFFFFFFFFFFFFLL >> v193) & ~(-1 << v196)) << v194;
      v193 += v196;
      v197 = v196 + v194;
      v192 += v197 >> 6;
      v194 = v197 & 0x3F;
      v195 -= v196;
    }

    while (v195);
LABEL_113:
    v8 = 0;
    v198 = (a1 + a2);
    v9 = 0uLL;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v199 = (a1 + 2 * a2);
    *v198 = 0u;
    v198[1] = 0u;
    v12 = (a1 + a2 + 2 * a2);
    *v199 = 0u;
    v199[1] = 0u;
    goto LABEL_6;
  }

  if (v123 == 2)
  {
    v200 = 0;
    v201 = 0;
    v202 = 8 * (v386 & 7);
    v203 = 16;
    do
    {
      v204 = 64 - v202;
      if (64 - v202 >= v203)
      {
        v204 = v203;
      }

      *&v386[4 * v200] |= ((0xFFFFFFFFFFFFFFFFLL >> v201) & ~(-1 << v204)) << v202;
      v201 += v204;
      v205 = v204 + v202;
      v200 += v205 >> 6;
      v202 = v205 & 0x3F;
      v203 -= v204;
    }

    while (v203);
    goto LABEL_113;
  }

  v206 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
  v207 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
  v208 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
  v209 = vzip1_s32(*v179.i8, *&vextq_s8(v179, v179, 8uLL));
  v210.i64[0] = v206.u32[0];
  v210.i64[1] = v206.u32[1];
  v211 = v210;
  v210.i64[0] = v207.u32[0];
  v210.i64[1] = v207.u32[1];
  v212 = v210;
  v210.i64[0] = v208.u32[0];
  v210.i64[1] = v208.u32[1];
  v213 = v210;
  v210.i64[0] = v209.u32[0];
  v210.i64[1] = v209.u32[1];
  v214 = vnegq_s64(v211);
  v215 = vnegq_s64(v212);
  v216 = vnegq_s64(v213);
  v217 = vnegq_s64(v210);
  v218 = vshlq_u64(v111, v214);
  v219 = vshlq_u64(v158, v215);
  v220 = vshlq_u64(v156, v215);
  v221 = vshlq_u64(v175, v216);
  v222 = vshlq_u64(v171, v216);
  v223 = vshlq_u64(v188, v217);
  v224 = vzip2q_s64(v111, v218);
  v225 = vzip1q_s64(v111, v218);
  v226 = vzip2q_s64(v158, v219);
  v227 = vzip1q_s64(v158, v219);
  v228 = vzip2q_s64(v156, v220);
  v229 = vzip1q_s64(v156, v220);
  v230 = vzip2q_s64(v175, v221);
  v231 = vzip1q_s64(v175, v221);
  v232 = vzip2q_s64(v171, v222);
  v233 = vzip1q_s64(v171, v222);
  v234 = vzip2q_s64(v188, v223);
  v235 = vzip1q_s64(v188, v223);
  v236 = vuzp1q_s32(v225, v224);
  v237 = vuzp1q_s32(v227, v226);
  v238 = vuzp1q_s32(v229, v228);
  v225.i64[0] = 0xFFFF0000FFFFLL;
  v225.i64[1] = 0xFFFF0000FFFFLL;
  v239 = vuzp1q_s32(v231, v230);
  v227.i64[0] = 0xFFFF0000FFFFLL;
  v227.i64[1] = 0xFFFF0000FFFFLL;
  v240 = vnegq_s32(vandq_s8(v112, v225));
  v241 = vnegq_s32(vandq_s8(v103, v227));
  v242 = vuzp1q_s32(v233, v232);
  v243 = vuzp1q_s32(v235, v234);
  v244 = vshlq_u32(v236, v240);
  v245 = vshlq_u32(v237, v241);
  v246 = vshlq_u32(v238, v241);
  v241.i64[0] = 0x10001000100010;
  v241.i64[1] = 0x10001000100010;
  v235.i64[0] = 0xF000F000F000FLL;
  v235.i64[1] = 0xF000F000F000FLL;
  v247 = vsubq_s16(v241, v112);
  v248 = vaddq_s16(v112, v235);
  v235.i64[0] = 0x10001000100010;
  v235.i64[1] = 0x10001000100010;
  v249 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v236, v244), vzip2q_s32(v236, v244)), v247);
  v247.i64[0] = 0xF000F000F000FLL;
  v247.i64[1] = 0xF000F000F000FLL;
  v250 = vsubq_s16(v235, v103);
  v251 = vaddq_s16(v103, v247);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v252 = vnegq_s32(vandq_s8(v104, v247));
  v253 = vshlq_s16(v249, v248);
  v254 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v237, v245), vzip2q_s32(v237, v245)), v250), v251);
  v255 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v238, v246), vzip2q_s32(v238, v246)), v250), v251);
  v256 = vdupq_lane_s32(*v253.i8, 0);
  v257 = vandq_s8(v107, v256);
  v258 = vsubq_s16(v254, v257);
  v259 = vsubq_s16(v255, v257);
  v260 = vshlq_u32(v239, v252);
  v261 = vshlq_u32(v242, v252);
  v262 = vzip2q_s32(v239, v260);
  v263 = vzip1q_s32(v239, v260);
  v264 = vzip2q_s32(v242, v261);
  v265 = vzip1q_s32(v242, v261);
  v261.i64[0] = 0x10001000100010;
  v261.i64[1] = 0x10001000100010;
  v266 = vuzp1q_s16(v265, v264);
  v264.i64[0] = 0xF000F000F000FLL;
  v264.i64[1] = 0xF000F000F000FLL;
  v267 = vsubq_s16(v261, v104);
  v268 = vaddq_s16(v104, v264);
  v264.i64[0] = 0xFFFF0000FFFFLL;
  v264.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vnegq_s32(vandq_s8(v105, v264));
  v270 = vshlq_s16(vshlq_s16(vuzp1q_s16(v263, v262), v267), v268);
  v271 = vshlq_s16(vshlq_s16(v266, v267), v268);
  v272 = vandq_s8(v108, v256);
  v273 = vsubq_s16(v270, v272);
  v274 = vsubq_s16(v271, v272);
  v275 = vshlq_u32(v243, v269);
  v276 = vzip2q_s32(v243, v275);
  v277 = vzip1q_s32(v243, v275);
  v275.i64[0] = 0x10001000100010;
  v275.i64[1] = 0x10001000100010;
  v278 = vuzp1q_s16(v277, v276);
  v276.i64[0] = 0xF000F000F000FLL;
  v276.i64[1] = 0xF000F000F000FLL;
  v279 = vsubq_s16(v275, v105);
  v280 = vaddq_s16(v105, v276);
  v281 = vshlq_u64(v191, v217);
  v282 = vuzp1q_s32(vzip1q_s64(v191, v281), vzip2q_s64(v191, v281));
  v283 = vshlq_u32(v282, v269);
  v284 = vshlq_s16(vshlq_s16(v278, v279), v280);
  v285 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v282, v283), vzip2q_s32(v282, v283)), v279), v280);
  v286 = vandq_s8(v109, v256);
  v287 = vsubq_s16(v284, v286);
  v288 = vsubq_s16(v285, v286);
  v289 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v290 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
  v210.i64[0] = v289.u32[0];
  v210.i64[1] = v289.u32[1];
  v291 = v210;
  v210.i64[0] = v290.u32[0];
  v210.i64[1] = v290.u32[1];
  v292 = vshlq_u64(v136, vnegq_s64(v291));
  v293 = vshlq_u64(v127, vnegq_s64(v210));
  v294 = vzip2q_s64(v136, v292);
  v295 = vzip1q_s64(v136, v292);
  v296 = vzip2q_s64(v127, v293);
  v297 = vzip1q_s64(v127, v293);
  v293.i64[0] = 0xFFFF0000FFFFLL;
  v293.i64[1] = 0xFFFF0000FFFFLL;
  v298 = vuzp1q_s32(v295, v294);
  v299 = vuzp1q_s32(v297, v296);
  v300 = vnegq_s32(vandq_s8(v102, v293));
  v301 = vshlq_u32(v298, vnegq_s32(vandq_s8(v128, v293)));
  v302 = vshlq_u32(v299, v300);
  v303 = vzip2q_s32(v298, v301);
  v304 = vzip1q_s32(v298, v301);
  v305 = vzip2q_s32(v299, v302);
  v306 = vzip1q_s32(v299, v302);
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v307 = vuzp1q_s16(v306, v305);
  v305.i64[0] = 0xF000F000F000FLL;
  v305.i64[1] = 0xF000F000F000FLL;
  v308 = vaddq_s16(vandq_s8(v253, v106), vshlq_s16(vshlq_s16(vuzp1q_s16(v304, v303), vsubq_s16(v302, v128)), vaddq_s16(v128, v305)));
  v309 = vandq_s8(v106, v256);
  v310.i64[0] = 0x1000100010001;
  v310.i64[1] = 0x1000100010001;
  v311 = vceqq_s16(v77, v310);
  v312 = vaddvq_s16(v311);
  v313 = vsubq_s16(v308, v309);
  v314 = vsubq_s16(vshlq_s16(vshlq_s16(v307, vsubq_s16(v302, v102)), vaddq_s16(v102, v305)), v309);
  v311.i32[0] = v72;
  v315 = vdupq_lane_s32(*v311.i8, 0);
  if (v312)
  {
    v316 = vnegq_s16(vandq_s8(v73, v310));
    v317 = v314;
    v317.i32[3] = v313.i32[0];
    v318 = v313;
    v318.i32[0] = v314.i32[3];
    v403.val[0] = vbslq_s8(v316, v318, v313);
    v403.val[1] = vbslq_s8(v316, v317, v314);
    v317.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v317.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F0F80), v316), v403.val[0]);
    v404.val[1] = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, v317), v316));
    v313 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0F90), v316), v404.val[0]);
    v314 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FA0), v316), v258);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v258.i8, xmmword_29D2F0FB0), v316), v259);
    v258 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FC0), v316), v404.val[0]);
    v259 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, v317), v316));
    v404.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0FD0), v316), v273);
    v404.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v273.i8, xmmword_29D2F0F80), v316), v274);
    v273 = vaddq_s16(vandq_s8(vqtbl2q_s8(v404, v317), v316), v404.val[0]);
    v274 = vaddq_s16(v404.val[1], vandq_s8(vqtbl2q_s8(v404, xmmword_29D2F0FE0), v316));
    v403.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0FF0), v316), v287);
    v403.val[1] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v287.i8, xmmword_29D2F0F80), v316), v288);
    v287 = vaddq_s16(vandq_s8(vqtbl2q_s8(v403, v317), v316), v403.val[0]);
    v288 = vaddq_s16(v403.val[1], vandq_s8(vqtbl2q_s8(v403, xmmword_29D2F1000), v316));
  }

  v319 = vaddq_s16(v313, v315);
  v320 = vaddq_s16(v314, v315);
  v321 = vaddq_s16(v258, v315);
  v322 = vaddq_s16(v259, v315);
  v323 = vaddq_s16(v273, v315);
  v324 = vaddq_s16(v274, v315);
  v325 = vaddq_s16(v287, v315);
  v326 = vaddq_s16(v288, v315);
  v327.i64[0] = 0x10001000100010;
  v327.i64[1] = 0x10001000100010;
  v328 = vceqzq_s16(vandq_s8(v73, v327));
  v329 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v319, xmmword_29D2F1080), v328), v319);
  v330 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v320, xmmword_29D2F1080), v328), v320);
  v331 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v321, xmmword_29D2F1080), v328), v321);
  v332 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v322, xmmword_29D2F1080), v328), v322);
  v333 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v323, xmmword_29D2F1080), v328), v323);
  v334 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v324, xmmword_29D2F1080), v328), v324);
  v335 = vzip2q_s64(v329, v330);
  *&v336 = v329.i64[0];
  *(&v336 + 1) = v330.i64[0];
  *&v337 = v333.i64[0];
  *(&v337 + 1) = v334.i64[0];
  v338 = (a1 + a2);
  *a1 = v336;
  *(a1 + 16) = v337;
  v339 = (a1 + 2 * a2);
  v340 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v325, xmmword_29D2F1080), v328), v325);
  v341 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v326, xmmword_29D2F1080), v328), v326);
  *v338 = v335;
  v338[1] = vzip2q_s64(v333, v334);
  v334.i64[0] = v331.i64[0];
  v334.i64[1] = v332.i64[0];
  v325.i64[0] = v340.i64[0];
  v325.i64[1] = v341.i64[0];
  *v339 = v334;
  v339[1] = v325;
  v342 = (v339 + a2);
  *v342 = vzip2q_s64(v331, v332);
  v342[1] = vzip2q_s64(v340, v341);
  return v8;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

uint64_t AGX::BarrierTracker::addBackFacingBarrier(AGX::BarrierTracker *this, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1023;
  }

  else
  {
    v4 = 0;
    if (a2)
    {
      do
      {
        v5 = a2 & -a2;
        v6 = v4 | 2;
        v7 = v4 | 4;
        v8 = v4 | 0x200;
        if (v5 != 0x40000000)
        {
          v8 = v4;
        }

        if (v5 != 0x20000000)
        {
          v7 = v8;
        }

        if (v5 != 0x10000000)
        {
          v6 = v7;
        }

        v9 = v4 | 0x100;
        v10 = v4 | 1;
        if (v5 != 0x8000000)
        {
          v10 = v4;
        }

        if (v5 != 0x4000000)
        {
          v9 = v10;
        }

        if (v5 <= 0xFFFFFFF)
        {
          v6 = v9;
        }

        v11 = v4 | 0x20;
        v12 = v4 | 0x40;
        v13 = v4 | 0x80;
        if (v5 != 16)
        {
          v13 = v4;
        }

        if (v5 != 8)
        {
          v12 = v13;
        }

        if (v5 != 4)
        {
          v11 = v12;
        }

        v14 = v4 | 8;
        if (v5 == 2)
        {
          v4 |= 0x10u;
        }

        if (v5 == 1)
        {
          v4 = v14;
        }

        if (v5 > 3)
        {
          v4 = v11;
        }

        if (v5 > 0x3FFFFFF)
        {
          v4 = v6;
        }

        v15 = v5 == a2;
        LODWORD(a2) = v5 ^ a2;
      }

      while (!v15);
    }
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = 1023;
  }

  else
  {
    v16 = 0;
    if (a3)
    {
      do
      {
        v17 = a3 & -a3;
        v18 = v16 | 2;
        v19 = v16 | 4;
        v20 = v16 | 0x200;
        if (v17 != 0x40000000)
        {
          v20 = v16;
        }

        if (v17 != 0x20000000)
        {
          v19 = v20;
        }

        if (v17 != 0x10000000)
        {
          v18 = v19;
        }

        v21 = v16 | 0x100;
        v22 = v16 | 1;
        if (v17 != 0x8000000)
        {
          v22 = v16;
        }

        if (v17 != 0x4000000)
        {
          v21 = v22;
        }

        if (v17 <= 0xFFFFFFF)
        {
          v18 = v21;
        }

        v23 = v16 | 0x20;
        v24 = v16 | 0x40;
        v25 = v16 | 0x80;
        if (v17 != 16)
        {
          v25 = v16;
        }

        if (v17 != 8)
        {
          v24 = v25;
        }

        if (v17 != 4)
        {
          v23 = v24;
        }

        v26 = v16 | 8;
        if (v17 == 2)
        {
          v16 |= 0x10u;
        }

        if (v17 == 1)
        {
          v16 = v26;
        }

        if (v17 > 3)
        {
          v16 = v23;
        }

        if (v17 > 0x3FFFFFF)
        {
          v16 = v18;
        }

        v15 = v17 == a3;
        LODWORD(a3) = v17 ^ a3;
      }

      while (!v15);
    }
  }

  if (a4 & 2) != 0 && (*(this + 41))
  {
    v27 = *(this + 5) | v16;
    *(this + 4) |= v4;
    *(this + 5) = v27;
    v28 = *(this + 40) ^ 1;
    *(this + 40) = 1;
    return v28 & 1;
  }

  else
  {
    v30 = *(this + 1) | v16;
    *this |= v4;
    *(this + 1) = v30;
    return 0;
  }
}

uint64_t AGX::BarrierTracker::addFrontFacingBarrier(uint64_t this, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1023;
  }

  else
  {
    v4 = 0;
    if (a2)
    {
      do
      {
        v5 = a2 & -a2;
        v6 = v4 | 2;
        v7 = v4 | 4;
        v8 = v4 | 0x200;
        if (v5 != 0x40000000)
        {
          v8 = v4;
        }

        if (v5 != 0x20000000)
        {
          v7 = v8;
        }

        if (v5 != 0x10000000)
        {
          v6 = v7;
        }

        v9 = v4 | 0x100;
        v10 = v4 | 1;
        if (v5 != 0x8000000)
        {
          v10 = v4;
        }

        if (v5 != 0x4000000)
        {
          v9 = v10;
        }

        if (v5 <= 0xFFFFFFF)
        {
          v6 = v9;
        }

        v11 = v4 | 0x20;
        v12 = v4 | 0x40;
        v13 = v4 | 0x80;
        if (v5 != 16)
        {
          v13 = v4;
        }

        if (v5 != 8)
        {
          v12 = v13;
        }

        if (v5 != 4)
        {
          v11 = v12;
        }

        v14 = v4 | 8;
        if (v5 == 2)
        {
          v4 |= 0x10u;
        }

        if (v5 == 1)
        {
          v4 = v14;
        }

        if (v5 > 3)
        {
          v4 = v11;
        }

        if (v5 > 0x3FFFFFF)
        {
          v4 = v6;
        }

        v26 = v5 == a2;
        LODWORD(a2) = v5 ^ a2;
      }

      while (!v26);
    }
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 1023;
  }

  else
  {
    v15 = 0;
    if (a3)
    {
      do
      {
        v16 = a3 & -a3;
        v17 = v15 | 2;
        v18 = v15 | 4;
        v19 = v15 | 0x200;
        if (v16 != 0x40000000)
        {
          v19 = v15;
        }

        if (v16 != 0x20000000)
        {
          v18 = v19;
        }

        if (v16 != 0x10000000)
        {
          v17 = v18;
        }

        v20 = v15 | 0x100;
        v21 = v15 | 1;
        if (v16 != 0x8000000)
        {
          v21 = v15;
        }

        if (v16 != 0x4000000)
        {
          v20 = v21;
        }

        if (v16 <= 0xFFFFFFF)
        {
          v17 = v20;
        }

        v22 = v15 | 0x20;
        v23 = v15 | 0x40;
        v24 = v15 | 0x80;
        if (v16 != 16)
        {
          v24 = v15;
        }

        if (v16 != 8)
        {
          v23 = v24;
        }

        if (v16 != 4)
        {
          v22 = v23;
        }

        v25 = v15 | 8;
        if (v16 == 2)
        {
          v15 |= 0x10u;
        }

        if (v16 == 1)
        {
          v15 = v25;
        }

        if (v16 > 3)
        {
          v15 = v22;
        }

        if (v16 > 0x3FFFFFF)
        {
          v15 = v17;
        }

        v26 = v16 == a3;
        LODWORD(a3) = v16 ^ a3;
      }

      while (!v26);
    }
  }

  v26 = (((a4 & 2) != 0) & *(this + 41)) == 0;
  v27 = 8;
  if ((((a4 & 2) != 0) & *(this + 41)) != 0)
  {
    v27 = 24;
  }

  *(this + v27) |= v4;
  if (v26)
  {
    v28 = 12;
  }

  else
  {
    v28 = 28;
  }

  *(this + v28) |= v15;
  return this;
}

void sub_29CC69D70(_Unwind_Exception *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&STACK[0x898]);
  DebugLogEntryMetadata::~DebugLogEntryMetadata(&STACK[0x36F8]);
  DebugLogEntryMetadata::~DebugLogEntryMetadata(&STACK[0x3730]);
  std::__tree<std::__value_type<unsigned int,DebugLogEntryMetadata>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,DebugLogEntryMetadata>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,DebugLogEntryMetadata>>>::destroy(STACK[0x768]);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,DebugLogEntryMetadata>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,DebugLogEntryMetadata>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,DebugLogEntryMetadata>>>::destroy(char *a1)
{
  if (!a1)
  {
    return;
  }

  std::__tree<std::__value_type<unsigned int,DebugLogEntryMetadata>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,DebugLogEntryMetadata>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,DebugLogEntryMetadata>>>::destroy(*a1);
  std::__tree<std::__value_type<unsigned int,DebugLogEntryMetadata>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,DebugLogEntryMetadata>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,DebugLogEntryMetadata>>>::destroy(*(a1 + 1));
  v2 = *(a1 + 11);
  if (v2 != a1 + 64)
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    if ((a1[63] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  (*(*v2 + 32))(v2);
  if (a1[63] < 0)
  {
LABEL_11:
    operator delete(*(a1 + 5));
  }

LABEL_6:

  operator delete(a1);
}

uint64_t std::pair<unsigned int const,DebugLogEntryMetadata>::~pair(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(a1 + 56);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_7:
    operator delete(*(a1 + 8));
    return a1;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 31) < 0)
  {
    goto LABEL_7;
  }

  return a1;
}

void DebugLogEntryMetadata::~DebugLogEntryMetadata(DebugLogEntryMetadata *this)
{
  v2 = this + 24;
  v3 = *(this + 6);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*this);
    return;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29ED52000](a1 + 32);
  *(a1 + 88) = 0;
  v13 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v14 = *(a1 + 111);
  if (v14 < 0)
  {
    v14 = *(a1 + 96);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13 + v14;
  return a1;
}

void sub_29CC6B9CC(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29ED52040](v2);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29ED52040](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,DebugLogEntryMetadata>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,DebugLogEntryMetadata>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 88);
      if (v3 != v2 + 64)
      {
        if (v3)
        {
          (*(*v3 + 40))(v3);
        }

        if ((*(v2 + 63) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }

      (*(*v3 + 32))(v3);
      if (*(v2 + 63) < 0)
      {
LABEL_10:
        operator delete(*(v2 + 40));
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t hex16x4Formatter(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  v2 = v12;
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = &v12 + *(v2 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v12 + *(v2 - 24)));
    v4 = std::locale::use_facet(&v17, MEMORY[0x29EDC93D0]);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v17);
  }

  *(v3 + 36) = 48;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, "0x(", 3);
  *(&v14[1].__locale_ + *(v12 - 24)) = 4;
  MEMORY[0x29ED51F30](v5, a1 >> 48);
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ",", 1);
  *(&v14[1].__locale_ + *(v12 - 24)) = 4;
  MEMORY[0x29ED51F30](v6, a1 << 16 >> 48);
  v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ",", 1);
  *(&v14[1].__locale_ + *(v12 - 24)) = 4;
  MEMORY[0x29ED51F30](v7, (a1 >> 16));
  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ",", 1);
  *(&v14[1].__locale_ + *(v12 - 24)) = 4;
  MEMORY[0x29ED51F30](v8, a1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, ")", 1);
  std::stringbuf::str();
  v11[0] = *MEMORY[0x29EDC9528];
  v9 = *(MEMORY[0x29EDC9528] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v12 = v9;
  v13 = MEMORY[0x29EDC9570] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v16);
}

uint64_t float32Formatter()
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v2);
  *(&v5[1].__locale_ + *(v3 - 24)) = 8;
  std::ostream::operator<<();
  std::stringbuf::str();
  v2[0] = *MEMORY[0x29EDC9528];
  v0 = *(MEMORY[0x29EDC9528] + 72);
  *(v2 + *(v2[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v3 = v0;
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v7);
}

void sub_29CC6C314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t hex32Formatter(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v8);
  v2 = v9;
  *(&v9 + *(v9 - 24) + 8) = *(&v9 + *(v9 - 24) + 8) & 0xFFFFFFB5 | 8;
  v3 = &v9 + *(v2 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v9 + *(v2 - 24)));
    v4 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v14);
  }

  *(v3 + 36) = 48;
  v5 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v9, "0x", 2);
  *(&v11[1].__locale_ + *(v9 - 24)) = 8;
  MEMORY[0x29ED51F20](v5, a1);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v9 = v6;
  v10 = MEMORY[0x29EDC9570] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v13);
}

uint64_t int32_hex32_Formatter(unint64_t a1)
{
  v2 = HIDWORD(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v9);
  *(&v12[1].__locale_ + *(v10 - 24)) = 8;
  MEMORY[0x29ED51F20](&v10, v2);
  v3 = v10;
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  v4 = &v10 + *(v3 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((&v10 + *(v3 - 24)));
    v5 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v15);
  }

  *(v4 + 36) = 48;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, ",0x", 3);
  *(&v12[1].__locale_ + *(v10 - 24)) = 8;
  MEMORY[0x29ED51F20](v6, a1);
  std::stringbuf::str();
  v9[0] = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v10 = v7;
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v14);
}

uint64_t hex64Formatter(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, "0x", 2);
  v2 = v8;
  v3 = &v8 + *(v8 - 24);
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((&v8 + *(v8 - 24)));
    v4 = std::locale::use_facet(&v13, MEMORY[0x29EDC93D0]);
    (v4->__vftable[2].~facet_0)(v4, 32);
    std::locale::~locale(&v13);
    v2 = v8;
  }

  *(v3 + 36) = 48;
  *(&v10[1].__locale_ + *(v2 - 24)) = 16;
  *(&v8 + *(v2 - 24) + 8) = *(&v8 + *(v2 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29ED51F40](&v8, a1);
  std::stringbuf::str();
  v7[0] = *MEMORY[0x29EDC9528];
  v5 = *(MEMORY[0x29EDC9528] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v8 = v5;
  v9 = MEMORY[0x29EDC9570] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v12);
}

uint64_t int32x2Formatter(unint64_t a1)
{
  v2 = HIDWORD(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v6);
  *(&v9[1].__locale_ + *(v7 - 24)) = 8;
  v3 = MEMORY[0x29ED51F10](&v7, v2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, ",", 1);
  *(&v9[1].__locale_ + *(v7 - 24)) = 8;
  MEMORY[0x29ED51F10](&v7, a1);
  std::stringbuf::str();
  v6[0] = *MEMORY[0x29EDC9528];
  v4 = *(MEMORY[0x29EDC9528] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v7 = v4;
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x29ED52040](&v11);
}

void sub_29CC6CD60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::string (*)(unsigned long long),std::allocator<std::string (*)(unsigned long long)>,std::string ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A23F5600;
  a2[1] = v2;
  return result;
}

void std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*a1);
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::~FreeIntervalList(uint64_t a1)
{
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 40));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 16));
  return a1;
}

uint64_t AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::~Mempool(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    *(a1 + 36) = 1;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    *(a1 + 60) = 1;
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    *(a1 + 84) = 1;
  }

  if ((*(a1 + 108) & 1) == 0)
  {
    *(a1 + 108) = 1;
  }

  if ((*(a1 + 132) & 1) == 0)
  {
    *(a1 + 132) = 1;
  }

  if ((*(a1 + 156) & 1) == 0)
  {
    *(a1 + 156) = 1;
  }

  if ((*(a1 + 180) & 1) == 0)
  {
    *(a1 + 180) = 1;
  }

  if ((*(a1 + 204) & 1) == 0)
  {
    *(a1 + 204) = 1;
  }

  if ((*(a1 + 228) & 1) == 0)
  {
    *(a1 + 228) = 1;
  }

  if ((*(a1 + 252) & 1) == 0)
  {
    *(a1 + 252) = 1;
  }

  if ((*(a1 + 276) & 1) == 0)
  {
    *(a1 + 276) = 1;
  }

  if ((*(a1 + 300) & 1) == 0)
  {
    *(a1 + 300) = 1;
  }

  if ((*(a1 + 324) & 1) == 0)
  {
    *(a1 + 324) = 1;
  }

  if ((*(a1 + 348) & 1) == 0)
  {
    *(a1 + 348) = 1;
  }

  if ((*(a1 + 372) & 1) == 0)
  {
    *(a1 + 372) = 1;
  }

  if ((*(a1 + 396) & 1) == 0)
  {
    *(a1 + 396) = 1;
  }

  if ((*(a1 + 420) & 1) == 0)
  {
    *(a1 + 420) = 1;
  }

  if ((*(a1 + 444) & 1) == 0)
  {
    *(a1 + 444) = 1;
  }

  if ((*(a1 + 468) & 1) == 0)
  {
    *(a1 + 468) = 1;
  }

  if ((*(a1 + 492) & 1) == 0)
  {
    *(a1 + 492) = 1;
  }

  if ((*(a1 + 516) & 1) == 0)
  {
    *(a1 + 516) = 1;
  }

  if ((*(a1 + 540) & 1) == 0)
  {
    *(a1 + 540) = 1;
  }

  if ((*(a1 + 564) & 1) == 0)
  {
    *(a1 + 564) = 1;
  }

  if ((*(a1 + 588) & 1) == 0)
  {
    *(a1 + 588) = 1;
  }

  if ((*(a1 + 612) & 1) == 0)
  {
    *(a1 + 612) = 1;
  }

  if ((*(a1 + 636) & 1) == 0)
  {
    *(a1 + 636) = 1;
  }

  if ((*(a1 + 660) & 1) == 0)
  {
    *(a1 + 660) = 1;
  }

  if ((*(a1 + 684) & 1) == 0)
  {
    *(a1 + 684) = 1;
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 760));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 736));
  return a1;
}

void AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::grow(uint64_t a1, unsigned int a2, int a3)
{
  add = atomic_fetch_add((a1 + 704), 1u);
  v7 = add + 1;
  if (add == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 24 * add + 16);
  }

  v9 = a1 + 8;
  v10 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:8 * a2 options:0];
  *(a1 + 8 + 24 * v7 + 8) = v10;
  if (v8)
  {
    memcpy(*&v10[*MEMORY[0x29EDC5638] + 24], *(v8 + *MEMORY[0x29EDC5638] + 24), 8 * *(a1 + 716));
  }

  if (*(a1 + 716) <= 1u)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + 716);
  }

  *(a1 + 716) = a2;
  atomic_fetch_add((v9 + 24 * v7), 0x80000000);
  if ((add & 0x80000000) == 0)
  {
    v12 = v9 + 24 * add;
    if (atomic_fetch_add(v12, 0x80000000) == 0x80000000)
    {
      os_unfair_lock_assert_owner((a1 + 776));
      if ((*(v12 + 4) & 1) == 0)
      {
        *(v12 + 4) = 1;
      }
    }
  }

  if (a3)
  {
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(a1 + 720, v11, a2 - 1);
  }

  v13 = *(a1 + 792);
  v14 = *v13;
  if ((*v13 + 1) > 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 1;
  }

  v16 = *v13;
  atomic_compare_exchange_strong(v13, &v16, v15);
  if (v16 != v14)
  {
    v17 = v16;
    do
    {
      if ((v16 + 1) > 1)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = 1;
      }

      atomic_compare_exchange_strong(v13, &v17, v18);
      v19 = v17 == v16;
      v16 = v17;
    }

    while (!v19);
  }
}

uint64_t *AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(uint64_t a1, unsigned int a2, int a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  v7 = (a1 + 8);
  if (v5)
  {
    v8 = a1 + 16;
    do
    {
      v9 = *(v5 + 28);
      v32 = v9 >= a2;
      v10 = v9 < a2;
      if (v32)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v10);
    }

    while (v5);
    v11 = *v7;
    LODWORD(v5) = v8 != v6 && a3 + 1 == *(v8 + 28);
    v6 = v8;
  }

  else
  {
    v11 = *v7;
  }

  v12 = a3 - a2 + 1;
  if (v6 == v11)
  {
    goto LABEL_54;
  }

  v13 = *v6;
  if (*v6)
  {
    do
    {
      v14 = v13;
      v13 = *(v13 + 8);
    }

    while (v13);
  }

  else
  {
    v15 = v6;
    do
    {
      v14 = v15[2];
      v16 = *v14 == v15;
      v15 = v14;
    }

    while (v16);
  }

  v18 = *(v14 + 7);
  v17 = *(v14 + 8);
  if (((v17 + v18 == a2) & v5) == 1)
  {
    v19 = *(v6 + 8);
    v20 = v17 + v12 + v19;
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__erase_unique<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>((a1 + 32), *(v6 + 7), v19);
    std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__erase_unique<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>((a1 + 32), *(v14 + 7), *(v14 + 8));
    v21 = v6[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v6[2];
        v16 = *v22 == v6;
        v6 = v22;
      }

      while (!v16);
    }

    if (v14 != v22)
    {
      do
      {
        v26 = v14[1];
        v27 = v14;
        if (v26)
        {
          do
          {
            v28 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v28 = v27[2];
            v16 = *v28 == v27;
            v27 = v28;
          }

          while (!v16);
        }

        if (*v7 == v14)
        {
          *v7 = v28;
        }

        v25 = *(a1 + 16);
        --*(a1 + 24);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v25, v14);
        operator delete(v14);
        v14 = v28;
      }

      while (v28 != v22);
    }

    result = std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(v7, v22, &v64, &v63, v18, v20);
    if (!*result)
    {
      operator new();
    }

    v24 = *(a1 + 40);
    if (!v24)
    {
      goto LABEL_116;
    }

    while (1)
    {
      while (1)
      {
        v29 = v24;
        v30 = *(v24 + 8);
        if (v20 >= v30)
        {
          v31 = *(v29 + 7);
          v32 = v30 < v20 || v18 >= v31;
          if (v32)
          {
            break;
          }
        }

        v24 = *v29;
        if (!*v29)
        {
          goto LABEL_116;
        }
      }

      if (v30 >= v20 && v31 >= v18)
      {
        return result;
      }

      v24 = v29[1];
      if (!v24)
      {
        goto LABEL_116;
      }
    }
  }

  if (v17 + v18 != a2)
  {
LABEL_54:
    if (v5)
    {
      v37 = *(v6 + 8);
      v38 = v37 + v12;
      std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__erase_unique<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>((a1 + 32), *(v6 + 7), v37);
      v39 = v6[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        v47 = v6;
        do
        {
          v40 = v47[2];
          v16 = *v40 == v47;
          v47 = v40;
        }

        while (!v16);
      }

      if (*v7 == v6)
      {
        *v7 = v40;
      }

      v48 = *(a1 + 16);
      --*(a1 + 24);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v48, v6);
      operator delete(v6);
      result = std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(v7, v40, &v64, &v63, a2, v38);
      if (!*result)
      {
        operator new();
      }

      v49 = *(a1 + 40);
      if (!v49)
      {
LABEL_94:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v50 = v49;
          v51 = *(v49 + 8);
          if (v38 >= v51)
          {
            v52 = *(v50 + 7);
            if (v51 < v38 || v52 <= a2)
            {
              break;
            }
          }

          v49 = *v50;
          if (!*v50)
          {
            goto LABEL_94;
          }
        }

        if (v51 >= v38 && v52 >= a2)
        {
          break;
        }

        v49 = v50[1];
        if (!v49)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      result = std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>((a1 + 8), v6, &v64, &v63, a2, v12);
      if (!*result)
      {
        operator new();
      }

      v41 = *(a1 + 40);
      if (!v41)
      {
LABEL_73:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v42 = v41;
          v43 = *(v41 + 8);
          if (v12 >= v43)
          {
            v44 = *(v42 + 7);
            if (v43 < v12 || v44 <= a2)
            {
              break;
            }
          }

          v41 = *v42;
          if (!*v42)
          {
            goto LABEL_73;
          }
        }

        if (v43 >= v12 && v44 >= a2)
        {
          break;
        }

        v41 = v42[1];
        if (!v41)
        {
          goto LABEL_73;
        }
      }
    }

    return result;
  }

  v34 = a3 - v18 + 1;
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__erase_unique<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>((a1 + 32), *(v14 + 7), *(v14 + 8));
  v35 = v14[1];
  if (v35)
  {
    do
    {
      v36 = v35;
      v35 = *v35;
    }

    while (v35);
  }

  else
  {
    v55 = v14;
    do
    {
      v36 = v55[2];
      v16 = *v36 == v55;
      v55 = v36;
    }

    while (!v16);
  }

  if (*v7 == v14)
  {
    *v7 = v36;
  }

  v56 = *(a1 + 16);
  --*(a1 + 24);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v56, v14);
  operator delete(v14);
  result = std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(v7, v36, &v64, &v63, v18, v34);
  if (!*result)
  {
    operator new();
  }

  v57 = *(a1 + 40);
  if (!v57)
  {
LABEL_116:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v58 = v57;
      v59 = *(v57 + 8);
      if (v34 >= v59)
      {
        v60 = *(v58 + 7);
        if (v59 < v34 || v18 >= v60)
        {
          break;
        }
      }

      v57 = *v58;
      if (!*v58)
      {
        goto LABEL_116;
      }
    }

    if (v59 >= v34 && v60 >= v18)
    {
      return result;
    }

    v57 = v58[1];
    if (!v57)
    {
      goto LABEL_116;
    }
  }
}

void std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__erase_unique<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(uint64_t **a1, unsigned int a2, unsigned int a3)
{
  v5 = (a1 + 1);
  v4 = a1[1];
  if (v4)
  {
    v6 = v5;
    v7 = v4;
    do
    {
      while (1)
      {
        v8 = *(v7 + 8);
        if (v8 >= a3 && (*(v7 + 7) >= a2 || v8 > a3))
        {
          break;
        }

        v7 = v7[1];
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      v6 = v7;
      v7 = *v7;
    }

    while (v7);
LABEL_11:
    if (v6 != v5 && *(v6 + 28) <= __PAIR64__(a3, a2))
    {
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v6;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v6)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v4, v6);

      operator delete(v6);
    }
  }
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v9[*v9 != a2] = v3;
    v3[2] = v9;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_64:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_64;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_26:
    v7 = *(v12[2] + 8 * (*v12[2] == v12));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_58:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_26;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_68:
    v25 = v7;
    goto LABEL_69;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_69:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

uint64_t *std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalIndexComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::__find_equal<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int a5, unsigned int a6)
{
  v6 = a1 + 1;
  if (a1 + 1 == a2 || (v7 = *(a2 + 7), v7 > a5) || ((v8 = *(a2 + 8), v7 >= a5) ? (v9 = v8 > a6) : (v9 = 0), v9))
  {
    v14 = *a2;
    if (*a1 == a2)
    {
      v16 = a2;
    }

    else
    {
      if (v14)
      {
        v15 = *a2;
        do
        {
          v16 = v15;
          v15 = v15[1];
        }

        while (v15);
      }

      else
      {
        v17 = a2;
        do
        {
          v16 = v17[2];
          v18 = *v16 == v17;
          v17 = v16;
        }

        while (v18);
      }

      v19 = *(v16 + 7);
      if (v19 >= a5 && (v19 > a5 || *(v16 + 8) >= a6))
      {
        v21 = *v6;
        if (*v6)
        {
          do
          {
            while (1)
            {
              v22 = v21;
              v23 = *(v21 + 28);
              if (v23 <= a5)
              {
                v24 = *(v22 + 8);
                if (v23 < a5 || v24 <= a6)
                {
                  break;
                }
              }

              v21 = *v22;
              v6 = v22;
              if (!*v22)
              {
                goto LABEL_42;
              }
            }

            if (v23 >= a5 && v24 >= a6)
            {
              break;
            }

            v6 = v22 + 1;
            v21 = v22[1];
          }

          while (v21);
          goto LABEL_42;
        }

        goto LABEL_30;
      }
    }

    if (v14)
    {
      *a3 = v16;
      return v16 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  else if (v7 >= a5 && v8 >= a6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v28 = a2;
      do
      {
        v13 = v28[2];
        v18 = *v13 == v28;
        v28 = v13;
      }

      while (!v18);
    }

    if (v13 != v6)
    {
      v29 = *(v13 + 7);
      if (v29 <= a5 && (v29 < a5 || *(v13 + 8) <= a6))
      {
        v31 = *v6;
        if (*v6)
        {
          do
          {
            while (1)
            {
              v22 = v31;
              v32 = *(v31 + 28);
              if (v32 <= a5)
              {
                v33 = *(v22 + 8);
                if (v32 < a5 || v33 <= a6)
                {
                  break;
                }
              }

              v31 = *v22;
              v6 = v22;
              if (!*v22)
              {
                goto LABEL_42;
              }
            }

            if (v32 >= a5 && v33 >= a6)
            {
              break;
            }

            v6 = v22 + 1;
            v31 = v22[1];
          }

          while (v31);
          goto LABEL_42;
        }

LABEL_30:
        v22 = a1 + 1;
LABEL_42:
        *a3 = v22;
        return v6;
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }
}