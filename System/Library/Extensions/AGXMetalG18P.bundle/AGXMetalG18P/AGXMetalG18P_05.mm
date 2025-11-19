unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 2, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v14 + 32), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 12 * a2), a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 8 * a2 + 32), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 32), a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = *a3;
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v12 = *v7;
  v13 = v7[1];
  v11 = (v7 + a4);
  v14 = v12;
  v15 = *v11;
  v16 = v11[1];
  v17 = vdupq_lane_s32(*a3, 0);
  v18 = vsubq_s8(*a3, v17);
  v19 = vsubq_s8(v9, v17);
  v511 = *(a3 + 16);
  v20 = vsubq_s8(v511, v17);
  v21 = vsubq_s8(v10, v17);
  v22 = vsubq_s8(v12, v17);
  v23 = vsubq_s8(*v11, v17);
  v513 = v13;
  v24 = vsubq_s8(v13, v17);
  v25 = vsubq_s8(v16, v17);
  v26 = vqtbl1q_s8(vmaxq_s8(v18, v19), xmmword_29D2F0F70);
  v27 = vqtbl1q_s8(vminq_s8(v18, v19), xmmword_29D2F0F70);
  v28 = vpmaxq_s8(v26, v26);
  v29 = vpminq_s8(v27, v27);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vzip1q_s8(v30, v31);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v32)), vceqzq_s8(v32));
  v35 = vpmaxq_s8(v34, v34);
  v36 = vqtbl1q_s8(vmaxq_s8(v20, v21), xmmword_29D2F0F70);
  v37 = vqtbl1q_s8(vminq_s8(v20, v21), xmmword_29D2F0F70);
  v38 = vpmaxq_s8(v36, v36);
  v39 = vpminq_s8(v37, v37);
  v40 = vpmaxq_s8(v38, v38);
  v41 = vpminq_s8(v39, v39);
  v42 = vmaxq_s8(v30, v40);
  v43 = vminq_s8(v31, v41);
  v44 = vzip1q_s8(v40, v41);
  v45 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v44)), vceqzq_s8(v44));
  v46 = vpmaxq_s8(v45, v45);
  v47 = vqtbl1q_s8(vmaxq_s8(v22, v23), xmmword_29D2F0F70);
  v48 = vqtbl1q_s8(vminq_s8(v22, v23), xmmword_29D2F0F70);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vmaxq_s8(v42, v51);
  v54 = vminq_s8(v43, v52);
  v55 = vzip1q_s8(v51, v52);
  v56 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v55)), vceqzq_s8(v55));
  v57 = vpmaxq_s8(v56, v56);
  v58 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v59 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v60 = vpmaxq_s8(v58, v58);
  v61 = vpminq_s8(v59, v59);
  v62 = vpmaxq_s8(v60, v60);
  v63 = vpminq_s8(v61, v61);
  v64 = vmaxq_s8(v53, v62);
  v65 = vminq_s8(v54, v63);
  v66 = vzip1q_s8(v62, v63);
  v67 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v66)), vceqzq_s8(v66));
  v68 = vpmaxq_s8(v67, v67);
  v69 = vmaxq_s8(vmaxq_s8(v35, v46), vmaxq_s8(v57, v68));
  v70 = vclzq_s8(vsubq_s8(v64, v65));
  v71 = vsubq_s8(v33, v70);
  v72 = vminq_s8(v71, v69);
  v73 = vmaxvq_s8(v72);
  v75 = a5 < 2 || a6 < 2;
  if (v73)
  {
    v499 = v14;
    v500 = v15;
    v501 = v16;
    v76.i64[0] = -1;
    v76.i64[1] = -1;
    v77.i64[0] = 0x707070707070707;
    v77.i64[1] = 0x707070707070707;
    v78 = vcgtq_s8(v69, v71);
    v520 = vandq_s8(vsubq_s8(vshlq_s8(v76, vsubq_s8(v77, v70)), v65), v78);
    v79.i64[0] = 0x303030303030303;
    v79.i64[1] = 0x303030303030303;
    v80 = vmaxq_s8(vminq_s8(vsubq_s8(v72, v35), v79), 0);
    v81 = vmaxq_s8(vminq_s8(vsubq_s8(v72, v46), v79), 0);
    v509 = vmaxq_s8(vminq_s8(vsubq_s8(v72, v57), v79), 0);
    v514 = vmaxq_s8(vminq_s8(vsubq_s8(v72, v68), v79), 0);
    v82.i64[0] = 0x404040404040404;
    v82.i64[1] = 0x404040404040404;
    v83 = vorrq_s8(vbicq_s8(v82, vceqq_s8(vaddq_s8(v514, v509), vnegq_s8(vaddq_s8(v80, v81)))), vorrq_s8(vandq_s8(vceqzq_s8(v72), v79), vandq_s8(v78, v33)));
    v84 = vsubq_s8(v20, vqtbl1q_s8(v20, xmmword_29D2F1010));
    v85 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1010));
    v86 = vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010));
    v87 = vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1010));
    v507 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F1010));
    v504 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F1010));
    v88 = vqtbl1q_s8(vmaxq_s8(v507, v504), xmmword_29D2F0F70);
    v89 = vqtbl1q_s8(vminq_s8(v507, v504), xmmword_29D2F0F70);
    v90 = vpmaxq_s8(v88, v88);
    v91 = vpminq_s8(v89, v89);
    v92 = vpmaxq_s8(v90, v90);
    v93 = vpminq_s8(v91, v91);
    v516 = v20;
    v94 = vzip1q_s8(v92, v93);
    v522 = v23;
    v523 = v22;
    v95 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v94)), vceqzq_s8(v94));
    v96 = vpmaxq_s8(v95, v95);
    v502 = v84;
    v496 = vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1010));
    v497 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F1010));
    v97 = vqtbl1q_s8(vmaxq_s8(v84, v497), xmmword_29D2F0F70);
    v98 = vqtbl1q_s8(vminq_s8(v84, v497), xmmword_29D2F0F70);
    v99 = vpmaxq_s8(v97, v97);
    v100 = vpminq_s8(v98, v98);
    v101 = vpmaxq_s8(v99, v99);
    v102 = vpminq_s8(v100, v100);
    v103 = vmaxq_s8(v92, v101);
    v104 = vminq_s8(v93, v102);
    v105 = vzip1q_s8(v101, v102);
    v106 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v105)), vceqzq_s8(v105));
    v107 = v21;
    v108 = vpmaxq_s8(v106, v106);
    v495 = v85;
    v109 = vqtbl1q_s8(vmaxq_s8(v496, v85), xmmword_29D2F0F70);
    v110 = vqtbl1q_s8(vminq_s8(v496, v85), xmmword_29D2F0F70);
    v111 = vpmaxq_s8(v109, v109);
    v112 = vpminq_s8(v110, v110);
    v113 = vpmaxq_s8(v111, v111);
    v114 = vpminq_s8(v112, v112);
    v115 = vmaxq_s8(v103, v113);
    v116 = vminq_s8(v104, v114);
    v117 = vzip1q_s8(v113, v114);
    v118 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v117)), vceqzq_s8(v117));
    v518 = v24;
    v119 = vpmaxq_s8(v118, v118);
    v494 = v86;
    v120 = vqtbl1q_s8(vmaxq_s8(v86, v87), xmmword_29D2F0F70);
    v121 = vqtbl1q_s8(vminq_s8(v86, v87), xmmword_29D2F0F70);
    v122 = vpmaxq_s8(v120, v120);
    v123 = vpminq_s8(v121, v121);
    v124 = vpmaxq_s8(v122, v122);
    v125 = vpminq_s8(v123, v123);
    v126 = v25;
    v127 = vmaxq_s8(v115, v124);
    v128 = vminq_s8(v116, v125);
    v129 = vzip1q_s8(v124, v125);
    v130 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v129)), vceqzq_s8(v129));
    v131 = vpmaxq_s8(v130, v130);
    v132 = vmaxq_s8(vmaxq_s8(v96, v108), vmaxq_s8(v119, v131));
    v133 = vclzq_s8(vsubq_s8(v127, v128));
    v134 = vsubq_s8(v33, v133);
    v135 = vcgtq_s8(v132, v134);
    v136 = vminq_s8(v134, v132);
    v134.i64[0] = 0x1010101010101010;
    v134.i64[1] = 0x1010101010101010;
    v77.i64[0] = 0x1818181818181818;
    v77.i64[1] = 0x1818181818181818;
    v137 = vorrq_s8(vandq_s8(vceqzq_s8(v136), v79), vbslq_s8(v135, v77, v134));
    v138 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v96), v79), 0);
    v139 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v108), v79), 0);
    v140 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v119), v79), 0);
    v141 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v131), v79), 0);
    v142 = vsubq_s8(v136, v138);
    v143 = vsubq_s8(v136, v139);
    v144 = vsubq_s8(v136, v140);
    v145 = vsubq_s8(v136, v141);
    v82.i64[0] = 0x404040404040404;
    v82.i64[1] = 0x404040404040404;
    v146 = vorrq_s8(v137, vbicq_s8(v82, vceqq_s8(vaddq_s8(v141, v140), vnegq_s8(vaddq_s8(v138, v139)))));
    v147 = vmovl_u8(*v146.i8);
    v140.i64[0] = 0x8000800080008;
    v140.i64[1] = 0x8000800080008;
    v137.i64[0] = 0x2000200020002;
    v137.i64[1] = 0x2000200020002;
    v148 = vsubq_s8(v72, v80);
    v149 = vsubq_s8(v72, v81);
    v150 = v19;
    v151 = vsubq_s8(v72, v509);
    v152 = vsubq_s8(v72, v514);
    v153 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v151.i8, *v149.i8), *v152.i8), 3uLL), *v148.i8, 0x707070707070707), vbic_s8(*v72.i8, vcgt_u8(0x808080808080808, *v83.i8))), (*&vshll_n_u8(*v83.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v83.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v137), v140)), vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v144.i8, *v143.i8), *v145.i8), 3uLL), *v142.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v146.i8, 1uLL), v140)), vbicq_s8(vmovl_s8(*v136.i8), vceqzq_s16((*&v147 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v147 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v137), v140)))), 0);
    if (vaddlvq_s8(v153))
    {
      v154.i64[0] = 0x707070707070707;
      v154.i64[1] = 0x707070707070707;
      v155.i64[0] = -1;
      v155.i64[1] = -1;
      v156 = vandq_s8(vsubq_s8(vshlq_s8(v155, vsubq_s8(v154, v133)), v128), v135);
      v17 = vbslq_s8(v153, vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F1010)), v17);
      v506 = vbslq_s8(v153, v507, v18);
      v508 = vbslq_s8(v153, v504, v150);
      v157 = vbslq_s8(v153, v502, v516);
      v515 = vbslq_s8(v153, v497, v107);
      v523 = vbslq_s8(v153, v496, v523);
      v522 = vbslq_s8(v153, v495, v522);
      v158 = vbslq_s8(v153, v494, v518);
      v126 = vbslq_s8(v153, v87, v126);
      v510 = vbslq_s8(v153, v144, v151);
      v503 = vbslq_s8(v153, v145, v152);
      v505 = vbslq_s8(v153, v142, v148);
      v159 = vbslq_s8(v153, v156, v520);
      v160 = vbslq_s8(v153, v136, v72);
      v161 = vbslq_s8(v153, v146, v83);
      v162 = vbslq_s8(v153, v143, v149);
    }

    else
    {
      v160 = v72;
      v505 = v148;
      v506 = v18;
      v508 = v150;
      v510 = v151;
      v503 = v152;
      v515 = v107;
      v158 = v518;
      v159 = v520;
      v157 = v516;
      v162 = v149;
      v161 = v83;
    }

    v164 = v499;
    if (v75)
    {
      v165 = v522;
      v167 = v503;
      v166 = v505;
      v168 = v508;
      v169 = v510;
      v170 = v506;
    }

    else
    {
      v517 = v157;
      v498 = v126;
      v519 = v158;
      v521 = v159;
      v180 = vsubq_s8(v8, vqtbl2q_s8(*v8.i8, xmmword_29D2F0F80));
      v171 = vsubq_s8(v9, vqtbl2q_s8(*v8.i8, xmmword_29D2F1030));
      v525.val[0] = *(a3 + 16);
      v525.val[1] = *(a3 + a4 + 16);
      v525.val[1].i32[3] = HIDWORD(*(a3 + a4));
      v172 = vsubq_s8(v511, vqtbl2q_s8(v525, xmmword_29D2F0FA0));
      v173 = v500;
      v173.i32[3] = v525.val[1].i32[3];
      v174 = vqtbl2q_s8(*v164.i8, xmmword_29D2F0F80);
      v175 = vsubq_s8(v499, vqtbl2q_s8(*v164.i8, xmmword_29D2F1050));
      v524.val[0] = v513;
      v524.val[1] = v501;
      v524.val[1].i32[3] = v525.val[1].i32[3];
      v176 = vsubq_s8(v500, v174);
      v177 = vsubq_s8(v513, vqtbl2q_s8(v524, xmmword_29D2F1060));
      v178 = vsubq_s8(v501, vqtbl2q_s8(v524, xmmword_29D2F0F80));
      v179 = v171;
      v179.i32[3] = v180.i32[0];
      v180.i32[0] = v171.i32[3];
      v181 = vqtbl1q_s8(vmaxq_s8(v180, v179), xmmword_29D2F0F70);
      v524.val[0] = vqtbl1q_s8(vminq_s8(v180, v179), xmmword_29D2F0F70);
      v182 = vpmaxq_s8(v181, v181);
      v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
      v183 = vpmaxq_s8(v182, v182);
      v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
      v524.val[1] = vzip1q_s8(v183, v524.val[0]);
      v184.i64[0] = 0x808080808080808;
      v184.i64[1] = 0x808080808080808;
      v185 = v161;
      v524.val[1] = vbicq_s8(vsubq_s8(v184, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
      v186 = vpmaxq_s8(v524.val[1], v524.val[1]);
      v512 = vsubq_s8(v10, vqtbl2q_s8(v525, xmmword_29D2F1040));
      v524.val[1] = vqtbl1q_s8(vmaxq_s8(v172, v512), xmmword_29D2F0F70);
      v187 = vqtbl1q_s8(vminq_s8(v172, v512), xmmword_29D2F0F70);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v188 = vpminq_s8(v187, v187);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v189 = vpminq_s8(v188, v188);
      v190 = vmaxq_s8(v183, v524.val[1]);
      v524.val[0] = vminq_s8(v524.val[0], v189);
      v524.val[1] = vzip1q_s8(v524.val[1], v189);
      v524.val[1] = vbicq_s8(vsubq_s8(v184, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
      v191 = vpmaxq_s8(v524.val[1], v524.val[1]);
      v524.val[1] = vqtbl1q_s8(vmaxq_s8(v175, v176), xmmword_29D2F0F70);
      v192 = vqtbl1q_s8(vminq_s8(v175, v176), xmmword_29D2F0F70);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v193 = vpminq_s8(v192, v192);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v194 = vpminq_s8(v193, v193);
      v195 = vmaxq_s8(v190, v524.val[1]);
      v524.val[0] = vminq_s8(v524.val[0], v194);
      v524.val[1] = vzip1q_s8(v524.val[1], v194);
      v524.val[1] = vbicq_s8(vsubq_s8(v184, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
      v196 = vpmaxq_s8(v524.val[1], v524.val[1]);
      v524.val[1] = vqtbl1q_s8(vmaxq_s8(v177, v178), xmmword_29D2F0F70);
      v197 = vqtbl1q_s8(vminq_s8(v177, v178), xmmword_29D2F0F70);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v198 = vpminq_s8(v197, v197);
      v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v199 = vpminq_s8(v198, v198);
      v200 = vmaxq_s8(v195, v524.val[1]);
      v201 = vminq_s8(v524.val[0], v199);
      v524.val[1] = vzip1q_s8(v524.val[1], v199);
      v524.val[1] = vbicq_s8(vsubq_s8(v184, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
      v525.val[0] = vpmaxq_s8(v524.val[1], v524.val[1]);
      v202 = vmaxq_s8(vmaxq_s8(v186, v191), vmaxq_s8(v196, v525.val[0]));
      v203 = vclzq_s8(vsubq_s8(v200, v201));
      v204 = vsubq_s8(v184, v203);
      v205 = vcgtq_s8(v202, v204);
      v206 = vminq_s8(v204, v202);
      v184.i64[0] = 0x909090909090909;
      v184.i64[1] = 0x909090909090909;
      v207.i64[0] = 0x202020202020202;
      v207.i64[1] = 0x202020202020202;
      v208 = vorrq_s8(vandq_s8(vceqzq_s8(v206), v207), vsubq_s8(vandq_s8(v205, v184), vmvnq_s8(v205)));
      v184.i64[0] = 0x303030303030303;
      v184.i64[1] = 0x303030303030303;
      v209 = vmaxq_s8(vminq_s8(vsubq_s8(v206, v186), v184), 0);
      v210 = vmaxq_s8(vminq_s8(vsubq_s8(v206, v191), v184), 0);
      v211 = vmaxq_s8(vminq_s8(vsubq_s8(v206, v196), v184), 0);
      v525.val[0] = vmaxq_s8(vminq_s8(vsubq_s8(v206, v525.val[0]), v184), 0);
      v212 = vsubq_s8(v206, v209);
      v213 = vsubq_s8(v206, v210);
      v214 = vsubq_s8(v206, v211);
      v215 = vsubq_s8(v206, v525.val[0]);
      v216 = vceqq_s8(vaddq_s8(v525.val[0], v211), vnegq_s8(vaddq_s8(v209, v210)));
      v525.val[0].i64[0] = 0x404040404040404;
      v525.val[0].i64[1] = 0x404040404040404;
      v217 = vorrq_s8(v208, vbicq_s8(v525.val[0], v216));
      v218 = vmovl_s8(*v185.i8);
      v211.i64[0] = 0x8000800080008;
      v211.i64[1] = 0x8000800080008;
      v219 = vbicq_s8(vmovl_s8(*v160.i8), vceqzq_s16(vandq_s8(v218, v211)));
      v220.i64[0] = 0x3000300030003;
      v220.i64[1] = 0x3000300030003;
      v221 = vandq_s8(v218, v220);
      v220.i64[0] = 0x2000200020002;
      v220.i64[1] = 0x2000200020002;
      v222 = vaddq_s16(vaddq_s16(v219, vandq_s8(vshll_n_s8(*v185.i8, 1uLL), v211)), vandq_s8(vceqq_s16(v221, v220), v211));
      v167 = v503;
      v166 = v505;
      v168 = v508;
      v169 = v510;
      v223 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v222, *v505.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v510.i8, *v162.i8), *v503.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v214.i8, *v213.i8), *v215.i8), 3uLL), *v212.i8, 0x707070707070707), vand_s8(vadd_s8(*v217.i8, *v217.i8), 0x808080808080808)), vbic_s8(*v206.i8, vcgt_u8(0x808080808080808, *v217.i8))))), 0);
      if (vaddlvq_s8(v223))
      {
        v224.i64[0] = 0x707070707070707;
        v224.i64[1] = 0x707070707070707;
        v225 = vsubq_s8(v224, v203);
        v224.i64[0] = -1;
        v224.i64[1] = -1;
        v226 = vandq_s8(vsubq_s8(vshlq_s8(v224, v225), v201), v205);
        v17.i32[0] = vbslq_s8(v223, vextq_s8(v9, v9, 0xCuLL), v17).u32[0];
        v170 = vbslq_s8(v223, v180, v506);
        v168 = vbslq_s8(v223, v179, v508);
        v515 = vbslq_s8(v223, v512, v515);
        v523 = vbslq_s8(v223, v175, v523);
        v165 = vbslq_s8(v223, v176, v522);
        v158 = vbslq_s8(v223, v177, v519);
        v126 = vbslq_s8(v223, v178, v498);
        v166 = vbslq_s8(v223, v212, v505);
        v162 = vbslq_s8(v223, v213, v162);
        v169 = vbslq_s8(v223, v214, v510);
        v167 = vbslq_s8(v223, v215, v503);
        v157 = vbslq_s8(v223, v172, v517);
        v159 = vbslq_s8(v223, v226, v521);
        v160 = vbslq_s8(v223, v206, v160);
        v161 = vbslq_s8(v223, v217, v185);
      }

      else
      {
        v158 = v519;
        v159 = v521;
        v165 = v522;
        v126 = v498;
        v157 = v517;
        v170 = v506;
        v161 = v185;
      }
    }

    v227 = vmovl_s8(*v161.i8);
    v228.i64[0] = 0x8000800080008;
    v228.i64[1] = 0x8000800080008;
    v229 = vbicq_s8(vmovl_s8(*v160.i8), vceqzq_s16(vandq_s8(v227, v228)));
    v230.i64[0] = 0x3000300030003;
    v230.i64[1] = 0x3000300030003;
    v231 = vandq_s8(v227, v230);
    v230.i64[0] = 0x2000200020002;
    v230.i64[1] = 0x2000200020002;
    v232 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v169.i8, *v162.i8), *v167.i8), 3uLL), *v166.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v161.i8, 1uLL), v228)), v229), vandq_s8(vceqq_s16(v231, v230), v228));
    v233 = vpaddq_s16(v232, v232);
    v234 = vpaddq_s16(v233, v233).u64[0];
    if ((v234.i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
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

      *a2 = 0;
      v238 = vzip1_s8(*v160.i8, v234);
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
      v247 = *&vorr_s8(*v246.i8, *&vextq_s8(v246, v246, 8uLL)) | (32 * (v161.i8[1] & 0x1F)) | ((v161.i8[3] & 0x1F) << 15) | ((v161.i8[2] & 0x1F) << 10) | v161.i8[0] & 0x1F;
      v248 = v237 | (v247 << v236);
      if (v236 >= 0x20)
      {
        *v235 = v248;
        v248 = v247 >> (-8 * (a1 & 7u));
      }

      v249 = v17.u8[0] | (v17.u8[1] << 8) | (v17.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v17.u8[3] << 24);
      v250 = (v236 + 32) & 0x38;
      v251 = v248 | (v249 << v250);
      if (v250 >= 0x20)
      {
        *(v235 + (((v236 + 32) >> 3) & 8)) = v251;
        v251 = v249 >> -v250;
      }

      v252 = vsubq_s8(v160, v166);
      v253 = vsubq_s8(v160, v162);
      v254 = vsubq_s8(v160, v169);
      v255 = vsubq_s8(v160, v167);
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
      v262 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v161.i8), 0x4000400040004)), v255);
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
      v280 = (v278.i64[0] << v236) | v251;
      if (v279.i64[0] + v236 >= 0x40)
      {
        v235[1] = v280;
        v280 = v278.i64[0] >> (-8 * (a1 & 7u));
        if (!v236)
        {
          v280 = 0;
        }
      }

      v281 = vceqq_s8(v160, v166);
      v282 = v279.i64[0] + (v236 | 0x40);
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

      v284 = vandq_s8(v159, v281);
      v285 = v282 + v279.i64[1];
      v286.i64[0] = 0x808080808080808;
      v286.i64[1] = 0x808080808080808;
      v287.i64[0] = -1;
      v287.i64[1] = -1;
      v288 = vandq_s8(vextq_s8(vtstq_s8(v161, v286), 0, 0xCuLL), v160);
      v289.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v289.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v290 = vandq_s8(vshlq_u8(v287, vaddq_s8(v288, v289)), v159);
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
        *(v235 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vaddq_s8(v284, v170);
      v306 = v303.i64[0] + v285;
      v307 = v304 | (v302.i64[1] << v306);
      if ((v306 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v235 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
        v307 = v302.i64[1] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v307 = 0;
        }
      }

      v308 = v306 + v303.i64[1];
      v309 = vextq_s8(0, v166, 0xCuLL);
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
        *(v235 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v325.i64[0] >> -(v308 & 0x3F);
        if ((v308 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = vceqq_s8(v160, v162);
      v329 = vaddq_s8(v168, v284);
      v330 = v326.i64[0] + v308;
      v331 = v327 | (v325.i64[1] << v330);
      if ((v330 & 0x3F) + v326.i64[1] >= 0x40)
      {
        *(v235 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v325.i64[1] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vandq_s8(v159, v328);
      v333 = v330 + v326.i64[1];
      v334.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v334.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v335.i64[0] = -1;
      v335.i64[1] = -1;
      v336 = vandq_s8(vshlq_u8(v335, vaddq_s8(v166, v334)), v329);
      v337 = vmovl_u8(*v166.i8);
      v338 = vmovl_high_u8(v166);
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
        *(v235 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v349.i64[0] >> -(v333 & 0x3F);
        if ((v333 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = vaddq_s8(v157, v332);
      v353 = v350.i64[0] + v333;
      v354 = v351 | (v349.i64[1] << v353);
      if ((v353 & 0x3F) + v350.i64[1] >= 0x40)
      {
        *(v235 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
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
      v358 = vshlq_u8(v357, vaddq_s8(v162, v356));
      v359 = vandq_s8(v358, v352);
      v360 = vmovl_u8(*v359.i8);
      v361 = vmovl_high_u8(v359);
      v362 = vmovl_u8(*v162.i8);
      v363 = vmovl_high_u8(v162);
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
        *(v235 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
        if ((v355 & 0x3F) != 0)
        {
          v384 = v382.i64[0] >> -(v355 & 0x3F);
        }

        else
        {
          v384 = 0;
        }
      }

      v385 = vceqq_s8(v160, v169);
      v386 = vaddq_s8(v515, v332);
      v387 = v383.i64[0] + v355;
      v388 = v384 | (v382.i64[1] << v387);
      if ((v387 & 0x3F) + v383.i64[1] >= 0x40)
      {
        *(v235 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        v388 = v382.i64[1] >> -(v387 & 0x3F);
        if ((v387 & 0x3F) == 0)
        {
          v388 = 0;
        }
      }

      v389 = vandq_s8(v159, v385);
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
        *(v235 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v396.i64[0] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = vaddq_s8(v523, v389);
      v399 = v383.i64[0] + v390;
      v400 = (v383.i64[0] + v390) & 0x3F;
      v401 = v397 | (v396.i64[1] << v399);
      if ((v399 & 0x3F) + v383.i64[1] >= 0x40)
      {
        *(v235 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
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
      v405 = vshlq_u8(v404, vaddq_s8(v169, v403));
      v406 = vandq_s8(v405, v398);
      v407 = vmovl_u8(*v406.i8);
      v408 = vmovl_high_u8(v406);
      v409 = vmovl_u8(*v169.i8);
      v410 = vmovl_high_u8(v169);
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
        *(v235 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
        if ((v402 & 0x3F) != 0)
        {
          v431 = v429.i64[0] >> -(v402 & 0x3F);
        }

        else
        {
          v431 = 0;
        }
      }

      v432 = vceqq_s8(v160, v167);
      v433 = vaddq_s8(v165, v389);
      v434 = v430.i64[0] + v402;
      v435 = v431 | (v429.i64[1] << v434);
      if ((v434 & 0x3F) + v430.i64[1] >= 0x40)
      {
        *(v235 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v435;
        v435 = v429.i64[1] >> -(v434 & 0x3F);
        if ((v434 & 0x3F) == 0)
        {
          v435 = 0;
        }
      }

      v436 = vandq_s8(v159, v432);
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
        *(v235 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v444;
        v444 = v443.i64[0] >> -(v437 & 0x3F);
        if ((v437 & 0x3F) == 0)
        {
          v444 = 0;
        }
      }

      v445 = vaddq_s8(v158, v436);
      v446 = v430.i64[0] + v437;
      v447 = (v430.i64[0] + v437) & 0x3F;
      v448 = v444 | (v443.i64[1] << v446);
      if ((v446 & 0x3F) + v430.i64[1] >= 0x40)
      {
        *(v235 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
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
      v452 = vshlq_u8(v451, vaddq_s8(v167, v450));
      v453 = vandq_s8(v452, v445);
      v454 = vmovl_u8(*v453.i8);
      v455 = vmovl_high_u8(v453);
      v456 = vmovl_u8(*v167.i8);
      v457 = vmovl_high_u8(v167);
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
        *(v235 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
        if ((v449 & 0x3F) != 0)
        {
          v478 = v476.i64[0] >> -(v449 & 0x3F);
        }

        else
        {
          v478 = 0;
        }
      }

      v479 = vaddq_s8(v126, v436);
      v480 = v477.i64[0] + v449;
      v481 = v478 | (v476.i64[1] << v480);
      if ((v480 & 0x3F) + v477.i64[1] >= 0x40)
      {
        *(v235 + ((v480 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
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
        *(v235 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
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
        *(v235 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
        v492 = v488.i64[1] >> -v491;
        if (!v491)
        {
          v492 = 0;
        }
      }

      v493 = v490 + v477.i64[1];
      if ((v493 & 0x3F) != 0)
      {
        *(v235 + ((v493 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v492;
      }

      result = (v493 - v236 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v105 = *MEMORY[0x29EDCA608];
  DWORD1(v11) = 0;
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
    if (a5 > 3)
    {
      v20 = a5 & 0x7C;
      if (v20 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v22 = &v98 + 2 * (i & 0x7F);
          v23 = a3;
          v24 = a5;
          do
          {
            *&v11 = vld2q_f32(v23);
            v23 += 8;
            *(v22 - 1) = v11;
            *v22++ = v25;
            v24 -= 4;
          }

          while (v24);
          a3 += a4;
        }
      }

      else
      {
        v26 = 0;
        v27 = a5 - 4;
        v28 = a3;
        do
        {
          v29 = 32 * (v26 & 0x7F);
          v30 = (&v99 + v29);
          v31 = (&v98 + v29);
          v32 = v28;
          v33 = a5 & 0x7C;
          do
          {
            *&v11 = vld2q_f32(v32);
            v32 += 8;
            *(v31 - 1) = v11;
            *v31++ = v34;
            v33 -= 4;
          }

          while (v33);
          v35 = (a3 + v26 * a4 + 8 * v20);
          v36 = v27;
          do
          {
            v37 = *v35;
            v38 = v35[1];
            v35 += 2;
            *(v30 - 4) = v37;
            *v30++ = v38;
            --v36;
          }

          while (v36);
          ++v26;
          v28 = (v28 + a4);
        }

        while (v26 != a6);
      }
    }

    else
    {
      v12 = 0;
      v13 = (a3 + 12);
      do
      {
        v14 = v12 & 0xFE | 1;
        v15 = *(v13 - 2);
        *(&v97 + 4 * (v12 & 0xFE)) = *(v13 - 3);
        *(&v97 + 4 * v14) = v15;
        if (a5 != 1)
        {
          v16 = *v13;
          v17 = &v97 + (v12 & 0xFE);
          *(v17 + 1) = *(v13 - 1);
          v18 = &v97 + v14;
          *(v18 + 1) = v16;
          if (a5 != 2)
          {
            v19 = v13[2];
            *(v17 + 2) = v13[1];
            *(v18 + 2) = v19;
          }
        }

        v12 += 2;
        v13 = (v13 + a4);
      }

      while (2 * a6 != v12);
    }
  }

  v39 = 2 * (a5 & 0x7F);
  LODWORD(v11) = v97;
  v40 = vmovl_u8(*&v11).u64[0];
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
  if (v39 >= 4)
  {
    v48 = 4;
  }

  else
  {
    v48 = 2 * (a5 & 0x7F);
  }

  if (v39 >= 4)
  {
    v49 = v39 - 4;
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

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v89, a7, v48, v50);
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

  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v89, a7, v48, v62);
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
  if (a5 >= 4)
  {
    v73 = 4;
  }

  else
  {
    v73 = v49;
  }

  v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v89, a7, v73, v50);
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
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v89, a7, v73, v62);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

  v17 = (8 * (a3 & 7)) | 0x200;
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

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 512 >= 9 || v66 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(float *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v52, a5);
  }

  v48 = v52;
  v49 = v54;
  v50 = v53;
  v51 = v55;
  v40 = v56;
  v41 = v58;
  v44 = v57;
  v45 = v59;
  v10 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v52, a5);
  }

  v42 = v52;
  v43 = v54;
  v46 = v53;
  v47 = v55;
  v36 = v56;
  v37 = v58;
  v38 = v57;
  v39 = v59;
  v11 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v52, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v52, a5);
  }

  v32 = v52;
  v33 = v54;
  v34 = v53;
  v35 = v55;
  v28 = v56;
  v29 = v58;
  v30 = v57;
  v31 = v59;
  v12 = a3 + 48;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v52, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v52, a5);
  }

  v14 = vmovn_s32(v28);
  *v61.val[0].f32 = vuzp1_s8(v14, v14);
  v61.val[1].i32[0] = vuzp1_s8(vmovn_s32(v30), *v61.val[0].f32).u32[0];
  v15 = vuzp1_s8(vmovn_s32(v31), *v61.val[0].f32).u32[0];
  v62.val[0].i32[0] = vuzp1_s8(vmovn_s32(v32), *v61.val[0].f32).u32[0];
  v62.val[1].i32[0] = vuzp1_s8(vmovn_s32(v34), *v61.val[0].f32).u32[0];
  v63.val[0].i32[0] = vuzp1_s8(vmovn_s32(v40), *v61.val[0].f32).u32[0];
  v63.val[1].i32[0] = vuzp1_s8(vmovn_s32(v44), *v61.val[0].f32).u32[0];
  v64.val[0].i32[0] = vuzp1_s8(vmovn_s32(v48), *v61.val[0].f32).u32[0];
  v64.val[1].i32[0] = vuzp1_s8(vmovn_s32(v50), *v61.val[0].f32).u32[0];
  v16 = vuzp1_s8(vmovn_s32(v52), *v61.val[0].f32).u32[0];
  v17 = vuzp1_s8(vmovn_s32(v53), *v61.val[0].f32).u32[0];
  v18 = vuzp1_s8(vmovn_s32(v54), *v61.val[0].f32).u32[0];
  v19 = vuzp1_s8(vmovn_s32(v55), *v61.val[0].f32).u32[0];
  v20 = vuzp1_s8(vmovn_s32(v56), *v61.val[0].f32).u32[0];
  v64.val[0].i32[1] = vuzp1_s8(vmovn_s32(v49), *v61.val[0].f32).u32[0];
  v64.val[0].i32[2] = vuzp1_s8(vmovn_s32(v42), *v61.val[0].f32).u32[0];
  v64.val[0].i32[3] = vuzp1_s8(vmovn_s32(v43), *v61.val[0].f32).u32[0];
  v64.val[1].i32[1] = vuzp1_s8(vmovn_s32(v51), *v61.val[0].f32).u32[0];
  v21 = vuzp1_s8(vmovn_s32(v57), *v61.val[0].f32).u32[0];
  v64.val[1].i32[2] = vuzp1_s8(vmovn_s32(v46), *v61.val[0].f32).u32[0];
  v64.val[1].i32[3] = vuzp1_s8(vmovn_s32(v47), *v61.val[0].f32).u32[0];
  v23 = v58;
  v22 = v59;
  vst2q_f32(a1, v64);
  v24 = (a1 + a2);
  v63.val[0].i32[1] = vuzp1_s8(vmovn_s32(v41), *v61.val[0].f32).u32[0];
  v63.val[0].i32[2] = vuzp1_s8(vmovn_s32(v36), *v61.val[0].f32).u32[0];
  v63.val[0].i32[3] = vuzp1_s8(vmovn_s32(v37), *v61.val[0].f32).u32[0];
  v63.val[1].i32[1] = vuzp1_s8(vmovn_s32(v45), *v61.val[0].f32).u32[0];
  v63.val[1].i32[2] = vuzp1_s8(vmovn_s32(v38), *v61.val[0].f32).u32[0];
  v63.val[1].i32[3] = vuzp1_s8(vmovn_s32(v39), *v61.val[0].f32).u32[0];
  vst2q_f32(v24, v63);
  v25 = (v24 + a2);
  v62.val[0].i32[1] = vuzp1_s8(vmovn_s32(v33), *v61.val[0].f32).u32[0];
  v62.val[0].i64[1] = __PAIR64__(v18, v16);
  v62.val[1].i32[1] = vuzp1_s8(vmovn_s32(v35), *v61.val[0].f32).u32[0];
  v62.val[1].i64[1] = __PAIR64__(v19, v17);
  v26 = vuzp1_s8(vmovn_s32(v23), *v61.val[0].f32).u32[0];
  vst2q_f32(v25, v62);
  v27 = (v25 + a2);
  v62.val[0].i32[0] = vuzp1_s8(vmovn_s32(v22), *v61.val[0].f32).u32[0];
  v61.val[0].i32[1] = vuzp1_s8(vmovn_s32(v29), *v61.val[0].f32).u32[0];
  v61.val[0].i64[1] = __PAIR64__(v26, v20);
  v61.val[1].i32[1] = v15;
  v61.val[1].i64[1] = __PAIR64__(v62.val[0].u32[0], v21);
  vst2q_f32(v27, v61);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 64, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 96, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 96, a2, v33, v32, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s32(*a3, 0);
  v8 = vsubq_s8(*a3, v7);
  v9 = vsubq_s8(*(a3 + 16), v7);
  v490 = *(a3 + a4);
  v10 = vsubq_s8(v490, v7);
  v491 = *(a3 + a4 + 16);
  v11 = vsubq_s8(v491, v7);
  v492 = *(a3 + 32);
  v12 = vsubq_s8(v492, v7);
  v13 = vsubq_s8(*(a3 + 48), v7);
  v14 = vsubq_s8(*(a3 + a4 + 32), v7);
  v15 = vsubq_s8(*(a3 + a4 + 48), v7);
  v16 = vqtbl1q_s8(vmaxq_s8(v8, v9), xmmword_29D2F0F70);
  v17 = vqtbl1q_s8(vminq_s8(v8, v9), xmmword_29D2F0F70);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vpmaxq_s8(v18, v18);
  v21 = vpminq_s8(v19, v19);
  v22 = vzip1q_s8(v20, v21);
  v23.i64[0] = 0x808080808080808;
  v23.i64[1] = 0x808080808080808;
  v24 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v22)), vceqzq_s8(v22));
  v25 = vpmaxq_s8(v24, v24);
  v26 = vqtbl1q_s8(vmaxq_s8(v10, v11), xmmword_29D2F0F70);
  v27 = vqtbl1q_s8(vminq_s8(v10, v11), xmmword_29D2F0F70);
  v28 = vpmaxq_s8(v26, v26);
  v29 = vpminq_s8(v27, v27);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vmaxq_s8(v20, v30);
  v33 = vminq_s8(v21, v31);
  v34 = vzip1q_s8(v30, v31);
  v35 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v34)), vceqzq_s8(v34));
  v36 = vpmaxq_s8(v35, v35);
  v37 = vqtbl1q_s8(vmaxq_s8(v12, v13), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v12, v13), xmmword_29D2F0F70);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v32, v41);
  v44 = vminq_s8(v33, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vpmaxq_s8(v46, v46);
  v48 = vqtbl1q_s8(vmaxq_s8(v14, v15), xmmword_29D2F0F70);
  v49 = vqtbl1q_s8(vminq_s8(v14, v15), xmmword_29D2F0F70);
  v50 = vpmaxq_s8(v48, v48);
  v51 = vpminq_s8(v49, v49);
  v52 = vpmaxq_s8(v50, v50);
  v53 = vpminq_s8(v51, v51);
  v54 = vmaxq_s8(v43, v52);
  v55 = vminq_s8(v44, v53);
  v56 = vzip1q_s8(v52, v53);
  v57 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v56)), vceqzq_s8(v56));
  v58 = vpmaxq_s8(v57, v57);
  v59 = vmaxq_s8(vmaxq_s8(v25, v36), vmaxq_s8(v47, v58));
  v60 = vclzq_s8(vsubq_s8(v54, v55));
  v61 = vsubq_s8(v23, v60);
  v62 = vminq_s8(v61, v59);
  v63 = vmaxvq_s8(v62);
  v65 = a5 < 2 || a6 == 0;
  if (v63)
  {
    v481 = *(a3 + 16);
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v59, v61);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v60)), v55), v68);
    v70.i64[0] = 0x303030303030303;
    v70.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v25), v70), 0);
    v501 = v69;
    v503 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v36), v70), 0);
    v493 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v47), v70), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v58), v70), 0);
    v73.i64[0] = 0x404040404040404;
    v73.i64[1] = 0x404040404040404;
    v74 = vorrq_s8(vbicq_s8(v73, vceqq_s8(vaddq_s8(v72, v493), vnegq_s8(vaddq_s8(v71, v503)))), vorrq_s8(vandq_s8(vceqzq_s8(v62), v70), vandq_s8(v68, v23)));
    v75 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F1010));
    v76 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F1010));
    v77 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F1010));
    v78 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F1010));
    v486 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F1010));
    v488 = vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F1010));
    v79 = vqtbl1q_s8(vmaxq_s8(v488, v486), xmmword_29D2F0F70);
    v80 = vqtbl1q_s8(vminq_s8(v488, v486), xmmword_29D2F0F70);
    v81 = vpmaxq_s8(v79, v79);
    v82 = vpminq_s8(v80, v80);
    v83 = vpmaxq_s8(v81, v81);
    v84 = vpminq_s8(v82, v82);
    v85 = vzip1q_s8(v83, v84);
    v86 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v85)), vceqzq_s8(v85));
    v87 = vpmaxq_s8(v86, v86);
    v499 = v12;
    v482 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F1010));
    v484 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F1010));
    v88 = vqtbl1q_s8(vmaxq_s8(v484, v482), xmmword_29D2F0F70);
    v89 = vqtbl1q_s8(vminq_s8(v484, v482), xmmword_29D2F0F70);
    v90 = vpmaxq_s8(v88, v88);
    v91 = vpminq_s8(v89, v89);
    v92 = vpmaxq_s8(v90, v90);
    v93 = vpminq_s8(v91, v91);
    v94 = vmaxq_s8(v83, v92);
    v95 = vminq_s8(v84, v93);
    v96 = vzip1q_s8(v92, v93);
    v97 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v96)), vceqzq_s8(v96));
    v98 = vpmaxq_s8(v97, v97);
    v495 = v9;
    v99 = vqtbl1q_s8(vmaxq_s8(v75, v76), xmmword_29D2F0F70);
    v100 = vqtbl1q_s8(vminq_s8(v75, v76), xmmword_29D2F0F70);
    v101 = vpmaxq_s8(v99, v99);
    v102 = vpminq_s8(v100, v100);
    v103 = vpmaxq_s8(v101, v101);
    v104 = vpminq_s8(v102, v102);
    v105 = vmaxq_s8(v94, v103);
    v106 = vminq_s8(v95, v104);
    v107 = vzip1q_s8(v103, v104);
    v108 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v107)), vceqzq_s8(v107));
    v109 = v8;
    v110 = vpmaxq_s8(v108, v108);
    v111 = vqtbl1q_s8(vmaxq_s8(v77, v78), xmmword_29D2F0F70);
    v112 = vqtbl1q_s8(vminq_s8(v77, v78), xmmword_29D2F0F70);
    v113 = vpmaxq_s8(v111, v111);
    v114 = vpminq_s8(v112, v112);
    v115 = vpmaxq_s8(v113, v113);
    v116 = vpminq_s8(v114, v114);
    v117 = vmaxq_s8(v105, v115);
    v118 = vminq_s8(v106, v116);
    v119 = vzip1q_s8(v115, v116);
    v120 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v119)), vceqzq_s8(v119));
    v497 = v11;
    v121 = vpmaxq_s8(v120, v120);
    v122 = v10;
    v123 = vmaxq_s8(vmaxq_s8(v87, v98), vmaxq_s8(v110, v121));
    v124 = vclzq_s8(vsubq_s8(v117, v118));
    v125 = vsubq_s8(v23, v124);
    v126 = vcgtq_s8(v123, v125);
    v127 = vminq_s8(v125, v123);
    v117.i64[0] = 0x1010101010101010;
    v117.i64[1] = 0x1010101010101010;
    v123.i64[0] = 0x1818181818181818;
    v123.i64[1] = 0x1818181818181818;
    v128 = vorrq_s8(vandq_s8(vceqzq_s8(v127), v70), vbslq_s8(v126, v123, v117));
    v129 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v87), v70), 0);
    v130 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v98), v70), 0);
    v131 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v110), v70), 0);
    v132 = vmaxq_s8(vminq_s8(vsubq_s8(v127, v121), v70), 0);
    v133 = vsubq_s8(v127, v129);
    v134 = vsubq_s8(v127, v130);
    v135 = vsubq_s8(v127, v131);
    v136 = vsubq_s8(v127, v132);
    v73.i64[0] = 0x404040404040404;
    v73.i64[1] = 0x404040404040404;
    v137 = vorrq_s8(v128, vbicq_s8(v73, vceqq_s8(vaddq_s8(v132, v131), vnegq_s8(vaddq_s8(v129, v130)))));
    v138 = vmovl_u8(*v137.i8);
    v128.i64[0] = 0x8000800080008;
    v128.i64[1] = 0x8000800080008;
    v139 = v14;
    v132.i64[0] = 0x2000200020002;
    v132.i64[1] = 0x2000200020002;
    v140 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v135.i8, *v134.i8), *v136.i8), 3uLL), *v133.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v137.i8, 1uLL), v128)), vbicq_s8(vmovl_s8(*v127.i8), vceqzq_s16((*&v138 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v138 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v132), v128));
    v141 = vsubq_s8(v62, v71);
    v142 = vsubq_s8(v62, v503);
    v143 = vsubq_s8(v62, v493);
    v144 = vsubq_s8(v62, v72);
    v145 = vandq_s8(vceqq_s16((*&vmovl_u8(*v74.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v132), v128);
    v504 = v144;
    v128.i8[1] = 8;
    v128.i8[3] = 8;
    v128.i8[5] = 8;
    v128.i8[7] = 8;
    v146 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v142.i8), *v144.i8), 3uLL), *v141.i8, 0x707070707070707), vbic_s8(*v62.i8, vcgt_u8(*v128.i8, *v74.i8))), (*&vshll_n_u8(*v74.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v145), v140)), 0);
    if (vaddlvq_s8(v146))
    {
      v147.i64[0] = 0x707070707070707;
      v147.i64[1] = 0x707070707070707;
      v148.i64[0] = -1;
      v148.i64[1] = -1;
      v149 = vandq_s8(vsubq_s8(vshlq_s8(v148, vsubq_s8(v147, v124)), v118), v126);
      v7 = vbslq_s8(v146, vsubq_s8(v7, vqtbl1q_s8(v7, xmmword_29D2F1010)), v7);
      v489 = vbslq_s8(v146, v488, v109);
      v150 = vbslq_s8(v146, v486, v495);
      v122 = vbslq_s8(v146, v484, v122);
      v151 = vbslq_s8(v146, v482, v497);
      v152 = vbslq_s8(v146, v75, v499);
      v13 = vbslq_s8(v146, v76, v13);
      v153 = vbslq_s8(v146, v77, v139);
      v494 = vbslq_s8(v146, v78, v15);
      v487 = vbslq_s8(v146, v133, v141);
      v154 = vbslq_s8(v146, v134, v142);
      v143 = vbslq_s8(v146, v135, v143);
      v504 = vbslq_s8(v146, v136, v144);
      v155 = vbslq_s8(v146, v149, v501);
      v62 = vbslq_s8(v146, v127, v62);
      v74 = vbslq_s8(v146, v137, v74);
      v156 = v150;
    }

    else
    {
      v487 = v141;
      v489 = v109;
      v494 = v15;
      v153 = v139;
      v152 = v499;
      v155 = v501;
      v156 = v495;
      v151 = v497;
      v154 = v142;
    }

    v158 = *(a3 + a4 + 32);
    if (v65)
    {
      v159 = v487;
      v160 = v489;
    }

    else
    {
      v483 = v13;
      v496 = v156;
      v485 = v153;
      v480 = v122;
      v498 = v151;
      v500 = v152;
      v502 = v155;
      v506 = *a3;
      v170 = vsubq_s8(*a3, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
      v161 = vsubq_s8(v481, vqtbl2q_s8(*a3, xmmword_29D2F1030));
      v505 = *(a3 + a4);
      v505.val[1].i32[3] = v506.val[1].i32[3];
      v162 = vsubq_s8(v490, vqtbl2q_s8(v505, xmmword_29D2F0FA0));
      v163 = vsubq_s8(v491, vqtbl2q_s8(v505, xmmword_29D2F1040));
      v507 = *(a3 + 32);
      v507.val[1].i32[3] = v506.val[1].i32[3];
      v164 = vsubq_s8(v492, vqtbl2q_s8(v507, xmmword_29D2F1050));
      v165 = *(a3 + a4 + 48);
      v165.i32[3] = v506.val[1].i32[3];
      v166 = vsubq_s8(*(a3 + 48), vqtbl2q_s8(v507, xmmword_29D2F0F80));
      v167 = vsubq_s8(*(a3 + a4 + 32), vqtbl2q_s8(*&v158, xmmword_29D2F1060));
      v168 = vsubq_s8(*(a3 + a4 + 48), vqtbl2q_s8(*&v158, xmmword_29D2F0F80));
      v169 = v161;
      v169.i32[3] = v170.i32[0];
      v170.i32[0] = v161.i32[3];
      v171 = vqtbl1q_s8(vmaxq_s8(v170, v169), xmmword_29D2F0F70);
      v172 = vqtbl1q_s8(vminq_s8(v170, v169), xmmword_29D2F0F70);
      v173 = vpmaxq_s8(v171, v171);
      v174 = vpminq_s8(v172, v172);
      v175 = vpmaxq_s8(v173, v173);
      v176 = vpminq_s8(v174, v174);
      v507.val[0] = vzip1q_s8(v175, v176);
      v165.i64[0] = 0x808080808080808;
      v165.i64[1] = 0x808080808080808;
      v507.val[0] = vbicq_s8(vsubq_s8(v165, vclsq_s8(v507.val[0])), vceqzq_s8(v507.val[0]));
      v177 = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[0] = vqtbl1q_s8(vmaxq_s8(v162, v163), xmmword_29D2F0F70);
      v507.val[1] = vqtbl1q_s8(vminq_s8(v162, v163), xmmword_29D2F0F70);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v178 = vmaxq_s8(v175, v507.val[0]);
      v179 = vminq_s8(v176, v507.val[1]);
      v507.val[0] = vzip1q_s8(v507.val[0], v507.val[1]);
      v507.val[0] = vbicq_s8(vsubq_s8(v165, vclsq_s8(v507.val[0])), vceqzq_s8(v507.val[0]));
      v180 = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[0] = vqtbl1q_s8(vmaxq_s8(v164, v166), xmmword_29D2F0F70);
      v507.val[1] = vqtbl1q_s8(vminq_s8(v164, v166), xmmword_29D2F0F70);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v181 = vmaxq_s8(v178, v507.val[0]);
      v182 = vminq_s8(v179, v507.val[1]);
      v507.val[0] = vzip1q_s8(v507.val[0], v507.val[1]);
      v507.val[0] = vbicq_s8(vsubq_s8(v165, vclsq_s8(v507.val[0])), vceqzq_s8(v507.val[0]));
      v183 = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[0] = vqtbl1q_s8(vmaxq_s8(v167, v168), xmmword_29D2F0F70);
      v507.val[1] = vqtbl1q_s8(vminq_s8(v167, v168), xmmword_29D2F0F70);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v507.val[0] = vpmaxq_s8(v507.val[0], v507.val[0]);
      v507.val[1] = vpminq_s8(v507.val[1], v507.val[1]);
      v184 = vmaxq_s8(v181, v507.val[0]);
      v185 = vminq_s8(v182, v507.val[1]);
      v507.val[0] = vzip1q_s8(v507.val[0], v507.val[1]);
      v507.val[0] = vbicq_s8(vsubq_s8(v165, vclsq_s8(v507.val[0])), vceqzq_s8(v507.val[0]));
      v186 = vpmaxq_s8(v507.val[0], v507.val[0]);
      v187 = vmaxq_s8(vmaxq_s8(v177, v180), vmaxq_s8(v183, v186));
      v188 = vclzq_s8(vsubq_s8(v184, v185));
      v189 = vsubq_s8(v165, v188);
      v190 = vcgtq_s8(v187, v189);
      v191 = vminq_s8(v189, v187);
      v165.i64[0] = 0x909090909090909;
      v165.i64[1] = 0x909090909090909;
      v192.i64[0] = 0x202020202020202;
      v192.i64[1] = 0x202020202020202;
      v193 = vorrq_s8(vandq_s8(vceqzq_s8(v191), v192), vsubq_s8(vandq_s8(v190, v165), vmvnq_s8(v190)));
      v165.i64[0] = 0x303030303030303;
      v165.i64[1] = 0x303030303030303;
      v194 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v177), v165), 0);
      v195 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v180), v165), 0);
      v196 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v183), v165), 0);
      v197 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v186), v165), 0);
      v198 = vsubq_s8(v191, v194);
      v199 = vsubq_s8(v191, v195);
      v200 = vsubq_s8(v191, v196);
      v201 = vsubq_s8(v191, v197);
      v202 = vceqq_s8(vaddq_s8(v197, v196), vnegq_s8(vaddq_s8(v194, v195)));
      v196.i64[0] = 0x404040404040404;
      v196.i64[1] = 0x404040404040404;
      v203 = vorrq_s8(v193, vbicq_s8(v196, v202));
      v204.i64[0] = 0x3000300030003;
      v204.i64[1] = 0x3000300030003;
      v205 = vmovl_s8(*v74.i8);
      v197.i64[0] = 0x8000800080008;
      v197.i64[1] = 0x8000800080008;
      v206 = vbicq_s8(vmovl_s8(*v62.i8), vceqzq_s16(vandq_s8(v205, v197)));
      v207 = vandq_s8(v205, v204);
      v204.i64[0] = 0x2000200020002;
      v204.i64[1] = 0x2000200020002;
      v208 = vandq_s8(vceqq_s16(v207, v204), v197);
      v159 = v487;
      v209 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v206, vandq_s8(vshll_n_s8(*v74.i8, 1uLL), v197)), v208), *v487.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v154.i8), *v504.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v200.i8, *v199.i8), *v201.i8), 3uLL), *v198.i8, 0x707070707070707), vand_s8(vadd_s8(*v203.i8, *v203.i8), 0x808080808080808)), vbic_s8(*v191.i8, vcgt_u8(0x808080808080808, *v203.i8))))), 0);
      if (vaddlvq_s8(v209))
      {
        v210.i64[0] = 0x707070707070707;
        v210.i64[1] = 0x707070707070707;
        v211 = vsubq_s8(v210, v188);
        v210.i64[0] = -1;
        v210.i64[1] = -1;
        v212 = vandq_s8(vsubq_s8(vshlq_s8(v210, v211), v185), v190);
        v7.i32[0] = vbslq_s8(v209, vextq_s8(v481, v481, 0xCuLL), v7).u32[0];
        v160 = vbslq_s8(v209, v170, v489);
        v156 = vbslq_s8(v209, v169, v496);
        v122 = vbslq_s8(v209, v162, v480);
        v151 = vbslq_s8(v209, v163, v498);
        v152 = vbslq_s8(v209, v164, v500);
        v13 = vbslq_s8(v209, v166, v483);
        v153 = vbslq_s8(v209, v167, v485);
        v494 = vbslq_s8(v209, v168, v494);
        v159 = vbslq_s8(v209, v198, v487);
        v154 = vbslq_s8(v209, v199, v154);
        v504 = vbslq_s8(v209, v201, v504);
        v155 = vbslq_s8(v209, v212, v502);
        v62 = vbslq_s8(v209, v191, v62);
        v74 = vbslq_s8(v209, v203, v74);
        v143 = vbslq_s8(v209, v200, v143);
      }

      else
      {
        v152 = v500;
        v155 = v502;
        v156 = v496;
        v151 = v498;
        v122 = v480;
        v13 = v483;
        v153 = v485;
        v160 = v489;
      }
    }

    v213 = vmovl_s8(*v74.i8);
    v214.i64[0] = 0x8000800080008;
    v214.i64[1] = 0x8000800080008;
    v215 = vbicq_s8(vmovl_s8(*v62.i8), vceqzq_s16(vandq_s8(v213, v214)));
    v216.i64[0] = 0x3000300030003;
    v216.i64[1] = 0x3000300030003;
    v217 = vandq_s8(v213, v216);
    v216.i64[0] = 0x2000200020002;
    v216.i64[1] = 0x2000200020002;
    v218 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v143.i8, *v154.i8), *v504.i8), 3uLL), *v159.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v74.i8, 1uLL), v214)), v215), vandq_s8(vceqq_s16(v217, v216), v214));
    v219 = vpaddq_s16(v218, v218);
    v220 = vpaddq_s16(v219, v219).u64[0];
    if ((v220.i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v221 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v222 = 8 * (a1 & 7);
      if (v222)
      {
        v223 = *v221 & ~(-1 << v222);
      }

      else
      {
        v223 = 0;
      }

      *a2 = 0;
      v224 = vzip1_s8(*v62.i8, v220);
      v225 = vadd_s16(v224, 0xFF00FF00FF00FFLL);
      v226 = vmovl_u16(vceqz_s16((*&v224 & 0xFF00FF00FF00FFLL)));
      v227.i64[0] = v226.u32[0];
      v227.i64[1] = v226.u32[1];
      v228 = vshrq_n_s64(vshlq_n_s64(v227, 0x38uLL), 0x38uLL);
      v227.i64[0] = v226.u32[2];
      v227.i64[1] = v226.u32[3];
      v229 = vshrq_n_s64(vshlq_n_s64(v227, 0x38uLL), 0x38uLL);
      v230 = vshlq_u32(vmovl_u16(vand_s8(v225, 0x7000700070007)), xmmword_29D2F1070);
      v227.i64[0] = v230.u32[0];
      v227.i64[1] = v230.u32[1];
      v231 = v227;
      v227.i64[0] = v230.u32[2];
      v227.i64[1] = v230.u32[3];
      v232 = vorrq_s8(vbicq_s8(v231, v228), vbicq_s8(v227, v229));
      v233 = *&vorr_s8(*v232.i8, *&vextq_s8(v232, v232, 8uLL)) | (32 * (v74.i8[1] & 0x1F)) | ((v74.i8[3] & 0x1F) << 15) | ((v74.i8[2] & 0x1F) << 10) | v74.i8[0] & 0x1F;
      v234 = v223 | (v233 << v222);
      if (v222 >= 0x20)
      {
        *v221 = v234;
        v234 = v233 >> (-8 * (a1 & 7u));
      }

      v235 = v7.u8[0] | (v7.u8[1] << 8) | (v7.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v7.u8[3] << 24);
      v236 = (v222 + 32) & 0x38;
      v237 = v234 | (v235 << v236);
      if (v236 >= 0x20)
      {
        *(v221 + (((v222 + 32) >> 3) & 8)) = v237;
        v237 = v235 >> -v236;
      }

      v238 = vsubq_s8(v62, v159);
      v239 = vsubq_s8(v62, v154);
      v240 = vsubq_s8(v62, v143);
      v241 = vsubq_s8(v62, v504);
      v242 = vtrn1q_s8(v238, v239);
      v243 = vtrn2q_s8(v238, v239);
      v244 = vtrn1q_s8(v240, v241);
      v245 = vtrn2q_s8(v240, v241);
      v246 = vzip1q_s16(v243, v245);
      v247 = vtrn2q_s16(v243, v245);
      v245.i64[0] = vzip1q_s32(vzip1q_s16(v242, v244), v246).u64[0];
      v247.i64[0] = vzip1q_s32(vtrn2q_s16(v242, v244), v247).u64[0];
      v241.i64[0] = 0x202020202020202;
      v241.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v74.i8), 0x4000400040004)), v241);
      v241.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v241.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v242.i64[0] = -1;
      v242.i64[1] = -1;
      v249 = vshlq_u8(v242, vorrq_s8(v248, v241));
      v250 = vmovl_u8(vand_s8(*v249.i8, *v245.i8));
      v251 = vmovl_u8(vand_s8(*&vextq_s8(v249, v249, 8uLL), *v247.i8));
      v252 = vmovl_u8(*v248.i8);
      v253 = vmovl_high_u8(v248);
      v254 = vpaddq_s16(vshlq_u16(v250, vtrn1q_s16(0, v252)), vshlq_u16(v251, vtrn1q_s16(0, v253)));
      v255 = vpaddq_s16(v252, v253);
      v256 = vmovl_u16(*v255.i8);
      v257 = vmovl_high_u16(v255);
      v258 = vpaddq_s32(vshlq_u32(vmovl_u16(*v254.i8), vtrn1q_s32(0, v256)), vshlq_u32(vmovl_high_u16(v254), vtrn1q_s32(0, v257)));
      v259 = vpaddq_s32(v256, v257);
      v260.i64[0] = v258.u32[0];
      v260.i64[1] = v258.u32[1];
      v261 = v260;
      v260.i64[0] = v258.u32[2];
      v260.i64[1] = v258.u32[3];
      v262 = v260;
      v260.i64[0] = v259.u32[0];
      v260.i64[1] = v259.u32[1];
      v263 = v260;
      v260.i64[0] = v259.u32[2];
      v260.i64[1] = v259.u32[3];
      v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
      v265 = vpaddq_s64(v263, v260);
      v266 = (v264.i64[0] << v222) | v237;
      if (v265.i64[0] + v222 >= 0x40)
      {
        v221[1] = v266;
        v266 = v264.i64[0] >> (-8 * (a1 & 7u));
        if (!v222)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s8(v62, v159);
      v268 = v265.i64[0] + (v222 | 0x40);
      v269 = v266 | (v264.i64[1] << v268);
      if ((v268 & 0x3F) + v265.i64[1] >= 0x40)
      {
        *(v221 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v269;
        v269 = v264.i64[1] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v269 = 0;
        }
      }

      v270 = vandq_s8(v155, v267);
      v271 = v268 + v265.i64[1];
      v272.i64[0] = 0x808080808080808;
      v272.i64[1] = 0x808080808080808;
      v273.i64[0] = -1;
      v273.i64[1] = -1;
      v274 = vandq_s8(vextq_s8(vtstq_s8(v74, v272), 0, 0xCuLL), v62);
      v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v276 = vandq_s8(vshlq_u8(v273, vaddq_s8(v274, v275)), v155);
      v277 = vmovl_u8(*v274.i8);
      v278 = vpaddq_s16(vshlq_u16(vmovl_u8(*v276.i8), vtrn1q_s16(0, v277)), vmovl_high_u8(v276));
      v279 = vpaddq_s16(v277, vmovl_high_u8(v274));
      v280 = vmovl_u16(*v279.i8);
      v281 = vmovl_high_u16(v279);
      v282 = vpaddq_s32(vshlq_u32(vmovl_u16(*v278.i8), vtrn1q_s32(0, v280)), vshlq_u32(vmovl_high_u16(v278), vtrn1q_s32(0, v281)));
      v283 = vpaddq_s32(v280, v281);
      v284.i64[0] = v282.u32[0];
      v284.i64[1] = v282.u32[1];
      v285 = v284;
      v284.i64[0] = v282.u32[2];
      v284.i64[1] = v282.u32[3];
      v286 = v284;
      v284.i64[0] = v283.u32[0];
      v284.i64[1] = v283.u32[1];
      v287 = v284;
      v284.i64[0] = v283.u32[2];
      v284.i64[1] = v283.u32[3];
      v288 = vpaddq_s64(vshlq_u64(v285, vzip1q_s64(0, v287)), vshlq_u64(v286, vzip1q_s64(0, v284)));
      v289 = vpaddq_s64(v287, v284);
      v290 = (v288.i64[0] << v271) | v269;
      if (v289.i64[0] + (v271 & 0x3F) >= 0x40)
      {
        *(v221 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
        v290 = v288.i64[0] >> -(v271 & 0x3F);
        if ((v271 & 0x3F) == 0)
        {
          v290 = 0;
        }
      }

      v291 = vaddq_s8(v270, v160);
      v292 = v289.i64[0] + v271;
      v293 = v290 | (v288.i64[1] << v292);
      if ((v292 & 0x3F) + v289.i64[1] >= 0x40)
      {
        *(v221 + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
        v293 = v288.i64[1] >> -(v292 & 0x3F);
        if ((v292 & 0x3F) == 0)
        {
          v293 = 0;
        }
      }

      v294 = v292 + v289.i64[1];
      v295 = vextq_s8(0, v159, 0xCuLL);
      v296.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v296.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v297.i64[0] = -1;
      v297.i64[1] = -1;
      v298 = vandq_s8(vshlq_u8(v297, vaddq_s8(v295, v296)), v291);
      v299 = vmovl_u8(*v295.i8);
      v300 = vmovl_high_u8(v295);
      v301 = vpaddq_s16(vshlq_u16(vmovl_u8(*v298.i8), vtrn1q_s16(0, v299)), vshlq_u16(vmovl_high_u8(v298), vtrn1q_s16(0, v300)));
      v302 = vpaddq_s16(v299, v300);
      v303 = vmovl_u16(*v302.i8);
      v304 = vmovl_high_u16(v302);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v301.i8), vtrn1q_s32(0, v303)), vshlq_u32(vmovl_high_u16(v301), vtrn1q_s32(0, v304)));
      v306 = vpaddq_s32(v303, v304);
      v307.i64[0] = v305.u32[0];
      v307.i64[1] = v305.u32[1];
      v308 = v307;
      v307.i64[0] = v305.u32[2];
      v307.i64[1] = v305.u32[3];
      v309 = v307;
      v307.i64[0] = v306.u32[0];
      v307.i64[1] = v306.u32[1];
      v310 = v307;
      v307.i64[0] = v306.u32[2];
      v307.i64[1] = v306.u32[3];
      v311 = vpaddq_s64(vshlq_u64(v308, vzip1q_s64(0, v310)), vshlq_u64(v309, vzip1q_s64(0, v307)));
      v312 = vpaddq_s64(v310, v307);
      v313 = (v311.i64[0] << v294) | v293;
      if (v312.i64[0] + (v294 & 0x3F) >= 0x40)
      {
        *(v221 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
        v313 = v311.i64[0] >> -(v294 & 0x3F);
        if ((v294 & 0x3F) == 0)
        {
          v313 = 0;
        }
      }

      v314 = vceqq_s8(v62, v154);
      v315 = vaddq_s8(v156, v270);
      v316 = v312.i64[0] + v294;
      v317 = v313 | (v311.i64[1] << v316);
      if ((v316 & 0x3F) + v312.i64[1] >= 0x40)
      {
        *(v221 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v311.i64[1] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = vandq_s8(v155, v314);
      v319 = v316 + v312.i64[1];
      v320.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v320.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v321.i64[0] = -1;
      v321.i64[1] = -1;
      v322 = vandq_s8(vshlq_u8(v321, vaddq_s8(v159, v320)), v315);
      v323 = vmovl_u8(*v159.i8);
      v324 = vmovl_high_u8(v159);
      v325 = vpaddq_s16(vshlq_u16(vmovl_u8(*v322.i8), vtrn1q_s16(0, v323)), vshlq_u16(vmovl_high_u8(v322), vtrn1q_s16(0, v324)));
      v326 = vpaddq_s16(v323, v324);
      v327 = vmovl_u16(*v326.i8);
      v328 = vmovl_high_u16(v326);
      v329 = vpaddq_s32(vshlq_u32(vmovl_u16(*v325.i8), vtrn1q_s32(0, v327)), vshlq_u32(vmovl_high_u16(v325), vtrn1q_s32(0, v328)));
      v330 = vpaddq_s32(v327, v328);
      v331.i64[0] = v329.u32[0];
      v331.i64[1] = v329.u32[1];
      v332 = v331;
      v331.i64[0] = v329.u32[2];
      v331.i64[1] = v329.u32[3];
      v333 = v331;
      v331.i64[0] = v330.u32[0];
      v331.i64[1] = v330.u32[1];
      v334 = v331;
      v331.i64[0] = v330.u32[2];
      v331.i64[1] = v330.u32[3];
      v335 = vpaddq_s64(vshlq_u64(v332, vzip1q_s64(0, v334)), vshlq_u64(v333, vzip1q_s64(0, v331)));
      v336 = vpaddq_s64(v334, v331);
      v337 = (v335.i64[0] << v319) | v317;
      if (v336.i64[0] + (v319 & 0x3F) >= 0x40)
      {
        *(v221 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v335.i64[0] >> -(v319 & 0x3F);
        if ((v319 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = vaddq_s8(v122, v318);
      v339 = v336.i64[0] + v319;
      v340 = v337 | (v335.i64[1] << v339);
      if ((v339 & 0x3F) + v336.i64[1] >= 0x40)
      {
        *(v221 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v335.i64[1] >> -(v339 & 0x3F);
        if ((v339 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = v339 + v336.i64[1];
      v342.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v342.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v343.i64[0] = -1;
      v343.i64[1] = -1;
      v344 = vshlq_u8(v343, vaddq_s8(v154, v342));
      v345 = vandq_s8(v344, v338);
      v346 = vmovl_u8(*v345.i8);
      v347 = vmovl_high_u8(v345);
      v348 = vmovl_u8(*v154.i8);
      v349 = vmovl_high_u8(v154);
      v350 = vtrn1q_s16(0, v348);
      v351 = vtrn1q_s16(0, v349);
      v352 = vpaddq_s16(vshlq_u16(v346, v350), vshlq_u16(v347, v351));
      v353 = vpaddq_s16(v348, v349);
      v354 = vmovl_u16(*v352.i8);
      v355 = vmovl_high_u16(v352);
      v356 = vmovl_u16(*v353.i8);
      v357 = vmovl_high_u16(v353);
      v358 = vtrn1q_s32(0, v356);
      v359 = vtrn1q_s32(0, v357);
      v360 = vpaddq_s32(vshlq_u32(v354, v358), vshlq_u32(v355, v359));
      v361 = vpaddq_s32(v356, v357);
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
      v366 = vzip1q_s64(0, v365);
      v367 = vzip1q_s64(0, v362);
      v368 = vpaddq_s64(vshlq_u64(v363, v366), vshlq_u64(v364, v367));
      v369 = vpaddq_s64(v365, v362);
      v370 = (v368.i64[0] << v341) | v340;
      if (v369.i64[0] + (v341 & 0x3F) >= 0x40)
      {
        *(v221 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        if ((v341 & 0x3F) != 0)
        {
          v370 = v368.i64[0] >> -(v341 & 0x3F);
        }

        else
        {
          v370 = 0;
        }
      }

      v371 = vceqq_s8(v62, v143);
      v372 = vaddq_s8(v151, v318);
      v373 = v369.i64[0] + v341;
      v374 = v370 | (v368.i64[1] << v373);
      if ((v373 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v221 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
        v374 = v368.i64[1] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v374 = 0;
        }
      }

      v375 = vandq_s8(v155, v371);
      v376 = v373 + v369.i64[1];
      v377 = vandq_s8(v344, v372);
      v378 = vpaddq_s16(vshlq_u16(vmovl_u8(*v377.i8), v350), vshlq_u16(vmovl_high_u8(v377), v351));
      v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), v358), vshlq_u32(vmovl_high_u16(v378), v359));
      v380.i64[0] = v379.u32[0];
      v380.i64[1] = v379.u32[1];
      v381 = v380;
      v380.i64[0] = v379.u32[2];
      v380.i64[1] = v379.u32[3];
      v382 = vpaddq_s64(vshlq_u64(v381, v366), vshlq_u64(v380, v367));
      v383 = (v382.i64[0] << v376) | v374;
      if (v369.i64[0] + (v376 & 0x3F) >= 0x40)
      {
        *(v221 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v382.i64[0] >> -(v376 & 0x3F);
        if ((v376 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = vaddq_s8(v152, v375);
      v385 = v369.i64[0] + v376;
      v386 = (v369.i64[0] + v376) & 0x3F;
      v387 = v383 | (v382.i64[1] << v385);
      if ((v385 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v221 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v382.i64[1] >> -v386;
        if (!v386)
        {
          v387 = 0;
        }
      }

      v388 = v385 + v369.i64[1];
      v389.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v389.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v390.i64[0] = -1;
      v390.i64[1] = -1;
      v391 = vshlq_u8(v390, vaddq_s8(v143, v389));
      v392 = vandq_s8(v391, v384);
      v393 = vmovl_u8(*v392.i8);
      v394 = vmovl_high_u8(v392);
      v395 = vmovl_u8(*v143.i8);
      v396 = vmovl_high_u8(v143);
      v397 = vtrn1q_s16(0, v395);
      v398 = vtrn1q_s16(0, v396);
      v399 = vpaddq_s16(vshlq_u16(v393, v397), vshlq_u16(v394, v398));
      v400 = vpaddq_s16(v395, v396);
      v401 = vmovl_u16(*v399.i8);
      v402 = vmovl_high_u16(v399);
      v403 = vmovl_u16(*v400.i8);
      v404 = vmovl_high_u16(v400);
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
      v417 = (v415.i64[0] << v388) | v387;
      if (v416.i64[0] + (v388 & 0x3F) >= 0x40)
      {
        *(v221 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
        if ((v388 & 0x3F) != 0)
        {
          v417 = v415.i64[0] >> -(v388 & 0x3F);
        }

        else
        {
          v417 = 0;
        }
      }

      v418 = vceqq_s8(v62, v504);
      v419 = vaddq_s8(v13, v375);
      v420 = v416.i64[0] + v388;
      v421 = v417 | (v415.i64[1] << v420);
      if ((v420 & 0x3F) + v416.i64[1] >= 0x40)
      {
        *(v221 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
        v421 = v415.i64[1] >> -(v420 & 0x3F);
        if ((v420 & 0x3F) == 0)
        {
          v421 = 0;
        }
      }

      v422 = vandq_s8(v155, v418);
      v423 = v420 + v416.i64[1];
      v424 = vandq_s8(v391, v419);
      v425 = vpaddq_s16(vshlq_u16(vmovl_u8(*v424.i8), v397), vshlq_u16(vmovl_high_u8(v424), v398));
      v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), v405), vshlq_u32(vmovl_high_u16(v425), v406));
      v427.i64[0] = v426.u32[0];
      v427.i64[1] = v426.u32[1];
      v428 = v427;
      v427.i64[0] = v426.u32[2];
      v427.i64[1] = v426.u32[3];
      v429 = vpaddq_s64(vshlq_u64(v428, v413), vshlq_u64(v427, v414));
      v430 = (v429.i64[0] << v423) | v421;
      if (v416.i64[0] + (v423 & 0x3F) >= 0x40)
      {
        *(v221 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
        v430 = v429.i64[0] >> -(v423 & 0x3F);
        if ((v423 & 0x3F) == 0)
        {
          v430 = 0;
        }
      }

      v431 = vaddq_s8(v153, v422);
      v432 = v416.i64[0] + v423;
      v433 = (v416.i64[0] + v423) & 0x3F;
      v434 = v430 | (v429.i64[1] << v432);
      if ((v432 & 0x3F) + v416.i64[1] >= 0x40)
      {
        *(v221 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
        v434 = v429.i64[1] >> -v433;
        if (!v433)
        {
          v434 = 0;
        }
      }

      v435 = v432 + v416.i64[1];
      v436.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v436.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v437.i64[0] = -1;
      v437.i64[1] = -1;
      v438 = vshlq_u8(v437, vaddq_s8(v504, v436));
      v439 = vandq_s8(v438, v431);
      v440 = vmovl_u8(*v439.i8);
      v441 = vmovl_high_u8(v439);
      v442 = vmovl_u8(*v504.i8);
      v443 = vmovl_high_u8(v504);
      v444 = vtrn1q_s16(0, v442);
      v445 = vtrn1q_s16(0, v443);
      v446 = vpaddq_s16(vshlq_u16(v440, v444), vshlq_u16(v441, v445));
      v447 = vpaddq_s16(v442, v443);
      v448 = vmovl_u16(*v446.i8);
      v449 = vmovl_high_u16(v446);
      v450 = vmovl_u16(*v447.i8);
      v451 = vmovl_high_u16(v447);
      v452 = vtrn1q_s32(0, v450);
      v453 = vtrn1q_s32(0, v451);
      v454 = vpaddq_s32(vshlq_u32(v448, v452), vshlq_u32(v449, v453));
      v455 = vpaddq_s32(v450, v451);
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
      v460 = vzip1q_s64(0, v459);
      v461 = vzip1q_s64(0, v456);
      v462 = vpaddq_s64(vshlq_u64(v457, v460), vshlq_u64(v458, v461));
      v463 = vpaddq_s64(v459, v456);
      v464 = (v462.i64[0] << v435) | v434;
      if (v463.i64[0] + (v435 & 0x3F) > 0x3F)
      {
        *(v221 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
        if ((v435 & 0x3F) != 0)
        {
          v464 = v462.i64[0] >> -(v435 & 0x3F);
        }

        else
        {
          v464 = 0;
        }
      }

      v465 = vaddq_s8(v494, v422);
      v466 = v463.i64[0] + v435;
      v467 = v464 | (v462.i64[1] << v466);
      if ((v466 & 0x3F) + v463.i64[1] >= 0x40)
      {
        *(v221 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
        v467 = v462.i64[1] >> -(v466 & 0x3F);
        if ((v466 & 0x3F) == 0)
        {
          v467 = 0;
        }
      }

      v468 = v466 + v463.i64[1];
      v469 = vandq_s8(v438, v465);
      v470 = vpaddq_s16(vshlq_u16(vmovl_u8(*v469.i8), v444), vshlq_u16(vmovl_high_u8(v469), v445));
      v471 = vpaddq_s32(vshlq_u32(vmovl_u16(*v470.i8), v452), vshlq_u32(vmovl_high_u16(v470), v453));
      v472.i64[0] = v471.u32[0];
      v472.i64[1] = v471.u32[1];
      v473 = v472;
      v472.i64[0] = v471.u32[2];
      v472.i64[1] = v471.u32[3];
      v474 = vpaddq_s64(vshlq_u64(v473, v460), vshlq_u64(v472, v461));
      v475 = (v474.i64[0] << v468) | v467;
      if (v463.i64[0] + (v468 & 0x3F) >= 0x40)
      {
        *(v221 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
        v475 = v474.i64[0] >> -(v468 & 0x3F);
        if ((v468 & 0x3F) == 0)
        {
          v475 = 0;
        }
      }

      v476 = v463.i64[0] + v468;
      v477 = (v463.i64[0] + v468) & 0x3F;
      v478 = v475 | (v474.i64[1] << (v463.i8[0] + v468));
      if ((v477 + v463.i64[1]) >= 0x40)
      {
        *(v221 + ((v476 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
        v478 = v474.i64[1] >> -v477;
        if (!v477)
        {
          v478 = 0;
        }
      }

      v479 = v476 + v463.i64[1];
      if ((v479 & 0x3F) != 0)
      {
        *(v221 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      }

      result = (v479 - v222 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v102 = *MEMORY[0x29EDCA608];
  v12 = 0uLL;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
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
      v35 = (2 * i) | 1u;
      do
      {
        v36 = &v94 + 2 * (v33 & 0x7F);
        v37 = v34[1];
        *(v36 + 2 * (i & 0x7F)) = *v34;
        v38 = v34[3];
        *(v36 + v35) = v34[2];
        v39 = &v94 + ((2 * v33) | 1u);
        *(v39 + 2 * (i & 0x7F)) = v37;
        v34 += 4;
        ++v33;
        *(v39 + v35) = v38;
      }

      while (a5 != v33);
    }

    v29.i32[0] = DWORD1(v94);
    v31.i32[0] = v94;
    v31 = vmovl_u16(*&vmovl_u8(*v31.i8));
    v25.i32[0] = DWORD1(v95);
    v28.i32[0] = v95;
    v30 = vmovl_u16(*&vmovl_u8(*v28.i8));
    v29 = vmovl_u16(*&vmovl_u8(*v29.i8));
    v28 = vmovl_u16(*&vmovl_u8(*v25.i8));
    v24.i32[0] = DWORD1(v96);
    v25.i32[0] = v96;
    v40 = vmovl_u8(*v25.i8).u64[0];
    v27 = vmovl_u16(v40);
    v12.i32[0] = DWORD1(v97);
    v40.i32[0] = v97;
    v26 = vmovl_u16(*&vmovl_u8(v40));
    v25 = vmovl_u16(*&vmovl_u8(*v24.i8));
    v24 = vmovl_u16(*&vmovl_u8(*v12.i8));
    v13.i32[0] = HIDWORD(v94);
    v12.i32[0] = DWORD2(v94);
    v41 = vmovl_u8(*v12.i8).u64[0];
    v23 = vmovl_u16(v41);
    v7.i32[0] = HIDWORD(v95);
    v41.i32[0] = DWORD2(v95);
    v22 = vmovl_u16(*&vmovl_u8(v41));
    v21 = vmovl_u16(*&vmovl_u8(*v13.i8));
    v42 = vmovl_u8(v7).u64[0];
    v20 = vmovl_u16(v42);
    v13.i32[0] = HIDWORD(v96);
    v42.i32[0] = DWORD2(v96);
    v43 = vmovl_u8(v42).u64[0];
    v19 = vmovl_u16(v43);
    v7.i32[0] = HIDWORD(v97);
    v43.i32[0] = DWORD2(v97);
    v18 = vmovl_u16(*&vmovl_u8(v43));
    v17 = vmovl_u16(*&vmovl_u8(*v13.i8));
    v44 = vmovl_u8(v7).u64[0];
    v16 = vmovl_u16(v44);
    v13.i32[0] = DWORD1(v98);
    v44.i32[0] = v98;
    v45 = vmovl_u8(v44).u64[0];
    v15 = vmovl_u16(v45);
    v7.i32[0] = DWORD1(v99);
    v45.i32[0] = v99;
    v14 = vmovl_u16(*&vmovl_u8(v45));
    v13 = vmovl_u16(*&vmovl_u8(*v13.i8));
    v12 = vmovl_u16(*&vmovl_u8(v7));
  }

  v73 = v22;
  v74 = v23;
  v75 = v18;
  v76 = v19;
  v77 = v21;
  v78 = v20;
  v79 = v17;
  v80 = v16;
  v81 = v14;
  v82 = v15;
  v83 = v13;
  v84 = v12;
  v46 = a6 != 0;
  v47 = 2 * (a6 & 0x7F);
  v86 = v31;
  v87 = v30;
  v48 = 2 * (a5 & 0x7F);
  v88 = v29;
  v89 = v28;
  v90 = v27;
  v91 = v26;
  if (v48 >= 4)
  {
    v49 = 4;
  }

  else
  {
    v49 = 2 * (a5 & 0x7F);
  }

  v92 = v25;
  v93 = v24;
  v50 = 2 * v46;
  if (v48 >= 4)
  {
    v51 = v48 - 4;
  }

  else
  {
    v51 = 0;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v86, a7, v49, 2 * v46);
  v86 = v74;
  v87 = v73;
  v88 = v77;
  v89 = v78;
  v90 = v76;
  v91 = v75;
  v53 = v47 - 2;
  if (v47 < 2)
  {
    v53 = 0;
  }

  v92 = v79;
  v93 = v80;
  if (a6 >= 2)
  {
    v54 = 2;
  }

  else
  {
    v54 = v53;
  }

  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v86, a7, v49, v54);
  v86 = v82;
  v87 = v81;
  v88 = v83;
  v89 = v84;
  v56 = vmovl_u16(*&vmovl_u8(__PAIR64__(v84.u32[1], v100)));
  v90 = v56;
  v56.i32[0] = v101;
  v57 = vmovl_u16(*&vmovl_u8(*v56.i8));
  v91 = v57;
  v57.i32[0] = DWORD1(v100);
  v58 = vmovl_u16(*&vmovl_u8(*v57.i8));
  v92 = v58;
  v58.i32[0] = DWORD1(v101);
  v93 = vmovl_u16(*&vmovl_u8(*v58.i8));
  if (a5 >= 4)
  {
    v59 = 4;
  }

  else
  {
    v59 = v51;
  }

  v60 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v86, a7, v59, v50);
  v61.i32[0] = DWORD2(v98);
  v62 = vmovl_u16(*&vmovl_u8(v61));
  v86 = v62;
  v62.i32[0] = DWORD2(v99);
  v63 = vmovl_u16(*&vmovl_u8(*v62.i8));
  v87 = v63;
  v63.i32[0] = HIDWORD(v98);
  v64 = vmovl_u16(*&vmovl_u8(*v63.i8));
  v88 = v64;
  v64.i32[0] = HIDWORD(v99);
  v65 = vmovl_u16(*&vmovl_u8(*v64.i8));
  v89 = v65;
  v65.i32[0] = DWORD2(v100);
  v66 = vmovl_u16(*&vmovl_u8(*v65.i8));
  v90 = v66;
  v66.i32[0] = DWORD2(v101);
  v67 = vmovl_u16(*&vmovl_u8(*v66.i8));
  v91 = v67;
  v67.i32[0] = HIDWORD(v100);
  v68 = vmovl_u16(*&vmovl_u8(*v67.i8));
  v92 = v68;
  v68.i32[0] = HIDWORD(v101);
  v93 = vmovl_u16(*&vmovl_u8(*v68.i8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v86, a7, v59, v54);
  if (v60)
  {
    v70 = 4;
  }

  else
  {
    v70 = 0;
  }

  if (v55)
  {
    v71 = 2;
  }

  else
  {
    v71 = 0;
  }

  if (result)
  {
    v72 = -8;
  }

  else
  {
    v72 = -16;
  }

  *a2 = v72 | v70 | v52 | v71;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

  v17 = (8 * (a3 & 7)) | 0x200;
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

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 512 >= 9 || v66 == 2)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v65 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v57, a5);
  }

  v55 = v58;
  v56 = v57;
  v53 = v60;
  v54 = v59;
  v51 = v62;
  v52 = v61;
  v49 = v64;
  v50 = v63;
  v10 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v57, a5);
  }

  v47 = v58;
  v48 = v57;
  v45 = v60;
  v46 = v59;
  v43 = v62;
  v44 = v61;
  v41 = v64;
  v42 = v63;
  v11 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v57, a5);
  }

  v39 = v58;
  v40 = v57;
  v37 = v60;
  v38 = v59;
  v35 = v62;
  v36 = v61;
  v33 = v64;
  v34 = v63;
  v12 = a3 + 48;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v57, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v57, a5);
  }

  v14 = vmovn_s32(v41);
  v15 = vmovn_s32(v57);
  v16 = vmovn_s32(v58);
  v17 = vmovn_s32(v59);
  v18 = vmovn_s32(v60);
  v19 = vmovn_s32(v61);
  v20 = vmovn_s32(v62);
  LODWORD(v21) = vuzp1_s8(vmovn_s32(v56), v14).u32[0];
  DWORD1(v21) = vuzp1_s8(vmovn_s32(v55), v14).u32[0];
  DWORD2(v21) = vuzp1_s8(vmovn_s32(v54), v14).u32[0];
  HIDWORD(v21) = vuzp1_s8(vmovn_s32(v53), v14).u32[0];
  v22 = vmovn_s32(v63);
  LODWORD(v23) = vuzp1_s8(vmovn_s32(v52), v14).u32[0];
  DWORD1(v23) = vuzp1_s8(vmovn_s32(v51), v14).u32[0];
  DWORD2(v23) = vuzp1_s8(vmovn_s32(v50), v14).u32[0];
  HIDWORD(v23) = vuzp1_s8(vmovn_s32(v49), v14).u32[0];
  LODWORD(v24) = vuzp1_s8(vmovn_s32(v40), v14).u32[0];
  DWORD1(v24) = vuzp1_s8(vmovn_s32(v39), v14).u32[0];
  DWORD2(v24) = vuzp1_s8(vmovn_s32(v38), v14).u32[0];
  v25 = vmovn_s32(v64);
  HIDWORD(v24) = vuzp1_s8(vmovn_s32(v37), v14).u32[0];
  LODWORD(v26) = vuzp1_s8(vmovn_s32(v36), v14).u32[0];
  DWORD1(v26) = vuzp1_s8(vmovn_s32(v35), v14).u32[0];
  DWORD2(v26) = vuzp1_s8(vmovn_s32(v34), v14).u32[0];
  *a1 = v21;
  a1[1] = v23;
  HIDWORD(v26) = vuzp1_s8(vmovn_s32(v33), v14).u32[0];
  LODWORD(v27) = vuzp1_s8(vmovn_s32(v48), v14).u32[0];
  DWORD1(v27) = vuzp1_s8(vmovn_s32(v47), v14).u32[0];
  DWORD2(v27) = vuzp1_s8(vmovn_s32(v46), v14).u32[0];
  a1[2] = v24;
  a1[3] = v26;
  HIDWORD(v27) = vuzp1_s8(vmovn_s32(v45), v14).u32[0];
  LODWORD(v28) = vuzp1_s8(vmovn_s32(v44), v14).u32[0];
  DWORD1(v28) = vuzp1_s8(vmovn_s32(v43), v14).u32[0];
  DWORD2(v28) = vuzp1_s8(vmovn_s32(v42), v14).u32[0];
  v29 = vuzp1_s8(v14, v14);
  HIDWORD(v28) = v29.i32[0];
  *&v30 = vuzp1_s8(v15, v29);
  DWORD1(v30) = vuzp1_s8(v16, *&v30).u32[0];
  DWORD2(v30) = vuzp1_s8(v17, *&v30).u32[0];
  HIDWORD(v30) = vuzp1_s8(v18, *&v30).u32[0];
  v31 = (a1 + a2);
  LODWORD(v32) = vuzp1_s8(v19, *&v30).u32[0];
  DWORD1(v32) = vuzp1_s8(v20, *&v30).u32[0];
  DWORD2(v32) = vuzp1_s8(v22, *&v30).u32[0];
  HIDWORD(v32) = vuzp1_s8(v25, *&v30).u32[0];
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v30;
  v31[3] = v32;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 64, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 4 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 6 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 6 * a2 + 64, a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s32(*a3, 0);
  v8 = vsubq_s8(*a3, v7);
  v9 = vsubq_s8(*(a3 + 16), v7);
  v491 = *(a3 + 32);
  v10 = vsubq_s8(v491, v7);
  v492 = *(a3 + 48);
  v11 = vsubq_s8(v492, v7);
  v12 = vsubq_s8(*(a3 + a4), v7);
  v13 = vsubq_s8(*(a3 + a4 + 16), v7);
  v14 = vsubq_s8(*(a3 + a4 + 32), v7);
  v15 = vsubq_s8(*(a3 + a4 + 48), v7);
  v16 = vqtbl1q_s8(vmaxq_s8(v8, v9), xmmword_29D2F0F70);
  v17 = vqtbl1q_s8(vminq_s8(v8, v9), xmmword_29D2F0F70);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vpmaxq_s8(v18, v18);
  v21 = vpminq_s8(v19, v19);
  v22 = vzip1q_s8(v20, v21);
  v23.i64[0] = 0x808080808080808;
  v23.i64[1] = 0x808080808080808;
  v24 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v22)), vceqzq_s8(v22));
  v25 = vpmaxq_s8(v24, v24);
  v26 = vqtbl1q_s8(vmaxq_s8(v10, v11), xmmword_29D2F0F70);
  v27 = vqtbl1q_s8(vminq_s8(v10, v11), xmmword_29D2F0F70);
  v28 = vpmaxq_s8(v26, v26);
  v29 = vpminq_s8(v27, v27);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vmaxq_s8(v20, v30);
  v33 = vminq_s8(v21, v31);
  v34 = vzip1q_s8(v30, v31);
  v35 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v34)), vceqzq_s8(v34));
  v36 = vpmaxq_s8(v35, v35);
  v37 = vqtbl1q_s8(vmaxq_s8(v12, v13), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v12, v13), xmmword_29D2F0F70);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v32, v41);
  v44 = vminq_s8(v33, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vpmaxq_s8(v46, v46);
  v48 = vqtbl1q_s8(vmaxq_s8(v14, v15), xmmword_29D2F0F70);
  v49 = vqtbl1q_s8(vminq_s8(v14, v15), xmmword_29D2F0F70);
  v50 = vpmaxq_s8(v48, v48);
  v51 = vpminq_s8(v49, v49);
  v52 = vpmaxq_s8(v50, v50);
  v53 = vpminq_s8(v51, v51);
  v54 = vmaxq_s8(v43, v52);
  v55 = vminq_s8(v44, v53);
  v56 = vzip1q_s8(v52, v53);
  v57 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v56)), vceqzq_s8(v56));
  v58 = vpmaxq_s8(v57, v57);
  v59 = vmaxq_s8(vmaxq_s8(v25, v36), vmaxq_s8(v47, v58));
  v60 = vclzq_s8(vsubq_s8(v54, v55));
  v61 = vsubq_s8(v23, v60);
  v62 = vminq_s8(v61, v59);
  v63 = vmaxvq_s8(v62);
  if (a5)
  {
    v64 = a6 == 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = v64;
  if (!v63)
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v481 = *(a3 + 16);
  v66.i64[0] = -1;
  v66.i64[1] = -1;
  v67.i64[0] = 0x707070707070707;
  v67.i64[1] = 0x707070707070707;
  v68 = vcgtq_s8(v59, v61);
  v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v60)), v55), v68);
  v70.i64[0] = 0x303030303030303;
  v70.i64[1] = 0x303030303030303;
  v71 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v25), v70), 0);
  v499 = v69;
  v501 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v36), v70), 0);
  v489 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v47), v70), 0);
  v72 = vmaxq_s8(vminq_s8(vsubq_s8(v62, v58), v70), 0);
  v73.i64[0] = 0x404040404040404;
  v73.i64[1] = 0x404040404040404;
  v74 = vorrq_s8(vbicq_s8(v73, vceqq_s8(vaddq_s8(v72, v489), vnegq_s8(vaddq_s8(v71, v501)))), vorrq_s8(vandq_s8(vceqzq_s8(v62), v70), vandq_s8(v68, v23)));
  v75 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F1010));
  v76 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F1010));
  v77 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F1010));
  v78 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F1010));
  v485 = vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F1010));
  v487 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F1010));
  v79 = vqtbl1q_s8(vmaxq_s8(v485, v487), xmmword_29D2F0F70);
  v80 = vqtbl1q_s8(vminq_s8(v485, v487), xmmword_29D2F0F70);
  v81 = vpmaxq_s8(v79, v79);
  v82 = vpminq_s8(v80, v80);
  v83 = vpmaxq_s8(v81, v81);
  v84 = vpminq_s8(v82, v82);
  v85 = vzip1q_s8(v83, v84);
  v86 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v85)), vceqzq_s8(v85));
  v87 = vpmaxq_s8(v86, v86);
  v497 = v12;
  v482 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F1010));
  v483 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F1010));
  v88 = vqtbl1q_s8(vmaxq_s8(v483, v482), xmmword_29D2F0F70);
  v89 = vqtbl1q_s8(vminq_s8(v483, v482), xmmword_29D2F0F70);
  v90 = vpmaxq_s8(v88, v88);
  v91 = vpminq_s8(v89, v89);
  v92 = vpmaxq_s8(v90, v90);
  v93 = vpminq_s8(v91, v91);
  v94 = vmaxq_s8(v83, v92);
  v95 = vminq_s8(v84, v93);
  v96 = vzip1q_s8(v92, v93);
  v97 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v96)), vceqzq_s8(v96));
  v98 = vpmaxq_s8(v97, v97);
  v99 = vqtbl1q_s8(vmaxq_s8(v75, v76), xmmword_29D2F0F70);
  v100 = vqtbl1q_s8(vminq_s8(v75, v76), xmmword_29D2F0F70);
  v101 = vpmaxq_s8(v99, v99);
  v102 = vpminq_s8(v100, v100);
  v103 = vpmaxq_s8(v101, v101);
  v104 = vpminq_s8(v102, v102);
  v105 = vmaxq_s8(v94, v103);
  v106 = vminq_s8(v95, v104);
  v107 = vzip1q_s8(v103, v104);
  v108 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v107)), vceqzq_s8(v107));
  v493 = v10;
  v495 = v11;
  v109 = vpmaxq_s8(v108, v108);
  v110 = vqtbl1q_s8(vmaxq_s8(v77, v78), xmmword_29D2F0F70);
  v111 = vqtbl1q_s8(vminq_s8(v77, v78), xmmword_29D2F0F70);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v105, v114);
  v117 = vminq_s8(v106, v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v23, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v121 = vmaxq_s8(vmaxq_s8(v87, v98), vmaxq_s8(v109, v120));
  v122 = v9;
  v123 = vclzq_s8(vsubq_s8(v116, v117));
  v124 = vsubq_s8(v23, v123);
  v125 = vcgtq_s8(v121, v124);
  v126 = vminq_s8(v124, v121);
  v116.i64[0] = 0x1010101010101010;
  v116.i64[1] = 0x1010101010101010;
  v121.i64[0] = 0x1818181818181818;
  v121.i64[1] = 0x1818181818181818;
  v127 = vorrq_s8(vandq_s8(vceqzq_s8(v126), v70), vbslq_s8(v125, v121, v116));
  v128 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v87), v70), 0);
  v129 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v98), v70), 0);
  v130 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v109), v70), 0);
  v131 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v120), v70), 0);
  v132 = vsubq_s8(v126, v128);
  v133 = vsubq_s8(v126, v129);
  v134 = vsubq_s8(v126, v130);
  v135 = vsubq_s8(v126, v131);
  v136.i64[0] = 0x404040404040404;
  v136.i64[1] = 0x404040404040404;
  v137 = vorrq_s8(v127, vbicq_s8(v136, vceqq_s8(vaddq_s8(v131, v130), vnegq_s8(vaddq_s8(v128, v129)))));
  v138 = vmovl_u8(*v137.i8);
  v127.i64[0] = 0x8000800080008;
  v127.i64[1] = 0x8000800080008;
  v130.i64[0] = 0x2000200020002;
  v130.i64[1] = 0x2000200020002;
  v139 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v134.i8, *v133.i8), *v135.i8), 3uLL), *v132.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v137.i8, 1uLL), v127)), vbicq_s8(vmovl_s8(*v126.i8), vceqzq_s16((*&v138 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v138 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v130), v127));
  v140 = vsubq_s8(v62, v71);
  v141 = vsubq_s8(v62, v501);
  v142 = vsubq_s8(v62, v489);
  v143 = vsubq_s8(v62, v72);
  v144 = vandq_s8(vceqq_s16((*&vmovl_u8(*v74.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v130), v127);
  v502 = v143;
  v127.i8[1] = 8;
  v127.i8[3] = 8;
  v127.i8[5] = 8;
  v127.i8[7] = 8;
  v145 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v142.i8, *v141.i8), *v143.i8), 3uLL), *v140.i8, 0x707070707070707), vbic_s8(*v62.i8, vcgt_u8(*v127.i8, *v74.i8))), (*&vshll_n_u8(*v74.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v144), v139)), 0);
  if (vaddlvq_s8(v145))
  {
    v146.i64[0] = 0x707070707070707;
    v146.i64[1] = 0x707070707070707;
    v147.i64[0] = -1;
    v147.i64[1] = -1;
    v148 = vandq_s8(vsubq_s8(vshlq_s8(v147, vsubq_s8(v146, v123)), v117), v125);
    v7 = vbslq_s8(v145, vsubq_s8(v7, vqtbl1q_s8(v7, xmmword_29D2F1010)), v7);
    v490 = vbslq_s8(v145, v485, v8);
    v149 = vbslq_s8(v145, v487, v122);
    v150 = vbslq_s8(v145, v482, v495);
    v151 = vbslq_s8(v145, v75, v497);
    v152 = vbslq_s8(v145, v77, v14);
    v15 = vbslq_s8(v145, v78, v15);
    v488 = vbslq_s8(v145, v132, v140);
    v153 = vbslq_s8(v145, v133, v141);
    v142 = vbslq_s8(v145, v134, v142);
    v502 = vbslq_s8(v145, v135, v502);
    v154 = vbslq_s8(v145, v148, v499);
    v62 = vbslq_s8(v145, v126, v62);
    v74 = vbslq_s8(v145, v137, v74);
    v155 = vbslq_s8(v145, v76, v13);
    v156 = vbslq_s8(v145, v483, v493);
    v157 = v149;
    if (v65)
    {
LABEL_10:
      v158 = v488;
      v159 = v490;
      goto LABEL_16;
    }
  }

  else
  {
    v488 = v140;
    v490 = v8;
    v155 = v13;
    v152 = v14;
    v151 = v497;
    v154 = v499;
    v156 = v493;
    v150 = v495;
    v157 = v122;
    v153 = v141;
    if (v65)
    {
      goto LABEL_10;
    }
  }

  v484 = v152;
  v480 = v157;
  v494 = v156;
  v486 = v15;
  v496 = v150;
  v498 = v151;
  v500 = v154;
  v161 = v62;
  v503 = *a3;
  v170 = vsubq_s8(*a3, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
  v162 = vsubq_s8(v481, vqtbl2q_s8(*a3, xmmword_29D2F1030));
  v504 = *(a3 + 32);
  v504.val[1].i32[3] = v503.val[1].i32[3];
  v163 = vsubq_s8(v491, vqtbl2q_s8(v504, xmmword_29D2F0FA0));
  v164 = vsubq_s8(v492, vqtbl2q_s8(v504, xmmword_29D2F1040));
  v505 = *(a3 + a4);
  v505.val[1].i32[3] = v503.val[1].i32[3];
  v165 = vsubq_s8(v505.val[0], vqtbl2q_s8(v505, xmmword_29D2F1050));
  v506 = *(a3 + a4 + 32);
  v506.val[1].i32[3] = v503.val[1].i32[3];
  v166 = vsubq_s8(*(a3 + a4 + 16), vqtbl2q_s8(v505, xmmword_29D2F0F80));
  v167 = vsubq_s8(v506.val[0], vqtbl2q_s8(v506, xmmword_29D2F1060));
  v168 = vsubq_s8(*(a3 + a4 + 48), vqtbl2q_s8(v506, xmmword_29D2F0F80));
  v169 = v162;
  v169.i32[3] = v170.i32[0];
  v170.i32[0] = v162.i32[3];
  v171 = vqtbl1q_s8(vmaxq_s8(v170, v169), xmmword_29D2F0F70);
  v172 = vqtbl1q_s8(vminq_s8(v170, v169), xmmword_29D2F0F70);
  v173 = vpmaxq_s8(v171, v171);
  v174 = vpminq_s8(v172, v172);
  v175 = vpmaxq_s8(v173, v173);
  v176 = vpminq_s8(v174, v174);
  v505.val[0] = vzip1q_s8(v175, v176);
  v177.i64[0] = 0x808080808080808;
  v177.i64[1] = 0x808080808080808;
  v505.val[0] = vbicq_s8(vsubq_s8(v177, vclsq_s8(v505.val[0])), vceqzq_s8(v505.val[0]));
  v506.val[1] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[0] = vqtbl1q_s8(vmaxq_s8(v163, v164), xmmword_29D2F0F70);
  v505.val[1] = vqtbl1q_s8(vminq_s8(v163, v164), xmmword_29D2F0F70);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v178 = vmaxq_s8(v175, v505.val[0]);
  v179 = vminq_s8(v176, v505.val[1]);
  v505.val[0] = vzip1q_s8(v505.val[0], v505.val[1]);
  v505.val[0] = vbicq_s8(vsubq_s8(v177, vclsq_s8(v505.val[0])), vceqzq_s8(v505.val[0]));
  v180 = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[0] = vqtbl1q_s8(vmaxq_s8(v165, v166), xmmword_29D2F0F70);
  v505.val[1] = vqtbl1q_s8(vminq_s8(v165, v166), xmmword_29D2F0F70);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v181 = vmaxq_s8(v178, v505.val[0]);
  v182 = vminq_s8(v179, v505.val[1]);
  v505.val[0] = vzip1q_s8(v505.val[0], v505.val[1]);
  v505.val[0] = vbicq_s8(vsubq_s8(v177, vclsq_s8(v505.val[0])), vceqzq_s8(v505.val[0]));
  v183 = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[0] = vqtbl1q_s8(vmaxq_s8(v167, v168), xmmword_29D2F0F70);
  v505.val[1] = vqtbl1q_s8(vminq_s8(v167, v168), xmmword_29D2F0F70);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v505.val[0] = vpmaxq_s8(v505.val[0], v505.val[0]);
  v505.val[1] = vpminq_s8(v505.val[1], v505.val[1]);
  v184 = vmaxq_s8(v181, v505.val[0]);
  v185 = vminq_s8(v182, v505.val[1]);
  v505.val[0] = vzip1q_s8(v505.val[0], v505.val[1]);
  v505.val[0] = vbicq_s8(vsubq_s8(v177, vclsq_s8(v505.val[0])), vceqzq_s8(v505.val[0]));
  v186 = vpmaxq_s8(v505.val[0], v505.val[0]);
  v187 = vmaxq_s8(vmaxq_s8(v506.val[1], v180), vmaxq_s8(v183, v186));
  v188 = vclzq_s8(vsubq_s8(v184, v185));
  v189 = vsubq_s8(v177, v188);
  v190 = vcgtq_s8(v187, v189);
  v191 = vminq_s8(v189, v187);
  v177.i64[0] = 0x909090909090909;
  v177.i64[1] = 0x909090909090909;
  v192.i64[0] = 0x202020202020202;
  v192.i64[1] = 0x202020202020202;
  v193 = vorrq_s8(vandq_s8(vceqzq_s8(v191), v192), vsubq_s8(vandq_s8(v190, v177), vmvnq_s8(v190)));
  v177.i64[0] = 0x303030303030303;
  v177.i64[1] = 0x303030303030303;
  v194 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v506.val[1]), v177), 0);
  v195 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v180), v177), 0);
  v196 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v183), v177), 0);
  v197 = vmaxq_s8(vminq_s8(vsubq_s8(v191, v186), v177), 0);
  v198 = vsubq_s8(v191, v194);
  v199 = vsubq_s8(v191, v195);
  v200 = vsubq_s8(v191, v196);
  v201 = vsubq_s8(v191, v197);
  v202 = vceqq_s8(vaddq_s8(v197, v196), vnegq_s8(vaddq_s8(v194, v195)));
  v196.i64[0] = 0x404040404040404;
  v196.i64[1] = 0x404040404040404;
  v203 = vorrq_s8(v193, vbicq_s8(v196, v202));
  v204.i64[0] = 0x3000300030003;
  v204.i64[1] = 0x3000300030003;
  v205 = vmovl_s8(*v74.i8);
  v197.i64[0] = 0x8000800080008;
  v197.i64[1] = 0x8000800080008;
  v206 = vbicq_s8(vmovl_s8(*v161.i8), vceqzq_s16(vandq_s8(v205, v197)));
  v207 = vandq_s8(v205, v204);
  v204.i64[0] = 0x2000200020002;
  v204.i64[1] = 0x2000200020002;
  v208 = vaddq_s16(vaddq_s16(v206, vandq_s8(vshll_n_s8(*v74.i8, 1uLL), v197)), vandq_s8(vceqq_s16(v207, v204), v197));
  v158 = v488;
  v209 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v208, *v488.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v142.i8, *v153.i8), *v502.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v200.i8, *v199.i8), *v201.i8), 3uLL), *v198.i8, 0x707070707070707), vand_s8(vadd_s8(*v203.i8, *v203.i8), 0x808080808080808)), vbic_s8(*v191.i8, vcgt_u8(0x808080808080808, *v203.i8))))), 0);
  if (vaddlvq_s8(v209))
  {
    v210.i64[0] = 0x707070707070707;
    v210.i64[1] = 0x707070707070707;
    v211 = vsubq_s8(v210, v188);
    v210.i64[0] = -1;
    v210.i64[1] = -1;
    v212 = vandq_s8(vsubq_s8(vshlq_s8(v210, v211), v185), v190);
    v7.i32[0] = vbslq_s8(v209, vextq_s8(v481, v481, 0xCuLL), v7).u32[0];
    v159 = vbslq_s8(v209, v170, v490);
    v157 = vbslq_s8(v209, v169, v480);
    v156 = vbslq_s8(v209, v163, v494);
    v150 = vbslq_s8(v209, v164, v496);
    v151 = vbslq_s8(v209, v165, v498);
    v155 = vbslq_s8(v209, v166, v155);
    v152 = vbslq_s8(v209, v167, v484);
    v15 = vbslq_s8(v209, v168, v486);
    v158 = vbslq_s8(v209, v198, v488);
    v153 = vbslq_s8(v209, v199, v153);
    v142 = vbslq_s8(v209, v200, v142);
    v502 = vbslq_s8(v209, v201, v502);
    v154 = vbslq_s8(v209, v212, v500);
    v62 = vbslq_s8(v209, v191, v161);
    v74 = vbslq_s8(v209, v203, v74);
  }

  else
  {
    v151 = v498;
    v154 = v500;
    v156 = v494;
    v150 = v496;
    v152 = v484;
    v15 = v486;
    v157 = v480;
    v159 = v490;
    v62 = v161;
  }

