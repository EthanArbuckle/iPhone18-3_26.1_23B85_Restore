unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
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

    if (v7 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
    v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
    v9 += result;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 += result;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 8 * a2 + 64), a2, v25, v24);
  v9 += result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 12 * a2), a2, v28, v27);
    v9 += result;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 64), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = *(a3 + a4 + 32);
  v11 = *(a3 + a4 + 48);
  v13 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  v12 = (v7 + a4);
  v17 = v15;
  v18 = v14;
  v19 = v12[1];
  v20 = v12[2];
  v21 = v12[3];
  v22 = *v12;
  v23 = vdupq_lane_s64(*a3, 0);
  v476 = *a3;
  v477 = *(a3 + a4);
  v478 = *(a3 + 16);
  v479 = *(a3 + a4 + 16);
  v480 = vsubq_s16(*a3, v23);
  v482 = vsubq_s16(v477, v23);
  v484 = vsubq_s16(v478, v23);
  v486 = vsubq_s16(v479, v23);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vzip1q_s16(v26, v27);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v28)), vceqzq_s16(v28));
  v488 = vsubq_s16(v13, v23);
  v489 = vsubq_s16(v22, v23);
  v31 = vsubq_s16(v18, v23);
  v32 = vminq_s16(vminq_s16(v488, v489), v31);
  v490 = v31;
  v491 = vsubq_s16(v19, v23);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v26, v33);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v488, v489), v31), v491), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(v32, v491), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(v34, v37);
  v40 = vminq_s16(vminq_s16(v27, v33), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v41)), vceqzq_s16(v41));
  v492 = vsubq_s16(v9, v23);
  v493 = vsubq_s16(v10, v23);
  v466 = v9;
  v468 = v10;
  v469 = v8;
  v43 = vsubq_s16(v8, v23);
  v44 = vminq_s16(vminq_s16(v492, v493), v43);
  v471 = v11;
  v494 = v43;
  v495 = vsubq_s16(v11, v23);
  v45 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v493), v43), v495), xmmword_29D2F1150);
  v46 = vqtbl1q_s8(vminq_s16(v44, v495), xmmword_29D2F1150);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v39, v47);
  v50 = vminq_s16(v40, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v51)), vceqzq_s16(v51));
  v496 = vsubq_s16(v17, v23);
  v497 = vsubq_s16(v20, v23);
  v500 = v23;
  v472 = v17;
  v474 = v20;
  v475 = v16;
  v464 = v19;
  v465 = v21;
  v498 = vsubq_s16(v16, v23);
  v499 = vsubq_s16(v21, v23);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v30, v30);
  v62 = vpmaxq_s16(v42, v42);
  v63 = vpmaxq_s16(v52, v52);
  v64 = vpmaxq_s16(v60, v60);
  v65 = vmaxq_s16(vmaxq_s16(v61, v62), vmaxq_s16(v63, v64));
  v66 = vclzq_s16(vsubq_s16(v57, v58));
  v67.i64[0] = 0xF000F000F000FLL;
  v67.i64[1] = 0xF000F000F000FLL;
  v68.i64[0] = -1;
  v68.i64[1] = -1;
  v507 = v58;
  v508 = v57;
  v69 = vsubq_s16(vshlq_s16(v68, vsubq_s16(v67, v66)), v58);
  v70 = vsubq_s16(v29, v66);
  v71 = vcgtq_s16(v65, v70);
  v72 = vminq_s16(v70, v65);
  v509 = vandq_s8(v69, v71);
  v9.i64[0] = 0x8000800080008;
  v9.i64[1] = 0x8000800080008;
  v73.i64[0] = 0x3000300030003;
  v73.i64[1] = 0x3000300030003;
  v74 = vorrq_s8(vandq_s8(vceqzq_s16(v72), v73), vorrq_s8(vandq_s8(v71, v9), 0));
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v62), v73), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v63), v73), 0);
  v503 = vsubq_s16(v72, v75);
  v504 = vsubq_s16(v72, v76);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v64), v73), 0);
  v505 = vsubq_s16(v72, v77);
  v506 = v72;
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v61), v73), 0);
  v79.i64[0] = 0x4000400040004;
  v79.i64[1] = 0x4000400040004;
  v80 = vorrq_s8(vbicq_s8(v79, vceqq_s16(vaddq_s16(v77, v76), vnegq_s16(vaddq_s16(v78, v75)))), v74);
  v501 = v80;
  v502 = vsubq_s16(v72, v78);
  if (vmaxvq_s16(v72))
  {
    v448 = vsubq_s16(v480, vqtbl1q_s8(v480, xmmword_29D2F1140));
    v81 = vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140));
    v461 = v74;
    v82 = vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140));
    v83 = vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140));
    v84 = vsubq_s16(v489, vqtbl1q_s8(v489, xmmword_29D2F1140));
    v85 = vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140));
    v86 = vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140));
    v87 = vsubq_s16(v494, vqtbl1q_s8(v494, xmmword_29D2F1140));
    v88 = vsubq_s16(v495, vqtbl1q_s8(v495, xmmword_29D2F1140));
    v89 = vsubq_s16(v496, vqtbl1q_s8(v496, xmmword_29D2F1140));
    v90 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v81), v82), v83);
    v452 = v81;
    v454 = v83;
    v455 = v82;
    v91 = vminq_s16(vminq_s16(v448, v81), v82);
    v92 = vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140));
    v93 = vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140));
    v94 = vminq_s16(v91, v83);
    v95 = vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140));
    v96 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v97 = vqtbl1q_s8(v94, xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v100 = vmaxq_s16(v98, v81);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v101 = vminq_s16(v99, v81);
    v102 = vzip1q_s16(v98, v99);
    v81.i64[0] = 0x10001000100010;
    v81.i64[1] = 0x10001000100010;
    v103 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v100, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v457 = vsubq_s16(v497, vqtbl1q_s8(v497, xmmword_29D2F1140));
    v459 = vsubq_s16(v498, vqtbl1q_s8(v498, xmmword_29D2F1140));
    v447 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v123 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v124 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v125 = vpmaxq_s16(v123, v123);
    v126 = vpminq_s16(v124, v124);
    v127 = vmaxq_s16(v118, v125);
    v128 = vminq_s16(v119, v126);
    v129 = vzip1q_s16(v125, v126);
    v130 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v129)), vceqzq_s16(v129));
    v131 = vpmaxq_s16(v130, v130);
    v132 = vmaxq_s16(vmaxq_s16(v104, v113), vmaxq_s16(v122, v131));
    v133 = v128;
    v453 = v127;
    v134 = vclzq_s16(vsubq_s16(v127, v128));
    v135 = vsubq_s16(v81, v134);
    v136 = vcgtq_s16(v132, v135);
    v137 = vminq_s16(v135, v132);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v104), v73), 0);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v113), v73), 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v122), v73), 0);
    v141 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v131), v73), 0);
    v118.i64[0] = 0x4000400040004;
    v118.i64[1] = 0x4000400040004;
    v142 = vbicq_s8(v118, vceqq_s16(vaddq_s16(v141, v140), vnegq_s16(vaddq_s16(v138, v139))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v143 = v136;
    v144 = vbslq_s8(v136, v132, v81);
    v145 = vsubq_s16(v137, v138);
    v146 = vsubq_s16(v137, v141);
    v450 = vsubq_s16(v137, v139);
    v451 = vsubq_s16(v137, v140);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v449 = v145;
    v147 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v137, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v142, v142)), v145, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v451, v450), v146), 3uLL));
    v141.i64[0] = 0x8000800080008;
    v141.i64[1] = 0x8000800080008;
    v127.i64[0] = 0x2000200020002;
    v127.i64[1] = 0x2000200020002;
    v148 = vandq_s8(vceqq_s16(vandq_s8(v461, v73), v127), v81);
    v149 = v506;
    v150 = v502;
    v151 = v503;
    v152 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, vceqzq_s16(vandq_s8(v461, v141))), v148), vandq_s8(vaddq_s16(v80, v80), v141)), v502, v138);
    v153 = v504;
    v154 = v505;
    v155 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v152, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v147).i64[0], 0);
    v156 = vaddvq_s16(v155);
    v158 = a5 < 4 || a6 < 2;
    if (v156)
    {
      v159.i64[0] = 0x3000300030003;
      v159.i64[1] = 0x3000300030003;
      v160 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v137), v159), v144), v142);
      v161.i64[0] = 0xF000F000F000FLL;
      v161.i64[1] = 0xF000F000F000FLL;
      v162 = vsubq_s16(v161, v134);
      v480 = vbslq_s8(v155, v448, v480);
      v482 = vbslq_s8(v155, v452, v482);
      v161.i64[0] = -1;
      v161.i64[1] = -1;
      v484 = vbslq_s8(v155, v455, v484);
      v486 = vbslq_s8(v155, v454, v486);
      v163 = vandq_s8(vsubq_s16(vshlq_s16(v161, v162), v133), v143);
      v488 = vbslq_s8(v155, v93, v488);
      v489 = vbslq_s8(v155, v84, v489);
      v490 = vbslq_s8(v155, v92, v490);
      v491 = vbslq_s8(v155, v85, v491);
      v492 = vbslq_s8(v155, v95, v492);
      v493 = vbslq_s8(v155, v86, v493);
      v494 = vbslq_s8(v155, v87, v494);
      v495 = vbslq_s8(v155, v88, v495);
      v496 = vbslq_s8(v155, v89, v496);
      v497 = vbslq_s8(v155, v457, v497);
      v498 = vbslq_s8(v155, v459, v498);
      v499 = vbslq_s8(v155, v447, v499);
      v150 = vbslq_s8(v155, v449, v502);
      v151 = vbslq_s8(v155, v450, v503);
      v502 = v150;
      v503 = v151;
      v153 = vbslq_s8(v155, v451, v504);
      v154 = vbslq_s8(v155, v146, v505);
      v504 = v153;
      v505 = v154;
      v508 = vbslq_s8(v155, v453, v508);
      v509 = vbslq_s8(v155, v163, v509);
      v149 = vbslq_s8(v155, v137, v506);
      v506 = v149;
      v507 = vbslq_s8(v155, v133, v507);
      v80 = vbslq_s8(v155, v160, v501);
      v500 = vbslq_s8(v155, vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140)), v500);
      v501 = v80;
    }

    v164 = v476;
    v165 = v477;
    v166 = v478;
    v167 = v479;
    if (!v158)
    {
      v168 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v190 = vsubq_s16(v476, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v169 = vsubq_s16(v478, v168);
      v170 = vsubq_s16(v479, v168);
      v171 = v464.i64[0];
      v172 = v479.i64[1];
      v173 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v174 = vsubq_s16(v22, vqtbl4q_s8(*v13.i8, xmmword_29D2F10F0));
      v175 = vsubq_s16(v18, vqtbl4q_s8(*v13.i8, xmmword_29D2F1160));
      v176 = vsubq_s16(v464, vqtbl4q_s8(*v13.i8, xmmword_29D2F1100));
      v510.val[0] = v466;
      v510.val[1] = v468;
      v510.val[2] = v469;
      v510.val[3].i64[0] = v471.i64[0];
      v510.val[3].i64[1] = v479.i64[1];
      v177 = vsubq_s16(v466, vqtbl4q_s8(v510, xmmword_29D2F1170));
      v178 = vsubq_s16(v468, vqtbl4q_s8(v510, xmmword_29D2F1180));
      v179 = vsubq_s16(v469, vqtbl4q_s8(v510, xmmword_29D2F10B0));
      v180 = vsubq_s16(v471, vqtbl4q_s8(v510, xmmword_29D2F10C0));
      v510.val[3] = v472;
      v181 = v474;
      v182 = v475;
      v183 = v465.i64[0];
      v184 = v479.i64[1];
      v185 = vsubq_s16(v472, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1170));
      v186 = vsubq_s16(v474, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1120));
      v187 = vsubq_s16(v465, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10C0));
      v188 = v169;
      v189.i64[0] = v170.i64[0];
      v189.i64[1] = v190.i64[0];
      v190.i64[0] = v170.i64[1];
      v473 = vsubq_s16(v477, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195.i64[0] = 0x8000800080008000;
      v195.i64[1] = 0x8000800080008000;
      v196 = vmaxq_s16(v193, v195);
      v197.i64[0] = 0x8000800080008000;
      v197.i64[1] = 0x8000800080008000;
      v198 = vzip1q_s16(v193, v194);
      v170.i64[0] = 0x10001000100010;
      v170.i64[1] = 0x10001000100010;
      v199 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v198)), vceqzq_s16(v198));
      v200 = vpmaxq_s16(v199, v199);
      v201 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v173, v174), v175), v176);
      v462 = v174;
      v463 = v173;
      v202 = vminq_s16(v173, v174);
      v203 = v178;
      v470 = v175;
      v467 = v176;
      v204 = vqtbl1q_s8(v201, xmmword_29D2F1150);
      v205 = vqtbl1q_s8(vminq_s16(vminq_s16(v202, v175), v176), xmmword_29D2F1150);
      v206 = vpmaxq_s16(v204, v204);
      v207 = vpminq_s16(v205, v205);
      v208 = vmaxq_s16(v196, v206);
      v209 = vminq_s16(vminq_s16(v194, v197), v207);
      v210 = vzip1q_s16(v206, v207);
      v211 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v210)), vceqzq_s16(v210));
      v212 = vpmaxq_s16(v211, v211);
      v458 = vsubq_s16(v475, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10B0));
      v460 = v179;
      v213 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v510.val[3] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v213, v213);
      v510.val[3] = vpminq_s16(v510.val[3], v510.val[3]);
      v215 = vmaxq_s16(v208, v214);
      v216 = vminq_s16(v209, v510.val[3]);
      v217 = vzip1q_s16(v214, v510.val[3]);
      v218 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v217)), vceqzq_s16(v217));
      v510.val[3] = vpmaxq_s16(v218, v218);
      v219 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v220 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v221 = vpmaxq_s16(v219, v219);
      v222 = vpminq_s16(v220, v220);
      v223 = vmaxq_s16(v215, v221);
      v224 = vminq_s16(v216, v222);
      v225 = vzip1q_s16(v221, v222);
      v226 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v225)), vceqzq_s16(v225));
      v227 = vpmaxq_s16(v226, v226);
      v228 = vmaxq_s16(vmaxq_s16(v200, v212), vmaxq_s16(v510.val[3], v227));
      v456 = v223;
      v229 = vclzq_s16(vsubq_s16(v223, v224));
      v230 = vsubq_s16(v170, v229);
      v231 = vcgtq_s16(v228, v230);
      v232 = vminq_s16(v230, v228);
      v230.i64[0] = 0x3000300030003;
      v230.i64[1] = 0x3000300030003;
      v233 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v200), v230), 0);
      v234 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v212), v230), 0);
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v510.val[3]), v230), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v227), v230), 0);
      v237 = vsubq_s16(v232, v233);
      v238 = vsubq_s16(v232, v234);
      v239 = vsubq_s16(v232, v235);
      v240 = vsubq_s16(v232, v236);
      v194.i64[0] = 0x4000400040004;
      v194.i64[1] = 0x4000400040004;
      v241 = vbicq_s8(v194, vceqq_s16(vaddq_s16(v236, v235), vnegq_s16(vaddq_s16(v233, v234))));
      v175.i64[0] = 0x7000700070007;
      v175.i64[1] = 0x7000700070007;
      v242 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v232, v231), vaddq_s16(v241, v241)), v237, v175), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL));
      v80 = v501;
      v150 = v502;
      v243 = vandq_s8(v501, v230);
      v244.i64[0] = 0x2000200020002;
      v244.i64[1] = 0x2000200020002;
      v245 = vandq_s8(vceqq_s16(v243, v244), v170);
      v243.i64[0] = 0x8000800080008;
      v243.i64[1] = 0x8000800080008;
      v246 = vandq_s8(vaddq_s16(v80, v80), v243);
      v247 = vceqzq_s16(vandq_s8(v501, v243));
      v154 = v505;
      v149 = v506;
      v248 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, v247), v246), v245), v502, v175);
      v151 = v503;
      v153 = v504;
      v249 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v248, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v242).i64[0], 0);
      if (vaddvq_s16(v249))
      {
        v250.i64[0] = 0x9000900090009;
        v250.i64[1] = 0x9000900090009;
        v251 = vorrq_s8(vandq_s8(vceqzq_s16(v232), v244), vsubq_s16(vandq_s8(v231, v250), vmvnq_s8(v231)));
        v250.i64[0] = -1;
        v250.i64[1] = -1;
        v252.i64[0] = 0xF000F000F000FLL;
        v252.i64[1] = 0xF000F000F000FLL;
        v150 = vbslq_s8(v249, v237, v502);
        v151 = vbslq_s8(v249, v238, v503);
        v153 = vbslq_s8(v249, v239, v504);
        v154 = vbslq_s8(v249, v240, v505);
        v149 = vbslq_s8(v249, v232, v506);
        v80 = vbslq_s8(v249, vorrq_s8(v251, v241), v501);
        v499 = vbslq_s8(v249, v187, v499);
        v500 = vbslq_s8(v249, vextq_s8(v479, v479, 8uLL), v500);
        v480 = vbslq_s8(v249, v190, v480);
        v482 = vbslq_s8(v249, v473, v482);
        v484 = vbslq_s8(v249, v188, v484);
        v486 = vbslq_s8(v249, v189, v486);
        v488 = vbslq_s8(v249, v463, v488);
        v489 = vbslq_s8(v249, v462, v489);
        v490 = vbslq_s8(v249, v470, v490);
        v491 = vbslq_s8(v249, v467, v491);
        v492 = vbslq_s8(v249, v177, v492);
        v493 = vbslq_s8(v249, v203, v493);
        v494 = vbslq_s8(v249, v460, v494);
        v495 = vbslq_s8(v249, v180, v495);
        v496 = vbslq_s8(v249, v185, v496);
        v497 = vbslq_s8(v249, v186, v497);
        v498 = vbslq_s8(v249, v458, v498);
        v507 = vbslq_s8(v249, v224, v507);
        v508 = vbslq_s8(v249, v456, v508);
        v509 = vbslq_s8(v249, vandq_s8(vsubq_s16(vshlq_s16(v250, vsubq_s16(v252, v229)), v224), v231), v509);
        v502 = v150;
        v503 = v151;
        v504 = v153;
        v505 = v154;
        v506 = v149;
        v501 = v80;
      }
    }

    v253 = vandq_s8(v509, vceqq_s16(v149, v150));
    v481 = vaddq_s16(v253, v480);
    v483 = vaddq_s16(v482, v253);
    v485 = vaddq_s16(v484, v253);
    v487 = vaddq_s16(v486, v253);
    v254 = vandq_s8(v509, vceqq_s16(v149, v151));
    v488 = vaddq_s16(v488, v254);
    v489 = vaddq_s16(v489, v254);
    v490 = vaddq_s16(v490, v254);
    v491 = vaddq_s16(v491, v254);
    v255 = vandq_s8(v509, vceqq_s16(v149, v153));
    v492 = vaddq_s16(v492, v255);
    v493 = vaddq_s16(v493, v255);
    v494 = vaddq_s16(v494, v255);
    v495 = vaddq_s16(v495, v255);
    v256 = vandq_s8(v509, vceqq_s16(v149, v154));
    v496 = vaddq_s16(v496, v256);
    v497 = vaddq_s16(v497, v256);
    v498 = vaddq_s16(v498, v256);
    v499 = vaddq_s16(v499, v256);
    v256.i64[0] = 0x8000800080008;
    v256.i64[1] = 0x8000800080008;
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v80, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v149, vceqzq_s16(vandq_s8(v80, v256))), vandq_s8(vaddq_s16(v80, v80), v256)), v260), v150, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v151), v154), 3uLL));
    v262 = vpaddq_s16(v261, v261);
    if ((vpaddq_s16(v262, v262).i16[0] - 1437) < 0xFFFFFFFFFFFFF9F8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 192;
    }

    else
    {
      v263 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v264 = 8 * (a1 & 7);
      if (v264)
      {
        v265 = *v263 & ~(-1 << v264);
      }

      else
      {
        v265 = 0;
      }

      *a2 = 0;
      v267 = v500.i64[0];
      if (v149.i16[0])
      {
        v268 = ((v149.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v268 = 0;
      }

      if (v149.i16[1])
      {
        v269 = ((v149.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v269 = 0;
      }

      if (v149.i16[2])
      {
        v270 = (v149.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v270 = 0;
      }

      if (v149.i16[3])
      {
        v271 = ((v149.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v271 = 0;
      }

      v272 = (v80.i8[0] & 0x1F | (32 * (v80.i8[2] & 0x1F)) & 0x83FF | ((v80.i8[4] & 0x1F) << 10) | ((v80.i8[6] & 0x1F) << 15) | v268 | v269 | v270) + v271;
      v273 = (v272 << v264) | v265;
      if (v264 >= 0x1C)
      {
        *v263 = v273;
        v273 = v272 >> (-8 * (a1 & 7u));
      }

      v274 = v267 | (WORD1(v267) << 16) | (WORD2(v267) << 32) | (HIWORD(v267) << 48);
      v275 = (v264 + 36) & 0x3C;
      *(v263 + (((v264 + 36) >> 3) & 8)) = v273 | (v274 << v275);
      v276 = v264 + 100;
      v277 = vsubq_s16(v506, v502);
      v278 = vsubq_s16(v506, v503);
      v279 = vsubq_s16(v506, v504);
      v280 = vsubq_s16(v506, v505);
      *v277.i8 = vqmovn_u16(v277);
      *v278.i8 = vqmovn_u16(v278);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u16(v280);
      v281 = vtrn1q_s8(v277, v278);
      v282 = vtrn2q_s8(v277, v278);
      v283 = vtrn1q_s8(v279, v280);
      v284 = vtrn2q_s8(v279, v280);
      v285 = vzip1q_s16(v282, v284);
      v286 = vtrn2q_s16(v282, v284);
      v282.i64[0] = vzip1q_s32(vzip1q_s16(v281, v283), v285).u64[0];
      v286.i64[0] = vzip1q_s32(vtrn2q_s16(v281, v283), v286).u64[0];
      v279.i64[0] = 0x202020202020202;
      v279.i64[1] = 0x202020202020202;
      v287 = vandq_s8(vmovl_s16(vtst_s16(*v501.i8, 0x4000400040004)), v279);
      v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[0] = -1;
      v281.i64[1] = -1;
      v288 = vshlq_u8(v281, vorrq_s8(v287, v279));
      v289 = vmovl_u8(vand_s8(*v288.i8, *v282.i8));
      v290 = vmovl_u8(vand_s8(*&vextq_s8(v288, v288, 8uLL), *v286.i8));
      v291 = vmovl_u8(*v287.i8);
      v292 = vmovl_high_u8(v287);
      v293 = vpaddq_s16(vshlq_u16(v289, vtrn1q_s16(0, v291)), vshlq_u16(v290, vtrn1q_s16(0, v292)));
      v294 = vpaddq_s16(v291, v292);
      v295 = vmovl_u16(*v294.i8);
      v296 = vmovl_high_u16(v294);
      v297 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v295)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v296)));
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
      v305 = (v264 + 100) & 0x3C;
      v306 = (v303.i64[0] << v305) | (v274 >> -v275);
      if ((v304.i64[0] + v305) >= 0x40)
      {
        *(v263 + ((v276 >> 3) & 0x18)) = v306;
        v306 = v303.i64[0] >> -v305;
      }

      v307 = v304.i64[0] + v276;
      v308 = v306 | (v303.i64[1] << v307);
      if ((v307 & 0x3F) + v304.i64[1] >= 0x40)
      {
        *(v263 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v303.i64[1] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v308 = 0;
        }
      }

      v309 = v307 + v304.i64[1];
      v310.i64[0] = 0x8000800080008;
      v310.i64[1] = 0x8000800080008;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vextq_s8(vtstq_s16(v501, v310), 0, 8uLL), v506);
      v313.i64[0] = 0xF000F000F000FLL;
      v313.i64[1] = 0xF000F000F000FLL;
      v314 = vandq_s8(vshlq_u16(v311, vaddq_s16(v312, v313)), v509);
      v315 = vmovl_u16(*v312.i8);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vmovl_high_u16(v314));
      v317 = vpaddq_s32(v315, vmovl_high_u16(v312));
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
      v324 = (v322.i64[0] << v309) | v308;
      if (v323.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v263 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = v323.i64[0] + v309;
      v326 = v324 | (v322.i64[1] << v325);
      if ((v325 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v263 + ((v325 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v322.i64[1] >> -(v325 & 0x3F);
        if ((v325 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = v325 + v323.i64[1];
      v328 = vextq_s8(0, v502, 8uLL);
      v329.i64[0] = 0xF000F000F000FLL;
      v329.i64[1] = 0xF000F000F000FLL;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vshlq_u16(v330, vaddq_s16(v328, v329)), v481);
      v332 = vmovl_u16(*v328.i8);
      v333 = vmovl_high_u16(v328);
      v334 = vpaddq_s32(vmovl_u16(*v331.i8), vshlq_u32(vmovl_high_u16(v331), vtrn1q_s32(0, v333)));
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
      v342 = (v340.i64[0] << v327) | v326;
      if (v341.i64[0] + (v327 & 0x3F) >= 0x40)
      {
        *(v263 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341.i64[0] + v327;
      v344 = v342 | (v340.i64[1] << v343);
      if ((v343 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v263 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v340.i64[1] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343 + v341.i64[1];
      v346.i64[0] = 0xF000F000F000FLL;
      v346.i64[1] = 0xF000F000F000FLL;
      v347.i64[0] = -1;
      v347.i64[1] = -1;
      v348 = vandq_s8(vshlq_u16(v347, vaddq_s16(v502, v346)), v483);
      v349 = vmovl_u16(*v502.i8);
      v350 = vmovl_high_u16(v502);
      v351 = vpaddq_s32(vshlq_u32(vmovl_u16(*v348.i8), vtrn1q_s32(0, v349)), vshlq_u32(vmovl_high_u16(v348), vtrn1q_s32(0, v350)));
      v352 = vpaddq_s32(v349, v350);
      v353.i64[0] = v351.u32[0];
      v353.i64[1] = v351.u32[1];
      v354 = v353;
      v353.i64[0] = v351.u32[2];
      v353.i64[1] = v351.u32[3];
      v355 = v353;
      v353.i64[0] = v352.u32[0];
      v353.i64[1] = v352.u32[1];
      v356 = v353;
      v353.i64[0] = v352.u32[2];
      v353.i64[1] = v352.u32[3];
      v357 = vpaddq_s64(vshlq_u64(v354, vzip1q_s64(0, v356)), vshlq_u64(v355, vzip1q_s64(0, v353)));
      v358 = vpaddq_s64(v356, v353);
      v359 = (v357.i64[0] << v345) | v344;
      if (v358.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v263 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v357.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = v358.i64[0] + v345;
      v361 = v359 | (v357.i64[1] << v360);
      if ((v360 & 0x3F) + v358.i64[1] >= 0x40)
      {
        *(v263 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v357.i64[1] >> -(v360 & 0x3F);
        if ((v360 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360 + v358.i64[1];
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364.i64[0] = -1;
      v364.i64[1] = -1;
      v365 = vandq_s8(vshlq_u16(v364, vaddq_s16(v502, v363)), v485);
      v366 = vmovl_u16(*v502.i8);
      v367 = vmovl_high_u16(v502);
      v368 = vpaddq_s32(vshlq_u32(vmovl_u16(*v365.i8), vtrn1q_s32(0, v366)), vshlq_u32(vmovl_high_u16(v365), vtrn1q_s32(0, v367)));
      v369 = vpaddq_s32(v366, v367);
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
      v376 = (v374.i64[0] << v362) | v361;
      if (v375.i64[0] + (v362 & 0x3F) >= 0x40)
      {
        *(v263 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v374.i64[0] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375.i64[0] + v362;
      v378 = v376 | (v374.i64[1] << v377);
      if ((v377 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v263 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v374.i64[1] >> -(v377 & 0x3F);
        if ((v377 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377 + v375.i64[1];
      v380.i64[0] = 0xF000F000F000FLL;
      v380.i64[1] = 0xF000F000F000FLL;
      v381.i64[0] = -1;
      v381.i64[1] = -1;
      v382 = vandq_s8(vshlq_u16(v381, vaddq_s16(v502, v380)), v487);
      v383 = vmovl_u16(*v502.i8);
      v384 = vmovl_high_u16(v502);
      v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v383)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v384)));
      v386 = vpaddq_s32(v383, v384);
      v387.i64[0] = v385.u32[0];
      v387.i64[1] = v385.u32[1];
      v388 = v387;
      v387.i64[0] = v385.u32[2];
      v387.i64[1] = v385.u32[3];
      v389 = v387;
      v387.i64[0] = v386.u32[0];
      v387.i64[1] = v386.u32[1];
      v390 = v387;
      v387.i64[0] = v386.u32[2];
      v387.i64[1] = v386.u32[3];
      v391 = vpaddq_s64(vshlq_u64(v388, vzip1q_s64(0, v390)), vshlq_u64(v389, vzip1q_s64(0, v387)));
      v392 = vpaddq_s64(v390, v387);
      v393 = (v391.i64[0] << v379) | v378;
      if (v392.i64[0] + (v379 & 0x3F) >= 0x40)
      {
        *(v263 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v391.i64[0] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v393 = 0;
        }
      }

      v394 = v392.i64[1];
      v395 = v392.i64[0] + v379;
      v396 = (v392.i64[0] + v379) & 0x3F;
      v397 = v393 | (v391.i64[1] << v395);
      if ((v396 + v392.i64[1]) >= 0x40)
      {
        *(v263 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v391.i64[1] >> -v396;
        if (!v396)
        {
          v397 = 0;
        }
      }

      v398 = 0;
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = v395 + v394;
      do
      {
        v402 = vandq_s8(vshlq_u16(v400, vaddq_s16(v503, v399)), *(&v488 + v398));
        v403 = vmovl_u16(*v503.i8);
        v404 = vmovl_high_u16(v503);
        v405 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), vtrn1q_s32(0, v403)), vshlq_u32(vmovl_high_u16(v402), vtrn1q_s32(0, v404)));
        v406 = vpaddq_s32(v403, v404);
        v407.i64[0] = v405.u32[0];
        v407.i64[1] = v405.u32[1];
        v408 = v407;
        v407.i64[0] = v405.u32[2];
        v407.i64[1] = v405.u32[3];
        v409 = v407;
        v407.i64[0] = v406.u32[0];
        v407.i64[1] = v406.u32[1];
        v410 = v407;
        v407.i64[0] = v406.u32[2];
        v407.i64[1] = v406.u32[3];
        v411 = vpaddq_s64(vshlq_u64(v408, vzip1q_s64(0, v410)), vshlq_u64(v409, vzip1q_s64(0, v407)));
        v412 = vpaddq_s64(v410, v407);
        v413 = (v411.i64[0] << v401) | v397;
        if (v412.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v401;
        v397 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v263 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v414 + v412.i64[1];
        v398 += 16;
      }

      while (v398 != 64);
      v415 = 0;
      v416.i64[0] = 0xF000F000F000FLL;
      v416.i64[1] = 0xF000F000F000FLL;
      v417.i64[0] = -1;
      v417.i64[1] = -1;
      do
      {
        v418 = vandq_s8(vshlq_u16(v417, vaddq_s16(v504, v416)), *(&v492 + v415));
        v419 = vmovl_u16(*v504.i8);
        v420 = vmovl_high_u16(v504);
        v421 = vpaddq_s32(vshlq_u32(vmovl_u16(*v418.i8), vtrn1q_s32(0, v419)), vshlq_u32(vmovl_high_u16(v418), vtrn1q_s32(0, v420)));
        v422 = vpaddq_s32(v419, v420);
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
        v427 = vpaddq_s64(vshlq_u64(v424, vzip1q_s64(0, v426)), vshlq_u64(v425, vzip1q_s64(0, v423)));
        v428 = vpaddq_s64(v426, v423);
        v429 = (v427.i64[0] << v401) | v397;
        if (v428.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
          v429 = v427.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v429 = 0;
          }
        }

        v430 = v428.i64[0] + v401;
        v397 = v429 | (v427.i64[1] << v430);
        if ((v430 & 0x3F) + v428.i64[1] >= 0x40)
        {
          *(v263 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v427.i64[1] >> -(v430 & 0x3F);
          if ((v430 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v430 + v428.i64[1];
        v415 += 16;
      }

      while (v415 != 64);
      v431 = 0;
      v432.i64[0] = 0xF000F000F000FLL;
      v432.i64[1] = 0xF000F000F000FLL;
      v433.i64[0] = -1;
      v433.i64[1] = -1;
      do
      {
        v434 = vandq_s8(vshlq_u16(v433, vaddq_s16(v505, v432)), *(&v496 + v431));
        v435 = vmovl_u16(*v505.i8);
        v436 = vmovl_high_u16(v505);
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
        v445 = (v443.i64[0] << v401) | v397;
        if (v444.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
          v445 = v443.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v445 = 0;
          }
        }

        v446 = v444.i64[0] + v401;
        v397 = v445 | (v443.i64[1] << v446);
        if ((v446 & 0x3F) + v444.i64[1] >= 0x40)
        {
          *(v263 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v443.i64[1] >> -(v446 & 0x3F);
          if ((v446 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v446 + v444.i64[1];
        v431 += 16;
      }

      while (v431 != 64);
      if ((v401 & 0x3F) != 0)
      {
        *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      }

      result = (v401 - v264 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v42, v44);
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

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 48, &v58, a7, v42, v47);
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
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 96, &v58, a7, v51, v44);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 144, &v58, a7, v51, v47);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v292 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F2700, 0x10uLL);
  memset_pattern16(v281, &unk_29D2F2710, 0x10uLL);
  memset_pattern16(v280, &unk_29D2F26F0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v266 = v10;
  v11 = a4 < 2 || a5 == 0;
  v265 = v11;
  v12 = a4 < 2 || a5 < 2;
  v264 = v12;
  v13 = a4 < 3 || a5 == 0;
  v263 = v13;
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
      v28 = &v283[v9];
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
      if (v31 == 32769)
      {
        v23 = 0;
      }

      else
      {
        v23 = v31 ^ 0x8000;
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
      if (v33 == 32769)
      {
        v26 = 0;
      }

      else
      {
        v26 = v33 ^ 0x8000;
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
        v20 = &v283[v9];
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
        v20 = &v283[v9];
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

    v35 = &v287[v9 + 4];
    v287[v9 + 4] = v19;
    v287[v9 + 8] = v19;
    v287[v9] = 0;
    if (v265)
    {
      v36 = v19;
      if (v266)
      {
        goto LABEL_67;
      }

LABEL_62:
      if (v22 < v36)
      {
        v287[v9] = 2;
        v287[v9 + 8] = v22;
        v36 = v22;
      }

      v38 = &v283[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v287[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_67;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v287[v9] = 1;
      v287[v9 + 8] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v287[v9 + 4];
    }

    else
    {
      v37 = &v283[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v266)
    {
      goto LABEL_62;
    }

LABEL_67:
    if (v264)
    {
      if (v13)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v287[v9] = 3;
        v287[v9 + 8] = v23;
        v36 = v23;
      }

      v39 = &v283[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v287[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_69:
        if (v15)
        {
          goto LABEL_70;
        }

        goto LABEL_83;
      }
    }

    if (v24 < v36)
    {
      v287[v9] = 4;
      v287[v9 + 8] = v24;
      v36 = v24;
    }

    v40 = &v283[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v287[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_70:
      if (v14)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_83:
    if (v25 < v36)
    {
      v287[v9] = 5;
      v287[v9 + 8] = v25;
      v36 = v25;
    }

    v41 = &v283[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v287[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_71:
      if (v16)
      {
        goto LABEL_98;
      }

LABEL_93:
      if (v27 < v36)
      {
        v287[v9] = 7;
        v287[v9 + 8] = v27;
        v36 = v27;
      }

      v43 = &v283[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v287[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_98;
    }

LABEL_88:
    if (v26 < v36)
    {
      v287[v9] = 6;
      v287[v9 + 8] = v26;
      v36 = v26;
    }

    v42 = &v283[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v287[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_93;
    }

LABEL_98:
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

    v284[v9] = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (!(v36 >> 15) && v19 >= 0x8000)
      {
        v48 = kDQuadParamTable[10 * v46 + 488] == 0;
      }

      if (v46 <= 0xC)
      {
LABEL_113:
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
        goto LABEL_113;
      }
    }

    v49 = !v48;
    if (v48)
    {
      v50 = 3;
    }

    else
    {
      v50 = 4;
    }

    v51 = v50 + kDQuadParamTable[10 * v46 + 484];
    if (v49)
    {
      v52 = -2;
    }

    else
    {
      v52 = 0;
    }

    if (v51 >= 0x10)
    {
      v53 = 0;
    }

    else
    {
      v53 = v36 & ~(-1 << (16 - v51));
    }

    v54 = v53 + v52;
    v55 = __clz(v54 + v19 - v36);
    if (v54 >= 1 && v55 < v44)
    {
      v284[v9] = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v279[0] = 0;
  v279[1] = 0;
  v278[0] = 0;
  v278[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v281, v284, v279, v278);
  v57 = 0;
  v58 = 0;
  if (a4)
  {
    v59 = a5 == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = v59;
  while (2)
  {
    v62 = v281[v57];
    v63 = v284[v57];
    v64 = &kDQuadParamTable[160 * v62 + 10 * v63];
    v65 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v62 + 1);
    v66 = v64[5];
    v67 = v64[4] + v65;
    *(&v274 + v57 * 4) = v67;
    v68 = v66 + v65;
    *(&v270 + v57 * 4) = v68;
    v69 = *(v64 + 1);
    v70 = *(v278 + v57 * 4) - *(v279 + v57 * 4);
    if (v70 < 0)
    {
      v72 = &kDQuadParamTable[160 * v62 + 10 * v63];
      if (v72[7] < *(v279 + v57 * 4) - *(v278 + v57 * 4))
      {
        *(&v270 + v57 * 4) = --v68;
        if (!v72[8])
        {
          v71 = -1;
LABEL_141:
          *(&v274 + v57 * 4) = v71 + v67;
        }
      }
    }

    else if (v70)
    {
      v68 += v70;
      *(&v270 + v57 * 4) = v68;
      v71 = v70;
      goto LABEL_141;
    }

    if (v62 == 5 && v63 == 1)
    {
      v58 |= v70 < 2;
    }

    if (a3 == 4)
    {
      v73 = 1 << (*(&__b + v57 * 4) - 1);
      if (v62 == 3)
      {
        v74 = -31745;
      }

      else
      {
        v74 = -1;
      }

      if (v62 == 4)
      {
        v75 = -2139095041;
      }

      else
      {
        v75 = v74;
      }

      if (v60)
      {
        if (v265)
        {
          goto LABEL_156;
        }

LABEL_170:
        v79 = v283[v57 + 4];
        v81 = (v79 | v75) == 0xFFFFFFFF || v79 == v73;
        v58 |= v81;
        if (!v266)
        {
          goto LABEL_177;
        }

LABEL_157:
        if (v264)
        {
          goto LABEL_158;
        }

LABEL_184:
        v85 = v283[v57 + 12];
        v87 = (v85 | v75) == 0xFFFFFFFF || v85 == v73;
        v58 |= v87;
        if (!v263)
        {
          goto LABEL_191;
        }

LABEL_159:
        if (v15)
        {
          goto LABEL_160;
        }

LABEL_198:
        v91 = v283[v57 + 20];
        v93 = (v91 | v75) == 0xFFFFFFFF || v91 == v73;
        v58 |= v93;
        if (!v14)
        {
          goto LABEL_205;
        }

LABEL_161:
        if (!v16)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v76 = v283[v57];
        v78 = (v76 | v75) == 0xFFFFFFFF || v76 == v73;
        v58 |= v78;
        if (!v265)
        {
          goto LABEL_170;
        }

LABEL_156:
        if (v266)
        {
          goto LABEL_157;
        }

LABEL_177:
        v82 = v283[v57 + 8];
        v84 = (v82 | v75) == 0xFFFFFFFF || v82 == v73;
        v58 |= v84;
        if (!v264)
        {
          goto LABEL_184;
        }

LABEL_158:
        if (v263)
        {
          goto LABEL_159;
        }

LABEL_191:
        v88 = v283[v57 + 16];
        v90 = (v88 | v75) == 0xFFFFFFFF || v88 == v73;
        v58 |= v90;
        if (!v15)
        {
          goto LABEL_198;
        }

LABEL_160:
        if (v14)
        {
          goto LABEL_161;
        }

LABEL_205:
        v94 = v283[v57 + 24];
        v96 = (v94 | v75) == 0xFFFFFFFF || v94 == v73;
        v58 |= v96;
        if (!v16)
        {
LABEL_212:
          v97 = v283[v57 + 28];
          v99 = (v97 | v75) == 0xFFFFFFFF || v97 == v73;
          v58 |= v99;
        }
      }
    }

    if (v69 >> v68 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)18,(AGXTextureFootprint)3>::lossyFallBackInfo + v57 * 4 + 16))
    {
      v61 = 1;
    }

    else
    {
      v61 = v60;
    }

    v58 |= v61;
    if (++v57 != 4)
    {
      continue;
    }

    break;
  }

  v100 = 0;
  v268 = 0;
  v269 = 0;
  memset(v267, 0, sizeof(v267));
  v101 = v283;
  v102 = v282;
  do
  {
    v103 = 0;
    v104 = 0;
    v105 = *(&__b + v100);
    if (v105 >= *(&v274 + v100))
    {
      v106 = *(&v274 + v100);
    }

    else
    {
      v106 = *(&__b + v100);
    }

    *(&v274 + v100) = v106;
    v107 = -1 << v105;
    v108 = &kDQuadParamTable[160 * v281[v100] + 10 * v284[v100]];
    if (v108[5])
    {
      v109 = v105;
    }

    else
    {
      v109 = 0;
    }

    if (v109 >= *(&v270 + v100))
    {
      v109 = *(&v270 + v100);
    }

    *(&v270 + v100) = v109;
    v110 = *(v108 + 1);
    v111 = v287[v100 + 8] & (-1 << (v105 - v106));
    *(&v268 + v100) = v111;
    v112 = v110 >> v109;
    v113 = &v283[v100];
    v114 = *v113 - v111;
    v115 = &v282[2 * v100];
    if (v60)
    {
      v114 = 0;
    }

    v116 = v113[4] - v111;
    if (v265)
    {
      v116 = 0;
    }

    *v115 = v114;
    v115[1] = v116;
    v117 = v113[8] - v111;
    if (v266)
    {
      v117 = 0;
    }

    v118 = v113[12] - v111;
    if (v264)
    {
      v118 = 0;
    }

    v115[2] = v117;
    v115[3] = v118;
    v119 = v113[16] - v111;
    if (v263)
    {
      v119 = 0;
    }

    v120 = v113[20] - v111;
    if (v15)
    {
      v120 = 0;
    }

    v115[4] = v119;
    v115[5] = v120;
    v121 = v113[24] - v111;
    if (v14)
    {
      v121 = 0;
    }

    v122 = v113[28] - v111;
    if (v16)
    {
      v122 = 0;
    }

    v115[6] = v121;
    v115[7] = v122;
    if (v112 <= 1)
    {
      v123 = 1;
    }

    else
    {
      v123 = v112;
    }

    v124 = 4 * v287[v100];
    v125 = v267 + 28 * v100;
    v126 = &byte_29D2F3081;
    do
    {
      if (v124 != v103)
      {
        if (v109)
        {
          v127 = *(v102 + v103) / v123;
        }

        else
        {
          LODWORD(v127) = 0;
        }

        *&v125[4 * v104] = v127;
        if (v112 >= 2)
        {
          v128 = *(v102 + v103);
          if (v128)
          {
            if (v128 / v123 * v123 == v128 && ((v128 / v123) & 1) != 0)
            {
              if (v111 || v127 != 1)
              {
                if ((a3 | 2) != 3 || (v130 = v101[v103], v131 = v280[v100], v130 != v131) && ((a3 | 2) != 3 || v123 + v131 != v130))
                {
                  LODWORD(v127) = v127 - 1;
                  *&v125[4 * v104] = v127;
                }
              }

              else
              {
                LODWORD(v127) = 1;
              }
            }
          }
        }

        if (v127 >> v109 || (v101[v103] ^ v107) == 0xFFFFFFFF)
        {
          *&v125[4 * v104] = ~(-1 << v109);
        }

        if (*v126 >= a5 || *(v126 - 1) >= a4)
        {
          *&v125[4 * v104] = 0;
        }

        ++v104;
      }

      v103 += 4;
      v126 += 2;
    }

    while (v103 != 32);
    ++v100;
    v102 += 2;
    ++v101;
  }

  while (v100 != 4);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v132 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v133 = 8 * (a1 & 7);
  *a1 = 0u;
  if (v58)
  {
    v134 = 0;
    v135 = 0;
    v136 = __b;
    v137 = v289;
    v138 = __b - 4;
    v139 = v289 - 4;
    v141 = v290;
    v140 = v291;
    v142 = v290 - 4;
    v143 = v291 - 4;
    v144 = 8 * (a1 & 7);
    while (1)
    {
      v145 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v134;
      v146 = v145[1] < a5 && a4 > *v145;
      v147 = !v146;
      if (v146)
      {
        v148 = v283[4 * v134] >> 4;
        if (v138 > 0x100)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v148 = 0;
        if (v138 > 0x100)
        {
          goto LABEL_296;
        }
      }

      if (v136 != 4 && (v144 - v133 + (v135 << 6) + v138) <= 0x180)
      {
        v149 = 0;
        v150 = v136 - 4;
        do
        {
          v151 = 64 - v144;
          if (64 - v144 >= v150)
          {
            v151 = v150;
          }

          v132[v135] |= ((v148 >> v149) & ~(-1 << v151)) << v144;
          v149 += v151;
          v152 = v151 + v144;
          v135 += v152 >> 6;
          v144 = v152 & 0x3F;
          v150 -= v151;
        }

        while (v150);
      }

LABEL_296:
      v153 = &v283[4 * v134];
      if (v147)
      {
        v154 = 0;
        if (v139 > 0x100)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v154 = v153[1] >> 4;
        if (v139 > 0x100)
        {
          goto LABEL_306;
        }
      }

      if (v137 != 4 && (v144 - v133 + (v135 << 6) + v139) <= 0x180)
      {
        v155 = 0;
        v156 = v137 - 4;
        do
        {
          v157 = 64 - v144;
          if (64 - v144 >= v156)
          {
            v157 = v156;
          }

          v132[v135] |= ((v154 >> v155) & ~(-1 << v157)) << v144;
          v155 += v157;
          v158 = v157 + v144;
          v135 += v158 >> 6;
          v144 = v158 & 0x3F;
          v156 -= v157;
        }

        while (v156);
      }

LABEL_306:
      if (v147)
      {
        v159 = 0;
        if (v142 > 0x100)
        {
          goto LABEL_316;
        }
      }

      else
      {
        v159 = v153[2] >> 4;
        if (v142 > 0x100)
        {
          goto LABEL_316;
        }
      }

      if (v141 != 4 && (v144 - v133 + (v135 << 6) + v142) <= 0x180)
      {
        v160 = 0;
        v161 = v141 - 4;
        do
        {
          v162 = 64 - v144;
          if (64 - v144 >= v161)
          {
            v162 = v161;
          }

          v132[v135] |= ((v159 >> v160) & ~(-1 << v162)) << v144;
          v160 += v162;
          v163 = v162 + v144;
          v135 += v163 >> 6;
          v144 = v163 & 0x3F;
          v161 -= v162;
        }

        while (v161);
      }

LABEL_316:
      if (v147)
      {
        v164 = 0;
        if (v143 <= 0x100)
        {
          goto LABEL_320;
        }
      }

      else
      {
        v164 = v153[3] >> 4;
        if (v143 <= 0x100)
        {
LABEL_320:
          if (v140 != 4 && (v144 - v133 + (v135 << 6) + v143) <= 0x180)
          {
            v165 = 0;
            v166 = v140 - 4;
            do
            {
              v167 = 64 - v144;
              if (64 - v144 >= v166)
              {
                v167 = v166;
              }

              v132[v135] |= ((v164 >> v165) & ~(-1 << v167)) << v144;
              v165 += v167;
              v168 = v167 + v144;
              v135 += v168 >> 6;
              v144 = v168 & 0x3F;
              v166 -= v167;
            }

            while (v166);
          }
        }
      }

      if (++v134 == 8)
      {
        return v58 & 1;
      }
    }
  }

  v169 = v284[0];
  v170 = v284[1];
  v171 = ((v284[0] & 0xF) << v133) | *v132;
  *v132 = v171;
  v172 = v133 | 4;
  if ((v133 | 4uLL) - v133 - 381 <= 0xFFFFFFFFFFFFFE7ELL)
  {
    v173 = 0;
    v174 = v285;
    goto LABEL_330;
  }

  *v132 = ((v170 & 0xF) << v172) | v171;
  v172 = (v133 + 8) & 0x38;
  v173 = (v133 + 8) >> 6;
  v175 = (v133 + 8) & 0x40;
  v174 = v285;
  if ((v175 + v172 - v133 + 4) < 0x181)
  {
    v260 = ((v285 & 0xF) << v172) | v132[v173];
    v132[v173] = v260;
    v177 = v172 | 4;
    v261 = (v172 | 4) - v133 + v175 + 4;
    v176 = v286;
    if (v261 <= 0x180)
    {
      v132[v173] = ((v286 & 0xF) << v177) | v260;
      v173 += (v172 + 8) >> 6;
      v177 = (v172 + 8) & 0x38;
    }
  }

  else
  {
LABEL_330:
    v176 = v286;
    v177 = v172;
  }

  if (v169 || __b == 2 || __b >= 0x10)
  {
    v178 = v274;
    if (v274 <= 0x100 && v274 && v177 - v133 + (v173 << 6) + v274 <= 0x180)
    {
      v179 = 0;
      v180 = v268 >> (__b - v274);
      v181 = v274;
      do
      {
        v182 = 64 - v177;
        if (64 - v177 >= v181)
        {
          v182 = v181;
        }

        v132[v173] |= ((v180 >> v179) & ~(-1 << v182)) << v177;
        v179 += v182;
        v183 = v182 + v177;
        v173 += v183 >> 6;
        v177 = v183 & 0x3F;
        v181 -= v182;
      }

      while (v181);
    }

    v184 = v178 + 16;
    v185 = v289;
    if (v170)
    {
      goto LABEL_340;
    }

LABEL_444:
    if (v185 == 2 || v185 >= 0x10)
    {
      goto LABEL_340;
    }
  }

  else
  {
    v184 = 16;
    v185 = v289;
    if (!v170)
    {
      goto LABEL_444;
    }

LABEL_340:
    v186 = v275;
    if (v275 <= 0x100 && v275 && v177 - v133 + (v173 << 6) + v275 <= 0x180)
    {
      v187 = 0;
      v188 = (HIDWORD(v268) >> (v185 - v275));
      v189 = v275;
      do
      {
        v190 = 64 - v177;
        if (64 - v177 >= v189)
        {
          v190 = v189;
        }

        v132[v173] |= ((v188 >> v187) & ~(-1 << v190)) << v177;
        v187 += v190;
        v191 = v190 + v177;
        v173 += v191 >> 6;
        v177 = v191 & 0x3F;
        v189 -= v190;
      }

      while (v189);
    }

    v184 += v186;
  }

  if (v174 || v290 == 2 || v290 >= 0x10)
  {
    v192 = v276;
    if (v276 <= 0x100 && v276 && v177 - v133 + (v173 << 6) + v276 <= 0x180)
    {
      v193 = 0;
      v194 = v269 >> (v290 - v276);
      v195 = v276;
      do
      {
        v196 = 64 - v177;
        if (64 - v177 >= v195)
        {
          v196 = v195;
        }

        v132[v173] |= ((v194 >> v193) & ~(-1 << v196)) << v177;
        v193 += v196;
        v197 = v196 + v177;
        v173 += v197 >> 6;
        v177 = v197 & 0x3F;
        v195 -= v196;
      }

      while (v195);
    }

    v184 += v192;
  }

  if (v176 || v291 == 2 || v291 >= 0x10)
  {
    v198 = v277;
    if (v277 <= 0x100 && v277 && v177 - v133 + (v173 << 6) + v277 <= 0x180)
    {
      v199 = 0;
      v200 = (HIDWORD(v269) >> (v291 - v277));
      v201 = v277;
      do
      {
        v202 = 64 - v177;
        if (64 - v177 >= v201)
        {
          v202 = v201;
        }

        v132[v173] |= ((v200 >> v199) & ~(-1 << v202)) << v177;
        v199 += v202;
        v203 = v202 + v177;
        v173 += v203 >> 6;
        v177 = v203 & 0x3F;
        v201 -= v202;
      }

      while (v201);
    }

    v184 += v198;
  }

  v204 = v270;
  if (v270)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x180)
    {
      v205 = 0;
      v206 = v287[0];
      v207 = 3;
      do
      {
        v208 = 64 - v177;
        if (64 - v177 >= v207)
        {
          v208 = v207;
        }

        v132[v173] |= ((v206 >> v205) & ~(-1 << v208)) << v177;
        v205 += v208;
        v209 = v208 + v177;
        v173 += v209 >> 6;
        v177 = v209 & 0x3F;
        v207 -= v208;
      }

      while (v207);
    }

    v184 += 3;
  }

  v210 = v271;
  if (v271)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x180)
    {
      v211 = 0;
      v212 = v287[1];
      v213 = 3;
      do
      {
        v214 = 64 - v177;
        if (64 - v177 >= v213)
        {
          v214 = v213;
        }

        v132[v173] |= ((v212 >> v211) & ~(-1 << v214)) << v177;
        v211 += v214;
        v215 = v214 + v177;
        v173 += v215 >> 6;
        v177 = v215 & 0x3F;
        v213 -= v214;
      }

      while (v213);
    }

    v184 += 3;
  }

  v216 = v272;
  if (v272)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x180)
    {
      v217 = 0;
      v218 = v287[2];
      v219 = 3;
      do
      {
        v220 = 64 - v177;
        if (64 - v177 >= v219)
        {
          v220 = v219;
        }

        v132[v173] |= ((v218 >> v217) & ~(-1 << v220)) << v177;
        v217 += v220;
        v221 = v220 + v177;
        v173 += v221 >> 6;
        v177 = v221 & 0x3F;
        v219 -= v220;
      }

      while (v219);
    }

    v184 += 3;
  }

  v222 = v273;
  if (v273)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x180)
    {
      v223 = 0;
      v224 = v287[3];
      v225 = 3;
      do
      {
        v226 = 64 - v177;
        if (64 - v177 >= v225)
        {
          v226 = v225;
        }

        v132[v173] |= ((v224 >> v223) & ~(-1 << v226)) << v177;
        v223 += v226;
        v227 = v226 + v177;
        v173 += v227 >> 6;
        v177 = v227 & 0x3F;
        v225 -= v226;
      }

      while (v225);
    }

    v184 += 3;
  }

  v228 = 384 - v184;
  v229 = (384 - v184) / 7u;
  v230 = v228 % 7;
  if ((v230 - 257) >= 0xFFFFFF00 && v177 - v133 + (v173 << 6) + v230 <= 0x180)
  {
    do
    {
      v231 = 64 - v177;
      if (64 - v177 >= v230)
      {
        v231 = v230;
      }

      v232 = v231 + v177;
      v173 += v232 >> 6;
      v177 = v232 & 0x3F;
      v230 -= v231;
    }

    while (v230);
  }

  v233 = 0;
  while (2)
  {
    if (v204 && v204 <= 0x100 && v177 - v133 + (v173 << 6) + v204 <= 0x180)
    {
      v234 = 0;
      v235 = *(v267 + v233);
      v236 = v204;
      do
      {
        v237 = 64 - v177;
        if (64 - v177 >= v236)
        {
          v237 = v236;
        }

        v132[v173] |= ((v235 >> v234) & ~(-1 << v237)) << v177;
        v234 += v237;
        v238 = v237 + v177;
        v173 += v238 >> 6;
        v177 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v239 = v267 + v233;
    if (!v210)
    {
      v245 = v204;
      if (!v216)
      {
        goto LABEL_425;
      }

      goto LABEL_418;
    }

    if (v210 <= 0x100 && v177 - v133 + (v173 << 6) + v210 <= 0x180)
    {
      v240 = 0;
      v241 = v239[7];
      v242 = v210;
      do
      {
        v243 = 64 - v177;
        if (64 - v177 >= v242)
        {
          v243 = v242;
        }

        v132[v173] |= ((v241 >> v240) & ~(-1 << v243)) << v177;
        v240 += v243;
        v244 = v243 + v177;
        v173 += v244 >> 6;
        v177 = v244 & 0x3F;
        v242 -= v243;
      }

      while (v242);
    }

    v245 = v210 + v204;
    if (v216)
    {
LABEL_418:
      if (v216 <= 0x100 && v177 - v133 + (v173 << 6) + v216 <= 0x180)
      {
        v246 = 0;
        v247 = v239[14];
        v248 = v216;
        do
        {
          v249 = 64 - v177;
          if (64 - v177 >= v248)
          {
            v249 = v248;
          }

          v132[v173] |= ((v247 >> v246) & ~(-1 << v249)) << v177;
          v246 += v249;
          v250 = v249 + v177;
          v173 += v250 >> 6;
          v177 = v250 & 0x3F;
          v248 -= v249;
        }

        while (v248);
      }

      v245 += v216;
    }

LABEL_425:
    if (v222)
    {
      if (v222 <= 0x100 && v177 - v133 + (v173 << 6) + v222 <= 0x180)
      {
        v251 = 0;
        v252 = v239[21];
        v253 = v222;
        do
        {
          v254 = 64 - v177;
          if (64 - v177 >= v253)
          {
            v254 = v253;
          }

          v132[v173] |= ((v252 >> v251) & ~(-1 << v254)) << v177;
          v251 += v254;
          v255 = v254 + v177;
          v173 += v255 >> 6;
          v177 = v255 & 0x3F;
          v253 -= v254;
        }

        while (v253);
      }

      v245 += v222;
    }

    v256 = v229 - v245;
    if (v256 && v256 <= 0x100 && v177 - v133 + (v173 << 6) + v256 <= 0x180)
    {
      do
      {
        v257 = 64 - v177;
        if (64 - v177 >= v256)
        {
          v257 = v256;
        }

        v258 = v257 + v177;
        v173 += v258 >> 6;
        v177 = v258 & 0x3F;
        v256 -= v257;
      }

      while (v256);
    }

    if (++v233 != 7)
    {
      continue;
    }

    return v58 & 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
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
      result = v9 - v4 + (v8 << 6) - 373;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFE7FLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 12;
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
      result = (16 * (v13 & 0xFFF)) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 373) < 0xFFFFFFFFFFFFFE7FLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 12;
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
      result = v9 - v4 + (v8 << 6) - 373;
      v12[1] = (16 * (v18 & 0xFFF)) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFE7FLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 12;
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
        result = v9 - v4 + (v8 << 6) - 373;
        v12[2] = (16 * (v23 & 0xFFF)) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFE7FLL)
        {
          v28 = 0;
          result = 0;
          v29 = 12;
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
          v10 = 16 * (v28 & 0xFFF);
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
    if (result - v4 + (v33 << 6) - 373 >= 0xFFFFFFFFFFFFFE7FLL)
    {
      v36 = 0;
      v37 = 0;
      v38 = 12;
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
      v35 = 16 * (v36 & 0xFFF);
      if ((v35 != 0x8000 || v5 != 1) && v35 != 0)
      {
        if (v35 == 65520)
        {
          v35 = 0xFFFF;
        }

        else
        {
          v35 = v35 - (v36 & 1) + 8;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    *(a2 + 16 * v32) = v35 ^ v6;
    if (result - v4 + (v33 << 6) - 373 >= 0xFFFFFFFFFFFFFE7FLL)
    {
      v44 = 0;
      v45 = 0;
      v46 = 12;
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
      v43 = 16 * (v44 & 0xFFF);
      if ((v43 != 0x8000 || v5 != 1) && v43 != 0)
      {
        if (v43 == 65520)
        {
          v43 = 0xFFFF;
        }

        else
        {
          v43 = v43 - (v44 & 1) + 8;
        }
      }
    }

    else
    {
      v43 = 0;
    }

    v51 = (a2 + 16 * v32);
    v51[1] = v43 ^ v6;
    if (result - v4 + (v33 << 6) - 373 >= 0xFFFFFFFFFFFFFE7FLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 12;
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
      v52 = 16 * (v53 & 0xFFF);
      if ((v52 != 0x8000 || v5 != 1) && v52 != 0)
      {
        if (v52 == 65520)
        {
          v52 = 0xFFFF;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 8;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v51[2] = v52 ^ v6;
    if (result - v4 + (v33 << 6) - 373 < 0xFFFFFFFFFFFFFE7FLL)
    {
      v34 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 12;
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
      v34 = 16 * (v60 & 0xFFF);
      if ((v34 != 0x8000 || v5 != 1) && v34 != 0)
      {
        v67 = v34 - (v60 & 1) + 8;
        if (v34 == 65520)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v234 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 >> v5;
  v8 = (v6 >> v5) & 0xF;
  v9 = v5 | 4;
  if ((v5 | 4uLL) - v5 - 381 >= 0xFFFFFFFFFFFFFE7FLL)
  {
    v14 = (v5 + 8) & 0x38;
    v12 = (v5 + 8) >> 6;
    v11 = (v6 >> v9) & 0xF;
    v15 = (v5 + 8) & 0x40;
    if ((v15 + v14 - v5 + 4) <= 0x180)
    {
      v9 = v14 | 4;
      v16 = *(v4 + 8 * v12);
      v10 = (v16 >> v14) & 0xF;
      if ((v14 | 4uLL) - v5 + v15 + 4 <= 0x180)
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
  memset_pattern16(&v229, &unk_29D2F2710, 0x10uLL);
  v233[0] = v8;
  v233[1] = v11;
  v233[2] = v10;
  v233[3] = v13;
  v223 = 0;
  v224 = 0;
  v221 = 0;
  v222 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v229, v233, &v223, &v221);
  LODWORD(v21) = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v229 + 1);
  v20 = &kDQuadParamTable[160 * v229 + 10 * (v7 & 0xF)];
  v19 = *(v20 + 20);
  LODWORD(v20) = *(v20 + 16) + v21;
  LODWORD(v21) = v19 + v21;
  v22 = v221 - v223;
  if (v221 - v223 < 0)
  {
    v23 = &kDQuadParamTable[160 * v229 + 10 * (v7 & 0xF)];
    if (v23[7] >= v223 - v221)
    {
      goto LABEL_14;
    }

    LODWORD(v21) = v21 - 1;
    if (v23[8])
    {
      goto LABEL_14;
    }

    v22 = -1;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_14;
    }

    LODWORD(v21) = v22 + v21;
  }

  LODWORD(v20) = v22 + v20;
LABEL_14:
  if (__b >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = __b;
  }

  v220[0] = v20;
  if (v19)
  {
    v24 = __b;
  }

  else
  {
    v24 = 0;
  }

  if (v24 >= v21)
  {
    v21 = v21;
  }

  else
  {
    v21 = v24;
  }

  v219[0] = v21;
  v25 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v230 + 1);
  v26 = &kDQuadParamTable[160 * v230 + 10 * v11];
  v28 = v26[4];
  v27 = v26[5];
  v29 = v28 + v25;
  LODWORD(v30) = v27 + v25;
  v31 = HIDWORD(v221) - HIDWORD(v223);
  if (HIDWORD(v221) - HIDWORD(v223) < 0)
  {
    v32 = &kDQuadParamTable[160 * v230 + 10 * v11];
    if (v32[7] >= HIDWORD(v223) - HIDWORD(v221))
    {
      goto LABEL_29;
    }

    LODWORD(v30) = v30 - 1;
    if (v32[8])
    {
      goto LABEL_29;
    }

    v31 = -1;
  }

  else
  {
    if (!v31)
    {
      goto LABEL_29;
    }

    LODWORD(v30) = v31 + v30;
  }

  v29 += v31;
LABEL_29:
  if (v226 >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = v226;
  }

  v220[1] = v33;
  if (v27)
  {
    v34 = v226;
  }

  else
  {
    v34 = 0;
  }

  if (v34 >= v30)
  {
    v30 = v30;
  }

  else
  {
    v30 = v34;
  }

  v219[1] = v30;
  v35 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v231 + 1);
  v36 = &kDQuadParamTable[160 * v231 + 10 * v10];
  v38 = v36[4];
  v37 = v36[5];
  v39 = v38 + v35;
  LODWORD(v40) = v37 + v35;
  v41 = v222 - v224;
  if (v222 - v224 < 0)
  {
    v42 = &kDQuadParamTable[160 * v231 + 10 * v10];
    if (v42[7] >= v224 - v222)
    {
      goto LABEL_44;
    }

    LODWORD(v40) = v40 - 1;
    if (v42[8])
    {
      goto LABEL_44;
    }

    v41 = -1;
  }

  else
  {
    if (!v41)
    {
      goto LABEL_44;
    }

    LODWORD(v40) = v41 + v40;
  }

  v39 += v41;
LABEL_44:
  if (v227 >= v39)
  {
    v43 = v39;
  }

  else
  {
    v43 = v227;
  }

  v220[2] = v43;
  if (v37)
  {
    v44 = v227;
  }

  else
  {
    v44 = 0;
  }

  if (v44 >= v40)
  {
    v40 = v40;
  }

  else
  {
    v40 = v44;
  }

  v219[2] = v40;
  v45 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v232 + 1);
  v47 = &kDQuadParamTable[160 * v232 + 10 * v13];
  v46 = *(v47 + 20);
  LODWORD(v47) = *(v47 + 16) + v45;
  LODWORD(v48) = v46 + v45;
  v49 = HIDWORD(v222) - HIDWORD(v224);
  if (HIDWORD(v222) - HIDWORD(v224) < 0)
  {
    v50 = &kDQuadParamTable[160 * v232 + 10 * v13];
    if (v50[7] >= HIDWORD(v224) - HIDWORD(v222))
    {
      goto LABEL_59;
    }

    LODWORD(v48) = v48 - 1;
    if (v50[8])
    {
      goto LABEL_59;
    }

    v49 = -1;
  }

  else
  {
    if (!v49)
    {
      goto LABEL_59;
    }

    LODWORD(v48) = v49 + v48;
  }

  LODWORD(v47) = v49 + v47;
LABEL_59:
  if (v228 >= v47)
  {
    v47 = v47;
  }

  else
  {
    v47 = v228;
  }

  v220[3] = v47;
  if (v46)
  {
    v51 = v228;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v48)
  {
    v48 = v48;
  }

  else
  {
    v48 = v51;
  }

  v219[3] = v48;
  v217 = 0;
  v218 = 0;
  if (v8 || __b - 8 >= 5)
  {
    if (v20 <= 0x20)
    {
      v53 = 0;
      if (v20 && v9 - v5 + (v12 << 6) + v20 <= 0x180)
      {
        v53 = 0;
        v54 = 0;
        v55 = v20;
        do
        {
          v56 = 64 - v9;
          if (64 - v9 >= v55)
          {
            v56 = v55;
          }

          v53 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v56)) << v54;
          v54 += v56;
          v12 += (v56 + v9) >> 6;
          v9 = (v56 + v9) & 0x3F;
          v55 -= v56;
        }

        while (v55);
      }
    }

    else
    {
      v53 = 0;
    }

    LODWORD(v217) = v53 << (__b - v20);
    v52 = v20 + 16;
    if (v11)
    {
LABEL_84:
      if (v33 <= 0x20)
      {
        v57 = 0;
        if (v33 && v9 - v5 + (v12 << 6) + v33 <= 0x180)
        {
          v57 = 0;
          v58 = 0;
          v59 = v33;
          do
          {
            v60 = 64 - v9;
            if (64 - v9 >= v59)
            {
              v60 = v59;
            }

            v57 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v60)) << v58;
            v58 += v60;
            v12 += (v60 + v9) >> 6;
            v9 = (v60 + v9) & 0x3F;
            v59 -= v60;
          }

          while (v59);
        }
      }

      else
      {
        v57 = 0;
      }

      HIDWORD(v217) = v57 << (v226 - v33);
      v52 += v33;
      if (v10)
      {
        goto LABEL_96;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v52 = 16;
    if (v11)
    {
      goto LABEL_84;
    }
  }

  if (v226 - 8 >= 5)
  {
    goto LABEL_84;
  }

  HIDWORD(v217) = 0;
  if (v10)
  {
    goto LABEL_96;
  }

LABEL_93:
  if (v227 - 8 < 5)
  {
    LODWORD(v218) = 0;
    if (v13)
    {
      goto LABEL_108;
    }

    goto LABEL_105;
  }

LABEL_96:
  if (v43 <= 0x20)
  {
    v61 = 0;
    if (v43 && v9 - v5 + (v12 << 6) + v43 <= 0x180)
    {
      v61 = 0;
      v62 = 0;
      v63 = v43;
      do
      {
        v64 = 64 - v9;
        if (64 - v9 >= v63)
        {
          v64 = v63;
        }

        v61 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v64)) << v62;
        v62 += v64;
        v12 += (v64 + v9) >> 6;
        v9 = (v64 + v9) & 0x3F;
        v63 -= v64;
      }

      while (v63);
    }
  }

  else
  {
    v61 = 0;
  }

  LODWORD(v218) = v61 << (v227 - v43);
  v52 += v43;
  if (v13)
  {
LABEL_108:
    if (v47 <= 0x20)
    {
      v65 = 0;
      if (v47 && v9 - v5 + (v12 << 6) + v47 <= 0x180)
      {
        v65 = 0;
        v66 = 0;
        v67 = v47;
        do
        {
          v68 = 64 - v9;
          if (64 - v9 >= v67)
          {
            v68 = v67;
          }

          v65 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v68)) << v66;
          v66 += v68;
          v12 += (v68 + v9) >> 6;
          v9 = (v68 + v9) & 0x3F;
          v67 -= v68;
        }

        while (v67);
      }
    }

    else
    {
      v65 = 0;
    }

    HIDWORD(v218) = v65 << (v228 - v47);
    v52 += v47;
    v215 = 0;
    v216 = 0;
    if (!v21)
    {
      goto LABEL_125;
    }

    goto LABEL_118;
  }

LABEL_105:
  if (v228 - 8 >= 5)
  {
    goto LABEL_108;
  }

  HIDWORD(v218) = 0;
  v215 = 0;
  v216 = 0;
  if (v21)
  {
LABEL_118:
    if (v9 - v5 + (v12 << 6) + 3 <= 0x180)
    {
      v69 = 0;
      v70 = 0;
      v71 = 3;
      do
      {
        v72 = 64 - v9;
        if (64 - v9 >= v71)
        {
          v72 = v71;
        }

        v69 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v72)) << v70;
        v70 += v72;
        v12 += (v72 + v9) >> 6;
        v9 = (v72 + v9) & 0x3F;
        v71 -= v72;
      }

      while (v71);
    }

    else
    {
      v69 = 0;
    }

    LODWORD(v215) = v69;
    v52 += 3;
  }

LABEL_125:
  if (v30)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x180)
    {
      v73 = 0;
      v74 = 0;
      v75 = 3;
      do
      {
        v76 = 64 - v9;
        if (64 - v9 >= v75)
        {
          v76 = v75;
        }

        v73 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v76)) << v74;
        v74 += v76;
        v12 += (v76 + v9) >> 6;
        v9 = (v76 + v9) & 0x3F;
        v75 -= v76;
      }

      while (v75);
    }

    else
    {
      v73 = 0;
    }

    HIDWORD(v215) = v73;
    v52 += 3;
  }

  if (v40)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x180)
    {
      v77 = 0;
      v78 = 0;
      v79 = 3;
      do
      {
        v80 = 64 - v9;
        if (64 - v9 >= v79)
        {
          v80 = v79;
        }

        v77 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v80)) << v78;
        v78 += v80;
        v12 += (v80 + v9) >> 6;
        v9 = (v80 + v9) & 0x3F;
        v79 -= v80;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
    }

    LODWORD(v216) = v77;
    v52 += 3;
  }

  if (v48)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x180)
    {
      v81 = 0;
      v82 = 0;
      v83 = 3;
      do
      {
        v84 = 64 - v9;
        if (64 - v9 >= v83)
        {
          v84 = v83;
        }

        v81 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v84)) << v82;
        v82 += v84;
        v12 += (v84 + v9) >> 6;
        v9 = (v84 + v9) & 0x3F;
        v83 -= v84;
      }

      while (v83);
    }

    else
    {
      v81 = 0;
    }

    HIDWORD(v216) = v81;
    v52 += 3;
  }

  v85 = 0;
  v86 = a3 & 0xFFFFFFFD;
  v87 = 384 - v52;
  v88 = (384 - v52) / 7u;
  v89 = (v9 | (v12 << 6)) + v87 % 7;
  memset(v214, 0, sizeof(v214));
  do
  {
    v92 = v89 >> 6;
    v93 = v89 & 0x3F;
    if (v21)
    {
      if (v21 <= 0x20 && v93 - v5 + (v89 & 0xFFFFFFFFFFFFFFC0) + v21 <= 0x180)
      {
        v94 = 0;
        v95 = 0;
        v96 = v21;
        do
        {
          v97 = 64 - v93;
          if (64 - v93 >= v96)
          {
            v97 = v96;
          }

          v94 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v97)) << v95;
          v95 += v97;
          v98 = v97 + v93;
          v92 += v98 >> 6;
          v93 = v98 & 0x3F;
          v96 -= v97;
        }

        while (v96);
      }

      else
      {
        v94 = 0;
      }

      *(v214 + v85) = v94;
    }

    v99 = v214 + v85;
    if (!v30)
    {
      v91 = v21;
      if (!v40)
      {
        goto LABEL_181;
      }

LABEL_173:
      if (v40 <= 0x20 && v93 - v5 + (v92 << 6) + v40 <= 0x180)
      {
        v105 = 0;
        v106 = 0;
        v107 = v40;
        do
        {
          v108 = 64 - v93;
          if (64 - v93 >= v107)
          {
            v108 = v107;
          }

          v105 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v108)) << v106;
          v106 += v108;
          v109 = v108 + v93;
          v92 += v109 >> 6;
          v93 = v109 & 0x3F;
          v107 -= v108;
        }

        while (v107);
      }

      else
      {
        v105 = 0;
      }

      v99[14] = v105;
      v91 += v40;
      goto LABEL_181;
    }

    if (v30 <= 0x20 && v93 - v5 + (v92 << 6) + v30 <= 0x180)
    {
      v100 = 0;
      v101 = 0;
      v102 = v30;
      do
      {
        v103 = 64 - v93;
        if (64 - v93 >= v102)
        {
          v103 = v102;
        }

        v100 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v103)) << v101;
        v101 += v103;
        v104 = v103 + v93;
        v92 += v104 >> 6;
        v93 = v104 & 0x3F;
        v102 -= v103;
      }

      while (v102);
    }

    else
    {
      v100 = 0;
    }

    v99[7] = v100;
    v91 = v30 + v21;
    if (v40)
    {
      goto LABEL_173;
    }

LABEL_181:
    if (v48)
    {
      if (v48 > 0x20 || v93 - v5 + (v92 << 6) + v48 > 0x180)
      {
        v90 = 0;
      }

      else
      {
        v90 = 0;
        v110 = 0;
        v111 = v48;
        do
        {
          v112 = 64 - v93;
          if (64 - v93 >= v111)
          {
            v112 = v111;
          }

          v90 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v112)) << v110;
          v110 += v112;
          v113 = v112 + v93;
          v92 += v113 >> 6;
          v93 = v113 & 0x3F;
          v111 -= v112;
        }

        while (v111);
      }

      v99[21] = v90;
      v91 += v48;
    }

    v89 = (v93 | (v92 << 6)) + v88 - v91;
    ++v85;
  }

  while (v85 != 7);
  v114 = 0;
  v115 = 0;
  v116 = a2 + 112;
  do
  {
    v121 = *&kDQuadParamTable[160 * *(&v229 + v114) + 2 + 10 * v233[v114 / 4]];
    v122 = v219[v114 / 4];
    if (v121 >> v122 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v121 >> v122;
    }

    v123 = *(&__b + v114);
    v124 = result >> 1;
    if (result >> 1 >= (1 << (v123 - v220[v114 / 4])) >> 1)
    {
      v125 = (1 << (v123 - v220[v114 / 4])) >> 1;
    }

    else
    {
      v125 = result >> 1;
    }

    v126 = (1 << (v123 - 1));
    v127 = *(&v217 + v114);
    v128 = v126 - v127;
    v129 = 1 << v123;
    v130 = (1 << v123) + 0xFFFFFFFFLL;
    if (v127)
    {
      v131 = v125;
    }

    else
    {
      v131 = 0;
    }

    v132 = v127 == v126;
    v133 = v123 == 16;
    if (v123 == 16)
    {
      v134 = 31744;
    }

    else
    {
      v134 = 2139095040;
    }

    if (v123 == 16)
    {
      v135 = 64512;
    }

    else
    {
      v135 = 4286578688;
    }

    v136 = 2143289344;
    if (v133)
    {
      v136 = 32256;
    }

    v137 = 65024;
    if (!v133)
    {
      v137 = 4290772992;
    }

    v138 = (v135 - 1);
    if (v122)
    {
      v139 = v121 + v127;
      v140 = -1 << v122;
      v141 = *(&v215 + v114);
      v142 = v128 / result;
      if (!v141)
      {
        v150 = 0;
        v145 = v131;
        v144 = v127 == v126;
        goto LABEL_259;
      }

      v143 = *(v214 + v115);
      v144 = v142 == v143;
      if (v127 | v143)
      {
        if (v139 >= v129 && (v140 ^ v143) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v150 = 1;
          v145 = v129 - 1;
          goto LABEL_259;
        }

        v145 = v124 + result * v143;
      }

      else
      {
        v145 = 0;
      }

      v150 = 1;
LABEL_259:
      v153 = v145 + v127;
      v154 = v153;
      if (a3 == 4)
      {
        v155 = v153 < v134 || v153 >= v136;
        v154 = (v134 - 1);
        if (v155)
        {
          v156 = v153 < v136 || v153 >= v126;
          v154 = v126;
          if (v156)
          {
            if (v153 < v137 && v153 >= v135)
            {
              v154 = (v135 - 1);
            }

            else
            {
              v154 = v153;
            }
          }
        }
      }

      if (v154 >= v129)
      {
        v158 = v129 - 1;
      }

      else
      {
        v158 = v154;
      }

      if (v144)
      {
        v159 = 0;
      }

      else
      {
        v159 = v158 ^ v126;
      }

      if (v86 != 1)
      {
        v159 = v158;
      }

      *(a2 + v114) = v159;
      if (v141 == 1)
      {
        v160 = v131;
        v161 = v127 == v126;
      }

      else
      {
        v162 = *((v214 | (4 * v150)) + v115);
        v161 = v142 == v162;
        if (v127 | v162)
        {
          if (v139 < v129 || (v160 = v129 - 1, (v140 ^ v162) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v124 + result * v162;
          }
        }

        else
        {
          v160 = 0;
        }

        ++v150;
      }

      v163 = v160 + v127;
      v164 = v163;
      if (a3 == 4)
      {
        v165 = v163 < v134 || v163 >= v136;
        v164 = (v134 - 1);
        if (v165)
        {
          v166 = v163 < v136 || v163 >= v126;
          v164 = v126;
          if (v166)
          {
            if (v163 < v137 && v163 >= v135)
            {
              v164 = (v135 - 1);
            }

            else
            {
              v164 = v163;
            }
          }
        }
      }

      if (v164 >= v129)
      {
        v168 = v129 - 1;
      }

      else
      {
        v168 = v164;
      }

      if (v161)
      {
        v169 = 0;
      }

      else
      {
        v169 = v168 ^ v126;
      }

      if (v86 != 1)
      {
        v169 = v168;
      }

      *(v116 + v114 - 96) = v169;
      if (v141 == 2)
      {
        v170 = v131;
        v171 = v127 == v126;
      }

      else
      {
        v172 = *((v214 | (4 * v150)) + v115);
        v171 = v142 == v172;
        if (v127 | v172)
        {
          if (v139 < v129 || (v170 = v129 - 1, (v140 ^ v172) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v170 = v124 + result * v172;
          }
        }

        else
        {
          v170 = 0;
        }

        ++v150;
      }

      v173 = v170 + v127;
      v174 = v173;
      if (a3 == 4)
      {
        if (v173 < v134 || (v174 = (v134 - 1), v173 >= v136))
        {
          if (v173 < v136 || (v174 = v126, v173 >= v126))
          {
            if (v173 < v137 && v173 >= v135)
            {
              v174 = (v135 - 1);
            }

            else
            {
              v174 = v173;
            }
          }
        }
      }

      if (v174 >= v129)
      {
        v176 = v129 - 1;
      }

      else
      {
        v176 = v174;
      }

      if (v171)
      {
        v177 = 0;
      }

      else
      {
        v177 = v176 ^ v126;
      }

      if (v86 != 1)
      {
        v177 = v176;
      }

      *(v116 + v114 - 80) = v177;
      if (v141 == 3)
      {
        v178 = v131;
        v179 = v127 == v126;
      }

      else
      {
        v180 = *(v214 + 4 * v150 + v115);
        v179 = v142 == v180;
        if (v127 | v180)
        {
          if (v139 < v129 || (v178 = v129 - 1, (v140 ^ v180) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v124 + result * v180;
          }
        }

        else
        {
          v178 = 0;
        }

        ++v150;
      }

      v181 = v178 + v127;
      v182 = v181;
      if (a3 == 4)
      {
        if (v181 < v134 || (v182 = (v134 - 1), v181 >= v136))
        {
          if (v181 < v136 || (v182 = v126, v181 >= v126))
          {
            if (v181 < v137 && v181 >= v135)
            {
              v182 = (v135 - 1);
            }

            else
            {
              v182 = v181;
            }
          }
        }
      }

      if (v182 >= v129)
      {
        v184 = v129 - 1;
      }

      else
      {
        v184 = v182;
      }

      if (v179)
      {
        v185 = 0;
      }

      else
      {
        v185 = v184 ^ v126;
      }

      if (v86 != 1)
      {
        v185 = v184;
      }

      *(v116 + v114 - 64) = v185;
      if (v141 == 4)
      {
        v186 = v131;
        v187 = v127 == v126;
      }

      else
      {
        v188 = *(v214 + 4 * v150 + v115);
        v187 = v142 == v188;
        if (v127 | v188)
        {
          if (v139 < v129 || (v186 = v129 - 1, (v140 ^ v188) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v186 = v124 + result * v188;
          }
        }

        else
        {
          v186 = 0;
        }

        ++v150;
      }

      v189 = v186 + v127;
      v190 = v189;
      if (a3 == 4)
      {
        if (v189 < v134 || (v190 = (v134 - 1), v189 >= v136))
        {
          if (v189 < v136 || (v190 = v126, v189 >= v126))
          {
            if (v189 < v137 && v189 >= v135)
            {
              v190 = (v135 - 1);
            }

            else
            {
              v190 = v189;
            }
          }
        }
      }

      if (v190 >= v129)
      {
        v192 = v129 - 1;
      }

      else
      {
        v192 = v190;
      }

      if (v187)
      {
        v193 = 0;
      }

      else
      {
        v193 = v192 ^ v126;
      }

      if (v86 != 1)
      {
        v193 = v192;
      }

      *(v116 + v114 - 48) = v193;
      if (v141 == 5)
      {
        v194 = v131;
        v195 = v127 == v126;
      }

      else
      {
        v196 = *(v214 + 4 * v150 + v115);
        v195 = v142 == v196;
        if (v127 | v196)
        {
          if (v139 < v129 || (v194 = v129 - 1, (v140 ^ v196) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v194 = v124 + result * v196;
          }
        }

        else
        {
          v194 = 0;
        }

        ++v150;
      }

      v197 = v194 + v127;
      v198 = v197;
      if (a3 == 4)
      {
        if (v197 < v134 || (v198 = (v134 - 1), v197 >= v136))
        {
          if (v197 < v136 || (v198 = v126, v197 >= v126))
          {
            if (v197 < v137 && v197 >= v135)
            {
              v198 = (v135 - 1);
            }

            else
            {
              v198 = v197;
            }
          }
        }
      }

      if (v198 >= v129)
      {
        v200 = v129 - 1;
      }

      else
      {
        v200 = v198;
      }

      if (v195)
      {
        v201 = 0;
      }

      else
      {
        v201 = v200 ^ v126;
      }

      if (v86 != 1)
      {
        v201 = v200;
      }

      *(v116 + v114 - 32) = v201;
      if (v141 == 6)
      {
        v202 = v131;
        v203 = v127 == v126;
      }

      else
      {
        v204 = *(v214 + 4 * v150 + v115);
        v203 = v142 == v204;
        if (v127 | v204)
        {
          if (v139 < v129 || (v202 = v129 - 1, (v140 ^ v204) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v202 = v124 + result * v204;
          }
        }

        else
        {
          v202 = 0;
        }

        ++v150;
      }

      v205 = v202 + v127;
      v206 = v205;
      if (a3 == 4)
      {
        if (v205 < v134 || (v206 = (v134 - 1), v205 >= v136))
        {
          if (v205 < v136 || (v206 = v126, v205 >= v126))
          {
            if (v205 < v137 && v205 >= v135)
            {
              v206 = (v135 - 1);
            }

            else
            {
              v206 = v205;
            }
          }
        }
      }

      if (v206 >= v129)
      {
        v208 = v129 - 1;
      }

      else
      {
        v208 = v206;
      }

      if (v203)
      {
        v209 = 0;
      }

      else
      {
        v209 = v208 ^ v126;
      }

      if (v86 != 1)
      {
        v209 = v208;
      }

      *(v116 + v114 - 16) = v209;
      if (v141 != 7)
      {
        v210 = *(v214 + 4 * v150 + v115);
        v132 = v142 == v210;
        if (v127 | v210)
        {
          if (v139 >= v129 && (v140 ^ v210) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v131 = v129 - 1;
          }

          else
          {
            v131 = v124 + result * v210;
          }
        }

        else
        {
          v131 = 0;
        }
      }

      v211 = v131 + v127;
      result = v131 + v127;
      if (a3 == 4)
      {
        if (v211 < v134 || (result = (v134 - 1), v211 >= v136))
        {
          if (v211 < v136 || (result = v126, v211 >= v126))
          {
            if (v211 < v137 && v211 >= v135)
            {
              result = (v135 - 1);
            }

            else
            {
              result = v131 + v127;
            }
          }
        }
      }

      if (result >= v129)
      {
        v119 = v129 - 1;
      }

      else
      {
        v119 = result;
      }

      v120 = v119 ^ v126;
      if (v132)
      {
        v120 = 0;
      }

      if (v86 == 1)
      {
        v119 = v120;
      }

      goto LABEL_203;
    }

    v147 = v136 <= v127 && v127 < v126;
    v149 = v127 >= v135 && v137 > v127;
    if (a3 == 4)
    {
      if (v127 < v134 || v136 <= v127)
      {
        if (v147)
        {
          if (v129 <= v126)
          {
            v119 = v130;
          }

          else
          {
            v119 = v126;
          }
        }

        else
        {
          if (v149)
          {
            v212 = v138;
          }

          else
          {
            v212 = *(&v217 + v114);
          }

          if (v212 >= v129)
          {
            v119 = v130;
          }

          else
          {
            v119 = v212;
          }
        }
      }

      else if (v129 <= (v134 - 1))
      {
        v119 = v130;
      }

      else
      {
        v119 = v134 - 1;
      }
    }

    else
    {
      if (v129 <= v127)
      {
        v119 = v129 - 1;
      }

      else
      {
        v119 = *(&v217 + v114);
      }

      v151 = v119 ^ v126;
      if (result > v128)
      {
        v151 = 0;
      }

      if (v86 == 1)
      {
        v119 = v151;
      }
    }

    v152 = v116 + v114;
    *(v152 - 112) = v119;
    *(v152 - 96) = v119;
    *(v152 - 80) = v119;
    *(v152 - 64) = v119;
    *(v152 - 48) = v119;
    *(v152 - 32) = v119;
    *(v152 - 16) = v119;
LABEL_203:
    *(v116 + v114) = v119;
    v115 += 28;
    v114 += 4;
  }

  while (v115 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v463 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v10 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return v10;
  }

  v5 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v455, a5);
    }

    v451 = v458;
    v453 = v457;
    v443 = v455;
    v445 = v459;
    v439 = v456;
    v441 = v460;
    v447 = v462;
    v449 = v461;
    v18 = a3 + 48;
    if ((v5 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v18, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v18, &v455, a5);
    }

    v435 = v456;
    v437 = v455;
    v431 = v458;
    v433 = v457;
    v428 = v460;
    v429 = v459;
    v422 = v462;
    v425 = v461;
    v59 = a3 + 96;
    if ((v5 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v59, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v59, &v455, a5);
    }

    v416 = v456;
    v419 = v455;
    v410 = v458;
    v413 = v457;
    v405 = v460;
    v407 = v459;
    v401 = v462;
    v403 = v461;
    v60 = a3 + 144;
    if ((v5 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v60, &v455, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v60, &v455, a5);
    }

    v61 = v455;
    v62 = v456;
    v63 = v457;
    v64 = v458;
    v65 = v459;
    v66 = v460;
    v67 = v461;
    v68 = v462;
    *a1 = vmovn_s32(v443);
    *(a1 + 8) = vmovn_s32(v439);
    *(a1 + 16) = vmovn_s32(v445);
    *(a1 + 24) = vmovn_s32(v441);
    *(a1 + 32) = vmovn_s32(v419);
    *(a1 + 40) = vmovn_s32(v416);
    *(a1 + 48) = vmovn_s32(v407);
    *(a1 + 56) = vmovn_s32(v405);
    v69 = (a1 + a2);
    *v69 = vmovn_s32(v453);
    v69[1] = vmovn_s32(v451);
    v69[2] = vmovn_s32(v449);
    v69[3] = vmovn_s32(v447);
    v69[4] = vmovn_s32(v413);
    v69[5] = vmovn_s32(v410);
    v69[6] = vmovn_s32(v403);
    v69[7] = vmovn_s32(v401);
    v70 = (a1 + a2 + a2);
    *v70 = vmovn_s32(v437);
    v70[1] = vmovn_s32(v435);
    v70[2] = vmovn_s32(v429);
    v70[3] = vmovn_s32(v428);
    v70[4] = vmovn_s32(v61);
    v70[5] = vmovn_s32(v62);
    v70[6] = vmovn_s32(v65);
    v70[7] = vmovn_s32(v66);
    v71 = (v70 + a2);
    *v71 = vmovn_s32(v433);
    v71[1] = vmovn_s32(v431);
    v71[2] = vmovn_s32(v425);
    v71[3] = vmovn_s32(v422);
    v71[4] = vmovn_s32(v63);
    v71[5] = vmovn_s32(v64);
    v10 = 192;
    v71[6] = vmovn_s32(v67);
    v71[7] = vmovn_s32(v68);
    return v10;
  }

  if (a4 == 7)
  {
    v14 = vld1q_dup_f64(a3);
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
    v15 = (a1 + a2);
    *v15 = v14;
    v15[1] = v14;
    v15[2] = v14;
    v15[3] = v14;
    v16 = (a1 + 2 * a2);
    *v16 = v14;
    v16[1] = v14;
    v16[2] = v14;
    v16[3] = v14;
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    v10 = 8;
LABEL_156:
    v17[2] = v14;
    v17[3] = v14;
    return v10;
  }

  v19 = 8 * (a3 & 7);
  v20 = a3 & 0xFFFFFFFFFFFFFFF8;
  v21 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v19;
  if (v19 >= 0x1D)
  {
    v21 |= *(v20 + 8) << (-8 * (a3 & 7u));
  }

  v22.i16[0] = v21;
  v22.i16[1] = v21 >> 5;
  v22.i16[2] = v21 >> 10;
  v22.i16[3] = v21 >> 15;
  v23 = vand_s8(vshl_u32(vdup_n_s32(v21), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v23.i16[1] = v23.i16[2];
  v23.i16[2] = v21 >> 28;
  v23.i16[3] = BYTE4(v21) & 0xF;
  v24 = (8 * (a3 & 7)) | 0x600;
  v25 = v19 + 100;
  v26 = vand_s8(v22, 0x1F001F001F001FLL);
  v27 = vdupq_lane_s64(v26, 0);
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v450 = *&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3);
  v29 = vbicq_s8(vdupq_lane_s64(*&vadd_s16(v23, 0x1000100010001), 0), vceqq_s16((*&v27 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v30 = vandq_s8(vmovl_s16(vtst_s16((v26 & 0xFFE4FFE4FFE4FFE4), (v26 & 0xFFE4FFE4FFE4FFE4))), v28);
  if (vmaxvq_s8(v30) < 1)
  {
    v39 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v446 = v72;
    v448 = v72;
    v58 = v29;
    v57 = v29;
    v56 = v29;
    v442 = v72;
    v444 = v72;
    v55 = v29;
  }

  else
  {
    v31 = vmovl_u8(*&vpaddq_s8(v30, v30));
    v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
    v33 = vpaddq_s32(v32, v32).u64[0];
    v34.i64[0] = v33;
    v34.i64[1] = HIDWORD(v33);
    v35 = v34;
    v36 = vaddvq_s64(v34);
    v37 = v25 + v36;
    v38 = v36 <= 0x80 && v24 >= v37;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = v25 & 0x3C;
      v42 = vaddq_s64(vdupq_n_s64(v41), vzip1q_s64(0, v35));
      v43 = (v20 + ((v25 >> 3) & 0x18));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v42)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v42)));
      if (v41 + v36 >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v42)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v42))), v40);
      }

      v25 = v37;
    }

    v44 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
    v45.i64[0] = v44.u32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vshlq_u64(v40, vnegq_s64(v45));
    v47 = vuzp1q_s32(vzip1q_s64(v40, v46), vzip2q_s64(v40, v46));
    v48 = vshlq_u32(v47, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v49 = vuzp1q_s16(vzip1q_s32(v47, v48), vzip2q_s32(v47, v48));
    v50 = vshlq_u16(v49, vnegq_s16((*&v30 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v51 = vuzp1q_s8(vzip1q_s16(v49, v50), vzip2q_s16(v49, v50));
    v50.i64[0] = 0x101010101010101;
    v50.i64[1] = 0x101010101010101;
    v52 = vshlq_s8(v50, v30);
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v53 = vqtbl1q_s8(vandq_s8(vaddq_s8(v52, v50), v51), xmmword_29D2F0F70);
    *v51.i8 = vdup_lane_s32(*v53.i8, 0);
    *v50.i8 = vdup_lane_s32(*v53.i8, 1);
    v54 = vdupq_laneq_s32(v53, 2).u64[0];
    v53.i64[0] = vdupq_laneq_s32(v53, 3).u64[0];
    v55 = vsubw_s8(v29, *v51.i8);
    v56 = vsubw_s8(v29, *v50.i8);
    v57 = vsubw_s8(v29, v54);
    v58 = vsubw_s8(v29, *v53.i8);
    v446 = vmovl_s8(vceqz_s8(*v51.i8));
    v442 = vmovl_s8(vceqz_s8(*v50.i8));
    v444 = vmovl_s8(vceqz_s8(v54));
    v448 = vmovl_s8(vceqz_s8(*v53.i8));
  }

  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v74 = 0uLL;
  v454 = vandq_s8(vextq_s8(vtstq_s16(v27, v73), 0, 8uLL), v29);
  v75 = vmovl_u16(*&vpaddq_s16(v454, v454));
  v76 = vpaddq_s32(v75, v75).u64[0];
  v77.i64[0] = v76;
  v77.i64[1] = HIDWORD(v76);
  v78 = v77;
  v79 = vaddvq_s64(v77);
  v80 = v25 + v79;
  if (v79 <= 0x80 && v24 >= v80)
  {
    v82 = v25 & 0x3F;
    v83 = vaddq_s64(vdupq_n_s64(v82), vzip1q_s64(0, v78));
    v84 = (v20 + 8 * (v25 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v83)));
    if (v82 + v79 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v74);
    }

    v25 = v80;
  }

  else
  {
    v39 = 1;
  }

  v85 = v27.i8[0] & 3;
  if (v85 == 2)
  {
    v86 = v25 + 16;
    if (v24 >= v25 + 8)
    {
      v25 += 8;
    }

    else
    {
      v39 = 1;
      v86 = v25 + 8;
    }

    if (v24 >= v86)
    {
      v25 = v86;
    }

    else
    {
      v39 = 1;
    }
  }

  v87 = 0uLL;
  v432 = vextq_s8(0, v55, 8uLL);
  v88 = vmovl_u16(*&vpaddq_s16(v432, v432));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v25 + v92;
  if (v92 <= 0x80 && v24 >= v93)
  {
    v96 = v25 & 0x3F;
    v97 = vaddq_s64(vdupq_n_s64(v96), vzip1q_s64(0, v91));
    v98 = (v20 + 8 * (v25 >> 6));
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v97)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v97)));
    if (v96 + v92 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v97)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v97))), v95);
    }

    v25 = v93;
  }

  else
  {
    v39 = 1;
    v95 = 0uLL;
  }

  v99 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v25 + v103;
  if (v103 <= 0x80 && v24 >= v104)
  {
    v106 = v25 & 0x3F;
    v107 = vaddq_s64(vdupq_n_s64(v106), vzip1q_s64(0, v102));
    v108 = (v20 + 8 * (v25 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v107)));
    if (v106 + v103 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v87);
    }

    v25 = v104;
  }

  else
  {
    v39 = 1;
  }

  v109 = v25 + v103;
  v110 = 0uLL;
  if (v103 <= 0x80 && v24 >= v109)
  {
    v113 = v25 & 0x3F;
    v114 = vaddq_s64(vdupq_n_s64(v113), vzip1q_s64(0, v102));
    v115 = (v20 + 8 * (v25 >> 6));
    v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
    if (v113 + v103 >= 0x81)
    {
      v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v112);
    }

    v25 = v109;
  }

  else
  {
    v39 = 1;
    v112 = 0uLL;
  }

  v116 = v25 + v103;
  v117 = v103 <= 0x80 && v24 >= v116;
  v452 = v27;
  if (v117)
  {
    v118 = v25 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v102));
    v120 = (v20 + 8 * (v25 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v103 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v110);
    }

    v25 = v116;
  }

  else
  {
    v39 = 1;
  }

  v121 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v122 = vpaddq_s32(v121, v121).u64[0];
  v123.i64[0] = v122;
  v123.i64[1] = HIDWORD(v122);
  v124 = v123;
  v125 = vaddvq_s64(v123);
  v126 = v25 + v125;
  v127 = 0uLL;
  if (v125 <= 0x80 && v24 >= v126)
  {
    v130 = v25 & 0x3F;
    v131 = vaddq_s64(vdupq_n_s64(v130), vzip1q_s64(0, v124));
    v132 = (v20 + 8 * (v25 >> 6));
    v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
    if (v130 + v125 >= 0x81)
    {
      v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v129);
    }

    v25 = v126;
  }

  else
  {
    v39 = 1;
    v129 = 0uLL;
  }

  v133 = v25 + v125;
  if (v125 <= 0x80 && v24 >= v133)
  {
    v135 = v25 & 0x3F;
    v136 = vaddq_s64(vdupq_n_s64(v135), vzip1q_s64(0, v124));
    v137 = (v20 + 8 * (v25 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v135 + v125 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v127);
    }

    v25 = v133;
  }

  else
  {
    v39 = 1;
  }

  v434 = v55;
  v138 = v25 + v125;
  v139 = 0uLL;
  if (v125 <= 0x80 && v24 >= v138)
  {
    v142 = v25 & 0x3F;
    v143 = vaddq_s64(vdupq_n_s64(v142), vzip1q_s64(0, v124));
    v144 = (v20 + 8 * (v25 >> 6));
    v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v144, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v143)), vshlq_u64(vdupq_lane_s64(v144->i64[0], 0), vnegq_s64(v143)));
    if (v142 + v125 >= 0x81)
    {
      v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v144[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v143)), vshlq_u64(vdupq_laneq_s64(v144[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v143))), v141);
    }

    v25 = v138;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v39 = 1;
    v141 = 0uLL;
    if (v125 > 0x80)
    {
      goto LABEL_110;
    }
  }

  v145 = v25 + v125;
  if (v24 < v25 + v125)
  {
LABEL_110:
    v39 = 1;
    v145 = v25;
    goto LABEL_111;
  }

  v146 = v25 & 0x3F;
  v147 = vaddq_s64(vdupq_n_s64(v146), vzip1q_s64(0, v124));
  v148 = (v20 + 8 * (v25 >> 6));
  v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v148, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v147)), vshlq_u64(vdupq_lane_s64(v148->i64[0], 0), vnegq_s64(v147)));
  if (v146 + v125 >= 0x81)
  {
    v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v148[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v147)), vshlq_u64(vdupq_laneq_s64(v148[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v147))), v139);
  }

LABEL_111:
  v149 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v150 = vpaddq_s32(v149, v149).u64[0];
  v151.i64[0] = v150;
  v151.i64[1] = HIDWORD(v150);
  v152 = v151;
  v153 = vaddvq_s64(v151);
  v154 = v153;
  v155 = 0uLL;
  v436 = v56;
  v438 = v57;
  if (v153 > 0x80 || (v156 = v145 + v153, v24 < v145 + v153))
  {
    v39 = 1;
    v156 = v145;
    v159 = 0uLL;
  }

  else
  {
    v157 = vaddq_s64(vdupq_n_s64(v145 & 0x3F), vzip1q_s64(0, v152));
    v158 = (v20 + 8 * (v145 >> 6));
    v159 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v157)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v157)));
    if ((v145 & 0x3F) + v154 >= 0x81)
    {
      v159 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v157)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v157))), v159);
    }
  }

  if (v154 > 0x80 || (v160 = v156 + v154, v24 < v156 + v154))
  {
    v39 = 1;
    v160 = v156;
  }

  else
  {
    v161 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v152));
    v162 = (v20 + 8 * (v156 >> 6));
    v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v162, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v161)), vshlq_u64(vdupq_lane_s64(v162->i64[0], 0), vnegq_s64(v161)));
    if ((v156 & 0x3F) + v154 >= 0x81)
    {
      v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v162[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v161)), vshlq_u64(vdupq_laneq_s64(v162[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v161))), v155);
    }
  }

  v163 = 0uLL;
  if (v154 > 0x80 || (v164 = v160 + v154, v24 < v160 + v154))
  {
    v39 = 1;
    v164 = v160;
    v168 = 0uLL;
  }

  else
  {
    v165 = v160 & 0x3F;
    v166 = vaddq_s64(vdupq_n_s64(v165), vzip1q_s64(0, v152));
    v167 = (v20 + 8 * (v160 >> 6));
    v168 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v167, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v166)), vshlq_u64(vdupq_lane_s64(v167->i64[0], 0), vnegq_s64(v166)));
    if (v165 + v154 >= 0x81)
    {
      v168 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v167[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v166)), vshlq_u64(vdupq_laneq_s64(v167[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v166))), v168);
    }
  }

  if (v154 > 0x80 || (v169 = v164 + v154, v24 < v164 + v154))
  {
    v39 = 1;
    v169 = v164;
  }

  else
  {
    v170 = v164 & 0x3F;
    v171 = vaddq_s64(vdupq_n_s64(v170), vzip1q_s64(0, v152));
    v172 = (v20 + 8 * (v164 >> 6));
    v163 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v172, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v172->i64[0], 0), vnegq_s64(v171)));
    if (v170 + v154 >= 0x81)
    {
      v163 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v172[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v172[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v163);
    }
  }

  v440 = v58;
  v173 = vmovl_u16(*&vpaddq_s16(v58, v58));
  v174 = vpaddq_s32(v173, v173).u64[0];
  v175.i64[0] = v174;
  v175.i64[1] = HIDWORD(v174);
  v176 = v175;
  v177 = vaddvq_s64(v175);
  v178 = v177;
  v179 = 0uLL;
  if (v177 > 0x80 || (v180 = v169 + v177, v24 < v169 + v177))
  {
    v39 = 1;
    v180 = v169;
    v184 = 0uLL;
  }

  else
  {
    v181 = v169 & 0x3F;
    v182 = vaddq_s64(vdupq_n_s64(v181), vzip1q_s64(0, v176));
    v183 = (v20 + 8 * (v169 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v183, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v182)), vshlq_u64(vdupq_lane_s64(v183->i64[0], 0), vnegq_s64(v182)));
    if (v181 + v178 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v183[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v182)), vshlq_u64(vdupq_laneq_s64(v183[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v182))), v184);
    }
  }

  if (v178 > 0x80 || (v185 = v180 + v178, v24 < v180 + v178))
  {
    v39 = 1;
    v185 = v180;
  }

  else
  {
    v186 = v180 & 0x3F;
    v187 = vaddq_s64(vdupq_n_s64(v186), vzip1q_s64(0, v176));
    v188 = (v20 + 8 * (v180 >> 6));
    v179 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v188, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v188->i64[0], 0), vnegq_s64(v187)));
    if (v186 + v178 >= 0x81)
    {
      v179 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v188[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v188[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v179);
    }
  }

  if (v178 > 0x80 || (v189 = v185 + v178, v24 < v185 + v178))
  {
    v39 = 1;
    v189 = v185;
    v193 = 0uLL;
  }

  else
  {
    v190 = v185 & 0x3F;
    v191 = vaddq_s64(vdupq_n_s64(v190), vzip1q_s64(0, v176));
    v192 = (v20 + 8 * (v185 >> 6));
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v192, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v191)), vshlq_u64(vdupq_lane_s64(v192->i64[0], 0), vnegq_s64(v191)));
    if (v190 + v178 >= 0x81)
    {
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v192[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v191)), vshlq_u64(vdupq_laneq_s64(v192[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v191))), v193);
    }
  }

  if (v178 > 0x80)
  {
    goto LABEL_155;
  }

  v194 = v189 + v178;
  if (v24 < v189 + v178)
  {
    goto LABEL_155;
  }

  v195 = v189 & 0x3F;
  v196 = vaddq_s64(vdupq_n_s64(v195), vzip1q_s64(0, v176));
  v197 = (v20 + 8 * (v189 >> 6));
  v198 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v197, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v196)), vshlq_u64(vdupq_lane_s64(v197->i64[0], 0), vnegq_s64(v196)));
  if (v195 + v178 >= 0x81)
  {
    v198 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v197[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v196)), vshlq_u64(vdupq_laneq_s64(v197[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v196))), v198);
  }

  if ((v39 & 1) != 0 || (v10 = a4 + 1, v24 + 8 * v10 - v194 - 1536 >= 9) || v85 == 2)
  {
LABEL_155:
    v10 = 0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    *a1 = v14;
    *(a1 + 16) = v14;
    *(a1 + 32) = v14;
    *(a1 + 48) = v14;
    v199 = (a1 + a2);
    *v199 = v14;
    v199[1] = v14;
    v199[2] = v14;
    v199[3] = v14;
    v200 = (a1 + 2 * a2);
    *v200 = v14;
    v200[1] = v14;
    v200[2] = v14;
    v200[3] = v14;
    v17 = (a1 + a2 + 2 * a2);
    *v17 = v14;
    v17[1] = v14;
    goto LABEL_156;
  }

  v202 = vzip1_s32(*v75.i8, *&vextq_s8(v75, v75, 8uLL));
  v203 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
  v204 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v205 = vzip1_s32(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
  v206 = vzip1_s32(*v149.i8, *&vextq_s8(v149, v149, 8uLL));
  v207 = vzip1_s32(*v173.i8, *&vextq_s8(v173, v173, 8uLL));
  v208 = ((2 * *(v20 + (((v19 + 36) >> 3) & 8) + 8)) << ~(v19 + 36)) | (*(v20 + (((v19 + 36) >> 3) & 8)) >> (v19 + 36));
  v209.i64[0] = v202.u32[0];
  v209.i64[1] = v202.u32[1];
  v210 = vshlq_u64(v74, vnegq_s64(v209));
  v423 = vzip1q_s64(v74, v210);
  v426 = vzip2q_s64(v74, v210);
  v209.i64[0] = v203.u32[0];
  v209.i64[1] = v203.u32[1];
  v211 = vshlq_u64(v95, vnegq_s64(v209));
  v417 = vzip1q_s64(v95, v211);
  v420 = vzip2q_s64(v95, v211);
  v209.i64[0] = v204.u32[0];
  v209.i64[1] = v204.u32[1];
  v212 = vnegq_s64(v209);
  v213 = vshlq_u64(v87, v212);
  v411 = vzip1q_s64(v87, v213);
  v414 = vzip2q_s64(v87, v213);
  v214 = vshlq_u64(v112, v212);
  v408 = vzip2q_s64(v112, v214);
  v215 = vzip1q_s64(v112, v214);
  v216 = vshlq_u64(v110, v212);
  v217 = vzip2q_s64(v110, v216);
  v218 = vzip1q_s64(v110, v216);
  v209.i64[0] = v205.u32[0];
  v209.i64[1] = v205.u32[1];
  v219 = vnegq_s64(v209);
  v220 = vshlq_u64(v129, v219);
  v221 = vzip2q_s64(v129, v220);
  v222 = vzip1q_s64(v129, v220);
  v223 = vshlq_u64(v127, v219);
  v224 = vzip2q_s64(v127, v223);
  v225 = vzip1q_s64(v127, v223);
  v226 = vshlq_u64(v141, v219);
  v227 = vzip2q_s64(v141, v226);
  v228 = vzip1q_s64(v141, v226);
  v229 = vshlq_u64(v139, v219);
  v230 = vzip2q_s64(v139, v229);
  v231 = vzip1q_s64(v139, v229);
  v209.i64[0] = v206.u32[0];
  v209.i64[1] = v206.u32[1];
  v232 = vnegq_s64(v209);
  v233 = vshlq_u64(v159, v232);
  v234 = vzip2q_s64(v159, v233);
  v235 = vzip1q_s64(v159, v233);
  v236 = vshlq_u64(v155, v232);
  v237 = vzip2q_s64(v155, v236);
  v238 = vzip1q_s64(v155, v236);
  v239 = vshlq_u64(v168, v232);
  v240 = vzip2q_s64(v168, v239);
  v241 = vzip1q_s64(v168, v239);
  v242 = vshlq_u64(v163, v232);
  v243 = vzip2q_s64(v163, v242);
  v244 = vzip1q_s64(v163, v242);
  v209.i64[0] = v207.u32[0];
  v209.i64[1] = v207.u32[1];
  v430 = vnegq_s64(v209);
  v245 = vshlq_u64(v184, v430);
  v246 = vzip2q_s64(v184, v245);
  v247 = vzip1q_s64(v184, v245);
  v248 = vshlq_u64(v179, v430);
  v249 = vzip2q_s64(v179, v248);
  v250 = vzip1q_s64(v179, v248);
  v251 = vshlq_u64(v193, v430);
  v252 = vzip2q_s64(v193, v251);
  v253 = vzip1q_s64(v193, v251);
  v254 = vuzp1q_s32(v423, v426);
  v255 = vuzp1q_s32(v417, v420);
  v256 = vuzp1q_s32(v411, v414);
  v257 = vuzp1q_s32(v215, v408);
  v258 = vuzp1q_s32(v218, v217);
  v259 = vuzp1q_s32(v222, v221);
  v260 = vuzp1q_s32(v225, v224);
  v261 = vuzp1q_s32(v228, v227);
  v262 = vuzp1q_s32(v231, v230);
  v263 = vuzp1q_s32(v235, v234);
  v264 = vuzp1q_s32(v238, v237);
  v265 = vuzp1q_s32(v241, v240);
  v266 = vuzp1q_s32(v244, v243);
  v267 = vuzp1q_s32(v247, v246);
  v268 = vuzp1q_s32(v250, v249);
  v247.i64[0] = 0xFFFF0000FFFFLL;
  v247.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vuzp1q_s32(v253, v252);
  v270 = vshlq_u32(v254, vnegq_s32(vandq_s8(v454, v247)));
  v424 = vzip1q_s32(v254, v270);
  v427 = vzip2q_s32(v254, v270);
  v252.i64[0] = 0xFFFF0000FFFFLL;
  v252.i64[1] = 0xFFFF0000FFFFLL;
  v271 = vshlq_u32(v255, vnegq_s32(vandq_s8(v432, v252)));
  v418 = vzip1q_s32(v255, v271);
  v421 = vzip2q_s32(v255, v271);
  v272 = vnegq_s32(vandq_s8(v434, v252));
  v273 = vshlq_u32(v256, v272);
  v412 = vzip1q_s32(v256, v273);
  v415 = vzip2q_s32(v256, v273);
  v274 = vshlq_u32(v257, v272);
  v406 = vzip1q_s32(v257, v274);
  v409 = vzip2q_s32(v257, v274);
  v275 = vshlq_u32(v258, v272);
  v402 = vzip1q_s32(v258, v275);
  v404 = vzip2q_s32(v258, v275);
  v234.i64[0] = 0xFFFF0000FFFFLL;
  v234.i64[1] = 0xFFFF0000FFFFLL;
  v276 = vnegq_s32(vandq_s8(v436, v234));
  v277 = vshlq_u32(v259, v276);
  v399 = vzip1q_s32(v259, v277);
  v400 = vzip2q_s32(v259, v277);
  v278 = vshlq_u32(v260, v276);
  v397 = vzip1q_s32(v260, v278);
  v398 = vzip2q_s32(v260, v278);
  v279 = vshlq_u32(v261, v276);
  v395 = vzip1q_s32(v261, v279);
  v396 = vzip2q_s32(v261, v279);
  v280 = vshlq_u32(v262, v276);
  v394 = vzip2q_s32(v262, v280);
  v281 = vzip1q_s32(v262, v280);
  v262.i64[0] = 0xFFFF0000FFFFLL;
  v262.i64[1] = 0xFFFF0000FFFFLL;
  v282 = vnegq_s32(vandq_s8(v438, v262));
  v283 = vshlq_u32(v263, v282);
  v284 = vzip2q_s32(v263, v283);
  v285 = vzip1q_s32(v263, v283);
  v286 = vshlq_u32(v264, v282);
  v287 = vzip2q_s32(v264, v286);
  v288 = vzip1q_s32(v264, v286);
  v289 = vshlq_u32(v265, v282);
  v290 = vzip2q_s32(v265, v289);
  v291 = vzip1q_s32(v265, v289);
  v292 = vshlq_u32(v266, v282);
  v293 = vzip2q_s32(v266, v292);
  v294 = vzip1q_s32(v266, v292);
  v266.i64[0] = 0xFFFF0000FFFFLL;
  v266.i64[1] = 0xFFFF0000FFFFLL;
  v295 = vnegq_s32(vandq_s8(v440, v266));
  v296 = vshlq_u32(v267, v295);
  v297 = vzip2q_s32(v267, v296);
  v298 = vzip1q_s32(v267, v296);
  v299 = vshlq_u32(v268, v295);
  v300 = vzip2q_s32(v268, v299);
  v301 = vzip1q_s32(v268, v299);
  *v270.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v208), xmmword_29D2F10A0));
  v299.i32[0] = v208;
  LOWORD(v208) = v270.i16[2];
  v299.i16[2] = v270.i16[0];
  v302 = vshlq_u32(v269, v295);
  v303 = vuzp1q_s16(v285, v284);
  v304 = vuzp1q_s16(v288, v287);
  v305 = vuzp1q_s16(v298, v297);
  v306 = vuzp1q_s16(v301, v300);
  v307 = vuzp1q_s16(vzip1q_s32(v269, v302), vzip2q_s32(v269, v302));
  v302.i64[0] = 0x10001000100010;
  v302.i64[1] = 0x10001000100010;
  v273.i64[0] = 0xF000F000F000FLL;
  v273.i64[1] = 0xF000F000F000FLL;
  v300.i64[0] = 0x10001000100010;
  v300.i64[1] = 0x10001000100010;
  v308 = vshlq_s16(vuzp1q_s16(v418, v421), vsubq_s16(v300, v432));
  v309 = vsubq_s16(v300, v434);
  v269.i64[0] = 0xF000F000F000FLL;
  v269.i64[1] = 0xF000F000F000FLL;
  v310 = vaddq_s16(v432, v269);
  v311 = vaddq_s16(v434, v269);
  v231.i64[0] = 0x10001000100010;
  v231.i64[1] = 0x10001000100010;
  v312 = vsubq_s16(v231, v436);
  v297.i64[0] = 0xF000F000F000FLL;
  v297.i64[1] = 0xF000F000F000FLL;
  v313 = vaddq_s16(v436, v297);
  v314 = vshlq_s16(vuzp1q_s16(v399, v400), v312);
  v315 = vshlq_s16(vuzp1q_s16(v397, v398), v312);
  v316 = vshlq_s16(vuzp1q_s16(v395, v396), v312);
  v317 = vshlq_s16(vuzp1q_s16(v281, v394), v312);
  v312.i64[0] = 0x10001000100010;
  v312.i64[1] = 0x10001000100010;
  v318 = vsubq_s16(v312, v438);
  v261.i64[0] = 0xF000F000F000FLL;
  v261.i64[1] = 0xF000F000F000FLL;
  v319 = vaddq_s16(v438, v261);
  v320 = vshlq_s16(v303, v318);
  v321 = vshlq_s16(v304, v318);
  v322 = vshlq_s16(vuzp1q_s16(v291, v290), v318);
  v323 = vshlq_s16(vuzp1q_s16(v294, v293), v318);
  v290.i64[0] = 0x10001000100010;
  v290.i64[1] = 0x10001000100010;
  v324 = vsubq_s16(v290, v440);
  v255.i64[0] = 0xF000F000F000FLL;
  v255.i64[1] = 0xF000F000F000FLL;
  v325 = vaddq_s16(v440, v255);
  v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(v424, v427), vsubq_s16(v302, v454)), vaddq_s16(v454, v273));
  v327 = vshlq_s16(v308, v310);
  v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v412, v415), v309), v311);
  v329 = vshlq_s16(vshlq_s16(vuzp1q_s16(v406, v409), v309), v311);
  v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(v402, v404), v309), v311);
  v331 = vshlq_s16(v321, v319);
  v332 = vshlq_s16(v323, v319);
  v333 = vshlq_u64(v198, v430);
  v334 = vuzp1q_s32(vzip1q_s64(v198, v333), vzip2q_s64(v198, v333));
  v335 = vshlq_u32(v334, v295);
  v336 = vshlq_s16(vshlq_s16(v307, v324), v325);
  v337 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v324), v325);
  v338 = vandq_s8(v326, v446);
  v339 = vdupq_lane_s64(v326.i64[0], 0);
  v340 = vaddq_s16(v338, v327);
  v341 = vandq_s8(v442, v339);
  v342 = vsubq_s16(vshlq_s16(v314, v313), v341);
  v343 = vsubq_s16(vshlq_s16(v315, v313), v341);
  v344 = vsubq_s16(vshlq_s16(v316, v313), v341);
  v345 = vsubq_s16(vshlq_s16(v317, v313), v341);
  v346 = vandq_s8(v444, v339);
  v347 = vsubq_s16(vshlq_s16(v320, v319), v346);
  v348 = vsubq_s16(v331, v346);
  v349 = vsubq_s16(vshlq_s16(v322, v319), v346);
  v350 = vandq_s8(v446, v339);
  v351 = vsubq_s16(v332, v346);
  v352 = vandq_s8(v448, v339);
  v353 = vsubq_s16(vshlq_s16(vshlq_s16(v305, v324), v325), v352);
  v354 = vsubq_s16(vshlq_s16(vshlq_s16(v306, v324), v325), v352);
  v355 = vsubq_s16(v336, v352);
  v356 = vsubq_s16(v337, v352);
  v357 = vsubq_s16(v328, v350);
  v358 = vsubq_s16(v329, v350);
  v359.i64[0] = 0x1000100010001;
  v359.i64[1] = 0x1000100010001;
  v360 = vsubq_s16(v340, v350);
  v361 = vsubq_s16(v330, v350);
  v299.i16[3] = v208;
  v362 = vdupq_lane_s64(v299.i64[0], 0);
  if (vaddvq_s16(vceqq_s16(v450, v359)))
  {
    v363 = vnegq_s16(vandq_s8(v452, v359));
    v364.i64[0] = v361.i64[0];
    v365.i64[1] = v360.i64[1];
    v364.i64[1] = v360.i64[0];
    v365.i64[0] = v361.i64[1];
    v366 = vbslq_s8(v363, v365, v360);
    v367 = vbslq_s8(v363, v364, v361);
    v365.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v365.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v368 = vandq_s8(vqtbl4q_s8(*(&v357 - 1), v365), v363);
    v464.val[0] = vaddq_s16(v366, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10B0), v363));
    v464.val[1] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v357 - 1), xmmword_29D2F10C0), v363));
    v464.val[2] = vaddq_s16(v358, v368);
    v464.val[3] = vaddq_s16(v367, v368);
    v369 = vandq_s8(vqtbl4q_s8(v464, v365), v363);
    v360 = vaddq_s16(v464.val[0], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10D0), v363));
    v357 = vaddq_s16(v464.val[1], vandq_s8(vqtbl4q_s8(v464, xmmword_29D2F10E0), v363));
    v358 = vaddq_s16(v464.val[2], v369);
    v361 = vaddq_s16(v464.val[3], v369);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10B0), v363), v342);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F10F0), v363), v343);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, v365), v363), v344);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v342.i8, xmmword_29D2F1100), v363), v345);
    v370 = vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F10D0), v363);
    v464.val[0] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v342 = vaddq_s16(v370, v465.val[0]);
    v343 = vaddq_s16(v465.val[1], v370);
    v344 = vaddq_s16(v465.val[2], v464.val[0]);
    v345 = vaddq_s16(v465.val[3], v464.val[0]);
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0EB0), v363), v347);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F0FB0), v363), v348);
    v465.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10B0), v363), v349);
    v465.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v347.i8, xmmword_29D2F10C0), v363), v351);
    v464.val[1] = vandq_s8(vqtbl4q_s8(v465, v365), v363);
    v347 = vaddq_s16(v465.val[0], v464.val[1]);
    v348 = vaddq_s16(v465.val[1], v464.val[1]);
    v349 = vaddq_s16(v465.val[2], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F0FE0), v363));
    v351 = vaddq_s16(v465.val[3], vandq_s8(vqtbl4q_s8(v465, xmmword_29D2F1110), v363));
    v464.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F0EB0), v363), v353);
    v464.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F1120), v363), v354);
    v371 = v452;
    v465.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10B0), v363), v355);
    v465.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v353.i8, xmmword_29D2F10C0), v363), v356);
    v372 = vandq_s8(vqtbl4q_s8(*(&v464 + 32), v365), v363);
    v353 = vaddq_s16(v464.val[2], v372);
    v354 = vaddq_s16(v464.val[3], v372);
    v355 = vaddq_s16(v465.val[0], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F0FE0), v363));
    v356 = vaddq_s16(v465.val[1], vandq_s8(vqtbl4q_s8(*(&v464 + 32), xmmword_29D2F1130), v363));
  }

  else
  {
    v371 = v452;
  }

  v373 = vaddq_s16(v360, v362);
  v374 = vaddq_s16(v357, v362);
  v375 = vaddq_s16(v358, v362);
  v376 = vaddq_s16(v361, v362);
  v377 = vaddq_s16(v342, v362);
  v378 = vaddq_s16(v343, v362);
  v379 = vaddq_s16(v344, v362);
  v380 = vaddq_s16(v345, v362);
  v381 = vaddq_s16(v347, v362);
  v382 = vaddq_s16(v348, v362);
  v383 = vaddq_s16(v349, v362);
  v384 = vaddq_s16(v351, v362);
  v385 = vaddq_s16(v353, v362);
  v386 = vaddq_s16(v354, v362);
  v387 = vaddq_s16(v355, v362);
  v388 = vaddq_s16(v356, v362);
  v389.i64[0] = 0x10001000100010;
  v389.i64[1] = 0x10001000100010;
  v390 = vceqzq_s16(vandq_s8(v371, v389));
  v391 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1140), v390), v373);
  *(a1 + 16) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1140), v390), v375);
  *(a1 + 32) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1140), v390), v381);
  *(a1 + 48) = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1140), v390), v383);
  v392 = (a1 + 2 * a2);
  *v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1140), v390), v374);
  v391[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1140), v390), v376);
  v391[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1140), v390), v382);
  v391[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1140), v390), v384);
  *v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1140), v390), v377);
  v392[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1140), v390), v379);
  v392[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1140), v390), v385);
  v392[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v387, xmmword_29D2F1140), v390), v387);
  v393 = (v392 + a2);
  *v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1140), v390), v378);
  v393[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1140), v390), v380);
  v393[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1140), v390), v386);
  v393[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v388, xmmword_29D2F1140), v390), v388);
  return v10;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 64, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, v13 + v17 + 64, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 64, a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 64, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 512, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 576, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1024, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1088, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1536, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1600, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = *(a3 + 48);
  v9 = *(a3 + 32);
  v10 = *(a3 + a4 + 32);
  v11 = *(a3 + a4 + 48);
  v13 = *v7;
  v14 = v7[1];
  v15 = v7[2];
  v16 = v7[3];
  v12 = (v7 + a4);
  v17 = v15;
  v18 = v14;
  v19 = v12[1];
  v20 = v12[2];
  v21 = v12[3];
  v22 = *v12;
  v23 = vdupq_lane_s64(*a3, 0);
  v476 = *a3;
  v477 = *(a3 + a4);
  v478 = *(a3 + 16);
  v479 = *(a3 + a4 + 16);
  v480 = vsubq_s16(*a3, v23);
  v482 = vsubq_s16(v477, v23);
  v484 = vsubq_s16(v478, v23);
  v486 = vsubq_s16(v479, v23);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v480, v482), v484), v486), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vzip1q_s16(v26, v27);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v28)), vceqzq_s16(v28));
  v488 = vsubq_s16(v13, v23);
  v489 = vsubq_s16(v22, v23);
  v31 = vsubq_s16(v18, v23);
  v32 = vminq_s16(vminq_s16(v488, v489), v31);
  v490 = v31;
  v491 = vsubq_s16(v19, v23);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v26, v33);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v488, v489), v31), v491), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(v32, v491), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(v34, v37);
  v40 = vminq_s16(vminq_s16(v27, v33), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v41)), vceqzq_s16(v41));
  v492 = vsubq_s16(v9, v23);
  v493 = vsubq_s16(v10, v23);
  v466 = v9;
  v468 = v10;
  v469 = v8;
  v43 = vsubq_s16(v8, v23);
  v44 = vminq_s16(vminq_s16(v492, v493), v43);
  v471 = v11;
  v494 = v43;
  v495 = vsubq_s16(v11, v23);
  v45 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v493), v43), v495), xmmword_29D2F1150);
  v46 = vqtbl1q_s8(vminq_s16(v44, v495), xmmword_29D2F1150);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vmaxq_s16(v39, v47);
  v50 = vminq_s16(v40, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v51)), vceqzq_s16(v51));
  v496 = vsubq_s16(v17, v23);
  v497 = vsubq_s16(v20, v23);
  v500 = v23;
  v472 = v17;
  v474 = v20;
  v475 = v16;
  v464 = v19;
  v465 = v21;
  v498 = vsubq_s16(v16, v23);
  v499 = vsubq_s16(v21, v23);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v497), v498), v499), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v30, v30);
  v62 = vpmaxq_s16(v42, v42);
  v63 = vpmaxq_s16(v52, v52);
  v64 = vpmaxq_s16(v60, v60);
  v65 = vmaxq_s16(vmaxq_s16(v61, v62), vmaxq_s16(v63, v64));
  v66 = vclzq_s16(vsubq_s16(v57, v58));
  v67.i64[0] = 0xF000F000F000FLL;
  v67.i64[1] = 0xF000F000F000FLL;
  v68.i64[0] = -1;
  v68.i64[1] = -1;
  v507 = v58;
  v508 = v57;
  v69 = vsubq_s16(vshlq_s16(v68, vsubq_s16(v67, v66)), v58);
  v70 = vsubq_s16(v29, v66);
  v71 = vcgtq_s16(v65, v70);
  v72 = vminq_s16(v70, v65);
  v509 = vandq_s8(v69, v71);
  v9.i64[0] = 0x8000800080008;
  v9.i64[1] = 0x8000800080008;
  v73.i64[0] = 0x3000300030003;
  v73.i64[1] = 0x3000300030003;
  v74 = vorrq_s8(vandq_s8(vceqzq_s16(v72), v73), vorrq_s8(vandq_s8(v71, v9), 0));
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v62), v73), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v63), v73), 0);
  v503 = vsubq_s16(v72, v75);
  v504 = vsubq_s16(v72, v76);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v64), v73), 0);
  v505 = vsubq_s16(v72, v77);
  v506 = v72;
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v72, v61), v73), 0);
  v79.i64[0] = 0x4000400040004;
  v79.i64[1] = 0x4000400040004;
  v80 = vorrq_s8(vbicq_s8(v79, vceqq_s16(vaddq_s16(v77, v76), vnegq_s16(vaddq_s16(v78, v75)))), v74);
  v501 = v80;
  v502 = vsubq_s16(v72, v78);
  if (vmaxvq_s16(v72))
  {
    v448 = vsubq_s16(v480, vqtbl1q_s8(v480, xmmword_29D2F1140));
    v81 = vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140));
    v461 = v74;
    v82 = vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140));
    v83 = vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140));
    v84 = vsubq_s16(v489, vqtbl1q_s8(v489, xmmword_29D2F1140));
    v85 = vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140));
    v86 = vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140));
    v87 = vsubq_s16(v494, vqtbl1q_s8(v494, xmmword_29D2F1140));
    v88 = vsubq_s16(v495, vqtbl1q_s8(v495, xmmword_29D2F1140));
    v89 = vsubq_s16(v496, vqtbl1q_s8(v496, xmmword_29D2F1140));
    v90 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v81), v82), v83);
    v452 = v81;
    v454 = v83;
    v455 = v82;
    v91 = vminq_s16(vminq_s16(v448, v81), v82);
    v92 = vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140));
    v93 = vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140));
    v94 = vminq_s16(v91, v83);
    v95 = vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140));
    v96 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v97 = vqtbl1q_s8(v94, xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v100 = vmaxq_s16(v98, v81);
    v81.i64[0] = 0x8000800080008000;
    v81.i64[1] = 0x8000800080008000;
    v101 = vminq_s16(v99, v81);
    v102 = vzip1q_s16(v98, v99);
    v81.i64[0] = 0x10001000100010;
    v81.i64[1] = 0x10001000100010;
    v103 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v93, v84), v92), v85), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v100, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v95, v86), v87), v88), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v457 = vsubq_s16(v497, vqtbl1q_s8(v497, xmmword_29D2F1140));
    v459 = vsubq_s16(v498, vqtbl1q_s8(v498, xmmword_29D2F1140));
    v447 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v123 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v124 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v89, v457), v459), v447), xmmword_29D2F1150);
    v125 = vpmaxq_s16(v123, v123);
    v126 = vpminq_s16(v124, v124);
    v127 = vmaxq_s16(v118, v125);
    v128 = vminq_s16(v119, v126);
    v129 = vzip1q_s16(v125, v126);
    v130 = vbicq_s8(vsubq_s16(v81, vclsq_s16(v129)), vceqzq_s16(v129));
    v131 = vpmaxq_s16(v130, v130);
    v132 = vmaxq_s16(vmaxq_s16(v104, v113), vmaxq_s16(v122, v131));
    v133 = v128;
    v453 = v127;
    v134 = vclzq_s16(vsubq_s16(v127, v128));
    v135 = vsubq_s16(v81, v134);
    v136 = vcgtq_s16(v132, v135);
    v137 = vminq_s16(v135, v132);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v104), v73), 0);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v113), v73), 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v122), v73), 0);
    v141 = vmaxq_s16(vminq_s16(vsubq_s16(v137, v131), v73), 0);
    v118.i64[0] = 0x4000400040004;
    v118.i64[1] = 0x4000400040004;
    v142 = vbicq_s8(v118, vceqq_s16(vaddq_s16(v141, v140), vnegq_s16(vaddq_s16(v138, v139))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v143 = v136;
    v144 = vbslq_s8(v136, v132, v81);
    v145 = vsubq_s16(v137, v138);
    v146 = vsubq_s16(v137, v141);
    v450 = vsubq_s16(v137, v139);
    v451 = vsubq_s16(v137, v140);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v449 = v145;
    v147 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v137, vceqzq_s16((*&v144 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v142, v142)), v145, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v451, v450), v146), 3uLL));
    v141.i64[0] = 0x8000800080008;
    v141.i64[1] = 0x8000800080008;
    v127.i64[0] = 0x2000200020002;
    v127.i64[1] = 0x2000200020002;
    v148 = vandq_s8(vceqq_s16(vandq_s8(v461, v73), v127), v81);
    v149 = v506;
    v150 = v502;
    v151 = v503;
    v152 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, vceqzq_s16(vandq_s8(v461, v141))), v148), vandq_s8(vaddq_s16(v80, v80), v141)), v502, v138);
    v153 = v504;
    v154 = v505;
    v155 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v152, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v147).i64[0], 0);
    v156 = vaddvq_s16(v155);
    v158 = a5 < 4 || a6 < 2;
    if (v156)
    {
      v159.i64[0] = 0x3000300030003;
      v159.i64[1] = 0x3000300030003;
      v160 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v137), v159), v144), v142);
      v161.i64[0] = 0xF000F000F000FLL;
      v161.i64[1] = 0xF000F000F000FLL;
      v162 = vsubq_s16(v161, v134);
      v480 = vbslq_s8(v155, v448, v480);
      v482 = vbslq_s8(v155, v452, v482);
      v161.i64[0] = -1;
      v161.i64[1] = -1;
      v484 = vbslq_s8(v155, v455, v484);
      v486 = vbslq_s8(v155, v454, v486);
      v163 = vandq_s8(vsubq_s16(vshlq_s16(v161, v162), v133), v143);
      v488 = vbslq_s8(v155, v93, v488);
      v489 = vbslq_s8(v155, v84, v489);
      v490 = vbslq_s8(v155, v92, v490);
      v491 = vbslq_s8(v155, v85, v491);
      v492 = vbslq_s8(v155, v95, v492);
      v493 = vbslq_s8(v155, v86, v493);
      v494 = vbslq_s8(v155, v87, v494);
      v495 = vbslq_s8(v155, v88, v495);
      v496 = vbslq_s8(v155, v89, v496);
      v497 = vbslq_s8(v155, v457, v497);
      v498 = vbslq_s8(v155, v459, v498);
      v499 = vbslq_s8(v155, v447, v499);
      v150 = vbslq_s8(v155, v449, v502);
      v151 = vbslq_s8(v155, v450, v503);
      v502 = v150;
      v503 = v151;
      v153 = vbslq_s8(v155, v451, v504);
      v154 = vbslq_s8(v155, v146, v505);
      v504 = v153;
      v505 = v154;
      v508 = vbslq_s8(v155, v453, v508);
      v509 = vbslq_s8(v155, v163, v509);
      v149 = vbslq_s8(v155, v137, v506);
      v506 = v149;
      v507 = vbslq_s8(v155, v133, v507);
      v80 = vbslq_s8(v155, v160, v501);
      v500 = vbslq_s8(v155, vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140)), v500);
      v501 = v80;
    }

    v164 = v476;
    v165 = v477;
    v166 = v478;
    v167 = v479;
    if (!v158)
    {
      v168 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v190 = vsubq_s16(v476, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v169 = vsubq_s16(v478, v168);
      v170 = vsubq_s16(v479, v168);
      v171 = v464.i64[0];
      v172 = v479.i64[1];
      v173 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v174 = vsubq_s16(v22, vqtbl4q_s8(*v13.i8, xmmword_29D2F10F0));
      v175 = vsubq_s16(v18, vqtbl4q_s8(*v13.i8, xmmword_29D2F1160));
      v176 = vsubq_s16(v464, vqtbl4q_s8(*v13.i8, xmmword_29D2F1100));
      v510.val[0] = v466;
      v510.val[1] = v468;
      v510.val[2] = v469;
      v510.val[3].i64[0] = v471.i64[0];
      v510.val[3].i64[1] = v479.i64[1];
      v177 = vsubq_s16(v466, vqtbl4q_s8(v510, xmmword_29D2F1170));
      v178 = vsubq_s16(v468, vqtbl4q_s8(v510, xmmword_29D2F1180));
      v179 = vsubq_s16(v469, vqtbl4q_s8(v510, xmmword_29D2F10B0));
      v180 = vsubq_s16(v471, vqtbl4q_s8(v510, xmmword_29D2F10C0));
      v510.val[3] = v472;
      v181 = v474;
      v182 = v475;
      v183 = v465.i64[0];
      v184 = v479.i64[1];
      v185 = vsubq_s16(v472, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1170));
      v186 = vsubq_s16(v474, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F1120));
      v187 = vsubq_s16(v465, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10C0));
      v188 = v169;
      v189.i64[0] = v170.i64[0];
      v189.i64[1] = v190.i64[0];
      v190.i64[0] = v170.i64[1];
      v473 = vsubq_s16(v477, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v190, v473), v169), v189), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195.i64[0] = 0x8000800080008000;
      v195.i64[1] = 0x8000800080008000;
      v196 = vmaxq_s16(v193, v195);
      v197.i64[0] = 0x8000800080008000;
      v197.i64[1] = 0x8000800080008000;
      v198 = vzip1q_s16(v193, v194);
      v170.i64[0] = 0x10001000100010;
      v170.i64[1] = 0x10001000100010;
      v199 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v198)), vceqzq_s16(v198));
      v200 = vpmaxq_s16(v199, v199);
      v201 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v173, v174), v175), v176);
      v462 = v174;
      v463 = v173;
      v202 = vminq_s16(v173, v174);
      v203 = v178;
      v470 = v175;
      v467 = v176;
      v204 = vqtbl1q_s8(v201, xmmword_29D2F1150);
      v205 = vqtbl1q_s8(vminq_s16(vminq_s16(v202, v175), v176), xmmword_29D2F1150);
      v206 = vpmaxq_s16(v204, v204);
      v207 = vpminq_s16(v205, v205);
      v208 = vmaxq_s16(v196, v206);
      v209 = vminq_s16(vminq_s16(v194, v197), v207);
      v210 = vzip1q_s16(v206, v207);
      v211 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v210)), vceqzq_s16(v210));
      v212 = vpmaxq_s16(v211, v211);
      v458 = vsubq_s16(v475, vqtbl4q_s8(*(&v510 + 48), xmmword_29D2F10B0));
      v460 = v179;
      v213 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v510.val[3] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v213, v213);
      v510.val[3] = vpminq_s16(v510.val[3], v510.val[3]);
      v215 = vmaxq_s16(v208, v214);
      v216 = vminq_s16(v209, v510.val[3]);
      v217 = vzip1q_s16(v214, v510.val[3]);
      v218 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v217)), vceqzq_s16(v217));
      v510.val[3] = vpmaxq_s16(v218, v218);
      v219 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v220 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v185, v186), v458), v187), xmmword_29D2F1150);
      v221 = vpmaxq_s16(v219, v219);
      v222 = vpminq_s16(v220, v220);
      v223 = vmaxq_s16(v215, v221);
      v224 = vminq_s16(v216, v222);
      v225 = vzip1q_s16(v221, v222);
      v226 = vbicq_s8(vsubq_s16(v170, vclsq_s16(v225)), vceqzq_s16(v225));
      v227 = vpmaxq_s16(v226, v226);
      v228 = vmaxq_s16(vmaxq_s16(v200, v212), vmaxq_s16(v510.val[3], v227));
      v456 = v223;
      v229 = vclzq_s16(vsubq_s16(v223, v224));
      v230 = vsubq_s16(v170, v229);
      v231 = vcgtq_s16(v228, v230);
      v232 = vminq_s16(v230, v228);
      v230.i64[0] = 0x3000300030003;
      v230.i64[1] = 0x3000300030003;
      v233 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v200), v230), 0);
      v234 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v212), v230), 0);
      v235 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v510.val[3]), v230), 0);
      v236 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v227), v230), 0);
      v237 = vsubq_s16(v232, v233);
      v238 = vsubq_s16(v232, v234);
      v239 = vsubq_s16(v232, v235);
      v240 = vsubq_s16(v232, v236);
      v194.i64[0] = 0x4000400040004;
      v194.i64[1] = 0x4000400040004;
      v241 = vbicq_s8(v194, vceqq_s16(vaddq_s16(v236, v235), vnegq_s16(vaddq_s16(v233, v234))));
      v175.i64[0] = 0x7000700070007;
      v175.i64[1] = 0x7000700070007;
      v242 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v232, v231), vaddq_s16(v241, v241)), v237, v175), vshlq_n_s16(vaddq_s16(vaddq_s16(v239, v238), v240), 3uLL));
      v80 = v501;
      v150 = v502;
      v243 = vandq_s8(v501, v230);
      v244.i64[0] = 0x2000200020002;
      v244.i64[1] = 0x2000200020002;
      v245 = vandq_s8(vceqq_s16(v243, v244), v170);
      v243.i64[0] = 0x8000800080008;
      v243.i64[1] = 0x8000800080008;
      v246 = vandq_s8(vaddq_s16(v80, v80), v243);
      v247 = vceqzq_s16(vandq_s8(v501, v243));
      v154 = v505;
      v149 = v506;
      v248 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v506, v247), v246), v245), v502, v175);
      v151 = v503;
      v153 = v504;
      v249 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v248, vshlq_n_s16(vaddq_s16(vaddq_s16(v504, v503), v505), 3uLL)), v242).i64[0], 0);
      if (vaddvq_s16(v249))
      {
        v250.i64[0] = 0x9000900090009;
        v250.i64[1] = 0x9000900090009;
        v251 = vorrq_s8(vandq_s8(vceqzq_s16(v232), v244), vsubq_s16(vandq_s8(v231, v250), vmvnq_s8(v231)));
        v250.i64[0] = -1;
        v250.i64[1] = -1;
        v252.i64[0] = 0xF000F000F000FLL;
        v252.i64[1] = 0xF000F000F000FLL;
        v150 = vbslq_s8(v249, v237, v502);
        v151 = vbslq_s8(v249, v238, v503);
        v153 = vbslq_s8(v249, v239, v504);
        v154 = vbslq_s8(v249, v240, v505);
        v149 = vbslq_s8(v249, v232, v506);
        v80 = vbslq_s8(v249, vorrq_s8(v251, v241), v501);
        v499 = vbslq_s8(v249, v187, v499);
        v500 = vbslq_s8(v249, vextq_s8(v479, v479, 8uLL), v500);
        v480 = vbslq_s8(v249, v190, v480);
        v482 = vbslq_s8(v249, v473, v482);
        v484 = vbslq_s8(v249, v188, v484);
        v486 = vbslq_s8(v249, v189, v486);
        v488 = vbslq_s8(v249, v463, v488);
        v489 = vbslq_s8(v249, v462, v489);
        v490 = vbslq_s8(v249, v470, v490);
        v491 = vbslq_s8(v249, v467, v491);
        v492 = vbslq_s8(v249, v177, v492);
        v493 = vbslq_s8(v249, v203, v493);
        v494 = vbslq_s8(v249, v460, v494);
        v495 = vbslq_s8(v249, v180, v495);
        v496 = vbslq_s8(v249, v185, v496);
        v497 = vbslq_s8(v249, v186, v497);
        v498 = vbslq_s8(v249, v458, v498);
        v507 = vbslq_s8(v249, v224, v507);
        v508 = vbslq_s8(v249, v456, v508);
        v509 = vbslq_s8(v249, vandq_s8(vsubq_s16(vshlq_s16(v250, vsubq_s16(v252, v229)), v224), v231), v509);
        v502 = v150;
        v503 = v151;
        v504 = v153;
        v505 = v154;
        v506 = v149;
        v501 = v80;
      }
    }

    v253 = vandq_s8(v509, vceqq_s16(v149, v150));
    v481 = vaddq_s16(v253, v480);
    v483 = vaddq_s16(v482, v253);
    v485 = vaddq_s16(v484, v253);
    v487 = vaddq_s16(v486, v253);
    v254 = vandq_s8(v509, vceqq_s16(v149, v151));
    v488 = vaddq_s16(v488, v254);
    v489 = vaddq_s16(v489, v254);
    v490 = vaddq_s16(v490, v254);
    v491 = vaddq_s16(v491, v254);
    v255 = vandq_s8(v509, vceqq_s16(v149, v153));
    v492 = vaddq_s16(v492, v255);
    v493 = vaddq_s16(v493, v255);
    v494 = vaddq_s16(v494, v255);
    v495 = vaddq_s16(v495, v255);
    v256 = vandq_s8(v509, vceqq_s16(v149, v154));
    v496 = vaddq_s16(v496, v256);
    v497 = vaddq_s16(v497, v256);
    v498 = vaddq_s16(v498, v256);
    v499 = vaddq_s16(v499, v256);
    v256.i64[0] = 0x8000800080008;
    v256.i64[1] = 0x8000800080008;
    v257.i64[0] = 0x3000300030003;
    v257.i64[1] = 0x3000300030003;
    v258.i64[0] = 0x2000200020002;
    v258.i64[1] = 0x2000200020002;
    v259 = vceqq_s16(vandq_s8(v80, v257), v258);
    v258.i64[0] = 0x10001000100010;
    v258.i64[1] = 0x10001000100010;
    v260 = vandq_s8(v259, v258);
    v258.i64[0] = 0x7000700070007;
    v258.i64[1] = 0x7000700070007;
    v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v149, vceqzq_s16(vandq_s8(v80, v256))), vandq_s8(vaddq_s16(v80, v80), v256)), v260), v150, v258), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v151), v154), 3uLL));
    v262 = vpaddq_s16(v261, v261);
    if ((vpaddq_s16(v262, v262).i16[0] - 1181) < 0xFFFFFFFFFFFFFAF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 160;
    }

    else
    {
      v263 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v264 = 8 * (a1 & 7);
      if (v264)
      {
        v265 = *v263 & ~(-1 << v264);
      }

      else
      {
        v265 = 0;
      }

      *a2 = 0;
      v267 = v500.i64[0];
      if (v149.i16[0])
      {
        v268 = ((v149.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v268 = 0;
      }

      if (v149.i16[1])
      {
        v269 = ((v149.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v269 = 0;
      }

      if (v149.i16[2])
      {
        v270 = (v149.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v270 = 0;
      }

      if (v149.i16[3])
      {
        v271 = ((v149.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v271 = 0;
      }

      v272 = (v80.i8[0] & 0x1F | (32 * (v80.i8[2] & 0x1F)) & 0x83FF | ((v80.i8[4] & 0x1F) << 10) | ((v80.i8[6] & 0x1F) << 15) | v268 | v269 | v270) + v271;
      v273 = (v272 << v264) | v265;
      if (v264 >= 0x1C)
      {
        *v263 = v273;
        v273 = v272 >> (-8 * (a1 & 7u));
      }

      v274 = v267 | (WORD1(v267) << 16) | (WORD2(v267) << 32) | (HIWORD(v267) << 48);
      v275 = (v264 + 36) & 0x3C;
      *(v263 + (((v264 + 36) >> 3) & 8)) = v273 | (v274 << v275);
      v276 = v264 + 100;
      v277 = vsubq_s16(v506, v502);
      v278 = vsubq_s16(v506, v503);
      v279 = vsubq_s16(v506, v504);
      v280 = vsubq_s16(v506, v505);
      *v277.i8 = vqmovn_u16(v277);
      *v278.i8 = vqmovn_u16(v278);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u16(v280);
      v281 = vtrn1q_s8(v277, v278);
      v282 = vtrn2q_s8(v277, v278);
      v283 = vtrn1q_s8(v279, v280);
      v284 = vtrn2q_s8(v279, v280);
      v285 = vzip1q_s16(v282, v284);
      v286 = vtrn2q_s16(v282, v284);
      v282.i64[0] = vzip1q_s32(vzip1q_s16(v281, v283), v285).u64[0];
      v286.i64[0] = vzip1q_s32(vtrn2q_s16(v281, v283), v286).u64[0];
      v279.i64[0] = 0x202020202020202;
      v279.i64[1] = 0x202020202020202;
      v287 = vandq_s8(vmovl_s16(vtst_s16(*v501.i8, 0x4000400040004)), v279);
      v279.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v279.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[0] = -1;
      v281.i64[1] = -1;
      v288 = vshlq_u8(v281, vorrq_s8(v287, v279));
      v289 = vmovl_u8(vand_s8(*v288.i8, *v282.i8));
      v290 = vmovl_u8(vand_s8(*&vextq_s8(v288, v288, 8uLL), *v286.i8));
      v291 = vmovl_u8(*v287.i8);
      v292 = vmovl_high_u8(v287);
      v293 = vpaddq_s16(vshlq_u16(v289, vtrn1q_s16(0, v291)), vshlq_u16(v290, vtrn1q_s16(0, v292)));
      v294 = vpaddq_s16(v291, v292);
      v295 = vmovl_u16(*v294.i8);
      v296 = vmovl_high_u16(v294);
      v297 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v295)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v296)));
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
      v305 = (v264 + 100) & 0x3C;
      v306 = (v303.i64[0] << v305) | (v274 >> -v275);
      if ((v304.i64[0] + v305) >= 0x40)
      {
        *(v263 + ((v276 >> 3) & 0x18)) = v306;
        v306 = v303.i64[0] >> -v305;
      }

      v307 = v304.i64[0] + v276;
      v308 = v306 | (v303.i64[1] << v307);
      if ((v307 & 0x3F) + v304.i64[1] >= 0x40)
      {
        *(v263 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v303.i64[1] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v308 = 0;
        }
      }

      v309 = v307 + v304.i64[1];
      v310.i64[0] = 0x8000800080008;
      v310.i64[1] = 0x8000800080008;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vextq_s8(vtstq_s16(v501, v310), 0, 8uLL), v506);
      v313.i64[0] = 0xF000F000F000FLL;
      v313.i64[1] = 0xF000F000F000FLL;
      v314 = vandq_s8(vshlq_u16(v311, vaddq_s16(v312, v313)), v509);
      v315 = vmovl_u16(*v312.i8);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vmovl_high_u16(v314));
      v317 = vpaddq_s32(v315, vmovl_high_u16(v312));
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
      v324 = (v322.i64[0] << v309) | v308;
      if (v323.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v263 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = v323.i64[0] + v309;
      v326 = v324 | (v322.i64[1] << v325);
      if ((v325 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v263 + ((v325 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v322.i64[1] >> -(v325 & 0x3F);
        if ((v325 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = v325 + v323.i64[1];
      v328 = vextq_s8(0, v502, 8uLL);
      v329.i64[0] = 0xF000F000F000FLL;
      v329.i64[1] = 0xF000F000F000FLL;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vshlq_u16(v330, vaddq_s16(v328, v329)), v481);
      v332 = vmovl_u16(*v328.i8);
      v333 = vmovl_high_u16(v328);
      v334 = vpaddq_s32(vmovl_u16(*v331.i8), vshlq_u32(vmovl_high_u16(v331), vtrn1q_s32(0, v333)));
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
      v342 = (v340.i64[0] << v327) | v326;
      if (v341.i64[0] + (v327 & 0x3F) >= 0x40)
      {
        *(v263 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341.i64[0] + v327;
      v344 = v342 | (v340.i64[1] << v343);
      if ((v343 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v263 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v340.i64[1] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343 + v341.i64[1];
      v346.i64[0] = 0xF000F000F000FLL;
      v346.i64[1] = 0xF000F000F000FLL;
      v347.i64[0] = -1;
      v347.i64[1] = -1;
      v348 = vandq_s8(vshlq_u16(v347, vaddq_s16(v502, v346)), v483);
      v349 = vmovl_u16(*v502.i8);
      v350 = vmovl_high_u16(v502);
      v351 = vpaddq_s32(vshlq_u32(vmovl_u16(*v348.i8), vtrn1q_s32(0, v349)), vshlq_u32(vmovl_high_u16(v348), vtrn1q_s32(0, v350)));
      v352 = vpaddq_s32(v349, v350);
      v353.i64[0] = v351.u32[0];
      v353.i64[1] = v351.u32[1];
      v354 = v353;
      v353.i64[0] = v351.u32[2];
      v353.i64[1] = v351.u32[3];
      v355 = v353;
      v353.i64[0] = v352.u32[0];
      v353.i64[1] = v352.u32[1];
      v356 = v353;
      v353.i64[0] = v352.u32[2];
      v353.i64[1] = v352.u32[3];
      v357 = vpaddq_s64(vshlq_u64(v354, vzip1q_s64(0, v356)), vshlq_u64(v355, vzip1q_s64(0, v353)));
      v358 = vpaddq_s64(v356, v353);
      v359 = (v357.i64[0] << v345) | v344;
      if (v358.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v263 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v357.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = v358.i64[0] + v345;
      v361 = v359 | (v357.i64[1] << v360);
      if ((v360 & 0x3F) + v358.i64[1] >= 0x40)
      {
        *(v263 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v357.i64[1] >> -(v360 & 0x3F);
        if ((v360 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360 + v358.i64[1];
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364.i64[0] = -1;
      v364.i64[1] = -1;
      v365 = vandq_s8(vshlq_u16(v364, vaddq_s16(v502, v363)), v485);
      v366 = vmovl_u16(*v502.i8);
      v367 = vmovl_high_u16(v502);
      v368 = vpaddq_s32(vshlq_u32(vmovl_u16(*v365.i8), vtrn1q_s32(0, v366)), vshlq_u32(vmovl_high_u16(v365), vtrn1q_s32(0, v367)));
      v369 = vpaddq_s32(v366, v367);
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
      v376 = (v374.i64[0] << v362) | v361;
      if (v375.i64[0] + (v362 & 0x3F) >= 0x40)
      {
        *(v263 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v374.i64[0] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375.i64[0] + v362;
      v378 = v376 | (v374.i64[1] << v377);
      if ((v377 & 0x3F) + v375.i64[1] >= 0x40)
      {
        *(v263 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v374.i64[1] >> -(v377 & 0x3F);
        if ((v377 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377 + v375.i64[1];
      v380.i64[0] = 0xF000F000F000FLL;
      v380.i64[1] = 0xF000F000F000FLL;
      v381.i64[0] = -1;
      v381.i64[1] = -1;
      v382 = vandq_s8(vshlq_u16(v381, vaddq_s16(v502, v380)), v487);
      v383 = vmovl_u16(*v502.i8);
      v384 = vmovl_high_u16(v502);
      v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v383)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v384)));
      v386 = vpaddq_s32(v383, v384);
      v387.i64[0] = v385.u32[0];
      v387.i64[1] = v385.u32[1];
      v388 = v387;
      v387.i64[0] = v385.u32[2];
      v387.i64[1] = v385.u32[3];
      v389 = v387;
      v387.i64[0] = v386.u32[0];
      v387.i64[1] = v386.u32[1];
      v390 = v387;
      v387.i64[0] = v386.u32[2];
      v387.i64[1] = v386.u32[3];
      v391 = vpaddq_s64(vshlq_u64(v388, vzip1q_s64(0, v390)), vshlq_u64(v389, vzip1q_s64(0, v387)));
      v392 = vpaddq_s64(v390, v387);
      v393 = (v391.i64[0] << v379) | v378;
      if (v392.i64[0] + (v379 & 0x3F) >= 0x40)
      {
        *(v263 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
        v393 = v391.i64[0] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v393 = 0;
        }
      }

      v394 = v392.i64[1];
      v395 = v392.i64[0] + v379;
      v396 = (v392.i64[0] + v379) & 0x3F;
      v397 = v393 | (v391.i64[1] << v395);
      if ((v396 + v392.i64[1]) >= 0x40)
      {
        *(v263 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v391.i64[1] >> -v396;
        if (!v396)
        {
          v397 = 0;
        }
      }

      v398 = 0;
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = v395 + v394;
      do
      {
        v402 = vandq_s8(vshlq_u16(v400, vaddq_s16(v503, v399)), *(&v488 + v398));
        v403 = vmovl_u16(*v503.i8);
        v404 = vmovl_high_u16(v503);
        v405 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), vtrn1q_s32(0, v403)), vshlq_u32(vmovl_high_u16(v402), vtrn1q_s32(0, v404)));
        v406 = vpaddq_s32(v403, v404);
        v407.i64[0] = v405.u32[0];
        v407.i64[1] = v405.u32[1];
        v408 = v407;
        v407.i64[0] = v405.u32[2];
        v407.i64[1] = v405.u32[3];
        v409 = v407;
        v407.i64[0] = v406.u32[0];
        v407.i64[1] = v406.u32[1];
        v410 = v407;
        v407.i64[0] = v406.u32[2];
        v407.i64[1] = v406.u32[3];
        v411 = vpaddq_s64(vshlq_u64(v408, vzip1q_s64(0, v410)), vshlq_u64(v409, vzip1q_s64(0, v407)));
        v412 = vpaddq_s64(v410, v407);
        v413 = (v411.i64[0] << v401) | v397;
        if (v412.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v401;
        v397 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v263 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v414 + v412.i64[1];
        v398 += 16;
      }

      while (v398 != 64);
      v415 = 0;
      v416.i64[0] = 0xF000F000F000FLL;
      v416.i64[1] = 0xF000F000F000FLL;
      v417.i64[0] = -1;
      v417.i64[1] = -1;
      do
      {
        v418 = vandq_s8(vshlq_u16(v417, vaddq_s16(v504, v416)), *(&v492 + v415));
        v419 = vmovl_u16(*v504.i8);
        v420 = vmovl_high_u16(v504);
        v421 = vpaddq_s32(vshlq_u32(vmovl_u16(*v418.i8), vtrn1q_s32(0, v419)), vshlq_u32(vmovl_high_u16(v418), vtrn1q_s32(0, v420)));
        v422 = vpaddq_s32(v419, v420);
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
        v427 = vpaddq_s64(vshlq_u64(v424, vzip1q_s64(0, v426)), vshlq_u64(v425, vzip1q_s64(0, v423)));
        v428 = vpaddq_s64(v426, v423);
        v429 = (v427.i64[0] << v401) | v397;
        if (v428.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
          v429 = v427.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v429 = 0;
          }
        }

        v430 = v428.i64[0] + v401;
        v397 = v429 | (v427.i64[1] << v430);
        if ((v430 & 0x3F) + v428.i64[1] >= 0x40)
        {
          *(v263 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v427.i64[1] >> -(v430 & 0x3F);
          if ((v430 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v430 + v428.i64[1];
        v415 += 16;
      }

      while (v415 != 64);
      v431 = 0;
      v432.i64[0] = 0xF000F000F000FLL;
      v432.i64[1] = 0xF000F000F000FLL;
      v433.i64[0] = -1;
      v433.i64[1] = -1;
      do
      {
        v434 = vandq_s8(vshlq_u16(v433, vaddq_s16(v505, v432)), *(&v496 + v431));
        v435 = vmovl_u16(*v505.i8);
        v436 = vmovl_high_u16(v505);
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
        v445 = (v443.i64[0] << v401) | v397;
        if (v444.i64[0] + (v401 & 0x3F) >= 0x40)
        {
          *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
          v445 = v443.i64[0] >> -(v401 & 0x3F);
          if ((v401 & 0x3F) == 0)
          {
            v445 = 0;
          }
        }

        v446 = v444.i64[0] + v401;
        v397 = v445 | (v443.i64[1] << v446);
        if ((v446 & 0x3F) + v444.i64[1] >= 0x40)
        {
          *(v263 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v443.i64[1] >> -(v446 & 0x3F);
          if ((v446 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v401 = v446 + v444.i64[1];
        v431 += 16;
      }

      while (v431 != 64);
      if ((v401 & 0x3F) != 0)
      {
        *(v263 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      }

      result = (v401 - v264 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v42, v44);
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

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 40, &v58, a7, v42, v47);
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
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 80, &v58, a7, v51, v44);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 120, &v58, a7, v51, v47);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v292 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F2700, 0x10uLL);
  memset_pattern16(v281, &unk_29D2F2710, 0x10uLL);
  memset_pattern16(v280, &unk_29D2F26F0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v266 = v10;
  v11 = a4 < 2 || a5 == 0;
  v265 = v11;
  v12 = a4 < 2 || a5 < 2;
  v264 = v12;
  v13 = a4 < 3 || a5 == 0;
  v263 = v13;
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
      v28 = &v283[v9];
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
      if (v31 == 32769)
      {
        v23 = 0;
      }

      else
      {
        v23 = v31 ^ 0x8000;
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
      if (v33 == 32769)
      {
        v26 = 0;
      }

      else
      {
        v26 = v33 ^ 0x8000;
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
        v20 = &v283[v9];
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
        v20 = &v283[v9];
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

    v35 = &v287[v9 + 4];
    v287[v9 + 4] = v19;
    v287[v9 + 8] = v19;
    v287[v9] = 0;
    if (v265)
    {
      v36 = v19;
      if (v266)
      {
        goto LABEL_67;
      }

LABEL_62:
      if (v22 < v36)
      {
        v287[v9] = 2;
        v287[v9 + 8] = v22;
        v36 = v22;
      }

      v38 = &v283[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v287[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_67;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v287[v9] = 1;
      v287[v9 + 8] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v287[v9 + 4];
    }

    else
    {
      v37 = &v283[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v266)
    {
      goto LABEL_62;
    }

LABEL_67:
    if (v264)
    {
      if (v13)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v287[v9] = 3;
        v287[v9 + 8] = v23;
        v36 = v23;
      }

      v39 = &v283[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v287[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_69:
        if (v15)
        {
          goto LABEL_70;
        }

        goto LABEL_83;
      }
    }

    if (v24 < v36)
    {
      v287[v9] = 4;
      v287[v9 + 8] = v24;
      v36 = v24;
    }

    v40 = &v283[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v287[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_70:
      if (v14)
      {
        goto LABEL_71;
      }

      goto LABEL_88;
    }

LABEL_83:
    if (v25 < v36)
    {
      v287[v9] = 5;
      v287[v9 + 8] = v25;
      v36 = v25;
    }

    v41 = &v283[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v287[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_71:
      if (v16)
      {
        goto LABEL_98;
      }

LABEL_93:
      if (v27 < v36)
      {
        v287[v9] = 7;
        v287[v9 + 8] = v27;
        v36 = v27;
      }

      v43 = &v283[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v287[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_98;
    }

LABEL_88:
    if (v26 < v36)
    {
      v287[v9] = 6;
      v287[v9 + 8] = v26;
      v36 = v26;
    }

    v42 = &v283[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v287[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_93;
    }

LABEL_98:
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

    v284[v9] = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (!(v36 >> 15) && v19 >= 0x8000)
      {
        v48 = kDQuadParamTable[10 * v46 + 488] == 0;
      }

      if (v46 <= 0xC)
      {
LABEL_113:
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
        goto LABEL_113;
      }
    }

    v49 = !v48;
    if (v48)
    {
      v50 = 1;
    }

    else
    {
      v50 = 2;
    }

    v51 = v50 + kDQuadParamTable[10 * v46 + 484];
    if (v49)
    {
      v52 = -2;
    }

    else
    {
      v52 = 0;
    }

    if (v51 >= 0x10)
    {
      v53 = 0;
    }

    else
    {
      v53 = v36 & ~(-1 << (16 - v51));
    }

    v54 = v53 + v52;
    v55 = __clz(v54 + v19 - v36);
    if (v54 >= 1 && v55 < v44)
    {
      v284[v9] = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v279[0] = 0;
  v279[1] = 0;
  v278[0] = 0;
  v278[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v281, v284, v279, v278);
  v57 = 0;
  v58 = 0;
  if (a4)
  {
    v59 = a5 == 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = v59;
  while (2)
  {
    v62 = v281[v57];
    v63 = v284[v57];
    v64 = &kDQuadParamTable[160 * v62 + 10 * v63];
    v65 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v62 + 2);
    v66 = v64[5];
    v67 = v64[4] + v65;
    *(&v274 + v57 * 4) = v67;
    v68 = v66 + v65;
    *(&v270 + v57 * 4) = v68;
    v69 = *(v64 + 1);
    v70 = *(v278 + v57 * 4) - *(v279 + v57 * 4);
    if (v70 < 0)
    {
      v72 = &kDQuadParamTable[160 * v62 + 10 * v63];
      if (v72[7] < *(v279 + v57 * 4) - *(v278 + v57 * 4))
      {
        *(&v270 + v57 * 4) = --v68;
        if (!v72[8])
        {
          v71 = -1;
LABEL_141:
          *(&v274 + v57 * 4) = v71 + v67;
        }
      }
    }

    else if (v70)
    {
      v68 += v70;
      *(&v270 + v57 * 4) = v68;
      v71 = v70;
      goto LABEL_141;
    }

    if (v62 == 5 && v63 == 1)
    {
      v58 |= v70 < 2;
    }

    if (a3 == 4)
    {
      v73 = 1 << (*(&__b + v57 * 4) - 1);
      if (v62 == 3)
      {
        v74 = -31745;
      }

      else
      {
        v74 = -1;
      }

      if (v62 == 4)
      {
        v75 = -2139095041;
      }

      else
      {
        v75 = v74;
      }

      if (v60)
      {
        if (v265)
        {
          goto LABEL_156;
        }

LABEL_170:
        v79 = v283[v57 + 4];
        v81 = (v79 | v75) == 0xFFFFFFFF || v79 == v73;
        v58 |= v81;
        if (!v266)
        {
          goto LABEL_177;
        }

LABEL_157:
        if (v264)
        {
          goto LABEL_158;
        }

LABEL_184:
        v85 = v283[v57 + 12];
        v87 = (v85 | v75) == 0xFFFFFFFF || v85 == v73;
        v58 |= v87;
        if (!v263)
        {
          goto LABEL_191;
        }

LABEL_159:
        if (v15)
        {
          goto LABEL_160;
        }

LABEL_198:
        v91 = v283[v57 + 20];
        v93 = (v91 | v75) == 0xFFFFFFFF || v91 == v73;
        v58 |= v93;
        if (!v14)
        {
          goto LABEL_205;
        }

LABEL_161:
        if (!v16)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v76 = v283[v57];
        v78 = (v76 | v75) == 0xFFFFFFFF || v76 == v73;
        v58 |= v78;
        if (!v265)
        {
          goto LABEL_170;
        }

LABEL_156:
        if (v266)
        {
          goto LABEL_157;
        }

LABEL_177:
        v82 = v283[v57 + 8];
        v84 = (v82 | v75) == 0xFFFFFFFF || v82 == v73;
        v58 |= v84;
        if (!v264)
        {
          goto LABEL_184;
        }

LABEL_158:
        if (v263)
        {
          goto LABEL_159;
        }

LABEL_191:
        v88 = v283[v57 + 16];
        v90 = (v88 | v75) == 0xFFFFFFFF || v88 == v73;
        v58 |= v90;
        if (!v15)
        {
          goto LABEL_198;
        }

LABEL_160:
        if (v14)
        {
          goto LABEL_161;
        }

LABEL_205:
        v94 = v283[v57 + 24];
        v96 = (v94 | v75) == 0xFFFFFFFF || v94 == v73;
        v58 |= v96;
        if (!v16)
        {
LABEL_212:
          v97 = v283[v57 + 28];
          v99 = (v97 | v75) == 0xFFFFFFFF || v97 == v73;
          v58 |= v99;
        }
      }
    }

    if (v69 >> v68 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)18,(AGXTextureFootprint)3>::lossyFallBackInfo + v57 * 4 + 32))
    {
      v61 = 1;
    }

    else
    {
      v61 = v60;
    }

    v58 |= v61;
    if (++v57 != 4)
    {
      continue;
    }

    break;
  }

  v100 = 0;
  v268 = 0;
  v269 = 0;
  memset(v267, 0, sizeof(v267));
  v101 = v283;
  v102 = v282;
  do
  {
    v103 = 0;
    v104 = 0;
    v105 = *(&__b + v100);
    if (v105 >= *(&v274 + v100))
    {
      v106 = *(&v274 + v100);
    }

    else
    {
      v106 = *(&__b + v100);
    }

    *(&v274 + v100) = v106;
    v107 = -1 << v105;
    v108 = &kDQuadParamTable[160 * v281[v100] + 10 * v284[v100]];
    if (v108[5])
    {
      v109 = v105;
    }

    else
    {
      v109 = 0;
    }

    if (v109 >= *(&v270 + v100))
    {
      v109 = *(&v270 + v100);
    }

    *(&v270 + v100) = v109;
    v110 = *(v108 + 1);
    v111 = v287[v100 + 8] & (-1 << (v105 - v106));
    *(&v268 + v100) = v111;
    v112 = v110 >> v109;
    v113 = &v283[v100];
    v114 = *v113 - v111;
    v115 = &v282[2 * v100];
    if (v60)
    {
      v114 = 0;
    }

    v116 = v113[4] - v111;
    if (v265)
    {
      v116 = 0;
    }

    *v115 = v114;
    v115[1] = v116;
    v117 = v113[8] - v111;
    if (v266)
    {
      v117 = 0;
    }

    v118 = v113[12] - v111;
    if (v264)
    {
      v118 = 0;
    }

    v115[2] = v117;
    v115[3] = v118;
    v119 = v113[16] - v111;
    if (v263)
    {
      v119 = 0;
    }

    v120 = v113[20] - v111;
    if (v15)
    {
      v120 = 0;
    }

    v115[4] = v119;
    v115[5] = v120;
    v121 = v113[24] - v111;
    if (v14)
    {
      v121 = 0;
    }

    v122 = v113[28] - v111;
    if (v16)
    {
      v122 = 0;
    }

    v115[6] = v121;
    v115[7] = v122;
    if (v112 <= 1)
    {
      v123 = 1;
    }

    else
    {
      v123 = v112;
    }

    v124 = 4 * v287[v100];
    v125 = v267 + 28 * v100;
    v126 = &byte_29D2F3081;
    do
    {
      if (v124 != v103)
      {
        if (v109)
        {
          v127 = *(v102 + v103) / v123;
        }

        else
        {
          LODWORD(v127) = 0;
        }

        *&v125[4 * v104] = v127;
        if (v112 >= 2)
        {
          v128 = *(v102 + v103);
          if (v128)
          {
            if (v128 / v123 * v123 == v128 && ((v128 / v123) & 1) != 0)
            {
              if (v111 || v127 != 1)
              {
                if ((a3 | 2) != 3 || (v130 = v101[v103], v131 = v280[v100], v130 != v131) && ((a3 | 2) != 3 || v123 + v131 != v130))
                {
                  LODWORD(v127) = v127 - 1;
                  *&v125[4 * v104] = v127;
                }
              }

              else
              {
                LODWORD(v127) = 1;
              }
            }
          }
        }

        if (v127 >> v109 || (v101[v103] ^ v107) == 0xFFFFFFFF)
        {
          *&v125[4 * v104] = ~(-1 << v109);
        }

        if (*v126 >= a5 || *(v126 - 1) >= a4)
        {
          *&v125[4 * v104] = 0;
        }

        ++v104;
      }

      v103 += 4;
      v126 += 2;
    }

    while (v103 != 32);
    ++v100;
    v102 += 2;
    ++v101;
  }

  while (v100 != 4);
  v132 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v133 = 8 * (a1 & 7);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v58)
  {
    v134 = 0;
    v135 = 0;
    v136 = __b;
    v137 = v289;
    v138 = __b - 6;
    v139 = v289 - 6;
    v141 = v290;
    v140 = v291;
    v142 = v290 - 6;
    v143 = v291 - 6;
    v144 = 8 * (a1 & 7);
    while (1)
    {
      v145 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v134;
      v146 = v145[1] < a5 && a4 > *v145;
      v147 = !v146;
      if (v146)
      {
        v148 = v283[4 * v134] >> 6;
        if (v138 > 0x100)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v148 = 0;
        if (v138 > 0x100)
        {
          goto LABEL_296;
        }
      }

      if (v136 != 6 && (v144 - v133 + (v135 << 6) + v138) <= 0x140)
      {
        v149 = 0;
        v150 = v136 - 6;
        do
        {
          v151 = 64 - v144;
          if (64 - v144 >= v150)
          {
            v151 = v150;
          }

          v132[v135] |= ((v148 >> v149) & ~(-1 << v151)) << v144;
          v149 += v151;
          v152 = v151 + v144;
          v135 += v152 >> 6;
          v144 = v152 & 0x3F;
          v150 -= v151;
        }

        while (v150);
      }

LABEL_296:
      v153 = &v283[4 * v134];
      if (v147)
      {
        v154 = 0;
        if (v139 > 0x100)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v154 = v153[1] >> 6;
        if (v139 > 0x100)
        {
          goto LABEL_306;
        }
      }

      if (v137 != 6 && (v144 - v133 + (v135 << 6) + v139) <= 0x140)
      {
        v155 = 0;
        v156 = v137 - 6;
        do
        {
          v157 = 64 - v144;
          if (64 - v144 >= v156)
          {
            v157 = v156;
          }

          v132[v135] |= ((v154 >> v155) & ~(-1 << v157)) << v144;
          v155 += v157;
          v158 = v157 + v144;
          v135 += v158 >> 6;
          v144 = v158 & 0x3F;
          v156 -= v157;
        }

        while (v156);
      }

LABEL_306:
      if (v147)
      {
        v159 = 0;
        if (v142 > 0x100)
        {
          goto LABEL_316;
        }
      }

      else
      {
        v159 = v153[2] >> 6;
        if (v142 > 0x100)
        {
          goto LABEL_316;
        }
      }

      if (v141 != 6 && (v144 - v133 + (v135 << 6) + v142) <= 0x140)
      {
        v160 = 0;
        v161 = v141 - 6;
        do
        {
          v162 = 64 - v144;
          if (64 - v144 >= v161)
          {
            v162 = v161;
          }

          v132[v135] |= ((v159 >> v160) & ~(-1 << v162)) << v144;
          v160 += v162;
          v163 = v162 + v144;
          v135 += v163 >> 6;
          v144 = v163 & 0x3F;
          v161 -= v162;
        }

        while (v161);
      }

LABEL_316:
      if (v147)
      {
        v164 = 0;
        if (v143 <= 0x100)
        {
          goto LABEL_320;
        }
      }

      else
      {
        v164 = v153[3] >> 6;
        if (v143 <= 0x100)
        {
LABEL_320:
          if (v140 != 6 && (v144 - v133 + (v135 << 6) + v143) <= 0x140)
          {
            v165 = 0;
            v166 = v140 - 6;
            do
            {
              v167 = 64 - v144;
              if (64 - v144 >= v166)
              {
                v167 = v166;
              }

              v132[v135] |= ((v164 >> v165) & ~(-1 << v167)) << v144;
              v165 += v167;
              v168 = v167 + v144;
              v135 += v168 >> 6;
              v144 = v168 & 0x3F;
              v166 -= v167;
            }

            while (v166);
          }
        }
      }

      if (++v134 == 8)
      {
        return v58 & 1;
      }
    }
  }

  v169 = v284[0];
  v170 = v284[1];
  v171 = ((v284[0] & 0xF) << v133) | *v132;
  *v132 = v171;
  v172 = v133 | 4;
  if ((v133 | 4uLL) - v133 - 317 <= 0xFFFFFFFFFFFFFEBELL)
  {
    v173 = 0;
    v174 = v285;
    goto LABEL_330;
  }

  *v132 = ((v170 & 0xF) << v172) | v171;
  v172 = (v133 + 8) & 0x38;
  v173 = (v133 + 8) >> 6;
  v175 = (v133 + 8) & 0x40;
  v174 = v285;
  if ((v175 + v172 - v133 + 4) < 0x141)
  {
    v260 = ((v285 & 0xF) << v172) | v132[v173];
    v132[v173] = v260;
    v177 = v172 | 4;
    v261 = (v172 | 4) - v133 + v175 + 4;
    v176 = v286;
    if (v261 <= 0x140)
    {
      v132[v173] = ((v286 & 0xF) << v177) | v260;
      v173 += (v172 + 8) >> 6;
      v177 = (v172 + 8) & 0x38;
    }
  }

  else
  {
LABEL_330:
    v176 = v286;
    v177 = v172;
  }

  if (v169 || __b == 2 || __b >= 0x10)
  {
    v178 = v274;
    if (v274 <= 0x100 && v274 && v177 - v133 + (v173 << 6) + v274 <= 0x140)
    {
      v179 = 0;
      v180 = v268 >> (__b - v274);
      v181 = v274;
      do
      {
        v182 = 64 - v177;
        if (64 - v177 >= v181)
        {
          v182 = v181;
        }

        v132[v173] |= ((v180 >> v179) & ~(-1 << v182)) << v177;
        v179 += v182;
        v183 = v182 + v177;
        v173 += v183 >> 6;
        v177 = v183 & 0x3F;
        v181 -= v182;
      }

      while (v181);
    }

    v184 = v178 + 16;
    v185 = v289;
    if (v170)
    {
      goto LABEL_340;
    }

LABEL_444:
    if (v185 == 2 || v185 >= 0x10)
    {
      goto LABEL_340;
    }
  }

  else
  {
    v184 = 16;
    v185 = v289;
    if (!v170)
    {
      goto LABEL_444;
    }

LABEL_340:
    v186 = v275;
    if (v275 <= 0x100 && v275 && v177 - v133 + (v173 << 6) + v275 <= 0x140)
    {
      v187 = 0;
      v188 = (HIDWORD(v268) >> (v185 - v275));
      v189 = v275;
      do
      {
        v190 = 64 - v177;
        if (64 - v177 >= v189)
        {
          v190 = v189;
        }

        v132[v173] |= ((v188 >> v187) & ~(-1 << v190)) << v177;
        v187 += v190;
        v191 = v190 + v177;
        v173 += v191 >> 6;
        v177 = v191 & 0x3F;
        v189 -= v190;
      }

      while (v189);
    }

    v184 += v186;
  }

  if (v174 || v290 == 2 || v290 >= 0x10)
  {
    v192 = v276;
    if (v276 <= 0x100 && v276 && v177 - v133 + (v173 << 6) + v276 <= 0x140)
    {
      v193 = 0;
      v194 = v269 >> (v290 - v276);
      v195 = v276;
      do
      {
        v196 = 64 - v177;
        if (64 - v177 >= v195)
        {
          v196 = v195;
        }

        v132[v173] |= ((v194 >> v193) & ~(-1 << v196)) << v177;
        v193 += v196;
        v197 = v196 + v177;
        v173 += v197 >> 6;
        v177 = v197 & 0x3F;
        v195 -= v196;
      }

      while (v195);
    }

    v184 += v192;
  }

  if (v176 || v291 == 2 || v291 >= 0x10)
  {
    v198 = v277;
    if (v277 <= 0x100 && v277 && v177 - v133 + (v173 << 6) + v277 <= 0x140)
    {
      v199 = 0;
      v200 = (HIDWORD(v269) >> (v291 - v277));
      v201 = v277;
      do
      {
        v202 = 64 - v177;
        if (64 - v177 >= v201)
        {
          v202 = v201;
        }

        v132[v173] |= ((v200 >> v199) & ~(-1 << v202)) << v177;
        v199 += v202;
        v203 = v202 + v177;
        v173 += v203 >> 6;
        v177 = v203 & 0x3F;
        v201 -= v202;
      }

      while (v201);
    }

    v184 += v198;
  }

  v204 = v270;
  if (v270)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x140)
    {
      v205 = 0;
      v206 = v287[0];
      v207 = 3;
      do
      {
        v208 = 64 - v177;
        if (64 - v177 >= v207)
        {
          v208 = v207;
        }

        v132[v173] |= ((v206 >> v205) & ~(-1 << v208)) << v177;
        v205 += v208;
        v209 = v208 + v177;
        v173 += v209 >> 6;
        v177 = v209 & 0x3F;
        v207 -= v208;
      }

      while (v207);
    }

    v184 += 3;
  }

  v210 = v271;
  if (v271)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x140)
    {
      v211 = 0;
      v212 = v287[1];
      v213 = 3;
      do
      {
        v214 = 64 - v177;
        if (64 - v177 >= v213)
        {
          v214 = v213;
        }

        v132[v173] |= ((v212 >> v211) & ~(-1 << v214)) << v177;
        v211 += v214;
        v215 = v214 + v177;
        v173 += v215 >> 6;
        v177 = v215 & 0x3F;
        v213 -= v214;
      }

      while (v213);
    }

    v184 += 3;
  }

  v216 = v272;
  if (v272)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x140)
    {
      v217 = 0;
      v218 = v287[2];
      v219 = 3;
      do
      {
        v220 = 64 - v177;
        if (64 - v177 >= v219)
        {
          v220 = v219;
        }

        v132[v173] |= ((v218 >> v217) & ~(-1 << v220)) << v177;
        v217 += v220;
        v221 = v220 + v177;
        v173 += v221 >> 6;
        v177 = v221 & 0x3F;
        v219 -= v220;
      }

      while (v219);
    }

    v184 += 3;
  }

  v222 = v273;
  if (v273)
  {
    if (v177 - v133 + (v173 << 6) + 3 <= 0x140)
    {
      v223 = 0;
      v224 = v287[3];
      v225 = 3;
      do
      {
        v226 = 64 - v177;
        if (64 - v177 >= v225)
        {
          v226 = v225;
        }

        v132[v173] |= ((v224 >> v223) & ~(-1 << v226)) << v177;
        v223 += v226;
        v227 = v226 + v177;
        v173 += v227 >> 6;
        v177 = v227 & 0x3F;
        v225 -= v226;
      }

      while (v225);
    }

    v184 += 3;
  }

  v228 = 320 - v184;
  v229 = (320 - v184) / 7u;
  v230 = v228 % 7;
  if ((v230 - 257) >= 0xFFFFFF00 && v177 - v133 + (v173 << 6) + v230 <= 0x140)
  {
    do
    {
      v231 = 64 - v177;
      if (64 - v177 >= v230)
      {
        v231 = v230;
      }

      v232 = v231 + v177;
      v173 += v232 >> 6;
      v177 = v232 & 0x3F;
      v230 -= v231;
    }

    while (v230);
  }

  v233 = 0;
  while (2)
  {
    if (v204 && v204 <= 0x100 && v177 - v133 + (v173 << 6) + v204 <= 0x140)
    {
      v234 = 0;
      v235 = *(v267 + v233);
      v236 = v204;
      do
      {
        v237 = 64 - v177;
        if (64 - v177 >= v236)
        {
          v237 = v236;
        }

        v132[v173] |= ((v235 >> v234) & ~(-1 << v237)) << v177;
        v234 += v237;
        v238 = v237 + v177;
        v173 += v238 >> 6;
        v177 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v239 = v267 + v233;
    if (!v210)
    {
      v245 = v204;
      if (!v216)
      {
        goto LABEL_425;
      }

      goto LABEL_418;
    }

    if (v210 <= 0x100 && v177 - v133 + (v173 << 6) + v210 <= 0x140)
    {
      v240 = 0;
      v241 = v239[7];
      v242 = v210;
      do
      {
        v243 = 64 - v177;
        if (64 - v177 >= v242)
        {
          v243 = v242;
        }

        v132[v173] |= ((v241 >> v240) & ~(-1 << v243)) << v177;
        v240 += v243;
        v244 = v243 + v177;
        v173 += v244 >> 6;
        v177 = v244 & 0x3F;
        v242 -= v243;
      }

      while (v242);
    }

    v245 = v210 + v204;
    if (v216)
    {
LABEL_418:
      if (v216 <= 0x100 && v177 - v133 + (v173 << 6) + v216 <= 0x140)
      {
        v246 = 0;
        v247 = v239[14];
        v248 = v216;
        do
        {
          v249 = 64 - v177;
          if (64 - v177 >= v248)
          {
            v249 = v248;
          }

          v132[v173] |= ((v247 >> v246) & ~(-1 << v249)) << v177;
          v246 += v249;
          v250 = v249 + v177;
          v173 += v250 >> 6;
          v177 = v250 & 0x3F;
          v248 -= v249;
        }

        while (v248);
      }

      v245 += v216;
    }

LABEL_425:
    if (v222)
    {
      if (v222 <= 0x100 && v177 - v133 + (v173 << 6) + v222 <= 0x140)
      {
        v251 = 0;
        v252 = v239[21];
        v253 = v222;
        do
        {
          v254 = 64 - v177;
          if (64 - v177 >= v253)
          {
            v254 = v253;
          }

          v132[v173] |= ((v252 >> v251) & ~(-1 << v254)) << v177;
          v251 += v254;
          v255 = v254 + v177;
          v173 += v255 >> 6;
          v177 = v255 & 0x3F;
          v253 -= v254;
        }

        while (v253);
      }

      v245 += v222;
    }

    v256 = v229 - v245;
    if (v256 && v256 <= 0x100 && v177 - v133 + (v173 << 6) + v256 <= 0x140)
    {
      do
      {
        v257 = 64 - v177;
        if (64 - v177 >= v256)
        {
          v257 = v256;
        }

        v258 = v257 + v177;
        v173 += v258 >> 6;
        v177 = v258 & 0x3F;
        v256 -= v257;
      }

      while (v256);
    }

    if (++v233 != 7)
    {
      continue;
    }

    return v58 & 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
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
      result = v9 - v4 + (v8 << 6) - 311;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFEBFLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 10;
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
      result = ((v13 & 0x3FF) << 6) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 311) < 0xFFFFFFFFFFFFFEBFLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 10;
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
      result = v9 - v4 + (v8 << 6) - 311;
      v12[1] = ((v18 & 0x3FF) << 6) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFEBFLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 10;
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
        result = v9 - v4 + (v8 << 6) - 311;
        v12[2] = ((v23 & 0x3FF) << 6) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFEBFLL)
        {
          v28 = 0;
          result = 0;
          v29 = 10;
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
          v10 = (v28 & 0x3FF) << 6;
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
    if (result - v4 + (v33 << 6) - 311 >= 0xFFFFFFFFFFFFFEBFLL)
    {
      v36 = 0;
      v37 = 0;
      v38 = 10;
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
      v35 = (v36 & 0x3FF) << 6;
      if ((v35 != 0x8000 || v5 != 1) && v35 != 0)
      {
        if (v35 == 65472)
        {
          v35 = 0xFFFF;
        }

        else
        {
          v35 = v35 - (v36 & 1) + 32;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    *(a2 + 16 * v32) = v35 ^ v6;
    if (result - v4 + (v33 << 6) - 311 >= 0xFFFFFFFFFFFFFEBFLL)
    {
      v44 = 0;
      v45 = 0;
      v46 = 10;
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
      v43 = (v44 & 0x3FF) << 6;
      if ((v43 != 0x8000 || v5 != 1) && v43 != 0)
      {
        if (v43 == 65472)
        {
          v43 = 0xFFFF;
        }

        else
        {
          v43 = v43 - (v44 & 1) + 32;
        }
      }
    }

    else
    {
      v43 = 0;
    }

    v51 = (a2 + 16 * v32);
    v51[1] = v43 ^ v6;
    if (result - v4 + (v33 << 6) - 311 >= 0xFFFFFFFFFFFFFEBFLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 10;
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
      v52 = (v53 & 0x3FF) << 6;
      if ((v52 != 0x8000 || v5 != 1) && v52 != 0)
      {
        if (v52 == 65472)
        {
          v52 = 0xFFFF;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 32;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v51[2] = v52 ^ v6;
    if (result - v4 + (v33 << 6) - 311 < 0xFFFFFFFFFFFFFEBFLL)
    {
      v34 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 10;
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
      v34 = (v60 & 0x3FF) << 6;
      if ((v34 != 0x8000 || v5 != 1) && v34 != 0)
      {
        v67 = v34 - (v60 & 1) + 32;
        if (v34 == 65472)
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v234 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 >> v5;
  v8 = (v6 >> v5) & 0xF;
  v9 = v5 | 4;
  if ((v5 | 4uLL) - v5 - 317 >= 0xFFFFFFFFFFFFFEBFLL)
  {
    v14 = (v5 + 8) & 0x38;
    v12 = (v5 + 8) >> 6;
    v11 = (v6 >> v9) & 0xF;
    v15 = (v5 + 8) & 0x40;
    if ((v15 + v14 - v5 + 4) <= 0x140)
    {
      v9 = v14 | 4;
      v16 = *(v4 + 8 * v12);
      v10 = (v16 >> v14) & 0xF;
      if ((v14 | 4uLL) - v5 + v15 + 4 <= 0x140)
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
  memset_pattern16(&v229, &unk_29D2F2710, 0x10uLL);
  v233[0] = v8;
  v233[1] = v11;
  v233[2] = v10;
  v233[3] = v13;
  v223 = 0;
  v224 = 0;
  v221 = 0;
  v222 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v229, v233, &v223, &v221);
  LODWORD(v21) = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v229 + 2);
  v20 = &kDQuadParamTable[160 * v229 + 10 * (v7 & 0xF)];
  v19 = *(v20 + 20);
  LODWORD(v20) = *(v20 + 16) + v21;
  LODWORD(v21) = v19 + v21;
  v22 = v221 - v223;
  if (v221 - v223 < 0)
  {
    v23 = &kDQuadParamTable[160 * v229 + 10 * (v7 & 0xF)];
    if (v23[7] >= v223 - v221)
    {
      goto LABEL_14;
    }

    LODWORD(v21) = v21 - 1;
    if (v23[8])
    {
      goto LABEL_14;
    }

    v22 = -1;
  }

  else
  {
    if (!v22)
    {
      goto LABEL_14;
    }

    LODWORD(v21) = v22 + v21;
  }

  LODWORD(v20) = v22 + v20;
LABEL_14:
  if (__b >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = __b;
  }

  v220[0] = v20;
  if (v19)
  {
    v24 = __b;
  }

  else
  {
    v24 = 0;
  }

  if (v24 >= v21)
  {
    v21 = v21;
  }

  else
  {
    v21 = v24;
  }

  v219[0] = v21;
  v25 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v230 + 2);
  v26 = &kDQuadParamTable[160 * v230 + 10 * v11];
  v28 = v26[4];
  v27 = v26[5];
  v29 = v28 + v25;
  LODWORD(v30) = v27 + v25;
  v31 = HIDWORD(v221) - HIDWORD(v223);
  if (HIDWORD(v221) - HIDWORD(v223) < 0)
  {
    v32 = &kDQuadParamTable[160 * v230 + 10 * v11];
    if (v32[7] >= HIDWORD(v223) - HIDWORD(v221))
    {
      goto LABEL_29;
    }

    LODWORD(v30) = v30 - 1;
    if (v32[8])
    {
      goto LABEL_29;
    }

    v31 = -1;
  }

  else
  {
    if (!v31)
    {
      goto LABEL_29;
    }

    LODWORD(v30) = v31 + v30;
  }

  v29 += v31;
LABEL_29:
  if (v226 >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = v226;
  }

  v220[1] = v33;
  if (v27)
  {
    v34 = v226;
  }

  else
  {
    v34 = 0;
  }

  if (v34 >= v30)
  {
    v30 = v30;
  }

  else
  {
    v30 = v34;
  }

  v219[1] = v30;
  v35 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v231 + 2);
  v36 = &kDQuadParamTable[160 * v231 + 10 * v10];
  v38 = v36[4];
  v37 = v36[5];
  v39 = v38 + v35;
  LODWORD(v40) = v37 + v35;
  v41 = v222 - v224;
  if (v222 - v224 < 0)
  {
    v42 = &kDQuadParamTable[160 * v231 + 10 * v10];
    if (v42[7] >= v224 - v222)
    {
      goto LABEL_44;
    }

    LODWORD(v40) = v40 - 1;
    if (v42[8])
    {
      goto LABEL_44;
    }

    v41 = -1;
  }

  else
  {
    if (!v41)
    {
      goto LABEL_44;
    }

    LODWORD(v40) = v41 + v40;
  }

  v39 += v41;
LABEL_44:
  if (v227 >= v39)
  {
    v43 = v39;
  }

  else
  {
    v43 = v227;
  }

  v220[2] = v43;
  if (v37)
  {
    v44 = v227;
  }

  else
  {
    v44 = 0;
  }

  if (v44 >= v40)
  {
    v40 = v40;
  }

  else
  {
    v40 = v44;
  }

  v219[2] = v40;
  v45 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v232 + 2);
  v47 = &kDQuadParamTable[160 * v232 + 10 * v13];
  v46 = *(v47 + 20);
  LODWORD(v47) = *(v47 + 16) + v45;
  LODWORD(v48) = v46 + v45;
  v49 = HIDWORD(v222) - HIDWORD(v224);
  if (HIDWORD(v222) - HIDWORD(v224) < 0)
  {
    v50 = &kDQuadParamTable[160 * v232 + 10 * v13];
    if (v50[7] >= HIDWORD(v224) - HIDWORD(v222))
    {
      goto LABEL_59;
    }

    LODWORD(v48) = v48 - 1;
    if (v50[8])
    {
      goto LABEL_59;
    }

    v49 = -1;
  }

  else
  {
    if (!v49)
    {
      goto LABEL_59;
    }

    LODWORD(v48) = v49 + v48;
  }

  LODWORD(v47) = v49 + v47;
LABEL_59:
  if (v228 >= v47)
  {
    v47 = v47;
  }

  else
  {
    v47 = v228;
  }

  v220[3] = v47;
  if (v46)
  {
    v51 = v228;
  }

  else
  {
    v51 = 0;
  }

  if (v51 >= v48)
  {
    v48 = v48;
  }

  else
  {
    v48 = v51;
  }

  v219[3] = v48;
  v217 = 0;
  v218 = 0;
  if (v8 || __b - 8 >= 5)
  {
    if (v20 <= 0x20)
    {
      v53 = 0;
      if (v20 && v9 - v5 + (v12 << 6) + v20 <= 0x140)
      {
        v53 = 0;
        v54 = 0;
        v55 = v20;
        do
        {
          v56 = 64 - v9;
          if (64 - v9 >= v55)
          {
            v56 = v55;
          }

          v53 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v56)) << v54;
          v54 += v56;
          v12 += (v56 + v9) >> 6;
          v9 = (v56 + v9) & 0x3F;
          v55 -= v56;
        }

        while (v55);
      }
    }

    else
    {
      v53 = 0;
    }

    LODWORD(v217) = v53 << (__b - v20);
    v52 = v20 + 16;
    if (v11)
    {
LABEL_84:
      if (v33 <= 0x20)
      {
        v57 = 0;
        if (v33 && v9 - v5 + (v12 << 6) + v33 <= 0x140)
        {
          v57 = 0;
          v58 = 0;
          v59 = v33;
          do
          {
            v60 = 64 - v9;
            if (64 - v9 >= v59)
            {
              v60 = v59;
            }

            v57 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v60)) << v58;
            v58 += v60;
            v12 += (v60 + v9) >> 6;
            v9 = (v60 + v9) & 0x3F;
            v59 -= v60;
          }

          while (v59);
        }
      }

      else
      {
        v57 = 0;
      }

      HIDWORD(v217) = v57 << (v226 - v33);
      v52 += v33;
      if (v10)
      {
        goto LABEL_96;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v52 = 16;
    if (v11)
    {
      goto LABEL_84;
    }
  }

  if (v226 - 8 >= 5)
  {
    goto LABEL_84;
  }

  HIDWORD(v217) = 0;
  if (v10)
  {
    goto LABEL_96;
  }

LABEL_93:
  if (v227 - 8 < 5)
  {
    LODWORD(v218) = 0;
    if (v13)
    {
      goto LABEL_108;
    }

    goto LABEL_105;
  }

LABEL_96:
  if (v43 <= 0x20)
  {
    v61 = 0;
    if (v43 && v9 - v5 + (v12 << 6) + v43 <= 0x140)
    {
      v61 = 0;
      v62 = 0;
      v63 = v43;
      do
      {
        v64 = 64 - v9;
        if (64 - v9 >= v63)
        {
          v64 = v63;
        }

        v61 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v64)) << v62;
        v62 += v64;
        v12 += (v64 + v9) >> 6;
        v9 = (v64 + v9) & 0x3F;
        v63 -= v64;
      }

      while (v63);
    }
  }

  else
  {
    v61 = 0;
  }

  LODWORD(v218) = v61 << (v227 - v43);
  v52 += v43;
  if (v13)
  {
LABEL_108:
    if (v47 <= 0x20)
    {
      v65 = 0;
      if (v47 && v9 - v5 + (v12 << 6) + v47 <= 0x140)
      {
        v65 = 0;
        v66 = 0;
        v67 = v47;
        do
        {
          v68 = 64 - v9;
          if (64 - v9 >= v67)
          {
            v68 = v67;
          }

          v65 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v68)) << v66;
          v66 += v68;
          v12 += (v68 + v9) >> 6;
          v9 = (v68 + v9) & 0x3F;
          v67 -= v68;
        }

        while (v67);
      }
    }

    else
    {
      v65 = 0;
    }

    HIDWORD(v218) = v65 << (v228 - v47);
    v52 += v47;
    v215 = 0;
    v216 = 0;
    if (!v21)
    {
      goto LABEL_125;
    }

    goto LABEL_118;
  }

LABEL_105:
  if (v228 - 8 >= 5)
  {
    goto LABEL_108;
  }

  HIDWORD(v218) = 0;
  v215 = 0;
  v216 = 0;
  if (v21)
  {
LABEL_118:
    if (v9 - v5 + (v12 << 6) + 3 <= 0x140)
    {
      v69 = 0;
      v70 = 0;
      v71 = 3;
      do
      {
        v72 = 64 - v9;
        if (64 - v9 >= v71)
        {
          v72 = v71;
        }

        v69 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v72)) << v70;
        v70 += v72;
        v12 += (v72 + v9) >> 6;
        v9 = (v72 + v9) & 0x3F;
        v71 -= v72;
      }

      while (v71);
    }

    else
    {
      v69 = 0;
    }

    LODWORD(v215) = v69;
    v52 += 3;
  }

LABEL_125:
  if (v30)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x140)
    {
      v73 = 0;
      v74 = 0;
      v75 = 3;
      do
      {
        v76 = 64 - v9;
        if (64 - v9 >= v75)
        {
          v76 = v75;
        }

        v73 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v76)) << v74;
        v74 += v76;
        v12 += (v76 + v9) >> 6;
        v9 = (v76 + v9) & 0x3F;
        v75 -= v76;
      }

      while (v75);
    }

    else
    {
      v73 = 0;
    }

    HIDWORD(v215) = v73;
    v52 += 3;
  }

  if (v40)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x140)
    {
      v77 = 0;
      v78 = 0;
      v79 = 3;
      do
      {
        v80 = 64 - v9;
        if (64 - v9 >= v79)
        {
          v80 = v79;
        }

        v77 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v80)) << v78;
        v78 += v80;
        v12 += (v80 + v9) >> 6;
        v9 = (v80 + v9) & 0x3F;
        v79 -= v80;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
    }

    LODWORD(v216) = v77;
    v52 += 3;
  }

  if (v48)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x140)
    {
      v81 = 0;
      v82 = 0;
      v83 = 3;
      do
      {
        v84 = 64 - v9;
        if (64 - v9 >= v83)
        {
          v84 = v83;
        }

        v81 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v84)) << v82;
        v82 += v84;
        v12 += (v84 + v9) >> 6;
        v9 = (v84 + v9) & 0x3F;
        v83 -= v84;
      }

      while (v83);
    }

    else
    {
      v81 = 0;
    }

    HIDWORD(v216) = v81;
    v52 += 3;
  }

  v85 = 0;
  v86 = a3 & 0xFFFFFFFD;
  v87 = 320 - v52;
  v88 = (320 - v52) / 7u;
  v89 = (v9 | (v12 << 6)) + v87 % 7;
  memset(v214, 0, sizeof(v214));
  do
  {
    v92 = v89 >> 6;
    v93 = v89 & 0x3F;
    if (v21)
    {
      if (v21 <= 0x20 && v93 - v5 + (v89 & 0xFFFFFFFFFFFFFFC0) + v21 <= 0x140)
      {
        v94 = 0;
        v95 = 0;
        v96 = v21;
        do
        {
          v97 = 64 - v93;
          if (64 - v93 >= v96)
          {
            v97 = v96;
          }

          v94 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v97)) << v95;
          v95 += v97;
          v98 = v97 + v93;
          v92 += v98 >> 6;
          v93 = v98 & 0x3F;
          v96 -= v97;
        }

        while (v96);
      }

      else
      {
        v94 = 0;
      }

      *(v214 + v85) = v94;
    }

    v99 = v214 + v85;
    if (!v30)
    {
      v91 = v21;
      if (!v40)
      {
        goto LABEL_181;
      }

LABEL_173:
      if (v40 <= 0x20 && v93 - v5 + (v92 << 6) + v40 <= 0x140)
      {
        v105 = 0;
        v106 = 0;
        v107 = v40;
        do
        {
          v108 = 64 - v93;
          if (64 - v93 >= v107)
          {
            v108 = v107;
          }

          v105 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v108)) << v106;
          v106 += v108;
          v109 = v108 + v93;
          v92 += v109 >> 6;
          v93 = v109 & 0x3F;
          v107 -= v108;
        }

        while (v107);
      }

      else
      {
        v105 = 0;
      }

      v99[14] = v105;
      v91 += v40;
      goto LABEL_181;
    }

    if (v30 <= 0x20 && v93 - v5 + (v92 << 6) + v30 <= 0x140)
    {
      v100 = 0;
      v101 = 0;
      v102 = v30;
      do
      {
        v103 = 64 - v93;
        if (64 - v93 >= v102)
        {
          v103 = v102;
        }

        v100 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v103)) << v101;
        v101 += v103;
        v104 = v103 + v93;
        v92 += v104 >> 6;
        v93 = v104 & 0x3F;
        v102 -= v103;
      }

      while (v102);
    }

    else
    {
      v100 = 0;
    }

    v99[7] = v100;
    v91 = v30 + v21;
    if (v40)
    {
      goto LABEL_173;
    }

LABEL_181:
    if (v48)
    {
      if (v48 > 0x20 || v93 - v5 + (v92 << 6) + v48 > 0x140)
      {
        v90 = 0;
      }

      else
      {
        v90 = 0;
        v110 = 0;
        v111 = v48;
        do
        {
          v112 = 64 - v93;
          if (64 - v93 >= v111)
          {
            v112 = v111;
          }

          v90 |= ((*(v4 + 8 * v92) >> v93) & ~(-1 << v112)) << v110;
          v110 += v112;
          v113 = v112 + v93;
          v92 += v113 >> 6;
          v93 = v113 & 0x3F;
          v111 -= v112;
        }

        while (v111);
      }

      v99[21] = v90;
      v91 += v48;
    }

    v89 = (v93 | (v92 << 6)) + v88 - v91;
    ++v85;
  }

  while (v85 != 7);
  v114 = 0;
  v115 = 0;
  v116 = a2 + 112;
  do
  {
    v121 = *&kDQuadParamTable[160 * *(&v229 + v114) + 2 + 10 * v233[v114 / 4]];
    v122 = v219[v114 / 4];
    if (v121 >> v122 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v121 >> v122;
    }

    v123 = *(&__b + v114);
    v124 = result >> 1;
    if (result >> 1 >= (1 << (v123 - v220[v114 / 4])) >> 1)
    {
      v125 = (1 << (v123 - v220[v114 / 4])) >> 1;
    }

    else
    {
      v125 = result >> 1;
    }

    v126 = (1 << (v123 - 1));
    v127 = *(&v217 + v114);
    v128 = v126 - v127;
    v129 = 1 << v123;
    v130 = (1 << v123) + 0xFFFFFFFFLL;
    if (v127)
    {
      v131 = v125;
    }

    else
    {
      v131 = 0;
    }

    v132 = v127 == v126;
    v133 = v123 == 16;
    if (v123 == 16)
    {
      v134 = 31744;
    }

    else
    {
      v134 = 2139095040;
    }

    if (v123 == 16)
    {
      v135 = 64512;
    }

    else
    {
      v135 = 4286578688;
    }

    v136 = 2143289344;
    if (v133)
    {
      v136 = 32256;
    }

    v137 = 65024;
    if (!v133)
    {
      v137 = 4290772992;
    }

    v138 = (v135 - 1);
    if (v122)
    {
      v139 = v121 + v127;
      v140 = -1 << v122;
      v141 = *(&v215 + v114);
      v142 = v128 / result;
      if (!v141)
      {
        v150 = 0;
        v145 = v131;
        v144 = v127 == v126;
        goto LABEL_259;
      }

      v143 = *(v214 + v115);
      v144 = v142 == v143;
      if (v127 | v143)
      {
        if (v139 >= v129 && (v140 ^ v143) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v150 = 1;
          v145 = v129 - 1;
          goto LABEL_259;
        }

        v145 = v124 + result * v143;
      }

      else
      {
        v145 = 0;
      }

      v150 = 1;
LABEL_259:
      v153 = v145 + v127;
      v154 = v153;
      if (a3 == 4)
      {
        v155 = v153 < v134 || v153 >= v136;
        v154 = (v134 - 1);
        if (v155)
        {
          v156 = v153 < v136 || v153 >= v126;
          v154 = v126;
          if (v156)
          {
            if (v153 < v137 && v153 >= v135)
            {
              v154 = (v135 - 1);
            }

            else
            {
              v154 = v153;
            }
          }
        }
      }

      if (v154 >= v129)
      {
        v158 = v129 - 1;
      }

      else
      {
        v158 = v154;
      }

      if (v144)
      {
        v159 = 0;
      }

      else
      {
        v159 = v158 ^ v126;
      }

      if (v86 != 1)
      {
        v159 = v158;
      }

      *(a2 + v114) = v159;
      if (v141 == 1)
      {
        v160 = v131;
        v161 = v127 == v126;
      }

      else
      {
        v162 = *((v214 | (4 * v150)) + v115);
        v161 = v142 == v162;
        if (v127 | v162)
        {
          if (v139 < v129 || (v160 = v129 - 1, (v140 ^ v162) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v124 + result * v162;
          }
        }

        else
        {
          v160 = 0;
        }

        ++v150;
      }

      v163 = v160 + v127;
      v164 = v163;
      if (a3 == 4)
      {
        v165 = v163 < v134 || v163 >= v136;
        v164 = (v134 - 1);
        if (v165)
        {
          v166 = v163 < v136 || v163 >= v126;
          v164 = v126;
          if (v166)
          {
            if (v163 < v137 && v163 >= v135)
            {
              v164 = (v135 - 1);
            }

            else
            {
              v164 = v163;
            }
          }
        }
      }

      if (v164 >= v129)
      {
        v168 = v129 - 1;
      }

      else
      {
        v168 = v164;
      }

      if (v161)
      {
        v169 = 0;
      }

      else
      {
        v169 = v168 ^ v126;
      }

      if (v86 != 1)
      {
        v169 = v168;
      }

      *(v116 + v114 - 96) = v169;
      if (v141 == 2)
      {
        v170 = v131;
        v171 = v127 == v126;
      }

      else
      {
        v172 = *((v214 | (4 * v150)) + v115);
        v171 = v142 == v172;
        if (v127 | v172)
        {
          if (v139 < v129 || (v170 = v129 - 1, (v140 ^ v172) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v170 = v124 + result * v172;
          }
        }

        else
        {
          v170 = 0;
        }

        ++v150;
      }

      v173 = v170 + v127;
      v174 = v173;
      if (a3 == 4)
      {
        if (v173 < v134 || (v174 = (v134 - 1), v173 >= v136))
        {
          if (v173 < v136 || (v174 = v126, v173 >= v126))
          {
            if (v173 < v137 && v173 >= v135)
            {
              v174 = (v135 - 1);
            }

            else
            {
              v174 = v173;
            }
          }
        }
      }

      if (v174 >= v129)
      {
        v176 = v129 - 1;
      }

      else
      {
        v176 = v174;
      }

      if (v171)
      {
        v177 = 0;
      }

      else
      {
        v177 = v176 ^ v126;
      }

      if (v86 != 1)
      {
        v177 = v176;
      }

      *(v116 + v114 - 80) = v177;
      if (v141 == 3)
      {
        v178 = v131;
        v179 = v127 == v126;
      }

      else
      {
        v180 = *(v214 + 4 * v150 + v115);
        v179 = v142 == v180;
        if (v127 | v180)
        {
          if (v139 < v129 || (v178 = v129 - 1, (v140 ^ v180) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v124 + result * v180;
          }
        }

        else
        {
          v178 = 0;
        }

        ++v150;
      }

      v181 = v178 + v127;
      v182 = v181;
      if (a3 == 4)
      {
        if (v181 < v134 || (v182 = (v134 - 1), v181 >= v136))
        {
          if (v181 < v136 || (v182 = v126, v181 >= v126))
          {
            if (v181 < v137 && v181 >= v135)
            {
              v182 = (v135 - 1);
            }

            else
            {
              v182 = v181;
            }
          }
        }
      }

      if (v182 >= v129)
      {
        v184 = v129 - 1;
      }

      else
      {
        v184 = v182;
      }

      if (v179)
      {
        v185 = 0;
      }

      else
      {
        v185 = v184 ^ v126;
      }

      if (v86 != 1)
      {
        v185 = v184;
      }

      *(v116 + v114 - 64) = v185;
      if (v141 == 4)
      {
        v186 = v131;
        v187 = v127 == v126;
      }

      else
      {
        v188 = *(v214 + 4 * v150 + v115);
        v187 = v142 == v188;
        if (v127 | v188)
        {
          if (v139 < v129 || (v186 = v129 - 1, (v140 ^ v188) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v186 = v124 + result * v188;
          }
        }

        else
        {
          v186 = 0;
        }

        ++v150;
      }

      v189 = v186 + v127;
      v190 = v189;
      if (a3 == 4)
      {
        if (v189 < v134 || (v190 = (v134 - 1), v189 >= v136))
        {
          if (v189 < v136 || (v190 = v126, v189 >= v126))
          {
            if (v189 < v137 && v189 >= v135)
            {
              v190 = (v135 - 1);
            }

            else
            {
              v190 = v189;
            }
          }
        }
      }

      if (v190 >= v129)
      {
        v192 = v129 - 1;
      }

      else
      {
        v192 = v190;
      }

      if (v187)
      {
        v193 = 0;
      }

      else
      {
        v193 = v192 ^ v126;
      }

      if (v86 != 1)
      {
        v193 = v192;
      }

      *(v116 + v114 - 48) = v193;
      if (v141 == 5)
      {
        v194 = v131;
        v195 = v127 == v126;
      }

      else
      {
        v196 = *(v214 + 4 * v150 + v115);
        v195 = v142 == v196;
        if (v127 | v196)
        {
          if (v139 < v129 || (v194 = v129 - 1, (v140 ^ v196) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v194 = v124 + result * v196;
          }
        }

        else
        {
          v194 = 0;
        }

        ++v150;
      }

      v197 = v194 + v127;
      v198 = v197;
      if (a3 == 4)
      {
        if (v197 < v134 || (v198 = (v134 - 1), v197 >= v136))
        {
          if (v197 < v136 || (v198 = v126, v197 >= v126))
          {
            if (v197 < v137 && v197 >= v135)
            {
              v198 = (v135 - 1);
            }

            else
            {
              v198 = v197;
            }
          }
        }
      }

      if (v198 >= v129)
      {
        v200 = v129 - 1;
      }

      else
      {
        v200 = v198;
      }

      if (v195)
      {
        v201 = 0;
      }

      else
      {
        v201 = v200 ^ v126;
      }

      if (v86 != 1)
      {
        v201 = v200;
      }

      *(v116 + v114 - 32) = v201;
      if (v141 == 6)
      {
        v202 = v131;
        v203 = v127 == v126;
      }

      else
      {
        v204 = *(v214 + 4 * v150 + v115);
        v203 = v142 == v204;
        if (v127 | v204)
        {
          if (v139 < v129 || (v202 = v129 - 1, (v140 ^ v204) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v202 = v124 + result * v204;
          }
        }

        else
        {
          v202 = 0;
        }

        ++v150;
      }

      v205 = v202 + v127;
      v206 = v205;
      if (a3 == 4)
      {
        if (v205 < v134 || (v206 = (v134 - 1), v205 >= v136))
        {
          if (v205 < v136 || (v206 = v126, v205 >= v126))
          {
            if (v205 < v137 && v205 >= v135)
            {
              v206 = (v135 - 1);
            }

            else
            {
              v206 = v205;
            }
          }
        }
      }

      if (v206 >= v129)
      {
        v208 = v129 - 1;
      }

      else
      {
        v208 = v206;
      }

      if (v203)
      {
        v209 = 0;
      }

      else
      {
        v209 = v208 ^ v126;
      }

      if (v86 != 1)
      {
        v209 = v208;
      }

      *(v116 + v114 - 16) = v209;
      if (v141 != 7)
      {
        v210 = *(v214 + 4 * v150 + v115);
        v132 = v142 == v210;
        if (v127 | v210)
        {
          if (v139 >= v129 && (v140 ^ v210) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v131 = v129 - 1;
          }

          else
          {
            v131 = v124 + result * v210;
          }
        }

        else
        {
          v131 = 0;
        }
      }

      v211 = v131 + v127;
      result = v131 + v127;
      if (a3 == 4)
      {
        if (v211 < v134 || (result = (v134 - 1), v211 >= v136))
        {
          if (v211 < v136 || (result = v126, v211 >= v126))
          {
            if (v211 < v137 && v211 >= v135)
            {
              result = (v135 - 1);
            }

            else
            {
              result = v131 + v127;
            }
          }
        }
      }

      if (result >= v129)
      {
        v119 = v129 - 1;
      }

      else
      {
        v119 = result;
      }

      v120 = v119 ^ v126;
      if (v132)
      {
        v120 = 0;
      }

      if (v86 == 1)
      {
        v119 = v120;
      }

      goto LABEL_203;
    }

    v147 = v136 <= v127 && v127 < v126;
    v149 = v127 >= v135 && v137 > v127;
    if (a3 == 4)
    {
      if (v127 < v134 || v136 <= v127)
      {
        if (v147)
        {
          if (v129 <= v126)
          {
            v119 = v130;
          }

          else
          {
            v119 = v126;
          }
        }

        else
        {
          if (v149)
          {
            v212 = v138;
          }

          else
          {
            v212 = *(&v217 + v114);
          }

          if (v212 >= v129)
          {
            v119 = v130;
          }

          else
          {
            v119 = v212;
          }
        }
      }

      else if (v129 <= (v134 - 1))
      {
        v119 = v130;
      }

      else
      {
        v119 = v134 - 1;
      }
    }

    else
    {
      if (v129 <= v127)
      {
        v119 = v129 - 1;
      }

      else
      {
        v119 = *(&v217 + v114);
      }

      v151 = v119 ^ v126;
      if (result > v128)
      {
        v151 = 0;
      }

      if (v86 == 1)
      {
        v119 = v151;
      }
    }

    v152 = v116 + v114;
    *(v152 - 112) = v119;
    *(v152 - 96) = v119;
    *(v152 - 80) = v119;
    *(v152 - 64) = v119;
    *(v152 - 48) = v119;
    *(v152 - 32) = v119;
    *(v152 - 16) = v119;
LABEL_203:
    *(v116 + v114) = v119;
    v115 += 28;
    v114 += 4;
  }

  while (v115 != 112);
  return result;
}