LABEL_16:
  v213 = vmovl_s8(*v74.i8);
  v214.i64[0] = 0x8000800080008;
  v214.i64[1] = 0x8000800080008;
  v215 = vbicq_s8(vmovl_s8(*v62.i8), vceqzq_s16(vandq_s8(v213, v214)));
  v216.i64[0] = 0x3000300030003;
  v216.i64[1] = 0x3000300030003;
  v217 = vandq_s8(v213, v216);
  v216.i64[0] = 0x2000200020002;
  v216.i64[1] = 0x2000200020002;
  v218 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v142.i8, *v153.i8), *v502.i8), 3uLL), *v158.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v74.i8, 1uLL), v214)), v215), vandq_s8(vceqq_s16(v217, v216), v214));
  v219 = vpaddq_s16(v218, v218);
  v220 = vpaddq_s16(v219, v219).u64[0];
  if ((v220.i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v221 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v222 = 8 * (a1 & 7);
    if (v222)
    {
      v223 = *v221 & ~(-1 << v222);
    }

    else
    {
      v223 = 0;
    }

    *a2 = 0;
    v224 = vzip1_s8(*v62.i8, v220);
    v225 = vadd_s16(v224, 0xFF00FF00FF00FFLL);
    v226 = vmovl_u16(vceqz_s16((*&v224 & 0xFF00FF00FF00FFLL)));
    v227.i64[0] = v226.u32[0];
    v227.i64[1] = v226.u32[1];
    v228 = vshrq_n_s64(vshlq_n_s64(v227, 0x38uLL), 0x38uLL);
    v227.i64[0] = v226.u32[2];
    v227.i64[1] = v226.u32[3];
    v229 = vshrq_n_s64(vshlq_n_s64(v227, 0x38uLL), 0x38uLL);
    v230 = vshlq_u32(vmovl_u16(vand_s8(v225, 0x7000700070007)), xmmword_29D2F1070);
    v227.i64[0] = v230.u32[0];
    v227.i64[1] = v230.u32[1];
    v231 = v227;
    v227.i64[0] = v230.u32[2];
    v227.i64[1] = v230.u32[3];
    v232 = vorrq_s8(vbicq_s8(v231, v228), vbicq_s8(v227, v229));
    v233 = *&vorr_s8(*v232.i8, *&vextq_s8(v232, v232, 8uLL)) | (32 * (v74.i8[1] & 0x1F)) | ((v74.i8[3] & 0x1F) << 15) | ((v74.i8[2] & 0x1F) << 10) | v74.i8[0] & 0x1F;
    v234 = v223 | (v233 << v222);
    if (v222 >= 0x20)
    {
      *v221 = v234;
      v234 = v233 >> (-8 * (a1 & 7u));
    }

    v235 = v7.u8[0] | (v7.u8[1] << 8) | (v7.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v7.u8[3] << 24);
    v236 = (v222 + 32) & 0x38;
    v237 = v234 | (v235 << v236);
    if (v236 >= 0x20)
    {
      *(v221 + (((v222 + 32) >> 3) & 8)) = v237;
      v237 = v235 >> -v236;
    }

    v238 = vsubq_s8(v62, v158);
    v239 = vsubq_s8(v62, v153);
    v240 = vsubq_s8(v62, v142);
    v241 = vsubq_s8(v62, v502);
    v242 = vtrn1q_s8(v238, v239);
    v243 = vtrn2q_s8(v238, v239);
    v244 = vtrn1q_s8(v240, v241);
    v245 = vtrn2q_s8(v240, v241);
    v246 = vzip1q_s16(v243, v245);
    v247 = vtrn2q_s16(v243, v245);
    v245.i64[0] = vzip1q_s32(vzip1q_s16(v242, v244), v246).u64[0];
    v247.i64[0] = vzip1q_s32(vtrn2q_s16(v242, v244), v247).u64[0];
    v241.i64[0] = 0x202020202020202;
    v241.i64[1] = 0x202020202020202;
    v248 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v74.i8), 0x4000400040004)), v241);
    v241.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v241.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v242.i64[0] = -1;
    v242.i64[1] = -1;
    v249 = vshlq_u8(v242, vorrq_s8(v248, v241));
    v250 = vmovl_u8(vand_s8(*v249.i8, *v245.i8));
    v251 = vmovl_u8(vand_s8(*&vextq_s8(v249, v249, 8uLL), *v247.i8));
    v252 = vmovl_u8(*v248.i8);
    v253 = vmovl_high_u8(v248);
    v254 = vpaddq_s16(vshlq_u16(v250, vtrn1q_s16(0, v252)), vshlq_u16(v251, vtrn1q_s16(0, v253)));
    v255 = vpaddq_s16(v252, v253);
    v256 = vmovl_u16(*v255.i8);
    v257 = vmovl_high_u16(v255);
    v258 = vpaddq_s32(vshlq_u32(vmovl_u16(*v254.i8), vtrn1q_s32(0, v256)), vshlq_u32(vmovl_high_u16(v254), vtrn1q_s32(0, v257)));
    v259 = vpaddq_s32(v256, v257);
    v260.i64[0] = v258.u32[0];
    v260.i64[1] = v258.u32[1];
    v261 = v260;
    v260.i64[0] = v258.u32[2];
    v260.i64[1] = v258.u32[3];
    v262 = v260;
    v260.i64[0] = v259.u32[0];
    v260.i64[1] = v259.u32[1];
    v263 = v260;
    v260.i64[0] = v259.u32[2];
    v260.i64[1] = v259.u32[3];
    v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
    v265 = vpaddq_s64(v263, v260);
    v266 = (v264.i64[0] << v222) | v237;
    if (v265.i64[0] + v222 >= 0x40)
    {
      v221[1] = v266;
      v266 = v264.i64[0] >> (-8 * (a1 & 7u));
      if (!v222)
      {
        v266 = 0;
      }
    }

    v267 = vceqq_s8(v62, v158);
    v268 = v265.i64[0] + (v222 | 0x40);
    v269 = v266 | (v264.i64[1] << v268);
    if ((v268 & 0x3F) + v265.i64[1] >= 0x40)
    {
      *(v221 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v269;
      v269 = v264.i64[1] >> -(v268 & 0x3F);
      if ((v268 & 0x3F) == 0)
      {
        v269 = 0;
      }
    }

    v270 = vandq_s8(v154, v267);
    v271 = v268 + v265.i64[1];
    v272.i64[0] = 0x808080808080808;
    v272.i64[1] = 0x808080808080808;
    v273.i64[0] = -1;
    v273.i64[1] = -1;
    v274 = vandq_s8(vextq_s8(vtstq_s8(v74, v272), 0, 0xCuLL), v62);
    v275.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v275.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v276 = vandq_s8(vshlq_u8(v273, vaddq_s8(v274, v275)), v154);
    v277 = vmovl_u8(*v274.i8);
    v278 = vpaddq_s16(vshlq_u16(vmovl_u8(*v276.i8), vtrn1q_s16(0, v277)), vmovl_high_u8(v276));
    v279 = vpaddq_s16(v277, vmovl_high_u8(v274));
    v280 = vmovl_u16(*v279.i8);
    v281 = vmovl_high_u16(v279);
    v282 = vpaddq_s32(vshlq_u32(vmovl_u16(*v278.i8), vtrn1q_s32(0, v280)), vshlq_u32(vmovl_high_u16(v278), vtrn1q_s32(0, v281)));
    v283 = vpaddq_s32(v280, v281);
    v284.i64[0] = v282.u32[0];
    v284.i64[1] = v282.u32[1];
    v285 = v284;
    v284.i64[0] = v282.u32[2];
    v284.i64[1] = v282.u32[3];
    v286 = v284;
    v284.i64[0] = v283.u32[0];
    v284.i64[1] = v283.u32[1];
    v287 = v284;
    v284.i64[0] = v283.u32[2];
    v284.i64[1] = v283.u32[3];
    v288 = vpaddq_s64(vshlq_u64(v285, vzip1q_s64(0, v287)), vshlq_u64(v286, vzip1q_s64(0, v284)));
    v289 = vpaddq_s64(v287, v284);
    v290 = (v288.i64[0] << v271) | v269;
    if (v289.i64[0] + (v271 & 0x3F) >= 0x40)
    {
      *(v221 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
      v290 = v288.i64[0] >> -(v271 & 0x3F);
      if ((v271 & 0x3F) == 0)
      {
        v290 = 0;
      }
    }

    v291 = vaddq_s8(v270, v159);
    v292 = v289.i64[0] + v271;
    v293 = v290 | (v288.i64[1] << v292);
    if ((v292 & 0x3F) + v289.i64[1] >= 0x40)
    {
      *(v221 + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
      v293 = v288.i64[1] >> -(v292 & 0x3F);
      if ((v292 & 0x3F) == 0)
      {
        v293 = 0;
      }
    }

    v294 = v292 + v289.i64[1];
    v295 = vextq_s8(0, v158, 0xCuLL);
    v296.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v296.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v297.i64[0] = -1;
    v297.i64[1] = -1;
    v298 = vandq_s8(vshlq_u8(v297, vaddq_s8(v295, v296)), v291);
    v299 = vmovl_u8(*v295.i8);
    v300 = vmovl_high_u8(v295);
    v301 = vpaddq_s16(vshlq_u16(vmovl_u8(*v298.i8), vtrn1q_s16(0, v299)), vshlq_u16(vmovl_high_u8(v298), vtrn1q_s16(0, v300)));
    v302 = vpaddq_s16(v299, v300);
    v303 = vmovl_u16(*v302.i8);
    v304 = vmovl_high_u16(v302);
    v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v301.i8), vtrn1q_s32(0, v303)), vshlq_u32(vmovl_high_u16(v301), vtrn1q_s32(0, v304)));
    v306 = vpaddq_s32(v303, v304);
    v307.i64[0] = v305.u32[0];
    v307.i64[1] = v305.u32[1];
    v308 = v307;
    v307.i64[0] = v305.u32[2];
    v307.i64[1] = v305.u32[3];
    v309 = v307;
    v307.i64[0] = v306.u32[0];
    v307.i64[1] = v306.u32[1];
    v310 = v307;
    v307.i64[0] = v306.u32[2];
    v307.i64[1] = v306.u32[3];
    v311 = vpaddq_s64(vshlq_u64(v308, vzip1q_s64(0, v310)), vshlq_u64(v309, vzip1q_s64(0, v307)));
    v312 = vpaddq_s64(v310, v307);
    v313 = (v311.i64[0] << v294) | v293;
    if (v312.i64[0] + (v294 & 0x3F) >= 0x40)
    {
      *(v221 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v311.i64[0] >> -(v294 & 0x3F);
      if ((v294 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = vceqq_s8(v62, v153);
    v315 = vaddq_s8(v157, v270);
    v316 = v312.i64[0] + v294;
    v317 = v313 | (v311.i64[1] << v316);
    if ((v316 & 0x3F) + v312.i64[1] >= 0x40)
    {
      *(v221 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
      v317 = v311.i64[1] >> -(v316 & 0x3F);
      if ((v316 & 0x3F) == 0)
      {
        v317 = 0;
      }
    }

    v318 = vandq_s8(v154, v314);
    v319 = v316 + v312.i64[1];
    v320.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v320.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v321.i64[0] = -1;
    v321.i64[1] = -1;
    v322 = vandq_s8(vshlq_u8(v321, vaddq_s8(v158, v320)), v315);
    v323 = vmovl_u8(*v158.i8);
    v324 = vmovl_high_u8(v158);
    v325 = vpaddq_s16(vshlq_u16(vmovl_u8(*v322.i8), vtrn1q_s16(0, v323)), vshlq_u16(vmovl_high_u8(v322), vtrn1q_s16(0, v324)));
    v326 = vpaddq_s16(v323, v324);
    v327 = vmovl_u16(*v326.i8);
    v328 = vmovl_high_u16(v326);
    v329 = vpaddq_s32(vshlq_u32(vmovl_u16(*v325.i8), vtrn1q_s32(0, v327)), vshlq_u32(vmovl_high_u16(v325), vtrn1q_s32(0, v328)));
    v330 = vpaddq_s32(v327, v328);
    v331.i64[0] = v329.u32[0];
    v331.i64[1] = v329.u32[1];
    v332 = v331;
    v331.i64[0] = v329.u32[2];
    v331.i64[1] = v329.u32[3];
    v333 = v331;
    v331.i64[0] = v330.u32[0];
    v331.i64[1] = v330.u32[1];
    v334 = v331;
    v331.i64[0] = v330.u32[2];
    v331.i64[1] = v330.u32[3];
    v335 = vpaddq_s64(vshlq_u64(v332, vzip1q_s64(0, v334)), vshlq_u64(v333, vzip1q_s64(0, v331)));
    v336 = vpaddq_s64(v334, v331);
    v337 = (v335.i64[0] << v319) | v317;
    if (v336.i64[0] + (v319 & 0x3F) >= 0x40)
    {
      *(v221 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v335.i64[0] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = vaddq_s8(v156, v318);
    v339 = v336.i64[0] + v319;
    v340 = v337 | (v335.i64[1] << v339);
    if ((v339 & 0x3F) + v336.i64[1] >= 0x40)
    {
      *(v221 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
      v340 = v335.i64[1] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v340 = 0;
      }
    }

    v341 = v339 + v336.i64[1];
    v342.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v342.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v343.i64[0] = -1;
    v343.i64[1] = -1;
    v344 = vshlq_u8(v343, vaddq_s8(v153, v342));
    v345 = vandq_s8(v344, v338);
    v346 = vmovl_u8(*v345.i8);
    v347 = vmovl_high_u8(v345);
    v348 = vmovl_u8(*v153.i8);
    v349 = vmovl_high_u8(v153);
    v350 = vtrn1q_s16(0, v348);
    v351 = vtrn1q_s16(0, v349);
    v352 = vpaddq_s16(vshlq_u16(v346, v350), vshlq_u16(v347, v351));
    v353 = vpaddq_s16(v348, v349);
    v354 = vmovl_u16(*v352.i8);
    v355 = vmovl_high_u16(v352);
    v356 = vmovl_u16(*v353.i8);
    v357 = vmovl_high_u16(v353);
    v358 = vtrn1q_s32(0, v356);
    v359 = vtrn1q_s32(0, v357);
    v360 = vpaddq_s32(vshlq_u32(v354, v358), vshlq_u32(v355, v359));
    v361 = vpaddq_s32(v356, v357);
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
    v366 = vzip1q_s64(0, v365);
    v367 = vzip1q_s64(0, v362);
    v368 = vpaddq_s64(vshlq_u64(v363, v366), vshlq_u64(v364, v367));
    v369 = vpaddq_s64(v365, v362);
    v370 = (v368.i64[0] << v341) | v340;
    if (v369.i64[0] + (v341 & 0x3F) >= 0x40)
    {
      *(v221 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
      if ((v341 & 0x3F) != 0)
      {
        v370 = v368.i64[0] >> -(v341 & 0x3F);
      }

      else
      {
        v370 = 0;
      }
    }

    v371 = vceqq_s8(v62, v142);
    v372 = vaddq_s8(v150, v318);
    v373 = v369.i64[0] + v341;
    v374 = v370 | (v368.i64[1] << v373);
    if ((v373 & 0x3F) + v369.i64[1] >= 0x40)
    {
      *(v221 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
      v374 = v368.i64[1] >> -(v373 & 0x3F);
      if ((v373 & 0x3F) == 0)
      {
        v374 = 0;
      }
    }

    v375 = vandq_s8(v154, v371);
    v376 = v373 + v369.i64[1];
    v377 = vandq_s8(v344, v372);
    v378 = vpaddq_s16(vshlq_u16(vmovl_u8(*v377.i8), v350), vshlq_u16(vmovl_high_u8(v377), v351));
    v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v378.i8), v358), vshlq_u32(vmovl_high_u16(v378), v359));
    v380.i64[0] = v379.u32[0];
    v380.i64[1] = v379.u32[1];
    v381 = v380;
    v380.i64[0] = v379.u32[2];
    v380.i64[1] = v379.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v381, v366), vshlq_u64(v380, v367));
    v383 = (v382.i64[0] << v376) | v374;
    if (v369.i64[0] + (v376 & 0x3F) >= 0x40)
    {
      *(v221 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v382.i64[0] >> -(v376 & 0x3F);
      if ((v376 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s8(v151, v375);
    v385 = v369.i64[0] + v376;
    v386 = (v369.i64[0] + v376) & 0x3F;
    v387 = v383 | (v382.i64[1] << v385);
    if ((v385 & 0x3F) + v369.i64[1] >= 0x40)
    {
      *(v221 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -v386;
      if (!v386)
      {
        v387 = 0;
      }
    }

    v388 = v385 + v369.i64[1];
    v389.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u8(v390, vaddq_s8(v142, v389));
    v392 = vandq_s8(v391, v384);
    v393 = vmovl_u8(*v392.i8);
    v394 = vmovl_high_u8(v392);
    v395 = vmovl_u8(*v142.i8);
    v396 = vmovl_high_u8(v142);
    v397 = vtrn1q_s16(0, v395);
    v398 = vtrn1q_s16(0, v396);
    v399 = vpaddq_s16(vshlq_u16(v393, v397), vshlq_u16(v394, v398));
    v400 = vpaddq_s16(v395, v396);
    v401 = vmovl_u16(*v399.i8);
    v402 = vmovl_high_u16(v399);
    v403 = vmovl_u16(*v400.i8);
    v404 = vmovl_high_u16(v400);
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
    v417 = (v415.i64[0] << v388) | v387;
    if (v416.i64[0] + (v388 & 0x3F) >= 0x40)
    {
      *(v221 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      if ((v388 & 0x3F) != 0)
      {
        v417 = v415.i64[0] >> -(v388 & 0x3F);
      }

      else
      {
        v417 = 0;
      }
    }

    v418 = vceqq_s8(v62, v502);
    v419 = vaddq_s8(v155, v375);
    v420 = v416.i64[0] + v388;
    v421 = v417 | (v415.i64[1] << v420);
    if ((v420 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v221 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
      v421 = v415.i64[1] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v421 = 0;
      }
    }

    v422 = vandq_s8(v154, v418);
    v423 = v420 + v416.i64[1];
    v424 = vandq_s8(v391, v419);
    v425 = vpaddq_s16(vshlq_u16(vmovl_u8(*v424.i8), v397), vshlq_u16(vmovl_high_u8(v424), v398));
    v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), v405), vshlq_u32(vmovl_high_u16(v425), v406));
    v427.i64[0] = v426.u32[0];
    v427.i64[1] = v426.u32[1];
    v428 = v427;
    v427.i64[0] = v426.u32[2];
    v427.i64[1] = v426.u32[3];
    v429 = vpaddq_s64(vshlq_u64(v428, v413), vshlq_u64(v427, v414));
    v430 = (v429.i64[0] << v423) | v421;
    if (v416.i64[0] + (v423 & 0x3F) >= 0x40)
    {
      *(v221 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v423 & 0x3F);
      if ((v423 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s8(v152, v422);
    v432 = v416.i64[0] + v423;
    v433 = (v416.i64[0] + v423) & 0x3F;
    v434 = v430 | (v429.i64[1] << v432);
    if ((v432 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v221 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      v434 = v429.i64[1] >> -v433;
      if (!v433)
      {
        v434 = 0;
      }
    }

    v435 = v432 + v416.i64[1];
    v436.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v436.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u8(v437, vaddq_s8(v502, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u8(*v439.i8);
    v441 = vmovl_high_u8(v439);
    v442 = vmovl_u8(*v502.i8);
    v443 = vmovl_high_u8(v502);
    v444 = vtrn1q_s16(0, v442);
    v445 = vtrn1q_s16(0, v443);
    v446 = vpaddq_s16(vshlq_u16(v440, v444), vshlq_u16(v441, v445));
    v447 = vpaddq_s16(v442, v443);
    v448 = vmovl_u16(*v446.i8);
    v449 = vmovl_high_u16(v446);
    v450 = vmovl_u16(*v447.i8);
    v451 = vmovl_high_u16(v447);
    v452 = vtrn1q_s32(0, v450);
    v453 = vtrn1q_s32(0, v451);
    v454 = vpaddq_s32(vshlq_u32(v448, v452), vshlq_u32(v449, v453));
    v455 = vpaddq_s32(v450, v451);
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
    v460 = vzip1q_s64(0, v459);
    v461 = vzip1q_s64(0, v456);
    v462 = vpaddq_s64(vshlq_u64(v457, v460), vshlq_u64(v458, v461));
    v463 = vpaddq_s64(v459, v456);
    v464 = (v462.i64[0] << v435) | v434;
    if (v463.i64[0] + (v435 & 0x3F) > 0x3F)
    {
      *(v221 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      if ((v435 & 0x3F) != 0)
      {
        v464 = v462.i64[0] >> -(v435 & 0x3F);
      }

      else
      {
        v464 = 0;
      }
    }

    v465 = vaddq_s8(v15, v422);
    v466 = v463.i64[0] + v435;
    v467 = v464 | (v462.i64[1] << v466);
    if ((v466 & 0x3F) + v463.i64[1] >= 0x40)
    {
      *(v221 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v462.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = v466 + v463.i64[1];
    v469 = vandq_s8(v438, v465);
    v470 = vpaddq_s16(vshlq_u16(vmovl_u8(*v469.i8), v444), vshlq_u16(vmovl_high_u8(v469), v445));
    v471 = vpaddq_s32(vshlq_u32(vmovl_u16(*v470.i8), v452), vshlq_u32(vmovl_high_u16(v470), v453));
    v472.i64[0] = v471.u32[0];
    v472.i64[1] = v471.u32[1];
    v473 = v472;
    v472.i64[0] = v471.u32[2];
    v472.i64[1] = v471.u32[3];
    v474 = vpaddq_s64(vshlq_u64(v473, v460), vshlq_u64(v472, v461));
    v475 = (v474.i64[0] << v468) | v467;
    if (v463.i64[0] + (v468 & 0x3F) >= 0x40)
    {
      *(v221 + ((v468 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
      v475 = v474.i64[0] >> -(v468 & 0x3F);
      if ((v468 & 0x3F) == 0)
      {
        v475 = 0;
      }
    }

    v476 = v463.i64[0] + v468;
    v477 = (v463.i64[0] + v468) & 0x3F;
    v478 = v475 | (v474.i64[1] << (v463.i8[0] + v468));
    if ((v477 + v463.i64[1]) >= 0x40)
    {
      *(v221 + ((v476 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      v478 = v474.i64[1] >> -v477;
      if (!v477)
      {
        v478 = 0;
      }
    }

    v479 = v476 + v463.i64[1];
    if ((v479 & 0x3F) != 0)
    {
      *(v221 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
    }

    result = (v479 - v222 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v105 = *MEMORY[0x29EDCA608];
  v13 = 0uLL;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
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
  v32 = 0uLL;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v34 = 0;
      v35 = (a3 + i * a4);
      v36 = &v97 + 4 * (i & 0x3F);
      v37 = &v97 + ((4 * i) | 1u);
      v38 = &v97 + ((4 * i) | 2u);
      v39 = &v97 + ((4 * i) | 3u);
      do
      {
        v40 = v35[1];
        *(v36 + 2 * (v34 & 0x7F)) = *v35;
        *(v37 + 2 * (v34 & 0x7F)) = v40;
        v41 = (2 * v34) | 1u;
        v42 = v35[3];
        *(v36 + v41) = v35[2];
        *(v37 + v41) = v42;
        v43 = v35[5];
        *(v38 + 2 * (v34 & 0x7F)) = v35[4];
        *(v39 + 2 * (v34 & 0x7F)) = v43;
        v44 = v35[6];
        v45 = v35[7];
        v35 += 8;
        ++v34;
        *(v38 + v41) = v44;
        *(v39 + v41) = v45;
      }

      while (a5 != v34);
    }

    v30.i32[0] = DWORD1(v97);
    v32.i32[0] = v97;
    v32 = vmovl_u16(*&vmovl_u8(*v32.i8));
    v28.i32[0] = DWORD1(v98);
    v29.i32[0] = v98;
    v31 = vmovl_u16(*&vmovl_u8(*v29.i8));
    v30 = vmovl_u16(*&vmovl_u8(*v30.i8));
    v29 = vmovl_u16(*&vmovl_u8(*v28.i8));
    v26.i32[0] = DWORD1(v99);
    v28.i32[0] = v99;
    v28 = vmovl_u16(*&vmovl_u8(*v28.i8));
    v13.i32[0] = DWORD1(v100);
    v25.i32[0] = v100;
    v27 = vmovl_u16(*&vmovl_u8(*v25.i8));
    v26 = vmovl_u16(*&vmovl_u8(*v26.i8));
    v25 = vmovl_u16(*&vmovl_u8(*v13.i8));
    v14.i32[0] = HIDWORD(v97);
    v13.i32[0] = DWORD2(v97);
    v46 = vmovl_u8(*v13.i8).u64[0];
    v24 = vmovl_u16(v46);
    v7.i32[0] = HIDWORD(v98);
    v46.i32[0] = DWORD2(v98);
    v23 = vmovl_u16(*&vmovl_u8(v46));
    v22 = vmovl_u16(*&vmovl_u8(*v14.i8));
    v47 = vmovl_u8(v7).u64[0];
    v21 = vmovl_u16(v47);
    v14.i32[0] = HIDWORD(v99);
    v47.i32[0] = DWORD2(v99);
    v48 = vmovl_u8(v47).u64[0];
    v20 = vmovl_u16(v48);
    v7.i32[0] = HIDWORD(v100);
    v48.i32[0] = DWORD2(v100);
    v19 = vmovl_u16(*&vmovl_u8(v48));
    v18 = vmovl_u16(*&vmovl_u8(*v14.i8));
    v49 = vmovl_u8(v7).u64[0];
    v17 = vmovl_u16(v49);
    v14.i32[0] = DWORD1(v101);
    v49.i32[0] = v101;
    v50 = vmovl_u8(v49).u64[0];
    v16 = vmovl_u16(v50);
    v7.i32[0] = DWORD1(v102);
    v50.i32[0] = v102;
    v15 = vmovl_u16(*&vmovl_u8(v50));
    v14 = vmovl_u16(*&vmovl_u8(*v14.i8));
    v13 = vmovl_u16(*&vmovl_u8(v7));
  }

  v77 = v23;
  v78 = v24;
  v79 = v19;
  v80 = v20;
  v81 = v22;
  v82 = v21;
  v83 = v18;
  v84 = v17;
  v85 = v15;
  v86 = v16;
  v87 = v14;
  v88 = v13;
  v89 = v32;
  v90 = v31;
  v51 = 2 * (a6 & 0x7F);
  v52 = 4 * (a5 & 0x3F);
  v91 = v30;
  v92 = v29;
  v93 = v28;
  v94 = v27;
  v95 = v26;
  v96 = v25;
  v53 = 4 * (a5 != 0);
  v54 = 2 * (a6 != 0);
  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v89, a7, v53, v54);
  v89 = v78;
  v90 = v77;
  v91 = v81;
  v92 = v82;
  v93 = v80;
  v94 = v79;
  v56 = v51 - 2;
  if (v51 < 2)
  {
    v56 = 0;
  }

  if (a6 >= 2)
  {
    v57 = 2;
  }

  else
  {
    v57 = v56;
  }

  v95 = v83;
  v96 = v84;
  v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v89, a7, v53, v57);
  v89 = v86;
  v90 = v85;
  v91 = v87;
  v92 = v88;
  v59 = vmovl_u16(*&vmovl_u8(__PAIR64__(v88.u32[1], v103)));
  v93 = v59;
  v59.i32[0] = v104;
  v60 = vmovl_u16(*&vmovl_u8(*v59.i8));
  v94 = v60;
  v60.i32[0] = DWORD1(v103);
  v61 = vmovl_u16(*&vmovl_u8(*v60.i8));
  v95 = v61;
  v61.i32[0] = DWORD1(v104);
  v96 = vmovl_u16(*&vmovl_u8(*v61.i8));
  v62 = v52 - 4;
  if (v52 < 4)
  {
    v62 = 0;
  }

  if (a5 >= 2)
  {
    v63 = 4;
  }

  else
  {
    v63 = v62;
  }

  v64 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v89, a7, v63, v54);
  v65.i32[0] = DWORD2(v101);
  v66 = vmovl_u16(*&vmovl_u8(v65));
  v89 = v66;
  v66.i32[0] = DWORD2(v102);
  v67 = vmovl_u16(*&vmovl_u8(*v66.i8));
  v90 = v67;
  v67.i32[0] = HIDWORD(v101);
  v68 = vmovl_u16(*&vmovl_u8(*v67.i8));
  v91 = v68;
  v68.i32[0] = HIDWORD(v102);
  v69 = vmovl_u16(*&vmovl_u8(*v68.i8));
  v92 = v69;
  v69.i32[0] = DWORD2(v103);
  v70 = vmovl_u16(*&vmovl_u8(*v69.i8));
  v93 = v70;
  v70.i32[0] = DWORD2(v104);
  v71 = vmovl_u16(*&vmovl_u8(*v70.i8));
  v94 = v71;
  v71.i32[0] = HIDWORD(v103);
  v72 = vmovl_u16(*&vmovl_u8(*v71.i8));
  v95 = v72;
  v72.i32[0] = HIDWORD(v104);
  v96 = vmovl_u16(*&vmovl_u8(*v72.i8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v89, a7, v63, v57);
  if (v64)
  {
    v74 = 4;
  }

  else
  {
    v74 = 0;
  }

  if (v58)
  {
    v75 = 2;
  }

  else
  {
    v75 = 0;
  }

  if (result)
  {
    v76 = -8;
  }

  else
  {
    v76 = -16;
  }

  *a2 = v76 | v74 | v55 | v75;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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

  v17 = (8 * (a3 & 7)) | 0x200;
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

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 512 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
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
    *v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v288[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    v289 += 2;
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    return a4 + 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v65 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v57, a5);
  }

  v55 = v58;
  v56 = v57;
  v53 = v60;
  v54 = v59;
  v51 = v62;
  v52 = v61;
  v49 = v64;
  v50 = v63;
  v10 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v57, a5);
  }

  v47 = v58;
  v48 = v57;
  v45 = v60;
  v46 = v59;
  v43 = v62;
  v44 = v61;
  v41 = v64;
  v42 = v63;
  v11 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v57, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v57, a5);
  }

  v39 = v58;
  v40 = v57;
  v37 = v60;
  v38 = v59;
  v35 = v62;
  v36 = v61;
  v33 = v64;
  v34 = v63;
  v12 = a3 + 48;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v57, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v57, a5);
  }

  v14 = vmovn_s32(v33);
  v15 = vmovn_s32(v57);
  v16 = vmovn_s32(v58);
  v17 = vmovn_s32(v59);
  v18 = vmovn_s32(v60);
  v19 = vmovn_s32(v61);
  v20 = vmovn_s32(v62);
  LODWORD(v21) = vuzp1_s8(vmovn_s32(v56), v14).u32[0];
  DWORD1(v21) = vuzp1_s8(vmovn_s32(v55), v14).u32[0];
  DWORD2(v21) = vuzp1_s8(vmovn_s32(v54), v14).u32[0];
  HIDWORD(v21) = vuzp1_s8(vmovn_s32(v53), v14).u32[0];
  v22 = vmovn_s32(v63);
  LODWORD(v23) = vuzp1_s8(vmovn_s32(v52), v14).u32[0];
  DWORD1(v23) = vuzp1_s8(vmovn_s32(v51), v14).u32[0];
  DWORD2(v23) = vuzp1_s8(vmovn_s32(v50), v14).u32[0];
  HIDWORD(v23) = vuzp1_s8(vmovn_s32(v49), v14).u32[0];
  LODWORD(v24) = vuzp1_s8(vmovn_s32(v48), v14).u32[0];
  DWORD1(v24) = vuzp1_s8(vmovn_s32(v47), v14).u32[0];
  DWORD2(v24) = vuzp1_s8(vmovn_s32(v46), v14).u32[0];
  v25 = vmovn_s32(v64);
  HIDWORD(v24) = vuzp1_s8(vmovn_s32(v45), v14).u32[0];
  LODWORD(v26) = vuzp1_s8(vmovn_s32(v44), v14).u32[0];
  DWORD1(v26) = vuzp1_s8(vmovn_s32(v43), v14).u32[0];
  DWORD2(v26) = vuzp1_s8(vmovn_s32(v42), v14).u32[0];
  *a1 = v21;
  a1[1] = v23;
  HIDWORD(v26) = vuzp1_s8(vmovn_s32(v41), v14).u32[0];
  LODWORD(v27) = vuzp1_s8(vmovn_s32(v40), v14).u32[0];
  DWORD1(v27) = vuzp1_s8(vmovn_s32(v39), v14).u32[0];
  DWORD2(v27) = vuzp1_s8(vmovn_s32(v38), v14).u32[0];
  a1[2] = v24;
  a1[3] = v26;
  HIDWORD(v27) = vuzp1_s8(vmovn_s32(v37), v14).u32[0];
  LODWORD(v28) = vuzp1_s8(vmovn_s32(v36), v14).u32[0];
  DWORD1(v28) = vuzp1_s8(vmovn_s32(v35), v14).u32[0];
  DWORD2(v28) = vuzp1_s8(vmovn_s32(v34), v14).u32[0];
  v29 = vuzp1_s8(v14, v14);
  HIDWORD(v28) = v29.i32[0];
  *&v30 = vuzp1_s8(v15, v29);
  DWORD1(v30) = vuzp1_s8(v16, *&v30).u32[0];
  DWORD2(v30) = vuzp1_s8(v17, *&v30).u32[0];
  HIDWORD(v30) = vuzp1_s8(v18, *&v30).u32[0];
  v31 = (a1 + a2);
  LODWORD(v32) = vuzp1_s8(v19, *&v30).u32[0];
  DWORD1(v32) = vuzp1_s8(v20, *&v30).u32[0];
  DWORD2(v32) = vuzp1_s8(v22, *&v30).u32[0];
  HIDWORD(v32) = vuzp1_s8(v25, *&v30).u32[0];
  *v31 = v27;
  v31[1] = v28;
  v31[2] = v30;
  v31[3] = v32;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 128, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 192, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 2 * a2 + 128, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 192, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v10 = *a3;
  if (v10 == 63)
  {
    v12 = *a2;
    a5 = *(a2 + 16);
    a6 = *(a2 + 32);
    a7 = *(a2 + 48);
    *a1 = vuzp1q_s32(*a2, a6);
    *(a1 + 32) = vuzp2q_s32(v12, a6);
    *(a1 + 64) = vuzp1q_s32(a5, a7);
    a4 = vuzp2q_s32(a5, a7);
    *(a1 + 96) = a4;
    v11 = 64;
  }

  else if (v10 == 1)
  {
    a4 = vld1q_dup_s16(a2);
    *a1 = a4;
    *(a1 + 32) = a4;
    *(a1 + 64) = a4;
    *(a1 + 96) = a4;
    v11 = 2;
  }

  else if (*a3)
  {
    v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 32, a2, v10, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
  }

  else
  {
    v11 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v13 = a2 + v11;
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      a4 = vld1q_dup_s16(v13);
      *(a1 + 128) = a4;
      *(a1 + 160) = a4;
      *(a1 + 192) = a4;
      *(a1 + 224) = a4;
      v16 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = *(v13 + 16);
      a6 = *(v13 + 32);
      a7 = *(v13 + 48);
      *(a1 + 128) = vuzp1q_s32(*v13, a6);
      *(a1 + 160) = vuzp2q_s32(v15, a6);
      *(a1 + 192) = vuzp1q_s32(a5, a7);
      a4 = vuzp2q_s32(a5, a7);
      *(a1 + 224) = a4;
      v16 = 64;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 32, v13, v14, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v17 = v13 + v16;
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 1)
    {
      a4 = vld1q_dup_s16(v17);
      *(a1 + 16) = a4;
      *(a1 + 48) = a4;
      *(a1 + 80) = a4;
      *(a1 + 112) = a4;
      v20 = 2;
    }

    else if (v18 == 63)
    {
      v19 = *v17;
      a5 = *(v17 + 16);
      a6 = *(v17 + 32);
      a7 = *(v17 + 48);
      *(a1 + 16) = vuzp1q_s32(*v17, a6);
      *(a1 + 48) = vuzp2q_s32(v19, a6);
      *(a1 + 80) = vuzp1q_s32(a5, a7);
      a4 = vuzp2q_s32(a5, a7);
      *(a1 + 112) = a4;
      v20 = 64;
    }

    else
    {
      v20 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 32, v17, v18, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    }
  }

  else
  {
    v20 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  v21 = v17 + v20;
  v22 = a3[3];
  if (a3[3])
  {
    if (v22 == 1)
    {
      a4 = vld1q_dup_s16(v21);
      *(a1 + 144) = a4;
      *(a1 + 176) = a4;
      *(a1 + 208) = a4;
      *(a1 + 240) = a4;
      v24 = 2;
    }

    else if (v22 == 63)
    {
      v23 = *v21;
      a5 = *(v21 + 16);
      a6 = *(v21 + 32);
      a7 = *(v21 + 48);
      *(a1 + 144) = vuzp1q_s32(*v21, a6);
      *(a1 + 176) = vuzp2q_s32(v23, a6);
      *(a1 + 208) = vuzp1q_s32(a5, a7);
      a4 = vuzp2q_s32(a5, a7);
      *(a1 + 240) = a4;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 144), 32, v21, v22, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    }
  }

  else
  {
    v24 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  v25 = v21 + v24;
  v26 = a3[4];
  if (a3[4])
  {
    if (v26 == 1)
    {
      a4 = vld1q_dup_s16(v25);
      *(a1 + 256) = a4;
      *(a1 + 288) = a4;
      *(a1 + 320) = a4;
      *(a1 + 352) = a4;
      v28 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = *(v25 + 16);
      a6 = *(v25 + 32);
      a7 = *(v25 + 48);
      *(a1 + 256) = vuzp1q_s32(*v25, a6);
      *(a1 + 288) = vuzp2q_s32(v27, a6);
      *(a1 + 320) = vuzp1q_s32(a5, a7);
      a4 = vuzp2q_s32(a5, a7);
      *(a1 + 352) = a4;
      v28 = 64;
    }

    else
    {
      v28 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 32, v25, v26, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    }
  }

  else
  {
    v28 = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
  }

  v29 = v25 + v28;
  v30 = a3[5];
  if (a3[5])
  {
    if (v30 == 1)
    {
      a4 = vld1q_dup_s16(v29);
      *(a1 + 384) = a4;
      *(a1 + 416) = a4;
      *(a1 + 448) = a4;
      *(a1 + 480) = a4;
      v32 = 2;
    }

    else if (v30 == 63)
    {
      v31 = *v29;
      a5 = *(v29 + 16);
      a6 = *(v29 + 32);
      a7 = *(v29 + 48);
      *(a1 + 384) = vuzp1q_s32(*v29, a6);
      *(a1 + 416) = vuzp2q_s32(v31, a6);
      *(a1 + 448) = vuzp1q_s32(a5, a7);
      a4 = vuzp2q_s32(a5, a7);
      *(a1 + 480) = a4;
      v32 = 64;
    }

    else
    {
      v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 384), 32, v29, v30, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    }
  }

  else
  {
    v32 = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
  }

  v33 = v29 + v32;
  v34 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_57;
  }

  if (v34 == 1)
  {
    a4 = vld1q_dup_s16(v33);
    *(a1 + 272) = a4;
    *(a1 + 304) = a4;
    *(a1 + 336) = a4;
    *(a1 + 368) = a4;
    result = 2;
    v37 = a3[7];
    if (!a3[7])
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v34 != 63)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 272), 32, v33, v34, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
    v37 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_57:
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

  v35 = *v33;
  a5 = *(v33 + 16);
  a6 = *(v33 + 32);
  a7 = *(v33 + 48);
  *(a1 + 272) = vuzp1q_s32(*v33, a6);
  *(a1 + 304) = vuzp2q_s32(v35, a6);
  *(a1 + 336) = vuzp1q_s32(a5, a7);
  a4 = vuzp2q_s32(a5, a7);
  *(a1 + 368) = a4;
  result = 64;
  v37 = a3[7];
  if (!a3[7])
  {
    goto LABEL_57;
  }

LABEL_51:
  v38 = v33 + result;
  if (v37 == 1)
  {
    v43 = vld1q_dup_s16(v38);
    *(a1 + 400) = v43;
    *(a1 + 432) = v43;
    *(a1 + 464) = v43;
    goto LABEL_55;
  }

  if (v37 == 63)
  {
    v39 = *v38;
    v40 = *(v38 + 16);
    v41 = *(v38 + 32);
    v42 = *(v38 + 48);
    *(a1 + 400) = vuzp1q_s32(*v38, v41);
    *(a1 + 432) = vuzp2q_s32(v39, v41);
    *(a1 + 464) = vuzp1q_s32(v40, v42);
    v43 = vuzp2q_s32(v40, v42);
LABEL_55:
    *(a1 + 496) = v43;
    return result;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 400), 32, v38, v37, a4.n128_f64[0], *a5.i64, *a6.i64, *a7.i8);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = *(a3 + a4);
  v15 = vzip1q_s32(*a3, v14);
  v16 = vzip2q_s32(*a3, v14);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = *v17;
  v20 = vzip1q_s32(*v17, v18);
  v21 = vzip2q_s32(*v17, v18);
  v22 = vdupq_lane_s16(*v15.i8, 0);
  v23 = vsubq_s16(v15, v22);
  v24 = vsubq_s16(v20, v22);
  v25 = vsubq_s16(v16, v22);
  v26 = vsubq_s16(v21, v22);
  v18.i16[0] = vmaxvq_s16(v23);
  v27 = vdupq_lane_s16(*v18.i8, 0);
  v19.i16[0] = vminvq_s16(v23);
  v28 = vdupq_lane_s16(*v19.i8, 0);
  v29.i64[0] = 0x8000800080008000;
  v29.i64[1] = 0x8000800080008000;
  v30 = vmaxq_s16(v27, v29);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vminq_s16(v28, v31);
  v33 = vzip1q_s16(v27, v28);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v33)), vceqzq_s16(v33));
  v36 = vpmaxq_s16(v35, v35);
  v35.i16[0] = vmaxvq_s16(v24);
  a14.i16[0] = vminvq_s16(v24);
  v37 = vdupq_lane_s16(*v35.i8, 0);
  v38 = vdupq_lane_s16(a14, 0);
  v39 = vmaxq_s16(v30, v37);
  v40 = vminq_s16(v32, v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v41)), vceqzq_s16(v41));
  v43 = vpmaxq_s16(v42, v42);
  v42.i16[0] = vmaxvq_s16(v25);
  v38.i16[0] = vminvq_s16(v25);
  v44 = vdupq_lane_s16(*v42.i8, 0);
  v45 = vdupq_lane_s16(*v38.i8, 0);
  v46 = vmaxq_s16(v39, v44);
  v47 = vminq_s16(v40, v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vpmaxq_s16(v49, v49);
  v49.i16[0] = vmaxvq_s16(v26);
  v45.i16[0] = vminvq_s16(v26);
  v51 = vdupq_lane_s16(*v49.i8, 0);
  v52 = vdupq_lane_s16(*v45.i8, 0);
  v53 = vmaxq_s16(v46, v51);
  v54 = vminq_s16(v47, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v56, v56);
  v58 = vmaxq_s16(vmaxq_s16(v36, v43), vmaxq_s16(v50, v57));
  v59 = vclzq_s16(vsubq_s16(v53, v54));
  v60 = vsubq_s16(v34, v59);
  v61 = vminq_s16(v60, v58);
  if (vmaxvq_s16(v61))
  {
    v62 = 0;
    v63 = 0;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65.i64[0] = 0xF000F000F000FLL;
    v65.i64[1] = 0xF000F000F000FLL;
    v66 = vcgtq_s16(v58, v60);
    v67 = vandq_s8(vsubq_s16(vshlq_s16(v64, vsubq_s16(v65, v59)), v54), v66);
    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69.i64[0] = 0x3000300030003;
    v69.i64[1] = 0x3000300030003;
    v70 = vorrq_s8(vandq_s8(vceqzq_s16(v61), v69), vandq_s8(v66, v68));
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v36), v69), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v43), v69), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v50), v69), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v57), v69), 0);
    v75 = vsubq_s16(v61, v71);
    v76 = vsubq_s16(v61, v72);
    v77 = vsubq_s16(v61, v73);
    v78 = vsubq_s16(v61, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v72.i64[0] = 0x4000400040004;
    v72.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v72, v79);
    v81 = vorrq_s8(v80, v70);
    if (a5 >= 4 && a6 >= 2)
    {
      v376 = v20;
      v368 = v21;
      v369 = v16;
      v372 = v67;
      v82 = v15.u16[1] - v15.u16[0];
      v83 = 0x302030201000100;
      v84.i64[0] = 0xFFFFFFFF00000000;
      v84.i64[1] = 0xFFFFFFFF00000000;
      v85 = vmlal_s8(vandq_s8(vdupq_n_s16((v15.i8[4] - v15.i8[0])), v84), vdup_n_s8(v82), 0x302030201000100);
      v86 = vsubq_s16(v23, v85);
      v87 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v15.i8[4] - v15.i8[0])), v24), v85);
      v88 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v82), v25), v85);
      v83.i16[0] = vmaxvq_s16(v86);
      v84.i16[0] = vminvq_s16(v86);
      v89 = vdupq_lane_s16(v83, 0);
      v90 = vdupq_lane_s16(*v84.i8, 0);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v15.i8[4] - v15.i8[0]) + 4 * v82)), v26), v85);
      v92.i64[0] = 0x8000800080008000;
      v92.i64[1] = 0x8000800080008000;
      v93 = vmaxq_s16(v89, v92);
      v85.i64[0] = 0x8000800080008000;
      v85.i64[1] = 0x8000800080008000;
      v94 = vminq_s16(v90, v85);
      v95 = vzip1q_s16(v89, v90);
      v96 = v78;
      v97.i64[0] = 0x10001000100010;
      v97.i64[1] = 0x10001000100010;
      v98 = v76;
      v99 = v77;
      v100 = vsubq_s16(v97, vclsq_s16(v95));
      v101 = vbicq_s8(v100, vceqzq_s16(v95));
      v100.i16[0] = vmaxvq_s16(v87);
      v65.i16[0] = vminvq_s16(v87);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v65.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v93, v102);
      v106 = vminq_s16(v94, v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v97, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = v26;
      v111 = vpmaxq_s16(v109, v109);
      v109.i16[0] = vmaxvq_s16(v88);
      v112 = vdupq_lane_s16(*v109.i8, 0);
      v108.i16[0] = vminvq_s16(v88);
      v113 = vdupq_lane_s16(*v108.i8, 0);
      v114 = vmaxq_s16(v105, v112);
      v115 = vminq_s16(v106, v113);
      v116 = vzip1q_s16(v112, v113);
      v117 = vsubq_s16(v97, vclsq_s16(v116));
      v118 = vbicq_s8(v117, vceqzq_s16(v116));
      v119 = vpmaxq_s16(v118, v118);
      v118.i16[0] = vmaxvq_s16(v91);
      v117.i16[0] = vminvq_s16(v91);
      v120 = vdupq_lane_s16(*v118.i8, 0);
      v121 = vdupq_lane_s16(*v117.i8, 0);
      v122 = vmaxq_s16(v114, v120);
      v123 = vminq_s16(v115, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v97, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v111), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v97, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v127.i64[0] = 0x3000300030003;
      v127.i64[1] = 0x3000300030003;
      v133 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v127), 0);
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v111), v127), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v127), 0);
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v127), 0);
      v137 = vsubq_s16(v132, v133);
      v138 = vsubq_s16(v132, v134);
      v139 = vsubq_s16(v132, v135);
      v140 = vsubq_s16(v132, v136);
      v141 = vceqq_s16(vaddq_s16(v136, v135), vnegq_s16(vaddq_s16(v133, v134)));
      v136.i64[0] = 0x4000400040004;
      v136.i64[1] = 0x4000400040004;
      v142 = vbicq_s8(v136, v141);
      v143 = v23;
      v144.i64[0] = 0x7000700070007;
      v144.i64[1] = 0x7000700070007;
      v145 = vandq_s8(v61, v66);
      v146 = vaddq_s16(v80, v80);
      v147 = vmulq_s16(v75, v144);
      v148 = vshlq_n_s16(vaddq_s16(vaddq_s16(v99, v98), v96), 3uLL);
      v149 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v147, v145), v148), v146), vaddq_s16(vaddq_s16(vmlaq_s16(vbslq_s8(v130, vaddq_s16(v132, v97), v97), v137, v144), vshlq_n_s16(vaddq_s16(vaddq_s16(v139, v138), v140), 3uLL)), vaddq_s16(v142, v142))), 0);
      v145.i16[0] = vaddvq_s16(v149);
      v150 = v145.u16[0];
      if (v145.i16[0])
      {
        v151.i64[0] = 0x2000200020002;
        v151.i64[1] = 0x2000200020002;
        v152.i64[0] = 0xA000A000A000ALL;
        v152.i64[1] = 0xA000A000A000ALL;
        v153 = vbslq_s8(v130, v152, v151);
        v146.i64[0] = -1;
        v146.i64[1] = -1;
        v154 = vorrq_s8(v142, v153);
        v153.i64[0] = 0xF000F000F000FLL;
        v153.i64[1] = 0xF000F000F000FLL;
        v155 = vcltzq_s16(vshlq_n_s16(v149, 0xFuLL));
        v23 = vbslq_s8(v155, v86, v143);
        v156 = vbslq_s8(v155, v87, v24);
        v157 = vbslq_s8(v155, v88, v25);
        v375 = vbslq_s8(v155, v91, v110);
        v75 = vbslq_s8(v155, v137, v75);
        v158 = vbslq_s8(v155, v138, v98);
        v159 = vbslq_s8(v155, v139, v99);
        v160 = vbslq_s8(v155, v140, v96);
        v67 = vbslq_s8(v155, vandq_s8(vsubq_s16(vshlq_s16(v146, vsubq_s16(v153, v128)), v123), v130), v372);
        v61 = vbslq_s8(v155, v132, v61);
        v81 = vbslq_s8(v155, v154, v81);
        v155.i64[0] = 0x7000700070007;
        v155.i64[1] = 0x7000700070007;
        v147 = vmulq_s16(v75, v155);
        v370 = v156;
        v371 = v159;
        v373 = v157;
        v374 = v160;
        v148 = vshlq_n_s16(vaddq_s16(vaddq_s16(v159, v158), v160), 3uLL);
        v76 = v158;
      }

      else
      {
        v370 = v24;
        v371 = v99;
        v373 = v25;
        v374 = v96;
        v375 = v110;
        v67 = v372;
        v76 = v98;
        v23 = v143;
      }

      v63 = ((v15.i8[2] - v15.i8[0]) | ((v15.i16[2] - v15.i16[0]) << 8));
      v162 = vsubq_s16(v15, vqtbl1q_s8(v15, xmmword_29D2F0F00));
      v163 = v376;
      v163.i16[7] = v15.i16[7];
      v164 = vsubq_s16(v376, vqtbl1q_s8(v163, xmmword_29D2F0F10));
      v21 = v368;
      v16 = v369;
      v165 = v369;
      v165.i16[7] = v15.i16[7];
      v166 = vsubq_s16(v369, vqtbl1q_s8(v165, xmmword_29D2F0F20));
      v167 = v368;
      v167.i16[7] = v15.i16[7];
      v168 = 0x100010001000F0ELL;
      v169 = v162;
      v169.i16[0] = v162.i16[7];
      v169.i16[7] = v162.i16[0];
      v162.i16[0] = vmaxvq_s16(v169);
      v168.i16[0] = vminvq_s16(v169);
      v170 = vdupq_lane_s16(*v162.i8, 0);
      v171 = vdupq_lane_s16(v168, 0);
      v172 = vsubq_s16(v368, vqtbl1q_s8(v167, xmmword_29D2F0F30));
      v167.i64[0] = 0x8000800080008000;
      v167.i64[1] = 0x8000800080008000;
      v173 = vmaxq_s16(v170, v167);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vminq_s16(v171, v174);
      v176 = vzip1q_s16(v170, v171);
      v177 = vsubq_s16(v97, vclsq_s16(v176));
      v178 = vbicq_s8(v177, vceqzq_s16(v176));
      v179 = vpmaxq_s16(v178, v178);
      v177.i16[0] = vmaxvq_s16(v164);
      v180 = vdupq_lane_s16(*v177.i8, 0);
      v146.i16[0] = vminvq_s16(v164);
      v181 = vdupq_lane_s16(*v146.i8, 0);
      v182 = vmaxq_s16(v173, v180);
      v183 = vminq_s16(v175, v181);
      v184 = vzip1q_s16(v180, v181);
      v185 = vsubq_s16(v97, vclsq_s16(v184));
      v186 = vbicq_s8(v185, vceqzq_s16(v184));
      v187 = vpmaxq_s16(v186, v186);
      v185.i16[0] = vmaxvq_s16(v166);
      v128.i16[0] = vminvq_s16(v166);
      v188 = vdupq_lane_s16(*v185.i8, 0);
      v189 = vdupq_lane_s16(*v128.i8, 0);
      v190 = vmaxq_s16(v182, v188);
      v191 = vminq_s16(v183, v189);
      v192 = vzip1q_s16(v188, v189);
      v193 = vsubq_s16(v97, vclsq_s16(v192));
      v194 = vbicq_s8(v193, vceqzq_s16(v192));
      v193.i16[0] = vmaxvq_s16(v172);
      v139.i16[0] = vminvq_s16(v172);
      v195 = vdupq_lane_s16(*v193.i8, 0);
      v196 = vdupq_lane_s16(*v139.i8, 0);
      v197 = vpmaxq_s16(v194, v194);
      v198 = vmaxq_s16(v190, v195);
      v199 = vminq_s16(v191, v196);
      v200 = vzip1q_s16(v195, v196);
      v201 = vbicq_s8(vsubq_s16(v97, vclsq_s16(v200)), vceqzq_s16(v200));
      v202 = vpmaxq_s16(v201, v201);
      v203 = vmaxq_s16(vmaxq_s16(v179, v187), vmaxq_s16(v197, v202));
      v204 = vclzq_s16(vsubq_s16(v198, v199));
      v205 = vsubq_s16(v97, v204);
      v206 = vcgtq_s16(v203, v205);
      v207 = vminq_s16(v205, v203);
      v208.i64[0] = 0x3000300030003;
      v208.i64[1] = 0x3000300030003;
      v209 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v179), v208), 0);
      v210 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v187), v208), 0);
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v197), v208), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v207, v202), v208), 0);
      v213 = vsubq_s16(v207, v209);
      v214 = vsubq_s16(v207, v210);
      v215 = vsubq_s16(v207, v211);
      v216 = vsubq_s16(v207, v212);
      v217 = vceqq_s16(vaddq_s16(v212, v211), vnegq_s16(vaddq_s16(v209, v210)));
      v210.i64[0] = 0x4000400040004;
      v210.i64[1] = 0x4000400040004;
      v218 = vbicq_s8(v210, v217);
      v212.i64[0] = 0x7000700070007;
      v212.i64[1] = 0x7000700070007;
      v219 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v207, v206), v213, v212), vshlq_n_s16(vaddq_s16(vaddq_s16(v215, v214), v216), 3uLL)), vaddq_s16(v218, v218));
      v217.i64[0] = 0x8000800080008;
      v217.i64[1] = 0x8000800080008;
      v220 = vbicq_s8(v61, vceqzq_s16(vandq_s8(v81, v217)));
      v221 = vandq_s8(vaddq_s16(v81, v81), v217);
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v220, v221), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v81, v208), v222), v97), v147)), v148), v219), 0);
      v220.i16[0] = vaddvq_s16(v223);
      v224 = v220.u16[0];
      if (v220.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v207), v222), vsubq_s16(vandq_s8(v206, v225), vmvnq_s8(v206))), v218);
        v225.i64[0] = 0xF000F000F000FLL;
        v225.i64[1] = 0xF000F000F000FLL;
        v228 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v225, v204)), v199), v206);
        v229 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v22.i16[0] = vbslq_s8(v229, vextq_s8(v15, v15, 0xEuLL), v22).u16[0];
        v23 = vbslq_s8(v229, v169, v23);
        v24 = vbslq_s8(v229, v164, v370);
        v25 = vbslq_s8(v229, v166, v373);
        v26 = vbslq_s8(v229, v172, v375);
        v75 = vbslq_s8(v229, v213, v75);
        v76 = vbslq_s8(v229, v214, v76);
        v77 = vbslq_s8(v229, v215, v371);
        v78 = vbslq_s8(v229, v216, v374);
        v67 = vbslq_s8(v229, v228, v67);
        v61 = vbslq_s8(v229, v207, v61);
        v81 = vbslq_s8(v229, v227, v81);
      }

      else
      {
        v78 = v374;
        v26 = v375;
        v25 = v373;
        v24 = v370;
        v77 = v371;
      }

      if (v150)
      {
        v230 = v224 == 0;
      }

      else
      {
        v230 = 0;
      }

      v62 = v230;
      v20 = v376;
    }

    v231.i64[0] = 0x8000800080008;
    v231.i64[1] = 0x8000800080008;
    v232 = vandq_s8(v81, v231);
    v233.i64[0] = 0x3000300030003;
    v233.i64[1] = 0x3000300030003;
    v234.i64[0] = 0x2000200020002;
    v234.i64[1] = 0x2000200020002;
    v235 = vceqq_s16(vandq_s8(v81, v233), v234);
    v234.i64[0] = 0x10001000100010;
    v234.i64[1] = 0x10001000100010;
    if (((7 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0] + ((2 * v81.i16[0]) & 8) + vbicq_s8(v61, vceqzq_s16(v232)).u16[0] + vandq_s8(v235, v234).u16[0]) + 29) >= 0x200)
    {
      *a1 = v15;
      a1[1] = v20;
      v239 = 63;
      a1[2] = v16;
      a1[3] = v21;
      result = 64;
    }

    else
    {
      v236 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v237 = 8 * (a1 & 7);
      if (v237)
      {
        v238 = *v236 & ~(-1 << v237);
      }

      else
      {
        v238 = 0;
      }

      if (v61.i16[0])
      {
        v240 = (16 * v61.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v22.u16[0] << 8) | v81.i8[0] & 0xF) >> 2;
      v242 = (v241 << v237) | v238;
      if (v237 >= 0x2A)
      {
        *v236 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v237 + 22;
      v244 = vsubq_s16(v61, v75);
      v245 = vsubq_s16(v61, v76);
      v246 = vsubq_s16(v61, v77);
      v247 = vsubq_s16(v61, v78);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v237 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v236 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[1];
      v266 = v262.i64[0] + v243;
      v267 = v264 | (v261.i64[1] << v266);
      if ((v266 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v236 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v267;
        v267 = v261.i64[1] >> -(v266 & 0x3F);
        if ((v266 & 0x3F) == 0)
        {
          v267 = 0;
        }
      }

      v268 = vceqq_s16(v61, v75);
      v269 = v266 + v265;
      v270.i64[0] = -1;
      v270.i64[1] = -1;
      v271 = vandq_s8(vextq_s8(vtstq_s16(v232, v232), 0, 0xEuLL), v61);
      v272.i64[0] = 0xF000F000F000FLL;
      v272.i64[1] = 0xF000F000F000FLL;
      v273 = vandq_s8(vshlq_u16(v270, vaddq_s16(v271, v272)), v67);
      v274 = vmovl_u16(*v271.i8);
      v275 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v274)), vmovl_high_u16(v273));
      v276 = vpaddq_s32(v274, vmovl_high_u16(v271));
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
      v283 = (v281.i64[0] << v269) | v267;
      if (v282.i64[0] + (v269 & 0x3F) >= 0x40)
      {
        *(v236 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
        v283 = v281.i64[0] >> -(v269 & 0x3F);
        if ((v269 & 0x3F) == 0)
        {
          v283 = 0;
        }
      }

      v284 = vandq_s8(v67, v268);
      v285 = v282.i64[0] + v269;
      v286 = v283 | (v281.i64[1] << v285);
      if ((v285 & 0x3F) + v282.i64[1] >= 0x40)
      {
        *(v236 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v281.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = vceqq_s16(v61, v76);
      v288 = vaddq_s16(v284, v23);
      v289 = v285 + v282.i64[1];
      if (v62)
      {
        v286 |= v63 << v289;
        if ((v289 & 0x3F) >= 0x30)
        {
          *(v236 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
          v286 = v63 >> -(v289 & 0x3F);
        }

        v289 += 16;
      }

      v290 = vandq_s8(v67, v287);
      v291 = vextq_s8(0, v75, 0xEuLL);
      v292.i64[0] = 0xF000F000F000FLL;
      v292.i64[1] = 0xF000F000F000FLL;
      v293.i64[0] = -1;
      v293.i64[1] = -1;
      v294 = vandq_s8(vshlq_u16(v293, vaddq_s16(v291, v292)), v288);
      v295 = vmovl_u16(*v291.i8);
      v296 = vmovl_high_u16(v291);
      v297 = vpaddq_s32(vshlq_u32(vmovl_u16(*v294.i8), vtrn1q_s32(0, v295)), vshlq_u32(vmovl_high_u16(v294), vtrn1q_s32(0, v296)));
      v298 = vpaddq_s32(v295, v296);
      v299.i64[0] = v297.u32[0];
      v299.i64[1] = v297.u32[1];
      v300 = v299;
      v299.i64[0] = v297.u32[2];
      v299.i64[1] = v297.u32[3];
      v301 = v299;
      v299.i64[0] = v298.u32[0];
      v299.i64[1] = v298.u32[1];
      v302 = v299;
      v299.i64[0] = v298.u32[2];
      v299.i64[1] = v298.u32[3];
      v303 = vpaddq_s64(vshlq_u64(v300, vzip1q_s64(0, v302)), vshlq_u64(v301, vzip1q_s64(0, v299)));
      v304 = vpaddq_s64(v302, v299);
      v305 = (v303.i64[0] << v289) | v286;
      if (v304.i64[0] + (v289 & 0x3F) >= 0x40)
      {
        *(v236 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v303.i64[0] >> -(v289 & 0x3F);
        if ((v289 & 0x3F) == 0)
        {
          v305 = 0;
        }
      }

      v306 = vceqq_s16(v61, v77);
      v307 = vaddq_s16(v24, v290);
      v308 = v304.i64[0] + v289;
      v309 = (v304.i64[0] + v289) & 0x3F;
      v310 = v305 | (v303.i64[1] << v308);
      if ((v308 & 0x3F) + v304.i64[1] >= 0x40)
      {
        *(v236 + ((v308 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v303.i64[1] >> -v309;
        if (!v309)
        {
          v310 = 0;
        }
      }

      v311 = vandq_s8(v67, v306);
      v312 = v308 + v304.i64[1];
      v313.i64[0] = 0xF000F000F000FLL;
      v313.i64[1] = 0xF000F000F000FLL;
      v314.i64[0] = -1;
      v314.i64[1] = -1;
      v315 = vandq_s8(vshlq_u16(v314, vaddq_s16(v76, v313)), v307);
      v316 = vmovl_u16(*v76.i8);
      v317 = vmovl_high_u16(v76);
      v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v315.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v315), vtrn1q_s32(0, v317)));
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
      v326 = (v324.i64[0] << v312) | v310;
      if (v325.i64[0] + (v312 & 0x3F) >= 0x40)
      {
        *(v236 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v324.i64[0] >> -(v312 & 0x3F);
        if ((v312 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = vceqq_s16(v61, v78);
      v328 = vaddq_s16(v25, v311);
      v329 = v325.i64[0] + v312;
      v330 = v326 | (v324.i64[1] << v329);
      if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
      {
        *(v236 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
        v330 = v324.i64[1] >> -(v329 & 0x3F);
        if ((v329 & 0x3F) == 0)
        {
          v330 = 0;
        }
      }

      v331 = vandq_s8(v67, v327);
      v332 = v329 + v325.i64[1];
      v333.i64[0] = 0xF000F000F000FLL;
      v333.i64[1] = 0xF000F000F000FLL;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v77, v333)), v328);
      v336 = vmovl_u16(*v77.i8);
      v337 = vmovl_high_u16(v77);
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
      v346 = (v344.i64[0] << v332) | v330;
      if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
      {
        *(v236 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v344.i64[0] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = vaddq_s16(v26, v331);
      v348 = v345.i64[0] + v332;
      v349 = v346 | (v344.i64[1] << v348);
      if ((v348 & 0x3F) + v345.i64[1] >= 0x40)
      {
        *(v236 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v344.i64[1] >> -(v348 & 0x3F);
        if ((v348 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = v348 + v345.i64[1];
      v351.i64[0] = 0xF000F000F000FLL;
      v351.i64[1] = 0xF000F000F000FLL;
      v352.i64[0] = -1;
      v352.i64[1] = -1;
      v353 = vandq_s8(vshlq_u16(v352, vaddq_s16(v78, v351)), v347);
      v354 = vmovl_u16(*v78.i8);
      v355 = vmovl_high_u16(v78);
      v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v353.i8), vtrn1q_s32(0, v354)), vshlq_u32(vmovl_high_u16(v353), vtrn1q_s32(0, v355)));
      v357 = vpaddq_s32(v354, v355);
      v358.i64[0] = v356.u32[0];
      v358.i64[1] = v356.u32[1];
      v359 = v358;
      v358.i64[0] = v356.u32[2];
      v358.i64[1] = v356.u32[3];
      v360 = v358;
      v358.i64[0] = v357.u32[0];
      v358.i64[1] = v357.u32[1];
      v361 = v358;
      v358.i64[0] = v357.u32[2];
      v358.i64[1] = v357.u32[3];
      v362 = vpaddq_s64(vshlq_u64(v359, vzip1q_s64(0, v361)), vshlq_u64(v360, vzip1q_s64(0, v358)));
      v363 = vpaddq_s64(v361, v358);
      v364 = (v362.i64[0] << v350) | v349;
      if (v363.i64[0] + (v350 & 0x3F) > 0x3F)
      {
        *(v236 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        if ((v350 & 0x3F) != 0)
        {
          v364 = v362.i64[0] >> -(v350 & 0x3F);
        }

        else
        {
          v364 = 0;
        }
      }

      v365 = v363.i64[0] + v350;
      v366 = v364 | (v362.i64[1] << v365);
      if ((v365 & 0x3F) + v363.i64[1] >= 0x40)
      {
        *(v236 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        v366 = v362.i64[1] >> -(v365 & 0x3F);
        if ((v365 & 0x3F) == 0)
        {
          v366 = 0;
        }
      }

      v367 = v365 + v363.i64[1];
      if ((v367 & 0x3F) != 0)
      {
        *(v236 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      }

      result = (v367 - v237 + 7) >> 3;
      v239 = *a2 | (result - 1);
    }

    *a2 = v239;
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    result = 2;
    *a2 = 1;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x8_t *a3, char *a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
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

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    *a4 = 0;
  }

  v20 = 4 * a2;
  v21 = v14 - 4;
  if (v15 && v14 >= 5)
  {
    if (v21 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v14 - 4;
    }

    if (v15 >= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 1, (v19 + v20), a2, v23, v22, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v24 = v15 - 8;
  if (v15 >= 9 && v14)
  {
    if (v14 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v14;
    }

    if (v24 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 2, v19 + 1, a2, v26, v25, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
  }

  else
  {
    a4[2] = 0;
    if (v15 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v14 >= 5)
  {
    if (v21 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v14 - 4;
    }

    if (v24 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 3, (v19 + v20 + 16), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    v29 = v14 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v29 = v14 - 8;
  if (!v15)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v14 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v32 = v14 - 12;
    if (!v15)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v29 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v29;
  }

  if (v15 >= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v15;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 4, (v19 + 8 * a2), a2, v31, v30, a7, a8, a9, a10, a11, a12, a13, a14);
  v17 = (v17 + result);
  v32 = v14 - 12;
LABEL_47:
  if (v14 >= 0xD)
  {
    if (v32 >= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = v32;
    }

    if (v15 >= 8)
    {
      v34 = 8;
    }

    else
    {
      v34 = v15;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 5, (v19 + 12 * a2), a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    if (v15 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v15 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v14 >= 9)
  {
    if (v29 >= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v29;
    }

    if (v24 >= 8)
    {
      v36 = 8;
    }

    else
    {
      v36 = v15 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 6, (v19 + 8 * a2 + 16), a2, v36, v35, a7, a8, a9, a10, a11, a12, a13, a14);
    v17 = (v17 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v15 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v14 < 0xD)
  {
    goto LABEL_76;
  }

  if (v32 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = v32;
  }

  if (v24 >= 8)
  {
    v38 = 8;
  }

  else
  {
    v38 = v15 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v17, a4 + 7, (v19 + 12 * a2 + 16), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, int64x2_t a5, __n128 a6, __n128 a7)
{
  v10 = *a3;
  if (v10 == 63)
  {
    v12 = *a2;
    a5 = *(a2 + 16);
    v13 = (a2 + 32);
    *a6.n128_u64 = vld2q_f64(v13);
    *a1 = vzip1q_s64(*a2, a5);
    a4 = vzip2q_s64(v12, a5);
    *(a1 + 64) = a4;
    *(a1 + 128) = a6;
    *(a1 + 192) = a7;
    v11 = 64;
  }

  else if (v10 == 1)
  {
    a4 = vld1q_dup_s16(a2);
    *a1 = a4;
    *(a1 + 64) = a4;
    *(a1 + 128) = a4;
    *(a1 + 192) = a4;
    v11 = 2;
  }

  else if (*a3)
  {
    v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 64, a2, v10, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
  }

  else
  {
    v11 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  v14 = a2 + v11;
  v15 = a3[1];
  if (a3[1])
  {
    if (v15 == 1)
    {
      a4 = vld1q_dup_s16(v14);
      *(a1 + 16) = a4;
      *(a1 + 80) = a4;
      *(a1 + 144) = a4;
      *(a1 + 208) = a4;
      v18 = 2;
    }

    else if (v15 == 63)
    {
      v16 = *v14;
      a5 = *(v14 + 16);
      v17 = (v14 + 32);
      *a6.n128_u64 = vld2q_f64(v17);
      *(a1 + 16) = vzip1q_s64(*v14, a5);
      a4 = vzip2q_s64(v16, a5);
      *(a1 + 80) = a4;
      *(a1 + 144) = a6;
      *(a1 + 208) = a7;
      v18 = 64;
    }

    else
    {
      v18 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 64, v14, v15, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v18 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  v19 = v14 + v18;
  v20 = a3[2];
  if (a3[2])
  {
    if (v20 == 1)
    {
      a4 = vld1q_dup_s16(v19);
      *(a1 + 256) = a4;
      *(a1 + 320) = a4;
      *(a1 + 384) = a4;
      *(a1 + 448) = a4;
      v23 = 2;
    }

    else if (v20 == 63)
    {
      v21 = *v19;
      a5 = *(v19 + 16);
      v22 = (v19 + 32);
      *a6.n128_u64 = vld2q_f64(v22);
      *(a1 + 256) = vzip1q_s64(*v19, a5);
      a4 = vzip2q_s64(v21, a5);
      *(a1 + 320) = a4;
      *(a1 + 384) = a6;
      *(a1 + 448) = a7;
      v23 = 64;
    }

    else
    {
      v23 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 64, v19, v20, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v23 = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
  }

  v24 = v19 + v23;
  v25 = a3[3];
  if (a3[3])
  {
    if (v25 == 1)
    {
      a4 = vld1q_dup_s16(v24);
      *(a1 + 272) = a4;
      *(a1 + 336) = a4;
      *(a1 + 400) = a4;
      *(a1 + 464) = a4;
      v28 = 2;
    }

    else if (v25 == 63)
    {
      v26 = *v24;
      a5 = *(v24 + 16);
      v27 = (v24 + 32);
      *a6.n128_u64 = vld2q_f64(v27);
      *(a1 + 272) = vzip1q_s64(*v24, a5);
      a4 = vzip2q_s64(v26, a5);
      *(a1 + 336) = a4;
      *(a1 + 400) = a6;
      *(a1 + 464) = a7;
      v28 = 64;
    }

    else
    {
      v28 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 272), 64, v24, v25, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v28 = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  v29 = v24 + v28;
  v30 = a3[4];
  if (a3[4])
  {
    if (v30 == 1)
    {
      a4 = vld1q_dup_s16(v29);
      *(a1 + 32) = a4;
      *(a1 + 96) = a4;
      *(a1 + 160) = a4;
      *(a1 + 224) = a4;
      v33 = 2;
    }

    else if (v30 == 63)
    {
      v31 = *v29;
      a5 = *(v29 + 16);
      v32 = (v29 + 32);
      *a6.n128_u64 = vld2q_f64(v32);
      *(a1 + 32) = vzip1q_s64(*v29, a5);
      a4 = vzip2q_s64(v31, a5);
      *(a1 + 96) = a4;
      *(a1 + 160) = a6;
      *(a1 + 224) = a7;
      v33 = 64;
    }

    else
    {
      v33 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 64, v29, v30, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v33 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v34 = v29 + v33;
  v35 = a3[5];
  if (a3[5])
  {
    if (v35 == 1)
    {
      a4 = vld1q_dup_s16(v34);
      *(a1 + 48) = a4;
      *(a1 + 112) = a4;
      *(a1 + 176) = a4;
      *(a1 + 240) = a4;
      v38 = 2;
    }

    else if (v35 == 63)
    {
      v36 = *v34;
      a5 = *(v34 + 16);
      v37 = (v34 + 32);
      *a6.n128_u64 = vld2q_f64(v37);
      *(a1 + 48) = vzip1q_s64(*v34, a5);
      a4 = vzip2q_s64(v36, a5);
      *(a1 + 112) = a4;
      *(a1 + 176) = a6;
      *(a1 + 240) = a7;
      v38 = 64;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 48), 64, v34, v35, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    }
  }

  else
  {
    v38 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  v39 = v34 + v38;
  v40 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    v44 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (v40 == 1)
  {
    a4 = vld1q_dup_s16(v39);
    *(a1 + 288) = a4;
    *(a1 + 352) = a4;
    *(a1 + 416) = a4;
    *(a1 + 480) = a4;
    result = 2;
    v44 = a3[7];
    if (!a3[7])
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v40 != 63)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 64, v39, v40, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
    v44 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_56:
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

  v41 = *v39;
  a5 = *(v39 + 16);
  v42 = (v39 + 32);
  *a6.n128_u64 = vld2q_f64(v42);
  *(a1 + 288) = vzip1q_s64(*v39, a5);
  a4 = vzip2q_s64(v41, a5);
  *(a1 + 352) = a4;
  *(a1 + 416) = a6;
  *(a1 + 480) = a7;
  result = 64;
  v44 = a3[7];
  if (!a3[7])
  {
    goto LABEL_56;
  }

LABEL_51:
  v45 = v39 + result;
  if (v44 == 1)
  {
    v49 = vld1q_dup_s16(v45);
    *(a1 + 304) = v49;
    *(a1 + 368) = v49;
    *(a1 + 432) = v49;
    *(a1 + 496) = v49;
  }

  else if (v44 == 63)
  {
    v46 = *v45;
    v47 = *(v45 + 16);
    v48 = (v45 + 32);
    v51 = vld2q_f64(v48);
    *(a1 + 304) = vzip1q_s64(*v45, v47);
    *(a1 + 368) = vzip2q_s64(v46, v47);
    *(a1 + 432) = v51.val[0];
    *(a1 + 496) = v51.val[1];
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 304), 64, v45, v44, a4.n128_f64[0], *a5.i64, a6.n128_f64[0], a7.n128_u64[0]);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v14 = *(a3 + a4);
  v15 = vzip1q_s64(*a3, v14);
  v16 = vzip2q_s64(*a3, v14);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = *v17;
  v20 = vzip1q_s64(*v17, v18);
  v21 = vzip2q_s64(*v17, v18);
  v22 = vdupq_lane_s16(*v15.i8, 0);
  v23 = vsubq_s16(v15, v22);
  v24 = vsubq_s16(v16, v22);
  v25 = vsubq_s16(v20, v22);
  v26 = vsubq_s16(v21, v22);
  v18.i16[0] = vmaxvq_s16(v23);
  v27 = vdupq_lane_s16(*v18.i8, 0);
  v19.i16[0] = vminvq_s16(v23);
  v28 = vdupq_lane_s16(*v19.i8, 0);
  v29.i64[0] = 0x8000800080008000;
  v29.i64[1] = 0x8000800080008000;
  v30 = vmaxq_s16(v27, v29);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vminq_s16(v28, v31);
  v33 = vzip1q_s16(v27, v28);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v33)), vceqzq_s16(v33));
  v36 = vpmaxq_s16(v35, v35);
  v35.i16[0] = vmaxvq_s16(v24);
  a14.i16[0] = vminvq_s16(v24);
  v37 = vdupq_lane_s16(*v35.i8, 0);
  v38 = vdupq_lane_s16(a14, 0);
  v39 = vmaxq_s16(v30, v37);
  v40 = vminq_s16(v32, v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v41)), vceqzq_s16(v41));
  v43 = vpmaxq_s16(v42, v42);
  v42.i16[0] = vmaxvq_s16(v25);
  v38.i16[0] = vminvq_s16(v25);
  v44 = vdupq_lane_s16(*v42.i8, 0);
  v45 = vdupq_lane_s16(*v38.i8, 0);
  v46 = vmaxq_s16(v39, v44);
  v47 = vminq_s16(v40, v45);
  v48 = vzip1q_s16(v44, v45);
  v49 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v48)), vceqzq_s16(v48));
  v50 = vpmaxq_s16(v49, v49);
  v49.i16[0] = vmaxvq_s16(v26);
  v45.i16[0] = vminvq_s16(v26);
  v51 = vdupq_lane_s16(*v49.i8, 0);
  v52 = vdupq_lane_s16(*v45.i8, 0);
  v53 = vmaxq_s16(v46, v51);
  v54 = vminq_s16(v47, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v56, v56);
  v58 = vmaxq_s16(vmaxq_s16(v36, v43), vmaxq_s16(v50, v57));
  v59 = vclzq_s16(vsubq_s16(v53, v54));
  v60 = vsubq_s16(v34, v59);
  v61 = vminq_s16(v60, v58);
  if (vmaxvq_s16(v61))
  {
    v62 = 0;
    v63 = 0;
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65.i64[0] = 0xF000F000F000FLL;
    v65.i64[1] = 0xF000F000F000FLL;
    v66 = vcgtq_s16(v58, v60);
    v67 = vandq_s8(vsubq_s16(vshlq_s16(v64, vsubq_s16(v65, v59)), v54), v66);
    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69.i64[0] = 0x3000300030003;
    v69.i64[1] = 0x3000300030003;
    v70 = vorrq_s8(vandq_s8(vceqzq_s16(v61), v69), vandq_s8(v66, v68));
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v36), v69), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v43), v69), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v50), v69), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v61, v57), v69), 0);
    v75 = vsubq_s16(v61, v71);
    v76 = vsubq_s16(v61, v72);
    v77 = vsubq_s16(v61, v73);
    v78 = vsubq_s16(v61, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v72.i64[0] = 0x4000400040004;
    v72.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v72, v79);
    v81 = vorrq_s8(v80, v70);
    if (a5 >= 2 && a6 >= 2)
    {
      v374 = v16;
      v366 = v21;
      v367 = v20;
      v370 = v67;
      v82 = v15.u16[1] - v15.u16[0];
      v83 = 0x302030201000100;
      v84.i64[0] = 0xFFFFFFFF00000000;
      v84.i64[1] = 0xFFFFFFFF00000000;
      v85 = vmlal_s8(vandq_s8(vdupq_n_s16((v15.i8[4] - v15.i8[0])), v84), vdup_n_s8(v82), 0x302030201000100);
      v86 = vsubq_s16(v23, v85);
      v87 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v15.i8[4] - v15.i8[0])), v24), v85);
      v88 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v82), v25), v85);
      v83.i16[0] = vmaxvq_s16(v86);
      v84.i16[0] = vminvq_s16(v86);
      v89 = vdupq_lane_s16(v83, 0);
      v90 = vdupq_lane_s16(*v84.i8, 0);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v15.i8[4] - v15.i8[0]) + 4 * v82)), v26), v85);
      v92.i64[0] = 0x8000800080008000;
      v92.i64[1] = 0x8000800080008000;
      v93 = vmaxq_s16(v89, v92);
      v85.i64[0] = 0x8000800080008000;
      v85.i64[1] = 0x8000800080008000;
      v94 = vminq_s16(v90, v85);
      v95 = vzip1q_s16(v89, v90);
      v96 = v78;
      v97.i64[0] = 0x10001000100010;
      v97.i64[1] = 0x10001000100010;
      v98 = v77;
      v99 = vsubq_s16(v97, vclsq_s16(v95));
      v100 = vbicq_s8(v99, vceqzq_s16(v95));
      v99.i16[0] = vmaxvq_s16(v87);
      v65.i16[0] = vminvq_s16(v87);
      v101 = vdupq_lane_s16(*v99.i8, 0);
      v102 = vdupq_lane_s16(*v65.i8, 0);
      v103 = vpmaxq_s16(v100, v100);
      v104 = vmaxq_s16(v93, v101);
      v105 = vminq_s16(v94, v102);
      v106 = vzip1q_s16(v101, v102);
      v107 = vsubq_s16(v97, vclsq_s16(v106));
      v108 = vbicq_s8(v107, vceqzq_s16(v106));
      v109 = v26;
      v110 = vpmaxq_s16(v108, v108);
      v108.i16[0] = vmaxvq_s16(v88);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v107.i16[0] = vminvq_s16(v88);
      v112 = vdupq_lane_s16(*v107.i8, 0);
      v113 = vmaxq_s16(v104, v111);
      v114 = vminq_s16(v105, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v97, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v91);
      v116.i16[0] = vminvq_s16(v91);
      v119 = vdupq_lane_s16(*v117.i8, 0);
      v120 = vdupq_lane_s16(*v116.i8, 0);
      v121 = vmaxq_s16(v113, v119);
      v122 = vminq_s16(v114, v120);
      v123 = vzip1q_s16(v119, v120);
      v124 = vbicq_s8(vsubq_s16(v97, vclsq_s16(v123)), vceqzq_s16(v123));
      v125 = vpmaxq_s16(v124, v124);
      v126 = vmaxq_s16(vmaxq_s16(v103, v110), vmaxq_s16(v118, v125));
      v127 = vclzq_s16(vsubq_s16(v121, v122));
      v128 = vsubq_s16(v97, v127);
      v129 = vcgtq_s16(v126, v128);
      v130 = vminq_s16(v128, v126);
      v126.i64[0] = 0x1000100010001;
      v126.i64[1] = 0x1000100010001;
      v131 = vmaxq_s16(v130, v126);
      v126.i64[0] = 0x3000300030003;
      v126.i64[1] = 0x3000300030003;
      v132 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v103), v126), 0);
      v133 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v110), v126), 0);
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v118), v126), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v131, v125), v126), 0);
      v136 = vsubq_s16(v131, v132);
      v137 = vsubq_s16(v131, v133);
      v138 = vsubq_s16(v131, v134);
      v139 = vsubq_s16(v131, v135);
      v140 = vceqq_s16(vaddq_s16(v135, v134), vnegq_s16(vaddq_s16(v132, v133)));
      v135.i64[0] = 0x4000400040004;
      v135.i64[1] = 0x4000400040004;
      v141 = vbicq_s8(v135, v140);
      v142 = v23;
      v143.i64[0] = 0x7000700070007;
      v143.i64[1] = 0x7000700070007;
      v144 = vandq_s8(v61, v66);
      v145 = vaddq_s16(v80, v80);
      v146 = vmulq_s16(v75, v143);
      v147 = vshlq_n_s16(vaddq_s16(vaddq_s16(v98, v76), v96), 3uLL);
      v148 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v146, v144), v147), v145), vaddq_s16(vaddq_s16(vmlaq_s16(vbslq_s8(v129, vaddq_s16(v131, v97), v97), v136, v143), vshlq_n_s16(vaddq_s16(vaddq_s16(v138, v137), v139), 3uLL)), vaddq_s16(v141, v141))), 0);
      v144.i16[0] = vaddvq_s16(v148);
      v149 = v144.u16[0];
      if (v144.i16[0])
      {
        v150.i64[0] = 0x2000200020002;
        v150.i64[1] = 0x2000200020002;
        v151.i64[0] = 0xA000A000A000ALL;
        v151.i64[1] = 0xA000A000A000ALL;
        v152 = vbslq_s8(v129, v151, v150);
        v145.i64[0] = -1;
        v145.i64[1] = -1;
        v153 = vorrq_s8(v141, v152);
        v152.i64[0] = 0xF000F000F000FLL;
        v152.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v148, 0xFuLL));
        v23 = vbslq_s8(v154, v86, v142);
        v155 = vbslq_s8(v154, v87, v24);
        v156 = vbslq_s8(v154, v88, v25);
        v373 = vbslq_s8(v154, v91, v109);
        v75 = vbslq_s8(v154, v136, v75);
        v76 = vbslq_s8(v154, v137, v76);
        v157 = vbslq_s8(v154, v138, v98);
        v158 = vbslq_s8(v154, v139, v96);
        v67 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v145, vsubq_s16(v152, v127)), v122), v129), v370);
        v61 = vbslq_s8(v154, v131, v61);
        v81 = vbslq_s8(v154, v153, v81);
        v154.i64[0] = 0x7000700070007;
        v154.i64[1] = 0x7000700070007;
        v146 = vmulq_s16(v75, v154);
        v368 = v155;
        v369 = v157;
        v371 = v156;
        v372 = v158;
        v147 = vshlq_n_s16(vaddq_s16(vaddq_s16(v157, v76), v158), 3uLL);
      }

      else
      {
        v368 = v24;
        v369 = v98;
        v371 = v25;
        v372 = v96;
        v373 = v109;
        v67 = v370;
        v23 = v142;
      }

      v63 = ((v15.i8[2] - v15.i8[0]) | ((v15.i16[2] - v15.i16[0]) << 8));
      v160 = vsubq_s16(v15, vqtbl1q_s8(v15, xmmword_29D2F0F00));
      v161 = v374;
      v161.i16[7] = v15.i16[7];
      v162 = vsubq_s16(v374, vqtbl1q_s8(v161, xmmword_29D2F0F10));
      v21 = v366;
      v20 = v367;
      v163 = v367;
      v163.i16[7] = v15.i16[7];
      v164 = vsubq_s16(v367, vqtbl1q_s8(v163, xmmword_29D2F0F20));
      v165 = v366;
      v165.i16[7] = v15.i16[7];
      v166 = 0x100010001000F0ELL;
      v167 = v160;
      v167.i16[0] = v160.i16[7];
      v167.i16[7] = v160.i16[0];
      v160.i16[0] = vmaxvq_s16(v167);
      v166.i16[0] = vminvq_s16(v167);
      v168 = vdupq_lane_s16(*v160.i8, 0);
      v169 = vdupq_lane_s16(v166, 0);
      v170 = vsubq_s16(v366, vqtbl1q_s8(v165, xmmword_29D2F0F30));
      v165.i64[0] = 0x8000800080008000;
      v165.i64[1] = 0x8000800080008000;
      v171 = vmaxq_s16(v168, v165);
      v172.i64[0] = 0x8000800080008000;
      v172.i64[1] = 0x8000800080008000;
      v173 = vminq_s16(v169, v172);
      v174 = vzip1q_s16(v168, v169);
      v175 = vsubq_s16(v97, vclsq_s16(v174));
      v176 = vbicq_s8(v175, vceqzq_s16(v174));
      v177 = vpmaxq_s16(v176, v176);
      v175.i16[0] = vmaxvq_s16(v162);
      v178 = vdupq_lane_s16(*v175.i8, 0);
      v145.i16[0] = vminvq_s16(v162);
      v179 = vdupq_lane_s16(*v145.i8, 0);
      v180 = vmaxq_s16(v171, v178);
      v181 = vminq_s16(v173, v179);
      v182 = vzip1q_s16(v178, v179);
      v183 = vsubq_s16(v97, vclsq_s16(v182));
      v184 = vbicq_s8(v183, vceqzq_s16(v182));
      v185 = vpmaxq_s16(v184, v184);
      v183.i16[0] = vmaxvq_s16(v164);
      v127.i16[0] = vminvq_s16(v164);
      v186 = vdupq_lane_s16(*v183.i8, 0);
      v187 = vdupq_lane_s16(*v127.i8, 0);
      v188 = vmaxq_s16(v180, v186);
      v189 = vminq_s16(v181, v187);
      v190 = vzip1q_s16(v186, v187);
      v191 = vsubq_s16(v97, vclsq_s16(v190));
      v192 = vbicq_s8(v191, vceqzq_s16(v190));
      v191.i16[0] = vmaxvq_s16(v170);
      v138.i16[0] = vminvq_s16(v170);
      v193 = vdupq_lane_s16(*v191.i8, 0);
      v194 = vdupq_lane_s16(*v138.i8, 0);
      v195 = vpmaxq_s16(v192, v192);
      v196 = vmaxq_s16(v188, v193);
      v197 = vminq_s16(v189, v194);
      v198 = vzip1q_s16(v193, v194);
      v199 = vbicq_s8(vsubq_s16(v97, vclsq_s16(v198)), vceqzq_s16(v198));
      v200 = vpmaxq_s16(v199, v199);
      v201 = vmaxq_s16(vmaxq_s16(v177, v185), vmaxq_s16(v195, v200));
      v202 = vclzq_s16(vsubq_s16(v196, v197));
      v203 = vsubq_s16(v97, v202);
      v204 = vcgtq_s16(v201, v203);
      v205 = vminq_s16(v203, v201);
      v206.i64[0] = 0x3000300030003;
      v206.i64[1] = 0x3000300030003;
      v207 = vmaxq_s16(vminq_s16(vsubq_s16(v205, v177), v206), 0);
      v208 = vmaxq_s16(vminq_s16(vsubq_s16(v205, v185), v206), 0);
      v209 = vmaxq_s16(vminq_s16(vsubq_s16(v205, v195), v206), 0);
      v210 = vmaxq_s16(vminq_s16(vsubq_s16(v205, v200), v206), 0);
      v211 = vsubq_s16(v205, v207);
      v212 = vsubq_s16(v205, v208);
      v213 = vsubq_s16(v205, v209);
      v214 = vsubq_s16(v205, v210);
      v215 = vceqq_s16(vaddq_s16(v210, v209), vnegq_s16(vaddq_s16(v207, v208)));
      v208.i64[0] = 0x4000400040004;
      v208.i64[1] = 0x4000400040004;
      v216 = vbicq_s8(v208, v215);
      v210.i64[0] = 0x7000700070007;
      v210.i64[1] = 0x7000700070007;
      v217 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v205, v204), v211, v210), vshlq_n_s16(vaddq_s16(vaddq_s16(v213, v212), v214), 3uLL)), vaddq_s16(v216, v216));
      v215.i64[0] = 0x8000800080008;
      v215.i64[1] = 0x8000800080008;
      v218 = vbicq_s8(v61, vceqzq_s16(vandq_s8(v81, v215)));
      v219 = vandq_s8(vaddq_s16(v81, v81), v215);
      v220.i64[0] = 0x2000200020002;
      v220.i64[1] = 0x2000200020002;
      v221 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v218, v219), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v81, v206), v220), v97), v146)), v147), v217), 0);
      v218.i16[0] = vaddvq_s16(v221);
      v222 = v218.u16[0];
      if (v218.i16[0])
      {
        v223.i64[0] = 0x9000900090009;
        v223.i64[1] = 0x9000900090009;
        v224.i64[0] = -1;
        v224.i64[1] = -1;
        v225 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v205), v220), vsubq_s16(vandq_s8(v204, v223), vmvnq_s8(v204))), v216);
        v223.i64[0] = 0xF000F000F000FLL;
        v223.i64[1] = 0xF000F000F000FLL;
        v226 = vandq_s8(vsubq_s16(vshlq_s16(v224, vsubq_s16(v223, v202)), v197), v204);
        v227 = vcltzq_s16(vshlq_n_s16(v221, 0xFuLL));
        v22.i16[0] = vbslq_s8(v227, vextq_s8(v15, v15, 0xEuLL), v22).u16[0];
        v23 = vbslq_s8(v227, v167, v23);
        v24 = vbslq_s8(v227, v162, v368);
        v25 = vbslq_s8(v227, v164, v371);
        v26 = vbslq_s8(v227, v170, v373);
        v75 = vbslq_s8(v227, v211, v75);
        v76 = vbslq_s8(v227, v212, v76);
        v77 = vbslq_s8(v227, v213, v369);
        v78 = vbslq_s8(v227, v214, v372);
        v67 = vbslq_s8(v227, v226, v67);
        v61 = vbslq_s8(v227, v205, v61);
        v81 = vbslq_s8(v227, v225, v81);
      }

      else
      {
        v78 = v372;
        v26 = v373;
        v25 = v371;
        v24 = v368;
        v77 = v369;
      }

      if (v149)
      {
        v228 = v222 == 0;
      }

      else
      {
        v228 = 0;
      }

      v62 = v228;
      v16 = v374;
    }

    v229.i64[0] = 0x8000800080008;
    v229.i64[1] = 0x8000800080008;
    v230 = vandq_s8(v81, v229);
    v231.i64[0] = 0x3000300030003;
    v231.i64[1] = 0x3000300030003;
    v232.i64[0] = 0x2000200020002;
    v232.i64[1] = 0x2000200020002;
    v233 = vceqq_s16(vandq_s8(v81, v231), v232);
    v232.i64[0] = 0x10001000100010;
    v232.i64[1] = 0x10001000100010;
    if (((7 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0] + ((2 * v81.i16[0]) & 8) + vbicq_s8(v61, vceqzq_s16(v230)).u16[0] + vandq_s8(v233, v232).u16[0]) + 29) >= 0x200)
    {
      *a1 = v15;
      a1[1] = v16;
      v237 = 63;
      a1[2] = v20;
      a1[3] = v21;
      result = 64;
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

      if (v61.i16[0])
      {
        v238 = (16 * v61.i8[0] - 16) & 0xF0;
      }

      else
      {
        v238 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v239 = (v238 & 0xFFFFFFFFFF0000F0 | (v22.u16[0] << 8) | v81.i8[0] & 0xF) >> 2;
      v240 = (v239 << v235) | v236;
      if (v235 >= 0x2A)
      {
        *v234 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v235 + 22;
      v242 = vsubq_s16(v61, v75);
      v243 = vsubq_s16(v61, v76);
      v244 = vsubq_s16(v61, v77);
      v245 = vsubq_s16(v61, v78);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      v242.i32[0] = vzip1q_s16(vzip1q_s8(v242, v243), vzip1q_s8(v244, v245)).u32[0];
      v244.i64[0] = 0x202020202020202;
      v244.i64[1] = 0x202020202020202;
      v246 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v244);
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
      v261 = (v235 + 22) & 0x3E;
      v262 = (v259.i64[0] << v261) | v240;
      if ((v260.i64[0] + v261) >= 0x40)
      {
        *(v234 + ((v241 >> 3) & 8)) = v262;
        v262 = v259.i64[0] >> -v261;
      }

      v263 = v260.i64[1];
      v264 = v260.i64[0] + v241;
      v265 = v262 | (v259.i64[1] << v264);
      if ((v264 & 0x3F) + v260.i64[1] >= 0x40)
      {
        *(v234 + ((v264 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v265;
        v265 = v259.i64[1] >> -(v264 & 0x3F);
        if ((v264 & 0x3F) == 0)
        {
          v265 = 0;
        }
      }

      v266 = vceqq_s16(v61, v75);
      v267 = v264 + v263;
      v268.i64[0] = -1;
      v268.i64[1] = -1;
      v269 = vandq_s8(vextq_s8(vtstq_s16(v230, v230), 0, 0xEuLL), v61);
      v270.i64[0] = 0xF000F000F000FLL;
      v270.i64[1] = 0xF000F000F000FLL;
      v271 = vandq_s8(vshlq_u16(v268, vaddq_s16(v269, v270)), v67);
      v272 = vmovl_u16(*v269.i8);
      v273 = vpaddq_s32(vshlq_u32(vmovl_u16(*v271.i8), vtrn1q_s32(0, v272)), vmovl_high_u16(v271));
      v274 = vpaddq_s32(v272, vmovl_high_u16(v269));
      v275.i64[0] = v273.u32[0];
      v275.i64[1] = v273.u32[1];
      v276 = v275;
      v275.i64[0] = v273.u32[2];
      v275.i64[1] = v273.u32[3];
      v277 = v275;
      v275.i64[0] = v274.u32[0];
      v275.i64[1] = v274.u32[1];
      v278 = v275;
      v275.i64[0] = v274.u32[2];
      v275.i64[1] = v274.u32[3];
      v279 = vpaddq_s64(vshlq_u64(v276, vzip1q_s64(0, v278)), vshlq_u64(v277, vzip1q_s64(0, v275)));
      v280 = vpaddq_s64(v278, v275);
      v281 = (v279.i64[0] << v267) | v265;
      if (v280.i64[0] + (v267 & 0x3F) >= 0x40)
      {
        *(v234 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v281;
        v281 = v279.i64[0] >> -(v267 & 0x3F);
        if ((v267 & 0x3F) == 0)
        {
          v281 = 0;
        }
      }

      v282 = vandq_s8(v67, v266);
      v283 = v280.i64[0] + v267;
      v284 = v281 | (v279.i64[1] << v283);
      if ((v283 & 0x3F) + v280.i64[1] >= 0x40)
      {
        *(v234 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
        v284 = v279.i64[1] >> -(v283 & 0x3F);
        if ((v283 & 0x3F) == 0)
        {
          v284 = 0;
        }
      }

      v285 = vceqq_s16(v61, v76);
      v286 = vaddq_s16(v282, v23);
      v287 = v283 + v280.i64[1];
      if (v62)
      {
        v284 |= v63 << v287;
        if ((v287 & 0x3F) >= 0x30)
        {
          *(v234 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
          v284 = v63 >> -(v287 & 0x3F);
        }

        v287 += 16;
      }

      v288 = vandq_s8(v67, v285);
      v289 = vextq_s8(0, v75, 0xEuLL);
      v290.i64[0] = 0xF000F000F000FLL;
      v290.i64[1] = 0xF000F000F000FLL;
      v291.i64[0] = -1;
      v291.i64[1] = -1;
      v292 = vandq_s8(vshlq_u16(v291, vaddq_s16(v289, v290)), v286);
      v293 = vmovl_u16(*v289.i8);
      v294 = vmovl_high_u16(v289);
      v295 = vpaddq_s32(vshlq_u32(vmovl_u16(*v292.i8), vtrn1q_s32(0, v293)), vshlq_u32(vmovl_high_u16(v292), vtrn1q_s32(0, v294)));
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
      v303 = (v301.i64[0] << v287) | v284;
      if (v302.i64[0] + (v287 & 0x3F) >= 0x40)
      {
        *(v234 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v303;
        v303 = v301.i64[0] >> -(v287 & 0x3F);
        if ((v287 & 0x3F) == 0)
        {
          v303 = 0;
        }
      }

      v304 = vceqq_s16(v61, v77);
      v305 = vaddq_s16(v24, v288);
      v306 = v302.i64[0] + v287;
      v307 = (v302.i64[0] + v287) & 0x3F;
      v308 = v303 | (v301.i64[1] << v306);
      if ((v306 & 0x3F) + v302.i64[1] >= 0x40)
      {
        *(v234 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v301.i64[1] >> -v307;
        if (!v307)
        {
          v308 = 0;
        }
      }

      v309 = vandq_s8(v67, v304);
      v310 = v306 + v302.i64[1];
      v311.i64[0] = 0xF000F000F000FLL;
      v311.i64[1] = 0xF000F000F000FLL;
      v312.i64[0] = -1;
      v312.i64[1] = -1;
      v313 = vandq_s8(vshlq_u16(v312, vaddq_s16(v76, v311)), v305);
      v314 = vmovl_u16(*v76.i8);
      v315 = vmovl_high_u16(v76);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), vtrn1q_s32(0, v314)), vshlq_u32(vmovl_high_u16(v313), vtrn1q_s32(0, v315)));
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
      v324 = (v322.i64[0] << v310) | v308;
      if (v323.i64[0] + (v310 & 0x3F) >= 0x40)
      {
        *(v234 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v310 & 0x3F);
        if ((v310 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vceqq_s16(v61, v78);
      v326 = vaddq_s16(v25, v309);
      v327 = v323.i64[0] + v310;
      v328 = v324 | (v322.i64[1] << v327);
      if ((v327 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v234 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v322.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = vandq_s8(v67, v325);
      v330 = v327 + v323.i64[1];
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v77, v331)), v326);
      v334 = vmovl_u16(*v77.i8);
      v335 = vmovl_high_u16(v77);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
      v337 = vpaddq_s32(v334, v335);
      v338.i64[0] = v336.u32[0];
      v338.i64[1] = v336.u32[1];
      v339 = v338;
      v338.i64[0] = v336.u32[2];
      v338.i64[1] = v336.u32[3];
      v340 = v338;
      v338.i64[0] = v337.u32[0];
      v338.i64[1] = v337.u32[1];
      v341 = v338;
      v338.i64[0] = v337.u32[2];
      v338.i64[1] = v337.u32[3];
      v342 = vpaddq_s64(vshlq_u64(v339, vzip1q_s64(0, v341)), vshlq_u64(v340, vzip1q_s64(0, v338)));
      v343 = vpaddq_s64(v341, v338);
      v344 = (v342.i64[0] << v330) | v328;
      if (v343.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v234 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = vaddq_s16(v26, v329);
      v346 = v343.i64[0] + v330;
      v347 = v344 | (v342.i64[1] << v346);
      if ((v346 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v234 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v342.i64[1] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = v346 + v343.i64[1];
      v349.i64[0] = 0xF000F000F000FLL;
      v349.i64[1] = 0xF000F000F000FLL;
      v350.i64[0] = -1;
      v350.i64[1] = -1;
      v351 = vandq_s8(vshlq_u16(v350, vaddq_s16(v78, v349)), v345);
      v352 = vmovl_u16(*v78.i8);
      v353 = vmovl_high_u16(v78);
      v354 = vpaddq_s32(vshlq_u32(vmovl_u16(*v351.i8), vtrn1q_s32(0, v352)), vshlq_u32(vmovl_high_u16(v351), vtrn1q_s32(0, v353)));
      v355 = vpaddq_s32(v352, v353);
      v356.i64[0] = v354.u32[0];
      v356.i64[1] = v354.u32[1];
      v357 = v356;
      v356.i64[0] = v354.u32[2];
      v356.i64[1] = v354.u32[3];
      v358 = v356;
      v356.i64[0] = v355.u32[0];
      v356.i64[1] = v355.u32[1];
      v359 = v356;
      v356.i64[0] = v355.u32[2];
      v356.i64[1] = v355.u32[3];
      v360 = vpaddq_s64(vshlq_u64(v357, vzip1q_s64(0, v359)), vshlq_u64(v358, vzip1q_s64(0, v356)));
      v361 = vpaddq_s64(v359, v356);
      v362 = (v360.i64[0] << v348) | v347;
      if (v361.i64[0] + (v348 & 0x3F) > 0x3F)
      {
        *(v234 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
        if ((v348 & 0x3F) != 0)
        {
          v362 = v360.i64[0] >> -(v348 & 0x3F);
        }

        else
        {
          v362 = 0;
        }
      }

      v363 = v361.i64[0] + v348;
      v364 = v362 | (v360.i64[1] << v363);
      if ((v363 & 0x3F) + v361.i64[1] >= 0x40)
      {
        *(v234 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        v364 = v360.i64[1] >> -(v363 & 0x3F);
        if ((v363 & 0x3F) == 0)
        {
          v364 = 0;
        }
      }

      v365 = v363 + v361.i64[1];
      if ((v365 & 0x3F) != 0)
      {
        *(v234 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
      }

      result = (v365 - v235 + 7) >> 3;
      v237 = *a2 | (result - 1);
    }

    *a2 = v237;
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    result = 2;
    *a2 = 1;
  }

  return result;
}